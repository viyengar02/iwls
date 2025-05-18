# Auto-generated synthesis script for i2c_master_top
# Source files from: i2c

lappend search_path ../src/
define_design_lib WORK -path "work"

set sdc_version 2.1

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/i2c/i2c_master_bit_ctrl.v
analyze -library WORK -format verilog ../rtl/i2c/i2c_master_byte_ctrl.v
analyze -library WORK -format verilog ../rtl/i2c/i2c_master_defines.v
analyze -library WORK -format verilog ../rtl/i2c/i2c_master_top.v
analyze -library WORK -format verilog ../rtl/i2c/timescale.v

# Elaborate the top design
elaborate i2c_master_top
link

# Output files
write -hier -f ddc -output ./outputs/i2c/i2c_master_top.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports wb_clk_i] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Timing optimization settings
set_critical_range 1.0 [current_design]
set_max_fanout 10 [current_design]
set_auto_disable_timing false
set_fix_multiple_port_nets -all -buffer_constants
set_compile_clock_gating_through_hierarchy true
set_optimize_registers true -design [current_design]
set_optimize_timing true

# Advanced optimization
set_ultra_optimization true
set_clock_gating_style -sequential_cell latch -positive_edge_logic integrated
set_compile_ultra_ungroup_dw true
set_compile_ultra_timing true

# Buffer insertion
set_buffer_opt_strategy -effort high
set_dynamic_optimization true
set_host_options -max_cores 4

# Checks and compilation
check_design  > ./reports/i2c/i2c_master_top_check_design.rpt 
uniquify 
check_timing 
compile_ultra -retime -no_autoungroup -timing_high_effort_script


# Reports
report_constraints -all > ./reports/i2c/i2c_master_top_constraints.rpt
report_area > ./reports/i2c/i2c_master_top_area.rpt
report_power > ./reports/i2c/i2c_master_top_power.rpt
report_qor  > ./reports/i2c/i2c_master_top_qor.rpt
report_cell > ./reports/i2c/i2c_master_top_cells.rpt
report_resources > ./reports/i2c/i2c_master_top_resources.rpt
report_timing -max_paths 10 > ./reports/i2c/i2c_master_top_timing.rpt

report_port -verbose > ./reports/i2c/i2c_master_top_ports.rpt
report_constraints -all_violators -nosplit > ./reports/i2c/i2c_master_top_constraint_violations.rpt
report_cell -nosplit  > ./reports/i2c/i2c_master_top_clock_cells.rpt

all_inputs > ./reports/i2c/i2c_master_top_inputs.rpt
all_outputs > ./reports/i2c/i2c_master_top_output.rpt

# Output files
write_sdc ./outputs/i2c/i2c_master_top.sdc
write -hier -f ddc -output ./outputs/i2c/i2c_master_top.ddc
write -hierarchy -format verilog -output ./outputs/i2c/i2c_master_top.v
quit
