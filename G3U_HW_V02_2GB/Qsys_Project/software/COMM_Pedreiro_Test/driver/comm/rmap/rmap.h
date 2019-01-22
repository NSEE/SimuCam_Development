/*
 * rmap.h
 *
 *  Created on: 09/01/2019
 *      Author: rfranca
 */

#ifndef RMAP_H_
#define RMAP_H_

#include "../comm.h"

//! [constants definition]
// address
// bit masks
//! [constants definition]

//! [public module structs definition]
typedef struct RmapCodecConfig {
	alt_u8 ucKey;
	alt_u8 ucLogicalAddress;
} TRmapCodecConfig;
typedef struct RmapCodecStatus {
	bool bCommandReceived;
	bool bWriteRequested;
	bool bWriteAuthorized;
	bool bReadRequested;
	bool bReadAuthorized;
	bool bReplySended;
	bool bDiscardedPackage;
} TRmapCodecStatus;
typedef struct RmapCodecError {
	bool bEarlyEop;
	bool bEep;
	bool bHeaderCRC;
	bool bUnusedPacketType;
	bool bInvalidCommandCode;
	bool bTooMuchData;
	bool bInvalidDataCrc;
} TRmapCodecError;
typedef struct RmapIrqControl {
	bool bWriteCmdEn;
} TRmapIrqControl;
typedef struct RmapIrqFlag {
	bool bWriteCmdFlag;
} TRmapIrqFlag;
typedef struct RmapMemConfigArea {
	alt_u32 uliCcdSeq1Config;
	alt_u32 uliCcdSeq2Config;
	alt_u32 uliSpwPacket1Config;
	alt_u32 uliSpwPacket2Config;
	alt_u32 uliCcd1Windowing1Config;
	alt_u32 uliCcd1Windowing2Config;
	alt_u32 uliCcd2Windowing1Config;
	alt_u32 uliCcd2Windowing2Config;
	alt_u32 uliCcd3Windowing1Config;
	alt_u32 uliCcd3Windowing2Config;
	alt_u32 uliCcd4Windowing1Config;
	alt_u32 uliCcd4Windowing2Config;
	alt_u32 uliOperationModeConfig;
	alt_u32 uliDacControl;
	alt_u32 uliClockSourceControl;
} TRmapMemConfigArea;
typedef struct RmapMemConfigStat {
	alt_u32 uliLastWriteAddress;
	alt_u32 uliLastReadAddress;
} TRmapMemConfigStat;
typedef struct RmapMemHKArea {
	alt_u16 usiHkCcd1VodE;
	alt_u16 usiHkCcd1VodF;
	alt_u16 usiHkCcd1VrdMon;
	alt_u16 usiHkCcd2VodE;
	alt_u16 usiHkCcd2VodF;
	alt_u16 usiHkCcd2VrdMon;
	alt_u16 usiHkCcd3VodE;
	alt_u16 usiHkCcd3VodF;
	alt_u16 usiHkCcd3VrdMon;
	alt_u16 usiHkCcd4VodE;
	alt_u16 usiHkCcd4VodF;
	alt_u16 usiHkCcd4VrdMon;
	alt_u16 usiHkVccd;
	alt_u16 usiHkVrclk;
	alt_u16 usiHkViclk;
	alt_u16 usiHkVrclkLow;
	alt_u16 usiHk5vbPos;
	alt_u16 usiHk5vbNeg;
	alt_u16 usiHk33vbPos;
	alt_u16 usiHk25vaPos;
	alt_u16 usiHk33vdPos;
	alt_u16 usiHk25vdPos;
	alt_u16 usiHk15vdPos;
	alt_u16 usiHk5vref;
	alt_u16 usiHkVccdPosRaw;
	alt_u16 usiHkVclkPosRaw;
	alt_u16 usiHkVan1PosRaw;
	alt_u16 usiHkVan3NegRaw;
	alt_u16 usiHkVan2PosRaw;
	alt_u16 usiHkVdigFpgaRaw;
	alt_u16 usiHkVdigSpwRaw;
	alt_u16 usiHkViclkLow;
	alt_u16 usiHkAdcTempAE;
	alt_u16 usiHkAdcTempAF;
	alt_u16 usiHkCcd1Temp;
	alt_u16 usiHkCcd2Temp;
	alt_u16 usiHkCcd3Temp;
	alt_u16 usiHkCcd4Temp;
	alt_u16 usiHkWp605Spare;
	alt_u16 usiLowresPrtA0;
	alt_u16 usiLowresPrtA1;
	alt_u16 usiLowresPrtA2;
	alt_u16 usiLowresPrtA3;
	alt_u16 usiLowresPrtA4;
	alt_u16 usiLowresPrtA5;
	alt_u16 usiLowresPrtA6;
	alt_u16 usiLowresPrtA7;
	alt_u16 usiLowresPrtA8;
	alt_u16 usiLowresPrtA9;
	alt_u16 usiLowresPrtA10;
	alt_u16 usiLowresPrtA11;
	alt_u16 usiLowresPrtA12;
	alt_u16 usiLowresPrtA13;
	alt_u16 usiLowresPrtA14;
	alt_u16 usiLowresPrtA15;
	alt_u16 usiSelHiresPrt0;
	alt_u16 usiSelHiresPrt1;
	alt_u16 usiSelHiresPrt2;
	alt_u16 usiSelHiresPrt3;
	alt_u16 usiSelHiresPrt4;
	alt_u16 usiSelHiresPrt5;
	alt_u16 usiSelHiresPrt6;
	alt_u16 usiSelHiresPrt7;
	alt_u16 usiZeroHiresAmp;
} TRmapMemHKArea;
typedef struct RmapChannel {
	alt_u32 *puliRmapChAddr;
	TRmapCodecConfig xRmapCodecConfig;
	TRmapCodecStatus xRmapCodecStatus;
	TRmapCodecError xRmapCodecError;
	TRmapIrqControl xRmapIrqControl;
	TRmapIrqFlag xRmapIrqFlag;
	TRmapMemConfigArea xRmapMemConfigArea;
	TRmapMemConfigStat xRmapMemConfigStat;
	TRmapMemHKArea xRmapMemHKArea;
} TRmapChannel;
//! [public module structs definition]

