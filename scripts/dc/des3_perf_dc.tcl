# Auto-generated synthesis script for des3_perf
# Source files from: des3_perf

lappend search_path ../src/
define_design_lib WORK -path "work"

set sdc_version 2.1

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/des3_perf/des3.v
analyze -library WORK -format verilog ../rtl/des3_perf/des.v
analyze -library WORK -format verilog ../rtl/des3_perf/key_sel.v
analyze -library WORK -format verilog ../rtl/des3_perf/crp.v
analyze -library WORK -format verilog ../rtl/des3_perf/sbox1.v
analyze -library WORK -format verilog ../rtl/des3_perf/sbox2.v
analyze -library WORK -format verilog ../rtl/des3_perf/sbox3.v
analyze -library WORK -format verilog ../rtl/des3_perf/sbox4.v
analyze -library WORK -format verilog ../rtl/des3_perf/sbox5.v
analyze -library WORK -format verilog ../rtl/des3_perf/sbox6.v
analyze -library WORK -format verilog ../rtl/des3_perf/sbox7.v
analyze -library WORK -format verilog ../rtl/des3_perf/sbox8.v

# Elaborate the top design
elaborate des3_perf
link

# Output files
write -hier -f ddc -output ./outputs/des3_perf/des3_perf.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/des3_perf/des3_perf_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/des3_perf/des3_perf_constraints.rpt
report_area > ./reports/des3_perf/des3_perf_area.rpt
report_power > ./reports/des3_perf/des3_perf_power.rpt
report_qor  > ./reports/des3_perf/des3_perf_qor.rpt
report_cell > ./reports/des3_perf/des3_perf_cells.rpt
report_resources > ./reports/des3_perf/des3_perf_resources.rpt
report_timing -max_paths 10 > ./reports/des3_perf/des3_perf_timing.rpt

# Output files
write_sdc ./outputs/des3_perf/des3_perf.sdc
write -hier -f ddc -output ./outputs/des3_perf/des3_perf.ddc
write -hierarchy -format verilog -output ./outputs/des3_perf/des3_perf.v
quit
