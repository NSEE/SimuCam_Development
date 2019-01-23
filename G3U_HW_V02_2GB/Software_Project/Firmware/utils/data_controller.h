/*
 * data_controller.h
 *
 *  Created on: 22/01/2019
 *      Author: Tiago-note
 */

#ifndef DATA_CONTROLLER_H_
#define DATA_CONTROLLER_H_


#include "../simucam_definitions.h"
#include "fee_controller.h"
#include "fee.h"
#include "ccd.h"

typedef struct NFee_CtrlReadOnly {
	bool	bUpdateComplete;
	TNFee   *xNfee[N_OF_NFEE];               /* All instances of control for the NFEE */
	bool    *pbEnabledNFEEs[N_OF_NFEE];     /* Which are the NFEEs that are enabled */
	unsigned char *ucTimeCode;               /* Timecode [NFEESIM-UR-488]*/
} TNFee_CtrlReadOnly;

/* Data Controller for a Simucam of NFEEs.
 * The data controler is responsible for prepare the Ram memory for the N+1 master sync Simulation */
typedef struct NData_Control {
	unsigned char xInsgestionSchedule[N_OF_NFEE];
	OS_EVENT *xSemDmaAccess[N_OF_NFEE];
	TNFee_CtrlReadOnly xReadOnlyFeeControl;
	bool bUpdateComplete;
} TNData_Control; /* Read Only Structure */

void vDataControllerInit( TNData_Control *xDataControlL, TNFee_Control *xNfeeCOntrolL );

#endif /* DATA_CONTROLLER_H_ */
