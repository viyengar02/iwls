/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Tue Apr 15 10:33:39 2025
/////////////////////////////////////////////////////////////


module usb_tx_phy ( clk, rst, fs_ce, phy_mode, txdp, txdn, txoe, DataOut_i, 
        TxValid_i, TxReady_o );
  input [7:0] DataOut_i;
  input clk, rst, fs_ce, phy_mode, TxValid_i;
  output txdp, txdn, txoe, TxReady_o;
  wire   tx_ready_d, N18, ld_data, tx_ip, tx_ip_sync, data_done, sd_raw_o, N88,
         sft_done, sd_bs_o, sd_nrzi_o, txoe_r1, append_eop_sync2, append_eop,
         append_eop_sync1, append_eop_sync3, append_eop_sync4, txoe_r2, n2,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n23, n24, n25, n30,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n4,
         n5, n6, n7, n8, n9, n10, n21, n22, n26, n27, n28, n29, n31, n68, n113,
         n114;
  wire   [2:0] bit_cnt;
  wire   [7:0] hold_reg_d;
  wire   [7:0] hold_reg;
  wire   [2:0] one_cnt;
  wire   [2:0] state;

  DFFX1_RVT \hold_reg_d_reg[6]  ( .D(hold_reg[6]), .CLK(clk), .Q(hold_reg_d[6]) );
  DFFX1_RVT \hold_reg_d_reg[2]  ( .D(hold_reg[2]), .CLK(clk), .Q(hold_reg_d[2]) );
  DFFX1_RVT txdn_reg ( .D(n84), .CLK(clk), .Q(txdn) );
  DFFX1_RVT \hold_reg_d_reg[4]  ( .D(hold_reg[4]), .CLK(clk), .Q(hold_reg_d[4]) );
  DFFX1_RVT \hold_reg_d_reg[0]  ( .D(hold_reg[0]), .CLK(clk), .Q(hold_reg_d[0]) );
  DFFX1_RVT \hold_reg_d_reg[5]  ( .D(hold_reg[5]), .CLK(clk), .Q(hold_reg_d[5]) );
  DFFX1_RVT \hold_reg_d_reg[1]  ( .D(hold_reg[1]), .CLK(clk), .Q(hold_reg_d[1]) );
  DFFX1_RVT txdp_reg ( .D(n83), .CLK(clk), .Q(txdp) );
  DFFX1_RVT \hold_reg_d_reg[3]  ( .D(hold_reg[3]), .CLK(clk), .Q(hold_reg_d[3]) );
  DFFX1_RVT \hold_reg_d_reg[7]  ( .D(hold_reg[7]), .CLK(clk), .Q(hold_reg_d[7]) );
  DFFX1_RVT append_eop_sync1_reg ( .D(n111), .CLK(clk), .Q(append_eop_sync1)
         );
  DFFX1_RVT sd_bs_o_reg ( .D(n86), .CLK(clk), .Q(sd_bs_o) );
  DFFX1_RVT \hold_reg_reg[7]  ( .D(n93), .CLK(clk), .Q(hold_reg[7]) );
  DFFX1_RVT txoe_reg ( .D(n102), .CLK(clk), .Q(txoe) );
  DFFX1_RVT \hold_reg_reg[6]  ( .D(n94), .CLK(clk), .Q(hold_reg[6]) );
  DFFX1_RVT \hold_reg_reg[5]  ( .D(n95), .CLK(clk), .Q(hold_reg[5]) );
  DFFX1_RVT \hold_reg_reg[4]  ( .D(n96), .CLK(clk), .Q(hold_reg[4]) );
  DFFX1_RVT \hold_reg_reg[3]  ( .D(n97), .CLK(clk), .Q(hold_reg[3]) );
  DFFX1_RVT \hold_reg_reg[2]  ( .D(n98), .CLK(clk), .Q(hold_reg[2]) );
  DFFX1_RVT \hold_reg_reg[1]  ( .D(n99), .CLK(clk), .Q(hold_reg[1]) );
  DFFX1_RVT \hold_reg_reg[0]  ( .D(n100), .CLK(clk), .Q(hold_reg[0]) );
  DFFX1_RVT txoe_r2_reg ( .D(n103), .CLK(clk), .Q(txoe_r2) );
  DFFX1_RVT sd_nrzi_o_reg ( .D(n85), .CLK(clk), .Q(sd_nrzi_o) );
  DFFSSRX1_RVT append_eop_reg ( .D(n67), .SETB(n5), .RSTB(rst), .CLK(clk), .Q(
        append_eop) );
  DFFSSRX1_RVT tx_ip_reg ( .D(n60), .SETB(n56), .RSTB(rst), .CLK(clk), .Q(
        tx_ip) );
  DFFX1_RVT data_done_reg ( .D(n101), .CLK(clk), .Q(data_done) );
  DFFSSRX1_RVT sd_raw_o_reg ( .D(tx_ip_sync), .SETB(1'b1), .RSTB(n77), .CLK(
        clk), .Q(sd_raw_o) );
  DFFX1_RVT txoe_r1_reg ( .D(n104), .CLK(clk), .Q(txoe_r1) );
  DFFX1_RVT sft_done_r_reg ( .D(sft_done), .CLK(clk), .QN(n14) );
  SDFFSSRX1_RVT ld_data_reg ( .RSTB(n14), .SETB(n82), .D(n31), .SI(1'b0), .SE(
        n2), .CLK(clk), .Q(ld_data) );
  DFFX1_RVT TxReady_o_reg ( .D(N18), .CLK(clk), .Q(TxReady_o) );
  DFFX1_RVT sft_done_reg ( .D(N88), .CLK(clk), .Q(sft_done), .QN(n2) );
  DFFX1_RVT \state_reg[0]  ( .D(n112), .CLK(clk), .Q(state[0]), .QN(n25) );
  DFFX1_RVT \state_reg[2]  ( .D(n106), .CLK(clk), .Q(state[2]), .QN(n23) );
  DFFX1_RVT \state_reg[1]  ( .D(n107), .CLK(clk), .Q(state[1]), .QN(n24) );
  DFFX1_RVT tx_ip_sync_reg ( .D(n105), .CLK(clk), .Q(tx_ip_sync), .QN(n6) );
  DFFX1_RVT append_eop_sync2_reg ( .D(n110), .CLK(clk), .Q(append_eop_sync2), 
        .QN(n18) );
  DFFX1_RVT append_eop_sync4_reg ( .D(n108), .CLK(clk), .Q(append_eop_sync4), 
        .QN(n20) );
  DFFX1_RVT append_eop_sync3_reg ( .D(n109), .CLK(clk), .Q(append_eop_sync3), 
        .QN(n19) );
  DFFX1_RVT \bit_cnt_reg[0]  ( .D(n88), .CLK(clk), .Q(bit_cnt[0]), .QN(n13) );
  DFFX1_RVT \one_cnt_reg[0]  ( .D(n92), .CLK(clk), .Q(one_cnt[0]), .QN(n17) );
  DFFX1_RVT \bit_cnt_reg[1]  ( .D(n89), .CLK(clk), .Q(bit_cnt[1]), .QN(n12) );
  DFFX1_RVT \bit_cnt_reg[2]  ( .D(n87), .CLK(clk), .Q(bit_cnt[2]), .QN(n11) );
  DFFX1_RVT \one_cnt_reg[1]  ( .D(n91), .CLK(clk), .Q(one_cnt[1]), .QN(n16) );
  DFFX1_RVT \one_cnt_reg[2]  ( .D(n90), .CLK(clk), .Q(one_cnt[2]), .QN(n15) );
  INVX1_RVT U5 ( .A(n46), .Y(n22) );
  INVX1_RVT U6 ( .A(n4), .Y(n8) );
  INVX1_RVT U7 ( .A(n4), .Y(n7) );
  AND2X1_RVT U8 ( .A1(n38), .A2(n46), .Y(n44) );
  NAND2X0_RVT U9 ( .A1(n26), .A2(n47), .Y(n46) );
  INVX1_RVT U10 ( .A(rst), .Y(n113) );
  NAND2X0_RVT U11 ( .A1(rst), .A2(n66), .Y(n4) );
  INVX1_RVT U12 ( .A(n69), .Y(n10) );
  AND2X1_RVT U13 ( .A1(rst), .A2(n69), .Y(n63) );
  AND2X1_RVT U14 ( .A1(n38), .A2(n53), .Y(n52) );
  INVX1_RVT U15 ( .A(n54), .Y(n29) );
  AND2X1_RVT U16 ( .A1(n54), .A2(n56), .Y(n55) );
  INVX1_RVT U17 ( .A(n64), .Y(n31) );
  AO21X1_RVT U18 ( .A1(n22), .A2(n13), .A3(n44), .Y(n43) );
  AO21X1_RVT U19 ( .A1(sd_bs_o), .A2(n7), .A3(n39), .Y(n86) );
  AO22X1_RVT U20 ( .A1(one_cnt[1]), .A2(n50), .A3(n51), .A4(one_cnt[0]), .Y(
        n91) );
  AND2X1_RVT U21 ( .A1(n39), .A2(n16), .Y(n51) );
  AO22X1_RVT U22 ( .A1(bit_cnt[2]), .A2(n40), .A3(n41), .A4(n22), .Y(n87) );
  AND2X1_RVT U23 ( .A1(n42), .A2(n11), .Y(n41) );
  AO21X1_RVT U24 ( .A1(n22), .A2(n12), .A3(n43), .Y(n40) );
  AO22X1_RVT U25 ( .A1(bit_cnt[1]), .A2(n43), .A3(n45), .A4(n22), .Y(n89) );
  AO22X1_RVT U26 ( .A1(n44), .A2(bit_cnt[0]), .A3(n22), .A4(n13), .Y(n88) );
  AO21X1_RVT U27 ( .A1(one_cnt[2]), .A2(n48), .A3(n49), .Y(n90) );
  OR2X1_RVT U28 ( .A1(n6), .A2(n66), .Y(n53) );
  AO22X1_RVT U29 ( .A1(sd_nrzi_o), .A2(n34), .A3(n9), .A4(n35), .Y(n85) );
  NAND2X0_RVT U30 ( .A1(n36), .A2(sd_nrzi_o), .Y(n35) );
  INVX1_RVT U31 ( .A(n34), .Y(n9) );
  AO22X1_RVT U32 ( .A1(n36), .A2(n21), .A3(n37), .A4(txoe_r1), .Y(n34) );
  AND3X1_RVT U33 ( .A1(TxValid_i), .A2(rst), .A3(tx_ready_d), .Y(N18) );
  AOI21X1_RVT U34 ( .A1(n64), .A2(n82), .A3(n76), .Y(tx_ready_d) );
  AO221X1_RVT U35 ( .A1(n30), .A2(sd_nrzi_o), .A3(txdp), .A4(n7), .A5(n113), 
        .Y(n83) );
  OA21X1_RVT U36 ( .A1(n19), .A2(n114), .A3(n27), .Y(n30) );
  NOR2X0_RVT U37 ( .A1(txoe_r1), .A2(txoe_r2), .Y(n59) );
  AO21X1_RVT U38 ( .A1(rst), .A2(n25), .A3(n10), .Y(n61) );
  AO21X1_RVT U39 ( .A1(txoe_r1), .A2(n8), .A3(n26), .Y(n104) );
  AO22X1_RVT U40 ( .A1(append_eop_sync1), .A2(n8), .A3(append_eop), .A4(n27), 
        .Y(n111) );
  AO22X1_RVT U41 ( .A1(n10), .A2(state[0]), .A3(n63), .A4(n25), .Y(n112) );
  AO22X1_RVT U42 ( .A1(txoe_r2), .A2(n7), .A3(txoe_r1), .A4(n27), .Y(n103) );
  AO22X1_RVT U43 ( .A1(txdn), .A2(n8), .A3(n27), .A4(n32), .Y(n84) );
  AO22X1_RVT U44 ( .A1(append_eop_sync3), .A2(n114), .A3(n33), .A4(phy_mode), 
        .Y(n32) );
  NOR2X0_RVT U45 ( .A1(append_eop_sync3), .A2(sd_nrzi_o), .Y(n33) );
  AO22X1_RVT U46 ( .A1(append_eop_sync4), .A2(n7), .A3(n27), .A4(
        append_eop_sync3), .Y(n108) );
  AO22X1_RVT U47 ( .A1(append_eop_sync2), .A2(n8), .A3(append_eop_sync1), .A4(
        n27), .Y(n110) );
  AO22X1_RVT U48 ( .A1(tx_ip_sync), .A2(n8), .A3(tx_ip), .A4(n27), .Y(n105) );
  AO22X1_RVT U49 ( .A1(state[2]), .A2(n61), .A3(n62), .A4(n63), .Y(n106) );
  AND2X1_RVT U50 ( .A1(state[0]), .A2(state[1]), .Y(n62) );
  AO22X1_RVT U51 ( .A1(state[1]), .A2(n61), .A3(n63), .A4(n31), .Y(n107) );
  AO22X1_RVT U52 ( .A1(n68), .A2(data_done), .A3(n57), .A4(TxValid_i), .Y(n101) );
  AND2X1_RVT U53 ( .A1(rst), .A2(n58), .Y(n57) );
  INVX1_RVT U54 ( .A(n58), .Y(n68) );
  NAND3X0_RVT U55 ( .A1(TxValid_i), .A2(rst), .A3(tx_ip), .Y(n58) );
  AND2X1_RVT U56 ( .A1(tx_ip_sync), .A2(rst), .Y(n38) );
  AND2X1_RVT U57 ( .A1(n38), .A2(txoe_r1), .Y(n36) );
  AND2X1_RVT U58 ( .A1(sd_bs_o), .A2(n26), .Y(n37) );
  NAND3X0_RVT U59 ( .A1(rst), .A2(n70), .A3(n71), .Y(n69) );
  OR2X1_RVT U60 ( .A1(n64), .A2(n76), .Y(n70) );
  OA221X1_RVT U61 ( .A1(state[2]), .A2(n72), .A3(n73), .A4(n21), .A5(n56), .Y(
        n71) );
  OA22X1_RVT U62 ( .A1(n74), .A2(n23), .A3(append_eop_sync3), .A4(n5), .Y(n73)
         );
  AO21X1_RVT U63 ( .A1(n27), .A2(n20), .A3(n7), .Y(n65) );
  AO221X1_RVT U64 ( .A1(hold_reg[7]), .A2(n54), .A3(DataOut_i[7]), .A4(n29), 
        .A5(n28), .Y(n93) );
  INVX1_RVT U65 ( .A(n56), .Y(n28) );
  NAND4X0_RVT U66 ( .A1(TxValid_i), .A2(n25), .A3(n24), .A4(n23), .Y(n56) );
  AO22X1_RVT U67 ( .A1(DataOut_i[0]), .A2(n29), .A3(hold_reg[0]), .A4(n55), 
        .Y(n100) );
  AO22X1_RVT U68 ( .A1(DataOut_i[1]), .A2(n29), .A3(hold_reg[1]), .A4(n55), 
        .Y(n99) );
  AO22X1_RVT U69 ( .A1(DataOut_i[2]), .A2(n29), .A3(hold_reg[2]), .A4(n55), 
        .Y(n98) );
  AO22X1_RVT U70 ( .A1(DataOut_i[3]), .A2(n29), .A3(hold_reg[3]), .A4(n55), 
        .Y(n97) );
  AO22X1_RVT U71 ( .A1(DataOut_i[4]), .A2(n29), .A3(hold_reg[4]), .A4(n55), 
        .Y(n96) );
  AO22X1_RVT U72 ( .A1(DataOut_i[5]), .A2(n29), .A3(hold_reg[5]), .A4(n55), 
        .Y(n95) );
  AO22X1_RVT U73 ( .A1(DataOut_i[6]), .A2(n29), .A3(hold_reg[6]), .A4(n55), 
        .Y(n94) );
  NAND2X0_RVT U74 ( .A1(ld_data), .A2(n56), .Y(n54) );
  OA22X1_RVT U75 ( .A1(state[1]), .A2(append_eop_sync3), .A3(n25), .A4(n19), 
        .Y(n74) );
  AND2X1_RVT U76 ( .A1(n5), .A2(n75), .Y(n72) );
  NAND3X0_RVT U77 ( .A1(state[0]), .A2(state[1]), .A3(append_eop_sync3), .Y(
        n75) );
  AND3X1_RVT U78 ( .A1(n42), .A2(n47), .A3(bit_cnt[2]), .Y(N88) );
  AO22X1_RVT U79 ( .A1(bit_cnt[2]), .A2(n78), .A3(n79), .A4(n11), .Y(n77) );
  AO222X1_RVT U80 ( .A1(hold_reg_d[1]), .A2(n45), .A3(n80), .A4(n13), .A5(
        hold_reg_d[3]), .A6(n42), .Y(n79) );
  AO222X1_RVT U81 ( .A1(hold_reg_d[5]), .A2(n45), .A3(n81), .A4(n13), .A5(
        hold_reg_d[7]), .A6(n42), .Y(n78) );
  AO22X1_RVT U82 ( .A1(hold_reg_d[2]), .A2(bit_cnt[1]), .A3(hold_reg_d[0]), 
        .A4(n12), .Y(n80) );
  AND2X1_RVT U83 ( .A1(bit_cnt[1]), .A2(bit_cnt[0]), .Y(n42) );
  AO22X1_RVT U84 ( .A1(hold_reg_d[6]), .A2(bit_cnt[1]), .A3(hold_reg_d[4]), 
        .A4(n12), .Y(n81) );
  OR4X1_RVT U85 ( .A1(n76), .A2(n24), .A3(data_done), .A4(state[0]), .Y(n5) );
  AND2X1_RVT U86 ( .A1(bit_cnt[0]), .A2(n12), .Y(n45) );
  NAND3X0_RVT U87 ( .A1(n24), .A2(n23), .A3(state[0]), .Y(n64) );
  NAND3X0_RVT U88 ( .A1(one_cnt[1]), .A2(n17), .A3(one_cnt[2]), .Y(n47) );
  NAND3X0_RVT U89 ( .A1(data_done), .A2(n25), .A3(state[1]), .Y(n82) );
  INVX1_RVT U90 ( .A(fs_ce), .Y(n21) );
  NAND2X0_RVT U91 ( .A1(sft_done), .A2(n14), .Y(n76) );
  INVX1_RVT U92 ( .A(phy_mode), .Y(n114) );
  AND2X1_RVT U93 ( .A1(tx_ip), .A2(n19), .Y(n60) );
  AND2X1_RVT U94 ( .A1(append_eop), .A2(n18), .Y(n67) );
  INVX0_RVT U95 ( .A(n66), .Y(n27) );
  AO22X1_RVT U96 ( .A1(n52), .A2(one_cnt[0]), .A3(n39), .A4(n17), .Y(n92) );
  AO22X1_RVT U97 ( .A1(append_eop_sync2), .A2(n27), .A3(append_eop_sync3), 
        .A4(n65), .Y(n109) );
  AO221X1_RVT U98 ( .A1(n59), .A2(n27), .A3(txoe), .A4(n8), .A5(n113), .Y(n102) );
  AO21X1_RVT U99 ( .A1(n39), .A2(n16), .A3(n50), .Y(n48) );
  AND4X1_RVT U100 ( .A1(one_cnt[0]), .A2(n39), .A3(one_cnt[1]), .A4(n15), .Y(
        n49) );
  AO21X1_RVT U101 ( .A1(n39), .A2(n17), .A3(n52), .Y(n50) );
  AND3X1_RVT U102 ( .A1(n26), .A2(n47), .A3(sd_raw_o), .Y(n39) );
  INVX0_RVT U103 ( .A(n53), .Y(n26) );
  NAND2X0_RVT U104 ( .A1(rst), .A2(fs_ce), .Y(n66) );
