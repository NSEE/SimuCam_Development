-- megafunction wizard: %ALTIOBUF%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altiobuf_bidir 

-- ============================================================
-- File Name: io_inout_39b.vhd
-- Megafunction Name(s):
-- 			altiobuf_bidir
--
-- Simulation Library Files(s):
-- 			stratixiv
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 16.1.0 Build 196 10/24/2016 SJ Standard Edition
-- ************************************************************


--Copyright (C) 2016  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel MegaCore Function License Agreement, or other 
--applicable license agreement, including, without limitation, 
--that your use is for the sole purpose of programming logic 
--devices manufactured by Intel and sold by Intel or its 
--authorized distributors.  Please refer to the applicable 
--agreement for further details.


--altiobuf_bidir CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Stratix IV" ENABLE_BUS_HOLD="FALSE" NUMBER_OF_CHANNELS=39 OPEN_DRAIN_OUTPUT="FALSE" USE_DIFFERENTIAL_MODE="FALSE" USE_DYNAMIC_TERMINATION_CONTROL="FALSE" USE_TERMINATION_CONTROL="FALSE" datain dataio dataout oe
--VERSION_BEGIN 16.1 cbx_altiobuf_bidir 2016:10:24:15:04:16:SJ cbx_mgl 2016:10:24:15:05:03:SJ cbx_stratixiii 2016:10:24:15:04:16:SJ cbx_stratixv 2016:10:24:15:04:16:SJ  VERSION_END

 LIBRARY stratixiv;
 USE stratixiv.all;

