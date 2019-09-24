--	DE4-LEDS:
--		ON -> '0'
--		OFF -> '1'
--		D1	LED1	2.5-V	PIN_V28
--		D2	LED2	2.5-V	PIN_W28
--		D3	LED3	2.5-V	PIN_R29
--		D4	LED4	2.5-V	PIN_P29
--		D5	LED5	2.5-V	PIN_N29
--		D6	LED6	2.5-V	PIN_M29
--		D7	LED7	2.5-V	PIN_M30
--		D8	LED8	2.5-V	PIN_N30
--		
--	DE4-7SEGS:
--		ON -> '0'
--		OFF -> '1'
--		HEX1	SEG1_D0	2.5-V	PIN_E31
--		HEX1	SEG1_D1	2.5-V	PIN_F31
--		HEX1	SEG1_D2	2.5-V	PIN_G31
--		HEX1	SEG1_D3	2.5-V	PIN_C34
--		HEX1	SEG1_D4	2.5-V	PIN_C33
--		HEX1	SEG1_D5	2.5-V	PIN_D33
--		HEX1	SEG1_D6	2.5-V	PIN_D34
--		HEX1	SEG1_DP	2.5-V	PIN_AL35
--		HEX0	SEG0_D0	2.5-V	PIN_L34
--		HEX0	SEG0_D1	2.5-V	PIN_M34	
--		HEX0	SEG0_D2	2.5-V	PIN_M33
--		HEX0	SEG0_D3	2.5-V	PIN_H31
--		HEX0	SEG0_D4	2.5-V	PIN_J33
--		HEX0	SEG0_D5	2.5-V	PIN_L35
--		HEX0	SEG0_D6	2.5-V	PIN_K32
--		HEX0	SEG0_DP	2.5-V	PIN_AL34
--	
--	          0
--	       -------
--	      |       |
--	    5 |       | 1
--	      |   6   |
--	       -------
--	      |       |
--	    4 |       | 2
--	      |       |
--	       -------  o
--	          3     DP
--	

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.ALL;
ENTITY SEVEN_SEG_DPS IS
	PORT(
		CLK           : IN  STD_LOGIC;
		RST           : IN  STD_LOGIC;
		SEG_ENABLE    : IN  STD_LOGIC;
		SEG_BCD_IN    : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		SEG_DBITS_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ENTITY SEVEN_SEG_DPS;

ARCHITECTURE BEHAVIOUR OF SEVEN_SEG_DPS IS

	CONSTANT DSP_0 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "11000000";
	CONSTANT DSP_1 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "11111001";
	CONSTANT DSP_2 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10100100";
	CONSTANT DSP_3 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10110000";
	CONSTANT DSP_4 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10011001";
	CONSTANT DSP_5 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10010010";
	CONSTANT DSP_6 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10000010";
	CONSTANT DSP_7 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "11111000";
	CONSTANT DSP_8 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10000000";
	CONSTANT DSP_9 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10010000";
	CONSTANT DSP_A : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10001000";
	CONSTANT DSP_B : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10000011";
	CONSTANT DSP_C : STD_LOGIC_VECTOR(7 DOWNTO 0) := "11000110";
	CONSTANT DSP_D : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10100001";
	CONSTANT DSP_E : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10000110";
	CONSTANT DSP_F : STD_LOGIC_VECTOR(7 DOWNTO 0) := "10001110";

BEGIN

	GLOBAL : PROCESS(CLK, RST) IS
	BEGIN
		IF (RST = '1') THEN
			SEG_DBITS_OUT <= (OTHERS => '1');
		ELSIF (RISING_EDGE(CLK)) THEN
			IF (SEG_ENABLE = '1') THEN
				CASE SEG_BCD_IN IS
					WHEN "0000" =>
						SEG_DBITS_OUT <= DSP_0;
					WHEN "0001" =>
						SEG_DBITS_OUT <= DSP_1;
					WHEN "0010" =>
						SEG_DBITS_OUT <= DSP_2;
					WHEN "0011" =>
						SEG_DBITS_OUT <= DSP_3;
					WHEN "0100" =>
						SEG_DBITS_OUT <= DSP_4;
					WHEN "0101" =>
						SEG_DBITS_OUT <= DSP_5;
					WHEN "0110" =>
						SEG_DBITS_OUT <= DSP_6;
					WHEN "0111" =>
						SEG_DBITS_OUT <= DSP_7;
					WHEN "1000" =>
						SEG_DBITS_OUT <= DSP_8;
					WHEN "1001" =>
						SEG_DBITS_OUT <= DSP_9;
					WHEN "1010" =>
						SEG_DBITS_OUT <= DSP_A;
					WHEN "1011" =>
						SEG_DBITS_OUT <= DSP_B;
					WHEN "1100" =>
						SEG_DBITS_OUT <= DSP_C;
					WHEN "1101" =>
						SEG_DBITS_OUT <= DSP_D;
					WHEN "1110" =>
						SEG_DBITS_OUT <= DSP_E;
					WHEN "1111" =>
						SEG_DBITS_OUT <= DSP_F;
					WHEN OTHERS => NULL;
				END CASE;
			END IF;
		END IF;
	END PROCESS GLOBAL;

END BEHAVIOUR;
