# TCL File Generated by Component Editor 18.1
# Wed Jun 12 14:05:05 BRT 2019
# DO NOT MODIFY


# 
# USB_3_FTDI "FTDI_UMFT601A_Module" v1.4
#  2019.06.12.14:05:05
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module USB_3_FTDI
# 
set_module_property DESCRIPTION ""
set_module_property NAME USB_3_FTDI
set_module_property VERSION 1.4
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME FTDI_UMFT601A_Module
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL USB_3_FTDI_top
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file ftdi_config_avalon_mm_registers_pkg.vhd VHDL PATH Usb_3_Ftdi/REGISTERS/ftdi_config_avalon_mm_registers_pkg.vhd
add_fileset_file ftdi_config_avalon_mm_pkg.vhd VHDL PATH Usb_3_Ftdi/CONFIG_AVALON_MM/ftdi_config_avalon_mm_pkg.vhd
add_fileset_file ftdi_config_avalon_mm_read_ent.vhd VHDL PATH Usb_3_Ftdi/CONFIG_AVALON_MM/ftdi_config_avalon_mm_read_ent.vhd
add_fileset_file ftdi_config_avalon_mm_write_ent.vhd VHDL PATH Usb_3_Ftdi/CONFIG_AVALON_MM/ftdi_config_avalon_mm_write_ent.vhd
add_fileset_file ftdi_data_avalon_mm_pkg.vhd VHDL PATH Usb_3_Ftdi/DATA_AVALON_MM/ftdi_data_avalon_mm_pkg.vhd
add_fileset_file ftdi_rx_data_avalon_mm_read_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_AVALON_MM/ftdi_rx_data_avalon_mm_read_ent.vhd
add_fileset_file ftdi_tx_data_avalon_mm_write_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_AVALON_MM/ftdi_tx_data_avalon_mm_write_ent.vhd
add_fileset_file data_buffer_sc_fifo.vhd VHDL PATH Usb_3_Ftdi/DATA_BUFFERS/altera_ip/scfifo/data_buffer_sc_fifo/data_buffer_sc_fifo.vhd
add_fileset_file data_buffer_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_BUFFERS/data_buffer_ent.vhd
add_fileset_file ftdi_data_receiver_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_data_receiver_ent.vhd
add_fileset_file ftdi_data_transmitter_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_data_transmitter_ent.vhd
add_fileset_file ftdi_data_loopback_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_data_loopback_ent.vhd
add_fileset_file ftdi_tx_data_mux_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_tx_data_mux_ent.vhd
add_fileset_file ftdi_rx_data_mux_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_rx_data_mux_ent.vhd
add_fileset_file ftdi_protocol_pkg.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_protocol_pkg.vhd
add_fileset_file ftdi_protocol_top.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_protocol_top.vhd
add_fileset_file ftdi_rx_protocol_header_parser_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_rx_protocol_header_parser_ent.vhd
add_fileset_file ftdi_rx_protocol_payload_reader_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_rx_protocol_payload_reader_ent.vhd
add_fileset_file ftdi_tx_protocol_header_generator_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_tx_protocol_header_generator_ent.vhd
add_fileset_file ftdi_tx_protocol_payload_writer_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_tx_protocol_payload_writer_ent.vhd
add_fileset_file ftdi_protocol_controller_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_protocol_controller_ent.vhd
add_fileset_file ftdi_protocol_crc_pkg.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_protocol_crc_pkg.vhd
add_fileset_file ftdi_data_dc_fifo.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/altera_ip/dcfifo/ftdi_data_dc_fifo/ftdi_data_dc_fifo.vhd
add_fileset_file ftdi_inout_io_buffer_39b.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/altera_ip/iobuffer/ftdi_inout_io_buffer_39b/ftdi_inout_io_buffer_39b.vhd
add_fileset_file ftdi_in_io_buffer_3b.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/altera_ip/iobuffer/ftdi_in_io_buffer_3b/ftdi_in_io_buffer_3b.vhd
add_fileset_file ftdi_out_io_buffer_5b.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/altera_ip/iobuffer/ftdi_out_io_buffer_5b/ftdi_out_io_buffer_5b.vhd
add_fileset_file ftdi_umft601a_controller_ent.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/ftdi_umft601a_controller_ent.vhd
add_fileset_file USB_3_FTDI_top.vhd VHDL PATH Usb_3_Ftdi/USB_3_FTDI_top.vhd TOP_LEVEL_FILE

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL USB_3_FTDI_top
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VHDL ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file ftdi_config_avalon_mm_registers_pkg.vhd VHDL PATH Usb_3_Ftdi/REGISTERS/ftdi_config_avalon_mm_registers_pkg.vhd
add_fileset_file ftdi_config_avalon_mm_pkg.vhd VHDL PATH Usb_3_Ftdi/CONFIG_AVALON_MM/ftdi_config_avalon_mm_pkg.vhd
add_fileset_file ftdi_config_avalon_mm_read_ent.vhd VHDL PATH Usb_3_Ftdi/CONFIG_AVALON_MM/ftdi_config_avalon_mm_read_ent.vhd
add_fileset_file ftdi_config_avalon_mm_write_ent.vhd VHDL PATH Usb_3_Ftdi/CONFIG_AVALON_MM/ftdi_config_avalon_mm_write_ent.vhd
add_fileset_file ftdi_data_avalon_mm_pkg.vhd VHDL PATH Usb_3_Ftdi/DATA_AVALON_MM/ftdi_data_avalon_mm_pkg.vhd
add_fileset_file ftdi_rx_data_avalon_mm_read_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_AVALON_MM/ftdi_rx_data_avalon_mm_read_ent.vhd
add_fileset_file ftdi_tx_data_avalon_mm_write_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_AVALON_MM/ftdi_tx_data_avalon_mm_write_ent.vhd
add_fileset_file data_buffer_sc_fifo.vhd VHDL PATH Usb_3_Ftdi/DATA_BUFFERS/altera_ip/scfifo/data_buffer_sc_fifo/data_buffer_sc_fifo.vhd
add_fileset_file data_buffer_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_BUFFERS/data_buffer_ent.vhd
add_fileset_file ftdi_data_receiver_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_data_receiver_ent.vhd
add_fileset_file ftdi_data_transmitter_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_data_transmitter_ent.vhd
add_fileset_file ftdi_data_loopback_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_data_loopback_ent.vhd
add_fileset_file ftdi_tx_data_mux_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_tx_data_mux_ent.vhd
add_fileset_file ftdi_rx_data_mux_ent.vhd VHDL PATH Usb_3_Ftdi/DATA_CONTROLLER/ftdi_rx_data_mux_ent.vhd
add_fileset_file ftdi_protocol_pkg.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_protocol_pkg.vhd
add_fileset_file ftdi_protocol_top.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_protocol_top.vhd
add_fileset_file ftdi_rx_protocol_header_parser_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_rx_protocol_header_parser_ent.vhd
add_fileset_file ftdi_rx_protocol_payload_reader_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_rx_protocol_payload_reader_ent.vhd
add_fileset_file ftdi_tx_protocol_header_generator_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_tx_protocol_header_generator_ent.vhd
add_fileset_file ftdi_tx_protocol_payload_writer_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_tx_protocol_payload_writer_ent.vhd
add_fileset_file ftdi_protocol_controller_ent.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_protocol_controller_ent.vhd
add_fileset_file ftdi_protocol_crc_pkg.vhd VHDL PATH Usb_3_Ftdi/PROTOCOL/ftdi_protocol_crc_pkg.vhd
add_fileset_file ftdi_data_dc_fifo.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/altera_ip/dcfifo/ftdi_data_dc_fifo/ftdi_data_dc_fifo.vhd
add_fileset_file ftdi_inout_io_buffer_39b.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/altera_ip/iobuffer/ftdi_inout_io_buffer_39b/ftdi_inout_io_buffer_39b.vhd
add_fileset_file ftdi_in_io_buffer_3b.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/altera_ip/iobuffer/ftdi_in_io_buffer_3b/ftdi_in_io_buffer_3b.vhd
add_fileset_file ftdi_out_io_buffer_5b.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/altera_ip/iobuffer/ftdi_out_io_buffer_5b/ftdi_out_io_buffer_5b.vhd
add_fileset_file ftdi_umft601a_controller_ent.vhd VHDL PATH Usb_3_Ftdi/FTDI_CONTROLLER/ftdi_umft601a_controller_ent.vhd
add_fileset_file USB_3_FTDI_top.vhd VHDL PATH Usb_3_Ftdi/USB_3_FTDI_top.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clock_sink_clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink reset_sink_reset reset Input 1


