# Auto-generated synthesis script for des
# Source files from: systemcdes

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/systemcdes/des.v
analyze -library WORK -format verilog ../rtl/systemcdes/desround.v
analyze -library WORK -format verilog ../rtl/systemcdes/key_gen.v
analyze -library WORK -format verilog ../rtl/systemcdes/s1.v
analyze -library WORK -format verilog ../rtl/systemcdes/s2.v
analyze -library WORK -format verilog ../rtl/systemcdes/s3.v
analyze -library WORK -format verilog ../rtl/systemcdes/s4.v
analyze -library WORK -format verilog ../rtl/systemcdes/s5.v
analyze -library WORK -format verilog ../rtl/systemcdes/s6.v
analyze -library WORK -format verilog ../rtl/systemcdes/s7.v
analyze -library WORK -format verilog ../rtl/systemcdes/s8.v

# Elaborate the top design
elaborate des
link

# Output files
write -hier -f ddc -output ./outputs/systemcdes/des.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/systemcdes/des_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/systemcdes/des_constraints.rpt
report_area > ./reports/systemcdes/des_area.rpt
report_power > ./reports/systemcdes/des_power.rpt
report_qor  > ./reports/systemcdes/des_qor.rpt
report_cell > ./reports/systemcdes/des_cells.rpt
report_resources > ./reports/systemcdes/des_resources.rpt
report_timing -max_paths 10 > ./reports/systemcdes/des_timing.rpt

# Output files
write_sdc ./outputs/systemcdes/des.sdc
write -hier -f ddc -output ./outputs/systemcdes/des.ddc
write -hierarchy -format verilog -output ./outputs/systemcdes/des.v
quit
