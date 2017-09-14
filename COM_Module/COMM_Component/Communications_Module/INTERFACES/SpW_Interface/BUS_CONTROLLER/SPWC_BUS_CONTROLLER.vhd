-- TODO : Refazer de acordo com o TRAN_BUS_CONTROLLER
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.spwc_bus_controller_pkg.all;

entity spwc_bus_controller_ent is
	port(
		clk                   : in  std_logic;
		rst                   : in  std_logic;
		bc_control_inputs     : in  spwc_bc_control_inputs_type;
		bc_write_bus_inputs   : in  spwc_bc_write_bus_inputs_type;
		bc_write_bus_outputs  : out spwc_bc_write_bus_outputs_type;
		bc_write_fifo_inputs  : in  spwc_bc_write_fifo_inputs_type;
		bc_write_fifo_outputs : out spwc_bc_write_fifo_outputs_type;
		bc_read_fifo_inputs   : in  spwc_bc_read_fifo_inputs_type;
		bc_read_fifo_outputs  : out spwc_bc_read_fifo_outputs_type;
		bc_read_bus_inputs    : in  spwc_bc_read_bus_inputs_type;
		bc_read_bus_outputs   : out spwc_bc_read_bus_outputs_type
	);
end entity spwc_bus_controller_ent;

architecture spwc_bus_controller_arc of spwc_bus_controller_ent is

	signal bc_write_fifo_write_sig : std_logic := '0';
	signal bc_read_fifo_read_sig   : std_logic := '0';

	signal bc_write_bus_dataused_sig : std_logic := '0';
	signal bc_read_bus_dataused_sig  : std_logic := '0';

	signal bc_read_bus_datavalid_sig : std_logic := '0';

	signal bc_write_bus_data  : std_logic_vector((SPWC_BUS_DATA_SIZE - 1) downto 0);
	signal bc_write_fifo_data : std_logic_vector((SPWC_FIFO_DATA_SIZE - 1) downto 0);
	signal bc_read_fifo_data  : std_logic_vector((SPWC_FIFO_DATA_SIZE - 1) downto 0);
	signal bc_read_bus_data   : std_logic_vector((SPWC_BUS_DATA_SIZE - 1) downto 0);

begin

	spwc_bus_controller_proc : process(clk, rst) is
		variable bc_read_fifo_dataready_flag : std_logic := '0';
	begin
		if (rst = '1') then
			bc_write_bus_outputs.enabled <= '0';
--			bc_write_bus_dataused_sig    <= '0';
--			bc_write_fifo_data           <= (others => '0');
--			bc_write_fifo_write_sig      <= '0';
--			bc_read_fifo_read_sig        <= '0';
--			bc_read_bus_data             <= (others => '0');
--			bc_read_bus_datavalid_sig    <= '0';
			bc_read_bus_outputs.enabled  <= '0';
		elsif rising_edge(clk) then

			-- Opera��o de Bus Read (coloca dados da fifo no bus)
--			bc_read_fifo_read_sig     <= '0';
--			bc_read_bus_datavalid_sig <= '0';
			if ((bc_control_inputs.bc_enable = '1') and (bc_control_inputs.bc_read_enable = '1')) then

				-- transfere dados da read fifo para o read bus
