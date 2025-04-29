# Auto-generated synthesis script for des3
# Source files from: des3_area

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/des3_area/des3.v
analyze -library WORK -format verilog ../rtl/des3_area/des.v
analyze -library WORK -format verilog ../rtl/des3_area/key_sel3.v
analyze -library WORK -format verilog ../rtl/des3_area/key_sel.v
analyze -library WORK -format verilog ../rtl/des3_area/crp.v
analyze -library WORK -format verilog ../rtl/des3_area/sbox1.v
analyze -library WORK -format verilog ../rtl/des3_area/sbox2.v
analyze -library WORK -format verilog ../rtl/des3_area/sbox3.v
analyze -library WORK -format verilog ../rtl/des3_area/sbox4.v
analyze -library WORK -format verilog ../rtl/des3_area/sbox5.v
analyze -library WORK -format verilog ../rtl/des3_area/sbox6.v
analyze -library WORK -format verilog ../rtl/des3_area/sbox7.v
analyze -library WORK -format verilog ../rtl/des3_area/sbox8.v

# Elaborate the top design
elaborate des3
link

# Output files
write -hier -f ddc -output ./outputs/des3_area/des3.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/des3_area/des3_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/des3_area/des3_constraints.rpt
report_area > ./reports/des3_area/des3_area.rpt
report_power > ./reports/des3_area/des3_power.rpt
report_qor  > ./reports/des3_area/des3_qor.rpt
report_cell > ./reports/des3_area/des3_cells.rpt
report_resources > ./reports/des3_area/des3_resources.rpt
report_timing -max_paths 10 > ./reports/des3_area/des3_timing.rpt

# Output files
write_sdc ./outputs/des3_area/des3.sdc
write -hier -f ddc -output ./outputs/des3_area/des3.ddc
write -hierarchy -format verilog -output ./outputs/des3_area/des3.v
quit
