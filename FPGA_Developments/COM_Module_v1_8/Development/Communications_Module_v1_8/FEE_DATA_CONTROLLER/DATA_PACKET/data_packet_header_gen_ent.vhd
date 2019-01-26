library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_packet_header_gen_ent is
	port(
		clk_i                                : in  std_logic;
		rst_i                                : in  std_logic;
		header_gen_send_i                    : in  std_logic;
		header_gen_reset_i                   : in  std_logic;
		headerdata_logical_address_i         : in  std_logic_vector(7 downto 0);
		headerdata_length_field_i            : in  std_logic_vector(15 downto 0);
		headerdata_type_field_mode_i         : in  std_logic_vector(2 downto 0);
		headerdata_type_field_last_packet_i  : in  std_logic;
		headerdata_type_field_ccd_side_i     : in  std_logic;
		headerdata_type_field_ccd_number_i   : in  std_logic_vector(1 downto 0);
		headerdata_type_field_frame_number_i : in  std_logic_vector(1 downto 0);
		headerdata_type_field_packet_type_i  : in  std_logic_vector(1 downto 0);
		headerdata_frame_counter_i           : in  std_logic_vector(15 downto 0);
		headerdata_sequence_counter_i        : in  std_logic_vector(15 downto 0);
		send_buffer_stat_almost_full_i       : in  std_logic;
		send_buffer_stat_full_i              : in  std_logic;
		send_buffer_wrready_i                : in  std_logic;
		header_gen_busy_o                    : out std_logic;
		header_gen_finished_o                : out std_logic;
		send_buffer_wrdata_o                 : out std_logic_vector(7 downto 0);
		send_buffer_wrreq_o                  : out std_logic
	);
end entity data_packet_header_gen_ent;

architecture RTL of data_packet_header_gen_ent is

	type t_data_packet_header_fsm is (
		IDLE,
		WAITING_SEND_BUFFER_SPACE,
		FIELD_LOGICAL_ADDRESS,
		FIELD_PROTOCOL_IDENTIFIER,
		FIELD_LENGTH_MSB,
		FIELD_LENGTH_LSB,
		FIELD_TYPE_MSB,
		FIELD_TYPE_LSB,
		FIELD_FRAME_COUNTER_MSB,
		FIELD_FRAME_COUNTER_LSB,
		FIELD_SEQUENCE_COUNTER_MSB,
		FIELD_SEQUENCE_COUNTER_LSB,
		HEADER_UNIT_FINISH_OPERATION
	);
	signal s_data_packet_header_state      : t_data_packet_header_fsm; -- current state
	signal s_data_packet_header_next_state : t_data_packet_header_fsm;

