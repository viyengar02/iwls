/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4-1
// Date      : Tue Apr 29 11:26:06 2025
/////////////////////////////////////////////////////////////


module sasc_fifo4_1 ( clk, rst, clr, din, we, dout, re, full, empty );
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, clr, we, re;
  output full, empty;
  wire   N8, N9, \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] ,
         \mem[3][2] , \mem[3][1] , \mem[3][0] , gb, n10, n12, n13, n14, n15,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n11, n16, n17, n18, n74, n75, n76,
         n77, n78, n79, n80;
  wire   [1:0] wp;

  DFFX1_RVT \mem_reg[1][6]  ( .D(n60), .CLK(clk), .Q(\mem[1][6] ) );
  DFFX1_RVT \mem_reg[1][5]  ( .D(n59), .CLK(clk), .Q(\mem[1][5] ) );
  DFFX1_RVT \mem_reg[1][4]  ( .D(n58), .CLK(clk), .Q(\mem[1][4] ) );
  DFFX1_RVT \mem_reg[1][3]  ( .D(n57), .CLK(clk), .Q(\mem[1][3] ) );
  DFFX1_RVT \mem_reg[1][2]  ( .D(n56), .CLK(clk), .Q(\mem[1][2] ) );
  DFFX1_RVT \mem_reg[1][1]  ( .D(n55), .CLK(clk), .Q(\mem[1][1] ) );
  DFFX1_RVT \mem_reg[1][0]  ( .D(n54), .CLK(clk), .Q(\mem[1][0] ) );
  DFFX1_RVT gb_reg ( .D(n37), .CLK(clk), .Q(gb), .QN(n15) );
  DFFX1_RVT \mem_reg[0][6]  ( .D(n68), .CLK(clk), .Q(\mem[0][6] ) );
  DFFX1_RVT \mem_reg[0][5]  ( .D(n67), .CLK(clk), .Q(\mem[0][5] ) );
  DFFX1_RVT \mem_reg[0][4]  ( .D(n66), .CLK(clk), .Q(\mem[0][4] ) );
  DFFX1_RVT \mem_reg[0][3]  ( .D(n65), .CLK(clk), .Q(\mem[0][3] ) );
  DFFX1_RVT \mem_reg[0][2]  ( .D(n64), .CLK(clk), .Q(\mem[0][2] ) );
  DFFX1_RVT \mem_reg[0][1]  ( .D(n63), .CLK(clk), .Q(\mem[0][1] ) );
  DFFX1_RVT \mem_reg[0][0]  ( .D(n62), .CLK(clk), .Q(\mem[0][0] ) );
  DFFX1_RVT \mem_reg[1][7]  ( .D(n61), .CLK(clk), .Q(\mem[1][7] ) );
  DFFX1_RVT \mem_reg[2][6]  ( .D(n52), .CLK(clk), .Q(\mem[2][6] ) );
  DFFX1_RVT \mem_reg[2][5]  ( .D(n51), .CLK(clk), .Q(\mem[2][5] ) );
  DFFX1_RVT \mem_reg[2][4]  ( .D(n50), .CLK(clk), .Q(\mem[2][4] ) );
  DFFX1_RVT \mem_reg[2][3]  ( .D(n49), .CLK(clk), .Q(\mem[2][3] ) );
  DFFX1_RVT \mem_reg[2][2]  ( .D(n48), .CLK(clk), .Q(\mem[2][2] ) );
  DFFX1_RVT \mem_reg[2][1]  ( .D(n47), .CLK(clk), .Q(\mem[2][1] ) );
  DFFX1_RVT \mem_reg[2][0]  ( .D(n46), .CLK(clk), .Q(\mem[2][0] ) );
  DFFX1_RVT \mem_reg[0][7]  ( .D(n69), .CLK(clk), .Q(\mem[0][7] ) );
  DFFX1_RVT \mem_reg[3][6]  ( .D(n44), .CLK(clk), .Q(\mem[3][6] ) );
  DFFX1_RVT \mem_reg[3][5]  ( .D(n43), .CLK(clk), .Q(\mem[3][5] ) );
  DFFX1_RVT \mem_reg[3][4]  ( .D(n42), .CLK(clk), .Q(\mem[3][4] ) );
  DFFX1_RVT \mem_reg[3][3]  ( .D(n41), .CLK(clk), .Q(\mem[3][3] ) );
  DFFX1_RVT \mem_reg[3][2]  ( .D(n40), .CLK(clk), .Q(\mem[3][2] ) );
  DFFX1_RVT \mem_reg[3][1]  ( .D(n39), .CLK(clk), .Q(\mem[3][1] ) );
  DFFX1_RVT \mem_reg[3][0]  ( .D(n38), .CLK(clk), .Q(\mem[3][0] ) );
  DFFX1_RVT \mem_reg[2][7]  ( .D(n53), .CLK(clk), .Q(\mem[2][7] ) );
  DFFX1_RVT \mem_reg[3][7]  ( .D(n45), .CLK(clk), .Q(\mem[3][7] ) );
  DFFARX1_RVT \rp_reg[0]  ( .D(n71), .CLK(clk), .RSTB(rst), .Q(N8), .QN(n14)
         );
  DFFARX1_RVT \rp_reg[1]  ( .D(n70), .CLK(clk), .RSTB(rst), .Q(N9), .QN(n13)
         );
  DFFARX1_RVT \wp_reg[0]  ( .D(n73), .CLK(clk), .RSTB(rst), .Q(wp[0]), .QN(n12) );
  DFFARX1_RVT \wp_reg[1]  ( .D(n72), .CLK(clk), .RSTB(rst), .Q(wp[1]), .QN(n10) );
  AND3X1_RVT U3 ( .A1(rst), .A2(n78), .A3(n23), .Y(n22) );
  INVX1_RVT U4 ( .A(n25), .Y(n77) );
  INVX1_RVT U5 ( .A(n26), .Y(n75) );
  INVX1_RVT U6 ( .A(n29), .Y(n74) );
  INVX1_RVT U7 ( .A(n28), .Y(n76) );
  INVX1_RVT U8 ( .A(n32), .Y(n80) );
  INVX1_RVT U9 ( .A(n23), .Y(n18) );
  INVX1_RVT U10 ( .A(n35), .Y(n79) );
  NAND2X0_RVT U11 ( .A1(n19), .A2(n20), .Y(n37) );
  NAND3X0_RVT U12 ( .A1(n80), .A2(rst), .A3(gb), .Y(n19) );
  NAND3X0_RVT U13 ( .A1(n21), .A2(we), .A3(n22), .Y(n20) );
  XNOR2X1_RVT U14 ( .A1(N9), .A2(n24), .Y(n21) );
  AO22X1_RVT U15 ( .A1(din[0]), .A2(n77), .A3(\mem[3][0] ), .A4(n25), .Y(n38)
         );
  AO22X1_RVT U16 ( .A1(din[1]), .A2(n77), .A3(\mem[3][1] ), .A4(n25), .Y(n39)
         );
  AO22X1_RVT U17 ( .A1(din[2]), .A2(n77), .A3(\mem[3][2] ), .A4(n25), .Y(n40)
         );
  AO22X1_RVT U18 ( .A1(din[3]), .A2(n77), .A3(\mem[3][3] ), .A4(n25), .Y(n41)
         );
  AO22X1_RVT U19 ( .A1(din[4]), .A2(n77), .A3(\mem[3][4] ), .A4(n25), .Y(n42)
         );
  AO22X1_RVT U20 ( .A1(din[5]), .A2(n77), .A3(\mem[3][5] ), .A4(n25), .Y(n43)
         );
  AO22X1_RVT U21 ( .A1(din[6]), .A2(n77), .A3(\mem[3][6] ), .A4(n25), .Y(n44)
         );
  AO22X1_RVT U22 ( .A1(din[7]), .A2(n77), .A3(\mem[3][7] ), .A4(n25), .Y(n45)
         );
  NAND3X0_RVT U23 ( .A1(wp[0]), .A2(wp[1]), .A3(we), .Y(n25) );
  AO22X1_RVT U24 ( .A1(n75), .A2(din[0]), .A3(\mem[2][0] ), .A4(n26), .Y(n46)
         );
  AO22X1_RVT U25 ( .A1(n75), .A2(din[1]), .A3(\mem[2][1] ), .A4(n26), .Y(n47)
         );
  AO22X1_RVT U26 ( .A1(n75), .A2(din[2]), .A3(\mem[2][2] ), .A4(n26), .Y(n48)
         );
  AO22X1_RVT U27 ( .A1(n75), .A2(din[3]), .A3(\mem[2][3] ), .A4(n26), .Y(n49)
         );
  AO22X1_RVT U28 ( .A1(n75), .A2(din[4]), .A3(\mem[2][4] ), .A4(n26), .Y(n50)
         );
  AO22X1_RVT U29 ( .A1(n75), .A2(din[5]), .A3(\mem[2][5] ), .A4(n26), .Y(n51)
         );
  AO22X1_RVT U30 ( .A1(n75), .A2(din[6]), .A3(\mem[2][6] ), .A4(n26), .Y(n52)
         );
  AO22X1_RVT U31 ( .A1(n75), .A2(din[7]), .A3(\mem[2][7] ), .A4(n26), .Y(n53)
         );
  NAND2X0_RVT U32 ( .A1(n27), .A2(wp[1]), .Y(n26) );
  AO22X1_RVT U33 ( .A1(n74), .A2(din[0]), .A3(\mem[0][0] ), .A4(n29), .Y(n62)
         );
  AO22X1_RVT U34 ( .A1(n74), .A2(din[1]), .A3(\mem[0][1] ), .A4(n29), .Y(n63)
         );
  AO22X1_RVT U35 ( .A1(n74), .A2(din[2]), .A3(\mem[0][2] ), .A4(n29), .Y(n64)
         );
  AO22X1_RVT U36 ( .A1(n74), .A2(din[3]), .A3(\mem[0][3] ), .A4(n29), .Y(n65)
         );
  AO22X1_RVT U37 ( .A1(n74), .A2(din[4]), .A3(\mem[0][4] ), .A4(n29), .Y(n66)
         );
  AO22X1_RVT U38 ( .A1(n74), .A2(din[5]), .A3(\mem[0][5] ), .A4(n29), .Y(n67)
         );
  AO22X1_RVT U39 ( .A1(n74), .A2(din[6]), .A3(\mem[0][6] ), .A4(n29), .Y(n68)
         );
  AO22X1_RVT U40 ( .A1(n74), .A2(din[7]), .A3(\mem[0][7] ), .A4(n29), .Y(n69)
         );
  AND2X1_RVT U41 ( .A1(we), .A2(n12), .Y(n27) );
  NAND2X0_RVT U42 ( .A1(n27), .A2(n10), .Y(n29) );
  AO22X1_RVT U43 ( .A1(n76), .A2(din[0]), .A3(\mem[1][0] ), .A4(n28), .Y(n54)
         );
  AO22X1_RVT U44 ( .A1(n76), .A2(din[1]), .A3(\mem[1][1] ), .A4(n28), .Y(n55)
         );
  AO22X1_RVT U45 ( .A1(n76), .A2(din[2]), .A3(\mem[1][2] ), .A4(n28), .Y(n56)
         );
  AO22X1_RVT U46 ( .A1(n76), .A2(din[3]), .A3(\mem[1][3] ), .A4(n28), .Y(n57)
         );
  AO22X1_RVT U47 ( .A1(n76), .A2(din[4]), .A3(\mem[1][4] ), .A4(n28), .Y(n58)
         );
  AO22X1_RVT U48 ( .A1(n76), .A2(din[5]), .A3(\mem[1][5] ), .A4(n28), .Y(n59)
         );
  AO22X1_RVT U49 ( .A1(n76), .A2(din[6]), .A3(\mem[1][6] ), .A4(n28), .Y(n60)
         );
  AO22X1_RVT U50 ( .A1(n76), .A2(din[7]), .A3(\mem[1][7] ), .A4(n28), .Y(n61)
         );
  NAND3X0_RVT U51 ( .A1(wp[0]), .A2(n10), .A3(we), .Y(n28) );
  OR2X1_RVT U52 ( .A1(clr), .A2(re), .Y(n32) );
  AO22X1_RVT U53 ( .A1(n80), .A2(N8), .A3(n33), .A4(n32), .Y(n71) );
  AND2X1_RVT U54 ( .A1(n78), .A2(n14), .Y(n33) );
  AO22X1_RVT U55 ( .A1(n80), .A2(N9), .A3(n30), .A4(n78), .Y(n70) );
  OAI22X1_RVT U56 ( .A1(N8), .A2(n13), .A3(n14), .A4(n31), .Y(n30) );
  NAND2X0_RVT U57 ( .A1(n32), .A2(n13), .Y(n31) );
  AND3X1_RVT U58 ( .A1(n36), .A2(n15), .A3(n18), .Y(empty) );
  XNOR2X1_RVT U59 ( .A1(N9), .A2(wp[1]), .Y(n36) );
  XNOR2X1_RVT U60 ( .A1(N8), .A2(n12), .Y(n23) );
  AND3X1_RVT U61 ( .A1(n36), .A2(gb), .A3(n18), .Y(full) );
  XNOR2X1_RVT U62 ( .A1(n12), .A2(wp[1]), .Y(n24) );
  AO22X1_RVT U63 ( .A1(n79), .A2(wp[1]), .A3(n34), .A4(n24), .Y(n72) );
  AND2X1_RVT U64 ( .A1(n35), .A2(n78), .Y(n34) );
  AO22X1_RVT U65 ( .A1(n79), .A2(wp[0]), .A3(n27), .A4(n78), .Y(n73) );
  OR2X1_RVT U66 ( .A1(we), .A2(clr), .Y(n35) );
  INVX1_RVT U67 ( .A(clr), .Y(n78) );
  AND2X1_RVT U68 ( .A1(n14), .A2(n13), .Y(n17) );
  AND2X1_RVT U69 ( .A1(N8), .A2(n13), .Y(n16) );
  AND2X1_RVT U70 ( .A1(N9), .A2(N8), .Y(n9) );
  AND2X1_RVT U71 ( .A1(N9), .A2(n14), .Y(n8) );
  AO22X1_RVT U72 ( .A1(\mem[3][0] ), .A2(n9), .A3(\mem[2][0] ), .A4(n8), .Y(n1) );
  AO221X1_RVT U73 ( .A1(\mem[0][0] ), .A2(n17), .A3(\mem[1][0] ), .A4(n16), 
        .A5(n1), .Y(dout[0]) );
  AO22X1_RVT U74 ( .A1(\mem[3][1] ), .A2(n9), .A3(\mem[2][1] ), .A4(n8), .Y(n2) );
  AO221X1_RVT U75 ( .A1(\mem[0][1] ), .A2(n17), .A3(\mem[1][1] ), .A4(n16), 
        .A5(n2), .Y(dout[1]) );
  AO22X1_RVT U76 ( .A1(\mem[3][2] ), .A2(n9), .A3(\mem[2][2] ), .A4(n8), .Y(n3) );
  AO221X1_RVT U77 ( .A1(\mem[0][2] ), .A2(n17), .A3(\mem[1][2] ), .A4(n16), 
        .A5(n3), .Y(dout[2]) );
  AO22X1_RVT U78 ( .A1(\mem[3][3] ), .A2(n9), .A3(\mem[2][3] ), .A4(n8), .Y(n4) );
  AO221X1_RVT U79 ( .A1(\mem[0][3] ), .A2(n17), .A3(\mem[1][3] ), .A4(n16), 
        .A5(n4), .Y(dout[3]) );
  AO22X1_RVT U80 ( .A1(\mem[3][4] ), .A2(n9), .A3(\mem[2][4] ), .A4(n8), .Y(n5) );
  AO221X1_RVT U81 ( .A1(\mem[0][4] ), .A2(n17), .A3(\mem[1][4] ), .A4(n16), 
        .A5(n5), .Y(dout[4]) );
  AO22X1_RVT U82 ( .A1(\mem[3][5] ), .A2(n9), .A3(\mem[2][5] ), .A4(n8), .Y(n6) );
  AO221X1_RVT U83 ( .A1(\mem[0][5] ), .A2(n17), .A3(\mem[1][5] ), .A4(n16), 
        .A5(n6), .Y(dout[5]) );
  AO22X1_RVT U84 ( .A1(\mem[3][6] ), .A2(n9), .A3(\mem[2][6] ), .A4(n8), .Y(n7) );
  AO221X1_RVT U85 ( .A1(\mem[0][6] ), .A2(n17), .A3(\mem[1][6] ), .A4(n16), 
        .A5(n7), .Y(dout[6]) );
  AO22X1_RVT U86 ( .A1(\mem[3][7] ), .A2(n9), .A3(\mem[2][7] ), .A4(n8), .Y(
        n11) );
  AO221X1_RVT U87 ( .A1(\mem[0][7] ), .A2(n17), .A3(\mem[1][7] ), .A4(n16), 
        .A5(n11), .Y(dout[7]) );
