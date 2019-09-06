--=============================================================================
--! @file sync_outen.vhd
--=============================================================================
--! Standard library
library ieee;
--! Standard packages
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--! Specific packages
use work.sync_outen_pkg.all;

-------------------------------------------------------------------------------
-- --
-- Maua Institute of Technology - Embedded Electronic Systems Nucleous --
-- Plato Project --
-- --
-------------------------------------------------------------------------------
--
-- unit name: sync output enable (sync_outen)
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
--! Author: Cassio Berni (ccberni@hotmail.com)
-------------------------------------------------------------------------------
--! \n\n<b>Last changes:</b>\n
--! 29\03\2018 RF File Creation\n
--! 08\11\2018 CB Module optimization & revision\n
--
-------------------------------------------------------------------------------
--! @todo <next thing to do> \n
--! <another thing to do> \n
--
-------------------------------------------------------------------------------

--============================================================================
--! Entity declaration for sync_outen
--============================================================================
entity sync_outen is
	port(
		clk_i           : in  std_logic;
		reset_n_i       : in  std_logic;
		sync_signal_i   : in  std_logic;
		sync_control_i  : in  t_sync_outen_control;
		sync_pol_i      : in  std_logic;
		sync_channels_o : out t_sync_outen_output
	);
end entity sync_outen;

--============================================================================
--! architecture declaration
--============================================================================
architecture rtl of sync_outen is

	--============================================================================
	-- architecture begin
	--============================================================================
begin
	p_sync_outen : process(clk_i, reset_n_i, sync_pol_i) is
	begin
		if (reset_n_i = '0') then
			sync_channels_o.channel_1_signal <= not (sync_pol_i);
			sync_channels_o.channel_2_signal <= not (sync_pol_i);
			sync_channels_o.channel_3_signal <= not (sync_pol_i);
			sync_channels_o.channel_4_signal <= not (sync_pol_i);
			sync_channels_o.channel_5_signal <= not (sync_pol_i);
			sync_channels_o.channel_6_signal <= not (sync_pol_i);
			sync_channels_o.channel_7_signal <= not (sync_pol_i);
			sync_channels_o.channel_8_signal <= not (sync_pol_i);
			sync_channels_o.sync_out_signal  <= not (sync_pol_i);

		elsif (rising_edge(clk_i)) then
			if (sync_control_i.channel_1_enable = '1') then
				sync_channels_o.channel_1_signal <= sync_signal_i;
			else
				sync_channels_o.channel_1_signal <= not (sync_pol_i);
			end if;

			if (sync_control_i.channel_2_enable = '1') then
				sync_channels_o.channel_2_signal <= sync_signal_i;
			else
				sync_channels_o.channel_2_signal <= not (sync_pol_i);
			end if;

			if (sync_control_i.channel_3_enable = '1') then
				sync_channels_o.channel_3_signal <= sync_signal_i;
			else
				sync_channels_o.channel_3_signal <= not (sync_pol_i);
			end if;

			if (sync_control_i.channel_4_enable = '1') then
				sync_channels_o.channel_4_signal <= sync_signal_i;
			else
				sync_channels_o.channel_4_signal <= not (sync_pol_i);
			end if;

			if (sync_control_i.channel_5_enable = '1') then
				sync_channels_o.channel_5_signal <= sync_signal_i;
			else
				sync_channels_o.channel_5_signal <= not (sync_pol_i);
			end if;

			if (sync_control_i.channel_6_enable = '1') then
				sync_channels_o.channel_6_signal <= sync_signal_i;
			else
				sync_channels_o.channel_6_signal <= not (sync_pol_i);
			end if;

			if (sync_control_i.channel_7_enable = '1') then
				sync_channels_o.channel_7_signal <= sync_signal_i;
			else
				sync_channels_o.channel_7_signal <= not (sync_pol_i);
			end if;

			if (sync_control_i.channel_8_enable = '1') then
				sync_channels_o.channel_8_signal <= sync_signal_i;
			else
				sync_channels_o.channel_8_signal <= not (sync_pol_i);
			end if;

			if (sync_control_i.sync_out_enable = '1') then
				sync_channels_o.sync_out_signal <= sync_signal_i;
			else
				sync_channels_o.sync_out_signal <= not (sync_pol_i);
			end if;
		end if;
	end process p_sync_outen;

end architecture rtl;
--============================================================================
-- architecture end
--============================================================================