//! [public function prototypes]
void vRmapCh1HandleIrq(void* pvContext);
void vRmapCh2HandleIrq(void* pvContext);
void vRmapCh3HandleIrq(void* pvContext);
void vRmapCh4HandleIrq(void* pvContext);
void vRmapCh5HandleIrq(void* pvContext);
void vRmapCh6HandleIrq(void* pvContext);
void vRmapCh7HandleIrq(void* pvContext);
void vRmapCh8HandleIrq(void* pvContext);

void vRmapCh1IrqFlagClrWriteCmd(void);
void vRmapCh2IrqFlagClrWriteCmd(void);
void vRmapCh3IrqFlagClrWriteCmd(void);
void vRmapCh4IrqFlagClrWriteCmd(void);
void vRmapCh5IrqFlagClrWriteCmd(void);
void vRmapCh6IrqFlagClrWriteCmd(void);
void vRmapCh7IrqFlagClrWriteCmd(void);
void vRmapCh8IrqFlagClrWriteCmd(void);

bool bRmapCh1IrqFlagWriteCmd(void);
bool bRmapCh2IrqFlagWriteCmd(void);
bool bRmapCh3IrqFlagWriteCmd(void);
bool bRmapCh4IrqFlagWriteCmd(void);
bool bRmapCh5IrqFlagWriteCmd(void);
bool bRmapCh6IrqFlagWriteCmd(void);
bool bRmapCh7IrqFlagWriteCmd(void);
bool bRmapCh8IrqFlagWriteCmd(void);

alt_u32 uliRmapCh1WriteCmdAddress(void);
alt_u32 uliRmapCh2WriteCmdAddress(void);
alt_u32 uliRmapCh3WriteCmdAddress(void);
alt_u32 uliRmapCh4WriteCmdAddress(void);
alt_u32 uliRmapCh5WriteCmdAddress(void);
alt_u32 uliRmapCh6WriteCmdAddress(void);
alt_u32 uliRmapCh7WriteCmdAddress(void);
alt_u32 uliRmapCh8WriteCmdAddress(void);

void vRmapInitIrq(alt_u8 ucCommCh);

// Get functions -> get data from hardware to channel variable
// Set functions -> set data from channel variable to hardware

bool bRmapSetIrqControl(TRmapChannel *pxRmapCh);
bool bRmapGetIrqControl(TRmapChannel *pxRmapCh);
bool bRmapGetIrqFlags(TRmapChannel *pxRmapCh);

bool bRmapSetCodecConfig(TRmapChannel *pxRmapCh);
bool bRmapGetCodecConfig(TRmapChannel *pxRmapCh);

bool bRmapGetCodecStatus(TRmapChannel *pxRmapCh);

bool bRmapGetCodecError(TRmapChannel *pxRmapCh);

bool bRmapSetMemConfigArea(TRmapChannel *pxRmapCh);
bool bRmapGetMemConfigArea(TRmapChannel *pxRmapCh);

bool bRmapGetMemConfigStat(TRmapChannel *pxRmapCh);

bool bRmapSetRmapMemHKArea(TRmapChannel *pxRmapCh);
bool bRmapGetRmapMemHKArea(TRmapChannel *pxRmapCh);

bool bRmapInitCh(TRmapChannel *pxRmapCh, alt_u8 ucCommCh);
//! [public function prototypes]

//! [data memory public global variables - use extern]
//! [data memory public global variables - use extern]

//! [flags]
//! [flags]

//! [program memory public global variables - use extern]
//! [program memory public global variables - use extern]

//! [macros]
//! [macros]

#endif /* RMAP_H_ */
