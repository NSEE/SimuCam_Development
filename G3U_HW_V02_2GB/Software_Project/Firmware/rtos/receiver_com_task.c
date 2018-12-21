
#include "receiver_com_task.h"


/*  This function implements the task that will receive packet via UART
    also need to parse the command in order to send to the MEB task */
void vReceiverComTask(void *task_data)
{
    bool bSuccess = FALSE;
    INT8U error_code;
    tReceiverStates eReceiverMode;
    char cReceiveBuffer[SIZE_RCV_BUFFER];
    tPreParsed xPreParsedBuffer;
    
    eReceiverMode = sConfiguring;

    #ifdef DEBUG_ON
        debug(fp,"vReceiverComTask, enter task.\n");
    #endif

    for(;;) {

        memset(cReceiveBuffer, 0, SIZE_RCV_BUFFER);
        switch (eReceiverMode)
        {
            case sConfiguring:
                /* Do nothing for now */
                if (BY_PASS)
                    eReceiverMode = sPiping;
                else
                    eReceiverMode = sWaitingConn;
                break;

            case sWaitingConn:
                /*  This mode waits for the NUC send the status, this is how Simucam
                    knows that NUC is up */
            	bSuccess = FALSE;

                memset(cReceiveBuffer, 0, SIZE_RCV_BUFFER);
                scanf("%s", cReceiveBuffer);
                bSuccess = bPreParser( cReceiveBuffer , &xPreParsedBuffer );

                if ( bSuccess ) {
                    eReceiverMode = sInitPreParsing;
                } else {
                    eReceiverMode = sHandlingError;
                    xPreParsedBuffer.ucErrorFlag = eBadFormatInit;
                }

                break;
            case sInitPreParsing:
                /* Ack or Nack packets can be sent by this task in this state */
                /* Check CRC8 */
                if ( xPreParsedBuffer.ucCalculatedCRC8 == xPreParsedBuffer.ucMessageCRC8 ) {

                    /* Check the type of command */
                    switch (xPreParsedBuffer.cType)
                    {
                        case START_REQUEST_CHAR:
                        case START_REPLY_CHAR:
                            if ( bSendAck() == TRUE ) {
                                /* Post Semaphore to tell to vSenderComTask stop send status packet*/
                                error_code = OSSemPost(xSemCommInit);

                                if ( error_code == OS_ERR_NONE ) {

                                    if ( xPreParsedBuffer.cType == START_REPLY_CHAR )
                                        eReceiverMode = sReplyParsing;
                                    else
                                        eReceiverMode = sRequestParsing;
                                    
                                } else {
                                    eReceiverMode = sHandlingError;
                                    xPreParsedBuffer.ucErrorFlag = eSemErrorInit;
                                }
                            } else {
                                /*  Try to send the ack N times, if it was not possible to send ack
                                    was decided that will not perform the action, because NUC will send this
                                    command again due to lack of ACK, so MEB will perform the action twice.
                                    For simplification and to not wast processing we go back to sReceiving state */
                                eReceiverMode = sWaitingConn;
                            }
                            break;
                        case ACK_CHAR: /*The packet is a received ACK from NUC*/
                            eReceiverMode = sReceiving;
            /*  Reservar mutex da tabela de pendencias
                Procurar pelo identificar do comando
                Limpar pendecia
                envia semaforo
                    */
                            break;
                        case NACK_CHAR: /*The packet is a received NACK from NUC*/
                            /*  Will not threat NACK in the initialization, the SernderTask will keep to send 
                                the initialization message until receive the semaphore, so back to sWaitingConn state*/
                            eReceiverMode = sWaitingConn;
                            break;
                        default:
                            eReceiverMode = sHandlingError;
                            xPreParsedBuffer.ucErrorFlag = eBadFormatInit;
                            break;
                    }
                } else {
                    /* Wrong CRC */
                    eReceiverMode = sHandlingError;
                    xPreParsedBuffer.ucErrorFlag = eCRCErrorInit;
                }

                break;                
            case sReceiving:

            	bSuccess = FALSE;

                memset(cReceiveBuffer, 0, SIZE_RCV_BUFFER);
                scanf("%s", cReceiveBuffer);
                bSuccess = bPreParser( cReceiveBuffer , &xPreParsedBuffer );

                if ( bSuccess ) {
                    eReceiverMode = sPreParsing;
                } else {
                    eReceiverMode = sHandlingError;
                    xPreParsedBuffer.ucErrorFlag = eBadFormat;
                } 

                break;
            case sPreParsing:
                /* At this point we have a preparsed command in the variable xPerPaecedBufer */
                /* Check CRC8 */
               /* Ack or Nack packets can be sent by this task in this state */
                /* Check CRC8 */
                if ( xPreParsedBuffer.ucCalculatedCRC8 == xPreParsedBuffer.ucMessageCRC8 ) {

                    /* Check the type of command */
                    switch (xPreParsedBuffer.cType)
                    {
                        case START_REQUEST_CHAR:
                        case START_REPLY_CHAR:
                            if ( bSendAck() == TRUE ) {

                                if ( error_code == OS_ERR_NONE ) {

                                    if ( xPreParsedBuffer.cType == START_REPLY_CHAR )
                                        eReceiverMode = sReplyParsing;
                                    else
                                        eReceiverMode = sRequestParsing;
                                    
                                } else {
                                    eReceiverMode = sHandlingError;
                                    xPreParsedBuffer.ucErrorFlag = eSemErrorInit;
                                }
                            } else {
                                /*  Try to send the ack N times, if it was not possible to send ack
                                    was decided that will not perform the action, because NUC will send this
                                    command again due to lack of ACK, so MEB will perform the action twice.
                                    For simplification and to not wast processing we go back to sReceiving state */
                                eReceiverMode = sReceiving;
                            }
                            break;
                        case ACK_CHAR: /*The packet is a received ACK from NUC*/
                            eReceiverMode = sReceiving;
    /*  Reservar mutex da tabela de pendencias
        Procurar pelo identificar do comando
        Limpar pendecia
        envia semaforo
            */
                            break;
                        case NACK_CHAR: /*The packet is a received NACK from NUC*/
                            /*  Will not threat NACK in the initialization, the SernderTask will keep to send 
                                the initialization message until receive the semaphore, so back to sWaitingConn state*/
                            eReceiverMode = sReceiving;
                            break;
                        default:
                            eReceiverMode = sHandlingError;
                            xPreParsedBuffer.ucErrorFlag = eBadFormatInit;
                            break;
                    }
                } else {
                    /* Wrong CRC */
                    eReceiverMode = sHandlingError;
                    xPreParsedBuffer.ucErrorFlag = eCRCErrorInit;
                }

                break;
            case sRequestParsing:
                /* In this state que ack packet was already sent to NUC */          
                switch (xPreParsedBuffer.cType)
                {
                    case ETH_CMD: /*NUC requested the ETH Configuration*/




                        break;
                    default:
                        break;
                }
                break;
            case sReplyParsing:
                /* In this state que ack packet was already sent to NUC */          
                /*  
                    verificar se é S,D,P,H
                    */
                switch (xPreParsedBuffer.cType)
                {
                    case NUC_STATUS_CMD: /*Status from NUC*/

                        break;
                    case POWER_OFF_CMD: /*Shut down command from SGSE*/

                        break;
                    case PUS_CMD: /*PUS command to MEB*/

                        break;
                    case HEART_BEAT_CMD: /*Heart beating (NUC are you there?)*/

                        break;
                    default:
                        break;
                }
                break;
            case sSendingMEB:
                /* code */
                break;
            case sHandlingError:
                
                eReceiverMode = tErrorHandlerFunc (&xPreParsedBuffer);

                break;
            case sPiping:
                /*  This mode is used to send everuthing that is received in UART
                    to the std console of NIOS II output */
                #ifdef DEBUG_ON
                    scanf("%s", cReceiveBuffer);
                    if ( strcmp( cReceiveBuffer , CHANGE_MODE_SEQUENCE ) == 0 ) {
                        debug(fp,"Changing de mode of operation. \n");
                        eReceiverMode = sWaitingConn;
                    } else {
                        debug(fp,cReceiveBuffer);
                    }
                #else
                    eReceiverMode = sReceiving;
                #endif

                break;                
            default:
                break;
        }
    }
}

