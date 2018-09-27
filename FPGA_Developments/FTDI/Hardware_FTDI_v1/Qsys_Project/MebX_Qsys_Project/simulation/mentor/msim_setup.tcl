
# (C) 2001-2017 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     MebX_Qsys_Project
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "mentor.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog <compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run -a
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If MebX_Qsys_Project is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 16.1 196 win32 2017.06.23.17:22:13

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "MebX_Qsys_Project"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/intelfpga/16.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_AC_ROM.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_inst_ROM.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_sequencer_mem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_AC_ROM.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_inst_ROM.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_sequencer_mem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/MebX_Qsys_Project_descriptor_memory.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                        ./libraries/altera_ver/            
  vmap       altera_ver             ./libraries/altera_ver/            
  ensure_lib                        ./libraries/lpm_ver/               
  vmap       lpm_ver                ./libraries/lpm_ver/               
  ensure_lib                        ./libraries/sgate_ver/             
  vmap       sgate_ver              ./libraries/sgate_ver/             
  ensure_lib                        ./libraries/altera_mf_ver/         
  vmap       altera_mf_ver          ./libraries/altera_mf_ver/         
  ensure_lib                        ./libraries/altera_lnsim_ver/      
  vmap       altera_lnsim_ver       ./libraries/altera_lnsim_ver/      
  ensure_lib                        ./libraries/stratixiv_hssi_ver/    
  vmap       stratixiv_hssi_ver     ./libraries/stratixiv_hssi_ver/    
  ensure_lib                        ./libraries/stratixiv_pcie_hip_ver/
  vmap       stratixiv_pcie_hip_ver ./libraries/stratixiv_pcie_hip_ver/
  ensure_lib                        ./libraries/stratixiv_ver/         
  vmap       stratixiv_ver          ./libraries/stratixiv_ver/         
  ensure_lib                        ./libraries/altera/                
  vmap       altera                 ./libraries/altera/                
  ensure_lib                        ./libraries/lpm/                   
  vmap       lpm                    ./libraries/lpm/                   
  ensure_lib                        ./libraries/sgate/                 
  vmap       sgate                  ./libraries/sgate/                 
  ensure_lib                        ./libraries/altera_mf/             
  vmap       altera_mf              ./libraries/altera_mf/             
  ensure_lib                        ./libraries/altera_lnsim/          
  vmap       altera_lnsim           ./libraries/altera_lnsim/          
  ensure_lib                        ./libraries/stratixiv_hssi/        
  vmap       stratixiv_hssi         ./libraries/stratixiv_hssi/        
  ensure_lib                        ./libraries/stratixiv_pcie_hip/    
  vmap       stratixiv_pcie_hip     ./libraries/stratixiv_pcie_hip/    
  ensure_lib                        ./libraries/stratixiv/             
  vmap       stratixiv              ./libraries/stratixiv/             
}
ensure_lib                                              ./libraries/error_adapter_0/                             
vmap       error_adapter_0                              ./libraries/error_adapter_0/                             
ensure_lib                                              ./libraries/a0/                                          
vmap       a0                                           ./libraries/a0/                                          
ensure_lib                                              ./libraries/ng0/                                         
vmap       ng0                                          ./libraries/ng0/                                         
ensure_lib                                              ./libraries/timing_adapter_0/                            
vmap       timing_adapter_0                             ./libraries/timing_adapter_0/                            
ensure_lib                                              ./libraries/rsp_mux/                                     
vmap       rsp_mux                                      ./libraries/rsp_mux/                                     
ensure_lib                                              ./libraries/rsp_demux/                                   
vmap       rsp_demux                                    ./libraries/rsp_demux/                                   
ensure_lib                                              ./libraries/cmd_mux/                                     
vmap       cmd_mux                                      ./libraries/cmd_mux/                                     
ensure_lib                                              ./libraries/cmd_demux/                                   
vmap       cmd_demux                                    ./libraries/cmd_demux/                                   
ensure_lib                                              ./libraries/router_001/                                  
vmap       router_001                                   ./libraries/router_001/                                  
ensure_lib                                              ./libraries/router/                                      
vmap       router                                       ./libraries/router/                                      
ensure_lib                                              ./libraries/avalon_st_adapter_016/                       
vmap       avalon_st_adapter_016                        ./libraries/avalon_st_adapter_016/                       
ensure_lib                                              ./libraries/avalon_st_adapter_010/                       
vmap       avalon_st_adapter_010                        ./libraries/avalon_st_adapter_010/                       
ensure_lib                                              ./libraries/avalon_st_adapter_002/                       
vmap       avalon_st_adapter_002                        ./libraries/avalon_st_adapter_002/                       
ensure_lib                                              ./libraries/avalon_st_adapter/                           
vmap       avalon_st_adapter                            ./libraries/avalon_st_adapter/                           
ensure_lib                                              ./libraries/crosser/                                     
vmap       crosser                                      ./libraries/crosser/                                     
ensure_lib                                              ./libraries/dma_M1_M2_descriptor_slave_cmd_width_adapter/
vmap       dma_M1_M2_descriptor_slave_cmd_width_adapter ./libraries/dma_M1_M2_descriptor_slave_cmd_width_adapter/
ensure_lib                                              ./libraries/rsp_mux_002/                                 
vmap       rsp_mux_002                                  ./libraries/rsp_mux_002/                                 
ensure_lib                                              ./libraries/rsp_mux_001/                                 
vmap       rsp_mux_001                                  ./libraries/rsp_mux_001/                                 
ensure_lib                                              ./libraries/rsp_demux_015/                               
vmap       rsp_demux_015                                ./libraries/rsp_demux_015/                               
ensure_lib                                              ./libraries/rsp_demux_014/                               
vmap       rsp_demux_014                                ./libraries/rsp_demux_014/                               
ensure_lib                                              ./libraries/rsp_demux_013/                               
vmap       rsp_demux_013                                ./libraries/rsp_demux_013/                               
ensure_lib                                              ./libraries/rsp_demux_009/                               
vmap       rsp_demux_009                                ./libraries/rsp_demux_009/                               
ensure_lib                                              ./libraries/rsp_demux_002/                               
vmap       rsp_demux_002                                ./libraries/rsp_demux_002/                               
ensure_lib                                              ./libraries/cmd_mux_015/                                 
vmap       cmd_mux_015                                  ./libraries/cmd_mux_015/                                 
ensure_lib                                              ./libraries/cmd_mux_014/                                 
vmap       cmd_mux_014                                  ./libraries/cmd_mux_014/                                 
ensure_lib                                              ./libraries/cmd_mux_009/                                 
vmap       cmd_mux_009                                  ./libraries/cmd_mux_009/                                 
ensure_lib                                              ./libraries/cmd_mux_002/                                 
vmap       cmd_mux_002                                  ./libraries/cmd_mux_002/                                 
ensure_lib                                              ./libraries/cmd_demux_002/                               
vmap       cmd_demux_002                                ./libraries/cmd_demux_002/                               
ensure_lib                                              ./libraries/cmd_demux_001/                               
vmap       cmd_demux_001                                ./libraries/cmd_demux_001/                               
ensure_lib                                              ./libraries/m2_ddr2_memory_avl_burst_adapter/            
vmap       m2_ddr2_memory_avl_burst_adapter             ./libraries/m2_ddr2_memory_avl_burst_adapter/            
ensure_lib                                              ./libraries/nios2_gen2_0_instruction_master_limiter/     
vmap       nios2_gen2_0_instruction_master_limiter      ./libraries/nios2_gen2_0_instruction_master_limiter/     
ensure_lib                                              ./libraries/router_028/                                  
vmap       router_028                                   ./libraries/router_028/                                  
ensure_lib                                              ./libraries/router_027/                                  
vmap       router_027                                   ./libraries/router_027/                                  
ensure_lib                                              ./libraries/router_026/                                  
vmap       router_026                                   ./libraries/router_026/                                  
ensure_lib                                              ./libraries/router_025/                                  
vmap       router_025                                   ./libraries/router_025/                                  
ensure_lib                                              ./libraries/router_022/                                  
vmap       router_022                                   ./libraries/router_022/                                  
ensure_lib                                              ./libraries/router_021/                                  
vmap       router_021                                   ./libraries/router_021/                                  
ensure_lib                                              ./libraries/router_014/                                  
vmap       router_014                                   ./libraries/router_014/                                  
ensure_lib                                              ./libraries/router_012/                                  
vmap       router_012                                   ./libraries/router_012/                                  
ensure_lib                                              ./libraries/router_010/                                  
vmap       router_010                                   ./libraries/router_010/                                  
ensure_lib                                              ./libraries/router_008/                                  
vmap       router_008                                   ./libraries/router_008/                                  
ensure_lib                                              ./libraries/router_004/                                  
vmap       router_004                                   ./libraries/router_004/                                  
ensure_lib                                              ./libraries/router_002/                                  
vmap       router_002                                   ./libraries/router_002/                                  
ensure_lib                                              ./libraries/FTDI_0_FTDI_avalon_slave_agent_rsp_fifo/     
vmap       FTDI_0_FTDI_avalon_slave_agent_rsp_fifo      ./libraries/FTDI_0_FTDI_avalon_slave_agent_rsp_fifo/     
ensure_lib                                              ./libraries/FTDI_0_FTDI_avalon_slave_agent/              
vmap       FTDI_0_FTDI_avalon_slave_agent               ./libraries/FTDI_0_FTDI_avalon_slave_agent/              
ensure_lib                                              ./libraries/nios2_gen2_0_data_master_agent/              
vmap       nios2_gen2_0_data_master_agent               ./libraries/nios2_gen2_0_data_master_agent/              
ensure_lib                                              ./libraries/nios2_gen2_0_data_master_translator/         
vmap       nios2_gen2_0_data_master_translator          ./libraries/nios2_gen2_0_data_master_translator/         
ensure_lib                                              ./libraries/i_tse_pcs_0/                                 
vmap       i_tse_pcs_0                                  ./libraries/i_tse_pcs_0/                                 
ensure_lib                                              ./libraries/avalon_arbiter/                              
vmap       avalon_arbiter                               ./libraries/avalon_arbiter/                              
ensure_lib                                              ./libraries/i_tse_mac/                                   
vmap       i_tse_mac                                    ./libraries/i_tse_mac/                                   
ensure_lib                                              ./libraries/cpu/                                         
vmap       cpu                                          ./libraries/cpu/                                         
ensure_lib                                              ./libraries/s0/                                          
vmap       s0                                           ./libraries/s0/                                          
ensure_lib                                              ./libraries/p0/                                          
vmap       p0                                           ./libraries/p0/                                          
ensure_lib                                              ./libraries/pll0/                                        
vmap       pll0                                         ./libraries/pll0/                                        
ensure_lib                                              ./libraries/dll0/                                        
vmap       dll0                                         ./libraries/dll0/                                        
ensure_lib                                              ./libraries/oct0/                                        
vmap       oct0                                         ./libraries/oct0/                                        
ensure_lib                                              ./libraries/c0/                                          
vmap       c0                                           ./libraries/c0/                                          
ensure_lib                                              ./libraries/m0/                                          
vmap       m0                                           ./libraries/m0/                                          
ensure_lib                                              ./libraries/tda/                                         
vmap       tda                                          ./libraries/tda/                                         
ensure_lib                                              ./libraries/slave_translator/                            
vmap       slave_translator                             ./libraries/slave_translator/                            
ensure_lib                                              ./libraries/tdt/                                         
vmap       tdt                                          ./libraries/tdt/                                         
ensure_lib                                              ./libraries/write_mstr_internal/                         
vmap       write_mstr_internal                          ./libraries/write_mstr_internal/                         
ensure_lib                                              ./libraries/read_mstr_internal/                          
vmap       read_mstr_internal                           ./libraries/read_mstr_internal/                          
ensure_lib                                              ./libraries/dispatcher_internal/                         
vmap       dispatcher_internal                          ./libraries/dispatcher_internal/                         
ensure_lib                                              ./libraries/rst_controller/                              
vmap       rst_controller                               ./libraries/rst_controller/                              
ensure_lib                                              ./libraries/avalon_st_adapter_001/                       
vmap       avalon_st_adapter_001                        ./libraries/avalon_st_adapter_001/                       
ensure_lib                                              ./libraries/irq_synchronizer/                            
vmap       irq_synchronizer                             ./libraries/irq_synchronizer/                            
ensure_lib                                              ./libraries/irq_mapper/                                  
vmap       irq_mapper                                   ./libraries/irq_mapper/                                  
ensure_lib                                              ./libraries/mm_interconnect_2/                           
vmap       mm_interconnect_2                            ./libraries/mm_interconnect_2/                           
ensure_lib                                              ./libraries/mm_interconnect_1/                           
vmap       mm_interconnect_1                            ./libraries/mm_interconnect_1/                           
ensure_lib                                              ./libraries/mm_interconnect_0/                           
vmap       mm_interconnect_0                            ./libraries/mm_interconnect_0/                           
ensure_lib                                              ./libraries/tse_mac/                                     
vmap       tse_mac                                      ./libraries/tse_mac/                                     
ensure_lib                                              ./libraries/tristate_conduit_bridge_0/                   
vmap       tristate_conduit_bridge_0                    ./libraries/tristate_conduit_bridge_0/                   
ensure_lib                                              ./libraries/timer_1us/                                   
vmap       timer_1us                                    ./libraries/timer_1us/                                   
ensure_lib                                              ./libraries/timer_1ms/                                   
vmap       timer_1ms                                    ./libraries/timer_1ms/                                   
ensure_lib                                              ./libraries/sysid_qsys/                                  
vmap       sysid_qsys                                   ./libraries/sysid_qsys/                                  
ensure_lib                                              ./libraries/sgdma_tx/                                    
vmap       sgdma_tx                                     ./libraries/sgdma_tx/                                    
ensure_lib                                              ./libraries/sgdma_rx/                                    
vmap       sgdma_rx                                     ./libraries/sgdma_rx/                                    
ensure_lib                                              ./libraries/sd_dat/                                      
vmap       sd_dat                                       ./libraries/sd_dat/                                      
ensure_lib                                              ./libraries/pio_LED_painel/                              
vmap       pio_LED_painel                               ./libraries/pio_LED_painel/                              
ensure_lib                                              ./libraries/pio_LED/                                     
vmap       pio_LED                                      ./libraries/pio_LED/                                     
ensure_lib                                              ./libraries/pio_EXT/                                     
vmap       pio_EXT                                      ./libraries/pio_EXT/                                     
ensure_lib                                              ./libraries/pio_DIP/                                     
vmap       pio_DIP                                      ./libraries/pio_DIP/                                     
ensure_lib                                              ./libraries/pio_BUTTON/                                  
vmap       pio_BUTTON                                   ./libraries/pio_BUTTON/                                  
ensure_lib                                              ./libraries/onchip_memory/                               
vmap       onchip_memory                                ./libraries/onchip_memory/                               
ensure_lib                                              ./libraries/nios2_gen2_0/                                
vmap       nios2_gen2_0                                 ./libraries/nios2_gen2_0/                                
ensure_lib                                              ./libraries/m2_ddr2_memory/                              
vmap       m2_ddr2_memory                               ./libraries/m2_ddr2_memory/                              
ensure_lib                                              ./libraries/m1_ddr2_memory/                              
vmap       m1_ddr2_memory                               ./libraries/m1_ddr2_memory/                              
ensure_lib                                              ./libraries/m1_ddr2_i2c_sda/                             
vmap       m1_ddr2_i2c_sda                              ./libraries/m1_ddr2_i2c_sda/                             
ensure_lib                                              ./libraries/jtag_uart_0/                                 
vmap       jtag_uart_0                                  ./libraries/jtag_uart_0/                                 
ensure_lib                                              ./libraries/ext_flash/                                   
vmap       ext_flash                                    ./libraries/ext_flash/                                   
ensure_lib                                              ./libraries/dma_M2_M1/                                   
vmap       dma_M2_M1                                    ./libraries/dma_M2_M1/                                   
ensure_lib                                              ./libraries/dma_M1_M2/                                   
vmap       dma_M1_M2                                    ./libraries/dma_M1_M2/                                   
ensure_lib                                              ./libraries/descriptor_memory/                           
vmap       descriptor_memory                            ./libraries/descriptor_memory/                           
ensure_lib                                              ./libraries/csense_sdo/                                  
vmap       csense_sdo                                   ./libraries/csense_sdo/                                  
ensure_lib                                              ./libraries/csense_cs_n/                                 
vmap       csense_cs_n                                  ./libraries/csense_cs_n/                                 
ensure_lib                                              ./libraries/csense_adc_fo/                               
vmap       csense_adc_fo                                ./libraries/csense_adc_fo/                               
ensure_lib                                              ./libraries/clock_bridge_afi_50/                         
vmap       clock_bridge_afi_50                          ./libraries/clock_bridge_afi_50/                         
ensure_lib                                              ./libraries/SEVEN_SEGMENT_CONTROLLER_0/                  
vmap       SEVEN_SEGMENT_CONTROLLER_0                   ./libraries/SEVEN_SEGMENT_CONTROLLER_0/                  
ensure_lib                                              ./libraries/FTDI_0/                                      
vmap       FTDI_0                                       ./libraries/FTDI_0/                                      

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"               -work altera_ver            
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                        -work lpm_ver               
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                           -work sgate_ver             
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                       -work altera_mf_ver         
    eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                   -work altera_lnsim_ver      
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixiv_hssi_atoms.v"            -work stratixiv_hssi_ver    
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixiv_pcie_hip_atoms.v"        -work stratixiv_pcie_hip_ver
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixiv_atoms.v"                 -work stratixiv_ver         
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"         -work altera                
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"     -work altera                
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"        -work altera                
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"     -work altera                
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"  -work altera                
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"             -work altera                
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                       -work lpm                   
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                      -work lpm                   
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                    -work sgate                 
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                         -work sgate                 
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"          -work altera_mf             
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                     -work altera_mf             
    eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"   -work altera_lnsim          
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"       -work altera_lnsim          
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixiv_hssi_components.vhd"     -work stratixiv_hssi        
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixiv_hssi_atoms.vhd"          -work stratixiv_hssi        
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixiv_pcie_hip_components.vhd" -work stratixiv_pcie_hip    
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixiv_pcie_hip_atoms.vhd"      -work stratixiv_pcie_hip    
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixiv_atoms.vhd"               -work stratixiv             
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixiv_components.vhd"          -work stratixiv             
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_avalon_st_adapter_016_error_adapter_0.sv"               -work error_adapter_0                             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_avalon_st_adapter_010_error_adapter_0.sv"               -work error_adapter_0                             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_avalon_st_adapter_002_error_adapter_0.sv"               -work error_adapter_0                             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"                   -work error_adapter_0                             
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/alt_mem_ddrx_mm_st_converter.v"                                                             -work a0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_addr_cmd.v"                                                                    -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_addr_cmd_wrap.v"                                                               -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ddr2_odt_gen.v"                                                                -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ddr3_odt_gen.v"                                                                -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_lpddr2_addr_cmd.v"                                                             -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_odt_gen.v"                                                                     -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rdwr_data_tmg.v"                                                               -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_arbiter.v"                                                                     -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_burst_gen.v"                                                                   -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_cmd_gen.v"                                                                     -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_csr.v"                                                                         -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_buffer.v"                                                                      -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_buffer_manager.v"                                                              -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_burst_tracking.v"                                                              -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_dataid_manager.v"                                                              -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_fifo.v"                                                                        -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_list.v"                                                                        -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rdata_path.v"                                                                  -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_wdata_path.v"                                                                  -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder.v"                                                                 -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder_32_syn.v"                                                          -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder_64_syn.v"                                                          -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder.v"                                                                 -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_32_syn.v"                                                          -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_64_syn.v"                                                          -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_decoder_wrapper.v"                                                 -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_axi_st_converter.v"                                                            -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_input_if.v"                                                                    -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rank_timer.v"                                                                  -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_sideband.v"                                                                    -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_tbp.v"                                                                         -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_timing_param.v"                                                                -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_controller.v"                                                                  -work ng0                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_ddrx_controller_st_top.v"                                                           -work ng0                                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS {"+incdir+$QSYS_SIMDIR/submodules/"} "$QSYS_SIMDIR/submodules/alt_mem_if_nextgen_ddr2_controller_core.sv"                                                 -work ng0                                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_avalon_st_adapter_001_timing_adapter_0.sv"                                -work timing_adapter_0                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_avalon_st_adapter_001_timing_adapter_0_fifo.sv"                           -work timing_adapter_0                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_avalon_st_adapter_001_error_adapter_0.sv"                                 -work error_adapter_0                             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_avalon_st_adapter_error_adapter_0.sv"                                     -work error_adapter_0                             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_2_rsp_mux.sv"                                             -work rsp_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work rsp_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_2_rsp_demux.sv"                                           -work rsp_demux                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_2_cmd_mux.sv"                                             -work cmd_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work cmd_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_2_cmd_demux.sv"                                           -work cmd_demux                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_2_router_001.sv"                                          -work router_001                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_2_router.sv"                                              -work router                                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_1_rsp_mux.sv"                                             -work rsp_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work rsp_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_1_rsp_demux.sv"                                           -work rsp_demux                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_1_cmd_mux.sv"                                             -work cmd_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work cmd_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_1_cmd_demux.sv"                                           -work cmd_demux                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_1_router_001.sv"                                          -work router_001                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_1_router.sv"                                              -work router                                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_avalon_st_adapter_016.vhd"                              -work avalon_st_adapter_016                       
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_avalon_st_adapter_010.vhd"                              -work avalon_st_adapter_010                       
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_avalon_st_adapter_002.vhd"                              -work avalon_st_adapter_002                       
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_avalon_st_adapter.vhd"                                  -work avalon_st_adapter                           
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_avalon_st_handshake_clock_crosser.v"                                                 -work crosser                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                                           -work crosser                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                           -work crosser                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                            -work crosser                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                                             -work dma_M1_M2_descriptor_slave_cmd_width_adapter
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                                         -work dma_M1_M2_descriptor_slave_cmd_width_adapter
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                                        -work dma_M1_M2_descriptor_slave_cmd_width_adapter
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_rsp_mux_002.sv"                                         -work rsp_mux_002                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work rsp_mux_002                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_rsp_mux_001.sv"                                         -work rsp_mux_001                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work rsp_mux_001                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_rsp_mux.sv"                                             -work rsp_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work rsp_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_rsp_demux_015.sv"                                       -work rsp_demux_015                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_rsp_demux_014.sv"                                       -work rsp_demux_014                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_rsp_demux_013.sv"                                       -work rsp_demux_013                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_rsp_demux_009.sv"                                       -work rsp_demux_009                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_rsp_demux_002.sv"                                       -work rsp_demux_002                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_cmd_mux_015.sv"                                         -work cmd_mux_015                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work cmd_mux_015                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_cmd_mux_014.sv"                                         -work cmd_mux_014                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work cmd_mux_014                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_cmd_mux_009.sv"                                         -work cmd_mux_009                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work cmd_mux_009                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_cmd_mux_002.sv"                                         -work cmd_mux_002                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work cmd_mux_002                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_cmd_mux.sv"                                             -work cmd_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work cmd_mux                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_cmd_demux_002.sv"                                       -work cmd_demux_002                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_cmd_demux_001.sv"                                       -work cmd_demux_001                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_cmd_demux.sv"                                           -work cmd_demux                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                                             -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                                                      -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                                                        -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                                                         -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                                             -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                                             -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                                                          -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                                         -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                                         -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                           -work m2_ddr2_memory_avl_burst_adapter            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                                           -work nios2_gen2_0_instruction_master_limiter     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                                            -work nios2_gen2_0_instruction_master_limiter     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                                    -work nios2_gen2_0_instruction_master_limiter     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                                           -work nios2_gen2_0_instruction_master_limiter     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_028.sv"                                          -work router_028                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_027.sv"                                          -work router_027                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_026.sv"                                          -work router_026                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_025.sv"                                          -work router_025                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_022.sv"                                          -work router_022                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_021.sv"                                          -work router_021                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_014.sv"                                          -work router_014                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_012.sv"                                          -work router_012                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_010.sv"                                          -work router_010                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_008.sv"                                          -work router_008                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_004.sv"                                          -work router_004                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_002.sv"                                          -work router_002                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router_001.sv"                                          -work router_001                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0_router.sv"                                              -work router                                      
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                                    -work FTDI_0_FTDI_avalon_slave_agent_rsp_fifo     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                                               -work FTDI_0_FTDI_avalon_slave_agent              
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                                        -work FTDI_0_FTDI_avalon_slave_agent              
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                                              -work nios2_gen2_0_data_master_agent              
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                                         -work nios2_gen2_0_data_master_translator         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_pcs_pma_lvds.v"                                                       -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_align_sync.v"                                                             -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_dec10b8b.v"                                                               -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_dec_func.v"                                                               -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_enc8b10b.v"                                                               -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_autoneg.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_carrier_sense.v"                                                          -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_clk_gen.v"                                                                -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_sgmii_clk_div.v"                                                          -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_sgmii_clk_enable.v"                                                       -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_encapsulation.v"                                                       -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_encapsulation.v"                                                       -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_encapsulation_strx_gx.v"                                               -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_pcs_control.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_pcs_host_control.v"                                                       -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio_reg.v"                                                               -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mii_rx_if_pcs.v"                                                          -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mii_tx_if_pcs.v"                                                          -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_sync.v"                                                                -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_sgmii_clk_cntl.v"                                                         -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_colision_detect.v"                                                        -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_converter.v"                                                           -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_fifo_rd.v"                                                             -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_rx_converter.v"                                                       -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_sgmii.v"                                                              -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_sgmii_strx_gx.v"                                                      -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_tx_converter.v"                                                       -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_converter.v"                                                           -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_1000_base_x.v"                                                        -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_1000_base_x_strx_gx.v"                                                -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_pcs.v"                                                                -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_pcs_strx_gx.v"                                                        -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_rx.v"                                                                 -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_tx.v"                                                                 -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_lvds_reset_sequencer.v"                                                   -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_lvds_reverse_loopback.v"                                                  -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_pma_lvds_rx_av.v"                                                         -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_pma_lvds_rx.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_pma_lvds_tx.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_std_synchronizer.v"                                                   -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_std_synchronizer_bundle.v"                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_ptp_std_synchronizer.v"                                               -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_false_path_marker.v"                                                      -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_reset_synchronizer.v"                                                     -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_clock_crosser.v"                                                          -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_13.v"                                                              -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_24.v"                                                              -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_34.v"                                                              -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_1246.v"                                                        -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_14_44.v"                                                       -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_36_10.v"                                                       -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_gray_cnt.v"                                                               -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_sdpm_altsyncram.v"                                                        -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_altsyncram_dpm_fifo.v"                                                    -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_bin_cnt.v"                                                                -work i_tse_pcs_0                                 
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/mentor/altera_tse_ph_calculator.sv"                                                         -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_sdpm_gen.v"                                                               -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x10.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x10.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x10_wrapper.v"                                                    -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x14.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x14.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x14_wrapper.v"                                                    -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x2.v"                                                             -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x2.v"                                                             -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x2_wrapper.v"                                                     -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x23.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x23.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x23_wrapper.v"                                                    -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x36.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x36.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x36_wrapper.v"                                                    -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x40.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x40.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x40_wrapper.v"                                                    -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x30.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x30.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x30_wrapper.v"                                                    -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_status_crosser.v"                                                     -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                            -work i_tse_pcs_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_avalon_arbiter.v"                                                     -work avalon_arbiter                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_mac.v"                                                                -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_clk_cntl.v"                                                               -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc328checker.v"                                                          -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc328generator.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc32ctl8.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc32galois8.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_gmii_io.v"                                                                -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_lb_read_cntl.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_lb_wrt_cntl.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_hashing.v"                                                                -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_host_control.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_host_control_small.v"                                                     -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_control.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_register_map.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_register_map_small.v"                                                     -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_counter_cntl.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_shared_mac_control.v"                                                     -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_shared_register_map.v"                                                    -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_counter_cntl.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_lfsr_10.v"                                                                -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_loopback_ff.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_altshifttaps.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_fifoless_mac_rx.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_rx.v"                                                                 -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_fifoless_mac_tx.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_tx.v"                                                                 -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_magic_detection.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio.v"                                                                   -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio_clk_gen.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio_cntl.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_mdio.v"                                                               -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mii_rx_if.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_mii_tx_if.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_pipeline_base.v"                                                          -work i_tse_mac                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/mentor/altera_tse_pipeline_stage.sv"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_dpram_16x32.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_dpram_8x32.v"                                                             -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_dpram_ecc_16x32.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_fifoless_retransmit_cntl.v"                                               -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_retransmit_cntl.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_in1.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_in4.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_nf_rgmii_module.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_module.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_out1.v"                                                             -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_out4.v"                                                             -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff.v"                                                                  -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_min_ff.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_cntrl.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_cntrl_32.v"                                                         -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_cntrl_32_shift16.v"                                                 -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_length.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_stat_extract.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter32.v"                                                       -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter8.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter_fifo32.v"                                                  -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter_fifo8.v"                                                   -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_1geth.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_fifoless_1geth.v"                                                     -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_w_fifo.v"                                                             -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_w_fifo_10_100_1000.v"                                                 -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_wo_fifo.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_wo_fifo_10_100_1000.v"                                                -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_gen_host.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff.v"                                                                  -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_min_ff.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_cntrl.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_cntrl_32.v"                                                         -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_cntrl_32_shift16.v"                                                 -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_length.v"                                                           -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_read_cntl.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_stat_extract.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_std_synchronizer.v"                                                   -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_std_synchronizer_bundle.v"                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_ptp_std_synchronizer.v"                                               -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_false_path_marker.v"                                                      -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_reset_synchronizer.v"                                                     -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_clock_crosser.v"                                                          -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_13.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_24.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_34.v"                                                              -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_1246.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_14_44.v"                                                       -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_36_10.v"                                                       -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_gray_cnt.v"                                                               -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_sdpm_altsyncram.v"                                                        -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_altsyncram_dpm_fifo.v"                                                    -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_bin_cnt.v"                                                                -work i_tse_mac                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/mentor/altera_tse_ph_calculator.sv"                                                         -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_sdpm_gen.v"                                                               -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x10.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x10.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x10_wrapper.v"                                                    -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x14.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x14.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x14_wrapper.v"                                                    -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x2.v"                                                             -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x2.v"                                                             -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x2_wrapper.v"                                                     -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x23.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x23.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x23_wrapper.v"                                                    -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x36.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x36.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x36_wrapper.v"                                                    -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x40.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x40.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x40_wrapper.v"                                                    -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x30.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x30.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x30_wrapper.v"                                                    -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_status_crosser.v"                                                     -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                            -work i_tse_mac                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu.vo"                                                      -work cpu                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_debug_slave_sysclk.v"                                    -work cpu                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_debug_slave_tck.v"                                       -work cpu                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_debug_slave_wrapper.v"                                   -work cpu                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_mult_cell.v"                                             -work cpu                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0_cpu_test_bench.v"                                            -work cpu                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0.v"                                                      -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                                    -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst.v"                                 -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst_test_bench.v"                      -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                                             -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_rst.sv"                                                             -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                                        -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                                              -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                                         -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                                               -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                                          -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_irq_mapper.sv"                                          -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0.v"                                    -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_avalon_st_adapter.v"                  -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_cmd_demux.sv"                         -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_cmd_demux_001.sv"                     -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_cmd_mux.sv"                           -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_cmd_mux_003.sv"                       -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_router.sv"                            -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_router_001.sv"                        -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_router_002.sv"                        -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_router_005.sv"                        -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_rsp_demux_003.sv"                     -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_rsp_mux.sv"                           -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_s0_mm_interconnect_0_rsp_mux_001.sv"                       -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_no_ifdef_params.v"                                                        -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_reg.v"                                                                    -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_bitcheck.v"                                                                      -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/rw_manager_core.sv"                                                                         -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_datamux.v"                                                                       -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_data_broadcast.v"                                                                -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_data_decoder.v"                                                                  -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ddr2.v"                                                                          -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_di_buffer.v"                                                                     -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_di_buffer_wrap.v"                                                                -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_dm_decoder.v"                                                                    -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/rw_manager_generic.sv"                                                                      -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_no_ifdef_params.v"                                                      -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_reg.v"                                                                  -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_jumplogic.v"                                                                     -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_lfsr12.v"                                                                        -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_lfsr36.v"                                                                        -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_lfsr72.v"                                                                        -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_pattern_fifo.v"                                                                  -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ram.v"                                                                           -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ram_csr.v"                                                                       -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_read_datapath.v"                                                                 -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_write_decoder.v"                                                                 -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_data_mgr.sv"                                                                      -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_phy_mgr.sv"                                                                       -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_reg_file.sv"                                                                      -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/sequencer_scc_acv_phase_decode.v"                                                           -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_scc_acv_wrapper.sv"                                                               -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_scc_mgr.sv"                                                                       -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/sequencer_scc_reg_file.v"                                                                   -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/sequencer_scc_siii_phase_decode.v"                                                          -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_scc_siii_wrapper.sv"                                                              -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/sequencer_scc_sv_phase_decode.v"                                                            -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_scc_sv_wrapper.sv"                                                                -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_clock_pair_generator.v"                                 -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_read_valid_selector.v"                                  -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_addr_cmd_datapath.v"                                    -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_reset.v"                                                -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_acv_ldc.v"                                              -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_memphy.sv"                                              -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_reset_sync.v"                                           -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_new_io_pads.v"                                          -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_fr_cycle_shifter.v"                                     -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_fr_cycle_extender.v"                                    -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_read_datapath.sv"                                       -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_write_datapath.v"                                       -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_simple_ddio_out.sv"                                     -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_phy_csr.sv"                                             -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_iss_probe.v"                                            -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_addr_cmd_pads.v"                                        -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_flop_mem.v"                                             -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0.sv"                                                     -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_p0_altdqdqs.v"                                             -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altdq_dqs2_ddio_3reg_stratixiv.sv"                                                          -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altdq_dqs2_abstract.sv"                                                                     -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altdq_dqs2_cal_delays.sv"                                                                   -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory_pll0.sv"                                                   -work pll0                                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_mem_if_dll_stratixiv.sv"                                                             -work dll0                                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_mem_if_oct_stratixiv.sv"                                                             -work oct0                                        
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_c0.v"                                                      -work c0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0.v"                                                      -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                                    -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst.v"                                 -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst_test_bench.v"                      -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                                             -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_rst.sv"                                                             -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                                                -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                                        -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                                              -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                                         -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                                               -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                                          -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_irq_mapper.sv"                                          -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0.v"                                    -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_avalon_st_adapter.v"                  -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_cmd_demux.sv"                         -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_cmd_demux_001.sv"                     -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_cmd_mux.sv"                           -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_cmd_mux_003.sv"                       -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_router.sv"                            -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_router_001.sv"                        -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_router_002.sv"                        -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_router_005.sv"                        -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_rsp_demux_003.sv"                     -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_rsp_mux.sv"                           -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_s0_mm_interconnect_0_rsp_mux_001.sv"                       -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_no_ifdef_params.v"                                                        -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_reg.v"                                                                    -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_bitcheck.v"                                                                      -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/rw_manager_core.sv"                                                                         -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_datamux.v"                                                                       -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_data_broadcast.v"                                                                -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_data_decoder.v"                                                                  -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ddr2.v"                                                                          -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_di_buffer.v"                                                                     -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_di_buffer_wrap.v"                                                                -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_dm_decoder.v"                                                                    -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/rw_manager_generic.sv"                                                                      -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_no_ifdef_params.v"                                                      -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_reg.v"                                                                  -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_jumplogic.v"                                                                     -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_lfsr12.v"                                                                        -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_lfsr36.v"                                                                        -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_lfsr72.v"                                                                        -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_pattern_fifo.v"                                                                  -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ram.v"                                                                           -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_ram_csr.v"                                                                       -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_read_datapath.v"                                                                 -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/rw_manager_write_decoder.v"                                                                 -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_data_mgr.sv"                                                                      -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_phy_mgr.sv"                                                                       -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_reg_file.sv"                                                                      -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/sequencer_scc_acv_phase_decode.v"                                                           -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_scc_acv_wrapper.sv"                                                               -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_scc_mgr.sv"                                                                       -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/sequencer_scc_reg_file.v"                                                                   -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/sequencer_scc_siii_phase_decode.v"                                                          -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_scc_siii_wrapper.sv"                                                              -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/sequencer_scc_sv_phase_decode.v"                                                            -work s0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/sequencer_scc_sv_wrapper.sv"                                                                -work s0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/afi_mux_ddrx.v"                                                                             -work m0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_clock_pair_generator.v"                                 -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_read_valid_selector.v"                                  -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_addr_cmd_datapath.v"                                    -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_reset.v"                                                -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_acv_ldc.v"                                              -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_memphy.sv"                                              -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_reset_sync.v"                                           -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_new_io_pads.v"                                          -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_fr_cycle_shifter.v"                                     -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_fr_cycle_extender.v"                                    -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_read_datapath.sv"                                       -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_write_datapath.v"                                       -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_simple_ddio_out.sv"                                     -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_phy_csr.sv"                                             -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_iss_probe.v"                                            -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_addr_cmd_pads.v"                                        -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_flop_mem.v"                                             -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0.sv"                                                     -work p0                                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_p0_altdqdqs.v"                                             -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altdq_dqs2_ddio_3reg_stratixiv.sv"                                                          -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altdq_dqs2_abstract.sv"                                                                     -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altdq_dqs2_cal_delays.sv"                                                                   -work p0                                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory_pll0.sv"                                                   -work pll0                                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_tristate_controller_aggregator.sv"                                                   -work tda                                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                                          -work slave_translator                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_tristate_controller_translator.sv"                                                   -work tdt                                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/write_master.v"                                                                             -work write_mstr_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/byte_enable_generator.v"                                                                    -work write_mstr_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/ST_to_MM_Adapter.v"                                                                         -work write_mstr_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/write_burst_control.v"                                                                      -work write_mstr_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/read_master.v"                                                                              -work read_mstr_internal                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MM_to_ST_Adapter.v"                                                                         -work read_mstr_internal                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/read_burst_control.v"                                                                       -work read_mstr_internal                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/dispatcher.v"                                                                               -work dispatcher_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/descriptor_buffers.v"                                                                       -work dispatcher_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/csr_block.v"                                                                                -work dispatcher_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/response_block.v"                                                                           -work dispatcher_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/fifo_with_byteenables.v"                                                                    -work dispatcher_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/read_signal_breakout.v"                                                                     -work dispatcher_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/write_signal_breakout.v"                                                                    -work dispatcher_internal                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                                                  -work rst_controller                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                                                -work rst_controller                              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_avalon_st_adapter_001.vhd"                                                -work avalon_st_adapter_001                       
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_avalon_st_adapter.vhd"                                                    -work avalon_st_adapter                           
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/altera_irq_clock_crosser.sv"                                                                -work irq_synchronizer                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_irq_mapper.sv"                                                            -work irq_mapper                                  
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_2.v"                                                      -work mm_interconnect_2                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_1.v"                                                      -work mm_interconnect_1                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_mm_interconnect_0.v"                                                      -work mm_interconnect_0                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_tse_mac.v"                                                                -work tse_mac                                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS                                      "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_tristate_conduit_bridge_0.sv"                                             -work tristate_conduit_bridge_0                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_timer_1us.v"                                                              -work timer_1us                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_timer_1ms.v"                                                              -work timer_1ms                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_sysid_qsys.v"                                                             -work sysid_qsys                                  
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_sgdma_tx.v"                                                               -work sgdma_tx                                    
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_sgdma_rx.v"                                                               -work sgdma_rx                                    
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_sd_dat.v"                                                                 -work sd_dat                                      
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_pio_LED_painel.v"                                                         -work pio_LED_painel                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_pio_LED.v"                                                                -work pio_LED                                     
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_pio_EXT.v"                                                                -work pio_EXT                                     
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_pio_DIP.v"                                                                -work pio_DIP                                     
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_pio_BUTTON.v"                                                             -work pio_BUTTON                                  
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_onchip_memory.v"                                                          -work onchip_memory                               
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_nios2_gen2_0.v"                                                           -work nios2_gen2_0                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m2_ddr2_memory.v"                                                         -work m2_ddr2_memory                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_memory.v"                                                         -work m1_ddr2_memory                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_m1_ddr2_i2c_sda.v"                                                        -work m1_ddr2_i2c_sda                             
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_jtag_uart_0.v"                                                            -work jtag_uart_0                                 
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_ext_flash.vhd"                                                            -work ext_flash                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_dma_M2_M1.v"                                                              -work dma_M2_M1                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_dma_M1_M2.v"                                                              -work dma_M1_M2                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_descriptor_memory.v"                                                      -work descriptor_memory                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_csense_sdo.v"                                                             -work csense_sdo                                  
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_csense_cs_n.v"                                                            -work csense_cs_n                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/MebX_Qsys_Project_csense_adc_fo.v"                                                          -work csense_adc_fo                               
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_avalon_mm_clock_crossing_bridge.v"                                                   -work clock_bridge_afi_50                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_avalon_dc_fifo.v"                                                                    -work clock_bridge_afi_50                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_dcfifo_synchronizer_bundle.v"                                                        -work clock_bridge_afi_50                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                                            -work clock_bridge_afi_50                         
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/SEVEN_SEG_REGISTER.vhd"                                                                     -work SEVEN_SEGMENT_CONTROLLER_0                  
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/DOUBLE_DABBLE_8BIT.vhd"                                                                     -work SEVEN_SEGMENT_CONTROLLER_0                  
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/SEVEN_SEG_DPS.vhd"                                                                          -work SEVEN_SEGMENT_CONTROLLER_0                  
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/SEVEN_SEG_TOP.vhd"                                                                          -work SEVEN_SEGMENT_CONTROLLER_0                  
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/FTDI_BIDIR_PIN.vhd"                                                                         -work FTDI_0                                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/FTDI_BIDIR_BUS.vhd"                                                                         -work FTDI_0                                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/FTDI_DC_PIN.vhd"                                                                            -work FTDI_0                                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/FTDI_DC_BUS.vhd"                                                                            -work FTDI_0                                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/FTDI_REGISTERS_PCK.vhd"                                                                     -work FTDI_0                                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/FTDI_AVALON_READ.vhd"                                                                       -work FTDI_0                                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/FTDI_AVALON_WRITE.vhd"                                                                      -work FTDI_0                                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/submodules/FTDI_TOPLEVEL.vhd"                                                                          -work FTDI_0                                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/MebX_Qsys_Project.vhd"                                                                                                                                   
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/mebx_qsys_project_rst_controller.vhd"                                                                                                                    
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/mebx_qsys_project_rst_controller_001.vhd"                                                                                                                
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/mebx_qsys_project_rst_controller_002.vhd"                                                                                                                
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/mebx_qsys_project_clock_bridge_afi_50.vhd"                                                                                                               
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS                                          "$QSYS_SIMDIR/mebx_qsys_project_m1_clock_bridge.vhd"                                                                                                                   
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L error_adapter_0 -L a0 -L ng0 -L timing_adapter_0 -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_001 -L router -L avalon_st_adapter_016 -L avalon_st_adapter_010 -L avalon_st_adapter_002 -L avalon_st_adapter -L crosser -L dma_M1_M2_descriptor_slave_cmd_width_adapter -L rsp_mux_002 -L rsp_mux_001 -L rsp_demux_015 -L rsp_demux_014 -L rsp_demux_013 -L rsp_demux_009 -L rsp_demux_002 -L cmd_mux_015 -L cmd_mux_014 -L cmd_mux_009 -L cmd_mux_002 -L cmd_demux_002 -L cmd_demux_001 -L m2_ddr2_memory_avl_burst_adapter -L nios2_gen2_0_instruction_master_limiter -L router_028 -L router_027 -L router_026 -L router_025 -L router_022 -L router_021 -L router_014 -L router_012 -L router_010 -L router_008 -L router_004 -L router_002 -L FTDI_0_FTDI_avalon_slave_agent_rsp_fifo -L FTDI_0_FTDI_avalon_slave_agent -L nios2_gen2_0_data_master_agent -L nios2_gen2_0_data_master_translator -L i_tse_pcs_0 -L avalon_arbiter -L i_tse_mac -L cpu -L s0 -L p0 -L pll0 -L dll0 -L oct0 -L c0 -L m0 -L tda -L slave_translator -L tdt -L write_mstr_internal -L read_mstr_internal -L dispatcher_internal -L rst_controller -L avalon_st_adapter_001 -L irq_synchronizer -L irq_mapper -L mm_interconnect_2 -L mm_interconnect_1 -L mm_interconnect_0 -L tse_mac -L tristate_conduit_bridge_0 -L timer_1us -L timer_1ms -L sysid_qsys -L sgdma_tx -L sgdma_rx -L sd_dat -L pio_LED_painel -L pio_LED -L pio_EXT -L pio_DIP -L pio_BUTTON -L onchip_memory -L nios2_gen2_0 -L m2_ddr2_memory -L m1_ddr2_memory -L m1_ddr2_i2c_sda -L jtag_uart_0 -L ext_flash -L dma_M2_M1 -L dma_M1_M2 -L descriptor_memory -L csense_sdo -L csense_cs_n -L csense_adc_fo -L clock_bridge_afi_50 -L SEVEN_SEGMENT_CONTROLLER_0 -L FTDI_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixiv_hssi_ver -L stratixiv_pcie_hip_ver -L stratixiv_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L stratixiv_hssi -L stratixiv_pcie_hip -L stratixiv $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L error_adapter_0 -L a0 -L ng0 -L timing_adapter_0 -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_001 -L router -L avalon_st_adapter_016 -L avalon_st_adapter_010 -L avalon_st_adapter_002 -L avalon_st_adapter -L crosser -L dma_M1_M2_descriptor_slave_cmd_width_adapter -L rsp_mux_002 -L rsp_mux_001 -L rsp_demux_015 -L rsp_demux_014 -L rsp_demux_013 -L rsp_demux_009 -L rsp_demux_002 -L cmd_mux_015 -L cmd_mux_014 -L cmd_mux_009 -L cmd_mux_002 -L cmd_demux_002 -L cmd_demux_001 -L m2_ddr2_memory_avl_burst_adapter -L nios2_gen2_0_instruction_master_limiter -L router_028 -L router_027 -L router_026 -L router_025 -L router_022 -L router_021 -L router_014 -L router_012 -L router_010 -L router_008 -L router_004 -L router_002 -L FTDI_0_FTDI_avalon_slave_agent_rsp_fifo -L FTDI_0_FTDI_avalon_slave_agent -L nios2_gen2_0_data_master_agent -L nios2_gen2_0_data_master_translator -L i_tse_pcs_0 -L avalon_arbiter -L i_tse_mac -L cpu -L s0 -L p0 -L pll0 -L dll0 -L oct0 -L c0 -L m0 -L tda -L slave_translator -L tdt -L write_mstr_internal -L read_mstr_internal -L dispatcher_internal -L rst_controller -L avalon_st_adapter_001 -L irq_synchronizer -L irq_mapper -L mm_interconnect_2 -L mm_interconnect_1 -L mm_interconnect_0 -L tse_mac -L tristate_conduit_bridge_0 -L timer_1us -L timer_1ms -L sysid_qsys -L sgdma_tx -L sgdma_rx -L sd_dat -L pio_LED_painel -L pio_LED -L pio_EXT -L pio_DIP -L pio_BUTTON -L onchip_memory -L nios2_gen2_0 -L m2_ddr2_memory -L m1_ddr2_memory -L m1_ddr2_i2c_sda -L jtag_uart_0 -L ext_flash -L dma_M2_M1 -L dma_M1_M2 -L descriptor_memory -L csense_sdo -L csense_cs_n -L csense_adc_fo -L clock_bridge_afi_50 -L SEVEN_SEGMENT_CONTROLLER_0 -L FTDI_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixiv_hssi_ver -L stratixiv_pcie_hip_ver -L stratixiv_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L stratixiv_hssi -L stratixiv_pcie_hip -L stratixiv $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo "                                 For most designs, this should be overridden"
  echo "                                 to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS  -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS     -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h