onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group Top /testbench_top/clk100Avs
add wave -noupdate -group Top /testbench_top/clk100Ftdi
add wave -noupdate -group Top /testbench_top/rst
add wave -noupdate -group Top /testbench_top/s_umft_data_bus
add wave -noupdate -group Top /testbench_top/s_umft_reset_n_pin
add wave -noupdate -group Top /testbench_top/s_umft_rxf_n_pin
add wave -noupdate -group Top /testbench_top/s_umft_wakeup_n_pin
add wave -noupdate -group Top /testbench_top/s_umft_be_bus
add wave -noupdate -group Top /testbench_top/s_umft_txe_n_pin
add wave -noupdate -group Top /testbench_top/s_umft_gpio_bus
add wave -noupdate -group Top /testbench_top/s_umft_wr_n_pin
add wave -noupdate -group Top /testbench_top/s_umft_rd_n_pin
add wave -noupdate -group Top /testbench_top/s_umft_oe_n_pin
add wave -noupdate -group Top /testbench_top/s_umft_siwu_n_pin
add wave -noupdate -group Top /testbench_top/s_avalon_slave_config_address
add wave -noupdate -group Top /testbench_top/s_avalon_slave_config_write
add wave -noupdate -group Top /testbench_top/s_avalon_slave_config_read
add wave -noupdate -group Top /testbench_top/s_avalon_slave_config_readdata
add wave -noupdate -group Top /testbench_top/s_avalon_slave_config_writedata
add wave -noupdate -group Top /testbench_top/s_avalon_slave_config_waitrequest
add wave -noupdate -group Top /testbench_top/s_avalon_slave_config_byteenable
add wave -noupdate -group Top /testbench_top/s_avalon_slave_data_address
add wave -noupdate -group Top /testbench_top/s_avalon_slave_data_write
add wave -noupdate -group Top /testbench_top/s_avalon_slave_data_read
add wave -noupdate -group Top /testbench_top/s_avalon_slave_data_writedata
add wave -noupdate -group Top /testbench_top/s_avalon_slave_data_readdata
add wave -noupdate -group Top /testbench_top/s_avalon_slave_data_waitrequest
add wave -noupdate -group Top /testbench_top/s_tx_avalon_slave_data_address
add wave -noupdate -group Top /testbench_top/s_rx_avalon_slave_data_address
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/clk_i
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/rst_i
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/umft_wr_n_pin_i
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/umft_rd_n_pin_i
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/umft_oe_n_pin_i
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/umft_data_bus_io
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/umft_wakeup_n_pin_io
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/umft_be_bus_io
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/umft_gpio_bus_io
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/umft_rxf_n_pin_o
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/umft_txe_n_pin_o
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_umft601a_data_out
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_umft601a_wakeup_n_out
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_umft601a_be_out
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_umft601a_gpio_out
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_umft601a_oe
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_umft601a_data_in
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_umft601a_wakeup_n_in
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_umft601a_be_in
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_umft601a_gpio_in
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_counter
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_counter2
add wave -noupdate -group ftdi_stimuli /testbench_top/usb3_fifo_master_stimuli_inst/s_times_cnt
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/clock_sink_clk
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/reset_sink_reset
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_data_bus
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_reset_n_pin
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_rxf_n_pin
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_clock_pin
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_wakeup_n_pin
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_be_bus
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_txe_n_pin
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_gpio_bus
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_wr_n_pin
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_rd_n_pin
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_oe_n_pin
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/umft_siwu_n_pin
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_config_address
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_config_write
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_config_read
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_config_readdata
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_config_writedata
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_config_waitrequest
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_config_byteenable
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_data_address
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_data_write
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_data_read
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_data_writedata
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_data_readdata
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/avalon_slave_data_waitrequest
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_config_avalon_mm_read_waitrequest
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_config_avalon_mm_write_waitrequest
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_config_write_registers
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_config_read_registers
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_data_avalon_mm_read_waitrequest
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_data_avalon_mm_write_waitrequest
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_data_loaded
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_wrdata
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_wrreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_rdreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_change
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_stat_empty
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_stat_full
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_wrready
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_rddata
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_dbuffer_rdready
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_tx_dc_data_fifo_wrdata_data
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_tx_dc_data_fifo_wrdata_be
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_tx_dc_data_fifo_wrreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_tx_dc_data_fifo_wrempty
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_tx_dc_data_fifo_wrfull
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_tx_dc_data_fifo_wrusedw
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_data_loaded
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_wrdata
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_wrreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_rdreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_change
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_stat_empty
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_stat_full
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_wrready
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_rddata
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_dbuffer_rdready
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_rx_dc_data_fifo_rdreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_rx_dc_data_fifo_rddata_data
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_rx_dc_data_fifo_rddata_be
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_rx_dc_data_fifo_rdempty
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_rx_dc_data_fifo_rdfull
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_avalon_rx_dc_data_fifo_rdusedw
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_tx_dc_data_fifo_wrdata_data
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_tx_dc_data_fifo_wrdata_be
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_tx_dc_data_fifo_wrreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_tx_dc_data_fifo_wrempty
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_tx_dc_data_fifo_wrfull
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_tx_dc_data_fifo_wrusedw
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_rx_dc_data_fifo_rdreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_rx_dc_data_fifo_rddata_data
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_rx_dc_data_fifo_rddata_be
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_rx_dc_data_fifo_rdempty
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_rx_dc_data_fifo_rdfull
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_loopback_rx_dc_data_fifo_rdusedw
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_tx_mux_select
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_rx_mux_select
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_tx_dc_data_fifo_wrdata_data
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_tx_dc_data_fifo_wrdata_be
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_tx_dc_data_fifo_wrreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_tx_dc_data_fifo_wrempty
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_tx_dc_data_fifo_wrfull
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_tx_dc_data_fifo_wrusedw
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_rx_dc_data_fifo_rdreq
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_rx_dc_data_fifo_rddata_data
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_rx_dc_data_fifo_rddata_be
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_rx_dc_data_fifo_rdempty
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_rx_dc_data_fifo_rdfull
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/s_ftdi_rx_dc_data_fifo_rdusedw
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/a_reset
add wave -noupdate -group ftdi_top /testbench_top/USB_3_FTDI_top_inst/a_avs_clock
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/clk_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/rst_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/double_buffer_clear_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/double_buffer_stop_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/double_buffer_start_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_data_loaded_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_cfg_length_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_wrdata_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_wrreq_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_rdreq_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_change_i
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/double_buffer_empty_o
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/double_buffer_full_o
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_stat_almost_empty_o
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_stat_almost_full_o
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_stat_empty_o
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_stat_full_o
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_rddata_o
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_rdready_o
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/buffer_wrready_o
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_fifo_0
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_fifo_1
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_buffer_write_state
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_buffer_read_state
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_wr_data_buffer_selection
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_rd_data_buffer_selection
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_fifo_0_rdhold
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_fifo_1_rdhold
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_fifo_0_wrhold
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_fifo_1_wrhold
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_fifo_0_extended_usedw
add wave -noupdate -group rx_dbuffer /testbench_top/USB_3_FTDI_top_inst/rx_data_buffer_ent_inst/s_data_fifo_1_extended_usedw
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/clk_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/rst_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/double_buffer_clear_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/double_buffer_stop_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/double_buffer_start_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_data_loaded_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_cfg_length_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_wrdata_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_wrreq_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_rdreq_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_change_i
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/double_buffer_empty_o
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/double_buffer_full_o
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_stat_almost_empty_o
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_stat_almost_full_o
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_stat_empty_o
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_stat_full_o
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_rddata_o
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_rdready_o
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/buffer_wrready_o
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_fifo_0
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_fifo_1
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_buffer_write_state
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_buffer_read_state
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_wr_data_buffer_selection
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_rd_data_buffer_selection
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_fifo_0_rdhold
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_fifo_1_rdhold
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_fifo_0_wrhold
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_fifo_1_wrhold
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_fifo_0_extended_usedw
add wave -noupdate -group tx_dbuffer /testbench_top/USB_3_FTDI_top_inst/tx_data_buffer_ent_inst/s_data_fifo_1_extended_usedw
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/clk_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rst_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_module_stop_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_module_start_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_request_timeout_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_fee_number_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_ccd_number_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_ccd_side_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_height_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_width_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_exposure_number_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_request_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_abort_request_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/req_half_ccd_reset_controller_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dc_data_fifo_wrempty_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dc_data_fifo_wrfull_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dc_data_fifo_wrusedw_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dc_data_fifo_rddata_data_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dc_data_fifo_rddata_be_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dc_data_fifo_rdempty_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dc_data_fifo_rdfull_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dc_data_fifo_rdusedw_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dbuffer_stat_empty_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dbuffer_rddata_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dbuffer_rdready_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dbuffer_stat_full_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dbuffer_wrready_i
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_fee_number_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_ccd_number_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_ccd_side_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_height_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_width_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_exposure_number_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_image_length_bytes_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_received_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_controller_busy_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rly_half_ccd_last_rx_buffer_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_rx_comm_err_state_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_rx_comm_err_code_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_half_ccd_request_nack_err_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_half_ccd_reply_header_crc_err_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_half_ccd_reply_eoh_err_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_half_ccd_reply_payload_crc_err_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_half_ccd_reply_eop_err_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_half_ccd_req_max_tries_err_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_half_ccd_reply_ccd_size_err_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/err_half_ccd_req_timeout_err_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dc_data_fifo_wrdata_data_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dc_data_fifo_wrdata_be_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dc_data_fifo_wrreq_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dc_data_fifo_rdreq_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dbuffer_rdreq_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/tx_dbuffer_change_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dbuffer_data_loaded_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dbuffer_wrdata_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/rx_dbuffer_wrreq_o
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_generator_start
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_generator_reset
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_generator_data
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_generator_busy
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_parser_start
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_parser_reset
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_parser_busy
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_parser_data
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_parser_crc32_match
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_parser_eoh_error
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_writer_start
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_writer_reset
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_writer_length_bytes
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_writer_busy
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_reader_start
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_reader_reset
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_reader_length_bytes
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_reader_busy
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_reader_crc32_match
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_reader_eop_error
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_tx_dc_data_fifo_wrdata_data
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_tx_dc_data_fifo_wrdata_be
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_tx_dc_data_fifo_wrreq
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_header_rx_dc_data_fifo_rdreq
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_tx_dc_data_fifo_wrdata_data
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_tx_dc_data_fifo_wrdata_be
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_tx_dc_data_fifo_wrreq
add wave -noupdate -group protocol_top /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/s_payload_rx_dc_data_fifo_rdreq
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/clk_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rst_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/data_stop_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/data_start_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_request_timeout_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_fee_number_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_ccd_number_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_ccd_side_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_height_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_width_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_exposure_number_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_request_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_abort_request_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/req_half_ccd_reset_controller_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_generator_busy_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_parser_busy_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_parser_data_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_parser_crc32_match_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_parser_eoh_error_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_writer_busy_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_reader_busy_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_reader_crc32_match_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_reader_eop_error_i
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rly_half_ccd_fee_number_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rly_half_ccd_ccd_number_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rly_half_ccd_ccd_side_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rly_half_ccd_height_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rly_half_ccd_width_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rly_half_ccd_exposure_number_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rly_half_ccd_image_length_bytes_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rly_half_ccd_received_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/rly_half_ccd_controller_busy_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_rx_comm_err_state_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_rx_comm_err_code_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_half_ccd_request_nack_err_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_half_ccd_reply_header_crc_err_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_half_ccd_reply_eoh_err_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_half_ccd_reply_payload_crc_err_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_half_ccd_reply_eop_err_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_half_ccd_req_max_tries_err_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_half_ccd_reply_ccd_size_err_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/err_half_ccd_req_timeout_err_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_generator_start_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_generator_reset_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_generator_data_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_parser_start_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/header_parser_reset_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_writer_start_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_writer_reset_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_writer_length_bytes_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_reader_start_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_reader_reset_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/payload_reader_length_bytes_o
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/s_ftdi_prot_controller_state
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/s_registered_request_data
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/s_request_tries
add wave -noupdate -expand -group protocol_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_protocol_controller_ent_inst/s_general_error
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/clk_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/rst_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/data_tx_stop_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/data_tx_start_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/header_generator_start_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/header_generator_reset_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/header_data_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/tx_dc_data_fifo_wrempty_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/tx_dc_data_fifo_wrfull_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/tx_dc_data_fifo_wrusedw_i
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/header_generator_busy_o
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/tx_dc_data_fifo_wrdata_data_o
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/tx_dc_data_fifo_wrdata_be_o
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/tx_dc_data_fifo_wrreq_o
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/s_registered_header_data
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/s_header_crc32
add wave -noupdate -group protocol_tx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_header_generator_ent_inst/s_ftdi_tx_prot_header_generator_state
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/clk_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/rst_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/data_rx_stop_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/data_rx_start_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/header_parser_start_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/header_parser_reset_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/rx_dc_data_fifo_rddata_data_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/rx_dc_data_fifo_rddata_be_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/rx_dc_data_fifo_rdempty_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/rx_dc_data_fifo_rdfull_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/rx_dc_data_fifo_rdusedw_i
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/header_parser_busy_o
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/header_data_o
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/header_crc32_match_o
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/header_eoh_error_o
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/rx_dc_data_fifo_rdreq_o
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/s_registered_header_data
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/s_header_crc32
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/s_header_crc32_match
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/s_header_eoh_error
add wave -noupdate -group protocol_rx_header /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_header_parser_ent_inst/s_ftdi_tx_prot_header_parser_state
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/clk_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/rst_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/data_tx_stop_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/data_tx_start_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/payload_writer_start_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/payload_writer_reset_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/payload_length_bytes_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/buffer_stat_empty_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/buffer_rddata_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/buffer_rdready_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/tx_dc_data_fifo_wrempty_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/tx_dc_data_fifo_wrfull_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/tx_dc_data_fifo_wrusedw_i
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/payload_writer_busy_o
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/buffer_rdreq_o
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/buffer_change_o
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/tx_dc_data_fifo_wrdata_data_o
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/tx_dc_data_fifo_wrdata_be_o
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/tx_dc_data_fifo_wrreq_o
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_payload_length_cnt
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_payload_crc32
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_ftdi_tx_prot_payload_writer_state
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_tx_dword_0
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_tx_dword_1
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_tx_dword_2
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_tx_dword_3
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_tx_dword_4
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_tx_dword_5
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_tx_dword_6
add wave -noupdate -group protocol_tx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_tx_protocol_payload_writer_ent_inst/s_tx_dword_7
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/clk_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/rst_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/data_rx_stop_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/data_rx_start_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/payload_reader_start_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/payload_reader_reset_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/payload_length_bytes_i
add wave -noupdate -expand -group protocol_rx_payload -radix hexadecimal /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/rx_dc_data_fifo_rddata_data_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/rx_dc_data_fifo_rddata_be_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/rx_dc_data_fifo_rdempty_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/rx_dc_data_fifo_rdfull_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/rx_dc_data_fifo_rdusedw_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/buffer_stat_full_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/buffer_wrready_i
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/payload_reader_busy_o
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/payload_crc32_match_o
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/payload_eop_error_o
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/rx_dc_data_fifo_rdreq_o
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/buffer_data_loaded_o
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/buffer_wrdata_o
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/buffer_wrreq_o
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_payload_length_cnt
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_payload_crc32
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_payload_crc32_match
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_payload_eop_error
add wave -noupdate -expand -group protocol_rx_payload /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_ftdi_tx_prot_payload_reader_state
add wave -noupdate -expand -group protocol_rx_payload -radix hexadecimal /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_rx_dword_0
add wave -noupdate -expand -group protocol_rx_payload -radix hexadecimal /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_rx_dword_1
add wave -noupdate -expand -group protocol_rx_payload -radix hexadecimal /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_rx_dword_2
add wave -noupdate -expand -group protocol_rx_payload -radix hexadecimal /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_rx_dword_3
add wave -noupdate -expand -group protocol_rx_payload -radix hexadecimal /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_rx_dword_4
add wave -noupdate -expand -group protocol_rx_payload -radix hexadecimal /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_rx_dword_5
add wave -noupdate -expand -group protocol_rx_payload -radix hexadecimal /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_rx_dword_6
add wave -noupdate -expand -group protocol_rx_payload -radix hexadecimal /testbench_top/USB_3_FTDI_top_inst/ftdi_protocol_top_inst/ftdi_rx_protocol_payload_reader_ent_inst/s_rx_dword_7
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/clk_i
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/rst_i
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_rxf_n_pin_i
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_clock_pin_i
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_txe_n_pin_i
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/tx_dc_data_fifo_wrdata_data_i
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/tx_dc_data_fifo_wrdata_be_i
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/tx_dc_data_fifo_wrreq_i
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/rx_dc_data_fifo_rdreq_i
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_data_bus_io
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_wakeup_n_pin_io
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_be_bus_io
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_gpio_bus_io
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_reset_n_pin_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_wr_n_pin_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_rd_n_pin_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_oe_n_pin_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/umft_siwu_n_pin_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/tx_dc_data_fifo_wrempty_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/tx_dc_data_fifo_wrfull_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/tx_dc_data_fifo_wrusedw_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/rx_dc_data_fifo_rddata_data_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/rx_dc_data_fifo_rddata_be_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/rx_dc_data_fifo_rdempty_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/rx_dc_data_fifo_rdfull_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/rx_dc_data_fifo_rdusedw_o
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_umft601a_buffered_pins
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_tx_dc_data_fifo
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_rx_dc_data_fifo
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_ftdi_umft601a_controller_state
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_io_inout_buffer_output_enable
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_delay_cnt
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_umft601a_clock
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_rx_wrreq_protected
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_tx_rdreq_protected
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_tx_be_protected
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_tx_data_protected
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_tx_priority
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_rx_dc_be_little_endian
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_rx_dc_data_little_endian
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_tx_dc_be_little_endian
add wave -noupdate -group ftdi_controller /testbench_top/USB_3_FTDI_top_inst/ftdi_umft601a_controller_ent_inst/s_tx_dc_data_little_endian
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {259475000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 267
configure wave -valuecolwidth 197
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {315 us}
