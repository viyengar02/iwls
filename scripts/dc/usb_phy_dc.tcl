# Auto-generated synthesis script for usb_phy
# Source files from: usb_phy

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/usb_phy/timescale.v
analyze -library WORK -format verilog ../rtl/usb_phy/usb_phy.v
analyze -library WORK -format verilog ../rtl/usb_phy/usb_rx_phy.v
analyze -library WORK -format verilog ../rtl/usb_phy/usb_tx_phy.v

# Elaborate the top design
elaborate usb_phy
link

# Output files
write -hier -f ddc -output ./outputs/usb_phy/usb_phy.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/usb_phy/usb_phy_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/usb_phy/usb_phy_constraints.rpt
report_area > ./reports/usb_phy/usb_phy_area.rpt
report_power > ./reports/usb_phy/usb_phy_power.rpt
report_qor  > ./reports/usb_phy/usb_phy_qor.rpt
report_cell > ./reports/usb_phy/usb_phy_cells.rpt
report_resources > ./reports/usb_phy/usb_phy_resources.rpt
report_timing -max_paths 10 > ./reports/usb_phy/usb_phy_timing.rpt

# Output files
write_sdc ./outputs/usb_phy/usb_phy.sdc
write -hier -f ddc -output ./outputs/usb_phy/usb_phy.ddc
write -hierarchy -format verilog -output ./outputs/usb_phy/usb_phy.v
quit
