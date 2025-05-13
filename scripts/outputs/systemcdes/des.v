/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4-1
// Date      : Tue May 13 10:43:41 2025
/////////////////////////////////////////////////////////////


module key_gen ( previous_key, iteration, decrypt, non_perm_key, new_key );
  input [55:0] previous_key;
  input [3:0] iteration;
  output [55:0] non_perm_key;
  output [47:0] new_key;
  input decrypt;
  wire   n1, n2, n3, n6, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n4, n5, n7, n8, n9, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95;
  assign new_key[43] = non_perm_key[55];
  assign new_key[24] = non_perm_key[54];
  assign new_key[41] = non_perm_key[53];
  assign new_key[32] = non_perm_key[52];
  assign new_key[42] = non_perm_key[51];
  assign new_key[38] = non_perm_key[50];
  assign new_key[28] = non_perm_key[49];
  assign new_key[30] = non_perm_key[48];
  assign new_key[36] = non_perm_key[46];
  assign new_key[45] = non_perm_key[45];
  assign new_key[33] = non_perm_key[44];
  assign new_key[25] = non_perm_key[43];
  assign new_key[47] = non_perm_key[42];
  assign new_key[39] = non_perm_key[41];
  assign new_key[29] = non_perm_key[40];
  assign new_key[46] = non_perm_key[39];
  assign new_key[34] = non_perm_key[37];
  assign new_key[26] = non_perm_key[36];
  assign new_key[37] = non_perm_key[35];
  assign new_key[35] = non_perm_key[33];
  assign new_key[44] = non_perm_key[32];
  assign new_key[31] = non_perm_key[30];
  assign new_key[27] = non_perm_key[29];
  assign new_key[40] = non_perm_key[28];
  assign new_key[1] = non_perm_key[27];
  assign new_key[17] = non_perm_key[26];
  assign new_key[21] = non_perm_key[25];
  assign new_key[0] = non_perm_key[24];
  assign new_key[13] = non_perm_key[23];
  assign new_key[7] = non_perm_key[22];
  assign new_key[2] = non_perm_key[20];
  assign new_key[20] = non_perm_key[19];
  assign new_key[9] = non_perm_key[17];
  assign new_key[16] = non_perm_key[16];
  assign new_key[23] = non_perm_key[15];
  assign new_key[4] = non_perm_key[14];
  assign new_key[11] = non_perm_key[12];
  assign new_key[14] = non_perm_key[11];
  assign new_key[5] = non_perm_key[10];
  assign new_key[19] = non_perm_key[9];
  assign new_key[12] = non_perm_key[8];
  assign new_key[10] = non_perm_key[7];
  assign new_key[3] = non_perm_key[6];
  assign new_key[15] = non_perm_key[5];
  assign new_key[22] = non_perm_key[4];
  assign new_key[6] = non_perm_key[3];
  assign new_key[18] = non_perm_key[1];
  assign new_key[8] = non_perm_key[0];

  AO221X1_RVT U1 ( .A1(previous_key[52]), .A2(n94), .A3(previous_key[51]), 
        .A4(n89), .A5(n18), .Y(non_perm_key[51]) );
  AO221X1_RVT U2 ( .A1(previous_key[10]), .A2(n91), .A3(previous_key[9]), .A4(
        n86), .A5(n6), .Y(non_perm_key[9]) );
  NAND3X0_RVT U3 ( .A1(n68), .A2(n69), .A3(n70), .Y(n67) );
  AO221X1_RVT U4 ( .A1(previous_key[36]), .A2(n93), .A3(previous_key[35]), 
        .A4(n88), .A5(n36), .Y(non_perm_key[35]) );
  AO221X1_RVT U5 ( .A1(previous_key[47]), .A2(n94), .A3(previous_key[46]), 
        .A4(n89), .A5(n24), .Y(non_perm_key[46]) );
  INVX1_RVT U6 ( .A(iteration[0]), .Y(n2) );
  NAND3X0_RVT U7 ( .A1(n65), .A2(n66), .A3(decrypt), .Y(n8) );
  NAND4X0_RVT U8 ( .A1(iteration[3]), .A2(iteration[2]), .A3(iteration[1]), 
        .A4(iteration[0]), .Y(n69) );
  OR2X1_RVT U9 ( .A1(n68), .A2(iteration[0]), .Y(n66) );
  AO221X1_RVT U10 ( .A1(previous_key[28]), .A2(n95), .A3(previous_key[55]), 
        .A4(n90), .A5(n14), .Y(non_perm_key[55]) );
  AO221X1_RVT U11 ( .A1(previous_key[44]), .A2(n94), .A3(previous_key[43]), 
        .A4(n89), .A5(n27), .Y(non_perm_key[43]) );
  AO221X1_RVT U12 ( .A1(previous_key[34]), .A2(n93), .A3(previous_key[33]), 
        .A4(n88), .A5(n38), .Y(non_perm_key[33]) );
  AO221X1_RVT U13 ( .A1(previous_key[15]), .A2(n91), .A3(previous_key[14]), 
        .A4(n86), .A5(n59), .Y(non_perm_key[14]) );
  AO221X1_RVT U14 ( .A1(previous_key[38]), .A2(n93), .A3(previous_key[37]), 
        .A4(n88), .A5(n34), .Y(non_perm_key[37]) );
  AO221X1_RVT U15 ( .A1(previous_key[24]), .A2(n92), .A3(previous_key[23]), 
        .A4(n87), .A5(n49), .Y(non_perm_key[23]) );
  AO221X1_RVT U16 ( .A1(n95), .A2(previous_key[11]), .A3(n90), .A4(
        previous_key[10]), .A5(n63), .Y(non_perm_key[10]) );
  AO221X1_RVT U17 ( .A1(previous_key[53]), .A2(n94), .A3(previous_key[52]), 
        .A4(n89), .A5(n17), .Y(non_perm_key[52]) );
  AO221X1_RVT U18 ( .A1(previous_key[16]), .A2(n91), .A3(previous_key[15]), 
        .A4(n86), .A5(n58), .Y(non_perm_key[15]) );
  INVX1_RVT U19 ( .A(n4), .Y(n81) );
  INVX1_RVT U20 ( .A(n5), .Y(n91) );
  INVX1_RVT U21 ( .A(n4), .Y(n83) );
  INVX1_RVT U22 ( .A(n5), .Y(n93) );
  INVX1_RVT U23 ( .A(n4), .Y(n84) );
  INVX1_RVT U24 ( .A(n5), .Y(n94) );
  INVX1_RVT U25 ( .A(n4), .Y(n82) );
  INVX1_RVT U26 ( .A(n7), .Y(n86) );
  INVX1_RVT U27 ( .A(n5), .Y(n92) );
  INVX1_RVT U28 ( .A(n7), .Y(n89) );
  INVX1_RVT U29 ( .A(n7), .Y(n88) );
  INVX1_RVT U30 ( .A(n7), .Y(n87) );
  INVX1_RVT U31 ( .A(n4), .Y(n85) );
  INVX1_RVT U32 ( .A(n5), .Y(n95) );
  INVX1_RVT U33 ( .A(n7), .Y(n90) );
  INVX1_RVT U34 ( .A(n8), .Y(n71) );
  AO222X1_RVT U35 ( .A1(previous_key[13]), .A2(n81), .A3(previous_key[12]), 
        .A4(n80), .A5(previous_key[16]), .A6(n71), .Y(n59) );
  AO221X1_RVT U36 ( .A1(previous_key[13]), .A2(n91), .A3(previous_key[12]), 
        .A4(n86), .A5(n61), .Y(non_perm_key[12]) );
  AO222X1_RVT U37 ( .A1(previous_key[11]), .A2(n81), .A3(previous_key[10]), 
        .A4(n80), .A5(previous_key[14]), .A6(n71), .Y(n61) );
  INVX1_RVT U38 ( .A(n8), .Y(n74) );
  AO222X1_RVT U39 ( .A1(previous_key[14]), .A2(n81), .A3(previous_key[13]), 
        .A4(n80), .A5(previous_key[17]), .A6(n71), .Y(n58) );
  INVX1_RVT U40 ( .A(n8), .Y(n72) );
  INVX1_RVT U41 ( .A(n8), .Y(n73) );
  AO222X1_RVT U42 ( .A1(previous_key[6]), .A2(n85), .A3(previous_key[5]), .A4(
        n76), .A5(previous_key[9]), .A6(n75), .Y(n11) );
  AO222X1_RVT U43 ( .A1(previous_key[53]), .A2(n85), .A3(previous_key[52]), 
        .A4(n76), .A5(previous_key[28]), .A6(n75), .Y(n15) );
  AO221X1_RVT U44 ( .A1(previous_key[5]), .A2(n94), .A3(previous_key[4]), .A4(
        n89), .A5(n20), .Y(non_perm_key[4]) );
  AO222X1_RVT U45 ( .A1(previous_key[31]), .A2(n83), .A3(previous_key[30]), 
        .A4(n78), .A5(previous_key[34]), .A6(n73), .Y(n39) );
  AO221X1_RVT U46 ( .A1(previous_key[31]), .A2(n92), .A3(previous_key[30]), 
        .A4(n87), .A5(n41), .Y(non_perm_key[30]) );
  AO222X1_RVT U47 ( .A1(previous_key[19]), .A2(n82), .A3(previous_key[18]), 
        .A4(n79), .A5(previous_key[22]), .A6(n72), .Y(n52) );
  AO221X1_RVT U48 ( .A1(previous_key[18]), .A2(n91), .A3(previous_key[17]), 
        .A4(n86), .A5(n56), .Y(non_perm_key[17]) );
  AO222X1_RVT U49 ( .A1(previous_key[16]), .A2(n81), .A3(previous_key[15]), 
        .A4(n79), .A5(previous_key[19]), .A6(n71), .Y(n56) );
  AO221X1_RVT U50 ( .A1(previous_key[20]), .A2(n91), .A3(previous_key[19]), 
        .A4(n86), .A5(n54), .Y(non_perm_key[19]) );
  AO221X1_RVT U51 ( .A1(previous_key[49]), .A2(n94), .A3(previous_key[48]), 
        .A4(n89), .A5(n22), .Y(non_perm_key[48]) );
  AO221X1_RVT U52 ( .A1(previous_key[26]), .A2(n92), .A3(previous_key[25]), 
        .A4(n87), .A5(n47), .Y(non_perm_key[25]) );
  NAND2X0_RVT U53 ( .A1(n67), .A2(n3), .Y(n4) );
  AO221X1_RVT U54 ( .A1(previous_key[40]), .A2(n93), .A3(previous_key[39]), 
        .A4(n88), .A5(n32), .Y(non_perm_key[39]) );
  AO222X1_RVT U55 ( .A1(previous_key[38]), .A2(n83), .A3(previous_key[37]), 
        .A4(n77), .A5(previous_key[41]), .A6(n73), .Y(n32) );
  AO222X1_RVT U56 ( .A1(previous_key[49]), .A2(n84), .A3(previous_key[48]), 
        .A4(n76), .A5(previous_key[52]), .A6(n74), .Y(n19) );
  AO222X1_RVT U57 ( .A1(previous_key[41]), .A2(n84), .A3(previous_key[40]), 
        .A4(n77), .A5(previous_key[44]), .A6(n74), .Y(n28) );
  AO221X1_RVT U58 ( .A1(previous_key[17]), .A2(n91), .A3(previous_key[16]), 
        .A4(n86), .A5(n57), .Y(non_perm_key[16]) );
  AO222X1_RVT U59 ( .A1(previous_key[15]), .A2(n81), .A3(previous_key[14]), 
        .A4(n80), .A5(previous_key[18]), .A6(n71), .Y(n57) );
  AO221X1_RVT U60 ( .A1(previous_key[6]), .A2(n95), .A3(previous_key[5]), .A4(
        n90), .A5(n13), .Y(non_perm_key[5]) );
  AO221X1_RVT U61 ( .A1(previous_key[27]), .A2(n92), .A3(previous_key[26]), 
        .A4(n87), .A5(n46), .Y(non_perm_key[26]) );
  INVX1_RVT U62 ( .A(n9), .Y(n77) );
  INVX1_RVT U63 ( .A(n9), .Y(n79) );
  INVX1_RVT U64 ( .A(n9), .Y(n76) );
  OR2X1_RVT U65 ( .A1(n3), .A2(n65), .Y(n5) );
  AO221X1_RVT U66 ( .A1(previous_key[12]), .A2(n91), .A3(n90), .A4(
        previous_key[11]), .A5(n62), .Y(non_perm_key[11]) );
  AO222X1_RVT U67 ( .A1(previous_key[10]), .A2(n81), .A3(previous_key[9]), 
        .A4(n80), .A5(previous_key[13]), .A6(n71), .Y(n62) );
  AO221X1_RVT U68 ( .A1(previous_key[42]), .A2(n93), .A3(previous_key[41]), 
        .A4(n88), .A5(n29), .Y(non_perm_key[41]) );
  AO222X1_RVT U69 ( .A1(previous_key[28]), .A2(n82), .A3(previous_key[55]), 
        .A4(n78), .A5(previous_key[31]), .A6(n72), .Y(n43) );
  INVX1_RVT U70 ( .A(n9), .Y(n78) );
  AO221X1_RVT U71 ( .A1(previous_key[41]), .A2(n93), .A3(previous_key[40]), 
        .A4(n88), .A5(n30), .Y(non_perm_key[40]) );
  AO222X1_RVT U72 ( .A1(previous_key[39]), .A2(n83), .A3(previous_key[38]), 
        .A4(n77), .A5(previous_key[42]), .A6(n73), .Y(n30) );
  AO222X1_RVT U73 ( .A1(previous_key[35]), .A2(n83), .A3(previous_key[34]), 
        .A4(n78), .A5(previous_key[38]), .A6(n73), .Y(n35) );
  OR2X1_RVT U74 ( .A1(n66), .A2(n3), .Y(n7) );
  AO221X1_RVT U75 ( .A1(previous_key[14]), .A2(n91), .A3(previous_key[13]), 
        .A4(n86), .A5(n60), .Y(non_perm_key[13]) );
  AO222X1_RVT U76 ( .A1(previous_key[12]), .A2(n81), .A3(previous_key[11]), 
        .A4(n80), .A5(previous_key[15]), .A6(n71), .Y(n60) );
  AO221X1_RVT U77 ( .A1(previous_key[19]), .A2(n91), .A3(previous_key[18]), 
        .A4(n86), .A5(n55), .Y(non_perm_key[18]) );
  AO222X1_RVT U78 ( .A1(previous_key[17]), .A2(n81), .A3(previous_key[16]), 
        .A4(n79), .A5(previous_key[20]), .A6(n71), .Y(n55) );
  AO221X1_RVT U79 ( .A1(previous_key[35]), .A2(n93), .A3(previous_key[34]), 
        .A4(n88), .A5(n37), .Y(non_perm_key[34]) );
  AO221X1_RVT U80 ( .A1(previous_key[39]), .A2(n93), .A3(previous_key[38]), 
        .A4(n88), .A5(n33), .Y(non_perm_key[38]) );
  AO221X1_RVT U81 ( .A1(previous_key[48]), .A2(n94), .A3(previous_key[47]), 
        .A4(n89), .A5(n23), .Y(non_perm_key[47]) );
  INVX1_RVT U82 ( .A(n9), .Y(n80) );
  INVX1_RVT U83 ( .A(n8), .Y(n75) );
  OA221X1_RVT U84 ( .A1(n70), .A2(n1), .A3(n68), .A4(n2), .A5(n69), .Y(n65) );
  INVX1_RVT U85 ( .A(iteration[3]), .Y(n1) );
  OR2X1_RVT U86 ( .A1(n67), .A2(decrypt), .Y(n9) );
  INVX1_RVT U87 ( .A(decrypt), .Y(n3) );
  AO221X1_RVT U88 ( .A1(previous_key[30]), .A2(n92), .A3(previous_key[29]), 
        .A4(n87), .A5(n43), .Y(non_perm_key[29]) );
  AO222X1_RVT U89 ( .A1(previous_key[30]), .A2(n83), .A3(previous_key[29]), 
        .A4(n78), .A5(previous_key[33]), .A6(n73), .Y(n40) );
  AO221X1_RVT U90 ( .A1(previous_key[29]), .A2(n92), .A3(previous_key[28]), 
        .A4(n87), .A5(n44), .Y(non_perm_key[28]) );
  AO222X1_RVT U91 ( .A1(previous_key[34]), .A2(n83), .A3(previous_key[33]), 
        .A4(n78), .A5(previous_key[37]), .A6(n73), .Y(n36) );
  AO222X1_RVT U92 ( .A1(previous_key[52]), .A2(n85), .A3(previous_key[51]), 
        .A4(n76), .A5(previous_key[55]), .A6(n75), .Y(n16) );
  AO222X1_RVT U93 ( .A1(previous_key[48]), .A2(n84), .A3(previous_key[47]), 
        .A4(n77), .A5(previous_key[51]), .A6(n74), .Y(n21) );
  AO221X1_RVT U94 ( .A1(previous_key[54]), .A2(n95), .A3(previous_key[53]), 
        .A4(n89), .A5(n16), .Y(non_perm_key[53]) );
  AO222X1_RVT U95 ( .A1(previous_key[55]), .A2(n82), .A3(previous_key[54]), 
        .A4(n78), .A5(previous_key[30]), .A6(n72), .Y(n44) );
  AO221X1_RVT U96 ( .A1(previous_key[55]), .A2(n95), .A3(previous_key[54]), 
        .A4(n90), .A5(n15), .Y(non_perm_key[54]) );
  AO222X1_RVT U97 ( .A1(previous_key[54]), .A2(n85), .A3(previous_key[53]), 
        .A4(n76), .A5(previous_key[29]), .A6(n75), .Y(n14) );
  AO222X1_RVT U98 ( .A1(previous_key[44]), .A2(n84), .A3(previous_key[43]), 
        .A4(n77), .A5(previous_key[47]), .A6(n74), .Y(n25) );
  AO222X1_RVT U99 ( .A1(previous_key[43]), .A2(n84), .A3(previous_key[42]), 
        .A4(n77), .A5(previous_key[46]), .A6(n74), .Y(n26) );
  AO221X1_RVT U100 ( .A1(previous_key[43]), .A2(n94), .A3(previous_key[42]), 
        .A4(n88), .A5(n28), .Y(non_perm_key[42]) );
  AO222X1_RVT U101 ( .A1(previous_key[40]), .A2(n84), .A3(previous_key[39]), 
        .A4(n77), .A5(previous_key[43]), .A6(n74), .Y(n29) );
  AO221X1_RVT U102 ( .A1(previous_key[33]), .A2(n93), .A3(previous_key[32]), 
        .A4(n87), .A5(n39), .Y(non_perm_key[32]) );
  AO222X1_RVT U103 ( .A1(previous_key[32]), .A2(n83), .A3(previous_key[31]), 
        .A4(n78), .A5(previous_key[35]), .A6(n73), .Y(n38) );
  AO221X1_RVT U104 ( .A1(previous_key[32]), .A2(n92), .A3(previous_key[31]), 
        .A4(n87), .A5(n40), .Y(non_perm_key[31]) );
  AO222X1_RVT U105 ( .A1(previous_key[29]), .A2(n82), .A3(previous_key[28]), 
        .A4(n78), .A5(previous_key[32]), .A6(n72), .Y(n41) );
  AO222X1_RVT U106 ( .A1(previous_key[33]), .A2(n83), .A3(previous_key[32]), 
        .A4(n78), .A5(previous_key[36]), .A6(n73), .Y(n37) );
  AO222X1_RVT U107 ( .A1(previous_key[37]), .A2(n83), .A3(previous_key[36]), 
        .A4(n78), .A5(previous_key[40]), .A6(n73), .Y(n33) );
  AO221X1_RVT U108 ( .A1(previous_key[37]), .A2(n93), .A3(previous_key[36]), 
        .A4(n88), .A5(n35), .Y(non_perm_key[36]) );
  AO222X1_RVT U109 ( .A1(previous_key[36]), .A2(n83), .A3(previous_key[35]), 
        .A4(n78), .A5(previous_key[39]), .A6(n73), .Y(n34) );
  AO221X1_RVT U110 ( .A1(previous_key[46]), .A2(n94), .A3(previous_key[45]), 
        .A4(n89), .A5(n25), .Y(non_perm_key[45]) );
  AO222X1_RVT U111 ( .A1(previous_key[46]), .A2(n84), .A3(previous_key[45]), 
        .A4(n77), .A5(previous_key[49]), .A6(n74), .Y(n23) );
  AO222X1_RVT U112 ( .A1(previous_key[45]), .A2(n84), .A3(previous_key[44]), 
        .A4(n77), .A5(previous_key[48]), .A6(n74), .Y(n24) );
  AO221X1_RVT U113 ( .A1(previous_key[45]), .A2(n94), .A3(previous_key[44]), 
        .A4(n89), .A5(n26), .Y(non_perm_key[44]) );
  AO222X1_RVT U114 ( .A1(previous_key[42]), .A2(n84), .A3(previous_key[41]), 
        .A4(n77), .A5(previous_key[45]), .A6(n74), .Y(n27) );
  AO221X1_RVT U115 ( .A1(previous_key[50]), .A2(n94), .A3(previous_key[49]), 
        .A4(n89), .A5(n21), .Y(non_perm_key[49]) );
  AO221X1_RVT U116 ( .A1(previous_key[51]), .A2(n94), .A3(previous_key[50]), 
        .A4(n89), .A5(n19), .Y(non_perm_key[50]) );
  AO222X1_RVT U117 ( .A1(previous_key[47]), .A2(n84), .A3(previous_key[46]), 
        .A4(n77), .A5(previous_key[50]), .A6(n74), .Y(n22) );
  AO222X1_RVT U118 ( .A1(previous_key[51]), .A2(n85), .A3(previous_key[50]), 
        .A4(n76), .A5(previous_key[54]), .A6(n75), .Y(n17) );
  AO222X1_RVT U119 ( .A1(previous_key[50]), .A2(n84), .A3(previous_key[49]), 
        .A4(n76), .A5(previous_key[53]), .A6(n74), .Y(n18) );
  AO221X1_RVT U120 ( .A1(previous_key[3]), .A2(n92), .A3(previous_key[2]), 
        .A4(n87), .A5(n42), .Y(non_perm_key[2]) );
  AO222X1_RVT U121 ( .A1(previous_key[27]), .A2(n83), .A3(previous_key[26]), 
        .A4(n80), .A5(previous_key[2]), .A6(n73), .Y(n64) );
  AO222X1_RVT U122 ( .A1(previous_key[3]), .A2(n84), .A3(previous_key[2]), 
        .A4(n76), .A5(previous_key[6]), .A6(n74), .Y(n20) );
  AO221X1_RVT U123 ( .A1(previous_key[4]), .A2(n93), .A3(previous_key[3]), 
        .A4(n88), .A5(n31), .Y(non_perm_key[3]) );
  AO222X1_RVT U124 ( .A1(previous_key[2]), .A2(n83), .A3(previous_key[1]), 
        .A4(n77), .A5(previous_key[5]), .A6(n73), .Y(n31) );
  AO222X1_RVT U125 ( .A1(previous_key[20]), .A2(n82), .A3(previous_key[19]), 
        .A4(n79), .A5(previous_key[23]), .A6(n72), .Y(n51) );
  AO222X1_RVT U126 ( .A1(previous_key[24]), .A2(n82), .A3(previous_key[23]), 
        .A4(n79), .A5(previous_key[27]), .A6(n72), .Y(n47) );
  AO222X1_RVT U127 ( .A1(previous_key[4]), .A2(n85), .A3(previous_key[3]), 
        .A4(n76), .A5(n75), .A6(previous_key[7]), .Y(n13) );
  AO221X1_RVT U128 ( .A1(n95), .A2(previous_key[7]), .A3(previous_key[6]), 
        .A4(n90), .A5(n12), .Y(non_perm_key[6]) );
  AO222X1_RVT U129 ( .A1(n85), .A2(previous_key[7]), .A3(previous_key[6]), 
        .A4(n76), .A5(previous_key[10]), .A6(n75), .Y(n10) );
  AO222X1_RVT U130 ( .A1(previous_key[9]), .A2(n81), .A3(previous_key[8]), 
        .A4(n80), .A5(previous_key[12]), .A6(n71), .Y(n63) );
  AO222X1_RVT U131 ( .A1(previous_key[5]), .A2(n85), .A3(previous_key[4]), 
        .A4(n76), .A5(n75), .A6(previous_key[8]), .Y(n12) );
  AO221X1_RVT U132 ( .A1(n95), .A2(previous_key[8]), .A3(n90), .A4(
        previous_key[7]), .A5(n11), .Y(non_perm_key[7]) );
  AO221X1_RVT U133 ( .A1(previous_key[9]), .A2(n95), .A3(n90), .A4(
        previous_key[8]), .A5(n10), .Y(non_perm_key[8]) );
  AO221X1_RVT U134 ( .A1(previous_key[22]), .A2(n92), .A3(previous_key[21]), 
        .A4(n86), .A5(n51), .Y(non_perm_key[21]) );
  AO221X1_RVT U135 ( .A1(previous_key[21]), .A2(n91), .A3(previous_key[20]), 
        .A4(n86), .A5(n52), .Y(non_perm_key[20]) );
  AO222X1_RVT U136 ( .A1(previous_key[18]), .A2(n81), .A3(previous_key[17]), 
        .A4(n79), .A5(n71), .A6(previous_key[21]), .Y(n54) );
  AO222X1_RVT U137 ( .A1(previous_key[22]), .A2(n82), .A3(previous_key[21]), 
        .A4(n79), .A5(previous_key[25]), .A6(n72), .Y(n49) );
  AO221X1_RVT U138 ( .A1(previous_key[23]), .A2(n92), .A3(previous_key[22]), 
        .A4(n87), .A5(n50), .Y(non_perm_key[22]) );
  AO222X1_RVT U139 ( .A1(previous_key[21]), .A2(n82), .A3(previous_key[20]), 
        .A4(n79), .A5(previous_key[24]), .A6(n72), .Y(n50) );
  AO222X1_RVT U140 ( .A1(previous_key[8]), .A2(n81), .A3(previous_key[7]), 
        .A4(n76), .A5(previous_key[11]), .A6(n71), .Y(n6) );
  AO222X1_RVT U141 ( .A1(previous_key[26]), .A2(n82), .A3(previous_key[25]), 
        .A4(n79), .A5(previous_key[1]), .A6(n72), .Y(n45) );
  AO221X1_RVT U142 ( .A1(previous_key[2]), .A2(n91), .A3(previous_key[1]), 
        .A4(n86), .A5(n53), .Y(non_perm_key[1]) );
  AO221X1_RVT U143 ( .A1(previous_key[25]), .A2(n92), .A3(previous_key[24]), 
        .A4(n87), .A5(n48), .Y(non_perm_key[24]) );
  AO222X1_RVT U144 ( .A1(previous_key[23]), .A2(n82), .A3(previous_key[22]), 
        .A4(n79), .A5(previous_key[26]), .A6(n72), .Y(n48) );
  AO222X1_RVT U145 ( .A1(previous_key[1]), .A2(n82), .A3(previous_key[0]), 
        .A4(n78), .A5(previous_key[4]), .A6(n72), .Y(n42) );
  AO221X1_RVT U146 ( .A1(previous_key[1]), .A2(n93), .A3(previous_key[0]), 
        .A4(n88), .A5(n64), .Y(non_perm_key[0]) );
  AO222X1_RVT U147 ( .A1(previous_key[25]), .A2(n82), .A3(previous_key[24]), 
        .A4(n79), .A5(previous_key[0]), .A6(n72), .Y(n46) );
  AO221X1_RVT U148 ( .A1(previous_key[0]), .A2(n92), .A3(previous_key[27]), 
        .A4(n87), .A5(n45), .Y(non_perm_key[27]) );
  AO222X1_RVT U149 ( .A1(previous_key[0]), .A2(n81), .A3(previous_key[27]), 
        .A4(n79), .A5(previous_key[3]), .A6(n71), .Y(n53) );
  OR3X2_RVT U150 ( .A1(iteration[1]), .A2(iteration[2]), .A3(iteration[0]), 
        .Y(n70) );
  OR3X2_RVT U151 ( .A1(iteration[2]), .A2(iteration[3]), .A3(iteration[1]), 
        .Y(n68) );
