--=============================================================================
--! @file sync_gen_pkg.vhd
--=============================================================================
--! Standard library
library IEEE;
--! Standard packages
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--! Specific packages
--use work.xxx.all;
-------------------------------------------------------------------------------
-- --
-- Instituto Mau� de Tecnologia, N�cleo de Sistemas Eletr�nicos Embarcados --
-- Plato Project --
-- --
-------------------------------------------------------------------------------
--
-- unit name: SYNC Generator Package (sync_gen_pkg)
--
--! @brief 
--
--! @author Rodrigo Fran�a (rodrigo.franca@maua.br)
--
--! @date 06\02\2018
--
--! @version v1.0
--
--! @details
--!
--! <b>Dependencies:</b>\n
--! None
--!
--! <b>References:</b>\n
--!
--! <b>Modified by:</b>\n
--! Author: Cassio Berni
-------------------------------------------------------------------------------
--! \n\n<b>Last changes:</b>\n
--! 29\03\2018 RF File Creation\n
--! 08\11\2018 CB Module optimization & revised\n
--
-------------------------------------------------------------------------------
--! @todo <next thing to do> \n
--! <another thing to do> \n
--
-------------------------------------------------------------------------------

--============================================================================
--! Package declaration for SYNC Generator Package
--============================================================================
package sync_syncgen_pkg is

	-- others
	constant c_SYNC_COUNTER_MAX_WIDTH  : integer          := 64;
	
	constant c_SYNC_COUNTER_WIDTH      : integer          := 32;
	constant c_SYNC_PULSE_NUMBER_WIDTH : integer          :=  8;
	constant c_SYNC_POLARITY           : std_logic_vector := '1';

	-- general

	-- syncgen

	type t_sync_syncgen_control is record
		start		: std_logic;
		reset		: std_logic;
		one_shot	: std_logic;
		err_inj		: std_logic;
	end record t_sync_syncgen_control;

	type t_sync_syncgen_flags is record
		running : std_logic;
		stopped : std_logic;
	end record t_sync_syncgen_flags;

	type t_sync_syncgen_error is record
		dummy : std_logic;
	end record t_sync_syncgen_error;

	type t_sync_syncgen_configs is record
		pulse_period : std_logic_vector((c_SYNC_COUNTER_WIDTH - 1) downto 0);
		pulse_number : std_logic_vector((c_SYNC_PULSE_NUMBER_WIDTH - 1) downto 0);
		master_width : std_logic_vector((c_SYNC_COUNTER_WIDTH - 1) downto 0);
		pulse_width  : std_logic_vector((c_SYNC_COUNTER_WIDTH - 1) downto 0);
	end record t_sync_syncgen_configs;

end package sync_syncgen_pkg;

--============================================================================
-- ! package body declaration
--============================================================================
package body sync_syncgen_pkg is
end package body sync_syncgen_pkg;
--============================================================================
-- package body end
--============================================================================