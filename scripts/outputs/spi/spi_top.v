/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Tue Apr 15 10:30:58 2025
/////////////////////////////////////////////////////////////


module spi_clgen_DW01_dec_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  INVX1_RVT U1 ( .A(n25), .Y(n4) );
  INVX1_RVT U2 ( .A(n26), .Y(n3) );
  INVX1_RVT U3 ( .A(n27), .Y(n2) );
  INVX1_RVT U4 ( .A(n28), .Y(n1) );
  INVX1_RVT U5 ( .A(n16), .Y(n5) );
  INVX1_RVT U6 ( .A(n17), .Y(n7) );
  INVX1_RVT U7 ( .A(n18), .Y(n8) );
  INVX1_RVT U8 ( .A(n19), .Y(n9) );
  INVX1_RVT U9 ( .A(n15), .Y(n6) );
  INVX1_RVT U10 ( .A(n22), .Y(n12) );
  INVX1_RVT U11 ( .A(n21), .Y(n11) );
  INVX1_RVT U12 ( .A(n20), .Y(n10) );
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


module spi_clgen ( clk_in, rst, go, enable, last_clk, divider, clk_out, 
        pos_edge, neg_edge );
  input [15:0] divider;
  input clk_in, rst, go, enable, last_clk;
  output clk_out, pos_edge, neg_edge;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19,
         N20, N40, N41, n2, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n19, n20, n21, n22, n23, n1, n3, n4, n18, n24, n25;
  wire   [15:0] cnt;

  NOR4X1_RVT U11 ( .A1(n13), .A2(n14), .A3(n15), .A4(n16), .Y(n9) );
  NOR4X1_RVT U21 ( .A1(cnt[9]), .A2(cnt[8]), .A3(cnt[7]), .A4(cnt[6]), .Y(n22)
         );
  NOR4X1_RVT U22 ( .A1(cnt[5]), .A2(cnt[4]), .A3(cnt[3]), .A4(cnt[2]), .Y(n21)
         );
  NOR4X1_RVT U23 ( .A1(cnt[1]), .A2(cnt[15]), .A3(cnt[14]), .A4(cnt[13]), .Y(
        n20) );
  spi_clgen_DW01_dec_0 sub_80 ( .A(cnt), .SUM({N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5}) );
  SDFFASX1_RVT \cnt_reg[15]  ( .D(N20), .SI(divider[15]), .SE(n3), .CLK(clk_in), .SETB(n25), .Q(cnt[15]) );
  SDFFASX1_RVT \cnt_reg[9]  ( .D(N14), .SI(divider[9]), .SE(n4), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[9]) );
  SDFFASX1_RVT \cnt_reg[10]  ( .D(N15), .SI(divider[10]), .SE(n4), .CLK(clk_in), .SETB(n25), .Q(cnt[10]) );
  SDFFASX1_RVT \cnt_reg[8]  ( .D(N13), .SI(divider[8]), .SE(n4), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[8]) );
  SDFFASX1_RVT \cnt_reg[12]  ( .D(N17), .SI(divider[12]), .SE(n4), .CLK(clk_in), .SETB(n25), .Q(cnt[12]) );
  SDFFASX1_RVT \cnt_reg[7]  ( .D(N12), .SI(divider[7]), .SE(n3), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[7]) );
  SDFFASX1_RVT \cnt_reg[6]  ( .D(N11), .SI(divider[6]), .SE(n4), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[6]) );
  SDFFASX1_RVT \cnt_reg[13]  ( .D(N18), .SI(divider[13]), .SE(n4), .CLK(clk_in), .SETB(n25), .Q(cnt[13]) );
  SDFFASX1_RVT \cnt_reg[11]  ( .D(N16), .SI(divider[11]), .SE(n4), .CLK(clk_in), .SETB(n25), .Q(cnt[11]) );
  SDFFASX1_RVT \cnt_reg[14]  ( .D(N19), .SI(divider[14]), .SE(n4), .CLK(clk_in), .SETB(n25), .Q(cnt[14]) );
  SDFFASX1_RVT \cnt_reg[1]  ( .D(N6), .SI(divider[1]), .SE(n3), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[1]) );
  SDFFASX1_RVT \cnt_reg[5]  ( .D(N10), .SI(divider[5]), .SE(n3), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[5]) );
  SDFFASX1_RVT \cnt_reg[4]  ( .D(N9), .SI(divider[4]), .SE(n3), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[4]) );
  SDFFASX1_RVT \cnt_reg[3]  ( .D(N8), .SI(divider[3]), .SE(n3), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[3]) );
  SDFFASX1_RVT \cnt_reg[2]  ( .D(N7), .SI(divider[2]), .SE(n3), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[2]) );
  SDFFASX1_RVT \cnt_reg[0]  ( .D(N5), .SI(divider[0]), .SE(n3), .CLK(clk_in), 
        .SETB(n25), .Q(cnt[0]), .QN(n2) );
  DFFARX1_RVT neg_edge_reg ( .D(N41), .CLK(clk_in), .RSTB(n25), .Q(neg_edge)
         );
  DFFARX1_RVT clk_out_reg ( .D(n23), .CLK(clk_in), .RSTB(n25), .Q(clk_out) );
  DFFARX1_RVT pos_edge_reg ( .D(N40), .CLK(clk_in), .RSTB(n25), .Q(pos_edge)
         );
  AND2X1_RVT U3 ( .A1(enable), .A2(n7), .Y(n1) );
  INVX1_RVT U4 ( .A(enable), .Y(n24) );
  INVX1_RVT U5 ( .A(n1), .Y(n4) );
  INVX1_RVT U6 ( .A(n1), .Y(n3) );
  INVX1_RVT U7 ( .A(n8), .Y(n18) );
  OR2X1_RVT U8 ( .A1(n24), .A2(clk_out), .Y(n8) );
  AO22X1_RVT U9 ( .A1(n11), .A2(n18), .A3(n9), .A4(n12), .Y(N40) );
  AO21X1_RVT U10 ( .A1(go), .A2(n24), .A3(clk_out), .Y(n12) );
  AO22X1_RVT U12 ( .A1(n9), .A2(n18), .A3(n10), .A4(n11), .Y(N41) );
  AND2X1_RVT U13 ( .A1(clk_out), .A2(enable), .Y(n10) );
  NAND2X0_RVT U14 ( .A1(n17), .A2(n2), .Y(n7) );
  AND4X1_RVT U15 ( .A1(n19), .A2(n20), .A3(n21), .A4(n22), .Y(n17) );
  NOR3X0_RVT U16 ( .A1(cnt[10]), .A2(cnt[12]), .A3(cnt[11]), .Y(n19) );
  NAND2X0_RVT U17 ( .A1(n5), .A2(n6), .Y(n23) );
  OAI21X1_RVT U18 ( .A1(n7), .A2(n24), .A3(clk_out), .Y(n5) );
  OR3X2_RVT U19 ( .A1(last_clk), .A2(n7), .A3(n8), .Y(n6) );
  AND2X1_RVT U20 ( .A1(cnt[0]), .A2(n17), .Y(n11) );
  OR4X1_RVT U24 ( .A1(divider[2]), .A2(divider[3]), .A3(divider[4]), .A4(
        divider[5]), .Y(n16) );
  OR4X1_RVT U25 ( .A1(divider[6]), .A2(divider[7]), .A3(divider[8]), .A4(
        divider[9]), .Y(n15) );
  OR4X1_RVT U26 ( .A1(divider[0]), .A2(divider[10]), .A3(divider[11]), .A4(
        divider[12]), .Y(n14) );
  OR4X1_RVT U27 ( .A1(divider[13]), .A2(divider[14]), .A3(divider[15]), .A4(
        divider[1]), .Y(n13) );
  INVX1_RVT U28 ( .A(rst), .Y(n25) );
endmodule


module spi_shift_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [7:0] carry;

  FADDX1_RVT U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1_RVT U2_6 ( .A1(A[6]), .A2(n2), .A3(carry[6]), .Y(DIFF[6]) );
  FADDX1_RVT U2_0 ( .A(A[0]), .B(n1), .CI(1'b1), .CO(carry[1]), .S(DIFF[0]) );
  INVX1_RVT U1 ( .A(B[2]), .Y(n6) );
  INVX1_RVT U2 ( .A(B[6]), .Y(n2) );
  INVX1_RVT U3 ( .A(B[4]), .Y(n4) );
  INVX1_RVT U4 ( .A(B[5]), .Y(n3) );
  INVX1_RVT U5 ( .A(B[3]), .Y(n5) );
  INVX1_RVT U6 ( .A(B[1]), .Y(n7) );
  INVX1_RVT U7 ( .A(B[0]), .Y(n1) );
endmodule


module spi_shift_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  INVX0_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[6]), .A2(A[6]), .Y(SUM[6]) );
endmodule


