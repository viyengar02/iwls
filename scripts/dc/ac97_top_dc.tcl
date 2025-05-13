# Auto-generated synthesis script for ac97_top
# Source files from: ac97_ctrl

lappend search_path ../src/
define_design_lib WORK -path "work"

set sdc_version 2.1

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_cra.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_defines.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_dma_if.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_dma_req.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_fifo_ctrl.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_in_fifo.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_int.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_out_fifo.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_prc.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_rf.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_rst.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_sin.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_soc.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_sout.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_top.v
analyze -library WORK -format verilog ../rtl/ac97_ctrl/ac97_wb_if.v

# Elaborate the top design
elaborate ac97_top
link

# Output files
write -hier -f ddc -output ./outputs/ac97_ctrl/ac97_top.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk_i] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/ac97_ctrl/ac97_top_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/ac97_ctrl/ac97_top_constraints.rpt
report_area > ./reports/ac97_ctrl/ac97_top_area.rpt
report_power > ./reports/ac97_ctrl/ac97_top_power.rpt
report_qor  > ./reports/ac97_ctrl/ac97_top_qor.rpt
report_cell > ./reports/ac97_ctrl/ac97_top_cells.rpt
report_resources > ./reports/ac97_ctrl/ac97_top_resources.rpt
report_timing -max_paths 10 > ./reports/ac97_ctrl/ac97_top_timing.rpt

# Output files
write_sdc ./outputs/ac97_ctrl/ac97_top.sdc
write -hier -f ddc -output ./outputs/ac97_ctrl/ac97_top.ddc
write -hierarchy -format verilog -output ./outputs/ac97_ctrl/ac97_top.v
quit
