# Auto-generated synthesis script for aes
# Source files from: systemcaes

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/systemcaes/aes.v
analyze -library WORK -format verilog ../rtl/systemcaes/byte_mixcolum.v
analyze -library WORK -format verilog ../rtl/systemcaes/keysched.v
analyze -library WORK -format verilog ../rtl/systemcaes/mixcolum.v
analyze -library WORK -format verilog ../rtl/systemcaes/sbox.v
analyze -library WORK -format verilog ../rtl/systemcaes/subbytes.v
analyze -library WORK -format verilog ../rtl/systemcaes/timescale.v
analyze -library WORK -format verilog ../rtl/systemcaes/word_mixcolum.v

# Elaborate the top design
elaborate aes
link

# Output files
write -hier -f ddc -output ./outputs/systemcaes/aes.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/systemcaes/aes_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/systemcaes/aes_constraints.rpt
report_area > ./reports/systemcaes/aes_area.rpt
report_power > ./reports/systemcaes/aes_power.rpt
report_qor  > ./reports/systemcaes/aes_qor.rpt
report_cell > ./reports/systemcaes/aes_cells.rpt
report_resources > ./reports/systemcaes/aes_resources.rpt
report_timing -max_paths 10 > ./reports/systemcaes/aes_timing.rpt

# Output files
write_sdc ./outputs/systemcaes/aes.sdc
write -hier -f ddc -output ./outputs/systemcaes/aes.ddc
write -hierarchy -format verilog -output ./outputs/systemcaes/aes.v
quit
