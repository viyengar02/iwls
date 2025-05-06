###################################################################

# Created by write_sdc on Tue Apr 15 10:33:39 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_uncertainty 0.2  [get_clocks clk]
set_input_delay -clock clk  0.01  [get_ports clk]
set_input_delay -clock clk  0.01  [get_ports rst]
set_input_delay -clock clk  0.01  [get_ports phy_tx_mode]
set_input_delay -clock clk  0.01  [get_ports rxd]
set_input_delay -clock clk  0.01  [get_ports rxdp]
set_input_delay -clock clk  0.01  [get_ports rxdn]
set_input_delay -clock clk  0.01  [get_ports {DataOut_i[7]}]
set_input_delay -clock clk  0.01  [get_ports {DataOut_i[6]}]
set_input_delay -clock clk  0.01  [get_ports {DataOut_i[5]}]
set_input_delay -clock clk  0.01  [get_ports {DataOut_i[4]}]
set_input_delay -clock clk  0.01  [get_ports {DataOut_i[3]}]
set_input_delay -clock clk  0.01  [get_ports {DataOut_i[2]}]
set_input_delay -clock clk  0.01  [get_ports {DataOut_i[1]}]
set_input_delay -clock clk  0.01  [get_ports {DataOut_i[0]}]
set_input_delay -clock clk  0.01  [get_ports TxValid_i]
set_output_delay -clock clk  0.01  [get_ports usb_rst]
set_output_delay -clock clk  0.01  [get_ports txdp]
set_output_delay -clock clk  0.01  [get_ports txdn]
set_output_delay -clock clk  0.01  [get_ports txoe]
set_output_delay -clock clk  0.01  [get_ports TxReady_o]
set_output_delay -clock clk  0.01  [get_ports RxValid_o]
set_output_delay -clock clk  0.01  [get_ports RxActive_o]
set_output_delay -clock clk  0.01  [get_ports RxError_o]
set_output_delay -clock clk  0.01  [get_ports {DataIn_o[7]}]
set_output_delay -clock clk  0.01  [get_ports {DataIn_o[6]}]
set_output_delay -clock clk  0.01  [get_ports {DataIn_o[5]}]
set_output_delay -clock clk  0.01  [get_ports {DataIn_o[4]}]
set_output_delay -clock clk  0.01  [get_ports {DataIn_o[3]}]
set_output_delay -clock clk  0.01  [get_ports {DataIn_o[2]}]
set_output_delay -clock clk  0.01  [get_ports {DataIn_o[1]}]
set_output_delay -clock clk  0.01  [get_ports {DataIn_o[0]}]
set_output_delay -clock clk  0.01  [get_ports {LineState_o[1]}]
set_output_delay -clock clk  0.01  [get_ports {LineState_o[0]}]