endmodule


module desround ( clk, reset, iteration_i, decrypt_i, R_i, L_i, Key_i, R_o, 
        L_o, Key_o, s1_o, s2_o, s3_o, s4_o, s5_o, s6_o, s7_o, s8_o, s1_i, s2_i, 
        s3_i, s4_i, s5_i, s6_i, s7_i, s8_i );
  input [3:0] iteration_i;
  input [31:0] R_i;
  input [31:0] L_i;
  input [55:0] Key_i;
  output [31:0] R_o;
  output [31:0] L_o;
  output [55:0] Key_o;
  output [5:0] s1_o;
  output [5:0] s2_o;
  output [5:0] s3_o;
  output [5:0] s4_o;
  output [5:0] s5_o;
  output [5:0] s6_o;
  output [5:0] s7_o;
  output [5:0] s8_o;
  input [3:0] s1_i;
  input [3:0] s2_i;
  input [3:0] s3_i;
  input [3:0] s4_i;
  input [3:0] s5_i;
  input [3:0] s6_i;
  input [3:0] s7_i;
  input [3:0] s8_i;
  input clk, reset, decrypt_i;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [47:0] new_key;
  wire   [55:0] non_perm_key;
  wire   [31:0] next_R;

  key_gen kg1 ( .previous_key(Key_i), .iteration(iteration_i), .decrypt(
        decrypt_i), .non_perm_key(non_perm_key), .new_key(new_key) );
  DFFARX1_RVT \R_o_reg[31]  ( .D(next_R[31]), .CLK(clk), .RSTB(n1), .Q(R_o[31]) );
  DFFARX1_RVT \R_o_reg[30]  ( .D(next_R[30]), .CLK(clk), .RSTB(n1), .Q(R_o[30]) );
  DFFARX1_RVT \R_o_reg[29]  ( .D(next_R[29]), .CLK(clk), .RSTB(n1), .Q(R_o[29]) );
  DFFARX1_RVT \R_o_reg[28]  ( .D(next_R[28]), .CLK(clk), .RSTB(n1), .Q(R_o[28]) );
  DFFARX1_RVT \R_o_reg[27]  ( .D(next_R[27]), .CLK(clk), .RSTB(n1), .Q(R_o[27]) );
  DFFARX1_RVT \R_o_reg[26]  ( .D(next_R[26]), .CLK(clk), .RSTB(n1), .Q(R_o[26]) );
  DFFARX1_RVT \R_o_reg[25]  ( .D(next_R[25]), .CLK(clk), .RSTB(n1), .Q(R_o[25]) );
  DFFARX1_RVT \R_o_reg[24]  ( .D(next_R[24]), .CLK(clk), .RSTB(n1), .Q(R_o[24]) );
  DFFARX1_RVT \R_o_reg[23]  ( .D(next_R[23]), .CLK(clk), .RSTB(n1), .Q(R_o[23]) );
  DFFARX1_RVT \R_o_reg[22]  ( .D(next_R[22]), .CLK(clk), .RSTB(n1), .Q(R_o[22]) );
  DFFARX1_RVT \R_o_reg[21]  ( .D(next_R[21]), .CLK(clk), .RSTB(n1), .Q(R_o[21]) );
  DFFARX1_RVT \R_o_reg[20]  ( .D(next_R[20]), .CLK(clk), .RSTB(n1), .Q(R_o[20]) );
  DFFARX1_RVT \R_o_reg[19]  ( .D(next_R[19]), .CLK(clk), .RSTB(n2), .Q(R_o[19]) );
  DFFARX1_RVT \R_o_reg[18]  ( .D(next_R[18]), .CLK(clk), .RSTB(n2), .Q(R_o[18]) );
  DFFARX1_RVT \R_o_reg[17]  ( .D(next_R[17]), .CLK(clk), .RSTB(n2), .Q(R_o[17]) );
  DFFARX1_RVT \R_o_reg[16]  ( .D(next_R[16]), .CLK(clk), .RSTB(n2), .Q(R_o[16]) );
  DFFARX1_RVT \R_o_reg[15]  ( .D(next_R[15]), .CLK(clk), .RSTB(n2), .Q(R_o[15]) );
  DFFARX1_RVT \R_o_reg[14]  ( .D(next_R[14]), .CLK(clk), .RSTB(n2), .Q(R_o[14]) );
  DFFARX1_RVT \R_o_reg[13]  ( .D(next_R[13]), .CLK(clk), .RSTB(n2), .Q(R_o[13]) );
  DFFARX1_RVT \R_o_reg[12]  ( .D(next_R[12]), .CLK(clk), .RSTB(n2), .Q(R_o[12]) );
  DFFARX1_RVT \R_o_reg[11]  ( .D(next_R[11]), .CLK(clk), .RSTB(n2), .Q(R_o[11]) );
  DFFARX1_RVT \R_o_reg[10]  ( .D(next_R[10]), .CLK(clk), .RSTB(n2), .Q(R_o[10]) );
  DFFARX1_RVT \R_o_reg[9]  ( .D(next_R[9]), .CLK(clk), .RSTB(n2), .Q(R_o[9])
         );
  DFFARX1_RVT \R_o_reg[8]  ( .D(next_R[8]), .CLK(clk), .RSTB(n2), .Q(R_o[8])
         );
  DFFARX1_RVT \R_o_reg[7]  ( .D(next_R[7]), .CLK(clk), .RSTB(n3), .Q(R_o[7])
         );
  DFFARX1_RVT \R_o_reg[6]  ( .D(next_R[6]), .CLK(clk), .RSTB(n3), .Q(R_o[6])
         );
  DFFARX1_RVT \R_o_reg[5]  ( .D(next_R[5]), .CLK(clk), .RSTB(n3), .Q(R_o[5])
         );
  DFFARX1_RVT \R_o_reg[4]  ( .D(next_R[4]), .CLK(clk), .RSTB(n3), .Q(R_o[4])
         );
  DFFARX1_RVT \R_o_reg[3]  ( .D(next_R[3]), .CLK(clk), .RSTB(n3), .Q(R_o[3])
         );
  DFFARX1_RVT \R_o_reg[2]  ( .D(next_R[2]), .CLK(clk), .RSTB(n3), .Q(R_o[2])
         );
  DFFARX1_RVT \R_o_reg[1]  ( .D(next_R[1]), .CLK(clk), .RSTB(n3), .Q(R_o[1])
         );
  DFFARX1_RVT \R_o_reg[0]  ( .D(next_R[0]), .CLK(clk), .RSTB(n3), .Q(R_o[0])
         );
  DFFARX1_RVT \Key_o_reg[55]  ( .D(non_perm_key[55]), .CLK(clk), .RSTB(n3), 
        .Q(Key_o[55]) );
  DFFARX1_RVT \Key_o_reg[54]  ( .D(non_perm_key[54]), .CLK(clk), .RSTB(n3), 
        .Q(Key_o[54]) );
  DFFARX1_RVT \Key_o_reg[53]  ( .D(non_perm_key[53]), .CLK(clk), .RSTB(n3), 
        .Q(Key_o[53]) );
  DFFARX1_RVT \Key_o_reg[52]  ( .D(non_perm_key[52]), .CLK(clk), .RSTB(n3), 
        .Q(Key_o[52]) );
  DFFARX1_RVT \Key_o_reg[51]  ( .D(non_perm_key[51]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[51]) );
  DFFARX1_RVT \Key_o_reg[50]  ( .D(non_perm_key[50]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[50]) );
  DFFARX1_RVT \Key_o_reg[49]  ( .D(non_perm_key[49]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[49]) );
  DFFARX1_RVT \Key_o_reg[48]  ( .D(non_perm_key[48]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[48]) );
  DFFARX1_RVT \Key_o_reg[47]  ( .D(non_perm_key[47]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[47]) );
  DFFARX1_RVT \Key_o_reg[46]  ( .D(non_perm_key[46]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[46]) );
  DFFARX1_RVT \Key_o_reg[45]  ( .D(non_perm_key[45]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[45]) );
  DFFARX1_RVT \Key_o_reg[44]  ( .D(non_perm_key[44]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[44]) );
  DFFARX1_RVT \Key_o_reg[43]  ( .D(non_perm_key[43]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[43]) );
  DFFARX1_RVT \Key_o_reg[42]  ( .D(non_perm_key[42]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[42]) );
  DFFARX1_RVT \Key_o_reg[41]  ( .D(non_perm_key[41]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[41]) );
  DFFARX1_RVT \Key_o_reg[40]  ( .D(non_perm_key[40]), .CLK(clk), .RSTB(n4), 
        .Q(Key_o[40]) );
  DFFARX1_RVT \Key_o_reg[39]  ( .D(non_perm_key[39]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[39]) );
  DFFARX1_RVT \Key_o_reg[38]  ( .D(non_perm_key[38]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[38]) );
  DFFARX1_RVT \Key_o_reg[37]  ( .D(non_perm_key[37]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[37]) );
  DFFARX1_RVT \Key_o_reg[36]  ( .D(non_perm_key[36]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[36]) );
  DFFARX1_RVT \Key_o_reg[35]  ( .D(non_perm_key[35]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[35]) );
  DFFARX1_RVT \Key_o_reg[34]  ( .D(non_perm_key[34]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[34]) );
  DFFARX1_RVT \Key_o_reg[33]  ( .D(non_perm_key[33]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[33]) );
  DFFARX1_RVT \Key_o_reg[32]  ( .D(non_perm_key[32]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[32]) );
  DFFARX1_RVT \Key_o_reg[31]  ( .D(non_perm_key[31]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[31]) );
  DFFARX1_RVT \Key_o_reg[30]  ( .D(non_perm_key[30]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[30]) );
  DFFARX1_RVT \Key_o_reg[29]  ( .D(non_perm_key[29]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[29]) );
  DFFARX1_RVT \Key_o_reg[28]  ( .D(non_perm_key[28]), .CLK(clk), .RSTB(n5), 
        .Q(Key_o[28]) );
  DFFARX1_RVT \Key_o_reg[27]  ( .D(non_perm_key[27]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[27]) );
  DFFARX1_RVT \Key_o_reg[26]  ( .D(non_perm_key[26]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[26]) );
  DFFARX1_RVT \Key_o_reg[25]  ( .D(non_perm_key[25]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[25]) );
  DFFARX1_RVT \Key_o_reg[24]  ( .D(non_perm_key[24]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[24]) );
  DFFARX1_RVT \Key_o_reg[23]  ( .D(non_perm_key[23]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[23]) );
  DFFARX1_RVT \Key_o_reg[22]  ( .D(non_perm_key[22]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[22]) );
  DFFARX1_RVT \Key_o_reg[21]  ( .D(non_perm_key[21]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[21]) );
  DFFARX1_RVT \Key_o_reg[20]  ( .D(non_perm_key[20]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[20]) );
  DFFARX1_RVT \Key_o_reg[19]  ( .D(non_perm_key[19]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[19]) );
  DFFARX1_RVT \Key_o_reg[18]  ( .D(non_perm_key[18]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[18]) );
  DFFARX1_RVT \Key_o_reg[17]  ( .D(non_perm_key[17]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[17]) );
  DFFARX1_RVT \Key_o_reg[16]  ( .D(non_perm_key[16]), .CLK(clk), .RSTB(n6), 
        .Q(Key_o[16]) );
  DFFARX1_RVT \Key_o_reg[15]  ( .D(non_perm_key[15]), .CLK(clk), .RSTB(n7), 
        .Q(Key_o[15]) );
  DFFARX1_RVT \Key_o_reg[14]  ( .D(non_perm_key[14]), .CLK(clk), .RSTB(n7), 
        .Q(Key_o[14]) );
  DFFARX1_RVT \Key_o_reg[13]  ( .D(non_perm_key[13]), .CLK(clk), .RSTB(n7), 
        .Q(Key_o[13]) );
  DFFARX1_RVT \Key_o_reg[12]  ( .D(non_perm_key[12]), .CLK(clk), .RSTB(n7), 
        .Q(Key_o[12]) );
  DFFARX1_RVT \Key_o_reg[11]  ( .D(non_perm_key[11]), .CLK(clk), .RSTB(n7), 
        .Q(Key_o[11]) );
  DFFARX1_RVT \Key_o_reg[10]  ( .D(non_perm_key[10]), .CLK(clk), .RSTB(n7), 
        .Q(Key_o[10]) );
  DFFARX1_RVT \Key_o_reg[9]  ( .D(non_perm_key[9]), .CLK(clk), .RSTB(n7), .Q(
        Key_o[9]) );
  DFFARX1_RVT \Key_o_reg[8]  ( .D(non_perm_key[8]), .CLK(clk), .RSTB(n7), .Q(
        Key_o[8]) );
  DFFARX1_RVT \Key_o_reg[7]  ( .D(non_perm_key[7]), .CLK(clk), .RSTB(n7), .Q(
        Key_o[7]) );
  DFFARX1_RVT \Key_o_reg[6]  ( .D(non_perm_key[6]), .CLK(clk), .RSTB(n7), .Q(
        Key_o[6]) );
  DFFARX1_RVT \Key_o_reg[5]  ( .D(non_perm_key[5]), .CLK(clk), .RSTB(n7), .Q(
        Key_o[5]) );
  DFFARX1_RVT \Key_o_reg[4]  ( .D(non_perm_key[4]), .CLK(clk), .RSTB(n7), .Q(
        Key_o[4]) );
  DFFARX1_RVT \Key_o_reg[3]  ( .D(non_perm_key[3]), .CLK(clk), .RSTB(n8), .Q(
        Key_o[3]) );
  DFFARX1_RVT \Key_o_reg[2]  ( .D(non_perm_key[2]), .CLK(clk), .RSTB(n8), .Q(
        Key_o[2]) );
  DFFARX1_RVT \Key_o_reg[1]  ( .D(non_perm_key[1]), .CLK(clk), .RSTB(n8), .Q(
        Key_o[1]) );
  DFFARX1_RVT \Key_o_reg[0]  ( .D(non_perm_key[0]), .CLK(clk), .RSTB(n8), .Q(
        Key_o[0]) );
  DFFARX1_RVT \L_o_reg[31]  ( .D(R_i[31]), .CLK(clk), .RSTB(n8), .Q(L_o[31])
         );
  DFFARX1_RVT \L_o_reg[30]  ( .D(R_i[30]), .CLK(clk), .RSTB(n8), .Q(L_o[30])
         );
  DFFARX1_RVT \L_o_reg[29]  ( .D(R_i[29]), .CLK(clk), .RSTB(n8), .Q(L_o[29])
         );
  DFFARX1_RVT \L_o_reg[28]  ( .D(R_i[28]), .CLK(clk), .RSTB(n8), .Q(L_o[28])
         );
  DFFARX1_RVT \L_o_reg[27]  ( .D(R_i[27]), .CLK(clk), .RSTB(n8), .Q(L_o[27])
         );
  DFFARX1_RVT \L_o_reg[26]  ( .D(R_i[26]), .CLK(clk), .RSTB(n8), .Q(L_o[26])
         );
  DFFARX1_RVT \L_o_reg[25]  ( .D(R_i[25]), .CLK(clk), .RSTB(n8), .Q(L_o[25])
         );
  DFFARX1_RVT \L_o_reg[24]  ( .D(R_i[24]), .CLK(clk), .RSTB(n8), .Q(L_o[24])
         );
  DFFARX1_RVT \L_o_reg[23]  ( .D(R_i[23]), .CLK(clk), .RSTB(n9), .Q(L_o[23])
         );
  DFFARX1_RVT \L_o_reg[22]  ( .D(R_i[22]), .CLK(clk), .RSTB(n9), .Q(L_o[22])
         );
  DFFARX1_RVT \L_o_reg[21]  ( .D(R_i[21]), .CLK(clk), .RSTB(n9), .Q(L_o[21])
         );
  DFFARX1_RVT \L_o_reg[20]  ( .D(R_i[20]), .CLK(clk), .RSTB(n9), .Q(L_o[20])
         );
  DFFARX1_RVT \L_o_reg[19]  ( .D(R_i[19]), .CLK(clk), .RSTB(n9), .Q(L_o[19])
         );
  DFFARX1_RVT \L_o_reg[18]  ( .D(R_i[18]), .CLK(clk), .RSTB(n9), .Q(L_o[18])
         );
  DFFARX1_RVT \L_o_reg[17]  ( .D(R_i[17]), .CLK(clk), .RSTB(n9), .Q(L_o[17])
         );
  DFFARX1_RVT \L_o_reg[16]  ( .D(R_i[16]), .CLK(clk), .RSTB(n9), .Q(L_o[16])
         );
  DFFARX1_RVT \L_o_reg[15]  ( .D(R_i[15]), .CLK(clk), .RSTB(n9), .Q(L_o[15])
         );
  DFFARX1_RVT \L_o_reg[14]  ( .D(R_i[14]), .CLK(clk), .RSTB(n9), .Q(L_o[14])
         );
  DFFARX1_RVT \L_o_reg[13]  ( .D(R_i[13]), .CLK(clk), .RSTB(n9), .Q(L_o[13])
         );
  DFFARX1_RVT \L_o_reg[12]  ( .D(R_i[12]), .CLK(clk), .RSTB(n9), .Q(L_o[12])
         );
  DFFARX1_RVT \L_o_reg[11]  ( .D(R_i[11]), .CLK(clk), .RSTB(n10), .Q(L_o[11])
         );
  DFFARX1_RVT \L_o_reg[10]  ( .D(R_i[10]), .CLK(clk), .RSTB(n10), .Q(L_o[10])
         );
  DFFARX1_RVT \L_o_reg[9]  ( .D(R_i[9]), .CLK(clk), .RSTB(n10), .Q(L_o[9]) );
  DFFARX1_RVT \L_o_reg[8]  ( .D(R_i[8]), .CLK(clk), .RSTB(n10), .Q(L_o[8]) );
  DFFARX1_RVT \L_o_reg[7]  ( .D(R_i[7]), .CLK(clk), .RSTB(n10), .Q(L_o[7]) );
  DFFARX1_RVT \L_o_reg[6]  ( .D(R_i[6]), .CLK(clk), .RSTB(n10), .Q(L_o[6]) );
  DFFARX1_RVT \L_o_reg[5]  ( .D(R_i[5]), .CLK(clk), .RSTB(n10), .Q(L_o[5]) );
  DFFARX1_RVT \L_o_reg[4]  ( .D(R_i[4]), .CLK(clk), .RSTB(n10), .Q(L_o[4]) );
  DFFARX1_RVT \L_o_reg[3]  ( .D(R_i[3]), .CLK(clk), .RSTB(n10), .Q(L_o[3]) );
  DFFARX1_RVT \L_o_reg[2]  ( .D(R_i[2]), .CLK(clk), .RSTB(n10), .Q(L_o[2]) );
  DFFARX1_RVT \L_o_reg[1]  ( .D(R_i[1]), .CLK(clk), .RSTB(n10), .Q(L_o[1]) );
  DFFARX1_RVT \L_o_reg[0]  ( .D(R_i[0]), .CLK(clk), .RSTB(n10), .Q(L_o[0]) );
  XOR2X1_RVT U3 ( .A1(new_key[24]), .A2(R_i[15]), .Y(s4_o[0]) );
  XOR2X1_RVT U4 ( .A1(new_key[18]), .A2(R_i[11]), .Y(s5_o[0]) );
  XOR2X1_RVT U5 ( .A1(s4_i[1]), .A2(L_i[22]), .Y(next_R[22]) );
  XOR2X1_RVT U6 ( .A1(s2_i[0]), .A2(L_i[14]), .Y(next_R[14]) );
  XOR2X1_RVT U7 ( .A1(s2_i[2]), .A2(L_i[4]), .Y(next_R[4]) );
  XOR2X1_RVT U8 ( .A1(s2_i[3]), .A2(L_i[19]), .Y(next_R[19]) );
  XOR2X1_RVT U9 ( .A1(s2_i[1]), .A2(L_i[30]), .Y(next_R[30]) );
  XOR2X1_RVT U10 ( .A1(s6_i[2]), .A2(L_i[3]), .Y(next_R[3]) );
  XOR2X1_RVT U11 ( .A1(s6_i[0]), .A2(L_i[13]), .Y(next_R[13]) );
  XOR2X1_RVT U12 ( .A1(s3_i[1]), .A2(L_i[2]), .Y(next_R[2]) );
  XOR2X1_RVT U13 ( .A1(s4_i[3]), .A2(L_i[6]), .Y(next_R[6]) );
  XOR2X1_RVT U14 ( .A1(s4_i[2]), .A2(L_i[12]), .Y(next_R[12]) );
  XOR2X1_RVT U15 ( .A1(s4_i[0]), .A2(L_i[31]), .Y(next_R[31]) );
  INVX1_RVT U16 ( .A(n11), .Y(n10) );
  INVX1_RVT U17 ( .A(n11), .Y(n9) );
  INVX1_RVT U18 ( .A(n11), .Y(n8) );
  INVX1_RVT U19 ( .A(n11), .Y(n7) );
  INVX1_RVT U20 ( .A(n11), .Y(n6) );
  INVX1_RVT U21 ( .A(n11), .Y(n5) );
  INVX1_RVT U22 ( .A(n11), .Y(n4) );
  INVX1_RVT U23 ( .A(n11), .Y(n3) );
  INVX1_RVT U24 ( .A(n11), .Y(n2) );
  INVX1_RVT U25 ( .A(n11), .Y(n1) );
  INVX1_RVT U26 ( .A(reset), .Y(n11) );
  XOR2X1_RVT U27 ( .A1(new_key[4]), .A2(R_i[3]), .Y(s8_o[4]) );
  XOR2X1_RVT U28 ( .A1(new_key[19]), .A2(R_i[12]), .Y(s5_o[1]) );
  XOR2X1_RVT U29 ( .A1(new_key[11]), .A2(R_i[8]), .Y(s7_o[5]) );
  XOR2X1_RVT U30 ( .A1(new_key[5]), .A2(R_i[4]), .Y(s8_o[5]) );
  XOR2X1_RVT U31 ( .A1(new_key[42]), .A2(R_i[27]), .Y(s1_o[0]) );
  XOR2X1_RVT U32 ( .A1(new_key[23]), .A2(R_i[16]), .Y(s5_o[5]) );
  XOR2X1_RVT U33 ( .A1(new_key[36]), .A2(R_i[23]), .Y(s2_o[0]) );
  XOR2X1_RVT U34 ( .A1(new_key[43]), .A2(R_i[28]), .Y(s1_o[1]) );
  XOR2X1_RVT U35 ( .A1(new_key[13]), .A2(R_i[8]), .Y(s6_o[1]) );
  XOR2X1_RVT U36 ( .A1(new_key[37]), .A2(R_i[24]), .Y(s2_o[1]) );
  XOR2X1_RVT U37 ( .A1(new_key[34]), .A2(R_i[23]), .Y(s3_o[4]) );
  XOR2X1_RVT U38 ( .A1(new_key[35]), .A2(R_i[24]), .Y(s3_o[5]) );
  XOR2X1_RVT U39 ( .A1(new_key[10]), .A2(R_i[7]), .Y(s7_o[4]) );
  XOR2X1_RVT U40 ( .A1(new_key[22]), .A2(R_i[15]), .Y(s5_o[4]) );
  XOR2X1_RVT U41 ( .A1(new_key[33]), .A2(R_i[22]), .Y(s3_o[3]) );
  XOR2X1_RVT U42 ( .A1(new_key[32]), .A2(R_i[21]), .Y(s3_o[2]) );
  XOR2X1_RVT U43 ( .A1(new_key[25]), .A2(R_i[16]), .Y(s4_o[1]) );
  XOR2X1_RVT U44 ( .A1(new_key[44]), .A2(R_i[29]), .Y(s1_o[2]) );
  XOR2X1_RVT U45 ( .A1(new_key[31]), .A2(R_i[20]), .Y(s3_o[1]) );
  XOR2X1_RVT U46 ( .A1(new_key[2]), .A2(R_i[1]), .Y(s8_o[2]) );
  XOR2X1_RVT U47 ( .A1(new_key[12]), .A2(R_i[7]), .Y(s6_o[0]) );
  XOR2X1_RVT U48 ( .A1(new_key[9]), .A2(R_i[6]), .Y(s7_o[3]) );
  XOR2X1_RVT U49 ( .A1(new_key[3]), .A2(R_i[2]), .Y(s8_o[3]) );
  XOR2X1_RVT U50 ( .A1(new_key[14]), .A2(R_i[9]), .Y(s6_o[2]) );
  XOR2X1_RVT U51 ( .A1(new_key[20]), .A2(R_i[13]), .Y(s5_o[2]) );
  XOR2X1_RVT U52 ( .A1(new_key[45]), .A2(R_i[30]), .Y(s1_o[3]) );
  XOR2X1_RVT U53 ( .A1(new_key[30]), .A2(R_i[19]), .Y(s3_o[0]) );
  XOR2X1_RVT U54 ( .A1(new_key[8]), .A2(R_i[5]), .Y(s7_o[2]) );
  XOR2X1_RVT U55 ( .A1(new_key[21]), .A2(R_i[14]), .Y(s5_o[3]) );
  XOR2X1_RVT U56 ( .A1(new_key[1]), .A2(R_i[0]), .Y(s8_o[1]) );
  XOR2X1_RVT U57 ( .A1(new_key[46]), .A2(R_i[31]), .Y(s1_o[4]) );
  XOR2X1_RVT U58 ( .A1(new_key[0]), .A2(R_i[31]), .Y(s8_o[0]) );
  XOR2X1_RVT U59 ( .A1(new_key[38]), .A2(R_i[25]), .Y(s2_o[2]) );
  XOR2X1_RVT U60 ( .A1(new_key[40]), .A2(R_i[27]), .Y(s2_o[4]) );
  XOR2X1_RVT U61 ( .A1(new_key[47]), .A2(R_i[0]), .Y(s1_o[5]) );
  XOR2X1_RVT U62 ( .A1(new_key[16]), .A2(R_i[11]), .Y(s6_o[4]) );
  XOR2X1_RVT U63 ( .A1(new_key[15]), .A2(R_i[10]), .Y(s6_o[3]) );
  XOR2X1_RVT U64 ( .A1(new_key[17]), .A2(R_i[12]), .Y(s6_o[5]) );
  XOR2X1_RVT U65 ( .A1(new_key[41]), .A2(R_i[28]), .Y(s2_o[5]) );
  XOR2X1_RVT U66 ( .A1(new_key[39]), .A2(R_i[26]), .Y(s2_o[3]) );
  XOR2X1_RVT U67 ( .A1(new_key[27]), .A2(R_i[18]), .Y(s4_o[3]) );
  XOR2X1_RVT U68 ( .A1(new_key[29]), .A2(R_i[20]), .Y(s4_o[5]) );
  XOR2X1_RVT U69 ( .A1(new_key[28]), .A2(R_i[19]), .Y(s4_o[4]) );
  XOR2X1_RVT U70 ( .A1(new_key[26]), .A2(R_i[17]), .Y(s4_o[2]) );
  XOR2X1_RVT U71 ( .A1(s5_i[3]), .A2(L_i[24]), .Y(next_R[24]) );
  XOR2X1_RVT U72 ( .A1(s5_i[2]), .A2(L_i[18]), .Y(next_R[18]) );
  XOR2X1_RVT U73 ( .A1(s7_i[1]), .A2(L_i[10]), .Y(next_R[10]) );
  XOR2X1_RVT U74 ( .A1(s7_i[3]), .A2(L_i[0]), .Y(next_R[0]) );
  XOR2X1_RVT U75 ( .A1(s3_i[3]), .A2(L_i[8]), .Y(next_R[8]) );
  XOR2X1_RVT U76 ( .A1(s6_i[3]), .A2(L_i[28]), .Y(next_R[28]) );
  XOR2X1_RVT U77 ( .A1(s6_i[1]), .A2(L_i[21]), .Y(next_R[21]) );
  XOR2X1_RVT U78 ( .A1(s1_i[1]), .A2(L_i[9]), .Y(next_R[9]) );
  XOR2X1_RVT U79 ( .A1(s3_i[2]), .A2(L_i[16]), .Y(next_R[16]) );
  XOR2X1_RVT U80 ( .A1(s8_i[3]), .A2(L_i[27]), .Y(next_R[27]) );
  XOR2X1_RVT U81 ( .A1(s8_i[0]), .A2(L_i[11]), .Y(next_R[11]) );
  XOR2X1_RVT U82 ( .A1(s3_i[0]), .A2(L_i[26]), .Y(next_R[26]) );
  XOR2X1_RVT U83 ( .A1(s8_i[2]), .A2(L_i[5]), .Y(next_R[5]) );
  XOR2X1_RVT U84 ( .A1(s1_i[3]), .A2(L_i[23]), .Y(next_R[23]) );
  XOR2X1_RVT U85 ( .A1(s5_i[0]), .A2(L_i[29]), .Y(next_R[29]) );
  XOR2X1_RVT U86 ( .A1(s1_i[2]), .A2(L_i[15]), .Y(next_R[15]) );
  XOR2X1_RVT U87 ( .A1(s1_i[0]), .A2(L_i[1]), .Y(next_R[1]) );
  XOR2X1_RVT U88 ( .A1(s7_i[2]), .A2(L_i[20]), .Y(next_R[20]) );
  XOR2X1_RVT U89 ( .A1(s7_i[0]), .A2(L_i[25]), .Y(next_R[25]) );
  XOR2X1_RVT U90 ( .A1(new_key[6]), .A2(R_i[3]), .Y(s7_o[0]) );
  XOR2X1_RVT U91 ( .A1(new_key[7]), .A2(R_i[4]), .Y(s7_o[1]) );
  XOR2X1_RVT U92 ( .A1(s5_i[1]), .A2(L_i[7]), .Y(next_R[7]) );
  XOR2X1_RVT U93 ( .A1(s8_i[1]), .A2(L_i[17]), .Y(next_R[17]) );
