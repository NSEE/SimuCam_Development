/*
 * parser_rx_task.h
 *
 *  Created on: 19/12/2018
 *      Author: Tiago-Low
 */

#ifndef PARSER_RX_TASK_H_
#define PARSER_RX_TASK_H_

#include "../utils/communication_configs.h"

typedef enum { sConfiguring = 0, sWaitingConn, sWaitingMessage, sRequestParsing, sReplyParsing, sHandlingError } tParserStates;


void vParserRXTask(void *task_data);
bool getPreParsedPacket( tPreParsed *xPreParsedParser );
unsigned short int usiGetIdCMD ( void );
boolean bTrySendSemaphoreCommInit( void );

#endif /* PARSER_RX_TASK_H_ */
