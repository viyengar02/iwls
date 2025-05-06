/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Tue Apr 15 10:30:36 2025
/////////////////////////////////////////////////////////////


module fifo4_dw8_1 ( clk, rst, clr, din, we, dout, re, full, empty );
  input [8:1] din;
  output [8:1] dout;
  input clk, rst, clr, we, re;
  output full, empty;
  wire   N8, N9, \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[1][8] ,
         \mem[1][7] , \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] ,
         \mem[1][2] , \mem[1][1] , \mem[2][8] , \mem[2][7] , \mem[2][6] ,
         \mem[2][5] , \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] ,
         \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] ,
         \mem[3][3] , \mem[3][2] , \mem[3][1] , gb, n10, n12, n13, n14, n15,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n11, n16, n17, n18, n74, n75, n76,
         n77, n78, n79, n80;
  wire   [1:0] wp;

  DFFX1_RVT gb_reg ( .D(n37), .CLK(clk), .Q(gb), .QN(n15) );
  DFFX1_RVT \mem_reg[3][8]  ( .D(n45), .CLK(clk), .Q(\mem[3][8] ) );
  DFFX1_RVT \mem_reg[3][7]  ( .D(n44), .CLK(clk), .Q(\mem[3][7] ) );
  DFFX1_RVT \mem_reg[3][6]  ( .D(n43), .CLK(clk), .Q(\mem[3][6] ) );
  DFFX1_RVT \mem_reg[3][5]  ( .D(n42), .CLK(clk), .Q(\mem[3][5] ) );
  DFFX1_RVT \mem_reg[3][4]  ( .D(n41), .CLK(clk), .Q(\mem[3][4] ) );
  DFFX1_RVT \mem_reg[3][3]  ( .D(n40), .CLK(clk), .Q(\mem[3][3] ) );
  DFFX1_RVT \mem_reg[3][2]  ( .D(n39), .CLK(clk), .Q(\mem[3][2] ) );
  DFFX1_RVT \mem_reg[3][1]  ( .D(n38), .CLK(clk), .Q(\mem[3][1] ) );
  DFFX1_RVT \mem_reg[0][8]  ( .D(n69), .CLK(clk), .Q(\mem[0][8] ) );
  DFFX1_RVT \mem_reg[0][7]  ( .D(n68), .CLK(clk), .Q(\mem[0][7] ) );
  DFFX1_RVT \mem_reg[0][6]  ( .D(n67), .CLK(clk), .Q(\mem[0][6] ) );
  DFFX1_RVT \mem_reg[0][5]  ( .D(n66), .CLK(clk), .Q(\mem[0][5] ) );
  DFFX1_RVT \mem_reg[0][4]  ( .D(n65), .CLK(clk), .Q(\mem[0][4] ) );
  DFFX1_RVT \mem_reg[0][3]  ( .D(n64), .CLK(clk), .Q(\mem[0][3] ) );
  DFFX1_RVT \mem_reg[0][2]  ( .D(n63), .CLK(clk), .Q(\mem[0][2] ) );
  DFFX1_RVT \mem_reg[0][1]  ( .D(n62), .CLK(clk), .Q(\mem[0][1] ) );
  DFFX1_RVT \mem_reg[1][8]  ( .D(n61), .CLK(clk), .Q(\mem[1][8] ) );
  DFFX1_RVT \mem_reg[1][7]  ( .D(n60), .CLK(clk), .Q(\mem[1][7] ) );
  DFFX1_RVT \mem_reg[1][6]  ( .D(n59), .CLK(clk), .Q(\mem[1][6] ) );
  DFFX1_RVT \mem_reg[1][5]  ( .D(n58), .CLK(clk), .Q(\mem[1][5] ) );
  DFFX1_RVT \mem_reg[1][4]  ( .D(n57), .CLK(clk), .Q(\mem[1][4] ) );
  DFFX1_RVT \mem_reg[1][3]  ( .D(n56), .CLK(clk), .Q(\mem[1][3] ) );
  DFFX1_RVT \mem_reg[1][2]  ( .D(n55), .CLK(clk), .Q(\mem[1][2] ) );
  DFFX1_RVT \mem_reg[1][1]  ( .D(n54), .CLK(clk), .Q(\mem[1][1] ) );
  DFFX1_RVT \mem_reg[2][8]  ( .D(n53), .CLK(clk), .Q(\mem[2][8] ) );
  DFFX1_RVT \mem_reg[2][7]  ( .D(n52), .CLK(clk), .Q(\mem[2][7] ) );
  DFFX1_RVT \mem_reg[2][6]  ( .D(n51), .CLK(clk), .Q(\mem[2][6] ) );
  DFFX1_RVT \mem_reg[2][5]  ( .D(n50), .CLK(clk), .Q(\mem[2][5] ) );
  DFFX1_RVT \mem_reg[2][4]  ( .D(n49), .CLK(clk), .Q(\mem[2][4] ) );
  DFFX1_RVT \mem_reg[2][3]  ( .D(n48), .CLK(clk), .Q(\mem[2][3] ) );
  DFFX1_RVT \mem_reg[2][2]  ( .D(n47), .CLK(clk), .Q(\mem[2][2] ) );
  DFFX1_RVT \mem_reg[2][1]  ( .D(n46), .CLK(clk), .Q(\mem[2][1] ) );
  DFFARX1_RVT \rp_reg[0]  ( .D(n71), .CLK(clk), .RSTB(rst), .Q(N8), .QN(n14)
         );
  DFFARX1_RVT \rp_reg[1]  ( .D(n70), .CLK(clk), .RSTB(rst), .Q(N9), .QN(n13)
         );
  DFFARX1_RVT \wp_reg[1]  ( .D(n72), .CLK(clk), .RSTB(rst), .Q(wp[1]), .QN(n10) );
  DFFARX1_RVT \wp_reg[0]  ( .D(n73), .CLK(clk), .RSTB(rst), .Q(wp[0]), .QN(n12) );
  AND3X1_RVT U3 ( .A1(rst), .A2(n79), .A3(n23), .Y(n22) );
  INVX1_RVT U4 ( .A(n25), .Y(n77) );
  INVX1_RVT U5 ( .A(n28), .Y(n76) );
  INVX1_RVT U6 ( .A(n29), .Y(n74) );
  INVX1_RVT U7 ( .A(n26), .Y(n75) );
  INVX1_RVT U8 ( .A(n32), .Y(n78) );
  INVX1_RVT U9 ( .A(n35), .Y(n80) );
  INVX1_RVT U10 ( .A(n23), .Y(n18) );
  NAND2X0_RVT U11 ( .A1(n19), .A2(n20), .Y(n37) );
  NAND3X0_RVT U12 ( .A1(n78), .A2(rst), .A3(gb), .Y(n19) );
  NAND3X0_RVT U13 ( .A1(n21), .A2(we), .A3(n22), .Y(n20) );
  XNOR2X1_RVT U14 ( .A1(N9), .A2(n24), .Y(n21) );
  INVX1_RVT U15 ( .A(clr), .Y(n79) );
  AO22X1_RVT U16 ( .A1(din[1]), .A2(n77), .A3(\mem[3][1] ), .A4(n25), .Y(n38)
         );
  AO22X1_RVT U17 ( .A1(din[2]), .A2(n77), .A3(\mem[3][2] ), .A4(n25), .Y(n39)
         );
  AO22X1_RVT U18 ( .A1(din[3]), .A2(n77), .A3(\mem[3][3] ), .A4(n25), .Y(n40)
         );
  AO22X1_RVT U19 ( .A1(din[4]), .A2(n77), .A3(\mem[3][4] ), .A4(n25), .Y(n41)
         );
  AO22X1_RVT U20 ( .A1(din[5]), .A2(n77), .A3(\mem[3][5] ), .A4(n25), .Y(n42)
         );
  AO22X1_RVT U21 ( .A1(din[6]), .A2(n77), .A3(\mem[3][6] ), .A4(n25), .Y(n43)
         );
  AO22X1_RVT U22 ( .A1(din[7]), .A2(n77), .A3(\mem[3][7] ), .A4(n25), .Y(n44)
         );
  AO22X1_RVT U23 ( .A1(din[8]), .A2(n77), .A3(\mem[3][8] ), .A4(n25), .Y(n45)
         );
  AO22X1_RVT U24 ( .A1(n76), .A2(din[1]), .A3(\mem[1][1] ), .A4(n28), .Y(n54)
         );
  AO22X1_RVT U25 ( .A1(n76), .A2(din[2]), .A3(\mem[1][2] ), .A4(n28), .Y(n55)
         );
  AO22X1_RVT U26 ( .A1(n76), .A2(din[3]), .A3(\mem[1][3] ), .A4(n28), .Y(n56)
         );
  AO22X1_RVT U27 ( .A1(n76), .A2(din[4]), .A3(\mem[1][4] ), .A4(n28), .Y(n57)
         );
  AO22X1_RVT U28 ( .A1(n76), .A2(din[5]), .A3(\mem[1][5] ), .A4(n28), .Y(n58)
         );
  AO22X1_RVT U29 ( .A1(n76), .A2(din[6]), .A3(\mem[1][6] ), .A4(n28), .Y(n59)
         );
  AO22X1_RVT U30 ( .A1(n76), .A2(din[7]), .A3(\mem[1][7] ), .A4(n28), .Y(n60)
         );
  AO22X1_RVT U31 ( .A1(n76), .A2(din[8]), .A3(\mem[1][8] ), .A4(n28), .Y(n61)
         );
  NAND3X0_RVT U32 ( .A1(wp[0]), .A2(wp[1]), .A3(we), .Y(n25) );
  NAND3X0_RVT U33 ( .A1(wp[0]), .A2(n10), .A3(we), .Y(n28) );
  AO22X1_RVT U34 ( .A1(n75), .A2(din[8]), .A3(\mem[2][8] ), .A4(n26), .Y(n53)
         );
  AO22X1_RVT U35 ( .A1(n74), .A2(din[8]), .A3(\mem[0][8] ), .A4(n29), .Y(n69)
         );
  AO22X1_RVT U36 ( .A1(n75), .A2(din[1]), .A3(\mem[2][1] ), .A4(n26), .Y(n46)
         );
  AO22X1_RVT U37 ( .A1(n75), .A2(din[2]), .A3(\mem[2][2] ), .A4(n26), .Y(n47)
         );
  AO22X1_RVT U38 ( .A1(n75), .A2(din[3]), .A3(\mem[2][3] ), .A4(n26), .Y(n48)
         );
  AO22X1_RVT U39 ( .A1(n75), .A2(din[4]), .A3(\mem[2][4] ), .A4(n26), .Y(n49)
         );
  AO22X1_RVT U40 ( .A1(n75), .A2(din[5]), .A3(\mem[2][5] ), .A4(n26), .Y(n50)
         );
  AO22X1_RVT U41 ( .A1(n75), .A2(din[6]), .A3(\mem[2][6] ), .A4(n26), .Y(n51)
         );
  AO22X1_RVT U42 ( .A1(n75), .A2(din[7]), .A3(\mem[2][7] ), .A4(n26), .Y(n52)
         );
  AO22X1_RVT U43 ( .A1(n74), .A2(din[1]), .A3(\mem[0][1] ), .A4(n29), .Y(n62)
         );
  AO22X1_RVT U44 ( .A1(n74), .A2(din[2]), .A3(\mem[0][2] ), .A4(n29), .Y(n63)
         );
  AO22X1_RVT U45 ( .A1(n74), .A2(din[3]), .A3(\mem[0][3] ), .A4(n29), .Y(n64)
         );
  AO22X1_RVT U46 ( .A1(n74), .A2(din[4]), .A3(\mem[0][4] ), .A4(n29), .Y(n65)
         );
  AO22X1_RVT U47 ( .A1(n74), .A2(din[5]), .A3(\mem[0][5] ), .A4(n29), .Y(n66)
         );
  AO22X1_RVT U48 ( .A1(n74), .A2(din[6]), .A3(\mem[0][6] ), .A4(n29), .Y(n67)
         );
  AO22X1_RVT U49 ( .A1(n74), .A2(din[7]), .A3(\mem[0][7] ), .A4(n29), .Y(n68)
         );
  AND2X1_RVT U50 ( .A1(we), .A2(n12), .Y(n27) );
  NAND2X0_RVT U51 ( .A1(n27), .A2(wp[1]), .Y(n26) );
  NAND2X0_RVT U52 ( .A1(n27), .A2(n10), .Y(n29) );
  AO22X1_RVT U53 ( .A1(n80), .A2(wp[1]), .A3(n34), .A4(n24), .Y(n72) );
  AND2X1_RVT U54 ( .A1(n35), .A2(n79), .Y(n34) );
  AO22X1_RVT U55 ( .A1(n78), .A2(N9), .A3(n30), .A4(n79), .Y(n70) );
  OAI22X1_RVT U56 ( .A1(N8), .A2(n13), .A3(n14), .A4(n31), .Y(n30) );
  NAND2X0_RVT U57 ( .A1(n32), .A2(n13), .Y(n31) );
  AO22X1_RVT U58 ( .A1(n80), .A2(wp[0]), .A3(n27), .A4(n79), .Y(n73) );
  AO22X1_RVT U59 ( .A1(n78), .A2(N8), .A3(n33), .A4(n32), .Y(n71) );
  AND2X1_RVT U60 ( .A1(n79), .A2(n14), .Y(n33) );
  OR2X1_RVT U61 ( .A1(clr), .A2(re), .Y(n32) );
  OR2X1_RVT U62 ( .A1(we), .A2(clr), .Y(n35) );
  AND3X1_RVT U63 ( .A1(n36), .A2(gb), .A3(n18), .Y(full) );
  AND3X1_RVT U64 ( .A1(n36), .A2(n15), .A3(n18), .Y(empty) );
  XNOR2X1_RVT U65 ( .A1(N9), .A2(wp[1]), .Y(n36) );
  XNOR2X1_RVT U66 ( .A1(n12), .A2(wp[1]), .Y(n24) );
  XNOR2X1_RVT U67 ( .A1(N8), .A2(n12), .Y(n23) );
  AND2X1_RVT U68 ( .A1(n14), .A2(n13), .Y(n17) );
  AND2X1_RVT U69 ( .A1(N8), .A2(n13), .Y(n16) );
  AND2X1_RVT U70 ( .A1(N9), .A2(N8), .Y(n9) );
  AND2X1_RVT U71 ( .A1(N9), .A2(n14), .Y(n8) );
  AO22X1_RVT U72 ( .A1(\mem[3][1] ), .A2(n9), .A3(\mem[2][1] ), .A4(n8), .Y(n1) );
  AO221X1_RVT U73 ( .A1(\mem[0][1] ), .A2(n17), .A3(\mem[1][1] ), .A4(n16), 
        .A5(n1), .Y(dout[1]) );
  AO22X1_RVT U74 ( .A1(\mem[3][2] ), .A2(n9), .A3(\mem[2][2] ), .A4(n8), .Y(n2) );
  AO221X1_RVT U75 ( .A1(\mem[0][2] ), .A2(n17), .A3(\mem[1][2] ), .A4(n16), 
        .A5(n2), .Y(dout[2]) );
  AO22X1_RVT U76 ( .A1(\mem[3][3] ), .A2(n9), .A3(\mem[2][3] ), .A4(n8), .Y(n3) );
  AO221X1_RVT U77 ( .A1(\mem[0][3] ), .A2(n17), .A3(\mem[1][3] ), .A4(n16), 
        .A5(n3), .Y(dout[3]) );
  AO22X1_RVT U78 ( .A1(\mem[3][4] ), .A2(n9), .A3(\mem[2][4] ), .A4(n8), .Y(n4) );
  AO221X1_RVT U79 ( .A1(\mem[0][4] ), .A2(n17), .A3(\mem[1][4] ), .A4(n16), 
        .A5(n4), .Y(dout[4]) );
  AO22X1_RVT U80 ( .A1(\mem[3][5] ), .A2(n9), .A3(\mem[2][5] ), .A4(n8), .Y(n5) );
  AO221X1_RVT U81 ( .A1(\mem[0][5] ), .A2(n17), .A3(\mem[1][5] ), .A4(n16), 
        .A5(n5), .Y(dout[5]) );
  AO22X1_RVT U82 ( .A1(\mem[3][6] ), .A2(n9), .A3(\mem[2][6] ), .A4(n8), .Y(n6) );
  AO221X1_RVT U83 ( .A1(\mem[0][6] ), .A2(n17), .A3(\mem[1][6] ), .A4(n16), 
        .A5(n6), .Y(dout[6]) );
  AO22X1_RVT U84 ( .A1(\mem[3][7] ), .A2(n9), .A3(\mem[2][7] ), .A4(n8), .Y(n7) );
  AO221X1_RVT U85 ( .A1(\mem[0][7] ), .A2(n17), .A3(\mem[1][7] ), .A4(n16), 
        .A5(n7), .Y(dout[7]) );
  AO22X1_RVT U86 ( .A1(\mem[3][8] ), .A2(n9), .A3(\mem[2][8] ), .A4(n8), .Y(
        n11) );
  AO221X1_RVT U87 ( .A1(\mem[0][8] ), .A2(n17), .A3(\mem[1][8] ), .A4(n16), 
        .A5(n11), .Y(dout[8]) );