endmodule


module s1 ( stage1_input, stage1_output );
  input [5:0] stage1_input;
  output [3:0] stage1_output;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85;

  NAND2X0_RVT U3 ( .A1(stage1_input[1]), .A2(stage1_input[0]), .Y(n53) );
  OA22X1_RVT U4 ( .A1(n10), .A2(n66), .A3(n53), .A4(n36), .Y(n69) );
  OA22X1_RVT U5 ( .A1(n9), .A2(n31), .A3(n38), .A4(n28), .Y(n54) );
  INVX0_RVT U6 ( .A(n35), .Y(n11) );
  INVX1_RVT U7 ( .A(n53), .Y(n15) );
  AO21X1_RVT U8 ( .A1(n46), .A2(n70), .A3(n33), .Y(n68) );
  OR2X1_RVT U9 ( .A1(n70), .A2(n53), .Y(n25) );
  OA22X1_RVT U10 ( .A1(n33), .A2(n63), .A3(n35), .A4(n66), .Y(n72) );
  OR2X1_RVT U11 ( .A1(n52), .A2(n53), .Y(n40) );
  INVX0_RVT U12 ( .A(n71), .Y(n9) );
  INVX0_RVT U13 ( .A(n22), .Y(n10) );
  NBUFFX2_RVT U14 ( .A(n57), .Y(n85) );
  NAND2X0_RVT U15 ( .A1(n10), .A2(n38), .Y(n71) );
  INVX1_RVT U16 ( .A(n23), .Y(n3) );
  NAND3X0_RVT U17 ( .A1(n2), .A2(n6), .A3(n13), .Y(n26) );
  INVX1_RVT U18 ( .A(n38), .Y(n13) );
  AOI221X1_RVT U19 ( .A1(n21), .A2(n22), .A3(n15), .A4(n23), .A5(n24), .Y(n20)
         );
  NAND2X0_RVT U20 ( .A1(n30), .A2(n31), .Y(n21) );
  NAND3X0_RVT U21 ( .A1(n25), .A2(n26), .A3(n27), .Y(n24) );
  AO21X1_RVT U22 ( .A1(n28), .A2(n29), .A3(n9), .Y(n27) );
  AND3X1_RVT U23 ( .A1(n66), .A2(n48), .A3(n52), .Y(n30) );
  INVX1_RVT U24 ( .A(n49), .Y(n6) );
  NAND3X0_RVT U25 ( .A1(n30), .A2(n29), .A3(n34), .Y(n56) );
  NAND3X0_RVT U26 ( .A1(n2), .A2(n6), .A3(n15), .Y(n67) );
  INVX1_RVT U27 ( .A(n50), .Y(n2) );
  AND2X1_RVT U28 ( .A1(n37), .A2(n32), .Y(n46) );
  AND2X1_RVT U29 ( .A1(n61), .A2(n63), .Y(n34) );
  AOI221X1_RVT U30 ( .A1(n74), .A2(n71), .A3(n75), .A4(n22), .A5(n76), .Y(n73)
         );
  NAND2X0_RVT U31 ( .A1(n37), .A2(n36), .Y(n74) );
  NAND2X0_RVT U32 ( .A1(n3), .A2(n61), .Y(n75) );
  NAND2X0_RVT U33 ( .A1(n62), .A2(n32), .Y(n23) );
  INVX1_RVT U34 ( .A(n28), .Y(n1) );
  NAND2X0_RVT U35 ( .A1(n52), .A2(n31), .Y(n77) );
  AND2X1_RVT U36 ( .A1(n60), .A2(n63), .Y(n47) );
  AND2X1_RVT U37 ( .A1(n62), .A2(n36), .Y(n51) );
  NAND2X0_RVT U38 ( .A1(n33), .A2(n35), .Y(n22) );
  OA221X1_RVT U39 ( .A1(n43), .A2(n35), .A3(n9), .A4(n44), .A5(n45), .Y(n42)
         );
  OA21X1_RVT U40 ( .A1(n49), .A2(n50), .A3(n51), .Y(n43) );
  AND2X1_RVT U41 ( .A1(n47), .A2(n48), .Y(n44) );
  OA222X1_RVT U42 ( .A1(n32), .A2(n33), .A3(n34), .A4(n35), .A5(n12), .A6(n36), 
        .Y(n19) );
  NAND2X0_RVT U43 ( .A1(n80), .A2(n6), .Y(n52) );
  NAND2X0_RVT U44 ( .A1(n60), .A2(n61), .Y(n59) );
  NAND2X0_RVT U45 ( .A1(n51), .A2(n52), .Y(n58) );
  NAND2X0_RVT U46 ( .A1(n7), .A2(n8), .Y(n49) );
  AND4X1_RVT U47 ( .A1(n67), .A2(n26), .A3(n68), .A4(n69), .Y(n41) );
  NAND2X0_RVT U48 ( .A1(n64), .A2(n2), .Y(n37) );
  NAND2X0_RVT U49 ( .A1(n4), .A2(n5), .Y(n50) );
  NAND2X0_RVT U50 ( .A1(n78), .A2(n2), .Y(n66) );
  NAND2X0_RVT U51 ( .A1(n79), .A2(n6), .Y(n63) );
  NAND2X0_RVT U52 ( .A1(n65), .A2(n6), .Y(n32) );
  NAND2X0_RVT U53 ( .A1(n81), .A2(n2), .Y(n28) );
  NAND2X0_RVT U54 ( .A1(n65), .A2(n81), .Y(n61) );
  NAND2X0_RVT U55 ( .A1(n64), .A2(n79), .Y(n36) );
  NAND2X0_RVT U56 ( .A1(n64), .A2(n80), .Y(n48) );
  NAND2X0_RVT U57 ( .A1(n64), .A2(n65), .Y(n29) );
  NAND2X0_RVT U58 ( .A1(n80), .A2(n81), .Y(n62) );
  NAND2X0_RVT U59 ( .A1(n65), .A2(n78), .Y(n60) );
  NAND2X0_RVT U60 ( .A1(n78), .A2(n79), .Y(n31) );
  NAND2X0_RVT U61 ( .A1(n79), .A2(n81), .Y(n70) );
  NAND2X0_RVT U62 ( .A1(n80), .A2(n78), .Y(n82) );
  INVX1_RVT U63 ( .A(stage1_input[2]), .Y(n8) );
  INVX1_RVT U64 ( .A(stage1_input[3]), .Y(n7) );
  INVX1_RVT U65 ( .A(stage1_input[4]), .Y(n5) );
  INVX1_RVT U66 ( .A(stage1_input[5]), .Y(n4) );
  AND2X1_RVT U67 ( .A1(stage1_input[4]), .A2(n4), .Y(n80) );
  AND2X1_RVT U68 ( .A1(stage1_input[5]), .A2(n5), .Y(n65) );
  AND2X1_RVT U69 ( .A1(stage1_input[2]), .A2(n7), .Y(n64) );
  AND2X1_RVT U70 ( .A1(stage1_input[3]), .A2(n8), .Y(n78) );
  AND2X1_RVT U71 ( .A1(stage1_input[3]), .A2(stage1_input[2]), .Y(n81) );
  AND2X1_RVT U72 ( .A1(stage1_input[5]), .A2(stage1_input[4]), .Y(n79) );
  OR2X1_RVT U73 ( .A1(n37), .A2(n38), .Y(n18) );
  NAND3X0_RVT U74 ( .A1(n54), .A2(n41), .A3(n55), .Y(stage1_output[1]) );
  OA22X1_RVT U75 ( .A1(n12), .A2(n46), .A3(n38), .A4(n29), .Y(n45) );
  OA21X1_RVT U76 ( .A1(n47), .A2(n12), .A3(n67), .Y(n83) );
  AOI222X1_RVT U77 ( .A1(n56), .A2(n85), .A3(n58), .A4(n22), .A5(n11), .A6(n59), .Y(n55) );
  AO22X1_RVT U78 ( .A1(n1), .A2(n85), .A3(n13), .A4(n77), .Y(n76) );
  NAND2X0_RVT U79 ( .A1(n53), .A2(n38), .Y(n57) );
  NAND2X0_RVT U80 ( .A1(stage1_input[1]), .A2(n16), .Y(n35) );
  INVX0_RVT U81 ( .A(stage1_input[0]), .Y(n16) );
  OA221X1_RVT U82 ( .A1(n70), .A2(n38), .A3(n82), .A4(n12), .A5(n25), .Y(n84)
         );
  INVX0_RVT U83 ( .A(n57), .Y(n12) );
  NAND4X0_RVT U84 ( .A1(n17), .A2(n18), .A3(n19), .A4(n20), .Y(
        stage1_output[3]) );
  OA221X1_RVT U85 ( .A1(n82), .A2(n10), .A3(n48), .A4(n53), .A5(n83), .Y(n17)
         );
  NAND4X0_RVT U86 ( .A1(n39), .A2(n40), .A3(n41), .A4(n42), .Y(
        stage1_output[2]) );
  NAND4X0_RVT U87 ( .A1(n39), .A2(n17), .A3(n72), .A4(n73), .Y(
        stage1_output[0]) );
  OA221X1_RVT U88 ( .A1(n61), .A2(n53), .A3(n28), .A4(n33), .A5(n84), .Y(n39)
         );
  NAND2X0_RVT U89 ( .A1(stage1_input[0]), .A2(n14), .Y(n33) );
  NAND2X0_RVT U90 ( .A1(n14), .A2(n16), .Y(n38) );
  INVX0_RVT U91 ( .A(stage1_input[1]), .Y(n14) );