# 
# connection point conduit_umft_pins
# 
add_interface conduit_umft_pins conduit end
set_interface_property conduit_umft_pins associatedClock clock_sink
set_interface_property conduit_umft_pins associatedReset reset_sink
set_interface_property conduit_umft_pins ENABLED true
set_interface_property conduit_umft_pins EXPORT_OF ""
set_interface_property conduit_umft_pins PORT_NAME_MAP ""
set_interface_property conduit_umft_pins CMSIS_SVD_VARIABLES ""
set_interface_property conduit_umft_pins SVD_ADDRESS_GROUP ""

add_interface_port conduit_umft_pins umft_data_bus umft_data_signal Bidir 32
add_interface_port conduit_umft_pins umft_reset_n_pin umft_reset_n_signal Output 1
add_interface_port conduit_umft_pins umft_rxf_n_pin umft_rxf_n_signal Input 1
add_interface_port conduit_umft_pins umft_clock_pin umft_clock_signal Input 1
add_interface_port conduit_umft_pins umft_wakeup_n_pin umft_wakeup_n_signal Bidir 1
add_interface_port conduit_umft_pins umft_be_bus umft_be_signal Bidir 4
add_interface_port conduit_umft_pins umft_txe_n_pin umft_txe_n_signal Input 1
add_interface_port conduit_umft_pins umft_gpio_bus umft_gpio_bus_signal Bidir 2
add_interface_port conduit_umft_pins umft_wr_n_pin umft_wr_n_signal Output 1
add_interface_port conduit_umft_pins umft_rd_n_pin umft_rd_n_signal Output 1
add_interface_port conduit_umft_pins umft_oe_n_pin umft_oe_n_signal Output 1
add_interface_port conduit_umft_pins umft_siwu_n_pin umft_siwu_n_signal Output 1


