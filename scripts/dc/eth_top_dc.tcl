# Auto-generated synthesis script for eth_top
# Source files from: ethernet

lappend search_path ../src/
define_design_lib WORK -path "work"

set sdc_version 2.1

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/ethernet/eth_clockgen.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_cop.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_crc.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_defines.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_fifo.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_maccontrol.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_macstatus.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_miim.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_outputcontrol.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_random.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_receivecontrol.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_register.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_registers.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_rxaddrcheck.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_rxcounters.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_rxethmac.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_rxstatem.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_shiftreg.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_spram_256x32.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_top.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_transmitcontrol.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_txcounters.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_txethmac.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_txstatem.v
analyze -library WORK -format verilog ../rtl/ethernet/eth_wishbone.v
analyze -library WORK -format verilog ../rtl/ethernet/timescale.v
analyze -library WORK -format verilog ../rtl/ethernet/xilinx_dist_ram_16x32.v

# Elaborate the top design
elaborate eth_top
link

# Output files
write -hier -f ddc -output ./outputs/ethernet/eth_top.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports wb_clk_i] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/ethernet/eth_top_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/ethernet/eth_top_constraints.rpt
report_area > ./reports/ethernet/eth_top_area.rpt
report_power > ./reports/ethernet/eth_top_power.rpt
report_qor  > ./reports/ethernet/eth_top_qor.rpt
report_cell > ./reports/ethernet/eth_top_cells.rpt
report_resources > ./reports/ethernet/eth_top_resources.rpt
report_timing -max_paths 10 > ./reports/ethernet/eth_top_timing.rpt

# Output files
write_sdc ./outputs/ethernet/eth_top.sdc
write -hier -f ddc -output ./outputs/ethernet/eth_top.ddc
write -hierarchy -format verilog -output ./outputs/ethernet/eth_top.v
quit