endmodule


module s2 ( stage1_input, stage1_output );
  input [5:0] stage1_input;
  output [3:0] stage1_output;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93;

  INVX0_RVT U3 ( .A(n54), .Y(n11) );
  AOI22X1_RVT U4 ( .A1(n89), .A2(n27), .A3(n90), .A4(n25), .Y(n74) );
  INVX1_RVT U5 ( .A(stage1_input[1]), .Y(n15) );
  AOI221X1_RVT U6 ( .A1(n9), .A2(n21), .A3(n14), .A4(n22), .A5(n23), .Y(n20)
         );
  NAND2X0_RVT U7 ( .A1(stage1_input[1]), .A2(n16), .Y(n54) );
  AO21X1_RVT U8 ( .A1(n70), .A2(n52), .A3(n54), .Y(n73) );
  OA22X1_RVT U9 ( .A1(n70), .A2(n92), .A3(n54), .A4(n58), .Y(n62) );
  NOR2X0_RVT U10 ( .A1(n92), .A2(n60), .Y(n57) );
  INVX1_RVT U11 ( .A(n22), .Y(n3) );
  INVX1_RVT U12 ( .A(n37), .Y(n13) );
  INVX1_RVT U13 ( .A(n46), .Y(n14) );
  NAND3X0_RVT U14 ( .A1(n48), .A2(n59), .A3(n66), .Y(n77) );
  NAND3X0_RVT U15 ( .A1(n34), .A2(n35), .A3(n64), .Y(n76) );
  OA22X1_RVT U16 ( .A1(n10), .A2(n51), .A3(n52), .A4(n93), .Y(n39) );
  AND3X1_RVT U17 ( .A1(n49), .A2(n34), .A3(n29), .Y(n51) );
  NAND2X0_RVT U18 ( .A1(n1), .A2(n32), .Y(n21) );
  AO22X1_RVT U19 ( .A1(n24), .A2(n25), .A3(n26), .A4(n27), .Y(n23) );
  INVX1_RVT U20 ( .A(n33), .Y(n1) );
  NAND2X0_RVT U21 ( .A1(n48), .A2(n31), .Y(n80) );
  NAND2X0_RVT U22 ( .A1(n60), .A2(n32), .Y(n90) );
  NAND2X0_RVT U23 ( .A1(n71), .A2(n50), .Y(n89) );
  NAND2X0_RVT U24 ( .A1(n82), .A2(n87), .Y(n60) );
  AOI221X1_RVT U25 ( .A1(n9), .A2(n41), .A3(n11), .A4(n42), .A5(n43), .Y(n40)
         );
  NAND2X0_RVT U26 ( .A1(n35), .A2(n48), .Y(n42) );
  AO22X1_RVT U27 ( .A1(n44), .A2(n27), .A3(n45), .A4(n37), .Y(n43) );
  NAND2X0_RVT U28 ( .A1(n3), .A2(n48), .Y(n41) );
  NAND2X0_RVT U29 ( .A1(n49), .A2(n50), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n91), .A2(n29), .Y(n47) );
  NAND2X0_RVT U31 ( .A1(n47), .A2(n31), .Y(n44) );
  AND2X1_RVT U32 ( .A1(n52), .A2(n31), .Y(n64) );
  AND2X1_RVT U33 ( .A1(n60), .A2(n28), .Y(n66) );
  NAND2X0_RVT U34 ( .A1(n58), .A2(n59), .Y(n33) );
  NAND2X0_RVT U35 ( .A1(n30), .A2(n31), .Y(n24) );
  NAND2X0_RVT U36 ( .A1(n30), .A2(n28), .Y(n45) );
  NAND2X0_RVT U37 ( .A1(n28), .A2(n29), .Y(n26) );
  AND2X1_RVT U38 ( .A1(n91), .A2(n53), .Y(n71) );
  AO21X1_RVT U39 ( .A1(n47), .A2(n58), .A3(n93), .Y(n72) );
  NAND2X0_RVT U40 ( .A1(n93), .A2(n92), .Y(n37) );
  AND2X1_RVT U41 ( .A1(n53), .A2(n59), .Y(n70) );
  NAND2X0_RVT U42 ( .A1(n36), .A2(n54), .Y(n25) );
  AOI221X1_RVT U43 ( .A1(n11), .A2(n79), .A3(n12), .A4(n80), .A5(n57), .Y(n78)
         );
  INVX1_RVT U44 ( .A(n36), .Y(n12) );
  NAND2X0_RVT U45 ( .A1(n34), .A2(n50), .Y(n79) );
  OA222X1_RVT U46 ( .A1(n48), .A2(n8), .A3(n71), .A4(n10), .A5(n49), .A6(n54), 
        .Y(n18) );
  INVX1_RVT U47 ( .A(n27), .Y(n8) );
  OA221X1_RVT U48 ( .A1(n52), .A2(n92), .A3(n54), .A4(n32), .A5(n55), .Y(n17)
         );
  AOI221X1_RVT U49 ( .A1(n9), .A2(n56), .A3(n33), .A4(n25), .A5(n57), .Y(n55)
         );
  NAND2X0_RVT U50 ( .A1(n60), .A2(n35), .Y(n56) );
  OA221X1_RVT U51 ( .A1(n64), .A2(n65), .A3(n66), .A4(n93), .A5(n67), .Y(n63)
         );
  AOI22X1_RVT U52 ( .A1(n68), .A2(n25), .A3(n69), .A4(n27), .Y(n67) );
  NAND2X0_RVT U53 ( .A1(n29), .A2(n59), .Y(n68) );
  NAND3X0_RVT U54 ( .A1(n32), .A2(n35), .A3(n30), .Y(n69) );
  NAND2X0_RVT U55 ( .A1(n83), .A2(n85), .Y(n48) );
  AND2X1_RVT U56 ( .A1(n4), .A2(n5), .Y(n82) );
  NAND2X0_RVT U57 ( .A1(n88), .A2(n82), .Y(n35) );
  AND2X1_RVT U58 ( .A1(n6), .A2(n7), .Y(n87) );
  NAND2X0_RVT U59 ( .A1(n86), .A2(n87), .Y(n31) );
  NAND2X0_RVT U60 ( .A1(n81), .A2(n82), .Y(n49) );
  NAND2X0_RVT U61 ( .A1(n84), .A2(n87), .Y(n34) );
  NAND2X0_RVT U62 ( .A1(n81), .A2(n86), .Y(n29) );
  NAND2X0_RVT U63 ( .A1(n85), .A2(n87), .Y(n58) );
  NAND2X0_RVT U64 ( .A1(n83), .A2(n86), .Y(n50) );
  NAND2X0_RVT U65 ( .A1(n86), .A2(n88), .Y(n59) );
  INVX1_RVT U66 ( .A(n65), .Y(n9) );
  NAND2X0_RVT U67 ( .A1(n85), .A2(n88), .Y(n52) );
  NAND2X0_RVT U68 ( .A1(n83), .A2(n82), .Y(n30) );
  NAND2X0_RVT U69 ( .A1(n84), .A2(n81), .Y(n32) );
  NAND2X0_RVT U70 ( .A1(n65), .A2(n46), .Y(n27) );
  NAND2X0_RVT U71 ( .A1(n83), .A2(n84), .Y(n28) );
  NAND2X0_RVT U72 ( .A1(n84), .A2(n88), .Y(n91) );
  NAND2X0_RVT U73 ( .A1(n81), .A2(n85), .Y(n53) );
  INVX1_RVT U74 ( .A(stage1_input[2]), .Y(n7) );
  AND2X1_RVT U75 ( .A1(stage1_input[3]), .A2(n7), .Y(n83) );
  INVX1_RVT U76 ( .A(stage1_input[4]), .Y(n5) );
  AND2X1_RVT U77 ( .A1(stage1_input[5]), .A2(n5), .Y(n85) );
  INVX1_RVT U78 ( .A(stage1_input[5]), .Y(n4) );
  INVX1_RVT U79 ( .A(stage1_input[3]), .Y(n6) );
  AND2X1_RVT U80 ( .A1(stage1_input[2]), .A2(n6), .Y(n81) );
  AND2X1_RVT U81 ( .A1(stage1_input[4]), .A2(n4), .Y(n84) );
  AND2X1_RVT U82 ( .A1(stage1_input[3]), .A2(stage1_input[2]), .Y(n88) );
  AND2X1_RVT U83 ( .A1(stage1_input[5]), .A2(stage1_input[4]), .Y(n86) );
  NAND4X0_RVT U84 ( .A1(n17), .A2(n18), .A3(n19), .A4(n20), .Y(
        stage1_output[3]) );
  OA22X1_RVT U85 ( .A1(n13), .A2(n34), .A3(n35), .A4(n93), .Y(n19) );
  NAND4X0_RVT U86 ( .A1(n61), .A2(n18), .A3(n62), .A4(n63), .Y(
        stage1_output[1]) );
  NAND4X0_RVT U87 ( .A1(n17), .A2(n38), .A3(n39), .A4(n40), .Y(
        stage1_output[2]) );
  OR2X1_RVT U88 ( .A1(n53), .A2(n46), .Y(n38) );
  NAND4X0_RVT U89 ( .A1(n72), .A2(n73), .A3(n74), .A4(n75), .Y(
        stage1_output[0]) );
  AOI221X1_RVT U90 ( .A1(n14), .A2(n76), .A3(n9), .A4(n77), .A5(n2), .Y(n75)
         );
  NAND2X0_RVT U91 ( .A1(stage1_input[1]), .A2(stage1_input[0]), .Y(n65) );
  INVX0_RVT U92 ( .A(n25), .Y(n10) );
  INVX0_RVT U93 ( .A(stage1_input[0]), .Y(n16) );
  NBUFFX2_RVT U94 ( .A(n46), .Y(n92) );
  NBUFFX2_RVT U95 ( .A(n36), .Y(n93) );
  NAND2X0_RVT U96 ( .A1(n15), .A2(n16), .Y(n46) );
  NAND2X0_RVT U97 ( .A1(stage1_input[0]), .A2(n15), .Y(n36) );
  INVX0_RVT U98 ( .A(n61), .Y(n2) );
  OA221X1_RVT U99 ( .A1(n30), .A2(n10), .A3(n49), .A4(n65), .A5(n78), .Y(n61)
         );
endmodule


module s3 ( stage1_input, stage1_output );
  input [5:0] stage1_input;
  output [3:0] stage1_output;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87;

  NAND3X0_RVT U3 ( .A1(n63), .A2(n64), .A3(n12), .Y(n59) );
  NAND3X0_RVT U4 ( .A1(n41), .A2(n23), .A3(n31), .Y(n57) );
  AND3X1_RVT U5 ( .A1(n40), .A2(n41), .A3(n42), .Y(n37) );
  NAND3X0_RVT U6 ( .A1(n63), .A2(n64), .A3(n10), .Y(n17) );
  AO21X1_RVT U7 ( .A1(n41), .A2(n47), .A3(n38), .Y(n83) );
  NAND3X0_RVT U8 ( .A1(n63), .A2(n64), .A3(n14), .Y(n53) );
  AND2X1_RVT U9 ( .A1(stage1_input[4]), .A2(n4), .Y(n79) );
  AND2X1_RVT U10 ( .A1(stage1_input[5]), .A2(n5), .Y(n80) );
  AND2X1_RVT U11 ( .A1(stage1_input[2]), .A2(n6), .Y(n78) );
  AND2X1_RVT U12 ( .A1(stage1_input[3]), .A2(n7), .Y(n77) );
  AND2X1_RVT U13 ( .A1(stage1_input[5]), .A2(stage1_input[4]), .Y(n82) );
  AND2X1_RVT U14 ( .A1(stage1_input[2]), .A2(stage1_input[3]), .Y(n81) );
  AO21X1_RVT U15 ( .A1(n50), .A2(n48), .A3(n51), .Y(n33) );
  INVX0_RVT U16 ( .A(n65), .Y(n2) );
  INVX0_RVT U17 ( .A(n24), .Y(n1) );
  INVX1_RVT U18 ( .A(n25), .Y(n3) );
  NAND2X0_RVT U19 ( .A1(n41), .A2(n48), .Y(n65) );
  NAND3X0_RVT U20 ( .A1(n58), .A2(n59), .A3(n60), .Y(n24) );
  OA22X1_RVT U21 ( .A1(n9), .A2(n61), .A3(n46), .A4(n87), .Y(n60) );
  AO21X1_RVT U22 ( .A1(n2), .A2(n43), .A3(n11), .Y(n58) );
  AOI221X1_RVT U23 ( .A1(n12), .A2(n56), .A3(n10), .A4(n57), .A5(n24), .Y(n55)
         );
  NAND2X0_RVT U24 ( .A1(n49), .A2(n66), .Y(n56) );
  OA221X1_RVT U25 ( .A1(n37), .A2(n9), .A3(n32), .A4(n38), .A5(n39), .Y(n36)
         );
  AND3X1_RVT U26 ( .A1(n30), .A2(n21), .A3(n43), .Y(n42) );
  INVX1_RVT U27 ( .A(n27), .Y(n11) );
  AOI221X1_RVT U28 ( .A1(n10), .A2(n73), .A3(n74), .A4(n27), .A5(n75), .Y(n72)
         );
  NAND2X0_RVT U29 ( .A1(n47), .A2(n61), .Y(n73) );
  NAND3X0_RVT U30 ( .A1(n48), .A2(n46), .A3(n3), .Y(n74) );
  AO22X1_RVT U31 ( .A1(n8), .A2(n65), .A3(n76), .A4(n62), .Y(n75) );
  AND2X1_RVT U32 ( .A1(n69), .A2(n29), .Y(n49) );
  AND2X1_RVT U33 ( .A1(n46), .A2(n47), .Y(n28) );
  AOI22X1_RVT U34 ( .A1(n10), .A2(n25), .A3(n26), .A4(n27), .Y(n18) );
  NAND4X0_RVT U35 ( .A1(n28), .A2(n29), .A3(n30), .A4(n21), .Y(n26) );
  INVX1_RVT U36 ( .A(n38), .Y(n12) );
  AOI22X1_RVT U37 ( .A1(n67), .A2(n62), .A3(n68), .A4(n27), .Y(n54) );
  NAND2X0_RVT U38 ( .A1(n50), .A2(n40), .Y(n68) );
  NAND2X0_RVT U39 ( .A1(n49), .A2(n21), .Y(n67) );
  INVX1_RVT U40 ( .A(n62), .Y(n9) );
  AO21X1_RVT U41 ( .A1(n49), .A2(n30), .A3(n11), .Y(n34) );
  NAND3X0_RVT U42 ( .A1(n32), .A2(n30), .A3(n69), .Y(n76) );
  NAND2X0_RVT U43 ( .A1(n43), .A2(n50), .Y(n25) );
  AND2X1_RVT U44 ( .A1(n66), .A2(n40), .Y(n31) );
  OR2X1_RVT U45 ( .A1(n23), .A2(n38), .Y(n70) );
  INVX1_RVT U46 ( .A(n87), .Y(n8) );
  NAND2X0_RVT U47 ( .A1(n51), .A2(n38), .Y(n27) );
  AND4X1_RVT U48 ( .A1(n53), .A2(n17), .A3(n83), .A4(n84), .Y(n39) );
  OA222X1_RVT U49 ( .A1(n45), .A2(n66), .A3(n85), .A4(n86), .A5(n11), .A6(n61), 
        .Y(n84) );
  AND2X1_RVT U50 ( .A1(n23), .A2(n29), .Y(n85) );
  NAND2X0_RVT U51 ( .A1(n78), .A2(n79), .Y(n30) );
  NAND2X0_RVT U52 ( .A1(n45), .A2(n20), .Y(n62) );
  OA22X1_RVT U53 ( .A1(n44), .A2(n45), .A3(n28), .A4(n86), .Y(n35) );
  AND2X1_RVT U54 ( .A1(n32), .A2(n48), .Y(n44) );
  NAND2X0_RVT U55 ( .A1(n80), .A2(n77), .Y(n21) );
  INVX1_RVT U56 ( .A(n45), .Y(n10) );
  INVX1_RVT U57 ( .A(n51), .Y(n14) );
  NAND2X0_RVT U58 ( .A1(n80), .A2(n81), .Y(n50) );
  NAND2X0_RVT U59 ( .A1(n81), .A2(n79), .Y(n66) );
  NAND2X0_RVT U60 ( .A1(n79), .A2(n77), .Y(n43) );
  NAND2X0_RVT U61 ( .A1(n81), .A2(n82), .Y(n29) );
  NAND2X0_RVT U62 ( .A1(n78), .A2(n82), .Y(n40) );
  NAND2X0_RVT U63 ( .A1(n80), .A2(n78), .Y(n32) );
  NAND2X0_RVT U64 ( .A1(n82), .A2(n77), .Y(n61) );
  AND2X1_RVT U65 ( .A1(n86), .A2(n51), .Y(n22) );
  INVX1_RVT U66 ( .A(stage1_input[1]), .Y(n13) );
  NAND2X0_RVT U67 ( .A1(stage1_input[1]), .A2(stage1_input[0]), .Y(n51) );
  NAND2X0_RVT U68 ( .A1(stage1_input[0]), .A2(n13), .Y(n45) );
  AO21X1_RVT U69 ( .A1(n31), .A2(n32), .A3(n9), .Y(n16) );
  NAND4X0_RVT U70 ( .A1(n52), .A2(n53), .A3(n54), .A4(n55), .Y(
        stage1_output[1]) );
  AO21X1_RVT U71 ( .A1(n30), .A2(n47), .A3(n22), .Y(n52) );
  NAND4X0_RVT U72 ( .A1(n33), .A2(n34), .A3(n35), .A4(n36), .Y(
        stage1_output[2]) );
  NAND4X0_RVT U73 ( .A1(n39), .A2(n70), .A3(n71), .A4(n72), .Y(
        stage1_output[0]) );
  OA22X1_RVT U74 ( .A1(n31), .A2(n51), .A3(n22), .A4(n21), .Y(n71) );
  NAND2X0_RVT U75 ( .A1(n82), .A2(n64), .Y(n48) );
  NAND2X0_RVT U76 ( .A1(n79), .A2(n64), .Y(n23) );
  NAND2X0_RVT U77 ( .A1(n80), .A2(n64), .Y(n47) );
  NAND2X0_RVT U78 ( .A1(n77), .A2(n63), .Y(n69) );
  NAND2X0_RVT U79 ( .A1(n78), .A2(n63), .Y(n46) );
  NAND2X0_RVT U80 ( .A1(n81), .A2(n63), .Y(n41) );
  NAND4X0_RVT U81 ( .A1(n16), .A2(n17), .A3(n18), .A4(n19), .Y(
        stage1_output[3]) );
  OA221X1_RVT U82 ( .A1(n87), .A2(n21), .A3(n22), .A4(n23), .A5(n1), .Y(n19)
         );
  INVX0_RVT U83 ( .A(stage1_input[2]), .Y(n7) );
  AND2X1_RVT U84 ( .A1(n6), .A2(n7), .Y(n64) );
  INVX0_RVT U85 ( .A(stage1_input[3]), .Y(n6) );
  INVX0_RVT U86 ( .A(stage1_input[5]), .Y(n4) );
  AND2X1_RVT U87 ( .A1(n4), .A2(n5), .Y(n63) );
  INVX0_RVT U88 ( .A(stage1_input[4]), .Y(n5) );
  NBUFFX2_RVT U89 ( .A(n20), .Y(n86) );
  NBUFFX2_RVT U90 ( .A(n20), .Y(n87) );
  NAND2X0_RVT U91 ( .A1(stage1_input[1]), .A2(n15), .Y(n20) );
  NAND2X0_RVT U92 ( .A1(n13), .A2(n15), .Y(n38) );
  INVX0_RVT U93 ( .A(stage1_input[0]), .Y(n15) );
endmodule


