lappend search_path ../src/
define_design_lib WORK -path "work"

## Define the library location
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

define_design_lib WORK -path ./work
analyze -library WORK -format verilog ../rtl/$benchmark_file
elaborate ${benchmark_name}_bench
link
write -hier -f ddc -output ../outputs/$benchmark_name.ddc

create_clock -name "clk" -period 10 [get_ports blif_clk_net] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

set dir_path "../reports/$benchmark_name"

if {![file exists $dir_path]} {
    file mkdir $dir_path
    puts "Created directory: $dir_path"
} else {
    puts "Directory already exists: $dir_path"
}

check_design  > $dir_path/$benchmark_name_synth_check_design.rpt 
uniquify 
check_timing > $dir_path/$benchmark_name_timing_check.rpt
compile -area_effort medium -map_effort medium 

report_constraints -all > $dir_path/$benchmark_name_dc_constraints.rpt
report_area > $dir_path/$benchmark_name_dc_area.rpt
report_power > $dir_path/$benchmark_name_dc_power.rpt
report_qor  > $dir_path/$benchmark_name_dc_qor.rpt
report_cell > $dir_path/$benchmark_name_dc_cells.rpt
report_resources > $dir_path/$benchmark_name_dc_resources.rpt
report_timing -max_paths 10 > $dir_path/$benchmark_name_dc_timing.rpt
write_sdc ../outputs/$benchmark_name.sdc
write -hier -f ddc -output ../outputs/$benchmark_name.ddc
write -hierarchy -format verilog -output ../outputs/$benchmark_file

quit
