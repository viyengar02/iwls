/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Tue Apr 15 10:30:07 2025
/////////////////////////////////////////////////////////////


module pcm_slv_top ( clk, rst, ssel, pcm_clk_i, pcm_sync_i, pcm_din_i, 
        pcm_dout_o, din_i, dout_o, re_i, we_i );
  input [2:0] ssel;
  input [7:0] din_i;
  output [7:0] dout_o;
  input [1:0] we_i;
  input clk, rst, pcm_clk_i, pcm_sync_i, pcm_din_i, re_i;
  output pcm_dout_o;
  wire   N3, N4, N5, pclk_t, pclk_s, N6, pcm_sync_r2, psync, tx_go, tx_go_r1,
         rxd_t, rxd, n1, n3, n9, n13, n14, n17, n19, n20, n21, n22, n23, n26,
         n27, n29, n30, n31, n32, n33, n35, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156;
  wire   [7:0] psa;
  wire   [7:0] tx_hold_byte_h;
  wire   [7:0] tx_hold_byte_l;
  wire   [14:0] tx_hold_reg;
  wire   [3:0] tx_cnt;
  wire   [15:0] rx_hold_reg;
  wire   [15:0] rx_reg;
  assign N3 = ssel[0];
  assign N4 = ssel[1];
  assign N5 = ssel[2];

  DFFX1_RVT rxd_reg ( .D(rxd_t), .CLK(clk), .Q(rxd) );
  DFFX1_RVT \tx_hold_reg_reg[15]  ( .D(n100), .CLK(clk), .Q(pcm_dout_o) );
  DFFX1_RVT \psa_reg[7]  ( .D(n58), .CLK(clk), .Q(psa[7]) );
  DFFX1_RVT pcm_sync_r1_reg ( .D(n66), .CLK(clk), .Q(n38) );
  DFFX1_RVT \tx_hold_byte_l_reg[0]  ( .D(n41), .CLK(clk), .Q(tx_hold_byte_l[0]) );
  DFFX1_RVT \rx_hold_reg_reg[15]  ( .D(n84), .CLK(clk), .Q(rx_hold_reg[15]) );
  DFFX1_RVT rxd_t_reg ( .D(n39), .CLK(clk), .Q(rxd_t) );
  DFFX1_RVT \rx_reg_reg[7]  ( .D(n75), .CLK(clk), .Q(rx_reg[7]) );
  DFFX1_RVT \rx_reg_reg[6]  ( .D(n74), .CLK(clk), .Q(rx_reg[6]) );
  DFFX1_RVT \rx_reg_reg[5]  ( .D(n73), .CLK(clk), .Q(rx_reg[5]) );
  DFFX1_RVT \rx_reg_reg[4]  ( .D(n72), .CLK(clk), .Q(rx_reg[4]) );
  DFFX1_RVT \rx_reg_reg[3]  ( .D(n71), .CLK(clk), .Q(rx_reg[3]) );
  DFFX1_RVT \rx_reg_reg[2]  ( .D(n70), .CLK(clk), .Q(rx_reg[2]) );
  DFFX1_RVT \rx_reg_reg[1]  ( .D(n69), .CLK(clk), .Q(rx_reg[1]) );
  DFFX1_RVT \rx_reg_reg[0]  ( .D(n68), .CLK(clk), .Q(rx_reg[0]) );
  DFFX1_RVT \rx_reg_reg[15]  ( .D(n83), .CLK(clk), .Q(rx_reg[15]) );
  DFFX1_RVT \rx_reg_reg[14]  ( .D(n82), .CLK(clk), .Q(rx_reg[14]) );
  DFFX1_RVT \rx_reg_reg[13]  ( .D(n81), .CLK(clk), .Q(rx_reg[13]) );
  DFFX1_RVT \rx_reg_reg[12]  ( .D(n80), .CLK(clk), .Q(rx_reg[12]) );
  DFFX1_RVT \rx_reg_reg[11]  ( .D(n79), .CLK(clk), .Q(rx_reg[11]) );
  DFFX1_RVT \rx_reg_reg[10]  ( .D(n78), .CLK(clk), .Q(rx_reg[10]) );
  DFFX1_RVT \rx_reg_reg[9]  ( .D(n77), .CLK(clk), .Q(rx_reg[9]) );
  DFFX1_RVT \rx_reg_reg[8]  ( .D(n76), .CLK(clk), .Q(rx_reg[8]) );
  DFFX1_RVT \tx_hold_reg_reg[0]  ( .D(n114), .CLK(clk), .Q(tx_hold_reg[0]) );
  DFFX1_RVT \tx_hold_reg_reg[1]  ( .D(n115), .CLK(clk), .Q(tx_hold_reg[1]) );
  DFFX1_RVT \tx_hold_reg_reg[2]  ( .D(n113), .CLK(clk), .Q(tx_hold_reg[2]) );
  DFFX1_RVT \tx_hold_reg_reg[3]  ( .D(n112), .CLK(clk), .Q(tx_hold_reg[3]) );
  DFFX1_RVT \tx_hold_reg_reg[4]  ( .D(n111), .CLK(clk), .Q(tx_hold_reg[4]) );
  DFFX1_RVT \tx_hold_reg_reg[5]  ( .D(n110), .CLK(clk), .Q(tx_hold_reg[5]) );
  DFFX1_RVT \tx_hold_reg_reg[6]  ( .D(n109), .CLK(clk), .Q(tx_hold_reg[6]) );
  DFFX1_RVT \tx_hold_reg_reg[7]  ( .D(n108), .CLK(clk), .Q(tx_hold_reg[7]) );
  DFFX1_RVT \tx_hold_reg_reg[8]  ( .D(n107), .CLK(clk), .Q(tx_hold_reg[8]) );
  DFFX1_RVT \tx_hold_reg_reg[9]  ( .D(n106), .CLK(clk), .Q(tx_hold_reg[9]) );
  DFFX1_RVT \tx_hold_reg_reg[10]  ( .D(n105), .CLK(clk), .Q(tx_hold_reg[10])
         );
  DFFX1_RVT \tx_hold_reg_reg[11]  ( .D(n104), .CLK(clk), .Q(tx_hold_reg[11])
         );
  DFFX1_RVT \tx_hold_reg_reg[12]  ( .D(n103), .CLK(clk), .Q(tx_hold_reg[12])
         );
  DFFX1_RVT \tx_hold_reg_reg[13]  ( .D(n102), .CLK(clk), .Q(tx_hold_reg[13])
         );
  DFFX1_RVT \tx_hold_reg_reg[14]  ( .D(n101), .CLK(clk), .Q(tx_hold_reg[14])
         );
  DFFX1_RVT \tx_hold_byte_h_reg[7]  ( .D(n56), .CLK(clk), .Q(tx_hold_byte_h[7]) );
  DFFX1_RVT \tx_hold_byte_h_reg[6]  ( .D(n55), .CLK(clk), .Q(tx_hold_byte_h[6]) );
  DFFX1_RVT \tx_hold_byte_h_reg[5]  ( .D(n54), .CLK(clk), .Q(tx_hold_byte_h[5]) );
  DFFX1_RVT \tx_hold_byte_h_reg[4]  ( .D(n53), .CLK(clk), .Q(tx_hold_byte_h[4]) );
  DFFX1_RVT \tx_hold_byte_h_reg[3]  ( .D(n52), .CLK(clk), .Q(tx_hold_byte_h[3]) );
  DFFX1_RVT \tx_hold_byte_h_reg[2]  ( .D(n51), .CLK(clk), .Q(tx_hold_byte_h[2]) );
  DFFX1_RVT \tx_hold_byte_h_reg[1]  ( .D(n50), .CLK(clk), .Q(tx_hold_byte_h[1]) );
  DFFX1_RVT \tx_hold_byte_h_reg[0]  ( .D(n49), .CLK(clk), .Q(tx_hold_byte_h[0]) );
  DFFX1_RVT \tx_hold_byte_l_reg[7]  ( .D(n48), .CLK(clk), .Q(tx_hold_byte_l[7]) );
  DFFX1_RVT \tx_hold_byte_l_reg[6]  ( .D(n47), .CLK(clk), .Q(tx_hold_byte_l[6]) );
  DFFX1_RVT \tx_hold_byte_l_reg[5]  ( .D(n46), .CLK(clk), .Q(tx_hold_byte_l[5]) );
  DFFX1_RVT \tx_hold_byte_l_reg[4]  ( .D(n45), .CLK(clk), .Q(tx_hold_byte_l[4]) );
  DFFX1_RVT \tx_hold_byte_l_reg[3]  ( .D(n44), .CLK(clk), .Q(tx_hold_byte_l[3]) );
  DFFX1_RVT \tx_hold_byte_l_reg[2]  ( .D(n43), .CLK(clk), .Q(tx_hold_byte_l[2]) );
  DFFX1_RVT \tx_hold_byte_l_reg[1]  ( .D(n42), .CLK(clk), .Q(tx_hold_byte_l[1]) );
  DFFX1_RVT \psa_reg[1]  ( .D(n64), .CLK(clk), .Q(psa[1]) );
  DFFX1_RVT \psa_reg[3]  ( .D(n62), .CLK(clk), .Q(psa[3]) );
  DFFX1_RVT \psa_reg[5]  ( .D(n60), .CLK(clk), .Q(psa[5]) );
  DFFX1_RVT \psa_reg[0]  ( .D(n65), .CLK(clk), .Q(psa[0]) );
  DFFX1_RVT \psa_reg[2]  ( .D(n63), .CLK(clk), .Q(psa[2]) );
  DFFX1_RVT \psa_reg[4]  ( .D(n61), .CLK(clk), .Q(psa[4]) );
  DFFX1_RVT \psa_reg[6]  ( .D(n59), .CLK(clk), .Q(psa[6]) );
  DFFX1_RVT \rx_hold_reg_reg[0]  ( .D(n99), .CLK(clk), .Q(rx_hold_reg[0]) );
  DFFX1_RVT \rx_hold_reg_reg[1]  ( .D(n98), .CLK(clk), .Q(rx_hold_reg[1]) );
  DFFX1_RVT \rx_hold_reg_reg[2]  ( .D(n97), .CLK(clk), .Q(rx_hold_reg[2]) );
  DFFX1_RVT \rx_hold_reg_reg[3]  ( .D(n96), .CLK(clk), .Q(rx_hold_reg[3]) );
  DFFX1_RVT \rx_hold_reg_reg[4]  ( .D(n95), .CLK(clk), .Q(rx_hold_reg[4]) );
  DFFX1_RVT \rx_hold_reg_reg[5]  ( .D(n94), .CLK(clk), .Q(rx_hold_reg[5]) );
  DFFX1_RVT \rx_hold_reg_reg[6]  ( .D(n93), .CLK(clk), .Q(rx_hold_reg[6]) );
  DFFX1_RVT \rx_hold_reg_reg[7]  ( .D(n92), .CLK(clk), .Q(rx_hold_reg[7]) );
  DFFX1_RVT \rx_hold_reg_reg[8]  ( .D(n91), .CLK(clk), .Q(rx_hold_reg[8]) );
  DFFX1_RVT \rx_hold_reg_reg[9]  ( .D(n90), .CLK(clk), .Q(rx_hold_reg[9]) );
  DFFX1_RVT \rx_hold_reg_reg[10]  ( .D(n89), .CLK(clk), .Q(rx_hold_reg[10]) );
  DFFX1_RVT \rx_hold_reg_reg[11]  ( .D(n88), .CLK(clk), .Q(rx_hold_reg[11]) );
  DFFX1_RVT \rx_hold_reg_reg[12]  ( .D(n87), .CLK(clk), .Q(rx_hold_reg[12]) );
  DFFX1_RVT \rx_hold_reg_reg[13]  ( .D(n86), .CLK(clk), .Q(rx_hold_reg[13]) );
  DFFX1_RVT \rx_hold_reg_reg[14]  ( .D(n85), .CLK(clk), .Q(rx_hold_reg[14]) );
  DFFX1_RVT \tx_cnt_reg[3]  ( .D(n119), .CLK(clk), .Q(tx_cnt[3]) );
  DFFX1_RVT \tx_cnt_reg[2]  ( .D(n117), .CLK(clk), .Q(tx_cnt[2]), .QN(n125) );
  DFFX1_RVT \tx_cnt_reg[1]  ( .D(n116), .CLK(clk), .Q(tx_cnt[1]), .QN(n124) );
  DFFX1_RVT \tx_cnt_reg[0]  ( .D(n120), .CLK(clk), .Q(tx_cnt[0]), .QN(n123) );
  DFFX1_RVT tx_go_r1_reg ( .D(n40), .CLK(clk), .Q(tx_go_r1) );
  DFFSSRX1_RVT psync_reg ( .D(pcm_sync_r2), .SETB(1'b1), .RSTB(n67), .CLK(clk), 
        .Q(psync) );
  DFFX1_RVT tx_go_reg ( .D(n118), .CLK(clk), .Q(tx_go), .QN(n122) );
  DFFX1_RVT pclk_r_reg ( .D(pclk_s), .CLK(clk), .QN(n121) );
  DFFX1_RVT pclk_s_reg ( .D(pclk_t), .CLK(clk), .Q(pclk_s) );
  DFFX1_RVT pcm_sync_r2_reg ( .D(N6), .CLK(clk), .Q(pcm_sync_r2) );
  DFFX1_RVT pclk_t_reg ( .D(pcm_clk_i), .CLK(clk), .Q(pclk_t) );
  DFFX1_RVT pcm_sync_r3_reg ( .D(pcm_sync_r2), .CLK(clk), .QN(n67) );
  INVX1_RVT U128 ( .A(n21), .Y(n150) );
  INVX1_RVT U129 ( .A(n3), .Y(n156) );
  AO21X1_RVT U130 ( .A1(n150), .A2(n124), .A3(n22), .Y(n26) );
  INVX1_RVT U131 ( .A(n126), .Y(n136) );
  NBUFFX2_RVT U132 ( .A(n17), .Y(n132) );
  NBUFFX2_RVT U133 ( .A(n17), .Y(n133) );
  INVX1_RVT U134 ( .A(n126), .Y(n137) );
  INVX1_RVT U135 ( .A(n127), .Y(n134) );
  INVX1_RVT U136 ( .A(n127), .Y(n135) );
  INVX1_RVT U137 ( .A(n1), .Y(n155) );
  NAND2X0_RVT U138 ( .A1(rst), .A2(n9), .Y(n126) );
  AND3X1_RVT U139 ( .A1(n20), .A2(n19), .A3(rst), .Y(n17) );
  AO22X1_RVT U140 ( .A1(rst), .A2(n21), .A3(n150), .A4(n123), .Y(n22) );
  AO222X1_RVT U141 ( .A1(tx_hold_reg[14]), .A2(n151), .A3(pcm_dout_o), .A4(
        n132), .A5(n149), .A6(tx_hold_byte_h[7]), .Y(n100) );
  AO222X1_RVT U142 ( .A1(tx_hold_reg[13]), .A2(n151), .A3(tx_hold_reg[14]), 
        .A4(n133), .A5(n149), .A6(tx_hold_byte_h[6]), .Y(n101) );
  AO222X1_RVT U143 ( .A1(tx_hold_reg[12]), .A2(n151), .A3(tx_hold_reg[13]), 
        .A4(n133), .A5(n149), .A6(tx_hold_byte_h[5]), .Y(n102) );
  AO222X1_RVT U144 ( .A1(tx_hold_reg[11]), .A2(n151), .A3(tx_hold_reg[12]), 
        .A4(n132), .A5(n149), .A6(tx_hold_byte_h[4]), .Y(n103) );
  AO222X1_RVT U145 ( .A1(tx_hold_reg[10]), .A2(n151), .A3(tx_hold_reg[11]), 
        .A4(n133), .A5(n149), .A6(tx_hold_byte_h[3]), .Y(n104) );
  AO222X1_RVT U146 ( .A1(tx_hold_reg[9]), .A2(n131), .A3(tx_hold_reg[10]), 
        .A4(n17), .A5(n149), .A6(tx_hold_byte_h[2]), .Y(n105) );
  AO222X1_RVT U147 ( .A1(tx_hold_reg[8]), .A2(n131), .A3(tx_hold_reg[9]), .A4(
        n132), .A5(n149), .A6(tx_hold_byte_h[1]), .Y(n106) );
  AO222X1_RVT U148 ( .A1(tx_hold_reg[7]), .A2(n131), .A3(tx_hold_reg[8]), .A4(
        n133), .A5(n149), .A6(tx_hold_byte_h[0]), .Y(n107) );
  AO222X1_RVT U149 ( .A1(tx_hold_reg[6]), .A2(n151), .A3(tx_hold_reg[7]), .A4(
        n17), .A5(n129), .A6(tx_hold_byte_l[7]), .Y(n108) );
  AO222X1_RVT U150 ( .A1(tx_hold_reg[5]), .A2(n131), .A3(tx_hold_reg[6]), .A4(
        n132), .A5(n129), .A6(tx_hold_byte_l[6]), .Y(n109) );
  AO222X1_RVT U151 ( .A1(tx_hold_reg[4]), .A2(n131), .A3(tx_hold_reg[5]), .A4(
        n133), .A5(n129), .A6(tx_hold_byte_l[5]), .Y(n110) );
  AO222X1_RVT U152 ( .A1(tx_hold_reg[3]), .A2(n131), .A3(tx_hold_reg[4]), .A4(
        n17), .A5(n129), .A6(tx_hold_byte_l[4]), .Y(n111) );
  AO222X1_RVT U153 ( .A1(tx_hold_reg[2]), .A2(n151), .A3(tx_hold_reg[3]), .A4(
        n132), .A5(n129), .A6(tx_hold_byte_l[3]), .Y(n112) );
  AO222X1_RVT U154 ( .A1(tx_hold_reg[1]), .A2(n131), .A3(tx_hold_reg[2]), .A4(
        n133), .A5(n129), .A6(tx_hold_byte_l[2]), .Y(n113) );
  AO222X1_RVT U155 ( .A1(tx_hold_reg[0]), .A2(n131), .A3(tx_hold_reg[1]), .A4(
        n17), .A5(n129), .A6(tx_hold_byte_l[1]), .Y(n115) );
  AO21X1_RVT U156 ( .A1(tx_cnt[2]), .A2(n26), .A3(n27), .Y(n117) );
  AND4X1_RVT U157 ( .A1(tx_cnt[1]), .A2(tx_cnt[0]), .A3(n150), .A4(n125), .Y(
        n27) );
  AO22X1_RVT U158 ( .A1(tx_cnt[3]), .A2(n32), .A3(n33), .A4(n31), .Y(n119) );
  NOR2X0_RVT U159 ( .A1(n21), .A2(tx_cnt[3]), .Y(n33) );
  AO21X1_RVT U160 ( .A1(n150), .A2(n125), .A3(n26), .Y(n32) );
  AO22X1_RVT U161 ( .A1(tx_cnt[1]), .A2(n22), .A3(n23), .A4(tx_cnt[0]), .Y(
        n116) );
  AND2X1_RVT U162 ( .A1(n150), .A2(n124), .Y(n23) );
  AO22X1_RVT U163 ( .A1(rx_hold_reg[0]), .A2(n147), .A3(rx_reg[0]), .A4(n136), 
        .Y(n68) );
  AO22X1_RVT U164 ( .A1(rx_hold_reg[1]), .A2(n147), .A3(rx_reg[1]), .A4(n136), 
        .Y(n69) );
  AO22X1_RVT U165 ( .A1(rx_hold_reg[2]), .A2(n147), .A3(rx_reg[2]), .A4(n136), 
        .Y(n70) );
  AO22X1_RVT U166 ( .A1(rx_hold_reg[3]), .A2(n147), .A3(rx_reg[3]), .A4(n136), 
        .Y(n71) );
  AO22X1_RVT U167 ( .A1(rx_hold_reg[4]), .A2(n147), .A3(rx_reg[4]), .A4(n136), 
        .Y(n72) );
  AO22X1_RVT U168 ( .A1(rx_hold_reg[5]), .A2(n147), .A3(rx_reg[5]), .A4(n136), 
        .Y(n73) );
  AO22X1_RVT U169 ( .A1(rx_hold_reg[6]), .A2(n147), .A3(rx_reg[6]), .A4(n137), 
        .Y(n74) );
  AO22X1_RVT U170 ( .A1(rx_hold_reg[7]), .A2(n147), .A3(rx_reg[7]), .A4(n137), 
        .Y(n75) );
  AO22X1_RVT U171 ( .A1(rx_hold_reg[8]), .A2(n130), .A3(rx_reg[8]), .A4(n137), 
        .Y(n76) );
  AO22X1_RVT U172 ( .A1(rx_hold_reg[9]), .A2(n130), .A3(rx_reg[9]), .A4(n137), 
        .Y(n77) );
  AO22X1_RVT U173 ( .A1(rx_hold_reg[10]), .A2(n130), .A3(rx_reg[10]), .A4(n137), .Y(n78) );
  AO22X1_RVT U174 ( .A1(rx_hold_reg[11]), .A2(n130), .A3(rx_reg[11]), .A4(n136), .Y(n79) );
  AO22X1_RVT U175 ( .A1(rx_hold_reg[12]), .A2(n130), .A3(rx_reg[12]), .A4(n137), .Y(n80) );
  AO22X1_RVT U176 ( .A1(rx_hold_reg[13]), .A2(n130), .A3(rx_reg[13]), .A4(n137), .Y(n81) );
  AO22X1_RVT U177 ( .A1(rx_hold_reg[14]), .A2(n130), .A3(rx_reg[14]), .A4(n137), .Y(n82) );
  AO22X1_RVT U178 ( .A1(rx_hold_reg[15]), .A2(n130), .A3(rx_reg[15]), .A4(n136), .Y(n83) );
  AO22X1_RVT U179 ( .A1(n129), .A2(tx_hold_byte_l[0]), .A3(tx_hold_reg[0]), 
        .A4(n132), .Y(n114) );
  NAND3X0_RVT U180 ( .A1(tx_go), .A2(n156), .A3(rst), .Y(n21) );
  NAND4X0_RVT U181 ( .A1(rst), .A2(tx_go_r1), .A3(n156), .A4(n122), .Y(n9) );
  NAND2X0_RVT U182 ( .A1(pclk_s), .A2(n121), .Y(n3) );
  AO22X1_RVT U183 ( .A1(n150), .A2(n123), .A3(n35), .A4(tx_cnt[0]), .Y(n120)
         );
  AND2X1_RVT U184 ( .A1(rst), .A2(n21), .Y(n35) );
  AO22X1_RVT U185 ( .A1(tx_go_r1), .A2(n3), .A3(tx_go), .A4(n156), .Y(n40) );
  AO22X1_RVT U186 ( .A1(psa[7]), .A2(n3), .A3(psa[6]), .A4(n156), .Y(n58) );
  AO22X1_RVT U187 ( .A1(psa[6]), .A2(n3), .A3(psa[5]), .A4(n156), .Y(n59) );
  AO22X1_RVT U188 ( .A1(psa[5]), .A2(n3), .A3(psa[4]), .A4(n156), .Y(n60) );
  AO22X1_RVT U189 ( .A1(psa[4]), .A2(n3), .A3(psa[3]), .A4(n156), .Y(n61) );
  AO22X1_RVT U190 ( .A1(psa[3]), .A2(n3), .A3(psa[2]), .A4(n156), .Y(n62) );
  AO22X1_RVT U191 ( .A1(psa[2]), .A2(n3), .A3(psa[1]), .A4(n156), .Y(n63) );
  AO22X1_RVT U192 ( .A1(psa[1]), .A2(n3), .A3(psa[0]), .A4(n156), .Y(n64) );
  AO22X1_RVT U193 ( .A1(psa[0]), .A2(n3), .A3(n38), .A4(n156), .Y(n65) );
  NAND2X0_RVT U194 ( .A1(n29), .A2(n19), .Y(n118) );
  NAND3X0_RVT U195 ( .A1(tx_go), .A2(n30), .A3(rst), .Y(n29) );
  NAND3X0_RVT U196 ( .A1(n31), .A2(n156), .A3(tx_cnt[3]), .Y(n30) );
  INVX1_RVT U197 ( .A(re_i), .Y(n152) );
  INVX1_RVT U198 ( .A(we_i[0]), .Y(n154) );
  INVX1_RVT U199 ( .A(we_i[1]), .Y(n153) );
  OR2X1_RVT U200 ( .A1(tx_go), .A2(tx_go_r1), .Y(n14) );
  AO22X1_RVT U201 ( .A1(re_i), .A2(rx_reg[8]), .A3(rx_reg[0]), .A4(n152), .Y(
        dout_o[0]) );
  AO22X1_RVT U202 ( .A1(re_i), .A2(rx_reg[9]), .A3(rx_reg[1]), .A4(n152), .Y(
        dout_o[1]) );
  AO22X1_RVT U203 ( .A1(re_i), .A2(rx_reg[10]), .A3(rx_reg[2]), .A4(n152), .Y(
        dout_o[2]) );
  AO22X1_RVT U204 ( .A1(re_i), .A2(rx_reg[11]), .A3(rx_reg[3]), .A4(n152), .Y(
        dout_o[3]) );
  AO22X1_RVT U205 ( .A1(re_i), .A2(rx_reg[12]), .A3(rx_reg[4]), .A4(n152), .Y(
        dout_o[4]) );
  AO22X1_RVT U206 ( .A1(re_i), .A2(rx_reg[13]), .A3(rx_reg[5]), .A4(n152), .Y(
        dout_o[5]) );
  AO22X1_RVT U207 ( .A1(re_i), .A2(rx_reg[14]), .A3(rx_reg[6]), .A4(n152), .Y(
        dout_o[6]) );
  AO22X1_RVT U208 ( .A1(re_i), .A2(rx_reg[15]), .A3(rx_reg[7]), .A4(n152), .Y(
        dout_o[7]) );
  AO22X1_RVT U209 ( .A1(tx_hold_byte_l[0]), .A2(n154), .A3(we_i[0]), .A4(
        din_i[0]), .Y(n41) );
  AO22X1_RVT U210 ( .A1(tx_hold_byte_l[1]), .A2(n154), .A3(din_i[1]), .A4(
        we_i[0]), .Y(n42) );
  AO22X1_RVT U211 ( .A1(tx_hold_byte_l[2]), .A2(n154), .A3(din_i[2]), .A4(
        we_i[0]), .Y(n43) );
  AO22X1_RVT U212 ( .A1(tx_hold_byte_l[3]), .A2(n154), .A3(din_i[3]), .A4(
        we_i[0]), .Y(n44) );
  AO22X1_RVT U213 ( .A1(tx_hold_byte_l[4]), .A2(n154), .A3(din_i[4]), .A4(
        we_i[0]), .Y(n45) );
  AO22X1_RVT U214 ( .A1(tx_hold_byte_l[5]), .A2(n154), .A3(din_i[5]), .A4(
        we_i[0]), .Y(n46) );
  AO22X1_RVT U215 ( .A1(tx_hold_byte_l[6]), .A2(n154), .A3(din_i[6]), .A4(
        we_i[0]), .Y(n47) );
  AO22X1_RVT U216 ( .A1(tx_hold_byte_l[7]), .A2(n154), .A3(din_i[7]), .A4(
        we_i[0]), .Y(n48) );
  AO22X1_RVT U217 ( .A1(tx_hold_byte_h[0]), .A2(n153), .A3(we_i[1]), .A4(
        din_i[0]), .Y(n49) );
  AO22X1_RVT U218 ( .A1(tx_hold_byte_h[1]), .A2(n153), .A3(we_i[1]), .A4(
        din_i[1]), .Y(n50) );
  AO22X1_RVT U219 ( .A1(tx_hold_byte_h[2]), .A2(n153), .A3(we_i[1]), .A4(
        din_i[2]), .Y(n51) );
  AO22X1_RVT U220 ( .A1(tx_hold_byte_h[3]), .A2(n153), .A3(we_i[1]), .A4(
        din_i[3]), .Y(n52) );
  AO22X1_RVT U221 ( .A1(tx_hold_byte_h[4]), .A2(n153), .A3(we_i[1]), .A4(
        din_i[4]), .Y(n53) );
  AO22X1_RVT U222 ( .A1(tx_hold_byte_h[5]), .A2(n153), .A3(we_i[1]), .A4(
        din_i[5]), .Y(n54) );
  AO22X1_RVT U223 ( .A1(tx_hold_byte_h[6]), .A2(n153), .A3(we_i[1]), .A4(
        din_i[6]), .Y(n55) );
  AO22X1_RVT U224 ( .A1(tx_hold_byte_h[7]), .A2(n153), .A3(we_i[1]), .A4(
        din_i[7]), .Y(n56) );
  AO22X1_RVT U225 ( .A1(n148), .A2(rx_hold_reg[14]), .A3(n134), .A4(
        rx_hold_reg[15]), .Y(n84) );
  AO22X1_RVT U226 ( .A1(n148), .A2(rx_hold_reg[13]), .A3(n134), .A4(
        rx_hold_reg[14]), .Y(n85) );
  AO22X1_RVT U227 ( .A1(n148), .A2(rx_hold_reg[12]), .A3(n134), .A4(
        rx_hold_reg[13]), .Y(n86) );
  AO22X1_RVT U228 ( .A1(n148), .A2(rx_hold_reg[11]), .A3(n134), .A4(
        rx_hold_reg[12]), .Y(n87) );
  AO22X1_RVT U229 ( .A1(n148), .A2(rx_hold_reg[10]), .A3(n134), .A4(
        rx_hold_reg[11]), .Y(n88) );
  AO22X1_RVT U230 ( .A1(n148), .A2(rx_hold_reg[9]), .A3(n134), .A4(
        rx_hold_reg[10]), .Y(n89) );
  AO22X1_RVT U231 ( .A1(n148), .A2(rx_hold_reg[8]), .A3(n135), .A4(
        rx_hold_reg[9]), .Y(n90) );
  AO22X1_RVT U232 ( .A1(n128), .A2(rx_hold_reg[7]), .A3(n135), .A4(
        rx_hold_reg[8]), .Y(n91) );
  AO22X1_RVT U233 ( .A1(n128), .A2(rx_hold_reg[6]), .A3(n135), .A4(
        rx_hold_reg[7]), .Y(n92) );
  AO22X1_RVT U234 ( .A1(n128), .A2(rx_hold_reg[5]), .A3(n135), .A4(
        rx_hold_reg[6]), .Y(n93) );
  AO22X1_RVT U235 ( .A1(n128), .A2(rx_hold_reg[4]), .A3(n135), .A4(
        rx_hold_reg[5]), .Y(n94) );
  AO22X1_RVT U236 ( .A1(n128), .A2(rx_hold_reg[3]), .A3(n134), .A4(
        rx_hold_reg[4]), .Y(n95) );
  AO22X1_RVT U237 ( .A1(n128), .A2(rx_hold_reg[2]), .A3(n135), .A4(
        rx_hold_reg[3]), .Y(n96) );
  AO22X1_RVT U238 ( .A1(n128), .A2(rx_hold_reg[1]), .A3(n135), .A4(
        rx_hold_reg[2]), .Y(n97) );
  AO22X1_RVT U239 ( .A1(n128), .A2(rx_hold_reg[0]), .A3(n135), .A4(
        rx_hold_reg[1]), .Y(n98) );
  AO22X1_RVT U240 ( .A1(rxd), .A2(n148), .A3(n134), .A4(rx_hold_reg[0]), .Y(
        n99) );
  NAND2X0_RVT U241 ( .A1(rst), .A2(n13), .Y(n127) );
  OR2X1_RVT U242 ( .A1(n121), .A2(pclk_s), .Y(n1) );
  INVX1_RVT U243 ( .A(N3), .Y(n144) );
  AND3X1_RVT U244 ( .A1(tx_cnt[1]), .A2(tx_cnt[0]), .A3(tx_cnt[2]), .Y(n31) );
  AO22X1_RVT U245 ( .A1(rxd_t), .A2(n1), .A3(pcm_din_i), .A4(n155), .Y(n39) );
  AO22X1_RVT U246 ( .A1(n38), .A2(n1), .A3(pcm_sync_i), .A4(n155), .Y(n66) );
  INVX1_RVT U247 ( .A(N5), .Y(n146) );
  INVX1_RVT U248 ( .A(N4), .Y(n145) );
  INVX1_RVT U249 ( .A(n13), .Y(n128) );
  NAND3X0_RVT U250 ( .A1(n155), .A2(n14), .A3(rst), .Y(n13) );
  INVX1_RVT U251 ( .A(n13), .Y(n148) );
  INVX1_RVT U252 ( .A(n19), .Y(n129) );
  NAND2X0_RVT U253 ( .A1(psync), .A2(rst), .Y(n19) );
  INVX1_RVT U254 ( .A(n19), .Y(n149) );
  INVX1_RVT U255 ( .A(n9), .Y(n130) );
  INVX1_RVT U256 ( .A(n9), .Y(n147) );
  INVX1_RVT U257 ( .A(n20), .Y(n131) );
  INVX1_RVT U258 ( .A(n20), .Y(n151) );
  OR2X1_RVT U259 ( .A1(n21), .A2(psync), .Y(n20) );
  AO22X1_RVT U260 ( .A1(psa[7]), .A2(N3), .A3(psa[6]), .A4(n144), .Y(n139) );
  AO22X1_RVT U261 ( .A1(psa[5]), .A2(N3), .A3(psa[4]), .A4(n144), .Y(n138) );
  AO22X1_RVT U262 ( .A1(N4), .A2(n139), .A3(n138), .A4(n145), .Y(n143) );
  AO22X1_RVT U263 ( .A1(psa[3]), .A2(N3), .A3(psa[2]), .A4(n144), .Y(n141) );
  AO22X1_RVT U264 ( .A1(psa[1]), .A2(N3), .A3(psa[0]), .A4(n144), .Y(n140) );
  AO22X1_RVT U265 ( .A1(n141), .A2(N4), .A3(n140), .A4(n145), .Y(n142) );
  AO22X1_RVT U266 ( .A1(N5), .A2(n143), .A3(n142), .A4(n146), .Y(N6) );
endmodule