module s4 ( stage1_input, stage1_output );
  input [5:0] stage1_input;
  output [3:0] stage1_output;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85;

  AO21X1_RVT U3 ( .A1(n47), .A2(n33), .A3(n38), .Y(n53) );
  OA222X1_RVT U4 ( .A1(n36), .A2(n34), .A3(n37), .A4(n38), .A5(n11), .A6(n39), 
        .Y(n20) );
  OA22X1_RVT U5 ( .A1(n50), .A2(n30), .A3(n38), .A4(n51), .Y(n41) );
  AO21X1_RVT U6 ( .A1(n66), .A2(n31), .A3(n10), .Y(n54) );
  NAND2X0_RVT U7 ( .A1(n38), .A2(n36), .Y(n28) );
  NAND2X0_RVT U8 ( .A1(stage1_input[1]), .A2(n17), .Y(n36) );
  INVX0_RVT U9 ( .A(stage1_input[1]), .Y(n15) );
  NAND2X0_RVT U10 ( .A1(n65), .A2(n64), .Y(n75) );
  INVX1_RVT U11 ( .A(n23), .Y(n1) );
  OR2X1_RVT U12 ( .A1(n32), .A2(n5), .Y(n25) );
  OA221X1_RVT U13 ( .A1(n37), .A2(n50), .A3(n14), .A4(n57), .A5(n40), .Y(n56)
         );
  INVX1_RVT U14 ( .A(n26), .Y(n14) );
  AOI221X1_RVT U15 ( .A1(n16), .A2(n58), .A3(n59), .A4(n28), .A5(n60), .Y(n40)
         );
  NAND3X0_RVT U16 ( .A1(n62), .A2(n63), .A3(n51), .Y(n58) );
  NAND2X0_RVT U17 ( .A1(n61), .A2(n29), .Y(n60) );
  OA22X1_RVT U18 ( .A1(n10), .A2(n37), .A3(n11), .A4(n31), .Y(n70) );
  INVX1_RVT U19 ( .A(n28), .Y(n10) );
  AOI221X1_RVT U20 ( .A1(n13), .A2(n22), .A3(n16), .A4(n23), .A5(n24), .Y(n21)
         );
  NAND3X0_RVT U21 ( .A1(n33), .A2(n34), .A3(n35), .Y(n22) );
  AO221X1_RVT U22 ( .A1(n25), .A2(n26), .A3(n27), .A4(n28), .A5(n3), .Y(n24)
         );
  INVX1_RVT U23 ( .A(n29), .Y(n3) );
  AOI222X1_RVT U24 ( .A1(n16), .A2(n59), .A3(n13), .A4(n85), .A5(n23), .A6(n28), .Y(n18) );
  NAND2X0_RVT U25 ( .A1(n84), .A2(n63), .Y(n85) );
  AOI221X1_RVT U26 ( .A1(n43), .A2(n26), .A3(n44), .A4(n28), .A5(n45), .Y(n42)
         );
  NAND2X0_RVT U27 ( .A1(n1), .A2(n39), .Y(n44) );
  AO22X1_RVT U28 ( .A1(n12), .A2(n4), .A3(n32), .A4(n46), .Y(n45) );
  NAND2X0_RVT U29 ( .A1(n37), .A2(n49), .Y(n43) );
  INVX1_RVT U30 ( .A(n46), .Y(n11) );
  AND2X1_RVT U31 ( .A1(n51), .A2(n39), .Y(n65) );
  AO21X1_RVT U32 ( .A1(n76), .A2(n77), .A3(n50), .Y(n61) );
  AND2X1_RVT U33 ( .A1(n35), .A2(n84), .Y(n37) );
  NAND2X0_RVT U34 ( .A1(n62), .A2(n30), .Y(n59) );
  INVX1_RVT U35 ( .A(n50), .Y(n13) );
  INVX1_RVT U36 ( .A(n33), .Y(n4) );
  NAND2X0_RVT U37 ( .A1(n16), .A2(n4), .Y(n29) );
  AND2X1_RVT U38 ( .A1(n34), .A2(n49), .Y(n64) );
  NAND2X0_RVT U39 ( .A1(n76), .A2(n77), .Y(n23) );
  NAND2X0_RVT U40 ( .A1(n79), .A2(n81), .Y(n76) );
  NAND2X0_RVT U41 ( .A1(n47), .A2(n48), .Y(n32) );
  INVX1_RVT U42 ( .A(n52), .Y(n5) );
  NAND2X0_RVT U43 ( .A1(n30), .A2(n31), .Y(n27) );
  AND3X1_RVT U44 ( .A1(n52), .A2(n39), .A3(n48), .Y(n57) );
  AND2X1_RVT U45 ( .A1(n35), .A2(n48), .Y(n66) );
  NAND2X0_RVT U46 ( .A1(n15), .A2(n17), .Y(n50) );
  NAND2X0_RVT U47 ( .A1(n72), .A2(n50), .Y(n26) );
  OA221X1_RVT U48 ( .A1(n57), .A2(n38), .A3(n66), .A4(n72), .A5(n73), .Y(n71)
         );
  AOI221X1_RVT U49 ( .A1(n12), .A2(n74), .A3(n75), .A4(n26), .A5(n2), .Y(n73)
         );
  NAND2X0_RVT U50 ( .A1(n47), .A2(n30), .Y(n74) );
  INVX1_RVT U51 ( .A(n61), .Y(n2) );
  NAND2X0_RVT U52 ( .A1(n36), .A2(n72), .Y(n46) );
  OA22X1_RVT U53 ( .A1(n11), .A2(n64), .A3(n65), .A4(n36), .Y(n55) );
  NAND2X0_RVT U54 ( .A1(n82), .A2(n68), .Y(n39) );
  AND2X1_RVT U55 ( .A1(n6), .A2(n7), .Y(n79) );
  NAND2X0_RVT U56 ( .A1(n79), .A2(n82), .Y(n35) );
  NAND2X0_RVT U57 ( .A1(n80), .A2(n67), .Y(n30) );
  INVX1_RVT U58 ( .A(n36), .Y(n12) );
  AND2X1_RVT U59 ( .A1(n8), .A2(n9), .Y(n81) );
  NAND2X0_RVT U60 ( .A1(n81), .A2(n68), .Y(n84) );
  NAND2X0_RVT U61 ( .A1(n67), .A2(n68), .Y(n33) );
  NAND2X0_RVT U62 ( .A1(n78), .A2(n68), .Y(n49) );
  NAND2X0_RVT U63 ( .A1(n80), .A2(n82), .Y(n47) );
  NAND2X0_RVT U64 ( .A1(n80), .A2(n81), .Y(n51) );
  NAND2X0_RVT U65 ( .A1(n81), .A2(n83), .Y(n48) );
  NAND2X0_RVT U66 ( .A1(n78), .A2(n80), .Y(n52) );
  NAND2X0_RVT U67 ( .A1(n79), .A2(n67), .Y(n34) );
  NAND2X0_RVT U68 ( .A1(n78), .A2(n83), .Y(n31) );
  NAND2X0_RVT U69 ( .A1(n83), .A2(n67), .Y(n77) );
  INVX1_RVT U70 ( .A(n72), .Y(n16) );
  NAND2X0_RVT U71 ( .A1(n79), .A2(n78), .Y(n62) );
  NAND2X0_RVT U72 ( .A1(n82), .A2(n83), .Y(n63) );
  OA222X1_RVT U73 ( .A1(n31), .A2(n50), .A3(n38), .A4(n49), .A5(n36), .A6(n52), 
        .Y(n19) );
  INVX1_RVT U74 ( .A(stage1_input[0]), .Y(n17) );
  NAND2X0_RVT U75 ( .A1(stage1_input[0]), .A2(n15), .Y(n38) );
  INVX1_RVT U76 ( .A(stage1_input[3]), .Y(n8) );
  AND2X1_RVT U77 ( .A1(stage1_input[2]), .A2(n8), .Y(n82) );
  INVX1_RVT U78 ( .A(stage1_input[5]), .Y(n6) );
  AND2X1_RVT U79 ( .A1(stage1_input[4]), .A2(n6), .Y(n80) );
  INVX1_RVT U80 ( .A(stage1_input[4]), .Y(n7) );
  INVX1_RVT U81 ( .A(stage1_input[2]), .Y(n9) );
  AND2X1_RVT U82 ( .A1(stage1_input[5]), .A2(stage1_input[4]), .Y(n68) );
  AND2X1_RVT U83 ( .A1(stage1_input[3]), .A2(stage1_input[2]), .Y(n67) );
  AND2X1_RVT U84 ( .A1(stage1_input[3]), .A2(n9), .Y(n78) );
  AND2X1_RVT U85 ( .A1(stage1_input[5]), .A2(n7), .Y(n83) );
  NAND2X0_RVT U86 ( .A1(stage1_input[1]), .A2(stage1_input[0]), .Y(n72) );
  NAND4X0_RVT U87 ( .A1(n53), .A2(n54), .A3(n55), .A4(n56), .Y(
        stage1_output[1]) );
  NAND4X0_RVT U88 ( .A1(n18), .A2(n69), .A3(n70), .A4(n71), .Y(
        stage1_output[0]) );
  NAND2X0_RVT U89 ( .A1(n5), .A2(n13), .Y(n69) );
  NAND4X0_RVT U90 ( .A1(n18), .A2(n19), .A3(n20), .A4(n21), .Y(
        stage1_output[3]) );
  NAND4X0_RVT U91 ( .A1(n40), .A2(n19), .A3(n41), .A4(n42), .Y(
        stage1_output[2]) );
endmodule


module s5 ( stage1_input, stage1_output );
  input [5:0] stage1_input;
  output [3:0] stage1_output;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85;

  AO21X1_RVT U3 ( .A1(n29), .A2(n50), .A3(n8), .Y(n48) );
  INVX1_RVT U4 ( .A(n40), .Y(n11) );
  AO21X1_RVT U5 ( .A1(n37), .A2(n34), .A3(n8), .Y(n78) );
  AO21X1_RVT U6 ( .A1(n51), .A2(n52), .A3(n10), .Y(n47) );
  OAI21X1_RVT U7 ( .A1(n53), .A2(n1), .A3(n11), .Y(n46) );
  NAND4X0_RVT U8 ( .A1(n28), .A2(n35), .A3(n29), .A4(n39), .Y(n62) );
  NAND3X0_RVT U9 ( .A1(n65), .A2(n66), .A3(n11), .Y(n79) );
  OAI22X1_RVT U10 ( .A1(n57), .A2(n40), .A3(n30), .A4(n85), .Y(n82) );
  NAND3X0_RVT U11 ( .A1(n65), .A2(n66), .A3(n9), .Y(n49) );
  INVX1_RVT U12 ( .A(n56), .Y(n13) );
  AND2X1_RVT U13 ( .A1(stage1_input[5]), .A2(n5), .Y(n71) );
  OA222X1_RVT U14 ( .A1(n84), .A2(n37), .A3(n38), .A4(n39), .A5(n40), .A6(n41), 
        .Y(n17) );
  INVX0_RVT U15 ( .A(stage1_input[5]), .Y(n3) );
  NAND2X0_RVT U16 ( .A1(n8), .A2(n84), .Y(n20) );
  OA21X1_RVT U17 ( .A1(n34), .A2(n84), .A3(n16), .Y(n67) );
  AND4X1_RVT U18 ( .A1(n46), .A2(n47), .A3(n48), .A4(n49), .Y(n45) );
  INVX1_RVT U19 ( .A(n25), .Y(n8) );
  INVX1_RVT U20 ( .A(n41), .Y(n4) );
  NAND3X0_RVT U21 ( .A1(n34), .A2(n32), .A3(n29), .Y(n63) );
  AND4X1_RVT U22 ( .A1(n28), .A2(n35), .A3(n41), .A4(n32), .Y(n51) );
  AOI221X1_RVT U23 ( .A1(n13), .A2(n19), .A3(n2), .A4(n20), .A5(n21), .Y(n18)
         );
  INVX1_RVT U24 ( .A(n32), .Y(n2) );
  NAND3X0_RVT U25 ( .A1(n33), .A2(n34), .A3(n35), .Y(n19) );
  NAND2X0_RVT U26 ( .A1(n52), .A2(n28), .Y(n53) );
  NAND2X0_RVT U27 ( .A1(n28), .A2(n31), .Y(n22) );
  NAND2X0_RVT U28 ( .A1(n27), .A2(n28), .Y(n26) );
  AND2X1_RVT U29 ( .A1(n50), .A2(n30), .Y(n69) );
  INVX1_RVT U30 ( .A(n30), .Y(n1) );
  NAND2X0_RVT U31 ( .A1(n77), .A2(n74), .Y(n29) );
  NAND2X0_RVT U32 ( .A1(n29), .A2(n30), .Y(n24) );
  OA22X1_RVT U33 ( .A1(n54), .A2(n84), .A3(n38), .A4(n27), .Y(n44) );
  AND3X1_RVT U34 ( .A1(n33), .A2(n57), .A3(n31), .Y(n54) );
  OA222X1_RVT U35 ( .A1(n57), .A2(n10), .A3(n40), .A4(n76), .A5(n56), .A6(n29), 
        .Y(n16) );
  AND2X1_RVT U36 ( .A1(n50), .A2(n33), .Y(n76) );
  OA22X1_RVT U37 ( .A1(n10), .A2(n39), .A3(n85), .A4(n31), .Y(n80) );
  NAND2X0_RVT U38 ( .A1(n77), .A2(n66), .Y(n28) );
  NAND2X0_RVT U39 ( .A1(n40), .A2(n55), .Y(n25) );
  OA22X1_RVT U40 ( .A1(n8), .A2(n27), .A3(n56), .A4(n31), .Y(n70) );
  NAND2X0_RVT U41 ( .A1(n74), .A2(n65), .Y(n50) );
  AND2X1_RVT U42 ( .A1(n65), .A2(n66), .Y(n81) );
  NAND2X0_RVT U43 ( .A1(n75), .A2(n66), .Y(n31) );
  AND2X1_RVT U44 ( .A1(n6), .A2(n7), .Y(n77) );
  NAND2X0_RVT U45 ( .A1(n72), .A2(n66), .Y(n41) );
  NAND2X0_RVT U46 ( .A1(n73), .A2(n65), .Y(n32) );
  NAND2X0_RVT U47 ( .A1(n71), .A2(n65), .Y(n39) );
  NAND2X0_RVT U48 ( .A1(n71), .A2(n75), .Y(n30) );
  AND2X1_RVT U49 ( .A1(n3), .A2(n5), .Y(n74) );
  NAND2X0_RVT U50 ( .A1(n73), .A2(n75), .Y(n34) );
  NAND2X0_RVT U51 ( .A1(n71), .A2(n72), .Y(n27) );
  NAND2X0_RVT U52 ( .A1(n74), .A2(n75), .Y(n35) );
  NAND2X0_RVT U53 ( .A1(n77), .A2(n71), .Y(n33) );
  NAND2X0_RVT U54 ( .A1(n74), .A2(n72), .Y(n52) );
  NAND2X0_RVT U55 ( .A1(n72), .A2(n73), .Y(n57) );
  NAND2X0_RVT U56 ( .A1(n77), .A2(n73), .Y(n37) );
  AND2X1_RVT U57 ( .A1(stage1_input[5]), .A2(stage1_input[4]), .Y(n66) );
  AND2X1_RVT U58 ( .A1(stage1_input[3]), .A2(stage1_input[2]), .Y(n65) );
  INVX1_RVT U59 ( .A(stage1_input[2]), .Y(n7) );
  INVX1_RVT U60 ( .A(stage1_input[3]), .Y(n6) );
  AND2X1_RVT U61 ( .A1(stage1_input[2]), .A2(n6), .Y(n75) );
  INVX1_RVT U62 ( .A(stage1_input[4]), .Y(n5) );
  AND2X1_RVT U63 ( .A1(stage1_input[4]), .A2(n3), .Y(n73) );
  AND2X1_RVT U64 ( .A1(stage1_input[3]), .A2(n7), .Y(n72) );
  OA221X1_RVT U65 ( .A1(n51), .A2(n85), .A3(n10), .A4(n69), .A5(n70), .Y(n68)
         );
  NAND4X0_RVT U66 ( .A1(n15), .A2(n16), .A3(n17), .A4(n18), .Y(
        stage1_output[3]) );
  NAND2X0_RVT U67 ( .A1(n1), .A2(n13), .Y(n43) );
  OA22X1_RVT U68 ( .A1(n56), .A2(n30), .A3(n85), .A4(n50), .Y(n59) );
  AO222X1_RVT U69 ( .A1(n22), .A2(n23), .A3(n24), .A4(n25), .A5(n9), .A6(n26), 
        .Y(n21) );
  AOI221X1_RVT U70 ( .A1(n81), .A2(n13), .A3(n53), .A4(n23), .A5(n82), .Y(n58)
         );
  NAND2X0_RVT U71 ( .A1(n56), .A2(n36), .Y(n23) );
  INVX0_RVT U72 ( .A(n23), .Y(n10) );
  OA221X1_RVT U73 ( .A1(n84), .A2(n50), .A3(n52), .A4(n85), .A5(n64), .Y(n15)
         );
  OA221X1_RVT U74 ( .A1(n34), .A2(n8), .A3(n27), .A4(n10), .A5(n49), .Y(n64)
         );
  NAND4X0_RVT U75 ( .A1(n42), .A2(n43), .A3(n44), .A4(n45), .Y(
        stage1_output[2]) );
  NAND4X0_RVT U76 ( .A1(n58), .A2(n42), .A3(n67), .A4(n68), .Y(
        stage1_output[0]) );
  AND3X1_RVT U77 ( .A1(n78), .A2(n79), .A3(n80), .Y(n42) );
  AND2X1_RVT U78 ( .A1(n55), .A2(n56), .Y(n38) );
  INVX0_RVT U79 ( .A(n36), .Y(n83) );
  INVX0_RVT U80 ( .A(n83), .Y(n84) );
  NAND2X0_RVT U81 ( .A1(n12), .A2(n14), .Y(n36) );
  INVX0_RVT U82 ( .A(stage1_input[1]), .Y(n12) );
  INVX0_RVT U83 ( .A(n9), .Y(n85) );
  INVX0_RVT U84 ( .A(n55), .Y(n9) );
  NAND2X0_RVT U85 ( .A1(stage1_input[1]), .A2(n14), .Y(n55) );
  INVX0_RVT U86 ( .A(stage1_input[0]), .Y(n14) );
  NAND4X0_RVT U87 ( .A1(n58), .A2(n15), .A3(n59), .A4(n60), .Y(
        stage1_output[1]) );
  AOI222X1_RVT U88 ( .A1(n11), .A2(n62), .A3(n63), .A4(n23), .A5(n4), .A6(n20), 
        .Y(n61) );
  OA221X1_RVT U89 ( .A1(n33), .A2(n8), .A3(n39), .A4(n84), .A5(n61), .Y(n60)
         );
  NAND2X0_RVT U90 ( .A1(stage1_input[0]), .A2(n12), .Y(n40) );
  NAND2X0_RVT U91 ( .A1(stage1_input[0]), .A2(stage1_input[1]), .Y(n56) );
endmodule


module s6 ( stage1_input, stage1_output );
  input [5:0] stage1_input;
  output [3:0] stage1_output;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n15,
         n16, n33, n89, n90;

  INVX1_RVT U3 ( .A(n24), .Y(n15) );
  NAND2X0_RVT U4 ( .A1(stage1_input[1]), .A2(stage1_input[0]), .Y(n24) );
  AOI22X1_RVT U5 ( .A1(n17), .A2(n83), .A3(n90), .A4(n88), .Y(n20) );
  INVX0_RVT U6 ( .A(stage1_input[1]), .Y(n18) );
  OR2X1_RVT U7 ( .A1(n40), .A2(n41), .Y(n35) );
  INVX1_RVT U8 ( .A(n40), .Y(n3) );
  INVX1_RVT U9 ( .A(n51), .Y(n9) );
  AO22X1_RVT U10 ( .A1(n2), .A2(n90), .A3(n4), .A4(n15), .Y(n84) );
  INVX1_RVT U11 ( .A(n43), .Y(n4) );
  AND4X1_RVT U12 ( .A1(n29), .A2(n73), .A3(n46), .A4(n74), .Y(n31) );
  NAND2X0_RVT U13 ( .A1(n89), .A2(n51), .Y(n73) );
  AOI221X1_RVT U14 ( .A1(n1), .A2(n89), .A3(n17), .A4(n2), .A5(n87), .Y(n56)
         );
  AO22X1_RVT U15 ( .A1(n62), .A2(n15), .A3(n8), .A4(n33), .Y(n87) );
  INVX1_RVT U16 ( .A(n39), .Y(n1) );
  INVX1_RVT U17 ( .A(n69), .Y(n8) );
  NAND2X0_RVT U18 ( .A1(n38), .A2(n63), .Y(n61) );
  INVX1_RVT U19 ( .A(n55), .Y(n11) );
  NAND2X0_RVT U20 ( .A1(n38), .A2(n52), .Y(n76) );
  NAND2X0_RVT U21 ( .A1(n69), .A2(n43), .Y(n68) );
  NAND2X0_RVT U22 ( .A1(n54), .A2(n55), .Y(n41) );
  NAND2X0_RVT U23 ( .A1(n71), .A2(n72), .Y(n40) );
  NAND2X0_RVT U24 ( .A1(n53), .A2(n55), .Y(n88) );
  AOI222X1_RVT U25 ( .A1(n33), .A2(n48), .A3(n90), .A4(n49), .A5(n17), .A6(n50), .Y(n47) );
  NAND3X0_RVT U26 ( .A1(n39), .A2(n52), .A3(n53), .Y(n48) );
  NAND2X0_RVT U27 ( .A1(n9), .A2(n3), .Y(n50) );
  AND2X1_RVT U28 ( .A1(n38), .A2(n39), .Y(n25) );
  INVX1_RVT U29 ( .A(n63), .Y(n2) );
  INVX1_RVT U30 ( .A(n53), .Y(n7) );
  NAND2X0_RVT U31 ( .A1(n70), .A2(n52), .Y(n44) );
  NAND2X0_RVT U32 ( .A1(n81), .A2(n82), .Y(n70) );
  NAND2X0_RVT U33 ( .A1(n38), .A2(n72), .Y(n65) );
  NAND2X0_RVT U34 ( .A1(n71), .A2(n55), .Y(n66) );
  NAND2X0_RVT U35 ( .A1(n69), .A2(n37), .Y(n51) );
  NAND2X0_RVT U36 ( .A1(n54), .A2(n37), .Y(n58) );
  NAND2X0_RVT U37 ( .A1(n42), .A2(n43), .Y(n34) );
  INVX1_RVT U38 ( .A(n16), .Y(n89) );
  INVX1_RVT U39 ( .A(n16), .Y(n90) );
  INVX1_RVT U40 ( .A(n26), .Y(n17) );
  AND3X1_RVT U41 ( .A1(n30), .A2(n56), .A3(n57), .Y(n22) );
  NAND2X0_RVT U42 ( .A1(n26), .A2(n24), .Y(n59) );
  NAND2X0_RVT U43 ( .A1(n54), .A2(n43), .Y(n60) );
  AND2X1_RVT U44 ( .A1(n13), .A2(n14), .Y(n82) );
  NAND2X0_RVT U45 ( .A1(n78), .A2(n82), .Y(n55) );
  NAND2X0_RVT U46 ( .A1(n79), .A2(n80), .Y(n38) );
  AO21X1_RVT U47 ( .A1(n86), .A2(n78), .A3(n6), .Y(n83) );
  INVX1_RVT U48 ( .A(n42), .Y(n6) );
  NAND2X0_RVT U49 ( .A1(n81), .A2(n77), .Y(n42) );
  OA22X1_RVT U50 ( .A1(n39), .A2(n24), .A3(n28), .A4(n3), .Y(n29) );
  NAND2X0_RVT U51 ( .A1(n79), .A2(n82), .Y(n71) );
  NAND2X0_RVT U52 ( .A1(n86), .A2(n85), .Y(n72) );
  NAND2X0_RVT U53 ( .A1(n80), .A2(n85), .Y(n43) );
  OAI22X1_RVT U54 ( .A1(n37), .A2(n24), .A3(n28), .A4(n25), .Y(n36) );
  NAND2X0_RVT U55 ( .A1(n82), .A2(n85), .Y(n63) );
  NAND2X0_RVT U56 ( .A1(n81), .A2(n86), .Y(n53) );
  AND2X1_RVT U57 ( .A1(n10), .A2(n12), .Y(n81) );
  NAND2X0_RVT U58 ( .A1(n77), .A2(n85), .Y(n39) );
  AND2X1_RVT U59 ( .A1(n86), .A2(n79), .Y(n62) );
  NAND2X0_RVT U60 ( .A1(n77), .A2(n78), .Y(n52) );
  NAND2X0_RVT U61 ( .A1(n78), .A2(n80), .Y(n37) );
  NAND2X0_RVT U62 ( .A1(n77), .A2(n79), .Y(n69) );
  NAND2X0_RVT U63 ( .A1(n81), .A2(n80), .Y(n54) );
  NAND2X0_RVT U64 ( .A1(n18), .A2(n19), .Y(n16) );
  NAND2X0_RVT U65 ( .A1(stage1_input[0]), .A2(n18), .Y(n26) );
  INVX1_RVT U66 ( .A(stage1_input[2]), .Y(n14) );
  AND2X1_RVT U67 ( .A1(stage1_input[2]), .A2(n13), .Y(n80) );
  AND2X1_RVT U68 ( .A1(stage1_input[3]), .A2(stage1_input[2]), .Y(n77) );
  AND2X1_RVT U69 ( .A1(stage1_input[3]), .A2(n14), .Y(n86) );
  INVX1_RVT U70 ( .A(stage1_input[4]), .Y(n12) );
  INVX1_RVT U71 ( .A(stage1_input[3]), .Y(n13) );
  INVX1_RVT U72 ( .A(stage1_input[5]), .Y(n10) );
  AND2X1_RVT U73 ( .A1(stage1_input[4]), .A2(n10), .Y(n79) );
  AND2X1_RVT U74 ( .A1(stage1_input[5]), .A2(n12), .Y(n78) );
  AND2X1_RVT U75 ( .A1(stage1_input[5]), .A2(stage1_input[4]), .Y(n85) );
  NAND4X0_RVT U76 ( .A1(n20), .A2(n56), .A3(n31), .A4(n64), .Y(
        stage1_output[0]) );
  NAND4X0_RVT U77 ( .A1(n21), .A2(n30), .A3(n31), .A4(n32), .Y(
        stage1_output[2]) );
  AOI221X1_RVT U78 ( .A1(n90), .A2(n34), .A3(n17), .A4(n35), .A5(n36), .Y(n32)
         );
  NAND4X0_RVT U79 ( .A1(n20), .A2(n21), .A3(n22), .A4(n23), .Y(
        stage1_output[3]) );
  OA221X1_RVT U80 ( .A1(n9), .A2(n24), .A3(n25), .A4(n26), .A5(n27), .Y(n23)
         );
  NAND4X0_RVT U81 ( .A1(n22), .A2(n45), .A3(n46), .A4(n47), .Y(
        stage1_output[1]) );
  NAND2X0_RVT U82 ( .A1(n15), .A2(n41), .Y(n45) );
  NAND2X0_RVT U83 ( .A1(n5), .A2(n38), .Y(n49) );
  NAND2X0_RVT U84 ( .A1(n5), .A2(n70), .Y(n75) );
  OA21X1_RVT U85 ( .A1(n5), .A2(n28), .A3(n29), .Y(n27) );
  INVX0_RVT U86 ( .A(n83), .Y(n5) );
  INVX0_RVT U87 ( .A(n28), .Y(n33) );
  NAND2X0_RVT U88 ( .A1(stage1_input[1]), .A2(n19), .Y(n28) );
  INVX0_RVT U89 ( .A(stage1_input[0]), .Y(n19) );
  AOI221X1_RVT U90 ( .A1(n62), .A2(n33), .A3(n7), .A4(n17), .A5(n84), .Y(n46)
         );
  AOI222X1_RVT U91 ( .A1(n89), .A2(n58), .A3(n59), .A4(n44), .A5(n33), .A6(n60), .Y(n57) );
  AO22X1_RVT U92 ( .A1(n33), .A2(n44), .A3(n17), .A4(n68), .Y(n67) );
  AOI222X1_RVT U93 ( .A1(n33), .A2(n11), .A3(n15), .A4(n61), .A5(n90), .A6(n62), .Y(n30) );
  AOI222X1_RVT U94 ( .A1(n33), .A2(n58), .A3(n15), .A4(n75), .A5(n17), .A6(n76), .Y(n74) );
  AOI22X1_RVT U95 ( .A1(n7), .A2(n15), .A3(n89), .A4(n44), .Y(n21) );
  AOI221X1_RVT U96 ( .A1(n89), .A2(n65), .A3(n15), .A4(n66), .A5(n67), .Y(n64)
         );