/*  This function will parse the buffer into a command, will identify if is an request or reply
    also will separate all the values separated by ':'. If the command isn't complete (';' in the final)
    it will return false. */
    /* Max size of parsed value is 6 digits, for now*/
bool bPreParser( char *buffer, tPreParsed *xPerParcedBuffer )
{
    bool bSuccess = FALSE;
    short int siStrLen, siTeminador, siIniReq, siIniResp, siIniACK, siIniNACK, siCRC;
	char c, i, *p_inteiro;
	char inteiro[6]; /* Max size of parsed value is 6 digits, for now */

    siStrLen = strlen(buffer);
    siTeminador = siPosStr(buffer, FINAL_CHAR);
    siIniACK = siPosStr(buffer, ACK_CHAR);
    siIniNACK = siPosStr(buffer, NACK_CHAR);
    siIniACK = min_sim(siIniACK, siIniNACK);
    siIniReq = siPosStr(buffer, START_REQUEST_CHAR);
    siIniResp = siPosStr(buffer, START_REPLY_CHAR);
    siIniReq = min_sim(siIniReq, siIniResp);
    siIniReq = min_sim(siIniReq, siIniACK);
    siCRC = strcspn(buffer, SEPARATOR_CRC);

    /* Check if there is [!|?] , |, ; in the packet*/
    if ( (siTeminador == (siStrLen-1)) && (siCRC < siTeminador) && (siIniReq < siCRC) ) {

        xPerParcedBuffer->ucCalculatedCRC8 = ucCrc8wInit(&buffer[siIniReq] , (siCRC - siIniReq) );
        xPerParcedBuffer->cType = buffer[siIniReq];

        if (xPerParcedBuffer->cType == NACK_CHAR ) {
            xPerParcedBuffer->ucMessageCRC8 = 54; /*CRC8("#")=54*/
            xPerParcedBuffer->ucCalculatedCRC8 = 54; /*Even if calculated crc is wrong we should re-send the commands*/
            bSuccess = TRUE;
        } else {
            xPerParcedBuffer->cCommand = buffer[siIniReq+1];
            xPerParcedBuffer->ucNofBytes = 0;
            memset( xPerParcedBuffer->usiValues , 0 , SIZE_UCVALUES);

            i = siIniReq + 3; /* "?C:i..." */
            do {
                p_inteiro = inteiro;
                memset( &(inteiro) , 0 , sizeof( inteiro ) );
                do {
                    c = buffer[i];
                    if ( isdigit( c ) ) {
                        (*p_inteiro) = c;
                        p_inteiro++;
                    }
                    i++;
                } while ( (siStrLen>i) && ( ( c != SEPARATOR_CHAR ) && ( c != FINAL_CHAR ) && ( c != SEPARATOR_CRC )) ); //ASCII: 58 = ':' 59 = ';' and '|'
                (*p_inteiro) = 10; // Adding LN -> ASCII: 10 = LINE FEED

                if ( ( c == SEPARATOR_CHAR ) || ( c == SEPARATOR_CRC ) ) {
                    xPerParcedBuffer->usiValues[min_sim(xPerParcedBuffer->ucNofBytes,SIZE_UCVALUES)] = (unsigned short int)atoi( inteiro );
                    xPerParcedBuffer->ucNofBytes++;
                } 
                else if ( c == FINAL_CHAR )
                {
                    xPerParcedBuffer->ucMessageCRC8 = (unsigned char)atoi( inteiro );
                }
                
            } while ( (c != FINAL_CHAR) && (siStrLen>i) );

            if ( c == FINAL_CHAR)
                bSuccess = TRUE;
            else
                bSuccess = FALSE; /*Index overflow in the buffer*/
            }
    } else {
        /*Malformed Packet*/
        bSuccess = FALSE;
    }
    memset(buffer,0,strlen(buffer));

    return bSuccess;
}