endmodule


module sasc_fifo4_0 ( clk, rst, clr, din, we, dout, re, full, empty );
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, clr, we, re;
  output full, empty;
  wire   N8, N9, \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] ,
         \mem[3][2] , \mem[3][1] , \mem[3][0] , gb, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n11, n13, n14, n16, n17, n18, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138;
  wire   [1:0] wp;

  DFFX1_RVT \mem_reg[0][7]  ( .D(n85), .CLK(clk), .Q(\mem[0][7] ) );
  DFFX1_RVT \mem_reg[0][6]  ( .D(n86), .CLK(clk), .Q(\mem[0][6] ) );
  DFFX1_RVT \mem_reg[0][5]  ( .D(n87), .CLK(clk), .Q(\mem[0][5] ) );
  DFFX1_RVT \mem_reg[0][4]  ( .D(n88), .CLK(clk), .Q(\mem[0][4] ) );
  DFFX1_RVT \mem_reg[0][3]  ( .D(n89), .CLK(clk), .Q(\mem[0][3] ) );
  DFFX1_RVT \mem_reg[0][2]  ( .D(n90), .CLK(clk), .Q(\mem[0][2] ) );
  DFFX1_RVT \mem_reg[0][1]  ( .D(n91), .CLK(clk), .Q(\mem[0][1] ) );
  DFFX1_RVT \mem_reg[0][0]  ( .D(n92), .CLK(clk), .Q(\mem[0][0] ) );
  DFFX1_RVT \mem_reg[2][7]  ( .D(n101), .CLK(clk), .Q(\mem[2][7] ) );
  DFFX1_RVT \mem_reg[2][6]  ( .D(n102), .CLK(clk), .Q(\mem[2][6] ) );
  DFFX1_RVT \mem_reg[2][5]  ( .D(n103), .CLK(clk), .Q(\mem[2][5] ) );
  DFFX1_RVT \mem_reg[2][4]  ( .D(n104), .CLK(clk), .Q(\mem[2][4] ) );
  DFFX1_RVT \mem_reg[2][3]  ( .D(n105), .CLK(clk), .Q(\mem[2][3] ) );
  DFFX1_RVT \mem_reg[2][2]  ( .D(n106), .CLK(clk), .Q(\mem[2][2] ) );
  DFFX1_RVT \mem_reg[2][1]  ( .D(n107), .CLK(clk), .Q(\mem[2][1] ) );
  DFFX1_RVT \mem_reg[2][0]  ( .D(n108), .CLK(clk), .Q(\mem[2][0] ) );
  DFFX1_RVT \mem_reg[1][7]  ( .D(n93), .CLK(clk), .Q(\mem[1][7] ) );
  DFFX1_RVT \mem_reg[1][6]  ( .D(n94), .CLK(clk), .Q(\mem[1][6] ) );
  DFFX1_RVT \mem_reg[1][5]  ( .D(n95), .CLK(clk), .Q(\mem[1][5] ) );
  DFFX1_RVT \mem_reg[1][4]  ( .D(n96), .CLK(clk), .Q(\mem[1][4] ) );
  DFFX1_RVT \mem_reg[1][3]  ( .D(n97), .CLK(clk), .Q(\mem[1][3] ) );
  DFFX1_RVT \mem_reg[1][2]  ( .D(n98), .CLK(clk), .Q(\mem[1][2] ) );
  DFFX1_RVT \mem_reg[1][1]  ( .D(n99), .CLK(clk), .Q(\mem[1][1] ) );
  DFFX1_RVT \mem_reg[1][0]  ( .D(n100), .CLK(clk), .Q(\mem[1][0] ) );
  DFFX1_RVT \mem_reg[3][7]  ( .D(n109), .CLK(clk), .Q(\mem[3][7] ) );
  DFFX1_RVT \mem_reg[3][6]  ( .D(n110), .CLK(clk), .Q(\mem[3][6] ) );
  DFFX1_RVT \mem_reg[3][5]  ( .D(n111), .CLK(clk), .Q(\mem[3][5] ) );
  DFFX1_RVT \mem_reg[3][4]  ( .D(n112), .CLK(clk), .Q(\mem[3][4] ) );
  DFFX1_RVT \mem_reg[3][3]  ( .D(n113), .CLK(clk), .Q(\mem[3][3] ) );
  DFFX1_RVT \mem_reg[3][2]  ( .D(n114), .CLK(clk), .Q(\mem[3][2] ) );
  DFFX1_RVT \mem_reg[3][1]  ( .D(n115), .CLK(clk), .Q(\mem[3][1] ) );
  DFFX1_RVT \mem_reg[3][0]  ( .D(n116), .CLK(clk), .Q(\mem[3][0] ) );
  DFFX1_RVT gb_reg ( .D(n117), .CLK(clk), .Q(gb), .QN(n136) );
  DFFARX1_RVT \rp_reg[0]  ( .D(n83), .CLK(clk), .RSTB(rst), .Q(N8), .QN(n17)
         );
  DFFARX1_RVT \rp_reg[1]  ( .D(n84), .CLK(clk), .RSTB(rst), .Q(N9), .QN(n16)
         );
  DFFARX1_RVT \wp_reg[1]  ( .D(n82), .CLK(clk), .RSTB(rst), .Q(wp[1]), .QN(
        n138) );
  DFFARX1_RVT \wp_reg[0]  ( .D(n81), .CLK(clk), .RSTB(rst), .Q(wp[0]), .QN(
        n137) );
  INVX1_RVT U3 ( .A(n129), .Y(n77) );
  INVX1_RVT U4 ( .A(n126), .Y(n76) );
  INVX1_RVT U5 ( .A(n125), .Y(n74) );
  INVX1_RVT U6 ( .A(n128), .Y(n75) );
  INVX1_RVT U7 ( .A(n131), .Y(n78) );
  INVX1_RVT U8 ( .A(n119), .Y(n18) );
  INVX1_RVT U9 ( .A(n122), .Y(n80) );
  AO22X1_RVT U10 ( .A1(din[0]), .A2(n77), .A3(\mem[3][0] ), .A4(n129), .Y(n116) );
  AO22X1_RVT U11 ( .A1(din[1]), .A2(n77), .A3(\mem[3][1] ), .A4(n129), .Y(n115) );
  AO22X1_RVT U12 ( .A1(din[2]), .A2(n77), .A3(\mem[3][2] ), .A4(n129), .Y(n114) );
  AO22X1_RVT U13 ( .A1(din[3]), .A2(n77), .A3(\mem[3][3] ), .A4(n129), .Y(n113) );
  AO22X1_RVT U14 ( .A1(din[4]), .A2(n77), .A3(\mem[3][4] ), .A4(n129), .Y(n112) );
  AO22X1_RVT U15 ( .A1(din[5]), .A2(n77), .A3(\mem[3][5] ), .A4(n129), .Y(n111) );
  AO22X1_RVT U16 ( .A1(din[6]), .A2(n77), .A3(\mem[3][6] ), .A4(n129), .Y(n110) );
  AO22X1_RVT U17 ( .A1(din[7]), .A2(n77), .A3(\mem[3][7] ), .A4(n129), .Y(n109) );
  AND3X1_RVT U18 ( .A1(n118), .A2(gb), .A3(n78), .Y(full) );
  NAND3X0_RVT U19 ( .A1(wp[0]), .A2(wp[1]), .A3(we), .Y(n129) );
  XNOR2X1_RVT U20 ( .A1(N9), .A2(wp[1]), .Y(n118) );
  AO22X1_RVT U21 ( .A1(n76), .A2(din[0]), .A3(\mem[1][0] ), .A4(n126), .Y(n100) );
  AO22X1_RVT U22 ( .A1(n76), .A2(din[1]), .A3(\mem[1][1] ), .A4(n126), .Y(n99)
         );
  AO22X1_RVT U23 ( .A1(n76), .A2(din[2]), .A3(\mem[1][2] ), .A4(n126), .Y(n98)
         );
  AO22X1_RVT U24 ( .A1(n76), .A2(din[3]), .A3(\mem[1][3] ), .A4(n126), .Y(n97)
         );
  AO22X1_RVT U25 ( .A1(n76), .A2(din[4]), .A3(\mem[1][4] ), .A4(n126), .Y(n96)
         );
  AO22X1_RVT U26 ( .A1(n76), .A2(din[5]), .A3(\mem[1][5] ), .A4(n126), .Y(n95)
         );
  AO22X1_RVT U27 ( .A1(n76), .A2(din[6]), .A3(\mem[1][6] ), .A4(n126), .Y(n94)
         );
  AO22X1_RVT U28 ( .A1(n76), .A2(din[7]), .A3(\mem[1][7] ), .A4(n126), .Y(n93)
         );
  NAND3X0_RVT U29 ( .A1(wp[0]), .A2(n138), .A3(we), .Y(n126) );
  AO22X1_RVT U30 ( .A1(n75), .A2(din[0]), .A3(\mem[2][0] ), .A4(n128), .Y(n108) );
  AO22X1_RVT U31 ( .A1(n75), .A2(din[1]), .A3(\mem[2][1] ), .A4(n128), .Y(n107) );
  AO22X1_RVT U32 ( .A1(n75), .A2(din[2]), .A3(\mem[2][2] ), .A4(n128), .Y(n106) );
  AO22X1_RVT U33 ( .A1(n75), .A2(din[3]), .A3(\mem[2][3] ), .A4(n128), .Y(n105) );
  AO22X1_RVT U34 ( .A1(n75), .A2(din[4]), .A3(\mem[2][4] ), .A4(n128), .Y(n104) );
  AO22X1_RVT U35 ( .A1(n75), .A2(din[5]), .A3(\mem[2][5] ), .A4(n128), .Y(n103) );
  AO22X1_RVT U36 ( .A1(n75), .A2(din[6]), .A3(\mem[2][6] ), .A4(n128), .Y(n102) );
  AO22X1_RVT U37 ( .A1(n75), .A2(din[7]), .A3(\mem[2][7] ), .A4(n128), .Y(n101) );
  AO22X1_RVT U38 ( .A1(n74), .A2(din[0]), .A3(\mem[0][0] ), .A4(n125), .Y(n92)
         );
  AO22X1_RVT U39 ( .A1(n74), .A2(din[1]), .A3(\mem[0][1] ), .A4(n125), .Y(n91)
         );
  AO22X1_RVT U40 ( .A1(n74), .A2(din[2]), .A3(\mem[0][2] ), .A4(n125), .Y(n90)
         );
  AO22X1_RVT U41 ( .A1(n74), .A2(din[3]), .A3(\mem[0][3] ), .A4(n125), .Y(n89)
         );
  AO22X1_RVT U42 ( .A1(n74), .A2(din[4]), .A3(\mem[0][4] ), .A4(n125), .Y(n88)
         );
  AO22X1_RVT U43 ( .A1(n74), .A2(din[5]), .A3(\mem[0][5] ), .A4(n125), .Y(n87)
         );
  AO22X1_RVT U44 ( .A1(n74), .A2(din[6]), .A3(\mem[0][6] ), .A4(n125), .Y(n86)
         );
  AO22X1_RVT U45 ( .A1(n74), .A2(din[7]), .A3(\mem[0][7] ), .A4(n125), .Y(n85)
         );
  AND2X1_RVT U46 ( .A1(we), .A2(n137), .Y(n127) );
  NAND2X0_RVT U47 ( .A1(n127), .A2(wp[1]), .Y(n128) );
  NAND2X0_RVT U48 ( .A1(n127), .A2(n138), .Y(n125) );
  XNOR2X1_RVT U49 ( .A1(N8), .A2(n137), .Y(n131) );
  AND3X1_RVT U50 ( .A1(rst), .A2(n79), .A3(n131), .Y(n132) );
  NAND2X0_RVT U51 ( .A1(n135), .A2(n134), .Y(n117) );
  NAND3X0_RVT U52 ( .A1(n80), .A2(rst), .A3(gb), .Y(n135) );
  NAND3X0_RVT U53 ( .A1(n133), .A2(we), .A3(n132), .Y(n134) );
  XNOR2X1_RVT U54 ( .A1(N9), .A2(n130), .Y(n133) );
  AO22X1_RVT U55 ( .A1(n18), .A2(wp[0]), .A3(n127), .A4(n79), .Y(n81) );
  AO22X1_RVT U56 ( .A1(n18), .A2(wp[1]), .A3(n120), .A4(n130), .Y(n82) );
  AND2X1_RVT U57 ( .A1(n119), .A2(n79), .Y(n120) );
  OR2X1_RVT U58 ( .A1(we), .A2(clr), .Y(n119) );
  AND3X1_RVT U59 ( .A1(n118), .A2(n136), .A3(n78), .Y(empty) );
  AO22X1_RVT U60 ( .A1(n80), .A2(N9), .A3(n124), .A4(n79), .Y(n84) );
  OAI22X1_RVT U61 ( .A1(N8), .A2(n16), .A3(n17), .A4(n123), .Y(n124) );
  NAND2X0_RVT U62 ( .A1(n122), .A2(n16), .Y(n123) );
  XNOR2X1_RVT U63 ( .A1(n137), .A2(wp[1]), .Y(n130) );
  AO22X1_RVT U64 ( .A1(n80), .A2(N8), .A3(n121), .A4(n122), .Y(n83) );
  AND2X1_RVT U65 ( .A1(n79), .A2(n17), .Y(n121) );
  OR2X1_RVT U66 ( .A1(clr), .A2(re), .Y(n122) );
  INVX1_RVT U67 ( .A(clr), .Y(n79) );
  AND2X1_RVT U68 ( .A1(n17), .A2(n16), .Y(n14) );
  AND2X1_RVT U69 ( .A1(N8), .A2(n16), .Y(n13) );
  AND2X1_RVT U70 ( .A1(N9), .A2(N8), .Y(n9) );
  AND2X1_RVT U71 ( .A1(N9), .A2(n17), .Y(n8) );
  AO22X1_RVT U72 ( .A1(\mem[3][0] ), .A2(n9), .A3(\mem[2][0] ), .A4(n8), .Y(n1) );
  AO221X1_RVT U73 ( .A1(\mem[0][0] ), .A2(n14), .A3(\mem[1][0] ), .A4(n13), 
        .A5(n1), .Y(dout[0]) );
  AO22X1_RVT U74 ( .A1(\mem[3][1] ), .A2(n9), .A3(\mem[2][1] ), .A4(n8), .Y(n2) );
  AO221X1_RVT U75 ( .A1(\mem[0][1] ), .A2(n14), .A3(\mem[1][1] ), .A4(n13), 
        .A5(n2), .Y(dout[1]) );
  AO22X1_RVT U76 ( .A1(\mem[3][2] ), .A2(n9), .A3(\mem[2][2] ), .A4(n8), .Y(n3) );
  AO221X1_RVT U77 ( .A1(\mem[0][2] ), .A2(n14), .A3(\mem[1][2] ), .A4(n13), 
        .A5(n3), .Y(dout[2]) );
  AO22X1_RVT U78 ( .A1(\mem[3][3] ), .A2(n9), .A3(\mem[2][3] ), .A4(n8), .Y(n4) );
  AO221X1_RVT U79 ( .A1(\mem[0][3] ), .A2(n14), .A3(\mem[1][3] ), .A4(n13), 
        .A5(n4), .Y(dout[3]) );
  AO22X1_RVT U80 ( .A1(\mem[3][4] ), .A2(n9), .A3(\mem[2][4] ), .A4(n8), .Y(n5) );
  AO221X1_RVT U81 ( .A1(\mem[0][4] ), .A2(n14), .A3(\mem[1][4] ), .A4(n13), 
        .A5(n5), .Y(dout[4]) );
  AO22X1_RVT U82 ( .A1(\mem[3][5] ), .A2(n9), .A3(\mem[2][5] ), .A4(n8), .Y(n6) );
  AO221X1_RVT U83 ( .A1(\mem[0][5] ), .A2(n14), .A3(\mem[1][5] ), .A4(n13), 
        .A5(n6), .Y(dout[5]) );
  AO22X1_RVT U84 ( .A1(\mem[3][6] ), .A2(n9), .A3(\mem[2][6] ), .A4(n8), .Y(n7) );
  AO221X1_RVT U85 ( .A1(\mem[0][6] ), .A2(n14), .A3(\mem[1][6] ), .A4(n13), 
        .A5(n7), .Y(dout[6]) );
  AO22X1_RVT U86 ( .A1(\mem[3][7] ), .A2(n9), .A3(\mem[2][7] ), .A4(n8), .Y(
        n11) );
  AO221X1_RVT U87 ( .A1(\mem[0][7] ), .A2(n14), .A3(\mem[1][7] ), .A4(n13), 
        .A5(n11), .Y(dout[7]) );