module spi_shift_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [7:0] carry;

  FADDX1_RVT U2_1 ( .A(A[1]), .B(n2), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n3), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  XOR3X1_RVT U2_6 ( .A1(A[6]), .A2(n7), .A3(carry[6]), .Y(DIFF[6]) );
  FADDX1_RVT U2_0 ( .A(A[0]), .B(n1), .CI(1'b1), .CO(carry[1]), .S(DIFF[0]) );
  INVX1_RVT U1 ( .A(B[0]), .Y(n1) );
  INVX1_RVT U2 ( .A(B[1]), .Y(n2) );
  INVX1_RVT U3 ( .A(B[2]), .Y(n3) );
  INVX1_RVT U4 ( .A(B[3]), .Y(n4) );
  INVX1_RVT U5 ( .A(B[4]), .Y(n5) );
  INVX1_RVT U6 ( .A(B[6]), .Y(n7) );
  INVX1_RVT U7 ( .A(B[5]), .Y(n6) );
endmodule


module spi_shift ( clk, rst, latch, byte_sel, len, lsb, go, pos_edge, neg_edge, 
        rx_negedge, tx_negedge, tip, last, p_in, p_out, s_clk, s_in, s_out );
  input [3:0] latch;
  input [3:0] byte_sel;
  input [6:0] len;
  input [31:0] p_in;
  output [127:0] p_out;
  input clk, rst, lsb, go, pos_edge, neg_edge, rx_negedge, tx_negedge, s_clk,
         s_in;
  output tip, last, s_out;
  wire   N22, N23, N24, N25, N26, N27, N28, N31, N32, N33, N34, N35, N36, N37,
         N39, N40, N41, N42, N43, N44, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N89,
         N90, N91, N92, N93, N94, N112, n147, n151, n152, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n474, n475, n476, n477, n478, n479,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n148, n149, n150, n153, n297, n317, n390, n473, n480, n481,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767,
         n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778,
         n779, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789,
         n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, n800,
         n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811,
         n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, n822,
         n823, n824, n825, n826, n827, n828, n829, n830, n832, n833;
  wire   [7:0] cnt;

  spi_shift_DW01_sub_0 sub_83 ( .A(len), .B({N60, N59, N58, N57, N56, N55, N54}), .CI(1'b0), .DIFF({N67, N66, N65, N64, N63, N62, N61}) );
  spi_shift_DW01_inc_0 add_83 ( .A({n630, n631, n7, n633, n6, n637, n638}), 
        .SUM({N53, N52, N51, N50, N49, N48, N47}) );
  spi_shift_DW01_sub_1 sub_82 ( .A(len), .B({n630, n631, n7, n633, n6, n637, 
        n638}), .CI(1'b0), .DIFF({N37, N36, N35, N34, N33, N32, N31}) );
  DFFARX1_RVT \data_reg[57]  ( .D(n544), .CLK(clk), .RSTB(n648), .Q(p_out[57])
         );
  DFFARX1_RVT \cnt_reg[1]  ( .D(n622), .CLK(clk), .RSTB(n832), .Q(n637), .QN(
        n635) );
  DFFARX1_RVT \cnt_reg[0]  ( .D(n623), .CLK(clk), .RSTB(n832), .Q(cnt[0]), 
        .QN(n15) );
  DFFARX1_RVT \data_reg[15]  ( .D(n502), .CLK(clk), .RSTB(n832), .Q(p_out[15])
         );
  DFFARX1_RVT \data_reg[14]  ( .D(n501), .CLK(clk), .RSTB(n832), .Q(p_out[14])
         );
  DFFARX1_RVT \data_reg[13]  ( .D(n500), .CLK(clk), .RSTB(n832), .Q(p_out[13])
         );
  DFFARX1_RVT \data_reg[12]  ( .D(n499), .CLK(clk), .RSTB(n832), .Q(p_out[12])
         );
  DFFARX1_RVT \data_reg[11]  ( .D(n498), .CLK(clk), .RSTB(n832), .Q(p_out[11])
         );
  DFFARX1_RVT \data_reg[10]  ( .D(n497), .CLK(clk), .RSTB(n832), .Q(p_out[10])
         );
  DFFARX1_RVT \data_reg[9]  ( .D(n496), .CLK(clk), .RSTB(n832), .Q(p_out[9])
         );
  DFFARX1_RVT \data_reg[8]  ( .D(n495), .CLK(clk), .RSTB(n832), .Q(p_out[8])
         );
  DFFARX1_RVT \data_reg[7]  ( .D(n494), .CLK(clk), .RSTB(n832), .Q(p_out[7])
         );
  DFFARX1_RVT \data_reg[6]  ( .D(n493), .CLK(clk), .RSTB(n832), .Q(p_out[6])
         );
  DFFARX1_RVT \data_reg[5]  ( .D(n492), .CLK(clk), .RSTB(n832), .Q(p_out[5])
         );
  DFFARX1_RVT \data_reg[4]  ( .D(n491), .CLK(clk), .RSTB(n832), .Q(p_out[4])
         );
  DFFARX1_RVT \data_reg[3]  ( .D(n490), .CLK(clk), .RSTB(n832), .Q(p_out[3])
         );
  DFFARX1_RVT \data_reg[2]  ( .D(n489), .CLK(clk), .RSTB(n832), .Q(p_out[2])
         );
  DFFARX1_RVT \data_reg[1]  ( .D(n488), .CLK(clk), .RSTB(n832), .Q(p_out[1])
         );
  DFFARX1_RVT \data_reg[0]  ( .D(n487), .CLK(clk), .RSTB(n832), .Q(p_out[0])
         );
  DFFARX1_RVT s_out_reg ( .D(n615), .CLK(clk), .RSTB(n653), .Q(s_out) );
  DFFARX1_RVT \data_reg[87]  ( .D(n574), .CLK(clk), .RSTB(n651), .Q(p_out[87])
         );
  DFFARX1_RVT \data_reg[83]  ( .D(n570), .CLK(clk), .RSTB(n650), .Q(p_out[83])
         );
  DFFARX1_RVT \data_reg[95]  ( .D(n582), .CLK(clk), .RSTB(n651), .Q(p_out[95])
         );
  DFFARX1_RVT \data_reg[91]  ( .D(n578), .CLK(clk), .RSTB(n651), .Q(p_out[91])
         );
  DFFARX1_RVT \data_reg[111]  ( .D(n598), .CLK(clk), .RSTB(n652), .Q(
        p_out[111]) );
  DFFARX1_RVT \data_reg[88]  ( .D(n575), .CLK(clk), .RSTB(n651), .Q(p_out[88])
         );
  DFFARX1_RVT \data_reg[84]  ( .D(n571), .CLK(clk), .RSTB(n651), .Q(p_out[84])
         );
  DFFARX1_RVT \data_reg[92]  ( .D(n579), .CLK(clk), .RSTB(n651), .Q(p_out[92])
         );
  DFFARX1_RVT \data_reg[99]  ( .D(n586), .CLK(clk), .RSTB(n654), .Q(p_out[99])
         );
  DFFARX1_RVT \data_reg[85]  ( .D(n572), .CLK(clk), .RSTB(n651), .Q(p_out[85])
         );
  DFFARX1_RVT \data_reg[81]  ( .D(n568), .CLK(clk), .RSTB(n650), .Q(p_out[81])
         );
  DFFARX1_RVT \data_reg[63]  ( .D(n550), .CLK(clk), .RSTB(n649), .Q(p_out[63])
         );
  DFFARX1_RVT \data_reg[59]  ( .D(n546), .CLK(clk), .RSTB(n648), .Q(p_out[59])
         );
  DFFARX1_RVT \data_reg[55]  ( .D(n542), .CLK(clk), .RSTB(n648), .Q(p_out[55])
         );
  DFFARX1_RVT \data_reg[51]  ( .D(n538), .CLK(clk), .RSTB(n648), .Q(p_out[51])
         );
  DFFARX1_RVT \data_reg[93]  ( .D(n580), .CLK(clk), .RSTB(n651), .Q(p_out[93])
         );
  DFFARX1_RVT \data_reg[89]  ( .D(n576), .CLK(clk), .RSTB(n651), .Q(p_out[89])
         );
  DFFARX1_RVT \data_reg[47]  ( .D(n534), .CLK(clk), .RSTB(n647), .Q(p_out[47])
         );
  DFFARX1_RVT \data_reg[77]  ( .D(n564), .CLK(clk), .RSTB(n650), .Q(p_out[77])
         );
  DFFARX1_RVT \data_reg[65]  ( .D(n552), .CLK(clk), .RSTB(n649), .Q(p_out[65])
         );
  DFFARX1_RVT \data_reg[127]  ( .D(n614), .CLK(clk), .RSTB(n653), .Q(
        p_out[127]) );
  DFFARX1_RVT \data_reg[123]  ( .D(n610), .CLK(clk), .RSTB(n653), .Q(
        p_out[123]) );
  DFFARX1_RVT \data_reg[45]  ( .D(n532), .CLK(clk), .RSTB(n647), .Q(p_out[45])
         );
  DFFARX1_RVT \data_reg[80]  ( .D(n567), .CLK(clk), .RSTB(n650), .Q(p_out[80])
         );
  DFFARX1_RVT \data_reg[96]  ( .D(n583), .CLK(clk), .RSTB(n645), .Q(p_out[96])
         );
  DFFARX1_RVT \data_reg[33]  ( .D(n520), .CLK(clk), .RSTB(n646), .Q(p_out[33])
         );
  DFFARX1_RVT \data_reg[43]  ( .D(n530), .CLK(clk), .RSTB(n647), .Q(p_out[43])
         );
  DFFARX1_RVT \data_reg[60]  ( .D(n547), .CLK(clk), .RSTB(n649), .Q(p_out[60])
         );
  DFFARX1_RVT \data_reg[56]  ( .D(n543), .CLK(clk), .RSTB(n648), .Q(p_out[56])
         );
  DFFARX1_RVT \data_reg[52]  ( .D(n539), .CLK(clk), .RSTB(n648), .Q(p_out[52])
         );
  DFFARX1_RVT \data_reg[48]  ( .D(n535), .CLK(clk), .RSTB(n648), .Q(p_out[48])
         );
  DFFARX1_RVT \data_reg[103]  ( .D(n590), .CLK(clk), .RSTB(n654), .Q(
        p_out[103]) );
  DFFARX1_RVT \data_reg[31]  ( .D(n518), .CLK(clk), .RSTB(n646), .Q(p_out[31])
         );
  DFFARX1_RVT \data_reg[27]  ( .D(n514), .CLK(clk), .RSTB(n646), .Q(p_out[27])
         );
  DFFARX1_RVT \data_reg[23]  ( .D(n510), .CLK(clk), .RSTB(n645), .Q(p_out[23])
         );
  DFFARX1_RVT \data_reg[19]  ( .D(n506), .CLK(clk), .RSTB(n645), .Q(p_out[19])
         );
  DFFARX1_RVT \data_reg[97]  ( .D(n584), .CLK(clk), .RSTB(n645), .Q(p_out[97])
         );
  DFFARX1_RVT \data_reg[39]  ( .D(n526), .CLK(clk), .RSTB(n647), .Q(p_out[39])
         );
  DFFARX1_RVT \data_reg[35]  ( .D(n522), .CLK(clk), .RSTB(n646), .Q(p_out[35])
         );
  DFFARX1_RVT \data_reg[61]  ( .D(n548), .CLK(clk), .RSTB(n649), .Q(p_out[61])
         );
  DFFARX1_RVT \data_reg[53]  ( .D(n540), .CLK(clk), .RSTB(n648), .Q(p_out[53])
         );
  DFFARX1_RVT \data_reg[49]  ( .D(n536), .CLK(clk), .RSTB(n648), .Q(p_out[49])
         );
  DFFARX1_RVT \data_reg[119]  ( .D(n606), .CLK(clk), .RSTB(n652), .Q(
        p_out[119]) );
  DFFARX1_RVT \data_reg[115]  ( .D(n602), .CLK(clk), .RSTB(n652), .Q(
        p_out[115]) );
  DFFARX1_RVT \data_reg[86]  ( .D(n573), .CLK(clk), .RSTB(n651), .Q(p_out[86])
         );
  DFFARX1_RVT \data_reg[82]  ( .D(n569), .CLK(clk), .RSTB(n650), .Q(p_out[82])
         );
  DFFARX1_RVT \data_reg[75]  ( .D(n562), .CLK(clk), .RSTB(n650), .Q(p_out[75])
         );
  DFFARX1_RVT \data_reg[71]  ( .D(n558), .CLK(clk), .RSTB(n649), .Q(p_out[71])
         );
  DFFARX1_RVT \data_reg[67]  ( .D(n554), .CLK(clk), .RSTB(n649), .Q(p_out[67])
         );
  DFFARX1_RVT \data_reg[94]  ( .D(n581), .CLK(clk), .RSTB(n651), .Q(p_out[94])
         );
  DFFARX1_RVT \data_reg[90]  ( .D(n577), .CLK(clk), .RSTB(n651), .Q(p_out[90])
         );
  DFFARX1_RVT \data_reg[124]  ( .D(n611), .CLK(clk), .RSTB(n653), .Q(
        p_out[124]) );
  DFFARX1_RVT \data_reg[79]  ( .D(n566), .CLK(clk), .RSTB(n650), .Q(p_out[79])
         );
  DFFARX1_RVT \data_reg[125]  ( .D(n612), .CLK(clk), .RSTB(n653), .Q(
        p_out[125]) );
  DFFARX1_RVT \data_reg[121]  ( .D(n608), .CLK(clk), .RSTB(n653), .Q(
        p_out[121]) );
  DFFARX1_RVT \data_reg[40]  ( .D(n527), .CLK(clk), .RSTB(n647), .Q(p_out[40])
         );
  DFFARX1_RVT \data_reg[36]  ( .D(n523), .CLK(clk), .RSTB(n647), .Q(p_out[36])
         );
  DFFARX1_RVT \data_reg[32]  ( .D(n519), .CLK(clk), .RSTB(n646), .Q(p_out[32])
         );
  DFFARX1_RVT \data_reg[100]  ( .D(n587), .CLK(clk), .RSTB(n654), .Q(
        p_out[100]) );
  DFFARX1_RVT \data_reg[28]  ( .D(n515), .CLK(clk), .RSTB(n646), .Q(p_out[28])
         );
  DFFARX1_RVT \data_reg[24]  ( .D(n511), .CLK(clk), .RSTB(n646), .Q(p_out[24])
         );
  DFFARX1_RVT \data_reg[20]  ( .D(n507), .CLK(clk), .RSTB(n645), .Q(p_out[20])
         );
  DFFARX1_RVT \data_reg[16]  ( .D(n503), .CLK(clk), .RSTB(n645), .Q(p_out[16])
         );
  DFFARX1_RVT \data_reg[110]  ( .D(n597), .CLK(clk), .RSTB(n652), .Q(
        p_out[110]) );
  DFFARX1_RVT \data_reg[44]  ( .D(n531), .CLK(clk), .RSTB(n647), .Q(p_out[44])
         );
  DFFARX1_RVT \data_reg[120]  ( .D(n607), .CLK(clk), .RSTB(n653), .Q(
        p_out[120]) );
  DFFARX1_RVT \data_reg[116]  ( .D(n603), .CLK(clk), .RSTB(n652), .Q(
        p_out[116]) );
  DFFARX1_RVT \data_reg[112]  ( .D(n599), .CLK(clk), .RSTB(n652), .Q(
        p_out[112]) );
  DFFARX1_RVT \data_reg[101]  ( .D(n588), .CLK(clk), .RSTB(n645), .Q(
        p_out[101]) );
  DFFARX1_RVT \data_reg[29]  ( .D(n516), .CLK(clk), .RSTB(n646), .Q(p_out[29])
         );
  DFFARX1_RVT \data_reg[25]  ( .D(n512), .CLK(clk), .RSTB(n646), .Q(p_out[25])
         );
  DFFARX1_RVT \data_reg[21]  ( .D(n508), .CLK(clk), .RSTB(n645), .Q(p_out[21])
         );
  DFFARX1_RVT \data_reg[17]  ( .D(n504), .CLK(clk), .RSTB(n645), .Q(p_out[17])
         );
  DFFARX1_RVT \data_reg[76]  ( .D(n563), .CLK(clk), .RSTB(n650), .Q(p_out[76])
         );
  DFFARX1_RVT \data_reg[72]  ( .D(n559), .CLK(clk), .RSTB(n650), .Q(p_out[72])
         );
  DFFARX1_RVT \data_reg[68]  ( .D(n555), .CLK(clk), .RSTB(n649), .Q(p_out[68])
         );
  DFFARX1_RVT \data_reg[64]  ( .D(n551), .CLK(clk), .RSTB(n649), .Q(p_out[64])
         );
  DFFARX1_RVT \data_reg[41]  ( .D(n528), .CLK(clk), .RSTB(n647), .Q(p_out[41])
         );
  DFFARX1_RVT \data_reg[37]  ( .D(n524), .CLK(clk), .RSTB(n647), .Q(p_out[37])
         );
  DFFARX1_RVT \data_reg[117]  ( .D(n604), .CLK(clk), .RSTB(n652), .Q(
        p_out[117]) );
  DFFARX1_RVT \data_reg[113]  ( .D(n600), .CLK(clk), .RSTB(n652), .Q(
        p_out[113]) );
  DFFARX1_RVT \data_reg[98]  ( .D(n585), .CLK(clk), .RSTB(n654), .Q(p_out[98])
         );
  DFFARX1_RVT \data_reg[73]  ( .D(n560), .CLK(clk), .RSTB(n650), .Q(p_out[73])
         );
  DFFARX1_RVT \data_reg[69]  ( .D(n556), .CLK(clk), .RSTB(n649), .Q(p_out[69])
         );
  DFFARX1_RVT \data_reg[62]  ( .D(n549), .CLK(clk), .RSTB(n649), .Q(p_out[62])
         );
  DFFARX1_RVT \data_reg[58]  ( .D(n545), .CLK(clk), .RSTB(n648), .Q(p_out[58])
         );
  DFFARX1_RVT \data_reg[54]  ( .D(n541), .CLK(clk), .RSTB(n648), .Q(p_out[54])
         );
  DFFARX1_RVT \data_reg[50]  ( .D(n537), .CLK(clk), .RSTB(n648), .Q(p_out[50])
         );
  DFFARX1_RVT \data_reg[46]  ( .D(n533), .CLK(clk), .RSTB(n647), .Q(p_out[46])
         );
  DFFARX1_RVT \data_reg[105]  ( .D(n592), .CLK(clk), .RSTB(n645), .Q(
        p_out[105]) );
  DFFARX1_RVT \data_reg[126]  ( .D(n613), .CLK(clk), .RSTB(n653), .Q(
        p_out[126]) );
  DFFARX1_RVT \data_reg[122]  ( .D(n609), .CLK(clk), .RSTB(n653), .Q(
        p_out[122]) );
  DFFARX1_RVT \data_reg[107]  ( .D(n594), .CLK(clk), .RSTB(n654), .Q(
        p_out[107]) );
  DFFARX1_RVT \data_reg[42]  ( .D(n529), .CLK(clk), .RSTB(n647), .Q(p_out[42])
         );
  DFFARX1_RVT \data_reg[38]  ( .D(n525), .CLK(clk), .RSTB(n647), .Q(p_out[38])
         );
  DFFARX1_RVT \data_reg[34]  ( .D(n521), .CLK(clk), .RSTB(n646), .Q(p_out[34])
         );
  DFFARX1_RVT \data_reg[102]  ( .D(n589), .CLK(clk), .RSTB(n654), .Q(
        p_out[102]) );
  DFFARX1_RVT \data_reg[30]  ( .D(n517), .CLK(clk), .RSTB(n646), .Q(p_out[30])
         );
  DFFARX1_RVT \data_reg[26]  ( .D(n513), .CLK(clk), .RSTB(n646), .Q(p_out[26])
         );
  DFFARX1_RVT \data_reg[22]  ( .D(n509), .CLK(clk), .RSTB(n645), .Q(p_out[22])
         );
  DFFARX1_RVT \data_reg[18]  ( .D(n505), .CLK(clk), .RSTB(n645), .Q(p_out[18])
         );
  DFFARX1_RVT \data_reg[118]  ( .D(n605), .CLK(clk), .RSTB(n652), .Q(
        p_out[118]) );
  DFFARX1_RVT \data_reg[114]  ( .D(n601), .CLK(clk), .RSTB(n652), .Q(
        p_out[114]) );
  DFFARX1_RVT \data_reg[74]  ( .D(n561), .CLK(clk), .RSTB(n650), .Q(p_out[74])
         );
  DFFARX1_RVT \data_reg[70]  ( .D(n557), .CLK(clk), .RSTB(n649), .Q(p_out[70])
         );
  DFFARX1_RVT \data_reg[66]  ( .D(n553), .CLK(clk), .RSTB(n649), .Q(p_out[66])
         );
  DFFARX1_RVT \data_reg[108]  ( .D(n595), .CLK(clk), .RSTB(n652), .Q(
        p_out[108]) );
  DFFARX1_RVT \data_reg[104]  ( .D(n591), .CLK(clk), .RSTB(n654), .Q(
        p_out[104]) );
  DFFARX1_RVT \data_reg[78]  ( .D(n565), .CLK(clk), .RSTB(n650), .Q(p_out[78])
         );
  DFFARX1_RVT \data_reg[109]  ( .D(n596), .CLK(clk), .RSTB(n652), .Q(
        p_out[109]) );
  DFFARX1_RVT \data_reg[106]  ( .D(n593), .CLK(clk), .RSTB(n654), .Q(
        p_out[106]) );
  DFFARX1_RVT \cnt_reg[6]  ( .D(n617), .CLK(clk), .RSTB(n653), .Q(n4), .QN(n11) );
  DFFARX1_RVT \cnt_reg[7]  ( .D(n616), .CLK(clk), .RSTB(n653), .Q(cnt[7]), 
        .QN(n26) );
  DFFARX1_RVT \cnt_reg[5]  ( .D(n618), .CLK(clk), .RSTB(n653), .Q(cnt[5]) );
  DFFARX1_RVT \cnt_reg[4]  ( .D(n619), .CLK(clk), .RSTB(n654), .Q(n7), .QN(n10) );
  DFFARX1_RVT \cnt_reg[3]  ( .D(n620), .CLK(clk), .RSTB(n654), .Q(n5), .QN(n9)
         );
  DFFARX1_RVT \cnt_reg[2]  ( .D(n621), .CLK(clk), .RSTB(n654), .Q(n6), .QN(n8)
         );
  DFFARX1_RVT tip_reg ( .D(n624), .CLK(clk), .RSTB(n654), .Q(tip), .QN(n147)
         );
  INVX0_RVT U3 ( .A(n832), .Y(n655) );
  INVX0_RVT U4 ( .A(n655), .Y(n654) );
  INVX0_RVT U5 ( .A(n655), .Y(n645) );
  INVX1_RVT U6 ( .A(n674), .Y(n680) );
  INVX1_RVT U7 ( .A(n675), .Y(n679) );
  INVX1_RVT U10 ( .A(n387), .Y(n828) );
  INVX1_RVT U11 ( .A(n641), .Y(n642) );
  AND4X1_RVT U12 ( .A1(n139), .A2(n821), .A3(n276), .A4(n314), .Y(n391) );
  AND4X1_RVT U13 ( .A1(n139), .A2(n756), .A3(n820), .A4(n239), .Y(n206) );
  AND4X1_RVT U14 ( .A1(n139), .A2(n239), .A3(n276), .A4(n314), .Y(n426) );
  AND4X1_RVT U15 ( .A1(n139), .A2(n756), .A3(n239), .A4(n276), .Y(n279) );
  AND4X1_RVT U16 ( .A1(n139), .A2(n820), .A3(n239), .A4(n314), .Y(n353) );
  OR4X1_RVT U17 ( .A1(len[0]), .A2(len[1]), .A3(len[2]), .A4(len[3]), .Y(n24)
         );
  AND2X1_RVT U18 ( .A1(n136), .A2(n138), .Y(n3) );
  AND2X1_RVT U19 ( .A1(n242), .A2(byte_sel[3]), .Y(n12) );
  NAND3X0_RVT U20 ( .A1(n386), .A2(n387), .A3(n829), .Y(n13) );
  XOR2X1_RVT U21 ( .A1(n687), .A2(cnt[7]), .Y(n14) );
  INVX1_RVT U22 ( .A(n673), .Y(n681) );
  NBUFFX2_RVT U23 ( .A(cnt[0]), .Y(n638) );
  AND4X1_RVT U24 ( .A1(n203), .A2(n756), .A3(n820), .A4(n821), .Y(n155) );
  INVX1_RVT U25 ( .A(n471), .Y(n829) );
  AO21X1_RVT U26 ( .A1(p_in[30]), .A2(n830), .A3(n664), .Y(n235) );
  AO21X1_RVT U27 ( .A1(n627), .A2(p_in[2]), .A3(n664), .Y(n247) );
  AO21X1_RVT U28 ( .A1(n629), .A2(p_in[10]), .A3(n665), .Y(n264) );
  AO21X1_RVT U29 ( .A1(n661), .A2(p_in[2]), .A3(n667), .Y(n322) );
  AO21X1_RVT U30 ( .A1(p_in[16]), .A2(n644), .A3(n663), .Y(n204) );
  AO21X1_RVT U31 ( .A1(p_in[17]), .A2(n644), .A3(n663), .Y(n208) );
  AO21X1_RVT U32 ( .A1(n242), .A2(p_in[0]), .A3(n664), .Y(n240) );
  AO21X1_RVT U33 ( .A1(n242), .A2(p_in[4]), .A3(n665), .Y(n251) );
  AO21X1_RVT U34 ( .A1(n629), .A2(p_in[8]), .A3(n665), .Y(n259) );
  AO21X1_RVT U35 ( .A1(n242), .A2(p_in[13]), .A3(n665), .Y(n270) );
  AO21X1_RVT U36 ( .A1(p_in[19]), .A2(n643), .A3(n663), .Y(n212) );
  AO21X1_RVT U37 ( .A1(p_in[23]), .A2(n644), .A3(n663), .Y(n220) );
  AO21X1_RVT U38 ( .A1(p_in[27]), .A2(n142), .A3(n664), .Y(n229) );
  AO21X1_RVT U39 ( .A1(p_in[31]), .A2(n830), .A3(n664), .Y(n237) );
  AO21X1_RVT U40 ( .A1(n659), .A2(p_in[0]), .A3(n667), .Y(n315) );
  AO21X1_RVT U41 ( .A1(n661), .A2(p_in[1]), .A3(n667), .Y(n320) );
  AO21X1_RVT U42 ( .A1(n661), .A2(p_in[4]), .A3(n667), .Y(n326) );
  AO21X1_RVT U43 ( .A1(n661), .A2(p_in[5]), .A3(n667), .Y(n328) );
  AO21X1_RVT U44 ( .A1(n627), .A2(p_in[11]), .A3(n665), .Y(n266) );
  AO21X1_RVT U45 ( .A1(n242), .A2(p_in[15]), .A3(n665), .Y(n274) );
  AO21X1_RVT U46 ( .A1(n628), .A2(p_in[19]), .A3(n666), .Y(n285) );
  AO21X1_RVT U47 ( .A1(n629), .A2(p_in[27]), .A3(n666), .Y(n302) );
  AO21X1_RVT U48 ( .A1(n661), .A2(p_in[3]), .A3(n667), .Y(n324) );
  AO21X1_RVT U49 ( .A1(n661), .A2(p_in[7]), .A3(n667), .Y(n332) );
  AO21X1_RVT U50 ( .A1(n660), .A2(p_in[11]), .A3(n668), .Y(n341) );
  AO21X1_RVT U51 ( .A1(p_in[6]), .A2(n644), .A3(n662), .Y(n172) );
  AO21X1_RVT U52 ( .A1(p_in[7]), .A2(n643), .A3(n662), .Y(n175) );
  AO21X1_RVT U53 ( .A1(p_in[8]), .A2(n644), .A3(n662), .Y(n178) );
  AO21X1_RVT U54 ( .A1(p_in[9]), .A2(n643), .A3(n662), .Y(n182) );
  AO21X1_RVT U55 ( .A1(p_in[10]), .A2(n643), .A3(n662), .Y(n185) );
  AO21X1_RVT U56 ( .A1(p_in[11]), .A2(n643), .A3(n662), .Y(n188) );
  AO21X1_RVT U57 ( .A1(p_in[12]), .A2(n644), .A3(n663), .Y(n191) );
  AO21X1_RVT U58 ( .A1(p_in[13]), .A2(n644), .A3(n663), .Y(n194) );
  AO21X1_RVT U59 ( .A1(p_in[14]), .A2(n643), .A3(n663), .Y(n197) );
  AO21X1_RVT U60 ( .A1(p_in[15]), .A2(n644), .A3(n663), .Y(n200) );
  AO21X1_RVT U61 ( .A1(p_in[1]), .A2(n830), .A3(n662), .Y(n157) );
  AO21X1_RVT U62 ( .A1(p_in[2]), .A2(n643), .A3(n662), .Y(n160) );
  AO21X1_RVT U63 ( .A1(p_in[3]), .A2(n644), .A3(n662), .Y(n163) );
  AO21X1_RVT U64 ( .A1(p_in[4]), .A2(n643), .A3(n662), .Y(n166) );
  AO21X1_RVT U65 ( .A1(p_in[5]), .A2(n142), .A3(n662), .Y(n169) );
  AO21X1_RVT U66 ( .A1(n660), .A2(p_in[16]), .A3(n668), .Y(n351) );
  INVX0_RVT U67 ( .A(n22), .Y(n672) );
  AND4X1_RVT U68 ( .A1(n139), .A2(n756), .A3(n821), .A4(n276), .Y(n243) );
  AND4X1_RVT U69 ( .A1(n139), .A2(n820), .A3(n821), .A4(n314), .Y(n318) );
  AO21X1_RVT U70 ( .A1(n6), .A2(n682), .A3(n691), .Y(N90) );
  NAND2X0_RVT U71 ( .A1(s_in), .A2(n203), .Y(n22) );
  AO21X1_RVT U72 ( .A1(n657), .A2(p_in[22]), .A3(n671), .Y(n444) );
  AO21X1_RVT U73 ( .A1(n658), .A2(p_in[8]), .A3(n670), .Y(n407) );
  AO21X1_RVT U74 ( .A1(n658), .A2(p_in[9]), .A3(n670), .Y(n410) );
  AO21X1_RVT U75 ( .A1(p_in[22]), .A2(n643), .A3(n663), .Y(n218) );
  AO21X1_RVT U76 ( .A1(n628), .A2(p_in[14]), .A3(n665), .Y(n272) );
  AO21X1_RVT U77 ( .A1(n627), .A2(p_in[22]), .A3(n666), .Y(n291) );
  AO21X1_RVT U78 ( .A1(n242), .A2(p_in[26]), .A3(n666), .Y(n300) );
  AO21X1_RVT U79 ( .A1(n658), .A2(p_in[2]), .A3(n670), .Y(n395) );
  AO21X1_RVT U80 ( .A1(n658), .A2(p_in[6]), .A3(n670), .Y(n403) );
  AO21X1_RVT U81 ( .A1(n657), .A2(p_in[12]), .A3(n671), .Y(n416) );
  AO21X1_RVT U82 ( .A1(n657), .A2(p_in[13]), .A3(n671), .Y(n418) );
  AO21X1_RVT U83 ( .A1(n657), .A2(p_in[16]), .A3(n671), .Y(n424) );
  AO21X1_RVT U84 ( .A1(n657), .A2(p_in[17]), .A3(n671), .Y(n430) );
  AO21X1_RVT U85 ( .A1(n657), .A2(p_in[20]), .A3(n671), .Y(n439) );
  AO21X1_RVT U86 ( .A1(n657), .A2(p_in[21]), .A3(n671), .Y(n442) );
  AO21X1_RVT U87 ( .A1(n661), .A2(p_in[6]), .A3(n667), .Y(n330) );
  AO21X1_RVT U88 ( .A1(n661), .A2(p_in[10]), .A3(n668), .Y(n339) );
  AO21X1_RVT U89 ( .A1(n660), .A2(p_in[15]), .A3(n668), .Y(n349) );
  AO21X1_RVT U90 ( .A1(n657), .A2(p_in[11]), .A3(n670), .Y(n414) );
  AO21X1_RVT U91 ( .A1(n657), .A2(p_in[14]), .A3(n671), .Y(n420) );
  AO21X1_RVT U92 ( .A1(n627), .A2(p_in[25]), .A3(n666), .Y(n298) );
  AO21X1_RVT U93 ( .A1(p_in[20]), .A2(n644), .A3(n663), .Y(n214) );
  AO21X1_RVT U94 ( .A1(p_in[21]), .A2(n643), .A3(n663), .Y(n216) );
  AO21X1_RVT U95 ( .A1(p_in[24]), .A2(n142), .A3(n664), .Y(n222) );
  AO21X1_RVT U96 ( .A1(p_in[25]), .A2(n830), .A3(n664), .Y(n225) );
  AO21X1_RVT U97 ( .A1(p_in[28]), .A2(n142), .A3(n664), .Y(n231) );
  AO21X1_RVT U98 ( .A1(p_in[29]), .A2(n142), .A3(n664), .Y(n233) );
  AO21X1_RVT U99 ( .A1(n660), .A2(p_in[18]), .A3(n668), .Y(n357) );
  AO21X1_RVT U100 ( .A1(n660), .A2(p_in[22]), .A3(n669), .Y(n365) );
  AO21X1_RVT U101 ( .A1(n659), .A2(p_in[30]), .A3(n669), .Y(n382) );
  AO21X1_RVT U102 ( .A1(n627), .A2(p_in[1]), .A3(n664), .Y(n245) );
  AO21X1_RVT U103 ( .A1(n629), .A2(p_in[5]), .A3(n665), .Y(n253) );
  AO21X1_RVT U104 ( .A1(n627), .A2(p_in[9]), .A3(n665), .Y(n262) );
  AO21X1_RVT U105 ( .A1(n627), .A2(p_in[12]), .A3(n665), .Y(n268) );
  AO21X1_RVT U106 ( .A1(n627), .A2(p_in[16]), .A3(n666), .Y(n277) );
  AO21X1_RVT U107 ( .A1(n629), .A2(p_in[17]), .A3(n666), .Y(n281) );
  AO21X1_RVT U108 ( .A1(n627), .A2(p_in[20]), .A3(n666), .Y(n287) );
  AO21X1_RVT U109 ( .A1(n627), .A2(p_in[21]), .A3(n666), .Y(n289) );
  AO21X1_RVT U110 ( .A1(n629), .A2(p_in[24]), .A3(n666), .Y(n295) );
  AO21X1_RVT U111 ( .A1(n628), .A2(p_in[28]), .A3(n667), .Y(n304) );
  AO21X1_RVT U112 ( .A1(n629), .A2(p_in[29]), .A3(n667), .Y(n306) );
  AO21X1_RVT U113 ( .A1(n656), .A2(p_in[0]), .A3(n670), .Y(n388) );
  AO21X1_RVT U114 ( .A1(n658), .A2(p_in[1]), .A3(n670), .Y(n393) );
  AO21X1_RVT U115 ( .A1(n658), .A2(p_in[4]), .A3(n670), .Y(n399) );
  AO21X1_RVT U116 ( .A1(n658), .A2(p_in[5]), .A3(n670), .Y(n401) );
  AO21X1_RVT U117 ( .A1(n657), .A2(p_in[19]), .A3(n671), .Y(n436) );
  AO21X1_RVT U118 ( .A1(n656), .A2(p_in[23]), .A3(n671), .Y(n446) );
  AO21X1_RVT U119 ( .A1(n661), .A2(p_in[8]), .A3(n668), .Y(n334) );
  AO21X1_RVT U120 ( .A1(n661), .A2(p_in[9]), .A3(n668), .Y(n337) );
  AO21X1_RVT U121 ( .A1(n660), .A2(p_in[12]), .A3(n668), .Y(n343) );
  AO21X1_RVT U122 ( .A1(n660), .A2(p_in[13]), .A3(n668), .Y(n345) );
  AO21X1_RVT U123 ( .A1(n242), .A2(p_in[3]), .A3(n664), .Y(n249) );
  AO21X1_RVT U124 ( .A1(n628), .A2(p_in[7]), .A3(n665), .Y(n257) );
  AO21X1_RVT U125 ( .A1(n629), .A2(p_in[23]), .A3(n666), .Y(n293) );
  AO21X1_RVT U126 ( .A1(n629), .A2(p_in[31]), .A3(n667), .Y(n310) );
  AO21X1_RVT U127 ( .A1(n660), .A2(p_in[17]), .A3(n668), .Y(n355) );
  AO21X1_RVT U128 ( .A1(n659), .A2(p_in[25]), .A3(n669), .Y(n372) );
  AO21X1_RVT U129 ( .A1(n660), .A2(p_in[20]), .A3(n669), .Y(n361) );
  AO21X1_RVT U130 ( .A1(n660), .A2(p_in[21]), .A3(n669), .Y(n363) );
  AO21X1_RVT U131 ( .A1(n660), .A2(p_in[24]), .A3(n669), .Y(n369) );
  AO21X1_RVT U132 ( .A1(n659), .A2(p_in[28]), .A3(n669), .Y(n378) );
  AO21X1_RVT U133 ( .A1(n659), .A2(p_in[29]), .A3(n669), .Y(n380) );
  AO21X1_RVT U134 ( .A1(n658), .A2(p_in[3]), .A3(n670), .Y(n397) );
  AO21X1_RVT U135 ( .A1(n658), .A2(p_in[7]), .A3(n670), .Y(n405) );
  AO21X1_RVT U136 ( .A1(n657), .A2(p_in[15]), .A3(n671), .Y(n422) );
  AO21X1_RVT U137 ( .A1(n660), .A2(p_in[19]), .A3(n668), .Y(n359) );
  AO21X1_RVT U138 ( .A1(n659), .A2(p_in[23]), .A3(n669), .Y(n367) );
  AO21X1_RVT U139 ( .A1(n659), .A2(p_in[27]), .A3(n669), .Y(n376) );
  AO21X1_RVT U140 ( .A1(n659), .A2(p_in[31]), .A3(n669), .Y(n384) );
  OR4X1_RVT U141 ( .A1(cnt[0]), .A2(n636), .A3(n634), .A4(n5), .Y(n486) );
  AO21X1_RVT U142 ( .A1(n7), .A2(n684), .A3(n689), .Y(N92) );
  AO21X1_RVT U143 ( .A1(n633), .A2(n683), .A3(n690), .Y(N91) );
  AO21X1_RVT U144 ( .A1(n637), .A2(n638), .A3(n681), .Y(N89) );
  AO22X1_RVT U145 ( .A1(go), .A2(n141), .A3(n484), .A4(tip), .Y(n483) );
  OR4X1_RVT U146 ( .A1(len[4]), .A2(len[5]), .A3(len[6]), .A4(tip), .Y(n25) );
  AO21X1_RVT U147 ( .A1(n154), .A2(n155), .A3(n156), .Y(n152) );
  AO21X1_RVT U148 ( .A1(n174), .A2(n155), .A3(n156), .Y(n173) );
  AO21X1_RVT U149 ( .A1(n177), .A2(n155), .A3(n156), .Y(n176) );
  AO21X1_RVT U150 ( .A1(n180), .A2(n16), .A3(n181), .Y(n179) );
  AO21X1_RVT U151 ( .A1(n184), .A2(n16), .A3(n181), .Y(n183) );
  AO21X1_RVT U152 ( .A1(n187), .A2(n155), .A3(n181), .Y(n186) );
  AO21X1_RVT U153 ( .A1(n190), .A2(n16), .A3(n181), .Y(n189) );
  AO21X1_RVT U154 ( .A1(n193), .A2(n155), .A3(n181), .Y(n192) );
  AO21X1_RVT U155 ( .A1(n196), .A2(n16), .A3(n181), .Y(n195) );
  AO21X1_RVT U156 ( .A1(n199), .A2(n16), .A3(n181), .Y(n198) );
  AO21X1_RVT U157 ( .A1(n202), .A2(n16), .A3(n181), .Y(n201) );
  AO21X1_RVT U158 ( .A1(n159), .A2(n16), .A3(n156), .Y(n158) );
  AO21X1_RVT U159 ( .A1(n162), .A2(n16), .A3(n156), .Y(n161) );
  AO21X1_RVT U160 ( .A1(n165), .A2(n155), .A3(n156), .Y(n164) );
  AO21X1_RVT U161 ( .A1(n168), .A2(n155), .A3(n156), .Y(n167) );
  AO21X1_RVT U162 ( .A1(n171), .A2(n155), .A3(n156), .Y(n170) );
  INVX1_RVT U163 ( .A(n479), .Y(n23) );
  OR4X1_RVT U164 ( .A1(n632), .A2(cnt[5]), .A3(n4), .A4(cnt[7]), .Y(n485) );
  NBUFFX2_RVT U165 ( .A(n155), .Y(n16) );
  INVX1_RVT U166 ( .A(n17), .Y(n134) );
  INVX1_RVT U167 ( .A(n17), .Y(n135) );
  INVX1_RVT U168 ( .A(n17), .Y(n133) );
  INVX0_RVT U169 ( .A(n676), .Y(n678) );
  INVX1_RVT U170 ( .A(n18), .Y(n125) );
  INVX1_RVT U171 ( .A(n18), .Y(n126) );
  INVX1_RVT U172 ( .A(n20), .Y(n128) );
  INVX1_RVT U173 ( .A(n20), .Y(n129) );
  INVX1_RVT U174 ( .A(n19), .Y(n131) );
  INVX1_RVT U175 ( .A(n19), .Y(n132) );
  NAND2X0_RVT U176 ( .A1(n117), .A2(n118), .Y(n17) );
  INVX1_RVT U177 ( .A(n20), .Y(n127) );
  INVX1_RVT U178 ( .A(N24), .Y(n119) );
  AND2X1_RVT U179 ( .A1(n822), .A2(n823), .Y(n428) );
  AND2X1_RVT U180 ( .A1(n822), .A2(n448), .Y(n441) );
  INVX1_RVT U181 ( .A(n19), .Y(n130) );
  INVX1_RVT U182 ( .A(n18), .Y(n124) );
  AND2X1_RVT U183 ( .A1(n432), .A2(n428), .Y(n159) );
  AND2X1_RVT U184 ( .A1(n441), .A2(n432), .Y(n171) );
  AND2X1_RVT U185 ( .A1(n453), .A2(n432), .Y(n184) );
  AND2X1_RVT U186 ( .A1(n462), .A2(n432), .Y(n196) );
  AND2X1_RVT U187 ( .A1(n441), .A2(n429), .Y(n168) );
  AND2X1_RVT U188 ( .A1(n453), .A2(n429), .Y(n180) );
  AND2X1_RVT U189 ( .A1(n462), .A2(n429), .Y(n193) );
  INVX1_RVT U190 ( .A(n448), .Y(n823) );
  INVX1_RVT U191 ( .A(N22), .Y(n117) );
  INVX1_RVT U192 ( .A(n13), .Y(n656) );
  INVX1_RVT U193 ( .A(n21), .Y(n659) );
  NAND2X0_RVT U194 ( .A1(N23), .A2(n117), .Y(n18) );
  INVX1_RVT U195 ( .A(N23), .Y(n118) );
  NAND2X0_RVT U196 ( .A1(N22), .A2(n118), .Y(n19) );
  NAND2X0_RVT U197 ( .A1(N23), .A2(N22), .Y(n20) );
  INVX1_RVT U198 ( .A(n13), .Y(n657) );
  INVX1_RVT U199 ( .A(n21), .Y(n660) );
  INVX1_RVT U200 ( .A(n449), .Y(n822) );
  INVX1_RVT U201 ( .A(N25), .Y(n120) );
  AND2X1_RVT U202 ( .A1(n824), .A2(n465), .Y(n432) );
  AND2X1_RVT U203 ( .A1(n824), .A2(n825), .Y(n429) );
  AO22X1_RVT U204 ( .A1(N40), .A2(n136), .A3(N33), .A4(n642), .Y(N24) );
  AND2X1_RVT U205 ( .A1(n435), .A2(n428), .Y(n162) );
  AND2X1_RVT U206 ( .A1(n438), .A2(n428), .Y(n165) );
  AND2X1_RVT U207 ( .A1(n441), .A2(n435), .Y(n174) );
  AND2X1_RVT U208 ( .A1(n441), .A2(n438), .Y(n177) );
  INVX1_RVT U209 ( .A(N26), .Y(n121) );
  INVX1_RVT U210 ( .A(n465), .Y(n825) );
  INVX1_RVT U211 ( .A(n13), .Y(n658) );
  AND2X1_RVT U212 ( .A1(n823), .A2(n449), .Y(n453) );
  INVX1_RVT U213 ( .A(n21), .Y(n661) );
  AO222X1_RVT U214 ( .A1(n6), .A2(n472), .A3(N40), .A4(n3), .A5(N63), .A6(lsb), 
        .Y(n448) );
  AND2X1_RVT U215 ( .A1(n453), .A2(n435), .Y(n187) );
  AND2X1_RVT U216 ( .A1(n462), .A2(n435), .Y(n199) );
  AND2X1_RVT U217 ( .A1(n453), .A2(n438), .Y(n190) );
  AND2X1_RVT U218 ( .A1(n462), .A2(n438), .Y(n202) );
  AND2X1_RVT U219 ( .A1(n448), .A2(n449), .Y(n462) );
  INVX1_RVT U220 ( .A(N27), .Y(n122) );
  NOR2X0_RVT U221 ( .A1(n312), .A2(n142), .Y(n242) );
  INVX1_RVT U222 ( .A(n686), .Y(n688) );
  INVX1_RVT U223 ( .A(n655), .Y(n646) );
  INVX1_RVT U224 ( .A(n655), .Y(n647) );
  INVX1_RVT U225 ( .A(n655), .Y(n649) );
  INVX1_RVT U226 ( .A(n655), .Y(n650) );
  INVX1_RVT U227 ( .A(n655), .Y(n651) );
  INVX1_RVT U228 ( .A(n655), .Y(n652) );
  INVX1_RVT U229 ( .A(n655), .Y(n653) );
  INVX1_RVT U230 ( .A(n655), .Y(n648) );
  INVX1_RVT U231 ( .A(n22), .Y(n662) );
  INVX1_RVT U232 ( .A(n22), .Y(n663) );
  INVX1_RVT U233 ( .A(n22), .Y(n664) );
  INVX1_RVT U234 ( .A(n22), .Y(n665) );
  INVX1_RVT U235 ( .A(n22), .Y(n666) );
  INVX1_RVT U236 ( .A(n22), .Y(n667) );
  INVX1_RVT U237 ( .A(n22), .Y(n668) );
  INVX1_RVT U238 ( .A(n22), .Y(n669) );
  INVX1_RVT U239 ( .A(n22), .Y(n670) );
  INVX1_RVT U240 ( .A(n22), .Y(n671) );
  AND2X1_RVT U241 ( .A1(n640), .A2(n641), .Y(n472) );
  INVX1_RVT U242 ( .A(n9), .Y(n633) );
  INVX1_RVT U243 ( .A(n8), .Y(n634) );
  INVX1_RVT U244 ( .A(n10), .Y(n632) );
  INVX1_RVT U245 ( .A(n11), .Y(n630) );
  INVX1_RVT U246 ( .A(latch[1]), .Y(n481) );
  AO22X1_RVT U247 ( .A1(n15), .A2(n136), .A3(N31), .A4(n642), .Y(N22) );
  NAND2X0_RVT U248 ( .A1(n828), .A2(n386), .Y(n21) );
  INVX1_RVT U249 ( .A(n354), .Y(n149) );
  AO22X1_RVT U250 ( .A1(N39), .A2(n136), .A3(N32), .A4(n642), .Y(N23) );
  INVX1_RVT U251 ( .A(n466), .Y(n824) );
  AO222X1_RVT U252 ( .A1(n633), .A2(n472), .A3(N41), .A4(n3), .A5(n642), .A6(
        N64), .Y(n449) );
  AO22X1_RVT U253 ( .A1(N41), .A2(n136), .A3(N34), .A4(n642), .Y(N25) );
  AND2X1_RVT U254 ( .A1(n825), .A2(n466), .Y(n435) );
  AO222X1_RVT U255 ( .A1(n638), .A2(n472), .A3(n15), .A4(n3), .A5(N61), .A6(
        lsb), .Y(n465) );
  AO22X1_RVT U256 ( .A1(N42), .A2(n136), .A3(N35), .A4(n642), .Y(N26) );
  AND2X1_RVT U257 ( .A1(n465), .A2(n466), .Y(n438) );
  INVX1_RVT U258 ( .A(N28), .Y(n123) );
  AO22X1_RVT U259 ( .A1(N43), .A2(n136), .A3(N36), .A4(n642), .Y(N27) );
  INVX1_RVT U260 ( .A(n683), .Y(n691) );
  INVX1_RVT U261 ( .A(n482), .Y(n826) );
  INVX1_RVT U262 ( .A(n476), .Y(last) );
  INVX0_RVT U263 ( .A(n635), .Y(n636) );
  AO22X1_RVT U264 ( .A1(n630), .A2(n138), .A3(N53), .A4(rx_negedge), .Y(N60)
         );
  AO22X1_RVT U265 ( .A1(n632), .A2(n138), .A3(N51), .A4(n640), .Y(N58) );
  AO22X1_RVT U266 ( .A1(n631), .A2(n138), .A3(N52), .A4(n640), .Y(N59) );
  AO22X1_RVT U267 ( .A1(pos_edge), .A2(n639), .A3(neg_edge), .A4(rx_negedge), 
        .Y(n474) );
  AO22X1_RVT U268 ( .A1(p_out[33]), .A2(n738), .A3(n245), .A4(n246), .Y(n520)
         );
  AO21X1_RVT U269 ( .A1(n243), .A2(n159), .A3(n244), .Y(n246) );
  AO22X1_RVT U270 ( .A1(p_out[35]), .A2(n736), .A3(n249), .A4(n250), .Y(n522)
         );
  AO21X1_RVT U271 ( .A1(n243), .A2(n165), .A3(n244), .Y(n250) );
  AO22X1_RVT U272 ( .A1(p_out[37]), .A2(n734), .A3(n253), .A4(n254), .Y(n524)
         );
  AO21X1_RVT U273 ( .A1(n243), .A2(n171), .A3(n244), .Y(n254) );
  AO22X1_RVT U274 ( .A1(p_out[39]), .A2(n732), .A3(n257), .A4(n258), .Y(n526)
         );
  AO21X1_RVT U275 ( .A1(n243), .A2(n177), .A3(n244), .Y(n258) );
  AO22X1_RVT U276 ( .A1(p_out[41]), .A2(n730), .A3(n262), .A4(n263), .Y(n528)
         );
  AO21X1_RVT U277 ( .A1(n243), .A2(n184), .A3(n261), .Y(n263) );
  AO22X1_RVT U278 ( .A1(p_out[44]), .A2(n727), .A3(n268), .A4(n269), .Y(n531)
         );
  AO21X1_RVT U279 ( .A1(n243), .A2(n193), .A3(n261), .Y(n269) );
  AO22X1_RVT U280 ( .A1(p_out[46]), .A2(n725), .A3(n272), .A4(n273), .Y(n533)
         );
  AO21X1_RVT U281 ( .A1(n243), .A2(n199), .A3(n261), .Y(n273) );
  AO22X1_RVT U282 ( .A1(p_out[47]), .A2(n724), .A3(n274), .A4(n275), .Y(n534)
         );
  AO21X1_RVT U283 ( .A1(n243), .A2(n202), .A3(n261), .Y(n275) );
  NBUFFX2_RVT U284 ( .A(cnt[5]), .Y(n631) );
  OR2X1_RVT U285 ( .A1(n485), .A2(n486), .Y(n476) );
  AO21X1_RVT U286 ( .A1(n317), .A2(n154), .A3(n207), .Y(n205) );
  AO21X1_RVT U287 ( .A1(n317), .A2(n159), .A3(n207), .Y(n209) );
  AO21X1_RVT U288 ( .A1(n317), .A2(n162), .A3(n207), .Y(n211) );
  AO21X1_RVT U289 ( .A1(p_in[18]), .A2(n643), .A3(n663), .Y(n210) );
  AO21X1_RVT U290 ( .A1(n317), .A2(n165), .A3(n207), .Y(n213) );
  AO21X1_RVT U291 ( .A1(n206), .A2(n168), .A3(n207), .Y(n215) );
  AO21X1_RVT U292 ( .A1(n206), .A2(n171), .A3(n207), .Y(n217) );
  AO21X1_RVT U293 ( .A1(n206), .A2(n174), .A3(n207), .Y(n219) );
  AO21X1_RVT U294 ( .A1(n317), .A2(n177), .A3(n207), .Y(n221) );
  AO21X1_RVT U295 ( .A1(n206), .A2(n180), .A3(n224), .Y(n223) );
  AO21X1_RVT U296 ( .A1(n206), .A2(n184), .A3(n224), .Y(n226) );
  AO21X1_RVT U297 ( .A1(n206), .A2(n187), .A3(n224), .Y(n228) );
  AO21X1_RVT U298 ( .A1(p_in[26]), .A2(n830), .A3(n664), .Y(n227) );
  AO21X1_RVT U299 ( .A1(n317), .A2(n190), .A3(n224), .Y(n230) );
  AO21X1_RVT U300 ( .A1(n206), .A2(n193), .A3(n224), .Y(n232) );
  AO21X1_RVT U301 ( .A1(n206), .A2(n196), .A3(n224), .Y(n234) );
  AO21X1_RVT U302 ( .A1(n317), .A2(n199), .A3(n224), .Y(n236) );
  AO21X1_RVT U303 ( .A1(n317), .A2(n202), .A3(n224), .Y(n238) );
  AO21X1_RVT U304 ( .A1(n480), .A2(n154), .A3(n244), .Y(n241) );
  AO21X1_RVT U305 ( .A1(n480), .A2(n162), .A3(n244), .Y(n248) );
  AO21X1_RVT U306 ( .A1(n480), .A2(n168), .A3(n244), .Y(n252) );
  AO21X1_RVT U307 ( .A1(n480), .A2(n174), .A3(n244), .Y(n256) );
  AO21X1_RVT U308 ( .A1(n242), .A2(p_in[6]), .A3(n665), .Y(n255) );
  AO21X1_RVT U309 ( .A1(n480), .A2(n180), .A3(n261), .Y(n260) );
  AO21X1_RVT U310 ( .A1(n480), .A2(n187), .A3(n261), .Y(n265) );
  AO21X1_RVT U311 ( .A1(n480), .A2(n190), .A3(n261), .Y(n267) );
  AO21X1_RVT U312 ( .A1(n480), .A2(n196), .A3(n261), .Y(n271) );
  AO21X1_RVT U313 ( .A1(n390), .A2(n154), .A3(n280), .Y(n278) );
  AO21X1_RVT U314 ( .A1(n390), .A2(n159), .A3(n280), .Y(n282) );
  AO21X1_RVT U315 ( .A1(n279), .A2(n162), .A3(n280), .Y(n284) );
  AO21X1_RVT U316 ( .A1(n628), .A2(p_in[18]), .A3(n666), .Y(n283) );
  AO21X1_RVT U317 ( .A1(n390), .A2(n165), .A3(n280), .Y(n286) );
  AO21X1_RVT U318 ( .A1(n390), .A2(n168), .A3(n280), .Y(n288) );
  AO21X1_RVT U319 ( .A1(n390), .A2(n171), .A3(n280), .Y(n290) );
  AO21X1_RVT U320 ( .A1(n279), .A2(n174), .A3(n280), .Y(n292) );
  AO21X1_RVT U321 ( .A1(n390), .A2(n177), .A3(n280), .Y(n294) );
  AO21X1_RVT U322 ( .A1(n390), .A2(n180), .A3(n12), .Y(n296) );
  AO21X1_RVT U323 ( .A1(n279), .A2(n187), .A3(n12), .Y(n301) );
  AO21X1_RVT U324 ( .A1(n279), .A2(n190), .A3(n12), .Y(n303) );
  AO21X1_RVT U325 ( .A1(n279), .A2(n193), .A3(n12), .Y(n305) );
  AO21X1_RVT U326 ( .A1(n279), .A2(n196), .A3(n12), .Y(n307) );
  AO21X1_RVT U327 ( .A1(n279), .A2(n199), .A3(n12), .Y(n309) );
  AO21X1_RVT U328 ( .A1(n629), .A2(p_in[30]), .A3(n667), .Y(n308) );
  AO21X1_RVT U329 ( .A1(n279), .A2(n202), .A3(n12), .Y(n311) );
  AO21X1_RVT U330 ( .A1(n153), .A2(n154), .A3(n319), .Y(n316) );
  AO21X1_RVT U331 ( .A1(n153), .A2(n159), .A3(n319), .Y(n321) );
  AO21X1_RVT U332 ( .A1(n153), .A2(n162), .A3(n319), .Y(n323) );
  AO21X1_RVT U333 ( .A1(n153), .A2(n165), .A3(n319), .Y(n325) );
  AO21X1_RVT U334 ( .A1(n153), .A2(n168), .A3(n319), .Y(n327) );
  AO21X1_RVT U335 ( .A1(n153), .A2(n171), .A3(n319), .Y(n329) );
  AO21X1_RVT U336 ( .A1(n318), .A2(n174), .A3(n319), .Y(n331) );
  AO21X1_RVT U337 ( .A1(n153), .A2(n177), .A3(n319), .Y(n333) );
  AO21X1_RVT U338 ( .A1(n318), .A2(n180), .A3(n336), .Y(n335) );
  AO21X1_RVT U339 ( .A1(n318), .A2(n184), .A3(n336), .Y(n338) );
  AO21X1_RVT U340 ( .A1(n318), .A2(n187), .A3(n336), .Y(n340) );
  AO21X1_RVT U341 ( .A1(n153), .A2(n190), .A3(n336), .Y(n342) );
  AO21X1_RVT U342 ( .A1(n318), .A2(n193), .A3(n336), .Y(n344) );
  AO21X1_RVT U343 ( .A1(n318), .A2(n196), .A3(n336), .Y(n346) );
  AO21X1_RVT U344 ( .A1(n318), .A2(n199), .A3(n336), .Y(n348) );
  AO21X1_RVT U345 ( .A1(n660), .A2(p_in[14]), .A3(n668), .Y(n347) );
  AO21X1_RVT U346 ( .A1(n318), .A2(n202), .A3(n336), .Y(n350) );
  AO21X1_RVT U347 ( .A1(n143), .A2(n159), .A3(n354), .Y(n356) );
  AO21X1_RVT U348 ( .A1(n143), .A2(n162), .A3(n354), .Y(n358) );
  AO21X1_RVT U349 ( .A1(n143), .A2(n165), .A3(n354), .Y(n360) );
  AO21X1_RVT U350 ( .A1(n143), .A2(n168), .A3(n354), .Y(n362) );
  AO21X1_RVT U351 ( .A1(n143), .A2(n171), .A3(n354), .Y(n364) );
  AO21X1_RVT U352 ( .A1(n143), .A2(n174), .A3(n354), .Y(n366) );
  AO21X1_RVT U353 ( .A1(n143), .A2(n177), .A3(n354), .Y(n368) );
  AO21X1_RVT U354 ( .A1(n353), .A2(n180), .A3(n371), .Y(n370) );
  AO21X1_RVT U355 ( .A1(n353), .A2(n184), .A3(n371), .Y(n373) );
  AO21X1_RVT U356 ( .A1(n353), .A2(n187), .A3(n371), .Y(n375) );
  AO21X1_RVT U357 ( .A1(n659), .A2(p_in[26]), .A3(n669), .Y(n374) );
  AO21X1_RVT U358 ( .A1(n353), .A2(n190), .A3(n371), .Y(n377) );
  AO21X1_RVT U359 ( .A1(n353), .A2(n193), .A3(n371), .Y(n379) );
  AO21X1_RVT U360 ( .A1(n353), .A2(n196), .A3(n371), .Y(n381) );
  AO21X1_RVT U361 ( .A1(n353), .A2(n199), .A3(n371), .Y(n383) );
  AO21X1_RVT U362 ( .A1(n353), .A2(n202), .A3(n371), .Y(n385) );
  AO21X1_RVT U363 ( .A1(n146), .A2(n154), .A3(n392), .Y(n389) );
  AO21X1_RVT U364 ( .A1(n146), .A2(n159), .A3(n392), .Y(n394) );
  AO21X1_RVT U365 ( .A1(n146), .A2(n162), .A3(n392), .Y(n396) );
  AO21X1_RVT U366 ( .A1(n146), .A2(n165), .A3(n392), .Y(n398) );
  AO21X1_RVT U367 ( .A1(n146), .A2(n168), .A3(n392), .Y(n400) );
  AO21X1_RVT U368 ( .A1(n146), .A2(n171), .A3(n392), .Y(n402) );
  AO21X1_RVT U369 ( .A1(n391), .A2(n174), .A3(n392), .Y(n404) );
  AO21X1_RVT U370 ( .A1(n146), .A2(n177), .A3(n392), .Y(n406) );
  AO21X1_RVT U371 ( .A1(n391), .A2(n180), .A3(n409), .Y(n408) );
  AO21X1_RVT U372 ( .A1(n391), .A2(n184), .A3(n409), .Y(n411) );
  AO21X1_RVT U373 ( .A1(n391), .A2(n187), .A3(n409), .Y(n413) );
  AO21X1_RVT U374 ( .A1(n658), .A2(p_in[10]), .A3(n670), .Y(n412) );
  AO21X1_RVT U375 ( .A1(n391), .A2(n190), .A3(n409), .Y(n415) );
  AO21X1_RVT U376 ( .A1(n391), .A2(n193), .A3(n409), .Y(n417) );
  AO21X1_RVT U377 ( .A1(n391), .A2(n196), .A3(n409), .Y(n419) );
  AO21X1_RVT U378 ( .A1(n391), .A2(n199), .A3(n409), .Y(n421) );
  AO21X1_RVT U379 ( .A1(n146), .A2(n202), .A3(n409), .Y(n423) );
  AO21X1_RVT U380 ( .A1(n145), .A2(n154), .A3(n427), .Y(n425) );
  AO21X1_RVT U381 ( .A1(n145), .A2(n159), .A3(n427), .Y(n431) );
  AO21X1_RVT U382 ( .A1(n145), .A2(n162), .A3(n427), .Y(n434) );
  AO21X1_RVT U383 ( .A1(n657), .A2(p_in[18]), .A3(n671), .Y(n433) );
  AO21X1_RVT U384 ( .A1(n145), .A2(n165), .A3(n427), .Y(n437) );
  AO21X1_RVT U385 ( .A1(n145), .A2(n168), .A3(n427), .Y(n440) );
  AO21X1_RVT U386 ( .A1(n426), .A2(n171), .A3(n427), .Y(n443) );
  AO21X1_RVT U387 ( .A1(n426), .A2(n174), .A3(n427), .Y(n445) );
  AO21X1_RVT U388 ( .A1(n145), .A2(n177), .A3(n427), .Y(n447) );
  AO21X1_RVT U389 ( .A1(p_in[0]), .A2(n644), .A3(n662), .Y(n151) );
  AO21X1_RVT U390 ( .A1(n390), .A2(n184), .A3(n12), .Y(n299) );
  INVX1_RVT U391 ( .A(n147), .Y(n140) );
  AND2X1_RVT U392 ( .A1(n656), .A2(byte_sel[0]), .Y(n392) );
  AND2X1_RVT U393 ( .A1(n656), .A2(byte_sel[1]), .Y(n409) );
  AND2X1_RVT U394 ( .A1(n656), .A2(byte_sel[2]), .Y(n427) );
  AND2X1_RVT U395 ( .A1(n656), .A2(byte_sel[3]), .Y(n452) );
  AND2X1_RVT U396 ( .A1(n659), .A2(byte_sel[2]), .Y(n354) );
  AND2X1_RVT U397 ( .A1(n659), .A2(byte_sel[0]), .Y(n319) );
  AND2X1_RVT U398 ( .A1(n659), .A2(byte_sel[1]), .Y(n336) );
  AND2X1_RVT U399 ( .A1(n659), .A2(byte_sel[3]), .Y(n371) );
  AO21X1_RVT U400 ( .A1(n656), .A2(p_in[26]), .A3(n672), .Y(n456) );
  AO21X1_RVT U401 ( .A1(n426), .A2(n187), .A3(n452), .Y(n457) );
  AO21X1_RVT U402 ( .A1(n656), .A2(p_in[27]), .A3(n672), .Y(n458) );
  AO21X1_RVT U403 ( .A1(n145), .A2(n190), .A3(n452), .Y(n459) );
  AO21X1_RVT U404 ( .A1(n656), .A2(p_in[30]), .A3(n672), .Y(n467) );
  AO21X1_RVT U405 ( .A1(n426), .A2(n199), .A3(n452), .Y(n468) );
  AO21X1_RVT U406 ( .A1(n656), .A2(p_in[31]), .A3(n672), .Y(n469) );
  AO21X1_RVT U407 ( .A1(n145), .A2(n202), .A3(n452), .Y(n470) );
  AO22X1_RVT U408 ( .A1(N112), .A2(n477), .A3(s_out), .A4(n827), .Y(n615) );
  INVX1_RVT U409 ( .A(n477), .Y(n827) );
  AO21X1_RVT U410 ( .A1(n478), .A2(n476), .A3(n141), .Y(n477) );
  AO21X1_RVT U411 ( .A1(n657), .A2(p_in[24]), .A3(n672), .Y(n450) );
  AO21X1_RVT U412 ( .A1(n426), .A2(n180), .A3(n452), .Y(n451) );
  AO21X1_RVT U413 ( .A1(n656), .A2(p_in[25]), .A3(n672), .Y(n454) );
  AO21X1_RVT U414 ( .A1(n426), .A2(n184), .A3(n452), .Y(n455) );
  AO21X1_RVT U415 ( .A1(n656), .A2(p_in[28]), .A3(n672), .Y(n460) );
  AO21X1_RVT U416 ( .A1(n426), .A2(n193), .A3(n452), .Y(n461) );
  AO21X1_RVT U417 ( .A1(n656), .A2(p_in[29]), .A3(n672), .Y(n463) );
  AO21X1_RVT U418 ( .A1(n426), .A2(n196), .A3(n452), .Y(n464) );
  NOR2X0_RVT U419 ( .A1(n626), .A2(n625), .Y(n244) );
  INVX1_RVT U420 ( .A(byte_sel[0]), .Y(n625) );
  AO222X1_RVT U421 ( .A1(n637), .A2(n472), .A3(N39), .A4(n3), .A5(N62), .A6(
        n642), .Y(n466) );
  OAI222X1_RVT U422 ( .A1(n14), .A2(n23), .A3(n24), .A4(n25), .A5(n26), .A6(
        n482), .Y(n616) );
  AND2X1_RVT U423 ( .A1(tip), .A2(n482), .Y(n479) );
  AND2X1_RVT U424 ( .A1(n628), .A2(byte_sel[1]), .Y(n261) );
  AND2X1_RVT U425 ( .A1(n628), .A2(byte_sel[2]), .Y(n280) );
  INVX1_RVT U426 ( .A(n685), .Y(n689) );
  INVX1_RVT U427 ( .A(n684), .Y(n690) );
  AO22X1_RVT U428 ( .A1(N44), .A2(n136), .A3(N37), .A4(n642), .Y(N28) );
  AND2X1_RVT U429 ( .A1(last), .A2(pos_edge), .Y(n484) );
  OR2X1_RVT U430 ( .A1(n147), .A2(pos_edge), .Y(n482) );
  AO22X1_RVT U431 ( .A1(pos_edge), .A2(n833), .A3(tx_negedge), .A4(neg_edge), 
        .Y(n478) );
  INVX1_RVT U432 ( .A(tx_negedge), .Y(n833) );
  INVX1_RVT U433 ( .A(rst), .Y(n832) );
  AND2X1_RVT U434 ( .A1(n119), .A2(n120), .Y(n102) );
  AO22X1_RVT U435 ( .A1(p_out[99]), .A2(n127), .A3(p_out[98]), .A4(n124), .Y(
        n27) );
  AO221X1_RVT U436 ( .A1(p_out[96]), .A2(n133), .A3(p_out[97]), .A4(n130), 
        .A5(n27), .Y(n35) );
  AND2X1_RVT U437 ( .A1(N24), .A2(n120), .Y(n104) );
  AO22X1_RVT U438 ( .A1(p_out[103]), .A2(n127), .A3(p_out[102]), .A4(n124), 
        .Y(n28) );
  AO221X1_RVT U439 ( .A1(p_out[100]), .A2(n133), .A3(p_out[101]), .A4(n130), 
        .A5(n28), .Y(n34) );
  AND2X1_RVT U440 ( .A1(N25), .A2(N24), .Y(n107) );
  AO22X1_RVT U441 ( .A1(p_out[111]), .A2(n127), .A3(p_out[110]), .A4(n124), 
        .Y(n29) );
  AO221X1_RVT U442 ( .A1(p_out[108]), .A2(n133), .A3(p_out[109]), .A4(n130), 
        .A5(n29), .Y(n32) );
  AND2X1_RVT U443 ( .A1(N25), .A2(n119), .Y(n109) );
  AO22X1_RVT U444 ( .A1(p_out[107]), .A2(n127), .A3(p_out[106]), .A4(n124), 
        .Y(n30) );
  AO221X1_RVT U445 ( .A1(p_out[104]), .A2(n133), .A3(p_out[105]), .A4(n130), 
        .A5(n30), .Y(n31) );
  AO22X1_RVT U446 ( .A1(n107), .A2(n32), .A3(n109), .A4(n31), .Y(n33) );
  AO221X1_RVT U447 ( .A1(n102), .A2(n35), .A3(n104), .A4(n34), .A5(n33), .Y(
        n46) );
  AO22X1_RVT U448 ( .A1(p_out[123]), .A2(n127), .A3(p_out[122]), .A4(n124), 
        .Y(n36) );
  AO221X1_RVT U449 ( .A1(p_out[120]), .A2(n133), .A3(p_out[121]), .A4(n130), 
        .A5(n36), .Y(n44) );
  AO22X1_RVT U450 ( .A1(p_out[127]), .A2(n127), .A3(p_out[126]), .A4(n124), 
        .Y(n37) );
  AO221X1_RVT U451 ( .A1(p_out[124]), .A2(n133), .A3(p_out[125]), .A4(n130), 
        .A5(n37), .Y(n43) );
  AO22X1_RVT U452 ( .A1(p_out[119]), .A2(n127), .A3(p_out[118]), .A4(n124), 
        .Y(n38) );
  AO221X1_RVT U453 ( .A1(p_out[116]), .A2(n133), .A3(p_out[117]), .A4(n130), 
        .A5(n38), .Y(n41) );
  AO22X1_RVT U454 ( .A1(p_out[115]), .A2(n127), .A3(p_out[114]), .A4(n124), 
        .Y(n39) );
  AO221X1_RVT U455 ( .A1(p_out[112]), .A2(n133), .A3(p_out[113]), .A4(n130), 
        .A5(n39), .Y(n40) );
  AO22X1_RVT U456 ( .A1(n41), .A2(n104), .A3(n40), .A4(n102), .Y(n42) );
  AO221X1_RVT U457 ( .A1(n44), .A2(n109), .A3(n43), .A4(n107), .A5(n42), .Y(
        n45) );
  AO22X1_RVT U458 ( .A1(n46), .A2(n121), .A3(N26), .A4(n45), .Y(n68) );
  AO22X1_RVT U459 ( .A1(p_out[75]), .A2(n128), .A3(p_out[74]), .A4(n125), .Y(
        n47) );
  AO221X1_RVT U460 ( .A1(p_out[72]), .A2(n134), .A3(p_out[73]), .A4(n131), 
        .A5(n47), .Y(n55) );
  AO22X1_RVT U461 ( .A1(p_out[79]), .A2(n128), .A3(p_out[78]), .A4(n125), .Y(
        n48) );
  AO221X1_RVT U462 ( .A1(p_out[76]), .A2(n134), .A3(p_out[77]), .A4(n131), 
        .A5(n48), .Y(n54) );
  AO22X1_RVT U463 ( .A1(p_out[71]), .A2(n128), .A3(p_out[70]), .A4(n125), .Y(
        n49) );
  AO221X1_RVT U464 ( .A1(p_out[68]), .A2(n134), .A3(p_out[69]), .A4(n131), 
        .A5(n49), .Y(n52) );
  AO22X1_RVT U465 ( .A1(p_out[67]), .A2(n128), .A3(p_out[66]), .A4(n125), .Y(
        n50) );
  AO221X1_RVT U466 ( .A1(p_out[64]), .A2(n134), .A3(p_out[65]), .A4(n131), 
        .A5(n50), .Y(n51) );
  AO22X1_RVT U467 ( .A1(n52), .A2(n104), .A3(n51), .A4(n102), .Y(n53) );
  AO221X1_RVT U468 ( .A1(n55), .A2(n109), .A3(n54), .A4(n107), .A5(n53), .Y(
        n66) );
  AO22X1_RVT U469 ( .A1(p_out[91]), .A2(n128), .A3(p_out[90]), .A4(n125), .Y(
        n56) );
  AO221X1_RVT U470 ( .A1(p_out[88]), .A2(n134), .A3(p_out[89]), .A4(n131), 
        .A5(n56), .Y(n64) );
  AO22X1_RVT U471 ( .A1(p_out[95]), .A2(n128), .A3(p_out[94]), .A4(n125), .Y(
        n57) );
  AO221X1_RVT U472 ( .A1(p_out[92]), .A2(n134), .A3(p_out[93]), .A4(n131), 
        .A5(n57), .Y(n63) );
  AO22X1_RVT U473 ( .A1(p_out[87]), .A2(n128), .A3(p_out[86]), .A4(n125), .Y(
        n58) );
  AO221X1_RVT U474 ( .A1(p_out[84]), .A2(n134), .A3(p_out[85]), .A4(n131), 
        .A5(n58), .Y(n61) );
  AO22X1_RVT U475 ( .A1(p_out[83]), .A2(n128), .A3(p_out[82]), .A4(n125), .Y(
        n59) );
  AO221X1_RVT U476 ( .A1(p_out[80]), .A2(n134), .A3(p_out[81]), .A4(n131), 
        .A5(n59), .Y(n60) );
  AO22X1_RVT U477 ( .A1(n61), .A2(n104), .A3(n60), .A4(n102), .Y(n62) );
  AO221X1_RVT U478 ( .A1(n64), .A2(n109), .A3(n63), .A4(n107), .A5(n62), .Y(
        n65) );
  AO22X1_RVT U479 ( .A1(n66), .A2(n121), .A3(n65), .A4(N26), .Y(n67) );
  AO22X1_RVT U480 ( .A1(N27), .A2(n68), .A3(n67), .A4(n122), .Y(n116) );
  AO22X1_RVT U481 ( .A1(p_out[43]), .A2(n128), .A3(p_out[42]), .A4(n125), .Y(
        n69) );
  AO221X1_RVT U482 ( .A1(p_out[40]), .A2(n134), .A3(p_out[41]), .A4(n131), 
        .A5(n69), .Y(n77) );
  AO22X1_RVT U483 ( .A1(p_out[47]), .A2(n128), .A3(p_out[46]), .A4(n125), .Y(
        n70) );
  AO221X1_RVT U484 ( .A1(p_out[44]), .A2(n134), .A3(p_out[45]), .A4(n131), 
        .A5(n70), .Y(n76) );
  AO22X1_RVT U485 ( .A1(p_out[39]), .A2(n128), .A3(p_out[38]), .A4(n125), .Y(
        n71) );
  AO221X1_RVT U486 ( .A1(p_out[36]), .A2(n134), .A3(p_out[37]), .A4(n131), 
        .A5(n71), .Y(n74) );
  AO22X1_RVT U487 ( .A1(p_out[35]), .A2(n128), .A3(p_out[34]), .A4(n125), .Y(
        n72) );
  AO221X1_RVT U488 ( .A1(p_out[32]), .A2(n134), .A3(p_out[33]), .A4(n131), 
        .A5(n72), .Y(n73) );
  AO22X1_RVT U489 ( .A1(n74), .A2(n104), .A3(n73), .A4(n102), .Y(n75) );
  AO221X1_RVT U490 ( .A1(n77), .A2(n109), .A3(n76), .A4(n107), .A5(n75), .Y(
        n88) );
  AO22X1_RVT U491 ( .A1(p_out[59]), .A2(n129), .A3(p_out[58]), .A4(n126), .Y(
        n78) );
  AO221X1_RVT U492 ( .A1(p_out[56]), .A2(n135), .A3(p_out[57]), .A4(n132), 
        .A5(n78), .Y(n86) );
  AO22X1_RVT U493 ( .A1(p_out[63]), .A2(n129), .A3(p_out[62]), .A4(n126), .Y(
        n79) );
  AO221X1_RVT U494 ( .A1(p_out[60]), .A2(n135), .A3(p_out[61]), .A4(n132), 
        .A5(n79), .Y(n85) );
  AO22X1_RVT U495 ( .A1(p_out[55]), .A2(n129), .A3(p_out[54]), .A4(n126), .Y(
        n80) );
  AO221X1_RVT U496 ( .A1(p_out[52]), .A2(n135), .A3(p_out[53]), .A4(n132), 
        .A5(n80), .Y(n83) );
  AO22X1_RVT U497 ( .A1(p_out[51]), .A2(n129), .A3(p_out[50]), .A4(n126), .Y(
        n81) );
  AO221X1_RVT U498 ( .A1(p_out[48]), .A2(n135), .A3(p_out[49]), .A4(n132), 
        .A5(n81), .Y(n82) );
  AO22X1_RVT U499 ( .A1(n83), .A2(n104), .A3(n82), .A4(n102), .Y(n84) );
  AO221X1_RVT U500 ( .A1(n86), .A2(n109), .A3(n85), .A4(n107), .A5(n84), .Y(
        n87) );
  AO22X1_RVT U501 ( .A1(n88), .A2(n121), .A3(n87), .A4(N26), .Y(n114) );
  AO22X1_RVT U502 ( .A1(p_out[11]), .A2(n129), .A3(p_out[10]), .A4(n126), .Y(
        n89) );
  AO221X1_RVT U503 ( .A1(p_out[8]), .A2(n135), .A3(p_out[9]), .A4(n132), .A5(
        n89), .Y(n97) );
  AO22X1_RVT U504 ( .A1(p_out[15]), .A2(n129), .A3(p_out[14]), .A4(n126), .Y(
        n90) );
  AO221X1_RVT U505 ( .A1(p_out[12]), .A2(n135), .A3(p_out[13]), .A4(n132), 
        .A5(n90), .Y(n96) );
  AO22X1_RVT U506 ( .A1(p_out[7]), .A2(n129), .A3(p_out[6]), .A4(n126), .Y(n91) );
  AO221X1_RVT U507 ( .A1(p_out[4]), .A2(n135), .A3(p_out[5]), .A4(n132), .A5(
        n91), .Y(n94) );
  AO22X1_RVT U508 ( .A1(p_out[3]), .A2(n129), .A3(p_out[2]), .A4(n126), .Y(n92) );
  AO221X1_RVT U509 ( .A1(p_out[0]), .A2(n135), .A3(p_out[1]), .A4(n132), .A5(
        n92), .Y(n93) );
  AO22X1_RVT U510 ( .A1(n94), .A2(n104), .A3(n93), .A4(n102), .Y(n95) );
  AO221X1_RVT U511 ( .A1(n97), .A2(n109), .A3(n96), .A4(n107), .A5(n95), .Y(
        n112) );
  AO22X1_RVT U512 ( .A1(p_out[27]), .A2(n129), .A3(p_out[26]), .A4(n126), .Y(
        n98) );
  AO221X1_RVT U513 ( .A1(p_out[24]), .A2(n135), .A3(p_out[25]), .A4(n132), 
        .A5(n98), .Y(n110) );
  AO22X1_RVT U514 ( .A1(p_out[31]), .A2(n129), .A3(p_out[30]), .A4(n126), .Y(
        n99) );
  AO221X1_RVT U515 ( .A1(p_out[28]), .A2(n135), .A3(p_out[29]), .A4(n132), 
        .A5(n99), .Y(n108) );
  AO22X1_RVT U516 ( .A1(p_out[23]), .A2(n129), .A3(p_out[22]), .A4(n126), .Y(
        n100) );
  AO221X1_RVT U517 ( .A1(p_out[20]), .A2(n135), .A3(p_out[21]), .A4(n132), 
        .A5(n100), .Y(n105) );
  AO22X1_RVT U518 ( .A1(p_out[19]), .A2(n129), .A3(p_out[18]), .A4(n126), .Y(
        n101) );
  AO221X1_RVT U519 ( .A1(p_out[16]), .A2(n135), .A3(p_out[17]), .A4(n132), 
        .A5(n101), .Y(n103) );
  AO22X1_RVT U520 ( .A1(n105), .A2(n104), .A3(n103), .A4(n102), .Y(n106) );
  AO221X1_RVT U521 ( .A1(n110), .A2(n109), .A3(n108), .A4(n107), .A5(n106), 
        .Y(n111) );
  AO22X1_RVT U522 ( .A1(n112), .A2(n121), .A3(n111), .A4(N26), .Y(n113) );
  AO22X1_RVT U523 ( .A1(n114), .A2(N27), .A3(n113), .A4(n122), .Y(n115) );
  AO22X1_RVT U524 ( .A1(N28), .A2(n116), .A3(n115), .A4(n123), .Y(N112) );
  AO22X1_RVT U525 ( .A1(n633), .A2(n138), .A3(N50), .A4(n640), .Y(N57) );
  AO22X1_RVT U526 ( .A1(n634), .A2(n138), .A3(N49), .A4(n640), .Y(N56) );
  NBUFFX2_RVT U527 ( .A(n641), .Y(n136) );
  AO22X1_RVT U528 ( .A1(n636), .A2(n138), .A3(N48), .A4(n640), .Y(N55) );
  NAND2X0_RVT U529 ( .A1(latch[0]), .A2(n147), .Y(n137) );
  INVX1_RVT U530 ( .A(n313), .Y(n142) );
  INVX1_RVT U531 ( .A(n313), .Y(n830) );
  INVX0_RVT U532 ( .A(n640), .Y(n138) );
  INVX0_RVT U533 ( .A(n639), .Y(n640) );
  AND4X1_RVT U534 ( .A1(n475), .A2(n387), .A3(n471), .A4(n474), .Y(n139) );
  INVX0_RVT U535 ( .A(rx_negedge), .Y(n639) );
  AO22X1_RVT U536 ( .A1(n638), .A2(n138), .A3(N47), .A4(n640), .Y(N54) );
  INVX0_RVT U537 ( .A(lsb), .Y(n641) );
  INVX0_RVT U538 ( .A(n314), .Y(n756) );
  AO222X1_RVT U539 ( .A1(n630), .A2(n472), .A3(N44), .A4(n3), .A5(N67), .A6(
        lsb), .Y(n314) );
  INVX0_RVT U540 ( .A(n276), .Y(n820) );
  AO222X1_RVT U541 ( .A1(n631), .A2(n472), .A3(N43), .A4(n3), .A5(N66), .A6(
        lsb), .Y(n276) );
  INVX0_RVT U542 ( .A(n239), .Y(n821) );
  AO222X1_RVT U543 ( .A1(n7), .A2(n472), .A3(N42), .A4(n3), .A5(N65), .A6(lsb), 
        .Y(n239) );
  INVX1_RVT U544 ( .A(n140), .Y(n141) );
  OA21X1_RVT U545 ( .A1(s_clk), .A2(n476), .A3(n386), .Y(n475) );
  AO22X1_RVT U546 ( .A1(n706), .A2(p_out[1]), .A3(n157), .A4(n158), .Y(n488)
         );
  INVX0_RVT U547 ( .A(n158), .Y(n706) );
  AO22X1_RVT U548 ( .A1(n705), .A2(p_out[2]), .A3(n160), .A4(n161), .Y(n489)
         );
  INVX0_RVT U549 ( .A(n161), .Y(n705) );
  AO22X1_RVT U550 ( .A1(n704), .A2(p_out[3]), .A3(n163), .A4(n164), .Y(n490)
         );
  INVX0_RVT U551 ( .A(n164), .Y(n704) );
  AO22X1_RVT U552 ( .A1(n703), .A2(p_out[4]), .A3(n166), .A4(n167), .Y(n491)
         );
  INVX0_RVT U553 ( .A(n167), .Y(n703) );
  AO22X1_RVT U554 ( .A1(n702), .A2(p_out[5]), .A3(n169), .A4(n170), .Y(n492)
         );
  INVX0_RVT U555 ( .A(n170), .Y(n702) );
  AO22X1_RVT U556 ( .A1(n699), .A2(p_out[8]), .A3(n178), .A4(n179), .Y(n495)
         );
  INVX0_RVT U557 ( .A(n179), .Y(n699) );
  AO22X1_RVT U558 ( .A1(n700), .A2(p_out[7]), .A3(n175), .A4(n176), .Y(n494)
         );
  INVX0_RVT U559 ( .A(n176), .Y(n700) );
  AO22X1_RVT U560 ( .A1(n701), .A2(p_out[6]), .A3(n172), .A4(n173), .Y(n493)
         );
  INVX0_RVT U561 ( .A(n173), .Y(n701) );
  AO22X1_RVT U562 ( .A1(n696), .A2(p_out[11]), .A3(n188), .A4(n189), .Y(n498)
         );
  INVX0_RVT U563 ( .A(n189), .Y(n696) );
  AO22X1_RVT U564 ( .A1(n697), .A2(p_out[10]), .A3(n185), .A4(n186), .Y(n497)
         );
  INVX0_RVT U565 ( .A(n186), .Y(n697) );
  AO22X1_RVT U566 ( .A1(n698), .A2(p_out[9]), .A3(n182), .A4(n183), .Y(n496)
         );
  INVX0_RVT U567 ( .A(n183), .Y(n698) );
  AO22X1_RVT U568 ( .A1(n693), .A2(p_out[14]), .A3(n197), .A4(n198), .Y(n501)
         );
  INVX0_RVT U569 ( .A(n198), .Y(n693) );
  AO22X1_RVT U570 ( .A1(n694), .A2(p_out[13]), .A3(n194), .A4(n195), .Y(n500)
         );
  INVX0_RVT U571 ( .A(n195), .Y(n694) );
  AO22X1_RVT U572 ( .A1(n695), .A2(p_out[12]), .A3(n191), .A4(n192), .Y(n499)
         );
  INVX0_RVT U573 ( .A(n192), .Y(n695) );
  AO22X1_RVT U574 ( .A1(n692), .A2(p_out[15]), .A3(n200), .A4(n201), .Y(n502)
         );
  INVX0_RVT U575 ( .A(n201), .Y(n692) );
  AO22X1_RVT U576 ( .A1(n707), .A2(p_out[0]), .A3(n151), .A4(n152), .Y(n487)
         );
  INVX0_RVT U577 ( .A(n152), .Y(n707) );
  INVX1_RVT U578 ( .A(n313), .Y(n644) );
  INVX1_RVT U579 ( .A(n313), .Y(n643) );
  NBUFFX2_RVT U580 ( .A(n353), .Y(n143) );
  AND2X1_RVT U581 ( .A1(n148), .A2(n149), .Y(n144) );
  NBUFFX2_RVT U582 ( .A(n426), .Y(n145) );
  NBUFFX2_RVT U583 ( .A(n391), .Y(n146) );
  NAND2X0_RVT U584 ( .A1(n143), .A2(n154), .Y(n148) );
  NAND2X0_RVT U585 ( .A1(n148), .A2(n149), .Y(n352) );
  AND2X1_RVT U586 ( .A1(n428), .A2(n429), .Y(n154) );
  INVX0_RVT U587 ( .A(n318), .Y(n150) );
  INVX1_RVT U588 ( .A(n150), .Y(n153) );
  INVX0_RVT U589 ( .A(n206), .Y(n297) );
  INVX1_RVT U590 ( .A(n297), .Y(n317) );
  NBUFFX2_RVT U591 ( .A(n279), .Y(n390) );
  AO22X1_RVT U592 ( .A1(p_out[63]), .A2(n740), .A3(n310), .A4(n311), .Y(n550)
         );
  AO22X1_RVT U593 ( .A1(p_out[62]), .A2(n741), .A3(n308), .A4(n309), .Y(n549)
         );
  AO22X1_RVT U594 ( .A1(p_out[60]), .A2(n743), .A3(n304), .A4(n305), .Y(n547)
         );
  AO22X1_RVT U595 ( .A1(p_out[57]), .A2(n746), .A3(n298), .A4(n299), .Y(n544)
         );
  INVX0_RVT U596 ( .A(n243), .Y(n473) );
  INVX1_RVT U597 ( .A(n473), .Y(n480) );
  AO22X1_RVT U598 ( .A1(p_out[50]), .A2(n753), .A3(n283), .A4(n284), .Y(n537)
         );
  AO22X1_RVT U599 ( .A1(p_out[48]), .A2(n755), .A3(n277), .A4(n278), .Y(n535)
         );
  AO22X1_RVT U600 ( .A1(p_out[52]), .A2(n751), .A3(n287), .A4(n288), .Y(n539)
         );
  AO22X1_RVT U601 ( .A1(p_out[54]), .A2(n749), .A3(n291), .A4(n292), .Y(n541)
         );
  AND4X1_RVT U602 ( .A1(n475), .A2(n387), .A3(n471), .A4(n474), .Y(n203) );
  OR2X1_RVT U603 ( .A1(n481), .A2(n140), .Y(n312) );
  AO22X1_RVT U604 ( .A1(p_out[127]), .A2(n757), .A3(n469), .A4(n470), .Y(n614)
         );
  INVX0_RVT U605 ( .A(n470), .Y(n757) );
  AO22X1_RVT U606 ( .A1(p_out[123]), .A2(n761), .A3(n458), .A4(n459), .Y(n610)
         );
  INVX0_RVT U607 ( .A(n459), .Y(n761) );
  AO22X1_RVT U608 ( .A1(p_out[119]), .A2(n765), .A3(n446), .A4(n447), .Y(n606)
         );
  INVX0_RVT U609 ( .A(n447), .Y(n765) );
  AO22X1_RVT U610 ( .A1(p_out[126]), .A2(n758), .A3(n467), .A4(n468), .Y(n613)
         );
  INVX0_RVT U611 ( .A(n468), .Y(n758) );
  AO22X1_RVT U612 ( .A1(p_out[125]), .A2(n759), .A3(n463), .A4(n464), .Y(n612)
         );
  INVX0_RVT U613 ( .A(n464), .Y(n759) );
  AO22X1_RVT U614 ( .A1(p_out[124]), .A2(n760), .A3(n460), .A4(n461), .Y(n611)
         );
  INVX0_RVT U615 ( .A(n461), .Y(n760) );
  AO22X1_RVT U616 ( .A1(p_out[122]), .A2(n762), .A3(n456), .A4(n457), .Y(n609)
         );
  INVX0_RVT U617 ( .A(n457), .Y(n762) );
  AO22X1_RVT U618 ( .A1(p_out[121]), .A2(n763), .A3(n454), .A4(n455), .Y(n608)
         );
  INVX0_RVT U619 ( .A(n455), .Y(n763) );
  AO22X1_RVT U620 ( .A1(p_out[120]), .A2(n764), .A3(n450), .A4(n451), .Y(n607)
         );
  INVX0_RVT U621 ( .A(n451), .Y(n764) );
  AO22X1_RVT U622 ( .A1(p_out[118]), .A2(n766), .A3(n444), .A4(n445), .Y(n605)
         );
  INVX0_RVT U623 ( .A(n445), .Y(n766) );
  AO22X1_RVT U624 ( .A1(p_out[117]), .A2(n767), .A3(n442), .A4(n443), .Y(n604)
         );
  INVX0_RVT U625 ( .A(n443), .Y(n767) );
  AO22X1_RVT U626 ( .A1(p_out[116]), .A2(n768), .A3(n439), .A4(n440), .Y(n603)
         );
  INVX0_RVT U627 ( .A(n440), .Y(n768) );
  AO22X1_RVT U628 ( .A1(p_out[115]), .A2(n769), .A3(n436), .A4(n437), .Y(n602)
         );
  INVX0_RVT U629 ( .A(n437), .Y(n769) );
  AO22X1_RVT U630 ( .A1(p_out[114]), .A2(n770), .A3(n433), .A4(n434), .Y(n601)
         );
  INVX0_RVT U631 ( .A(n434), .Y(n770) );
  AO22X1_RVT U632 ( .A1(p_out[113]), .A2(n771), .A3(n430), .A4(n431), .Y(n600)
         );
  INVX0_RVT U633 ( .A(n431), .Y(n771) );
  AO22X1_RVT U634 ( .A1(p_out[112]), .A2(n772), .A3(n424), .A4(n425), .Y(n599)
         );
  INVX0_RVT U635 ( .A(n425), .Y(n772) );
  AO22X1_RVT U636 ( .A1(p_out[111]), .A2(n773), .A3(n422), .A4(n423), .Y(n598)
         );
  INVX0_RVT U637 ( .A(n423), .Y(n773) );
  AO22X1_RVT U638 ( .A1(p_out[107]), .A2(n777), .A3(n414), .A4(n415), .Y(n594)
         );
  INVX0_RVT U639 ( .A(n415), .Y(n777) );
  AO22X1_RVT U640 ( .A1(p_out[103]), .A2(n781), .A3(n405), .A4(n406), .Y(n590)
         );
  INVX0_RVT U641 ( .A(n406), .Y(n781) );
  AO22X1_RVT U642 ( .A1(p_out[110]), .A2(n774), .A3(n420), .A4(n421), .Y(n597)
         );
  INVX0_RVT U643 ( .A(n421), .Y(n774) );
  AO22X1_RVT U644 ( .A1(p_out[109]), .A2(n775), .A3(n418), .A4(n419), .Y(n596)
         );
  INVX0_RVT U645 ( .A(n419), .Y(n775) );
  AO22X1_RVT U646 ( .A1(p_out[108]), .A2(n776), .A3(n416), .A4(n417), .Y(n595)
         );
  INVX0_RVT U647 ( .A(n417), .Y(n776) );
  AO22X1_RVT U648 ( .A1(p_out[106]), .A2(n778), .A3(n412), .A4(n413), .Y(n593)
         );
  INVX0_RVT U649 ( .A(n413), .Y(n778) );
  AO22X1_RVT U650 ( .A1(p_out[105]), .A2(n779), .A3(n410), .A4(n411), .Y(n592)
         );
  INVX0_RVT U651 ( .A(n411), .Y(n779) );
  AO22X1_RVT U652 ( .A1(p_out[104]), .A2(n780), .A3(n407), .A4(n408), .Y(n591)
         );
  INVX0_RVT U653 ( .A(n408), .Y(n780) );
  AO22X1_RVT U654 ( .A1(p_out[102]), .A2(n782), .A3(n403), .A4(n404), .Y(n589)
         );
  INVX0_RVT U655 ( .A(n404), .Y(n782) );
  AO22X1_RVT U656 ( .A1(p_out[101]), .A2(n783), .A3(n401), .A4(n402), .Y(n588)
         );
  INVX0_RVT U657 ( .A(n402), .Y(n783) );
  AO22X1_RVT U658 ( .A1(p_out[100]), .A2(n784), .A3(n399), .A4(n400), .Y(n587)
         );
  INVX0_RVT U659 ( .A(n400), .Y(n784) );
  AO22X1_RVT U660 ( .A1(p_out[99]), .A2(n785), .A3(n397), .A4(n398), .Y(n586)
         );
  INVX0_RVT U661 ( .A(n398), .Y(n785) );
  AO22X1_RVT U662 ( .A1(p_out[98]), .A2(n786), .A3(n395), .A4(n396), .Y(n585)
         );
  INVX0_RVT U663 ( .A(n396), .Y(n786) );
  AO22X1_RVT U664 ( .A1(p_out[97]), .A2(n787), .A3(n393), .A4(n394), .Y(n584)
         );
  INVX0_RVT U665 ( .A(n394), .Y(n787) );
  AO22X1_RVT U666 ( .A1(p_out[96]), .A2(n788), .A3(n388), .A4(n389), .Y(n583)
         );
  INVX0_RVT U667 ( .A(n389), .Y(n788) );
  AO22X1_RVT U668 ( .A1(p_out[95]), .A2(n789), .A3(n384), .A4(n385), .Y(n582)
         );
  INVX0_RVT U669 ( .A(n385), .Y(n789) );
  AO22X1_RVT U670 ( .A1(p_out[91]), .A2(n793), .A3(n376), .A4(n377), .Y(n578)
         );
  INVX0_RVT U671 ( .A(n377), .Y(n793) );
  AO22X1_RVT U672 ( .A1(p_out[87]), .A2(n797), .A3(n367), .A4(n368), .Y(n574)
         );
  INVX0_RVT U673 ( .A(n368), .Y(n797) );
  AO22X1_RVT U674 ( .A1(p_out[79]), .A2(n804), .A3(n349), .A4(n350), .Y(n566)
         );
  INVX0_RVT U675 ( .A(n350), .Y(n804) );
  AO22X1_RVT U676 ( .A1(p_out[75]), .A2(n808), .A3(n341), .A4(n342), .Y(n562)
         );
  INVX0_RVT U677 ( .A(n342), .Y(n808) );
  AO22X1_RVT U678 ( .A1(p_out[71]), .A2(n812), .A3(n332), .A4(n333), .Y(n558)
         );
  INVX0_RVT U679 ( .A(n333), .Y(n812) );
  AO22X1_RVT U680 ( .A1(p_out[94]), .A2(n790), .A3(n382), .A4(n383), .Y(n581)
         );
  INVX0_RVT U681 ( .A(n383), .Y(n790) );
  AO22X1_RVT U682 ( .A1(p_out[93]), .A2(n791), .A3(n380), .A4(n381), .Y(n580)
         );
  INVX0_RVT U683 ( .A(n381), .Y(n791) );
  AO22X1_RVT U684 ( .A1(p_out[92]), .A2(n792), .A3(n378), .A4(n379), .Y(n579)
         );
  INVX0_RVT U685 ( .A(n379), .Y(n792) );
  AO22X1_RVT U686 ( .A1(p_out[90]), .A2(n794), .A3(n374), .A4(n375), .Y(n577)
         );
  INVX0_RVT U687 ( .A(n375), .Y(n794) );
  AO22X1_RVT U688 ( .A1(p_out[89]), .A2(n795), .A3(n372), .A4(n373), .Y(n576)
         );
  INVX0_RVT U689 ( .A(n373), .Y(n795) );
  AO22X1_RVT U690 ( .A1(p_out[88]), .A2(n796), .A3(n369), .A4(n370), .Y(n575)
         );
  INVX0_RVT U691 ( .A(n370), .Y(n796) );
  AO22X1_RVT U692 ( .A1(p_out[86]), .A2(n798), .A3(n365), .A4(n366), .Y(n573)
         );
  INVX0_RVT U693 ( .A(n366), .Y(n798) );
  AO22X1_RVT U694 ( .A1(p_out[85]), .A2(n799), .A3(n363), .A4(n364), .Y(n572)
         );
  INVX0_RVT U695 ( .A(n364), .Y(n799) );
  AO22X1_RVT U696 ( .A1(p_out[84]), .A2(n800), .A3(n361), .A4(n362), .Y(n571)
         );
  INVX0_RVT U697 ( .A(n362), .Y(n800) );
  AO22X1_RVT U698 ( .A1(p_out[83]), .A2(n801), .A3(n359), .A4(n360), .Y(n570)
         );
  INVX0_RVT U699 ( .A(n360), .Y(n801) );
  AO22X1_RVT U700 ( .A1(p_out[82]), .A2(n802), .A3(n357), .A4(n358), .Y(n569)
         );
  INVX0_RVT U701 ( .A(n358), .Y(n802) );
  AO22X1_RVT U702 ( .A1(p_out[81]), .A2(n803), .A3(n355), .A4(n356), .Y(n568)
         );
  INVX0_RVT U703 ( .A(n356), .Y(n803) );
  AO22X1_RVT U704 ( .A1(n144), .A2(p_out[80]), .A3(n351), .A4(n352), .Y(n567)
         );
  AO22X1_RVT U705 ( .A1(p_out[78]), .A2(n805), .A3(n347), .A4(n348), .Y(n565)
         );
  INVX0_RVT U706 ( .A(n348), .Y(n805) );
  AO22X1_RVT U707 ( .A1(p_out[77]), .A2(n806), .A3(n345), .A4(n346), .Y(n564)
         );
  INVX0_RVT U708 ( .A(n346), .Y(n806) );
  AO22X1_RVT U709 ( .A1(p_out[76]), .A2(n807), .A3(n343), .A4(n344), .Y(n563)
         );
  INVX0_RVT U710 ( .A(n344), .Y(n807) );
  AO22X1_RVT U711 ( .A1(p_out[74]), .A2(n809), .A3(n339), .A4(n340), .Y(n561)
         );
  INVX0_RVT U712 ( .A(n340), .Y(n809) );
  AO22X1_RVT U713 ( .A1(p_out[73]), .A2(n810), .A3(n337), .A4(n338), .Y(n560)
         );
  INVX0_RVT U714 ( .A(n338), .Y(n810) );
  AO22X1_RVT U715 ( .A1(p_out[72]), .A2(n811), .A3(n334), .A4(n335), .Y(n559)
         );
  INVX0_RVT U716 ( .A(n335), .Y(n811) );
  AO22X1_RVT U717 ( .A1(p_out[70]), .A2(n813), .A3(n330), .A4(n331), .Y(n557)
         );
  INVX0_RVT U718 ( .A(n331), .Y(n813) );
  AO22X1_RVT U719 ( .A1(p_out[69]), .A2(n814), .A3(n328), .A4(n329), .Y(n556)
         );
  INVX0_RVT U720 ( .A(n329), .Y(n814) );
  AO22X1_RVT U721 ( .A1(p_out[68]), .A2(n815), .A3(n326), .A4(n327), .Y(n555)
         );
  INVX0_RVT U722 ( .A(n327), .Y(n815) );
  AO22X1_RVT U723 ( .A1(p_out[67]), .A2(n816), .A3(n324), .A4(n325), .Y(n554)
         );
  INVX0_RVT U724 ( .A(n325), .Y(n816) );
  AO22X1_RVT U725 ( .A1(p_out[66]), .A2(n817), .A3(n322), .A4(n323), .Y(n553)
         );
  INVX0_RVT U726 ( .A(n323), .Y(n817) );
  AO22X1_RVT U727 ( .A1(p_out[65]), .A2(n818), .A3(n320), .A4(n321), .Y(n552)
         );
  INVX0_RVT U728 ( .A(n321), .Y(n818) );
  AO22X1_RVT U729 ( .A1(p_out[64]), .A2(n819), .A3(n315), .A4(n316), .Y(n551)
         );
  INVX0_RVT U730 ( .A(n316), .Y(n819) );
  AO22X1_RVT U731 ( .A1(p_out[23]), .A2(n716), .A3(n220), .A4(n221), .Y(n510)
         );
  INVX0_RVT U732 ( .A(n221), .Y(n716) );
  AO22X1_RVT U733 ( .A1(p_out[27]), .A2(n712), .A3(n229), .A4(n230), .Y(n514)
         );
  INVX0_RVT U734 ( .A(n230), .Y(n712) );
  AO22X1_RVT U735 ( .A1(p_out[31]), .A2(n708), .A3(n237), .A4(n238), .Y(n518)
         );
  INVX0_RVT U736 ( .A(n238), .Y(n708) );
  AO22X1_RVT U737 ( .A1(p_out[17]), .A2(n722), .A3(n208), .A4(n209), .Y(n504)
         );
  INVX0_RVT U738 ( .A(n209), .Y(n722) );
  AO22X1_RVT U739 ( .A1(p_out[16]), .A2(n723), .A3(n204), .A4(n205), .Y(n503)
         );
  INVX0_RVT U740 ( .A(n205), .Y(n723) );
  AO22X1_RVT U741 ( .A1(p_out[20]), .A2(n719), .A3(n214), .A4(n215), .Y(n507)
         );
  INVX0_RVT U742 ( .A(n215), .Y(n719) );
  AO22X1_RVT U743 ( .A1(p_out[19]), .A2(n720), .A3(n212), .A4(n213), .Y(n506)
         );
  INVX0_RVT U744 ( .A(n213), .Y(n720) );
  AO22X1_RVT U745 ( .A1(p_out[18]), .A2(n721), .A3(n210), .A4(n211), .Y(n505)
         );
  INVX0_RVT U746 ( .A(n211), .Y(n721) );
  AO22X1_RVT U747 ( .A1(p_out[22]), .A2(n717), .A3(n218), .A4(n219), .Y(n509)
         );
  INVX0_RVT U748 ( .A(n219), .Y(n717) );
  AO22X1_RVT U749 ( .A1(p_out[21]), .A2(n718), .A3(n216), .A4(n217), .Y(n508)
         );
  INVX0_RVT U750 ( .A(n217), .Y(n718) );
  AO22X1_RVT U751 ( .A1(p_out[26]), .A2(n713), .A3(n227), .A4(n228), .Y(n513)
         );
  INVX0_RVT U752 ( .A(n228), .Y(n713) );
  AO22X1_RVT U753 ( .A1(p_out[25]), .A2(n714), .A3(n225), .A4(n226), .Y(n512)
         );
  INVX0_RVT U754 ( .A(n226), .Y(n714) );
  AO22X1_RVT U755 ( .A1(p_out[24]), .A2(n715), .A3(n222), .A4(n223), .Y(n511)
         );
  INVX0_RVT U756 ( .A(n223), .Y(n715) );
  AO22X1_RVT U757 ( .A1(p_out[29]), .A2(n710), .A3(n233), .A4(n234), .Y(n516)
         );
  INVX0_RVT U758 ( .A(n234), .Y(n710) );
  AO22X1_RVT U759 ( .A1(p_out[28]), .A2(n711), .A3(n231), .A4(n232), .Y(n515)
         );
  INVX0_RVT U760 ( .A(n232), .Y(n711) );
  AO22X1_RVT U761 ( .A1(p_out[30]), .A2(n709), .A3(n235), .A4(n236), .Y(n517)
         );
  INVX0_RVT U762 ( .A(n236), .Y(n709) );
  INVX0_RVT U763 ( .A(n242), .Y(n626) );
  INVX0_RVT U764 ( .A(n626), .Y(n627) );
  INVX0_RVT U765 ( .A(n626), .Y(n628) );
  INVX0_RVT U766 ( .A(n626), .Y(n629) );
  INVX0_RVT U767 ( .A(n296), .Y(n747) );
  INVX0_RVT U768 ( .A(n311), .Y(n740) );
  AO22X1_RVT U769 ( .A1(p_out[59]), .A2(n744), .A3(n302), .A4(n303), .Y(n546)
         );
  INVX0_RVT U770 ( .A(n303), .Y(n744) );
  INVX0_RVT U771 ( .A(n258), .Y(n732) );
  AO22X1_RVT U772 ( .A1(p_out[43]), .A2(n728), .A3(n266), .A4(n267), .Y(n530)
         );
  INVX0_RVT U773 ( .A(n267), .Y(n728) );
  INVX0_RVT U774 ( .A(n275), .Y(n724) );
  AO22X1_RVT U775 ( .A1(p_out[55]), .A2(n748), .A3(n293), .A4(n294), .Y(n542)
         );
  INVX0_RVT U776 ( .A(n294), .Y(n748) );
  INVX0_RVT U777 ( .A(n309), .Y(n741) );
  AO22X1_RVT U778 ( .A1(p_out[61]), .A2(n742), .A3(n306), .A4(n307), .Y(n548)
         );
  INVX0_RVT U779 ( .A(n307), .Y(n742) );
  INVX0_RVT U780 ( .A(n305), .Y(n743) );
  AO22X1_RVT U781 ( .A1(p_out[58]), .A2(n745), .A3(n300), .A4(n301), .Y(n545)
         );
  INVX0_RVT U782 ( .A(n301), .Y(n745) );
  INVX0_RVT U783 ( .A(n299), .Y(n746) );
  AO22X1_RVT U784 ( .A1(p_out[32]), .A2(n739), .A3(n240), .A4(n241), .Y(n519)
         );
  INVX0_RVT U785 ( .A(n241), .Y(n739) );
  INVX0_RVT U786 ( .A(n250), .Y(n736) );
  AO22X1_RVT U787 ( .A1(p_out[34]), .A2(n737), .A3(n247), .A4(n248), .Y(n521)
         );
  INVX0_RVT U788 ( .A(n248), .Y(n737) );
  INVX0_RVT U789 ( .A(n246), .Y(n738) );
  AO22X1_RVT U790 ( .A1(p_out[38]), .A2(n733), .A3(n255), .A4(n256), .Y(n525)
         );
  INVX0_RVT U791 ( .A(n256), .Y(n733) );
  INVX0_RVT U792 ( .A(n254), .Y(n734) );
  AO22X1_RVT U793 ( .A1(p_out[36]), .A2(n735), .A3(n251), .A4(n252), .Y(n523)
         );
  INVX0_RVT U794 ( .A(n252), .Y(n735) );
  INVX0_RVT U795 ( .A(n263), .Y(n730) );
  AO22X1_RVT U796 ( .A1(p_out[40]), .A2(n731), .A3(n259), .A4(n260), .Y(n527)
         );
  INVX0_RVT U797 ( .A(n260), .Y(n731) );
  INVX0_RVT U798 ( .A(n269), .Y(n727) );
  AO22X1_RVT U799 ( .A1(p_out[42]), .A2(n729), .A3(n264), .A4(n265), .Y(n529)
         );
  INVX0_RVT U800 ( .A(n265), .Y(n729) );
  INVX0_RVT U801 ( .A(n273), .Y(n725) );
  AO22X1_RVT U802 ( .A1(p_out[45]), .A2(n726), .A3(n270), .A4(n271), .Y(n532)
         );
  INVX0_RVT U803 ( .A(n271), .Y(n726) );
  INVX0_RVT U804 ( .A(n284), .Y(n753) );
  AO22X1_RVT U805 ( .A1(p_out[49]), .A2(n754), .A3(n281), .A4(n282), .Y(n536)
         );
  INVX0_RVT U806 ( .A(n282), .Y(n754) );
  INVX0_RVT U807 ( .A(n278), .Y(n755) );
  AO22X1_RVT U808 ( .A1(p_out[53]), .A2(n750), .A3(n289), .A4(n290), .Y(n540)
         );
  INVX0_RVT U809 ( .A(n290), .Y(n750) );
  INVX0_RVT U810 ( .A(n288), .Y(n751) );
  AO22X1_RVT U811 ( .A1(p_out[51]), .A2(n752), .A3(n285), .A4(n286), .Y(n538)
         );
  INVX0_RVT U812 ( .A(n286), .Y(n752) );
  INVX0_RVT U813 ( .A(n292), .Y(n749) );
  AO22X1_RVT U814 ( .A1(p_out[56]), .A2(n747), .A3(n295), .A4(n296), .Y(n543)
         );
  XNOR2X1_RVT U815 ( .A1(n483), .A2(n141), .Y(n624) );
  AO222X1_RVT U816 ( .A1(N94), .A2(n479), .A3(len[6]), .A4(n141), .A5(n826), 
        .A6(n630), .Y(n617) );
  AO222X1_RVT U817 ( .A1(N93), .A2(n479), .A3(len[5]), .A4(n141), .A5(n826), 
        .A6(n631), .Y(n618) );
  AO222X1_RVT U818 ( .A1(N92), .A2(n479), .A3(len[4]), .A4(n141), .A5(n826), 
        .A6(n7), .Y(n619) );
  AO222X1_RVT U819 ( .A1(N91), .A2(n479), .A3(len[3]), .A4(n141), .A5(n826), 
        .A6(n633), .Y(n620) );
  AO222X1_RVT U820 ( .A1(N90), .A2(n479), .A3(len[2]), .A4(n141), .A5(n826), 
        .A6(n6), .Y(n621) );
  AO222X1_RVT U821 ( .A1(N89), .A2(n479), .A3(len[1]), .A4(n141), .A5(n826), 
        .A6(n637), .Y(n622) );
  AO222X1_RVT U822 ( .A1(n15), .A2(n479), .A3(len[0]), .A4(n141), .A5(n826), 
        .A6(n638), .Y(n623) );
  AND2X1_RVT U823 ( .A1(byte_sel[0]), .A2(n830), .Y(n156) );
  AND2X1_RVT U824 ( .A1(byte_sel[1]), .A2(n830), .Y(n181) );
  AND2X1_RVT U825 ( .A1(byte_sel[3]), .A2(n830), .Y(n224) );
  AND2X1_RVT U826 ( .A1(byte_sel[2]), .A2(n830), .Y(n207) );
  NAND2X0_RVT U827 ( .A1(latch[3]), .A2(n147), .Y(n471) );
  NAND2X0_RVT U828 ( .A1(latch[2]), .A2(n147), .Y(n387) );
  AND2X1_RVT U829 ( .A1(n312), .A2(n137), .Y(n386) );
  NAND2X0_RVT U830 ( .A1(latch[0]), .A2(n147), .Y(n313) );
  OR2X1_RVT U831 ( .A1(n637), .A2(n638), .Y(n673) );
  AO21X1_RVT U832 ( .A1(n636), .A2(n638), .A3(n681), .Y(N39) );
  OR2X1_RVT U833 ( .A1(n673), .A2(n6), .Y(n674) );
  AO21X1_RVT U834 ( .A1(n634), .A2(n673), .A3(n680), .Y(N40) );
  OR2X1_RVT U835 ( .A1(n674), .A2(n633), .Y(n675) );
  AO21X1_RVT U836 ( .A1(n633), .A2(n674), .A3(n679), .Y(N41) );
  OR2X1_RVT U837 ( .A1(n675), .A2(n7), .Y(n676) );
  AO21X1_RVT U838 ( .A1(n632), .A2(n675), .A3(n678), .Y(N42) );
  XOR2X1_RVT U839 ( .A1(n631), .A2(n678), .Y(N43) );
  OR2X1_RVT U840 ( .A1(n676), .A2(n631), .Y(n677) );
  XNOR2X1_RVT U841 ( .A1(n677), .A2(n630), .Y(N44) );
  OR2X1_RVT U842 ( .A1(n636), .A2(n638), .Y(n682) );
  OR2X1_RVT U843 ( .A1(n682), .A2(n634), .Y(n683) );
  OR2X1_RVT U844 ( .A1(n683), .A2(n633), .Y(n684) );
  OR2X1_RVT U845 ( .A1(n684), .A2(n632), .Y(n685) );
  OR2X1_RVT U846 ( .A1(n685), .A2(n631), .Y(n686) );
  AO21X1_RVT U847 ( .A1(n631), .A2(n685), .A3(n688), .Y(N93) );
  XOR2X1_RVT U848 ( .A1(n630), .A2(n688), .Y(N94) );
  OR2X1_RVT U849 ( .A1(n686), .A2(n630), .Y(n687) );
endmodule


module spi_top ( wb_clk_i, wb_rst_i, wb_adr_i, wb_dat_i, wb_dat_o, wb_sel_i, 
        wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_err_o, wb_int_o, ss_pad_o, 
        sclk_pad_o, mosi_pad_o, miso_pad_i );
  input [4:0] wb_adr_i;
  input [31:0] wb_dat_i;
  output [31:0] wb_dat_o;
  input [3:0] wb_sel_i;
  output [7:0] ss_pad_o;
  input wb_clk_i, wb_rst_i, wb_we_i, wb_stb_i, wb_cyc_i, miso_pad_i;
  output wb_ack_o, wb_err_o, wb_int_o, sclk_pad_o, mosi_pad_o;
  wire   N28, tip, last_bit, pos_edge, neg_edge, \_0_net_[3] , \_0_net_[2] ,
         \_0_net_[1] , \_0_net_[0] , n16, n27, n28, n29, n30, n31, n32, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185;
  wire   [127:0] rx;
  wire   [31:0] wb_dat;
  wire   [13:0] ctrl;
  wire   [15:0] divider;
  wire   [7:0] ss;
  assign wb_err_o = 1'b0;

  spi_clgen clgen ( .clk_in(wb_clk_i), .rst(wb_rst_i), .go(ctrl[8]), .enable(
        tip), .last_clk(last_bit), .divider(divider), .clk_out(sclk_pad_o), 
        .pos_edge(pos_edge), .neg_edge(neg_edge) );
  spi_shift shift ( .clk(wb_clk_i), .rst(wb_rst_i), .latch({\_0_net_[3] , 
        \_0_net_[2] , \_0_net_[1] , \_0_net_[0] }), .byte_sel(wb_sel_i), .len(
        ctrl[6:0]), .lsb(ctrl[11]), .go(ctrl[8]), .pos_edge(pos_edge), 
        .neg_edge(neg_edge), .rx_negedge(ctrl[9]), .tx_negedge(ctrl[10]), 
        .tip(tip), .last(last_bit), .p_in(wb_dat_i), .p_out(rx), .s_clk(
        sclk_pad_o), .s_in(miso_pad_i), .s_out(mosi_pad_o) );
  DFFARX1_RVT \ctrl_reg[0]  ( .D(n140), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[0]) );
  DFFARX1_RVT \ctrl_reg[1]  ( .D(n122), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[1]) );
  DFFARX1_RVT \ctrl_reg[2]  ( .D(n121), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[2]) );
  DFFARX1_RVT \ctrl_reg[9]  ( .D(n115), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[9]) );
  DFFARX1_RVT \ctrl_reg[3]  ( .D(n120), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[3]) );
  DFFARX1_RVT wb_int_o_reg ( .D(n111), .CLK(wb_clk_i), .RSTB(n160), .Q(
        wb_int_o) );
  DFFARX1_RVT \ctrl_reg[7]  ( .D(n116), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[7]) );
  DFFARX1_RVT \ctrl_reg[12]  ( .D(n112), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[12]) );
  DFFARX1_RVT \ss_reg[7]  ( .D(n109), .CLK(wb_clk_i), .RSTB(n160), .Q(ss[7])
         );
  DFFARX1_RVT \ss_reg[6]  ( .D(n108), .CLK(wb_clk_i), .RSTB(n160), .Q(ss[6])
         );
  DFFARX1_RVT \ss_reg[5]  ( .D(n107), .CLK(wb_clk_i), .RSTB(n160), .Q(ss[5])
         );
  DFFARX1_RVT \ss_reg[4]  ( .D(n106), .CLK(wb_clk_i), .RSTB(n160), .Q(ss[4])
         );
  DFFARX1_RVT \ss_reg[3]  ( .D(n105), .CLK(wb_clk_i), .RSTB(n160), .Q(ss[3])
         );
  DFFARX1_RVT \ss_reg[2]  ( .D(n104), .CLK(wb_clk_i), .RSTB(n160), .Q(ss[2])
         );
  DFFARX1_RVT \ss_reg[1]  ( .D(n103), .CLK(wb_clk_i), .RSTB(n160), .Q(ss[1])
         );
  DFFARX1_RVT \ss_reg[0]  ( .D(n102), .CLK(wb_clk_i), .RSTB(n160), .Q(ss[0])
         );
  DFFARX1_RVT \ctrl_reg[8]  ( .D(n123), .CLK(wb_clk_i), .RSTB(n160), .Q(
        ctrl[8]) );
  DFFARX1_RVT wb_ack_o_reg ( .D(N28), .CLK(wb_clk_i), .RSTB(n156), .Q(wb_ack_o), .QN(n16) );
  DFFARX1_RVT \divider_reg[6]  ( .D(n133), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[6]) );
  DFFARX1_RVT \divider_reg[2]  ( .D(n137), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[2]) );
  DFFARX1_RVT \divider_reg[0]  ( .D(n139), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[0]) );
  DFFARX1_RVT \divider_reg[7]  ( .D(n132), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[7]) );
  DFFARX1_RVT \divider_reg[3]  ( .D(n136), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[3]) );
  DFFARX1_RVT \divider_reg[14]  ( .D(n125), .CLK(wb_clk_i), .RSTB(n157), .Q(
        divider[14]) );
  DFFARX1_RVT \divider_reg[4]  ( .D(n135), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[4]) );
  DFFARX1_RVT \divider_reg[13]  ( .D(n126), .CLK(wb_clk_i), .RSTB(n157), .Q(
        divider[13]) );
  DFFARX1_RVT \divider_reg[15]  ( .D(n124), .CLK(wb_clk_i), .RSTB(n157), .Q(
        divider[15]) );
  DFFARX1_RVT \divider_reg[10]  ( .D(n129), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[10]) );
  DFFARX1_RVT \divider_reg[11]  ( .D(n128), .CLK(wb_clk_i), .RSTB(n157), .Q(
        divider[11]) );
  DFFARX1_RVT \divider_reg[8]  ( .D(n131), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[8]) );
  DFFARX1_RVT \divider_reg[5]  ( .D(n134), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[5]) );
  DFFARX1_RVT \divider_reg[1]  ( .D(n138), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[1]) );
  DFFARX1_RVT \divider_reg[9]  ( .D(n130), .CLK(wb_clk_i), .RSTB(n158), .Q(
        divider[9]) );
  DFFARX1_RVT \ctrl_reg[10]  ( .D(n114), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[10]) );
  DFFARX1_RVT \divider_reg[12]  ( .D(n127), .CLK(wb_clk_i), .RSTB(n157), .Q(
        divider[12]) );
  DFFARX1_RVT \ctrl_reg[13]  ( .D(n110), .CLK(wb_clk_i), .RSTB(n158), .Q(
        ctrl[13]) );
  DFFARX1_RVT \ctrl_reg[11]  ( .D(n113), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[11]) );
  DFFARX1_RVT \ctrl_reg[6]  ( .D(n117), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[6]) );
  DFFARX1_RVT \ctrl_reg[4]  ( .D(n119), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[4]) );
  DFFARX1_RVT \ctrl_reg[5]  ( .D(n118), .CLK(wb_clk_i), .RSTB(n159), .Q(
        ctrl[5]) );
  DFFARX1_RVT \wb_dat_o_reg[16]  ( .D(wb_dat[16]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[16]) );
  DFFARX1_RVT \wb_dat_o_reg[17]  ( .D(wb_dat[17]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[17]) );
  DFFARX1_RVT \wb_dat_o_reg[18]  ( .D(wb_dat[18]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[18]) );
  DFFARX1_RVT \wb_dat_o_reg[19]  ( .D(wb_dat[19]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[19]) );
  DFFARX1_RVT \wb_dat_o_reg[20]  ( .D(wb_dat[20]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[20]) );
  DFFARX1_RVT \wb_dat_o_reg[21]  ( .D(wb_dat[21]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[21]) );
  DFFARX1_RVT \wb_dat_o_reg[22]  ( .D(wb_dat[22]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[22]) );
  DFFARX1_RVT \wb_dat_o_reg[23]  ( .D(wb_dat[23]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[23]) );
  DFFARX1_RVT \wb_dat_o_reg[24]  ( .D(wb_dat[24]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[24]) );
  DFFARX1_RVT \wb_dat_o_reg[25]  ( .D(wb_dat[25]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[25]) );
  DFFARX1_RVT \wb_dat_o_reg[26]  ( .D(wb_dat[26]), .CLK(wb_clk_i), .RSTB(n156), 
        .Q(wb_dat_o[26]) );
  DFFARX1_RVT \wb_dat_o_reg[27]  ( .D(wb_dat[27]), .CLK(wb_clk_i), .RSTB(n157), 
        .Q(wb_dat_o[27]) );
  DFFARX1_RVT \wb_dat_o_reg[28]  ( .D(wb_dat[28]), .CLK(wb_clk_i), .RSTB(n157), 
        .Q(wb_dat_o[28]) );
  DFFARX1_RVT \wb_dat_o_reg[29]  ( .D(wb_dat[29]), .CLK(wb_clk_i), .RSTB(n157), 
        .Q(wb_dat_o[29]) );
  DFFARX1_RVT \wb_dat_o_reg[30]  ( .D(wb_dat[30]), .CLK(wb_clk_i), .RSTB(n157), 
        .Q(wb_dat_o[30]) );
  DFFARX1_RVT \wb_dat_o_reg[31]  ( .D(wb_dat[31]), .CLK(wb_clk_i), .RSTB(n157), 
        .Q(wb_dat_o[31]) );
  DFFARX1_RVT \wb_dat_o_reg[15]  ( .D(wb_dat[15]), .CLK(wb_clk_i), .RSTB(n157), 
        .Q(wb_dat_o[15]) );
  DFFARX1_RVT \wb_dat_o_reg[14]  ( .D(wb_dat[14]), .CLK(wb_clk_i), .RSTB(n157), 
        .Q(wb_dat_o[14]) );
  SDFFARX1_RVT \wb_dat_o_reg[13]  ( .D(n78), .SI(1'b1), .SE(n77), .CLK(
        wb_clk_i), .RSTB(n161), .Q(wb_dat_o[13]) );
  SDFFARX1_RVT \wb_dat_o_reg[12]  ( .D(n80), .SI(1'b1), .SE(n79), .CLK(
        wb_clk_i), .RSTB(n161), .Q(wb_dat_o[12]) );
  SDFFARX1_RVT \wb_dat_o_reg[11]  ( .D(n82), .SI(1'b1), .SE(n81), .CLK(
        wb_clk_i), .RSTB(n161), .Q(wb_dat_o[11]) );
  SDFFARX1_RVT \wb_dat_o_reg[10]  ( .D(n84), .SI(1'b1), .SE(n83), .CLK(
        wb_clk_i), .RSTB(n161), .Q(wb_dat_o[10]) );
  SDFFARX1_RVT \wb_dat_o_reg[9]  ( .D(n28), .SI(1'b1), .SE(n27), .CLK(wb_clk_i), .RSTB(n161), .Q(wb_dat_o[9]) );
  SDFFARX1_RVT \wb_dat_o_reg[8]  ( .D(n36), .SI(1'b1), .SE(n35), .CLK(wb_clk_i), .RSTB(n161), .Q(wb_dat_o[8]) );
  SDFFARX1_RVT \wb_dat_o_reg[7]  ( .D(n38), .SI(1'b1), .SE(n37), .CLK(wb_clk_i), .RSTB(n161), .Q(wb_dat_o[7]) );
  SDFFARX1_RVT \wb_dat_o_reg[6]  ( .D(n42), .SI(1'b1), .SE(n41), .CLK(wb_clk_i), .RSTB(n161), .Q(wb_dat_o[6]) );
  SDFFARX1_RVT \wb_dat_o_reg[5]  ( .D(n45), .SI(1'b1), .SE(n44), .CLK(wb_clk_i), .RSTB(n161), .Q(wb_dat_o[5]) );
  SDFFARX1_RVT \wb_dat_o_reg[4]  ( .D(n48), .SI(1'b1), .SE(n47), .CLK(wb_clk_i), .RSTB(n161), .Q(wb_dat_o[4]) );
  SDFFARX1_RVT \wb_dat_o_reg[3]  ( .D(n51), .SI(1'b1), .SE(n50), .CLK(wb_clk_i), .RSTB(n161), .Q(wb_dat_o[3]) );
  SDFFARX1_RVT \wb_dat_o_reg[2]  ( .D(n56), .SI(1'b1), .SE(n55), .CLK(wb_clk_i), .RSTB(n161), .Q(wb_dat_o[2]) );
  SDFFARX1_RVT \wb_dat_o_reg[1]  ( .D(n69), .SI(1'b1), .SE(n68), .CLK(wb_clk_i), .RSTB(n160), .Q(wb_dat_o[1]) );
  SDFFARX1_RVT \wb_dat_o_reg[0]  ( .D(n86), .SI(1'b1), .SE(n85), .CLK(wb_clk_i), .RSTB(n160), .Q(wb_dat_o[0]) );
  AO22X1_RVT U173 ( .A1(n177), .A2(wb_dat_i[5]), .A3(ctrl[5]), .A4(n92), .Y(
        n118) );
  AO22X1_RVT U174 ( .A1(n177), .A2(wb_dat_i[4]), .A3(ctrl[4]), .A4(n92), .Y(
        n119) );
  AO22X1_RVT U175 ( .A1(n177), .A2(wb_dat_i[6]), .A3(ctrl[6]), .A4(n92), .Y(
        n117) );
  AO22X1_RVT U176 ( .A1(wb_dat_i[11]), .A2(n178), .A3(ctrl[11]), .A4(n90), .Y(
        n113) );
  AO22X1_RVT U177 ( .A1(wb_dat_i[9]), .A2(n178), .A3(ctrl[9]), .A4(n90), .Y(
        n115) );
  AO22X1_RVT U178 ( .A1(n177), .A2(wb_dat_i[2]), .A3(ctrl[2]), .A4(n92), .Y(
        n121) );
  AO22X1_RVT U179 ( .A1(n177), .A2(wb_dat_i[1]), .A3(ctrl[1]), .A4(n92), .Y(
        n122) );
  AO21X1_RVT U180 ( .A1(n177), .A2(wb_dat_i[0]), .A3(ctrl[0]), .Y(n140) );
  AND3X1_RVT U181 ( .A1(n184), .A2(n183), .A3(wb_adr_i[2]), .Y(n29) );
  AND2X1_RVT U182 ( .A1(wb_adr_i[3]), .A2(wb_adr_i[4]), .Y(n40) );
  INVX1_RVT U183 ( .A(n149), .Y(n163) );
  INVX1_RVT U184 ( .A(n149), .Y(n162) );
  INVX1_RVT U185 ( .A(tip), .Y(n182) );
  AO22X1_RVT U186 ( .A1(rx[89]), .A2(n171), .A3(rx[121]), .A4(n164), .Y(n62)
         );
  AO22X1_RVT U187 ( .A1(rx[93]), .A2(n170), .A3(rx[125]), .A4(n164), .Y(n58)
         );
  AO22X1_RVT U188 ( .A1(rx[92]), .A2(n171), .A3(rx[124]), .A4(n164), .Y(n59)
         );
  AO22X1_RVT U189 ( .A1(rx[91]), .A2(n169), .A3(rx[123]), .A4(n164), .Y(n60)
         );
  AO22X1_RVT U190 ( .A1(rx[94]), .A2(n169), .A3(rx[126]), .A4(n164), .Y(n54)
         );
  AND4X1_RVT U191 ( .A1(tip), .A2(pos_edge), .A3(last_bit), .A4(ctrl[12]), .Y(
        n91) );
  NAND3X0_RVT U192 ( .A1(pos_edge), .A2(last_bit), .A3(tip), .Y(n96) );
  INVX0_RVT U193 ( .A(n149), .Y(n164) );
  AND3X1_RVT U194 ( .A1(n153), .A2(n184), .A3(n89), .Y(n98) );
  AND2X1_RVT U195 ( .A1(n89), .A2(n32), .Y(n94) );
  INVX1_RVT U196 ( .A(n92), .Y(n177) );
  INVX1_RVT U197 ( .A(n99), .Y(n180) );
  AND2X1_RVT U198 ( .A1(n100), .A2(n31), .Y(\_0_net_[0] ) );
  AND2X1_RVT U199 ( .A1(n100), .A2(n29), .Y(\_0_net_[1] ) );
  INVX1_RVT U200 ( .A(n150), .Y(n155) );
  AND2X1_RVT U201 ( .A1(n100), .A2(n182), .Y(n89) );
  INVX1_RVT U202 ( .A(n97), .Y(n181) );
  INVX1_RVT U203 ( .A(n151), .Y(n153) );
  INVX1_RVT U204 ( .A(n90), .Y(n178) );
  INVX1_RVT U205 ( .A(n29), .Y(n176) );
  INVX1_RVT U206 ( .A(n30), .Y(n172) );
  INVX1_RVT U207 ( .A(n151), .Y(n154) );
  NBUFFX2_RVT U208 ( .A(n32), .Y(n152) );
  INVX1_RVT U209 ( .A(wb_rst_i), .Y(n159) );
  INVX1_RVT U210 ( .A(wb_rst_i), .Y(n161) );
  INVX1_RVT U211 ( .A(wb_rst_i), .Y(n160) );
  INVX1_RVT U212 ( .A(wb_rst_i), .Y(n158) );
  INVX1_RVT U213 ( .A(wb_rst_i), .Y(n157) );
  INVX1_RVT U214 ( .A(wb_rst_i), .Y(n156) );
  NAND2X0_RVT U215 ( .A1(wb_adr_i[3]), .A2(wb_adr_i[2]), .Y(n149) );
  AND3X1_RVT U216 ( .A1(n164), .A2(n183), .A3(n100), .Y(\_0_net_[3] ) );
  AND3X1_RVT U217 ( .A1(wb_stb_i), .A2(wb_cyc_i), .A3(wb_we_i), .Y(n100) );
  AO22X1_RVT U218 ( .A1(n177), .A2(wb_dat_i[7]), .A3(ctrl[7]), .A4(n92), .Y(
        n116) );
  AO22X1_RVT U219 ( .A1(n180), .A2(wb_dat_i[0]), .A3(divider[0]), .A4(n99), 
        .Y(n139) );
  AO22X1_RVT U220 ( .A1(n180), .A2(wb_dat_i[1]), .A3(divider[1]), .A4(n99), 
        .Y(n138) );
  AO22X1_RVT U221 ( .A1(n180), .A2(wb_dat_i[2]), .A3(divider[2]), .A4(n99), 
        .Y(n137) );
  AO22X1_RVT U222 ( .A1(n180), .A2(wb_dat_i[3]), .A3(divider[3]), .A4(n99), 
        .Y(n136) );
  AO22X1_RVT U223 ( .A1(n180), .A2(wb_dat_i[4]), .A3(divider[4]), .A4(n99), 
        .Y(n135) );
  AO22X1_RVT U224 ( .A1(n180), .A2(wb_dat_i[5]), .A3(divider[5]), .A4(n99), 
        .Y(n134) );
  AO22X1_RVT U225 ( .A1(n180), .A2(wb_dat_i[6]), .A3(divider[6]), .A4(n99), 
        .Y(n133) );
  AO22X1_RVT U226 ( .A1(n180), .A2(wb_dat_i[7]), .A3(divider[7]), .A4(n99), 
        .Y(n132) );
  NAND2X0_RVT U227 ( .A1(n98), .A2(wb_sel_i[0]), .Y(n99) );
  NAND2X0_RVT U228 ( .A1(n94), .A2(wb_sel_i[0]), .Y(n92) );
  AO22X1_RVT U229 ( .A1(wb_dat_i[0]), .A2(n150), .A3(ss[0]), .A4(n155), .Y(
        n102) );
  AO22X1_RVT U230 ( .A1(wb_dat_i[1]), .A2(n150), .A3(ss[1]), .A4(n155), .Y(
        n103) );
  AO22X1_RVT U231 ( .A1(wb_dat_i[2]), .A2(n150), .A3(ss[2]), .A4(n155), .Y(
        n104) );
  AO22X1_RVT U232 ( .A1(wb_dat_i[3]), .A2(n150), .A3(ss[3]), .A4(n155), .Y(
        n105) );
  AO22X1_RVT U233 ( .A1(wb_dat_i[4]), .A2(n150), .A3(ss[4]), .A4(n155), .Y(
        n106) );
  AO22X1_RVT U234 ( .A1(wb_dat_i[5]), .A2(n150), .A3(ss[5]), .A4(n155), .Y(
        n107) );
  AO22X1_RVT U235 ( .A1(wb_dat_i[6]), .A2(n150), .A3(ss[6]), .A4(n155), .Y(
        n108) );
  AO22X1_RVT U236 ( .A1(wb_dat_i[7]), .A2(n150), .A3(ss[7]), .A4(n155), .Y(
        n109) );
  AND4X1_RVT U237 ( .A1(wb_sel_i[0]), .A2(n89), .A3(n40), .A4(n185), .Y(n150)
         );
  AO221X1_RVT U238 ( .A1(ctrl[5]), .A2(n152), .A3(rx[101]), .A4(n163), .A5(n46), .Y(n44) );
  AO22X1_RVT U239 ( .A1(divider[5]), .A2(n154), .A3(ss[5]), .A4(n40), .Y(n46)
         );
  AO221X1_RVT U240 ( .A1(ctrl[6]), .A2(n32), .A3(rx[102]), .A4(n163), .A5(n43), 
        .Y(n41) );
  AO22X1_RVT U241 ( .A1(divider[6]), .A2(n153), .A3(ss[6]), .A4(n40), .Y(n43)
         );
  AO221X1_RVT U242 ( .A1(rx[53]), .A2(n174), .A3(rx[21]), .A4(n167), .A5(n66), 
        .Y(wb_dat[21]) );
  AO221X1_RVT U243 ( .A1(rx[49]), .A2(n174), .A3(rx[17]), .A4(n167), .A5(n73), 
        .Y(wb_dat[17]) );
  AO221X1_RVT U244 ( .A1(rx[48]), .A2(n173), .A3(rx[16]), .A4(n166), .A5(n74), 
        .Y(wb_dat[16]) );
  AO22X1_RVT U245 ( .A1(divider[1]), .A2(n154), .A3(ss[1]), .A4(n40), .Y(n70)
         );
  AO221X1_RVT U246 ( .A1(rx[63]), .A2(n174), .A3(rx[31]), .A4(n167), .A5(n53), 
        .Y(wb_dat[31]) );
  AO22X1_RVT U247 ( .A1(rx[95]), .A2(n171), .A3(rx[127]), .A4(n163), .Y(n53)
         );
  AO221X1_RVT U248 ( .A1(rx[58]), .A2(n173), .A3(rx[26]), .A4(n166), .A5(n61), 
        .Y(wb_dat[26]) );
  AO22X1_RVT U249 ( .A1(rx[90]), .A2(n170), .A3(rx[122]), .A4(n163), .Y(n61)
         );
  AO221X1_RVT U250 ( .A1(rx[54]), .A2(n173), .A3(rx[22]), .A4(n166), .A5(n65), 
        .Y(wb_dat[22]) );
  AO221X1_RVT U251 ( .A1(rx[50]), .A2(n173), .A3(rx[18]), .A4(n166), .A5(n72), 
        .Y(wb_dat[18]) );
  AO221X1_RVT U252 ( .A1(rx[56]), .A2(n175), .A3(rx[24]), .A4(n166), .A5(n63), 
        .Y(wb_dat[24]) );
  AO221X1_RVT U253 ( .A1(rx[55]), .A2(n174), .A3(rx[23]), .A4(n167), .A5(n64), 
        .Y(wb_dat[23]) );
  AO221X1_RVT U254 ( .A1(rx[52]), .A2(n175), .A3(rx[20]), .A4(n165), .A5(n67), 
        .Y(wb_dat[20]) );
  AO221X1_RVT U255 ( .A1(rx[51]), .A2(n175), .A3(rx[19]), .A4(n165), .A5(n71), 
        .Y(wb_dat[19]) );
  AO222X1_RVT U256 ( .A1(ctrl[8]), .A2(n152), .A3(divider[8]), .A4(n153), .A5(
        rx[104]), .A6(n162), .Y(n35) );
  AO222X1_RVT U257 ( .A1(ctrl[10]), .A2(n152), .A3(divider[10]), .A4(n154), 
        .A5(rx[106]), .A6(n162), .Y(n83) );
  AO222X1_RVT U258 ( .A1(ctrl[11]), .A2(n152), .A3(divider[11]), .A4(n154), 
        .A5(rx[107]), .A6(n162), .Y(n81) );
  AO222X1_RVT U259 ( .A1(ctrl[12]), .A2(n152), .A3(divider[12]), .A4(n154), 
        .A5(rx[108]), .A6(n162), .Y(n79) );
  AO222X1_RVT U260 ( .A1(ctrl[13]), .A2(n152), .A3(divider[13]), .A4(n154), 
        .A5(rx[109]), .A6(n162), .Y(n77) );
  AO221X1_RVT U261 ( .A1(ctrl[4]), .A2(n152), .A3(rx[100]), .A4(n162), .A5(n49), .Y(n47) );
  AO22X1_RVT U262 ( .A1(divider[4]), .A2(n153), .A3(ss[4]), .A4(n40), .Y(n49)
         );
  AO221X1_RVT U263 ( .A1(ctrl[7]), .A2(n152), .A3(rx[103]), .A4(n162), .A5(n39), .Y(n37) );
  AO22X1_RVT U264 ( .A1(divider[7]), .A2(n154), .A3(ss[7]), .A4(n40), .Y(n39)
         );
  AO221X1_RVT U265 ( .A1(rx[46]), .A2(n173), .A3(rx[14]), .A4(n166), .A5(n76), 
        .Y(wb_dat[14]) );
  AO221X1_RVT U266 ( .A1(rx[47]), .A2(n175), .A3(rx[15]), .A4(n165), .A5(n75), 
        .Y(wb_dat[15]) );
  AO22X1_RVT U267 ( .A1(divider[0]), .A2(n153), .A3(ss[0]), .A4(n40), .Y(n87)
         );
  AO22X1_RVT U268 ( .A1(divider[2]), .A2(n153), .A3(ss[2]), .A4(n40), .Y(n57)
         );
  AO22X1_RVT U269 ( .A1(divider[3]), .A2(n154), .A3(ss[3]), .A4(n40), .Y(n52)
         );
  AO22X1_RVT U270 ( .A1(wb_dat_i[14]), .A2(n181), .A3(divider[14]), .A4(n97), 
        .Y(n125) );
  AO22X1_RVT U271 ( .A1(wb_dat_i[15]), .A2(n181), .A3(divider[15]), .A4(n97), 
        .Y(n124) );
  AO22X1_RVT U272 ( .A1(n181), .A2(wb_dat_i[8]), .A3(divider[8]), .A4(n97), 
        .Y(n131) );
  AO22X1_RVT U273 ( .A1(n181), .A2(wb_dat_i[9]), .A3(divider[9]), .A4(n97), 
        .Y(n130) );
  AO22X1_RVT U274 ( .A1(n181), .A2(wb_dat_i[10]), .A3(divider[10]), .A4(n97), 
        .Y(n129) );
  AO22X1_RVT U275 ( .A1(n181), .A2(wb_dat_i[11]), .A3(divider[11]), .A4(n97), 
        .Y(n128) );
  AO22X1_RVT U276 ( .A1(n181), .A2(wb_dat_i[12]), .A3(divider[12]), .A4(n97), 
        .Y(n127) );
  AO22X1_RVT U277 ( .A1(n181), .A2(wb_dat_i[13]), .A3(divider[13]), .A4(n97), 
        .Y(n126) );
  NAND2X0_RVT U278 ( .A1(n98), .A2(wb_sel_i[1]), .Y(n97) );
  NAND2X0_RVT U279 ( .A1(wb_adr_i[4]), .A2(wb_adr_i[2]), .Y(n151) );
  AND3X1_RVT U280 ( .A1(n185), .A2(n184), .A3(wb_adr_i[4]), .Y(n32) );
  AO222X1_RVT U281 ( .A1(rx[32]), .A2(n173), .A3(rx[64]), .A4(n169), .A5(rx[0]), .A6(n167), .Y(n86) );
  AO222X1_RVT U282 ( .A1(rx[34]), .A2(n174), .A3(rx[66]), .A4(n170), .A5(rx[2]), .A6(n166), .Y(n56) );
  AO222X1_RVT U283 ( .A1(rx[36]), .A2(n173), .A3(rx[68]), .A4(n171), .A5(rx[4]), .A6(n167), .Y(n48) );
  AO222X1_RVT U284 ( .A1(rx[37]), .A2(n174), .A3(rx[69]), .A4(n169), .A5(rx[5]), .A6(n165), .Y(n45) );
  AO222X1_RVT U285 ( .A1(rx[39]), .A2(n173), .A3(rx[71]), .A4(n171), .A5(rx[7]), .A6(n167), .Y(n38) );
  AO222X1_RVT U286 ( .A1(rx[40]), .A2(n174), .A3(rx[72]), .A4(n169), .A5(rx[8]), .A6(n165), .Y(n36) );
  AO222X1_RVT U287 ( .A1(rx[42]), .A2(n174), .A3(rx[74]), .A4(n171), .A5(
        rx[10]), .A6(n165), .Y(n84) );
  AO222X1_RVT U288 ( .A1(rx[43]), .A2(n173), .A3(rx[75]), .A4(n169), .A5(
        rx[11]), .A6(n165), .Y(n82) );
  AO222X1_RVT U289 ( .A1(rx[35]), .A2(n175), .A3(rx[67]), .A4(n170), .A5(rx[3]), .A6(n166), .Y(n51) );
  AO222X1_RVT U290 ( .A1(rx[38]), .A2(n175), .A3(rx[70]), .A4(n170), .A5(rx[6]), .A6(n166), .Y(n42) );
  AO222X1_RVT U291 ( .A1(rx[41]), .A2(n175), .A3(rx[73]), .A4(n170), .A5(rx[9]), .A6(n166), .Y(n28) );
  AO222X1_RVT U292 ( .A1(rx[44]), .A2(n175), .A3(rx[76]), .A4(n171), .A5(
        rx[12]), .A6(n167), .Y(n80) );
  AO221X1_RVT U293 ( .A1(rx[61]), .A2(n174), .A3(rx[29]), .A4(n167), .A5(n58), 
        .Y(wb_dat[29]) );
  AO221X1_RVT U294 ( .A1(rx[60]), .A2(n174), .A3(rx[28]), .A4(n167), .A5(n59), 
        .Y(wb_dat[28]) );
  AO221X1_RVT U295 ( .A1(rx[59]), .A2(n173), .A3(rx[27]), .A4(n166), .A5(n60), 
        .Y(wb_dat[27]) );
  AO22X1_RVT U296 ( .A1(n179), .A2(ctrl[8]), .A3(n93), .A4(wb_dat_i[8]), .Y(
        n123) );
  AND2X1_RVT U297 ( .A1(n94), .A2(n95), .Y(n93) );
  INVX1_RVT U298 ( .A(n95), .Y(n179) );
  NAND2X0_RVT U299 ( .A1(n90), .A2(n96), .Y(n95) );
  AO22X1_RVT U300 ( .A1(wb_dat_i[10]), .A2(n178), .A3(ctrl[10]), .A4(n90), .Y(
        n114) );
  AO22X1_RVT U301 ( .A1(wb_dat_i[12]), .A2(n178), .A3(ctrl[12]), .A4(n90), .Y(
        n112) );
  AO22X1_RVT U302 ( .A1(wb_dat_i[13]), .A2(n178), .A3(ctrl[13]), .A4(n90), .Y(
        n110) );
  AO221X1_RVT U303 ( .A1(rx[57]), .A2(n175), .A3(rx[25]), .A4(n165), .A5(n62), 
        .Y(wb_dat[25]) );
  NAND2X0_RVT U304 ( .A1(ctrl[13]), .A2(n182), .Y(n101) );
  NAND2X0_RVT U305 ( .A1(wb_sel_i[1]), .A2(n94), .Y(n90) );
  NAND2X0_RVT U306 ( .A1(ss[0]), .A2(n101), .Y(ss_pad_o[0]) );
  NAND2X0_RVT U307 ( .A1(ss[1]), .A2(n101), .Y(ss_pad_o[1]) );
  NAND2X0_RVT U308 ( .A1(ss[2]), .A2(n101), .Y(ss_pad_o[2]) );
  NAND2X0_RVT U309 ( .A1(ss[3]), .A2(n101), .Y(ss_pad_o[3]) );
  NAND2X0_RVT U310 ( .A1(ss[4]), .A2(n101), .Y(ss_pad_o[4]) );
  NAND2X0_RVT U311 ( .A1(ss[5]), .A2(n101), .Y(ss_pad_o[5]) );
  NAND2X0_RVT U312 ( .A1(ss[6]), .A2(n101), .Y(ss_pad_o[6]) );
  NAND2X0_RVT U313 ( .A1(ss[7]), .A2(n101), .Y(ss_pad_o[7]) );
  AO221X1_RVT U314 ( .A1(rx[62]), .A2(n175), .A3(rx[30]), .A4(n165), .A5(n54), 
        .Y(wb_dat[30]) );
  AO21X1_RVT U315 ( .A1(wb_int_o), .A2(n16), .A3(n91), .Y(n111) );
  AND3X1_RVT U316 ( .A1(wb_cyc_i), .A2(n16), .A3(wb_stb_i), .Y(N28) );
  AO22X1_RVT U317 ( .A1(n177), .A2(wb_dat_i[3]), .A3(ctrl[3]), .A4(n92), .Y(
        n120) );
  AO221X1_RVT U318 ( .A1(ctrl[3]), .A2(n32), .A3(rx[99]), .A4(n162), .A5(n52), 
        .Y(n50) );
  AO222X1_RVT U319 ( .A1(ctrl[9]), .A2(n152), .A3(divider[9]), .A4(n154), .A5(
        rx[105]), .A6(n162), .Y(n27) );
  AO221X1_RVT U320 ( .A1(ctrl[2]), .A2(n152), .A3(rx[98]), .A4(n162), .A5(n57), 
        .Y(n55) );
  INVX1_RVT U321 ( .A(n168), .Y(n167) );
  INVX1_RVT U322 ( .A(n168), .Y(n165) );
  INVX1_RVT U323 ( .A(n168), .Y(n166) );
  INVX1_RVT U324 ( .A(n31), .Y(n168) );
  AO221X1_RVT U325 ( .A1(ctrl[1]), .A2(n152), .A3(rx[97]), .A4(n163), .A5(n70), 
        .Y(n68) );
  AO221X1_RVT U326 ( .A1(ctrl[0]), .A2(n32), .A3(rx[96]), .A4(n162), .A5(n87), 
        .Y(n85) );
  INVX0_RVT U327 ( .A(wb_adr_i[3]), .Y(n184) );
  INVX1_RVT U328 ( .A(n176), .Y(n175) );
  INVX1_RVT U329 ( .A(n176), .Y(n173) );
  INVX1_RVT U330 ( .A(n176), .Y(n174) );
  INVX1_RVT U331 ( .A(n172), .Y(n171) );
  INVX1_RVT U332 ( .A(n172), .Y(n169) );
  INVX1_RVT U333 ( .A(n172), .Y(n170) );
  AND3X1_RVT U334 ( .A1(n185), .A2(n183), .A3(wb_adr_i[3]), .Y(n30) );
  AND3X1_RVT U335 ( .A1(n184), .A2(n183), .A3(n185), .Y(n31) );
  INVX0_RVT U336 ( .A(wb_adr_i[2]), .Y(n185) );
  INVX0_RVT U337 ( .A(wb_adr_i[4]), .Y(n183) );
  AO22X1_RVT U338 ( .A1(rx[87]), .A2(n170), .A3(rx[119]), .A4(n163), .Y(n64)
         );
  AO222X1_RVT U339 ( .A1(rx[111]), .A2(n162), .A3(divider[15]), .A4(n154), 
        .A5(rx[79]), .A6(n170), .Y(n75) );
  AO222X1_RVT U340 ( .A1(rx[110]), .A2(n162), .A3(divider[14]), .A4(n154), 
        .A5(rx[78]), .A6(n169), .Y(n76) );
  AO22X1_RVT U341 ( .A1(rx[86]), .A2(n171), .A3(rx[118]), .A4(n163), .Y(n65)
         );
  AO22X1_RVT U342 ( .A1(rx[85]), .A2(n169), .A3(rx[117]), .A4(n163), .Y(n66)
         );
  AO22X1_RVT U343 ( .A1(rx[84]), .A2(n170), .A3(rx[116]), .A4(n163), .Y(n67)
         );
  AO22X1_RVT U344 ( .A1(rx[83]), .A2(n171), .A3(rx[115]), .A4(n163), .Y(n71)
         );
  AO22X1_RVT U345 ( .A1(rx[82]), .A2(n169), .A3(rx[114]), .A4(n163), .Y(n72)
         );
  AO22X1_RVT U346 ( .A1(rx[81]), .A2(n170), .A3(rx[113]), .A4(n163), .Y(n73)
         );
  AO22X1_RVT U347 ( .A1(rx[80]), .A2(n171), .A3(rx[112]), .A4(n163), .Y(n74)
         );
  AO22X1_RVT U348 ( .A1(rx[88]), .A2(n170), .A3(rx[120]), .A4(n163), .Y(n63)
         );
  AO222X1_RVT U349 ( .A1(rx[45]), .A2(n174), .A3(rx[77]), .A4(n169), .A5(
        rx[13]), .A6(n165), .Y(n78) );
  AO222X1_RVT U350 ( .A1(rx[33]), .A2(n173), .A3(rx[65]), .A4(n171), .A5(rx[1]), .A6(n167), .Y(n69) );
  AND2X1_RVT U351 ( .A1(n100), .A2(n30), .Y(\_0_net_[2] ) );
endmodule

