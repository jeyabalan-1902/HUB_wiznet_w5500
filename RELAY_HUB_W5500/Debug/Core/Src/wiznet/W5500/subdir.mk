################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/wiznet/W5500/w5500.c 

OBJS += \
./Core/Src/wiznet/W5500/w5500.o 

C_DEPS += \
./Core/Src/wiznet/W5500/w5500.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/wiznet/W5500/%.o Core/Src/wiznet/W5500/%.su Core/Src/wiznet/W5500/%.cyclo: ../Core/Src/wiznet/W5500/%.c Core/Src/wiznet/W5500/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/CJSON" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/DHCP" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/DNS" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/MQTT" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/MQTT/MQTTPacket" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/W5500" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-wiznet-2f-W5500

clean-Core-2f-Src-2f-wiznet-2f-W5500:
	-$(RM) ./Core/Src/wiznet/W5500/w5500.cyclo ./Core/Src/wiznet/W5500/w5500.d ./Core/Src/wiznet/W5500/w5500.o ./Core/Src/wiznet/W5500/w5500.su

.PHONY: clean-Core-2f-Src-2f-wiznet-2f-W5500

