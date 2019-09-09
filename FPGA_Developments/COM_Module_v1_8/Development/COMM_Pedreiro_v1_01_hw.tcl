# TCL File Generated by Component Editor 18.1
# Thu Aug 15 20:34:01 BRT 2019
# DO NOT MODIFY


# 
# COMM_Pedreiro_v1_01 "COMM_Pedreiro_v1_01" v1.9
#  2019.08.15.20:34:01
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module COMM_Pedreiro_v1_01
# 
set_module_property DESCRIPTION ""
set_module_property NAME COMM_Pedreiro_v1_01
set_module_property VERSION 1.9
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME COMM_Pedreiro_v1_01
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL comm_v1_80_top
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avalon_mm_spacewire_registers_pkg.vhd VHDL PATH Communications_Module_v1_8/REGISTERS/avalon_mm_spacewire_registers_pkg.vhd
add_fileset_file avalon_mm_spacewire_pkg.vhd VHDL PATH Communications_Module_v1_8/AVALON_SPACEWIRE_REGISTERS/avalon_mm_spacewire_pkg.vhd
add_fileset_file avalon_mm_spacewire_read_ent.vhd VHDL PATH Communications_Module_v1_8/AVALON_SPACEWIRE_REGISTERS/avalon_mm_spacewire_read_ent.vhd
add_fileset_file avalon_mm_spacewire_write_ent.vhd VHDL PATH Communications_Module_v1_8/AVALON_SPACEWIRE_REGISTERS/avalon_mm_spacewire_write_ent.vhd
add_fileset_file windowing_dataset_pkg.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_dataset_pkg.vhd
add_fileset_file avalon_mm_windowing_pkg.vhd VHDL PATH Communications_Module_v1_8/AVALON_WINDOWING_BUFFER/avalon_mm_windowing_pkg.vhd
add_fileset_file avalon_mm_windowing_write_ent.vhd VHDL PATH Communications_Module_v1_8/AVALON_WINDOWING_BUFFER/avalon_mm_windowing_write_ent.vhd
add_fileset_file windowing_large_avsbuff_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/altera_ipcore/scfifo/windowing_large_avsbuff_sc_fifo/windowing_large_avsbuff_sc_fifo.vhd
add_fileset_file windowing_small_avsbuff_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/altera_ipcore/scfifo/windowing_small_avsbuff_sc_fifo/windowing_small_avsbuff_sc_fifo.vhd
add_fileset_file windowing_data_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/altera_ipcore/scfifo/windowing_data_sc_fifo/windowing_data_sc_fifo.vhd
add_fileset_file windowing_mask_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/altera_ipcore/scfifo/windowing_mask_sc_fifo/windowing_mask_sc_fifo.vhd
add_fileset_file windowing_fifo_pkg.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_fifo_pkg.vhd
add_fileset_file windowing_data_fifo_ent.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_data_fifo_ent.vhd
add_fileset_file windowing_mask_fifo_ent.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_mask_fifo_ent.vhd
add_fileset_file windowing_buffer_ent.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_buffer_ent.vhd
add_fileset_file data_controller_ent.vhd VHDL PATH Communications_Module_v1_8/DATA_CONTROLLER/data_controller_ent.vhd
add_fileset_file spwpkg.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwpkg.vhd
add_fileset_file syncdff.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/syncdff.vhd
add_fileset_file spwram.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwram.vhd
add_fileset_file spwrecv.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwrecv.vhd
add_fileset_file streamtest.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/streamtest.vhd
add_fileset_file spwxmit.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwxmit.vhd
add_fileset_file spwstream.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwstream.vhd
add_fileset_file spwrecvfront_generic.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwrecvfront_generic.vhd
add_fileset_file spwrecvfront_fast.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwrecvfront_fast.vhd
add_fileset_file spwlink.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwlink.vhd
add_fileset_file spwxmit_fast.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwxmit_fast.vhd
add_fileset_file spw_codec_pkg.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spw_codec_pkg.vhd
add_fileset_file spw_codec.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spw_codec.vhd
add_fileset_file spw_mux_ent.vhd VHDL PATH Communications_Module_v1_8/SPW_MUX/spw_mux_ent.vhd
add_fileset_file spw_data_dc_fifo.vhd VHDL PATH Communications_Module_v1_8/SPW_CLK_SYNCHRONIZATION/altera_ipcore/dcfifo/spw_data_dc_fifo/spw_data_dc_fifo.vhd
add_fileset_file spw_timecode_dc_fifo.vhd VHDL PATH Communications_Module_v1_8/SPW_CLK_SYNCHRONIZATION/altera_ipcore/dcfifo/spw_timecode_dc_fifo/spw_timecode_dc_fifo.vhd
add_fileset_file spw_clk_synchronization_ent.vhd VHDL PATH Communications_Module_v1_8/SPW_CLK_SYNCHRONIZATION/spw_clk_synchronization_ent.vhd
add_fileset_file rmap_mem_area_nfee_pkg.vhd VHDL PATH Communications_Module_v1_8/RMAP_MEMORY/rmap_mem_area_nfee_pkg.vhd
add_fileset_file rmap_mem_area_nfee_read.vhd VHDL PATH Communications_Module_v1_8/RMAP_MEMORY/rmap_mem_area_nfee_read.vhd
add_fileset_file rmap_mem_area_nfee_write.vhd VHDL PATH Communications_Module_v1_8/RMAP_MEMORY/rmap_mem_area_nfee_write.vhd
add_fileset_file rmap_target_crc_pkg.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_crc_pkg.vhd
add_fileset_file rmap_target_pkg.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_pkg.vhd
add_fileset_file rmap_target_command_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_command_ent.vhd
add_fileset_file rmap_target_read_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_read_ent.vhd
add_fileset_file rmap_target_reply_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_reply_ent.vhd
add_fileset_file rmap_target_write_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_write_ent.vhd
add_fileset_file rmap_target_user_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_user_ent.vhd
add_fileset_file rmap_target_top.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_top.vhd
add_fileset_file delay_block_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/MASKING_MACHINE/delay_block_ent.vhd
add_fileset_file masking_machine_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/MASKING_MACHINE/altera_ip/scfifo/masking_machine_sc_fifo/masking_machine_sc_fifo.vhd
add_fileset_file masking_machine_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/MASKING_MACHINE/masking_machine_ent.vhd
add_fileset_file data_packet_header_gen_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/DATA_PACKET/data_packet_header_gen_ent.vhd
add_fileset_file data_packet_hk_writer_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/DATA_PACKET/data_packet_hk_writer_ent.vhd
add_fileset_file data_packet_data_writer_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/DATA_PACKET/data_packet_data_writer_ent.vhd
add_fileset_file send_buffer_0_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/SEND_BUFFER/altera_ip/scfifo/send_buffer_0_sc_fifo/send_buffer_0_sc_fifo.vhd
add_fileset_file send_buffer_1_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/SEND_BUFFER/altera_ip/scfifo/send_buffer_1_sc_fifo/send_buffer_1_sc_fifo.vhd
add_fileset_file send_buffer_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/SEND_BUFFER/send_buffer_ent.vhd
add_fileset_file data_transmitter_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/DATA_TRANSMITTER/data_transmitter_ent.vhd
add_fileset_file fee_master_data_manager_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/FEE_DATA_MANAGER/fee_master_data_manager_ent.vhd
add_fileset_file fee_master_data_controller_top.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/fee_master_data_controller_top.vhd
add_fileset_file fee_slave_data_manager_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/FEE_DATA_MANAGER/fee_slave_data_manager_ent.vhd
add_fileset_file fee_slave_data_controller_top.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/fee_slave_data_controller_top.vhd
add_fileset_file comm_v1_80_top.vhd VHDL PATH Communications_Module_v1_8/comm_v1_80_top.vhd TOP_LEVEL_FILE

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL comm_v1_80_top
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VHDL ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avalon_mm_spacewire_registers_pkg.vhd VHDL PATH Communications_Module_v1_8/REGISTERS/avalon_mm_spacewire_registers_pkg.vhd
add_fileset_file avalon_mm_spacewire_pkg.vhd VHDL PATH Communications_Module_v1_8/AVALON_SPACEWIRE_REGISTERS/avalon_mm_spacewire_pkg.vhd
add_fileset_file avalon_mm_spacewire_read_ent.vhd VHDL PATH Communications_Module_v1_8/AVALON_SPACEWIRE_REGISTERS/avalon_mm_spacewire_read_ent.vhd
add_fileset_file avalon_mm_spacewire_write_ent.vhd VHDL PATH Communications_Module_v1_8/AVALON_SPACEWIRE_REGISTERS/avalon_mm_spacewire_write_ent.vhd
add_fileset_file windowing_dataset_pkg.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_dataset_pkg.vhd
add_fileset_file avalon_mm_windowing_pkg.vhd VHDL PATH Communications_Module_v1_8/AVALON_WINDOWING_BUFFER/avalon_mm_windowing_pkg.vhd
add_fileset_file avalon_mm_windowing_write_ent.vhd VHDL PATH Communications_Module_v1_8/AVALON_WINDOWING_BUFFER/avalon_mm_windowing_write_ent.vhd
add_fileset_file windowing_large_avsbuff_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/altera_ipcore/scfifo/windowing_large_avsbuff_sc_fifo/windowing_large_avsbuff_sc_fifo.vhd
add_fileset_file windowing_small_avsbuff_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/altera_ipcore/scfifo/windowing_small_avsbuff_sc_fifo/windowing_small_avsbuff_sc_fifo.vhd
add_fileset_file windowing_data_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/altera_ipcore/scfifo/windowing_data_sc_fifo/windowing_data_sc_fifo.vhd
add_fileset_file windowing_mask_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/altera_ipcore/scfifo/windowing_mask_sc_fifo/windowing_mask_sc_fifo.vhd
add_fileset_file windowing_fifo_pkg.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_fifo_pkg.vhd
add_fileset_file windowing_data_fifo_ent.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_data_fifo_ent.vhd
add_fileset_file windowing_mask_fifo_ent.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_mask_fifo_ent.vhd
add_fileset_file windowing_buffer_ent.vhd VHDL PATH Communications_Module_v1_8/WINDOWING_BUFFER/windowing_buffer_ent.vhd
add_fileset_file data_controller_ent.vhd VHDL PATH Communications_Module_v1_8/DATA_CONTROLLER/data_controller_ent.vhd
add_fileset_file spwpkg.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwpkg.vhd
add_fileset_file syncdff.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/syncdff.vhd
add_fileset_file spwram.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwram.vhd
add_fileset_file spwrecv.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwrecv.vhd
add_fileset_file streamtest.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/streamtest.vhd
add_fileset_file spwxmit.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwxmit.vhd
add_fileset_file spwstream.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwstream.vhd
add_fileset_file spwrecvfront_generic.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwrecvfront_generic.vhd
add_fileset_file spwrecvfront_fast.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwrecvfront_fast.vhd
add_fileset_file spwlink.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwlink.vhd
add_fileset_file spwxmit_fast.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spacewire_light_codec/spwxmit_fast.vhd
add_fileset_file spw_codec_pkg.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spw_codec_pkg.vhd
add_fileset_file spw_codec.vhd VHDL PATH Communications_Module_v1_8/SPW_CODEC/spw_codec.vhd
add_fileset_file spw_mux_ent.vhd VHDL PATH Communications_Module_v1_8/SPW_MUX/spw_mux_ent.vhd
add_fileset_file spw_data_dc_fifo.vhd VHDL PATH Communications_Module_v1_8/SPW_CLK_SYNCHRONIZATION/altera_ipcore/dcfifo/spw_data_dc_fifo/spw_data_dc_fifo.vhd
add_fileset_file spw_timecode_dc_fifo.vhd VHDL PATH Communications_Module_v1_8/SPW_CLK_SYNCHRONIZATION/altera_ipcore/dcfifo/spw_timecode_dc_fifo/spw_timecode_dc_fifo.vhd
add_fileset_file spw_clk_synchronization_ent.vhd VHDL PATH Communications_Module_v1_8/SPW_CLK_SYNCHRONIZATION/spw_clk_synchronization_ent.vhd
add_fileset_file rmap_mem_area_nfee_pkg.vhd VHDL PATH Communications_Module_v1_8/RMAP_MEMORY/rmap_mem_area_nfee_pkg.vhd
add_fileset_file rmap_mem_area_nfee_read.vhd VHDL PATH Communications_Module_v1_8/RMAP_MEMORY/rmap_mem_area_nfee_read.vhd
add_fileset_file rmap_mem_area_nfee_write.vhd VHDL PATH Communications_Module_v1_8/RMAP_MEMORY/rmap_mem_area_nfee_write.vhd
add_fileset_file rmap_target_crc_pkg.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_crc_pkg.vhd
add_fileset_file rmap_target_pkg.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_pkg.vhd
add_fileset_file rmap_target_command_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_command_ent.vhd
add_fileset_file rmap_target_read_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_read_ent.vhd
add_fileset_file rmap_target_reply_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_reply_ent.vhd
add_fileset_file rmap_target_write_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_write_ent.vhd
add_fileset_file rmap_target_user_ent.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_user_ent.vhd
add_fileset_file rmap_target_top.vhd VHDL PATH Communications_Module_v1_8/RMAP_TARGET/rmap_target_top.vhd
add_fileset_file delay_block_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/MASKING_MACHINE/delay_block_ent.vhd
add_fileset_file masking_machine_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/MASKING_MACHINE/altera_ip/scfifo/masking_machine_sc_fifo/masking_machine_sc_fifo.vhd
add_fileset_file masking_machine_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/MASKING_MACHINE/masking_machine_ent.vhd
add_fileset_file data_packet_header_gen_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/DATA_PACKET/data_packet_header_gen_ent.vhd
add_fileset_file data_packet_hk_writer_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/DATA_PACKET/data_packet_hk_writer_ent.vhd
add_fileset_file data_packet_data_writer_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/DATA_PACKET/data_packet_data_writer_ent.vhd
add_fileset_file send_buffer_0_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/SEND_BUFFER/altera_ip/scfifo/send_buffer_0_sc_fifo/send_buffer_0_sc_fifo.vhd
add_fileset_file send_buffer_1_sc_fifo.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/SEND_BUFFER/altera_ip/scfifo/send_buffer_1_sc_fifo/send_buffer_1_sc_fifo.vhd
add_fileset_file send_buffer_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/SEND_BUFFER/send_buffer_ent.vhd
add_fileset_file data_transmitter_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/DATA_TRANSMITTER/data_transmitter_ent.vhd
add_fileset_file fee_master_data_manager_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/FEE_DATA_MANAGER/fee_master_data_manager_ent.vhd
add_fileset_file fee_master_data_controller_top.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/fee_master_data_controller_top.vhd
add_fileset_file fee_slave_data_manager_ent.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/FEE_DATA_MANAGER/fee_slave_data_manager_ent.vhd
add_fileset_file fee_slave_data_controller_top.vhd VHDL PATH Communications_Module_v1_8/FEE_DATA_CONTROLLER/fee_slave_data_controller_top.vhd
add_fileset_file comm_v1_80_top.vhd VHDL PATH Communications_Module_v1_8/comm_v1_80_top.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink_100
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink reset_sink_reset reset Input 1


