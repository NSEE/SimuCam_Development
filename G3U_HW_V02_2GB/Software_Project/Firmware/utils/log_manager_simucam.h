/*
 * logger_manager_simucam.h
 *
 *  Created on: 21/10/2018
 *      Author: TiagoLow
 */

#ifndef LOGGER_MANAGER_SIMUCAM_H_
#define LOGGER_MANAGER_SIMUCAM_H_


#include "../simucam_defs_vars_structs_includes.h"


bool bLogWriteSDCard ( const char * cDataIn, const char * cFilename );
bool bLogWriteETH ( const char * cDataIn );


#endif /* LOGGER_MANAGER_SIMUCAM_H_ */