endmodule


module s7 ( stage1_input, stage1_output );
  input [5:0] stage1_input;
  output [3:0] stage1_output;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84;

  NAND2X0_RVT U3 ( .A1(n25), .A2(n57), .Y(n49) );
  NAND2X0_RVT U4 ( .A1(n43), .A2(n23), .Y(n51) );
  AO22X1_RVT U5 ( .A1(n9), .A2(n53), .A3(n7), .A4(n54), .Y(n52) );
  NAND2X0_RVT U6 ( .A1(n26), .A2(n42), .Y(n54) );
  NAND2X0_RVT U7 ( .A1(n27), .A2(n26), .Y(n17) );
  NAND3X0_RVT U8 ( .A1(n24), .A2(n25), .A3(n26), .Y(n19) );
  AND4X1_RVT U9 ( .A1(n69), .A2(n70), .A3(n71), .A4(n62), .Y(n68) );
  AO21X1_RVT U10 ( .A1(n29), .A2(n42), .A3(n44), .Y(n70) );
  AO21X1_RVT U11 ( .A1(n63), .A2(n57), .A3(n84), .Y(n69) );
  AO21X1_RVT U12 ( .A1(n26), .A2(n21), .A3(n82), .Y(n71) );
  AO21X1_RVT U13 ( .A1(n43), .A2(n26), .A3(n44), .Y(n36) );
  AND4X1_RVT U14 ( .A1(n35), .A2(n36), .A3(n37), .A4(n38), .Y(n34) );
  NAND3X0_RVT U15 ( .A1(n39), .A2(n40), .A3(n10), .Y(n38) );
  AO21X1_RVT U16 ( .A1(n41), .A2(n42), .A3(n82), .Y(n37) );
  AND2X1_RVT U17 ( .A1(n63), .A2(n64), .Y(n43) );
  AND2X1_RVT U18 ( .A1(n23), .A2(n65), .Y(n41) );
  OA222X1_RVT U19 ( .A1(n59), .A2(n44), .A3(n66), .A4(n6), .A5(n46), .A6(n83), 
        .Y(n32) );
  AND2X1_RVT U20 ( .A1(n29), .A2(n24), .Y(n66) );
  AND2X1_RVT U21 ( .A1(n1), .A2(n58), .Y(n27) );
  INVX1_RVT U22 ( .A(n45), .Y(n1) );
  NAND2X0_RVT U23 ( .A1(n56), .A2(n57), .Y(n45) );
  NAND3X0_RVT U24 ( .A1(n39), .A2(n40), .A3(n9), .Y(n62) );
  NAND2X0_RVT U25 ( .A1(n39), .A2(n40), .Y(n81) );
  NAND2X0_RVT U26 ( .A1(n56), .A2(n21), .Y(n53) );
  AND2X1_RVT U27 ( .A1(n2), .A2(n3), .Y(n40) );
  NAND2X0_RVT U28 ( .A1(n74), .A2(n40), .Y(n26) );
  AND2X1_RVT U29 ( .A1(n25), .A2(n65), .Y(n61) );
  NAND2X0_RVT U30 ( .A1(n77), .A2(n40), .Y(n63) );
  AND2X1_RVT U31 ( .A1(n4), .A2(n5), .Y(n39) );
  NAND2X0_RVT U32 ( .A1(n76), .A2(n39), .Y(n23) );
  NAND2X0_RVT U33 ( .A1(n73), .A2(n39), .Y(n65) );
  OR2X1_RVT U34 ( .A1(n56), .A2(n8), .Y(n78) );
  AO21X1_RVT U35 ( .A1(n25), .A2(n64), .A3(n6), .Y(n80) );
  AO21X1_RVT U36 ( .A1(n63), .A2(n59), .A3(n55), .Y(n79) );
  NAND2X0_RVT U37 ( .A1(n75), .A2(n39), .Y(n59) );
  OA222X1_RVT U38 ( .A1(n46), .A2(n6), .A3(n59), .A4(n8), .A5(n24), .A6(n55), 
        .Y(n14) );
  NAND2X0_RVT U39 ( .A1(n77), .A2(n76), .Y(n56) );
  NAND2X0_RVT U40 ( .A1(n72), .A2(n40), .Y(n46) );
  NAND2X0_RVT U41 ( .A1(n75), .A2(n74), .Y(n57) );
  NAND2X0_RVT U42 ( .A1(n76), .A2(n72), .Y(n25) );
  NAND2X0_RVT U43 ( .A1(n72), .A2(n73), .Y(n21) );
  NAND2X0_RVT U44 ( .A1(n75), .A2(n72), .Y(n42) );
  NAND2X0_RVT U45 ( .A1(n77), .A2(n73), .Y(n58) );
  NAND2X0_RVT U46 ( .A1(n74), .A2(n73), .Y(n64) );
  NAND2X0_RVT U47 ( .A1(n74), .A2(n76), .Y(n29) );
  NAND2X0_RVT U48 ( .A1(n75), .A2(n77), .Y(n24) );
  INVX1_RVT U49 ( .A(stage1_input[5]), .Y(n2) );
  INVX1_RVT U50 ( .A(stage1_input[4]), .Y(n3) );
  INVX1_RVT U51 ( .A(stage1_input[3]), .Y(n4) );
  INVX1_RVT U52 ( .A(stage1_input[2]), .Y(n5) );
  AND2X1_RVT U53 ( .A1(stage1_input[4]), .A2(n2), .Y(n76) );
  AND2X1_RVT U54 ( .A1(stage1_input[2]), .A2(n4), .Y(n77) );
  AND2X1_RVT U55 ( .A1(stage1_input[2]), .A2(stage1_input[3]), .Y(n74) );
  AND2X1_RVT U56 ( .A1(stage1_input[4]), .A2(stage1_input[5]), .Y(n75) );
  AND2X1_RVT U57 ( .A1(stage1_input[3]), .A2(n5), .Y(n72) );
  AND2X1_RVT U58 ( .A1(stage1_input[5]), .A2(n3), .Y(n73) );
  NAND4X0_RVT U59 ( .A1(n32), .A2(n13), .A3(n47), .A4(n48), .Y(
        stage1_output[1]) );
  OA22X1_RVT U60 ( .A1(n41), .A2(n84), .A3(n83), .A4(n58), .Y(n47) );
  NAND4X0_RVT U61 ( .A1(n13), .A2(n14), .A3(n15), .A4(n16), .Y(
        stage1_output[3]) );
  OA21X1_RVT U62 ( .A1(n84), .A2(n29), .A3(n30), .Y(n15) );
  OA22X1_RVT U63 ( .A1(n6), .A2(n41), .A3(n27), .A4(n83), .Y(n67) );
  OA22X1_RVT U64 ( .A1(n6), .A2(n21), .A3(n84), .A4(n46), .Y(n33) );
  NBUFFX2_RVT U65 ( .A(n8), .Y(n82) );
  NBUFFX2_RVT U66 ( .A(n22), .Y(n83) );
  NBUFFX2_RVT U67 ( .A(n28), .Y(n84) );
  OA22X1_RVT U68 ( .A1(n82), .A2(n58), .A3(n84), .A4(n81), .Y(n30) );
  OA221X1_RVT U69 ( .A1(n84), .A2(n42), .A3(n83), .A4(n59), .A5(n60), .Y(n13)
         );
  INVX0_RVT U70 ( .A(n55), .Y(n7) );
  NAND2X0_RVT U71 ( .A1(n55), .A2(n22), .Y(n18) );
  NAND2X0_RVT U72 ( .A1(n7), .A2(n45), .Y(n35) );
  INVX0_RVT U73 ( .A(n18), .Y(n6) );
  AOI221X1_RVT U74 ( .A1(n17), .A2(n18), .A3(n9), .A4(n19), .A5(n20), .Y(n16)
         );
  INVX0_RVT U75 ( .A(n83), .Y(n10) );
  INVX0_RVT U76 ( .A(n44), .Y(n9) );
  INVX0_RVT U77 ( .A(stage1_input[0]), .Y(n12) );
  AND4X1_RVT U78 ( .A1(n30), .A2(n78), .A3(n79), .A4(n80), .Y(n31) );
  NAND4X0_RVT U79 ( .A1(n31), .A2(n14), .A3(n67), .A4(n68), .Y(
        stage1_output[0]) );
  NAND2X0_RVT U80 ( .A1(stage1_input[0]), .A2(stage1_input[1]), .Y(n55) );
  AOI221X1_RVT U81 ( .A1(n49), .A2(n50), .A3(n51), .A4(n18), .A5(n52), .Y(n48)
         );
  NAND2X0_RVT U82 ( .A1(stage1_input[1]), .A2(n12), .Y(n44) );
  NAND4X0_RVT U83 ( .A1(n31), .A2(n32), .A3(n33), .A4(n34), .Y(
        stage1_output[2]) );
  INVX0_RVT U84 ( .A(n50), .Y(n8) );
  NAND2X0_RVT U85 ( .A1(n28), .A2(n44), .Y(n50) );
  INVX0_RVT U86 ( .A(stage1_input[1]), .Y(n11) );
  OAI22X1_RVT U87 ( .A1(n21), .A2(n83), .A3(n23), .A4(n82), .Y(n20) );
  OA221X1_RVT U88 ( .A1(n55), .A2(n61), .A3(n43), .A4(n8), .A5(n62), .Y(n60)
         );
  NAND2X0_RVT U89 ( .A1(n11), .A2(n12), .Y(n22) );
  NAND2X0_RVT U90 ( .A1(stage1_input[0]), .A2(n11), .Y(n28) );
endmodule


module s8 ( stage1_input, stage1_output );
  input [5:0] stage1_input;
  output [3:0] stage1_output;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89;

  AO21X1_RVT U3 ( .A1(n25), .A2(n26), .A3(n88), .Y(n16) );
  AO21X1_RVT U4 ( .A1(n22), .A2(n23), .A3(n24), .Y(n17) );
  AO21X1_RVT U5 ( .A1(n61), .A2(n64), .A3(n88), .Y(n75) );
  OR2X1_RVT U6 ( .A1(n26), .A2(n89), .Y(n13) );
  NAND3X0_RVT U7 ( .A1(n26), .A2(n64), .A3(n39), .Y(n51) );
  AND2X1_RVT U8 ( .A1(stage1_input[4]), .A2(n2), .Y(n65) );
  AND2X1_RVT U9 ( .A1(stage1_input[5]), .A2(stage1_input[4]), .Y(n83) );
  AOI221X1_RVT U10 ( .A1(n50), .A2(n45), .A3(n6), .A4(n51), .A5(n52), .Y(n49)
         );
  NAND4X0_RVT U11 ( .A1(n12), .A2(n13), .A3(n14), .A4(n15), .Y(
        stage1_output[3]) );
  OA222X1_RVT U12 ( .A1(n87), .A2(n20), .A3(n89), .A4(n22), .A5(n88), .A6(n46), 
        .Y(n35) );
  INVX0_RVT U13 ( .A(stage1_input[4]), .Y(n3) );
  INVX0_RVT U14 ( .A(stage1_input[5]), .Y(n2) );
  INVX1_RVT U15 ( .A(n45), .Y(n8) );
  NAND2X0_RVT U16 ( .A1(n89), .A2(n43), .Y(n45) );
  NAND2X0_RVT U17 ( .A1(n72), .A2(n64), .Y(n71) );
  OR2X1_RVT U18 ( .A1(n64), .A2(n86), .Y(n19) );
  AND3X1_RVT U19 ( .A1(n22), .A2(n26), .A3(n82), .Y(n61) );
  AND3X1_RVT U20 ( .A1(n23), .A2(n46), .A3(n61), .Y(n57) );
  AOI22X1_RVT U21 ( .A1(n10), .A2(n62), .A3(n7), .A4(n63), .Y(n54) );
  NAND2X0_RVT U22 ( .A1(n37), .A2(n39), .Y(n63) );
  OAI21X1_RVT U23 ( .A1(n21), .A2(n38), .A3(n12), .Y(n52) );
  NAND2X0_RVT U24 ( .A1(n80), .A2(n84), .Y(n64) );
  NAND2X0_RVT U25 ( .A1(n64), .A2(n29), .Y(n62) );
  AND4X1_RVT U26 ( .A1(n16), .A2(n17), .A3(n18), .A4(n19), .Y(n15) );
  AO21X1_RVT U27 ( .A1(n20), .A2(n21), .A3(n8), .Y(n18) );
  OA221X1_RVT U28 ( .A1(n46), .A2(n28), .A3(n86), .A4(n41), .A5(n69), .Y(n68)
         );
  INVX1_RVT U29 ( .A(n53), .Y(n1) );
  NAND2X0_RVT U30 ( .A1(n22), .A2(n37), .Y(n70) );
  AND2X1_RVT U31 ( .A1(n21), .A2(n23), .Y(n72) );
  AND4X1_RVT U32 ( .A1(n75), .A2(n19), .A3(n76), .A4(n77), .Y(n33) );
  AO21X1_RVT U33 ( .A1(n72), .A2(n59), .A3(n87), .Y(n76) );
  OA221X1_RVT U34 ( .A1(n25), .A2(n89), .A3(n78), .A4(n86), .A5(n47), .Y(n77)
         );
  OA22X1_RVT U35 ( .A1(n24), .A2(n59), .A3(n60), .A4(n87), .Y(n58) );
  OA22X1_RVT U36 ( .A1(n46), .A2(n89), .A3(n37), .A4(n88), .Y(n47) );
  OA221X1_RVT U37 ( .A1(n8), .A2(n37), .A3(n38), .A4(n39), .A5(n40), .Y(n36)
         );
  OA221X1_RVT U38 ( .A1(n24), .A2(n41), .A3(n42), .A4(n43), .A5(n44), .Y(n40)
         );
  AND2X1_RVT U39 ( .A1(n21), .A2(n26), .Y(n42) );
  AND2X1_RVT U40 ( .A1(n56), .A2(n29), .Y(n41) );
  AND2X1_RVT U41 ( .A1(n20), .A2(n39), .Y(n25) );
  INVX1_RVT U42 ( .A(n31), .Y(n6) );
  NAND2X0_RVT U43 ( .A1(n56), .A2(n60), .Y(n50) );
  OA22X1_RVT U44 ( .A1(n59), .A2(n43), .A3(n89), .A4(n30), .Y(n34) );
  OA22X1_RVT U45 ( .A1(n59), .A2(n88), .A3(n82), .A4(n24), .Y(n48) );
  AND2X1_RVT U46 ( .A1(n87), .A2(n86), .Y(n28) );
  NAND2X0_RVT U47 ( .A1(n73), .A2(n79), .Y(n26) );
  NAND2X0_RVT U48 ( .A1(n65), .A2(n84), .Y(n22) );
  AND2X1_RVT U49 ( .A1(n2), .A2(n3), .Y(n80) );
  NAND2X0_RVT U50 ( .A1(n66), .A2(n83), .Y(n82) );
  AND2X1_RVT U51 ( .A1(n4), .A2(n5), .Y(n84) );
  NAND2X0_RVT U52 ( .A1(n65), .A2(n79), .Y(n21) );
  NAND2X0_RVT U53 ( .A1(n66), .A2(n80), .Y(n59) );
  NAND2X0_RVT U54 ( .A1(n74), .A2(n65), .Y(n56) );
  NAND2X0_RVT U55 ( .A1(n79), .A2(n80), .Y(n46) );
  NAND2X0_RVT U56 ( .A1(n73), .A2(n66), .Y(n29) );
  NAND2X0_RVT U57 ( .A1(n74), .A2(n73), .Y(n37) );
  NAND2X0_RVT U58 ( .A1(n73), .A2(n84), .Y(n60) );
  NAND2X0_RVT U59 ( .A1(n83), .A2(n84), .Y(n39) );
  AND4X1_RVT U60 ( .A1(n81), .A2(n82), .A3(n60), .A4(n30), .Y(n78) );
  NAND2X0_RVT U61 ( .A1(n66), .A2(n65), .Y(n81) );
  NAND2X0_RVT U62 ( .A1(n74), .A2(n83), .Y(n23) );
  NAND2X0_RVT U63 ( .A1(n79), .A2(n83), .Y(n30) );
  NAND2X0_RVT U64 ( .A1(n74), .A2(n80), .Y(n20) );
  OR2X1_RVT U65 ( .A1(n27), .A2(n30), .Y(n53) );
  NAND3X0_RVT U66 ( .A1(n65), .A2(n10), .A3(n66), .Y(n44) );
  AND2X1_RVT U67 ( .A1(n32), .A2(n31), .Y(n24) );
  AND2X1_RVT U68 ( .A1(stage1_input[5]), .A2(n3), .Y(n73) );
  AND2X1_RVT U69 ( .A1(stage1_input[3]), .A2(stage1_input[2]), .Y(n79) );
  INVX1_RVT U70 ( .A(stage1_input[2]), .Y(n5) );
  AND2X1_RVT U71 ( .A1(stage1_input[3]), .A2(n5), .Y(n66) );
  INVX1_RVT U72 ( .A(stage1_input[3]), .Y(n4) );
  AND2X1_RVT U73 ( .A1(stage1_input[2]), .A2(n4), .Y(n74) );
  INVX1_RVT U74 ( .A(stage1_input[0]), .Y(n11) );
  OA22X1_RVT U75 ( .A1(n28), .A2(n29), .A3(n30), .A4(n87), .Y(n14) );
  NAND4X0_RVT U76 ( .A1(n48), .A2(n33), .A3(n67), .A4(n68), .Y(
        stage1_output[0]) );
  OA22X1_RVT U77 ( .A1(n38), .A2(n60), .A3(n88), .A4(n56), .Y(n67) );
  NAND4X0_RVT U78 ( .A1(n33), .A2(n34), .A3(n35), .A4(n36), .Y(
        stage1_output[2]) );
  INVX0_RVT U79 ( .A(n43), .Y(n85) );
  INVX0_RVT U80 ( .A(n85), .Y(n86) );
  NBUFFX2_RVT U81 ( .A(n31), .Y(n87) );
  AOI221X1_RVT U82 ( .A1(n6), .A2(n70), .A3(n7), .A4(n71), .A5(n1), .Y(n69) );
  INVX0_RVT U83 ( .A(n10), .Y(n88) );
  INVX0_RVT U84 ( .A(n27), .Y(n10) );
  INVX0_RVT U85 ( .A(n7), .Y(n89) );
  INVX0_RVT U86 ( .A(n32), .Y(n7) );
  NAND2X0_RVT U87 ( .A1(n9), .A2(n11), .Y(n43) );
  NAND2X0_RVT U88 ( .A1(stage1_input[0]), .A2(n9), .Y(n32) );
  INVX0_RVT U89 ( .A(stage1_input[1]), .Y(n9) );
  NOR2X0_RVT U90 ( .A1(n6), .A2(n10), .Y(n38) );
  NAND2X0_RVT U91 ( .A1(stage1_input[1]), .A2(n11), .Y(n31) );
  NAND2X0_RVT U92 ( .A1(stage1_input[1]), .A2(stage1_input[0]), .Y(n27) );
  NAND4X0_RVT U93 ( .A1(n34), .A2(n47), .A3(n48), .A4(n49), .Y(
        stage1_output[1]) );
  AND4X1_RVT U94 ( .A1(n44), .A2(n53), .A3(n54), .A4(n55), .Y(n12) );
  OA221X1_RVT U95 ( .A1(n38), .A2(n56), .A3(n57), .A4(n43), .A5(n58), .Y(n55)
         );
