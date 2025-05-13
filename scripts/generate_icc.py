#!/usr/bin/env python2
import os
import yaml
from os.path import join, dirname, basename, exists
import argparse

def create_directories(*paths):
    """Create directories if they don't exist"""
    for path in paths:
        if not exists(path):
            os.makedirs(path)
            print "Created directory: {}".format(path)

def generate_icc_tcl(config, design_name, design_dir):
    """Generate ICC2 TCL script for a design"""
    
    # Create output paths
    output_dir = join("outputs", design_dir)
    report_dir = join("reports", design_dir)
    create_directories(output_dir, report_dir)
    
    # Generate TCL content
    tcl_content = """# Auto-generated ICC2 script for {design_name}
# Configuration: {design_dir}

###########################################################################
### Initialize
###########################################################################
##start_gui

set search_path "$search_path /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs
../src/ "

# Library setup
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]
set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]

set libdir "/mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/tech/star_rcxt"
set tlupmax "$libdir/saed32nm_1p9m_Cmax.tluplus"
set tlunom "$libdir/saed32nm_1p9m_nominal.tluplus"
set tlupmin "$libdir/saed32nm_1p9m_Cmin.tluplus"
set tech2itf "$libdir/saed32nm_tf_itf_tluplus.map"
set_tlu_plus_files -max_tluplus $tlunom -tech2itf_map $tech2itf
set lib_name "{design_name}"
set mw_logic0_net VSS
set mw_logic1_net VDD
set design_data ./outputs/{design_dir}/{design_name}.ddc
set cell_name "{design_name}"
import_designs $design_data -format ddc -top $cell_name

create_mw_lib ./outputs/{design_dir}/$lib_name.mw \\
\t-technology "/mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/tech/milkyway/saed32nm_1p9m_mw.tf" \\
\t-mw_reference_library "/mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/milkyway/saed32nm_rvt_1p9m"

open_mw_lib ./outputs/{design_dir}/$lib_name.mw
read_verilog ./outputs/{design_dir}/{design_name}.v
uniquify_fp_mw_cel
link
read_sdc ./outputs/{design_dir}/{design_name}.sdc

############################################################################
#### Floorplanning
############################################################################
create_floorplan -core_utilization 0.7 -left_io2core 10 -bottom_io2core 10 -right_io2core 10 -top_io2core 10 -core_aspect_ratio 1.0
derive_pg_connection -power_net VDD -ground_net VSS -tie

##Create VSS ring
create_rectangular_rings  -nets  {{VSS}}  -left_offset 0.5  -left_segment_layer M6 -left_segment_width 1.0 -extend_ll -extend_lh -right_offset 0.5 -right_segment_layer M6 -right_segment_width 1.0 -extend_rl -extend_rh -bottom_offset 0.5  -bottom_segment_layer  M7 -bottom_segment_width 1.0 -extend_bl -extend_bh -top_offset 0.5 -top_segment_layer M7 -top_segment_width 1.0 -extend_tl -extend_th

## Create VDD Ring
create_rectangular_rings  -nets  {{VDD}}  -left_offset 1.8  -left_segment_layer M6 -left_segment_width 1.0 -extend_ll -extend_lh -right_offset 1.8 -right_segment_layer M6 -right_segment_width 1.0 -extend_rl -extend_rh -bottom_offset 1.8  -bottom_segment_layer M7 -bottom_segment_width 1.0 -extend_bl -extend_bh -top_offset 1.8 -top_segment_layer M7 -top_segment_width 1.0 -extend_tl -extend_th

## Creates Power Strap
create_power_strap -nets {{ VDD }} -layer M6 -direction vertical -width 3
create_power_strap -nets {{ VSS }} -layer M6 -direction vertical  -width 3
create_fp_placement -effort high -timing_driven
insert_stdcell_filler
preroute_standard_cells -mode net -nets VDD -v_layer M6
preroute_standard_cells -mode net -nets VSS -v_layer M6

###########################################################################
### Placement
###########################################################################
place_opt 
#-power -congestion
set_fix_hold [all_clocks]
clock_opt ##
-only_cts -no_clock_route
#clock_opt -only_psyn -area_recovery -no_clock_route
route_zrt_group -all_clock_nets -reuse_existing_global_route true
route_opt 
#-initial_route_only
#create_qor_snapshot
#route_opt -skip_initial_route -power

extract_rc  -coupling_cap -incremental
write_parasitics -output ./outputs/{design_name}_extracted.spef -format SPEF
write_sdf ./outputs/{design_name}_extracted.sdf
write_sdc ./outputs/{design_name}_extracted.sdc
write_verilog ./outputs/{design_name}_extracted.v

report_constraints -all > ./reports/{design_dir}/icc_{design_name}_constraints.rpt
report_area > ./reports/{design_dir}/icc_{design_name}_area.rpt
report_power > ./reports/{design_dir}/icc_{design_name}_power.rpt
report_qor  > ./reports/{design_dir}/icc_{design_name}_qor.rpt
report_cell > ./reports/{design_dir}/icc_{design_name}_cells.rpt
report_resources > ./reports/{design_dir}/icc_{design_name}_resources.rpt
report_timing -max_paths 10 > ./reports/{design_dir}/icc_{design_name}_timing.rpt
report_placement_utilization > ./reports/{design_dir}/icc_{design_name}_cts.rpt
report_port > ./reports/{design_dir}/icc_{design_name}_ports.rpt
sizeof_collection [get_ports [all_inputs]] >> ./reports/{design_dir}/icc_{design_name}_ports.rpt
sizeof_collection [get_ports [all_outputs]] >> ./reports/{design_dir}/icc_{design_name}_ports.rpt
# can also generate histograms
report_clock_tree -summary > ./reports/{design_dir}/icc_{design_name}_clock_tree.rpt
sizeof_collection [get_cells -filter "ref_name=~*INV*" -clock_tree] >> ./reports/{design_dir}/icc_{design_name}_clock_tree.rpt


save_mw_cel -as {design_name}_extracted
quit
""".format(design_name=design_name, design_dir=design_dir)

    return tcl_content

def process_design_config(config_file):
    """Process a single design YAML config"""
    with open(config_file, 'r') as f:
        config = yaml.safe_load(f)
    
    design_name = config['name']
    design_dir = dirname(config_file).split('/')[-1]  # Get directory name
    
    # Generate TCL content
    tcl_content = generate_icc_tcl(config, design_name, design_dir)
    
    # Write to file
    output_file = join("icc", "{}_icc.tcl".format(design_name))
    create_directories(dirname(output_file))
    
    with open(output_file, 'w') as f:
        f.write(tcl_content)
    os.chmod(output_file, 0755)
    print "Generated ICC2 script: {}".format(output_file)

def main():
    parser = argparse.ArgumentParser(description='Generate ICC2 TCL scripts from YAML configs')
    parser.add_argument('config_dir', help='Directory containing design YAML configs')
    args = parser.parse_args()

    # Create output directories
    create_directories("icc", "outputs", "reports")

    # Process all YAML configs in the directory
    for root, dirs, files in os.walk(args.config_dir):
        for file in files:
            if file.endswith('.yml') or file.endswith('.yaml'):
                config_file = join(root, file)
                print "\nProcessing design config: {}".format(config_file)
                process_design_config(config_file)

    print "\nAll ICC2 scripts generated successfully!"

if __name__ == "__main__":
    main()