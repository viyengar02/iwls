# Auto-generated ICC2 script for ac97_top
# Configuration: ac97_ctrl

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
set lib_name "ac97_top"
set mw_logic0_net VSS
set mw_logic1_net VDD
set design_data ./outputs/ac97_ctrl/ac97_top.ddc
set cell_name "ac97_top"
import_designs $design_data -format ddc -top $cell_name

create_mw_lib ./outputs/ac97_ctrl/$lib_name.mw \
	-technology "/mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/tech/milkyway/saed32nm_1p9m_mw.tf" \
	-mw_reference_library "/mnt/class_data/ecec574-w2019/PDKs/_archived/SAED32nm_new/SAED32_EDK/lib/stdcell_rvt/milkyway/saed32nm_rvt_1p9m"

open_mw_lib ./outputs/ac97_ctrl/$lib_name.mw
read_verilog ./outputs/ac97_ctrl/ac97_top.v
uniquify_fp_mw_cel
link
read_sdc ./outputs/ac97_ctrl/ac97_top.sdc

############################################################################
#### Floorplanning
############################################################################
create_floorplan -core_utilization 0.7 -left_io2core 10 -bottom_io2core 10 -right_io2core 10 -top_io2core 10 -core_aspect_ratio 1.0
derive_pg_connection -power_net VDD -ground_net VSS -tie

##Create VSS ring
create_rectangular_rings  -nets  {VSS}  -left_offset 0.5  -left_segment_layer M6 -left_segment_width 1.0 -extend_ll -extend_lh -right_offset 0.5 -right_segment_layer M6 -right_segment_width 1.0 -extend_rl -extend_rh -bottom_offset 0.5  -bottom_segment_layer  M7 -bottom_segment_width 1.0 -extend_bl -extend_bh -top_offset 0.5 -top_segment_layer M7 -top_segment_width 1.0 -extend_tl -extend_th

## Create VDD Ring
create_rectangular_rings  -nets  {VDD}  -left_offset 1.8  -left_segment_layer M6 -left_segment_width 1.0 -extend_ll -extend_lh -right_offset 1.8 -right_segment_layer M6 -right_segment_width 1.0 -extend_rl -extend_rh -bottom_offset 1.8  -bottom_segment_layer M7 -bottom_segment_width 1.0 -extend_bl -extend_bh -top_offset 1.8 -top_segment_layer M7 -top_segment_width 1.0 -extend_tl -extend_th

## Creates Power Strap
create_power_strap -nets { VDD } -layer M6 -direction vertical -width 3
create_power_strap -nets { VSS } -layer M6 -direction vertical  -width 3
create_fp_placement -effort high -timing_driven
insert_stdcell_filler
preroute_standard_cells -mode net -nets VDD -v_layer M6
preroute_standard_cells -mode net -nets VSS -v_layer M6

###########################################################################
### Placement
###########################################################################
place_opt 
##-power -congestion
set_fix_hold [all_clocks]
clock_opt ##
-only_cts -no_clock_route
#clock_opt -only_psyn -area_recovery -no_clock_route
route_zrt_group -all_clock_nets -reuse_existing_global_route true
route_opt 
###-initial_route_only
###create_qor_snapshot
###route_opt -skip_initial_route -power

extract_rc  -coupling_cap -incremental
write_parasitics -output ./outputs/ac97_top_extracted.spef -format SPEF
write_sdf ./outputs/ac97_top_extracted.sdf
write_sdc ./outputs/ac97_top_extracted.sdc
write_verilog ./outputs/ac97_top_extracted.v

report_constraints -all > ./reports/ac97_ctrl/icc_ac97_top_constraints.rpt
report_area > ./reports/ac97_ctrl/icc_ac97_top_area.rpt
report_power > ./reports/ac97_ctrl/icc_ac97_top_power.rpt
report_qor  > ./reports/ac97_ctrl/icc_ac97_top_qor.rpt
report_cell > ./reports/ac97_ctrl/icc_ac97_top_cells.rpt
report_resources > ./reports/ac97_ctrl/icc_ac97_top_resources.rpt
report_timing -max_paths 10 > ./reports/ac97_ctrl/icc_ac97_top_timing.rpt
report_placement_utilization > ./reports/ac97_ctrl/icc_ac97_top_cts.rpt
report_port -annotated > ./reports/ac97_ctrl/icc_ac97_top_ports.rpt

save_mw_cel -as ac97_top_extracted
quit