# 
# connection point spw_conduit_end
# 
add_interface spw_conduit_end conduit end
set_interface_property spw_conduit_end associatedClock clock_sink_200
set_interface_property spw_conduit_end associatedReset reset_sink
set_interface_property spw_conduit_end ENABLED true
set_interface_property spw_conduit_end EXPORT_OF ""
set_interface_property spw_conduit_end PORT_NAME_MAP ""
set_interface_property spw_conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property spw_conduit_end SVD_ADDRESS_GROUP ""

add_interface_port spw_conduit_end data_in data_in_signal Input 1
add_interface_port spw_conduit_end data_out data_out_signal Output 1
add_interface_port spw_conduit_end strobe_in strobe_in_signal Input 1
add_interface_port spw_conduit_end strobe_out strobe_out_signal Output 1


# 
# connection point sync_conduit_end
# 
add_interface sync_conduit_end conduit end
set_interface_property sync_conduit_end associatedClock clock_sink_100
set_interface_property sync_conduit_end associatedReset reset_sink
set_interface_property sync_conduit_end ENABLED true
set_interface_property sync_conduit_end EXPORT_OF ""
set_interface_property sync_conduit_end PORT_NAME_MAP ""
set_interface_property sync_conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property sync_conduit_end SVD_ADDRESS_GROUP ""

