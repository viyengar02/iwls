###################################################################

# Created by write_sdc on Tue Apr 29 11:26:32 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
create_clock [get_ports clk_i]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.2  [get_clocks clk]
set_input_delay -clock clk  0.01  [get_ports clk_i]
set_input_delay -clock clk  0.01  [get_ports rst_i]
set_input_delay -clock clk  0.01  [get_ports cyc_i]
set_input_delay -clock clk  0.01  [get_ports stb_i]
set_input_delay -clock clk  0.01  [get_ports {adr_i[1]}]
set_input_delay -clock clk  0.01  [get_ports {adr_i[0]}]
set_input_delay -clock clk  0.01  [get_ports we_i]
set_input_delay -clock clk  0.01  [get_ports {dat_i[7]}]
set_input_delay -clock clk  0.01  [get_ports {dat_i[6]}]
set_input_delay -clock clk  0.01  [get_ports {dat_i[5]}]
set_input_delay -clock clk  0.01  [get_ports {dat_i[4]}]
set_input_delay -clock clk  0.01  [get_ports {dat_i[3]}]
set_input_delay -clock clk  0.01  [get_ports {dat_i[2]}]
set_input_delay -clock clk  0.01  [get_ports {dat_i[1]}]
set_input_delay -clock clk  0.01  [get_ports {dat_i[0]}]
set_input_delay -clock clk  0.01  [get_ports miso_i]
set_output_delay -clock clk  0.01  [get_ports {dat_o[7]}]
set_output_delay -clock clk  0.01  [get_ports {dat_o[6]}]
set_output_delay -clock clk  0.01  [get_ports {dat_o[5]}]
set_output_delay -clock clk  0.01  [get_ports {dat_o[4]}]
set_output_delay -clock clk  0.01  [get_ports {dat_o[3]}]
set_output_delay -clock clk  0.01  [get_ports {dat_o[2]}]
set_output_delay -clock clk  0.01  [get_ports {dat_o[1]}]
set_output_delay -clock clk  0.01  [get_ports {dat_o[0]}]
set_output_delay -clock clk  0.01  [get_ports ack_o]
set_output_delay -clock clk  0.01  [get_ports inta_o]
set_output_delay -clock clk  0.01  [get_ports sck_o]
set_output_delay -clock clk  0.01  [get_ports mosi_o]
