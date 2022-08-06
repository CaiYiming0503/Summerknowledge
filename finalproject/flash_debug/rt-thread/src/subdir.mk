################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/src/clock.c \
../rt-thread/src/components.c \
../rt-thread/src/device.c \
../rt-thread/src/idle.c \
../rt-thread/src/ipc.c \
../rt-thread/src/irq.c \
../rt-thread/src/kservice.c \
../rt-thread/src/mem.c \
../rt-thread/src/mempool.c \
../rt-thread/src/object.c \
../rt-thread/src/scheduler.c \
../rt-thread/src/thread.c \
../rt-thread/src/timer.c 

OBJS += \
./rt-thread/src/clock.o \
./rt-thread/src/components.o \
./rt-thread/src/device.o \
./rt-thread/src/idle.o \
./rt-thread/src/ipc.o \
./rt-thread/src/irq.o \
./rt-thread/src/kservice.o \
./rt-thread/src/mem.o \
./rt-thread/src/mempool.o \
./rt-thread/src/object.o \
./rt-thread/src/scheduler.o \
./rt-thread/src/thread.o \
./rt-thread/src/timer.o 

C_DEPS += \
./rt-thread/src/clock.d \
./rt-thread/src/components.d \
./rt-thread/src/device.d \
./rt-thread/src/idle.d \
./rt-thread/src/ipc.d \
./rt-thread/src/irq.d \
./rt-thread/src/kservice.d \
./rt-thread/src/mem.d \
./rt-thread/src/mempool.d \
./rt-thread/src/object.d \
./rt-thread/src/scheduler.d \
./rt-thread/src/thread.d \
./rt-thread/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/src/%.o: ../rt-thread/src/%.c
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DDEBUG -DUSE_NONVECTOR_MODE=1 -DFLASH_XIP=1 -I"D:\RttSummer\Summerknowledge\Code" -I"D:\RttSummer\Summerknowledge\Code\applications" -I"D:\RttSummer\Summerknowledge\Code\board" -I"D:\RttSummer\Summerknowledge\Code\libraries\drivers" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\arch" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\components\debug_console" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\components\touch" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\components\usb" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\drivers\inc" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\soc\HPM6750\boot" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\soc\HPM6750" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\soc\ip" -I"D:\RttSummer\Summerknowledge\Code\packages\aht10-latest" -I"D:\RttSummer\Summerknowledge\Code\packages\at_device-latest\class\esp8266" -I"D:\RttSummer\Summerknowledge\Code\packages\at_device-latest\inc" -I"D:\RttSummer\Summerknowledge\Code\packages\cJSON-latest" -I"D:\RttSummer\Summerknowledge\Code\packages\onenet-latest\inc" -I"D:\RttSummer\Summerknowledge\Code\packages\pahomqtt-v1.1.0\MQTTClient-RT" -I"D:\RttSummer\Summerknowledge\Code\packages\pahomqtt-v1.1.0\MQTTPacket\src" -I"D:\RttSummer\Summerknowledge\Code\packages\u8g2-official-latest\csrc" -I"D:\RttSummer\Summerknowledge\Code\packages\u8g2-official-latest\sys\rt-thread\port" -I"D:\RttSummer\Summerknowledge\Code\packages\webclient-latest\inc" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\dfs\filesystems\devfs" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\dfs\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\drivers\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\drivers\sensors" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\drivers\spi" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\finsh" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\libc\compilers\common" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\libc\compilers\gcc\newlib" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\at\at_socket" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\at\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\netdev\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\impl" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\include\dfs_net" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\include\socket" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\libcpu\risc-v\hpmicro" -I"D:\RttSummer\Summerknowledge\Code\startup\HPM6750" -include"D:\RttSummer\Summerknowledge\Code\rtconfig_preinc.h" -std=gnu11 -ffunction-sections -fdata-sections -fno-common -march=rv32imac -mabi=ilp32 -mcmodel=medlow -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

