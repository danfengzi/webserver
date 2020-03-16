#include "lwip/debug.h"
#include "lwip/stats.h"
#include "lwip/tcp.h"
#include "http_server.h"
#include "fs.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

/*
*********************************************************************************************************
*                                            LOCAL TABLES
*********************************************************************************************************
*/
static err_t http_server_accept(void *arg, struct tcp_pcb *pcb, err_t err);
static err_t http_server_recv(void *arg, struct tcp_pcb *pcb, struct pbuf *tcp_recv_pbuf, err_t err);
static err_t http_server_poll(void *arg, struct tcp_pcb *pcb);
static err_t http_init_file(struct http_state *hs, struct fs_file *file, int is_09, const char *uri);
static err_t http_find_file(struct http_state *hs, const char *uri, int is_09);
static err_t http_parse_request(struct pbuf **inp, struct http_state *hs, struct tcp_pcb *pcb);
static u8_t http_send_data(struct tcp_pcb *pcb, struct http_state *hs);
static err_t http_sent(void *arg, struct tcp_pcb *pcb, u16_t len);
static void close_conn(struct tcp_pcb *pcb, struct http_state *hs);

/*
*********************************************************************************************************
*                                      LOCAL FUNCTION PROTOTYPES
*********************************************************************************************************
*/

/***
 * �������� : Http_Server_Init();
 *
 * �������� : web��������ʼ��;
 *
 * ����ֵ	  : ��;
 *
 * ����ֵ   : ��;
 *
 **/
void Http_Server_Init(void)
{
		struct tcp_pcb *http_server_pcb;

		/* Ϊweb����������һ��tcp_pcb�ṹ�� */
		http_server_pcb = tcp_new();
		
		/* �󶨱��ض˺ź�IP��ַ */
		tcp_bind(http_server_pcb, IP_ADDR_ANY, 80);

		/* ����֮ǰ�����Ľṹ��http_server_pcb */
		http_server_pcb = tcp_listen(http_server_pcb);
	
		/* ��ʼ���ṹ����ջص����� */
		tcp_accept(http_server_pcb, http_server_accept);
}

/***
 * �������� : http_server_accept();
 *
 * �������� : lwip���ݽ��ջص�������������tcp���ӵ�ȷ�ϣ����ջص�����������;
 *
 * ����ֵ	  : *arg, *pcb, err ;
 *
 * ����ֵ   : ERR_OK �޴���;
 *
 **/
static err_t http_server_accept(void *arg, struct tcp_pcb *pcb, err_t err)
{
		struct http_state *hs;
	
		/* �����ڴ�ռ� */
		hs = (struct http_state *)mem_malloc(sizeof(struct http_state));
	
		if (hs != NULL)
		{
				memset(hs, 0, sizeof(struct http_state));
		}
		
		/* ȷ�ϼ��������� */
		tcp_arg(pcb, hs);
		
		/* ���ý��ջص����� */
		tcp_recv(pcb, http_server_recv);

		/* ������ѯ�ص����� */
		tcp_poll(pcb, http_server_poll, 4);
	
		/* ���÷��ͻص����� */
		tcp_sent(pcb, http_sent);
	
		return ERR_OK;
}

/***
 * �������� : http_server_recv();
 *
 * �������� : ���ܵ����ݺ󣬸��ݽ��յ����ݵ����ݣ�������ҳ;
 *
 * ����ֵ	  : *arg, *pcb, *http_recv_pbuf, err;
 *
 * ����ֵ   : ERR_OK�޴���;
 *
 **/
static err_t http_server_recv(void *arg, struct tcp_pcb *pcb, struct pbuf *http_recv_pbuf, err_t err)
{
	  err_t parsed = ERR_ABRT;
		struct http_state *hs = (struct http_state *)arg;

		/* ����tcp�Ѿ����յ����� */
		tcp_recved(pcb, http_recv_pbuf->tot_len);
	
		if (hs->handle == NULL)
		{
				/* �������յ���������������� */
				parsed = http_parse_request(&http_recv_pbuf, hs, pcb);
		}
		
    /* ��������ַ��� */
		if (parsed != ERR_INPROGRESS) 
		{		
        if (hs->req != NULL) 
			  {
            pbuf_free(hs->req);
            hs->req = NULL;
        }
    }
		
		if (parsed == ERR_OK)
		{
				/* ������ҳ���� */
				http_send_data(pcb, hs);
		}
		else if (parsed == ERR_ARG)
		{
			/* �ر����� */
				close_conn(pcb, hs);
		}

		return ERR_OK;
}

