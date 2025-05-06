/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Tue Apr 15 10:28:09 2025
/////////////////////////////////////////////////////////////


module mc_cs_rf_0 ( clk, rst, wb_we_i, din, rf_we, addr, csc, tms, poc, 
        csc_mask, cs, wp_err, lmr_req, lmr_ack, init_req, init_ack );
  input [31:0] din;
  input [31:0] addr;
  output [31:0] csc;
  output [31:0] tms;
  input [31:0] poc;
  input [31:0] csc_mask;
  input clk, rst, wb_we_i, rf_we, lmr_ack, init_ack;
  output cs, wp_err, lmr_req, init_req;
  wire   addr_6, addr_5, addr_4, addr_3, addr_2, rst_r1, rst_r2, init_req_we,
         N86, N99, N100, N107, N109, n5, n9, n10, n12, n13, n29, n31, n32, n33,
         n34, n35, n45, n46, n47, n48, n50, n51, n53, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n1,
         n2, n3, n4, n6, n7, n8, n11, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n30, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n49, n52, n55, n56, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n143, n146, n150, n151, n152;
  assign addr_6 = addr[6];
  assign addr_5 = addr[5];
  assign addr_4 = addr[4];
  assign addr_3 = addr[3];
  assign addr_2 = addr[2];

  DFFX1_RVT \tms_reg[25]  ( .D(n87), .CLK(clk), .Q(tms[25]) );
  DFFX1_RVT \tms_reg[23]  ( .D(n85), .CLK(clk), .Q(tms[23]) );
  DFFX1_RVT \tms_reg[22]  ( .D(n84), .CLK(clk), .Q(tms[22]) );
  DFFX1_RVT \tms_reg[21]  ( .D(n83), .CLK(clk), .Q(tms[21]) );
  DFFX1_RVT \tms_reg[20]  ( .D(n82), .CLK(clk), .Q(tms[20]) );
  DFFX1_RVT \tms_reg[19]  ( .D(n81), .CLK(clk), .Q(tms[19]) );
  DFFX1_RVT \tms_reg[13]  ( .D(n75), .CLK(clk), .Q(tms[13]) );
  DFFX1_RVT \tms_reg[12]  ( .D(n74), .CLK(clk), .Q(tms[12]) );
  DFFX1_RVT \tms_reg[11]  ( .D(n73), .CLK(clk), .Q(tms[11]) );
  DFFX1_RVT \tms_reg[10]  ( .D(n72), .CLK(clk), .Q(tms[10]) );
  DFFX1_RVT \tms_reg[9]  ( .D(n71), .CLK(clk), .Q(tms[9]) );
  DFFX1_RVT \tms_reg[8]  ( .D(n70), .CLK(clk), .Q(tms[8]) );
  DFFX1_RVT \tms_reg[31]  ( .D(n93), .CLK(clk), .Q(tms[31]) );
  DFFX1_RVT \tms_reg[30]  ( .D(n92), .CLK(clk), .Q(tms[30]) );
  DFFX1_RVT \tms_reg[29]  ( .D(n91), .CLK(clk), .Q(tms[29]) );
  DFFX1_RVT \tms_reg[28]  ( .D(n90), .CLK(clk), .Q(tms[28]) );
  DFFX1_RVT \tms_reg[27]  ( .D(n89), .CLK(clk), .Q(tms[27]) );
  DFFX1_RVT \tms_reg[26]  ( .D(n88), .CLK(clk), .Q(tms[26]) );
  DFFX1_RVT \tms_reg[24]  ( .D(n86), .CLK(clk), .Q(tms[24]) );
  DFFX1_RVT \tms_reg[18]  ( .D(n80), .CLK(clk), .Q(tms[18]) );
  DFFX1_RVT \tms_reg[17]  ( .D(n79), .CLK(clk), .Q(tms[17]) );
  DFFX1_RVT \tms_reg[16]  ( .D(n78), .CLK(clk), .Q(tms[16]) );
  DFFX1_RVT \tms_reg[15]  ( .D(n77), .CLK(clk), .Q(tms[15]) );
  DFFX1_RVT \tms_reg[14]  ( .D(n76), .CLK(clk), .Q(tms[14]) );
  DFFX1_RVT \tms_reg[7]  ( .D(n69), .CLK(clk), .Q(tms[7]) );
  DFFX1_RVT \tms_reg[6]  ( .D(n68), .CLK(clk), .Q(tms[6]) );
  DFFX1_RVT \tms_reg[5]  ( .D(n67), .CLK(clk), .Q(tms[5]) );
  DFFX1_RVT \tms_reg[4]  ( .D(n66), .CLK(clk), .Q(tms[4]) );
  DFFX1_RVT \tms_reg[3]  ( .D(n65), .CLK(clk), .Q(tms[3]) );
  DFFX1_RVT \tms_reg[2]  ( .D(n64), .CLK(clk), .Q(tms[2]) );
  DFFX1_RVT \tms_reg[1]  ( .D(n63), .CLK(clk), .Q(tms[1]) );
  DFFX1_RVT \tms_reg[0]  ( .D(n62), .CLK(clk), .Q(tms[0]) );
  DFFX1_RVT \csc_reg[31]  ( .D(n124), .CLK(clk), .Q(csc[31]) );
  DFFX1_RVT \csc_reg[30]  ( .D(n123), .CLK(clk), .Q(csc[30]) );
  DFFX1_RVT \csc_reg[29]  ( .D(n122), .CLK(clk), .Q(csc[29]) );
  DFFX1_RVT \csc_reg[28]  ( .D(n121), .CLK(clk), .Q(csc[28]) );
  DFFX1_RVT \csc_reg[27]  ( .D(n120), .CLK(clk), .Q(csc[27]) );
  DFFX1_RVT \csc_reg[26]  ( .D(n119), .CLK(clk), .Q(csc[26]) );
  DFFX1_RVT \csc_reg[25]  ( .D(n118), .CLK(clk), .Q(csc[25]) );
  DFFX1_RVT \csc_reg[24]  ( .D(n117), .CLK(clk), .Q(csc[24]) );
  DFFX1_RVT \csc_reg[15]  ( .D(n108), .CLK(clk), .Q(csc[15]) );
  DFFX1_RVT \csc_reg[14]  ( .D(n107), .CLK(clk), .Q(csc[14]) );
  DFFX1_RVT \csc_reg[13]  ( .D(n106), .CLK(clk), .Q(csc[13]) );
  DFFX1_RVT \csc_reg[12]  ( .D(n105), .CLK(clk), .Q(csc[12]) );
  DFFX1_RVT \csc_reg[11]  ( .D(n104), .CLK(clk), .Q(csc[11]) );
  DFFX1_RVT \csc_reg[10]  ( .D(n103), .CLK(clk), .Q(csc[10]) );
  DFFX1_RVT \csc_reg[9]  ( .D(n102), .CLK(clk), .Q(csc[9]) );
  DFFX1_RVT \csc_reg[7]  ( .D(n100), .CLK(clk), .Q(csc[7]) );
  DFFX1_RVT \csc_reg[6]  ( .D(n99), .CLK(clk), .Q(csc[6]) );
  DFFX1_RVT \csc_reg[5]  ( .D(n98), .CLK(clk), .Q(csc[5]) );
  DFFX1_RVT \csc_reg[4]  ( .D(n97), .CLK(clk), .Q(csc[4]) );
  DFFARX1_RVT init_req_reg ( .D(n60), .CLK(clk), .RSTB(n152), .Q(init_req), 
        .QN(n59) );
  DFFARX1_RVT lmr_req_reg ( .D(n61), .CLK(clk), .RSTB(n152), .Q(lmr_req), .QN(
        n46) );
  SDFFSSRX1_RVT \csc_reg[0]  ( .RSTB(rst_r2), .SETB(n151), .D(poc[2]), .SI(
        1'b1), .SE(n53), .CLK(clk), .Q(csc[0]) );
  DFFX1_RVT \addr_r_reg[6]  ( .D(addr_6), .CLK(clk), .QN(n33) );
  DFFX1_RVT \addr_r_reg[5]  ( .D(addr_5), .CLK(clk), .QN(n32) );
  DFFX1_RVT \addr_r_reg[2]  ( .D(addr_2), .CLK(clk), .QN(n57) );
  DFFASX1_RVT rst_r1_reg ( .D(1'b0), .CLK(clk), .SETB(n152), .Q(rst_r1) );
  DFFARX1_RVT inited_reg ( .D(n51), .CLK(clk), .RSTB(n152), .Q(n150), .QN(n50)
         );
  DFFARX1_RVT init_req_we_reg ( .D(N86), .CLK(clk), .RSTB(n152), .Q(
        init_req_we) );
  DFFARX1_RVT lmr_req_we_reg ( .D(n2), .CLK(clk), .RSTB(n152), .Q(n45) );
  DFFASX1_RVT rst_r2_reg ( .D(rst_r1), .CLK(clk), .SETB(n152), .Q(rst_r2), 
        .QN(n43) );
  DFFX1_RVT \addr_r_reg[3]  ( .D(addr_3), .CLK(clk), .Q(n3), .QN(n35) );
  DFFX1_RVT \addr_r_reg[4]  ( .D(addr_4), .CLK(clk), .Q(n34), .QN(n4) );
  DFFX1_RVT \csc_reg[23]  ( .D(n116), .CLK(clk), .Q(csc[23]) );
  DFFX1_RVT \csc_reg[22]  ( .D(n115), .CLK(clk), .Q(csc[22]) );
  DFFX1_RVT \csc_reg[21]  ( .D(n114), .CLK(clk), .Q(csc[21]) );
  DFFX1_RVT \csc_reg[20]  ( .D(n113), .CLK(clk), .Q(csc[20]) );
  DFFX1_RVT \csc_reg[19]  ( .D(n112), .CLK(clk), .Q(csc[19]) );
  DFFX1_RVT \csc_reg[18]  ( .D(n111), .CLK(clk), .Q(csc[18]) );
  DFFX1_RVT \csc_reg[17]  ( .D(n110), .CLK(clk), .Q(csc[17]) );
  DFFX1_RVT \csc_reg[16]  ( .D(n109), .CLK(clk), .Q(csc[16]) );
  DFFX1_RVT \csc_reg[8]  ( .D(n101), .CLK(clk), .Q(csc[8]) );
  DFFX1_RVT \csc_reg[3]  ( .D(n96), .CLK(clk), .Q(csc[3]), .QN(n48) );
  DFFX1_RVT \csc_reg[2]  ( .D(n95), .CLK(clk), .Q(csc[2]), .QN(n47) );
  DFFX1_RVT \csc_reg[1]  ( .D(n94), .CLK(clk), .Q(csc[1]), .QN(n58) );
  AND4X1_RVT U3 ( .A1(n32), .A2(n33), .A3(rf_we), .A4(n31), .Y(N86) );
  INVX1_RVT U4 ( .A(n2), .Y(n28) );
  INVX1_RVT U5 ( .A(n2), .Y(n30) );
  INVX0_RVT U6 ( .A(n27), .Y(n38) );
  INVX0_RVT U7 ( .A(n27), .Y(n36) );
  INVX1_RVT U8 ( .A(n27), .Y(n37) );
  INVX1_RVT U9 ( .A(n29), .Y(n25) );
  INVX1_RVT U10 ( .A(n29), .Y(n26) );
  INVX1_RVT U11 ( .A(n2), .Y(n27) );
  INVX1_RVT U12 ( .A(N107), .Y(n132) );
  INVX1_RVT U13 ( .A(N99), .Y(n133) );
  AND3X1_RVT U14 ( .A1(n143), .A2(csc[0]), .A3(N109), .Y(wp_err) );
  INVX1_RVT U15 ( .A(n5), .Y(n143) );
  INVX1_RVT U16 ( .A(n29), .Y(n134) );
  INVX1_RVT U17 ( .A(n11), .Y(n39) );
  INVX1_RVT U18 ( .A(n11), .Y(n40) );
  OR2X1_RVT U19 ( .A1(n150), .A2(init_ack), .Y(n51) );
  INVX1_RVT U20 ( .A(n11), .Y(n41) );
  NAND2X0_RVT U21 ( .A1(csc_mask[0]), .A2(addr[21]), .Y(n1) );
  AO221X1_RVT U22 ( .A1(din[14]), .A2(n37), .A3(tms[14]), .A4(n28), .A5(rst_r2), .Y(n76) );
  AO221X1_RVT U23 ( .A1(din[15]), .A2(n36), .A3(tms[15]), .A4(n28), .A5(n42), 
        .Y(n77) );
  AO221X1_RVT U24 ( .A1(din[16]), .A2(n38), .A3(tms[16]), .A4(n28), .A5(rst_r2), .Y(n78) );
  AO221X1_RVT U25 ( .A1(din[17]), .A2(n37), .A3(tms[17]), .A4(n28), .A5(n24), 
        .Y(n79) );
  AO221X1_RVT U26 ( .A1(din[18]), .A2(n36), .A3(tms[18]), .A4(n28), .A5(rst_r2), .Y(n80) );
  AO221X1_RVT U27 ( .A1(din[24]), .A2(n38), .A3(tms[24]), .A4(n30), .A5(n42), 
        .Y(n86) );
  AO221X1_RVT U28 ( .A1(din[26]), .A2(n37), .A3(tms[26]), .A4(n30), .A5(n24), 
        .Y(n88) );
  AO221X1_RVT U29 ( .A1(din[27]), .A2(n36), .A3(tms[27]), .A4(n30), .A5(rst_r2), .Y(n89) );
  AO221X1_RVT U30 ( .A1(din[28]), .A2(n38), .A3(tms[28]), .A4(n30), .A5(n24), 
        .Y(n90) );
  AO221X1_RVT U31 ( .A1(din[30]), .A2(n37), .A3(tms[30]), .A4(n30), .A5(rst_r2), .Y(n92) );
  AO221X1_RVT U32 ( .A1(din[31]), .A2(n36), .A3(tms[31]), .A4(n30), .A5(n24), 
        .Y(n93) );
  AO221X1_RVT U33 ( .A1(din[29]), .A2(n38), .A3(tms[29]), .A4(n30), .A5(n42), 
        .Y(n91) );
  AND2X1_RVT U34 ( .A1(addr[22]), .A2(csc_mask[1]), .Y(N107) );
  NOR4X1_RVT U35 ( .A1(n3), .A2(n57), .A3(n4), .A4(n6), .Y(n2) );
  NAND3X0_RVT U36 ( .A1(n32), .A2(n33), .A3(rf_we), .Y(n6) );
  AO221X1_RVT U37 ( .A1(din[1]), .A2(n37), .A3(tms[1]), .A4(n27), .A5(rst_r2), 
        .Y(n63) );
  AO221X1_RVT U38 ( .A1(din[2]), .A2(n36), .A3(tms[2]), .A4(n27), .A5(n42), 
        .Y(n64) );
  AO221X1_RVT U39 ( .A1(din[3]), .A2(n38), .A3(tms[3]), .A4(n27), .A5(n24), 
        .Y(n65) );
  AO221X1_RVT U40 ( .A1(din[4]), .A2(n37), .A3(tms[4]), .A4(n27), .A5(rst_r2), 
        .Y(n66) );
  AO221X1_RVT U41 ( .A1(din[5]), .A2(n36), .A3(tms[5]), .A4(n27), .A5(rst_r2), 
        .Y(n67) );
  AO221X1_RVT U42 ( .A1(din[6]), .A2(n38), .A3(tms[6]), .A4(n27), .A5(n42), 
        .Y(n68) );
  AO221X1_RVT U43 ( .A1(din[7]), .A2(n37), .A3(tms[7]), .A4(n27), .A5(n42), 
        .Y(n69) );
  AO221X1_RVT U44 ( .A1(n36), .A2(din[0]), .A3(tms[0]), .A4(n27), .A5(n42), 
        .Y(n62) );
  AO222X1_RVT U45 ( .A1(din[1]), .A2(n25), .A3(n39), .A4(csc[1]), .A5(n24), 
        .A6(poc[2]), .Y(n94) );
  AO222X1_RVT U46 ( .A1(din[2]), .A2(n25), .A3(n39), .A4(csc[2]), .A5(n24), 
        .A6(poc[3]), .Y(n95) );
  AO222X1_RVT U47 ( .A1(din[4]), .A2(n25), .A3(n39), .A4(csc[4]), .A5(poc[0]), 
        .A6(n24), .Y(n97) );
  AO222X1_RVT U48 ( .A1(din[5]), .A2(n25), .A3(n39), .A4(csc[5]), .A5(poc[1]), 
        .A6(n42), .Y(n98) );
  AO22X1_RVT U49 ( .A1(din[0]), .A2(n26), .A3(n40), .A4(csc[0]), .Y(n53) );
  AO22X1_RVT U50 ( .A1(din[14]), .A2(n26), .A3(n40), .A4(csc[14]), .Y(n107) );
  AO22X1_RVT U51 ( .A1(din[15]), .A2(n26), .A3(n40), .A4(csc[15]), .Y(n108) );
  AO22X1_RVT U52 ( .A1(din[16]), .A2(n26), .A3(n40), .A4(csc[16]), .Y(n109) );
  AO22X1_RVT U53 ( .A1(din[17]), .A2(n26), .A3(n40), .A4(csc[17]), .Y(n110) );
  AO22X1_RVT U54 ( .A1(din[18]), .A2(n26), .A3(n40), .A4(csc[18]), .Y(n111) );
  AO22X1_RVT U55 ( .A1(din[19]), .A2(n26), .A3(n40), .A4(csc[19]), .Y(n112) );
  AO22X1_RVT U56 ( .A1(din[20]), .A2(n26), .A3(n40), .A4(csc[20]), .Y(n113) );
  AO22X1_RVT U57 ( .A1(din[21]), .A2(n26), .A3(n40), .A4(csc[21]), .Y(n114) );
  AO22X1_RVT U58 ( .A1(din[22]), .A2(n26), .A3(n40), .A4(csc[22]), .Y(n115) );
  AO22X1_RVT U59 ( .A1(din[23]), .A2(n26), .A3(n40), .A4(csc[23]), .Y(n116) );
  AO22X1_RVT U60 ( .A1(din[24]), .A2(n26), .A3(n40), .A4(csc[24]), .Y(n117) );
  AO22X1_RVT U61 ( .A1(din[25]), .A2(n26), .A3(n41), .A4(csc[25]), .Y(n118) );
  AO22X1_RVT U62 ( .A1(din[26]), .A2(n26), .A3(n41), .A4(csc[26]), .Y(n119) );
  AO22X1_RVT U63 ( .A1(din[3]), .A2(n25), .A3(n39), .A4(csc[3]), .Y(n96) );
  AO22X1_RVT U64 ( .A1(din[6]), .A2(n25), .A3(n39), .A4(csc[6]), .Y(n99) );
  AO22X1_RVT U65 ( .A1(din[7]), .A2(n25), .A3(n39), .A4(csc[7]), .Y(n100) );
  AO22X1_RVT U66 ( .A1(din[8]), .A2(n25), .A3(n39), .A4(csc[8]), .Y(n101) );
  AO22X1_RVT U67 ( .A1(din[9]), .A2(n25), .A3(n39), .A4(csc[9]), .Y(n102) );
  AO22X1_RVT U68 ( .A1(din[10]), .A2(n25), .A3(n39), .A4(csc[10]), .Y(n103) );
  AO22X1_RVT U69 ( .A1(din[11]), .A2(n25), .A3(n39), .A4(csc[11]), .Y(n104) );
  AO22X1_RVT U70 ( .A1(din[12]), .A2(n25), .A3(n39), .A4(csc[12]), .Y(n105) );
  AO22X1_RVT U71 ( .A1(din[13]), .A2(n25), .A3(n40), .A4(csc[13]), .Y(n106) );
  AO22X1_RVT U72 ( .A1(din[31]), .A2(n25), .A3(n39), .A4(csc[31]), .Y(n124) );
  XNOR2X1_RVT U73 ( .A1(n7), .A2(n8), .Y(n125) );
  NAND2X0_RVT U74 ( .A1(addr[23]), .A2(csc_mask[2]), .Y(n7) );
  NAND2X0_RVT U75 ( .A1(csc_mask[2]), .A2(csc[18]), .Y(n8) );
  NAND2X0_RVT U76 ( .A1(N86), .A2(n43), .Y(n29) );
  AND3X1_RVT U77 ( .A1(n35), .A2(n57), .A3(n34), .Y(n31) );
  NAND2X0_RVT U78 ( .A1(n29), .A2(n43), .Y(n11) );
  XNOR2X1_RVT U79 ( .A1(n14), .A2(n15), .Y(n44) );
  NAND2X0_RVT U80 ( .A1(addr[24]), .A2(csc_mask[3]), .Y(n14) );
  NAND2X0_RVT U81 ( .A1(csc_mask[3]), .A2(csc[19]), .Y(n15) );
  NAND2X0_RVT U82 ( .A1(wb_we_i), .A2(csc[8]), .Y(n5) );
  AND2X1_RVT U83 ( .A1(csc_mask[0]), .A2(csc[16]), .Y(N100) );
  XNOR2X1_RVT U84 ( .A1(n16), .A2(n17), .Y(n49) );
  NAND2X0_RVT U85 ( .A1(addr[25]), .A2(csc_mask[4]), .Y(n16) );
  NAND2X0_RVT U86 ( .A1(csc_mask[4]), .A2(csc[20]), .Y(n17) );
  AND2X1_RVT U87 ( .A1(csc_mask[1]), .A2(csc[17]), .Y(N99) );
  AO22X1_RVT U88 ( .A1(n146), .A2(n150), .A3(n12), .A4(n13), .Y(n61) );
  INVX1_RVT U89 ( .A(n13), .Y(n146) );
  NAND4X0_RVT U90 ( .A1(n45), .A2(n47), .A3(n48), .A4(n58), .Y(n13) );
  NOR2X0_RVT U91 ( .A1(n46), .A2(lmr_ack), .Y(n12) );
  XNOR2X1_RVT U92 ( .A1(n18), .A2(n19), .Y(n55) );
  NAND2X0_RVT U93 ( .A1(addr[27]), .A2(csc_mask[6]), .Y(n18) );
  NAND2X0_RVT U94 ( .A1(csc_mask[6]), .A2(csc[22]), .Y(n19) );
  XNOR2X1_RVT U95 ( .A1(n20), .A2(n21), .Y(n52) );
  NAND2X0_RVT U96 ( .A1(addr[26]), .A2(csc_mask[5]), .Y(n20) );
  NAND2X0_RVT U97 ( .A1(csc_mask[5]), .A2(csc[21]), .Y(n21) );
  XNOR2X1_RVT U98 ( .A1(n22), .A2(n23), .Y(n56) );
  NAND2X0_RVT U99 ( .A1(addr[28]), .A2(csc_mask[7]), .Y(n22) );
  NAND2X0_RVT U100 ( .A1(csc_mask[7]), .A2(csc[23]), .Y(n23) );
  OAI22X1_RVT U101 ( .A1(n59), .A2(init_ack), .A3(n9), .A4(n10), .Y(n60) );
  NAND3X0_RVT U102 ( .A1(n48), .A2(n58), .A3(n47), .Y(n10) );
  NAND3X0_RVT U103 ( .A1(csc[0]), .A2(init_req_we), .A3(n50), .Y(n9) );
  AO22X1_RVT U104 ( .A1(din[27]), .A2(n134), .A3(n41), .A4(csc[27]), .Y(n120)
         );
  AO22X1_RVT U105 ( .A1(din[28]), .A2(n134), .A3(n41), .A4(csc[28]), .Y(n121)
         );
  AO22X1_RVT U106 ( .A1(din[29]), .A2(n134), .A3(n41), .A4(csc[29]), .Y(n122)
         );
  AO22X1_RVT U107 ( .A1(din[30]), .A2(n134), .A3(n41), .A4(csc[30]), .Y(n123)
         );
  INVX1_RVT U108 ( .A(poc[3]), .Y(n151) );
  INVX1_RVT U109 ( .A(rst), .Y(n152) );
  INVX1_RVT U110 ( .A(n43), .Y(n42) );
  INVX1_RVT U111 ( .A(n43), .Y(n24) );
  AND3X1_RVT U112 ( .A1(n5), .A2(csc[0]), .A3(N109), .Y(cs) );
  AO221X1_RVT U113 ( .A1(din[8]), .A2(n38), .A3(tms[8]), .A4(n27), .A5(rst_r2), 
        .Y(n70) );
  AO221X1_RVT U114 ( .A1(din[9]), .A2(n36), .A3(tms[9]), .A4(n27), .A5(n24), 
        .Y(n71) );
  AO221X1_RVT U115 ( .A1(din[10]), .A2(n37), .A3(tms[10]), .A4(n28), .A5(n24), 
        .Y(n72) );
  AO221X1_RVT U116 ( .A1(din[11]), .A2(n38), .A3(tms[11]), .A4(n28), .A5(n24), 
        .Y(n73) );
  AO221X1_RVT U117 ( .A1(din[12]), .A2(n36), .A3(tms[12]), .A4(n28), .A5(n42), 
        .Y(n74) );
  AO221X1_RVT U118 ( .A1(din[13]), .A2(n37), .A3(tms[13]), .A4(n28), .A5(n42), 
        .Y(n75) );
  AO221X1_RVT U119 ( .A1(din[19]), .A2(n38), .A3(tms[19]), .A4(n28), .A5(
        rst_r2), .Y(n81) );
  AO221X1_RVT U120 ( .A1(din[20]), .A2(n36), .A3(tms[20]), .A4(n28), .A5(n24), 
        .Y(n82) );
  AO221X1_RVT U121 ( .A1(din[21]), .A2(n37), .A3(tms[21]), .A4(n28), .A5(
        rst_r2), .Y(n83) );
  AO221X1_RVT U123 ( .A1(din[22]), .A2(n38), .A3(tms[22]), .A4(n28), .A5(
        rst_r2), .Y(n84) );
  AO221X1_RVT U124 ( .A1(din[23]), .A2(n36), .A3(tms[23]), .A4(n30), .A5(n42), 
        .Y(n85) );
  AO221X1_RVT U125 ( .A1(din[25]), .A2(n37), .A3(tms[25]), .A4(n30), .A5(n42), 
        .Y(n87) );
  NAND4X0_RVT U126 ( .A1(n55), .A2(n52), .A3(n49), .A4(n44), .Y(n131) );
  NAND2X0_RVT U127 ( .A1(n125), .A2(n56), .Y(n130) );
  NOR2X0_RVT U128 ( .A1(n1), .A2(N100), .Y(n126) );
  OA22X1_RVT U129 ( .A1(N107), .A2(n126), .A3(n126), .A4(n133), .Y(n129) );
  AND2X1_RVT U130 ( .A1(N100), .A2(n1), .Y(n127) );
  OA22X1_RVT U131 ( .A1(n127), .A2(n132), .A3(N99), .A4(n127), .Y(n128) );
  NOR4X0_RVT U132 ( .A1(n131), .A2(n130), .A3(n129), .A4(n128), .Y(N109) );
endmodule


module mc_cs_rf_1 ( clk, rst, wb_we_i, din, rf_we, addr, csc, tms, poc, 
        csc_mask, cs, wp_err, lmr_req, lmr_ack, init_req, init_ack );
  input [31:0] din;
  input [31:0] addr;
  output [31:0] csc;
  output [31:0] tms;
  input [31:0] poc;
  input [31:0] csc_mask;
  input clk, rst, wb_we_i, rf_we, lmr_ack, init_ack;
  output cs, wp_err, lmr_req, init_req;
  wire   addr_6, addr_5, addr_4, addr_3, addr_2, rst_r1, N78, init_req_we, N86,
         N99, N100, N107, N109, n5, n7, n8, n10, n11, n14, n30, n31, n33, n34,
         n35, n46, n47, n48, n49, n51, n52, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n1, n2,
         n3, n4, n6, n9, n12, n13, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n32, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n50, n53, n123, n124, n125, n126, n127, n128, n129,
         n138, n141, n145, n146;
  wire   [6:2] addr_r;
  assign addr_6 = addr[6];
  assign addr_5 = addr[5];
  assign addr_4 = addr[4];
  assign addr_3 = addr[3];
  assign addr_2 = addr[2];

  DFFX1_RVT \tms_reg[31]  ( .D(n90), .CLK(clk), .Q(tms[31]) );
  DFFX1_RVT \tms_reg[30]  ( .D(n89), .CLK(clk), .Q(tms[30]) );
  DFFX1_RVT \tms_reg[29]  ( .D(n88), .CLK(clk), .Q(tms[29]) );
  DFFX1_RVT \tms_reg[28]  ( .D(n87), .CLK(clk), .Q(tms[28]) );
  DFFX1_RVT \tms_reg[27]  ( .D(n86), .CLK(clk), .Q(tms[27]) );
  DFFX1_RVT \tms_reg[26]  ( .D(n85), .CLK(clk), .Q(tms[26]) );
  DFFX1_RVT \tms_reg[25]  ( .D(n84), .CLK(clk), .Q(tms[25]) );
  DFFX1_RVT \tms_reg[24]  ( .D(n83), .CLK(clk), .Q(tms[24]) );
  DFFX1_RVT \tms_reg[23]  ( .D(n82), .CLK(clk), .Q(tms[23]) );
  DFFX1_RVT \tms_reg[22]  ( .D(n81), .CLK(clk), .Q(tms[22]) );
  DFFX1_RVT \tms_reg[21]  ( .D(n80), .CLK(clk), .Q(tms[21]) );
  DFFX1_RVT \tms_reg[20]  ( .D(n79), .CLK(clk), .Q(tms[20]) );
  DFFX1_RVT \tms_reg[19]  ( .D(n78), .CLK(clk), .Q(tms[19]) );
  DFFX1_RVT \tms_reg[18]  ( .D(n77), .CLK(clk), .Q(tms[18]) );
  DFFX1_RVT \tms_reg[17]  ( .D(n76), .CLK(clk), .Q(tms[17]) );
  DFFX1_RVT \tms_reg[16]  ( .D(n75), .CLK(clk), .Q(tms[16]) );
  DFFX1_RVT \tms_reg[15]  ( .D(n74), .CLK(clk), .Q(tms[15]) );
  DFFX1_RVT \tms_reg[14]  ( .D(n73), .CLK(clk), .Q(tms[14]) );
  DFFX1_RVT \tms_reg[13]  ( .D(n72), .CLK(clk), .Q(tms[13]) );
  DFFX1_RVT \tms_reg[12]  ( .D(n71), .CLK(clk), .Q(tms[12]) );
  DFFX1_RVT \tms_reg[11]  ( .D(n70), .CLK(clk), .Q(tms[11]) );
  DFFX1_RVT \csc_reg[31]  ( .D(n122), .CLK(clk), .Q(csc[31]) );
  DFFX1_RVT \csc_reg[30]  ( .D(n121), .CLK(clk), .Q(csc[30]) );
  DFFX1_RVT \csc_reg[29]  ( .D(n120), .CLK(clk), .Q(csc[29]) );
  DFFX1_RVT \csc_reg[28]  ( .D(n119), .CLK(clk), .Q(csc[28]) );
  DFFX1_RVT \csc_reg[27]  ( .D(n118), .CLK(clk), .Q(csc[27]) );
  DFFX1_RVT \csc_reg[26]  ( .D(n117), .CLK(clk), .Q(csc[26]) );
  DFFX1_RVT \csc_reg[25]  ( .D(n116), .CLK(clk), .Q(csc[25]) );
  DFFX1_RVT \csc_reg[24]  ( .D(n115), .CLK(clk), .Q(csc[24]) );
  DFFX1_RVT \csc_reg[10]  ( .D(n101), .CLK(clk), .Q(csc[10]) );
  DFFX1_RVT \csc_reg[9]  ( .D(n100), .CLK(clk), .Q(csc[9]) );
  DFFX1_RVT \csc_reg[7]  ( .D(n98), .CLK(clk), .Q(csc[7]) );
  DFFX1_RVT \csc_reg[6]  ( .D(n97), .CLK(clk), .Q(csc[6]) );
  DFFX1_RVT \csc_reg[5]  ( .D(n96), .CLK(clk), .Q(csc[5]) );
  DFFX1_RVT \csc_reg[4]  ( .D(n95), .CLK(clk), .Q(csc[4]) );
  DFFARX1_RVT lmr_req_reg ( .D(n58), .CLK(clk), .RSTB(n146), .Q(lmr_req), .QN(
        n47) );
  DFFARX1_RVT init_req_reg ( .D(n57), .CLK(clk), .RSTB(n146), .Q(init_req), 
        .QN(n56) );
  DFFX1_RVT \tms_reg[10]  ( .D(n69), .CLK(clk), .Q(tms[10]) );
  DFFX1_RVT \tms_reg[9]  ( .D(n68), .CLK(clk), .Q(tms[9]) );
  DFFX1_RVT \tms_reg[8]  ( .D(n67), .CLK(clk), .Q(tms[8]) );
  DFFX1_RVT \tms_reg[7]  ( .D(n66), .CLK(clk), .Q(tms[7]) );
  DFFX1_RVT \tms_reg[6]  ( .D(n65), .CLK(clk), .Q(tms[6]) );
  DFFX1_RVT \tms_reg[5]  ( .D(n64), .CLK(clk), .Q(tms[5]) );
  DFFX1_RVT \tms_reg[4]  ( .D(n63), .CLK(clk), .Q(tms[4]) );
  DFFX1_RVT \tms_reg[3]  ( .D(n62), .CLK(clk), .Q(tms[3]) );
  DFFX1_RVT \tms_reg[2]  ( .D(n61), .CLK(clk), .Q(tms[2]) );
  DFFX1_RVT \tms_reg[1]  ( .D(n60), .CLK(clk), .Q(tms[1]) );
  DFFX1_RVT \tms_reg[0]  ( .D(n59), .CLK(clk), .Q(tms[0]) );
  DFFX1_RVT \csc_reg[15]  ( .D(n106), .CLK(clk), .Q(csc[15]) );
  DFFX1_RVT \csc_reg[14]  ( .D(n105), .CLK(clk), .Q(csc[14]) );
  DFFX1_RVT \csc_reg[13]  ( .D(n104), .CLK(clk), .Q(csc[13]) );
  DFFX1_RVT \csc_reg[12]  ( .D(n103), .CLK(clk), .Q(csc[12]) );
  DFFX1_RVT \csc_reg[11]  ( .D(n102), .CLK(clk), .Q(csc[11]) );
  DFFASX1_RVT rst_r2_reg ( .D(rst_r1), .CLK(clk), .SETB(n146), .QN(n1) );
  DFFX1_RVT \addr_r_reg[6]  ( .D(addr_6), .CLK(clk), .QN(n35) );
  DFFX1_RVT \addr_r_reg[5]  ( .D(addr_5), .CLK(clk), .QN(n34) );
  DFFX1_RVT \addr_r_reg[2]  ( .D(addr_2), .CLK(clk), .Q(n129), .QN(n54) );
  DFFASX1_RVT rst_r1_reg ( .D(1'b0), .CLK(clk), .SETB(n146), .Q(rst_r1) );
  DFFARX1_RVT inited_reg ( .D(n52), .CLK(clk), .RSTB(n146), .Q(n145), .QN(n51)
         );
  DFFARX1_RVT lmr_req_we_reg ( .D(N78), .CLK(clk), .RSTB(n146), .Q(n46) );
  DFFARX1_RVT init_req_we_reg ( .D(N86), .CLK(clk), .RSTB(n146), .Q(
        init_req_we) );
  DFFX1_RVT \csc_reg[3]  ( .D(n94), .CLK(clk), .Q(csc[3]), .QN(n49) );
  DFFX1_RVT \csc_reg[2]  ( .D(n93), .CLK(clk), .Q(csc[2]), .QN(n48) );
  DFFX1_RVT \csc_reg[1]  ( .D(n92), .CLK(clk), .Q(csc[1]), .QN(n55) );
  DFFX1_RVT \csc_reg[0]  ( .D(n91), .CLK(clk), .Q(csc[0]) );
  DFFX1_RVT \csc_reg[23]  ( .D(n114), .CLK(clk), .Q(csc[23]) );
  DFFX1_RVT \csc_reg[22]  ( .D(n113), .CLK(clk), .Q(csc[22]) );
  DFFX1_RVT \csc_reg[21]  ( .D(n112), .CLK(clk), .Q(csc[21]) );
  DFFX1_RVT \csc_reg[20]  ( .D(n111), .CLK(clk), .Q(csc[20]) );
  DFFX1_RVT \csc_reg[19]  ( .D(n110), .CLK(clk), .Q(csc[19]) );
  DFFX1_RVT \csc_reg[18]  ( .D(n109), .CLK(clk), .Q(csc[18]) );
  DFFX1_RVT \csc_reg[17]  ( .D(n108), .CLK(clk), .Q(csc[17]) );
  DFFX1_RVT \csc_reg[16]  ( .D(n107), .CLK(clk), .Q(csc[16]) );
  DFFX1_RVT \csc_reg[8]  ( .D(n99), .CLK(clk), .Q(csc[8]) );
  DFFX1_RVT \addr_r_reg[4]  ( .D(addr_4), .CLK(clk), .Q(addr_r[4]) );
  DFFX1_RVT \addr_r_reg[3]  ( .D(addr_3), .CLK(clk), .Q(addr_r[3]) );
  AND3X1_RVT U3 ( .A1(rf_we), .A2(n34), .A3(n33), .Y(n31) );
  INVX1_RVT U4 ( .A(n14), .Y(n24) );
  INVX1_RVT U5 ( .A(n14), .Y(n23) );
  INVX1_RVT U6 ( .A(n30), .Y(n26) );
  INVX1_RVT U7 ( .A(n30), .Y(n25) );
  INVX1_RVT U8 ( .A(n2), .Y(n36) );
  INVX1_RVT U9 ( .A(n2), .Y(n32) );
  INVX1_RVT U10 ( .A(n3), .Y(n28) );
  INVX1_RVT U11 ( .A(n3), .Y(n27) );
  INVX1_RVT U12 ( .A(n14), .Y(n127) );
  INVX1_RVT U13 ( .A(n30), .Y(n128) );
  INVX1_RVT U14 ( .A(n2), .Y(n37) );
  INVX1_RVT U15 ( .A(n3), .Y(n29) );
  AND3X1_RVT U16 ( .A1(n5), .A2(csc[0]), .A3(N109), .Y(cs) );
  INVX1_RVT U17 ( .A(N107), .Y(n125) );
  AND3X1_RVT U18 ( .A1(n138), .A2(csc[0]), .A3(N109), .Y(wp_err) );
  NAND2X0_RVT U19 ( .A1(n14), .A2(n1), .Y(n2) );
  NAND2X0_RVT U20 ( .A1(n30), .A2(n1), .Y(n3) );
  NAND2X0_RVT U21 ( .A1(N78), .A2(n1), .Y(n14) );
  NAND2X0_RVT U22 ( .A1(N86), .A2(n1), .Y(n30) );
  INVX1_RVT U23 ( .A(N99), .Y(n126) );
  INVX1_RVT U24 ( .A(n5), .Y(n138) );
  OR2X1_RVT U25 ( .A1(n145), .A2(init_ack), .Y(n52) );
  NAND2X0_RVT U26 ( .A1(csc_mask[0]), .A2(addr[21]), .Y(n4) );
  AND2X1_RVT U27 ( .A1(addr[22]), .A2(csc_mask[1]), .Y(N107) );
  XNOR2X1_RVT U28 ( .A1(n6), .A2(n9), .Y(n43) );
  NAND2X0_RVT U29 ( .A1(addr[23]), .A2(csc_mask[2]), .Y(n6) );
  NAND2X0_RVT U30 ( .A1(csc_mask[2]), .A2(csc[18]), .Y(n9) );
  AND3X1_RVT U31 ( .A1(addr_r[4]), .A2(addr_r[3]), .A3(n35), .Y(n33) );
  AO22X1_RVT U32 ( .A1(din[8]), .A2(n24), .A3(tms[8]), .A4(n36), .Y(n67) );
  AO22X1_RVT U33 ( .A1(din[9]), .A2(n24), .A3(tms[9]), .A4(n36), .Y(n68) );
  AO22X1_RVT U34 ( .A1(din[10]), .A2(n24), .A3(tms[10]), .A4(n36), .Y(n69) );
  AO22X1_RVT U35 ( .A1(din[11]), .A2(n24), .A3(tms[11]), .A4(n36), .Y(n70) );
  AO22X1_RVT U36 ( .A1(din[12]), .A2(n24), .A3(tms[12]), .A4(n36), .Y(n71) );
  AO22X1_RVT U37 ( .A1(din[13]), .A2(n24), .A3(tms[13]), .A4(n36), .Y(n72) );
  AO22X1_RVT U38 ( .A1(din[14]), .A2(n24), .A3(tms[14]), .A4(n36), .Y(n73) );
  AO22X1_RVT U39 ( .A1(din[15]), .A2(n24), .A3(tms[15]), .A4(n36), .Y(n74) );
  AO22X1_RVT U40 ( .A1(din[16]), .A2(n24), .A3(tms[16]), .A4(n36), .Y(n75) );
  AO22X1_RVT U41 ( .A1(din[17]), .A2(n24), .A3(tms[17]), .A4(n36), .Y(n76) );
  AO22X1_RVT U42 ( .A1(din[18]), .A2(n24), .A3(tms[18]), .A4(n36), .Y(n77) );
  AO22X1_RVT U43 ( .A1(din[19]), .A2(n24), .A3(tms[19]), .A4(n36), .Y(n78) );
  AO22X1_RVT U44 ( .A1(din[20]), .A2(n23), .A3(tms[20]), .A4(n32), .Y(n79) );
  AO22X1_RVT U45 ( .A1(din[21]), .A2(n23), .A3(tms[21]), .A4(n32), .Y(n80) );
  AO22X1_RVT U46 ( .A1(din[22]), .A2(n23), .A3(tms[22]), .A4(n32), .Y(n81) );
  AO22X1_RVT U47 ( .A1(din[23]), .A2(n23), .A3(tms[23]), .A4(n32), .Y(n82) );
  AO22X1_RVT U48 ( .A1(din[24]), .A2(n23), .A3(tms[24]), .A4(n32), .Y(n83) );
  AO22X1_RVT U49 ( .A1(din[25]), .A2(n23), .A3(tms[25]), .A4(n32), .Y(n84) );
  AO22X1_RVT U50 ( .A1(din[26]), .A2(n23), .A3(tms[26]), .A4(n32), .Y(n85) );
  AO22X1_RVT U51 ( .A1(din[27]), .A2(n23), .A3(tms[27]), .A4(n32), .Y(n86) );
  AO22X1_RVT U52 ( .A1(din[28]), .A2(n23), .A3(tms[28]), .A4(n32), .Y(n87) );
  AO22X1_RVT U53 ( .A1(din[29]), .A2(n23), .A3(tms[29]), .A4(n32), .Y(n88) );
  AO22X1_RVT U54 ( .A1(din[30]), .A2(n23), .A3(tms[30]), .A4(n32), .Y(n89) );
  AO22X1_RVT U55 ( .A1(din[31]), .A2(n23), .A3(tms[31]), .A4(n32), .Y(n90) );
  AO22X1_RVT U56 ( .A1(n26), .A2(din[8]), .A3(n28), .A4(csc[8]), .Y(n99) );
  AO22X1_RVT U57 ( .A1(n26), .A2(din[9]), .A3(n28), .A4(csc[9]), .Y(n100) );
  AO22X1_RVT U58 ( .A1(n26), .A2(din[10]), .A3(n28), .A4(csc[10]), .Y(n101) );
  AO22X1_RVT U59 ( .A1(n26), .A2(din[11]), .A3(n28), .A4(csc[11]), .Y(n102) );
  AO22X1_RVT U60 ( .A1(n26), .A2(din[12]), .A3(n28), .A4(csc[12]), .Y(n103) );
  AO22X1_RVT U61 ( .A1(n26), .A2(din[13]), .A3(n28), .A4(csc[13]), .Y(n104) );
  AO22X1_RVT U62 ( .A1(n26), .A2(din[14]), .A3(n28), .A4(csc[14]), .Y(n105) );
  AO22X1_RVT U63 ( .A1(n26), .A2(din[15]), .A3(n28), .A4(csc[15]), .Y(n106) );
  AO22X1_RVT U64 ( .A1(n26), .A2(din[16]), .A3(n28), .A4(csc[16]), .Y(n107) );
  AO22X1_RVT U65 ( .A1(n26), .A2(din[17]), .A3(n28), .A4(csc[17]), .Y(n108) );
  AO22X1_RVT U66 ( .A1(n26), .A2(din[18]), .A3(n28), .A4(csc[18]), .Y(n109) );
  AO22X1_RVT U67 ( .A1(n26), .A2(din[19]), .A3(n28), .A4(csc[19]), .Y(n110) );
  AO22X1_RVT U68 ( .A1(n25), .A2(din[20]), .A3(n27), .A4(csc[20]), .Y(n111) );
  AO22X1_RVT U69 ( .A1(n25), .A2(din[21]), .A3(n27), .A4(csc[21]), .Y(n112) );
  AO22X1_RVT U70 ( .A1(n25), .A2(din[22]), .A3(n27), .A4(csc[22]), .Y(n113) );
  AO22X1_RVT U71 ( .A1(n25), .A2(din[23]), .A3(n27), .A4(csc[23]), .Y(n114) );
  AO22X1_RVT U72 ( .A1(n25), .A2(din[24]), .A3(n27), .A4(csc[24]), .Y(n115) );
  AO22X1_RVT U73 ( .A1(n25), .A2(din[25]), .A3(n27), .A4(csc[25]), .Y(n116) );
  AO22X1_RVT U74 ( .A1(n25), .A2(din[26]), .A3(n27), .A4(csc[26]), .Y(n117) );
  AO22X1_RVT U75 ( .A1(n25), .A2(din[27]), .A3(n27), .A4(csc[27]), .Y(n118) );
  AO22X1_RVT U76 ( .A1(n25), .A2(din[28]), .A3(n27), .A4(csc[28]), .Y(n119) );
  AO22X1_RVT U77 ( .A1(n25), .A2(din[29]), .A3(n27), .A4(csc[29]), .Y(n120) );
  AO22X1_RVT U78 ( .A1(n25), .A2(din[30]), .A3(n27), .A4(csc[30]), .Y(n121) );
  AO22X1_RVT U79 ( .A1(n25), .A2(din[31]), .A3(n27), .A4(csc[31]), .Y(n122) );
  AND2X1_RVT U80 ( .A1(n31), .A2(n129), .Y(N78) );
  AND2X1_RVT U81 ( .A1(n54), .A2(n31), .Y(N86) );
  XNOR2X1_RVT U82 ( .A1(n12), .A2(n13), .Y(n38) );
  NAND2X0_RVT U83 ( .A1(addr[24]), .A2(csc_mask[3]), .Y(n12) );
  NAND2X0_RVT U84 ( .A1(csc_mask[3]), .A2(csc[19]), .Y(n13) );
  NAND2X0_RVT U85 ( .A1(wb_we_i), .A2(csc[8]), .Y(n5) );
  XNOR2X1_RVT U86 ( .A1(n15), .A2(n16), .Y(n39) );
  NAND2X0_RVT U87 ( .A1(addr[25]), .A2(csc_mask[4]), .Y(n15) );
  NAND2X0_RVT U88 ( .A1(csc_mask[4]), .A2(csc[20]), .Y(n16) );
  AO22X1_RVT U89 ( .A1(n128), .A2(din[0]), .A3(n29), .A4(csc[0]), .Y(n91) );
  AND2X1_RVT U90 ( .A1(csc_mask[0]), .A2(csc[16]), .Y(N100) );
  AND2X1_RVT U91 ( .A1(csc_mask[1]), .A2(csc[17]), .Y(N99) );
  XNOR2X1_RVT U92 ( .A1(n17), .A2(n18), .Y(n42) );
  NAND2X0_RVT U93 ( .A1(addr[28]), .A2(csc_mask[7]), .Y(n17) );
  NAND2X0_RVT U94 ( .A1(csc_mask[7]), .A2(csc[23]), .Y(n18) );
  AO22X1_RVT U95 ( .A1(din[0]), .A2(n127), .A3(tms[0]), .A4(n37), .Y(n59) );
  AO22X1_RVT U96 ( .A1(din[1]), .A2(n127), .A3(tms[1]), .A4(n37), .Y(n60) );
  AO22X1_RVT U97 ( .A1(din[2]), .A2(n127), .A3(tms[2]), .A4(n37), .Y(n61) );
  AO22X1_RVT U98 ( .A1(din[3]), .A2(n127), .A3(tms[3]), .A4(n37), .Y(n62) );
  AO22X1_RVT U99 ( .A1(din[4]), .A2(n127), .A3(tms[4]), .A4(n37), .Y(n63) );
  AO22X1_RVT U100 ( .A1(din[5]), .A2(n127), .A3(tms[5]), .A4(n37), .Y(n64) );
  AO22X1_RVT U101 ( .A1(din[6]), .A2(n127), .A3(tms[6]), .A4(n37), .Y(n65) );
  AO22X1_RVT U102 ( .A1(din[7]), .A2(n127), .A3(tms[7]), .A4(n37), .Y(n66) );
  AO22X1_RVT U103 ( .A1(n128), .A2(din[1]), .A3(n29), .A4(csc[1]), .Y(n92) );
  AO22X1_RVT U104 ( .A1(n128), .A2(din[2]), .A3(n29), .A4(csc[2]), .Y(n93) );
  AO22X1_RVT U105 ( .A1(n128), .A2(din[3]), .A3(n29), .A4(csc[3]), .Y(n94) );
  AO22X1_RVT U106 ( .A1(n128), .A2(din[4]), .A3(n29), .A4(csc[4]), .Y(n95) );
  AO22X1_RVT U107 ( .A1(n128), .A2(din[5]), .A3(n29), .A4(csc[5]), .Y(n96) );
  AO22X1_RVT U108 ( .A1(n128), .A2(din[6]), .A3(n29), .A4(csc[6]), .Y(n97) );
  AO22X1_RVT U109 ( .A1(n128), .A2(din[7]), .A3(n29), .A4(csc[7]), .Y(n98) );
  XNOR2X1_RVT U110 ( .A1(n19), .A2(n20), .Y(n41) );
  NAND2X0_RVT U111 ( .A1(addr[27]), .A2(csc_mask[6]), .Y(n19) );
  NAND2X0_RVT U112 ( .A1(csc_mask[6]), .A2(csc[22]), .Y(n20) );
  XNOR2X1_RVT U113 ( .A1(n21), .A2(n22), .Y(n40) );
  NAND2X0_RVT U114 ( .A1(addr[26]), .A2(csc_mask[5]), .Y(n21) );
  NAND2X0_RVT U115 ( .A1(csc_mask[5]), .A2(csc[21]), .Y(n22) );
  AO22X1_RVT U116 ( .A1(n141), .A2(n145), .A3(n10), .A4(n11), .Y(n58) );
  INVX1_RVT U117 ( .A(n11), .Y(n141) );
  NAND4X0_RVT U118 ( .A1(n46), .A2(n48), .A3(n49), .A4(n55), .Y(n11) );
  NOR2X0_RVT U119 ( .A1(n47), .A2(lmr_ack), .Y(n10) );
  OAI22X1_RVT U120 ( .A1(n56), .A2(init_ack), .A3(n7), .A4(n8), .Y(n57) );
  NAND3X0_RVT U121 ( .A1(n49), .A2(n55), .A3(n48), .Y(n8) );
  NAND3X0_RVT U122 ( .A1(csc[0]), .A2(init_req_we), .A3(n51), .Y(n7) );
  INVX1_RVT U123 ( .A(rst), .Y(n146) );
  NAND4X0_RVT U124 ( .A1(n41), .A2(n40), .A3(n39), .A4(n38), .Y(n124) );
  NAND2X0_RVT U125 ( .A1(n43), .A2(n42), .Y(n123) );
  NOR2X0_RVT U126 ( .A1(n4), .A2(N100), .Y(n44) );
  OA22X1_RVT U127 ( .A1(N107), .A2(n44), .A3(n44), .A4(n126), .Y(n53) );
  AND2X1_RVT U128 ( .A1(N100), .A2(n4), .Y(n45) );
  OA22X1_RVT U129 ( .A1(n45), .A2(n125), .A3(N99), .A4(n45), .Y(n50) );
  NOR4X0_RVT U130 ( .A1(n124), .A2(n123), .A3(n53), .A4(n50), .Y(N109) );
endmodule


module mc_cs_rf_dummy_2 ( clk, rst, wb_we_i, din, rf_we, addr, csc, tms, poc, 
        csc_mask, cs, wp_err, lmr_req, lmr_ack, init_req, init_ack );
  input [31:0] din;
  input [31:0] addr;
  output [31:0] csc;
  output [31:0] tms;
  input [31:0] poc;
  input [31:0] csc_mask;
  input clk, rst, wb_we_i, rf_we, lmr_ack, init_ack;
  output cs, wp_err, lmr_req, init_req;

  assign init_req = 1'b0;
  assign lmr_req = 1'b0;
  assign wp_err = 1'b0;
  assign cs = 1'b0;
  assign tms[0] = 1'b0;
  assign tms[1] = 1'b0;
  assign tms[2] = 1'b0;
  assign tms[3] = 1'b0;
  assign tms[4] = 1'b0;
  assign tms[5] = 1'b0;
  assign tms[6] = 1'b0;
  assign tms[7] = 1'b0;
  assign tms[8] = 1'b0;
  assign tms[9] = 1'b0;
  assign tms[10] = 1'b0;
  assign tms[11] = 1'b0;
  assign tms[12] = 1'b0;
  assign tms[13] = 1'b0;
  assign tms[14] = 1'b0;
  assign tms[15] = 1'b0;
  assign tms[16] = 1'b0;
  assign tms[17] = 1'b0;
  assign tms[18] = 1'b0;
  assign tms[19] = 1'b0;
  assign tms[20] = 1'b0;
  assign tms[21] = 1'b0;
  assign tms[22] = 1'b0;
  assign tms[23] = 1'b0;
  assign tms[24] = 1'b0;
  assign tms[25] = 1'b0;
  assign tms[26] = 1'b0;
  assign tms[27] = 1'b0;
  assign tms[28] = 1'b0;
  assign tms[29] = 1'b0;
  assign tms[30] = 1'b0;
  assign tms[31] = 1'b0;
  assign csc[0] = 1'b0;
  assign csc[1] = 1'b0;
  assign csc[2] = 1'b0;
  assign csc[3] = 1'b0;
  assign csc[4] = 1'b0;
  assign csc[5] = 1'b0;
  assign csc[6] = 1'b0;
  assign csc[7] = 1'b0;
  assign csc[8] = 1'b0;
  assign csc[9] = 1'b0;
  assign csc[10] = 1'b0;
  assign csc[11] = 1'b0;
  assign csc[12] = 1'b0;
  assign csc[13] = 1'b0;
  assign csc[14] = 1'b0;
  assign csc[15] = 1'b0;
  assign csc[16] = 1'b0;
  assign csc[17] = 1'b0;
  assign csc[18] = 1'b0;
  assign csc[19] = 1'b0;
  assign csc[20] = 1'b0;
  assign csc[21] = 1'b0;
  assign csc[22] = 1'b0;
  assign csc[23] = 1'b0;
  assign csc[24] = 1'b0;
  assign csc[25] = 1'b0;
  assign csc[26] = 1'b0;
  assign csc[27] = 1'b0;
  assign csc[28] = 1'b0;
  assign csc[29] = 1'b0;
  assign csc[30] = 1'b0;
  assign csc[31] = 1'b0;

endmodule


module mc_cs_rf_dummy_3 ( clk, rst, wb_we_i, din, rf_we, addr, csc, tms, poc, 
        csc_mask, cs, wp_err, lmr_req, lmr_ack, init_req, init_ack );
  input [31:0] din;
  input [31:0] addr;
  output [31:0] csc;
  output [31:0] tms;
  input [31:0] poc;
  input [31:0] csc_mask;
  input clk, rst, wb_we_i, rf_we, lmr_ack, init_ack;
  output cs, wp_err, lmr_req, init_req;

  assign init_req = 1'b0;
  assign lmr_req = 1'b0;
  assign wp_err = 1'b0;
  assign cs = 1'b0;
  assign tms[0] = 1'b0;
  assign tms[1] = 1'b0;
  assign tms[2] = 1'b0;
  assign tms[3] = 1'b0;
  assign tms[4] = 1'b0;
  assign tms[5] = 1'b0;
  assign tms[6] = 1'b0;
  assign tms[7] = 1'b0;
  assign tms[8] = 1'b0;
  assign tms[9] = 1'b0;
  assign tms[10] = 1'b0;
  assign tms[11] = 1'b0;
  assign tms[12] = 1'b0;
  assign tms[13] = 1'b0;
  assign tms[14] = 1'b0;
  assign tms[15] = 1'b0;
  assign tms[16] = 1'b0;
  assign tms[17] = 1'b0;
  assign tms[18] = 1'b0;
  assign tms[19] = 1'b0;
  assign tms[20] = 1'b0;
  assign tms[21] = 1'b0;
  assign tms[22] = 1'b0;
  assign tms[23] = 1'b0;
  assign tms[24] = 1'b0;
  assign tms[25] = 1'b0;
  assign tms[26] = 1'b0;
  assign tms[27] = 1'b0;
  assign tms[28] = 1'b0;
  assign tms[29] = 1'b0;
  assign tms[30] = 1'b0;
  assign tms[31] = 1'b0;
  assign csc[0] = 1'b0;
  assign csc[1] = 1'b0;
  assign csc[2] = 1'b0;
  assign csc[3] = 1'b0;
  assign csc[4] = 1'b0;
  assign csc[5] = 1'b0;
  assign csc[6] = 1'b0;
  assign csc[7] = 1'b0;
  assign csc[8] = 1'b0;
  assign csc[9] = 1'b0;
  assign csc[10] = 1'b0;
  assign csc[11] = 1'b0;
  assign csc[12] = 1'b0;
  assign csc[13] = 1'b0;
  assign csc[14] = 1'b0;
  assign csc[15] = 1'b0;
  assign csc[16] = 1'b0;
  assign csc[17] = 1'b0;
  assign csc[18] = 1'b0;
  assign csc[19] = 1'b0;
  assign csc[20] = 1'b0;
  assign csc[21] = 1'b0;
  assign csc[22] = 1'b0;
  assign csc[23] = 1'b0;
  assign csc[24] = 1'b0;
  assign csc[25] = 1'b0;
  assign csc[26] = 1'b0;
  assign csc[27] = 1'b0;
  assign csc[28] = 1'b0;
  assign csc[29] = 1'b0;
  assign csc[30] = 1'b0;
  assign csc[31] = 1'b0;

endmodule


module mc_cs_rf_dummy_4 ( clk, rst, wb_we_i, din, rf_we, addr, csc, tms, poc, 
        csc_mask, cs, wp_err, lmr_req, lmr_ack, init_req, init_ack );
  input [31:0] din;
  input [31:0] addr;
  output [31:0] csc;
  output [31:0] tms;
  input [31:0] poc;
  input [31:0] csc_mask;
  input clk, rst, wb_we_i, rf_we, lmr_ack, init_ack;
  output cs, wp_err, lmr_req, init_req;

  assign init_req = 1'b0;
  assign lmr_req = 1'b0;
  assign wp_err = 1'b0;
  assign cs = 1'b0;
  assign tms[0] = 1'b0;
  assign tms[1] = 1'b0;
  assign tms[2] = 1'b0;
  assign tms[3] = 1'b0;
  assign tms[4] = 1'b0;
  assign tms[5] = 1'b0;
  assign tms[6] = 1'b0;
  assign tms[7] = 1'b0;
  assign tms[8] = 1'b0;
  assign tms[9] = 1'b0;
  assign tms[10] = 1'b0;
  assign tms[11] = 1'b0;
  assign tms[12] = 1'b0;
  assign tms[13] = 1'b0;
  assign tms[14] = 1'b0;
  assign tms[15] = 1'b0;
  assign tms[16] = 1'b0;
  assign tms[17] = 1'b0;
  assign tms[18] = 1'b0;
  assign tms[19] = 1'b0;
  assign tms[20] = 1'b0;
  assign tms[21] = 1'b0;
  assign tms[22] = 1'b0;
  assign tms[23] = 1'b0;
  assign tms[24] = 1'b0;
  assign tms[25] = 1'b0;
  assign tms[26] = 1'b0;
  assign tms[27] = 1'b0;
  assign tms[28] = 1'b0;
  assign tms[29] = 1'b0;
  assign tms[30] = 1'b0;
  assign tms[31] = 1'b0;
  assign csc[0] = 1'b0;
  assign csc[1] = 1'b0;
  assign csc[2] = 1'b0;
  assign csc[3] = 1'b0;
  assign csc[4] = 1'b0;
  assign csc[5] = 1'b0;
  assign csc[6] = 1'b0;
  assign csc[7] = 1'b0;
  assign csc[8] = 1'b0;
  assign csc[9] = 1'b0;
  assign csc[10] = 1'b0;
  assign csc[11] = 1'b0;
  assign csc[12] = 1'b0;
  assign csc[13] = 1'b0;
  assign csc[14] = 1'b0;
  assign csc[15] = 1'b0;
  assign csc[16] = 1'b0;
  assign csc[17] = 1'b0;
  assign csc[18] = 1'b0;
  assign csc[19] = 1'b0;
  assign csc[20] = 1'b0;
  assign csc[21] = 1'b0;
  assign csc[22] = 1'b0;
  assign csc[23] = 1'b0;
  assign csc[24] = 1'b0;
  assign csc[25] = 1'b0;
  assign csc[26] = 1'b0;
  assign csc[27] = 1'b0;
  assign csc[28] = 1'b0;
  assign csc[29] = 1'b0;
  assign csc[30] = 1'b0;
  assign csc[31] = 1'b0;

endmodule


module mc_cs_rf_dummy_5 ( clk, rst, wb_we_i, din, rf_we, addr, csc, tms, poc, 
        csc_mask, cs, wp_err, lmr_req, lmr_ack, init_req, init_ack );
  input [31:0] din;
  input [31:0] addr;
  output [31:0] csc;
  output [31:0] tms;
  input [31:0] poc;
  input [31:0] csc_mask;
  input clk, rst, wb_we_i, rf_we, lmr_ack, init_ack;
  output cs, wp_err, lmr_req, init_req;

  assign init_req = 1'b0;
  assign lmr_req = 1'b0;
  assign wp_err = 1'b0;
  assign cs = 1'b0;
  assign tms[0] = 1'b0;
  assign tms[1] = 1'b0;
  assign tms[2] = 1'b0;
  assign tms[3] = 1'b0;
  assign tms[4] = 1'b0;
  assign tms[5] = 1'b0;
  assign tms[6] = 1'b0;
  assign tms[7] = 1'b0;
  assign tms[8] = 1'b0;
  assign tms[9] = 1'b0;
  assign tms[10] = 1'b0;
  assign tms[11] = 1'b0;
  assign tms[12] = 1'b0;
  assign tms[13] = 1'b0;
  assign tms[14] = 1'b0;
  assign tms[15] = 1'b0;
  assign tms[16] = 1'b0;
  assign tms[17] = 1'b0;
  assign tms[18] = 1'b0;
  assign tms[19] = 1'b0;
  assign tms[20] = 1'b0;
  assign tms[21] = 1'b0;
  assign tms[22] = 1'b0;
  assign tms[23] = 1'b0;
  assign tms[24] = 1'b0;
  assign tms[25] = 1'b0;
  assign tms[26] = 1'b0;
  assign tms[27] = 1'b0;
  assign tms[28] = 1'b0;
  assign tms[29] = 1'b0;
  assign tms[30] = 1'b0;
  assign tms[31] = 1'b0;
  assign csc[0] = 1'b0;
  assign csc[1] = 1'b0;
  assign csc[2] = 1'b0;
  assign csc[3] = 1'b0;
  assign csc[4] = 1'b0;
  assign csc[5] = 1'b0;
  assign csc[6] = 1'b0;
  assign csc[7] = 1'b0;
  assign csc[8] = 1'b0;
  assign csc[9] = 1'b0;
  assign csc[10] = 1'b0;
  assign csc[11] = 1'b0;
  assign csc[12] = 1'b0;
  assign csc[13] = 1'b0;
  assign csc[14] = 1'b0;
  assign csc[15] = 1'b0;
  assign csc[16] = 1'b0;
  assign csc[17] = 1'b0;
  assign csc[18] = 1'b0;
  assign csc[19] = 1'b0;
  assign csc[20] = 1'b0;
  assign csc[21] = 1'b0;
  assign csc[22] = 1'b0;
  assign csc[23] = 1'b0;
  assign csc[24] = 1'b0;
  assign csc[25] = 1'b0;
  assign csc[26] = 1'b0;
  assign csc[27] = 1'b0;
  assign csc[28] = 1'b0;
  assign csc[29] = 1'b0;
  assign csc[30] = 1'b0;
  assign csc[31] = 1'b0;

endmodule


module mc_cs_rf_dummy_6 ( clk, rst, wb_we_i, din, rf_we, addr, csc, tms, poc, 
        csc_mask, cs, wp_err, lmr_req, lmr_ack, init_req, init_ack );
  input [31:0] din;
  input [31:0] addr;
  output [31:0] csc;
  output [31:0] tms;
  input [31:0] poc;
  input [31:0] csc_mask;
  input clk, rst, wb_we_i, rf_we, lmr_ack, init_ack;
  output cs, wp_err, lmr_req, init_req;

  assign init_req = 1'b0;
  assign lmr_req = 1'b0;
  assign wp_err = 1'b0;
  assign cs = 1'b0;
  assign tms[0] = 1'b0;
  assign tms[1] = 1'b0;
  assign tms[2] = 1'b0;
  assign tms[3] = 1'b0;
  assign tms[4] = 1'b0;
  assign tms[5] = 1'b0;
  assign tms[6] = 1'b0;
  assign tms[7] = 1'b0;
  assign tms[8] = 1'b0;
  assign tms[9] = 1'b0;
  assign tms[10] = 1'b0;
  assign tms[11] = 1'b0;
  assign tms[12] = 1'b0;
  assign tms[13] = 1'b0;
  assign tms[14] = 1'b0;
  assign tms[15] = 1'b0;
  assign tms[16] = 1'b0;
  assign tms[17] = 1'b0;
  assign tms[18] = 1'b0;
  assign tms[19] = 1'b0;
  assign tms[20] = 1'b0;
  assign tms[21] = 1'b0;
  assign tms[22] = 1'b0;
  assign tms[23] = 1'b0;
  assign tms[24] = 1'b0;
  assign tms[25] = 1'b0;
  assign tms[26] = 1'b0;
  assign tms[27] = 1'b0;
  assign tms[28] = 1'b0;
  assign tms[29] = 1'b0;
  assign tms[30] = 1'b0;
  assign tms[31] = 1'b0;
  assign csc[0] = 1'b0;
  assign csc[1] = 1'b0;
  assign csc[2] = 1'b0;
  assign csc[3] = 1'b0;
  assign csc[4] = 1'b0;
  assign csc[5] = 1'b0;
  assign csc[6] = 1'b0;
  assign csc[7] = 1'b0;
  assign csc[8] = 1'b0;
  assign csc[9] = 1'b0;
  assign csc[10] = 1'b0;
  assign csc[11] = 1'b0;
  assign csc[12] = 1'b0;
  assign csc[13] = 1'b0;
  assign csc[14] = 1'b0;
  assign csc[15] = 1'b0;
  assign csc[16] = 1'b0;
  assign csc[17] = 1'b0;
  assign csc[18] = 1'b0;
  assign csc[19] = 1'b0;
  assign csc[20] = 1'b0;
  assign csc[21] = 1'b0;
  assign csc[22] = 1'b0;
  assign csc[23] = 1'b0;
  assign csc[24] = 1'b0;
  assign csc[25] = 1'b0;
  assign csc[26] = 1'b0;
  assign csc[27] = 1'b0;
  assign csc[28] = 1'b0;
  assign csc[29] = 1'b0;
  assign csc[30] = 1'b0;
  assign csc[31] = 1'b0;

endmodule


module mc_cs_rf_dummy_7 ( clk, rst, wb_we_i, din, rf_we, addr, csc, tms, poc, 
        csc_mask, cs, wp_err, lmr_req, lmr_ack, init_req, init_ack );
  input [31:0] din;
  input [31:0] addr;
  output [31:0] csc;
  output [31:0] tms;
  input [31:0] poc;
  input [31:0] csc_mask;
  input clk, rst, wb_we_i, rf_we, lmr_ack, init_ack;
  output cs, wp_err, lmr_req, init_req;

  assign init_req = 1'b0;
  assign lmr_req = 1'b0;
  assign wp_err = 1'b0;
  assign cs = 1'b0;
  assign tms[0] = 1'b0;
  assign tms[1] = 1'b0;
  assign tms[2] = 1'b0;
  assign tms[3] = 1'b0;
  assign tms[4] = 1'b0;
  assign tms[5] = 1'b0;
  assign tms[6] = 1'b0;
  assign tms[7] = 1'b0;
  assign tms[8] = 1'b0;
  assign tms[9] = 1'b0;
  assign tms[10] = 1'b0;
  assign tms[11] = 1'b0;
  assign tms[12] = 1'b0;
  assign tms[13] = 1'b0;
  assign tms[14] = 1'b0;
  assign tms[15] = 1'b0;
  assign tms[16] = 1'b0;
  assign tms[17] = 1'b0;
  assign tms[18] = 1'b0;
  assign tms[19] = 1'b0;
  assign tms[20] = 1'b0;
  assign tms[21] = 1'b0;
  assign tms[22] = 1'b0;
  assign tms[23] = 1'b0;
  assign tms[24] = 1'b0;
  assign tms[25] = 1'b0;
  assign tms[26] = 1'b0;
  assign tms[27] = 1'b0;
  assign tms[28] = 1'b0;
  assign tms[29] = 1'b0;
  assign tms[30] = 1'b0;
  assign tms[31] = 1'b0;
  assign csc[0] = 1'b0;
  assign csc[1] = 1'b0;
  assign csc[2] = 1'b0;
  assign csc[3] = 1'b0;
  assign csc[4] = 1'b0;
  assign csc[5] = 1'b0;
  assign csc[6] = 1'b0;
  assign csc[7] = 1'b0;
  assign csc[8] = 1'b0;
  assign csc[9] = 1'b0;
  assign csc[10] = 1'b0;
  assign csc[11] = 1'b0;
  assign csc[12] = 1'b0;
  assign csc[13] = 1'b0;
  assign csc[14] = 1'b0;
  assign csc[15] = 1'b0;
  assign csc[16] = 1'b0;
  assign csc[17] = 1'b0;
  assign csc[18] = 1'b0;
  assign csc[19] = 1'b0;
  assign csc[20] = 1'b0;
  assign csc[21] = 1'b0;
  assign csc[22] = 1'b0;
  assign csc[23] = 1'b0;
  assign csc[24] = 1'b0;
  assign csc[25] = 1'b0;
  assign csc[26] = 1'b0;
  assign csc[27] = 1'b0;
  assign csc[28] = 1'b0;
  assign csc[29] = 1'b0;
  assign csc[30] = 1'b0;
  assign csc[31] = 1'b0;

endmodule


module mc_rf ( clk, rst, wb_data_i, rf_dout, wb_addr_i, wb_we_i, wb_cyc_i, 
        wb_stb_i, wb_ack_o, wp_err, csc, tms, poc, sp_csc, sp_tms, cs, 
        mc_data_i, mc_sts, mc_vpen, fs, cs_le_d, cs_le, cs_need_rfr, ref_int, 
        rfr_ps_val, init_req, init_ack, lmr_req, lmr_ack, spec_req_cs );
  input [31:0] wb_data_i;
  output [31:0] rf_dout;
  input [31:0] wb_addr_i;
  output [31:0] csc;
  output [31:0] tms;
  output [31:0] poc;
  output [31:0] sp_csc;
  output [31:0] sp_tms;
  output [7:0] cs;
  input [31:0] mc_data_i;
  output [7:0] cs_need_rfr;
  output [2:0] ref_int;
  output [7:0] rfr_ps_val;
  output [7:0] spec_req_cs;
  input clk, rst, wb_we_i, wb_cyc_i, wb_stb_i, mc_sts, cs_le_d, cs_le,
         init_ack, lmr_ack;
  output wb_ack_o, wp_err, mc_vpen, fs, init_req, lmr_req;
  wire   rf_we, rst_r1, rst_r2, N45, cs1, cs0, wp_err1, wp_err0, N268,
         init_req0, init_req1, lmr_req0, lmr_req1, lmr_ack0, lmr_ack1,
         init_ack0, init_ack1, n1, n2, n27, n29, n31, n38, n41, n44, n46, n47,
         n64, n69, n72, n73, n90, n95, n97, n98, n115, n120, n122, n123, n140,
         n145, n147, n148, n165, n170, n172, n173, n190, n195, n197, n198,
         n220, n223, n224, n246, n249, n250, n267, n272, n274, n275, n297,
         n300, n301, n323, n326, n327, n349, n352, n353, n375, n378, n379,
         n401, n404, n405, n427, n430, n431, n452, n455, n456, n477, n480,
         n481, n502, n505, n506, n527, n530, n531, n548, n553, n555, n556,
         n577, n580, n581, n602, n605, n606, n627, n630, n631, n652, n655,
         n656, n677, n680, n681, n702, n705, n706, n727, n730, n731, n752,
         n755, n756, n777, n780, n781, n798, n803, n806, n807, n816, n818,
         n819, n829, n836, n838, n839, n840, n849, n850, n851, n852, n853,
         n856, n857, n860, n861, n864, n865, n868, n869, n872, n873, n876,
         n877, n880, n881, n884, n885, n888, n889, n892, n893, n896, n897,
         n900, n901, n904, n905, n908, n909, n912, n913, n916, n917, n920,
         n921, n924, n925, n928, n929, n932, n933, n936, n937, n940, n941,
         n944, n945, n948, n949, n952, n953, n956, n957, n960, n961, n964,
         n965, n968, n969, n972, n973, n981, n983, n984, n993, n994, n996,
         n997, n1000, n1001, n1004, n1005, n1008, n1009, n1012, n1013, n1016,
         n1017, n1020, n1021, n1024, n1025, n1028, n1029, n1032, n1033, n1036,
         n1037, n1040, n1041, n1044, n1045, n1048, n1049, n1052, n1053, n1056,
         n1057, n1060, n1061, n1064, n1065, n1068, n1069, n1072, n1073, n1076,
         n1077, n1080, n1081, n1084, n1085, n1088, n1089, n1092, n1093, n1096,
         n1097, n1100, n1101, n1104, n1105, n1108, n1109, n1112, n1113, n1116,
         n1117, n1129, n1130, n1139, n1140, n1141, n1142, n1145, n1146, n1149,
         n1150, n1153, n1154, n1157, n1158, n1161, n1162, n1165, n1166, n1169,
         n1170, n1173, n1174, n1177, n1178, n1181, n1182, n1185, n1186, n1189,
         n1190, n1193, n1194, n1197, n1198, n1201, n1202, n1205, n1206, n1209,
         n1210, n1213, n1214, n1217, n1218, n1221, n1222, n1225, n1226, n1229,
         n1230, n1233, n1234, n1237, n1238, n1241, n1242, n1245, n1249, n1250,
         n1253, n1254, n1257, n1258, n1261, n1262, n1270, n1272, n1273, n1283,
         n1284, n1285, n1288, n1289, n1292, n1293, n1296, n1297, n1300, n1301,
         n1304, n1305, n1308, n1309, n1312, n1313, n1316, n1317, n1320, n1321,
         n1324, n1325, n1328, n1329, n1332, n1333, n1336, n1337, n1340, n1341,
         n1344, n1345, n1348, n1349, n1352, n1353, n1356, n1357, n1360, n1361,
         n1364, n1365, n1368, n1369, n1372, n1373, n1376, n1377, n1380, n1381,
         n1384, n1385, n1388, n1389, n1392, n1393, n1396, n1397, n1400, n1401,
         n1404, n1405, n1420, n1445, n1448, n1470, n1473, n1481, n1486, n1487,
         n1488, n1490, n1493, n1495, n1497, n1498, n1499, n1500, n1501, n1502,
         n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512,
         n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522,
         n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532,
         n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542,
         n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552,
         n1553, n1554, n1555, n1556, n1557, n1558, n1562, n1563, n1564, n1565,
         n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575,
         n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585,
         n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595,
         n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605,
         n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615,
         n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625,
         n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635,
         n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645,
         n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655,
         n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665,
         n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675,
         n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685,
         n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695,
         n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705,
         n1706, n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715,
         n1716, n1717, n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725,
         n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735,
         n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745,
         n1746, n1747, n1748, n1749, n1750, n1752, n1753, n1754, n1755, n1756,
         n1757, n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766,
         n1767, n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776,
         n1777, n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786,
         n1787, n1788, n1795, n1796, n1804, n1806, n1807, n1808, n1809, n1810,
         n1811, n1812, n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820,
         n1821, n1822, n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830,
         n1831, n1832, n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840,
         n1841, n1842, n1843, n1844, n1845, n1846, n1847, n1848, n1849, n1850,
         n1851, n1852, n1853, n1854, n1855, n1856, n1857, n1858, n1859, n1860,
         n1861, n1862, n1863, n1864, n1865, n1866, n1872, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n25, n26, n28, n30, n32, n33, n34, n35, n36, n37, n39, n40,
         n42, n43, n45, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n65, n66, n67, n68, n70, n71, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n91,
         n92, n93, n94, n96, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, n118,
         n119, n121, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n141, n142, n143, n144,
         n146, n149, n150, n151, n152, n153, n154, n155, n156, n158, n159,
         n160, n161, n162, n163, n164, n166, n167, n168, n169, n171, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n191, n192, n193, n194, n196, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n221, n222, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n247, n248,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n268, n269, n270, n271, n273, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n298, n299,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n324,
         n325, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n350, n351, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366;
  wire   [10:0] csc_mask;
  wire   [31:0] csc0;
  wire   [31:0] tms0;
  wire   [31:0] csc1;
  wire   [31:0] tms1;
  assign cs[7] = 1'b0;
  assign cs[6] = 1'b0;
  assign cs[5] = 1'b0;
  assign cs[4] = 1'b0;
  assign cs[3] = 1'b0;
  assign cs[2] = 1'b0;
  assign spec_req_cs[7] = 1'b0;
  assign spec_req_cs[6] = 1'b0;
  assign spec_req_cs[5] = 1'b0;
  assign spec_req_cs[4] = 1'b0;
  assign spec_req_cs[3] = 1'b0;
  assign spec_req_cs[2] = 1'b0;
  assign cs_need_rfr[2] = 1'b0;
  assign cs_need_rfr[3] = 1'b0;
  assign cs_need_rfr[4] = 1'b0;
  assign cs_need_rfr[5] = 1'b0;
  assign cs_need_rfr[6] = 1'b0;
  assign cs_need_rfr[7] = 1'b0;

  mc_cs_rf_0 u0 ( .clk(clk), .rst(rst), .wb_we_i(wb_we_i), .din(wb_data_i), 
        .rf_we(rf_we), .addr(wb_addr_i), .csc(csc0), .tms(tms0), .poc(poc), 
        .csc_mask({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        csc_mask}), .cs(cs0), .wp_err(wp_err0), .lmr_req(lmr_req0), .lmr_ack(
        lmr_ack0), .init_req(init_req0), .init_ack(init_ack0) );
  mc_cs_rf_1 u1 ( .clk(clk), .rst(rst), .wb_we_i(wb_we_i), .din(wb_data_i), 
        .rf_we(rf_we), .addr(wb_addr_i), .csc(csc1), .tms(tms1), .poc(poc), 
        .csc_mask({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        csc_mask}), .cs(cs1), .wp_err(wp_err1), .lmr_req(lmr_req1), .lmr_ack(
        lmr_ack1), .init_req(init_req1), .init_ack(init_ack1) );
  mc_cs_rf_dummy_2 u2 ( .clk(clk), .rst(rst), .wb_we_i(wb_we_i), .din(
        wb_data_i), .rf_we(rf_we), .addr(wb_addr_i), .poc(poc), .csc_mask({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, csc_mask}), 
        .lmr_ack(1'b0), .init_ack(1'b0) );
  mc_cs_rf_dummy_3 u3 ( .clk(clk), .rst(rst), .wb_we_i(wb_we_i), .din(
        wb_data_i), .rf_we(rf_we), .addr(wb_addr_i), .poc(poc), .csc_mask({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, csc_mask}), 
        .lmr_ack(1'b0), .init_ack(1'b0) );
  mc_cs_rf_dummy_4 u4 ( .clk(clk), .rst(rst), .wb_we_i(wb_we_i), .din(
        wb_data_i), .rf_we(rf_we), .addr(wb_addr_i), .poc(poc), .csc_mask({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, csc_mask}), 
        .lmr_ack(1'b0), .init_ack(1'b0) );
  mc_cs_rf_dummy_5 u5 ( .clk(clk), .rst(rst), .wb_we_i(wb_we_i), .din(
        wb_data_i), .rf_we(rf_we), .addr(wb_addr_i), .poc(poc), .csc_mask({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, csc_mask}), 
        .lmr_ack(1'b0), .init_ack(1'b0) );
  mc_cs_rf_dummy_6 u6 ( .clk(clk), .rst(rst), .wb_we_i(wb_we_i), .din(
        wb_data_i), .rf_we(rf_we), .addr(wb_addr_i), .poc(poc), .csc_mask({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, csc_mask}), 
        .lmr_ack(1'b0), .init_ack(1'b0) );
  mc_cs_rf_dummy_7 u7 ( .clk(clk), .rst(rst), .wb_we_i(wb_we_i), .din(
        wb_data_i), .rf_we(rf_we), .addr(wb_addr_i), .poc(poc), .csc_mask({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, csc_mask}), 
        .lmr_ack(1'b0), .init_ack(1'b0) );
  SDFFARX1_RVT \csc_reg[4]  ( .D(1'b1), .SI(n19), .SE(n1245), .CLK(clk), 
        .RSTB(n361), .Q(csc[4]), .QN(n1533) );
  DFFX1_RVT \poc_reg[31]  ( .D(n1837), .CLK(clk), .Q(poc[31]), .QN(n336) );
  DFFX1_RVT \poc_reg[30]  ( .D(n1836), .CLK(clk), .Q(poc[30]), .QN(n337) );
  DFFX1_RVT \poc_reg[29]  ( .D(n1835), .CLK(clk), .Q(poc[29]), .QN(n338) );
  DFFX1_RVT \poc_reg[28]  ( .D(n1834), .CLK(clk), .Q(poc[28]), .QN(n339) );
  DFFX1_RVT \poc_reg[27]  ( .D(n1833), .CLK(clk), .Q(poc[27]), .QN(n340) );
  DFFX1_RVT \poc_reg[26]  ( .D(n1832), .CLK(clk), .Q(poc[26]), .QN(n341) );
  DFFX1_RVT \poc_reg[25]  ( .D(n1831), .CLK(clk), .Q(poc[25]), .QN(n342) );
  DFFX1_RVT \poc_reg[24]  ( .D(n1830), .CLK(clk), .Q(poc[24]), .QN(n343) );
  DFFX1_RVT \poc_reg[23]  ( .D(n1829), .CLK(clk), .Q(poc[23]), .QN(n344) );
  DFFX1_RVT \poc_reg[22]  ( .D(n1828), .CLK(clk), .Q(poc[22]), .QN(n345) );
  DFFX1_RVT \poc_reg[21]  ( .D(n1827), .CLK(clk), .Q(poc[21]), .QN(n346) );
  DFFX1_RVT \poc_reg[20]  ( .D(n1826), .CLK(clk), .Q(poc[20]), .QN(n347) );
  DFFX1_RVT \poc_reg[19]  ( .D(n1825), .CLK(clk), .Q(poc[19]), .QN(n348) );
  DFFX1_RVT \poc_reg[18]  ( .D(n1824), .CLK(clk), .Q(poc[18]), .QN(n350) );
  DFFX1_RVT \poc_reg[17]  ( .D(n1823), .CLK(clk), .Q(poc[17]), .QN(n351) );
  DFFX1_RVT \poc_reg[16]  ( .D(n1822), .CLK(clk), .Q(poc[16]), .QN(n354) );
  DFFX1_RVT \poc_reg[15]  ( .D(n1821), .CLK(clk), .Q(poc[15]), .QN(n355) );
  DFFX1_RVT \poc_reg[14]  ( .D(n1820), .CLK(clk), .Q(poc[14]), .QN(n356) );
  DFFX1_RVT \poc_reg[13]  ( .D(n1819), .CLK(clk), .Q(poc[13]), .QN(n357) );
  DFFX1_RVT \poc_reg[12]  ( .D(n1818), .CLK(clk), .Q(poc[12]), .QN(n358) );
  DFFX1_RVT \poc_reg[11]  ( .D(n1817), .CLK(clk), .Q(poc[11]), .QN(n359) );
  DFFX1_RVT \poc_reg[10]  ( .D(n1816), .CLK(clk), .Q(poc[10]), .QN(n15) );
  DFFX1_RVT \poc_reg[9]  ( .D(n1815), .CLK(clk), .Q(poc[9]), .QN(n14) );
  DFFX1_RVT \poc_reg[8]  ( .D(n1814), .CLK(clk), .Q(poc[8]), .QN(n13) );
  DFFX1_RVT \poc_reg[7]  ( .D(n1813), .CLK(clk), .Q(poc[7]), .QN(n9) );
  DFFX1_RVT \poc_reg[6]  ( .D(n1812), .CLK(clk), .Q(poc[6]), .QN(n12) );
  DFFX1_RVT \poc_reg[5]  ( .D(n1811), .CLK(clk), .Q(poc[5]), .QN(n11) );
  DFFX1_RVT \poc_reg[4]  ( .D(n1810), .CLK(clk), .Q(poc[4]), .QN(n10) );
  DFFARX1_RVT wp_err_reg ( .D(n1872), .CLK(clk), .RSTB(n361), .Q(wp_err), .QN(
        n1504) );
  DFFASX1_RVT \tms_reg[6]  ( .D(n1781), .CLK(clk), .SETB(n114), .Q(tms[6]), 
        .QN(n1570) );
  DFFASX1_RVT \tms_reg[7]  ( .D(n1780), .CLK(clk), .SETB(n113), .Q(tms[7]), 
        .QN(n1571) );
  DFFASX1_RVT \tms_reg[10]  ( .D(n1777), .CLK(clk), .SETB(n113), .Q(tms[10]), 
        .QN(n1574) );
  DFFASX1_RVT \tms_reg[14]  ( .D(n1773), .CLK(clk), .SETB(n113), .Q(tms[14]), 
        .QN(n1578) );
  DFFASX1_RVT \tms_reg[25]  ( .D(n1762), .CLK(clk), .SETB(n112), .Q(tms[25]), 
        .QN(n1589) );
  DFFARX1_RVT \sp_csc_reg[0]  ( .D(n1660), .CLK(clk), .RSTB(n128), .Q(
        sp_csc[0]), .QN(n1659) );
  DFFX1_RVT \csr_r_reg[0]  ( .D(mc_sts), .CLK(clk), .QN(n1505) );
  DFFARX1_RVT \csr_r_reg[2]  ( .D(n1850), .CLK(clk), .RSTB(n361), .Q(fs), .QN(
        n1553) );
  DFFARX1_RVT \csr_r_reg[1]  ( .D(n1849), .CLK(clk), .RSTB(n361), .Q(mc_vpen), 
        .QN(n1552) );
  DFFX1_RVT init_ack_r_reg ( .D(init_ack), .CLK(clk), .QN(n1500) );
  DFFX1_RVT lmr_ack_r_reg ( .D(lmr_ack), .CLK(clk), .QN(n1501) );
  DFFASX1_RVT \tms_reg[30]  ( .D(n1757), .CLK(clk), .SETB(n113), .Q(tms[30]), 
        .QN(n1594) );
  DFFX1_RVT \poc_reg[1]  ( .D(n1807), .CLK(clk), .Q(poc[1]), .QN(n8) );
  DFFX1_RVT \poc_reg[0]  ( .D(n1806), .CLK(clk), .Q(poc[0]), .QN(n7) );
  DFFASX1_RVT \tms_reg[4]  ( .D(n1783), .CLK(clk), .SETB(n114), .Q(tms[4]), 
        .QN(n1568) );
  DFFASX1_RVT \tms_reg[5]  ( .D(n1782), .CLK(clk), .SETB(n114), .Q(tms[5]), 
        .QN(n1569) );
  DFFASX1_RVT \tms_reg[12]  ( .D(n1775), .CLK(clk), .SETB(n113), .Q(tms[12]), 
        .QN(n1576) );
  DFFASX1_RVT \tms_reg[15]  ( .D(n1772), .CLK(clk), .SETB(n113), .Q(tms[15]), 
        .QN(n1579) );
  DFFASX1_RVT \tms_reg[24]  ( .D(n1763), .CLK(clk), .SETB(n112), .Q(tms[24]), 
        .QN(n1588) );
  DFFX1_RVT \poc_reg[2]  ( .D(n1808), .CLK(clk), .Q(poc[2]), .QN(n6) );
  DFFX1_RVT \poc_reg[3]  ( .D(n1809), .CLK(clk), .Q(poc[3]), .QN(n5) );
  DFFX1_RVT \wb_addr_r_reg[6]  ( .D(wb_addr_i[6]), .CLK(clk), .QN(n312) );
  DFFX1_RVT \wb_addr_r_reg[5]  ( .D(wb_addr_i[5]), .CLK(clk), .QN(n313) );
  DFFX1_RVT \wb_addr_r_reg[2]  ( .D(wb_addr_i[2]), .CLK(clk), .Q(n1562), .QN(
        n315) );
  DFFARX1_RVT \sp_csc_reg[2]  ( .D(n1662), .CLK(clk), .RSTB(n128), .Q(
        sp_csc[2]), .QN(n1657) );
  DFFARX1_RVT \sp_csc_reg[1]  ( .D(n1661), .CLK(clk), .RSTB(n128), .Q(
        sp_csc[1]), .QN(n1658) );
  DFFASX1_RVT rst_r3_reg ( .D(rst_r2), .CLK(clk), .SETB(n361), .Q(n1540), .QN(
        n4) );
  DFFASX1_RVT rst_r1_reg ( .D(1'b0), .CLK(clk), .SETB(n121), .Q(rst_r1) );
  DFFASX1_RVT rst_r2_reg ( .D(rst_r1), .CLK(clk), .SETB(n118), .Q(rst_r2) );
  DFFARX1_RVT init_req_reg ( .D(n17), .CLK(clk), .RSTB(n128), .Q(init_req), 
        .QN(n1538) );
  DFFARX1_RVT lmr_req_reg ( .D(n16), .CLK(clk), .RSTB(n128), .Q(lmr_req), .QN(
        n1502) );
  DFFARX1_RVT rf_we_reg ( .D(n3), .CLK(clk), .RSTB(n121), .Q(rf_we), .QN(n316)
         );
  DFFARX1_RVT \csr_r_reg[6]  ( .D(n1854), .CLK(clk), .RSTB(n119), .Q(n332), 
        .QN(n1557) );
  DFFARX1_RVT \csr_r_reg[3]  ( .D(n1851), .CLK(clk), .RSTB(n119), .Q(n335), 
        .QN(n1554) );
  DFFARX1_RVT \csr_r_reg[7]  ( .D(n1855), .CLK(clk), .RSTB(n119), .Q(n331), 
        .QN(n1558) );
  DFFARX1_RVT \csr_r_reg[5]  ( .D(n1853), .CLK(clk), .RSTB(n119), .Q(n333), 
        .QN(n1556) );
  DFFARX1_RVT \csr_r_reg[4]  ( .D(n1852), .CLK(clk), .RSTB(n119), .Q(n334), 
        .QN(n1555) );
  DFFARX1_RVT sreq_cs_le_reg ( .D(N268), .CLK(clk), .RSTB(n128), .Q(n1539), 
        .QN(n360) );
  DFFARX1_RVT \spec_req_cs_reg[0]  ( .D(n1796), .CLK(clk), .RSTB(n361), .Q(
        spec_req_cs[0]) );
  DFFARX1_RVT \csr_r_reg[9]  ( .D(n1857), .CLK(clk), .RSTB(n119), .Q(
        ref_int[1]), .QN(n329) );
  DFFARX1_RVT \csr_r2_reg[6]  ( .D(n1865), .CLK(clk), .RSTB(n121), .Q(
        rfr_ps_val[6]), .QN(n318) );
  DFFARX1_RVT \csr_r2_reg[5]  ( .D(n1864), .CLK(clk), .RSTB(n121), .Q(
        rfr_ps_val[5]), .QN(n319) );
  DFFARX1_RVT \csr_r2_reg[2]  ( .D(n1861), .CLK(clk), .RSTB(n119), .Q(
        rfr_ps_val[2]), .QN(n322) );
  DFFARX1_RVT \csr_r2_reg[1]  ( .D(n1860), .CLK(clk), .RSTB(n119), .Q(
        rfr_ps_val[1]), .QN(n324) );
  DFFARX1_RVT \csr_r2_reg[0]  ( .D(n1859), .CLK(clk), .RSTB(n119), .Q(
        rfr_ps_val[0]), .QN(n325) );
  DFFARX1_RVT \csr_r2_reg[3]  ( .D(n1862), .CLK(clk), .RSTB(n119), .Q(
        rfr_ps_val[3]), .QN(n321) );
  DFFARX1_RVT \csr_r_reg[10]  ( .D(n1858), .CLK(clk), .RSTB(n119), .Q(
        ref_int[2]), .QN(n328) );
  DFFARX1_RVT \csr_r_reg[8]  ( .D(n1856), .CLK(clk), .RSTB(n119), .Q(
        ref_int[0]), .QN(n330) );
  DFFARX1_RVT \csr_r2_reg[7]  ( .D(n1866), .CLK(clk), .RSTB(n121), .Q(
        rfr_ps_val[7]), .QN(n317) );
  DFFARX1_RVT \csr_r2_reg[4]  ( .D(n1863), .CLK(clk), .RSTB(n119), .Q(
        rfr_ps_val[4]), .QN(n320) );
  DFFARX1_RVT \cs_reg[1]  ( .D(n1788), .CLK(clk), .RSTB(n361), .Q(cs[1]) );
  DFFARX1_RVT \cs_reg[0]  ( .D(n1795), .CLK(clk), .RSTB(n361), .Q(cs[0]) );
  DFFASX1_RVT \csc_mask_r_reg[10]  ( .D(n1848), .CLK(clk), .SETB(n118), .Q(
        csc_mask[10]), .QN(n1551) );
  DFFASX1_RVT \csc_mask_r_reg[9]  ( .D(n1847), .CLK(clk), .SETB(n128), .Q(
        csc_mask[9]), .QN(n1550) );
  DFFASX1_RVT \csc_mask_r_reg[8]  ( .D(n1846), .CLK(clk), .SETB(n118), .Q(
        csc_mask[8]), .QN(n1549) );
  DFFASX1_RVT \csc_mask_r_reg[7]  ( .D(n1845), .CLK(clk), .SETB(n361), .Q(
        csc_mask[7]), .QN(n1548) );
  DFFASX1_RVT \csc_mask_r_reg[6]  ( .D(n1844), .CLK(clk), .SETB(n118), .Q(
        csc_mask[6]), .QN(n1547) );
  DFFASX1_RVT \csc_mask_r_reg[5]  ( .D(n1843), .CLK(clk), .SETB(n128), .Q(
        csc_mask[5]), .QN(n1546) );
  DFFASX1_RVT \csc_mask_r_reg[4]  ( .D(n1842), .CLK(clk), .SETB(n118), .Q(
        csc_mask[4]), .QN(n1545) );
  DFFASX1_RVT \csc_mask_r_reg[3]  ( .D(n1841), .CLK(clk), .SETB(n118), .Q(
        csc_mask[3]), .QN(n1544) );
  DFFASX1_RVT \csc_mask_r_reg[2]  ( .D(n1840), .CLK(clk), .SETB(n118), .Q(
        csc_mask[2]), .QN(n1543) );
  DFFASX1_RVT \csc_mask_r_reg[1]  ( .D(n1839), .CLK(clk), .SETB(n128), .Q(
        csc_mask[1]), .QN(n1542) );
  DFFASX1_RVT \csc_mask_r_reg[0]  ( .D(n1838), .CLK(clk), .SETB(n118), .Q(
        csc_mask[0]), .QN(n1541) );
  DFFASX1_RVT \tms_reg[8]  ( .D(n1779), .CLK(clk), .SETB(n113), .Q(tms[8]), 
        .QN(n1572) );
  DFFASX1_RVT \tms_reg[22]  ( .D(n1765), .CLK(clk), .SETB(n112), .Q(tms[22]), 
        .QN(n1586) );
  DFFASX1_RVT \tms_reg[9]  ( .D(n1778), .CLK(clk), .SETB(n113), .Q(tms[9]), 
        .QN(n1573) );
  DFFASX1_RVT \sp_tms_reg[10]  ( .D(n1702), .CLK(clk), .SETB(n117), .Q(
        sp_tms[10]), .QN(n1617) );
  DFFASX1_RVT \sp_tms_reg[25]  ( .D(n1717), .CLK(clk), .SETB(n116), .Q(
        sp_tms[25]), .QN(n1602) );
  DFFASX1_RVT \sp_tms_reg[21]  ( .D(n1713), .CLK(clk), .SETB(n116), .Q(
        sp_tms[21]), .QN(n1606) );
  DFFASX1_RVT \sp_tms_reg[20]  ( .D(n1712), .CLK(clk), .SETB(n116), .Q(
        sp_tms[20]), .QN(n1607) );
  DFFASX1_RVT \sp_tms_reg[0]  ( .D(n1692), .CLK(clk), .SETB(n118), .Q(
        sp_tms[0]), .QN(n1627) );
  DFFASX1_RVT \sp_tms_reg[23]  ( .D(n1715), .CLK(clk), .SETB(n116), .Q(
        sp_tms[23]), .QN(n1604) );
  DFFASX1_RVT \sp_tms_reg[9]  ( .D(n1701), .CLK(clk), .SETB(n117), .Q(
        sp_tms[9]), .QN(n1618) );
  DFFASX1_RVT \sp_tms_reg[27]  ( .D(n1719), .CLK(clk), .SETB(n114), .Q(
        sp_tms[27]), .QN(n1600) );
  DFFASX1_RVT \sp_tms_reg[5]  ( .D(n1697), .CLK(clk), .SETB(n117), .Q(
        sp_tms[5]), .QN(n1622) );
  DFFASX1_RVT \sp_tms_reg[1]  ( .D(n1693), .CLK(clk), .SETB(n118), .Q(
        sp_tms[1]), .QN(n1626) );
  DFFASX1_RVT \sp_tms_reg[12]  ( .D(n1704), .CLK(clk), .SETB(n117), .Q(
        sp_tms[12]), .QN(n1615) );
  DFFASX1_RVT \sp_tms_reg[7]  ( .D(n1699), .CLK(clk), .SETB(n117), .Q(
        sp_tms[7]), .QN(n1620) );
  DFFASX1_RVT \sp_tms_reg[11]  ( .D(n1703), .CLK(clk), .SETB(n117), .Q(
        sp_tms[11]), .QN(n1616) );
  DFFASX1_RVT \sp_tms_reg[8]  ( .D(n1700), .CLK(clk), .SETB(n117), .Q(
        sp_tms[8]), .QN(n1619) );
  DFFASX1_RVT \sp_tms_reg[24]  ( .D(n1716), .CLK(clk), .SETB(n116), .Q(
        sp_tms[24]), .QN(n1603) );
  DFFASX1_RVT \sp_tms_reg[22]  ( .D(n1714), .CLK(clk), .SETB(n116), .Q(
        sp_tms[22]), .QN(n1605) );
  DFFASX1_RVT \sp_tms_reg[6]  ( .D(n1698), .CLK(clk), .SETB(n117), .Q(
        sp_tms[6]), .QN(n1621) );
  DFFASX1_RVT \sp_tms_reg[28]  ( .D(n1720), .CLK(clk), .SETB(n114), .Q(
        sp_tms[28]), .QN(n1599) );
  DFFASX1_RVT \sp_tms_reg[31]  ( .D(n1723), .CLK(clk), .SETB(n114), .Q(
        sp_tms[31]), .QN(n1596) );
  DFFASX1_RVT \sp_tms_reg[29]  ( .D(n1721), .CLK(clk), .SETB(n114), .Q(
        sp_tms[29]), .QN(n1598) );
  DFFASX1_RVT \sp_tms_reg[15]  ( .D(n1707), .CLK(clk), .SETB(n116), .Q(
        sp_tms[15]), .QN(n1612) );
  DFFASX1_RVT \sp_tms_reg[3]  ( .D(n1695), .CLK(clk), .SETB(n118), .Q(
        sp_tms[3]), .QN(n1624) );
  DFFASX1_RVT \sp_tms_reg[19]  ( .D(n1711), .CLK(clk), .SETB(n116), .Q(
        sp_tms[19]), .QN(n1608) );
  DFFASX1_RVT \sp_tms_reg[18]  ( .D(n1710), .CLK(clk), .SETB(n116), .Q(
        sp_tms[18]), .QN(n1609) );
  DFFASX1_RVT \sp_tms_reg[16]  ( .D(n1708), .CLK(clk), .SETB(n116), .Q(
        sp_tms[16]), .QN(n1611) );
  DFFASX1_RVT \sp_tms_reg[2]  ( .D(n1694), .CLK(clk), .SETB(n118), .Q(
        sp_tms[2]), .QN(n1625) );
  DFFASX1_RVT \sp_tms_reg[26]  ( .D(n1718), .CLK(clk), .SETB(n116), .Q(
        sp_tms[26]), .QN(n1601) );
  DFFASX1_RVT \sp_tms_reg[13]  ( .D(n1705), .CLK(clk), .SETB(n117), .Q(
        sp_tms[13]), .QN(n1614) );
  DFFASX1_RVT \sp_tms_reg[30]  ( .D(n1722), .CLK(clk), .SETB(n114), .Q(
        sp_tms[30]), .QN(n1597) );
  DFFASX1_RVT \sp_tms_reg[17]  ( .D(n1709), .CLK(clk), .SETB(n116), .Q(
        sp_tms[17]), .QN(n1610) );
  DFFASX1_RVT \sp_tms_reg[14]  ( .D(n1706), .CLK(clk), .SETB(n117), .Q(
        sp_tms[14]), .QN(n1613) );
  DFFASX1_RVT \sp_tms_reg[4]  ( .D(n1696), .CLK(clk), .SETB(n117), .Q(
        sp_tms[4]), .QN(n1623) );
  DFFASX1_RVT \tms_reg[23]  ( .D(n1764), .CLK(clk), .SETB(n112), .Q(tms[23]), 
        .QN(n1587) );
  DFFASX1_RVT \tms_reg[21]  ( .D(n1766), .CLK(clk), .SETB(n112), .Q(tms[21]), 
        .QN(n1585) );
  DFFASX1_RVT \tms_reg[20]  ( .D(n1767), .CLK(clk), .SETB(n112), .Q(tms[20]), 
        .QN(n1584) );
  DFFASX1_RVT \tms_reg[19]  ( .D(n1768), .CLK(clk), .SETB(n112), .Q(tms[19]), 
        .QN(n1583) );
  DFFASX1_RVT \tms_reg[17]  ( .D(n1770), .CLK(clk), .SETB(n112), .Q(tms[17]), 
        .QN(n1581) );
  DFFASX1_RVT \tms_reg[16]  ( .D(n1771), .CLK(clk), .SETB(n117), .Q(tms[16]), 
        .QN(n1580) );
  DFFASX1_RVT \tms_reg[13]  ( .D(n1774), .CLK(clk), .SETB(n113), .Q(tms[13]), 
        .QN(n1577) );
  DFFASX1_RVT \tms_reg[11]  ( .D(n1776), .CLK(clk), .SETB(n113), .Q(tms[11]), 
        .QN(n1575) );
  DFFASX1_RVT \tms_reg[3]  ( .D(n1784), .CLK(clk), .SETB(n114), .Q(tms[3]), 
        .QN(n1567) );
  DFFASX1_RVT \tms_reg[2]  ( .D(n1785), .CLK(clk), .SETB(n114), .Q(tms[2]), 
        .QN(n1566) );
  DFFASX1_RVT \tms_reg[1]  ( .D(n1786), .CLK(clk), .SETB(n114), .Q(tms[1]), 
        .QN(n1565) );
  DFFASX1_RVT \tms_reg[27]  ( .D(n1760), .CLK(clk), .SETB(n112), .Q(tms[27]), 
        .QN(n1591) );
  DFFASX1_RVT \tms_reg[26]  ( .D(n1761), .CLK(clk), .SETB(n112), .Q(tms[26]), 
        .QN(n1590) );
  DFFASX1_RVT \tms_reg[18]  ( .D(n1769), .CLK(clk), .SETB(n112), .Q(tms[18]), 
        .QN(n1582) );
  DFFASX1_RVT \tms_reg[0]  ( .D(n1787), .CLK(clk), .SETB(n114), .Q(tms[0]), 
        .QN(n1564) );
  DFFASX1_RVT \tms_reg[29]  ( .D(n1758), .CLK(clk), .SETB(n113), .Q(tms[29]), 
        .QN(n1593) );
  DFFASX1_RVT \tms_reg[28]  ( .D(n1759), .CLK(clk), .SETB(n112), .Q(tms[28]), 
        .QN(n1592) );
  DFFASX1_RVT \tms_reg[31]  ( .D(n1756), .CLK(clk), .SETB(n113), .Q(tms[31]), 
        .QN(n1595) );
  DFFX1_RVT wb_ack_o_reg ( .D(N45), .CLK(clk), .Q(wb_ack_o), .QN(n1503) );
  DFFARX1_RVT \csc_reg[24]  ( .D(n1731), .CLK(clk), .RSTB(n125), .Q(csc[24]), 
        .QN(n1513) );
  DFFARX1_RVT \csc_reg[13]  ( .D(n1742), .CLK(clk), .RSTB(n124), .Q(csc[13]), 
        .QN(n1524) );
  DFFARX1_RVT \csc_reg[11]  ( .D(n1744), .CLK(clk), .RSTB(n124), .Q(csc[11]), 
        .QN(n1526) );
  DFFARX1_RVT \csc_reg[10]  ( .D(n1745), .CLK(clk), .RSTB(n124), .Q(csc[10]), 
        .QN(n1527) );
  DFFARX1_RVT \csc_reg[6]  ( .D(n1749), .CLK(clk), .RSTB(n121), .Q(csc[6]), 
        .QN(n1531) );
  DFFARX1_RVT \csc_reg[8]  ( .D(n1747), .CLK(clk), .RSTB(n121), .Q(csc[8]), 
        .QN(n1529) );
  DFFARX1_RVT \csc_reg[21]  ( .D(n1734), .CLK(clk), .RSTB(n124), .Q(csc[21]), 
        .QN(n1516) );
  DFFARX1_RVT \csc_reg[20]  ( .D(n1735), .CLK(clk), .RSTB(n124), .Q(csc[20]), 
        .QN(n1517) );
  DFFARX1_RVT \csc_reg[27]  ( .D(n1728), .CLK(clk), .RSTB(n125), .Q(csc[27]), 
        .QN(n1510) );
  DFFARX1_RVT \csc_reg[15]  ( .D(n1740), .CLK(clk), .RSTB(n124), .Q(csc[15]), 
        .QN(n1522) );
  DFFARX1_RVT \csc_reg[3]  ( .D(n1752), .CLK(clk), .RSTB(n121), .Q(csc[3]), 
        .QN(n1534) );
  DFFARX1_RVT \sp_csc_reg[26]  ( .D(n1686), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[26]), .QN(n1633) );
  DFFARX1_RVT \csc_reg[29]  ( .D(n1726), .CLK(clk), .RSTB(n125), .Q(csc[29]), 
        .QN(n1508) );
  DFFARX1_RVT \sp_csc_reg[9]  ( .D(n1669), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[9]), .QN(n1650) );
  DFFARX1_RVT \sp_csc_reg[17]  ( .D(n1677), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[17]), .QN(n1642) );
  DFFARX1_RVT \sp_csc_reg[16]  ( .D(n1676), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[16]), .QN(n1643) );
  DFFARX1_RVT \sp_csc_reg[12]  ( .D(n1672), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[12]), .QN(n1647) );
  DFFARX1_RVT \sp_csc_reg[11]  ( .D(n1671), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[11]), .QN(n1648) );
  DFFARX1_RVT \sp_csc_reg[3]  ( .D(n1663), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[3]), .QN(n1656) );
  DFFARX1_RVT \spec_req_cs_reg[1]  ( .D(n1804), .CLK(clk), .RSTB(n128), .Q(
        spec_req_cs[1]), .QN(n23) );
  DFFARX1_RVT \csc_reg[0]  ( .D(n1755), .CLK(clk), .RSTB(n121), .Q(csc[0]), 
        .QN(n1537) );
  DFFARX1_RVT \csc_reg[1]  ( .D(n1754), .CLK(clk), .RSTB(n121), .Q(csc[1]), 
        .QN(n1536) );
  DFFARX1_RVT \csc_reg[2]  ( .D(n1753), .CLK(clk), .RSTB(n121), .Q(csc[2]), 
        .QN(n1535) );
  DFFARX1_RVT \csc_reg[5]  ( .D(n1750), .CLK(clk), .RSTB(n121), .Q(csc[5]), 
        .QN(n1532) );
  DFFARX1_RVT \csc_reg[7]  ( .D(n1748), .CLK(clk), .RSTB(n121), .Q(csc[7]), 
        .QN(n1530) );
  DFFARX1_RVT \csc_reg[9]  ( .D(n1746), .CLK(clk), .RSTB(n124), .Q(csc[9]), 
        .QN(n1528) );
  DFFARX1_RVT \csc_reg[12]  ( .D(n1743), .CLK(clk), .RSTB(n124), .Q(csc[12]), 
        .QN(n1525) );
  DFFARX1_RVT \csc_reg[14]  ( .D(n1741), .CLK(clk), .RSTB(n124), .Q(csc[14]), 
        .QN(n1523) );
  DFFARX1_RVT \csc_reg[16]  ( .D(n1739), .CLK(clk), .RSTB(n124), .Q(csc[16]), 
        .QN(n1521) );
  DFFARX1_RVT \csc_reg[17]  ( .D(n1738), .CLK(clk), .RSTB(n124), .Q(csc[17]), 
        .QN(n1520) );
  DFFARX1_RVT \csc_reg[18]  ( .D(n1737), .CLK(clk), .RSTB(n124), .Q(csc[18]), 
        .QN(n1519) );
  DFFARX1_RVT \csc_reg[19]  ( .D(n1736), .CLK(clk), .RSTB(n124), .Q(csc[19]), 
        .QN(n1518) );
  DFFARX1_RVT \csc_reg[22]  ( .D(n1733), .CLK(clk), .RSTB(n125), .Q(csc[22]), 
        .QN(n1515) );
  DFFARX1_RVT \csc_reg[23]  ( .D(n1732), .CLK(clk), .RSTB(n125), .Q(csc[23]), 
        .QN(n1514) );
  DFFARX1_RVT \csc_reg[25]  ( .D(n1730), .CLK(clk), .RSTB(n125), .Q(csc[25]), 
        .QN(n1512) );
  DFFARX1_RVT \csc_reg[26]  ( .D(n1729), .CLK(clk), .RSTB(n125), .Q(csc[26]), 
        .QN(n1511) );
  DFFARX1_RVT \csc_reg[28]  ( .D(n1727), .CLK(clk), .RSTB(n125), .Q(csc[28]), 
        .QN(n1509) );
  DFFARX1_RVT \csc_reg[30]  ( .D(n1725), .CLK(clk), .RSTB(n125), .Q(csc[30]), 
        .QN(n1507) );
  DFFARX1_RVT \csc_reg[31]  ( .D(n1724), .CLK(clk), .RSTB(n125), .Q(csc[31]), 
        .QN(n1506) );
  DFFARX1_RVT \sp_csc_reg[31]  ( .D(n1691), .CLK(clk), .RSTB(n125), .Q(
        sp_csc[31]), .QN(n1628) );
  DFFARX1_RVT \sp_csc_reg[30]  ( .D(n1690), .CLK(clk), .RSTB(n125), .Q(
        sp_csc[30]), .QN(n1629) );
  DFFARX1_RVT \sp_csc_reg[29]  ( .D(n1689), .CLK(clk), .RSTB(n125), .Q(
        sp_csc[29]), .QN(n1630) );
  DFFARX1_RVT \sp_csc_reg[28]  ( .D(n1688), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[28]), .QN(n1631) );
  DFFARX1_RVT \sp_csc_reg[27]  ( .D(n1687), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[27]), .QN(n1632) );
  DFFARX1_RVT \sp_csc_reg[25]  ( .D(n1685), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[25]), .QN(n1634) );
  DFFARX1_RVT \sp_csc_reg[24]  ( .D(n1684), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[24]), .QN(n1635) );
  DFFARX1_RVT \sp_csc_reg[23]  ( .D(n1683), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[23]), .QN(n1636) );
  DFFARX1_RVT \sp_csc_reg[22]  ( .D(n1682), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[22]), .QN(n1637) );
  DFFARX1_RVT \sp_csc_reg[21]  ( .D(n1681), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[21]), .QN(n1638) );
  DFFARX1_RVT \sp_csc_reg[20]  ( .D(n1680), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[20]), .QN(n1639) );
  DFFARX1_RVT \sp_csc_reg[19]  ( .D(n1679), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[19]), .QN(n1640) );
  DFFARX1_RVT \sp_csc_reg[18]  ( .D(n1678), .CLK(clk), .RSTB(n126), .Q(
        sp_csc[18]), .QN(n1641) );
  DFFARX1_RVT \sp_csc_reg[15]  ( .D(n1675), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[15]), .QN(n1644) );
  DFFARX1_RVT \sp_csc_reg[14]  ( .D(n1674), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[14]), .QN(n1645) );
  DFFARX1_RVT \sp_csc_reg[13]  ( .D(n1673), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[13]), .QN(n1646) );
  DFFARX1_RVT \sp_csc_reg[10]  ( .D(n1670), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[10]), .QN(n1649) );
  DFFARX1_RVT \sp_csc_reg[8]  ( .D(n1668), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[8]), .QN(n1651) );
  DFFARX1_RVT \sp_csc_reg[7]  ( .D(n1667), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[7]), .QN(n1652) );
  DFFARX1_RVT \sp_csc_reg[6]  ( .D(n1666), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[6]), .QN(n1653) );
  DFFARX1_RVT \sp_csc_reg[5]  ( .D(n1665), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[5]), .QN(n1654) );
  DFFARX1_RVT \sp_csc_reg[4]  ( .D(n1664), .CLK(clk), .RSTB(n127), .Q(
        sp_csc[4]), .QN(n1655) );
  DFFX1_RVT \wb_addr_r_reg[4]  ( .D(wb_addr_i[4]), .CLK(clk), .QN(n314) );
  DFFX1_RVT \wb_addr_r_reg[3]  ( .D(wb_addr_i[3]), .CLK(clk), .Q(n1563) );
  AND3X1_RVT U3 ( .A1(n818), .A2(n363), .A3(wb_addr_i[4]), .Y(n22) );
  AND2X1_RVT U4 ( .A1(wb_addr_i[3]), .A2(n365), .Y(n816) );
  AOI21X1_RVT U5 ( .A1(rf_we), .A2(n366), .A3(n851), .Y(n107) );
  NOR3X0_RVT U6 ( .A1(wb_addr_i[5]), .A2(wb_addr_i[6]), .A3(wb_addr_i[4]), .Y(
        n838) );
  AND2X1_RVT U7 ( .A1(wb_addr_i[4]), .A2(wb_addr_i[2]), .Y(n819) );
  AND3X1_RVT U8 ( .A1(rf_we), .A2(n315), .A3(n1563), .Y(n1470) );
  INVX1_RVT U9 ( .A(wb_stb_i), .Y(n156) );
  INVX0_RVT U10 ( .A(n133), .Y(n131) );
  INVX1_RVT U11 ( .A(n1540), .Y(n134) );
  OR2X1_RVT U12 ( .A1(n232), .A2(n152), .Y(n829) );
  OR2X1_RVT U13 ( .A1(n231), .A2(n150), .Y(n548) );
  OR2X1_RVT U14 ( .A1(n230), .A2(n150), .Y(n267) );
  OR2X1_RVT U15 ( .A1(n229), .A2(n150), .Y(n190) );
  OR2X1_RVT U16 ( .A1(n228), .A2(n150), .Y(n165) );
  OR2X1_RVT U17 ( .A1(n227), .A2(n150), .Y(n140) );
  OR2X1_RVT U18 ( .A1(n226), .A2(n150), .Y(n115) );
  OR2X1_RVT U19 ( .A1(n225), .A2(n150), .Y(n90) );
  OR2X1_RVT U20 ( .A1(n222), .A2(n150), .Y(n64) );
  OR2X1_RVT U21 ( .A1(n221), .A2(n150), .Y(n31) );
  OR2X1_RVT U22 ( .A1(n219), .A2(n150), .Y(n798) );
  OR2X1_RVT U23 ( .A1(n218), .A2(n151), .Y(n756) );
  OR2X1_RVT U24 ( .A1(n217), .A2(n151), .Y(n731) );
  OR2X1_RVT U25 ( .A1(n216), .A2(n152), .Y(n706) );
  OR2X1_RVT U26 ( .A1(n215), .A2(n151), .Y(n681) );
  OR2X1_RVT U27 ( .A1(n214), .A2(n152), .Y(n656) );
  OR2X1_RVT U28 ( .A1(n213), .A2(n151), .Y(n631) );
  OR2X1_RVT U29 ( .A1(n212), .A2(n152), .Y(n606) );
  OR2X1_RVT U30 ( .A1(n211), .A2(n151), .Y(n581) );
  OR2X1_RVT U31 ( .A1(n210), .A2(n152), .Y(n556) );
  OR2X1_RVT U32 ( .A1(n209), .A2(n151), .Y(n506) );
  OR2X1_RVT U33 ( .A1(n208), .A2(n152), .Y(n481) );
  OR2X1_RVT U34 ( .A1(n207), .A2(n151), .Y(n456) );
  OR2X1_RVT U35 ( .A1(n206), .A2(n152), .Y(n431) );
  OA22X1_RVT U36 ( .A1(n238), .A2(n51), .A3(n40), .A4(n1633), .Y(n952) );
  OA22X1_RVT U37 ( .A1(n265), .A2(n56), .A3(n1534), .A4(n40), .Y(n1249) );
  OA22X1_RVT U38 ( .A1(n253), .A2(n59), .A3(n1522), .A4(n40), .Y(n1201) );
  OA22X1_RVT U39 ( .A1(n237), .A2(n59), .A3(n1510), .A4(n40), .Y(n1153) );
  OA22X1_RVT U40 ( .A1(n245), .A2(n56), .A3(n1517), .A4(n40), .Y(n1181) );
  OA22X1_RVT U41 ( .A1(n244), .A2(n57), .A3(n1516), .A4(n40), .Y(n1177) );
  OA22X1_RVT U42 ( .A1(n260), .A2(n56), .A3(n1529), .A4(n40), .Y(n1229) );
  AND3X1_RVT U43 ( .A1(wb_addr_i[30]), .A2(wb_addr_i[29]), .A3(wb_we_i), .Y(
        n1498) );
  AO22X1_RVT U44 ( .A1(poc[11]), .A2(n134), .A3(mc_data_i[11]), .A4(n131), .Y(
        n1817) );
  AO22X1_RVT U45 ( .A1(poc[12]), .A2(n134), .A3(mc_data_i[12]), .A4(n131), .Y(
        n1818) );
  AO22X1_RVT U46 ( .A1(poc[13]), .A2(n134), .A3(mc_data_i[13]), .A4(n131), .Y(
        n1819) );
  AO22X1_RVT U47 ( .A1(poc[14]), .A2(n134), .A3(mc_data_i[14]), .A4(n131), .Y(
        n1820) );
  AO22X1_RVT U48 ( .A1(poc[15]), .A2(n134), .A3(mc_data_i[15]), .A4(n131), .Y(
        n1821) );
  AO22X1_RVT U49 ( .A1(poc[16]), .A2(n134), .A3(mc_data_i[16]), .A4(n131), .Y(
        n1822) );
  AO22X1_RVT U50 ( .A1(poc[17]), .A2(n134), .A3(mc_data_i[17]), .A4(n131), .Y(
        n1823) );
  AO22X1_RVT U51 ( .A1(poc[18]), .A2(n134), .A3(mc_data_i[18]), .A4(n131), .Y(
        n1824) );
  AO22X1_RVT U52 ( .A1(poc[19]), .A2(n134), .A3(mc_data_i[19]), .A4(n131), .Y(
        n1825) );
  AO22X1_RVT U53 ( .A1(poc[20]), .A2(n134), .A3(mc_data_i[20]), .A4(n130), .Y(
        n1826) );
  AO22X1_RVT U54 ( .A1(poc[21]), .A2(n134), .A3(mc_data_i[21]), .A4(n130), .Y(
        n1827) );
  AO22X1_RVT U55 ( .A1(poc[22]), .A2(n134), .A3(mc_data_i[22]), .A4(n130), .Y(
        n1828) );
  AO22X1_RVT U56 ( .A1(poc[23]), .A2(n134), .A3(mc_data_i[23]), .A4(n130), .Y(
        n1829) );
  AO22X1_RVT U57 ( .A1(poc[24]), .A2(n134), .A3(mc_data_i[24]), .A4(n130), .Y(
        n1830) );
  AO22X1_RVT U58 ( .A1(poc[25]), .A2(n4), .A3(mc_data_i[25]), .A4(n130), .Y(
        n1831) );
  AO22X1_RVT U59 ( .A1(poc[26]), .A2(n4), .A3(mc_data_i[26]), .A4(n130), .Y(
        n1832) );
  AO22X1_RVT U60 ( .A1(poc[27]), .A2(n4), .A3(mc_data_i[27]), .A4(n130), .Y(
        n1833) );
  AO22X1_RVT U61 ( .A1(poc[28]), .A2(n4), .A3(mc_data_i[28]), .A4(n130), .Y(
        n1834) );
  AO22X1_RVT U62 ( .A1(poc[29]), .A2(n4), .A3(mc_data_i[29]), .A4(n130), .Y(
        n1835) );
  AO22X1_RVT U63 ( .A1(poc[30]), .A2(n4), .A3(mc_data_i[30]), .A4(n130), .Y(
        n1836) );
  AO22X1_RVT U64 ( .A1(poc[31]), .A2(n4), .A3(mc_data_i[31]), .A4(n130), .Y(
        n1837) );
  OA22X1_RVT U65 ( .A1(n262), .A2(n51), .A3(n138), .A4(n1653), .Y(n872) );
  OA22X1_RVT U66 ( .A1(n261), .A2(n51), .A3(n138), .A4(n1652), .Y(n876) );
  OA22X1_RVT U67 ( .A1(n254), .A2(n51), .A3(n138), .A4(n1645), .Y(n904) );
  OA22X1_RVT U68 ( .A1(n245), .A2(n53), .A3(n138), .A4(n1639), .Y(n928) );
  OA22X1_RVT U69 ( .A1(n242), .A2(n51), .A3(n138), .A4(n1636), .Y(n940) );
  OA22X1_RVT U70 ( .A1(n238), .A2(n58), .A3(n1511), .A4(n138), .Y(n1157) );
  OA22X1_RVT U71 ( .A1(n261), .A2(n57), .A3(n1530), .A4(n138), .Y(n1233) );
  OA22X1_RVT U72 ( .A1(n266), .A2(n56), .A3(n1535), .A4(n138), .Y(n1253) );
  INVX0_RVT U73 ( .A(rst), .Y(n128) );
  INVX0_RVT U74 ( .A(rst), .Y(n361) );
  INVX1_RVT U75 ( .A(n139), .Y(n39) );
  NAND3X0_RVT U76 ( .A1(n364), .A2(n363), .A3(n819), .Y(n27) );
  NAND3X0_RVT U77 ( .A1(n816), .A2(n363), .A3(wb_addr_i[4]), .Y(n29) );
  AND4X1_RVT U78 ( .A1(n316), .A2(n362), .A3(n366), .A4(n1498), .Y(n3) );
  INVX1_RVT U79 ( .A(n21), .Y(n152) );
  INVX1_RVT U80 ( .A(n21), .Y(n151) );
  INVX0_RVT U81 ( .A(n133), .Y(n132) );
  INVX0_RVT U82 ( .A(n133), .Y(n130) );
  INVX0_RVT U83 ( .A(wb_addr_i[3]), .Y(n364) );
  AND4X1_RVT U84 ( .A1(n313), .A2(n312), .A3(n314), .A4(n1470), .Y(n18) );
  INVX1_RVT U85 ( .A(n139), .Y(n136) );
  INVX1_RVT U86 ( .A(n139), .Y(n137) );
  INVX0_RVT U87 ( .A(n139), .Y(n138) );
  INVX1_RVT U88 ( .A(n1270), .Y(n94) );
  AND2X1_RVT U89 ( .A1(cs1), .A2(n241), .Y(n1270) );
  INVX1_RVT U90 ( .A(n1486), .Y(n366) );
  INVX1_RVT U91 ( .A(n20), .Y(n111) );
  INVX1_RVT U92 ( .A(n20), .Y(n110) );
  INVX1_RVT U93 ( .A(n129), .Y(n127) );
  INVX1_RVT U94 ( .A(n129), .Y(n126) );
  INVX1_RVT U95 ( .A(n129), .Y(n125) );
  INVX1_RVT U96 ( .A(n129), .Y(n124) );
  INVX1_RVT U97 ( .A(n129), .Y(n119) );
  INVX1_RVT U98 ( .A(n129), .Y(n116) );
  INVX1_RVT U99 ( .A(n129), .Y(n117) );
  INVX1_RVT U100 ( .A(rst), .Y(n118) );
  INVX1_RVT U101 ( .A(n129), .Y(n112) );
  INVX1_RVT U102 ( .A(n129), .Y(n113) );
  INVX1_RVT U103 ( .A(n129), .Y(n114) );
  INVX1_RVT U104 ( .A(n129), .Y(n121) );
  INVX1_RVT U105 ( .A(n21), .Y(n150) );
  INVX1_RVT U106 ( .A(n22), .Y(n146) );
  INVX1_RVT U107 ( .A(n22), .Y(n144) );
  AND2X1_RVT U108 ( .A1(n365), .A2(n364), .Y(n818) );
  NOR2X0_RVT U109 ( .A1(n1139), .A2(n189), .Y(n19) );
  NAND2X0_RVT U110 ( .A1(n155), .A2(wb_cyc_i), .Y(n1486) );
  INVX1_RVT U111 ( .A(n156), .Y(n155) );
  NOR2X0_RVT U112 ( .A1(wp_err1), .A2(wp_err0), .Y(n1488) );
  INVX1_RVT U113 ( .A(n22), .Y(n149) );
  OA22X1_RVT U114 ( .A1(n42), .A2(n182), .A3(n32), .A4(n293), .Y(n777) );
  OA22X1_RVT U115 ( .A1(n29), .A2(n181), .A3(n27), .A4(n292), .Y(n752) );
  OA22X1_RVT U116 ( .A1(n43), .A2(n180), .A3(n27), .A4(n291), .Y(n727) );
  OA22X1_RVT U117 ( .A1(n42), .A2(n178), .A3(n32), .A4(n289), .Y(n677) );
  OA22X1_RVT U118 ( .A1(n43), .A2(n177), .A3(n34), .A4(n288), .Y(n652) );
  OA22X1_RVT U119 ( .A1(n43), .A2(n176), .A3(n32), .A4(n287), .Y(n627) );
  OA22X1_RVT U120 ( .A1(n29), .A2(n175), .A3(n34), .A4(n286), .Y(n602) );
  OA22X1_RVT U121 ( .A1(n45), .A2(n174), .A3(n33), .A4(n285), .Y(n577) );
  OA22X1_RVT U122 ( .A1(n43), .A2(n171), .A3(n33), .A4(n284), .Y(n527) );
  OA22X1_RVT U123 ( .A1(n45), .A2(n169), .A3(n27), .A4(n283), .Y(n502) );
  OA22X1_RVT U124 ( .A1(n42), .A2(n167), .A3(n33), .A4(n281), .Y(n452) );
  OA22X1_RVT U125 ( .A1(n29), .A2(n179), .A3(n27), .A4(n290), .Y(n702) );
  OA22X1_RVT U126 ( .A1(n29), .A2(n168), .A3(n27), .A4(n282), .Y(n477) );
  NAND2X0_RVT U127 ( .A1(n404), .A2(n405), .Y(rf_dout[24]) );
  OA22X1_RVT U128 ( .A1(n166), .A2(n42), .A3(n205), .A4(n152), .Y(n405) );
  OA221X1_RVT U129 ( .A1(n149), .A2(n240), .A3(n33), .A4(n280), .A5(n427), .Y(
        n404) );
  OA22X1_RVT U130 ( .A1(n111), .A2(n325), .A3(n26), .A4(n343), .Y(n427) );
  NAND2X0_RVT U131 ( .A1(n378), .A2(n379), .Y(rf_dout[25]) );
  OA22X1_RVT U132 ( .A1(n164), .A2(n29), .A3(n204), .A4(n151), .Y(n379) );
  OA221X1_RVT U133 ( .A1(n149), .A2(n239), .A3(n27), .A4(n279), .A5(n401), .Y(
        n378) );
  OA22X1_RVT U134 ( .A1(n111), .A2(n324), .A3(n44), .A4(n342), .Y(n401) );
  NAND2X0_RVT U135 ( .A1(n352), .A2(n353), .Y(rf_dout[26]) );
  OA22X1_RVT U136 ( .A1(n163), .A2(n43), .A3(n203), .A4(n152), .Y(n353) );
  OA221X1_RVT U137 ( .A1(n149), .A2(n238), .A3(n27), .A4(n278), .A5(n375), .Y(
        n352) );
  OA22X1_RVT U138 ( .A1(n110), .A2(n322), .A3(n28), .A4(n341), .Y(n375) );
  NAND2X0_RVT U139 ( .A1(n326), .A2(n327), .Y(rf_dout[27]) );
  OA22X1_RVT U140 ( .A1(n162), .A2(n43), .A3(n202), .A4(n151), .Y(n327) );
  OA221X1_RVT U141 ( .A1(n149), .A2(n237), .A3(n34), .A4(n277), .A5(n349), .Y(
        n326) );
  OA22X1_RVT U142 ( .A1(n111), .A2(n321), .A3(n30), .A4(n340), .Y(n349) );
  NAND2X0_RVT U143 ( .A1(n300), .A2(n301), .Y(rf_dout[28]) );
  OA22X1_RVT U144 ( .A1(n161), .A2(n45), .A3(n201), .A4(n152), .Y(n301) );
  OA221X1_RVT U145 ( .A1(n149), .A2(n236), .A3(n34), .A4(n276), .A5(n323), .Y(
        n300) );
  OA22X1_RVT U146 ( .A1(n111), .A2(n320), .A3(n28), .A4(n339), .Y(n323) );
  NAND2X0_RVT U147 ( .A1(n274), .A2(n275), .Y(rf_dout[29]) );
  OA22X1_RVT U148 ( .A1(n160), .A2(n29), .A3(n200), .A4(n151), .Y(n275) );
  OA221X1_RVT U149 ( .A1(n149), .A2(n235), .A3(n32), .A4(n273), .A5(n297), .Y(
        n274) );
  OA22X1_RVT U150 ( .A1(n111), .A2(n319), .A3(n30), .A4(n338), .Y(n297) );
  NAND2X0_RVT U151 ( .A1(n223), .A2(n224), .Y(rf_dout[30]) );
  OA22X1_RVT U152 ( .A1(n159), .A2(n45), .A3(n199), .A4(n152), .Y(n224) );
  OA221X1_RVT U153 ( .A1(n149), .A2(n234), .A3(n32), .A4(n271), .A5(n246), .Y(
        n223) );
  OA22X1_RVT U154 ( .A1(n110), .A2(n318), .A3(n28), .A4(n337), .Y(n246) );
  NAND2X0_RVT U155 ( .A1(n197), .A2(n198), .Y(rf_dout[31]) );
  OA22X1_RVT U156 ( .A1(n158), .A2(n45), .A3(n196), .A4(n151), .Y(n198) );
  OA221X1_RVT U157 ( .A1(n149), .A2(n233), .A3(n34), .A4(n270), .A5(n220), .Y(
        n197) );
  OA22X1_RVT U158 ( .A1(n111), .A2(n317), .A3(n26), .A4(n336), .Y(n220) );
  AND2X1_RVT U159 ( .A1(n838), .A2(n818), .Y(n20) );
  INVX1_RVT U160 ( .A(n18), .Y(n109) );
  INVX1_RVT U161 ( .A(n1493), .Y(n311) );
  INVX1_RVT U162 ( .A(n1495), .Y(n310) );
  INVX1_RVT U163 ( .A(n361), .Y(n129) );
  INVX1_RVT U164 ( .A(n1540), .Y(n133) );
  AO22X1_RVT U165 ( .A1(poc[8]), .A2(n133), .A3(mc_data_i[8]), .A4(n131), .Y(
        n1814) );
  AO22X1_RVT U166 ( .A1(poc[9]), .A2(n133), .A3(mc_data_i[9]), .A4(n131), .Y(
        n1815) );
  AO22X1_RVT U167 ( .A1(poc[10]), .A2(n133), .A3(mc_data_i[10]), .A4(n131), 
        .Y(n1816) );
  AND3X1_RVT U168 ( .A1(wb_addr_i[3]), .A2(n363), .A3(n819), .Y(n21) );
  OA22X1_RVT U169 ( .A1(n264), .A2(n56), .A3(n1533), .A4(n137), .Y(n1245) );
  NAND2X0_RVT U170 ( .A1(n912), .A2(n913), .Y(n1676) );
  OR2X1_RVT U171 ( .A1(n142), .A2(n177), .Y(n913) );
  OA22X1_RVT U172 ( .A1(n252), .A2(n54), .A3(n39), .A4(n1643), .Y(n912) );
  NAND2X0_RVT U173 ( .A1(n916), .A2(n917), .Y(n1677) );
  OR2X1_RVT U174 ( .A1(n75), .A2(n176), .Y(n917) );
  OA22X1_RVT U175 ( .A1(n251), .A2(n54), .A3(n138), .A4(n1642), .Y(n916) );
  NAND2X0_RVT U176 ( .A1(n1189), .A2(n1190), .Y(n1737) );
  OR2X1_RVT U177 ( .A1(n87), .A2(n175), .Y(n1190) );
  OA22X1_RVT U178 ( .A1(n248), .A2(n59), .A3(n1519), .A4(n36), .Y(n1189) );
  NAND2X0_RVT U179 ( .A1(n1177), .A2(n1178), .Y(n1734) );
  OR2X1_RVT U180 ( .A1(n87), .A2(n169), .Y(n1178) );
  NAND2X0_RVT U181 ( .A1(n1181), .A2(n1182), .Y(n1735) );
  OR2X1_RVT U182 ( .A1(n84), .A2(n171), .Y(n1182) );
  NAND2X0_RVT U183 ( .A1(n1229), .A2(n1230), .Y(n1747) );
  OR2X1_RVT U184 ( .A1(n85), .A2(n185), .Y(n1230) );
  NAND2X0_RVT U185 ( .A1(n1249), .A2(n1250), .Y(n1752) );
  OR2X1_RVT U186 ( .A1(n85), .A2(n191), .Y(n1250) );
  NAND2X0_RVT U187 ( .A1(n880), .A2(n881), .Y(n1668) );
  OR2X1_RVT U188 ( .A1(n75), .A2(n185), .Y(n881) );
  OA22X1_RVT U189 ( .A1(n260), .A2(n54), .A3(n35), .A4(n1651), .Y(n880) );
  NAND2X0_RVT U190 ( .A1(n920), .A2(n921), .Y(n1678) );
  OR2X1_RVT U191 ( .A1(n142), .A2(n175), .Y(n921) );
  OA22X1_RVT U192 ( .A1(n248), .A2(n54), .A3(n137), .A4(n1641), .Y(n920) );
  NAND2X0_RVT U193 ( .A1(n924), .A2(n925), .Y(n1679) );
  OR2X1_RVT U194 ( .A1(n142), .A2(n174), .Y(n925) );
  OA22X1_RVT U195 ( .A1(n247), .A2(n53), .A3(n137), .A4(n1640), .Y(n924) );
  NAND2X0_RVT U196 ( .A1(n928), .A2(n929), .Y(n1680) );
  OR2X1_RVT U197 ( .A1(n142), .A2(n171), .Y(n929) );
  NAND2X0_RVT U198 ( .A1(n932), .A2(n933), .Y(n1681) );
  OR2X1_RVT U199 ( .A1(n75), .A2(n169), .Y(n933) );
  OA22X1_RVT U200 ( .A1(n244), .A2(n54), .A3(n136), .A4(n1638), .Y(n932) );
  NAND2X0_RVT U201 ( .A1(n936), .A2(n937), .Y(n1682) );
  OR2X1_RVT U202 ( .A1(n75), .A2(n168), .Y(n937) );
  OA22X1_RVT U203 ( .A1(n243), .A2(n51), .A3(n137), .A4(n1637), .Y(n936) );
  NAND2X0_RVT U204 ( .A1(n940), .A2(n941), .Y(n1683) );
  OR2X1_RVT U205 ( .A1(n75), .A2(n167), .Y(n941) );
  NAND2X0_RVT U206 ( .A1(n1173), .A2(n1174), .Y(n1733) );
  OR2X1_RVT U207 ( .A1(n86), .A2(n168), .Y(n1174) );
  OA22X1_RVT U208 ( .A1(n243), .A2(n56), .A3(n1515), .A4(n137), .Y(n1173) );
  NAND2X0_RVT U209 ( .A1(n1185), .A2(n1186), .Y(n1736) );
  OR2X1_RVT U210 ( .A1(n1139), .A2(n174), .Y(n1186) );
  OA22X1_RVT U211 ( .A1(n247), .A2(n57), .A3(n1518), .A4(n136), .Y(n1185) );
  NAND2X0_RVT U212 ( .A1(n1193), .A2(n1194), .Y(n1738) );
  OR2X1_RVT U213 ( .A1(n87), .A2(n176), .Y(n1194) );
  OA22X1_RVT U214 ( .A1(n251), .A2(n57), .A3(n1520), .A4(n37), .Y(n1193) );
  NAND2X0_RVT U215 ( .A1(n1197), .A2(n1198), .Y(n1739) );
  OR2X1_RVT U216 ( .A1(n84), .A2(n177), .Y(n1198) );
  OA22X1_RVT U217 ( .A1(n252), .A2(n58), .A3(n1521), .A4(n137), .Y(n1197) );
  NAND2X0_RVT U218 ( .A1(n884), .A2(n885), .Y(n1669) );
  OR2X1_RVT U219 ( .A1(n75), .A2(n184), .Y(n885) );
  OA22X1_RVT U220 ( .A1(n259), .A2(n51), .A3(n35), .A4(n1650), .Y(n884) );
  NAND2X0_RVT U221 ( .A1(n892), .A2(n893), .Y(n1671) );
  OR2X1_RVT U222 ( .A1(n142), .A2(n182), .Y(n893) );
  OA22X1_RVT U223 ( .A1(n257), .A2(n52), .A3(n39), .A4(n1648), .Y(n892) );
  NAND2X0_RVT U224 ( .A1(n896), .A2(n897), .Y(n1672) );
  OR2X1_RVT U225 ( .A1(n75), .A2(n181), .Y(n897) );
  OA22X1_RVT U226 ( .A1(n256), .A2(n53), .A3(n40), .A4(n1647), .Y(n896) );
  NAND2X0_RVT U227 ( .A1(n1209), .A2(n1210), .Y(n1742) );
  OR2X1_RVT U228 ( .A1(n86), .A2(n180), .Y(n1210) );
  OA22X1_RVT U229 ( .A1(n255), .A2(n58), .A3(n1524), .A4(n35), .Y(n1209) );
  NAND2X0_RVT U230 ( .A1(n1217), .A2(n1218), .Y(n1744) );
  OR2X1_RVT U231 ( .A1(n87), .A2(n182), .Y(n1218) );
  OA22X1_RVT U232 ( .A1(n257), .A2(n58), .A3(n1526), .A4(n37), .Y(n1217) );
  NAND2X0_RVT U233 ( .A1(n1221), .A2(n1222), .Y(n1745) );
  OR2X1_RVT U234 ( .A1(n87), .A2(n183), .Y(n1222) );
  OA22X1_RVT U235 ( .A1(n258), .A2(n59), .A3(n1527), .A4(n36), .Y(n1221) );
  NAND2X0_RVT U236 ( .A1(n1237), .A2(n1238), .Y(n1749) );
  OR2X1_RVT U237 ( .A1(n84), .A2(n187), .Y(n1238) );
  OA22X1_RVT U238 ( .A1(n262), .A2(n57), .A3(n1531), .A4(n35), .Y(n1237) );
  NAND2X0_RVT U239 ( .A1(n1201), .A2(n1202), .Y(n1740) );
  OR2X1_RVT U240 ( .A1(n84), .A2(n178), .Y(n1202) );
  NAND2X0_RVT U241 ( .A1(n888), .A2(n889), .Y(n1670) );
  OR2X1_RVT U242 ( .A1(n76), .A2(n183), .Y(n889) );
  OA22X1_RVT U243 ( .A1(n258), .A2(n52), .A3(n136), .A4(n1649), .Y(n888) );
  NAND2X0_RVT U244 ( .A1(n900), .A2(n901), .Y(n1673) );
  OR2X1_RVT U245 ( .A1(n142), .A2(n180), .Y(n901) );
  OA22X1_RVT U246 ( .A1(n255), .A2(n53), .A3(n36), .A4(n1646), .Y(n900) );
  NAND2X0_RVT U247 ( .A1(n904), .A2(n905), .Y(n1674) );
  OR2X1_RVT U248 ( .A1(n849), .A2(n179), .Y(n905) );
  NAND2X0_RVT U249 ( .A1(n908), .A2(n909), .Y(n1675) );
  OR2X1_RVT U250 ( .A1(n849), .A2(n178), .Y(n909) );
  OA22X1_RVT U251 ( .A1(n253), .A2(n53), .A3(n136), .A4(n1644), .Y(n908) );
  NAND2X0_RVT U252 ( .A1(n1205), .A2(n1206), .Y(n1741) );
  OR2X1_RVT U253 ( .A1(n85), .A2(n179), .Y(n1206) );
  OA22X1_RVT U254 ( .A1(n254), .A2(n58), .A3(n1523), .A4(n36), .Y(n1205) );
  NAND2X0_RVT U255 ( .A1(n1213), .A2(n1214), .Y(n1743) );
  OR2X1_RVT U256 ( .A1(n85), .A2(n181), .Y(n1214) );
  OA22X1_RVT U257 ( .A1(n256), .A2(n59), .A3(n1525), .A4(n136), .Y(n1213) );
  NAND2X0_RVT U258 ( .A1(n1225), .A2(n1226), .Y(n1746) );
  OR2X1_RVT U259 ( .A1(n1139), .A2(n184), .Y(n1226) );
  OA22X1_RVT U260 ( .A1(n259), .A2(n56), .A3(n1528), .A4(n137), .Y(n1225) );
  NAND2X0_RVT U261 ( .A1(n952), .A2(n953), .Y(n1686) );
  OR2X1_RVT U262 ( .A1(n141), .A2(n163), .Y(n953) );
  NAND2X0_RVT U263 ( .A1(n944), .A2(n945), .Y(n1684) );
  OR2X1_RVT U264 ( .A1(n76), .A2(n166), .Y(n945) );
  OA22X1_RVT U265 ( .A1(n240), .A2(n52), .A3(n36), .A4(n1635), .Y(n944) );
  NAND2X0_RVT U266 ( .A1(n948), .A2(n949), .Y(n1685) );
  OR2X1_RVT U267 ( .A1(n849), .A2(n164), .Y(n949) );
  OA22X1_RVT U268 ( .A1(n239), .A2(n52), .A3(n136), .A4(n1634), .Y(n948) );
  NAND2X0_RVT U269 ( .A1(n960), .A2(n961), .Y(n1688) );
  OR2X1_RVT U270 ( .A1(n142), .A2(n161), .Y(n961) );
  OA22X1_RVT U271 ( .A1(n236), .A2(n52), .A3(n137), .A4(n1631), .Y(n960) );
  NAND2X0_RVT U272 ( .A1(n964), .A2(n965), .Y(n1689) );
  OR2X1_RVT U273 ( .A1(n141), .A2(n160), .Y(n965) );
  OA22X1_RVT U274 ( .A1(n235), .A2(n52), .A3(n37), .A4(n1630), .Y(n964) );
  NAND2X0_RVT U275 ( .A1(n968), .A2(n969), .Y(n1690) );
  OR2X1_RVT U276 ( .A1(n141), .A2(n159), .Y(n969) );
  OA22X1_RVT U277 ( .A1(n234), .A2(n51), .A3(n37), .A4(n1629), .Y(n968) );
  NAND2X0_RVT U278 ( .A1(n972), .A2(n973), .Y(n1691) );
  OR2X1_RVT U279 ( .A1(n141), .A2(n158), .Y(n973) );
  OA22X1_RVT U280 ( .A1(n233), .A2(n52), .A3(n136), .A4(n1628), .Y(n972) );
  NAND2X0_RVT U281 ( .A1(n1040), .A2(n1041), .Y(n1704) );
  OR2X1_RVT U282 ( .A1(n79), .A2(n217), .Y(n1041) );
  OA22X1_RVT U283 ( .A1(n292), .A2(n66), .A3(n99), .A4(n1615), .Y(n1040) );
  NAND2X0_RVT U284 ( .A1(n1304), .A2(n1305), .Y(n1762) );
  OR2X1_RVT U285 ( .A1(n88), .A2(n204), .Y(n1305) );
  OA22X1_RVT U286 ( .A1(n279), .A2(n70), .A3(n101), .A4(n1589), .Y(n1304) );
  NAND2X0_RVT U287 ( .A1(n1312), .A2(n1313), .Y(n1764) );
  OR2X1_RVT U288 ( .A1(n91), .A2(n206), .Y(n1313) );
  OA22X1_RVT U289 ( .A1(n281), .A2(n74), .A3(n100), .A4(n1587), .Y(n1312) );
  NAND2X0_RVT U290 ( .A1(n1352), .A2(n1353), .Y(n1774) );
  OR2X1_RVT U291 ( .A1(n92), .A2(n216), .Y(n1353) );
  OA22X1_RVT U292 ( .A1(n291), .A2(n71), .A3(n101), .A4(n1577), .Y(n1352) );
  NAND2X0_RVT U293 ( .A1(n1356), .A2(n1357), .Y(n1775) );
  OR2X1_RVT U294 ( .A1(n91), .A2(n217), .Y(n1357) );
  OA22X1_RVT U295 ( .A1(n292), .A2(n74), .A3(n100), .A4(n1576), .Y(n1356) );
  NAND2X0_RVT U296 ( .A1(n1360), .A2(n1361), .Y(n1776) );
  OR2X1_RVT U297 ( .A1(n92), .A2(n218), .Y(n1361) );
  OA22X1_RVT U298 ( .A1(n293), .A2(n74), .A3(n101), .A4(n1575), .Y(n1360) );
  NAND2X0_RVT U299 ( .A1(n1100), .A2(n1101), .Y(n1719) );
  OR2X1_RVT U300 ( .A1(n79), .A2(n202), .Y(n1101) );
  OA22X1_RVT U301 ( .A1(n277), .A2(n62), .A3(n103), .A4(n1600), .Y(n1100) );
  NAND2X0_RVT U302 ( .A1(n1348), .A2(n1349), .Y(n1773) );
  OR2X1_RVT U303 ( .A1(n91), .A2(n215), .Y(n1349) );
  OA22X1_RVT U304 ( .A1(n290), .A2(n74), .A3(n101), .A4(n1578), .Y(n1348) );
  NAND2X0_RVT U305 ( .A1(n1261), .A2(n1262), .Y(n1755) );
  OR2X1_RVT U306 ( .A1(n86), .A2(n194), .Y(n1262) );
  OA22X1_RVT U307 ( .A1(n269), .A2(n57), .A3(n1537), .A4(n136), .Y(n1261) );
  NAND2X0_RVT U308 ( .A1(n1272), .A2(n1273), .Y(n1756) );
  OR2X1_RVT U309 ( .A1(n91), .A2(n196), .Y(n1273) );
  OA22X1_RVT U310 ( .A1(n270), .A2(n71), .A3(n100), .A4(n1595), .Y(n1272) );
  NAND2X0_RVT U311 ( .A1(n1284), .A2(n1285), .Y(n1757) );
  OR2X1_RVT U312 ( .A1(n92), .A2(n199), .Y(n1285) );
  OA22X1_RVT U313 ( .A1(n271), .A2(n74), .A3(n96), .A4(n1594), .Y(n1284) );
  NAND2X0_RVT U314 ( .A1(n1292), .A2(n1293), .Y(n1759) );
  OR2X1_RVT U315 ( .A1(n91), .A2(n201), .Y(n1293) );
  OA22X1_RVT U316 ( .A1(n276), .A2(n71), .A3(n96), .A4(n1592), .Y(n1292) );
  NAND2X0_RVT U317 ( .A1(n1300), .A2(n1301), .Y(n1761) );
  OR2X1_RVT U318 ( .A1(n92), .A2(n203), .Y(n1301) );
  OA22X1_RVT U319 ( .A1(n278), .A2(n71), .A3(n103), .A4(n1590), .Y(n1300) );
  NAND2X0_RVT U320 ( .A1(n1044), .A2(n1045), .Y(n1705) );
  OA22X1_RVT U321 ( .A1(n291), .A2(n61), .A3(n96), .A4(n1614), .Y(n1044) );
  OR2X1_RVT U322 ( .A1(n81), .A2(n216), .Y(n1045) );
  NAND2X0_RVT U323 ( .A1(n1048), .A2(n1049), .Y(n1706) );
  OA22X1_RVT U324 ( .A1(n290), .A2(n61), .A3(n99), .A4(n1613), .Y(n1048) );
  OR2X1_RVT U325 ( .A1(n81), .A2(n215), .Y(n1049) );
  NAND2X0_RVT U326 ( .A1(n1052), .A2(n1053), .Y(n1707) );
  OA22X1_RVT U327 ( .A1(n289), .A2(n60), .A3(n103), .A4(n1612), .Y(n1052) );
  OR2X1_RVT U328 ( .A1(n79), .A2(n214), .Y(n1053) );
  NAND2X0_RVT U329 ( .A1(n1056), .A2(n1057), .Y(n1708) );
  OA22X1_RVT U330 ( .A1(n288), .A2(n65), .A3(n96), .A4(n1611), .Y(n1056) );
  OR2X1_RVT U331 ( .A1(n81), .A2(n213), .Y(n1057) );
  NAND2X0_RVT U332 ( .A1(n1060), .A2(n1061), .Y(n1709) );
  OA22X1_RVT U333 ( .A1(n287), .A2(n66), .A3(n96), .A4(n1610), .Y(n1060) );
  OR2X1_RVT U334 ( .A1(n81), .A2(n212), .Y(n1061) );
  NAND2X0_RVT U335 ( .A1(n1064), .A2(n1065), .Y(n1710) );
  OA22X1_RVT U336 ( .A1(n286), .A2(n61), .A3(n106), .A4(n1609), .Y(n1064) );
  OR2X1_RVT U337 ( .A1(n82), .A2(n211), .Y(n1065) );
  NAND2X0_RVT U338 ( .A1(n1068), .A2(n1069), .Y(n1711) );
  OA22X1_RVT U339 ( .A1(n285), .A2(n994), .A3(n105), .A4(n1608), .Y(n1068) );
  OR2X1_RVT U340 ( .A1(n82), .A2(n210), .Y(n1069) );
  NAND2X0_RVT U341 ( .A1(n1080), .A2(n1081), .Y(n1714) );
  OA22X1_RVT U342 ( .A1(n282), .A2(n61), .A3(n100), .A4(n1605), .Y(n1080) );
  OR2X1_RVT U343 ( .A1(n78), .A2(n207), .Y(n1081) );
  NAND2X0_RVT U344 ( .A1(n1088), .A2(n1089), .Y(n1716) );
  OA22X1_RVT U345 ( .A1(n280), .A2(n60), .A3(n106), .A4(n1603), .Y(n1088) );
  OR2X1_RVT U346 ( .A1(n78), .A2(n205), .Y(n1089) );
  NAND2X0_RVT U347 ( .A1(n1096), .A2(n1097), .Y(n1718) );
  OA22X1_RVT U348 ( .A1(n278), .A2(n62), .A3(n104), .A4(n1601), .Y(n1096) );
  OR2X1_RVT U349 ( .A1(n82), .A2(n203), .Y(n1097) );
  NAND2X0_RVT U350 ( .A1(n1104), .A2(n1105), .Y(n1720) );
  OA22X1_RVT U351 ( .A1(n276), .A2(n994), .A3(n101), .A4(n1599), .Y(n1104) );
  OR2X1_RVT U352 ( .A1(n77), .A2(n201), .Y(n1105) );
  NAND2X0_RVT U353 ( .A1(n1112), .A2(n1113), .Y(n1722) );
  OA22X1_RVT U354 ( .A1(n271), .A2(n62), .A3(n100), .A4(n1597), .Y(n1112) );
  OR2X1_RVT U355 ( .A1(n81), .A2(n199), .Y(n1113) );
  NAND2X0_RVT U356 ( .A1(n1288), .A2(n1289), .Y(n1758) );
  OA22X1_RVT U357 ( .A1(n273), .A2(n74), .A3(n99), .A4(n1593), .Y(n1288) );
  OR2X1_RVT U358 ( .A1(n92), .A2(n200), .Y(n1289) );
  NAND2X0_RVT U359 ( .A1(n1296), .A2(n1297), .Y(n1760) );
  OA22X1_RVT U360 ( .A1(n277), .A2(n71), .A3(n104), .A4(n1591), .Y(n1296) );
  OR2X1_RVT U361 ( .A1(n92), .A2(n202), .Y(n1297) );
  NAND2X0_RVT U362 ( .A1(n1320), .A2(n1321), .Y(n1766) );
  OA22X1_RVT U363 ( .A1(n283), .A2(n68), .A3(n106), .A4(n1585), .Y(n1320) );
  OR2X1_RVT U364 ( .A1(n88), .A2(n208), .Y(n1321) );
  NAND2X0_RVT U365 ( .A1(n1324), .A2(n1325), .Y(n1767) );
  OA22X1_RVT U366 ( .A1(n284), .A2(n70), .A3(n105), .A4(n1584), .Y(n1324) );
  OR2X1_RVT U367 ( .A1(n89), .A2(n209), .Y(n1325) );
  NAND2X0_RVT U368 ( .A1(n1328), .A2(n1329), .Y(n1768) );
  OA22X1_RVT U369 ( .A1(n285), .A2(n70), .A3(n104), .A4(n1583), .Y(n1328) );
  OR2X1_RVT U370 ( .A1(n89), .A2(n210), .Y(n1329) );
  NAND2X0_RVT U371 ( .A1(n1332), .A2(n1333), .Y(n1769) );
  OA22X1_RVT U372 ( .A1(n286), .A2(n70), .A3(n103), .A4(n1582), .Y(n1332) );
  OR2X1_RVT U373 ( .A1(n88), .A2(n211), .Y(n1333) );
  NAND2X0_RVT U374 ( .A1(n1336), .A2(n1337), .Y(n1770) );
  OA22X1_RVT U375 ( .A1(n287), .A2(n70), .A3(n104), .A4(n1581), .Y(n1336) );
  OR2X1_RVT U376 ( .A1(n89), .A2(n212), .Y(n1337) );
  NAND2X0_RVT U377 ( .A1(n1344), .A2(n1345), .Y(n1772) );
  OA22X1_RVT U378 ( .A1(n289), .A2(n74), .A3(n104), .A4(n1579), .Y(n1344) );
  OR2X1_RVT U379 ( .A1(n88), .A2(n214), .Y(n1345) );
  NAND2X0_RVT U380 ( .A1(n1368), .A2(n1369), .Y(n1778) );
  OA22X1_RVT U381 ( .A1(n295), .A2(n68), .A3(n100), .A4(n1573), .Y(n1368) );
  OR2X1_RVT U382 ( .A1(n88), .A2(n221), .Y(n1369) );
  NAND2X0_RVT U383 ( .A1(n1380), .A2(n1381), .Y(n1781) );
  OA22X1_RVT U384 ( .A1(n299), .A2(n68), .A3(n96), .A4(n1570), .Y(n1380) );
  OR2X1_RVT U385 ( .A1(n88), .A2(n226), .Y(n1381) );
  NAND2X0_RVT U386 ( .A1(n1384), .A2(n1385), .Y(n1782) );
  OA22X1_RVT U387 ( .A1(n302), .A2(n68), .A3(n103), .A4(n1569), .Y(n1384) );
  OR2X1_RVT U388 ( .A1(n89), .A2(n227), .Y(n1385) );
  NAND2X0_RVT U389 ( .A1(n1392), .A2(n1393), .Y(n1784) );
  OA22X1_RVT U390 ( .A1(n304), .A2(n70), .A3(n106), .A4(n1567), .Y(n1392) );
  OR2X1_RVT U391 ( .A1(n88), .A2(n229), .Y(n1393) );
  NAND2X0_RVT U392 ( .A1(n1396), .A2(n1397), .Y(n1785) );
  OA22X1_RVT U393 ( .A1(n305), .A2(n74), .A3(n105), .A4(n1566), .Y(n1396) );
  OR2X1_RVT U394 ( .A1(n89), .A2(n230), .Y(n1397) );
  NAND2X0_RVT U395 ( .A1(n1400), .A2(n1401), .Y(n1786) );
  OA22X1_RVT U396 ( .A1(n306), .A2(n68), .A3(n104), .A4(n1565), .Y(n1400) );
  OR2X1_RVT U397 ( .A1(n89), .A2(n231), .Y(n1401) );
  NAND2X0_RVT U398 ( .A1(n1404), .A2(n1405), .Y(n1787) );
  OA22X1_RVT U399 ( .A1(n307), .A2(n70), .A3(n103), .A4(n1564), .Y(n1404) );
  OR2X1_RVT U400 ( .A1(n92), .A2(n232), .Y(n1405) );
  NAND2X0_RVT U401 ( .A1(n996), .A2(n997), .Y(n1693) );
  OR2X1_RVT U402 ( .A1(n993), .A2(n231), .Y(n997) );
  OA22X1_RVT U403 ( .A1(n306), .A2(n65), .A3(n101), .A4(n1626), .Y(n996) );
  NAND2X0_RVT U404 ( .A1(n1000), .A2(n1001), .Y(n1694) );
  OA22X1_RVT U405 ( .A1(n305), .A2(n66), .A3(n101), .A4(n1625), .Y(n1000) );
  OR2X1_RVT U406 ( .A1(n82), .A2(n230), .Y(n1001) );
  NAND2X0_RVT U407 ( .A1(n1004), .A2(n1005), .Y(n1695) );
  OA22X1_RVT U408 ( .A1(n304), .A2(n61), .A3(n99), .A4(n1624), .Y(n1004) );
  OR2X1_RVT U409 ( .A1(n77), .A2(n229), .Y(n1005) );
  NAND2X0_RVT U410 ( .A1(n1008), .A2(n1009), .Y(n1696) );
  OA22X1_RVT U411 ( .A1(n303), .A2(n65), .A3(n100), .A4(n1623), .Y(n1008) );
  OR2X1_RVT U412 ( .A1(n82), .A2(n228), .Y(n1009) );
  NAND2X0_RVT U413 ( .A1(n1012), .A2(n1013), .Y(n1697) );
  OR2X1_RVT U414 ( .A1(n77), .A2(n227), .Y(n1013) );
  OA22X1_RVT U415 ( .A1(n302), .A2(n60), .A3(n99), .A4(n1622), .Y(n1012) );
  NAND2X0_RVT U416 ( .A1(n1016), .A2(n1017), .Y(n1698) );
  OA22X1_RVT U417 ( .A1(n299), .A2(n65), .A3(n100), .A4(n1621), .Y(n1016) );
  OR2X1_RVT U418 ( .A1(n78), .A2(n226), .Y(n1017) );
  NAND2X0_RVT U419 ( .A1(n1020), .A2(n1021), .Y(n1699) );
  OR2X1_RVT U420 ( .A1(n79), .A2(n225), .Y(n1021) );
  OA22X1_RVT U421 ( .A1(n298), .A2(n66), .A3(n105), .A4(n1620), .Y(n1020) );
  NAND2X0_RVT U422 ( .A1(n1024), .A2(n1025), .Y(n1700) );
  OA22X1_RVT U423 ( .A1(n296), .A2(n994), .A3(n101), .A4(n1619), .Y(n1024) );
  OR2X1_RVT U424 ( .A1(n78), .A2(n222), .Y(n1025) );
  NAND2X0_RVT U425 ( .A1(n1036), .A2(n1037), .Y(n1703) );
  OA22X1_RVT U426 ( .A1(n293), .A2(n66), .A3(n104), .A4(n1616), .Y(n1036) );
  OR2X1_RVT U427 ( .A1(n78), .A2(n218), .Y(n1037) );
  NAND2X0_RVT U428 ( .A1(n1108), .A2(n1109), .Y(n1721) );
  OA22X1_RVT U429 ( .A1(n273), .A2(n60), .A3(n99), .A4(n1598), .Y(n1108) );
  OR2X1_RVT U430 ( .A1(n77), .A2(n200), .Y(n1109) );
  NAND2X0_RVT U431 ( .A1(n1116), .A2(n1117), .Y(n1723) );
  OA22X1_RVT U432 ( .A1(n270), .A2(n65), .A3(n96), .A4(n1596), .Y(n1116) );
  OR2X1_RVT U433 ( .A1(n993), .A2(n196), .Y(n1117) );
  NAND2X0_RVT U434 ( .A1(n1308), .A2(n1309), .Y(n1763) );
  OA22X1_RVT U435 ( .A1(n280), .A2(n71), .A3(n103), .A4(n1588), .Y(n1308) );
  OR2X1_RVT U436 ( .A1(n89), .A2(n205), .Y(n1309) );
  NAND2X0_RVT U437 ( .A1(n1316), .A2(n1317), .Y(n1765) );
  OA22X1_RVT U438 ( .A1(n282), .A2(n68), .A3(n103), .A4(n1586), .Y(n1316) );
  OR2X1_RVT U439 ( .A1(n91), .A2(n207), .Y(n1317) );
  NAND2X0_RVT U440 ( .A1(n1340), .A2(n1341), .Y(n1771) );
  OA22X1_RVT U441 ( .A1(n288), .A2(n71), .A3(n104), .A4(n1580), .Y(n1340) );
  OR2X1_RVT U442 ( .A1(n91), .A2(n213), .Y(n1341) );
  NAND2X0_RVT U443 ( .A1(n1364), .A2(n1365), .Y(n1777) );
  OR2X1_RVT U444 ( .A1(n92), .A2(n219), .Y(n1365) );
  OA22X1_RVT U445 ( .A1(n294), .A2(n71), .A3(n100), .A4(n1574), .Y(n1364) );
  NAND2X0_RVT U446 ( .A1(n1372), .A2(n1373), .Y(n1779) );
  OA22X1_RVT U447 ( .A1(n296), .A2(n68), .A3(n101), .A4(n1572), .Y(n1372) );
  OR2X1_RVT U448 ( .A1(n89), .A2(n222), .Y(n1373) );
  NAND2X0_RVT U449 ( .A1(n1376), .A2(n1377), .Y(n1780) );
  OR2X1_RVT U450 ( .A1(n91), .A2(n225), .Y(n1377) );
  OA22X1_RVT U451 ( .A1(n298), .A2(n70), .A3(n99), .A4(n1571), .Y(n1376) );
  NAND2X0_RVT U452 ( .A1(n1388), .A2(n1389), .Y(n1783) );
  OA22X1_RVT U453 ( .A1(n303), .A2(n68), .A3(n104), .A4(n1568), .Y(n1388) );
  OR2X1_RVT U454 ( .A1(n88), .A2(n228), .Y(n1389) );
  NAND2X0_RVT U455 ( .A1(n860), .A2(n861), .Y(n1663) );
  OR2X1_RVT U456 ( .A1(n76), .A2(n191), .Y(n861) );
  OA22X1_RVT U457 ( .A1(n265), .A2(n53), .A3(n138), .A4(n1656), .Y(n860) );
  NAND2X0_RVT U458 ( .A1(n1141), .A2(n1142), .Y(n1725) );
  OR2X1_RVT U459 ( .A1(n84), .A2(n159), .Y(n1142) );
  OA22X1_RVT U460 ( .A1(n234), .A2(n58), .A3(n1507), .A4(n37), .Y(n1141) );
  NAND2X0_RVT U461 ( .A1(n1145), .A2(n1146), .Y(n1726) );
  OR2X1_RVT U462 ( .A1(n85), .A2(n160), .Y(n1146) );
  OA22X1_RVT U463 ( .A1(n235), .A2(n59), .A3(n1508), .A4(n37), .Y(n1145) );
  NAND2X0_RVT U464 ( .A1(n1165), .A2(n1166), .Y(n1731) );
  OR2X1_RVT U465 ( .A1(n1139), .A2(n166), .Y(n1166) );
  OA22X1_RVT U466 ( .A1(n240), .A2(n59), .A3(n1513), .A4(n39), .Y(n1165) );
  NAND2X0_RVT U467 ( .A1(n1153), .A2(n1154), .Y(n1728) );
  OR2X1_RVT U468 ( .A1(n84), .A2(n162), .Y(n1154) );
  NAND2X0_RVT U469 ( .A1(n839), .A2(n840), .Y(n1660) );
  OR2X1_RVT U470 ( .A1(n76), .A2(n194), .Y(n840) );
  OA22X1_RVT U471 ( .A1(n269), .A2(n53), .A3(n137), .A4(n1659), .Y(n839) );
  NAND2X0_RVT U472 ( .A1(n852), .A2(n853), .Y(n1661) );
  OR2X1_RVT U473 ( .A1(n141), .A2(n193), .Y(n853) );
  OA22X1_RVT U474 ( .A1(n268), .A2(n54), .A3(n35), .A4(n1658), .Y(n852) );
  NAND2X0_RVT U475 ( .A1(n868), .A2(n869), .Y(n1665) );
  OR2X1_RVT U476 ( .A1(n76), .A2(n188), .Y(n869) );
  OA22X1_RVT U477 ( .A1(n263), .A2(n53), .A3(n136), .A4(n1654), .Y(n868) );
  NAND2X0_RVT U478 ( .A1(n872), .A2(n873), .Y(n1666) );
  OR2X1_RVT U479 ( .A1(n849), .A2(n187), .Y(n873) );
  NAND2X0_RVT U480 ( .A1(n876), .A2(n877), .Y(n1667) );
  OR2X1_RVT U481 ( .A1(n849), .A2(n186), .Y(n877) );
  NAND2X0_RVT U482 ( .A1(n1129), .A2(n1130), .Y(n1724) );
  OA22X1_RVT U483 ( .A1(n233), .A2(n58), .A3(n1506), .A4(n35), .Y(n1129) );
  OR2X1_RVT U484 ( .A1(n1139), .A2(n158), .Y(n1130) );
  NAND2X0_RVT U485 ( .A1(n1149), .A2(n1150), .Y(n1727) );
  OR2X1_RVT U486 ( .A1(n86), .A2(n161), .Y(n1150) );
  OA22X1_RVT U487 ( .A1(n236), .A2(n58), .A3(n1509), .A4(n137), .Y(n1149) );
  NAND2X0_RVT U488 ( .A1(n1157), .A2(n1158), .Y(n1729) );
  OR2X1_RVT U489 ( .A1(n87), .A2(n163), .Y(n1158) );
  NAND2X0_RVT U490 ( .A1(n1161), .A2(n1162), .Y(n1730) );
  OR2X1_RVT U491 ( .A1(n85), .A2(n164), .Y(n1162) );
  OA22X1_RVT U492 ( .A1(n239), .A2(n57), .A3(n1512), .A4(n136), .Y(n1161) );
  NAND2X0_RVT U493 ( .A1(n1169), .A2(n1170), .Y(n1732) );
  OA22X1_RVT U494 ( .A1(n242), .A2(n59), .A3(n1514), .A4(n35), .Y(n1169) );
  OR2X1_RVT U495 ( .A1(n87), .A2(n167), .Y(n1170) );
  NAND2X0_RVT U496 ( .A1(n1233), .A2(n1234), .Y(n1748) );
  OR2X1_RVT U497 ( .A1(n86), .A2(n186), .Y(n1234) );
  NAND2X0_RVT U498 ( .A1(n1241), .A2(n1242), .Y(n1750) );
  OA22X1_RVT U499 ( .A1(n263), .A2(n57), .A3(n1532), .A4(n36), .Y(n1241) );
  OR2X1_RVT U500 ( .A1(n84), .A2(n188), .Y(n1242) );
  NAND2X0_RVT U501 ( .A1(n1253), .A2(n1254), .Y(n1753) );
  OR2X1_RVT U502 ( .A1(n86), .A2(n192), .Y(n1254) );
  NAND2X0_RVT U503 ( .A1(n1257), .A2(n1258), .Y(n1754) );
  OA22X1_RVT U504 ( .A1(n268), .A2(n56), .A3(n1536), .A4(n37), .Y(n1257) );
  OR2X1_RVT U505 ( .A1(n86), .A2(n193), .Y(n1258) );
  NAND2X0_RVT U506 ( .A1(n72), .A2(n73), .Y(rf_dout[7]) );
  OA221X1_RVT U507 ( .A1(n1548), .A2(n38), .A3(n144), .A4(n261), .A5(n95), .Y(
        n72) );
  OA221X1_RVT U508 ( .A1(n27), .A2(n298), .A3(n29), .A4(n186), .A5(n90), .Y(
        n73) );
  OA22X1_RVT U509 ( .A1(n1558), .A2(n110), .A3(n30), .A4(n9), .Y(n95) );
  NAND2X0_RVT U510 ( .A1(n806), .A2(n807), .Y(rf_dout[0]) );
  OA221X1_RVT U511 ( .A1(n1541), .A2(n38), .A3(n144), .A4(n269), .A5(n836), 
        .Y(n806) );
  OA221X1_RVT U512 ( .A1(n34), .A2(n307), .A3(n29), .A4(n194), .A5(n829), .Y(
        n807) );
  OA22X1_RVT U513 ( .A1(n1505), .A2(n111), .A3(n30), .A4(n7), .Y(n836) );
  NAND2X0_RVT U514 ( .A1(n530), .A2(n531), .Y(rf_dout[1]) );
  OA221X1_RVT U515 ( .A1(n1542), .A2(n38), .A3(n146), .A4(n268), .A5(n553), 
        .Y(n530) );
  OA221X1_RVT U516 ( .A1(n33), .A2(n306), .A3(n42), .A4(n193), .A5(n548), .Y(
        n531) );
  OA22X1_RVT U517 ( .A1(n1552), .A2(n111), .A3(n28), .A4(n8), .Y(n553) );
  NAND2X0_RVT U518 ( .A1(n249), .A2(n250), .Y(rf_dout[2]) );
  OA221X1_RVT U519 ( .A1(n1543), .A2(n38), .A3(n144), .A4(n266), .A5(n272), 
        .Y(n249) );
  OA221X1_RVT U520 ( .A1(n33), .A2(n305), .A3(n43), .A4(n192), .A5(n267), .Y(
        n250) );
  OA22X1_RVT U521 ( .A1(n1553), .A2(n110), .A3(n26), .A4(n6), .Y(n272) );
  NAND2X0_RVT U522 ( .A1(n172), .A2(n173), .Y(rf_dout[3]) );
  OA221X1_RVT U523 ( .A1(n1544), .A2(n38), .A3(n144), .A4(n265), .A5(n195), 
        .Y(n172) );
  OA221X1_RVT U524 ( .A1(n32), .A2(n304), .A3(n42), .A4(n191), .A5(n190), .Y(
        n173) );
  OA22X1_RVT U525 ( .A1(n1554), .A2(n110), .A3(n28), .A4(n5), .Y(n195) );
  NAND2X0_RVT U526 ( .A1(n147), .A2(n148), .Y(rf_dout[4]) );
  OA221X1_RVT U527 ( .A1(n1545), .A2(n38), .A3(n144), .A4(n264), .A5(n170), 
        .Y(n147) );
  OA221X1_RVT U528 ( .A1(n33), .A2(n303), .A3(n45), .A4(n189), .A5(n165), .Y(
        n148) );
  OA22X1_RVT U529 ( .A1(n1555), .A2(n110), .A3(n30), .A4(n10), .Y(n170) );
  NAND2X0_RVT U530 ( .A1(n122), .A2(n123), .Y(rf_dout[5]) );
  OA221X1_RVT U531 ( .A1(n1546), .A2(n38), .A3(n146), .A4(n263), .A5(n145), 
        .Y(n122) );
  OA221X1_RVT U532 ( .A1(n32), .A2(n302), .A3(n45), .A4(n188), .A5(n140), .Y(
        n123) );
  OA22X1_RVT U533 ( .A1(n1556), .A2(n110), .A3(n44), .A4(n11), .Y(n145) );
  NAND2X0_RVT U534 ( .A1(n97), .A2(n98), .Y(rf_dout[6]) );
  OA221X1_RVT U535 ( .A1(n1547), .A2(n38), .A3(n144), .A4(n262), .A5(n120), 
        .Y(n97) );
  OA221X1_RVT U536 ( .A1(n33), .A2(n299), .A3(n42), .A4(n187), .A5(n115), .Y(
        n98) );
  OA22X1_RVT U537 ( .A1(n1557), .A2(n110), .A3(n26), .A4(n12), .Y(n120) );
  NAND2X0_RVT U538 ( .A1(n46), .A2(n47), .Y(rf_dout[8]) );
  OA221X1_RVT U539 ( .A1(n1549), .A2(n38), .A3(n144), .A4(n260), .A5(n69), .Y(
        n46) );
  OA221X1_RVT U540 ( .A1(n34), .A2(n296), .A3(n45), .A4(n185), .A5(n64), .Y(
        n47) );
  OA22X1_RVT U541 ( .A1(n110), .A2(n330), .A3(n30), .A4(n13), .Y(n69) );
  NAND2X0_RVT U542 ( .A1(n1), .A2(n2), .Y(rf_dout[9]) );
  OA221X1_RVT U543 ( .A1(n1550), .A2(n38), .A3(n144), .A4(n259), .A5(n41), .Y(
        n1) );
  OA221X1_RVT U544 ( .A1(n34), .A2(n295), .A3(n43), .A4(n184), .A5(n31), .Y(n2) );
  OA22X1_RVT U545 ( .A1(n111), .A2(n329), .A3(n26), .A4(n14), .Y(n41) );
  NAND2X0_RVT U546 ( .A1(n780), .A2(n781), .Y(rf_dout[10]) );
  OA221X1_RVT U547 ( .A1(n1551), .A2(n38), .A3(n146), .A4(n258), .A5(n803), 
        .Y(n780) );
  OA221X1_RVT U548 ( .A1(n32), .A2(n294), .A3(n42), .A4(n183), .A5(n798), .Y(
        n781) );
  OA22X1_RVT U549 ( .A1(n111), .A2(n328), .A3(n44), .A4(n15), .Y(n803) );
  NAND2X0_RVT U550 ( .A1(n755), .A2(n756), .Y(rf_dout[11]) );
  OA221X1_RVT U551 ( .A1(n44), .A2(n359), .A3(n146), .A4(n257), .A5(n777), .Y(
        n755) );
  NAND2X0_RVT U552 ( .A1(n730), .A2(n731), .Y(rf_dout[12]) );
  OA221X1_RVT U553 ( .A1(n30), .A2(n358), .A3(n146), .A4(n256), .A5(n752), .Y(
        n730) );
  NAND2X0_RVT U554 ( .A1(n705), .A2(n706), .Y(rf_dout[13]) );
  OA221X1_RVT U555 ( .A1(n44), .A2(n357), .A3(n146), .A4(n255), .A5(n727), .Y(
        n705) );
  NAND2X0_RVT U556 ( .A1(n680), .A2(n681), .Y(rf_dout[14]) );
  OA221X1_RVT U557 ( .A1(n26), .A2(n356), .A3(n146), .A4(n254), .A5(n702), .Y(
        n680) );
  NAND2X0_RVT U558 ( .A1(n655), .A2(n656), .Y(rf_dout[15]) );
  OA221X1_RVT U559 ( .A1(n26), .A2(n355), .A3(n146), .A4(n253), .A5(n677), .Y(
        n655) );
  NAND2X0_RVT U560 ( .A1(n630), .A2(n631), .Y(rf_dout[16]) );
  OA221X1_RVT U561 ( .A1(n28), .A2(n354), .A3(n146), .A4(n252), .A5(n652), .Y(
        n630) );
  NAND2X0_RVT U562 ( .A1(n605), .A2(n606), .Y(rf_dout[17]) );
  OA221X1_RVT U563 ( .A1(n44), .A2(n351), .A3(n146), .A4(n251), .A5(n627), .Y(
        n605) );
  NAND2X0_RVT U564 ( .A1(n580), .A2(n581), .Y(rf_dout[18]) );
  OA221X1_RVT U565 ( .A1(n44), .A2(n350), .A3(n146), .A4(n248), .A5(n602), .Y(
        n580) );
  NAND2X0_RVT U566 ( .A1(n555), .A2(n556), .Y(rf_dout[19]) );
  OA221X1_RVT U567 ( .A1(n28), .A2(n348), .A3(n146), .A4(n247), .A5(n577), .Y(
        n555) );
  NAND2X0_RVT U568 ( .A1(n505), .A2(n506), .Y(rf_dout[20]) );
  OA221X1_RVT U569 ( .A1(n30), .A2(n347), .A3(n144), .A4(n245), .A5(n527), .Y(
        n505) );
  NAND2X0_RVT U570 ( .A1(n480), .A2(n481), .Y(rf_dout[21]) );
  OA221X1_RVT U571 ( .A1(n28), .A2(n346), .A3(n144), .A4(n244), .A5(n502), .Y(
        n480) );
  NAND2X0_RVT U572 ( .A1(n455), .A2(n456), .Y(rf_dout[22]) );
  OA221X1_RVT U573 ( .A1(n26), .A2(n345), .A3(n144), .A4(n243), .A5(n477), .Y(
        n455) );
  NAND2X0_RVT U574 ( .A1(n430), .A2(n431), .Y(rf_dout[23]) );
  OA221X1_RVT U575 ( .A1(n44), .A2(n344), .A3(n144), .A4(n242), .A5(n452), .Y(
        n430) );
  INVX1_RVT U576 ( .A(wb_addr_i[5]), .Y(n363) );
  INVX1_RVT U577 ( .A(wb_addr_i[2]), .Y(n365) );
  NAND2X0_RVT U578 ( .A1(n956), .A2(n957), .Y(n1687) );
  OR2X1_RVT U579 ( .A1(n141), .A2(n162), .Y(n957) );
  OA22X1_RVT U580 ( .A1(n237), .A2(n52), .A3(n35), .A4(n1632), .Y(n956) );
  OA22X1_RVT U581 ( .A1(n284), .A2(n60), .A3(n99), .A4(n1607), .Y(n1072) );
  OR2X1_RVT U582 ( .A1(n77), .A2(n209), .Y(n1073) );
  NAND2X0_RVT U583 ( .A1(n838), .A2(wb_addr_i[3]), .Y(n38) );
  NAND2X0_RVT U584 ( .A1(n1032), .A2(n1033), .Y(n1702) );
  OA22X1_RVT U585 ( .A1(n294), .A2(n62), .A3(n103), .A4(n1617), .Y(n1032) );
  OR2X1_RVT U586 ( .A1(n993), .A2(n219), .Y(n1033) );
  NAND2X0_RVT U587 ( .A1(n1076), .A2(n1077), .Y(n1713) );
  OA22X1_RVT U588 ( .A1(n283), .A2(n62), .A3(n96), .A4(n1606), .Y(n1076) );
  OR2X1_RVT U589 ( .A1(n79), .A2(n208), .Y(n1077) );
  NAND2X0_RVT U590 ( .A1(n1084), .A2(n1085), .Y(n1715) );
  OA22X1_RVT U591 ( .A1(n281), .A2(n994), .A3(n96), .A4(n1604), .Y(n1084) );
  OR2X1_RVT U592 ( .A1(n77), .A2(n206), .Y(n1085) );
  OA22X1_RVT U593 ( .A1(n307), .A2(n60), .A3(n99), .A4(n1627), .Y(n983) );
  OR2X1_RVT U594 ( .A1(n993), .A2(n232), .Y(n984) );
  NAND2X0_RVT U595 ( .A1(n1028), .A2(n1029), .Y(n1701) );
  OA22X1_RVT U596 ( .A1(n295), .A2(n60), .A3(n99), .A4(n1618), .Y(n1028) );
  OR2X1_RVT U597 ( .A1(n77), .A2(n221), .Y(n1029) );
  NAND2X0_RVT U598 ( .A1(n1092), .A2(n1093), .Y(n1717) );
  OA22X1_RVT U599 ( .A1(n279), .A2(n60), .A3(n105), .A4(n1602), .Y(n1092) );
  OR2X1_RVT U600 ( .A1(n77), .A2(n204), .Y(n1093) );
  NAND2X0_RVT U601 ( .A1(n856), .A2(n857), .Y(n1662) );
  OR2X1_RVT U602 ( .A1(n76), .A2(n192), .Y(n857) );
  OA22X1_RVT U603 ( .A1(n266), .A2(n54), .A3(n36), .A4(n1657), .Y(n856) );
  NAND2X0_RVT U604 ( .A1(n864), .A2(n865), .Y(n1664) );
  OR2X1_RVT U605 ( .A1(n76), .A2(n189), .Y(n865) );
  OA22X1_RVT U606 ( .A1(n264), .A2(n54), .A3(n37), .A4(n1655), .Y(n864) );
  AO22X1_RVT U607 ( .A1(poc[0]), .A2(n133), .A3(n132), .A4(mc_data_i[0]), .Y(
        n1806) );
  AO22X1_RVT U608 ( .A1(poc[1]), .A2(n133), .A3(mc_data_i[1]), .A4(n132), .Y(
        n1807) );
  AO22X1_RVT U609 ( .A1(poc[2]), .A2(n133), .A3(mc_data_i[2]), .A4(n132), .Y(
        n1808) );
  AO22X1_RVT U610 ( .A1(poc[3]), .A2(n133), .A3(mc_data_i[3]), .A4(n132), .Y(
        n1809) );
  AO22X1_RVT U611 ( .A1(poc[4]), .A2(n133), .A3(mc_data_i[4]), .A4(n132), .Y(
        n1810) );
  AO22X1_RVT U612 ( .A1(poc[5]), .A2(n133), .A3(mc_data_i[5]), .A4(n132), .Y(
        n1811) );
  AO22X1_RVT U613 ( .A1(poc[6]), .A2(n133), .A3(mc_data_i[6]), .A4(n132), .Y(
        n1812) );
  AO22X1_RVT U614 ( .A1(poc[7]), .A2(n133), .A3(mc_data_i[7]), .A4(n132), .Y(
        n1813) );
  AO22X1_RVT U615 ( .A1(n309), .A2(cs[1]), .A3(cs_le), .A4(cs1), .Y(n1788) );
  AO22X1_RVT U616 ( .A1(n309), .A2(cs[0]), .A3(cs_le), .A4(cs0), .Y(n1795) );
  OAI22X1_RVT U617 ( .A1(n308), .A2(n1504), .A3(n1486), .A4(n1487), .Y(n1872)
         );
  INVX1_RVT U618 ( .A(n1490), .Y(n308) );
  OR2X1_RVT U619 ( .A1(n1490), .A2(n1488), .Y(n1487) );
  OA21X1_RVT U620 ( .A1(n309), .A2(n156), .A3(wb_cyc_i), .Y(n1490) );
  INVX1_RVT U621 ( .A(csc1[1]), .Y(n193) );
  INVX1_RVT U622 ( .A(csc1[2]), .Y(n192) );
  INVX1_RVT U623 ( .A(csc1[3]), .Y(n191) );
  INVX1_RVT U624 ( .A(csc0[1]), .Y(n268) );
  INVX1_RVT U625 ( .A(csc0[2]), .Y(n266) );
  INVX1_RVT U626 ( .A(csc0[3]), .Y(n265) );
  AND4X1_RVT U627 ( .A1(csc0[0]), .A2(n268), .A3(n266), .A4(n265), .Y(
        cs_need_rfr[0]) );
  AND4X1_RVT U628 ( .A1(csc1[0]), .A2(n193), .A3(n192), .A4(n191), .Y(
        cs_need_rfr[1]) );
  AO22X1_RVT U629 ( .A1(wb_data_i[0]), .A2(n18), .A3(n109), .A4(csc_mask[0]), 
        .Y(n1838) );
  AO22X1_RVT U630 ( .A1(wb_data_i[1]), .A2(n18), .A3(n109), .A4(csc_mask[1]), 
        .Y(n1839) );
  AO22X1_RVT U631 ( .A1(wb_data_i[2]), .A2(n18), .A3(n109), .A4(csc_mask[2]), 
        .Y(n1840) );
  AO22X1_RVT U632 ( .A1(wb_data_i[3]), .A2(n18), .A3(n109), .A4(csc_mask[3]), 
        .Y(n1841) );
  AO22X1_RVT U633 ( .A1(wb_data_i[4]), .A2(n18), .A3(n109), .A4(csc_mask[4]), 
        .Y(n1842) );
  AO22X1_RVT U634 ( .A1(wb_data_i[5]), .A2(n18), .A3(n109), .A4(csc_mask[5]), 
        .Y(n1843) );
  AO22X1_RVT U635 ( .A1(wb_data_i[6]), .A2(n18), .A3(n109), .A4(csc_mask[6]), 
        .Y(n1844) );
  AO22X1_RVT U636 ( .A1(wb_data_i[7]), .A2(n18), .A3(n109), .A4(csc_mask[7]), 
        .Y(n1845) );
  AO22X1_RVT U637 ( .A1(wb_data_i[8]), .A2(n18), .A3(n109), .A4(csc_mask[8]), 
        .Y(n1846) );
  AO22X1_RVT U638 ( .A1(wb_data_i[9]), .A2(n18), .A3(n109), .A4(csc_mask[9]), 
        .Y(n1847) );
  AO22X1_RVT U639 ( .A1(wb_data_i[10]), .A2(n18), .A3(n109), .A4(csc_mask[10]), 
        .Y(n1848) );
  NOR2X0_RVT U640 ( .A1(n23), .A2(spec_req_cs[0]), .Y(n981) );
  AO22X1_RVT U641 ( .A1(n108), .A2(wb_data_i[3]), .A3(n48), .A4(n335), .Y(
        n1851) );
  AO22X1_RVT U642 ( .A1(n108), .A2(wb_data_i[6]), .A3(n48), .A4(n332), .Y(
        n1854) );
  AO22X1_RVT U643 ( .A1(wb_data_i[24]), .A2(n108), .A3(rfr_ps_val[0]), .A4(n48), .Y(n1859) );
  AO22X1_RVT U644 ( .A1(wb_data_i[25]), .A2(n108), .A3(rfr_ps_val[1]), .A4(n48), .Y(n1860) );
  AO22X1_RVT U645 ( .A1(wb_data_i[26]), .A2(n108), .A3(rfr_ps_val[2]), .A4(n48), .Y(n1861) );
  AO22X1_RVT U646 ( .A1(wb_data_i[30]), .A2(n108), .A3(rfr_ps_val[6]), .A4(n48), .Y(n1865) );
  AO22X1_RVT U647 ( .A1(n108), .A2(wb_data_i[9]), .A3(ref_int[1]), .A4(n1473), 
        .Y(n1857) );
  AO22X1_RVT U648 ( .A1(wb_data_i[27]), .A2(n108), .A3(rfr_ps_val[3]), .A4(
        n1473), .Y(n1862) );
  AO22X1_RVT U649 ( .A1(wb_data_i[29]), .A2(n108), .A3(rfr_ps_val[5]), .A4(
        n1473), .Y(n1864) );
  AO22X1_RVT U650 ( .A1(wb_data_i[28]), .A2(n49), .A3(rfr_ps_val[4]), .A4(n48), 
        .Y(n1863) );
  AO22X1_RVT U651 ( .A1(wb_data_i[31]), .A2(n49), .A3(rfr_ps_val[7]), .A4(n48), 
        .Y(n1866) );
  AO22X1_RVT U652 ( .A1(n49), .A2(wb_data_i[1]), .A3(n1473), .A4(mc_vpen), .Y(
        n1849) );
  AO22X1_RVT U653 ( .A1(n49), .A2(wb_data_i[4]), .A3(n48), .A4(n334), .Y(n1852) );
  AO22X1_RVT U654 ( .A1(n108), .A2(wb_data_i[5]), .A3(n1473), .A4(n333), .Y(
        n1853) );
  AO22X1_RVT U655 ( .A1(n49), .A2(wb_data_i[7]), .A3(n48), .A4(n331), .Y(n1855) );
  AO22X1_RVT U656 ( .A1(n49), .A2(wb_data_i[8]), .A3(ref_int[0]), .A4(n48), 
        .Y(n1856) );
  AO22X1_RVT U657 ( .A1(n49), .A2(wb_data_i[10]), .A3(ref_int[2]), .A4(n1473), 
        .Y(n1858) );
  AO22X1_RVT U658 ( .A1(n49), .A2(wb_data_i[2]), .A3(n48), .A4(fs), .Y(n1850)
         );
  AND4X1_RVT U659 ( .A1(n1503), .A2(n362), .A3(n366), .A4(n1497), .Y(N45) );
  AND2X1_RVT U660 ( .A1(wb_addr_i[30]), .A2(wb_addr_i[29]), .Y(n1497) );
  AND2X1_RVT U661 ( .A1(n310), .A2(spec_req_cs[0]), .Y(init_ack0) );
  AND2X1_RVT U662 ( .A1(n311), .A2(spec_req_cs[0]), .Y(lmr_ack0) );
  INVX1_RVT U663 ( .A(cs_le), .Y(n309) );
  AO22X1_RVT U664 ( .A1(spec_req_cs[0]), .A2(n360), .A3(n1539), .A4(n1420), 
        .Y(n1796) );
  AO22X1_RVT U665 ( .A1(n1538), .A2(lmr_req0), .A3(init_req0), .A4(init_req), 
        .Y(n1420) );
  AO222X1_RVT U666 ( .A1(lmr_req1), .A2(n1448), .A3(init_req1), .A4(n1445), 
        .A5(spec_req_cs[1]), .A6(n360), .Y(n1804) );
  NOR3X0_RVT U667 ( .A1(init_req0), .A2(n1538), .A3(n360), .Y(n1445) );
  NOR3X0_RVT U668 ( .A1(init_req), .A2(lmr_req0), .A3(n360), .Y(n1448) );
  AND2X1_RVT U669 ( .A1(n310), .A2(spec_req_cs[1]), .Y(init_ack1) );
  AND2X1_RVT U670 ( .A1(n311), .A2(spec_req_cs[1]), .Y(lmr_ack1) );
  INVX1_RVT U671 ( .A(csc1[23]), .Y(n167) );
  INVX1_RVT U672 ( .A(csc1[22]), .Y(n168) );
  INVX1_RVT U673 ( .A(csc1[21]), .Y(n169) );
  INVX1_RVT U674 ( .A(csc1[20]), .Y(n171) );
  INVX1_RVT U675 ( .A(csc1[19]), .Y(n174) );
  INVX1_RVT U676 ( .A(csc1[18]), .Y(n175) );
  INVX1_RVT U677 ( .A(csc1[17]), .Y(n176) );
  INVX1_RVT U678 ( .A(csc1[16]), .Y(n177) );
  NAND3X0_RVT U679 ( .A1(n1495), .A2(n1493), .A3(n1499), .Y(N268) );
  NAND2X0_RVT U680 ( .A1(n1502), .A2(n1538), .Y(n1499) );
  INVX1_RVT U681 ( .A(tms1[0]), .Y(n232) );
  INVX1_RVT U682 ( .A(tms1[1]), .Y(n231) );
  INVX1_RVT U683 ( .A(tms1[2]), .Y(n230) );
  INVX1_RVT U684 ( .A(tms1[3]), .Y(n229) );
  INVX1_RVT U685 ( .A(tms1[4]), .Y(n228) );
  INVX1_RVT U686 ( .A(tms1[5]), .Y(n227) );
  INVX1_RVT U687 ( .A(tms1[6]), .Y(n226) );
  INVX1_RVT U688 ( .A(tms1[7]), .Y(n225) );
  INVX1_RVT U689 ( .A(tms1[8]), .Y(n222) );
  INVX1_RVT U690 ( .A(tms1[9]), .Y(n221) );
  INVX1_RVT U691 ( .A(tms1[10]), .Y(n219) );
  INVX1_RVT U692 ( .A(csc1[15]), .Y(n178) );
  INVX1_RVT U693 ( .A(csc1[14]), .Y(n179) );
  INVX1_RVT U694 ( .A(csc1[13]), .Y(n180) );
  INVX1_RVT U695 ( .A(csc1[12]), .Y(n181) );
  INVX1_RVT U696 ( .A(csc1[11]), .Y(n182) );
  OR2X1_RVT U697 ( .A1(init_ack), .A2(n1500), .Y(n1495) );
  OR2X1_RVT U698 ( .A1(lmr_ack), .A2(n1501), .Y(n1493) );
  INVX1_RVT U699 ( .A(tms0[11]), .Y(n293) );
  INVX1_RVT U700 ( .A(tms0[12]), .Y(n292) );
  INVX1_RVT U701 ( .A(tms0[13]), .Y(n291) );
  INVX1_RVT U702 ( .A(tms0[19]), .Y(n285) );
  INVX1_RVT U703 ( .A(tms0[20]), .Y(n284) );
  INVX1_RVT U704 ( .A(tms0[22]), .Y(n282) );
  INVX1_RVT U705 ( .A(tms0[23]), .Y(n281) );
  INVX1_RVT U706 ( .A(tms0[21]), .Y(n283) );
  INVX1_RVT U707 ( .A(tms0[14]), .Y(n290) );
  INVX1_RVT U708 ( .A(tms0[15]), .Y(n289) );
  INVX1_RVT U709 ( .A(tms0[16]), .Y(n288) );
  INVX1_RVT U710 ( .A(tms0[17]), .Y(n287) );
  INVX1_RVT U711 ( .A(tms0[18]), .Y(n286) );
  INVX1_RVT U712 ( .A(wb_addr_i[31]), .Y(n362) );
  INVX1_RVT U713 ( .A(csc1[8]), .Y(n185) );
  INVX1_RVT U714 ( .A(tms1[23]), .Y(n206) );
  INVX1_RVT U715 ( .A(tms1[22]), .Y(n207) );
  INVX1_RVT U716 ( .A(tms1[21]), .Y(n208) );
  INVX1_RVT U717 ( .A(tms1[20]), .Y(n209) );
  INVX1_RVT U718 ( .A(tms1[19]), .Y(n210) );
  INVX1_RVT U719 ( .A(tms1[18]), .Y(n211) );
  INVX1_RVT U720 ( .A(tms1[17]), .Y(n212) );
  INVX1_RVT U721 ( .A(tms1[16]), .Y(n213) );
  INVX1_RVT U722 ( .A(tms1[15]), .Y(n214) );
  INVX1_RVT U723 ( .A(tms1[14]), .Y(n215) );
  INVX1_RVT U724 ( .A(tms1[13]), .Y(n216) );
  INVX1_RVT U725 ( .A(tms1[12]), .Y(n217) );
  INVX1_RVT U726 ( .A(tms1[11]), .Y(n218) );
  INVX1_RVT U727 ( .A(tms1[31]), .Y(n196) );
  INVX1_RVT U728 ( .A(tms1[30]), .Y(n199) );
  INVX1_RVT U729 ( .A(tms1[29]), .Y(n200) );
  INVX1_RVT U730 ( .A(tms1[28]), .Y(n201) );
  INVX1_RVT U731 ( .A(tms1[27]), .Y(n202) );
  INVX1_RVT U732 ( .A(tms1[26]), .Y(n203) );
  INVX1_RVT U733 ( .A(tms1[25]), .Y(n204) );
  INVX1_RVT U734 ( .A(tms1[24]), .Y(n205) );
  INVX1_RVT U735 ( .A(csc1[0]), .Y(n194) );
  INVX1_RVT U736 ( .A(csc1[4]), .Y(n189) );
  INVX1_RVT U737 ( .A(csc1[10]), .Y(n183) );
  INVX1_RVT U738 ( .A(csc1[9]), .Y(n184) );
  INVX1_RVT U739 ( .A(csc1[7]), .Y(n186) );
  INVX1_RVT U740 ( .A(csc1[6]), .Y(n187) );
  INVX1_RVT U741 ( .A(csc1[5]), .Y(n188) );
  INVX1_RVT U742 ( .A(csc1[31]), .Y(n158) );
  INVX1_RVT U743 ( .A(csc1[30]), .Y(n159) );
  INVX1_RVT U744 ( .A(csc1[29]), .Y(n160) );
  INVX1_RVT U745 ( .A(csc1[28]), .Y(n161) );
  INVX1_RVT U746 ( .A(csc1[27]), .Y(n162) );
  INVX1_RVT U747 ( .A(csc1[26]), .Y(n163) );
  INVX1_RVT U748 ( .A(csc1[25]), .Y(n164) );
  INVX1_RVT U749 ( .A(csc1[24]), .Y(n166) );
  INVX1_RVT U750 ( .A(csc0[23]), .Y(n242) );
  INVX1_RVT U751 ( .A(csc0[22]), .Y(n243) );
  INVX1_RVT U752 ( .A(csc0[21]), .Y(n244) );
  INVX1_RVT U753 ( .A(csc0[20]), .Y(n245) );
  INVX1_RVT U754 ( .A(csc0[19]), .Y(n247) );
  INVX1_RVT U755 ( .A(csc0[18]), .Y(n248) );
  INVX1_RVT U756 ( .A(csc0[17]), .Y(n251) );
  INVX1_RVT U757 ( .A(csc0[16]), .Y(n252) );
  INVX1_RVT U758 ( .A(csc0[8]), .Y(n260) );
  INVX1_RVT U759 ( .A(csc0[15]), .Y(n253) );
  INVX1_RVT U760 ( .A(csc0[14]), .Y(n254) );
  INVX1_RVT U761 ( .A(csc0[13]), .Y(n255) );
  INVX1_RVT U762 ( .A(csc0[12]), .Y(n256) );
  INVX1_RVT U763 ( .A(csc0[11]), .Y(n257) );
  INVX1_RVT U764 ( .A(csc0[10]), .Y(n258) );
  INVX1_RVT U765 ( .A(csc0[9]), .Y(n259) );
  INVX1_RVT U766 ( .A(csc0[7]), .Y(n261) );
  INVX1_RVT U767 ( .A(csc0[6]), .Y(n262) );
  INVX1_RVT U768 ( .A(tms0[7]), .Y(n298) );
  INVX1_RVT U769 ( .A(tms0[6]), .Y(n299) );
  INVX1_RVT U770 ( .A(tms0[5]), .Y(n302) );
  INVX1_RVT U771 ( .A(tms0[4]), .Y(n303) );
  INVX1_RVT U772 ( .A(tms0[3]), .Y(n304) );
  INVX1_RVT U773 ( .A(tms0[2]), .Y(n305) );
  INVX1_RVT U774 ( .A(tms0[1]), .Y(n306) );
  INVX1_RVT U775 ( .A(tms0[0]), .Y(n307) );
  INVX1_RVT U776 ( .A(csc0[31]), .Y(n233) );
  INVX1_RVT U777 ( .A(csc0[30]), .Y(n234) );
  INVX1_RVT U778 ( .A(csc0[29]), .Y(n235) );
  INVX1_RVT U779 ( .A(csc0[28]), .Y(n236) );
  INVX1_RVT U780 ( .A(csc0[27]), .Y(n237) );
  INVX1_RVT U781 ( .A(csc0[26]), .Y(n238) );
  INVX1_RVT U782 ( .A(csc0[25]), .Y(n239) );
  INVX1_RVT U783 ( .A(csc0[24]), .Y(n240) );
  INVX1_RVT U784 ( .A(tms0[25]), .Y(n279) );
  INVX1_RVT U785 ( .A(csc0[4]), .Y(n264) );
  INVX1_RVT U786 ( .A(csc0[5]), .Y(n263) );
  INVX1_RVT U787 ( .A(tms0[10]), .Y(n294) );
  INVX1_RVT U788 ( .A(tms0[9]), .Y(n295) );
  INVX1_RVT U789 ( .A(tms0[8]), .Y(n296) );
  INVX1_RVT U790 ( .A(tms0[31]), .Y(n270) );
  INVX1_RVT U791 ( .A(tms0[30]), .Y(n271) );
  INVX1_RVT U792 ( .A(tms0[29]), .Y(n273) );
  INVX1_RVT U793 ( .A(tms0[28]), .Y(n276) );
  INVX1_RVT U794 ( .A(tms0[27]), .Y(n277) );
  INVX1_RVT U795 ( .A(tms0[26]), .Y(n278) );
  INVX1_RVT U796 ( .A(tms0[24]), .Y(n280) );
  INVX1_RVT U797 ( .A(csc0[0]), .Y(n269) );
  OR2X1_RVT U798 ( .A1(init_req0), .A2(init_req1), .Y(n17) );
  OR2X1_RVT U799 ( .A1(lmr_req0), .A2(lmr_req1), .Y(n16) );
  INVX1_RVT U825 ( .A(n44), .Y(n25) );
  INVX1_RVT U826 ( .A(n25), .Y(n26) );
  INVX1_RVT U827 ( .A(n25), .Y(n28) );
  INVX1_RVT U828 ( .A(n25), .Y(n30) );
  NAND2X0_RVT U829 ( .A1(n838), .A2(wb_addr_i[2]), .Y(n44) );
  INVX1_RVT U830 ( .A(n154), .Y(n32) );
  INVX1_RVT U831 ( .A(n154), .Y(n33) );
  INVX1_RVT U832 ( .A(n154), .Y(n34) );
  INVX1_RVT U833 ( .A(n27), .Y(n154) );
  NBUFFX2_RVT U834 ( .A(n39), .Y(n35) );
  NBUFFX2_RVT U835 ( .A(n39), .Y(n36) );
  NBUFFX2_RVT U836 ( .A(n39), .Y(n37) );
  INVX0_RVT U837 ( .A(cs0), .Y(n241) );
  INVX0_RVT U838 ( .A(n139), .Y(n40) );
  INVX1_RVT U839 ( .A(n153), .Y(n42) );
  INVX1_RVT U840 ( .A(n153), .Y(n43) );
  INVX1_RVT U841 ( .A(n153), .Y(n45) );
  INVX1_RVT U842 ( .A(n29), .Y(n153) );
  NAND4X0_RVT U843 ( .A1(n313), .A2(n312), .A3(n314), .A4(n1481), .Y(n48) );
  INVX1_RVT U844 ( .A(n1473), .Y(n108) );
  INVX1_RVT U845 ( .A(n1473), .Y(n49) );
  NAND4X0_RVT U846 ( .A1(n313), .A2(n312), .A3(n314), .A4(n1481), .Y(n1473) );
  NOR3X0_RVT U847 ( .A1(n1563), .A2(n1562), .A3(n316), .Y(n1481) );
  INVX0_RVT U848 ( .A(n850), .Y(n50) );
  NBUFFX2_RVT U849 ( .A(n850), .Y(n51) );
  INVX1_RVT U850 ( .A(n50), .Y(n52) );
  INVX1_RVT U851 ( .A(n50), .Y(n53) );
  INVX1_RVT U852 ( .A(n50), .Y(n54) );
  INVX0_RVT U853 ( .A(n1140), .Y(n55) );
  NBUFFX2_RVT U854 ( .A(n1140), .Y(n56) );
  INVX1_RVT U855 ( .A(n55), .Y(n57) );
  INVX1_RVT U856 ( .A(n55), .Y(n58) );
  INVX1_RVT U857 ( .A(n55), .Y(n59) );
  NAND2X0_RVT U858 ( .A1(spec_req_cs[0]), .A2(n105), .Y(n60) );
  INVX0_RVT U859 ( .A(n63), .Y(n61) );
  INVX0_RVT U860 ( .A(n63), .Y(n62) );
  INVX0_RVT U861 ( .A(n994), .Y(n63) );
  INVX0_RVT U862 ( .A(n63), .Y(n65) );
  INVX0_RVT U863 ( .A(n63), .Y(n66) );
  NAND2X0_RVT U864 ( .A1(n1072), .A2(n1073), .Y(n1712) );
  INVX0_RVT U865 ( .A(n1283), .Y(n67) );
  NBUFFX2_RVT U866 ( .A(n1283), .Y(n68) );
  INVX1_RVT U867 ( .A(n67), .Y(n70) );
  INVX1_RVT U868 ( .A(n67), .Y(n71) );
  INVX1_RVT U869 ( .A(n67), .Y(n74) );
  INVX0_RVT U870 ( .A(n143), .Y(n75) );
  INVX0_RVT U871 ( .A(n143), .Y(n142) );
  INVX0_RVT U872 ( .A(n143), .Y(n76) );
  INVX0_RVT U873 ( .A(n143), .Y(n141) );
  NAND2X0_RVT U874 ( .A1(n981), .A2(n106), .Y(n77) );
  INVX0_RVT U875 ( .A(n80), .Y(n78) );
  INVX0_RVT U876 ( .A(n80), .Y(n79) );
  INVX0_RVT U877 ( .A(n993), .Y(n80) );
  INVX0_RVT U878 ( .A(n80), .Y(n81) );
  INVX0_RVT U879 ( .A(n80), .Y(n82) );
  NAND2X0_RVT U880 ( .A1(n983), .A2(n984), .Y(n1692) );
  INVX0_RVT U881 ( .A(n1139), .Y(n83) );
  INVX1_RVT U882 ( .A(n83), .Y(n84) );
  INVX1_RVT U883 ( .A(n83), .Y(n85) );
  INVX1_RVT U884 ( .A(n83), .Y(n86) );
  INVX1_RVT U885 ( .A(n83), .Y(n87) );
  INVX0_RVT U886 ( .A(n93), .Y(n88) );
  INVX0_RVT U887 ( .A(n93), .Y(n89) );
  INVX0_RVT U888 ( .A(n93), .Y(n91) );
  INVX0_RVT U889 ( .A(n93), .Y(n92) );
  INVX0_RVT U890 ( .A(n107), .Y(n135) );
  NOR2X0_RVT U891 ( .A1(n94), .A2(n107), .Y(n93) );
  INVX0_RVT U892 ( .A(n851), .Y(n139) );
  INVX0_RVT U893 ( .A(n849), .Y(n143) );
  NAND2X0_RVT U894 ( .A1(n981), .A2(n851), .Y(n849) );
  NAND2X0_RVT U895 ( .A1(n1270), .A2(n851), .Y(n1139) );
  NAND2X0_RVT U896 ( .A1(spec_req_cs[0]), .A2(n851), .Y(n850) );
  NAND2X0_RVT U897 ( .A1(cs0), .A2(n851), .Y(n1140) );
  INVX0_RVT U898 ( .A(n102), .Y(n96) );
  INVX0_RVT U899 ( .A(n107), .Y(n99) );
  INVX0_RVT U900 ( .A(n102), .Y(n100) );
  INVX1_RVT U901 ( .A(n102), .Y(n101) );
  INVX1_RVT U902 ( .A(n135), .Y(n102) );
  INVX0_RVT U903 ( .A(n102), .Y(n103) );
  INVX1_RVT U904 ( .A(n102), .Y(n104) );
  NBUFFX2_RVT U905 ( .A(n135), .Y(n105) );
  NBUFFX2_RVT U906 ( .A(n135), .Y(n106) );
  NAND2X0_RVT U907 ( .A1(cs0), .A2(n135), .Y(n1283) );
  NAND2X0_RVT U908 ( .A1(spec_req_cs[0]), .A2(n105), .Y(n994) );
  NAND2X0_RVT U909 ( .A1(n981), .A2(n106), .Y(n993) );
  AND2X1_RVT U910 ( .A1(cs_le_d), .A2(n366), .Y(n851) );
endmodule


module mc_incn_r_incN_width24_DW01_inc_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;

  wire   [12:2] carry;

  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  HADDX1_RVT U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(SUM[12]), .SO(SUM[11])
         );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module mc_incn_r_incN_width24 ( clk, inc_in, inc_out );
  input [23:0] inc_in;
  output [23:0] inc_out;
  input clk;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, \out_r[12] ,
         \add_94/carry[11] , \add_94/carry[10] , \add_94/carry[9] ,
         \add_94/carry[8] , \add_94/carry[7] , \add_94/carry[6] ,
         \add_94/carry[5] , \add_94/carry[4] , \add_94/carry[3] ,
         \add_94/carry[2] , \add_94/carry[1] ;

  mc_incn_r_incN_width24_DW01_inc_0 add_92 ( .A({1'b0, inc_in[11:0]}), .SUM({
        N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  DFFX1_RVT \out_r_reg[4]  ( .D(N4), .CLK(clk), .Q(inc_out[4]) );
  DFFX1_RVT \out_r_reg[3]  ( .D(N3), .CLK(clk), .Q(inc_out[3]) );
  DFFX1_RVT \out_r_reg[2]  ( .D(N2), .CLK(clk), .Q(inc_out[2]) );
  DFFX1_RVT \out_r_reg[1]  ( .D(N1), .CLK(clk), .Q(inc_out[1]) );
  DFFX1_RVT \out_r_reg[0]  ( .D(N0), .CLK(clk), .Q(inc_out[0]) );
  DFFX1_RVT \out_r_reg[11]  ( .D(N11), .CLK(clk), .Q(inc_out[11]) );
  DFFX1_RVT \out_r_reg[10]  ( .D(N10), .CLK(clk), .Q(inc_out[10]) );
  DFFX1_RVT \out_r_reg[9]  ( .D(N9), .CLK(clk), .Q(inc_out[9]) );
  DFFX1_RVT \out_r_reg[8]  ( .D(N8), .CLK(clk), .Q(inc_out[8]) );
  DFFX1_RVT \out_r_reg[7]  ( .D(N7), .CLK(clk), .Q(inc_out[7]) );
  DFFX1_RVT \out_r_reg[6]  ( .D(N6), .CLK(clk), .Q(inc_out[6]) );
  DFFX1_RVT \out_r_reg[5]  ( .D(N5), .CLK(clk), .Q(inc_out[5]) );
  DFFX1_RVT \out_r_reg[12]  ( .D(N12), .CLK(clk), .Q(\out_r[12] ) );
  XOR2X1_RVT U3 ( .A1(inc_in[23]), .A2(\add_94/carry[11] ), .Y(inc_out[23]) );
  AND2X1_RVT U5 ( .A1(\add_94/carry[10] ), .A2(inc_in[22]), .Y(
        \add_94/carry[11] ) );
  XOR2X1_RVT U6 ( .A1(inc_in[22]), .A2(\add_94/carry[10] ), .Y(inc_out[22]) );
  AND2X1_RVT U7 ( .A1(\add_94/carry[9] ), .A2(inc_in[21]), .Y(
        \add_94/carry[10] ) );
  XOR2X1_RVT U8 ( .A1(inc_in[21]), .A2(\add_94/carry[9] ), .Y(inc_out[21]) );
  AND2X1_RVT U9 ( .A1(\add_94/carry[8] ), .A2(inc_in[20]), .Y(
        \add_94/carry[9] ) );
  XOR2X1_RVT U10 ( .A1(inc_in[20]), .A2(\add_94/carry[8] ), .Y(inc_out[20]) );
  AND2X1_RVT U11 ( .A1(\add_94/carry[7] ), .A2(inc_in[19]), .Y(
        \add_94/carry[8] ) );
  XOR2X1_RVT U12 ( .A1(inc_in[19]), .A2(\add_94/carry[7] ), .Y(inc_out[19]) );
  AND2X1_RVT U13 ( .A1(\add_94/carry[6] ), .A2(inc_in[18]), .Y(
        \add_94/carry[7] ) );
  XOR2X1_RVT U14 ( .A1(inc_in[18]), .A2(\add_94/carry[6] ), .Y(inc_out[18]) );
  AND2X1_RVT U15 ( .A1(\add_94/carry[5] ), .A2(inc_in[17]), .Y(
        \add_94/carry[6] ) );
  XOR2X1_RVT U16 ( .A1(inc_in[17]), .A2(\add_94/carry[5] ), .Y(inc_out[17]) );
  AND2X1_RVT U17 ( .A1(\add_94/carry[4] ), .A2(inc_in[16]), .Y(
        \add_94/carry[5] ) );
  XOR2X1_RVT U18 ( .A1(inc_in[16]), .A2(\add_94/carry[4] ), .Y(inc_out[16]) );
  AND2X1_RVT U19 ( .A1(\add_94/carry[3] ), .A2(inc_in[15]), .Y(
        \add_94/carry[4] ) );
  XOR2X1_RVT U20 ( .A1(inc_in[15]), .A2(\add_94/carry[3] ), .Y(inc_out[15]) );
  AND2X1_RVT U21 ( .A1(\add_94/carry[2] ), .A2(inc_in[14]), .Y(
        \add_94/carry[3] ) );
  XOR2X1_RVT U22 ( .A1(inc_in[14]), .A2(\add_94/carry[2] ), .Y(inc_out[14]) );
  AND2X1_RVT U23 ( .A1(\add_94/carry[1] ), .A2(inc_in[13]), .Y(
        \add_94/carry[2] ) );
  XOR2X1_RVT U24 ( .A1(inc_in[13]), .A2(\add_94/carry[1] ), .Y(inc_out[13]) );
  AND2X1_RVT U25 ( .A1(\out_r[12] ), .A2(inc_in[12]), .Y(\add_94/carry[1] ) );
  XOR2X1_RVT U26 ( .A1(inc_in[12]), .A2(\out_r[12] ), .Y(inc_out[12]) );
endmodule


module mc_adr_sel ( clk, csc, tms, wb_ack_o, wb_stb_i, wb_addr_i, wb_we_i, 
        wb_write_go, wr_hold, cas_, mc_addr, row_adr, bank_adr, rfr_ack, cs_le, 
        cmd_a10, row_sel, lmr_sel, next_adr, wr_cycle, page_size );
  input [31:0] csc;
  input [31:0] tms;
  input [31:0] wb_addr_i;
  output [23:0] mc_addr;
  output [12:0] row_adr;
  output [1:0] bank_adr;
  output [10:0] page_size;
  input clk, wb_ack_o, wb_stb_i, wb_we_i, wb_write_go, wr_hold, cas_, rfr_ack,
         cs_le, cmd_a10, row_sel, lmr_sel, next_adr, wr_cycle;
  wire   csc_9, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N146, N147, N148, N149, n1, n2, n10,
         n21, n22, n24, n28, n30, n33, n35, n37, n39, n41, n43, n45, n47, n49,
         n51, n53, n55, n57, n59, n61, n63, n65, n67, n69, n71, n73, n75, n77,
         n80, n81, n87, n89, n102, n103, n106, n108, n109, n110, n111, n112,
         n113, n116, n117, n118, n122, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n23, n25, n26, n27, n29, n31, n32, n34, n36, n38, n40,
         n42, n44, n46, n48, n50, n52, n54, n56, n58, n60, n62, n64, n66, n68,
         n70, n72, n74, n76, n78, n79, n82, n83, n84, n85, n86, n88, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n104, n105, n107,
         n114, n115, n119, n120, n121, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294;
  wire   [23:0] sram_addr;
  wire   [23:0] acs_addr_pl1;
  assign page_size[0] = 1'b0;
  assign page_size[1] = 1'b0;
  assign page_size[2] = 1'b0;
  assign page_size[3] = 1'b0;
  assign page_size[4] = 1'b0;
  assign page_size[5] = 1'b0;
  assign page_size[6] = 1'b0;
  assign page_size[7] = 1'b0;
  assign csc_9 = csc[9];

  mc_incn_r_incN_width24 u0 ( .clk(clk), .inc_in({n284, n283, n282, n281, n280, 
        n279, n278, n277, n276, n275, n274, n273, n272, n271, n270, n269, n268, 
        n267, n266, n265, n264, n263, n262, n261}), .inc_out(acs_addr_pl1) );
  DFFX1_RVT \acs_addr_reg[2]  ( .D(n231), .CLK(clk), .Q(n263) );
  DFFX1_RVT \acs_addr_reg[3]  ( .D(n230), .CLK(clk), .Q(n264) );
  DFFX1_RVT \acs_addr_reg[4]  ( .D(n229), .CLK(clk), .Q(n265) );
  DFFX1_RVT \acs_addr_reg[1]  ( .D(n232), .CLK(clk), .Q(n262) );
  DFFX1_RVT \acs_addr_reg[0]  ( .D(n233), .CLK(clk), .Q(n261) );
  DFFX1_RVT \acs_addr_reg[10]  ( .D(n223), .CLK(clk), .Q(n271) );
  DFFX1_RVT \acs_addr_reg[9]  ( .D(n224), .CLK(clk), .Q(n270) );
  DFFX1_RVT \acs_addr_reg[8]  ( .D(n225), .CLK(clk), .Q(n269) );
  DFFX1_RVT \acs_addr_reg[7]  ( .D(n226), .CLK(clk), .Q(n268) );
  DFFX1_RVT \acs_addr_reg[6]  ( .D(n227), .CLK(clk), .Q(n267) );
  DFFX1_RVT \acs_addr_reg[5]  ( .D(n228), .CLK(clk), .Q(n266) );
  DFFX1_RVT \acs_addr_reg[11]  ( .D(n222), .CLK(clk), .Q(n272) );
  DFFX1_RVT \acs_addr_reg[12]  ( .D(n221), .CLK(clk), .Q(n273) );
  DFFX1_RVT \sram_addr_reg[5]  ( .D(n181), .CLK(clk), .Q(sram_addr[5]) );
  DFFX1_RVT \sram_addr_reg[4]  ( .D(n180), .CLK(clk), .Q(sram_addr[4]) );
  DFFX1_RVT \sram_addr_reg[3]  ( .D(n179), .CLK(clk), .Q(sram_addr[3]) );
  DFFX1_RVT \sram_addr_reg[2]  ( .D(n178), .CLK(clk), .Q(sram_addr[2]) );
  DFFX1_RVT \sram_addr_reg[1]  ( .D(n177), .CLK(clk), .Q(sram_addr[1]) );
  DFFX1_RVT \sram_addr_reg[0]  ( .D(n176), .CLK(clk), .Q(sram_addr[0]) );
  DFFX1_RVT \sram_addr_reg[9]  ( .D(n185), .CLK(clk), .Q(sram_addr[9]) );
  DFFX1_RVT \sram_addr_reg[8]  ( .D(n184), .CLK(clk), .Q(sram_addr[8]) );
  DFFX1_RVT \sram_addr_reg[7]  ( .D(n183), .CLK(clk), .Q(sram_addr[7]) );
  DFFX1_RVT \sram_addr_reg[6]  ( .D(n182), .CLK(clk), .Q(sram_addr[6]) );
  DFFX1_RVT \sram_addr_reg[10]  ( .D(n186), .CLK(clk), .Q(sram_addr[10]) );
  DFFX1_RVT \sram_addr_reg[14]  ( .D(n190), .CLK(clk), .Q(sram_addr[14]) );
  DFFX1_RVT \sram_addr_reg[13]  ( .D(n189), .CLK(clk), .Q(sram_addr[13]) );
  DFFX1_RVT \sram_addr_reg[23]  ( .D(n199), .CLK(clk), .Q(sram_addr[23]) );
  DFFX1_RVT \sram_addr_reg[22]  ( .D(n198), .CLK(clk), .Q(sram_addr[22]) );
  DFFX1_RVT \sram_addr_reg[21]  ( .D(n197), .CLK(clk), .Q(sram_addr[21]) );
  DFFX1_RVT \sram_addr_reg[20]  ( .D(n196), .CLK(clk), .Q(sram_addr[20]) );
  DFFX1_RVT \sram_addr_reg[19]  ( .D(n195), .CLK(clk), .Q(sram_addr[19]) );
  DFFX1_RVT \sram_addr_reg[18]  ( .D(n194), .CLK(clk), .Q(sram_addr[18]) );
  DFFX1_RVT \sram_addr_reg[17]  ( .D(n193), .CLK(clk), .Q(sram_addr[17]) );
  DFFX1_RVT \sram_addr_reg[16]  ( .D(n192), .CLK(clk), .Q(sram_addr[16]) );
  DFFX1_RVT \sram_addr_reg[15]  ( .D(n191), .CLK(clk), .Q(sram_addr[15]) );
  DFFX1_RVT \sram_addr_reg[12]  ( .D(n188), .CLK(clk), .Q(sram_addr[12]) );
  DFFX1_RVT \sram_addr_reg[11]  ( .D(n187), .CLK(clk), .Q(sram_addr[11]) );
  DFFX1_RVT \acs_addr_reg[21]  ( .D(n212), .CLK(clk), .Q(n282) );
  DFFX1_RVT \acs_addr_reg[22]  ( .D(n211), .CLK(clk), .Q(n283) );
  DFFX1_RVT \acs_addr_reg[23]  ( .D(n210), .CLK(clk), .Q(n284) );
  DFFX1_RVT \col_adr_reg[9]  ( .D(n209), .CLK(clk), .Q(n285) );
  DFFX1_RVT \col_adr_reg[8]  ( .D(n208), .CLK(clk), .Q(n286) );
  DFFX1_RVT \col_adr_reg[7]  ( .D(n207), .CLK(clk), .Q(n287) );
  DFFX1_RVT \col_adr_reg[6]  ( .D(n206), .CLK(clk), .Q(n288) );
  DFFX1_RVT \col_adr_reg[5]  ( .D(n205), .CLK(clk), .Q(n289) );
  DFFX1_RVT \col_adr_reg[4]  ( .D(n204), .CLK(clk), .Q(n290) );
  DFFX1_RVT \col_adr_reg[3]  ( .D(n203), .CLK(clk), .Q(n291) );
  DFFX1_RVT \col_adr_reg[2]  ( .D(n202), .CLK(clk), .Q(n292) );
  DFFX1_RVT \col_adr_reg[1]  ( .D(n201), .CLK(clk), .Q(n293) );
  DFFX1_RVT \col_adr_reg[0]  ( .D(n200), .CLK(clk), .Q(n294) );
  DFFX1_RVT \acs_addr_reg[14]  ( .D(n219), .CLK(clk), .Q(n275) );
  DFFX1_RVT \acs_addr_reg[15]  ( .D(n218), .CLK(clk), .Q(n276) );
  DFFX1_RVT \acs_addr_reg[16]  ( .D(n217), .CLK(clk), .Q(n277) );
  DFFX1_RVT \acs_addr_reg[17]  ( .D(n216), .CLK(clk), .Q(n278) );
  DFFX1_RVT \acs_addr_reg[18]  ( .D(n215), .CLK(clk), .Q(n279) );
  DFFX1_RVT \acs_addr_reg[19]  ( .D(n214), .CLK(clk), .Q(n280) );
  DFFX1_RVT \acs_addr_reg[20]  ( .D(n213), .CLK(clk), .Q(n281) );
  DFFX1_RVT \acs_addr_reg[13]  ( .D(n220), .CLK(clk), .Q(n274) );
  DFFX1_RVT \row_adr_reg[11]  ( .D(n174), .CLK(clk), .Q(row_adr[11]) );
  DFFX1_RVT \row_adr_reg[12]  ( .D(n175), .CLK(clk), .Q(row_adr[12]) );
  DFFX1_RVT \bank_adr_reg[1]  ( .D(n162), .CLK(clk), .Q(bank_adr[1]) );
  DFFX1_RVT \bank_adr_reg[0]  ( .D(n161), .CLK(clk), .Q(bank_adr[0]) );
  DFFX1_RVT \row_adr_reg[10]  ( .D(n173), .CLK(clk), .Q(row_adr[10]) );
  DFFX1_RVT \row_adr_reg[9]  ( .D(n172), .CLK(clk), .Q(row_adr[9]) );
  DFFX1_RVT \row_adr_reg[7]  ( .D(n170), .CLK(clk), .Q(row_adr[7]) );
  DFFX1_RVT \row_adr_reg[5]  ( .D(n168), .CLK(clk), .Q(row_adr[5]) );
  DFFX1_RVT \row_adr_reg[3]  ( .D(n166), .CLK(clk), .Q(row_adr[3]) );
  DFFX1_RVT \row_adr_reg[6]  ( .D(n169), .CLK(clk), .Q(row_adr[6]) );
  DFFX1_RVT \row_adr_reg[4]  ( .D(n167), .CLK(clk), .Q(row_adr[4]) );
  DFFX1_RVT \row_adr_reg[2]  ( .D(n165), .CLK(clk), .Q(row_adr[2]) );
  DFFX1_RVT \row_adr_reg[8]  ( .D(n171), .CLK(clk), .Q(row_adr[8]) );
  DFFX1_RVT \row_adr_reg[1]  ( .D(n164), .CLK(clk), .Q(row_adr[1]) );
  DFFX1_RVT \row_adr_reg[0]  ( .D(n163), .CLK(clk), .Q(row_adr[0]) );
  INVX1_RVT U3 ( .A(wb_stb_i), .Y(n248) );
  NOR2X0_RVT U4 ( .A1(n118), .A2(n122), .Y(n3) );
  OR2X1_RVT U5 ( .A1(n4), .A2(n5), .Y(mc_addr[1]) );
  AO222X1_RVT U6 ( .A1(n87), .A2(row_adr[1]), .A3(tms[1]), .A4(n3), .A5(n89), 
        .A6(n293), .Y(n4) );
  AO222X1_RVT U7 ( .A1(sram_addr[1]), .A2(n159), .A3(wb_addr_i[3]), .A4(n237), 
        .A5(n262), .A6(n235), .Y(n5) );
  INVX1_RVT U8 ( .A(n6), .Y(n126) );
  INVX1_RVT U9 ( .A(n6), .Y(n127) );
  OR2X1_RVT U10 ( .A1(n60), .A2(n72), .Y(n6) );
  INVX1_RVT U11 ( .A(n7), .Y(n125) );
  INVX1_RVT U12 ( .A(n7), .Y(n124) );
  INVX1_RVT U13 ( .A(n91), .Y(n104) );
  INVX1_RVT U14 ( .A(n130), .Y(n129) );
  INVX1_RVT U15 ( .A(n130), .Y(n128) );
  NAND2X0_RVT U16 ( .A1(n60), .A2(n95), .Y(n7) );
  INVX1_RVT U17 ( .A(n8), .Y(n119) );
  INVX1_RVT U18 ( .A(n9), .Y(n114) );
  INVX1_RVT U19 ( .A(n9), .Y(n115) );
  INVX1_RVT U20 ( .A(n8), .Y(n120) );
  INVX1_RVT U21 ( .A(n246), .Y(n249) );
  INVX1_RVT U22 ( .A(n246), .Y(n250) );
  INVX1_RVT U23 ( .A(n11), .Y(n121) );
  INVX1_RVT U24 ( .A(n11), .Y(n123) );
  INVX1_RVT U25 ( .A(n78), .Y(n101) );
  INVX1_RVT U26 ( .A(n116), .Y(n235) );
  INVX1_RVT U27 ( .A(n116), .Y(n236) );
  INVX1_RVT U28 ( .A(n80), .Y(n234) );
  INVX1_RVT U29 ( .A(n13), .Y(n240) );
  INVX1_RVT U30 ( .A(n12), .Y(n242) );
  INVX1_RVT U31 ( .A(n13), .Y(n239) );
  INVX1_RVT U32 ( .A(n80), .Y(n160) );
  INVX1_RVT U33 ( .A(n70), .Y(n130) );
  INVX1_RVT U34 ( .A(n60), .Y(n105) );
  INVX1_RVT U35 ( .A(n137), .Y(n95) );
  INVX1_RVT U36 ( .A(n14), .Y(n245) );
  INVX1_RVT U37 ( .A(n14), .Y(n244) );
  INVX1_RVT U38 ( .A(n12), .Y(n243) );
  AO21X1_RVT U39 ( .A1(n62), .A2(n56), .A3(n58), .Y(n8) );
  OR3X2_RVT U40 ( .A1(n104), .A2(csc[4]), .A3(n58), .Y(n9) );
  INVX1_RVT U41 ( .A(n15), .Y(n157) );
  INVX1_RVT U42 ( .A(n15), .Y(n156) );
  AOI21X1_RVT U43 ( .A1(n137), .A2(n104), .A3(n58), .Y(n11) );
  INVX1_RVT U44 ( .A(csc[4]), .Y(n94) );
  INVX1_RVT U45 ( .A(n74), .Y(n100) );
  INVX1_RVT U46 ( .A(n1), .Y(n255) );
  AND2X1_RVT U47 ( .A1(n2), .A2(n1), .Y(page_size[10]) );
  AND3X1_RVT U48 ( .A1(n122), .A2(n251), .A3(n256), .Y(n89) );
  INVX1_RVT U49 ( .A(row_sel), .Y(n251) );
  INVX1_RVT U50 ( .A(n16), .Y(n238) );
  INVX1_RVT U51 ( .A(n16), .Y(n237) );
  INVX1_RVT U52 ( .A(n117), .Y(n158) );
  INVX1_RVT U53 ( .A(n117), .Y(n159) );
  AND3X1_RVT U54 ( .A1(n256), .A2(n122), .A3(row_sel), .Y(n87) );
  NAND3X0_RVT U55 ( .A1(n258), .A2(n257), .A3(n259), .Y(n118) );
  INVX1_RVT U56 ( .A(csc[7]), .Y(n99) );
  INVX1_RVT U57 ( .A(n248), .Y(n247) );
  NAND2X0_RVT U58 ( .A1(n2), .A2(n81), .Y(n12) );
  NAND2X0_RVT U59 ( .A1(n254), .A2(n80), .Y(n13) );
  NOR2X0_RVT U60 ( .A1(csc[4]), .A2(csc[5]), .Y(n2) );
  INVX1_RVT U61 ( .A(n10), .Y(n132) );
  INVX1_RVT U62 ( .A(csc[6]), .Y(n98) );
  NAND2X0_RVT U63 ( .A1(csc[5]), .A2(n81), .Y(n14) );
  INVX1_RVT U64 ( .A(n84), .Y(N132) );
  INVX1_RVT U65 ( .A(n62), .Y(n107) );
  INVX1_RVT U66 ( .A(n17), .Y(n155) );
  INVX1_RVT U67 ( .A(n17), .Y(n154) );
  OR2X1_RVT U68 ( .A1(n131), .A2(csc_9), .Y(n15) );
  INVX1_RVT U69 ( .A(n248), .Y(n246) );
  INVX1_RVT U70 ( .A(n81), .Y(n254) );
  AND2X1_RVT U71 ( .A1(n136), .A2(n81), .Y(n30) );
  OR2X1_RVT U72 ( .A1(csc[6]), .A2(csc[7]), .Y(n1) );
  INVX1_RVT U73 ( .A(csc[3]), .Y(n257) );
  INVX1_RVT U74 ( .A(csc[1]), .Y(n259) );
  INVX1_RVT U75 ( .A(cas_), .Y(n252) );
  NAND3X0_RVT U76 ( .A1(n117), .A2(n118), .A3(n116), .Y(n16) );
  NAND3X0_RVT U77 ( .A1(n259), .A2(n257), .A3(csc[2]), .Y(n116) );
  INVX1_RVT U78 ( .A(csc[2]), .Y(n258) );
  AO221X1_RVT U79 ( .A1(acs_addr_pl1[11]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[13]), .A5(n55), .Y(n222) );
  AO221X1_RVT U80 ( .A1(acs_addr_pl1[5]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[7]), .A5(n67), .Y(n228) );
  AO221X1_RVT U81 ( .A1(acs_addr_pl1[6]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[8]), .A5(n65), .Y(n227) );
  AO221X1_RVT U82 ( .A1(acs_addr_pl1[7]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[9]), .A5(n63), .Y(n226) );
  AO221X1_RVT U83 ( .A1(acs_addr_pl1[8]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[10]), .A5(n61), .Y(n225) );
  AO221X1_RVT U84 ( .A1(acs_addr_pl1[9]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[11]), .A5(n59), .Y(n224) );
  AO221X1_RVT U85 ( .A1(acs_addr_pl1[10]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[12]), .A5(n57), .Y(n223) );
  AO221X1_RVT U86 ( .A1(acs_addr_pl1[23]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[25]), .A5(n28), .Y(n210) );
  AO222X1_RVT U87 ( .A1(n243), .A2(wb_addr_i[23]), .A3(n152), .A4(
        wb_addr_i[24]), .A5(n240), .A6(n284), .Y(n28) );
  AO221X1_RVT U88 ( .A1(acs_addr_pl1[22]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[24]), .A5(n33), .Y(n211) );
  AO222X1_RVT U89 ( .A1(n243), .A2(wb_addr_i[22]), .A3(n152), .A4(
        wb_addr_i[23]), .A5(n240), .A6(n283), .Y(n33) );
  AO221X1_RVT U90 ( .A1(acs_addr_pl1[21]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[23]), .A5(n35), .Y(n212) );
  AO222X1_RVT U91 ( .A1(n243), .A2(wb_addr_i[21]), .A3(n30), .A4(wb_addr_i[22]), .A5(n240), .A6(n282), .Y(n35) );
  AO221X1_RVT U92 ( .A1(acs_addr_pl1[20]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[22]), .A5(n37), .Y(n213) );
  AO222X1_RVT U93 ( .A1(n243), .A2(wb_addr_i[20]), .A3(n30), .A4(wb_addr_i[21]), .A5(n240), .A6(n281), .Y(n37) );
  AO221X1_RVT U94 ( .A1(acs_addr_pl1[19]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[21]), .A5(n39), .Y(n214) );
  AO222X1_RVT U95 ( .A1(n243), .A2(wb_addr_i[19]), .A3(n30), .A4(wb_addr_i[20]), .A5(n240), .A6(n280), .Y(n39) );
  AO221X1_RVT U96 ( .A1(acs_addr_pl1[18]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[20]), .A5(n41), .Y(n215) );
  AO222X1_RVT U97 ( .A1(n243), .A2(wb_addr_i[18]), .A3(n151), .A4(
        wb_addr_i[19]), .A5(n240), .A6(n279), .Y(n41) );
  AO221X1_RVT U98 ( .A1(acs_addr_pl1[17]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[19]), .A5(n43), .Y(n216) );
  AO222X1_RVT U99 ( .A1(n243), .A2(wb_addr_i[17]), .A3(n152), .A4(
        wb_addr_i[18]), .A5(n240), .A6(n278), .Y(n43) );
  AO221X1_RVT U100 ( .A1(acs_addr_pl1[16]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[18]), .A5(n45), .Y(n217) );
  AO222X1_RVT U101 ( .A1(n243), .A2(wb_addr_i[16]), .A3(n30), .A4(
        wb_addr_i[17]), .A5(n240), .A6(n277), .Y(n45) );
  AO221X1_RVT U102 ( .A1(acs_addr_pl1[15]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[17]), .A5(n47), .Y(n218) );
  AO222X1_RVT U103 ( .A1(n243), .A2(wb_addr_i[15]), .A3(n151), .A4(
        wb_addr_i[16]), .A5(n240), .A6(n276), .Y(n47) );
  AO221X1_RVT U104 ( .A1(acs_addr_pl1[14]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[16]), .A5(n49), .Y(n219) );
  AO222X1_RVT U105 ( .A1(n243), .A2(wb_addr_i[14]), .A3(n30), .A4(
        wb_addr_i[15]), .A5(n240), .A6(n275), .Y(n49) );
  AO221X1_RVT U106 ( .A1(acs_addr_pl1[13]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[15]), .A5(n51), .Y(n220) );
  AO222X1_RVT U107 ( .A1(n243), .A2(wb_addr_i[13]), .A3(n151), .A4(
        wb_addr_i[14]), .A5(n240), .A6(n274), .Y(n51) );
  AO221X1_RVT U108 ( .A1(acs_addr_pl1[12]), .A2(n234), .A3(n245), .A4(
        wb_addr_i[14]), .A5(n53), .Y(n221) );
  AO22X1_RVT U109 ( .A1(n247), .A2(n260), .A3(wr_cycle), .A4(wb_ack_o), .Y(n10) );
  INVX1_RVT U110 ( .A(wr_cycle), .Y(n260) );
  AO22X1_RVT U111 ( .A1(wb_addr_i[2]), .A2(n133), .A3(n153), .A4(n294), .Y(
        n200) );
  AO22X1_RVT U112 ( .A1(wb_addr_i[4]), .A2(n133), .A3(n153), .A4(n292), .Y(
        n202) );
  AO22X1_RVT U113 ( .A1(wb_addr_i[6]), .A2(n133), .A3(n153), .A4(n290), .Y(
        n204) );
  AO22X1_RVT U114 ( .A1(wb_addr_i[8]), .A2(n133), .A3(n132), .A4(n288), .Y(
        n206) );
  AO22X1_RVT U115 ( .A1(wb_addr_i[3]), .A2(n134), .A3(n153), .A4(n293), .Y(
        n201) );
  AO22X1_RVT U116 ( .A1(wb_addr_i[5]), .A2(n134), .A3(n132), .A4(n291), .Y(
        n203) );
  AO22X1_RVT U117 ( .A1(wb_addr_i[7]), .A2(n134), .A3(n153), .A4(n289), .Y(
        n205) );
  AO22X1_RVT U118 ( .A1(wb_addr_i[9]), .A2(n134), .A3(n153), .A4(n287), .Y(
        n207) );
  NAND2X0_RVT U119 ( .A1(next_adr), .A2(n254), .Y(n80) );
  AO22X1_RVT U120 ( .A1(n132), .A2(n286), .A3(n21), .A4(wb_addr_i[10]), .Y(
        n208) );
  AND2X1_RVT U121 ( .A1(n22), .A2(n133), .Y(n21) );
  AO21X1_RVT U122 ( .A1(n136), .A2(n1), .A3(n2), .Y(n22) );
  AO22X1_RVT U123 ( .A1(n153), .A2(n285), .A3(n24), .A4(page_size[10]), .Y(
        n209) );
  AND2X1_RVT U124 ( .A1(wb_addr_i[11]), .A2(n134), .Y(n24) );
  NAND2X0_RVT U125 ( .A1(csc_9), .A2(cs_le), .Y(n17) );
  AO22X1_RVT U126 ( .A1(n136), .A2(n1), .A3(n2), .A4(n255), .Y(page_size[9])
         );
  AO21X1_RVT U127 ( .A1(n136), .A2(n255), .A3(n137), .Y(page_size[8]) );
  AO22X1_RVT U128 ( .A1(wb_addr_i[3]), .A2(n135), .A3(sram_addr[1]), .A4(n249), 
        .Y(n177) );
  AO22X1_RVT U129 ( .A1(wb_addr_i[4]), .A2(n135), .A3(sram_addr[2]), .A4(n249), 
        .Y(n178) );
  AO22X1_RVT U130 ( .A1(wb_addr_i[5]), .A2(n135), .A3(sram_addr[3]), .A4(n249), 
        .Y(n179) );
  AO22X1_RVT U131 ( .A1(wb_addr_i[6]), .A2(n135), .A3(sram_addr[4]), .A4(n249), 
        .Y(n180) );
  AO22X1_RVT U132 ( .A1(wb_addr_i[7]), .A2(n135), .A3(sram_addr[5]), .A4(n249), 
        .Y(n181) );
  AO22X1_RVT U133 ( .A1(wb_addr_i[14]), .A2(n135), .A3(sram_addr[12]), .A4(
        n250), .Y(n188) );
  AO22X1_RVT U134 ( .A1(wb_addr_i[15]), .A2(n247), .A3(sram_addr[13]), .A4(
        n250), .Y(n189) );
  AO22X1_RVT U135 ( .A1(wb_addr_i[16]), .A2(n247), .A3(sram_addr[14]), .A4(
        n250), .Y(n190) );
  AO22X1_RVT U136 ( .A1(wb_addr_i[17]), .A2(n247), .A3(sram_addr[15]), .A4(
        n250), .Y(n191) );
  AO22X1_RVT U137 ( .A1(wb_addr_i[18]), .A2(n247), .A3(sram_addr[16]), .A4(
        n250), .Y(n192) );
  AO22X1_RVT U138 ( .A1(wb_addr_i[19]), .A2(n247), .A3(sram_addr[17]), .A4(
        n250), .Y(n193) );
  AO22X1_RVT U139 ( .A1(wb_addr_i[20]), .A2(n247), .A3(sram_addr[18]), .A4(
        n250), .Y(n194) );
  AO22X1_RVT U140 ( .A1(wb_addr_i[21]), .A2(n247), .A3(sram_addr[19]), .A4(
        n250), .Y(n195) );
  AO22X1_RVT U141 ( .A1(wb_addr_i[22]), .A2(n247), .A3(sram_addr[20]), .A4(
        n250), .Y(n196) );
  AO22X1_RVT U142 ( .A1(wb_addr_i[23]), .A2(n247), .A3(sram_addr[21]), .A4(
        n250), .Y(n197) );
  AO22X1_RVT U143 ( .A1(wb_addr_i[24]), .A2(n247), .A3(sram_addr[22]), .A4(
        n250), .Y(n198) );
  AO22X1_RVT U144 ( .A1(wb_addr_i[25]), .A2(n247), .A3(sram_addr[23]), .A4(
        n250), .Y(n199) );
  AO22X1_RVT U145 ( .A1(n247), .A2(wb_addr_i[2]), .A3(sram_addr[0]), .A4(n249), 
        .Y(n176) );
  OR2X1_RVT U146 ( .A1(cs_le), .A2(wb_we_i), .Y(n81) );
  INVX1_RVT U147 ( .A(n50), .Y(n96) );
  INVX1_RVT U148 ( .A(n48), .Y(n97) );
  INVX1_RVT U149 ( .A(wb_addr_i[22]), .Y(n92) );
  INVX1_RVT U150 ( .A(wb_addr_i[23]), .Y(n93) );
  AO222X1_RVT U151 ( .A1(n236), .A2(n276), .A3(n238), .A4(wb_addr_i[17]), .A5(
        n158), .A6(sram_addr[15]), .Y(mc_addr[15]) );
  AO222X1_RVT U152 ( .A1(n236), .A2(n277), .A3(n238), .A4(wb_addr_i[18]), .A5(
        n158), .A6(sram_addr[16]), .Y(mc_addr[16]) );
  AO222X1_RVT U153 ( .A1(n236), .A2(n278), .A3(n238), .A4(wb_addr_i[19]), .A5(
        n158), .A6(sram_addr[17]), .Y(mc_addr[17]) );
  AO222X1_RVT U154 ( .A1(n236), .A2(n279), .A3(n238), .A4(wb_addr_i[20]), .A5(
        n158), .A6(sram_addr[18]), .Y(mc_addr[18]) );
  AO222X1_RVT U155 ( .A1(n236), .A2(n280), .A3(n238), .A4(wb_addr_i[21]), .A5(
        n158), .A6(sram_addr[19]), .Y(mc_addr[19]) );
  AO222X1_RVT U156 ( .A1(n236), .A2(n281), .A3(n238), .A4(wb_addr_i[22]), .A5(
        n158), .A6(sram_addr[20]), .Y(mc_addr[20]) );
  AO222X1_RVT U157 ( .A1(n236), .A2(n282), .A3(n238), .A4(wb_addr_i[23]), .A5(
        n158), .A6(sram_addr[21]), .Y(mc_addr[21]) );
  AO222X1_RVT U158 ( .A1(n235), .A2(n283), .A3(n237), .A4(wb_addr_i[24]), .A5(
        n158), .A6(sram_addr[22]), .Y(mc_addr[22]) );
  AO222X1_RVT U159 ( .A1(n235), .A2(n284), .A3(n237), .A4(wb_addr_i[25]), .A5(
        n158), .A6(sram_addr[23]), .Y(mc_addr[23]) );
  AO221X1_RVT U160 ( .A1(n238), .A2(wb_addr_i[15]), .A3(n236), .A4(n274), .A5(
        n108), .Y(mc_addr[13]) );
  AO22X1_RVT U161 ( .A1(n256), .A2(bank_adr[0]), .A3(n159), .A4(sram_addr[13]), 
        .Y(n108) );
  AO221X1_RVT U162 ( .A1(n238), .A2(wb_addr_i[16]), .A3(n236), .A4(n275), .A5(
        n106), .Y(mc_addr[14]) );
  AO22X1_RVT U163 ( .A1(n256), .A2(bank_adr[1]), .A3(n159), .A4(sram_addr[14]), 
        .Y(n106) );
  AO221X1_RVT U164 ( .A1(tms[11]), .A2(n3), .A3(n87), .A4(row_adr[11]), .A5(
        n110), .Y(mc_addr[11]) );
  AO222X1_RVT U165 ( .A1(n236), .A2(n272), .A3(n238), .A4(wb_addr_i[13]), .A5(
        n158), .A6(sram_addr[11]), .Y(n110) );
  AO221X1_RVT U166 ( .A1(tms[12]), .A2(n3), .A3(n87), .A4(row_adr[12]), .A5(
        n109), .Y(mc_addr[12]) );
  AO222X1_RVT U167 ( .A1(n236), .A2(n273), .A3(n238), .A4(wb_addr_i[14]), .A5(
        n158), .A6(sram_addr[12]), .Y(n109) );
  AOI222X1_RVT U168 ( .A1(sram_addr[2]), .A2(n159), .A3(wb_addr_i[4]), .A4(
        n237), .A5(n263), .A6(n235), .Y(n103) );
  NAND4X0_RVT U169 ( .A1(wr_hold), .A2(csc[1]), .A3(n258), .A4(n257), .Y(n117)
         );
  OR2X1_RVT U170 ( .A1(n18), .A2(n19), .Y(mc_addr[0]) );
  AO222X1_RVT U171 ( .A1(n87), .A2(row_adr[0]), .A3(tms[0]), .A4(n3), .A5(n89), 
        .A6(n294), .Y(n18) );
  AO222X1_RVT U172 ( .A1(sram_addr[0]), .A2(n159), .A3(wb_addr_i[2]), .A4(n237), .A5(n261), .A6(n235), .Y(n19) );
  OR2X1_RVT U173 ( .A1(n20), .A2(n23), .Y(mc_addr[3]) );
  AO222X1_RVT U174 ( .A1(n87), .A2(row_adr[3]), .A3(tms[3]), .A4(n3), .A5(n89), 
        .A6(n291), .Y(n20) );
  AO222X1_RVT U175 ( .A1(sram_addr[3]), .A2(n159), .A3(wb_addr_i[5]), .A4(n237), .A5(n264), .A6(n235), .Y(n23) );
  OR2X1_RVT U176 ( .A1(n25), .A2(n26), .Y(mc_addr[4]) );
  AO222X1_RVT U177 ( .A1(n87), .A2(row_adr[4]), .A3(tms[4]), .A4(n3), .A5(n89), 
        .A6(n290), .Y(n25) );
  AO222X1_RVT U178 ( .A1(sram_addr[4]), .A2(n159), .A3(wb_addr_i[6]), .A4(n237), .A5(n265), .A6(n235), .Y(n26) );
  OR2X1_RVT U179 ( .A1(n27), .A2(n29), .Y(mc_addr[5]) );
  AO222X1_RVT U180 ( .A1(n87), .A2(row_adr[5]), .A3(tms[5]), .A4(n3), .A5(n89), 
        .A6(n289), .Y(n27) );
  AO222X1_RVT U181 ( .A1(sram_addr[5]), .A2(n159), .A3(wb_addr_i[7]), .A4(n237), .A5(n266), .A6(n235), .Y(n29) );
  OR2X1_RVT U182 ( .A1(n31), .A2(n32), .Y(mc_addr[6]) );
  AO222X1_RVT U183 ( .A1(n87), .A2(row_adr[6]), .A3(tms[6]), .A4(n3), .A5(n89), 
        .A6(n288), .Y(n31) );
  AO222X1_RVT U184 ( .A1(sram_addr[6]), .A2(n159), .A3(wb_addr_i[8]), .A4(n237), .A5(n267), .A6(n235), .Y(n32) );
  OR2X1_RVT U185 ( .A1(n34), .A2(n36), .Y(mc_addr[7]) );
  AO222X1_RVT U186 ( .A1(n87), .A2(row_adr[7]), .A3(tms[7]), .A4(n3), .A5(n89), 
        .A6(n287), .Y(n34) );
  AO222X1_RVT U187 ( .A1(sram_addr[7]), .A2(n159), .A3(wb_addr_i[9]), .A4(n237), .A5(n268), .A6(n235), .Y(n36) );
  OR2X1_RVT U188 ( .A1(n38), .A2(n40), .Y(mc_addr[8]) );
  AO222X1_RVT U189 ( .A1(n87), .A2(row_adr[8]), .A3(tms[8]), .A4(n3), .A5(n89), 
        .A6(n286), .Y(n38) );
  AO222X1_RVT U190 ( .A1(sram_addr[8]), .A2(n159), .A3(wb_addr_i[10]), .A4(
        n237), .A5(n269), .A6(n235), .Y(n40) );
  OR2X1_RVT U191 ( .A1(n42), .A2(n44), .Y(mc_addr[9]) );
  AO222X1_RVT U192 ( .A1(n87), .A2(row_adr[9]), .A3(tms[9]), .A4(n3), .A5(n89), 
        .A6(n285), .Y(n42) );
  AO222X1_RVT U193 ( .A1(sram_addr[9]), .A2(n158), .A3(wb_addr_i[11]), .A4(
        n237), .A5(n270), .A6(n235), .Y(n44) );
  OR3X2_RVT U194 ( .A1(n111), .A2(n112), .A3(n113), .Y(mc_addr[10]) );
  AO22X1_RVT U195 ( .A1(n159), .A2(sram_addr[10]), .A3(n236), .A4(n271), .Y(
        n112) );
  AO21X1_RVT U196 ( .A1(n238), .A2(wb_addr_i[12]), .A3(rfr_ack), .Y(n111) );
  NAND2X0_RVT U197 ( .A1(n99), .A2(n98), .Y(n91) );
  NAND2X0_RVT U198 ( .A1(csc[4]), .A2(n95), .Y(n48) );
  NAND2X0_RVT U199 ( .A1(n94), .A2(n95), .Y(n50) );
  OA222X1_RVT U200 ( .A1(n48), .A2(wb_addr_i[22]), .A3(n50), .A4(wb_addr_i[23]), .A5(n95), .A6(wb_addr_i[21]), .Y(n66) );
  OA222X1_RVT U201 ( .A1(n48), .A2(wb_addr_i[24]), .A3(n50), .A4(wb_addr_i[25]), .A5(n95), .A6(wb_addr_i[23]), .Y(n90) );
  AO22X1_RVT U202 ( .A1(wb_addr_i[23]), .A2(csc[4]), .A3(wb_addr_i[24]), .A4(
        n94), .Y(n88) );
  OA22X1_RVT U203 ( .A1(n95), .A2(wb_addr_i[22]), .A3(n88), .A4(n137), .Y(n68)
         );
  AND3X1_RVT U204 ( .A1(n68), .A2(n99), .A3(csc[6]), .Y(n46) );
  AO221X1_RVT U205 ( .A1(n104), .A2(n66), .A3(csc[7]), .A4(n90), .A5(n46), .Y(
        N148) );
  AND2X1_RVT U206 ( .A1(n90), .A2(n99), .Y(n54) );
  AO222X1_RVT U207 ( .A1(wb_addr_i[25]), .A2(n97), .A3(wb_addr_i[26]), .A4(n96), .A5(wb_addr_i[24]), .A6(n137), .Y(n52) );
  AND2X1_RVT U208 ( .A1(csc[7]), .A2(n52), .Y(N119) );
  AO221X1_RVT U209 ( .A1(n54), .A2(csc[6]), .A3(n104), .A4(n68), .A5(N119), 
        .Y(N149) );
  NAND2X0_RVT U210 ( .A1(n95), .A2(n91), .Y(n72) );
  OA21X1_RVT U211 ( .A1(n91), .A2(csc[4]), .A3(n72), .Y(n58) );
  NAND2X0_RVT U212 ( .A1(n104), .A2(n95), .Y(n62) );
  NAND2X0_RVT U213 ( .A1(n91), .A2(csc[4]), .Y(n56) );
  AO222X1_RVT U214 ( .A1(n115), .A2(wb_addr_i[12]), .A3(wb_addr_i[11]), .A4(
        n120), .A5(wb_addr_i[10]), .A6(n123), .Y(N146) );
  AO222X1_RVT U215 ( .A1(n115), .A2(wb_addr_i[13]), .A3(n120), .A4(
        wb_addr_i[12]), .A5(wb_addr_i[11]), .A6(n121), .Y(N147) );
  XNOR2X1_RVT U216 ( .A1(n94), .A2(n104), .Y(n60) );
  AO22X1_RVT U217 ( .A1(n105), .A2(n72), .A3(n137), .A4(n60), .Y(n70) );
  AO222X1_RVT U218 ( .A1(wb_addr_i[11]), .A2(n125), .A3(wb_addr_i[12]), .A4(
        n127), .A5(wb_addr_i[10]), .A6(n129), .Y(N120) );
  AO222X1_RVT U219 ( .A1(wb_addr_i[12]), .A2(n125), .A3(wb_addr_i[13]), .A4(
        n126), .A5(wb_addr_i[11]), .A6(n129), .Y(N121) );
  AO222X1_RVT U220 ( .A1(n115), .A2(wb_addr_i[14]), .A3(n120), .A4(
        wb_addr_i[13]), .A5(n123), .A6(wb_addr_i[12]), .Y(N122) );
  AO222X1_RVT U221 ( .A1(n115), .A2(wb_addr_i[15]), .A3(n119), .A4(
        wb_addr_i[14]), .A5(n121), .A6(wb_addr_i[13]), .Y(N123) );
  AO222X1_RVT U222 ( .A1(n114), .A2(wb_addr_i[16]), .A3(n119), .A4(
        wb_addr_i[15]), .A5(n123), .A6(wb_addr_i[14]), .Y(N124) );
  AO222X1_RVT U223 ( .A1(n115), .A2(wb_addr_i[17]), .A3(n119), .A4(
        wb_addr_i[16]), .A5(n121), .A6(wb_addr_i[15]), .Y(N125) );
  AO222X1_RVT U224 ( .A1(n114), .A2(wb_addr_i[18]), .A3(n120), .A4(
        wb_addr_i[17]), .A5(n123), .A6(wb_addr_i[16]), .Y(N126) );
  AO222X1_RVT U225 ( .A1(n114), .A2(wb_addr_i[19]), .A3(n119), .A4(
        wb_addr_i[18]), .A5(n121), .A6(wb_addr_i[17]), .Y(N127) );
  AO222X1_RVT U226 ( .A1(n114), .A2(wb_addr_i[20]), .A3(n119), .A4(
        wb_addr_i[19]), .A5(n123), .A6(wb_addr_i[18]), .Y(N128) );
  AO222X1_RVT U227 ( .A1(n115), .A2(wb_addr_i[21]), .A3(n119), .A4(
        wb_addr_i[20]), .A5(n121), .A6(wb_addr_i[19]), .Y(N129) );
  AO222X1_RVT U228 ( .A1(n114), .A2(wb_addr_i[22]), .A3(n120), .A4(
        wb_addr_i[21]), .A5(n123), .A6(wb_addr_i[20]), .Y(N130) );
  AO22X1_RVT U229 ( .A1(wb_addr_i[21]), .A2(csc[4]), .A3(wb_addr_i[22]), .A4(
        n94), .Y(n64) );
  AO22X1_RVT U230 ( .A1(n91), .A2(n66), .A3(n64), .A4(n107), .Y(N131) );
  NAND2X0_RVT U231 ( .A1(csc[7]), .A2(n68), .Y(n84) );
  AO222X1_RVT U232 ( .A1(wb_addr_i[13]), .A2(n125), .A3(wb_addr_i[14]), .A4(
        n126), .A5(wb_addr_i[12]), .A6(n129), .Y(N107) );
  AO222X1_RVT U233 ( .A1(wb_addr_i[14]), .A2(n125), .A3(wb_addr_i[15]), .A4(
        n126), .A5(wb_addr_i[13]), .A6(n129), .Y(N108) );
  AO222X1_RVT U234 ( .A1(wb_addr_i[15]), .A2(n125), .A3(wb_addr_i[16]), .A4(
        n127), .A5(wb_addr_i[14]), .A6(n128), .Y(N109) );
  AO222X1_RVT U235 ( .A1(wb_addr_i[16]), .A2(n124), .A3(wb_addr_i[17]), .A4(
        n126), .A5(wb_addr_i[15]), .A6(n70), .Y(N110) );
  AO222X1_RVT U236 ( .A1(wb_addr_i[17]), .A2(n124), .A3(wb_addr_i[18]), .A4(
        n127), .A5(wb_addr_i[16]), .A6(n128), .Y(N111) );
  AO222X1_RVT U237 ( .A1(wb_addr_i[18]), .A2(n124), .A3(wb_addr_i[19]), .A4(
        n126), .A5(wb_addr_i[17]), .A6(n70), .Y(N112) );
  AO222X1_RVT U238 ( .A1(wb_addr_i[19]), .A2(n124), .A3(wb_addr_i[20]), .A4(
        n127), .A5(wb_addr_i[18]), .A6(n128), .Y(N113) );
  AO222X1_RVT U239 ( .A1(wb_addr_i[20]), .A2(n124), .A3(n126), .A4(
        wb_addr_i[21]), .A5(wb_addr_i[19]), .A6(n70), .Y(N114) );
  AO222X1_RVT U240 ( .A1(n124), .A2(wb_addr_i[21]), .A3(n127), .A4(
        wb_addr_i[22]), .A5(wb_addr_i[20]), .A6(n128), .Y(N115) );
  XOR2X1_RVT U241 ( .A1(n98), .A2(n94), .Y(n79) );
  OA22X1_RVT U242 ( .A1(n99), .A2(n94), .A3(n79), .A4(csc[7]), .Y(n74) );
  AO22X1_RVT U243 ( .A1(n100), .A2(n137), .A3(n72), .A4(n74), .Y(n78) );
  AO22X1_RVT U244 ( .A1(n100), .A2(wb_addr_i[22]), .A3(wb_addr_i[23]), .A4(n74), .Y(n76) );
  AO22X1_RVT U245 ( .A1(wb_addr_i[21]), .A2(n78), .A3(n76), .A4(n101), .Y(N116) );
  NAND2X0_RVT U246 ( .A1(n79), .A2(n104), .Y(n86) );
  NAND2X0_RVT U247 ( .A1(n79), .A2(wb_addr_i[24]), .Y(n82) );
  OA22X1_RVT U248 ( .A1(n98), .A2(n82), .A3(n93), .A4(n79), .Y(n83) );
  OA22X1_RVT U249 ( .A1(n137), .A2(n83), .A3(n95), .A4(n92), .Y(n85) );
  OAI221X1_RVT U250 ( .A1(n92), .A2(n86), .A3(csc[7]), .A4(n85), .A5(n84), .Y(
        N117) );
  AO22X1_RVT U251 ( .A1(n91), .A2(n90), .A3(n107), .A4(n88), .Y(N118) );
  NBUFFX2_RVT U252 ( .A(n253), .Y(n131) );
  INVX1_RVT U253 ( .A(cs_le), .Y(n253) );
  INVX1_RVT U254 ( .A(n132), .Y(n133) );
  INVX0_RVT U255 ( .A(n132), .Y(n134) );
  INVX1_RVT U256 ( .A(n10), .Y(n153) );
  AO222X1_RVT U257 ( .A1(N149), .A2(n154), .A3(N147), .A4(n156), .A5(n131), 
        .A6(bank_adr[1]), .Y(n162) );
  AO222X1_RVT U258 ( .A1(N148), .A2(n154), .A3(N146), .A4(n156), .A5(n253), 
        .A6(bank_adr[0]), .Y(n161) );
  AO222X1_RVT U259 ( .A1(N132), .A2(n155), .A3(N119), .A4(n156), .A5(
        row_adr[12]), .A6(n131), .Y(n175) );
  AO222X1_RVT U260 ( .A1(N131), .A2(n155), .A3(N118), .A4(n157), .A5(
        row_adr[11]), .A6(n253), .Y(n174) );
  AO222X1_RVT U261 ( .A1(N124), .A2(n155), .A3(N111), .A4(n157), .A5(
        row_adr[4]), .A6(n131), .Y(n167) );
  AO222X1_RVT U262 ( .A1(N123), .A2(n154), .A3(N110), .A4(n157), .A5(
        row_adr[3]), .A6(n131), .Y(n166) );
  AO222X1_RVT U263 ( .A1(N122), .A2(n154), .A3(N109), .A4(n156), .A5(
        row_adr[2]), .A6(n131), .Y(n165) );
  AO222X1_RVT U264 ( .A1(N121), .A2(n154), .A3(N108), .A4(n156), .A5(
        row_adr[1]), .A6(n131), .Y(n164) );
  AO222X1_RVT U265 ( .A1(N120), .A2(n154), .A3(N107), .A4(n156), .A5(
        row_adr[0]), .A6(n131), .Y(n163) );
  NBUFFX2_RVT U266 ( .A(n246), .Y(n135) );
  AO22X1_RVT U267 ( .A1(wb_addr_i[13]), .A2(n135), .A3(sram_addr[11]), .A4(
        n249), .Y(n187) );
  AO22X1_RVT U268 ( .A1(wb_addr_i[12]), .A2(n135), .A3(sram_addr[10]), .A4(
        n249), .Y(n186) );
  AO22X1_RVT U269 ( .A1(wb_addr_i[11]), .A2(n135), .A3(sram_addr[9]), .A4(n249), .Y(n185) );
  AO22X1_RVT U270 ( .A1(wb_addr_i[10]), .A2(n135), .A3(sram_addr[8]), .A4(n249), .Y(n184) );
  AO22X1_RVT U271 ( .A1(wb_addr_i[9]), .A2(n135), .A3(sram_addr[7]), .A4(n249), 
        .Y(n183) );
  AO22X1_RVT U272 ( .A1(wb_addr_i[8]), .A2(n135), .A3(sram_addr[6]), .A4(n249), 
        .Y(n182) );
  AOI222X1_RVT U273 ( .A1(n87), .A2(row_adr[2]), .A3(tms[2]), .A4(n3), .A5(n89), .A6(n292), .Y(n102) );
  NAND2X0_RVT U274 ( .A1(n102), .A2(n103), .Y(mc_addr[2]) );
  NBUFFX2_RVT U275 ( .A(csc[4]), .Y(n136) );
  NBUFFX2_RVT U276 ( .A(csc[5]), .Y(n137) );
  AO222X1_RVT U277 ( .A1(N128), .A2(n155), .A3(N115), .A4(n156), .A5(
        row_adr[8]), .A6(n253), .Y(n171) );
  AO222X1_RVT U278 ( .A1(N129), .A2(n155), .A3(N116), .A4(n157), .A5(
        row_adr[9]), .A6(n253), .Y(n172) );
  AO222X1_RVT U279 ( .A1(N127), .A2(n154), .A3(N114), .A4(n157), .A5(
        row_adr[7]), .A6(n253), .Y(n170) );
  AO222X1_RVT U280 ( .A1(N125), .A2(n155), .A3(N112), .A4(n157), .A5(
        row_adr[5]), .A6(n253), .Y(n168) );
  AO222X1_RVT U281 ( .A1(N126), .A2(n155), .A3(N113), .A4(n157), .A5(
        row_adr[6]), .A6(n253), .Y(n169) );
  AO222X1_RVT U282 ( .A1(cmd_a10), .A2(n89), .A3(tms[10]), .A4(n3), .A5(n87), 
        .A6(row_adr[10]), .Y(n113) );
  AO222X1_RVT U283 ( .A1(N130), .A2(n155), .A3(N117), .A4(n156), .A5(
        row_adr[10]), .A6(n253), .Y(n173) );
  AO221X1_RVT U284 ( .A1(acs_addr_pl1[4]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[6]), .A5(n69), .Y(n229) );
  AO221X1_RVT U285 ( .A1(acs_addr_pl1[3]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[5]), .A5(n71), .Y(n230) );
  AO221X1_RVT U286 ( .A1(acs_addr_pl1[2]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[4]), .A5(n73), .Y(n231) );
  AO221X1_RVT U287 ( .A1(acs_addr_pl1[1]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[3]), .A5(n75), .Y(n232) );
  AO221X1_RVT U288 ( .A1(acs_addr_pl1[0]), .A2(n160), .A3(n244), .A4(
        wb_addr_i[2]), .A5(n77), .Y(n233) );
  NAND2X0_RVT U289 ( .A1(lmr_sel), .A2(n252), .Y(n122) );
  AO222X1_RVT U290 ( .A1(n242), .A2(wb_addr_i[2]), .A3(n152), .A4(wb_addr_i[3]), .A5(n239), .A6(n263), .Y(n73) );
  AO222X1_RVT U291 ( .A1(n242), .A2(wb_addr_i[3]), .A3(n30), .A4(wb_addr_i[4]), 
        .A5(n239), .A6(n264), .Y(n71) );
  AO222X1_RVT U292 ( .A1(n242), .A2(wb_addr_i[4]), .A3(n151), .A4(wb_addr_i[5]), .A5(n239), .A6(n265), .Y(n69) );
  AO222X1_RVT U293 ( .A1(n242), .A2(wb_addr_i[5]), .A3(n30), .A4(wb_addr_i[6]), 
        .A5(n239), .A6(n266), .Y(n67) );
  AO222X1_RVT U294 ( .A1(n242), .A2(wb_addr_i[6]), .A3(n151), .A4(wb_addr_i[7]), .A5(n239), .A6(n267), .Y(n65) );
  AO222X1_RVT U295 ( .A1(n242), .A2(wb_addr_i[7]), .A3(n30), .A4(wb_addr_i[8]), 
        .A5(n239), .A6(n268), .Y(n63) );
  AO222X1_RVT U296 ( .A1(n242), .A2(wb_addr_i[8]), .A3(n152), .A4(wb_addr_i[9]), .A5(n239), .A6(n269), .Y(n61) );
  AO222X1_RVT U297 ( .A1(n242), .A2(wb_addr_i[9]), .A3(n152), .A4(
        wb_addr_i[10]), .A5(n239), .A6(n270), .Y(n59) );
  AO222X1_RVT U298 ( .A1(n242), .A2(wb_addr_i[10]), .A3(n151), .A4(
        wb_addr_i[11]), .A5(n239), .A6(n271), .Y(n57) );
  AO222X1_RVT U299 ( .A1(n242), .A2(wb_addr_i[11]), .A3(n151), .A4(
        wb_addr_i[12]), .A5(n239), .A6(n272), .Y(n55) );
  AO222X1_RVT U300 ( .A1(n242), .A2(wb_addr_i[12]), .A3(n152), .A4(
        wb_addr_i[13]), .A5(n240), .A6(n273), .Y(n53) );
  AO222X1_RVT U301 ( .A1(wb_addr_i[0]), .A2(n242), .A3(wb_addr_i[1]), .A4(n152), .A5(n239), .A6(n261), .Y(n77) );
  AO222X1_RVT U302 ( .A1(wb_addr_i[1]), .A2(n242), .A3(n151), .A4(wb_addr_i[2]), .A5(n239), .A6(n262), .Y(n75) );
  NBUFFX2_RVT U303 ( .A(n30), .Y(n151) );
  INVX1_RVT U304 ( .A(n241), .Y(n152) );
  INVX1_RVT U305 ( .A(n30), .Y(n241) );
  INVX0_RVT U306 ( .A(n118), .Y(n256) );
endmodule


module mc_obct_1 ( clk, rst, row_adr, bank_adr, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same );
  input [12:0] row_adr;
  input [1:0] bank_adr;
  input clk, rst, bank_set, bank_clr, bank_clr_all;
  output bank_open, any_bank_open, row_same;
  wire   n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n97, n98, n99, n100,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n96,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210;

  DFFX1_RVT \b0_last_row_reg[12]  ( .D(n95), .CLK(clk), .Q(n19) );
  DFFX1_RVT \b0_last_row_reg[11]  ( .D(n94), .CLK(clk), .Q(n20) );
  DFFX1_RVT \b0_last_row_reg[10]  ( .D(n93), .CLK(clk), .Q(n18) );
  DFFX1_RVT \b0_last_row_reg[9]  ( .D(n92), .CLK(clk), .Q(n25) );
  DFFX1_RVT \b0_last_row_reg[8]  ( .D(n91), .CLK(clk), .Q(n26) );
  DFFX1_RVT \b0_last_row_reg[7]  ( .D(n90), .CLK(clk), .Q(n24) );
  DFFX1_RVT \b0_last_row_reg[6]  ( .D(n89), .CLK(clk), .Q(n31) );
  DFFX1_RVT \b0_last_row_reg[5]  ( .D(n88), .CLK(clk), .Q(n32) );
  DFFX1_RVT \b0_last_row_reg[4]  ( .D(n87), .CLK(clk), .Q(n30) );
  DFFX1_RVT \b0_last_row_reg[3]  ( .D(n86), .CLK(clk), .Q(n37) );
  DFFX1_RVT \b0_last_row_reg[2]  ( .D(n85), .CLK(clk), .Q(n38) );
  DFFX1_RVT \b0_last_row_reg[1]  ( .D(n84), .CLK(clk), .Q(n40) );
  DFFX1_RVT \b0_last_row_reg[0]  ( .D(n83), .CLK(clk), .Q(n39) );
  DFFX1_RVT \b1_last_row_reg[12]  ( .D(n82), .CLK(clk), .Q(n135) );
  DFFX1_RVT \b1_last_row_reg[11]  ( .D(n81), .CLK(clk), .Q(n136) );
  DFFX1_RVT \b1_last_row_reg[10]  ( .D(n80), .CLK(clk), .Q(n134) );
  DFFX1_RVT \b1_last_row_reg[9]  ( .D(n79), .CLK(clk), .Q(n141) );
  DFFX1_RVT \b1_last_row_reg[8]  ( .D(n78), .CLK(clk), .Q(n142) );
  DFFX1_RVT \b1_last_row_reg[7]  ( .D(n77), .CLK(clk), .Q(n140) );
  DFFX1_RVT \b1_last_row_reg[6]  ( .D(n76), .CLK(clk), .Q(n147) );
  DFFX1_RVT \b1_last_row_reg[5]  ( .D(n75), .CLK(clk), .Q(n148) );
  DFFX1_RVT \b1_last_row_reg[4]  ( .D(n74), .CLK(clk), .Q(n146) );
  DFFX1_RVT \b1_last_row_reg[3]  ( .D(n73), .CLK(clk), .Q(n153) );
  DFFX1_RVT \b1_last_row_reg[2]  ( .D(n72), .CLK(clk), .Q(n154) );
  DFFX1_RVT \b1_last_row_reg[1]  ( .D(n71), .CLK(clk), .Q(n156) );
  DFFX1_RVT \b1_last_row_reg[0]  ( .D(n70), .CLK(clk), .Q(n155) );
  DFFX1_RVT \b2_last_row_reg[12]  ( .D(n69), .CLK(clk), .Q(n105) );
  DFFX1_RVT \b2_last_row_reg[11]  ( .D(n68), .CLK(clk), .Q(n106) );
  DFFX1_RVT \b2_last_row_reg[10]  ( .D(n67), .CLK(clk), .Q(n104) );
  DFFX1_RVT \b2_last_row_reg[9]  ( .D(n66), .CLK(clk), .Q(n111) );
  DFFX1_RVT \b2_last_row_reg[8]  ( .D(n65), .CLK(clk), .Q(n112) );
  DFFX1_RVT \b2_last_row_reg[7]  ( .D(n64), .CLK(clk), .Q(n110) );
  DFFX1_RVT \b2_last_row_reg[6]  ( .D(n63), .CLK(clk), .Q(n117) );
  DFFX1_RVT \b2_last_row_reg[5]  ( .D(n62), .CLK(clk), .Q(n118) );
  DFFX1_RVT \b2_last_row_reg[4]  ( .D(n61), .CLK(clk), .Q(n116) );
  DFFX1_RVT \b2_last_row_reg[3]  ( .D(n60), .CLK(clk), .Q(n123) );
  DFFX1_RVT \b2_last_row_reg[2]  ( .D(n59), .CLK(clk), .Q(n124) );
  DFFX1_RVT \b2_last_row_reg[1]  ( .D(n58), .CLK(clk), .Q(n126) );
  DFFX1_RVT \b2_last_row_reg[0]  ( .D(n57), .CLK(clk), .Q(n125) );
  DFFX1_RVT \b3_last_row_reg[12]  ( .D(n56), .CLK(clk), .Q(n165) );
  DFFX1_RVT \b3_last_row_reg[11]  ( .D(n55), .CLK(clk), .Q(n166) );
  DFFX1_RVT \b3_last_row_reg[10]  ( .D(n54), .CLK(clk), .Q(n164) );
  DFFX1_RVT \b3_last_row_reg[9]  ( .D(n53), .CLK(clk), .Q(n171) );
  DFFX1_RVT \b3_last_row_reg[8]  ( .D(n52), .CLK(clk), .Q(n172) );
  DFFX1_RVT \b3_last_row_reg[7]  ( .D(n51), .CLK(clk), .Q(n170) );
  DFFX1_RVT \b3_last_row_reg[6]  ( .D(n50), .CLK(clk), .Q(n177) );
  DFFX1_RVT \b3_last_row_reg[5]  ( .D(n49), .CLK(clk), .Q(n178) );
  DFFX1_RVT \b3_last_row_reg[4]  ( .D(n48), .CLK(clk), .Q(n176) );
  DFFX1_RVT \b3_last_row_reg[3]  ( .D(n47), .CLK(clk), .Q(n183) );
  DFFX1_RVT \b3_last_row_reg[2]  ( .D(n46), .CLK(clk), .Q(n184) );
  DFFX1_RVT \b3_last_row_reg[1]  ( .D(n45), .CLK(clk), .Q(n186) );
  DFFX1_RVT \b3_last_row_reg[0]  ( .D(n44), .CLK(clk), .Q(n185) );
  DFFARX1_RVT bank1_open_reg ( .D(n99), .CLK(clk), .RSTB(n210), .Q(n208) );
  DFFARX1_RVT bank3_open_reg ( .D(n97), .CLK(clk), .RSTB(n210), .Q(n206) );
  DFFARX1_RVT bank2_open_reg ( .D(n98), .CLK(clk), .RSTB(n210), .Q(n207) );
  DFFARX1_RVT bank0_open_reg ( .D(n100), .CLK(clk), .RSTB(n210), .Q(n209) );
  NAND3X0_RVT U3 ( .A1(n10), .A2(n9), .A3(bank_set), .Y(n200) );
  NAND3X0_RVT U4 ( .A1(bank_adr[1]), .A2(bank_adr[0]), .A3(bank_set), .Y(n196)
         );
  NAND3X0_RVT U5 ( .A1(bank_adr[1]), .A2(n10), .A3(bank_set), .Y(n192) );
  NAND3X0_RVT U6 ( .A1(bank_adr[0]), .A2(n9), .A3(bank_set), .Y(n187) );
  NBUFFX2_RVT U7 ( .A(n187), .Y(n1) );
  NBUFFX2_RVT U8 ( .A(n196), .Y(n2) );
  NBUFFX2_RVT U9 ( .A(n192), .Y(n3) );
  NBUFFX2_RVT U10 ( .A(n200), .Y(n4) );
  MUX41X1_RVT U11 ( .A1(n5), .A3(n6), .A2(n7), .A4(n8), .S0(n9), .S1(n10), .Y(
        row_same) );
  NOR4X0_RVT U12 ( .A1(n11), .A2(n12), .A3(n13), .A4(n14), .Y(n8) );
  NAND3X0_RVT U13 ( .A1(n15), .A2(n16), .A3(n17), .Y(n14) );
  XNOR2X1_RVT U14 ( .A1(row_adr[10]), .A2(n18), .Y(n17) );
  XNOR2X1_RVT U15 ( .A1(row_adr[12]), .A2(n19), .Y(n16) );
  XNOR2X1_RVT U16 ( .A1(row_adr[11]), .A2(n20), .Y(n15) );
  NAND3X0_RVT U17 ( .A1(n21), .A2(n22), .A3(n23), .Y(n13) );
  XNOR2X1_RVT U18 ( .A1(row_adr[7]), .A2(n24), .Y(n23) );
  XNOR2X1_RVT U19 ( .A1(row_adr[9]), .A2(n25), .Y(n22) );
  XNOR2X1_RVT U20 ( .A1(row_adr[8]), .A2(n26), .Y(n21) );
  NAND3X0_RVT U21 ( .A1(n27), .A2(n28), .A3(n29), .Y(n12) );
  XNOR2X1_RVT U22 ( .A1(row_adr[4]), .A2(n30), .Y(n29) );
  XNOR2X1_RVT U23 ( .A1(row_adr[6]), .A2(n31), .Y(n28) );
  XNOR2X1_RVT U24 ( .A1(row_adr[5]), .A2(n32), .Y(n27) );
  NAND4X0_RVT U25 ( .A1(n33), .A2(n34), .A3(n35), .A4(n36), .Y(n11) );
  XNOR2X1_RVT U26 ( .A1(row_adr[3]), .A2(n37), .Y(n36) );
  XNOR2X1_RVT U27 ( .A1(row_adr[2]), .A2(n38), .Y(n35) );
  XNOR2X1_RVT U28 ( .A1(row_adr[0]), .A2(n39), .Y(n34) );
  XNOR2X1_RVT U29 ( .A1(row_adr[1]), .A2(n40), .Y(n33) );
  NOR4X0_RVT U30 ( .A1(n41), .A2(n42), .A3(n43), .A4(n96), .Y(n7) );
  NAND3X0_RVT U31 ( .A1(n101), .A2(n102), .A3(n103), .Y(n96) );
  XNOR2X1_RVT U32 ( .A1(row_adr[10]), .A2(n104), .Y(n103) );
  XNOR2X1_RVT U33 ( .A1(row_adr[12]), .A2(n105), .Y(n102) );
  XNOR2X1_RVT U34 ( .A1(row_adr[11]), .A2(n106), .Y(n101) );
  NAND3X0_RVT U35 ( .A1(n107), .A2(n108), .A3(n109), .Y(n43) );
  XNOR2X1_RVT U36 ( .A1(row_adr[7]), .A2(n110), .Y(n109) );
  XNOR2X1_RVT U37 ( .A1(row_adr[9]), .A2(n111), .Y(n108) );
  XNOR2X1_RVT U38 ( .A1(row_adr[8]), .A2(n112), .Y(n107) );
  NAND3X0_RVT U39 ( .A1(n113), .A2(n114), .A3(n115), .Y(n42) );
  XNOR2X1_RVT U40 ( .A1(row_adr[4]), .A2(n116), .Y(n115) );
  XNOR2X1_RVT U41 ( .A1(row_adr[6]), .A2(n117), .Y(n114) );
  XNOR2X1_RVT U42 ( .A1(row_adr[5]), .A2(n118), .Y(n113) );
  NAND4X0_RVT U43 ( .A1(n119), .A2(n120), .A3(n121), .A4(n122), .Y(n41) );
  XNOR2X1_RVT U44 ( .A1(row_adr[3]), .A2(n123), .Y(n122) );
  XNOR2X1_RVT U45 ( .A1(row_adr[2]), .A2(n124), .Y(n121) );
  XNOR2X1_RVT U46 ( .A1(row_adr[0]), .A2(n125), .Y(n120) );
  XNOR2X1_RVT U47 ( .A1(row_adr[1]), .A2(n126), .Y(n119) );
  NOR4X0_RVT U48 ( .A1(n127), .A2(n128), .A3(n129), .A4(n130), .Y(n6) );
  NAND3X0_RVT U49 ( .A1(n131), .A2(n132), .A3(n133), .Y(n130) );
  XNOR2X1_RVT U50 ( .A1(row_adr[10]), .A2(n134), .Y(n133) );
  XNOR2X1_RVT U51 ( .A1(row_adr[12]), .A2(n135), .Y(n132) );
  XNOR2X1_RVT U52 ( .A1(row_adr[11]), .A2(n136), .Y(n131) );
  NAND3X0_RVT U53 ( .A1(n137), .A2(n138), .A3(n139), .Y(n129) );
  XNOR2X1_RVT U54 ( .A1(row_adr[7]), .A2(n140), .Y(n139) );
  XNOR2X1_RVT U55 ( .A1(row_adr[9]), .A2(n141), .Y(n138) );
  XNOR2X1_RVT U56 ( .A1(row_adr[8]), .A2(n142), .Y(n137) );
  NAND3X0_RVT U57 ( .A1(n143), .A2(n144), .A3(n145), .Y(n128) );
  XNOR2X1_RVT U58 ( .A1(row_adr[4]), .A2(n146), .Y(n145) );
  XNOR2X1_RVT U59 ( .A1(row_adr[6]), .A2(n147), .Y(n144) );
  XNOR2X1_RVT U60 ( .A1(row_adr[5]), .A2(n148), .Y(n143) );
  NAND4X0_RVT U61 ( .A1(n149), .A2(n150), .A3(n151), .A4(n152), .Y(n127) );
  XNOR2X1_RVT U62 ( .A1(row_adr[3]), .A2(n153), .Y(n152) );
  XNOR2X1_RVT U63 ( .A1(row_adr[2]), .A2(n154), .Y(n151) );
  XNOR2X1_RVT U64 ( .A1(row_adr[0]), .A2(n155), .Y(n150) );
  XNOR2X1_RVT U65 ( .A1(row_adr[1]), .A2(n156), .Y(n149) );
  NOR4X0_RVT U66 ( .A1(n157), .A2(n158), .A3(n159), .A4(n160), .Y(n5) );
  NAND3X0_RVT U67 ( .A1(n161), .A2(n162), .A3(n163), .Y(n160) );
  XNOR2X1_RVT U68 ( .A1(row_adr[10]), .A2(n164), .Y(n163) );
  XNOR2X1_RVT U69 ( .A1(row_adr[12]), .A2(n165), .Y(n162) );
  XNOR2X1_RVT U70 ( .A1(row_adr[11]), .A2(n166), .Y(n161) );
  NAND3X0_RVT U71 ( .A1(n167), .A2(n168), .A3(n169), .Y(n159) );
  XNOR2X1_RVT U72 ( .A1(row_adr[7]), .A2(n170), .Y(n169) );
  XNOR2X1_RVT U73 ( .A1(row_adr[9]), .A2(n171), .Y(n168) );
  XNOR2X1_RVT U74 ( .A1(row_adr[8]), .A2(n172), .Y(n167) );
  NAND3X0_RVT U75 ( .A1(n173), .A2(n174), .A3(n175), .Y(n158) );
  XNOR2X1_RVT U76 ( .A1(row_adr[4]), .A2(n176), .Y(n175) );
  XNOR2X1_RVT U77 ( .A1(row_adr[6]), .A2(n177), .Y(n174) );
  XNOR2X1_RVT U78 ( .A1(row_adr[5]), .A2(n178), .Y(n173) );
  NAND4X0_RVT U79 ( .A1(n179), .A2(n180), .A3(n181), .A4(n182), .Y(n157) );
  XNOR2X1_RVT U80 ( .A1(row_adr[3]), .A2(n183), .Y(n182) );
  XNOR2X1_RVT U81 ( .A1(row_adr[2]), .A2(n184), .Y(n181) );
  XNOR2X1_RVT U82 ( .A1(row_adr[0]), .A2(n185), .Y(n180) );
  XNOR2X1_RVT U83 ( .A1(row_adr[1]), .A2(n186), .Y(n179) );
  INVX0_RVT U84 ( .A(rst), .Y(n210) );
  NAND2X0_RVT U85 ( .A1(n1), .A2(n188), .Y(n99) );
  NAND3X0_RVT U86 ( .A1(n189), .A2(n190), .A3(n208), .Y(n188) );
  NAND2X0_RVT U87 ( .A1(n191), .A2(bank_adr[0]), .Y(n189) );
  NAND2X0_RVT U88 ( .A1(n3), .A2(n193), .Y(n98) );
  NAND3X0_RVT U89 ( .A1(n194), .A2(n190), .A3(n207), .Y(n193) );
  NAND2X0_RVT U90 ( .A1(n195), .A2(n10), .Y(n194) );
  NAND2X0_RVT U91 ( .A1(n2), .A2(n197), .Y(n97) );
  NAND3X0_RVT U92 ( .A1(n198), .A2(n190), .A3(n206), .Y(n197) );
  NAND2X0_RVT U93 ( .A1(n195), .A2(bank_adr[0]), .Y(n198) );
  AND2X1_RVT U94 ( .A1(bank_clr), .A2(bank_adr[1]), .Y(n195) );
  MUX21X1_RVT U95 ( .A1(n19), .A2(row_adr[12]), .S0(n199), .Y(n95) );
  MUX21X1_RVT U96 ( .A1(n20), .A2(row_adr[11]), .S0(n199), .Y(n94) );
  MUX21X1_RVT U97 ( .A1(row_adr[10]), .A2(n18), .S0(n4), .Y(n93) );
  MUX21X1_RVT U98 ( .A1(row_adr[9]), .A2(n25), .S0(n4), .Y(n92) );
  MUX21X1_RVT U99 ( .A1(row_adr[8]), .A2(n26), .S0(n4), .Y(n91) );
  MUX21X1_RVT U100 ( .A1(row_adr[7]), .A2(n24), .S0(n4), .Y(n90) );
  MUX21X1_RVT U101 ( .A1(row_adr[6]), .A2(n31), .S0(n4), .Y(n89) );
  MUX21X1_RVT U102 ( .A1(row_adr[5]), .A2(n32), .S0(n4), .Y(n88) );
  MUX21X1_RVT U103 ( .A1(n30), .A2(row_adr[4]), .S0(n199), .Y(n87) );
  MUX21X1_RVT U104 ( .A1(n37), .A2(row_adr[3]), .S0(n199), .Y(n86) );
  MUX21X1_RVT U105 ( .A1(n38), .A2(row_adr[2]), .S0(n199), .Y(n85) );
  MUX21X1_RVT U106 ( .A1(n40), .A2(row_adr[1]), .S0(n199), .Y(n84) );
  MUX21X1_RVT U107 ( .A1(n39), .A2(row_adr[0]), .S0(n199), .Y(n83) );
  INVX0_RVT U108 ( .A(n200), .Y(n199) );
  MUX21X1_RVT U109 ( .A1(n135), .A2(row_adr[12]), .S0(n201), .Y(n82) );
  MUX21X1_RVT U110 ( .A1(n136), .A2(row_adr[11]), .S0(n201), .Y(n81) );
  MUX21X1_RVT U111 ( .A1(row_adr[10]), .A2(n134), .S0(n1), .Y(n80) );
  MUX21X1_RVT U112 ( .A1(row_adr[9]), .A2(n141), .S0(n1), .Y(n79) );
  MUX21X1_RVT U113 ( .A1(row_adr[8]), .A2(n142), .S0(n1), .Y(n78) );
  MUX21X1_RVT U114 ( .A1(row_adr[7]), .A2(n140), .S0(n1), .Y(n77) );
  MUX21X1_RVT U115 ( .A1(row_adr[6]), .A2(n147), .S0(n1), .Y(n76) );
  MUX21X1_RVT U116 ( .A1(row_adr[5]), .A2(n148), .S0(n1), .Y(n75) );
  MUX21X1_RVT U117 ( .A1(n146), .A2(row_adr[4]), .S0(n201), .Y(n74) );
  MUX21X1_RVT U118 ( .A1(n153), .A2(row_adr[3]), .S0(n201), .Y(n73) );
  MUX21X1_RVT U119 ( .A1(n154), .A2(row_adr[2]), .S0(n201), .Y(n72) );
  MUX21X1_RVT U120 ( .A1(n156), .A2(row_adr[1]), .S0(n201), .Y(n71) );
  MUX21X1_RVT U121 ( .A1(n155), .A2(row_adr[0]), .S0(n201), .Y(n70) );
  INVX0_RVT U122 ( .A(n187), .Y(n201) );
  MUX21X1_RVT U123 ( .A1(n105), .A2(row_adr[12]), .S0(n202), .Y(n69) );
  MUX21X1_RVT U124 ( .A1(n106), .A2(row_adr[11]), .S0(n202), .Y(n68) );
  MUX21X1_RVT U125 ( .A1(row_adr[10]), .A2(n104), .S0(n3), .Y(n67) );
  MUX21X1_RVT U126 ( .A1(row_adr[9]), .A2(n111), .S0(n3), .Y(n66) );
  MUX21X1_RVT U127 ( .A1(row_adr[8]), .A2(n112), .S0(n3), .Y(n65) );
  MUX21X1_RVT U128 ( .A1(row_adr[7]), .A2(n110), .S0(n3), .Y(n64) );
  MUX21X1_RVT U129 ( .A1(row_adr[6]), .A2(n117), .S0(n3), .Y(n63) );
  MUX21X1_RVT U130 ( .A1(row_adr[5]), .A2(n118), .S0(n3), .Y(n62) );
  MUX21X1_RVT U131 ( .A1(n116), .A2(row_adr[4]), .S0(n202), .Y(n61) );
  MUX21X1_RVT U132 ( .A1(n123), .A2(row_adr[3]), .S0(n202), .Y(n60) );
  MUX21X1_RVT U133 ( .A1(n124), .A2(row_adr[2]), .S0(n202), .Y(n59) );
  MUX21X1_RVT U134 ( .A1(n126), .A2(row_adr[1]), .S0(n202), .Y(n58) );
  MUX21X1_RVT U135 ( .A1(n125), .A2(row_adr[0]), .S0(n202), .Y(n57) );
  INVX0_RVT U136 ( .A(n192), .Y(n202) );
  MUX21X1_RVT U137 ( .A1(n165), .A2(row_adr[12]), .S0(n203), .Y(n56) );
  MUX21X1_RVT U138 ( .A1(n166), .A2(row_adr[11]), .S0(n203), .Y(n55) );
  MUX21X1_RVT U139 ( .A1(row_adr[10]), .A2(n164), .S0(n2), .Y(n54) );
  MUX21X1_RVT U140 ( .A1(row_adr[9]), .A2(n171), .S0(n2), .Y(n53) );
  MUX21X1_RVT U141 ( .A1(row_adr[8]), .A2(n172), .S0(n2), .Y(n52) );
  MUX21X1_RVT U142 ( .A1(row_adr[7]), .A2(n170), .S0(n2), .Y(n51) );
  MUX21X1_RVT U143 ( .A1(row_adr[6]), .A2(n177), .S0(n2), .Y(n50) );
  MUX21X1_RVT U144 ( .A1(row_adr[5]), .A2(n178), .S0(n2), .Y(n49) );
  MUX21X1_RVT U145 ( .A1(n176), .A2(row_adr[4]), .S0(n203), .Y(n48) );
  MUX21X1_RVT U146 ( .A1(n183), .A2(row_adr[3]), .S0(n203), .Y(n47) );
  MUX21X1_RVT U147 ( .A1(n184), .A2(row_adr[2]), .S0(n203), .Y(n46) );
  MUX21X1_RVT U148 ( .A1(n186), .A2(row_adr[1]), .S0(n203), .Y(n45) );
  MUX21X1_RVT U149 ( .A1(n185), .A2(row_adr[0]), .S0(n203), .Y(n44) );
  INVX0_RVT U150 ( .A(n196), .Y(n203) );
  NAND2X0_RVT U151 ( .A1(n4), .A2(n204), .Y(n100) );
  NAND3X0_RVT U152 ( .A1(n205), .A2(n190), .A3(n209), .Y(n204) );
  INVX0_RVT U153 ( .A(bank_clr_all), .Y(n190) );
  NAND2X0_RVT U154 ( .A1(n191), .A2(n10), .Y(n205) );
  AND2X1_RVT U155 ( .A1(bank_clr), .A2(n9), .Y(n191) );
  INVX0_RVT U156 ( .A(bank_adr[1]), .Y(n9) );
  MUX41X1_RVT U157 ( .A1(n208), .A3(n206), .A2(n209), .A4(n207), .S0(
        bank_adr[1]), .S1(n10), .Y(bank_open) );
  INVX0_RVT U158 ( .A(bank_adr[0]), .Y(n10) );
  OR4X1_RVT U159 ( .A1(n209), .A2(n208), .A3(n207), .A4(n206), .Y(
        any_bank_open) );
endmodule


module mc_obct_0 ( clk, rst, row_adr, bank_adr, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same );
  input [12:0] row_adr;
  input [1:0] bank_adr;
  input clk, rst, bank_set, bank_clr, bank_clr_all;
  output bank_open, any_bank_open, row_same;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n96,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266;

  DFFARX1_RVT bank0_open_reg ( .D(n211), .CLK(clk), .RSTB(n210), .Q(n209) );
  DFFARX1_RVT bank1_open_reg ( .D(n212), .CLK(clk), .RSTB(n210), .Q(n208) );
  DFFARX1_RVT bank2_open_reg ( .D(n213), .CLK(clk), .RSTB(n210), .Q(n207) );
  DFFARX1_RVT bank3_open_reg ( .D(n214), .CLK(clk), .RSTB(n210), .Q(n206) );
  DFFX1_RVT \b0_last_row_reg[12]  ( .D(n215), .CLK(clk), .Q(n19) );
  DFFX1_RVT \b0_last_row_reg[11]  ( .D(n216), .CLK(clk), .Q(n20) );
  DFFX1_RVT \b0_last_row_reg[10]  ( .D(n217), .CLK(clk), .Q(n18) );
  DFFX1_RVT \b0_last_row_reg[9]  ( .D(n218), .CLK(clk), .Q(n25) );
  DFFX1_RVT \b0_last_row_reg[8]  ( .D(n219), .CLK(clk), .Q(n26) );
  DFFX1_RVT \b0_last_row_reg[7]  ( .D(n220), .CLK(clk), .Q(n24) );
  DFFX1_RVT \b0_last_row_reg[6]  ( .D(n221), .CLK(clk), .Q(n31) );
  DFFX1_RVT \b0_last_row_reg[5]  ( .D(n222), .CLK(clk), .Q(n32) );
  DFFX1_RVT \b0_last_row_reg[4]  ( .D(n223), .CLK(clk), .Q(n30) );
  DFFX1_RVT \b0_last_row_reg[3]  ( .D(n224), .CLK(clk), .Q(n37) );
  DFFX1_RVT \b0_last_row_reg[2]  ( .D(n225), .CLK(clk), .Q(n38) );
  DFFX1_RVT \b0_last_row_reg[1]  ( .D(n226), .CLK(clk), .Q(n40) );
  DFFX1_RVT \b0_last_row_reg[0]  ( .D(n227), .CLK(clk), .Q(n39) );
  DFFX1_RVT \b1_last_row_reg[12]  ( .D(n228), .CLK(clk), .Q(n135) );
  DFFX1_RVT \b1_last_row_reg[11]  ( .D(n229), .CLK(clk), .Q(n136) );
  DFFX1_RVT \b1_last_row_reg[10]  ( .D(n230), .CLK(clk), .Q(n134) );
  DFFX1_RVT \b1_last_row_reg[9]  ( .D(n231), .CLK(clk), .Q(n141) );
  DFFX1_RVT \b1_last_row_reg[8]  ( .D(n232), .CLK(clk), .Q(n142) );
  DFFX1_RVT \b1_last_row_reg[7]  ( .D(n233), .CLK(clk), .Q(n140) );
  DFFX1_RVT \b1_last_row_reg[6]  ( .D(n234), .CLK(clk), .Q(n147) );
  DFFX1_RVT \b1_last_row_reg[5]  ( .D(n235), .CLK(clk), .Q(n148) );
  DFFX1_RVT \b1_last_row_reg[4]  ( .D(n236), .CLK(clk), .Q(n146) );
  DFFX1_RVT \b1_last_row_reg[3]  ( .D(n237), .CLK(clk), .Q(n153) );
  DFFX1_RVT \b1_last_row_reg[2]  ( .D(n238), .CLK(clk), .Q(n154) );
  DFFX1_RVT \b1_last_row_reg[1]  ( .D(n239), .CLK(clk), .Q(n156) );
  DFFX1_RVT \b1_last_row_reg[0]  ( .D(n240), .CLK(clk), .Q(n155) );
  DFFX1_RVT \b2_last_row_reg[12]  ( .D(n241), .CLK(clk), .Q(n105) );
  DFFX1_RVT \b2_last_row_reg[11]  ( .D(n242), .CLK(clk), .Q(n106) );
  DFFX1_RVT \b2_last_row_reg[10]  ( .D(n243), .CLK(clk), .Q(n104) );
  DFFX1_RVT \b2_last_row_reg[9]  ( .D(n244), .CLK(clk), .Q(n111) );
  DFFX1_RVT \b2_last_row_reg[8]  ( .D(n245), .CLK(clk), .Q(n112) );
  DFFX1_RVT \b2_last_row_reg[7]  ( .D(n246), .CLK(clk), .Q(n110) );
  DFFX1_RVT \b2_last_row_reg[6]  ( .D(n247), .CLK(clk), .Q(n117) );
  DFFX1_RVT \b2_last_row_reg[5]  ( .D(n248), .CLK(clk), .Q(n118) );
  DFFX1_RVT \b2_last_row_reg[4]  ( .D(n249), .CLK(clk), .Q(n116) );
  DFFX1_RVT \b2_last_row_reg[3]  ( .D(n250), .CLK(clk), .Q(n123) );
  DFFX1_RVT \b2_last_row_reg[2]  ( .D(n251), .CLK(clk), .Q(n124) );
  DFFX1_RVT \b2_last_row_reg[1]  ( .D(n252), .CLK(clk), .Q(n126) );
  DFFX1_RVT \b2_last_row_reg[0]  ( .D(n253), .CLK(clk), .Q(n125) );
  DFFX1_RVT \b3_last_row_reg[12]  ( .D(n254), .CLK(clk), .Q(n165) );
  DFFX1_RVT \b3_last_row_reg[11]  ( .D(n255), .CLK(clk), .Q(n166) );
  DFFX1_RVT \b3_last_row_reg[10]  ( .D(n256), .CLK(clk), .Q(n164) );
  DFFX1_RVT \b3_last_row_reg[9]  ( .D(n257), .CLK(clk), .Q(n171) );
  DFFX1_RVT \b3_last_row_reg[8]  ( .D(n258), .CLK(clk), .Q(n172) );
  DFFX1_RVT \b3_last_row_reg[7]  ( .D(n259), .CLK(clk), .Q(n170) );
  DFFX1_RVT \b3_last_row_reg[6]  ( .D(n260), .CLK(clk), .Q(n177) );
  DFFX1_RVT \b3_last_row_reg[5]  ( .D(n261), .CLK(clk), .Q(n178) );
  DFFX1_RVT \b3_last_row_reg[4]  ( .D(n262), .CLK(clk), .Q(n176) );
  DFFX1_RVT \b3_last_row_reg[3]  ( .D(n263), .CLK(clk), .Q(n183) );
  DFFX1_RVT \b3_last_row_reg[2]  ( .D(n264), .CLK(clk), .Q(n184) );
  DFFX1_RVT \b3_last_row_reg[1]  ( .D(n265), .CLK(clk), .Q(n186) );
  DFFX1_RVT \b3_last_row_reg[0]  ( .D(n266), .CLK(clk), .Q(n185) );
  NAND3X0_RVT U3 ( .A1(n10), .A2(n9), .A3(bank_set), .Y(n200) );
  NAND3X0_RVT U4 ( .A1(bank_adr[0]), .A2(n9), .A3(bank_set), .Y(n187) );
  NAND3X0_RVT U5 ( .A1(bank_adr[1]), .A2(bank_adr[0]), .A3(bank_set), .Y(n196)
         );
  NAND3X0_RVT U6 ( .A1(bank_adr[1]), .A2(n10), .A3(bank_set), .Y(n192) );
  NBUFFX2_RVT U7 ( .A(n187), .Y(n1) );
  NBUFFX2_RVT U8 ( .A(n196), .Y(n2) );
  NBUFFX2_RVT U9 ( .A(n192), .Y(n3) );
  NBUFFX2_RVT U10 ( .A(n200), .Y(n4) );
  MUX41X1_RVT U11 ( .A1(n5), .A3(n6), .A2(n7), .A4(n8), .S0(n9), .S1(n10), .Y(
        row_same) );
  NOR4X0_RVT U12 ( .A1(n11), .A2(n12), .A3(n13), .A4(n14), .Y(n8) );
  NAND3X0_RVT U13 ( .A1(n15), .A2(n16), .A3(n17), .Y(n14) );
  XNOR2X1_RVT U14 ( .A1(row_adr[10]), .A2(n18), .Y(n17) );
  XNOR2X1_RVT U15 ( .A1(row_adr[12]), .A2(n19), .Y(n16) );
  XNOR2X1_RVT U16 ( .A1(row_adr[11]), .A2(n20), .Y(n15) );
  NAND3X0_RVT U17 ( .A1(n21), .A2(n22), .A3(n23), .Y(n13) );
  XNOR2X1_RVT U18 ( .A1(row_adr[7]), .A2(n24), .Y(n23) );
  XNOR2X1_RVT U19 ( .A1(row_adr[9]), .A2(n25), .Y(n22) );
  XNOR2X1_RVT U20 ( .A1(row_adr[8]), .A2(n26), .Y(n21) );
  NAND3X0_RVT U21 ( .A1(n27), .A2(n28), .A3(n29), .Y(n12) );
  XNOR2X1_RVT U22 ( .A1(row_adr[4]), .A2(n30), .Y(n29) );
  XNOR2X1_RVT U23 ( .A1(row_adr[6]), .A2(n31), .Y(n28) );
  XNOR2X1_RVT U24 ( .A1(row_adr[5]), .A2(n32), .Y(n27) );
  NAND4X0_RVT U25 ( .A1(n33), .A2(n34), .A3(n35), .A4(n36), .Y(n11) );
  XNOR2X1_RVT U26 ( .A1(row_adr[3]), .A2(n37), .Y(n36) );
  XNOR2X1_RVT U27 ( .A1(row_adr[2]), .A2(n38), .Y(n35) );
  XNOR2X1_RVT U28 ( .A1(row_adr[0]), .A2(n39), .Y(n34) );
  XNOR2X1_RVT U29 ( .A1(row_adr[1]), .A2(n40), .Y(n33) );
  NOR4X0_RVT U30 ( .A1(n41), .A2(n42), .A3(n43), .A4(n96), .Y(n7) );
  NAND3X0_RVT U31 ( .A1(n101), .A2(n102), .A3(n103), .Y(n96) );
  XNOR2X1_RVT U32 ( .A1(row_adr[10]), .A2(n104), .Y(n103) );
  XNOR2X1_RVT U33 ( .A1(row_adr[12]), .A2(n105), .Y(n102) );
  XNOR2X1_RVT U34 ( .A1(row_adr[11]), .A2(n106), .Y(n101) );
  NAND3X0_RVT U35 ( .A1(n107), .A2(n108), .A3(n109), .Y(n43) );
  XNOR2X1_RVT U36 ( .A1(row_adr[7]), .A2(n110), .Y(n109) );
  XNOR2X1_RVT U37 ( .A1(row_adr[9]), .A2(n111), .Y(n108) );
  XNOR2X1_RVT U38 ( .A1(row_adr[8]), .A2(n112), .Y(n107) );
  NAND3X0_RVT U39 ( .A1(n113), .A2(n114), .A3(n115), .Y(n42) );
  XNOR2X1_RVT U40 ( .A1(row_adr[4]), .A2(n116), .Y(n115) );
  XNOR2X1_RVT U41 ( .A1(row_adr[6]), .A2(n117), .Y(n114) );
  XNOR2X1_RVT U42 ( .A1(row_adr[5]), .A2(n118), .Y(n113) );
  NAND4X0_RVT U43 ( .A1(n119), .A2(n120), .A3(n121), .A4(n122), .Y(n41) );
  XNOR2X1_RVT U44 ( .A1(row_adr[3]), .A2(n123), .Y(n122) );
  XNOR2X1_RVT U45 ( .A1(row_adr[2]), .A2(n124), .Y(n121) );
  XNOR2X1_RVT U46 ( .A1(row_adr[0]), .A2(n125), .Y(n120) );
  XNOR2X1_RVT U47 ( .A1(row_adr[1]), .A2(n126), .Y(n119) );
  NOR4X0_RVT U48 ( .A1(n127), .A2(n128), .A3(n129), .A4(n130), .Y(n6) );
  NAND3X0_RVT U49 ( .A1(n131), .A2(n132), .A3(n133), .Y(n130) );
  XNOR2X1_RVT U50 ( .A1(row_adr[10]), .A2(n134), .Y(n133) );
  XNOR2X1_RVT U51 ( .A1(row_adr[12]), .A2(n135), .Y(n132) );
  XNOR2X1_RVT U52 ( .A1(row_adr[11]), .A2(n136), .Y(n131) );
  NAND3X0_RVT U53 ( .A1(n137), .A2(n138), .A3(n139), .Y(n129) );
  XNOR2X1_RVT U54 ( .A1(row_adr[7]), .A2(n140), .Y(n139) );
  XNOR2X1_RVT U55 ( .A1(row_adr[9]), .A2(n141), .Y(n138) );
  XNOR2X1_RVT U56 ( .A1(row_adr[8]), .A2(n142), .Y(n137) );
  NAND3X0_RVT U57 ( .A1(n143), .A2(n144), .A3(n145), .Y(n128) );
  XNOR2X1_RVT U58 ( .A1(row_adr[4]), .A2(n146), .Y(n145) );
  XNOR2X1_RVT U59 ( .A1(row_adr[6]), .A2(n147), .Y(n144) );
  XNOR2X1_RVT U60 ( .A1(row_adr[5]), .A2(n148), .Y(n143) );
  NAND4X0_RVT U61 ( .A1(n149), .A2(n150), .A3(n151), .A4(n152), .Y(n127) );
  XNOR2X1_RVT U62 ( .A1(row_adr[3]), .A2(n153), .Y(n152) );
  XNOR2X1_RVT U63 ( .A1(row_adr[2]), .A2(n154), .Y(n151) );
  XNOR2X1_RVT U64 ( .A1(row_adr[0]), .A2(n155), .Y(n150) );
  XNOR2X1_RVT U65 ( .A1(row_adr[1]), .A2(n156), .Y(n149) );
  NOR4X0_RVT U66 ( .A1(n157), .A2(n158), .A3(n159), .A4(n160), .Y(n5) );
  NAND3X0_RVT U67 ( .A1(n161), .A2(n162), .A3(n163), .Y(n160) );
  XNOR2X1_RVT U68 ( .A1(row_adr[10]), .A2(n164), .Y(n163) );
  XNOR2X1_RVT U69 ( .A1(row_adr[12]), .A2(n165), .Y(n162) );
  XNOR2X1_RVT U70 ( .A1(row_adr[11]), .A2(n166), .Y(n161) );
  NAND3X0_RVT U71 ( .A1(n167), .A2(n168), .A3(n169), .Y(n159) );
  XNOR2X1_RVT U72 ( .A1(row_adr[7]), .A2(n170), .Y(n169) );
  XNOR2X1_RVT U73 ( .A1(row_adr[9]), .A2(n171), .Y(n168) );
  XNOR2X1_RVT U74 ( .A1(row_adr[8]), .A2(n172), .Y(n167) );
  NAND3X0_RVT U75 ( .A1(n173), .A2(n174), .A3(n175), .Y(n158) );
  XNOR2X1_RVT U76 ( .A1(row_adr[4]), .A2(n176), .Y(n175) );
  XNOR2X1_RVT U77 ( .A1(row_adr[6]), .A2(n177), .Y(n174) );
  XNOR2X1_RVT U78 ( .A1(row_adr[5]), .A2(n178), .Y(n173) );
  NAND4X0_RVT U79 ( .A1(n179), .A2(n180), .A3(n181), .A4(n182), .Y(n157) );
  XNOR2X1_RVT U80 ( .A1(row_adr[3]), .A2(n183), .Y(n182) );
  XNOR2X1_RVT U81 ( .A1(row_adr[2]), .A2(n184), .Y(n181) );
  XNOR2X1_RVT U82 ( .A1(row_adr[0]), .A2(n185), .Y(n180) );
  XNOR2X1_RVT U83 ( .A1(row_adr[1]), .A2(n186), .Y(n179) );
  INVX0_RVT U84 ( .A(rst), .Y(n210) );
  NAND2X0_RVT U85 ( .A1(n1), .A2(n188), .Y(n212) );
  NAND3X0_RVT U86 ( .A1(n189), .A2(n190), .A3(n208), .Y(n188) );
  NAND2X0_RVT U87 ( .A1(n191), .A2(bank_adr[0]), .Y(n189) );
  NAND2X0_RVT U88 ( .A1(n3), .A2(n193), .Y(n213) );
  NAND3X0_RVT U89 ( .A1(n194), .A2(n190), .A3(n207), .Y(n193) );
  NAND2X0_RVT U90 ( .A1(n195), .A2(n10), .Y(n194) );
  NAND2X0_RVT U91 ( .A1(n2), .A2(n197), .Y(n214) );
  NAND3X0_RVT U92 ( .A1(n198), .A2(n190), .A3(n206), .Y(n197) );
  NAND2X0_RVT U93 ( .A1(n195), .A2(bank_adr[0]), .Y(n198) );
  AND2X1_RVT U94 ( .A1(bank_clr), .A2(bank_adr[1]), .Y(n195) );
  MUX21X1_RVT U95 ( .A1(n19), .A2(row_adr[12]), .S0(n199), .Y(n215) );
  MUX21X1_RVT U96 ( .A1(n20), .A2(row_adr[11]), .S0(n199), .Y(n216) );
  MUX21X1_RVT U97 ( .A1(row_adr[10]), .A2(n18), .S0(n4), .Y(n217) );
  MUX21X1_RVT U98 ( .A1(row_adr[9]), .A2(n25), .S0(n4), .Y(n218) );
  MUX21X1_RVT U99 ( .A1(row_adr[8]), .A2(n26), .S0(n4), .Y(n219) );
  MUX21X1_RVT U100 ( .A1(row_adr[7]), .A2(n24), .S0(n4), .Y(n220) );
  MUX21X1_RVT U101 ( .A1(row_adr[6]), .A2(n31), .S0(n4), .Y(n221) );
  MUX21X1_RVT U102 ( .A1(row_adr[5]), .A2(n32), .S0(n4), .Y(n222) );
  MUX21X1_RVT U103 ( .A1(n30), .A2(row_adr[4]), .S0(n199), .Y(n223) );
  MUX21X1_RVT U104 ( .A1(n37), .A2(row_adr[3]), .S0(n199), .Y(n224) );
  MUX21X1_RVT U105 ( .A1(n38), .A2(row_adr[2]), .S0(n199), .Y(n225) );
  MUX21X1_RVT U106 ( .A1(n40), .A2(row_adr[1]), .S0(n199), .Y(n226) );
  MUX21X1_RVT U107 ( .A1(n39), .A2(row_adr[0]), .S0(n199), .Y(n227) );
  INVX0_RVT U108 ( .A(n200), .Y(n199) );
  MUX21X1_RVT U109 ( .A1(n135), .A2(row_adr[12]), .S0(n201), .Y(n228) );
  MUX21X1_RVT U110 ( .A1(n136), .A2(row_adr[11]), .S0(n201), .Y(n229) );
  MUX21X1_RVT U111 ( .A1(row_adr[10]), .A2(n134), .S0(n1), .Y(n230) );
  MUX21X1_RVT U112 ( .A1(row_adr[9]), .A2(n141), .S0(n1), .Y(n231) );
  MUX21X1_RVT U113 ( .A1(row_adr[8]), .A2(n142), .S0(n1), .Y(n232) );
  MUX21X1_RVT U114 ( .A1(row_adr[7]), .A2(n140), .S0(n1), .Y(n233) );
  MUX21X1_RVT U115 ( .A1(row_adr[6]), .A2(n147), .S0(n1), .Y(n234) );
  MUX21X1_RVT U116 ( .A1(row_adr[5]), .A2(n148), .S0(n1), .Y(n235) );
  MUX21X1_RVT U117 ( .A1(n146), .A2(row_adr[4]), .S0(n201), .Y(n236) );
  MUX21X1_RVT U118 ( .A1(n153), .A2(row_adr[3]), .S0(n201), .Y(n237) );
  MUX21X1_RVT U119 ( .A1(n154), .A2(row_adr[2]), .S0(n201), .Y(n238) );
  MUX21X1_RVT U120 ( .A1(n156), .A2(row_adr[1]), .S0(n201), .Y(n239) );
  MUX21X1_RVT U121 ( .A1(n155), .A2(row_adr[0]), .S0(n201), .Y(n240) );
  INVX0_RVT U122 ( .A(n187), .Y(n201) );
  MUX21X1_RVT U123 ( .A1(n105), .A2(row_adr[12]), .S0(n202), .Y(n241) );
  MUX21X1_RVT U124 ( .A1(n106), .A2(row_adr[11]), .S0(n202), .Y(n242) );
  MUX21X1_RVT U125 ( .A1(row_adr[10]), .A2(n104), .S0(n3), .Y(n243) );
  MUX21X1_RVT U126 ( .A1(row_adr[9]), .A2(n111), .S0(n3), .Y(n244) );
  MUX21X1_RVT U127 ( .A1(row_adr[8]), .A2(n112), .S0(n3), .Y(n245) );
  MUX21X1_RVT U128 ( .A1(row_adr[7]), .A2(n110), .S0(n3), .Y(n246) );
  MUX21X1_RVT U129 ( .A1(row_adr[6]), .A2(n117), .S0(n3), .Y(n247) );
  MUX21X1_RVT U130 ( .A1(row_adr[5]), .A2(n118), .S0(n3), .Y(n248) );
  MUX21X1_RVT U131 ( .A1(n116), .A2(row_adr[4]), .S0(n202), .Y(n249) );
  MUX21X1_RVT U132 ( .A1(n123), .A2(row_adr[3]), .S0(n202), .Y(n250) );
  MUX21X1_RVT U133 ( .A1(n124), .A2(row_adr[2]), .S0(n202), .Y(n251) );
  MUX21X1_RVT U134 ( .A1(n126), .A2(row_adr[1]), .S0(n202), .Y(n252) );
  MUX21X1_RVT U135 ( .A1(n125), .A2(row_adr[0]), .S0(n202), .Y(n253) );
  INVX0_RVT U136 ( .A(n192), .Y(n202) );
  MUX21X1_RVT U137 ( .A1(n165), .A2(row_adr[12]), .S0(n203), .Y(n254) );
  MUX21X1_RVT U138 ( .A1(n166), .A2(row_adr[11]), .S0(n203), .Y(n255) );
  MUX21X1_RVT U139 ( .A1(row_adr[10]), .A2(n164), .S0(n2), .Y(n256) );
  MUX21X1_RVT U140 ( .A1(row_adr[9]), .A2(n171), .S0(n2), .Y(n257) );
  MUX21X1_RVT U141 ( .A1(row_adr[8]), .A2(n172), .S0(n2), .Y(n258) );
  MUX21X1_RVT U142 ( .A1(row_adr[7]), .A2(n170), .S0(n2), .Y(n259) );
  MUX21X1_RVT U143 ( .A1(row_adr[6]), .A2(n177), .S0(n2), .Y(n260) );
  MUX21X1_RVT U144 ( .A1(row_adr[5]), .A2(n178), .S0(n2), .Y(n261) );
  MUX21X1_RVT U145 ( .A1(n176), .A2(row_adr[4]), .S0(n203), .Y(n262) );
  MUX21X1_RVT U146 ( .A1(n183), .A2(row_adr[3]), .S0(n203), .Y(n263) );
  MUX21X1_RVT U147 ( .A1(n184), .A2(row_adr[2]), .S0(n203), .Y(n264) );
  MUX21X1_RVT U148 ( .A1(n186), .A2(row_adr[1]), .S0(n203), .Y(n265) );
  MUX21X1_RVT U149 ( .A1(n185), .A2(row_adr[0]), .S0(n203), .Y(n266) );
  INVX0_RVT U150 ( .A(n196), .Y(n203) );
  NAND2X0_RVT U151 ( .A1(n4), .A2(n204), .Y(n211) );
  NAND3X0_RVT U152 ( .A1(n205), .A2(n190), .A3(n209), .Y(n204) );
  INVX0_RVT U153 ( .A(bank_clr_all), .Y(n190) );
  NAND2X0_RVT U154 ( .A1(n191), .A2(n10), .Y(n205) );
  AND2X1_RVT U155 ( .A1(bank_clr), .A2(n9), .Y(n191) );
  INVX0_RVT U156 ( .A(bank_adr[1]), .Y(n9) );
  MUX41X1_RVT U157 ( .A1(n208), .A3(n206), .A2(n209), .A4(n207), .S0(
        bank_adr[1]), .S1(n10), .Y(bank_open) );
  INVX0_RVT U158 ( .A(bank_adr[0]), .Y(n10) );
  OR4X1_RVT U159 ( .A1(n209), .A2(n208), .A3(n207), .A4(n206), .Y(
        any_bank_open) );
endmodule


module mc_obct_dummy_5 ( clk, rst, row_adr, bank_adr, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same );
  input [12:0] row_adr;
  input [1:0] bank_adr;
  input clk, rst, bank_set, bank_clr, bank_clr_all;
  output bank_open, any_bank_open, row_same;

  assign row_same = 1'b0;
  assign any_bank_open = 1'b0;
  assign bank_open = 1'b0;

endmodule


module mc_obct_dummy_4 ( clk, rst, row_adr, bank_adr, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same );
  input [12:0] row_adr;
  input [1:0] bank_adr;
  input clk, rst, bank_set, bank_clr, bank_clr_all;
  output bank_open, any_bank_open, row_same;

  assign row_same = 1'b0;
  assign any_bank_open = 1'b0;
  assign bank_open = 1'b0;

endmodule


module mc_obct_dummy_3 ( clk, rst, row_adr, bank_adr, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same );
  input [12:0] row_adr;
  input [1:0] bank_adr;
  input clk, rst, bank_set, bank_clr, bank_clr_all;
  output bank_open, any_bank_open, row_same;

  assign row_same = 1'b0;
  assign any_bank_open = 1'b0;
  assign bank_open = 1'b0;

endmodule


module mc_obct_dummy_2 ( clk, rst, row_adr, bank_adr, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same );
  input [12:0] row_adr;
  input [1:0] bank_adr;
  input clk, rst, bank_set, bank_clr, bank_clr_all;
  output bank_open, any_bank_open, row_same;

  assign row_same = 1'b0;
  assign any_bank_open = 1'b0;
  assign bank_open = 1'b0;

endmodule


module mc_obct_dummy_1 ( clk, rst, row_adr, bank_adr, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same );
  input [12:0] row_adr;
  input [1:0] bank_adr;
  input clk, rst, bank_set, bank_clr, bank_clr_all;
  output bank_open, any_bank_open, row_same;

  assign row_same = 1'b0;
  assign any_bank_open = 1'b0;
  assign bank_open = 1'b0;

endmodule


module mc_obct_dummy_0 ( clk, rst, row_adr, bank_adr, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same );
  input [12:0] row_adr;
  input [1:0] bank_adr;
  input clk, rst, bank_set, bank_clr, bank_clr_all;
  output bank_open, any_bank_open, row_same;

  assign row_same = 1'b0;
  assign any_bank_open = 1'b0;
  assign bank_open = 1'b0;

endmodule


module mc_obct_top ( clk, rst, cs, row_adr, bank_adr, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same, rfr_ack );
  input [7:0] cs;
  input [12:0] row_adr;
  input [1:0] bank_adr;
  input clk, rst, bank_set, bank_clr, bank_clr_all, rfr_ack;
  output bank_open, any_bank_open, row_same;
  wire   bank_set_0, bank_set_1, bank_set_2, bank_set_3, bank_set_4,
         bank_set_5, bank_set_6, bank_set_7, bank_clr_0, bank_clr_1,
         bank_clr_2, bank_clr_3, bank_clr_4, bank_clr_5, bank_clr_6,
         bank_clr_7, bank_clr_all_0, bank_clr_all_1, bank_clr_all_2,
         bank_clr_all_3, bank_clr_all_4, bank_clr_all_5, bank_clr_all_6,
         bank_clr_all_7, bank_open_0, bank_open_1, row_same_0, row_same_1,
         any_bank_open_0, any_bank_open_1, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16;

  mc_obct_1 u0 ( .clk(clk), .rst(rst), .row_adr({n5, n4, n11, n13, n12, n14, 
        n16, n15, n6, n10, n9, n7, n8}), .bank_adr(bank_adr), .bank_set(
        bank_set_0), .bank_clr(bank_clr_0), .bank_clr_all(bank_clr_all_0), 
        .bank_open(bank_open_0), .any_bank_open(any_bank_open_0), .row_same(
        row_same_0) );
  mc_obct_0 u1 ( .clk(clk), .rst(rst), .row_adr(row_adr), .bank_adr(bank_adr), 
        .bank_set(bank_set_1), .bank_clr(bank_clr_1), .bank_clr_all(
        bank_clr_all_1), .bank_open(bank_open_1), .any_bank_open(
        any_bank_open_1), .row_same(row_same_1) );
  mc_obct_dummy_5 u2 ( .clk(clk), .rst(rst), .row_adr({n5, n4, n11, n13, n12, 
        n14, n16, n15, n6, n10, n9, n7, n8}), .bank_adr(bank_adr), .bank_set(
        bank_set_2), .bank_clr(bank_clr_2), .bank_clr_all(bank_clr_all_2) );
  mc_obct_dummy_4 u3 ( .clk(clk), .rst(rst), .row_adr({n5, n4, n11, n13, n12, 
        n14, n16, n15, n6, n10, n9, n7, n8}), .bank_adr(bank_adr), .bank_set(
        bank_set_3), .bank_clr(bank_clr_3), .bank_clr_all(bank_clr_all_3) );
  mc_obct_dummy_3 u4 ( .clk(clk), .rst(rst), .row_adr({n5, n4, n11, n13, n12, 
        n14, n16, n15, n6, n10, n9, n7, n8}), .bank_adr(bank_adr), .bank_set(
        bank_set_4), .bank_clr(bank_clr_4), .bank_clr_all(bank_clr_all_4) );
  mc_obct_dummy_2 u5 ( .clk(clk), .rst(rst), .row_adr({n5, n4, n11, n13, n12, 
        n14, n16, n15, n6, n10, n9, n7, n8}), .bank_adr(bank_adr), .bank_set(
        bank_set_5), .bank_clr(bank_clr_5), .bank_clr_all(bank_clr_all_5) );
  mc_obct_dummy_1 u6 ( .clk(clk), .rst(rst), .row_adr({n5, n4, n11, n13, n12, 
        n14, n16, n15, n6, n10, n9, n7, n8}), .bank_adr(bank_adr), .bank_set(
        bank_set_6), .bank_clr(bank_clr_6), .bank_clr_all(bank_clr_all_6) );
  mc_obct_dummy_0 u7 ( .clk(clk), .rst(rst), .row_adr({n5, n4, n11, n13, n12, 
        n14, n16, n15, n6, n10, n9, n7, n8}), .bank_adr(bank_adr), .bank_set(
        bank_set_7), .bank_clr(bank_clr_7), .bank_clr_all(bank_clr_all_7) );
  DFFX1_RVT any_bank_open_reg ( .D(n3), .CLK(clk), .Q(any_bank_open) );
  DFFX1_RVT bank_open_reg ( .D(n2), .CLK(clk), .Q(bank_open) );
  DFFX1_RVT row_same_reg ( .D(n1), .CLK(clk), .Q(row_same) );
  AND2X1_RVT U3 ( .A1(cs[1]), .A2(bank_set), .Y(bank_set_1) );
  AND2X1_RVT U4 ( .A1(bank_clr), .A2(cs[0]), .Y(bank_clr_0) );
  AND2X1_RVT U5 ( .A1(bank_clr), .A2(cs[1]), .Y(bank_clr_1) );
  AO21X1_RVT U6 ( .A1(bank_clr_all), .A2(cs[1]), .A3(rfr_ack), .Y(
        bank_clr_all_1) );
  AO21X1_RVT U7 ( .A1(bank_clr_all), .A2(cs[0]), .A3(rfr_ack), .Y(
        bank_clr_all_0) );
  AND2X1_RVT U8 ( .A1(cs[2]), .A2(bank_set), .Y(bank_set_2) );
  AND2X1_RVT U9 ( .A1(cs[3]), .A2(bank_set), .Y(bank_set_3) );
  AND2X1_RVT U10 ( .A1(cs[4]), .A2(bank_set), .Y(bank_set_4) );
  AND2X1_RVT U11 ( .A1(cs[5]), .A2(bank_set), .Y(bank_set_5) );
  AND2X1_RVT U12 ( .A1(cs[6]), .A2(bank_set), .Y(bank_set_6) );
  AND2X1_RVT U13 ( .A1(cs[7]), .A2(bank_set), .Y(bank_set_7) );
  AND2X1_RVT U14 ( .A1(bank_clr), .A2(cs[4]), .Y(bank_clr_4) );
  AND2X1_RVT U15 ( .A1(bank_clr), .A2(cs[2]), .Y(bank_clr_2) );
  AND2X1_RVT U16 ( .A1(bank_clr), .A2(cs[5]), .Y(bank_clr_5) );
  AND2X1_RVT U17 ( .A1(bank_clr), .A2(cs[3]), .Y(bank_clr_3) );
  AND2X1_RVT U18 ( .A1(bank_clr), .A2(cs[6]), .Y(bank_clr_6) );
  AND2X1_RVT U19 ( .A1(bank_clr), .A2(cs[7]), .Y(bank_clr_7) );
  AO21X1_RVT U20 ( .A1(bank_clr_all), .A2(cs[2]), .A3(rfr_ack), .Y(
        bank_clr_all_2) );
  AO21X1_RVT U21 ( .A1(bank_clr_all), .A2(cs[3]), .A3(rfr_ack), .Y(
        bank_clr_all_3) );
  AO21X1_RVT U22 ( .A1(bank_clr_all), .A2(cs[4]), .A3(rfr_ack), .Y(
        bank_clr_all_4) );
  AO21X1_RVT U23 ( .A1(bank_clr_all), .A2(cs[5]), .A3(rfr_ack), .Y(
        bank_clr_all_5) );
  AO21X1_RVT U24 ( .A1(bank_clr_all), .A2(cs[6]), .A3(rfr_ack), .Y(
        bank_clr_all_6) );
  AO21X1_RVT U25 ( .A1(bank_clr_all), .A2(cs[7]), .A3(rfr_ack), .Y(
        bank_clr_all_7) );
  NBUFFX2_RVT U26 ( .A(row_adr[11]), .Y(n4) );
  NBUFFX2_RVT U27 ( .A(row_adr[12]), .Y(n5) );
  NBUFFX2_RVT U28 ( .A(row_adr[4]), .Y(n6) );
  NBUFFX2_RVT U29 ( .A(row_adr[1]), .Y(n7) );
  NBUFFX2_RVT U30 ( .A(row_adr[0]), .Y(n8) );
  NBUFFX2_RVT U31 ( .A(row_adr[2]), .Y(n9) );
  NBUFFX2_RVT U32 ( .A(row_adr[3]), .Y(n10) );
  NBUFFX2_RVT U33 ( .A(row_adr[10]), .Y(n11) );
  NBUFFX2_RVT U34 ( .A(row_adr[8]), .Y(n12) );
  NBUFFX2_RVT U35 ( .A(row_adr[9]), .Y(n13) );
  NBUFFX2_RVT U36 ( .A(row_adr[7]), .Y(n14) );
  NBUFFX2_RVT U37 ( .A(row_adr[5]), .Y(n15) );
  NBUFFX2_RVT U38 ( .A(row_adr[6]), .Y(n16) );
  AO22X1_RVT U39 ( .A1(any_bank_open_1), .A2(cs[1]), .A3(any_bank_open_0), 
        .A4(cs[0]), .Y(n3) );
  AO22X1_RVT U40 ( .A1(row_same_1), .A2(cs[1]), .A3(row_same_0), .A4(cs[0]), 
        .Y(n1) );
  AO22X1_RVT U41 ( .A1(bank_open_1), .A2(cs[1]), .A3(bank_open_0), .A4(cs[0]), 
        .Y(n2) );
  AND2X1_RVT U42 ( .A1(cs[0]), .A2(bank_set), .Y(bank_set_0) );
endmodule


module mc_rd_fifo ( clk, rst, clr, din, we, dout, re );
  input [35:0] din;
  output [35:0] dout;
  input clk, rst, clr, we, re;
  wire   n2, n4, n6, n8, n10, n11, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n197, n198, n199, n200, n201, n202, n203, n204, n1, n3,
         n5, n7, n9, n12, n13, n196, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245;
  wire   [3:0] wr_adr;
  wire   [35:0] r0;
  wire   [35:0] r1;
  wire   [35:0] r2;
  wire   [35:0] r3;

  DFFX1_RVT \r0_reg[8]  ( .D(n168), .CLK(clk), .Q(r0[8]) );
  DFFX1_RVT \r0_reg[4]  ( .D(n164), .CLK(clk), .Q(r0[4]) );
  DFFX1_RVT \r0_reg[2]  ( .D(n162), .CLK(clk), .Q(r0[2]) );
  DFFX1_RVT \r0_reg[1]  ( .D(n161), .CLK(clk), .Q(r0[1]) );
  DFFX1_RVT \r0_reg[0]  ( .D(n160), .CLK(clk), .Q(r0[0]) );
  DFFX1_RVT \r0_reg[16]  ( .D(n176), .CLK(clk), .Q(r0[16]) );
  DFFX1_RVT \r0_reg[11]  ( .D(n171), .CLK(clk), .Q(r0[11]) );
  DFFX1_RVT \r1_reg[35]  ( .D(n159), .CLK(clk), .Q(r1[35]) );
  DFFX1_RVT \r1_reg[34]  ( .D(n158), .CLK(clk), .Q(r1[34]) );
  DFFX1_RVT \r1_reg[33]  ( .D(n157), .CLK(clk), .Q(r1[33]) );
  DFFX1_RVT \r1_reg[32]  ( .D(n156), .CLK(clk), .Q(r1[32]) );
  DFFX1_RVT \r1_reg[29]  ( .D(n153), .CLK(clk), .Q(r1[29]) );
  DFFX1_RVT \r1_reg[28]  ( .D(n152), .CLK(clk), .Q(r1[28]) );
  DFFX1_RVT \r1_reg[27]  ( .D(n151), .CLK(clk), .Q(r1[27]) );
  DFFX1_RVT \r1_reg[26]  ( .D(n150), .CLK(clk), .Q(r1[26]) );
  DFFX1_RVT \r1_reg[25]  ( .D(n149), .CLK(clk), .Q(r1[25]) );
  DFFX1_RVT \r1_reg[24]  ( .D(n148), .CLK(clk), .Q(r1[24]) );
  DFFX1_RVT \r1_reg[21]  ( .D(n145), .CLK(clk), .Q(r1[21]) );
  DFFX1_RVT \r1_reg[20]  ( .D(n144), .CLK(clk), .Q(r1[20]) );
  DFFX1_RVT \r1_reg[19]  ( .D(n143), .CLK(clk), .Q(r1[19]) );
  DFFX1_RVT \r1_reg[18]  ( .D(n142), .CLK(clk), .Q(r1[18]) );
  DFFX1_RVT \r1_reg[17]  ( .D(n141), .CLK(clk), .Q(r1[17]) );
  DFFX1_RVT \r1_reg[16]  ( .D(n140), .CLK(clk), .Q(r1[16]) );
  DFFX1_RVT \r1_reg[13]  ( .D(n137), .CLK(clk), .Q(r1[13]) );
  DFFX1_RVT \r1_reg[12]  ( .D(n136), .CLK(clk), .Q(r1[12]) );
  DFFX1_RVT \r1_reg[11]  ( .D(n135), .CLK(clk), .Q(r1[11]) );
  DFFX1_RVT \r1_reg[10]  ( .D(n134), .CLK(clk), .Q(r1[10]) );
  DFFX1_RVT \r1_reg[3]  ( .D(n127), .CLK(clk), .Q(r1[3]) );
  DFFX1_RVT \r1_reg[2]  ( .D(n126), .CLK(clk), .Q(r1[2]) );
  DFFX1_RVT \r1_reg[1]  ( .D(n125), .CLK(clk), .Q(r1[1]) );
  DFFX1_RVT \r1_reg[0]  ( .D(n124), .CLK(clk), .Q(r1[0]) );
  DFFX1_RVT \r0_reg[35]  ( .D(n195), .CLK(clk), .Q(r0[35]) );
  DFFX1_RVT \r0_reg[34]  ( .D(n194), .CLK(clk), .Q(r0[34]) );
  DFFX1_RVT \r0_reg[33]  ( .D(n193), .CLK(clk), .Q(r0[33]) );
  DFFX1_RVT \r0_reg[32]  ( .D(n192), .CLK(clk), .Q(r0[32]) );
  DFFX1_RVT \r0_reg[29]  ( .D(n189), .CLK(clk), .Q(r0[29]) );
  DFFX1_RVT \r0_reg[28]  ( .D(n188), .CLK(clk), .Q(r0[28]) );
  DFFX1_RVT \r0_reg[27]  ( .D(n187), .CLK(clk), .Q(r0[27]) );
  DFFX1_RVT \r0_reg[26]  ( .D(n186), .CLK(clk), .Q(r0[26]) );
  DFFX1_RVT \r0_reg[25]  ( .D(n185), .CLK(clk), .Q(r0[25]) );
  DFFX1_RVT \r0_reg[24]  ( .D(n184), .CLK(clk), .Q(r0[24]) );
  DFFX1_RVT \r0_reg[21]  ( .D(n181), .CLK(clk), .Q(r0[21]) );
  DFFX1_RVT \r0_reg[20]  ( .D(n180), .CLK(clk), .Q(r0[20]) );
  DFFX1_RVT \r0_reg[19]  ( .D(n179), .CLK(clk), .Q(r0[19]) );
  DFFX1_RVT \r0_reg[18]  ( .D(n178), .CLK(clk), .Q(r0[18]) );
  DFFX1_RVT \r0_reg[17]  ( .D(n177), .CLK(clk), .Q(r0[17]) );
  DFFX1_RVT \r0_reg[13]  ( .D(n173), .CLK(clk), .Q(r0[13]) );
  DFFX1_RVT \r0_reg[12]  ( .D(n172), .CLK(clk), .Q(r0[12]) );
  DFFX1_RVT \r0_reg[10]  ( .D(n170), .CLK(clk), .Q(r0[10]) );
  DFFX1_RVT \r0_reg[5]  ( .D(n165), .CLK(clk), .Q(r0[5]) );
  DFFX1_RVT \r0_reg[3]  ( .D(n163), .CLK(clk), .Q(r0[3]) );
  DFFX1_RVT \r3_reg[35]  ( .D(n87), .CLK(clk), .Q(r3[35]) );
  DFFX1_RVT \r3_reg[34]  ( .D(n86), .CLK(clk), .Q(r3[34]) );
  DFFX1_RVT \r3_reg[33]  ( .D(n85), .CLK(clk), .Q(r3[33]) );
  DFFX1_RVT \r3_reg[32]  ( .D(n84), .CLK(clk), .Q(r3[32]) );
  DFFX1_RVT \r3_reg[31]  ( .D(n83), .CLK(clk), .Q(r3[31]) );
  DFFX1_RVT \r3_reg[30]  ( .D(n82), .CLK(clk), .Q(r3[30]) );
  DFFX1_RVT \r3_reg[29]  ( .D(n81), .CLK(clk), .Q(r3[29]) );
  DFFX1_RVT \r3_reg[28]  ( .D(n80), .CLK(clk), .Q(r3[28]) );
  DFFX1_RVT \r3_reg[27]  ( .D(n79), .CLK(clk), .Q(r3[27]) );
  DFFX1_RVT \r3_reg[26]  ( .D(n78), .CLK(clk), .Q(r3[26]) );
  DFFX1_RVT \r3_reg[25]  ( .D(n77), .CLK(clk), .Q(r3[25]) );
  DFFX1_RVT \r3_reg[24]  ( .D(n76), .CLK(clk), .Q(r3[24]) );
  DFFX1_RVT \r3_reg[23]  ( .D(n75), .CLK(clk), .Q(r3[23]) );
  DFFX1_RVT \r3_reg[22]  ( .D(n74), .CLK(clk), .Q(r3[22]) );
  DFFX1_RVT \r3_reg[21]  ( .D(n73), .CLK(clk), .Q(r3[21]) );
  DFFX1_RVT \r3_reg[20]  ( .D(n72), .CLK(clk), .Q(r3[20]) );
  DFFX1_RVT \r3_reg[19]  ( .D(n71), .CLK(clk), .Q(r3[19]) );
  DFFX1_RVT \r3_reg[18]  ( .D(n70), .CLK(clk), .Q(r3[18]) );
  DFFX1_RVT \r3_reg[17]  ( .D(n69), .CLK(clk), .Q(r3[17]) );
  DFFX1_RVT \r3_reg[16]  ( .D(n68), .CLK(clk), .Q(r3[16]) );
  DFFX1_RVT \r3_reg[15]  ( .D(n67), .CLK(clk), .Q(r3[15]) );
  DFFX1_RVT \r3_reg[14]  ( .D(n66), .CLK(clk), .Q(r3[14]) );
  DFFX1_RVT \r3_reg[13]  ( .D(n65), .CLK(clk), .Q(r3[13]) );
  DFFX1_RVT \r3_reg[12]  ( .D(n64), .CLK(clk), .Q(r3[12]) );
  DFFX1_RVT \r3_reg[11]  ( .D(n63), .CLK(clk), .Q(r3[11]) );
  DFFX1_RVT \r3_reg[10]  ( .D(n62), .CLK(clk), .Q(r3[10]) );
  DFFX1_RVT \r3_reg[7]  ( .D(n59), .CLK(clk), .Q(r3[7]) );
  DFFX1_RVT \r3_reg[6]  ( .D(n58), .CLK(clk), .Q(r3[6]) );
  DFFX1_RVT \r3_reg[5]  ( .D(n57), .CLK(clk), .Q(r3[5]) );
  DFFX1_RVT \r3_reg[4]  ( .D(n56), .CLK(clk), .Q(r3[4]) );
  DFFX1_RVT \r3_reg[3]  ( .D(n55), .CLK(clk), .Q(r3[3]) );
  DFFX1_RVT \r3_reg[2]  ( .D(n54), .CLK(clk), .Q(r3[2]) );
  DFFX1_RVT \r3_reg[1]  ( .D(n53), .CLK(clk), .Q(r3[1]) );
  DFFX1_RVT \r3_reg[0]  ( .D(n52), .CLK(clk), .Q(r3[0]) );
  DFFX1_RVT \r2_reg[35]  ( .D(n123), .CLK(clk), .Q(r2[35]) );
  DFFX1_RVT \r2_reg[34]  ( .D(n122), .CLK(clk), .Q(r2[34]) );
  DFFX1_RVT \r2_reg[33]  ( .D(n121), .CLK(clk), .Q(r2[33]) );
  DFFX1_RVT \r2_reg[32]  ( .D(n120), .CLK(clk), .Q(r2[32]) );
  DFFX1_RVT \r2_reg[31]  ( .D(n119), .CLK(clk), .Q(r2[31]) );
  DFFX1_RVT \r2_reg[30]  ( .D(n118), .CLK(clk), .Q(r2[30]) );
  DFFX1_RVT \r2_reg[29]  ( .D(n117), .CLK(clk), .Q(r2[29]) );
  DFFX1_RVT \r2_reg[28]  ( .D(n116), .CLK(clk), .Q(r2[28]) );
  DFFX1_RVT \r2_reg[27]  ( .D(n115), .CLK(clk), .Q(r2[27]) );
  DFFX1_RVT \r2_reg[26]  ( .D(n114), .CLK(clk), .Q(r2[26]) );
  DFFX1_RVT \r2_reg[25]  ( .D(n113), .CLK(clk), .Q(r2[25]) );
  DFFX1_RVT \r2_reg[24]  ( .D(n112), .CLK(clk), .Q(r2[24]) );
  DFFX1_RVT \r2_reg[23]  ( .D(n111), .CLK(clk), .Q(r2[23]) );
  DFFX1_RVT \r2_reg[22]  ( .D(n110), .CLK(clk), .Q(r2[22]) );
  DFFX1_RVT \r2_reg[21]  ( .D(n109), .CLK(clk), .Q(r2[21]) );
  DFFX1_RVT \r2_reg[20]  ( .D(n108), .CLK(clk), .Q(r2[20]) );
  DFFX1_RVT \r2_reg[19]  ( .D(n107), .CLK(clk), .Q(r2[19]) );
  DFFX1_RVT \r2_reg[18]  ( .D(n106), .CLK(clk), .Q(r2[18]) );
  DFFX1_RVT \r2_reg[17]  ( .D(n105), .CLK(clk), .Q(r2[17]) );
  DFFX1_RVT \r2_reg[16]  ( .D(n104), .CLK(clk), .Q(r2[16]) );
  DFFX1_RVT \r2_reg[15]  ( .D(n103), .CLK(clk), .Q(r2[15]) );
  DFFX1_RVT \r2_reg[14]  ( .D(n102), .CLK(clk), .Q(r2[14]) );
  DFFX1_RVT \r2_reg[13]  ( .D(n101), .CLK(clk), .Q(r2[13]) );
  DFFX1_RVT \r2_reg[12]  ( .D(n100), .CLK(clk), .Q(r2[12]) );
  DFFX1_RVT \r2_reg[11]  ( .D(n99), .CLK(clk), .Q(r2[11]) );
  DFFX1_RVT \r2_reg[10]  ( .D(n98), .CLK(clk), .Q(r2[10]) );
  DFFX1_RVT \r2_reg[5]  ( .D(n93), .CLK(clk), .Q(r2[5]) );
  DFFX1_RVT \r2_reg[4]  ( .D(n92), .CLK(clk), .Q(r2[4]) );
  DFFX1_RVT \r2_reg[3]  ( .D(n91), .CLK(clk), .Q(r2[3]) );
  DFFX1_RVT \r2_reg[2]  ( .D(n90), .CLK(clk), .Q(r2[2]) );
  DFFX1_RVT \r2_reg[1]  ( .D(n89), .CLK(clk), .Q(r2[1]) );
  DFFX1_RVT \r2_reg[0]  ( .D(n88), .CLK(clk), .Q(r2[0]) );
  DFFX1_RVT \r1_reg[31]  ( .D(n155), .CLK(clk), .Q(r1[31]) );
  DFFX1_RVT \r1_reg[30]  ( .D(n154), .CLK(clk), .Q(r1[30]) );
  DFFX1_RVT \r1_reg[23]  ( .D(n147), .CLK(clk), .Q(r1[23]) );
  DFFX1_RVT \r1_reg[22]  ( .D(n146), .CLK(clk), .Q(r1[22]) );
  DFFX1_RVT \r1_reg[15]  ( .D(n139), .CLK(clk), .Q(r1[15]) );
  DFFX1_RVT \r1_reg[14]  ( .D(n138), .CLK(clk), .Q(r1[14]) );
  DFFX1_RVT \r1_reg[9]  ( .D(n133), .CLK(clk), .Q(r1[9]) );
  DFFX1_RVT \r1_reg[8]  ( .D(n132), .CLK(clk), .Q(r1[8]) );
  DFFX1_RVT \r1_reg[7]  ( .D(n131), .CLK(clk), .Q(r1[7]) );
  DFFX1_RVT \r1_reg[6]  ( .D(n130), .CLK(clk), .Q(r1[6]) );
  DFFX1_RVT \r1_reg[5]  ( .D(n129), .CLK(clk), .Q(r1[5]) );
  DFFX1_RVT \r1_reg[4]  ( .D(n128), .CLK(clk), .Q(r1[4]) );
  DFFX1_RVT \r0_reg[31]  ( .D(n191), .CLK(clk), .Q(r0[31]) );
  DFFX1_RVT \r0_reg[30]  ( .D(n190), .CLK(clk), .Q(r0[30]) );
  DFFX1_RVT \r0_reg[23]  ( .D(n183), .CLK(clk), .Q(r0[23]) );
  DFFX1_RVT \r0_reg[22]  ( .D(n182), .CLK(clk), .Q(r0[22]) );
  DFFX1_RVT \r0_reg[15]  ( .D(n175), .CLK(clk), .Q(r0[15]) );
  DFFX1_RVT \r0_reg[14]  ( .D(n174), .CLK(clk), .Q(r0[14]) );
  DFFX1_RVT \r0_reg[9]  ( .D(n169), .CLK(clk), .Q(r0[9]) );
  DFFX1_RVT \r0_reg[7]  ( .D(n167), .CLK(clk), .Q(r0[7]) );
  DFFX1_RVT \r0_reg[6]  ( .D(n166), .CLK(clk), .Q(r0[6]) );
  DFFX1_RVT \r3_reg[9]  ( .D(n61), .CLK(clk), .Q(r3[9]) );
  DFFX1_RVT \r3_reg[8]  ( .D(n60), .CLK(clk), .Q(r3[8]) );
  DFFX1_RVT \r2_reg[9]  ( .D(n97), .CLK(clk), .Q(r2[9]) );
  DFFX1_RVT \r2_reg[8]  ( .D(n96), .CLK(clk), .Q(r2[8]) );
  DFFX1_RVT \r2_reg[7]  ( .D(n95), .CLK(clk), .Q(r2[7]) );
  DFFX1_RVT \r2_reg[6]  ( .D(n94), .CLK(clk), .Q(r2[6]) );
  DFFASX1_RVT \rd_adr_reg[0]  ( .D(n204), .CLK(clk), .SETB(n244), .Q(n1), .QN(
        n3) );
  DFFASX1_RVT \wr_adr_reg[0]  ( .D(n200), .CLK(clk), .SETB(n244), .Q(wr_adr[0]) );
  DFFARX1_RVT \wr_adr_reg[3]  ( .D(n197), .CLK(clk), .RSTB(n244), .Q(wr_adr[3]) );
  DFFARX1_RVT \wr_adr_reg[2]  ( .D(n198), .CLK(clk), .RSTB(n244), .Q(wr_adr[2]) );
  DFFARX1_RVT \wr_adr_reg[1]  ( .D(n199), .CLK(clk), .RSTB(n244), .Q(wr_adr[1]) );
  DFFARX1_RVT \rd_adr_reg[3]  ( .D(n201), .CLK(clk), .RSTB(n244), .Q(n238), 
        .QN(n241) );
  DFFARX1_RVT \rd_adr_reg[2]  ( .D(n202), .CLK(clk), .RSTB(n244), .Q(n234), 
        .QN(n237) );
  DFFARX1_RVT \rd_adr_reg[1]  ( .D(n203), .CLK(clk), .RSTB(n244), .Q(n230), 
        .QN(n233) );
  AO22X1_RVT U3 ( .A1(n218), .A2(din[11]), .A3(r0[11]), .A4(n214), .Y(n171) );
  AO22X1_RVT U4 ( .A1(n218), .A2(din[16]), .A3(r0[16]), .A4(n214), .Y(n176) );
  INVX1_RVT U5 ( .A(n8), .Y(n218) );
  INVX1_RVT U6 ( .A(n8), .Y(n219) );
  AO22X1_RVT U7 ( .A1(n218), .A2(din[17]), .A3(r0[17]), .A4(n215), .Y(n177) );
  AO22X1_RVT U8 ( .A1(n218), .A2(din[20]), .A3(r0[20]), .A4(n208), .Y(n180) );
  AO22X1_RVT U9 ( .A1(n218), .A2(din[21]), .A3(r0[21]), .A4(n214), .Y(n181) );
  AO22X1_RVT U10 ( .A1(n218), .A2(din[22]), .A3(r0[22]), .A4(n215), .Y(n182)
         );
  AO22X1_RVT U11 ( .A1(n218), .A2(din[12]), .A3(r0[12]), .A4(n208), .Y(n172)
         );
  AO22X1_RVT U12 ( .A1(n218), .A2(din[15]), .A3(r0[15]), .A4(n214), .Y(n175)
         );
  INVX1_RVT U13 ( .A(n4), .Y(n223) );
  INVX1_RVT U14 ( .A(n6), .Y(n221) );
  AO22X1_RVT U15 ( .A1(n231), .A2(n242), .A3(n234), .A4(n14), .Y(n202) );
  INVX1_RVT U16 ( .A(n11), .Y(n243) );
  AO22X1_RVT U17 ( .A1(n234), .A2(n242), .A3(n240), .A4(n14), .Y(n201) );
  AO22X1_RVT U18 ( .A1(n229), .A2(n242), .A3(n230), .A4(n14), .Y(n203) );
  AND2X1_RVT U19 ( .A1(n11), .A2(n245), .Y(n10) );
  INVX1_RVT U20 ( .A(n4), .Y(n222) );
  INVX1_RVT U21 ( .A(n6), .Y(n220) );
  INVX1_RVT U22 ( .A(n241), .Y(n239) );
  INVX1_RVT U23 ( .A(n237), .Y(n236) );
  INVX1_RVT U24 ( .A(n237), .Y(n235) );
  INVX1_RVT U25 ( .A(n3), .Y(n228) );
  INVX1_RVT U26 ( .A(n233), .Y(n231) );
  AO221X1_RVT U27 ( .A1(n242), .A2(n238), .A3(n1), .A4(n15), .A5(clr), .Y(n204) );
  INVX1_RVT U28 ( .A(n15), .Y(n242) );
  INVX1_RVT U29 ( .A(n3), .Y(n229) );
  INVX1_RVT U30 ( .A(n233), .Y(n232) );
  INVX1_RVT U31 ( .A(clr), .Y(n245) );
  AND2X1_RVT U32 ( .A1(n15), .A2(n245), .Y(n14) );
  NAND2X0_RVT U33 ( .A1(we), .A2(n245), .Y(n11) );
  INVX1_RVT U34 ( .A(n241), .Y(n240) );
  AO22X1_RVT U35 ( .A1(n219), .A2(din[26]), .A3(r0[26]), .A4(n208), .Y(n186)
         );
  AO22X1_RVT U36 ( .A1(n217), .A2(din[27]), .A3(r0[27]), .A4(n209), .Y(n187)
         );
  AO22X1_RVT U37 ( .A1(n219), .A2(din[28]), .A3(r0[28]), .A4(n208), .Y(n188)
         );
  AO22X1_RVT U38 ( .A1(n217), .A2(din[29]), .A3(r0[29]), .A4(n209), .Y(n189)
         );
  AO22X1_RVT U39 ( .A1(n219), .A2(din[30]), .A3(r0[30]), .A4(n208), .Y(n190)
         );
  AO22X1_RVT U40 ( .A1(n217), .A2(din[31]), .A3(r0[31]), .A4(n208), .Y(n191)
         );
  AO22X1_RVT U41 ( .A1(n219), .A2(din[32]), .A3(r0[32]), .A4(n209), .Y(n192)
         );
  AO22X1_RVT U42 ( .A1(n219), .A2(din[33]), .A3(r0[33]), .A4(n209), .Y(n193)
         );
  AO22X1_RVT U43 ( .A1(n217), .A2(din[34]), .A3(r0[34]), .A4(n208), .Y(n194)
         );
  AO22X1_RVT U44 ( .A1(n217), .A2(din[35]), .A3(r0[35]), .A4(n208), .Y(n195)
         );
  AO22X1_RVT U45 ( .A1(n217), .A2(din[13]), .A3(r0[13]), .A4(n208), .Y(n173)
         );
  AO22X1_RVT U46 ( .A1(n219), .A2(din[14]), .A3(r0[14]), .A4(n208), .Y(n174)
         );
  AO22X1_RVT U47 ( .A1(n217), .A2(din[18]), .A3(r0[18]), .A4(n209), .Y(n178)
         );
  AO22X1_RVT U48 ( .A1(n219), .A2(din[19]), .A3(r0[19]), .A4(n214), .Y(n179)
         );
  AO22X1_RVT U49 ( .A1(n217), .A2(din[23]), .A3(r0[23]), .A4(n215), .Y(n183)
         );
  AO22X1_RVT U50 ( .A1(n219), .A2(din[24]), .A3(r0[24]), .A4(n209), .Y(n184)
         );
  AO22X1_RVT U51 ( .A1(n217), .A2(din[25]), .A3(r0[25]), .A4(n209), .Y(n185)
         );
  AO22X1_RVT U52 ( .A1(n222), .A2(din[11]), .A3(r2[11]), .A4(n210), .Y(n99) );
  AO22X1_RVT U53 ( .A1(n222), .A2(din[12]), .A3(r2[12]), .A4(n210), .Y(n100)
         );
  AO22X1_RVT U54 ( .A1(n222), .A2(din[13]), .A3(r2[13]), .A4(n196), .Y(n101)
         );
  AO22X1_RVT U55 ( .A1(n222), .A2(din[14]), .A3(r2[14]), .A4(n196), .Y(n102)
         );
  AO22X1_RVT U56 ( .A1(n222), .A2(din[15]), .A3(r2[15]), .A4(n205), .Y(n103)
         );
  AO22X1_RVT U57 ( .A1(n222), .A2(din[16]), .A3(r2[16]), .A4(n210), .Y(n104)
         );
  AO22X1_RVT U58 ( .A1(n222), .A2(din[17]), .A3(r2[17]), .A4(n211), .Y(n105)
         );
  AO22X1_RVT U59 ( .A1(n222), .A2(din[18]), .A3(r2[18]), .A4(n196), .Y(n106)
         );
  AO22X1_RVT U60 ( .A1(n222), .A2(din[19]), .A3(r2[19]), .A4(n205), .Y(n107)
         );
  AO22X1_RVT U61 ( .A1(n222), .A2(din[20]), .A3(r2[20]), .A4(n210), .Y(n108)
         );
  AO22X1_RVT U62 ( .A1(n222), .A2(din[21]), .A3(r2[21]), .A4(n205), .Y(n109)
         );
  AO22X1_RVT U63 ( .A1(n222), .A2(din[22]), .A3(r2[22]), .A4(n211), .Y(n110)
         );
  AO22X1_RVT U64 ( .A1(n222), .A2(din[23]), .A3(r2[23]), .A4(n211), .Y(n111)
         );
  AO22X1_RVT U65 ( .A1(n222), .A2(din[24]), .A3(r2[24]), .A4(n205), .Y(n112)
         );
  AO22X1_RVT U66 ( .A1(n222), .A2(din[25]), .A3(r2[25]), .A4(n205), .Y(n113)
         );
  AO22X1_RVT U67 ( .A1(n220), .A2(din[11]), .A3(r1[11]), .A4(n212), .Y(n135)
         );
  AO22X1_RVT U68 ( .A1(n220), .A2(din[12]), .A3(r1[12]), .A4(n212), .Y(n136)
         );
  AO22X1_RVT U69 ( .A1(n220), .A2(din[13]), .A3(r1[13]), .A4(n206), .Y(n137)
         );
  AO22X1_RVT U70 ( .A1(n220), .A2(din[14]), .A3(r1[14]), .A4(n206), .Y(n138)
         );
  AO22X1_RVT U71 ( .A1(n220), .A2(din[15]), .A3(r1[15]), .A4(n207), .Y(n139)
         );
  AO22X1_RVT U72 ( .A1(n220), .A2(din[16]), .A3(r1[16]), .A4(n212), .Y(n140)
         );
  AO22X1_RVT U73 ( .A1(n220), .A2(din[17]), .A3(r1[17]), .A4(n213), .Y(n141)
         );
  AO22X1_RVT U74 ( .A1(n220), .A2(din[18]), .A3(r1[18]), .A4(n206), .Y(n142)
         );
  AO22X1_RVT U75 ( .A1(n220), .A2(din[19]), .A3(r1[19]), .A4(n207), .Y(n143)
         );
  AO22X1_RVT U76 ( .A1(n220), .A2(din[20]), .A3(r1[20]), .A4(n212), .Y(n144)
         );
  AO22X1_RVT U77 ( .A1(n220), .A2(din[21]), .A3(r1[21]), .A4(n207), .Y(n145)
         );
  AO22X1_RVT U78 ( .A1(n220), .A2(din[22]), .A3(r1[22]), .A4(n213), .Y(n146)
         );
  AO22X1_RVT U79 ( .A1(n220), .A2(din[23]), .A3(r1[23]), .A4(n213), .Y(n147)
         );
  AO22X1_RVT U80 ( .A1(n220), .A2(din[24]), .A3(r1[24]), .A4(n207), .Y(n148)
         );
  AO22X1_RVT U81 ( .A1(n220), .A2(din[25]), .A3(r1[25]), .A4(n207), .Y(n149)
         );
  AO221X1_RVT U82 ( .A1(n234), .A2(r2[32]), .A3(n238), .A4(r3[32]), .A5(n26), 
        .Y(dout[32]) );
  AO221X1_RVT U83 ( .A1(n234), .A2(r2[33]), .A3(n238), .A4(r3[33]), .A5(n25), 
        .Y(dout[33]) );
  AO221X1_RVT U84 ( .A1(n234), .A2(r2[8]), .A3(n238), .A4(r3[8]), .A5(n17), 
        .Y(dout[8]) );
  AO22X1_RVT U85 ( .A1(n230), .A2(r1[8]), .A3(n1), .A4(r0[8]), .Y(n17) );
  AO221X1_RVT U86 ( .A1(n234), .A2(r2[6]), .A3(n238), .A4(r3[6]), .A5(n19), 
        .Y(dout[6]) );
  AO22X1_RVT U87 ( .A1(n230), .A2(r1[6]), .A3(n1), .A4(r0[6]), .Y(n19) );
  AO221X1_RVT U88 ( .A1(n235), .A2(r2[30]), .A3(n238), .A4(r3[30]), .A5(n28), 
        .Y(dout[30]) );
  AO22X1_RVT U89 ( .A1(n231), .A2(r1[30]), .A3(n228), .A4(r0[30]), .Y(n28) );
  AO221X1_RVT U90 ( .A1(n234), .A2(r2[9]), .A3(n238), .A4(r3[9]), .A5(n16), 
        .Y(dout[9]) );
  AO22X1_RVT U91 ( .A1(n230), .A2(r1[9]), .A3(n1), .A4(r0[9]), .Y(n16) );
  AO221X1_RVT U92 ( .A1(n234), .A2(r2[7]), .A3(n238), .A4(r3[7]), .A5(n18), 
        .Y(dout[7]) );
  AO22X1_RVT U93 ( .A1(n230), .A2(r1[7]), .A3(n1), .A4(r0[7]), .Y(n18) );
  AO221X1_RVT U94 ( .A1(n235), .A2(r2[31]), .A3(n238), .A4(r3[31]), .A5(n27), 
        .Y(dout[31]) );
  AO22X1_RVT U95 ( .A1(n231), .A2(r1[31]), .A3(n1), .A4(r0[31]), .Y(n27) );
  AO221X1_RVT U96 ( .A1(n234), .A2(r2[4]), .A3(n238), .A4(r3[4]), .A5(n21), 
        .Y(dout[4]) );
  AO22X1_RVT U97 ( .A1(n230), .A2(r1[4]), .A3(n1), .A4(r0[4]), .Y(n21) );
  AO221X1_RVT U98 ( .A1(n234), .A2(r2[5]), .A3(n238), .A4(r3[5]), .A5(n20), 
        .Y(dout[5]) );
  AO22X1_RVT U99 ( .A1(n230), .A2(r1[5]), .A3(n1), .A4(r0[5]), .Y(n20) );
  AO22X1_RVT U100 ( .A1(din[11]), .A2(n225), .A3(r3[11]), .A4(n13), .Y(n63) );
  AO22X1_RVT U101 ( .A1(din[13]), .A2(n227), .A3(r3[13]), .A4(n13), .Y(n65) );
  AO22X1_RVT U102 ( .A1(din[14]), .A2(n225), .A3(r3[14]), .A4(n13), .Y(n66) );
  AO22X1_RVT U103 ( .A1(din[16]), .A2(n227), .A3(r3[16]), .A4(n13), .Y(n68) );
  AO22X1_RVT U104 ( .A1(din[19]), .A2(n227), .A3(r3[19]), .A4(n13), .Y(n71) );
  AO22X1_RVT U105 ( .A1(din[22]), .A2(n227), .A3(r3[22]), .A4(n13), .Y(n74) );
  AO22X1_RVT U106 ( .A1(din[23]), .A2(n226), .A3(r3[23]), .A4(n13), .Y(n75) );
  AO22X1_RVT U107 ( .A1(din[26]), .A2(n226), .A3(r3[26]), .A4(n13), .Y(n78) );
  AO22X1_RVT U108 ( .A1(din[29]), .A2(n226), .A3(r3[29]), .A4(n13), .Y(n81) );
  AO22X1_RVT U109 ( .A1(din[32]), .A2(n226), .A3(r3[32]), .A4(n13), .Y(n84) );
  AO22X1_RVT U110 ( .A1(din[33]), .A2(n227), .A3(r3[33]), .A4(n13), .Y(n85) );
  AO22X1_RVT U111 ( .A1(din[34]), .A2(n226), .A3(r3[34]), .A4(n13), .Y(n86) );
  AO22X1_RVT U112 ( .A1(din[35]), .A2(n227), .A3(r3[35]), .A4(n13), .Y(n87) );
  AO22X1_RVT U113 ( .A1(din[0]), .A2(n226), .A3(r3[0]), .A4(n224), .Y(n52) );
  AO22X1_RVT U114 ( .A1(din[1]), .A2(n227), .A3(r3[1]), .A4(n224), .Y(n53) );
  AO22X1_RVT U115 ( .A1(din[3]), .A2(n226), .A3(r3[3]), .A4(n224), .Y(n55) );
  AO22X1_RVT U116 ( .A1(din[4]), .A2(n227), .A3(r3[4]), .A4(n216), .Y(n56) );
  AO22X1_RVT U117 ( .A1(din[6]), .A2(n226), .A3(r3[6]), .A4(n224), .Y(n58) );
  AO22X1_RVT U118 ( .A1(din[7]), .A2(n227), .A3(r3[7]), .A4(n224), .Y(n59) );
  AO22X1_RVT U119 ( .A1(din[9]), .A2(n226), .A3(r3[9]), .A4(n224), .Y(n61) );
  AO22X1_RVT U120 ( .A1(din[10]), .A2(n227), .A3(r3[10]), .A4(n224), .Y(n62)
         );
  AO22X1_RVT U121 ( .A1(din[12]), .A2(n226), .A3(r3[12]), .A4(n216), .Y(n64)
         );
  AO22X1_RVT U122 ( .A1(din[15]), .A2(n226), .A3(r3[15]), .A4(n216), .Y(n67)
         );
  AO22X1_RVT U123 ( .A1(din[18]), .A2(n226), .A3(r3[18]), .A4(n216), .Y(n70)
         );
  AO22X1_RVT U124 ( .A1(din[21]), .A2(n226), .A3(r3[21]), .A4(n216), .Y(n73)
         );
  AO22X1_RVT U125 ( .A1(din[24]), .A2(n227), .A3(r3[24]), .A4(n216), .Y(n76)
         );
  AO22X1_RVT U126 ( .A1(din[27]), .A2(n227), .A3(r3[27]), .A4(n216), .Y(n79)
         );
  AO22X1_RVT U127 ( .A1(din[30]), .A2(n227), .A3(r3[30]), .A4(n216), .Y(n82)
         );
  AO22X1_RVT U128 ( .A1(din[2]), .A2(n225), .A3(r3[2]), .A4(n224), .Y(n54) );
  AO22X1_RVT U129 ( .A1(din[5]), .A2(n225), .A3(r3[5]), .A4(n224), .Y(n57) );
  AO22X1_RVT U130 ( .A1(din[8]), .A2(n225), .A3(r3[8]), .A4(n2), .Y(n60) );
  AO22X1_RVT U131 ( .A1(din[17]), .A2(n225), .A3(r3[17]), .A4(n216), .Y(n69)
         );
  AO22X1_RVT U132 ( .A1(din[20]), .A2(n225), .A3(r3[20]), .A4(n216), .Y(n72)
         );
  AO22X1_RVT U133 ( .A1(din[25]), .A2(n225), .A3(r3[25]), .A4(n216), .Y(n77)
         );
  AO22X1_RVT U134 ( .A1(din[28]), .A2(n225), .A3(r3[28]), .A4(n216), .Y(n80)
         );
  AO22X1_RVT U135 ( .A1(din[31]), .A2(n225), .A3(r3[31]), .A4(n216), .Y(n83)
         );
  AO221X1_RVT U136 ( .A1(n235), .A2(r2[22]), .A3(n239), .A4(r3[22]), .A5(n37), 
        .Y(dout[22]) );
  AO22X1_RVT U137 ( .A1(n231), .A2(r1[22]), .A3(n228), .A4(r0[22]), .Y(n37) );
  AO221X1_RVT U138 ( .A1(n235), .A2(r2[2]), .A3(n239), .A4(r3[2]), .A5(n29), 
        .Y(dout[2]) );
  AO22X1_RVT U139 ( .A1(n231), .A2(r1[2]), .A3(n228), .A4(r0[2]), .Y(n29) );
  AO221X1_RVT U140 ( .A1(n235), .A2(r2[3]), .A3(n239), .A4(r3[3]), .A5(n22), 
        .Y(dout[3]) );
  AO22X1_RVT U141 ( .A1(n230), .A2(r1[3]), .A3(n228), .A4(r0[3]), .Y(n22) );
  AO221X1_RVT U142 ( .A1(n235), .A2(r2[26]), .A3(n239), .A4(r3[26]), .A5(n33), 
        .Y(dout[26]) );
  AO22X1_RVT U143 ( .A1(n231), .A2(r1[26]), .A3(n228), .A4(r0[26]), .Y(n33) );
  AO221X1_RVT U144 ( .A1(n235), .A2(r2[23]), .A3(n239), .A4(r3[23]), .A5(n36), 
        .Y(dout[23]) );
  AO22X1_RVT U145 ( .A1(n231), .A2(r1[23]), .A3(n228), .A4(r0[23]), .Y(n36) );
  AO221X1_RVT U146 ( .A1(n235), .A2(r2[27]), .A3(n239), .A4(r3[27]), .A5(n32), 
        .Y(dout[27]) );
  AO22X1_RVT U147 ( .A1(n231), .A2(r1[27]), .A3(n228), .A4(r0[27]), .Y(n32) );
  AO221X1_RVT U148 ( .A1(n236), .A2(r2[19]), .A3(n239), .A4(r3[19]), .A5(n41), 
        .Y(dout[19]) );
  AO22X1_RVT U149 ( .A1(n232), .A2(r1[19]), .A3(n229), .A4(r0[19]), .Y(n41) );
  AO221X1_RVT U150 ( .A1(n234), .A2(r2[0]), .A3(n238), .A4(r3[0]), .A5(n51), 
        .Y(dout[0]) );
  AO22X1_RVT U151 ( .A1(n230), .A2(r1[0]), .A3(n1), .A4(r0[0]), .Y(n51) );
  AO221X1_RVT U152 ( .A1(n236), .A2(r2[1]), .A3(n239), .A4(r3[1]), .A5(n40), 
        .Y(dout[1]) );
  AO22X1_RVT U153 ( .A1(n232), .A2(r1[1]), .A3(n229), .A4(r0[1]), .Y(n40) );
  AO221X1_RVT U154 ( .A1(n235), .A2(r2[28]), .A3(n239), .A4(r3[28]), .A5(n31), 
        .Y(dout[28]) );
  AO22X1_RVT U155 ( .A1(n231), .A2(r1[28]), .A3(n228), .A4(r0[28]), .Y(n31) );
  AO221X1_RVT U156 ( .A1(n235), .A2(r2[24]), .A3(n239), .A4(r3[24]), .A5(n35), 
        .Y(dout[24]) );
  AO22X1_RVT U157 ( .A1(n231), .A2(r1[24]), .A3(n228), .A4(r0[24]), .Y(n35) );
  AO221X1_RVT U158 ( .A1(n236), .A2(r2[20]), .A3(n239), .A4(r3[20]), .A5(n39), 
        .Y(dout[20]) );
  AO22X1_RVT U159 ( .A1(n232), .A2(r1[20]), .A3(n228), .A4(r0[20]), .Y(n39) );
  AO221X1_RVT U160 ( .A1(n235), .A2(r2[29]), .A3(n239), .A4(r3[29]), .A5(n30), 
        .Y(dout[29]) );
  AO22X1_RVT U161 ( .A1(n231), .A2(r1[29]), .A3(n228), .A4(r0[29]), .Y(n30) );
  AO221X1_RVT U162 ( .A1(n235), .A2(r2[25]), .A3(n239), .A4(r3[25]), .A5(n34), 
        .Y(dout[25]) );
  AO22X1_RVT U163 ( .A1(n231), .A2(r1[25]), .A3(n228), .A4(r0[25]), .Y(n34) );
  AO221X1_RVT U164 ( .A1(n236), .A2(r2[21]), .A3(n239), .A4(r3[21]), .A5(n38), 
        .Y(dout[21]) );
  AO22X1_RVT U165 ( .A1(n231), .A2(r1[21]), .A3(n228), .A4(r0[21]), .Y(n38) );
  AO221X1_RVT U166 ( .A1(n234), .A2(r2[35]), .A3(n238), .A4(r3[35]), .A5(n23), 
        .Y(dout[35]) );
  AO22X1_RVT U167 ( .A1(n230), .A2(r1[35]), .A3(n1), .A4(r0[35]), .Y(n23) );
  AO221X1_RVT U168 ( .A1(n234), .A2(r2[34]), .A3(n238), .A4(r3[34]), .A5(n24), 
        .Y(dout[34]) );
  AO22X1_RVT U169 ( .A1(n230), .A2(r1[34]), .A3(n1), .A4(r0[34]), .Y(n24) );
  AO22X1_RVT U170 ( .A1(n223), .A2(din[26]), .A3(r2[26]), .A4(n196), .Y(n114)
         );
  AO22X1_RVT U171 ( .A1(n223), .A2(din[27]), .A3(r2[27]), .A4(n205), .Y(n115)
         );
  AO22X1_RVT U172 ( .A1(n223), .A2(din[28]), .A3(r2[28]), .A4(n196), .Y(n116)
         );
  AO22X1_RVT U173 ( .A1(n223), .A2(din[29]), .A3(r2[29]), .A4(n205), .Y(n117)
         );
  AO22X1_RVT U174 ( .A1(n223), .A2(din[30]), .A3(r2[30]), .A4(n196), .Y(n118)
         );
  AO22X1_RVT U175 ( .A1(n223), .A2(din[31]), .A3(r2[31]), .A4(n196), .Y(n119)
         );
  AO22X1_RVT U176 ( .A1(n223), .A2(din[32]), .A3(r2[32]), .A4(n205), .Y(n120)
         );
  AO22X1_RVT U177 ( .A1(n223), .A2(din[33]), .A3(r2[33]), .A4(n205), .Y(n121)
         );
  AO22X1_RVT U178 ( .A1(n223), .A2(din[34]), .A3(r2[34]), .A4(n196), .Y(n122)
         );
  AO22X1_RVT U179 ( .A1(n223), .A2(din[35]), .A3(r2[35]), .A4(n196), .Y(n123)
         );
  AO22X1_RVT U180 ( .A1(n221), .A2(din[26]), .A3(r1[26]), .A4(n206), .Y(n150)
         );
  AO22X1_RVT U181 ( .A1(n221), .A2(din[27]), .A3(r1[27]), .A4(n207), .Y(n151)
         );
  AO22X1_RVT U182 ( .A1(n221), .A2(din[28]), .A3(r1[28]), .A4(n206), .Y(n152)
         );
  AO22X1_RVT U183 ( .A1(n221), .A2(din[29]), .A3(r1[29]), .A4(n207), .Y(n153)
         );
  AO22X1_RVT U184 ( .A1(n221), .A2(din[30]), .A3(r1[30]), .A4(n206), .Y(n154)
         );
  AO22X1_RVT U185 ( .A1(n221), .A2(din[31]), .A3(r1[31]), .A4(n206), .Y(n155)
         );
  AO22X1_RVT U186 ( .A1(n221), .A2(din[32]), .A3(r1[32]), .A4(n207), .Y(n156)
         );
  AO22X1_RVT U187 ( .A1(n221), .A2(din[33]), .A3(r1[33]), .A4(n207), .Y(n157)
         );
  AO22X1_RVT U188 ( .A1(n221), .A2(din[34]), .A3(r1[34]), .A4(n206), .Y(n158)
         );
  AO22X1_RVT U189 ( .A1(n221), .A2(din[35]), .A3(r1[35]), .A4(n206), .Y(n159)
         );
  AO221X1_RVT U190 ( .A1(n236), .A2(r2[12]), .A3(n240), .A4(r3[12]), .A5(n48), 
        .Y(dout[12]) );
  AO22X1_RVT U191 ( .A1(n232), .A2(r1[12]), .A3(n229), .A4(r0[12]), .Y(n48) );
  AO221X1_RVT U192 ( .A1(n236), .A2(r2[13]), .A3(n240), .A4(r3[13]), .A5(n47), 
        .Y(dout[13]) );
  AO22X1_RVT U193 ( .A1(n232), .A2(r1[13]), .A3(n229), .A4(r0[13]), .Y(n47) );
  AO221X1_RVT U194 ( .A1(n236), .A2(r2[14]), .A3(n240), .A4(r3[14]), .A5(n46), 
        .Y(dout[14]) );
  AO22X1_RVT U195 ( .A1(n232), .A2(r1[14]), .A3(n229), .A4(r0[14]), .Y(n46) );
  AO221X1_RVT U196 ( .A1(n236), .A2(r2[10]), .A3(n240), .A4(r3[10]), .A5(n50), 
        .Y(dout[10]) );
  AO22X1_RVT U197 ( .A1(n232), .A2(r1[10]), .A3(n229), .A4(r0[10]), .Y(n50) );
  AO221X1_RVT U198 ( .A1(n236), .A2(r2[15]), .A3(n240), .A4(r3[15]), .A5(n45), 
        .Y(dout[15]) );
  AO22X1_RVT U199 ( .A1(n232), .A2(r1[15]), .A3(n229), .A4(r0[15]), .Y(n45) );
  AO22X1_RVT U200 ( .A1(n230), .A2(r1[33]), .A3(n1), .A4(r0[33]), .Y(n25) );
  AO22X1_RVT U201 ( .A1(n230), .A2(r1[32]), .A3(n1), .A4(r0[32]), .Y(n26) );
  NAND2X0_RVT U202 ( .A1(re), .A2(n245), .Y(n15) );
  AO221X1_RVT U203 ( .A1(n236), .A2(r2[18]), .A3(n240), .A4(r3[18]), .A5(n42), 
        .Y(dout[18]) );
  AO22X1_RVT U204 ( .A1(n232), .A2(r1[18]), .A3(n229), .A4(r0[18]), .Y(n42) );
  AO221X1_RVT U205 ( .A1(n235), .A2(r2[11]), .A3(n240), .A4(r3[11]), .A5(n49), 
        .Y(dout[11]) );
  AO22X1_RVT U206 ( .A1(n232), .A2(r1[11]), .A3(n229), .A4(r0[11]), .Y(n49) );
  AO221X1_RVT U207 ( .A1(n236), .A2(r2[16]), .A3(n240), .A4(r3[16]), .A5(n44), 
        .Y(dout[16]) );
  AO22X1_RVT U208 ( .A1(n232), .A2(r1[16]), .A3(n229), .A4(r0[16]), .Y(n44) );
  AO221X1_RVT U209 ( .A1(n236), .A2(r2[17]), .A3(n240), .A4(r3[17]), .A5(n43), 
        .Y(dout[17]) );
  AO22X1_RVT U210 ( .A1(n232), .A2(r1[17]), .A3(n229), .A4(r0[17]), .Y(n43) );
  AO221X1_RVT U211 ( .A1(n243), .A2(wr_adr[3]), .A3(wr_adr[0]), .A4(n11), .A5(
        clr), .Y(n200) );
  AO22X1_RVT U212 ( .A1(n243), .A2(wr_adr[0]), .A3(n10), .A4(wr_adr[1]), .Y(
        n199) );
  AO22X1_RVT U213 ( .A1(n243), .A2(wr_adr[2]), .A3(n10), .A4(wr_adr[3]), .Y(
        n197) );
  AO22X1_RVT U214 ( .A1(n243), .A2(wr_adr[1]), .A3(n10), .A4(wr_adr[2]), .Y(
        n198) );
  INVX1_RVT U215 ( .A(rst), .Y(n244) );
  NBUFFX2_RVT U216 ( .A(n223), .Y(n5) );
  NBUFFX2_RVT U217 ( .A(n223), .Y(n7) );
  NBUFFX2_RVT U218 ( .A(n221), .Y(n9) );
  NBUFFX2_RVT U219 ( .A(n221), .Y(n12) );
  NAND2X0_RVT U220 ( .A1(wr_adr[3]), .A2(we), .Y(n13) );
  INVX1_RVT U221 ( .A(n225), .Y(n224) );
  INVX1_RVT U222 ( .A(n2), .Y(n225) );
  INVX1_RVT U223 ( .A(n2), .Y(n227) );
  INVX1_RVT U224 ( .A(n2), .Y(n226) );
  INVX1_RVT U225 ( .A(n5), .Y(n196) );
  INVX0_RVT U226 ( .A(n5), .Y(n205) );
  INVX1_RVT U227 ( .A(n9), .Y(n206) );
  INVX0_RVT U228 ( .A(n9), .Y(n207) );
  INVX1_RVT U229 ( .A(n8), .Y(n217) );
  INVX1_RVT U230 ( .A(n218), .Y(n208) );
  INVX0_RVT U231 ( .A(n219), .Y(n209) );
  AO22X1_RVT U232 ( .A1(n7), .A2(din[8]), .A3(r2[8]), .A4(n210), .Y(n96) );
  AO22X1_RVT U233 ( .A1(n7), .A2(din[1]), .A3(r2[1]), .A4(n210), .Y(n89) );
  AO22X1_RVT U234 ( .A1(n7), .A2(din[0]), .A3(r2[0]), .A4(n210), .Y(n88) );
  AO22X1_RVT U235 ( .A1(n7), .A2(din[2]), .A3(r2[2]), .A4(n210), .Y(n90) );
  AO22X1_RVT U236 ( .A1(n7), .A2(din[6]), .A3(r2[6]), .A4(n211), .Y(n94) );
  AO22X1_RVT U237 ( .A1(n7), .A2(din[4]), .A3(r2[4]), .A4(n210), .Y(n92) );
  AO22X1_RVT U238 ( .A1(n7), .A2(din[5]), .A3(r2[5]), .A4(n211), .Y(n93) );
  AO22X1_RVT U239 ( .A1(n7), .A2(din[7]), .A3(r2[7]), .A4(n211), .Y(n95) );
  AO22X1_RVT U240 ( .A1(n5), .A2(din[3]), .A3(r2[3]), .A4(n211), .Y(n91) );
  AO22X1_RVT U241 ( .A1(n12), .A2(din[8]), .A3(r1[8]), .A4(n212), .Y(n132) );
  AO22X1_RVT U242 ( .A1(n12), .A2(din[1]), .A3(r1[1]), .A4(n212), .Y(n125) );
  AO22X1_RVT U243 ( .A1(n12), .A2(din[0]), .A3(r1[0]), .A4(n212), .Y(n124) );
  AO22X1_RVT U244 ( .A1(n12), .A2(din[2]), .A3(r1[2]), .A4(n212), .Y(n126) );
  AO22X1_RVT U245 ( .A1(n12), .A2(din[6]), .A3(r1[6]), .A4(n213), .Y(n130) );
  AO22X1_RVT U246 ( .A1(n12), .A2(din[4]), .A3(r1[4]), .A4(n212), .Y(n128) );
  AO22X1_RVT U247 ( .A1(n12), .A2(din[5]), .A3(r1[5]), .A4(n213), .Y(n129) );
  AO22X1_RVT U248 ( .A1(n12), .A2(din[7]), .A3(r1[7]), .A4(n213), .Y(n131) );
  AO22X1_RVT U249 ( .A1(n9), .A2(din[3]), .A3(r1[3]), .A4(n213), .Y(n127) );
  AO22X1_RVT U250 ( .A1(n219), .A2(din[8]), .A3(r0[8]), .A4(n214), .Y(n168) );
  AO22X1_RVT U251 ( .A1(n217), .A2(din[1]), .A3(r0[1]), .A4(n214), .Y(n161) );
  AO22X1_RVT U252 ( .A1(n219), .A2(din[0]), .A3(r0[0]), .A4(n214), .Y(n160) );
  AO22X1_RVT U253 ( .A1(n217), .A2(din[2]), .A3(r0[2]), .A4(n214), .Y(n162) );
  AO22X1_RVT U254 ( .A1(n219), .A2(din[6]), .A3(r0[6]), .A4(n215), .Y(n166) );
  AO22X1_RVT U255 ( .A1(n217), .A2(din[4]), .A3(r0[4]), .A4(n214), .Y(n164) );
  AO22X1_RVT U256 ( .A1(n219), .A2(din[5]), .A3(r0[5]), .A4(n215), .Y(n165) );
  AO22X1_RVT U257 ( .A1(n217), .A2(din[7]), .A3(r0[7]), .A4(n215), .Y(n167) );
  AO22X1_RVT U258 ( .A1(n218), .A2(din[3]), .A3(r0[3]), .A4(n215), .Y(n163) );
  INVX1_RVT U259 ( .A(n5), .Y(n210) );
  INVX0_RVT U260 ( .A(n5), .Y(n211) );
  INVX1_RVT U261 ( .A(n9), .Y(n212) );
  INVX0_RVT U262 ( .A(n9), .Y(n213) );
  INVX1_RVT U263 ( .A(n218), .Y(n214) );
  INVX0_RVT U264 ( .A(n218), .Y(n215) );
  NAND2X0_RVT U265 ( .A1(wr_adr[2]), .A2(we), .Y(n4) );
  NAND2X0_RVT U266 ( .A1(wr_adr[1]), .A2(we), .Y(n6) );
  NAND2X0_RVT U267 ( .A1(wr_adr[0]), .A2(we), .Y(n8) );
  AO22X1_RVT U268 ( .A1(n7), .A2(din[10]), .A3(r2[10]), .A4(n211), .Y(n98) );
  AO22X1_RVT U269 ( .A1(n7), .A2(din[9]), .A3(r2[9]), .A4(n211), .Y(n97) );
  AO22X1_RVT U270 ( .A1(n12), .A2(din[10]), .A3(r1[10]), .A4(n213), .Y(n134)
         );
  AO22X1_RVT U271 ( .A1(n12), .A2(din[9]), .A3(r1[9]), .A4(n213), .Y(n133) );
  AO22X1_RVT U272 ( .A1(n219), .A2(din[10]), .A3(r0[10]), .A4(n215), .Y(n170)
         );
  AO22X1_RVT U273 ( .A1(n217), .A2(din[9]), .A3(r0[9]), .A4(n215), .Y(n169) );
  NBUFFX2_RVT U274 ( .A(n2), .Y(n216) );
  NAND2X0_RVT U275 ( .A1(wr_adr[3]), .A2(we), .Y(n2) );
endmodule


module mc_dp ( clk, rst, csc, wb_cyc_i, wb_stb_i, wb_ack_o, mem_ack, wb_data_i, 
        wb_data_o, wb_read_go, wb_we_i, mc_clk, mc_data_del, mc_dp_i, 
        mc_data_o, mc_dp_o, dv, pack_le0, pack_le1, pack_le2, byte_en, par_err
 );
  input [31:0] csc;
  input [31:0] wb_data_i;
  output [31:0] wb_data_o;
  input [35:0] mc_data_del;
  input [3:0] mc_dp_i;
  output [31:0] mc_data_o;
  output [3:0] mc_dp_o;
  input [3:0] byte_en;
  input clk, rst, wb_cyc_i, wb_stb_i, wb_ack_o, mem_ack, wb_read_go, wb_we_i,
         mc_clk, dv, pack_le0, pack_le1, pack_le2;
  output par_err;
  wire   csc_11, rd_fifo_clr, re, n13, n14, n16, n17, n18, n19, n20, n21, n23,
         n25, n27, n29, n32, n34, n36, n38, n47, n49, n50, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n98, n100, n101,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n15, n22, n24, n26, n28, n30, n31, n33, n35, n37, n39, n40,
         n41, n42, n43, n44, n45, n46, n48, n51, n73, n95, n96, n97, n99, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117;
  wire   [35:0] rd_fifo_out;
  assign csc_11 = csc[11];

  mc_rd_fifo u0 ( .clk(clk), .rst(rst), .clr(rd_fifo_clr), .din(mc_data_del), 
        .we(dv), .dout(rd_fifo_out), .re(re) );
  DFFX1_RVT \mc_data_o_reg[6]  ( .D(n152), .CLK(clk), .Q(mc_data_o[6]) );
  DFFX1_RVT \mc_data_o_reg[5]  ( .D(n151), .CLK(clk), .Q(mc_data_o[5]) );
  DFFX1_RVT \mc_data_o_reg[4]  ( .D(n150), .CLK(clk), .Q(mc_data_o[4]) );
  DFFX1_RVT \mc_data_o_reg[31]  ( .D(n177), .CLK(clk), .Q(mc_data_o[31]) );
  DFFX1_RVT \mc_data_o_reg[30]  ( .D(n176), .CLK(clk), .Q(mc_data_o[30]) );
  DFFX1_RVT \mc_data_o_reg[29]  ( .D(n175), .CLK(clk), .Q(mc_data_o[29]) );
  DFFX1_RVT \mc_data_o_reg[28]  ( .D(n174), .CLK(clk), .Q(mc_data_o[28]) );
  DFFX1_RVT \mc_data_o_reg[27]  ( .D(n173), .CLK(clk), .Q(mc_data_o[27]) );
  DFFX1_RVT \mc_data_o_reg[26]  ( .D(n172), .CLK(clk), .Q(mc_data_o[26]) );
  DFFX1_RVT \mc_data_o_reg[25]  ( .D(n171), .CLK(clk), .Q(mc_data_o[25]) );
  DFFX1_RVT \mc_data_o_reg[24]  ( .D(n170), .CLK(clk), .Q(mc_data_o[24]) );
  DFFX1_RVT \mc_data_o_reg[23]  ( .D(n169), .CLK(clk), .Q(mc_data_o[23]) );
  DFFX1_RVT \mc_data_o_reg[22]  ( .D(n168), .CLK(clk), .Q(mc_data_o[22]) );
  DFFX1_RVT \mc_data_o_reg[21]  ( .D(n167), .CLK(clk), .Q(mc_data_o[21]) );
  DFFX1_RVT \mc_data_o_reg[20]  ( .D(n166), .CLK(clk), .Q(mc_data_o[20]) );
  DFFX1_RVT \mc_data_o_reg[19]  ( .D(n165), .CLK(clk), .Q(mc_data_o[19]) );
  DFFX1_RVT \mc_data_o_reg[18]  ( .D(n164), .CLK(clk), .Q(mc_data_o[18]) );
  DFFX1_RVT \mc_data_o_reg[17]  ( .D(n163), .CLK(clk), .Q(mc_data_o[17]) );
  DFFX1_RVT \mc_data_o_reg[16]  ( .D(n162), .CLK(clk), .Q(mc_data_o[16]) );
  DFFX1_RVT \mc_data_o_reg[15]  ( .D(n161), .CLK(clk), .Q(mc_data_o[15]) );
  DFFX1_RVT \mc_data_o_reg[14]  ( .D(n160), .CLK(clk), .Q(mc_data_o[14]) );
  DFFX1_RVT \mc_data_o_reg[13]  ( .D(n159), .CLK(clk), .Q(mc_data_o[13]) );
  DFFX1_RVT \mc_data_o_reg[12]  ( .D(n158), .CLK(clk), .Q(mc_data_o[12]) );
  DFFX1_RVT \mc_data_o_reg[11]  ( .D(n157), .CLK(clk), .Q(mc_data_o[11]) );
  DFFX1_RVT \mc_data_o_reg[10]  ( .D(n156), .CLK(clk), .Q(mc_data_o[10]) );
  DFFX1_RVT \mc_data_o_reg[9]  ( .D(n155), .CLK(clk), .Q(mc_data_o[9]) );
  DFFX1_RVT \mc_data_o_reg[8]  ( .D(n154), .CLK(clk), .Q(mc_data_o[8]) );
  DFFX1_RVT \mc_data_o_reg[7]  ( .D(n153), .CLK(clk), .Q(mc_data_o[7]) );
  DFFX1_RVT \mc_data_o_reg[3]  ( .D(n149), .CLK(clk), .Q(mc_data_o[3]) );
  DFFX1_RVT \mc_data_o_reg[2]  ( .D(n148), .CLK(clk), .Q(mc_data_o[2]) );
  DFFX1_RVT \mc_data_o_reg[1]  ( .D(n147), .CLK(clk), .Q(mc_data_o[1]) );
  DFFX1_RVT \mc_data_o_reg[0]  ( .D(n146), .CLK(clk), .Q(mc_data_o[0]) );
  DFFX1_RVT \mc_dp_o_reg[3]  ( .D(n129), .CLK(clk), .Q(mc_dp_o[3]) );
  DFFX1_RVT \mc_dp_o_reg[2]  ( .D(n128), .CLK(clk), .Q(mc_dp_o[2]) );
  DFFX1_RVT \mc_dp_o_reg[1]  ( .D(n127), .CLK(clk), .Q(mc_dp_o[1]) );
  DFFX1_RVT \mc_dp_o_reg[0]  ( .D(n126), .CLK(clk), .Q(mc_dp_o[0]) );
  DFFX1_RVT \byte0_reg[7]  ( .D(n145), .CLK(clk), .Q(n42) );
  DFFX1_RVT \byte0_reg[6]  ( .D(n144), .CLK(clk), .Q(n43) );
  DFFX1_RVT \byte0_reg[5]  ( .D(n143), .CLK(clk), .Q(n44) );
  DFFX1_RVT \byte0_reg[4]  ( .D(n142), .CLK(clk), .Q(n45) );
  DFFX1_RVT \byte0_reg[3]  ( .D(n141), .CLK(clk), .Q(n46) );
  DFFX1_RVT \byte0_reg[2]  ( .D(n140), .CLK(clk), .Q(n48) );
  DFFX1_RVT \byte0_reg[1]  ( .D(n139), .CLK(clk), .Q(n51) );
  DFFX1_RVT \byte0_reg[0]  ( .D(n138), .CLK(clk), .Q(n73) );
  DFFX1_RVT \byte1_reg[7]  ( .D(n185), .CLK(clk), .Q(n95) );
  DFFX1_RVT \byte1_reg[6]  ( .D(n184), .CLK(clk), .Q(n96) );
  DFFX1_RVT \byte1_reg[5]  ( .D(n183), .CLK(clk), .Q(n97) );
  DFFX1_RVT \byte1_reg[4]  ( .D(n182), .CLK(clk), .Q(n99) );
  DFFX1_RVT \byte1_reg[3]  ( .D(n181), .CLK(clk), .Q(n102) );
  DFFX1_RVT \byte1_reg[2]  ( .D(n180), .CLK(clk), .Q(n103) );
  DFFX1_RVT \byte1_reg[1]  ( .D(n179), .CLK(clk), .Q(n104) );
  DFFX1_RVT \byte1_reg[0]  ( .D(n178), .CLK(clk), .Q(n105) );
  DFFX1_RVT \byte2_reg[7]  ( .D(n137), .CLK(clk), .Q(n106) );
  DFFX1_RVT \byte2_reg[6]  ( .D(n136), .CLK(clk), .Q(n107) );
  DFFX1_RVT \byte2_reg[5]  ( .D(n135), .CLK(clk), .Q(n108) );
  DFFX1_RVT \byte2_reg[4]  ( .D(n134), .CLK(clk), .Q(n109) );
  DFFX1_RVT \byte2_reg[3]  ( .D(n133), .CLK(clk), .Q(n110) );
  DFFX1_RVT \byte2_reg[2]  ( .D(n132), .CLK(clk), .Q(n111) );
  DFFX1_RVT \byte2_reg[1]  ( .D(n131), .CLK(clk), .Q(n112) );
  DFFX1_RVT \byte2_reg[0]  ( .D(n130), .CLK(clk), .Q(n113) );
  AND2X1_RVT U3 ( .A1(wb_read_go), .A2(wb_ack_o), .Y(re) );
  INVX1_RVT U4 ( .A(n26), .Y(n15) );
  INVX1_RVT U5 ( .A(n26), .Y(n22) );
  INVX1_RVT U6 ( .A(n26), .Y(n24) );
  INVX1_RVT U7 ( .A(n47), .Y(n12) );
  INVX1_RVT U8 ( .A(n47), .Y(n11) );
  INVX1_RVT U9 ( .A(n2), .Y(n5) );
  INVX1_RVT U10 ( .A(n1), .Y(n10) );
  INVX1_RVT U11 ( .A(pack_le0), .Y(n40) );
  INVX1_RVT U12 ( .A(pack_le2), .Y(n39) );
  INVX1_RVT U13 ( .A(n2), .Y(n6) );
  INVX1_RVT U14 ( .A(n1), .Y(n9) );
  XNOR2X1_RVT U15 ( .A1(rd_fifo_out[8]), .A2(rd_fifo_out[9]), .Y(n64) );
  XNOR2X1_RVT U16 ( .A1(rd_fifo_out[6]), .A2(rd_fifo_out[7]), .Y(n60) );
  XNOR3X1_RVT U17 ( .A1(rd_fifo_out[29]), .A2(rd_fifo_out[28]), .A3(n72), .Y(
        n69) );
  XNOR2X1_RVT U18 ( .A1(rd_fifo_out[30]), .A2(rd_fifo_out[31]), .Y(n72) );
  INVX1_RVT U19 ( .A(n75), .Y(n28) );
  INVX1_RVT U20 ( .A(n47), .Y(n114) );
  XOR2X1_RVT U21 ( .A1(rd_fifo_out[3]), .A2(rd_fifo_out[2]), .Y(n59) );
  XNOR3X1_RVT U22 ( .A1(rd_fifo_out[25]), .A2(rd_fifo_out[24]), .A3(n71), .Y(
        n70) );
  XOR2X1_RVT U23 ( .A1(rd_fifo_out[27]), .A2(rd_fifo_out[26]), .Y(n71) );
  XNOR3X1_RVT U24 ( .A1(rd_fifo_out[17]), .A2(rd_fifo_out[16]), .A3(n67), .Y(
        n66) );
  XOR2X1_RVT U25 ( .A1(rd_fifo_out[19]), .A2(rd_fifo_out[18]), .Y(n67) );
  XNOR3X1_RVT U26 ( .A1(rd_fifo_out[21]), .A2(rd_fifo_out[20]), .A3(n68), .Y(
        n65) );
  XNOR2X1_RVT U27 ( .A1(rd_fifo_out[22]), .A2(rd_fifo_out[23]), .Y(n68) );
  INVX1_RVT U28 ( .A(n3), .Y(n33) );
  XOR2X1_RVT U29 ( .A1(rd_fifo_out[13]), .A2(rd_fifo_out[12]), .Y(n63) );
  INVX1_RVT U30 ( .A(n3), .Y(n31) );
  INVX1_RVT U31 ( .A(n101), .Y(n41) );
  INVX1_RVT U32 ( .A(n75), .Y(n30) );
  INVX1_RVT U33 ( .A(n4), .Y(n8) );
  NAND2X0_RVT U34 ( .A1(n5), .A2(n115), .Y(n1) );
  NAND2X0_RVT U35 ( .A1(n47), .A2(n116), .Y(n2) );
  INVX1_RVT U36 ( .A(n100), .Y(n37) );
  INVX1_RVT U37 ( .A(n4), .Y(n7) );
  INVX1_RVT U38 ( .A(n3), .Y(n35) );
  AND2X1_RVT U39 ( .A1(n101), .A2(n100), .Y(n98) );
  XNOR3X1_RVT U40 ( .A1(rd_fifo_out[32]), .A2(n57), .A3(n58), .Y(n56) );
  XNOR3X1_RVT U41 ( .A1(rd_fifo_out[1]), .A2(rd_fifo_out[0]), .A3(n59), .Y(n58) );
  XNOR3X1_RVT U42 ( .A1(rd_fifo_out[5]), .A2(rd_fifo_out[4]), .A3(n60), .Y(n57) );
  XNOR3X1_RVT U43 ( .A1(rd_fifo_out[33]), .A2(n61), .A3(n62), .Y(n55) );
  XNOR3X1_RVT U44 ( .A1(rd_fifo_out[11]), .A2(rd_fifo_out[10]), .A3(n63), .Y(
        n62) );
  XNOR3X1_RVT U45 ( .A1(rd_fifo_out[15]), .A2(rd_fifo_out[14]), .A3(n64), .Y(
        n61) );
  AO221X1_RVT U46 ( .A1(byte_en[3]), .A2(n52), .A3(byte_en[2]), .A4(n53), .A5(
        n54), .Y(n50) );
  XNOR3X1_RVT U47 ( .A1(rd_fifo_out[34]), .A2(n65), .A3(n66), .Y(n53) );
  XNOR3X1_RVT U48 ( .A1(rd_fifo_out[35]), .A2(n69), .A3(n70), .Y(n52) );
  AO22X1_RVT U49 ( .A1(byte_en[1]), .A2(n55), .A3(byte_en[0]), .A4(n56), .Y(
        n54) );
  AND4X1_RVT U50 ( .A1(mem_ack), .A2(csc_11), .A3(n50), .A4(n117), .Y(par_err)
         );
  INVX1_RVT U51 ( .A(wb_we_i), .Y(n117) );
  AO222X1_RVT U52 ( .A1(mc_data_del[11]), .A2(n33), .A3(n6), .A4(n102), .A5(
        rd_fifo_out[11]), .A6(n12), .Y(wb_data_o[11]) );
  AO222X1_RVT U53 ( .A1(mc_data_del[12]), .A2(n33), .A3(n6), .A4(n99), .A5(
        rd_fifo_out[12]), .A6(n12), .Y(wb_data_o[12]) );
  AO222X1_RVT U54 ( .A1(mc_data_del[13]), .A2(n33), .A3(n6), .A4(n97), .A5(
        rd_fifo_out[13]), .A6(n12), .Y(wb_data_o[13]) );
  AO222X1_RVT U55 ( .A1(mc_data_del[15]), .A2(n33), .A3(n6), .A4(n95), .A5(
        rd_fifo_out[15]), .A6(n12), .Y(wb_data_o[15]) );
  AO221X1_RVT U56 ( .A1(mc_data_del[14]), .A2(n7), .A3(n9), .A4(mc_data_del[6]), .A5(n14), .Y(wb_data_o[30]) );
  AO22X1_RVT U57 ( .A1(rd_fifo_out[30]), .A2(n11), .A3(mc_data_del[30]), .A4(
        n35), .Y(n14) );
  AO221X1_RVT U58 ( .A1(mc_data_del[15]), .A2(n7), .A3(n9), .A4(mc_data_del[7]), .A5(n13), .Y(wb_data_o[31]) );
  AO22X1_RVT U59 ( .A1(rd_fifo_out[31]), .A2(n114), .A3(mc_data_del[31]), .A4(
        n35), .Y(n13) );
  AO221X1_RVT U60 ( .A1(mc_data_del[2]), .A2(n7), .A3(n10), .A4(n111), .A5(n34), .Y(wb_data_o[18]) );
  AO22X1_RVT U61 ( .A1(rd_fifo_out[18]), .A2(n12), .A3(mc_data_del[18]), .A4(
        n35), .Y(n34) );
  AO221X1_RVT U62 ( .A1(n8), .A2(mc_data_del[3]), .A3(n9), .A4(n110), .A5(n32), 
        .Y(wb_data_o[19]) );
  AO22X1_RVT U63 ( .A1(rd_fifo_out[19]), .A2(n12), .A3(mc_data_del[19]), .A4(
        n33), .Y(n32) );
  AO221X1_RVT U64 ( .A1(n8), .A2(mc_data_del[4]), .A3(n10), .A4(n109), .A5(n29), .Y(wb_data_o[20]) );
  AO22X1_RVT U65 ( .A1(rd_fifo_out[20]), .A2(n12), .A3(mc_data_del[20]), .A4(
        n33), .Y(n29) );
  AO221X1_RVT U66 ( .A1(n8), .A2(mc_data_del[5]), .A3(n10), .A4(n108), .A5(n27), .Y(wb_data_o[21]) );
  AO22X1_RVT U67 ( .A1(rd_fifo_out[21]), .A2(n12), .A3(mc_data_del[21]), .A4(
        n33), .Y(n27) );
  AO221X1_RVT U68 ( .A1(n7), .A2(mc_data_del[6]), .A3(n10), .A4(n107), .A5(n25), .Y(wb_data_o[22]) );
  AO22X1_RVT U69 ( .A1(rd_fifo_out[22]), .A2(n12), .A3(mc_data_del[22]), .A4(
        n33), .Y(n25) );
  AO221X1_RVT U70 ( .A1(n8), .A2(mc_data_del[7]), .A3(n9), .A4(n106), .A5(n23), 
        .Y(wb_data_o[23]) );
  AO22X1_RVT U71 ( .A1(rd_fifo_out[23]), .A2(n12), .A3(mc_data_del[23]), .A4(
        n33), .Y(n23) );
  AO221X1_RVT U72 ( .A1(n7), .A2(mc_data_del[8]), .A3(mc_data_del[0]), .A4(n9), 
        .A5(n21), .Y(wb_data_o[24]) );
  AO22X1_RVT U73 ( .A1(rd_fifo_out[24]), .A2(n12), .A3(mc_data_del[24]), .A4(
        n33), .Y(n21) );
  AO221X1_RVT U74 ( .A1(n8), .A2(mc_data_del[9]), .A3(mc_data_del[1]), .A4(n9), 
        .A5(n20), .Y(wb_data_o[25]) );
  AO22X1_RVT U75 ( .A1(rd_fifo_out[25]), .A2(n12), .A3(mc_data_del[25]), .A4(
        n33), .Y(n20) );
  AO221X1_RVT U76 ( .A1(mc_data_del[10]), .A2(n8), .A3(mc_data_del[2]), .A4(n9), .A5(n19), .Y(wb_data_o[26]) );
  AO22X1_RVT U77 ( .A1(rd_fifo_out[26]), .A2(n12), .A3(mc_data_del[26]), .A4(
        n33), .Y(n19) );
  AO221X1_RVT U78 ( .A1(mc_data_del[12]), .A2(n7), .A3(n10), .A4(
        mc_data_del[4]), .A5(n17), .Y(wb_data_o[28]) );
  AO22X1_RVT U79 ( .A1(rd_fifo_out[28]), .A2(n12), .A3(mc_data_del[28]), .A4(
        n33), .Y(n17) );
  AO22X1_RVT U80 ( .A1(n28), .A2(mc_data_o[7]), .A3(wb_data_i[7]), .A4(n15), 
        .Y(n153) );
  AO22X1_RVT U81 ( .A1(n28), .A2(mc_data_o[8]), .A3(wb_data_i[8]), .A4(n22), 
        .Y(n154) );
  AO22X1_RVT U82 ( .A1(n28), .A2(mc_data_o[9]), .A3(wb_data_i[9]), .A4(n22), 
        .Y(n155) );
  AO22X1_RVT U83 ( .A1(n28), .A2(mc_data_o[10]), .A3(wb_data_i[10]), .A4(n22), 
        .Y(n156) );
  AO22X1_RVT U84 ( .A1(n28), .A2(mc_data_o[11]), .A3(wb_data_i[11]), .A4(n22), 
        .Y(n157) );
  AO22X1_RVT U85 ( .A1(n28), .A2(mc_data_o[12]), .A3(wb_data_i[12]), .A4(n22), 
        .Y(n158) );
  AO22X1_RVT U86 ( .A1(n28), .A2(mc_data_o[13]), .A3(wb_data_i[13]), .A4(n22), 
        .Y(n159) );
  AO22X1_RVT U87 ( .A1(n28), .A2(mc_data_o[14]), .A3(wb_data_i[14]), .A4(n22), 
        .Y(n160) );
  AO22X1_RVT U88 ( .A1(n28), .A2(mc_data_o[15]), .A3(wb_data_i[15]), .A4(n22), 
        .Y(n161) );
  AO22X1_RVT U89 ( .A1(n28), .A2(mc_data_o[16]), .A3(wb_data_i[16]), .A4(n22), 
        .Y(n162) );
  AO22X1_RVT U90 ( .A1(n28), .A2(mc_data_o[17]), .A3(wb_data_i[17]), .A4(n22), 
        .Y(n163) );
  AO22X1_RVT U91 ( .A1(n28), .A2(mc_data_o[18]), .A3(wb_data_i[18]), .A4(n22), 
        .Y(n164) );
  AO22X1_RVT U92 ( .A1(n28), .A2(mc_data_o[19]), .A3(wb_data_i[19]), .A4(n22), 
        .Y(n165) );
  AO22X1_RVT U93 ( .A1(n28), .A2(mc_data_o[20]), .A3(wb_data_i[20]), .A4(n24), 
        .Y(n166) );
  AO22X1_RVT U94 ( .A1(n28), .A2(mc_data_o[21]), .A3(wb_data_i[21]), .A4(n24), 
        .Y(n167) );
  OR2X1_RVT U95 ( .A1(csc[3]), .A2(csc[2]), .Y(n47) );
  NAND2X0_RVT U96 ( .A1(csc[5]), .A2(n47), .Y(n3) );
  AO222X1_RVT U97 ( .A1(mc_data_del[0]), .A2(n31), .A3(n6), .A4(n73), .A5(
        rd_fifo_out[0]), .A6(n11), .Y(wb_data_o[0]) );
  AO222X1_RVT U98 ( .A1(mc_data_del[1]), .A2(n31), .A3(n6), .A4(n51), .A5(
        rd_fifo_out[1]), .A6(n11), .Y(wb_data_o[1]) );
  AO222X1_RVT U99 ( .A1(mc_data_del[2]), .A2(n31), .A3(n6), .A4(n48), .A5(
        rd_fifo_out[2]), .A6(n11), .Y(wb_data_o[2]) );
  AO222X1_RVT U100 ( .A1(mc_data_del[3]), .A2(n31), .A3(n6), .A4(n46), .A5(
        rd_fifo_out[3]), .A6(n11), .Y(wb_data_o[3]) );
  AO222X1_RVT U101 ( .A1(mc_data_del[4]), .A2(n31), .A3(n6), .A4(n45), .A5(
        rd_fifo_out[4]), .A6(n11), .Y(wb_data_o[4]) );
  AO222X1_RVT U102 ( .A1(mc_data_del[5]), .A2(n31), .A3(n5), .A4(n44), .A5(
        rd_fifo_out[5]), .A6(n11), .Y(wb_data_o[5]) );
  AO222X1_RVT U103 ( .A1(mc_data_del[6]), .A2(n31), .A3(n5), .A4(n43), .A5(
        rd_fifo_out[6]), .A6(n11), .Y(wb_data_o[6]) );
  AO222X1_RVT U104 ( .A1(mc_data_del[7]), .A2(n31), .A3(n5), .A4(n42), .A5(
        rd_fifo_out[7]), .A6(n11), .Y(wb_data_o[7]) );
  AO222X1_RVT U105 ( .A1(mc_data_del[8]), .A2(n31), .A3(n5), .A4(n105), .A5(
        rd_fifo_out[8]), .A6(n11), .Y(wb_data_o[8]) );
  AO222X1_RVT U106 ( .A1(mc_data_del[9]), .A2(n31), .A3(n5), .A4(n104), .A5(
        rd_fifo_out[9]), .A6(n11), .Y(wb_data_o[9]) );
  AO221X1_RVT U107 ( .A1(mc_data_del[11]), .A2(n7), .A3(n10), .A4(
        mc_data_del[3]), .A5(n18), .Y(wb_data_o[27]) );
  AO22X1_RVT U108 ( .A1(rd_fifo_out[27]), .A2(n114), .A3(mc_data_del[27]), 
        .A4(n35), .Y(n18) );
  AO221X1_RVT U109 ( .A1(mc_data_del[13]), .A2(n7), .A3(n10), .A4(
        mc_data_del[5]), .A5(n16), .Y(wb_data_o[29]) );
  AO22X1_RVT U110 ( .A1(rd_fifo_out[29]), .A2(n114), .A3(mc_data_del[29]), 
        .A4(n35), .Y(n16) );
  AO22X1_RVT U111 ( .A1(n30), .A2(mc_data_o[22]), .A3(wb_data_i[22]), .A4(n24), 
        .Y(n168) );
  AO22X1_RVT U112 ( .A1(n30), .A2(mc_data_o[23]), .A3(wb_data_i[23]), .A4(n24), 
        .Y(n169) );
  AO22X1_RVT U113 ( .A1(n30), .A2(mc_data_o[24]), .A3(wb_data_i[24]), .A4(n24), 
        .Y(n170) );
  AO22X1_RVT U114 ( .A1(n30), .A2(mc_data_o[25]), .A3(wb_data_i[25]), .A4(n24), 
        .Y(n171) );
  AO22X1_RVT U115 ( .A1(n30), .A2(mc_data_o[26]), .A3(wb_data_i[26]), .A4(n24), 
        .Y(n172) );
  AO22X1_RVT U116 ( .A1(n30), .A2(mc_data_o[27]), .A3(wb_data_i[27]), .A4(n24), 
        .Y(n173) );
  AO22X1_RVT U117 ( .A1(n30), .A2(mc_data_o[28]), .A3(wb_data_i[28]), .A4(n24), 
        .Y(n174) );
  AO22X1_RVT U118 ( .A1(n30), .A2(mc_data_o[29]), .A3(wb_data_i[29]), .A4(n24), 
        .Y(n175) );
  AO22X1_RVT U119 ( .A1(n30), .A2(mc_data_o[30]), .A3(wb_data_i[30]), .A4(n24), 
        .Y(n176) );
  AO22X1_RVT U120 ( .A1(n30), .A2(mc_data_o[31]), .A3(wb_data_i[31]), .A4(n24), 
        .Y(n177) );
  AO222X1_RVT U121 ( .A1(mc_data_del[10]), .A2(n31), .A3(n5), .A4(n103), .A5(
        rd_fifo_out[10]), .A6(n11), .Y(wb_data_o[10]) );
  AO222X1_RVT U122 ( .A1(mc_data_del[14]), .A2(n31), .A3(n6), .A4(n96), .A5(
        rd_fifo_out[14]), .A6(n11), .Y(wb_data_o[14]) );
  AO221X1_RVT U123 ( .A1(mc_data_del[0]), .A2(n8), .A3(n10), .A4(n113), .A5(
        n38), .Y(wb_data_o[16]) );
  AO22X1_RVT U124 ( .A1(rd_fifo_out[16]), .A2(n114), .A3(mc_data_del[16]), 
        .A4(n35), .Y(n38) );
  AO221X1_RVT U125 ( .A1(mc_data_del[1]), .A2(n8), .A3(n9), .A4(n112), .A5(n36), .Y(wb_data_o[17]) );
  AO22X1_RVT U126 ( .A1(rd_fifo_out[17]), .A2(n114), .A3(mc_data_del[17]), 
        .A4(n35), .Y(n36) );
  AO22X1_RVT U127 ( .A1(n30), .A2(mc_dp_o[0]), .A3(n74), .A4(n15), .Y(n126) );
  XOR2X1_RVT U128 ( .A1(n76), .A2(n77), .Y(n74) );
  XNOR3X1_RVT U129 ( .A1(wb_data_i[5]), .A2(wb_data_i[4]), .A3(n79), .Y(n76)
         );
  XNOR3X1_RVT U130 ( .A1(wb_data_i[1]), .A2(wb_data_i[0]), .A3(n78), .Y(n77)
         );
  AO22X1_RVT U131 ( .A1(n30), .A2(mc_dp_o[1]), .A3(n80), .A4(n15), .Y(n127) );
  XOR2X1_RVT U132 ( .A1(n81), .A2(n82), .Y(n80) );
  XNOR3X1_RVT U133 ( .A1(wb_data_i[11]), .A2(wb_data_i[10]), .A3(n83), .Y(n82)
         );
  XNOR3X1_RVT U134 ( .A1(wb_data_i[15]), .A2(wb_data_i[14]), .A3(n84), .Y(n81)
         );
  AO22X1_RVT U135 ( .A1(n26), .A2(mc_dp_o[2]), .A3(n85), .A4(n15), .Y(n128) );
  XOR2X1_RVT U136 ( .A1(n86), .A2(n87), .Y(n85) );
  XNOR3X1_RVT U137 ( .A1(wb_data_i[21]), .A2(wb_data_i[20]), .A3(n89), .Y(n86)
         );
  XNOR3X1_RVT U138 ( .A1(wb_data_i[17]), .A2(wb_data_i[16]), .A3(n88), .Y(n87)
         );
  AO22X1_RVT U139 ( .A1(n30), .A2(mc_dp_o[3]), .A3(n90), .A4(n15), .Y(n129) );
  XOR2X1_RVT U140 ( .A1(n91), .A2(n92), .Y(n90) );
  XNOR3X1_RVT U141 ( .A1(wb_data_i[29]), .A2(wb_data_i[28]), .A3(n94), .Y(n91)
         );
  XNOR3X1_RVT U142 ( .A1(wb_data_i[25]), .A2(wb_data_i[24]), .A3(n93), .Y(n92)
         );
  AO22X1_RVT U143 ( .A1(n26), .A2(mc_data_o[0]), .A3(wb_data_i[0]), .A4(n15), 
        .Y(n146) );
  AO22X1_RVT U144 ( .A1(n26), .A2(mc_data_o[1]), .A3(wb_data_i[1]), .A4(n15), 
        .Y(n147) );
  AO22X1_RVT U145 ( .A1(n30), .A2(mc_data_o[2]), .A3(wb_data_i[2]), .A4(n15), 
        .Y(n148) );
  AO22X1_RVT U146 ( .A1(n26), .A2(mc_data_o[3]), .A3(wb_data_i[3]), .A4(n15), 
        .Y(n149) );
  NAND2X0_RVT U147 ( .A1(wb_cyc_i), .A2(n49), .Y(rd_fifo_clr) );
  NAND2X0_RVT U148 ( .A1(wb_we_i), .A2(wb_stb_i), .Y(n49) );
  AO222X1_RVT U149 ( .A1(n41), .A2(mc_data_del[8]), .A3(n98), .A4(n105), .A5(
        n37), .A6(mc_data_del[0]), .Y(n178) );
  AO222X1_RVT U150 ( .A1(n41), .A2(mc_data_del[9]), .A3(n98), .A4(n104), .A5(
        n37), .A6(mc_data_del[1]), .Y(n179) );
  AO222X1_RVT U151 ( .A1(n41), .A2(mc_data_del[10]), .A3(n98), .A4(n103), .A5(
        n37), .A6(mc_data_del[2]), .Y(n180) );
  AO222X1_RVT U152 ( .A1(n41), .A2(mc_data_del[11]), .A3(n98), .A4(n102), .A5(
        n37), .A6(mc_data_del[3]), .Y(n181) );
  AO222X1_RVT U153 ( .A1(n41), .A2(mc_data_del[12]), .A3(n98), .A4(n99), .A5(
        n37), .A6(mc_data_del[4]), .Y(n182) );
  AO222X1_RVT U154 ( .A1(n41), .A2(mc_data_del[13]), .A3(n98), .A4(n97), .A5(
        n37), .A6(mc_data_del[5]), .Y(n183) );
  AO222X1_RVT U155 ( .A1(n41), .A2(mc_data_del[14]), .A3(n98), .A4(n96), .A5(
        n37), .A6(mc_data_del[6]), .Y(n184) );
  AO222X1_RVT U156 ( .A1(n41), .A2(mc_data_del[15]), .A3(n98), .A4(n95), .A5(
        n37), .A6(mc_data_del[7]), .Y(n185) );
  INVX1_RVT U157 ( .A(csc[5]), .Y(n116) );
  NAND2X0_RVT U158 ( .A1(csc[4]), .A2(n5), .Y(n4) );
  AO22X1_RVT U159 ( .A1(n113), .A2(n39), .A3(pack_le2), .A4(mc_data_del[0]), 
        .Y(n130) );
  AO22X1_RVT U160 ( .A1(n112), .A2(n39), .A3(pack_le2), .A4(mc_data_del[1]), 
        .Y(n131) );
  AO22X1_RVT U161 ( .A1(n111), .A2(n39), .A3(pack_le2), .A4(mc_data_del[2]), 
        .Y(n132) );
  AO22X1_RVT U162 ( .A1(n110), .A2(n39), .A3(pack_le2), .A4(mc_data_del[3]), 
        .Y(n133) );
  AO22X1_RVT U163 ( .A1(n109), .A2(n39), .A3(pack_le2), .A4(mc_data_del[4]), 
        .Y(n134) );
  AO22X1_RVT U164 ( .A1(n108), .A2(n39), .A3(pack_le2), .A4(mc_data_del[5]), 
        .Y(n135) );
  AO22X1_RVT U165 ( .A1(n107), .A2(n39), .A3(pack_le2), .A4(mc_data_del[6]), 
        .Y(n136) );
  AO22X1_RVT U166 ( .A1(n106), .A2(n39), .A3(pack_le2), .A4(mc_data_del[7]), 
        .Y(n137) );
  AO22X1_RVT U167 ( .A1(n73), .A2(n40), .A3(pack_le0), .A4(mc_data_del[0]), 
        .Y(n138) );
  AO22X1_RVT U168 ( .A1(n51), .A2(n40), .A3(pack_le0), .A4(mc_data_del[1]), 
        .Y(n139) );
  AO22X1_RVT U169 ( .A1(n48), .A2(n40), .A3(pack_le0), .A4(mc_data_del[2]), 
        .Y(n140) );
  AO22X1_RVT U170 ( .A1(n46), .A2(n40), .A3(pack_le0), .A4(mc_data_del[3]), 
        .Y(n141) );
  AO22X1_RVT U171 ( .A1(n45), .A2(n40), .A3(pack_le0), .A4(mc_data_del[4]), 
        .Y(n142) );
  AO22X1_RVT U172 ( .A1(n44), .A2(n40), .A3(pack_le0), .A4(mc_data_del[5]), 
        .Y(n143) );
  AO22X1_RVT U173 ( .A1(n43), .A2(n40), .A3(pack_le0), .A4(mc_data_del[6]), 
        .Y(n144) );
  AO22X1_RVT U174 ( .A1(n42), .A2(n40), .A3(pack_le0), .A4(mc_data_del[7]), 
        .Y(n145) );
  XOR2X1_RVT U175 ( .A1(wb_data_i[3]), .A2(wb_data_i[2]), .Y(n78) );
  XOR2X1_RVT U176 ( .A1(wb_data_i[7]), .A2(wb_data_i[6]), .Y(n79) );
  XOR2X1_RVT U177 ( .A1(wb_data_i[9]), .A2(wb_data_i[8]), .Y(n84) );
  NAND3X0_RVT U178 ( .A1(n115), .A2(n116), .A3(pack_le1), .Y(n100) );
  XOR2X1_RVT U179 ( .A1(wb_data_i[13]), .A2(wb_data_i[12]), .Y(n83) );
  XOR2X1_RVT U180 ( .A1(wb_data_i[19]), .A2(wb_data_i[18]), .Y(n88) );
  XOR2X1_RVT U181 ( .A1(wb_data_i[23]), .A2(wb_data_i[22]), .Y(n89) );
  XOR2X1_RVT U182 ( .A1(wb_data_i[27]), .A2(wb_data_i[26]), .Y(n93) );
  XOR2X1_RVT U183 ( .A1(wb_data_i[31]), .A2(wb_data_i[30]), .Y(n94) );
  INVX1_RVT U184 ( .A(csc[4]), .Y(n115) );
  NAND3X0_RVT U185 ( .A1(csc[4]), .A2(n116), .A3(pack_le0), .Y(n101) );
  INVX1_RVT U186 ( .A(n75), .Y(n26) );
  AO22X1_RVT U187 ( .A1(n26), .A2(mc_data_o[6]), .A3(wb_data_i[6]), .A4(n15), 
        .Y(n152) );
  AO22X1_RVT U188 ( .A1(n30), .A2(mc_data_o[5]), .A3(wb_data_i[5]), .A4(n15), 
        .Y(n151) );
  AO22X1_RVT U189 ( .A1(n26), .A2(mc_data_o[4]), .A3(wb_data_i[4]), .A4(n15), 
        .Y(n150) );
  OR3X1_RVT U190 ( .A1(wb_ack_o), .A2(csc[1]), .A3(n47), .Y(n75) );
endmodule


module mc_refresh_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[7]), .A2(A[7]), .Y(SUM[7]) );
endmodule


module mc_refresh_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[7]), .A2(A[7]), .Y(SUM[7]) );
endmodule


module mc_refresh ( clk, rst, cs_need_rfr, ref_int, rfr_req, rfr_ack, 
        rfr_ps_val );
  input [7:0] cs_need_rfr;
  input [2:0] ref_int;
  input [7:0] rfr_ps_val;
  input clk, rst, rfr_ack;
  output rfr_req;
  wire   rfr_en, N10, N14, N15, N16, N17, N18, N19, N20, N21, N33, rfr_early,
         rfr_ce, N40, N41, N42, N43, N44, N45, N46, N47, rfr_clr, n6, n15, n16,
         n17, n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n1, n2, n3, n4, n7, n8, n9, n10, n11, n12, n13,
         n14, n23, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60;
  wire   [7:0] ps_cnt;
  wire   [7:0] rfr_cnt;

  NOR4X1_RVT U30 ( .A1(rfr_ps_val[7]), .A2(rfr_ps_val[6]), .A3(rfr_ps_val[5]), 
        .A4(rfr_ps_val[4]), .Y(n22) );
  NOR4X1_RVT U31 ( .A1(rfr_ps_val[3]), .A2(rfr_ps_val[2]), .A3(rfr_ps_val[1]), 
        .A4(rfr_ps_val[0]), .Y(n21) );
  NOR4X1_RVT U41 ( .A1(cs_need_rfr[7]), .A2(cs_need_rfr[6]), .A3(
        cs_need_rfr[5]), .A4(cs_need_rfr[4]), .Y(n32) );
  NOR4X1_RVT U42 ( .A1(cs_need_rfr[3]), .A2(cs_need_rfr[2]), .A3(
        cs_need_rfr[1]), .A4(cs_need_rfr[0]), .Y(n31) );
  mc_refresh_DW01_inc_0 add_189_S2 ( .A(rfr_cnt), .SUM({N47, N46, N45, N44, 
        N43, N42, N41, N40}) );
  mc_refresh_DW01_inc_1 add_167_S2 ( .A(ps_cnt), .SUM({N21, N20, N19, N18, N17, 
        N16, N15, N14}) );
  SDFFSSRX1_RVT rfr_clr_reg ( .RSTB(rfr_early), .SETB(n24), .D(n1), .SI(1'b0), 
        .SE(n6), .CLK(clk), .Q(rfr_clr) );
  DFFARX1_RVT \rfr_cnt_reg[0]  ( .D(n41), .CLK(clk), .RSTB(n60), .Q(rfr_cnt[0]), .QN(n6) );
  DFFARX1_RVT rfr_en_reg ( .D(N10), .CLK(clk), .RSTB(n60), .Q(rfr_en) );
  DFFARX1_RVT rfr_early_reg ( .D(N33), .CLK(clk), .RSTB(n60), .Q(rfr_early) );
  DFFARX1_RVT rfr_ce_reg ( .D(n56), .CLK(clk), .RSTB(n60), .Q(rfr_ce) );
  DFFARX1_RVT \ps_cnt_reg[6]  ( .D(n47), .CLK(clk), .RSTB(n60), .Q(ps_cnt[6])
         );
  DFFARX1_RVT \ps_cnt_reg[5]  ( .D(n46), .CLK(clk), .RSTB(n60), .Q(ps_cnt[5])
         );
  DFFARX1_RVT \ps_cnt_reg[4]  ( .D(n45), .CLK(clk), .RSTB(n60), .Q(ps_cnt[4])
         );
  DFFARX1_RVT \ps_cnt_reg[3]  ( .D(n44), .CLK(clk), .RSTB(n60), .Q(ps_cnt[3])
         );
  DFFARX1_RVT \ps_cnt_reg[2]  ( .D(n43), .CLK(clk), .RSTB(n60), .Q(ps_cnt[2])
         );
  DFFARX1_RVT \ps_cnt_reg[7]  ( .D(n48), .CLK(clk), .RSTB(n60), .Q(ps_cnt[7])
         );
  DFFARX1_RVT \ps_cnt_reg[1]  ( .D(n42), .CLK(clk), .RSTB(n60), .Q(ps_cnt[1]), 
        .QN(n52) );
  DFFARX1_RVT \ps_cnt_reg[0]  ( .D(n49), .CLK(clk), .RSTB(n60), .Q(ps_cnt[0])
         );
  DFFARX1_RVT rfr_req_reg ( .D(n33), .CLK(clk), .RSTB(n60), .Q(rfr_req) );
  DFFARX1_RVT \rfr_cnt_reg[7]  ( .D(n34), .CLK(clk), .RSTB(n60), .Q(rfr_cnt[7]) );
  DFFARX1_RVT \rfr_cnt_reg[6]  ( .D(n35), .CLK(clk), .RSTB(n60), .Q(rfr_cnt[6]) );
  DFFARX1_RVT \rfr_cnt_reg[5]  ( .D(n36), .CLK(clk), .RSTB(n60), .Q(rfr_cnt[5]) );
  DFFARX1_RVT \rfr_cnt_reg[4]  ( .D(n37), .CLK(clk), .RSTB(n60), .Q(rfr_cnt[4]) );
  DFFARX1_RVT \rfr_cnt_reg[3]  ( .D(n38), .CLK(clk), .RSTB(n60), .Q(rfr_cnt[3]) );
  DFFARX1_RVT \rfr_cnt_reg[2]  ( .D(n39), .CLK(clk), .RSTB(n60), .Q(rfr_cnt[2]) );
  DFFARX1_RVT \rfr_cnt_reg[1]  ( .D(n40), .CLK(clk), .RSTB(n60), .Q(rfr_cnt[1]) );
  AO22X1_RVT U3 ( .A1(n59), .A2(n57), .A3(rfr_cnt[3]), .A4(n27), .Y(n26) );
  AO21X1_RVT U5 ( .A1(rfr_cnt[4]), .A2(n28), .A3(n57), .Y(n27) );
  INVX1_RVT U6 ( .A(n17), .Y(n53) );
  AND2X1_RVT U7 ( .A1(n54), .A2(n17), .Y(n16) );
  INVX1_RVT U8 ( .A(rfr_ack), .Y(n54) );
  INVX1_RVT U9 ( .A(n19), .Y(n55) );
  AND2X1_RVT U10 ( .A1(n15), .A2(n19), .Y(n18) );
  INVX1_RVT U11 ( .A(n15), .Y(n56) );
  AO22X1_RVT U12 ( .A1(rfr_cnt[7]), .A2(n16), .A3(N47), .A4(n53), .Y(n34) );
  AO22X1_RVT U13 ( .A1(rfr_cnt[6]), .A2(n16), .A3(N46), .A4(n53), .Y(n35) );
  AO22X1_RVT U14 ( .A1(rfr_cnt[5]), .A2(n16), .A3(N45), .A4(n53), .Y(n36) );
  AO22X1_RVT U15 ( .A1(rfr_cnt[4]), .A2(n16), .A3(N44), .A4(n53), .Y(n37) );
  AO22X1_RVT U16 ( .A1(rfr_cnt[3]), .A2(n16), .A3(N43), .A4(n53), .Y(n38) );
  AO22X1_RVT U17 ( .A1(rfr_cnt[2]), .A2(n16), .A3(N42), .A4(n53), .Y(n39) );
  AO22X1_RVT U18 ( .A1(rfr_cnt[1]), .A2(n16), .A3(N41), .A4(n53), .Y(n40) );
  AO22X1_RVT U19 ( .A1(rfr_cnt[0]), .A2(n16), .A3(N40), .A4(n53), .Y(n41) );
  NAND2X0_RVT U20 ( .A1(rfr_ce), .A2(n54), .Y(n17) );
  OA21X1_RVT U21 ( .A1(rfr_clr), .A2(rfr_req), .A3(n54), .Y(n33) );
  INVX1_RVT U22 ( .A(rfr_ps_val[0]), .Y(n50) );
  AO22X1_RVT U23 ( .A1(ps_cnt[6]), .A2(n18), .A3(N20), .A4(n55), .Y(n47) );
  AO22X1_RVT U24 ( .A1(ps_cnt[5]), .A2(n18), .A3(N19), .A4(n55), .Y(n46) );
  AO22X1_RVT U25 ( .A1(ps_cnt[4]), .A2(n18), .A3(N18), .A4(n55), .Y(n45) );
  AO22X1_RVT U26 ( .A1(ps_cnt[3]), .A2(n18), .A3(N17), .A4(n55), .Y(n44) );
  AO22X1_RVT U27 ( .A1(ps_cnt[2]), .A2(n18), .A3(N16), .A4(n55), .Y(n43) );
  AO22X1_RVT U28 ( .A1(ps_cnt[1]), .A2(n18), .A3(N15), .A4(n55), .Y(n42) );
  AO22X1_RVT U29 ( .A1(ps_cnt[7]), .A2(n18), .A3(N21), .A4(n55), .Y(n48) );
  AO22X1_RVT U32 ( .A1(ps_cnt[0]), .A2(n18), .A3(N14), .A4(n55), .Y(n49) );
  INVX1_RVT U33 ( .A(rfr_ps_val[1]), .Y(n51) );
  NAND2X0_RVT U34 ( .A1(N33), .A2(n20), .Y(n15) );
  NAND2X0_RVT U35 ( .A1(n21), .A2(n22), .Y(n20) );
  NAND2X0_RVT U36 ( .A1(rfr_en), .A2(n15), .Y(n19) );
  INVX1_RVT U37 ( .A(ref_int[0]), .Y(n59) );
  INVX1_RVT U38 ( .A(ref_int[2]), .Y(n57) );
  INVX1_RVT U39 ( .A(ref_int[1]), .Y(n58) );
  AND3X1_RVT U40 ( .A1(rfr_cnt[2]), .A2(n26), .A3(rfr_cnt[1]), .Y(n1) );
  NAND3X0_RVT U43 ( .A1(n58), .A2(n57), .A3(n25), .Y(n24) );
  OR2X1_RVT U44 ( .A1(n59), .A2(rfr_cnt[1]), .Y(n25) );
  NAND2X0_RVT U45 ( .A1(n31), .A2(n32), .Y(N10) );
  AO22X1_RVT U46 ( .A1(n59), .A2(n58), .A3(rfr_cnt[5]), .A4(n29), .Y(n28) );
  NAND2X0_RVT U47 ( .A1(ref_int[1]), .A2(n30), .Y(n29) );
  OAI21X1_RVT U48 ( .A1(n59), .A2(rfr_cnt[7]), .A3(rfr_cnt[6]), .Y(n30) );
  INVX1_RVT U49 ( .A(rst), .Y(n60) );
  XNOR2X1_RVT U50 ( .A1(rfr_ps_val[6]), .A2(ps_cnt[6]), .Y(n7) );
  XNOR2X1_RVT U51 ( .A1(rfr_ps_val[5]), .A2(ps_cnt[5]), .Y(n4) );
  XNOR2X1_RVT U52 ( .A1(rfr_ps_val[4]), .A2(ps_cnt[4]), .Y(n3) );
  XNOR2X1_RVT U53 ( .A1(rfr_ps_val[3]), .A2(ps_cnt[3]), .Y(n2) );
  NAND4X0_RVT U54 ( .A1(n7), .A2(n4), .A3(n3), .A4(n2), .Y(n23) );
  XNOR2X1_RVT U55 ( .A1(rfr_ps_val[2]), .A2(ps_cnt[2]), .Y(n9) );
  XNOR2X1_RVT U56 ( .A1(rfr_ps_val[7]), .A2(ps_cnt[7]), .Y(n8) );
  NAND2X0_RVT U57 ( .A1(n9), .A2(n8), .Y(n14) );
  NOR2X0_RVT U58 ( .A1(n50), .A2(ps_cnt[0]), .Y(n10) );
  OA22X1_RVT U59 ( .A1(rfr_ps_val[1]), .A2(n10), .A3(n10), .A4(n52), .Y(n13)
         );
  AND2X1_RVT U60 ( .A1(ps_cnt[0]), .A2(n50), .Y(n11) );
  OA22X1_RVT U61 ( .A1(n11), .A2(n51), .A3(ps_cnt[1]), .A4(n11), .Y(n12) );
  NOR4X0_RVT U62 ( .A1(n23), .A2(n14), .A3(n13), .A4(n12), .Y(N33) );
endmodule


module mc_timing ( clk, rst, wb_cyc_i, wb_stb_i, wb_we_i, wb_read_go, 
        wb_write_go, wb_first, wb_wait, mem_ack, err, susp_req, resume_req, 
        suspended, susp_sel, mc_clk, data_oe, oe_, we_, cas_, ras_, cke_, 
        cs_en, wb_cycle, wr_cycle, mc_br, mc_bg, mc_adsc, mc_adv, mc_c_oe, 
        mc_ack, not_mem_cyc, csc, tms, cs, lmr_req, lmr_ack, cs_le_d, cs_le, 
        cmd_a10, row_sel, next_adr, page_size, bank_set, bank_clr, 
        bank_clr_all, bank_open, any_bank_open, row_same, dv, pack_le0, 
        pack_le1, pack_le2, par_err, rfr_req, rfr_ack, init_req, init_ack );
  input [31:0] csc;
  input [31:0] tms;
  input [7:0] cs;
  input [10:0] page_size;
  input clk, rst, wb_cyc_i, wb_stb_i, wb_we_i, wb_read_go, wb_write_go,
         wb_first, wb_wait, susp_req, resume_req, mc_clk, mc_br, mc_ack,
         not_mem_cyc, lmr_req, bank_open, any_bank_open, row_same, par_err,
         rfr_req, init_req;
  output mem_ack, err, suspended, susp_sel, data_oe, oe_, we_, cas_, ras_,
         cke_, cs_en, wb_cycle, wr_cycle, mc_bg, mc_adsc, mc_adv, mc_c_oe,
         lmr_ack, cs_le_d, cs_le, cmd_a10, row_sel, next_adr, bank_set,
         bank_clr, bank_clr_all, dv, pack_le0, pack_le1, pack_le2, rfr_ack,
         init_ack;
  wire   n911, csc_10, lmr_ack_d, cs_le_r1, rsts1, mc_c_oe_d, pack_le1_d,
         data_oe_r, data_oe_d, data_oe_r2, cke_r, cke_d, cke_o_r1, cke_o_r2,
         wb_wait_r2, wb_wait_r, lookup_ready1, N68, N69, no_wb_cycle, cnt_next,
         susp_req_r, resume_req_r, rfr_ack_d, N125, N126, N127, N128, N129,
         N130, N131, N132, N133, tmr2_done, N164, N178, N179, N180, N181, N182,
         N183, N184, N185, tmr_done, N249, N250, N251, N252, N253, N254, N255,
         N256, N257, N258, N259, N278, cmd_a10_r, n5, n6, n8, n9, n12, n13,
         n14, n15, n16, n17, n19, n20, n21, n22, n23, n24, n25, n27, n28, n30,
         n31, n32, n33, n34, n36, n37, n39, n40, n41, n42, n43, n44, n46, n48,
         n50, n51, n55, n56, n58, n59, n61, n62, n64, n65, n68, n70, n71, n72,
         n73, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n86, n87, n90,
         n91, n93, n94, n95, n96, n98, n100, n101, n102, n105, n106, n108,
         n110, n111, n112, n113, n114, n115, n116, n117, n119, n120, n122,
         n123, n124, n125, n126, n128, n130, n131, n133, n134, n135, n136,
         n138, n139, n141, n142, n144, n145, n146, n148, n149, n150, n153,
         n155, n157, n158, n159, n160, n162, n164, n165, n167, n168, n169,
         n171, n172, n173, n175, n176, n177, n178, n179, n181, n182, n185,
         n186, n187, n189, n192, n193, n194, n195, n197, n198, n200, n201,
         n202, n203, n204, n205, n208, n209, n210, n213, n215, n216, n218,
         n220, n221, n223, n224, n225, n226, n228, n229, n230, n232, n234,
         n237, n238, n239, n241, n242, n243, n245, n247, n248, n250, n251,
         n252, n253, n254, n255, n256, n258, n259, n260, n261, n262, n264,
         n266, n267, n268, n269, n271, n272, n273, n275, n276, n278, n279,
         n281, n282, n285, n286, n287, n288, n289, n290, n291, n293, n294,
         n297, n298, n300, n301, n302, n303, n304, n306, n307, n308, n310,
         n311, n312, n315, n316, n317, n318, n319, n320, n322, n323, n324,
         n326, n327, n328, n329, n330, n331, n332, n335, n336, n337, n338,
         n340, n341, n343, n346, n347, n350, n352, n353, n354, n356, n357,
         n358, n360, n361, n362, n368, n369, n371, n372, n375, n377, n379,
         n382, n384, n386, n387, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n400, n402, n404, n405, n407, n410, n411, n413,
         n414, n415, n416, n417, n423, n426, n427, n428, n429, n430, n431,
         n433, n435, n437, n439, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n465, n468, n470, n472, n475, n476, n478,
         n479, n480, n481, n483, n485, n486, n487, n488, n489, n492, n493,
         n495, n496, n497, n499, n501, n502, n503, n515, n517, n519, n520,
         n521, n524, n525, n526, n528, n529, n530, n531, n532, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n547, n549, n550, n552,
         n553, n554, n555, n556, n558, n559, n560, n562, n563, n564, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n579, n580,
         n581, n582, n583, n584, n585, n587, n589, n590, n591, n592, n594,
         n596, n600, n601, n602, n605, n606, n607, n609, n612, n613, n614,
         n615, n616, n618, n620, n621, n622, n624, n625, n627, n628, n629,
         n630, n631, n632, n637, n638, n639, n640, n641, n642, n644, n645,
         n647, n649, n650, n652, n653, n654, n655, n656, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n672,
         n673, n674, n675, n676, n680, n681, n682, n683, n685, n686, n687,
         n688, n689, n691, n692, n693, n694, n697, n698, n699, n701, n703,
         n704, n705, n706, n707, n712, n713, n715, n717, n718, n720, n721,
         n722, n723, n724, n725, n726, n729, n730, n731, n732, n734, n735,
         n736, n737, n738, n739, n740, n742, n743, n744, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n762, n767, n769, n770, n773, n774, n775, n777, n780, n781,
         n782, n783, n784, n785, n786, n787, n789, n790, n792, n793, n794,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n1, n2, n3, n4, n7, n10, n11, n18, n26, n29, n35,
         n38, n45, n47, n49, n52, n53, n54, n57, n60, n63, n66, n67, n69, n76,
         n85, n88, n89, n92, n97, n99, n103, n104, n107, n118, n121, n127,
         n129, n132, n137, n140, n143, n147, n151, n152, n154, n156, n161,
         n163, n166, n170, n174, n180, n183, n184, n188, n190, n191, n196,
         n199, n206, n207, n211, n212, n214, n217, n219, n222, n227, n231,
         n233, n235, n236, n240, n244, n246, n249, n257, n263, n265, n270,
         n274, n277, n280, n283, n284, n292, n295, n296, n299, n305, n309,
         n313, n314, n321, n325, n333, n334, n339, n342, n344, n345, n348,
         n349, n351, n355, n359, n363, n365, n366, n367, n370, n373, n374,
         n376, n378, n380, n381, n383, n385, n388, n399, n401, n403, n406,
         n408, n409, n412, n418, n419, n420, n421, n422, n424, n425, n432,
         n434, n436, n438, n440, n453, n464, n466, n467, n469, n471, n473,
         n474, n477, n482, n484, n490, n491, n494, n498, n500, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n516, n518,
         n522, n523, n527, n533, n534, n535, n536, n546, n548, n551, n557,
         n561, n565, n576, n577, n578, n586, n588, n593, n595, n597, n598,
         n599, n603, n604, n608, n610, n611, n617, n619, n623, n626, n633,
         n634, n635, n636, n643, n646, n648, n651, n657, n671, n677, n678,
         n679, n684, n690, n695, n696, n700, n702, n708, n709, n710, n711,
         n714, n716, n719, n727, n728, n733, n741, n745, n761, n763, n764,
         n765, n766, n768, n778, n779, n788, n791, n795, n843, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867,
         n868, n869, n870, n871, n872, n873, n874, n875, n876, n877, n878,
         n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889,
         n890, n891, n892, n893, n894, n895, n896, n897, n898, n899, n900,
         n901, n902, n903, n904, n905, n906, n907, n908, n909, n910;
  wire   [3:0] cmd_r;
  wire   [3:0] cmd;
  wire   [3:0] cmd_del;
  wire   [8:0] timer2;
  wire   [7:0] timer;
  wire   [10:0] burst_cnt;
  wire   [65:0] state;
  wire   [65:0] next_state;
  assign csc_10 = csc[10];

  NOR4X1_RVT U556 ( .A1(n606), .A2(n607), .A3(state[38]), .A4(n473), .Y(n841)
         );
  NOR4X1_RVT U712 ( .A1(cs[7]), .A2(cs[6]), .A3(cs[5]), .A4(cs[4]), .Y(n699)
         );
  NOR4X1_RVT U713 ( .A1(cs[3]), .A2(cs[2]), .A3(cs[1]), .A4(cs[0]), .Y(n698)
         );
  NOR4X1_RVT U795 ( .A1(n723), .A2(n724), .A3(n725), .A4(n726), .Y(n688) );
  NOR4X1_RVT U875 ( .A1(pack_le1_d), .A2(state[36]), .A3(state[41]), .A4(
        state[45]), .Y(n486) );
  DFFARX1_RVT cmd_asserted_reg ( .D(n774), .CLK(clk), .RSTB(n174), .Q(n118), 
        .QN(n780) );
  DFFASX1_RVT \timer_reg[1]  ( .D(n840), .CLK(clk), .SETB(n166), .Q(timer[1])
         );
  DFFASX1_RVT \timer_reg[3]  ( .D(n837), .CLK(clk), .SETB(n166), .Q(timer[3])
         );
  DFFARX1_RVT \state_reg[24]  ( .D(next_state[24]), .CLK(clk), .RSTB(n190), 
        .Q(state[24]), .QN(n67) );
  DFFARX1_RVT \state_reg[65]  ( .D(next_state[65]), .CLK(clk), .RSTB(n191), 
        .Q(err), .QN(n794) );
  DFFARX1_RVT \state_reg[22]  ( .D(next_state[22]), .CLK(clk), .RSTB(n184), 
        .Q(state[22]), .QN(n127) );
  DFFARX1_RVT wb_cycle_reg ( .D(n819), .CLK(clk), .RSTB(n909), .Q(n911), .QN(
        n588) );
  DFFASX1_RVT \cmd_del_reg[2]  ( .D(cmd_r[2]), .CLK(clk), .SETB(n166), .Q(
        cmd_del[2]) );
  DFFASX1_RVT \cmd_del_reg[1]  ( .D(cmd_r[1]), .CLK(clk), .SETB(n166), .Q(
        cmd_del[1]) );
  DFFASX1_RVT \cmd_del_reg[0]  ( .D(cmd_r[0]), .CLK(clk), .SETB(n166), .Q(
        cmd_del[0]) );
  DFFX1_RVT cmd_a10_r_reg ( .D(cmd_a10), .CLK(clk), .Q(cmd_a10_r) );
  DFFX1_RVT \ir_cnt_reg[3]  ( .D(n813), .CLK(clk), .Q(n894), .QN(n760) );
  DFFX1_RVT ir_cnt_done_reg ( .D(n842), .CLK(clk), .QN(n762) );
  DFFX1_RVT \ir_cnt_reg[2]  ( .D(n814), .CLK(clk), .Q(n11), .QN(n759) );
  DFFSSRX1_RVT cke__reg ( .D(n799), .SETB(n775), .RSTB(cke_r), .CLK(clk), .Q(
        cke_), .QN(n746) );
  DFFX1_RVT \ir_cnt_reg[1]  ( .D(n816), .CLK(clk), .Q(n891), .QN(n789) );
  DFFX1_RVT \ir_cnt_reg[0]  ( .D(n815), .CLK(clk), .QN(n758) );
  DFFX1_RVT pack_le1_reg ( .D(pack_le1_d), .CLK(clk), .Q(pack_le1) );
  DFFSSRX1_RVT pack_le2_reg ( .D(state[45]), .SETB(1'b1), .RSTB(n797), .CLK(
        clk), .Q(pack_le2) );
  DFFASX1_RVT \timer_reg[7]  ( .D(n833), .CLK(clk), .SETB(n166), .Q(timer[7])
         );
  DFFASX1_RVT \timer_reg[4]  ( .D(n836), .CLK(clk), .SETB(n170), .Q(timer[4])
         );
  DFFASX1_RVT \timer_reg[5]  ( .D(n835), .CLK(clk), .SETB(n166), .Q(timer[5])
         );
  DFFASX1_RVT \timer_reg[6]  ( .D(n834), .CLK(clk), .SETB(n166), .Q(timer[6])
         );
  DFFX1_RVT wb_write_go_r_reg ( .D(n152), .CLK(clk), .QN(n500) );
  SDFFSSRX1_RVT pack_le0_reg ( .RSTB(state[45]), .SETB(1'b1), .D(n796), .SI(
        1'b1), .SE(state[41]), .CLK(clk), .Q(pack_le0) );
  DFFASX1_RVT \state_reg[0]  ( .D(next_state[0]), .CLK(clk), .SETB(n166), .Q(
        state[0]), .QN(n10) );
  DFFX1_RVT cs_le_r_reg ( .D(cs_le_r1), .CLK(clk), .Q(n45) );
  DFFX1_RVT cs_le_reg ( .D(cs_le_d), .CLK(clk), .Q(cs_le) );
  DFFX1_RVT lmr_ack_reg ( .D(lmr_ack_d), .CLK(clk), .Q(lmr_ack) );
  DFFX1_RVT cke_o_del_reg ( .D(cke_o_r2), .CLK(clk), .QN(n29) );
  DFFX1_RVT burst_act_rd_reg ( .D(N278), .CLK(clk), .QN(n35) );
  DFFASX1_RVT oe__reg ( .D(n841), .CLK(clk), .SETB(n170), .Q(oe_) );
  DFFASX1_RVT \cmd_r_reg[1]  ( .D(cmd[1]), .CLK(clk), .SETB(n166), .Q(cmd_r[1]) );
  DFFASX1_RVT \cmd_r_reg[0]  ( .D(cmd[0]), .CLK(clk), .SETB(n166), .Q(cmd_r[0]) );
  DFFASX1_RVT \cmd_r_reg[2]  ( .D(cmd[2]), .CLK(clk), .SETB(n170), .Q(cmd_r[2]) );
  DFFASX1_RVT rsts_reg ( .D(rsts1), .CLK(clk), .SETB(n166), .QN(n777) );
  DFFASX1_RVT rsts1_reg ( .D(1'b0), .CLK(mc_clk), .SETB(n170), .Q(rsts1) );
  DFFX1_RVT wb_wait_r2_reg ( .D(n147), .CLK(clk), .Q(wb_wait_r2) );
  DFFX1_RVT cke_o_r2_reg ( .D(cke_o_r1), .CLK(clk), .Q(cke_o_r2) );
  DFFX1_RVT cs_le_r1_reg ( .D(cs_le), .CLK(clk), .Q(cs_le_r1) );
  DFFX1_RVT cke_o_r1_reg ( .D(cke_), .CLK(clk), .Q(cke_o_r1) );
  DFFARX1_RVT suspended_reg ( .D(n18), .CLK(clk), .RSTB(n191), .Q(suspended)
         );
  SDFFARX1_RVT data_oe_reg ( .D(data_oe_r2), .SI(data_oe_d), .SE(n882), .CLK(
        clk), .RSTB(n191), .Q(data_oe) );
  DFFARX1_RVT mc_adv_r_reg ( .D(n769), .CLK(clk), .RSTB(n188), .Q(n880) );
  DFFARX1_RVT cmd_asserted2_reg ( .D(n773), .CLK(clk), .RSTB(n170), .Q(n535), 
        .QN(n781) );
  DFFARX1_RVT dv_r_reg ( .D(dv), .CLK(clk), .RSTB(n191), .QN(n793) );
  DFFARX1_RVT lookup_ready2_reg ( .D(N69), .CLK(clk), .RSTB(n174), .Q(n576) );
  DFFARX1_RVT ap_en_reg ( .D(n818), .CLK(clk), .RSTB(n183), .Q(n763), .QN(n792) );
  DFFARX1_RVT mc_adv_r1_reg ( .D(n770), .CLK(clk), .RSTB(n188), .Q(n879) );
  DFFARX1_RVT mem_ack_r_reg ( .D(mem_ack), .CLK(clk), .RSTB(n170), .QN(n747)
         );
  DFFARX1_RVT \ack_cnt_reg[0]  ( .D(n802), .CLK(clk), .RSTB(n174), .Q(n536), 
        .QN(n786) );
  DFFARX1_RVT \ack_cnt_reg[1]  ( .D(n800), .CLK(clk), .RSTB(n174), .Q(n548), 
        .QN(n785) );
  DFFARX1_RVT \ack_cnt_reg[2]  ( .D(n801), .CLK(clk), .RSTB(n174), .Q(n551), 
        .QN(n784) );
  DFFARX1_RVT \ack_cnt_reg[3]  ( .D(n821), .CLK(clk), .RSTB(n174), .Q(n557), 
        .QN(n783) );
  DFFARX1_RVT susp_req_r_reg ( .D(susp_req), .CLK(clk), .RSTB(n170), .Q(
        susp_req_r) );
  DFFARX1_RVT resume_req_r_reg ( .D(resume_req), .CLK(clk), .RSTB(n170), .Q(
        resume_req_r) );
  DFFARX1_RVT data_oe_r2_reg ( .D(data_oe_r), .CLK(clk), .RSTB(n190), .Q(
        data_oe_r2) );
  DFFARX1_RVT \cmd_del_reg[3]  ( .D(cmd_r[3]), .CLK(clk), .RSTB(n170), .Q(
        cmd_del[3]) );
  DFFARX1_RVT rfr_ack_r_reg ( .D(rfr_ack_d), .CLK(clk), .RSTB(n183), .Q(
        rfr_ack), .QN(n791) );
  DFFARX1_RVT lookup_ready1_reg ( .D(N68), .CLK(clk), .RSTB(n174), .Q(
        lookup_ready1) );
  DFFARX1_RVT susp_sel_r_reg ( .D(n812), .CLK(clk), .RSTB(n909), .Q(susp_sel), 
        .QN(n897) );
  DFFARX1_RVT mc_c_oe_reg ( .D(mc_c_oe_d), .CLK(clk), .RSTB(n183), .Q(mc_c_oe)
         );
  DFFARX1_RVT wr_cycle_reg ( .D(n803), .CLK(clk), .RSTB(n188), .Q(wr_cycle), 
        .QN(n882) );
  DFFARX1_RVT wb_stb_first_reg ( .D(n820), .CLK(clk), .RSTB(n909), .Q(n757), 
        .QN(n561) );
  DFFARX1_RVT \state_reg[7]  ( .D(next_state[7]), .CLK(clk), .RSTB(n184), .Q(
        state[7]), .QN(n843) );
  DFFARX1_RVT \state_reg[8]  ( .D(next_state[8]), .CLK(clk), .RSTB(n188), .Q(
        state[8]), .QN(n881) );
  DFFARX1_RVT \state_reg[12]  ( .D(next_state[12]), .CLK(clk), .RSTB(n170), 
        .Q(state[12]), .QN(n510) );
  DFFARX1_RVT data_oe_r_reg ( .D(data_oe_d), .CLK(clk), .RSTB(n190), .Q(
        data_oe_r) );
  DFFARX1_RVT \state_reg[14]  ( .D(next_state[14]), .CLK(clk), .RSTB(n170), 
        .Q(state[14]), .QN(n513) );
  DFFARX1_RVT \state_reg[56]  ( .D(next_state[56]), .CLK(clk), .RSTB(n188), 
        .Q(state[56]), .QN(n883) );
  DFFARX1_RVT \state_reg[54]  ( .D(next_state[54]), .CLK(clk), .RSTB(n188), 
        .Q(state[54]), .QN(n878) );
  DFFARX1_RVT \state_reg[55]  ( .D(next_state[55]), .CLK(clk), .RSTB(n188), 
        .Q(state[55]) );
  DFFARX1_RVT \state_reg[63]  ( .D(next_state[63]), .CLK(clk), .RSTB(n188), 
        .Q(state[63]), .QN(n885) );
  DFFARX1_RVT \state_reg[60]  ( .D(next_state[60]), .CLK(clk), .RSTB(n190), 
        .Q(state[60]), .QN(n887) );
  DFFARX1_RVT \cmd_r_reg[3]  ( .D(cmd[3]), .CLK(clk), .RSTB(n170), .Q(cmd_r[3]) );
  DFFARX1_RVT \state_reg[58]  ( .D(next_state[58]), .CLK(clk), .RSTB(n183), 
        .Q(state[58]), .QN(n761) );
  DFFARX1_RVT \state_reg[53]  ( .D(next_state[53]), .CLK(clk), .RSTB(n184), 
        .Q(state[53]), .QN(n872) );
  DFFARX1_RVT \state_reg[4]  ( .D(next_state[4]), .CLK(clk), .RSTB(n184), .Q(
        state[4]), .QN(n848) );
  DFFARX1_RVT \state_reg[59]  ( .D(next_state[59]), .CLK(clk), .RSTB(n909), 
        .Q(state[59]), .QN(n745) );
  DFFARX1_RVT \state_reg[3]  ( .D(next_state[3]), .CLK(clk), .RSTB(n909), .Q(
        state[3]), .QN(n728) );
  DFFARX1_RVT \state_reg[33]  ( .D(next_state[33]), .CLK(clk), .RSTB(n180), 
        .Q(state[33]), .QN(n733) );
  DFFARX1_RVT \state_reg[9]  ( .D(next_state[9]), .CLK(clk), .RSTB(n190), .Q(
        state[9]), .QN(n890) );
  DFFARX1_RVT \state_reg[6]  ( .D(next_state[6]), .CLK(clk), .RSTB(n183), .Q(
        state[6]), .QN(n795) );
  DFFARX1_RVT \state_reg[11]  ( .D(next_state[11]), .CLK(clk), .RSTB(n909), 
        .Q(n60), .QN(n57) );
  DFFARX1_RVT \state_reg[16]  ( .D(next_state[16]), .CLK(clk), .RSTB(n174), 
        .Q(state[16]), .QN(n598) );
  DFFARX1_RVT \state_reg[51]  ( .D(next_state[51]), .CLK(clk), .RSTB(n180), 
        .Q(state[51]), .QN(n727) );
  DFFARX1_RVT \state_reg[49]  ( .D(next_state[49]), .CLK(clk), .RSTB(n180), 
        .Q(state[49]), .QN(n714) );
  DFFARX1_RVT \state_reg[10]  ( .D(next_state[10]), .CLK(clk), .RSTB(n183), 
        .Q(state[10]), .QN(n779) );
  DFFARX1_RVT \state_reg[17]  ( .D(next_state[17]), .CLK(clk), .RSTB(n183), 
        .Q(state[17]), .QN(n788) );
  DFFARX1_RVT \state_reg[31]  ( .D(next_state[31]), .CLK(clk), .RSTB(n190), 
        .Q(state[31]), .QN(n895) );
  DFFARX1_RVT \state_reg[30]  ( .D(next_state[30]), .CLK(clk), .RSTB(n184), 
        .Q(state[30]), .QN(n846) );
  DFFARX1_RVT \state_reg[62]  ( .D(next_state[62]), .CLK(clk), .RSTB(n190), 
        .Q(state[62]), .QN(n898) );
  DFFARX1_RVT \state_reg[13]  ( .D(next_state[13]), .CLK(clk), .RSTB(n184), 
        .Q(state[13]), .QN(n844) );
  DFFARX1_RVT \state_reg[2]  ( .D(next_state[2]), .CLK(clk), .RSTB(n183), .Q(
        state[2]), .QN(n765) );
  DFFARX1_RVT \state_reg[50]  ( .D(next_state[50]), .CLK(clk), .RSTB(n180), 
        .Q(state[50]), .QN(n716) );
  DFFARX1_RVT \state_reg[48]  ( .D(next_state[48]), .CLK(clk), .RSTB(n183), 
        .Q(state[48]), .QN(n702) );
  DFFARX1_RVT \state_reg[46]  ( .D(next_state[46]), .CLK(clk), .RSTB(n188), 
        .Q(state[46]), .QN(n874) );
  DFFARX1_RVT \state_reg[44]  ( .D(next_state[44]), .CLK(clk), .RSTB(n188), 
        .Q(state[44]), .QN(n873) );
  DFFARX1_RVT \state_reg[42]  ( .D(next_state[42]), .CLK(clk), .RSTB(n180), 
        .Q(state[42]), .QN(n710) );
  DFFARX1_RVT \state_reg[37]  ( .D(next_state[37]), .CLK(clk), .RSTB(n180), 
        .Q(state[37]), .QN(n708) );
  DFFARX1_RVT \state_reg[35]  ( .D(next_state[35]), .CLK(clk), .RSTB(n183), 
        .Q(state[35]), .QN(n778) );
  DFFARX1_RVT \state_reg[52]  ( .D(next_state[52]), .CLK(clk), .RSTB(n190), 
        .Q(state[52]), .QN(n889) );
  DFFARX1_RVT \state_reg[15]  ( .D(next_state[15]), .CLK(clk), .RSTB(n174), 
        .Q(state[15]), .QN(n597) );
  DFFARX1_RVT \state_reg[57]  ( .D(next_state[57]), .CLK(clk), .RSTB(n190), 
        .Q(state[57]), .QN(n906) );
  DFFARX1_RVT \state_reg[41]  ( .D(next_state[41]), .CLK(clk), .RSTB(n180), 
        .Q(state[41]) );
  DFFARX1_RVT \state_reg[39]  ( .D(next_state[39]), .CLK(clk), .RSTB(n188), 
        .Q(state[39]), .QN(n875) );
  DFFARX1_RVT \state_reg[5]  ( .D(next_state[5]), .CLK(clk), .RSTB(n184), .Q(
        state[5]), .QN(n868) );
  DFFARX1_RVT \state_reg[64]  ( .D(next_state[64]), .CLK(clk), .RSTB(n190), 
        .Q(state[64]), .QN(n886) );
  DFFARX1_RVT \state_reg[61]  ( .D(next_state[61]), .CLK(clk), .RSTB(n190), 
        .Q(state[61]), .QN(n888) );
  DFFARX1_RVT \state_reg[40]  ( .D(next_state[40]), .CLK(clk), .RSTB(n188), 
        .Q(state[40]), .QN(n876) );
  DFFARX1_RVT \state_reg[34]  ( .D(next_state[34]), .CLK(clk), .RSTB(n180), 
        .Q(state[34]), .QN(n741) );
  DFFARX1_RVT \state_reg[21]  ( .D(next_state[21]), .CLK(clk), .RSTB(n180), 
        .Q(state[21]), .QN(n690) );
  DFFARX1_RVT \state_reg[20]  ( .D(next_state[20]), .CLK(clk), .RSTB(n183), 
        .Q(state[20]), .QN(n768) );
  DFFARX1_RVT \state_reg[29]  ( .D(next_state[29]), .CLK(clk), .RSTB(n184), 
        .Q(state[29]), .QN(n871) );
  DFFARX1_RVT \state_reg[38]  ( .D(next_state[38]), .CLK(clk), .RSTB(n180), 
        .Q(state[38]), .QN(n711) );
  DFFARX1_RVT \state_reg[32]  ( .D(next_state[32]), .CLK(clk), .RSTB(n170), 
        .Q(state[32]), .QN(n511) );
  DFFARX1_RVT \state_reg[43]  ( .D(next_state[43]), .CLK(clk), .RSTB(n184), 
        .Q(pack_le1_d) );
  DFFARX1_RVT \state_reg[26]  ( .D(next_state[26]), .CLK(clk), .RSTB(n909), 
        .QN(n893) );
  DFFARX1_RVT \state_reg[18]  ( .D(next_state[18]), .CLK(clk), .RSTB(n184), 
        .Q(state[18]), .QN(n851) );
  DFFARX1_RVT \state_reg[27]  ( .D(next_state[27]), .CLK(clk), .RSTB(n184), 
        .Q(state[27]), .QN(n850) );
  DFFARX1_RVT \state_reg[47]  ( .D(next_state[47]), .CLK(clk), .RSTB(n174), 
        .Q(state[47]), .QN(n577) );
  DFFARX1_RVT \state_reg[36]  ( .D(next_state[36]), .CLK(clk), .RSTB(n174), 
        .Q(state[36]), .QN(n578) );
  DFFARX1_RVT \state_reg[45]  ( .D(next_state[45]), .CLK(clk), .RSTB(n188), 
        .Q(state[45]) );
  DFFARX1_RVT \state_reg[19]  ( .D(next_state[19]), .CLK(clk), .RSTB(n184), 
        .Q(state[19]), .QN(n870) );
  DFFARX1_RVT \state_reg[28]  ( .D(next_state[28]), .CLK(clk), .RSTB(n184), 
        .Q(state[28]), .QN(n869) );
  DFFARX1_RVT \timer_reg[2]  ( .D(n838), .CLK(clk), .RSTB(n191), .Q(timer[2])
         );
  DFFARX1_RVT \timer_reg[0]  ( .D(n839), .CLK(clk), .RSTB(n909), .Q(timer[0]), 
        .QN(N178) );
  DFFX1_RVT cnt_reg ( .D(cnt_next), .CLK(clk), .Q(n896), .QN(n787) );
  DFFX1_RVT cke_r_reg ( .D(cke_d), .CLK(clk), .Q(cke_r), .QN(n782) );
  DFFX1_RVT \burst_cnt_reg[8]  ( .D(n824), .CLK(clk), .Q(n903), .QN(n755) );
  DFFX1_RVT \timer2_reg[8]  ( .D(n817), .CLK(clk), .Q(timer2[8]), .QN(n738) );
  DFFX1_RVT \timer2_reg[6]  ( .D(n809), .CLK(clk), .Q(timer2[6]), .QN(n736) );
  DFFX1_RVT \timer2_reg[5]  ( .D(n808), .CLK(clk), .Q(timer2[5]), .QN(n744) );
  DFFX1_RVT \burst_cnt_reg[10]  ( .D(n822), .CLK(clk), .Q(n905), .QN(n790) );
  DFFX1_RVT \burst_cnt_reg[9]  ( .D(n823), .CLK(clk), .Q(n904), .QN(n756) );
  DFFX1_RVT \burst_cnt_reg[7]  ( .D(n825), .CLK(clk), .Q(n902), .QN(n754) );
  DFFX1_RVT \burst_cnt_reg[5]  ( .D(n827), .CLK(clk), .Q(n900), .QN(n752) );
  DFFX1_RVT \burst_cnt_reg[6]  ( .D(n826), .CLK(clk), .Q(n901), .QN(n753) );
  DFFX1_RVT \burst_cnt_reg[4]  ( .D(n828), .CLK(clk), .Q(n899), .QN(n751) );
  DFFX1_RVT \burst_cnt_reg[1]  ( .D(n832), .CLK(clk), .Q(n505), .QN(n748) );
  DFFX1_RVT \burst_cnt_reg[0]  ( .D(n831), .CLK(clk), .Q(burst_cnt[0]), .QN(
        N249) );
  DFFX1_RVT \timer2_reg[7]  ( .D(n810), .CLK(clk), .Q(timer2[7]), .QN(n737) );
  DFFX1_RVT \timer2_reg[3]  ( .D(n806), .CLK(clk), .Q(timer2[3]), .QN(n740) );
  DFFX1_RVT \timer2_reg[2]  ( .D(n805), .CLK(clk), .Q(timer2[2]), .QN(n739) );
  DFFX1_RVT \burst_cnt_reg[3]  ( .D(n829), .CLK(clk), .Q(burst_cnt[3]), .QN(
        n750) );
  DFFX1_RVT \timer2_reg[0]  ( .D(n811), .CLK(clk), .Q(timer2[0]), .QN(N125) );
  DFFX1_RVT \burst_cnt_reg[2]  ( .D(n830), .CLK(clk), .Q(burst_cnt[2]), .QN(
        n749) );
  DFFX1_RVT \timer2_reg[4]  ( .D(n807), .CLK(clk), .Q(timer2[4]), .QN(n743) );
  DFFX1_RVT \timer2_reg[1]  ( .D(n804), .CLK(clk), .Q(timer2[1]), .QN(n742) );
  DFFARX1_RVT mc_le_reg ( .D(n477), .CLK(clk), .RSTB(n777), .Q(n767), .QN(n477) );
  DFFX1_RVT wb_wait_r_reg ( .D(wb_wait_r2), .CLK(clk), .Q(wb_wait_r), .QN(n484) );
  DFFARX1_RVT tmr_done_reg ( .D(n604), .CLK(clk), .RSTB(n174), .Q(tmr_done), 
        .QN(n53) );
  DFFARX1_RVT \state_reg[1]  ( .D(next_state[1]), .CLK(clk), .RSTB(n180), .Q(
        state[1]), .QN(n99) );
  SDFFARX1_RVT no_wb_cycle_reg ( .D(n154), .SI(1'b0), .SE(wb_write_go), .CLK(
        clk), .RSTB(n191), .Q(no_wb_cycle), .QN(n490) );
  DFFARX1_RVT tmr2_done_reg ( .D(N164), .CLK(clk), .RSTB(n180), .Q(tmr2_done), 
        .QN(n54) );
  DFFARX1_RVT \state_reg[23]  ( .D(next_state[23]), .CLK(clk), .RSTB(n190), 
        .Q(state[23]), .QN(n66) );
  DFFARX1_RVT \state_reg[25]  ( .D(next_state[25]), .CLK(clk), .RSTB(n190), 
        .Q(state[25]), .QN(n63) );
  NAND3X0_RVT U3 ( .A1(n587), .A2(n601), .A3(n575), .Y(n542) );
  INVX1_RVT U4 ( .A(n542), .Y(n378) );
  OA222X1_RVT U5 ( .A1(n648), .A2(n542), .A3(n633), .A4(n558), .A5(n651), .A6(
        n552), .Y(n570) );
  OA22X1_RVT U6 ( .A1(n541), .A2(n542), .A3(n543), .A4(n544), .Y(n540) );
  OA222X1_RVT U7 ( .A1(n542), .A2(n857), .A3(n3), .A4(n380), .A5(n854), .A6(
        n567), .Y(n581) );
  INVX1_RVT U8 ( .A(n7), .Y(n1) );
  INVX0_RVT U9 ( .A(n1), .Y(n2) );
  INVX1_RVT U10 ( .A(wb_wait), .Y(n76) );
  AO22X1_RVT U11 ( .A1(wr_cycle), .A2(state[14]), .A3(n516), .A4(n911), .Y(
        n618) );
  NAND3X0_RVT U12 ( .A1(n656), .A2(n576), .A3(n121), .Y(n129) );
  NAND3X0_RVT U13 ( .A1(dv), .A2(n490), .A3(n503), .Y(n502) );
  OA21X1_RVT U14 ( .A1(n588), .A2(n69), .A3(tmr2_done), .Y(n350) );
  OA21X1_RVT U15 ( .A1(n874), .A2(tmr2_done), .A3(n153), .Y(n148) );
  OA22X1_RVT U16 ( .A1(tmr2_done), .A2(n716), .A3(n199), .A4(n886), .Y(n682)
         );
  AND4X1_RVT U17 ( .A1(n544), .A2(n562), .A3(n590), .A4(n549), .Y(n589) );
  NAND4X0_RVT U18 ( .A1(state[35]), .A2(n908), .A3(n421), .A4(n629), .Y(n628)
         );
  OA22X1_RVT U19 ( .A1(n508), .A2(n844), .A3(n787), .A4(n512), .Y(n706) );
  OA21X1_RVT U20 ( .A1(n60), .A2(n592), .A3(n787), .Y(cnt_next) );
  AO22X1_RVT U21 ( .A1(state[38]), .A2(n104), .A3(csc[5]), .A4(n145), .Y(
        next_state[38]) );
  AO22X1_RVT U22 ( .A1(state[41]), .A2(n94), .A3(n797), .A4(n145), .Y(
        next_state[41]) );
  AO21X1_RVT U23 ( .A1(wb_first), .A2(wb_stb_i), .A3(n757), .Y(n495) );
  AO21X1_RVT U24 ( .A1(wb_we_i), .A2(wb_stb_i), .A3(n152), .Y(n391) );
  AND3X1_RVT U25 ( .A1(wb_stb_i), .A2(cs_le), .A3(wb_cyc_i), .Y(N68) );
  AND3X1_RVT U26 ( .A1(wb_stb_i), .A2(lookup_ready1), .A3(wb_cyc_i), .Y(N69)
         );
  NAND2X0_RVT U27 ( .A1(n637), .A2(n638), .Y(dv) );
  AND4X1_RVT U28 ( .A1(n677), .A2(mc_c_oe), .A3(n791), .A4(n897), .Y(n3) );
  AND2X1_RVT U29 ( .A1(n684), .A2(n430), .Y(n4) );
  AND4X1_RVT U30 ( .A1(n380), .A2(n587), .A3(n579), .A4(n589), .Y(n7) );
  INVX1_RVT U31 ( .A(wb_read_go), .Y(n154) );
  INVX1_RVT U32 ( .A(n151), .Y(n152) );
  OR2X1_RVT U33 ( .A1(n798), .A2(state[32]), .Y(n18) );
  INVX1_RVT U34 ( .A(n267), .Y(n464) );
  AND4X1_RVT U35 ( .A1(tmr2_done), .A2(n116), .A3(n117), .A4(n889), .Y(n115)
         );
  INVX1_RVT U36 ( .A(n525), .Y(n619) );
  INVX1_RVT U37 ( .A(n632), .Y(n420) );
  INVX1_RVT U38 ( .A(n94), .Y(n351) );
  INVX1_RVT U39 ( .A(n394), .Y(n863) );
  INVX1_RVT U40 ( .A(n567), .Y(n385) );
  INVX1_RVT U41 ( .A(n102), .Y(n474) );
  OA21X1_RVT U42 ( .A1(n547), .A2(n544), .A3(n562), .Y(n550) );
  INVX1_RVT U43 ( .A(n549), .Y(n373) );
  INVX1_RVT U44 ( .A(n426), .Y(n678) );
  INVX1_RVT U45 ( .A(n169), .Y(n593) );
  INVX1_RVT U46 ( .A(n360), .Y(n853) );
  INVX1_RVT U47 ( .A(n50), .Y(n345) );
  INVX1_RVT U48 ( .A(n402), .Y(n533) );
  AND2X1_RVT U49 ( .A1(n623), .A2(n423), .Y(n521) );
  INVX1_RVT U50 ( .A(n430), .Y(n617) );
  AND3X1_RVT U51 ( .A1(n271), .A2(n199), .A3(n171), .Y(n215) );
  AND3X1_RVT U52 ( .A1(n552), .A2(n610), .A3(n399), .Y(n591) );
  INVX1_RVT U53 ( .A(csc[5]), .Y(n862) );
  INVX1_RVT U54 ( .A(n605), .Y(n399) );
  NAND3X0_RVT U55 ( .A1(n587), .A2(n766), .A3(n575), .Y(n602) );
  NAND3X0_RVT U56 ( .A1(n567), .A2(n542), .A3(n88), .Y(n566) );
  INVX1_RVT U57 ( .A(n496), .Y(mem_ack) );
  INVX1_RVT U58 ( .A(n26), .Y(n140) );
  INVX1_RVT U59 ( .A(n26), .Y(n143) );
  AO21X1_RVT U60 ( .A1(n147), .A2(n343), .A3(n408), .Y(n177) );
  INVX1_RVT U61 ( .A(n86), .Y(n408) );
  AND2X1_RVT U62 ( .A1(n135), .A2(n14), .Y(n91) );
  NAND3X0_RVT U63 ( .A1(n610), .A2(n605), .A3(n88), .Y(n549) );
  NAND4X0_RVT U64 ( .A1(n348), .A2(n135), .A3(n271), .A4(n65), .Y(n269) );
  INVX1_RVT U65 ( .A(n273), .Y(n348) );
  OAI22X1_RVT U66 ( .A1(n563), .A2(n643), .A3(n564), .A4(n636), .Y(n547) );
  AND2X1_RVT U67 ( .A1(n643), .A2(n563), .Y(n564) );
  INVX1_RVT U68 ( .A(n461), .Y(n651) );
  NAND2X0_RVT U69 ( .A1(n657), .A2(n547), .Y(n559) );
  INVX1_RVT U70 ( .A(n320), .Y(n506) );
  INVX1_RVT U71 ( .A(n410), .Y(n522) );
  INVX1_RVT U72 ( .A(n463), .Y(n679) );
  AND2X1_RVT U73 ( .A1(n3), .A2(n855), .Y(n573) );
  AND2X1_RVT U74 ( .A1(n516), .A2(n201), .Y(n298) );
  INVX1_RVT U75 ( .A(n594), .Y(n595) );
  OR2X1_RVT U76 ( .A1(n488), .A2(n864), .Y(n426) );
  INVX1_RVT U77 ( .A(n600), .Y(n610) );
  NAND2X0_RVT U78 ( .A1(n854), .A2(n720), .Y(n360) );
  NAND3X0_RVT U79 ( .A1(n863), .A2(n76), .A3(n401), .Y(n27) );
  NAND2X0_RVT U80 ( .A1(n595), .A2(n766), .Y(n169) );
  NAND3X0_RVT U81 ( .A1(n447), .A2(n679), .A3(n696), .Y(n402) );
  AND2X1_RVT U82 ( .A1(n676), .A2(n311), .Y(n693) );
  NAND4X0_RVT U83 ( .A1(n403), .A2(n107), .A3(n645), .A4(n394), .Y(n694) );
  INVX1_RVT U84 ( .A(n405), .Y(n534) );
  INVX1_RVT U85 ( .A(n592), .Y(n512) );
  INVX1_RVT U86 ( .A(n667), .Y(n599) );
  NAND2X0_RVT U87 ( .A1(n360), .A2(n866), .Y(n665) );
  AND4X1_RVT U88 ( .A1(n684), .A2(n617), .A3(n519), .A4(n423), .Y(n517) );
  AND4X1_RVT U89 ( .A1(n189), .A2(n599), .A3(n709), .A4(n653), .Y(n689) );
  INVX1_RVT U90 ( .A(n622), .Y(n494) );
  INVX1_RVT U91 ( .A(n251), .Y(n847) );
  INVX1_RVT U92 ( .A(n78), .Y(n849) );
  INVX1_RVT U93 ( .A(n139), .Y(n709) );
  INVX1_RVT U94 ( .A(n259), .Y(n504) );
  INVX1_RVT U95 ( .A(n38), .Y(n137) );
  INVX1_RVT U96 ( .A(n187), .Y(n412) );
  INVX1_RVT U97 ( .A(n798), .Y(n845) );
  INVX1_RVT U98 ( .A(n340), .Y(n700) );
  INVX1_RVT U99 ( .A(n56), .Y(n884) );
  INVX1_RVT U100 ( .A(n196), .Y(n170) );
  INVX1_RVT U101 ( .A(n196), .Y(n188) );
  INVX1_RVT U102 ( .A(n196), .Y(n180) );
  INVX1_RVT U103 ( .A(n196), .Y(n190) );
  INVX1_RVT U104 ( .A(n196), .Y(n184) );
  INVX1_RVT U105 ( .A(n196), .Y(n183) );
  INVX1_RVT U106 ( .A(n196), .Y(n166) );
  INVX1_RVT U107 ( .A(n196), .Y(n174) );
  INVX1_RVT U108 ( .A(n196), .Y(n191) );
  OA21X1_RVT U109 ( .A1(n602), .A2(n778), .A3(n560), .Y(n579) );
  OA21X1_RVT U110 ( .A1(n623), .A2(n549), .A3(n579), .Y(n568) );
  OA22X1_RVT U111 ( .A1(n671), .A2(n550), .A3(n646), .A4(n88), .Y(n538) );
  AOI22X1_RVT U112 ( .A1(n446), .A2(n385), .A3(n445), .A4(n373), .Y(n539) );
  OA22X1_RVT U113 ( .A1(n617), .A2(n549), .A3(n88), .A4(n859), .Y(n553) );
  AND3X1_RVT U114 ( .A1(n15), .A2(n42), .A3(n111), .Y(n171) );
  AND3X1_RVT U115 ( .A1(csc[2]), .A2(csc[1]), .A3(n401), .Y(n609) );
  OA21X1_RVT U116 ( .A1(n256), .A2(n199), .A3(n97), .Y(n255) );
  AND3X1_RVT U117 ( .A1(n779), .A2(n888), .A3(n258), .Y(n256) );
  NAND3X0_RVT U118 ( .A1(n798), .A2(n778), .A3(n376), .Y(n560) );
  AND2X1_RVT U119 ( .A1(n39), .A2(n40), .Y(n341) );
  NAND3X0_RVT U120 ( .A1(n376), .A2(n375), .A3(n596), .Y(n590) );
  AND3X1_RVT U121 ( .A1(n477), .A2(n778), .A3(n845), .Y(n596) );
  NAND2X0_RVT U122 ( .A1(n163), .A2(n282), .Y(n281) );
  NAND3X0_RVT U123 ( .A1(n224), .A2(n597), .A3(n766), .Y(n282) );
  OAI21X1_RVT U124 ( .A1(n850), .A2(n349), .A3(n234), .Y(next_state[27]) );
  OAI21X1_RVT U125 ( .A1(n851), .A2(n349), .A3(n285), .Y(next_state[18]) );
  NAND2X0_RVT U126 ( .A1(n887), .A2(n70), .Y(n605) );
  NAND2X0_RVT U127 ( .A1(n52), .A2(n100), .Y(n353) );
  NAND3X0_RVT U128 ( .A1(n530), .A2(n889), .A3(n529), .Y(n26) );
  INVX1_RVT U129 ( .A(n330), .Y(n508) );
  INVX1_RVT U130 ( .A(n354), .Y(n453) );
  INVX1_RVT U131 ( .A(n205), .Y(n467) );
  INVX1_RVT U132 ( .A(n502), .Y(n436) );
  XNOR3X1_RVT U133 ( .A1(n449), .A2(n636), .A3(n563), .Y(n584) );
  NAND2X0_RVT U134 ( .A1(n156), .A2(n500), .Y(n357) );
  AND3X1_RVT U135 ( .A1(n44), .A2(n43), .A3(n19), .Y(n111) );
  INVX1_RVT U136 ( .A(n5), .Y(n482) );
  AND3X1_RVT U137 ( .A1(n21), .A2(n36), .A3(n135), .Y(n81) );
  AND3X1_RVT U138 ( .A1(n326), .A2(n42), .A3(n111), .Y(n272) );
  AND3X1_RVT U139 ( .A1(n72), .A2(n24), .A3(n98), .Y(n105) );
  AND3X1_RVT U140 ( .A1(n19), .A2(n42), .A3(n15), .Y(n300) );
  OA22X1_RVT U141 ( .A1(n405), .A2(n859), .A3(n407), .A4(n854), .Y(n416) );
  INVX1_RVT U142 ( .A(n501), .Y(n440) );
  NAND3X0_RVT U143 ( .A1(n536), .A2(n548), .A3(n436), .Y(n387) );
  AO21X1_RVT U144 ( .A1(n178), .A2(n535), .A3(n177), .Y(n273) );
  AO21X1_RVT U145 ( .A1(n365), .A2(n503), .A3(n421), .Y(n496) );
  INVX1_RVT U146 ( .A(n532), .Y(n365) );
  AND2X1_RVT U147 ( .A1(n82), .A2(n134), .Y(n40) );
  OA22X1_RVT U148 ( .A1(n435), .A2(n545), .A3(n671), .A4(n455), .Y(n543) );
  NAND2X0_RVT U149 ( .A1(n547), .A2(n455), .Y(n545) );
  NAND3X0_RVT U150 ( .A1(n719), .A2(n155), .A3(n82), .Y(next_state[3]) );
  AO21X1_RVT U151 ( .A1(n81), .A2(n134), .A3(n728), .Y(n155) );
  NAND3X0_RVT U152 ( .A1(n318), .A2(n319), .A3(n39), .Y(next_state[12]) );
  INVX1_RVT U153 ( .A(n459), .Y(n636) );
  OR2X1_RVT U154 ( .A1(n8), .A2(n12), .Y(n19) );
  OR2X1_RVT U155 ( .A1(tms[3]), .A2(n132), .Y(n445) );
  OR2X1_RVT U156 ( .A1(tms[12]), .A2(n137), .Y(n461) );
  OR2X1_RVT U157 ( .A1(tms[11]), .A2(n132), .Y(n446) );
  OR2X1_RVT U158 ( .A1(tms[6]), .A2(n137), .Y(n456) );
  INVX1_RVT U159 ( .A(n431), .Y(n635) );
  NAND4X0_RVT U160 ( .A1(n88), .A2(n640), .A3(n641), .A4(n512), .Y(data_oe_d)
         );
  AND3X1_RVT U161 ( .A1(n745), .A2(n881), .A3(n644), .Y(n642) );
  OR2X1_RVT U162 ( .A1(n492), .A2(n645), .Y(n644) );
  NAND4X0_RVT U163 ( .A1(n401), .A2(n107), .A3(csc[1]), .A4(n864), .Y(n90) );
  NAND4X0_RVT U164 ( .A1(n91), .A2(n82), .A3(n134), .A4(n36), .Y(n51) );
  INVX1_RVT U165 ( .A(n437), .Y(n634) );
  OR3X2_RVT U166 ( .A1(n668), .A2(n669), .A3(n670), .Y(cmd[3]) );
  NAND3X0_RVT U167 ( .A1(n128), .A2(n486), .A3(n682), .Y(n668) );
  NAND4X0_RVT U168 ( .A1(n871), .A2(n711), .A3(n672), .A4(n673), .Y(n670) );
  NAND4X0_RVT U169 ( .A1(n884), .A2(n640), .A3(n587), .A4(n593), .Y(n669) );
  NAND4X0_RVT U170 ( .A1(n414), .A2(n415), .A3(n416), .A4(n417), .Y(n805) );
  OA222X1_RVT U171 ( .A1(n657), .A2(n404), .A3(n3), .A4(n400), .A5(n633), .A6(
        n402), .Y(n417) );
  AOI22X1_RVT U172 ( .A1(n522), .A2(n423), .A3(N127), .A4(n411), .Y(n415) );
  OA22X1_RVT U173 ( .A1(n679), .A2(n678), .A3(n634), .A4(n426), .Y(n414) );
  NAND2X0_RVT U174 ( .A1(n444), .A2(n433), .Y(n563) );
  AND4X1_RVT U175 ( .A1(n112), .A2(n25), .A3(n24), .A4(n361), .Y(n41) );
  AND2X1_RVT U176 ( .A1(n23), .A2(n72), .Y(n361) );
  NAND2X0_RVT U177 ( .A1(n501), .A2(n502), .Y(n390) );
  AND4X1_RVT U178 ( .A1(n272), .A2(n21), .A3(n322), .A4(n41), .Y(n315) );
  AND4X1_RVT U179 ( .A1(n98), .A2(n23), .A3(n25), .A4(n42), .Y(n73) );
  AND4X1_RVT U180 ( .A1(n111), .A2(n21), .A3(n20), .A4(n112), .Y(n98) );
  INVX1_RVT U181 ( .A(csc_10), .Y(n866) );
  INVX1_RVT U182 ( .A(tms[9]), .Y(n854) );
  INVX1_RVT U183 ( .A(rfr_ack_d), .Y(n677) );
  INVX1_RVT U184 ( .A(tms[8]), .Y(n855) );
  AND3X1_RVT U185 ( .A1(n42), .A2(n43), .A3(n44), .Y(n13) );
  OA22X1_RVT U186 ( .A1(n513), .A2(n200), .A3(n201), .A4(n202), .Y(n198) );
  AO21X1_RVT U187 ( .A1(n203), .A2(n204), .A3(n205), .Y(n200) );
  NAND3X0_RVT U188 ( .A1(n474), .A2(n500), .A3(n208), .Y(n204) );
  AND3X1_RVT U189 ( .A1(n65), .A2(n317), .A3(n271), .Y(n21) );
  INVX1_RVT U190 ( .A(n455), .Y(n657) );
  AND3X1_RVT U191 ( .A1(n426), .A2(n577), .A3(n462), .Y(n447) );
  INVX1_RVT U192 ( .A(n316), .Y(n422) );
  INVX1_RVT U193 ( .A(n433), .Y(n646) );
  OA21X1_RVT U194 ( .A1(n518), .A2(n593), .A3(n165), .Y(n65) );
  NAND4X0_RVT U195 ( .A1(n420), .A2(n401), .A3(csc[1]), .A4(n864), .Y(n122) );
  INVX1_RVT U196 ( .A(n435), .Y(n671) );
  NAND2X0_RVT U197 ( .A1(n508), .A2(n896), .Y(n372) );
  NAND2X0_RVT U198 ( .A1(n488), .A2(n889), .Y(n463) );
  NAND3X0_RVT U199 ( .A1(n679), .A2(n586), .A3(n485), .Y(n410) );
  INVX1_RVT U200 ( .A(n486), .Y(n586) );
  NAND3X0_RVT U201 ( .A1(n209), .A2(n210), .A3(n453), .Y(n197) );
  NAND2X0_RVT U202 ( .A1(wb_cycle), .A2(n506), .Y(n201) );
  OR2X1_RVT U203 ( .A1(n205), .A2(n358), .Y(n311) );
  OR2X1_RVT U204 ( .A1(tms[5]), .A2(n137), .Y(n454) );
  OR2X1_RVT U205 ( .A1(tms[4]), .A2(n137), .Y(n451) );
  XOR2X1_RVT U206 ( .A1(n444), .A2(n646), .Y(n572) );
  OR2X1_RVT U207 ( .A1(tms[7]), .A2(n132), .Y(n483) );
  OR2X1_RVT U208 ( .A1(n132), .A2(tms[10]), .Y(n439) );
  AND4X1_RVT U209 ( .A1(n485), .A2(n679), .A3(n486), .A4(n487), .Y(n411) );
  INVX1_RVT U210 ( .A(n413), .Y(n633) );
  NAND4X0_RVT U211 ( .A1(n395), .A2(n396), .A3(n397), .A4(n398), .Y(n804) );
  OA22X1_RVT U212 ( .A1(n407), .A2(n855), .A3(n623), .A4(n410), .Y(n396) );
  OA22X1_RVT U213 ( .A1(n643), .A2(n404), .A3(n405), .A4(n860), .Y(n397) );
  OA22X1_RVT U214 ( .A1(n3), .A2(n400), .A3(n636), .A4(n402), .Y(n398) );
  INVX1_RVT U215 ( .A(n443), .Y(n648) );
  AND4X1_RVT U216 ( .A1(n447), .A2(n448), .A3(n876), .A4(n727), .Y(n485) );
  NAND2X0_RVT U217 ( .A1(n218), .A2(n224), .Y(n594) );
  NAND2X0_RVT U218 ( .A1(n898), .A2(n64), .Y(n600) );
  NAND2X0_RVT U219 ( .A1(n3), .A2(n857), .Y(n452) );
  AND4X1_RVT U220 ( .A1(n199), .A2(n302), .A3(n44), .A4(n597), .Y(n301) );
  NAND2X0_RVT U221 ( .A1(n163), .A2(n303), .Y(n302) );
  NAND3X0_RVT U222 ( .A1(n304), .A2(csc_10), .A3(n766), .Y(n303) );
  AND4X1_RVT U223 ( .A1(n674), .A2(n675), .A3(n122), .A4(n844), .Y(n673) );
  AO21X1_RVT U224 ( .A1(n311), .A2(n676), .A3(n513), .Y(n675) );
  OR3X2_RVT U225 ( .A1(csc[3]), .A2(n99), .A3(n865), .Y(n488) );
  OR3X2_RVT U226 ( .A1(n427), .A2(n428), .A3(n429), .Y(n806) );
  AO22X1_RVT U227 ( .A1(n534), .A2(n433), .A3(n527), .A4(n435), .Y(n428) );
  AO22X1_RVT U228 ( .A1(n533), .A2(n437), .A3(n523), .A4(n439), .Y(n427) );
  AND4X1_RVT U229 ( .A1(n23), .A2(n24), .A3(n25), .A4(n76), .Y(n22) );
  INVX1_RVT U230 ( .A(n407), .Y(n523) );
  AND3X1_RVT U231 ( .A1(n741), .A2(n778), .A3(n788), .Y(n653) );
  AND3X1_RVT U232 ( .A1(n161), .A2(n511), .A3(n117), .Y(n289) );
  AND3X1_RVT U233 ( .A1(n679), .A2(n448), .A3(n447), .Y(n460) );
  AND3X1_RVT U234 ( .A1(n337), .A2(n199), .A3(n65), .Y(n31) );
  OA22X1_RVT U235 ( .A1(n890), .A2(n161), .A3(n152), .A4(n484), .Y(n37) );
  INVX1_RVT U236 ( .A(n404), .Y(n527) );
  AND2X1_RVT U237 ( .A1(n407), .A2(n405), .Y(n400) );
  OAI21X1_RVT U238 ( .A1(n506), .A2(wb_cycle), .A3(n310), .Y(n307) );
  INVX1_RVT U239 ( .A(n25), .Y(n473) );
  AOI21X1_RVT U240 ( .A1(n163), .A2(n186), .A3(n187), .Y(n114) );
  NAND4X0_RVT U241 ( .A1(n593), .A2(n189), .A3(n844), .A4(n761), .Y(n186) );
  NAND2X0_RVT U242 ( .A1(wb_cycle), .A2(n360), .Y(n676) );
  INVX1_RVT U243 ( .A(n530), .Y(n684) );
  INVX1_RVT U244 ( .A(n449), .Y(n643) );
  AND3X1_RVT U245 ( .A1(n393), .A2(n692), .A3(n704), .Y(n664) );
  AND3X1_RVT U246 ( .A1(n485), .A2(n486), .A3(n695), .Y(N164) );
  INVX1_RVT U247 ( .A(n487), .Y(n695) );
  AO21X1_RVT U248 ( .A1(n462), .A2(n577), .A3(n463), .Y(n405) );
  OA21X1_RVT U249 ( .A1(n518), .A2(n189), .A3(n337), .Y(n271) );
  NAND3X0_RVT U250 ( .A1(n470), .A2(n908), .A3(n468), .Y(n622) );
  NAND2X0_RVT U251 ( .A1(n513), .A2(n844), .Y(n592) );
  NAND3X0_RVT U252 ( .A1(n262), .A2(n765), .A3(n43), .Y(n667) );
  NAND4X0_RVT U253 ( .A1(n512), .A2(n664), .A3(n683), .A4(n599), .Y(cmd[2]) );
  OA21X1_RVT U254 ( .A1(n795), .A2(n484), .A3(n890), .Y(n683) );
  INVX1_RVT U255 ( .A(n448), .Y(n696) );
  NAND4X0_RVT U256 ( .A1(n766), .A2(n664), .A3(n189), .A4(n871), .Y(n663) );
  INVX1_RVT U257 ( .A(n195), .Y(n611) );
  NAND2X0_RVT U258 ( .A1(n873), .A2(n710), .Y(n159) );
  NAND2X0_RVT U259 ( .A1(n223), .A2(n224), .Y(n220) );
  NAND2X0_RVT U260 ( .A1(n152), .A2(wb_cycle), .Y(n310) );
  AND4X1_RVT U261 ( .A1(n700), .A2(n620), .A3(n624), .A4(n721), .Y(n704) );
  AND4X1_RVT U262 ( .A1(n99), .A2(n733), .A3(n741), .A4(n778), .Y(n721) );
  AND3X1_RVT U263 ( .A1(n691), .A2(n843), .A3(n692), .Y(n324) );
  AND3X1_RVT U264 ( .A1(n779), .A2(n870), .A3(n729), .Y(n691) );
  AND3X1_RVT U265 ( .A1(n868), .A2(n888), .A3(n869), .Y(n729) );
  AND3X1_RVT U266 ( .A1(n788), .A2(n768), .A3(n893), .Y(n223) );
  INVX1_RVT U267 ( .A(n478), .Y(n514) );
  INVX1_RVT U268 ( .A(n601), .Y(n766) );
  AND2X1_RVT U269 ( .A1(n324), .A2(n886), .Y(n276) );
  AND2X1_RVT U270 ( .A1(n304), .A2(n597), .Y(n218) );
  INVX1_RVT U271 ( .A(n38), .Y(n132) );
  AND2X1_RVT U272 ( .A1(csc[4]), .A2(n862), .Y(n796) );
  NAND3X0_RVT U273 ( .A1(n252), .A2(n908), .A3(n565), .Y(n285) );
  INVX1_RVT U274 ( .A(n468), .Y(n565) );
  NOR2X0_RVT U275 ( .A1(csc[4]), .A2(csc[5]), .Y(n797) );
  NAND4X0_RVT U276 ( .A1(n252), .A2(n491), .A3(n468), .A4(n908), .Y(n234) );
  INVX1_RVT U277 ( .A(n470), .Y(n491) );
  NAND4X0_RVT U278 ( .A1(n285), .A2(n851), .A3(n870), .A4(n768), .Y(lmr_ack_d)
         );
  NAND2X0_RVT U279 ( .A1(n849), .A2(n848), .Y(n251) );
  NAND4X0_RVT U280 ( .A1(n906), .A2(n745), .A3(n887), .A4(n898), .Y(n725) );
  NAND4X0_RVT U281 ( .A1(n510), .A2(n690), .A3(n711), .A4(n875), .Y(n723) );
  NAND4X0_RVT U282 ( .A1(n486), .A2(n877), .A3(n719), .A4(n10), .Y(n724) );
  NAND2X0_RVT U283 ( .A1(n850), .A2(n851), .Y(n78) );
  AND4X1_RVT U284 ( .A1(n700), .A2(n871), .A3(n624), .A4(n625), .Y(n371) );
  AND3X1_RVT U285 ( .A1(n847), .A2(n512), .A3(n627), .Y(n625) );
  AND4X1_RVT U286 ( .A1(n691), .A2(n597), .A3(n688), .A4(n722), .Y(n624) );
  AND4X1_RVT U287 ( .A1(n577), .A2(n761), .A3(n885), .A4(n886), .Y(n722) );
  AND3X1_RVT U288 ( .A1(n889), .A2(n888), .A3(n875), .Y(n672) );
  AND2X1_RVT U289 ( .A1(n795), .A2(n890), .Y(n189) );
  AND2X1_RVT U290 ( .A1(n890), .A2(n5), .Y(n587) );
  AND3X1_RVT U291 ( .A1(n117), .A2(n518), .A3(n412), .Y(n14) );
  INVX1_RVT U292 ( .A(n117), .Y(n498) );
  NAND3X0_RVT U293 ( .A1(n893), .A2(n768), .A3(n659), .Y(bank_clr_all) );
  NAND3X0_RVT U294 ( .A1(n716), .A2(n872), .A3(n128), .Y(n139) );
  INVX1_RVT U295 ( .A(n202), .Y(n516) );
  NAND2X0_RVT U296 ( .A1(n709), .A2(n702), .Y(n340) );
  NAND2X0_RVT U297 ( .A1(n895), .A2(n846), .Y(n798) );
  NAND2X0_RVT U298 ( .A1(n885), .A2(n887), .Y(n56) );
  NAND2X0_RVT U299 ( .A1(n765), .A2(n10), .Y(n259) );
  NAND2X0_RVT U300 ( .A1(n317), .A2(n165), .Y(n187) );
  AND3X1_RVT U301 ( .A1(n716), .A2(n872), .A3(n702), .Y(n162) );
  AND2X1_RVT U302 ( .A1(n881), .A2(n843), .Y(n393) );
  AND3X1_RVT U303 ( .A1(n57), .A2(n511), .A3(n845), .Y(n620) );
  INVX1_RVT U304 ( .A(n615), .Y(n719) );
  INVX1_RVT U305 ( .A(n313), .Y(n344) );
  INVX1_RVT U306 ( .A(n257), .Y(n265) );
  INVX1_RVT U307 ( .A(n217), .Y(n231) );
  INVX1_RVT U308 ( .A(n93), .Y(n877) );
  AND4X1_RVT U309 ( .A1(n189), .A2(n867), .A3(n393), .A4(n715), .Y(n627) );
  INVX1_RVT U310 ( .A(init_ack), .Y(n867) );
  AND4X1_RVT U311 ( .A1(n598), .A2(n788), .A3(n768), .A4(n765), .Y(n715) );
  INVX1_RVT U312 ( .A(n479), .Y(n892) );
  NAND2X0_RVT U313 ( .A1(n128), .A2(n702), .Y(n110) );
  INVX1_RVT U314 ( .A(n212), .Y(n235) );
  INVX1_RVT U315 ( .A(n375), .Y(n604) );
  INVX1_RVT U316 ( .A(n909), .Y(n196) );
  NAND4X0_RVT U317 ( .A1(n906), .A2(n761), .A3(n889), .A4(n631), .Y(mc_adsc)
         );
  OA221X1_RVT U318 ( .A1(n632), .A2(n745), .A3(n156), .A4(n877), .A5(n122), 
        .Y(n631) );
  NAND2X0_RVT U319 ( .A1(n843), .A2(n5), .Y(row_sel) );
  NAND2X0_RVT U320 ( .A1(n252), .A2(n622), .Y(n649) );
  NOR3X0_RVT U321 ( .A1(n29), .A2(n35), .A3(n896), .Y(n639) );
  AO222X1_RVT U322 ( .A1(n420), .A2(n79), .A3(n93), .A4(n154), .A5(state[57]), 
        .A6(n94), .Y(next_state[57]) );
  AO221X1_RVT U323 ( .A1(state[39]), .A2(n157), .A3(state[46]), .A4(tmr2_done), 
        .A5(state[38]), .Y(next_state[39]) );
  NAND3X0_RVT U324 ( .A1(n153), .A2(n874), .A3(n158), .Y(n157) );
  NAND2X0_RVT U325 ( .A1(n159), .A2(n54), .Y(n158) );
  AO221X1_RVT U326 ( .A1(n119), .A2(state[56]), .A3(state[52]), .A4(n120), 
        .A5(n367), .Y(next_state[52]) );
  INVX1_RVT U327 ( .A(n122), .Y(n367) );
  AO221X1_RVT U328 ( .A1(state[15]), .A2(n120), .A3(n469), .A4(state[14]), 
        .A5(n306), .Y(next_state[15]) );
  INVX1_RVT U329 ( .A(n311), .Y(n469) );
  INVX1_RVT U330 ( .A(n249), .Y(n270) );
  NAND2X0_RVT U331 ( .A1(state[42]), .A2(n54), .Y(n146) );
  AND3X1_RVT U332 ( .A1(n171), .A2(n185), .A3(n114), .Y(n181) );
  NAND2X0_RVT U333 ( .A1(state[52]), .A2(n163), .Y(n185) );
  AO21X1_RVT U334 ( .A1(state[13]), .A2(n120), .A3(n316), .Y(next_state[13])
         );
  AO21X1_RVT U335 ( .A1(state[48]), .A2(n85), .A3(state[47]), .Y(
        next_state[48]) );
  AO21X1_RVT U336 ( .A1(state[46]), .A2(n130), .A3(state[45]), .Y(
        next_state[46]) );
  AO21X1_RVT U337 ( .A1(state[44]), .A2(n85), .A3(pack_le1_d), .Y(
        next_state[44]) );
  AO21X1_RVT U338 ( .A1(state[50]), .A2(n85), .A3(state[49]), .Y(
        next_state[50]) );
  AO21X1_RVT U339 ( .A1(state[42]), .A2(n85), .A3(state[41]), .Y(
        next_state[42]) );
  AO21X1_RVT U340 ( .A1(state[37]), .A2(n85), .A3(state[36]), .Y(
        next_state[37]) );
  AO21X1_RVT U341 ( .A1(state[32]), .A2(n58), .A3(state[31]), .Y(
        next_state[32]) );
  AO21X1_RVT U342 ( .A1(state[40]), .A2(n104), .A3(state[39]), .Y(
        next_state[40]) );
  AO21X1_RVT U343 ( .A1(state[62]), .A2(n62), .A3(n608), .Y(next_state[62]) );
  INVX1_RVT U344 ( .A(n64), .Y(n608) );
  NAND3X0_RVT U345 ( .A1(n65), .A2(n888), .A3(n355), .Y(n62) );
  INVX1_RVT U346 ( .A(n68), .Y(n355) );
  AO21X1_RVT U347 ( .A1(state[34]), .A2(n104), .A3(state[33]), .Y(
        next_state[34]) );
  AND2X1_RVT U348 ( .A1(state[37]), .A2(tmr2_done), .Y(n145) );
  AO22X1_RVT U349 ( .A1(resume_req_r), .A2(state[30]), .A3(state[31]), .A4(
        n179), .Y(next_state[31]) );
  NAND3X0_RVT U350 ( .A1(n116), .A2(n846), .A3(n181), .Y(n179) );
  AO22X1_RVT U351 ( .A1(state[19]), .A2(n199), .A3(state[20]), .A4(n253), .Y(
        next_state[20]) );
  NAND2X0_RVT U352 ( .A1(state[28]), .A2(n53), .Y(n254) );
  OR3X2_RVT U353 ( .A1(n192), .A2(n193), .A3(n194), .Y(next_state[2]) );
  AO22X1_RVT U354 ( .A1(n221), .A2(n763), .A3(n220), .A4(n161), .Y(n192) );
  NAND4X0_RVT U355 ( .A1(n195), .A2(n898), .A3(n197), .A4(n198), .Y(n194) );
  AO22X1_RVT U356 ( .A1(state[35]), .A2(n409), .A3(state[2]), .A4(n213), .Y(
        n193) );
  AO22X1_RVT U357 ( .A1(state[24]), .A2(n241), .A3(tmr_done), .A4(n242), .Y(
        next_state[24]) );
  AO21X1_RVT U358 ( .A1(n762), .A2(state[25]), .A3(state[23]), .Y(n242) );
  AO21X1_RVT U359 ( .A1(n869), .A2(n870), .A3(tmr_done), .Y(n243) );
  AO22X1_RVT U360 ( .A1(state[60]), .A2(mc_ack), .A3(state[61]), .A4(n58), .Y(
        next_state[61]) );
  AO22X1_RVT U361 ( .A1(state[63]), .A2(mc_ack), .A3(state[64]), .A4(n58), .Y(
        next_state[64]) );
  AO22X1_RVT U362 ( .A1(state[9]), .A2(n118), .A3(state[10]), .A4(n335), .Y(
        next_state[10]) );
  NAND4X0_RVT U363 ( .A1(n97), .A2(n31), .A3(n336), .A4(n890), .Y(n335) );
  NAND2X0_RVT U364 ( .A1(n780), .A2(state[6]), .Y(n336) );
  AO22X1_RVT U365 ( .A1(tmr2_done), .A2(n159), .A3(n145), .A4(n862), .Y(
        next_adr) );
  AO22X1_RVT U366 ( .A1(state[24]), .A2(n161), .A3(state[25]), .A4(n238), .Y(
        next_state[25]) );
  NAND4X0_RVT U367 ( .A1(n215), .A2(n239), .A3(n165), .A4(n67), .Y(n238) );
  AO21X1_RVT U368 ( .A1(n595), .A2(n223), .A3(n118), .Y(n239) );
  AO22X1_RVT U369 ( .A1(state[28]), .A2(tmr_done), .A3(state[29]), .A4(n225), 
        .Y(next_state[29]) );
  NAND2X0_RVT U370 ( .A1(state[19]), .A2(n53), .Y(n226) );
  AO22X1_RVT U371 ( .A1(state[42]), .A2(tmr2_done), .A3(pack_le1_d), .A4(n149), 
        .Y(next_state[43]) );
  NAND3X0_RVT U372 ( .A1(n150), .A2(n710), .A3(n148), .Y(n149) );
  NAND2X0_RVT U373 ( .A1(state[44]), .A2(n54), .Y(n150) );
  AO22X1_RVT U374 ( .A1(state[21]), .A2(n104), .A3(init_req), .A4(n252), .Y(
        next_state[21]) );
  AO22X1_RVT U375 ( .A1(state[17]), .A2(n286), .A3(tmr_done), .A4(n287), .Y(
        next_state[17]) );
  AO21X1_RVT U376 ( .A1(state[5]), .A2(rfr_ack), .A3(state[32]), .Y(n287) );
  NAND4X0_RVT U377 ( .A1(n288), .A2(n165), .A3(n171), .A4(n289), .Y(n286) );
  AO21X1_RVT U378 ( .A1(n504), .A2(n276), .A3(n199), .Y(n288) );
  OA22X1_RVT U379 ( .A1(n765), .A2(n655), .A3(n421), .A4(n262), .Y(n654) );
  AND2X1_RVT U380 ( .A1(state[12]), .A2(n353), .Y(n209) );
  OA21X1_RVT U381 ( .A1(n66), .A2(tmr_done), .A3(n245), .Y(n228) );
  AND2X1_RVT U382 ( .A1(state[0]), .A2(n58), .Y(next_state[0]) );
  NAND3X0_RVT U383 ( .A1(n165), .A2(n741), .A3(n167), .Y(next_state[35]) );
  NAND2X0_RVT U384 ( .A1(state[35]), .A2(n168), .Y(n167) );
  AO221X1_RVT U385 ( .A1(n163), .A2(n169), .A3(state[61]), .A4(n53), .A5(n68), 
        .Y(n168) );
  NAND4X0_RVT U386 ( .A1(n603), .A2(n215), .A3(n216), .A4(n778), .Y(n213) );
  INVX1_RVT U387 ( .A(n220), .Y(n603) );
  AO21X1_RVT U388 ( .A1(n218), .A2(n67), .A3(n161), .Y(n216) );
  AOI22X1_RVT U389 ( .A1(n419), .A2(state[12]), .A3(n352), .A4(n209), .Y(n39)
         );
  INVX1_RVT U390 ( .A(n353), .Y(n419) );
  AND2X1_RVT U391 ( .A1(n210), .A2(n354), .Y(n352) );
  NAND3X0_RVT U392 ( .A1(n75), .A2(n848), .A3(n77), .Y(n74) );
  NAND2X0_RVT U393 ( .A1(n780), .A2(n78), .Y(n75) );
  NAND2X0_RVT U394 ( .A1(state[27]), .A2(n163), .Y(n279) );
  NAND2X0_RVT U395 ( .A1(state[18]), .A2(n780), .Y(n230) );
  NAND3X0_RVT U396 ( .A1(n880), .A2(n793), .A3(state[54]), .Y(n637) );
  AO221X1_RVT U397 ( .A1(state[30]), .A2(n182), .A3(state[29]), .A4(n518), 
        .A5(n498), .Y(next_state[30]) );
  NAND2X0_RVT U398 ( .A1(n181), .A2(n871), .Y(n182) );
  INVX1_RVT U399 ( .A(n550), .Y(n383) );
  INVX1_RVT U400 ( .A(n244), .Y(n277) );
  INVX1_RVT U401 ( .A(n240), .Y(n280) );
  AO21X1_RVT U402 ( .A1(state[49]), .A2(n136), .A3(n696), .Y(next_state[49])
         );
  NAND3X0_RVT U403 ( .A1(n138), .A2(n702), .A3(n124), .Y(n136) );
  NAND2X0_RVT U404 ( .A1(n139), .A2(n54), .Y(n138) );
  NAND3X0_RVT U405 ( .A1(n97), .A2(n172), .A3(n173), .Y(n68) );
  NAND2X0_RVT U406 ( .A1(state[10]), .A2(n53), .Y(n172) );
  NAND2X0_RVT U407 ( .A1(n130), .A2(n160), .Y(n153) );
  NAND3X0_RVT U408 ( .A1(n124), .A2(n708), .A3(n162), .Y(n160) );
  NAND3X0_RVT U409 ( .A1(n248), .A2(n103), .A3(n250), .Y(n247) );
  NAND2X0_RVT U410 ( .A1(n780), .A2(n251), .Y(n248) );
  INVX1_RVT U411 ( .A(n246), .Y(n274) );
  OAI22X1_RVT U412 ( .A1(n794), .A2(n351), .A3(n54), .A4(n55), .Y(
        next_state[65]) );
  NAND2X0_RVT U413 ( .A1(n56), .A2(n418), .Y(n55) );
  NAND2X0_RVT U414 ( .A1(n420), .A2(n401), .Y(n164) );
  OR2X1_RVT U415 ( .A1(n53), .A2(n762), .Y(n237) );
  AO221X1_RVT U416 ( .A1(n436), .A2(n786), .A3(n440), .A4(n536), .A5(n389), 
        .Y(n379) );
  AO22X1_RVT U417 ( .A1(n389), .A2(n536), .A3(n786), .A4(n390), .Y(n802) );
  AO221X1_RVT U418 ( .A1(n436), .A2(n785), .A3(n440), .A4(n548), .A5(n379), 
        .Y(n384) );
  AND2X1_RVT U419 ( .A1(state[1]), .A2(n907), .Y(n252) );
  AO221X1_RVT U420 ( .A1(n377), .A2(n436), .A3(n379), .A4(n548), .A5(n438), 
        .Y(n800) );
  AND2X1_RVT U421 ( .A1(n785), .A2(n536), .Y(n377) );
  INVX1_RVT U422 ( .A(n382), .Y(n438) );
  AO22X1_RVT U423 ( .A1(n767), .A2(n161), .A3(cmd[3]), .A4(n477), .Y(n774) );
  AO221X1_RVT U424 ( .A1(n436), .A2(n784), .A3(n440), .A4(n551), .A5(n384), 
        .Y(n497) );
  AO221X1_RVT U425 ( .A1(n684), .A2(n619), .A3(n140), .A4(burst_cnt[0]), .A5(
        n524), .Y(n831) );
  AO22X1_RVT U426 ( .A1(page_size[0]), .A2(n4), .A3(N249), .A4(n366), .Y(n524)
         );
  AO221X1_RVT U427 ( .A1(n526), .A2(n684), .A3(n143), .A4(n505), .A5(n528), 
        .Y(n832) );
  AND2X1_RVT U428 ( .A1(n626), .A2(n519), .Y(n526) );
  AO22X1_RVT U429 ( .A1(page_size[1]), .A2(n4), .A3(N250), .A4(n366), .Y(n528)
         );
  AO22X1_RVT U430 ( .A1(n384), .A2(n551), .A3(n784), .A4(n386), .Y(n801) );
  NAND2X0_RVT U431 ( .A1(n382), .A2(n387), .Y(n386) );
  AO222X1_RVT U432 ( .A1(N132), .A2(n411), .A3(n522), .A4(n456), .A5(n678), 
        .A6(n435), .Y(n810) );
  AO221X1_RVT U433 ( .A1(state[14]), .A2(n312), .A3(n298), .A4(wb_write_go), 
        .A5(n466), .Y(next_state[14]) );
  NAND2X0_RVT U434 ( .A1(n315), .A2(n39), .Y(n312) );
  AO221X1_RVT U435 ( .A1(n199), .A2(n259), .A3(state[1]), .A4(n260), .A5(n261), 
        .Y(next_state[1]) );
  NAND3X0_RVT U436 ( .A1(n262), .A2(n906), .A3(n264), .Y(n261) );
  OR2X1_RVT U437 ( .A1(n268), .A2(n269), .Y(n260) );
  NAND2X0_RVT U438 ( .A1(n464), .A2(n266), .Y(n264) );
  AO221X1_RVT U439 ( .A1(state[9]), .A2(n6), .A3(n425), .A4(n8), .A5(n9), .Y(
        next_state[9]) );
  AND4X1_RVT U440 ( .A1(state[7]), .A2(tmr_done), .A3(n484), .A4(n52), .Y(n9)
         );
  INVX1_RVT U441 ( .A(n12), .Y(n425) );
  NAND4X0_RVT U442 ( .A1(n13), .A2(n14), .A3(n15), .A4(n12), .Y(n6) );
  AO221X1_RVT U443 ( .A1(state[16]), .A2(n290), .A3(state[15]), .A4(n118), 
        .A5(n291), .Y(next_state[16]) );
  AO22X1_RVT U444 ( .A1(n792), .A2(n221), .A3(n764), .A4(n209), .Y(n291) );
  NAND4X0_RVT U445 ( .A1(n271), .A2(n412), .A3(n300), .A4(n301), .Y(n290) );
  INVX1_RVT U446 ( .A(n210), .Y(n764) );
  AO221X1_RVT U447 ( .A1(state[54]), .A2(n106), .A3(state[53]), .A4(tmr2_done), 
        .A5(n473), .Y(next_state[54]) );
  NAND4X0_RVT U448 ( .A1(n105), .A2(n108), .A3(n23), .A4(n872), .Y(n106) );
  OAI21X1_RVT U449 ( .A1(n110), .A2(state[50]), .A3(n54), .Y(n108) );
  AO221X1_RVT U450 ( .A1(n16), .A2(row_same), .A3(state[8]), .A4(n17), .A5(
        n432), .Y(next_state[8]) );
  NOR2X0_RVT U451 ( .A1(n27), .A2(n28), .Y(n16) );
  INVX1_RVT U452 ( .A(n19), .Y(n432) );
  NAND4X0_RVT U453 ( .A1(n13), .A2(n20), .A3(n21), .A4(n22), .Y(n17) );
  AO221X1_RVT U454 ( .A1(state[55]), .A2(n101), .A3(state[54]), .A4(n102), 
        .A5(n471), .Y(next_state[55]) );
  INVX1_RVT U455 ( .A(n23), .Y(n471) );
  NAND3X0_RVT U456 ( .A1(n42), .A2(n878), .A3(n105), .Y(n101) );
  AO22X1_RVT U457 ( .A1(n782), .A2(n701), .A3(n147), .A4(n852), .Y(n205) );
  INVX1_RVT U458 ( .A(n701), .Y(n852) );
  NAND2X0_RVT U459 ( .A1(n787), .A2(n853), .Y(n701) );
  AND2X1_RVT U460 ( .A1(state[7]), .A2(csc_10), .Y(bank_set) );
  INVX1_RVT U461 ( .A(n305), .Y(n339) );
  INVX1_RVT U462 ( .A(n296), .Y(n333) );
  INVX1_RVT U463 ( .A(n309), .Y(n342) );
  INVX1_RVT U464 ( .A(n299), .Y(n334) );
  AO21X1_RVT U465 ( .A1(state[60]), .A2(n59), .A3(n388), .Y(next_state[60]) );
  INVX1_RVT U466 ( .A(n70), .Y(n388) );
  AO21X1_RVT U467 ( .A1(state[63]), .A2(n59), .A3(n370), .Y(next_state[63]) );
  INVX1_RVT U468 ( .A(tms[14]), .Y(n859) );
  OR2X1_RVT U469 ( .A1(tms[15]), .A2(n137), .Y(n433) );
  AO22X1_RVT U470 ( .A1(state[4]), .A2(n51), .A3(state[1]), .A4(n131), .Y(
        next_state[4]) );
  NAND2X0_RVT U471 ( .A1(n907), .A2(n133), .Y(n131) );
  AO22X1_RVT U472 ( .A1(state[6]), .A2(n118), .A3(state[7]), .A4(n30), .Y(
        next_state[7]) );
  NAND4X0_RVT U473 ( .A1(n31), .A2(n13), .A3(n32), .A4(n33), .Y(n30) );
  AND3X1_RVT U474 ( .A1(n39), .A2(n40), .A3(n41), .Y(n32) );
  AO22X1_RVT U475 ( .A1(state[50]), .A2(tmr2_done), .A3(state[51]), .A4(n123), 
        .Y(next_state[51]) );
  NAND4X0_RVT U476 ( .A1(n124), .A2(n125), .A3(n126), .A4(n716), .Y(n123) );
  NAND2X0_RVT U477 ( .A1(state[53]), .A2(n54), .Y(n125) );
  NAND2X0_RVT U478 ( .A1(n110), .A2(n54), .Y(n126) );
  AO22X1_RVT U479 ( .A1(n781), .A2(n406), .A3(state[33]), .A4(n175), .Y(
        next_state[33]) );
  INVX1_RVT U480 ( .A(n84), .Y(n406) );
  NAND4X0_RVT U481 ( .A1(n81), .A2(n82), .A3(n176), .A4(n84), .Y(n175) );
  NAND2X0_RVT U482 ( .A1(state[1]), .A2(n177), .Y(n176) );
  AO22X1_RVT U483 ( .A1(n497), .A2(n557), .A3(n499), .A4(n434), .Y(n821) );
  AND2X1_RVT U484 ( .A1(n783), .A2(n551), .Y(n499) );
  INVX1_RVT U485 ( .A(n387), .Y(n434) );
  NAND3X0_RVT U486 ( .A1(n100), .A2(n156), .A3(state[55]), .Y(n23) );
  AO21X1_RVT U487 ( .A1(n140), .A2(burst_cnt[3]), .A3(n517), .Y(n515) );
  INVX1_RVT U488 ( .A(n295), .Y(n325) );
  AO221X1_RVT U489 ( .A1(n521), .A2(n684), .A3(n143), .A4(burst_cnt[2]), .A5(
        state[52]), .Y(n520) );
  INVX1_RVT U490 ( .A(n292), .Y(n321) );
  NAND3X0_RVT U491 ( .A1(csc_10), .A2(tmr_done), .A3(state[16]), .Y(n262) );
  INVX1_RVT U492 ( .A(n90), .Y(n363) );
  NAND2X0_RVT U493 ( .A1(n91), .A2(n40), .Y(n87) );
  NAND3X0_RVT U494 ( .A1(n785), .A2(n786), .A3(n440), .Y(n382) );
  NAND3X0_RVT U495 ( .A1(n71), .A2(n72), .A3(n73), .Y(n59) );
  NAND2X0_RVT U496 ( .A1(n418), .A2(n54), .Y(n71) );
  NAND3X0_RVT U497 ( .A1(wb_wait_r), .A2(n52), .A3(state[7]), .Y(n326) );
  NAND3X0_RVT U498 ( .A1(n81), .A2(n82), .A3(n83), .Y(n80) );
  OA22X1_RVT U499 ( .A1(n781), .A2(n84), .A3(n99), .A4(n86), .Y(n83) );
  NAND3X0_RVT U500 ( .A1(n95), .A2(n72), .A3(n96), .Y(next_state[56]) );
  NAND3X0_RVT U501 ( .A1(state[55]), .A2(n156), .A3(n546), .Y(n95) );
  AO21X1_RVT U502 ( .A1(n73), .A2(n24), .A3(n883), .Y(n96) );
  INVX1_RVT U503 ( .A(n100), .Y(n546) );
  NAND4X0_RVT U504 ( .A1(n453), .A2(n612), .A3(n100), .A4(n156), .Y(n503) );
  NAND2X0_RVT U505 ( .A1(wb_we_i), .A2(wb_stb_i), .Y(n612) );
  NAND3X0_RVT U506 ( .A1(n424), .A2(n118), .A3(state[58]), .Y(n36) );
  OR2X1_RVT U507 ( .A1(tms[16]), .A2(n132), .Y(n459) );
  OR2X1_RVT U508 ( .A1(n441), .A2(n442), .Y(n807) );
  AO222X1_RVT U509 ( .A1(N129), .A2(n411), .A3(n527), .A4(n443), .A5(n678), 
        .A6(n444), .Y(n442) );
  AO222X1_RVT U510 ( .A1(n522), .A2(n445), .A3(n523), .A4(n446), .A5(n533), 
        .A6(n431), .Y(n441) );
  OR2X1_RVT U511 ( .A1(tms[18]), .A2(n137), .Y(n437) );
  OR2X1_RVT U512 ( .A1(tms[19]), .A2(n137), .Y(n431) );
  NAND4X0_RVT U513 ( .A1(n111), .A2(n15), .A3(n114), .A4(n115), .Y(n113) );
  NAND4X0_RVT U514 ( .A1(n173), .A2(n65), .A3(n300), .A4(n328), .Y(n327) );
  AND3X1_RVT U515 ( .A1(n43), .A2(n779), .A3(n329), .Y(n328) );
  OA22X1_RVT U516 ( .A1(n152), .A2(n330), .A3(tmr_done), .A4(n888), .Y(n329)
         );
  NOR2X0_RVT U517 ( .A1(n390), .A2(no_wb_cycle), .Y(n389) );
  NAND2X0_RVT U518 ( .A1(state[54]), .A2(n474), .Y(n25) );
  NAND3X0_RVT U519 ( .A1(n147), .A2(n156), .A3(state[56]), .Y(n72) );
  NAND3X0_RVT U520 ( .A1(n338), .A2(n76), .A3(state[8]), .Y(n12) );
  NAND4X0_RVT U521 ( .A1(n407), .A2(n410), .A3(n457), .A4(n458), .Y(n811) );
  AOI222X1_RVT U522 ( .A1(n678), .A2(n459), .A3(n527), .A4(n444), .A5(N125), 
        .A6(n411), .Y(n458) );
  NAND2X0_RVT U523 ( .A1(n534), .A2(n461), .Y(n457) );
  NAND4X0_RVT U524 ( .A1(n575), .A2(state[9]), .A3(n451), .A4(n5), .Y(n574) );
  NAND4X0_RVT U525 ( .A1(n575), .A2(state[9]), .A3(n454), .A4(n5), .Y(n585) );
  NAND2X0_RVT U526 ( .A1(state[1]), .A2(n273), .Y(n134) );
  OAI221X1_RVT U527 ( .A1(n868), .A2(n46), .A3(n359), .A4(n795), .A5(n48), .Y(
        next_state[6]) );
  NAND2X0_RVT U528 ( .A1(tmr_done), .A2(n791), .Y(n46) );
  NAND4X0_RVT U529 ( .A1(n345), .A2(state[1]), .A3(n28), .A4(n76), .Y(n48) );
  INVX1_RVT U530 ( .A(n51), .Y(n359) );
  AND4X1_RVT U531 ( .A1(n680), .A2(n577), .A3(n702), .A4(n761), .Y(n640) );
  NAND2X0_RVT U532 ( .A1(state[49]), .A2(n681), .Y(n680) );
  NAND4X0_RVT U533 ( .A1(n633), .A2(n634), .A3(n635), .A4(n636), .Y(n681) );
  NAND3X0_RVT U534 ( .A1(n616), .A2(n36), .A3(n422), .Y(n614) );
  NAND3X0_RVT U535 ( .A1(n320), .A2(n618), .A3(n107), .Y(n616) );
  OR3X2_RVT U536 ( .A1(dv), .A2(no_wb_cycle), .A3(n503), .Y(n501) );
  INVX1_RVT U537 ( .A(rfr_req), .Y(n907) );
  OA22X1_RVT U538 ( .A1(n791), .A2(n868), .A3(n907), .A4(n99), .Y(n713) );
  AO22X1_RVT U539 ( .A1(n767), .A2(n879), .A3(mc_adv), .A4(n477), .Y(n770) );
  AO222X1_RVT U540 ( .A1(N133), .A2(n411), .A3(n522), .A4(n483), .A5(n678), 
        .A6(n443), .Y(n817) );
  AND4X1_RVT U541 ( .A1(n741), .A2(n778), .A3(n733), .A4(n368), .Y(n775) );
  OA21X1_RVT U542 ( .A1(n369), .A2(n57), .A3(n371), .Y(n368) );
  OA22X1_RVT U543 ( .A1(n147), .A2(n372), .A3(n746), .A4(n507), .Y(n369) );
  INVX1_RVT U544 ( .A(n372), .Y(n507) );
  AO222X1_RVT U545 ( .A1(N131), .A2(n411), .A3(n522), .A4(n454), .A5(n678), 
        .A6(n455), .Y(n809) );
  AO221X1_RVT U546 ( .A1(N130), .A2(n411), .A3(n678), .A4(n449), .A5(n450), 
        .Y(n808) );
  AO22X1_RVT U547 ( .A1(n522), .A2(n451), .A3(n527), .A4(n452), .Y(n450) );
  INVX1_RVT U548 ( .A(n214), .Y(n233) );
  NAND3X0_RVT U549 ( .A1(tmr_done), .A2(n866), .A3(state[16]), .Y(n224) );
  NAND4X0_RVT U550 ( .A1(n627), .A2(n847), .A3(n703), .A4(n704), .Y(cke_d) );
  OA22X1_RVT U551 ( .A1(n896), .A2(n705), .A3(n782), .A4(n706), .Y(n703) );
  INVX1_RVT U552 ( .A(tms[13]), .Y(n860) );
  AND2X1_RVT U553 ( .A1(n495), .A2(n496), .Y(n820) );
  OR2X1_RVT U554 ( .A1(tms[22]), .A2(n132), .Y(n455) );
  NAND2X0_RVT U555 ( .A1(n878), .A2(n872), .Y(n630) );
  AND2X1_RVT U557 ( .A1(n152), .A2(n199), .Y(n666) );
  OR2X1_RVT U558 ( .A1(tms[23]), .A2(n137), .Y(n435) );
  OR2X1_RVT U559 ( .A1(tms[17]), .A2(n132), .Y(n413) );
  NAND2X0_RVT U560 ( .A1(n792), .A2(n866), .Y(n210) );
  INVX1_RVT U561 ( .A(tms[25]), .Y(n857) );
  OR2X1_RVT U562 ( .A1(tms[24]), .A2(n132), .Y(n443) );
  NOR2X0_RVT U563 ( .A1(tms[27]), .A2(n137), .Y(n541) );
  NAND4X0_RVT U564 ( .A1(n504), .A2(n275), .A3(n36), .A4(n728), .Y(n268) );
  AO21X1_RVT U565 ( .A1(n276), .A2(n511), .A3(tmr_done), .Y(n275) );
  NAND2X0_RVT U566 ( .A1(state[61]), .A2(n199), .Y(n64) );
  AOI22X1_RVT U567 ( .A1(N126), .A2(n411), .A3(n678), .A4(n413), .Y(n395) );
  INVX1_RVT U568 ( .A(n206), .Y(n227) );
  NAND2X0_RVT U569 ( .A1(state[48]), .A2(tmr2_done), .Y(n448) );
  NAND2X0_RVT U570 ( .A1(n293), .A2(n294), .Y(n221) );
  NAND4X0_RVT U571 ( .A1(n208), .A2(state[14]), .A3(n467), .A4(n506), .Y(n294)
         );
  NAND3X0_RVT U572 ( .A1(n297), .A2(n52), .A3(n298), .Y(n293) );
  NAND2X0_RVT U573 ( .A1(n588), .A2(n360), .Y(n203) );
  NAND3X0_RVT U574 ( .A1(n872), .A2(n888), .A3(n889), .Y(n607) );
  NAND4X0_RVT U575 ( .A1(n399), .A2(n128), .A3(n486), .A4(n122), .Y(n606) );
  AO22X1_RVT U576 ( .A1(wr_cycle), .A2(n99), .A3(n391), .A4(n392), .Y(n803) );
  NAND2X0_RVT U577 ( .A1(n393), .A2(n27), .Y(n392) );
  AO21X1_RVT U578 ( .A1(state[13]), .A2(n508), .A3(state[14]), .Y(n707) );
  NAND3X0_RVT U579 ( .A1(n910), .A2(wb_cycle), .A3(wb_cyc_i), .Y(n493) );
  INVX1_RVT U580 ( .A(not_mem_cyc), .Y(n910) );
  NAND4X0_RVT U581 ( .A1(n659), .A2(n660), .A3(n661), .A4(n662), .Y(cmd_a10)
         );
  NAND2X0_RVT U582 ( .A1(n667), .A2(cmd_a10_r), .Y(n660) );
  NAND2X0_RVT U583 ( .A1(n763), .A2(n663), .Y(n662) );
  AO22X1_RVT U584 ( .A1(n422), .A2(n512), .A3(n792), .A4(n665), .Y(n661) );
  NAND3X0_RVT U585 ( .A1(state[40]), .A2(n727), .A3(n460), .Y(n407) );
  NAND3X0_RVT U586 ( .A1(n418), .A2(n54), .A3(n56), .Y(n24) );
  OR2X1_RVT U587 ( .A1(tms[20]), .A2(n132), .Y(n444) );
  NAND4X0_RVT U588 ( .A1(n371), .A2(n620), .A3(n621), .A4(n165), .Y(mc_c_oe_d)
         );
  AO21X1_RVT U589 ( .A1(n781), .A2(n178), .A3(n99), .Y(n621) );
  NAND2X0_RVT U590 ( .A1(n54), .A2(n340), .Y(n42) );
  NAND2X0_RVT U591 ( .A1(n199), .A2(state[64]), .Y(n195) );
  NAND2X0_RVT U592 ( .A1(n178), .A2(state[1]), .Y(n84) );
  NAND2X0_RVT U593 ( .A1(n460), .A2(state[51]), .Y(n404) );
  NAND2X0_RVT U594 ( .A1(wb_wait_r), .A2(csc_10), .Y(n8) );
  NAND2X0_RVT U595 ( .A1(n234), .A2(n465), .Y(n812) );
  AO21X1_RVT U596 ( .A1(state[17]), .A2(n518), .A3(n897), .Y(n465) );
  OR3X2_RVT U597 ( .A1(n685), .A2(n686), .A3(n687), .Y(cmd[0]) );
  NAND4X0_RVT U598 ( .A1(n67), .A2(n871), .A3(n733), .A4(n881), .Y(n685) );
  NAND4X0_RVT U599 ( .A1(n620), .A2(n324), .A3(n688), .A4(n689), .Y(n687) );
  AO221X1_RVT U600 ( .A1(n693), .A2(state[14]), .A3(state[1]), .A4(n694), .A5(
        n611), .Y(n686) );
  INVX1_RVT U601 ( .A(init_req), .Y(n908) );
  OA21X1_RVT U602 ( .A1(n199), .A2(n331), .A3(n271), .Y(n173) );
  AND4X1_RVT U603 ( .A1(n258), .A2(n870), .A3(n66), .A4(n869), .Y(n331) );
  NAND2X0_RVT U604 ( .A1(state[1]), .A2(n889), .Y(n530) );
  OR2X1_RVT U605 ( .A1(tms[21]), .A2(n137), .Y(n449) );
  NAND4X0_RVT U606 ( .A1(n664), .A2(n717), .A3(n304), .A4(n718), .Y(cmd[1]) );
  AND3X1_RVT U607 ( .A1(n765), .A2(n795), .A3(n598), .Y(n718) );
  NAND2X0_RVT U608 ( .A1(state[14]), .A2(n676), .Y(n717) );
  NAND2X0_RVT U609 ( .A1(lmr_req), .A2(n576), .Y(n468) );
  AOI21X1_RVT U610 ( .A1(n780), .A2(n362), .A3(n498), .Y(n337) );
  NAND4X0_RVT U611 ( .A1(n844), .A2(n871), .A3(n889), .A4(n761), .Y(n362) );
  NAND2X0_RVT U612 ( .A1(susp_req_r), .A2(n588), .Y(n470) );
  NAND2X0_RVT U613 ( .A1(state[29]), .A2(n163), .Y(n116) );
  AO21X1_RVT U614 ( .A1(n763), .A2(n99), .A3(n489), .Y(n818) );
  AND4X1_RVT U615 ( .A1(n619), .A2(n617), .A3(state[1]), .A4(n866), .Y(n489)
         );
  AO22X1_RVT U616 ( .A1(n842), .A2(n514), .A3(n472), .A4(n894), .Y(n813) );
  AO21X1_RVT U617 ( .A1(n514), .A2(n11), .A3(n475), .Y(n472) );
  AO22X1_RVT U618 ( .A1(n514), .A2(n758), .A3(n480), .A4(n478), .Y(n815) );
  NOR2X0_RVT U619 ( .A1(n758), .A2(state[22]), .Y(n480) );
  AO22X1_RVT U620 ( .A1(n475), .A2(n11), .A3(n476), .A4(n759), .Y(n814) );
  AND2X1_RVT U621 ( .A1(n892), .A2(n514), .Y(n476) );
  NAND2X0_RVT U622 ( .A1(n514), .A2(n758), .Y(n481) );
  NAND4X0_RVT U623 ( .A1(n728), .A2(n714), .A3(n889), .A4(n878), .Y(n726) );
  NBUFFX2_RVT U624 ( .A(n127), .Y(n103) );
  NAND4X0_RVT U625 ( .A1(n748), .A2(n749), .A3(n730), .A4(n731), .Y(N278) );
  AND3X1_RVT U626 ( .A1(n751), .A2(n752), .A3(n750), .Y(n730) );
  AND4X1_RVT U627 ( .A1(n754), .A2(n755), .A3(n753), .A4(n732), .Y(n731) );
  AND3X1_RVT U628 ( .A1(n790), .A2(N249), .A3(n756), .Y(n732) );
  AND4X1_RVT U629 ( .A1(n677), .A2(mc_c_oe), .A3(n791), .A4(n897), .Y(n38) );
  NAND2X0_RVT U630 ( .A1(state[35]), .A2(mc_br), .Y(n165) );
  NAND3X0_RVT U631 ( .A1(n518), .A2(n103), .A3(state[24]), .Y(n478) );
  NAND2X0_RVT U632 ( .A1(bank_open), .A2(csc_10), .Y(n28) );
  NAND2X0_RVT U633 ( .A1(n223), .A2(n67), .Y(n601) );
  NAND2X0_RVT U634 ( .A1(state[48]), .A2(n780), .Y(n462) );
  NAND2X0_RVT U635 ( .A1(n53), .A2(n323), .Y(n317) );
  NAND3X0_RVT U636 ( .A1(n276), .A2(n511), .A3(n504), .Y(n323) );
  OR2X1_RVT U637 ( .A1(n45), .A2(n588), .Y(n266) );
  NAND4X0_RVT U638 ( .A1(n783), .A2(n784), .A3(n785), .A4(n786), .Y(n100) );
  OR2X1_RVT U639 ( .A1(n846), .A2(resume_req_r), .Y(n117) );
  NOR3X0_RVT U640 ( .A1(state[37]), .A2(state[46]), .A3(n159), .Y(n128) );
  NAND4X0_RVT U641 ( .A1(n743), .A2(n744), .A3(n734), .A4(n735), .Y(n487) );
  AND3X1_RVT U642 ( .A1(n737), .A2(n738), .A3(n736), .Y(n734) );
  AND4X1_RVT U643 ( .A1(N125), .A2(n742), .A3(n739), .A4(n740), .Y(n735) );
  NAND2X0_RVT U644 ( .A1(state[6]), .A2(n484), .Y(n5) );
  NAND2X0_RVT U645 ( .A1(state[16]), .A2(n53), .Y(n43) );
  NAND2X0_RVT U646 ( .A1(state[13]), .A2(n118), .Y(n202) );
  NAND3X0_RVT U647 ( .A1(n876), .A2(n727), .A3(n794), .Y(n615) );
  OR2X1_RVT U648 ( .A1(state[56]), .A2(state[55]), .Y(n93) );
  NAND2X0_RVT U649 ( .A1(n47), .A2(n49), .Y(n375) );
  NOR4X1_RVT U650 ( .A1(timer[4]), .A2(timer[5]), .A3(timer[6]), .A4(timer[7]), 
        .Y(n47) );
  NOR4X1_RVT U651 ( .A1(timer[0]), .A2(timer[1]), .A3(timer[2]), .A4(timer[3]), 
        .Y(n49) );
  AND4X1_RVT U652 ( .A1(n63), .A2(n511), .A3(n504), .A4(n332), .Y(n258) );
  AND3X1_RVT U653 ( .A1(n886), .A2(n843), .A3(n868), .Y(n332) );
  AO22X1_RVT U654 ( .A1(n767), .A2(n880), .A3(n477), .A4(n879), .Y(n769) );
  AND3X1_RVT U655 ( .A1(n760), .A2(n892), .A3(n759), .Y(n842) );
  NAND3X0_RVT U656 ( .A1(n895), .A2(n511), .A3(n99), .Y(n799) );
  INVX1_RVT U657 ( .A(n207), .Y(n222) );
  INVX1_RVT U658 ( .A(n284), .Y(n314) );
  INVX1_RVT U659 ( .A(n211), .Y(n236) );
  NAND2X0_RVT U660 ( .A1(n758), .A2(n789), .Y(n479) );
  AO22X1_RVT U661 ( .A1(wr_cycle), .A2(cmd_del[3]), .A3(cmd[3]), .A4(n882), 
        .Y(cs_en) );
  AO22X1_RVT U662 ( .A1(wr_cycle), .A2(cmd_del[1]), .A3(cmd[1]), .A4(n882), 
        .Y(cas_) );
  AO22X1_RVT U663 ( .A1(wr_cycle), .A2(cmd_del[2]), .A3(cmd[2]), .A4(n882), 
        .Y(ras_) );
  AO22X1_RVT U664 ( .A1(wr_cycle), .A2(cmd_del[0]), .A3(cmd[0]), .A4(n882), 
        .Y(we_) );
  INVX1_RVT U665 ( .A(rst), .Y(n909) );
  NAND3X0_RVT U666 ( .A1(n733), .A2(n741), .A3(n628), .Y(mc_bg) );
  NOR3X0_RVT U667 ( .A1(rfr_req), .A2(susp_req_r), .A3(lmr_req), .Y(n629) );
  INVX1_RVT U668 ( .A(mc_ack), .Y(n418) );
  INVX1_RVT U669 ( .A(mc_br), .Y(n409) );
  INVX0_RVT U670 ( .A(wb_write_go), .Y(n151) );
  INVX1_RVT U671 ( .A(n154), .Y(n156) );
  NBUFFX2_RVT U672 ( .A(n151), .Y(n52) );
  INVX0_RVT U673 ( .A(n656), .Y(n421) );
  NAND2X0_RVT U674 ( .A1(n151), .A2(n154), .Y(n656) );
  INVX1_RVT U675 ( .A(n53), .Y(n199) );
  NAND2X0_RVT U676 ( .A1(n911), .A2(tmr_done), .Y(n655) );
  NAND3X0_RVT U677 ( .A1(n226), .A2(n869), .A3(n228), .Y(n225) );
  NAND3X0_RVT U678 ( .A1(n254), .A2(n870), .A3(n228), .Y(n253) );
  AO222X1_RVT U679 ( .A1(state[45]), .A2(n144), .A3(n796), .A4(n145), .A5(
        state[44]), .A6(tmr2_done), .Y(next_state[45]) );
  NAND3X0_RVT U680 ( .A1(n146), .A2(n873), .A3(n148), .Y(n144) );
  AND4X1_RVT U681 ( .A1(n117), .A2(n161), .A3(n165), .A4(n255), .Y(n245) );
  NAND3X0_RVT U682 ( .A1(n60), .A2(n911), .A3(n639), .Y(n638) );
  NAND3X0_RVT U683 ( .A1(n508), .A2(n52), .A3(n60), .Y(n44) );
  NAND3X0_RVT U684 ( .A1(n310), .A2(n506), .A3(n60), .Y(n319) );
  AO22X1_RVT U685 ( .A1(n60), .A2(n307), .A3(n308), .A4(n298), .Y(n306) );
  AO22X1_RVT U686 ( .A1(state[10]), .A2(tmr_done), .A3(n60), .A4(n327), .Y(
        next_state[11]) );
  INVX0_RVT U687 ( .A(n171), .Y(n92) );
  OA21X1_RVT U688 ( .A1(n103), .A2(n118), .A3(n250), .Y(n77) );
  AO22X1_RVT U689 ( .A1(state[27]), .A2(n118), .A3(state[28]), .A4(n229), .Y(
        next_state[28]) );
  OAI22X1_RVT U690 ( .A1(n349), .A2(n893), .A3(n63), .A4(n237), .Y(
        next_state[26]) );
  INVX0_RVT U691 ( .A(n120), .Y(n349) );
  NAND3X0_RVT U692 ( .A1(n279), .A2(n851), .A3(n232), .Y(n278) );
  NAND3X0_RVT U693 ( .A1(n230), .A2(n850), .A3(n232), .Y(n229) );
  OA21X1_RVT U694 ( .A1(n518), .A2(n848), .A3(n77), .Y(n232) );
  NAND4X0_RVT U695 ( .A1(n692), .A2(n893), .A3(n127), .A4(n67), .Y(init_ack)
         );
  INVX0_RVT U696 ( .A(wb_wait), .Y(n69) );
  NBUFFX2_RVT U697 ( .A(n130), .Y(n85) );
  NAND2X0_RVT U698 ( .A1(n124), .A2(tmr2_done), .Y(n130) );
  AND3X1_RVT U699 ( .A1(n21), .A2(n15), .A3(n111), .Y(n124) );
  NBUFFX2_RVT U700 ( .A(n552), .Y(n88) );
  NBUFFX2_RVT U701 ( .A(n366), .Y(n89) );
  INVX0_RVT U702 ( .A(n529), .Y(n366) );
  NAND3X0_RVT U703 ( .A1(n99), .A2(n889), .A3(n531), .Y(n529) );
  INVX0_RVT U704 ( .A(n92), .Y(n97) );
  AND2X1_RVT U705 ( .A1(n66), .A2(n63), .Y(n692) );
  NAND3X0_RVT U706 ( .A1(n243), .A2(n66), .A3(n245), .Y(n241) );
  INVX0_RVT U707 ( .A(n34), .Y(n466) );
  OA22X1_RVT U708 ( .A1(n882), .A2(n532), .A3(wr_cycle), .A4(dv), .Y(n531) );
  NAND2X0_RVT U709 ( .A1(n215), .A2(n65), .Y(n58) );
  AND3X1_RVT U710 ( .A1(n281), .A2(n165), .A3(n215), .Y(n250) );
  NAND2X0_RVT U711 ( .A1(n492), .A2(n493), .Y(n819) );
  NBUFFX2_RVT U714 ( .A(n94), .Y(n104) );
  NAND2X0_RVT U715 ( .A1(n509), .A2(n500), .Y(n358) );
  AND2X1_RVT U716 ( .A1(n509), .A2(n52), .Y(n308) );
  INVX0_RVT U717 ( .A(n423), .Y(n626) );
  NAND2X0_RVT U718 ( .A1(n3), .A2(n858), .Y(n423) );
  AO222X1_RVT U719 ( .A1(N128), .A2(n411), .A3(n522), .A4(n430), .A5(n678), 
        .A6(n431), .Y(n429) );
  AO21X1_RVT U720 ( .A1(n467), .A2(n356), .A3(n513), .Y(n34) );
  NAND2X0_RVT U721 ( .A1(n626), .A2(n623), .Y(n525) );
  NAND2X0_RVT U722 ( .A1(n3), .A2(n856), .Y(n430) );
  OA21X1_RVT U723 ( .A1(n525), .A2(n430), .A3(N278), .Y(n320) );
  INVX0_RVT U724 ( .A(tms[2]), .Y(n856) );
  INVX0_RVT U725 ( .A(n492), .Y(n401) );
  AOI222X1_RVT U726 ( .A1(tms[26]), .A2(n378), .A3(n566), .A4(n132), .A5(
        tms[10]), .A6(n385), .Y(n554) );
  INVX1_RVT U727 ( .A(n590), .Y(n374) );
  NAND4X0_RVT U728 ( .A1(n537), .A2(n538), .A3(n539), .A4(n540), .Y(n837) );
  NAND4X0_RVT U729 ( .A1(n569), .A2(n568), .A3(n570), .A4(n571), .Y(n839) );
  NAND4X0_RVT U730 ( .A1(n555), .A2(n554), .A3(n553), .A4(n556), .Y(n838) );
  NAND4X0_RVT U731 ( .A1(n582), .A2(n581), .A3(n580), .A4(n583), .Y(n840) );
  INVX0_RVT U732 ( .A(n566), .Y(n380) );
  AND2X1_RVT U733 ( .A1(n40), .A2(n36), .Y(n322) );
  INVX0_RVT U734 ( .A(n61), .Y(n370) );
  INVX0_RVT U735 ( .A(n562), .Y(n381) );
  OA221X1_RVT U736 ( .A1(n584), .A2(n544), .A3(n634), .A4(n558), .A5(n585), 
        .Y(n583) );
  OA221X1_RVT U737 ( .A1(n572), .A2(n544), .A3(n573), .A4(n567), .A5(n574), 
        .Y(n571) );
  OA221X1_RVT U738 ( .A1(n635), .A2(n558), .A3(n544), .A4(n559), .A5(n560), 
        .Y(n556) );
  INVX0_RVT U739 ( .A(n602), .Y(n376) );
  NBUFFX2_RVT U740 ( .A(n424), .Y(n107) );
  INVX1_RVT U741 ( .A(n588), .Y(wb_cycle) );
  INVX1_RVT U742 ( .A(n780), .Y(n518) );
  AO22X1_RVT U743 ( .A1(n518), .A2(n477), .A3(n767), .A4(n535), .Y(n773) );
  AO22X1_RVT U744 ( .A1(state[18]), .A2(n161), .A3(state[19]), .A4(n278), .Y(
        next_state[19]) );
  AO22X1_RVT U745 ( .A1(state[52]), .A2(n118), .A3(state[53]), .A4(n113), .Y(
        next_state[53]) );
  AO22X1_RVT U746 ( .A1(state[4]), .A2(n118), .A3(state[5]), .A4(n74), .Y(
        next_state[5]) );
  AO222X1_RVT U747 ( .A1(N253), .A2(n366), .A3(n140), .A4(n899), .A5(
        page_size[4]), .A6(n4), .Y(n828) );
  AO222X1_RVT U748 ( .A1(N254), .A2(n89), .A3(n143), .A4(n900), .A5(
        page_size[5]), .A6(n4), .Y(n827) );
  AO222X1_RVT U749 ( .A1(N255), .A2(n89), .A3(n140), .A4(n901), .A5(
        page_size[6]), .A6(n4), .Y(n826) );
  AO21X1_RVT U750 ( .A1(state[58]), .A2(n118), .A3(state[59]), .Y(n79) );
  INVX0_RVT U751 ( .A(n163), .Y(n161) );
  INVX0_RVT U752 ( .A(n338), .Y(n424) );
  INVX1_RVT U753 ( .A(n518), .Y(n163) );
  NAND3X0_RVT U754 ( .A1(n512), .A2(n594), .A3(n591), .Y(n562) );
  NAND2X0_RVT U755 ( .A1(n591), .A2(n592), .Y(n544) );
  AOI21X1_RVT U756 ( .A1(n747), .A2(n614), .A3(n615), .Y(n613) );
  NAND4X0_RVT U757 ( .A1(n64), .A2(n90), .A3(n195), .A4(n613), .Y(n532) );
  AND2X1_RVT U758 ( .A1(n203), .A2(n358), .Y(n208) );
  AND2X1_RVT U759 ( .A1(n41), .A2(n20), .Y(n15) );
  INVX0_RVT U760 ( .A(tms[1]), .Y(n858) );
  AO222X1_RVT U761 ( .A1(timer[4]), .A2(n2), .A3(n373), .A4(n451), .A5(N182), 
        .A6(n374), .Y(n836) );
  AO222X1_RVT U762 ( .A1(timer[5]), .A2(n2), .A3(n373), .A4(n454), .A5(N183), 
        .A6(n374), .Y(n835) );
  AO222X1_RVT U763 ( .A1(timer[6]), .A2(n2), .A3(n373), .A4(n456), .A5(N184), 
        .A6(n374), .Y(n834) );
  AO222X1_RVT U764 ( .A1(timer[7]), .A2(n2), .A3(n373), .A4(n483), .A5(N185), 
        .A6(n374), .Y(n833) );
  AOI22X1_RVT U765 ( .A1(timer[3]), .A2(n7), .A3(N181), .A4(n374), .Y(n537) );
  AOI222X1_RVT U766 ( .A1(N178), .A2(n374), .A3(n381), .A4(n444), .A5(timer[0]), .A6(n7), .Y(n569) );
  AOI222X1_RVT U767 ( .A1(N180), .A2(n374), .A3(n383), .A4(n455), .A5(timer[2]), .A6(n7), .Y(n555) );
  NAND2X0_RVT U768 ( .A1(n482), .A2(n575), .Y(n558) );
  AOI222X1_RVT U769 ( .A1(N179), .A2(n374), .A3(n381), .A4(n449), .A5(timer[1]), .A6(n7), .Y(n582) );
  AND3X1_RVT U770 ( .A1(n591), .A2(n512), .A3(n595), .Y(n575) );
  INVX0_RVT U771 ( .A(tms[0]), .Y(n861) );
  INVX0_RVT U772 ( .A(n297), .Y(n509) );
  INVX0_RVT U773 ( .A(n519), .Y(n623) );
  OAI22X1_RVT U774 ( .A1(n351), .A2(n577), .A3(n141), .A4(n142), .Y(
        next_state[47]) );
  OAI22X1_RVT U775 ( .A1(n351), .A2(n578), .A3(n141), .A4(n164), .Y(
        next_state[36]) );
  AO21X1_RVT U776 ( .A1(n315), .A2(n34), .A3(n510), .Y(n318) );
  AND4X1_RVT U777 ( .A1(n34), .A2(n795), .A3(n36), .A4(n37), .Y(n33) );
  AND4X1_RVT U778 ( .A1(n272), .A2(n41), .A3(n39), .A4(n34), .Y(n135) );
  NAND2X0_RVT U779 ( .A1(n171), .A2(n14), .Y(n120) );
  NAND2X0_RVT U780 ( .A1(n97), .A2(n21), .Y(n94) );
  AND4X1_RVT U781 ( .A1(n36), .A2(n34), .A3(n326), .A4(n341), .Y(n20) );
  NAND2X0_RVT U782 ( .A1(n911), .A2(n320), .Y(n330) );
  NAND3X0_RVT U783 ( .A1(n320), .A2(n357), .A3(n208), .Y(n356) );
  NAND2X0_RVT U784 ( .A1(n320), .A2(n156), .Y(n102) );
  NAND2X0_RVT U785 ( .A1(n320), .A2(n853), .Y(n297) );
  NAND3X0_RVT U786 ( .A1(n858), .A2(n856), .A3(n861), .Y(n720) );
  NAND2X0_RVT U787 ( .A1(n3), .A2(n861), .Y(n519) );
  OA221X1_RVT U788 ( .A1(n88), .A2(n860), .A3(n626), .A4(n549), .A5(n579), .Y(
        n580) );
  OA21X1_RVT U789 ( .A1(n642), .A2(n338), .A3(n886), .Y(n641) );
  AO221X1_RVT U790 ( .A1(state[58]), .A2(n87), .A3(n107), .A4(n79), .A5(n363), 
        .Y(next_state[58]) );
  NAND2X0_RVT U791 ( .A1(n401), .A2(n107), .Y(n142) );
  NAND2X0_RVT U792 ( .A1(n88), .A2(n600), .Y(n567) );
  AO22X1_RVT U793 ( .A1(state[8]), .A2(n107), .A3(n666), .A4(state[7]), .Y(
        n316) );
  AND2X1_RVT U794 ( .A1(n885), .A2(n61), .Y(n552) );
  AO221X1_RVT U796 ( .A1(N251), .A2(n366), .A3(page_size[2]), .A4(n4), .A5(
        n520), .Y(n830) );
  AO221X1_RVT U797 ( .A1(N252), .A2(n89), .A3(page_size[3]), .A4(n4), .A5(n515), .Y(n829) );
  AO222X1_RVT U798 ( .A1(N259), .A2(n89), .A3(n140), .A4(n905), .A5(
        page_size[10]), .A6(n4), .Y(n822) );
  AO222X1_RVT U799 ( .A1(N258), .A2(n89), .A3(n143), .A4(n904), .A5(
        page_size[9]), .A6(n4), .Y(n823) );
  AO222X1_RVT U800 ( .A1(N257), .A2(n89), .A3(n140), .A4(n903), .A5(
        page_size[8]), .A6(n4), .Y(n824) );
  AO222X1_RVT U801 ( .A1(N256), .A2(n366), .A3(n143), .A4(n902), .A5(
        page_size[7]), .A6(n4), .Y(n825) );
  INVX0_RVT U802 ( .A(n69), .Y(n147) );
  AO22X1_RVT U803 ( .A1(n147), .A2(n79), .A3(state[59]), .A4(n80), .Y(
        next_state[59]) );
  NAND2X0_RVT U804 ( .A1(state[8]), .A2(n147), .Y(n112) );
  OR4X1_RVT U805 ( .A1(n50), .A2(n28), .A3(row_same), .A4(n147), .Y(n133) );
  AO22X1_RVT U806 ( .A1(state[53]), .A2(n54), .A3(n630), .A4(n76), .Y(mc_adv)
         );
  AND2X1_RVT U807 ( .A1(n156), .A2(n76), .Y(n119) );
  NAND2X0_RVT U808 ( .A1(n707), .A2(n76), .Y(n705) );
  NAND2X0_RVT U809 ( .A1(n747), .A2(n76), .Y(n354) );
  OA22X1_RVT U810 ( .A1(n267), .A2(n266), .A3(n728), .A4(n350), .Y(n82) );
  NAND2X0_RVT U811 ( .A1(n52), .A2(n69), .Y(n632) );
  NAND2X0_RVT U812 ( .A1(n152), .A2(n69), .Y(n338) );
  INVX0_RVT U813 ( .A(csc[1]), .Y(n865) );
  AO21X1_RVT U814 ( .A1(n906), .A2(n267), .A3(n588), .Y(n647) );
  NAND2X0_RVT U815 ( .A1(n350), .A2(state[3]), .Y(n267) );
  NAND4X0_RVT U816 ( .A1(n788), .A2(n871), .A3(n712), .A4(n713), .Y(rfr_ack_d)
         );
  OAI21X1_RVT U817 ( .A1(n848), .A2(rfr_ack), .A3(n224), .Y(bank_clr) );
  NAND2X0_RVT U818 ( .A1(state[4]), .A2(rfr_ack), .Y(n712) );
  NAND2X0_RVT U819 ( .A1(n698), .A2(n699), .Y(n121) );
  INVX0_RVT U820 ( .A(n658), .Y(n403) );
  NAND2X0_RVT U821 ( .A1(n403), .A2(state[1]), .Y(n492) );
  NAND2X0_RVT U822 ( .A1(n863), .A2(n403), .Y(n50) );
  NAND2X0_RVT U823 ( .A1(n698), .A2(n699), .Y(n697) );
  NAND3X0_RVT U824 ( .A1(n656), .A2(n576), .A3(n697), .Y(n346) );
  AO221X1_RVT U825 ( .A1(n481), .A2(n891), .A3(n892), .A4(n514), .A5(state[22]), .Y(n816) );
  AO21X1_RVT U826 ( .A1(state[22]), .A2(n120), .A3(state[21]), .Y(
        next_state[22]) );
  AO22X1_RVT U827 ( .A1(state[22]), .A2(n518), .A3(state[23]), .A4(n247), .Y(
        next_state[23]) );
  AND4X1_RVT U828 ( .A1(mc_br), .A2(n494), .A3(n129), .A4(n907), .Y(n178) );
  NAND4X0_RVT U829 ( .A1(n494), .A2(n129), .A3(n409), .A4(n907), .Y(n86) );
  OR3X1_RVT U830 ( .A1(n622), .A2(rfr_req), .A3(n346), .Y(n658) );
  INVX0_RVT U831 ( .A(csc[2]), .Y(n864) );
  NAND2X0_RVT U832 ( .A1(n865), .A2(n864), .Y(n394) );
  NAND2X0_RVT U833 ( .A1(n609), .A2(n76), .Y(n674) );
  NAND2X0_RVT U834 ( .A1(n609), .A2(n424), .Y(n61) );
  NAND2X0_RVT U835 ( .A1(n420), .A2(n609), .Y(n70) );
  OA21X1_RVT U836 ( .A1(n865), .A2(csc[2]), .A3(n141), .Y(n645) );
  NAND2X0_RVT U837 ( .A1(csc[2]), .A2(n865), .Y(n141) );
  AO22X1_RVT U838 ( .A1(n478), .A2(n103), .A3(n514), .A4(n479), .Y(n475) );
  AND3X1_RVT U839 ( .A1(n712), .A2(n103), .A3(n849), .Y(n659) );
  AND2X1_RVT U840 ( .A1(n847), .A2(n103), .Y(n304) );
  NAND2X0_RVT U841 ( .A1(n50), .A2(n347), .Y(n343) );
  AO21X1_RVT U842 ( .A1(n645), .A2(n865), .A3(n658), .Y(n347) );
  NAND4X0_RVT U843 ( .A1(n647), .A2(n690), .A3(n649), .A4(n650), .Y(cs_le_d)
         );
  OA221X1_RVT U844 ( .A1(n99), .A2(n561), .A3(wb_wait), .A4(n652), .A5(n653), 
        .Y(n650) );
  OA221X1_RVT U845 ( .A1(n154), .A2(n883), .A3(n99), .A4(n347), .A5(n654), .Y(
        n652) );
  OR2X1_RVT U846 ( .A1(timer2[1]), .A2(timer2[0]), .Y(n206) );
  AO21X1_RVT U847 ( .A1(timer2[1]), .A2(timer2[0]), .A3(n227), .Y(N126) );
  OR2X1_RVT U848 ( .A1(n206), .A2(timer2[2]), .Y(n207) );
  AO21X1_RVT U849 ( .A1(timer2[2]), .A2(n206), .A3(n222), .Y(N127) );
  OR2X1_RVT U850 ( .A1(n207), .A2(timer2[3]), .Y(n211) );
  AO21X1_RVT U851 ( .A1(timer2[3]), .A2(n207), .A3(n236), .Y(N128) );
  OR2X1_RVT U852 ( .A1(n211), .A2(timer2[4]), .Y(n212) );
  AO21X1_RVT U853 ( .A1(timer2[4]), .A2(n211), .A3(n235), .Y(N129) );
  OR2X1_RVT U854 ( .A1(n212), .A2(timer2[5]), .Y(n214) );
  AO21X1_RVT U855 ( .A1(timer2[5]), .A2(n212), .A3(n233), .Y(N130) );
  OR2X1_RVT U856 ( .A1(n214), .A2(timer2[6]), .Y(n217) );
  AO21X1_RVT U857 ( .A1(timer2[6]), .A2(n214), .A3(n231), .Y(N131) );
  XOR2X1_RVT U858 ( .A1(timer2[7]), .A2(n231), .Y(N132) );
  OR2X1_RVT U859 ( .A1(n217), .A2(timer2[7]), .Y(n219) );
  XNOR2X1_RVT U860 ( .A1(n219), .A2(timer2[8]), .Y(N133) );
  OR2X1_RVT U861 ( .A1(timer[1]), .A2(timer[0]), .Y(n240) );
  AO21X1_RVT U862 ( .A1(timer[1]), .A2(timer[0]), .A3(n280), .Y(N179) );
  OR2X1_RVT U863 ( .A1(n240), .A2(timer[2]), .Y(n244) );
  AO21X1_RVT U864 ( .A1(timer[2]), .A2(n240), .A3(n277), .Y(N180) );
  OR2X1_RVT U865 ( .A1(n244), .A2(timer[3]), .Y(n246) );
  AO21X1_RVT U866 ( .A1(timer[3]), .A2(n244), .A3(n274), .Y(N181) );
  OR2X1_RVT U867 ( .A1(n246), .A2(timer[4]), .Y(n249) );
  AO21X1_RVT U868 ( .A1(timer[4]), .A2(n246), .A3(n270), .Y(N182) );
  OR2X1_RVT U869 ( .A1(n249), .A2(timer[5]), .Y(n257) );
  AO21X1_RVT U870 ( .A1(timer[5]), .A2(n249), .A3(n265), .Y(N183) );
  XOR2X1_RVT U871 ( .A1(timer[6]), .A2(n265), .Y(N184) );
  OR2X1_RVT U872 ( .A1(n257), .A2(timer[6]), .Y(n263) );
  XNOR2X1_RVT U873 ( .A1(n263), .A2(timer[7]), .Y(N185) );
  OR2X1_RVT U874 ( .A1(n505), .A2(burst_cnt[0]), .Y(n284) );
  OR2X1_RVT U876 ( .A1(n284), .A2(burst_cnt[2]), .Y(n292) );
  OR2X1_RVT U877 ( .A1(n292), .A2(burst_cnt[3]), .Y(n295) );
  OR2X1_RVT U878 ( .A1(n295), .A2(n899), .Y(n296) );
  OR2X1_RVT U879 ( .A1(n296), .A2(n900), .Y(n299) );
  OR2X1_RVT U880 ( .A1(n299), .A2(n901), .Y(n305) );
  OR2X1_RVT U881 ( .A1(n305), .A2(n902), .Y(n309) );
  OR2X1_RVT U882 ( .A1(n309), .A2(n903), .Y(n313) );
  OR2X1_RVT U883 ( .A1(n313), .A2(n904), .Y(n283) );
  XNOR2X1_RVT U884 ( .A1(n283), .A2(n905), .Y(N259) );
  AO21X1_RVT U885 ( .A1(n505), .A2(burst_cnt[0]), .A3(n314), .Y(N250) );
  AO21X1_RVT U886 ( .A1(burst_cnt[2]), .A2(n284), .A3(n321), .Y(N251) );
  AO21X1_RVT U887 ( .A1(burst_cnt[3]), .A2(n292), .A3(n325), .Y(N252) );
  AO21X1_RVT U888 ( .A1(n899), .A2(n295), .A3(n333), .Y(N253) );
  AO21X1_RVT U892 ( .A1(n900), .A2(n296), .A3(n334), .Y(N254) );
  AO21X1_RVT U893 ( .A1(n901), .A2(n299), .A3(n339), .Y(N255) );
  AO21X1_RVT U894 ( .A1(n902), .A2(n305), .A3(n342), .Y(N256) );
  AO21X1_RVT U895 ( .A1(n903), .A2(n309), .A3(n344), .Y(N257) );
  XNOR2X1_RVT U896 ( .A1(n904), .A2(n313), .Y(N258) );
endmodule


module mc_wb_if ( clk, rst, wb_addr_i, wb_cyc_i, wb_stb_i, wb_we_i, wb_err, 
        wb_ack_o, wb_read_go, wb_write_go, wb_first, wb_wait, mem_ack, wr_hold, 
        err, par_err, wp_err, wb_data_o, mem_dout, rf_dout );
  input [31:0] wb_addr_i;
  output [31:0] wb_data_o;
  input [31:0] mem_dout;
  input [31:0] rf_dout;
  input clk, rst, wb_cyc_i, wb_stb_i, wb_we_i, mem_ack, err, par_err, wp_err;
  output wb_err, wb_ack_o, wb_read_go, wb_write_go, wb_first, wb_wait, wr_hold;
  wire   n35, rmw_en, read_go_r1, N11, write_go_r1, write_go_r, N13, N14,
         wb_first_r, N24, N25, n1, n3, n6, n15, n16, n17, n21, n22, n23, n24,
         n27, n30, n2, n4, n5, n7, n8, n10, n11, n12, n13, n14, n18, n19, n20,
         n25, n28, n29, n31, n32, n33, n34;

  SDFFARX1_RVT read_go_r_reg ( .D(wb_cyc_i), .SI(1'b0), .SE(n1), .CLK(clk), 
        .RSTB(n32), .QN(n29) );
  DFFARX1_RVT read_go_r1_reg ( .D(N11), .CLK(clk), .RSTB(n32), .Q(read_go_r1), 
        .QN(n1) );
  SDFFX1_RVT \wb_data_o_reg[31]  ( .D(mem_dout[31]), .SI(rf_dout[31]), .SE(n10), .CLK(clk), .Q(wb_data_o[31]) );
  SDFFX1_RVT \wb_data_o_reg[30]  ( .D(mem_dout[30]), .SI(rf_dout[30]), .SE(n12), .CLK(clk), .Q(wb_data_o[30]) );
  SDFFX1_RVT \wb_data_o_reg[29]  ( .D(mem_dout[29]), .SI(rf_dout[29]), .SE(n12), .CLK(clk), .Q(wb_data_o[29]) );
  SDFFX1_RVT \wb_data_o_reg[28]  ( .D(mem_dout[28]), .SI(rf_dout[28]), .SE(n12), .CLK(clk), .Q(wb_data_o[28]) );
  SDFFX1_RVT \wb_data_o_reg[27]  ( .D(mem_dout[27]), .SI(rf_dout[27]), .SE(n12), .CLK(clk), .Q(wb_data_o[27]) );
  SDFFX1_RVT \wb_data_o_reg[26]  ( .D(mem_dout[26]), .SI(rf_dout[26]), .SE(n12), .CLK(clk), .Q(wb_data_o[26]) );
  SDFFX1_RVT \wb_data_o_reg[25]  ( .D(mem_dout[25]), .SI(rf_dout[25]), .SE(n12), .CLK(clk), .Q(wb_data_o[25]) );
  SDFFX1_RVT \wb_data_o_reg[24]  ( .D(mem_dout[24]), .SI(rf_dout[24]), .SE(n12), .CLK(clk), .Q(wb_data_o[24]) );
  SDFFX1_RVT \wb_data_o_reg[23]  ( .D(mem_dout[23]), .SI(rf_dout[23]), .SE(n12), .CLK(clk), .Q(wb_data_o[23]) );
  SDFFX1_RVT \wb_data_o_reg[22]  ( .D(mem_dout[22]), .SI(rf_dout[22]), .SE(n11), .CLK(clk), .Q(wb_data_o[22]) );
  SDFFX1_RVT \wb_data_o_reg[21]  ( .D(mem_dout[21]), .SI(rf_dout[21]), .SE(n11), .CLK(clk), .Q(wb_data_o[21]) );
  SDFFX1_RVT \wb_data_o_reg[20]  ( .D(mem_dout[20]), .SI(rf_dout[20]), .SE(n11), .CLK(clk), .Q(wb_data_o[20]) );
  SDFFX1_RVT \wb_data_o_reg[19]  ( .D(mem_dout[19]), .SI(rf_dout[19]), .SE(n11), .CLK(clk), .Q(wb_data_o[19]) );
  SDFFX1_RVT \wb_data_o_reg[18]  ( .D(mem_dout[18]), .SI(rf_dout[18]), .SE(n11), .CLK(clk), .Q(wb_data_o[18]) );
  SDFFX1_RVT \wb_data_o_reg[17]  ( .D(mem_dout[17]), .SI(rf_dout[17]), .SE(n11), .CLK(clk), .Q(wb_data_o[17]) );
  SDFFX1_RVT \wb_data_o_reg[16]  ( .D(mem_dout[16]), .SI(rf_dout[16]), .SE(n11), .CLK(clk), .Q(wb_data_o[16]) );
  SDFFX1_RVT \wb_data_o_reg[15]  ( .D(mem_dout[15]), .SI(rf_dout[15]), .SE(n11), .CLK(clk), .Q(wb_data_o[15]) );
  SDFFX1_RVT \wb_data_o_reg[14]  ( .D(mem_dout[14]), .SI(rf_dout[14]), .SE(n11), .CLK(clk), .Q(wb_data_o[14]) );
  SDFFX1_RVT \wb_data_o_reg[13]  ( .D(mem_dout[13]), .SI(rf_dout[13]), .SE(n11), .CLK(clk), .Q(wb_data_o[13]) );
  SDFFX1_RVT \wb_data_o_reg[12]  ( .D(mem_dout[12]), .SI(rf_dout[12]), .SE(n11), .CLK(clk), .Q(wb_data_o[12]) );
  SDFFX1_RVT \wb_data_o_reg[11]  ( .D(mem_dout[11]), .SI(rf_dout[11]), .SE(n10), .CLK(clk), .Q(wb_data_o[11]) );
  DFFARX1_RVT rmw_en_reg ( .D(n30), .CLK(clk), .RSTB(n32), .Q(rmw_en) );
  DFFARX1_RVT write_go_r_reg ( .D(N14), .CLK(clk), .RSTB(n32), .Q(write_go_r), 
        .QN(n14) );
  DFFARX1_RVT wb_first_r_reg ( .D(wb_first), .CLK(clk), .RSTB(n32), .Q(
        wb_first_r) );
  DFFARX1_RVT wr_hold_reg ( .D(n27), .CLK(clk), .RSTB(n32), .Q(wr_hold), .QN(
        n20) );
  DFFARX1_RVT write_go_r1_reg ( .D(N13), .CLK(clk), .RSTB(n32), .Q(write_go_r1) );
  DFFARX1_RVT rmw_r_reg ( .D(n18), .CLK(clk), .RSTB(n32), .QN(n28) );
  DFFARX1_RVT wb_ack_o_reg ( .D(N24), .CLK(clk), .RSTB(n32), .Q(wb_ack_o), 
        .QN(n25) );
  DFFARX1_RVT wb_err_reg ( .D(N25), .CLK(clk), .RSTB(n32), .Q(wb_err), .QN(n31) );
  SDFFX1_RVT \wb_data_o_reg[10]  ( .D(mem_dout[10]), .SI(rf_dout[10]), .SE(n10), .CLK(clk), .Q(wb_data_o[10]) );
  SDFFX1_RVT \wb_data_o_reg[9]  ( .D(mem_dout[9]), .SI(rf_dout[9]), .SE(n10), 
        .CLK(clk), .Q(wb_data_o[9]) );
  SDFFX1_RVT \wb_data_o_reg[8]  ( .D(mem_dout[8]), .SI(rf_dout[8]), .SE(n10), 
        .CLK(clk), .Q(wb_data_o[8]) );
  SDFFX1_RVT \wb_data_o_reg[7]  ( .D(mem_dout[7]), .SI(rf_dout[7]), .SE(n10), 
        .CLK(clk), .Q(wb_data_o[7]) );
  SDFFX1_RVT \wb_data_o_reg[6]  ( .D(mem_dout[6]), .SI(rf_dout[6]), .SE(n11), 
        .CLK(clk), .Q(wb_data_o[6]) );
  SDFFX1_RVT \wb_data_o_reg[5]  ( .D(mem_dout[5]), .SI(rf_dout[5]), .SE(n10), 
        .CLK(clk), .Q(wb_data_o[5]) );
  SDFFX1_RVT \wb_data_o_reg[4]  ( .D(mem_dout[4]), .SI(rf_dout[4]), .SE(n10), 
        .CLK(clk), .Q(wb_data_o[4]) );
  SDFFX1_RVT \wb_data_o_reg[3]  ( .D(mem_dout[3]), .SI(rf_dout[3]), .SE(n10), 
        .CLK(clk), .Q(wb_data_o[3]) );
  SDFFX1_RVT \wb_data_o_reg[2]  ( .D(mem_dout[2]), .SI(rf_dout[2]), .SE(n10), 
        .CLK(clk), .Q(wb_data_o[2]) );
  SDFFX1_RVT \wb_data_o_reg[1]  ( .D(mem_dout[1]), .SI(rf_dout[1]), .SE(n10), 
        .CLK(clk), .Q(wb_data_o[1]) );
  SDFFX1_RVT \wb_data_o_reg[0]  ( .D(mem_dout[0]), .SI(rf_dout[0]), .SE(n10), 
        .CLK(clk), .Q(wb_data_o[0]) );
  INVX1_RVT U3 ( .A(n3), .Y(n18) );
  AND3X1_RVT U4 ( .A1(n3), .A2(n28), .A3(N14), .Y(wb_write_go) );
  NAND4X0_RVT U5 ( .A1(n25), .A2(n33), .A3(n34), .A4(n21), .Y(n4) );
  INVX1_RVT U6 ( .A(wb_addr_i[31]), .Y(n33) );
  AO21X1_RVT U7 ( .A1(wr_hold), .A2(n15), .A3(n16), .Y(n27) );
  NAND4X0_RVT U8 ( .A1(n34), .A2(n8), .A3(n29), .A4(n14), .Y(n7) );
  AOI21X1_RVT U9 ( .A1(n29), .A2(n24), .A3(n6), .Y(N11) );
  NAND2X0_RVT U10 ( .A1(n2), .A2(n4), .Y(N24) );
  NAND3X0_RVT U11 ( .A1(n17), .A2(n8), .A3(mem_ack), .Y(n2) );
  NAND2X0_RVT U12 ( .A1(n5), .A2(n7), .Y(wb_first) );
  NAND3X0_RVT U13 ( .A1(n25), .A2(n31), .A3(wb_first_r), .Y(n5) );
  INVX1_RVT U14 ( .A(n8), .Y(n11) );
  INVX1_RVT U15 ( .A(n8), .Y(n10) );
  INVX1_RVT U16 ( .A(n8), .Y(n12) );
  OR2X1_RVT U17 ( .A1(n23), .A2(n12), .Y(n24) );
  AND3X1_RVT U18 ( .A1(wb_cyc_i), .A2(n23), .A3(write_go_r1), .Y(N14) );
  INVX0_RVT U19 ( .A(wb_stb_i), .Y(n13) );
  OR2X1_RVT U20 ( .A1(n13), .A2(wb_we_i), .Y(n23) );
  NOR3X0_RVT U21 ( .A1(wb_addr_i[30]), .A2(wb_addr_i[31]), .A3(wb_addr_i[29]), 
        .Y(n8) );
  NOR3X0_RVT U22 ( .A1(n12), .A2(wb_err), .A3(n17), .Y(N25) );
  NAND2X0_RVT U23 ( .A1(n34), .A2(n22), .Y(n17) );
  OR3X2_RVT U24 ( .A1(wp_err), .A2(par_err), .A3(err), .Y(n22) );
  AO21X1_RVT U25 ( .A1(rmw_en), .A2(wb_cyc_i), .A3(wb_ack_o), .Y(n30) );
  AND2X1_RVT U26 ( .A1(wb_addr_i[30]), .A2(wb_addr_i[29]), .Y(n21) );
  INVX1_RVT U27 ( .A(rst), .Y(n32) );
  NAND3X0_RVT U28 ( .A1(n3), .A2(n28), .A3(wb_cyc_i), .Y(n6) );
  AND2X1_RVT U29 ( .A1(read_go_r1), .A2(n19), .Y(wb_read_go) );
  AND2X1_RVT U30 ( .A1(read_go_r1), .A2(n19), .Y(n35) );
  AO22X1_RVT U31 ( .A1(write_go_r), .A2(wb_cyc_i), .A3(n16), .A4(n8), .Y(N13)
         );
  NAND3X0_RVT U32 ( .A1(n16), .A2(n20), .A3(rmw_en), .Y(n3) );
  OA21X1_RVT U33 ( .A1(n35), .A2(wb_write_go), .A3(n13), .Y(wb_wait) );
  AND2X1_RVT U34 ( .A1(wb_we_i), .A2(n34), .Y(n16) );
  INVX0_RVT U35 ( .A(n6), .Y(n19) );
  INVX0_RVT U36 ( .A(n15), .Y(n34) );
  NAND2X0_RVT U37 ( .A1(wb_cyc_i), .A2(wb_stb_i), .Y(n15) );
endmodule


module mc_mem_if ( clk, rst, mc_clk, mc_br, mc_bg, mc_addr, mc_data_o, mc_dp_o, 
        mc_data_oe, mc_dqm, mc_oe_, mc_we_, mc_cas_, mc_ras_, mc_cke_, mc_cs_, 
        mc_adsc_, mc_adv_, mc_ack, mc_rp, mc_c_oe, mc_c_oe_d, mc_br_r, mc_bg_d, 
        mc_data_od, mc_dp_od, mc_addr_d, mc_ack_r, we_, ras_, cas_, cke_, 
        mc_adsc_d, mc_adv_d, cs_en, rfr_ack, cs_need_rfr, lmr_sel, spec_req_cs, 
        cs, fs, data_oe, susp_sel, suspended_o, oe_, wb_cyc_i, wb_stb_i, 
        wb_sel_i, wb_cycle, wr_cycle, mc_data_ir, mc_data_i, mc_dp_i, 
        mc_sts_ir, mc_sts_i, mc_zz_o );
  output [23:0] mc_addr;
  output [31:0] mc_data_o;
  output [3:0] mc_dp_o;
  output [3:0] mc_dqm;
  output [7:0] mc_cs_;
  input [31:0] mc_data_od;
  input [3:0] mc_dp_od;
  input [23:0] mc_addr_d;
  input [7:0] cs_need_rfr;
  input [7:0] spec_req_cs;
  input [7:0] cs;
  input [3:0] wb_sel_i;
  output [35:0] mc_data_ir;
  input [31:0] mc_data_i;
  input [3:0] mc_dp_i;
  input clk, rst, mc_clk, mc_br, mc_ack, mc_c_oe_d, mc_bg_d, we_, ras_, cas_,
         cke_, mc_adsc_d, mc_adv_d, cs_en, rfr_ack, lmr_sel, fs, data_oe,
         susp_sel, suspended_o, oe_, wb_cyc_i, wb_stb_i, wb_cycle, wr_cycle,
         mc_sts_i;
  output mc_bg, mc_data_oe, mc_oe_, mc_we_, mc_cas_, mc_ras_, mc_cke_,
         mc_adsc_, mc_adv_, mc_rp, mc_c_oe, mc_br_r, mc_ack_r, mc_sts_ir,
         mc_zz_o;
  wire   cke_, N2, N3, n1, n4, n6, n7, n8, n10, n11, n12, n13, n14, n15, n16,
         n23, n25, n26, n27, n28, n29, n30, n31, n32, n36, n37, n38, n39, n40,
         n41, n42, n43, n2, n3, n5, n9, n17, n18, n33, n34, n35, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [3:0] mc_dqm_r;
  assign mc_cke_ = cke_;

  DFFX1_RVT mc_ack_r_reg ( .D(mc_ack), .CLK(n18), .Q(mc_ack_r) );
  DFFX1_RVT mc_br_r_reg ( .D(mc_br), .CLK(n18), .Q(mc_br_r) );
  DFFX1_RVT \mc_data_ir_reg[35]  ( .D(mc_dp_i[3]), .CLK(n5), .Q(mc_data_ir[35]) );
  DFFX1_RVT \mc_data_ir_reg[34]  ( .D(mc_dp_i[2]), .CLK(n5), .Q(mc_data_ir[34]) );
  DFFX1_RVT \mc_data_ir_reg[33]  ( .D(mc_dp_i[1]), .CLK(n5), .Q(mc_data_ir[33]) );
  DFFX1_RVT \mc_data_ir_reg[32]  ( .D(mc_dp_i[0]), .CLK(n5), .Q(mc_data_ir[32]) );
  DFFX1_RVT \mc_data_ir_reg[31]  ( .D(mc_data_i[31]), .CLK(n5), .Q(
        mc_data_ir[31]) );
  DFFX1_RVT \mc_data_ir_reg[30]  ( .D(mc_data_i[30]), .CLK(n5), .Q(
        mc_data_ir[30]) );
  DFFX1_RVT \mc_data_ir_reg[29]  ( .D(mc_data_i[29]), .CLK(n5), .Q(
        mc_data_ir[29]) );
  DFFX1_RVT \mc_data_ir_reg[28]  ( .D(mc_data_i[28]), .CLK(n5), .Q(
        mc_data_ir[28]) );
  DFFX1_RVT \mc_data_ir_reg[27]  ( .D(mc_data_i[27]), .CLK(n5), .Q(
        mc_data_ir[27]) );
  DFFX1_RVT \mc_data_ir_reg[26]  ( .D(mc_data_i[26]), .CLK(n5), .Q(
        mc_data_ir[26]) );
  DFFX1_RVT \mc_data_ir_reg[25]  ( .D(mc_data_i[25]), .CLK(n9), .Q(
        mc_data_ir[25]) );
  DFFX1_RVT \mc_data_ir_reg[24]  ( .D(mc_data_i[24]), .CLK(n9), .Q(
        mc_data_ir[24]) );
  DFFX1_RVT \mc_data_ir_reg[23]  ( .D(mc_data_i[23]), .CLK(n9), .Q(
        mc_data_ir[23]) );
  DFFX1_RVT \mc_data_ir_reg[22]  ( .D(mc_data_i[22]), .CLK(n9), .Q(
        mc_data_ir[22]) );
  DFFX1_RVT \mc_data_ir_reg[21]  ( .D(mc_data_i[21]), .CLK(n9), .Q(
        mc_data_ir[21]) );
  DFFX1_RVT \mc_data_ir_reg[20]  ( .D(mc_data_i[20]), .CLK(n9), .Q(
        mc_data_ir[20]) );
  DFFX1_RVT \mc_data_ir_reg[19]  ( .D(mc_data_i[19]), .CLK(n9), .Q(
        mc_data_ir[19]) );
  DFFX1_RVT \mc_data_ir_reg[18]  ( .D(mc_data_i[18]), .CLK(n9), .Q(
        mc_data_ir[18]) );
  DFFX1_RVT \mc_data_ir_reg[17]  ( .D(mc_data_i[17]), .CLK(n9), .Q(
        mc_data_ir[17]) );
  DFFX1_RVT \mc_data_ir_reg[16]  ( .D(mc_data_i[16]), .CLK(n9), .Q(
        mc_data_ir[16]) );
  DFFX1_RVT \mc_data_ir_reg[10]  ( .D(mc_data_i[10]), .CLK(n17), .Q(
        mc_data_ir[10]) );
  DFFX1_RVT \mc_data_ir_reg[15]  ( .D(mc_data_i[15]), .CLK(n9), .Q(
        mc_data_ir[15]) );
  DFFX1_RVT \mc_data_ir_reg[14]  ( .D(mc_data_i[14]), .CLK(n9), .Q(
        mc_data_ir[14]) );
  DFFX1_RVT \mc_data_ir_reg[13]  ( .D(mc_data_i[13]), .CLK(n17), .Q(
        mc_data_ir[13]) );
  DFFX1_RVT \mc_data_ir_reg[12]  ( .D(mc_data_i[12]), .CLK(n17), .Q(
        mc_data_ir[12]) );
  DFFX1_RVT \mc_data_ir_reg[11]  ( .D(mc_data_i[11]), .CLK(n17), .Q(
        mc_data_ir[11]) );
  DFFX1_RVT \mc_data_ir_reg[9]  ( .D(mc_data_i[9]), .CLK(n17), .Q(
        mc_data_ir[9]) );
  DFFX1_RVT \mc_data_ir_reg[8]  ( .D(mc_data_i[8]), .CLK(n17), .Q(
        mc_data_ir[8]) );
  DFFX1_RVT \mc_data_ir_reg[2]  ( .D(mc_data_i[2]), .CLK(n17), .Q(
        mc_data_ir[2]) );
  DFFX1_RVT \mc_data_ir_reg[1]  ( .D(mc_data_i[1]), .CLK(n18), .Q(
        mc_data_ir[1]) );
  DFFX1_RVT \mc_data_ir_reg[0]  ( .D(mc_data_i[0]), .CLK(n18), .Q(
        mc_data_ir[0]) );
  DFFX1_RVT \mc_data_ir_reg[7]  ( .D(mc_data_i[7]), .CLK(n17), .Q(
        mc_data_ir[7]) );
  DFFX1_RVT \mc_data_ir_reg[6]  ( .D(mc_data_i[6]), .CLK(n17), .Q(
        mc_data_ir[6]) );
  DFFX1_RVT \mc_data_ir_reg[5]  ( .D(mc_data_i[5]), .CLK(n17), .Q(
        mc_data_ir[5]) );
  DFFX1_RVT \mc_data_ir_reg[4]  ( .D(mc_data_i[4]), .CLK(n17), .Q(
        mc_data_ir[4]) );
  DFFX1_RVT \mc_data_ir_reg[3]  ( .D(mc_data_i[3]), .CLK(n17), .Q(
        mc_data_ir[3]) );
  DFFX1_RVT \mc_dqm_r_reg[3]  ( .D(n32), .CLK(clk), .Q(mc_dqm_r[3]) );
  DFFX1_RVT \mc_dqm_r_reg[2]  ( .D(n31), .CLK(clk), .Q(mc_dqm_r[2]) );
  DFFX1_RVT \mc_dqm_r_reg[1]  ( .D(n30), .CLK(clk), .Q(mc_dqm_r[1]) );
  DFFX1_RVT \mc_dqm_r_reg[0]  ( .D(n29), .CLK(clk), .Q(mc_dqm_r[0]) );
  DFFX1_RVT mc_rp_reg ( .D(N2), .CLK(n18), .Q(mc_rp) );
  DFFX1_RVT mc_bg_reg ( .D(mc_bg_d), .CLK(n18), .Q(mc_bg) );
  DFFX1_RVT \mc_addr_reg[23]  ( .D(mc_addr_d[23]), .CLK(n35), .Q(mc_addr[23])
         );
  DFFX1_RVT \mc_addr_reg[22]  ( .D(mc_addr_d[22]), .CLK(n35), .Q(mc_addr[22])
         );
  DFFX1_RVT \mc_addr_reg[21]  ( .D(mc_addr_d[21]), .CLK(n35), .Q(mc_addr[21])
         );
  DFFX1_RVT \mc_addr_reg[20]  ( .D(mc_addr_d[20]), .CLK(n35), .Q(mc_addr[20])
         );
  DFFX1_RVT \mc_addr_reg[19]  ( .D(mc_addr_d[19]), .CLK(n44), .Q(mc_addr[19])
         );
  DFFX1_RVT \mc_addr_reg[18]  ( .D(mc_addr_d[18]), .CLK(n44), .Q(mc_addr[18])
         );
  DFFX1_RVT \mc_addr_reg[17]  ( .D(mc_addr_d[17]), .CLK(n44), .Q(mc_addr[17])
         );
  DFFX1_RVT \mc_addr_reg[16]  ( .D(mc_addr_d[16]), .CLK(n44), .Q(mc_addr[16])
         );
  DFFX1_RVT \mc_addr_reg[15]  ( .D(mc_addr_d[15]), .CLK(n44), .Q(mc_addr[15])
         );
  DFFX1_RVT \mc_addr_reg[14]  ( .D(mc_addr_d[14]), .CLK(n44), .Q(mc_addr[14])
         );
  DFFX1_RVT \mc_addr_reg[13]  ( .D(mc_addr_d[13]), .CLK(n44), .Q(mc_addr[13])
         );
  DFFX1_RVT \mc_addr_reg[12]  ( .D(mc_addr_d[12]), .CLK(n44), .Q(mc_addr[12])
         );
  DFFX1_RVT \mc_addr_reg[11]  ( .D(mc_addr_d[11]), .CLK(n44), .Q(mc_addr[11])
         );
  DFFX1_RVT \mc_addr_reg[10]  ( .D(mc_addr_d[10]), .CLK(n44), .Q(mc_addr[10])
         );
  DFFX1_RVT \mc_addr_reg[9]  ( .D(mc_addr_d[9]), .CLK(n44), .Q(mc_addr[9]) );
  DFFX1_RVT \mc_addr_reg[8]  ( .D(mc_addr_d[8]), .CLK(n44), .Q(mc_addr[8]) );
  DFFX1_RVT \mc_addr_reg[7]  ( .D(mc_addr_d[7]), .CLK(n45), .Q(mc_addr[7]) );
  DFFX1_RVT \mc_addr_reg[6]  ( .D(mc_addr_d[6]), .CLK(n45), .Q(mc_addr[6]) );
  DFFX1_RVT \mc_addr_reg[5]  ( .D(mc_addr_d[5]), .CLK(n45), .Q(mc_addr[5]) );
  DFFX1_RVT \mc_addr_reg[4]  ( .D(mc_addr_d[4]), .CLK(n45), .Q(mc_addr[4]) );
  DFFX1_RVT \mc_addr_reg[3]  ( .D(mc_addr_d[3]), .CLK(n45), .Q(mc_addr[3]) );
  DFFX1_RVT \mc_addr_reg[2]  ( .D(mc_addr_d[2]), .CLK(n45), .Q(mc_addr[2]) );
  DFFX1_RVT \mc_addr_reg[1]  ( .D(mc_addr_d[1]), .CLK(n45), .Q(mc_addr[1]) );
  DFFX1_RVT \mc_addr_reg[0]  ( .D(mc_addr_d[0]), .CLK(n45), .Q(mc_addr[0]) );
  DFFX1_RVT mc_we__reg ( .D(we_), .CLK(n45), .Q(mc_we_) );
  DFFX1_RVT mc_cas__reg ( .D(cas_), .CLK(n45), .Q(mc_cas_) );
  DFFX1_RVT mc_ras__reg ( .D(ras_), .CLK(n45), .Q(mc_ras_) );
  SDFFSSRX1_RVT \mc_dqm_reg[3]  ( .RSTB(data_oe), .SETB(1'b1), .D(n28), .SI(
        1'b1), .SE(n23), .CLK(mc_clk), .Q(mc_dqm[3]) );
  SDFFSSRX1_RVT \mc_dqm_reg[2]  ( .RSTB(data_oe), .SETB(1'b1), .D(n27), .SI(
        1'b1), .SE(n23), .CLK(mc_clk), .Q(mc_dqm[2]) );
  SDFFSSRX1_RVT \mc_dqm_reg[1]  ( .RSTB(data_oe), .SETB(1'b1), .D(n26), .SI(
        1'b1), .SE(n23), .CLK(n46), .Q(mc_dqm[1]) );
  SDFFSSRX1_RVT \mc_dqm_reg[0]  ( .RSTB(data_oe), .SETB(1'b1), .D(n25), .SI(
        1'b1), .SE(n23), .CLK(n46), .Q(mc_dqm[0]) );
  DFFARX1_RVT mc_data_oe_reg ( .D(N3), .CLK(n46), .RSTB(n53), .Q(mc_data_oe)
         );
  DFFASX1_RVT \mc_cs__reg[0]  ( .D(n43), .CLK(n46), .SETB(n53), .Q(mc_cs_[0])
         );
  DFFASX1_RVT \mc_cs__reg[1]  ( .D(n42), .CLK(n46), .SETB(n53), .Q(mc_cs_[1])
         );
  DFFASX1_RVT \mc_cs__reg[2]  ( .D(n41), .CLK(n46), .SETB(n53), .Q(mc_cs_[2])
         );
  DFFASX1_RVT \mc_cs__reg[3]  ( .D(n40), .CLK(n46), .SETB(n53), .Q(mc_cs_[3])
         );
  DFFASX1_RVT \mc_cs__reg[4]  ( .D(n39), .CLK(n46), .SETB(n53), .Q(mc_cs_[4])
         );
  DFFASX1_RVT \mc_cs__reg[5]  ( .D(n38), .CLK(n46), .SETB(n53), .Q(mc_cs_[5])
         );
  DFFASX1_RVT \mc_cs__reg[6]  ( .D(n37), .CLK(n46), .SETB(n53), .Q(mc_cs_[6])
         );
  DFFASX1_RVT \mc_cs__reg[7]  ( .D(n36), .CLK(n46), .SETB(n53), .Q(mc_cs_[7])
         );
  SDFFASX1_RVT mc_oe__reg ( .D(susp_sel), .SI(1'b1), .SE(oe_), .CLK(n5), 
        .SETB(n53), .Q(mc_oe_) );
  DFFX1_RVT mc_zz_o_reg ( .D(suspended_o), .CLK(n34), .Q(mc_zz_o) );
  DFFX1_RVT mc_c_oe_reg ( .D(mc_c_oe_d), .CLK(n18), .Q(mc_c_oe) );
  DFFX1_RVT \mc_data_o_reg[31]  ( .D(mc_data_od[31]), .CLK(n18), .Q(
        mc_data_o[31]) );
  DFFX1_RVT \mc_data_o_reg[30]  ( .D(mc_data_od[30]), .CLK(n18), .Q(
        mc_data_o[30]) );
  DFFX1_RVT \mc_data_o_reg[29]  ( .D(mc_data_od[29]), .CLK(n18), .Q(
        mc_data_o[29]) );
  DFFX1_RVT \mc_data_o_reg[28]  ( .D(mc_data_od[28]), .CLK(n18), .Q(
        mc_data_o[28]) );
  DFFX1_RVT \mc_data_o_reg[27]  ( .D(mc_data_od[27]), .CLK(n18), .Q(
        mc_data_o[27]) );
  DFFX1_RVT \mc_data_o_reg[26]  ( .D(mc_data_od[26]), .CLK(n33), .Q(
        mc_data_o[26]) );
  DFFX1_RVT \mc_data_o_reg[25]  ( .D(mc_data_od[25]), .CLK(n33), .Q(
        mc_data_o[25]) );
  DFFX1_RVT \mc_data_o_reg[24]  ( .D(mc_data_od[24]), .CLK(n33), .Q(
        mc_data_o[24]) );
  DFFX1_RVT \mc_data_o_reg[23]  ( .D(mc_data_od[23]), .CLK(n33), .Q(
        mc_data_o[23]) );
  DFFX1_RVT \mc_data_o_reg[22]  ( .D(mc_data_od[22]), .CLK(n33), .Q(
        mc_data_o[22]) );
  DFFX1_RVT \mc_data_o_reg[21]  ( .D(mc_data_od[21]), .CLK(n33), .Q(
        mc_data_o[21]) );
  DFFX1_RVT \mc_data_o_reg[20]  ( .D(mc_data_od[20]), .CLK(n33), .Q(
        mc_data_o[20]) );
  DFFX1_RVT \mc_data_o_reg[19]  ( .D(mc_data_od[19]), .CLK(n33), .Q(
        mc_data_o[19]) );
  DFFX1_RVT \mc_data_o_reg[18]  ( .D(mc_data_od[18]), .CLK(n33), .Q(
        mc_data_o[18]) );
  DFFX1_RVT \mc_data_o_reg[17]  ( .D(mc_data_od[17]), .CLK(n33), .Q(
        mc_data_o[17]) );
  DFFX1_RVT \mc_data_o_reg[16]  ( .D(mc_data_od[16]), .CLK(n33), .Q(
        mc_data_o[16]) );
  DFFX1_RVT \mc_data_o_reg[15]  ( .D(mc_data_od[15]), .CLK(n33), .Q(
        mc_data_o[15]) );
  DFFX1_RVT \mc_data_o_reg[14]  ( .D(mc_data_od[14]), .CLK(n34), .Q(
        mc_data_o[14]) );
  DFFX1_RVT \mc_data_o_reg[13]  ( .D(mc_data_od[13]), .CLK(n34), .Q(
        mc_data_o[13]) );
  DFFX1_RVT \mc_data_o_reg[12]  ( .D(mc_data_od[12]), .CLK(n34), .Q(
        mc_data_o[12]) );
  DFFX1_RVT \mc_data_o_reg[11]  ( .D(mc_data_od[11]), .CLK(n34), .Q(
        mc_data_o[11]) );
  DFFX1_RVT \mc_data_o_reg[10]  ( .D(mc_data_od[10]), .CLK(n34), .Q(
        mc_data_o[10]) );
  DFFX1_RVT \mc_data_o_reg[9]  ( .D(mc_data_od[9]), .CLK(n34), .Q(mc_data_o[9]) );
  DFFX1_RVT \mc_data_o_reg[8]  ( .D(mc_data_od[8]), .CLK(n34), .Q(mc_data_o[8]) );
  DFFX1_RVT \mc_data_o_reg[7]  ( .D(mc_data_od[7]), .CLK(n34), .Q(mc_data_o[7]) );
  DFFX1_RVT \mc_data_o_reg[6]  ( .D(mc_data_od[6]), .CLK(n34), .Q(mc_data_o[6]) );
  DFFX1_RVT \mc_data_o_reg[5]  ( .D(mc_data_od[5]), .CLK(n34), .Q(mc_data_o[5]) );
  DFFX1_RVT \mc_data_o_reg[4]  ( .D(mc_data_od[4]), .CLK(n34), .Q(mc_data_o[4]) );
  DFFX1_RVT \mc_data_o_reg[3]  ( .D(mc_data_od[3]), .CLK(n35), .Q(mc_data_o[3]) );
  DFFX1_RVT \mc_data_o_reg[2]  ( .D(mc_data_od[2]), .CLK(n35), .Q(mc_data_o[2]) );
  DFFX1_RVT \mc_data_o_reg[1]  ( .D(mc_data_od[1]), .CLK(n35), .Q(mc_data_o[1]) );
  DFFX1_RVT \mc_data_o_reg[0]  ( .D(mc_data_od[0]), .CLK(n35), .Q(mc_data_o[0]) );
  DFFX1_RVT \mc_dp_o_reg[3]  ( .D(mc_dp_od[3]), .CLK(n35), .Q(mc_dp_o[3]) );
  DFFX1_RVT \mc_dp_o_reg[2]  ( .D(mc_dp_od[2]), .CLK(n35), .Q(mc_dp_o[2]) );
  DFFX1_RVT \mc_dp_o_reg[1]  ( .D(mc_dp_od[1]), .CLK(n35), .Q(mc_dp_o[1]) );
  DFFX1_RVT \mc_dp_o_reg[0]  ( .D(mc_dp_od[0]), .CLK(n35), .Q(mc_dp_o[0]) );
  DFFX1_RVT mc_adsc__reg ( .D(n48), .CLK(n45), .Q(mc_adsc_) );
  DFFX1_RVT mc_adv__reg ( .D(n49), .CLK(n46), .Q(mc_adv_) );
  DFFX1_RVT mc_sts_ir_reg ( .D(mc_sts_i), .CLK(n5), .Q(mc_sts_ir) );
  DFFX1_RVT \mc_dqm_r2_reg[3]  ( .D(mc_dqm_r[3]), .CLK(clk), .QN(n28) );
  DFFX1_RVT \mc_dqm_r2_reg[2]  ( .D(mc_dqm_r[2]), .CLK(clk), .QN(n27) );
  DFFX1_RVT \mc_dqm_r2_reg[1]  ( .D(mc_dqm_r[1]), .CLK(clk), .QN(n26) );
  DFFX1_RVT \mc_dqm_r2_reg[0]  ( .D(mc_dqm_r[0]), .CLK(clk), .QN(n25) );
  AND2X1_RVT U3 ( .A1(lmr_sel), .A2(n2), .Y(n7) );
  NOR2X0_RVT U4 ( .A1(n3), .A2(lmr_sel), .Y(n8) );
  INVX1_RVT U5 ( .A(n4), .Y(n54) );
  INVX1_RVT U6 ( .A(n47), .Y(n46) );
  INVX1_RVT U7 ( .A(n47), .Y(n45) );
  INVX1_RVT U8 ( .A(n47), .Y(n44) );
  INVX1_RVT U9 ( .A(n47), .Y(n35) );
  INVX1_RVT U10 ( .A(n47), .Y(n33) );
  INVX1_RVT U11 ( .A(n47), .Y(n18) );
  INVX1_RVT U12 ( .A(n47), .Y(n17) );
  INVX1_RVT U13 ( .A(n47), .Y(n9) );
  INVX1_RVT U14 ( .A(n47), .Y(n34) );
  INVX1_RVT U15 ( .A(n47), .Y(n5) );
  INVX1_RVT U16 ( .A(mc_adsc_d), .Y(n48) );
  INVX1_RVT U17 ( .A(mc_adv_d), .Y(n49) );
  INVX1_RVT U18 ( .A(n2), .Y(n3) );
  AO22X1_RVT U19 ( .A1(n4), .A2(mc_dqm_r[0]), .A3(wb_sel_i[0]), .A4(n54), .Y(
        n29) );
  AO22X1_RVT U20 ( .A1(n4), .A2(mc_dqm_r[1]), .A3(wb_sel_i[1]), .A4(n54), .Y(
        n30) );
  AO22X1_RVT U21 ( .A1(n4), .A2(mc_dqm_r[2]), .A3(wb_sel_i[2]), .A4(n54), .Y(
        n31) );
  AO22X1_RVT U22 ( .A1(n4), .A2(mc_dqm_r[3]), .A3(wb_sel_i[3]), .A4(n54), .Y(
        n32) );
  NAND2X0_RVT U23 ( .A1(wb_stb_i), .A2(wb_cyc_i), .Y(n4) );
  INVX1_RVT U24 ( .A(mc_clk), .Y(n47) );
  AO21X1_RVT U25 ( .A1(n1), .A2(n52), .A3(susp_sel), .Y(n23) );
  NAND2X0_RVT U26 ( .A1(wb_cycle), .A2(n50), .Y(n1) );
  INVX1_RVT U27 ( .A(data_oe), .Y(n52) );
  INVX1_RVT U28 ( .A(wr_cycle), .Y(n50) );
  AND3X1_RVT U29 ( .A1(data_oe), .A2(n51), .A3(mc_c_oe_d), .Y(N3) );
  INVX1_RVT U30 ( .A(susp_sel), .Y(n51) );
  INVX1_RVT U31 ( .A(rst), .Y(n53) );
  NOR2X0_RVT U32 ( .A1(rfr_ack), .A2(susp_sel), .Y(n2) );
  NOR2X0_RVT U33 ( .A1(suspended_o), .A2(fs), .Y(N2) );
  NAND2X0_RVT U34 ( .A1(cs_en), .A2(n6), .Y(n36) );
  AO222X1_RVT U35 ( .A1(spec_req_cs[7]), .A2(n7), .A3(cs[7]), .A4(n8), .A5(
        cs_need_rfr[7]), .A6(n3), .Y(n6) );
  NAND2X0_RVT U36 ( .A1(cs_en), .A2(n10), .Y(n37) );
  AO222X1_RVT U37 ( .A1(spec_req_cs[6]), .A2(n7), .A3(cs[6]), .A4(n8), .A5(
        cs_need_rfr[6]), .A6(n3), .Y(n10) );
  NAND2X0_RVT U38 ( .A1(cs_en), .A2(n11), .Y(n38) );
  AO222X1_RVT U44 ( .A1(spec_req_cs[5]), .A2(n7), .A3(cs[5]), .A4(n8), .A5(
        cs_need_rfr[5]), .A6(n3), .Y(n11) );
  NAND2X0_RVT U45 ( .A1(cs_en), .A2(n12), .Y(n39) );
  AO222X1_RVT U46 ( .A1(spec_req_cs[4]), .A2(n7), .A3(cs[4]), .A4(n8), .A5(
        cs_need_rfr[4]), .A6(n3), .Y(n12) );
  NAND2X0_RVT U47 ( .A1(cs_en), .A2(n13), .Y(n40) );
  AO222X1_RVT U48 ( .A1(spec_req_cs[3]), .A2(n7), .A3(cs[3]), .A4(n8), .A5(
        cs_need_rfr[3]), .A6(n3), .Y(n13) );
  NAND2X0_RVT U49 ( .A1(cs_en), .A2(n14), .Y(n41) );
  AO222X1_RVT U50 ( .A1(spec_req_cs[2]), .A2(n7), .A3(cs[2]), .A4(n8), .A5(
        cs_need_rfr[2]), .A6(n3), .Y(n14) );
  NAND2X0_RVT U51 ( .A1(cs_en), .A2(n15), .Y(n42) );
  AO222X1_RVT U52 ( .A1(spec_req_cs[1]), .A2(n7), .A3(cs[1]), .A4(n8), .A5(
        cs_need_rfr[1]), .A6(n3), .Y(n15) );
  NAND2X0_RVT U53 ( .A1(cs_en), .A2(n16), .Y(n43) );
  AO222X1_RVT U54 ( .A1(spec_req_cs[0]), .A2(n7), .A3(cs[0]), .A4(n8), .A5(
        cs_need_rfr[0]), .A6(n3), .Y(n16) );
endmodule


module mc_top ( clk_i, rst_i, wb_data_i, wb_data_o, wb_addr_i, wb_sel_i, 
        wb_we_i, wb_cyc_i, wb_stb_i, wb_ack_o, wb_err_o, susp_req_i, 
        resume_req_i, suspended_o, poc_o, mc_clk_i, mc_br_pad_i, mc_bg_pad_o, 
        mc_ack_pad_i, mc_addr_pad_o, mc_data_pad_i, mc_data_pad_o, mc_dp_pad_i, 
        mc_dp_pad_o, mc_doe_pad_doe_o, mc_dqm_pad_o, mc_oe_pad_o_, 
        mc_we_pad_o_, mc_cas_pad_o_, mc_ras_pad_o_, mc_cke_pad_o_, 
        mc_cs_pad_o_, mc_sts_pad_i, mc_rp_pad_o_, mc_vpen_pad_o, 
        mc_adsc_pad_o_, mc_adv_pad_o_, mc_zz_pad_o, mc_coe_pad_coe_o );
  input [31:0] wb_data_i;
  output [31:0] wb_data_o;
  input [31:0] wb_addr_i;
  input [3:0] wb_sel_i;
  output [31:0] poc_o;
  output [23:0] mc_addr_pad_o;
  input [31:0] mc_data_pad_i;
  output [31:0] mc_data_pad_o;
  input [3:0] mc_dp_pad_i;
  output [3:0] mc_dp_pad_o;
  output [3:0] mc_dqm_pad_o;
  output [7:0] mc_cs_pad_o_;
  input clk_i, rst_i, wb_we_i, wb_cyc_i, wb_stb_i, susp_req_i, resume_req_i,
         mc_clk_i, mc_br_pad_i, mc_ack_pad_i, mc_sts_pad_i;
  output wb_ack_o, wb_err_o, suspended_o, mc_bg_pad_o, mc_doe_pad_doe_o,
         mc_oe_pad_o_, mc_we_pad_o_, mc_cas_pad_o_, mc_ras_pad_o_,
         mc_cke_pad_o_, mc_rp_pad_o_, mc_vpen_pad_o, mc_adsc_pad_o_,
         mc_adv_pad_o_, mc_zz_pad_o, mc_coe_pad_coe_o;
  wire   rfr_ack, susp_sel, lmr_ack, init_ack, lmr_sel, not_mem_cyc, mem_ack_r,
         mem_ack, wp_err, mc_sts_ir, fs, cs_le, cs_le_d, init_req, lmr_req,
         wb_write_go, wr_hold, cas_, cmd_a10, row_sel, next_adr, wr_cycle,
         bank_set, bank_clr, bank_clr_all, bank_open, any_bank_open, row_same,
         wb_read_go, dv, pack_le0, pack_le1, pack_le2, par_err, rfr_req,
         wb_first, wb_wait, err, mc_br_r, mc_bg_d, mc_ack_r, data_oe, oe_, we_,
         ras_, cke_, cs_en, mc_adsc_d, mc_adv_d, mc_c_oe_d, wb_cycle, n3, n4,
         n6, n8, n9, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;
  wire   [7:0] obct_cs;
  wire   [7:0] cs_need_rfr;
  wire   [7:0] spec_req_cs;
  wire   [7:0] cs;
  wire   [31:0] tms_s;
  wire   [31:0] sp_tms;
  wire   [31:0] tms;
  wire   [31:0] csc_s;
  wire   [31:0] sp_csc;
  wire   [31:0] csc;
  wire   [31:0] rf_dout;
  wire   [35:0] mc_data_ir;
  wire   [2:0] ref_int;
  wire   [7:0] rfr_ps_val;
  wire   [23:0] mc_addr_d;
  wire   [12:0] row_adr;
  wire   [1:0] bank_adr;
  wire   [10:0] page_size;
  wire   [31:0] mem_dout;
  wire   [31:0] mc_data_od;
  wire   [3:0] mc_dp_od;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25;

  mc_rf u0 ( .clk(clk_i), .rst(rst_i), .wb_data_i(wb_data_i), .rf_dout(rf_dout), .wb_addr_i(wb_addr_i), .wb_we_i(wb_we_i), .wb_cyc_i(n16), .wb_stb_i(wb_stb_i), .wp_err(wp_err), .csc(csc), .tms(tms), .poc(poc_o), .sp_csc(sp_csc), 
        .sp_tms(sp_tms), .cs({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, cs[1:0]}), 
        .mc_data_i(mc_data_ir[31:0]), .mc_sts(mc_sts_ir), .mc_vpen(
        mc_vpen_pad_o), .fs(fs), .cs_le_d(cs_le_d), .cs_le(cs_le), 
        .cs_need_rfr({SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, cs_need_rfr[1:0]}), 
        .ref_int(ref_int), .rfr_ps_val(rfr_ps_val), .init_req(init_req), 
        .init_ack(init_ack), .lmr_req(lmr_req), .lmr_ack(lmr_ack), 
        .spec_req_cs({SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, spec_req_cs[1:0]})
         );
  mc_adr_sel u1 ( .clk(clk_i), .csc({csc_s[31:5], n19, csc_s[3:2], n8, 
        csc_s[0]}), .tms(tms_s), .wb_ack_o(mem_ack_r), .wb_stb_i(wb_stb_i), 
        .wb_addr_i(wb_addr_i), .wb_we_i(wb_we_i), .wb_write_go(wb_write_go), 
        .wr_hold(wr_hold), .cas_(cas_), .mc_addr(mc_addr_d), .row_adr(row_adr), 
        .bank_adr(bank_adr), .rfr_ack(n22), .cs_le(cs_le), .cmd_a10(cmd_a10), 
        .row_sel(row_sel), .lmr_sel(n30), .next_adr(next_adr), .wr_cycle(
        wr_cycle), .page_size({page_size[10:8], SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25}) );
  mc_obct_top u2 ( .clk(clk_i), .rst(rst_i), .cs({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, obct_cs[1:0]}), .row_adr(row_adr), .bank_adr(bank_adr), 
        .bank_set(bank_set), .bank_clr(bank_clr), .bank_clr_all(bank_clr_all), 
        .bank_open(bank_open), .any_bank_open(any_bank_open), .row_same(
        row_same), .rfr_ack(n22) );
  mc_dp u3 ( .clk(clk_i), .rst(rst_i), .csc(csc), .wb_cyc_i(n16), .wb_stb_i(
        wb_stb_i), .wb_ack_o(mem_ack_r), .mem_ack(mem_ack), .wb_data_i(
        wb_data_i), .wb_data_o(mem_dout), .wb_read_go(wb_read_go), .wb_we_i(
        wb_we_i), .mc_clk(mc_clk_i), .mc_data_del(mc_data_ir), .mc_dp_i(
        mc_dp_pad_i), .mc_data_o(mc_data_od), .mc_dp_o(mc_dp_od), .dv(dv), 
        .pack_le0(pack_le0), .pack_le1(pack_le1), .pack_le2(pack_le2), 
        .byte_en(wb_sel_i), .par_err(par_err) );
  mc_refresh u4 ( .clk(clk_i), .rst(rst_i), .cs_need_rfr({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, cs_need_rfr[1:0]}), .ref_int(ref_int), .rfr_req(
        rfr_req), .rfr_ack(n22), .rfr_ps_val(rfr_ps_val) );
  mc_timing u5 ( .clk(clk_i), .rst(rst_i), .wb_cyc_i(n16), .wb_stb_i(wb_stb_i), 
        .wb_we_i(wb_we_i), .wb_read_go(wb_read_go), .wb_write_go(wb_write_go), 
        .wb_first(wb_first), .wb_wait(wb_wait), .mem_ack(mem_ack), .err(err), 
        .susp_req(susp_req_i), .resume_req(resume_req_i), .suspended(
        suspended_o), .susp_sel(susp_sel), .mc_clk(mc_clk_i), .data_oe(data_oe), .oe_(oe_), .we_(we_), .cas_(cas_), .ras_(ras_), .cke_(cke_), .cs_en(cs_en), 
        .wb_cycle(wb_cycle), .wr_cycle(wr_cycle), .mc_br(mc_br_r), .mc_bg(
        mc_bg_d), .mc_adsc(mc_adsc_d), .mc_adv(mc_adv_d), .mc_c_oe(mc_c_oe_d), 
        .mc_ack(mc_ack_r), .not_mem_cyc(not_mem_cyc), .csc({csc_s[31:2], n8, 
        csc_s[0]}), .tms(tms_s), .cs({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        obct_cs[1:0]}), .lmr_req(lmr_req), .lmr_ack(lmr_ack), .cs_le_d(cs_le_d), .cs_le(cs_le), .cmd_a10(cmd_a10), .row_sel(row_sel), .next_adr(next_adr), 
        .page_size({page_size[10:8], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .bank_set(bank_set), .bank_clr(bank_clr), .bank_clr_all(
        bank_clr_all), .bank_open(bank_open), .any_bank_open(any_bank_open), 
        .row_same(row_same), .dv(dv), .pack_le0(pack_le0), .pack_le1(pack_le1), 
        .pack_le2(pack_le2), .par_err(par_err), .rfr_req(rfr_req), .rfr_ack(
        rfr_ack), .init_req(init_req), .init_ack(init_ack) );
  mc_wb_if u6 ( .clk(clk_i), .rst(rst_i), .wb_addr_i(wb_addr_i), .wb_cyc_i(
        wb_cyc_i), .wb_stb_i(wb_stb_i), .wb_we_i(wb_we_i), .wb_err(wb_err_o), 
        .wb_ack_o(wb_ack_o), .wb_read_go(wb_read_go), .wb_write_go(wb_write_go), .wb_first(wb_first), .wb_wait(wb_wait), .mem_ack(mem_ack), .wr_hold(wr_hold), 
        .err(err), .par_err(par_err), .wp_err(wp_err), .wb_data_o(wb_data_o), 
        .mem_dout(mem_dout), .rf_dout(rf_dout) );
  mc_mem_if u7 ( .clk(clk_i), .rst(rst_i), .mc_clk(mc_clk_i), .mc_br(
        mc_br_pad_i), .mc_bg(mc_bg_pad_o), .mc_addr(mc_addr_pad_o), 
        .mc_data_o(mc_data_pad_o), .mc_dp_o(mc_dp_pad_o), .mc_data_oe(
        mc_doe_pad_doe_o), .mc_dqm(mc_dqm_pad_o), .mc_oe_(mc_oe_pad_o_), 
        .mc_we_(mc_we_pad_o_), .mc_cas_(mc_cas_pad_o_), .mc_ras_(mc_ras_pad_o_), .mc_cke_(mc_cke_pad_o_), .mc_cs_(mc_cs_pad_o_), .mc_adsc_(mc_adsc_pad_o_), 
        .mc_adv_(mc_adv_pad_o_), .mc_ack(mc_ack_pad_i), .mc_rp(mc_rp_pad_o_), 
        .mc_c_oe(mc_coe_pad_coe_o), .mc_c_oe_d(mc_c_oe_d), .mc_br_r(mc_br_r), 
        .mc_bg_d(mc_bg_d), .mc_data_od(mc_data_od), .mc_dp_od(mc_dp_od), 
        .mc_addr_d(mc_addr_d), .mc_ack_r(mc_ack_r), .we_(we_), .ras_(ras_), 
        .cas_(cas_), .cke_(cke_), .mc_adsc_d(mc_adsc_d), .mc_adv_d(mc_adv_d), 
        .cs_en(cs_en), .rfr_ack(n22), .cs_need_rfr({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, cs_need_rfr[1:0]}), .lmr_sel(n11), .spec_req_cs({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, spec_req_cs[1:0]}), .cs({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, cs[1:0]}), .fs(fs), .data_oe(data_oe), 
        .susp_sel(susp_sel), .suspended_o(suspended_o), .oe_(oe_), .wb_cyc_i(
        n16), .wb_stb_i(wb_stb_i), .wb_sel_i(wb_sel_i), .wb_cycle(wb_cycle), 
        .wr_cycle(wr_cycle), .mc_data_ir(mc_data_ir), .mc_data_i(mc_data_pad_i), .mc_dp_i(mc_dp_pad_i), .mc_sts_ir(mc_sts_ir), .mc_sts_i(mc_sts_pad_i), 
        .mc_zz_o(mc_zz_pad_o) );
  DFFX1_RVT mem_ack_r_reg ( .D(mem_ack), .CLK(clk_i), .Q(mem_ack_r) );
  AND3X1_RVT U84 ( .A1(n16), .A2(n6), .A3(wb_stb_i), .Y(not_mem_cyc) );
  OAI22X1_RVT U85 ( .A1(n17), .A2(n23), .A3(n18), .A4(n14), .Y(n8) );
  AO22X1_RVT U86 ( .A1(sp_csc[20]), .A2(n28), .A3(csc[20]), .A4(n20), .Y(
        csc_s[20]) );
  AO22X1_RVT U87 ( .A1(sp_csc[14]), .A2(n30), .A3(csc[14]), .A4(n20), .Y(
        csc_s[14]) );
  AO22X1_RVT U88 ( .A1(sp_csc[17]), .A2(n30), .A3(csc[17]), .A4(n20), .Y(
        csc_s[17]) );
  INVX1_RVT U89 ( .A(n32), .Y(n30) );
  INVX1_RVT U90 ( .A(n34), .Y(n28) );
  INVX1_RVT U91 ( .A(n33), .Y(n29) );
  NBUFFX2_RVT U92 ( .A(n34), .Y(n20) );
  AO22X1_RVT U93 ( .A1(sp_csc[13]), .A2(n29), .A3(csc[13]), .A4(n31), .Y(
        csc_s[13]) );
  AO22X1_RVT U94 ( .A1(sp_csc[15]), .A2(n28), .A3(csc[15]), .A4(n31), .Y(
        csc_s[15]) );
  AO22X1_RVT U95 ( .A1(sp_csc[19]), .A2(n29), .A3(csc[19]), .A4(n31), .Y(
        csc_s[19]) );
  AO22X1_RVT U96 ( .A1(sp_csc[23]), .A2(n28), .A3(csc[23]), .A4(n31), .Y(
        csc_s[23]) );
  AO22X1_RVT U97 ( .A1(sp_csc[25]), .A2(n29), .A3(csc[25]), .A4(n31), .Y(
        csc_s[25]) );
  AO22X1_RVT U98 ( .A1(sp_csc[29]), .A2(n29), .A3(csc[29]), .A4(n31), .Y(
        csc_s[29]) );
  AO22X1_RVT U99 ( .A1(sp_csc[31]), .A2(n28), .A3(csc[31]), .A4(n31), .Y(
        csc_s[31]) );
  AO22X1_RVT U100 ( .A1(sp_tms[30]), .A2(n29), .A3(tms[30]), .A4(n31), .Y(
        tms_s[30]) );
  AO22X1_RVT U101 ( .A1(sp_csc[22]), .A2(n30), .A3(csc[22]), .A4(n31), .Y(
        csc_s[22]) );
  AO22X1_RVT U102 ( .A1(sp_csc[27]), .A2(n30), .A3(csc[27]), .A4(n31), .Y(
        csc_s[27]) );
  AO22X1_RVT U103 ( .A1(sp_csc[8]), .A2(n30), .A3(csc[8]), .A4(n31), .Y(
        csc_s[8]) );
  AO22X1_RVT U104 ( .A1(sp_tms[31]), .A2(n30), .A3(tms[31]), .A4(n31), .Y(
        tms_s[31]) );
  INVX1_RVT U105 ( .A(n13), .Y(n34) );
  INVX1_RVT U106 ( .A(n13), .Y(n23) );
  INVX1_RVT U107 ( .A(n13), .Y(n32) );
  INVX1_RVT U108 ( .A(n14), .Y(n33) );
  INVX1_RVT U109 ( .A(n14), .Y(n31) );
  AO22X1_RVT U110 ( .A1(sp_csc[0]), .A2(n12), .A3(csc[0]), .A4(n31), .Y(
        csc_s[0]) );
  AO22X1_RVT U111 ( .A1(sp_csc[11]), .A2(n12), .A3(csc[11]), .A4(n20), .Y(
        csc_s[11]) );
  AO22X1_RVT U112 ( .A1(sp_csc[16]), .A2(n12), .A3(csc[16]), .A4(n31), .Y(
        csc_s[16]) );
  AO22X1_RVT U113 ( .A1(sp_csc[21]), .A2(n12), .A3(csc[21]), .A4(n20), .Y(
        csc_s[21]) );
  AO22X1_RVT U114 ( .A1(sp_csc[24]), .A2(n12), .A3(csc[24]), .A4(n31), .Y(
        csc_s[24]) );
  AO22X1_RVT U115 ( .A1(sp_csc[28]), .A2(n12), .A3(csc[28]), .A4(n20), .Y(
        csc_s[28]) );
  AO22X1_RVT U116 ( .A1(sp_tms[28]), .A2(n12), .A3(tms[28]), .A4(n31), .Y(
        tms_s[28]) );
  AO22X1_RVT U117 ( .A1(sp_tms[29]), .A2(n12), .A3(tms[29]), .A4(n31), .Y(
        tms_s[29]) );
  AO22X1_RVT U118 ( .A1(sp_csc[12]), .A2(n24), .A3(csc[12]), .A4(n31), .Y(
        csc_s[12]) );
  AO22X1_RVT U119 ( .A1(sp_csc[18]), .A2(n24), .A3(csc[18]), .A4(n31), .Y(
        csc_s[18]) );
  AO22X1_RVT U120 ( .A1(sp_csc[26]), .A2(n24), .A3(csc[26]), .A4(n20), .Y(
        csc_s[26]) );
  AO22X1_RVT U121 ( .A1(sp_csc[30]), .A2(n24), .A3(csc[30]), .A4(n31), .Y(
        csc_s[30]) );
  AO22X1_RVT U122 ( .A1(sp_csc[7]), .A2(n11), .A3(csc[7]), .A4(n33), .Y(
        csc_s[7]) );
  OR2X1_RVT U123 ( .A1(init_ack), .A2(lmr_ack), .Y(lmr_sel) );
  OAI22X1_RVT U124 ( .A1(n25), .A2(n23), .A3(n26), .A4(n13), .Y(csc_s[4]) );
  INVX1_RVT U125 ( .A(sp_csc[4]), .Y(n25) );
  AO22X1_RVT U126 ( .A1(sp_csc[6]), .A2(n11), .A3(csc[6]), .A4(n32), .Y(
        csc_s[6]) );
  AO22X1_RVT U127 ( .A1(sp_csc[9]), .A2(n28), .A3(csc[9]), .A4(n34), .Y(
        csc_s[9]) );
  AO22X1_RVT U128 ( .A1(sp_tms[3]), .A2(n30), .A3(tms[3]), .A4(n23), .Y(
        tms_s[3]) );
  AO22X1_RVT U129 ( .A1(sp_tms[11]), .A2(n30), .A3(tms[11]), .A4(n34), .Y(
        tms_s[11]) );
  AO22X1_RVT U130 ( .A1(sp_tms[12]), .A2(n30), .A3(tms[12]), .A4(n33), .Y(
        tms_s[12]) );
  AO22X1_RVT U131 ( .A1(sp_tms[0]), .A2(n11), .A3(tms[0]), .A4(n33), .Y(
        tms_s[0]) );
  AO22X1_RVT U132 ( .A1(sp_tms[6]), .A2(n30), .A3(tms[6]), .A4(n20), .Y(
        tms_s[6]) );
  AO22X1_RVT U133 ( .A1(sp_tms[14]), .A2(n30), .A3(tms[14]), .A4(n20), .Y(
        tms_s[14]) );
  AO22X1_RVT U134 ( .A1(sp_tms[15]), .A2(n28), .A3(tms[15]), .A4(n33), .Y(
        tms_s[15]) );
  INVX1_RVT U135 ( .A(sp_csc[1]), .Y(n17) );
  AO22X1_RVT U136 ( .A1(sp_tms[16]), .A2(n28), .A3(tms[16]), .A4(n20), .Y(
        tms_s[16]) );
  NOR2X0_RVT U137 ( .A1(rfr_ack), .A2(susp_sel), .Y(n9) );
  AO22X1_RVT U138 ( .A1(sp_tms[10]), .A2(n28), .A3(tms[10]), .A4(n32), .Y(
        tms_s[10]) );
  AO22X1_RVT U139 ( .A1(sp_csc[3]), .A2(n11), .A3(csc[3]), .A4(n34), .Y(
        csc_s[3]) );
  AO22X1_RVT U140 ( .A1(sp_tms[4]), .A2(n12), .A3(tms[4]), .A4(n20), .Y(
        tms_s[4]) );
  AO22X1_RVT U141 ( .A1(sp_tms[9]), .A2(n24), .A3(tms[9]), .A4(n32), .Y(
        tms_s[9]) );
  AO22X1_RVT U142 ( .A1(sp_tms[8]), .A2(n28), .A3(tms[8]), .A4(n33), .Y(
        tms_s[8]) );
  AO22X1_RVT U143 ( .A1(sp_tms[5]), .A2(n29), .A3(tms[5]), .A4(n32), .Y(
        tms_s[5]) );
  AO22X1_RVT U144 ( .A1(sp_tms[7]), .A2(n12), .A3(tms[7]), .A4(n33), .Y(
        tms_s[7]) );
  AO22X1_RVT U145 ( .A1(sp_tms[13]), .A2(n12), .A3(tms[13]), .A4(n23), .Y(
        tms_s[13]) );
  AO22X1_RVT U146 ( .A1(sp_tms[22]), .A2(n29), .A3(tms[22]), .A4(n32), .Y(
        tms_s[22]) );
  INVX1_RVT U147 ( .A(wb_cyc_i), .Y(n15) );
  INVX1_RVT U148 ( .A(rfr_ack), .Y(n21) );
  OR3X2_RVT U149 ( .A1(wb_addr_i[31]), .A2(wb_addr_i[30]), .A3(wb_addr_i[29]), 
        .Y(n6) );
  INVX1_RVT U150 ( .A(csc[4]), .Y(n26) );
  INVX1_RVT U152 ( .A(csc[1]), .Y(n18) );
  OR2X1_RVT U153 ( .A1(init_ack), .A2(lmr_ack), .Y(n24) );
  NBUFFX2_RVT U154 ( .A(n24), .Y(n11) );
  NBUFFX2_RVT U155 ( .A(n24), .Y(n12) );
  NBUFFX2_RVT U156 ( .A(lmr_sel), .Y(n13) );
  NBUFFX2_RVT U157 ( .A(lmr_sel), .Y(n14) );
  AND2X1_RVT U158 ( .A1(n9), .A2(n23), .Y(n4) );
  AO22X1_RVT U159 ( .A1(sp_tms[2]), .A2(n11), .A3(tms[2]), .A4(n34), .Y(
        tms_s[2]) );
  INVX1_RVT U160 ( .A(n15), .Y(n16) );
  NBUFFX2_RVT U161 ( .A(csc_s[4]), .Y(n19) );
  AO22X1_RVT U162 ( .A1(sp_csc[10]), .A2(n13), .A3(csc[10]), .A4(n33), .Y(
        csc_s[10]) );
  INVX1_RVT U163 ( .A(n21), .Y(n22) );
  INVX0_RVT U164 ( .A(n9), .Y(n27) );
  AO22X1_RVT U165 ( .A1(sp_csc[5]), .A2(n14), .A3(csc[5]), .A4(n23), .Y(
        csc_s[5]) );
  AO222X1_RVT U166 ( .A1(spec_req_cs[1]), .A2(n3), .A3(cs[1]), .A4(n4), .A5(
        cs_need_rfr[1]), .A6(n27), .Y(obct_cs[1]) );
  AO222X1_RVT U167 ( .A1(spec_req_cs[0]), .A2(n3), .A3(cs[0]), .A4(n4), .A5(
        cs_need_rfr[0]), .A6(n27), .Y(obct_cs[0]) );
  AO22X1_RVT U168 ( .A1(sp_tms[26]), .A2(n28), .A3(tms[26]), .A4(n34), .Y(
        tms_s[26]) );
  AO22X1_RVT U169 ( .A1(sp_tms[27]), .A2(n29), .A3(tms[27]), .A4(n32), .Y(
        tms_s[27]) );
  AO22X1_RVT U170 ( .A1(sp_tms[25]), .A2(n12), .A3(tms[25]), .A4(n33), .Y(
        tms_s[25]) );
  AO22X1_RVT U171 ( .A1(sp_tms[24]), .A2(n29), .A3(tms[24]), .A4(n34), .Y(
        tms_s[24]) );
  AO22X1_RVT U172 ( .A1(sp_tms[23]), .A2(n29), .A3(tms[23]), .A4(n33), .Y(
        tms_s[23]) );
  AO22X1_RVT U173 ( .A1(sp_tms[17]), .A2(n29), .A3(tms[17]), .A4(n32), .Y(
        tms_s[17]) );
  AO22X1_RVT U174 ( .A1(sp_tms[18]), .A2(n12), .A3(tms[18]), .A4(n20), .Y(
        tms_s[18]) );
  AO22X1_RVT U175 ( .A1(sp_tms[19]), .A2(n28), .A3(tms[19]), .A4(n34), .Y(
        tms_s[19]) );
  AO22X1_RVT U176 ( .A1(sp_tms[21]), .A2(n11), .A3(tms[21]), .A4(n33), .Y(
        tms_s[21]) );
  AO22X1_RVT U177 ( .A1(sp_tms[20]), .A2(n11), .A3(tms[20]), .A4(n32), .Y(
        tms_s[20]) );
  AO22X1_RVT U178 ( .A1(sp_tms[1]), .A2(n24), .A3(tms[1]), .A4(n32), .Y(
        tms_s[1]) );
  AND2X1_RVT U179 ( .A1(n9), .A2(n13), .Y(n3) );
  AO22X1_RVT U180 ( .A1(sp_csc[2]), .A2(n24), .A3(csc[2]), .A4(n34), .Y(
        csc_s[2]) );
endmodule

