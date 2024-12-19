/*
 * w5500_spi.h
 *
 *  Created on: Oct 15, 2024
 *      Author: Deepak
 */

#ifndef SRC_WIZNET_ETHERNET_W5500_SPI_H_
#define SRC_WIZNET_ETHERNET_W5500_SPI_H_

#include "stm32f4xx_hal.h"

void W5500Init();

void  wizchip_select(void);
void  wizchip_deselect(void);

uint8_t wizchip_read();
void  wizchip_write(uint8_t wb);

void wizchip_readburst(uint8_t* pBuf, uint16_t len);
void  wizchip_writeburst(uint8_t* pBuf, uint16_t len);


#endif /* SRC_WIZNET_ETHERNET_W5500_SPI_H_ */