inline short int siPosStr( char *buffer, char cValue) {
    char cTempChar[2] = "";
    cTempChar[0] = cValue; /* This step was add for performance. The command strcspn needs "" (const char *) */
    return strcspn(buffer, cTempChar);
}

inline tReceiverStates tErrorHandlerFunc( tPreParsed *xPerParcedBuffer ) {
    tReceiverStates xReturnState;
    unsigned char ucCountRetries = 0;
    INT8U error_code;
    
    
    switch (xPerParcedBuffer->ucErrorFlag)
    {
        case eBadFormatInit:
        case eCRCErrorInit:
            #ifdef DEBUG_ON
                debug(fp,"CRC Fail or BadFormat. In the Initialization.\n");
            #endif

            /* Send Nack */
            if ( bSendNack() == FALSE ) {
                /*  If all tries of send NACK fails, for now... do nothing
                    Maybe this will be used in future implementation*/
            }
            xReturnState = sWaitingConn;
            break;
        case eSemErrorInit:
            
            #ifdef DEBUG_ON
                debug(fp,"Can't post semaphore to SenderTask.\n");
            #endif

            ucCountRetries = 0;
            do
            {
                ucCountRetries++;
                OSTimeDly(100); /* 100 tick -> 100 ms -> context switch */
                error_code = OSSemPost(xSemCommInit);
            } while ((error_code != OS_ERR_NONE) && (ucCountRetries < 11));
            
            vFailSendxSemCommInit();

            break;

        case eBadFormat:
        case eCRCError:
             #ifdef DEBUG_ON
                debug(fp,"eBadFormat or eCRCError.\n");
            #endif

            if ( bSendNack() == FALSE ) {
                /*  If all tries of send NACK fails, for now... do nothing
                    Maybe this will be used in future implementation*/
            }
            xReturnState = sReceiving;
            break;
        case eNoError:
            xReturnState = sReceiving;
            #ifdef DEBUG_ON
                debug(fp,"No error. Why Handling Error?. (tErrorHandlerFunc)\n");
            #endif 
            break;
        default:
            break;
    }
    #ifdef DEBUG_ON
        debug(fp,"(tErrorHandlerFunc)\n");
    #endif     

    return xReturnState;
}

