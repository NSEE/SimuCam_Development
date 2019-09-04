library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.ftdi_protocol_pkg.all;

entity ftdi_protocol_controller_ent is
	port(
		clk_i                                : in  std_logic;
		rst_i                                : in  std_logic;
		data_stop_i                          : in  std_logic;
		data_start_i                         : in  std_logic;
		req_half_ccd_request_timeout_i       : in  std_logic_vector(15 downto 0);
		req_half_ccd_fee_number_i            : in  std_logic_vector(2 downto 0);
		req_half_ccd_ccd_number_i            : in  std_logic_vector(1 downto 0);
		req_half_ccd_ccd_side_i              : in  std_logic;
		req_half_ccd_height_i                : in  std_logic_vector(12 downto 0);
		req_half_ccd_width_i                 : in  std_logic_vector(11 downto 0);
		req_half_ccd_exposure_number_i       : in  std_logic_vector(15 downto 0);
		req_half_ccd_request_i               : in  std_logic;
		req_half_ccd_abort_request_i         : in  std_logic;
		req_half_ccd_reset_controller_i      : in  std_logic;
		header_generator_busy_i              : in  std_logic;
		header_parser_busy_i                 : in  std_logic;
		header_parser_data_i                 : in  t_ftdi_prot_header_fields;
		header_parser_crc32_match_i          : in  std_logic;
		header_parser_eoh_error_i            : in  std_logic;
		payload_writer_busy_i                : in  std_logic;
		payload_reader_busy_i                : in  std_logic;
		payload_reader_crc32_match_i         : in  std_logic;
		payload_reader_eop_error_i           : in  std_logic;
		rly_half_ccd_fee_number_o            : out std_logic_vector(2 downto 0);
		rly_half_ccd_ccd_number_o            : out std_logic_vector(1 downto 0);
		rly_half_ccd_ccd_side_o              : out std_logic;
		rly_half_ccd_height_o                : out std_logic_vector(12 downto 0);
		rly_half_ccd_width_o                 : out std_logic_vector(11 downto 0);
		rly_half_ccd_exposure_number_o       : out std_logic_vector(15 downto 0);
		rly_half_ccd_image_length_bytes_o    : out std_logic_vector(31 downto 0);
		rly_half_ccd_received_o              : out std_logic;
		rly_half_ccd_controller_busy_o       : out std_logic;
		err_rx_comm_err_state_o              : out std_logic;
		err_rx_comm_err_code_o               : out std_logic_vector(15 downto 0);
		err_half_ccd_request_nack_err_o      : out std_logic;
		err_half_ccd_reply_header_crc_err_o  : out std_logic;
		err_half_ccd_reply_eoh_err_o         : out std_logic;
		err_half_ccd_reply_payload_crc_err_o : out std_logic;
		err_half_ccd_reply_eop_err_o         : out std_logic;
		err_half_ccd_req_max_tries_err_o     : out std_logic;
		err_half_ccd_reply_ccd_size_err_o    : out std_logic;
		err_half_ccd_req_timeout_err_o       : out std_logic;
		header_generator_start_o             : out std_logic;
		header_generator_reset_o             : out std_logic;
		header_generator_data_o              : out t_ftdi_prot_header_fields;
		header_parser_start_o                : out std_logic;
		header_parser_reset_o                : out std_logic;
		payload_writer_start_o               : out std_logic;
		payload_writer_reset_o               : out std_logic;
		payload_writer_length_bytes_o        : out std_logic_vector(31 downto 0);
		payload_reader_start_o               : out std_logic;
		payload_reader_reset_o               : out std_logic;
		payload_reader_length_bytes_o        : out std_logic_vector(31 downto 0)
	);
end entity ftdi_protocol_controller_ent;