add_interface_port sync_conduit_end sync_channel sync_channel_signal Input 1


# 
# connection point rmap_interrupt_sender
# 
add_interface rmap_interrupt_sender interrupt end
set_interface_property rmap_interrupt_sender associatedAddressablePoint ""
set_interface_property rmap_interrupt_sender associatedClock clock_sink_100
set_interface_property rmap_interrupt_sender associatedReset reset_sink
set_interface_property rmap_interrupt_sender bridgedReceiverOffset ""
set_interface_property rmap_interrupt_sender bridgesToReceiver ""
set_interface_property rmap_interrupt_sender ENABLED true
set_interface_property rmap_interrupt_sender EXPORT_OF ""
set_interface_property rmap_interrupt_sender PORT_NAME_MAP ""
set_interface_property rmap_interrupt_sender CMSIS_SVD_VARIABLES ""
set_interface_property rmap_interrupt_sender SVD_ADDRESS_GROUP ""

add_interface_port rmap_interrupt_sender rmap_interrupt_sender_irq irq Output 1


# 
# connection point buffers_interrupt_sender
# 
add_interface buffers_interrupt_sender interrupt end
set_interface_property buffers_interrupt_sender associatedAddressablePoint ""
set_interface_property buffers_interrupt_sender associatedClock clock_sink_100
set_interface_property buffers_interrupt_sender associatedReset reset_sink
set_interface_property buffers_interrupt_sender bridgedReceiverOffset ""
set_interface_property buffers_interrupt_sender bridgesToReceiver ""
set_interface_property buffers_interrupt_sender ENABLED true
set_interface_property buffers_interrupt_sender EXPORT_OF ""
set_interface_property buffers_interrupt_sender PORT_NAME_MAP ""
set_interface_property buffers_interrupt_sender CMSIS_SVD_VARIABLES ""
set_interface_property buffers_interrupt_sender SVD_ADDRESS_GROUP ""

