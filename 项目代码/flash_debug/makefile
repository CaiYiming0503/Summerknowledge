################################################################################
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/HPM6750/toolchains/gcc/subdir.mk
-include startup/HPM6750/subdir.mk
-include rt-thread/src/subdir.mk
-include rt-thread/libcpu/risc-v/hpmicro/subdir.mk
-include rt-thread/components/net/sal_socket/src/subdir.mk
-include rt-thread/components/net/sal_socket/socket/subdir.mk
-include rt-thread/components/net/sal_socket/impl/subdir.mk
-include rt-thread/components/net/sal_socket/dfs_net/subdir.mk
-include rt-thread/components/net/netdev/src/subdir.mk
-include rt-thread/components/net/at/src/subdir.mk
-include rt-thread/components/net/at/at_socket/subdir.mk
-include rt-thread/components/libc/compilers/gcc/newlib/subdir.mk
-include rt-thread/components/libc/compilers/common/subdir.mk
-include rt-thread/components/finsh/subdir.mk
-include rt-thread/components/drivers/src/subdir.mk
-include rt-thread/components/drivers/spi/subdir.mk
-include rt-thread/components/drivers/serial/subdir.mk
-include rt-thread/components/drivers/sensors/subdir.mk
-include rt-thread/components/drivers/rtc/subdir.mk
-include rt-thread/components/drivers/misc/subdir.mk
-include rt-thread/components/drivers/i2c/subdir.mk
-include rt-thread/components/dfs/src/subdir.mk
-include rt-thread/components/dfs/filesystems/devfs/subdir.mk
-include packages/webclient-latest/src/subdir.mk
-include packages/webclient-latest/samples/subdir.mk
-include packages/u8g2-official-latest/sys/rt-thread/port/subdir.mk
-include packages/u8g2-official-latest/csrc/subdir.mk
-include packages/pahomqtt-v1.1.0/samples/subdir.mk
-include packages/pahomqtt-v1.1.0/MQTTPacket/src/subdir.mk
-include packages/pahomqtt-v1.1.0/MQTTClient-RT/subdir.mk
-include packages/onenet-latest/src/subdir.mk
-include packages/onenet-latest/samples/subdir.mk
-include packages/cJSON-latest/subdir.mk
-include packages/at_device-latest/src/subdir.mk
-include packages/at_device-latest/samples/subdir.mk
-include packages/at_device-latest/class/esp8266/subdir.mk
-include packages/aht10-latest/subdir.mk
-include libraries/hpm_sdk/soc/HPM6750/boot/subdir.mk
-include libraries/hpm_sdk/soc/HPM6750/subdir.mk
-include libraries/hpm_sdk/drivers/src/subdir.mk
-include libraries/hpm_sdk/components/debug_console/subdir.mk
-include libraries/drivers/subdir.mk
-include board/subdir.mk
-include applications/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
rtthread.bin \

SECONDARY_LIST += \
rtthread.lst \

SECONDARY_SIZE += \
rtthread.siz \


# 所有目标
all: rtthread.elf secondary-outputs

# 工具调用
rtthread.elf: $(OBJS) $(USER_OBJS)
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -T "D:\20006340128\blinkled22222222222222\blink_led22222222222222\board\linker_scripts\flash_rtt.ld" -Xlinker --gc-sections -Wl,-Map,"rtthread.map" --specs=nano.specs -u _printf_float --specs=nosys.specs -nostartfiles -Wl,--gc-sections -Wl,-cref,-Map=rtthread.map -march=rv32imac -mabi=ilp32 -mcmodel=medlow -o "rtthread.elf" $(OBJS) $(USER_OBJS) $(LIBS)

rtthread.bin: rtthread.elf
	riscv64-unknown-elf-objcopy -O binary "rtthread.elf"  "rtthread.bin"

rtthread.lst: rtthread.elf
	riscv64-unknown-elf-objdump --source --all-headers --demangle --line-numbers --wide "rtthread.elf" > "rtthread.lst"

rtthread.siz: rtthread.elf
	riscv64-unknown-elf-size --format=berkeley "rtthread.elf"

# 其他目标
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) rtthread.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
