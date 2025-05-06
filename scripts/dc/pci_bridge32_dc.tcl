# Auto-generated synthesis script for pci_bridge32
# Source files from: pci

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/pci/bus_commands.v
analyze -library WORK -format verilog ../rtl/pci/pci_async_reset_flop.v
analyze -library WORK -format verilog ../rtl/pci/pci_bridge32.v
analyze -library WORK -format verilog ../rtl/pci/pci_cbe_en_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_conf_cyc_addr_dec.v
analyze -library WORK -format verilog ../rtl/pci/pci_conf_space.v
analyze -library WORK -format verilog ../rtl/pci/pci_constants.v
analyze -library WORK -format verilog ../rtl/pci/pci_cur_out_reg.v
analyze -library WORK -format verilog ../rtl/pci/pci_delayed_sync.v
analyze -library WORK -format verilog ../rtl/pci/pci_delayed_write_reg.v
analyze -library WORK -format verilog ../rtl/pci/pci_frame_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_frame_en_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_frame_load_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_in_reg.v
analyze -library WORK -format verilog ../rtl/pci/pci_io_mux.v
analyze -library WORK -format verilog ../rtl/pci/pci_io_mux_ad_en_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_io_mux_ad_load_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_irdy_out_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_mas_ad_en_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_mas_ad_load_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_mas_ch_state_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_master32_sm.v
analyze -library WORK -format verilog ../rtl/pci/pci_master32_sm_if.v
analyze -library WORK -format verilog ../rtl/pci/pci_out_reg.v
analyze -library WORK -format verilog ../rtl/pci/pci_par_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_parity_check.v
analyze -library WORK -format verilog ../rtl/pci/pci_pci_decoder.v
analyze -library WORK -format verilog ../rtl/pci/pci_pci_tpram.v
analyze -library WORK -format verilog ../rtl/pci/pci_perr_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_pcir_fifo_control.v
analyze -library WORK -format verilog ../rtl/pci/pci_pciw_fifo_control.v
analyze -library WORK -format verilog ../rtl/pci/pci_pciw_pcir_fifos.v
analyze -library WORK -format verilog ../rtl/pci/pci_perr_en_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_ram_16x40d.v
analyze -library WORK -format verilog ../rtl/pci/pci_rst_int.v
analyze -library WORK -format verilog ../rtl/pci/pci_serr_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_serr_en_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_spoci_ctrl.v
analyze -library WORK -format verilog ../rtl/pci/pci_sync_module.v
analyze -library WORK -format verilog ../rtl/pci/pci_synchronizer_flop.v
analyze -library WORK -format verilog ../rtl/pci/pci_target32_clk_en.v
analyze -library WORK -format verilog ../rtl/pci/pci_target32_devs_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_target32_interface.v
analyze -library WORK -format verilog ../rtl/pci/pci_target32_sm.v
analyze -library WORK -format verilog ../rtl/pci/pci_target32_stop_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_target32_trdy_crit.v
analyze -library WORK -format verilog ../rtl/pci/pci_target_unit.v
analyze -library WORK -format verilog ../rtl/pci/pci_user_constants.v
analyze -library WORK -format verilog ../rtl/pci/pci_wb_addr_mux.v
analyze -library WORK -format verilog ../rtl/pci/pci_wb_decoder.v
analyze -library WORK -format verilog ../rtl/pci/pci_wb_master.v
analyze -library WORK -format verilog ../rtl/pci/pci_wb_slave.v
analyze -library WORK -format verilog ../rtl/pci/pci_wb_slave_unit.v
analyze -library WORK -format verilog ../rtl/pci/pci_wb_tpram.v
analyze -library WORK -format verilog ../rtl/pci/pci_wbr_fifo_control.v
analyze -library WORK -format verilog ../rtl/pci/pci_wbs_wbb3_2_wbb2.v
analyze -library WORK -format verilog ../rtl/pci/pci_wbw_fifo_control.v
analyze -library WORK -format verilog ../rtl/pci/pci_wbw_wbr_fifos.v
analyze -library WORK -format verilog ../rtl/pci/timescale.v

# Elaborate the top design
elaborate pci_bridge32
link

# Output files
write -hier -f ddc -output ./outputs/pci/pci_bridge32.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports wb_clk_i] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/pci/pci_bridge32_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/pci/pci_bridge32_constraints.rpt
report_area > ./reports/pci/pci_bridge32_area.rpt
report_power > ./reports/pci/pci_bridge32_power.rpt
report_qor  > ./reports/pci/pci_bridge32_qor.rpt
report_cell > ./reports/pci/pci_bridge32_cells.rpt
report_resources > ./reports/pci/pci_bridge32_resources.rpt
report_timing -max_paths 10 > ./reports/pci/pci_bridge32_timing.rpt

# Output files
write_sdc ./outputs/pci/pci_bridge32.sdc
write -hier -f ddc -output ./outputs/pci/pci_bridge32.ddc
write -hierarchy -format verilog -output ./outputs/pci/pci_bridge32.v
quit
