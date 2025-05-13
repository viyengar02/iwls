/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4-1
// Date      : Tue May 13 10:44:55 2025
/////////////////////////////////////////////////////////////


module i2c_master_top ( wb_clk_i, wb_rst_i, arst_i, wb_adr_i, wb_dat_i, 
        wb_dat_o, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_inta_o, scl_pad_i, 
        scl_pad_o, scl_padoen_o, sda_pad_i, sda_pad_o, sda_padoen_o );
  input [2:0] wb_adr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, scl_pad_i,
         sda_pad_i;
  output wb_ack_o, wb_inta_o, scl_pad_o, scl_padoen_o, sda_pad_o, sda_padoen_o;
  wire   N20, sr_0, N43, N44, N45, N47, N48, N49, N50, N114, N115, N116, N117,
         N121, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n14, n15, n16, n17,
         n18, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n133,
         n134, n135, n136;
  wire   [7:5] sr;
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
  tri   [7:0] rxr;
  tri   [7:0] txr;
  tri   [7:0] cr;
  tri   done;
  tri   i2c_al;
  tri   irxack;

  i2c_master_byte_ctrl byte_controller ( .clk(wb_clk_i), .rst(wb_rst_i), 
        .nReset(arst_i), .ena(\ctr[7] ), .clk_cnt(prer), .start(cr[7]), .stop(
        cr[6]), .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), 
        .cmd_ack(done), .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), 
        .i2c_al(i2c_al), .scl_i(scl_pad_i), .scl_o(scl_pad_o), .scl_oen(
        scl_padoen_o), .sda_i(sda_pad_i), .sda_o(sda_pad_o), .sda_oen(
        sda_padoen_o) );
  DFFARX1_RVT \cr_reg[3]  ( .D(n114), .CLK(wb_clk_i), .RSTB(arst_i), .Q(cr[3])
         );
  DFFX1_RVT wb_ack_o_reg ( .D(N20), .CLK(wb_clk_i), .Q(wb_ack_o), .QN(n115) );
  DFFARX1_RVT \ctr_reg[7]  ( .D(n113), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        \ctr[7] ) );
  DFFARX1_RVT \ctr_reg[6]  ( .D(n126), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n39)
         );
  DFFARX1_RVT \ctr_reg[5]  ( .D(n125), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n38)
         );
  DFFARX1_RVT \ctr_reg[4]  ( .D(n124), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n37)
         );
  DFFARX1_RVT \ctr_reg[3]  ( .D(n123), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n36)
         );
  DFFARX1_RVT \ctr_reg[2]  ( .D(n122), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n35)
         );
  DFFARX1_RVT \ctr_reg[1]  ( .D(n121), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n34)
         );
  DFFARX1_RVT \ctr_reg[0]  ( .D(n120), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n32)
         );
  DFFARX1_RVT \txr_reg[7]  ( .D(n112), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[7]) );
  DFFARX1_RVT \txr_reg[6]  ( .D(n111), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[6]) );
  DFFARX1_RVT \txr_reg[5]  ( .D(n110), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[5]) );
  DFFARX1_RVT \txr_reg[4]  ( .D(n109), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[4]) );
  DFFARX1_RVT \txr_reg[3]  ( .D(n108), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[3]) );
  DFFARX1_RVT \txr_reg[2]  ( .D(n107), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[2]) );
  DFFARX1_RVT \txr_reg[1]  ( .D(n106), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[1]) );
  DFFARX1_RVT \txr_reg[0]  ( .D(n105), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        txr[0]) );
  DFFASX1_RVT \prer_reg[15]  ( .D(n104), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[15]) );
  DFFASX1_RVT \prer_reg[14]  ( .D(n103), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[14]) );
  DFFASX1_RVT \prer_reg[13]  ( .D(n102), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[13]) );
  DFFASX1_RVT \prer_reg[12]  ( .D(n101), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[12]) );
  DFFASX1_RVT \prer_reg[11]  ( .D(n100), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[11]) );
  DFFASX1_RVT \prer_reg[10]  ( .D(n99), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[10]) );
  DFFASX1_RVT \prer_reg[9]  ( .D(n98), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[9]) );
  DFFASX1_RVT \prer_reg[8]  ( .D(n97), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[8]) );
  DFFASX1_RVT \prer_reg[7]  ( .D(n96), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[7]) );
  DFFASX1_RVT \prer_reg[6]  ( .D(n95), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[6]) );
  DFFASX1_RVT \prer_reg[5]  ( .D(n94), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[5]) );
  DFFASX1_RVT \prer_reg[4]  ( .D(n93), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[4]) );
  DFFASX1_RVT \prer_reg[3]  ( .D(n92), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[3]) );
  DFFASX1_RVT \prer_reg[2]  ( .D(n91), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[2]) );
  DFFASX1_RVT \prer_reg[1]  ( .D(n90), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[1]) );
  DFFASX1_RVT \prer_reg[0]  ( .D(n89), .CLK(wb_clk_i), .SETB(arst_i), .Q(
        prer[0]) );
  DFFARX1_RVT \cr_reg[7]  ( .D(n88), .CLK(wb_clk_i), .RSTB(arst_i), .Q(cr[7])
         );
  DFFARX1_RVT \cr_reg[6]  ( .D(n87), .CLK(wb_clk_i), .RSTB(arst_i), .Q(cr[6])
         );
  DFFX1_RVT \wb_dat_o_reg[6]  ( .D(N49), .CLK(wb_clk_i), .Q(wb_dat_o[6]) );
  DFFARX1_RVT \cr_reg[5]  ( .D(n86), .CLK(wb_clk_i), .RSTB(arst_i), .Q(cr[5])
         );
  DFFARX1_RVT \cr_reg[4]  ( .D(n85), .CLK(wb_clk_i), .RSTB(arst_i), .Q(cr[4])
         );
  DFFX1_RVT \wb_dat_o_reg[4]  ( .D(N47), .CLK(wb_clk_i), .Q(wb_dat_o[4]) );
  DFFARX1_RVT \cr_reg[2]  ( .D(n119), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n30)
         );
  DFFX1_RVT \wb_dat_o_reg[2]  ( .D(N45), .CLK(wb_clk_i), .Q(wb_dat_o[2]) );
  DFFARX1_RVT \cr_reg[1]  ( .D(n118), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n29)
         );
  DFFARX1_RVT \cr_reg[0]  ( .D(n117), .CLK(wb_clk_i), .RSTB(arst_i), .Q(n27), 
        .QN(n116) );
  DFFARX1_RVT al_reg ( .D(N114), .CLK(wb_clk_i), .RSTB(arst_i), .Q(sr[5]) );
  DFFX1_RVT \wb_dat_o_reg[5]  ( .D(N48), .CLK(wb_clk_i), .Q(wb_dat_o[5]) );
  DFFARX1_RVT rxack_reg ( .D(N115), .CLK(wb_clk_i), .RSTB(arst_i), .QN(n75) );
  DFFX1_RVT \wb_dat_o_reg[7]  ( .D(N50), .CLK(wb_clk_i), .Q(wb_dat_o[7]) );
  DFFARX1_RVT tip_reg ( .D(N116), .CLK(wb_clk_i), .RSTB(arst_i), .QN(n74) );
  DFFX1_RVT \wb_dat_o_reg[1]  ( .D(N44), .CLK(wb_clk_i), .Q(wb_dat_o[1]) );
  DFFARX1_RVT irq_flag_reg ( .D(N117), .CLK(wb_clk_i), .RSTB(arst_i), .Q(sr_0)
         );
  DFFX1_RVT \wb_dat_o_reg[0]  ( .D(N43), .CLK(wb_clk_i), .Q(wb_dat_o[0]) );
  DFFARX1_RVT wb_inta_o_reg ( .D(N121), .CLK(wb_clk_i), .RSTB(arst_i), .Q(
        wb_inta_o) );
  AO22X1_RVT U3 ( .A1(cr[4]), .A2(n1), .A3(wb_dat_i[4]), .A4(n2), .Y(n85) );
  AO22X1_RVT U4 ( .A1(cr[5]), .A2(n1), .A3(wb_dat_i[5]), .A4(n2), .Y(n86) );
  AO22X1_RVT U5 ( .A1(cr[6]), .A2(n1), .A3(wb_dat_i[6]), .A4(n2), .Y(n87) );
  AO22X1_RVT U6 ( .A1(cr[7]), .A2(n1), .A3(wb_dat_i[7]), .A4(n2), .Y(n88) );
  AND2X1_RVT U7 ( .A1(n4), .A2(n127), .Y(n2) );
  INVX0_RVT U8 ( .A(n4), .Y(n1) );
  NAND2X0_RVT U10 ( .A1(n8), .A2(n9), .Y(n7) );
  AO221X1_RVT U11 ( .A1(wb_dat_i[0]), .A2(n134), .A3(prer[0]), .A4(n11), .A5(
        wb_rst_i), .Y(n89) );
  AO221X1_RVT U12 ( .A1(wb_dat_i[1]), .A2(n10), .A3(prer[1]), .A4(n11), .A5(
        wb_rst_i), .Y(n90) );
  AO221X1_RVT U13 ( .A1(wb_dat_i[2]), .A2(n134), .A3(prer[2]), .A4(n11), .A5(
        wb_rst_i), .Y(n91) );
  AO221X1_RVT U14 ( .A1(wb_dat_i[3]), .A2(n10), .A3(prer[3]), .A4(n11), .A5(
        wb_rst_i), .Y(n92) );
  AO221X1_RVT U15 ( .A1(n134), .A2(wb_dat_i[4]), .A3(prer[4]), .A4(n11), .A5(
        wb_rst_i), .Y(n93) );
  AO221X1_RVT U16 ( .A1(n10), .A2(wb_dat_i[5]), .A3(prer[5]), .A4(n11), .A5(
        n133), .Y(n94) );
  AO221X1_RVT U17 ( .A1(n134), .A2(wb_dat_i[6]), .A3(prer[6]), .A4(n11), .A5(
        n133), .Y(n95) );
  AO221X1_RVT U18 ( .A1(n10), .A2(wb_dat_i[7]), .A3(prer[7]), .A4(n11), .A5(
        n133), .Y(n96) );
  INVX0_RVT U19 ( .A(n11), .Y(n10) );
  NAND2X0_RVT U20 ( .A1(n129), .A2(n127), .Y(n11) );
  AO221X1_RVT U21 ( .A1(n136), .A2(wb_dat_i[0]), .A3(prer[8]), .A4(n14), .A5(
        n133), .Y(n97) );
  AO221X1_RVT U22 ( .A1(n136), .A2(wb_dat_i[1]), .A3(prer[9]), .A4(n14), .A5(
        n133), .Y(n98) );
  AO221X1_RVT U23 ( .A1(n135), .A2(wb_dat_i[2]), .A3(prer[10]), .A4(n14), .A5(
        n133), .Y(n99) );
  AO221X1_RVT U24 ( .A1(n135), .A2(wb_dat_i[3]), .A3(prer[11]), .A4(n14), .A5(
        n133), .Y(n100) );
  AO221X1_RVT U25 ( .A1(n135), .A2(wb_dat_i[4]), .A3(prer[12]), .A4(n14), .A5(
        n133), .Y(n101) );
  AO221X1_RVT U26 ( .A1(n135), .A2(wb_dat_i[5]), .A3(prer[13]), .A4(n14), .A5(
        n133), .Y(n102) );
  AO221X1_RVT U27 ( .A1(n136), .A2(wb_dat_i[6]), .A3(prer[14]), .A4(n14), .A5(
        n133), .Y(n103) );
  AO221X1_RVT U28 ( .A1(n136), .A2(wb_dat_i[7]), .A3(prer[15]), .A4(n14), .A5(
        n133), .Y(n104) );
  NAND2X0_RVT U30 ( .A1(n15), .A2(n127), .Y(n14) );
  AO22X1_RVT U31 ( .A1(n16), .A2(txr[0]), .A3(n17), .A4(wb_dat_i[0]), .Y(n105)
         );
  AO22X1_RVT U32 ( .A1(n16), .A2(txr[1]), .A3(n17), .A4(wb_dat_i[1]), .Y(n106)
         );
  AO22X1_RVT U33 ( .A1(txr[2]), .A2(n16), .A3(n17), .A4(wb_dat_i[2]), .Y(n107)
         );
  AO22X1_RVT U34 ( .A1(n16), .A2(txr[3]), .A3(n17), .A4(wb_dat_i[3]), .Y(n108)
         );
  AO22X1_RVT U35 ( .A1(n16), .A2(txr[4]), .A3(n17), .A4(wb_dat_i[4]), .Y(n109)
         );
  AO22X1_RVT U36 ( .A1(n16), .A2(txr[5]), .A3(n17), .A4(wb_dat_i[5]), .Y(n110)
         );
  AO22X1_RVT U37 ( .A1(n16), .A2(txr[6]), .A3(n17), .A4(wb_dat_i[6]), .Y(n111)
         );
  AO22X1_RVT U38 ( .A1(txr[7]), .A2(n16), .A3(n17), .A4(wb_dat_i[7]), .Y(n112)
         );
  AND2X1_RVT U39 ( .A1(n127), .A2(n18), .Y(n17) );
  INVX0_RVT U40 ( .A(n18), .Y(n16) );
  AO22X1_RVT U42 ( .A1(\ctr[7] ), .A2(n20), .A3(n128), .A4(n22), .Y(n113) );
  AND2X1_RVT U43 ( .A1(wb_dat_i[7]), .A2(n127), .Y(n22) );
  NAND2X0_RVT U44 ( .A1(n23), .A2(n24), .Y(n114) );
  NAND3X0_RVT U46 ( .A1(n5), .A2(n6), .A3(cr[3]), .Y(n23) );
  AO22X1_RVT U47 ( .A1(n26), .A2(n27), .A3(n28), .A4(wb_dat_i[0]), .Y(n117) );
  AO22X1_RVT U48 ( .A1(n26), .A2(n29), .A3(n28), .A4(wb_dat_i[1]), .Y(n118) );
  AO22X1_RVT U49 ( .A1(n26), .A2(n30), .A3(n28), .A4(wb_dat_i[2]), .Y(n119) );
  AND2X1_RVT U50 ( .A1(n127), .A2(n31), .Y(n28) );
  INVX0_RVT U51 ( .A(n31), .Y(n26) );
  NAND2X0_RVT U52 ( .A1(n127), .A2(n5), .Y(n31) );
  NAND3X0_RVT U53 ( .A1(n25), .A2(n127), .A3(\ctr[7] ), .Y(n5) );
  AO22X1_RVT U54 ( .A1(n20), .A2(n32), .A3(n33), .A4(wb_dat_i[0]), .Y(n120) );
  AO22X1_RVT U55 ( .A1(n20), .A2(n34), .A3(n33), .A4(wb_dat_i[1]), .Y(n121) );
  AO22X1_RVT U56 ( .A1(n20), .A2(n35), .A3(n33), .A4(wb_dat_i[2]), .Y(n122) );
  AO22X1_RVT U57 ( .A1(n20), .A2(n36), .A3(n33), .A4(wb_dat_i[3]), .Y(n123) );
  AO22X1_RVT U58 ( .A1(n20), .A2(n37), .A3(n33), .A4(wb_dat_i[4]), .Y(n124) );
  AO22X1_RVT U59 ( .A1(n20), .A2(n38), .A3(n33), .A4(wb_dat_i[5]), .Y(n125) );
  AO22X1_RVT U60 ( .A1(n20), .A2(n39), .A3(n33), .A4(wb_dat_i[6]), .Y(n126) );
  AND2X1_RVT U61 ( .A1(n127), .A2(n40), .Y(n33) );
  INVX0_RVT U62 ( .A(n40), .Y(n20) );
  NAND3X0_RVT U65 ( .A1(wb_stb_i), .A2(wb_cyc_i), .A3(wb_we_i), .Y(n8) );
  NAND3X0_RVT U66 ( .A1(n41), .A2(n42), .A3(n43), .Y(N50) );
  AOI222X1_RVT U67 ( .A1(n44), .A2(txr[7]), .A3(rxr[7]), .A4(n130), .A5(n45), 
        .A6(cr[7]), .Y(n43) );
  AOI22X1_RVT U68 ( .A1(n129), .A2(prer[7]), .A3(\ctr[7] ), .A4(n128), .Y(n42)
         );
  OA22X1_RVT U69 ( .A1(n46), .A2(n47), .A3(n48), .A4(n75), .Y(n41) );
  INVX0_RVT U70 ( .A(prer[15]), .Y(n47) );
  OR3X1_RVT U71 ( .A1(n49), .A2(n50), .A3(n51), .Y(N49) );
  AO222X1_RVT U72 ( .A1(n45), .A2(cr[6]), .A3(rxr[6]), .A4(n130), .A5(n44), 
        .A6(txr[6]), .Y(n51) );
  AO22X1_RVT U73 ( .A1(sr[6]), .A2(n25), .A3(prer[14]), .A4(n15), .Y(n50) );
  AO22X1_RVT U74 ( .A1(n128), .A2(n39), .A3(prer[6]), .A4(n129), .Y(n49) );
  NAND3X0_RVT U75 ( .A1(n52), .A2(n53), .A3(n54), .Y(N48) );
  AOI222X1_RVT U76 ( .A1(n44), .A2(txr[5]), .A3(rxr[5]), .A4(n130), .A5(n45), 
        .A6(cr[5]), .Y(n54) );
  AOI22X1_RVT U77 ( .A1(n129), .A2(prer[5]), .A3(n38), .A4(n128), .Y(n53) );
  AOI22X1_RVT U79 ( .A1(n15), .A2(prer[13]), .A3(n25), .A4(sr[5]), .Y(n52) );
  OR2X1_RVT U80 ( .A1(n55), .A2(n56), .Y(N47) );
  AO222X1_RVT U81 ( .A1(n45), .A2(cr[4]), .A3(rxr[4]), .A4(n130), .A5(n44), 
        .A6(txr[4]), .Y(n56) );
  AO222X1_RVT U82 ( .A1(n128), .A2(n37), .A3(prer[4]), .A4(n129), .A5(prer[12]), .A6(n15), .Y(n55) );
  AO222X1_RVT U86 ( .A1(n128), .A2(n36), .A3(prer[3]), .A4(n129), .A5(prer[11]), .A6(n15), .Y(n57) );
  OR2X1_RVT U88 ( .A1(n59), .A2(n60), .Y(N45) );
  AO222X1_RVT U89 ( .A1(n45), .A2(n30), .A3(rxr[2]), .A4(n130), .A5(n44), .A6(
        txr[2]), .Y(n60) );
  AO222X1_RVT U91 ( .A1(n128), .A2(n35), .A3(prer[2]), .A4(n129), .A5(prer[10]), .A6(n15), .Y(n59) );
  NAND3X0_RVT U93 ( .A1(n61), .A2(n62), .A3(n63), .Y(N44) );
  AOI222X1_RVT U94 ( .A1(n44), .A2(txr[1]), .A3(rxr[1]), .A4(n130), .A5(n45), 
        .A6(n29), .Y(n63) );
  AOI22X1_RVT U96 ( .A1(n129), .A2(prer[1]), .A3(n34), .A4(n128), .Y(n62) );
  OA22X1_RVT U98 ( .A1(n46), .A2(n64), .A3(n48), .A4(n74), .Y(n61) );
  INVX0_RVT U99 ( .A(prer[9]), .Y(n64) );
  NAND3X0_RVT U100 ( .A1(n65), .A2(n66), .A3(n67), .Y(N43) );
  AOI222X1_RVT U101 ( .A1(n44), .A2(txr[0]), .A3(rxr[0]), .A4(n130), .A5(n45), 
        .A6(n27), .Y(n67) );
  AND3X1_RVT U103 ( .A1(wb_adr_i[2]), .A2(n68), .A3(wb_adr_i[1]), .Y(n45) );
  AND3X1_RVT U105 ( .A1(wb_adr_i[2]), .A2(n70), .A3(wb_adr_i[0]), .Y(n44) );
  AOI22X1_RVT U106 ( .A1(n129), .A2(prer[0]), .A3(n32), .A4(n128), .Y(n66) );
  AOI22X1_RVT U110 ( .A1(n15), .A2(prer[8]), .A3(n25), .A4(sr_0), .Y(n65) );
  INVX0_RVT U111 ( .A(n48), .Y(n25) );
  NAND3X0_RVT U112 ( .A1(n68), .A2(n70), .A3(wb_adr_i[2]), .Y(n48) );
  INVX0_RVT U113 ( .A(wb_adr_i[0]), .Y(n68) );
  INVX0_RVT U114 ( .A(n46), .Y(n15) );
  NAND3X0_RVT U115 ( .A1(n70), .A2(n69), .A3(wb_adr_i[0]), .Y(n46) );
  INVX0_RVT U116 ( .A(wb_adr_i[2]), .Y(n69) );
  INVX0_RVT U117 ( .A(wb_adr_i[1]), .Y(n70) );
  AND3X1_RVT U118 ( .A1(wb_cyc_i), .A2(n115), .A3(wb_stb_i), .Y(N20) );
  AND3X1_RVT U119 ( .A1(n39), .A2(n6), .A3(sr_0), .Y(N121) );
  AND3X1_RVT U121 ( .A1(n71), .A2(n6), .A3(n116), .Y(N117) );
  OR2X1_RVT U122 ( .A1(n9), .A2(sr_0), .Y(n71) );
  OR2X1_RVT U123 ( .A1(done), .A2(i2c_al), .Y(n9) );
  OA21X1_RVT U124 ( .A1(cr[4]), .A2(cr[5]), .A3(n6), .Y(N116) );
  AND2X1_RVT U125 ( .A1(irxack), .A2(n6), .Y(N115) );
  OA21X1_RVT U126 ( .A1(i2c_al), .A2(n72), .A3(n6), .Y(N114) );
  AND2X1_RVT U128 ( .A1(sr[5]), .A2(n73), .Y(n72) );
  INVX0_RVT U129 ( .A(cr[7]), .Y(n73) );
  DFFSSRX1_RVT \wb_dat_o_reg[3]  ( .D(n57), .SETB(n131), .RSTB(1'b1), .CLK(
        wb_clk_i), .Q(wb_dat_o[3]) );
  NOR2X0_RVT U130 ( .A1(n8), .A2(wb_rst_i), .Y(n127) );
  AND3X1_RVT U131 ( .A1(n68), .A2(n69), .A3(wb_adr_i[1]), .Y(n128) );
  AND3X1_RVT U132 ( .A1(n70), .A2(n69), .A3(n68), .Y(n129) );
  AND3X1_RVT U133 ( .A1(wb_adr_i[0]), .A2(n69), .A3(wb_adr_i[1]), .Y(n130) );
  AOI222X1_RVT U134 ( .A1(n45), .A2(cr[3]), .A3(rxr[3]), .A4(n130), .A5(n44), 
        .A6(txr[3]), .Y(n131) );
  AO21X1_RVT U136 ( .A1(n130), .A2(n127), .A3(wb_rst_i), .Y(n18) );
  AO21X1_RVT U137 ( .A1(n128), .A2(n127), .A3(wb_rst_i), .Y(n40) );
  INVX1_RVT U138 ( .A(wb_rst_i), .Y(n6) );
  NAND4X0_RVT U139 ( .A1(wb_dat_i[3]), .A2(\ctr[7] ), .A3(n25), .A4(n127), .Y(
        n24) );
  NBUFFX2_RVT U140 ( .A(wb_rst_i), .Y(n133) );
  NBUFFX2_RVT U141 ( .A(n10), .Y(n134) );
  NBUFFX2_RVT U142 ( .A(n136), .Y(n135) );
  NAND3X0_RVT U143 ( .A1(n5), .A2(n6), .A3(n7), .Y(n4) );
  INVX0_RVT U144 ( .A(n14), .Y(n136) );
endmodule

