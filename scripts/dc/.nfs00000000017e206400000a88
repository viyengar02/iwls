# Auto-generated synthesis script for mc_top
# Source files from: mem_ctrl

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_adr_sel.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_cs_rf.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_defines.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_dp.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_incn_r.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_mem_if.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_obct.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_obct_top.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_rd_fifo.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_refresh.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_rf.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_timing.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_top.v
analyze -library WORK -format verilog ../rtl/mem_ctrl/mc_wb_if.v

# Elaborate the top design
elaborate mc_top
link

# Output files
write -hier -f ddc -output ./outputs/mem_ctrl/mc_top.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk_i] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/mem_ctrl/mc_top_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/mem_ctrl/mc_top_constraints.rpt
report_area > ./reports/mem_ctrl/mc_top_area.rpt
report_power > ./reports/mem_ctrl/mc_top_power.rpt
report_qor  > ./reports/mem_ctrl/mc_top_qor.rpt
report_cell > ./reports/mem_ctrl/mc_top_cells.rpt
report_resources > ./reports/mem_ctrl/mc_top_resources.rpt
report_timing -max_paths 10 > ./reports/mem_ctrl/mc_top_timing.rpt

# Output files
write_sdc ./outputs/mem_ctrl/mc_top.sdc
write -hier -f ddc -output ./outputs/mem_ctrl/mc_top.ddc
write -hierarchy -format verilog -output ./outputs/mem_ctrl/mc_top.v
quit