architecture RTL of ftdi_protocol_controller_ent is

	type t_ftdi_prot_controller_fsm is (
		STOPPED,                        -- protocol controller stopped
		IDLE,                           -- protocol controller idle
		HFCCD_REQ_START,                -- half-ccd request start
		HFCCD_REQ_SEND_TX_HEADER,       -- half-ccd request transmit request header
		HFCCD_REQ_WAIT_TX_HEADER,       -- half-ccd request wait request header
		HFCCD_REQ_RESET_TX_HEADER,      -- half-ccd request reset request header
		HFCCD_ACK_RECEIVE_RX_HEADER,    -- half-ccd request receive request ack/nack
		HFCCD_ACK_WAIT_RX_HEADER,       -- half-ccd request wait request ack/nack
		HFCCD_ACK_PARSE_RX_HEADER,      -- half-ccd request parse request ack/nack
		HFCCD_REPLY_RECEIVE_RX_HEADER,  -- half-ccd request receive reply header
		HFCCD_REPLY_WAIT_RX_HEADER,     -- half-ccd request wait reply header
		HFCCD_REPLY_PARSE_RX_HEADER,    -- half-ccd request parse reply header
		HFCCD_ACK_SEND_TX_HEADER,       -- half-ccd request transmit reply ack 
		HFCCD_ACK_WAIT_TX_HEADER,       -- half-ccd request wait reply ack
		HFCCD_ACK_RESET_TX_HEADER,      -- half-ccd request reset reply ack
		HFCCD_NACK_SEND_TX_HEADER,      -- half-ccd request transmit reply nack 
		HFCCD_NACK_WAIT_TX_HEADER,      -- half-ccd request wait reply nack
		HFCCD_NACK_RESET_TX_HEADER,     -- half-ccd request reset reply nack
		HFCCD_REPLY_RECEIVE_RX_PAYLOAD, -- half-ccd request receive reply payload
		HFCCD_REPLY_WAIT_RX_PAYLOAD,    -- half-ccd request wait reply payload
		HFCCD_REPLY_PARSE_RX_PAYLOAD,   -- half-ccd request parse reply payload
		HFCCD_ACK_SEND_TX_PAYLOAD,      -- half-ccd request transmit payload ack
		HFCCD_ACK_WAIT_TX_PAYLOAD,      -- half-ccd request wait payload ack
		HFCCD_ACK_RESET_TX_PAYLOAD,     -- half-ccd request reset payload ack
		HFCCD_NACK_SEND_TX_PAYLOAD,     -- half-ccd request transmit payload nack
		HFCCD_NACK_WAIT_TX_PAYLOAD,     -- half-ccd request wait payload nack
		HFCCD_NACK_RESET_TX_PAYLOAD,    -- half-ccd request reset payload nack
		HFCCD_REQ_FINISH                -- half-ccd request finish
	);
	signal s_ftdi_prot_controller_state : t_ftdi_prot_controller_fsm;

	signal s_registered_request_data  : t_ftdi_prot_header_fields;
	signal s_parsed_reply_header_data : t_ftdi_prot_header_fields;

	signal s_request_tries : natural range 0 to 2;

	signal s_general_error : std_logic;

	signal s_err_half_ccd_request_nack_err      : std_logic;
	signal s_err_half_ccd_reply_header_crc_err  : std_logic;
	signal s_err_half_ccd_reply_eoh_err         : std_logic;
	signal s_err_half_ccd_reply_payload_crc_err : std_logic;
	signal s_err_half_ccd_reply_eop_err         : std_logic;
	signal s_err_half_ccd_req_max_tries_err     : std_logic;
	signal s_err_half_ccd_reply_ccd_size_err    : std_logic;
	signal s_err_half_ccd_req_timeout_err       : std_logic;

