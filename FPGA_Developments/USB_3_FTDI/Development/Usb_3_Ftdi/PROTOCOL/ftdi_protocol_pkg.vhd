library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package ftdi_protocol_pkg is

	constant c_FTDI_PROT_HEADER_SIZE : natural := 8;

	constant c_FTDI_PROT_START_OF_PACKAGE : std_logic_vector(31 downto 0) := x"55555555";
	constant c_FTDI_PROT_END_OF_HEADER    : std_logic_vector(31 downto 0) := x"33333333";
	constant c_FTDI_PROT_END_OF_PAYLOAD   : std_logic_vector(31 downto 0) := x"77777777";

	constant c_FTDI_PROT_PKG_ID_HALF_CCD_REQUEST : std_logic_vector(31 downto 0) := x"01010101";
	constant c_FTDI_PROT_PKG_ID_HALF_CCD_REPLY   : std_logic_vector(31 downto 0) := x"02020202";
	constant c_FTDI_PROT_PKG_ID_LUT_TRANSMISSION : std_logic_vector(31 downto 0) := x"03030303";
	constant c_FTDI_PROT_PKG_ID_NACK_ERROR       : std_logic_vector(31 downto 0) := x"10101010";
	constant c_FTDI_PROT_PKG_ID_ACK_OK           : std_logic_vector(31 downto 0) := x"20202020";
	constant c_FTDI_PROT_PKG_ID_WRONG_IMG_SIZE   : std_logic_vector(31 downto 0) := x"30303030";

	constant c_FTDI_PROT_IMG_SEL_FEE_NUMBER_MAX : natural   := 5; -- range: 0 to 5
	constant c_FTDI_PROT_IMG_SEL_CCD_NUMBER_MAX : natural   := 3; -- range: 0 to 3
	constant c_FTDI_PROT_IMG_SEL_CCD_SIDE_LEFT  : std_logic := '0';
	constant c_FTDI_PROT_IMG_SEL_CCD_SIDE_RIGHT : std_logic := '1';

	constant c_FTDI_PROT_IMG_SIZE_CCD_HEIGHT_MAX : positive := 4540; -- range: 1 to 4540
	constant c_FTDI_PROT_IMG_SIZE_CCD_WIDTH_MAX  : positive := 2295; -- range: 1 to 2295

	constant c_FTDI_PROT_EXPOSURE_NUMBER_MAX : natural := 65535; -- range: 0 to 65535

	type t_ftdi_prot_header_img_sel is record
		fee_number : std_logic_vector(2 downto 0);
		ccd_number : std_logic_vector(1 downto 0);
		ccd_side   : std_logic;
	end record t_ftdi_prot_header_img_sel;

	type t_ftdi_prot_header_img_size is record
		ccd_height : std_logic_vector(12 downto 0);
		ccd_width  : std_logic_vector(11 downto 0);
	end record t_ftdi_prot_header_img_size;

	type t_ftdi_prot_header_fields is record
		package_id      : std_logic_vector(31 downto 0);
		image_selection : t_ftdi_prot_header_img_sel;
		image_size      : t_ftdi_prot_header_img_size;
		exposure_number : std_logic_vector(15 downto 0);
		payload_length  : std_logic_vector(31 downto 0);
	end record t_ftdi_prot_header_fields;

	type t_ftdi_prot_halfccd_req_config is record
		image_selection : t_ftdi_prot_header_img_sel;
		image_size      : t_ftdi_prot_header_img_size;
		exposure_number : std_logic_vector(15 downto 0);
		payload_length  : std_logic_vector(31 downto 0);
	end record t_ftdi_prot_halfccd_req_config;

	constant c_FTDI_PROT_HEADER_IMG_SEL_RESET : t_ftdi_prot_header_img_sel := (
		fee_number => std_logic_vector(to_unsigned(0, 3)),
		ccd_number => std_logic_vector(to_unsigned(0, 2)),
		ccd_side   => '0'
	);

	constant c_FTDI_PROT_HEADER_IMG_SIZE_RESET : t_ftdi_prot_header_img_size := (
		ccd_height => std_logic_vector(to_unsigned(1, 13)),
		ccd_width  => std_logic_vector(to_unsigned(1, 12))
	);

	constant c_FTDI_PROT_HEADER_RESET : t_ftdi_prot_header_fields := (
		package_id      => x"00000000",
		image_selection => c_FTDI_PROT_HEADER_IMG_SEL_RESET,
		image_size      => c_FTDI_PROT_HEADER_IMG_SIZE_RESET,
		exposure_number => std_logic_vector(to_unsigned(0, 16)),
		payload_length  => std_logic_vector(to_unsigned(0, 32))
	);

end package ftdi_protocol_pkg;

package body ftdi_protocol_pkg is

end package body ftdi_protocol_pkg;
