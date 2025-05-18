# Auto-generated synthesis script for aes_cipher_top
# Source files from: aes_core

lappend search_path ../src/
define_design_lib WORK -path "work"

set sdc_version 2.1

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

# Timing optimization settings
set_critical_range 1.5 [current_design]
set_max_fanout 16 [current_design]
set_auto_disable_timing false
set_fix_multiple_port_nets -all -buffer_constants
set_compile_clock_gating_through_hierarchy true
set_optimize_registers true -design [current_design]

# Advanced optimization
set_ultra_optimization true
set_clock_gating_style -sequential_cell latch -positive_edge_logic integrated
set_compile_ultra_ungroup_dw true
set_compile_ultra_timing true

# Buffer insertion and optimization
set_buffer_opt_strategy -effort high
set_dynamic_optimization true
set_leakage_optimization false
set_host_options -max_cores 4

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

report_port -verbose > ./reports/aes_core/aes_cipher_topdesign_ports.rpt
report_constraints -all_violators -nosplit > ./reports/aes_core/aes_cipher_top_constraint_violations.rpt
report_cell -nosplit {*[get_cells -filter "ref_name=~*clk* || is_clock_gating_cell==true"]} > ./reports/aes_core/aes_cipher_top_clock_cells.rpt
all_inputs > ./reports/aes_core/aes_cipher_inputs.rpt
all_outputs > ./reports/aes_core/aes_cipher_output.rpt

# Output files
write_sdc ./outputs/aes_core/aes_cipher_top.sdc
write -hier -f ddc -output ./outputs/aes_core/aes_cipher_top.ddc
write -hierarchy -format verilog -output ./outputs/aes_core/aes_cipher_top.v
quit
