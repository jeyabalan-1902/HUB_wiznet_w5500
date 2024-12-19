################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/CJSON/cJSON.c \
../Core/Src/CJSON/cJSON_Utils.c 

OBJS += \
./Core/Src/CJSON/cJSON.o \
./Core/Src/CJSON/cJSON_Utils.o 

C_DEPS += \
./Core/Src/CJSON/cJSON.d \
./Core/Src/CJSON/cJSON_Utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/CJSON/%.o Core/Src/CJSON/%.su Core/Src/CJSON/%.cyclo: ../Core/Src/CJSON/%.c Core/Src/CJSON/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/CJSON" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/DHCP" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/DNS" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/MQTT" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/MQTT/MQTTPacket" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/W5500" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-CJSON

clean-Core-2f-Src-2f-CJSON:
	-$(RM) ./Core/Src/CJSON/cJSON.cyclo ./Core/Src/CJSON/cJSON.d ./Core/Src/CJSON/cJSON.o ./Core/Src/CJSON/cJSON.su ./Core/Src/CJSON/cJSON_Utils.cyclo ./Core/Src/CJSON/cJSON_Utils.d ./Core/Src/CJSON/cJSON_Utils.o ./Core/Src/CJSON/cJSON_Utils.su

.PHONY: clean-Core-2f-Src-2f-CJSON