/***
 * �������� : http_server_poll();
 *
 * �������� : ��ѯ����;
 *
 * ����ֵ	  : *arg, *pcb;
 *
 * ����ֵ   : ERR_OK�޴���;
 *
 **/
static err_t http_server_poll(void *arg, struct tcp_pcb *pcb)
{
		struct http_state *hs = arg;
	
		if (hs == NULL)
		{
				close_conn(pcb, hs);
				return ERR_OK;
		}
		else
		{
				hs->retries++;
				if (hs->retries == 4)
				{
						close_conn(pcb, hs);
						return ERR_OK;
				}
				
        /* ������Ӵ��ڴ򿪵��ļ����򽫻ᷢ��ʣ�µ����ݣ�
         * ���һֱû���յ�GET������ô���ӽ������̹ر� */
				if (hs && (hs->handle))
				{
						if (http_send_data(pcb, hs))
						{
								tcp_output(pcb);
						}
				}
		}
		
		return ERR_OK;
}

/***
 * �������� : http_parse_request();
 *
 * �������� : �Խ��յ������ݽ��н��������ݲ�ͬ����������󣬷��ض�Ӧ����ҳ����;
 *
 * ����ֵ	  : **inp, *hs, *pcb;
 *
 * ����ֵ   : ERR_OK�޴���;
 *
 **/
static err_t http_parse_request(struct pbuf **inp, struct http_state *hs, struct tcp_pcb *pcb)
{
		char *data;
		char *crlf;
		u16_t data_len;
		struct pbuf *p = *inp;
	
		char *sp1, *sp2;
		u16_t uri_len;
		char *uri;
	
		/* �����ַ��� */
		if (hs->req == NULL)
		{
				hs->req = p;
		}
		else
		{
        /* ����ε������ַ��������������� */
				pbuf_cat(hs->req, p);
		}
		
		/* ������������ */ 
    if (hs->req->next != NULL)
    {
		    data_len = hs->req->tot_len;
        pbuf_copy_partial(hs->req, data, data_len, 0);
    }
		else
		{
		    data = (char *)p->payload;
		    data_len = p->len;
		}
		
		/* ��ȡ���յ���������ַ��������������ʾ����"GET / HTTP/1.1" */
		if (data_len > 7) 
		{
				crlf = strstr(data, "\r\n");
				if (crlf != NULL) 
				{
					  /* �Ƚ�ǰ4���ַ��Ƿ�Ϊ "GET " */
					  if (strncmp(data, "GET ", 4) == 0) 
					  {
							  /* sp1ָ���ַ��� "/ HTTP/1.1" */
							  sp1 = (data + 4);
					  }
					  /* ��sp1�ַ�����Ѱ���ַ�" "��sp2ָ���ַ��� " HTTP/1.1" */
					  sp2 = strstr(sp1, " ");
					  /* uri_len��ȡsp1�ַ����׵�ַ��sp2�ַ����׵�ַ�ĳ��� */
					  uri_len = sp2 - (sp1);

					  if ((sp2 != 0) && (sp2 >= (sp1))) 
					  {
							  /* ���������ַ�������uri�����������Ͻ�����\0��uriָ���ַ��� "/\0" */
							  uri = sp1;
							  *(sp1 - 1) = 0;
							  uri[uri_len] = 0;
							
							  /* �����ַ���Ѱ�Ҷ�Ӧ��ҳ���� */
							  return http_find_file(hs, uri, 0); 
					  }
				}
		}
		
		return ERR_OK;
}

/***
 * �������� : http_find_file();
 *
 * �������� : ����ȡ�����ݽ����жϣ���ȡ��Ӧ����ҳ����;
 *
 * ����ֵ	  : *hs, *uri, is_09;
 *
 * ����ֵ   : ERR_OK�޴���;
 *
 **/
