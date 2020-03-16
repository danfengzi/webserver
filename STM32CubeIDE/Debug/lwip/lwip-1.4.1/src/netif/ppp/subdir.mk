################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/lwip-1.4.1/src/netif/ppp/auth.c \
../lwip/lwip-1.4.1/src/netif/ppp/chap.c \
../lwip/lwip-1.4.1/src/netif/ppp/chpms.c \
../lwip/lwip-1.4.1/src/netif/ppp/fsm.c \
../lwip/lwip-1.4.1/src/netif/ppp/ipcp.c \
../lwip/lwip-1.4.1/src/netif/ppp/lcp.c \
../lwip/lwip-1.4.1/src/netif/ppp/magic.c \
../lwip/lwip-1.4.1/src/netif/ppp/md5.c \
../lwip/lwip-1.4.1/src/netif/ppp/pap.c \
../lwip/lwip-1.4.1/src/netif/ppp/ppp.c \
../lwip/lwip-1.4.1/src/netif/ppp/ppp_oe.c \
../lwip/lwip-1.4.1/src/netif/ppp/randm.c \
../lwip/lwip-1.4.1/src/netif/ppp/vj.c 

OBJS += \
./lwip/lwip-1.4.1/src/netif/ppp/auth.o \
./lwip/lwip-1.4.1/src/netif/ppp/chap.o \
./lwip/lwip-1.4.1/src/netif/ppp/chpms.o \
./lwip/lwip-1.4.1/src/netif/ppp/fsm.o \
./lwip/lwip-1.4.1/src/netif/ppp/ipcp.o \
./lwip/lwip-1.4.1/src/netif/ppp/lcp.o \
./lwip/lwip-1.4.1/src/netif/ppp/magic.o \
./lwip/lwip-1.4.1/src/netif/ppp/md5.o \
./lwip/lwip-1.4.1/src/netif/ppp/pap.o \
./lwip/lwip-1.4.1/src/netif/ppp/ppp.o \
./lwip/lwip-1.4.1/src/netif/ppp/ppp_oe.o \
./lwip/lwip-1.4.1/src/netif/ppp/randm.o \
./lwip/lwip-1.4.1/src/netif/ppp/vj.o 

C_DEPS += \
./lwip/lwip-1.4.1/src/netif/ppp/auth.d \
./lwip/lwip-1.4.1/src/netif/ppp/chap.d \
./lwip/lwip-1.4.1/src/netif/ppp/chpms.d \
./lwip/lwip-1.4.1/src/netif/ppp/fsm.d \
./lwip/lwip-1.4.1/src/netif/ppp/ipcp.d \
./lwip/lwip-1.4.1/src/netif/ppp/lcp.d \
./lwip/lwip-1.4.1/src/netif/ppp/magic.d \
./lwip/lwip-1.4.1/src/netif/ppp/md5.d \
./lwip/lwip-1.4.1/src/netif/ppp/pap.d \
./lwip/lwip-1.4.1/src/netif/ppp/ppp.d \
./lwip/lwip-1.4.1/src/netif/ppp/ppp_oe.d \
./lwip/lwip-1.4.1/src/netif/ppp/randm.d \
./lwip/lwip-1.4.1/src/netif/ppp/vj.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/lwip-1.4.1/src/netif/ppp/auth.o: ../lwip/lwip-1.4.1/src/netif/ppp/auth.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/auth.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/chap.o: ../lwip/lwip-1.4.1/src/netif/ppp/chap.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/chap.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/chpms.o: ../lwip/lwip-1.4.1/src/netif/ppp/chpms.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/chpms.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/fsm.o: ../lwip/lwip-1.4.1/src/netif/ppp/fsm.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/fsm.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/ipcp.o: ../lwip/lwip-1.4.1/src/netif/ppp/ipcp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/ipcp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/lcp.o: ../lwip/lwip-1.4.1/src/netif/ppp/lcp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/lcp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/magic.o: ../lwip/lwip-1.4.1/src/netif/ppp/magic.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/magic.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/md5.o: ../lwip/lwip-1.4.1/src/netif/ppp/md5.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/md5.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/pap.o: ../lwip/lwip-1.4.1/src/netif/ppp/pap.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/pap.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/ppp.o: ../lwip/lwip-1.4.1/src/netif/ppp/ppp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/ppp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/ppp_oe.o: ../lwip/lwip-1.4.1/src/netif/ppp/ppp_oe.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/ppp_oe.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/randm.o: ../lwip/lwip-1.4.1/src/netif/ppp/randm.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/randm.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/netif/ppp/vj.o: ../lwip/lwip-1.4.1/src/netif/ppp/vj.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/netif/ppp/vj.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
