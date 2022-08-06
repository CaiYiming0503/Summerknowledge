################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../startup/HPM6750/toolchains/gcc/start.S 

OBJS += \
./startup/HPM6750/toolchains/gcc/start.o 

S_UPPER_DEPS += \
./startup/HPM6750/toolchains/gcc/start.d 


# Each subdirectory must supply rules for building sources it contributes
startup/HPM6750/toolchains/gcc/%.o: ../startup/HPM6750/toolchains/gcc/%.S
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -I"D:\RttSummer\Summerknowledge\Code" -I"D:\RttSummer\Summerknowledge\Code\applications" -I"D:\RttSummer\Summerknowledge\Code\board" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\arch" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\drivers\inc" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\soc\ip" -I"D:\RttSummer\Summerknowledge\Code\libraries\hpm_sdk\soc\HPM6750" -I"D:\RttSummer\Summerknowledge\Code\libraries\drivers" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\dfs\filesystems\devfs" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\dfs\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\drivers\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\components\finsh" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\include" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\libcpu\risc-v\hpmicro" -I"D:\RttSummer\Summerknowledge\Code\rt-thread\libcpu\risc-v\common" -ffunction-sections -fdata-sections -fno-common -ggdb -march=rv32imac -mabi=ilp32 -mcmodel=medany -DHAVE_CCONFIG_H -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -DRTOS_RTTHREAD -DRT_USING_NEWLIB -I. -Iapplications -Iboard -Irt-thread\include -Irt-thread\components\dfs\include -Irt-thread\components\dfs\filesystems\devfs -Irt-thread\components\drivers\include -Irt-thread\components\finsh -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

