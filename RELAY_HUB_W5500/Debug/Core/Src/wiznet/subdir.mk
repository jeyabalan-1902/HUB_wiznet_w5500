################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/wiznet/socket.c \
../Core/Src/wiznet/w5500_spi.c \
../Core/Src/wiznet/wizchip_conf.c 

OBJS += \
./Core/Src/wiznet/socket.o \
./Core/Src/wiznet/w5500_spi.o \
./Core/Src/wiznet/wizchip_conf.o 

C_DEPS += \
./Core/Src/wiznet/socket.d \
./Core/Src/wiznet/w5500_spi.d \
./Core/Src/wiznet/wizchip_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/wiznet/%.o Core/Src/wiznet/%.su Core/Src/wiznet/%.cyclo: ../Core/Src/wiznet/%.c Core/Src/wiznet/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/CJSON" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/DHCP" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/DNS" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/MQTT" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/MQTT/MQTTPacket" -I"C:/Users/kjeya/Documents/RTOS/Workspace/RELAY_HUB_W5500/Core/Src/wiznet/W5500" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-wiznet

clean-Core-2f-Src-2f-wiznet:
	-$(RM) ./Core/Src/wiznet/socket.cyclo ./Core/Src/wiznet/socket.d ./Core/Src/wiznet/socket.o ./Core/Src/wiznet/socket.su ./Core/Src/wiznet/w5500_spi.cyclo ./Core/Src/wiznet/w5500_spi.d ./Core/Src/wiznet/w5500_spi.o ./Core/Src/wiznet/w5500_spi.su ./Core/Src/wiznet/wizchip_conf.cyclo ./Core/Src/wiznet/wizchip_conf.d ./Core/Src/wiznet/wizchip_conf.o ./Core/Src/wiznet/wizchip_conf.su

.PHONY: clean-Core-2f-Src-2f-wiznet

