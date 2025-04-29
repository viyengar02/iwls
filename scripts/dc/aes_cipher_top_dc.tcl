# Auto-generated synthesis script for aes_cipher_top
# Source files from: aes_core

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/aes_core/aes_cipher_top.v
analyze -library WORK -format verilog ../rtl/aes_core/aes_inv_cipher_top.v
analyze -library WORK -format verilog ../rtl/aes_core/aes_inv_sbox.v
analyze -library WORK -format verilog ../rtl/aes_core/aes_key_expand_128.v
analyze -library WORK -format verilog ../rtl/aes_core/aes_rcon.v
analyze -library WORK -format verilog ../rtl/aes_core/aes_sbox.v
analyze -library WORK -format verilog ../rtl/aes_core/timescale.v

# Elaborate the top design
elaborate aes_cipher_top
link

# Output files
write -hier -f ddc -output ./outputs/aes_core/aes_cipher_top.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/aes_core/aes_cipher_top_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/aes_core/aes_cipher_top_constraints.rpt
report_area > ./reports/aes_core/aes_cipher_top_area.rpt
report_power > ./reports/aes_core/aes_cipher_top_power.rpt
report_qor  > ./reports/aes_core/aes_cipher_top_qor.rpt
report_cell > ./reports/aes_core/aes_cipher_top_cells.rpt
report_resources > ./reports/aes_core/aes_cipher_top_resources.rpt
report_timing -max_paths 10 > ./reports/aes_core/aes_cipher_top_timing.rpt

# Output files
write_sdc ./outputs/aes_core/aes_cipher_top.sdc
write -hier -f ddc -output ./outputs/aes_core/aes_cipher_top.ddc
write -hierarchy -format verilog -output ./outputs/aes_core/aes_cipher_top.v
quit