begin

	p_ftdi_protocol_controller : process(clk_i, rst_i) is
		variable v_ftdi_prot_controller_state : t_ftdi_prot_controller_fsm := STOPPED;
	begin
		if (rst_i = '1') then
			-- fsm state reset
			s_ftdi_prot_controller_state         <= STOPPED;
			v_ftdi_prot_controller_state         := STOPPED;
			-- internal signals reset
			s_registered_request_data            <= c_FTDI_PROT_HEADER_RESET;
			s_parsed_reply_header_data           <= c_FTDI_PROT_HEADER_RESET;
			s_request_tries                      <= 0;
			s_general_error                      <= '0';
			s_err_half_ccd_request_nack_err      <= '0';
			s_err_half_ccd_reply_header_crc_err  <= '0';
			s_err_half_ccd_reply_eoh_err         <= '0';
			s_err_half_ccd_reply_payload_crc_err <= '0';
			s_err_half_ccd_reply_eop_err         <= '0';
			s_err_half_ccd_req_max_tries_err     <= '0';
			s_err_half_ccd_reply_ccd_size_err    <= '0';
			s_err_half_ccd_req_timeout_err       <= '0';
			-- outputs reset
			rly_half_ccd_fee_number_o            <= (others => '0');
			rly_half_ccd_ccd_number_o            <= (others => '0');
			rly_half_ccd_ccd_side_o              <= '0';
			rly_half_ccd_height_o                <= (others => '0');
			rly_half_ccd_width_o                 <= (others => '0');
			rly_half_ccd_exposure_number_o       <= (others => '0');
			rly_half_ccd_image_length_bytes_o    <= (others => '0');
			rly_half_ccd_received_o              <= '0';
			rly_half_ccd_controller_busy_o       <= '0';
			err_half_ccd_request_nack_err_o      <= '0';
			err_half_ccd_reply_header_crc_err_o  <= '0';
			err_half_ccd_reply_eoh_err_o         <= '0';
			err_half_ccd_reply_payload_crc_err_o <= '0';
			err_half_ccd_reply_eop_err_o         <= '0';
			err_half_ccd_req_max_tries_err_o     <= '0';
			err_half_ccd_reply_ccd_size_err_o    <= '0';
			err_half_ccd_req_timeout_err_o       <= '0';
			header_generator_start_o             <= '0';
			header_generator_reset_o             <= '0';
			header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
			header_parser_start_o                <= '0';
			header_parser_reset_o                <= '0';
			payload_writer_start_o               <= '0';
			payload_writer_reset_o               <= '0';
			payload_writer_length_bytes_o        <= (others => '0');
			payload_reader_start_o               <= '0';
			payload_reader_reset_o               <= '0';
			payload_reader_length_bytes_o        <= (others => '0');
		elsif rising_edge(clk_i) then

			-- States transitions FSM
			case (s_ftdi_prot_controller_state) is

				-- state "STOPPED"
				when STOPPED =>
					-- protocol controller stopped
					-- default state transition
					s_ftdi_prot_controller_state         <= STOPPED;
					v_ftdi_prot_controller_state         := STOPPED;
					-- default internal signal values
					s_registered_request_data            <= c_FTDI_PROT_HEADER_RESET;
					s_parsed_reply_header_data           <= c_FTDI_PROT_HEADER_RESET;
					s_request_tries                      <= 0;
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if a start command was issued
					if (data_start_i = '1') then
						s_ftdi_prot_controller_state <= IDLE;
						v_ftdi_prot_controller_state := IDLE;
					end if;

				-- state "IDLE"
				when IDLE =>
					-- protocol controller idle
					-- default state transition
					s_ftdi_prot_controller_state         <= IDLE;
					v_ftdi_prot_controller_state         := IDLE;
					-- default internal signal values
					s_registered_request_data            <= c_FTDI_PROT_HEADER_RESET;
					s_parsed_reply_header_data           <= c_FTDI_PROT_HEADER_RESET;
					s_request_tries                      <= 0;
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if a header generator start was issued
					if (req_half_ccd_request_i = '1') then
						s_ftdi_prot_controller_state                         <= HFCCD_REQ_START;
						v_ftdi_prot_controller_state                         := HFCCD_REQ_START;
						s_registered_request_data.package_id                 <= c_FTDI_PROT_PKG_ID_HALF_CCD_REQUEST;
						s_registered_request_data.image_selection.fee_number <= req_half_ccd_fee_number_i;
						s_registered_request_data.image_selection.ccd_number <= req_half_ccd_ccd_number_i;
						s_registered_request_data.image_selection.ccd_side   <= req_half_ccd_ccd_side_i;
						s_registered_request_data.image_size.ccd_height      <= req_half_ccd_height_i;
						s_registered_request_data.image_size.ccd_width       <= req_half_ccd_width_i;
						s_registered_request_data.exposure_number            <= req_half_ccd_exposure_number_i;
						s_registered_request_data.payload_length             <= (others => '0');
					end if;

				-- state "HFCCD_REQ_START"
				when HFCCD_REQ_START =>
					-- half-ccd request start
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REQ_SEND_TX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_REQ_SEND_TX_HEADER;
					-- default internal signal values
					s_request_tries                      <= 2;
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_REQ_SEND_TX_HEADER"
				when HFCCD_REQ_SEND_TX_HEADER =>
					-- half-ccd request transmit request header
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REQ_WAIT_TX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_REQ_WAIT_TX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_REQ_WAIT_TX_HEADER"
				when HFCCD_REQ_WAIT_TX_HEADER =>
					-- half-ccd request wait request header
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REQ_WAIT_TX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_REQ_WAIT_TX_HEADER;
					-- default internal signal values
					-- conditional state transition
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- check if the transmission of the request header is finished
					if (header_generator_busy_i = '0') then
						s_ftdi_prot_controller_state <= HFCCD_REQ_RESET_TX_HEADER;
						v_ftdi_prot_controller_state := HFCCD_REQ_RESET_TX_HEADER;
					end if;

				-- state "HFCCD_REQ_RESET_TX_HEADER"
				when HFCCD_REQ_RESET_TX_HEADER =>
					-- half-ccd request reset request header
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_ACK_RECEIVE_RX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_ACK_RECEIVE_RX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_ACK_RECEIVE_RX_HEADER"
				when HFCCD_ACK_RECEIVE_RX_HEADER =>
					-- half-ccd request receive request ack/nack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_ACK_WAIT_RX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_ACK_WAIT_RX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_ACK_WAIT_RX_HEADER"
				when HFCCD_ACK_WAIT_RX_HEADER =>
					-- half-ccd request wait request ack/nack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_ACK_WAIT_RX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_ACK_WAIT_RX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the receival of the request ack/nack is finished
					if (header_parser_busy_i = '0') then
						s_ftdi_prot_controller_state <= HFCCD_ACK_PARSE_RX_HEADER;
						v_ftdi_prot_controller_state := HFCCD_ACK_PARSE_RX_HEADER;
					end if;

				-- state "HFCCD_ACK_PARSE_RX_HEADER"
				when HFCCD_ACK_PARSE_RX_HEADER =>
					-- half-ccd request parse request ack/nack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REQ_FINISH;
					v_ftdi_prot_controller_state         := HFCCD_REQ_FINISH;
					-- default internal signal values
					s_request_tries                      <= 2;
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the arriving package passed the CRC check
					if ((header_parser_crc32_match_i = '1') and (header_parser_eoh_error_i = '0')) then
						-- CRC matched and End of Header error not ocurred, package is reliable
						-- check if the arriving package is a ACK or NACK
						if (header_parser_data_i.package_id = c_FTDI_PROT_PKG_ID_ACK_OK) then
							-- ACK received
							s_ftdi_prot_controller_state <= HFCCD_REPLY_RECEIVE_RX_HEADER;
							v_ftdi_prot_controller_state := HFCCD_REPLY_RECEIVE_RX_HEADER;
						elsif (header_parser_data_i.package_id = c_FTDI_PROT_PKG_ID_NACK_ERROR) then
							-- NACK received
							s_err_half_ccd_request_nack_err <= '1';
							-- check if maximum amout of tries was attempted (3 tries)
							if (s_request_tries > 0) then
								s_ftdi_prot_controller_state <= HFCCD_REQ_SEND_TX_HEADER;
								v_ftdi_prot_controller_state := HFCCD_REQ_SEND_TX_HEADER;
								s_request_tries              <= s_request_tries - 1;
							end if;
						else
							-- Unexpected package received
							s_general_error <= '1';
						end if;
					else
						-- Package CRC does not match or End of Header error ocurred
						s_err_half_ccd_reply_header_crc_err <= not (header_parser_crc32_match_i);
						s_err_half_ccd_reply_eoh_err        <= header_parser_eoh_error_i;
					end if;

				-- state "HFCCD_REPLY_RECEIVE_RX_HEADER"
				when HFCCD_REPLY_RECEIVE_RX_HEADER =>
					-- half-ccd request receive reply header
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REPLY_WAIT_RX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_REPLY_WAIT_RX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_REPLY_WAIT_RX_HEADER"
				when HFCCD_REPLY_WAIT_RX_HEADER =>
					-- half-ccd request wait reply header
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REPLY_WAIT_RX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_REPLY_WAIT_RX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the receival of the request reply is finished
					if (header_parser_busy_i = '0') then
						s_ftdi_prot_controller_state <= HFCCD_REPLY_PARSE_RX_HEADER;
						v_ftdi_prot_controller_state := HFCCD_REPLY_PARSE_RX_HEADER;
					end if;

				-- state "HFCCD_REPLY_PARSE_RX_HEADER"
				when HFCCD_REPLY_PARSE_RX_HEADER =>
					-- half-ccd request parse reply header
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REQ_FINISH;
					v_ftdi_prot_controller_state         := HFCCD_REQ_FINISH;
					-- default internal signal values
					s_request_tries                      <= 2;
					s_parsed_reply_header_data           <= header_parser_data_i;
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the arriving package passed the CRC check
					if (header_parser_crc32_match_i = '1') then
						-- CRC matched, package is reliable
						-- check if an error was not detected
						if (header_parser_eoh_error_i = '0') then
							-- send a ACK
							s_ftdi_prot_controller_state <= HFCCD_ACK_SEND_TX_HEADER;
							v_ftdi_prot_controller_state := HFCCD_ACK_SEND_TX_HEADER;
						else
							-- check if maximum amout of tries was attempted (3 tries)
							if (s_request_tries > 0) then
								-- send a NACK
								s_ftdi_prot_controller_state <= HFCCD_NACK_SEND_TX_HEADER;
								v_ftdi_prot_controller_state := HFCCD_NACK_SEND_TX_HEADER;
								s_request_tries              <= s_request_tries - 1;
								s_general_error              <= '1';
							end if;
						end if;
					else
						-- Package CRC does not match
						-- check if maximum amout of tries was attempted (3 tries)
						if (s_request_tries > 0) then
							-- send a NACK
							s_ftdi_prot_controller_state <= HFCCD_NACK_SEND_TX_HEADER;
							v_ftdi_prot_controller_state := HFCCD_NACK_SEND_TX_HEADER;
							s_request_tries              <= s_request_tries - 1;
							s_general_error              <= '1';
						end if;
					end if;

				-- state "HFCCD_ACK_SEND_TX_HEADER"
				when HFCCD_ACK_SEND_TX_HEADER =>
					-- half-ccd request transmit reply ack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_ACK_WAIT_TX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_ACK_WAIT_TX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_ACK_WAIT_TX_HEADER"
				when HFCCD_ACK_WAIT_TX_HEADER =>
					-- half-ccd request wait reply ack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_ACK_WAIT_TX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_ACK_WAIT_TX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the transmission of the reply ack/nack is finished
					if (header_generator_busy_i = '0') then
						s_ftdi_prot_controller_state <= HFCCD_ACK_RESET_TX_HEADER;
						v_ftdi_prot_controller_state := HFCCD_ACK_RESET_TX_HEADER;
					end if;

				-- state "HFCCD_ACK_RESET_TX_HEADER"
				when HFCCD_ACK_RESET_TX_HEADER =>
					-- half-ccd request reset reply ack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REPLY_RECEIVE_RX_PAYLOAD;
					v_ftdi_prot_controller_state         := HFCCD_REPLY_RECEIVE_RX_PAYLOAD;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_NACK_SEND_TX_HEADER"
				when HFCCD_NACK_SEND_TX_HEADER =>
					-- half-ccd request transmit reply nack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_NACK_WAIT_TX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_NACK_WAIT_TX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_NACK_WAIT_TX_HEADER"
				when HFCCD_NACK_WAIT_TX_HEADER =>
					-- half-ccd request wait reply nack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_NACK_WAIT_TX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_NACK_WAIT_TX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the transmission of the reply ack/nack is finished
					if (header_generator_busy_i = '0') then
						s_ftdi_prot_controller_state <= HFCCD_NACK_RESET_TX_HEADER;
						v_ftdi_prot_controller_state := HFCCD_NACK_RESET_TX_HEADER;
					end if;

				-- state "HFCCD_NACK_RESET_TX_HEADER"
				when HFCCD_NACK_RESET_TX_HEADER =>
					-- half-ccd request reset reply nack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REPLY_RECEIVE_RX_HEADER;
					v_ftdi_prot_controller_state         := HFCCD_REPLY_RECEIVE_RX_HEADER;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_REPLY_RECEIVE_RX_PAYLOAD"
				when HFCCD_REPLY_RECEIVE_RX_PAYLOAD =>
					-- half-ccd request receive reply payload
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REPLY_WAIT_RX_PAYLOAD;
					v_ftdi_prot_controller_state         := HFCCD_REPLY_WAIT_RX_PAYLOAD;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_REPLY_WAIT_RX_PAYLOAD"
				when HFCCD_REPLY_WAIT_RX_PAYLOAD =>
					-- half-ccd request wait reply payload
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REPLY_WAIT_RX_PAYLOAD;
					v_ftdi_prot_controller_state         := HFCCD_REPLY_WAIT_RX_PAYLOAD;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the receival of the reply payload is finished
					if (payload_reader_busy_i = '0') then
						s_ftdi_prot_controller_state <= HFCCD_REPLY_PARSE_RX_PAYLOAD;
						v_ftdi_prot_controller_state := HFCCD_REPLY_PARSE_RX_PAYLOAD;
					end if;

				-- state "HFCCD_REPLY_PARSE_RX_PAYLOAD"
				when HFCCD_REPLY_PARSE_RX_PAYLOAD =>
					-- half-ccd request parse reply payload
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_ACK_SEND_TX_PAYLOAD;
					v_ftdi_prot_controller_state         := HFCCD_ACK_SEND_TX_PAYLOAD;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the arriving package passed the CRC check
					if (payload_reader_crc32_match_i = '1') then
						-- CRC matched, package is reliable
						-- check if an error was not detected
						if (payload_reader_eop_error_i = '0') then
							-- send a ACK
							s_ftdi_prot_controller_state <= HFCCD_ACK_SEND_TX_PAYLOAD;
							v_ftdi_prot_controller_state := HFCCD_ACK_SEND_TX_PAYLOAD;
						else
							-- send a NACK
							s_ftdi_prot_controller_state <= HFCCD_NACK_SEND_TX_PAYLOAD;
							v_ftdi_prot_controller_state := HFCCD_NACK_SEND_TX_PAYLOAD;
							s_general_error              <= '1';
						end if;
					else
						-- Package CRC does not match
						-- send a NACK
						s_ftdi_prot_controller_state <= HFCCD_NACK_SEND_TX_PAYLOAD;
						v_ftdi_prot_controller_state := HFCCD_NACK_SEND_TX_PAYLOAD;
						s_general_error              <= '1';
					end if;

				-- state "HFCCD_ACK_SEND_TX_PAYLOAD"
				when HFCCD_ACK_SEND_TX_PAYLOAD =>
					-- half-ccd request transmit payload ack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_ACK_WAIT_TX_PAYLOAD;
					v_ftdi_prot_controller_state         := HFCCD_ACK_WAIT_TX_PAYLOAD;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_ACK_WAIT_TX_PAYLOAD"
				when HFCCD_ACK_WAIT_TX_PAYLOAD =>
					-- half-ccd request wait payload ack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_ACK_WAIT_TX_PAYLOAD;
					v_ftdi_prot_controller_state         := HFCCD_ACK_WAIT_TX_PAYLOAD;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the transmission of the payload ack/nack is finished
					if (header_generator_busy_i = '0') then
						s_ftdi_prot_controller_state <= HFCCD_ACK_RESET_TX_PAYLOAD;
						v_ftdi_prot_controller_state := HFCCD_ACK_RESET_TX_PAYLOAD;
					end if;

				-- state "HFCCD_ACK_RESET_TX_PAYLOAD"
				when HFCCD_ACK_RESET_TX_PAYLOAD =>
					-- half-ccd request reset payload ack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REQ_FINISH;
					v_ftdi_prot_controller_state         := HFCCD_REQ_FINISH;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_NACK_SEND_TX_PAYLOAD"
				when HFCCD_NACK_SEND_TX_PAYLOAD =>
					-- half-ccd request transmit payload nack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_NACK_WAIT_TX_PAYLOAD;
					v_ftdi_prot_controller_state         := HFCCD_NACK_WAIT_TX_PAYLOAD;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_NACK_WAIT_TX_PAYLOAD"
				when HFCCD_NACK_WAIT_TX_PAYLOAD =>
					-- half-ccd request wait payload nack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_NACK_WAIT_TX_PAYLOAD;
					v_ftdi_prot_controller_state         := HFCCD_NACK_WAIT_TX_PAYLOAD;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if the transmission of the payload ack/nack is finished
					if (header_generator_busy_i = '0') then
						s_ftdi_prot_controller_state <= HFCCD_NACK_RESET_TX_PAYLOAD;
						v_ftdi_prot_controller_state := HFCCD_NACK_RESET_TX_PAYLOAD;
					end if;

				-- state "HFCCD_NACK_RESET_TX_PAYLOAD"
				when HFCCD_NACK_RESET_TX_PAYLOAD =>
					-- half-ccd request reset payload nack
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REQ_FINISH;
					v_ftdi_prot_controller_state         := HFCCD_REQ_FINISH;
					-- default internal signal values
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
				-- conditional state transition

				-- state "HFCCD_REQ_FINISH"
				when HFCCD_REQ_FINISH =>
					-- half-ccd request finish
					-- default state transition
					s_ftdi_prot_controller_state         <= HFCCD_REQ_FINISH;
					v_ftdi_prot_controller_state         := HFCCD_REQ_FINISH;
					-- default internal signal values
					s_request_tries                      <= 0;
					s_general_error                      <= '0';
					s_err_half_ccd_request_nack_err      <= '0';
					s_err_half_ccd_reply_header_crc_err  <= '0';
					s_err_half_ccd_reply_eoh_err         <= '0';
					s_err_half_ccd_reply_payload_crc_err <= '0';
					s_err_half_ccd_reply_eop_err         <= '0';
					s_err_half_ccd_req_max_tries_err     <= '0';
					s_err_half_ccd_reply_ccd_size_err    <= '0';
					s_err_half_ccd_req_timeout_err       <= '0';
					-- conditional state transition
					-- check if a reset was requested
					if (req_half_ccd_reset_controller_i = '1') then
						s_ftdi_prot_controller_state         <= IDLE;
						v_ftdi_prot_controller_state         := IDLE;
						s_registered_request_data            <= c_FTDI_PROT_HEADER_RESET;
						s_parsed_reply_header_data           <= c_FTDI_PROT_HEADER_RESET;
						s_request_tries                      <= 0;
						s_general_error                      <= '0';
						s_err_half_ccd_request_nack_err      <= '0';
						s_err_half_ccd_reply_header_crc_err  <= '0';
						s_err_half_ccd_reply_eoh_err         <= '0';
						s_err_half_ccd_reply_payload_crc_err <= '0';
						s_err_half_ccd_reply_eop_err         <= '0';
						s_err_half_ccd_req_max_tries_err     <= '0';
						s_err_half_ccd_reply_ccd_size_err    <= '0';
						s_err_half_ccd_req_timeout_err       <= '0';
					end if;

				-- all the other states (not defined)
				when others =>
					s_ftdi_prot_controller_state <= STOPPED;
					v_ftdi_prot_controller_state := STOPPED;

			end case;

			-- check if a stop command was received
			if (data_stop_i = '1') then
				s_ftdi_prot_controller_state <= STOPPED;
				v_ftdi_prot_controller_state := STOPPED;
			end if;

			-- Output generation FSM
			case (v_ftdi_prot_controller_state) is

				-- state "STOPPED"
				when STOPPED =>
					-- protocol controller stopped
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '0';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "IDLE"
				when IDLE =>
					-- protocol controller idle
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '0';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REQ_START"
				when HFCCD_REQ_START =>
					-- half-ccd request start
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REQ_SEND_TX_HEADER"
				when HFCCD_REQ_SEND_TX_HEADER =>
					-- half-ccd request transmit request header
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '1';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= s_registered_request_data;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REQ_WAIT_TX_HEADER"
				when HFCCD_REQ_WAIT_TX_HEADER =>
					-- half-ccd request wait request header
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REQ_RESET_TX_HEADER"
				when HFCCD_REQ_RESET_TX_HEADER =>
					-- half-ccd request reset request header
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '1';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_ACK_RECEIVE_RX_HEADER"
				when HFCCD_ACK_RECEIVE_RX_HEADER =>
					-- half-ccd request receive request ack/nack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '1';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_ACK_WAIT_RX_HEADER"
				when HFCCD_ACK_WAIT_RX_HEADER =>
					-- half-ccd request wait request ack/nack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_ACK_PARSE_RX_HEADER"
				when HFCCD_ACK_PARSE_RX_HEADER =>
					-- half-ccd request parse request ack/nack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '1';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REPLY_RECEIVE_RX_HEADER"
				when HFCCD_REPLY_RECEIVE_RX_HEADER =>
					-- half-ccd request receive reply header
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '1';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REPLY_WAIT_RX_HEADER"
				when HFCCD_REPLY_WAIT_RX_HEADER =>
					-- half-ccd request wait reply header
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REPLY_PARSE_RX_HEADER"
				when HFCCD_REPLY_PARSE_RX_HEADER =>
					-- half-ccd request parse reply header
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '1';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_ACK_SEND_TX_HEADER"
				when HFCCD_ACK_SEND_TX_HEADER =>
					-- half-ccd request transmit reply ack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '1';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_ACK_OK;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_ACK_WAIT_TX_HEADER"
				when HFCCD_ACK_WAIT_TX_HEADER =>
					-- half-ccd request wait reply ack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_ACK_RESET_TX_HEADER"
				when HFCCD_ACK_RESET_TX_HEADER =>
					-- half-ccd request reset reply ack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '1';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_NACK_SEND_TX_HEADER"
				when HFCCD_NACK_SEND_TX_HEADER =>
					-- half-ccd request transmit reply nack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '1';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_NACK_ERROR;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_NACK_WAIT_TX_HEADER"
				when HFCCD_NACK_WAIT_TX_HEADER =>
					-- half-ccd request wait reply nack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_NACK_RESET_TX_HEADER"
				when HFCCD_NACK_RESET_TX_HEADER =>
					-- half-ccd request reset reply nack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '1';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REPLY_RECEIVE_RX_PAYLOAD"
				when HFCCD_REPLY_RECEIVE_RX_PAYLOAD =>
					-- half-ccd request receive reply payload
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '1';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= s_parsed_reply_header_data.payload_length;
				-- conditional output signals

				-- state "HFCCD_REPLY_WAIT_RX_PAYLOAD"
				when HFCCD_REPLY_WAIT_RX_PAYLOAD =>
					-- half-ccd request wait reply payload
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REPLY_PARSE_RX_PAYLOAD"
				when HFCCD_REPLY_PARSE_RX_PAYLOAD =>
					-- half-ccd request parse reply payload
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '1';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_ACK_SEND_TX_PAYLOAD"
				when HFCCD_ACK_SEND_TX_PAYLOAD =>
					-- half-ccd request transmit payload ack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '1';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_ACK_OK;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_ACK_WAIT_TX_PAYLOAD"
				when HFCCD_ACK_WAIT_TX_PAYLOAD =>
					-- half-ccd request wait payload ack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_ACK_RESET_TX_PAYLOAD"
				when HFCCD_ACK_RESET_TX_PAYLOAD =>
					-- half-ccd request reset payload ack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '1';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_NACK_SEND_TX_PAYLOAD"
				when HFCCD_NACK_SEND_TX_PAYLOAD =>
					-- half-ccd request transmit payload nack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '1';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_NACK_ERROR;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_NACK_WAIT_TX_PAYLOAD"
				when HFCCD_NACK_WAIT_TX_PAYLOAD =>
					-- half-ccd request wait payload nack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_NACK_RESET_TX_PAYLOAD"
				when HFCCD_NACK_RESET_TX_PAYLOAD =>
					-- half-ccd request reset payload nack
					-- default output signals
					rly_half_ccd_fee_number_o            <= (others => '0');
					rly_half_ccd_ccd_number_o            <= (others => '0');
					rly_half_ccd_ccd_side_o              <= '0';
					rly_half_ccd_height_o                <= (others => '0');
					rly_half_ccd_width_o                 <= (others => '0');
					rly_half_ccd_exposure_number_o       <= (others => '0');
					rly_half_ccd_image_length_bytes_o    <= (others => '0');
					rly_half_ccd_received_o              <= '0';
					rly_half_ccd_controller_busy_o       <= '1';
					err_half_ccd_request_nack_err_o      <= '0';
					err_half_ccd_reply_header_crc_err_o  <= '0';
					err_half_ccd_reply_eoh_err_o         <= '0';
					err_half_ccd_reply_payload_crc_err_o <= '0';
					err_half_ccd_reply_eop_err_o         <= '0';
					err_half_ccd_req_max_tries_err_o     <= '0';
					err_half_ccd_reply_ccd_size_err_o    <= '0';
					err_half_ccd_req_timeout_err_o       <= '0';
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '1';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
				-- conditional output signals

				-- state "HFCCD_REQ_FINISH"
				when HFCCD_REQ_FINISH =>
					-- half-ccd request finish
					-- default output signals
					rly_half_ccd_fee_number_o            <= s_parsed_reply_header_data.image_selection.fee_number;
					rly_half_ccd_ccd_number_o            <= s_parsed_reply_header_data.image_selection.ccd_number;
					rly_half_ccd_ccd_side_o              <= s_parsed_reply_header_data.image_selection.ccd_side;
					rly_half_ccd_height_o                <= s_parsed_reply_header_data.image_size.ccd_height;
					rly_half_ccd_width_o                 <= s_parsed_reply_header_data.image_size.ccd_width;
					rly_half_ccd_exposure_number_o       <= s_parsed_reply_header_data.exposure_number;
					rly_half_ccd_image_length_bytes_o    <= s_parsed_reply_header_data.payload_length;
					rly_half_ccd_received_o              <= '1';
					rly_half_ccd_controller_busy_o       <= '0';
					err_half_ccd_request_nack_err_o      <= s_err_half_ccd_request_nack_err;
					err_half_ccd_reply_header_crc_err_o  <= s_err_half_ccd_reply_header_crc_err;
					err_half_ccd_reply_eoh_err_o         <= s_err_half_ccd_reply_eoh_err;
					err_half_ccd_reply_payload_crc_err_o <= s_err_half_ccd_reply_payload_crc_err;
					err_half_ccd_reply_eop_err_o         <= s_err_half_ccd_reply_eop_err;
					err_half_ccd_req_max_tries_err_o     <= s_err_half_ccd_req_max_tries_err;
					err_half_ccd_reply_ccd_size_err_o    <= s_err_half_ccd_reply_ccd_size_err;
					err_half_ccd_req_timeout_err_o       <= s_err_half_ccd_req_timeout_err;
					header_generator_start_o             <= '0';
					header_generator_reset_o             <= '0';
					header_generator_data_o              <= c_FTDI_PROT_HEADER_RESET;
					header_parser_start_o                <= '0';
					header_parser_reset_o                <= '0';
					payload_writer_start_o               <= '0';
					payload_writer_reset_o               <= '0';
					payload_writer_length_bytes_o        <= (others => '0');
					payload_reader_start_o               <= '0';
					payload_reader_reset_o               <= '0';
					payload_reader_length_bytes_o        <= (others => '0');
					-- conditional output signals

			end case;

		end if;
	end process p_ftdi_protocol_controller;

	-- Signals Assignments --

	-- Error State Assignments
	err_rx_comm_err_state_o             <= (s_err_half_ccd_request_nack_err) or (s_err_half_ccd_reply_header_crc_err) or (s_err_half_ccd_reply_eoh_err) or (s_err_half_ccd_reply_payload_crc_err) or (s_err_half_ccd_reply_eop_err) or (s_err_half_ccd_req_max_tries_err) or (s_err_half_ccd_reply_ccd_size_err) or (s_err_half_ccd_req_timeout_err);
	-- Error Code Assignments
	err_rx_comm_err_code_o(0)           <= s_err_half_ccd_request_nack_err;
	err_rx_comm_err_code_o(1)           <= s_err_half_ccd_reply_header_crc_err;
	err_rx_comm_err_code_o(2)           <= s_err_half_ccd_reply_eoh_err;
	err_rx_comm_err_code_o(3)           <= s_err_half_ccd_reply_payload_crc_err;
	err_rx_comm_err_code_o(4)           <= s_err_half_ccd_reply_eop_err;
	err_rx_comm_err_code_o(5)           <= s_err_half_ccd_req_max_tries_err;
	err_rx_comm_err_code_o(6)           <= s_err_half_ccd_reply_ccd_size_err;
	err_rx_comm_err_code_o(7)           <= s_err_half_ccd_req_timeout_err;
	err_rx_comm_err_code_o(15 downto 8) <= (others => '0');

end architecture RTL;