endmodule


module usb_rx_phy ( clk, rst, fs_ce, rxd, rxdp, rxdn, RxValid_o, RxActive_o, 
        RxError_o, DataIn_o, RxEn_i, LineState );
  output [7:0] DataIn_o;
  output [1:0] LineState;
  input clk, rst, rxd, rxdp, rxdn, RxEn_i;
  output fs_ce, RxValid_o, RxActive_o, RxError_o;
  wire   rx_en, rxd_s0, rxd_s1, rxd_s, rxdp_s0, rxdp_s_r, rxdp_s, rxdn_s0,
         rxdn_s_r, rxdn_s, se0_s, rxd_r, N31, fs_ce_r1, fs_ce_r2, N87,
         rx_valid_r, sd_r, sd_nrzi, shift_en, rx_valid1, N166, n1, n2, n3, n14,
         n16, n17, n22, n23, n24, n26, n27, n29, n30, n31, n32, n33, n34, n37,
         n38, n40, n41, n43, n44, n48, n49, n51, n52, n53, n54, n56, n58, n59,
         n62, n64, n67, n68, n69, n70, n71, n73, n74, n75, n76, n77, n78, n79,
         n91, n92, n93, n94, n95, n96, n97, n98, n100, n101, n103, n110, n111,
         n112, n113, n114, n115, n116, n117, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15,
         n18, n19, n20, n21, n25, n28, n35, n36, n39, n42, n45, n46, n47, n50,
         n55;
  wire   [2:0] one_cnt;

  NOR4X1_RVT U86 ( .A1(RxActive_o), .A2(n36), .A3(n110), .A4(se0_s), .Y(n120)
         );
  DFFX1_RVT \one_cnt_reg[2]  ( .D(n127), .CLK(clk), .Q(one_cnt[2]), .QN(n11)
         );
  DFFX1_RVT \bit_cnt_reg[2]  ( .D(n124), .CLK(clk), .Q(n9), .QN(n115) );
  DFFX1_RVT rxd_s1_reg ( .D(rxd_s0), .CLK(clk), .Q(rxd_s1) );
  DFFX1_RVT \hold_reg_reg[0]  ( .D(n91), .CLK(clk), .Q(DataIn_o[0]) );
  DFFX1_RVT rx_valid_r_reg ( .D(n136), .CLK(clk), .Q(rx_valid_r) );
  DFFX1_RVT rx_valid1_reg ( .D(n123), .CLK(clk), .Q(rx_valid1) );
  DFFX1_RVT rxd_s0_reg ( .D(rxd), .CLK(clk), .Q(rxd_s0) );
  DFFSSRX1_RVT rx_valid_reg ( .D(rx_valid1), .SETB(1'b1), .RSTB(n46), .CLK(clk), .Q(RxValid_o) );
  DFFX1_RVT sd_r_reg ( .D(n100), .CLK(clk), .Q(sd_r) );
  DFFX1_RVT \dpll_state_reg[0]  ( .D(N31), .CLK(clk), .Q(n1) );
  DFFX1_RVT byte_err_reg ( .D(N166), .CLK(clk), .QN(n78) );
  SDFFSSRX1_RVT bit_stuff_err_reg ( .RSTB(n122), .SETB(1'b1), .D(RxActive_o), 
        .SI(1'b0), .SE(n119), .CLK(clk), .QN(n77) );
  DFFSSRX1_RVT se0_r_reg ( .D(n42), .SETB(1'b1), .RSTB(n39), .CLK(clk), .QN(
        n76) );
  DFFSSRX1_RVT sync_err_reg ( .D(N87), .SETB(1'b1), .RSTB(n120), .CLK(clk), 
        .QN(n79) );
  DFFSSRX1_RVT \dpll_state_reg[1]  ( .D(n121), .SETB(n103), .RSTB(rst), .CLK(
        clk), .QN(n2) );
  DFFX1_RVT se0_s_reg ( .D(n101), .CLK(clk), .Q(se0_s) );
  DFFX1_RVT rxd_r_reg ( .D(rxd_s), .CLK(clk), .Q(rxd_r) );
  DFFX1_RVT rx_en_reg ( .D(RxEn_i), .CLK(clk), .Q(rx_en) );
  DFFX1_RVT rxdp_s1_reg ( .D(rxdp_s0), .CLK(clk), .Q(LineState[0]) );
  DFFX1_RVT rxdn_s1_reg ( .D(rxdn_s0), .CLK(clk), .Q(LineState[1]) );
  DFFX1_RVT \bit_cnt_reg[0]  ( .D(n126), .CLK(clk), .Q(n5), .QN(n117) );
  DFFX1_RVT \fs_state_reg[0]  ( .D(n133), .CLK(clk), .Q(n7), .QN(n113) );
  DFFX1_RVT \fs_state_reg[2]  ( .D(n131), .CLK(clk), .QN(n111) );
  DFFX1_RVT \bit_cnt_reg[1]  ( .D(n125), .CLK(clk), .Q(n4), .QN(n116) );
  DFFX1_RVT \fs_state_reg[1]  ( .D(n132), .CLK(clk), .Q(n8), .QN(n112) );
  SDFFSSRX1_RVT rxdp_s_reg ( .RSTB(LineState[0]), .SETB(1'b1), .D(rxdp_s0), 
        .SI(1'b1), .SE(rxdp_s_r), .CLK(clk), .Q(rxdp_s), .QN(n39) );
  SDFFSSRX1_RVT rxdn_s_reg ( .RSTB(LineState[1]), .SETB(1'b1), .D(rxdn_s0), 
        .SI(1'b1), .SE(rxdn_s_r), .CLK(clk), .Q(rxdn_s), .QN(n42) );
  DFFX1_RVT rxd_s_reg ( .D(n137), .CLK(clk), .Q(rxd_s) );
  DFFX1_RVT \one_cnt_reg[1]  ( .D(n128), .CLK(clk), .Q(one_cnt[1]), .QN(n10)
         );
  DFFX1_RVT \one_cnt_reg[0]  ( .D(n129), .CLK(clk), .Q(one_cnt[0]), .QN(n6) );
  DFFX1_RVT fs_ce_r2_reg ( .D(fs_ce_r1), .CLK(clk), .Q(fs_ce_r2) );
  DFFX1_RVT rxdp_s0_reg ( .D(rxdp), .CLK(clk), .Q(rxdp_s0) );
  DFFX1_RVT rxdn_s0_reg ( .D(rxdn), .CLK(clk), .Q(rxdn_s0) );
  DFFSSRX1_RVT fs_ce_r1_reg ( .D(n1), .SETB(1'b1), .RSTB(n2), .CLK(clk), .Q(
        fs_ce_r1) );
  DFFSSRX1_RVT rxdp_s_r_reg ( .D(rxdp_s0), .SETB(1'b1), .RSTB(LineState[0]), 
        .CLK(clk), .Q(rxdp_s_r) );
  DFFSSRX1_RVT rxdn_s_r_reg ( .D(rxdn_s0), .SETB(1'b1), .RSTB(LineState[1]), 
        .CLK(clk), .Q(rxdn_s_r) );
  DFFX1_RVT fs_ce_reg ( .D(fs_ce_r2), .CLK(clk), .Q(fs_ce), .QN(n110) );
  DFFX1_RVT rx_active_reg ( .D(n135), .CLK(clk), .Q(RxActive_o), .QN(n114) );
  DFFX1_RVT shift_en_reg ( .D(n130), .CLK(clk), .Q(shift_en), .QN(n18) );
  DFFX1_RVT sd_nrzi_reg ( .D(n134), .CLK(clk), .Q(sd_nrzi), .QN(n15) );
  DFFX1_RVT \hold_reg_reg[6]  ( .D(n97), .CLK(clk), .Q(DataIn_o[6]) );
  DFFX1_RVT \hold_reg_reg[5]  ( .D(n96), .CLK(clk), .Q(DataIn_o[5]) );
  DFFX1_RVT \hold_reg_reg[4]  ( .D(n95), .CLK(clk), .Q(DataIn_o[4]) );
  DFFX1_RVT \hold_reg_reg[3]  ( .D(n94), .CLK(clk), .Q(DataIn_o[3]) );
  DFFX1_RVT \hold_reg_reg[2]  ( .D(n93), .CLK(clk), .Q(DataIn_o[2]) );
  DFFX1_RVT \hold_reg_reg[1]  ( .D(n92), .CLK(clk), .Q(DataIn_o[1]) );
  DFFX1_RVT \hold_reg_reg[7]  ( .D(n98), .CLK(clk), .Q(DataIn_o[7]) );
  INVX1_RVT U3 ( .A(n22), .Y(n46) );
  INVX1_RVT U4 ( .A(n44), .Y(n21) );
  INVX1_RVT U5 ( .A(n14), .Y(n36) );
  INVX1_RVT U6 ( .A(n3), .Y(n45) );
  AO22X1_RVT U7 ( .A1(n3), .A2(DataIn_o[1]), .A3(n45), .A4(DataIn_o[2]), .Y(
        n92) );
  AO22X1_RVT U8 ( .A1(n3), .A2(DataIn_o[2]), .A3(n45), .A4(DataIn_o[3]), .Y(
        n93) );
  AO22X1_RVT U9 ( .A1(n3), .A2(DataIn_o[3]), .A3(n45), .A4(DataIn_o[4]), .Y(
        n94) );
  AO22X1_RVT U10 ( .A1(n3), .A2(DataIn_o[4]), .A3(n45), .A4(DataIn_o[5]), .Y(
        n95) );
  AO22X1_RVT U11 ( .A1(n3), .A2(DataIn_o[5]), .A3(n45), .A4(DataIn_o[6]), .Y(
        n96) );
  AO22X1_RVT U12 ( .A1(n3), .A2(DataIn_o[6]), .A3(n45), .A4(DataIn_o[7]), .Y(
        n97) );
  NAND2X0_RVT U13 ( .A1(fs_ce), .A2(n119), .Y(n22) );
  AO22X1_RVT U14 ( .A1(n34), .A2(n6), .A3(n19), .A4(n40), .Y(n37) );
  OR2X1_RVT U15 ( .A1(n55), .A2(n120), .Y(n49) );
  NAND4X0_RVT U16 ( .A1(n120), .A2(n25), .A3(n7), .A4(n39), .Y(n44) );
  INVX1_RVT U17 ( .A(n67), .Y(n25) );
  INVX1_RVT U18 ( .A(n73), .Y(n28) );
  NAND2X0_RVT U19 ( .A1(n39), .A2(n42), .Y(n14) );
  AO22X1_RVT U20 ( .A1(n3), .A2(DataIn_o[0]), .A3(n45), .A4(DataIn_o[1]), .Y(
        n91) );
  AO22X1_RVT U21 ( .A1(n3), .A2(DataIn_o[7]), .A3(sd_nrzi), .A4(n45), .Y(n98)
         );
  NAND2X0_RVT U22 ( .A1(shift_en), .A2(n46), .Y(n3) );
  NAND3X0_RVT U23 ( .A1(one_cnt[1]), .A2(n6), .A3(one_cnt[2]), .Y(n119) );
  AO22X1_RVT U24 ( .A1(n34), .A2(n6), .A3(n41), .A4(one_cnt[0]), .Y(n129) );
  AND2X1_RVT U25 ( .A1(n34), .A2(n10), .Y(n38) );
  AND2X1_RVT U26 ( .A1(n47), .A2(n5), .Y(n27) );
  AND4X1_RVT U27 ( .A1(n115), .A2(n47), .A3(n5), .A4(n4), .Y(n24) );
  AND4X1_RVT U28 ( .A1(one_cnt[0]), .A2(n34), .A3(one_cnt[1]), .A4(n11), .Y(
        n33) );
  AOI21X1_RVT U29 ( .A1(n16), .A2(n17), .A3(n55), .Y(n123) );
  NAND2X0_RVT U30 ( .A1(rx_valid1), .A2(n22), .Y(n16) );
  NAND4X0_RVT U31 ( .A1(n46), .A2(n5), .A3(n4), .A4(n9), .Y(n17) );
  AND3X1_RVT U32 ( .A1(n14), .A2(fs_ce), .A3(sd_nrzi), .Y(n122) );
  AO22X1_RVT U33 ( .A1(n110), .A2(shift_en), .A3(n43), .A4(fs_ce), .Y(n130) );
  NAND2X0_RVT U34 ( .A1(n114), .A2(n44), .Y(n43) );
  AO22X1_RVT U35 ( .A1(sd_r), .A2(n110), .A3(rxd_s), .A4(fs_ce), .Y(n100) );
  AO22X1_RVT U36 ( .A1(se0_s), .A2(n110), .A3(n36), .A4(fs_ce), .Y(n101) );
  AO22X1_RVT U37 ( .A1(n20), .A2(RxActive_o), .A3(n62), .A4(n21), .Y(n135) );
  AND2X1_RVT U38 ( .A1(rst), .A2(n64), .Y(n62) );
  INVX1_RVT U39 ( .A(n64), .Y(n20) );
  AND2X1_RVT U40 ( .A1(rst), .A2(n58), .Y(n134) );
  AO221X1_RVT U41 ( .A1(n59), .A2(fs_ce), .A3(n110), .A4(sd_nrzi), .A5(n114), 
        .Y(n58) );
  XNOR2X1_RVT U42 ( .A1(sd_r), .A2(rxd_s), .Y(n59) );
  OAI21X1_RVT U43 ( .A1(n12), .A2(n111), .A3(n13), .Y(n131) );
  AOI21X1_RVT U44 ( .A1(n48), .A2(n112), .A3(n51), .Y(n12) );
  NAND4X0_RVT U45 ( .A1(n111), .A2(n48), .A3(n49), .A4(n8), .Y(n13) );
  AO22X1_RVT U46 ( .A1(n51), .A2(n8), .A3(n52), .A4(n48), .Y(n132) );
  NOR3X0_RVT U47 ( .A1(n1), .A2(n2), .A3(n28), .Y(n121) );
  NAND2X0_RVT U48 ( .A1(rx_en), .A2(n74), .Y(n73) );
  XOR2X1_RVT U49 ( .A1(rxd_s), .A2(rxd_r), .Y(n74) );
  INVX1_RVT U50 ( .A(rst), .Y(n55) );
  OAI22X1_RVT U51 ( .A1(n49), .A2(n113), .A3(n54), .A4(n35), .Y(n133) );
  AO21X1_RVT U52 ( .A1(n112), .A2(n56), .A3(n111), .Y(n67) );
  AO21X1_RVT U53 ( .A1(rx_valid_r), .A2(n110), .A3(RxValid_o), .Y(n136) );
  NAND2X0_RVT U54 ( .A1(n69), .A2(n70), .Y(N87) );
  NAND3X0_RVT U55 ( .A1(n71), .A2(n56), .A3(n113), .Y(n70) );
  NAND3X0_RVT U56 ( .A1(n67), .A2(n7), .A3(n53), .Y(n69) );
  NAND2X0_RVT U57 ( .A1(n111), .A2(n112), .Y(n71) );
  NAND3X0_RVT U58 ( .A1(rx_en), .A2(n39), .A3(rxdn_s), .Y(n56) );
  NAND3X0_RVT U59 ( .A1(rx_en), .A2(n42), .A3(rxdp_s), .Y(n53) );
  NOR3X0_RVT U60 ( .A1(n55), .A2(n113), .A3(n53), .Y(n48) );
  AO22X1_RVT U61 ( .A1(rxd_s0), .A2(rxd_s), .A3(rxd_s1), .A4(n68), .Y(n137) );
  OR2X1_RVT U62 ( .A1(rxd_s0), .A2(rxd_s), .Y(n68) );
  OAI221X1_RVT U63 ( .A1(n73), .A2(n103), .A3(n28), .A4(n1), .A5(rst), .Y(N31)
         );
  AND4X1_RVT U64 ( .A1(n36), .A2(n75), .A3(RxActive_o), .A4(n76), .Y(N166) );
  NAND3X0_RVT U65 ( .A1(n78), .A2(n79), .A3(n77), .Y(RxError_o) );
  NAND2X0_RVT U66 ( .A1(n2), .A2(n1), .Y(n103) );
  AO221X1_RVT U67 ( .A1(rx_valid_r), .A2(n36), .A3(n21), .A4(rx_en), .A5(n55), 
        .Y(n64) );
  OR3X2_RVT U68 ( .A1(n56), .A2(n55), .A3(n7), .Y(n54) );
  INVX0_RVT U69 ( .A(n49), .Y(n35) );
  NAND2X0_RVT U70 ( .A1(n49), .A2(n54), .Y(n51) );
  AND2X1_RVT U71 ( .A1(n112), .A2(n49), .Y(n52) );
  OR2X1_RVT U72 ( .A1(n55), .A2(n18), .Y(n30) );
  NAND2X0_RVT U73 ( .A1(n116), .A2(n115), .Y(n75) );
  AO22X1_RVT U74 ( .A1(n26), .A2(n4), .A3(n27), .A4(n116), .Y(n125) );
  AO21X1_RVT U75 ( .A1(n23), .A2(n9), .A3(n24), .Y(n124) );
  NOR2X0_RVT U76 ( .A1(n29), .A2(n15), .Y(n34) );
  INVX0_RVT U77 ( .A(n30), .Y(n19) );
  AO21X1_RVT U78 ( .A1(one_cnt[2]), .A2(n32), .A3(n33), .Y(n127) );
  AO22X1_RVT U79 ( .A1(n37), .A2(one_cnt[1]), .A3(n38), .A4(one_cnt[0]), .Y(
        n128) );
  AO21X1_RVT U80 ( .A1(n34), .A2(n10), .A3(n37), .Y(n32) );
  OAI22X1_RVT U81 ( .A1(n29), .A2(n5), .A3(n30), .A4(n31), .Y(n126) );
  NAND2X0_RVT U82 ( .A1(n29), .A2(n5), .Y(n31) );
  AO22X1_RVT U83 ( .A1(n117), .A2(n47), .A3(n19), .A4(n29), .Y(n26) );
  AO21X1_RVT U84 ( .A1(n116), .A2(n47), .A3(n26), .Y(n23) );
  INVX0_RVT U85 ( .A(n29), .Y(n47) );
  NAND2X0_RVT U87 ( .A1(n50), .A2(n119), .Y(n29) );
  AND2X1_RVT U88 ( .A1(n19), .A2(n40), .Y(n41) );
  NAND2X0_RVT U89 ( .A1(n19), .A2(fs_ce), .Y(n40) );
  INVX0_RVT U90 ( .A(n40), .Y(n50) );
endmodule


module usb_phy ( clk, rst, phy_tx_mode, usb_rst, txdp, txdn, txoe, rxd, rxdp, 
        rxdn, DataOut_i, TxValid_i, TxReady_o, RxValid_o, RxActive_o, 
        RxError_o, DataIn_o, LineState_o );
  input [7:0] DataOut_i;
  output [7:0] DataIn_o;
  output [1:0] LineState_o;
  input clk, rst, phy_tx_mode, rxd, rxdp, rxdn, TxValid_i;
  output usb_rst, txdp, txdn, txoe, TxReady_o, RxValid_o, RxActive_o,
         RxError_o;
  wire   fs_ce, N7, N8, N9, N10, N11, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n15, n16, n17, n18;
  wire   [4:0] rst_cnt;
  wire   [4:2] \add_178_S2/carry ;

  usb_tx_phy i_tx_phy ( .clk(clk), .rst(n15), .fs_ce(fs_ce), .phy_mode(
        phy_tx_mode), .txdp(txdp), .txdn(txdn), .txoe(txoe), .DataOut_i(
        DataOut_i), .TxValid_i(TxValid_i), .TxReady_o(TxReady_o) );
  usb_rx_phy i_rx_phy ( .clk(clk), .rst(rst), .fs_ce(fs_ce), .rxd(rxd), .rxdp(
        rxdp), .rxdn(rxdn), .RxValid_o(RxValid_o), .RxActive_o(RxActive_o), 
        .RxError_o(RxError_o), .DataIn_o(DataIn_o), .RxEn_i(txoe), .LineState(
        LineState_o) );
  DFFX1_RVT \rst_cnt_reg[2]  ( .D(n10), .CLK(clk), .Q(rst_cnt[2]) );
  DFFX1_RVT \rst_cnt_reg[3]  ( .D(n9), .CLK(clk), .Q(rst_cnt[3]) );
  DFFX1_RVT \rst_cnt_reg[4]  ( .D(n8), .CLK(clk), .Q(rst_cnt[4]) );
  DFFX1_RVT \rst_cnt_reg[1]  ( .D(n11), .CLK(clk), .Q(rst_cnt[1]) );
  DFFX1_RVT \rst_cnt_reg[0]  ( .D(n12), .CLK(clk), .Q(rst_cnt[0]), .QN(N7) );
  SDFFSSRX1_RVT usb_rst_reg ( .RSTB(n7), .SETB(1'b1), .D(rst_cnt[1]), .SI(1'b0), .SE(N7), .CLK(clk), .Q(usb_rst) );
  INVX1_RVT U18 ( .A(n5), .Y(n16) );
  AO22X1_RVT U19 ( .A1(rst_cnt[4]), .A2(n4), .A3(N11), .A4(n16), .Y(n8) );
  AO22X1_RVT U20 ( .A1(rst_cnt[3]), .A2(n4), .A3(N10), .A4(n16), .Y(n9) );
  AO22X1_RVT U21 ( .A1(rst_cnt[2]), .A2(n4), .A3(N9), .A4(n16), .Y(n10) );
  AO22X1_RVT U22 ( .A1(rst_cnt[1]), .A2(n4), .A3(N8), .A4(n16), .Y(n11) );
  AO22X1_RVT U23 ( .A1(rst_cnt[0]), .A2(n4), .A3(N7), .A4(n16), .Y(n12) );
  NAND4X0_RVT U24 ( .A1(n15), .A2(fs_ce), .A3(n6), .A4(n17), .Y(n5) );
  NOR2X0_RVT U25 ( .A1(usb_rst), .A2(LineState_o[1]), .Y(n6) );
  AND4X1_RVT U26 ( .A1(n15), .A2(n5), .A3(n17), .A4(n18), .Y(n4) );
  INVX1_RVT U27 ( .A(LineState_o[1]), .Y(n18) );
  HADDX1_RVT U28 ( .A0(rst_cnt[1]), .B0(rst_cnt[0]), .C1(\add_178_S2/carry [2]), .SO(N8) );
  HADDX1_RVT U29 ( .A0(rst_cnt[2]), .B0(\add_178_S2/carry [2]), .C1(
        \add_178_S2/carry [3]), .SO(N9) );
  HADDX1_RVT U30 ( .A0(rst_cnt[3]), .B0(\add_178_S2/carry [3]), .C1(
        \add_178_S2/carry [4]), .SO(N10) );
  INVX1_RVT U31 ( .A(LineState_o[0]), .Y(n17) );
  AND3X1_RVT U32 ( .A1(rst_cnt[3]), .A2(rst_cnt[4]), .A3(rst_cnt[2]), .Y(n7)
         );
  NBUFFX2_RVT U33 ( .A(rst), .Y(n15) );
  XOR2X1_RVT U34 ( .A1(\add_178_S2/carry [4]), .A2(rst_cnt[4]), .Y(N11) );
endmodule

