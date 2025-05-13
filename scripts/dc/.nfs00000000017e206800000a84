# Auto-generated synthesis script for simple_spi_top
# Source files from: simple_spi

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/simple_spi/fifo4.v
analyze -library WORK -format verilog ../rtl/simple_spi/simple_spi_top.v

# Elaborate the top design
elaborate simple_spi_top
link

# Output files
write -hier -f ddc -output ./outputs/simple_spi/simple_spi_top.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk_i] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/simple_spi/simple_spi_top_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/simple_spi/simple_spi_top_constraints.rpt
report_area > ./reports/simple_spi/simple_spi_top_area.rpt
report_power > ./reports/simple_spi/simple_spi_top_power.rpt
report_qor  > ./reports/simple_spi/simple_spi_top_qor.rpt
report_cell > ./reports/simple_spi/simple_spi_top_cells.rpt
report_resources > ./reports/simple_spi/simple_spi_top_resources.rpt
report_timing -max_paths 10 > ./reports/simple_spi/simple_spi_top_timing.rpt

# Output files
write_sdc ./outputs/simple_spi/simple_spi_top.sdc
write -hier -f ddc -output ./outputs/simple_spi/simple_spi_top.ddc
write -hierarchy -format verilog -output ./outputs/simple_spi/simple_spi_top.v
quit