add_interface_port buffers_interrupt_sender buffers_interrupt_sender_irq irq Output 1


# 
# connection point clock_sink_100
# 
add_interface clock_sink_100 clock end
set_interface_property clock_sink_100 clockRate 100000000
set_interface_property clock_sink_100 ENABLED true
set_interface_property clock_sink_100 EXPORT_OF ""
set_interface_property clock_sink_100 PORT_NAME_MAP ""
set_interface_property clock_sink_100 CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink_100 SVD_ADDRESS_GROUP ""

add_interface_port clock_sink_100 clock_sink_100_clk clk Input 1


# 
# connection point clock_sink_200
# 
add_interface clock_sink_200 clock end
set_interface_property clock_sink_200 clockRate 200000000
set_interface_property clock_sink_200 ENABLED true
set_interface_property clock_sink_200 EXPORT_OF ""
set_interface_property clock_sink_200 PORT_NAME_MAP ""
set_interface_property clock_sink_200 CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink_200 SVD_ADDRESS_GROUP ""

add_interface_port clock_sink_200 clock_sink_200_clk clk Input 1


# 
# connection point avalon_slave_windowing
# 
add_interface avalon_slave_windowing avalon end
set_interface_property avalon_slave_windowing addressUnits WORDS
set_interface_property avalon_slave_windowing associatedClock clock_sink_100
set_interface_property avalon_slave_windowing associatedReset reset_sink
set_interface_property avalon_slave_windowing bitsPerSymbol 8
set_interface_property avalon_slave_windowing burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_windowing burstcountUnits WORDS
set_interface_property avalon_slave_windowing explicitAddressSpan 0
set_interface_property avalon_slave_windowing holdTime 0
set_interface_property avalon_slave_windowing linewrapBursts false
set_interface_property avalon_slave_windowing maximumPendingReadTransactions 0
set_interface_property avalon_slave_windowing maximumPendingWriteTransactions 0
set_interface_property avalon_slave_windowing readLatency 0
set_interface_property avalon_slave_windowing readWaitTime 1
set_interface_property avalon_slave_windowing setupTime 0
set_interface_property avalon_slave_windowing timingUnits Cycles
set_interface_property avalon_slave_windowing writeWaitTime 0
set_interface_property avalon_slave_windowing ENABLED true
set_interface_property avalon_slave_windowing EXPORT_OF ""
set_interface_property avalon_slave_windowing PORT_NAME_MAP ""
set_interface_property avalon_slave_windowing CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_windowing SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_windowing avalon_slave_windowing_address address Input 8
add_interface_port avalon_slave_windowing avalon_slave_windowing_write write Input 1
add_interface_port avalon_slave_windowing avalon_slave_windowing_read read Input 1
add_interface_port avalon_slave_windowing avalon_slave_windowing_writedata writedata Input 32
add_interface_port avalon_slave_windowing avalon_slave_windowing_byteenable byteenable Input 4
add_interface_port avalon_slave_windowing avalon_slave_windowing_readdata readdata Output 32
add_interface_port avalon_slave_windowing avalon_slave_windowing_waitrequest waitrequest Output 1
set_interface_assignment avalon_slave_windowing embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_windowing embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_windowing embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_windowing embeddedsw.configuration.isPrintableDevice 0