endmodule


module fifo4_dw8_0 ( clk, rst, clr, din, we, dout, re, full, empty );
  input [8:1] din;
  output [8:1] dout;
  input clk, rst, clr, we, re;
  output full, empty;
  wire   N8, N9, \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[1][8] ,
         \mem[1][7] , \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] ,
         \mem[1][2] , \mem[1][1] , \mem[2][8] , \mem[2][7] , \mem[2][6] ,
         \mem[2][5] , \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] ,
         \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] ,
         \mem[3][3] , \mem[3][2] , \mem[3][1] , gb, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n11, n13, n14, n16, n17, n18, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138;
  wire   [1:0] wp;

  DFFX1_RVT \mem_reg[3][8]  ( .D(n109), .CLK(clk), .Q(\mem[3][8] ) );
  DFFX1_RVT \mem_reg[3][7]  ( .D(n110), .CLK(clk), .Q(\mem[3][7] ) );
  DFFX1_RVT \mem_reg[3][6]  ( .D(n111), .CLK(clk), .Q(\mem[3][6] ) );
  DFFX1_RVT \mem_reg[3][5]  ( .D(n112), .CLK(clk), .Q(\mem[3][5] ) );
  DFFX1_RVT \mem_reg[3][4]  ( .D(n113), .CLK(clk), .Q(\mem[3][4] ) );
  DFFX1_RVT \mem_reg[3][3]  ( .D(n114), .CLK(clk), .Q(\mem[3][3] ) );
  DFFX1_RVT \mem_reg[3][2]  ( .D(n115), .CLK(clk), .Q(\mem[3][2] ) );
  DFFX1_RVT \mem_reg[3][1]  ( .D(n116), .CLK(clk), .Q(\mem[3][1] ) );
  DFFX1_RVT \mem_reg[0][8]  ( .D(n85), .CLK(clk), .Q(\mem[0][8] ) );
  DFFX1_RVT \mem_reg[0][7]  ( .D(n86), .CLK(clk), .Q(\mem[0][7] ) );
  DFFX1_RVT \mem_reg[0][6]  ( .D(n87), .CLK(clk), .Q(\mem[0][6] ) );
  DFFX1_RVT \mem_reg[0][5]  ( .D(n88), .CLK(clk), .Q(\mem[0][5] ) );
  DFFX1_RVT \mem_reg[0][4]  ( .D(n89), .CLK(clk), .Q(\mem[0][4] ) );
  DFFX1_RVT \mem_reg[0][3]  ( .D(n90), .CLK(clk), .Q(\mem[0][3] ) );
  DFFX1_RVT \mem_reg[0][2]  ( .D(n91), .CLK(clk), .Q(\mem[0][2] ) );
  DFFX1_RVT \mem_reg[0][1]  ( .D(n92), .CLK(clk), .Q(\mem[0][1] ) );
  DFFX1_RVT \mem_reg[1][8]  ( .D(n93), .CLK(clk), .Q(\mem[1][8] ) );
  DFFX1_RVT \mem_reg[1][7]  ( .D(n94), .CLK(clk), .Q(\mem[1][7] ) );
  DFFX1_RVT \mem_reg[1][6]  ( .D(n95), .CLK(clk), .Q(\mem[1][6] ) );
  DFFX1_RVT \mem_reg[1][5]  ( .D(n96), .CLK(clk), .Q(\mem[1][5] ) );
  DFFX1_RVT \mem_reg[1][4]  ( .D(n97), .CLK(clk), .Q(\mem[1][4] ) );
  DFFX1_RVT \mem_reg[1][3]  ( .D(n98), .CLK(clk), .Q(\mem[1][3] ) );
  DFFX1_RVT \mem_reg[1][2]  ( .D(n99), .CLK(clk), .Q(\mem[1][2] ) );
  DFFX1_RVT \mem_reg[1][1]  ( .D(n100), .CLK(clk), .Q(\mem[1][1] ) );
  DFFX1_RVT \mem_reg[2][8]  ( .D(n101), .CLK(clk), .Q(\mem[2][8] ) );
  DFFX1_RVT \mem_reg[2][7]  ( .D(n102), .CLK(clk), .Q(\mem[2][7] ) );
  DFFX1_RVT \mem_reg[2][6]  ( .D(n103), .CLK(clk), .Q(\mem[2][6] ) );
  DFFX1_RVT \mem_reg[2][5]  ( .D(n104), .CLK(clk), .Q(\mem[2][5] ) );
  DFFX1_RVT \mem_reg[2][4]  ( .D(n105), .CLK(clk), .Q(\mem[2][4] ) );
  DFFX1_RVT \mem_reg[2][3]  ( .D(n106), .CLK(clk), .Q(\mem[2][3] ) );
  DFFX1_RVT \mem_reg[2][2]  ( .D(n107), .CLK(clk), .Q(\mem[2][2] ) );
  DFFX1_RVT \mem_reg[2][1]  ( .D(n108), .CLK(clk), .Q(\mem[2][1] ) );
  DFFX1_RVT gb_reg ( .D(n117), .CLK(clk), .Q(gb), .QN(n136) );
  DFFARX1_RVT \rp_reg[1]  ( .D(n84), .CLK(clk), .RSTB(rst), .Q(N9), .QN(n16)
         );
  DFFARX1_RVT \wp_reg[0]  ( .D(n81), .CLK(clk), .RSTB(rst), .Q(wp[0]), .QN(
        n137) );
  DFFARX1_RVT \rp_reg[0]  ( .D(n83), .CLK(clk), .RSTB(rst), .Q(N8), .QN(n17)
         );
  DFFARX1_RVT \wp_reg[1]  ( .D(n82), .CLK(clk), .RSTB(rst), .Q(wp[1]), .QN(
        n138) );
  AND3X1_RVT U3 ( .A1(rst), .A2(n79), .A3(n131), .Y(n132) );
  INVX1_RVT U4 ( .A(n129), .Y(n77) );
  INVX1_RVT U5 ( .A(n126), .Y(n76) );
  INVX1_RVT U6 ( .A(n125), .Y(n74) );
  INVX1_RVT U7 ( .A(n128), .Y(n75) );
  INVX1_RVT U8 ( .A(n122), .Y(n80) );
  INVX1_RVT U9 ( .A(n119), .Y(n78) );
  INVX1_RVT U10 ( .A(n131), .Y(n18) );
  NAND2X0_RVT U11 ( .A1(n135), .A2(n134), .Y(n117) );
  NAND3X0_RVT U12 ( .A1(n80), .A2(rst), .A3(gb), .Y(n135) );
  NAND3X0_RVT U13 ( .A1(n133), .A2(we), .A3(n132), .Y(n134) );
  XNOR2X1_RVT U14 ( .A1(N9), .A2(n130), .Y(n133) );
  INVX1_RVT U15 ( .A(clr), .Y(n79) );
  AO22X1_RVT U16 ( .A1(din[1]), .A2(n77), .A3(\mem[3][1] ), .A4(n129), .Y(n116) );
  AO22X1_RVT U17 ( .A1(din[2]), .A2(n77), .A3(\mem[3][2] ), .A4(n129), .Y(n115) );
  AO22X1_RVT U18 ( .A1(din[3]), .A2(n77), .A3(\mem[3][3] ), .A4(n129), .Y(n114) );
  AO22X1_RVT U19 ( .A1(din[4]), .A2(n77), .A3(\mem[3][4] ), .A4(n129), .Y(n113) );
  AO22X1_RVT U20 ( .A1(din[5]), .A2(n77), .A3(\mem[3][5] ), .A4(n129), .Y(n112) );
  AO22X1_RVT U21 ( .A1(din[6]), .A2(n77), .A3(\mem[3][6] ), .A4(n129), .Y(n111) );
  AO22X1_RVT U22 ( .A1(din[7]), .A2(n77), .A3(\mem[3][7] ), .A4(n129), .Y(n110) );
  AO22X1_RVT U23 ( .A1(din[8]), .A2(n77), .A3(\mem[3][8] ), .A4(n129), .Y(n109) );
  AO22X1_RVT U24 ( .A1(n76), .A2(din[1]), .A3(\mem[1][1] ), .A4(n126), .Y(n100) );
  AO22X1_RVT U25 ( .A1(n76), .A2(din[2]), .A3(\mem[1][2] ), .A4(n126), .Y(n99)
         );
  AO22X1_RVT U26 ( .A1(n76), .A2(din[3]), .A3(\mem[1][3] ), .A4(n126), .Y(n98)
         );
  AO22X1_RVT U27 ( .A1(n76), .A2(din[4]), .A3(\mem[1][4] ), .A4(n126), .Y(n97)
         );
  AO22X1_RVT U28 ( .A1(n76), .A2(din[5]), .A3(\mem[1][5] ), .A4(n126), .Y(n96)
         );
  AO22X1_RVT U29 ( .A1(n76), .A2(din[6]), .A3(\mem[1][6] ), .A4(n126), .Y(n95)
         );
  AO22X1_RVT U30 ( .A1(n76), .A2(din[7]), .A3(\mem[1][7] ), .A4(n126), .Y(n94)
         );
  AO22X1_RVT U31 ( .A1(n76), .A2(din[8]), .A3(\mem[1][8] ), .A4(n126), .Y(n93)
         );
  NAND3X0_RVT U32 ( .A1(wp[0]), .A2(wp[1]), .A3(we), .Y(n129) );
  NAND3X0_RVT U33 ( .A1(wp[0]), .A2(n138), .A3(we), .Y(n126) );
  AO22X1_RVT U34 ( .A1(n75), .A2(din[1]), .A3(\mem[2][1] ), .A4(n128), .Y(n108) );
  AO22X1_RVT U35 ( .A1(n75), .A2(din[2]), .A3(\mem[2][2] ), .A4(n128), .Y(n107) );
  AO22X1_RVT U36 ( .A1(n75), .A2(din[3]), .A3(\mem[2][3] ), .A4(n128), .Y(n106) );
  AO22X1_RVT U37 ( .A1(n75), .A2(din[4]), .A3(\mem[2][4] ), .A4(n128), .Y(n105) );
  AO22X1_RVT U38 ( .A1(n75), .A2(din[5]), .A3(\mem[2][5] ), .A4(n128), .Y(n104) );
  AO22X1_RVT U39 ( .A1(n75), .A2(din[6]), .A3(\mem[2][6] ), .A4(n128), .Y(n103) );
  AO22X1_RVT U40 ( .A1(n75), .A2(din[7]), .A3(\mem[2][7] ), .A4(n128), .Y(n102) );
  AO22X1_RVT U41 ( .A1(n75), .A2(din[8]), .A3(\mem[2][8] ), .A4(n128), .Y(n101) );
  AO22X1_RVT U42 ( .A1(n74), .A2(din[1]), .A3(\mem[0][1] ), .A4(n125), .Y(n92)
         );
  AO22X1_RVT U43 ( .A1(n74), .A2(din[2]), .A3(\mem[0][2] ), .A4(n125), .Y(n91)
         );
  AO22X1_RVT U44 ( .A1(n74), .A2(din[3]), .A3(\mem[0][3] ), .A4(n125), .Y(n90)
         );
  AO22X1_RVT U45 ( .A1(n74), .A2(din[4]), .A3(\mem[0][4] ), .A4(n125), .Y(n89)
         );
  AO22X1_RVT U46 ( .A1(n74), .A2(din[5]), .A3(\mem[0][5] ), .A4(n125), .Y(n88)
         );
  AO22X1_RVT U47 ( .A1(n74), .A2(din[6]), .A3(\mem[0][6] ), .A4(n125), .Y(n87)
         );
  AO22X1_RVT U48 ( .A1(n74), .A2(din[7]), .A3(\mem[0][7] ), .A4(n125), .Y(n86)
         );
  AO22X1_RVT U49 ( .A1(n74), .A2(din[8]), .A3(\mem[0][8] ), .A4(n125), .Y(n85)
         );
  AND2X1_RVT U50 ( .A1(we), .A2(n137), .Y(n127) );
  NAND2X0_RVT U51 ( .A1(n127), .A2(wp[1]), .Y(n128) );
  NAND2X0_RVT U52 ( .A1(n127), .A2(n138), .Y(n125) );
  AO22X1_RVT U53 ( .A1(n78), .A2(wp[1]), .A3(n120), .A4(n130), .Y(n82) );
  AND2X1_RVT U54 ( .A1(n119), .A2(n79), .Y(n120) );
  AO22X1_RVT U55 ( .A1(n80), .A2(N9), .A3(n124), .A4(n79), .Y(n84) );
  OAI22X1_RVT U56 ( .A1(N8), .A2(n16), .A3(n17), .A4(n123), .Y(n124) );
  NAND2X0_RVT U57 ( .A1(n122), .A2(n16), .Y(n123) );
  AO22X1_RVT U58 ( .A1(n78), .A2(wp[0]), .A3(n127), .A4(n79), .Y(n81) );
  AO22X1_RVT U59 ( .A1(n80), .A2(N8), .A3(n121), .A4(n122), .Y(n83) );
  AND2X1_RVT U60 ( .A1(n79), .A2(n17), .Y(n121) );
  OR2X1_RVT U61 ( .A1(clr), .A2(re), .Y(n122) );
  OR2X1_RVT U62 ( .A1(we), .A2(clr), .Y(n119) );
  AND3X1_RVT U63 ( .A1(n118), .A2(n136), .A3(n18), .Y(empty) );
  XNOR2X1_RVT U64 ( .A1(N9), .A2(wp[1]), .Y(n118) );
  AND3X1_RVT U65 ( .A1(n118), .A2(gb), .A3(n18), .Y(full) );
  XNOR2X1_RVT U66 ( .A1(N8), .A2(n137), .Y(n131) );
  XNOR2X1_RVT U67 ( .A1(n137), .A2(wp[1]), .Y(n130) );
  AND2X1_RVT U68 ( .A1(n17), .A2(n16), .Y(n14) );
  AND2X1_RVT U69 ( .A1(N8), .A2(n16), .Y(n13) );
  AND2X1_RVT U70 ( .A1(N9), .A2(N8), .Y(n9) );
  AND2X1_RVT U71 ( .A1(N9), .A2(n17), .Y(n8) );
  AO22X1_RVT U72 ( .A1(\mem[3][1] ), .A2(n9), .A3(\mem[2][1] ), .A4(n8), .Y(n1) );
  AO221X1_RVT U73 ( .A1(\mem[0][1] ), .A2(n14), .A3(\mem[1][1] ), .A4(n13), 
        .A5(n1), .Y(dout[1]) );
  AO22X1_RVT U74 ( .A1(\mem[3][2] ), .A2(n9), .A3(\mem[2][2] ), .A4(n8), .Y(n2) );
  AO221X1_RVT U75 ( .A1(\mem[0][2] ), .A2(n14), .A3(\mem[1][2] ), .A4(n13), 
        .A5(n2), .Y(dout[2]) );
  AO22X1_RVT U76 ( .A1(\mem[3][3] ), .A2(n9), .A3(\mem[2][3] ), .A4(n8), .Y(n3) );
  AO221X1_RVT U77 ( .A1(\mem[0][3] ), .A2(n14), .A3(\mem[1][3] ), .A4(n13), 
        .A5(n3), .Y(dout[3]) );
  AO22X1_RVT U78 ( .A1(\mem[3][4] ), .A2(n9), .A3(\mem[2][4] ), .A4(n8), .Y(n4) );
  AO221X1_RVT U79 ( .A1(\mem[0][4] ), .A2(n14), .A3(\mem[1][4] ), .A4(n13), 
        .A5(n4), .Y(dout[4]) );
  AO22X1_RVT U80 ( .A1(\mem[3][5] ), .A2(n9), .A3(\mem[2][5] ), .A4(n8), .Y(n5) );
  AO221X1_RVT U81 ( .A1(\mem[0][5] ), .A2(n14), .A3(\mem[1][5] ), .A4(n13), 
        .A5(n5), .Y(dout[5]) );
  AO22X1_RVT U82 ( .A1(\mem[3][6] ), .A2(n9), .A3(\mem[2][6] ), .A4(n8), .Y(n6) );
  AO221X1_RVT U83 ( .A1(\mem[0][6] ), .A2(n14), .A3(\mem[1][6] ), .A4(n13), 
        .A5(n6), .Y(dout[6]) );
  AO22X1_RVT U84 ( .A1(\mem[3][7] ), .A2(n9), .A3(\mem[2][7] ), .A4(n8), .Y(n7) );
  AO221X1_RVT U85 ( .A1(\mem[0][7] ), .A2(n14), .A3(\mem[1][7] ), .A4(n13), 
        .A5(n7), .Y(dout[7]) );
  AO22X1_RVT U86 ( .A1(\mem[3][8] ), .A2(n9), .A3(\mem[2][8] ), .A4(n8), .Y(
        n11) );
  AO221X1_RVT U87 ( .A1(\mem[0][8] ), .A2(n14), .A3(\mem[1][8] ), .A4(n13), 
        .A5(n11), .Y(dout[8]) );
