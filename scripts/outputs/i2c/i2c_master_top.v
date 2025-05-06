/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4-1
// Date      : Tue May  6 10:04:49 2025
/////////////////////////////////////////////////////////////


module i2c_master_bit_ctrl_DW01_dec_0_DW01_dec_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  INVX1_RVT U1 ( .A(n25), .Y(n4) );
  INVX1_RVT U2 ( .A(n26), .Y(n3) );
  INVX1_RVT U3 ( .A(n27), .Y(n2) );
  INVX1_RVT U4 ( .A(n28), .Y(n1) );
  INVX1_RVT U5 ( .A(n16), .Y(n5) );
  INVX1_RVT U6 ( .A(n15), .Y(n6) );
  INVX1_RVT U7 ( .A(n17), .Y(n7) );
  INVX1_RVT U8 ( .A(n18), .Y(n8) );
  INVX1_RVT U9 ( .A(n19), .Y(n9) );
  INVX1_RVT U10 ( .A(n20), .Y(n10) );
  INVX1_RVT U11 ( .A(n21), .Y(n11) );
  INVX1_RVT U12 ( .A(n22), .Y(n12) );
  INVX1_RVT U13 ( .A(n23), .Y(n13) );
  INVX1_RVT U14 ( .A(A[0]), .Y(SUM[0]) );
  AO21X1_RVT U15 ( .A1(A[9]), .A2(n15), .A3(n5), .Y(SUM[9]) );
  AO21X1_RVT U16 ( .A1(A[8]), .A2(n17), .A3(n6), .Y(SUM[8]) );
  AO21X1_RVT U17 ( .A1(A[7]), .A2(n18), .A3(n7), .Y(SUM[7]) );
  AO21X1_RVT U18 ( .A1(A[6]), .A2(n19), .A3(n8), .Y(SUM[6]) );
  AO21X1_RVT U19 ( .A1(A[5]), .A2(n20), .A3(n9), .Y(SUM[5]) );
  AO21X1_RVT U20 ( .A1(A[4]), .A2(n21), .A3(n10), .Y(SUM[4]) );
  AO21X1_RVT U21 ( .A1(A[3]), .A2(n22), .A3(n11), .Y(SUM[3]) );
  AO21X1_RVT U22 ( .A1(A[2]), .A2(n23), .A3(n12), .Y(SUM[2]) );
  AO21X1_RVT U23 ( .A1(A[1]), .A2(A[0]), .A3(n13), .Y(SUM[1]) );
  XNOR2X1_RVT U24 ( .A1(n24), .A2(A[15]), .Y(SUM[15]) );
  OR2X1_RVT U25 ( .A1(n25), .A2(A[14]), .Y(n24) );
  XOR2X1_RVT U26 ( .A1(A[14]), .A2(n4), .Y(SUM[14]) );
  AO21X1_RVT U27 ( .A1(A[13]), .A2(n26), .A3(n4), .Y(SUM[13]) );
  OR2X1_RVT U28 ( .A1(n26), .A2(A[13]), .Y(n25) );
  AO21X1_RVT U29 ( .A1(A[12]), .A2(n27), .A3(n3), .Y(SUM[12]) );
  OR2X1_RVT U30 ( .A1(n27), .A2(A[12]), .Y(n26) );
  AO21X1_RVT U31 ( .A1(A[11]), .A2(n28), .A3(n2), .Y(SUM[11]) );
  OR2X1_RVT U32 ( .A1(n28), .A2(A[11]), .Y(n27) );
  AO21X1_RVT U33 ( .A1(A[10]), .A2(n16), .A3(n1), .Y(SUM[10]) );
  OR2X1_RVT U34 ( .A1(n16), .A2(A[10]), .Y(n28) );
  OR2X1_RVT U35 ( .A1(n15), .A2(A[9]), .Y(n16) );
  OR2X1_RVT U36 ( .A1(n17), .A2(A[8]), .Y(n15) );
  OR2X1_RVT U37 ( .A1(n18), .A2(A[7]), .Y(n17) );
  OR2X1_RVT U38 ( .A1(n19), .A2(A[6]), .Y(n18) );
  OR2X1_RVT U39 ( .A1(n20), .A2(A[5]), .Y(n19) );
  OR2X1_RVT U40 ( .A1(n21), .A2(A[4]), .Y(n20) );
  OR2X1_RVT U41 ( .A1(n22), .A2(A[3]), .Y(n21) );
  OR2X1_RVT U42 ( .A1(n23), .A2(A[2]), .Y(n22) );
  OR2X1_RVT U43 ( .A1(A[1]), .A2(A[0]), .Y(n23) );
endmodule


