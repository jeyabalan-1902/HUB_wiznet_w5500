/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define R_LED1_Pin GPIO_PIN_0
#define R_LED1_GPIO_Port GPIOC
#define R_LED2_Pin GPIO_PIN_1
#define R_LED2_GPIO_Port GPIOC
#define R_LED3_Pin GPIO_PIN_2
#define R_LED3_GPIO_Port GPIOC
#define R_LED4_Pin GPIO_PIN_3
#define R_LED4_GPIO_Port GPIOC
#define SPI1_RST_Pin GPIO_PIN_0
#define SPI1_RST_GPIO_Port GPIOA
#define SPI1_CS_Pin GPIO_PIN_1
#define SPI1_CS_GPIO_Port GPIOA
#define USART_TX_Pin GPIO_PIN_2
#define USART_TX_GPIO_Port GPIOA
#define USART_RX_Pin GPIO_PIN_3
#define USART_RX_GPIO_Port GPIOA
#define RELAY6_Pin GPIO_PIN_5
#define RELAY6_GPIO_Port GPIOC
#define RELAY3_Pin GPIO_PIN_6
#define RELAY3_GPIO_Port GPIOC
#define RELAY12_Pin GPIO_PIN_7
#define RELAY12_GPIO_Port GPIOC
#define RELAY2_Pin GPIO_PIN_8
#define RELAY2_GPIO_Port GPIOC
#define RELAY1_Pin GPIO_PIN_9
#define RELAY1_GPIO_Port GPIOC
#define RELAY11_Pin GPIO_PIN_8
#define RELAY11_GPIO_Port GPIOA
#define RELAY10_Pin GPIO_PIN_9
#define RELAY10_GPIO_Port GPIOA
#define RELAY9_Pin GPIO_PIN_10
#define RELAY9_GPIO_Port GPIOA
#define RELAY8_Pin GPIO_PIN_11
#define RELAY8_GPIO_Port GPIOA
#define RELAY7_Pin GPIO_PIN_12
#define RELAY7_GPIO_Port GPIOA
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
#define R_LED12_Pin GPIO_PIN_10
#define R_LED12_GPIO_Port GPIOC
#define R_LED11_Pin GPIO_PIN_11
#define R_LED11_GPIO_Port GPIOC
#define R_LED10_Pin GPIO_PIN_12
#define R_LED10_GPIO_Port GPIOC
#define R_LED9_Pin GPIO_PIN_2
#define R_LED9_GPIO_Port GPIOD
#define SWO_Pin GPIO_PIN_3
#define SWO_GPIO_Port GPIOB
#define R_LED8_Pin GPIO_PIN_4
#define R_LED8_GPIO_Port GPIOB
#define R_LED7_Pin GPIO_PIN_5
#define R_LED7_GPIO_Port GPIOB
#define R_LED6_Pin GPIO_PIN_6
#define R_LED6_GPIO_Port GPIOB
#define R_LED5_Pin GPIO_PIN_7
#define R_LED5_GPIO_Port GPIOB
#define RELAY4_Pin GPIO_PIN_8
#define RELAY4_GPIO_Port GPIOB
#define RELAY5_Pin GPIO_PIN_9
#define RELAY5_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
