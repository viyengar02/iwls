# Auto-generated synthesis script for tv80s
# Source files from: tv80

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/tv80/tv80_alu.v
analyze -library WORK -format verilog ../rtl/tv80/tv80_core.v
analyze -library WORK -format verilog ../rtl/tv80/tv80_mcode.v
analyze -library WORK -format verilog ../rtl/tv80/tv80_reg.v
analyze -library WORK -format verilog ../rtl/tv80/tv80s.v

# Elaborate the top design
elaborate tv80s
link

# Output files
write -hier -f ddc -output ./outputs/tv80/tv80s.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/tv80/tv80s_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/tv80/tv80s_constraints.rpt
report_area > ./reports/tv80/tv80s_area.rpt
report_power > ./reports/tv80/tv80s_power.rpt
report_qor  > ./reports/tv80/tv80s_qor.rpt
report_cell > ./reports/tv80/tv80s_cells.rpt
report_resources > ./reports/tv80/tv80s_resources.rpt
report_timing -max_paths 10 > ./reports/tv80/tv80s_timing.rpt

# Output files
write_sdc ./outputs/tv80/tv80s.sdc
write -hier -f ddc -output ./outputs/tv80/tv80s.ddc
write -hierarchy -format verilog -output ./outputs/tv80/tv80s.v
quit
