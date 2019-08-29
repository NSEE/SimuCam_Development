/*
 * meb.c
 *
 *  Created on: 11/01/2019
 *      Author: Tiago-Low
 */


#include "meb.h"

void vSimucamStructureInit( TSimucam_MEB *xMeb ) {
    // LoadTypeOfFeeSDCard();
    // todo: Load from SDCard for now is Hardcoded to Normal FEE
    xMeb->eType = sNormalFEE;
    
    /* Simucam start in the Meb Config Mode */
    xMeb->eMode = sMebInit;

    /* Load EP */
    vLoadDefaultEPValue( xMeb );
    /* Load RT */
    vLoadDefaultRTValue( xMeb );
    /* Load SyncSource */
    vLoadDefaultSyncSource( xMeb );
    /* Load Default Config for Auto Reset Mode */
    vLoadDefaultAutoResetSync( xMeb );

    /* todo: Change for change functions */
    xMeb->fLineTransferTime = 0;
    xMeb->fPixelTransferTime = 0;
    xMeb->usiDelaySyncReset = 500; /* milliseconds */

    /* Reseting swap memory mechanism */
    xMeb->ucActualDDR = 0;
    xMeb->ucNextDDR = 1;

    xMeb->xFeeControl.pActualMem = &xMeb->ucActualDDR;
    xMeb->xDataControl.pNextMem = &xMeb->ucNextDDR;

    /* Verify if if a Fast or Normal */
    if ( xMeb->eType == sNormalFEE ) {
        /* Are Normal Fee instances */
    	vNFeeControlInit( &xMeb->xFeeControl );
        vDataControllerInit( &xMeb->xDataControl, &xMeb->xFeeControl );

    } else {
        /* Are Fast Fee instances */
        /* todo: Not in use yet */
    }

    /* At this point all structures that manage the aplication of Simucam and FEE are initialized, the tasks could start now */
}

/* Only in MEB_CONFIG */
/* Load Default value of EP - Exposure period [NFEESIM-UR-447] */
void vLoadDefaultEPValue( TSimucam_MEB *xMeb ) {
    //bGetEPSDCard();
    //todo: For now is hardcoded
    xMeb->ucEP = 25;
}

/* Only in MEB_CONFIG */
/* Change the active value of EP - Exposure period [NFEESIM-UR-447] */
void vChangeEPValue( TSimucam_MEB *xMeb, float ucValue ) {
    xMeb->ucEP = ucValue;
}

/* Only in MEB_CONFIG */
/* Change the default value of EP - Exposure period [NFEESIM-UR-447] */
void vChangeDefaultEPValue( TSimucam_MEB *xMeb, float ucValue ) {
    //bSaveEPSDCard(ucValue);
}

/* Only in MEB_CONFIG */
/* Load Default value of EP - Exposure period [NFEESIM-UR-447] */
void vLoadDefaultRTValue( TSimucam_MEB *xMeb ) {
    //bGetEPSDCard();
    //todo: For now is hardcoded
    xMeb->ucRT = 3.9;
}

/* Only in MEB_CONFIG */
/* Change the active value of RT - CCD readout time [NFEESIM-UR-447] */
void vChangeRTValue( TSimucam_MEB *xMeb, float ucValue ) {
    xMeb->ucRT = ucValue;
}

/* Only in MEB_CONFIG */
/* Change the default value of RT - CCD readout time [NFEESIM-UR-447] */
void vChangeDefaultRTValue( TSimucam_MEB *xMeb, float ucValue ) {
    //bSaveRTSDCard(ucValue);
}

/* Only in MEB_CONFIG */
/* Load Default Config Sync - Internal or external */
void vLoadDefaultSyncSource( TSimucam_MEB *xMeb ) {
    //bGetSyncSourceSDCard();
    //todo: For now is hardcoded
    xMeb->eSync = sInternal;
}

/* Only in MEB_CONFIG */
/* Change the Active Config Sync - Internal or external */
void vChangeSyncSource( TSimucam_MEB *xMeb, tSimucamSync eSource ) {
    xMeb->eSync = eSource;
}

/* Only in MEB_CONFIG */
/* Change the Default Config Sync - Internal or external */
void vChangeDefaultSyncSource( TSimucam_MEB *xMeb, tSimucamSync eSource ) {
    //bSaveSyncSourceSDCard(eSource);
}


/* Only in MEB_CONFIG */
/* Load Default Config for AutoResetSync */
void vLoadDefaultAutoResetSync( TSimucam_MEB *xMeb ) {
    //bGetAutoResetSyncSDCard();
    //todo: For now is hardcoded
    xMeb->bAutoResetSyncMode = TRUE;
}

/* Only in MEB_CONFIG */
/* Change the Config for AutoResetSync*/
void vChangeAutoResetSync( TSimucam_MEB *xMeb, bool bAutoReset ) {
    xMeb->bAutoResetSyncMode = bAutoReset;
}

/* Only in MEB_CONFIG */
/* Change the Default Config for AutoResetSync */
void vChangeDefaultAutoResetSync( TSimucam_MEB *xMeb, bool bAutoReset ) {
    //bSaveAutoResetSyncSDCard(bAutoReset);
}


/* Only in MEB_RUNNING */
/* Synchronization Reset [bndky] */
void vSyncReset( unsigned short int ufSynchDelayL, TNFee_Control *pxFeeCP ) {
    INT8U iErrorCodeL = 0;
    int i = 0;

    /* Send message to task queue */
    iErrorCodeL = OSQPost(xQueueSyncReset, ufSynchDelayL);
    if (iErrorCodeL == OS_ERR_NONE){

        /* Resume sync reset task */
        iErrorCodeL = OSTaskResume(SYNC_RESET_HIGH_PRIO);

        if (iErrorCodeL == OS_NO_ERR){
            /* Put all NFEE in Stand-by mode, if not in Config mode */

            for( i = 0; i < N_OF_NFEE; i++){
                    if ( (*pxFeeCP->pbEnabledNFEEs[i]) == TRUE ) {
                        bSendCmdQToNFeeInst_Prio( i, M_FEE_STANDBY, 0, i  );
                    }
                }

        }
    }
    //TODO error condition?
}