endmodule


module sasc_top ( clk, rst, rxd_i, txd_o, cts_i, rts_o, sio_ce, sio_ce_x4, 
        din_i, dout_o, re_i, we_i, full_o, empty_o );
  input [7:0] din_i;
  output [7:0] dout_o;
  input clk, rst, rxd_i, cts_i, sio_ce, sio_ce_x4, re_i, we_i;
  output txd_o, rts_o, full_o, empty_o;
  wire   txf_empty, rx_we, rxf_full, txf_empty_r, shift_en, N19, load,
         shift_en_r, rxd_s, rx_go, rx_valid, rx_valid_r, rx_sio_ce_r1, N118,
         N123, N128, n1, n2, n6, n7, n10, n11, n12, n13, n14, n15, n18, n28,
         n32, n34, n39, n40, n41, n43, n44, n46, n48, n49, n50, n51, n53, n54,
         n55, n56, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136;
  wire   [7:0] txd_p;
  wire   [9:2] rxr;
  wire   [3:0] tx_bit_cnt;
  wire   [3:0] rx_bit_cnt;

  sasc_fifo4_1 tx_fifo ( .clk(clk), .rst(n124), .clr(1'b0), .din(din_i), .we(
        we_i), .dout(txd_p), .re(n130), .full(full_o), .empty(txf_empty) );
  sasc_fifo4_0 rx_fifo ( .clk(clk), .rst(rst), .clr(1'b0), .din(rxr), .we(
        rx_we), .dout(dout_o), .re(re_i), .full(rxf_full), .empty(empty_o) );
  DFFX1_RVT \tx_bit_cnt_reg[1]  ( .D(n94), .CLK(clk), .Q(tx_bit_cnt[1]), .QN(
        n133) );
  DFFX1_RVT \tx_bit_cnt_reg[0]  ( .D(n95), .CLK(clk), .Q(tx_bit_cnt[0]), .QN(
        n132) );
  DFFX1_RVT \tx_bit_cnt_reg[3]  ( .D(n92), .CLK(clk), .Q(tx_bit_cnt[3]), .QN(
        n117) );
  DFFX1_RVT txd_o_reg ( .D(n90), .CLK(clk), .Q(txd_o) );
  DFFX1_RVT \rx_bit_cnt_reg[3]  ( .D(n85), .CLK(clk), .Q(rx_bit_cnt[3]), .QN(
        n116) );
  DFFX1_RVT txf_empty_r_reg ( .D(n105), .CLK(clk), .Q(txf_empty_r) );
  DFFX1_RVT \rx_bit_cnt_reg[1]  ( .D(n88), .CLK(clk), .Q(rx_bit_cnt[1]), .QN(
        n108) );
  DFFX1_RVT rx_sio_ce_r2_reg ( .D(rx_sio_ce_r1), .CLK(clk), .QN(n84) );
  DFFX1_RVT rx_sio_ce_r1_reg ( .D(n83), .CLK(clk), .Q(rx_sio_ce_r1) );
  DFFX1_RVT \hold_reg_reg[0]  ( .D(n104), .CLK(clk), .Q(n123), .QN(n80) );
  DFFX1_RVT shift_en_r_reg ( .D(n91), .CLK(clk), .Q(shift_en_r) );
  DFFX1_RVT \hold_reg_reg[1]  ( .D(n103), .CLK(clk), .Q(n112) );
  DFFX1_RVT \hold_reg_reg[7]  ( .D(n97), .CLK(clk), .Q(n111) );
  DFFX1_RVT \hold_reg_reg[6]  ( .D(n98), .CLK(clk), .Q(n121) );
  DFFX1_RVT \hold_reg_reg[5]  ( .D(n99), .CLK(clk), .Q(n110) );
  DFFX1_RVT \hold_reg_reg[4]  ( .D(n100), .CLK(clk), .Q(n120) );
  DFFX1_RVT \hold_reg_reg[3]  ( .D(n101), .CLK(clk), .Q(n109) );
  DFFX1_RVT \hold_reg_reg[2]  ( .D(n102), .CLK(clk), .Q(n119) );
  DFFX1_RVT \hold_reg_reg[8]  ( .D(n96), .CLK(clk), .Q(n122) );
  DFFX1_RVT change_reg ( .D(n89), .CLK(clk), .Q(n118), .QN(n82) );
  DFFX1_RVT \tx_bit_cnt_reg[2]  ( .D(n93), .CLK(clk), .Q(tx_bit_cnt[2]), .QN(
        n115) );
  DFFX1_RVT \rxr_reg[2]  ( .D(n69), .CLK(clk), .Q(rxr[2]) );
  DFFX1_RVT \rx_bit_cnt_reg[2]  ( .D(n86), .CLK(clk), .Q(rx_bit_cnt[2]), .QN(
        n114) );
  DFFX1_RVT \rxr_reg[9]  ( .D(n76), .CLK(clk), .Q(rxr[9]) );
  DFFX1_RVT \rxr_reg[8]  ( .D(n75), .CLK(clk), .Q(rxr[8]) );
  DFFX1_RVT \rxr_reg[7]  ( .D(n74), .CLK(clk), .Q(rxr[7]) );
  DFFX1_RVT \rxr_reg[6]  ( .D(n73), .CLK(clk), .Q(rxr[6]) );
  DFFX1_RVT \rxr_reg[5]  ( .D(n72), .CLK(clk), .Q(rxr[5]) );
  DFFX1_RVT \rxr_reg[4]  ( .D(n71), .CLK(clk), .Q(rxr[4]) );
  DFFX1_RVT \rxr_reg[3]  ( .D(n70), .CLK(clk), .Q(rxr[3]) );
  DFFASX1_RVT \dpll_state_reg[0]  ( .D(n78), .CLK(clk), .SETB(n124), .Q(n134), 
        .QN(n68) );
  DFFX1_RVT rxd_r_reg ( .D(rxd_s), .CLK(clk), .QN(n113) );
  DFFX1_RVT \rx_bit_cnt_reg[0]  ( .D(n87), .CLK(clk), .Q(rx_bit_cnt[0]), .QN(
        n107) );
  DFFX1_RVT rxd_s_reg ( .D(rxd_i), .CLK(clk), .Q(rxd_s) );
  DFFX1_RVT shift_en_reg ( .D(N123), .CLK(clk), .Q(shift_en) );
  DFFX1_RVT load_reg ( .D(N19), .CLK(clk), .Q(load) );
  DFFX1_RVT rx_valid_reg ( .D(n106), .CLK(clk), .Q(rx_valid), .QN(n81) );
  DFFX1_RVT rx_valid_r_reg ( .D(rx_valid), .CLK(clk), .Q(rx_valid_r) );
  DFFX1_RVT rx_sio_ce_reg ( .D(N118), .CLK(clk), .Q(n66) );
  DFFX1_RVT rx_go_reg ( .D(N128), .CLK(clk), .Q(rx_go) );
  DFFX1_RVT rts_o_reg ( .D(rxf_full), .CLK(clk), .Q(rts_o) );
  DFFARX1_RVT \dpll_state_reg[1]  ( .D(n77), .CLK(clk), .RSTB(rst), .Q(n135), 
        .QN(n67) );
  INVX1_RVT U98 ( .A(n32), .Y(n136) );
  AO21X1_RVT U99 ( .A1(n125), .A2(n108), .A3(n46), .Y(n43) );
  AO21X1_RVT U100 ( .A1(n125), .A2(n107), .A3(n48), .Y(n46) );
  INVX1_RVT U101 ( .A(n14), .Y(n130) );
  INVX1_RVT U102 ( .A(n28), .Y(n129) );
  AND2X1_RVT U103 ( .A1(n14), .A2(n28), .Y(n18) );
  OR2X1_RVT U104 ( .A1(n126), .A2(n28), .Y(n12) );
  AND2X1_RVT U105 ( .A1(n124), .A2(n56), .Y(n91) );
  AO22X1_RVT U106 ( .A1(shift_en_r), .A2(n128), .A3(shift_en), .A4(sio_ce), 
        .Y(n56) );
  OA21X1_RVT U107 ( .A1(n53), .A2(n54), .A3(n124), .Y(n89) );
  AND2X1_RVT U108 ( .A1(n118), .A2(n131), .Y(n53) );
  XNOR2X1_RVT U109 ( .A1(rxd_s), .A2(n113), .Y(n54) );
  NOR3X0_RVT U110 ( .A1(n81), .A2(rxf_full), .A3(rx_valid_r), .Y(rx_we) );
  AND2X1_RVT U111 ( .A1(n44), .A2(n116), .Y(n40) );
  NAND2X0_RVT U112 ( .A1(rx_go), .A2(n66), .Y(n32) );
  AND3X1_RVT U113 ( .A1(n50), .A2(n51), .A3(rst), .Y(n48) );
  OR3X2_RVT U114 ( .A1(rx_go), .A2(rxd_s), .A3(n113), .Y(n50) );
  AO22X1_RVT U115 ( .A1(rx_bit_cnt[2]), .A2(n43), .A3(n44), .A4(n114), .Y(n86)
         );
  AND3X1_RVT U116 ( .A1(n125), .A2(rx_bit_cnt[0]), .A3(rx_bit_cnt[1]), .Y(n44)
         );
  AND2X1_RVT U117 ( .A1(rx_bit_cnt[0]), .A2(n108), .Y(n49) );
  AO22X1_RVT U118 ( .A1(n125), .A2(n107), .A3(n48), .A4(rx_bit_cnt[0]), .Y(n87) );
  AO22X1_RVT U119 ( .A1(rxr[2]), .A2(n32), .A3(rxr[3]), .A4(n136), .Y(n69) );
  AO22X1_RVT U120 ( .A1(rxr[3]), .A2(n32), .A3(rxr[4]), .A4(n136), .Y(n70) );
  AO22X1_RVT U121 ( .A1(rxr[4]), .A2(n32), .A3(rxr[5]), .A4(n136), .Y(n71) );
  AO22X1_RVT U122 ( .A1(rxr[5]), .A2(n32), .A3(rxr[6]), .A4(n136), .Y(n72) );
  AO22X1_RVT U123 ( .A1(rxr[6]), .A2(n32), .A3(rxr[7]), .A4(n136), .Y(n73) );
  AO22X1_RVT U124 ( .A1(rxr[7]), .A2(n32), .A3(rxr[8]), .A4(n136), .Y(n74) );
  AO22X1_RVT U125 ( .A1(rxr[8]), .A2(n32), .A3(rxr[9]), .A4(n136), .Y(n75) );
  AO22X1_RVT U126 ( .A1(rxr[9]), .A2(n32), .A3(rxd_s), .A4(n136), .Y(n76) );
  NAND2X0_RVT U127 ( .A1(sio_ce), .A2(load), .Y(n14) );
  AO222X1_RVT U128 ( .A1(n129), .A2(n119), .A3(n18), .A4(n112), .A5(txd_p[0]), 
        .A6(n130), .Y(n103) );
  AO222X1_RVT U129 ( .A1(n129), .A2(n109), .A3(n18), .A4(n119), .A5(txd_p[1]), 
        .A6(n130), .Y(n102) );
  AO222X1_RVT U130 ( .A1(n129), .A2(n120), .A3(n18), .A4(n109), .A5(txd_p[2]), 
        .A6(n130), .Y(n101) );
  AO222X1_RVT U131 ( .A1(n129), .A2(n110), .A3(n18), .A4(n120), .A5(txd_p[3]), 
        .A6(n130), .Y(n100) );
  AO222X1_RVT U132 ( .A1(n129), .A2(n121), .A3(n18), .A4(n110), .A5(txd_p[4]), 
        .A6(n130), .Y(n99) );
  AO222X1_RVT U133 ( .A1(n129), .A2(n111), .A3(n18), .A4(n121), .A5(txd_p[5]), 
        .A6(n130), .Y(n98) );
  AO222X1_RVT U134 ( .A1(n129), .A2(n122), .A3(n18), .A4(n111), .A5(txd_p[6]), 
        .A6(n130), .Y(n97) );
  AO22X1_RVT U135 ( .A1(n129), .A2(n112), .A3(n18), .A4(n123), .Y(n104) );
  AO221X1_RVT U136 ( .A1(n18), .A2(n122), .A3(txd_p[7]), .A4(n130), .A5(n129), 
        .Y(n96) );
  OAI21X1_RVT U137 ( .A1(shift_en), .A2(shift_en_r), .A3(n80), .Y(n55) );
  AND2X1_RVT U138 ( .A1(n12), .A2(n14), .Y(n15) );
  INVX1_RVT U139 ( .A(sio_ce), .Y(n128) );
  AND2X1_RVT U140 ( .A1(n67), .A2(n134), .Y(n83) );
  AO221X1_RVT U141 ( .A1(n83), .A2(n118), .A3(n134), .A4(n131), .A5(n39), .Y(
        n78) );
  AND3X1_RVT U142 ( .A1(n68), .A2(n82), .A3(sio_ce_x4), .Y(n39) );
  NAND4X0_RVT U143 ( .A1(rx_bit_cnt[1]), .A2(rx_bit_cnt[3]), .A3(n107), .A4(
        n114), .Y(N128) );
  AO22X1_RVT U144 ( .A1(n83), .A2(sio_ce_x4), .A3(n34), .A4(n135), .Y(n77) );
  AO21X1_RVT U145 ( .A1(n68), .A2(n82), .A3(n131), .Y(n34) );
  AND4X1_RVT U146 ( .A1(rx_bit_cnt[3]), .A2(rx_bit_cnt[0]), .A3(n108), .A4(
        n114), .Y(n106) );
  NAND4X0_RVT U147 ( .A1(tx_bit_cnt[3]), .A2(tx_bit_cnt[0]), .A3(n133), .A4(
        n115), .Y(N123) );
  INVX1_RVT U148 ( .A(sio_ce_x4), .Y(n131) );
  NOR3X0_RVT U149 ( .A1(cts_i), .A2(txf_empty_r), .A3(shift_en), .Y(N19) );
  AND2X1_RVT U150 ( .A1(rx_sio_ce_r1), .A2(n84), .Y(N118) );
  INVX1_RVT U151 ( .A(n126), .Y(n124) );
  INVX1_RVT U152 ( .A(rst), .Y(n126) );
  AO21X1_RVT U153 ( .A1(n125), .A2(n114), .A3(n43), .Y(n41) );
  OAI22X1_RVT U154 ( .A1(n12), .A2(tx_bit_cnt[0]), .A3(n126), .A4(n13), .Y(n10) );
  NAND2X0_RVT U155 ( .A1(n12), .A2(n14), .Y(n13) );
  AO221X1_RVT U156 ( .A1(sio_ce), .A2(n55), .A3(txd_o), .A4(n128), .A5(n126), 
        .Y(n90) );
  AO221X1_RVT U157 ( .A1(n49), .A2(n125), .A3(rx_bit_cnt[1]), .A4(n46), .A5(
        n126), .Y(n88) );
  AO221X1_RVT U158 ( .A1(n40), .A2(rx_bit_cnt[2]), .A3(rx_bit_cnt[3]), .A4(n41), .A5(n126), .Y(n85) );
  AO221X1_RVT U159 ( .A1(txf_empty_r), .A2(n128), .A3(txf_empty), .A4(sio_ce), 
        .A5(n126), .Y(n105) );
  AO22X1_RVT U160 ( .A1(tx_bit_cnt[1]), .A2(n10), .A3(n11), .A4(tx_bit_cnt[0]), 
        .Y(n94) );
  INVX0_RVT U161 ( .A(n12), .Y(n127) );
  AO22X1_RVT U162 ( .A1(n6), .A2(tx_bit_cnt[2]), .A3(n7), .A4(n115), .Y(n93)
         );
  AND2X1_RVT U163 ( .A1(n7), .A2(n117), .Y(n1) );
  AO221X1_RVT U164 ( .A1(n1), .A2(tx_bit_cnt[2]), .A3(n2), .A4(tx_bit_cnt[3]), 
        .A5(n126), .Y(n92) );
  NAND3X0_RVT U165 ( .A1(sio_ce), .A2(n14), .A3(shift_en), .Y(n28) );
  AO221X1_RVT U166 ( .A1(n15), .A2(tx_bit_cnt[0]), .A3(n127), .A4(n132), .A5(
        n126), .Y(n95) );
  AND2X1_RVT U167 ( .A1(n127), .A2(n133), .Y(n11) );
  AO21X1_RVT U168 ( .A1(n127), .A2(n133), .A3(n10), .Y(n6) );
  AO21X1_RVT U169 ( .A1(n127), .A2(n115), .A3(n6), .Y(n2) );
  NOR3X0_RVT U170 ( .A1(n132), .A2(n12), .A3(n133), .Y(n7) );
  INVX0_RVT U171 ( .A(n51), .Y(n125) );
  NAND2X0_RVT U172 ( .A1(n136), .A2(rst), .Y(n51) );
endmodule

