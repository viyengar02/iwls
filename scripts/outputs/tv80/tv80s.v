/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4-1
// Date      : Tue May 13 10:51:24 2025
/////////////////////////////////////////////////////////////



    module tv80_mcode_Mode1_Flag_C0_Flag_N1_Flag_P2_Flag_X3_Flag_H4_Flag_Y5_Flag_Z6_Flag_S7 ( 
        MCycles, TStates, Prefix, Inc_PC, Inc_WZ, IncDec_16, Read_To_Reg, 
        Read_To_Acc, Set_BusA_To, Set_BusB_To, ALU_Op, Save_ALU, PreserveC, 
        Arith16, Set_Addr_To, IORQ, Jump, JumpE, JumpXY, Call, RstP, LDZ, LDW, 
        LDSPHL, Special_LD, ExchangeDH, ExchangeRp, ExchangeAF, ExchangeRS, 
        I_DJNZ, I_CPL, I_CCF, I_SCF, I_RETN, I_BT, I_BC, I_BTR, I_RLD, I_RRD, 
        I_INRC, SetDI, SetEI, IMode, Halt, NoRead, Write, IR, ISet, MCycle, F, 
        NMICycle, IntCycle );
  output [2:0] MCycles;
  output [2:0] TStates;
  output [1:0] Prefix;
  output [3:0] IncDec_16;
  output [3:0] Set_BusA_To;
  output [3:0] Set_BusB_To;
  output [3:0] ALU_Op;
  output [2:0] Set_Addr_To;
  output [2:0] Special_LD;
  output [1:0] IMode;
  input [7:0] IR;
  input [1:0] ISet;
  input [2:0] MCycle;
  input [7:0] F;
  input NMICycle, IntCycle;
  output Inc_PC, Inc_WZ, Read_To_Reg, Read_To_Acc, Save_ALU, PreserveC,
         Arith16, IORQ, Jump, JumpE, JumpXY, Call, RstP, LDZ, LDW, LDSPHL,
         ExchangeDH, ExchangeRp, ExchangeAF, ExchangeRS, I_DJNZ, I_CPL, I_CCF,
         I_SCF, I_RETN, I_BT, I_BC, I_BTR, I_RLD, I_RRD, I_INRC, SetDI, SetEI,
         Halt, NoRead, Write;
  wire   F_2, F_0, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n503, n504, n505, n506,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n563, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n92, n93, n94, n96, n97,
         n98, n99, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n138, n139, n140, n142, n143, n144, n145, n158,
         n159, n160, n177, n251, n304, n432, n433, n501, n502, n507, n562,
         n564, n596, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718;
  assign F_2 = F[2];
  assign F_0 = F[0];

  AND2X4_RVT U24 ( .A1(n70), .A2(n188), .Y(Special_LD[1]) );
  OA22X2_RVT U181 ( .A1(n124), .A2(n306), .A3(n418), .A4(n72), .Y(n417) );
  OA21X1_RVT U3 ( .A1(n57), .A2(n180), .A3(n176), .Y(TStates[0]) );
  NOR2X0_RVT U4 ( .A1(n535), .A2(n62), .Y(ExchangeAF) );
  INVX1_RVT U5 ( .A(MCycle[1]), .Y(n678) );
  NAND2X0_RVT U6 ( .A1(n302), .A2(n303), .Y(n287) );
  INVX1_RVT U7 ( .A(MCycle[2]), .Y(n691) );
  AND4X1_RVT U8 ( .A1(n592), .A2(n593), .A3(n594), .A4(n43), .Y(n591) );
  OA21X1_RVT U9 ( .A1(n595), .A2(n704), .A3(n32), .Y(n590) );
  NAND2X0_RVT U10 ( .A1(n640), .A2(n458), .Y(n563) );
  OA22X1_RVT U11 ( .A1(n21), .A2(n103), .A3(n61), .A4(n136), .Y(n273) );
  INVX1_RVT U12 ( .A(n235), .Y(n685) );
  INVX1_RVT U13 ( .A(n157), .Y(n690) );
  AND2X1_RVT U14 ( .A1(n158), .A2(n679), .Y(I_RETN) );
  AND4X1_RVT U15 ( .A1(n610), .A2(n608), .A3(n628), .A4(n629), .Y(n625) );
  INVX1_RVT U16 ( .A(IR[0]), .Y(n125) );
  AO21X1_RVT U17 ( .A1(n253), .A2(n402), .A3(n252), .Y(n162) );
  INVX1_RVT U18 ( .A(IR[1]), .Y(n716) );
  NAND2X0_RVT U19 ( .A1(n253), .A2(n64), .Y(n228) );
  OR2X1_RVT U20 ( .A1(n647), .A2(n618), .Y(n31) );
  INVX1_RVT U21 ( .A(n628), .Y(n134) );
  NAND2X0_RVT U22 ( .A1(n634), .A2(n623), .Y(n604) );
  NOR2X0_RVT U23 ( .A1(n643), .A2(n2), .Y(n18) );
  AND3X1_RVT U25 ( .A1(n45), .A2(n259), .A3(n66), .Y(RstP) );
  INVX1_RVT U26 ( .A(n645), .Y(n706) );
  AND2X1_RVT U27 ( .A1(n121), .A2(n357), .Y(n315) );
  INVX1_RVT U28 ( .A(n661), .Y(n25) );
  AO21X1_RVT U29 ( .A1(n394), .A2(n395), .A3(n21), .Y(n393) );
  OA21X1_RVT U30 ( .A1(n178), .A2(n57), .A3(n176), .Y(TStates[1]) );
  NAND2X0_RVT U31 ( .A1(n669), .A2(n662), .Y(n574) );
  NOR2X0_RVT U32 ( .A1(n538), .A2(n697), .Y(n457) );
  INVX1_RVT U33 ( .A(n41), .Y(n56) );
  AND3X1_RVT U34 ( .A1(n328), .A2(n329), .A3(n330), .Y(n327) );
  OA22X1_RVT U35 ( .A1(n685), .A2(n128), .A3(n85), .A4(n331), .Y(n330) );
  AO22X1_RVT U36 ( .A1(n66), .A2(n310), .A3(n69), .A4(n311), .Y(n308) );
  AND3X1_RVT U37 ( .A1(n284), .A2(n530), .A3(n183), .Y(n529) );
  OA222X1_RVT U38 ( .A1(n103), .A2(n596), .A3(n331), .A4(n127), .A5(n121), 
        .A6(n314), .Y(n372) );
  AO22X1_RVT U39 ( .A1(n673), .A2(n9), .A3(n677), .A4(n8), .Y(n292) );
  NAND3X0_RVT U40 ( .A1(n389), .A2(n227), .A3(n578), .Y(n577) );
  AND2X1_RVT U41 ( .A1(n67), .A2(n413), .Y(Prefix[1]) );
  NAND2X0_RVT U42 ( .A1(n710), .A2(n670), .Y(n605) );
  NAND2X0_RVT U43 ( .A1(n654), .A2(n710), .Y(n646) );
  NAND2X0_RVT U44 ( .A1(n670), .A2(n712), .Y(n585) );
  NAND2X0_RVT U45 ( .A1(n669), .A2(n666), .Y(n634) );
  NAND3X0_RVT U46 ( .A1(n245), .A2(n261), .A3(n262), .Y(n260) );
  AO21X1_RVT U47 ( .A1(n236), .A2(n368), .A3(n267), .Y(n483) );
  AO22X1_RVT U48 ( .A1(n620), .A2(n621), .A3(n702), .A4(n622), .Y(n532) );
  INVX1_RVT U49 ( .A(n581), .Y(n704) );
  NAND2X0_RVT U50 ( .A1(MCycle[1]), .A2(n693), .Y(n439) );
  INVX1_RVT U51 ( .A(n171), .Y(n117) );
  AO21X1_RVT U52 ( .A1(n106), .A2(n166), .A3(n167), .Y(n164) );
  NAND2X0_RVT U53 ( .A1(n485), .A2(n666), .Y(n636) );
  NAND2X0_RVT U54 ( .A1(n654), .A2(n709), .Y(n641) );
  INVX1_RVT U55 ( .A(n601), .Y(n702) );
  INVX1_RVT U56 ( .A(n202), .Y(n8) );
  AND2X1_RVT U57 ( .A1(IR[2]), .A2(n49), .Y(n664) );
  OR2X1_RVT U58 ( .A1(n143), .A2(n259), .Y(n167) );
  NAND2X0_RVT U59 ( .A1(n666), .A2(n663), .Y(n637) );
  INVX1_RVT U60 ( .A(n593), .Y(n694) );
  NAND2X0_RVT U61 ( .A1(n709), .A2(n670), .Y(n599) );
  NAND2X0_RVT U62 ( .A1(n669), .A2(n664), .Y(n639) );
  NAND2X0_RVT U63 ( .A1(n485), .A2(n664), .Y(n600) );
  AND2X1_RVT U64 ( .A1(n56), .A2(n267), .Y(n655) );
  NAND3X0_RVT U65 ( .A1(n641), .A2(n645), .A3(n646), .Y(n647) );
  NAND4X0_RVT U66 ( .A1(n660), .A2(n624), .A3(n635), .A4(n602), .Y(n652) );
  OR2X1_RVT U67 ( .A1(n652), .A2(n142), .Y(n653) );
  NAND4X0_RVT U68 ( .A1(n446), .A2(n344), .A3(n438), .A4(n658), .Y(n553) );
  OA22X1_RVT U69 ( .A1(n678), .A2(n691), .A3(n606), .A4(n2), .Y(n329) );
  NAND3X0_RVT U70 ( .A1(n643), .A2(n691), .A3(n606), .Y(n342) );
  AO21X1_RVT U71 ( .A1(n243), .A2(n114), .A3(n86), .Y(n242) );
  INVX1_RVT U72 ( .A(n244), .Y(n686) );
  AO22X1_RVT U73 ( .A1(n18), .A2(n9), .A3(n7), .A4(n673), .Y(n241) );
  OA21X1_RVT U74 ( .A1(n59), .A2(n252), .A3(n209), .Y(n250) );
  OA22X1_RVT U75 ( .A1(n235), .A2(n233), .A3(n258), .A4(n57), .Y(n247) );
  NAND2X0_RVT U76 ( .A1(n176), .A2(n267), .Y(n237) );
  OA22X1_RVT U77 ( .A1(n72), .A2(n127), .A3(n53), .A4(n381), .Y(n469) );
  OR2X1_RVT U78 ( .A1(n467), .A2(n468), .Y(n465) );
  AO21X1_RVT U79 ( .A1(n655), .A2(n365), .A3(n440), .Y(n551) );
  NOR2X0_RVT U80 ( .A1(n512), .A2(n68), .Y(I_SCF) );
  NOR2X0_RVT U81 ( .A1(n64), .A2(n469), .Y(Inc_WZ) );
  AO21X1_RVT U82 ( .A1(n603), .A2(n608), .A3(n601), .Y(n530) );
  NAND2X0_RVT U83 ( .A1(n672), .A2(n439), .Y(n338) );
  AND4X1_RVT U84 ( .A1(n14), .A2(n34), .A3(n162), .A4(n35), .Y(n156) );
  AO21X1_RVT U85 ( .A1(n161), .A2(n85), .A3(n675), .Y(n35) );
  AOI22X1_RVT U86 ( .A1(n687), .A2(n163), .A3(n164), .A4(n165), .Y(n34) );
  NAND2X0_RVT U87 ( .A1(n111), .A2(n571), .Y(n175) );
  AO21X1_RVT U88 ( .A1(n200), .A2(n201), .A3(n202), .Y(n199) );
  AO22X1_RVT U89 ( .A1(n196), .A2(n713), .A3(n197), .A4(n7), .Y(n195) );
  INVX1_RVT U90 ( .A(n641), .Y(n705) );
  OA21X1_RVT U91 ( .A1(n189), .A2(n190), .A3(n71), .Y(Special_LD[0]) );
  NAND3X0_RVT U92 ( .A1(n3), .A2(n216), .A3(n507), .Y(n232) );
  AO21X1_RVT U93 ( .A1(n225), .A2(n29), .A3(n208), .Y(n224) );
  OA22X1_RVT U94 ( .A1(n218), .A2(n715), .A3(n674), .A4(n161), .Y(n210) );
  NAND3X0_RVT U95 ( .A1(n676), .A2(n55), .A3(n143), .Y(n213) );
  NAND3X0_RVT U96 ( .A1(n55), .A2(n216), .A3(n507), .Y(n214) );
  OR2X1_RVT U97 ( .A1(n201), .A2(n217), .Y(n212) );
  INVX1_RVT U98 ( .A(n219), .Y(n77) );
  OA22X1_RVT U99 ( .A1(n80), .A2(n49), .A3(n249), .A4(n235), .Y(n297) );
  OA21X1_RVT U100 ( .A1(n61), .A2(n202), .A3(n21), .Y(n299) );
  OA21X1_RVT U101 ( .A1(n7), .A2(n235), .A3(n244), .Y(n300) );
  OA22X1_RVT U102 ( .A1(n63), .A2(n305), .A3(n58), .A4(n252), .Y(n296) );
  AND2X1_RVT U103 ( .A1(n3), .A2(n202), .Y(n223) );
  OR2X1_RVT U104 ( .A1(n301), .A2(n396), .Y(n281) );
  NAND2X0_RVT U105 ( .A1(n64), .A2(n402), .Y(n174) );
  AO21X1_RVT U106 ( .A1(n59), .A2(n64), .A3(n252), .Y(n215) );
  NAND3X0_RVT U107 ( .A1(n680), .A2(n55), .A3(n304), .Y(n279) );
  AND3X1_RVT U108 ( .A1(n438), .A2(n249), .A3(n412), .Y(n456) );
  OR2X1_RVT U109 ( .A1(n490), .A2(n344), .Y(n425) );
  NAND3X0_RVT U110 ( .A1(n84), .A2(n45), .A3(n75), .Y(n435) );
  AND3X1_RVT U111 ( .A1(n379), .A2(n377), .A3(n382), .Y(n434) );
  INVX1_RVT U112 ( .A(n266), .Y(n75) );
  NAND2X0_RVT U113 ( .A1(n639), .A2(n574), .Y(n597) );
  OA22X1_RVT U114 ( .A1(n601), .A2(n602), .A3(n603), .A4(n599), .Y(n525) );
  AND3X1_RVT U115 ( .A1(n355), .A2(n441), .A3(n102), .Y(n523) );
  AND4X1_RVT U116 ( .A1(n655), .A2(n61), .A3(n606), .A4(n691), .Y(n550) );
  AND3X1_RVT U117 ( .A1(n551), .A2(n568), .A3(n657), .Y(n569) );
  OA21X1_RVT U118 ( .A1(n103), .A2(n314), .A3(n183), .Y(n586) );
  AND4X1_RVT U119 ( .A1(n97), .A2(n127), .A3(n371), .A4(n528), .Y(n587) );
  NAND2X0_RVT U120 ( .A1(n608), .A2(n602), .Y(n537) );
  OA21X1_RVT U121 ( .A1(n656), .A2(n19), .A3(n521), .Y(n552) );
  INVX1_RVT U122 ( .A(n41), .Y(n57) );
  NAND4X0_RVT U123 ( .A1(n346), .A2(n347), .A3(n168), .A4(n348), .Y(n323) );
  OAI21X1_RVT U124 ( .A1(IntCycle), .A2(NMICycle), .A3(n675), .Y(n343) );
  OR2X1_RVT U125 ( .A1(n358), .A2(n59), .Y(n352) );
  NOR2X0_RVT U126 ( .A1(n333), .A2(n68), .Y(LDSPHL) );
  AOI21X1_RVT U127 ( .A1(n469), .A2(n470), .A3(n253), .Y(LDW) );
  NOR2X0_RVT U128 ( .A1(n384), .A2(n53), .Y(SetEI) );
  AND2X1_RVT U129 ( .A1(n697), .A2(n139), .Y(n539) );
  OA22X1_RVT U130 ( .A1(n121), .A2(n596), .A3(n688), .A4(n294), .Y(n547) );
  INVX1_RVT U131 ( .A(n711), .Y(n55) );
  NAND3X0_RVT U132 ( .A1(n569), .A2(n552), .A3(n651), .Y(n649) );
  OA22X1_RVT U133 ( .A1(n110), .A2(n550), .A3(n676), .A4(n567), .Y(n651) );
  NAND4X0_RVT U134 ( .A1(n546), .A2(n136), .A3(n294), .A4(n580), .Y(n579) );
  INVX1_RVT U135 ( .A(n74), .Y(n73) );
  NAND4X0_RVT U136 ( .A1(n383), .A2(n334), .A3(n434), .A4(n611), .Y(n555) );
  NOR2X0_RVT U137 ( .A1(n516), .A2(n68), .Y(I_CCF) );
  AND3X1_RVT U138 ( .A1(n66), .A2(n225), .A3(n105), .Y(I_DJNZ) );
  AO21X1_RVT U139 ( .A1(n160), .A2(n706), .A3(n414), .Y(n413) );
  AO21X1_RVT U140 ( .A1(n367), .A2(n368), .A3(n176), .Y(n361) );
  NAND4X0_RVT U141 ( .A1(n713), .A2(n484), .A3(n485), .A4(IR[2]), .Y(n368) );
  OA21X1_RVT U142 ( .A1(n315), .A2(n64), .A3(n227), .Y(n420) );
  NAND4X0_RVT U143 ( .A1(n146), .A2(n147), .A3(n148), .A4(n149), .Y(Write) );
  AND4X1_RVT U144 ( .A1(n151), .A2(n150), .A3(n152), .A4(n153), .Y(n149) );
  NAND3X0_RVT U145 ( .A1(n680), .A2(n175), .A3(n689), .Y(n146) );
  OA22X1_RVT U146 ( .A1(n154), .A2(n155), .A3(n156), .A4(n62), .Y(n148) );
  NAND2X0_RVT U147 ( .A1(n406), .A2(n169), .Y(n520) );
  AO22X1_RVT U148 ( .A1(n65), .A2(n192), .A3(n69), .A4(n193), .Y(n191) );
  NOR2X0_RVT U149 ( .A1(n531), .A2(n68), .Y(Halt) );
  AO22X1_RVT U150 ( .A1(n690), .A2(n221), .A3(n71), .A4(n222), .Y(n220) );
  AO21X1_RVT U151 ( .A1(n22), .A2(n29), .A3(n208), .Y(n207) );
  NAND3X0_RVT U152 ( .A1(n40), .A2(n401), .A3(n96), .Y(n295) );
  NAND2X0_RVT U153 ( .A1(n132), .A2(n174), .Y(n285) );
  NAND2X0_RVT U154 ( .A1(n277), .A2(n198), .Y(n386) );
  OA22X1_RVT U155 ( .A1(n253), .A2(n136), .A3(n56), .A4(n121), .Y(n388) );
  NAND4X0_RVT U156 ( .A1(n273), .A2(n274), .A3(n275), .A4(n227), .Y(n272) );
  NAND3X0_RVT U157 ( .A1(n371), .A2(n355), .A3(n127), .Y(n317) );
  AND3X1_RVT U158 ( .A1(n252), .A2(n344), .A3(n333), .Y(n644) );
  NAND4X0_RVT U159 ( .A1(n446), .A2(n44), .A3(n447), .A4(n448), .Y(n445) );
  OA222X1_RVT U160 ( .A1(n5), .A2(n449), .A3(n717), .A4(n450), .A5(n6), .A6(
        n451), .Y(n448) );
  OA22X1_RVT U161 ( .A1(n685), .A2(n452), .A3(F[6]), .A4(n453), .Y(n447) );
  NAND3X0_RVT U162 ( .A1(n381), .A2(n332), .A3(n336), .Y(n443) );
  NAND4X0_RVT U163 ( .A1(n103), .A2(n136), .A3(n121), .A4(n127), .Y(n422) );
  AND3X1_RVT U164 ( .A1(n58), .A2(n402), .A3(n428), .Y(n331) );
  INVX1_RVT U165 ( .A(n427), .Y(n76) );
  AND3X1_RVT U166 ( .A1(n252), .A2(n425), .A3(n264), .Y(n424) );
  AND4X1_RVT U167 ( .A1(n434), .A2(n326), .A3(n345), .A4(n119), .Y(n38) );
  AND4X1_RVT U168 ( .A1(n436), .A2(n437), .A3(n438), .A4(n249), .Y(n37) );
  NAND3X0_RVT U169 ( .A1(n523), .A2(n97), .A3(n526), .Y(IMode[0]) );
  AND3X1_RVT U170 ( .A1(n236), .A2(n53), .A3(n527), .Y(n526) );
  NAND3X0_RVT U171 ( .A1(n523), .A2(n97), .A3(n524), .Y(IMode[1]) );
  AND3X1_RVT U172 ( .A1(n236), .A2(n68), .A3(n525), .Y(n524) );
  INVX1_RVT U173 ( .A(n30), .Y(n389) );
  AO21X1_RVT U174 ( .A1(n654), .A2(n631), .A3(n112), .Y(n565) );
  NAND4X0_RVT U175 ( .A1(n569), .A2(n567), .A3(n570), .A4(n111), .Y(n566) );
  OA22X1_RVT U176 ( .A1(n550), .A2(n571), .A3(n676), .A4(n552), .Y(n570) );
  NAND4X0_RVT U177 ( .A1(n389), .A2(n284), .A3(n559), .A4(n560), .Y(n558) );
  OA222X1_RVT U178 ( .A1(n396), .A2(n561), .A3(n121), .A4(n57), .A5(n513), 
        .A6(n61), .Y(n560) );
  OR2X1_RVT U179 ( .A1(n54), .A2(n36), .Y(n559) );
  AND3X1_RVT U180 ( .A1(n121), .A2(n688), .A3(n546), .Y(n36) );
  OA21X1_RVT U182 ( .A1(n414), .A2(n133), .A3(n690), .Y(Prefix[0]) );
  AO21X1_RVT U183 ( .A1(n537), .A2(n538), .A3(n539), .Y(n461) );
  OA21X1_RVT U184 ( .A1(n56), .A2(n552), .A3(n364), .Y(n540) );
  OA22X1_RVT U185 ( .A1(n59), .A2(n110), .A3(n57), .A4(n541), .Y(n404) );
  OR2X1_RVT U186 ( .A1(n200), .A2(n62), .Y(n415) );
  NOR2X0_RVT U187 ( .A1(n385), .A2(n53), .Y(SetDI) );
  AO22X1_RVT U188 ( .A1(n65), .A2(n369), .A3(n71), .A4(n370), .Y(n360) );
  NAND3X0_RVT U189 ( .A1(n415), .A2(n416), .A3(n417), .Y(NoRead) );
  INVX1_RVT U190 ( .A(n368), .Y(n124) );
  NAND4X0_RVT U191 ( .A1(n388), .A2(n285), .A3(n295), .A4(n227), .Y(n390) );
  NAND4X0_RVT U192 ( .A1(n388), .A2(n389), .A3(n227), .A4(n284), .Y(n387) );
  AO22X1_RVT U193 ( .A1(n67), .A2(n421), .A3(n71), .A4(n422), .Y(MCycles[2])
         );
  NAND3X0_RVT U194 ( .A1(n334), .A2(n423), .A3(n424), .Y(n421) );
  NAND3X0_RVT U195 ( .A1(n294), .A2(n441), .A3(n97), .Y(n429) );
  AND2X1_RVT U196 ( .A1(n70), .A2(n165), .Y(n479) );
  NAND2X0_RVT U197 ( .A1(n104), .A2(n70), .Y(n17) );
  INVX0_RVT U198 ( .A(n72), .Y(n70) );
  INVX1_RVT U199 ( .A(MCycle[2]), .Y(n1) );
  INVX1_RVT U200 ( .A(n1), .Y(n2) );
  INVX1_RVT U201 ( .A(n54), .Y(n3) );
  INVX1_RVT U202 ( .A(n608), .Y(n4) );
  NAND2X0_RVT U203 ( .A1(n711), .A2(n54), .Y(n262) );
  INVX1_RVT U204 ( .A(IR[4]), .Y(n54) );
  INVX1_RVT U205 ( .A(F_0), .Y(n5) );
  INVX1_RVT U206 ( .A(n5), .Y(n6) );
  INVX1_RVT U207 ( .A(n202), .Y(n7) );
  INVX1_RVT U208 ( .A(n8), .Y(n9) );
  OA22X1_RVT U209 ( .A1(n344), .A2(n508), .A3(n674), .A4(n264), .Y(n10) );
  NAND4X0_RVT U210 ( .A1(n147), .A2(n514), .A3(n13), .A4(n518), .Y(IORQ) );
  NBUFFX2_RVT U211 ( .A(n280), .Y(n44) );
  AND2X1_RVT U212 ( .A1(n348), .A2(n494), .Y(n12) );
  NOR2X0_RVT U213 ( .A1(n691), .A2(n606), .Y(n39) );
  INVX1_RVT U214 ( .A(n253), .Y(n45) );
  INVX1_RVT U215 ( .A(n18), .Y(n253) );
  OR2X1_RVT U216 ( .A1(n27), .A2(n9), .Y(n459) );
  NAND3X0_RVT U217 ( .A1(n687), .A2(n520), .A3(n67), .Y(n13) );
  AOI222X1_RVT U218 ( .A1(n45), .A2(n87), .A3(n22), .A4(n170), .A5(n117), .A6(
        n673), .Y(n14) );
  INVX1_RVT U219 ( .A(n289), .Y(n251) );
  INVX1_RVT U220 ( .A(n621), .Y(n20) );
  OR2X1_RVT U221 ( .A1(n41), .A2(n40), .Y(n225) );
  OR2X1_RVT U222 ( .A1(n56), .A2(n103), .Y(n500) );
  OR2X1_RVT U223 ( .A1(n9), .A2(IR[3]), .Y(n401) );
  NAND2X0_RVT U224 ( .A1(n491), .A2(n690), .Y(n15) );
  NAND2X0_RVT U225 ( .A1(n73), .A2(n492), .Y(n16) );
  NAND3X0_RVT U226 ( .A1(n15), .A2(n16), .A3(n17), .Y(IncDec_16[3]) );
  NAND2X0_RVT U227 ( .A1(n495), .A2(n12), .Y(n491) );
  OR2X1_RVT U228 ( .A1(n402), .A2(n252), .Y(n348) );
  INVX1_RVT U229 ( .A(n65), .Y(n62) );
  NAND2X0_RVT U230 ( .A1(MCycle[1]), .A2(MCycle[0]), .Y(n643) );
  INVX1_RVT U231 ( .A(n53), .Y(n65) );
  INVX1_RVT U232 ( .A(n40), .Y(n59) );
  AND2X1_RVT U233 ( .A1(n20), .A2(n601), .Y(n19) );
  INVX1_RVT U234 ( .A(n40), .Y(n21) );
  INVX1_RVT U235 ( .A(n21), .Y(n22) );
  INVX0_RVT U236 ( .A(n40), .Y(n58) );
  NAND2X0_RVT U237 ( .A1(n259), .A2(n225), .Y(n23) );
  NAND2X0_RVT U238 ( .A1(n84), .A2(n427), .Y(n24) );
  NAND3X0_RVT U239 ( .A1(n23), .A2(n24), .A3(n10), .Y(n219) );
  NAND2X0_RVT U240 ( .A1(n349), .A2(n2), .Y(n402) );
  AOI21X1_RVT U241 ( .A1(n9), .A2(n261), .A3(n25), .Y(n581) );
  AO21X1_RVT U242 ( .A1(n131), .A2(n7), .A3(n86), .Y(n268) );
  NAND2X0_RVT U243 ( .A1(n484), .A2(n712), .Y(n592) );
  INVX1_RVT U244 ( .A(n484), .Y(n27) );
  NAND2X0_RVT U245 ( .A1(n484), .A2(n710), .Y(n594) );
  NAND2X0_RVT U246 ( .A1(n484), .A2(n709), .Y(n593) );
  OR2X1_RVT U247 ( .A1(n628), .A2(n645), .Y(n534) );
  NBUFFX2_RVT U248 ( .A(ISet[1]), .Y(n26) );
  INVX0_RVT U249 ( .A(n32), .Y(n28) );
  NBUFFX2_RVT U250 ( .A(n194), .Y(n29) );
  AND2X1_RVT U251 ( .A1(n501), .A2(n40), .Y(n30) );
  NOR2X0_RVT U252 ( .A1(n618), .A2(n647), .Y(n32) );
  AOI21X1_RVT U253 ( .A1(n143), .A2(n225), .A3(n219), .Y(n495) );
  INVX0_RVT U254 ( .A(n532), .Y(n89) );
  INVX0_RVT U255 ( .A(n39), .Y(n63) );
  INVX0_RVT U256 ( .A(n474), .Y(n90) );
  INVX0_RVT U257 ( .A(n288), .Y(n88) );
  INVX0_RVT U258 ( .A(n249), .Y(n562) );
  INVX0_RVT U259 ( .A(n441), .Y(n158) );
  INVX0_RVT U260 ( .A(n154), .Y(n126) );
  INVX1_RVT U261 ( .A(n604), .Y(n433) );
  INVX0_RVT U262 ( .A(n227), .Y(n113) );
  AND4X1_RVT U263 ( .A1(n136), .A2(n672), .A3(n127), .A4(n355), .Y(n354) );
  INVX1_RVT U264 ( .A(n634), .Y(n432) );
  OAI21X1_RVT U265 ( .A1(n477), .A2(n75), .A3(n478), .Y(n476) );
  INVX0_RVT U266 ( .A(n233), .Y(n507) );
  INVX1_RVT U267 ( .A(n574), .Y(n160) );
  AO21X1_RVT U268 ( .A1(n55), .A2(n555), .A3(n539), .Y(n542) );
  OR2X1_RVT U269 ( .A1(n376), .A2(n33), .Y(n548) );
  INVX1_RVT U270 ( .A(n584), .Y(n33) );
  NAND3X0_RVT U271 ( .A1(n363), .A2(n176), .A3(n689), .Y(n362) );
  AND2X1_RVT U272 ( .A1(n409), .A2(n410), .Y(n407) );
  INVX0_RVT U273 ( .A(n287), .Y(n80) );
  NAND2X0_RVT U274 ( .A1(n452), .A2(n446), .Y(n474) );
  AND4X1_RVT U275 ( .A1(n453), .A2(n450), .A3(n451), .A4(n449), .Y(n452) );
  INVX0_RVT U276 ( .A(n151), .Y(I_BTR) );
  AND2X1_RVT U277 ( .A1(n380), .A2(n381), .Y(n334) );
  AND2X1_RVT U278 ( .A1(n552), .A2(n541), .Y(n366) );
  INVX1_RVT U279 ( .A(n344), .Y(n106) );
  INVX1_RVT U280 ( .A(n438), .Y(n105) );
  INVX1_RVT U281 ( .A(n375), .Y(n136) );
  INVX0_RVT U282 ( .A(n520), .Y(n128) );
  INVX1_RVT U283 ( .A(n386), .Y(n79) );
  INVX0_RVT U284 ( .A(n426), .Y(n84) );
  INVX0_RVT U285 ( .A(n50), .Y(n498) );
  NAND2X0_RVT U286 ( .A1(n564), .A2(n619), .Y(n249) );
  NAND2X0_RVT U287 ( .A1(n135), .A2(n256), .Y(n288) );
  INVX0_RVT U288 ( .A(n295), .Y(n94) );
  INVX0_RVT U289 ( .A(n194), .Y(n121) );
  INVX0_RVT U290 ( .A(n403), .Y(n132) );
  NOR3X0_RVT U291 ( .A1(n614), .A2(n615), .A3(n616), .Y(n455) );
  NAND4X0_RVT U292 ( .A1(n531), .A2(n512), .A3(n516), .A4(n515), .Y(n615) );
  NAND4X0_RVT U293 ( .A1(n159), .A2(n89), .A3(n119), .A4(n617), .Y(n616) );
  AND2X1_RVT U294 ( .A1(n128), .A2(n168), .Y(n379) );
  INVX0_RVT U295 ( .A(n413), .Y(n159) );
  AND2X1_RVT U296 ( .A1(n676), .A2(n502), .Y(n196) );
  NAND2X0_RVT U297 ( .A1(n107), .A2(n696), .Y(n344) );
  INVX0_RVT U298 ( .A(n461), .Y(n135) );
  NOR2X0_RVT U299 ( .A1(n553), .A2(n554), .Y(n541) );
  NAND2X0_RVT U300 ( .A1(n567), .A2(n568), .Y(n554) );
  AND3X1_RVT U301 ( .A1(n335), .A2(n44), .A3(n116), .Y(n377) );
  INVX1_RVT U302 ( .A(n339), .Y(n116) );
  AND4X1_RVT U303 ( .A1(n367), .A2(n472), .A3(n384), .A4(n385), .Y(n617) );
  NAND2X0_RVT U304 ( .A1(n96), .A2(n683), .Y(n514) );
  AND2X1_RVT U305 ( .A1(n115), .A2(n328), .Y(n382) );
  INVX1_RVT U306 ( .A(n340), .Y(n115) );
  AND2X1_RVT U307 ( .A1(n140), .A2(n660), .Y(n656) );
  AND2X1_RVT U308 ( .A1(n66), .A2(n532), .Y(ExchangeRp) );
  AND2X1_RVT U309 ( .A1(n303), .A2(n186), .Y(n198) );
  AND2X1_RVT U310 ( .A1(n254), .A2(n255), .Y(n172) );
  NAND2X0_RVT U311 ( .A1(n409), .A2(n254), .Y(n340) );
  INVX0_RVT U312 ( .A(n175), .Y(n110) );
  INVX1_RVT U313 ( .A(n422), .Y(n102) );
  NAND2X0_RVT U314 ( .A1(n694), .A2(n107), .Y(n438) );
  INVX0_RVT U315 ( .A(n404), .Y(n82) );
  NAND2X0_RVT U316 ( .A1(n419), .A2(n513), .Y(n375) );
  NAND2X0_RVT U317 ( .A1(n273), .A2(n284), .Y(n208) );
  NAND2X0_RVT U318 ( .A1(n92), .A2(n696), .Y(n535) );
  NAND2X0_RVT U319 ( .A1(n92), .A2(n694), .Y(n446) );
  NAND2X0_RVT U320 ( .A1(n502), .A2(n683), .Y(n147) );
  NAND2X0_RVT U321 ( .A1(n105), .A2(n676), .Y(n186) );
  NAND2X0_RVT U322 ( .A1(n410), .A2(n255), .Y(n339) );
  NAND2X0_RVT U323 ( .A1(n92), .A2(n697), .Y(n450) );
  NAND2X0_RVT U324 ( .A1(n107), .A2(n697), .Y(n453) );
  AND2X1_RVT U325 ( .A1(n305), .A2(n161), .Y(n381) );
  NOR2X0_RVT U326 ( .A1(n187), .A2(n188), .Y(n183) );
  NAND2X0_RVT U327 ( .A1(n110), .A2(n440), .Y(n430) );
  INVX1_RVT U328 ( .A(n609), .Y(n93) );
  INVX1_RVT U329 ( .A(n367), .Y(n133) );
  NAND2X0_RVT U330 ( .A1(n168), .A2(n169), .Y(n163) );
  INVX1_RVT U331 ( .A(n217), .Y(n714) );
  INVX1_RVT U332 ( .A(n459), .Y(n698) );
  NAND3X0_RVT U333 ( .A1(n623), .A2(n624), .A3(n625), .Y(n622) );
  AND2X1_RVT U334 ( .A1(n89), .A2(n393), .Y(n302) );
  AO21X1_RVT U335 ( .A1(n685), .A2(n226), .A3(n686), .Y(n243) );
  INVX1_RVT U336 ( .A(n416), .Y(JumpE) );
  NAND2X0_RVT U337 ( .A1(n597), .A2(n60), .Y(n441) );
  NAND2X0_RVT U338 ( .A1(n118), .A2(n60), .Y(n561) );
  AND2X1_RVT U339 ( .A1(n397), .A2(n398), .Y(n256) );
  AO21X1_RVT U340 ( .A1(n399), .A2(n400), .A3(n21), .Y(n398) );
  NAND2X0_RVT U341 ( .A1(n129), .A2(n60), .Y(n154) );
  NAND3X0_RVT U342 ( .A1(n81), .A2(n312), .A3(n313), .Y(n311) );
  INVX0_RVT U343 ( .A(n317), .Y(n81) );
  OA22X1_RVT U344 ( .A1(n314), .A2(n315), .A3(n596), .A4(n316), .Y(n313) );
  INVX0_RVT U345 ( .A(n401), .Y(n713) );
  INVX0_RVT U346 ( .A(n285), .Y(n131) );
  NAND2X0_RVT U347 ( .A1(n620), .A2(n626), .Y(n397) );
  OA21X1_RVT U348 ( .A1(n705), .A2(n618), .A3(n160), .Y(n414) );
  NAND2X0_RVT U349 ( .A1(n706), .A2(n129), .Y(n252) );
  INVX0_RVT U350 ( .A(n262), .Y(n710) );
  NAND2X0_RVT U351 ( .A1(n594), .A2(n593), .Y(n538) );
  NAND4X0_RVT U352 ( .A1(n93), .A2(n433), .A3(n625), .A4(n627), .Y(n620) );
  INVX0_RVT U353 ( .A(n594), .Y(n696) );
  AO21X1_RVT U354 ( .A1(n699), .A2(n139), .A3(n189), .Y(n188) );
  AND2X1_RVT U355 ( .A1(n699), .A2(n142), .Y(n189) );
  INVX0_RVT U356 ( .A(n597), .Y(n145) );
  OA21X1_RVT U357 ( .A1(n685), .A2(n168), .A3(n44), .Y(n319) );
  OA221X1_RVT U358 ( .A1(n695), .A2(n656), .A3(n93), .A4(n659), .A5(n535), .Y(
        n658) );
  NAND2X0_RVT U359 ( .A1(n674), .A2(n59), .Y(n376) );
  INVX0_RVT U360 ( .A(n228), .Y(n674) );
  INVX1_RVT U361 ( .A(n548), .Y(n596) );
  AO21X1_RVT U362 ( .A1(n701), .A2(n139), .A3(n190), .Y(n187) );
  AND2X1_RVT U363 ( .A1(n701), .A2(n142), .Y(n190) );
  AND2X1_RVT U364 ( .A1(n395), .A2(n399), .Y(n335) );
  NAND2X0_RVT U365 ( .A1(n653), .A2(n626), .Y(n568) );
  NOR3X0_RVT U366 ( .A1(n583), .A2(n582), .A3(n668), .Y(n660) );
  NAND3X0_RVT U367 ( .A1(n145), .A2(n433), .A3(n83), .Y(n668) );
  OR2X1_RVT U368 ( .A1(n632), .A2(n701), .Y(n621) );
  AO21X1_RVT U369 ( .A1(n113), .A2(n226), .A3(n196), .Y(n206) );
  AND2X1_RVT U370 ( .A1(n88), .A2(n200), .Y(n277) );
  NAND2X0_RVT U371 ( .A1(n134), .A2(n707), .Y(n367) );
  INVX0_RVT U372 ( .A(n503), .Y(n683) );
  NAND2X0_RVT U373 ( .A1(n707), .A2(n160), .Y(n264) );
  AND3X1_RVT U374 ( .A1(n525), .A2(n598), .A3(n527), .Y(n351) );
  NAND2X0_RVT U375 ( .A1(n94), .A2(n55), .Y(n274) );
  OR2X1_RVT U376 ( .A1(n440), .A2(n59), .Y(n364) );
  NAND2X0_RVT U377 ( .A1(n58), .A2(n61), .Y(n165) );
  NAND2X0_RVT U378 ( .A1(n696), .A2(n118), .Y(n254) );
  NAND2X0_RVT U379 ( .A1(n123), .A2(n696), .Y(n409) );
  INVX0_RVT U380 ( .A(n592), .Y(n697) );
  NAND2X0_RVT U381 ( .A1(n564), .A2(n707), .Y(n437) );
  NAND2X0_RVT U382 ( .A1(n4), .A2(n700), .Y(n419) );
  INVX1_RVT U383 ( .A(n56), .Y(n676) );
  NAND2X0_RVT U384 ( .A1(n705), .A2(n129), .Y(n169) );
  INVX1_RVT U385 ( .A(n631), .Y(n109) );
  AND2X1_RVT U386 ( .A1(n126), .A2(n228), .Y(n197) );
  INVX1_RVT U387 ( .A(n563), .Y(n83) );
  NAND2X0_RVT U388 ( .A1(n694), .A2(n118), .Y(n255) );
  NAND2X0_RVT U389 ( .A1(n123), .A2(n694), .Y(n410) );
  OA21X1_RVT U390 ( .A1(n305), .A2(n675), .A3(n215), .Y(n276) );
  NAND2X0_RVT U391 ( .A1(n707), .A2(n129), .Y(n478) );
  NAND2X0_RVT U392 ( .A1(n118), .A2(n697), .Y(n161) );
  NAND2X0_RVT U393 ( .A1(n123), .A2(n697), .Y(n305) );
  NAND2X0_RVT U394 ( .A1(n139), .A2(n700), .Y(n513) );
  NAND2X0_RVT U395 ( .A1(n697), .A2(n4), .Y(n515) );
  INVX1_RVT U396 ( .A(n635), .Y(n107) );
  INVX1_RVT U397 ( .A(n537), .Y(n140) );
  NAND2X0_RVT U398 ( .A1(n172), .A2(n173), .Y(n170) );
  NAND2X0_RVT U399 ( .A1(n564), .A2(n705), .Y(n533) );
  INVX1_RVT U400 ( .A(n623), .Y(n564) );
  INVX1_RVT U401 ( .A(n624), .Y(n92) );
  NAND2X0_RVT U402 ( .A1(n553), .A2(n56), .Y(n657) );
  OAI21X1_RVT U403 ( .A1(n568), .A2(n57), .A3(n540), .Y(n650) );
  NAND2X0_RVT U404 ( .A1(n55), .A2(n9), .Y(n217) );
  NAND2X0_RVT U405 ( .A1(n564), .A2(n706), .Y(n472) );
  NOR2X0_RVT U406 ( .A1(n472), .A2(n62), .Y(JumpXY) );
  NOR2X0_RVT U407 ( .A1(n533), .A2(n62), .Y(ExchangeRS) );
  AND3X1_RVT U408 ( .A1(n89), .A2(n256), .A3(n257), .Y(n218) );
  OA22X1_RVT U409 ( .A1(n235), .A2(n168), .A3(n57), .A4(n173), .Y(n257) );
  NAND2X0_RVT U410 ( .A1(n225), .A2(n166), .Y(n508) );
  AO21X1_RVT U411 ( .A1(n499), .A2(n332), .A3(n157), .Y(n497) );
  NAND2X0_RVT U412 ( .A1(n493), .A2(n151), .Y(n492) );
  AO22X1_RVT U413 ( .A1(n71), .A2(n268), .A3(n269), .A4(n52), .Y(
        Set_BusA_To[3]) );
  NOR2X0_RVT U414 ( .A1(n202), .A2(n270), .Y(n269) );
  OA21X1_RVT U415 ( .A1(n44), .A2(n58), .A3(n281), .Y(n270) );
  AOI22X1_RVT U416 ( .A1(n30), .A2(n70), .A3(n479), .A4(n101), .Y(n493) );
  OA21X1_RVT U417 ( .A1(n637), .A2(n695), .A3(n494), .Y(n332) );
  AO21X1_RVT U418 ( .A1(n70), .A2(n187), .A3(Special_LD[1]), .Y(Special_LD[2])
         );
  NAND2X0_RVT U419 ( .A1(n106), .A2(n166), .Y(n185) );
  NAND3X0_RVT U420 ( .A1(n589), .A2(n704), .A3(n588), .Y(n626) );
  AO21X1_RVT U421 ( .A1(n65), .A2(n475), .A3(I_RETN), .Y(Jump) );
  AND4X1_RVT U422 ( .A1(n334), .A2(n335), .A3(n336), .A4(n337), .Y(n318) );
  NAND2X0_RVT U423 ( .A1(n338), .A2(n339), .Y(n337) );
  NOR2X0_RVT U424 ( .A1(n515), .A2(n62), .Y(I_CPL) );
  AND4X1_RVT U425 ( .A1(n90), .A2(n454), .A3(n332), .A4(n642), .Y(n383) );
  INVX0_RVT U426 ( .A(n637), .Y(n129) );
  AND3X1_RVT U427 ( .A1(n65), .A2(n471), .A3(n677), .Y(Call) );
  AND2X1_RVT U428 ( .A1(n458), .A2(n574), .Y(n629) );
  OA221X1_RVT U429 ( .A1(n80), .A2(n711), .A3(n270), .A4(n217), .A5(n279), .Y(
        n278) );
  INVX0_RVT U430 ( .A(n605), .Y(n699) );
  AND4X1_RVT U431 ( .A1(n588), .A2(n589), .A3(n590), .A4(n591), .Y(n528) );
  AND4X1_RVT U432 ( .A1(n109), .A2(n140), .A3(n83), .A4(n145), .Y(n595) );
  INVX0_RVT U433 ( .A(n342), .Y(n672) );
  AO21X1_RVT U434 ( .A1(n3), .A2(n287), .A3(n288), .Y(n286) );
  INVX1_RVT U435 ( .A(n39), .Y(n64) );
  INVX0_RVT U436 ( .A(n338), .Y(n671) );
  INVX0_RVT U437 ( .A(n599), .Y(n701) );
  NAND2X0_RVT U438 ( .A1(n605), .A2(n585), .Y(n632) );
  NAND2X0_RVT U439 ( .A1(n688), .A2(n114), .Y(n227) );
  INVX0_RVT U440 ( .A(n646), .Y(n707) );
  INVX0_RVT U441 ( .A(n425), .Y(n78) );
  INVX0_RVT U442 ( .A(n174), .Y(n675) );
  OA21X1_RVT U443 ( .A1(n599), .A2(n600), .A3(n531), .Y(n527) );
  INVX0_RVT U444 ( .A(n514), .Y(I_INRC) );
  AND2X1_RVT U445 ( .A1(n639), .A2(n640), .Y(n638) );
  AO222X1_RVT U446 ( .A1(n22), .A2(n488), .A3(n685), .A4(n489), .A5(n78), .A6(
        n673), .Y(n487) );
  NAND2X0_RVT U447 ( .A1(n379), .A2(n90), .Y(n489) );
  AND2X1_RVT U448 ( .A1(n55), .A2(n549), .Y(n543) );
  INVX0_RVT U449 ( .A(n565), .Y(n111) );
  OAI221X1_RVT U450 ( .A1(n366), .A2(n676), .A3(n550), .A4(n110), .A5(n551), 
        .Y(n549) );
  NAND2X0_RVT U451 ( .A1(n562), .A2(n688), .Y(n200) );
  AND2X1_RVT U452 ( .A1(n681), .A2(n191), .Y(Set_BusB_To[3]) );
  NAND3X0_RVT U453 ( .A1(n198), .A2(n199), .A3(n77), .Y(n192) );
  NAND2X0_RVT U454 ( .A1(n669), .A2(n667), .Y(n623) );
  AND3X1_RVT U455 ( .A1(n603), .A2(n598), .A3(n630), .Y(n394) );
  NAND2X0_RVT U456 ( .A1(n600), .A2(n603), .Y(n631) );
  INVX1_RVT U457 ( .A(n63), .Y(n673) );
  INVX1_RVT U458 ( .A(n237), .Y(n681) );
  INVX0_RVT U459 ( .A(n602), .Y(n139) );
  AO22X1_RVT U460 ( .A1(n562), .A2(n687), .A3(n73), .A4(n555), .Y(n576) );
  AO221X1_RVT U461 ( .A1(n73), .A2(n649), .A3(n112), .A4(n22), .A5(n650), .Y(
        n575) );
  NAND3X0_RVT U462 ( .A1(n546), .A2(n136), .A3(n547), .Y(n545) );
  INVX1_RVT U463 ( .A(n636), .Y(n118) );
  INVX1_RVT U464 ( .A(n639), .Y(n144) );
  AND2X1_RVT U465 ( .A1(n584), .A2(n674), .Y(n314) );
  NAND2X0_RVT U466 ( .A1(n665), .A2(n666), .Y(n635) );
  INVX1_RVT U467 ( .A(n585), .Y(n700) );
  INVX1_RVT U468 ( .A(n600), .Y(n108) );
  NAND2X0_RVT U469 ( .A1(n655), .A2(n59), .Y(n365) );
  NAND2X0_RVT U470 ( .A1(n73), .A2(n579), .Y(n578) );
  NAND2X0_RVT U471 ( .A1(n3), .A2(n555), .Y(n572) );
  NAND2X0_RVT U472 ( .A1(n37), .A2(n38), .Y(n431) );
  INVX1_RVT U473 ( .A(n610), .Y(n123) );
  INVX1_RVT U474 ( .A(n153), .Y(I_RRD) );
  INVX1_RVT U475 ( .A(n152), .Y(I_RLD) );
  AO221X1_RVT U476 ( .A1(n132), .A2(n292), .A3(n94), .A4(n73), .A5(n293), .Y(
        n291) );
  NAND4X0_RVT U477 ( .A1(n296), .A2(n88), .A3(n297), .A4(n298), .Y(n290) );
  AO221X1_RVT U478 ( .A1(n126), .A2(n241), .A3(n196), .A4(n73), .A5(n242), .Y(
        n240) );
  NAND4X0_RVT U479 ( .A1(n246), .A2(n201), .A3(n247), .A4(n248), .Y(n239) );
  NAND2X0_RVT U480 ( .A1(n680), .A2(n263), .Y(n246) );
  NAND2X0_RVT U481 ( .A1(n562), .A2(n260), .Y(n233) );
  NAND3X0_RVT U482 ( .A1(n264), .A2(n161), .A3(n265), .Y(n263) );
  NAND2X0_RVT U483 ( .A1(n483), .A2(n176), .Y(n482) );
  AND2X1_RVT U484 ( .A1(n306), .A2(n307), .Y(Set_Addr_To[2]) );
  AO21X1_RVT U485 ( .A1(n308), .A2(n176), .A3(n309), .Y(n307) );
  AO21X1_RVT U486 ( .A1(n45), .A2(n266), .A3(n673), .Y(n427) );
  NAND4X0_RVT U487 ( .A1(n351), .A2(n352), .A3(n353), .A4(n354), .Y(n321) );
  OR3X1_RVT U488 ( .A1(n323), .A2(n324), .A3(n325), .Y(n322) );
  AO21X1_RVT U489 ( .A1(n360), .A2(n176), .A3(n309), .Y(n359) );
  OA222X1_RVT U490 ( .A1(n685), .A2(n379), .A3(n680), .A4(n380), .A5(n381), 
        .A6(n331), .Y(n378) );
  NAND2X0_RVT U491 ( .A1(n361), .A2(n362), .Y(n309) );
  NAND3X0_RVT U492 ( .A1(n364), .A2(n365), .A3(n366), .Y(n363) );
  NAND2X0_RVT U493 ( .A1(n78), .A2(n18), .Y(n346) );
  NAND3X0_RVT U494 ( .A1(n75), .A2(n349), .A3(n98), .Y(n347) );
  NAND2X0_RVT U495 ( .A1(n404), .A2(n540), .Y(n536) );
  NAND3X0_RVT U496 ( .A1(n79), .A2(n276), .A3(n392), .Y(n391) );
  AND2X1_RVT U497 ( .A1(n684), .A2(n691), .Y(n40) );
  NAND2X0_RVT U498 ( .A1(n688), .A2(n693), .Y(n235) );
  INVX0_RVT U499 ( .A(n439), .Y(n684) );
  AND2X1_RVT U500 ( .A1(n703), .A2(n708), .Y(n484) );
  AND2X1_RVT U501 ( .A1(n349), .A2(n691), .Y(n41) );
  NAND2X0_RVT U502 ( .A1(n665), .A2(n662), .Y(n458) );
  INVX0_RVT U503 ( .A(n643), .Y(n682) );
  NAND2X0_RVT U504 ( .A1(n693), .A2(n678), .Y(n606) );
  INVX1_RVT U505 ( .A(n402), .Y(n677) );
  AND2X1_RVT U506 ( .A1(n716), .A2(n125), .Y(n665) );
  NAND2X0_RVT U507 ( .A1(n485), .A2(n662), .Y(n603) );
  NAND2X0_RVT U508 ( .A1(n710), .A2(n661), .Y(n589) );
  NAND2X0_RVT U509 ( .A1(n485), .A2(n667), .Y(n610) );
  AO22X1_RVT U510 ( .A1(n86), .A2(n71), .A3(n67), .A4(n405), .Y(Read_To_Acc)
         );
  INVX1_RVT U511 ( .A(n236), .Y(n689) );
  NAND2X0_RVT U512 ( .A1(n234), .A2(n235), .Y(n216) );
  NAND2X0_RVT U513 ( .A1(n709), .A2(n661), .Y(n588) );
  NAND2X0_RVT U514 ( .A1(n681), .A2(n236), .Y(n205) );
  NAND2X0_RVT U515 ( .A1(n692), .A2(n490), .Y(n166) );
  OR2X1_RVT U516 ( .A1(n267), .A2(n46), .Y(n306) );
  INVX1_RVT U517 ( .A(n236), .Y(n46) );
  INVX1_RVT U518 ( .A(F[7]), .Y(n718) );
  AND2X1_RVT U519 ( .A1(n66), .A2(n179), .Y(n178) );
  AND2X1_RVT U520 ( .A1(n73), .A2(IR[2]), .Y(n662) );
  NAND2X0_RVT U521 ( .A1(n688), .A2(MCycle[0]), .Y(n234) );
  AO222X1_RVT U522 ( .A1(n338), .A2(n340), .A3(n341), .A4(n342), .A5(n106), 
        .A6(n343), .Y(n324) );
  NAND3X0_RVT U523 ( .A1(n99), .A2(n44), .A3(n345), .Y(n341) );
  NAND3X0_RVT U524 ( .A1(n276), .A2(n277), .A3(n278), .Y(n271) );
  NAND2X0_RVT U525 ( .A1(n131), .A2(n714), .Y(n275) );
  INVX0_RVT U526 ( .A(n281), .Y(n177) );
  NAND3X0_RVT U527 ( .A1(n209), .A2(n198), .A3(n229), .Y(n221) );
  AO221X1_RVT U528 ( .A1(n223), .A2(n197), .A3(n3), .A4(n206), .A5(n224), .Y(
        n222) );
  NAND4X0_RVT U529 ( .A1(n209), .A2(n77), .A3(n210), .A4(n211), .Y(n203) );
  AO221X1_RVT U530 ( .A1(n714), .A2(n197), .A3(n55), .A4(n206), .A5(n207), .Y(
        n204) );
  AND4X1_RVT U531 ( .A1(n212), .A2(n213), .A3(n214), .A4(n215), .Y(n211) );
  INVX0_RVT U532 ( .A(MCycle[0]), .Y(n693) );
  INVX1_RVT U533 ( .A(n415), .Y(Arith16) );
  NAND2X0_RVT U534 ( .A1(n176), .A2(n57), .Y(TStates[2]) );
  OR3X2_RVT U535 ( .A1(n443), .A2(n444), .A3(n445), .Y(n442) );
  INVX1_RVT U536 ( .A(NMICycle), .Y(n692) );
  NAND2X0_RVT U537 ( .A1(IntCycle), .A2(n692), .Y(n490) );
  AND4X1_RVT U538 ( .A1(n500), .A2(n530), .A3(n586), .A4(n587), .Y(n546) );
  INVX0_RVT U539 ( .A(n500), .Y(n104) );
  OA221X1_RVT U540 ( .A1(n419), .A2(n59), .A3(n674), .A4(n316), .A5(n420), .Y(
        n418) );
  INVX0_RVT U541 ( .A(n150), .Y(I_BT) );
  NAND2X0_RVT U542 ( .A1(n101), .A2(n679), .Y(n150) );
  INVX0_RVT U543 ( .A(n234), .Y(n687) );
  INVX0_RVT U544 ( .A(n522), .Y(n502) );
  NAND2X0_RVT U545 ( .A1(n604), .A2(n60), .Y(n522) );
  INVX0_RVT U546 ( .A(n608), .Y(n142) );
  NAND2X0_RVT U547 ( .A1(n662), .A2(n663), .Y(n608) );
  OA221X1_RVT U548 ( .A1(n218), .A2(n716), .A3(n230), .A4(n231), .A5(n232), 
        .Y(n229) );
  NAND2X0_RVT U549 ( .A1(n143), .A2(n22), .Y(n201) );
  OA21X1_RVT U550 ( .A1(n671), .A2(n382), .A3(n383), .Y(n320) );
  AND3X1_RVT U551 ( .A1(n400), .A2(n173), .A3(n394), .Y(n328) );
  INVX0_RVT U552 ( .A(n400), .Y(n112) );
  NAND2X0_RVT U553 ( .A1(n626), .A2(n631), .Y(n400) );
  NAND2X0_RVT U554 ( .A1(n334), .A2(n85), .Y(n467) );
  AND4X1_RVT U555 ( .A1(n138), .A2(n85), .A3(n99), .A4(n644), .Y(n454) );
  INVX0_RVT U556 ( .A(n471), .Y(n85) );
  INVX0_RVT U557 ( .A(n480), .Y(n127) );
  NAND2X0_RVT U558 ( .A1(n403), .A2(n154), .Y(n480) );
  NBUFFX2_RVT U559 ( .A(n459), .Y(n42) );
  NBUFFX2_RVT U560 ( .A(n459), .Y(n43) );
  NAND2X0_RVT U561 ( .A1(n349), .A2(n87), .Y(n613) );
  NAND2X0_RVT U562 ( .A1(n342), .A2(n87), .Y(n642) );
  INVX0_RVT U563 ( .A(n411), .Y(n87) );
  NAND2X0_RVT U564 ( .A1(n57), .A2(n63), .Y(n464) );
  OAI222X1_RVT U565 ( .A1(n406), .A2(n234), .A3(n59), .A4(n407), .A5(n408), 
        .A6(n64), .Y(n405) );
  NAND2X0_RVT U566 ( .A1(n63), .A2(n376), .Y(n374) );
  NAND2X0_RVT U567 ( .A1(n3), .A2(n245), .Y(n226) );
  INVX0_RVT U568 ( .A(n245), .Y(n709) );
  NAND2X0_RVT U569 ( .A1(IR[4]), .A2(n711), .Y(n245) );
  INVX1_RVT U570 ( .A(F[6]), .Y(n717) );
  INVX0_RVT U571 ( .A(n61), .Y(n680) );
  INVX0_RVT U572 ( .A(n18), .Y(n61) );
  INVX0_RVT U573 ( .A(n519), .Y(n679) );
  AND2X1_RVT U574 ( .A1(n359), .A2(n306), .Y(Set_Addr_To[0]) );
  INVX0_RVT U575 ( .A(IR[5]), .Y(n711) );
  NAND2X0_RVT U576 ( .A1(n665), .A2(n667), .Y(n624) );
  NAND2X0_RVT U577 ( .A1(n134), .A2(n60), .Y(n403) );
  NAND2X0_RVT U578 ( .A1(n636), .A2(n610), .Y(n583) );
  INVX0_RVT U579 ( .A(IR[2]), .Y(n715) );
  NBUFFX2_RVT U580 ( .A(IR[0]), .Y(n47) );
  AND2X1_RVT U581 ( .A1(IR[3]), .A2(n715), .Y(n667) );
  AO22X1_RVT U582 ( .A1(n48), .A2(n65), .A3(n607), .A4(n683), .Y(n51) );
  OAI21X1_RVT U583 ( .A1(n332), .A2(n711), .A3(n499), .Y(n48) );
  AO221X1_RVT U584 ( .A1(n251), .A2(n3), .A3(n177), .A4(n223), .A5(n286), .Y(
        n282) );
  OAI21X1_RVT U585 ( .A1(n54), .A2(n332), .A3(n499), .Y(n505) );
  NBUFFX2_RVT U586 ( .A(n74), .Y(n49) );
  INVX0_RVT U587 ( .A(IR[3]), .Y(n74) );
  NAND2X0_RVT U588 ( .A1(n304), .A2(n165), .Y(n289) );
  AND2X1_RVT U589 ( .A1(n479), .A2(n158), .Y(n50) );
  OR2X1_RVT U590 ( .A1(ISet[0]), .A2(n26), .Y(n157) );
  AND2X1_RVT U591 ( .A1(IR[7]), .A2(n708), .Y(n661) );
  INVX0_RVT U592 ( .A(IR[7]), .Y(n703) );
  AND2X1_RVT U593 ( .A1(IR[7]), .A2(IR[6]), .Y(n654) );
  AND2X1_RVT U594 ( .A1(IR[6]), .A2(n703), .Y(n670) );
  INVX0_RVT U595 ( .A(IR[6]), .Y(n708) );
  INVX0_RVT U596 ( .A(n373), .Y(n97) );
  AOI22X1_RVT U597 ( .A1(n338), .A2(n373), .A3(n374), .A4(n375), .Y(n312) );
  NAND2X0_RVT U598 ( .A1(n521), .A2(n522), .Y(n373) );
  INVX0_RVT U599 ( .A(n521), .Y(n96) );
  NAND2X0_RVT U600 ( .A1(n60), .A2(n609), .Y(n521) );
  INVX0_RVT U601 ( .A(n396), .Y(n688) );
  AO22X2_RVT U602 ( .A1(n66), .A2(n181), .A3(n70), .A4(n182), .Y(n180) );
  NAND4X0_RVT U603 ( .A1(n99), .A2(n138), .A3(n185), .A4(n186), .Y(n181) );
  OR3X1_RVT U604 ( .A1(n50), .A2(I_BTR), .A3(n51), .Y(IncDec_16[1]) );
  NAND2X0_RVT U605 ( .A1(n679), .A2(n194), .Y(n151) );
  AND4X1_RVT U606 ( .A1(n636), .A2(n602), .A3(n637), .A4(n638), .Y(n627) );
  NAND2X0_RVT U607 ( .A1(n665), .A2(n664), .Y(n640) );
  NAND2X0_RVT U608 ( .A1(n664), .A2(n663), .Y(n602) );
  NAND4X0_RVT U609 ( .A1(n326), .A2(n318), .A3(n130), .A4(n327), .Y(n325) );
  NAND4X0_RVT U610 ( .A1(n128), .A2(n318), .A3(n319), .A4(n320), .Y(n310) );
  AND2X1_RVT U611 ( .A1(n408), .A2(n171), .Y(n380) );
  OA222X1_RVT U612 ( .A1(n235), .A2(n169), .A3(n56), .A4(n172), .A5(n171), 
        .A6(n61), .Y(n209) );
  NAND2X0_RVT U613 ( .A1(n698), .A2(n118), .Y(n171) );
  NAND2X0_RVT U614 ( .A1(n478), .A2(n477), .Y(n466) );
  INVX0_RVT U615 ( .A(n466), .Y(n120) );
  INVX0_RVT U616 ( .A(n486), .Y(n119) );
  AND3X1_RVT U617 ( .A1(n455), .A2(n135), .A3(n456), .Y(n336) );
  NAND4X0_RVT U618 ( .A1(n320), .A2(n336), .A3(n377), .A4(n378), .Y(n369) );
  NAND2X0_RVT U619 ( .A1(n120), .A2(n301), .Y(n486) );
  AO21X1_RVT U620 ( .A1(n55), .A2(n545), .A3(n30), .Y(n544) );
  NAND4X0_RVT U621 ( .A1(n371), .A2(n355), .A3(n312), .A4(n372), .Y(n370) );
  NAND2X0_RVT U622 ( .A1(n563), .A2(n60), .Y(n284) );
  INVX0_RVT U623 ( .A(n284), .Y(n86) );
  AND2X1_RVT U624 ( .A1(n501), .A2(n679), .Y(I_BC) );
  NAND2X0_RVT U625 ( .A1(n682), .A2(n2), .Y(n267) );
  AND2X1_RVT U626 ( .A1(n329), .A2(n691), .Y(n584) );
  NAND2X0_RVT U627 ( .A1(n684), .A2(n2), .Y(n176) );
  NAND4X0_RVT U628 ( .A1(n533), .A2(n535), .A3(n534), .A4(n397), .Y(n614) );
  AO222X1_RVT U629 ( .A1(n73), .A2(n509), .A3(n510), .A4(n49), .A5(n713), .A6(
        n718), .Y(n266) );
  AND2X1_RVT U630 ( .A1(n49), .A2(n715), .Y(n666) );
  NAND2X0_RVT U631 ( .A1(n134), .A2(n705), .Y(n406) );
  NAND2X0_RVT U632 ( .A1(n637), .A2(n628), .Y(n582) );
  AND3X1_RVT U633 ( .A1(n289), .A2(n281), .A3(n302), .Y(n392) );
  AND4X1_RVT U634 ( .A1(n289), .A2(n506), .A3(n495), .A4(n162), .Y(n499) );
  INVX0_RVT U635 ( .A(n280), .Y(n304) );
  NAND4X0_RVT U636 ( .A1(n498), .A2(n496), .A3(n497), .A4(n493), .Y(
        IncDec_16[2]) );
  NAND3X0_RVT U637 ( .A1(n572), .A2(n573), .A3(n460), .Y(n556) );
  NAND3X0_RVT U638 ( .A1(n411), .A2(n454), .A3(n379), .Y(n444) );
  AND3X1_RVT U639 ( .A1(n90), .A2(n435), .A3(n411), .Y(n326) );
  OA21X1_RVT U640 ( .A1(n21), .A2(n411), .A3(n412), .Y(n303) );
  OA21X1_RVT U641 ( .A1(n640), .A2(n42), .A3(n573), .Y(n411) );
  NAND2X0_RVT U642 ( .A1(n332), .A2(n333), .Y(n179) );
  INVX0_RVT U643 ( .A(n179), .Y(n130) );
  NAND2X0_RVT U644 ( .A1(n654), .A2(n712), .Y(n645) );
  INVX0_RVT U645 ( .A(n261), .Y(n712) );
  NAND2X0_RVT U646 ( .A1(IR[5]), .A2(n54), .Y(n261) );
  NAND2X0_RVT U647 ( .A1(n581), .A2(n609), .Y(n357) );
  NAND2X0_RVT U648 ( .A1(n357), .A2(n316), .Y(n607) );
  INVX0_RVT U649 ( .A(n357), .Y(n101) );
  INVX0_RVT U650 ( .A(n607), .Y(n103) );
  NAND2X0_RVT U651 ( .A1(n667), .A2(n663), .Y(n628) );
  NOR2X0_RVT U652 ( .A1(n534), .A2(n157), .Y(ExchangeDH) );
  INVX0_RVT U653 ( .A(n68), .Y(n52) );
  INVX1_RVT U654 ( .A(n68), .Y(n66) );
  INVX0_RVT U655 ( .A(n53), .Y(n67) );
  AO222X1_RVT U656 ( .A1(n689), .A2(n82), .A3(n71), .A4(n390), .A5(n67), .A6(
        n391), .Y(Read_To_Reg) );
  AO222X1_RVT U657 ( .A1(n679), .A2(n375), .A3(n46), .A4(n536), .A5(n67), .A6(
        n461), .Y(ALU_Op[3]) );
  AO22X1_RVT U658 ( .A1(n690), .A2(n462), .A3(n683), .A4(n463), .Y(LDZ) );
  INVX0_RVT U659 ( .A(n690), .Y(n53) );
  INVX0_RVT U660 ( .A(n690), .Y(n68) );
  IBUFFX2_RVT U661 ( .A(n72), .Y(n71) );
  INVX1_RVT U662 ( .A(ISet[1]), .Y(n72) );
  INVX0_RVT U663 ( .A(n468), .Y(n99) );
  AO222X1_RVT U664 ( .A1(n78), .A2(n464), .A3(n22), .A4(n465), .A5(n685), .A6(
        n466), .Y(n462) );
  INVX0_RVT U665 ( .A(n350), .Y(n98) );
  OR2X1_RVT U666 ( .A1(n32), .A2(n93), .Y(n350) );
  NAND2X0_RVT U667 ( .A1(n635), .A2(n624), .Y(n609) );
  OAI22X1_RVT U668 ( .A1(n68), .A2(n303), .A3(n389), .A4(n72), .Y(PreserveC)
         );
  AO222X1_RVT U669 ( .A1(n67), .A2(n556), .A3(n46), .A4(n557), .A5(n69), .A6(
        n558), .Y(ALU_Op[1]) );
  AO222X1_RVT U670 ( .A1(n69), .A2(n429), .A3(n46), .A4(n430), .A5(n67), .A6(
        n431), .Y(MCycles[1]) );
  NAND2X0_RVT U671 ( .A1(n69), .A2(n174), .Y(n155) );
  OR3X2_RVT U672 ( .A1(n72), .A2(n63), .A3(n419), .Y(n152) );
  NAND2X0_RVT U673 ( .A1(n104), .A2(n70), .Y(n496) );
  NAND2X0_RVT U674 ( .A1(n40), .A2(n70), .Y(n503) );
  OR3X2_RVT U675 ( .A1(n63), .A2(n513), .A3(n72), .Y(n153) );
  NAND2X0_RVT U676 ( .A1(n45), .A2(n70), .Y(n519) );
  NAND2X0_RVT U677 ( .A1(ISet[0]), .A2(n72), .Y(n236) );
  IBUFFX2_RVT U678 ( .A(n72), .Y(n69) );
  NAND2X0_RVT U679 ( .A1(n563), .A2(n31), .Y(n426) );
  NAND2X0_RVT U680 ( .A1(n432), .A2(n28), .Y(n280) );
  NAND2X0_RVT U681 ( .A1(n144), .A2(n31), .Y(n230) );
  AO222X1_RVT U682 ( .A1(n67), .A2(n442), .A3(n69), .A4(n317), .A5(n689), .A6(
        n440), .Y(MCycles[0]) );
  AO222X1_RVT U683 ( .A1(n67), .A2(n386), .A3(n71), .A4(n387), .A5(n689), .A6(
        n82), .Y(Save_ALU) );
  AO222X1_RVT U684 ( .A1(n46), .A2(n575), .A3(n67), .A4(n576), .A5(n71), .A6(
        n577), .Y(ALU_Op[0]) );
  AO222X1_RVT U685 ( .A1(n67), .A2(n542), .A3(n543), .A4(n689), .A5(n69), .A6(
        n544), .Y(ALU_Op[2]) );
  OA221X1_RVT U686 ( .A1(n218), .A2(n125), .A3(n249), .A4(n244), .A5(n250), 
        .Y(n248) );
  INVX0_RVT U687 ( .A(n619), .Y(n695) );
  NAND2X0_RVT U688 ( .A1(n562), .A2(n396), .Y(n612) );
  AO221X1_RVT U689 ( .A1(n467), .A2(n165), .A3(n688), .A4(n486), .A5(n487), 
        .Y(n481) );
  XOR2X1_RVT U690 ( .A1(n2), .A2(MCycle[1]), .Y(n428) );
  NAND2X0_RVT U691 ( .A1(MCycle[1]), .A2(n691), .Y(n396) );
  NAND2X0_RVT U692 ( .A1(n581), .A2(n604), .Y(n316) );
  INVX0_RVT U693 ( .A(n316), .Y(n501) );
  OA221X1_RVT U694 ( .A1(n97), .A2(n671), .A3(n356), .A4(n57), .A5(n316), .Y(
        n353) );
  NAND2X0_RVT U695 ( .A1(n548), .A2(n29), .Y(n580) );
  OA22X1_RVT U696 ( .A1(n503), .A2(n358), .A3(n519), .A4(n184), .Y(n518) );
  AND2X1_RVT U697 ( .A1(n357), .A2(n184), .Y(n356) );
  NAND2X0_RVT U698 ( .A1(n183), .A2(n184), .Y(n182) );
  NAND2X0_RVT U699 ( .A1(n358), .A2(n184), .Y(n194) );
  AO222X1_RVT U700 ( .A1(n66), .A2(n282), .A3(n69), .A4(n283), .A5(n46), .A6(
        IR[1]), .Y(Set_BusA_To[1]) );
  OA21X1_RVT U701 ( .A1(n692), .A2(n344), .A3(n138), .Y(n345) );
  NAND3X0_RVT U702 ( .A1(n634), .A2(n635), .A3(n627), .Y(n633) );
  AND2X1_RVT U703 ( .A1(IR[1]), .A2(n125), .Y(n485) );
  AO21X1_RVT U704 ( .A1(n671), .A2(n75), .A3(n350), .Y(n436) );
  AOI221X1_RVT U705 ( .A1(n618), .A2(n652), .A3(n653), .A4(n647), .A5(n648), 
        .Y(n567) );
  NAND2X0_RVT U706 ( .A1(n618), .A2(n129), .Y(n385) );
  NAND2X0_RVT U707 ( .A1(n134), .A2(n618), .Y(n384) );
  NAND2X0_RVT U708 ( .A1(n564), .A2(n618), .Y(n333) );
  AND2X1_RVT U709 ( .A1(n618), .A2(n4), .Y(n648) );
  NAND2X0_RVT U710 ( .A1(n437), .A2(n350), .Y(n468) );
  AO221X1_RVT U711 ( .A1(n479), .A2(n480), .A3(n67), .A4(n481), .A5(n482), .Y(
        Inc_PC) );
  AO221X1_RVT U712 ( .A1(n69), .A2(n321), .A3(n690), .A4(n322), .A5(n689), .Y(
        Set_Addr_To[1]) );
  NAND2X0_RVT U713 ( .A1(n127), .A2(n441), .Y(n463) );
  NAND2X0_RVT U714 ( .A1(n702), .A2(n633), .Y(n173) );
  AND2X1_RVT U715 ( .A1(n351), .A2(n441), .Y(n371) );
  NAND2X0_RVT U716 ( .A1(n702), .A2(n108), .Y(n531) );
  AND2X1_RVT U717 ( .A1(MCycle[0]), .A2(n678), .Y(n349) );
  INVX0_RVT U718 ( .A(n167), .Y(n138) );
  INVX0_RVT U719 ( .A(n230), .Y(n143) );
  AO21X1_RVT U720 ( .A1(n331), .A2(n76), .A3(n426), .Y(n423) );
  NAND2X0_RVT U721 ( .A1(n65), .A2(n471), .Y(n470) );
  NAND2X0_RVT U722 ( .A1(n264), .A2(n426), .Y(n471) );
  AO222X1_RVT U723 ( .A1(n52), .A2(n271), .A3(n71), .A4(n272), .A5(n689), .A6(
        IR[2]), .Y(Set_BusA_To[2]) );
  AO222X1_RVT U724 ( .A1(n52), .A2(n203), .A3(n69), .A4(n204), .A5(IR[2]), 
        .A6(n205), .Y(Set_BusB_To[2]) );
  NAND2X0_RVT U725 ( .A1(n631), .A2(n60), .Y(n440) );
  NAND2X0_RVT U726 ( .A1(n701), .A2(n631), .Y(n630) );
  NAND2X0_RVT U727 ( .A1(n631), .A2(n632), .Y(n598) );
  AOI221X1_RVT U728 ( .A1(n8), .A2(n143), .A3(n166), .A4(n106), .A5(n259), .Y(
        n258) );
  AO221X1_RVT U729 ( .A1(n113), .A2(n7), .A3(n676), .A4(n29), .A5(n195), .Y(
        n193) );
  OA22X1_RVT U730 ( .A1(n299), .A2(n44), .A3(n300), .A4(n301), .Y(n298) );
  NAND2X0_RVT U731 ( .A1(n687), .A2(n7), .Y(n244) );
  AO22X1_RVT U732 ( .A1(F[7]), .A2(n7), .A3(F_2), .A4(n712), .Y(n511) );
  NAND2X0_RVT U733 ( .A1(n8), .A2(n670), .Y(n601) );
  AND2X1_RVT U734 ( .A1(n654), .A2(n8), .Y(n618) );
  NAND3X0_RVT U735 ( .A1(n498), .A2(n150), .A3(n504), .Y(IncDec_16[0]) );
  NAND2X0_RVT U736 ( .A1(n52), .A2(n505), .Y(n504) );
  AO22X1_RVT U737 ( .A1(IR[1]), .A2(n205), .A3(n681), .A4(n220), .Y(
        Set_BusB_To[1]) );
  NAND2X0_RVT U738 ( .A1(n84), .A2(n266), .Y(n265) );
  OAI222X1_RVT U739 ( .A1(n245), .A2(n6), .A3(n261), .A4(F_2), .A5(n262), .A6(
        F[6]), .Y(n510) );
  AO221X1_RVT U740 ( .A1(n6), .A2(n709), .A3(F[6]), .A4(n710), .A5(n511), .Y(
        n509) );
  NAND2X0_RVT U741 ( .A1(n468), .A2(n165), .Y(n506) );
  AO222X1_RVT U742 ( .A1(n78), .A2(n677), .A3(n687), .A4(n476), .A5(n680), 
        .A6(n468), .Y(n475) );
  NAND2X0_RVT U743 ( .A1(n581), .A2(n582), .Y(n184) );
  NAND2X0_RVT U744 ( .A1(n581), .A2(n583), .Y(n358) );
  NAND2X0_RVT U745 ( .A1(n123), .A2(n698), .Y(n408) );
  NAND2X0_RVT U746 ( .A1(n698), .A2(n139), .Y(n512) );
  NAND2X0_RVT U747 ( .A1(n698), .A2(n142), .Y(n516) );
  NAND2X0_RVT U748 ( .A1(n698), .A2(n108), .Y(n168) );
  NAND2X0_RVT U749 ( .A1(n698), .A2(n144), .Y(n573) );
  AO22X1_RVT U750 ( .A1(n105), .A2(n680), .A3(n687), .A4(n474), .Y(n473) );
  NAND2X0_RVT U751 ( .A1(n698), .A2(n107), .Y(n451) );
  NAND2X0_RVT U752 ( .A1(n92), .A2(n698), .Y(n449) );
  OA21X1_RVT U753 ( .A1(n610), .A2(n19), .A3(n561), .Y(n294) );
  INVX0_RVT U754 ( .A(n294), .Y(n114) );
  AND3X1_RVT U755 ( .A1(n294), .A2(n528), .A3(n529), .Y(n355) );
  OAI21X1_RVT U756 ( .A1(n235), .A2(n294), .A3(n273), .Y(n293) );
  INVX0_RVT U757 ( .A(n19), .Y(n60) );
  AND4X1_RVT U758 ( .A1(n455), .A2(n612), .A3(n613), .A4(n438), .Y(n611) );
  AO22X1_RVT U759 ( .A1(n47), .A2(n237), .A3(n681), .A4(n238), .Y(
        Set_BusB_To[0]) );
  AO222X1_RVT U760 ( .A1(n690), .A2(n239), .A3(n71), .A4(n240), .A5(n689), 
        .A6(n47), .Y(n238) );
  AO222X1_RVT U761 ( .A1(n52), .A2(n290), .A3(n69), .A4(n291), .A5(n46), .A6(
        n47), .Y(Set_BusA_To[0]) );
  NAND2X0_RVT U762 ( .A1(n335), .A2(n438), .Y(n488) );
  NAND2X0_RVT U763 ( .A1(n52), .A2(n473), .Y(n416) );
  AND2X1_RVT U764 ( .A1(IR[1]), .A2(IR[0]), .Y(n663) );
  AND2X1_RVT U765 ( .A1(n47), .A2(n716), .Y(n669) );
  NAND2X0_RVT U766 ( .A1(n631), .A2(n619), .Y(n571) );
  AND2X1_RVT U767 ( .A1(n592), .A2(n43), .Y(n659) );
  OA22X1_RVT U768 ( .A1(n603), .A2(n42), .A3(n109), .A4(n457), .Y(n395) );
  OA221X1_RVT U769 ( .A1(n457), .A2(n83), .A3(n458), .A4(n43), .A5(n460), .Y(
        n412) );
  OA22X1_RVT U770 ( .A1(n42), .A2(n574), .A3(n145), .A4(n457), .Y(n460) );
  NAND2X0_RVT U771 ( .A1(n134), .A2(n619), .Y(n494) );
  NAND2X0_RVT U772 ( .A1(n432), .A2(n619), .Y(n301) );
  NAND2X0_RVT U773 ( .A1(n457), .A2(n43), .Y(n619) );
  NAND2X0_RVT U774 ( .A1(n631), .A2(n28), .Y(n399) );
  NAND2X0_RVT U775 ( .A1(n28), .A2(n583), .Y(n477) );
  AO221X1_RVT U776 ( .A1(n4), .A2(n647), .A3(n31), .A4(n139), .A5(n648), .Y(
        n259) );
  AO222X1_RVT U777 ( .A1(n22), .A2(n565), .A3(n3), .A4(n566), .A5(n676), .A6(
        n554), .Y(n557) );
  AO221X1_RVT U778 ( .A1(n131), .A2(n223), .A3(n94), .A4(n3), .A5(n208), .Y(
        n283) );
  NAND2X0_RVT U779 ( .A1(n3), .A2(n225), .Y(n231) );
  NAND2X0_RVT U780 ( .A1(IR[4]), .A2(IR[5]), .Y(n202) );
endmodule



    module tv80_alu_Mode1_Flag_C0_Flag_N1_Flag_P2_Flag_X3_Flag_H4_Flag_Y5_Flag_Z6_Flag_S7 ( 
        Q, F_Out, Arith16, Z16, ALU_Op, IR, ISet, BusA, BusB, F_In );
  output [7:0] Q;
  output [7:0] F_Out;
  input [3:0] ALU_Op;
  input [5:0] IR;
  input [1:0] ISet;
  input [7:0] BusA;
  input [7:0] BusB;
  input [7:0] F_In;
  input Arith16, Z16;
  wire   N41, N46, N47, N48, N49, HalfCarry_v, N58, N59, N60, Carry7_v, N66,
         Carry_v, N185, N187, N188, N189, N190, N191, N192, N193, N200, N201,
         N202, N203, N204, N205, N208, N209, N210, N213, N214, N215, N216,
         N219, N234, N239, N240, N243, N244, N245, N246, N317, N321, N322,
         N323, N233, N232, N231, n116, n117, n118, n119, n121, n123, n124,
         n125, n126, n127, n128, n131, n132, n133, n134, n137, n138, n139,
         n140, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         \sub_256_aco/carry[8] , \sub_256_aco/carry[7] ,
         \sub_256_aco/carry[6] , \sub_252_aco/carry[7] ,
         \sub_252_aco/carry[6] , \sub_252_aco/carry[5] ,
         \sub_252_aco/carry[4] , \sub_252_aco/carry[3] ,
         \sub_252_aco/carry[2] , \add_240_aco/carry[7] ,
         \add_240_aco/carry[6] , \add_234/carry[7] , \add_234/carry[6] ,
         \add_234/carry[5] , \add_234/carry[4] , \add_234/carry[3] ,
         \add_1_root_add_61_2_C110/carry[3] ,
         \add_1_root_add_61_2_C110/carry[2] ,
         \add_1_root_add_61_2_C110/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n120,
         n122, n129, n130, n135, n136, n141, n142, n182, n183, n212, n235,
         n236, n254, n279;
  wire   [7:0] Q_v;
  assign N185 = BusA[0];

  NOR4X1_RVT U80 ( .A1(n193), .A2(n194), .A3(ALU_Op[3]), .A4(n195), .Y(n192)
         );
  AND2X1_RVT U3 ( .A1(n39), .A2(\add_234/carry[3] ), .Y(\add_234/carry[4] ) );
  OR2X1_RVT U4 ( .A1(F_In[0]), .A2(N204), .Y(N205) );
  AO22X1_RVT U5 ( .A1(n182), .A2(n67), .A3(n35), .A4(n141), .Y(N209) );
  NAND2X0_RVT U6 ( .A1(n159), .A2(n160), .Y(Q[0]) );
  OA222X1_RVT U7 ( .A1(n62), .A2(n161), .A3(n162), .A4(n90), .A5(n66), .A6(n24), .Y(n160) );
  OA222X1_RVT U8 ( .A1(ALU_Op[3]), .A2(n89), .A3(n163), .A4(n100), .A5(n164), 
        .A6(n64), .Y(n159) );
  XNOR2X1_RVT U9 ( .A1(n28), .A2(n39), .Y(N188) );
  OA22X1_RVT U10 ( .A1(n154), .A2(n97), .A3(n161), .A4(n90), .Y(n228) );
  OA22X1_RVT U11 ( .A1(n95), .A2(n144), .A3(n147), .A4(n96), .Y(n229) );
  AO22X1_RVT U12 ( .A1(N245), .A2(n32), .A3(N215), .A4(n31), .Y(n176) );
  OA222X1_RVT U13 ( .A1(n100), .A2(n190), .A3(n10), .A4(n66), .A5(n65), .A6(
        n187), .Y(n143) );
  OA222X1_RVT U14 ( .A1(n56), .A2(n156), .A3(n157), .A4(n100), .A5(n158), .A6(
        n65), .Y(n152) );
  AO22X1_RVT U15 ( .A1(N185), .A2(n67), .A3(N185), .A4(n141), .Y(N208) );
  XNOR2X1_RVT U16 ( .A1(n29), .A2(n41), .Y(N189) );
  NAND2X0_RVT U17 ( .A1(n145), .A2(n146), .Y(Q[2]) );
  OA222X1_RVT U18 ( .A1(n62), .A2(n147), .A3(n148), .A4(n96), .A5(n66), .A6(
        n130), .Y(n146) );
  OA222X1_RVT U19 ( .A1(ALU_Op[3]), .A2(n149), .A3(n150), .A4(n100), .A5(n151), 
        .A6(n64), .Y(n145) );
  NAND4X0_RVT U20 ( .A1(n174), .A2(n40), .A3(n188), .A4(n189), .Y(n179) );
  OR2X1_RVT U21 ( .A1(BusA[1]), .A2(n37), .Y(\add_234/carry[3] ) );
  NAND3X0_RVT U22 ( .A1(ALU_Op[0]), .A2(n104), .A3(F_In[0]), .Y(n166) );
  AO22X1_RVT U23 ( .A1(N191), .A2(n67), .A3(n45), .A4(n141), .Y(N201) );
  NAND2X0_RVT U24 ( .A1(n53), .A2(n105), .Y(n270) );
  XNOR2X1_RVT U25 ( .A1(n30), .A2(n43), .Y(N190) );
  NOR2X0_RVT U26 ( .A1(F_In[0]), .A2(N234), .Y(n27) );
  AO21X1_RVT U27 ( .A1(F_In[0]), .A2(n167), .A3(n53), .Y(n165) );
  AO22X1_RVT U28 ( .A1(N192), .A2(n67), .A3(BusA[7]), .A4(n141), .Y(N202) );
  OR2X1_RVT U29 ( .A1(ISet[0]), .A2(ISet[1]), .Y(n238) );
  NAND2X0_RVT U30 ( .A1(ALU_Op[2]), .A2(n51), .Y(n278) );
  AO21X1_RVT U31 ( .A1(n59), .A2(n97), .A3(n61), .Y(n251) );
  OA22X1_RVT U32 ( .A1(n91), .A2(n51), .A3(n95), .A4(n52), .Y(n190) );
  OA22X1_RVT U33 ( .A1(n93), .A2(n51), .A3(n97), .A4(ALU_Op[0]), .Y(n157) );
  AO21X1_RVT U34 ( .A1(n59), .A2(n92), .A3(n60), .Y(n263) );
  XOR3X1_RVT U35 ( .A1(BusA[6]), .A2(N60), .A3(n212), .Y(Q_v[6]) );
  INVX1_RVT U36 ( .A(HalfCarry_v), .Y(n87) );
  OAI21X1_RVT U37 ( .A1(n238), .A2(n66), .A3(n102), .Y(n272) );
  AO22X1_RVT U38 ( .A1(n73), .A2(n129), .A3(n72), .A4(F_In[0]), .Y(n74) );
  OA222X1_RVT U39 ( .A1(n222), .A2(n65), .A3(n57), .A4(n181), .A5(n100), .A6(
        n223), .Y(n221) );
  NAND3X0_RVT U40 ( .A1(n99), .A2(n98), .A3(n243), .Y(n219) );
  AO22X1_RVT U41 ( .A1(n244), .A2(n245), .A3(n246), .A4(n26), .Y(n243) );
  NAND2X0_RVT U42 ( .A1(ALU_Op[1]), .A2(n278), .Y(n271) );
  XOR3X1_RVT U43 ( .A1(n43), .A2(N59), .A3(n236), .Y(Q_v[5]) );
  NAND3X0_RVT U44 ( .A1(ALU_Op[2]), .A2(ALU_Op[0]), .A3(ALU_Op[1]), .Y(n202)
         );
  NAND3X0_RVT U45 ( .A1(n123), .A2(n62), .A3(n277), .Y(n205) );
  AO222X1_RVT U46 ( .A1(BusB[7]), .A2(n264), .A3(n47), .A4(n265), .A5(Q_v[7]), 
        .A6(n252), .Y(n124) );
  XOR2X1_RVT U47 ( .A1(n47), .A2(n183), .Y(Q_v[7]) );
  AO21X1_RVT U48 ( .A1(n59), .A2(n96), .A3(n61), .Y(n258) );
  AO22X1_RVT U49 ( .A1(N187), .A2(n67), .A3(n37), .A4(n141), .Y(N210) );
  OA22X1_RVT U50 ( .A1(n92), .A2(n51), .A3(n96), .A4(n52), .Y(n150) );
  NAND3X0_RVT U51 ( .A1(n68), .A2(n75), .A3(IR[4]), .Y(n147) );
  NAND3X0_RVT U52 ( .A1(n49), .A2(n129), .A3(IR[5]), .Y(n134) );
  OA22X1_RVT U53 ( .A1(n94), .A2(n51), .A3(n90), .A4(ALU_Op[0]), .Y(n163) );
  XOR3X1_RVT U54 ( .A1(HalfCarry_v), .A2(N58), .A3(n41), .Y(Q_v[4]) );
  AO21X1_RVT U55 ( .A1(n59), .A2(n94), .A3(n61), .Y(n267) );
  NAND3X0_RVT U56 ( .A1(n68), .A2(n129), .A3(IR[5]), .Y(n137) );
  OA21X1_RVT U57 ( .A1(n59), .A2(n60), .A3(ALU_Op[3]), .Y(n174) );
  INVX1_RVT U58 ( .A(n181), .Y(n21) );
  AND4X1_RVT U59 ( .A1(n80), .A2(n81), .A3(n184), .A4(n140), .Y(n23) );
  NAND3X0_RVT U60 ( .A1(IR[4]), .A2(n68), .A3(IR[5]), .Y(n127) );
  NAND4X0_RVT U61 ( .A1(n39), .A2(n103), .A3(n168), .A4(n31), .Y(n208) );
  AND2X1_RVT U62 ( .A1(n106), .A2(n53), .Y(n1) );
  NBUFFX2_RVT U63 ( .A(BusA[1]), .Y(n35) );
  INVX1_RVT U64 ( .A(BusA[1]), .Y(n182) );
  AND3X1_RVT U65 ( .A1(n52), .A2(n53), .A3(ALU_Op[2]), .Y(n253) );
  INVX1_RVT U66 ( .A(IR[3]), .Y(n48) );
  XNOR3X1_RVT U67 ( .A1(n232), .A2(n164), .A3(n233), .Y(n222) );
  XOR3X1_RVT U68 ( .A1(n184), .A2(n140), .A3(n2), .Y(n232) );
  XOR3X1_RVT U69 ( .A1(n158), .A2(n234), .A3(n3), .Y(n233) );
  AOI22X1_RVT U70 ( .A1(N188), .A2(n67), .A3(BusA[3]), .A4(n141), .Y(n17) );
  INVX1_RVT U71 ( .A(n31), .Y(n32) );
  INVX0_RVT U72 ( .A(n185), .Y(n81) );
  INVX0_RVT U73 ( .A(n176), .Y(n80) );
  XOR2X1_RVT U74 ( .A1(\add_240_aco/carry[7] ), .A2(N202), .Y(N215) );
  AOI22X1_RVT U75 ( .A1(N189), .A2(n67), .A3(BusA[4]), .A4(n141), .Y(n19) );
  XOR2X1_RVT U76 ( .A1(n80), .A2(n185), .Y(n2) );
  XOR2X1_RVT U77 ( .A1(n187), .A2(n151), .Y(n3) );
  AOI22X1_RVT U78 ( .A1(BusA[4]), .A2(n50), .A3(BusA[2]), .A4(n68), .Y(n10) );
  AOI22X1_RVT U79 ( .A1(n45), .A2(n50), .A3(BusA[4]), .A4(n68), .Y(n11) );
  AOI22X1_RVT U81 ( .A1(n37), .A2(n50), .A3(n34), .A4(n68), .Y(n13) );
  AOI22X1_RVT U82 ( .A1(n43), .A2(n50), .A3(n39), .A4(n68), .Y(n12) );
  XOR2X1_RVT U83 ( .A1(\add_234/carry[7] ), .A2(BusA[7]), .Y(N192) );
  AND3X1_RVT U84 ( .A1(ALU_Op[0]), .A2(n104), .A3(n56), .Y(n15) );
  AND3X1_RVT U85 ( .A1(n104), .A2(n51), .A3(ALU_Op[3]), .Y(n20) );
  INVX1_RVT U86 ( .A(\add_234/carry[3] ), .Y(n28) );
  XOR2X1_RVT U87 ( .A1(N205), .A2(N200), .Y(N213) );
  XOR2X1_RVT U88 ( .A1(\sub_256_aco/carry[8] ), .A2(n27), .Y(N246) );
  AOI22X1_RVT U89 ( .A1(n35), .A2(n50), .A3(n71), .A4(n68), .Y(n24) );
  NAND3X0_RVT U90 ( .A1(n99), .A2(n98), .A3(n124), .Y(n171) );
  AND4X1_RVT U91 ( .A1(n54), .A2(n56), .A3(n51), .A4(n105), .Y(n25) );
  OAI221X1_RVT U92 ( .A1(n95), .A2(n4), .A3(n144), .A4(n63), .A5(n5), .Y(Q[3])
         );
  AOI221X1_RVT U93 ( .A1(n101), .A2(n144), .A3(n111), .A4(n15), .A5(n25), .Y(
        n4) );
  OA21X1_RVT U94 ( .A1(n88), .A2(n56), .A3(n143), .Y(n5) );
  OAI21X1_RVT U95 ( .A1(n83), .A2(ALU_Op[3]), .A3(n133), .Y(n132) );
  NAND2X0_RVT U96 ( .A1(n6), .A2(n7), .Y(Q[4]) );
  OA222X1_RVT U97 ( .A1(n56), .A2(n139), .A3(n100), .A4(n40), .A5(n140), .A6(
        n65), .Y(n6) );
  OA222X1_RVT U98 ( .A1(n63), .A2(n137), .A3(n138), .A4(n94), .A5(n66), .A6(
        n12), .Y(n7) );
  INVX1_RVT U99 ( .A(F_In[4]), .Y(n136) );
  NAND2X0_RVT U100 ( .A1(n102), .A2(n65), .Y(n273) );
  INVX0_RVT U101 ( .A(n205), .Y(n102) );
  INVX1_RVT U102 ( .A(n123), .Y(n101) );
  OA21X1_RVT U103 ( .A1(n120), .A2(n123), .A3(n62), .Y(n121) );
  OA221X1_RVT U104 ( .A1(n57), .A2(n161), .A3(n112), .A4(n123), .A5(n63), .Y(
        n162) );
  INVX1_RVT U105 ( .A(n161), .Y(n112) );
  OA221X1_RVT U106 ( .A1(n57), .A2(n147), .A3(n110), .A4(n123), .A5(n63), .Y(
        n148) );
  INVX1_RVT U107 ( .A(n147), .Y(n110) );
  INVX1_RVT U108 ( .A(n174), .Y(n100) );
  INVX1_RVT U109 ( .A(N321), .Y(n135) );
  INVX1_RVT U110 ( .A(n9), .Y(n61) );
  INVX1_RVT U111 ( .A(n9), .Y(n60) );
  INVX1_RVT U112 ( .A(Carry_v), .Y(n85) );
  XNOR2X1_RVT U113 ( .A1(n85), .A2(Carry7_v), .Y(n246) );
  INVX1_RVT U114 ( .A(n64), .Y(n103) );
  INVX1_RVT U115 ( .A(n14), .Y(n64) );
  INVX1_RVT U116 ( .A(n15), .Y(n57) );
  INVX1_RVT U117 ( .A(n14), .Y(n65) );
  INVX1_RVT U118 ( .A(n154), .Y(n113) );
  INVX1_RVT U119 ( .A(n20), .Y(n66) );
  INVX1_RVT U120 ( .A(\add_234/carry[4] ), .Y(n29) );
  XNOR2X1_RVT U121 ( .A1(N233), .A2(\sub_256_aco/carry[7] ), .Y(N245) );
  AND2X1_RVT U122 ( .A1(n41), .A2(\add_234/carry[4] ), .Y(\add_234/carry[5] )
         );
  AND2X1_RVT U123 ( .A1(n43), .A2(\add_234/carry[5] ), .Y(\add_234/carry[6] )
         );
  AND2X1_RVT U124 ( .A1(n45), .A2(\add_234/carry[6] ), .Y(\add_234/carry[7] )
         );
  AND2X1_RVT U125 ( .A1(N193), .A2(n67), .Y(N203) );
  AND2X1_RVT U126 ( .A1(BusA[7]), .A2(\add_234/carry[7] ), .Y(N193) );
  XOR2X1_RVT U127 ( .A1(n224), .A2(n225), .Y(n223) );
  XNOR3X1_RVT U128 ( .A1(n42), .A2(n40), .A3(n227), .Y(n224) );
  AO22X1_RVT U129 ( .A1(N244), .A2(n32), .A3(N214), .A4(n31), .Y(n185) );
  XOR2X1_RVT U130 ( .A1(\add_234/carry[6] ), .A2(n45), .Y(N191) );
  NAND2X0_RVT U131 ( .A1(N202), .A2(\add_240_aco/carry[7] ), .Y(n8) );
  OA222X1_RVT U132 ( .A1(n42), .A2(n100), .A3(n11), .A4(n66), .A5(n64), .A6(
        n184), .Y(n133) );
  AO22X1_RVT U133 ( .A1(N190), .A2(n67), .A3(n43), .A4(n141), .Y(N200) );
  INVX0_RVT U134 ( .A(\add_234/carry[5] ), .Y(n30) );
  NAND3X0_RVT U135 ( .A1(n54), .A2(n56), .A3(n167), .Y(n123) );
  NAND2X0_RVT U136 ( .A1(n108), .A2(ALU_Op[3]), .Y(n277) );
  NAND2X0_RVT U137 ( .A1(n36), .A2(n182), .Y(n168) );
  INVX1_RVT U138 ( .A(n137), .Y(n115) );
  INVX1_RVT U139 ( .A(n127), .Y(n122) );
  NAND2X0_RVT U140 ( .A1(n54), .A2(n106), .Y(n9) );
  NAND3X0_RVT U141 ( .A1(n129), .A2(n75), .A3(n68), .Y(n161) );
  INVX1_RVT U142 ( .A(n49), .Y(n68) );
  AO22X1_RVT U143 ( .A1(BusA[6]), .A2(n212), .A3(N60), .A4(n235), .Y(Carry7_v)
         );
  OR2X1_RVT U144 ( .A1(n212), .A2(n45), .Y(n235) );
  AO22X1_RVT U145 ( .A1(BusA[5]), .A2(n236), .A3(N59), .A4(n254), .Y(n212) );
  OR2X1_RVT U146 ( .A1(n236), .A2(n43), .Y(n254) );
  OR2X1_RVT U147 ( .A1(N58), .A2(BusA[4]), .Y(n279) );
  XOR2X1_RVT U148 ( .A1(N66), .A2(Carry7_v), .Y(n183) );
  NAND2X0_RVT U149 ( .A1(n270), .A2(n271), .Y(n252) );
  INVX1_RVT U150 ( .A(n270), .Y(n104) );
  INVX1_RVT U151 ( .A(N317), .Y(n130) );
  NAND2X0_RVT U152 ( .A1(n237), .A2(n172), .Y(n220) );
  XOR2X1_RVT U153 ( .A1(n239), .A2(n240), .Y(n237) );
  XNOR3X1_RVT U154 ( .A1(n13), .A2(n24), .A3(n242), .Y(n239) );
  XNOR3X1_RVT U155 ( .A1(n11), .A2(n12), .A3(n241), .Y(n240) );
  OR2X1_RVT U156 ( .A1(\sub_252_aco/carry[3] ), .A2(n39), .Y(
        \sub_252_aco/carry[4] ) );
  OR2X1_RVT U157 ( .A1(\sub_252_aco/carry[5] ), .A2(BusA[5]), .Y(
        \sub_252_aco/carry[6] ) );
  OR2X1_RVT U158 ( .A1(\sub_252_aco/carry[4] ), .A2(BusA[4]), .Y(
        \sub_252_aco/carry[5] ) );
  XNOR2X1_RVT U159 ( .A1(BusA[5]), .A2(\sub_252_aco/carry[5] ), .Y(N231) );
  XNOR2X1_RVT U160 ( .A1(BusA[7]), .A2(\sub_252_aco/carry[7] ), .Y(N233) );
  OR2X1_RVT U161 ( .A1(\sub_252_aco/carry[6] ), .A2(BusA[6]), .Y(
        \sub_252_aco/carry[7] ) );
  AND3X1_RVT U162 ( .A1(n135), .A2(n109), .A3(n11), .Y(n197) );
  AO22X1_RVT U163 ( .A1(N66), .A2(Carry7_v), .A3(n47), .A4(n183), .Y(Carry_v)
         );
  XNOR2X1_RVT U164 ( .A1(n10), .A2(N317), .Y(n242) );
  AND4X1_RVT U165 ( .A1(n172), .A2(n24), .A3(n13), .A4(n130), .Y(n198) );
  AND2X1_RVT U166 ( .A1(n1), .A2(n56), .Y(n14) );
  OA22X1_RVT U167 ( .A1(n16), .A2(n31), .A3(n17), .A4(F_In[1]), .Y(n187) );
  XOR2X1_RVT U168 ( .A1(n39), .A2(\sub_252_aco/carry[3] ), .Y(n16) );
  OR2X1_RVT U169 ( .A1(\sub_256_aco/carry[7] ), .A2(N233), .Y(
        \sub_256_aco/carry[8] ) );
  NAND3X0_RVT U170 ( .A1(n129), .A2(n75), .A3(n50), .Y(n154) );
  INVX1_RVT U171 ( .A(IR[4]), .Y(n129) );
  OA22X1_RVT U172 ( .A1(n18), .A2(n31), .A3(n19), .A4(F_In[1]), .Y(n140) );
  XOR2X1_RVT U173 ( .A1(BusA[4]), .A2(\sub_252_aco/carry[4] ), .Y(n18) );
  AOI22X1_RVT U174 ( .A1(n34), .A2(n32), .A3(N208), .A4(n31), .Y(n164) );
  INVX1_RVT U175 ( .A(n25), .Y(n62) );
  NAND3X0_RVT U176 ( .A1(n49), .A2(n75), .A3(IR[4]), .Y(n144) );
  AND2X1_RVT U177 ( .A1(n187), .A2(n151), .Y(n186) );
  INVX1_RVT U178 ( .A(n25), .Y(n63) );
  INVX1_RVT U179 ( .A(n271), .Y(n107) );
  INVX1_RVT U180 ( .A(ALU_Op[3]), .Y(n99) );
  INVX1_RVT U181 ( .A(n134), .Y(n114) );
  INVX1_RVT U182 ( .A(n119), .Y(n120) );
  XNOR3X1_RVT U183 ( .A1(n157), .A2(n163), .A3(n226), .Y(n225) );
  XOR2X1_RVT U184 ( .A1(n190), .A2(n150), .Y(n226) );
  AND4X1_RVT U185 ( .A1(n190), .A2(n150), .A3(n157), .A4(n163), .Y(n189) );
  XNOR2X1_RVT U186 ( .A1(n46), .A2(n45), .Y(n227) );
  AND3X1_RVT U187 ( .A1(n44), .A2(n46), .A3(n42), .Y(n188) );
  FADDX1_RVT U188 ( .A(N201), .B(N205), .CI(\add_240_aco/carry[6] ), .CO(
        \add_240_aco/carry[7] ), .S(N214) );
  AND2X1_RVT U189 ( .A1(N200), .A2(N205), .Y(\add_240_aco/carry[6] ) );
  NAND3X0_RVT U190 ( .A1(n116), .A2(n117), .A3(n118), .Y(Q[7]) );
  NAND2X0_RVT U191 ( .A1(n124), .A2(n99), .Y(n117) );
  OA222X1_RVT U192 ( .A1(n119), .A2(n63), .A3(n121), .A4(n91), .A5(n66), .A6(
        n109), .Y(n118) );
  INVX1_RVT U193 ( .A(n36), .Y(n37) );
  NAND4X0_RVT U194 ( .A1(n116), .A2(n169), .A3(n170), .A4(n171), .Y(F_Out[7])
         );
  NAND2X0_RVT U195 ( .A1(n125), .A2(n126), .Y(Q[6]) );
  OA222X1_RVT U196 ( .A1(n62), .A2(n127), .A3(n128), .A4(n92), .A5(n66), .A6(
        n135), .Y(n126) );
  OA222X1_RVT U197 ( .A1(n56), .A2(n84), .A3(n100), .A4(n44), .A5(n81), .A6(
        n65), .Y(n125) );
  AOI222X1_RVT U198 ( .A1(n15), .A2(n21), .A3(n22), .A4(n23), .A5(n173), .A6(
        F_In[6]), .Y(n180) );
  AND4X1_RVT U199 ( .A1(n164), .A2(n103), .A3(n158), .A4(n186), .Y(n22) );
  NAND4X0_RVT U200 ( .A1(n177), .A2(n178), .A3(n179), .A4(n180), .Y(F_Out[6])
         );
  NAND4X0_RVT U201 ( .A1(n10), .A2(n12), .A3(n197), .A4(n198), .Y(n177) );
  INVX1_RVT U202 ( .A(n38), .Y(n39) );
  AO22X1_RVT U203 ( .A1(N246), .A2(F_In[1]), .A3(N216), .A4(n31), .Y(n234) );
  XNOR2X1_RVT U204 ( .A1(n8), .A2(N203), .Y(N216) );
  INVX1_RVT U205 ( .A(n40), .Y(n41) );
  AOI22X1_RVT U206 ( .A1(N243), .A2(n32), .A3(N213), .A4(n31), .Y(n184) );
  XNOR2X1_RVT U207 ( .A1(N231), .A2(n27), .Y(N243) );
  AO22X1_RVT U208 ( .A1(n107), .A2(n99), .A3(n32), .A4(n273), .Y(F_Out[1]) );
  INVX1_RVT U209 ( .A(n42), .Y(n43) );
  INVX1_RVT U210 ( .A(n55), .Y(n56) );
  NAND4X0_RVT U211 ( .A1(n206), .A2(n207), .A3(n208), .A4(n57), .Y(F_Out[4])
         );
  NAND2X0_RVT U212 ( .A1(n211), .A2(n99), .Y(n206) );
  AO21X1_RVT U213 ( .A1(n102), .A2(n209), .A3(n136), .Y(n207) );
  AND2X1_RVT U214 ( .A1(ALU_Op[0]), .A2(n105), .Y(n167) );
  NAND2X0_RVT U215 ( .A1(n152), .A2(n153), .Y(Q[1]) );
  OA222X1_RVT U216 ( .A1(n63), .A2(n154), .A3(n155), .A4(n97), .A5(n66), .A6(
        n13), .Y(n153) );
  OA221X1_RVT U217 ( .A1(n57), .A2(n154), .A3(n113), .A4(n123), .A5(n62), .Y(
        n155) );
  NBUFFX2_RVT U218 ( .A(N219), .Y(n67) );
  INVX1_RVT U219 ( .A(n51), .Y(n52) );
  INVX0_RVT U220 ( .A(n278), .Y(n106) );
  INVX1_RVT U221 ( .A(n44), .Y(n45) );
  INVX1_RVT U222 ( .A(n48), .Y(n49) );
  XNOR2X1_RVT U223 ( .A1(n95), .A2(n54), .Y(N49) );
  FADDX1_RVT U224 ( .A(n37), .B(N48), .CI(\add_1_root_add_61_2_C110/carry[2] ), 
        .CO(\add_1_root_add_61_2_C110/carry[3] ), .S(Q_v[2]) );
  XNOR2X1_RVT U225 ( .A1(n96), .A2(n54), .Y(N48) );
  FADDX1_RVT U226 ( .A(n35), .B(N47), .CI(\add_1_root_add_61_2_C110/carry[1] ), 
        .CO(\add_1_root_add_61_2_C110/carry[2] ), .S(Q_v[1]) );
  XNOR2X1_RVT U227 ( .A1(n97), .A2(n54), .Y(N47) );
  INVX1_RVT U228 ( .A(N322), .Y(n109) );
  INVX1_RVT U229 ( .A(n216), .Y(n88) );
  INVX1_RVT U230 ( .A(n203), .Y(n83) );
  INVX1_RVT U231 ( .A(n196), .Y(n84) );
  INVX1_RVT U232 ( .A(n194), .Y(n89) );
  NBUFFX2_RVT U233 ( .A(n253), .Y(n59) );
  INVX1_RVT U234 ( .A(n124), .Y(n86) );
  XNOR2X1_RVT U235 ( .A1(n86), .A2(n196), .Y(n261) );
  XOR2X1_RVT U236 ( .A1(n247), .A2(n248), .Y(n244) );
  XNOR3X1_RVT U237 ( .A1(n88), .A2(n149), .A3(n249), .Y(n248) );
  XNOR3X1_RVT U238 ( .A1(n83), .A2(n139), .A3(n261), .Y(n247) );
  XNOR2X1_RVT U239 ( .A1(n89), .A2(n156), .Y(n249) );
  NAND4X0_RVT U240 ( .A1(n228), .A2(n229), .A3(n230), .A4(n231), .Y(n181) );
  OA22X1_RVT U241 ( .A1(n134), .A2(n93), .A3(n137), .A4(n94), .Y(n230) );
  OA22X1_RVT U242 ( .A1(n119), .A2(n91), .A3(n127), .A4(n92), .Y(n231) );
  INVX1_RVT U243 ( .A(n53), .Y(n54) );
  FADDX1_RVT U244 ( .A(N232), .B(n27), .CI(\sub_256_aco/carry[6] ), .CO(
        \sub_256_aco/carry[7] ), .S(N244) );
  XNOR2X1_RVT U245 ( .A1(BusA[6]), .A2(\sub_252_aco/carry[6] ), .Y(N232) );
  OR2X1_RVT U246 ( .A1(n27), .A2(N231), .Y(\sub_256_aco/carry[6] ) );
  XNOR2X1_RVT U247 ( .A1(N321), .A2(N322), .Y(n241) );
  FADDX1_RVT U248 ( .A(BusA[2]), .B(n141), .CI(\sub_252_aco/carry[2] ), .CO(
        \sub_252_aco/carry[3] ), .S(N240) );
  OR2X1_RVT U249 ( .A1(n141), .A2(n35), .Y(\sub_252_aco/carry[2] ) );
  XNOR2X1_RVT U250 ( .A1(n93), .A2(n54), .Y(N59) );
  NAND2X0_RVT U251 ( .A1(n172), .A2(N322), .Y(n170) );
  XNOR2X1_RVT U252 ( .A1(n94), .A2(ALU_Op[1]), .Y(N58) );
  INVX1_RVT U253 ( .A(n33), .Y(n34) );
  NBUFFX2_RVT U254 ( .A(n253), .Y(n58) );
  NAND2X0_RVT U255 ( .A1(n149), .A2(n156), .Y(n193) );
  XNOR2X1_RVT U256 ( .A1(n91), .A2(n54), .Y(N66) );
  AOI22X1_RVT U257 ( .A1(N239), .A2(F_In[1]), .A3(N209), .A4(n31), .Y(n158) );
  XNOR2X1_RVT U258 ( .A1(n35), .A2(n141), .Y(N239) );
  AOI22X1_RVT U259 ( .A1(N240), .A2(F_In[1]), .A3(N210), .A4(n31), .Y(n151) );
  XNOR2X1_RVT U260 ( .A1(n37), .A2(n35), .Y(N187) );
  XNOR2X1_RVT U261 ( .A1(n92), .A2(ALU_Op[1]), .Y(N60) );
  INVX1_RVT U262 ( .A(n202), .Y(n108) );
  INVX1_RVT U263 ( .A(n46), .Y(n47) );
  INVX1_RVT U264 ( .A(n48), .Y(n50) );
  NAND4X0_RVT U265 ( .A1(n103), .A2(n32), .A3(n210), .A4(n38), .Y(n209) );
  NAND2X0_RVT U266 ( .A1(BusA[1]), .A2(n37), .Y(n210) );
  AO22X1_RVT U267 ( .A1(n108), .A2(n99), .A3(n15), .A4(n217), .Y(n204) );
  NAND3X0_RVT U268 ( .A1(IR[1]), .A2(n82), .A3(IR[2]), .Y(n217) );
  INVX1_RVT U269 ( .A(IR[0]), .Y(n82) );
  AND2X1_RVT U270 ( .A1(n20), .A2(n238), .Y(n172) );
  NAND3X0_RVT U271 ( .A1(IR[4]), .A2(n50), .A3(IR[5]), .Y(n119) );
  INVX0_RVT U272 ( .A(BusA[2]), .Y(n36) );
  AOI222X1_RVT U273 ( .A1(BusA[7]), .A2(n174), .A3(n175), .A4(BusB[7]), .A5(
        n103), .A6(n176), .Y(n116) );
  AND2X1_RVT U274 ( .A1(n120), .A2(n15), .Y(n175) );
  NAND4X0_RVT U275 ( .A1(n218), .A2(n219), .A3(n220), .A4(n221), .Y(F_Out[2])
         );
  INVX0_RVT U276 ( .A(BusA[3]), .Y(n38) );
  AO22X1_RVT U277 ( .A1(Carry_v), .A2(n104), .A3(n107), .A4(n85), .Y(n274) );
  OR3X1_RVT U278 ( .A1(n15), .A2(n174), .A3(n273), .Y(n275) );
  AO22X1_RVT U279 ( .A1(n103), .A2(n234), .A3(N323), .A4(n20), .Y(n276) );
  INVX0_RVT U280 ( .A(BusA[4]), .Y(n40) );
  AO221X1_RVT U281 ( .A1(BusB[5]), .A2(n131), .A3(n114), .A4(n25), .A5(n132), 
        .Y(Q[5]) );
  INVX0_RVT U282 ( .A(ALU_Op[1]), .Y(n53) );
  AO21X1_RVT U283 ( .A1(BusA[3]), .A2(n168), .A3(F_In[4]), .Y(N219) );
  INVX0_RVT U284 ( .A(BusA[5]), .Y(n42) );
  INVX0_RVT U285 ( .A(ALU_Op[3]), .Y(n55) );
  NAND4X0_RVT U286 ( .A1(n133), .A2(n199), .A3(n200), .A4(n201), .Y(F_Out[5])
         );
  NAND2X0_RVT U287 ( .A1(BusB[5]), .A2(n204), .Y(n200) );
  NAND3X0_RVT U288 ( .A1(n202), .A2(n99), .A3(n203), .Y(n201) );
  NAND2X0_RVT U289 ( .A1(F_In[5]), .A2(n205), .Y(n199) );
  NAND4X0_RVT U290 ( .A1(n143), .A2(n213), .A3(n214), .A4(n215), .Y(F_Out[3])
         );
  NAND2X0_RVT U291 ( .A1(BusB[3]), .A2(n204), .Y(n214) );
  NAND3X0_RVT U292 ( .A1(n202), .A2(n99), .A3(n216), .Y(n215) );
  NAND2X0_RVT U293 ( .A1(F_In[3]), .A2(n205), .Y(n213) );
  INVX0_RVT U294 ( .A(ALU_Op[0]), .Y(n51) );
  INVX1_RVT U295 ( .A(n144), .Y(n111) );
  INVX0_RVT U296 ( .A(BusA[6]), .Y(n44) );
  AO221X1_RVT U297 ( .A1(n58), .A2(n46), .A3(n1), .A4(BusA[7]), .A5(n60), .Y(
        n264) );
  AO21X1_RVT U298 ( .A1(n253), .A2(n91), .A3(n61), .Y(n265) );
  FADDX1_RVT U299 ( .A(n34), .B(N46), .CI(N41), .CO(
        \add_1_root_add_61_2_C110/carry[1] ), .S(Q_v[0]) );
  XNOR2X1_RVT U300 ( .A1(n90), .A2(ALU_Op[1]), .Y(N46) );
  NAND2X0_RVT U301 ( .A1(n165), .A2(n166), .Y(N41) );
  INVX0_RVT U302 ( .A(BusA[7]), .Y(n46) );
  AND2X1_RVT U303 ( .A1(IR[4]), .A2(n75), .Y(n72) );
  AO222X1_RVT U304 ( .A1(BusB[3]), .A2(n259), .A3(n39), .A4(n260), .A5(Q_v[3]), 
        .A6(n252), .Y(n216) );
  AO221X1_RVT U305 ( .A1(n58), .A2(n38), .A3(n39), .A4(n1), .A5(n60), .Y(n259)
         );
  AO21X1_RVT U306 ( .A1(n253), .A2(n95), .A3(n61), .Y(n260) );
  AO222X1_RVT U307 ( .A1(BusB[5]), .A2(n268), .A3(BusA[5]), .A4(n269), .A5(
        Q_v[5]), .A6(n252), .Y(n203) );
  AO221X1_RVT U308 ( .A1(n58), .A2(n42), .A3(n43), .A4(n1), .A5(n60), .Y(n268)
         );
  AO21X1_RVT U309 ( .A1(n58), .A2(n93), .A3(n61), .Y(n269) );
  AO222X1_RVT U310 ( .A1(BusB[6]), .A2(n262), .A3(n45), .A4(n263), .A5(Q_v[6]), 
        .A6(n252), .Y(n196) );
  AO221X1_RVT U311 ( .A1(n58), .A2(n44), .A3(BusA[6]), .A4(n1), .A5(n60), .Y(
        n262) );
  AO222X1_RVT U312 ( .A1(BusB[0]), .A2(n255), .A3(N185), .A4(n256), .A5(Q_v[0]), .A6(n252), .Y(n194) );
  AO21X1_RVT U313 ( .A1(n58), .A2(n90), .A3(n61), .Y(n256) );
  AO221X1_RVT U314 ( .A1(n59), .A2(n33), .A3(n34), .A4(n1), .A5(n61), .Y(n255)
         );
  OAI21X1_RVT U315 ( .A1(n53), .A2(n51), .A3(ALU_Op[2]), .Y(n26) );
  INVX1_RVT U316 ( .A(n26), .Y(n245) );
  INVX1_RVT U317 ( .A(BusB[3]), .Y(n95) );
  NAND4X0_RVT U318 ( .A1(n86), .A2(n84), .A3(n191), .A4(n192), .Y(n178) );
  AND3X1_RVT U319 ( .A1(n139), .A2(n88), .A3(n83), .Y(n191) );
  OA21X1_RVT U320 ( .A1(Z16), .A2(Arith16), .A3(n142), .Y(n195) );
  AOI222X1_RVT U321 ( .A1(BusB[1]), .A2(n250), .A3(n35), .A4(n251), .A5(Q_v[1]), .A6(n252), .Y(n156) );
  AO221X1_RVT U322 ( .A1(n58), .A2(n182), .A3(n35), .A4(n1), .A5(n61), .Y(n250) );
  AOI222X1_RVT U323 ( .A1(BusB[4]), .A2(n266), .A3(n41), .A4(n267), .A5(Q_v[4]), .A6(n252), .Y(n139) );
  AO221X1_RVT U324 ( .A1(n58), .A2(n40), .A3(n41), .A4(n1), .A5(n60), .Y(n266)
         );
  AOI222X1_RVT U325 ( .A1(BusB[2]), .A2(n257), .A3(n37), .A4(n258), .A5(Q_v[2]), .A6(n252), .Y(n149) );
  AO221X1_RVT U326 ( .A1(n58), .A2(n36), .A3(n37), .A4(n1), .A5(n61), .Y(n257)
         );
  INVX1_RVT U327 ( .A(BusB[5]), .Y(n93) );
  INVX1_RVT U328 ( .A(BusB[0]), .Y(n90) );
  INVX1_RVT U329 ( .A(BusB[1]), .Y(n97) );
  INVX1_RVT U330 ( .A(BusB[2]), .Y(n96) );
  INVX1_RVT U331 ( .A(BusB[4]), .Y(n94) );
  INVX1_RVT U332 ( .A(N185), .Y(n33) );
  INVX1_RVT U333 ( .A(BusB[7]), .Y(n91) );
  INVX1_RVT U334 ( .A(BusB[6]), .Y(n92) );
  INVX1_RVT U335 ( .A(F_In[1]), .Y(n31) );
  INVX1_RVT U336 ( .A(Arith16), .Y(n98) );
  INVX0_RVT U337 ( .A(ALU_Op[2]), .Y(n105) );
  NAND2X0_RVT U338 ( .A1(F_In[7]), .A2(n173), .Y(n169) );
  NAND2X0_RVT U339 ( .A1(F_In[2]), .A2(n173), .Y(n218) );
  AO21X1_RVT U340 ( .A1(Arith16), .A2(n99), .A3(n272), .Y(n173) );
  INVX1_RVT U341 ( .A(F_In[6]), .Y(n142) );
  INVX1_RVT U342 ( .A(N219), .Y(n141) );
  AO221X1_RVT U343 ( .A1(n107), .A2(n87), .A3(HalfCarry_v), .A4(n104), .A5(n1), 
        .Y(n211) );
  AO22X1_RVT U344 ( .A1(N58), .A2(n41), .A3(HalfCarry_v), .A4(n279), .Y(n236)
         );
  FADDX1_RVT U345 ( .A(n39), .B(N49), .CI(\add_1_root_add_61_2_C110/carry[3] ), 
        .CO(HalfCarry_v), .S(Q_v[3]) );
  INVX0_RVT U346 ( .A(IR[5]), .Y(n75) );
  AO221X1_RVT U347 ( .A1(n101), .A2(n134), .A3(n114), .A4(n15), .A5(n25), .Y(
        n131) );
  OA221X1_RVT U348 ( .A1(n57), .A2(n127), .A3(n122), .A4(n123), .A5(n63), .Y(
        n128) );
  OA221X1_RVT U349 ( .A1(n57), .A2(n137), .A3(n115), .A4(n123), .A5(n62), .Y(
        n138) );
  AO221X1_RVT U350 ( .A1(n274), .A2(n99), .A3(F_In[0]), .A4(n275), .A5(n276), 
        .Y(F_Out[0]) );
  AO22X1_RVT U351 ( .A1(n50), .A2(n34), .A3(BusA[7]), .A4(n68), .Y(N323) );
  OAI21X1_RVT U352 ( .A1(F_In[0]), .A2(IR[5]), .A3(IR[4]), .Y(n70) );
  NAND3X0_RVT U353 ( .A1(n75), .A2(n129), .A3(n47), .Y(n69) );
  NAND2X0_RVT U354 ( .A1(n70), .A2(n69), .Y(n71) );
  AO22X1_RVT U355 ( .A1(BusA[3]), .A2(n50), .A3(n35), .A4(n68), .Y(N317) );
  AO22X1_RVT U356 ( .A1(n50), .A2(n47), .A3(BusA[5]), .A4(n68), .Y(N321) );
  AO22X1_RVT U357 ( .A1(n47), .A2(IR[5]), .A3(n34), .A4(n75), .Y(n73) );
  AO22X1_RVT U358 ( .A1(n45), .A2(n68), .A3(n49), .A4(n74), .Y(N322) );
  OA21X1_RVT U359 ( .A1(N201), .A2(N200), .A3(N202), .Y(n76) );
  OR2X1_RVT U360 ( .A1(N203), .A2(n76), .Y(N204) );
  OR2X1_RVT U361 ( .A1(n35), .A2(n37), .Y(n77) );
  AND3X1_RVT U362 ( .A1(n39), .A2(n77), .A3(n41), .Y(n79) );
  OR2X1_RVT U363 ( .A1(BusA[6]), .A2(BusA[5]), .Y(n78) );
  OA21X1_RVT U364 ( .A1(n79), .A2(n78), .A3(n47), .Y(N234) );
endmodule


module tv80_reg ( DOBH, DOAL, DOCL, DOBL, DOCH, DOAH, AddrC, AddrA, AddrB, DIH, 
        DIL, clk, CEN, WEH, WEL );
  output [7:0] DOBH;
  output [7:0] DOAL;
  output [7:0] DOCL;
  output [7:0] DOBL;
  output [7:0] DOCH;
  output [7:0] DOAH;
  input [2:0] AddrC;
  input [2:0] AddrA;
  input [2:0] AddrB;
  input [7:0] DIH;
  input [7:0] DIL;
  input clk, CEN, WEH, WEL;
  wire   N14, N15, N16, N17, N18, N19, N20, N21, N22, \RegsH[0][7] ,
         \RegsH[0][6] , \RegsH[0][5] , \RegsH[0][4] , \RegsH[0][3] ,
         \RegsH[0][2] , \RegsH[0][1] , \RegsH[0][0] , \RegsH[1][7] ,
         \RegsH[1][6] , \RegsH[1][5] , \RegsH[1][4] , \RegsH[1][3] ,
         \RegsH[1][2] , \RegsH[1][1] , \RegsH[1][0] , \RegsH[2][7] ,
         \RegsH[2][6] , \RegsH[2][5] , \RegsH[2][4] , \RegsH[2][3] ,
         \RegsH[2][2] , \RegsH[2][1] , \RegsH[2][0] , \RegsH[3][7] ,
         \RegsH[3][6] , \RegsH[3][5] , \RegsH[3][4] , \RegsH[3][3] ,
         \RegsH[3][2] , \RegsH[3][1] , \RegsH[3][0] , \RegsH[4][7] ,
         \RegsH[4][6] , \RegsH[4][5] , \RegsH[4][4] , \RegsH[4][3] ,
         \RegsH[4][2] , \RegsH[4][1] , \RegsH[4][0] , \RegsH[5][7] ,
         \RegsH[5][6] , \RegsH[5][5] , \RegsH[5][4] , \RegsH[5][3] ,
         \RegsH[5][2] , \RegsH[5][1] , \RegsH[5][0] , \RegsH[6][7] ,
         \RegsH[6][6] , \RegsH[6][5] , \RegsH[6][4] , \RegsH[6][3] ,
         \RegsH[6][2] , \RegsH[6][1] , \RegsH[6][0] , \RegsH[7][7] ,
         \RegsH[7][6] , \RegsH[7][5] , \RegsH[7][4] , \RegsH[7][3] ,
         \RegsH[7][2] , \RegsH[7][1] , \RegsH[7][0] , \RegsL[0][7] ,
         \RegsL[0][6] , \RegsL[0][5] , \RegsL[0][4] , \RegsL[0][3] ,
         \RegsL[0][2] , \RegsL[0][1] , \RegsL[0][0] , \RegsL[1][7] ,
         \RegsL[1][6] , \RegsL[1][5] , \RegsL[1][4] , \RegsL[1][3] ,
         \RegsL[1][2] , \RegsL[1][1] , \RegsL[1][0] , \RegsL[2][7] ,
         \RegsL[2][6] , \RegsL[2][5] , \RegsL[2][4] , \RegsL[2][3] ,
         \RegsL[2][2] , \RegsL[2][1] , \RegsL[2][0] , \RegsL[3][7] ,
         \RegsL[3][6] , \RegsL[3][5] , \RegsL[3][4] , \RegsL[3][3] ,
         \RegsL[3][2] , \RegsL[3][1] , \RegsL[3][0] , \RegsL[4][7] ,
         \RegsL[4][6] , \RegsL[4][5] , \RegsL[4][4] , \RegsL[4][3] ,
         \RegsL[4][2] , \RegsL[4][1] , \RegsL[4][0] , \RegsL[5][7] ,
         \RegsL[5][6] , \RegsL[5][5] , \RegsL[5][4] , \RegsL[5][3] ,
         \RegsL[5][2] , \RegsL[5][1] , \RegsL[5][0] , \RegsL[6][7] ,
         \RegsL[6][6] , \RegsL[6][5] , \RegsL[6][4] , \RegsL[6][3] ,
         \RegsL[6][2] , \RegsL[6][1] , \RegsL[6][0] , \RegsL[7][7] ,
         \RegsL[7][6] , \RegsL[7][5] , \RegsL[7][4] , \RegsL[7][3] ,
         \RegsL[7][2] , \RegsL[7][1] , \RegsL[7][0] , n21, n22, n24, n26, n29,
         n32, n33, n36, n38, n44, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n23, n25, n27, n28, n30, n31, n34, n35, n37, n39, n40,
         n41, n42, n43, n45, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530;
  assign N14 = AddrA[0];
  assign N15 = AddrA[1];
  assign N16 = AddrA[2];
  assign N17 = AddrB[0];
  assign N18 = AddrB[1];
  assign N19 = AddrB[2];
  assign N20 = AddrC[0];
  assign N21 = AddrC[1];
  assign N22 = AddrC[2];

  DFFX1_RVT \RegsH_reg[1][6]  ( .D(n100), .CLK(clk), .Q(\RegsH[1][6] ) );
  DFFX1_RVT \RegsH_reg[6][6]  ( .D(n60), .CLK(clk), .Q(\RegsH[6][6] ) );
  DFFX1_RVT \RegsH_reg[7][6]  ( .D(n52), .CLK(clk), .Q(\RegsH[7][6] ) );
  DFFX1_RVT \RegsH_reg[2][6]  ( .D(n92), .CLK(clk), .Q(\RegsH[2][6] ) );
  DFFX1_RVT \RegsH_reg[3][6]  ( .D(n84), .CLK(clk), .Q(\RegsH[3][6] ) );
  DFFX1_RVT \RegsH_reg[0][6]  ( .D(n108), .CLK(clk), .Q(\RegsH[0][6] ) );
  DFFX1_RVT \RegsL_reg[7][7]  ( .D(n117), .CLK(clk), .Q(\RegsL[7][7] ) );
  DFFX1_RVT \RegsL_reg[6][7]  ( .D(n125), .CLK(clk), .Q(\RegsL[6][7] ) );
  DFFX1_RVT \RegsL_reg[5][7]  ( .D(n133), .CLK(clk), .Q(\RegsL[5][7] ) );
  DFFX1_RVT \RegsL_reg[4][7]  ( .D(n141), .CLK(clk), .Q(\RegsL[4][7] ) );
  DFFX1_RVT \RegsL_reg[3][7]  ( .D(n149), .CLK(clk), .Q(\RegsL[3][7] ) );
  DFFX1_RVT \RegsL_reg[2][7]  ( .D(n157), .CLK(clk), .Q(\RegsL[2][7] ) );
  DFFX1_RVT \RegsL_reg[1][7]  ( .D(n165), .CLK(clk), .Q(\RegsL[1][7] ) );
  DFFX1_RVT \RegsL_reg[0][7]  ( .D(n173), .CLK(clk), .Q(\RegsL[0][7] ) );
  DFFX1_RVT \RegsH_reg[3][7]  ( .D(n85), .CLK(clk), .Q(\RegsH[3][7] ) );
  DFFX1_RVT \RegsH_reg[3][4]  ( .D(n82), .CLK(clk), .Q(\RegsH[3][4] ) );
  DFFX1_RVT \RegsH_reg[3][2]  ( .D(n80), .CLK(clk), .Q(\RegsH[3][2] ) );
  DFFX1_RVT \RegsH_reg[2][7]  ( .D(n93), .CLK(clk), .Q(\RegsH[2][7] ) );
  DFFX1_RVT \RegsH_reg[2][4]  ( .D(n90), .CLK(clk), .Q(\RegsH[2][4] ) );
  DFFX1_RVT \RegsH_reg[2][2]  ( .D(n88), .CLK(clk), .Q(\RegsH[2][2] ) );
  DFFX1_RVT \RegsH_reg[1][7]  ( .D(n101), .CLK(clk), .Q(\RegsH[1][7] ) );
  DFFX1_RVT \RegsH_reg[1][4]  ( .D(n98), .CLK(clk), .Q(\RegsH[1][4] ) );
  DFFX1_RVT \RegsH_reg[1][2]  ( .D(n96), .CLK(clk), .Q(\RegsH[1][2] ) );
  DFFX1_RVT \RegsH_reg[0][7]  ( .D(n109), .CLK(clk), .Q(\RegsH[0][7] ) );
  DFFX1_RVT \RegsH_reg[3][5]  ( .D(n83), .CLK(clk), .Q(\RegsH[3][5] ) );
  DFFX1_RVT \RegsH_reg[3][3]  ( .D(n81), .CLK(clk), .Q(\RegsH[3][3] ) );
  DFFX1_RVT \RegsH_reg[0][4]  ( .D(n106), .CLK(clk), .Q(\RegsH[0][4] ) );
  DFFX1_RVT \RegsH_reg[0][2]  ( .D(n104), .CLK(clk), .Q(\RegsH[0][2] ) );
  DFFX1_RVT \RegsH_reg[2][5]  ( .D(n91), .CLK(clk), .Q(\RegsH[2][5] ) );
  DFFX1_RVT \RegsH_reg[2][3]  ( .D(n89), .CLK(clk), .Q(\RegsH[2][3] ) );
  DFFX1_RVT \RegsH_reg[1][5]  ( .D(n99), .CLK(clk), .Q(\RegsH[1][5] ) );
  DFFX1_RVT \RegsH_reg[1][3]  ( .D(n97), .CLK(clk), .Q(\RegsH[1][3] ) );
  DFFX1_RVT \RegsH_reg[0][5]  ( .D(n107), .CLK(clk), .Q(\RegsH[0][5] ) );
  DFFX1_RVT \RegsH_reg[0][3]  ( .D(n105), .CLK(clk), .Q(\RegsH[0][3] ) );
  DFFX1_RVT \RegsH_reg[7][7]  ( .D(n53), .CLK(clk), .Q(\RegsH[7][7] ) );
  DFFX1_RVT \RegsH_reg[7][4]  ( .D(n50), .CLK(clk), .Q(\RegsH[7][4] ) );
  DFFX1_RVT \RegsH_reg[7][2]  ( .D(n48), .CLK(clk), .Q(\RegsH[7][2] ) );
  DFFX1_RVT \RegsH_reg[6][7]  ( .D(n61), .CLK(clk), .Q(\RegsH[6][7] ) );
  DFFX1_RVT \RegsH_reg[5][7]  ( .D(n69), .CLK(clk), .Q(\RegsH[5][7] ) );
  DFFX1_RVT \RegsH_reg[4][7]  ( .D(n77), .CLK(clk), .Q(\RegsH[4][7] ) );
  DFFX1_RVT \RegsH_reg[6][4]  ( .D(n58), .CLK(clk), .Q(\RegsH[6][4] ) );
  DFFX1_RVT \RegsH_reg[6][2]  ( .D(n56), .CLK(clk), .Q(\RegsH[6][2] ) );
  DFFX1_RVT \RegsH_reg[5][4]  ( .D(n66), .CLK(clk), .Q(\RegsH[5][4] ) );
  DFFX1_RVT \RegsH_reg[5][2]  ( .D(n64), .CLK(clk), .Q(\RegsH[5][2] ) );
  DFFX1_RVT \RegsH_reg[5][6]  ( .D(n68), .CLK(clk), .Q(\RegsH[5][6] ) );
  DFFX1_RVT \RegsH_reg[4][4]  ( .D(n74), .CLK(clk), .Q(\RegsH[4][4] ) );
  DFFX1_RVT \RegsH_reg[4][2]  ( .D(n72), .CLK(clk), .Q(\RegsH[4][2] ) );
  DFFX1_RVT \RegsH_reg[4][6]  ( .D(n76), .CLK(clk), .Q(\RegsH[4][6] ) );
  DFFX1_RVT \RegsH_reg[7][5]  ( .D(n51), .CLK(clk), .Q(\RegsH[7][5] ) );
  DFFX1_RVT \RegsH_reg[7][3]  ( .D(n49), .CLK(clk), .Q(\RegsH[7][3] ) );
  DFFX1_RVT \RegsH_reg[6][5]  ( .D(n59), .CLK(clk), .Q(\RegsH[6][5] ) );
  DFFX1_RVT \RegsH_reg[6][3]  ( .D(n57), .CLK(clk), .Q(\RegsH[6][3] ) );
  DFFX1_RVT \RegsH_reg[5][5]  ( .D(n67), .CLK(clk), .Q(\RegsH[5][5] ) );
  DFFX1_RVT \RegsH_reg[5][3]  ( .D(n65), .CLK(clk), .Q(\RegsH[5][3] ) );
  DFFX1_RVT \RegsH_reg[4][5]  ( .D(n75), .CLK(clk), .Q(\RegsH[4][5] ) );
  DFFX1_RVT \RegsH_reg[4][3]  ( .D(n73), .CLK(clk), .Q(\RegsH[4][3] ) );
  DFFX1_RVT \RegsH_reg[3][1]  ( .D(n79), .CLK(clk), .Q(\RegsH[3][1] ) );
  DFFX1_RVT \RegsH_reg[2][1]  ( .D(n87), .CLK(clk), .Q(\RegsH[2][1] ) );
  DFFX1_RVT \RegsH_reg[1][1]  ( .D(n95), .CLK(clk), .Q(\RegsH[1][1] ) );
  DFFX1_RVT \RegsH_reg[0][1]  ( .D(n103), .CLK(clk), .Q(\RegsH[0][1] ) );
  DFFX1_RVT \RegsH_reg[7][1]  ( .D(n47), .CLK(clk), .Q(\RegsH[7][1] ) );
  DFFX1_RVT \RegsH_reg[6][1]  ( .D(n55), .CLK(clk), .Q(\RegsH[6][1] ) );
  DFFX1_RVT \RegsH_reg[5][1]  ( .D(n63), .CLK(clk), .Q(\RegsH[5][1] ) );
  DFFX1_RVT \RegsH_reg[4][1]  ( .D(n71), .CLK(clk), .Q(\RegsH[4][1] ) );
  DFFX1_RVT \RegsH_reg[3][0]  ( .D(n78), .CLK(clk), .Q(\RegsH[3][0] ) );
  DFFX1_RVT \RegsH_reg[2][0]  ( .D(n86), .CLK(clk), .Q(\RegsH[2][0] ) );
  DFFX1_RVT \RegsH_reg[1][0]  ( .D(n94), .CLK(clk), .Q(\RegsH[1][0] ) );
  DFFX1_RVT \RegsH_reg[0][0]  ( .D(n102), .CLK(clk), .Q(\RegsH[0][0] ) );
  DFFX1_RVT \RegsH_reg[7][0]  ( .D(n46), .CLK(clk), .Q(\RegsH[7][0] ) );
  DFFX1_RVT \RegsH_reg[6][0]  ( .D(n54), .CLK(clk), .Q(\RegsH[6][0] ) );
  DFFX1_RVT \RegsH_reg[5][0]  ( .D(n62), .CLK(clk), .Q(\RegsH[5][0] ) );
  DFFX1_RVT \RegsH_reg[4][0]  ( .D(n70), .CLK(clk), .Q(\RegsH[4][0] ) );
  DFFX1_RVT \RegsL_reg[3][6]  ( .D(n148), .CLK(clk), .Q(\RegsL[3][6] ) );
  DFFX1_RVT \RegsL_reg[2][6]  ( .D(n156), .CLK(clk), .Q(\RegsL[2][6] ) );
  DFFX1_RVT \RegsL_reg[1][6]  ( .D(n164), .CLK(clk), .Q(\RegsL[1][6] ) );
  DFFX1_RVT \RegsL_reg[0][6]  ( .D(n172), .CLK(clk), .Q(\RegsL[0][6] ) );
  DFFX1_RVT \RegsL_reg[7][6]  ( .D(n116), .CLK(clk), .Q(\RegsL[7][6] ) );
  DFFX1_RVT \RegsL_reg[6][6]  ( .D(n124), .CLK(clk), .Q(\RegsL[6][6] ) );
  DFFX1_RVT \RegsL_reg[5][6]  ( .D(n132), .CLK(clk), .Q(\RegsL[5][6] ) );
  DFFX1_RVT \RegsL_reg[4][6]  ( .D(n140), .CLK(clk), .Q(\RegsL[4][6] ) );
  DFFX1_RVT \RegsL_reg[3][5]  ( .D(n147), .CLK(clk), .Q(\RegsL[3][5] ) );
  DFFX1_RVT \RegsL_reg[2][5]  ( .D(n155), .CLK(clk), .Q(\RegsL[2][5] ) );
  DFFX1_RVT \RegsL_reg[1][5]  ( .D(n163), .CLK(clk), .Q(\RegsL[1][5] ) );
  DFFX1_RVT \RegsL_reg[0][5]  ( .D(n171), .CLK(clk), .Q(\RegsL[0][5] ) );
  DFFX1_RVT \RegsL_reg[7][5]  ( .D(n115), .CLK(clk), .Q(\RegsL[7][5] ) );
  DFFX1_RVT \RegsL_reg[6][5]  ( .D(n123), .CLK(clk), .Q(\RegsL[6][5] ) );
  DFFX1_RVT \RegsL_reg[5][5]  ( .D(n131), .CLK(clk), .Q(\RegsL[5][5] ) );
  DFFX1_RVT \RegsL_reg[4][5]  ( .D(n139), .CLK(clk), .Q(\RegsL[4][5] ) );
  DFFX1_RVT \RegsL_reg[3][4]  ( .D(n146), .CLK(clk), .Q(\RegsL[3][4] ) );
  DFFX1_RVT \RegsL_reg[2][4]  ( .D(n154), .CLK(clk), .Q(\RegsL[2][4] ) );
  DFFX1_RVT \RegsL_reg[1][4]  ( .D(n162), .CLK(clk), .Q(\RegsL[1][4] ) );
  DFFX1_RVT \RegsL_reg[0][4]  ( .D(n170), .CLK(clk), .Q(\RegsL[0][4] ) );
  DFFX1_RVT \RegsL_reg[7][4]  ( .D(n114), .CLK(clk), .Q(\RegsL[7][4] ) );
  DFFX1_RVT \RegsL_reg[6][4]  ( .D(n122), .CLK(clk), .Q(\RegsL[6][4] ) );
  DFFX1_RVT \RegsL_reg[5][4]  ( .D(n130), .CLK(clk), .Q(\RegsL[5][4] ) );
  DFFX1_RVT \RegsL_reg[4][4]  ( .D(n138), .CLK(clk), .Q(\RegsL[4][4] ) );
  DFFX1_RVT \RegsL_reg[3][3]  ( .D(n145), .CLK(clk), .Q(\RegsL[3][3] ) );
  DFFX1_RVT \RegsL_reg[2][3]  ( .D(n153), .CLK(clk), .Q(\RegsL[2][3] ) );
  DFFX1_RVT \RegsL_reg[1][3]  ( .D(n161), .CLK(clk), .Q(\RegsL[1][3] ) );
  DFFX1_RVT \RegsL_reg[0][3]  ( .D(n169), .CLK(clk), .Q(\RegsL[0][3] ) );
  DFFX1_RVT \RegsL_reg[7][3]  ( .D(n113), .CLK(clk), .Q(\RegsL[7][3] ) );
  DFFX1_RVT \RegsL_reg[6][3]  ( .D(n121), .CLK(clk), .Q(\RegsL[6][3] ) );
  DFFX1_RVT \RegsL_reg[5][3]  ( .D(n129), .CLK(clk), .Q(\RegsL[5][3] ) );
  DFFX1_RVT \RegsL_reg[4][3]  ( .D(n137), .CLK(clk), .Q(\RegsL[4][3] ) );
  DFFX1_RVT \RegsL_reg[3][2]  ( .D(n144), .CLK(clk), .Q(\RegsL[3][2] ) );
  DFFX1_RVT \RegsL_reg[2][2]  ( .D(n152), .CLK(clk), .Q(\RegsL[2][2] ) );
  DFFX1_RVT \RegsL_reg[1][2]  ( .D(n160), .CLK(clk), .Q(\RegsL[1][2] ) );
  DFFX1_RVT \RegsL_reg[0][2]  ( .D(n168), .CLK(clk), .Q(\RegsL[0][2] ) );
  DFFX1_RVT \RegsL_reg[7][2]  ( .D(n112), .CLK(clk), .Q(\RegsL[7][2] ) );
  DFFX1_RVT \RegsL_reg[6][2]  ( .D(n120), .CLK(clk), .Q(\RegsL[6][2] ) );
  DFFX1_RVT \RegsL_reg[5][2]  ( .D(n128), .CLK(clk), .Q(\RegsL[5][2] ) );
  DFFX1_RVT \RegsL_reg[4][2]  ( .D(n136), .CLK(clk), .Q(\RegsL[4][2] ) );
  DFFX1_RVT \RegsL_reg[3][1]  ( .D(n143), .CLK(clk), .Q(\RegsL[3][1] ) );
  DFFX1_RVT \RegsL_reg[2][1]  ( .D(n151), .CLK(clk), .Q(\RegsL[2][1] ) );
  DFFX1_RVT \RegsL_reg[1][1]  ( .D(n159), .CLK(clk), .Q(\RegsL[1][1] ) );
  DFFX1_RVT \RegsL_reg[0][1]  ( .D(n167), .CLK(clk), .Q(\RegsL[0][1] ) );
  DFFX1_RVT \RegsL_reg[7][1]  ( .D(n111), .CLK(clk), .Q(\RegsL[7][1] ) );
  DFFX1_RVT \RegsL_reg[6][1]  ( .D(n119), .CLK(clk), .Q(\RegsL[6][1] ) );
  DFFX1_RVT \RegsL_reg[5][1]  ( .D(n127), .CLK(clk), .Q(\RegsL[5][1] ) );
  DFFX1_RVT \RegsL_reg[4][1]  ( .D(n135), .CLK(clk), .Q(\RegsL[4][1] ) );
  DFFX1_RVT \RegsL_reg[3][0]  ( .D(n142), .CLK(clk), .Q(\RegsL[3][0] ) );
  DFFX1_RVT \RegsL_reg[2][0]  ( .D(n150), .CLK(clk), .Q(\RegsL[2][0] ) );
  DFFX1_RVT \RegsL_reg[1][0]  ( .D(n158), .CLK(clk), .Q(\RegsL[1][0] ) );
  DFFX1_RVT \RegsL_reg[0][0]  ( .D(n166), .CLK(clk), .Q(\RegsL[0][0] ) );
  DFFX1_RVT \RegsL_reg[7][0]  ( .D(n110), .CLK(clk), .Q(\RegsL[7][0] ) );
  DFFX1_RVT \RegsL_reg[6][0]  ( .D(n118), .CLK(clk), .Q(\RegsL[6][0] ) );
  DFFX1_RVT \RegsL_reg[5][0]  ( .D(n126), .CLK(clk), .Q(\RegsL[5][0] ) );
  DFFX1_RVT \RegsL_reg[4][0]  ( .D(n134), .CLK(clk), .Q(\RegsL[4][0] ) );
  INVX1_RVT U2 ( .A(n175), .Y(n505) );
  OR2X1_RVT U3 ( .A1(n228), .A2(n227), .Y(DOAL[4]) );
  OR2X1_RVT U4 ( .A1(n232), .A2(n231), .Y(DOAL[5]) );
  AND2X1_RVT U5 ( .A1(n8), .A2(n7), .Y(n29) );
  AND2X1_RVT U6 ( .A1(n261), .A2(n7), .Y(n32) );
  OR2X1_RVT U7 ( .A1(n212), .A2(n211), .Y(DOAL[0]) );
  OR2X1_RVT U8 ( .A1(n216), .A2(n215), .Y(DOAL[1]) );
  OR2X1_RVT U9 ( .A1(n220), .A2(n219), .Y(DOAL[2]) );
  INVX0_RVT U10 ( .A(n359), .Y(n374) );
  INVX0_RVT U11 ( .A(n361), .Y(n385) );
  INVX0_RVT U12 ( .A(n364), .Y(n382) );
  INVX1_RVT U13 ( .A(n382), .Y(n381) );
  INVX1_RVT U14 ( .A(N15), .Y(n261) );
  AOI22X1_RVT U15 ( .A1(\RegsL[7][0] ), .A2(n290), .A3(\RegsL[5][0] ), .A4(
        n280), .Y(n1) );
  INVX0_RVT U16 ( .A(n268), .Y(n2) );
  INVX0_RVT U17 ( .A(n252), .Y(n268) );
  AND2X1_RVT U18 ( .A1(N16), .A2(n261), .Y(n26) );
  AND2X1_RVT U19 ( .A1(N16), .A2(n8), .Y(n21) );
  INVX0_RVT U20 ( .A(n276), .Y(n3) );
  NAND2X0_RVT U21 ( .A1(\RegsL[1][0] ), .A2(n287), .Y(n4) );
  NAND2X0_RVT U22 ( .A1(\RegsL[3][0] ), .A2(n286), .Y(n5) );
  NAND3X0_RVT U23 ( .A1(n5), .A2(n4), .A3(n1), .Y(n211) );
  INVX0_RVT U24 ( .A(N14), .Y(n529) );
  NBUFFX2_RVT U25 ( .A(n287), .Y(n6) );
  NBUFFX2_RVT U26 ( .A(n520), .Y(n7) );
  INVX0_RVT U27 ( .A(n530), .Y(n8) );
  NBUFFX2_RVT U28 ( .A(n286), .Y(n9) );
  INVX0_RVT U29 ( .A(n266), .Y(n264) );
  INVX0_RVT U30 ( .A(n263), .Y(n262) );
  INVX0_RVT U31 ( .A(n274), .Y(n273) );
  INVX0_RVT U32 ( .A(n266), .Y(n265) );
  INVX0_RVT U33 ( .A(n31), .Y(n487) );
  INVX0_RVT U34 ( .A(n34), .Y(n485) );
  INVX0_RVT U35 ( .A(n25), .Y(n483) );
  INVX0_RVT U36 ( .A(n27), .Y(n481) );
  INVX0_RVT U37 ( .A(n35), .Y(n503) );
  INVX0_RVT U38 ( .A(n37), .Y(n501) );
  INVX0_RVT U39 ( .A(n28), .Y(n499) );
  INVX0_RVT U40 ( .A(n30), .Y(n497) );
  INVX0_RVT U41 ( .A(n39), .Y(n495) );
  INVX0_RVT U42 ( .A(n40), .Y(n510) );
  INVX0_RVT U43 ( .A(n42), .Y(n489) );
  INVX0_RVT U44 ( .A(n41), .Y(n491) );
  INVX0_RVT U45 ( .A(n174), .Y(n506) );
  INVX0_RVT U46 ( .A(n45), .Y(n508) );
  INVX0_RVT U47 ( .A(n43), .Y(n493) );
  INVX0_RVT U48 ( .A(n31), .Y(n488) );
  INVX0_RVT U49 ( .A(n34), .Y(n486) );
  INVX0_RVT U50 ( .A(n25), .Y(n484) );
  INVX0_RVT U51 ( .A(n27), .Y(n482) );
  INVX0_RVT U52 ( .A(n35), .Y(n504) );
  INVX0_RVT U53 ( .A(n37), .Y(n502) );
  INVX0_RVT U54 ( .A(n28), .Y(n500) );
  INVX0_RVT U55 ( .A(n30), .Y(n498) );
  INVX0_RVT U56 ( .A(n41), .Y(n492) );
  INVX0_RVT U57 ( .A(n42), .Y(n490) );
  INVX0_RVT U58 ( .A(n174), .Y(n507) );
  INVX0_RVT U59 ( .A(n39), .Y(n496) );
  INVX0_RVT U60 ( .A(n45), .Y(n509) );
  INVX0_RVT U61 ( .A(n43), .Y(n494) );
  INVX0_RVT U62 ( .A(n40), .Y(n511) );
  OR2X1_RVT U63 ( .A1(n10), .A2(n11), .Y(DOCL[0]) );
  AO221X1_RVT U64 ( .A1(\RegsL[0][0] ), .A2(n447), .A3(\RegsL[2][0] ), .A4(
        n449), .A5(n387), .Y(n10) );
  AO221X1_RVT U65 ( .A1(\RegsL[1][0] ), .A2(n455), .A3(\RegsL[3][0] ), .A4(
        n457), .A5(n392), .Y(n11) );
  OR2X1_RVT U66 ( .A1(n12), .A2(n13), .Y(DOCL[1]) );
  AO221X1_RVT U67 ( .A1(\RegsL[0][1] ), .A2(n447), .A3(\RegsL[2][1] ), .A4(
        n449), .A5(n393), .Y(n12) );
  AO221X1_RVT U68 ( .A1(\RegsL[1][1] ), .A2(n455), .A3(\RegsL[3][1] ), .A4(
        n457), .A5(n394), .Y(n13) );
  OR2X1_RVT U69 ( .A1(n14), .A2(n15), .Y(DOCL[2]) );
  AO221X1_RVT U70 ( .A1(\RegsL[0][2] ), .A2(n447), .A3(\RegsL[2][2] ), .A4(
        n449), .A5(n395), .Y(n14) );
  AO221X1_RVT U71 ( .A1(\RegsL[1][2] ), .A2(n455), .A3(\RegsL[3][2] ), .A4(
        n457), .A5(n396), .Y(n15) );
  OR2X1_RVT U72 ( .A1(n16), .A2(n17), .Y(DOCL[3]) );
  AO221X1_RVT U73 ( .A1(\RegsL[0][3] ), .A2(n447), .A3(\RegsL[2][3] ), .A4(
        n449), .A5(n397), .Y(n16) );
  AO221X1_RVT U74 ( .A1(\RegsL[1][3] ), .A2(n455), .A3(\RegsL[3][3] ), .A4(
        n457), .A5(n398), .Y(n17) );
  OR2X1_RVT U75 ( .A1(n18), .A2(n19), .Y(DOCL[4]) );
  AO221X1_RVT U76 ( .A1(\RegsL[0][4] ), .A2(n447), .A3(\RegsL[2][4] ), .A4(
        n449), .A5(n399), .Y(n18) );
  AO221X1_RVT U77 ( .A1(\RegsL[1][4] ), .A2(n455), .A3(\RegsL[3][4] ), .A4(
        n457), .A5(n400), .Y(n19) );
  OR2X1_RVT U78 ( .A1(n20), .A2(n23), .Y(DOCL[5]) );
  AO221X1_RVT U79 ( .A1(\RegsL[0][5] ), .A2(n447), .A3(\RegsL[2][5] ), .A4(
        n449), .A5(n401), .Y(n20) );
  AO221X1_RVT U80 ( .A1(\RegsL[1][5] ), .A2(n455), .A3(\RegsL[3][5] ), .A4(
        n457), .A5(n402), .Y(n23) );
  INVX0_RVT U81 ( .A(n268), .Y(n267) );
  INVX0_RVT U82 ( .A(n285), .Y(n279) );
  INVX1_RVT U83 ( .A(n176), .Y(n378) );
  INVX1_RVT U84 ( .A(n177), .Y(n376) );
  INVX1_RVT U85 ( .A(n176), .Y(n377) );
  INVX1_RVT U86 ( .A(n177), .Y(n375) );
  INVX1_RVT U87 ( .A(n374), .Y(n373) );
  INVX1_RVT U88 ( .A(n386), .Y(n383) );
  AND2X1_RVT U89 ( .A1(n293), .A2(n209), .Y(n257) );
  AND2X1_RVT U90 ( .A1(n36), .A2(n32), .Y(n25) );
  AND2X1_RVT U91 ( .A1(n38), .A2(n32), .Y(n27) );
  AND2X1_RVT U92 ( .A1(n32), .A2(n22), .Y(n28) );
  AND2X1_RVT U93 ( .A1(n32), .A2(n24), .Y(n30) );
  AND2X1_RVT U94 ( .A1(n36), .A2(n29), .Y(n31) );
  AND2X1_RVT U95 ( .A1(n38), .A2(n29), .Y(n34) );
  AND2X1_RVT U96 ( .A1(n29), .A2(n22), .Y(n35) );
  AND2X1_RVT U97 ( .A1(n29), .A2(n24), .Y(n37) );
  AND2X1_RVT U98 ( .A1(n36), .A2(n21), .Y(n39) );
  AND2X1_RVT U99 ( .A1(n21), .A2(n22), .Y(n40) );
  AND2X1_RVT U100 ( .A1(n36), .A2(n26), .Y(n41) );
  AND2X1_RVT U101 ( .A1(n38), .A2(n26), .Y(n42) );
  AND2X1_RVT U102 ( .A1(n38), .A2(n21), .Y(n43) );
  AND2X1_RVT U103 ( .A1(n24), .A2(n21), .Y(n45) );
  AND2X1_RVT U104 ( .A1(n26), .A2(n22), .Y(n174) );
  AND2X1_RVT U105 ( .A1(n26), .A2(n24), .Y(n175) );
  INVX1_RVT U106 ( .A(n178), .Y(n453) );
  INVX1_RVT U107 ( .A(n179), .Y(n451) );
  INVX1_RVT U108 ( .A(n180), .Y(n449) );
  INVX1_RVT U109 ( .A(n181), .Y(n447) );
  INVX1_RVT U110 ( .A(n179), .Y(n450) );
  INVX1_RVT U111 ( .A(n181), .Y(n446) );
  NAND2X0_RVT U112 ( .A1(n298), .A2(n369), .Y(n176) );
  INVX1_RVT U113 ( .A(n178), .Y(n452) );
  INVX1_RVT U114 ( .A(n180), .Y(n448) );
  NAND2X0_RVT U115 ( .A1(n297), .A2(n369), .Y(n177) );
  INVX1_RVT U116 ( .A(n385), .Y(n384) );
  INVX1_RVT U117 ( .A(N18), .Y(n368) );
  INVX0_RVT U118 ( .A(N16), .Y(n520) );
  AND2X1_RVT U119 ( .A1(n33), .A2(n529), .Y(n24) );
  AND2X1_RVT U120 ( .A1(n44), .A2(n529), .Y(n38) );
  NAND2X0_RVT U121 ( .A1(n391), .A2(n443), .Y(n178) );
  NAND2X0_RVT U122 ( .A1(n390), .A2(n443), .Y(n179) );
  NAND2X0_RVT U123 ( .A1(n389), .A2(n443), .Y(n180) );
  NAND2X0_RVT U124 ( .A1(n388), .A2(n443), .Y(n181) );
  INVX1_RVT U125 ( .A(n202), .Y(n461) );
  INVX1_RVT U126 ( .A(n203), .Y(n459) );
  INVX1_RVT U127 ( .A(n204), .Y(n457) );
  INVX1_RVT U128 ( .A(n205), .Y(n455) );
  INVX1_RVT U129 ( .A(N17), .Y(n369) );
  INVX1_RVT U130 ( .A(n203), .Y(n458) );
  INVX1_RVT U131 ( .A(n205), .Y(n454) );
  INVX1_RVT U132 ( .A(n202), .Y(n460) );
  INVX1_RVT U133 ( .A(n204), .Y(n456) );
  AO22X1_RVT U134 ( .A1(n516), .A2(DIL[7]), .A3(\RegsL[0][7] ), .A4(n482), .Y(
        n173) );
  AO22X1_RVT U135 ( .A1(n517), .A2(DIL[7]), .A3(\RegsL[1][7] ), .A4(n484), .Y(
        n165) );
  AO22X1_RVT U136 ( .A1(n512), .A2(DIL[7]), .A3(\RegsL[2][7] ), .A4(n486), .Y(
        n157) );
  AO22X1_RVT U137 ( .A1(n513), .A2(DIL[7]), .A3(\RegsL[3][7] ), .A4(n488), .Y(
        n149) );
  AO22X1_RVT U138 ( .A1(n521), .A2(DIL[7]), .A3(\RegsL[4][7] ), .A4(n490), .Y(
        n141) );
  AO22X1_RVT U139 ( .A1(n522), .A2(DIL[7]), .A3(\RegsL[5][7] ), .A4(n492), .Y(
        n133) );
  AO22X1_RVT U140 ( .A1(n525), .A2(DIL[7]), .A3(\RegsL[6][7] ), .A4(n494), .Y(
        n125) );
  AO22X1_RVT U141 ( .A1(DIL[7]), .A2(n526), .A3(\RegsL[7][7] ), .A4(n496), .Y(
        n117) );
  AO22X1_RVT U142 ( .A1(n525), .A2(DIL[6]), .A3(\RegsL[6][6] ), .A4(n494), .Y(
        n124) );
  AO22X1_RVT U143 ( .A1(n522), .A2(DIL[6]), .A3(\RegsL[5][6] ), .A4(n492), .Y(
        n132) );
  AO22X1_RVT U144 ( .A1(n521), .A2(DIL[6]), .A3(\RegsL[4][6] ), .A4(n490), .Y(
        n140) );
  AO22X1_RVT U145 ( .A1(n513), .A2(DIL[6]), .A3(\RegsL[3][6] ), .A4(n488), .Y(
        n148) );
  AO22X1_RVT U146 ( .A1(n512), .A2(DIL[6]), .A3(\RegsL[2][6] ), .A4(n486), .Y(
        n156) );
  AO22X1_RVT U147 ( .A1(n517), .A2(DIL[6]), .A3(\RegsL[1][6] ), .A4(n484), .Y(
        n164) );
  AO22X1_RVT U148 ( .A1(n516), .A2(DIL[6]), .A3(\RegsL[0][6] ), .A4(n482), .Y(
        n172) );
  AO22X1_RVT U149 ( .A1(DIL[6]), .A2(n526), .A3(\RegsL[7][6] ), .A4(n496), .Y(
        n116) );
  AO22X1_RVT U150 ( .A1(n515), .A2(n471), .A3(\RegsH[3][5] ), .A4(n504), .Y(
        n83) );
  AO22X1_RVT U151 ( .A1(n514), .A2(n471), .A3(\RegsH[2][5] ), .A4(n502), .Y(
        n91) );
  AO22X1_RVT U152 ( .A1(n519), .A2(n471), .A3(\RegsH[1][5] ), .A4(n500), .Y(
        n99) );
  AO22X1_RVT U153 ( .A1(n518), .A2(n471), .A3(\RegsH[0][5] ), .A4(n498), .Y(
        n107) );
  AO22X1_RVT U154 ( .A1(n527), .A2(n472), .A3(\RegsH[6][5] ), .A4(n509), .Y(
        n59) );
  AO22X1_RVT U155 ( .A1(n524), .A2(n472), .A3(\RegsH[5][5] ), .A4(n507), .Y(
        n67) );
  AO22X1_RVT U156 ( .A1(n523), .A2(n472), .A3(\RegsH[4][5] ), .A4(n505), .Y(
        n75) );
  AO22X1_RVT U157 ( .A1(n472), .A2(n528), .A3(\RegsH[7][5] ), .A4(n510), .Y(
        n51) );
  AO22X1_RVT U158 ( .A1(n515), .A2(n469), .A3(\RegsH[3][4] ), .A4(n504), .Y(
        n82) );
  AO22X1_RVT U159 ( .A1(n514), .A2(n469), .A3(\RegsH[2][4] ), .A4(n502), .Y(
        n90) );
  AO22X1_RVT U160 ( .A1(n519), .A2(n469), .A3(\RegsH[1][4] ), .A4(n500), .Y(
        n98) );
  AO22X1_RVT U161 ( .A1(n518), .A2(n469), .A3(\RegsH[0][4] ), .A4(n498), .Y(
        n106) );
  AO22X1_RVT U162 ( .A1(n524), .A2(n470), .A3(\RegsH[5][4] ), .A4(n507), .Y(
        n66) );
  AO22X1_RVT U163 ( .A1(n527), .A2(n470), .A3(\RegsH[6][4] ), .A4(n509), .Y(
        n58) );
  AO22X1_RVT U164 ( .A1(n523), .A2(n470), .A3(\RegsH[4][4] ), .A4(n505), .Y(
        n74) );
  AO22X1_RVT U165 ( .A1(n470), .A2(n528), .A3(\RegsH[7][4] ), .A4(n511), .Y(
        n50) );
  AO22X1_RVT U166 ( .A1(n522), .A2(DIL[5]), .A3(\RegsL[5][5] ), .A4(n492), .Y(
        n131) );
  AO22X1_RVT U167 ( .A1(n517), .A2(DIL[5]), .A3(\RegsL[1][5] ), .A4(n484), .Y(
        n163) );
  AO22X1_RVT U168 ( .A1(n513), .A2(DIL[5]), .A3(\RegsL[3][5] ), .A4(n488), .Y(
        n147) );
  AO22X1_RVT U169 ( .A1(n525), .A2(DIL[5]), .A3(\RegsL[6][5] ), .A4(n494), .Y(
        n123) );
  AO22X1_RVT U170 ( .A1(n521), .A2(DIL[5]), .A3(\RegsL[4][5] ), .A4(n490), .Y(
        n139) );
  AO22X1_RVT U171 ( .A1(n512), .A2(DIL[5]), .A3(\RegsL[2][5] ), .A4(n486), .Y(
        n155) );
  AO22X1_RVT U172 ( .A1(n516), .A2(DIL[5]), .A3(\RegsL[0][5] ), .A4(n482), .Y(
        n171) );
  AO22X1_RVT U173 ( .A1(DIL[5]), .A2(n526), .A3(\RegsL[7][5] ), .A4(n496), .Y(
        n115) );
  AO22X1_RVT U174 ( .A1(n515), .A2(DIH[3]), .A3(\RegsH[3][3] ), .A4(n504), .Y(
        n81) );
  AO22X1_RVT U175 ( .A1(n514), .A2(DIH[3]), .A3(\RegsH[2][3] ), .A4(n502), .Y(
        n89) );
  AO22X1_RVT U176 ( .A1(n519), .A2(DIH[3]), .A3(\RegsH[1][3] ), .A4(n500), .Y(
        n97) );
  AO22X1_RVT U177 ( .A1(n518), .A2(DIH[3]), .A3(\RegsH[0][3] ), .A4(n498), .Y(
        n105) );
  AO22X1_RVT U178 ( .A1(n524), .A2(n467), .A3(\RegsH[5][3] ), .A4(n507), .Y(
        n65) );
  AO22X1_RVT U179 ( .A1(n527), .A2(n467), .A3(\RegsH[6][3] ), .A4(n509), .Y(
        n57) );
  AO22X1_RVT U180 ( .A1(n467), .A2(n528), .A3(\RegsH[7][3] ), .A4(n511), .Y(
        n49) );
  AO22X1_RVT U181 ( .A1(n523), .A2(n467), .A3(\RegsH[4][3] ), .A4(n505), .Y(
        n73) );
  AO22X1_RVT U182 ( .A1(n522), .A2(DIL[4]), .A3(\RegsL[5][4] ), .A4(n492), .Y(
        n130) );
  AO22X1_RVT U183 ( .A1(n517), .A2(DIL[4]), .A3(\RegsL[1][4] ), .A4(n484), .Y(
        n162) );
  AO22X1_RVT U184 ( .A1(n513), .A2(DIL[4]), .A3(\RegsL[3][4] ), .A4(n488), .Y(
        n146) );
  AO22X1_RVT U185 ( .A1(n525), .A2(DIL[4]), .A3(\RegsL[6][4] ), .A4(n494), .Y(
        n122) );
  AO22X1_RVT U186 ( .A1(n521), .A2(DIL[4]), .A3(\RegsL[4][4] ), .A4(n490), .Y(
        n138) );
  AO22X1_RVT U187 ( .A1(n512), .A2(DIL[4]), .A3(\RegsL[2][4] ), .A4(n486), .Y(
        n154) );
  AO22X1_RVT U188 ( .A1(n516), .A2(DIL[4]), .A3(\RegsL[0][4] ), .A4(n482), .Y(
        n170) );
  AO22X1_RVT U189 ( .A1(DIL[4]), .A2(n526), .A3(\RegsL[7][4] ), .A4(n496), .Y(
        n114) );
  AO22X1_RVT U190 ( .A1(n515), .A2(DIH[2]), .A3(\RegsH[3][2] ), .A4(n504), .Y(
        n80) );
  AO22X1_RVT U191 ( .A1(n514), .A2(DIH[2]), .A3(\RegsH[2][2] ), .A4(n502), .Y(
        n88) );
  AO22X1_RVT U192 ( .A1(n519), .A2(DIH[2]), .A3(\RegsH[1][2] ), .A4(n500), .Y(
        n96) );
  AO22X1_RVT U193 ( .A1(n518), .A2(DIH[2]), .A3(\RegsH[0][2] ), .A4(n498), .Y(
        n104) );
  AO22X1_RVT U194 ( .A1(n524), .A2(n465), .A3(\RegsH[5][2] ), .A4(n507), .Y(
        n64) );
  AO22X1_RVT U195 ( .A1(n527), .A2(n465), .A3(\RegsH[6][2] ), .A4(n509), .Y(
        n56) );
  AO22X1_RVT U196 ( .A1(n523), .A2(n465), .A3(\RegsH[4][2] ), .A4(n505), .Y(
        n72) );
  AO22X1_RVT U197 ( .A1(n465), .A2(n528), .A3(\RegsH[7][2] ), .A4(n511), .Y(
        n48) );
  AO22X1_RVT U198 ( .A1(n522), .A2(DIL[3]), .A3(\RegsL[5][3] ), .A4(n492), .Y(
        n129) );
  AO22X1_RVT U199 ( .A1(n517), .A2(DIL[3]), .A3(\RegsL[1][3] ), .A4(n484), .Y(
        n161) );
  AO22X1_RVT U200 ( .A1(n513), .A2(DIL[3]), .A3(\RegsL[3][3] ), .A4(n488), .Y(
        n145) );
  AO22X1_RVT U201 ( .A1(n525), .A2(DIL[3]), .A3(\RegsL[6][3] ), .A4(n494), .Y(
        n121) );
  AO22X1_RVT U202 ( .A1(n521), .A2(DIL[3]), .A3(\RegsL[4][3] ), .A4(n490), .Y(
        n137) );
  AO22X1_RVT U203 ( .A1(n512), .A2(DIL[3]), .A3(\RegsL[2][3] ), .A4(n486), .Y(
        n153) );
  AO22X1_RVT U204 ( .A1(n516), .A2(DIL[3]), .A3(\RegsL[0][3] ), .A4(n482), .Y(
        n169) );
  AO22X1_RVT U205 ( .A1(DIL[3]), .A2(n526), .A3(\RegsL[7][3] ), .A4(n496), .Y(
        n113) );
  AO22X1_RVT U206 ( .A1(n522), .A2(DIL[2]), .A3(\RegsL[5][2] ), .A4(n492), .Y(
        n128) );
  AO22X1_RVT U207 ( .A1(n517), .A2(DIL[2]), .A3(\RegsL[1][2] ), .A4(n484), .Y(
        n160) );
  AO22X1_RVT U208 ( .A1(n513), .A2(DIL[2]), .A3(\RegsL[3][2] ), .A4(n488), .Y(
        n144) );
  AO22X1_RVT U209 ( .A1(n525), .A2(DIL[2]), .A3(\RegsL[6][2] ), .A4(n494), .Y(
        n120) );
  AO22X1_RVT U210 ( .A1(n521), .A2(DIL[2]), .A3(\RegsL[4][2] ), .A4(n490), .Y(
        n136) );
  AO22X1_RVT U211 ( .A1(n512), .A2(DIL[2]), .A3(\RegsL[2][2] ), .A4(n486), .Y(
        n152) );
  AO22X1_RVT U212 ( .A1(n516), .A2(DIL[2]), .A3(\RegsL[0][2] ), .A4(n482), .Y(
        n168) );
  AO22X1_RVT U213 ( .A1(DIL[2]), .A2(n526), .A3(\RegsL[7][2] ), .A4(n496), .Y(
        n112) );
  NAND2X0_RVT U214 ( .A1(n182), .A2(n183), .Y(DOAL[6]) );
  AOI221X1_RVT U215 ( .A1(\RegsL[0][6] ), .A2(n262), .A3(\RegsL[2][6] ), .A4(
        n264), .A5(n233), .Y(n182) );
  AOI221X1_RVT U216 ( .A1(\RegsL[1][6] ), .A2(n273), .A3(\RegsL[3][6] ), .A4(
        n3), .A5(n234), .Y(n183) );
  AO22X1_RVT U217 ( .A1(n514), .A2(n462), .A3(\RegsH[2][0] ), .A4(n502), .Y(
        n86) );
  AO22X1_RVT U218 ( .A1(n519), .A2(n462), .A3(\RegsH[1][0] ), .A4(n500), .Y(
        n94) );
  AO22X1_RVT U219 ( .A1(n518), .A2(n462), .A3(\RegsH[0][0] ), .A4(n498), .Y(
        n102) );
  AO22X1_RVT U220 ( .A1(n524), .A2(DIH[0]), .A3(\RegsH[5][0] ), .A4(n507), .Y(
        n62) );
  AO22X1_RVT U221 ( .A1(n515), .A2(DIH[0]), .A3(\RegsH[3][0] ), .A4(n504), .Y(
        n78) );
  AO22X1_RVT U222 ( .A1(DIH[0]), .A2(n528), .A3(\RegsH[7][0] ), .A4(n511), .Y(
        n46) );
  AO22X1_RVT U223 ( .A1(n527), .A2(n462), .A3(\RegsH[6][0] ), .A4(n509), .Y(
        n54) );
  AO22X1_RVT U224 ( .A1(n523), .A2(DIH[0]), .A3(\RegsH[4][0] ), .A4(n505), .Y(
        n70) );
  NAND2X0_RVT U225 ( .A1(n184), .A2(n185), .Y(DOAL[7]) );
  AOI221X1_RVT U226 ( .A1(\RegsL[0][7] ), .A2(n262), .A3(\RegsL[2][7] ), .A4(
        n265), .A5(n235), .Y(n184) );
  AOI221X1_RVT U227 ( .A1(\RegsL[1][7] ), .A2(n273), .A3(\RegsL[3][7] ), .A4(
        n275), .A5(n236), .Y(n185) );
  NAND2X0_RVT U228 ( .A1(n186), .A2(n187), .Y(DOAH[0]) );
  AOI221X1_RVT U229 ( .A1(\RegsH[0][0] ), .A2(n262), .A3(\RegsH[2][0] ), .A4(
        n264), .A5(n237), .Y(n186) );
  AOI221X1_RVT U230 ( .A1(\RegsH[1][0] ), .A2(n273), .A3(\RegsH[3][0] ), .A4(
        n275), .A5(n238), .Y(n187) );
  NAND2X0_RVT U231 ( .A1(n188), .A2(n189), .Y(DOAH[1]) );
  AOI221X1_RVT U232 ( .A1(\RegsH[0][1] ), .A2(n289), .A3(\RegsH[2][1] ), .A4(
        n265), .A5(n239), .Y(n188) );
  AOI221X1_RVT U233 ( .A1(\RegsH[1][1] ), .A2(n6), .A3(\RegsH[3][1] ), .A4(
        n275), .A5(n240), .Y(n189) );
  NAND2X0_RVT U234 ( .A1(n190), .A2(n191), .Y(DOAH[2]) );
  AOI221X1_RVT U235 ( .A1(\RegsH[0][2] ), .A2(n262), .A3(\RegsH[2][2] ), .A4(
        n264), .A5(n241), .Y(n190) );
  AOI221X1_RVT U236 ( .A1(\RegsH[1][2] ), .A2(n273), .A3(\RegsH[3][2] ), .A4(
        n3), .A5(n242), .Y(n191) );
  NAND2X0_RVT U237 ( .A1(n192), .A2(n193), .Y(DOAH[3]) );
  AOI221X1_RVT U238 ( .A1(\RegsH[0][3] ), .A2(n262), .A3(\RegsH[2][3] ), .A4(
        n265), .A5(n243), .Y(n192) );
  AOI221X1_RVT U239 ( .A1(\RegsH[1][3] ), .A2(n273), .A3(\RegsH[3][3] ), .A4(
        n275), .A5(n244), .Y(n193) );
  NAND2X0_RVT U240 ( .A1(n194), .A2(n195), .Y(DOAH[4]) );
  AOI221X1_RVT U241 ( .A1(\RegsH[0][4] ), .A2(n262), .A3(\RegsH[2][4] ), .A4(
        n264), .A5(n245), .Y(n194) );
  AOI221X1_RVT U242 ( .A1(\RegsH[1][4] ), .A2(n273), .A3(\RegsH[3][4] ), .A4(
        n9), .A5(n246), .Y(n195) );
  NAND2X0_RVT U243 ( .A1(n196), .A2(n197), .Y(DOAH[5]) );
  AOI221X1_RVT U244 ( .A1(\RegsH[0][5] ), .A2(n255), .A3(\RegsH[2][5] ), .A4(
        n265), .A5(n247), .Y(n196) );
  AOI221X1_RVT U245 ( .A1(\RegsH[1][5] ), .A2(n260), .A3(\RegsH[3][5] ), .A4(
        n275), .A5(n248), .Y(n197) );
  NAND2X0_RVT U246 ( .A1(n198), .A2(n199), .Y(DOAH[6]) );
  AOI221X1_RVT U247 ( .A1(\RegsH[0][6] ), .A2(n262), .A3(\RegsH[2][6] ), .A4(
        n264), .A5(n249), .Y(n198) );
  AOI221X1_RVT U248 ( .A1(\RegsH[1][6] ), .A2(n273), .A3(\RegsH[3][6] ), .A4(
        n3), .A5(n250), .Y(n199) );
  NAND2X0_RVT U249 ( .A1(n200), .A2(n201), .Y(DOAH[7]) );
  AOI221X1_RVT U250 ( .A1(\RegsH[0][7] ), .A2(n289), .A3(\RegsH[2][7] ), .A4(
        n265), .A5(n253), .Y(n200) );
  AOI221X1_RVT U251 ( .A1(\RegsH[1][7] ), .A2(n6), .A3(\RegsH[3][7] ), .A4(
        n275), .A5(n258), .Y(n201) );
  INVX1_RVT U252 ( .A(N20), .Y(n443) );
  NAND2X0_RVT U253 ( .A1(n391), .A2(N20), .Y(n202) );
  NAND2X0_RVT U254 ( .A1(N20), .A2(n390), .Y(n203) );
  NAND2X0_RVT U255 ( .A1(n389), .A2(N20), .Y(n204) );
  NAND2X0_RVT U256 ( .A1(n388), .A2(N20), .Y(n205) );
  INVX1_RVT U257 ( .A(N21), .Y(n445) );
  INVX1_RVT U258 ( .A(N22), .Y(n444) );
  AND2X1_RVT U259 ( .A1(n261), .A2(n520), .Y(n207) );
  AND2X1_RVT U260 ( .A1(n207), .A2(n281), .Y(n255) );
  AND2X1_RVT U261 ( .A1(n8), .A2(n7), .Y(n208) );
  AND2X1_RVT U262 ( .A1(n208), .A2(n281), .Y(n254) );
  AND2X1_RVT U263 ( .A1(N16), .A2(n8), .Y(n209) );
  AND2X1_RVT U264 ( .A1(n209), .A2(n281), .Y(n252) );
  AND2X1_RVT U265 ( .A1(N16), .A2(n261), .Y(n210) );
  AND2X1_RVT U266 ( .A1(n210), .A2(n529), .Y(n251) );
  AO22X1_RVT U267 ( .A1(\RegsL[6][0] ), .A2(n2), .A3(\RegsL[4][0] ), .A4(n251), 
        .Y(n206) );
  AO221X1_RVT U268 ( .A1(\RegsL[0][0] ), .A2(n282), .A3(\RegsL[2][0] ), .A4(
        n283), .A5(n206), .Y(n212) );
  AND2X1_RVT U269 ( .A1(n207), .A2(n293), .Y(n260) );
  AND2X1_RVT U270 ( .A1(n208), .A2(n293), .Y(n259) );
  AND2X1_RVT U271 ( .A1(n210), .A2(n293), .Y(n256) );
  AO22X1_RVT U272 ( .A1(\RegsL[6][1] ), .A2(n284), .A3(\RegsL[4][1] ), .A4(
        n271), .Y(n213) );
  AO221X1_RVT U273 ( .A1(\RegsL[0][1] ), .A2(n282), .A3(\RegsL[2][1] ), .A4(
        n283), .A5(n213), .Y(n216) );
  AO22X1_RVT U274 ( .A1(\RegsL[7][1] ), .A2(n290), .A3(\RegsL[5][1] ), .A4(
        n280), .Y(n214) );
  AO221X1_RVT U275 ( .A1(\RegsL[1][1] ), .A2(n287), .A3(\RegsL[3][1] ), .A4(
        n286), .A5(n214), .Y(n215) );
  AO22X1_RVT U276 ( .A1(\RegsL[6][2] ), .A2(n284), .A3(\RegsL[4][2] ), .A4(
        n271), .Y(n217) );
  AO221X1_RVT U277 ( .A1(\RegsL[0][2] ), .A2(n282), .A3(\RegsL[2][2] ), .A4(
        n254), .A5(n217), .Y(n220) );
  AO22X1_RVT U278 ( .A1(\RegsL[7][2] ), .A2(n290), .A3(\RegsL[5][2] ), .A4(
        n280), .Y(n218) );
  AO221X1_RVT U279 ( .A1(\RegsL[1][2] ), .A2(n287), .A3(\RegsL[3][2] ), .A4(n3), .A5(n218), .Y(n219) );
  AO22X1_RVT U280 ( .A1(\RegsL[6][3] ), .A2(n284), .A3(\RegsL[4][3] ), .A4(
        n271), .Y(n221) );
  AO221X1_RVT U281 ( .A1(\RegsL[0][3] ), .A2(n289), .A3(\RegsL[2][3] ), .A4(
        n288), .A5(n221), .Y(n224) );
  AO22X1_RVT U282 ( .A1(\RegsL[7][3] ), .A2(n292), .A3(\RegsL[5][3] ), .A4(
        n291), .Y(n222) );
  AO221X1_RVT U283 ( .A1(\RegsL[1][3] ), .A2(n6), .A3(\RegsL[3][3] ), .A4(n9), 
        .A5(n222), .Y(n223) );
  AO22X1_RVT U284 ( .A1(\RegsL[6][4] ), .A2(n2), .A3(\RegsL[4][4] ), .A4(n271), 
        .Y(n225) );
  AO221X1_RVT U285 ( .A1(\RegsL[0][4] ), .A2(n289), .A3(\RegsL[2][4] ), .A4(
        n288), .A5(n225), .Y(n228) );
  AO22X1_RVT U286 ( .A1(\RegsL[7][4] ), .A2(n292), .A3(\RegsL[5][4] ), .A4(
        n291), .Y(n226) );
  AO221X1_RVT U287 ( .A1(\RegsL[1][4] ), .A2(n6), .A3(\RegsL[3][4] ), .A4(n9), 
        .A5(n226), .Y(n227) );
  AO22X1_RVT U288 ( .A1(\RegsL[6][5] ), .A2(n252), .A3(\RegsL[4][5] ), .A4(
        n270), .Y(n229) );
  AO221X1_RVT U289 ( .A1(\RegsL[0][5] ), .A2(n289), .A3(\RegsL[2][5] ), .A4(
        n288), .A5(n229), .Y(n232) );
  AO22X1_RVT U290 ( .A1(\RegsL[7][5] ), .A2(n292), .A3(\RegsL[5][5] ), .A4(
        n291), .Y(n230) );
  AO221X1_RVT U291 ( .A1(\RegsL[1][5] ), .A2(n6), .A3(\RegsL[3][5] ), .A4(n9), 
        .A5(n230), .Y(n231) );
  AO22X1_RVT U292 ( .A1(\RegsL[6][6] ), .A2(n267), .A3(\RegsL[4][6] ), .A4(
        n269), .Y(n233) );
  AO22X1_RVT U293 ( .A1(\RegsL[7][6] ), .A2(n277), .A3(\RegsL[5][6] ), .A4(
        n279), .Y(n234) );
  AO22X1_RVT U294 ( .A1(\RegsL[6][7] ), .A2(n267), .A3(\RegsL[4][7] ), .A4(
        n270), .Y(n235) );
  AO22X1_RVT U295 ( .A1(\RegsL[7][7] ), .A2(n277), .A3(\RegsL[5][7] ), .A4(
        n291), .Y(n236) );
  AO22X1_RVT U296 ( .A1(\RegsH[6][0] ), .A2(n267), .A3(\RegsH[4][0] ), .A4(
        n269), .Y(n237) );
  AO22X1_RVT U297 ( .A1(\RegsH[7][0] ), .A2(n277), .A3(\RegsH[5][0] ), .A4(
        n279), .Y(n238) );
  AO22X1_RVT U298 ( .A1(\RegsH[6][1] ), .A2(n267), .A3(\RegsH[4][1] ), .A4(
        n270), .Y(n239) );
  AO22X1_RVT U299 ( .A1(\RegsH[7][1] ), .A2(n292), .A3(\RegsH[5][1] ), .A4(
        n279), .Y(n240) );
  AO22X1_RVT U300 ( .A1(\RegsH[6][2] ), .A2(n267), .A3(\RegsH[4][2] ), .A4(
        n269), .Y(n241) );
  AO22X1_RVT U301 ( .A1(\RegsH[7][2] ), .A2(n277), .A3(\RegsH[5][2] ), .A4(
        n279), .Y(n242) );
  AO22X1_RVT U302 ( .A1(\RegsH[6][3] ), .A2(n2), .A3(\RegsH[4][3] ), .A4(n270), 
        .Y(n243) );
  AO22X1_RVT U303 ( .A1(\RegsH[7][3] ), .A2(n277), .A3(\RegsH[5][3] ), .A4(
        n291), .Y(n244) );
  AO22X1_RVT U304 ( .A1(\RegsH[6][4] ), .A2(n267), .A3(\RegsH[4][4] ), .A4(
        n269), .Y(n245) );
  AO22X1_RVT U305 ( .A1(\RegsH[7][4] ), .A2(n277), .A3(\RegsH[5][4] ), .A4(
        n279), .Y(n246) );
  AO22X1_RVT U306 ( .A1(\RegsH[6][5] ), .A2(n252), .A3(\RegsH[4][5] ), .A4(
        n270), .Y(n247) );
  AO22X1_RVT U307 ( .A1(\RegsH[7][5] ), .A2(n257), .A3(\RegsH[5][5] ), .A4(
        n256), .Y(n248) );
  AO22X1_RVT U308 ( .A1(\RegsH[6][6] ), .A2(n267), .A3(\RegsH[4][6] ), .A4(
        n269), .Y(n249) );
  AO22X1_RVT U309 ( .A1(\RegsH[7][6] ), .A2(n277), .A3(\RegsH[5][6] ), .A4(
        n279), .Y(n250) );
  AO22X1_RVT U310 ( .A1(\RegsH[6][7] ), .A2(n284), .A3(\RegsH[4][7] ), .A4(
        n270), .Y(n253) );
  AO22X1_RVT U311 ( .A1(\RegsH[7][7] ), .A2(n292), .A3(\RegsH[5][7] ), .A4(
        n279), .Y(n258) );
  INVX0_RVT U312 ( .A(n272), .Y(n270) );
  INVX0_RVT U313 ( .A(n272), .Y(n269) );
  NBUFFX2_RVT U314 ( .A(n529), .Y(n281) );
  INVX0_RVT U315 ( .A(n255), .Y(n263) );
  NBUFFX2_RVT U316 ( .A(n255), .Y(n282) );
  INVX0_RVT U317 ( .A(n254), .Y(n266) );
  NBUFFX2_RVT U318 ( .A(n254), .Y(n283) );
  INVX0_RVT U319 ( .A(n251), .Y(n272) );
  NBUFFX2_RVT U320 ( .A(n252), .Y(n284) );
  INVX0_RVT U321 ( .A(n256), .Y(n285) );
  INVX0_RVT U322 ( .A(n259), .Y(n276) );
  NBUFFX2_RVT U323 ( .A(n259), .Y(n286) );
  INVX0_RVT U324 ( .A(n272), .Y(n271) );
  INVX0_RVT U325 ( .A(n260), .Y(n274) );
  NBUFFX2_RVT U326 ( .A(n260), .Y(n287) );
  NBUFFX2_RVT U327 ( .A(n283), .Y(n288) );
  NBUFFX2_RVT U328 ( .A(n282), .Y(n289) );
  INVX0_RVT U329 ( .A(n257), .Y(n278) );
  NBUFFX2_RVT U330 ( .A(n257), .Y(n290) );
  INVX0_RVT U331 ( .A(n285), .Y(n280) );
  INVX0_RVT U332 ( .A(n285), .Y(n291) );
  INVX0_RVT U333 ( .A(n278), .Y(n277) );
  NBUFFX2_RVT U334 ( .A(n290), .Y(n292) );
  OR2X2_RVT U335 ( .A1(n224), .A2(n223), .Y(DOAL[3]) );
  INVX0_RVT U336 ( .A(n276), .Y(n275) );
  NBUFFX2_RVT U337 ( .A(N14), .Y(n293) );
  AND2X1_RVT U338 ( .A1(n368), .A2(n370), .Y(n295) );
  AND2X1_RVT U339 ( .A1(n295), .A2(n369), .Y(n360) );
  AND2X1_RVT U340 ( .A1(N18), .A2(n370), .Y(n296) );
  AND2X1_RVT U341 ( .A1(n296), .A2(n369), .Y(n359) );
  AND2X1_RVT U342 ( .A1(N19), .A2(N18), .Y(n297) );
  AND2X1_RVT U343 ( .A1(N19), .A2(n368), .Y(n298) );
  AO22X1_RVT U344 ( .A1(\RegsL[6][0] ), .A2(n376), .A3(\RegsL[4][0] ), .A4(
        n378), .Y(n294) );
  AO221X1_RVT U345 ( .A1(\RegsL[0][0] ), .A2(n371), .A3(\RegsL[2][0] ), .A4(
        n359), .A5(n294), .Y(n301) );
  AND2X1_RVT U346 ( .A1(n295), .A2(N17), .Y(n365) );
  AND2X1_RVT U347 ( .A1(n296), .A2(N17), .Y(n364) );
  AND2X1_RVT U348 ( .A1(N17), .A2(n297), .Y(n362) );
  AND2X1_RVT U349 ( .A1(n298), .A2(N17), .Y(n361) );
  AO22X1_RVT U350 ( .A1(\RegsL[7][0] ), .A2(n362), .A3(\RegsL[5][0] ), .A4(
        n361), .Y(n299) );
  AO221X1_RVT U351 ( .A1(\RegsL[1][0] ), .A2(n379), .A3(\RegsL[3][0] ), .A4(
        n364), .A5(n299), .Y(n300) );
  OR2X1_RVT U352 ( .A1(n301), .A2(n300), .Y(DOBL[0]) );
  AO22X1_RVT U353 ( .A1(\RegsL[6][1] ), .A2(n376), .A3(\RegsL[4][1] ), .A4(
        n378), .Y(n302) );
  AO221X1_RVT U354 ( .A1(\RegsL[0][1] ), .A2(n371), .A3(\RegsL[2][1] ), .A4(
        n359), .A5(n302), .Y(n305) );
  AO22X1_RVT U355 ( .A1(\RegsL[7][1] ), .A2(n362), .A3(\RegsL[5][1] ), .A4(
        n361), .Y(n303) );
  AO221X1_RVT U356 ( .A1(\RegsL[1][1] ), .A2(n379), .A3(\RegsL[3][1] ), .A4(
        n364), .A5(n303), .Y(n304) );
  OR2X1_RVT U357 ( .A1(n305), .A2(n304), .Y(DOBL[1]) );
  AO22X1_RVT U358 ( .A1(\RegsL[6][2] ), .A2(n376), .A3(\RegsL[4][2] ), .A4(
        n378), .Y(n306) );
  AO221X1_RVT U359 ( .A1(\RegsL[0][2] ), .A2(n371), .A3(\RegsL[2][2] ), .A4(
        n359), .A5(n306), .Y(n309) );
  AO22X1_RVT U360 ( .A1(\RegsL[7][2] ), .A2(n362), .A3(\RegsL[5][2] ), .A4(
        n361), .Y(n307) );
  AO221X1_RVT U361 ( .A1(\RegsL[1][2] ), .A2(n379), .A3(\RegsL[3][2] ), .A4(
        n364), .A5(n307), .Y(n308) );
  OR2X1_RVT U362 ( .A1(n309), .A2(n308), .Y(DOBL[2]) );
  AO22X1_RVT U363 ( .A1(\RegsL[6][3] ), .A2(n376), .A3(\RegsL[4][3] ), .A4(
        n378), .Y(n310) );
  AO221X1_RVT U364 ( .A1(\RegsL[0][3] ), .A2(n371), .A3(\RegsL[2][3] ), .A4(
        n373), .A5(n310), .Y(n313) );
  AO22X1_RVT U365 ( .A1(\RegsL[7][3] ), .A2(n383), .A3(\RegsL[5][3] ), .A4(
        n384), .Y(n311) );
  AO221X1_RVT U366 ( .A1(\RegsL[1][3] ), .A2(n379), .A3(\RegsL[3][3] ), .A4(
        n381), .A5(n311), .Y(n312) );
  OR2X1_RVT U367 ( .A1(n313), .A2(n312), .Y(DOBL[3]) );
  AO22X1_RVT U368 ( .A1(\RegsL[6][4] ), .A2(n376), .A3(\RegsL[4][4] ), .A4(
        n378), .Y(n314) );
  AO221X1_RVT U369 ( .A1(\RegsL[0][4] ), .A2(n371), .A3(\RegsL[2][4] ), .A4(
        n359), .A5(n314), .Y(n317) );
  AO22X1_RVT U370 ( .A1(\RegsL[7][4] ), .A2(n362), .A3(\RegsL[5][4] ), .A4(
        n361), .Y(n315) );
  AO221X1_RVT U371 ( .A1(\RegsL[1][4] ), .A2(n379), .A3(\RegsL[3][4] ), .A4(
        n364), .A5(n315), .Y(n316) );
  OR2X1_RVT U372 ( .A1(n317), .A2(n316), .Y(DOBL[4]) );
  AO22X1_RVT U373 ( .A1(\RegsL[6][5] ), .A2(n376), .A3(\RegsL[4][5] ), .A4(
        n378), .Y(n318) );
  AO221X1_RVT U374 ( .A1(\RegsL[0][5] ), .A2(n371), .A3(\RegsL[2][5] ), .A4(
        n359), .A5(n318), .Y(n321) );
  AO22X1_RVT U375 ( .A1(\RegsL[7][5] ), .A2(n362), .A3(\RegsL[5][5] ), .A4(
        n361), .Y(n319) );
  AO221X1_RVT U376 ( .A1(\RegsL[1][5] ), .A2(n379), .A3(\RegsL[3][5] ), .A4(
        n364), .A5(n319), .Y(n320) );
  OR2X1_RVT U377 ( .A1(n321), .A2(n320), .Y(DOBL[5]) );
  AO22X1_RVT U378 ( .A1(\RegsL[6][6] ), .A2(n375), .A3(\RegsL[4][6] ), .A4(
        n377), .Y(n322) );
  AO221X1_RVT U379 ( .A1(\RegsL[0][6] ), .A2(n371), .A3(\RegsL[2][6] ), .A4(
        n373), .A5(n322), .Y(n325) );
  AO22X1_RVT U380 ( .A1(\RegsL[7][6] ), .A2(n383), .A3(\RegsL[5][6] ), .A4(
        n384), .Y(n323) );
  AO221X1_RVT U381 ( .A1(\RegsL[1][6] ), .A2(n379), .A3(\RegsL[3][6] ), .A4(
        n381), .A5(n323), .Y(n324) );
  OR2X1_RVT U382 ( .A1(n325), .A2(n324), .Y(DOBL[6]) );
  AO22X1_RVT U383 ( .A1(\RegsL[6][7] ), .A2(n375), .A3(\RegsL[4][7] ), .A4(
        n377), .Y(n326) );
  AO221X1_RVT U384 ( .A1(\RegsL[0][7] ), .A2(n360), .A3(\RegsL[2][7] ), .A4(
        n373), .A5(n326), .Y(n329) );
  AO22X1_RVT U385 ( .A1(\RegsL[7][7] ), .A2(n383), .A3(\RegsL[5][7] ), .A4(
        n384), .Y(n327) );
  AO221X1_RVT U386 ( .A1(\RegsL[1][7] ), .A2(n365), .A3(\RegsL[3][7] ), .A4(
        n381), .A5(n327), .Y(n328) );
  OR2X1_RVT U387 ( .A1(n329), .A2(n328), .Y(DOBL[7]) );
  AO22X1_RVT U388 ( .A1(\RegsH[6][0] ), .A2(n376), .A3(\RegsH[4][0] ), .A4(
        n377), .Y(n330) );
  AO221X1_RVT U389 ( .A1(\RegsH[0][0] ), .A2(n360), .A3(\RegsH[2][0] ), .A4(
        n373), .A5(n330), .Y(n333) );
  AO22X1_RVT U390 ( .A1(\RegsH[7][0] ), .A2(n362), .A3(\RegsH[5][0] ), .A4(
        n384), .Y(n331) );
  AO221X1_RVT U391 ( .A1(\RegsH[1][0] ), .A2(n365), .A3(\RegsH[3][0] ), .A4(
        n364), .A5(n331), .Y(n332) );
  OR2X1_RVT U392 ( .A1(n333), .A2(n332), .Y(DOBH[0]) );
  AO22X1_RVT U393 ( .A1(\RegsH[6][1] ), .A2(n375), .A3(\RegsH[4][1] ), .A4(
        n377), .Y(n334) );
  AO221X1_RVT U394 ( .A1(\RegsH[0][1] ), .A2(n360), .A3(\RegsH[2][1] ), .A4(
        n359), .A5(n334), .Y(n337) );
  AO22X1_RVT U395 ( .A1(\RegsH[7][1] ), .A2(n383), .A3(\RegsH[5][1] ), .A4(
        n361), .Y(n335) );
  AO221X1_RVT U396 ( .A1(\RegsH[1][1] ), .A2(n365), .A3(\RegsH[3][1] ), .A4(
        n381), .A5(n335), .Y(n336) );
  OR2X1_RVT U397 ( .A1(n337), .A2(n336), .Y(DOBH[1]) );
  AO22X1_RVT U398 ( .A1(\RegsH[6][2] ), .A2(n376), .A3(\RegsH[4][2] ), .A4(
        n377), .Y(n338) );
  AO221X1_RVT U399 ( .A1(\RegsH[0][2] ), .A2(n360), .A3(\RegsH[2][2] ), .A4(
        n373), .A5(n338), .Y(n341) );
  AO22X1_RVT U400 ( .A1(\RegsH[7][2] ), .A2(n362), .A3(\RegsH[5][2] ), .A4(
        n384), .Y(n339) );
  AO221X1_RVT U401 ( .A1(\RegsH[1][2] ), .A2(n365), .A3(\RegsH[3][2] ), .A4(
        n364), .A5(n339), .Y(n340) );
  OR2X1_RVT U402 ( .A1(n341), .A2(n340), .Y(DOBH[2]) );
  AO22X1_RVT U403 ( .A1(\RegsH[6][3] ), .A2(n375), .A3(\RegsH[4][3] ), .A4(
        n377), .Y(n342) );
  AO221X1_RVT U404 ( .A1(\RegsH[0][3] ), .A2(n360), .A3(\RegsH[2][3] ), .A4(
        n359), .A5(n342), .Y(n345) );
  AO22X1_RVT U405 ( .A1(\RegsH[7][3] ), .A2(n383), .A3(\RegsH[5][3] ), .A4(
        n361), .Y(n343) );
  AO221X1_RVT U406 ( .A1(\RegsH[1][3] ), .A2(n365), .A3(\RegsH[3][3] ), .A4(
        n381), .A5(n343), .Y(n344) );
  OR2X1_RVT U407 ( .A1(n345), .A2(n344), .Y(DOBH[3]) );
  AO22X1_RVT U408 ( .A1(\RegsH[6][4] ), .A2(n375), .A3(\RegsH[4][4] ), .A4(
        n377), .Y(n346) );
  AO221X1_RVT U409 ( .A1(\RegsH[0][4] ), .A2(n360), .A3(\RegsH[2][4] ), .A4(
        n373), .A5(n346), .Y(n349) );
  AO22X1_RVT U410 ( .A1(\RegsH[7][4] ), .A2(n362), .A3(\RegsH[5][4] ), .A4(
        n384), .Y(n347) );
  AO221X1_RVT U411 ( .A1(\RegsH[1][4] ), .A2(n365), .A3(\RegsH[3][4] ), .A4(
        n364), .A5(n347), .Y(n348) );
  OR2X1_RVT U412 ( .A1(n349), .A2(n348), .Y(DOBH[4]) );
  AO22X1_RVT U413 ( .A1(\RegsH[6][5] ), .A2(n375), .A3(\RegsH[4][5] ), .A4(
        n378), .Y(n350) );
  AO221X1_RVT U414 ( .A1(\RegsH[0][5] ), .A2(n360), .A3(\RegsH[2][5] ), .A4(
        n359), .A5(n350), .Y(n353) );
  AO22X1_RVT U415 ( .A1(\RegsH[7][5] ), .A2(n383), .A3(\RegsH[5][5] ), .A4(
        n361), .Y(n351) );
  AO221X1_RVT U416 ( .A1(\RegsH[1][5] ), .A2(n365), .A3(\RegsH[3][5] ), .A4(
        n381), .A5(n351), .Y(n352) );
  OR2X1_RVT U417 ( .A1(n353), .A2(n352), .Y(DOBH[5]) );
  AO22X1_RVT U418 ( .A1(\RegsH[6][6] ), .A2(n375), .A3(\RegsH[4][6] ), .A4(
        n377), .Y(n354) );
  AO221X1_RVT U419 ( .A1(\RegsH[0][6] ), .A2(n360), .A3(\RegsH[2][6] ), .A4(
        n373), .A5(n354), .Y(n357) );
  AO22X1_RVT U420 ( .A1(\RegsH[7][6] ), .A2(n362), .A3(\RegsH[5][6] ), .A4(
        n384), .Y(n355) );
  AO221X1_RVT U421 ( .A1(\RegsH[1][6] ), .A2(n365), .A3(\RegsH[3][6] ), .A4(
        n364), .A5(n355), .Y(n356) );
  OR2X1_RVT U422 ( .A1(n357), .A2(n356), .Y(DOBH[6]) );
  AO22X1_RVT U423 ( .A1(\RegsH[6][7] ), .A2(n375), .A3(\RegsH[4][7] ), .A4(
        n378), .Y(n358) );
  AO221X1_RVT U424 ( .A1(\RegsH[0][7] ), .A2(n360), .A3(\RegsH[2][7] ), .A4(
        n359), .A5(n358), .Y(n367) );
  AO22X1_RVT U425 ( .A1(\RegsH[7][7] ), .A2(n383), .A3(\RegsH[5][7] ), .A4(
        n361), .Y(n363) );
  AO221X1_RVT U426 ( .A1(\RegsH[1][7] ), .A2(n365), .A3(\RegsH[3][7] ), .A4(
        n381), .A5(n363), .Y(n366) );
  OR2X1_RVT U427 ( .A1(n367), .A2(n366), .Y(DOBH[7]) );
  INVX0_RVT U428 ( .A(N19), .Y(n370) );
  INVX1_RVT U429 ( .A(n365), .Y(n380) );
  INVX1_RVT U430 ( .A(n360), .Y(n372) );
  INVX0_RVT U431 ( .A(n372), .Y(n371) );
  INVX0_RVT U432 ( .A(n380), .Y(n379) );
  INVX0_RVT U433 ( .A(n362), .Y(n386) );
  AND2X1_RVT U434 ( .A1(n445), .A2(n444), .Y(n388) );
  AND2X1_RVT U435 ( .A1(N21), .A2(n444), .Y(n389) );
  AND2X1_RVT U436 ( .A1(N22), .A2(N21), .Y(n390) );
  AND2X1_RVT U437 ( .A1(N22), .A2(n445), .Y(n391) );
  AO22X1_RVT U438 ( .A1(\RegsL[6][0] ), .A2(n451), .A3(\RegsL[4][0] ), .A4(
        n453), .Y(n387) );
  AO22X1_RVT U439 ( .A1(\RegsL[7][0] ), .A2(n459), .A3(\RegsL[5][0] ), .A4(
        n461), .Y(n392) );
  AO22X1_RVT U440 ( .A1(\RegsL[6][1] ), .A2(n451), .A3(\RegsL[4][1] ), .A4(
        n453), .Y(n393) );
  AO22X1_RVT U441 ( .A1(\RegsL[7][1] ), .A2(n459), .A3(\RegsL[5][1] ), .A4(
        n461), .Y(n394) );
  AO22X1_RVT U442 ( .A1(\RegsL[6][2] ), .A2(n451), .A3(\RegsL[4][2] ), .A4(
        n453), .Y(n395) );
  AO22X1_RVT U443 ( .A1(\RegsL[7][2] ), .A2(n459), .A3(\RegsL[5][2] ), .A4(
        n461), .Y(n396) );
  AO22X1_RVT U444 ( .A1(\RegsL[6][3] ), .A2(n451), .A3(\RegsL[4][3] ), .A4(
        n453), .Y(n397) );
  AO22X1_RVT U445 ( .A1(\RegsL[7][3] ), .A2(n459), .A3(\RegsL[5][3] ), .A4(
        n461), .Y(n398) );
  AO22X1_RVT U446 ( .A1(\RegsL[6][4] ), .A2(n451), .A3(\RegsL[4][4] ), .A4(
        n453), .Y(n399) );
  AO22X1_RVT U447 ( .A1(\RegsL[7][4] ), .A2(n459), .A3(\RegsL[5][4] ), .A4(
        n461), .Y(n400) );
  AO22X1_RVT U448 ( .A1(\RegsL[6][5] ), .A2(n451), .A3(\RegsL[4][5] ), .A4(
        n453), .Y(n401) );
  AO22X1_RVT U449 ( .A1(\RegsL[7][5] ), .A2(n459), .A3(\RegsL[5][5] ), .A4(
        n461), .Y(n402) );
  AO22X1_RVT U450 ( .A1(\RegsL[6][6] ), .A2(n450), .A3(\RegsL[4][6] ), .A4(
        n452), .Y(n403) );
  AO221X1_RVT U451 ( .A1(\RegsL[0][6] ), .A2(n446), .A3(\RegsL[2][6] ), .A4(
        n448), .A5(n403), .Y(n406) );
  AO22X1_RVT U452 ( .A1(\RegsL[7][6] ), .A2(n458), .A3(\RegsL[5][6] ), .A4(
        n460), .Y(n404) );
  AO221X1_RVT U453 ( .A1(\RegsL[1][6] ), .A2(n454), .A3(\RegsL[3][6] ), .A4(
        n456), .A5(n404), .Y(n405) );
  OR2X1_RVT U454 ( .A1(n406), .A2(n405), .Y(DOCL[6]) );
  AO22X1_RVT U455 ( .A1(\RegsL[6][7] ), .A2(n450), .A3(\RegsL[4][7] ), .A4(
        n452), .Y(n407) );
  AO221X1_RVT U456 ( .A1(\RegsL[0][7] ), .A2(n446), .A3(\RegsL[2][7] ), .A4(
        n448), .A5(n407), .Y(n410) );
  AO22X1_RVT U457 ( .A1(\RegsL[7][7] ), .A2(n458), .A3(\RegsL[5][7] ), .A4(
        n460), .Y(n408) );
  AO221X1_RVT U458 ( .A1(\RegsL[1][7] ), .A2(n454), .A3(\RegsL[3][7] ), .A4(
        n456), .A5(n408), .Y(n409) );
  OR2X1_RVT U459 ( .A1(n410), .A2(n409), .Y(DOCL[7]) );
  AO22X1_RVT U460 ( .A1(\RegsH[6][0] ), .A2(n450), .A3(\RegsH[4][0] ), .A4(
        n452), .Y(n411) );
  AO221X1_RVT U461 ( .A1(\RegsH[0][0] ), .A2(n446), .A3(\RegsH[2][0] ), .A4(
        n448), .A5(n411), .Y(n414) );
  AO22X1_RVT U462 ( .A1(\RegsH[7][0] ), .A2(n458), .A3(\RegsH[5][0] ), .A4(
        n460), .Y(n412) );
  AO221X1_RVT U463 ( .A1(\RegsH[1][0] ), .A2(n454), .A3(\RegsH[3][0] ), .A4(
        n456), .A5(n412), .Y(n413) );
  OR2X1_RVT U464 ( .A1(n414), .A2(n413), .Y(DOCH[0]) );
  AO22X1_RVT U465 ( .A1(\RegsH[6][1] ), .A2(n450), .A3(\RegsH[4][1] ), .A4(
        n452), .Y(n415) );
  AO221X1_RVT U466 ( .A1(\RegsH[0][1] ), .A2(n446), .A3(\RegsH[2][1] ), .A4(
        n448), .A5(n415), .Y(n418) );
  AO22X1_RVT U467 ( .A1(\RegsH[7][1] ), .A2(n458), .A3(\RegsH[5][1] ), .A4(
        n460), .Y(n416) );
  AO221X1_RVT U468 ( .A1(\RegsH[1][1] ), .A2(n454), .A3(\RegsH[3][1] ), .A4(
        n456), .A5(n416), .Y(n417) );
  OR2X1_RVT U469 ( .A1(n418), .A2(n417), .Y(DOCH[1]) );
  AO22X1_RVT U470 ( .A1(\RegsH[6][2] ), .A2(n450), .A3(\RegsH[4][2] ), .A4(
        n452), .Y(n419) );
  AO221X1_RVT U471 ( .A1(\RegsH[0][2] ), .A2(n446), .A3(\RegsH[2][2] ), .A4(
        n448), .A5(n419), .Y(n422) );
  AO22X1_RVT U472 ( .A1(\RegsH[7][2] ), .A2(n458), .A3(\RegsH[5][2] ), .A4(
        n460), .Y(n420) );
  AO221X1_RVT U473 ( .A1(\RegsH[1][2] ), .A2(n454), .A3(\RegsH[3][2] ), .A4(
        n456), .A5(n420), .Y(n421) );
  OR2X1_RVT U474 ( .A1(n422), .A2(n421), .Y(DOCH[2]) );
  AO22X1_RVT U475 ( .A1(\RegsH[6][3] ), .A2(n450), .A3(\RegsH[4][3] ), .A4(
        n452), .Y(n423) );
  AO221X1_RVT U476 ( .A1(\RegsH[0][3] ), .A2(n446), .A3(\RegsH[2][3] ), .A4(
        n448), .A5(n423), .Y(n426) );
  AO22X1_RVT U477 ( .A1(\RegsH[7][3] ), .A2(n458), .A3(\RegsH[5][3] ), .A4(
        n460), .Y(n424) );
  AO221X1_RVT U478 ( .A1(\RegsH[1][3] ), .A2(n454), .A3(\RegsH[3][3] ), .A4(
        n456), .A5(n424), .Y(n425) );
  OR2X1_RVT U479 ( .A1(n426), .A2(n425), .Y(DOCH[3]) );
  AO22X1_RVT U480 ( .A1(\RegsH[6][4] ), .A2(n450), .A3(\RegsH[4][4] ), .A4(
        n453), .Y(n427) );
  AO221X1_RVT U481 ( .A1(\RegsH[0][4] ), .A2(n446), .A3(\RegsH[2][4] ), .A4(
        n449), .A5(n427), .Y(n430) );
  AO22X1_RVT U482 ( .A1(\RegsH[7][4] ), .A2(n458), .A3(\RegsH[5][4] ), .A4(
        n461), .Y(n428) );
  AO221X1_RVT U483 ( .A1(\RegsH[1][4] ), .A2(n454), .A3(\RegsH[3][4] ), .A4(
        n457), .A5(n428), .Y(n429) );
  OR2X1_RVT U484 ( .A1(n430), .A2(n429), .Y(DOCH[4]) );
  AO22X1_RVT U485 ( .A1(\RegsH[6][5] ), .A2(n450), .A3(\RegsH[4][5] ), .A4(
        n452), .Y(n431) );
  AO221X1_RVT U486 ( .A1(\RegsH[0][5] ), .A2(n447), .A3(\RegsH[2][5] ), .A4(
        n448), .A5(n431), .Y(n434) );
  AO22X1_RVT U487 ( .A1(\RegsH[7][5] ), .A2(n458), .A3(\RegsH[5][5] ), .A4(
        n460), .Y(n432) );
  AO221X1_RVT U488 ( .A1(\RegsH[1][5] ), .A2(n455), .A3(\RegsH[3][5] ), .A4(
        n456), .A5(n432), .Y(n433) );
  OR2X1_RVT U489 ( .A1(n434), .A2(n433), .Y(DOCH[5]) );
  AO22X1_RVT U490 ( .A1(\RegsH[6][6] ), .A2(n450), .A3(\RegsH[4][6] ), .A4(
        n452), .Y(n435) );
  AO221X1_RVT U491 ( .A1(\RegsH[0][6] ), .A2(n446), .A3(\RegsH[2][6] ), .A4(
        n448), .A5(n435), .Y(n438) );
  AO22X1_RVT U492 ( .A1(\RegsH[7][6] ), .A2(n458), .A3(\RegsH[5][6] ), .A4(
        n460), .Y(n436) );
  AO221X1_RVT U493 ( .A1(\RegsH[1][6] ), .A2(n454), .A3(\RegsH[3][6] ), .A4(
        n456), .A5(n436), .Y(n437) );
  OR2X1_RVT U494 ( .A1(n438), .A2(n437), .Y(DOCH[6]) );
  AO22X1_RVT U495 ( .A1(\RegsH[6][7] ), .A2(n451), .A3(\RegsH[4][7] ), .A4(
        n452), .Y(n439) );
  AO221X1_RVT U496 ( .A1(\RegsH[0][7] ), .A2(n446), .A3(\RegsH[2][7] ), .A4(
        n448), .A5(n439), .Y(n442) );
  AO22X1_RVT U497 ( .A1(\RegsH[7][7] ), .A2(n459), .A3(\RegsH[5][7] ), .A4(
        n460), .Y(n440) );
  AO221X1_RVT U498 ( .A1(\RegsH[1][7] ), .A2(n454), .A3(\RegsH[3][7] ), .A4(
        n456), .A5(n440), .Y(n441) );
  OR2X1_RVT U499 ( .A1(n442), .A2(n441), .Y(DOCH[7]) );
  NBUFFX2_RVT U500 ( .A(DIH[0]), .Y(n462) );
  NBUFFX2_RVT U501 ( .A(DIH[1]), .Y(n463) );
  AO22X1_RVT U502 ( .A1(DIH[1]), .A2(n528), .A3(\RegsH[7][1] ), .A4(n511), .Y(
        n47) );
  AO22X1_RVT U503 ( .A1(n527), .A2(n463), .A3(\RegsH[6][1] ), .A4(n508), .Y(
        n55) );
  AO22X1_RVT U504 ( .A1(n524), .A2(DIH[1]), .A3(\RegsH[5][1] ), .A4(n507), .Y(
        n63) );
  AO22X1_RVT U505 ( .A1(n523), .A2(n463), .A3(\RegsH[4][1] ), .A4(n505), .Y(
        n71) );
  AO22X1_RVT U506 ( .A1(n515), .A2(DIH[1]), .A3(\RegsH[3][1] ), .A4(n504), .Y(
        n79) );
  AO22X1_RVT U507 ( .A1(n514), .A2(n463), .A3(\RegsH[2][1] ), .A4(n502), .Y(
        n87) );
  AO22X1_RVT U508 ( .A1(n519), .A2(n463), .A3(\RegsH[1][1] ), .A4(n500), .Y(
        n95) );
  AO22X1_RVT U509 ( .A1(n518), .A2(DIH[1]), .A3(\RegsH[0][1] ), .A4(n498), .Y(
        n103) );
  INVX0_RVT U510 ( .A(DIH[2]), .Y(n464) );
  INVX0_RVT U511 ( .A(n464), .Y(n465) );
  INVX0_RVT U512 ( .A(DIH[3]), .Y(n466) );
  INVX0_RVT U513 ( .A(n466), .Y(n467) );
  INVX1_RVT U514 ( .A(n491), .Y(n522) );
  INVX1_RVT U515 ( .A(n487), .Y(n513) );
  INVX1_RVT U516 ( .A(n483), .Y(n517) );
  INVX1_RVT U517 ( .A(n493), .Y(n525) );
  INVX1_RVT U518 ( .A(n489), .Y(n521) );
  INVX1_RVT U519 ( .A(n485), .Y(n512) );
  INVX1_RVT U520 ( .A(n481), .Y(n516) );
  INVX1_RVT U521 ( .A(n506), .Y(n524) );
  INVX1_RVT U522 ( .A(n503), .Y(n515) );
  INVX1_RVT U523 ( .A(n499), .Y(n519) );
  INVX1_RVT U524 ( .A(n508), .Y(n527) );
  INVX1_RVT U525 ( .A(n501), .Y(n514) );
  INVX1_RVT U526 ( .A(n497), .Y(n518) );
  INVX0_RVT U527 ( .A(DIH[4]), .Y(n468) );
  INVX0_RVT U528 ( .A(n468), .Y(n469) );
  INVX0_RVT U529 ( .A(n468), .Y(n470) );
  INVX1_RVT U530 ( .A(n495), .Y(n526) );
  INVX1_RVT U531 ( .A(n510), .Y(n528) );
  NBUFFX2_RVT U532 ( .A(DIH[5]), .Y(n471) );
  NBUFFX2_RVT U533 ( .A(DIH[5]), .Y(n472) );
  NBUFFX2_RVT U534 ( .A(DIH[6]), .Y(n473) );
  NBUFFX2_RVT U535 ( .A(DIH[6]), .Y(n474) );
  NBUFFX2_RVT U536 ( .A(DIH[6]), .Y(n475) );
  INVX0_RVT U537 ( .A(N15), .Y(n530) );
  AO22X1_RVT U538 ( .A1(n474), .A2(n528), .A3(\RegsH[7][6] ), .A4(n511), .Y(
        n52) );
  AO22X1_RVT U539 ( .A1(n527), .A2(n475), .A3(\RegsH[6][6] ), .A4(n509), .Y(
        n60) );
  AO22X1_RVT U540 ( .A1(n519), .A2(n474), .A3(\RegsH[1][6] ), .A4(n500), .Y(
        n100) );
  AO22X1_RVT U541 ( .A1(n518), .A2(n475), .A3(\RegsH[0][6] ), .A4(n498), .Y(
        n108) );
  AO22X1_RVT U542 ( .A1(n515), .A2(n474), .A3(\RegsH[3][6] ), .A4(n504), .Y(
        n84) );
  AO22X1_RVT U543 ( .A1(n514), .A2(n475), .A3(\RegsH[2][6] ), .A4(n502), .Y(
        n92) );
  AO22X1_RVT U544 ( .A1(n524), .A2(n473), .A3(\RegsH[5][6] ), .A4(n507), .Y(
        n68) );
  NAND2X0_RVT U545 ( .A1(n523), .A2(n478), .Y(n476) );
  NAND2X0_RVT U546 ( .A1(\RegsH[4][7] ), .A2(n505), .Y(n477) );
  NAND2X0_RVT U547 ( .A1(n476), .A2(n477), .Y(n77) );
  NBUFFX2_RVT U548 ( .A(DIH[7]), .Y(n478) );
  NBUFFX2_RVT U549 ( .A(DIH[7]), .Y(n479) );
  NBUFFX2_RVT U550 ( .A(DIH[7]), .Y(n480) );
  INVX1_RVT U551 ( .A(n505), .Y(n523) );
  AO22X1_RVT U552 ( .A1(n523), .A2(n473), .A3(\RegsH[4][6] ), .A4(n505), .Y(
        n76) );
  AO22X1_RVT U553 ( .A1(n479), .A2(n528), .A3(\RegsH[7][7] ), .A4(n511), .Y(
        n53) );
  AO22X1_RVT U554 ( .A1(n527), .A2(n480), .A3(\RegsH[6][7] ), .A4(n509), .Y(
        n61) );
  AO22X1_RVT U555 ( .A1(n524), .A2(n479), .A3(\RegsH[5][7] ), .A4(n506), .Y(
        n69) );
  AO22X1_RVT U556 ( .A1(n515), .A2(n480), .A3(\RegsH[3][7] ), .A4(n503), .Y(
        n85) );
  AO22X1_RVT U557 ( .A1(n514), .A2(n479), .A3(\RegsH[2][7] ), .A4(n501), .Y(
        n93) );
  AO22X1_RVT U558 ( .A1(n519), .A2(n480), .A3(\RegsH[1][7] ), .A4(n499), .Y(
        n101) );
  AO22X1_RVT U559 ( .A1(n518), .A2(n478), .A3(\RegsH[0][7] ), .A4(n497), .Y(
        n109) );
  AO22X1_RVT U560 ( .A1(DIL[0]), .A2(n526), .A3(\RegsL[7][0] ), .A4(n496), .Y(
        n110) );
  AO22X1_RVT U561 ( .A1(n525), .A2(DIL[0]), .A3(\RegsL[6][0] ), .A4(n494), .Y(
        n118) );
  AO22X1_RVT U562 ( .A1(n522), .A2(DIL[0]), .A3(\RegsL[5][0] ), .A4(n492), .Y(
        n126) );
  AO22X1_RVT U563 ( .A1(n521), .A2(DIL[0]), .A3(\RegsL[4][0] ), .A4(n490), .Y(
        n134) );
  AO22X1_RVT U564 ( .A1(n513), .A2(DIL[0]), .A3(\RegsL[3][0] ), .A4(n488), .Y(
        n142) );
  AO22X1_RVT U565 ( .A1(n512), .A2(DIL[0]), .A3(\RegsL[2][0] ), .A4(n486), .Y(
        n150) );
  AO22X1_RVT U566 ( .A1(n517), .A2(DIL[0]), .A3(\RegsL[1][0] ), .A4(n484), .Y(
        n158) );
  AO22X1_RVT U567 ( .A1(n516), .A2(DIL[0]), .A3(\RegsL[0][0] ), .A4(n482), .Y(
        n166) );
  AO22X1_RVT U568 ( .A1(DIL[1]), .A2(n526), .A3(\RegsL[7][1] ), .A4(n495), .Y(
        n111) );
  AO22X1_RVT U569 ( .A1(n525), .A2(DIL[1]), .A3(\RegsL[6][1] ), .A4(n493), .Y(
        n119) );
  AO22X1_RVT U570 ( .A1(n522), .A2(DIL[1]), .A3(\RegsL[5][1] ), .A4(n491), .Y(
        n127) );
  AO22X1_RVT U571 ( .A1(n521), .A2(DIL[1]), .A3(\RegsL[4][1] ), .A4(n489), .Y(
        n135) );
  AO22X1_RVT U572 ( .A1(n513), .A2(DIL[1]), .A3(\RegsL[3][1] ), .A4(n487), .Y(
        n143) );
  AO22X1_RVT U573 ( .A1(n512), .A2(DIL[1]), .A3(\RegsL[2][1] ), .A4(n485), .Y(
        n151) );
  AO22X1_RVT U574 ( .A1(n517), .A2(DIL[1]), .A3(\RegsL[1][1] ), .A4(n483), .Y(
        n159) );
  AO22X1_RVT U575 ( .A1(n516), .A2(DIL[1]), .A3(\RegsL[0][1] ), .A4(n481), .Y(
        n167) );
  AND2X1_RVT U576 ( .A1(WEL), .A2(CEN), .Y(n44) );
  AND2X1_RVT U577 ( .A1(WEH), .A2(CEN), .Y(n33) );
  AND2X1_RVT U578 ( .A1(n44), .A2(N14), .Y(n36) );
  AND2X1_RVT U579 ( .A1(n293), .A2(n33), .Y(n22) );
endmodule


module tv80_core_DW01_inc_0_DW01_inc_3 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1_RVT U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_RVT U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1_RVT U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1_RVT U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[15]), .A2(A[15]), .Y(SUM[15]) );
endmodule


module tv80_core_DW01_inc_1_DW01_inc_4 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[6]), .A2(A[6]), .Y(SUM[6]) );
endmodule


module tv80_core ( m1_n, iorq, no_read, write, rfsh_n, halt_n, busak_n, A, do, 
        mc, ts, intcycle_n, IntE, stop, reset_n, clk, cen, wait_n, int_n, 
        nmi_n, busrq_n, dinst, di );
  output [15:0] A;
  output [7:0] do;
  output [2:0] mc;
  output [2:0] ts;
  input [7:0] dinst;
  input [7:0] di;
  input reset_n, clk, cen, wait_n, int_n, nmi_n, busrq_n;
  output m1_n, iorq, no_read, write, rfsh_n, halt_n, busak_n, intcycle_n, IntE,
         stop;
  wire   n1056, n1057, NMICycle, IntCycle, Inc_PC, Inc_WZ, Read_To_Acc,
         Read_To_Reg, Save_ALU, PreserveC, Arith16, Jump, JumpE, JumpXY, Call,
         RstP, LDZ, LDW, LDSPHL, ExchangeDH, ExchangeRp, ExchangeAF,
         ExchangeRS, I_CPL, I_CCF, I_SCF, I_RETN, I_BT, I_BC, I_BTR, I_RLD,
         I_RRD, I_INRC, SetDI, SetEI, Halt, Arith16_r, Z16_r, N153, N154, N155,
         N156, N157, N158, N159, N247, N248, N249, N250, N251, N252, N253,
         N254, N255, N256, N257, N258, N259, N260, N261, N262, N1102, N1107,
         N1121, RegWEH, RegWEL, N1207, N1208, N1209, N1210, N1211, N1212,
         N1213, N1214, N1215, N1216, N1217, N1218, N1219, N1220, N1221, N1222,
         n14, n31, n33, n34, n36, n37, n38, n39, n42, n43, n47, n48, n49, n50,
         n51, n54, n55, n56, n58, n71, n72, n74, n77, n78, n83, n86, n87, n89,
         n90, n91, n92, n96, n97, n98, n99, n100, n104, n105, n106, n108, n112,
         n113, n114, n116, n120, n121, n122, n124, n128, n129, n130, n132,
         n136, n137, n138, n140, n143, n144, n145, n147, n148, n151, n152,
         n153, n154, n157, n159, n160, n161, n162, n163, n164, n167, n168,
         n169, n170, n171, n172, n174, n175, n176, n177, n181, n182, n183,
         n187, n188, n189, n190, n192, n193, n194, n195, n196, n198, n199,
         n200, n201, n204, n207, n212, n213, n214, n217, n218, n220, n221,
         n224, n226, n228, n230, n232, n233, n237, n240, n243, n246, n249,
         n252, n255, n256, n257, n259, n260, n265, n270, n272, n280, n281,
         n282, n283, n284, n286, n287, n288, n290, n293, n294, n300, n301,
         n302, n304, n305, n306, n307, n309, n310, n330, n331, n332, n333,
         n336, n340, n341, n343, n344, n346, n347, n348, n349, n350, n351,
         n353, n354, n355, n356, n357, n359, n361, n362, n364, n365, n366,
         n367, n369, n370, n371, n372, n373, n375, n377, n378, n379, n380,
         n381, n382, n383, n385, n386, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n401, n403, n404, n406, n407, n408, n409, n410,
         n411, n412, n416, n417, n418, n419, n423, n424, n426, n427, n428,
         n429, n431, n432, n433, n434, n435, n436, n439, n440, n442, n443,
         n444, n446, n454, n456, n458, n459, n461, n462, n464, n466, n468,
         n469, n470, n471, n473, n474, n475, n476, n478, n480, n483, n484,
         n488, n489, n493, n494, n498, n499, n503, n504, n507, n508, n512,
         n513, n516, n517, n518, n520, n522, n523, n524, n525, n527, n530,
         n531, n534, n535, n538, n539, n542, n543, n546, n547, n550, n551,
         n554, n555, n557, n558, n559, n560, n562, n563, n564, n567, n568,
         n569, n570, n572, n573, n575, n577, n579, n581, n582, n583, n584,
         n585, n586, n587, n588, n590, n591, n593, n594, n595, n602, n603,
         n605, n607, n608, n617, n618, n620, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n656, n657, n660, n663, n665,
         n667, n668, n669, n671, n673, n676, n677, n678, n679, n680, n681,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n711, n712, n715, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n731, n736, n737, n738,
         n739, n742, n745, n746, n747, n748, n749, n756, n757, n758, n759,
         n761, n763, n765, n768, n770, n772, n775, n776, n779, n780, n782,
         n783, n784, n788, n789, n790, n791, n792, n794, n795, n796, n797,
         n798, n800, n801, n802, n803, n805, n807, n808, n809, n812, n813,
         n817, n818, n819, n822, n824, n827, n828, n829, n831, n832, n833,
         n834, n835, n836, n837, n838, n841, n842, n843, n844, n845, n846,
         n847, n848, n849, n851, n852, n853, n854, n855, n856, n858, n860,
         n865, n869, n870, n871, n872, n873, n874, n875, n876, n877, n879,
         n880, n881, n882, n883, n884, n885, n886, n887, n888, n889, n890,
         n891, n893, n894, n896, n897, n898, n899, n900, n901, n902, n905,
         n906, n907, n908, n911, n914, n915, n916, n917, n918, n919, n920,
         n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n932,
         n933, n934, n935, n937, n938, n939, n941, n942, n943, n944, n945,
         n946, n947, n948, n951, n953, n954, n955, n957, n958, n960, n961,
         n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n976,
         n978, n980, n983, n990, n993, n994, n995, n996, n997, n998, n999,
         n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1010,
         n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020,
         n1021, n1022, n1023, n1024, n1026, n1027, n1029, n1030, n1032, n1033,
         n1035, n1036, n1038, n1039, n1041, n1042, n1044, n1045, n1047, n1048,
         n1050, n1051, n1068, n1069, n1071, n1072, n1073, n1074, n1075, n1076,
         n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096,
         n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106,
         n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116,
         n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126,
         n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136,
         n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146,
         n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156,
         n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166,
         n1167, n1168, n1169, n1170, n1171, n1173, n1175, n1176, n1177, n1178,
         n1179, n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190,
         n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200,
         n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210,
         n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220,
         n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230,
         n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240,
         n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250,
         n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260,
         n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270,
         n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280,
         n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290,
         n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300,
         n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310,
         n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320,
         n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330,
         n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340,
         n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350,
         n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360,
         n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370,
         \add_1284/carry[15] , \add_1284/carry[14] , \add_1284/carry[13] ,
         \add_1284/carry[12] , \add_1284/carry[11] , \add_1284/carry[10] ,
         \add_1284/carry[9] , \add_1284/carry[8] , \add_1284/carry[7] ,
         \add_1284/carry[6] , \add_1284/carry[5] , \add_1284/carry[4] ,
         \add_1284/carry[3] , \add_1284/carry[2] , \add_1284/carry[1] ,
         \add_1283/carry[15] , \add_1283/carry[14] , \add_1283/carry[13] ,
         \add_1283/carry[12] , \add_1283/carry[11] , \add_1283/carry[10] ,
         \add_1283/carry[9] , \add_1283/carry[8] , \add_1283/carry[7] ,
         \add_1283/carry[6] , \add_1283/carry[5] , \add_1283/carry[4] ,
         \add_1283/carry[3] , \add_1283/carry[2] , \add_1283/carry[1] ,
         \add_1282/carry[2] , \add_1282/carry[3] , \add_1282/carry[4] ,
         \add_1282/carry[5] , \add_1282/carry[6] , \add_1282/carry[7] ,
         \add_1282/carry[8] , \add_1282/carry[9] , \add_1282/carry[10] ,
         \add_1282/carry[11] , \add_1282/carry[12] , \add_1282/carry[13] ,
         \add_1282/carry[14] , \add_1282/carry[15] , n1, n2, n3, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n32, n35, n40, n41, n44, n45,
         n46, n52, n53, n57, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n73, n75, n76, n79, n80, n81, n82, n84, n85, n88, n93, n94,
         n95, n101, n102, n103, n107, n109, n110, n111, n115, n117, n118, n119,
         n123, n125, n126, n127, n131, n133, n134, n135, n139, n141, n142,
         n146, n149, n150, n155, n156, n158, n165, n166, n173, n178, n179,
         n180, n184, n185, n186, n191, n197, n202, n203, n205, n206, n208,
         n209, n210, n211, n215, n216, n219, n222, n223, n225, n227, n229,
         n231, n234, n235, n236, n238, n239, n241, n242, n244, n245, n247,
         n248, n250, n251, n253, n254, n258, n261, n262, n263, n264, n266,
         n267, n268, n269, n271, n273, n274, n275, n276, n277, n278, n279,
         n285, n289, n291, n292, n295, n296, n297, n298, n299, n303, n308,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n334, n335, n337, n338,
         n339, n342, n345, n352, n358, n360, n363, n368, n374, n376, n384,
         n387, n388, n398, n399, n400, n402, n405, n413, n414, n415, n420,
         n421, n422, n425, n430, n437, n438, n441, n445, n447, n448, n449,
         n450, n451, n452, n453, n455, n457, n460, n463, n465, n467, n472,
         n477, n479, n481, n482, n485, n486, n487, n490, n491, n492, n495,
         n496, n497, n500, n501, n502, n505, n506, n509, n510, n511, n514,
         n515, n519, n521, n526, n528, n529, n532, n533, n536, n537, n540,
         n541, n544, n545, n548, n549, n552, n553, n556, n561, n565, n566,
         n571, n574, n576, n578, n580, n589, n592, n596, n597, n598, n599,
         n600, n601, n604, n606, n609, n610, n611, n612, n613, n614, n615,
         n616, n619, n621, n655, n658, n659, n661, n662, n664, n666, n670,
         n672, n674, n675, n682, n710, n713, n714, n716, n727, n728, n729,
         n730, n732, n733, n734, n735, n740, n741, n743, n744, n750, n751,
         n752, n753, n754, n755, n760, n762, n764, n766, n769, n771, n773,
         n774, n777, n778, n781, n785, n786, n787, n793, n799, n804, n806,
         n810, n811, n814, n815, n816, n820, n821, n823, n825, n826, n830,
         n839, n840, n850, n857, n859, n861, n862, n863, n864, n866, n867,
         n868, n878, n892, n895, n903, n904, n909, n910, n912, n913, n931,
         n936, n940, n949, n950, n952, n956, n959, n972, n973, n974, n975,
         n977, n979, n981, n982, n984, n985, n986, n987, n988, n989, n991,
         n992, n1009, n1025, n1028, n1031, n1034, n1037, n1040, n1043, n1046,
         n1049, n1052, n1053, n1054, n1055;
  wire   [7:0] IR;
  wire   [1:0] ISet;
  wire   [7:0] F;
  wire   [2:0] mcycles_d;
  wire   [2:0] tstates;
  wire   [1:0] Prefix;
  wire   [3:0] IncDec_16;
  wire   [3:0] Set_BusB_To;
  wire   [3:0] Set_BusA_To;
  wire   [3:0] ALU_Op;
  wire   [2:0] Set_Addr_To;
  wire   [2:0] Special_LD;
  wire   [1:0] IMode;
  wire   [3:0] ALU_Op_r;
  wire   [7:0] BusA;
  wire   [7:0] BusB;
  wire   [7:0] ALU_Q;
  wire   [7:0] F_Out;
  wire   [7:0] R;
  wire   [15:0] PC16;
  wire   [15:0] TmpAddr;
  wire   [15:0] RegBusC;
  wire   [15:0] PC;
  wire   [7:0] ACC;
  wire   [15:0] SP16;
  wire   [15:0] SP;
  wire   [2:0] RegAddrC;
  wire   [15:0] ID16;
  wire   [15:0] RegBusA;
  wire   [2:0] RegAddrA;
  wire   [2:0] RegAddrB;
  wire   [15:0] RegBusB;
  wire   [7:0] RegDIH;
  wire   [7:0] RegDIL;
  wire   [15:0] PC16_B;
  wire   [15:0] SP16_A;
  wire   [15:0] SP16_B;

  NOR4X1_RVT U155 ( .A1(n610), .A2(n544), .A3(Inc_WZ), .A4(Set_Addr_To[0]), 
        .Y(n143) );
  NOR4X1_RVT U252 ( .A1(n293), .A2(n294), .A3(mc[2]), .A4(intcycle_n), .Y(n221) );
  NAND4X1_RVT U541 ( .A1(IncDec_16[2]), .A2(IncDec_16[1]), .A3(n563), .A4(
        IncDec_16[0]), .Y(n562) );
  NOR4X1_RVT U898 ( .A1(n832), .A2(n834), .A3(n528), .A4(ts[1]), .Y(n833) );
  tv80_mcode_Mode1_Flag_C0_Flag_N1_Flag_P2_Flag_X3_Flag_H4_Flag_Y5_Flag_Z6_Flag_S7 i_mcode ( 
        .MCycles(mcycles_d), .TStates(tstates), .Prefix(Prefix), .Inc_PC(
        Inc_PC), .Inc_WZ(Inc_WZ), .IncDec_16(IncDec_16), .Read_To_Reg(
        Read_To_Reg), .Read_To_Acc(Read_To_Acc), .Set_BusA_To({Set_BusA_To[3], 
        N1102, Set_BusA_To[1:0]}), .Set_BusB_To({Set_BusB_To[3], N1107, 
        Set_BusB_To[1:0]}), .ALU_Op(ALU_Op), .Save_ALU(Save_ALU), .PreserveC(
        PreserveC), .Arith16(Arith16), .Set_Addr_To(Set_Addr_To), .IORQ(iorq), 
        .Jump(Jump), .JumpE(JumpE), .JumpXY(JumpXY), .Call(Call), .RstP(RstP), 
        .LDZ(LDZ), .LDW(LDW), .LDSPHL(LDSPHL), .Special_LD(Special_LD), 
        .ExchangeDH(ExchangeDH), .ExchangeRp(ExchangeRp), .ExchangeAF(
        ExchangeAF), .ExchangeRS(ExchangeRS), .I_DJNZ(stop), .I_CPL(I_CPL), 
        .I_CCF(I_CCF), .I_SCF(I_SCF), .I_RETN(I_RETN), .I_BT(I_BT), .I_BC(I_BC), .I_BTR(I_BTR), .I_RLD(I_RLD), .I_RRD(I_RRD), .I_INRC(I_INRC), .SetDI(SetDI), 
        .SetEI(SetEI), .IMode(IMode), .Halt(Halt), .NoRead(no_read), .Write(
        write), .IR(IR), .ISet(ISet), .MCycle({n1056, mc[1], n3}), .F(F), 
        .NMICycle(NMICycle), .IntCycle(IntCycle) );
  tv80_alu_Mode1_Flag_C0_Flag_N1_Flag_P2_Flag_X3_Flag_H4_Flag_Y5_Flag_Z6_Flag_S7 i_alu ( 
        .Q(ALU_Q), .F_Out(F_Out), .Arith16(Arith16_r), .Z16(Z16_r), .ALU_Op(
        ALU_Op_r), .IR({n863, n878, IR[3], n895, IR[1:0]}), .ISet({n766, 
        ISet[0]}), .BusA(BusA), .BusB(BusB), .F_In(F) );
  tv80_reg i_reg ( .DOBH(RegBusB[15:8]), .DOAL(RegBusA[7:0]), .DOCL(
        RegBusC[7:0]), .DOBL(RegBusB[7:0]), .DOCH(RegBusC[15:8]), .DOAH(
        RegBusA[15:8]), .AddrC(RegAddrC), .AddrA(RegAddrA), .AddrB(RegAddrB), 
        .DIH(RegDIH), .DIL(RegDIL), .clk(clk), .CEN(n202), .WEH(RegWEH), .WEL(
        RegWEL) );
  tv80_core_DW01_inc_0_DW01_inc_3 add_548 ( .A(TmpAddr), .SUM({N262, N261, 
        N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, 
        N248, N247}) );
  tv80_core_DW01_inc_1_DW01_inc_4 add_380 ( .A(R[6:0]), .SUM({N159, N158, N157, 
        N156, N155, N154, N153}) );
  DFFX1_RVT \IR_reg[5]  ( .D(n1327), .CLK(clk), .Q(IR[5]), .QN(n1145) );
  DFFX1_RVT \IR_reg[4]  ( .D(n1328), .CLK(clk), .Q(IR[4]), .QN(n1146) );
  DFFX1_RVT \ISet_reg[1]  ( .D(n1343), .CLK(clk), .Q(ISet[1]), .QN(n1128) );
  DFFX1_RVT \IR_reg[3]  ( .D(n1329), .CLK(clk), .Q(IR[3]), .QN(n976) );
  DFFX1_RVT \tstate_reg[1]  ( .D(n1360), .CLK(clk), .Q(ts[1]), .QN(n222) );
  DFFX1_RVT \IR_reg[2]  ( .D(n1330), .CLK(clk), .Q(IR[2]), .QN(n1147) );
  DFFX1_RVT \IR_reg[0]  ( .D(n1332), .CLK(clk), .Q(IR[0]), .QN(n955) );
  DFFX1_RVT \IR_reg[1]  ( .D(n1331), .CLK(clk), .Q(IR[1]) );
  DFFX1_RVT \mcycle_reg[0]  ( .D(n1347), .CLK(clk), .Q(n3), .QN(n1178) );
  DFFX1_RVT \F_reg[6]  ( .D(n1230), .CLK(clk), .Q(F[6]), .QN(n990) );
  DFFX1_RVT \BusA_reg[2]  ( .D(n1315), .CLK(clk), .Q(BusA[2]) );
  DFFX1_RVT rfsh_n_reg ( .D(n1345), .CLK(clk), .Q(rfsh_n) );
  DFFX1_RVT \do_reg[4]  ( .D(n1272), .CLK(clk), .Q(do[4]) );
  DFFX1_RVT \do_reg[0]  ( .D(n1276), .CLK(clk), .Q(do[0]) );
  DFFX1_RVT \do_reg[5]  ( .D(n1271), .CLK(clk), .Q(do[5]) );
  DFFX1_RVT \do_reg[1]  ( .D(n1275), .CLK(clk), .Q(do[1]) );
  DFFX1_RVT \do_reg[6]  ( .D(n1270), .CLK(clk), .Q(do[6]) );
  DFFX1_RVT \do_reg[2]  ( .D(n1274), .CLK(clk), .Q(do[2]) );
  DFFX1_RVT \do_reg[3]  ( .D(n1273), .CLK(clk), .Q(do[3]) );
  DFFX1_RVT \do_reg[7]  ( .D(n1269), .CLK(clk), .Q(do[7]) );
  DFFX1_RVT m1_n_reg ( .D(n1319), .CLK(clk), .Q(m1_n), .QN(n961) );
  DFFX1_RVT \A_reg[1]  ( .D(n1199), .CLK(clk), .Q(A[1]), .QN(n1002) );
  DFFX1_RVT \A_reg[2]  ( .D(n1198), .CLK(clk), .Q(A[2]), .QN(n1006) );
  DFFX1_RVT \A_reg[5]  ( .D(n1195), .CLK(clk), .Q(A[5]), .QN(n1018) );
  DFFX1_RVT \A_reg[6]  ( .D(n1194), .CLK(clk), .Q(A[6]), .QN(n1022) );
  DFFX1_RVT \F_reg[3]  ( .D(n1233), .CLK(clk), .Q(F[3]) );
  DFFX1_RVT \F_reg[5]  ( .D(n1231), .CLK(clk), .Q(F[5]) );
  DFFX1_RVT Z16_r_reg ( .D(n1342), .CLK(clk), .Q(Z16_r), .QN(n953) );
  DFFX1_RVT \TmpAddr_reg[7]  ( .D(n1245), .CLK(clk), .Q(TmpAddr[7]), .QN(n1024) );
  DFFX1_RVT \TmpAddr_reg[4]  ( .D(n1248), .CLK(clk), .Q(TmpAddr[4]), .QN(n1012) );
  DFFX1_RVT \TmpAddr_reg[3]  ( .D(n1249), .CLK(clk), .Q(TmpAddr[3]), .QN(n1008) );
  DFFX1_RVT \PC_reg[6]  ( .D(n1210), .CLK(clk), .Q(PC[6]), .QN(n1021) );
  DFFX1_RVT \PC_reg[5]  ( .D(n1211), .CLK(clk), .Q(PC[5]), .QN(n1017) );
  DFFX1_RVT IntE_FF1_reg ( .D(n1364), .CLK(clk), .Q(IntE), .QN(n1183) );
  DFFX1_RVT \PC_reg[2]  ( .D(n1214), .CLK(clk), .Q(PC[2]), .QN(n1005) );
  DFFX1_RVT \PC_reg[1]  ( .D(n1215), .CLK(clk), .Q(PC[1]), .QN(n1001) );
  DFFX1_RVT \TmpAddr_reg[1]  ( .D(n1251), .CLK(clk), .Q(TmpAddr[1]), .QN(n1000) );
  DFFX1_RVT \TmpAddr_reg[5]  ( .D(n1247), .CLK(clk), .Q(TmpAddr[5]), .QN(n1016) );
  DFFX1_RVT \TmpAddr_reg[2]  ( .D(n1250), .CLK(clk), .Q(TmpAddr[2]), .QN(n1004) );
  DFFX1_RVT \TmpAddr_reg[6]  ( .D(n1246), .CLK(clk), .Q(TmpAddr[6]), .QN(n1020) );
  DFFX1_RVT \TmpAddr_reg[0]  ( .D(n1252), .CLK(clk), .Q(TmpAddr[0]), .QN(n996)
         );
  DFFX1_RVT \TmpAddr_reg[8]  ( .D(n1244), .CLK(clk), .Q(TmpAddr[8]), .QN(n1166) );
  DFFX1_RVT \SP_reg[6]  ( .D(n1262), .CLK(clk), .Q(SP[6]), .QN(n1138) );
  DFFX1_RVT \SP_reg[5]  ( .D(n1263), .CLK(clk), .Q(SP[5]), .QN(n1139) );
  DFFX1_RVT Arith16_r_reg ( .D(n1354), .CLK(clk), .Q(Arith16_r) );
  DFFX1_RVT \SP_reg[4]  ( .D(n1264), .CLK(clk), .Q(SP[4]), .QN(n1140) );
  DFFX1_RVT \SP_reg[3]  ( .D(n1265), .CLK(clk), .Q(SP[3]), .QN(n1141) );
  DFFX1_RVT \SP_reg[2]  ( .D(n1266), .CLK(clk), .Q(SP[2]), .QN(n1142) );
  DFFX1_RVT \SP_reg[1]  ( .D(n1267), .CLK(clk), .Q(SP[1]), .QN(n1143) );
  DFFX1_RVT \SP_reg[0]  ( .D(n1268), .CLK(clk), .Q(SP[0]), .QN(n1144) );
  DFFX1_RVT \F_reg[1]  ( .D(n1235), .CLK(clk), .Q(F[1]) );
  DFFX1_RVT \BusB_reg[6]  ( .D(n1117), .CLK(clk), .Q(BusB[6]) );
  DFFX1_RVT \BusB_reg[7]  ( .D(n1118), .CLK(clk), .Q(BusB[7]) );
  DFFX1_RVT \F_reg[2]  ( .D(n1234), .CLK(clk), .Q(F[2]), .QN(n1169) );
  DFFX1_RVT \BusB_reg[4]  ( .D(n1115), .CLK(clk), .Q(BusB[4]) );
  DFFX1_RVT \RegAddrC_reg[2]  ( .D(n1104), .CLK(clk), .Q(RegAddrC[2]), .QN(
        n1068) );
  DFFX1_RVT \BusB_reg[2]  ( .D(n1113), .CLK(clk), .Q(BusB[2]) );
  DFFX1_RVT IntCycle_reg ( .D(n1363), .CLK(clk), .Q(IntCycle), .QN(intcycle_n)
         );
  DFFX1_RVT \BusB_reg[5]  ( .D(n1116), .CLK(clk), .Q(BusB[5]) );
  DFFX1_RVT \RegAddrC_reg[1]  ( .D(n1105), .CLK(clk), .Q(RegAddrC[1]) );
  DFFX1_RVT NMICycle_reg ( .D(n1334), .CLK(clk), .Q(NMICycle), .QN(n1171) );
  DFFX1_RVT \BusB_reg[3]  ( .D(n1114), .CLK(clk), .Q(BusB[3]) );
  DFFX1_RVT \F_reg[7]  ( .D(n1229), .CLK(clk), .Q(F[7]) );
  DFFX1_RVT \BusA_reg[7]  ( .D(n1310), .CLK(clk), .Q(BusA[7]) );
  DFFX1_RVT \BusA_reg[6]  ( .D(n1311), .CLK(clk), .Q(BusA[6]) );
  DFFX1_RVT \ALU_Op_r_reg[2]  ( .D(n1337), .CLK(clk), .Q(ALU_Op_r[2]), .QN(
        n1121) );
  DFFX1_RVT \ALU_Op_r_reg[0]  ( .D(n1339), .CLK(clk), .Q(ALU_Op_r[0]) );
  DFFX1_RVT \ALU_Op_r_reg[3]  ( .D(n1336), .CLK(clk), .Q(ALU_Op_r[3]), .QN(
        n1120) );
  DFFX1_RVT \BusA_reg[5]  ( .D(n1312), .CLK(clk), .Q(BusA[5]) );
  DFFX1_RVT \ISet_reg[0]  ( .D(n1344), .CLK(clk), .Q(ISet[0]), .QN(n954) );
  DFFX1_RVT \ALU_Op_r_reg[1]  ( .D(n1338), .CLK(clk), .Q(ALU_Op_r[1]), .QN(
        n1122) );
  DFFX1_RVT \tstate_reg[2]  ( .D(n1358), .CLK(clk), .Q(ts[2]), .QN(n101) );
  DFFX1_RVT \IR_reg[7]  ( .D(n1323), .CLK(clk), .Q(IR[7]), .QN(n958) );
  DFFX1_RVT \IR_reg[6]  ( .D(n1324), .CLK(clk), .Q(IR[6]), .QN(n957) );
  DFFX1_RVT \BusA_reg[4]  ( .D(n1313), .CLK(clk), .Q(BusA[4]) );
  DFFX1_RVT \mcycle_reg[2]  ( .D(n1366), .CLK(clk), .Q(n1056), .QN(n1176) );
  DFFX1_RVT \Fp_reg[5]  ( .D(n1223), .CLK(clk), .Q(n991) );
  DFFX1_RVT \Fp_reg[3]  ( .D(n1225), .CLK(clk), .Q(n987) );
  DFFX1_RVT \Fp_reg[0]  ( .D(n1228), .CLK(clk), .Q(n977) );
  DFFX1_RVT \Fp_reg[7]  ( .D(n1221), .CLK(clk), .Q(n1009) );
  DFFX1_RVT \Fp_reg[1]  ( .D(n1227), .CLK(clk), .Q(n979) );
  DFFX1_RVT \Fp_reg[4]  ( .D(n1224), .CLK(clk), .Q(n981) );
  DFFX1_RVT PreserveC_r_reg ( .D(n1348), .CLK(clk), .Q(n806), .QN(n1149) );
  DFFX1_RVT BTR_r_reg ( .D(n1217), .CLK(clk), .Q(n861), .QN(n1148) );
  DFFX1_RVT INT_s_reg ( .D(n1368), .CLK(clk), .Q(n533), .QN(n951) );
  DFFX1_RVT BusReq_s_reg ( .D(n1369), .CLK(clk), .Q(n515), .QN(n1170) );
  DFFX1_RVT Auto_Wait_t2_reg ( .D(n1361), .CLK(clk), .QN(n1173) );
  DFFX1_RVT \IStatus_reg[1]  ( .D(n1355), .CLK(clk), .Q(n799), .QN(n1167) );
  DFFX1_RVT \IStatus_reg[0]  ( .D(n1356), .CLK(clk), .Q(n804), .QN(n1168) );
  DFFX1_RVT \mcycles_reg[1]  ( .D(n1219), .CLK(clk), .Q(n1034), .QN(n994) );
  DFFX1_RVT \mcycles_reg[2]  ( .D(n1218), .CLK(clk), .Q(n1037), .QN(n995) );
  DFFX1_RVT \mcycles_reg[0]  ( .D(n1220), .CLK(clk), .Q(n1031), .QN(n993) );
  DFFX1_RVT \RegAddrA_r_reg[1]  ( .D(n1110), .CLK(clk), .Q(n793) );
  DFFX1_RVT No_BTR_reg ( .D(n1367), .CLK(clk), .Q(n536), .QN(n1184) );
  DFFX1_RVT Oldnmi_n_reg ( .D(n1370), .CLK(clk), .Q(n510), .QN(n962) );
  DFFX1_RVT \Read_To_Reg_r_reg[3]  ( .D(n1350), .CLK(clk), .Q(n816), .QN(n1124) );
  DFFX1_RVT Save_ALU_r_reg ( .D(n1340), .CLK(clk), .Q(n859), .QN(n1158) );
  DFFX1_RVT BusAck_reg ( .D(n1357), .CLK(clk), .QN(busak_n) );
  DFFX1_RVT NMI_s_reg ( .D(n1318), .CLK(clk), .Q(n839), .QN(n963) );
  DFFX1_RVT \Read_To_Reg_r_reg[4]  ( .D(n1349), .CLK(clk), .Q(n810) );
  DFFX1_RVT \Read_To_Reg_r_reg[2]  ( .D(n1351), .CLK(clk), .Q(n825), .QN(n1125) );
  DFFX1_RVT \Read_To_Reg_r_reg[1]  ( .D(n1352), .CLK(clk), .Q(n826), .QN(n1126) );
  DFFX1_RVT \Read_To_Reg_r_reg[0]  ( .D(n1353), .CLK(clk), .Q(n830), .QN(n1127) );
  DFFX1_RVT \RegAddrB_r_reg[0]  ( .D(n1108), .CLK(clk), .Q(n867), .QN(n1072)
         );
  DFFX1_RVT Auto_Wait_t1_reg ( .D(n1362), .CLK(clk), .Q(n769), .QN(n1182) );
  DFFX1_RVT \RegAddrA_r_reg[0]  ( .D(n1106), .CLK(clk), .Q(n868) );
  DFFX1_RVT \RegBusA_r_reg[2]  ( .D(n1092), .CLK(clk), .Q(n950) );
  DFFX1_RVT \RegBusA_r_reg[1]  ( .D(n1093), .CLK(clk), .Q(n949) );
  DFFX1_RVT \RegBusA_r_reg[0]  ( .D(n1094), .CLK(clk), .Q(n940) );
  DFFX1_RVT \RegBusA_r_reg[3]  ( .D(n1091), .CLK(clk), .Q(n952) );
  DFFX1_RVT \XY_State_reg[0]  ( .D(n1326), .CLK(clk), .Q(n864), .QN(n1069) );
  DFFX1_RVT \XY_State_reg[1]  ( .D(n1325), .CLK(clk), .Q(n866), .QN(n1073) );
  DFFX1_RVT \Fp_reg[2]  ( .D(n1226), .CLK(clk), .QN(n983) );
  DFFX1_RVT \Ap_reg[6]  ( .D(n1286), .CLK(clk), .QN(n970) );
  DFFX1_RVT \Ap_reg[4]  ( .D(n1288), .CLK(clk), .QN(n968) );
  DFFX1_RVT \Ap_reg[2]  ( .D(n1290), .CLK(clk), .QN(n966) );
  DFFX1_RVT \Ap_reg[0]  ( .D(n1292), .CLK(clk), .QN(n964) );
  DFFX1_RVT \Fp_reg[6]  ( .D(n1222), .CLK(clk), .QN(n1123) );
  DFFX1_RVT \Ap_reg[7]  ( .D(n1285), .CLK(clk), .QN(n971) );
  DFFX1_RVT \Ap_reg[5]  ( .D(n1287), .CLK(clk), .QN(n969) );
  DFFX1_RVT \Ap_reg[3]  ( .D(n1289), .CLK(clk), .QN(n967) );
  DFFX1_RVT \Ap_reg[1]  ( .D(n1291), .CLK(clk), .QN(n965) );
  DFFX1_RVT \RegBusA_r_reg[7]  ( .D(n1087), .CLK(clk), .Q(n973) );
  DFFX1_RVT \RegBusA_r_reg[6]  ( .D(n1088), .CLK(clk), .Q(n972) );
  DFFX1_RVT \RegBusA_r_reg[13]  ( .D(n1097), .CLK(clk), .Q(n913) );
  DFFX1_RVT \RegBusA_r_reg[11]  ( .D(n1099), .CLK(clk), .Q(n910) );
  DFFX1_RVT \RegBusA_r_reg[10]  ( .D(n1100), .CLK(clk), .Q(n909) );
  DFFX1_RVT \RegBusA_r_reg[9]  ( .D(n1101), .CLK(clk), .Q(n904) );
  DFFX1_RVT XY_Ind_reg ( .D(n1341), .CLK(clk), .QN(n1074) );
  DFFX1_RVT Halt_FF_reg ( .D(n1333), .CLK(clk), .Q(n850), .QN(halt_n) );
  DFFX1_RVT \RegBusA_r_reg[5]  ( .D(n1089), .CLK(clk), .Q(n959) );
  DFFX1_RVT \RegBusA_r_reg[4]  ( .D(n1090), .CLK(clk), .Q(n956) );
  DFFX1_RVT \RegBusA_r_reg[15]  ( .D(n1095), .CLK(clk), .Q(n936) );
  DFFX1_RVT \RegAddrB_r_reg[1]  ( .D(n1111), .CLK(clk), .Q(n787) );
  DFFX1_RVT \RegBusA_r_reg[14]  ( .D(n1096), .CLK(clk), .Q(n931) );
  DFFX1_RVT \RegBusA_r_reg[12]  ( .D(n1098), .CLK(clk), .Q(n912) );
  DFFX1_RVT \RegBusA_r_reg[8]  ( .D(n1102), .CLK(clk), .Q(n903) );
  DFFX1_RVT \R_reg[7]  ( .D(n1293), .CLK(clk), .Q(n1028), .QN(n1027) );
  DFFX1_RVT \RegAddrB_r_reg[2]  ( .D(n1109), .CLK(clk), .QN(n1076) );
  DFFX1_RVT \RegAddrA_r_reg[2]  ( .D(n1107), .CLK(clk), .QN(n1071) );
  DFFX1_RVT \Pre_XY_F_M_reg[2]  ( .D(n1321), .CLK(clk), .Q(n862) );
  DFFX1_RVT \Pre_XY_F_M_reg[1]  ( .D(n1320), .CLK(clk), .Q(n840), .QN(n960) );
  DFFX1_RVT \Pre_XY_F_M_reg[0]  ( .D(n1322), .CLK(clk), .Q(n857), .QN(n1179)
         );
  DFFX1_RVT IntE_FF2_reg ( .D(n1365), .CLK(clk), .Q(n541), .QN(n1175) );
  DFFX1_RVT \I_reg[7]  ( .D(n1277), .CLK(clk), .Q(n1025), .QN(n1050) );
  DFFX1_RVT \I_reg[6]  ( .D(n1278), .CLK(clk), .Q(n982), .QN(n1047) );
  DFFX1_RVT \I_reg[5]  ( .D(n1279), .CLK(clk), .Q(n992), .QN(n1044) );
  DFFX1_RVT \I_reg[4]  ( .D(n1280), .CLK(clk), .Q(n989), .QN(n1041) );
  DFFX1_RVT \I_reg[3]  ( .D(n1281), .CLK(clk), .Q(n988), .QN(n1038) );
  DFFX1_RVT \I_reg[2]  ( .D(n1282), .CLK(clk), .Q(n986), .QN(n1035) );
  DFFX1_RVT \I_reg[1]  ( .D(n1283), .CLK(clk), .Q(n985), .QN(n1032) );
  DFFX1_RVT \I_reg[0]  ( .D(n1284), .CLK(clk), .Q(n984), .QN(n1029) );
  DFFX1_RVT IncDecZ_reg ( .D(n1309), .CLK(clk), .Q(n974), .QN(n978) );
  DFFX1_RVT Alternate_reg ( .D(n1335), .CLK(clk), .Q(n109), .QN(n1075) );
  DFFX1_RVT \BusB_reg[1]  ( .D(n1112), .CLK(clk), .Q(BusB[1]) );
  DFFX1_RVT \SP_reg[7]  ( .D(n1261), .CLK(clk), .Q(SP[7]), .QN(n1137) );
  DFFX1_RVT \TmpAddr_reg[9]  ( .D(n1243), .CLK(clk), .Q(TmpAddr[9]), .QN(n1165) );
  DFFX1_RVT \BusB_reg[0]  ( .D(n1119), .CLK(clk), .Q(BusB[0]) );
  DFFX1_RVT \SP_reg[8]  ( .D(n1260), .CLK(clk), .Q(SP[8]), .QN(n1136) );
  DFFX1_RVT \PC_reg[4]  ( .D(n1212), .CLK(clk), .Q(PC[4]), .QN(n1013) );
  DFFX1_RVT \PC_reg[3]  ( .D(n1213), .CLK(clk), .Q(PC[3]) );
  DFFX1_RVT \PC_reg[7]  ( .D(n1209), .CLK(clk), .Q(PC[7]) );
  DFFX1_RVT \PC_reg[0]  ( .D(n1216), .CLK(clk), .Q(PC[0]), .QN(n997) );
  DFFX1_RVT \PC_reg[15]  ( .D(n1201), .CLK(clk), .Q(PC[15]) );
  DFFX1_RVT \PC_reg[13]  ( .D(n1203), .CLK(clk), .Q(PC[13]) );
  DFFX1_RVT \TmpAddr_reg[10]  ( .D(n1242), .CLK(clk), .Q(TmpAddr[10]), .QN(
        n1164) );
  DFFX1_RVT \SP_reg[9]  ( .D(n1259), .CLK(clk), .Q(SP[9]), .QN(n1135) );
  DFFX1_RVT \PC_reg[14]  ( .D(n1202), .CLK(clk), .Q(PC[14]) );
  DFFX1_RVT \PC_reg[12]  ( .D(n1204), .CLK(clk), .Q(PC[12]) );
  DFFX1_RVT \PC_reg[11]  ( .D(n1205), .CLK(clk), .Q(PC[11]) );
  DFFX1_RVT \PC_reg[10]  ( .D(n1206), .CLK(clk), .Q(PC[10]) );
  DFFX1_RVT \PC_reg[9]  ( .D(n1207), .CLK(clk), .Q(PC[9]) );
  DFFX1_RVT \PC_reg[8]  ( .D(n1208), .CLK(clk), .Q(PC[8]) );
  DFFX1_RVT \TmpAddr_reg[11]  ( .D(n1241), .CLK(clk), .Q(TmpAddr[11]), .QN(
        n1163) );
  DFFX1_RVT \R_reg[5]  ( .D(n1295), .CLK(clk), .Q(R[5]), .QN(n1019) );
  DFFX1_RVT \R_reg[3]  ( .D(n1297), .CLK(clk), .Q(R[3]), .QN(n1011) );
  DFFX1_RVT \R_reg[6]  ( .D(n1294), .CLK(clk), .Q(R[6]), .QN(n1023) );
  DFFX1_RVT \R_reg[4]  ( .D(n1296), .CLK(clk), .Q(R[4]), .QN(n1015) );
  DFFX1_RVT \R_reg[2]  ( .D(n1298), .CLK(clk), .Q(R[2]), .QN(n1007) );
  DFFX1_RVT \R_reg[1]  ( .D(n1299), .CLK(clk), .Q(R[1]), .QN(n1003) );
  DFFX1_RVT \R_reg[0]  ( .D(n1300), .CLK(clk), .Q(R[0]), .QN(n999) );
  DFFX1_RVT \SP_reg[10]  ( .D(n1258), .CLK(clk), .Q(SP[10]), .QN(n1134) );
  DFFX1_RVT \A_reg[7]  ( .D(n1193), .CLK(clk), .Q(A[7]), .QN(n1026) );
  DFFX1_RVT \A_reg[3]  ( .D(n1197), .CLK(clk), .Q(A[3]), .QN(n1010) );
  DFFX1_RVT \A_reg[4]  ( .D(n1196), .CLK(clk), .Q(A[4]), .QN(n1014) );
  DFFX1_RVT \A_reg[0]  ( .D(n1200), .CLK(clk), .Q(A[0]), .QN(n998) );
  DFFX1_RVT \TmpAddr_reg[12]  ( .D(n1240), .CLK(clk), .Q(TmpAddr[12]), .QN(
        n1162) );
  DFFX1_RVT \SP_reg[11]  ( .D(n1257), .CLK(clk), .Q(SP[11]), .QN(n1133) );
  DFFX1_RVT \A_reg[15]  ( .D(n1185), .CLK(clk), .Q(A[15]), .QN(n1051) );
  DFFX1_RVT \A_reg[14]  ( .D(n1186), .CLK(clk), .Q(A[14]), .QN(n1048) );
  DFFX1_RVT \A_reg[13]  ( .D(n1187), .CLK(clk), .Q(A[13]), .QN(n1045) );
  DFFX1_RVT \A_reg[12]  ( .D(n1188), .CLK(clk), .Q(A[12]), .QN(n1042) );
  DFFX1_RVT \A_reg[10]  ( .D(n1190), .CLK(clk), .Q(A[10]), .QN(n1036) );
  DFFX1_RVT \A_reg[9]  ( .D(n1191), .CLK(clk), .Q(A[9]), .QN(n1033) );
  DFFX1_RVT \A_reg[8]  ( .D(n1192), .CLK(clk), .Q(A[8]), .QN(n1030) );
  DFFX1_RVT \ACC_reg[5]  ( .D(n1303), .CLK(clk), .Q(ACC[5]), .QN(n1152) );
  DFFX1_RVT \ACC_reg[3]  ( .D(n1305), .CLK(clk), .Q(ACC[3]), .QN(n1154) );
  DFFX1_RVT \A_reg[11]  ( .D(n1189), .CLK(clk), .Q(A[11]), .QN(n1039) );
  DFFX1_RVT \ACC_reg[7]  ( .D(n1301), .CLK(clk), .Q(ACC[7]), .QN(n1150) );
  DFFX1_RVT \ACC_reg[6]  ( .D(n1302), .CLK(clk), .Q(ACC[6]), .QN(n1151) );
  DFFX1_RVT \ACC_reg[4]  ( .D(n1304), .CLK(clk), .Q(ACC[4]), .QN(n1153) );
  DFFX1_RVT \ACC_reg[2]  ( .D(n1306), .CLK(clk), .Q(ACC[2]), .QN(n1155) );
  DFFX1_RVT \ACC_reg[1]  ( .D(n1307), .CLK(clk), .Q(ACC[1]), .QN(n1156) );
  DFFX1_RVT \ACC_reg[0]  ( .D(n1308), .CLK(clk), .Q(ACC[0]), .QN(n1157) );
  DFFX1_RVT \TmpAddr_reg[13]  ( .D(n1239), .CLK(clk), .Q(TmpAddr[13]), .QN(
        n1161) );
  DFFX1_RVT \SP_reg[12]  ( .D(n1256), .CLK(clk), .Q(SP[12]), .QN(n1132) );
  DFFX1_RVT \BusA_reg[0]  ( .D(n1317), .CLK(clk), .Q(BusA[0]) );
  DFFX1_RVT \BusA_reg[1]  ( .D(n1316), .CLK(clk), .Q(BusA[1]) );
  DFFX1_RVT \TmpAddr_reg[14]  ( .D(n1238), .CLK(clk), .Q(TmpAddr[14]), .QN(
        n1160) );
  DFFX1_RVT \BusA_reg[3]  ( .D(n1314), .CLK(clk), .Q(BusA[3]) );
  DFFX1_RVT \SP_reg[13]  ( .D(n1255), .CLK(clk), .Q(SP[13]), .QN(n1131) );
  DFFX1_RVT \TmpAddr_reg[15]  ( .D(n1237), .CLK(clk), .Q(TmpAddr[15]), .QN(
        n1159) );
  DFFX1_RVT \SP_reg[14]  ( .D(n1254), .CLK(clk), .Q(SP[14]), .QN(n1130) );
  DFFX1_RVT \SP_reg[15]  ( .D(n1253), .CLK(clk), .Q(SP[15]), .QN(n1129) );
  DFFX1_RVT \F_reg[4]  ( .D(n1232), .CLK(clk), .Q(F[4]) );
  DFFX1_RVT \tstate_reg[0]  ( .D(n1359), .CLK(clk), .Q(n1057), .QN(n223) );
  DFFX1_RVT \mcycle_reg[1]  ( .D(n1346), .CLK(clk), .Q(mc[1]), .QN(n1177) );
  DFFX1_RVT \RegAddrC_reg[0]  ( .D(n1103), .CLK(clk), .Q(RegAddrC[0]) );
  DFFX1_RVT \F_reg[0]  ( .D(n1236), .CLK(clk), .Q(F[0]), .QN(n980) );
  NAND2X1_RVT U3 ( .A1(ExchangeDH), .A2(n261), .Y(n934) );
  INVX0_RVT U4 ( .A(n934), .Y(n208) );
  XNOR2X1_RVT U5 ( .A1(n1057), .A2(tstates[0]), .Y(n890) );
  AO21X1_RVT U6 ( .A1(n558), .A2(n520), .A3(n329), .Y(n1) );
  AO21X1_RVT U7 ( .A1(n517), .A2(n520), .A3(n329), .Y(n2) );
  INVX0_RVT U8 ( .A(n360), .Y(n352) );
  INVX1_RVT U9 ( .A(n248), .Y(n251) );
  INVX1_RVT U10 ( .A(n262), .Y(n326) );
  AND2X1_RVT U11 ( .A1(n631), .A2(n657), .Y(n653) );
  AO21X1_RVT U12 ( .A1(n324), .A2(di[2]), .A3(n896), .Y(SP16_B[2]) );
  AOI21X1_RVT U13 ( .A1(n324), .A2(di[7]), .A3(n896), .Y(n52) );
  NAND4X0_RVT U14 ( .A1(n656), .A2(n418), .A3(n419), .A4(n397), .Y(n663) );
  NAND3X0_RVT U15 ( .A1(Special_LD[0]), .A2(n728), .A3(n653), .Y(n627) );
  NAND3X0_RVT U16 ( .A1(n728), .A2(n733), .A3(n653), .Y(n626) );
  AO22X1_RVT U17 ( .A1(n262), .A2(SP[6]), .A3(n325), .A4(RegBusC[6]), .Y(
        SP16_A[6]) );
  AO21X1_RVT U18 ( .A1(n326), .A2(di[6]), .A3(n896), .Y(SP16_B[6]) );
  AO22X1_RVT U19 ( .A1(n263), .A2(SP[1]), .A3(n325), .A4(RegBusC[1]), .Y(
        SP16_A[1]) );
  AO21X1_RVT U20 ( .A1(n326), .A2(di[1]), .A3(n896), .Y(SP16_B[1]) );
  AO21X1_RVT U21 ( .A1(n325), .A2(di[4]), .A3(n896), .Y(SP16_B[4]) );
  INVX1_RVT U22 ( .A(n21), .Y(n253) );
  OA21X1_RVT U23 ( .A1(n285), .A2(n311), .A3(n312), .Y(n157) );
  INVX1_RVT U24 ( .A(IncDec_16[0]), .Y(n571) );
  NAND4X0_RVT U25 ( .A1(n358), .A2(n286), .A3(n287), .A4(n288), .Y(n63) );
  AND3X1_RVT U26 ( .A1(n281), .A2(n282), .A3(n328), .Y(n232) );
  INVX1_RVT U27 ( .A(n263), .Y(n324) );
  NAND3X0_RVT U28 ( .A1(n791), .A2(n620), .A3(n216), .Y(n790) );
  NAND4X0_RVT U29 ( .A1(Prefix[0]), .A2(n744), .A3(n762), .A4(n734), .Y(n791)
         );
  OA222X1_RVT U30 ( .A1(n312), .A2(n497), .A3(n1163), .A4(n77), .A5(n78), .A6(
        n1054), .Y(n116) );
  AND2X1_RVT U31 ( .A1(n147), .A2(n148), .Y(n83) );
  NAND3X0_RVT U32 ( .A1(n328), .A2(n299), .A3(n556), .Y(n148) );
  OA222X1_RVT U33 ( .A1(n1029), .A2(n83), .A3(n1136), .A4(n314), .A5(n1157), 
        .A6(n317), .Y(n138) );
  OA222X1_RVT U34 ( .A1(n1032), .A2(n83), .A3(n1135), .A4(n315), .A5(n1156), 
        .A6(n317), .Y(n130) );
  OA222X1_RVT U35 ( .A1(n1035), .A2(n83), .A3(n1134), .A4(n314), .A5(n1155), 
        .A6(n316), .Y(n122) );
  OA222X1_RVT U36 ( .A1(n1041), .A2(n83), .A3(n1132), .A4(n314), .A5(n1153), 
        .A6(n316), .Y(n106) );
  OA222X1_RVT U37 ( .A1(n1044), .A2(n83), .A3(n1131), .A4(n315), .A5(n1152), 
        .A6(n316), .Y(n98) );
  OA222X1_RVT U38 ( .A1(n1047), .A2(n83), .A3(n1130), .A4(n314), .A5(n1151), 
        .A6(n316), .Y(n90) );
  OA22X1_RVT U39 ( .A1(n157), .A2(n481), .A3(n996), .A4(n159), .Y(n200) );
  OA22X1_RVT U40 ( .A1(n157), .A2(n463), .A3(n1012), .A4(n159), .Y(n176) );
  OA22X1_RVT U41 ( .A1(n157), .A2(n465), .A3(n1008), .A4(n159), .Y(n182) );
  OA22X1_RVT U42 ( .A1(n157), .A2(n452), .A3(n1024), .A4(n159), .Y(n153) );
  AO22X1_RVT U43 ( .A1(n263), .A2(SP[10]), .A3(n325), .A4(RegBusC[10]), .Y(
        SP16_A[10]) );
  AO21X1_RVT U44 ( .A1(n22), .A2(di[3]), .A3(n948), .Y(PC16_B[3]) );
  AO22X1_RVT U45 ( .A1(RegBusB[8]), .A2(n578), .A3(n247), .A4(RegBusB[0]), .Y(
        N1207) );
  AO21X1_RVT U46 ( .A1(n352), .A2(n622), .A3(n239), .Y(n602) );
  AO21X1_RVT U47 ( .A1(n352), .A2(n733), .A3(n602), .Y(n603) );
  AO21X1_RVT U48 ( .A1(n754), .A2(n749), .A3(n23), .Y(n747) );
  AND2X1_RVT U49 ( .A1(n1040), .A2(n835), .Y(n827) );
  AND2X1_RVT U50 ( .A1(n779), .A2(n283), .Y(n776) );
  AO21X1_RVT U51 ( .A1(n30), .A2(n406), .A3(n333), .Y(n386) );
  AO21X1_RVT U52 ( .A1(JumpE), .A2(di[1]), .A3(n948), .Y(PC16_B[1]) );
  OR2X1_RVT U53 ( .A1(I_RETN), .A2(SetEI), .Y(n865) );
  AO21X1_RVT U54 ( .A1(n22), .A2(di[5]), .A3(n948), .Y(PC16_B[5]) );
  AO21X1_RVT U55 ( .A1(n325), .A2(di[3]), .A3(n896), .Y(SP16_B[3]) );
  AO22X1_RVT U56 ( .A1(ALU_Q[1]), .A2(n659), .A3(n364), .A4(n991), .Y(n362) );
  AO22X1_RVT U57 ( .A1(ALU_Q[3]), .A2(n659), .A3(n364), .A4(n987), .Y(n381) );
  OA21X1_RVT U58 ( .A1(n143), .A2(n145), .A3(n144), .Y(n164) );
  OA22X1_RVT U59 ( .A1(n316), .A2(n1052), .A3(n174), .A4(n311), .Y(n170) );
  NAND3X0_RVT U60 ( .A1(n327), .A2(n299), .A3(n760), .Y(n147) );
  INVX1_RVT U61 ( .A(n360), .Y(n358) );
  NAND3X0_RVT U62 ( .A1(n852), .A2(n853), .A3(n854), .Y(n722) );
  NAND2X0_RVT U63 ( .A1(n760), .A2(ts[1]), .Y(n676) );
  NAND3X0_RVT U64 ( .A1(n345), .A2(n488), .A3(n489), .Y(n1255) );
  OA222X1_RVT U65 ( .A1(n491), .A2(n476), .A3(n399), .A4(n478), .A5(n420), 
        .A6(n480), .Y(n489) );
  NAND3X0_RVT U66 ( .A1(n345), .A2(n493), .A3(n494), .Y(n1256) );
  OA222X1_RVT U67 ( .A1(n495), .A2(n476), .A3(n400), .A4(n478), .A5(n421), 
        .A6(n480), .Y(n494) );
  OA22X1_RVT U68 ( .A1(n1041), .A2(n626), .A3(n1015), .A4(n627), .Y(n640) );
  OA22X1_RVT U69 ( .A1(n968), .A2(n630), .A3(n1153), .A4(n631), .Y(n638) );
  OA22X1_RVT U70 ( .A1(n400), .A2(n628), .A3(n629), .A4(ACC[4]), .Y(n639) );
  OA22X1_RVT U71 ( .A1(n1047), .A2(n626), .A3(n1023), .A4(n627), .Y(n634) );
  OA22X1_RVT U72 ( .A1(n970), .A2(n630), .A3(n1151), .A4(n631), .Y(n632) );
  OA22X1_RVT U73 ( .A1(n398), .A2(n628), .A3(n629), .A4(ACC[6]), .Y(n633) );
  OA22X1_RVT U74 ( .A1(n1050), .A2(n626), .A3(n1027), .A4(n627), .Y(n625) );
  OA22X1_RVT U75 ( .A1(n971), .A2(n630), .A3(n1150), .A4(n631), .Y(n623) );
  OA22X1_RVT U76 ( .A1(n388), .A2(n628), .A3(n629), .A4(ACC[7]), .Y(n624) );
  OA22X1_RVT U77 ( .A1(n1038), .A2(n626), .A3(n1011), .A4(n627), .Y(n643) );
  OA22X1_RVT U78 ( .A1(n967), .A2(n630), .A3(n1154), .A4(n631), .Y(n641) );
  OA22X1_RVT U79 ( .A1(n402), .A2(n628), .A3(ACC[3]), .A4(n629), .Y(n642) );
  OA22X1_RVT U80 ( .A1(n1044), .A2(n626), .A3(n1019), .A4(n627), .Y(n637) );
  OA22X1_RVT U81 ( .A1(n969), .A2(n630), .A3(n1152), .A4(n631), .Y(n635) );
  OA22X1_RVT U82 ( .A1(n399), .A2(n628), .A3(ACC[5]), .A4(n629), .Y(n636) );
  NAND3X0_RVT U83 ( .A1(n352), .A2(n512), .A3(n513), .Y(n1260) );
  OA222X1_RVT U84 ( .A1(n509), .A2(n476), .A3(n619), .A4(n478), .A5(n437), 
        .A6(n480), .Y(n513) );
  NAND3X0_RVT U85 ( .A1(n352), .A2(n522), .A3(n523), .Y(n1261) );
  OA222X1_RVT U86 ( .A1(n452), .A2(n524), .A3(n388), .A4(n525), .A5(n438), 
        .A6(n527), .Y(n523) );
  NAND3X0_RVT U87 ( .A1(n352), .A2(n550), .A3(n551), .Y(n1267) );
  OA222X1_RVT U88 ( .A1(n479), .A2(n524), .A3(n413), .A4(n525), .A5(n450), 
        .A6(n527), .Y(n551) );
  NAND3X0_RVT U89 ( .A1(n352), .A2(n534), .A3(n535), .Y(n1263) );
  OA222X1_RVT U90 ( .A1(n460), .A2(n524), .A3(n399), .A4(n525), .A5(n445), 
        .A6(n527), .Y(n535) );
  NAND3X0_RVT U91 ( .A1(n352), .A2(n530), .A3(n531), .Y(n1262) );
  OA222X1_RVT U92 ( .A1(n455), .A2(n524), .A3(n398), .A4(n525), .A5(n441), 
        .A6(n527), .Y(n531) );
  INVX1_RVT U93 ( .A(SP16[6]), .Y(n441) );
  NAND3X0_RVT U94 ( .A1(n906), .A2(n907), .A3(IncDec_16[2]), .Y(n905) );
  AO22X1_RVT U95 ( .A1(n306), .A2(n908), .A3(n755), .A4(n1057), .Y(n907) );
  NAND2X0_RVT U96 ( .A1(n714), .A2(n793), .Y(n943) );
  NBUFFX2_RVT U97 ( .A(n248), .Y(n21) );
  OAI22X1_RVT U98 ( .A1(n1075), .A2(n935), .A3(n576), .A4(n937), .Y(
        RegAddrA[2]) );
  OA21X1_RVT U99 ( .A1(n714), .A2(n32), .A3(n941), .Y(n935) );
  INVX1_RVT U100 ( .A(n21), .Y(n250) );
  OA21X1_RVT U101 ( .A1(n186), .A2(N1107), .A3(Set_BusB_To[1]), .Y(n125) );
  OA22X1_RVT U102 ( .A1(n306), .A2(n564), .A3(n764), .A4(n306), .Y(n563) );
  NAND3X0_RVT U103 ( .A1(n823), .A2(n1127), .A3(n1124), .Y(n560) );
  NAND4X0_RVT U104 ( .A1(n1182), .A2(n1057), .A3(n222), .A4(n101), .Y(n591) );
  AO22X1_RVT U105 ( .A1(RegBusB[8]), .A2(n209), .A3(n27), .A4(n903), .Y(n930)
         );
  AO22X1_RVT U106 ( .A1(RegBusB[9]), .A2(n209), .A3(n27), .A4(n904), .Y(n929)
         );
  AO22X1_RVT U107 ( .A1(RegBusB[11]), .A2(n209), .A3(n27), .A4(n910), .Y(n927)
         );
  AO22X1_RVT U108 ( .A1(RegBusB[13]), .A2(n208), .A3(n27), .A4(n913), .Y(n925)
         );
  AO22X1_RVT U109 ( .A1(RegBusB[10]), .A2(n209), .A3(n27), .A4(n909), .Y(n928)
         );
  AO22X1_RVT U110 ( .A1(RegBusB[12]), .A2(n208), .A3(n27), .A4(n912), .Y(n926)
         );
  AO22X1_RVT U111 ( .A1(RegBusB[14]), .A2(n209), .A3(n27), .A4(n931), .Y(n924)
         );
  NAND2X0_RVT U112 ( .A1(n821), .A2(n440), .Y(n656) );
  AOI21X1_RVT U113 ( .A1(n308), .A2(n212), .A3(n164), .Y(n159) );
  NAND2X0_RVT U114 ( .A1(n620), .A2(n603), .Y(n617) );
  OR2X1_RVT U115 ( .A1(n284), .A2(n305), .Y(n286) );
  NAND3X0_RVT U116 ( .A1(n233), .A2(n561), .A3(n256), .Y(n212) );
  NAND3X0_RVT U117 ( .A1(n223), .A2(n101), .A3(ts[1]), .Y(n677) );
  AO21X1_RVT U118 ( .A1(n327), .A2(n819), .A3(n23), .Y(n818) );
  INVX1_RVT U119 ( .A(n397), .Y(n728) );
  OR2X1_RVT U120 ( .A1(n618), .A2(Special_LD[1]), .Y(n397) );
  NAND3X0_RVT U121 ( .A1(n823), .A2(n830), .A3(n1124), .Y(n433) );
  NOR2X0_RVT U122 ( .A1(n125), .A2(Set_BusB_To[3]), .Y(n158) );
  AND3X1_RVT U123 ( .A1(Set_BusB_To[3]), .A2(n127), .A3(Set_BusB_To[1]), .Y(
        n180) );
  AO21X1_RVT U124 ( .A1(RstP), .A2(n306), .A3(n743), .Y(n473) );
  AND2X1_RVT U125 ( .A1(n328), .A2(n471), .Y(n470) );
  AO21X1_RVT U126 ( .A1(n606), .A2(n328), .A3(n456), .Y(n471) );
  NAND4X0_RVT U127 ( .A1(I_BT), .A2(n1057), .A3(n222), .A4(n101), .Y(n382) );
  OR2X1_RVT U128 ( .A1(I_CCF), .A2(I_SCF), .Y(n383) );
  AND3X1_RVT U129 ( .A1(n213), .A2(n34), .A3(n548), .Y(n145) );
  NAND4X0_RVT U130 ( .A1(n1126), .A2(n1127), .A3(n1125), .A4(n816), .Y(n567)
         );
  AO21X1_RVT U131 ( .A1(n328), .A2(n590), .A3(n23), .Y(n586) );
  OA21X1_RVT U132 ( .A1(stop), .A2(n1158), .A3(n436), .Y(n409) );
  OR2X1_RVT U133 ( .A1(n809), .A2(n552), .Y(n852) );
  NAND3X0_RVT U134 ( .A1(n889), .A2(n890), .A3(n891), .Y(n835) );
  NAND4X0_RVT U135 ( .A1(n751), .A2(n762), .A3(n1128), .A4(n761), .Y(n759) );
  NAND3X0_RVT U136 ( .A1(n809), .A2(n213), .A3(n540), .Y(n853) );
  AO22X1_RVT U137 ( .A1(RegBusB[2]), .A2(n208), .A3(n27), .A4(n950), .Y(n918)
         );
  AO22X1_RVT U138 ( .A1(RegBusB[3]), .A2(n208), .A3(n27), .A4(n952), .Y(n917)
         );
  AO22X1_RVT U139 ( .A1(RegBusB[4]), .A2(n208), .A3(n713), .A4(n956), .Y(n916)
         );
  AO22X1_RVT U140 ( .A1(RegBusB[5]), .A2(n208), .A3(n713), .A4(n959), .Y(n915)
         );
  AO22X1_RVT U141 ( .A1(RegBusB[6]), .A2(n209), .A3(n27), .A4(n972), .Y(n914)
         );
  AO22X1_RVT U142 ( .A1(RegBusB[7]), .A2(n209), .A3(n27), .A4(n973), .Y(n911)
         );
  NAND3X0_RVT U143 ( .A1(n435), .A2(n277), .A3(n417), .Y(n424) );
  NAND3X0_RVT U144 ( .A1(n30), .A2(n664), .A3(n1149), .Y(n435) );
  NAND2X0_RVT U145 ( .A1(n375), .A2(n732), .Y(n373) );
  XOR3X1_RVT U146 ( .A1(SP16_A[15]), .A2(n269), .A3(\add_1284/carry[15] ), .Y(
        SP16[15]) );
  AO22X1_RVT U147 ( .A1(n262), .A2(SP[13]), .A3(n325), .A4(RegBusC[13]), .Y(
        SP16_A[13]) );
  AND3X1_RVT U148 ( .A1(n327), .A2(n617), .A3(n729), .Y(n607) );
  OA222X1_RVT U149 ( .A1(n509), .A2(n279), .A3(n233), .A4(n1166), .A5(n1049), 
        .A6(n561), .Y(n151) );
  OA222X1_RVT U150 ( .A1(n505), .A2(n285), .A3(n233), .A4(n1165), .A5(n1055), 
        .A6(n561), .Y(n136) );
  OA222X1_RVT U151 ( .A1(n501), .A2(n279), .A3(n233), .A4(n1164), .A5(n321), 
        .A6(n561), .Y(n128) );
  OA222X1_RVT U152 ( .A1(n497), .A2(n285), .A3(n233), .A4(n1163), .A5(n1054), 
        .A6(n561), .Y(n120) );
  OA222X1_RVT U153 ( .A1(n495), .A2(n279), .A3(n233), .A4(n1162), .A5(n1053), 
        .A6(n561), .Y(n112) );
  OA222X1_RVT U154 ( .A1(n487), .A2(n279), .A3(n233), .A4(n1160), .A5(n322), 
        .A6(n561), .Y(n96) );
  OA222X1_RVT U156 ( .A1(n491), .A2(n285), .A3(n233), .A4(n1161), .A5(n1052), 
        .A6(n561), .Y(n104) );
  OA222X1_RVT U157 ( .A1(n285), .A2(n485), .A3(n233), .A4(n1159), .A5(n561), 
        .A6(n323), .Y(n86) );
  AO21X1_RVT U158 ( .A1(n22), .A2(di[4]), .A3(n948), .Y(PC16_B[4]) );
  NAND4X0_RVT U159 ( .A1(n358), .A2(n286), .A3(n287), .A4(n288), .Y(n282) );
  OR2X1_RVT U160 ( .A1(n517), .A2(n2), .Y(n478) );
  OR2X1_RVT U161 ( .A1(n245), .A2(F[0]), .Y(n115) );
  NAND4X0_RVT U162 ( .A1(IncDec_16[2]), .A2(n673), .A3(n571), .A4(n574), .Y(
        n669) );
  NOR2X0_RVT U163 ( .A1(n278), .A2(n329), .Y(n595) );
  OR2X1_RVT U164 ( .A1(I_BT), .A2(I_BC), .Y(n404) );
  AND2X1_RVT U165 ( .A1(n328), .A2(n818), .Y(n817) );
  AO22X1_RVT U166 ( .A1(Set_BusB_To[0]), .A2(RegBusB[3]), .A3(RegBusB[11]), 
        .A4(n578), .Y(N1210) );
  AO22X1_RVT U167 ( .A1(n247), .A2(RegBusB[5]), .A3(RegBusB[13]), .A4(n578), 
        .Y(N1212) );
  AO22X1_RVT U168 ( .A1(n247), .A2(RegBusB[2]), .A3(RegBusB[10]), .A4(n578), 
        .Y(N1209) );
  NAND2X0_RVT U169 ( .A1(n440), .A2(n815), .Y(n401) );
  AO22X1_RVT U170 ( .A1(Set_BusB_To[0]), .A2(RegBusB[7]), .A3(RegBusB[15]), 
        .A4(n578), .Y(N1214) );
  OA21X1_RVT U171 ( .A1(n392), .A2(n329), .A3(n353), .Y(n369) );
  AND3X1_RVT U172 ( .A1(n350), .A2(n392), .A3(n596), .Y(n365) );
  OR2X1_RVT U173 ( .A1(n558), .A2(n1), .Y(n525) );
  NOR2X0_RVT U174 ( .A1(n454), .A2(n274), .Y(n443) );
  NOR2X0_RVT U175 ( .A1(n456), .A2(n443), .Y(n444) );
  AND3X1_RVT U176 ( .A1(n327), .A2(n454), .A3(n743), .Y(n446) );
  AO21X1_RVT U177 ( .A1(n324), .A2(di[5]), .A3(n896), .Y(SP16_B[5]) );
  AO21X1_RVT U178 ( .A1(JumpE), .A2(di[2]), .A3(n948), .Y(PC16_B[2]) );
  OA221X1_RVT U179 ( .A1(n553), .A2(n1016), .A3(n460), .A4(n279), .A5(n265), 
        .Y(n174) );
  AO21X1_RVT U180 ( .A1(n22), .A2(di[6]), .A3(n948), .Y(PC16_B[6]) );
  AND3X1_RVT U181 ( .A1(n468), .A2(n469), .A3(n470), .Y(n462) );
  AND3X1_RVT U182 ( .A1(n743), .A2(n468), .A3(n470), .Y(n458) );
  AND2X1_RVT U183 ( .A1(n470), .A2(n606), .Y(n459) );
  OA221X1_RVT U184 ( .A1(n553), .A2(n1020), .A3(n455), .A4(n285), .A5(n265), 
        .Y(n168) );
  OA221X1_RVT U185 ( .A1(n553), .A2(n1004), .A3(n472), .A4(n285), .A5(n265), 
        .Y(n192) );
  OA221X1_RVT U186 ( .A1(n553), .A2(n1000), .A3(n479), .A4(n279), .A5(n265), 
        .Y(n198) );
  NAND3X0_RVT U187 ( .A1(wait_n), .A2(n223), .A3(n755), .Y(n725) );
  NAND3X0_RVT U188 ( .A1(n222), .A2(n101), .A3(n223), .Y(n721) );
  AOI21X1_RVT U189 ( .A1(n559), .A2(n567), .A3(n587), .Y(n568) );
  NOR2X0_RVT U190 ( .A1(n587), .A2(n588), .Y(n570) );
  AND2X1_RVT U191 ( .A1(n711), .A2(n612), .Y(n685) );
  NAND2X0_RVT U192 ( .A1(n409), .A2(n392), .Y(n348) );
  NAND2X0_RVT U193 ( .A1(n392), .A2(n664), .Y(n344) );
  NAND3X0_RVT U194 ( .A1(n879), .A2(n880), .A3(n1184), .Y(n808) );
  AND3X1_RVT U195 ( .A1(n789), .A2(n790), .A3(n30), .Y(n788) );
  AOI21X1_RVT U196 ( .A1(n305), .A2(n758), .A3(n750), .Y(n739) );
  NAND3X0_RVT U197 ( .A1(n328), .A2(n763), .A3(halt_n), .Y(n758) );
  AND3X1_RVT U198 ( .A1(n760), .A2(n327), .A3(n1167), .Y(n757) );
  NAND2X0_RVT U199 ( .A1(n741), .A2(n740), .Y(n33) );
  AO22X1_RVT U200 ( .A1(n681), .A2(RegBusA[3]), .A3(n611), .A4(n699), .Y(n698)
         );
  AO22X1_RVT U201 ( .A1(n687), .A2(SP[3]), .A3(n688), .A4(SP[11]), .Y(n700) );
  OA22X1_RVT U202 ( .A1(n1029), .A2(n626), .A3(n999), .A4(n627), .Y(n652) );
  OA22X1_RVT U203 ( .A1(n964), .A2(n630), .A3(n1157), .A4(n631), .Y(n650) );
  OA22X1_RVT U204 ( .A1(n619), .A2(n628), .A3(n629), .A4(ACC[0]), .Y(n651) );
  OA22X1_RVT U205 ( .A1(n1032), .A2(n626), .A3(n1003), .A4(n627), .Y(n649) );
  OA22X1_RVT U206 ( .A1(n965), .A2(n630), .A3(n1156), .A4(n631), .Y(n647) );
  OA22X1_RVT U207 ( .A1(n413), .A2(n628), .A3(n629), .A4(ACC[1]), .Y(n648) );
  OA22X1_RVT U208 ( .A1(n1035), .A2(n626), .A3(n1007), .A4(n627), .Y(n646) );
  OA22X1_RVT U209 ( .A1(n966), .A2(n630), .A3(n1155), .A4(n631), .Y(n644) );
  OA22X1_RVT U210 ( .A1(n405), .A2(n628), .A3(n629), .A4(ACC[2]), .Y(n645) );
  OA222X1_RVT U211 ( .A1(n1038), .A2(n83), .A3(n1133), .A4(n315), .A5(n1154), 
        .A6(n316), .Y(n114) );
  OA22X1_RVT U212 ( .A1(n120), .A2(n311), .A3(n1039), .A4(n298), .Y(n113) );
  OA22X1_RVT U213 ( .A1(n151), .A2(n311), .A3(n1030), .A4(n303), .Y(n137) );
  OA222X1_RVT U214 ( .A1(n313), .A2(n509), .A3(n1166), .A4(n77), .A5(n78), 
        .A6(n1049), .Y(n140) );
  OA22X1_RVT U215 ( .A1(n136), .A2(n311), .A3(n1033), .A4(n303), .Y(n129) );
  OA222X1_RVT U216 ( .A1(n313), .A2(n505), .A3(n1165), .A4(n77), .A5(n78), 
        .A6(n1055), .Y(n132) );
  OA22X1_RVT U217 ( .A1(n128), .A2(n311), .A3(n1036), .A4(n303), .Y(n121) );
  OA222X1_RVT U218 ( .A1(n313), .A2(n501), .A3(n1164), .A4(n77), .A5(n78), 
        .A6(n321), .Y(n124) );
  OA22X1_RVT U219 ( .A1(n112), .A2(n311), .A3(n1042), .A4(n298), .Y(n105) );
  OA222X1_RVT U220 ( .A1(n313), .A2(n495), .A3(n1162), .A4(n77), .A5(n78), 
        .A6(n1053), .Y(n108) );
  OA22X1_RVT U221 ( .A1(n104), .A2(n87), .A3(n1045), .A4(n298), .Y(n97) );
  OA222X1_RVT U222 ( .A1(n312), .A2(n491), .A3(n1161), .A4(n77), .A5(n78), 
        .A6(n1052), .Y(n100) );
  OA22X1_RVT U223 ( .A1(n96), .A2(n311), .A3(n1048), .A4(n298), .Y(n89) );
  OA222X1_RVT U224 ( .A1(n313), .A2(n487), .A3(n1160), .A4(n77), .A5(n78), 
        .A6(n322), .Y(n92) );
  OA22X1_RVT U225 ( .A1(n86), .A2(n87), .A3(n1051), .A4(n298), .Y(n71) );
  OA222X1_RVT U226 ( .A1(n313), .A2(n485), .A3(n1159), .A4(n77), .A5(n78), 
        .A6(n323), .Y(n74) );
  NAND3X0_RVT U227 ( .A1(n345), .A2(n498), .A3(n499), .Y(n1257) );
  OA222X1_RVT U228 ( .A1(n497), .A2(n476), .A3(n402), .A4(n478), .A5(n422), 
        .A6(n480), .Y(n499) );
  OA22X1_RVT U229 ( .A1(n999), .A2(n147), .A3(n998), .A4(n303), .Y(n199) );
  OA22X1_RVT U230 ( .A1(n1144), .A2(n314), .A3(n317), .A4(n1049), .Y(n201) );
  OA22X1_RVT U231 ( .A1(n1015), .A2(n147), .A3(n1014), .A4(n303), .Y(n175) );
  OA22X1_RVT U232 ( .A1(n1140), .A2(n314), .A3(n317), .A4(n1053), .Y(n177) );
  OA22X1_RVT U233 ( .A1(n1011), .A2(n147), .A3(n1010), .A4(n303), .Y(n181) );
  OA22X1_RVT U234 ( .A1(n1141), .A2(n315), .A3(n317), .A4(n1054), .Y(n183) );
  OA22X1_RVT U235 ( .A1(n1027), .A2(n147), .A3(n1026), .A4(n303), .Y(n152) );
  OA22X1_RVT U236 ( .A1(n1137), .A2(n315), .A3(n323), .A4(n316), .Y(n154) );
  NAND3X0_RVT U237 ( .A1(n345), .A2(n503), .A3(n504), .Y(n1258) );
  OA222X1_RVT U238 ( .A1(n501), .A2(n476), .A3(n405), .A4(n478), .A5(n425), 
        .A6(n480), .Y(n504) );
  NAND3X0_RVT U239 ( .A1(n352), .A2(n507), .A3(n508), .Y(n1259) );
  OA222X1_RVT U240 ( .A1(n505), .A2(n476), .A3(n413), .A4(n478), .A5(n430), 
        .A6(n480), .Y(n508) );
  XOR3X1_RVT U241 ( .A1(PC[15]), .A2(n258), .A3(\add_1283/carry[15] ), .Y(
        PC16[15]) );
  AND3X1_RVT U242 ( .A1(Set_BusB_To[3]), .A2(n191), .A3(n117), .Y(n88) );
  AO21X1_RVT U243 ( .A1(ExchangeRS), .A2(n762), .A3(n23), .Y(n775) );
  OA22X1_RVT U244 ( .A1(N1121), .A2(n669), .A3(n566), .A4(n387), .Y(n667) );
  AO22X1_RVT U245 ( .A1(n594), .A2(n984), .A3(n595), .A4(ACC[0]), .Y(n1284) );
  AO22X1_RVT U246 ( .A1(n594), .A2(n985), .A3(n595), .A4(ACC[1]), .Y(n1283) );
  AO22X1_RVT U247 ( .A1(n594), .A2(n986), .A3(n595), .A4(ACC[2]), .Y(n1282) );
  AO22X1_RVT U248 ( .A1(n594), .A2(n988), .A3(n595), .A4(ACC[3]), .Y(n1281) );
  AO22X1_RVT U249 ( .A1(n278), .A2(n989), .A3(n595), .A4(ACC[4]), .Y(n1280) );
  AO22X1_RVT U250 ( .A1(n278), .A2(n992), .A3(n595), .A4(ACC[5]), .Y(n1279) );
  AO22X1_RVT U251 ( .A1(n278), .A2(n982), .A3(n595), .A4(ACC[6]), .Y(n1278) );
  AO22X1_RVT U253 ( .A1(n278), .A2(n1025), .A3(n595), .A4(ACC[7]), .Y(n1277)
         );
  AND2X1_RVT U254 ( .A1(N1102), .A2(n613), .Y(n51) );
  AND2X1_RVT U255 ( .A1(n785), .A2(ACC[7]), .Y(n605) );
  AOI21X1_RVT U256 ( .A1(n352), .A2(n733), .A3(n602), .Y(n241) );
  AO21X1_RVT U257 ( .A1(n589), .A2(n352), .A3(n1043), .Y(n765) );
  OA221X1_RVT U258 ( .A1(n43), .A2(n305), .A3(n620), .A4(Prefix[0]), .A5(n358), 
        .Y(n780) );
  AO22X1_RVT U259 ( .A1(n675), .A2(n866), .A3(n745), .A4(n746), .Y(n1325) );
  AND2X1_RVT U260 ( .A1(n747), .A2(n863), .Y(n745) );
  AO22X1_RVT U261 ( .A1(n675), .A2(n864), .A3(n748), .A4(n746), .Y(n1326) );
  AO21X1_RVT U262 ( .A1(n764), .A2(n768), .A3(iorq), .Y(n841) );
  AND4X1_RVT U263 ( .A1(n206), .A2(n227), .A3(n822), .A4(n515), .Y(n110) );
  AO22X1_RVT U264 ( .A1(n238), .A2(n816), .A3(n813), .A4(n779), .Y(n1350) );
  AND2X1_RVT U265 ( .A1(Set_BusA_To[3]), .A2(n616), .Y(n813) );
  OR2X1_RVT U266 ( .A1(I_BTR), .A2(I_BC), .Y(n894) );
  AO22X1_RVT U267 ( .A1(n615), .A2(n804), .A3(n817), .A4(IMode[0]), .Y(n1356)
         );
  AO22X1_RVT U268 ( .A1(n615), .A2(n799), .A3(n817), .A4(IMode[1]), .Y(n1355)
         );
  NAND4X0_RVT U269 ( .A1(n1184), .A2(n328), .A3(n310), .A4(n224), .Y(n309) );
  AO22X1_RVT U270 ( .A1(n681), .A2(RegBusA[4]), .A3(n611), .A4(n696), .Y(n695)
         );
  AO22X1_RVT U271 ( .A1(n687), .A2(SP[4]), .A3(n688), .A4(SP[12]), .Y(n697) );
  AO22X1_RVT U272 ( .A1(n238), .A2(ALU_Op_r[1]), .A3(ALU_Op[1]), .A4(n776), 
        .Y(n1338) );
  AO22X1_RVT U273 ( .A1(n681), .A2(RegBusA[5]), .A3(n611), .A4(n693), .Y(n692)
         );
  AO22X1_RVT U274 ( .A1(n239), .A2(ALU_Op_r[3]), .A3(ALU_Op[3]), .A4(n776), 
        .Y(n1336) );
  AO22X1_RVT U275 ( .A1(n239), .A2(ALU_Op_r[0]), .A3(ALU_Op[0]), .A4(n776), 
        .Y(n1339) );
  AO22X1_RVT U276 ( .A1(n238), .A2(ALU_Op_r[2]), .A3(ALU_Op[2]), .A4(n776), 
        .Y(n1337) );
  AO22X1_RVT U277 ( .A1(n681), .A2(RegBusA[6]), .A3(n611), .A4(n690), .Y(n689)
         );
  AO22X1_RVT U278 ( .A1(n687), .A2(SP[6]), .A3(n688), .A4(SP[14]), .Y(n691) );
  AO22X1_RVT U279 ( .A1(n681), .A2(RegBusA[7]), .A3(n611), .A4(n683), .Y(n680)
         );
  AO22X1_RVT U280 ( .A1(n687), .A2(SP[7]), .A3(n688), .A4(SP[15]), .Y(n686) );
  AO22X1_RVT U281 ( .A1(n526), .A2(NMICycle), .A3(n770), .A4(n672), .Y(n1334)
         );
  OR2X1_RVT U282 ( .A1(n39), .A2(Set_Addr_To[1]), .Y(n42) );
  AO22X1_RVT U283 ( .A1(n526), .A2(IntCycle), .A3(n770), .A4(n842), .Y(n1363)
         );
  OA221X1_RVT U284 ( .A1(n405), .A2(n401), .A3(n773), .A4(n403), .A5(n358), 
        .Y(n385) );
  NAND3X0_RVT U285 ( .A1(reset_n), .A2(n554), .A3(n555), .Y(n1268) );
  OA222X1_RVT U286 ( .A1(n481), .A2(n524), .A3(n619), .A4(n525), .A5(n451), 
        .A6(n527), .Y(n555) );
  NAND3X0_RVT U287 ( .A1(n352), .A2(n546), .A3(n547), .Y(n1266) );
  OA222X1_RVT U288 ( .A1(n472), .A2(n524), .A3(n405), .A4(n525), .A5(n449), 
        .A6(n527), .Y(n547) );
  INVX1_RVT U289 ( .A(SP16[2]), .Y(n449) );
  NAND3X0_RVT U290 ( .A1(n352), .A2(n542), .A3(n543), .Y(n1265) );
  OA222X1_RVT U291 ( .A1(n465), .A2(n524), .A3(n402), .A4(n525), .A5(n448), 
        .A6(n527), .Y(n543) );
  NAND3X0_RVT U292 ( .A1(n352), .A2(n538), .A3(n539), .Y(n1264) );
  OA222X1_RVT U293 ( .A1(n463), .A2(n524), .A3(n400), .A4(n525), .A5(n447), 
        .A6(n527), .Y(n539) );
  AO21X1_RVT U294 ( .A1(n1175), .A2(I_RETN), .A3(n834), .Y(n847) );
  OAI22X1_RVT U295 ( .A1(n953), .A2(n782), .A3(n783), .A4(n784), .Y(n1342) );
  NAND4X0_RVT U296 ( .A1(n785), .A2(n1176), .A3(n614), .A4(n766), .Y(n783) );
  AO22X1_RVT U297 ( .A1(n355), .A2(n356), .A3(n357), .A4(n601), .Y(n354) );
  AO22X1_RVT U298 ( .A1(n355), .A2(n378), .A3(n379), .A4(n601), .Y(n377) );
  OA22X1_RVT U299 ( .A1(n1023), .A2(n147), .A3(n1022), .A4(n303), .Y(n160) );
  OA22X1_RVT U300 ( .A1(n1021), .A2(n167), .A3(n1138), .A4(n314), .Y(n162) );
  OA22X1_RVT U301 ( .A1(n317), .A2(n322), .A3(n168), .A4(n87), .Y(n161) );
  OA22X1_RVT U302 ( .A1(n1019), .A2(n147), .A3(n1018), .A4(n303), .Y(n169) );
  OA22X1_RVT U303 ( .A1(n1017), .A2(n167), .A3(n1139), .A4(n315), .Y(n171) );
  OA22X1_RVT U304 ( .A1(n1007), .A2(n147), .A3(n1006), .A4(n303), .Y(n187) );
  OA22X1_RVT U305 ( .A1(n1005), .A2(n167), .A3(n1142), .A4(n314), .Y(n189) );
  OA22X1_RVT U306 ( .A1(n317), .A2(n321), .A3(n192), .A4(n87), .Y(n188) );
  OA22X1_RVT U307 ( .A1(n1003), .A2(n147), .A3(n1002), .A4(n303), .Y(n193) );
  OA22X1_RVT U308 ( .A1(n1001), .A2(n167), .A3(n1143), .A4(n315), .Y(n195) );
  OA22X1_RVT U309 ( .A1(n317), .A2(n1055), .A3(n198), .A4(n311), .Y(n194) );
  NAND3X0_RVT U310 ( .A1(n719), .A2(n720), .A3(n358), .Y(n1319) );
  AO21X1_RVT U311 ( .A1(n724), .A2(n723), .A3(n961), .Y(n719) );
  NAND4X0_RVT U312 ( .A1(n206), .A2(n721), .A3(n722), .A4(n723), .Y(n720) );
  NAND3X0_RVT U313 ( .A1(n725), .A2(n726), .A3(n721), .Y(n723) );
  AO21X1_RVT U314 ( .A1(n223), .A2(n1046), .A3(n676), .Y(n792) );
  INVX0_RVT U315 ( .A(n934), .Y(n209) );
  NAND3X1_RVT U316 ( .A1(n939), .A2(n934), .A3(n943), .Y(n942) );
  INVX1_RVT U317 ( .A(n1178), .Y(mc[0]) );
  INVX1_RVT U318 ( .A(n785), .Y(n329) );
  INVX1_RVT U319 ( .A(n242), .Y(n244) );
  AO222X1_RVT U320 ( .A1(ACC[0]), .A2(n185), .A3(di[0]), .A4(n173), .A5(PC[8]), 
        .A6(n10), .Y(n5) );
  AOI22X1_RVT U321 ( .A1(N258), .A2(n318), .A3(n203), .A4(PC[11]), .Y(n6) );
  AOI22X1_RVT U322 ( .A1(N254), .A2(n319), .A3(n545), .A4(PC[7]), .Y(n7) );
  AOI22X1_RVT U323 ( .A1(N250), .A2(n318), .A3(n203), .A4(PC[3]), .Y(n8) );
  AOI22X1_RVT U324 ( .A1(N256), .A2(n319), .A3(n203), .A4(PC[9]), .Y(n9) );
  AND2X1_RVT U325 ( .A1(n123), .A2(n247), .Y(n10) );
  AOI21X1_RVT U326 ( .A1(JumpE), .A2(di[7]), .A3(n948), .Y(n53) );
  INVX1_RVT U327 ( .A(reset_n), .Y(n360) );
  NOR2X0_RVT U328 ( .A1(n360), .A2(n14), .Y(n30) );
  AND3X1_RVT U329 ( .A1(n113), .A2(n6), .A3(n116), .Y(n11) );
  INVX1_RVT U330 ( .A(n261), .Y(n262) );
  INVX1_RVT U331 ( .A(n261), .Y(n263) );
  AOI22X1_RVT U332 ( .A1(N247), .A2(n319), .A3(n545), .A4(PC[0]), .Y(n12) );
  AOI22X1_RVT U333 ( .A1(N251), .A2(n319), .A3(n205), .A4(PC[4]), .Y(n13) );
  AOI22X1_RVT U334 ( .A1(N259), .A2(n319), .A3(n205), .A4(PC[12]), .Y(n15) );
  AOI22X1_RVT U335 ( .A1(N257), .A2(n319), .A3(n205), .A4(PC[10]), .Y(n16) );
  AOI22X1_RVT U336 ( .A1(N255), .A2(n319), .A3(n205), .A4(PC[8]), .Y(n17) );
  AND3X1_RVT U337 ( .A1(n118), .A2(n197), .A3(N1207), .Y(n18) );
  NAND4X0_RVT U338 ( .A1(Inc_WZ), .A2(Set_Addr_To[2]), .A3(n207), .A4(n144), 
        .Y(n57) );
  OR2X1_RVT U339 ( .A1(n932), .A2(n933), .Y(n62) );
  INVX1_RVT U340 ( .A(Set_BusB_To[1]), .Y(n186) );
  AND2X1_RVT U341 ( .A1(n474), .A2(n345), .Y(n19) );
  NOR3X0_RVT U342 ( .A1(n824), .A2(busak_n), .A3(n23), .Y(n20) );
  INVX1_RVT U343 ( .A(n945), .Y(n713) );
  OA222X1_RVT U344 ( .A1(n1050), .A2(n83), .A3(n1129), .A4(n315), .A5(n1150), 
        .A6(n316), .Y(n72) );
  NOR4X1_RVT U345 ( .A1(ID16[1]), .A2(ID16[15]), .A3(ID16[14]), .A4(ID16[13]), 
        .Y(n376) );
  NAND2X0_RVT U346 ( .A1(n475), .A2(n19), .Y(n1253) );
  INVX1_RVT U347 ( .A(n360), .Y(n345) );
  NAND3X0_RVT U348 ( .A1(n345), .A2(n483), .A3(n484), .Y(n1254) );
  OA222X1_RVT U349 ( .A1(n487), .A2(n476), .A3(n398), .A4(n478), .A5(n415), 
        .A6(n480), .Y(n484) );
  INVX1_RVT U350 ( .A(n219), .Y(n299) );
  INVX1_RVT U351 ( .A(n621), .Y(n22) );
  INVX1_RVT U352 ( .A(JumpE), .Y(n621) );
  INVX1_RVT U353 ( .A(n216), .Y(n23) );
  NBUFFX2_RVT U354 ( .A(reset_n), .Y(n216) );
  AO21X1_RVT U355 ( .A1(Special_LD[0]), .A2(n352), .A3(n602), .Y(n594) );
  NBUFFX2_RVT U356 ( .A(n226), .Y(n24) );
  NBUFFX2_RVT U357 ( .A(n226), .Y(n25) );
  NBUFFX2_RVT U358 ( .A(n226), .Y(n26) );
  AND2X1_RVT U359 ( .A1(n289), .A2(n556), .Y(n226) );
  AND3X1_RVT U360 ( .A1(n282), .A2(n284), .A3(n762), .Y(n228) );
  OA222X1_RVT U361 ( .A1(n485), .A2(n476), .A3(n388), .A4(n478), .A5(n480), 
        .A6(n414), .Y(n475) );
  INVX1_RVT U362 ( .A(n945), .Y(n27) );
  FADDX1_RVT U363 ( .A(SP16_A[1]), .B(\add_1284/carry[1] ), .CI(SP16_B[1]), 
        .CO(\add_1284/carry[2] ), .S(SP16[1]) );
  FADDX1_RVT U364 ( .A(SP16_A[5]), .B(SP16_B[5]), .CI(\add_1284/carry[5] ), 
        .CO(\add_1284/carry[6] ), .S(SP16[5]) );
  FADDX1_RVT U365 ( .A(SP16_A[7]), .B(n271), .CI(\add_1284/carry[7] ), .CO(
        \add_1284/carry[8] ), .S(SP16[7]) );
  FADDX1_RVT U366 ( .A(SP16_A[4]), .B(SP16_B[4]), .CI(\add_1284/carry[4] ), 
        .CO(\add_1284/carry[5] ), .S(SP16[4]) );
  FADDX1_RVT U367 ( .A(SP16_A[3]), .B(SP16_B[3]), .CI(\add_1284/carry[3] ), 
        .CO(\add_1284/carry[4] ), .S(SP16[3]) );
  INVX0_RVT U368 ( .A(IncDec_16[3]), .Y(n248) );
  NAND2X0_RVT U369 ( .A1(n944), .A2(n941), .Y(n28) );
  NAND2X0_RVT U370 ( .A1(n576), .A2(IncDec_16[0]), .Y(n29) );
  NAND3X0_RVT U371 ( .A1(n28), .A2(n29), .A3(n945), .Y(RegAddrA[0]) );
  NAND2X0_RVT U372 ( .A1(n114), .A2(n11), .Y(n1189) );
  NAND2X0_RVT U373 ( .A1(n345), .A2(n834), .Y(n724) );
  INVX0_RVT U374 ( .A(n329), .Y(n328) );
  INVX0_RVT U375 ( .A(n329), .Y(n327) );
  NAND3X0_RVT U376 ( .A1(n947), .A2(n571), .A3(IncDec_16[1]), .Y(n939) );
  INVX0_RVT U377 ( .A(n939), .Y(n32) );
  OAI221X1_RVT U378 ( .A1(n65), .A2(n385), .A3(n1169), .A4(n386), .A5(n40), 
        .Y(n1234) );
  AND3X1_RVT U379 ( .A1(n279), .A2(n265), .A3(n553), .Y(n45) );
  AND2X1_RVT U380 ( .A1(n785), .A2(n663), .Y(n631) );
  INVX1_RVT U381 ( .A(n851), .Y(n35) );
  NAND3X0_RVT U382 ( .A1(n1040), .A2(n1178), .A3(n537), .Y(n798) );
  AND2X1_RVT U383 ( .A1(n1040), .A2(n797), .Y(n794) );
  INVX0_RVT U384 ( .A(n386), .Y(n65) );
  NAND3X0_RVT U385 ( .A1(ts[1]), .A2(n101), .A3(ts[0]), .Y(n897) );
  AO22X1_RVT U386 ( .A1(n511), .A2(n839), .A3(n715), .A4(n1040), .Y(n1318) );
  AO21X1_RVT U387 ( .A1(n1040), .A2(n718), .A3(n23), .Y(n717) );
  AO22X1_RVT U388 ( .A1(n1043), .A2(n536), .A3(n206), .A4(n893), .Y(n1367) );
  OR2X4_RVT U389 ( .A1(n404), .A2(I_BTR), .Y(n310) );
  INVX0_RVT U390 ( .A(n296), .Y(n235) );
  INVX0_RVT U391 ( .A(n46), .Y(n277) );
  INVX1_RVT U392 ( .A(I_SCF), .Y(n730) );
  INVX0_RVT U393 ( .A(n52), .Y(n273) );
  INVX0_RVT U394 ( .A(n53), .Y(n258) );
  INVX1_RVT U395 ( .A(n471), .Y(n604) );
  INVX0_RVT U396 ( .A(n52), .Y(n269) );
  INVX0_RVT U397 ( .A(n60), .Y(n314) );
  INVX0_RVT U398 ( .A(n59), .Y(n316) );
  INVX0_RVT U399 ( .A(n59), .Y(n317) );
  INVX0_RVT U400 ( .A(n60), .Y(n315) );
  INVX0_RVT U401 ( .A(n247), .Y(n578) );
  INVX0_RVT U402 ( .A(n617), .Y(n727) );
  INVX0_RVT U403 ( .A(n61), .Y(n264) );
  INVX0_RVT U404 ( .A(n62), .Y(n268) );
  INVX0_RVT U405 ( .A(n61), .Y(n266) );
  INVX0_RVT U406 ( .A(n62), .Y(n267) );
  INVX1_RVT U407 ( .A(n656), .Y(n771) );
  INVX0_RVT U408 ( .A(n64), .Y(n313) );
  INVX0_RVT U409 ( .A(n64), .Y(n312) );
  OR2X1_RVT U410 ( .A1(n722), .A2(n35), .Y(n849) );
  INVX0_RVT U411 ( .A(n348), .Y(n597) );
  INVX0_RVT U412 ( .A(SP16[3]), .Y(n448) );
  INVX0_RVT U413 ( .A(SP16[5]), .Y(n445) );
  INVX0_RVT U414 ( .A(SP16[8]), .Y(n437) );
  INVX0_RVT U415 ( .A(SP16[1]), .Y(n450) );
  INVX0_RVT U416 ( .A(SP16[9]), .Y(n430) );
  INVX0_RVT U417 ( .A(SP16[7]), .Y(n438) );
  INVX0_RVT U418 ( .A(SP16[4]), .Y(n447) );
  INVX1_RVT U419 ( .A(Set_BusB_To[0]), .Y(n245) );
  INVX1_RVT U420 ( .A(n772), .Y(n672) );
  INVX0_RVT U421 ( .A(n736), .Y(n519) );
  IBUFFX2_RVT U422 ( .A(IncDec_16[1]), .Y(n574) );
  NAND3X0_RVT U423 ( .A1(n730), .A2(n975), .A3(n375), .Y(n372) );
  INVX1_RVT U424 ( .A(n382), .Y(n659) );
  NAND3X0_RVT U425 ( .A1(n734), .A2(n839), .A3(n674), .Y(n772) );
  AND4X1_RVT U426 ( .A1(n518), .A2(n440), .A3(n593), .A4(n432), .Y(n559) );
  NAND4X0_RVT U427 ( .A1(n661), .A2(n389), .A3(n386), .A4(n350), .Y(n40) );
  NAND4X0_RVT U428 ( .A1(n71), .A2(n72), .A3(n41), .A4(n74), .Y(n1185) );
  AOI22X1_RVT U429 ( .A1(N262), .A2(n318), .A3(n203), .A4(PC[15]), .Y(n41) );
  NAND4X0_RVT U430 ( .A1(n105), .A2(n106), .A3(n15), .A4(n108), .Y(n1188) );
  NAND4X0_RVT U431 ( .A1(n121), .A2(n122), .A3(n16), .A4(n124), .Y(n1190) );
  NAND4X0_RVT U432 ( .A1(n129), .A2(n130), .A3(n9), .A4(n132), .Y(n1191) );
  NAND4X0_RVT U433 ( .A1(n137), .A2(n138), .A3(n17), .A4(n140), .Y(n1192) );
  NAND4X0_RVT U434 ( .A1(n199), .A2(n200), .A3(n201), .A4(n12), .Y(n1200) );
  NAND4X0_RVT U435 ( .A1(n152), .A2(n153), .A3(n154), .A4(n7), .Y(n1193) );
  NAND4X0_RVT U436 ( .A1(n175), .A2(n176), .A3(n177), .A4(n13), .Y(n1196) );
  NAND4X0_RVT U437 ( .A1(n181), .A2(n182), .A3(n183), .A4(n8), .Y(n1197) );
  AO22X1_RVT U438 ( .A1(n687), .A2(SP[5]), .A3(n688), .A4(SP[13]), .Y(n694) );
  AO22X1_RVT U439 ( .A1(n687), .A2(SP[0]), .A3(n688), .A4(SP[8]), .Y(n709) );
  NAND3X0_RVT U440 ( .A1(n883), .A2(IR[1]), .A3(n764), .Y(n882) );
  INVX0_RVT U441 ( .A(n168), .Y(n453) );
  INVX0_RVT U442 ( .A(n174), .Y(n457) );
  INVX0_RVT U443 ( .A(n198), .Y(n477) );
  INVX0_RVT U444 ( .A(n192), .Y(n467) );
  INVX1_RVT U445 ( .A(n827), .Y(n95) );
  AOI21X1_RVT U446 ( .A1(n827), .A2(n222), .A3(n829), .Y(n102) );
  NAND4X0_RVT U447 ( .A1(n1124), .A2(n440), .A3(n665), .A4(n830), .Y(n899) );
  NAND4X0_RVT U448 ( .A1(n1124), .A2(n1127), .A3(n440), .A4(n665), .Y(n900) );
  NAND3X0_RVT U449 ( .A1(n764), .A2(n768), .A3(n1173), .Y(n837) );
  INVX1_RVT U450 ( .A(ALU_Op[2]), .Y(n614) );
  NAND3X0_RVT U451 ( .A1(ALU_Op[0]), .A2(n751), .A3(n954), .Y(n784) );
  NAND3X0_RVT U452 ( .A1(n39), .A2(n866), .A3(n339), .Y(n38) );
  AO21X1_RVT U453 ( .A1(n864), .A2(n33), .A3(n744), .Y(n37) );
  NAND3X0_RVT U454 ( .A1(n301), .A2(n302), .A3(n300), .Y(n879) );
  INVX1_RVT U455 ( .A(n1176), .Y(mc[2]) );
  NAND3X0_RVT U456 ( .A1(n752), .A2(mc[2]), .A3(n888), .Y(n809) );
  INVX1_RVT U457 ( .A(n404), .Y(n661) );
  INVX0_RVT U458 ( .A(n274), .Y(n785) );
  INVX0_RVT U459 ( .A(Prefix[1]), .Y(n734) );
  INVX1_RVT U460 ( .A(n33), .Y(n735) );
  INVX0_RVT U461 ( .A(n468), .Y(n606) );
  INVX0_RVT U462 ( .A(n383), .Y(n732) );
  INVX1_RVT U463 ( .A(n897), .Y(n325) );
  AND2X1_RVT U464 ( .A1(n291), .A2(n44), .Y(n259) );
  AND2X1_RVT U465 ( .A1(JumpXY), .A2(n561), .Y(n44) );
  INVX1_RVT U466 ( .A(ExchangeRp), .Y(n242) );
  INVX0_RVT U467 ( .A(n469), .Y(n743) );
  INVX0_RVT U468 ( .A(n747), .Y(n675) );
  NBUFFX2_RVT U469 ( .A(n594), .Y(n278) );
  INVX1_RVT U470 ( .A(n843), .Y(n526) );
  INVX1_RVT U471 ( .A(LDSPHL), .Y(n741) );
  INVX1_RVT U472 ( .A(JumpXY), .Y(n740) );
  INVX1_RVT U473 ( .A(n848), .Y(n666) );
  INVX1_RVT U474 ( .A(SetEI), .Y(n670) );
  AND2X1_RVT U475 ( .A1(n251), .A2(n263), .Y(n896) );
  INVX1_RVT U476 ( .A(n52), .Y(n271) );
  INVX1_RVT U477 ( .A(n53), .Y(n254) );
  NAND2X0_RVT U478 ( .A1(n654), .A2(n658), .Y(n629) );
  NBUFFX2_RVT U479 ( .A(n228), .Y(n289) );
  AND2X1_RVT U480 ( .A1(n119), .A2(Set_BusB_To[0]), .Y(n185) );
  NOR2X0_RVT U481 ( .A1(Call), .A2(RstP), .Y(n236) );
  OR2X1_RVT U482 ( .A1(n304), .A2(n45), .Y(n287) );
  INVX0_RVT U483 ( .A(n369), .Y(n596) );
  NAND2X0_RVT U484 ( .A1(Special_LD[1]), .A2(n729), .Y(n622) );
  NBUFFX2_RVT U485 ( .A(n228), .Y(n292) );
  AND2X1_RVT U486 ( .A1(n292), .A2(n212), .Y(n257) );
  NBUFFX2_RVT U487 ( .A(n232), .Y(n296) );
  NBUFFX2_RVT U488 ( .A(n228), .Y(n291) );
  NAND2X0_RVT U489 ( .A1(n516), .A2(n741), .Y(n480) );
  NBUFFX2_RVT U490 ( .A(n232), .Y(n297) );
  NAND2X0_RVT U491 ( .A1(LDSPHL), .A2(n516), .Y(n476) );
  INVX0_RVT U492 ( .A(n818), .Y(n615) );
  NBUFFX2_RVT U493 ( .A(n232), .Y(n295) );
  NAND2X0_RVT U494 ( .A1(n661), .A2(n397), .Y(n406) );
  INVX1_RVT U495 ( .A(n57), .Y(n319) );
  INVX1_RVT U496 ( .A(n57), .Y(n318) );
  INVX1_RVT U497 ( .A(n373), .Y(n655) );
  INVX0_RVT U498 ( .A(n790), .Y(n710) );
  AND2X1_RVT U499 ( .A1(n1040), .A2(n843), .Y(n770) );
  NAND2X0_RVT U500 ( .A1(n345), .A2(n844), .Y(n843) );
  INVX1_RVT U501 ( .A(n344), .Y(n599) );
  NOR2X0_RVT U502 ( .A1(n419), .A2(n274), .Y(n46) );
  INVX1_RVT U503 ( .A(n932), .Y(n714) );
  NOR2X0_RVT U504 ( .A1(I_RLD), .A2(I_RRD), .Y(n573) );
  INVX1_RVT U505 ( .A(n216), .Y(n363) );
  NOR3X0_RVT U506 ( .A1(n711), .A2(Set_BusA_To[3]), .A3(n275), .Y(n712) );
  INVX1_RVT U507 ( .A(n245), .Y(n247) );
  INVX1_RVT U508 ( .A(n679), .Y(n611) );
  AND2X1_RVT U509 ( .A1(n653), .A2(n397), .Y(n654) );
  INVX1_RVT U510 ( .A(n586), .Y(n774) );
  NAND2X0_RVT U511 ( .A1(n771), .A2(n631), .Y(n628) );
  NAND3X0_RVT U512 ( .A1(n227), .A2(n283), .A3(I_CPL), .Y(n418) );
  AND2X1_RVT U513 ( .A1(n601), .A2(n350), .Y(n355) );
  AND3X1_RVT U514 ( .A1(n375), .A2(n383), .A3(n355), .Y(n351) );
  NAND2X0_RVT U515 ( .A1(n283), .A2(n284), .Y(n281) );
  NAND2X0_RVT U516 ( .A1(n557), .A2(n741), .Y(n527) );
  AOI21X1_RVT U517 ( .A1(n434), .A2(n518), .A3(n2), .Y(n516) );
  INVX1_RVT U518 ( .A(n350), .Y(n773) );
  NAND2X0_RVT U519 ( .A1(IMode[1]), .A2(IMode[0]), .Y(n819) );
  AND2X1_RVT U520 ( .A1(Read_To_Acc), .A2(n779), .Y(n812) );
  INVX0_RVT U521 ( .A(n852), .Y(n549) );
  NAND2X0_RVT U522 ( .A1(n557), .A2(LDSPHL), .Y(n524) );
  INVX0_RVT U523 ( .A(n853), .Y(n537) );
  AND3X1_RVT U524 ( .A1(n612), .A2(n613), .A3(Set_BusA_To[3]), .Y(n687) );
  NAND3X0_RVT U525 ( .A1(n407), .A2(n277), .A3(n408), .Y(n333) );
  INVX1_RVT U526 ( .A(n724), .Y(n1043) );
  INVX1_RVT U527 ( .A(n43), .Y(n744) );
  AND4X1_RVT U528 ( .A1(Set_Addr_To[2]), .A2(n144), .A3(n609), .A4(n544), .Y(
        n59) );
  INVX1_RVT U529 ( .A(n669), .Y(n566) );
  AND4X1_RVT U530 ( .A1(Set_Addr_To[2]), .A2(n210), .A3(Set_Addr_To[0]), .A4(
        n544), .Y(n60) );
  NAND2X0_RVT U531 ( .A1(n753), .A2(n218), .Y(n265) );
  INVX1_RVT U532 ( .A(n220), .Y(n753) );
  INVX1_RVT U533 ( .A(n665), .Y(n823) );
  INVX0_RVT U534 ( .A(Set_Addr_To[1]), .Y(n544) );
  OR2X1_RVT U535 ( .A1(n726), .A2(n532), .Y(n844) );
  NAND2X0_RVT U536 ( .A1(n933), .A2(n714), .Y(n61) );
  INVX1_RVT U537 ( .A(n353), .Y(n601) );
  NAND2X0_RVT U538 ( .A1(n735), .A2(n43), .Y(n39) );
  XOR2X1_RVT U539 ( .A1(SP16_B[0]), .A2(SP16_A[0]), .Y(SP16[0]) );
  OA21X1_RVT U540 ( .A1(n401), .A2(n274), .A3(n216), .Y(n408) );
  NAND2X0_RVT U542 ( .A1(n934), .A2(n945), .Y(n932) );
  NAND2X0_RVT U543 ( .A1(n532), .A2(n871), .Y(n855) );
  AO21X1_RVT U544 ( .A1(n781), .A2(n865), .A3(n666), .Y(n856) );
  INVX1_RVT U545 ( .A(n293), .Y(n751) );
  INVX1_RVT U546 ( .A(n401), .Y(n777) );
  NAND2X0_RVT U547 ( .A1(n2), .A2(SP[15]), .Y(n474) );
  NAND2X0_RVT U548 ( .A1(n1), .A2(SP[7]), .Y(n522) );
  AO222X1_RVT U549 ( .A1(n597), .A2(n1009), .A3(F_Out[7]), .A4(n599), .A5(n592), .A6(di[7]), .Y(n331) );
  AO21X1_RVT U550 ( .A1(n946), .A2(n677), .A3(n34), .Y(n941) );
  INVX0_RVT U551 ( .A(n676), .Y(n755) );
  FADDX1_RVT U552 ( .A(SP16_A[9]), .B(n271), .CI(\add_1284/carry[9] ), .CO(
        \add_1284/carry[10] ), .S(SP16[9]) );
  AO22X1_RVT U553 ( .A1(n263), .A2(SP[9]), .A3(n324), .A4(RegBusC[9]), .Y(
        SP16_A[9]) );
  FADDX1_RVT U554 ( .A(SP16_A[2]), .B(SP16_B[2]), .CI(\add_1284/carry[2] ), 
        .CO(\add_1284/carry[3] ), .S(SP16[2]) );
  AO22X1_RVT U555 ( .A1(n262), .A2(SP[2]), .A3(n326), .A4(RegBusC[2]), .Y(
        SP16_A[2]) );
  AO22X1_RVT U556 ( .A1(n263), .A2(SP[7]), .A3(n324), .A4(RegBusC[7]), .Y(
        SP16_A[7]) );
  FADDX1_RVT U557 ( .A(SP16_A[6]), .B(SP16_B[6]), .CI(\add_1284/carry[6] ), 
        .CO(\add_1284/carry[7] ), .S(SP16[6]) );
  FADDX1_RVT U558 ( .A(SP16_A[8]), .B(n273), .CI(\add_1284/carry[8] ), .CO(
        \add_1284/carry[9] ), .S(SP16[8]) );
  AO22X1_RVT U559 ( .A1(n262), .A2(SP[8]), .A3(n326), .A4(RegBusC[8]), .Y(
        SP16_A[8]) );
  NAND2X0_RVT U560 ( .A1(n2), .A2(SP[9]), .Y(n507) );
  AO222X1_RVT U561 ( .A1(SP16[7]), .A2(n458), .A3(n459), .A4(di[7]), .A5(n604), 
        .A6(TmpAddr[7]), .Y(n1245) );
  AO222X1_RVT U562 ( .A1(SP16[6]), .A2(n458), .A3(n459), .A4(di[6]), .A5(n604), 
        .A6(TmpAddr[6]), .Y(n1246) );
  AO222X1_RVT U563 ( .A1(SP16[2]), .A2(n458), .A3(n459), .A4(di[2]), .A5(n604), 
        .A6(TmpAddr[2]), .Y(n1250) );
  INVX0_RVT U564 ( .A(n96), .Y(n486) );
  NAND2X0_RVT U565 ( .A1(n2), .A2(SP[8]), .Y(n512) );
  NAND2X0_RVT U566 ( .A1(n588), .A2(n591), .Y(n590) );
  INVX0_RVT U567 ( .A(n104), .Y(n490) );
  AND2X1_RVT U568 ( .A1(n621), .A2(n861), .Y(n948) );
  AO22X1_RVT U569 ( .A1(n262), .A2(SP[15]), .A3(n324), .A4(RegBusC[15]), .Y(
        SP16_A[15]) );
  AO22X1_RVT U570 ( .A1(n262), .A2(SP[11]), .A3(n326), .A4(RegBusC[11]), .Y(
        SP16_A[11]) );
  AO22X1_RVT U571 ( .A1(n263), .A2(SP[12]), .A3(n324), .A4(RegBusC[12]), .Y(
        SP16_A[12]) );
  AO22X1_RVT U572 ( .A1(n263), .A2(SP[14]), .A3(n326), .A4(RegBusC[14]), .Y(
        SP16_A[14]) );
  INVX0_RVT U573 ( .A(n112), .Y(n492) );
  NAND3X0_RVT U574 ( .A1(n432), .A2(n442), .A3(n434), .Y(n657) );
  NAND2X0_RVT U575 ( .A1(n2), .A2(SP[14]), .Y(n483) );
  NAND2X0_RVT U576 ( .A1(n1), .A2(SP[6]), .Y(n530) );
  INVX0_RVT U577 ( .A(n120), .Y(n496) );
  NAND2X0_RVT U578 ( .A1(n2), .A2(SP[13]), .Y(n488) );
  AO221X1_RVT U579 ( .A1(n423), .A2(n424), .A3(n600), .A4(n975), .A5(n426), 
        .Y(n1236) );
  INVX1_RVT U580 ( .A(n424), .Y(n600) );
  AND3X1_RVT U581 ( .A1(n424), .A2(n350), .A3(n427), .Y(n426) );
  INVX0_RVT U582 ( .A(n151), .Y(n506) );
  INVX0_RVT U583 ( .A(n128), .Y(n500) );
  INVX0_RVT U584 ( .A(n136), .Y(n502) );
  NAND2X0_RVT U585 ( .A1(n1), .A2(SP[5]), .Y(n534) );
  NAND2X0_RVT U586 ( .A1(n2), .A2(SP[12]), .Y(n493) );
  NAND2X0_RVT U587 ( .A1(n1), .A2(SP[4]), .Y(n538) );
  NAND2X0_RVT U588 ( .A1(n2), .A2(SP[11]), .Y(n498) );
  NAND2X0_RVT U589 ( .A1(n1), .A2(SP[3]), .Y(n542) );
  NAND2X0_RVT U590 ( .A1(n2), .A2(SP[10]), .Y(n503) );
  INVX1_RVT U591 ( .A(n808), .Y(n540) );
  NAND2X0_RVT U592 ( .A1(n1), .A2(SP[2]), .Y(n546) );
  NAND2X0_RVT U593 ( .A1(n1), .A2(SP[1]), .Y(n550) );
  NAND3X0_RVT U594 ( .A1(n306), .A2(n30), .A3(n760), .Y(n620) );
  AO222X1_RVT U595 ( .A1(n365), .A2(n366), .A3(n367), .A4(n596), .A5(n369), 
        .A6(F[4]), .Y(n1232) );
  AO221X1_RVT U596 ( .A1(F_Out[4]), .A2(n361), .A3(n364), .A4(n981), .A5(n371), 
        .Y(n366) );
  NAND2X0_RVT U597 ( .A1(n372), .A2(n373), .Y(n371) );
  AO222X1_RVT U598 ( .A1(n365), .A2(n410), .A3(n411), .A4(n596), .A5(n369), 
        .A6(F[1]), .Y(n1235) );
  AO221X1_RVT U599 ( .A1(F_Out[1]), .A2(n361), .A3(n364), .A4(n979), .A5(n655), 
        .Y(n410) );
  OA21X1_RVT U600 ( .A1(n274), .A2(n416), .A3(n417), .Y(n353) );
  INVX1_RVT U601 ( .A(PC16_B[0]), .Y(n111) );
  NAND3X0_RVT U602 ( .A1(n432), .A2(n433), .A3(n434), .Y(n350) );
  NAND4X0_RVT U603 ( .A1(n518), .A2(n560), .A3(n567), .A4(n432), .Y(n593) );
  AND4X1_RVT U604 ( .A1(n440), .A2(n593), .A3(n560), .A4(n567), .Y(n434) );
  AO22X1_RVT U605 ( .A1(n238), .A2(n859), .A3(Save_ALU), .A4(n776), .Y(n1340)
         );
  INVX1_RVT U606 ( .A(n756), .Y(n750) );
  NAND2X0_RVT U607 ( .A1(n1), .A2(SP[0]), .Y(n554) );
  INVX1_RVT U608 ( .A(SP16[0]), .Y(n451) );
  AOI21X1_RVT U609 ( .A1(n559), .A2(n560), .A3(n1), .Y(n557) );
  AO221X1_RVT U610 ( .A1(Read_To_Reg), .A2(n779), .A3(n238), .A4(n810), .A5(
        n812), .Y(n1349) );
  AO221X1_RVT U611 ( .A1(n779), .A2(N1102), .A3(n239), .A4(n825), .A5(n812), 
        .Y(n1351) );
  AO22X1_RVT U612 ( .A1(n794), .A2(n795), .A3(n796), .A4(n752), .Y(n1346) );
  NAND3X0_RVT U613 ( .A1(n800), .A2(n213), .A3(n801), .Y(n795) );
  INVX1_RVT U614 ( .A(n221), .Y(n580) );
  INVX0_RVT U615 ( .A(Set_BusA_To[1]), .Y(n613) );
  INVX0_RVT U616 ( .A(N1107), .Y(n191) );
  AND2X1_RVT U617 ( .A1(n242), .A2(n859), .Y(n923) );
  AO22X1_RVT U618 ( .A1(n528), .A2(ts[0]), .A3(n831), .A4(n206), .Y(n1359) );
  INVX1_RVT U619 ( .A(Read_To_Acc), .Y(n616) );
  NAND3X0_RVT U620 ( .A1(n752), .A2(mc[2]), .A3(n1178), .Y(n43) );
  AND2X1_RVT U621 ( .A1(n210), .A2(n217), .Y(n64) );
  AO21X1_RVT U622 ( .A1(stop), .A2(n859), .A3(n566), .Y(n671) );
  NAND2X0_RVT U623 ( .A1(n676), .A2(n677), .Y(n673) );
  AO22X1_RVT U624 ( .A1(RegBusA[5]), .A2(n339), .A3(n334), .A4(n959), .Y(n1089) );
  AO22X1_RVT U625 ( .A1(RegBusA[4]), .A2(n339), .A3(n335), .A4(n956), .Y(n1090) );
  AO22X1_RVT U626 ( .A1(RegBusA[3]), .A2(n342), .A3(n337), .A4(n952), .Y(n1091) );
  AO22X1_RVT U627 ( .A1(RegBusA[2]), .A2(n342), .A3(n335), .A4(n950), .Y(n1092) );
  AO22X1_RVT U628 ( .A1(RegBusA[1]), .A2(n342), .A3(n335), .A4(n949), .Y(n1093) );
  NAND2X0_RVT U629 ( .A1(n825), .A2(n826), .Y(n665) );
  AO22X1_RVT U630 ( .A1(RegBusA[14]), .A2(n339), .A3(n335), .A4(n931), .Y(
        n1096) );
  AO22X1_RVT U631 ( .A1(RegBusA[12]), .A2(n339), .A3(n334), .A4(n912), .Y(
        n1098) );
  AO22X1_RVT U632 ( .A1(RegBusA[11]), .A2(n202), .A3(n337), .A4(n910), .Y(
        n1099) );
  AO22X1_RVT U633 ( .A1(RegBusA[6]), .A2(n342), .A3(n335), .A4(n972), .Y(n1088) );
  AO22X1_RVT U634 ( .A1(RegBusA[15]), .A2(n339), .A3(n337), .A4(n936), .Y(
        n1095) );
  NAND2X0_RVT U635 ( .A1(n772), .A2(n858), .Y(n851) );
  NAND4X0_RVT U636 ( .A1(n674), .A2(n734), .A3(n860), .A4(n670), .Y(n858) );
  AND2X1_RVT U637 ( .A1(IntE), .A2(n533), .Y(n860) );
  AO21X1_RVT U638 ( .A1(n562), .A2(n741), .A3(n760), .Y(n520) );
  INVX1_RVT U639 ( .A(n409), .Y(n664) );
  AND2X1_RVT U640 ( .A1(n714), .A2(n905), .Y(n898) );
  NAND3X0_RVT U641 ( .A1(n808), .A2(n809), .A3(n854), .Y(n726) );
  AO21X1_RVT U642 ( .A1(SetEI), .A2(n781), .A3(n666), .Y(n873) );
  AO22X1_RVT U643 ( .A1(n519), .A2(n862), .A3(n731), .A4(mc[2]), .Y(n1321) );
  AO22X1_RVT U644 ( .A1(n519), .A2(n857), .A3(n731), .A4(mc[0]), .Y(n1322) );
  AO22X1_RVT U645 ( .A1(n519), .A2(n840), .A3(n731), .A4(n752), .Y(n1320) );
  AND2X1_RVT U646 ( .A1(n1040), .A2(n736), .Y(n731) );
  AND2X1_RVT U647 ( .A1(n433), .A2(n442), .Y(n518) );
  NAND2X0_RVT U648 ( .A1(n660), .A2(n826), .Y(n442) );
  INVX1_RVT U649 ( .A(n433), .Y(n821) );
  AO22X1_RVT U650 ( .A1(n262), .A2(SP[0]), .A3(n326), .A4(RegBusC[0]), .Y(
        SP16_A[0]) );
  INVX1_RVT U651 ( .A(n677), .Y(n781) );
  NAND4X0_RVT U652 ( .A1(n300), .A2(n301), .A3(n302), .A4(NMICycle), .Y(n220)
         );
  INVX1_RVT U653 ( .A(n442), .Y(n815) );
  NAND2X0_RVT U654 ( .A1(n404), .A2(n974), .Y(n403) );
  XNOR3X1_RVT U655 ( .A1(n1055), .A2(n1049), .A3(n396), .Y(n393) );
  XNOR2X1_RVT U656 ( .A1(n1054), .A2(di[2]), .Y(n396) );
  NAND4X0_RVT U657 ( .A1(n592), .A2(n1049), .A3(n1055), .A4(n321), .Y(n347) );
  XNOR3X1_RVT U658 ( .A1(n1052), .A2(n1053), .A3(n395), .Y(n394) );
  XNOR2X1_RVT U659 ( .A1(di[6]), .A2(di[7]), .Y(n395) );
  NAND2X0_RVT U660 ( .A1(mc[0]), .A2(n752), .Y(n293) );
  NAND2X0_RVT U661 ( .A1(n814), .A2(n440), .Y(n517) );
  INVX1_RVT U662 ( .A(n432), .Y(n814) );
  AND2X1_RVT U663 ( .A1(n1054), .A2(n1053), .Y(n349) );
  NAND2X0_RVT U664 ( .A1(n975), .A2(n730), .Y(n431) );
  INVX1_RVT U665 ( .A(RegBusC[2]), .Y(n472) );
  INVX1_RVT U666 ( .A(RegBusC[5]), .Y(n460) );
  INVX1_RVT U667 ( .A(RegBusC[1]), .Y(n479) );
  NAND2X0_RVT U668 ( .A1(n820), .A2(n440), .Y(n588) );
  INVX1_RVT U669 ( .A(n560), .Y(n820) );
  NAND2X0_RVT U670 ( .A1(ts[0]), .A2(n835), .Y(n832) );
  INVX1_RVT U671 ( .A(RegBusC[6]), .Y(n455) );
  NAND2X0_RVT U672 ( .A1(n811), .A2(n440), .Y(n558) );
  INVX1_RVT U673 ( .A(n567), .Y(n811) );
  INVX1_RVT U674 ( .A(RegBusC[13]), .Y(n491) );
  INVX1_RVT U675 ( .A(RegBusC[11]), .Y(n497) );
  INVX1_RVT U676 ( .A(RegBusC[9]), .Y(n505) );
  INVX1_RVT U677 ( .A(RegBusC[14]), .Y(n487) );
  INVX1_RVT U678 ( .A(RegBusC[12]), .Y(n495) );
  INVX1_RVT U679 ( .A(RegBusC[10]), .Y(n501) );
  INVX1_RVT U680 ( .A(RegBusC[8]), .Y(n509) );
  INVX1_RVT U681 ( .A(RegBusC[15]), .Y(n485) );
  NAND2X0_RVT U682 ( .A1(n786), .A2(n58), .Y(n49) );
  INVX1_RVT U683 ( .A(RegBusC[4]), .Y(n463) );
  INVX1_RVT U684 ( .A(RegBusC[3]), .Y(n465) );
  INVX1_RVT U685 ( .A(RegBusC[0]), .Y(n481) );
  NAND2X0_RVT U686 ( .A1(n781), .A2(n1046), .Y(n822) );
  INVX1_RVT U687 ( .A(n768), .Y(n589) );
  INVX1_RVT U688 ( .A(RegBusC[7]), .Y(n452) );
  AND2X1_RVT U689 ( .A1(n934), .A2(n787), .Y(RegAddrB[1]) );
  NAND4X0_RVT U690 ( .A1(n892), .A2(IR[7]), .A3(IR[6]), .A4(IR[0]), .Y(n884)
         );
  NOR2X0_RVT U691 ( .A1(n58), .A2(n337), .Y(n47) );
  NAND2X0_RVT U692 ( .A1(n840), .A2(n857), .Y(n803) );
  AO222X1_RVT U693 ( .A1(F_Out[2]), .A2(n599), .A3(n597), .A4(n390), .A5(n391), 
        .A6(n592), .Y(n389) );
  XOR2X1_RVT U694 ( .A1(n393), .A2(n394), .Y(n391) );
  OAI22X1_RVT U695 ( .A1(n397), .A2(n1175), .A3(n728), .A4(n983), .Y(n390) );
  NAND4X0_RVT U696 ( .A1(n623), .A2(n216), .A3(n624), .A4(n625), .Y(n1301) );
  AO222X1_RVT U697 ( .A1(n572), .A2(BusB[3]), .A3(n573), .A4(BusB[7]), .A5(
        I_RRD), .A6(BusA[3]), .Y(n569) );
  AO221X1_RVT U698 ( .A1(n678), .A2(RegBusA[15]), .A3(n275), .A4(BusA[7]), 
        .A5(n680), .Y(n1310) );
  AO221X1_RVT U699 ( .A1(n684), .A2(ACC[7]), .A3(n685), .A4(di[7]), .A5(n686), 
        .Y(n683) );
  AO221X1_RVT U700 ( .A1(n678), .A2(RegBusA[14]), .A3(n275), .A4(BusA[6]), 
        .A5(n689), .Y(n1311) );
  AO221X1_RVT U701 ( .A1(n684), .A2(ACC[6]), .A3(n685), .A4(di[6]), .A5(n691), 
        .Y(n690) );
  AO221X1_RVT U702 ( .A1(n678), .A2(RegBusA[12]), .A3(n275), .A4(BusA[4]), 
        .A5(n695), .Y(n1313) );
  AO221X1_RVT U703 ( .A1(n684), .A2(ACC[4]), .A3(n685), .A4(di[4]), .A5(n697), 
        .Y(n696) );
  AO221X1_RVT U704 ( .A1(n678), .A2(RegBusA[11]), .A3(n679), .A4(BusA[3]), 
        .A5(n698), .Y(n1314) );
  AO221X1_RVT U705 ( .A1(n684), .A2(ACC[3]), .A3(n685), .A4(di[3]), .A5(n700), 
        .Y(n699) );
  AO221X1_RVT U706 ( .A1(n678), .A2(RegBusA[10]), .A3(n275), .A4(BusA[2]), 
        .A5(n701), .Y(n1315) );
  AO22X1_RVT U707 ( .A1(n681), .A2(RegBusA[2]), .A3(n611), .A4(n702), .Y(n701)
         );
  AO221X1_RVT U708 ( .A1(n684), .A2(ACC[2]), .A3(n685), .A4(di[2]), .A5(n703), 
        .Y(n702) );
  AO22X1_RVT U709 ( .A1(n687), .A2(SP[2]), .A3(n688), .A4(SP[10]), .Y(n703) );
  AO221X1_RVT U710 ( .A1(n678), .A2(RegBusA[9]), .A3(n679), .A4(BusA[1]), .A5(
        n704), .Y(n1316) );
  AO22X1_RVT U711 ( .A1(n681), .A2(RegBusA[1]), .A3(n611), .A4(n705), .Y(n704)
         );
  AO221X1_RVT U712 ( .A1(n684), .A2(ACC[1]), .A3(n685), .A4(di[1]), .A5(n706), 
        .Y(n705) );
  AO22X1_RVT U713 ( .A1(n687), .A2(SP[1]), .A3(n688), .A4(SP[9]), .Y(n706) );
  AO221X1_RVT U714 ( .A1(n684), .A2(ACC[5]), .A3(n685), .A4(di[5]), .A5(n694), 
        .Y(n693) );
  AO221X1_RVT U715 ( .A1(n684), .A2(ACC[0]), .A3(n685), .A4(di[0]), .A5(n709), 
        .Y(n708) );
  AO222X1_RVT U716 ( .A1(n330), .A2(n340), .A3(n341), .A4(n333), .A5(n598), 
        .A6(F[6]), .Y(n1230) );
  OAI222X1_RVT U717 ( .A1(n344), .A2(n387), .A3(n346), .A4(n347), .A5(n1123), 
        .A6(n348), .Y(n340) );
  NAND4X0_RVT U718 ( .A1(n322), .A2(n323), .A3(n1052), .A4(n349), .Y(n346) );
  AO22X1_RVT U719 ( .A1(RegBusB[9]), .A2(n578), .A3(Set_BusB_To[0]), .A4(
        RegBusB[1]), .Y(N1208) );
  NAND2X0_RVT U720 ( .A1(n66), .A2(n67), .Y(N1216) );
  AOI221X1_RVT U721 ( .A1(PC[1]), .A2(n178), .A3(di[1]), .A4(n173), .A5(n126), 
        .Y(n66) );
  AOI221X1_RVT U722 ( .A1(PC[9]), .A2(n10), .A3(ACC[1]), .A4(n185), .A5(n133), 
        .Y(n67) );
  OR2X1_RVT U723 ( .A1(n32), .A2(n1071), .Y(n938) );
  NAND2X0_RVT U724 ( .A1(n68), .A2(n69), .Y(N1220) );
  AOI221X1_RVT U725 ( .A1(PC[5]), .A2(n178), .A3(di[5]), .A4(n173), .A5(n149), 
        .Y(n68) );
  AOI221X1_RVT U726 ( .A1(PC[13]), .A2(n10), .A3(ACC[5]), .A4(n185), .A5(n150), 
        .Y(n69) );
  NAND2X0_RVT U727 ( .A1(n70), .A2(n73), .Y(N1217) );
  AOI221X1_RVT U728 ( .A1(PC[2]), .A2(n178), .A3(di[2]), .A4(n173), .A5(n134), 
        .Y(n70) );
  AOI221X1_RVT U729 ( .A1(PC[10]), .A2(n10), .A3(ACC[2]), .A4(n185), .A5(n135), 
        .Y(n73) );
  NAND2X0_RVT U730 ( .A1(n75), .A2(n76), .Y(N1218) );
  AOI221X1_RVT U731 ( .A1(PC[3]), .A2(n178), .A3(di[3]), .A4(n173), .A5(n139), 
        .Y(n75) );
  AOI221X1_RVT U732 ( .A1(PC[11]), .A2(n10), .A3(ACC[3]), .A4(n185), .A5(n141), 
        .Y(n76) );
  NAND2X0_RVT U733 ( .A1(n79), .A2(n80), .Y(N1219) );
  AOI221X1_RVT U734 ( .A1(PC[4]), .A2(n178), .A3(di[4]), .A4(n173), .A5(n142), 
        .Y(n79) );
  AOI221X1_RVT U735 ( .A1(PC[12]), .A2(n10), .A3(ACC[4]), .A4(n185), .A5(n146), 
        .Y(n80) );
  AO22X1_RVT U736 ( .A1(n247), .A2(RegBusB[4]), .A3(RegBusB[12]), .A4(n578), 
        .Y(N1211) );
  NAND2X0_RVT U737 ( .A1(n81), .A2(n82), .Y(N1221) );
  AOI221X1_RVT U738 ( .A1(PC[6]), .A2(n178), .A3(di[6]), .A4(n173), .A5(n155), 
        .Y(n81) );
  AOI221X1_RVT U739 ( .A1(PC[14]), .A2(n10), .A3(ACC[6]), .A4(n185), .A5(n156), 
        .Y(n82) );
  NAND2X0_RVT U740 ( .A1(n84), .A2(n85), .Y(N1222) );
  AOI221X1_RVT U741 ( .A1(PC[7]), .A2(n178), .A3(di[7]), .A4(n173), .A5(n166), 
        .Y(n84) );
  AOI221X1_RVT U742 ( .A1(PC[15]), .A2(n10), .A3(ACC[7]), .A4(n185), .A5(n184), 
        .Y(n85) );
  AO22X1_RVT U743 ( .A1(n247), .A2(RegBusB[6]), .A3(RegBusB[14]), .A4(n578), 
        .Y(N1213) );
  OR4X1_RVT U744 ( .A1(n88), .A2(n18), .A3(n93), .A4(n5), .Y(N1215) );
  AO22X1_RVT U745 ( .A1(SP[8]), .A2(n165), .A3(PC[0]), .A4(n178), .Y(n93) );
  OAI22X1_RVT U746 ( .A1(n978), .A2(n565), .A3(n667), .A4(n668), .Y(n1309) );
  INVX1_RVT U747 ( .A(n668), .Y(n565) );
  AND2X1_RVT U748 ( .A1(PC[0]), .A2(PC16_B[0]), .Y(\add_1283/carry[1] ) );
  FADDX1_RVT U749 ( .A(PC[11]), .B(n254), .CI(\add_1283/carry[11] ), .CO(
        \add_1283/carry[12] ), .S(PC16[11]) );
  FADDX1_RVT U750 ( .A(PC[10]), .B(n258), .CI(\add_1283/carry[10] ), .CO(
        \add_1283/carry[11] ), .S(PC16[10]) );
  FADDX1_RVT U751 ( .A(PC[9]), .B(n254), .CI(\add_1283/carry[9] ), .CO(
        \add_1283/carry[10] ), .S(PC16[9]) );
  FADDX1_RVT U752 ( .A(PC[6]), .B(PC16_B[6]), .CI(\add_1283/carry[6] ), .CO(
        \add_1283/carry[7] ), .S(PC16[6]) );
  FADDX1_RVT U753 ( .A(PC[2]), .B(PC16_B[2]), .CI(\add_1283/carry[2] ), .CO(
        \add_1283/carry[3] ), .S(PC16[2]) );
  FADDX1_RVT U754 ( .A(PC[12]), .B(n258), .CI(\add_1283/carry[12] ), .CO(
        \add_1283/carry[13] ), .S(PC16[12]) );
  FADDX1_RVT U755 ( .A(PC[13]), .B(n258), .CI(\add_1283/carry[13] ), .CO(
        \add_1283/carry[14] ), .S(PC16[13]) );
  FADDX1_RVT U756 ( .A(PC[14]), .B(n254), .CI(\add_1283/carry[14] ), .CO(
        \add_1283/carry[15] ), .S(PC16[14]) );
  INVX0_RVT U757 ( .A(n86), .Y(n482) );
  NAND3X0_RVT U758 ( .A1(n1177), .A2(mc[0]), .A3(n1176), .Y(n908) );
  AND2X1_RVT U759 ( .A1(SP16_A[0]), .A2(SP16_B[0]), .Y(\add_1284/carry[1] ) );
  AO22X1_RVT U760 ( .A1(n263), .A2(SP[5]), .A3(n326), .A4(RegBusC[5]), .Y(
        SP16_A[5]) );
  AO22X1_RVT U761 ( .A1(n262), .A2(SP[4]), .A3(n324), .A4(RegBusC[4]), .Y(
        SP16_A[4]) );
  AO22X1_RVT U762 ( .A1(n263), .A2(SP[3]), .A3(n326), .A4(RegBusC[3]), .Y(
        SP16_A[3]) );
  AO222X1_RVT U763 ( .A1(SP16[1]), .A2(n458), .A3(n459), .A4(di[1]), .A5(n604), 
        .A6(TmpAddr[1]), .Y(n1251) );
  AO222X1_RVT U764 ( .A1(SP16[0]), .A2(n458), .A3(n459), .A4(di[0]), .A5(n604), 
        .A6(TmpAddr[0]), .Y(n1252) );
  AO221X1_RVT U765 ( .A1(SP16[5]), .A2(n458), .A3(n604), .A4(TmpAddr[5]), .A5(
        n461), .Y(n1247) );
  AO22X1_RVT U766 ( .A1(n459), .A2(di[5]), .A3(n462), .A4(n863), .Y(n461) );
  AO221X1_RVT U767 ( .A1(SP16[4]), .A2(n458), .A3(n604), .A4(TmpAddr[4]), .A5(
        n464), .Y(n1248) );
  AO22X1_RVT U768 ( .A1(n459), .A2(di[4]), .A3(n462), .A4(n878), .Y(n464) );
  AO221X1_RVT U769 ( .A1(SP16[3]), .A2(n458), .A3(n604), .A4(TmpAddr[3]), .A5(
        n466), .Y(n1249) );
  AO22X1_RVT U770 ( .A1(n459), .A2(di[3]), .A3(n462), .A4(n892), .Y(n466) );
  NAND4X0_RVT U771 ( .A1(n97), .A2(n98), .A3(n99), .A4(n100), .Y(n1187) );
  NAND4X0_RVT U772 ( .A1(n89), .A2(n90), .A3(n91), .A4(n92), .Y(n1186) );
  AO222X1_RVT U773 ( .A1(n572), .A2(BusB[2]), .A3(n573), .A4(BusB[6]), .A5(
        I_RRD), .A6(BusA[2]), .Y(n575) );
  AO222X1_RVT U774 ( .A1(n572), .A2(BusA[1]), .A3(n573), .A4(BusB[1]), .A5(
        I_RRD), .A6(BusB[5]), .Y(n584) );
  AO222X1_RVT U775 ( .A1(n572), .A2(BusB[1]), .A3(n573), .A4(BusB[5]), .A5(
        I_RRD), .A6(BusA[1]), .Y(n577) );
  AO222X1_RVT U776 ( .A1(n572), .A2(BusA[0]), .A3(n573), .A4(BusB[0]), .A5(
        I_RRD), .A6(BusB[4]), .Y(n585) );
  AO222X1_RVT U777 ( .A1(n572), .A2(BusB[0]), .A3(n573), .A4(BusB[4]), .A5(
        I_RRD), .A6(BusA[0]), .Y(n579) );
  AO222X1_RVT U778 ( .A1(n443), .A2(di[1]), .A3(n444), .A4(TmpAddr[9]), .A5(
        SP16[9]), .A6(n446), .Y(n1243) );
  AO222X1_RVT U779 ( .A1(n443), .A2(di[0]), .A3(n444), .A4(TmpAddr[8]), .A5(
        SP16[8]), .A6(n446), .Y(n1244) );
  NAND4X0_RVT U780 ( .A1(n638), .A2(n216), .A3(n639), .A4(n640), .Y(n1304) );
  NAND4X0_RVT U781 ( .A1(n647), .A2(n216), .A3(n648), .A4(n649), .Y(n1307) );
  NAND4X0_RVT U782 ( .A1(n650), .A2(n216), .A3(n651), .A4(n652), .Y(n1308) );
  NAND4X0_RVT U783 ( .A1(n632), .A2(n216), .A3(n633), .A4(n634), .Y(n1302) );
  NAND4X0_RVT U784 ( .A1(n644), .A2(n345), .A3(n645), .A4(n646), .Y(n1306) );
  NAND4X0_RVT U785 ( .A1(n635), .A2(n216), .A3(n636), .A4(n637), .Y(n1303) );
  NAND4X0_RVT U786 ( .A1(n641), .A2(reset_n), .A3(n642), .A4(n643), .Y(n1305)
         );
  AO22X1_RVT U787 ( .A1(n428), .A2(n429), .A3(F_Out[0]), .A4(n662), .Y(n427)
         );
  INVX0_RVT U788 ( .A(n428), .Y(n662) );
  NAND2X0_RVT U789 ( .A1(n1149), .A2(n664), .Y(n428) );
  AO222X1_RVT U790 ( .A1(n443), .A2(di[6]), .A3(n444), .A4(TmpAddr[14]), .A5(
        SP16[14]), .A6(n446), .Y(n1238) );
  AO222X1_RVT U791 ( .A1(n443), .A2(di[5]), .A3(n444), .A4(TmpAddr[13]), .A5(
        SP16[13]), .A6(n446), .Y(n1239) );
  OAI22X1_RVT U792 ( .A1(n884), .A2(n885), .A3(n886), .A4(n887), .Y(n883) );
  NAND3X0_RVT U793 ( .A1(n957), .A2(n958), .A3(n955), .Y(n887) );
  OAI22X1_RVT U794 ( .A1(n1183), .A2(n845), .A3(n846), .A4(n847), .Y(n1364) );
  NAND3X0_RVT U795 ( .A1(n845), .A2(n848), .A3(n849), .Y(n846) );
  INVX0_RVT U796 ( .A(PC16[4]), .Y(n234) );
  AO222X1_RVT U797 ( .A1(n443), .A2(di[4]), .A3(n444), .A4(TmpAddr[12]), .A5(
        SP16[12]), .A6(n446), .Y(n1240) );
  AO222X1_RVT U798 ( .A1(n443), .A2(di[3]), .A3(n444), .A4(TmpAddr[11]), .A5(
        SP16[11]), .A6(n446), .Y(n1241) );
  AO222X1_RVT U799 ( .A1(n443), .A2(di[2]), .A3(n444), .A4(TmpAddr[10]), .A5(
        SP16[10]), .A6(n446), .Y(n1242) );
  AO221X1_RVT U800 ( .A1(dinst[6]), .A2(n739), .A3(n750), .A4(IR[6]), .A5(n742), .Y(n1324) );
  AO221X1_RVT U801 ( .A1(dinst[7]), .A2(n739), .A3(n750), .A4(IR[7]), .A5(n742), .Y(n1323) );
  AND4X1_RVT U802 ( .A1(IntCycle), .A2(n804), .A3(n756), .A4(n757), .Y(n742)
         );
  AO221X1_RVT U803 ( .A1(dinst[1]), .A2(n739), .A3(n750), .A4(IR[1]), .A5(n742), .Y(n1331) );
  AO221X1_RVT U804 ( .A1(dinst[0]), .A2(n739), .A3(n750), .A4(IR[0]), .A5(n742), .Y(n1332) );
  AO221X1_RVT U805 ( .A1(dinst[3]), .A2(n739), .A3(n750), .A4(n892), .A5(n742), 
        .Y(n1329) );
  NAND4X0_RVT U806 ( .A1(n160), .A2(n161), .A3(n162), .A4(n163), .Y(n1194) );
  AOI222X1_RVT U807 ( .A1(N253), .A2(n318), .A3(n164), .A4(TmpAddr[6]), .A5(
        RegBusC[6]), .A6(n64), .Y(n163) );
  NAND4X0_RVT U808 ( .A1(n169), .A2(n170), .A3(n171), .A4(n172), .Y(n1195) );
  AOI222X1_RVT U809 ( .A1(N252), .A2(n318), .A3(n164), .A4(TmpAddr[5]), .A5(
        RegBusC[5]), .A6(n64), .Y(n172) );
  NAND4X0_RVT U810 ( .A1(n187), .A2(n188), .A3(n189), .A4(n190), .Y(n1198) );
  AOI222X1_RVT U811 ( .A1(N249), .A2(n318), .A3(n164), .A4(TmpAddr[2]), .A5(
        RegBusC[2]), .A6(n64), .Y(n190) );
  NAND4X0_RVT U812 ( .A1(n193), .A2(n194), .A3(n195), .A4(n196), .Y(n1199) );
  AOI222X1_RVT U813 ( .A1(N248), .A2(n318), .A3(n164), .A4(TmpAddr[1]), .A5(
        RegBusC[1]), .A6(n64), .Y(n196) );
  XOR2X1_RVT U814 ( .A1(n111), .A2(PC[0]), .Y(n94) );
  AO222X1_RVT U815 ( .A1(n607), .A2(ACC[5]), .A3(N158), .A4(n608), .A5(n727), 
        .A6(R[5]), .Y(n1295) );
  AO222X1_RVT U816 ( .A1(n607), .A2(ACC[3]), .A3(N156), .A4(n608), .A5(n727), 
        .A6(R[3]), .Y(n1297) );
  AO222X1_RVT U817 ( .A1(n607), .A2(ACC[4]), .A3(N157), .A4(n608), .A5(n727), 
        .A6(R[4]), .Y(n1296) );
  AO222X1_RVT U818 ( .A1(n607), .A2(ACC[2]), .A3(N155), .A4(n608), .A5(n727), 
        .A6(R[2]), .Y(n1298) );
  AO222X1_RVT U819 ( .A1(n607), .A2(ACC[1]), .A3(N154), .A4(n608), .A5(n727), 
        .A6(R[1]), .Y(n1299) );
  AO222X1_RVT U820 ( .A1(n607), .A2(ACC[0]), .A3(N153), .A4(n608), .A5(n727), 
        .A6(R[0]), .Y(n1300) );
  AO222X1_RVT U821 ( .A1(n607), .A2(ACC[6]), .A3(N159), .A4(n608), .A5(n727), 
        .A6(R[6]), .Y(n1294) );
  AO21X1_RVT U822 ( .A1(n1171), .A2(n294), .A3(n589), .Y(n763) );
  NAND2X0_RVT U823 ( .A1(n1126), .A2(n660), .Y(n432) );
  AND3X1_RVT U824 ( .A1(n830), .A2(n816), .A3(n1125), .Y(n660) );
  AO221X1_RVT U825 ( .A1(n1152), .A2(n655), .A3(F_Out[5]), .A4(n361), .A5(n362), .Y(n356) );
  AO221X1_RVT U826 ( .A1(n1154), .A2(n655), .A3(F_Out[3]), .A4(n361), .A5(n381), .Y(n378) );
  AND3X1_RVT U827 ( .A1(n223), .A2(n222), .A3(ts[2]), .Y(n564) );
  NAND3X0_RVT U828 ( .A1(n759), .A2(n620), .A3(n216), .Y(n756) );
  AND3X1_RVT U829 ( .A1(mc[2]), .A2(ISet[0]), .A3(n306), .Y(n761) );
  NAND3X0_RVT U830 ( .A1(n802), .A2(n803), .A3(n549), .Y(n801) );
  NAND2X0_RVT U831 ( .A1(n960), .A2(n1179), .Y(n802) );
  AO222X1_RVT U832 ( .A1(n549), .A2(n1179), .A3(n807), .A4(n808), .A5(n537), 
        .A6(n1178), .Y(n805) );
  NAND3X0_RVT U833 ( .A1(n1177), .A2(mc[0]), .A3(n537), .Y(n800) );
  XNOR2X1_RVT U834 ( .A1(n803), .A2(n862), .Y(n876) );
  NAND2X0_RVT U835 ( .A1(n1176), .A2(n293), .Y(n877) );
  NAND4X0_RVT U836 ( .A1(n822), .A2(n835), .A3(n837), .A4(n838), .Y(n836) );
  AOI21X1_RVT U837 ( .A1(n1182), .A2(iorq), .A3(n532), .Y(n838) );
  OAI22X1_RVT U838 ( .A1(n101), .A2(n102), .A3(n103), .A4(n95), .Y(n1358) );
  NAND2X0_RVT U839 ( .A1(n325), .A2(n828), .Y(n103) );
  AND2X1_RVT U840 ( .A1(n1145), .A2(n747), .Y(n748) );
  AO22X1_RVT U841 ( .A1(Halt), .A2(n738), .A3(n765), .A4(n850), .Y(n1333) );
  AO22X1_RVT U842 ( .A1(n1043), .A2(n769), .A3(n827), .A4(n841), .Y(n1362) );
  AO222X1_RVT U843 ( .A1(n1146), .A2(n310), .A3(n894), .A4(F[6]), .A5(n1169), 
        .A6(n404), .Y(n893) );
  AND2X1_RVT U844 ( .A1(n1158), .A2(n242), .Y(n922) );
  NAND4X0_RVT U845 ( .A1(n1121), .A2(n1122), .A3(ALU_Op_r[3]), .A4(ALU_Op_r[0]), .Y(n436) );
  INVX1_RVT U846 ( .A(di[0]), .Y(n1049) );
  NBUFFX2_RVT U847 ( .A(n1057), .Y(ts[0]) );
  AND2X1_RVT U848 ( .A1(wait_n), .A2(n781), .Y(n306) );
  NAND2X0_RVT U849 ( .A1(n898), .A2(n900), .Y(RegWEH) );
  NAND2X0_RVT U850 ( .A1(n898), .A2(n899), .Y(RegWEL) );
  OAI21X1_RVT U851 ( .A1(n532), .A2(n842), .A3(n871), .Y(n870) );
  NAND2X0_RVT U852 ( .A1(n345), .A2(n737), .Y(n736) );
  NAND3X0_RVT U853 ( .A1(n1170), .A2(n552), .A3(n738), .Y(n737) );
  NAND4X0_RVT U854 ( .A1(n754), .A2(n589), .A3(halt_n), .A4(n290), .Y(n288) );
  OAI21X1_RVT U855 ( .A1(n1148), .A2(n224), .A3(n309), .Y(n1217) );
  NAND3X0_RVT U856 ( .A1(n48), .A2(n49), .A3(n50), .Y(n1107) );
  OA22X1_RVT U857 ( .A1(n51), .A2(n36), .A3(n1071), .A4(n339), .Y(n50) );
  NAND3X0_RVT U858 ( .A1(n47), .A2(n866), .A3(n51), .Y(n48) );
  AND2X1_RVT U859 ( .A1(n901), .A2(n810), .Y(n440) );
  AO22X1_RVT U860 ( .A1(n902), .A2(n859), .A3(n1158), .A4(n778), .Y(n901) );
  NAND4X0_RVT U861 ( .A1(n1120), .A2(ALU_Op_r[1]), .A3(ALU_Op_r[2]), .A4(
        ALU_Op_r[0]), .Y(n902) );
  INVX1_RVT U862 ( .A(n591), .Y(n778) );
  AO22X1_RVT U863 ( .A1(n335), .A2(RegAddrC[1]), .A3(n202), .A4(n42), .Y(n1105) );
  AO22X1_RVT U864 ( .A1(n337), .A2(RegAddrC[0]), .A3(n338), .A4(n31), .Y(n1103) );
  INVX1_RVT U865 ( .A(di[3]), .Y(n1054) );
  NAND3X0_RVT U866 ( .A1(n54), .A2(n49), .A3(n55), .Y(n1109) );
  OA22X1_RVT U867 ( .A1(n56), .A2(n36), .A3(n1076), .A4(n339), .Y(n55) );
  NAND3X0_RVT U868 ( .A1(n47), .A2(n866), .A3(n56), .Y(n54) );
  INVX1_RVT U869 ( .A(di[1]), .Y(n1055) );
  INVX1_RVT U870 ( .A(di[4]), .Y(n1053) );
  INVX1_RVT U871 ( .A(di[5]), .Y(n1052) );
  AND4X1_RVT U872 ( .A1(n674), .A2(n734), .A3(n963), .A4(n874), .Y(n842) );
  AND3X1_RVT U873 ( .A1(IntE), .A2(n533), .A3(n670), .Y(n874) );
  NAND4X0_RVT U874 ( .A1(n752), .A2(n974), .A3(n1178), .A4(n881), .Y(n880) );
  AND2X1_RVT U875 ( .A1(stop), .A2(n1176), .Y(n881) );
  INVX1_RVT U876 ( .A(n780), .Y(n682) );
  OAI22X1_RVT U877 ( .A1(n775), .A2(n1075), .A3(n107), .A4(n109), .Y(n1335) );
  NAND2X0_RVT U878 ( .A1(n785), .A2(n775), .Y(n107) );
  XNOR2X1_RVT U879 ( .A1(n995), .A2(n1176), .Y(n301) );
  INVX1_RVT U880 ( .A(n1177), .Y(n752) );
  AO22X1_RVT U881 ( .A1(n603), .A2(n1028), .A3(n605), .A4(n241), .Y(n1293) );
  OA21X1_RVT U882 ( .A1(busak_n), .A2(n1170), .A3(n206), .Y(n824) );
  OR2X1_RVT U883 ( .A1(n20), .A2(n110), .Y(n1357) );
  NAND3X0_RVT U884 ( .A1(n1178), .A2(ISet[0]), .A3(n1128), .Y(n888) );
  XNOR2X1_RVT U885 ( .A1(n994), .A2(n1177), .Y(n302) );
  INVX1_RVT U886 ( .A(wait_n), .Y(n1046) );
  NAND2X0_RVT U887 ( .A1(n1171), .A2(intcycle_n), .Y(n768) );
  NAND2X0_RVT U888 ( .A1(n1069), .A2(n1073), .Y(n34) );
  OAI22X1_RVT U889 ( .A1(n208), .A2(n1076), .A3(n934), .A4(n1075), .Y(
        RegAddrB[2]) );
  XNOR2X1_RVT U890 ( .A1(n993), .A2(n1178), .Y(n300) );
  NAND2X0_RVT U891 ( .A1(n1168), .A2(n799), .Y(n294) );
  NAND2X0_RVT U892 ( .A1(n1074), .A2(n34), .Y(n58) );
  INVX1_RVT U893 ( .A(n1145), .Y(n863) );
  NAND4X0_RVT U894 ( .A1(n976), .A2(n895), .A3(n878), .A4(n863), .Y(n886) );
  NAND3X0_RVT U895 ( .A1(n1146), .A2(n1147), .A3(n1145), .Y(n885) );
  INVX1_RVT U896 ( .A(n976), .Y(n892) );
  OAI21X1_RVT U897 ( .A1(n962), .A2(nmi_n), .A3(n1171), .Y(n718) );
  INVX1_RVT U899 ( .A(di[2]), .Y(n321) );
  INVX1_RVT U900 ( .A(di[7]), .Y(n323) );
  INVX1_RVT U901 ( .A(di[6]), .Y(n322) );
  INVX1_RVT U902 ( .A(n980), .Y(n975) );
  AO22X1_RVT U903 ( .A1(SP[0]), .A2(n245), .A3(n115), .A4(Set_BusB_To[1]), .Y(
        n117) );
  NAND2X0_RVT U904 ( .A1(Set_BusB_To[1]), .A2(N1107), .Y(n118) );
  AND2X1_RVT U905 ( .A1(Set_BusB_To[3]), .A2(n186), .Y(n131) );
  AND2X1_RVT U906 ( .A1(n191), .A2(Set_BusB_To[0]), .Y(n127) );
  AND2X1_RVT U907 ( .A1(n131), .A2(n127), .Y(n165) );
  AND2X1_RVT U908 ( .A1(n131), .A2(N1107), .Y(n123) );
  AND2X1_RVT U909 ( .A1(n123), .A2(n245), .Y(n178) );
  AND2X1_RVT U910 ( .A1(n125), .A2(n197), .Y(n119) );
  AND2X1_RVT U911 ( .A1(n119), .A2(n245), .Y(n173) );
  AO22X1_RVT U912 ( .A1(SP[9]), .A2(n165), .A3(N1208), .A4(n158), .Y(n126) );
  AND3X1_RVT U913 ( .A1(n245), .A2(n191), .A3(n131), .Y(n179) );
  AO22X1_RVT U914 ( .A1(F[1]), .A2(n180), .A3(SP[1]), .A4(n179), .Y(n133) );
  AO22X1_RVT U915 ( .A1(SP[10]), .A2(n165), .A3(N1209), .A4(n158), .Y(n134) );
  AO22X1_RVT U916 ( .A1(F[2]), .A2(n180), .A3(SP[2]), .A4(n179), .Y(n135) );
  AO22X1_RVT U917 ( .A1(SP[11]), .A2(n165), .A3(N1210), .A4(n158), .Y(n139) );
  AO22X1_RVT U918 ( .A1(F[3]), .A2(n180), .A3(SP[3]), .A4(n179), .Y(n141) );
  AO22X1_RVT U919 ( .A1(SP[12]), .A2(n165), .A3(N1211), .A4(n158), .Y(n142) );
  AO22X1_RVT U920 ( .A1(F[4]), .A2(n180), .A3(SP[4]), .A4(n179), .Y(n146) );
  AO22X1_RVT U921 ( .A1(SP[13]), .A2(n165), .A3(N1212), .A4(n158), .Y(n149) );
  AO22X1_RVT U922 ( .A1(F[5]), .A2(n180), .A3(SP[5]), .A4(n179), .Y(n150) );
  AO22X1_RVT U923 ( .A1(SP[14]), .A2(n165), .A3(N1213), .A4(n158), .Y(n155) );
  AO22X1_RVT U924 ( .A1(F[6]), .A2(n180), .A3(SP[6]), .A4(n179), .Y(n156) );
  AO22X1_RVT U925 ( .A1(SP[15]), .A2(n165), .A3(N1214), .A4(n158), .Y(n166) );
  AO22X1_RVT U926 ( .A1(F[7]), .A2(n180), .A3(SP[7]), .A4(n179), .Y(n184) );
  INVX0_RVT U927 ( .A(Set_BusB_To[3]), .Y(n197) );
  AO221X1_RVT U928 ( .A1(n779), .A2(Set_BusA_To[0]), .A3(n239), .A4(n830), 
        .A5(n812), .Y(n1353) );
  INVX0_RVT U929 ( .A(Set_BusA_To[0]), .Y(n612) );
  AO22X1_RVT U930 ( .A1(n710), .A2(ISet[0]), .A3(n788), .A4(Prefix[0]), .Y(
        n1344) );
  NAND2X0_RVT U931 ( .A1(Prefix[1]), .A2(Prefix[0]), .Y(n789) );
  INVX1_RVT U932 ( .A(Prefix[0]), .Y(n674) );
  NAND2X0_RVT U933 ( .A1(Prefix[0]), .A2(n734), .Y(n749) );
  INVX0_RVT U934 ( .A(SP16[10]), .Y(n425) );
  FADDX1_RVT U935 ( .A(SP16_A[10]), .B(n273), .CI(\add_1284/carry[10] ), .CO(
        \add_1284/carry[11] ), .S(SP16[10]) );
  INVX0_RVT U936 ( .A(SP16[11]), .Y(n422) );
  FADDX1_RVT U937 ( .A(SP16_A[11]), .B(n271), .CI(\add_1284/carry[11] ), .CO(
        \add_1284/carry[12] ), .S(SP16[11]) );
  AO22X1_RVT U938 ( .A1(N1215), .A2(n342), .A3(n334), .A4(BusB[0]), .Y(n1119)
         );
  INVX0_RVT U939 ( .A(SP16[12]), .Y(n421) );
  FADDX1_RVT U940 ( .A(SP16_A[12]), .B(n273), .CI(\add_1284/carry[12] ), .CO(
        \add_1284/carry[13] ), .S(SP16[12]) );
  INVX0_RVT U941 ( .A(SP16[13]), .Y(n420) );
  FADDX1_RVT U942 ( .A(SP16_A[13]), .B(n269), .CI(\add_1284/carry[13] ), .CO(
        \add_1284/carry[14] ), .S(SP16[13]) );
  INVX1_RVT U943 ( .A(n334), .Y(n202) );
  INVX1_RVT U944 ( .A(n334), .Y(n342) );
  INVX1_RVT U945 ( .A(n334), .Y(n339) );
  INVX1_RVT U946 ( .A(n338), .Y(n337) );
  INVX1_RVT U947 ( .A(n338), .Y(n335) );
  INVX1_RVT U948 ( .A(n338), .Y(n334) );
  INVX0_RVT U949 ( .A(SP16[14]), .Y(n415) );
  FADDX1_RVT U950 ( .A(SP16_A[14]), .B(n269), .CI(\add_1284/carry[14] ), .CO(
        \add_1284/carry[15] ), .S(SP16[14]) );
  NBUFFX2_RVT U951 ( .A(n545), .Y(n203) );
  NBUFFX2_RVT U952 ( .A(n545), .Y(n205) );
  INVX0_RVT U953 ( .A(n167), .Y(n545) );
  INVX0_RVT U954 ( .A(SP16[15]), .Y(n414) );
  AO222X1_RVT U955 ( .A1(n443), .A2(di[7]), .A3(n444), .A4(TmpAddr[15]), .A5(
        SP16[15]), .A6(n446), .Y(n1237) );
  INVX1_RVT U956 ( .A(n834), .Y(n206) );
  INVX1_RVT U957 ( .A(n834), .Y(n1040) );
  INVX0_RVT U958 ( .A(n36), .Y(n786) );
  OAI221X1_RVT U959 ( .A1(n36), .A2(n37), .A3(n1068), .A4(n342), .A5(n38), .Y(
        n1104) );
  INVX0_RVT U960 ( .A(n392), .Y(n592) );
  NAND2X0_RVT U961 ( .A1(I_INRC), .A2(n225), .Y(n392) );
  INVX0_RVT U962 ( .A(n583), .Y(n405) );
  AO221X1_RVT U963 ( .A1(n267), .A2(n583), .A3(ID16[10]), .A4(n266), .A5(n928), 
        .Y(RegDIH[2]) );
  AO222X1_RVT U964 ( .A1(n922), .A2(di[2]), .A3(ALU_Q[2]), .A4(n923), .A5(n244), .A6(BusB[2]), .Y(n583) );
  INVX1_RVT U965 ( .A(I_RRD), .Y(n716) );
  AO222X1_RVT U966 ( .A1(n572), .A2(BusA[3]), .A3(n573), .A4(BusB[3]), .A5(
        I_RRD), .A6(BusB[7]), .Y(n581) );
  AND2X1_RVT U967 ( .A1(I_RLD), .A2(n716), .Y(n572) );
  AO222X1_RVT U968 ( .A1(n568), .A2(n582), .A3(n570), .A4(n583), .A5(n774), 
        .A6(do[2]), .Y(n1274) );
  AO222X1_RVT U969 ( .A1(n572), .A2(BusA[2]), .A3(n573), .A4(BusB[2]), .A5(
        I_RRD), .A6(BusB[6]), .Y(n582) );
  AO21X1_RVT U970 ( .A1(n714), .A2(n868), .A3(n32), .Y(n944) );
  OA22X1_RVT U971 ( .A1(n932), .A2(n938), .A3(n1073), .A4(n939), .Y(n937) );
  INVX0_RVT U972 ( .A(n717), .Y(n511) );
  AND2X1_RVT U973 ( .A1(n1171), .A2(n717), .Y(n715) );
  INVX0_RVT U974 ( .A(n214), .Y(n548) );
  NBUFFX2_RVT U975 ( .A(n144), .Y(n210) );
  INVX0_RVT U976 ( .A(n277), .Y(n211) );
  INVX0_RVT U977 ( .A(n276), .Y(n215) );
  INVX0_RVT U978 ( .A(n46), .Y(n276) );
  INVX0_RVT U979 ( .A(n359), .Y(n399) );
  AO221X1_RVT U980 ( .A1(n268), .A2(n359), .A3(ID16[13]), .A4(n264), .A5(n925), 
        .Y(RegDIH[5]) );
  AO221X1_RVT U981 ( .A1(n267), .A2(n359), .A3(ID16[5]), .A4(n264), .A5(n915), 
        .Y(RegDIL[5]) );
  AO222X1_RVT U982 ( .A1(n568), .A2(n577), .A3(n570), .A4(n359), .A5(n774), 
        .A6(do[5]), .Y(n1271) );
  AO21X1_RVT U983 ( .A1(n777), .A2(n359), .A3(n23), .Y(n357) );
  AO222X1_RVT U984 ( .A1(n922), .A2(di[5]), .A3(ALU_Q[5]), .A4(n923), .A5(n244), .A6(BusB[5]), .Y(n359) );
  INVX0_RVT U985 ( .A(n343), .Y(n398) );
  AO221X1_RVT U986 ( .A1(n267), .A2(n343), .A3(ID16[6]), .A4(n266), .A5(n914), 
        .Y(RegDIL[6]) );
  AO222X1_RVT U987 ( .A1(n568), .A2(n575), .A3(n570), .A4(n343), .A5(n774), 
        .A6(do[6]), .Y(n1270) );
  AO21X1_RVT U988 ( .A1(n777), .A2(n343), .A3(n363), .Y(n341) );
  AO222X1_RVT U989 ( .A1(n922), .A2(di[6]), .A3(ALU_Q[6]), .A4(n923), .A5(n244), .A6(BusB[6]), .Y(n343) );
  INVX0_RVT U990 ( .A(n439), .Y(n619) );
  AO221X1_RVT U991 ( .A1(ID16[8]), .A2(n266), .A3(n267), .A4(n439), .A5(n930), 
        .Y(RegDIH[0]) );
  AO222X1_RVT U992 ( .A1(n568), .A2(n585), .A3(n570), .A4(n439), .A5(n774), 
        .A6(do[0]), .Y(n1276) );
  AO21X1_RVT U993 ( .A1(n777), .A2(n439), .A3(n363), .Y(n423) );
  AO222X1_RVT U994 ( .A1(n922), .A2(di[0]), .A3(ALU_Q[0]), .A4(n923), .A5(n244), .A6(BusB[0]), .Y(n439) );
  INVX0_RVT U995 ( .A(n370), .Y(n400) );
  AO221X1_RVT U996 ( .A1(n268), .A2(n370), .A3(ID16[12]), .A4(n266), .A5(n926), 
        .Y(RegDIH[4]) );
  AO221X1_RVT U997 ( .A1(n268), .A2(n370), .A3(ID16[4]), .A4(n264), .A5(n916), 
        .Y(RegDIL[4]) );
  AO222X1_RVT U998 ( .A1(n568), .A2(n579), .A3(n570), .A4(n370), .A5(n774), 
        .A6(do[4]), .Y(n1272) );
  AO21X1_RVT U999 ( .A1(n777), .A2(n370), .A3(n363), .Y(n367) );
  AO222X1_RVT U1000 ( .A1(n922), .A2(di[4]), .A3(ALU_Q[4]), .A4(n923), .A5(
        n244), .A6(BusB[4]), .Y(n370) );
  INVX0_RVT U1001 ( .A(n336), .Y(n388) );
  AO221X1_RVT U1002 ( .A1(n267), .A2(n336), .A3(ID16[7]), .A4(n264), .A5(n911), 
        .Y(RegDIL[7]) );
  AO222X1_RVT U1003 ( .A1(n568), .A2(n569), .A3(n570), .A4(n336), .A5(n774), 
        .A6(do[7]), .Y(n1269) );
  AO21X1_RVT U1004 ( .A1(n777), .A2(n336), .A3(n363), .Y(n332) );
  AO222X1_RVT U1005 ( .A1(n922), .A2(di[7]), .A3(ALU_Q[7]), .A4(n923), .A5(
        n244), .A6(BusB[7]), .Y(n336) );
  INVX0_RVT U1006 ( .A(n380), .Y(n402) );
  AO221X1_RVT U1007 ( .A1(n268), .A2(n380), .A3(ID16[11]), .A4(n264), .A5(n927), .Y(RegDIH[3]) );
  AO221X1_RVT U1008 ( .A1(n267), .A2(n380), .A3(ID16[3]), .A4(n266), .A5(n917), 
        .Y(RegDIL[3]) );
  AO222X1_RVT U1009 ( .A1(n568), .A2(n581), .A3(n570), .A4(n380), .A5(n774), 
        .A6(do[3]), .Y(n1273) );
  AO21X1_RVT U1010 ( .A1(n777), .A2(n380), .A3(n363), .Y(n379) );
  AO222X1_RVT U1011 ( .A1(n922), .A2(di[3]), .A3(ALU_Q[3]), .A4(n923), .A5(
        n244), .A6(BusB[3]), .Y(n380) );
  INVX0_RVT U1012 ( .A(n412), .Y(n413) );
  AO221X1_RVT U1013 ( .A1(n268), .A2(n412), .A3(ID16[9]), .A4(n264), .A5(n929), 
        .Y(RegDIH[1]) );
  AO222X1_RVT U1014 ( .A1(n568), .A2(n584), .A3(n570), .A4(n412), .A5(n774), 
        .A6(do[1]), .Y(n1275) );
  AO21X1_RVT U1015 ( .A1(n777), .A2(n412), .A3(n363), .Y(n411) );
  AO222X1_RVT U1016 ( .A1(n922), .A2(di[1]), .A3(ALU_Q[1]), .A4(n923), .A5(
        n244), .A6(BusB[1]), .Y(n412) );
  INVX0_RVT U1017 ( .A(F_Out[6]), .Y(n387) );
  AND3X1_RVT U1018 ( .A1(n617), .A2(n618), .A3(n785), .Y(n608) );
  INVX0_RVT U1019 ( .A(n618), .Y(n729) );
  INVX0_RVT U1020 ( .A(Set_Addr_To[0]), .Y(n609) );
  INVX0_RVT U1021 ( .A(n824), .Y(n532) );
  AO21X1_RVT U1022 ( .A1(ts[1]), .A2(n829), .A3(n833), .Y(n1360) );
  AO21X1_RVT U1023 ( .A1(n827), .A2(n223), .A3(n528), .Y(n829) );
  AO22X1_RVT U1024 ( .A1(n529), .A2(mc[2]), .A3(n794), .A4(n875), .Y(n1366) );
  AND3X1_RVT U1025 ( .A1(n227), .A2(n822), .A3(n824), .Y(n738) );
  INVX0_RVT U1026 ( .A(n1146), .Y(n878) );
  AO221X1_RVT U1027 ( .A1(dinst[4]), .A2(n739), .A3(n750), .A4(n878), .A5(n742), .Y(n1328) );
  INVX1_RVT U1028 ( .A(ExchangeAF), .Y(n658) );
  NAND2X0_RVT U1029 ( .A1(ExchangeAF), .A2(n283), .Y(n419) );
  NAND2X0_RVT U1030 ( .A1(n654), .A2(ExchangeAF), .Y(n630) );
  AO22X1_RVT U1031 ( .A1(ExchangeAF), .A2(n977), .A3(n431), .A4(n658), .Y(n429) );
  AO221X1_RVT U1032 ( .A1(n794), .A2(n805), .A3(n529), .A4(mc[0]), .A5(n23), 
        .Y(n1347) );
  AO221X1_RVT U1033 ( .A1(n873), .A2(n855), .A3(n521), .A4(n842), .A5(n23), 
        .Y(n872) );
  AO221X1_RVT U1034 ( .A1(n855), .A2(n856), .A3(n521), .A4(n851), .A5(n360), 
        .Y(n845) );
  OAI22X1_RVT U1035 ( .A1(busrq_n), .A2(n834), .A3(n1170), .A4(n724), .Y(n1369) );
  OAI22X1_RVT U1036 ( .A1(int_n), .A2(n834), .A3(n951), .A4(n724), .Y(n1368)
         );
  OAI22X1_RVT U1037 ( .A1(n834), .A2(n1182), .A3(n724), .A4(n1173), .Y(n1361)
         );
  AO22X1_RVT U1038 ( .A1(n514), .A2(n541), .A3(n869), .A4(n870), .Y(n1365) );
  AND2X1_RVT U1039 ( .A1(n872), .A2(n848), .Y(n869) );
  INVX0_RVT U1040 ( .A(n872), .Y(n514) );
  NAND2X0_RVT U1041 ( .A1(n345), .A2(cen), .Y(n834) );
  INVX0_RVT U1042 ( .A(n219), .Y(n303) );
  NOR2X0_RVT U1043 ( .A1(n224), .A2(n754), .Y(n219) );
  AO221X1_RVT U1044 ( .A1(dinst[2]), .A2(n739), .A3(n750), .A4(n895), .A5(n742), .Y(n1330) );
  AO22X1_RVT U1045 ( .A1(nmi_n), .A2(n206), .A3(n1043), .A4(n510), .Y(n1370)
         );
  AO221X1_RVT U1046 ( .A1(n1040), .A2(n792), .A3(rfsh_n), .A4(n1043), .A5(n23), 
        .Y(n1345) );
  NAND2X0_RVT U1047 ( .A1(n206), .A2(n515), .Y(n871) );
  INVX1_RVT U1048 ( .A(n1147), .Y(n895) );
  AND3X1_RVT U1049 ( .A1(n889), .A2(n890), .A3(n891), .Y(n225) );
  NOR4X1_RVT U1050 ( .A1(Call), .A2(Jump), .A3(JumpXY), .A4(RstP), .Y(n218) );
  AND3X1_RVT U1051 ( .A1(n889), .A2(n890), .A3(n891), .Y(n227) );
  AO221X1_RVT U1052 ( .A1(dinst[5]), .A2(n739), .A3(n750), .A4(n863), .A5(n742), .Y(n1327) );
  AND4X1_RVT U1053 ( .A1(n218), .A2(n308), .A3(n580), .A4(n220), .Y(n144) );
  NAND2X0_RVT U1054 ( .A1(n143), .A2(n144), .Y(n78) );
  INVX0_RVT U1055 ( .A(n308), .Y(n311) );
  NAND2X0_RVT U1056 ( .A1(n210), .A2(n145), .Y(n77) );
  INVX0_RVT U1057 ( .A(n844), .Y(n521) );
  NAND3X0_RVT U1058 ( .A1(n609), .A2(n610), .A3(Set_Addr_To[1]), .Y(n214) );
  INVX0_RVT U1059 ( .A(n219), .Y(n298) );
  INVX1_RVT U1060 ( .A(n897), .Y(n261) );
  INVX0_RVT U1061 ( .A(n63), .Y(n229) );
  INVX0_RVT U1062 ( .A(n63), .Y(n231) );
  OA221X1_RVT U1063 ( .A1(n908), .A2(n325), .A3(n781), .A4(n764), .A5(
        IncDec_16[2]), .Y(n933) );
  NAND2X0_RVT U1064 ( .A1(n677), .A2(n946), .Y(n947) );
  NAND2X0_RVT U1065 ( .A1(n755), .A2(IncDec_16[2]), .Y(n946) );
  AO221X1_RVT U1066 ( .A1(n779), .A2(Set_BusA_To[1]), .A3(n238), .A4(n826), 
        .A5(n812), .Y(n1352) );
  AND2X1_RVT U1067 ( .A1(Set_BusA_To[1]), .A2(N1102), .Y(n711) );
  AO221X1_RVT U1068 ( .A1(n678), .A2(RegBusA[13]), .A3(n679), .A4(BusA[5]), 
        .A5(n692), .Y(n1312) );
  AND2X1_RVT U1069 ( .A1(n712), .A2(n612), .Y(n678) );
  INVX1_RVT U1070 ( .A(n87), .Y(n308) );
  INVX0_RVT U1071 ( .A(n797), .Y(n529) );
  NAND2X0_RVT U1072 ( .A1(n529), .A2(n836), .Y(n828) );
  INVX0_RVT U1073 ( .A(n828), .Y(n528) );
  NAND2X0_RVT U1074 ( .A1(n797), .A2(n798), .Y(n796) );
  AND2X1_RVT U1075 ( .A1(n832), .A2(n828), .Y(n831) );
  AO21X1_RVT U1076 ( .A1(n738), .A2(n1170), .A3(n23), .Y(n797) );
  OAI22X1_RVT U1077 ( .A1(n282), .A2(n1013), .A3(n234), .A4(n235), .Y(n270) );
  AO221X1_RVT U1078 ( .A1(n351), .A2(ACC[3]), .A3(n353), .A4(F[3]), .A5(n377), 
        .Y(n1233) );
  AO221X1_RVT U1079 ( .A1(n351), .A2(ACC[5]), .A3(n353), .A4(F[5]), .A5(n354), 
        .Y(n1231) );
  AND2X1_RVT U1080 ( .A1(n382), .A2(n664), .Y(n361) );
  AND3X1_RVT U1081 ( .A1(ExchangeAF), .A2(n382), .A3(n409), .Y(n364) );
  AND3X1_RVT U1082 ( .A1(n382), .A2(n658), .A3(n409), .Y(n375) );
  AND4X1_RVT U1083 ( .A1(n409), .A2(n418), .A3(n382), .A4(n419), .Y(n416) );
  INVX0_RVT U1084 ( .A(n283), .Y(n760) );
  NAND2X0_RVT U1085 ( .A1(n764), .A2(n101), .Y(n283) );
  INVX0_RVT U1086 ( .A(n908), .Y(n764) );
  OAI221X1_RVT U1087 ( .A1(n276), .A2(n1169), .A3(n211), .A4(n983), .A5(n358), 
        .Y(n1226) );
  OAI221X1_RVT U1088 ( .A1(n277), .A2(n990), .A3(n46), .A4(n1123), .A5(n358), 
        .Y(n1222) );
  OAI221X1_RVT U1089 ( .A1(n277), .A2(n1157), .A3(n215), .A4(n964), .A5(n358), 
        .Y(n1292) );
  OAI221X1_RVT U1090 ( .A1(n277), .A2(n1156), .A3(n211), .A4(n965), .A5(n358), 
        .Y(n1291) );
  OAI221X1_RVT U1091 ( .A1(n277), .A2(n1155), .A3(n215), .A4(n966), .A5(n358), 
        .Y(n1290) );
  OAI221X1_RVT U1092 ( .A1(n276), .A2(n1153), .A3(n211), .A4(n968), .A5(n358), 
        .Y(n1288) );
  OAI221X1_RVT U1093 ( .A1(n276), .A2(n1151), .A3(n215), .A4(n970), .A5(n358), 
        .Y(n1286) );
  OAI221X1_RVT U1094 ( .A1(n277), .A2(n1150), .A3(n215), .A4(n971), .A5(n358), 
        .Y(n1285) );
  OAI221X1_RVT U1095 ( .A1(n277), .A2(n1154), .A3(n215), .A4(n967), .A5(n358), 
        .Y(n1289) );
  OAI221X1_RVT U1096 ( .A1(n277), .A2(n1152), .A3(n215), .A4(n969), .A5(n358), 
        .Y(n1287) );
  AO221X1_RVT U1097 ( .A1(n215), .A2(n975), .A3(n277), .A4(n977), .A5(n363), 
        .Y(n1228) );
  AO221X1_RVT U1098 ( .A1(n211), .A2(F[1]), .A3(n276), .A4(n979), .A5(n363), 
        .Y(n1227) );
  AO221X1_RVT U1099 ( .A1(n215), .A2(F[3]), .A3(n276), .A4(n987), .A5(n363), 
        .Y(n1225) );
  AO221X1_RVT U1100 ( .A1(n211), .A2(F[4]), .A3(n276), .A4(n981), .A5(n363), 
        .Y(n1224) );
  AO221X1_RVT U1101 ( .A1(n215), .A2(F[5]), .A3(n276), .A4(n991), .A5(n363), 
        .Y(n1223) );
  AO221X1_RVT U1102 ( .A1(n211), .A2(F[7]), .A3(n276), .A4(n1009), .A5(n23), 
        .Y(n1221) );
  AO21X1_RVT U1103 ( .A1(n882), .A2(n214), .A3(n58), .Y(n213) );
  AND2X1_RVT U1104 ( .A1(Set_BusA_To[3]), .A2(Set_BusA_To[0]), .Y(n688) );
  AND2X1_RVT U1105 ( .A1(n711), .A2(Set_BusA_To[0]), .Y(n684) );
  AND2X1_RVT U1106 ( .A1(n712), .A2(Set_BusA_To[0]), .Y(n681) );
  OAI22X1_RVT U1107 ( .A1(n282), .A2(n997), .A3(n94), .A4(n235), .Y(n280) );
  AO221X1_RVT U1108 ( .A1(n678), .A2(RegBusA[8]), .A3(n275), .A4(BusA[0]), 
        .A5(n707), .Y(n1317) );
  FADDX1_RVT U1109 ( .A(RegBusA[2]), .B(n251), .CI(\add_1282/carry[2] ), .CO(
        \add_1282/carry[3] ), .S(ID16[2]) );
  AO221X1_RVT U1110 ( .A1(n268), .A2(n412), .A3(ID16[1]), .A4(n266), .A5(n919), 
        .Y(RegDIL[1]) );
  AO221X1_RVT U1111 ( .A1(ID16[0]), .A2(n266), .A3(n267), .A4(n439), .A5(n920), 
        .Y(RegDIL[0]) );
  AO221X1_RVT U1112 ( .A1(n268), .A2(n583), .A3(ID16[2]), .A4(n264), .A5(n918), 
        .Y(RegDIL[2]) );
  INVX0_RVT U1113 ( .A(RegBusA[0]), .Y(ID16[0]) );
  NAND2X0_RVT U1114 ( .A1(ExchangeDH), .A2(n564), .Y(n945) );
  FADDX1_RVT U1115 ( .A(RegBusA[14]), .B(n250), .CI(\add_1282/carry[14] ), 
        .CO(\add_1282/carry[15] ), .S(ID16[14]) );
  AO221X1_RVT U1116 ( .A1(n267), .A2(n343), .A3(ID16[14]), .A4(n266), .A5(n924), .Y(RegDIH[6]) );
  FADDX1_RVT U1117 ( .A(PC[5]), .B(PC16_B[5]), .CI(\add_1283/carry[5] ), .CO(
        \add_1283/carry[6] ), .S(PC16[5]) );
  FADDX1_RVT U1118 ( .A(PC[3]), .B(PC16_B[3]), .CI(\add_1283/carry[3] ), .CO(
        \add_1283/carry[4] ), .S(PC16[3]) );
  FADDX1_RVT U1119 ( .A(PC[4]), .B(PC16_B[4]), .CI(\add_1283/carry[4] ), .CO(
        \add_1283/carry[5] ), .S(PC16[4]) );
  FADDX1_RVT U1120 ( .A(PC[1]), .B(PC16_B[1]), .CI(\add_1283/carry[1] ), .CO(
        \add_1283/carry[2] ), .S(PC16[1]) );
  FADDX1_RVT U1121 ( .A(PC[7]), .B(n254), .CI(\add_1283/carry[7] ), .CO(
        \add_1283/carry[8] ), .S(PC16[7]) );
  FADDX1_RVT U1122 ( .A(PC[8]), .B(n258), .CI(\add_1283/carry[8] ), .CO(
        \add_1283/carry[9] ), .S(PC16[8]) );
  AO221X1_RVT U1123 ( .A1(n24), .A2(n984), .A3(n292), .A4(n506), .A5(n255), 
        .Y(n1208) );
  AO221X1_RVT U1124 ( .A1(n24), .A2(n985), .A3(n291), .A4(n502), .A5(n252), 
        .Y(n1207) );
  AO221X1_RVT U1125 ( .A1(n24), .A2(n986), .A3(n289), .A4(n500), .A5(n249), 
        .Y(n1206) );
  AO221X1_RVT U1126 ( .A1(n25), .A2(n988), .A3(n292), .A4(n496), .A5(n246), 
        .Y(n1205) );
  AO221X1_RVT U1127 ( .A1(n26), .A2(n1025), .A3(n291), .A4(n482), .A5(n230), 
        .Y(n1201) );
  AO221X1_RVT U1128 ( .A1(n25), .A2(n982), .A3(n292), .A4(n486), .A5(n237), 
        .Y(n1202) );
  AO221X1_RVT U1129 ( .A1(n26), .A2(n992), .A3(n289), .A4(n490), .A5(n240), 
        .Y(n1203) );
  AO221X1_RVT U1130 ( .A1(n257), .A2(TmpAddr[0]), .A3(n259), .A4(RegBusC[0]), 
        .A5(n280), .Y(n1216) );
  INVX1_RVT U1131 ( .A(n1128), .Y(n766) );
  AO221X1_RVT U1132 ( .A1(n257), .A2(TmpAddr[3]), .A3(n259), .A4(RegBusC[3]), 
        .A5(n272), .Y(n1213) );
  AO221X1_RVT U1133 ( .A1(n257), .A2(TmpAddr[4]), .A3(n259), .A4(RegBusC[4]), 
        .A5(n270), .Y(n1212) );
  AO22X1_RVT U1134 ( .A1(n710), .A2(n766), .A3(n788), .A4(Prefix[1]), .Y(n1343) );
  AO221X1_RVT U1135 ( .A1(n257), .A2(TmpAddr[7]), .A3(n259), .A4(RegBusC[7]), 
        .A5(n260), .Y(n1209) );
  NBUFFX2_RVT U1136 ( .A(n679), .Y(n275) );
  AND2X1_RVT U1137 ( .A1(N1107), .A2(n186), .Y(n56) );
  NAND2X0_RVT U1138 ( .A1(n306), .A2(n307), .Y(n284) );
  INVX0_RVT U1139 ( .A(Jump), .Y(n561) );
  XNOR2X1_RVT U1140 ( .A1(ts[2]), .A2(tstates[2]), .Y(n891) );
  INVX0_RVT U1141 ( .A(n44), .Y(n279) );
  INVX0_RVT U1142 ( .A(n44), .Y(n285) );
  NAND2X0_RVT U1143 ( .A1(n1072), .A2(n934), .Y(RegAddrB[0]) );
  NOR3X0_RVT U1144 ( .A1(Halt), .A2(Jump), .A3(Call), .Y(n290) );
  AND2X1_RVT U1145 ( .A1(n350), .A2(n333), .Y(n330) );
  INVX0_RVT U1146 ( .A(n333), .Y(n598) );
  AO222X1_RVT U1147 ( .A1(n330), .A2(n331), .A3(n332), .A4(n333), .A5(n598), 
        .A6(F[7]), .Y(n1229) );
  AO221X1_RVT U1148 ( .A1(Set_Addr_To[0]), .A2(n735), .A3(n33), .A4(n34), .A5(
        n744), .Y(n31) );
  INVX0_RVT U1149 ( .A(Set_Addr_To[2]), .Y(n610) );
  NAND3X0_RVT U1150 ( .A1(n218), .A2(n220), .A3(n221), .Y(n256) );
  INVX0_RVT U1151 ( .A(n256), .Y(n556) );
  AOI22X1_RVT U1152 ( .A1(N260), .A2(n318), .A3(n203), .A4(PC[13]), .Y(n99) );
  AOI22X1_RVT U1153 ( .A1(N261), .A2(n319), .A3(n205), .A4(PC[14]), .Y(n91) );
  AND2X1_RVT U1154 ( .A1(Set_Addr_To[1]), .A2(n609), .Y(n207) );
  OAI22X1_RVT U1155 ( .A1(Set_Addr_To[1]), .A2(Set_Addr_To[2]), .A3(n34), .A4(
        n214), .Y(n217) );
  NAND2X0_RVT U1156 ( .A1(n210), .A2(n204), .Y(n167) );
  AO22X1_RVT U1157 ( .A1(Set_Addr_To[1]), .A2(Set_Addr_To[0]), .A3(n552), .A4(
        n548), .Y(n204) );
  AO221X1_RVT U1158 ( .A1(n876), .A2(n549), .A3(n537), .A4(n877), .A5(n552), 
        .Y(n875) );
  INVX0_RVT U1159 ( .A(n213), .Y(n552) );
  FADDX1_RVT U1160 ( .A(RegBusA[10]), .B(n251), .CI(\add_1282/carry[10] ), 
        .CO(\add_1282/carry[11] ), .S(ID16[10]) );
  FADDX1_RVT U1161 ( .A(RegBusA[12]), .B(n250), .CI(\add_1282/carry[12] ), 
        .CO(\add_1282/carry[13] ), .S(ID16[12]) );
  OR3X2_RVT U1162 ( .A1(Jump), .A2(JumpXY), .A3(n236), .Y(n233) );
  XOR3X2_RVT U1163 ( .A1(RegBusA[15]), .A2(n250), .A3(\add_1282/carry[15] ), 
        .Y(ID16[15]) );
  INVX0_RVT U1164 ( .A(n941), .Y(n576) );
  FADDX1_RVT U1165 ( .A(RegBusA[13]), .B(n250), .CI(\add_1282/carry[13] ), 
        .CO(\add_1282/carry[14] ), .S(ID16[13]) );
  NAND2X0_RVT U1166 ( .A1(IncDec_16[1]), .A2(IncDec_16[0]), .Y(n906) );
  FADDX1_RVT U1167 ( .A(RegBusA[4]), .B(n251), .CI(\add_1282/carry[4] ), .CO(
        \add_1282/carry[5] ), .S(ID16[4]) );
  AO22X1_RVT U1168 ( .A1(n576), .A2(IncDec_16[1]), .A3(n942), .A4(n941), .Y(
        RegAddrA[1]) );
  FADDX1_RVT U1169 ( .A(RegBusA[6]), .B(n251), .CI(\add_1282/carry[6] ), .CO(
        \add_1282/carry[7] ), .S(ID16[6]) );
  AO22X1_RVT U1170 ( .A1(JumpE), .A2(di[0]), .A3(n1148), .A4(n621), .Y(
        PC16_B[0]) );
  OR3X2_RVT U1171 ( .A1(n22), .A2(Inc_PC), .A3(n861), .Y(n307) );
  INVX0_RVT U1172 ( .A(n212), .Y(n553) );
  XNOR2X1_RVT U1173 ( .A1(ts[1]), .A2(tstates[1]), .Y(n889) );
  AO22X1_RVT U1174 ( .A1(RegBusB[1]), .A2(n209), .A3(n713), .A4(n949), .Y(n919) );
  AO22X1_RVT U1175 ( .A1(RegBusB[0]), .A2(n209), .A3(n713), .A4(n940), .Y(n920) );
  AO22X1_RVT U1176 ( .A1(RegBusB[15]), .A2(n209), .A3(n713), .A4(n936), .Y(
        n921) );
  NAND2X0_RVT U1177 ( .A1(SetDI), .A2(n324), .Y(n848) );
  NAND2X0_RVT U1178 ( .A1(LDW), .A2(n325), .Y(n454) );
  NAND2X0_RVT U1179 ( .A1(n325), .A2(n1049), .Y(SP16_B[0]) );
  NAND2X0_RVT U1180 ( .A1(n744), .A2(n324), .Y(n469) );
  NAND2X0_RVT U1181 ( .A1(LDZ), .A2(n326), .Y(n468) );
  NAND2X0_RVT U1182 ( .A1(Special_LD[2]), .A2(n325), .Y(n618) );
  INVX0_RVT U1183 ( .A(n30), .Y(n274) );
  INVX0_RVT U1184 ( .A(n782), .Y(n238) );
  INVX0_RVT U1185 ( .A(n782), .Y(n239) );
  NAND2X0_RVT U1186 ( .A1(n345), .A2(n274), .Y(n782) );
  AND2X1_RVT U1187 ( .A1(n809), .A2(n213), .Y(n807) );
  AND4X1_RVT U1188 ( .A1(n1170), .A2(n225), .A3(n822), .A4(n213), .Y(n854) );
  INVX0_RVT U1189 ( .A(Special_LD[0]), .Y(n733) );
  FADDX1_RVT U1190 ( .A(RegBusA[7]), .B(n253), .CI(\add_1282/carry[7] ), .CO(
        \add_1282/carry[8] ), .S(ID16[7]) );
  NAND2X0_RVT U1191 ( .A1(n762), .A2(n227), .Y(n304) );
  NAND2X0_RVT U1192 ( .A1(n345), .A2(n304), .Y(n224) );
  OA21X1_RVT U1193 ( .A1(n304), .A2(n732), .A3(n408), .Y(n417) );
  INVX0_RVT U1194 ( .A(n305), .Y(n762) );
  AO221X1_RVT U1195 ( .A1(n688), .A2(Set_BusA_To[1]), .A3(Set_BusA_To[3]), 
        .A4(N1102), .A5(n14), .Y(n679) );
  AO21X1_RVT U1196 ( .A1(n762), .A2(n473), .A3(n363), .Y(n456) );
  NAND2X0_RVT U1197 ( .A1(n762), .A2(n298), .Y(n87) );
  NAND2X0_RVT U1198 ( .A1(busak_n), .A2(cen), .Y(n14) );
  AO221X1_RVT U1199 ( .A1(n25), .A2(n989), .A3(n291), .A4(n492), .A5(n243), 
        .Y(n1204) );
  INVX0_RVT U1200 ( .A(n620), .Y(n754) );
  AO22X1_RVT U1201 ( .A1(N1218), .A2(n342), .A3(n337), .A4(BusB[3]), .Y(n1114)
         );
  AO22X1_RVT U1202 ( .A1(N1102), .A2(n338), .A3(n334), .A4(n793), .Y(n1110) );
  AO22X1_RVT U1203 ( .A1(N1216), .A2(n202), .A3(n14), .A4(BusB[1]), .Y(n1112)
         );
  AO22X1_RVT U1204 ( .A1(N1217), .A2(n342), .A3(n14), .A4(BusB[2]), .Y(n1113)
         );
  AO22X1_RVT U1205 ( .A1(RegBusA[10]), .A2(n342), .A3(n337), .A4(n909), .Y(
        n1100) );
  AO22X1_RVT U1206 ( .A1(RegBusA[8]), .A2(n339), .A3(n337), .A4(n903), .Y(
        n1102) );
  AO22X1_RVT U1207 ( .A1(RegBusA[13]), .A2(n202), .A3(n334), .A4(n913), .Y(
        n1097) );
  AO22X1_RVT U1208 ( .A1(RegBusA[9]), .A2(n202), .A3(n337), .A4(n904), .Y(
        n1101) );
  AO22X1_RVT U1209 ( .A1(N1107), .A2(n339), .A3(n335), .A4(n787), .Y(n1111) );
  AO22X1_RVT U1210 ( .A1(mcycles_d[2]), .A2(n785), .A3(n239), .A4(n1037), .Y(
        n1218) );
  AO22X1_RVT U1211 ( .A1(mcycles_d[0]), .A2(n785), .A3(n239), .A4(n1031), .Y(
        n1220) );
  NAND2X0_RVT U1212 ( .A1(n339), .A2(n109), .Y(n36) );
  AO22X1_RVT U1213 ( .A1(Arith16), .A2(n30), .A3(n238), .A4(Arith16_r), .Y(
        n1354) );
  AO22X1_RVT U1214 ( .A1(mcycles_d[1]), .A2(n327), .A3(n238), .A4(n1034), .Y(
        n1219) );
  AO22X1_RVT U1215 ( .A1(PreserveC), .A2(n785), .A3(n239), .A4(n806), .Y(n1348) );
  OAI22X1_RVT U1216 ( .A1(n305), .A2(n780), .A3(n682), .A4(n1074), .Y(n1341)
         );
  AND2X1_RVT U1217 ( .A1(Prefix[0]), .A2(n327), .Y(n746) );
  AND2X1_RVT U1218 ( .A1(n225), .A2(n327), .Y(n779) );
  NAND2X0_RVT U1219 ( .A1(n328), .A2(n586), .Y(n587) );
  NAND2X0_RVT U1220 ( .A1(n328), .A2(n348), .Y(n407) );
  NAND2X0_RVT U1221 ( .A1(n30), .A2(n283), .Y(n305) );
  INVX1_RVT U1222 ( .A(n14), .Y(n338) );
  AO222X1_RVT U1223 ( .A1(PC16[1]), .A2(n295), .A3(n289), .A4(n477), .A5(n231), 
        .A6(PC[1]), .Y(n1215) );
  AO222X1_RVT U1224 ( .A1(PC16[2]), .A2(n295), .A3(n292), .A4(n467), .A5(n231), 
        .A6(PC[2]), .Y(n1214) );
  AO222X1_RVT U1225 ( .A1(PC16[5]), .A2(n295), .A3(n291), .A4(n457), .A5(n231), 
        .A6(PC[5]), .Y(n1211) );
  AO222X1_RVT U1226 ( .A1(PC16[6]), .A2(n295), .A3(n289), .A4(n453), .A5(n231), 
        .A6(PC[6]), .Y(n1210) );
  AO22X1_RVT U1227 ( .A1(n229), .A2(PC[8]), .A3(PC16[8]), .A4(n296), .Y(n255)
         );
  AO22X1_RVT U1228 ( .A1(n231), .A2(PC[9]), .A3(PC16[9]), .A4(n297), .Y(n252)
         );
  AO22X1_RVT U1229 ( .A1(n229), .A2(PC[10]), .A3(PC16[10]), .A4(n296), .Y(n249) );
  AO22X1_RVT U1230 ( .A1(n231), .A2(PC[11]), .A3(PC16[11]), .A4(n297), .Y(n246) );
  AO22X1_RVT U1231 ( .A1(n229), .A2(PC[12]), .A3(PC16[12]), .A4(n296), .Y(n243) );
  AO22X1_RVT U1232 ( .A1(n231), .A2(PC[13]), .A3(PC16[13]), .A4(n297), .Y(n240) );
  AO22X1_RVT U1233 ( .A1(n229), .A2(PC[14]), .A3(PC16[14]), .A4(n296), .Y(n237) );
  AO22X1_RVT U1234 ( .A1(n229), .A2(PC[15]), .A3(PC16[15]), .A4(n295), .Y(n230) );
  AO22X1_RVT U1235 ( .A1(n229), .A2(PC[3]), .A3(PC16[3]), .A4(n297), .Y(n272)
         );
  AO22X1_RVT U1236 ( .A1(n229), .A2(PC[7]), .A3(PC16[7]), .A4(n297), .Y(n260)
         );
  AO22X1_RVT U1237 ( .A1(RegBusA[7]), .A2(n202), .A3(n335), .A4(n973), .Y(
        n1087) );
  AO22X1_RVT U1238 ( .A1(N1222), .A2(n339), .A3(n335), .A4(BusB[7]), .Y(n1118)
         );
  AO22X1_RVT U1239 ( .A1(N1220), .A2(n342), .A3(n14), .A4(BusB[5]), .Y(n1116)
         );
  AO22X1_RVT U1240 ( .A1(N1219), .A2(n202), .A3(n335), .A4(BusB[4]), .Y(n1115)
         );
  AO22X1_RVT U1241 ( .A1(N1221), .A2(n339), .A3(n337), .A4(BusB[6]), .Y(n1117)
         );
  AO222X1_RVT U1242 ( .A1(n335), .A2(n867), .A3(N1107), .A4(n47), .A5(
        Set_BusB_To[1]), .A6(n202), .Y(n1108) );
  AO222X1_RVT U1243 ( .A1(n337), .A2(n868), .A3(N1102), .A4(n47), .A5(
        Set_BusA_To[1]), .A6(n342), .Y(n1106) );
  NAND2X0_RVT U1244 ( .A1(n342), .A2(n671), .Y(n668) );
  AO22X1_RVT U1245 ( .A1(RegBusA[0]), .A2(n202), .A3(n14), .A4(n940), .Y(n1094) );
  AO22X1_RVT U1246 ( .A1(n681), .A2(RegBusA[0]), .A3(n611), .A4(n708), .Y(n707) );
  FADDX1_RVT U1247 ( .A(RegBusA[9]), .B(n253), .CI(\add_1282/carry[9] ), .CO(
        \add_1282/carry[10] ), .S(ID16[9]) );
  FADDX1_RVT U1248 ( .A(RegBusA[8]), .B(n251), .CI(\add_1282/carry[8] ), .CO(
        \add_1282/carry[9] ), .S(ID16[8]) );
  FADDX1_RVT U1249 ( .A(RegBusA[5]), .B(n253), .CI(\add_1282/carry[5] ), .CO(
        \add_1282/carry[6] ), .S(ID16[5]) );
  FADDX1_RVT U1250 ( .A(RegBusA[1]), .B(n253), .CI(RegBusA[0]), .CO(
        \add_1282/carry[2] ), .S(ID16[1]) );
  AO221X1_RVT U1251 ( .A1(n268), .A2(n336), .A3(ID16[15]), .A4(n264), .A5(n921), .Y(RegDIH[7]) );
  FADDX1_RVT U1252 ( .A(RegBusA[11]), .B(n250), .CI(\add_1282/carry[11] ), 
        .CO(\add_1282/carry[12] ), .S(ID16[11]) );
  FADDX1_RVT U1253 ( .A(RegBusA[3]), .B(n253), .CI(\add_1282/carry[3] ), .CO(
        \add_1282/carry[4] ), .S(ID16[3]) );
  NOR4X0_RVT U1254 ( .A1(ID16[12]), .A2(ID16[11]), .A3(ID16[10]), .A4(ID16[0]), 
        .Y(n384) );
  NOR4X0_RVT U1255 ( .A1(ID16[5]), .A2(ID16[4]), .A3(ID16[3]), .A4(ID16[2]), 
        .Y(n374) );
  NOR4X0_RVT U1256 ( .A1(ID16[9]), .A2(ID16[8]), .A3(ID16[7]), .A4(ID16[6]), 
        .Y(n368) );
  AND4X1_RVT U1257 ( .A1(n384), .A2(n376), .A3(n374), .A4(n368), .Y(N1121) );
endmodule


module tv80s ( m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n, A, 
        do, reset_n, clk, wait_n, int_n, nmi_n, busrq_n, di );
  output [15:0] A;
  output [7:0] do;
  input [7:0] di;
  input reset_n, clk, wait_n, int_n, nmi_n, busrq_n;
  output m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n;
  wire   iorq, no_read, write, intcycle_n, N33, N34, N35, N36, n10, n11, n12,
         n13, n14, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42;
  wire   [7:0] di_reg;
  wire   [2:0] mcycle;
  wire   [2:0] tstate;

  tv80_core i_tv80_core ( .m1_n(m1_n), .iorq(iorq), .no_read(no_read), .write(
        write), .rfsh_n(rfsh_n), .halt_n(halt_n), .busak_n(busak_n), .A(A), 
        .do(do), .mc(mcycle), .ts(tstate), .intcycle_n(intcycle_n), .reset_n(
        reset_n), .clk(clk), .cen(1'b1), .wait_n(wait_n), .int_n(int_n), 
        .nmi_n(nmi_n), .busrq_n(busrq_n), .dinst(di), .di(di_reg) );
  DFFX1_RVT \di_reg_reg[6]  ( .D(n25), .CLK(clk), .Q(di_reg[6]) );
  DFFX1_RVT \di_reg_reg[7]  ( .D(n24), .CLK(clk), .Q(di_reg[7]) );
  DFFX1_RVT \di_reg_reg[2]  ( .D(n29), .CLK(clk), .Q(di_reg[2]) );
  DFFX1_RVT iorq_n_reg ( .D(N35), .CLK(clk), .Q(iorq_n) );
  DFFX1_RVT mreq_n_reg ( .D(N36), .CLK(clk), .Q(mreq_n) );
  DFFX1_RVT wr_n_reg ( .D(N34), .CLK(clk), .Q(wr_n) );
  DFFX1_RVT rd_n_reg ( .D(N33), .CLK(clk), .Q(rd_n) );
  DFFX1_RVT \di_reg_reg[0]  ( .D(n31), .CLK(clk), .Q(di_reg[0]) );
  DFFX1_RVT \di_reg_reg[5]  ( .D(n26), .CLK(clk), .Q(di_reg[5]) );
  DFFX1_RVT \di_reg_reg[4]  ( .D(n27), .CLK(clk), .Q(di_reg[4]) );
  DFFX1_RVT \di_reg_reg[3]  ( .D(n28), .CLK(clk), .Q(di_reg[3]) );
  DFFX1_RVT \di_reg_reg[1]  ( .D(n30), .CLK(clk), .Q(di_reg[1]) );
  INVX1_RVT U38 ( .A(tstate[1]), .Y(n39) );
  NOR3X0_RVT U39 ( .A1(tstate[0]), .A2(tstate[2]), .A3(n39), .Y(n12) );
  AO22X1_RVT U40 ( .A1(n12), .A2(n42), .A3(n23), .A4(tstate[0]), .Y(n22) );
  AO21X1_RVT U41 ( .A1(wait_n), .A2(n12), .A3(n34), .Y(n11) );
  INVX1_RVT U42 ( .A(tstate[2]), .Y(n40) );
  INVX1_RVT U43 ( .A(mcycle[0]), .Y(n41) );
  AND2X1_RVT U44 ( .A1(reset_n), .A2(n11), .Y(n10) );
  AO221X1_RVT U45 ( .A1(n13), .A2(n36), .A3(iorq), .A4(n14), .A5(n15), .Y(N36)
         );
  AND3X1_RVT U46 ( .A1(tstate[1]), .A2(n40), .A3(tstate[0]), .Y(n33) );
  INVX1_RVT U47 ( .A(iorq), .Y(n35) );
  INVX1_RVT U48 ( .A(n16), .Y(n32) );
  NAND3X0_RVT U49 ( .A1(n20), .A2(n21), .A3(n14), .Y(n19) );
  OR3X1_RVT U50 ( .A1(write), .A2(no_read), .A3(n37), .Y(n21) );
  NAND2X0_RVT U51 ( .A1(write), .A2(n12), .Y(n20) );
  INVX1_RVT U52 ( .A(n11), .Y(n38) );
  INVX1_RVT U53 ( .A(n22), .Y(n37) );
  INVX1_RVT U54 ( .A(n14), .Y(n36) );
  NOR2X0_RVT U55 ( .A1(n32), .A2(n33), .Y(n13) );
  AO221X1_RVT U56 ( .A1(n36), .A2(n18), .A3(n14), .A4(n35), .A5(n15), .Y(N35)
         );
  OR2X1_RVT U57 ( .A1(intcycle_n), .A2(n37), .Y(n18) );
  AO22X1_RVT U58 ( .A1(di_reg[1]), .A2(n38), .A3(di[1]), .A4(n10), .Y(n30) );
  AO22X1_RVT U59 ( .A1(di_reg[3]), .A2(n38), .A3(di[3]), .A4(n10), .Y(n28) );
  AO22X1_RVT U60 ( .A1(di_reg[4]), .A2(n38), .A3(di[4]), .A4(n10), .Y(n27) );
  AO22X1_RVT U61 ( .A1(di_reg[5]), .A2(n38), .A3(di[5]), .A4(n10), .Y(n26) );
  AO22X1_RVT U62 ( .A1(di_reg[0]), .A2(n38), .A3(di[0]), .A4(n10), .Y(n31) );
  AO22X1_RVT U63 ( .A1(di_reg[2]), .A2(n38), .A3(di[2]), .A4(n10), .Y(n29) );
  AO22X1_RVT U64 ( .A1(di_reg[6]), .A2(n38), .A3(di[6]), .A4(n10), .Y(n25) );
  AO22X1_RVT U65 ( .A1(di_reg[7]), .A2(n38), .A3(di[7]), .A4(n10), .Y(n24) );
  AND2X1_RVT U66 ( .A1(n39), .A2(n40), .Y(n23) );
  INVX1_RVT U67 ( .A(wait_n), .Y(n42) );
  NAND2X0_RVT U68 ( .A1(intcycle_n), .A2(n22), .Y(n16) );
  AO221X1_RVT U69 ( .A1(n36), .A2(n16), .A3(n14), .A4(n21), .A5(n34), .Y(N33)
         );
  OR3X1_RVT U70 ( .A1(n34), .A2(n36), .A3(n20), .Y(N34) );
  NAND2X0_RVT U71 ( .A1(reset_n), .A2(n19), .Y(n15) );
  INVX1_RVT U72 ( .A(reset_n), .Y(n34) );
  OR3X2_RVT U73 ( .A1(mcycle[2]), .A2(mcycle[1]), .A3(n41), .Y(n14) );
endmodule

