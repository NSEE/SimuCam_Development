/*
 * initialization_simucam.c
 *
 *  Created on: 20/10/2018
 *      Author: TiagoLow
 */

#include "initialization_simucam.h"


void vInitSimucamBasicHW(void)
{

	/* Turn Off all LEDs */
	bSetBoardLeds(LEDS_OFF, LEDS_BOARD_ALL_MASK);
	bSetPainelLeds(LEDS_OFF, LEDS_PAINEL_ALL_MASK);

	/* Turn On Power LED */
	bSetPainelLeds(LEDS_ON, LEDS_POWER_MASK);

	/* Release ETH Reset */
	vEthReleaseReset();

	/* Configure Seven Segments Display */
	bSSDisplayConfig(SSDP_NORMAL_MODE);
	bSSDisplayUpdate(0);

}