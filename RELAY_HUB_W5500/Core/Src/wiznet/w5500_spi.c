/*
 * w5500_spi.c
 *
 *  Created on: Oct 15, 2024
 *      Author: Deepak
 */
#include "stm32f4xx_hal.h"
#include "wizchip_conf.h"
#include "stdio.h"
#include "main.h"

extern SPI_HandleTypeDef hspi1;

uint8_t SPIReadWrite(uint8_t data)
{
	//wait till FIFO has a free slot
	while((hspi1.Instance->SR & SPI_FLAG_TXE) != SPI_FLAG_TXE);

	*(__IO uint8_t*)&hspi1.Instance->DR = data;
	//Now wait till data arrives
	while((hspi1.Instance->SR & SPI_FLAG_RXNE)!=SPI_FLAG_RXNE);

	return (*(__IO uint8_t*)&hspi1.Instance->DR);

}

void wizchip_select(void)
{
	HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET);
}

void wizchip_deselect(void)
{
	HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET);
}

void wizchip_reset_high(void)
{
	HAL_GPIO_WritePin(SPI1_RST_GPIO_Port, SPI1_RST_Pin, GPIO_PIN_SET);
}

void wizchip_reset_low(void)
{
	HAL_GPIO_WritePin(SPI1_RST_GPIO_Port, SPI1_RST_Pin, GPIO_PIN_RESET);
}

uint8_t wizchip_read()
{
	uint8_t rb;
	rb=SPIReadWrite(0x00);
	return rb;
}

void  wizchip_write(uint8_t wb)
{
	SPIReadWrite(wb);
}

void wizchip_readburst(uint8_t* pBuf, uint16_t len)
{
	for(uint16_t i=0;i<len;i++)
	{
		*pBuf=SPIReadWrite(0x00);
		pBuf++;
	}
}

void  wizchip_writeburst(uint8_t* pBuf, uint16_t len)
{
	for(uint16_t i=0;i<len;i++)
	{
		SPIReadWrite(*pBuf);
		pBuf++;
	}
}

void W5500IOInit()
{
	//printf("Wiznet_io_Initiallized @ main.c\r\n");
}

void w5500_enter_critical(void)
{
	__disable_irq();
}

void w5500_exit_critical(void)
{
	__enable_irq();
}

void W5500Init()
{
	uint8_t tmp;
	uint8_t memsize[2][8] = { { 2, 2, 2, 2, 2, 2, 2, 2 }, { 2, 2, 2, 2, 2, 2, 2, 2 } };

	W5500IOInit();

	wizchip_deselect();//CS high by default

	//Send a pulse on reset pin
	wizchip_reset_low();

	tmp = 0xFF;
	while(tmp--);
	wizchip_reset_high();

	reg_wizchip_cs_cbfunc(wizchip_select, wizchip_deselect);
	reg_wizchip_spi_cbfunc(wizchip_read, wizchip_write);
	reg_wizchip_spiburst_cbfunc(wizchip_readburst, wizchip_writeburst);
	reg_wizchip_cris_cbfunc(w5500_enter_critical, w5500_exit_critical);

	/* WIZChip Initialize*/
	if (ctlwizchip(CW_INIT_WIZCHIP, (void*) memsize) == -1) {
		printf("WIZCHIP Initialized Failed.\r\n");
		while (1);
	}
	printf("WIZCHIP Initialization Success.\r\n");

	//Check if SPI is working
	printf("Auto-detecting Ethernet Chip on SPI Port...");
      uint8_t Data = WIZCHIP_READ(VERSIONR);
      printf("rtData:%d\n",Data);
	if( Data == 0x04)
	{
		printf("W5500 Found on SPI\r\n");
	}
	else
	{
		printf("W5500 NOT Found on SPI\r\n");
		printf("Double Check SPI Cables\r\n");
		while(1);
	}
}


