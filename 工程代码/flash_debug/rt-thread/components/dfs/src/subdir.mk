################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/dfs/src/dfs.c \
../rt-thread/components/dfs/src/dfs_file.c \
../rt-thread/components/dfs/src/dfs_fs.c \
../rt-thread/components/dfs/src/dfs_poll.c \
../rt-thread/components/dfs/src/dfs_posix.c \
../rt-thread/components/dfs/src/dfs_select.c 

OBJS += \
./rt-thread/components/dfs/src/dfs.o \
./rt-thread/components/dfs/src/dfs_file.o \
./rt-thread/components/dfs/src/dfs_fs.o \
./rt-thread/components/dfs/src/dfs_poll.o \
./rt-thread/components/dfs/src/dfs_posix.o \
./rt-thread/components/dfs/src/dfs_select.o 

C_DEPS += \
./rt-thread/components/dfs/src/dfs.d \
./rt-thread/components/dfs/src/dfs_file.d \
./rt-thread/components/dfs/src/dfs_fs.d \
./rt-thread/components/dfs/src/dfs_poll.d \
./rt-thread/components/dfs/src/dfs_posix.d \
./rt-thread/components/dfs/src/dfs_select.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/dfs/src/%.o: ../rt-thread/components/dfs/src/%.c
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DDEBUG -DUSE_NONVECTOR_MODE=1 -DFLASH_XIP=1 -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\applications" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\board" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\libraries\drivers" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\libraries\hpm_sdk\arch" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\libraries\hpm_sdk\components\debug_console" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\libraries\hpm_sdk\components\touch" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\libraries\hpm_sdk\components\usb" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\libraries\hpm_sdk\drivers\inc" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\libraries\hpm_sdk\soc\HPM6750\boot" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\libraries\hpm_sdk\soc\HPM6750" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\libraries\hpm_sdk\soc\ip" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\aht10-latest" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\at_device-latest\class\esp8266" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\at_device-latest\inc" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\cJSON-latest" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\onenet-latest\inc" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\pahomqtt-v1.1.0\MQTTClient-RT" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\pahomqtt-v1.1.0\MQTTPacket\src" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\u8g2-official-latest\csrc" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\u8g2-official-latest\sys\rt-thread\port" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\packages\webclient-latest\inc" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\dfs\filesystems\devfs" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\dfs\include" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\drivers\include" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\drivers\sensors" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\drivers\spi" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\finsh" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\libc\compilers\common" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\libc\compilers\gcc\newlib" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\net\at\at_socket" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\net\at\include" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\net\netdev\include" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\net\sal_socket\impl" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\net\sal_socket\include\dfs_net" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\net\sal_socket\include\socket" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\components\net\sal_socket\include" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\include" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rt-thread\libcpu\risc-v\hpmicro" -I"D:\20006340128\blinkled22222222222222\blink_led22222222222222\startup\HPM6750" -include"D:\20006340128\blinkled22222222222222\blink_led22222222222222\rtconfig_preinc.h" -std=gnu11 -ffunction-sections -fdata-sections -fno-common -march=rv32imac -mabi=ilp32 -mcmodel=medlow -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

