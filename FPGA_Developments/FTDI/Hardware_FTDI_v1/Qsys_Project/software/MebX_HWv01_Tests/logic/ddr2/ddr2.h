 /**
  * @file   ddr2.h
  * @Author Rodrigo França (rodrigo.franca@maua.br | rodmarfra@gmail.com)
  * @date   Maio, 2017
  * @brief  Header File para testes e acesso as memórias DDR2 da DE4
  *
  * Exemplo de utilização:
  *  
  *  
  *
  */

#ifndef DDR2_H_
#define DDR2_H_

/* includes */
#include "../../utils/meb_includes.h"
#include "../../utils/util.h"
#include "system.h"
#include "../../driver/i2c/i2c.h"

/* address */
#define DDR2_M1_MEMORY_BASE M1_DDR2_MEMORY_BASE
#define DDR2_M1_EEPROM_I2C_SCL_BASE M1_DDR2_I2C_SCL_BASE
#define DDR2_M1_EEPROM_I2C_SDA_BASE M1_DDR2_I2C_SDA_BASE
#define DDR2_M2_MEMORY_BASE M2_DDR2_MEMORY_BASE
#define DDR2_M2_EEPROM_I2C_SCL_BASE M2_DDR2_I2C_SCL_BASE
#define DDR2_M2_EEPROM_I2C_SDA_BASE M2_DDR2_I2C_SDA_BASE

/* defines */
#define DDR2_M1_ID 0x01
#define DDR2_M1_MEMORY_SIZE M1_DDR2_MEMORY_SPAN
#define DDR2_M2_ID 0x02
#define DDR2_M2_MEMORY_SIZE M2_DDR2_MEMORY_SPAN
#define DDR2_EEPROM_I2C_ADDRESS 0xA0
#define DDR2_VERBOSE TRUE
#define DDR2_NO_VERBOSE FALSE
#define DDR2_TIME TRUE
#define DDR2_NO_TIME FALSE

/* prototype */
bool DDR2_EEPROM_TEST(alt_u8 MemoryId);
bool DDR2_EEPROM_DUMP(alt_u8 MemoryId);
bool DDR2_MEMORY_WRITE_TEST(alt_u8 MemoryId);
bool DDR2_MEMORY_READ_TEST(alt_u8 MemoryId);
bool DDR2_MEMORY_RANDOM_WRITE_TEST(alt_u8 MemoryId, bool bVerbose, bool bTime);
bool DDR2_MEMORY_RANDOM_READ_TEST(alt_u8 MemoryId, bool bVerbose, bool bTime);

#endif /* DDR2_H_ */