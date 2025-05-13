/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4-1
// Date      : Tue May 13 10:44:01 2025
/////////////////////////////////////////////////////////////


module i2c_master_byte_ctrl ( clk, rst, nReset, ena, clk_cnt, start, stop, 
        read, write, ack_in, din, cmd_ack, ack_out, dout, i2c_busy, i2c_al, 
        scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, nReset, ena, start, stop, read, write, ack_in, scl_i, sda_i;
  output cmd_ack, ack_out, i2c_busy, i2c_al, scl_o, scl_oen, sda_o, sda_oen;
  wire   shift, N104, N105, N106, N107, n1, n2, n3, n4, n5, n6, n7, n9, n10,
         n11, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n25, n26,
         n27, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n42, n43, n44,
         n46, n47, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n76, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n8, n12, n24, n28, n29, n40, n41, n45;
  tri   clk;
  tri   rst;
  tri   nReset;
  tri   ena;
  tri   [15:0] clk_cnt;
  tri   i2c_busy;
  tri   i2c_al;
  tri   scl_i;
  tri   scl_o;
  tri   scl_oen;
  tri   sda_i;
  tri   sda_o;
  tri   sda_oen;
  tri   [3:0] core_cmd;
  tri   core_ack;
  tri   core_txd;
  tri   core_rxd;

  i2c_master_bit_ctrl bit_controller ( .clk(clk), .rst(rst), .nReset(nReset), 
        .ena(ena), .clk_cnt(clk_cnt), .cmd(core_cmd), .cmd_ack(core_ack), 
        .busy(i2c_busy), .al(i2c_al), .din(core_txd), .dout(core_rxd), .scl_i(
        scl_i), .scl_o(scl_o), .scl_oen(scl_oen), .sda_i(sda_i), .sda_o(sda_o), 
        .sda_oen(sda_oen) );
  DFFARX1_RVT ld_reg ( .D(N106), .CLK(clk), .RSTB(nReset), .QN(n89) );
  DFFARX1_RVT \sr_reg[1]  ( .D(n106), .CLK(clk), .RSTB(nReset), .Q(dout[1]) );
  DFFARX1_RVT \sr_reg[2]  ( .D(n100), .CLK(clk), .RSTB(nReset), .Q(dout[2]) );
  DFFARX1_RVT \sr_reg[3]  ( .D(n101), .CLK(clk), .RSTB(nReset), .Q(dout[3]) );
  DFFARX1_RVT \sr_reg[4]  ( .D(n102), .CLK(clk), .RSTB(nReset), .Q(dout[4]) );
  DFFARX1_RVT \sr_reg[5]  ( .D(n103), .CLK(clk), .RSTB(nReset), .Q(dout[5]) );
  DFFARX1_RVT \sr_reg[6]  ( .D(n104), .CLK(clk), .RSTB(nReset), .Q(dout[6]) );
  DFFARX1_RVT \sr_reg[7]  ( .D(n105), .CLK(clk), .RSTB(nReset), .Q(dout[7]) );
  DFFARX1_RVT core_txd_reg ( .D(N104), .CLK(clk), .RSTB(nReset), .Q(core_txd)
         );
  DFFARX1_RVT shift_reg ( .D(N105), .CLK(clk), .RSTB(nReset), .Q(shift) );
  DFFARX1_RVT \sr_reg[0]  ( .D(n99), .CLK(clk), .RSTB(nReset), .Q(dout[0]) );
  DFFARX1_RVT \dcnt_reg[0]  ( .D(n97), .CLK(clk), .RSTB(nReset), .Q(n24), .QN(
        n78) );
  DFFARX1_RVT \dcnt_reg[1]  ( .D(n98), .CLK(clk), .RSTB(nReset), .Q(n42), .QN(
        n84) );
  DFFARX1_RVT \dcnt_reg[2]  ( .D(n96), .CLK(clk), .RSTB(nReset), .Q(n39), .QN(
        n79) );
  DFFARX1_RVT \c_state_reg[1]  ( .D(n93), .CLK(clk), .RSTB(nReset), .Q(n8), 
        .QN(n87) );
  DFFARX1_RVT \c_state_reg[3]  ( .D(n91), .CLK(clk), .RSTB(nReset), .Q(n20) );
  DFFARX1_RVT \c_state_reg[0]  ( .D(n94), .CLK(clk), .RSTB(nReset), .Q(n12), 
        .QN(n88) );
  DFFARX1_RVT \c_state_reg[2]  ( .D(n92), .CLK(clk), .RSTB(nReset), .Q(n28), 
        .QN(n86) );
  DFFARX1_RVT \c_state_reg[4]  ( .D(n95), .CLK(clk), .RSTB(nReset), .Q(n27), 
        .QN(n85) );
  DFFARX1_RVT cmd_ack_reg ( .D(N107), .CLK(clk), .RSTB(nReset), .Q(cmd_ack), 
        .QN(n76) );
  DFFARX1_RVT ack_out_reg ( .D(n90), .CLK(clk), .RSTB(nReset), .Q(ack_out) );
  DFFARX1_RVT \core_cmd_reg[3]  ( .D(n83), .CLK(clk), .RSTB(nReset), .Q(
        core_cmd[3]) );
  DFFARX1_RVT \core_cmd_reg[2]  ( .D(n82), .CLK(clk), .RSTB(nReset), .Q(
        core_cmd[2]) );
  DFFARX1_RVT \core_cmd_reg[1]  ( .D(n81), .CLK(clk), .RSTB(nReset), .Q(
        core_cmd[1]) );
  DFFARX1_RVT \core_cmd_reg[0]  ( .D(n80), .CLK(clk), .RSTB(nReset), .Q(
        core_cmd[0]) );
  AO21X1_RVT U3 ( .A1(core_cmd[0]), .A2(n1), .A3(n2), .Y(n80) );
  AO21X1_RVT U4 ( .A1(core_cmd[1]), .A2(n1), .A3(n3), .Y(n81) );
  AO221X1_RVT U5 ( .A1(n4), .A2(n5), .A3(core_cmd[2]), .A4(n1), .A5(n6), .Y(
        n82) );
  AO22X1_RVT U6 ( .A1(n7), .A2(n8), .A3(n9), .A4(n10), .Y(n6) );
  AND2X1_RVT U7 ( .A1(n11), .A2(n28), .Y(n9) );
  AO221X1_RVT U8 ( .A1(read), .A2(n13), .A3(core_cmd[3]), .A4(n1), .A5(n14), 
        .Y(n83) );
  AO22X1_RVT U9 ( .A1(n7), .A2(n28), .A3(n15), .A4(n10), .Y(n14) );
  AND2X1_RVT U10 ( .A1(n11), .A2(n8), .Y(n15) );
  AO22X1_RVT U12 ( .A1(n18), .A2(ack_out), .A3(core_rxd), .A4(n19), .Y(n17) );
  AO22X1_RVT U13 ( .A1(n1), .A2(n20), .A3(n7), .A4(n21), .Y(n91) );
  AND2X1_RVT U14 ( .A1(n22), .A2(n10), .Y(n7) );
  AO22X1_RVT U15 ( .A1(n4), .A2(n5), .A3(n23), .A4(n28), .Y(n92) );
  AO22X1_RVT U16 ( .A1(n10), .A2(n12), .A3(write), .A4(n25), .Y(n4) );
  AO22X1_RVT U17 ( .A1(read), .A2(n13), .A3(n23), .A4(n8), .Y(n93) );
  AO21X1_RVT U19 ( .A1(n10), .A2(n12), .A3(n25), .Y(n13) );
  AO21X1_RVT U20 ( .A1(n1), .A2(n12), .A3(n2), .Y(n94) );
  AND3X1_RVT U21 ( .A1(n26), .A2(n88), .A3(start), .Y(n2) );
  AO21X1_RVT U22 ( .A1(n1), .A2(n27), .A3(n3), .Y(n95) );
  AND2X1_RVT U25 ( .A1(n26), .A2(n31), .Y(n25) );
  INVX0_RVT U26 ( .A(start), .Y(n31) );
  AND2X1_RVT U27 ( .A1(n10), .A2(n32), .Y(n26) );
  INVX0_RVT U30 ( .A(n33), .Y(n1) );
  NAND2X0_RVT U32 ( .A1(core_ack), .A2(n36), .Y(n35) );
  INVX0_RVT U33 ( .A(n37), .Y(n34) );
  AO221X1_RVT U34 ( .A1(n38), .A2(n39), .A3(n41), .A4(n22), .A5(n45), .Y(n96)
         );
  INVX0_RVT U35 ( .A(n11), .Y(n22) );
  AO21X1_RVT U37 ( .A1(n41), .A2(n42), .A3(n43), .Y(n38) );
  AO221X1_RVT U38 ( .A1(n44), .A2(n24), .A3(n41), .A4(n78), .A5(n45), .Y(n97)
         );
  AO221X1_RVT U39 ( .A1(n46), .A2(n41), .A3(n43), .A4(n42), .A5(n45), .Y(n98)
         );
  AO21X1_RVT U41 ( .A1(n41), .A2(n24), .A3(n44), .Y(n43) );
  AND2X1_RVT U43 ( .A1(n78), .A2(n84), .Y(n46) );
  AO222X1_RVT U44 ( .A1(n41), .A2(core_rxd), .A3(n47), .A4(dout[0]), .A5(
        din[0]), .A6(n45), .Y(n99) );
  AO222X1_RVT U45 ( .A1(n41), .A2(dout[1]), .A3(n47), .A4(dout[2]), .A5(din[2]), .A6(n45), .Y(n100) );
  AO222X1_RVT U46 ( .A1(n41), .A2(dout[2]), .A3(n47), .A4(dout[3]), .A5(din[3]), .A6(n45), .Y(n101) );
  AO222X1_RVT U48 ( .A1(n41), .A2(dout[3]), .A3(n47), .A4(dout[4]), .A5(din[4]), .A6(n45), .Y(n102) );
  AO222X1_RVT U50 ( .A1(n41), .A2(dout[4]), .A3(n47), .A4(dout[5]), .A5(din[5]), .A6(n45), .Y(n103) );
  AO222X1_RVT U52 ( .A1(n41), .A2(dout[5]), .A3(n47), .A4(dout[6]), .A5(din[6]), .A6(n45), .Y(n104) );
  AO222X1_RVT U54 ( .A1(n41), .A2(dout[6]), .A3(n47), .A4(dout[7]), .A5(din[7]), .A6(n45), .Y(n105) );
  AO222X1_RVT U56 ( .A1(n41), .A2(dout[0]), .A3(n47), .A4(dout[1]), .A5(din[1]), .A6(n45), .Y(n106) );
  AND2X1_RVT U59 ( .A1(n44), .A2(n56), .Y(n47) );
  OR2X1_RVT U60 ( .A1(rst), .A2(n89), .Y(n56) );
  AND2X1_RVT U61 ( .A1(n57), .A2(n58), .Y(n44) );
  NAND3X0_RVT U64 ( .A1(n89), .A2(n58), .A3(shift), .Y(n57) );
  INVX0_RVT U65 ( .A(rst), .Y(n58) );
  AO21X1_RVT U67 ( .A1(n20), .A2(n60), .A3(n27), .Y(n59) );
  AO21X1_RVT U69 ( .A1(core_ack), .A2(n12), .A3(n61), .Y(n37) );
  AND4X1_RVT U70 ( .A1(n76), .A2(n88), .A3(n32), .A4(n62), .Y(n61) );
  NAND3X0_RVT U71 ( .A1(n60), .A2(n30), .A3(n5), .Y(n62) );
  INVX0_RVT U72 ( .A(read), .Y(n5) );
  INVX0_RVT U73 ( .A(write), .Y(n30) );
  INVX0_RVT U74 ( .A(stop), .Y(n60) );
  INVX0_RVT U75 ( .A(n36), .Y(n32) );
  OR3X1_RVT U76 ( .A1(n27), .A2(n21), .A3(n20), .Y(n36) );
  NAND2X0_RVT U77 ( .A1(n86), .A2(n87), .Y(n21) );
  AO21X1_RVT U81 ( .A1(n11), .A2(n28), .A3(n8), .Y(n63) );
  NAND3X0_RVT U83 ( .A1(n79), .A2(n84), .A3(n78), .Y(n11) );
  AO221X1_RVT U85 ( .A1(ack_in), .A2(n65), .A3(n66), .A4(dout[7]), .A5(n19), 
        .Y(n64) );
  INVX0_RVT U86 ( .A(n18), .Y(n19) );
  NAND2X0_RVT U87 ( .A1(core_ack), .A2(n20), .Y(n18) );
  NAND4X0_RVT U89 ( .A1(n88), .A2(n85), .A3(n67), .A4(n86), .Y(n66) );
  OA22X1_RVT U90 ( .A1(n87), .A2(core_ack), .A3(n8), .A4(n20), .Y(n67) );
  AO21X1_RVT U91 ( .A1(core_ack), .A2(n8), .A3(n20), .Y(n65) );
  INVX1_RVT U11 ( .A(n57), .Y(n41) );
  INVX1_RVT U18 ( .A(n56), .Y(n45) );
  AO21X1_RVT U23 ( .A1(n16), .A2(n11), .A3(n1), .Y(n23) );
  AND2X1_RVT U24 ( .A1(n16), .A2(n37), .Y(N106) );
  NOR2X0_RVT U28 ( .A1(rst), .A2(i2c_al), .Y(n16) );
  NAND2X0_RVT U29 ( .A1(n29), .A2(n40), .Y(n3) );
  NAND3X0_RVT U31 ( .A1(n10), .A2(n20), .A3(stop), .Y(n29) );
  NAND4X0_RVT U36 ( .A1(n25), .A2(n88), .A3(n5), .A4(n30), .Y(n40) );
  AND3X1_RVT U40 ( .A1(core_ack), .A2(n59), .A3(n16), .Y(N107) );
  AND3X1_RVT U42 ( .A1(core_ack), .A2(n63), .A3(n16), .Y(N105) );
  AND2X1_RVT U47 ( .A1(n16), .A2(n64), .Y(N104) );
  AND2X1_RVT U49 ( .A1(n16), .A2(n17), .Y(n90) );
  AND2X1_RVT U51 ( .A1(n33), .A2(n16), .Y(n10) );
  NAND3X0_RVT U53 ( .A1(n34), .A2(n35), .A3(n16), .Y(n33) );
endmodule


module i2c_master_top ( wb_clk_i, wb_rst_i, arst_i, wb_adr_i, wb_dat_i, 
        wb_dat_o, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_inta_o, scl_pad_i, 
        scl_pad_o, scl_padoen_o, sda_pad_i, sda_pad_o, sda_padoen_o );
  input [2:0] wb_adr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, scl_pad_i,
         sda_pad_i;
  output wb_ack_o, wb_inta_o, scl_pad_o, scl_padoen_o, sda_pad_o, sda_padoen_o;
  wire   N20, sr_0, N43, N44, N45, N46, N48, N49, N50, done, irxack, N114,
         N115, N116, N117, N121, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n19, n20, n22, n23, n24, n25, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n145, n146;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  tri   wb_clk_i;
  tri   wb_rst_i;
  tri   arst_i;
  tri   scl_pad_i;
  tri   scl_pad_o;
  tri   scl_padoen_o;
  tri   sda_pad_i;
  tri   sda_pad_o;
  tri   sda_padoen_o;
  tri   [15:0] prer;
  tri   \ctr[7] ;
  tri   i2c_al;

  i2c_master_byte_ctrl byte_controller ( .clk(wb_clk_i), .rst(wb_rst_i), 
        .nReset(arst_i), .ena(\ctr[7] ), .clk_cnt(prer), .start(n35), .stop(
        n37), .read(n38), .write(n39), .ack_in(n48), .din(txr), .cmd_ack(done), 
        .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), .i2c_al(i2c_al), 
        .scl_i(scl_pad_i), .scl_o(scl_pad_o), .scl_oen(scl_padoen_o), .sda_i(
        sda_pad_i), .sda_o(sda_pad_o), .sda_oen(sda_padoen_o) );
  DFFX1_RVT wb_ack_o_reg ( .D(N20), .CLK(wb_clk_i), .Q(wb_ack_o), .QN(n113) );
  DFFARX1_RVT \ctr_reg[7]  ( .D(n112), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        \ctr[7] ) );
  DFFARX1_RVT \ctr_reg[6]  ( .D(n138), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n14)
         );
  DFFARX1_RVT \ctr_reg[5]  ( .D(n137), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n13)
         );
  DFFARX1_RVT \ctr_reg[4]  ( .D(n136), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n12)
         );
  DFFARX1_RVT \ctr_reg[3]  ( .D(n135), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n11)
         );
  DFFARX1_RVT \ctr_reg[2]  ( .D(n134), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n10)
         );
  DFFARX1_RVT \ctr_reg[1]  ( .D(n133), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n9)
         );
  DFFARX1_RVT \ctr_reg[0]  ( .D(n132), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n7)
         );
  DFFARX1_RVT \txr_reg[7]  ( .D(n131), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[7]) );
  DFFARX1_RVT \txr_reg[6]  ( .D(n130), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[6]) );
  DFFARX1_RVT \txr_reg[5]  ( .D(n129), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[5]) );
  DFFARX1_RVT \txr_reg[4]  ( .D(n128), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[4]) );
  DFFARX1_RVT \txr_reg[3]  ( .D(n127), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[3]) );
  DFFARX1_RVT \txr_reg[2]  ( .D(n126), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[2]) );
  DFFARX1_RVT \txr_reg[1]  ( .D(n125), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[1]) );
  DFFARX1_RVT \txr_reg[0]  ( .D(n124), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[0]) );
  DFFASX1_RVT \prer_reg[15]  ( .D(n111), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[15]) );
  DFFASX1_RVT \prer_reg[14]  ( .D(n110), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[14]) );
  DFFASX1_RVT \prer_reg[13]  ( .D(n109), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[13]) );
  DFFASX1_RVT \prer_reg[12]  ( .D(n108), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[12]) );
  DFFASX1_RVT \prer_reg[11]  ( .D(n107), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[11]) );
  DFFASX1_RVT \prer_reg[10]  ( .D(n106), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[10]) );
  DFFASX1_RVT \prer_reg[9]  ( .D(n105), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[9]) );
  DFFASX1_RVT \prer_reg[8]  ( .D(n104), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[8]) );
  DFFASX1_RVT \prer_reg[7]  ( .D(n103), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[7]) );
  DFFASX1_RVT \prer_reg[6]  ( .D(n102), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[6]) );
  DFFASX1_RVT \prer_reg[5]  ( .D(n101), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[5]) );
  DFFASX1_RVT \prer_reg[4]  ( .D(n100), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[4]) );
  DFFASX1_RVT \prer_reg[3]  ( .D(n99), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[3]) );
  DFFASX1_RVT \prer_reg[2]  ( .D(n98), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[2]) );
  DFFASX1_RVT \prer_reg[1]  ( .D(n97), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[1]) );
  DFFASX1_RVT \prer_reg[0]  ( .D(n96), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[0]) );
  DFFARX1_RVT \cr_reg[7]  ( .D(n119), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n35), 
        .QN(n114) );
  DFFARX1_RVT \cr_reg[6]  ( .D(n120), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n37)
         );
  DFFX1_RVT \wb_dat_o_reg[6]  ( .D(N49), .CLK(wb_clk_i), .Q(wb_dat_o[6]) );
  DFFARX1_RVT \cr_reg[5]  ( .D(n121), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n38)
         );
  DFFARX1_RVT \cr_reg[4]  ( .D(n122), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n39)
         );
  DFFX1_RVT \wb_dat_o_reg[3]  ( .D(N46), .CLK(wb_clk_i), .Q(wb_dat_o[3]) );
  DFFARX1_RVT \cr_reg[2]  ( .D(n118), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n31)
         );
  DFFX1_RVT \wb_dat_o_reg[2]  ( .D(N45), .CLK(wb_clk_i), .Q(wb_dat_o[2]) );
  DFFARX1_RVT \cr_reg[1]  ( .D(n117), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n30)
         );
  DFFARX1_RVT \cr_reg[0]  ( .D(n116), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n28), 
        .QN(n115) );
  DFFARX1_RVT al_reg ( .D(N114), .CLK(wb_clk_i), .RSTB(arst_i), .Q(sr[5]) );
  DFFX1_RVT \wb_dat_o_reg[5]  ( .D(N48), .CLK(wb_clk_i), .Q(wb_dat_o[5]) );
  DFFARX1_RVT rxack_reg ( .D(N115), .CLK(wb_clk_i), .RSTB(arst_i), .QN(n82) );
  DFFX1_RVT \wb_dat_o_reg[7]  ( .D(N50), .CLK(wb_clk_i), .Q(wb_dat_o[7]) );
  DFFARX1_RVT tip_reg ( .D(N116), .CLK(wb_clk_i), .RSTB(arst_i), .QN(n81) );
  DFFX1_RVT \wb_dat_o_reg[1]  ( .D(N44), .CLK(wb_clk_i), .Q(wb_dat_o[1]) );
  DFFARX1_RVT irq_flag_reg ( .D(N117), .CLK(wb_clk_i), .RSTB(arst_i), .Q(sr_0)
         );
  DFFX1_RVT \wb_dat_o_reg[0]  ( .D(N43), .CLK(wb_clk_i), .Q(wb_dat_o[0]) );
  DFFARX1_RVT wb_inta_o_reg ( .D(N121), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        wb_inta_o) );
  AO22X1_RVT U3 ( .A1(txr[0]), .A2(n1), .A3(wb_dat_i[0]), .A4(n2), .Y(n124) );
  AO22X1_RVT U4 ( .A1(txr[1]), .A2(n1), .A3(wb_dat_i[1]), .A4(n2), .Y(n125) );
  AO22X1_RVT U5 ( .A1(txr[2]), .A2(n1), .A3(wb_dat_i[2]), .A4(n2), .Y(n126) );
  AO22X1_RVT U6 ( .A1(txr[3]), .A2(n1), .A3(wb_dat_i[3]), .A4(n2), .Y(n127) );
  AO22X1_RVT U7 ( .A1(txr[4]), .A2(n1), .A3(wb_dat_i[4]), .A4(n2), .Y(n128) );
  AO22X1_RVT U8 ( .A1(txr[5]), .A2(n1), .A3(wb_dat_i[5]), .A4(n2), .Y(n129) );
  AO22X1_RVT U9 ( .A1(txr[6]), .A2(n1), .A3(wb_dat_i[6]), .A4(n2), .Y(n130) );
  AO22X1_RVT U10 ( .A1(txr[7]), .A2(n1), .A3(wb_dat_i[7]), .A4(n2), .Y(n131)
         );
  AND2X1_RVT U11 ( .A1(n3), .A2(n4), .Y(n2) );
  INVX0_RVT U12 ( .A(n4), .Y(n1) );
  AO21X1_RVT U13 ( .A1(n142), .A2(n3), .A3(wb_rst_i), .Y(n4) );
  AO22X1_RVT U14 ( .A1(n6), .A2(n7), .A3(n8), .A4(wb_dat_i[0]), .Y(n132) );
  AO22X1_RVT U15 ( .A1(n6), .A2(n9), .A3(n8), .A4(wb_dat_i[1]), .Y(n133) );
  AO22X1_RVT U16 ( .A1(n6), .A2(n10), .A3(n8), .A4(wb_dat_i[2]), .Y(n134) );
  AO22X1_RVT U17 ( .A1(n6), .A2(n11), .A3(n8), .A4(wb_dat_i[3]), .Y(n135) );
  AO22X1_RVT U18 ( .A1(n6), .A2(n12), .A3(n8), .A4(wb_dat_i[4]), .Y(n136) );
  AO22X1_RVT U19 ( .A1(n6), .A2(n13), .A3(n8), .A4(wb_dat_i[5]), .Y(n137) );
  AO22X1_RVT U20 ( .A1(n6), .A2(n14), .A3(n8), .A4(wb_dat_i[6]), .Y(n138) );
  AND2X1_RVT U21 ( .A1(n3), .A2(n15), .Y(n8) );
  INVX0_RVT U22 ( .A(n15), .Y(n6) );
  AO221X1_RVT U23 ( .A1(n16), .A2(wb_dat_i[0]), .A3(prer[0]), .A4(n140), .A5(
        wb_rst_i), .Y(n96) );
  AO221X1_RVT U24 ( .A1(n16), .A2(wb_dat_i[1]), .A3(prer[1]), .A4(n140), .A5(
        wb_rst_i), .Y(n97) );
  AO221X1_RVT U25 ( .A1(n16), .A2(wb_dat_i[2]), .A3(prer[2]), .A4(n140), .A5(
        wb_rst_i), .Y(n98) );
  AO221X1_RVT U26 ( .A1(n16), .A2(wb_dat_i[3]), .A3(prer[3]), .A4(n140), .A5(
        wb_rst_i), .Y(n99) );
  AO221X1_RVT U27 ( .A1(n16), .A2(wb_dat_i[4]), .A3(prer[4]), .A4(n140), .A5(
        n145), .Y(n100) );
  AO221X1_RVT U28 ( .A1(n16), .A2(wb_dat_i[5]), .A3(prer[5]), .A4(n140), .A5(
        n145), .Y(n101) );
  AO221X1_RVT U29 ( .A1(n16), .A2(wb_dat_i[6]), .A3(prer[6]), .A4(n140), .A5(
        n145), .Y(n102) );
  AO221X1_RVT U30 ( .A1(n16), .A2(wb_dat_i[7]), .A3(prer[7]), .A4(n140), .A5(
        n145), .Y(n103) );
  INVX0_RVT U31 ( .A(n140), .Y(n16) );
  AO221X1_RVT U33 ( .A1(n20), .A2(wb_dat_i[0]), .A3(prer[8]), .A4(n141), .A5(
        n145), .Y(n104) );
  AO221X1_RVT U34 ( .A1(n20), .A2(wb_dat_i[1]), .A3(prer[9]), .A4(n141), .A5(
        n145), .Y(n105) );
  AO221X1_RVT U35 ( .A1(n20), .A2(wb_dat_i[2]), .A3(prer[10]), .A4(n141), .A5(
        n145), .Y(n106) );
  AO221X1_RVT U36 ( .A1(n20), .A2(wb_dat_i[3]), .A3(prer[11]), .A4(n141), .A5(
        n145), .Y(n107) );
  AO221X1_RVT U37 ( .A1(n20), .A2(wb_dat_i[4]), .A3(prer[12]), .A4(n141), .A5(
        n145), .Y(n108) );
  AO221X1_RVT U38 ( .A1(n20), .A2(wb_dat_i[5]), .A3(prer[13]), .A4(n141), .A5(
        n145), .Y(n109) );
  AO221X1_RVT U39 ( .A1(n20), .A2(wb_dat_i[6]), .A3(prer[14]), .A4(n141), .A5(
        n145), .Y(n110) );
  AO221X1_RVT U40 ( .A1(n20), .A2(wb_dat_i[7]), .A3(prer[15]), .A4(n141), .A5(
        n145), .Y(n111) );
  INVX0_RVT U41 ( .A(n141), .Y(n20) );
  OAI22X1_RVT U43 ( .A1(n15), .A2(n23), .A3(n24), .A4(n25), .Y(n112) );
  NAND2X0_RVT U44 ( .A1(wb_dat_i[7]), .A2(n3), .Y(n25) );
  AO21X1_RVT U45 ( .A1(n146), .A2(n19), .A3(wb_rst_i), .Y(n15) );
  AO22X1_RVT U46 ( .A1(n27), .A2(n28), .A3(n29), .A4(wb_dat_i[0]), .Y(n116) );
  AO22X1_RVT U47 ( .A1(n27), .A2(n30), .A3(n29), .A4(wb_dat_i[1]), .Y(n117) );
  AO22X1_RVT U48 ( .A1(n27), .A2(n31), .A3(n29), .A4(wb_dat_i[2]), .Y(n118) );
  NOR2X0_RVT U49 ( .A1(n32), .A2(n27), .Y(n29) );
  OA21X1_RVT U50 ( .A1(n33), .A2(n23), .A3(n3), .Y(n27) );
  INVX0_RVT U51 ( .A(\ctr[7] ), .Y(n23) );
  AO22X1_RVT U52 ( .A1(n34), .A2(n35), .A3(n36), .A4(wb_dat_i[7]), .Y(n119) );
  AO22X1_RVT U53 ( .A1(n34), .A2(n37), .A3(n36), .A4(wb_dat_i[6]), .Y(n120) );
  AO22X1_RVT U54 ( .A1(n34), .A2(n38), .A3(n36), .A4(wb_dat_i[5]), .Y(n121) );
  AO22X1_RVT U55 ( .A1(n34), .A2(n39), .A3(n36), .A4(wb_dat_i[4]), .Y(n122) );
  AND2X1_RVT U56 ( .A1(n3), .A2(n40), .Y(n36) );
  INVX0_RVT U57 ( .A(n40), .Y(n34) );
  NAND3X0_RVT U58 ( .A1(n41), .A2(n42), .A3(n43), .Y(n40) );
  AO21X1_RVT U59 ( .A1(n44), .A2(n45), .A3(n19), .Y(n43) );
  INVX0_RVT U60 ( .A(done), .Y(n45) );
  AND2X1_RVT U62 ( .A1(n48), .A2(n42), .Y(n47) );
  NAND3X0_RVT U64 ( .A1(\ctr[7] ), .A2(n3), .A3(n49), .Y(n41) );
  INVX0_RVT U65 ( .A(n32), .Y(n3) );
  NAND2X0_RVT U66 ( .A1(n19), .A2(n42), .Y(n32) );
  AND3X1_RVT U67 ( .A1(wb_stb_i), .A2(wb_cyc_i), .A3(wb_we_i), .Y(n19) );
  NAND3X0_RVT U68 ( .A1(n50), .A2(n51), .A3(n52), .Y(N50) );
  AOI222X1_RVT U69 ( .A1(n53), .A2(txr[7]), .A3(rxr[7]), .A4(n142), .A5(n54), 
        .A6(n35), .Y(n52) );
  AOI22X1_RVT U71 ( .A1(n139), .A2(prer[7]), .A3(n146), .A4(\ctr[7] ), .Y(n51)
         );
  OA22X1_RVT U72 ( .A1(n55), .A2(n56), .A3(n33), .A4(n82), .Y(n50) );
  INVX0_RVT U73 ( .A(prer[15]), .Y(n56) );
  OR3X1_RVT U74 ( .A1(n57), .A2(n58), .A3(n59), .Y(N49) );
  AO222X1_RVT U75 ( .A1(n54), .A2(n37), .A3(rxr[6]), .A4(n142), .A5(n53), .A6(
        txr[6]), .Y(n59) );
  AO22X1_RVT U77 ( .A1(sr[6]), .A2(n49), .A3(prer[14]), .A4(n22), .Y(n58) );
  AO22X1_RVT U78 ( .A1(n146), .A2(n14), .A3(prer[6]), .A4(n139), .Y(n57) );
  NAND3X0_RVT U79 ( .A1(n60), .A2(n61), .A3(n62), .Y(N48) );
  AOI222X1_RVT U80 ( .A1(n53), .A2(txr[5]), .A3(rxr[5]), .A4(n142), .A5(n54), 
        .A6(n38), .Y(n62) );
  AOI22X1_RVT U81 ( .A1(n139), .A2(prer[5]), .A3(n13), .A4(n146), .Y(n61) );
  AOI22X1_RVT U83 ( .A1(n22), .A2(prer[13]), .A3(n49), .A4(sr[5]), .Y(n60) );
  AO222X1_RVT U86 ( .A1(n146), .A2(n12), .A3(prer[4]), .A4(n139), .A5(prer[12]), .A6(n22), .Y(n63) );
  OR2X1_RVT U88 ( .A1(n65), .A2(n66), .Y(N46) );
  AO222X1_RVT U89 ( .A1(n54), .A2(n48), .A3(rxr[3]), .A4(n142), .A5(n53), .A6(
        txr[3]), .Y(n66) );
  AO222X1_RVT U91 ( .A1(n146), .A2(n11), .A3(prer[3]), .A4(n139), .A5(prer[11]), .A6(n22), .Y(n65) );
  OR2X1_RVT U93 ( .A1(n67), .A2(n68), .Y(N45) );
  AO222X1_RVT U94 ( .A1(n54), .A2(n31), .A3(rxr[2]), .A4(n142), .A5(n53), .A6(
        txr[2]), .Y(n68) );
  AO222X1_RVT U96 ( .A1(n146), .A2(n10), .A3(prer[2]), .A4(n139), .A5(prer[10]), .A6(n22), .Y(n67) );
  NAND3X0_RVT U98 ( .A1(n69), .A2(n70), .A3(n71), .Y(N44) );
  AOI222X1_RVT U99 ( .A1(n53), .A2(txr[1]), .A3(rxr[1]), .A4(n142), .A5(n54), 
        .A6(n30), .Y(n71) );
  AOI22X1_RVT U101 ( .A1(n139), .A2(prer[1]), .A3(n9), .A4(n146), .Y(n70) );
  OA22X1_RVT U103 ( .A1(n55), .A2(n72), .A3(n33), .A4(n81), .Y(n69) );
  INVX0_RVT U104 ( .A(prer[9]), .Y(n72) );
  NAND3X0_RVT U105 ( .A1(n73), .A2(n74), .A3(n75), .Y(N43) );
  AOI222X1_RVT U106 ( .A1(n53), .A2(txr[0]), .A3(rxr[0]), .A4(n142), .A5(n54), 
        .A6(n28), .Y(n75) );
  AND3X1_RVT U108 ( .A1(wb_adr_i[1]), .A2(n76), .A3(wb_adr_i[2]), .Y(n54) );
  AND3X1_RVT U110 ( .A1(wb_adr_i[0]), .A2(n78), .A3(wb_adr_i[2]), .Y(n53) );
  AOI22X1_RVT U111 ( .A1(n139), .A2(prer[0]), .A3(n7), .A4(n146), .Y(n74) );
  NAND3X0_RVT U113 ( .A1(n76), .A2(n77), .A3(wb_adr_i[1]), .Y(n24) );
  AOI22X1_RVT U116 ( .A1(n22), .A2(prer[8]), .A3(n49), .A4(sr_0), .Y(n73) );
  INVX0_RVT U117 ( .A(n33), .Y(n49) );
  NAND3X0_RVT U118 ( .A1(n76), .A2(n78), .A3(wb_adr_i[2]), .Y(n33) );
  INVX0_RVT U119 ( .A(wb_adr_i[0]), .Y(n76) );
  INVX0_RVT U120 ( .A(n55), .Y(n22) );
  NAND3X0_RVT U121 ( .A1(n78), .A2(n77), .A3(wb_adr_i[0]), .Y(n55) );
  INVX0_RVT U122 ( .A(wb_adr_i[2]), .Y(n77) );
  INVX0_RVT U123 ( .A(wb_adr_i[1]), .Y(n78) );
  AND3X1_RVT U124 ( .A1(wb_cyc_i), .A2(n113), .A3(wb_stb_i), .Y(N20) );
  AND3X1_RVT U125 ( .A1(n14), .A2(n42), .A3(sr_0), .Y(N121) );
  AND3X1_RVT U127 ( .A1(n79), .A2(n42), .A3(n115), .Y(N117) );
  OR3X1_RVT U128 ( .A1(i2c_al), .A2(sr_0), .A3(done), .Y(n79) );
  OA21X1_RVT U129 ( .A1(n38), .A2(n39), .A3(n42), .Y(N116) );
  AND2X1_RVT U132 ( .A1(irxack), .A2(n42), .Y(N115) );
  AOI21X1_RVT U134 ( .A1(n44), .A2(n80), .A3(n145), .Y(N114) );
  NAND2X0_RVT U135 ( .A1(n114), .A2(sr[5]), .Y(n80) );
  INVX0_RVT U136 ( .A(i2c_al), .Y(n44) );
  DFFSSRX1_RVT \wb_dat_o_reg[4]  ( .D(n63), .SETB(n143), .RSTB(1'b1), .CLK(
        wb_clk_i), .Q(wb_dat_o[4]) );
  SDFFARX1_RVT \cr_reg[3]  ( .D(wb_dat_i[3]), .SI(n47), .SE(n41), .CLK(
        wb_clk_i), .RSTB(arst_i), .Q(n48) );
  AND3X1_RVT U137 ( .A1(n78), .A2(n77), .A3(n76), .Y(n139) );
  NAND2X0_RVT U138 ( .A1(n139), .A2(n19), .Y(n140) );
  NAND2X0_RVT U139 ( .A1(n22), .A2(n19), .Y(n141) );
  AND3X1_RVT U140 ( .A1(wb_adr_i[0]), .A2(n77), .A3(wb_adr_i[1]), .Y(n142) );
  AOI222X1_RVT U141 ( .A1(n54), .A2(n39), .A3(rxr[4]), .A4(n142), .A5(n53), 
        .A6(txr[4]), .Y(n143) );
  INVX1_RVT U143 ( .A(n24), .Y(n146) );
  INVX1_RVT U144 ( .A(wb_rst_i), .Y(n42) );
  NBUFFX2_RVT U145 ( .A(wb_rst_i), .Y(n145) );
endmodule

