################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectClient.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectServer.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTDeserializePublish.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTFormat.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTPacket.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSerializePublish.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeClient.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeServer.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeClient.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeServer.c 

OBJS += \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectClient.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectServer.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTDeserializePublish.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTFormat.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTPacket.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSerializePublish.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeClient.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeServer.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeClient.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeServer.o 

C_DEPS += \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectClient.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectServer.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTDeserializePublish.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTFormat.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTPacket.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSerializePublish.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeClient.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeServer.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeClient.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeServer.d 


# Each subdirectory must supply rules for building sources it contributes
packages/pahomqtt-v1.1.0/MQTTPacket/src/%.o: ../packages/pahomqtt-v1.1.0/MQTTPacket/src/%.c
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DDEBUG -DUSE_NONVECTOR_MODE=1 -DFLASH_XIP=1 -I"D:\RttSummer\Summerknowledge\Code" -I"D:\RttSummer\Summerknowledge\Code\applications" -I"D:\RttSummer\Summerknowledge\Code\board" -I"D:\RttSummer\Summerknowledge\Code\libraries\drivers" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\arch" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\components\debug_console" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\components\touch" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\components\usb" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\drivers\inc" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\soc\HPM6750\boot" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\soc\HPM6750" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\soc\ip" -I"D:\RttSummer\Summerknowledge\Code\packages\aht10-latest" -I"D:\RttSummer\Summerknowledge\Code\packages\at_device-latest\class\esp8266" -I"D:\RttSummer\Summerknowledge\Code\packages\at_device-latest\inc" -I"D:\RttSummer\Summerknowledge\Code\packages\cJSON-latest" -I"D:\RttSummer\Summerknowledge\Code\packages\onenet-latest\inc" -I"D:\RttSummer\Summerknowledge\Code\packages\pahomqtt-v1.1.0\MQTTClient-RT" -I"D:\RttSummer\Summerknowledge\Code\packages\pahomqtt-v1.1.0\MQTTPacket\src" -I"D:\RttSummer\Summerknowledge\Code\packages\u8g2-official-latest\csrc" -I"D:\RttSummer\Summerknowledge\Code\packages\u8g2-official-latest\sys\rt-thread\port" -I"D:\RttSummer\Summerknowledge\Code\packages\webclient-latest\inc" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\dfs\filesystems\devfs" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\dfs\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\drivers\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\drivers\sensors" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\drivers\spi" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\finsh" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\libc\compilers\common" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\libc\compilers\gcc\newlib" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\at\at_socket" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\at\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\netdev\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\impl" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\include\dfs_net" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\include\socket" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\net\sal_socket\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\libcpu\risc-v\hpmicro" -I"D:\RttSummer\Summerknowledge\Code\startup\HPM6750" -include"D:\RttSummer\Summerknowledge\Code\rtconfig_preinc.h" -std=gnu11 -ffunction-sections -fdata-sections -fno-common -march=rv32imac -mabi=ilp32 -mcmodel=medlow -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