module i2c_master_bit_ctrl ( clk, rst, nReset, clk_cnt, ena, cmd, cmd_ack, 
        busy, al, din, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, din, scl_i, sda_i;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen;
  wire   sSCL, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N64, sSDA, N67, N68, N69, N70, sto_condition, N73, N74,
         N76, sda_chk, N84, N172, n1, n4, n5, n7, n8, n9, n10, n11, n12, n18,
         n19, n26, n27, n28, n34, n40, n44, n45, n47, n66, n69, n70, n72, n73,
         n74, n75, n77, n78, n79, n80, n81, n83, n84, n87, n89, n90, n91, n92,
         n93, n94, n95, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n2, n3, n6, n13, n14, n15, n16, n17, n20, n21, n22,
         n23, n24, n25, n29, n30, n31, n32, n33, n35, n36, n37, n38, n39, n41,
         n42, n43, n46, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n67, n68, n71, n76;
  wire   [15:0] cnt;
  assign sda_o = 1'b0;
  assign scl_o = 1'b0;

  i2c_master_bit_ctrl_DW01_dec_0_DW01_dec_1 sub_220 ( .A(cnt), .SUM({N47, N46, 
        N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32})
         );
  DFFARX1_RVT sta_condition_reg ( .D(N73), .CLK(clk), .RSTB(n38), .QN(n98) );
  DFFASX1_RVT dSDA_reg ( .D(N70), .CLK(clk), .SETB(n38), .QN(n133) );
  DFFASX1_RVT scl_oen_reg ( .D(n173), .CLK(clk), .SETB(n38), .Q(scl_oen) );
  DFFARX1_RVT busy_reg ( .D(N76), .CLK(clk), .RSTB(n38), .Q(busy), .QN(n99) );
  DFFASX1_RVT sda_oen_reg ( .D(n138), .CLK(clk), .SETB(n38), .Q(sda_oen) );
  DFFASX1_RVT dSCL_reg ( .D(N69), .CLK(clk), .SETB(n38), .QN(n130) );
  DFFX1_RVT dout_reg ( .D(n131), .CLK(clk), .Q(dout) );
  DFFASX1_RVT sSDA_reg ( .D(N68), .CLK(clk), .SETB(n38), .Q(sSDA) );
  DFFARX1_RVT \c_state_reg[6]  ( .D(n148), .CLK(clk), .RSTB(n41), .Q(n3), .QN(
        n122) );
  DFFARX1_RVT \c_state_reg[5]  ( .D(n149), .CLK(clk), .RSTB(n41), .Q(n24), 
        .QN(n121) );
  DFFARX1_RVT \c_state_reg[1]  ( .D(n153), .CLK(clk), .RSTB(n42), .Q(n17), 
        .QN(n129) );
  DFFARX1_RVT \c_state_reg[0]  ( .D(n154), .CLK(clk), .RSTB(n42), .Q(n2), .QN(
        n137) );
  DFFARX1_RVT \c_state_reg[2]  ( .D(n152), .CLK(clk), .RSTB(n42), .Q(n6), .QN(
        n118) );
  DFFARX1_RVT \c_state_reg[3]  ( .D(n151), .CLK(clk), .RSTB(n42), .Q(n20), 
        .QN(n119) );
  DFFARX1_RVT \c_state_reg[4]  ( .D(n150), .CLK(clk), .RSTB(n42), .Q(n65), 
        .QN(n120) );
  DFFARX1_RVT \c_state_reg[13]  ( .D(n141), .CLK(clk), .RSTB(n41), .Q(n22), 
        .QN(n126) );
  DFFARX1_RVT \c_state_reg[7]  ( .D(n147), .CLK(clk), .RSTB(n42), .Q(n16), 
        .QN(n136) );
  DFFARX1_RVT \c_state_reg[12]  ( .D(n142), .CLK(clk), .RSTB(n41), .Q(n62), 
        .QN(n134) );
  DFFARX1_RVT \c_state_reg[9]  ( .D(n145), .CLK(clk), .RSTB(n41), .Q(n61), 
        .QN(n135) );
  DFFARX1_RVT \c_state_reg[16]  ( .D(n155), .CLK(clk), .RSTB(n41), .Q(n59), 
        .QN(n117) );
  DFFARX1_RVT \c_state_reg[10]  ( .D(n144), .CLK(clk), .RSTB(n41), .Q(n13), 
        .QN(n124) );
  DFFARX1_RVT \c_state_reg[11]  ( .D(n143), .CLK(clk), .RSTB(n41), .Q(n21), 
        .QN(n125) );
  DFFARX1_RVT \c_state_reg[8]  ( .D(n146), .CLK(clk), .RSTB(n42), .Q(n64), 
        .QN(n123) );
  DFFARX1_RVT \c_state_reg[14]  ( .D(n140), .CLK(clk), .RSTB(n41), .Q(n14), 
        .QN(n127) );
  DFFARX1_RVT \c_state_reg[15]  ( .D(n139), .CLK(clk), .RSTB(n41), .Q(n23), 
        .QN(n128) );
  DFFX1_RVT dscl_oen_reg ( .D(scl_oen), .CLK(clk), .QN(n97) );
  DFFASX1_RVT sSCL_reg ( .D(N67), .CLK(clk), .SETB(n38), .Q(sSCL), .QN(n15) );
  DFFARX1_RVT \cnt_reg[8]  ( .D(n164), .CLK(clk), .RSTB(n39), .Q(cnt[8]), .QN(
        n108) );
  DFFARX1_RVT \cnt_reg[9]  ( .D(n163), .CLK(clk), .RSTB(n39), .Q(cnt[9]), .QN(
        n109) );
  DFFARX1_RVT \cnt_reg[10]  ( .D(n162), .CLK(clk), .RSTB(n39), .Q(cnt[10]), 
        .QN(n110) );
  DFFARX1_RVT \cnt_reg[11]  ( .D(n161), .CLK(clk), .RSTB(n39), .Q(cnt[11]), 
        .QN(n111) );
  DFFARX1_RVT \cnt_reg[12]  ( .D(n160), .CLK(clk), .RSTB(n39), .Q(cnt[12]), 
        .QN(n112) );
  DFFARX1_RVT \cnt_reg[13]  ( .D(n159), .CLK(clk), .RSTB(n41), .Q(cnt[13]), 
        .QN(n113) );
  DFFARX1_RVT \cnt_reg[14]  ( .D(n158), .CLK(clk), .RSTB(n41), .Q(cnt[14]), 
        .QN(n114) );
  DFFARX1_RVT \cnt_reg[15]  ( .D(n157), .CLK(clk), .RSTB(n41), .Q(cnt[15]), 
        .QN(n115) );
  DFFARX1_RVT \cnt_reg[6]  ( .D(n166), .CLK(clk), .RSTB(n39), .Q(cnt[6]), .QN(
        n106) );
  DFFARX1_RVT \cnt_reg[7]  ( .D(n165), .CLK(clk), .RSTB(n39), .Q(cnt[7]), .QN(
        n107) );
  DFFARX1_RVT \cnt_reg[5]  ( .D(n167), .CLK(clk), .RSTB(n39), .Q(cnt[5]), .QN(
        n105) );
  DFFARX1_RVT \cnt_reg[4]  ( .D(n168), .CLK(clk), .RSTB(n39), .Q(cnt[4]), .QN(
        n104) );
  DFFARX1_RVT \cnt_reg[3]  ( .D(n169), .CLK(clk), .RSTB(n39), .Q(cnt[3]), .QN(
        n103) );
  DFFARX1_RVT \cnt_reg[2]  ( .D(n170), .CLK(clk), .RSTB(n39), .Q(cnt[2]), .QN(
        n102) );
  DFFARX1_RVT \cnt_reg[1]  ( .D(n171), .CLK(clk), .RSTB(n39), .Q(cnt[1]), .QN(
        n101) );
  DFFARX1_RVT \cnt_reg[0]  ( .D(n172), .CLK(clk), .RSTB(n39), .Q(cnt[0]), .QN(
        n100) );
  DFFASX1_RVT clk_en_reg ( .D(N64), .CLK(clk), .SETB(nReset), .Q(n57), .QN(
        n132) );
  DFFARX1_RVT cmd_stop_reg ( .D(n156), .CLK(clk), .RSTB(n38), .Q(n116), .QN(
        n58) );
  DFFARX1_RVT cmd_ack_reg ( .D(N172), .CLK(clk), .RSTB(n42), .Q(cmd_ack) );
  DFFARX1_RVT sto_condition_reg ( .D(N74), .CLK(clk), .RSTB(n38), .Q(
        sto_condition), .QN(n51) );
  DFFARX1_RVT al_reg ( .D(N84), .CLK(clk), .RSTB(n38), .Q(al) );
  DFFARX1_RVT sda_chk_reg ( .D(n174), .CLK(clk), .RSTB(n38), .Q(sda_chk) );
  INVX1_RVT U3 ( .A(n43), .Y(n42) );
  INVX1_RVT U4 ( .A(n43), .Y(n41) );
  INVX1_RVT U5 ( .A(n43), .Y(n39) );
  INVX1_RVT U6 ( .A(n43), .Y(n38) );
  INVX1_RVT U7 ( .A(nReset), .Y(n43) );
  INVX1_RVT U8 ( .A(n25), .Y(n36) );
  INVX1_RVT U9 ( .A(n25), .Y(n37) );
  INVX1_RVT U10 ( .A(n29), .Y(n32) );
  INVX1_RVT U11 ( .A(rst), .Y(n46) );
  INVX1_RVT U12 ( .A(n29), .Y(n33) );
  NBUFFX2_RVT U13 ( .A(n47), .Y(n35) );
  NAND2X0_RVT U14 ( .A1(n56), .A2(n46), .Y(n25) );
  INVX1_RVT U15 ( .A(n11), .Y(n60) );
  NAND2X0_RVT U16 ( .A1(n55), .A2(n12), .Y(n29) );
  AND3X1_RVT U17 ( .A1(n60), .A2(n71), .A3(n32), .Y(n19) );
  NAND2X0_RVT U18 ( .A1(n15), .A2(n46), .Y(N69) );
  AND3X1_RVT U19 ( .A1(n69), .A2(n46), .A3(n66), .Y(n47) );
  OA21X1_RVT U20 ( .A1(n10), .A2(n11), .A3(n12), .Y(n4) );
  INVX1_RVT U21 ( .A(n69), .Y(n56) );
  OR2X1_RVT U22 ( .A1(n2), .A2(n78), .Y(n11) );
  INVX1_RVT U23 ( .A(n79), .Y(n63) );
  AND2X1_RVT U24 ( .A1(n68), .A2(n76), .Y(n28) );
  AO21X1_RVT U25 ( .A1(n52), .A2(n2), .A3(n40), .Y(n154) );
  AND4X1_RVT U26 ( .A1(cmd[0]), .A2(n19), .A3(n67), .A4(n76), .Y(n40) );
  OR2X1_RVT U27 ( .A1(al), .A2(rst), .Y(n10) );
  AO21X1_RVT U28 ( .A1(n52), .A2(n22), .A3(n18), .Y(n141) );
  AND4X1_RVT U29 ( .A1(cmd[2]), .A2(n19), .A3(n68), .A4(n67), .Y(n18) );
  AND2X1_RVT U30 ( .A1(n28), .A2(n19), .Y(n34) );
  AO222X1_RVT U31 ( .A1(clk_cnt[15]), .A2(n35), .A3(N47), .A4(n36), .A5(n49), 
        .A6(cnt[15]), .Y(n157) );
  AO222X1_RVT U32 ( .A1(clk_cnt[14]), .A2(n47), .A3(N46), .A4(n36), .A5(n49), 
        .A6(cnt[14]), .Y(n158) );
  AO222X1_RVT U33 ( .A1(clk_cnt[13]), .A2(n47), .A3(N45), .A4(n36), .A5(n49), 
        .A6(cnt[13]), .Y(n159) );
  AO222X1_RVT U34 ( .A1(clk_cnt[12]), .A2(n35), .A3(N44), .A4(n36), .A5(n49), 
        .A6(cnt[12]), .Y(n160) );
  AO222X1_RVT U35 ( .A1(clk_cnt[11]), .A2(n47), .A3(N43), .A4(n36), .A5(n49), 
        .A6(cnt[11]), .Y(n161) );
  AO222X1_RVT U36 ( .A1(clk_cnt[10]), .A2(n35), .A3(N42), .A4(n36), .A5(n49), 
        .A6(cnt[10]), .Y(n162) );
  AO222X1_RVT U37 ( .A1(clk_cnt[9]), .A2(n35), .A3(N41), .A4(n37), .A5(n49), 
        .A6(cnt[9]), .Y(n163) );
  AO222X1_RVT U38 ( .A1(clk_cnt[8]), .A2(n47), .A3(N40), .A4(n36), .A5(n49), 
        .A6(cnt[8]), .Y(n164) );
  AO222X1_RVT U39 ( .A1(clk_cnt[7]), .A2(n47), .A3(N39), .A4(n37), .A5(n30), 
        .A6(cnt[7]), .Y(n165) );
  AO222X1_RVT U40 ( .A1(clk_cnt[6]), .A2(n35), .A3(N38), .A4(n37), .A5(n30), 
        .A6(cnt[6]), .Y(n166) );
  AO222X1_RVT U41 ( .A1(clk_cnt[5]), .A2(n47), .A3(N37), .A4(n37), .A5(n30), 
        .A6(cnt[5]), .Y(n167) );
  AO222X1_RVT U42 ( .A1(clk_cnt[4]), .A2(n47), .A3(N36), .A4(n37), .A5(n30), 
        .A6(cnt[4]), .Y(n168) );
  AO222X1_RVT U43 ( .A1(clk_cnt[3]), .A2(n35), .A3(N35), .A4(n37), .A5(n30), 
        .A6(cnt[3]), .Y(n169) );
  AO222X1_RVT U44 ( .A1(clk_cnt[2]), .A2(n47), .A3(N34), .A4(n36), .A5(n30), 
        .A6(cnt[2]), .Y(n170) );
  AO222X1_RVT U45 ( .A1(clk_cnt[1]), .A2(n47), .A3(N33), .A4(n37), .A5(n30), 
        .A6(cnt[1]), .Y(n171) );
  AO222X1_RVT U46 ( .A1(clk_cnt[0]), .A2(n35), .A3(N32), .A4(n37), .A5(n30), 
        .A6(cnt[0]), .Y(n172) );
  OAI22X1_RVT U47 ( .A1(n135), .A2(n12), .A3(n26), .A4(n27), .Y(n145) );
  NAND2X0_RVT U48 ( .A1(cmd[3]), .A2(n28), .Y(n27) );
  NAND3X0_RVT U49 ( .A1(n60), .A2(n67), .A3(n33), .Y(n26) );
  AO22X1_RVT U50 ( .A1(sda_oen), .A2(n54), .A3(n4), .A4(n5), .Y(n138) );
  NAND4X0_RVT U51 ( .A1(n55), .A2(n137), .A3(n7), .A4(n129), .Y(n5) );
  INVX1_RVT U52 ( .A(n4), .Y(n54) );
  AOI21X1_RVT U53 ( .A1(din), .A2(n8), .A3(n9), .Y(n7) );
  AO22X1_RVT U54 ( .A1(scl_oen), .A2(n70), .A3(n53), .A4(n72), .Y(n173) );
  OR2X1_RVT U55 ( .A1(n73), .A2(n74), .Y(n72) );
  INVX1_RVT U56 ( .A(n70), .Y(n53) );
  NAND4X0_RVT U57 ( .A1(n129), .A2(n136), .A3(n75), .A4(n63), .Y(n73) );
  NAND2X0_RVT U58 ( .A1(n77), .A2(n12), .Y(n70) );
  AO21X1_RVT U59 ( .A1(n137), .A2(n78), .A3(n10), .Y(n77) );
  NAND4X0_RVT U60 ( .A1(n55), .A2(n118), .A3(n119), .A4(n122), .Y(n74) );
  NAND2X0_RVT U61 ( .A1(n80), .A2(n81), .Y(N84) );
  NAND3X0_RVT U62 ( .A1(sda_oen), .A2(n48), .A3(sda_chk), .Y(n80) );
  NAND4X0_RVT U63 ( .A1(sto_condition), .A2(n11), .A3(n58), .A4(n46), .Y(n81)
         );
  INVX1_RVT U64 ( .A(N70), .Y(n48) );
  AND4X1_RVT U65 ( .A1(n133), .A2(sSDA), .A3(sSCL), .A4(n46), .Y(N74) );
  AND3X1_RVT U66 ( .A1(n46), .A2(n51), .A3(n87), .Y(N76) );
  NAND2X0_RVT U67 ( .A1(n99), .A2(n98), .Y(n87) );
  AND3X1_RVT U68 ( .A1(n95), .A2(n57), .A3(n55), .Y(N172) );
  NAND4X0_RVT U69 ( .A1(n120), .A2(n134), .A3(n123), .A4(n117), .Y(n95) );
  NAND2X0_RVT U70 ( .A1(ena), .A2(n90), .Y(n69) );
  OR4X1_RVT U71 ( .A1(n91), .A2(n92), .A3(n93), .A4(n94), .Y(n90) );
  NAND4X0_RVT U72 ( .A1(n108), .A2(n109), .A3(n110), .A4(n111), .Y(n94) );
  NAND4X0_RVT U73 ( .A1(n112), .A2(n113), .A3(n114), .A4(n115), .Y(n93) );
  NAND4X0_RVT U74 ( .A1(n104), .A2(n105), .A3(n106), .A4(n107), .Y(n91) );
  NAND4X0_RVT U75 ( .A1(n100), .A2(n101), .A3(n102), .A4(n103), .Y(n92) );
  OR2X1_RVT U76 ( .A1(sSDA), .A2(rst), .Y(N70) );
  NOR3X0_RVT U77 ( .A1(N70), .A2(n133), .A3(n15), .Y(N73) );
  OR2X1_RVT U78 ( .A1(rst), .A2(scl_i), .Y(N67) );
  OR2X1_RVT U79 ( .A1(rst), .A2(sda_i), .Y(N68) );
  AOI21X1_RVT U80 ( .A1(n44), .A2(n45), .A3(rst), .Y(n156) );
  NAND2X0_RVT U81 ( .A1(n116), .A2(n132), .Y(n44) );
  NAND4X0_RVT U82 ( .A1(cmd[1]), .A2(n28), .A3(n71), .A4(n57), .Y(n45) );
  AO21X1_RVT U83 ( .A1(n89), .A2(n69), .A3(rst), .Y(N64) );
  OR2X1_RVT U84 ( .A1(sSCL), .A2(n97), .Y(n89) );
  NAND3X0_RVT U85 ( .A1(n126), .A2(n63), .A3(n117), .Y(n8) );
  NAND4X0_RVT U86 ( .A1(n122), .A2(n129), .A3(n83), .A4(n84), .Y(n78) );
  AND4X1_RVT U87 ( .A1(n118), .A2(n119), .A3(n120), .A4(n121), .Y(n84) );
  NOR3X0_RVT U88 ( .A1(n8), .A2(n9), .A3(n16), .Y(n83) );
  NAND2X0_RVT U89 ( .A1(n127), .A2(n128), .Y(n79) );
  AND3X1_RVT U90 ( .A1(n124), .A2(n125), .A3(n123), .Y(n75) );
  NAND3X0_RVT U91 ( .A1(n135), .A2(n75), .A3(n134), .Y(n9) );
  INVX1_RVT U92 ( .A(cmd[3]), .Y(n71) );
  INVX1_RVT U93 ( .A(cmd[2]), .Y(n76) );
  INVX1_RVT U94 ( .A(cmd[0]), .Y(n68) );
  INVX1_RVT U95 ( .A(cmd[1]), .Y(n67) );
  AO22X1_RVT U96 ( .A1(n1), .A2(dout), .A3(sSDA), .A4(n50), .Y(n131) );
  INVX1_RVT U97 ( .A(n1), .Y(n50) );
  NAND2X0_RVT U98 ( .A1(sSCL), .A2(n130), .Y(n1) );
  INVX1_RVT U99 ( .A(n66), .Y(n30) );
  OR3X2_RVT U100 ( .A1(N69), .A2(n97), .A3(n56), .Y(n66) );
  INVX1_RVT U101 ( .A(n66), .Y(n49) );
  INVX1_RVT U102 ( .A(n12), .Y(n31) );
  NAND2X0_RVT U103 ( .A1(n132), .A2(n55), .Y(n12) );
  INVX1_RVT U104 ( .A(n12), .Y(n52) );
  AO22X1_RVT U105 ( .A1(n31), .A2(n24), .A3(n34), .A4(cmd[1]), .Y(n149) );
  AO22X1_RVT U106 ( .A1(n31), .A2(n13), .A3(n32), .A4(n61), .Y(n144) );
  AO22X1_RVT U107 ( .A1(n31), .A2(n3), .A3(n32), .A4(n24), .Y(n148) );
  AO22X1_RVT U108 ( .A1(n31), .A2(n21), .A3(n33), .A4(n13), .Y(n143) );
  AO22X1_RVT U109 ( .A1(n31), .A2(n14), .A3(n32), .A4(n22), .Y(n140) );
  AO22X1_RVT U110 ( .A1(n31), .A2(n62), .A3(n33), .A4(n21), .Y(n142) );
  AO22X1_RVT U111 ( .A1(n31), .A2(n23), .A3(n33), .A4(n14), .Y(n139) );
  AO22X1_RVT U112 ( .A1(n31), .A2(n59), .A3(n33), .A4(n23), .Y(n155) );
  AO22X1_RVT U113 ( .A1(n52), .A2(n65), .A3(n33), .A4(n20), .Y(n150) );
  AO22X1_RVT U114 ( .A1(n52), .A2(n20), .A3(n32), .A4(n6), .Y(n151) );
  AO22X1_RVT U115 ( .A1(n52), .A2(n16), .A3(n33), .A4(n3), .Y(n147) );
  AO22X1_RVT U116 ( .A1(sda_chk), .A2(n52), .A3(n32), .A4(n79), .Y(n174) );
  AO22X1_RVT U117 ( .A1(n52), .A2(n6), .A3(n33), .A4(n17), .Y(n152) );
  AO22X1_RVT U118 ( .A1(n52), .A2(n64), .A3(n32), .A4(n16), .Y(n146) );
  AO22X1_RVT U119 ( .A1(n52), .A2(n17), .A3(n32), .A4(n2), .Y(n153) );
  INVX0_RVT U120 ( .A(n10), .Y(n55) );
endmodule


module i2c_master_byte_ctrl ( clk, rst, nReset, ena, clk_cnt, start, stop, 
        read, write, ack_in, din, cmd_ack, ack_out, dout, i2c_busy, i2c_al, 
        scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, nReset, ena, start, stop, read, write, ack_in, scl_i, sda_i;
  output cmd_ack, ack_out, i2c_busy, i2c_al, scl_o, scl_oen, sda_o, sda_oen;
  wire   core_ack, core_txd, core_rxd, ld, shift, N104, N105, N106, N107, n7,
         n11, n12, n13, n14, n16, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n1, n2, n3, n4,
         n5, n6, n8, n9, n10, n15, n17, n18, n19, n20, n21, n57, n85, n86, n87,
         n88, n89;
  wire   [3:0] core_cmd;
  wire   [2:0] dcnt;
  wire   [4:0] c_state;
  assign scl_o = 1'b0;
  assign sda_o = 1'b0;

  i2c_master_bit_ctrl bit_controller ( .clk(clk), .rst(n6), .nReset(nReset), 
        .clk_cnt(clk_cnt), .ena(ena), .cmd(core_cmd), .cmd_ack(core_ack), 
        .busy(i2c_busy), .al(i2c_al), .din(core_txd), .dout(core_rxd), .scl_i(
        scl_i), .scl_oen(scl_oen), .sda_i(sda_i), .sda_oen(sda_oen) );
  DFFARX1_RVT ld_reg ( .D(N106), .CLK(clk), .RSTB(nReset), .Q(ld), .QN(n16) );
  DFFARX1_RVT \dcnt_reg[0]  ( .D(n74), .CLK(clk), .RSTB(nReset), .Q(dcnt[0])
         );
  DFFARX1_RVT core_txd_reg ( .D(N104), .CLK(clk), .RSTB(n4), .Q(core_txd) );
  DFFARX1_RVT ack_out_reg ( .D(n64), .CLK(clk), .RSTB(n3), .Q(ack_out) );
  DFFARX1_RVT shift_reg ( .D(N105), .CLK(clk), .RSTB(n4), .Q(shift) );
  DFFARX1_RVT \sr_reg[0]  ( .D(n83), .CLK(clk), .RSTB(n4), .Q(dout[0]) );
  DFFARX1_RVT \sr_reg[7]  ( .D(n77), .CLK(clk), .RSTB(n4), .Q(dout[7]) );
  DFFARX1_RVT \sr_reg[6]  ( .D(n78), .CLK(clk), .RSTB(n4), .Q(dout[6]) );
  DFFARX1_RVT \sr_reg[5]  ( .D(n79), .CLK(clk), .RSTB(n4), .Q(dout[5]) );
  DFFARX1_RVT \sr_reg[4]  ( .D(n80), .CLK(clk), .RSTB(n4), .Q(dout[4]) );
  DFFARX1_RVT \sr_reg[3]  ( .D(n81), .CLK(clk), .RSTB(n4), .Q(dout[3]) );
  DFFARX1_RVT \sr_reg[2]  ( .D(n82), .CLK(clk), .RSTB(n4), .Q(dout[2]) );
  DFFARX1_RVT \sr_reg[1]  ( .D(n84), .CLK(clk), .RSTB(n4), .Q(dout[1]) );
  DFFARX1_RVT \dcnt_reg[2]  ( .D(n73), .CLK(clk), .RSTB(n3), .Q(dcnt[2]) );
  DFFARX1_RVT \core_cmd_reg[1]  ( .D(n67), .CLK(clk), .RSTB(n3), .Q(
        core_cmd[1]) );
  DFFARX1_RVT \c_state_reg[3]  ( .D(n69), .CLK(clk), .RSTB(n3), .Q(c_state[3])
         );
  DFFARX1_RVT \core_cmd_reg[0]  ( .D(n68), .CLK(clk), .RSTB(n3), .Q(
        core_cmd[0]) );
  DFFARX1_RVT \core_cmd_reg[3]  ( .D(n65), .CLK(clk), .RSTB(n3), .Q(
        core_cmd[3]) );
  DFFARX1_RVT \core_cmd_reg[2]  ( .D(n66), .CLK(clk), .RSTB(n3), .Q(
        core_cmd[2]) );
  DFFARX1_RVT \dcnt_reg[1]  ( .D(n75), .CLK(clk), .RSTB(n4), .Q(dcnt[1]), .QN(
        n7) );
  DFFARX1_RVT \c_state_reg[1]  ( .D(n71), .CLK(clk), .RSTB(n3), .Q(c_state[1]), 
        .QN(n13) );
  DFFARX1_RVT \c_state_reg[0]  ( .D(n72), .CLK(clk), .RSTB(n3), .Q(c_state[0]), 
        .QN(n14) );
  DFFARX1_RVT \c_state_reg[2]  ( .D(n70), .CLK(clk), .RSTB(n3), .Q(c_state[2]), 
        .QN(n12) );
  DFFARX1_RVT \c_state_reg[4]  ( .D(n76), .CLK(clk), .RSTB(n3), .Q(c_state[4]), 
        .QN(n11) );
  DFFARX1_RVT cmd_ack_reg ( .D(N107), .CLK(clk), .RSTB(n3), .Q(cmd_ack), .QN(
        n1) );
  INVX1_RVT U3 ( .A(n5), .Y(n3) );
  INVX1_RVT U4 ( .A(n5), .Y(n4) );
  INVX1_RVT U5 ( .A(nReset), .Y(n5) );
  AND2X1_RVT U6 ( .A1(n15), .A2(n50), .Y(n28) );
  INVX1_RVT U7 ( .A(n52), .Y(n15) );
  INVX1_RVT U8 ( .A(n47), .Y(n19) );
  INVX1_RVT U9 ( .A(n50), .Y(n17) );
  AO21X1_RVT U10 ( .A1(n15), .A2(n29), .A3(n17), .Y(n37) );
  INVX1_RVT U11 ( .A(n49), .Y(n85) );
  INVX1_RVT U12 ( .A(n44), .Y(n21) );
  AND3X1_RVT U13 ( .A1(n44), .A2(n8), .A3(n47), .Y(n53) );
  INVX1_RVT U14 ( .A(n40), .Y(n86) );
  INVX1_RVT U15 ( .A(n23), .Y(n18) );
  INVX1_RVT U16 ( .A(n29), .Y(n57) );
  AND2X1_RVT U17 ( .A1(n47), .A2(n8), .Y(n46) );
  INVX1_RVT U18 ( .A(rst), .Y(n8) );
  AO21X1_RVT U19 ( .A1(c_state[2]), .A2(n37), .A3(n10), .Y(n70) );
  INVX1_RVT U20 ( .A(n32), .Y(n10) );
  NAND3X0_RVT U21 ( .A1(n38), .A2(n88), .A3(n28), .Y(n32) );
  AO21X1_RVT U22 ( .A1(write), .A2(n86), .A3(c_state[0]), .Y(n38) );
  OR2X1_RVT U23 ( .A1(i2c_al), .A2(n6), .Y(n52) );
  AO21X1_RVT U24 ( .A1(c_state[1]), .A2(n37), .A3(n9), .Y(n71) );
  INVX1_RVT U25 ( .A(n26), .Y(n9) );
  NAND3X0_RVT U26 ( .A1(n28), .A2(n39), .A3(read), .Y(n26) );
  NAND2X0_RVT U27 ( .A1(n14), .A2(n40), .Y(n39) );
  NAND4X0_RVT U28 ( .A1(n30), .A2(n31), .A3(n32), .A4(n33), .Y(n66) );
  NAND2X0_RVT U29 ( .A1(core_cmd[2]), .A2(n17), .Y(n30) );
  NAND3X0_RVT U30 ( .A1(n28), .A2(n29), .A3(c_state[2]), .Y(n31) );
  NAND3X0_RVT U31 ( .A1(n28), .A2(n57), .A3(c_state[1]), .Y(n33) );
  NAND3X0_RVT U32 ( .A1(n28), .A2(n57), .A3(c_state[2]), .Y(n27) );
  NAND4X0_RVT U33 ( .A1(n24), .A2(n25), .A3(n26), .A4(n27), .Y(n65) );
  NAND2X0_RVT U34 ( .A1(core_cmd[3]), .A2(n17), .Y(n24) );
  NAND3X0_RVT U35 ( .A1(n28), .A2(n29), .A3(c_state[1]), .Y(n25) );
  NAND3X0_RVT U36 ( .A1(n33), .A2(n27), .A3(n36), .Y(n69) );
  NAND2X0_RVT U37 ( .A1(n17), .A2(c_state[3]), .Y(n36) );
  AO21X1_RVT U38 ( .A1(c_state[0]), .A2(n17), .A3(n35), .Y(n72) );
  AO21X1_RVT U39 ( .A1(core_cmd[0]), .A2(n17), .A3(n35), .Y(n68) );
  AND3X1_RVT U40 ( .A1(n28), .A2(n85), .A3(start), .Y(n35) );
  AO22X1_RVT U41 ( .A1(c_state[4]), .A2(n17), .A3(n28), .A4(n34), .Y(n76) );
  AO22X1_RVT U42 ( .A1(core_cmd[1]), .A2(n17), .A3(n28), .A4(n34), .Y(n67) );
  AO221X1_RVT U43 ( .A1(n19), .A2(n57), .A3(dcnt[2]), .A4(n41), .A5(n21), .Y(
        n73) );
  AO21X1_RVT U44 ( .A1(dcnt[1]), .A2(n19), .A3(n42), .Y(n41) );
  AO21X1_RVT U45 ( .A1(dcnt[0]), .A2(n19), .A3(n46), .Y(n42) );
  NAND3X0_RVT U46 ( .A1(n16), .A2(n8), .A3(shift), .Y(n47) );
  AO221X1_RVT U47 ( .A1(n20), .A2(n7), .A3(dcnt[1]), .A4(n42), .A5(n21), .Y(
        n75) );
  INVX1_RVT U48 ( .A(n43), .Y(n20) );
  AO221X1_RVT U49 ( .A1(core_ack), .A2(n49), .A3(n51), .A4(n85), .A5(n52), .Y(
        n50) );
  AO222X1_RVT U50 ( .A1(din[7]), .A2(n21), .A3(dout[6]), .A4(n19), .A5(dout[7]), .A6(n53), .Y(n77) );
  AO222X1_RVT U51 ( .A1(din[6]), .A2(n21), .A3(dout[5]), .A4(n19), .A5(n53), 
        .A6(dout[6]), .Y(n78) );
  AO222X1_RVT U52 ( .A1(din[5]), .A2(n21), .A3(dout[4]), .A4(n19), .A5(dout[5]), .A6(n53), .Y(n79) );
  AO222X1_RVT U53 ( .A1(din[4]), .A2(n21), .A3(dout[3]), .A4(n19), .A5(dout[4]), .A6(n53), .Y(n80) );
  AO222X1_RVT U54 ( .A1(din[3]), .A2(n21), .A3(dout[2]), .A4(n19), .A5(dout[3]), .A6(n53), .Y(n81) );
  AO222X1_RVT U55 ( .A1(din[2]), .A2(n21), .A3(dout[1]), .A4(n19), .A5(dout[2]), .A6(n53), .Y(n82) );
  AO222X1_RVT U56 ( .A1(din[1]), .A2(n21), .A3(dout[0]), .A4(n19), .A5(dout[1]), .A6(n53), .Y(n84) );
  AO222X1_RVT U57 ( .A1(din[0]), .A2(n21), .A3(n19), .A4(core_rxd), .A5(
        dout[0]), .A6(n53), .Y(n83) );
  NAND3X0_RVT U58 ( .A1(n14), .A2(n13), .A3(n58), .Y(n49) );
  NOR3X0_RVT U59 ( .A1(c_state[3]), .A2(c_state[4]), .A3(c_state[2]), .Y(n58)
         );
  NAND2X0_RVT U60 ( .A1(ld), .A2(n8), .Y(n44) );
  INVX1_RVT U61 ( .A(read), .Y(n88) );
  AND2X1_RVT U62 ( .A1(n1), .A2(n2), .Y(n51) );
  NAND3X0_RVT U63 ( .A1(n87), .A2(n89), .A3(n88), .Y(n2) );
  INVX1_RVT U64 ( .A(write), .Y(n89) );
  AO22X1_RVT U65 ( .A1(n54), .A2(c_state[0]), .A3(n56), .A4(n51), .Y(N106) );
  AND2X1_RVT U66 ( .A1(n85), .A2(n15), .Y(n56) );
  AND2X1_RVT U67 ( .A1(n15), .A2(core_ack), .Y(n54) );
  AND2X1_RVT U68 ( .A1(n54), .A2(n55), .Y(N107) );
  AO21X1_RVT U69 ( .A1(c_state[3]), .A2(n87), .A3(c_state[4]), .Y(n55) );
  OA21X1_RVT U70 ( .A1(n59), .A2(c_state[1]), .A3(n54), .Y(N105) );
  AND2X1_RVT U71 ( .A1(c_state[2]), .A2(n29), .Y(n59) );
  INVX1_RVT U72 ( .A(stop), .Y(n87) );
  AND2X1_RVT U73 ( .A1(n15), .A2(n60), .Y(N104) );
  AO221X1_RVT U74 ( .A1(ack_in), .A2(n61), .A3(dout[7]), .A4(n62), .A5(n18), 
        .Y(n60) );
  AO21X1_RVT U75 ( .A1(c_state[1]), .A2(core_ack), .A3(c_state[3]), .Y(n61) );
  NAND4X0_RVT U76 ( .A1(n12), .A2(n11), .A3(n14), .A4(n63), .Y(n62) );
  AND2X1_RVT U77 ( .A1(n15), .A2(n22), .Y(n64) );
  AO22X1_RVT U78 ( .A1(ack_out), .A2(n23), .A3(core_rxd), .A4(n18), .Y(n22) );
  OR2X1_RVT U79 ( .A1(n49), .A2(start), .Y(n40) );
  AO22X1_RVT U80 ( .A1(stop), .A2(c_state[3]), .A3(n48), .A4(n86), .Y(n34) );
  AND2X1_RVT U81 ( .A1(n88), .A2(n89), .Y(n48) );
  NAND2X0_RVT U82 ( .A1(core_ack), .A2(c_state[3]), .Y(n23) );
  OA22X1_RVT U83 ( .A1(c_state[3]), .A2(c_state[1]), .A3(core_ack), .A4(n13), 
        .Y(n63) );
  OR3X2_RVT U84 ( .A1(dcnt[1]), .A2(dcnt[2]), .A3(dcnt[0]), .Y(n29) );
  OR2X1_RVT U85 ( .A1(n47), .A2(dcnt[0]), .Y(n43) );
  NAND3X0_RVT U86 ( .A1(n43), .A2(n44), .A3(n45), .Y(n74) );
  NAND2X0_RVT U87 ( .A1(n46), .A2(dcnt[0]), .Y(n45) );
  INVX0_RVT U88 ( .A(n8), .Y(n6) );
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
  wire   N20, sr_1, sr_0, N43, N44, N45, N46, N47, N48, N49, N50, done, i2c_al,
         irxack, N114, N115, N116, N117, N121, n1, n4, n5, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n28, n30, n31, n33, n34,
         n39, n40, n47, n48, n49, n50, n51, n52, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135;
  wire   [15:0] prer;
  wire   [7:0] ctr;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  wire   [7:0] cr;
  assign scl_pad_o = 1'b0;
  assign sda_pad_o = 1'b0;

  i2c_master_byte_ctrl byte_controller ( .clk(wb_clk_i), .rst(wb_rst_i), 
        .nReset(arst_i), .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(
        cr[6]), .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), 
        .cmd_ack(done), .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), 
        .i2c_al(i2c_al), .scl_i(scl_pad_i), .scl_oen(scl_padoen_o), .sda_i(
        sda_pad_i), .sda_oen(sda_padoen_o) );
  DFFX1_RVT wb_ack_o_reg ( .D(N20), .CLK(wb_clk_i), .Q(wb_ack_o), .QN(n1) );
  DFFARX1_RVT \cr_reg[0]  ( .D(n61), .CLK(wb_clk_i), .RSTB(arst_i), .Q(cr[0]), 
        .QN(n5) );
  DFFASX1_RVT \prer_reg[4]  ( .D(n73), .CLK(wb_clk_i), .SETB(n121), .Q(prer[4]) );
  DFFASX1_RVT \prer_reg[3]  ( .D(n72), .CLK(wb_clk_i), .SETB(n121), .Q(prer[3]) );
  DFFASX1_RVT \prer_reg[2]  ( .D(n71), .CLK(wb_clk_i), .SETB(n121), .Q(prer[2]) );
  DFFASX1_RVT \prer_reg[12]  ( .D(n81), .CLK(wb_clk_i), .SETB(n121), .Q(
        prer[12]) );
  DFFASX1_RVT \prer_reg[11]  ( .D(n80), .CLK(wb_clk_i), .SETB(n121), .Q(
        prer[11]) );
  DFFASX1_RVT \prer_reg[10]  ( .D(n79), .CLK(wb_clk_i), .SETB(n121), .Q(
        prer[10]) );
  DFFASX1_RVT \prer_reg[15]  ( .D(n84), .CLK(wb_clk_i), .SETB(n122), .Q(
        prer[15]) );
  DFFASX1_RVT \prer_reg[14]  ( .D(n83), .CLK(wb_clk_i), .SETB(n121), .Q(
        prer[14]) );
  DFFASX1_RVT \prer_reg[13]  ( .D(n82), .CLK(wb_clk_i), .SETB(n122), .Q(
        prer[13]) );
  DFFASX1_RVT \prer_reg[9]  ( .D(n78), .CLK(wb_clk_i), .SETB(n122), .Q(prer[9]) );
  DFFASX1_RVT \prer_reg[8]  ( .D(n77), .CLK(wb_clk_i), .SETB(n121), .Q(prer[8]) );
  DFFASX1_RVT \prer_reg[7]  ( .D(n76), .CLK(wb_clk_i), .SETB(n122), .Q(prer[7]) );
  DFFASX1_RVT \prer_reg[6]  ( .D(n75), .CLK(wb_clk_i), .SETB(n121), .Q(prer[6]) );
  DFFASX1_RVT \prer_reg[5]  ( .D(n74), .CLK(wb_clk_i), .SETB(n121), .Q(prer[5]) );
  DFFASX1_RVT \prer_reg[1]  ( .D(n70), .CLK(wb_clk_i), .SETB(n121), .Q(prer[1]) );
  DFFASX1_RVT \prer_reg[0]  ( .D(n69), .CLK(wb_clk_i), .SETB(n121), .Q(prer[0]) );
  DFFARX1_RVT \cr_reg[7]  ( .D(n64), .CLK(wb_clk_i), .RSTB(n123), .Q(cr[7]), 
        .QN(n4) );
  DFFX1_RVT \wb_dat_o_reg[6]  ( .D(N49), .CLK(wb_clk_i), .Q(wb_dat_o[6]) );
  DFFX1_RVT \wb_dat_o_reg[4]  ( .D(N47), .CLK(wb_clk_i), .Q(wb_dat_o[4]) );
  DFFX1_RVT \wb_dat_o_reg[3]  ( .D(N46), .CLK(wb_clk_i), .Q(wb_dat_o[3]) );
  DFFX1_RVT \wb_dat_o_reg[2]  ( .D(N45), .CLK(wb_clk_i), .Q(wb_dat_o[2]) );
  DFFX1_RVT \wb_dat_o_reg[5]  ( .D(N48), .CLK(wb_clk_i), .Q(wb_dat_o[5]) );
  DFFX1_RVT \wb_dat_o_reg[7]  ( .D(N50), .CLK(wb_clk_i), .Q(wb_dat_o[7]) );
  DFFX1_RVT \wb_dat_o_reg[1]  ( .D(N44), .CLK(wb_clk_i), .Q(wb_dat_o[1]) );
  DFFX1_RVT \wb_dat_o_reg[0]  ( .D(N43), .CLK(wb_clk_i), .Q(wb_dat_o[0]) );
  DFFARX1_RVT rxack_reg ( .D(N115), .CLK(wb_clk_i), .RSTB(arst_i), .Q(sr[7])
         );
  DFFARX1_RVT al_reg ( .D(N114), .CLK(wb_clk_i), .RSTB(arst_i), .Q(sr[5]) );
  DFFARX1_RVT tip_reg ( .D(N116), .CLK(wb_clk_i), .RSTB(arst_i), .Q(sr_1) );
  DFFARX1_RVT wb_inta_o_reg ( .D(N121), .CLK(wb_clk_i), .RSTB(n122), .Q(
        wb_inta_o) );
  DFFARX1_RVT irq_flag_reg ( .D(N117), .CLK(wb_clk_i), .RSTB(arst_i), .Q(sr_0)
         );
  DFFARX1_RVT \cr_reg[3]  ( .D(n68), .CLK(wb_clk_i), .RSTB(n123), .Q(cr[3]) );
  DFFARX1_RVT \cr_reg[1]  ( .D(n62), .CLK(wb_clk_i), .RSTB(arst_i), .Q(cr[1])
         );
  DFFARX1_RVT \cr_reg[2]  ( .D(n63), .CLK(wb_clk_i), .RSTB(n123), .Q(cr[2]) );
  DFFARX1_RVT \cr_reg[6]  ( .D(n65), .CLK(wb_clk_i), .RSTB(n123), .Q(cr[6]) );
  DFFARX1_RVT \cr_reg[5]  ( .D(n66), .CLK(wb_clk_i), .RSTB(n123), .Q(cr[5]) );
  DFFARX1_RVT \cr_reg[4]  ( .D(n67), .CLK(wb_clk_i), .RSTB(arst_i), .Q(cr[4])
         );
  DFFARX1_RVT \ctr_reg[4]  ( .D(n97), .CLK(wb_clk_i), .RSTB(n123), .Q(ctr[4])
         );
  DFFARX1_RVT \ctr_reg[3]  ( .D(n96), .CLK(wb_clk_i), .RSTB(n122), .Q(ctr[3])
         );
  DFFARX1_RVT \ctr_reg[2]  ( .D(n95), .CLK(wb_clk_i), .RSTB(n122), .Q(ctr[2])
         );
  DFFARX1_RVT \ctr_reg[5]  ( .D(n98), .CLK(wb_clk_i), .RSTB(n122), .Q(ctr[5])
         );
  DFFARX1_RVT \ctr_reg[1]  ( .D(n94), .CLK(wb_clk_i), .RSTB(n123), .Q(ctr[1])
         );
  DFFARX1_RVT \ctr_reg[0]  ( .D(n93), .CLK(wb_clk_i), .RSTB(n122), .Q(ctr[0])
         );
  DFFARX1_RVT \txr_reg[4]  ( .D(n89), .CLK(wb_clk_i), .RSTB(n123), .Q(txr[4])
         );
  DFFARX1_RVT \txr_reg[3]  ( .D(n88), .CLK(wb_clk_i), .RSTB(n122), .Q(txr[3])
         );
  DFFARX1_RVT \txr_reg[2]  ( .D(n87), .CLK(wb_clk_i), .RSTB(n123), .Q(txr[2])
         );
  DFFARX1_RVT \txr_reg[7]  ( .D(n92), .CLK(wb_clk_i), .RSTB(n123), .Q(txr[7])
         );
  DFFARX1_RVT \txr_reg[6]  ( .D(n91), .CLK(wb_clk_i), .RSTB(n123), .Q(txr[6])
         );
  DFFARX1_RVT \txr_reg[5]  ( .D(n90), .CLK(wb_clk_i), .RSTB(n122), .Q(txr[5])
         );
  DFFARX1_RVT \txr_reg[1]  ( .D(n86), .CLK(wb_clk_i), .RSTB(n123), .Q(txr[1])
         );
  DFFARX1_RVT \txr_reg[0]  ( .D(n85), .CLK(wb_clk_i), .RSTB(n123), .Q(txr[0])
         );
  DFFARX1_RVT \ctr_reg[6]  ( .D(n99), .CLK(wb_clk_i), .RSTB(n122), .Q(ctr[6])
         );
  DFFARX1_RVT \ctr_reg[7]  ( .D(n100), .CLK(wb_clk_i), .RSTB(n122), .Q(ctr[7])
         );
  AND3X1_RVT U114 ( .A1(n134), .A2(n133), .A3(wb_adr_i[0]), .Y(n101) );
  AND3X1_RVT U115 ( .A1(n134), .A2(n133), .A3(n135), .Y(n102) );
  AND3X1_RVT U116 ( .A1(n135), .A2(n133), .A3(wb_adr_i[1]), .Y(n103) );
  AND3X1_RVT U117 ( .A1(wb_adr_i[0]), .A2(n133), .A3(wb_adr_i[1]), .Y(n104) );
  INVX1_RVT U118 ( .A(n26), .Y(n131) );
  INVX1_RVT U119 ( .A(n28), .Y(n130) );
  INVX1_RVT U120 ( .A(n31), .Y(n129) );
  INVX1_RVT U121 ( .A(n34), .Y(n128) );
  NAND2X0_RVT U122 ( .A1(n101), .A2(n15), .Y(n28) );
  NAND2X0_RVT U123 ( .A1(n102), .A2(n15), .Y(n26) );
  AO21X1_RVT U124 ( .A1(n104), .A2(n15), .A3(n125), .Y(n31) );
  AO21X1_RVT U125 ( .A1(n103), .A2(n15), .A3(n125), .Y(n34) );
  AND2X1_RVT U126 ( .A1(n15), .A2(n31), .Y(n30) );
  AND2X1_RVT U127 ( .A1(n15), .A2(n34), .Y(n33) );
  INVX1_RVT U128 ( .A(n19), .Y(n127) );
  AND2X1_RVT U129 ( .A1(n15), .A2(n19), .Y(n18) );
  AND2X1_RVT U130 ( .A1(n15), .A2(n16), .Y(n14) );
  INVX1_RVT U131 ( .A(n16), .Y(n132) );
  NOR2X0_RVT U132 ( .A1(n22), .A2(wb_rst_i), .Y(n15) );
  NAND3X0_RVT U133 ( .A1(n17), .A2(n126), .A3(n20), .Y(n19) );
  NAND2X0_RVT U134 ( .A1(n21), .A2(n22), .Y(n20) );
  NAND2X0_RVT U135 ( .A1(n15), .A2(n17), .Y(n16) );
  INVX1_RVT U136 ( .A(n124), .Y(n121) );
  INVX1_RVT U137 ( .A(n124), .Y(n123) );
  INVX1_RVT U138 ( .A(n124), .Y(n122) );
  AO221X1_RVT U139 ( .A1(n131), .A2(wb_dat_i[0]), .A3(prer[0]), .A4(n26), .A5(
        n125), .Y(n69) );
  AO221X1_RVT U140 ( .A1(n131), .A2(wb_dat_i[1]), .A3(prer[1]), .A4(n26), .A5(
        wb_rst_i), .Y(n70) );
  AO221X1_RVT U141 ( .A1(n131), .A2(wb_dat_i[2]), .A3(prer[2]), .A4(n26), .A5(
        wb_rst_i), .Y(n71) );
  AO221X1_RVT U142 ( .A1(n131), .A2(wb_dat_i[3]), .A3(prer[3]), .A4(n26), .A5(
        n125), .Y(n72) );
  AO221X1_RVT U143 ( .A1(n131), .A2(wb_dat_i[4]), .A3(prer[4]), .A4(n26), .A5(
        n125), .Y(n73) );
  AO221X1_RVT U144 ( .A1(n131), .A2(wb_dat_i[5]), .A3(prer[5]), .A4(n26), .A5(
        n125), .Y(n74) );
  AO221X1_RVT U145 ( .A1(n131), .A2(wb_dat_i[6]), .A3(prer[6]), .A4(n26), .A5(
        n125), .Y(n75) );
  AO221X1_RVT U146 ( .A1(n131), .A2(wb_dat_i[7]), .A3(prer[7]), .A4(n26), .A5(
        n125), .Y(n76) );
  AO221X1_RVT U147 ( .A1(n130), .A2(wb_dat_i[0]), .A3(prer[8]), .A4(n28), .A5(
        n125), .Y(n77) );
  AO221X1_RVT U148 ( .A1(n130), .A2(wb_dat_i[1]), .A3(prer[9]), .A4(n28), .A5(
        n125), .Y(n78) );
  AO221X1_RVT U149 ( .A1(n130), .A2(wb_dat_i[2]), .A3(prer[10]), .A4(n28), 
        .A5(n125), .Y(n79) );
  AO221X1_RVT U150 ( .A1(n130), .A2(wb_dat_i[3]), .A3(prer[11]), .A4(n28), 
        .A5(n125), .Y(n80) );
  AO221X1_RVT U151 ( .A1(n130), .A2(wb_dat_i[4]), .A3(prer[12]), .A4(n28), 
        .A5(n125), .Y(n81) );
  AO221X1_RVT U152 ( .A1(n130), .A2(wb_dat_i[5]), .A3(prer[13]), .A4(n28), 
        .A5(wb_rst_i), .Y(n82) );
  AO221X1_RVT U153 ( .A1(n130), .A2(wb_dat_i[6]), .A3(prer[14]), .A4(n28), 
        .A5(wb_rst_i), .Y(n83) );
  AO221X1_RVT U154 ( .A1(n130), .A2(wb_dat_i[7]), .A3(prer[15]), .A4(n28), 
        .A5(wb_rst_i), .Y(n84) );
  INVX1_RVT U155 ( .A(wb_rst_i), .Y(n126) );
  AO22X1_RVT U156 ( .A1(txr[0]), .A2(n129), .A3(n30), .A4(wb_dat_i[0]), .Y(n85) );
  AO22X1_RVT U157 ( .A1(txr[1]), .A2(n129), .A3(n30), .A4(wb_dat_i[1]), .Y(n86) );
  AO22X1_RVT U158 ( .A1(txr[2]), .A2(n129), .A3(n30), .A4(wb_dat_i[2]), .Y(n87) );
  AO22X1_RVT U159 ( .A1(txr[3]), .A2(n129), .A3(n30), .A4(wb_dat_i[3]), .Y(n88) );
  AO22X1_RVT U160 ( .A1(txr[4]), .A2(n129), .A3(n30), .A4(wb_dat_i[4]), .Y(n89) );
  AO22X1_RVT U161 ( .A1(txr[5]), .A2(n129), .A3(n30), .A4(wb_dat_i[5]), .Y(n90) );
  AO22X1_RVT U162 ( .A1(txr[6]), .A2(n129), .A3(n30), .A4(wb_dat_i[6]), .Y(n91) );
  AO22X1_RVT U163 ( .A1(txr[7]), .A2(n129), .A3(n30), .A4(wb_dat_i[7]), .Y(n92) );
  AO22X1_RVT U164 ( .A1(ctr[0]), .A2(n128), .A3(n33), .A4(wb_dat_i[0]), .Y(n93) );
  AO22X1_RVT U165 ( .A1(ctr[1]), .A2(n128), .A3(n33), .A4(wb_dat_i[1]), .Y(n94) );
  AO22X1_RVT U166 ( .A1(ctr[2]), .A2(n128), .A3(n33), .A4(wb_dat_i[2]), .Y(n95) );
  AO22X1_RVT U167 ( .A1(ctr[3]), .A2(n128), .A3(n33), .A4(wb_dat_i[3]), .Y(n96) );
  AO22X1_RVT U168 ( .A1(ctr[4]), .A2(n128), .A3(n33), .A4(wb_dat_i[4]), .Y(n97) );
  AO22X1_RVT U169 ( .A1(ctr[5]), .A2(n128), .A3(n33), .A4(wb_dat_i[5]), .Y(n98) );
  AO22X1_RVT U170 ( .A1(ctr[6]), .A2(n128), .A3(n33), .A4(wb_dat_i[6]), .Y(n99) );
  AO22X1_RVT U171 ( .A1(n128), .A2(ctr[7]), .A3(n33), .A4(wb_dat_i[7]), .Y(
        n100) );
  NAND3X0_RVT U172 ( .A1(wb_stb_i), .A2(wb_cyc_i), .A3(wb_we_i), .Y(n22) );
  AO22X1_RVT U173 ( .A1(cr[4]), .A2(n127), .A3(wb_dat_i[4]), .A4(n18), .Y(n67)
         );
  AO22X1_RVT U174 ( .A1(cr[5]), .A2(n127), .A3(wb_dat_i[5]), .A4(n18), .Y(n66)
         );
  AO22X1_RVT U175 ( .A1(cr[6]), .A2(n127), .A3(wb_dat_i[6]), .A4(n18), .Y(n65)
         );
  AO22X1_RVT U176 ( .A1(cr[7]), .A2(n127), .A3(wb_dat_i[7]), .A4(n18), .Y(n64)
         );
  NAND3X0_RVT U177 ( .A1(n15), .A2(n25), .A3(ctr[7]), .Y(n17) );
  AO22X1_RVT U178 ( .A1(cr[0]), .A2(n132), .A3(wb_dat_i[0]), .A4(n14), .Y(n61)
         );
  AO22X1_RVT U179 ( .A1(cr[1]), .A2(n132), .A3(wb_dat_i[1]), .A4(n14), .Y(n62)
         );
  AO22X1_RVT U180 ( .A1(cr[2]), .A2(n132), .A3(wb_dat_i[2]), .A4(n14), .Y(n63)
         );
  NAND2X0_RVT U181 ( .A1(n23), .A2(n24), .Y(n68) );
  NAND4X0_RVT U182 ( .A1(wb_dat_i[3]), .A2(ctr[7]), .A3(n15), .A4(n25), .Y(n24) );
  NAND3X0_RVT U183 ( .A1(n17), .A2(n126), .A3(cr[3]), .Y(n23) );
  INVX1_RVT U184 ( .A(wb_adr_i[2]), .Y(n133) );
  INVX1_RVT U185 ( .A(wb_adr_i[0]), .Y(n135) );
  INVX1_RVT U186 ( .A(wb_adr_i[1]), .Y(n134) );
  AND3X1_RVT U187 ( .A1(n135), .A2(n134), .A3(wb_adr_i[2]), .Y(n25) );
  AND3X1_RVT U188 ( .A1(wb_adr_i[2]), .A2(n134), .A3(wb_adr_i[0]), .Y(n40) );
  OR3X2_RVT U189 ( .A1(n105), .A2(n106), .A3(n107), .Y(N43) );
  AO22X1_RVT U190 ( .A1(sr_0), .A2(n25), .A3(rxr[0]), .A4(n104), .Y(n105) );
  AO22X1_RVT U191 ( .A1(cr[0]), .A2(n39), .A3(txr[0]), .A4(n40), .Y(n106) );
  AO222X1_RVT U192 ( .A1(n102), .A2(prer[0]), .A3(n103), .A4(ctr[0]), .A5(n101), .A6(prer[8]), .Y(n107) );
  OR3X2_RVT U193 ( .A1(n108), .A2(n109), .A3(n110), .Y(N44) );
  AO22X1_RVT U194 ( .A1(sr_1), .A2(n25), .A3(rxr[1]), .A4(n104), .Y(n108) );
  AO22X1_RVT U195 ( .A1(cr[1]), .A2(n39), .A3(txr[1]), .A4(n40), .Y(n109) );
  AO222X1_RVT U196 ( .A1(n102), .A2(prer[1]), .A3(n103), .A4(ctr[1]), .A5(n101), .A6(prer[9]), .Y(n110) );
  OR3X2_RVT U197 ( .A1(n111), .A2(n112), .A3(n113), .Y(N50) );
  AO22X1_RVT U198 ( .A1(sr[7]), .A2(n25), .A3(rxr[7]), .A4(n104), .Y(n111) );
  AO22X1_RVT U199 ( .A1(cr[7]), .A2(n39), .A3(txr[7]), .A4(n40), .Y(n112) );
  AO222X1_RVT U200 ( .A1(n102), .A2(prer[7]), .A3(ctr[7]), .A4(n103), .A5(n101), .A6(prer[15]), .Y(n113) );
  OR3X2_RVT U201 ( .A1(n114), .A2(n115), .A3(n116), .Y(N48) );
  AO22X1_RVT U202 ( .A1(sr[5]), .A2(n25), .A3(rxr[5]), .A4(n104), .Y(n114) );
  AO22X1_RVT U203 ( .A1(cr[5]), .A2(n39), .A3(txr[5]), .A4(n40), .Y(n115) );
  AO222X1_RVT U204 ( .A1(n102), .A2(prer[5]), .A3(n103), .A4(ctr[5]), .A5(n101), .A6(prer[13]), .Y(n116) );
  OR3X2_RVT U205 ( .A1(n117), .A2(n118), .A3(n119), .Y(N49) );
  AO22X1_RVT U206 ( .A1(sr[6]), .A2(n25), .A3(rxr[6]), .A4(n104), .Y(n117) );
  AO22X1_RVT U207 ( .A1(cr[6]), .A2(n39), .A3(txr[6]), .A4(n40), .Y(n118) );
  AO222X1_RVT U208 ( .A1(n102), .A2(prer[6]), .A3(n103), .A4(ctr[6]), .A5(n101), .A6(prer[14]), .Y(n119) );
  OR2X1_RVT U209 ( .A1(n51), .A2(n52), .Y(N45) );
  AO222X1_RVT U210 ( .A1(prer[10]), .A2(n101), .A3(ctr[2]), .A4(n103), .A5(
        prer[2]), .A6(n102), .Y(n52) );
  AO222X1_RVT U211 ( .A1(n40), .A2(txr[2]), .A3(n39), .A4(cr[2]), .A5(rxr[2]), 
        .A6(n104), .Y(n51) );
  OR2X1_RVT U212 ( .A1(n49), .A2(n50), .Y(N46) );
  AO222X1_RVT U213 ( .A1(prer[11]), .A2(n101), .A3(ctr[3]), .A4(n103), .A5(
        prer[3]), .A6(n102), .Y(n50) );
  AO222X1_RVT U214 ( .A1(n40), .A2(txr[3]), .A3(n39), .A4(cr[3]), .A5(rxr[3]), 
        .A6(n104), .Y(n49) );
  OR2X1_RVT U215 ( .A1(n47), .A2(n48), .Y(N47) );
  AO222X1_RVT U216 ( .A1(prer[12]), .A2(n101), .A3(ctr[4]), .A4(n103), .A5(
        prer[4]), .A6(n102), .Y(n48) );
  AO222X1_RVT U217 ( .A1(n40), .A2(txr[4]), .A3(n39), .A4(cr[4]), .A5(rxr[4]), 
        .A6(n104), .Y(n47) );
  AND3X1_RVT U218 ( .A1(wb_adr_i[2]), .A2(n135), .A3(wb_adr_i[1]), .Y(n39) );
  AND3X1_RVT U219 ( .A1(ctr[6]), .A2(n126), .A3(sr_0), .Y(N121) );
  AND3X1_RVT U220 ( .A1(n5), .A2(n126), .A3(n59), .Y(N117) );
  OR2X1_RVT U221 ( .A1(n21), .A2(sr_0), .Y(n59) );
  AND2X1_RVT U222 ( .A1(irxack), .A2(n126), .Y(N115) );
  OA21X1_RVT U223 ( .A1(i2c_al), .A2(n60), .A3(n126), .Y(N114) );
  AND2X1_RVT U224 ( .A1(sr[5]), .A2(n4), .Y(n60) );
  OA21X1_RVT U225 ( .A1(cr[4]), .A2(cr[5]), .A3(n126), .Y(N116) );
  OR2X1_RVT U226 ( .A1(done), .A2(i2c_al), .Y(n21) );
  AND3X1_RVT U227 ( .A1(wb_stb_i), .A2(n1), .A3(wb_cyc_i), .Y(N20) );
  INVX1_RVT U228 ( .A(arst_i), .Y(n124) );
  INVX1_RVT U230 ( .A(n126), .Y(n125) );
endmodule