endmodule


module simple_spi_top_DW01_dec_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20;

  INVX1_RVT U1 ( .A(n20), .Y(n1) );
  INVX1_RVT U2 ( .A(n11), .Y(n2) );
  INVX1_RVT U3 ( .A(n12), .Y(n3) );
  INVX1_RVT U4 ( .A(n13), .Y(n4) );
  INVX1_RVT U5 ( .A(n14), .Y(n5) );
  INVX1_RVT U6 ( .A(n16), .Y(n7) );
  INVX1_RVT U7 ( .A(n17), .Y(n8) );
  INVX1_RVT U8 ( .A(n18), .Y(n9) );
  INVX1_RVT U9 ( .A(n15), .Y(n6) );
  INVX1_RVT U10 ( .A(A[0]), .Y(SUM[0]) );
  AO21X1_RVT U11 ( .A1(A[9]), .A2(n11), .A3(n1), .Y(SUM[9]) );
  AO21X1_RVT U12 ( .A1(A[8]), .A2(n12), .A3(n2), .Y(SUM[8]) );
  AO21X1_RVT U13 ( .A1(A[7]), .A2(n13), .A3(n3), .Y(SUM[7]) );
  AO21X1_RVT U14 ( .A1(A[6]), .A2(n14), .A3(n4), .Y(SUM[6]) );
  AO21X1_RVT U15 ( .A1(A[5]), .A2(n15), .A3(n5), .Y(SUM[5]) );
  AO21X1_RVT U16 ( .A1(A[4]), .A2(n16), .A3(n6), .Y(SUM[4]) );
  AO21X1_RVT U17 ( .A1(A[3]), .A2(n17), .A3(n7), .Y(SUM[3]) );
  AO21X1_RVT U18 ( .A1(A[2]), .A2(n18), .A3(n8), .Y(SUM[2]) );
  AO21X1_RVT U19 ( .A1(A[1]), .A2(A[0]), .A3(n9), .Y(SUM[1]) );
  XNOR2X1_RVT U20 ( .A1(n19), .A2(A[11]), .Y(SUM[11]) );
  OR2X1_RVT U21 ( .A1(n20), .A2(A[10]), .Y(n19) );
  XOR2X1_RVT U22 ( .A1(A[10]), .A2(n1), .Y(SUM[10]) );
  OR2X1_RVT U23 ( .A1(n11), .A2(A[9]), .Y(n20) );
  OR2X1_RVT U24 ( .A1(n12), .A2(A[8]), .Y(n11) );
  OR2X1_RVT U25 ( .A1(n13), .A2(A[7]), .Y(n12) );
  OR2X1_RVT U26 ( .A1(n14), .A2(A[6]), .Y(n13) );
  OR2X1_RVT U27 ( .A1(n15), .A2(A[5]), .Y(n14) );
  OR2X1_RVT U28 ( .A1(n16), .A2(A[4]), .Y(n15) );
  OR2X1_RVT U29 ( .A1(n17), .A2(A[3]), .Y(n16) );
  OR2X1_RVT U30 ( .A1(n18), .A2(A[2]), .Y(n17) );
  OR2X1_RVT U31 ( .A1(A[1]), .A2(A[0]), .Y(n18) );
