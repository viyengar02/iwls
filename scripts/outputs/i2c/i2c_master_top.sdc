###################################################################

# Created by write_sdc on Tue May 13 12:12:01 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
create_clock [get_ports wb_clk_i]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.2  [get_clocks clk]
set_input_delay -clock clk  0.01  [get_ports wb_clk_i]
set_input_delay -clock clk  0.01  [get_ports wb_rst_i]
set_input_delay -clock clk  0.01  [get_ports arst_i]
set_input_delay -clock clk  0.01  [get_ports {wb_adr_i[2]}]
set_input_delay -clock clk  0.01  [get_ports {wb_adr_i[1]}]
set_input_delay -clock clk  0.01  [get_ports {wb_adr_i[0]}]
set_input_delay -clock clk  0.01  [get_ports {wb_dat_i[7]}]
set_input_delay -clock clk  0.01  [get_ports {wb_dat_i[6]}]
set_input_delay -clock clk  0.01  [get_ports {wb_dat_i[5]}]
set_input_delay -clock clk  0.01  [get_ports {wb_dat_i[4]}]
set_input_delay -clock clk  0.01  [get_ports {wb_dat_i[3]}]
set_input_delay -clock clk  0.01  [get_ports {wb_dat_i[2]}]
set_input_delay -clock clk  0.01  [get_ports {wb_dat_i[1]}]
set_input_delay -clock clk  0.01  [get_ports {wb_dat_i[0]}]
set_input_delay -clock clk  0.01  [get_ports wb_we_i]
set_input_delay -clock clk  0.01  [get_ports wb_stb_i]
set_input_delay -clock clk  0.01  [get_ports wb_cyc_i]
set_input_delay -clock clk  0.01  [get_ports scl_pad_i]
set_input_delay -clock clk  0.01  [get_ports sda_pad_i]
set_output_delay -clock clk  0.01  [get_ports {wb_dat_o[7]}]
set_output_delay -clock clk  0.01  [get_ports {wb_dat_o[6]}]
set_output_delay -clock clk  0.01  [get_ports {wb_dat_o[5]}]
set_output_delay -clock clk  0.01  [get_ports {wb_dat_o[4]}]
set_output_delay -clock clk  0.01  [get_ports {wb_dat_o[3]}]
set_output_delay -clock clk  0.01  [get_ports {wb_dat_o[2]}]
set_output_delay -clock clk  0.01  [get_ports {wb_dat_o[1]}]
set_output_delay -clock clk  0.01  [get_ports {wb_dat_o[0]}]
set_output_delay -clock clk  0.01  [get_ports wb_ack_o]
set_output_delay -clock clk  0.01  [get_ports wb_inta_o]
set_output_delay -clock clk  0.01  [get_ports scl_pad_o]
set_output_delay -clock clk  0.01  [get_ports scl_padoen_o]
set_output_delay -clock clk  0.01  [get_ports sda_pad_o]
set_output_delay -clock clk  0.01  [get_ports sda_padoen_o]