begin

	p_data_packet_header_FSM_state : process(clk_i, rst_i)
		variable v_data_packet_header_state : s_data_packet_header_state := IDLE; -- current state
	begin
		-- on asynchronous reset in any state we jump to the idle state
		if (rst_i = '0') then
			s_data_packet_header_state      <= IDLE;
			v_data_packet_header_state      := IDLE;
			s_data_packet_header_next_state <= IDLE;
			-- Outputs Generation
			header_gen_busy_o               <= '0';
			header_gen_finished_o           <= '0';
			send_buffer_wrdata_o            <= x"00";
			send_buffer_wrreq_o             <= '0';
		-- state transitions are always synchronous to the clock
		elsif (rising_edge(clk_i)) then
			case (s_data_packet_header_state) is

				-- state "IDLE"
				when IDLE =>
					-- does nothing until the control unit signals it is ready to send a header
					-- default state transition
					s_data_packet_header_state      <= IDLE;
					v_data_packet_header_state      := IDLE;
					s_data_packet_header_next_state <= IDLE;
					-- default internal signal values
					-- conditional state transition and internal signal values
					-- check if a data packet header was requested
					if (header_gen_send_i = '1') then
						-- data packet header was requested
						-- set next field as logical address
						s_data_packet_header_next_state <= FIELD_LOGICAL_ADDRESS;
						-- go to wating buffer space
						s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
						v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					end if;

				-- state "WAITING_SEND_BUFFER_SPACE"
				when WAITING_SEND_BUFFER_SPACE =>
					-- wait until the send buffer have available space
					-- default state transition
					s_data_packet_header_state <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state := WAITING_SEND_BUFFER_SPACE;
					-- default internal signal values
					-- conditional state transition
					-- check if send buffer is ready and is not full
					if ((send_buffer_wrready_i = '1') and (send_buffer_stat_full_i = '0')) then
						-- send buffer is ready and is not full
						-- go to next field
						s_data_packet_header_state <= s_data_packet_header_next_state;
						v_data_packet_header_state := s_data_packet_header_next_state;
					end if;

				-- state "FIELD_LOGICAL_ADDRESS"
				when FIELD_LOGICAL_ADDRESS =>
					-- logical address field, send logical address
					-- default state transition
					s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					s_data_packet_header_next_state <= FIELD_PROTOCOL_IDENTIFIER;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "FIELD_PROTOCOL_IDENTIFIER"
				when FIELD_PROTOCOL_IDENTIFIER =>
					-- protocol identifier field, send protocol identifier
					-- default state transition
					s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					s_data_packet_header_next_state <= FIELD_LENGTH_MSB;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "FIELD_LENGTH_MSB"
				when FIELD_LENGTH_MSB =>
					-- length field msb, send length msb
					-- default state transition
					s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					s_data_packet_header_next_state <= FIELD_LENGTH_LSB;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "FIELD_LENGTH_LSB"
				when FIELD_LENGTH_LSB =>
					-- length field lsb, send length lsb
					-- default state transition
					s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					s_data_packet_header_next_state <= FIELD_TYPE_MSB;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "FIELD_TYPE_MSB"
				when FIELD_TYPE_MSB =>
					-- type field msb, send type msb
					-- default state transition
					s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					s_data_packet_header_next_state <= FIELD_TYPE_LSB;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "FIELD_TYPE_LSB"
				when FIELD_TYPE_LSB =>
					-- type field lsb, send type lsb
					-- default state transition
					s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					s_data_packet_header_next_state <= FIELD_FRAME_COUNTER_MSB;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "FIELD_FRAME_COUNTER_MSB"
				when FIELD_FRAME_COUNTER_MSB =>
					-- frame counter field msb, send frame counter msb
					-- default state transition
					s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					s_data_packet_header_next_state <= FIELD_FRAME_COUNTER_LSB;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "FIELD_FRAME_COUNTER_LSB"
				when FIELD_FRAME_COUNTER_LSB =>
					-- frame counter field lsb, send frame counter lsb
					-- default state transition
					s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					s_data_packet_header_next_state <= FIELD_SEQUENCE_COUNTER_MSB;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "FIELD_SEQUENCE_COUNTER_MSB"
				when FIELD_SEQUENCE_COUNTER_MSB =>
					-- sequence counter field msb, send sequence counter msb
					-- default state transition
					s_data_packet_header_state      <= WAITING_SEND_BUFFER_SPACE;
					v_data_packet_header_state      := WAITING_SEND_BUFFER_SPACE;
					s_data_packet_header_next_state <= FIELD_SEQUENCE_COUNTER_LSB;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "FIELD_SEQUENCE_COUNTER_LSB"
				when FIELD_SEQUENCE_COUNTER_LSB =>
					-- sequence counter field lsb, send sequence counter lsb
					-- default state transition
					s_data_packet_header_state      <= HEADER_UNIT_FINISH_OPERATION;
					v_data_packet_header_state      := HEADER_UNIT_FINISH_OPERATION;
					s_data_packet_header_next_state <= IDLE;
				-- default internal signal values
				-- conditional state transition and internal signal values

				-- state "HEADER_UNIT_FINISH_OPERATION"
				when HEADER_UNIT_FINISH_OPERATION =>
					-- finish header unit operation
					-- default state transition
					s_data_packet_header_state      <= REPLY_FINISH_GENERATION;
					v_data_packet_header_state      := REPLY_FINISH_GENERATION;
					s_data_packet_header_next_state <= IDLE;
					-- default internal signal values
					-- conditional state transition and internal signal values
					-- check if a header generator reset was requested
					if (header_gen_reset_i = '1') then
						-- reply reset commanded, go back to idle
						s_data_packet_header_state      <= IDLE;
						v_data_packet_header_state      := IDLE;
						s_data_packet_header_next_state <= IDLE;
					end if;

				-- all the other states (not defined)
				when others =>
					-- jump to save state (ERROR?!)
					s_data_packet_header_state      <= IDLE;
					v_data_packet_header_state      := IDLE;
					s_data_packet_header_next_state <= IDLE;

			end case;

			-- output generation

			case (v_data_packet_header_state) is

				-- state "IDLE"
				when IDLE =>
					-- does nothing until the control unit signals it is ready to send a header
					-- reset outputs
					-- default output signals
					header_gen_busy_o     <= '0';
					header_gen_finished_o <= '0';
					send_buffer_wrdata_o  <= x"00";
					send_buffer_wrreq_o   <= '0';
				-- conditional output signals

				-- state "WAITING_SEND_BUFFER_SPACE"
				when WAITING_SEND_BUFFER_SPACE =>
					-- wait until the send buffer have available space
					-- default output signals
					header_gen_busy_o     <= '1';
					header_gen_finished_o <= '0';
					-- clear send buffer write signal
					send_buffer_wrdata_o  <= x"00";
					send_buffer_wrreq_o   <= '0';
				-- conditional output signals

				-- state "FIELD_LOGICAL_ADDRESS"
				when FIELD_LOGICAL_ADDRESS =>
					-- logical address field, send logical address
					-- default output signals
					header_gen_busy_o     <= '1';
					header_gen_finished_o <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o  <= headerdata_logical_address_i;
					-- write the send buffer data
					send_buffer_wrreq_o   <= '1';
				-- conditional output signals

				-- state "FIELD_PROTOCOL_IDENTIFIER"
				when FIELD_PROTOCOL_IDENTIFIER =>
					-- protocol identifier field, send protocol identifier
					-- default output signals
					header_gen_busy_o     <= '1';
					header_gen_finished_o <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o  <= x"F0";
					-- write the send buffer data
					send_buffer_wrreq_o   <= '1';
				-- conditional output signals

				-- state "FIELD_LENGTH_MSB"
				when FIELD_LENGTH_MSB =>
					-- length field msb, send length msb
					-- default output signals
					header_gen_busy_o     <= '1';
					header_gen_finished_o <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o  <= headerdata_length_field_i(15 downto 7);
					-- write the send buffer data
					send_buffer_wrreq_o   <= '1';
				-- conditional output signals

				-- state "FIELD_LENGTH_LSB"
				when FIELD_LENGTH_LSB =>
					-- length field lsb, send length lsb
					-- default output signals
					header_gen_busy_o     <= '1';
					header_gen_finished_o <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o  <= headerdata_length_field_i(7 downto 0);
					-- write the send buffer data
					send_buffer_wrreq_o   <= '1';
				-- conditional output signals

				-- state "FIELD_TYPE_MSB"
				when FIELD_TYPE_MSB =>
					-- type field msb, send type msb
					-- default output signals
					header_gen_busy_o                  <= '1';
					header_gen_finished_o              <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o(15 downto 11) <= (others => '0');
					send_buffer_wrdata_o(10 downto 8)  <= headerdata_type_field_mode_i;
					-- write the send buffer data
					send_buffer_wrreq_o                <= '1';
				-- conditional output signals

				-- state "FIELD_TYPE_LSB"
				when FIELD_TYPE_LSB =>
					-- type field lsb, send type lsb
					-- default output signals
					header_gen_busy_o                <= '1';
					header_gen_finished_o            <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o(7)          <= headerdata_type_field_last_packet_i;
					send_buffer_wrdata_o(6)          <= headerdata_type_field_ccd_side_i;
					send_buffer_wrdata_o(5 downto 4) <= headerdata_type_field_ccd_number_i;
					send_buffer_wrdata_o(3 downto 2) <= headerdata_type_field_frame_number_i;
					send_buffer_wrdata_o(1 downto 0) <= headerdata_type_field_packet_type_i;
					-- write the send buffer data
					send_buffer_wrreq_o              <= '1';
				-- conditional output signals

				-- state "FIELD_FRAME_COUNTER_MSB"
				when FIELD_FRAME_COUNTER_MSB =>
					-- frame counter field msb, send frame counter msb
					-- default output signals
					header_gen_busy_o     <= '1';
					header_gen_finished_o <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o  <= headerdata_frame_counter_i(15 downto 8);
					-- write the send buffer data
					send_buffer_wrreq_o   <= '1';
				-- conditional output signals

				-- state "FIELD_FRAME_COUNTER_LSB"
				when FIELD_FRAME_COUNTER_LSB =>
					-- frame counter field lsb, send frame counter lsb
					-- default output signals
					header_gen_busy_o     <= '1';
					header_gen_finished_o <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o  <= headerdata_frame_counter_i(7 downto 0);
					-- write the send buffer data
					send_buffer_wrreq_o   <= '1';
				-- conditional output signals

				-- state "FIELD_SEQUENCE_COUNTER_MSB"
				when FIELD_SEQUENCE_COUNTER_MSB =>
					-- sequence counter field msb, send sequence counter msb
					-- default output signals
					header_gen_busy_o     <= '1';
					header_gen_finished_o <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o  <= headerdata_sequence_counter_i(15 downto 8);
					-- write the send buffer data
					send_buffer_wrreq_o   <= '1';
				-- conditional output signals

				-- state "FIELD_SEQUENCE_COUNTER_LSB"
				when FIELD_SEQUENCE_COUNTER_LSB =>
					-- sequence counter field lsb, send sequence counter lsb
					-- default output signals
					header_gen_busy_o     <= '1';
					header_gen_finished_o <= '0';
					-- fill spw data with field data
					send_buffer_wrdata_o  <= headerdata_sequence_counter_i(7 downto 0);
					-- write the send buffer data
					send_buffer_wrreq_o   <= '1';
				-- conditional output signals

				-- state "HEADER_UNIT_FINISH_OPERATION"
				when HEADER_UNIT_FINISH_OPERATION =>
					-- finish header unit operation
					-- default output signals
					header_gen_busy_o     <= '1';
					-- indicate that the reply generation is finished
					header_gen_finished_o <= '1';
					send_buffer_wrreq_o   <= '0';
					send_buffer_wrdata_o  <= x"00";
				-- conditional output signals

				-- all the other states (not defined)
				when others =>
					null;

			end case;
		end if;
	end process p_data_packet_header_FSM_state;

end architecture RTL;
