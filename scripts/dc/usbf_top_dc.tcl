# Auto-generated synthesis script for usbf_top
# Source files from: usb_funct

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_crc16.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_crc5.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_defines.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_ep_rf.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_ep_rf_dummy.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_idma.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_mem_arb.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_pa.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_pd.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_pe.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_pl.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_rf.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_top.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_utmi_if.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_utmi_ls.v
analyze -library WORK -format verilog ../rtl/usb_funct/usbf_wb.v

# Elaborate the top design
elaborate usbf_top
link

# Output files
write -hier -f ddc -output ./outputs/usb_funct/usbf_top.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports clk_i] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./reports/usb_funct/usbf_top_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./reports/usb_funct/usbf_top_constraints.rpt
report_area > ./reports/usb_funct/usbf_top_area.rpt
report_power > ./reports/usb_funct/usbf_top_power.rpt
report_qor  > ./reports/usb_funct/usbf_top_qor.rpt
report_cell > ./reports/usb_funct/usbf_top_cells.rpt
report_resources > ./reports/usb_funct/usbf_top_resources.rpt
report_timing -max_paths 10 > ./reports/usb_funct/usbf_top_timing.rpt

# Output files
write_sdc ./outputs/usb_funct/usbf_top.sdc
write -hier -f ddc -output ./outputs/usb_funct/usbf_top.ddc
write -hierarchy -format verilog -output ./outputs/usb_funct/usbf_top.v
quit