# 
# connection point avalon_slave_config
# 
add_interface avalon_slave_config avalon end
set_interface_property avalon_slave_config addressUnits WORDS
set_interface_property avalon_slave_config associatedClock clock_sink
set_interface_property avalon_slave_config associatedReset reset_sink
set_interface_property avalon_slave_config bitsPerSymbol 8
set_interface_property avalon_slave_config burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_config burstcountUnits WORDS
set_interface_property avalon_slave_config explicitAddressSpan 0
set_interface_property avalon_slave_config holdTime 0
set_interface_property avalon_slave_config linewrapBursts false
set_interface_property avalon_slave_config maximumPendingReadTransactions 0
set_interface_property avalon_slave_config maximumPendingWriteTransactions 0
set_interface_property avalon_slave_config readLatency 0
set_interface_property avalon_slave_config readWaitTime 1
set_interface_property avalon_slave_config setupTime 0
set_interface_property avalon_slave_config timingUnits Cycles
set_interface_property avalon_slave_config writeWaitTime 0
set_interface_property avalon_slave_config ENABLED true
set_interface_property avalon_slave_config EXPORT_OF ""
set_interface_property avalon_slave_config PORT_NAME_MAP ""
set_interface_property avalon_slave_config CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_config SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_config avalon_slave_config_address address Input 8
add_interface_port avalon_slave_config avalon_slave_config_write write Input 1
add_interface_port avalon_slave_config avalon_slave_config_read read Input 1
add_interface_port avalon_slave_config avalon_slave_config_readdata readdata Output 32
add_interface_port avalon_slave_config avalon_slave_config_writedata writedata Input 32
add_interface_port avalon_slave_config avalon_slave_config_waitrequest waitrequest Output 1
add_interface_port avalon_slave_config avalon_slave_config_byteenable byteenable Input 4
set_interface_assignment avalon_slave_config embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_config embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_config embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_config embeddedsw.configuration.isPrintableDevice 0



# 
# connection point avalon_slave_data
# 
add_interface avalon_slave_data avalon end
set_interface_property avalon_slave_data addressUnits WORDS
set_interface_property avalon_slave_data associatedClock clock_sink
set_interface_property avalon_slave_data associatedReset reset_sink
set_interface_property avalon_slave_data bitsPerSymbol 8
set_interface_property avalon_slave_data burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_data burstcountUnits WORDS
set_interface_property avalon_slave_data explicitAddressSpan 0
set_interface_property avalon_slave_data holdTime 0
set_interface_property avalon_slave_data linewrapBursts false
set_interface_property avalon_slave_data maximumPendingReadTransactions 0
set_interface_property avalon_slave_data maximumPendingWriteTransactions 0
set_interface_property avalon_slave_data readLatency 0
set_interface_property avalon_slave_data readWaitTime 1
set_interface_property avalon_slave_data setupTime 0
set_interface_property avalon_slave_data timingUnits Cycles
set_interface_property avalon_slave_data writeWaitTime 0
set_interface_property avalon_slave_data ENABLED true
set_interface_property avalon_slave_data EXPORT_OF ""
set_interface_property avalon_slave_data PORT_NAME_MAP ""
set_interface_property avalon_slave_data CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_data SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_data avalon_slave_data_address address Input 8
add_interface_port avalon_slave_data avalon_slave_data_write write Input 1
add_interface_port avalon_slave_data avalon_slave_data_read read Input 1
add_interface_port avalon_slave_data avalon_slave_data_writedata writedata Input 256
add_interface_port avalon_slave_data avalon_slave_data_readdata readdata Output 256
add_interface_port avalon_slave_data avalon_slave_data_waitrequest waitrequest Output 1
set_interface_assignment avalon_slave_data embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_data embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_data embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_data embeddedsw.configuration.isPrintableDevice 0



# 
# connection point ftdi_interrupt_sender
# 
add_interface ftdi_interrupt_sender interrupt end
set_interface_property ftdi_interrupt_sender associatedAddressablePoint ""
set_interface_property ftdi_interrupt_sender associatedClock clock_sink
set_interface_property ftdi_interrupt_sender associatedReset reset_sink
set_interface_property ftdi_interrupt_sender bridgedReceiverOffset ""
set_interface_property ftdi_interrupt_sender bridgesToReceiver ""
set_interface_property ftdi_interrupt_sender ENABLED true
set_interface_property ftdi_interrupt_sender EXPORT_OF ""
set_interface_property ftdi_interrupt_sender PORT_NAME_MAP ""
set_interface_property ftdi_interrupt_sender CMSIS_SVD_VARIABLES ""
set_interface_property ftdi_interrupt_sender SVD_ADDRESS_GROUP ""

add_interface_port ftdi_interrupt_sender ftdi_interrupt_sender_irq irq Output 1
