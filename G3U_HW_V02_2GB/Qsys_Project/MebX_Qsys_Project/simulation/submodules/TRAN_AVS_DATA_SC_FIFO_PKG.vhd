-- TODO Atualizar valores das contantes
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package tran_avs_sc_fifo_pkg is

	constant TRAN_AVS_SC_FIFO_WIDTH     : natural := 36;
	constant TRAN_AVS_SC_FIFO_USEDW     : natural := 8;
	constant TRAN_RX_AVS_SC_FIFO_LENGTH : natural := 256;
	constant TRAN_TX_AVS_SC_FIFO_LENGTH : natural := 256;

	type tran_avs_sc_fifo_data_type is record
		spacewire_flag_3 : std_logic;
		spacewire_data_3 : std_logic_vector(7 downto 0);
		spacewire_flag_2 : std_logic;
		spacewire_data_2 : std_logic_vector(7 downto 0);
		spacewire_flag_1 : std_logic;
		spacewire_data_1 : std_logic_vector(7 downto 0);
		spacewire_flag_0 : std_logic;
		spacewire_data_0 : std_logic_vector(7 downto 0);
	end record tran_avs_sc_fifo_data_type;

	-- RX : fifo --> avs  (SpW --> Simucam);
	-- TX : avs  --> fifo (Simucam --> SpW);

	type tran_write_inputs_avs_sc_fifo_type is record
		data  : std_logic_vector((TRAN_AVS_SC_FIFO_WIDTH - 1) downto 0);
		sclr  : std_logic;
		wrreq : std_logic;
	end record tran_write_inputs_avs_sc_fifo_type;

	type tran_write_outputs_avs_sc_fifo_type is record
		full : std_logic;
	end record tran_write_outputs_avs_sc_fifo_type;

	type tran_read_inputs_avs_sc_fifo_type is record
		sclr  : std_logic;
		rdreq : std_logic;
	end record tran_read_inputs_avs_sc_fifo_type;

	type tran_read_outputs_avs_sc_fifo_type is record
		empty : std_logic;
		q     : std_logic_vector((TRAN_AVS_SC_FIFO_WIDTH - 1) downto 0);
		usedw : std_logic_vector((TRAN_AVS_SC_FIFO_USEDW - 1) downto 0);
	end record tran_read_outputs_avs_sc_fifo_type;

	type tran_fifo_intputs_avs_sc_fifo_type is record
		write : tran_write_inputs_avs_sc_fifo_type;
		read  : tran_read_inputs_avs_sc_fifo_type;
	end record tran_fifo_intputs_avs_sc_fifo_type;

	type tran_fifo_outputs_avs_sc_fifo_type is record
		write : tran_write_outputs_avs_sc_fifo_type;
		read  : tran_read_outputs_avs_sc_fifo_type;
	end record tran_fifo_outputs_avs_sc_fifo_type;

end package tran_avs_sc_fifo_pkg;