bool bSendAck( char cType, unsigned short int usiIdCommand ) {
    bool bSuccees = FALSE;
    char cBufferAck[16] = "";
    INT8U error_code;
    unsigned char ucCountRetries = 0;
    unsigned char crc = 0;

    sprintf(cBufferAck, ACK_SPRINTF, cType, usiIdCommand);
    crc = ucCrc8wInit( cBufferAck , strlen(cBufferAck));
    sprintf(cBufferAck, "%s|%hhu;", cBufferAck, crc);

    while ( ( bSuccees == FALSE ) && ( ucCountRetries < 6 ) ) {

        OSMutexPend(xTxUARTMutex, 5, &error_code); /* Wait 5 ticks = 5 ms */

        if ( error_code == OS_NO_ERR ) {
            puts(cBufferAck);
            OSMutexPost(xTxUARTMutex);  
            bSuccess = TRUE;
        } else {
            ucCountRetries++;
        }
        
    }  
    return bSuccess;
}

/* This function will try to send a NACK packet */
bool bSendNack ( void ) {
    INT8U error_code;
    bool bSuccees = FALSE;
    unsigned char ucCountRetries = 0;


    while ( ( bSuccees == FALSE ) && ( ucCountRetries < 3 ) ) {
        
        OSMutexPend(xTxUARTMutex, 20, &error_code); /* Wait 20 ticks = 20 ms */

        if ( error_code == OS_NO_ERR ) {
            puts(NACK_SEQUENCE);
            OSMutexPost(xTxUARTMutex);  
            bSuccess = TRUE;
        } else {
            ucCountRetries++;
        }
    }

    return bSuccess;
}

void vSendEthConf (void) {
    bool bSuccees = FALSE;
    char cBufferETH[128] = "";
    INT8U error_code;
    unsigned char ucCountRetries = 0;
    unsigned char crc = 0;
    unsigned short int  usiIdCMDLocal;

    usiIdCMDLocal = usiGetIdCMD();

    /* This semaphore tells if there's space available in the "big" buffer */
    OSSemPend(xSemCountBuffer128, TICKS_WAITING_FOR_SPACE, &error_code);
    if ( error_code == OS_NO_ERR ) {



    }


    if ( OSSemAccept(xSemCommInit) ) {
        eSenderMode = sDummySender;
    } else {
        /* Asking for NUC the status */
        puts(START_STATUS_SEQUENCE);
        OSTimeDlyHMSM(0, 0, 5, 0); /*Sleeps for 5 second*/
    }


    OSMutexPend(xTxUARTMutex, 200, &error_code); /* Wait 200 ticks = 200 ms */

    if ( error_code == OS_NO_ERR ) {
            puts(NACK_SEQUENCE);
            OSMutexPost(xTxUARTMutex);  
            bSuccess = TRUE;
        } else {
            ucCountRetries++;
        }


    sprintf(cBufferETH, ETH_SPRINTF, ETH_CMD, usiIdCMDLocal, xConfEth.bDHCP,
                        xConfEth.ucIP[0], xConfEth.ucIP[1], xConfEth.ucIP[2], xConfEth.ucIP[3],
                        xConfEth.ucSubNet[0], xConfEth.ucSubNet[1], xConfEth.ucSubNet[2], xConfEth.ucSubNet[3],
                        xConfEth.ucGTW[0], xConfEth.ucGTW[1], xConfEth.ucGTW[2], xConfEth.ucGTW[3],
                        xConfEth.ucDNS[0], xConfEth.ucDNS[1], xConfEth.ucDNS[2], xConfEth.ucDNS[3],
                        xConfEth.siPortPUS);
    crc = ucCrc8wInit( cBufferETH , strlen(cBufferETH));
    sprintf(cBufferETH, "%s|%hhu;", cBufferETH, crc );

}

unsigned short int usiGetIdCMD ( void ) {

    if ( usiIdCMD > 65534 )
        usiIdCMD = 1;
    else
        usiIdCMD++;

    return usiIdCMD;
}