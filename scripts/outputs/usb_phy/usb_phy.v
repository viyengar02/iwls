/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4-1
// Date      : Tue Apr 29 11:32:10 2025
/////////////////////////////////////////////////////////////


module usb_tx_phy ( clk, rst, fs_ce, phy_mode, txdp, txdn, txoe, DataOut_i, 
        TxValid_i, TxReady_o );
  input [7:0] DataOut_i;
  input clk, rst, fs_ce, phy_mode, TxValid_i;
  output txdp, txdn, txoe, TxReady_o;
  wire   tx_ready_d, N18, ld_data, tx_ip, tx_ip_sync, data_done, sd_raw_o, N87,
         N88, sft_done, sd_bs_o, sd_nrzi_o, txoe_r1, append_eop_sync2,
         append_eop, append_eop_sync1, append_eop_sync3, append_eop_sync4,
         txoe_r2, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n20, n21,
         n22, n27, n29, n30, n31, n32, n33, n34, n35, n36, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n1, n2, n3, n4, n5, n6, n7, n18, n19, n23, n24, n25, n26, n28,
         n37, n38, n112;
  wire   [2:0] bit_cnt;
  wire   [7:0] hold_reg_d;
  wire   [7:0] hold_reg;
  wire   [2:0] one_cnt;
  wire   [2:0] state;

  NOR4X1_RVT U75 ( .A1(n73), .A2(n21), .A3(data_done), .A4(state[0]), .Y(n65)
         );
  DFFX1_RVT txdp_reg ( .D(n80), .CLK(clk), .Q(txdp) );
  DFFX1_RVT txdn_reg ( .D(n81), .CLK(clk), .Q(txdn) );
  DFFX1_RVT \hold_reg_reg[6]  ( .D(n91), .CLK(clk), .Q(hold_reg[6]) );
  DFFX1_RVT \hold_reg_reg[5]  ( .D(n92), .CLK(clk), .Q(hold_reg[5]) );
  DFFX1_RVT \hold_reg_reg[4]  ( .D(n93), .CLK(clk), .Q(hold_reg[4]) );
  DFFX1_RVT \hold_reg_reg[3]  ( .D(n94), .CLK(clk), .Q(hold_reg[3]) );
  DFFX1_RVT \hold_reg_reg[2]  ( .D(n95), .CLK(clk), .Q(hold_reg[2]) );
  DFFX1_RVT \hold_reg_reg[1]  ( .D(n96), .CLK(clk), .Q(hold_reg[1]) );
  DFFX1_RVT \hold_reg_reg[0]  ( .D(n97), .CLK(clk), .Q(hold_reg[0]) );
  DFFX1_RVT append_eop_sync1_reg ( .D(n109), .CLK(clk), .Q(append_eop_sync1)
         );
  DFFX1_RVT \hold_reg_reg[7]  ( .D(n90), .CLK(clk), .Q(hold_reg[7]) );
  DFFX1_RVT txoe_reg ( .D(n99), .CLK(clk), .Q(txoe) );
  DFFX1_RVT append_eop_reg ( .D(n110), .CLK(clk), .Q(append_eop) );
  DFFX1_RVT \hold_reg_d_reg[3]  ( .D(hold_reg[3]), .CLK(clk), .Q(hold_reg_d[3]) );
  DFFX1_RVT \hold_reg_d_reg[7]  ( .D(hold_reg[7]), .CLK(clk), .Q(hold_reg_d[7]) );
  DFFX1_RVT txoe_r2_reg ( .D(n100), .CLK(clk), .Q(txoe_r2) );
  DFFX1_RVT \hold_reg_d_reg[1]  ( .D(hold_reg[1]), .CLK(clk), .Q(hold_reg_d[1]) );
  DFFX1_RVT \hold_reg_d_reg[5]  ( .D(hold_reg[5]), .CLK(clk), .Q(hold_reg_d[5]) );
  DFFX1_RVT \hold_reg_d_reg[0]  ( .D(hold_reg[0]), .CLK(clk), .Q(hold_reg_d[0]) );
  DFFX1_RVT \hold_reg_d_reg[2]  ( .D(hold_reg[2]), .CLK(clk), .Q(hold_reg_d[2]) );
  DFFX1_RVT \hold_reg_d_reg[4]  ( .D(hold_reg[4]), .CLK(clk), .Q(hold_reg_d[4]) );
  DFFX1_RVT \hold_reg_d_reg[6]  ( .D(hold_reg[6]), .CLK(clk), .Q(hold_reg_d[6]) );
  DFFX1_RVT sd_bs_o_reg ( .D(n83), .CLK(clk), .Q(sd_bs_o) );
  DFFX1_RVT tx_ip_reg ( .D(n103), .CLK(clk), .Q(tx_ip) );
  DFFX1_RVT sd_nrzi_o_reg ( .D(n82), .CLK(clk), .Q(sd_nrzi_o) );
  DFFX1_RVT txoe_r1_reg ( .D(n101), .CLK(clk), .Q(txoe_r1) );
  DFFX1_RVT sd_raw_o_reg ( .D(N87), .CLK(clk), .Q(sd_raw_o) );
  DFFX1_RVT data_done_reg ( .D(n98), .CLK(clk), .Q(data_done) );
  DFFX1_RVT sft_done_r_reg ( .D(sft_done), .CLK(clk), .QN(n11) );
  DFFX1_RVT sft_done_reg ( .D(N88), .CLK(clk), .Q(sft_done) );
  DFFX1_RVT ld_data_reg ( .D(tx_ready_d), .CLK(clk), .Q(ld_data) );
  DFFX1_RVT TxReady_o_reg ( .D(N18), .CLK(clk), .Q(TxReady_o) );
  DFFX1_RVT \state_reg[0]  ( .D(n111), .CLK(clk), .Q(state[0]), .QN(n22) );
  DFFX1_RVT \state_reg[2]  ( .D(n104), .CLK(clk), .Q(state[2]), .QN(n20) );
  DFFX1_RVT \state_reg[1]  ( .D(n105), .CLK(clk), .Q(state[1]), .QN(n21) );
  DFFX1_RVT tx_ip_sync_reg ( .D(n102), .CLK(clk), .Q(tx_ip_sync), .QN(n4) );
  DFFX1_RVT append_eop_sync2_reg ( .D(n108), .CLK(clk), .Q(append_eop_sync2), 
        .QN(n15) );
  DFFX1_RVT append_eop_sync4_reg ( .D(n106), .CLK(clk), .Q(append_eop_sync4), 
        .QN(n17) );
  DFFX1_RVT append_eop_sync3_reg ( .D(n107), .CLK(clk), .Q(append_eop_sync3), 
        .QN(n16) );
  DFFX1_RVT \bit_cnt_reg[0]  ( .D(n85), .CLK(clk), .Q(bit_cnt[0]), .QN(n10) );
  DFFX1_RVT \one_cnt_reg[0]  ( .D(n89), .CLK(clk), .Q(one_cnt[0]), .QN(n14) );
  DFFX1_RVT \bit_cnt_reg[1]  ( .D(n86), .CLK(clk), .Q(bit_cnt[1]), .QN(n9) );
  DFFX1_RVT \one_cnt_reg[1]  ( .D(n88), .CLK(clk), .Q(one_cnt[1]), .QN(n13) );
  DFFX1_RVT \bit_cnt_reg[2]  ( .D(n84), .CLK(clk), .Q(bit_cnt[2]), .QN(n8) );
  DFFX1_RVT \one_cnt_reg[2]  ( .D(n87), .CLK(clk), .Q(one_cnt[2]), .QN(n12) );
  AND2X1_RVT U3 ( .A1(rst), .A2(n63), .Y(n1) );
  OR2X1_RVT U4 ( .A1(n7), .A2(n38), .Y(n63) );
  INVX1_RVT U5 ( .A(n66), .Y(n6) );
  INVX1_RVT U6 ( .A(n51), .Y(n25) );
  AND2X1_RVT U7 ( .A1(n51), .A2(n53), .Y(n52) );
  INVX1_RVT U8 ( .A(n65), .Y(n28) );
  INVX1_RVT U9 ( .A(n53), .Y(n24) );
  OR2X1_RVT U10 ( .A1(n4), .A2(n63), .Y(n50) );
  INVX1_RVT U11 ( .A(rst), .Y(n38) );
  AND4X1_RVT U12 ( .A1(one_cnt[0]), .A2(n36), .A3(one_cnt[1]), .A4(n12), .Y(
        n46) );
  AO22X1_RVT U13 ( .A1(one_cnt[1]), .A2(n47), .A3(n48), .A4(one_cnt[0]), .Y(
        n88) );
  AND2X1_RVT U14 ( .A1(n36), .A2(n13), .Y(n48) );
  AO21X1_RVT U15 ( .A1(sd_bs_o), .A2(n1), .A3(n36), .Y(n83) );
  AO21X1_RVT U16 ( .A1(n23), .A2(n17), .A3(n1), .Y(n62) );
  AO22X1_RVT U17 ( .A1(sd_nrzi_o), .A2(n31), .A3(n5), .A4(n32), .Y(n82) );
  NAND2X0_RVT U18 ( .A1(n33), .A2(sd_nrzi_o), .Y(n32) );
  INVX1_RVT U19 ( .A(n31), .Y(n5) );
  AO22X1_RVT U20 ( .A1(n33), .A2(n7), .A3(n34), .A4(txoe_r1), .Y(n31) );
  AO21X1_RVT U21 ( .A1(txoe_r1), .A2(n1), .A3(n19), .Y(n101) );
  AO22X1_RVT U22 ( .A1(txdn), .A2(n1), .A3(n23), .A4(n29), .Y(n81) );
  AO22X1_RVT U23 ( .A1(append_eop_sync3), .A2(n112), .A3(n30), .A4(phy_mode), 
        .Y(n29) );
  NOR2X0_RVT U24 ( .A1(append_eop_sync3), .A2(sd_nrzi_o), .Y(n30) );
  AO22X1_RVT U25 ( .A1(append_eop_sync2), .A2(n1), .A3(append_eop_sync1), .A4(
        n23), .Y(n108) );
  AO22X1_RVT U26 ( .A1(txoe_r2), .A2(n1), .A3(txoe_r1), .A4(n23), .Y(n100) );
  AO22X1_RVT U27 ( .A1(append_eop_sync4), .A2(n1), .A3(n23), .A4(
        append_eop_sync3), .Y(n106) );
  AO22X1_RVT U28 ( .A1(tx_ip_sync), .A2(n1), .A3(tx_ip), .A4(n23), .Y(n102) );
  OA21X1_RVT U29 ( .A1(n16), .A2(n112), .A3(n23), .Y(n27) );
  NOR2X0_RVT U30 ( .A1(txoe_r1), .A2(txoe_r2), .Y(n56) );
  AO22X1_RVT U31 ( .A1(append_eop_sync1), .A2(n1), .A3(append_eop), .A4(n23), 
        .Y(n109) );
  AND2X1_RVT U32 ( .A1(tx_ip_sync), .A2(rst), .Y(n35) );
  AND2X1_RVT U33 ( .A1(n35), .A2(txoe_r1), .Y(n33) );
  AO21X1_RVT U34 ( .A1(rst), .A2(n22), .A3(n6), .Y(n58) );
  AO22X1_RVT U35 ( .A1(state[2]), .A2(n58), .A3(n59), .A4(n60), .Y(n104) );
  AND2X1_RVT U36 ( .A1(state[0]), .A2(state[1]), .Y(n59) );
  AO22X1_RVT U37 ( .A1(state[1]), .A2(n58), .A3(n60), .A4(n26), .Y(n105) );
  INVX1_RVT U38 ( .A(n61), .Y(n26) );
  NAND3X0_RVT U39 ( .A1(rst), .A2(n67), .A3(n68), .Y(n66) );
  OR2X1_RVT U40 ( .A1(n61), .A2(n73), .Y(n67) );
  OA221X1_RVT U41 ( .A1(state[2]), .A2(n69), .A3(n70), .A4(n7), .A5(n53), .Y(
        n68) );
  OA22X1_RVT U42 ( .A1(n71), .A2(n20), .A3(append_eop_sync3), .A4(n28), .Y(n70) );
  AND2X1_RVT U43 ( .A1(rst), .A2(n66), .Y(n60) );
  AO22X1_RVT U44 ( .A1(n6), .A2(state[0]), .A3(n60), .A4(n22), .Y(n111) );
  AO22X1_RVT U45 ( .A1(n37), .A2(data_done), .A3(n54), .A4(TxValid_i), .Y(n98)
         );
  AND2X1_RVT U46 ( .A1(rst), .A2(n55), .Y(n54) );
  INVX1_RVT U47 ( .A(n55), .Y(n37) );
  NAND3X0_RVT U48 ( .A1(TxValid_i), .A2(rst), .A3(tx_ip), .Y(n55) );
  AND3X1_RVT U49 ( .A1(TxValid_i), .A2(rst), .A3(tx_ready_d), .Y(N18) );
  OA21X1_RVT U50 ( .A1(n57), .A2(n24), .A3(rst), .Y(n103) );
  AND2X1_RVT U51 ( .A1(tx_ip), .A2(n16), .Y(n57) );
  OA21X1_RVT U52 ( .A1(n64), .A2(n65), .A3(rst), .Y(n110) );
  AND2X1_RVT U53 ( .A1(append_eop), .A2(n15), .Y(n64) );
  AO221X1_RVT U54 ( .A1(hold_reg[7]), .A2(n51), .A3(DataOut_i[7]), .A4(n25), 
        .A5(n24), .Y(n90) );
  NAND4X0_RVT U55 ( .A1(TxValid_i), .A2(n22), .A3(n21), .A4(n20), .Y(n53) );
  NAND2X0_RVT U56 ( .A1(ld_data), .A2(n53), .Y(n51) );
  AO22X1_RVT U57 ( .A1(DataOut_i[0]), .A2(n25), .A3(hold_reg[0]), .A4(n52), 
        .Y(n97) );
  AO22X1_RVT U58 ( .A1(DataOut_i[1]), .A2(n25), .A3(hold_reg[1]), .A4(n52), 
        .Y(n96) );
  AO22X1_RVT U59 ( .A1(DataOut_i[2]), .A2(n25), .A3(hold_reg[2]), .A4(n52), 
        .Y(n95) );
  AO22X1_RVT U60 ( .A1(DataOut_i[3]), .A2(n25), .A3(hold_reg[3]), .A4(n52), 
        .Y(n94) );
  AO22X1_RVT U61 ( .A1(DataOut_i[4]), .A2(n25), .A3(hold_reg[4]), .A4(n52), 
        .Y(n93) );
  AO22X1_RVT U62 ( .A1(DataOut_i[5]), .A2(n25), .A3(hold_reg[5]), .A4(n52), 
        .Y(n92) );
  AO22X1_RVT U63 ( .A1(DataOut_i[6]), .A2(n25), .A3(hold_reg[6]), .A4(n52), 
        .Y(n91) );
  AND2X1_RVT U64 ( .A1(n28), .A2(n72), .Y(n69) );
  NAND3X0_RVT U65 ( .A1(state[0]), .A2(state[1]), .A3(append_eop_sync3), .Y(
        n72) );
  OA22X1_RVT U66 ( .A1(state[1]), .A2(append_eop_sync3), .A3(n22), .A4(n16), 
        .Y(n71) );
  INVX1_RVT U67 ( .A(fs_ce), .Y(n7) );
  NAND2X0_RVT U68 ( .A1(sft_done), .A2(n11), .Y(n73) );
  NAND3X0_RVT U69 ( .A1(one_cnt[1]), .A2(n14), .A3(one_cnt[2]), .Y(n44) );
  NAND3X0_RVT U70 ( .A1(n21), .A2(n20), .A3(state[0]), .Y(n61) );
  AOI21X1_RVT U71 ( .A1(n61), .A2(n79), .A3(n73), .Y(tx_ready_d) );
  NAND3X0_RVT U72 ( .A1(data_done), .A2(n22), .A3(state[1]), .Y(n79) );
  AND2X1_RVT U73 ( .A1(bit_cnt[1]), .A2(bit_cnt[0]), .Y(n39) );
  AO222X1_RVT U74 ( .A1(hold_reg_d[1]), .A2(n42), .A3(n77), .A4(n10), .A5(
        hold_reg_d[3]), .A6(n39), .Y(n76) );
  AO222X1_RVT U76 ( .A1(hold_reg_d[5]), .A2(n42), .A3(n78), .A4(n10), .A5(
        hold_reg_d[7]), .A6(n39), .Y(n75) );
  AND2X1_RVT U77 ( .A1(bit_cnt[0]), .A2(n9), .Y(n42) );
  AND3X1_RVT U78 ( .A1(n39), .A2(n44), .A3(bit_cnt[2]), .Y(N88) );
  AO22X1_RVT U79 ( .A1(hold_reg_d[6]), .A2(bit_cnt[1]), .A3(hold_reg_d[4]), 
        .A4(n9), .Y(n78) );
  AO22X1_RVT U80 ( .A1(hold_reg_d[2]), .A2(bit_cnt[1]), .A3(hold_reg_d[0]), 
        .A4(n9), .Y(n77) );
  INVX1_RVT U81 ( .A(phy_mode), .Y(n112) );
  AND2X1_RVT U82 ( .A1(tx_ip_sync), .A2(n74), .Y(N87) );
  AO22X1_RVT U83 ( .A1(bit_cnt[2]), .A2(n75), .A3(n76), .A4(n8), .Y(n74) );
  AO221X1_RVT U84 ( .A1(n27), .A2(sd_nrzi_o), .A3(txdp), .A4(n1), .A5(n38), 
        .Y(n80) );
  AND2X1_RVT U85 ( .A1(sd_bs_o), .A2(n19), .Y(n34) );
  AOI21X1_RVT U86 ( .A1(n18), .A2(n9), .A3(n40), .Y(n2) );
  AND2X1_RVT U87 ( .A1(n35), .A2(n50), .Y(n49) );
  OAI22X1_RVT U88 ( .A1(n8), .A2(n2), .A3(n3), .A4(n43), .Y(n84) );
  NAND2X0_RVT U89 ( .A1(n39), .A2(n8), .Y(n3) );
  AO22X1_RVT U90 ( .A1(n41), .A2(bit_cnt[0]), .A3(n18), .A4(n10), .Y(n85) );
  AO22X1_RVT U91 ( .A1(bit_cnt[1]), .A2(n40), .A3(n42), .A4(n18), .Y(n86) );
  AO21X1_RVT U92 ( .A1(n18), .A2(n10), .A3(n41), .Y(n40) );
  INVX0_RVT U93 ( .A(n43), .Y(n18) );
  AND2X1_RVT U94 ( .A1(n35), .A2(n43), .Y(n41) );
  NAND2X0_RVT U95 ( .A1(n19), .A2(n44), .Y(n43) );
  AO21X1_RVT U96 ( .A1(one_cnt[2]), .A2(n45), .A3(n46), .Y(n87) );
  INVX0_RVT U97 ( .A(n63), .Y(n23) );
  AO22X1_RVT U98 ( .A1(n49), .A2(one_cnt[0]), .A3(n36), .A4(n14), .Y(n89) );
  AO22X1_RVT U99 ( .A1(append_eop_sync2), .A2(n23), .A3(append_eop_sync3), 
        .A4(n62), .Y(n107) );
  AO221X1_RVT U100 ( .A1(n56), .A2(n23), .A3(txoe), .A4(n1), .A5(n38), .Y(n99)
         );
  AO21X1_RVT U101 ( .A1(n36), .A2(n13), .A3(n47), .Y(n45) );
  AO21X1_RVT U102 ( .A1(n36), .A2(n14), .A3(n49), .Y(n47) );
  AND3X1_RVT U103 ( .A1(n19), .A2(n44), .A3(sd_raw_o), .Y(n36) );
  INVX0_RVT U104 ( .A(n50), .Y(n19) );