static err_t http_find_file(struct http_state *hs, const char *uri, int is_09)
{
  struct fs_file *file = NULL;

	/* ����ַ���Ϊ "/\0",���index��ҳ */
  if((uri[0] == '/') && (uri[1] == 0)) 
	{
			file = fs_open("/index.html");
      uri = "/index.html";
  } 
	else 
	{
		  /* ���Ϊ�������������Ӧ��ҳ */
      file = fs_open(uri);
  }
	
	/* ����ҳ�ļ����ݸ�ֵ��http_state�ṹ�壬֮���ͳ�ȥ */
  return http_init_file(hs, file, is_09, uri);
}

/***
 * �������� : http_init_file();
 *
 * �������� : ��Ҫ���͵����ݱ��浽http_state�ṹ�嵱��;
 *
 * ����ֵ	  : *hs, *file, is_09, *uri;
 *
 * ����ֵ   : ERR_OK�޴���;
 *
 **/
static err_t http_init_file(struct http_state *hs, struct fs_file *file, int is_09, const char *uri)
{
  if (file != NULL) 
	{
    hs->handle = file;
		/* ����ҳ���ݸ�ֵ��http_state */
    hs->file = (char*)file->data;
		/* ����ҳ���ȸ�ֵ��http_state */
    hs->left = file->len;
    hs->retries = 0;
  } 
	else 
	{
    hs->handle = NULL;
    hs->file = NULL;
    hs->left = 0;
    hs->retries = 0;
  }

  return ERR_OK;
}

/***
 * �������� : http_send_data();
 *
 * �������� : ���ݷ��ͺ���;
 *
 * ����ֵ	  : *pcb, *hs;
 *
 * ����ֵ   : ERR_OK�޴���;
 *
 **/
static u8_t http_send_data(struct tcp_pcb *pcb, struct http_state *hs)
{
		err_t err = ERR_OK;
		u16_t len;
		u8_t data_to_send = 0;
		
		/* ���÷������ݳ��ȣ�����������ݹ������������ */
		if (tcp_sndbuf(pcb) < hs->left)
		{
				len = tcp_sndbuf(pcb);
		}
		else
		{
				len = (u16_t)hs->left;
		}		

    /* ������ҳ���� */
		err = tcp_write(pcb, hs->file, len, 1);
		
		if (err == ERR_OK)
		{
				data_to_send = 1;
				hs->file += len;
				hs->left -= len;
		}
		
		if ((hs->left == 0) && (fs_bytes_left(hs->handle) <= 0))
		{
        /* �ر����� */
				close_conn(pcb, hs);
				return 0;
		}
		
		return data_to_send;
}


/***
 * �������� : http_sent();
 *
 * �������� : �����Ѿ������ͣ����ұ�Զ������ȷ��;
 *
 * ����ֵ	  : *arg, *pcb, len;
 *
 * ����ֵ   : ERR_OK�޴���;
 *
 **/
static err_t http_sent(void *arg, struct tcp_pcb *pcb, u16_t len)
{
	struct http_state *hs = (struct http_state *)arg;
	
	if (hs == NULL)
	{
			return ERR_OK;
	}
	
	hs->retries = 0;

	http_send_data(pcb, hs);

  return ERR_OK;
}

/***
 * �������� : close_conn();
 *
 * �������� : �ر�tcp����;
 *
 * ����ֵ	  : *pcb, *hs;
 *
 * ����ֵ   : ��;
 *
 **/
static void close_conn(struct tcp_pcb *pcb, struct http_state *hs)
{
		tcp_arg(pcb, NULL);
		tcp_recv(pcb, NULL);
		tcp_err(pcb, NULL);
		tcp_poll(pcb, NULL, 0);
		tcp_sent(pcb, NULL);
	
    if (hs != NULL) 
		{
				if(hs->handle) 
				{
						fs_close(hs->handle);
						hs->handle = NULL;
				}
				mem_free(hs);
		}

		tcp_close(pcb);
}
