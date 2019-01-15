/*
 * communication_utils.h
 *
 *  Created on: 27/12/2018
 *      Author: Tiago-Low
 */

#ifndef COMMUNICATION_UTILS_H_
#define COMMUNICATION_UTILS_H_


#include "communication_configs.h"
#include "configs_simucam.h"



bool bSendUART128 ( char *cBuffer, short int siIdMessage );
bool bSendUART64 ( char *cBuffer, short int siIdMessage );
bool bSendUART32  ( char *cBuffer, short int siIdMessage );
unsigned short int usiGetIdCMD ( void );
short int siPosStr( char *buffer, char cValue);
void vTimeoutCheck (void *p_arg);
void vSendEthConf ( void );
void vSendTurnOff ( void );
void vSendLog ( const char * cDataIn );


#endif /* COMMUNICATION_UTILS_H_ */