endmodule


module usb_rx_phy ( clk, rst, fs_ce, rxd, rxdp, rxdn, RxValid_o, RxActive_o, 
        RxError_o, DataIn_o, RxEn_i, LineState );
  output [7:0] DataIn_o;
  output [1:0] LineState;
  input clk, rst, rxd, rxdp, rxdn, RxEn_i;
  output fs_ce, RxValid_o, RxActive_o, RxError_o;
  wire   rx_en, N20, rxd_s0, rxd_s1, rxd_s, rxdp_s0, N27, rxdp_s, rxdn_s0, N29,
         se0_s, rxd_r, N31, N32, fs_ce_d, fs_ce_r1, fs_ce_r2, rx_valid_r, sd_r,
         sd_nrzi, shift_en, N136, rx_valid1, N166, n1, n10, n12, n13, n14, n19,
         n20, n21, n23, n24, n26, n27, n28, n29, n30, n31, n34, n35, n37, n38,
         n40, n42, n46, n47, n49, n50, n51, n52, n54, n56, n57, n58, n60, n61,
         n62, n63, n64, n66, n68, n69, n70, n71, n72, n73, n75, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n106, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n2, n3, n4, n5, n6, n7, n8, n9, n11,
         n15, n16, n17, n18, n22, n25, n32, n33, n36, n39, n41, n43, n44, n45,
         n48, n53, n55, n59;
  wire   [2:0] one_cnt;

  NOR4X1_RVT U77 ( .A1(n56), .A2(n62), .A3(n110), .A4(rxdp_s), .Y(n42) );
  DFFX1_RVT \one_cnt_reg[2]  ( .D(n119), .CLK(clk), .Q(one_cnt[2]), .QN(n55)
         );
  DFFX1_RVT byte_err_reg ( .D(N166), .CLK(clk), .QN(n86) );
  DFFX1_RVT sync_err_reg ( .D(N20), .CLK(clk), .QN(n87) );
  DFFX1_RVT bit_stuff_err_reg ( .D(N136), .CLK(clk), .QN(n85) );
  DFFX1_RVT rxdp_s_r_reg ( .D(n18), .CLK(clk), .QN(n81) );
  DFFX1_RVT rxdn_s_r_reg ( .D(n33), .CLK(clk), .QN(n82) );
  DFFX1_RVT rx_valid_reg ( .D(n41), .CLK(clk), .Q(RxValid_o) );
  DFFX1_RVT rxd_s1_reg ( .D(rxd_s0), .CLK(clk), .Q(rxd_s1) );
  DFFX1_RVT se0_r_reg ( .D(n22), .CLK(clk), .QN(n80) );
  DFFX1_RVT \hold_reg_reg[0]  ( .D(n95), .CLK(clk), .Q(DataIn_o[0]) );
  DFFX1_RVT rxdp_s0_reg ( .D(rxdp), .CLK(clk), .Q(rxdp_s0) );
  DFFX1_RVT rxdn_s0_reg ( .D(rxdn), .CLK(clk), .Q(rxdn_s0) );
  DFFX1_RVT rxd_s0_reg ( .D(rxd), .CLK(clk), .Q(rxd_s0) );
  DFFX1_RVT \dpll_state_reg[1]  ( .D(N32), .CLK(clk), .QN(n83) );
  DFFX1_RVT rx_valid1_reg ( .D(n115), .CLK(clk), .Q(rx_valid1) );
  DFFX1_RVT rx_valid_r_reg ( .D(n128), .CLK(clk), .Q(rx_valid_r) );
  DFFX1_RVT sd_r_reg ( .D(n103), .CLK(clk), .Q(sd_r) );
  DFFX1_RVT \dpll_state_reg[0]  ( .D(N31), .CLK(clk), .Q(n84), .QN(n39) );
  DFFX1_RVT \bit_cnt_reg[2]  ( .D(n116), .CLK(clk), .Q(n8), .QN(n112) );
  DFFX1_RVT rxd_r_reg ( .D(rxd_s), .CLK(clk), .Q(rxd_r) );
  DFFX1_RVT \bit_cnt_reg[1]  ( .D(n117), .CLK(clk), .Q(n3), .QN(n113) );
  DFFX1_RVT \bit_cnt_reg[0]  ( .D(n118), .CLK(clk), .Q(n2), .QN(n114) );
  DFFX1_RVT \fs_state_reg[2]  ( .D(n123), .CLK(clk), .QN(n108) );
  DFFX1_RVT rxdp_s1_reg ( .D(rxdp_s0), .CLK(clk), .Q(LineState[0]) );
  DFFX1_RVT \fs_state_reg[0]  ( .D(n125), .CLK(clk), .Q(n5), .QN(n110) );
  DFFX1_RVT rxdn_s1_reg ( .D(rxdn_s0), .CLK(clk), .Q(LineState[1]) );
  DFFX1_RVT se0_s_reg ( .D(n104), .CLK(clk), .Q(se0_s), .QN(n45) );
  DFFX1_RVT \fs_state_reg[1]  ( .D(n124), .CLK(clk), .Q(n6), .QN(n109) );
  DFFX1_RVT rx_en_reg ( .D(RxEn_i), .CLK(clk), .Q(rx_en) );
  DFFX1_RVT rxdn_s_reg ( .D(N29), .CLK(clk), .QN(n36) );
  DFFX1_RVT rxdp_s_reg ( .D(N27), .CLK(clk), .Q(rxdp_s), .QN(n32) );
  DFFX1_RVT rxd_s_reg ( .D(n129), .CLK(clk), .Q(rxd_s) );
  DFFX1_RVT shift_en_reg ( .D(n122), .CLK(clk), .Q(shift_en) );
  DFFX1_RVT \one_cnt_reg[1]  ( .D(n120), .CLK(clk), .Q(one_cnt[1]), .QN(n7) );
  DFFX1_RVT \one_cnt_reg[0]  ( .D(n121), .CLK(clk), .Q(one_cnt[0]), .QN(n4) );
  DFFX1_RVT fs_ce_r1_reg ( .D(fs_ce_d), .CLK(clk), .Q(fs_ce_r1) );
  DFFX1_RVT fs_ce_r2_reg ( .D(fs_ce_r1), .CLK(clk), .Q(fs_ce_r2) );
  DFFX1_RVT fs_ce_reg ( .D(fs_ce_r2), .CLK(clk), .Q(fs_ce), .QN(n106) );
  DFFX1_RVT sd_nrzi_reg ( .D(n126), .CLK(clk), .Q(sd_nrzi), .QN(n15) );
  DFFX1_RVT \hold_reg_reg[6]  ( .D(n101), .CLK(clk), .Q(DataIn_o[6]) );
  DFFX1_RVT \hold_reg_reg[5]  ( .D(n100), .CLK(clk), .Q(DataIn_o[5]) );
  DFFX1_RVT \hold_reg_reg[4]  ( .D(n99), .CLK(clk), .Q(DataIn_o[4]) );
  DFFX1_RVT \hold_reg_reg[3]  ( .D(n98), .CLK(clk), .Q(DataIn_o[3]) );
  DFFX1_RVT \hold_reg_reg[2]  ( .D(n97), .CLK(clk), .Q(DataIn_o[2]) );
  DFFX1_RVT \hold_reg_reg[1]  ( .D(n96), .CLK(clk), .Q(DataIn_o[1]) );
  DFFX1_RVT \hold_reg_reg[7]  ( .D(n102), .CLK(clk), .Q(DataIn_o[7]) );
  DFFX1_RVT rx_active_reg ( .D(n127), .CLK(clk), .Q(RxActive_o), .QN(n111) );
  NAND2X0_RVT U3 ( .A1(n47), .A2(n52), .Y(n49) );
  INVX1_RVT U4 ( .A(n73), .Y(n22) );
  AND2X1_RVT U5 ( .A1(fs_ce), .A2(n19), .Y(n10) );
  INVX1_RVT U6 ( .A(n1), .Y(n43) );
  AO22X1_RVT U7 ( .A1(n1), .A2(DataIn_o[1]), .A3(n43), .A4(DataIn_o[2]), .Y(
        n96) );
  AO22X1_RVT U8 ( .A1(n1), .A2(DataIn_o[2]), .A3(n43), .A4(DataIn_o[3]), .Y(
        n97) );
  AO22X1_RVT U9 ( .A1(n1), .A2(DataIn_o[3]), .A3(n43), .A4(DataIn_o[4]), .Y(
        n98) );
  AO22X1_RVT U10 ( .A1(n1), .A2(DataIn_o[4]), .A3(n43), .A4(DataIn_o[5]), .Y(
        n99) );
  AO22X1_RVT U11 ( .A1(n1), .A2(DataIn_o[5]), .A3(n43), .A4(DataIn_o[6]), .Y(
        n100) );
  AO22X1_RVT U12 ( .A1(n1), .A2(DataIn_o[6]), .A3(n43), .A4(DataIn_o[7]), .Y(
        n101) );
  INVX1_RVT U13 ( .A(rst), .Y(n59) );
  OR3X2_RVT U14 ( .A1(n54), .A2(n59), .A3(n5), .Y(n52) );
  NAND2X0_RVT U15 ( .A1(rst), .A2(n56), .Y(n47) );
  INVX1_RVT U16 ( .A(n12), .Y(n41) );
  INVX1_RVT U17 ( .A(n19), .Y(n53) );
  INVX1_RVT U18 ( .A(n66), .Y(n17) );
  NAND2X0_RVT U19 ( .A1(n36), .A2(n32), .Y(n73) );
  INVX1_RVT U20 ( .A(n69), .Y(n33) );
  INVX1_RVT U21 ( .A(n70), .Y(n18) );
  AND4X1_RVT U22 ( .A1(one_cnt[0]), .A2(n31), .A3(one_cnt[1]), .A4(n55), .Y(
        n30) );
  AND2X1_RVT U23 ( .A1(n31), .A2(n7), .Y(n35) );
  AO21X1_RVT U24 ( .A1(n20), .A2(n8), .A3(n21), .Y(n116) );
  AND4X1_RVT U25 ( .A1(n112), .A2(n44), .A3(n2), .A4(n3), .Y(n21) );
  AO21X1_RVT U26 ( .A1(n113), .A2(n44), .A3(n23), .Y(n20) );
  AO22X1_RVT U27 ( .A1(n23), .A2(n3), .A3(n24), .A4(n113), .Y(n117) );
  AND2X1_RVT U28 ( .A1(n44), .A2(n2), .Y(n24) );
  AO22X1_RVT U29 ( .A1(n1), .A2(DataIn_o[7]), .A3(sd_nrzi), .A4(n43), .Y(n102)
         );
  NAND2X0_RVT U30 ( .A1(shift_en), .A2(n10), .Y(n1) );
  AO22X1_RVT U31 ( .A1(n1), .A2(DataIn_o[0]), .A3(n43), .A4(DataIn_o[1]), .Y(
        n95) );
  OAI21X1_RVT U32 ( .A1(n9), .A2(n108), .A3(n11), .Y(n123) );
  AOI21X1_RVT U33 ( .A1(n46), .A2(n109), .A3(n49), .Y(n9) );
  NAND4X0_RVT U34 ( .A1(n108), .A2(n46), .A3(n47), .A4(n6), .Y(n11) );
  NOR3X0_RVT U35 ( .A1(n59), .A2(n110), .A3(n51), .Y(n46) );
  AO22X1_RVT U36 ( .A1(n49), .A2(n6), .A3(n50), .A4(n46), .Y(n124) );
  AND2X1_RVT U37 ( .A1(n109), .A2(n47), .Y(n50) );
  AO22X1_RVT U38 ( .A1(n16), .A2(RxActive_o), .A3(n60), .A4(n42), .Y(n127) );
  AND2X1_RVT U39 ( .A1(rst), .A2(n61), .Y(n60) );
  INVX1_RVT U40 ( .A(n61), .Y(n16) );
  AO221X1_RVT U41 ( .A1(n42), .A2(rx_en), .A3(rx_valid_r), .A4(n22), .A5(n59), 
        .Y(n61) );
  OAI22X1_RVT U42 ( .A1(n47), .A2(n110), .A3(n52), .A4(n25), .Y(n125) );
  INVX1_RVT U43 ( .A(n47), .Y(n25) );
  AOI21X1_RVT U44 ( .A1(n13), .A2(n14), .A3(n59), .Y(n115) );
  NAND4X0_RVT U45 ( .A1(n10), .A2(n2), .A3(n3), .A4(n8), .Y(n14) );
  NAND2X0_RVT U46 ( .A1(rx_valid1), .A2(n12), .Y(n13) );
  AO221X1_RVT U47 ( .A1(fs_ce_d), .A2(n17), .A3(n66), .A4(n39), .A5(n59), .Y(
        N31) );
  OA21X1_RVT U48 ( .A1(n64), .A2(fs_ce_d), .A3(rst), .Y(N32) );
  NOR3X0_RVT U49 ( .A1(n84), .A2(n83), .A3(n17), .Y(n64) );
  AND2X1_RVT U50 ( .A1(rst), .A2(n57), .Y(n126) );
  AO221X1_RVT U51 ( .A1(n58), .A2(fs_ce), .A3(n106), .A4(sd_nrzi), .A5(n111), 
        .Y(n57) );
  XNOR2X1_RVT U52 ( .A1(sd_r), .A2(rxd_s), .Y(n58) );
  NAND3X0_RVT U53 ( .A1(one_cnt[1]), .A2(n4), .A3(one_cnt[2]), .Y(n19) );
  NAND4X0_RVT U54 ( .A1(n111), .A2(n73), .A3(fs_ce), .A4(n45), .Y(n56) );
  AO22X1_RVT U55 ( .A1(n106), .A2(shift_en), .A3(n40), .A4(fs_ce), .Y(n122) );
  OR2X1_RVT U56 ( .A1(RxActive_o), .A2(n42), .Y(n40) );
  NAND2X0_RVT U57 ( .A1(rx_valid1), .A2(n10), .Y(n12) );
  AOI21X1_RVT U58 ( .A1(n71), .A2(n72), .A3(n56), .Y(N20) );
  NAND3X0_RVT U59 ( .A1(n75), .A2(n54), .A3(n110), .Y(n72) );
  NAND3X0_RVT U60 ( .A1(n62), .A2(n5), .A3(n51), .Y(n71) );
  NAND2X0_RVT U61 ( .A1(n108), .A2(n109), .Y(n75) );
  AND4X1_RVT U62 ( .A1(n53), .A2(sd_nrzi), .A3(n79), .A4(n73), .Y(N136) );
  AND2X1_RVT U63 ( .A1(RxActive_o), .A2(fs_ce), .Y(n79) );
  AO22X1_RVT U64 ( .A1(sd_r), .A2(n106), .A3(rxd_s), .A4(fs_ce), .Y(n103) );
  AO22X1_RVT U65 ( .A1(se0_s), .A2(n106), .A3(n22), .A4(fs_ce), .Y(n104) );
  NAND2X0_RVT U66 ( .A1(rx_en), .A2(n68), .Y(n66) );
  XOR2X1_RVT U67 ( .A1(rxd_s), .A2(rxd_r), .Y(n68) );
  AO21X1_RVT U68 ( .A1(n109), .A2(n54), .A3(n108), .Y(n62) );
  NAND2X0_RVT U69 ( .A1(rx_en), .A2(n32), .Y(n54) );
  AO22X1_RVT U70 ( .A1(rxd_s0), .A2(rxd_s), .A3(rxd_s1), .A4(n63), .Y(n129) );
  OR2X1_RVT U71 ( .A1(rxd_s0), .A2(rxd_s), .Y(n63) );
  AND4X1_RVT U72 ( .A1(n22), .A2(n78), .A3(RxActive_o), .A4(n80), .Y(N166) );
  NAND2X0_RVT U73 ( .A1(n113), .A2(n112), .Y(n78) );
  NAND2X0_RVT U74 ( .A1(rx_en), .A2(n36), .Y(n51) );
  AO21X1_RVT U75 ( .A1(rx_valid_r), .A2(n106), .A3(RxValid_o), .Y(n128) );
  AND2X1_RVT U76 ( .A1(n83), .A2(n84), .Y(fs_ce_d) );
  NAND2X0_RVT U78 ( .A1(rxdn_s0), .A2(LineState[1]), .Y(n69) );
  NAND2X0_RVT U79 ( .A1(n82), .A2(n69), .Y(N29) );
  NAND2X0_RVT U80 ( .A1(rxdp_s0), .A2(LineState[0]), .Y(n70) );
  NAND2X0_RVT U81 ( .A1(n81), .A2(n70), .Y(N27) );
  NAND3X0_RVT U82 ( .A1(n86), .A2(n87), .A3(n85), .Y(RxError_o) );
  NAND2X0_RVT U83 ( .A1(rst), .A2(shift_en), .Y(n27) );
  NOR2X0_RVT U84 ( .A1(n26), .A2(n15), .Y(n31) );
  AO21X1_RVT U85 ( .A1(one_cnt[2]), .A2(n29), .A3(n30), .Y(n119) );
  AO22X1_RVT U86 ( .A1(n34), .A2(one_cnt[1]), .A3(n35), .A4(one_cnt[0]), .Y(
        n120) );
  AO21X1_RVT U87 ( .A1(n31), .A2(n7), .A3(n34), .Y(n29) );
  AO22X1_RVT U88 ( .A1(n31), .A2(n4), .A3(n38), .A4(one_cnt[0]), .Y(n121) );
  OAI22X1_RVT U89 ( .A1(n26), .A2(n2), .A3(n27), .A4(n28), .Y(n118) );
  NAND2X0_RVT U90 ( .A1(n26), .A2(n2), .Y(n28) );
  AND2X1_RVT U91 ( .A1(n48), .A2(n37), .Y(n38) );
  OR2X1_RVT U92 ( .A1(n37), .A2(n53), .Y(n26) );
  AO22X1_RVT U93 ( .A1(n114), .A2(n44), .A3(n48), .A4(n26), .Y(n23) );
  AO22X1_RVT U94 ( .A1(n31), .A2(n4), .A3(n48), .A4(n37), .Y(n34) );
  NAND2X0_RVT U95 ( .A1(n48), .A2(fs_ce), .Y(n37) );
  INVX0_RVT U96 ( .A(n27), .Y(n48) );
  INVX0_RVT U97 ( .A(n26), .Y(n44) );
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
  wire   fs_ce, N7, N8, N9, N10, N11, N26, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16;
  wire   [4:0] rst_cnt;
  wire   [4:2] \add_178_S2/carry ;

  usb_tx_phy i_tx_phy ( .clk(clk), .rst(rst), .fs_ce(fs_ce), .phy_mode(
        phy_tx_mode), .txdp(txdp), .txdn(txdn), .txoe(txoe), .DataOut_i(
        DataOut_i), .TxValid_i(TxValid_i), .TxReady_o(TxReady_o) );
  usb_rx_phy i_rx_phy ( .clk(clk), .rst(n13), .fs_ce(fs_ce), .rxd(rxd), .rxdp(
        rxdp), .rxdn(rxdn), .RxValid_o(RxValid_o), .RxActive_o(RxActive_o), 
        .RxError_o(RxError_o), .DataIn_o(DataIn_o), .RxEn_i(txoe), .LineState(
        LineState_o) );
  DFFX1_RVT \rst_cnt_reg[4]  ( .D(n8), .CLK(clk), .Q(rst_cnt[4]) );
  DFFX1_RVT \rst_cnt_reg[3]  ( .D(n9), .CLK(clk), .Q(rst_cnt[3]) );
  DFFX1_RVT \rst_cnt_reg[2]  ( .D(n10), .CLK(clk), .Q(rst_cnt[2]) );
  DFFX1_RVT \rst_cnt_reg[1]  ( .D(n11), .CLK(clk), .Q(rst_cnt[1]) );
  DFFX1_RVT \rst_cnt_reg[0]  ( .D(n12), .CLK(clk), .Q(rst_cnt[0]), .QN(N7) );
  DFFX1_RVT usb_rst_reg ( .D(N26), .CLK(clk), .Q(usb_rst) );
  INVX1_RVT U16 ( .A(n5), .Y(n14) );
  AO22X1_RVT U17 ( .A1(rst_cnt[4]), .A2(n4), .A3(N11), .A4(n14), .Y(n8) );
  AO22X1_RVT U18 ( .A1(rst_cnt[3]), .A2(n4), .A3(N10), .A4(n14), .Y(n9) );
  AO22X1_RVT U19 ( .A1(rst_cnt[2]), .A2(n4), .A3(N9), .A4(n14), .Y(n10) );
  AO22X1_RVT U20 ( .A1(rst_cnt[1]), .A2(n4), .A3(N8), .A4(n14), .Y(n11) );
  AO22X1_RVT U21 ( .A1(rst_cnt[0]), .A2(n4), .A3(N7), .A4(n14), .Y(n12) );
  NAND4X0_RVT U22 ( .A1(n13), .A2(fs_ce), .A3(n6), .A4(n15), .Y(n5) );
  NOR2X0_RVT U23 ( .A1(usb_rst), .A2(LineState_o[1]), .Y(n6) );
  AND4X1_RVT U24 ( .A1(n13), .A2(n5), .A3(n15), .A4(n16), .Y(n4) );
  INVX1_RVT U25 ( .A(LineState_o[1]), .Y(n16) );
  INVX1_RVT U26 ( .A(LineState_o[0]), .Y(n15) );
  HADDX1_RVT U27 ( .A0(rst_cnt[1]), .B0(rst_cnt[0]), .C1(\add_178_S2/carry [2]), .SO(N8) );
  HADDX1_RVT U28 ( .A0(rst_cnt[2]), .B0(\add_178_S2/carry [2]), .C1(
        \add_178_S2/carry [3]), .SO(N9) );
  HADDX1_RVT U29 ( .A0(rst_cnt[3]), .B0(\add_178_S2/carry [3]), .C1(
        \add_178_S2/carry [4]), .SO(N10) );
  AND3X1_RVT U30 ( .A1(rst_cnt[0]), .A2(rst_cnt[1]), .A3(n7), .Y(N26) );
  AND3X1_RVT U31 ( .A1(rst_cnt[3]), .A2(rst_cnt[4]), .A3(rst_cnt[2]), .Y(n7)
         );
  NBUFFX2_RVT U32 ( .A(rst), .Y(n13) );
  XOR2X1_RVT U33 ( .A1(\add_178_S2/carry [4]), .A2(rst_cnt[4]), .Y(N11) );
endmodule