endmodule


module des ( clk, reset, load_i, decrypt_i, data_i, key_i, data_o, ready_o );
  input [63:0] data_i;
  input [63:0] key_i;
  output [63:0] data_o;
  input clk, reset, load_i, decrypt_i;
  output ready_o;
  wire   key_i_55, key_i_54, key_i_53, key_i_52, key_i_51, key_i_50, key_i_49,
         key_i_47, key_i_46, key_i_45, key_i_44, key_i_43, key_i_42, key_i_41,
         key_i_39, key_i_38, key_i_37, key_i_36, key_i_35, key_i_34, key_i_33,
         key_i_31, key_i_30, key_i_29, key_i_28, key_i_27, key_i_26, key_i_25,
         key_i_23, key_i_22, key_i_21, key_i_20, key_i_19, key_i_18, key_i_17,
         key_i_15, key_i_14, key_i_13, key_i_12, key_i_11, key_i_10, key_i_9,
         key_i_7, key_i_6, key_i_5, key_i_4, key_i_3, key_i_2, key_i_1,
         data_ready, next_ready_o, n1, n2, n3, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56;
  wire   [31:0] stage1_R_i;
  wire   [31:0] stage1_L_i;
  wire   [55:0] stage1_round_key_i;
  wire   [31:0] stage1_R_o;
  wire   [31:0] stage1_L_o;
  wire   [55:0] stage1_round_key_o;
  wire   [5:0] s1_stag1_i;
  wire   [5:0] s2_stag1_i;
  wire   [5:0] s3_stag1_i;
  wire   [5:0] s4_stag1_i;
  wire   [5:0] s5_stag1_i;
  wire   [5:0] s6_stag1_i;
  wire   [5:0] s7_stag1_i;
  wire   [5:0] s8_stag1_i;
  wire   [3:0] s1_stag1_o;
  wire   [3:0] s2_stag1_o;
  wire   [3:0] s3_stag1_o;
  wire   [3:0] s4_stag1_o;
  wire   [3:0] s5_stag1_o;
  wire   [3:0] s6_stag1_o;
  wire   [3:0] s7_stag1_o;
  wire   [3:0] s8_stag1_o;
  wire   [3:0] stage1_iter;
  assign key_i_55 = key_i[55];
  assign key_i_54 = key_i[54];
  assign key_i_53 = key_i[53];
  assign key_i_52 = key_i[52];
  assign key_i_51 = key_i[51];
  assign key_i_50 = key_i[50];
  assign key_i_49 = key_i[49];
  assign key_i_47 = key_i[47];
  assign key_i_46 = key_i[46];
  assign key_i_45 = key_i[45];
  assign key_i_44 = key_i[44];
  assign key_i_43 = key_i[43];
  assign key_i_42 = key_i[42];
  assign key_i_41 = key_i[41];
  assign key_i_39 = key_i[39];
  assign key_i_38 = key_i[38];
  assign key_i_37 = key_i[37];
  assign key_i_36 = key_i[36];
  assign key_i_35 = key_i[35];
  assign key_i_34 = key_i[34];
  assign key_i_33 = key_i[33];
  assign key_i_31 = key_i[31];
  assign key_i_30 = key_i[30];
  assign key_i_29 = key_i[29];
  assign key_i_28 = key_i[28];
  assign key_i_27 = key_i[27];
  assign key_i_26 = key_i[26];
  assign key_i_25 = key_i[25];
  assign key_i_23 = key_i[23];
  assign key_i_22 = key_i[22];
  assign key_i_21 = key_i[21];
  assign key_i_20 = key_i[20];
  assign key_i_19 = key_i[19];
  assign key_i_18 = key_i[18];
  assign key_i_17 = key_i[17];
  assign key_i_15 = key_i[15];
  assign key_i_14 = key_i[14];
  assign key_i_13 = key_i[13];
  assign key_i_12 = key_i[12];
  assign key_i_11 = key_i[11];
  assign key_i_10 = key_i[10];
  assign key_i_9 = key_i[9];
  assign key_i_7 = key_i[7];
  assign key_i_6 = key_i[6];
  assign key_i_5 = key_i[5];
  assign key_i_4 = key_i[4];
  assign key_i_3 = key_i[3];
  assign key_i_2 = key_i[2];
  assign key_i_1 = key_i[1];

  desround rd1 ( .clk(clk), .reset(n52), .iteration_i({stage1_iter[3:2], n31, 
        stage1_iter[0]}), .decrypt_i(decrypt_i), .R_i(stage1_R_i), .L_i(
        stage1_L_i), .Key_i(stage1_round_key_i), .R_o(stage1_R_o), .L_o(
        stage1_L_o), .Key_o(stage1_round_key_o), .s1_o(s1_stag1_i), .s2_o(
        s2_stag1_i), .s3_o(s3_stag1_i), .s4_o(s4_stag1_i), .s5_o(s5_stag1_i), 
        .s6_o(s6_stag1_i), .s7_o(s7_stag1_i), .s8_o(s8_stag1_i), .s1_i(
        s1_stag1_o), .s2_i(s2_stag1_o), .s3_i(s3_stag1_o), .s4_i(s4_stag1_o), 
        .s5_i(s5_stag1_o), .s6_i(s6_stag1_o), .s7_i(s7_stag1_o), .s8_i(
        s8_stag1_o) );
  s1 sbox1 ( .stage1_input(s1_stag1_i), .stage1_output(s1_stag1_o) );
  s2 sbox2 ( .stage1_input(s2_stag1_i), .stage1_output(s2_stag1_o) );
  s3 sbox3 ( .stage1_input(s3_stag1_i), .stage1_output(s3_stag1_o) );
  s4 sbox4 ( .stage1_input(s4_stag1_i), .stage1_output(s4_stag1_o) );
  s5 sbox5 ( .stage1_input(s5_stag1_i), .stage1_output(s5_stag1_o) );
  s6 sbox6 ( .stage1_input(s6_stag1_i), .stage1_output(s6_stag1_o) );
  s7 sbox7 ( .stage1_input(s7_stag1_i), .stage1_output(s7_stag1_o) );
  s8 sbox8 ( .stage1_input(s8_stag1_i), .stage1_output(s8_stag1_o) );
  DFFARX1_RVT \stage1_iter_reg[0]  ( .D(n19), .CLK(clk), .RSTB(n51), .Q(
        stage1_iter[0]), .QN(n5) );
  DFFARX1_RVT \stage1_iter_reg[2]  ( .D(n17), .CLK(clk), .RSTB(reset), .Q(
        stage1_iter[2]), .QN(n3) );
  DFFARX1_RVT \stage1_iter_reg[3]  ( .D(n16), .CLK(clk), .RSTB(reset), .Q(
        stage1_iter[3]) );
  DFFASX1_RVT data_ready_reg ( .D(n20), .CLK(clk), .SETB(n51), .Q(data_ready)
         );
  DFFARX1_RVT ready_o_reg ( .D(next_ready_o), .CLK(clk), .RSTB(reset), .Q(
        ready_o) );
  DFFARX1_RVT \data_o_reg[63]  ( .D(stage1_L_o[24]), .CLK(clk), .RSTB(n55), 
        .Q(data_o[63]) );
  DFFARX1_RVT \data_o_reg[62]  ( .D(stage1_R_o[24]), .CLK(clk), .RSTB(reset), 
        .Q(data_o[62]) );
  DFFARX1_RVT \data_o_reg[61]  ( .D(stage1_L_o[16]), .CLK(clk), .RSTB(n55), 
        .Q(data_o[61]) );
  DFFARX1_RVT \data_o_reg[60]  ( .D(stage1_R_o[16]), .CLK(clk), .RSTB(n55), 
        .Q(data_o[60]) );
  DFFARX1_RVT \data_o_reg[59]  ( .D(stage1_L_o[8]), .CLK(clk), .RSTB(n55), .Q(
        data_o[59]) );
  DFFARX1_RVT \data_o_reg[58]  ( .D(stage1_R_o[8]), .CLK(clk), .RSTB(n55), .Q(
        data_o[58]) );
  DFFARX1_RVT \data_o_reg[57]  ( .D(stage1_L_o[0]), .CLK(clk), .RSTB(n55), .Q(
        data_o[57]) );
  DFFARX1_RVT \data_o_reg[56]  ( .D(stage1_R_o[0]), .CLK(clk), .RSTB(n55), .Q(
        data_o[56]) );
  DFFARX1_RVT \data_o_reg[55]  ( .D(stage1_L_o[25]), .CLK(clk), .RSTB(n55), 
        .Q(data_o[55]) );
  DFFARX1_RVT \data_o_reg[54]  ( .D(stage1_R_o[25]), .CLK(clk), .RSTB(n55), 
        .Q(data_o[54]) );
  DFFARX1_RVT \data_o_reg[53]  ( .D(stage1_L_o[17]), .CLK(clk), .RSTB(n55), 
        .Q(data_o[53]) );
  DFFARX1_RVT \data_o_reg[52]  ( .D(stage1_R_o[17]), .CLK(clk), .RSTB(n55), 
        .Q(data_o[52]) );
  DFFARX1_RVT \data_o_reg[51]  ( .D(stage1_L_o[9]), .CLK(clk), .RSTB(n55), .Q(
        data_o[51]) );
  DFFARX1_RVT \data_o_reg[50]  ( .D(stage1_R_o[9]), .CLK(clk), .RSTB(n55), .Q(
        data_o[50]) );
  DFFARX1_RVT \data_o_reg[49]  ( .D(stage1_L_o[1]), .CLK(clk), .RSTB(n54), .Q(
        data_o[49]) );
  DFFARX1_RVT \data_o_reg[48]  ( .D(stage1_R_o[1]), .CLK(clk), .RSTB(n54), .Q(
        data_o[48]) );
  DFFARX1_RVT \data_o_reg[47]  ( .D(stage1_L_o[26]), .CLK(clk), .RSTB(n54), 
        .Q(data_o[47]) );
  DFFARX1_RVT \data_o_reg[46]  ( .D(stage1_R_o[26]), .CLK(clk), .RSTB(n54), 
        .Q(data_o[46]) );
  DFFARX1_RVT \data_o_reg[45]  ( .D(stage1_L_o[18]), .CLK(clk), .RSTB(n54), 
        .Q(data_o[45]) );
  DFFARX1_RVT \data_o_reg[44]  ( .D(stage1_R_o[18]), .CLK(clk), .RSTB(n54), 
        .Q(data_o[44]) );
  DFFARX1_RVT \data_o_reg[43]  ( .D(stage1_L_o[10]), .CLK(clk), .RSTB(n54), 
        .Q(data_o[43]) );
  DFFARX1_RVT \data_o_reg[42]  ( .D(stage1_R_o[10]), .CLK(clk), .RSTB(n54), 
        .Q(data_o[42]) );
  DFFARX1_RVT \data_o_reg[41]  ( .D(stage1_L_o[2]), .CLK(clk), .RSTB(n54), .Q(
        data_o[41]) );
  DFFARX1_RVT \data_o_reg[40]  ( .D(stage1_R_o[2]), .CLK(clk), .RSTB(n54), .Q(
        data_o[40]) );
  DFFARX1_RVT \data_o_reg[39]  ( .D(stage1_L_o[27]), .CLK(clk), .RSTB(n54), 
        .Q(data_o[39]) );
  DFFARX1_RVT \data_o_reg[38]  ( .D(stage1_R_o[27]), .CLK(clk), .RSTB(n54), 
        .Q(data_o[38]) );
  DFFARX1_RVT \data_o_reg[37]  ( .D(stage1_L_o[19]), .CLK(clk), .RSTB(n54), 
        .Q(data_o[37]) );
  DFFARX1_RVT \data_o_reg[36]  ( .D(stage1_R_o[19]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[36]) );
  DFFARX1_RVT \data_o_reg[35]  ( .D(stage1_L_o[11]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[35]) );
  DFFARX1_RVT \data_o_reg[34]  ( .D(stage1_R_o[11]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[34]) );
  DFFARX1_RVT \data_o_reg[33]  ( .D(stage1_L_o[3]), .CLK(clk), .RSTB(n53), .Q(
        data_o[33]) );
  DFFARX1_RVT \data_o_reg[32]  ( .D(stage1_R_o[3]), .CLK(clk), .RSTB(n53), .Q(
        data_o[32]) );
  DFFARX1_RVT \data_o_reg[31]  ( .D(stage1_L_o[28]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[31]) );
  DFFARX1_RVT \data_o_reg[30]  ( .D(stage1_R_o[28]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[30]) );
  DFFARX1_RVT \data_o_reg[29]  ( .D(stage1_L_o[20]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[29]) );
  DFFARX1_RVT \data_o_reg[28]  ( .D(stage1_R_o[20]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[28]) );
  DFFARX1_RVT \data_o_reg[27]  ( .D(stage1_L_o[12]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[27]) );
  DFFARX1_RVT \data_o_reg[26]  ( .D(stage1_R_o[12]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[26]) );
  DFFARX1_RVT \data_o_reg[25]  ( .D(stage1_L_o[4]), .CLK(clk), .RSTB(n53), .Q(
        data_o[25]) );
  DFFARX1_RVT \data_o_reg[24]  ( .D(stage1_R_o[4]), .CLK(clk), .RSTB(n52), .Q(
        data_o[24]) );
  DFFARX1_RVT \data_o_reg[23]  ( .D(stage1_L_o[29]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[23]) );
  DFFARX1_RVT \data_o_reg[22]  ( .D(stage1_R_o[29]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[22]) );
  DFFARX1_RVT \data_o_reg[21]  ( .D(stage1_L_o[21]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[21]) );
  DFFARX1_RVT \data_o_reg[20]  ( .D(stage1_R_o[21]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[20]) );
  DFFARX1_RVT \data_o_reg[19]  ( .D(stage1_L_o[13]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[19]) );
  DFFARX1_RVT \data_o_reg[18]  ( .D(stage1_R_o[13]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[18]) );
  DFFARX1_RVT \data_o_reg[17]  ( .D(stage1_L_o[5]), .CLK(clk), .RSTB(n52), .Q(
        data_o[17]) );
  DFFARX1_RVT \data_o_reg[16]  ( .D(stage1_R_o[5]), .CLK(clk), .RSTB(n52), .Q(
        data_o[16]) );
  DFFARX1_RVT \data_o_reg[15]  ( .D(stage1_L_o[30]), .CLK(clk), .RSTB(n53), 
        .Q(data_o[15]) );
  DFFARX1_RVT \data_o_reg[14]  ( .D(stage1_R_o[30]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[14]) );
  DFFARX1_RVT \data_o_reg[13]  ( .D(stage1_L_o[22]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[13]) );
  DFFARX1_RVT \data_o_reg[12]  ( .D(stage1_R_o[22]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[12]) );
  DFFARX1_RVT \data_o_reg[11]  ( .D(stage1_L_o[14]), .CLK(clk), .RSTB(n52), 
        .Q(data_o[11]) );
  DFFARX1_RVT \data_o_reg[10]  ( .D(stage1_R_o[14]), .CLK(clk), .RSTB(n51), 
        .Q(data_o[10]) );
  DFFARX1_RVT \data_o_reg[9]  ( .D(stage1_L_o[6]), .CLK(clk), .RSTB(n51), .Q(
        data_o[9]) );
  DFFARX1_RVT \data_o_reg[8]  ( .D(stage1_R_o[6]), .CLK(clk), .RSTB(n51), .Q(
        data_o[8]) );
  DFFARX1_RVT \data_o_reg[7]  ( .D(stage1_L_o[31]), .CLK(clk), .RSTB(n51), .Q(
        data_o[7]) );
  DFFARX1_RVT \data_o_reg[6]  ( .D(stage1_R_o[31]), .CLK(clk), .RSTB(n51), .Q(
        data_o[6]) );
  DFFARX1_RVT \data_o_reg[5]  ( .D(stage1_L_o[23]), .CLK(clk), .RSTB(n51), .Q(
        data_o[5]) );
  DFFARX1_RVT \data_o_reg[4]  ( .D(stage1_R_o[23]), .CLK(clk), .RSTB(n51), .Q(
        data_o[4]) );
  DFFARX1_RVT \data_o_reg[3]  ( .D(stage1_L_o[15]), .CLK(clk), .RSTB(n51), .Q(
        data_o[3]) );
  DFFARX1_RVT \data_o_reg[2]  ( .D(stage1_R_o[15]), .CLK(clk), .RSTB(n51), .Q(
        data_o[2]) );
  DFFARX1_RVT \data_o_reg[1]  ( .D(stage1_L_o[7]), .CLK(clk), .RSTB(n51), .Q(
        data_o[1]) );
  DFFARX1_RVT \data_o_reg[0]  ( .D(stage1_R_o[7]), .CLK(clk), .RSTB(n51), .Q(
        data_o[0]) );
  NOR4X1_RVT U137 ( .A1(stage1_iter[0]), .A2(n21), .A3(stage1_iter[2]), .A4(
        stage1_iter[3]), .Y(n15) );
  DFFARX1_RVT \stage1_iter_reg[1]  ( .D(n18), .CLK(clk), .RSTB(reset), .Q(n21), 
        .QN(n30) );
  INVX1_RVT U141 ( .A(n25), .Y(n41) );
  INVX1_RVT U142 ( .A(n25), .Y(n22) );
  INVX1_RVT U143 ( .A(n25), .Y(n33) );
  INVX1_RVT U144 ( .A(n25), .Y(n35) );
  INVX1_RVT U145 ( .A(n25), .Y(n34) );
  AO22X1_RVT U146 ( .A1(stage1_round_key_o[32]), .A2(n29), .A3(key_i[61]), 
        .A4(n32), .Y(stage1_round_key_i[32]) );
  AO22X1_RVT U147 ( .A1(stage1_round_key_o[52]), .A2(n42), .A3(key_i_31), .A4(
        n33), .Y(stage1_round_key_i[52]) );
  AO22X1_RVT U148 ( .A1(stage1_round_key_o[42]), .A2(n43), .A3(key_i_46), .A4(
        n32), .Y(stage1_round_key_i[42]) );
  AO22X1_RVT U149 ( .A1(stage1_round_key_o[35]), .A2(n29), .A3(key_i_37), .A4(
        n33), .Y(stage1_round_key_i[35]) );
  AO22X1_RVT U150 ( .A1(stage1_round_key_o[31]), .A2(n29), .A3(key_i_4), .A4(
        n34), .Y(stage1_round_key_i[31]) );
  AO22X1_RVT U151 ( .A1(stage1_round_key_o[41]), .A2(n43), .A3(key_i_54), .A4(
        n32), .Y(stage1_round_key_i[41]) );
  AO22X1_RVT U152 ( .A1(stage1_round_key_o[2]), .A2(n29), .A3(key_i_44), .A4(
        n33), .Y(stage1_round_key_i[2]) );
  AO22X1_RVT U153 ( .A1(stage1_round_key_o[55]), .A2(n42), .A3(key_i_7), .A4(
        n35), .Y(stage1_round_key_i[55]) );
  AO22X1_RVT U154 ( .A1(stage1_round_key_o[21]), .A2(n45), .A3(key_i_49), .A4(
        n33), .Y(stage1_round_key_i[21]) );
  AO22X1_RVT U155 ( .A1(stage1_R_o[9]), .A2(n49), .A3(data_i[51]), .A4(n34), 
        .Y(stage1_R_i[9]) );
  AO22X1_RVT U156 ( .A1(stage1_round_key_o[25]), .A2(n45), .A3(key_i_17), .A4(
        n32), .Y(stage1_round_key_i[25]) );
  AO22X1_RVT U157 ( .A1(stage1_round_key_o[43]), .A2(n43), .A3(key_i_38), .A4(
        n35), .Y(stage1_round_key_i[43]) );
  AO22X1_RVT U158 ( .A1(stage1_round_key_o[24]), .A2(n45), .A3(key_i_25), .A4(
        n33), .Y(stage1_round_key_i[24]) );
  AO22X1_RVT U159 ( .A1(stage1_round_key_o[18]), .A2(n45), .A3(key_i_10), .A4(
        n34), .Y(stage1_round_key_i[18]) );
  AO22X1_RVT U160 ( .A1(stage1_round_key_o[3]), .A2(n43), .A3(key_i_36), .A4(
        n35), .Y(stage1_round_key_i[3]) );
  AO22X1_RVT U161 ( .A1(stage1_round_key_o[9]), .A2(n42), .A3(key_i_19), .A4(
        n34), .Y(stage1_round_key_i[9]) );
  AO22X1_RVT U162 ( .A1(stage1_round_key_o[17]), .A2(n45), .A3(key_i_18), .A4(
        n32), .Y(stage1_round_key_i[17]) );
  AO22X1_RVT U163 ( .A1(stage1_round_key_o[39]), .A2(n43), .A3(key_i_5), .A4(
        n34), .Y(stage1_round_key_i[39]) );
  AO22X1_RVT U164 ( .A1(stage1_round_key_o[19]), .A2(n45), .A3(key_i_2), .A4(
        n34), .Y(stage1_round_key_i[19]) );
  AO22X1_RVT U165 ( .A1(stage1_round_key_o[38]), .A2(n29), .A3(key_i_13), .A4(
        n35), .Y(stage1_round_key_i[38]) );
  AO22X1_RVT U166 ( .A1(stage1_round_key_o[10]), .A2(n28), .A3(key_i_11), .A4(
        n33), .Y(stage1_round_key_i[10]) );
  AO22X1_RVT U167 ( .A1(stage1_round_key_o[6]), .A2(n42), .A3(key_i_43), .A4(
        n35), .Y(stage1_round_key_i[6]) );
  AO22X1_RVT U168 ( .A1(stage1_round_key_o[5]), .A2(n42), .A3(key_i_51), .A4(
        n33), .Y(stage1_round_key_i[5]) );
  AO22X1_RVT U169 ( .A1(stage1_round_key_o[26]), .A2(n45), .A3(key_i_9), .A4(
        n32), .Y(stage1_round_key_i[26]) );
  AO22X1_RVT U170 ( .A1(stage1_round_key_o[20]), .A2(n45), .A3(key_i[57]), 
        .A4(n33), .Y(stage1_round_key_i[20]) );
  AO22X1_RVT U171 ( .A1(stage1_round_key_o[30]), .A2(n29), .A3(key_i_12), .A4(
        n34), .Y(stage1_round_key_i[30]) );
  AO22X1_RVT U172 ( .A1(stage1_round_key_o[1]), .A2(n45), .A3(key_i_52), .A4(
        n32), .Y(stage1_round_key_i[1]) );
  NAND4X0_RVT U173 ( .A1(stage1_iter[3]), .A2(stage1_iter[2]), .A3(n21), .A4(
        stage1_iter[0]), .Y(n9) );
  AO22X1_RVT U174 ( .A1(stage1_round_key_o[40]), .A2(n43), .A3(key_i[62]), 
        .A4(n8), .Y(stage1_round_key_i[40]) );
  AO22X1_RVT U175 ( .A1(stage1_round_key_o[12]), .A2(n44), .A3(key_i[58]), 
        .A4(n35), .Y(stage1_round_key_i[12]) );
  AO22X1_RVT U176 ( .A1(stage1_round_key_o[16]), .A2(n44), .A3(key_i_26), .A4(
        n35), .Y(stage1_round_key_i[16]) );
  AO22X1_RVT U177 ( .A1(stage1_round_key_o[11]), .A2(n44), .A3(key_i_3), .A4(
        n32), .Y(stage1_round_key_i[11]) );
  AO22X1_RVT U178 ( .A1(stage1_R_o[8]), .A2(n44), .A3(data_i[59]), .A4(n35), 
        .Y(stage1_R_i[8]) );
  AO22X1_RVT U179 ( .A1(stage1_R_o[7]), .A2(n44), .A3(data_i[1]), .A4(n32), 
        .Y(stage1_R_i[7]) );
  AO22X1_RVT U180 ( .A1(stage1_R_o[6]), .A2(n44), .A3(data_i[9]), .A4(n33), 
        .Y(stage1_R_i[6]) );
  AO21X1_RVT U181 ( .A1(n1), .A2(n5), .A3(n35), .Y(n19) );
  AO21X1_RVT U182 ( .A1(n31), .A2(stage1_iter[0]), .A3(n3), .Y(n13) );
  INVX1_RVT U183 ( .A(n25), .Y(n32) );
  AO22X1_RVT U184 ( .A1(stage1_round_key_o[44]), .A2(n43), .A3(key_i_30), .A4(
        n41), .Y(stage1_round_key_i[44]) );
  AO22X1_RVT U185 ( .A1(stage1_round_key_o[48]), .A2(n43), .A3(key_i[63]), 
        .A4(n41), .Y(stage1_round_key_i[48]) );
  AO22X1_RVT U186 ( .A1(stage1_round_key_o[34]), .A2(n28), .A3(key_i_45), .A4(
        n41), .Y(stage1_round_key_i[34]) );
  AO22X1_RVT U187 ( .A1(stage1_round_key_o[33]), .A2(n28), .A3(key_i_53), .A4(
        n41), .Y(stage1_round_key_i[33]) );
  AO22X1_RVT U188 ( .A1(stage1_round_key_o[50]), .A2(n42), .A3(key_i_47), .A4(
        n22), .Y(stage1_round_key_i[50]) );
  AO22X1_RVT U189 ( .A1(stage1_round_key_o[37]), .A2(n28), .A3(key_i_21), .A4(
        n41), .Y(stage1_round_key_i[37]) );
  AO22X1_RVT U190 ( .A1(stage1_round_key_o[53]), .A2(n42), .A3(key_i_23), .A4(
        n32), .Y(stage1_round_key_i[53]) );
  AO22X1_RVT U191 ( .A1(stage1_round_key_o[49]), .A2(n43), .A3(key_i_55), .A4(
        n41), .Y(stage1_round_key_i[49]) );
  AO22X1_RVT U192 ( .A1(stage1_round_key_o[8]), .A2(n42), .A3(key_i_27), .A4(
        n34), .Y(stage1_round_key_i[8]) );
  AO22X1_RVT U193 ( .A1(stage1_round_key_o[47]), .A2(n43), .A3(key_i_6), .A4(
        n41), .Y(stage1_round_key_i[47]) );
  AO22X1_RVT U194 ( .A1(stage1_round_key_o[7]), .A2(n42), .A3(key_i_35), .A4(
        n35), .Y(stage1_round_key_i[7]) );
  AO22X1_RVT U195 ( .A1(stage1_round_key_o[46]), .A2(n43), .A3(key_i_14), .A4(
        n41), .Y(stage1_round_key_i[46]) );
  AO22X1_RVT U196 ( .A1(stage1_round_key_o[36]), .A2(n28), .A3(key_i_29), .A4(
        n22), .Y(stage1_round_key_i[36]) );
  AO22X1_RVT U197 ( .A1(stage1_round_key_o[28]), .A2(n28), .A3(key_i_28), .A4(
        n22), .Y(stage1_round_key_i[28]) );
  AO22X1_RVT U198 ( .A1(stage1_round_key_o[51]), .A2(n42), .A3(key_i_39), .A4(
        n22), .Y(stage1_round_key_i[51]) );
  AO22X1_RVT U199 ( .A1(stage1_round_key_o[13]), .A2(n44), .A3(key_i_50), .A4(
        n22), .Y(stage1_round_key_i[13]) );
  AO22X1_RVT U200 ( .A1(stage1_round_key_o[22]), .A2(n45), .A3(key_i_41), .A4(
        n22), .Y(stage1_round_key_i[22]) );
  AO22X1_RVT U201 ( .A1(stage1_round_key_o[14]), .A2(n29), .A3(key_i_42), .A4(
        n22), .Y(stage1_round_key_i[14]) );
  AO22X1_RVT U202 ( .A1(stage1_round_key_o[23]), .A2(n45), .A3(key_i_33), .A4(
        n22), .Y(stage1_round_key_i[23]) );
  AO22X1_RVT U203 ( .A1(stage1_round_key_o[4]), .A2(n42), .A3(key_i[59]), .A4(
        n22), .Y(stage1_round_key_i[4]) );
  AO22X1_RVT U204 ( .A1(stage1_round_key_o[15]), .A2(n44), .A3(key_i_34), .A4(
        n22), .Y(stage1_round_key_i[15]) );
  INVX0_RVT U205 ( .A(n15), .Y(n2) );
  INVX1_RVT U206 ( .A(n26), .Y(n37) );
  INVX1_RVT U207 ( .A(n26), .Y(n36) );
  INVX1_RVT U208 ( .A(n26), .Y(n38) );
  INVX1_RVT U209 ( .A(n26), .Y(n40) );
  INVX1_RVT U210 ( .A(n26), .Y(n39) );
  INVX1_RVT U211 ( .A(n24), .Y(n49) );
  INVX1_RVT U212 ( .A(n23), .Y(n42) );
  INVX1_RVT U213 ( .A(n23), .Y(n43) );
  INVX1_RVT U214 ( .A(n23), .Y(n45) );
  INVX1_RVT U215 ( .A(n24), .Y(n44) );
  INVX1_RVT U216 ( .A(n24), .Y(n46) );
  INVX1_RVT U217 ( .A(n24), .Y(n48) );
  INVX1_RVT U218 ( .A(n23), .Y(n47) );
  INVX1_RVT U219 ( .A(n24), .Y(n50) );
  INVX1_RVT U220 ( .A(n10), .Y(n1) );
  INVX1_RVT U221 ( .A(n30), .Y(n31) );
  INVX1_RVT U222 ( .A(n56), .Y(n52) );
  INVX1_RVT U223 ( .A(n56), .Y(n53) );
  INVX1_RVT U224 ( .A(n56), .Y(n54) );
  INVX1_RVT U225 ( .A(n56), .Y(n55) );
  INVX1_RVT U226 ( .A(n56), .Y(n51) );
  AO22X1_RVT U227 ( .A1(stage1_L_o[29]), .A2(n49), .A3(data_i[22]), .A4(n39), 
        .Y(stage1_L_i[29]) );
  AO22X1_RVT U228 ( .A1(stage1_L_o[17]), .A2(n50), .A3(data_i[52]), .A4(n40), 
        .Y(stage1_L_i[17]) );
  AO22X1_RVT U229 ( .A1(stage1_L_o[24]), .A2(n49), .A3(data_i[62]), .A4(n39), 
        .Y(stage1_L_i[24]) );
  AO22X1_RVT U230 ( .A1(stage1_L_o[18]), .A2(n50), .A3(data_i[44]), .A4(n40), 
        .Y(stage1_L_i[18]) );
  AO22X1_RVT U231 ( .A1(stage1_L_o[10]), .A2(n50), .A3(data_i[42]), .A4(n40), 
        .Y(stage1_L_i[10]) );
  AO22X1_RVT U232 ( .A1(stage1_L_o[7]), .A2(n48), .A3(data_i[0]), .A4(n38), 
        .Y(stage1_L_i[7]) );
  AO22X1_RVT U233 ( .A1(stage1_L_o[1]), .A2(n50), .A3(data_i[48]), .A4(n40), 
        .Y(stage1_L_i[1]) );
  AO22X1_RVT U234 ( .A1(stage1_L_o[15]), .A2(n50), .A3(data_i[2]), .A4(n40), 
        .Y(stage1_L_i[15]) );
  AO22X1_RVT U235 ( .A1(stage1_L_o[0]), .A2(n50), .A3(data_i[56]), .A4(n40), 
        .Y(stage1_L_i[0]) );
  AO22X1_RVT U236 ( .A1(stage1_L_o[23]), .A2(n49), .A3(data_i[4]), .A4(n39), 
        .Y(stage1_L_i[23]) );
  AO22X1_RVT U237 ( .A1(stage1_L_o[14]), .A2(n50), .A3(data_i[10]), .A4(n40), 
        .Y(stage1_L_i[14]) );
  AO22X1_RVT U238 ( .A1(stage1_L_o[13]), .A2(n50), .A3(data_i[18]), .A4(n40), 
        .Y(stage1_L_i[13]) );
  AO22X1_RVT U239 ( .A1(stage1_L_o[3]), .A2(n48), .A3(data_i[32]), .A4(n38), 
        .Y(stage1_L_i[3]) );
  AO22X1_RVT U240 ( .A1(stage1_L_o[8]), .A2(n48), .A3(data_i[58]), .A4(n38), 
        .Y(stage1_L_i[8]) );
  AO22X1_RVT U241 ( .A1(stage1_L_o[2]), .A2(n49), .A3(data_i[40]), .A4(n39), 
        .Y(stage1_L_i[2]) );
  AO22X1_RVT U242 ( .A1(stage1_L_o[22]), .A2(n49), .A3(data_i[12]), .A4(n39), 
        .Y(stage1_L_i[22]) );
  AO22X1_RVT U243 ( .A1(stage1_L_o[28]), .A2(n49), .A3(data_i[30]), .A4(n39), 
        .Y(stage1_L_i[28]) );
  AO22X1_RVT U244 ( .A1(stage1_L_o[21]), .A2(n49), .A3(data_i[20]), .A4(n39), 
        .Y(stage1_L_i[21]) );
  AO22X1_RVT U245 ( .A1(stage1_L_o[25]), .A2(n49), .A3(data_i[54]), .A4(n39), 
        .Y(stage1_L_i[25]) );
  AO22X1_RVT U246 ( .A1(stage1_L_o[20]), .A2(n49), .A3(data_i[28]), .A4(n39), 
        .Y(stage1_L_i[20]) );
  AO22X1_RVT U247 ( .A1(stage1_L_o[19]), .A2(n50), .A3(data_i[36]), .A4(n40), 
        .Y(stage1_L_i[19]) );
  AO22X1_RVT U248 ( .A1(stage1_L_o[30]), .A2(n49), .A3(data_i[14]), .A4(n39), 
        .Y(stage1_L_i[30]) );
  AO22X1_RVT U249 ( .A1(stage1_L_o[31]), .A2(n48), .A3(data_i[6]), .A4(n38), 
        .Y(stage1_L_i[31]) );
  AO22X1_RVT U250 ( .A1(stage1_L_o[6]), .A2(n48), .A3(data_i[8]), .A4(n38), 
        .Y(stage1_L_i[6]) );
  AO22X1_RVT U251 ( .A1(stage1_L_o[9]), .A2(n48), .A3(data_i[50]), .A4(n38), 
        .Y(stage1_L_i[9]) );
  AO22X1_RVT U252 ( .A1(stage1_L_o[16]), .A2(n50), .A3(data_i[60]), .A4(n40), 
        .Y(stage1_L_i[16]) );
  AO22X1_RVT U253 ( .A1(stage1_L_o[4]), .A2(n48), .A3(data_i[24]), .A4(n38), 
        .Y(stage1_L_i[4]) );
  AO22X1_RVT U254 ( .A1(stage1_L_o[27]), .A2(n49), .A3(data_i[38]), .A4(n39), 
        .Y(stage1_L_i[27]) );
  AO22X1_RVT U255 ( .A1(stage1_L_o[12]), .A2(n50), .A3(data_i[26]), .A4(n40), 
        .Y(stage1_L_i[12]) );
  AO22X1_RVT U256 ( .A1(stage1_L_o[11]), .A2(n50), .A3(data_i[34]), .A4(n40), 
        .Y(stage1_L_i[11]) );
  AO22X1_RVT U257 ( .A1(stage1_L_o[26]), .A2(n49), .A3(data_i[46]), .A4(n39), 
        .Y(stage1_L_i[26]) );
  AO22X1_RVT U258 ( .A1(stage1_L_o[5]), .A2(n48), .A3(data_i[16]), .A4(n38), 
        .Y(stage1_L_i[5]) );
  AO22X1_RVT U259 ( .A1(stage1_R_o[27]), .A2(n46), .A3(data_i[39]), .A4(n36), 
        .Y(stage1_R_i[27]) );
  AO22X1_RVT U260 ( .A1(stage1_R_o[11]), .A2(n48), .A3(data_i[35]), .A4(n38), 
        .Y(stage1_R_i[11]) );
  AO22X1_RVT U261 ( .A1(stage1_R_o[28]), .A2(n46), .A3(data_i[31]), .A4(n36), 
        .Y(stage1_R_i[28]) );
  AO22X1_RVT U262 ( .A1(stage1_R_o[3]), .A2(n46), .A3(data_i[33]), .A4(n36), 
        .Y(stage1_R_i[3]) );
  AO22X1_RVT U263 ( .A1(stage1_R_o[12]), .A2(n48), .A3(data_i[27]), .A4(n38), 
        .Y(stage1_R_i[12]) );
  AO22X1_RVT U264 ( .A1(stage1_R_o[4]), .A2(n46), .A3(data_i[25]), .A4(n36), 
        .Y(stage1_R_i[4]) );
  AO22X1_RVT U265 ( .A1(stage1_R_o[24]), .A2(n46), .A3(data_i[63]), .A4(n36), 
        .Y(stage1_R_i[24]) );
  AO22X1_RVT U266 ( .A1(stage1_R_o[23]), .A2(n47), .A3(data_i[5]), .A4(n37), 
        .Y(stage1_R_i[23]) );
  AO22X1_RVT U267 ( .A1(stage1_R_o[15]), .A2(n47), .A3(data_i[3]), .A4(n37), 
        .Y(stage1_R_i[15]) );
  AO22X1_RVT U268 ( .A1(stage1_R_o[16]), .A2(n47), .A3(data_i[61]), .A4(n37), 
        .Y(stage1_R_i[16]) );
  AO22X1_RVT U269 ( .A1(stage1_R_o[0]), .A2(n48), .A3(data_i[57]), .A4(n38), 
        .Y(stage1_R_i[0]) );
  AO22X1_RVT U270 ( .A1(stage1_R_o[20]), .A2(n47), .A3(data_i[29]), .A4(n37), 
        .Y(stage1_R_i[20]) );
  AO22X1_RVT U271 ( .A1(stage1_R_o[31]), .A2(n46), .A3(data_i[7]), .A4(n36), 
        .Y(stage1_R_i[31]) );
  AO22X1_RVT U272 ( .A1(stage1_R_o[19]), .A2(n47), .A3(data_i[37]), .A4(n37), 
        .Y(stage1_R_i[19]) );
  AO22X1_RVT U273 ( .A1(stage1_R_o[2]), .A2(n46), .A3(data_i[41]), .A4(n36), 
        .Y(stage1_R_i[2]) );
  AO22X1_RVT U274 ( .A1(stage1_R_o[29]), .A2(n46), .A3(data_i[23]), .A4(n36), 
        .Y(stage1_R_i[29]) );
  AO22X1_RVT U275 ( .A1(stage1_R_o[5]), .A2(n46), .A3(data_i[17]), .A4(n36), 
        .Y(stage1_R_i[5]) );
  AO22X1_RVT U276 ( .A1(stage1_R_o[30]), .A2(n46), .A3(data_i[15]), .A4(n36), 
        .Y(stage1_R_i[30]) );
  AO22X1_RVT U277 ( .A1(stage1_R_o[21]), .A2(n47), .A3(data_i[21]), .A4(n37), 
        .Y(stage1_R_i[21]) );
  AO22X1_RVT U278 ( .A1(stage1_R_o[22]), .A2(n47), .A3(data_i[13]), .A4(n37), 
        .Y(stage1_R_i[22]) );
  AO22X1_RVT U279 ( .A1(stage1_R_o[1]), .A2(n47), .A3(data_i[49]), .A4(n37), 
        .Y(stage1_R_i[1]) );
  AO22X1_RVT U280 ( .A1(stage1_R_o[25]), .A2(n46), .A3(data_i[55]), .A4(n36), 
        .Y(stage1_R_i[25]) );
  AO22X1_RVT U281 ( .A1(stage1_R_o[10]), .A2(n48), .A3(data_i[43]), .A4(n38), 
        .Y(stage1_R_i[10]) );
  AO22X1_RVT U282 ( .A1(stage1_R_o[13]), .A2(n47), .A3(data_i[19]), .A4(n37), 
        .Y(stage1_R_i[13]) );
  AO22X1_RVT U283 ( .A1(stage1_R_o[14]), .A2(n47), .A3(data_i[11]), .A4(n37), 
        .Y(stage1_R_i[14]) );
  AO22X1_RVT U284 ( .A1(stage1_R_o[26]), .A2(n46), .A3(data_i[47]), .A4(n36), 
        .Y(stage1_R_i[26]) );
  AO22X1_RVT U285 ( .A1(stage1_R_o[18]), .A2(n47), .A3(data_i[45]), .A4(n37), 
        .Y(stage1_R_i[18]) );
  AO22X1_RVT U286 ( .A1(stage1_R_o[17]), .A2(n47), .A3(data_i[53]), .A4(n37), 
        .Y(stage1_R_i[17]) );
  NAND2X0_RVT U287 ( .A1(n13), .A2(n14), .Y(n17) );
  NAND3X0_RVT U288 ( .A1(n31), .A2(n3), .A3(n12), .Y(n14) );
  AO22X1_RVT U289 ( .A1(n1), .A2(stage1_iter[3]), .A3(n11), .A4(n12), .Y(n16)
         );
  NOR3X0_RVT U290 ( .A1(data_ready), .A2(load_i), .A3(n2), .Y(next_ready_o) );
  AO22X1_RVT U291 ( .A1(n15), .A2(n6), .A3(data_ready), .A4(n2), .Y(n20) );
  INVX1_RVT U292 ( .A(load_i), .Y(n6) );
  INVX1_RVT U293 ( .A(reset), .Y(n56) );
  INVX1_RVT U294 ( .A(n7), .Y(n23) );
  INVX0_RVT U295 ( .A(n7), .Y(n24) );
  NAND3X0_RVT U296 ( .A1(n9), .A2(n10), .A3(load_i), .Y(n7) );
  NAND2X0_RVT U297 ( .A1(n9), .A2(n2), .Y(n10) );
  INVX1_RVT U298 ( .A(n8), .Y(n25) );
  INVX0_RVT U299 ( .A(n8), .Y(n26) );
  INVX1_RVT U300 ( .A(n44), .Y(n27) );
  INVX1_RVT U301 ( .A(n27), .Y(n28) );
  INVX0_RVT U302 ( .A(n27), .Y(n29) );
  AO22X1_RVT U303 ( .A1(stage1_round_key_o[29]), .A2(n28), .A3(key_i_20), .A4(
        n33), .Y(stage1_round_key_i[29]) );
  AO22X1_RVT U304 ( .A1(stage1_round_key_o[27]), .A2(n45), .A3(key_i_1), .A4(
        n34), .Y(stage1_round_key_i[27]) );
  AO22X1_RVT U305 ( .A1(stage1_round_key_o[54]), .A2(n42), .A3(key_i_15), .A4(
        n41), .Y(stage1_round_key_i[54]) );
  AO22X1_RVT U306 ( .A1(stage1_round_key_o[45]), .A2(n43), .A3(key_i_22), .A4(
        n41), .Y(stage1_round_key_i[45]) );
  AND2X1_RVT U307 ( .A1(n1), .A2(stage1_iter[0]), .Y(n12) );
  AND2X1_RVT U308 ( .A1(load_i), .A2(n15), .Y(n8) );
  AO22X1_RVT U309 ( .A1(stage1_round_key_o[0]), .A2(n44), .A3(key_i[60]), .A4(
        n34), .Y(stage1_round_key_i[0]) );
  AO22X1_RVT U310 ( .A1(n31), .A2(n5), .A3(n12), .A4(n30), .Y(n18) );
  AND2X1_RVT U311 ( .A1(stage1_iter[2]), .A2(n31), .Y(n11) );
endmodule