--synthesis_resources = stratixiv_io_ibuf 39 stratixiv_io_obuf 39 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  io_inout_39b_iobuf_bidir_ruo IS 
	 PORT 
	 ( 
		 datain	:	IN  STD_LOGIC_VECTOR (38 DOWNTO 0);
		 dataio	:	INOUT  STD_LOGIC_VECTOR (38 DOWNTO 0);
		 dataout	:	OUT  STD_LOGIC_VECTOR (38 DOWNTO 0);
		 oe	:	IN  STD_LOGIC_VECTOR (38 DOWNTO 0)
	 ); 
 END io_inout_39b_iobuf_bidir_ruo;

 ARCHITECTURE RTL OF io_inout_39b_iobuf_bidir_ruo IS

	 SIGNAL  wire_ibufa_i	:	STD_LOGIC_VECTOR (38 DOWNTO 0);
	 SIGNAL  wire_ibufa_o	:	STD_LOGIC_VECTOR (38 DOWNTO 0);
	 SIGNAL  wire_obufa_i	:	STD_LOGIC_VECTOR (38 DOWNTO 0);
	 SIGNAL  wire_obufa_o	:	STD_LOGIC_VECTOR (38 DOWNTO 0);
	 SIGNAL  wire_obufa_oe	:	STD_LOGIC_VECTOR (38 DOWNTO 0);
	 COMPONENT  stratixiv_io_ibuf
	 GENERIC 
	 (
		bus_hold	:	STRING := "false";
		differential_mode	:	STRING := "false";
		simulate_z_as	:	STRING := "Z";
		lpm_type	:	STRING := "stratixiv_io_ibuf"
	 );
	 PORT
	 ( 
		dynamicterminationcontrol	:	IN STD_LOGIC := '0';
		i	:	IN STD_LOGIC := '0';
		ibar	:	IN STD_LOGIC := '0';
		o	:	OUT STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  stratixiv_io_obuf
	 GENERIC 
	 (
		bus_hold	:	STRING := "false";
		open_drain_output	:	STRING := "false";
		shift_series_termination_control	:	STRING := "false";
		sim_dynamic_termination_control_is_connected	:	STRING := "false";
		lpm_type	:	STRING := "stratixiv_io_obuf"
	 );
	 PORT
	 ( 
		dynamicterminationcontrol	:	IN STD_LOGIC := '0';
		i	:	IN STD_LOGIC := '0';
		o	:	OUT STD_LOGIC;
		obar	:	OUT STD_LOGIC;
		oe	:	IN STD_LOGIC := '1';
		parallelterminationcontrol	:	IN STD_LOGIC_VECTOR(13 DOWNTO 0) := (OTHERS => '0');
		seriesterminationcontrol	:	IN STD_LOGIC_VECTOR(13 DOWNTO 0) := (OTHERS => '0')
	 ); 
	 END COMPONENT;
 BEGIN

	dataio <= wire_obufa_o;
	dataout <= wire_ibufa_o;
	wire_ibufa_i <= dataio;
	loop0 : FOR i IN 0 TO 38 GENERATE 
	  ibufa :  stratixiv_io_ibuf
	  GENERIC MAP (
		bus_hold => "false",
		differential_mode => "false"
	  )
	  PORT MAP ( 
		i => wire_ibufa_i(i),
		o => wire_ibufa_o(i)
	  );
	END GENERATE loop0;
	wire_obufa_i <= datain;
	wire_obufa_oe <= oe;
	loop1 : FOR i IN 0 TO 38 GENERATE 
	  obufa :  stratixiv_io_obuf
	  GENERIC MAP (
		bus_hold => "false",
		open_drain_output => "false"
	  )
	  PORT MAP ( 
		i => wire_obufa_i(i),
		o => wire_obufa_o(i),
		oe => wire_obufa_oe(i)
	  );
	END GENERATE loop1;

 END RTL; --io_inout_39b_iobuf_bidir_ruo
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY io_inout_39b IS
	PORT
	(
		datain		: IN STD_LOGIC_VECTOR (38 DOWNTO 0);
		oe		: IN STD_LOGIC_VECTOR (38 DOWNTO 0);
		dataio		: INOUT STD_LOGIC_VECTOR (38 DOWNTO 0);
		dataout		: OUT STD_LOGIC_VECTOR (38 DOWNTO 0)
	);
END io_inout_39b;


ARCHITECTURE RTL OF io_inout_39b IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (38 DOWNTO 0);



	COMPONENT io_inout_39b_iobuf_bidir_ruo
	PORT (
			datain	: IN STD_LOGIC_VECTOR (38 DOWNTO 0);
			oe	: IN STD_LOGIC_VECTOR (38 DOWNTO 0);
			dataout	: OUT STD_LOGIC_VECTOR (38 DOWNTO 0);
			dataio	: INOUT STD_LOGIC_VECTOR (38 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	dataout    <= sub_wire0(38 DOWNTO 0);

	io_inout_39b_iobuf_bidir_ruo_component : io_inout_39b_iobuf_bidir_ruo
	PORT MAP (
		datain => datain,
		oe => oe,
		dataout => sub_wire0,
		dataio => dataio
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
-- Retrieval info: CONSTANT: enable_bus_hold STRING "FALSE"
-- Retrieval info: CONSTANT: left_shift_series_termination_control STRING "FALSE"
-- Retrieval info: CONSTANT: number_of_channels NUMERIC "39"
-- Retrieval info: CONSTANT: open_drain_output STRING "FALSE"
-- Retrieval info: CONSTANT: use_differential_mode STRING "FALSE"
-- Retrieval info: CONSTANT: use_dynamic_termination_control STRING "FALSE"
-- Retrieval info: CONSTANT: use_termination_control STRING "FALSE"
-- Retrieval info: USED_PORT: datain 0 0 39 0 INPUT NODEFVAL "datain[38..0]"
-- Retrieval info: USED_PORT: dataio 0 0 39 0 BIDIR NODEFVAL "dataio[38..0]"
-- Retrieval info: USED_PORT: dataout 0 0 39 0 OUTPUT NODEFVAL "dataout[38..0]"
-- Retrieval info: USED_PORT: oe 0 0 39 0 INPUT NODEFVAL "oe[38..0]"
-- Retrieval info: CONNECT: @datain 0 0 39 0 datain 0 0 39 0
-- Retrieval info: CONNECT: @oe 0 0 39 0 oe 0 0 39 0
-- Retrieval info: CONNECT: dataio 0 0 39 0 @dataio 0 0 39 0
-- Retrieval info: CONNECT: dataout 0 0 39 0 @dataout 0 0 39 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL io_inout_39b.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL io_inout_39b.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL io_inout_39b.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL io_inout_39b.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL io_inout_39b_inst.vhd TRUE
-- Retrieval info: LIB_FILE: stratixiv
