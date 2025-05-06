# Auto-generated synthesis script for wb_dma_top
# Source files from: wb_dma

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_ch_arb.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_ch_pri_enc.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_ch_rf.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_ch_sel.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_de.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_defines.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_inc30r.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_pri_enc_sub.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_rf.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_top.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_wb_if.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_wb_mast.v
analyze -library WORK -format verilog ../rtl/wb_dma/wb_dma_wb_slv.v

# Elaborate the top design
elaborate wb_dma_top
link

# Output files
write -hier -f ddc -output ./outputs/wb_dma/wb_dma_top.ddc

# Clock and constraints
ungroup -all -flatten
#Reduces synthesis runtime by simplifying the design structure.
create_clock -name "clk" -period 10 [get_ports clk_i] 
set_input_delay -clock clk 2.5 [remove_from_collection [all_inputs] [get_ports clk_i]]
set_output_delay -clock clk 2.5 [all_outputs]
set_clock_uncertainty -setup 0.3 [get_clocks clk]
set_clock_uncertainty -hold 0.2 [get_clocks clk]
set_max_area 0.0 
set_critical_range 1.0 [current_design]
set_max_fanout 12 [current_design]
set compile_ultra_enable_multibit_selection true
#auto selection of multi bit flip flops
set compile_ultra_enable_low_vt_opt true
#low voltage threshold for speed
set physopt_enable_critical_range_physopt true

# Checks and compilation
check_design  > ./reports/wb_dma/wb_dma_top_check_design.rpt 
uniquify 
check_timing 
compile_ultra -retime -no_autoungroup -no_boundary_optimization
compile_ultra -retime -no_autoungroup -incremental
#refines first compilation, hopefully keeping old optimizations while fixing timing violations
physopt -preserve_footprint -critical_range 0.5

# Reports
report_constraints -all > ./reports/wb_dma/wb_dma_top_constraints.rpt
report_area > ./reports/wb_dma/wb_dma_top_area.rpt
report_power > ./reports/wb_dma/wb_dma_top_power.rpt
report_qor  > ./reports/wb_dma/wb_dma_top_qor.rpt
report_cell > ./reports/wb_dma/wb_dma_top_cells.rpt
report_resources > ./reports/wb_dma/wb_dma_top_resources.rpt
report_timing -max_paths 10 > ./reports/wb_dma/wb_dma_top_timing.rpt

# Output files
write_sdc ./outputs/wb_dma/wb_dma_top.sdc
write -hier -f ddc -output ./outputs/wb_dma/wb_dma_top.ddc
write -hierarchy -format verilog -output ./outputs/wb_dma/wb_dma_top.v
quit