# 
# connection point avalon_slave_L_buffer
# 
add_interface avalon_slave_L_buffer avalon end
set_interface_property avalon_slave_L_buffer addressUnits WORDS
set_interface_property avalon_slave_L_buffer associatedClock clock_sink_100
set_interface_property avalon_slave_L_buffer associatedReset reset_sink
set_interface_property avalon_slave_L_buffer bitsPerSymbol 8
set_interface_property avalon_slave_L_buffer burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_L_buffer burstcountUnits WORDS
set_interface_property avalon_slave_L_buffer explicitAddressSpan 0
set_interface_property avalon_slave_L_buffer holdTime 0
set_interface_property avalon_slave_L_buffer linewrapBursts false
set_interface_property avalon_slave_L_buffer maximumPendingReadTransactions 0
set_interface_property avalon_slave_L_buffer maximumPendingWriteTransactions 0
set_interface_property avalon_slave_L_buffer readLatency 0
set_interface_property avalon_slave_L_buffer readWaitTime 1
set_interface_property avalon_slave_L_buffer setupTime 0
set_interface_property avalon_slave_L_buffer timingUnits Cycles
set_interface_property avalon_slave_L_buffer writeWaitTime 0
set_interface_property avalon_slave_L_buffer ENABLED true
set_interface_property avalon_slave_L_buffer EXPORT_OF ""
set_interface_property avalon_slave_L_buffer PORT_NAME_MAP ""
set_interface_property avalon_slave_L_buffer CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_L_buffer SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_L_buffer avalon_slave_L_buffer_address address Input 8
add_interface_port avalon_slave_L_buffer avalon_slave_L_buffer_waitrequest waitrequest Output 1
add_interface_port avalon_slave_L_buffer avalon_slave_L_buffer_write write Input 1
add_interface_port avalon_slave_L_buffer avalon_slave_L_buffer_writedata writedata Input 256
set_interface_assignment avalon_slave_L_buffer embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_L_buffer embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_L_buffer embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_L_buffer embeddedsw.configuration.isPrintableDevice 0