endmodule


module simple_spi_top ( clk_i, rst_i, cyc_i, stb_i, adr_i, we_i, dat_i, dat_o, 
        ack_o, inta_o, sck_o, mosi_o, miso_i );
  input [1:0] adr_i;
  input [7:0] dat_i;
  output [7:0] dat_o;
  input clk_i, rst_i, cyc_i, stb_i, we_i, miso_i;
  output ack_o, inta_o, sck_o, mosi_o;
  wire   wfwe, spsr_7, spsr_6, N64, N65, N66, N67, N68, N69, N70, N71, rfre,
         N73, N76, N78, rfwe, wfre, N82, N83, N84, N85, N86, N87, N88, N89,
         N90, N91, N92, N93, N185, n14, n15, n20, n22, n23, n27, n30, n31, n32,
         n34, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n61, n62, n63, n64, n65, n66, n67, n68, n69, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159;
  wire   [7:0] spcr;
  wire   [7:0] sper;
  wire   [3:0] spsr;
  wire   [7:0] rfdout;
  wire   [6:0] treg;
  wire   [7:0] wfdout;
  wire   [11:0] clkcnt;
  wire   [1:0] state;
  wire   [2:0] bcnt;
  wire   [1:0] tcnt;

  NOR4X1_RVT U120 ( .A1(n102), .A2(clkcnt[4]), .A3(clkcnt[6]), .A4(clkcnt[5]), 
        .Y(n101) );
  NOR4X1_RVT U122 ( .A1(n103), .A2(clkcnt[0]), .A3(clkcnt[11]), .A4(clkcnt[10]), .Y(n100) );
  fifo4_dw8_1 rfifo ( .clk(clk_i), .rst(n140), .clr(n20), .din({mosi_o, treg}), 
        .we(rfwe), .dout(rfdout), .re(rfre), .full(spsr[1]), .empty(spsr[0])
         );
  fifo4_dw8_0 wfifo ( .clk(clk_i), .rst(n140), .clr(n20), .din(dat_i), .we(
        wfwe), .dout(wfdout), .re(wfre), .full(spsr[3]), .empty(spsr[2]) );
  simple_spi_top_DW01_dec_0 sub_237 ( .A(clkcnt), .SUM({N93, N92, N91, N90, 
        N89, N88, N87, N86, N85, N84, N83, N82}) );
  DFFX1_RVT wcol_reg ( .D(N78), .CLK(clk_i), .Q(spsr_6) );
  DFFX1_RVT spif_reg ( .D(N76), .CLK(clk_i), .Q(spsr_7) );
  DFFARX1_RVT \sper_reg[4]  ( .D(n131), .CLK(clk_i), .RSTB(rst_i), .Q(sper[4])
         );
  DFFARX1_RVT \sper_reg[3]  ( .D(n130), .CLK(clk_i), .RSTB(n141), .Q(sper[3])
         );
  DFFARX1_RVT \sper_reg[2]  ( .D(n129), .CLK(clk_i), .RSTB(rst_i), .Q(sper[2])
         );
  DFFARX1_RVT \sper_reg[5]  ( .D(n132), .CLK(clk_i), .RSTB(n141), .Q(sper[5])
         );
  DFFARX1_RVT \spcr_reg[5]  ( .D(n124), .CLK(clk_i), .RSTB(n141), .Q(spcr[5])
         );
  DFFARX1_RVT \spcr_reg[3]  ( .D(n123), .CLK(clk_i), .RSTB(rst_i), .Q(spcr[3])
         );
  DFFARX1_RVT \sper_reg[6]  ( .D(n133), .CLK(clk_i), .RSTB(rst_i), .Q(sper[6])
         );
  DFFARX1_RVT \sper_reg[7]  ( .D(n134), .CLK(clk_i), .RSTB(n141), .Q(sper[7])
         );
  DFFARX1_RVT \spcr_reg[7]  ( .D(n126), .CLK(clk_i), .RSTB(n141), .Q(spcr[7])
         );
  DFFX1_RVT sck_o_reg ( .D(n106), .CLK(clk_i), .Q(sck_o), .QN(n32) );
  DFFX1_RVT \tcnt_reg[1]  ( .D(n104), .CLK(clk_i), .Q(tcnt[1]) );
  DFFX1_RVT \bcnt_reg[2]  ( .D(n115), .CLK(clk_i), .Q(bcnt[2]) );
  DFFX1_RVT \tcnt_reg[0]  ( .D(n105), .CLK(clk_i), .Q(tcnt[0]), .QN(n34) );
  SDFFSSRX1_RVT wfre_reg ( .RSTB(n155), .SETB(1'b1), .D(n143), .SI(1'b0), .SE(
        n20), .CLK(clk_i), .Q(wfre) );
  DFFX1_RVT \bcnt_reg[0]  ( .D(n116), .CLK(clk_i), .Q(bcnt[0]), .QN(n27) );
  DFFX1_RVT \bcnt_reg[1]  ( .D(n117), .CLK(clk_i), .Q(bcnt[1]) );
  DFFX1_RVT \treg_reg[7]  ( .D(n107), .CLK(clk_i), .Q(mosi_o) );
  DFFX1_RVT \treg_reg[0]  ( .D(n114), .CLK(clk_i), .Q(treg[0]) );
  DFFX1_RVT \treg_reg[1]  ( .D(n113), .CLK(clk_i), .Q(treg[1]) );
  DFFX1_RVT \treg_reg[2]  ( .D(n112), .CLK(clk_i), .Q(treg[2]) );
  DFFX1_RVT \treg_reg[3]  ( .D(n111), .CLK(clk_i), .Q(treg[3]) );
  DFFX1_RVT \treg_reg[4]  ( .D(n110), .CLK(clk_i), .Q(treg[4]) );
  DFFX1_RVT \treg_reg[5]  ( .D(n109), .CLK(clk_i), .Q(treg[5]) );
  DFFX1_RVT \treg_reg[6]  ( .D(n108), .CLK(clk_i), .Q(treg[6]) );
  DFFARX1_RVT \spcr_reg[2]  ( .D(n122), .CLK(clk_i), .RSTB(n141), .Q(spcr[2])
         );
  DFFARX1_RVT \spcr_reg[0]  ( .D(n120), .CLK(clk_i), .RSTB(n141), .Q(spcr[0]), 
        .QN(n22) );
  DFFARX1_RVT \sper_reg[0]  ( .D(n127), .CLK(clk_i), .RSTB(rst_i), .Q(sper[0]), 
        .QN(n15) );
  DFFARX1_RVT \spcr_reg[1]  ( .D(n121), .CLK(clk_i), .RSTB(n141), .Q(spcr[1]), 
        .QN(n14) );
  DFFARX1_RVT \sper_reg[1]  ( .D(n128), .CLK(clk_i), .RSTB(n141), .Q(sper[1])
         );
  SDFFX1_RVT \clkcnt_reg[4]  ( .D(N86), .SI(n96), .SE(n93), .CLK(clk_i), .Q(
        clkcnt[4]) );
  SDFFX1_RVT \clkcnt_reg[6]  ( .D(N88), .SI(n94), .SE(n93), .CLK(clk_i), .Q(
        clkcnt[6]) );
  SDFFX1_RVT \clkcnt_reg[5]  ( .D(N87), .SI(n95), .SE(n93), .CLK(clk_i), .Q(
        clkcnt[5]) );
  SDFFX1_RVT \clkcnt_reg[7]  ( .D(N89), .SI(sper[1]), .SE(n93), .CLK(clk_i), 
        .Q(clkcnt[7]) );
  DFFARX1_RVT ack_o_reg ( .D(N73), .CLK(clk_i), .RSTB(n141), .Q(ack_o), .QN(
        n23) );
  SDFFSSRX1_RVT \clkcnt_reg[3]  ( .RSTB(1'b1), .SETB(n154), .D(n96), .SI(N85), 
        .SE(n153), .CLK(clk_i), .Q(clkcnt[3]) );
  SDFFSSRX1_RVT \clkcnt_reg[9]  ( .RSTB(spcr[1]), .SETB(1'b1), .D(sper[1]), 
        .SI(N91), .SE(n153), .CLK(clk_i), .Q(clkcnt[9]) );
  SDFFSSRX1_RVT \clkcnt_reg[1]  ( .RSTB(1'b1), .SETB(n14), .D(n98), .SI(N83), 
        .SE(n153), .CLK(clk_i), .Q(clkcnt[1]) );
  SDFFSSRX1_RVT \clkcnt_reg[2]  ( .RSTB(1'b1), .SETB(n15), .D(n97), .SI(N84), 
        .SE(n153), .CLK(clk_i), .Q(clkcnt[2]) );
  SDFFSSRX1_RVT \clkcnt_reg[8]  ( .RSTB(sper[1]), .SETB(n14), .D(spcr[0]), 
        .SI(N90), .SE(n153), .CLK(clk_i), .Q(clkcnt[8]) );
  DFFSSRX1_RVT \clkcnt_reg[11]  ( .D(N93), .SETB(1'b1), .RSTB(n153), .CLK(
        clk_i), .Q(clkcnt[11]) );
  SDFFSSRX1_RVT \clkcnt_reg[10]  ( .RSTB(n92), .SETB(1'b1), .D(sper[1]), .SI(
        N92), .SE(n153), .CLK(clk_i), .Q(clkcnt[10]) );
  SDFFSSRX1_RVT \clkcnt_reg[0]  ( .RSTB(1'b1), .SETB(n22), .D(n99), .SI(N82), 
        .SE(n153), .CLK(clk_i), .Q(clkcnt[0]) );
  DFFX1_RVT \state_reg[0]  ( .D(n119), .CLK(clk_i), .Q(state[0]), .QN(n31) );
  DFFX1_RVT \state_reg[1]  ( .D(n118), .CLK(clk_i), .Q(state[1]), .QN(n30) );
  SDFFSSRX1_RVT rfwe_reg ( .RSTB(n62), .SETB(1'b1), .D(n158), .SI(1'b0), .SE(
        n72), .CLK(clk_i), .Q(rfwe) );
  DFFARX1_RVT \spcr_reg[6]  ( .D(n125), .CLK(clk_i), .RSTB(n141), .Q(spcr[6]), 
        .QN(n20) );
  DFFX1_RVT \dat_o_reg[0]  ( .D(N64), .CLK(clk_i), .Q(dat_o[0]) );
  DFFX1_RVT \dat_o_reg[1]  ( .D(N65), .CLK(clk_i), .Q(dat_o[1]) );
  DFFX1_RVT \dat_o_reg[2]  ( .D(N66), .CLK(clk_i), .Q(dat_o[2]) );
  DFFX1_RVT \dat_o_reg[3]  ( .D(N67), .CLK(clk_i), .Q(dat_o[3]) );
  DFFX1_RVT \dat_o_reg[4]  ( .D(N68), .CLK(clk_i), .Q(dat_o[4]) );
  DFFX1_RVT \dat_o_reg[5]  ( .D(N69), .CLK(clk_i), .Q(dat_o[5]) );
  DFFX1_RVT \dat_o_reg[6]  ( .D(N70), .CLK(clk_i), .Q(dat_o[6]) );
  DFFX1_RVT \dat_o_reg[7]  ( .D(N71), .CLK(clk_i), .Q(dat_o[7]) );
  DFFSSRX1_RVT inta_o_reg ( .D(spsr_7), .SETB(1'b1), .RSTB(spcr[7]), .CLK(
        clk_i), .Q(inta_o) );
  AND2X1_RVT U142 ( .A1(n65), .A2(n56), .Y(n135) );
  AND2X1_RVT U143 ( .A1(n65), .A2(n155), .Y(n136) );
  AND2X1_RVT U144 ( .A1(adr_i[1]), .A2(n148), .Y(n137) );
  INVX1_RVT U145 ( .A(n58), .Y(n150) );
  INVX1_RVT U146 ( .A(n75), .Y(n145) );
  AND2X1_RVT U147 ( .A1(n58), .A2(spcr[6]), .Y(n65) );
  INVX1_RVT U148 ( .A(n93), .Y(n153) );
  INVX1_RVT U149 ( .A(n74), .Y(n144) );
  AO21X1_RVT U150 ( .A1(n156), .A2(n158), .A3(n58), .Y(n51) );
  AND3X1_RVT U151 ( .A1(spcr[6]), .A2(n143), .A3(n155), .Y(N185) );
  INVX1_RVT U152 ( .A(n142), .Y(n140) );
  OR2X1_RVT U153 ( .A1(n66), .A2(n155), .Y(n58) );
  NAND2X0_RVT U154 ( .A1(n76), .A2(n77), .Y(n75) );
  INVX1_RVT U155 ( .A(n91), .Y(n155) );
  INVX1_RVT U156 ( .A(n90), .Y(n158) );
  AND2X1_RVT U157 ( .A1(n148), .A2(n147), .Y(n84) );
  NAND3X0_RVT U158 ( .A1(n91), .A2(spcr[6]), .A3(n90), .Y(n93) );
  AND2X1_RVT U159 ( .A1(n49), .A2(spcr[6]), .Y(n45) );
  INVX1_RVT U160 ( .A(n49), .Y(n152) );
  NAND2X0_RVT U161 ( .A1(n84), .A2(n77), .Y(n74) );
  INVX1_RVT U162 ( .A(spsr[2]), .Y(n143) );
  OR2X1_RVT U163 ( .A1(n96), .A2(n92), .Y(n97) );
  INVX1_RVT U164 ( .A(n81), .Y(n146) );
  INVX1_RVT U165 ( .A(n92), .Y(n154) );
  AO21X1_RVT U166 ( .A1(n56), .A2(n72), .A3(n156), .Y(n54) );
  AND2X1_RVT U167 ( .A1(n56), .A2(spcr[6]), .Y(n62) );
  INVX1_RVT U168 ( .A(n68), .Y(n156) );
  INVX1_RVT U169 ( .A(n72), .Y(n157) );
  INVX1_RVT U170 ( .A(n48), .Y(n159) );
  INVX1_RVT U171 ( .A(n142), .Y(n141) );
  AO221X1_RVT U172 ( .A1(n64), .A2(n135), .A3(bcnt[1]), .A4(n63), .A5(n136), 
        .Y(n117) );
  NOR2X0_RVT U173 ( .A1(bcnt[0]), .A2(bcnt[1]), .Y(n64) );
  AO221X1_RVT U174 ( .A1(bcnt[2]), .A2(n61), .A3(n135), .A4(n157), .A5(n136), 
        .Y(n115) );
  AO21X1_RVT U175 ( .A1(bcnt[1]), .A2(n62), .A3(n63), .Y(n61) );
  AO21X1_RVT U176 ( .A1(n56), .A2(n158), .A3(n20), .Y(n66) );
  AO21X1_RVT U177 ( .A1(bcnt[0]), .A2(n62), .A3(n150), .Y(n63) );
  INVX1_RVT U178 ( .A(rst_i), .Y(n142) );
  AO222X1_RVT U179 ( .A1(wfdout[7]), .A2(n136), .A3(treg[6]), .A4(n135), .A5(
        mosi_o), .A6(n150), .Y(n107) );
  AO222X1_RVT U180 ( .A1(wfdout[5]), .A2(n136), .A3(treg[4]), .A4(n135), .A5(
        treg[5]), .A6(n150), .Y(n109) );
  AO222X1_RVT U181 ( .A1(wfdout[3]), .A2(n136), .A3(treg[2]), .A4(n135), .A5(
        treg[3]), .A6(n150), .Y(n111) );
  AO222X1_RVT U182 ( .A1(wfdout[6]), .A2(n136), .A3(treg[5]), .A4(n135), .A5(
        treg[6]), .A6(n150), .Y(n108) );
  AO222X1_RVT U183 ( .A1(wfdout[4]), .A2(n136), .A3(treg[3]), .A4(n135), .A5(
        treg[4]), .A6(n150), .Y(n110) );
  AO222X1_RVT U184 ( .A1(wfdout[2]), .A2(n136), .A3(treg[1]), .A4(n135), .A5(
        treg[2]), .A6(n150), .Y(n112) );
  AO222X1_RVT U185 ( .A1(wfdout[1]), .A2(n136), .A3(treg[0]), .A4(n135), .A5(
        treg[1]), .A6(n150), .Y(n113) );
  AO222X1_RVT U186 ( .A1(wfdout[0]), .A2(n136), .A3(miso_i), .A4(n135), .A5(
        treg[0]), .A6(n150), .Y(n114) );
  AO221X1_RVT U187 ( .A1(n135), .A2(n27), .A3(bcnt[0]), .A4(n150), .A5(n136), 
        .Y(n116) );
  AND3X1_RVT U188 ( .A1(n77), .A2(n137), .A3(ack_o), .Y(wfwe) );
  INVX1_RVT U189 ( .A(adr_i[0]), .Y(n148) );
  AND2X1_RVT U190 ( .A1(adr_i[0]), .A2(adr_i[1]), .Y(n76) );
  AND2X1_RVT U191 ( .A1(we_i), .A2(n42), .Y(n77) );
  AO22X1_RVT U192 ( .A1(dat_i[4]), .A2(n145), .A3(sper[4]), .A4(n75), .Y(n131)
         );
  AO22X1_RVT U193 ( .A1(n145), .A2(dat_i[0]), .A3(sper[0]), .A4(n75), .Y(n127)
         );
  AO22X1_RVT U194 ( .A1(n145), .A2(dat_i[1]), .A3(sper[1]), .A4(n75), .Y(n128)
         );
  AO22X1_RVT U195 ( .A1(n145), .A2(dat_i[2]), .A3(sper[2]), .A4(n75), .Y(n129)
         );
  AO22X1_RVT U196 ( .A1(n145), .A2(dat_i[3]), .A3(sper[3]), .A4(n75), .Y(n130)
         );
  AO22X1_RVT U197 ( .A1(n145), .A2(dat_i[5]), .A3(sper[5]), .A4(n75), .Y(n132)
         );
  AO22X1_RVT U198 ( .A1(n145), .A2(dat_i[6]), .A3(sper[6]), .A4(n75), .Y(n133)
         );
  AO22X1_RVT U199 ( .A1(n145), .A2(dat_i[7]), .A3(sper[7]), .A4(n75), .Y(n134)
         );
  AND2X1_RVT U200 ( .A1(stb_i), .A2(cyc_i), .Y(n42) );
  AO221X1_RVT U201 ( .A1(sper[6]), .A2(n46), .A3(n152), .A4(tcnt[0]), .A5(n47), 
        .Y(n105) );
  AO21X1_RVT U202 ( .A1(rfwe), .A2(n159), .A3(n20), .Y(n46) );
  AND3X1_RVT U203 ( .A1(n48), .A2(n34), .A3(n45), .Y(n47) );
  INVX1_RVT U204 ( .A(adr_i[1]), .Y(n147) );
  AND2X1_RVT U205 ( .A1(state[1]), .A2(state[0]), .Y(n56) );
  AO221X1_RVT U206 ( .A1(n156), .A2(n158), .A3(n155), .A4(n143), .A5(n73), .Y(
        n67) );
  AO21X1_RVT U207 ( .A1(state[1]), .A2(n31), .A3(n66), .Y(n73) );
  AO22X1_RVT U208 ( .A1(tcnt[1]), .A2(n43), .A3(sper[7]), .A4(n44), .Y(n104)
         );
  AO21X1_RVT U209 ( .A1(n45), .A2(n159), .A3(n20), .Y(n44) );
  AO21X1_RVT U210 ( .A1(tcnt[0]), .A2(n45), .A3(n152), .Y(n43) );
  OAI22X1_RVT U211 ( .A1(n67), .A2(n31), .A3(n138), .A4(n139), .Y(n119) );
  NAND2X0_RVT U212 ( .A1(n67), .A2(spcr[6]), .Y(n138) );
  NOR2X0_RVT U213 ( .A1(n54), .A2(n155), .Y(n139) );
  AO22X1_RVT U214 ( .A1(dat_i[0]), .A2(n144), .A3(spcr[0]), .A4(n74), .Y(n120)
         );
  AO22X1_RVT U215 ( .A1(dat_i[1]), .A2(n144), .A3(spcr[1]), .A4(n74), .Y(n121)
         );
  AO22X1_RVT U216 ( .A1(dat_i[2]), .A2(n144), .A3(spcr[2]), .A4(n74), .Y(n122)
         );
  AO22X1_RVT U217 ( .A1(dat_i[3]), .A2(n144), .A3(spcr[3]), .A4(n74), .Y(n123)
         );
  AO22X1_RVT U218 ( .A1(dat_i[5]), .A2(n144), .A3(spcr[5]), .A4(n74), .Y(n124)
         );
  AO22X1_RVT U219 ( .A1(dat_i[6]), .A2(n144), .A3(n74), .A4(spcr[6]), .Y(n125)
         );
  AO22X1_RVT U220 ( .A1(dat_i[7]), .A2(n144), .A3(spcr[7]), .A4(n74), .Y(n126)
         );
  AO22X1_RVT U221 ( .A1(sck_o), .A2(n151), .A3(n50), .A4(n51), .Y(n106) );
  AO22X1_RVT U222 ( .A1(n52), .A2(spcr[6]), .A3(n53), .A4(spcr[2]), .Y(n50) );
  INVX1_RVT U223 ( .A(n51), .Y(n151) );
  AND2X1_RVT U224 ( .A1(N185), .A2(n32), .Y(n53) );
  AND4X1_RVT U225 ( .A1(ack_o), .A2(n137), .A3(n42), .A4(n149), .Y(rfre) );
  INVX1_RVT U226 ( .A(we_i), .Y(n149) );
  OR2X1_RVT U227 ( .A1(n20), .A2(rfwe), .Y(n49) );
  NAND2X0_RVT U228 ( .A1(n31), .A2(n30), .Y(n91) );
  NAND2X0_RVT U229 ( .A1(n100), .A2(n101), .Y(n90) );
  OR3X2_RVT U230 ( .A1(clkcnt[3]), .A2(clkcnt[2]), .A3(clkcnt[1]), .Y(n103) );
  OAI22X1_RVT U231 ( .A1(n30), .A2(n67), .A3(n68), .A4(n69), .Y(n118) );
  NAND2X0_RVT U232 ( .A1(n67), .A2(spcr[6]), .Y(n69) );
  OR3X2_RVT U233 ( .A1(clkcnt[9]), .A2(clkcnt[8]), .A3(clkcnt[7]), .Y(n102) );
  AO221X1_RVT U234 ( .A1(n76), .A2(sper[7]), .A3(rfdout[7]), .A4(n137), .A5(
        n83), .Y(N71) );
  AO22X1_RVT U235 ( .A1(spcr[7]), .A2(n84), .A3(n146), .A4(spsr_7), .Y(n83) );
  AO221X1_RVT U236 ( .A1(n76), .A2(sper[6]), .A3(rfdout[6]), .A4(n137), .A5(
        n85), .Y(N70) );
  AO22X1_RVT U237 ( .A1(n84), .A2(spcr[6]), .A3(spsr_6), .A4(n146), .Y(n85) );
  AO221X1_RVT U238 ( .A1(sper[4]), .A2(n76), .A3(rfdout[4]), .A4(n137), .A5(
        n84), .Y(N68) );
  AO221X1_RVT U239 ( .A1(sper[3]), .A2(n76), .A3(rfdout[3]), .A4(n137), .A5(
        n86), .Y(N67) );
  AO22X1_RVT U240 ( .A1(n84), .A2(spcr[3]), .A3(spsr[3]), .A4(n146), .Y(n86)
         );
  AO221X1_RVT U241 ( .A1(sper[2]), .A2(n76), .A3(rfdout[2]), .A4(n137), .A5(
        n87), .Y(N66) );
  AO22X1_RVT U242 ( .A1(n84), .A2(spcr[2]), .A3(spsr[2]), .A4(n146), .Y(n87)
         );
  AO221X1_RVT U243 ( .A1(sper[1]), .A2(n76), .A3(rfdout[1]), .A4(n137), .A5(
        n88), .Y(N65) );
  AO22X1_RVT U244 ( .A1(spcr[1]), .A2(n84), .A3(spsr[1]), .A4(n146), .Y(n88)
         );
  AO221X1_RVT U245 ( .A1(sper[0]), .A2(n76), .A3(rfdout[0]), .A4(n137), .A5(
        n89), .Y(N64) );
  AO22X1_RVT U246 ( .A1(spcr[0]), .A2(n84), .A3(spsr[0]), .A4(n146), .Y(n89)
         );
  AO222X1_RVT U247 ( .A1(rfdout[5]), .A2(n137), .A3(sper[5]), .A4(n76), .A5(
        spcr[5]), .A6(n84), .Y(N69) );
  AND3X1_RVT U248 ( .A1(n78), .A2(spcr[6]), .A3(n79), .Y(N78) );
  NAND3X0_RVT U249 ( .A1(dat_i[6]), .A2(n77), .A3(n146), .Y(n78) );
  AO21X1_RVT U250 ( .A1(spsr[3]), .A2(wfwe), .A3(spsr_6), .Y(n79) );
  AO21X1_RVT U251 ( .A1(sper[0]), .A2(n22), .A3(n95), .Y(n96) );
  AO22X1_RVT U252 ( .A1(n54), .A2(n32), .A3(spcr[3]), .A4(n55), .Y(n52) );
  AO22X1_RVT U253 ( .A1(n157), .A2(n56), .A3(n155), .A4(n57), .Y(n55) );
  NAND2X0_RVT U254 ( .A1(spcr[2]), .A2(n143), .Y(n57) );
  AO21X1_RVT U255 ( .A1(sper[0]), .A2(spcr[1]), .A3(n94), .Y(n95) );
  AO21X1_RVT U256 ( .A1(n92), .A2(sper[0]), .A3(sper[1]), .Y(n94) );
  AND2X1_RVT U257 ( .A1(spcr[1]), .A2(spcr[0]), .Y(n92) );
  OR2X1_RVT U258 ( .A1(n97), .A2(sper[0]), .Y(n98) );
  OR2X1_RVT U259 ( .A1(n98), .A2(spcr[1]), .Y(n99) );
  OA221X1_RVT U260 ( .A1(n80), .A2(spsr_7), .A3(n81), .A4(n82), .A5(spcr[6]), 
        .Y(N76) );
  NAND2X0_RVT U261 ( .A1(dat_i[7]), .A2(n77), .Y(n82) );
  AND2X1_RVT U262 ( .A1(rfwe), .A2(n159), .Y(n80) );
  OR2X1_RVT U263 ( .A1(tcnt[1]), .A2(tcnt[0]), .Y(n48) );
  NAND2X0_RVT U264 ( .A1(state[0]), .A2(n30), .Y(n68) );
  NAND2X0_RVT U265 ( .A1(adr_i[0]), .A2(n147), .Y(n81) );
  OR3X2_RVT U266 ( .A1(bcnt[1]), .A2(bcnt[2]), .A3(bcnt[0]), .Y(n72) );
  AND2X1_RVT U267 ( .A1(n42), .A2(n23), .Y(N73) );
endmodule

