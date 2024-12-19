################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/wiznet/MQTT/MQTTClient.c \
../Core/Src/wiznet/MQTT/mqtt_interface.c 

OBJS += \
./Core/Src/wiznet/MQTT/MQTTClient.o \
./Core/Src/wiznet/MQTT/mqtt_interface.o 

C_DEPS += \
./Core/Src/wiznet/MQTT/MQTTClient.d \
./Core/Src/wiznet/MQTT/mqtt_interface.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/wiznet/MQTT/%.o Core/Src/wiznet/MQTT/%.su Core/Src/wiznet/MQTT/%.cyclo: ../Core/Src/wiznet/MQTT/%.c Core/Src/wiznet/MQTT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/CJSON" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/DHCP" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/DNS" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/MQTT" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/MQTT/MQTTPacket" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/W5500" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-wiznet-2f-MQTT

clean-Core-2f-Src-2f-wiznet-2f-MQTT:
	-$(RM) ./Core/Src/wiznet/MQTT/MQTTClient.cyclo ./Core/Src/wiznet/MQTT/MQTTClient.d ./Core/Src/wiznet/MQTT/MQTTClient.o ./Core/Src/wiznet/MQTT/MQTTClient.su ./Core/Src/wiznet/MQTT/mqtt_interface.cyclo ./Core/Src/wiznet/MQTT/mqtt_interface.d ./Core/Src/wiznet/MQTT/mqtt_interface.o ./Core/Src/wiznet/MQTT/mqtt_interface.su

.PHONY: clean-Core-2f-Src-2f-wiznet-2f-MQTT