# 
# connection point avalon_slave_R_buffer
# 
add_interface avalon_slave_R_buffer avalon end
set_interface_property avalon_slave_R_buffer addressUnits WORDS
set_interface_property avalon_slave_R_buffer associatedClock clock_sink_100
set_interface_property avalon_slave_R_buffer associatedReset reset_sink
set_interface_property avalon_slave_R_buffer bitsPerSymbol 8
set_interface_property avalon_slave_R_buffer burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_R_buffer burstcountUnits WORDS
set_interface_property avalon_slave_R_buffer explicitAddressSpan 0
set_interface_property avalon_slave_R_buffer holdTime 0
set_interface_property avalon_slave_R_buffer linewrapBursts false
set_interface_property avalon_slave_R_buffer maximumPendingReadTransactions 0
set_interface_property avalon_slave_R_buffer maximumPendingWriteTransactions 0
set_interface_property avalon_slave_R_buffer readLatency 0
set_interface_property avalon_slave_R_buffer readWaitTime 1
set_interface_property avalon_slave_R_buffer setupTime 0
set_interface_property avalon_slave_R_buffer timingUnits Cycles
set_interface_property avalon_slave_R_buffer writeWaitTime 0
set_interface_property avalon_slave_R_buffer ENABLED true
set_interface_property avalon_slave_R_buffer EXPORT_OF ""
set_interface_property avalon_slave_R_buffer PORT_NAME_MAP ""
set_interface_property avalon_slave_R_buffer CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_R_buffer SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_R_buffer avalon_slave_R_buffer_address address Input 8
add_interface_port avalon_slave_R_buffer avalon_slave_R_buffer_write write Input 1
add_interface_port avalon_slave_R_buffer avalon_slave_R_buffer_writedata writedata Input 256
add_interface_port avalon_slave_R_buffer avalon_slave_R_buffer_waitrequest waitrequest Output 1
set_interface_assignment avalon_slave_R_buffer embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_R_buffer embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_R_buffer embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_R_buffer embeddedsw.configuration.isPrintableDevice 0


# 
# connection point measurements_conduit_end
# 
add_interface measurements_conduit_end conduit end
set_interface_property measurements_conduit_end associatedClock clock_sink_100
set_interface_property measurements_conduit_end associatedReset reset_sink
set_interface_property measurements_conduit_end ENABLED true
set_interface_property measurements_conduit_end EXPORT_OF ""
set_interface_property measurements_conduit_end PORT_NAME_MAP ""
set_interface_property measurements_conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property measurements_conduit_end SVD_ADDRESS_GROUP ""

add_interface_port measurements_conduit_end measurements_channel measurements_channel_signal Output 8

