#!/usr/bin/env python2
import yaml
import os
import sys
from os.path import join, dirname, relpath, exists, basename

def find_design_configs(rtl_root):
    """Find all YAML config files in subdirectories of rtl_root"""
    configs = []
    for root, dirs, files in os.walk(rtl_root):
        for file in files:
            if file.endswith('.yml') or file.endswith('.yaml'):
                configs.append(join(root, file))
    return configs

def mkdir_p(path):
    """Python 2.7 equivalent of Path.mkdir(parents=True, exist_ok=True)"""
    if not exists(path):
        os.makedirs(path)

def generate_tcl(config_path):
    """Generate TCL script from YAML config"""
    with open(config_path, 'r') as f:
        config = yaml.safe_load(f)
    
    design_name = config['name']
    clock_port = config['clock_port']
    verilog_files = config['verilog']
    design_dir = dirname(config_path)
    relative_rtl_path = relpath(design_dir, start='../rtl')

    # Create ALL required directories first
    output_dir = join("outputs", relative_rtl_path)
    report_dir = join("reports", relative_rtl_path)
    script_dir = join("generated_scripts", relative_rtl_path)
    
    # Create directories if they don't exist
    for directory in [output_dir, report_dir, script_dir]:
        if not exists(directory):
            os.makedirs(directory)
            print "Created directory: {}".format(directory)

    # Generate TCL content
    tcl_content = """# Auto-generated synthesis script for {design_name}
# Source files from: {relative_rtl_path}

lappend search_path ../src/
define_design_lib WORK -path "work"

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

# Analyze all Verilog files
""".format(design_name=design_name, relative_rtl_path=relative_rtl_path)
    
    # Add analyze commands for each Verilog file
    for vfile in verilog_files:
        tcl_content += "analyze -library WORK -format verilog ../rtl/{}/{}\n".format(
            relative_rtl_path, vfile)
    
    tcl_content += """
# Elaborate the top design
elaborate {design_name}
link

# Output files
write -hier -f ddc -output ./{output_dir}/{design_name}.ddc

# Clock and constraints
create_clock -name "clk" -period 10 [get_ports {clock_port}] 
set_input_delay 0.01 -clock clk [all_inputs] 
set_output_delay 0.01 -clock clk [all_outputs] 
set_clock_uncertainty 0.2 clk
set_max_area 0.0 

# Checks and compilation
check_design  > ./{report_dir}/{design_name}_check_design.rpt 
uniquify 
check_timing 
compile -area_effort medium -map_effort medium 

# Reports
report_constraints -all > ./{report_dir}/{design_name}_constraints.rpt
report_area > ./{report_dir}/{design_name}_area.rpt
report_power > ./{report_dir}/{design_name}_power.rpt
report_qor  > ./{report_dir}/{design_name}_qor.rpt
report_cell > ./{report_dir}/{design_name}_cells.rpt
report_resources > ./{report_dir}/{design_name}_resources.rpt
report_timing -max_paths 10 > ./{report_dir}/{design_name}_timing.rpt

# Output files
write_sdc ./{output_dir}/{design_name}.sdc
write -hier -f ddc -output ./{output_dir}/{design_name}.ddc
write -hierarchy -format verilog -output ./{output_dir}/{design_name}.v
quit
""".format(
    design_name=design_name,
    clock_port=clock_port,
    output_dir=output_dir,
    report_dir=report_dir
)

    # Create script path preserving folder structure
    script_dir = "./dc"#, relative_rtl_path)
    mkdir_p(script_dir)
    output_file = join(script_dir, design_name + "_dc.tcl")
    
    with open(output_file, 'w') as f:
        f.write(tcl_content)
    os.chmod(output_file, 0755)
    print "Generated: {}".format(output_file)

if __name__ == "__main__":
    rtl_root = "../rtl"
    config_files = find_design_configs(rtl_root)
    
    if not config_files:
        print "No YAML config files found in {} or its subdirectories".format(rtl_root)
        sys.exit(1)
        
    print "Found {} design configurations:".format(len(config_files))
    for config in config_files:
        print "- {}".format(config)
    
    for config_file in config_files:
        generate_tcl(config_file)
    
    print "\nAll design scripts generated successfully!"