--				if (bc_read_bus_datavalid_sig = '1') then -- j� existe dado v�lido no bc_read_bus_data
--					if (bc_read_bus_dataused_sig = '1') then -- foi consumido o bc_read_bus_data
--						if (bc_read_fifo_dataready_flag = '1') then -- bc_read_fifo_data tem dados v�lidos
--							bc_read_bus_data            <= bc_read_fifo_data;
--							bc_read_fifo_dataready_flag := '0';
--							bc_read_bus_datavalid_sig   <= '1';
--						else            -- bc_read_fifo_data n�o tem dados v�lidos
--							bc_read_bus_datavalid_sig <= '0';
--						end if;
--					else                -- n�o foi consumido o bc_read_bus_data
--						bc_read_bus_datavalid_sig <= '1';
--					end if;
--				else                    -- n�o existe ainda dado v�lido no bc_read_bus_data
--					if (bc_read_fifo_dataready_flag = '1') then -- bc_read_fifo_data tem dados v�lidos
--						bc_read_bus_data            <= bc_read_fifo_data;
--						bc_read_fifo_dataready_flag := '0';
--						bc_read_bus_datavalid_sig   <= '1';
--					end if;
--				end if;
--
--				-- carrega bc_read_fifo_data com dados v�lidos, se dispon�vel
--				if (bc_read_fifo_inputs.empty = '0') then -- existe dado dispon�vel na bc_read_fifo
--					if (bc_read_fifo_dataready_flag = '0') then -- bc_read_fifo_data n�o tem dado v�lido;
--						bc_read_fifo_read_sig       <= '1';
--						bc_read_fifo_dataready_flag := '1';
--					end if;
--				else                    -- n�o existe dado dispon�vel na bc_read_fifo
--					bc_read_fifo_dataready_flag := '0';
--				end if;

				bc_read_bus_outputs.enabled <= '1';
			else
				bc_read_bus_outputs.enabled <= '0';
			end if;

			-- Opera��o de Bus Write (coloca dados do bus na fifo)
--			bc_write_fifo_write_sig   <= '0';
--			bc_write_bus_dataused_sig <= '0';
			if ((bc_control_inputs.bc_enable = '1') and (bc_control_inputs.bc_write_enable = '1')) then

				-- transfere dados do write bus para a write fifo
--				if ((bc_write_bus_inputs.datavalid = '1') and (bc_write_fifo_inputs.full = '0')) then --(existe dado disponivel no write bus) e (write fifo pode receber dados)
--					
--					bc_write_fifo_write_sig   <= '1';
--					bc_write_bus_dataused_sig <= '1';
--				else
--					bc_write_fifo_write_sig   <= '0';
--					bc_write_bus_dataused_sig <= '0';
--				end if;

				bc_write_bus_outputs.enabled <= '1';
			else
				bc_write_bus_outputs.enabled <= '0';
			end if;

		end if;
	end process spwc_bus_controller_proc;

		bc_read_bus_data            <= bc_read_fifo_data;


			bc_read_fifo_read_sig     <= (bc_read_bus_dataused_sig);
			
			bc_read_bus_datavalid_sig <= (not (bc_read_fifo_inputs.empty)) when ((bc_control_inputs.bc_enable = '1') and (bc_control_inputs.bc_read_enable = '1')) else ('0');
			


	bc_write_fifo_write_sig <= ('1') when ((bc_write_bus_inputs.datavalid = '1') and (bc_write_fifo_inputs.full = '0')) else ('0');
	bc_write_bus_dataused_sig <=  ('1') when ((bc_write_bus_inputs.datavalid = '1') and (bc_write_fifo_inputs.full = '0')) else ('0');

	-- Enabled management
	bc_read_bus_dataused_sig      <= (bc_read_bus_inputs.dataused) when ((bc_control_inputs.bc_enable = '1') and (bc_control_inputs.bc_read_enable = '1')) else ('0');
	bc_write_bus_outputs.dataused <= (bc_write_bus_dataused_sig) when ((bc_control_inputs.bc_enable = '1') and (bc_control_inputs.bc_write_enable = '1')) else ('0');

	-- Reset management
	bc_write_fifo_outputs.aclr <= rst;
	bc_read_fifo_outputs.aclr  <= rst;

	-- Fifo Underflow/Overflow protection
	bc_write_fifo_outputs.write <= (bc_write_fifo_write_sig) when (bc_write_fifo_inputs.full = '0') else ('0');
	bc_read_fifo_outputs.read   <= (bc_read_fifo_read_sig) when (bc_read_fifo_inputs.empty = '0') else ('0');

	-- Data assignment
	bc_write_bus_data          <= bc_write_bus_inputs.data;
	bc_write_fifo_outputs.data <= bc_write_fifo_data;
	bc_read_fifo_data          <= bc_read_fifo_inputs.data;
	bc_read_bus_outputs.data   <= bc_read_bus_data;
	
	bc_write_fifo_data        <= bc_write_bus_data;

	--Others
	bc_read_bus_outputs.datavalid <= bc_read_bus_datavalid_sig;

end architecture spwc_bus_controller_arc;
