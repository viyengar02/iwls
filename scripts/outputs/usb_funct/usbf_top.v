/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Tue Apr 15 10:33:25 2025
/////////////////////////////////////////////////////////////


module usbf_utmi_ls_DW01_inc_0 ( A, SUM );
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


module usbf_utmi_ls_DW01_inc_1 ( A, SUM );
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


module usbf_utmi_ls_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  XOR2X1_RVT U1 ( .A1(carry[7]), .A2(A[7]), .Y(SUM[7]) );
endmodule


module usbf_utmi_ls_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[7]), .A2(A[7]), .Y(SUM[7]) );
endmodule


module usbf_utmi_ls ( clk, rst, resume_req, rx_active, tx_ready, drive_k, 
        XcvSelect, TermSel, SuspendM, LineState, OpMode, usb_vbus, mode_hs, 
        usb_reset, usb_suspend, usb_attached, suspend_clr );
  input [1:0] LineState;
  output [1:0] OpMode;
  input clk, rst, resume_req, rx_active, tx_ready, usb_vbus;
  output drive_k, XcvSelect, TermSel, SuspendM, mode_hs, usb_reset,
         usb_suspend, usb_attached, suspend_clr;
  wire   resume_req_s1, usb_reset_d, ls_k_r, ls_j_r, ls_se0_r, ps_cnt_clr, N99,
         N101, N102, N126, N127, N128, N129, N130, N131, N132, N133, N134,
         N136, T1_st_3_0_mS, N138, N140, me_ps_2_5_us, N146, N147, N148, N149,
         N150, N151, N152, N166, N167, N168, N169, N170, N171, N172, N173,
         N192, N198, N199, N200, N201, N202, N203, N204, N205, N224, N226,
         N228, T2_gt_1_2_mS, N232, \chirp_cnt[2] , n64, n70, n71, n76, n77,
         n78, n79, n80, n82, n84, n85, n86, n87, n91, n111, n112, n113, n190,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n243, n244, n245, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n24, n27, n30, n33,
         n36, n39, n42, n45, n56, n57, n58, n59, n60, n61, n62, n63, n65, n66,
         n67, n68, n69, n72, n73, n74, n75, n81, n83, n88, n89, n90, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n191, n242, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279;
  wire   [1:0] line_state_r;
  wire   [3:0] ps_cnt;
  wire   [7:0] idle_cnt1;
  wire   [7:0] idle_cnt1_next;
  wire   [7:0] me_ps;
  wire   [7:0] me_ps2;
  wire   [7:0] me_cnt;
  wire   [14:0] state;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign OpMode[0] = 1'b0;

  usbf_utmi_ls_DW01_inc_0 add_376_S2 ( .A(me_cnt), .SUM({N205, N204, N203, 
        N202, N201, N200, N199, N198}) );
  usbf_utmi_ls_DW01_inc_1 add_367_S2 ( .A(me_ps2), .SUM({N173, N172, N171, 
        N170, N169, N168, N167, N166}) );
  usbf_utmi_ls_DW01_inc_2 add_358 ( .A(me_ps), .SUM({N152, N151, N150, N149, 
        N148, N147, N146, SYNOPSYS_UNCONNECTED__0}) );
  usbf_utmi_ls_DW01_inc_3 add_332 ( .A(idle_cnt1), .SUM({N133, N132, N131, 
        N130, N129, N128, N127, N126}) );
  DFFSSRX1_RVT T1_gt_3_0_mS_reg ( .D(N138), .SETB(1'b1), .RSTB(n271), .CLK(n58), .Q(n12), .QN(n257) );
  DFFSSRX1_RVT T1_gt_2_5_uS_reg ( .D(N134), .SETB(1'b1), .RSTB(n271), .CLK(n58), .Q(n5) );
  DFFSSRX1_RVT T1_gt_5_0_mS_reg ( .D(N140), .SETB(1'b1), .RSTB(n271), .CLK(n58), .QN(n78) );
  DFFSSRX1_RVT T2_gt_100_uS_reg ( .D(N224), .SETB(1'b1), .RSTB(n56), .CLK(n58), 
        .Q(n13), .QN(n258) );
  DFFSSRX1_RVT T2_gt_1_0_mS_reg ( .D(N228), .SETB(1'b1), .RSTB(n56), .CLK(n59), 
        .QN(n255) );
  DFFSSRX1_RVT T2_wakeup_reg ( .D(N226), .SETB(1'b1), .RSTB(n56), .CLK(n59), 
        .Q(n7) );
  SDFFX1_RVT ls_idle_r_reg ( .D(n240), .SI(n241), .SE(n64), .CLK(n58), .QN(
        n246) );
  DFFX1_RVT \chirp_cnt_reg[0]  ( .D(n194), .CLK(n63), .Q(n10), .QN(n86) );
  DFFX1_RVT \chirp_cnt_reg[1]  ( .D(n193), .CLK(n62), .QN(n85) );
  SDFFSSRX1_RVT chirp_cnt_is_6_reg ( .RSTB(\chirp_cnt[2] ), .SETB(1'b1), .D(
        n86), .SI(1'b0), .SE(n85), .CLK(n66), .Q(n11), .QN(n87) );
  DFFX1_RVT me_ps2_0_5_ms_reg ( .D(N192), .CLK(n65), .Q(n6), .QN(n82) );
  DFFX1_RVT me_cnt_100_ms_reg ( .D(N232), .CLK(n65), .Q(n14), .QN(n84) );
  DFFX1_RVT idle_cnt1_clr_reg ( .D(n244), .CLK(n65), .QN(n191) );
  DFFX1_RVT \idle_cnt1_next_reg[0]  ( .D(N126), .CLK(n60), .Q(
        idle_cnt1_next[0]) );
  DFFX1_RVT \idle_cnt1_next_reg[1]  ( .D(N127), .CLK(n60), .Q(
        idle_cnt1_next[1]) );
  DFFX1_RVT \idle_cnt1_next_reg[2]  ( .D(N128), .CLK(n60), .Q(
        idle_cnt1_next[2]) );
  DFFX1_RVT \idle_cnt1_next_reg[3]  ( .D(N129), .CLK(n60), .Q(
        idle_cnt1_next[3]) );
  DFFX1_RVT \idle_cnt1_next_reg[4]  ( .D(N130), .CLK(n60), .Q(
        idle_cnt1_next[4]) );
  DFFX1_RVT \idle_cnt1_next_reg[5]  ( .D(N131), .CLK(n61), .Q(
        idle_cnt1_next[5]) );
  DFFX1_RVT \idle_cnt1_next_reg[6]  ( .D(N132), .CLK(n61), .Q(
        idle_cnt1_next[6]) );
  DFFX1_RVT \idle_cnt1_next_reg[7]  ( .D(N133), .CLK(n61), .Q(
        idle_cnt1_next[7]) );
  DFFX1_RVT me_ps_2_5_us_reg ( .D(n245), .CLK(n61), .Q(me_ps_2_5_us), .QN(n80)
         );
  DFFX1_RVT \OpMode_reg[1]  ( .D(n196), .CLK(n65), .Q(OpMode[1]) );
  DFFX1_RVT resume_req_s_reg ( .D(resume_req_s1), .CLK(n59), .QN(n33) );
  DFFX1_RVT \line_state_r_reg[1]  ( .D(LineState[1]), .CLK(n59), .Q(
        line_state_r[1]), .QN(n70) );
  DFFX1_RVT \line_state_r_reg[0]  ( .D(LineState[0]), .CLK(n59), .Q(
        line_state_r[0]), .QN(n71) );
  DFFX1_RVT \chirp_cnt_reg[2]  ( .D(n235), .CLK(n63), .Q(\chirp_cnt[2] ), .QN(
        n242) );
  DFFX1_RVT \idle_cnt1_reg[1]  ( .D(n219), .CLK(n60), .Q(idle_cnt1[1]), .QN(
        n264) );
  DFFX1_RVT \idle_cnt1_reg[2]  ( .D(n218), .CLK(n60), .Q(idle_cnt1[2]), .QN(
        n76) );
  DFFX1_RVT \idle_cnt1_reg[3]  ( .D(n217), .CLK(n60), .Q(idle_cnt1[3]), .QN(
        n263) );
  DFFX1_RVT \idle_cnt1_reg[4]  ( .D(n216), .CLK(n61), .Q(idle_cnt1[4]), .QN(
        n262) );
  DFFX1_RVT \idle_cnt1_reg[5]  ( .D(n215), .CLK(n61), .Q(idle_cnt1[5]), .QN(
        n261) );
  DFFX1_RVT \idle_cnt1_reg[6]  ( .D(n214), .CLK(n61), .Q(idle_cnt1[6]), .QN(
        n260) );
  DFFX1_RVT \me_cnt_reg[1]  ( .D(n203), .CLK(n65), .Q(me_cnt[1]) );
  DFFX1_RVT \me_cnt_reg[2]  ( .D(n202), .CLK(n65), .Q(me_cnt[2]), .QN(n269) );
  DFFX1_RVT \me_cnt_reg[3]  ( .D(n201), .CLK(n65), .Q(me_cnt[3]) );
  DFFX1_RVT \me_cnt_reg[4]  ( .D(n200), .CLK(n65), .Q(me_cnt[4]), .QN(n268) );
  DFFX1_RVT \me_cnt_reg[5]  ( .D(n199), .CLK(n65), .Q(me_cnt[5]), .QN(n265) );
  DFFX1_RVT \me_cnt_reg[6]  ( .D(n198), .CLK(n65), .Q(me_cnt[6]), .QN(n266) );
  DFFX1_RVT \idle_cnt1_reg[7]  ( .D(n221), .CLK(n60), .Q(idle_cnt1[7]), .QN(
        n259) );
  DFFX1_RVT \me_cnt_reg[7]  ( .D(n205), .CLK(n65), .Q(me_cnt[7]), .QN(n267) );
  DFFX1_RVT \state_reg[14]  ( .D(n236), .CLK(n61), .Q(state[14]), .QN(n1) );
  DFFX1_RVT ps_cnt_clr_reg ( .D(n243), .CLK(n60), .Q(ps_cnt_clr), .QN(n42) );
  DFFSSRX1_RVT TermSel_reg ( .D(n113), .SETB(n279), .RSTB(n112), .CLK(n59), 
        .Q(TermSel), .QN(n189) );
  DFFX1_RVT \me_ps2_reg[3]  ( .D(n210), .CLK(n62), .Q(me_ps2[3]) );
  DFFX1_RVT \me_ps2_reg[5]  ( .D(n208), .CLK(n62), .Q(me_ps2[5]), .QN(n254) );
  DFFX1_RVT \ps_cnt_reg[0]  ( .D(N99), .CLK(n59), .Q(ps_cnt[0]), .QN(n24) );
  DFFX1_RVT \me_ps2_reg[2]  ( .D(n211), .CLK(n62), .Q(me_ps2[2]), .QN(n252) );
  DFFX1_RVT \me_ps2_reg[4]  ( .D(n209), .CLK(n62), .Q(me_ps2[4]), .QN(n253) );
  DFFX1_RVT \ps_cnt_reg[2]  ( .D(N101), .CLK(n59), .Q(ps_cnt[2]), .QN(n15) );
  DFFX1_RVT \state_reg[6]  ( .D(n227), .CLK(n63), .Q(state[6]), .QN(n39) );
  DFFX1_RVT \ps_cnt_reg[3]  ( .D(N102), .CLK(n60), .Q(ps_cnt[3]) );
  DFFX1_RVT \idle_cnt1_reg[0]  ( .D(n220), .CLK(n60), .Q(idle_cnt1[0]), .QN(
        n77) );
  DFFX1_RVT \me_cnt_reg[0]  ( .D(n204), .CLK(n63), .Q(me_cnt[0]), .QN(n270) );
  DFFX1_RVT \me_ps2_reg[1]  ( .D(n212), .CLK(n61), .Q(me_ps2[1]), .QN(n251) );
  DFFX1_RVT \state_reg[10]  ( .D(n231), .CLK(n63), .Q(state[10]), .QN(n91) );
  DFFX1_RVT \state_reg[13]  ( .D(n234), .CLK(n65), .Q(state[13]), .QN(n4) );
  DFFX1_RVT \me_ps2_reg[7]  ( .D(n206), .CLK(n62), .Q(me_ps2[7]) );
  DFFX1_RVT \state_reg[0]  ( .D(n239), .CLK(n59), .Q(state[0]), .QN(n2) );
  DFFX1_RVT usb_attached_reg ( .D(n195), .CLK(n59), .Q(usb_attached) );
  DFFX1_RVT \me_ps2_reg[6]  ( .D(n207), .CLK(n62), .Q(me_ps2[6]) );
  DFFSSRX1_RVT ls_j_r_reg ( .D(line_state_r[0]), .SETB(1'b1), .RSTB(n70), 
        .CLK(n58), .Q(ls_j_r) );
  DFFSSRX1_RVT ls_se0_r_reg ( .D(n70), .SETB(1'b1), .RSTB(n71), .CLK(n58), .Q(
        ls_se0_r) );
  DFFSSRX1_RVT ls_k_r_reg ( .D(line_state_r[1]), .SETB(1'b1), .RSTB(n71), 
        .CLK(n58), .Q(ls_k_r) );
  DFFX1_RVT \state_reg[5]  ( .D(n226), .CLK(n63), .Q(state[5]), .QN(n30) );
  DFFSSRX1_RVT T2_gt_1_2_mS_reg ( .D(N228), .SETB(1'b1), .RSTB(n56), .CLK(n59), 
        .Q(T2_gt_1_2_mS) );
  DFFSSRX1_RVT T1_st_3_0_mS_reg ( .D(N136), .SETB(1'b1), .RSTB(n271), .CLK(n58), .Q(T1_st_3_0_mS) );
  DFFX1_RVT \state_reg[4]  ( .D(n225), .CLK(n63), .Q(state[4]), .QN(n8) );
  DFFSSRX1_RVT XcvSelect_reg ( .D(n113), .SETB(n111), .RSTB(1'b1), .CLK(n58), 
        .Q(XcvSelect) );
  DFFX1_RVT \me_ps2_reg[0]  ( .D(n213), .CLK(n61), .Q(me_ps2[0]) );
  DFFX1_RVT \state_reg[7]  ( .D(n228), .CLK(n62), .Q(state[7]) );
  DFFX1_RVT \state_reg[8]  ( .D(n229), .CLK(n59), .Q(state[8]), .QN(n3) );
  SDFFSSRX1_RVT \me_ps_reg[1]  ( .RSTB(n80), .SETB(1'b1), .D(n57), .SI(1'b0), 
        .SE(n278), .CLK(n66), .Q(me_ps[1]), .QN(n247) );
  SDFFSSRX1_RVT \me_ps_reg[3]  ( .RSTB(n80), .SETB(1'b1), .D(n57), .SI(1'b0), 
        .SE(n276), .CLK(n66), .Q(me_ps[3]), .QN(n248) );
  SDFFSSRX1_RVT \me_ps_reg[5]  ( .RSTB(n80), .SETB(1'b1), .D(n57), .SI(1'b0), 
        .SE(n274), .CLK(n66), .Q(me_ps[5]), .QN(n249) );
  SDFFSSRX1_RVT \me_ps_reg[6]  ( .RSTB(n80), .SETB(1'b1), .D(n56), .SI(1'b0), 
        .SE(n273), .CLK(n66), .Q(me_ps[6]), .QN(n250) );
  DFFX1_RVT idle_long_reg ( .D(n237), .CLK(n61), .Q(n256), .QN(n36) );
  DFFX1_RVT \state_reg[12]  ( .D(n233), .CLK(n63), .Q(state[12]) );
  DFFX1_RVT usb_suspend_reg ( .D(n197), .CLK(n63), .Q(usb_suspend) );
  DFFX1_RVT \state_reg[9]  ( .D(n230), .CLK(n63), .Q(usb_reset_d), .QN(n9) );
  DFFX1_RVT \state_reg[11]  ( .D(n232), .CLK(n63), .Q(state[11]) );
  DFFX1_RVT \state_reg[3]  ( .D(n224), .CLK(n62), .Q(state[3]) );
  DFFX1_RVT \state_reg[2]  ( .D(n223), .CLK(n63), .Q(state[2]) );
  SDFFSSRX1_RVT \me_ps_reg[2]  ( .RSTB(n80), .SETB(1'b1), .D(n57), .SI(1'b0), 
        .SE(n277), .CLK(n66), .Q(me_ps[2]) );
  SDFFSSRX1_RVT \me_ps_reg[4]  ( .RSTB(n80), .SETB(1'b1), .D(n56), .SI(1'b0), 
        .SE(n275), .CLK(n66), .Q(me_ps[4]) );
  DFFX1_RVT \state_reg[1]  ( .D(n222), .CLK(n62), .Q(state[1]) );
  SDFFSSRX1_RVT \me_ps_reg[7]  ( .RSTB(n80), .SETB(1'b1), .D(n57), .SI(1'b0), 
        .SE(n272), .CLK(n66), .Q(me_ps[7]) );
  DFFSSRX1_RVT drive_k_reg ( .D(state[7]), .SETB(n91), .RSTB(1'b1), .CLK(n58), 
        .Q(drive_k) );
  DFFX1_RVT mode_hs_reg ( .D(n238), .CLK(n61), .Q(mode_hs), .QN(n64) );
  SDFFSSRX1_RVT \me_ps_reg[0]  ( .RSTB(n80), .SETB(1'b1), .D(n57), .SI(1'b0), 
        .SE(me_ps[0]), .CLK(n66), .Q(me_ps[0]), .QN(n79) );
  DFFSSRX1_RVT \ps_cnt_reg[1]  ( .D(n190), .SETB(1'b1), .RSTB(n192), .CLK(n58), 
        .Q(ps_cnt[1]), .QN(n27) );
  DFFX1_RVT resume_req_s1_reg ( .D(resume_req), .CLK(n62), .Q(resume_req_s1)
         );
  DFFX1_RVT usb_reset_reg ( .D(usb_reset_d), .CLK(n62), .Q(usb_reset) );
  INVX1_RVT U4 ( .A(n67), .Y(n66) );
  INVX1_RVT U9 ( .A(n67), .Y(n65) );
  INVX1_RVT U10 ( .A(n67), .Y(n63) );
  INVX1_RVT U11 ( .A(n67), .Y(n61) );
  INVX1_RVT U12 ( .A(n67), .Y(n60) );
  INVX1_RVT U13 ( .A(n67), .Y(n62) );
  INVX1_RVT U14 ( .A(n67), .Y(n59) );
  INVX1_RVT U19 ( .A(n67), .Y(n58) );
  INVX1_RVT U22 ( .A(clk), .Y(n67) );
  INVX1_RVT U25 ( .A(n163), .Y(n56) );
  INVX1_RVT U28 ( .A(n163), .Y(n57) );
  INVX1_RVT U31 ( .A(n127), .Y(n45) );
  AND3X1_RVT U34 ( .A1(n127), .A2(n89), .A3(rst), .Y(n99) );
  OR3X1_RVT U37 ( .A1(me_ps2[2]), .A2(me_ps2[1]), .A3(me_ps2[0]), .Y(n68) );
  AO21X1_RVT U40 ( .A1(me_ps2[3]), .A2(n68), .A3(me_ps2[4]), .Y(n72) );
  OR2X1_RVT U51 ( .A1(me_ps2[7]), .A2(me_ps2[6]), .Y(n69) );
  AO21X1_RVT U52 ( .A1(me_ps2[5]), .A2(n72), .A3(n69), .Y(N224) );
  INVX0_RVT U53 ( .A(N152), .Y(n272) );
  INVX0_RVT U54 ( .A(N151), .Y(n273) );
  INVX0_RVT U55 ( .A(N150), .Y(n274) );
  INVX0_RVT U56 ( .A(N149), .Y(n275) );
  INVX0_RVT U57 ( .A(N148), .Y(n276) );
  INVX0_RVT U58 ( .A(N147), .Y(n277) );
  INVX0_RVT U59 ( .A(N146), .Y(n278) );
  AND3X1_RVT U60 ( .A1(n73), .A2(n9), .A3(n189), .Y(n279) );
  NOR2X0_RVT U61 ( .A1(n74), .A2(n75), .Y(n245) );
  NAND4X0_RVT U62 ( .A1(n247), .A2(n248), .A3(n249), .A4(n250), .Y(n75) );
  NAND4X0_RVT U63 ( .A1(n79), .A2(me_ps[7]), .A3(me_ps[4]), .A4(me_ps[2]), .Y(
        n74) );
  AND4X1_RVT U64 ( .A1(n76), .A2(n81), .A3(n77), .A4(n83), .Y(n244) );
  AND4X1_RVT U65 ( .A1(idle_cnt1[1]), .A2(idle_cnt1[3]), .A3(idle_cnt1[6]), 
        .A4(idle_cnt1[7]), .Y(n83) );
  AND4X1_RVT U66 ( .A1(ps_cnt[3]), .A2(ps_cnt[2]), .A3(ps_cnt[0]), .A4(n27), 
        .Y(n243) );
  NAND3X0_RVT U67 ( .A1(n88), .A2(n89), .A3(rst), .Y(n239) );
  NAND2X0_RVT U68 ( .A1(state[0]), .A2(n45), .Y(n88) );
  MUX21X1_RVT U69 ( .A1(n92), .A2(mode_hs), .S0(n93), .Y(n238) );
  AND4X1_RVT U70 ( .A1(n2), .A2(n4), .A3(n1), .A4(n9), .Y(n93) );
  AND3X1_RVT U71 ( .A1(n1), .A2(n9), .A3(n2), .Y(n92) );
  MUX21X1_RVT U72 ( .A1(n94), .A2(n256), .S0(n95), .Y(n237) );
  AND2X1_RVT U73 ( .A1(n96), .A2(rst), .Y(n95) );
  XNOR2X1_RVT U74 ( .A1(n97), .A2(n246), .Y(n96) );
  AND2X1_RVT U75 ( .A1(rst), .A2(n97), .Y(n94) );
  MUX21X1_RVT U76 ( .A1(n241), .A2(n240), .S0(mode_hs), .Y(n97) );
  AO21X1_RVT U77 ( .A1(state[14]), .A2(n45), .A3(n98), .Y(n236) );
  AND4X1_RVT U78 ( .A1(n87), .A2(n99), .A3(n100), .A4(n101), .Y(n98) );
  MUX21X1_RVT U79 ( .A1(n102), .A2(n103), .S0(n242), .Y(n235) );
  NOR3X0_RVT U80 ( .A1(n85), .A2(n86), .A3(n104), .Y(n103) );
  AO21X1_RVT U81 ( .A1(n85), .A2(n105), .A3(n106), .Y(n102) );
  AO22X1_RVT U82 ( .A1(state[13]), .A2(n90), .A3(n107), .A4(n99), .Y(n234) );
  AND2X1_RVT U83 ( .A1(n101), .A2(n11), .Y(n107) );
  OR2X1_RVT U84 ( .A1(state[12]), .A2(state[11]), .Y(n101) );
  AO22X1_RVT U85 ( .A1(n45), .A2(state[12]), .A3(n108), .A4(state[11]), .Y(
        n233) );
  AO222X1_RVT U86 ( .A1(n99), .A2(state[10]), .A3(n108), .A4(state[12]), .A5(
        n90), .A6(state[11]), .Y(n232) );
  AND3X1_RVT U87 ( .A1(n99), .A2(n109), .A3(n87), .Y(n108) );
  AO22X1_RVT U88 ( .A1(n90), .A2(state[10]), .A3(usb_reset_d), .A4(n99), .Y(
        n231) );
  AO22X1_RVT U89 ( .A1(usb_reset_d), .A2(n45), .A3(n99), .A4(n110), .Y(n230)
         );
  AO22X1_RVT U90 ( .A1(n45), .A2(state[8]), .A3(n99), .A4(state[0]), .Y(n229)
         );
  AO22X1_RVT U91 ( .A1(state[7]), .A2(n45), .A3(n99), .A4(state[5]), .Y(n228)
         );
  AO22X1_RVT U92 ( .A1(state[6]), .A2(n90), .A3(n99), .A4(state[4]), .Y(n227)
         );
  AO21X1_RVT U93 ( .A1(n45), .A2(state[5]), .A3(n114), .Y(n226) );
  AND4X1_RVT U94 ( .A1(n99), .A2(state[3]), .A3(n115), .A4(n116), .Y(n114) );
  AO22X1_RVT U95 ( .A1(n90), .A2(state[4]), .A3(n99), .A4(n117), .Y(n225) );
  AO21X1_RVT U96 ( .A1(n118), .A2(state[3]), .A3(state[7]), .Y(n117) );
  AO22X1_RVT U97 ( .A1(n45), .A2(state[3]), .A3(n99), .A4(n119), .Y(n224) );
  AO21X1_RVT U98 ( .A1(state[2]), .A2(n120), .A3(n121), .Y(n119) );
  INVX0_RVT U99 ( .A(n122), .Y(n121) );
  AO21X1_RVT U100 ( .A1(n90), .A2(state[2]), .A3(n123), .Y(n223) );
  AND4X1_RVT U101 ( .A1(n99), .A2(state[1]), .A3(n124), .A4(n125), .Y(n123) );
  AO22X1_RVT U102 ( .A1(n90), .A2(state[1]), .A3(n99), .A4(n126), .Y(n222) );
  NAND4X0_RVT U103 ( .A1(n4), .A2(n1), .A3(n39), .A4(n3), .Y(n126) );
  INVX0_RVT U104 ( .A(n127), .Y(n90) );
  NAND3X0_RVT U105 ( .A1(n128), .A2(n89), .A3(rst), .Y(n127) );
  INVX0_RVT U106 ( .A(usb_vbus), .Y(n89) );
  NAND3X0_RVT U107 ( .A1(n129), .A2(n130), .A3(n131), .Y(n128) );
  AOI221X1_RVT U108 ( .A1(n255), .A2(n132), .A3(n133), .A4(n109), .A5(n134), 
        .Y(n131) );
  NAND3X0_RVT U109 ( .A1(n135), .A2(n136), .A3(n137), .Y(n134) );
  OAI21X1_RVT U110 ( .A1(state[6]), .A2(state[2]), .A3(n258), .Y(n137) );
  NAND4X0_RVT U111 ( .A1(state[3]), .A2(n138), .A3(n115), .A4(n116), .Y(n136)
         );
  OR2X1_RVT U112 ( .A1(n33), .A2(n78), .Y(n138) );
  NAND3X0_RVT U113 ( .A1(state[1]), .A2(n125), .A3(n257), .Y(n135) );
  AO22X1_RVT U114 ( .A1(state[2]), .A2(n139), .A3(n140), .A4(n141), .Y(n133)
         );
  AO221X1_RVT U115 ( .A1(state[11]), .A2(n115), .A3(state[12]), .A4(n139), 
        .A5(state[13]), .Y(n141) );
  NAND2X0_RVT U116 ( .A1(n4), .A2(n11), .Y(n140) );
  OR2X1_RVT U117 ( .A1(usb_reset_d), .A2(state[7]), .Y(n132) );
  OA22X1_RVT U118 ( .A1(n240), .A2(n8), .A3(n14), .A4(n3), .Y(n130) );
  OA22X1_RVT U119 ( .A1(n30), .A2(n7), .A3(T2_gt_1_2_mS), .A4(n91), .Y(n129)
         );
  AO22X1_RVT U120 ( .A1(n142), .A2(idle_cnt1_next[7]), .A3(n143), .A4(
        idle_cnt1[7]), .Y(n221) );
  AO22X1_RVT U121 ( .A1(n142), .A2(idle_cnt1_next[0]), .A3(n143), .A4(
        idle_cnt1[0]), .Y(n220) );
  AO22X1_RVT U122 ( .A1(n142), .A2(idle_cnt1_next[1]), .A3(n143), .A4(
        idle_cnt1[1]), .Y(n219) );
  AO22X1_RVT U123 ( .A1(n142), .A2(idle_cnt1_next[2]), .A3(n143), .A4(
        idle_cnt1[2]), .Y(n218) );
  AO22X1_RVT U124 ( .A1(n142), .A2(idle_cnt1_next[3]), .A3(n143), .A4(
        idle_cnt1[3]), .Y(n217) );
  AO22X1_RVT U125 ( .A1(n142), .A2(idle_cnt1_next[4]), .A3(n143), .A4(
        idle_cnt1[4]), .Y(n216) );
  AO22X1_RVT U126 ( .A1(n142), .A2(idle_cnt1_next[5]), .A3(n143), .A4(
        idle_cnt1[5]), .Y(n215) );
  AO22X1_RVT U127 ( .A1(n142), .A2(idle_cnt1_next[6]), .A3(n143), .A4(
        idle_cnt1[6]), .Y(n214) );
  AND4X1_RVT U128 ( .A1(n191), .A2(n271), .A3(n256), .A4(n144), .Y(n143) );
  INVX0_RVT U129 ( .A(n144), .Y(n142) );
  NAND4X0_RVT U130 ( .A1(n271), .A2(n256), .A3(n78), .A4(n145), .Y(n144) );
  AND2X1_RVT U131 ( .A1(ps_cnt_clr), .A2(n191), .Y(n145) );
  AO22X1_RVT U132 ( .A1(N166), .A2(n146), .A3(n147), .A4(me_ps2[0]), .Y(n213)
         );
  AO22X1_RVT U133 ( .A1(N167), .A2(n146), .A3(n147), .A4(me_ps2[1]), .Y(n212)
         );
  AO22X1_RVT U134 ( .A1(N168), .A2(n146), .A3(n147), .A4(me_ps2[2]), .Y(n211)
         );
  AO22X1_RVT U135 ( .A1(N169), .A2(n146), .A3(n147), .A4(me_ps2[3]), .Y(n210)
         );
  AO22X1_RVT U136 ( .A1(N170), .A2(n146), .A3(n147), .A4(me_ps2[4]), .Y(n209)
         );
  AO22X1_RVT U137 ( .A1(N171), .A2(n146), .A3(n147), .A4(me_ps2[5]), .Y(n208)
         );
  AO22X1_RVT U138 ( .A1(N172), .A2(n146), .A3(n147), .A4(me_ps2[6]), .Y(n207)
         );
  AO22X1_RVT U139 ( .A1(N173), .A2(n146), .A3(n147), .A4(me_ps2[7]), .Y(n206)
         );
  AND3X1_RVT U140 ( .A1(n57), .A2(n148), .A3(n82), .Y(n147) );
  INVX0_RVT U141 ( .A(n148), .Y(n146) );
  NAND3X0_RVT U142 ( .A1(n57), .A2(me_ps_2_5_us), .A3(n82), .Y(n148) );
  AO22X1_RVT U143 ( .A1(N205), .A2(n149), .A3(n150), .A4(me_cnt[7]), .Y(n205)
         );
  AO22X1_RVT U144 ( .A1(N198), .A2(n149), .A3(n150), .A4(me_cnt[0]), .Y(n204)
         );
  AO22X1_RVT U145 ( .A1(N199), .A2(n149), .A3(n150), .A4(me_cnt[1]), .Y(n203)
         );
  AO22X1_RVT U146 ( .A1(N200), .A2(n149), .A3(n150), .A4(me_cnt[2]), .Y(n202)
         );
  AO22X1_RVT U147 ( .A1(N201), .A2(n149), .A3(n150), .A4(me_cnt[3]), .Y(n201)
         );
  AO22X1_RVT U148 ( .A1(N202), .A2(n149), .A3(n150), .A4(me_cnt[4]), .Y(n200)
         );
  AO22X1_RVT U149 ( .A1(N203), .A2(n149), .A3(n150), .A4(me_cnt[5]), .Y(n199)
         );
  AO22X1_RVT U150 ( .A1(N204), .A2(n149), .A3(n150), .A4(me_cnt[6]), .Y(n198)
         );
  AND2X1_RVT U151 ( .A1(n56), .A2(n151), .Y(n150) );
  INVX0_RVT U152 ( .A(n151), .Y(n149) );
  NAND3X0_RVT U153 ( .A1(n84), .A2(n6), .A3(n57), .Y(n151) );
  OA21X1_RVT U154 ( .A1(usb_suspend), .A2(n152), .A3(n153), .Y(n197) );
  INVX0_RVT U155 ( .A(suspend_clr), .Y(n153) );
  NAND4X0_RVT U156 ( .A1(n154), .A2(n2), .A3(n8), .A4(n30), .Y(suspend_clr) );
  NAND2X0_RVT U157 ( .A1(state[3]), .A2(n155), .Y(n154) );
  NAND3X0_RVT U158 ( .A1(n73), .A2(n9), .A3(n156), .Y(n196) );
  NAND4X0_RVT U159 ( .A1(n157), .A2(OpMode[1]), .A3(n4), .A4(n1), .Y(n156) );
  OA21X1_RVT U160 ( .A1(n158), .A2(usb_attached), .A3(n2), .Y(n195) );
  AND2X1_RVT U161 ( .A1(state[8]), .A2(n14), .Y(n158) );
  MUX21X1_RVT U162 ( .A1(n105), .A2(n159), .S0(n10), .Y(n194) );
  AND2X1_RVT U163 ( .A1(n104), .A2(n91), .Y(n159) );
  MUX21X1_RVT U164 ( .A1(n106), .A2(n160), .S0(n85), .Y(n193) );
  AND2X1_RVT U165 ( .A1(n105), .A2(n10), .Y(n160) );
  INVX0_RVT U166 ( .A(n104), .Y(n105) );
  MUX21X1_RVT U167 ( .A1(n86), .A2(n91), .S0(n104), .Y(n106) );
  NAND3X0_RVT U168 ( .A1(n161), .A2(n91), .A3(n87), .Y(n104) );
  AO22X1_RVT U169 ( .A1(state[12]), .A2(n162), .A3(n118), .A4(state[11]), .Y(
        n161) );
  INVX0_RVT U170 ( .A(n115), .Y(n118) );
  NAND3X0_RVT U171 ( .A1(line_state_r[1]), .A2(ls_k_r), .A3(n71), .Y(n115) );
  XNOR2X1_RVT U172 ( .A1(ps_cnt[1]), .A2(n24), .Y(n192) );
  NAND3X0_RVT U173 ( .A1(n2), .A2(n1), .A3(n164), .Y(n113) );
  NAND3X0_RVT U174 ( .A1(XcvSelect), .A2(n9), .A3(n112), .Y(n111) );
  OA21X1_RVT U175 ( .A1(n157), .A2(n64), .A3(n4), .Y(n112) );
  AO22X1_RVT U176 ( .A1(usb_suspend), .A2(n33), .A3(LineState[1]), .A4(n165), 
        .Y(SuspendM) );
  INVX0_RVT U177 ( .A(LineState[0]), .Y(n165) );
  NOR4X0_RVT U178 ( .A1(n166), .A2(n167), .A3(n163), .A4(me_cnt[1]), .Y(N232)
         );
  NAND4X0_RVT U179 ( .A1(n164), .A2(n168), .A3(n169), .A4(n170), .Y(n163) );
  AND3X1_RVT U180 ( .A1(n73), .A2(n2), .A3(n157), .Y(n170) );
  NAND2X0_RVT U181 ( .A1(state[4]), .A2(n240), .Y(n157) );
  NAND2X0_RVT U182 ( .A1(state[5]), .A2(n7), .Y(n73) );
  INVX0_RVT U183 ( .A(n110), .Y(n169) );
  AO222X1_RVT U184 ( .A1(state[3]), .A2(n155), .A3(n171), .A4(state[2]), .A5(
        n172), .A6(state[1]), .Y(n110) );
  INVX0_RVT U185 ( .A(n125), .Y(n172) );
  INVX0_RVT U186 ( .A(n120), .Y(n171) );
  NAND2X0_RVT U187 ( .A1(n100), .A2(n13), .Y(n120) );
  INVX0_RVT U188 ( .A(n116), .Y(n155) );
  NAND2X0_RVT U189 ( .A1(n100), .A2(n5), .Y(n116) );
  INVX0_RVT U190 ( .A(n109), .Y(n100) );
  NAND2X0_RVT U191 ( .A1(n240), .A2(ls_se0_r), .Y(n109) );
  AND2X1_RVT U192 ( .A1(n71), .A2(n70), .Y(n240) );
  OR2X1_RVT U193 ( .A1(n9), .A2(n255), .Y(n168) );
  NAND3X0_RVT U194 ( .A1(mode_hs), .A2(n12), .A3(state[1]), .Y(n164) );
  NAND3X0_RVT U195 ( .A1(me_cnt[7]), .A2(me_cnt[6]), .A3(me_cnt[3]), .Y(n167)
         );
  NAND4X0_RVT U196 ( .A1(n265), .A2(n268), .A3(n269), .A4(n270), .Y(n166) );
  OR3X1_RVT U197 ( .A1(n173), .A2(n174), .A3(me_cnt[3]), .Y(N228) );
  AO21X1_RVT U198 ( .A1(n174), .A2(me_cnt[3]), .A3(n173), .Y(N226) );
  NAND4X0_RVT U199 ( .A1(n266), .A2(n267), .A3(n265), .A4(n268), .Y(n173) );
  AO21X1_RVT U200 ( .A1(me_cnt[1]), .A2(me_cnt[0]), .A3(me_cnt[2]), .Y(n174)
         );
  NOR4X0_RVT U201 ( .A1(n175), .A2(n176), .A3(n6), .A4(me_ps2[0]), .Y(N192) );
  NAND3X0_RVT U202 ( .A1(me_ps2[6]), .A2(me_ps2[7]), .A3(me_ps2[3]), .Y(n176)
         );
  NAND4X0_RVT U203 ( .A1(n251), .A2(n252), .A3(n253), .A4(n254), .Y(n175) );
  AO21X1_RVT U204 ( .A1(n177), .A2(idle_cnt1[6]), .A3(idle_cnt1[7]), .Y(N140)
         );
  AO21X1_RVT U205 ( .A1(n178), .A2(idle_cnt1[4]), .A3(idle_cnt1[5]), .Y(n177)
         );
  NAND3X0_RVT U206 ( .A1(n259), .A2(n179), .A3(n260), .Y(N138) );
  NAND2X0_RVT U207 ( .A1(n81), .A2(n178), .Y(n179) );
  NAND4X0_RVT U208 ( .A1(n263), .A2(n264), .A3(n77), .A4(n76), .Y(n178) );
  INVX0_RVT U209 ( .A(n180), .Y(n81) );
  AND3X1_RVT U210 ( .A1(n259), .A2(n180), .A3(n260), .Y(N136) );
  NAND2X0_RVT U211 ( .A1(idle_cnt1[5]), .A2(idle_cnt1[4]), .Y(n180) );
  NAND4X0_RVT U212 ( .A1(n262), .A2(n260), .A3(n181), .A4(n259), .Y(N134) );
  OA21X1_RVT U213 ( .A1(n263), .A2(n182), .A3(n261), .Y(n181) );
  OA21X1_RVT U214 ( .A1(n264), .A2(n77), .A3(n76), .Y(n182) );
  MUX21X1_RVT U215 ( .A1(n183), .A2(n184), .S0(ps_cnt[3]), .Y(N102) );
  AO21X1_RVT U216 ( .A1(n190), .A2(n15), .A3(n185), .Y(n184) );
  AND2X1_RVT U217 ( .A1(n186), .A2(ps_cnt[2]), .Y(n183) );
  MUX21X1_RVT U218 ( .A1(n185), .A2(n186), .S0(n15), .Y(N101) );
  AND3X1_RVT U219 ( .A1(ps_cnt[1]), .A2(ps_cnt[0]), .A3(n190), .Y(n186) );
  AO21X1_RVT U220 ( .A1(n190), .A2(n27), .A3(N99), .Y(n185) );
  AND2X1_RVT U221 ( .A1(n190), .A2(n24), .Y(N99) );
  AND3X1_RVT U222 ( .A1(n256), .A2(n42), .A3(n271), .Y(n190) );
  NOR2X0_RVT U223 ( .A1(n152), .A2(state[8]), .Y(n271) );
  NAND2X0_RVT U224 ( .A1(n122), .A2(n187), .Y(n152) );
  NAND3X0_RVT U225 ( .A1(n162), .A2(n13), .A3(state[2]), .Y(n187) );
  INVX0_RVT U226 ( .A(n139), .Y(n162) );
  NAND2X0_RVT U227 ( .A1(n241), .A2(ls_j_r), .Y(n139) );
  NOR2X0_RVT U228 ( .A1(line_state_r[1]), .A2(n71), .Y(n241) );
  NAND3X0_RVT U229 ( .A1(n188), .A2(n125), .A3(state[1]), .Y(n122) );
  NAND4X0_RVT U230 ( .A1(n64), .A2(T1_st_3_0_mS), .A3(n5), .A4(n36), .Y(n125)
         );
  INVX0_RVT U231 ( .A(n124), .Y(n188) );
  NAND2X0_RVT U232 ( .A1(n64), .A2(n12), .Y(n124) );
endmodule


module usbf_utmi_if ( phy_clk, rst, DataOut, TxValid, TxReady, RxValid, 
        RxActive, RxError, DataIn, XcvSelect, TermSel, SuspendM, LineState, 
        OpMode, usb_vbus, rx_data, rx_valid, rx_active, rx_err, tx_data, 
        tx_valid, tx_valid_last, tx_ready, tx_first, mode_hs, usb_reset, 
        usb_suspend, usb_attached, resume_req, suspend_clr );
  output [7:0] DataOut;
  input [7:0] DataIn;
  input [1:0] LineState;
  output [1:0] OpMode;
  output [7:0] rx_data;
  input [7:0] tx_data;
  input phy_clk, rst, TxReady, RxValid, RxActive, RxError, usb_vbus, tx_valid,
         tx_valid_last, tx_first, resume_req;
  output TxValid, XcvSelect, TermSel, SuspendM, rx_valid, rx_active, rx_err,
         tx_ready, mode_hs, usb_reset, usb_suspend, usb_attached, suspend_clr;
  wire   drive_k, drive_k_r, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign OpMode[0] = 1'b0;

  usbf_utmi_ls u0 ( .clk(n19), .rst(rst), .resume_req(resume_req), .rx_active(
        rx_active), .tx_ready(tx_ready), .drive_k(drive_k), .XcvSelect(
        XcvSelect), .TermSel(TermSel), .SuspendM(SuspendM), .LineState(
        LineState), .OpMode({OpMode[1], SYNOPSYS_UNCONNECTED__0}), .usb_vbus(
        usb_vbus), .mode_hs(mode_hs), .usb_reset(usb_reset), .usb_suspend(
        usb_suspend), .usb_attached(usb_attached), .suspend_clr(suspend_clr)
         );
  DFFX1_RVT \DataOut_reg[1]  ( .D(n10), .CLK(n19), .Q(DataOut[1]) );
  DFFX1_RVT \DataOut_reg[2]  ( .D(n11), .CLK(n18), .Q(DataOut[2]) );
  DFFX1_RVT \DataOut_reg[3]  ( .D(n12), .CLK(n18), .Q(DataOut[3]) );
  DFFX1_RVT \DataOut_reg[4]  ( .D(n13), .CLK(n18), .Q(DataOut[4]) );
  DFFX1_RVT \DataOut_reg[5]  ( .D(n14), .CLK(n18), .Q(DataOut[5]) );
  DFFX1_RVT \DataOut_reg[6]  ( .D(n15), .CLK(n18), .Q(DataOut[6]) );
  DFFX1_RVT \DataOut_reg[7]  ( .D(n16), .CLK(n18), .Q(DataOut[7]) );
  DFFX1_RVT \DataOut_reg[0]  ( .D(n17), .CLK(n18), .Q(DataOut[0]) );
  DFFX1_RVT drive_k_r_reg ( .D(drive_k), .CLK(n18), .Q(drive_k_r) );
  DFFSSRX1_RVT rx_valid_reg ( .D(RxValid), .SETB(1'b1), .RSTB(rst), .CLK(n18), 
        .Q(rx_valid) );
  DFFSSRX1_RVT rx_err_reg ( .D(RxError), .SETB(1'b1), .RSTB(rst), .CLK(n18), 
        .Q(rx_err) );
  DFFSSRX1_RVT TxValid_reg ( .D(n8), .SETB(1'b1), .RSTB(rst), .CLK(n18), .Q(
        TxValid), .QN(n5) );
  DFFX1_RVT \rx_data_reg[3]  ( .D(DataIn[3]), .CLK(n19), .Q(rx_data[3]) );
  DFFX1_RVT \rx_data_reg[2]  ( .D(DataIn[2]), .CLK(n19), .Q(rx_data[2]) );
  DFFX1_RVT \rx_data_reg[0]  ( .D(DataIn[0]), .CLK(n19), .Q(rx_data[0]) );
  DFFX1_RVT tx_ready_reg ( .D(TxReady), .CLK(n19), .Q(tx_ready) );
  DFFX1_RVT \rx_data_reg[7]  ( .D(DataIn[7]), .CLK(n19), .Q(rx_data[7]) );
  DFFX1_RVT \rx_data_reg[5]  ( .D(DataIn[5]), .CLK(n19), .Q(rx_data[5]) );
  DFFX1_RVT \rx_data_reg[1]  ( .D(DataIn[1]), .CLK(n19), .Q(rx_data[1]) );
  DFFX1_RVT \rx_data_reg[6]  ( .D(DataIn[6]), .CLK(n19), .Q(rx_data[6]) );
  DFFX1_RVT \rx_data_reg[4]  ( .D(DataIn[4]), .CLK(n19), .Q(rx_data[4]) );
  DFFSSRX1_RVT rx_active_reg ( .D(RxActive), .SETB(1'b1), .RSTB(rst), .CLK(n18), .Q(rx_active) );
  INVX1_RVT U7 ( .A(n20), .Y(n18) );
  INVX1_RVT U8 ( .A(n20), .Y(n19) );
  INVX1_RVT U9 ( .A(phy_clk), .Y(n20) );
  AO22X1_RVT U10 ( .A1(DataOut[0]), .A2(n6), .A3(tx_data[0]), .A4(n7), .Y(n17)
         );
  AO22X1_RVT U11 ( .A1(DataOut[7]), .A2(n6), .A3(tx_data[7]), .A4(n7), .Y(n16)
         );
  AO22X1_RVT U12 ( .A1(DataOut[6]), .A2(n6), .A3(tx_data[6]), .A4(n7), .Y(n15)
         );
  AO22X1_RVT U13 ( .A1(DataOut[5]), .A2(n6), .A3(tx_data[5]), .A4(n7), .Y(n14)
         );
  AO22X1_RVT U14 ( .A1(DataOut[3]), .A2(n6), .A3(tx_data[3]), .A4(n7), .Y(n12)
         );
  AO22X1_RVT U15 ( .A1(DataOut[2]), .A2(n6), .A3(tx_data[2]), .A4(n7), .Y(n11)
         );
  AO22X1_RVT U16 ( .A1(DataOut[1]), .A2(n6), .A3(tx_data[1]), .A4(n7), .Y(n10)
         );
  AO22X1_RVT U17 ( .A1(DataOut[4]), .A2(n6), .A3(tx_data[4]), .A4(n7), .Y(n13)
         );
  OR2X1_RVT U18 ( .A1(TxReady), .A2(tx_first), .Y(n7) );
  NOR2X0_RVT U19 ( .A1(n7), .A2(drive_k), .Y(n6) );
  OR4X1_RVT U20 ( .A1(tx_valid_last), .A2(tx_valid), .A3(drive_k), .A4(n9), 
        .Y(n8) );
  NOR3X0_RVT U21 ( .A1(TxReady), .A2(drive_k_r), .A3(n5), .Y(n9) );
endmodule


module usbf_crc5 ( crc_in, din, crc_out );
  input [4:0] crc_in;
  input [10:0] din;
  output [4:0] crc_out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  XNOR3X1_RVT U1 ( .A1(n1), .A2(n2), .A3(n3), .Y(crc_out[4]) );
  XNOR2X1_RVT U2 ( .A1(din[5]), .A2(n9), .Y(crc_out[0]) );
  XNOR3X1_RVT U3 ( .A1(n4), .A2(n10), .A3(n11), .Y(crc_out[1]) );
  XNOR3X1_RVT U4 ( .A1(n3), .A2(n4), .A3(n5), .Y(crc_out[3]) );
  XOR2X1_RVT U5 ( .A1(n12), .A2(din[4]), .Y(n11) );
  XOR2X1_RVT U6 ( .A1(din[5]), .A2(din[2]), .Y(n1) );
  XNOR3X1_RVT U7 ( .A1(n7), .A2(n8), .A3(n9), .Y(crc_out[2]) );
  XNOR2X1_RVT U8 ( .A1(din[2]), .A2(n6), .Y(n7) );
  XNOR3X1_RVT U9 ( .A1(n5), .A2(din[0]), .A3(n10), .Y(n9) );
  XNOR3X1_RVT U10 ( .A1(din[9]), .A2(crc_in[3]), .A3(n12), .Y(n2) );
  XOR2X1_RVT U11 ( .A1(din[7]), .A2(crc_in[1]), .Y(n8) );
  XNOR2X1_RVT U12 ( .A1(din[10]), .A2(crc_in[4]), .Y(n12) );
  XNOR2X1_RVT U13 ( .A1(din[8]), .A2(crc_in[2]), .Y(n6) );
  XNOR2X1_RVT U14 ( .A1(din[6]), .A2(crc_in[0]), .Y(n10) );
  XNOR2X1_RVT U15 ( .A1(n2), .A2(din[3]), .Y(n5) );
  XOR2X1_RVT U16 ( .A1(n6), .A2(din[4]), .Y(n3) );
  XNOR2X1_RVT U17 ( .A1(n8), .A2(din[1]), .Y(n4) );
endmodule


module usbf_crc16_1 ( crc_in, din, crc_out );
  input [15:0] crc_in;
  input [7:0] din;
  output [15:0] crc_out;
  wire   crc_in_1, crc_in_0, \crc_in[6] , \crc_in[5] , \crc_in[4] ,
         \crc_in[3] , \crc_in[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  assign crc_in_1 = crc_in[1];
  assign crc_in_0 = crc_in[0];
  assign crc_out[14] = \crc_in[6] ;
  assign \crc_in[6]  = crc_in[6];
  assign crc_out[13] = \crc_in[5] ;
  assign \crc_in[5]  = crc_in[5];
  assign crc_out[12] = \crc_in[4] ;
  assign \crc_in[4]  = crc_in[4];
  assign crc_out[11] = \crc_in[3] ;
  assign \crc_in[3]  = crc_in[3];
  assign crc_out[10] = \crc_in[2] ;
  assign \crc_in[2]  = crc_in[2];

  XNOR3X1_RVT U1 ( .A1(crc_out[5]), .A2(crc_out[3]), .A3(n10), .Y(crc_out[1])
         );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(n4), .Y(n10) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(n1), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(crc_out[1]), .A2(n9), .Y(crc_out[0]) );
  XNOR2X1_RVT U5 ( .A1(n8), .A2(n7), .Y(crc_out[3]) );
  XNOR2X1_RVT U6 ( .A1(n6), .A2(n5), .Y(crc_out[5]) );
  XOR2X1_RVT U7 ( .A1(crc_in[7]), .A2(crc_out[0]), .Y(crc_out[15]) );
  XOR2X1_RVT U8 ( .A1(crc_in_1), .A2(n1), .Y(crc_out[9]) );
  XOR2X1_RVT U9 ( .A1(crc_in_0), .A2(n2), .Y(crc_out[8]) );
  XNOR2X1_RVT U10 ( .A1(n3), .A2(n4), .Y(crc_out[7]) );
  XOR2X1_RVT U11 ( .A1(n4), .A2(n5), .Y(crc_out[6]) );
  XNOR2X1_RVT U12 ( .A1(n6), .A2(n7), .Y(crc_out[4]) );
  XNOR2X1_RVT U13 ( .A1(n8), .A2(n9), .Y(crc_out[2]) );
  XOR2X1_RVT U14 ( .A1(din[5]), .A2(crc_in[13]), .Y(n4) );
  XNOR2X1_RVT U15 ( .A1(din[1]), .A2(crc_in[9]), .Y(n8) );
  XNOR2X1_RVT U16 ( .A1(din[3]), .A2(crc_in[11]), .Y(n6) );
  XNOR2X1_RVT U17 ( .A1(din[6]), .A2(crc_in[14]), .Y(n3) );
  XOR2X1_RVT U18 ( .A1(din[2]), .A2(crc_in[10]), .Y(n7) );
  XOR2X1_RVT U19 ( .A1(din[7]), .A2(crc_in[15]), .Y(n1) );
  XOR2X1_RVT U20 ( .A1(din[4]), .A2(crc_in[12]), .Y(n5) );
  XOR2X1_RVT U21 ( .A1(din[0]), .A2(crc_in[8]), .Y(n9) );
endmodule


module usbf_pd ( clk, rst, rx_data, rx_valid, rx_active, rx_err, pid_OUT, 
        pid_IN, pid_SOF, pid_SETUP, pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA, 
        pid_ACK, pid_NACK, pid_STALL, pid_NYET, pid_PRE, pid_ERR, pid_SPLIT, 
        pid_PING, pid_cks_err, token_fadr, token_endp, token_valid, crc5_err, 
        frame_no, rx_data_st, rx_data_valid, rx_data_done, crc16_err, seq_err
 );
  input [7:0] rx_data;
  output [6:0] token_fadr;
  output [3:0] token_endp;
  output [10:0] frame_no;
  output [7:0] rx_data_st;
  input clk, rst, rx_valid, rx_active, rx_err;
  output pid_OUT, pid_IN, pid_SOF, pid_SETUP, pid_DATA0, pid_DATA1, pid_DATA2,
         pid_MDATA, pid_ACK, pid_NACK, pid_STALL, pid_NYET, pid_PRE, pid_ERR,
         pid_SPLIT, pid_PING, pid_cks_err, token_valid, crc5_err,
         rx_data_valid, rx_data_done, crc16_err, seq_err;
  wire   \token_endp[3] , \token_endp[2] , \token_endp[1] , \token_endp[0] ,
         \token_fadr[6] , \token_fadr[5] , \token_fadr[4] , \token_fadr[3] ,
         \token_fadr[2] , \token_fadr[1] , \token_fadr[0] , token_valid_r1,
         N40, rxv1, rxv2, rx_active_r, N234, n14, n15, n16, n22, n28, n31, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, pid_PRE, \ne_263/A[2] , n1, n2,
         n3, n4, n9, n10, n11, n12, n13, n17, n18, n19, n20, n21, n23, n24,
         n25, n26, n27, n29, n30, n32, n33, n34, n35, n36, n37, n52, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n170,
         n171, n172, n173;
  wire   [7:0] pid;
  wire   [7:3] token1;
  wire   [4:0] crc5_out;
  wire   [7:0] d0;
  wire   [7:0] d1;
  wire   [15:0] crc16_sum;
  wire   [15:0] crc16_out;
  wire   [3:0] state;
  assign frame_no[10] = \token_endp[3] ;
  assign token_endp[3] = \token_endp[3] ;
  assign frame_no[9] = \token_endp[2] ;
  assign token_endp[2] = \token_endp[2] ;
  assign frame_no[8] = \token_endp[1] ;
  assign token_endp[1] = \token_endp[1] ;
  assign frame_no[7] = \token_endp[0] ;
  assign token_endp[0] = \token_endp[0] ;
  assign frame_no[6] = \token_fadr[6] ;
  assign token_fadr[6] = \token_fadr[6] ;
  assign frame_no[5] = \token_fadr[5] ;
  assign token_fadr[5] = \token_fadr[5] ;
  assign frame_no[4] = \token_fadr[4] ;
  assign token_fadr[4] = \token_fadr[4] ;
  assign frame_no[3] = \token_fadr[3] ;
  assign token_fadr[3] = \token_fadr[3] ;
  assign frame_no[2] = \token_fadr[2] ;
  assign token_fadr[2] = \token_fadr[2] ;
  assign frame_no[1] = \token_fadr[1] ;
  assign token_fadr[1] = \token_fadr[1] ;
  assign frame_no[0] = \token_fadr[0] ;
  assign token_fadr[0] = \token_fadr[0] ;
  assign pid_MDATA = N234;
  assign pid_ERR = pid_PRE;

  usbf_crc5 u0 ( .crc_in({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .din({
        \token_fadr[0] , \token_fadr[1] , \token_fadr[2] , \token_fadr[3] , 
        \token_fadr[4] , \token_fadr[5] , \token_fadr[6] , \token_endp[0] , 
        \token_endp[1] , \token_endp[2] , \token_endp[3] }), .crc_out(crc5_out) );
  usbf_crc16_1 u1 ( .crc_in(crc16_sum), .din({rx_data[0], rx_data[1], 
        rx_data[2], rx_data[3], rx_data[4], rx_data[5], rx_data[6], rx_data[7]}), .crc_out(crc16_out) );
  DFFX1_RVT rx_active_r_reg ( .D(rx_active), .CLK(n24), .Q(rx_active_r) );
  DFFX1_RVT \state_reg[1]  ( .D(n151), .CLK(n24), .Q(state[1]) );
  DFFX1_RVT \d0_reg[0]  ( .D(n130), .CLK(n27), .Q(d0[0]) );
  DFFX1_RVT \d1_reg[0]  ( .D(n122), .CLK(n27), .Q(d1[0]) );
  DFFX1_RVT \d0_reg[1]  ( .D(n131), .CLK(n27), .Q(d0[1]) );
  DFFX1_RVT \d1_reg[1]  ( .D(n123), .CLK(n27), .Q(d1[1]) );
  DFFX1_RVT \d0_reg[2]  ( .D(n132), .CLK(n27), .Q(d0[2]) );
  DFFX1_RVT \d1_reg[2]  ( .D(n124), .CLK(n27), .Q(d1[2]) );
  DFFX1_RVT \d0_reg[3]  ( .D(n133), .CLK(n27), .Q(d0[3]) );
  DFFX1_RVT \d1_reg[3]  ( .D(n125), .CLK(n27), .Q(d1[3]) );
  DFFX1_RVT \d0_reg[4]  ( .D(n134), .CLK(n29), .Q(d0[4]) );
  DFFX1_RVT \d1_reg[4]  ( .D(n126), .CLK(n29), .Q(d1[4]) );
  DFFX1_RVT \d0_reg[5]  ( .D(n135), .CLK(n29), .Q(d0[5]) );
  DFFX1_RVT \d1_reg[5]  ( .D(n127), .CLK(n29), .Q(d1[5]) );
  DFFX1_RVT \d0_reg[6]  ( .D(n136), .CLK(n29), .Q(d0[6]) );
  DFFX1_RVT \d1_reg[6]  ( .D(n128), .CLK(n29), .Q(d1[6]) );
  DFFX1_RVT \d0_reg[7]  ( .D(n137), .CLK(n29), .Q(d0[7]) );
  DFFX1_RVT \d1_reg[7]  ( .D(n129), .CLK(n29), .Q(d1[7]) );
  DFFX1_RVT rxv2_reg ( .D(n89), .CLK(n26), .Q(rxv2) );
  DFFX1_RVT \d2_reg[0]  ( .D(n114), .CLK(n27), .Q(rx_data_st[0]) );
  DFFX1_RVT \d2_reg[1]  ( .D(n115), .CLK(n27), .Q(rx_data_st[1]) );
  DFFX1_RVT \d2_reg[2]  ( .D(n116), .CLK(n27), .Q(rx_data_st[2]) );
  DFFX1_RVT \d2_reg[3]  ( .D(n117), .CLK(n27), .Q(rx_data_st[3]) );
  DFFX1_RVT \d2_reg[4]  ( .D(n118), .CLK(n29), .Q(rx_data_st[4]) );
  DFFX1_RVT \d2_reg[5]  ( .D(n119), .CLK(n29), .Q(rx_data_st[5]) );
  DFFX1_RVT \d2_reg[6]  ( .D(n120), .CLK(n29), .Q(rx_data_st[6]) );
  DFFX1_RVT \d2_reg[7]  ( .D(n121), .CLK(n29), .Q(rx_data_st[7]) );
  DFFX1_RVT \crc16_sum_reg[2]  ( .D(n110), .CLK(n26), .Q(crc16_sum[2]) );
  DFFX1_RVT \crc16_sum_reg[3]  ( .D(n109), .CLK(n26), .Q(crc16_sum[3]) );
  DFFX1_RVT \state_reg[3]  ( .D(n156), .CLK(n26), .Q(state[3]), .QN(n28) );
  DFFX1_RVT \crc16_sum_reg[6]  ( .D(n106), .CLK(n30), .Q(crc16_sum[6]) );
  DFFX1_RVT \crc16_sum_reg[4]  ( .D(n108), .CLK(n30), .Q(crc16_sum[4]) );
  DFFX1_RVT \pid_reg[3]  ( .D(n152), .CLK(n24), .Q(pid[3]), .QN(n14) );
  DFFX1_RVT \pid_reg[0]  ( .D(n155), .CLK(n24), .Q(pid[0]), .QN(n22) );
  DFFX1_RVT \pid_reg[2]  ( .D(n153), .CLK(n24), .Q(pid[2]), .QN(n15) );
  DFFX1_RVT \crc16_sum_reg[5]  ( .D(n107), .CLK(n30), .Q(crc16_sum[5]) );
  DFFX1_RVT \token1_reg[3]  ( .D(n93), .CLK(n26), .Q(token1[3]), .QN(n2) );
  DFFX1_RVT \token1_reg[4]  ( .D(n94), .CLK(n26), .Q(token1[4]), .QN(n1) );
  DFFX1_RVT \token1_reg[5]  ( .D(n95), .CLK(n26), .Q(token1[5]) );
  DFFX1_RVT \token1_reg[6]  ( .D(n96), .CLK(n26), .Q(token1[6]), .QN(n3) );
  DFFX1_RVT \token1_reg[7]  ( .D(n97), .CLK(n26), .Q(token1[7]), .QN(n4) );
  DFFX1_RVT \pid_reg[1]  ( .D(n154), .CLK(n24), .Q(pid[1]), .QN(n16) );
  DFFX1_RVT \state_reg[2]  ( .D(n150), .CLK(n25), .Q(state[2]), .QN(n31) );
  DFFX1_RVT \state_reg[0]  ( .D(n157), .CLK(n24), .Q(state[0]) );
  DFFX1_RVT \pid_reg[7]  ( .D(n146), .CLK(n24), .Q(pid[7]) );
  DFFX1_RVT \pid_reg[6]  ( .D(n147), .CLK(n24), .Q(pid[6]) );
  DFFX1_RVT \pid_reg[5]  ( .D(n148), .CLK(n24), .Q(pid[5]) );
  DFFX1_RVT \pid_reg[4]  ( .D(n149), .CLK(n24), .Q(pid[4]) );
  DFFX1_RVT \crc16_sum_reg[0]  ( .D(n112), .CLK(n26), .Q(crc16_sum[0]) );
  DFFX1_RVT \crc16_sum_reg[15]  ( .D(n113), .CLK(n26), .Q(crc16_sum[15]) );
  DFFX1_RVT \crc16_sum_reg[1]  ( .D(n111), .CLK(n26), .Q(crc16_sum[1]) );
  DFFX1_RVT \crc16_sum_reg[7]  ( .D(n105), .CLK(n30), .Q(crc16_sum[7]) );
  DFFX1_RVT \crc16_sum_reg[14]  ( .D(n98), .CLK(n30), .Q(crc16_sum[14]) );
  DFFX1_RVT \crc16_sum_reg[10]  ( .D(n102), .CLK(n30), .Q(crc16_sum[10]) );
  DFFX1_RVT \crc16_sum_reg[11]  ( .D(n101), .CLK(n30), .Q(crc16_sum[11]) );
  DFFX1_RVT \crc16_sum_reg[8]  ( .D(n104), .CLK(n30), .Q(crc16_sum[8]) );
  DFFX1_RVT \crc16_sum_reg[12]  ( .D(n100), .CLK(n30), .Q(crc16_sum[12]) );
  DFFX1_RVT \crc16_sum_reg[9]  ( .D(n103), .CLK(n30), .Q(crc16_sum[9]) );
  DFFX1_RVT \crc16_sum_reg[13]  ( .D(n99), .CLK(n30), .Q(crc16_sum[13]) );
  DFFSSRX1_RVT rxv1_reg ( .D(n50), .SETB(n18), .RSTB(n21), .CLK(n24), .Q(rxv1)
         );
  DFFX1_RVT \token1_reg[2]  ( .D(n92), .CLK(n25), .Q(\token_endp[3] ) );
  DFFX1_RVT \token0_reg[7]  ( .D(n145), .CLK(n25), .Q(\token_endp[0] ) );
  DFFX1_RVT \token1_reg[1]  ( .D(n91), .CLK(n25), .Q(\token_endp[2] ) );
  DFFX1_RVT \token0_reg[1]  ( .D(n139), .CLK(n25), .Q(\token_fadr[1] ) );
  SDFFSSRX1_RVT token_valid_str1_reg ( .RSTB(state[1]), .SETB(1'b1), .D(n160), 
        .SI(1'b1), .SE(token_valid_r1), .CLK(n30), .Q(token_valid) );
  DFFX1_RVT \token0_reg[0]  ( .D(n138), .CLK(n25), .Q(\token_fadr[0] ) );
  DFFX1_RVT \token0_reg[3]  ( .D(n141), .CLK(n25), .Q(\token_fadr[3] ) );
  DFFX1_RVT \token0_reg[2]  ( .D(n140), .CLK(n25), .Q(\token_fadr[2] ) );
  DFFX1_RVT \token0_reg[4]  ( .D(n142), .CLK(n25), .Q(\token_fadr[4] ) );
  DFFX1_RVT \token1_reg[0]  ( .D(n90), .CLK(n25), .Q(\token_endp[1] ) );
  DFFX1_RVT \token0_reg[6]  ( .D(n144), .CLK(n25), .Q(\token_fadr[6] ) );
  DFFX1_RVT \token0_reg[5]  ( .D(n143), .CLK(n25), .Q(\token_fadr[5] ) );
  SDFFSSRX1_RVT token_valid_r1_reg ( .RSTB(n173), .SETB(1'b1), .D(n171), .SI(
        1'b0), .SE(n31), .CLK(n30), .Q(token_valid_r1) );
  DFFSSRX1_RVT data_valid0_reg ( .D(rxv2), .SETB(1'b1), .RSTB(n12), .CLK(n24), 
        .Q(rx_data_valid) );
  INVX1_RVT U4 ( .A(n32), .Y(n30) );
  INVX1_RVT U8 ( .A(n32), .Y(n29) );
  INVX1_RVT U9 ( .A(n32), .Y(n27) );
  INVX1_RVT U10 ( .A(n32), .Y(n26) );
  INVX1_RVT U11 ( .A(n32), .Y(n25) );
  INVX1_RVT U12 ( .A(n32), .Y(n24) );
  INVX1_RVT U13 ( .A(clk), .Y(n32) );
  INVX1_RVT U14 ( .A(n63), .Y(n165) );
  INVX1_RVT U15 ( .A(n23), .Y(n21) );
  INVX1_RVT U16 ( .A(n18), .Y(n13) );
  INVX1_RVT U17 ( .A(n18), .Y(n12) );
  INVX1_RVT U18 ( .A(n53), .Y(n162) );
  INVX1_RVT U19 ( .A(n77), .Y(n170) );
  AND2X1_RVT U20 ( .A1(n160), .A2(state[1]), .Y(n76) );
  INVX1_RVT U21 ( .A(n67), .Y(n160) );
  NAND2X0_RVT U22 ( .A1(n166), .A2(n170), .Y(n63) );
  INVX1_RVT U23 ( .A(n54), .Y(n159) );
  INVX1_RVT U24 ( .A(n47), .Y(n20) );
  INVX1_RVT U25 ( .A(rst), .Y(n23) );
  INVX1_RVT U26 ( .A(n47), .Y(n17) );
  INVX1_RVT U27 ( .A(n47), .Y(n18) );
  INVX1_RVT U28 ( .A(n47), .Y(n19) );
  INVX1_RVT U29 ( .A(n61), .Y(n158) );
  AND2X1_RVT U30 ( .A1(n21), .A2(n54), .Y(n59) );
  AND2X1_RVT U31 ( .A1(n21), .A2(n61), .Y(n56) );
  AND3X1_RVT U32 ( .A1(n57), .A2(n67), .A3(n64), .Y(n40) );
  INVX1_RVT U33 ( .A(n49), .Y(rx_data_done) );
  INVX1_RVT U34 ( .A(n68), .Y(n166) );
  INVX1_RVT U35 ( .A(n51), .Y(n168) );
  AND2X1_RVT U36 ( .A1(n82), .A2(n166), .Y(N234) );
  AND2X1_RVT U37 ( .A1(n83), .A2(n71), .Y(pid_IN) );
  AND2X1_RVT U38 ( .A1(n71), .A2(n80), .Y(pid_OUT) );
  AND2X1_RVT U39 ( .A1(n82), .A2(n71), .Y(pid_SETUP) );
  AND2X1_RVT U40 ( .A1(n81), .A2(n80), .Y(pid_ACK) );
  INVX1_RVT U41 ( .A(n74), .Y(n171) );
  AND2X1_RVT U42 ( .A1(n79), .A2(n70), .Y(pid_PING) );
  INVX1_RVT U43 ( .A(n9), .Y(n10) );
  AND2X1_RVT U44 ( .A1(n82), .A2(n79), .Y(pid_PRE) );
  AND2X1_RVT U45 ( .A1(n83), .A2(n166), .Y(pid_DATA1) );
  AND2X1_RVT U46 ( .A1(n71), .A2(n70), .Y(pid_SOF) );
  AND2X1_RVT U47 ( .A1(n38), .A2(n173), .Y(seq_err) );
  AND2X1_RVT U48 ( .A1(n83), .A2(n81), .Y(pid_NACK) );
  AND2X1_RVT U49 ( .A1(n83), .A2(n79), .Y(pid_SPLIT) );
  AND2X1_RVT U50 ( .A1(n70), .A2(n81), .Y(pid_NYET) );
  AND2X1_RVT U51 ( .A1(n82), .A2(n81), .Y(pid_STALL) );
  INVX1_RVT U52 ( .A(n9), .Y(n11) );
  NAND2X0_RVT U53 ( .A1(n163), .A2(state[1]), .Y(n53) );
  INVX1_RVT U54 ( .A(n57), .Y(n163) );
  AND2X1_RVT U55 ( .A1(n166), .A2(n70), .Y(pid_DATA2) );
  NAND2X0_RVT U56 ( .A1(n171), .A2(n173), .Y(n77) );
  NAND2X0_RVT U57 ( .A1(pid_ACK), .A2(n173), .Y(n67) );
  NAND2X0_RVT U58 ( .A1(n61), .A2(n58), .Y(n55) );
  INVX1_RVT U59 ( .A(crc5_out[2]), .Y(\ne_263/A[2] ) );
  INVX1_RVT U60 ( .A(rx_active), .Y(n172) );
  AO221X1_RVT U61 ( .A1(pid[4]), .A2(n54), .A3(n159), .A4(rx_data[4]), .A5(n23), .Y(n149) );
  AO221X1_RVT U62 ( .A1(pid[5]), .A2(n54), .A3(n159), .A4(rx_data[5]), .A5(n23), .Y(n148) );
  AO221X1_RVT U63 ( .A1(pid[6]), .A2(n54), .A3(n159), .A4(rx_data[6]), .A5(n23), .Y(n147) );
  AO221X1_RVT U64 ( .A1(pid[7]), .A2(n54), .A3(n159), .A4(rx_data[7]), .A5(n23), .Y(n146) );
  AO22X1_RVT U65 ( .A1(n159), .A2(rx_data[0]), .A3(n59), .A4(pid[0]), .Y(n155)
         );
  AO22X1_RVT U66 ( .A1(n159), .A2(rx_data[1]), .A3(n59), .A4(pid[1]), .Y(n154)
         );
  AO22X1_RVT U67 ( .A1(n159), .A2(rx_data[2]), .A3(n59), .A4(pid[2]), .Y(n153)
         );
  AO22X1_RVT U68 ( .A1(n159), .A2(rx_data[3]), .A3(n59), .A4(pid[3]), .Y(n152)
         );
  AO22X1_RVT U69 ( .A1(d0[7]), .A2(n47), .A3(d1[7]), .A4(n19), .Y(n129) );
  AO22X1_RVT U70 ( .A1(rx_data[6]), .A2(n47), .A3(d0[6]), .A4(n20), .Y(n136)
         );
  AO22X1_RVT U71 ( .A1(d0[5]), .A2(n47), .A3(d1[5]), .A4(n19), .Y(n127) );
  AO22X1_RVT U72 ( .A1(rx_data[5]), .A2(n47), .A3(d0[5]), .A4(n20), .Y(n135)
         );
  AO22X1_RVT U73 ( .A1(rx_data[4]), .A2(n47), .A3(d0[4]), .A4(n20), .Y(n134)
         );
  AO22X1_RVT U74 ( .A1(rx_data[3]), .A2(n47), .A3(d0[3]), .A4(n20), .Y(n133)
         );
  AO22X1_RVT U75 ( .A1(rx_data[2]), .A2(n47), .A3(d0[2]), .A4(n20), .Y(n132)
         );
  AO22X1_RVT U76 ( .A1(rx_data[1]), .A2(n47), .A3(d0[1]), .A4(n18), .Y(n131)
         );
  AO22X1_RVT U77 ( .A1(rx_data[0]), .A2(n47), .A3(d0[0]), .A4(n19), .Y(n130)
         );
  INVX1_RVT U78 ( .A(rx_err), .Y(n173) );
  AO22X1_RVT U79 ( .A1(rxv2), .A2(n164), .A3(n45), .A4(n21), .Y(n89) );
  AND2X1_RVT U80 ( .A1(n46), .A2(n13), .Y(n45) );
  INVX1_RVT U81 ( .A(n46), .Y(n164) );
  NAND3X0_RVT U82 ( .A1(n48), .A2(n49), .A3(n21), .Y(n46) );
  AO22X1_RVT U83 ( .A1(rx_data[7]), .A2(n13), .A3(d0[7]), .A4(n18), .Y(n137)
         );
  AO22X1_RVT U84 ( .A1(d1[2]), .A2(n13), .A3(rx_data_st[2]), .A4(n18), .Y(n116) );
  AO22X1_RVT U85 ( .A1(d1[1]), .A2(n13), .A3(rx_data_st[1]), .A4(n18), .Y(n115) );
  AO22X1_RVT U86 ( .A1(d1[0]), .A2(n13), .A3(rx_data_st[0]), .A4(n18), .Y(n114) );
  AO221X1_RVT U87 ( .A1(crc16_sum[0]), .A2(n18), .A3(crc16_out[0]), .A4(n13), 
        .A5(n10), .Y(n112) );
  AO221X1_RVT U88 ( .A1(crc16_sum[15]), .A2(n18), .A3(crc16_out[15]), .A4(n13), 
        .A5(n10), .Y(n113) );
  AO22X1_RVT U89 ( .A1(d1[7]), .A2(n13), .A3(rx_data_st[7]), .A4(n19), .Y(n121) );
  AO22X1_RVT U90 ( .A1(d1[6]), .A2(n13), .A3(rx_data_st[6]), .A4(n19), .Y(n120) );
  AO22X1_RVT U91 ( .A1(d0[6]), .A2(n13), .A3(d1[6]), .A4(n19), .Y(n128) );
  AO22X1_RVT U92 ( .A1(d1[5]), .A2(n13), .A3(rx_data_st[5]), .A4(n19), .Y(n119) );
  AO22X1_RVT U93 ( .A1(d1[4]), .A2(n13), .A3(rx_data_st[4]), .A4(n19), .Y(n118) );
  AO22X1_RVT U94 ( .A1(d0[4]), .A2(n13), .A3(d1[4]), .A4(n19), .Y(n126) );
  AO22X1_RVT U95 ( .A1(d1[3]), .A2(n13), .A3(rx_data_st[3]), .A4(n19), .Y(n117) );
  AO22X1_RVT U96 ( .A1(d0[3]), .A2(n13), .A3(d1[3]), .A4(n19), .Y(n125) );
  AO22X1_RVT U97 ( .A1(d0[2]), .A2(n13), .A3(d1[2]), .A4(n19), .Y(n124) );
  AO22X1_RVT U98 ( .A1(d0[1]), .A2(n13), .A3(d1[1]), .A4(n19), .Y(n123) );
  AO22X1_RVT U99 ( .A1(d0[0]), .A2(n13), .A3(d1[0]), .A4(n19), .Y(n122) );
  AO221X1_RVT U100 ( .A1(crc16_sum[14]), .A2(n17), .A3(crc16_out[14]), .A4(n12), .A5(n11), .Y(n98) );
  AO221X1_RVT U101 ( .A1(crc16_sum[13]), .A2(n17), .A3(crc16_out[13]), .A4(n12), .A5(n11), .Y(n99) );
  AO221X1_RVT U102 ( .A1(crc16_sum[12]), .A2(n17), .A3(crc16_out[12]), .A4(n12), .A5(n11), .Y(n100) );
  AO221X1_RVT U103 ( .A1(crc16_sum[11]), .A2(n17), .A3(crc16_out[11]), .A4(n12), .A5(n10), .Y(n101) );
  AO221X1_RVT U104 ( .A1(crc16_sum[10]), .A2(n17), .A3(crc16_out[10]), .A4(n12), .A5(n11), .Y(n102) );
  AO221X1_RVT U105 ( .A1(crc16_sum[9]), .A2(n17), .A3(crc16_out[9]), .A4(n12), 
        .A5(n11), .Y(n103) );
  AO221X1_RVT U106 ( .A1(crc16_sum[8]), .A2(n17), .A3(crc16_out[8]), .A4(n12), 
        .A5(n11), .Y(n104) );
  AO221X1_RVT U107 ( .A1(crc16_sum[7]), .A2(n17), .A3(crc16_out[7]), .A4(n12), 
        .A5(n10), .Y(n105) );
  AO221X1_RVT U108 ( .A1(crc16_sum[6]), .A2(n17), .A3(crc16_out[6]), .A4(n12), 
        .A5(n11), .Y(n106) );
  AO221X1_RVT U109 ( .A1(crc16_sum[5]), .A2(n17), .A3(crc16_out[5]), .A4(n12), 
        .A5(n11), .Y(n107) );
  AO221X1_RVT U110 ( .A1(crc16_sum[4]), .A2(n17), .A3(crc16_out[4]), .A4(n12), 
        .A5(n10), .Y(n108) );
  AO221X1_RVT U111 ( .A1(crc16_sum[3]), .A2(n17), .A3(crc16_out[3]), .A4(n12), 
        .A5(n10), .Y(n109) );
  AO221X1_RVT U112 ( .A1(crc16_sum[2]), .A2(n18), .A3(crc16_out[2]), .A4(n12), 
        .A5(n10), .Y(n110) );
  AO221X1_RVT U113 ( .A1(crc16_sum[1]), .A2(n18), .A3(crc16_out[1]), .A4(n12), 
        .A5(n10), .Y(n111) );
  NAND3X0_RVT U114 ( .A1(n21), .A2(n171), .A3(state[0]), .Y(n54) );
  AO22X1_RVT U115 ( .A1(state[3]), .A2(n170), .A3(n165), .A4(state[1]), .Y(n47) );
  AO221X1_RVT U116 ( .A1(n56), .A2(state[0]), .A3(n158), .A4(state[1]), .A5(
        n161), .Y(n151) );
  INVX1_RVT U117 ( .A(n58), .Y(n161) );
  NAND3X0_RVT U118 ( .A1(state[1]), .A2(n62), .A3(n21), .Y(n58) );
  AO22X1_RVT U119 ( .A1(n167), .A2(n63), .A3(n40), .A4(rx_active), .Y(n62) );
  INVX1_RVT U120 ( .A(n64), .Y(n167) );
  XNOR2X1_RVT U121 ( .A1(n1), .A2(crc5_out[3]), .Y(n52) );
  XNOR2X1_RVT U122 ( .A1(n2), .A2(crc5_out[4]), .Y(n37) );
  XNOR2X1_RVT U123 ( .A1(n3), .A2(crc5_out[1]), .Y(n33) );
  AO21X1_RVT U124 ( .A1(rx_valid), .A2(n68), .A3(n39), .Y(n64) );
  AND2X1_RVT U125 ( .A1(pid[0]), .A2(n16), .Y(n71) );
  AND2X1_RVT U126 ( .A1(pid[2]), .A2(n14), .Y(n70) );
  AND2X1_RVT U127 ( .A1(pid[3]), .A2(n15), .Y(n83) );
  AND2X1_RVT U128 ( .A1(pid[1]), .A2(n22), .Y(n81) );
  AND2X1_RVT U129 ( .A1(pid[3]), .A2(pid[2]), .Y(n82) );
  AO22X1_RVT U130 ( .A1(n162), .A2(rx_data[7]), .A3(\token_endp[0] ), .A4(n53), 
        .Y(n145) );
  AO22X1_RVT U131 ( .A1(n162), .A2(rx_data[5]), .A3(\token_fadr[5] ), .A4(n53), 
        .Y(n143) );
  AO22X1_RVT U132 ( .A1(n162), .A2(rx_data[3]), .A3(\token_fadr[3] ), .A4(n53), 
        .Y(n141) );
  AO22X1_RVT U133 ( .A1(n162), .A2(rx_data[2]), .A3(\token_fadr[2] ), .A4(n53), 
        .Y(n140) );
  AO22X1_RVT U134 ( .A1(n162), .A2(rx_data[0]), .A3(\token_fadr[0] ), .A4(n53), 
        .Y(n138) );
  AO22X1_RVT U135 ( .A1(n162), .A2(rx_data[6]), .A3(\token_fadr[6] ), .A4(n53), 
        .Y(n144) );
  AO22X1_RVT U136 ( .A1(n162), .A2(rx_data[4]), .A3(\token_fadr[4] ), .A4(n53), 
        .Y(n142) );
  AO22X1_RVT U137 ( .A1(n162), .A2(rx_data[1]), .A3(\token_fadr[1] ), .A4(n53), 
        .Y(n139) );
  AO22X1_RVT U138 ( .A1(n65), .A2(n61), .A3(state[0]), .A4(n66), .Y(n157) );
  NAND4X0_RVT U139 ( .A1(n21), .A2(n78), .A3(n31), .A4(n28), .Y(n65) );
  AO21X1_RVT U140 ( .A1(state[1]), .A2(n40), .A3(n158), .Y(n66) );
  NAND2X0_RVT U141 ( .A1(state[1]), .A2(n172), .Y(n78) );
  AO22X1_RVT U142 ( .A1(rx_data[7]), .A2(n168), .A3(token1[7]), .A4(n51), .Y(
        n97) );
  AO22X1_RVT U143 ( .A1(rx_data[6]), .A2(n168), .A3(token1[6]), .A4(n51), .Y(
        n96) );
  AO22X1_RVT U144 ( .A1(rx_data[5]), .A2(n168), .A3(token1[5]), .A4(n51), .Y(
        n95) );
  AO22X1_RVT U145 ( .A1(rx_data[4]), .A2(n168), .A3(token1[4]), .A4(n51), .Y(
        n94) );
  AO22X1_RVT U146 ( .A1(rx_data[3]), .A2(n168), .A3(token1[3]), .A4(n51), .Y(
        n93) );
  AO22X1_RVT U147 ( .A1(rx_data[2]), .A2(n168), .A3(\token_endp[3] ), .A4(n51), 
        .Y(n92) );
  AO22X1_RVT U148 ( .A1(rx_data[1]), .A2(n168), .A3(\token_endp[2] ), .A4(n51), 
        .Y(n91) );
  AO22X1_RVT U149 ( .A1(rx_data[0]), .A2(n168), .A3(\token_endp[1] ), .A4(n51), 
        .Y(n90) );
  AO22X1_RVT U150 ( .A1(state[2]), .A2(n39), .A3(state[1]), .A4(n40), .Y(n38)
         );
  AO22X1_RVT U151 ( .A1(state[2]), .A2(n55), .A3(n56), .A4(n162), .Y(n150) );
  AO22X1_RVT U152 ( .A1(state[3]), .A2(n55), .A3(n60), .A4(n56), .Y(n156) );
  AND2X1_RVT U153 ( .A1(n165), .A2(state[1]), .Y(n60) );
  AND2X1_RVT U154 ( .A1(token_valid), .A2(N40), .Y(crc5_err) );
  NAND2X0_RVT U155 ( .A1(n21), .A2(n72), .Y(n61) );
  AO22X1_RVT U156 ( .A1(rx_active), .A2(n73), .A3(state[0]), .A4(n74), .Y(n72)
         );
  NAND2X0_RVT U157 ( .A1(n75), .A2(n28), .Y(n73) );
  OAI22X1_RVT U158 ( .A1(state[2]), .A2(n76), .A3(n76), .A4(n77), .Y(n75) );
  AND2X1_RVT U159 ( .A1(n22), .A2(n16), .Y(n79) );
  AND2X1_RVT U160 ( .A1(n15), .A2(n14), .Y(n80) );
  AND2X1_RVT U161 ( .A1(rx_data_done), .A2(n84), .Y(crc16_err) );
  OR4X1_RVT U162 ( .A1(n85), .A2(n86), .A3(n87), .A4(n88), .Y(n84) );
  OR4X1_RVT U163 ( .A1(crc16_sum[10]), .A2(crc16_sum[11]), .A3(crc16_sum[12]), 
        .A4(crc16_sum[13]), .Y(n85) );
  OR4X1_RVT U164 ( .A1(crc16_sum[6]), .A2(crc16_sum[7]), .A3(crc16_sum[8]), 
        .A4(crc16_sum[9]), .Y(n87) );
  AND2X1_RVT U165 ( .A1(rxv1), .A2(n49), .Y(n50) );
  XNOR2X1_RVT U166 ( .A1(n4), .A2(crc5_out[0]), .Y(n34) );
  OR2X1_RVT U167 ( .A1(rx_active_r), .A2(n172), .Y(n9) );
  XNOR2X1_RVT U168 ( .A1(pid[7]), .A2(n14), .Y(n41) );
  NAND2X0_RVT U169 ( .A1(state[2]), .A2(n170), .Y(n51) );
  NAND2X0_RVT U170 ( .A1(rxv1), .A2(n12), .Y(n48) );
  NAND4X0_RVT U171 ( .A1(crc16_sum[15]), .A2(crc16_sum[0]), .A3(crc16_sum[2]), 
        .A4(crc16_sum[3]), .Y(n86) );
  NAND4X0_RVT U172 ( .A1(n41), .A2(n42), .A3(n43), .A4(n44), .Y(pid_cks_err)
         );
  XNOR2X1_RVT U173 ( .A1(pid[5]), .A2(n16), .Y(n42) );
  XNOR2X1_RVT U174 ( .A1(pid[4]), .A2(n22), .Y(n43) );
  XNOR2X1_RVT U175 ( .A1(pid[6]), .A2(n15), .Y(n44) );
  NAND2X0_RVT U176 ( .A1(rx_active), .A2(n173), .Y(n39) );
  NAND2X0_RVT U177 ( .A1(state[3]), .A2(n39), .Y(n49) );
  AND2X1_RVT U178 ( .A1(n166), .A2(n80), .Y(pid_DATA0) );
  NAND2X0_RVT U179 ( .A1(rx_valid), .A2(rx_active), .Y(n74) );
  NAND2X0_RVT U180 ( .A1(pid[0]), .A2(pid[1]), .Y(n68) );
  NAND2X0_RVT U181 ( .A1(n170), .A2(n69), .Y(n57) );
  AO21X1_RVT U182 ( .A1(n70), .A2(n16), .A3(n71), .Y(n69) );
  OR4X1_RVT U183 ( .A1(crc16_sum[14]), .A2(crc16_sum[1]), .A3(crc16_sum[4]), 
        .A4(crc16_sum[5]), .Y(n88) );
  XNOR2X1_RVT U184 ( .A1(token1[5]), .A2(\ne_263/A[2] ), .Y(n36) );
  AND2X1_RVT U185 ( .A1(n34), .A2(n33), .Y(n35) );
  NAND4X0_RVT U186 ( .A1(n52), .A2(n37), .A3(n36), .A4(n35), .Y(N40) );
endmodule


module usbf_crc16_0 ( crc_in, din, crc_out );
  input [15:0] crc_in;
  input [7:0] din;
  output [15:0] crc_out;
  wire   crc_in_1, crc_in_0, \crc_in[6] , \crc_in[5] , \crc_in[4] ,
         \crc_in[3] , \crc_in[2] , n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19;
  assign crc_in_1 = crc_in[1];
  assign crc_in_0 = crc_in[0];
  assign crc_out[14] = \crc_in[6] ;
  assign \crc_in[6]  = crc_in[6];
  assign crc_out[13] = \crc_in[5] ;
  assign \crc_in[5]  = crc_in[5];
  assign crc_out[12] = \crc_in[4] ;
  assign \crc_in[4]  = crc_in[4];
  assign crc_out[11] = \crc_in[3] ;
  assign \crc_in[3]  = crc_in[3];
  assign crc_out[10] = \crc_in[2] ;
  assign \crc_in[2]  = crc_in[2];

  XNOR3X1_RVT U1 ( .A1(crc_out[5]), .A2(crc_out[3]), .A3(n10), .Y(crc_out[1])
         );
  XNOR2X1_RVT U2 ( .A1(n18), .A2(n16), .Y(n10) );
  XNOR2X1_RVT U3 ( .A1(n17), .A2(n19), .Y(n18) );
  XOR2X1_RVT U4 ( .A1(crc_out[1]), .A2(n11), .Y(crc_out[0]) );
  XNOR2X1_RVT U5 ( .A1(n12), .A2(n13), .Y(crc_out[3]) );
  XNOR2X1_RVT U6 ( .A1(n14), .A2(n15), .Y(crc_out[5]) );
  XOR2X1_RVT U7 ( .A1(din[5]), .A2(crc_in[13]), .Y(n16) );
  XOR2X1_RVT U8 ( .A1(crc_in_1), .A2(n19), .Y(crc_out[9]) );
  XOR2X1_RVT U9 ( .A1(crc_in_0), .A2(n18), .Y(crc_out[8]) );
  XNOR2X1_RVT U10 ( .A1(n17), .A2(n16), .Y(crc_out[7]) );
  XOR2X1_RVT U11 ( .A1(crc_in[7]), .A2(crc_out[0]), .Y(crc_out[15]) );
  XOR2X1_RVT U12 ( .A1(n16), .A2(n15), .Y(crc_out[6]) );
  XNOR2X1_RVT U13 ( .A1(n14), .A2(n13), .Y(crc_out[4]) );
  XNOR2X1_RVT U14 ( .A1(n12), .A2(n11), .Y(crc_out[2]) );
  XNOR2X1_RVT U15 ( .A1(din[6]), .A2(crc_in[14]), .Y(n17) );
  XNOR2X1_RVT U16 ( .A1(din[1]), .A2(crc_in[9]), .Y(n12) );
  XNOR2X1_RVT U17 ( .A1(din[3]), .A2(crc_in[11]), .Y(n14) );
  XOR2X1_RVT U18 ( .A1(din[2]), .A2(crc_in[10]), .Y(n13) );
  XOR2X1_RVT U19 ( .A1(din[7]), .A2(crc_in[15]), .Y(n19) );
  XOR2X1_RVT U20 ( .A1(din[4]), .A2(crc_in[12]), .Y(n15) );
  XOR2X1_RVT U21 ( .A1(din[0]), .A2(crc_in[8]), .Y(n11) );
endmodule


module usbf_pa ( clk, rst, tx_data, tx_valid, tx_valid_last, tx_ready, 
        tx_first, send_token, token_pid_sel, send_data, data_pid_sel, 
        send_zero_length, tx_data_st, rd_next );
  output [7:0] tx_data;
  input [1:0] token_pid_sel;
  input [1:0] data_pid_sel;
  input [7:0] tx_data_st;
  input clk, rst, tx_ready, send_token, send_data, send_zero_length;
  output tx_valid, tx_valid_last, tx_first, rd_next;
  wire   send_zero_length_r, zero_length_r, tx_valid_r1, tx_valid_r,
         send_token_r, N67, send_data_r, send_data_r2, n3, n9, n13, n14, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n44, n45, n46, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n4, n5, n6, n7,
         n8, n10, n11, n12, n15, n16, n17, n18, n19, n20, n21, n32, n43, n47,
         n79, n80, n81, n82, n83;
  wire   [15:0] crc16;
  wire   [15:0] crc16_next;
  wire   [4:0] state;

  usbf_crc16_0 u1 ( .crc_in(crc16), .din({tx_data_st[0], tx_data_st[1], 
        tx_data_st[2], tx_data_st[3], tx_data_st[4], tx_data_st[5], 
        tx_data_st[6], tx_data_st[7]}), .crc_out(crc16_next) );
  DFFSSRX1_RVT tx_first_r_reg ( .D(send_token), .SETB(n81), .RSTB(1'b1), .CLK(
        n11), .QN(n9) );
  DFFX1_RVT \state_reg[3]  ( .D(n77), .CLK(n11), .Q(state[3]), .QN(n13) );
  DFFX1_RVT send_data_r2_reg ( .D(send_data_r), .CLK(n11), .Q(send_data_r2) );
  DFFX1_RVT tx_valid_r_reg ( .D(tx_valid_r1), .CLK(n11), .Q(tx_valid_r) );
  DFFX1_RVT send_zero_length_r_reg ( .D(send_zero_length), .CLK(n12), .Q(
        send_zero_length_r), .QN(n3) );
  DFFX1_RVT zero_length_r_reg ( .D(n73), .CLK(n11), .Q(zero_length_r), .QN(n6)
         );
  DFFX1_RVT \crc16_reg[4]  ( .D(n67), .CLK(n12), .Q(crc16[4]) );
  DFFX1_RVT \crc16_reg[5]  ( .D(n66), .CLK(n12), .Q(crc16[5]) );
  DFFX1_RVT \crc16_reg[3]  ( .D(n68), .CLK(n12), .Q(crc16[3]) );
  DFFX1_RVT \crc16_reg[6]  ( .D(n65), .CLK(n12), .Q(crc16[6]) );
  DFFX1_RVT \crc16_reg[2]  ( .D(n69), .CLK(n12), .Q(crc16[2]) );
  DFFX1_RVT send_data_r_reg ( .D(send_data), .CLK(n11), .Q(send_data_r) );
  DFFX1_RVT \state_reg[2]  ( .D(n75), .CLK(n11), .Q(state[2]), .QN(n14) );
  DFFX1_RVT \crc16_reg[0]  ( .D(n71), .CLK(n12), .Q(crc16[0]) );
  DFFX1_RVT \crc16_reg[1]  ( .D(n70), .CLK(n12), .Q(crc16[1]) );
  DFFX1_RVT \crc16_reg[7]  ( .D(n64), .CLK(n12), .Q(crc16[7]) );
  DFFX1_RVT \crc16_reg[14]  ( .D(n57), .CLK(n11), .Q(crc16[14]) );
  DFFX1_RVT \crc16_reg[11]  ( .D(n60), .CLK(n15), .Q(crc16[11]) );
  DFFX1_RVT \crc16_reg[15]  ( .D(n72), .CLK(n12), .Q(crc16[15]) );
  DFFX1_RVT \crc16_reg[10]  ( .D(n61), .CLK(n15), .Q(crc16[10]) );
  DFFX1_RVT \crc16_reg[9]  ( .D(n62), .CLK(n12), .Q(crc16[9]) );
  DFFX1_RVT \crc16_reg[8]  ( .D(n63), .CLK(n12), .Q(crc16[8]) );
  DFFX1_RVT \crc16_reg[12]  ( .D(n59), .CLK(n15), .Q(crc16[12]) );
  DFFX1_RVT \crc16_reg[13]  ( .D(n58), .CLK(n15), .Q(crc16[13]) );
  DFFX1_RVT \state_reg[0]  ( .D(n78), .CLK(n11), .Q(state[0]) );
  DFFX1_RVT \state_reg[4]  ( .D(n74), .CLK(n11), .Q(state[4]) );
  DFFSSRX1_RVT send_token_r_reg ( .D(n56), .SETB(n19), .RSTB(rst), .CLK(n11), 
        .Q(send_token_r) );
  DFFX1_RVT \state_reg[1]  ( .D(n76), .CLK(n11), .Q(state[1]) );
  SDFFSSRX1_RVT tx_valid_r1_reg ( .RSTB(1'b1), .SETB(n23), .D(state[1]), .SI(
        1'b1), .SE(state[4]), .CLK(n15), .Q(tx_valid_r1) );
  NOR2X0_RVT U5 ( .A1(zero_length_r), .A2(send_data_r2), .Y(n45) );
  OA21X1_RVT U6 ( .A1(n14), .A2(tx_ready), .A3(n42), .Y(n4) );
  INVX1_RVT U7 ( .A(n16), .Y(n12) );
  INVX1_RVT U8 ( .A(n16), .Y(n11) );
  INVX1_RVT U9 ( .A(n16), .Y(n15) );
  INVX1_RVT U10 ( .A(clk), .Y(n16) );
  AND2X1_RVT U11 ( .A1(n20), .A2(n79), .Y(n27) );
  INVX1_RVT U12 ( .A(n39), .Y(n79) );
  INVX1_RVT U13 ( .A(n28), .Y(n20) );
  INVX1_RVT U14 ( .A(n44), .Y(n43) );
  INVX1_RVT U15 ( .A(n5), .Y(n8) );
  INVX1_RVT U16 ( .A(n5), .Y(n10) );
  INVX1_RVT U17 ( .A(send_data), .Y(n81) );
  INVX1_RVT U18 ( .A(n52), .Y(n47) );
  AND2X1_RVT U19 ( .A1(rst), .A2(n52), .Y(n50) );
  AND2X1_RVT U20 ( .A1(n20), .A2(n39), .Y(n25) );
  NAND2X0_RVT U21 ( .A1(n4), .A2(n30), .Y(n31) );
  INVX1_RVT U22 ( .A(n24), .Y(n82) );
  AOI22X1_RVT U23 ( .A1(n4), .A2(rd_next), .A3(send_data_r), .A4(n45), .Y(n5)
         );
  INVX1_RVT U24 ( .A(tx_ready), .Y(n83) );
  AND3X1_RVT U25 ( .A1(tx_valid_r), .A2(tx_ready), .A3(state[1]), .Y(rd_next)
         );
  AO221X1_RVT U26 ( .A1(crc16[14]), .A2(n5), .A3(crc16_next[14]), .A4(n8), 
        .A5(n43), .Y(n57) );
  AO221X1_RVT U27 ( .A1(crc16[13]), .A2(n5), .A3(crc16_next[13]), .A4(n10), 
        .A5(n43), .Y(n58) );
  AO221X1_RVT U28 ( .A1(crc16[12]), .A2(n5), .A3(crc16_next[12]), .A4(n8), 
        .A5(n43), .Y(n59) );
  AO221X1_RVT U29 ( .A1(crc16[11]), .A2(n5), .A3(crc16_next[11]), .A4(n10), 
        .A5(n43), .Y(n60) );
  AO221X1_RVT U30 ( .A1(crc16[10]), .A2(n5), .A3(crc16_next[10]), .A4(n8), 
        .A5(n43), .Y(n61) );
  AO221X1_RVT U31 ( .A1(crc16[9]), .A2(n5), .A3(crc16_next[9]), .A4(n10), .A5(
        n43), .Y(n62) );
  AO221X1_RVT U32 ( .A1(crc16[8]), .A2(n5), .A3(crc16_next[8]), .A4(n8), .A5(
        n43), .Y(n63) );
  AO221X1_RVT U33 ( .A1(crc16[7]), .A2(n5), .A3(crc16_next[7]), .A4(n10), .A5(
        n43), .Y(n64) );
  AO221X1_RVT U34 ( .A1(crc16[1]), .A2(n5), .A3(crc16_next[1]), .A4(n10), .A5(
        n43), .Y(n70) );
  AO221X1_RVT U35 ( .A1(crc16[0]), .A2(n5), .A3(crc16_next[0]), .A4(n10), .A5(
        n43), .Y(n71) );
  AO221X1_RVT U36 ( .A1(crc16[15]), .A2(n5), .A3(crc16_next[15]), .A4(n8), 
        .A5(n43), .Y(n72) );
  AO221X1_RVT U37 ( .A1(crc16[6]), .A2(n5), .A3(crc16_next[6]), .A4(n8), .A5(
        n43), .Y(n65) );
  AO221X1_RVT U38 ( .A1(crc16[5]), .A2(n5), .A3(crc16_next[5]), .A4(n10), .A5(
        n43), .Y(n66) );
  AO221X1_RVT U39 ( .A1(crc16[4]), .A2(n5), .A3(crc16_next[4]), .A4(n8), .A5(
        n43), .Y(n67) );
  AO221X1_RVT U40 ( .A1(crc16[3]), .A2(n5), .A3(crc16_next[3]), .A4(n10), .A5(
        n43), .Y(n68) );
  AO221X1_RVT U41 ( .A1(crc16[2]), .A2(n5), .A3(crc16_next[2]), .A4(n10), .A5(
        n43), .Y(n69) );
  NAND3X0_RVT U42 ( .A1(n41), .A2(n13), .A3(n4), .Y(n30) );
  OAI21X1_RVT U43 ( .A1(n6), .A2(n48), .A3(n7), .Y(n73) );
  NAND4X0_RVT U44 ( .A1(send_zero_length_r), .A2(rst), .A3(n22), .A4(n48), .Y(
        n7) );
  NAND3X0_RVT U45 ( .A1(n22), .A2(n44), .A3(rst), .Y(n48) );
  AO22X1_RVT U46 ( .A1(n47), .A2(state[2]), .A3(n50), .A4(n24), .Y(n75) );
  AO22X1_RVT U47 ( .A1(n47), .A2(state[0]), .A3(n53), .A4(n52), .Y(n78) );
  NAND2X0_RVT U48 ( .A1(rst), .A2(n13), .Y(n53) );
  AO22X1_RVT U49 ( .A1(n47), .A2(state[1]), .A3(n51), .A4(n50), .Y(n76) );
  AND2X1_RVT U50 ( .A1(state[0]), .A2(n3), .Y(n51) );
  AO22X1_RVT U51 ( .A1(n25), .A2(n40), .A3(tx_data_st[0]), .A4(n27), .Y(
        tx_data[0]) );
  OAI221X1_RVT U52 ( .A1(n31), .A2(crc16[7]), .A3(n4), .A4(crc16[15]), .A5(n30), .Y(n40) );
  AO222X1_RVT U53 ( .A1(n25), .A2(n26), .A3(tx_data_st[7]), .A4(n27), .A5(n32), 
        .A6(n28), .Y(tx_data[7]) );
  OAI222X1_RVT U54 ( .A1(n30), .A2(data_pid_sel[0]), .A3(n31), .A4(crc16[0]), 
        .A5(n4), .A6(crc16[8]), .Y(n26) );
  INVX1_RVT U55 ( .A(n29), .Y(n32) );
  AO222X1_RVT U56 ( .A1(n25), .A2(n33), .A3(tx_data_st[6]), .A4(n27), .A5(n28), 
        .A6(n21), .Y(tx_data[6]) );
  OAI222X1_RVT U57 ( .A1(n30), .A2(data_pid_sel[1]), .A3(n31), .A4(crc16[1]), 
        .A5(n4), .A6(crc16[9]), .Y(n33) );
  INVX1_RVT U58 ( .A(token_pid_sel[1]), .Y(n21) );
  AO22X1_RVT U59 ( .A1(tx_data_st[5]), .A2(n27), .A3(n25), .A4(n34), .Y(
        tx_data[5]) );
  OAI22X1_RVT U60 ( .A1(n4), .A2(crc16[10]), .A3(n31), .A4(crc16[2]), .Y(n34)
         );
  AO222X1_RVT U61 ( .A1(n25), .A2(n36), .A3(tx_data_st[3]), .A4(n27), .A5(n29), 
        .A6(n28), .Y(tx_data[3]) );
  OAI222X1_RVT U62 ( .A1(n18), .A2(n30), .A3(n31), .A4(crc16[4]), .A5(n4), 
        .A6(crc16[12]), .Y(n36) );
  INVX1_RVT U63 ( .A(data_pid_sel[0]), .Y(n18) );
  AO222X1_RVT U64 ( .A1(n25), .A2(n37), .A3(tx_data_st[2]), .A4(n27), .A5(
        token_pid_sel[1]), .A6(n28), .Y(tx_data[2]) );
  OAI222X1_RVT U65 ( .A1(n17), .A2(n30), .A3(n31), .A4(crc16[5]), .A5(n4), 
        .A6(crc16[13]), .Y(n37) );
  INVX1_RVT U66 ( .A(data_pid_sel[1]), .Y(n17) );
  AO221X1_RVT U67 ( .A1(n38), .A2(n39), .A3(tx_data_st[1]), .A4(n79), .A5(n28), 
        .Y(tx_data[1]) );
  OAI221X1_RVT U68 ( .A1(n31), .A2(crc16[6]), .A3(n4), .A4(crc16[14]), .A5(n30), .Y(n38) );
  OAI221X1_RVT U69 ( .A1(n31), .A2(crc16[3]), .A3(n4), .A4(crc16[11]), .A5(n35), .Y(tx_data[4]) );
  AOI21X1_RVT U70 ( .A1(tx_data_st[4]), .A2(n79), .A3(n28), .Y(n35) );
  AO22X1_RVT U71 ( .A1(state[4]), .A2(n47), .A3(n49), .A4(n50), .Y(n74) );
  AND2X1_RVT U72 ( .A1(send_zero_length_r), .A2(state[0]), .Y(n49) );
  AO22X1_RVT U73 ( .A1(n47), .A2(state[3]), .A3(n50), .A4(state[2]), .Y(n77)
         );
  AND2X1_RVT U74 ( .A1(n9), .A2(N67), .Y(tx_first) );
  NAND2X0_RVT U75 ( .A1(n19), .A2(n81), .Y(N67) );
  OA21X1_RVT U76 ( .A1(n13), .A2(tx_ready), .A3(n41), .Y(n22) );
  OR2X1_RVT U77 ( .A1(send_token_r), .A2(send_token), .Y(n28) );
  AND2X1_RVT U78 ( .A1(send_token_r), .A2(n83), .Y(n56) );
  NAND3X0_RVT U79 ( .A1(n23), .A2(n13), .A3(n42), .Y(n39) );
  NAND3X0_RVT U80 ( .A1(tx_ready), .A2(n81), .A3(tx_valid_r), .Y(n46) );
  XOR2X1_RVT U81 ( .A1(token_pid_sel[1]), .A2(token_pid_sel[0]), .Y(n29) );
  OR2X1_RVT U82 ( .A1(state[4]), .A2(state[1]), .Y(n24) );
  OR2X1_RVT U83 ( .A1(n81), .A2(send_data_r), .Y(n44) );
  INVX1_RVT U84 ( .A(send_token), .Y(n19) );
  AOI21X1_RVT U85 ( .A1(state[0]), .A2(send_data), .A3(state[2]), .Y(n23) );
  AOI21X1_RVT U86 ( .A1(state[1]), .A2(n80), .A3(state[4]), .Y(n42) );
  INVX1_RVT U87 ( .A(n46), .Y(n80) );
  NAND2X0_RVT U88 ( .A1(rst), .A2(n54), .Y(n52) );
  AO222X1_RVT U89 ( .A1(n83), .A2(n55), .A3(state[1]), .A4(n46), .A5(state[0]), 
        .A6(n81), .Y(n54) );
  NAND2X0_RVT U90 ( .A1(n14), .A2(n13), .Y(n55) );
  NAND2X0_RVT U91 ( .A1(tx_ready), .A2(state[2]), .Y(n41) );
  NAND2X0_RVT U92 ( .A1(n22), .A2(n19), .Y(tx_valid_last) );
  NAND2X0_RVT U93 ( .A1(n82), .A2(n23), .Y(tx_valid) );
endmodule


module usbf_idma_SSRAM_HADR14_DW01_inc_0 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[10]), .A2(A[10]), .Y(SUM[10]) );
endmodule


module usbf_idma_SSRAM_HADR14_DW01_dec_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24;

  INVX1_RVT U1 ( .A(n23), .Y(n2) );
  INVX1_RVT U2 ( .A(n16), .Y(n6) );
  INVX1_RVT U3 ( .A(n18), .Y(n8) );
  INVX1_RVT U4 ( .A(n20), .Y(n10) );
  INVX1_RVT U5 ( .A(A[0]), .Y(SUM[0]) );
  INVX1_RVT U6 ( .A(n24), .Y(n1) );
  INVX1_RVT U7 ( .A(n14), .Y(n3) );
  INVX1_RVT U8 ( .A(n13), .Y(n4) );
  INVX1_RVT U9 ( .A(n15), .Y(n5) );
  INVX1_RVT U10 ( .A(n17), .Y(n7) );
  INVX1_RVT U11 ( .A(n19), .Y(n9) );
  INVX1_RVT U12 ( .A(n21), .Y(n11) );
  AO21X1_RVT U13 ( .A1(A[9]), .A2(n13), .A3(n3), .Y(SUM[9]) );
  AO21X1_RVT U14 ( .A1(A[8]), .A2(n15), .A3(n4), .Y(SUM[8]) );
  AO21X1_RVT U15 ( .A1(A[7]), .A2(n16), .A3(n5), .Y(SUM[7]) );
  AO21X1_RVT U16 ( .A1(A[6]), .A2(n17), .A3(n6), .Y(SUM[6]) );
  AO21X1_RVT U17 ( .A1(A[5]), .A2(n18), .A3(n7), .Y(SUM[5]) );
  AO21X1_RVT U18 ( .A1(A[4]), .A2(n19), .A3(n8), .Y(SUM[4]) );
  AO21X1_RVT U19 ( .A1(A[3]), .A2(n20), .A3(n9), .Y(SUM[3]) );
  AO21X1_RVT U20 ( .A1(A[2]), .A2(n21), .A3(n10), .Y(SUM[2]) );
  AO21X1_RVT U21 ( .A1(A[1]), .A2(A[0]), .A3(n11), .Y(SUM[1]) );
  XNOR2X1_RVT U22 ( .A1(n22), .A2(A[13]), .Y(SUM[13]) );
  OR2X1_RVT U23 ( .A1(n23), .A2(A[12]), .Y(n22) );
  XOR2X1_RVT U24 ( .A1(A[12]), .A2(n2), .Y(SUM[12]) );
  AO21X1_RVT U25 ( .A1(A[11]), .A2(n24), .A3(n2), .Y(SUM[11]) );
  OR2X1_RVT U26 ( .A1(n24), .A2(A[11]), .Y(n23) );
  AO21X1_RVT U27 ( .A1(A[10]), .A2(n14), .A3(n1), .Y(SUM[10]) );
  OR2X1_RVT U28 ( .A1(n14), .A2(A[10]), .Y(n24) );
  OR2X1_RVT U29 ( .A1(n13), .A2(A[9]), .Y(n14) );
  OR2X1_RVT U30 ( .A1(n15), .A2(A[8]), .Y(n13) );
  OR2X1_RVT U31 ( .A1(n16), .A2(A[7]), .Y(n15) );
  OR2X1_RVT U32 ( .A1(n17), .A2(A[6]), .Y(n16) );
  OR2X1_RVT U33 ( .A1(n18), .A2(A[5]), .Y(n17) );
  OR2X1_RVT U34 ( .A1(n19), .A2(A[4]), .Y(n18) );
  OR2X1_RVT U35 ( .A1(n20), .A2(A[3]), .Y(n19) );
  OR2X1_RVT U36 ( .A1(n21), .A2(A[2]), .Y(n20) );
  OR2X1_RVT U37 ( .A1(A[1]), .A2(A[0]), .Y(n21) );
endmodule


module usbf_idma_SSRAM_HADR14_DW01_inc_1 ( A, SUM );
  input [14:0] A;
  output [14:0] SUM;

  wire   [14:2] carry;

  HADDX1_RVT U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1_RVT U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1_RVT U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1_RVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[14]), .A2(A[14]), .Y(SUM[14]) );
endmodule


module usbf_idma_SSRAM_HADR14_DW01_add_0 ( A, B, CI, SUM, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;

  wire   [14:1] carry;

  FADDX1_RVT U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  FADDX1_RVT U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1_RVT U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1_RVT U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1_RVT U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(
        SUM[9]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
  XOR2X1_RVT U2 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  XOR2X1_RVT U3 ( .A1(A[14]), .A2(carry[14]), .Y(SUM[14]) );
endmodule


module usbf_idma_SSRAM_HADR14 ( clk, rst, rx_data_st, rx_data_valid, 
        rx_data_done, send_data, tx_data_st, rd_next, rx_dma_en, tx_dma_en, 
        abort, idma_done, buf_size, dma_en, send_zero_length, adr, size, 
        sizu_c, madr, mdout, mdin, mwe, mreq, mack );
  input [7:0] rx_data_st;
  output [7:0] tx_data_st;
  input [13:0] buf_size;
  input [16:0] adr;
  input [13:0] size;
  output [10:0] sizu_c;
  output [14:0] madr;
  output [31:0] mdout;
  input [31:0] mdin;
  input clk, rst, rx_data_valid, rx_data_done, rd_next, rx_dma_en, tx_dma_en,
         abort, dma_en, send_zero_length, mack;
  output send_data, idma_done, mwe, mreq;
  wire   rx_data_valid_r, rx_data_done_r, rx_data_done_r2, send_zero_length_r,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76,
         N77, N78, \adr_cb[1] , N82, N83, N84, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N146, N147, N148,
         N149, N150, N151, N152, N153, N154, N155, N156, wr_last, N215,
         wr_done_r, send_data_r, n5, n6, n7, n8, n9, n11, n13, n15, n17, n19,
         n21, n23, n25, n26, n27, n28, n37, n38, n39, n40, n49, n50, n51, n52,
         n61, n62, n63, n64, n73, n74, n75, n76, n85, n86, n87, n88, n97, n98,
         n99, n100, n103, n105, n110, n116, n119, n154, n158, n159, n160, n161,
         n162, n163, n166, n168, n169, n170, n172, n173, n174, n177, n178,
         n179, n182, n183, n184, n185, n186, n187, n189, n190, n192, n194,
         n195, n198, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n216, n217, n221, n230, n231, n232,
         n233, n234, n235, n237, n238, n240, n241, n242, n243, n245, n249,
         n251, n252, n253, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n403, n404, n405, n407, n409, n410, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n1, n3, n4, n10, n12,
         n14, n16, n18, n20, n22, n24, n29, n30, n31, n32, n33, n34, n35, n36,
         n41, n42, n43, n44, n45, n46, n47, n48, n53, n54, n55, n56, n57, n58,
         n59, n60, n65, n66, n67, n68, n69, n70, n71, n72, n77, n78, n79, n80,
         n81, n82, n83, n84, n89, n90, n91, n92, n93, n94, n95, n96, n101,
         n102, n104, n106, n107, n108, n109, n111, n112, n113, n114, n115,
         n117, n118, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n155, n156, n157, n164, n165, n167, n171, n175,
         n176, n180, n181, n188, n191, n193, n196, n197, n199, n200, n215,
         n218, n219, n220, n222, n223, n224, n225, n226, n227, n228, n229,
         n236, n239, n244, n246, n247, n248, n250, n254, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n363, n406, n408, n411,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505;
  wire   [7:0] rx_data_st_r;
  wire   [14:0] last_buf_adr;
  wire   [14:0] adrw_next;
  wire   [13:0] sizd_c;
  wire   [31:0] rd_buf0;
  wire   [31:0] rd_buf1;
  wire   [7:0] state;

  usbf_idma_SSRAM_HADR14_DW01_inc_0 add_346_S2 ( .A(sizu_c), .SUM({N156, N155, 
        N154, N153, N152, N151, N150, N149, N148, N147, N146}) );
  usbf_idma_SSRAM_HADR14_DW01_dec_0 sub_326_S2 ( .A(sizd_c), .SUM({N109, N108, 
        N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96})
         );
  usbf_idma_SSRAM_HADR14_DW01_inc_1 add_296_S2 ( .A(madr), .SUM({N78, N77, N76, 
        N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64}) );
  usbf_idma_SSRAM_HADR14_DW01_add_0 add_289 ( .A(adr[14:0]), .B({1'b0, 
        buf_size}), .CI(1'b0), .SUM({N59, N58, N57, N56, N55, N54, N53, N52, 
        N51, N50, N49, N48, N47, N46, N45}) );
  DFFSSRX1_RVT mack_r_reg ( .D(mack), .SETB(1'b1), .RSTB(mreq), .CLK(n272), 
        .Q(n18), .QN(n404) );
  DFFX1_RVT \adr_cb_reg[0]  ( .D(N82), .CLK(n278), .Q(n79), .QN(n407) );
  DFFX1_RVT \adr_cb_reg[2]  ( .D(N84), .CLK(n278), .QN(n261) );
  DFFX1_RVT wr_done_reg ( .D(wr_done_r), .CLK(n277), .QN(n264) );
  SDFFSSRX1_RVT dtmp_sel_r_reg ( .RSTB(state[1]), .SETB(1'b1), .D(n404), .SI(
        1'b0), .SE(abort), .CLK(n289), .Q(n16), .QN(n409) );
  DFFX1_RVT \dtmp_r_reg[31]  ( .D(n414), .CLK(n276), .Q(n101) );
  DFFX1_RVT \dtmp_r_reg[30]  ( .D(n415), .CLK(n276), .Q(n96) );
  DFFX1_RVT \dtmp_r_reg[29]  ( .D(n416), .CLK(n276), .Q(n95) );
  DFFX1_RVT \dtmp_r_reg[28]  ( .D(n417), .CLK(n276), .Q(n94) );
  DFFX1_RVT \dtmp_r_reg[27]  ( .D(n418), .CLK(n275), .Q(n93) );
  DFFX1_RVT \dtmp_r_reg[26]  ( .D(n419), .CLK(n275), .Q(n92) );
  DFFX1_RVT \dtmp_r_reg[25]  ( .D(n420), .CLK(n275), .Q(n91) );
  DFFX1_RVT \dtmp_r_reg[24]  ( .D(n421), .CLK(n275), .Q(n90) );
  DFFX1_RVT \dtmp_r_reg[23]  ( .D(n422), .CLK(n275), .Q(n121) );
  DFFX1_RVT \dtmp_r_reg[22]  ( .D(n423), .CLK(n275), .Q(n120) );
  DFFX1_RVT \dtmp_r_reg[21]  ( .D(n424), .CLK(n274), .Q(n118) );
  DFFX1_RVT \dtmp_r_reg[20]  ( .D(n425), .CLK(n274), .Q(n117) );
  DFFX1_RVT \dtmp_r_reg[19]  ( .D(n426), .CLK(n274), .Q(n115) );
  DFFX1_RVT \dtmp_r_reg[18]  ( .D(n427), .CLK(n274), .Q(n114) );
  DFFX1_RVT \dtmp_r_reg[17]  ( .D(n428), .CLK(n274), .Q(n113) );
  DFFX1_RVT \dtmp_r_reg[16]  ( .D(n429), .CLK(n274), .Q(n112) );
  DFFX1_RVT \dtmp_r_reg[15]  ( .D(n430), .CLK(n273), .Q(n111) );
  DFFX1_RVT \dtmp_r_reg[14]  ( .D(n431), .CLK(n273), .Q(n109) );
  DFFX1_RVT \dtmp_r_reg[13]  ( .D(n432), .CLK(n273), .Q(n108) );
  DFFX1_RVT \dtmp_r_reg[12]  ( .D(n433), .CLK(n273), .Q(n107) );
  DFFX1_RVT \dtmp_r_reg[11]  ( .D(n434), .CLK(n273), .Q(n106) );
  DFFX1_RVT \dtmp_r_reg[10]  ( .D(n435), .CLK(n273), .Q(n104) );
  DFFX1_RVT \dtmp_r_reg[9]  ( .D(n436), .CLK(n272), .Q(n125) );
  DFFX1_RVT \dtmp_r_reg[8]  ( .D(n437), .CLK(n272), .Q(n124) );
  DFFX1_RVT \dtmp_r_reg[7]  ( .D(n438), .CLK(n272), .Q(n123) );
  DFFX1_RVT \dtmp_r_reg[6]  ( .D(n439), .CLK(n272), .Q(n122) );
  DFFX1_RVT \dtmp_r_reg[5]  ( .D(n440), .CLK(n276), .Q(n102) );
  DFFX1_RVT \dtmp_r_reg[4]  ( .D(n441), .CLK(n288), .Q(n84) );
  DFFX1_RVT \dtmp_r_reg[3]  ( .D(n442), .CLK(n288), .Q(n83) );
  DFFX1_RVT \dtmp_r_reg[2]  ( .D(n443), .CLK(n286), .Q(n89) );
  DFFX1_RVT \dtmp_r_reg[1]  ( .D(n444), .CLK(n288), .Q(n82) );
  DFFX1_RVT \dtmp_r_reg[0]  ( .D(n445), .CLK(n288), .Q(n81) );
  DFFX1_RVT sizd_is_zero_reg ( .D(n503), .CLK(n285), .QN(n262) );
  DFFX1_RVT \adr_cb_reg[1]  ( .D(N83), .CLK(n278), .Q(\adr_cb[1] ), .QN(n405)
         );
  DFFX1_RVT \last_buf_adr_reg[1]  ( .D(N46), .CLK(n278), .QN(n134) );
  DFFX1_RVT \last_buf_adr_reg[0]  ( .D(N45), .CLK(n278), .QN(n133) );
  DFFX1_RVT rx_data_done_r2_reg ( .D(rx_data_done_r), .CLK(n280), .Q(
        rx_data_done_r2) );
  DFFX1_RVT \dout_r_reg[31]  ( .D(n396), .CLK(n276), .Q(mdout[31]) );
  DFFX1_RVT \dout_r_reg[30]  ( .D(n395), .CLK(n276), .Q(mdout[30]) );
  DFFX1_RVT \dout_r_reg[29]  ( .D(n394), .CLK(n276), .Q(mdout[29]) );
  DFFX1_RVT \dout_r_reg[28]  ( .D(n393), .CLK(n275), .Q(mdout[28]) );
  DFFX1_RVT \dout_r_reg[27]  ( .D(n392), .CLK(n275), .Q(mdout[27]) );
  DFFX1_RVT \dout_r_reg[26]  ( .D(n391), .CLK(n275), .Q(mdout[26]) );
  DFFX1_RVT \dout_r_reg[25]  ( .D(n390), .CLK(n275), .Q(mdout[25]) );
  DFFX1_RVT \dout_r_reg[24]  ( .D(n389), .CLK(n275), .Q(mdout[24]) );
  DFFX1_RVT \dout_r_reg[23]  ( .D(n388), .CLK(n275), .Q(mdout[23]) );
  DFFX1_RVT \dout_r_reg[22]  ( .D(n387), .CLK(n274), .Q(mdout[22]) );
  DFFX1_RVT \dout_r_reg[21]  ( .D(n386), .CLK(n274), .Q(mdout[21]) );
  DFFX1_RVT \dout_r_reg[20]  ( .D(n385), .CLK(n274), .Q(mdout[20]) );
  DFFX1_RVT \dout_r_reg[19]  ( .D(n384), .CLK(n274), .Q(mdout[19]) );
  DFFX1_RVT \dout_r_reg[18]  ( .D(n383), .CLK(n274), .Q(mdout[18]) );
  DFFX1_RVT \dout_r_reg[17]  ( .D(n382), .CLK(n274), .Q(mdout[17]) );
  DFFX1_RVT \dout_r_reg[16]  ( .D(n381), .CLK(n273), .Q(mdout[16]) );
  DFFX1_RVT \dout_r_reg[15]  ( .D(n380), .CLK(n273), .Q(mdout[15]) );
  DFFX1_RVT \dout_r_reg[14]  ( .D(n379), .CLK(n273), .Q(mdout[14]) );
  DFFX1_RVT \dout_r_reg[13]  ( .D(n378), .CLK(n273), .Q(mdout[13]) );
  DFFX1_RVT \dout_r_reg[12]  ( .D(n377), .CLK(n273), .Q(mdout[12]) );
  DFFX1_RVT \dout_r_reg[11]  ( .D(n376), .CLK(n273), .Q(mdout[11]) );
  DFFX1_RVT \dout_r_reg[10]  ( .D(n375), .CLK(n272), .Q(mdout[10]) );
  DFFX1_RVT \dout_r_reg[9]  ( .D(n374), .CLK(n272), .Q(mdout[9]) );
  DFFX1_RVT \dout_r_reg[8]  ( .D(n373), .CLK(n272), .Q(mdout[8]) );
  DFFX1_RVT \dout_r_reg[7]  ( .D(n372), .CLK(n272), .Q(mdout[7]) );
  DFFX1_RVT \dout_r_reg[6]  ( .D(n371), .CLK(n272), .Q(mdout[6]) );
  DFFX1_RVT \dout_r_reg[5]  ( .D(n370), .CLK(n286), .Q(mdout[5]) );
  DFFX1_RVT \dout_r_reg[4]  ( .D(n369), .CLK(n287), .Q(mdout[4]) );
  DFFX1_RVT \dout_r_reg[3]  ( .D(n368), .CLK(n287), .Q(mdout[3]) );
  DFFX1_RVT \dout_r_reg[2]  ( .D(n367), .CLK(n287), .Q(mdout[2]) );
  DFFX1_RVT \dout_r_reg[1]  ( .D(n366), .CLK(n287), .Q(mdout[1]) );
  DFFX1_RVT \dout_r_reg[0]  ( .D(n365), .CLK(n287), .Q(mdout[0]) );
  DFFX1_RVT \rd_buf1_reg[0]  ( .D(n362), .CLK(n286), .Q(rd_buf1[0]), .QN(n171)
         );
  DFFX1_RVT \rd_buf1_reg[31]  ( .D(n361), .CLK(n286), .Q(rd_buf1[31]), .QN(
        n152) );
  DFFX1_RVT \rd_buf1_reg[30]  ( .D(n360), .CLK(n286), .Q(rd_buf1[30]), .QN(
        n137) );
  DFFX1_RVT \rd_buf1_reg[29]  ( .D(n359), .CLK(n286), .Q(rd_buf1[29]), .QN(
        n165) );
  DFFX1_RVT \rd_buf1_reg[28]  ( .D(n358), .CLK(n286), .Q(rd_buf1[28]), .QN(
        n143) );
  DFFX1_RVT \rd_buf1_reg[27]  ( .D(n357), .CLK(n285), .Q(rd_buf1[27]), .QN(
        n149) );
  DFFX1_RVT \rd_buf1_reg[26]  ( .D(n356), .CLK(n286), .Q(rd_buf1[26]), .QN(
        n146) );
  DFFX1_RVT \rd_buf1_reg[25]  ( .D(n355), .CLK(n285), .Q(rd_buf1[25]), .QN(
        n140) );
  DFFX1_RVT \rd_buf1_reg[24]  ( .D(n354), .CLK(n285), .Q(rd_buf1[24]), .QN(
        n156) );
  DFFX1_RVT \rd_buf1_reg[23]  ( .D(n353), .CLK(n285), .Q(rd_buf1[23]), .QN(n56) );
  DFFX1_RVT \rd_buf1_reg[22]  ( .D(n352), .CLK(n285), .Q(rd_buf1[22]), .QN(n33) );
  DFFX1_RVT \rd_buf1_reg[21]  ( .D(n351), .CLK(n285), .Q(rd_buf1[21]), .QN(n66) );
  DFFX1_RVT \rd_buf1_reg[20]  ( .D(n350), .CLK(n285), .Q(rd_buf1[20]), .QN(n43) );
  DFFX1_RVT \rd_buf1_reg[19]  ( .D(n349), .CLK(n285), .Q(rd_buf1[19]), .QN(n53) );
  DFFX1_RVT \rd_buf1_reg[18]  ( .D(n348), .CLK(n285), .Q(rd_buf1[18]), .QN(n46) );
  DFFX1_RVT \rd_buf1_reg[17]  ( .D(n347), .CLK(n285), .Q(rd_buf1[17]), .QN(n36) );
  DFFX1_RVT \rd_buf1_reg[16]  ( .D(n346), .CLK(n284), .Q(rd_buf1[16]), .QN(n59) );
  DFFX1_RVT \rd_buf1_reg[15]  ( .D(n345), .CLK(n284), .Q(rd_buf1[15]), .QN(n77) );
  DFFX1_RVT \rd_buf1_reg[14]  ( .D(n344), .CLK(n284), .Q(rd_buf1[14]), .QN(n78) );
  DFFX1_RVT \rd_buf1_reg[13]  ( .D(n343), .CLK(n284), .Q(rd_buf1[13]), .QN(n69) );
  DFFX1_RVT \rd_buf1_reg[12]  ( .D(n342), .CLK(n284), .Q(rd_buf1[12]), .QN(n71) );
  DFFX1_RVT \rd_buf1_reg[11]  ( .D(n341), .CLK(n284), .Q(rd_buf1[11]), .QN(n72) );
  DFFX1_RVT \rd_buf1_reg[10]  ( .D(n340), .CLK(n284), .Q(rd_buf1[10]), .QN(n70) );
  DFFX1_RVT \rd_buf1_reg[9]  ( .D(n339), .CLK(n284), .Q(rd_buf1[9]), .QN(n67)
         );
  DFFX1_RVT \rd_buf1_reg[8]  ( .D(n338), .CLK(n284), .Q(rd_buf1[8]), .QN(n68)
         );
  DFFX1_RVT \rd_buf1_reg[7]  ( .D(n337), .CLK(n284), .Q(rd_buf1[7]), .QN(n188)
         );
  DFFX1_RVT \rd_buf1_reg[6]  ( .D(n336), .CLK(n284), .Q(rd_buf1[6]), .QN(n191)
         );
  DFFX1_RVT \rd_buf1_reg[5]  ( .D(n335), .CLK(n284), .Q(rd_buf1[5]), .QN(n175)
         );
  DFFX1_RVT \rd_buf1_reg[4]  ( .D(n334), .CLK(n283), .Q(rd_buf1[4]), .QN(n180)
         );
  DFFX1_RVT \rd_buf1_reg[3]  ( .D(n333), .CLK(n283), .Q(rd_buf1[3]), .QN(n181)
         );
  DFFX1_RVT \rd_buf1_reg[2]  ( .D(n332), .CLK(n283), .Q(rd_buf1[2]), .QN(n176)
         );
  DFFX1_RVT \rd_buf1_reg[1]  ( .D(n331), .CLK(n283), .Q(rd_buf1[1]), .QN(n167)
         );
  DFFX1_RVT \rd_buf0_reg[0]  ( .D(n330), .CLK(n283), .Q(rd_buf0[0]), .QN(n155)
         );
  DFFX1_RVT \rd_buf0_reg[31]  ( .D(n329), .CLK(n283), .Q(rd_buf0[31]), .QN(
        n150) );
  DFFX1_RVT \rd_buf0_reg[30]  ( .D(n328), .CLK(n283), .Q(rd_buf0[30]), .QN(
        n135) );
  DFFX1_RVT \rd_buf0_reg[29]  ( .D(n327), .CLK(n283), .Q(rd_buf0[29]), .QN(
        n157) );
  DFFX1_RVT \rd_buf0_reg[28]  ( .D(n326), .CLK(n283), .Q(rd_buf0[28]), .QN(
        n141) );
  DFFX1_RVT \rd_buf0_reg[27]  ( .D(n325), .CLK(n283), .Q(rd_buf0[27]), .QN(
        n147) );
  DFFX1_RVT \rd_buf0_reg[26]  ( .D(n324), .CLK(n285), .Q(rd_buf0[26]), .QN(
        n144) );
  DFFX1_RVT \rd_buf0_reg[25]  ( .D(n323), .CLK(n283), .Q(rd_buf0[25]), .QN(
        n138) );
  DFFX1_RVT \rd_buf0_reg[24]  ( .D(n322), .CLK(n283), .Q(rd_buf0[24]), .QN(
        n153) );
  DFFX1_RVT \rd_buf0_reg[23]  ( .D(n321), .CLK(n282), .Q(rd_buf0[23]), .QN(n54) );
  DFFX1_RVT \rd_buf0_reg[22]  ( .D(n320), .CLK(n282), .Q(rd_buf0[22]), .QN(n31) );
  DFFX1_RVT \rd_buf0_reg[21]  ( .D(n319), .CLK(n282), .Q(rd_buf0[21]), .QN(n60) );
  DFFX1_RVT \rd_buf0_reg[20]  ( .D(n318), .CLK(n282), .Q(rd_buf0[20]), .QN(n41) );
  DFFX1_RVT \rd_buf0_reg[19]  ( .D(n317), .CLK(n282), .Q(rd_buf0[19]), .QN(n47) );
  DFFX1_RVT \rd_buf0_reg[18]  ( .D(n316), .CLK(n282), .Q(rd_buf0[18]), .QN(n44) );
  DFFX1_RVT \rd_buf0_reg[17]  ( .D(n315), .CLK(n282), .Q(rd_buf0[17]), .QN(n34) );
  DFFX1_RVT \rd_buf0_reg[16]  ( .D(n314), .CLK(n282), .Q(rd_buf0[16]), .QN(n57) );
  DFFX1_RVT \rd_buf0_reg[15]  ( .D(n313), .CLK(n282), .Q(rd_buf0[15]), .QN(n55) );
  DFFX1_RVT \rd_buf0_reg[14]  ( .D(n312), .CLK(n282), .Q(rd_buf0[14]), .QN(n32) );
  DFFX1_RVT \rd_buf0_reg[13]  ( .D(n311), .CLK(n282), .Q(rd_buf0[13]), .QN(n65) );
  DFFX1_RVT \rd_buf0_reg[12]  ( .D(n310), .CLK(n282), .Q(rd_buf0[12]), .QN(n42) );
  DFFX1_RVT \rd_buf0_reg[11]  ( .D(n309), .CLK(n281), .Q(rd_buf0[11]), .QN(n48) );
  DFFX1_RVT \rd_buf0_reg[10]  ( .D(n308), .CLK(n281), .Q(rd_buf0[10]), .QN(n45) );
  DFFX1_RVT \rd_buf0_reg[9]  ( .D(n307), .CLK(n281), .Q(rd_buf0[9]), .QN(n35)
         );
  DFFX1_RVT \rd_buf0_reg[8]  ( .D(n306), .CLK(n281), .Q(rd_buf0[8]), .QN(n58)
         );
  DFFX1_RVT \rd_buf0_reg[7]  ( .D(n305), .CLK(n281), .Q(rd_buf0[7]), .QN(n151)
         );
  DFFX1_RVT \rd_buf0_reg[6]  ( .D(n304), .CLK(n281), .Q(rd_buf0[6]), .QN(n136)
         );
  DFFX1_RVT \rd_buf0_reg[5]  ( .D(n303), .CLK(n281), .Q(rd_buf0[5]), .QN(n164)
         );
  DFFX1_RVT \rd_buf0_reg[4]  ( .D(n302), .CLK(n281), .Q(rd_buf0[4]), .QN(n142)
         );
  DFFX1_RVT \rd_buf0_reg[3]  ( .D(n301), .CLK(n281), .Q(rd_buf0[3]), .QN(n148)
         );
  DFFX1_RVT \rd_buf0_reg[2]  ( .D(n300), .CLK(n281), .Q(rd_buf0[2]), .QN(n145)
         );
  DFFX1_RVT \rd_buf0_reg[1]  ( .D(n299), .CLK(n281), .Q(rd_buf0[1]), .QN(n139)
         );
  DFFX1_RVT send_data_r_reg ( .D(n413), .CLK(n287), .Q(send_data_r) );
  DFFX1_RVT word_done_r_reg ( .D(N215), .CLK(n276), .Q(n260) );
  DFFX1_RVT \last_buf_adr_reg[2]  ( .D(N47), .CLK(n278), .Q(last_buf_adr[2])
         );
  DFFX1_RVT \last_buf_adr_reg[14]  ( .D(N59), .CLK(n279), .Q(last_buf_adr[14])
         );
  DFFX1_RVT \last_buf_adr_reg[13]  ( .D(N58), .CLK(n279), .Q(last_buf_adr[13])
         );
  DFFX1_RVT \last_buf_adr_reg[12]  ( .D(N57), .CLK(n279), .Q(last_buf_adr[12])
         );
  DFFX1_RVT \last_buf_adr_reg[11]  ( .D(N56), .CLK(n279), .Q(last_buf_adr[11])
         );
  DFFX1_RVT \last_buf_adr_reg[10]  ( .D(N55), .CLK(n279), .Q(last_buf_adr[10])
         );
  DFFX1_RVT \last_buf_adr_reg[9]  ( .D(N54), .CLK(n279), .Q(last_buf_adr[9])
         );
  DFFX1_RVT \last_buf_adr_reg[8]  ( .D(N53), .CLK(n279), .Q(last_buf_adr[8])
         );
  DFFX1_RVT \last_buf_adr_reg[7]  ( .D(N52), .CLK(n279), .Q(last_buf_adr[7])
         );
  DFFX1_RVT \last_buf_adr_reg[6]  ( .D(N51), .CLK(n279), .Q(last_buf_adr[6])
         );
  DFFX1_RVT \last_buf_adr_reg[5]  ( .D(N50), .CLK(n279), .Q(last_buf_adr[5])
         );
  DFFX1_RVT \last_buf_adr_reg[4]  ( .D(N49), .CLK(n279), .Q(last_buf_adr[4])
         );
  DFFX1_RVT \last_buf_adr_reg[3]  ( .D(N48), .CLK(n279), .Q(last_buf_adr[3])
         );
  DFFX1_RVT send_zero_length_r_reg ( .D(send_zero_length), .CLK(n280), .Q(
        send_zero_length_r), .QN(n130) );
  DFFX1_RVT \state_reg[0]  ( .D(n467), .CLK(n277), .Q(state[0]) );
  DFFX1_RVT rx_dma_en_r_reg ( .D(rx_dma_en), .CLK(n280), .Q(n263), .QN(n127)
         );
  SDFFSSRX1_RVT mwe_reg ( .RSTB(1'b1), .SETB(n410), .D(state[4]), .SI(1'b1), 
        .SE(state[3]), .CLK(n289), .Q(mwe) );
  SDFFSSRX1_RVT word_done_reg ( .RSTB(rx_data_valid_r), .SETB(1'b1), .D(n501), 
        .SI(1'b1), .SE(wr_last), .CLK(n289), .Q(n20), .QN(n80) );
  DFFX1_RVT \sizd_c_reg[13]  ( .D(n466), .CLK(n286), .Q(sizd_c[13]), .QN(n129)
         );
  DFFX1_RVT \state_reg[4]  ( .D(n448), .CLK(n276), .Q(state[4]), .QN(n132) );
  DFFX1_RVT tx_dma_en_r_reg ( .D(tx_dma_en), .CLK(n280), .Q(n265) );
  DFFSSRX1_RVT idma_done_reg ( .D(n503), .SETB(n403), .RSTB(1'b1), .CLK(n272), 
        .Q(idma_done) );
  DFFX1_RVT \sizd_c_reg[1]  ( .D(n464), .CLK(n288), .Q(sizd_c[1]), .QN(n24) );
  DFFX1_RVT \state_reg[7]  ( .D(n452), .CLK(n276), .Q(state[7]), .QN(n29) );
  DFFX1_RVT \state_reg[6]  ( .D(n446), .CLK(n276), .Q(state[6]) );
  DFFX1_RVT \sizd_c_reg[5]  ( .D(n460), .CLK(n288), .Q(sizd_c[5]), .QN(n22) );
  DFFX1_RVT \sizd_c_reg[7]  ( .D(n458), .CLK(n288), .Q(sizd_c[7]), .QN(n131)
         );
  DFFX1_RVT \sizd_c_reg[9]  ( .D(n456), .CLK(n288), .Q(sizd_c[9]), .QN(n14) );
  DFFX1_RVT \sizd_c_reg[2]  ( .D(n463), .CLK(n287), .Q(sizd_c[2]), .QN(n12) );
  DFFX1_RVT \sizd_c_reg[3]  ( .D(n462), .CLK(n286), .Q(sizd_c[3]), .QN(n128)
         );
  DFFX1_RVT \sizd_c_reg[4]  ( .D(n461), .CLK(n287), .Q(sizd_c[4]), .QN(n10) );
  DFFX1_RVT \sizd_c_reg[6]  ( .D(n459), .CLK(n286), .Q(sizd_c[6]), .QN(n4) );
  DFFX1_RVT \sizd_c_reg[8]  ( .D(n457), .CLK(n287), .Q(sizd_c[8]), .QN(n30) );
  DFFX1_RVT \rx_data_st_r_reg[7]  ( .D(rx_data_st[7]), .CLK(n272), .Q(
        rx_data_st_r[7]) );
  DFFX1_RVT \rx_data_st_r_reg[6]  ( .D(rx_data_st[6]), .CLK(n280), .Q(
        rx_data_st_r[6]) );
  DFFX1_RVT \rx_data_st_r_reg[5]  ( .D(rx_data_st[5]), .CLK(n280), .Q(
        rx_data_st_r[5]) );
  DFFX1_RVT \rx_data_st_r_reg[4]  ( .D(rx_data_st[4]), .CLK(n280), .Q(
        rx_data_st_r[4]) );
  DFFX1_RVT \rx_data_st_r_reg[3]  ( .D(rx_data_st[3]), .CLK(n280), .Q(
        rx_data_st_r[3]) );
  DFFX1_RVT \rx_data_st_r_reg[2]  ( .D(rx_data_st[2]), .CLK(n280), .Q(
        rx_data_st_r[2]) );
  DFFX1_RVT \rx_data_st_r_reg[1]  ( .D(rx_data_st[1]), .CLK(n280), .Q(
        rx_data_st_r[1]) );
  DFFX1_RVT \rx_data_st_r_reg[0]  ( .D(rx_data_st[0]), .CLK(n280), .Q(
        rx_data_st_r[0]) );
  DFFX1_RVT \state_reg[2]  ( .D(n450), .CLK(n277), .Q(state[2]), .QN(n410) );
  DFFX1_RVT \sizd_c_reg[10]  ( .D(n455), .CLK(n287), .Q(sizd_c[10]) );
  DFFX1_RVT \sizd_c_reg[12]  ( .D(n453), .CLK(n286), .Q(sizd_c[12]), .QN(n3)
         );
  DFFX1_RVT \sizd_c_reg[11]  ( .D(n454), .CLK(n287), .Q(sizd_c[11]) );
  DFFX1_RVT \sizd_c_reg[0]  ( .D(n465), .CLK(n287), .Q(sizd_c[0]) );
  DFFX1_RVT \state_reg[1]  ( .D(n451), .CLK(n277), .Q(state[1]) );
  DFFX1_RVT \state_reg[5]  ( .D(n447), .CLK(n277), .Q(state[5]) );
  SDFFSSRX1_RVT \adr_cw_reg[13]  ( .RSTB(adrw_next[13]), .SETB(n215), .D(n505), 
        .SI(adr[15]), .SE(n219), .CLK(n288), .Q(madr[13]) );
  SDFFSSRX1_RVT \adr_cw_reg[12]  ( .RSTB(adrw_next[12]), .SETB(n215), .D(n505), 
        .SI(adr[14]), .SE(n219), .CLK(n289), .Q(madr[12]) );
  SDFFSSRX1_RVT \adr_cw_reg[11]  ( .RSTB(adrw_next[11]), .SETB(n215), .D(n505), 
        .SI(adr[13]), .SE(n219), .CLK(n288), .Q(madr[11]) );
  SDFFSSRX1_RVT \adr_cw_reg[10]  ( .RSTB(adrw_next[10]), .SETB(n215), .D(n505), 
        .SI(adr[12]), .SE(n219), .CLK(n289), .Q(madr[10]) );
  SDFFSSRX1_RVT \adr_cw_reg[9]  ( .RSTB(adrw_next[9]), .SETB(n218), .D(n505), 
        .SI(adr[11]), .SE(n220), .CLK(n289), .Q(madr[9]) );
  SDFFSSRX1_RVT \adr_cw_reg[8]  ( .RSTB(adrw_next[8]), .SETB(n218), .D(n505), 
        .SI(adr[10]), .SE(n219), .CLK(n289), .Q(madr[8]) );
  SDFFSSRX1_RVT \adr_cw_reg[7]  ( .RSTB(adrw_next[7]), .SETB(n215), .D(n505), 
        .SI(adr[9]), .SE(n220), .CLK(n289), .Q(madr[7]) );
  SDFFSSRX1_RVT \adr_cw_reg[6]  ( .RSTB(adrw_next[6]), .SETB(n218), .D(n505), 
        .SI(adr[8]), .SE(n220), .CLK(n289), .Q(madr[6]) );
  SDFFSSRX1_RVT \adr_cw_reg[5]  ( .RSTB(adrw_next[5]), .SETB(n218), .D(n505), 
        .SI(adr[7]), .SE(n220), .CLK(n288), .Q(madr[5]) );
  SDFFSSRX1_RVT \adr_cw_reg[4]  ( .RSTB(adrw_next[4]), .SETB(n218), .D(n505), 
        .SI(adr[6]), .SE(n219), .CLK(n289), .Q(madr[4]) );
  SDFFSSRX1_RVT \adr_cw_reg[3]  ( .RSTB(adrw_next[3]), .SETB(n215), .D(n505), 
        .SI(adr[5]), .SE(n220), .CLK(n288), .Q(madr[3]) );
  SDFFSSRX1_RVT \adr_cw_reg[2]  ( .RSTB(adrw_next[2]), .SETB(n218), .D(n505), 
        .SI(adr[4]), .SE(n220), .CLK(n289), .Q(madr[2]) );
  SDFFSSRX1_RVT \adr_cw_reg[1]  ( .RSTB(adrw_next[1]), .SETB(n218), .D(n505), 
        .SI(adr[3]), .SE(n220), .CLK(n288), .Q(madr[1]) );
  SDFFSSRX1_RVT \adr_cw_reg[14]  ( .RSTB(adrw_next[14]), .SETB(n218), .D(n505), 
        .SI(adr[16]), .SE(n219), .CLK(n289), .Q(madr[14]) );
  SDFFSSRX1_RVT \adr_cw_reg[0]  ( .RSTB(adrw_next[0]), .SETB(n215), .D(n505), 
        .SI(adr[2]), .SE(n219), .CLK(n289), .Q(madr[0]), .QN(n266) );
  SDFFSSRX1_RVT wr_last_reg ( .RSTB(n412), .SETB(n407), .D(\adr_cb[1] ), .SI(
        1'b0), .SE(rx_data_valid_r), .CLK(n272), .Q(wr_last), .QN(n126) );
  DFFX1_RVT rx_data_valid_r_reg ( .D(rx_data_valid), .CLK(n281), .Q(
        rx_data_valid_r) );
  DFFX1_RVT \sizu_c_reg[9]  ( .D(n469), .CLK(n277), .Q(sizu_c[9]) );
  DFFX1_RVT \sizu_c_reg[4]  ( .D(n474), .CLK(n278), .Q(sizu_c[4]) );
  DFFX1_RVT \sizu_c_reg[6]  ( .D(n472), .CLK(n277), .Q(sizu_c[6]) );
  DFFX1_RVT \sizu_c_reg[8]  ( .D(n470), .CLK(n277), .Q(sizu_c[8]) );
  DFFX1_RVT \sizu_c_reg[3]  ( .D(n475), .CLK(n278), .Q(sizu_c[3]) );
  DFFX1_RVT \sizu_c_reg[5]  ( .D(n473), .CLK(n278), .Q(sizu_c[5]) );
  DFFX1_RVT \sizu_c_reg[7]  ( .D(n471), .CLK(n277), .Q(sizu_c[7]) );
  DFFX1_RVT \sizu_c_reg[0]  ( .D(n478), .CLK(n278), .Q(sizu_c[0]) );
  DFFX1_RVT \sizu_c_reg[2]  ( .D(n476), .CLK(n278), .Q(sizu_c[2]) );
  DFFX1_RVT \state_reg[3]  ( .D(n449), .CLK(n277), .Q(state[3]) );
  DFFX1_RVT \sizu_c_reg[1]  ( .D(n477), .CLK(n278), .Q(sizu_c[1]) );
  DFFX1_RVT \sizu_c_reg[10]  ( .D(n468), .CLK(n277), .Q(sizu_c[10]) );
  DFFX1_RVT rx_data_done_r_reg ( .D(rx_data_done), .CLK(n280), .Q(
        rx_data_done_r), .QN(n403) );
  DFFX1_RVT wr_done_r_reg ( .D(rx_data_done_r), .CLK(n277), .Q(wr_done_r) );
  AND3X1_RVT U3 ( .A1(n249), .A2(n127), .A3(rst), .Y(n1) );
  INVX1_RVT U4 ( .A(n290), .Y(n282) );
  INVX1_RVT U5 ( .A(n290), .Y(n283) );
  INVX1_RVT U6 ( .A(n290), .Y(n284) );
  INVX1_RVT U7 ( .A(n290), .Y(n285) );
  INVX1_RVT U8 ( .A(n290), .Y(n287) );
  INVX1_RVT U10 ( .A(n290), .Y(n286) );
  INVX1_RVT U11 ( .A(n290), .Y(n279) );
  INVX1_RVT U12 ( .A(n290), .Y(n280) );
  INVX1_RVT U13 ( .A(n290), .Y(n281) );
  INVX1_RVT U14 ( .A(n291), .Y(n273) );
  INVX1_RVT U15 ( .A(n291), .Y(n274) );
  INVX1_RVT U16 ( .A(n291), .Y(n275) );
  INVX1_RVT U17 ( .A(n291), .Y(n276) );
  INVX1_RVT U18 ( .A(n291), .Y(n277) );
  INVX1_RVT U19 ( .A(n291), .Y(n278) );
  INVX1_RVT U20 ( .A(n291), .Y(n272) );
  INVX1_RVT U21 ( .A(n290), .Y(n288) );
  INVX1_RVT U22 ( .A(n290), .Y(n289) );
  INVX1_RVT U23 ( .A(n236), .Y(n228) );
  INVX1_RVT U24 ( .A(n236), .Y(n229) );
  INVX1_RVT U25 ( .A(clk), .Y(n291) );
  INVX1_RVT U26 ( .A(clk), .Y(n290) );
  INVX1_RVT U27 ( .A(n169), .Y(n496) );
  INVX1_RVT U28 ( .A(n248), .Y(n246) );
  INVX1_RVT U29 ( .A(n248), .Y(n247) );
  INVX1_RVT U30 ( .A(n103), .Y(n498) );
  INVX1_RVT U31 ( .A(n267), .Y(n270) );
  INVX1_RVT U32 ( .A(n267), .Y(n269) );
  INVX1_RVT U33 ( .A(n119), .Y(n244) );
  INVX1_RVT U34 ( .A(dma_en), .Y(n505) );
  INVX1_RVT U35 ( .A(n119), .Y(n236) );
  INVX1_RVT U36 ( .A(n119), .Y(n239) );
  INVX1_RVT U37 ( .A(n170), .Y(n501) );
  INVX1_RVT U38 ( .A(n196), .Y(n218) );
  INVX1_RVT U39 ( .A(n196), .Y(n215) );
  NAND3X0_RVT U40 ( .A1(n498), .A2(n499), .A3(n500), .Y(n15) );
  NAND3X0_RVT U41 ( .A1(n500), .A2(n499), .A3(n103), .Y(n9) );
  INVX1_RVT U42 ( .A(n193), .Y(n224) );
  INVX1_RVT U43 ( .A(n193), .Y(n225) );
  NOR2X0_RVT U44 ( .A1(n271), .A2(n220), .Y(n256) );
  INVX1_RVT U45 ( .A(rd_next), .Y(n504) );
  INVX1_RVT U46 ( .A(n116), .Y(n254) );
  INVX1_RVT U47 ( .A(n195), .Y(n490) );
  INVX1_RVT U48 ( .A(rst), .Y(n271) );
  INVX1_RVT U49 ( .A(n105), .Y(n500) );
  INVX1_RVT U50 ( .A(n110), .Y(n499) );
  INVX1_RVT U51 ( .A(n253), .Y(n502) );
  INVX1_RVT U52 ( .A(n116), .Y(n250) );
  INVX1_RVT U53 ( .A(n249), .Y(n497) );
  INVX1_RVT U54 ( .A(n116), .Y(n248) );
  INVX1_RVT U55 ( .A(n409), .Y(n227) );
  INVX1_RVT U56 ( .A(n409), .Y(n226) );
  NAND2X0_RVT U57 ( .A1(n199), .A2(n214), .Y(n193) );
  XOR2X1_RVT U58 ( .A1(\adr_cb[1] ), .A2(n258), .Y(n103) );
  INVX1_RVT U59 ( .A(n183), .Y(n493) );
  INVX1_RVT U60 ( .A(n178), .Y(n494) );
  INVX1_RVT U61 ( .A(n173), .Y(n495) );
  INVX1_RVT U62 ( .A(n80), .Y(n268) );
  INVX1_RVT U63 ( .A(n80), .Y(n267) );
  INVX1_RVT U64 ( .A(n214), .Y(n489) );
  INVX1_RVT U65 ( .A(n197), .Y(n220) );
  INVX1_RVT U66 ( .A(n197), .Y(n219) );
  NAND3X0_RVT U67 ( .A1(n498), .A2(n499), .A3(n105), .Y(n13) );
  NAND3X0_RVT U68 ( .A1(n500), .A2(n498), .A3(n110), .Y(n23) );
  NAND3X0_RVT U69 ( .A1(n105), .A2(n498), .A3(n110), .Y(n21) );
  AO21X1_RVT U70 ( .A1(n501), .A2(n168), .A3(n16), .Y(n169) );
  AND2X1_RVT U71 ( .A1(rst), .A2(n195), .Y(n187) );
  AND2X1_RVT U72 ( .A1(rst), .A2(n220), .Y(n255) );
  AND2X1_RVT U73 ( .A1(n168), .A2(n169), .Y(n166) );
  AND2X1_RVT U74 ( .A1(n168), .A2(n183), .Y(n182) );
  AND2X1_RVT U75 ( .A1(n168), .A2(n178), .Y(n177) );
  AND2X1_RVT U76 ( .A1(n168), .A2(n173), .Y(n172) );
  NAND3X0_RVT U77 ( .A1(n103), .A2(n499), .A3(n105), .Y(n11) );
  NAND3X0_RVT U78 ( .A1(n103), .A2(n500), .A3(n110), .Y(n17) );
  AND2X1_RVT U79 ( .A1(n187), .A2(n492), .Y(n185) );
  NAND3X0_RVT U80 ( .A1(n103), .A2(n105), .A3(n110), .Y(n19) );
  OR4X1_RVT U81 ( .A1(n488), .A2(n487), .A3(n486), .A4(n485), .Y(n196) );
  NAND2X0_RVT U82 ( .A1(n79), .A2(\adr_cb[1] ), .Y(n170) );
  NAND2X0_RVT U83 ( .A1(n18), .A2(madr[0]), .Y(n119) );
  INVX1_RVT U84 ( .A(n199), .Y(n223) );
  INVX1_RVT U85 ( .A(n199), .Y(n222) );
  NAND4X0_RVT U86 ( .A1(n25), .A2(n26), .A3(n27), .A4(n28), .Y(tx_data_st[6])
         );
  OA22X1_RVT U87 ( .A1(n9), .A2(n135), .A3(n11), .A4(n31), .Y(n28) );
  OA22X1_RVT U88 ( .A1(n13), .A2(n136), .A3(n15), .A4(n32), .Y(n27) );
  OA22X1_RVT U89 ( .A1(n17), .A2(n137), .A3(n19), .A4(n33), .Y(n26) );
  NAND4X0_RVT U90 ( .A1(n85), .A2(n86), .A3(n87), .A4(n88), .Y(tx_data_st[1])
         );
  OA22X1_RVT U91 ( .A1(n9), .A2(n138), .A3(n11), .A4(n34), .Y(n88) );
  OA22X1_RVT U92 ( .A1(n13), .A2(n139), .A3(n15), .A4(n35), .Y(n87) );
  OA22X1_RVT U93 ( .A1(n17), .A2(n140), .A3(n19), .A4(n36), .Y(n86) );
  NAND4X0_RVT U94 ( .A1(n49), .A2(n50), .A3(n51), .A4(n52), .Y(tx_data_st[4])
         );
  OA22X1_RVT U95 ( .A1(n9), .A2(n141), .A3(n11), .A4(n41), .Y(n52) );
  OA22X1_RVT U96 ( .A1(n13), .A2(n142), .A3(n15), .A4(n42), .Y(n51) );
  OA22X1_RVT U97 ( .A1(n17), .A2(n143), .A3(n19), .A4(n43), .Y(n50) );
  NAND4X0_RVT U98 ( .A1(n73), .A2(n74), .A3(n75), .A4(n76), .Y(tx_data_st[2])
         );
  OA22X1_RVT U99 ( .A1(n9), .A2(n144), .A3(n11), .A4(n44), .Y(n76) );
  OA22X1_RVT U100 ( .A1(n13), .A2(n145), .A3(n15), .A4(n45), .Y(n75) );
  OA22X1_RVT U101 ( .A1(n17), .A2(n146), .A3(n19), .A4(n46), .Y(n74) );
  NAND4X0_RVT U102 ( .A1(n61), .A2(n62), .A3(n63), .A4(n64), .Y(tx_data_st[3])
         );
  OA22X1_RVT U103 ( .A1(n9), .A2(n147), .A3(n11), .A4(n47), .Y(n64) );
  OA22X1_RVT U104 ( .A1(n13), .A2(n148), .A3(n15), .A4(n48), .Y(n63) );
  OA22X1_RVT U105 ( .A1(n17), .A2(n149), .A3(n19), .A4(n53), .Y(n62) );
  NAND4X0_RVT U106 ( .A1(n5), .A2(n6), .A3(n7), .A4(n8), .Y(tx_data_st[7]) );
  OA22X1_RVT U107 ( .A1(n9), .A2(n150), .A3(n11), .A4(n54), .Y(n8) );
  OA22X1_RVT U108 ( .A1(n13), .A2(n151), .A3(n15), .A4(n55), .Y(n7) );
  OA22X1_RVT U109 ( .A1(n17), .A2(n152), .A3(n19), .A4(n56), .Y(n6) );
  NAND4X0_RVT U110 ( .A1(n97), .A2(n98), .A3(n99), .A4(n100), .Y(tx_data_st[0]) );
  OA22X1_RVT U111 ( .A1(n9), .A2(n153), .A3(n11), .A4(n57), .Y(n100) );
  OA22X1_RVT U112 ( .A1(n13), .A2(n155), .A3(n15), .A4(n58), .Y(n99) );
  OA22X1_RVT U113 ( .A1(n17), .A2(n156), .A3(n19), .A4(n59), .Y(n98) );
  NAND4X0_RVT U114 ( .A1(n37), .A2(n38), .A3(n39), .A4(n40), .Y(tx_data_st[5])
         );
  OA22X1_RVT U115 ( .A1(n9), .A2(n157), .A3(n11), .A4(n60), .Y(n40) );
  OA22X1_RVT U116 ( .A1(n13), .A2(n164), .A3(n15), .A4(n65), .Y(n39) );
  OA22X1_RVT U117 ( .A1(n17), .A2(n165), .A3(n19), .A4(n66), .Y(n38) );
  INVX1_RVT U118 ( .A(n154), .Y(n503) );
  AO22X1_RVT U119 ( .A1(n239), .A2(mdin[25]), .A3(rd_buf1[25]), .A4(n119), .Y(
        n355) );
  AO22X1_RVT U120 ( .A1(n239), .A2(mdin[26]), .A3(rd_buf1[26]), .A4(n119), .Y(
        n356) );
  AO22X1_RVT U121 ( .A1(n244), .A2(mdin[27]), .A3(rd_buf1[27]), .A4(n119), .Y(
        n357) );
  AO22X1_RVT U122 ( .A1(n244), .A2(mdin[28]), .A3(rd_buf1[28]), .A4(n119), .Y(
        n358) );
  AO22X1_RVT U123 ( .A1(n244), .A2(mdin[29]), .A3(rd_buf1[29]), .A4(n119), .Y(
        n359) );
  AO22X1_RVT U124 ( .A1(n244), .A2(mdin[30]), .A3(rd_buf1[30]), .A4(n119), .Y(
        n360) );
  AO22X1_RVT U125 ( .A1(n244), .A2(mdin[31]), .A3(rd_buf1[31]), .A4(n119), .Y(
        n361) );
  AO22X1_RVT U126 ( .A1(n244), .A2(mdin[0]), .A3(rd_buf1[0]), .A4(n119), .Y(
        n362) );
  AO22X1_RVT U127 ( .A1(mdin[25]), .A2(n250), .A3(rd_buf0[25]), .A4(n116), .Y(
        n323) );
  AO22X1_RVT U128 ( .A1(mdin[26]), .A2(n254), .A3(rd_buf0[26]), .A4(n116), .Y(
        n324) );
  AO22X1_RVT U129 ( .A1(mdin[27]), .A2(n254), .A3(rd_buf0[27]), .A4(n116), .Y(
        n325) );
  AO22X1_RVT U130 ( .A1(mdin[28]), .A2(n254), .A3(rd_buf0[28]), .A4(n116), .Y(
        n326) );
  AO22X1_RVT U131 ( .A1(mdin[29]), .A2(n254), .A3(rd_buf0[29]), .A4(n116), .Y(
        n327) );
  AO22X1_RVT U132 ( .A1(mdin[30]), .A2(n254), .A3(rd_buf0[30]), .A4(n116), .Y(
        n328) );
  AO22X1_RVT U133 ( .A1(mdin[31]), .A2(n254), .A3(rd_buf0[31]), .A4(n116), .Y(
        n329) );
  AO22X1_RVT U134 ( .A1(mdin[0]), .A2(n254), .A3(rd_buf0[0]), .A4(n116), .Y(
        n330) );
  AO22X1_RVT U135 ( .A1(n267), .A2(n81), .A3(mdout[0]), .A4(n80), .Y(n365) );
  AO22X1_RVT U136 ( .A1(n267), .A2(n82), .A3(mdout[1]), .A4(n80), .Y(n366) );
  AO22X1_RVT U137 ( .A1(n267), .A2(n89), .A3(mdout[2]), .A4(n80), .Y(n367) );
  AO22X1_RVT U138 ( .A1(n267), .A2(n83), .A3(mdout[3]), .A4(n80), .Y(n368) );
  AO22X1_RVT U139 ( .A1(n267), .A2(n84), .A3(mdout[4]), .A4(n80), .Y(n369) );
  AO22X1_RVT U140 ( .A1(n267), .A2(n102), .A3(mdout[5]), .A4(n80), .Y(n370) );
  AO22X1_RVT U141 ( .A1(n267), .A2(n122), .A3(mdout[6]), .A4(n80), .Y(n371) );
  AO22X1_RVT U142 ( .A1(n236), .A2(mdin[1]), .A3(rd_buf1[1]), .A4(n228), .Y(
        n331) );
  AO22X1_RVT U143 ( .A1(n236), .A2(mdin[2]), .A3(rd_buf1[2]), .A4(n228), .Y(
        n332) );
  AO22X1_RVT U144 ( .A1(n236), .A2(mdin[3]), .A3(rd_buf1[3]), .A4(n228), .Y(
        n333) );
  AO22X1_RVT U145 ( .A1(n236), .A2(mdin[4]), .A3(rd_buf1[4]), .A4(n228), .Y(
        n334) );
  AO22X1_RVT U146 ( .A1(n236), .A2(mdin[5]), .A3(rd_buf1[5]), .A4(n228), .Y(
        n335) );
  AO22X1_RVT U147 ( .A1(n236), .A2(mdin[6]), .A3(rd_buf1[6]), .A4(n228), .Y(
        n336) );
  AO22X1_RVT U148 ( .A1(n236), .A2(mdin[7]), .A3(rd_buf1[7]), .A4(n228), .Y(
        n337) );
  AO22X1_RVT U149 ( .A1(n236), .A2(mdin[8]), .A3(rd_buf1[8]), .A4(n228), .Y(
        n338) );
  AO22X1_RVT U150 ( .A1(n236), .A2(mdin[9]), .A3(rd_buf1[9]), .A4(n228), .Y(
        n339) );
  AO22X1_RVT U151 ( .A1(n236), .A2(mdin[10]), .A3(rd_buf1[10]), .A4(n228), .Y(
        n340) );
  AO22X1_RVT U152 ( .A1(n236), .A2(mdin[11]), .A3(rd_buf1[11]), .A4(n228), .Y(
        n341) );
  AO22X1_RVT U153 ( .A1(n239), .A2(mdin[12]), .A3(rd_buf1[12]), .A4(n228), .Y(
        n342) );
  AO22X1_RVT U154 ( .A1(n239), .A2(mdin[13]), .A3(rd_buf1[13]), .A4(n229), .Y(
        n343) );
  AO22X1_RVT U155 ( .A1(n239), .A2(mdin[14]), .A3(rd_buf1[14]), .A4(n229), .Y(
        n344) );
  AO22X1_RVT U156 ( .A1(n239), .A2(mdin[15]), .A3(rd_buf1[15]), .A4(n229), .Y(
        n345) );
  AO22X1_RVT U157 ( .A1(n239), .A2(mdin[16]), .A3(rd_buf1[16]), .A4(n229), .Y(
        n346) );
  AO22X1_RVT U158 ( .A1(n239), .A2(mdin[17]), .A3(rd_buf1[17]), .A4(n229), .Y(
        n347) );
  AO22X1_RVT U159 ( .A1(n239), .A2(mdin[18]), .A3(rd_buf1[18]), .A4(n229), .Y(
        n348) );
  AO22X1_RVT U160 ( .A1(n239), .A2(mdin[19]), .A3(rd_buf1[19]), .A4(n229), .Y(
        n349) );
  AO22X1_RVT U161 ( .A1(n239), .A2(mdin[20]), .A3(rd_buf1[20]), .A4(n229), .Y(
        n350) );
  AO22X1_RVT U162 ( .A1(n239), .A2(mdin[21]), .A3(rd_buf1[21]), .A4(n229), .Y(
        n351) );
  AO22X1_RVT U163 ( .A1(n239), .A2(mdin[22]), .A3(rd_buf1[22]), .A4(n229), .Y(
        n352) );
  AO22X1_RVT U164 ( .A1(n239), .A2(mdin[23]), .A3(rd_buf1[23]), .A4(n229), .Y(
        n353) );
  AO22X1_RVT U165 ( .A1(n239), .A2(mdin[24]), .A3(rd_buf1[24]), .A4(n229), .Y(
        n354) );
  AO22X1_RVT U166 ( .A1(mdin[1]), .A2(n248), .A3(rd_buf0[1]), .A4(n246), .Y(
        n299) );
  AO22X1_RVT U167 ( .A1(mdin[2]), .A2(n248), .A3(rd_buf0[2]), .A4(n246), .Y(
        n300) );
  AO22X1_RVT U168 ( .A1(mdin[3]), .A2(n248), .A3(rd_buf0[3]), .A4(n246), .Y(
        n301) );
  AO22X1_RVT U169 ( .A1(mdin[4]), .A2(n248), .A3(rd_buf0[4]), .A4(n246), .Y(
        n302) );
  AO22X1_RVT U170 ( .A1(mdin[5]), .A2(n248), .A3(rd_buf0[5]), .A4(n246), .Y(
        n303) );
  AO22X1_RVT U171 ( .A1(mdin[6]), .A2(n248), .A3(rd_buf0[6]), .A4(n246), .Y(
        n304) );
  AO22X1_RVT U172 ( .A1(mdin[7]), .A2(n248), .A3(rd_buf0[7]), .A4(n246), .Y(
        n305) );
  AO22X1_RVT U173 ( .A1(mdin[8]), .A2(n248), .A3(rd_buf0[8]), .A4(n246), .Y(
        n306) );
  AO22X1_RVT U174 ( .A1(mdin[9]), .A2(n248), .A3(rd_buf0[9]), .A4(n246), .Y(
        n307) );
  AO22X1_RVT U175 ( .A1(mdin[10]), .A2(n248), .A3(rd_buf0[10]), .A4(n246), .Y(
        n308) );
  AO22X1_RVT U176 ( .A1(mdin[11]), .A2(n248), .A3(rd_buf0[11]), .A4(n246), .Y(
        n309) );
  AO22X1_RVT U177 ( .A1(mdin[12]), .A2(n250), .A3(rd_buf0[12]), .A4(n246), .Y(
        n310) );
  AO22X1_RVT U178 ( .A1(mdin[13]), .A2(n250), .A3(rd_buf0[13]), .A4(n247), .Y(
        n311) );
  AO22X1_RVT U179 ( .A1(mdin[14]), .A2(n250), .A3(rd_buf0[14]), .A4(n247), .Y(
        n312) );
  AO22X1_RVT U180 ( .A1(mdin[15]), .A2(n250), .A3(rd_buf0[15]), .A4(n247), .Y(
        n313) );
  AO22X1_RVT U181 ( .A1(mdin[16]), .A2(n250), .A3(rd_buf0[16]), .A4(n247), .Y(
        n314) );
  AO22X1_RVT U182 ( .A1(mdin[17]), .A2(n250), .A3(rd_buf0[17]), .A4(n247), .Y(
        n315) );
  AO22X1_RVT U183 ( .A1(mdin[18]), .A2(n250), .A3(rd_buf0[18]), .A4(n247), .Y(
        n316) );
  AO22X1_RVT U184 ( .A1(mdin[19]), .A2(n250), .A3(rd_buf0[19]), .A4(n247), .Y(
        n317) );
  AO22X1_RVT U185 ( .A1(mdin[20]), .A2(n250), .A3(rd_buf0[20]), .A4(n247), .Y(
        n318) );
  AO22X1_RVT U186 ( .A1(mdin[21]), .A2(n250), .A3(rd_buf0[21]), .A4(n247), .Y(
        n319) );
  AO22X1_RVT U187 ( .A1(mdin[22]), .A2(n250), .A3(rd_buf0[22]), .A4(n247), .Y(
        n320) );
  AO22X1_RVT U188 ( .A1(mdin[23]), .A2(n250), .A3(rd_buf0[23]), .A4(n247), .Y(
        n321) );
  AO22X1_RVT U189 ( .A1(mdin[24]), .A2(n250), .A3(rd_buf0[24]), .A4(n247), .Y(
        n322) );
  OA21X1_RVT U190 ( .A1(rd_next), .A2(rx_data_valid_r), .A3(n79), .Y(n258) );
  AO22X1_RVT U191 ( .A1(n267), .A2(n123), .A3(mdout[7]), .A4(n270), .Y(n372)
         );
  AO22X1_RVT U192 ( .A1(n267), .A2(n124), .A3(mdout[8]), .A4(n270), .Y(n373)
         );
  AO22X1_RVT U193 ( .A1(n267), .A2(n125), .A3(mdout[9]), .A4(n270), .Y(n374)
         );
  AO22X1_RVT U194 ( .A1(n267), .A2(n104), .A3(mdout[10]), .A4(n270), .Y(n375)
         );
  AO22X1_RVT U195 ( .A1(n268), .A2(n106), .A3(mdout[11]), .A4(n270), .Y(n376)
         );
  AO22X1_RVT U196 ( .A1(n268), .A2(n107), .A3(mdout[12]), .A4(n270), .Y(n377)
         );
  AO22X1_RVT U197 ( .A1(n268), .A2(n108), .A3(mdout[13]), .A4(n270), .Y(n378)
         );
  AO22X1_RVT U198 ( .A1(n268), .A2(n109), .A3(mdout[14]), .A4(n270), .Y(n379)
         );
  AO22X1_RVT U199 ( .A1(n268), .A2(n111), .A3(mdout[15]), .A4(n270), .Y(n380)
         );
  AO22X1_RVT U200 ( .A1(n268), .A2(n112), .A3(mdout[16]), .A4(n270), .Y(n381)
         );
  AO22X1_RVT U201 ( .A1(n268), .A2(n113), .A3(mdout[17]), .A4(n270), .Y(n382)
         );
  AO22X1_RVT U202 ( .A1(n268), .A2(n114), .A3(mdout[18]), .A4(n270), .Y(n383)
         );
  AO22X1_RVT U203 ( .A1(n268), .A2(n115), .A3(mdout[19]), .A4(n270), .Y(n384)
         );
  AO22X1_RVT U204 ( .A1(n268), .A2(n117), .A3(mdout[20]), .A4(n269), .Y(n385)
         );
  AO22X1_RVT U205 ( .A1(n268), .A2(n118), .A3(mdout[21]), .A4(n269), .Y(n386)
         );
  AO22X1_RVT U206 ( .A1(n268), .A2(n120), .A3(mdout[22]), .A4(n269), .Y(n387)
         );
  AO22X1_RVT U207 ( .A1(n268), .A2(n121), .A3(mdout[23]), .A4(n269), .Y(n388)
         );
  AO22X1_RVT U208 ( .A1(n268), .A2(n90), .A3(mdout[24]), .A4(n269), .Y(n389)
         );
  AO22X1_RVT U209 ( .A1(n268), .A2(n91), .A3(mdout[25]), .A4(n269), .Y(n390)
         );
  AO22X1_RVT U210 ( .A1(n20), .A2(n92), .A3(mdout[26]), .A4(n269), .Y(n391) );
  AO22X1_RVT U211 ( .A1(n20), .A2(n93), .A3(mdout[27]), .A4(n269), .Y(n392) );
  AO22X1_RVT U212 ( .A1(n20), .A2(n94), .A3(mdout[28]), .A4(n269), .Y(n393) );
  AO22X1_RVT U213 ( .A1(n20), .A2(n95), .A3(mdout[29]), .A4(n269), .Y(n394) );
  AO22X1_RVT U214 ( .A1(n20), .A2(n96), .A3(mdout[30]), .A4(n269), .Y(n395) );
  AO22X1_RVT U215 ( .A1(n20), .A2(n101), .A3(mdout[31]), .A4(n269), .Y(n396)
         );
  AO22X1_RVT U216 ( .A1(n230), .A2(n195), .A3(n490), .A4(state[0]), .Y(n467)
         );
  NAND3X0_RVT U217 ( .A1(rst), .A2(n242), .A3(n243), .Y(n230) );
  NAND2X0_RVT U218 ( .A1(state[3]), .A2(n126), .Y(n242) );
  OA221X1_RVT U219 ( .A1(n189), .A2(n29), .A3(n245), .A4(n492), .A5(n132), .Y(
        n243) );
  AO222X1_RVT U220 ( .A1(n496), .A2(n90), .A3(rx_data_st_r[0]), .A4(n166), 
        .A5(mdin[24]), .A6(n226), .Y(n421) );
  AO222X1_RVT U221 ( .A1(n496), .A2(n91), .A3(rx_data_st_r[1]), .A4(n166), 
        .A5(mdin[25]), .A6(n226), .Y(n420) );
  AO222X1_RVT U222 ( .A1(n496), .A2(n92), .A3(rx_data_st_r[2]), .A4(n166), 
        .A5(mdin[26]), .A6(n226), .Y(n419) );
  AO222X1_RVT U223 ( .A1(n496), .A2(n93), .A3(rx_data_st_r[3]), .A4(n166), 
        .A5(mdin[27]), .A6(n227), .Y(n418) );
  AO222X1_RVT U224 ( .A1(n496), .A2(n94), .A3(rx_data_st_r[4]), .A4(n166), 
        .A5(mdin[28]), .A6(n226), .Y(n417) );
  AO222X1_RVT U225 ( .A1(n496), .A2(n95), .A3(rx_data_st_r[5]), .A4(n166), 
        .A5(mdin[29]), .A6(n226), .Y(n416) );
  AO222X1_RVT U226 ( .A1(n496), .A2(n96), .A3(rx_data_st_r[6]), .A4(n166), 
        .A5(mdin[30]), .A6(n226), .Y(n415) );
  AO222X1_RVT U227 ( .A1(n496), .A2(n101), .A3(rx_data_st_r[7]), .A4(n166), 
        .A5(mdin[31]), .A6(n226), .Y(n414) );
  AO222X1_RVT U228 ( .A1(n185), .A2(state[5]), .A3(n186), .A4(n187), .A5(
        state[6]), .A6(n490), .Y(n446) );
  AND2X1_RVT U229 ( .A1(state[7]), .A2(n189), .Y(n186) );
  AO22X1_RVT U230 ( .A1(adr[0]), .A2(n255), .A3(n256), .A4(n500), .Y(N82) );
  AO22X1_RVT U231 ( .A1(n253), .A2(madr[0]), .A3(N64), .A4(n502), .Y(
        adrw_next[0]) );
  AO22X1_RVT U232 ( .A1(n253), .A2(madr[1]), .A3(N65), .A4(n502), .Y(
        adrw_next[1]) );
  AO22X1_RVT U233 ( .A1(n253), .A2(madr[14]), .A3(N78), .A4(n502), .Y(
        adrw_next[14]) );
  AO22X1_RVT U234 ( .A1(n253), .A2(madr[2]), .A3(N66), .A4(n502), .Y(
        adrw_next[2]) );
  AO22X1_RVT U235 ( .A1(n253), .A2(madr[3]), .A3(N67), .A4(n502), .Y(
        adrw_next[3]) );
  AO22X1_RVT U236 ( .A1(n253), .A2(madr[4]), .A3(N68), .A4(n502), .Y(
        adrw_next[4]) );
  AO22X1_RVT U237 ( .A1(n253), .A2(madr[5]), .A3(N69), .A4(n502), .Y(
        adrw_next[5]) );
  AO22X1_RVT U238 ( .A1(n253), .A2(madr[6]), .A3(N70), .A4(n502), .Y(
        adrw_next[6]) );
  AO22X1_RVT U239 ( .A1(n253), .A2(madr[7]), .A3(N71), .A4(n502), .Y(
        adrw_next[7]) );
  AO22X1_RVT U240 ( .A1(n253), .A2(madr[8]), .A3(N72), .A4(n502), .Y(
        adrw_next[8]) );
  AO22X1_RVT U241 ( .A1(n253), .A2(madr[9]), .A3(N73), .A4(n502), .Y(
        adrw_next[9]) );
  AO22X1_RVT U242 ( .A1(n253), .A2(madr[10]), .A3(N74), .A4(n502), .Y(
        adrw_next[10]) );
  AO22X1_RVT U243 ( .A1(n253), .A2(madr[11]), .A3(N75), .A4(n502), .Y(
        adrw_next[11]) );
  AO22X1_RVT U244 ( .A1(n253), .A2(madr[12]), .A3(N76), .A4(n502), .Y(
        adrw_next[12]) );
  AO22X1_RVT U245 ( .A1(n253), .A2(madr[13]), .A3(N77), .A4(n502), .Y(
        adrw_next[13]) );
  AO21X1_RVT U246 ( .A1(n490), .A2(state[5]), .A3(n190), .Y(n447) );
  AND4X1_RVT U247 ( .A1(n185), .A2(state[0]), .A3(n265), .A4(n130), .Y(n190)
         );
  INVX1_RVT U248 ( .A(abort), .Y(n492) );
  AO21X1_RVT U249 ( .A1(n404), .A2(n251), .A3(n260), .Y(mreq) );
  OR3X2_RVT U250 ( .A1(state[5]), .A2(state[6]), .A3(n252), .Y(n251) );
  AND2X1_RVT U251 ( .A1(state[1]), .A2(n492), .Y(n252) );
  AO222X1_RVT U252 ( .A1(n493), .A2(n81), .A3(n182), .A4(rx_data_st_r[0]), 
        .A5(mdin[0]), .A6(n226), .Y(n445) );
  AO222X1_RVT U253 ( .A1(n493), .A2(n82), .A3(n182), .A4(rx_data_st_r[1]), 
        .A5(mdin[1]), .A6(n16), .Y(n444) );
  AO222X1_RVT U254 ( .A1(n493), .A2(n89), .A3(n182), .A4(rx_data_st_r[2]), 
        .A5(mdin[2]), .A6(n16), .Y(n443) );
  AO222X1_RVT U255 ( .A1(n493), .A2(n83), .A3(n182), .A4(rx_data_st_r[3]), 
        .A5(mdin[3]), .A6(n16), .Y(n442) );
  AO222X1_RVT U256 ( .A1(n493), .A2(n84), .A3(n182), .A4(rx_data_st_r[4]), 
        .A5(mdin[4]), .A6(n16), .Y(n441) );
  AO222X1_RVT U257 ( .A1(n493), .A2(n102), .A3(n182), .A4(rx_data_st_r[5]), 
        .A5(mdin[5]), .A6(n16), .Y(n440) );
  AO222X1_RVT U258 ( .A1(n493), .A2(n122), .A3(n182), .A4(rx_data_st_r[6]), 
        .A5(mdin[6]), .A6(n16), .Y(n439) );
  AO222X1_RVT U259 ( .A1(n493), .A2(n123), .A3(n182), .A4(rx_data_st_r[7]), 
        .A5(mdin[7]), .A6(n16), .Y(n438) );
  AO222X1_RVT U260 ( .A1(n494), .A2(n124), .A3(n177), .A4(rx_data_st_r[0]), 
        .A5(mdin[8]), .A6(n16), .Y(n437) );
  AO222X1_RVT U261 ( .A1(n494), .A2(n125), .A3(n177), .A4(rx_data_st_r[1]), 
        .A5(mdin[9]), .A6(n227), .Y(n436) );
  AO222X1_RVT U262 ( .A1(n494), .A2(n104), .A3(n177), .A4(rx_data_st_r[2]), 
        .A5(mdin[10]), .A6(n227), .Y(n435) );
  AO222X1_RVT U263 ( .A1(n494), .A2(n106), .A3(n177), .A4(rx_data_st_r[3]), 
        .A5(mdin[11]), .A6(n227), .Y(n434) );
  AO222X1_RVT U264 ( .A1(n494), .A2(n107), .A3(n177), .A4(rx_data_st_r[4]), 
        .A5(mdin[12]), .A6(n227), .Y(n433) );
  AO222X1_RVT U265 ( .A1(n494), .A2(n108), .A3(n177), .A4(rx_data_st_r[5]), 
        .A5(mdin[13]), .A6(n227), .Y(n432) );
  AO222X1_RVT U266 ( .A1(n494), .A2(n109), .A3(n177), .A4(rx_data_st_r[6]), 
        .A5(mdin[14]), .A6(n227), .Y(n431) );
  AO222X1_RVT U267 ( .A1(n494), .A2(n111), .A3(n177), .A4(rx_data_st_r[7]), 
        .A5(mdin[15]), .A6(n227), .Y(n430) );
  AO222X1_RVT U268 ( .A1(n495), .A2(n112), .A3(n172), .A4(rx_data_st_r[0]), 
        .A5(mdin[16]), .A6(n227), .Y(n429) );
  AO222X1_RVT U269 ( .A1(n495), .A2(n113), .A3(n172), .A4(rx_data_st_r[1]), 
        .A5(mdin[17]), .A6(n227), .Y(n428) );
  AO222X1_RVT U270 ( .A1(n495), .A2(n114), .A3(n172), .A4(rx_data_st_r[2]), 
        .A5(mdin[18]), .A6(n227), .Y(n427) );
  AO222X1_RVT U271 ( .A1(n495), .A2(n115), .A3(n172), .A4(rx_data_st_r[3]), 
        .A5(mdin[19]), .A6(n227), .Y(n426) );
  AO222X1_RVT U272 ( .A1(n495), .A2(n117), .A3(n172), .A4(rx_data_st_r[4]), 
        .A5(mdin[20]), .A6(n226), .Y(n425) );
  AO222X1_RVT U273 ( .A1(n495), .A2(n118), .A3(n172), .A4(rx_data_st_r[5]), 
        .A5(mdin[21]), .A6(n226), .Y(n424) );
  AO222X1_RVT U274 ( .A1(n495), .A2(n120), .A3(n172), .A4(rx_data_st_r[6]), 
        .A5(mdin[22]), .A6(n226), .Y(n423) );
  AO222X1_RVT U275 ( .A1(n495), .A2(n121), .A3(n172), .A4(rx_data_st_r[7]), 
        .A5(mdin[23]), .A6(n226), .Y(n422) );
  OA221X1_RVT U276 ( .A1(rx_data_done_r2), .A2(n410), .A3(n263), .A4(n194), 
        .A5(n237), .Y(n235) );
  AO221X1_RVT U277 ( .A1(sizd_c[6]), .A2(n224), .A3(size[6]), .A4(n223), .A5(
        n206), .Y(n459) );
  AO21X1_RVT U278 ( .A1(N102), .A2(n489), .A3(n271), .Y(n206) );
  AO221X1_RVT U279 ( .A1(sizd_c[4]), .A2(n225), .A3(size[4]), .A4(n223), .A5(
        n208), .Y(n461) );
  AO21X1_RVT U280 ( .A1(N100), .A2(n489), .A3(n271), .Y(n208) );
  AO221X1_RVT U281 ( .A1(sizd_c[2]), .A2(n224), .A3(size[2]), .A4(n223), .A5(
        n210), .Y(n463) );
  AO21X1_RVT U282 ( .A1(N98), .A2(n489), .A3(n271), .Y(n210) );
  AO221X1_RVT U283 ( .A1(sizd_c[0]), .A2(n225), .A3(size[0]), .A4(n223), .A5(
        n212), .Y(n465) );
  AO21X1_RVT U284 ( .A1(N96), .A2(n489), .A3(n271), .Y(n212) );
  AO221X1_RVT U285 ( .A1(sizd_c[12]), .A2(n224), .A3(size[12]), .A4(n223), 
        .A5(n198), .Y(n453) );
  AO21X1_RVT U286 ( .A1(N108), .A2(n489), .A3(n271), .Y(n198) );
  AO221X1_RVT U287 ( .A1(sizd_c[11]), .A2(n224), .A3(size[11]), .A4(n222), 
        .A5(n201), .Y(n454) );
  AO21X1_RVT U288 ( .A1(N107), .A2(n489), .A3(n271), .Y(n201) );
  AO221X1_RVT U289 ( .A1(sizd_c[10]), .A2(n224), .A3(size[10]), .A4(n223), 
        .A5(n202), .Y(n455) );
  AO21X1_RVT U290 ( .A1(N106), .A2(n489), .A3(n271), .Y(n202) );
  AO221X1_RVT U291 ( .A1(sizd_c[9]), .A2(n224), .A3(size[9]), .A4(n222), .A5(
        n203), .Y(n456) );
  AO21X1_RVT U292 ( .A1(N105), .A2(n489), .A3(n271), .Y(n203) );
  AO221X1_RVT U293 ( .A1(sizd_c[8]), .A2(n224), .A3(size[8]), .A4(n223), .A5(
        n204), .Y(n457) );
  AO21X1_RVT U294 ( .A1(N104), .A2(n489), .A3(n271), .Y(n204) );
  AO221X1_RVT U295 ( .A1(sizd_c[7]), .A2(n225), .A3(size[7]), .A4(n222), .A5(
        n205), .Y(n458) );
  AO21X1_RVT U296 ( .A1(N103), .A2(n489), .A3(n271), .Y(n205) );
  AO221X1_RVT U297 ( .A1(sizd_c[5]), .A2(n225), .A3(size[5]), .A4(n222), .A5(
        n207), .Y(n460) );
  AO21X1_RVT U298 ( .A1(N101), .A2(n489), .A3(n271), .Y(n207) );
  AO221X1_RVT U299 ( .A1(sizd_c[3]), .A2(n225), .A3(size[3]), .A4(n222), .A5(
        n209), .Y(n462) );
  AO21X1_RVT U300 ( .A1(N99), .A2(n489), .A3(n271), .Y(n209) );
  AO221X1_RVT U301 ( .A1(sizd_c[1]), .A2(n225), .A3(size[1]), .A4(n222), .A5(
        n211), .Y(n464) );
  AO21X1_RVT U302 ( .A1(N97), .A2(n489), .A3(n271), .Y(n211) );
  AO221X1_RVT U303 ( .A1(sizd_c[13]), .A2(n225), .A3(size[13]), .A4(n222), 
        .A5(n213), .Y(n466) );
  AO21X1_RVT U304 ( .A1(N109), .A2(n489), .A3(n271), .Y(n213) );
  NAND2X0_RVT U305 ( .A1(n409), .A2(n18), .Y(n253) );
  AO22X1_RVT U306 ( .A1(n490), .A2(state[7]), .A3(state[6]), .A4(n185), .Y(
        n452) );
  AO22X1_RVT U307 ( .A1(n490), .A2(state[4]), .A3(n192), .A4(wr_last), .Y(n448) );
  AND2X1_RVT U308 ( .A1(n185), .A2(state[3]), .Y(n192) );
  AO22X1_RVT U309 ( .A1(n490), .A2(state[3]), .A3(n185), .A4(state[2]), .Y(
        n449) );
  AO22X1_RVT U310 ( .A1(n490), .A2(state[2]), .A3(state[1]), .A4(n185), .Y(
        n450) );
  AO22X1_RVT U311 ( .A1(state[1]), .A2(n490), .A3(n187), .A4(n491), .Y(n451)
         );
  INVX1_RVT U312 ( .A(n194), .Y(n491) );
  AND2X1_RVT U313 ( .A1(rx_data_valid_r), .A2(n409), .Y(n168) );
  XOR2X1_RVT U314 ( .A1(n257), .A2(n261), .Y(n110) );
  NAND2X0_RVT U315 ( .A1(n258), .A2(\adr_cb[1] ), .Y(n257) );
  AO22X1_RVT U316 ( .A1(N151), .A2(n497), .A3(sizu_c[5]), .A4(n1), .Y(n473) );
  AO22X1_RVT U317 ( .A1(N149), .A2(n497), .A3(sizu_c[3]), .A4(n1), .Y(n475) );
  AO22X1_RVT U318 ( .A1(N147), .A2(n497), .A3(sizu_c[1]), .A4(n1), .Y(n477) );
  AO22X1_RVT U319 ( .A1(N156), .A2(n497), .A3(sizu_c[10]), .A4(n1), .Y(n468)
         );
  AO22X1_RVT U320 ( .A1(N155), .A2(n497), .A3(sizu_c[9]), .A4(n1), .Y(n469) );
  AO22X1_RVT U321 ( .A1(N154), .A2(n497), .A3(sizu_c[8]), .A4(n1), .Y(n470) );
  AO22X1_RVT U322 ( .A1(N153), .A2(n497), .A3(sizu_c[7]), .A4(n1), .Y(n471) );
  AO22X1_RVT U323 ( .A1(N152), .A2(n497), .A3(sizu_c[6]), .A4(n1), .Y(n472) );
  AO22X1_RVT U324 ( .A1(N150), .A2(n497), .A3(sizu_c[4]), .A4(n1), .Y(n474) );
  AO22X1_RVT U325 ( .A1(N148), .A2(n497), .A3(sizu_c[2]), .A4(n1), .Y(n476) );
  AO22X1_RVT U326 ( .A1(N146), .A2(n497), .A3(sizu_c[0]), .A4(n1), .Y(n478) );
  XOR2X1_RVT U327 ( .A1(n259), .A2(n407), .Y(n105) );
  OR2X1_RVT U328 ( .A1(rx_data_valid_r), .A2(rd_next), .Y(n259) );
  AO22X1_RVT U329 ( .A1(adr[2]), .A2(n255), .A3(n256), .A4(n110), .Y(N84) );
  AO22X1_RVT U330 ( .A1(adr[1]), .A2(n255), .A3(n256), .A4(n103), .Y(N83) );
  AND2X1_RVT U331 ( .A1(n262), .A2(n492), .Y(n189) );
  NAND2X0_RVT U332 ( .A1(n266), .A2(n18), .Y(n116) );
  OA22X1_RVT U333 ( .A1(n21), .A2(n167), .A3(n23), .A4(n67), .Y(n85) );
  OA22X1_RVT U334 ( .A1(n21), .A2(n171), .A3(n23), .A4(n68), .Y(n97) );
  OA22X1_RVT U335 ( .A1(n21), .A2(n175), .A3(n23), .A4(n69), .Y(n37) );
  OA22X1_RVT U336 ( .A1(n21), .A2(n176), .A3(n23), .A4(n70), .Y(n73) );
  OA22X1_RVT U337 ( .A1(n21), .A2(n180), .A3(n23), .A4(n71), .Y(n49) );
  OA22X1_RVT U338 ( .A1(n21), .A2(n181), .A3(n23), .A4(n72), .Y(n61) );
  OA22X1_RVT U339 ( .A1(n21), .A2(n188), .A3(n23), .A4(n77), .Y(n5) );
  OA22X1_RVT U340 ( .A1(n21), .A2(n191), .A3(n23), .A4(n78), .Y(n25) );
  NAND3X0_RVT U341 ( .A1(n231), .A2(n232), .A3(rst), .Y(n195) );
  NAND4X0_RVT U342 ( .A1(n233), .A2(n492), .A3(n234), .A4(n235), .Y(n232) );
  NAND3X0_RVT U343 ( .A1(n237), .A2(n194), .A3(abort), .Y(n231) );
  NAND2X0_RVT U344 ( .A1(n404), .A2(n238), .Y(n234) );
  NAND3X0_RVT U345 ( .A1(rst), .A2(n127), .A3(rx_data_valid_r), .Y(n249) );
  NAND3X0_RVT U346 ( .A1(n264), .A2(n126), .A3(state[3]), .Y(n233) );
  OR2X1_RVT U347 ( .A1(send_zero_length_r), .A2(send_data_r), .Y(send_data) );
  NOR2X0_RVT U348 ( .A1(n269), .A2(n260), .Y(N215) );
  NAND4X0_RVT U349 ( .A1(n10), .A2(n22), .A3(n128), .A4(n221), .Y(n163) );
  AND4X1_RVT U350 ( .A1(n4), .A2(n131), .A3(n30), .A4(n14), .Y(n221) );
  NOR3X0_RVT U351 ( .A1(state[2]), .A2(state[3]), .A3(n238), .Y(n245) );
  NOR2X0_RVT U352 ( .A1(n263), .A2(n265), .Y(n197) );
  NOR2X0_RVT U353 ( .A1(n265), .A2(tx_dma_en), .Y(n199) );
  NAND4X0_RVT U354 ( .A1(n3), .A2(n129), .A3(n24), .A4(n12), .Y(n161) );
  AOI22X1_RVT U355 ( .A1(state[4]), .A2(n404), .A3(n241), .A4(state[7]), .Y(
        n237) );
  OA21X1_RVT U356 ( .A1(n504), .A2(n170), .A3(n189), .Y(n241) );
  NAND2X0_RVT U357 ( .A1(state[0]), .A2(n240), .Y(n194) );
  NAND3X0_RVT U358 ( .A1(n492), .A2(n130), .A3(n265), .Y(n240) );
  NAND2X0_RVT U359 ( .A1(n199), .A2(n216), .Y(n214) );
  AO22X1_RVT U360 ( .A1(state[5]), .A2(n18), .A3(rd_next), .A4(n154), .Y(n216)
         );
  NAND2X0_RVT U361 ( .A1(n409), .A2(n184), .Y(n183) );
  NAND3X0_RVT U362 ( .A1(n407), .A2(n405), .A3(n168), .Y(n184) );
  NAND2X0_RVT U363 ( .A1(n409), .A2(n179), .Y(n178) );
  NAND3X0_RVT U364 ( .A1(n405), .A2(n79), .A3(n168), .Y(n179) );
  NAND2X0_RVT U365 ( .A1(n409), .A2(n174), .Y(n173) );
  NAND3X0_RVT U366 ( .A1(n407), .A2(\adr_cb[1] ), .A3(n168), .Y(n174) );
  OR2X1_RVT U367 ( .A1(state[3]), .A2(n200), .Y(n412) );
  AND3X1_RVT U368 ( .A1(rx_data_done_r2), .A2(n492), .A3(state[2]), .Y(n200)
         );
  NAND2X0_RVT U369 ( .A1(n158), .A2(n159), .Y(n413) );
  NAND4X0_RVT U370 ( .A1(send_data_r), .A2(rst), .A3(n160), .A4(n154), .Y(n158) );
  NAND3X0_RVT U371 ( .A1(rst), .A2(n18), .A3(state[5]), .Y(n159) );
  OR3X2_RVT U372 ( .A1(n161), .A2(n162), .A3(n163), .Y(n160) );
  OR3X2_RVT U373 ( .A1(n161), .A2(n217), .A3(n163), .Y(n154) );
  OR3X2_RVT U374 ( .A1(sizd_c[10]), .A2(sizd_c[11]), .A3(sizd_c[0]), .Y(n217)
         );
  OR3X2_RVT U375 ( .A1(sizd_c[10]), .A2(sizd_c[11]), .A3(n504), .Y(n162) );
  OR3X2_RVT U376 ( .A1(state[5]), .A2(state[6]), .A3(state[1]), .Y(n238) );
  XNOR2X1_RVT U377 ( .A1(last_buf_adr[3]), .A2(adrw_next[3]), .Y(n297) );
  XNOR2X1_RVT U378 ( .A1(last_buf_adr[2]), .A2(adrw_next[2]), .Y(n296) );
  OR2X1_RVT U379 ( .A1(n133), .A2(adrw_next[0]), .Y(n292) );
  AO22X1_RVT U380 ( .A1(n292), .A2(adrw_next[1]), .A3(n134), .A4(n292), .Y(
        n295) );
  AND2X1_RVT U381 ( .A1(adrw_next[0]), .A2(n133), .Y(n293) );
  OAI22X1_RVT U382 ( .A1(adrw_next[1]), .A2(n293), .A3(n293), .A4(n134), .Y(
        n294) );
  NAND4X0_RVT U383 ( .A1(n297), .A2(n296), .A3(n295), .A4(n294), .Y(n488) );
  XNOR2X1_RVT U384 ( .A1(last_buf_adr[7]), .A2(adrw_next[7]), .Y(n408) );
  XNOR2X1_RVT U385 ( .A1(last_buf_adr[6]), .A2(adrw_next[6]), .Y(n406) );
  XNOR2X1_RVT U386 ( .A1(last_buf_adr[5]), .A2(adrw_next[5]), .Y(n363) );
  XNOR2X1_RVT U387 ( .A1(last_buf_adr[4]), .A2(adrw_next[4]), .Y(n298) );
  NAND4X0_RVT U388 ( .A1(n408), .A2(n406), .A3(n363), .A4(n298), .Y(n487) );
  XNOR2X1_RVT U389 ( .A1(last_buf_adr[11]), .A2(adrw_next[11]), .Y(n481) );
  XNOR2X1_RVT U390 ( .A1(last_buf_adr[10]), .A2(adrw_next[10]), .Y(n480) );
  XNOR2X1_RVT U391 ( .A1(last_buf_adr[9]), .A2(adrw_next[9]), .Y(n479) );
  XNOR2X1_RVT U392 ( .A1(last_buf_adr[8]), .A2(adrw_next[8]), .Y(n411) );
  NAND4X0_RVT U393 ( .A1(n481), .A2(n480), .A3(n479), .A4(n411), .Y(n486) );
  XNOR2X1_RVT U394 ( .A1(last_buf_adr[13]), .A2(adrw_next[13]), .Y(n484) );
  XNOR2X1_RVT U395 ( .A1(last_buf_adr[12]), .A2(adrw_next[12]), .Y(n483) );
  XNOR2X1_RVT U396 ( .A1(last_buf_adr[14]), .A2(adrw_next[14]), .Y(n482) );
  NAND3X0_RVT U397 ( .A1(n484), .A2(n483), .A3(n482), .Y(n485) );
endmodule


module usbf_pe_SSRAM_HADR14_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[7]), .A2(A[7]), .Y(SUM[7]) );
endmodule


module usbf_pe_SSRAM_HADR14_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[7]), .A2(A[7]), .Y(SUM[7]) );
endmodule


module usbf_pe_SSRAM_HADR14_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  FADDX1_RVT U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1_RVT U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1_RVT U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1_RVT U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(
        SUM[9]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
  XOR2X1_RVT U2 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  AND2X1_RVT U3 ( .A1(A[14]), .A2(carry[14]), .Y(carry[15]) );
  XOR2X1_RVT U4 ( .A1(A[14]), .A2(carry[14]), .Y(SUM[14]) );
  XOR2X1_RVT U5 ( .A1(A[15]), .A2(carry[15]), .Y(SUM[15]) );
  XNOR2X1_RVT U6 ( .A1(A[16]), .A2(n1), .Y(SUM[16]) );
  NAND2X0_RVT U7 ( .A1(A[15]), .A2(carry[15]), .Y(n1) );
endmodule


module usbf_pe_SSRAM_HADR14_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [14:0] carry;

  FADDX1_RVT U2_13 ( .A(A[13]), .B(n1), .CI(carry[13]), .S(DIFF[13]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n13), .CI(carry[1]), .CO(carry[2]), .S(
        DIFF[1]) );
  FADDX1_RVT U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1_RVT U2_11 ( .A(A[11]), .B(n3), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1_RVT U2_10 ( .A(A[10]), .B(n4), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1_RVT U2_9 ( .A(A[9]), .B(n5), .CI(carry[9]), .CO(carry[10]), .S(
        DIFF[9]) );
  FADDX1_RVT U2_8 ( .A(A[8]), .B(n6), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FADDX1_RVT U2_7 ( .A(A[7]), .B(n7), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1_RVT U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n9), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n10), .CI(carry[4]), .CO(carry[5]), .S(
        DIFF[4]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n11), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n12), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  XNOR2X1_RVT U1 ( .A1(A[0]), .A2(n14), .Y(DIFF[0]) );
  INVX1_RVT U2 ( .A(B[2]), .Y(n12) );
  INVX1_RVT U3 ( .A(B[3]), .Y(n11) );
  INVX1_RVT U4 ( .A(B[4]), .Y(n10) );
  INVX1_RVT U5 ( .A(B[5]), .Y(n9) );
  INVX1_RVT U6 ( .A(B[6]), .Y(n8) );
  INVX1_RVT U7 ( .A(B[7]), .Y(n7) );
  INVX1_RVT U8 ( .A(B[8]), .Y(n6) );
  INVX1_RVT U9 ( .A(B[9]), .Y(n5) );
  INVX1_RVT U10 ( .A(B[10]), .Y(n4) );
  INVX1_RVT U11 ( .A(B[11]), .Y(n3) );
  INVX1_RVT U12 ( .A(B[12]), .Y(n2) );
  OR2X1_RVT U13 ( .A1(n14), .A2(A[0]), .Y(carry[1]) );
  INVX1_RVT U14 ( .A(B[1]), .Y(n13) );
  INVX1_RVT U15 ( .A(B[0]), .Y(n14) );
  INVX1_RVT U16 ( .A(B[13]), .Y(n1) );
endmodule


module usbf_pe_SSRAM_HADR14_DW01_cmp6_2 ( A, B, TC, LT, GT, EQ, LE, GE, NE );
  input [10:0] A;
  input [10:0] B;
  input TC;
  output LT, GT, EQ, LE, GE, NE;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;

  INVX1_RVT U1 ( .A(B[1]), .Y(n13) );
  INVX1_RVT U2 ( .A(A[1]), .Y(n2) );
  INVX1_RVT U3 ( .A(A[2]), .Y(n3) );
  INVX1_RVT U4 ( .A(A[0]), .Y(n1) );
  INVX1_RVT U5 ( .A(A[5]), .Y(n6) );
  INVX1_RVT U6 ( .A(A[7]), .Y(n8) );
  INVX1_RVT U7 ( .A(A[3]), .Y(n4) );
  INVX1_RVT U8 ( .A(A[4]), .Y(n5) );
  INVX1_RVT U9 ( .A(A[6]), .Y(n7) );
  INVX1_RVT U10 ( .A(A[8]), .Y(n9) );
  INVX1_RVT U11 ( .A(A[9]), .Y(n10) );
  INVX1_RVT U12 ( .A(A[10]), .Y(n11) );
  INVX1_RVT U13 ( .A(B[10]), .Y(n12) );
  OR2X1_RVT U14 ( .A1(GT), .A2(LT), .Y(NE) );
  AO22X1_RVT U15 ( .A1(n14), .A2(n15), .A3(B[10]), .A4(n11), .Y(LT) );
  AND2X1_RVT U16 ( .A1(n16), .A2(n17), .Y(n14) );
  NAND3X0_RVT U17 ( .A1(n18), .A2(n19), .A3(n20), .Y(n16) );
  NAND3X0_RVT U18 ( .A1(n21), .A2(n22), .A3(n23), .Y(n18) );
  NAND3X0_RVT U19 ( .A1(n24), .A2(n25), .A3(n26), .Y(n21) );
  NAND3X0_RVT U20 ( .A1(n27), .A2(n28), .A3(n29), .Y(n24) );
  NAND3X0_RVT U21 ( .A1(n30), .A2(n31), .A3(n32), .Y(n27) );
  NAND3X0_RVT U22 ( .A1(n33), .A2(n34), .A3(n35), .Y(n30) );
  NAND3X0_RVT U23 ( .A1(n36), .A2(n37), .A3(n38), .Y(n33) );
  AO221X1_RVT U24 ( .A1(n39), .A2(n13), .A3(A[1]), .A4(n40), .A5(n41), .Y(n36)
         );
  OR2X1_RVT U25 ( .A1(n40), .A2(A[1]), .Y(n39) );
  NAND2X0_RVT U26 ( .A1(B[0]), .A2(n1), .Y(n40) );
  AO22X1_RVT U27 ( .A1(n42), .A2(n15), .A3(A[10]), .A4(n12), .Y(GT) );
  XNOR2X1_RVT U28 ( .A1(A[10]), .A2(B[10]), .Y(n15) );
  AND2X1_RVT U29 ( .A1(n43), .A2(n20), .Y(n42) );
  NAND2X0_RVT U30 ( .A1(B[9]), .A2(n10), .Y(n20) );
  NAND3X0_RVT U31 ( .A1(n17), .A2(n44), .A3(n45), .Y(n43) );
  NAND3X0_RVT U32 ( .A1(n46), .A2(n26), .A3(n23), .Y(n45) );
  AND2X1_RVT U33 ( .A1(n44), .A2(n19), .Y(n23) );
  NAND2X0_RVT U34 ( .A1(B[8]), .A2(n9), .Y(n19) );
  NAND2X0_RVT U35 ( .A1(B[7]), .A2(n8), .Y(n26) );
  NAND3X0_RVT U36 ( .A1(n22), .A2(n47), .A3(n48), .Y(n46) );
  NAND3X0_RVT U37 ( .A1(n49), .A2(n32), .A3(n29), .Y(n48) );
  AND2X1_RVT U38 ( .A1(n47), .A2(n25), .Y(n29) );
  NAND2X0_RVT U39 ( .A1(B[6]), .A2(n7), .Y(n25) );
  NAND2X0_RVT U40 ( .A1(B[5]), .A2(n6), .Y(n32) );
  NAND3X0_RVT U41 ( .A1(n28), .A2(n50), .A3(n51), .Y(n49) );
  NAND3X0_RVT U42 ( .A1(n52), .A2(n38), .A3(n35), .Y(n51) );
  AND2X1_RVT U43 ( .A1(n50), .A2(n31), .Y(n35) );
  NAND2X0_RVT U44 ( .A1(B[4]), .A2(n5), .Y(n31) );
  NAND2X0_RVT U45 ( .A1(B[3]), .A2(n4), .Y(n38) );
  NAND3X0_RVT U46 ( .A1(n34), .A2(n53), .A3(n54), .Y(n52) );
  AO221X1_RVT U47 ( .A1(B[1]), .A2(n55), .A3(n56), .A4(n2), .A5(n41), .Y(n54)
         );
  NAND2X0_RVT U48 ( .A1(n53), .A2(n37), .Y(n41) );
  NAND2X0_RVT U49 ( .A1(B[2]), .A2(n3), .Y(n37) );
  OR2X1_RVT U50 ( .A1(n56), .A2(n2), .Y(n55) );
  OR2X1_RVT U51 ( .A1(n1), .A2(B[0]), .Y(n56) );
  OR2X1_RVT U52 ( .A1(n3), .A2(B[2]), .Y(n53) );
  OR2X1_RVT U53 ( .A1(n4), .A2(B[3]), .Y(n34) );
  OR2X1_RVT U54 ( .A1(n5), .A2(B[4]), .Y(n50) );
  OR2X1_RVT U55 ( .A1(n6), .A2(B[5]), .Y(n28) );
  OR2X1_RVT U56 ( .A1(n7), .A2(B[6]), .Y(n47) );
  OR2X1_RVT U57 ( .A1(n8), .A2(B[7]), .Y(n22) );
  OR2X1_RVT U58 ( .A1(n9), .A2(B[8]), .Y(n44) );
  OR2X1_RVT U59 ( .A1(n10), .A2(B[9]), .Y(n17) );
endmodule


module usbf_pe_SSRAM_HADR14 ( clk, rst, tx_valid, rx_active, pid_OUT, pid_IN, 
        pid_SOF, pid_SETUP, pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA, 
        pid_ACK, pid_NACK, pid_STALL, pid_NYET, pid_PRE, pid_ERR, pid_SPLIT, 
        pid_PING, mode_hs, token_valid, crc5_err, rx_data_valid, rx_data_done, 
        crc16_err, send_token, token_pid_sel, data_pid_sel, send_zero_length, 
        rx_dma_en, tx_dma_en, abort, idma_done, adr, size, buf_size, sizu_c, 
        dma_en, fsel, idin, dma_in_buf_sz1, dma_out_buf_avail, ep_sel, match, 
        nse_err, buf0_rl, buf0_set, buf1_set, uc_bsel_set, uc_dpd_set, 
        int_buf1_set, int_buf0_set, int_upid_set, int_crc16_set, int_to_set, 
        int_seqerr_set, out_to_small, csr, buf0, buf1 );
  output [1:0] token_pid_sel;
  output [1:0] data_pid_sel;
  output [16:0] adr;
  output [13:0] size;
  output [13:0] buf_size;
  input [10:0] sizu_c;
  output [31:0] idin;
  input [3:0] ep_sel;
  input [31:0] csr;
  input [31:0] buf0;
  input [31:0] buf1;
  input clk, rst, tx_valid, rx_active, pid_OUT, pid_IN, pid_SOF, pid_SETUP,
         pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA, pid_ACK, pid_NACK,
         pid_STALL, pid_NYET, pid_PRE, pid_ERR, pid_SPLIT, pid_PING, mode_hs,
         token_valid, crc5_err, rx_data_valid, rx_data_done, crc16_err,
         idma_done, fsel, dma_in_buf_sz1, dma_out_buf_avail, match;
  output send_token, send_zero_length, rx_dma_en, tx_dma_en, abort, dma_en,
         nse_err, buf0_rl, buf0_set, buf1_set, uc_bsel_set, uc_dpd_set,
         int_buf1_set, int_buf0_set, int_upid_set, int_crc16_set, int_to_set,
         int_seqerr_set, out_to_small;
  wire   csr_31, csr_30, csr_29, csr_28, csr_27, csr_26, csr_25, csr_24,
         csr_23, csr_22, csr_17, csr_16, csr_15, N130, N131, match_r,
         send_token_d, setup_token, N174, N175, N204, N205, N261, buffer_full,
         buffer_empty, buffer_done, N264, N265, N268, no_bufs0, N270, no_bufs1,
         N290, N291, N292, N293, N294, N295, N296, N297, N298, N299, N300,
         N301, N302, N303, N307, N308, N309, N310, N311, N312, N313, N314,
         N315, N316, N317, N318, N319, N320, N323, buffer_overflow,
         uc_stat_set_d, N325, out_to_small_r, N327, N329, to_large, N369, N370,
         N371, N372, N377, N380, N381, N382, N383, N384, N385, N386, N387,
         N396, rx_ack_to, N399, N400, N401, N402, N403, N404, N405, N406, N415,
         tx_data_to, n91, n92, n97, n102, n103, n104, n106, n109, n171, n203,
         n205, n206, n216, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n249, n254, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, \eq_771/B[5] , n1, n2, n3,
         n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n33, n44, n61, n79, n81, n83, n85, n86, n87, n88, n89, n90, n93,
         n94, n95, n96, n98, n99, n100, n101, n105, n107, n108, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n204, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n248,
         n250, n251, n252, n253, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n416, n417, n418,
         n419, n420, n422, n423, n424, n425, n426, n427;
  wire   [1:0] token_pid_sel_d;
  wire   [1:0] next_dpid;
  wire   [13:0] new_size;
  wire   [13:0] new_sizeb;
  wire   [16:0] adr_r;
  wire   [13:0] size_next_r;
  wire   [16:0] new_adr;
  wire   [9:0] state;
  wire   [7:0] rx_ack_to_cnt;
  wire   [7:0] tx_data_to_cnt;
  assign csr_31 = csr[31];
  assign csr_30 = csr[30];
  assign csr_29 = csr[29];
  assign csr_28 = csr[28];
  assign csr_27 = csr[27];
  assign csr_26 = csr[26];
  assign csr_25 = csr[25];
  assign csr_24 = csr[24];
  assign csr_23 = csr[23];
  assign csr_22 = csr[22];
  assign csr_17 = csr[17];
  assign csr_16 = csr[16];
  assign csr_15 = csr[15];

  usbf_pe_SSRAM_HADR14_DW01_inc_0 add_768 ( .A(tx_data_to_cnt), .SUM({N406, 
        N405, N404, N403, N402, N401, N400, N399}) );
  usbf_pe_SSRAM_HADR14_DW01_inc_1 add_751 ( .A(rx_ack_to_cnt), .SUM({N387, 
        N386, N385, N384, N383, N382, N381, N380}) );
  usbf_pe_SSRAM_HADR14_DW01_add_0 add_667 ( .A(adr_r), .B({1'b0, 1'b0, 1'b0, 
        N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, 
        N308, N307}), .CI(1'b0), .SUM(new_adr) );
  usbf_pe_SSRAM_HADR14_DW01_sub_0 sub_657 ( .A(buf_size), .B(new_sizeb), .CI(
        1'b0), .DIFF({N303, N302, N301, N300, N299, N298, N297, N296, N295, 
        N294, N293, N292, N291, N290}) );
  usbf_pe_SSRAM_HADR14_DW01_cmp6_2 r148 ( .A(sizu_c), .B({csr[10:3], n85, 
        csr[1:0]}), .TC(1'b0), .LT(N327), .GT(N329), .NE(N325) );
  DFFSSRX1_RVT buf0_na_reg ( .D(N130), .SETB(n425), .RSTB(1'b1), .CLK(n111), 
        .QN(n91) );
  DFFSSRX1_RVT buf1_na_reg ( .D(N131), .SETB(n426), .RSTB(1'b1), .CLK(n113), 
        .QN(n92) );
  DFFSSRX1_RVT to_small_reg ( .D(N327), .SETB(1'b1), .RSTB(n424), .CLK(n113), 
        .QN(n392) );
  DFFX1_RVT buf0_not_aloc_reg ( .D(N130), .CLK(n116), .QN(n408) );
  DFFX1_RVT buf1_not_aloc_reg ( .D(N131), .CLK(n116), .QN(n407) );
  DFFX1_RVT in_token_reg ( .D(n302), .CLK(n115), .Q(n16) );
  SDFFX1_RVT pid_seq_err_reg ( .D(n206), .SI(n205), .SE(data_pid_sel[1]), 
        .CLK(n105), .QN(n177) );
  DFFX1_RVT buf0_st_max_reg ( .D(N264), .CLK(n113), .QN(n414) );
  DFFX1_RVT buf1_st_max_reg ( .D(N265), .CLK(n113), .QN(n412) );
  DFFX1_RVT pid_OUT_r_reg ( .D(pid_OUT), .CLK(n117), .QN(n410) );
  DFFX1_RVT pid_IN_r_reg ( .D(pid_IN), .CLK(n117), .QN(n106) );
  DFFX1_RVT pid_PING_r_reg ( .D(pid_PING), .CLK(n117), .QN(n411) );
  DFFX1_RVT pid_SETUP_r_reg ( .D(pid_SETUP), .CLK(n118), .QN(n409) );
  DFFX1_RVT buffer_full_reg ( .D(N261), .CLK(n115), .Q(buffer_full), .QN(n413)
         );
  DFFX1_RVT \next_dpid_reg[1]  ( .D(N175), .CLK(n115), .Q(next_dpid[1]) );
  DFFX1_RVT \next_dpid_reg[0]  ( .D(N174), .CLK(n115), .Q(next_dpid[0]) );
  SDFFX1_RVT \size_next_r_reg[10]  ( .D(csr[10]), .SI(buf_size[10]), .SE(n79), 
        .CLK(n105), .Q(size_next_r[10]) );
  SDFFX1_RVT \size_next_r_reg[9]  ( .D(csr[9]), .SI(buf_size[9]), .SE(n79), 
        .CLK(n105), .Q(size_next_r[9]) );
  SDFFX1_RVT \size_next_r_reg[8]  ( .D(csr[8]), .SI(buf_size[8]), .SE(n79), 
        .CLK(n105), .Q(size_next_r[8]) );
  SDFFX1_RVT \size_next_r_reg[7]  ( .D(csr[7]), .SI(buf_size[7]), .SE(n61), 
        .CLK(n105), .Q(size_next_r[7]) );
  SDFFX1_RVT \size_next_r_reg[6]  ( .D(csr[6]), .SI(buf_size[6]), .SE(n61), 
        .CLK(n105), .Q(size_next_r[6]) );
  SDFFX1_RVT \size_next_r_reg[5]  ( .D(csr[5]), .SI(buf_size[5]), .SE(n61), 
        .CLK(n105), .Q(size_next_r[5]) );
  SDFFX1_RVT \size_next_r_reg[4]  ( .D(csr[4]), .SI(buf_size[4]), .SE(n79), 
        .CLK(n105), .Q(size_next_r[4]) );
  SDFFX1_RVT \size_next_r_reg[3]  ( .D(n87), .SI(buf_size[3]), .SE(n61), .CLK(
        n105), .Q(size_next_r[3]) );
  SDFFX1_RVT \size_next_r_reg[2]  ( .D(csr[2]), .SI(buf_size[2]), .SE(n61), 
        .CLK(n105), .Q(size_next_r[2]) );
  SDFFX1_RVT \size_next_r_reg[1]  ( .D(csr[1]), .SI(buf_size[1]), .SE(n61), 
        .CLK(n107), .Q(size_next_r[1]) );
  SDFFX1_RVT \size_next_r_reg[0]  ( .D(csr[0]), .SI(buf_size[0]), .SE(n61), 
        .CLK(n107), .Q(size_next_r[0]) );
  DFFX1_RVT no_bufs1_reg ( .D(N270), .CLK(n115), .Q(no_bufs1) );
  DFFX1_RVT no_bufs0_reg ( .D(N268), .CLK(n115), .Q(no_bufs0) );
  DFFX1_RVT out_to_small_reg ( .D(out_to_small_r), .CLK(n119), .Q(out_to_small) );
  DFFX1_RVT \idin_reg[3]  ( .D(N372), .CLK(n119), .Q(idin[3]) );
  DFFX1_RVT \idin_reg[2]  ( .D(N371), .CLK(n119), .Q(idin[2]) );
  DFFX1_RVT \idin_reg[1]  ( .D(N370), .CLK(n119), .Q(idin[1]) );
  DFFX1_RVT \idin_reg[0]  ( .D(N369), .CLK(n119), .Q(idin[0]) );
  SDFFX1_RVT buffer_done_reg ( .D(buffer_full), .SI(buffer_empty), .SE(n98), 
        .CLK(n105), .Q(buffer_done), .QN(n176) );
  SDFFX1_RVT \idin_reg[16]  ( .D(buf0[16]), .SI(new_adr[16]), .SE(n102), .CLK(
        n108), .Q(idin[16]) );
  SDFFX1_RVT \idin_reg[15]  ( .D(buf0[15]), .SI(new_adr[15]), .SE(n102), .CLK(
        n108), .Q(idin[15]) );
  SDFFX1_RVT \idin_reg[14]  ( .D(buf0[14]), .SI(new_adr[14]), .SE(n102), .CLK(
        n108), .Q(idin[14]) );
  SDFFX1_RVT \idin_reg[13]  ( .D(buf0[13]), .SI(new_adr[13]), .SE(n102), .CLK(
        n108), .Q(idin[13]) );
  SDFFX1_RVT \idin_reg[12]  ( .D(buf0[12]), .SI(new_adr[12]), .SE(n102), .CLK(
        n108), .Q(idin[12]) );
  SDFFX1_RVT \idin_reg[11]  ( .D(buf0[11]), .SI(new_adr[11]), .SE(n102), .CLK(
        n108), .Q(idin[11]) );
  SDFFX1_RVT \idin_reg[10]  ( .D(buf0[10]), .SI(new_adr[10]), .SE(n102), .CLK(
        n108), .Q(idin[10]) );
  SDFFX1_RVT \idin_reg[9]  ( .D(buf0[9]), .SI(new_adr[9]), .SE(n102), .CLK(
        n108), .Q(idin[9]) );
  SDFFX1_RVT \idin_reg[8]  ( .D(buf0[8]), .SI(new_adr[8]), .SE(n102), .CLK(
        n110), .Q(idin[8]) );
  SDFFX1_RVT \idin_reg[7]  ( .D(buf0[7]), .SI(new_adr[7]), .SE(n102), .CLK(
        n110), .Q(idin[7]) );
  SDFFX1_RVT \idin_reg[6]  ( .D(buf0[6]), .SI(new_adr[6]), .SE(n102), .CLK(
        n110), .Q(idin[6]) );
  SDFFX1_RVT \idin_reg[5]  ( .D(buf0[5]), .SI(new_adr[5]), .SE(n102), .CLK(
        n111), .Q(idin[5]) );
  SDFFX1_RVT \idin_reg[4]  ( .D(buf0[4]), .SI(new_adr[4]), .SE(n102), .CLK(
        n111), .Q(idin[4]) );
  SDFFX1_RVT \idin_reg[27]  ( .D(new_size[10]), .SI(sizu_c[10]), .SE(
        out_to_small_r), .CLK(n111), .Q(idin[27]) );
  SDFFX1_RVT \idin_reg[26]  ( .D(new_size[9]), .SI(sizu_c[9]), .SE(
        out_to_small_r), .CLK(n111), .Q(idin[26]) );
  SDFFX1_RVT \idin_reg[25]  ( .D(new_size[8]), .SI(sizu_c[8]), .SE(
        out_to_small_r), .CLK(n111), .Q(idin[25]) );
  SDFFX1_RVT \idin_reg[24]  ( .D(new_size[7]), .SI(sizu_c[7]), .SE(
        out_to_small_r), .CLK(n111), .Q(idin[24]) );
  SDFFX1_RVT \idin_reg[23]  ( .D(new_size[6]), .SI(sizu_c[6]), .SE(
        out_to_small_r), .CLK(n110), .Q(idin[23]) );
  SDFFX1_RVT \idin_reg[22]  ( .D(new_size[5]), .SI(sizu_c[5]), .SE(
        out_to_small_r), .CLK(n110), .Q(idin[22]) );
  SDFFX1_RVT \idin_reg[21]  ( .D(new_size[4]), .SI(sizu_c[4]), .SE(
        out_to_small_r), .CLK(n110), .Q(idin[21]) );
  SDFFX1_RVT \idin_reg[20]  ( .D(new_size[3]), .SI(sizu_c[3]), .SE(
        out_to_small_r), .CLK(n110), .Q(idin[20]) );
  SDFFX1_RVT \idin_reg[19]  ( .D(new_size[2]), .SI(sizu_c[2]), .SE(
        out_to_small_r), .CLK(n110), .Q(idin[19]) );
  SDFFX1_RVT \idin_reg[18]  ( .D(new_size[1]), .SI(sizu_c[1]), .SE(
        out_to_small_r), .CLK(n110), .Q(idin[18]) );
  SDFFX1_RVT \idin_reg[17]  ( .D(new_size[0]), .SI(sizu_c[0]), .SE(
        out_to_small_r), .CLK(n110), .Q(idin[17]) );
  DFFX1_RVT match_r_reg ( .D(match), .CLK(n115), .Q(match_r) );
  DFFX1_RVT \state_reg[1]  ( .D(n298), .CLK(n118), .Q(state[1]), .QN(n14) );
  DFFX1_RVT setup_token_reg ( .D(n301), .CLK(n115), .Q(setup_token), .QN(n15)
         );
  DFFX1_RVT \new_size_reg[2]  ( .D(N292), .CLK(n114), .Q(new_size[2]), .QN(
        n396) );
  DFFX1_RVT \new_size_reg[1]  ( .D(N291), .CLK(n115), .Q(new_size[1]), .QN(
        n397) );
  DFFX1_RVT \new_size_reg[0]  ( .D(N290), .CLK(n115), .Q(new_size[0]), .QN(
        n393) );
  DFFX1_RVT \new_size_reg[13]  ( .D(N303), .CLK(n114), .Q(new_size[13]), .QN(
        n398) );
  DFFX1_RVT \new_size_reg[12]  ( .D(N302), .CLK(n114), .Q(new_size[12]), .QN(
        n399) );
  DFFX1_RVT \this_dpid_reg[0]  ( .D(N204), .CLK(n115), .Q(data_pid_sel[0]), 
        .QN(n97) );
  DFFX1_RVT tx_data_to_reg ( .D(N415), .CLK(n117), .Q(tx_data_to) );
  DFFX1_RVT \new_size_reg[11]  ( .D(N301), .CLK(n114), .Q(new_size[11]), .QN(
        n394) );
  DFFX1_RVT \adr_r_reg[16]  ( .D(adr[16]), .CLK(n116), .Q(adr_r[16]) );
  DFFX1_RVT \token_pid_sel_reg[0]  ( .D(token_pid_sel_d[0]), .CLK(n119), .Q(
        token_pid_sel[0]) );
  DFFX1_RVT \new_size_reg[9]  ( .D(N299), .CLK(n114), .Q(new_size[9]), .QN(
        n403) );
  DFFX1_RVT \new_size_reg[7]  ( .D(N297), .CLK(n114), .Q(new_size[7]), .QN(
        n405) );
  DFFX1_RVT \new_size_reg[5]  ( .D(N295), .CLK(n114), .Q(new_size[5]), .QN(
        n401) );
  DFFX1_RVT \new_size_reg[8]  ( .D(N298), .CLK(n114), .Q(new_size[8]), .QN(
        n404) );
  DFFX1_RVT \new_size_reg[6]  ( .D(N296), .CLK(n114), .Q(new_size[6]), .QN(
        n406) );
  DFFX1_RVT \new_size_reg[4]  ( .D(N294), .CLK(n114), .Q(new_size[4]), .QN(
        n402) );
  DFFX1_RVT \new_size_reg[10]  ( .D(N300), .CLK(n114), .Q(new_size[10]), .QN(
        n395) );
  DFFX1_RVT rx_ack_to_reg ( .D(N396), .CLK(n118), .Q(rx_ack_to), .QN(n18) );
  DFFX1_RVT \new_size_reg[3]  ( .D(N293), .CLK(n114), .Q(new_size[3]), .QN(
        n400) );
  DFFX1_RVT \state_reg[7]  ( .D(n292), .CLK(n118), .Q(state[7]), .QN(n19) );
  DFFX1_RVT \state_reg[5]  ( .D(n294), .CLK(n118), .Q(state[5]), .QN(n6) );
  DFFX1_RVT \adr_r_reg[15]  ( .D(adr[15]), .CLK(n116), .Q(adr_r[15]) );
  DFFX1_RVT \adr_r_reg[14]  ( .D(adr[14]), .CLK(n116), .Q(adr_r[14]) );
  DFFX1_RVT \adr_r_reg[0]  ( .D(adr[0]), .CLK(n117), .Q(adr_r[0]) );
  DFFX1_RVT send_token_reg ( .D(send_token_d), .CLK(n119), .Q(send_token) );
  DFFX1_RVT \adr_r_reg[13]  ( .D(adr[13]), .CLK(n116), .Q(adr_r[13]) );
  DFFX1_RVT \adr_r_reg[12]  ( .D(adr[12]), .CLK(n116), .Q(adr_r[12]) );
  DFFX1_RVT \adr_r_reg[11]  ( .D(adr[11]), .CLK(n116), .Q(adr_r[11]) );
  DFFX1_RVT \adr_r_reg[10]  ( .D(adr[10]), .CLK(n116), .Q(adr_r[10]) );
  DFFX1_RVT \adr_r_reg[9]  ( .D(adr[9]), .CLK(n116), .Q(adr_r[9]) );
  DFFX1_RVT \adr_r_reg[8]  ( .D(adr[8]), .CLK(n116), .Q(adr_r[8]) );
  DFFX1_RVT \adr_r_reg[7]  ( .D(adr[7]), .CLK(n117), .Q(adr_r[7]) );
  DFFX1_RVT \adr_r_reg[6]  ( .D(adr[6]), .CLK(n117), .Q(adr_r[6]) );
  DFFX1_RVT \adr_r_reg[5]  ( .D(adr[5]), .CLK(n117), .Q(adr_r[5]) );
  DFFX1_RVT \adr_r_reg[4]  ( .D(adr[4]), .CLK(n117), .Q(adr_r[4]) );
  DFFX1_RVT \adr_r_reg[3]  ( .D(adr[3]), .CLK(n117), .Q(adr_r[3]) );
  DFFX1_RVT \adr_r_reg[2]  ( .D(adr[2]), .CLK(n117), .Q(adr_r[2]) );
  DFFX1_RVT \adr_r_reg[1]  ( .D(adr[1]), .CLK(n117), .Q(adr_r[1]) );
  DFFX1_RVT uc_bsel_set_reg ( .D(uc_stat_set_d), .CLK(n119), .Q(uc_bsel_set)
         );
  DFFX1_RVT uc_dpd_set_reg ( .D(uc_stat_set_d), .CLK(n119), .Q(uc_dpd_set) );
  DFFX1_RVT \this_dpid_reg[1]  ( .D(N205), .CLK(n115), .Q(data_pid_sel[1]) );
  SDFFSSRX1_RVT \new_sizeb_reg[3]  ( .RSTB(size[3]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n244), .CLK(n120), .Q(new_sizeb[3]) );
  SDFFSSRX1_RVT \new_sizeb_reg[2]  ( .RSTB(size[2]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n245), .CLK(n120), .Q(new_sizeb[2]) );
  SDFFSSRX1_RVT \new_sizeb_reg[1]  ( .RSTB(size[1]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n246), .CLK(n120), .Q(new_sizeb[1]) );
  SDFFSSRX1_RVT \new_sizeb_reg[0]  ( .RSTB(size[0]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n247), .CLK(n120), .Q(new_sizeb[0]) );
  SDFFSSRX1_RVT \new_sizeb_reg[13]  ( .RSTB(n98), .SETB(1'b1), .D(buf_size[13]), .SI(1'b0), .SE(n81), .CLK(n120), .Q(new_sizeb[13]) );
  SDFFSSRX1_RVT \new_sizeb_reg[12]  ( .RSTB(n98), .SETB(1'b1), .D(buf_size[12]), .SI(1'b0), .SE(n81), .CLK(n120), .Q(new_sizeb[12]) );
  SDFFSSRX1_RVT \new_sizeb_reg[11]  ( .RSTB(n98), .SETB(1'b1), .D(buf_size[11]), .SI(1'b0), .SE(n81), .CLK(n120), .Q(new_sizeb[11]) );
  SDFFSSRX1_RVT out_to_small_r_reg ( .RSTB(N325), .SETB(1'b1), .D(
        uc_stat_set_d), .SI(1'b0), .SE(n249), .CLK(n120), .Q(out_to_small_r), 
        .QN(n102) );
  SDFFSSRX1_RVT buf0_set_reg ( .RSTB(n101), .SETB(dma_en), .D(n176), .SI(1'b0), 
        .SE(n109), .CLK(n120), .Q(buf0_set) );
  SDFFSSRX1_RVT buf0_rl_reg ( .RSTB(csr_15), .SETB(n422), .D(csr_27), .SI(1'b0), .SE(n216), .CLK(n120), .Q(buf0_rl) );
  DFFX1_RVT \state_reg[4]  ( .D(n295), .CLK(n118), .Q(state[4]), .QN(n11) );
  DFFSSRX1_RVT buffer_overflow_reg ( .D(rx_data_valid), .SETB(1'b1), .RSTB(
        N323), .CLK(n113), .Q(buffer_overflow) );
  DFFSSRX1_RVT \size_next_r_reg[13]  ( .D(n61), .SETB(1'b1), .RSTB(
        buf_size[13]), .CLK(n113), .Q(size_next_r[13]) );
  DFFSSRX1_RVT \size_next_r_reg[12]  ( .D(n61), .SETB(1'b1), .RSTB(
        buf_size[12]), .CLK(n113), .Q(size_next_r[12]) );
  DFFSSRX1_RVT \size_next_r_reg[11]  ( .D(n79), .SETB(1'b1), .RSTB(
        buf_size[11]), .CLK(n113), .Q(size_next_r[11]) );
  DFFSSRX1_RVT \idin_reg[31]  ( .D(buffer_done), .SETB(1'b1), .RSTB(n102), 
        .CLK(n111), .Q(idin[31]) );
  DFFSSRX1_RVT \idin_reg[30]  ( .D(new_size[13]), .SETB(1'b1), .RSTB(n102), 
        .CLK(n111), .Q(idin[30]) );
  DFFSSRX1_RVT \idin_reg[29]  ( .D(new_size[12]), .SETB(1'b1), .RSTB(n102), 
        .CLK(n111), .Q(idin[29]) );
  DFFSSRX1_RVT \idin_reg[28]  ( .D(new_size[11]), .SETB(1'b1), .RSTB(n102), 
        .CLK(n111), .Q(idin[28]) );
  DFFX1_RVT abort_reg ( .D(N377), .CLK(n118), .Q(abort), .QN(n103) );
  SDFFX1_RVT \adr_reg[14]  ( .D(buf1[14]), .SI(buf0[14]), .SE(n101), .CLK(n110), .Q(adr[14]) );
  DFFX1_RVT \token_pid_sel_reg[1]  ( .D(token_pid_sel_d[1]), .CLK(n118), .Q(
        token_pid_sel[1]) );
  DFFX1_RVT \state_reg[6]  ( .D(n293), .CLK(n118), .Q(state[6]), .QN(n2) );
  DFFX1_RVT \state_reg[3]  ( .D(n296), .CLK(n119), .Q(state[3]), .QN(n3) );
  DFFX1_RVT \state_reg[9]  ( .D(n299), .CLK(n119), .Q(uc_stat_set_d), .QN(n8)
         );
  DFFX1_RVT \state_reg[2]  ( .D(n297), .CLK(n118), .Q(state[2]), .QN(n17) );
  DFFSSRX1_RVT to_large_reg ( .D(N329), .SETB(1'b1), .RSTB(n423), .CLK(n113), 
        .Q(to_large), .QN(n44) );
  SDFFX1_RVT \adr_reg[0]  ( .D(buf1[0]), .SI(buf0[0]), .SE(n100), .CLK(n107), 
        .Q(adr[0]) );
  DFFX1_RVT \state_reg[8]  ( .D(n291), .CLK(n118), .Q(state[8]), .QN(n109) );
  SDFFX1_RVT \adr_reg[1]  ( .D(buf1[1]), .SI(buf0[1]), .SE(n100), .CLK(n107), 
        .Q(adr[1]) );
  SDFFX1_RVT \adr_reg[12]  ( .D(buf1[12]), .SI(buf0[12]), .SE(n101), .CLK(n108), .Q(adr[12]) );
  SDFFX1_RVT \adr_reg[11]  ( .D(buf1[11]), .SI(buf0[11]), .SE(n101), .CLK(n108), .Q(adr[11]) );
  SDFFX1_RVT \adr_reg[10]  ( .D(buf1[10]), .SI(buf0[10]), .SE(n101), .CLK(n108), .Q(adr[10]) );
  SDFFX1_RVT \adr_reg[9]  ( .D(buf1[9]), .SI(buf0[9]), .SE(n101), .CLK(n108), 
        .Q(adr[9]) );
  SDFFX1_RVT \adr_reg[8]  ( .D(buf1[8]), .SI(buf0[8]), .SE(n101), .CLK(n107), 
        .Q(adr[8]) );
  SDFFX1_RVT \adr_reg[7]  ( .D(buf1[7]), .SI(buf0[7]), .SE(n101), .CLK(n107), 
        .Q(adr[7]) );
  SDFFX1_RVT \adr_reg[6]  ( .D(buf1[6]), .SI(buf0[6]), .SE(n100), .CLK(n107), 
        .Q(adr[6]) );
  SDFFX1_RVT \adr_reg[5]  ( .D(buf1[5]), .SI(buf0[5]), .SE(n101), .CLK(n107), 
        .Q(adr[5]) );
  SDFFX1_RVT \adr_reg[4]  ( .D(buf1[4]), .SI(buf0[4]), .SE(n100), .CLK(n107), 
        .Q(adr[4]) );
  SDFFX1_RVT \adr_reg[3]  ( .D(buf1[3]), .SI(buf0[3]), .SE(n100), .CLK(n107), 
        .Q(adr[3]) );
  SDFFX1_RVT \adr_reg[13]  ( .D(buf1[13]), .SI(buf0[13]), .SE(n101), .CLK(n110), .Q(adr[13]) );
  DFFSSRX1_RVT \tx_data_to_cnt_reg[6]  ( .D(N405), .SETB(1'b1), .RSTB(n427), 
        .CLK(n112), .Q(tx_data_to_cnt[6]) );
  DFFSSRX1_RVT \rx_ack_to_cnt_reg[6]  ( .D(N386), .SETB(1'b1), .RSTB(n104), 
        .CLK(n112), .Q(rx_ack_to_cnt[6]) );
  DFFSSRX1_RVT \tx_data_to_cnt_reg[7]  ( .D(N406), .SETB(1'b1), .RSTB(n427), 
        .CLK(n112), .Q(tx_data_to_cnt[7]) );
  DFFSSRX1_RVT \rx_ack_to_cnt_reg[7]  ( .D(N387), .SETB(1'b1), .RSTB(n104), 
        .CLK(n111), .Q(rx_ack_to_cnt[7]) );
  DFFSSRX1_RVT \tx_data_to_cnt_reg[1]  ( .D(N400), .SETB(1'b1), .RSTB(n427), 
        .CLK(n113), .Q(tx_data_to_cnt[1]), .QN(n21) );
  DFFSSRX1_RVT \tx_data_to_cnt_reg[2]  ( .D(N401), .SETB(1'b1), .RSTB(n427), 
        .CLK(n113), .Q(tx_data_to_cnt[2]), .QN(n33) );
  DFFSSRX1_RVT \tx_data_to_cnt_reg[4]  ( .D(N403), .SETB(1'b1), .RSTB(n427), 
        .CLK(n112), .Q(tx_data_to_cnt[4]), .QN(n13) );
  DFFSSRX1_RVT \rx_ack_to_cnt_reg[1]  ( .D(N381), .SETB(1'b1), .RSTB(n104), 
        .CLK(n112), .Q(rx_ack_to_cnt[1]), .QN(n20) );
  DFFSSRX1_RVT \rx_ack_to_cnt_reg[2]  ( .D(N382), .SETB(1'b1), .RSTB(n104), 
        .CLK(n112), .Q(rx_ack_to_cnt[2]), .QN(n22) );
  DFFSSRX1_RVT \rx_ack_to_cnt_reg[4]  ( .D(N384), .SETB(1'b1), .RSTB(n104), 
        .CLK(n112), .Q(rx_ack_to_cnt[4]), .QN(n12) );
  DFFSSRX1_RVT \tx_data_to_cnt_reg[3]  ( .D(N402), .SETB(1'b1), .RSTB(n427), 
        .CLK(n112), .Q(tx_data_to_cnt[3]) );
  DFFSSRX1_RVT \rx_ack_to_cnt_reg[3]  ( .D(N383), .SETB(1'b1), .RSTB(n104), 
        .CLK(n112), .Q(rx_ack_to_cnt[3]) );
  SDFFSSRX1_RVT int_seqerr_set_reg ( .RSTB(rx_data_done), .SETB(1'b1), .D(n171), .SI(1'b0), .SE(n177), .CLK(n120), .Q(int_seqerr_set) );
  SDFFSSRX1_RVT int_upid_set_reg ( .RSTB(match_r), .SETB(1'b1), .D(n419), .SI(
        1'b0), .SE(n417), .CLK(n119), .Q(int_upid_set) );
  SDFFX1_RVT \adr_reg[2]  ( .D(buf1[2]), .SI(buf0[2]), .SE(n100), .CLK(n107), 
        .Q(adr[2]) );
  DFFX1_RVT \state_reg[0]  ( .D(n300), .CLK(n118), .Q(state[0]), .QN(n9) );
  DFFSSRX1_RVT \tx_data_to_cnt_reg[5]  ( .D(N404), .SETB(1'b1), .RSTB(n427), 
        .CLK(n112), .Q(tx_data_to_cnt[5]) );
  DFFSSRX1_RVT \rx_ack_to_cnt_reg[5]  ( .D(N385), .SETB(1'b1), .RSTB(n104), 
        .CLK(n112), .Q(rx_ack_to_cnt[5]) );
  DFFSSRX1_RVT \tx_data_to_cnt_reg[0]  ( .D(N399), .SETB(1'b1), .RSTB(n427), 
        .CLK(n113), .Q(tx_data_to_cnt[0]) );
  DFFSSRX1_RVT \rx_ack_to_cnt_reg[0]  ( .D(N380), .SETB(1'b1), .RSTB(n104), 
        .CLK(n112), .Q(rx_ack_to_cnt[0]) );
  SDFFSSRX1_RVT buf1_set_reg ( .RSTB(state[8]), .SETB(n254), .D(n416), .SI(
        1'b0), .SE(dma_en), .CLK(n120), .Q(buf1_set) );
  DFFX1_RVT buffer_empty_reg ( .D(n303), .CLK(n116), .Q(buffer_empty) );
  SDFFSSRX1_RVT rx_ack_to_clr_reg ( .RSTB(1'b1), .SETB(n418), .D(state[0]), 
        .SI(1'b1), .SE(tx_valid), .CLK(n120), .QN(n104) );
  SDFFX1_RVT \adr_reg[16]  ( .D(buf1[16]), .SI(buf0[16]), .SE(n101), .CLK(n105), .Q(adr[16]) );
  SDFFX1_RVT \adr_reg[15]  ( .D(buf1[15]), .SI(buf0[15]), .SE(n101), .CLK(n107), .Q(adr[15]) );
  SDFFSSRX1_RVT \new_sizeb_reg[10]  ( .RSTB(size[10]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n237), .CLK(n121), .Q(new_sizeb[10]) );
  SDFFSSRX1_RVT \new_sizeb_reg[9]  ( .RSTB(size[9]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n238), .CLK(n121), .Q(new_sizeb[9]) );
  SDFFSSRX1_RVT \new_sizeb_reg[8]  ( .RSTB(size[8]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n239), .CLK(n121), .Q(new_sizeb[8]) );
  SDFFSSRX1_RVT \new_sizeb_reg[7]  ( .RSTB(size[7]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n240), .CLK(n121), .Q(new_sizeb[7]) );
  SDFFSSRX1_RVT \new_sizeb_reg[6]  ( .RSTB(size[6]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n241), .CLK(n121), .Q(new_sizeb[6]) );
  SDFFSSRX1_RVT \new_sizeb_reg[5]  ( .RSTB(size[5]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n242), .CLK(n121), .Q(new_sizeb[5]) );
  SDFFSSRX1_RVT \new_sizeb_reg[4]  ( .RSTB(size[4]), .SETB(1'b1), .D(n98), 
        .SI(1'b1), .SE(n243), .CLK(n121), .Q(new_sizeb[4]) );
  SDFFSSRX1_RVT nse_err_reg ( .RSTB(token_valid), .SETB(n420), .D(n203), .SI(
        1'b0), .SE(match), .CLK(n121), .Q(nse_err) );
  AND2X1_RVT U9 ( .A1(n249), .A2(n344), .Y(n1) );
  AOI21X1_RVT U10 ( .A1(n200), .A2(n254), .A3(dma_en), .Y(n7) );
  INVX1_RVT U11 ( .A(n81), .Y(n79) );
  INVX1_RVT U14 ( .A(n122), .Y(n121) );
  INVX1_RVT U15 ( .A(n122), .Y(n118) );
  INVX1_RVT U16 ( .A(n122), .Y(n117) );
  INVX1_RVT U17 ( .A(n122), .Y(n114) );
  INVX1_RVT U23 ( .A(n122), .Y(n115) );
  INVX1_RVT U34 ( .A(n122), .Y(n116) );
  INVX1_RVT U69 ( .A(n122), .Y(n119) );
  INVX1_RVT U71 ( .A(n122), .Y(n110) );
  INVX1_RVT U73 ( .A(n122), .Y(n111) );
  INVX1_RVT U74 ( .A(n122), .Y(n113) );
  INVX1_RVT U75 ( .A(n122), .Y(n112) );
  INVX1_RVT U76 ( .A(n122), .Y(n108) );
  INVX1_RVT U77 ( .A(n122), .Y(n107) );
  INVX1_RVT U78 ( .A(n122), .Y(n105) );
  INVX1_RVT U79 ( .A(n122), .Y(n120) );
  INVX1_RVT U80 ( .A(n7), .Y(n101) );
  INVX1_RVT U81 ( .A(n7), .Y(n100) );
  INVX1_RVT U82 ( .A(n344), .Y(n98) );
  INVX1_RVT U83 ( .A(clk), .Y(n122) );
  INVX1_RVT U84 ( .A(n61), .Y(n81) );
  INVX1_RVT U85 ( .A(n344), .Y(n99) );
  AND4X1_RVT U86 ( .A1(n279), .A2(n280), .A3(n281), .A4(n282), .Y(n61) );
  INVX1_RVT U87 ( .A(n83), .Y(n85) );
  INVX1_RVT U88 ( .A(n86), .Y(n87) );
  AND3X1_RVT U89 ( .A1(n257), .A2(n222), .A3(rst), .Y(n230) );
  INVX1_RVT U90 ( .A(csr[2]), .Y(n83) );
  INVX1_RVT U91 ( .A(csr[3]), .Y(n86) );
  INVX1_RVT U92 ( .A(csr[5]), .Y(n89) );
  INVX1_RVT U93 ( .A(csr[6]), .Y(n90) );
  INVX1_RVT U94 ( .A(csr[7]), .Y(n93) );
  INVX1_RVT U95 ( .A(csr[10]), .Y(n96) );
  INVX1_RVT U96 ( .A(csr[4]), .Y(n88) );
  INVX1_RVT U97 ( .A(csr[8]), .Y(n94) );
  INVX1_RVT U98 ( .A(csr[9]), .Y(n95) );
  INVX1_RVT U99 ( .A(buf0[18]), .Y(n148) );
  INVX1_RVT U100 ( .A(buf1[18]), .Y(n164) );
  INVX1_RVT U101 ( .A(buf1[17]), .Y(n163) );
  INVX1_RVT U102 ( .A(buf0[17]), .Y(n147) );
  INVX1_RVT U103 ( .A(buf0[20]), .Y(n150) );
  INVX1_RVT U104 ( .A(buf0[19]), .Y(n149) );
  INVX1_RVT U105 ( .A(buf1[20]), .Y(n166) );
  INVX1_RVT U106 ( .A(buf1[19]), .Y(n165) );
  AND2X1_RVT U107 ( .A1(csr[0]), .A2(n393), .Y(n123) );
  AND2X1_RVT U108 ( .A1(n123), .A2(n397), .Y(n124) );
  OA222X1_RVT U109 ( .A1(n85), .A2(n396), .A3(csr[1]), .A4(n124), .A5(n123), 
        .A6(n397), .Y(n125) );
  AOI221X1_RVT U110 ( .A1(n87), .A2(n400), .A3(n85), .A4(n396), .A5(n125), .Y(
        n126) );
  AO221X1_RVT U111 ( .A1(new_size[3]), .A2(n86), .A3(new_size[4]), .A4(n88), 
        .A5(n126), .Y(n127) );
  OA221X1_RVT U112 ( .A1(new_size[5]), .A2(n89), .A3(new_size[4]), .A4(n88), 
        .A5(n127), .Y(n128) );
  AO221X1_RVT U113 ( .A1(new_size[5]), .A2(n89), .A3(new_size[6]), .A4(n90), 
        .A5(n128), .Y(n129) );
  OA221X1_RVT U114 ( .A1(new_size[7]), .A2(n93), .A3(new_size[6]), .A4(n90), 
        .A5(n129), .Y(n130) );
  AO221X1_RVT U115 ( .A1(new_size[7]), .A2(n93), .A3(new_size[8]), .A4(n94), 
        .A5(n130), .Y(n131) );
  OA221X1_RVT U116 ( .A1(new_size[9]), .A2(n95), .A3(new_size[8]), .A4(n94), 
        .A5(n131), .Y(n132) );
  AO221X1_RVT U117 ( .A1(new_size[9]), .A2(n95), .A3(new_size[10]), .A4(n96), 
        .A5(n132), .Y(n133) );
  OA21X1_RVT U118 ( .A1(new_size[10]), .A2(n96), .A3(n133), .Y(n134) );
  NOR4X0_RVT U119 ( .A1(new_size[13]), .A2(new_size[12]), .A3(new_size[11]), 
        .A4(n134), .Y(N261) );
  AND2X1_RVT U120 ( .A1(csr[0]), .A2(n147), .Y(n135) );
  AND2X1_RVT U121 ( .A1(n135), .A2(n148), .Y(n136) );
  OA222X1_RVT U122 ( .A1(n85), .A2(n149), .A3(csr[1]), .A4(n136), .A5(n135), 
        .A6(n148), .Y(n137) );
  AOI221X1_RVT U123 ( .A1(n87), .A2(n150), .A3(csr[2]), .A4(n149), .A5(n137), 
        .Y(n138) );
  AO221X1_RVT U124 ( .A1(buf0[20]), .A2(n86), .A3(buf0[21]), .A4(n88), .A5(
        n138), .Y(n139) );
  OA221X1_RVT U125 ( .A1(buf0[22]), .A2(n89), .A3(buf0[21]), .A4(n88), .A5(
        n139), .Y(n140) );
  AO221X1_RVT U126 ( .A1(buf0[22]), .A2(n89), .A3(buf0[23]), .A4(n90), .A5(
        n140), .Y(n141) );
  OA221X1_RVT U127 ( .A1(buf0[24]), .A2(n93), .A3(buf0[23]), .A4(n90), .A5(
        n141), .Y(n142) );
  AO221X1_RVT U128 ( .A1(buf0[24]), .A2(n93), .A3(buf0[25]), .A4(n94), .A5(
        n142), .Y(n143) );
  OA221X1_RVT U129 ( .A1(buf0[26]), .A2(n95), .A3(buf0[25]), .A4(n94), .A5(
        n143), .Y(n144) );
  AO221X1_RVT U130 ( .A1(buf0[26]), .A2(n95), .A3(buf0[27]), .A4(n96), .A5(
        n144), .Y(n145) );
  OA21X1_RVT U131 ( .A1(buf0[27]), .A2(n96), .A3(n145), .Y(n146) );
  NOR4X0_RVT U132 ( .A1(buf0[30]), .A2(buf0[29]), .A3(buf0[28]), .A4(n146), 
        .Y(N264) );
  AND2X1_RVT U133 ( .A1(csr[0]), .A2(n163), .Y(n151) );
  AND2X1_RVT U134 ( .A1(n151), .A2(n164), .Y(n152) );
  OA222X1_RVT U135 ( .A1(n85), .A2(n165), .A3(csr[1]), .A4(n152), .A5(n151), 
        .A6(n164), .Y(n153) );
  AOI221X1_RVT U136 ( .A1(csr[3]), .A2(n166), .A3(n85), .A4(n165), .A5(n153), 
        .Y(n154) );
  AO221X1_RVT U137 ( .A1(buf1[20]), .A2(n86), .A3(buf1[21]), .A4(n88), .A5(
        n154), .Y(n155) );
  OA221X1_RVT U138 ( .A1(buf1[22]), .A2(n89), .A3(buf1[21]), .A4(n88), .A5(
        n155), .Y(n156) );
  AO221X1_RVT U139 ( .A1(buf1[22]), .A2(n89), .A3(buf1[23]), .A4(n90), .A5(
        n156), .Y(n157) );
  OA221X1_RVT U140 ( .A1(buf1[24]), .A2(n93), .A3(buf1[23]), .A4(n90), .A5(
        n157), .Y(n158) );
  AO221X1_RVT U141 ( .A1(buf1[24]), .A2(n93), .A3(buf1[25]), .A4(n94), .A5(
        n158), .Y(n159) );
  OA221X1_RVT U142 ( .A1(buf1[26]), .A2(n95), .A3(buf1[25]), .A4(n94), .A5(
        n159), .Y(n160) );
  AO221X1_RVT U143 ( .A1(buf1[26]), .A2(n95), .A3(buf1[27]), .A4(n96), .A5(
        n160), .Y(n161) );
  OA21X1_RVT U144 ( .A1(buf1[27]), .A2(n96), .A3(n161), .Y(n162) );
  NOR4X0_RVT U145 ( .A1(buf1[30]), .A2(buf1[29]), .A3(buf1[28]), .A4(n162), 
        .Y(N265) );
  OR3X1_RVT U146 ( .A1(rx_ack_to_cnt[7]), .A2(rx_ack_to_cnt[6]), .A3(
        rx_ack_to_cnt[3]), .Y(n170) );
  OR3X1_RVT U147 ( .A1(n20), .A2(rx_ack_to_cnt[5]), .A3(n12), .Y(n168) );
  NAND3X0_RVT U148 ( .A1(n20), .A2(n12), .A3(rx_ack_to_cnt[5]), .Y(n167) );
  MUX21X1_RVT U149 ( .A1(n168), .A2(n167), .S0(\eq_771/B[5] ), .Y(n169) );
  NOR4X0_RVT U150 ( .A1(n170), .A2(n169), .A3(rx_ack_to_cnt[0]), .A4(n22), .Y(
        N396) );
  OR3X1_RVT U151 ( .A1(tx_data_to_cnt[7]), .A2(tx_data_to_cnt[6]), .A3(
        tx_data_to_cnt[3]), .Y(n175) );
  OR3X1_RVT U152 ( .A1(n21), .A2(tx_data_to_cnt[5]), .A3(n13), .Y(n173) );
  NAND3X0_RVT U153 ( .A1(n21), .A2(n13), .A3(tx_data_to_cnt[5]), .Y(n172) );
  MUX21X1_RVT U154 ( .A1(n173), .A2(n172), .S0(\eq_771/B[5] ), .Y(n174) );
  NOR4X0_RVT U155 ( .A1(n175), .A2(n174), .A3(tx_data_to_cnt[0]), .A4(n33), 
        .Y(N415) );
  OAI21X1_RVT U156 ( .A1(n178), .A2(n179), .A3(n180), .Y(token_pid_sel_d[1])
         );
  NAND3X0_RVT U157 ( .A1(n181), .A2(n180), .A3(n182), .Y(token_pid_sel_d[0])
         );
  NAND3X0_RVT U158 ( .A1(n103), .A2(n183), .A3(state[6]), .Y(n182) );
  NAND4X0_RVT U159 ( .A1(n184), .A2(mode_hs), .A3(no_bufs0), .A4(n185), .Y(
        n180) );
  AND2X1_RVT U160 ( .A1(state[6]), .A2(no_bufs1), .Y(n185) );
  NAND3X0_RVT U161 ( .A1(n186), .A2(n179), .A3(n187), .Y(n181) );
  MUX21X1_RVT U162 ( .A1(csr[9]), .A2(buf_size[9]), .S0(n79), .Y(size[9]) );
  MUX21X1_RVT U163 ( .A1(csr[8]), .A2(buf_size[8]), .S0(n79), .Y(size[8]) );
  MUX21X1_RVT U164 ( .A1(csr[7]), .A2(buf_size[7]), .S0(n79), .Y(size[7]) );
  MUX21X1_RVT U165 ( .A1(buf_size[6]), .A2(csr[6]), .S0(n81), .Y(size[6]) );
  MUX21X1_RVT U166 ( .A1(buf_size[5]), .A2(csr[5]), .S0(n81), .Y(size[5]) );
  MUX21X1_RVT U167 ( .A1(buf_size[4]), .A2(csr[4]), .S0(n81), .Y(size[4]) );
  MUX21X1_RVT U168 ( .A1(buf_size[3]), .A2(n87), .S0(n81), .Y(size[3]) );
  MUX21X1_RVT U169 ( .A1(buf_size[2]), .A2(n85), .S0(n81), .Y(size[2]) );
  MUX21X1_RVT U170 ( .A1(buf_size[1]), .A2(csr[1]), .S0(n81), .Y(size[1]) );
  AND2X1_RVT U171 ( .A1(buf_size[13]), .A2(n61), .Y(size[13]) );
  AND2X1_RVT U172 ( .A1(buf_size[12]), .A2(n79), .Y(size[12]) );
  AND2X1_RVT U173 ( .A1(buf_size[11]), .A2(n61), .Y(size[11]) );
  MUX21X1_RVT U174 ( .A1(buf_size[10]), .A2(csr[10]), .S0(n81), .Y(size[10])
         );
  MUX21X1_RVT U175 ( .A1(csr[0]), .A2(buf_size[0]), .S0(n79), .Y(size[0]) );
  NOR4X0_RVT U176 ( .A1(n188), .A2(n189), .A3(n190), .A4(n191), .Y(
        send_zero_length) );
  OR3X1_RVT U177 ( .A1(csr[0]), .A2(csr[10]), .A3(n192), .Y(n191) );
  OR3X1_RVT U178 ( .A1(csr[2]), .A2(n87), .A3(csr[1]), .Y(n190) );
  OR3X1_RVT U179 ( .A1(csr[5]), .A2(csr[6]), .A3(csr[4]), .Y(n189) );
  OR3X1_RVT U180 ( .A1(csr[8]), .A2(csr[9]), .A3(csr[7]), .Y(n188) );
  OAI22X1_RVT U181 ( .A1(n193), .A2(n178), .A3(n2), .A4(n194), .Y(send_token_d) );
  NAND2X0_RVT U182 ( .A1(n103), .A2(n195), .Y(n194) );
  AND3X1_RVT U183 ( .A1(n187), .A2(n196), .A3(n197), .Y(rx_dma_en) );
  INVX0_RVT U184 ( .A(n192), .Y(tx_dma_en) );
  NAND3X0_RVT U185 ( .A1(n187), .A2(n198), .A3(n193), .Y(n192) );
  INVX0_RVT U186 ( .A(n178), .Y(n187) );
  NAND2X0_RVT U187 ( .A1(state[0]), .A2(n199), .Y(n178) );
  INVX0_RVT U188 ( .A(n200), .Y(n416) );
  AO22X1_RVT U189 ( .A1(n201), .A2(n202), .A3(n204), .A4(n207), .Y(n417) );
  NAND2X0_RVT U190 ( .A1(n411), .A2(n410), .Y(n204) );
  NAND2X0_RVT U191 ( .A1(n106), .A2(n208), .Y(n201) );
  AO21X1_RVT U192 ( .A1(n209), .A2(n409), .A3(n210), .Y(n208) );
  INVX0_RVT U193 ( .A(n207), .Y(n210) );
  INVX0_RVT U194 ( .A(mode_hs), .Y(\eq_771/B[5] ) );
  INVX0_RVT U195 ( .A(csr_17), .Y(n423) );
  INVX0_RVT U196 ( .A(csr_16), .Y(n424) );
  INVX0_RVT U197 ( .A(buf0[31]), .Y(n425) );
  INVX0_RVT U198 ( .A(buf1[31]), .Y(n426) );
  INVX0_RVT U199 ( .A(rx_active), .Y(n427) );
  NOR4X0_RVT U200 ( .A1(n211), .A2(n212), .A3(n213), .A4(n214), .Y(n303) );
  NAND3X0_RVT U201 ( .A1(n395), .A2(n394), .A3(n393), .Y(n214) );
  NAND4X0_RVT U202 ( .A1(n399), .A2(n398), .A3(n397), .A4(n396), .Y(n213) );
  NAND3X0_RVT U203 ( .A1(n402), .A2(n401), .A3(n400), .Y(n212) );
  NAND4X0_RVT U204 ( .A1(n406), .A2(n405), .A3(n404), .A4(n403), .Y(n211) );
  OA21X1_RVT U205 ( .A1(n215), .A2(pid_IN), .A3(rst), .Y(n302) );
  AND2X1_RVT U206 ( .A1(n217), .A2(n16), .Y(n215) );
  OA21X1_RVT U207 ( .A1(n218), .A2(pid_SETUP), .A3(rst), .Y(n301) );
  AND3X1_RVT U208 ( .A1(n420), .A2(n219), .A3(setup_token), .Y(n218) );
  INVX0_RVT U209 ( .A(pid_IN), .Y(n420) );
  NAND4X0_RVT U210 ( .A1(rst), .A2(n220), .A3(n221), .A4(n222), .Y(n300) );
  NAND2X0_RVT U211 ( .A1(n223), .A2(n224), .Y(n221) );
  NAND4X0_RVT U212 ( .A1(n14), .A2(n8), .A3(n225), .A4(n226), .Y(n224) );
  OA222X1_RVT U213 ( .A1(n3), .A2(n18), .A3(n227), .A4(n11), .A5(n103), .A6(n6), .Y(n226) );
  OA21X1_RVT U214 ( .A1(n184), .A2(n2), .A3(n228), .Y(n225) );
  OR2X1_RVT U215 ( .A1(n9), .A2(n229), .Y(n220) );
  AO22X1_RVT U216 ( .A1(uc_stat_set_d), .A2(n230), .A3(state[8]), .A4(n223), 
        .Y(n299) );
  AO22X1_RVT U217 ( .A1(state[1]), .A2(n230), .A3(n231), .A4(n232), .Y(n298)
         );
  AO22X1_RVT U218 ( .A1(n230), .A2(state[2]), .A3(n233), .A4(n231), .Y(n297)
         );
  AND2X1_RVT U219 ( .A1(n193), .A2(n198), .Y(n233) );
  INVX0_RVT U220 ( .A(n232), .Y(n193) );
  AO22X1_RVT U221 ( .A1(n230), .A2(state[3]), .A3(n234), .A4(n223), .Y(n296)
         );
  AND2X1_RVT U222 ( .A1(state[2]), .A2(n235), .Y(n234) );
  AO22X1_RVT U223 ( .A1(n230), .A2(state[4]), .A3(n236), .A4(n231), .Y(n295)
         );
  AND2X1_RVT U224 ( .A1(n223), .A2(state[0]), .Y(n231) );
  AND2X1_RVT U225 ( .A1(n197), .A2(n196), .Y(n236) );
  INVX0_RVT U226 ( .A(n248), .Y(n196) );
  AO22X1_RVT U227 ( .A1(n230), .A2(state[5]), .A3(n250), .A4(n223), .Y(n294)
         );
  AND2X1_RVT U228 ( .A1(n251), .A2(n235), .Y(n250) );
  AO22X1_RVT U229 ( .A1(n230), .A2(state[6]), .A3(n252), .A4(n223), .Y(n293)
         );
  AND2X1_RVT U230 ( .A1(state[5]), .A2(n103), .Y(n252) );
  AO22X1_RVT U231 ( .A1(state[7]), .A2(n230), .A3(n171), .A4(n223), .Y(n292)
         );
  AO22X1_RVT U232 ( .A1(n230), .A2(state[8]), .A3(n223), .A4(n253), .Y(n291)
         );
  AO221X1_RVT U233 ( .A1(n255), .A2(state[2]), .A3(state[3]), .A4(n18), .A5(
        n256), .Y(n253) );
  AO21X1_RVT U234 ( .A1(state[6]), .A2(n184), .A3(state[7]), .Y(n256) );
  AND3X1_RVT U235 ( .A1(n195), .A2(n177), .A3(n103), .Y(n184) );
  INVX0_RVT U236 ( .A(n183), .Y(n195) );
  NAND2X0_RVT U237 ( .A1(n392), .A2(n44), .Y(n183) );
  AND3X1_RVT U238 ( .A1(rst), .A2(n222), .A3(n229), .Y(n223) );
  INVX0_RVT U239 ( .A(match), .Y(n222) );
  NAND2X0_RVT U240 ( .A1(n229), .A2(n228), .Y(n257) );
  NAND3X0_RVT U241 ( .A1(n197), .A2(state[0]), .A3(n248), .Y(n228) );
  OA21X1_RVT U242 ( .A1(n258), .A2(n217), .A3(n202), .Y(n248) );
  INVX0_RVT U243 ( .A(n203), .Y(n217) );
  NOR2X0_RVT U244 ( .A1(n198), .A2(n232), .Y(n197) );
  NAND3X0_RVT U245 ( .A1(n259), .A2(n179), .A3(n260), .Y(n232) );
  INVX0_RVT U246 ( .A(n186), .Y(n260) );
  NAND3X0_RVT U247 ( .A1(n261), .A2(n262), .A3(n263), .Y(n186) );
  OR3X1_RVT U248 ( .A1(n258), .A2(n91), .A3(n219), .Y(n262) );
  INVX0_RVT U249 ( .A(pid_OUT), .Y(n219) );
  AO21X1_RVT U250 ( .A1(n91), .A2(n264), .A3(n92), .Y(n261) );
  NAND2X0_RVT U251 ( .A1(csr_23), .A2(n265), .Y(n179) );
  NAND2X0_RVT U252 ( .A1(pid_PING), .A2(mode_hs), .Y(n259) );
  NAND2X0_RVT U253 ( .A1(n207), .A2(n264), .Y(n198) );
  NAND2X0_RVT U254 ( .A1(n209), .A2(pid_IN), .Y(n264) );
  OA221X1_RVT U255 ( .A1(n3), .A2(n266), .A3(rx_data_done), .A4(n267), .A5(
        n268), .Y(n229) );
  OA22X1_RVT U256 ( .A1(n199), .A2(n9), .A3(idma_done), .A4(n17), .Y(n268) );
  AND3X1_RVT U257 ( .A1(match_r), .A2(n419), .A3(n269), .Y(n199) );
  OR2X1_RVT U258 ( .A1(n265), .A2(csr_23), .Y(n269) );
  INVX0_RVT U259 ( .A(csr_22), .Y(n265) );
  INVX0_RVT U260 ( .A(pid_SOF), .Y(n419) );
  AO21X1_RVT U261 ( .A1(token_valid), .A2(pid_ACK), .A3(rx_ack_to), .Y(n266)
         );
  INVX0_RVT U262 ( .A(n270), .Y(n206) );
  MUX21X1_RVT U263 ( .A1(pid_DATA1), .A2(pid_DATA0), .S0(n97), .Y(n270) );
  MUX21X1_RVT U264 ( .A1(n271), .A2(n272), .S0(n97), .Y(n205) );
  OR2X1_RVT U265 ( .A1(pid_SETUP), .A2(pid_OUT), .Y(n203) );
  AND2X1_RVT U266 ( .A1(n255), .A2(n251), .Y(n171) );
  INVX0_RVT U267 ( .A(n267), .Y(n251) );
  NAND2X0_RVT U268 ( .A1(state[4]), .A2(n227), .Y(n267) );
  NOR3X0_RVT U269 ( .A1(crc16_err), .A2(tx_data_to), .A3(abort), .Y(n227) );
  INVX0_RVT U270 ( .A(n235), .Y(n255) );
  NOR3X0_RVT U271 ( .A1(n273), .A2(state[2]), .A3(state[0]), .Y(int_to_set) );
  MUX21X1_RVT U272 ( .A1(n274), .A2(n275), .S0(state[3]), .Y(n273) );
  NAND2X0_RVT U273 ( .A1(n418), .A2(rx_ack_to), .Y(n275) );
  OR2X1_RVT U274 ( .A1(n276), .A2(n277), .Y(n274) );
  NAND4X0_RVT U275 ( .A1(tx_data_to), .A2(state[4]), .A3(n14), .A4(n6), .Y(
        n277) );
  NAND4X0_RVT U276 ( .A1(n2), .A2(n19), .A3(n109), .A4(n8), .Y(n276) );
  AND2X1_RVT U277 ( .A1(rx_data_done), .A2(crc16_err), .Y(int_crc16_set) );
  AND3X1_RVT U278 ( .A1(n101), .A2(n278), .A3(n407), .Y(int_buf1_set) );
  AND3X1_RVT U279 ( .A1(n278), .A2(n7), .A3(n408), .Y(int_buf0_set) );
  INVX0_RVT U280 ( .A(n216), .Y(n278) );
  NAND2X0_RVT U281 ( .A1(state[8]), .A2(buffer_done), .Y(n216) );
  AO21X1_RVT U282 ( .A1(csr[10]), .A2(n283), .A3(n284), .Y(n282) );
  OA221X1_RVT U283 ( .A1(csr[9]), .A2(n285), .A3(csr[10]), .A4(n283), .A5(n286), .Y(n284) );
  AO221X1_RVT U284 ( .A1(csr[9]), .A2(n285), .A3(csr[8]), .A4(n287), .A5(n288), 
        .Y(n286) );
  OA221X1_RVT U285 ( .A1(csr[8]), .A2(n287), .A3(csr[7]), .A4(n289), .A5(n290), 
        .Y(n288) );
  AO221X1_RVT U286 ( .A1(csr[7]), .A2(n289), .A3(csr[6]), .A4(n304), .A5(n305), 
        .Y(n290) );
  OA221X1_RVT U287 ( .A1(csr[6]), .A2(n304), .A3(csr[5]), .A4(n306), .A5(n307), 
        .Y(n305) );
  AO221X1_RVT U288 ( .A1(csr[5]), .A2(n306), .A3(csr[4]), .A4(n308), .A5(n309), 
        .Y(n307) );
  OA221X1_RVT U289 ( .A1(csr[4]), .A2(n308), .A3(csr[3]), .A4(n310), .A5(n311), 
        .Y(n309) );
  AO222X1_RVT U290 ( .A1(n87), .A2(n310), .A3(n312), .A4(n313), .A5(csr[2]), 
        .A6(n314), .Y(n311) );
  OR2X1_RVT U291 ( .A1(n314), .A2(csr[2]), .Y(n313) );
  AO22X1_RVT U292 ( .A1(csr[1]), .A2(n315), .A3(n316), .A4(csr[0]), .Y(n312)
         );
  OA21X1_RVT U293 ( .A1(csr[1]), .A2(n315), .A3(n317), .Y(n316) );
  AO221X1_RVT U294 ( .A1(match), .A2(n318), .A3(to_large), .A4(match_r), .A5(
        buffer_overflow), .Y(N377) );
  NAND4X0_RVT U295 ( .A1(n418), .A2(state[0]), .A3(n17), .A4(n3), .Y(n318) );
  AND4X1_RVT U296 ( .A1(n11), .A2(n6), .A3(n14), .A4(n319), .Y(n418) );
  AND4X1_RVT U297 ( .A1(n2), .A2(n19), .A3(n109), .A4(n8), .Y(n319) );
  AO222X1_RVT U298 ( .A1(buf0[3]), .A2(n320), .A3(next_dpid[1]), .A4(n321), 
        .A5(new_adr[3]), .A6(n322), .Y(N372) );
  AO222X1_RVT U299 ( .A1(buf0[2]), .A2(n320), .A3(next_dpid[0]), .A4(n321), 
        .A5(new_adr[2]), .A6(n322), .Y(N371) );
  AO222X1_RVT U300 ( .A1(buf0[1]), .A2(n320), .A3(n323), .A4(n321), .A5(
        new_adr[1]), .A6(n322), .Y(N370) );
  AND2X1_RVT U301 ( .A1(n324), .A2(n325), .Y(n323) );
  XNOR2X1_RVT U302 ( .A1(n326), .A2(csr_31), .Y(n324) );
  NAND2X0_RVT U303 ( .A1(csr_30), .A2(buffer_done), .Y(n326) );
  AO222X1_RVT U304 ( .A1(buf0[0]), .A2(n320), .A3(n327), .A4(n328), .A5(
        new_adr[0]), .A6(n322), .Y(N369) );
  XOR2X1_RVT U305 ( .A1(n329), .A2(n176), .Y(n328) );
  AND2X1_RVT U306 ( .A1(n321), .A2(n325), .Y(n327) );
  NOR2X0_RVT U307 ( .A1(n322), .A2(out_to_small_r), .Y(n321) );
  INVX0_RVT U308 ( .A(n330), .Y(n322) );
  AND2X1_RVT U309 ( .A1(out_to_small_r), .A2(n330), .Y(n320) );
  AO21X1_RVT U310 ( .A1(dma_en), .A2(buffer_done), .A3(n109), .Y(n330) );
  AND4X1_RVT U311 ( .A1(n279), .A2(n280), .A3(n281), .A4(n331), .Y(N323) );
  AO21X1_RVT U312 ( .A1(sizu_c[10]), .A2(n283), .A3(n332), .Y(n331) );
  OA221X1_RVT U313 ( .A1(sizu_c[9]), .A2(n285), .A3(sizu_c[10]), .A4(n283), 
        .A5(n333), .Y(n332) );
  AO221X1_RVT U314 ( .A1(sizu_c[9]), .A2(n285), .A3(sizu_c[8]), .A4(n287), 
        .A5(n334), .Y(n333) );
  OA221X1_RVT U315 ( .A1(sizu_c[8]), .A2(n287), .A3(sizu_c[7]), .A4(n289), 
        .A5(n335), .Y(n334) );
  AO221X1_RVT U316 ( .A1(sizu_c[7]), .A2(n289), .A3(sizu_c[6]), .A4(n304), 
        .A5(n336), .Y(n335) );
  OA221X1_RVT U317 ( .A1(sizu_c[6]), .A2(n304), .A3(sizu_c[5]), .A4(n306), 
        .A5(n337), .Y(n336) );
  AO221X1_RVT U318 ( .A1(sizu_c[5]), .A2(n306), .A3(sizu_c[4]), .A4(n308), 
        .A5(n338), .Y(n337) );
  OA221X1_RVT U319 ( .A1(sizu_c[4]), .A2(n308), .A3(sizu_c[3]), .A4(n310), 
        .A5(n339), .Y(n338) );
  AO222X1_RVT U320 ( .A1(sizu_c[3]), .A2(n310), .A3(n340), .A4(n341), .A5(
        sizu_c[2]), .A6(n314), .Y(n339) );
  OR2X1_RVT U321 ( .A1(n314), .A2(sizu_c[2]), .Y(n341) );
  INVX0_RVT U322 ( .A(buf_size[2]), .Y(n314) );
  MUX21X1_RVT U323 ( .A1(buf0[19]), .A2(buf1[19]), .S0(n7), .Y(buf_size[2]) );
  AO22X1_RVT U324 ( .A1(sizu_c[1]), .A2(n315), .A3(n342), .A4(sizu_c[0]), .Y(
        n340) );
  OA21X1_RVT U325 ( .A1(sizu_c[1]), .A2(n315), .A3(n317), .Y(n342) );
  INVX0_RVT U326 ( .A(buf_size[0]), .Y(n317) );
  MUX21X1_RVT U327 ( .A1(buf0[17]), .A2(buf1[17]), .S0(n7), .Y(buf_size[0]) );
  INVX0_RVT U328 ( .A(buf_size[1]), .Y(n315) );
  MUX21X1_RVT U329 ( .A1(buf0[18]), .A2(buf1[18]), .S0(n7), .Y(buf_size[1]) );
  INVX0_RVT U330 ( .A(buf_size[3]), .Y(n310) );
  MUX21X1_RVT U331 ( .A1(buf0[20]), .A2(buf1[20]), .S0(n7), .Y(buf_size[3]) );
  INVX0_RVT U332 ( .A(buf_size[4]), .Y(n308) );
  MUX21X1_RVT U333 ( .A1(buf0[21]), .A2(buf1[21]), .S0(n7), .Y(buf_size[4]) );
  INVX0_RVT U334 ( .A(buf_size[5]), .Y(n306) );
  MUX21X1_RVT U335 ( .A1(buf0[22]), .A2(buf1[22]), .S0(n7), .Y(buf_size[5]) );
  INVX0_RVT U336 ( .A(buf_size[6]), .Y(n304) );
  MUX21X1_RVT U337 ( .A1(buf0[23]), .A2(buf1[23]), .S0(n7), .Y(buf_size[6]) );
  INVX0_RVT U338 ( .A(buf_size[7]), .Y(n289) );
  MUX21X1_RVT U339 ( .A1(buf1[24]), .A2(buf0[24]), .S0(n100), .Y(buf_size[7])
         );
  INVX0_RVT U340 ( .A(buf_size[8]), .Y(n287) );
  MUX21X1_RVT U341 ( .A1(buf1[25]), .A2(buf0[25]), .S0(n100), .Y(buf_size[8])
         );
  INVX0_RVT U342 ( .A(buf_size[9]), .Y(n285) );
  MUX21X1_RVT U343 ( .A1(buf1[26]), .A2(buf0[26]), .S0(n100), .Y(buf_size[9])
         );
  INVX0_RVT U344 ( .A(buf_size[10]), .Y(n283) );
  MUX21X1_RVT U345 ( .A1(buf1[27]), .A2(buf0[27]), .S0(n100), .Y(buf_size[10])
         );
  INVX0_RVT U346 ( .A(buf_size[13]), .Y(n281) );
  MUX21X1_RVT U347 ( .A1(buf1[30]), .A2(buf0[30]), .S0(n100), .Y(buf_size[13])
         );
  INVX0_RVT U348 ( .A(buf_size[12]), .Y(n280) );
  MUX21X1_RVT U349 ( .A1(buf1[29]), .A2(buf0[29]), .S0(n100), .Y(buf_size[12])
         );
  INVX0_RVT U350 ( .A(buf_size[11]), .Y(n279) );
  MUX21X1_RVT U351 ( .A1(buf1[28]), .A2(buf0[28]), .S0(n100), .Y(buf_size[11])
         );
  AND2X1_RVT U352 ( .A1(size_next_r[13]), .A2(n98), .Y(N320) );
  AND2X1_RVT U353 ( .A1(size_next_r[12]), .A2(n98), .Y(N319) );
  AND2X1_RVT U354 ( .A1(size_next_r[11]), .A2(n98), .Y(N318) );
  AO21X1_RVT U355 ( .A1(size_next_r[10]), .A2(n99), .A3(n237), .Y(N317) );
  AO22X1_RVT U356 ( .A1(csr[10]), .A2(n343), .A3(sizu_c[10]), .A4(n1), .Y(n237) );
  AO21X1_RVT U357 ( .A1(size_next_r[9]), .A2(n99), .A3(n238), .Y(N316) );
  AO22X1_RVT U358 ( .A1(csr[9]), .A2(n343), .A3(sizu_c[9]), .A4(n1), .Y(n238)
         );
  AO21X1_RVT U359 ( .A1(size_next_r[8]), .A2(n99), .A3(n239), .Y(N315) );
  AO22X1_RVT U360 ( .A1(csr[8]), .A2(n343), .A3(sizu_c[8]), .A4(n1), .Y(n239)
         );
  AO21X1_RVT U361 ( .A1(size_next_r[7]), .A2(n99), .A3(n240), .Y(N314) );
  AO22X1_RVT U362 ( .A1(csr[7]), .A2(n343), .A3(sizu_c[7]), .A4(n1), .Y(n240)
         );
  AO21X1_RVT U363 ( .A1(size_next_r[6]), .A2(n99), .A3(n241), .Y(N313) );
  AO22X1_RVT U364 ( .A1(csr[6]), .A2(n343), .A3(sizu_c[6]), .A4(n1), .Y(n241)
         );
  AO21X1_RVT U365 ( .A1(size_next_r[5]), .A2(n99), .A3(n242), .Y(N312) );
  AO22X1_RVT U366 ( .A1(csr[5]), .A2(n343), .A3(sizu_c[5]), .A4(n1), .Y(n242)
         );
  AO21X1_RVT U367 ( .A1(size_next_r[4]), .A2(n99), .A3(n243), .Y(N311) );
  AO22X1_RVT U368 ( .A1(csr[4]), .A2(n343), .A3(sizu_c[4]), .A4(n1), .Y(n243)
         );
  AO21X1_RVT U369 ( .A1(size_next_r[3]), .A2(n99), .A3(n244), .Y(N310) );
  AO22X1_RVT U370 ( .A1(n87), .A2(n343), .A3(sizu_c[3]), .A4(n1), .Y(n244) );
  AO21X1_RVT U371 ( .A1(size_next_r[2]), .A2(n99), .A3(n245), .Y(N309) );
  AO22X1_RVT U372 ( .A1(csr[2]), .A2(n343), .A3(sizu_c[2]), .A4(n1), .Y(n245)
         );
  AO21X1_RVT U373 ( .A1(size_next_r[1]), .A2(n99), .A3(n246), .Y(N308) );
  AO22X1_RVT U374 ( .A1(csr[1]), .A2(n343), .A3(sizu_c[1]), .A4(n1), .Y(n246)
         );
  AO21X1_RVT U375 ( .A1(size_next_r[0]), .A2(n99), .A3(n247), .Y(N307) );
  AO22X1_RVT U376 ( .A1(csr[0]), .A2(n343), .A3(sizu_c[0]), .A4(n1), .Y(n247)
         );
  INVX0_RVT U377 ( .A(n249), .Y(n343) );
  NAND2X0_RVT U378 ( .A1(n345), .A2(n92), .Y(N270) );
  MUX21X1_RVT U379 ( .A1(n412), .A2(n413), .S0(n7), .Y(n345) );
  NAND3X0_RVT U380 ( .A1(n263), .A2(n91), .A3(n346), .Y(N268) );
  MUX21X1_RVT U381 ( .A1(n347), .A2(n414), .S0(n7), .Y(n346) );
  NAND3X0_RVT U382 ( .A1(n348), .A2(n258), .A3(n92), .Y(n254) );
  NAND2X0_RVT U383 ( .A1(n91), .A2(n329), .Y(n348) );
  INVX0_RVT U384 ( .A(csr_30), .Y(n329) );
  OR2X1_RVT U385 ( .A1(dma_en), .A2(n413), .Y(n347) );
  INVX0_RVT U386 ( .A(n325), .Y(dma_en) );
  OA22X1_RVT U387 ( .A1(dma_out_buf_avail), .A2(n249), .A3(n325), .A4(n349), 
        .Y(n263) );
  OR2X1_RVT U388 ( .A1(dma_in_buf_sz1), .A2(n207), .Y(n349) );
  OR2X1_RVT U389 ( .A1(n202), .A2(n325), .Y(n249) );
  NAND2X0_RVT U390 ( .A1(csr_15), .A2(n258), .Y(n325) );
  NAND2X0_RVT U391 ( .A1(csr_27), .A2(n422), .Y(n202) );
  AO222X1_RVT U392 ( .A1(n350), .A2(n351), .A3(n352), .A4(n353), .A5(n354), 
        .A6(n355), .Y(N205) );
  NAND2X0_RVT U393 ( .A1(n271), .A2(n272), .Y(n353) );
  INVX0_RVT U394 ( .A(pid_DATA2), .Y(n272) );
  INVX0_RVT U395 ( .A(pid_MDATA), .Y(n271) );
  NAND2X0_RVT U396 ( .A1(n356), .A2(n357), .Y(n351) );
  NAND3X0_RVT U397 ( .A1(csr_24), .A2(n358), .A3(n359), .Y(n357) );
  NAND4X0_RVT U398 ( .A1(n360), .A2(n361), .A3(n362), .A4(n363), .Y(N204) );
  AOI222X1_RVT U399 ( .A1(n354), .A2(n364), .A3(n352), .A4(n365), .A5(csr_28), 
        .A6(n366), .Y(n363) );
  AO21X1_RVT U400 ( .A1(n235), .A2(n258), .A3(n354), .Y(n366) );
  OR2X1_RVT U401 ( .A1(pid_MDATA), .A2(pid_DATA1), .Y(n365) );
  AND4X1_RVT U402 ( .A1(csr_24), .A2(csr_27), .A3(n367), .A4(n368), .Y(n352)
         );
  NAND3X0_RVT U403 ( .A1(n209), .A2(n15), .A3(n369), .Y(n362) );
  MUX21X1_RVT U404 ( .A1(csr_29), .A2(csr_28), .S0(n344), .Y(n369) );
  NAND3X0_RVT U405 ( .A1(csr_24), .A2(n368), .A3(n359), .Y(n360) );
  NAND3X0_RVT U406 ( .A1(n370), .A2(n361), .A3(n371), .Y(N175) );
  NAND2X0_RVT U407 ( .A1(n209), .A2(n372), .Y(n371) );
  NAND3X0_RVT U408 ( .A1(n98), .A2(n15), .A3(csr_29), .Y(n372) );
  NAND4X0_RVT U409 ( .A1(csr_28), .A2(n350), .A3(n373), .A4(n374), .Y(n361) );
  AND2X1_RVT U410 ( .A1(csr_24), .A2(csr_26), .Y(n373) );
  NAND4X0_RVT U411 ( .A1(pid_MDATA), .A2(csr_28), .A3(n354), .A4(n350), .Y(
        n370) );
  INVX0_RVT U412 ( .A(n356), .Y(n354) );
  AO221X1_RVT U413 ( .A1(n359), .A2(n364), .A3(n209), .A4(n375), .A5(n376), 
        .Y(N174) );
  AO22X1_RVT U414 ( .A1(n235), .A2(n355), .A3(pid_MDATA), .A4(n377), .Y(n376)
         );
  NAND2X0_RVT U415 ( .A1(n378), .A2(n379), .Y(n377) );
  NAND3X0_RVT U416 ( .A1(csr_27), .A2(n355), .A3(n374), .Y(n379) );
  AO21X1_RVT U417 ( .A1(n350), .A2(n358), .A3(n356), .Y(n378) );
  NAND3X0_RVT U418 ( .A1(csr_24), .A2(csr_27), .A3(n374), .Y(n356) );
  INVX0_RVT U419 ( .A(csr_29), .Y(n358) );
  NAND2X0_RVT U420 ( .A1(n380), .A2(csr_24), .Y(n235) );
  INVX0_RVT U421 ( .A(csr_25), .Y(n380) );
  NAND3X0_RVT U422 ( .A1(n344), .A2(n15), .A3(csr_28), .Y(n375) );
  AND2X1_RVT U423 ( .A1(n207), .A2(n200), .Y(n344) );
  NAND2X0_RVT U424 ( .A1(n209), .A2(n16), .Y(n200) );
  NAND2X0_RVT U425 ( .A1(csr_26), .A2(n381), .Y(n207) );
  INVX0_RVT U426 ( .A(n258), .Y(n209) );
  NAND2X0_RVT U427 ( .A1(n381), .A2(n422), .Y(n258) );
  INVX0_RVT U428 ( .A(csr_26), .Y(n422) );
  INVX0_RVT U429 ( .A(csr_27), .Y(n381) );
  NAND2X0_RVT U430 ( .A1(csr_29), .A2(n350), .Y(n364) );
  INVX0_RVT U431 ( .A(n368), .Y(n350) );
  NAND2X0_RVT U432 ( .A1(csr[11]), .A2(mode_hs), .Y(n368) );
  AND3X1_RVT U433 ( .A1(csr_26), .A2(n355), .A3(n374), .Y(n359) );
  INVX0_RVT U434 ( .A(n367), .Y(n374) );
  NAND2X0_RVT U435 ( .A1(csr[12]), .A2(mode_hs), .Y(n367) );
  INVX0_RVT U436 ( .A(csr_28), .Y(n355) );
  NOR4X0_RVT U437 ( .A1(n382), .A2(n383), .A3(n384), .A4(n385), .Y(N131) );
  NAND4X0_RVT U438 ( .A1(buf1[9]), .A2(buf1[8]), .A3(buf1[7]), .A4(buf1[6]), 
        .Y(n385) );
  NAND4X0_RVT U439 ( .A1(buf1[5]), .A2(buf1[4]), .A3(buf1[3]), .A4(buf1[2]), 
        .Y(n384) );
  NAND4X0_RVT U440 ( .A1(buf1[1]), .A2(buf1[16]), .A3(buf1[15]), .A4(buf1[14]), 
        .Y(n383) );
  NAND3X0_RVT U441 ( .A1(buf1[13]), .A2(buf1[12]), .A3(n386), .Y(n382) );
  AND3X1_RVT U442 ( .A1(buf1[10]), .A2(buf1[0]), .A3(buf1[11]), .Y(n386) );
  NOR4X0_RVT U443 ( .A1(n387), .A2(n388), .A3(n389), .A4(n390), .Y(N130) );
  NAND4X0_RVT U444 ( .A1(buf0[9]), .A2(buf0[8]), .A3(buf0[7]), .A4(buf0[6]), 
        .Y(n390) );
  NAND4X0_RVT U445 ( .A1(buf0[5]), .A2(buf0[4]), .A3(buf0[16]), .A4(buf0[15]), 
        .Y(n389) );
  NAND4X0_RVT U446 ( .A1(buf0[14]), .A2(buf0[13]), .A3(buf0[12]), .A4(buf0[11]), .Y(n388) );
  NAND3X0_RVT U447 ( .A1(buf0[10]), .A2(buf0[0]), .A3(n391), .Y(n387) );
  AND3X1_RVT U448 ( .A1(buf0[2]), .A2(buf0[3]), .A3(buf0[1]), .Y(n391) );
endmodule


module usbf_pl_SSRAM_HADR14_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HADDX1_RVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[11]), .A2(A[11]), .Y(SUM[11]) );
endmodule


module usbf_pl_SSRAM_HADR14 ( clk, rst, rx_data, rx_valid, rx_active, rx_err, 
        tx_data, tx_valid, tx_valid_last, tx_ready, tx_first, tx_valid_out, 
        mode_hs, usb_reset, usb_suspend, usb_attached, madr, mdout, mdin, mwe, 
        mreq, mack, fa, idin, ep_sel, match, dma_in_buf_sz1, dma_out_buf_avail, 
        buf0_rl, buf0_set, buf1_set, uc_bsel_set, uc_dpd_set, int_buf1_set, 
        int_buf0_set, int_upid_set, int_crc16_set, int_to_set, int_seqerr_set, 
        out_to_small, csr, buf0, buf1, frm_nat, pid_cs_err, nse_err, crc5_err
 );
  input [7:0] rx_data;
  output [7:0] tx_data;
  output [14:0] madr;
  output [31:0] mdout;
  input [31:0] mdin;
  input [6:0] fa;
  output [31:0] idin;
  output [3:0] ep_sel;
  input [31:0] csr;
  input [31:0] buf0;
  input [31:0] buf1;
  output [31:0] frm_nat;
  input clk, rst, rx_valid, rx_active, rx_err, tx_ready, tx_valid_out, mode_hs,
         usb_reset, usb_suspend, usb_attached, mack, match, dma_in_buf_sz1,
         dma_out_buf_avail;
  output tx_valid, tx_valid_last, tx_first, mwe, mreq, buf0_rl, buf0_set,
         buf1_set, uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set,
         int_upid_set, int_crc16_set, int_to_set, int_seqerr_set, out_to_small,
         pid_cs_err, nse_err, crc5_err;
  wire   frm_nat_31, frm_nat_30, frm_nat_29, frm_nat_28, frm_nat_26,
         frm_nat_25, frm_nat_24, frm_nat_23, frm_nat_22, frm_nat_21,
         frm_nat_20, frm_nat_19, frm_nat_18, frm_nat_17, frm_nat_16, pid_ACK,
         pid_NACK, pid_STALL, pid_NYET, pid_PRE, pid_ERR, pid_SPLIT, pid_PING,
         fsel, token_valid, match_o, pid_SOF, frame_no_we, frame_no_we_r, N21,
         frame_no_same, hms_clk, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N78, N79, N80, N81, pid_OUT, pid_IN, pid_SETUP,
         pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA, rx_data_valid,
         rx_data_done, crc16_err, send_token, send_data, send_zero_length,
         rd_next, rx_dma_en, tx_dma_en, abort, idma_done, dma_en, n12, n14,
         n15, n16, n17, n19, n20, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, \add_321/carry[4] ,
         \add_321/carry[3] , \add_321/carry[2] , n1, n2, n3, n4, n11, n13, n18,
         n21, n22, n23, n33, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100;
  wire   [10:0] frame_no;
  wire   [4:0] hms_cnt;
  wire   [6:0] token_fadr;
  wire   [7:0] rx_data_st;
  wire   [1:0] token_pid_sel;
  wire   [1:0] data_pid_sel;
  wire   [7:0] tx_data_st;
  wire   [16:0] adr;
  wire   [13:0] size;
  wire   [13:0] buf_size;
  wire   [10:0] sizu_c;
  assign frm_nat[12] = 1'b0;
  assign frm_nat[13] = 1'b0;
  assign frm_nat[14] = 1'b0;
  assign frm_nat[15] = 1'b0;
  assign frm_nat[27] = 1'b0;
  assign frm_nat[31] = frm_nat_31;
  assign frm_nat[30] = frm_nat_30;
  assign frm_nat[29] = frm_nat_29;
  assign frm_nat[28] = frm_nat_28;
  assign frm_nat[26] = frm_nat_26;
  assign frm_nat[25] = frm_nat_25;
  assign frm_nat[24] = frm_nat_24;
  assign frm_nat[23] = frm_nat_23;
  assign frm_nat[22] = frm_nat_22;
  assign frm_nat[21] = frm_nat_21;
  assign frm_nat[20] = frm_nat_20;
  assign frm_nat[19] = frm_nat_19;
  assign frm_nat[18] = frm_nat_18;
  assign frm_nat[17] = frm_nat_17;
  assign frm_nat[16] = frm_nat_16;

  NOR4X1_RVT U52 ( .A1(n36), .A2(n37), .A3(n38), .A4(n39), .Y(match_o) );
  usbf_pd u0 ( .clk(n18), .rst(rst), .rx_data(rx_data), .rx_valid(rx_valid), 
        .rx_active(rx_active), .rx_err(rx_err), .pid_OUT(pid_OUT), .pid_IN(
        pid_IN), .pid_SOF(pid_SOF), .pid_SETUP(pid_SETUP), .pid_DATA0(
        pid_DATA0), .pid_DATA1(pid_DATA1), .pid_DATA2(pid_DATA2), .pid_MDATA(
        pid_MDATA), .pid_ACK(pid_ACK), .pid_NACK(pid_NACK), .pid_STALL(
        pid_STALL), .pid_NYET(pid_NYET), .pid_PRE(pid_PRE), .pid_ERR(pid_ERR), 
        .pid_SPLIT(pid_SPLIT), .pid_PING(pid_PING), .pid_cks_err(pid_cs_err), 
        .token_fadr(token_fadr), .token_endp(ep_sel), .token_valid(token_valid), .crc5_err(crc5_err), .frame_no(frame_no), .rx_data_st(rx_data_st), 
        .rx_data_valid(rx_data_valid), .rx_data_done(rx_data_done), 
        .crc16_err(crc16_err) );
  usbf_pa u1 ( .clk(n18), .rst(rst), .tx_data(tx_data), .tx_valid(tx_valid), 
        .tx_valid_last(tx_valid_last), .tx_ready(tx_ready), .tx_first(tx_first), .send_token(send_token), .token_pid_sel(token_pid_sel), .send_data(send_data), .data_pid_sel(data_pid_sel), .send_zero_length(send_zero_length), 
        .tx_data_st(tx_data_st), .rd_next(rd_next) );
  usbf_idma_SSRAM_HADR14 u2 ( .clk(n13), .rst(rst), .rx_data_st(rx_data_st), 
        .rx_data_valid(rx_data_valid), .rx_data_done(rx_data_done), 
        .send_data(send_data), .tx_data_st(tx_data_st), .rd_next(rd_next), 
        .rx_dma_en(rx_dma_en), .tx_dma_en(tx_dma_en), .abort(abort), 
        .idma_done(idma_done), .buf_size(buf_size), .dma_en(dma_en), 
        .send_zero_length(send_zero_length), .adr(adr), .size(size), .sizu_c(
        sizu_c), .madr(madr), .mdout(mdout), .mdin(mdin), .mwe(mwe), .mreq(
        mreq), .mack(mack) );
  usbf_pe_SSRAM_HADR14 u3 ( .clk(n13), .rst(rst), .tx_valid(tx_valid_out), 
        .rx_active(rx_active), .pid_OUT(pid_OUT), .pid_IN(pid_IN), .pid_SOF(
        pid_SOF), .pid_SETUP(pid_SETUP), .pid_DATA0(pid_DATA0), .pid_DATA1(
        pid_DATA1), .pid_DATA2(pid_DATA2), .pid_MDATA(pid_MDATA), .pid_ACK(
        pid_ACK), .pid_NACK(pid_NACK), .pid_STALL(pid_STALL), .pid_NYET(
        pid_NYET), .pid_PRE(pid_PRE), .pid_ERR(pid_ERR), .pid_SPLIT(pid_SPLIT), 
        .pid_PING(pid_PING), .mode_hs(mode_hs), .token_valid(token_valid), 
        .crc5_err(crc5_err), .rx_data_valid(rx_data_valid), .rx_data_done(
        rx_data_done), .crc16_err(crc16_err), .send_token(send_token), 
        .token_pid_sel(token_pid_sel), .data_pid_sel(data_pid_sel), 
        .send_zero_length(send_zero_length), .rx_dma_en(rx_dma_en), 
        .tx_dma_en(tx_dma_en), .abort(abort), .idma_done(idma_done), .adr(adr), 
        .size(size), .buf_size(buf_size), .sizu_c(sizu_c), .dma_en(dma_en), 
        .fsel(fsel), .idin(idin), .dma_in_buf_sz1(dma_in_buf_sz1), 
        .dma_out_buf_avail(dma_out_buf_avail), .ep_sel(ep_sel), .match(match_o), .nse_err(nse_err), .buf0_rl(buf0_rl), .buf0_set(buf0_set), .buf1_set(
        buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), 
        .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), 
        .int_upid_set(int_upid_set), .int_crc16_set(int_crc16_set), 
        .int_to_set(int_to_set), .int_seqerr_set(int_seqerr_set), 
        .out_to_small(out_to_small), .csr(csr), .buf0(buf0), .buf1(buf1) );
  usbf_pl_SSRAM_HADR14_DW01_inc_1 add_308_S2 ( .A(frm_nat[11:0]), .SUM({N57, 
        N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46}) );
  DFFX1_RVT clr_sof_time_reg ( .D(frame_no_we), .CLK(n18), .QN(n19) );
  DFFX1_RVT frame_no_we_r_reg ( .D(frame_no_we), .CLK(n13), .Q(frame_no_we_r), 
        .QN(n12) );
  DFFX1_RVT hms_clk_reg ( .D(n69), .CLK(n18), .Q(hms_clk), .QN(n20) );
  DFFX1_RVT \mfm_cnt_reg[3]  ( .D(n54), .CLK(n18), .Q(frm_nat_31), .QN(n14) );
  DFFX1_RVT \mfm_cnt_reg[2]  ( .D(n55), .CLK(n18), .Q(frm_nat_30), .QN(n15) );
  DFFX1_RVT \mfm_cnt_reg[0]  ( .D(n57), .CLK(n18), .Q(frm_nat_28), .QN(n17) );
  DFFX1_RVT \frame_no_r_reg[0]  ( .D(n58), .CLK(n18), .Q(frm_nat_16), .QN(n4)
         );
  DFFSSRX1_RVT frame_no_same_reg ( .D(N21), .SETB(1'b1), .RSTB(frame_no_we), 
        .CLK(n13), .Q(frame_no_same) );
  DFFX1_RVT \frame_no_r_reg[3]  ( .D(n61), .CLK(n13), .Q(frm_nat_19) );
  DFFX1_RVT \frame_no_r_reg[10]  ( .D(n68), .CLK(n13), .Q(frm_nat_26) );
  DFFX1_RVT \frame_no_r_reg[9]  ( .D(n67), .CLK(n13), .Q(frm_nat_25) );
  DFFX1_RVT \sof_time_reg[10]  ( .D(n43), .CLK(n18), .Q(frm_nat[10]) );
  DFFX1_RVT \sof_time_reg[7]  ( .D(n46), .CLK(n18), .Q(frm_nat[7]) );
  DFFX1_RVT \frame_no_r_reg[2]  ( .D(n60), .CLK(n13), .Q(frm_nat_18) );
  DFFX1_RVT \sof_time_reg[11]  ( .D(n42), .CLK(n13), .Q(frm_nat[11]) );
  DFFX1_RVT \sof_time_reg[1]  ( .D(n53), .CLK(n18), .Q(frm_nat[1]) );
  DFFX1_RVT \sof_time_reg[2]  ( .D(n51), .CLK(n18), .Q(frm_nat[2]) );
  DFFX1_RVT \sof_time_reg[3]  ( .D(n50), .CLK(n18), .Q(frm_nat[3]) );
  DFFX1_RVT \sof_time_reg[4]  ( .D(n49), .CLK(n18), .Q(frm_nat[4]) );
  DFFX1_RVT \mfm_cnt_reg[1]  ( .D(n56), .CLK(n18), .Q(frm_nat_29), .QN(n16) );
  DFFX1_RVT \frame_no_r_reg[4]  ( .D(n62), .CLK(n13), .Q(frm_nat_20) );
  DFFX1_RVT \frame_no_r_reg[8]  ( .D(n66), .CLK(n13), .Q(frm_nat_24) );
  DFFX1_RVT \frame_no_r_reg[7]  ( .D(n65), .CLK(n13), .Q(frm_nat_23) );
  DFFX1_RVT \frame_no_r_reg[6]  ( .D(n64), .CLK(n13), .Q(frm_nat_22) );
  DFFX1_RVT \frame_no_r_reg[5]  ( .D(n63), .CLK(n18), .Q(frm_nat_21) );
  DFFX1_RVT \sof_time_reg[8]  ( .D(n45), .CLK(n18), .Q(frm_nat[8]) );
  DFFX1_RVT \sof_time_reg[5]  ( .D(n48), .CLK(n18), .Q(frm_nat[5]) );
  DFFX1_RVT \sof_time_reg[6]  ( .D(n47), .CLK(n18), .Q(frm_nat[6]) );
  DFFX1_RVT \frame_no_r_reg[1]  ( .D(n59), .CLK(n13), .Q(frm_nat_17), .QN(n11)
         );
  DFFX1_RVT \sof_time_reg[0]  ( .D(n52), .CLK(n18), .Q(frm_nat[0]) );
  DFFSSRX1_RVT \hms_cnt_reg[3]  ( .D(N80), .SETB(1'b1), .RSTB(n41), .CLK(n13), 
        .Q(hms_cnt[3]) );
  DFFSSRX1_RVT \hms_cnt_reg[2]  ( .D(N79), .SETB(1'b1), .RSTB(n41), .CLK(n13), 
        .Q(hms_cnt[2]) );
  DFFSSRX1_RVT \hms_cnt_reg[4]  ( .D(N81), .SETB(1'b1), .RSTB(n41), .CLK(n13), 
        .Q(hms_cnt[4]) );
  DFFSSRX1_RVT \hms_cnt_reg[1]  ( .D(N78), .SETB(1'b1), .RSTB(n41), .CLK(n13), 
        .Q(hms_cnt[1]) );
  DFFSSRX1_RVT \hms_cnt_reg[0]  ( .D(n3), .SETB(1'b1), .RSTB(n41), .CLK(n13), 
        .Q(hms_cnt[0]), .QN(n3) );
  DFFX1_RVT \sof_time_reg[9]  ( .D(n44), .CLK(n18), .Q(frm_nat[9]) );
  AND2X1_RVT U7 ( .A1(rst), .A2(n34), .Y(n1) );
  AND2X1_RVT U8 ( .A1(n19), .A2(n24), .Y(n2) );
  INVX1_RVT U11 ( .A(n21), .Y(n18) );
  INVX1_RVT U12 ( .A(n21), .Y(n13) );
  INVX1_RVT U13 ( .A(clk), .Y(n21) );
  INVX1_RVT U14 ( .A(n34), .Y(n98) );
  INVX1_RVT U15 ( .A(n24), .Y(n100) );
  INVX1_RVT U16 ( .A(n32), .Y(n99) );
  INVX1_RVT U17 ( .A(token_fadr[0]), .Y(n95) );
  AND3X1_RVT U18 ( .A1(n12), .A2(n20), .A3(rst), .Y(n41) );
  AND3X1_RVT U19 ( .A1(token_valid), .A2(n96), .A3(pid_SOF), .Y(frame_no_we)
         );
  INVX1_RVT U20 ( .A(crc5_err), .Y(n96) );
  AND3X1_RVT U21 ( .A1(n32), .A2(n12), .A3(rst), .Y(n31) );
  AO21X1_RVT U22 ( .A1(n99), .A2(n17), .A3(n31), .Y(n30) );
  AO21X1_RVT U23 ( .A1(n99), .A2(n16), .A3(n30), .Y(n28) );
  AO22X1_RVT U24 ( .A1(frm_nat[9]), .A2(n2), .A3(N55), .A4(n100), .Y(n44) );
  AO21X1_RVT U25 ( .A1(pid_PING), .A2(n97), .A3(n40), .Y(n38) );
  OR2X1_RVT U26 ( .A1(pid_ACK), .A2(crc5_err), .Y(n40) );
  INVX1_RVT U27 ( .A(mode_hs), .Y(n97) );
  AO21X1_RVT U28 ( .A1(frm_nat_31), .A2(n25), .A3(n26), .Y(n54) );
  AND4X1_RVT U29 ( .A1(frm_nat_30), .A2(frm_nat_29), .A3(n27), .A4(n14), .Y(
        n26) );
  AO21X1_RVT U30 ( .A1(n99), .A2(n15), .A3(n28), .Y(n25) );
  AO22X1_RVT U31 ( .A1(n31), .A2(frm_nat_28), .A3(n99), .A4(n17), .Y(n57) );
  AO22X1_RVT U32 ( .A1(frm_nat[11]), .A2(n2), .A3(N57), .A4(n100), .Y(n42) );
  AO22X1_RVT U33 ( .A1(frm_nat[10]), .A2(n2), .A3(N56), .A4(n100), .Y(n43) );
  AO22X1_RVT U34 ( .A1(frm_nat[8]), .A2(n2), .A3(N54), .A4(n100), .Y(n45) );
  AO22X1_RVT U35 ( .A1(frm_nat[7]), .A2(n2), .A3(N53), .A4(n100), .Y(n46) );
  AO22X1_RVT U36 ( .A1(frm_nat[6]), .A2(n2), .A3(N52), .A4(n100), .Y(n47) );
  AO22X1_RVT U37 ( .A1(frm_nat[5]), .A2(n2), .A3(N51), .A4(n100), .Y(n48) );
  AO22X1_RVT U38 ( .A1(frm_nat[4]), .A2(n2), .A3(N50), .A4(n100), .Y(n49) );
  AO22X1_RVT U39 ( .A1(frm_nat[3]), .A2(n2), .A3(N49), .A4(n100), .Y(n50) );
  AO22X1_RVT U40 ( .A1(frm_nat[2]), .A2(n2), .A3(N48), .A4(n100), .Y(n51) );
  AO22X1_RVT U41 ( .A1(frm_nat[0]), .A2(n2), .A3(N46), .A4(n100), .Y(n52) );
  AO22X1_RVT U42 ( .A1(frm_nat[1]), .A2(n2), .A3(N47), .A4(n100), .Y(n53) );
  AO22X1_RVT U43 ( .A1(frm_nat_17), .A2(n1), .A3(frame_no[1]), .A4(n98), .Y(
        n59) );
  AO22X1_RVT U44 ( .A1(frm_nat_19), .A2(n1), .A3(frame_no[3]), .A4(n98), .Y(
        n61) );
  AO22X1_RVT U45 ( .A1(frm_nat_21), .A2(n1), .A3(frame_no[5]), .A4(n98), .Y(
        n63) );
  AO22X1_RVT U46 ( .A1(frm_nat_30), .A2(n28), .A3(n29), .A4(frm_nat_29), .Y(
        n55) );
  AND2X1_RVT U47 ( .A1(n27), .A2(n15), .Y(n29) );
  AO22X1_RVT U48 ( .A1(frm_nat_29), .A2(n30), .A3(n27), .A4(n16), .Y(n56) );
  AO22X1_RVT U49 ( .A1(frm_nat_16), .A2(n1), .A3(frame_no[0]), .A4(n98), .Y(
        n58) );
  AO22X1_RVT U50 ( .A1(frm_nat_18), .A2(n1), .A3(frame_no[2]), .A4(n98), .Y(
        n60) );
  AO22X1_RVT U51 ( .A1(frm_nat_20), .A2(n1), .A3(frame_no[4]), .A4(n98), .Y(
        n62) );
  AO22X1_RVT U53 ( .A1(frm_nat_22), .A2(n1), .A3(frame_no[6]), .A4(n98), .Y(
        n64) );
  AO22X1_RVT U54 ( .A1(frm_nat_23), .A2(n1), .A3(frame_no[7]), .A4(n98), .Y(
        n65) );
  AO22X1_RVT U55 ( .A1(frm_nat_24), .A2(n1), .A3(frame_no[8]), .A4(n98), .Y(
        n66) );
  AO22X1_RVT U56 ( .A1(frm_nat_25), .A2(n1), .A3(frame_no[9]), .A4(n98), .Y(
        n67) );
  AO22X1_RVT U57 ( .A1(frm_nat_26), .A2(n1), .A3(frame_no[10]), .A4(n98), .Y(
        n68) );
  AND2X1_RVT U58 ( .A1(frm_nat_28), .A2(n99), .Y(n27) );
  OR3X2_RVT U59 ( .A1(pid_STALL), .A2(pid_SPLIT), .A3(pid_PRE), .Y(n36) );
  OR3X2_RVT U60 ( .A1(pid_NYET), .A2(pid_NACK), .A3(pid_ERR), .Y(n37) );
  NAND3X0_RVT U61 ( .A1(match), .A2(fsel), .A3(token_valid), .Y(n39) );
  INVX1_RVT U62 ( .A(token_fadr[1]), .Y(n94) );
  INVX1_RVT U63 ( .A(fa[1]), .Y(n93) );
  HADDX1_RVT U64 ( .A0(hms_cnt[1]), .B0(hms_cnt[0]), .C1(\add_321/carry[2] ), 
        .SO(N78) );
  HADDX1_RVT U65 ( .A0(hms_cnt[2]), .B0(\add_321/carry[2] ), .C1(
        \add_321/carry[3] ), .SO(N79) );
  HADDX1_RVT U66 ( .A0(hms_cnt[3]), .B0(\add_321/carry[3] ), .C1(
        \add_321/carry[4] ), .SO(N80) );
  NAND2X0_RVT U67 ( .A1(rst), .A2(frame_no_same), .Y(n32) );
  NAND2X0_RVT U68 ( .A1(frame_no_we_r), .A2(rst), .Y(n34) );
  NAND2X0_RVT U69 ( .A1(hms_clk), .A2(n19), .Y(n24) );
  AND4X1_RVT U70 ( .A1(hms_cnt[4]), .A2(hms_cnt[3]), .A3(n35), .A4(hms_cnt[2]), 
        .Y(n69) );
  NOR2X0_RVT U71 ( .A1(hms_cnt[1]), .A2(hms_cnt[0]), .Y(n35) );
  XOR2X1_RVT U72 ( .A1(\add_321/carry[4] ), .A2(hms_cnt[4]), .Y(N81) );
  XNOR2X1_RVT U73 ( .A1(frame_no[10]), .A2(frm_nat_26), .Y(n82) );
  XNOR2X1_RVT U74 ( .A1(frame_no[9]), .A2(frm_nat_25), .Y(n81) );
  XNOR2X1_RVT U75 ( .A1(frame_no[7]), .A2(frm_nat_23), .Y(n33) );
  XNOR2X1_RVT U76 ( .A1(frame_no[6]), .A2(frm_nat_22), .Y(n23) );
  XNOR2X1_RVT U77 ( .A1(frame_no[8]), .A2(frm_nat_24), .Y(n22) );
  AND3X1_RVT U78 ( .A1(n33), .A2(n23), .A3(n22), .Y(n80) );
  XNOR2X1_RVT U79 ( .A1(frame_no[4]), .A2(frm_nat_20), .Y(n72) );
  XNOR2X1_RVT U80 ( .A1(frame_no[3]), .A2(frm_nat_19), .Y(n71) );
  XNOR2X1_RVT U81 ( .A1(frame_no[5]), .A2(frm_nat_21), .Y(n70) );
  NAND3X0_RVT U82 ( .A1(n72), .A2(n71), .A3(n70), .Y(n78) );
  XOR2X1_RVT U83 ( .A1(frame_no[2]), .A2(frm_nat_18), .Y(n77) );
  NOR2X0_RVT U84 ( .A1(n4), .A2(frame_no[0]), .Y(n73) );
  OA22X1_RVT U85 ( .A1(n73), .A2(n94), .A3(frm_nat_17), .A4(n73), .Y(n76) );
  AND2X1_RVT U86 ( .A1(frame_no[0]), .A2(n4), .Y(n74) );
  OA22X1_RVT U87 ( .A1(frame_no[1]), .A2(n74), .A3(n74), .A4(n11), .Y(n75) );
  NOR4X0_RVT U88 ( .A1(n78), .A2(n77), .A3(n76), .A4(n75), .Y(n79) );
  AND4X1_RVT U89 ( .A1(n82), .A2(n81), .A3(n80), .A4(n79), .Y(N21) );
  XNOR2X1_RVT U90 ( .A1(fa[5]), .A2(token_fadr[5]), .Y(n92) );
  XNOR2X1_RVT U91 ( .A1(fa[4]), .A2(token_fadr[4]), .Y(n91) );
  XNOR2X1_RVT U92 ( .A1(fa[6]), .A2(token_fadr[6]), .Y(n90) );
  NOR2X0_RVT U93 ( .A1(n95), .A2(fa[0]), .Y(n83) );
  OA22X1_RVT U94 ( .A1(n83), .A2(n93), .A3(token_fadr[1]), .A4(n83), .Y(n88)
         );
  AND2X1_RVT U95 ( .A1(fa[0]), .A2(n95), .Y(n84) );
  OA22X1_RVT U96 ( .A1(fa[1]), .A2(n84), .A3(n84), .A4(n94), .Y(n87) );
  XOR2X1_RVT U97 ( .A1(fa[2]), .A2(token_fadr[2]), .Y(n86) );
  XOR2X1_RVT U98 ( .A1(fa[3]), .A2(token_fadr[3]), .Y(n85) );
  NOR4X0_RVT U99 ( .A1(n88), .A2(n87), .A3(n86), .A4(n85), .Y(n89) );
  AND4X1_RVT U100 ( .A1(n92), .A2(n91), .A3(n90), .A4(n89), .Y(fsel) );
endmodule


module usbf_mem_arb_SSRAM_HADR14 ( phy_clk, wclk, rst, sram_adr, sram_din, 
        sram_dout, sram_re, sram_we, madr, mdout, mdin, mwe, mreq, mack, wadr, 
        wdout, wdin, wwe, wreq, wack );
  output [14:0] sram_adr;
  input [31:0] sram_din;
  output [31:0] sram_dout;
  input [14:0] madr;
  output [31:0] mdout;
  input [31:0] mdin;
  input [14:0] wadr;
  output [31:0] wdout;
  input [31:0] wdin;
  input phy_clk, wclk, rst, mwe, mreq, wwe, wreq;
  output sram_re, sram_we, mack, wack;
  wire   mreq, wack_r, N9, n2, n4, n5, n1, n3, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15;
  assign sram_re = 1'b1;
  assign wdout[31] = sram_din[31];
  assign mdout[31] = sram_din[31];
  assign wdout[30] = sram_din[30];
  assign mdout[30] = sram_din[30];
  assign wdout[29] = sram_din[29];
  assign mdout[29] = sram_din[29];
  assign wdout[28] = sram_din[28];
  assign mdout[28] = sram_din[28];
  assign wdout[27] = sram_din[27];
  assign mdout[27] = sram_din[27];
  assign wdout[26] = sram_din[26];
  assign mdout[26] = sram_din[26];
  assign wdout[25] = sram_din[25];
  assign mdout[25] = sram_din[25];
  assign wdout[24] = sram_din[24];
  assign mdout[24] = sram_din[24];
  assign wdout[23] = sram_din[23];
  assign mdout[23] = sram_din[23];
  assign wdout[22] = sram_din[22];
  assign mdout[22] = sram_din[22];
  assign wdout[21] = sram_din[21];
  assign mdout[21] = sram_din[21];
  assign wdout[20] = sram_din[20];
  assign mdout[20] = sram_din[20];
  assign wdout[19] = sram_din[19];
  assign mdout[19] = sram_din[19];
  assign wdout[18] = sram_din[18];
  assign mdout[18] = sram_din[18];
  assign wdout[17] = sram_din[17];
  assign mdout[17] = sram_din[17];
  assign wdout[16] = sram_din[16];
  assign mdout[16] = sram_din[16];
  assign wdout[15] = sram_din[15];
  assign mdout[15] = sram_din[15];
  assign wdout[14] = sram_din[14];
  assign mdout[14] = sram_din[14];
  assign wdout[13] = sram_din[13];
  assign mdout[13] = sram_din[13];
  assign wdout[12] = sram_din[12];
  assign mdout[12] = sram_din[12];
  assign wdout[11] = sram_din[11];
  assign mdout[11] = sram_din[11];
  assign wdout[10] = sram_din[10];
  assign mdout[10] = sram_din[10];
  assign wdout[9] = sram_din[9];
  assign mdout[9] = sram_din[9];
  assign wdout[8] = sram_din[8];
  assign mdout[8] = sram_din[8];
  assign wdout[7] = sram_din[7];
  assign mdout[7] = sram_din[7];
  assign wdout[6] = sram_din[6];
  assign mdout[6] = sram_din[6];
  assign wdout[5] = sram_din[5];
  assign mdout[5] = sram_din[5];
  assign wdout[4] = sram_din[4];
  assign mdout[4] = sram_din[4];
  assign wdout[3] = sram_din[3];
  assign mdout[3] = sram_din[3];
  assign wdout[2] = sram_din[2];
  assign mdout[2] = sram_din[2];
  assign wdout[1] = sram_din[1];
  assign mdout[1] = sram_din[1];
  assign wdout[0] = sram_din[0];
  assign mdout[0] = sram_din[0];
  assign mack = mreq;

  DFFX1_RVT wack_r_reg ( .D(N9), .CLK(phy_clk), .Q(wack_r), .QN(n2) );
  INVX1_RVT U3 ( .A(n1), .Y(n13) );
  INVX1_RVT U4 ( .A(n1), .Y(n14) );
  INVX1_RVT U5 ( .A(n1), .Y(n12) );
  INVX1_RVT U6 ( .A(n1), .Y(n11) );
  INVX1_RVT U7 ( .A(n10), .Y(n1) );
  INVX1_RVT U8 ( .A(n9), .Y(n7) );
  INVX1_RVT U9 ( .A(n9), .Y(n8) );
  INVX1_RVT U10 ( .A(n10), .Y(n6) );
  INVX1_RVT U11 ( .A(n10), .Y(n3) );
  INVX1_RVT U12 ( .A(n5), .Y(n10) );
  INVX1_RVT U13 ( .A(n5), .Y(n9) );
  AO21X1_RVT U14 ( .A1(wreq), .A2(n15), .A3(wack), .Y(n5) );
  INVX1_RVT U15 ( .A(mreq), .Y(n15) );
  AO22X1_RVT U16 ( .A1(wdin[20]), .A2(n7), .A3(mdin[20]), .A4(n13), .Y(
        sram_dout[20]) );
  AO22X1_RVT U17 ( .A1(wdin[16]), .A2(n7), .A3(mdin[16]), .A4(n13), .Y(
        sram_dout[16]) );
  AO22X1_RVT U18 ( .A1(wdin[17]), .A2(n7), .A3(mdin[17]), .A4(n13), .Y(
        sram_dout[17]) );
  AO22X1_RVT U19 ( .A1(wdin[18]), .A2(n7), .A3(mdin[18]), .A4(n13), .Y(
        sram_dout[18]) );
  AO22X1_RVT U20 ( .A1(wdin[19]), .A2(n7), .A3(mdin[19]), .A4(n13), .Y(
        sram_dout[19]) );
  AO22X1_RVT U21 ( .A1(wdin[21]), .A2(n7), .A3(mdin[21]), .A4(n13), .Y(
        sram_dout[21]) );
  AO22X1_RVT U22 ( .A1(wdin[24]), .A2(n8), .A3(mdin[24]), .A4(n14), .Y(
        sram_dout[24]) );
  AO22X1_RVT U23 ( .A1(wdin[25]), .A2(n8), .A3(mdin[25]), .A4(n14), .Y(
        sram_dout[25]) );
  AO22X1_RVT U24 ( .A1(wdin[26]), .A2(n8), .A3(mdin[26]), .A4(n14), .Y(
        sram_dout[26]) );
  AO22X1_RVT U25 ( .A1(wdin[27]), .A2(n8), .A3(mdin[27]), .A4(n14), .Y(
        sram_dout[27]) );
  AO22X1_RVT U26 ( .A1(wdin[0]), .A2(n6), .A3(mdin[0]), .A4(n12), .Y(
        sram_dout[0]) );
  AO22X1_RVT U27 ( .A1(wdin[1]), .A2(n7), .A3(mdin[1]), .A4(n13), .Y(
        sram_dout[1]) );
  AO22X1_RVT U28 ( .A1(wdin[2]), .A2(n3), .A3(mdin[2]), .A4(n14), .Y(
        sram_dout[2]) );
  AO22X1_RVT U29 ( .A1(wdin[10]), .A2(n6), .A3(mdin[10]), .A4(n12), .Y(
        sram_dout[10]) );
  AO22X1_RVT U30 ( .A1(wdin[11]), .A2(n6), .A3(mdin[11]), .A4(n12), .Y(
        sram_dout[11]) );
  AO22X1_RVT U31 ( .A1(wdin[12]), .A2(n8), .A3(mdin[12]), .A4(n12), .Y(
        sram_dout[12]) );
  AO22X1_RVT U32 ( .A1(wdin[13]), .A2(n6), .A3(mdin[13]), .A4(n12), .Y(
        sram_dout[13]) );
  AO22X1_RVT U33 ( .A1(wdin[14]), .A2(n6), .A3(mdin[14]), .A4(n13), .Y(
        sram_dout[14]) );
  AO22X1_RVT U34 ( .A1(wdin[15]), .A2(n3), .A3(mdin[15]), .A4(n13), .Y(
        sram_dout[15]) );
  AO22X1_RVT U35 ( .A1(wdin[22]), .A2(n8), .A3(mdin[22]), .A4(n13), .Y(
        sram_dout[22]) );
  AO22X1_RVT U36 ( .A1(wdin[23]), .A2(n8), .A3(mdin[23]), .A4(n14), .Y(
        sram_dout[23]) );
  AO22X1_RVT U37 ( .A1(wdin[28]), .A2(n7), .A3(mdin[28]), .A4(n14), .Y(
        sram_dout[28]) );
  AO22X1_RVT U38 ( .A1(wdin[29]), .A2(n8), .A3(mdin[29]), .A4(n14), .Y(
        sram_dout[29]) );
  AO22X1_RVT U39 ( .A1(wdin[30]), .A2(n6), .A3(mdin[30]), .A4(n14), .Y(
        sram_dout[30]) );
  AO22X1_RVT U40 ( .A1(wdin[31]), .A2(n3), .A3(mdin[31]), .A4(n14), .Y(
        sram_dout[31]) );
  AO22X1_RVT U41 ( .A1(wadr[5]), .A2(n3), .A3(madr[5]), .A4(n12), .Y(
        sram_adr[5]) );
  AO22X1_RVT U42 ( .A1(wadr[6]), .A2(n3), .A3(madr[6]), .A4(n12), .Y(
        sram_adr[6]) );
  AO22X1_RVT U43 ( .A1(wadr[7]), .A2(n6), .A3(madr[7]), .A4(n12), .Y(
        sram_adr[7]) );
  AO22X1_RVT U44 ( .A1(wadr[8]), .A2(n6), .A3(madr[8]), .A4(n12), .Y(
        sram_adr[8]) );
  AO22X1_RVT U45 ( .A1(wadr[9]), .A2(n6), .A3(madr[9]), .A4(n12), .Y(
        sram_adr[9]) );
  AO22X1_RVT U46 ( .A1(wadr[1]), .A2(n3), .A3(madr[1]), .A4(n11), .Y(
        sram_adr[1]) );
  AO22X1_RVT U47 ( .A1(wadr[2]), .A2(n7), .A3(madr[2]), .A4(n11), .Y(
        sram_adr[2]) );
  AO22X1_RVT U48 ( .A1(wadr[3]), .A2(n3), .A3(madr[3]), .A4(n11), .Y(
        sram_adr[3]) );
  AO22X1_RVT U49 ( .A1(wadr[4]), .A2(n3), .A3(madr[4]), .A4(n11), .Y(
        sram_adr[4]) );
  AO22X1_RVT U50 ( .A1(wadr[10]), .A2(n3), .A3(madr[10]), .A4(n11), .Y(
        sram_adr[10]) );
  AO22X1_RVT U51 ( .A1(wadr[11]), .A2(n6), .A3(madr[11]), .A4(n11), .Y(
        sram_adr[11]) );
  AO22X1_RVT U52 ( .A1(wadr[12]), .A2(n3), .A3(madr[12]), .A4(n11), .Y(
        sram_adr[12]) );
  AO22X1_RVT U53 ( .A1(wadr[13]), .A2(n7), .A3(madr[13]), .A4(n11), .Y(
        sram_adr[13]) );
  AO22X1_RVT U54 ( .A1(wadr[14]), .A2(n3), .A3(madr[14]), .A4(n11), .Y(
        sram_adr[14]) );
  AO22X1_RVT U55 ( .A1(wdin[3]), .A2(n5), .A3(mdin[3]), .A4(n10), .Y(
        sram_dout[3]) );
  AO22X1_RVT U56 ( .A1(wdin[5]), .A2(n6), .A3(mdin[5]), .A4(n10), .Y(
        sram_dout[5]) );
  AO22X1_RVT U57 ( .A1(wdin[4]), .A2(n7), .A3(mdin[4]), .A4(n9), .Y(
        sram_dout[4]) );
  AO22X1_RVT U58 ( .A1(wdin[6]), .A2(n8), .A3(mdin[6]), .A4(n9), .Y(
        sram_dout[6]) );
  AO22X1_RVT U59 ( .A1(wdin[7]), .A2(n5), .A3(mdin[7]), .A4(n10), .Y(
        sram_dout[7]) );
  AO22X1_RVT U60 ( .A1(wdin[8]), .A2(n8), .A3(mdin[8]), .A4(n9), .Y(
        sram_dout[8]) );
  AO22X1_RVT U61 ( .A1(wdin[9]), .A2(n5), .A3(mdin[9]), .A4(n9), .Y(
        sram_dout[9]) );
  AO22X1_RVT U62 ( .A1(n4), .A2(wwe), .A3(mwe), .A4(mreq), .Y(sram_we) );
  AND2X1_RVT U63 ( .A1(wreq), .A2(n1), .Y(n4) );
  AND2X1_RVT U64 ( .A1(wack_r), .A2(n15), .Y(wack) );
  AND4X1_RVT U65 ( .A1(rst), .A2(wreq), .A3(n15), .A4(n2), .Y(N9) );
  AO22X1_RVT U66 ( .A1(wadr[0]), .A2(n8), .A3(madr[0]), .A4(n11), .Y(
        sram_adr[0]) );
endmodule


module usbf_ep_rf_3_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  FADDX1_RVT U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .S(DIFF[11]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n1), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1_RVT U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(
        DIFF[9]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1_RVT U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1_RVT U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(
        DIFF[8]) );
  FADDX1_RVT U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  INVX1_RVT U1 ( .A(B[0]), .Y(n3) );
  INVX1_RVT U2 ( .A(B[10]), .Y(n12) );
  INVX1_RVT U3 ( .A(B[8]), .Y(n10) );
  INVX1_RVT U4 ( .A(B[7]), .Y(n9) );
  INVX1_RVT U5 ( .A(B[6]), .Y(n8) );
  INVX1_RVT U6 ( .A(B[5]), .Y(n7) );
  INVX1_RVT U7 ( .A(B[4]), .Y(n6) );
  INVX1_RVT U8 ( .A(B[3]), .Y(n5) );
  INVX1_RVT U9 ( .A(B[2]), .Y(n4) );
  INVX1_RVT U10 ( .A(B[9]), .Y(n11) );
  OR2X1_RVT U11 ( .A1(n3), .A2(A[0]), .Y(carry[1]) );
  INVX1_RVT U12 ( .A(B[1]), .Y(n1) );
  XNOR2X1_RVT U13 ( .A1(A[0]), .A2(n3), .Y(DIFF[0]) );
  INVX1_RVT U14 ( .A(B[11]), .Y(n2) );
endmodule


module usbf_ep_rf_3_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [12:0] carry;

  FADDX1_RVT U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1_RVT U2_8 ( .A(A[8]), .B(n1), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  INVX1_RVT U1 ( .A(B[0]), .Y(n9) );
  INVX1_RVT U2 ( .A(B[8]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(n9), .A2(A[0]), .Y(carry[1]) );
  INVX1_RVT U4 ( .A(B[1]), .Y(n8) );
  INVX1_RVT U5 ( .A(B[2]), .Y(n7) );
  INVX1_RVT U6 ( .A(B[4]), .Y(n5) );
  INVX1_RVT U7 ( .A(B[6]), .Y(n3) );
  INVX1_RVT U8 ( .A(B[3]), .Y(n6) );
  INVX1_RVT U9 ( .A(B[5]), .Y(n4) );
  INVX1_RVT U10 ( .A(B[7]), .Y(n2) );
  XNOR2X1_RVT U11 ( .A1(A[10]), .A2(carry[10]), .Y(DIFF[10]) );
  XNOR2X1_RVT U12 ( .A1(A[9]), .A2(carry[9]), .Y(DIFF[9]) );
  XNOR2X1_RVT U13 ( .A1(A[0]), .A2(n9), .Y(DIFF[0]) );
  XNOR2X1_RVT U14 ( .A1(A[11]), .A2(carry[11]), .Y(DIFF[11]) );
  OR2X1_RVT U15 ( .A1(carry[10]), .A2(A[10]), .Y(carry[11]) );
  OR2X1_RVT U16 ( .A1(carry[9]), .A2(A[9]), .Y(carry[10]) );
endmodule


module usbf_ep_rf_3_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HADDX1_RVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[11]), .A2(A[11]), .Y(SUM[11]) );
endmodule


module usbf_ep_rf_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;

  wire   [11:1] carry;

  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
  XOR2X1_RVT U2 ( .A1(A[10]), .A2(carry[10]), .Y(SUM[10]) );
  XOR2X1_RVT U3 ( .A1(A[9]), .A2(carry[9]), .Y(SUM[9]) );
  XOR2X1_RVT U4 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  XOR2X1_RVT U5 ( .A1(A[11]), .A2(carry[11]), .Y(SUM[11]) );
  AND2X1_RVT U6 ( .A1(A[9]), .A2(carry[9]), .Y(carry[10]) );
  AND2X1_RVT U7 ( .A1(A[10]), .A2(carry[10]), .Y(carry[11]) );
endmodule


module usbf_ep_rf_3_DW01_dec_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20;

  INVX1_RVT U1 ( .A(n20), .Y(n1) );
  INVX1_RVT U2 ( .A(n11), .Y(n2) );
  INVX1_RVT U3 ( .A(n12), .Y(n3) );
  INVX1_RVT U4 ( .A(n13), .Y(n4) );
  INVX1_RVT U5 ( .A(n14), .Y(n5) );
  INVX1_RVT U6 ( .A(n15), .Y(n6) );
  INVX1_RVT U7 ( .A(n16), .Y(n7) );
  INVX1_RVT U8 ( .A(n17), .Y(n8) );
  INVX1_RVT U9 ( .A(A[0]), .Y(SUM[0]) );
  INVX1_RVT U10 ( .A(n18), .Y(n9) );
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


module usbf_ep_rf_3 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;
  wire   csr_13, csr_12, csr_11, csr_10, csr_9, csr_8, csr_7, csr_6, csr_5,
         csr_4, csr_3, csr_2, csr_1, csr_0, N221, N222, N229, N230, N231, N232,
         N233, N234, N235, N236, N237, N238, N239, N240, N242, N243, N244,
         N245, N246, N247, N248, N249, N250, N251, N252, N253,
         dma_req_out_hold, N278, N279, N280, N281, N282, N283, N284, N285,
         N286, N287, N288, N289, N291, N292, N293, N294, N295, N296, N297,
         N298, N299, N300, N301, N302, N319, N321, N322, N323, N324, N325,
         N326, N327, N328, N329, N330, N331, N332, N333, N336, N337, N338,
         N339, N340, N341, N342, N343, N344, N345, N346, \buf0_orig_m3[0] ,
         N347, dma_req_in_hold2, N348, dma_req_in_hold, r1, r2, r4, r5, N361,
         dma_ack_wr1, n32, n35, n37, n38, n52, n53, n55, n71, n77, n234, n239,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, \sub_449/carry[2] ,
         \sub_449/carry[3] , \sub_449/carry[4] , \sub_449/carry[5] ,
         \sub_449/carry[6] , \sub_449/carry[7] , \sub_449/carry[8] ,
         \sub_449/carry[9] , \sub_449/carry[10] , \sub_449/carry[11] , n1, n2,
         n3, n4, n5, n7, n8, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n27, n30, n31, n33, n34, n36, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n54, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n72, n73, n74,
         n75, n76, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n235,
         n236, n237, n238, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626;
  wire   [31:0] buf0_orig;
  wire   [11:0] dma_out_cnt;
  wire   [11:0] dma_in_cnt;
  wire   [11:0] dma_out_left;
  assign csr[14] = 1'b0;
  assign csr[13] = csr_13;
  assign csr[12] = csr_12;
  assign csr[11] = csr_11;
  assign csr[10] = csr_10;
  assign csr[9] = csr_9;
  assign csr[8] = csr_8;
  assign csr[7] = csr_7;
  assign csr[6] = csr_6;
  assign csr[5] = csr_5;
  assign csr[4] = csr_4;
  assign csr[3] = csr_3;
  assign csr[2] = csr_2;
  assign csr[1] = csr_1;
  assign csr[0] = csr_0;

  usbf_ep_rf_3_DW01_sub_1 sub_433 ( .A(buf0_orig[30:19]), .B(dma_out_cnt), 
        .CI(1'b0), .DIFF({N332, N331, N330, N329, N328, N327, N326, N325, N324, 
        N323, N322, N321}) );
  usbf_ep_rf_3_DW01_sub_2 sub_422 ( .A(dma_in_cnt), .B({1'b0, 1'b0, 1'b0, 
        csr_10, csr_9, csr_8, csr_7, csr_6, csr_5, csr_4, csr_3, csr_2}), .CI(
        1'b0), .DIFF({N302, N301, N300, N299, N298, N297, N296, N295, N294, 
        N293, N292, N291}) );
  usbf_ep_rf_3_DW01_inc_0 add_419_S2 ( .A(dma_in_cnt), .SUM({N289, N288, N287, 
        N286, N285, N284, N283, N282, N281, N280, N279, N278}) );
  usbf_ep_rf_3_DW01_add_0 add_397 ( .A(dma_out_cnt), .B({1'b0, 1'b0, 1'b0, 
        csr_10, csr_9, csr_8, csr_7, csr_6, csr_5, csr_4, csr_3, csr_2}), .CI(
        1'b0), .SUM({N253, N252, N251, N250, N249, N248, N247, N246, N245, 
        N244, N243, N242}) );
  usbf_ep_rf_3_DW01_dec_0 sub_394_S2 ( .A(dma_out_cnt), .SUM({N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229}) );
  SDFFSSRX1_RVT int_re_reg ( .RSTB(n625), .SETB(1'b1), .D(adr[0]), .SI(1'b0), 
        .SE(n624), .CLK(n161), .QN(n76) );
  DFFX1_RVT \ienb_reg[5]  ( .D(n394), .CLK(n148), .Q(n48), .QN(n577) );
  DFFX1_RVT \ienb_reg[4]  ( .D(n393), .CLK(n148), .Q(n20), .QN(n575) );
  DFFX1_RVT \ienb_reg[3]  ( .D(n392), .CLK(n149), .Q(n49), .QN(n573) );
  DFFX1_RVT \ienb_reg[2]  ( .D(n391), .CLK(n148), .Q(n21), .QN(n576) );
  DFFX1_RVT \ienb_reg[1]  ( .D(n390), .CLK(n148), .Q(n19), .QN(n574) );
  DFFX1_RVT \ienb_reg[0]  ( .D(n389), .CLK(n148), .Q(n22), .QN(n572) );
  DFFX1_RVT \iena_reg[5]  ( .D(n388), .CLK(n148), .Q(n5), .QN(n589) );
  DFFX1_RVT \iena_reg[4]  ( .D(n387), .CLK(n148), .Q(n7), .QN(n585) );
  DFFX1_RVT \iena_reg[3]  ( .D(n386), .CLK(n149), .Q(n50), .QN(n580) );
  DFFX1_RVT \iena_reg[2]  ( .D(n385), .CLK(n149), .Q(n23), .QN(n587) );
  DFFX1_RVT \iena_reg[1]  ( .D(n384), .CLK(n149), .Q(n4), .QN(n581) );
  DFFX1_RVT \iena_reg[0]  ( .D(n383), .CLK(n149), .Q(n8), .QN(n578) );
  DFFX1_RVT \buf0_orig_reg[31]  ( .D(n382), .CLK(n149), .Q(n74) );
  DFFX1_RVT \buf0_orig_reg[18]  ( .D(n369), .CLK(n150), .Q(n73) );
  DFFX1_RVT \buf0_orig_reg[17]  ( .D(n368), .CLK(n150), .Q(n72) );
  DFFX1_RVT \buf0_orig_reg[16]  ( .D(n367), .CLK(n150), .Q(n70) );
  DFFX1_RVT \buf0_orig_reg[15]  ( .D(n366), .CLK(n150), .Q(n69) );
  DFFX1_RVT \buf0_orig_reg[14]  ( .D(n365), .CLK(n150), .Q(n68) );
  DFFX1_RVT \buf0_orig_reg[13]  ( .D(n364), .CLK(n150), .Q(n67) );
  DFFX1_RVT \buf0_orig_reg[12]  ( .D(n363), .CLK(n151), .Q(n66) );
  DFFX1_RVT \buf0_orig_reg[11]  ( .D(n362), .CLK(n151), .Q(n65) );
  DFFX1_RVT \buf0_orig_reg[10]  ( .D(n361), .CLK(n151), .Q(n64) );
  DFFX1_RVT \buf0_orig_reg[9]  ( .D(n360), .CLK(n151), .Q(n63) );
  DFFX1_RVT \buf0_orig_reg[8]  ( .D(n359), .CLK(n151), .Q(n62) );
  DFFX1_RVT \buf0_orig_reg[7]  ( .D(n358), .CLK(n151), .Q(n61) );
  DFFX1_RVT \buf0_orig_reg[6]  ( .D(n357), .CLK(n151), .Q(n60) );
  DFFX1_RVT \buf0_orig_reg[5]  ( .D(n356), .CLK(n151), .Q(n59) );
  DFFX1_RVT \buf0_orig_reg[4]  ( .D(n355), .CLK(n151), .Q(n58) );
  DFFX1_RVT \buf0_orig_reg[3]  ( .D(n354), .CLK(n151), .Q(n57) );
  DFFX1_RVT \buf0_orig_reg[2]  ( .D(n353), .CLK(n151), .Q(n56) );
  DFFX1_RVT \buf0_orig_reg[1]  ( .D(n352), .CLK(n151), .Q(n54) );
  DFFX1_RVT \buf0_orig_reg[0]  ( .D(n351), .CLK(n152), .Q(n51) );
  DFFX1_RVT ep_match_r_reg ( .D(ep_match), .CLK(n152), .Q(n3) );
  DFFX1_RVT \int_stat_reg[6]  ( .D(n286), .CLK(n157), .Q(n16), .QN(n590) );
  DFFX1_RVT \int_stat_reg[5]  ( .D(n285), .CLK(n157), .Q(n44), .QN(n586) );
  DFFX1_RVT \int_stat_reg[4]  ( .D(n284), .CLK(n157), .Q(n47), .QN(n584) );
  DFFX1_RVT \int_stat_reg[3]  ( .D(n283), .CLK(n157), .Q(n46), .QN(n583) );
  DFFX1_RVT \int_stat_reg[2]  ( .D(n282), .CLK(n157), .Q(n45), .QN(n588) );
  DFFX1_RVT \int_stat_reg[1]  ( .D(n281), .CLK(n158), .Q(n17), .QN(n582) );
  DFFX1_RVT \int_stat_reg[0]  ( .D(n280), .CLK(n158), .Q(n18), .QN(n579) );
  DFFSSRX1_RVT set_r_reg ( .D(buf0_set), .SETB(n623), .RSTB(r5), .CLK(n146), 
        .QN(n557) );
  DFFX1_RVT \dma_out_left_reg[10]  ( .D(N331), .CLK(n160), .Q(dma_out_left[10]) );
  DFFX1_RVT \csr1_reg[12]  ( .D(n420), .CLK(n153), .Q(csr[27]), .QN(n32) );
  DFFX1_RVT \csr1_reg[11]  ( .D(n419), .CLK(n146), .Q(csr[26]), .QN(n174) );
  DFFX1_RVT \csr1_reg[10]  ( .D(n418), .CLK(n146), .Q(csr[25]) );
  DFFX1_RVT \csr1_reg[9]  ( .D(n417), .CLK(n146), .Q(csr[24]) );
  DFFX1_RVT \csr1_reg[6]  ( .D(n416), .CLK(n146), .Q(csr[21]), .QN(n558) );
  DFFX1_RVT \csr1_reg[5]  ( .D(n415), .CLK(n147), .Q(csr[20]), .QN(n559) );
  DFFX1_RVT \csr1_reg[4]  ( .D(n414), .CLK(n146), .Q(csr[19]), .QN(n560) );
  DFFX1_RVT \csr1_reg[3]  ( .D(n413), .CLK(n146), .Q(csr[18]), .QN(n561) );
  DFFX1_RVT \csr1_reg[2]  ( .D(n412), .CLK(n146), .Q(csr[17]) );
  DFFX1_RVT \csr1_reg[1]  ( .D(n411), .CLK(n146), .Q(csr[16]) );
  DFFX1_RVT \csr1_reg[0]  ( .D(n410), .CLK(n146), .Q(csr[15]), .QN(n35) );
  DFFX1_RVT ots_stop_reg ( .D(n421), .CLK(n147), .Q(csr_13) );
  DFFX1_RVT \csr1_reg[8]  ( .D(n408), .CLK(n147), .Q(csr[23]) );
  DFFX1_RVT \csr1_reg[7]  ( .D(n409), .CLK(n147), .Q(csr[22]) );
  DFFX1_RVT \csr0_reg[12]  ( .D(n407), .CLK(n147), .Q(csr_12) );
  DFFX1_RVT \csr0_reg[11]  ( .D(n406), .CLK(n147), .Q(csr_11) );
  DFFX1_RVT \csr0_reg[1]  ( .D(n396), .CLK(n148), .Q(csr_1), .QN(n562) );
  DFFX1_RVT \csr0_reg[0]  ( .D(n395), .CLK(n148), .Q(csr_0), .QN(n563) );
  DFFX1_RVT \buf1_reg[1]  ( .D(n287), .CLK(n152), .Q(buf1[1]) );
  DFFX1_RVT \buf1_reg[2]  ( .D(n288), .CLK(n152), .Q(buf1[2]) );
  DFFX1_RVT \buf1_reg[3]  ( .D(n289), .CLK(n152), .Q(buf1[3]) );
  DFFX1_RVT \buf1_reg[4]  ( .D(n290), .CLK(n152), .Q(buf1[4]) );
  DFFX1_RVT \buf1_reg[5]  ( .D(n291), .CLK(n152), .Q(buf1[5]) );
  DFFX1_RVT \buf1_reg[6]  ( .D(n292), .CLK(n152), .Q(buf1[6]) );
  DFFX1_RVT \buf1_reg[7]  ( .D(n293), .CLK(n152), .Q(buf1[7]) );
  DFFX1_RVT \buf1_reg[8]  ( .D(n294), .CLK(n152), .Q(buf1[8]) );
  DFFX1_RVT \buf1_reg[9]  ( .D(n295), .CLK(n152), .Q(buf1[9]) );
  DFFX1_RVT \buf1_reg[10]  ( .D(n296), .CLK(n152), .Q(buf1[10]) );
  DFFX1_RVT \buf1_reg[11]  ( .D(n297), .CLK(n153), .Q(buf1[11]) );
  DFFX1_RVT \buf1_reg[12]  ( .D(n298), .CLK(n153), .Q(buf1[12]) );
  DFFX1_RVT \buf1_reg[13]  ( .D(n299), .CLK(n153), .Q(buf1[13]) );
  DFFX1_RVT \buf1_reg[14]  ( .D(n300), .CLK(n153), .Q(buf1[14]) );
  DFFX1_RVT \buf1_reg[15]  ( .D(n301), .CLK(n153), .Q(buf1[15]) );
  DFFX1_RVT \buf1_reg[16]  ( .D(n302), .CLK(n153), .Q(buf1[16]) );
  DFFX1_RVT \buf1_reg[17]  ( .D(n303), .CLK(n153), .Q(buf1[17]) );
  DFFX1_RVT \buf1_reg[18]  ( .D(n304), .CLK(n153), .Q(buf1[18]) );
  DFFX1_RVT \buf1_reg[19]  ( .D(n305), .CLK(n153), .Q(buf1[19]) );
  DFFX1_RVT \buf1_reg[20]  ( .D(n306), .CLK(n153), .Q(buf1[20]) );
  DFFX1_RVT \buf1_reg[21]  ( .D(n307), .CLK(n153), .Q(buf1[21]) );
  DFFX1_RVT \buf1_reg[22]  ( .D(n308), .CLK(n154), .Q(buf1[22]) );
  DFFX1_RVT \buf1_reg[23]  ( .D(n309), .CLK(n154), .Q(buf1[23]) );
  DFFX1_RVT \buf1_reg[24]  ( .D(n310), .CLK(n154), .Q(buf1[24]) );
  DFFX1_RVT \buf1_reg[25]  ( .D(n311), .CLK(n154), .Q(buf1[25]) );
  DFFX1_RVT \buf1_reg[26]  ( .D(n312), .CLK(n154), .Q(buf1[26]) );
  DFFX1_RVT \buf1_reg[27]  ( .D(n313), .CLK(n154), .Q(buf1[27]) );
  DFFX1_RVT \buf1_reg[28]  ( .D(n314), .CLK(n154), .Q(buf1[28]) );
  DFFX1_RVT \buf1_reg[29]  ( .D(n315), .CLK(n154), .Q(buf1[29]) );
  DFFX1_RVT \buf1_reg[30]  ( .D(n316), .CLK(n154), .Q(buf1[30]) );
  DFFX1_RVT \buf1_reg[31]  ( .D(n317), .CLK(n154), .Q(buf1[31]) );
  DFFX1_RVT \buf1_reg[0]  ( .D(n318), .CLK(n154), .Q(buf1[0]) );
  DFFX1_RVT \buf0_reg[31]  ( .D(n319), .CLK(n154), .Q(buf0[31]) );
  DFFX1_RVT \buf0_reg[30]  ( .D(n320), .CLK(n155), .Q(buf0[30]) );
  DFFX1_RVT \buf0_reg[29]  ( .D(n321), .CLK(n155), .Q(buf0[29]) );
  DFFX1_RVT \buf0_reg[28]  ( .D(n322), .CLK(n155), .Q(buf0[28]) );
  DFFX1_RVT \buf0_reg[27]  ( .D(n323), .CLK(n155), .Q(buf0[27]) );
  DFFX1_RVT \buf0_reg[26]  ( .D(n324), .CLK(n155), .Q(buf0[26]) );
  DFFX1_RVT \buf0_reg[25]  ( .D(n325), .CLK(n155), .Q(buf0[25]) );
  DFFX1_RVT \buf0_reg[24]  ( .D(n326), .CLK(n155), .Q(buf0[24]) );
  DFFX1_RVT \buf0_reg[23]  ( .D(n327), .CLK(n155), .Q(buf0[23]) );
  DFFX1_RVT \buf0_reg[22]  ( .D(n328), .CLK(n155), .Q(buf0[22]) );
  DFFX1_RVT \buf0_reg[21]  ( .D(n329), .CLK(n155), .Q(buf0[21]) );
  DFFX1_RVT \buf0_reg[20]  ( .D(n330), .CLK(n155), .Q(buf0[20]) );
  DFFX1_RVT \buf0_reg[19]  ( .D(n331), .CLK(n155), .Q(buf0[19]) );
  DFFX1_RVT \buf0_reg[18]  ( .D(n332), .CLK(n156), .Q(buf0[18]) );
  DFFX1_RVT \buf0_reg[17]  ( .D(n333), .CLK(n156), .Q(buf0[17]) );
  DFFX1_RVT \buf0_reg[16]  ( .D(n334), .CLK(n156), .Q(buf0[16]) );
  DFFX1_RVT \buf0_reg[15]  ( .D(n335), .CLK(n156), .Q(buf0[15]) );
  DFFX1_RVT \buf0_reg[14]  ( .D(n336), .CLK(n156), .Q(buf0[14]) );
  DFFX1_RVT \buf0_reg[13]  ( .D(n337), .CLK(n156), .Q(buf0[13]) );
  DFFX1_RVT \buf0_reg[12]  ( .D(n338), .CLK(n156), .Q(buf0[12]) );
  DFFX1_RVT \buf0_reg[11]  ( .D(n339), .CLK(n156), .Q(buf0[11]) );
  DFFX1_RVT \buf0_reg[10]  ( .D(n340), .CLK(n156), .Q(buf0[10]) );
  DFFX1_RVT \buf0_reg[9]  ( .D(n341), .CLK(n156), .Q(buf0[9]) );
  DFFX1_RVT \buf0_reg[8]  ( .D(n342), .CLK(n156), .Q(buf0[8]) );
  DFFX1_RVT \buf0_reg[7]  ( .D(n343), .CLK(n156), .Q(buf0[7]) );
  DFFX1_RVT \buf0_reg[6]  ( .D(n344), .CLK(n157), .Q(buf0[6]) );
  DFFX1_RVT \buf0_reg[5]  ( .D(n345), .CLK(n157), .Q(buf0[5]) );
  DFFX1_RVT \buf0_reg[4]  ( .D(n346), .CLK(n157), .Q(buf0[4]) );
  DFFX1_RVT \buf0_reg[3]  ( .D(n347), .CLK(n157), .Q(buf0[3]) );
  DFFX1_RVT \buf0_reg[2]  ( .D(n348), .CLK(n157), .Q(buf0[2]) );
  DFFX1_RVT \buf0_reg[1]  ( .D(n349), .CLK(n157), .Q(buf0[1]) );
  DFFX1_RVT \buf0_reg[0]  ( .D(n350), .CLK(n157), .Q(buf0[0]) );
  DFFX1_RVT \uc_dpd_reg[1]  ( .D(n279), .CLK(n158), .Q(csr[29]) );
  DFFX1_RVT \uc_dpd_reg[0]  ( .D(n278), .CLK(n158), .Q(csr[28]) );
  DFFX1_RVT \uc_bsel_reg[1]  ( .D(n277), .CLK(n158), .Q(csr[31]) );
  DFFX1_RVT \uc_bsel_reg[0]  ( .D(n276), .CLK(n158), .Q(csr[30]) );
  DFFX1_RVT \dma_out_left_reg[9]  ( .D(N330), .CLK(n160), .Q(dma_out_left[9])
         );
  DFFX1_RVT dma_out_buf_avail_reg ( .D(N333), .CLK(n160), .Q(dma_out_buf_avail) );
  DFFX1_RVT \dma_out_left_reg[0]  ( .D(N321), .CLK(n159), .QN(n81) );
  DFFX1_RVT \dma_out_left_reg[1]  ( .D(N322), .CLK(n159), .QN(n30) );
  DFFX1_RVT \dma_out_left_reg[2]  ( .D(N323), .CLK(n159), .QN(n11) );
  DFFX1_RVT \dma_out_left_reg[3]  ( .D(N324), .CLK(n159), .QN(n78) );
  DFFX1_RVT \dma_out_left_reg[4]  ( .D(N325), .CLK(n160), .QN(n31) );
  DFFX1_RVT \dma_out_left_reg[5]  ( .D(N326), .CLK(n160), .QN(n79) );
  DFFX1_RVT \dma_out_left_reg[6]  ( .D(N327), .CLK(n160), .QN(n33) );
  DFFX1_RVT \dma_out_left_reg[7]  ( .D(N328), .CLK(n160), .QN(n80) );
  DFFX1_RVT \dma_out_left_reg[8]  ( .D(N329), .CLK(n160), .QN(n27) );
  DFFX1_RVT \dma_out_left_reg[11]  ( .D(N332), .CLK(n160), .Q(dma_out_left[11]) );
  DFFX1_RVT r4_reg ( .D(dma_ack_wr1), .CLK(n158), .Q(r4), .QN(n75) );
  DFFX1_RVT r5_reg ( .D(r4), .CLK(n158), .Q(r5), .QN(n24) );
  DFFSSRX1_RVT dma_in_buf_sz1_reg ( .D(n239), .SETB(n622), .RSTB(N319), .CLK(
        n146), .Q(dma_in_buf_sz1) );
  DFFX1_RVT \dma_in_cnt_reg[11]  ( .D(n264), .CLK(n160), .Q(dma_in_cnt[11]), 
        .QN(n610) );
  DFFX1_RVT \dma_out_cnt_reg[11]  ( .D(n252), .CLK(n158), .Q(dma_out_cnt[11]), 
        .QN(n52) );
  DFFX1_RVT \dma_in_cnt_reg[1]  ( .D(n275), .CLK(n160), .Q(dma_in_cnt[1]), 
        .QN(n609) );
  DFFX1_RVT \dma_in_cnt_reg[2]  ( .D(n273), .CLK(n161), .Q(dma_in_cnt[2]), 
        .QN(n612) );
  DFFX1_RVT \dma_in_cnt_reg[3]  ( .D(n272), .CLK(n161), .Q(dma_in_cnt[3]), 
        .QN(n613) );
  DFFX1_RVT \dma_in_cnt_reg[4]  ( .D(n271), .CLK(n161), .Q(dma_in_cnt[4]), 
        .QN(n614) );
  DFFX1_RVT \dma_in_cnt_reg[5]  ( .D(n270), .CLK(n161), .Q(dma_in_cnt[5]), 
        .QN(n615) );
  DFFX1_RVT \dma_in_cnt_reg[6]  ( .D(n269), .CLK(n161), .Q(dma_in_cnt[6]), 
        .QN(n616) );
  DFFX1_RVT \dma_in_cnt_reg[7]  ( .D(n268), .CLK(n161), .Q(dma_in_cnt[7]), 
        .QN(n617) );
  DFFX1_RVT \dma_in_cnt_reg[8]  ( .D(n267), .CLK(n161), .Q(dma_in_cnt[8]), 
        .QN(n618) );
  DFFX1_RVT \buf0_orig_reg[30]  ( .D(n381), .CLK(n149), .Q(buf0_orig[30]), 
        .QN(n600) );
  DFFX1_RVT \dma_in_cnt_reg[9]  ( .D(n266), .CLK(n161), .Q(dma_in_cnt[9]), 
        .QN(n619) );
  DFFX1_RVT \dma_in_cnt_reg[10]  ( .D(n265), .CLK(n146), .Q(dma_in_cnt[10]), 
        .QN(n620) );
  DFFX1_RVT \buf0_orig_reg[20]  ( .D(n371), .CLK(n150), .Q(buf0_orig[20]) );
  DFFX1_RVT \dma_out_cnt_reg[9]  ( .D(n254), .CLK(n159), .Q(dma_out_cnt[9]), 
        .QN(n567) );
  DFFX1_RVT \buf0_orig_reg[29]  ( .D(n380), .CLK(n149), .Q(buf0_orig[29]), 
        .QN(n601) );
  DFFX1_RVT \buf0_orig_reg[28]  ( .D(n379), .CLK(n149), .Q(buf0_orig[28]), 
        .QN(n602) );
  DFFX1_RVT \buf0_orig_reg[27]  ( .D(n378), .CLK(n149), .Q(buf0_orig[27]), 
        .QN(n603) );
  DFFX1_RVT \buf0_orig_reg[26]  ( .D(n377), .CLK(n149), .Q(buf0_orig[26]), 
        .QN(n604) );
  DFFX1_RVT \buf0_orig_reg[25]  ( .D(n376), .CLK(n149), .Q(buf0_orig[25]), 
        .QN(n605) );
  DFFX1_RVT \buf0_orig_reg[24]  ( .D(n375), .CLK(n150), .Q(buf0_orig[24]), 
        .QN(n606) );
  DFFX1_RVT \buf0_orig_reg[23]  ( .D(n374), .CLK(n150), .Q(buf0_orig[23]), 
        .QN(n607) );
  DFFX1_RVT \buf0_orig_reg[22]  ( .D(n373), .CLK(n150), .Q(buf0_orig[22]), 
        .QN(n37) );
  DFFX1_RVT \buf0_orig_reg[21]  ( .D(n372), .CLK(n150), .Q(buf0_orig[21]), 
        .QN(n38) );
  DFFX1_RVT \csr0_reg[2]  ( .D(n397), .CLK(n148), .Q(csr_2), .QN(n597) );
  DFFX1_RVT \dma_out_cnt_reg[1]  ( .D(n263), .CLK(n158), .Q(dma_out_cnt[1]) );
  DFFX1_RVT \dma_out_cnt_reg[2]  ( .D(n261), .CLK(n158), .Q(dma_out_cnt[2]), 
        .QN(n569) );
  DFFX1_RVT \dma_out_cnt_reg[3]  ( .D(n260), .CLK(n159), .Q(dma_out_cnt[3]), 
        .QN(n571) );
  DFFX1_RVT \dma_out_cnt_reg[4]  ( .D(n259), .CLK(n159), .Q(dma_out_cnt[4]), 
        .QN(n570) );
  DFFX1_RVT \dma_out_cnt_reg[5]  ( .D(n258), .CLK(n159), .Q(dma_out_cnt[5]), 
        .QN(n565) );
  DFFX1_RVT \dma_out_cnt_reg[6]  ( .D(n257), .CLK(n159), .Q(dma_out_cnt[6]), 
        .QN(n564) );
  DFFX1_RVT \dma_out_cnt_reg[7]  ( .D(n256), .CLK(n159), .Q(dma_out_cnt[7]), 
        .QN(n566) );
  DFFX1_RVT \dma_out_cnt_reg[8]  ( .D(n255), .CLK(n159), .Q(dma_out_cnt[8]), 
        .QN(n568) );
  DFFX1_RVT \dma_in_cnt_reg[0]  ( .D(n274), .CLK(n160), .Q(dma_in_cnt[0]), 
        .QN(n611) );
  DFFX1_RVT \csr0_reg[9]  ( .D(n404), .CLK(n147), .Q(csr_9), .QN(n591) );
  DFFX1_RVT \csr0_reg[7]  ( .D(n402), .CLK(n147), .Q(csr_7), .QN(n593) );
  DFFX1_RVT \csr0_reg[5]  ( .D(n400), .CLK(n148), .Q(csr_5), .QN(n595) );
  DFFX1_RVT \dma_out_cnt_reg[10]  ( .D(n253), .CLK(n159), .Q(dma_out_cnt[10]), 
        .QN(n53) );
  DFFX1_RVT \csr0_reg[8]  ( .D(n403), .CLK(n147), .Q(csr_8), .QN(n592) );
  DFFX1_RVT \csr0_reg[6]  ( .D(n401), .CLK(n147), .Q(csr_6), .QN(n594) );
  DFFX1_RVT \csr0_reg[4]  ( .D(n399), .CLK(n147), .Q(csr_4), .QN(n596) );
  DFFX1_RVT \csr0_reg[3]  ( .D(n398), .CLK(n148), .Q(csr_3), .QN(n598) );
  DFFX1_RVT \dma_out_cnt_reg[0]  ( .D(n262), .CLK(n158), .Q(dma_out_cnt[0]) );
  DFFX1_RVT \csr0_reg[10]  ( .D(n405), .CLK(n147), .Q(csr_10), .QN(n599) );
  DFFX1_RVT \buf0_orig_reg[19]  ( .D(n370), .CLK(n150), .Q(buf0_orig[19]), 
        .QN(n608) );
  DFFX1_RVT dma_req_in_hold2_reg ( .D(N347), .CLK(wclk), .Q(dma_req_in_hold2)
         );
  DFFX1_RVT dma_req_in_hold_reg ( .D(N348), .CLK(wclk), .Q(dma_req_in_hold) );
  DFFX1_RVT r1_reg ( .D(N361), .CLK(wclk), .Q(r1), .QN(n173) );
  DFFX1_RVT inta_reg ( .D(N221), .CLK(wclk), .Q(inta) );
  DFFX1_RVT intb_reg ( .D(N222), .CLK(wclk), .Q(intb) );
  SDFFSSRX1_RVT dma_req_out_hold_reg ( .RSTB(n234), .SETB(1'b1), .D(n174), 
        .SI(1'b0), .SE(n32), .CLK(wclk), .Q(dma_req_out_hold) );
  DFFSSRX1_RVT dma_ack_wr1_reg ( .D(n77), .SETB(n626), .RSTB(rst), .CLK(wclk), 
        .Q(dma_ack_wr1) );
  DFFSSRX1_RVT r2_reg ( .D(n71), .SETB(n173), .RSTB(rst), .CLK(wclk), .Q(r2), 
        .QN(n2) );
  DFFX1_RVT dma_ack_clr1_reg ( .D(r4), .CLK(wclk), .QN(n55) );
  DFFX1_RVT \buf0_orig_m3_reg[10]  ( .D(N345), .CLK(wclk), .Q(n42) );
  DFFX1_RVT \buf0_orig_m3_reg[9]  ( .D(N344), .CLK(wclk), .Q(n14) );
  DFFX1_RVT \buf0_orig_m3_reg[8]  ( .D(N343), .CLK(wclk), .Q(n41) );
  DFFX1_RVT \buf0_orig_m3_reg[7]  ( .D(N342), .CLK(wclk), .Q(n15) );
  DFFX1_RVT dma_req_r_reg ( .D(n251), .CLK(wclk), .Q(dma_req) );
  DFFX1_RVT \buf0_orig_m3_reg[11]  ( .D(N346), .CLK(wclk), .Q(n43), .QN(n621)
         );
  DFFX1_RVT \buf0_orig_m3_reg[0]  ( .D(n608), .CLK(wclk), .Q(\buf0_orig_m3[0] ) );
  DFFX1_RVT \buf0_orig_m3_reg[6]  ( .D(N341), .CLK(wclk), .Q(n39) );
  DFFX1_RVT \buf0_orig_m3_reg[5]  ( .D(N340), .CLK(wclk), .Q(n13) );
  DFFX1_RVT \buf0_orig_m3_reg[4]  ( .D(N339), .CLK(wclk), .Q(n40) );
  DFFX1_RVT \buf0_orig_m3_reg[3]  ( .D(N338), .CLK(wclk), .Q(n12) );
  DFFX1_RVT \buf0_orig_m3_reg[2]  ( .D(N337), .CLK(wclk), .Q(n34) );
  DFFX1_RVT \buf0_orig_m3_reg[1]  ( .D(N336), .CLK(wclk), .Q(n36) );
  AND2X1_RVT U3 ( .A1(n139), .A2(n183), .Y(n1) );
  AND2X1_RVT U6 ( .A1(adr[0]), .A2(n625), .Y(n184) );
  INVX1_RVT U7 ( .A(adr[0]), .Y(n504) );
  AO21X1_RVT U8 ( .A1(n111), .A2(din[19]), .A3(n144), .Y(n198) );
  AO21X1_RVT U9 ( .A1(n112), .A2(din[20]), .A3(n144), .Y(n197) );
  AO21X1_RVT U10 ( .A1(n112), .A2(din[21]), .A3(n144), .Y(n196) );
  AO21X1_RVT U12 ( .A1(n112), .A2(din[24]), .A3(n144), .Y(n193) );
  AO21X1_RVT U13 ( .A1(n110), .A2(din[16]), .A3(n145), .Y(n201) );
  AO21X1_RVT U16 ( .A1(n110), .A2(din[17]), .A3(n145), .Y(n200) );
  AO21X1_RVT U19 ( .A1(n110), .A2(din[18]), .A3(n144), .Y(n199) );
  INVX1_RVT U20 ( .A(n87), .Y(n96) );
  AO22X1_RVT U21 ( .A1(n101), .A2(n18), .A3(n100), .A4(csr_0), .Y(n503) );
  AO21X1_RVT U22 ( .A1(n130), .A2(din[24]), .A3(n143), .Y(n434) );
  AO21X1_RVT U23 ( .A1(n130), .A2(din[21]), .A3(n142), .Y(n437) );
  AO21X1_RVT U24 ( .A1(n131), .A2(din[20]), .A3(n142), .Y(n438) );
  AO21X1_RVT U25 ( .A1(n131), .A2(din[19]), .A3(n142), .Y(n439) );
  AO21X1_RVT U26 ( .A1(n131), .A2(din[18]), .A3(n142), .Y(n440) );
  AO21X1_RVT U27 ( .A1(n131), .A2(din[17]), .A3(n142), .Y(n441) );
  AO21X1_RVT U28 ( .A1(n131), .A2(din[16]), .A3(n142), .Y(n442) );
  INVX0_RVT U29 ( .A(adr[1]), .Y(n625) );
  INVX1_RVT U30 ( .A(n87), .Y(n122) );
  INVX1_RVT U31 ( .A(n87), .Y(n97) );
  INVX1_RVT U32 ( .A(n87), .Y(n123) );
  INVX0_RVT U33 ( .A(n98), .Y(n82) );
  INVX1_RVT U34 ( .A(n139), .Y(n145) );
  INVX1_RVT U35 ( .A(n139), .Y(n144) );
  INVX1_RVT U36 ( .A(n139), .Y(n143) );
  INVX1_RVT U37 ( .A(n139), .Y(n142) );
  INVX1_RVT U38 ( .A(n139), .Y(n141) );
  INVX1_RVT U39 ( .A(n162), .Y(n161) );
  INVX1_RVT U40 ( .A(n424), .Y(n116) );
  INVX1_RVT U41 ( .A(n424), .Y(n117) );
  INVX1_RVT U42 ( .A(n110), .Y(n109) );
  INVX1_RVT U43 ( .A(n110), .Y(n108) );
  INVX1_RVT U44 ( .A(n423), .Y(n119) );
  INVX1_RVT U45 ( .A(n423), .Y(n120) );
  INVX1_RVT U46 ( .A(n162), .Y(n160) );
  INVX1_RVT U47 ( .A(n162), .Y(n159) );
  INVX1_RVT U48 ( .A(n162), .Y(n158) );
  INVX1_RVT U49 ( .A(n162), .Y(n157) );
  INVX1_RVT U50 ( .A(n162), .Y(n156) );
  INVX1_RVT U51 ( .A(n162), .Y(n155) );
  INVX1_RVT U52 ( .A(n162), .Y(n154) );
  INVX1_RVT U53 ( .A(n162), .Y(n152) );
  INVX1_RVT U54 ( .A(n162), .Y(n151) );
  INVX1_RVT U55 ( .A(n162), .Y(n150) );
  INVX1_RVT U56 ( .A(n162), .Y(n153) );
  INVX1_RVT U57 ( .A(n424), .Y(n118) );
  INVX1_RVT U58 ( .A(n423), .Y(n121) );
  INVX1_RVT U59 ( .A(n84), .Y(n107) );
  INVX1_RVT U60 ( .A(n84), .Y(n106) );
  INVX1_RVT U61 ( .A(n83), .Y(n115) );
  INVX1_RVT U62 ( .A(n83), .Y(n113) );
  INVX1_RVT U63 ( .A(n83), .Y(n114) );
  INVX1_RVT U64 ( .A(n162), .Y(n149) );
  INVX1_RVT U65 ( .A(n162), .Y(n148) );
  INVX1_RVT U66 ( .A(n162), .Y(n147) );
  INVX1_RVT U67 ( .A(n162), .Y(n146) );
  INVX1_RVT U68 ( .A(n181), .Y(n104) );
  INVX1_RVT U69 ( .A(n181), .Y(n105) );
  INVX1_RVT U70 ( .A(n458), .Y(n130) );
  INVX1_RVT U71 ( .A(n458), .Y(n131) );
  INVX1_RVT U72 ( .A(n458), .Y(n132) );
  NBUFFX2_RVT U73 ( .A(n88), .Y(n91) );
  INVX1_RVT U74 ( .A(clk), .Y(n162) );
  INVX1_RVT U75 ( .A(n185), .Y(n112) );
  INVX1_RVT U76 ( .A(n185), .Y(n111) );
  INVX1_RVT U77 ( .A(n185), .Y(n110) );
  NAND3X0_RVT U78 ( .A1(n423), .A2(n185), .A3(n424), .Y(n83) );
  INVX1_RVT U79 ( .A(rst), .Y(n140) );
  NAND2X0_RVT U80 ( .A1(n139), .A2(n181), .Y(n84) );
  INVX1_RVT U81 ( .A(n85), .Y(n126) );
  INVX1_RVT U82 ( .A(n85), .Y(n124) );
  INVX1_RVT U83 ( .A(n85), .Y(n125) );
  INVX1_RVT U84 ( .A(n459), .Y(n127) );
  INVX1_RVT U85 ( .A(n459), .Y(n128) );
  INVX1_RVT U86 ( .A(n459), .Y(n129) );
  INVX1_RVT U87 ( .A(n470), .Y(n137) );
  INVX1_RVT U88 ( .A(n470), .Y(n138) );
  INVX1_RVT U89 ( .A(n471), .Y(n133) );
  INVX1_RVT U90 ( .A(n471), .Y(n134) );
  INVX1_RVT U91 ( .A(n86), .Y(n135) );
  INVX1_RVT U92 ( .A(n86), .Y(n136) );
  NBUFFX2_RVT U93 ( .A(n184), .Y(n102) );
  NBUFFX2_RVT U94 ( .A(n184), .Y(n103) );
  AO22X1_RVT U95 ( .A1(n102), .A2(n16), .A3(n99), .A4(csr_6), .Y(n485) );
  AO22X1_RVT U96 ( .A1(n103), .A2(n50), .A3(n95), .A4(csr[27]), .Y(n492) );
  AO22X1_RVT U97 ( .A1(n102), .A2(n20), .A3(n100), .A4(csr[20]), .Y(n497) );
  AO22X1_RVT U98 ( .A1(n102), .A2(n7), .A3(n180), .A4(csr[28]), .Y(n491) );
  AO22X1_RVT U99 ( .A1(n103), .A2(n48), .A3(n100), .A4(csr[21]), .Y(n496) );
  AO22X1_RVT U100 ( .A1(n103), .A2(n4), .A3(n94), .A4(csr[25]), .Y(n494) );
  AO22X1_RVT U101 ( .A1(n101), .A2(n19), .A3(n95), .A4(csr[17]), .Y(n501) );
  AO22X1_RVT U102 ( .A1(n102), .A2(n8), .A3(n100), .A4(csr[24]), .Y(n495) );
  AO22X1_RVT U103 ( .A1(n101), .A2(n22), .A3(n99), .A4(csr[16]), .Y(n502) );
  AO22X1_RVT U104 ( .A1(n101), .A2(n21), .A3(n180), .A4(csr[18]), .Y(n500) );
  NBUFFX2_RVT U105 ( .A(n184), .Y(n101) );
  AO22X1_RVT U106 ( .A1(n103), .A2(n17), .A3(n100), .A4(csr_1), .Y(n498) );
  AO22X1_RVT U107 ( .A1(n102), .A2(n23), .A3(n94), .A4(csr[26]), .Y(n493) );
  AO22X1_RVT U108 ( .A1(n101), .A2(n49), .A3(n100), .A4(csr[19]), .Y(n499) );
  NAND2X0_RVT U109 ( .A1(n459), .A2(n458), .Y(n85) );
  NAND3X0_RVT U110 ( .A1(n470), .A2(csr[15]), .A3(n471), .Y(n86) );
  NAND2X0_RVT U111 ( .A1(adr[1]), .A2(n504), .Y(n87) );
  INVX0_RVT U112 ( .A(n98), .Y(n88) );
  INVX0_RVT U113 ( .A(n98), .Y(n89) );
  NBUFFX2_RVT U114 ( .A(n461), .Y(n90) );
  INVX0_RVT U115 ( .A(n93), .Y(n92) );
  INVX1_RVT U116 ( .A(n180), .Y(n93) );
  INVX0_RVT U117 ( .A(n93), .Y(n94) );
  INVX1_RVT U118 ( .A(n93), .Y(n95) );
  INVX1_RVT U119 ( .A(n93), .Y(n99) );
  INVX0_RVT U120 ( .A(n461), .Y(n98) );
  NOR2X0_RVT U121 ( .A1(n504), .A2(n625), .Y(n461) );
  INVX0_RVT U122 ( .A(n93), .Y(n100) );
  INVX1_RVT U123 ( .A(n140), .Y(n139) );
  XNOR2X1_RVT U124 ( .A1(buf0_orig[30]), .A2(\sub_449/carry[11] ), .Y(N346) );
  OR2X1_RVT U125 ( .A1(buf0_orig[29]), .A2(\sub_449/carry[10] ), .Y(
        \sub_449/carry[11] ) );
  XNOR2X1_RVT U126 ( .A1(\sub_449/carry[10] ), .A2(buf0_orig[29]), .Y(N345) );
  OR2X1_RVT U127 ( .A1(buf0_orig[28]), .A2(\sub_449/carry[9] ), .Y(
        \sub_449/carry[10] ) );
  XNOR2X1_RVT U128 ( .A1(\sub_449/carry[9] ), .A2(buf0_orig[28]), .Y(N344) );
  OR2X1_RVT U129 ( .A1(buf0_orig[27]), .A2(\sub_449/carry[8] ), .Y(
        \sub_449/carry[9] ) );
  XNOR2X1_RVT U130 ( .A1(\sub_449/carry[8] ), .A2(buf0_orig[27]), .Y(N343) );
  OR2X1_RVT U131 ( .A1(buf0_orig[26]), .A2(\sub_449/carry[7] ), .Y(
        \sub_449/carry[8] ) );
  XNOR2X1_RVT U132 ( .A1(\sub_449/carry[7] ), .A2(buf0_orig[26]), .Y(N342) );
  OR2X1_RVT U133 ( .A1(buf0_orig[25]), .A2(\sub_449/carry[6] ), .Y(
        \sub_449/carry[7] ) );
  XNOR2X1_RVT U134 ( .A1(\sub_449/carry[6] ), .A2(buf0_orig[25]), .Y(N341) );
  OR2X1_RVT U135 ( .A1(buf0_orig[24]), .A2(\sub_449/carry[5] ), .Y(
        \sub_449/carry[6] ) );
  XNOR2X1_RVT U136 ( .A1(\sub_449/carry[5] ), .A2(buf0_orig[24]), .Y(N340) );
  OR2X1_RVT U137 ( .A1(buf0_orig[23]), .A2(\sub_449/carry[4] ), .Y(
        \sub_449/carry[5] ) );
  XNOR2X1_RVT U138 ( .A1(\sub_449/carry[4] ), .A2(buf0_orig[23]), .Y(N339) );
  OR2X1_RVT U139 ( .A1(buf0_orig[22]), .A2(\sub_449/carry[3] ), .Y(
        \sub_449/carry[4] ) );
  XNOR2X1_RVT U140 ( .A1(\sub_449/carry[3] ), .A2(buf0_orig[22]), .Y(N338) );
  OR2X1_RVT U141 ( .A1(buf0_orig[21]), .A2(\sub_449/carry[2] ), .Y(
        \sub_449/carry[3] ) );
  XNOR2X1_RVT U142 ( .A1(\sub_449/carry[2] ), .A2(buf0_orig[21]), .Y(N337) );
  AND2X1_RVT U143 ( .A1(buf0_orig[20]), .A2(buf0_orig[19]), .Y(
        \sub_449/carry[2] ) );
  XOR2X1_RVT U144 ( .A1(buf0_orig[20]), .A2(buf0_orig[19]), .Y(N336) );
  OR2X1_RVT U145 ( .A1(n27), .A2(csr_10), .Y(n172) );
  OA21X1_RVT U146 ( .A1(n30), .A2(csr_3), .A3(n81), .Y(n163) );
  AO222X1_RVT U147 ( .A1(csr_3), .A2(n30), .A3(n163), .A4(csr_2), .A5(csr_4), 
        .A6(n11), .Y(n164) );
  OA221X1_RVT U148 ( .A1(csr_5), .A2(n78), .A3(csr_4), .A4(n11), .A5(n164), 
        .Y(n165) );
  AO221X1_RVT U149 ( .A1(csr_5), .A2(n78), .A3(csr_6), .A4(n31), .A5(n165), 
        .Y(n166) );
  OA221X1_RVT U150 ( .A1(csr_7), .A2(n79), .A3(csr_6), .A4(n31), .A5(n166), 
        .Y(n167) );
  AO221X1_RVT U151 ( .A1(csr_7), .A2(n79), .A3(csr_8), .A4(n33), .A5(n167), 
        .Y(n168) );
  OA221X1_RVT U152 ( .A1(csr_9), .A2(n80), .A3(csr_8), .A4(n33), .A5(n168), 
        .Y(n169) );
  AO221X1_RVT U153 ( .A1(csr_9), .A2(n80), .A3(csr_10), .A4(n27), .A5(n169), 
        .Y(n171) );
  NOR3X0_RVT U154 ( .A1(dma_out_left[10]), .A2(dma_out_left[9]), .A3(
        dma_out_left[11]), .Y(n170) );
  NAND3X0_RVT U155 ( .A1(n172), .A2(n171), .A3(n170), .Y(N333) );
  AND3X1_RVT U156 ( .A1(n562), .A2(n563), .A3(n175), .Y(n622) );
  AND3X1_RVT U157 ( .A1(n598), .A2(n599), .A3(n597), .Y(n175) );
  INVX0_RVT U158 ( .A(re), .Y(n624) );
  AND2X1_RVT U159 ( .A1(dma_ack_wr1), .A2(n55), .Y(n77) );
  AND2X1_RVT U160 ( .A1(r2), .A2(n75), .Y(n71) );
  AO22X1_RVT U161 ( .A1(din[13]), .A2(n104), .A3(n106), .A4(csr_13), .Y(n421)
         );
  AO22X1_RVT U162 ( .A1(din[27]), .A2(n105), .A3(n107), .A4(csr[27]), .Y(n420)
         );
  AO22X1_RVT U163 ( .A1(din[26]), .A2(n105), .A3(n107), .A4(csr[26]), .Y(n419)
         );
  AO22X1_RVT U164 ( .A1(din[25]), .A2(n105), .A3(n107), .A4(csr[25]), .Y(n418)
         );
  AO22X1_RVT U165 ( .A1(din[24]), .A2(n105), .A3(n107), .A4(csr[24]), .Y(n417)
         );
  AO22X1_RVT U166 ( .A1(din[21]), .A2(n105), .A3(n107), .A4(csr[21]), .Y(n416)
         );
  AO22X1_RVT U167 ( .A1(din[20]), .A2(n105), .A3(n107), .A4(csr[20]), .Y(n415)
         );
  AO22X1_RVT U168 ( .A1(din[19]), .A2(n105), .A3(n107), .A4(csr[19]), .Y(n414)
         );
  AO22X1_RVT U169 ( .A1(din[18]), .A2(n105), .A3(n107), .A4(csr[18]), .Y(n413)
         );
  AO22X1_RVT U170 ( .A1(din[17]), .A2(n105), .A3(n107), .A4(csr[17]), .Y(n412)
         );
  AO22X1_RVT U171 ( .A1(din[16]), .A2(n105), .A3(n107), .A4(csr[16]), .Y(n411)
         );
  AO22X1_RVT U172 ( .A1(din[15]), .A2(n105), .A3(n107), .A4(csr[15]), .Y(n410)
         );
  AO221X1_RVT U173 ( .A1(n107), .A2(csr[22]), .A3(din[22]), .A4(n104), .A5(
        n176), .Y(n409) );
  INVX0_RVT U174 ( .A(n177), .Y(n176) );
  AO22X1_RVT U175 ( .A1(din[23]), .A2(n105), .A3(n178), .A4(n106), .Y(n408) );
  AND2X1_RVT U176 ( .A1(n177), .A2(csr[23]), .Y(n178) );
  NAND4X0_RVT U177 ( .A1(out_to_small), .A2(n139), .A3(n179), .A4(csr_13), .Y(
        n177) );
  NAND2X0_RVT U178 ( .A1(we), .A2(n99), .Y(n179) );
  AO22X1_RVT U179 ( .A1(din[12]), .A2(n105), .A3(n106), .A4(csr_12), .Y(n407)
         );
  AO22X1_RVT U180 ( .A1(din[11]), .A2(n104), .A3(n106), .A4(csr_11), .Y(n406)
         );
  AO22X1_RVT U181 ( .A1(din[10]), .A2(n104), .A3(n106), .A4(csr_10), .Y(n405)
         );
  AO22X1_RVT U182 ( .A1(din[9]), .A2(n104), .A3(n106), .A4(csr_9), .Y(n404) );
  AO22X1_RVT U183 ( .A1(din[8]), .A2(n104), .A3(n107), .A4(csr_8), .Y(n403) );
  AO22X1_RVT U184 ( .A1(din[7]), .A2(n104), .A3(n106), .A4(csr_7), .Y(n402) );
  AO22X1_RVT U185 ( .A1(din[6]), .A2(n104), .A3(n106), .A4(csr_6), .Y(n401) );
  AO22X1_RVT U186 ( .A1(din[5]), .A2(n104), .A3(n106), .A4(csr_5), .Y(n400) );
  AO22X1_RVT U187 ( .A1(din[4]), .A2(n104), .A3(n106), .A4(csr_4), .Y(n399) );
  AO22X1_RVT U188 ( .A1(din[3]), .A2(n104), .A3(n106), .A4(csr_3), .Y(n398) );
  AO22X1_RVT U189 ( .A1(din[2]), .A2(n104), .A3(n106), .A4(csr_2), .Y(n397) );
  AO22X1_RVT U190 ( .A1(din[1]), .A2(n104), .A3(n106), .A4(csr_1), .Y(n396) );
  AO22X1_RVT U191 ( .A1(din[0]), .A2(n105), .A3(n107), .A4(csr_0), .Y(n395) );
  NAND3X0_RVT U192 ( .A1(n139), .A2(n92), .A3(we), .Y(n181) );
  AO22X1_RVT U193 ( .A1(n182), .A2(din[21]), .A3(n1), .A4(n48), .Y(n394) );
  AO22X1_RVT U194 ( .A1(n182), .A2(din[20]), .A3(n1), .A4(n20), .Y(n393) );
  AO22X1_RVT U195 ( .A1(n182), .A2(din[19]), .A3(n1), .A4(n49), .Y(n392) );
  AO22X1_RVT U196 ( .A1(n182), .A2(din[18]), .A3(n1), .A4(n21), .Y(n391) );
  AO22X1_RVT U197 ( .A1(n182), .A2(din[17]), .A3(n1), .A4(n19), .Y(n390) );
  AO22X1_RVT U198 ( .A1(n182), .A2(din[16]), .A3(n1), .A4(n22), .Y(n389) );
  AO22X1_RVT U199 ( .A1(din[29]), .A2(n182), .A3(n1), .A4(n5), .Y(n388) );
  AO22X1_RVT U200 ( .A1(din[28]), .A2(n182), .A3(n1), .A4(n7), .Y(n387) );
  AO22X1_RVT U201 ( .A1(n182), .A2(din[27]), .A3(n1), .A4(n50), .Y(n386) );
  AO22X1_RVT U202 ( .A1(n182), .A2(din[26]), .A3(n1), .A4(n23), .Y(n385) );
  AO22X1_RVT U203 ( .A1(n182), .A2(din[25]), .A3(n1), .A4(n4), .Y(n384) );
  AO22X1_RVT U204 ( .A1(n182), .A2(din[24]), .A3(n1), .A4(n8), .Y(n383) );
  INVX0_RVT U205 ( .A(n183), .Y(n182) );
  NAND3X0_RVT U206 ( .A1(we), .A2(n139), .A3(n101), .Y(n183) );
  AO21X1_RVT U207 ( .A1(n109), .A2(n74), .A3(n186), .Y(n382) );
  AO21X1_RVT U208 ( .A1(n108), .A2(buf0_orig[30]), .A3(n187), .Y(n381) );
  AO21X1_RVT U209 ( .A1(n108), .A2(buf0_orig[29]), .A3(n188), .Y(n380) );
  AO21X1_RVT U210 ( .A1(n108), .A2(buf0_orig[28]), .A3(n189), .Y(n379) );
  AO21X1_RVT U211 ( .A1(n108), .A2(buf0_orig[27]), .A3(n190), .Y(n378) );
  AO21X1_RVT U212 ( .A1(n108), .A2(buf0_orig[26]), .A3(n191), .Y(n377) );
  AO21X1_RVT U213 ( .A1(n108), .A2(buf0_orig[25]), .A3(n192), .Y(n376) );
  AO21X1_RVT U214 ( .A1(n108), .A2(buf0_orig[24]), .A3(n193), .Y(n375) );
  AO21X1_RVT U215 ( .A1(n108), .A2(buf0_orig[23]), .A3(n194), .Y(n374) );
  AO21X1_RVT U216 ( .A1(n108), .A2(buf0_orig[22]), .A3(n195), .Y(n373) );
  AO21X1_RVT U217 ( .A1(n108), .A2(buf0_orig[21]), .A3(n196), .Y(n372) );
  AO21X1_RVT U218 ( .A1(n108), .A2(buf0_orig[20]), .A3(n197), .Y(n371) );
  AO21X1_RVT U219 ( .A1(n109), .A2(buf0_orig[19]), .A3(n198), .Y(n370) );
  AO21X1_RVT U220 ( .A1(n109), .A2(n73), .A3(n199), .Y(n369) );
  AO21X1_RVT U221 ( .A1(n109), .A2(n72), .A3(n200), .Y(n368) );
  AO21X1_RVT U222 ( .A1(n109), .A2(n70), .A3(n201), .Y(n367) );
  AO21X1_RVT U223 ( .A1(n109), .A2(n69), .A3(n202), .Y(n366) );
  AO21X1_RVT U224 ( .A1(n109), .A2(n68), .A3(n203), .Y(n365) );
  AO21X1_RVT U225 ( .A1(n109), .A2(n67), .A3(n204), .Y(n364) );
  AO21X1_RVT U226 ( .A1(n109), .A2(n66), .A3(n205), .Y(n363) );
  AO21X1_RVT U227 ( .A1(n109), .A2(n65), .A3(n206), .Y(n362) );
  AO21X1_RVT U228 ( .A1(n109), .A2(n64), .A3(n207), .Y(n361) );
  AO21X1_RVT U229 ( .A1(n109), .A2(n63), .A3(n208), .Y(n360) );
  AO21X1_RVT U230 ( .A1(n109), .A2(n62), .A3(n209), .Y(n359) );
  AO21X1_RVT U231 ( .A1(n185), .A2(n61), .A3(n210), .Y(n358) );
  AO21X1_RVT U232 ( .A1(n185), .A2(n60), .A3(n211), .Y(n357) );
  AO21X1_RVT U233 ( .A1(n185), .A2(n59), .A3(n212), .Y(n356) );
  AO21X1_RVT U234 ( .A1(n185), .A2(n58), .A3(n213), .Y(n355) );
  AO21X1_RVT U235 ( .A1(n185), .A2(n57), .A3(n214), .Y(n354) );
  AO21X1_RVT U236 ( .A1(n185), .A2(n56), .A3(n215), .Y(n353) );
  AO21X1_RVT U237 ( .A1(n185), .A2(n54), .A3(n216), .Y(n352) );
  AO21X1_RVT U238 ( .A1(n185), .A2(n51), .A3(n217), .Y(n351) );
  AO221X1_RVT U239 ( .A1(n113), .A2(buf0[0]), .A3(idin[0]), .A4(n116), .A5(
        n218), .Y(n350) );
  AO21X1_RVT U240 ( .A1(n119), .A2(n51), .A3(n217), .Y(n218) );
  AO21X1_RVT U241 ( .A1(n111), .A2(din[0]), .A3(n140), .Y(n217) );
  AO221X1_RVT U242 ( .A1(n113), .A2(buf0[1]), .A3(idin[1]), .A4(n116), .A5(
        n219), .Y(n349) );
  AO21X1_RVT U243 ( .A1(n119), .A2(n54), .A3(n216), .Y(n219) );
  AO21X1_RVT U244 ( .A1(n110), .A2(din[1]), .A3(n140), .Y(n216) );
  AO221X1_RVT U245 ( .A1(n113), .A2(buf0[2]), .A3(idin[2]), .A4(n116), .A5(
        n220), .Y(n348) );
  AO21X1_RVT U246 ( .A1(n119), .A2(n56), .A3(n215), .Y(n220) );
  AO21X1_RVT U247 ( .A1(n110), .A2(din[2]), .A3(n140), .Y(n215) );
  AO221X1_RVT U248 ( .A1(n113), .A2(buf0[3]), .A3(idin[3]), .A4(n116), .A5(
        n221), .Y(n347) );
  AO21X1_RVT U249 ( .A1(n119), .A2(n57), .A3(n214), .Y(n221) );
  AO21X1_RVT U250 ( .A1(n111), .A2(din[3]), .A3(n140), .Y(n214) );
  AO221X1_RVT U251 ( .A1(n113), .A2(buf0[4]), .A3(idin[4]), .A4(n116), .A5(
        n222), .Y(n346) );
  AO21X1_RVT U252 ( .A1(n119), .A2(n58), .A3(n213), .Y(n222) );
  AO21X1_RVT U253 ( .A1(n110), .A2(din[4]), .A3(n140), .Y(n213) );
  AO221X1_RVT U254 ( .A1(n113), .A2(buf0[5]), .A3(idin[5]), .A4(n116), .A5(
        n223), .Y(n345) );
  AO21X1_RVT U255 ( .A1(n119), .A2(n59), .A3(n212), .Y(n223) );
  AO21X1_RVT U256 ( .A1(n110), .A2(din[5]), .A3(n140), .Y(n212) );
  AO221X1_RVT U257 ( .A1(n113), .A2(buf0[6]), .A3(idin[6]), .A4(n116), .A5(
        n224), .Y(n344) );
  AO21X1_RVT U258 ( .A1(n119), .A2(n60), .A3(n211), .Y(n224) );
  AO21X1_RVT U259 ( .A1(n111), .A2(din[6]), .A3(n145), .Y(n211) );
  AO221X1_RVT U260 ( .A1(n113), .A2(buf0[7]), .A3(idin[7]), .A4(n116), .A5(
        n225), .Y(n343) );
  AO21X1_RVT U261 ( .A1(n119), .A2(n61), .A3(n210), .Y(n225) );
  AO21X1_RVT U262 ( .A1(n111), .A2(din[7]), .A3(n145), .Y(n210) );
  AO221X1_RVT U263 ( .A1(n113), .A2(buf0[8]), .A3(idin[8]), .A4(n116), .A5(
        n226), .Y(n342) );
  AO21X1_RVT U264 ( .A1(n119), .A2(n62), .A3(n209), .Y(n226) );
  AO21X1_RVT U265 ( .A1(n111), .A2(din[8]), .A3(n145), .Y(n209) );
  AO221X1_RVT U266 ( .A1(n113), .A2(buf0[9]), .A3(idin[9]), .A4(n116), .A5(
        n227), .Y(n341) );
  AO21X1_RVT U267 ( .A1(n119), .A2(n63), .A3(n208), .Y(n227) );
  AO21X1_RVT U268 ( .A1(n111), .A2(din[9]), .A3(n145), .Y(n208) );
  AO221X1_RVT U269 ( .A1(n113), .A2(buf0[10]), .A3(idin[10]), .A4(n116), .A5(
        n228), .Y(n340) );
  AO21X1_RVT U270 ( .A1(n119), .A2(n64), .A3(n207), .Y(n228) );
  AO21X1_RVT U271 ( .A1(n111), .A2(din[10]), .A3(n145), .Y(n207) );
  AO221X1_RVT U272 ( .A1(n113), .A2(buf0[11]), .A3(idin[11]), .A4(n116), .A5(
        n229), .Y(n339) );
  AO21X1_RVT U273 ( .A1(n119), .A2(n65), .A3(n206), .Y(n229) );
  AO21X1_RVT U274 ( .A1(n110), .A2(din[11]), .A3(n145), .Y(n206) );
  AO221X1_RVT U275 ( .A1(n114), .A2(buf0[12]), .A3(idin[12]), .A4(n117), .A5(
        n230), .Y(n338) );
  AO21X1_RVT U276 ( .A1(n120), .A2(n66), .A3(n205), .Y(n230) );
  AO21X1_RVT U277 ( .A1(n111), .A2(din[12]), .A3(n145), .Y(n205) );
  AO221X1_RVT U278 ( .A1(n114), .A2(buf0[13]), .A3(idin[13]), .A4(n117), .A5(
        n231), .Y(n337) );
  AO21X1_RVT U279 ( .A1(n120), .A2(n67), .A3(n204), .Y(n231) );
  AO21X1_RVT U280 ( .A1(n110), .A2(din[13]), .A3(n145), .Y(n204) );
  AO221X1_RVT U281 ( .A1(n114), .A2(buf0[14]), .A3(idin[14]), .A4(n117), .A5(
        n232), .Y(n336) );
  AO21X1_RVT U282 ( .A1(n120), .A2(n68), .A3(n203), .Y(n232) );
  AO21X1_RVT U283 ( .A1(din[14]), .A2(n112), .A3(n145), .Y(n203) );
  AO221X1_RVT U284 ( .A1(n114), .A2(buf0[15]), .A3(idin[15]), .A4(n117), .A5(
        n233), .Y(n335) );
  AO21X1_RVT U285 ( .A1(n120), .A2(n69), .A3(n202), .Y(n233) );
  AO21X1_RVT U286 ( .A1(n110), .A2(din[15]), .A3(n145), .Y(n202) );
  AO221X1_RVT U287 ( .A1(n114), .A2(buf0[16]), .A3(idin[16]), .A4(n117), .A5(
        n235), .Y(n334) );
  AO21X1_RVT U288 ( .A1(n120), .A2(n70), .A3(n201), .Y(n235) );
  AO221X1_RVT U289 ( .A1(n114), .A2(buf0[17]), .A3(idin[17]), .A4(n117), .A5(
        n236), .Y(n333) );
  AO21X1_RVT U290 ( .A1(n120), .A2(n72), .A3(n200), .Y(n236) );
  AO221X1_RVT U291 ( .A1(n114), .A2(buf0[18]), .A3(idin[18]), .A4(n117), .A5(
        n237), .Y(n332) );
  AO21X1_RVT U292 ( .A1(n120), .A2(n73), .A3(n199), .Y(n237) );
  AO221X1_RVT U293 ( .A1(n114), .A2(buf0[19]), .A3(idin[19]), .A4(n117), .A5(
        n238), .Y(n331) );
  AO21X1_RVT U294 ( .A1(n120), .A2(buf0_orig[19]), .A3(n198), .Y(n238) );
  AO221X1_RVT U295 ( .A1(n114), .A2(buf0[20]), .A3(idin[20]), .A4(n117), .A5(
        n240), .Y(n330) );
  AO21X1_RVT U296 ( .A1(n120), .A2(buf0_orig[20]), .A3(n197), .Y(n240) );
  AO221X1_RVT U297 ( .A1(n114), .A2(buf0[21]), .A3(idin[21]), .A4(n117), .A5(
        n241), .Y(n329) );
  AO21X1_RVT U298 ( .A1(n120), .A2(buf0_orig[21]), .A3(n196), .Y(n241) );
  AO221X1_RVT U299 ( .A1(n114), .A2(buf0[22]), .A3(idin[22]), .A4(n117), .A5(
        n242), .Y(n328) );
  AO21X1_RVT U300 ( .A1(n120), .A2(buf0_orig[22]), .A3(n195), .Y(n242) );
  AO21X1_RVT U301 ( .A1(n112), .A2(din[22]), .A3(n144), .Y(n195) );
  AO221X1_RVT U302 ( .A1(n114), .A2(buf0[23]), .A3(idin[23]), .A4(n117), .A5(
        n243), .Y(n327) );
  AO21X1_RVT U303 ( .A1(n120), .A2(buf0_orig[23]), .A3(n194), .Y(n243) );
  AO21X1_RVT U304 ( .A1(n110), .A2(din[23]), .A3(n144), .Y(n194) );
  AO221X1_RVT U305 ( .A1(n115), .A2(buf0[24]), .A3(idin[24]), .A4(n118), .A5(
        n244), .Y(n326) );
  AO21X1_RVT U306 ( .A1(n121), .A2(buf0_orig[24]), .A3(n193), .Y(n244) );
  AO221X1_RVT U307 ( .A1(n115), .A2(buf0[25]), .A3(idin[25]), .A4(n118), .A5(
        n245), .Y(n325) );
  AO21X1_RVT U308 ( .A1(n121), .A2(buf0_orig[25]), .A3(n192), .Y(n245) );
  AO21X1_RVT U309 ( .A1(n111), .A2(din[25]), .A3(n144), .Y(n192) );
  AO221X1_RVT U310 ( .A1(n115), .A2(buf0[26]), .A3(idin[26]), .A4(n118), .A5(
        n246), .Y(n324) );
  AO21X1_RVT U311 ( .A1(n121), .A2(buf0_orig[26]), .A3(n191), .Y(n246) );
  AO21X1_RVT U312 ( .A1(n111), .A2(din[26]), .A3(n144), .Y(n191) );
  AO221X1_RVT U313 ( .A1(n115), .A2(buf0[27]), .A3(idin[27]), .A4(n118), .A5(
        n247), .Y(n323) );
  AO21X1_RVT U314 ( .A1(n121), .A2(buf0_orig[27]), .A3(n190), .Y(n247) );
  AO21X1_RVT U315 ( .A1(n111), .A2(din[27]), .A3(n144), .Y(n190) );
  AO221X1_RVT U316 ( .A1(n115), .A2(buf0[28]), .A3(idin[28]), .A4(n118), .A5(
        n248), .Y(n322) );
  AO21X1_RVT U317 ( .A1(n121), .A2(buf0_orig[28]), .A3(n189), .Y(n248) );
  AO21X1_RVT U318 ( .A1(n111), .A2(din[28]), .A3(n144), .Y(n189) );
  AO221X1_RVT U319 ( .A1(n115), .A2(buf0[29]), .A3(idin[29]), .A4(n118), .A5(
        n249), .Y(n321) );
  AO21X1_RVT U320 ( .A1(n121), .A2(buf0_orig[29]), .A3(n188), .Y(n249) );
  AO21X1_RVT U321 ( .A1(n111), .A2(din[29]), .A3(n144), .Y(n188) );
  AO221X1_RVT U322 ( .A1(n115), .A2(buf0[30]), .A3(idin[30]), .A4(n118), .A5(
        n250), .Y(n320) );
  AO21X1_RVT U323 ( .A1(n121), .A2(buf0_orig[30]), .A3(n187), .Y(n250) );
  AO21X1_RVT U324 ( .A1(din[30]), .A2(n112), .A3(n143), .Y(n187) );
  AO221X1_RVT U325 ( .A1(n115), .A2(buf0[31]), .A3(idin[31]), .A4(n118), .A5(
        n422), .Y(n319) );
  AO21X1_RVT U326 ( .A1(n121), .A2(n74), .A3(n186), .Y(n422) );
  AO21X1_RVT U327 ( .A1(din[31]), .A2(n112), .A3(n143), .Y(n186) );
  NAND4X0_RVT U328 ( .A1(buf0_set), .A2(n425), .A3(n108), .A4(n623), .Y(n424)
         );
  NAND3X0_RVT U329 ( .A1(n108), .A2(buf0_rl), .A3(n425), .Y(n423) );
  NAND2X0_RVT U330 ( .A1(n122), .A2(we), .Y(n185) );
  AO221X1_RVT U331 ( .A1(n124), .A2(buf1[0]), .A3(n127), .A4(idin[0]), .A5(
        n426), .Y(n318) );
  AO21X1_RVT U332 ( .A1(n130), .A2(din[0]), .A3(n143), .Y(n426) );
  AO221X1_RVT U333 ( .A1(n124), .A2(buf1[31]), .A3(n127), .A4(idin[31]), .A5(
        n427), .Y(n317) );
  AO21X1_RVT U334 ( .A1(n130), .A2(din[31]), .A3(n143), .Y(n427) );
  AO221X1_RVT U335 ( .A1(n124), .A2(buf1[30]), .A3(n127), .A4(idin[30]), .A5(
        n428), .Y(n316) );
  AO21X1_RVT U336 ( .A1(n130), .A2(din[30]), .A3(n143), .Y(n428) );
  AO221X1_RVT U337 ( .A1(n124), .A2(buf1[29]), .A3(n127), .A4(idin[29]), .A5(
        n429), .Y(n315) );
  AO21X1_RVT U338 ( .A1(n130), .A2(din[29]), .A3(n143), .Y(n429) );
  AO221X1_RVT U339 ( .A1(n124), .A2(buf1[28]), .A3(n127), .A4(idin[28]), .A5(
        n430), .Y(n314) );
  AO21X1_RVT U340 ( .A1(n130), .A2(din[28]), .A3(n143), .Y(n430) );
  AO221X1_RVT U341 ( .A1(n124), .A2(buf1[27]), .A3(n127), .A4(idin[27]), .A5(
        n431), .Y(n313) );
  AO21X1_RVT U342 ( .A1(n130), .A2(din[27]), .A3(n143), .Y(n431) );
  AO221X1_RVT U343 ( .A1(n124), .A2(buf1[26]), .A3(n127), .A4(idin[26]), .A5(
        n432), .Y(n312) );
  AO21X1_RVT U344 ( .A1(n130), .A2(din[26]), .A3(n143), .Y(n432) );
  AO221X1_RVT U345 ( .A1(n124), .A2(buf1[25]), .A3(n127), .A4(idin[25]), .A5(
        n433), .Y(n311) );
  AO21X1_RVT U346 ( .A1(n130), .A2(din[25]), .A3(n143), .Y(n433) );
  AO221X1_RVT U347 ( .A1(n124), .A2(buf1[24]), .A3(n127), .A4(idin[24]), .A5(
        n434), .Y(n310) );
  AO221X1_RVT U348 ( .A1(n124), .A2(buf1[23]), .A3(n127), .A4(idin[23]), .A5(
        n435), .Y(n309) );
  AO21X1_RVT U349 ( .A1(n130), .A2(din[23]), .A3(n143), .Y(n435) );
  AO221X1_RVT U350 ( .A1(n124), .A2(buf1[22]), .A3(n127), .A4(idin[22]), .A5(
        n436), .Y(n308) );
  AO21X1_RVT U351 ( .A1(n130), .A2(din[22]), .A3(n142), .Y(n436) );
  AO221X1_RVT U352 ( .A1(n124), .A2(buf1[21]), .A3(n127), .A4(idin[21]), .A5(
        n437), .Y(n307) );
  AO221X1_RVT U353 ( .A1(n125), .A2(buf1[20]), .A3(n128), .A4(idin[20]), .A5(
        n438), .Y(n306) );
  AO221X1_RVT U354 ( .A1(n125), .A2(buf1[19]), .A3(n128), .A4(idin[19]), .A5(
        n439), .Y(n305) );
  AO221X1_RVT U355 ( .A1(n125), .A2(buf1[18]), .A3(n128), .A4(idin[18]), .A5(
        n440), .Y(n304) );
  AO221X1_RVT U356 ( .A1(n125), .A2(buf1[17]), .A3(n128), .A4(idin[17]), .A5(
        n441), .Y(n303) );
  AO221X1_RVT U357 ( .A1(n125), .A2(buf1[16]), .A3(n128), .A4(idin[16]), .A5(
        n442), .Y(n302) );
  AO221X1_RVT U358 ( .A1(n125), .A2(buf1[15]), .A3(n128), .A4(idin[15]), .A5(
        n443), .Y(n301) );
  AO21X1_RVT U359 ( .A1(n131), .A2(din[15]), .A3(n142), .Y(n443) );
  AO221X1_RVT U360 ( .A1(n125), .A2(buf1[14]), .A3(n128), .A4(idin[14]), .A5(
        n444), .Y(n300) );
  AO21X1_RVT U361 ( .A1(n131), .A2(din[14]), .A3(n142), .Y(n444) );
  AO221X1_RVT U362 ( .A1(n125), .A2(buf1[13]), .A3(n128), .A4(idin[13]), .A5(
        n445), .Y(n299) );
  AO21X1_RVT U363 ( .A1(n131), .A2(din[13]), .A3(n142), .Y(n445) );
  AO221X1_RVT U364 ( .A1(n125), .A2(buf1[12]), .A3(n128), .A4(idin[12]), .A5(
        n446), .Y(n298) );
  AO21X1_RVT U365 ( .A1(n131), .A2(din[12]), .A3(n142), .Y(n446) );
  AO221X1_RVT U366 ( .A1(n125), .A2(buf1[11]), .A3(n128), .A4(idin[11]), .A5(
        n447), .Y(n297) );
  AO21X1_RVT U367 ( .A1(n131), .A2(din[11]), .A3(n142), .Y(n447) );
  AO221X1_RVT U368 ( .A1(n125), .A2(buf1[10]), .A3(n128), .A4(idin[10]), .A5(
        n448), .Y(n296) );
  AO21X1_RVT U369 ( .A1(n131), .A2(din[10]), .A3(n141), .Y(n448) );
  AO221X1_RVT U370 ( .A1(n125), .A2(buf1[9]), .A3(n128), .A4(idin[9]), .A5(
        n449), .Y(n295) );
  AO21X1_RVT U371 ( .A1(n131), .A2(din[9]), .A3(n141), .Y(n449) );
  AO221X1_RVT U372 ( .A1(n126), .A2(buf1[8]), .A3(n129), .A4(idin[8]), .A5(
        n450), .Y(n294) );
  AO21X1_RVT U373 ( .A1(n132), .A2(din[8]), .A3(n141), .Y(n450) );
  AO221X1_RVT U374 ( .A1(n126), .A2(buf1[7]), .A3(n129), .A4(idin[7]), .A5(
        n451), .Y(n293) );
  AO21X1_RVT U375 ( .A1(n132), .A2(din[7]), .A3(n141), .Y(n451) );
  AO221X1_RVT U376 ( .A1(n126), .A2(buf1[6]), .A3(n129), .A4(idin[6]), .A5(
        n452), .Y(n292) );
  AO21X1_RVT U377 ( .A1(n132), .A2(din[6]), .A3(n141), .Y(n452) );
  AO221X1_RVT U378 ( .A1(n126), .A2(buf1[5]), .A3(n129), .A4(idin[5]), .A5(
        n453), .Y(n291) );
  AO21X1_RVT U379 ( .A1(n132), .A2(din[5]), .A3(n141), .Y(n453) );
  AO221X1_RVT U380 ( .A1(n126), .A2(buf1[4]), .A3(n129), .A4(idin[4]), .A5(
        n454), .Y(n290) );
  AO21X1_RVT U381 ( .A1(n132), .A2(din[4]), .A3(n141), .Y(n454) );
  AO221X1_RVT U382 ( .A1(n126), .A2(buf1[3]), .A3(n129), .A4(idin[3]), .A5(
        n455), .Y(n289) );
  AO21X1_RVT U383 ( .A1(n132), .A2(din[3]), .A3(n141), .Y(n455) );
  AO221X1_RVT U384 ( .A1(n126), .A2(buf1[2]), .A3(n129), .A4(idin[2]), .A5(
        n456), .Y(n288) );
  AO21X1_RVT U385 ( .A1(n132), .A2(din[2]), .A3(n141), .Y(n456) );
  AO221X1_RVT U386 ( .A1(n126), .A2(buf1[1]), .A3(n129), .A4(idin[1]), .A5(
        n457), .Y(n287) );
  AO21X1_RVT U387 ( .A1(n132), .A2(din[1]), .A3(n141), .Y(n457) );
  NAND3X0_RVT U388 ( .A1(n458), .A2(n3), .A3(n460), .Y(n459) );
  OR2X1_RVT U389 ( .A1(out_to_small), .A2(buf1_set), .Y(n460) );
  NAND2X0_RVT U390 ( .A1(n82), .A2(we), .Y(n458) );
  AO22X1_RVT U391 ( .A1(n462), .A2(out_to_small), .A3(n463), .A4(n16), .Y(n286) );
  AO22X1_RVT U392 ( .A1(int_seqerr_set), .A2(n462), .A3(n463), .A4(n44), .Y(
        n285) );
  AO22X1_RVT U393 ( .A1(int_buf1_set), .A2(n462), .A3(n463), .A4(n47), .Y(n284) );
  AO22X1_RVT U394 ( .A1(int_buf0_set), .A2(n462), .A3(n463), .A4(n46), .Y(n283) );
  AO22X1_RVT U395 ( .A1(int_upid_set), .A2(n462), .A3(n463), .A4(n45), .Y(n282) );
  AO22X1_RVT U396 ( .A1(int_crc16_set), .A2(n462), .A3(n463), .A4(n17), .Y(
        n281) );
  AO22X1_RVT U397 ( .A1(int_to_set), .A2(n462), .A3(n463), .A4(n18), .Y(n280)
         );
  AND2X1_RVT U398 ( .A1(n139), .A2(n76), .Y(n463) );
  AND2X1_RVT U399 ( .A1(n425), .A2(n76), .Y(n462) );
  MUX21X1_RVT U400 ( .A1(n464), .A2(csr[29]), .S0(n465), .Y(n279) );
  AND2X1_RVT U401 ( .A1(idin[3]), .A2(n425), .Y(n464) );
  MUX21X1_RVT U402 ( .A1(n466), .A2(csr[28]), .S0(n465), .Y(n278) );
  AOI21X1_RVT U403 ( .A1(uc_dpd_set), .A2(n3), .A3(n141), .Y(n465) );
  AND2X1_RVT U404 ( .A1(idin[2]), .A2(n425), .Y(n466) );
  MUX21X1_RVT U405 ( .A1(n467), .A2(csr[31]), .S0(n468), .Y(n277) );
  AND2X1_RVT U406 ( .A1(idin[1]), .A2(n425), .Y(n467) );
  MUX21X1_RVT U407 ( .A1(n469), .A2(csr[30]), .S0(n468), .Y(n276) );
  AOI21X1_RVT U408 ( .A1(uc_bsel_set), .A2(n3), .A3(n141), .Y(n468) );
  AND2X1_RVT U409 ( .A1(idin[0]), .A2(n425), .Y(n469) );
  AND2X1_RVT U410 ( .A1(n139), .A2(n3), .Y(n425) );
  AO222X1_RVT U411 ( .A1(N292), .A2(n133), .A3(n135), .A4(dma_in_cnt[1]), .A5(
        N279), .A6(n137), .Y(n275) );
  AO222X1_RVT U412 ( .A1(N291), .A2(n133), .A3(n135), .A4(dma_in_cnt[0]), .A5(
        N278), .A6(n137), .Y(n274) );
  AO222X1_RVT U413 ( .A1(N293), .A2(n133), .A3(n135), .A4(dma_in_cnt[2]), .A5(
        N280), .A6(n137), .Y(n273) );
  AO222X1_RVT U414 ( .A1(N294), .A2(n133), .A3(n135), .A4(dma_in_cnt[3]), .A5(
        N281), .A6(n137), .Y(n272) );
  AO222X1_RVT U415 ( .A1(N295), .A2(n133), .A3(n135), .A4(dma_in_cnt[4]), .A5(
        N282), .A6(n137), .Y(n271) );
  AO222X1_RVT U416 ( .A1(N296), .A2(n133), .A3(n135), .A4(dma_in_cnt[5]), .A5(
        N283), .A6(n137), .Y(n270) );
  AO222X1_RVT U417 ( .A1(N297), .A2(n133), .A3(n135), .A4(dma_in_cnt[6]), .A5(
        N284), .A6(n137), .Y(n269) );
  AO222X1_RVT U418 ( .A1(N298), .A2(n133), .A3(n135), .A4(dma_in_cnt[7]), .A5(
        N285), .A6(n137), .Y(n268) );
  AO222X1_RVT U419 ( .A1(N299), .A2(n133), .A3(n135), .A4(dma_in_cnt[8]), .A5(
        N286), .A6(n137), .Y(n267) );
  AO222X1_RVT U420 ( .A1(N300), .A2(n133), .A3(n135), .A4(dma_in_cnt[9]), .A5(
        N287), .A6(n137), .Y(n266) );
  AO222X1_RVT U421 ( .A1(N301), .A2(n133), .A3(n135), .A4(dma_in_cnt[10]), 
        .A5(N288), .A6(n137), .Y(n265) );
  AO222X1_RVT U422 ( .A1(N302), .A2(n133), .A3(n135), .A4(dma_in_cnt[11]), 
        .A5(N289), .A6(n137), .Y(n264) );
  AO222X1_RVT U423 ( .A1(N243), .A2(n134), .A3(n136), .A4(dma_out_cnt[1]), 
        .A5(N230), .A6(n138), .Y(n263) );
  AO222X1_RVT U424 ( .A1(N242), .A2(n134), .A3(n136), .A4(dma_out_cnt[0]), 
        .A5(N229), .A6(n138), .Y(n262) );
  AO222X1_RVT U425 ( .A1(N244), .A2(n134), .A3(n136), .A4(dma_out_cnt[2]), 
        .A5(N231), .A6(n138), .Y(n261) );
  AO222X1_RVT U426 ( .A1(N245), .A2(n134), .A3(n136), .A4(dma_out_cnt[3]), 
        .A5(N232), .A6(n138), .Y(n260) );
  AO222X1_RVT U427 ( .A1(N246), .A2(n134), .A3(n136), .A4(dma_out_cnt[4]), 
        .A5(N233), .A6(n138), .Y(n259) );
  AO222X1_RVT U428 ( .A1(N247), .A2(n134), .A3(n136), .A4(dma_out_cnt[5]), 
        .A5(N234), .A6(n138), .Y(n258) );
  AO222X1_RVT U429 ( .A1(N248), .A2(n134), .A3(n136), .A4(dma_out_cnt[6]), 
        .A5(N235), .A6(n138), .Y(n257) );
  AO222X1_RVT U430 ( .A1(N249), .A2(n134), .A3(n136), .A4(dma_out_cnt[7]), 
        .A5(N236), .A6(n138), .Y(n256) );
  AO222X1_RVT U431 ( .A1(N250), .A2(n134), .A3(n136), .A4(dma_out_cnt[8]), 
        .A5(N237), .A6(n138), .Y(n255) );
  AO222X1_RVT U432 ( .A1(N251), .A2(n134), .A3(n136), .A4(dma_out_cnt[9]), 
        .A5(N238), .A6(n138), .Y(n254) );
  AO222X1_RVT U433 ( .A1(N252), .A2(n134), .A3(n136), .A4(dma_out_cnt[10]), 
        .A5(N239), .A6(n138), .Y(n253) );
  AO222X1_RVT U434 ( .A1(N253), .A2(n134), .A3(n136), .A4(dma_out_cnt[11]), 
        .A5(N240), .A6(n138), .Y(n252) );
  NAND2X0_RVT U435 ( .A1(r5), .A2(csr[15]), .Y(n470) );
  NAND4X0_RVT U436 ( .A1(n472), .A2(csr[15]), .A3(n3), .A4(n24), .Y(n471) );
  NAND3X0_RVT U437 ( .A1(n473), .A2(n557), .A3(n623), .Y(n472) );
  INVX0_RVT U438 ( .A(buf0_rl), .Y(n623) );
  INVX0_RVT U439 ( .A(buf0_set), .Y(n473) );
  AND2X1_RVT U440 ( .A1(rst), .A2(n474), .Y(n251) );
  AO221X1_RVT U441 ( .A1(n475), .A2(dma_req), .A3(r1), .A4(n2), .A5(n477), .Y(
        n474) );
  AND4X1_RVT U442 ( .A1(n478), .A2(dma_req_in_hold2), .A3(dma_req_in_hold), 
        .A4(dma_req), .Y(n477) );
  AO21X1_RVT U443 ( .A1(n479), .A2(dma_req_out_hold), .A3(n626), .Y(n475) );
  INVX0_RVT U444 ( .A(dma_ack), .Y(n626) );
  NAND4X0_RVT U445 ( .A1(n592), .A2(n593), .A3(n591), .A4(n480), .Y(n239) );
  AND3X1_RVT U446 ( .A1(n595), .A2(n596), .A3(n594), .Y(n480) );
  AND4X1_RVT U447 ( .A1(n481), .A2(n482), .A3(n483), .A4(n484), .Y(ep_match)
         );
  XOR2X1_RVT U448 ( .A1(n558), .A2(ep_sel[3]), .Y(n484) );
  XOR2X1_RVT U449 ( .A1(n559), .A2(ep_sel[2]), .Y(n483) );
  XOR2X1_RVT U450 ( .A1(n560), .A2(ep_sel[1]), .Y(n482) );
  XOR2X1_RVT U451 ( .A1(n561), .A2(ep_sel[0]), .Y(n481) );
  AO222X1_RVT U452 ( .A1(n122), .A2(buf0[9]), .A3(n90), .A4(buf1[9]), .A5(n92), 
        .A6(csr_9), .Y(dout[9]) );
  AO222X1_RVT U453 ( .A1(n122), .A2(buf0[8]), .A3(n88), .A4(buf1[8]), .A5(n92), 
        .A6(csr_8), .Y(dout[8]) );
  AO222X1_RVT U454 ( .A1(n123), .A2(buf0[7]), .A3(n88), .A4(buf1[7]), .A5(n92), 
        .A6(csr_7), .Y(dout[7]) );
  AO221X1_RVT U455 ( .A1(n90), .A2(buf1[6]), .A3(n123), .A4(buf0[6]), .A5(n485), .Y(dout[6]) );
  AO221X1_RVT U456 ( .A1(n89), .A2(buf1[5]), .A3(n123), .A4(buf0[5]), .A5(n486), .Y(dout[5]) );
  AO22X1_RVT U457 ( .A1(n103), .A2(n44), .A3(n95), .A4(csr_5), .Y(n486) );
  AO221X1_RVT U458 ( .A1(n90), .A2(buf1[4]), .A3(n123), .A4(buf0[4]), .A5(n487), .Y(dout[4]) );
  AO22X1_RVT U459 ( .A1(n102), .A2(n47), .A3(n180), .A4(csr_4), .Y(n487) );
  AO221X1_RVT U460 ( .A1(n90), .A2(buf1[3]), .A3(n123), .A4(buf0[3]), .A5(n488), .Y(dout[3]) );
  AO22X1_RVT U461 ( .A1(n103), .A2(n46), .A3(n99), .A4(csr_3), .Y(n488) );
  AO222X1_RVT U462 ( .A1(n123), .A2(buf0[31]), .A3(n88), .A4(buf1[31]), .A5(
        n94), .A6(csr[31]), .Y(dout[31]) );
  AO222X1_RVT U463 ( .A1(n96), .A2(buf0[30]), .A3(n82), .A4(buf1[30]), .A5(n94), .A6(csr[30]), .Y(dout[30]) );
  AO221X1_RVT U464 ( .A1(n89), .A2(buf1[2]), .A3(n96), .A4(buf0[2]), .A5(n489), 
        .Y(dout[2]) );
  AO22X1_RVT U465 ( .A1(n102), .A2(n45), .A3(n95), .A4(csr_2), .Y(n489) );
  AO221X1_RVT U466 ( .A1(n82), .A2(buf1[29]), .A3(n122), .A4(buf0[29]), .A5(
        n490), .Y(dout[29]) );
  AO22X1_RVT U467 ( .A1(n103), .A2(n5), .A3(n92), .A4(csr[29]), .Y(n490) );
  AO221X1_RVT U468 ( .A1(n89), .A2(buf1[28]), .A3(n97), .A4(buf0[28]), .A5(
        n491), .Y(dout[28]) );
  AO221X1_RVT U469 ( .A1(n91), .A2(buf1[27]), .A3(n96), .A4(buf0[27]), .A5(
        n492), .Y(dout[27]) );
  AO221X1_RVT U470 ( .A1(n89), .A2(buf1[26]), .A3(n122), .A4(buf0[26]), .A5(
        n493), .Y(dout[26]) );
  AO221X1_RVT U471 ( .A1(n91), .A2(buf1[25]), .A3(n96), .A4(buf0[25]), .A5(
        n494), .Y(dout[25]) );
  AO221X1_RVT U472 ( .A1(n461), .A2(buf1[24]), .A3(n97), .A4(buf0[24]), .A5(
        n495), .Y(dout[24]) );
  AO222X1_RVT U473 ( .A1(n123), .A2(buf0[23]), .A3(n89), .A4(buf1[23]), .A5(
        n99), .A6(csr[23]), .Y(dout[23]) );
  AO222X1_RVT U474 ( .A1(n97), .A2(buf0[22]), .A3(n90), .A4(buf1[22]), .A5(n94), .A6(csr[22]), .Y(dout[22]) );
  AO221X1_RVT U475 ( .A1(n90), .A2(buf1[21]), .A3(n96), .A4(buf0[21]), .A5(
        n496), .Y(dout[21]) );
  AO221X1_RVT U476 ( .A1(n90), .A2(buf1[20]), .A3(n123), .A4(buf0[20]), .A5(
        n497), .Y(dout[20]) );
  AO221X1_RVT U477 ( .A1(n89), .A2(buf1[1]), .A3(n97), .A4(buf0[1]), .A5(n498), 
        .Y(dout[1]) );
  AO221X1_RVT U478 ( .A1(n89), .A2(buf1[19]), .A3(n122), .A4(buf0[19]), .A5(
        n499), .Y(dout[19]) );
  AO221X1_RVT U479 ( .A1(n82), .A2(buf1[18]), .A3(n97), .A4(buf0[18]), .A5(
        n500), .Y(dout[18]) );
  AO221X1_RVT U480 ( .A1(n91), .A2(buf1[17]), .A3(n96), .A4(buf0[17]), .A5(
        n501), .Y(dout[17]) );
  AO221X1_RVT U481 ( .A1(n82), .A2(buf1[16]), .A3(n122), .A4(buf0[16]), .A5(
        n502), .Y(dout[16]) );
  AO222X1_RVT U482 ( .A1(n96), .A2(buf0[15]), .A3(n91), .A4(buf1[15]), .A5(n95), .A6(csr[15]), .Y(dout[15]) );
  AO22X1_RVT U483 ( .A1(n97), .A2(buf0[14]), .A3(n82), .A4(buf1[14]), .Y(
        dout[14]) );
  AO222X1_RVT U484 ( .A1(n97), .A2(buf0[13]), .A3(n88), .A4(buf1[13]), .A5(n95), .A6(csr_13), .Y(dout[13]) );
  AO222X1_RVT U485 ( .A1(n122), .A2(buf0[12]), .A3(n461), .A4(buf1[12]), .A5(
        n99), .A6(csr_12), .Y(dout[12]) );
  AO222X1_RVT U486 ( .A1(n96), .A2(buf0[11]), .A3(n91), .A4(buf1[11]), .A5(n94), .A6(csr_11), .Y(dout[11]) );
  AO222X1_RVT U487 ( .A1(n97), .A2(buf0[10]), .A3(n82), .A4(buf1[10]), .A5(n92), .A6(csr_10), .Y(dout[10]) );
  AO221X1_RVT U488 ( .A1(n91), .A2(buf1[0]), .A3(n122), .A4(buf0[0]), .A5(n503), .Y(dout[0]) );
  AND2X1_RVT U489 ( .A1(n504), .A2(n625), .Y(n180) );
  AND4X1_RVT U490 ( .A1(n75), .A2(n24), .A3(n2), .A4(n505), .Y(N361) );
  AOI21X1_RVT U491 ( .A1(n506), .A2(n507), .A3(n35), .Y(n505) );
  NAND3X0_RVT U492 ( .A1(n508), .A2(csr[26]), .A3(n32), .Y(n507) );
  AO22X1_RVT U493 ( .A1(n610), .A2(buf0_orig[30]), .A3(n509), .A4(n510), .Y(
        n508) );
  NAND2X0_RVT U494 ( .A1(n600), .A2(dma_in_cnt[11]), .Y(n510) );
  AO21X1_RVT U495 ( .A1(n620), .A2(buf0_orig[29]), .A3(n511), .Y(n509) );
  OA221X1_RVT U496 ( .A1(n619), .A2(buf0_orig[28]), .A3(n620), .A4(
        buf0_orig[29]), .A5(n512), .Y(n511) );
  AO221X1_RVT U497 ( .A1(n619), .A2(buf0_orig[28]), .A3(n618), .A4(
        buf0_orig[27]), .A5(n513), .Y(n512) );
  OA221X1_RVT U498 ( .A1(n618), .A2(buf0_orig[27]), .A3(n617), .A4(
        buf0_orig[26]), .A5(n514), .Y(n513) );
  AO221X1_RVT U499 ( .A1(n617), .A2(buf0_orig[26]), .A3(n616), .A4(
        buf0_orig[25]), .A5(n515), .Y(n514) );
  OA221X1_RVT U500 ( .A1(n616), .A2(buf0_orig[25]), .A3(n615), .A4(
        buf0_orig[24]), .A5(n516), .Y(n515) );
  AO221X1_RVT U501 ( .A1(n615), .A2(buf0_orig[24]), .A3(n614), .A4(
        buf0_orig[23]), .A5(n517), .Y(n516) );
  OA221X1_RVT U502 ( .A1(n614), .A2(buf0_orig[23]), .A3(n613), .A4(
        buf0_orig[22]), .A5(n518), .Y(n517) );
  AO222X1_RVT U503 ( .A1(n519), .A2(buf0_orig[21]), .A3(n612), .A4(n520), .A5(
        n613), .A6(buf0_orig[22]), .Y(n518) );
  OR2X1_RVT U504 ( .A1(buf0_orig[21]), .A2(n519), .Y(n520) );
  AO22X1_RVT U505 ( .A1(n609), .A2(buf0_orig[20]), .A3(n521), .A4(n611), .Y(
        n519) );
  OA21X1_RVT U506 ( .A1(n609), .A2(buf0_orig[20]), .A3(buf0_orig[19]), .Y(n521) );
  NAND2X0_RVT U507 ( .A1(n479), .A2(n522), .Y(n506) );
  OR3X1_RVT U508 ( .A1(dma_out_cnt[0]), .A2(n234), .A3(dma_out_cnt[1]), .Y(
        n522) );
  NAND4X0_RVT U509 ( .A1(n564), .A2(n565), .A3(n523), .A4(n524), .Y(n234) );
  AND3X1_RVT U510 ( .A1(n569), .A2(n570), .A3(n525), .Y(n524) );
  AND3X1_RVT U511 ( .A1(n53), .A2(n52), .A3(n571), .Y(n525) );
  AND3X1_RVT U512 ( .A1(n567), .A2(n568), .A3(n566), .Y(n523) );
  INVX0_RVT U513 ( .A(n478), .Y(n479) );
  NAND2X0_RVT U514 ( .A1(n174), .A2(csr[27]), .Y(n478) );
  AND3X1_RVT U515 ( .A1(n526), .A2(csr[26]), .A3(n32), .Y(N348) );
  NAND4X0_RVT U516 ( .A1(n602), .A2(n601), .A3(n527), .A4(n528), .Y(n526) );
  AND3X1_RVT U517 ( .A1(n606), .A2(n607), .A3(n529), .Y(n528) );
  AND3X1_RVT U518 ( .A1(n38), .A2(n600), .A3(n37), .Y(n529) );
  AND3X1_RVT U519 ( .A1(n604), .A2(n605), .A3(n603), .Y(n527) );
  AO22X1_RVT U520 ( .A1(n610), .A2(n43), .A3(n530), .A4(n531), .Y(N347) );
  NAND2X0_RVT U521 ( .A1(n621), .A2(dma_in_cnt[11]), .Y(n531) );
  AO21X1_RVT U522 ( .A1(n620), .A2(n42), .A3(n532), .Y(n530) );
  OA221X1_RVT U523 ( .A1(n619), .A2(n14), .A3(n620), .A4(n42), .A5(n533), .Y(
        n532) );
  AO221X1_RVT U524 ( .A1(n618), .A2(n41), .A3(n619), .A4(n14), .A5(n534), .Y(
        n533) );
  OA221X1_RVT U525 ( .A1(n618), .A2(n41), .A3(n617), .A4(n15), .A5(n535), .Y(
        n534) );
  AO221X1_RVT U526 ( .A1(n616), .A2(n39), .A3(n617), .A4(n15), .A5(n536), .Y(
        n535) );
  OA221X1_RVT U527 ( .A1(n616), .A2(n39), .A3(n615), .A4(n13), .A5(n537), .Y(
        n536) );
  AO221X1_RVT U528 ( .A1(n614), .A2(n40), .A3(n615), .A4(n13), .A5(n538), .Y(
        n537) );
  OA221X1_RVT U529 ( .A1(n614), .A2(n40), .A3(n613), .A4(n12), .A5(n539), .Y(
        n538) );
  AO222X1_RVT U530 ( .A1(n540), .A2(n34), .A3(n612), .A4(n541), .A5(n613), 
        .A6(n12), .Y(n539) );
  OR2X1_RVT U531 ( .A1(n34), .A2(n540), .Y(n541) );
  AO22X1_RVT U532 ( .A1(n609), .A2(n36), .A3(n542), .A4(n611), .Y(n540) );
  OA21X1_RVT U533 ( .A1(n609), .A2(n36), .A3(\buf0_orig_m3[0] ), .Y(n542) );
  NAND4X0_RVT U534 ( .A1(n610), .A2(n620), .A3(n543), .A4(n619), .Y(N319) );
  OA21X1_RVT U535 ( .A1(n618), .A2(csr_10), .A3(n544), .Y(n543) );
  AO221X1_RVT U536 ( .A1(n618), .A2(csr_10), .A3(n617), .A4(csr_9), .A5(n545), 
        .Y(n544) );
  OA221X1_RVT U537 ( .A1(n616), .A2(csr_8), .A3(n617), .A4(csr_9), .A5(n546), 
        .Y(n545) );
  AO221X1_RVT U538 ( .A1(n616), .A2(csr_8), .A3(n615), .A4(csr_7), .A5(n547), 
        .Y(n546) );
  OA221X1_RVT U539 ( .A1(n614), .A2(csr_6), .A3(n615), .A4(csr_7), .A5(n548), 
        .Y(n547) );
  AO221X1_RVT U540 ( .A1(n614), .A2(csr_6), .A3(n613), .A4(csr_5), .A5(n549), 
        .Y(n548) );
  OA221X1_RVT U541 ( .A1(n612), .A2(csr_4), .A3(n613), .A4(csr_5), .A5(n550), 
        .Y(n549) );
  AO222X1_RVT U542 ( .A1(n612), .A2(csr_4), .A3(n551), .A4(n611), .A5(n609), 
        .A6(csr_3), .Y(n550) );
  OA21X1_RVT U543 ( .A1(n609), .A2(csr_3), .A3(csr_2), .Y(n551) );
  NAND2X0_RVT U544 ( .A1(n552), .A2(n553), .Y(N222) );
  OA222X1_RVT U545 ( .A1(n576), .A2(n588), .A3(n573), .A4(n554), .A5(n577), 
        .A6(n590), .Y(n553) );
  OA222X1_RVT U546 ( .A1(n572), .A2(n579), .A3(n575), .A4(n586), .A5(n574), 
        .A6(n582), .Y(n552) );
  NAND2X0_RVT U547 ( .A1(n555), .A2(n556), .Y(N221) );
  OA222X1_RVT U548 ( .A1(n587), .A2(n588), .A3(n580), .A4(n554), .A5(n589), 
        .A6(n590), .Y(n556) );
  AND2X1_RVT U549 ( .A1(n583), .A2(n584), .Y(n554) );
  OA222X1_RVT U550 ( .A1(n578), .A2(n579), .A3(n585), .A4(n586), .A5(n581), 
        .A6(n582), .Y(n555) );
endmodule


module usbf_ep_rf_2_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  FADDX1_RVT U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .S(DIFF[11]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n1), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1_RVT U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(
        DIFF[9]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1_RVT U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1_RVT U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(
        DIFF[8]) );
  FADDX1_RVT U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  INVX1_RVT U1 ( .A(B[0]), .Y(n3) );
  INVX1_RVT U2 ( .A(B[10]), .Y(n12) );
  INVX1_RVT U3 ( .A(B[8]), .Y(n10) );
  INVX1_RVT U4 ( .A(B[7]), .Y(n9) );
  INVX1_RVT U5 ( .A(B[6]), .Y(n8) );
  INVX1_RVT U6 ( .A(B[5]), .Y(n7) );
  INVX1_RVT U7 ( .A(B[4]), .Y(n6) );
  INVX1_RVT U8 ( .A(B[3]), .Y(n5) );
  INVX1_RVT U9 ( .A(B[2]), .Y(n4) );
  INVX1_RVT U10 ( .A(B[9]), .Y(n11) );
  OR2X1_RVT U11 ( .A1(n3), .A2(A[0]), .Y(carry[1]) );
  INVX1_RVT U12 ( .A(B[1]), .Y(n1) );
  XNOR2X1_RVT U13 ( .A1(A[0]), .A2(n3), .Y(DIFF[0]) );
  INVX1_RVT U14 ( .A(B[11]), .Y(n2) );
endmodule


module usbf_ep_rf_2_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [12:0] carry;

  FADDX1_RVT U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1_RVT U2_8 ( .A(A[8]), .B(n1), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  INVX1_RVT U1 ( .A(B[0]), .Y(n9) );
  INVX1_RVT U2 ( .A(B[8]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(n9), .A2(A[0]), .Y(carry[1]) );
  INVX1_RVT U4 ( .A(B[1]), .Y(n8) );
  INVX1_RVT U5 ( .A(B[2]), .Y(n7) );
  INVX1_RVT U6 ( .A(B[4]), .Y(n5) );
  INVX1_RVT U7 ( .A(B[6]), .Y(n3) );
  INVX1_RVT U8 ( .A(B[3]), .Y(n6) );
  INVX1_RVT U9 ( .A(B[5]), .Y(n4) );
  INVX1_RVT U10 ( .A(B[7]), .Y(n2) );
  XNOR2X1_RVT U11 ( .A1(A[10]), .A2(carry[10]), .Y(DIFF[10]) );
  XNOR2X1_RVT U12 ( .A1(A[9]), .A2(carry[9]), .Y(DIFF[9]) );
  XNOR2X1_RVT U13 ( .A1(A[0]), .A2(n9), .Y(DIFF[0]) );
  XNOR2X1_RVT U14 ( .A1(A[11]), .A2(carry[11]), .Y(DIFF[11]) );
  OR2X1_RVT U15 ( .A1(carry[10]), .A2(A[10]), .Y(carry[11]) );
  OR2X1_RVT U16 ( .A1(carry[9]), .A2(A[9]), .Y(carry[10]) );
endmodule


module usbf_ep_rf_2_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HADDX1_RVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[11]), .A2(A[11]), .Y(SUM[11]) );
endmodule


module usbf_ep_rf_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;

  wire   [11:1] carry;

  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
  XOR2X1_RVT U2 ( .A1(A[10]), .A2(carry[10]), .Y(SUM[10]) );
  XOR2X1_RVT U3 ( .A1(A[9]), .A2(carry[9]), .Y(SUM[9]) );
  XOR2X1_RVT U4 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  XOR2X1_RVT U5 ( .A1(A[11]), .A2(carry[11]), .Y(SUM[11]) );
  AND2X1_RVT U6 ( .A1(A[9]), .A2(carry[9]), .Y(carry[10]) );
  AND2X1_RVT U7 ( .A1(A[10]), .A2(carry[10]), .Y(carry[11]) );
endmodule


module usbf_ep_rf_2_DW01_dec_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20;

  INVX1_RVT U1 ( .A(n20), .Y(n1) );
  INVX1_RVT U2 ( .A(n11), .Y(n2) );
  INVX1_RVT U3 ( .A(n12), .Y(n3) );
  INVX1_RVT U4 ( .A(n13), .Y(n4) );
  INVX1_RVT U5 ( .A(n14), .Y(n5) );
  INVX1_RVT U6 ( .A(n15), .Y(n6) );
  INVX1_RVT U7 ( .A(n16), .Y(n7) );
  INVX1_RVT U8 ( .A(n17), .Y(n8) );
  INVX1_RVT U9 ( .A(A[0]), .Y(SUM[0]) );
  INVX1_RVT U10 ( .A(n18), .Y(n9) );
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


module usbf_ep_rf_2 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;
  wire   csr_13, csr_12, csr_11, csr_10, csr_9, csr_8, csr_7, csr_6, csr_5,
         csr_4, csr_3, csr_2, csr_1, csr_0, N221, N222, N229, N230, N231, N232,
         N233, N234, N235, N236, N237, N238, N239, N240, N242, N243, N244,
         N245, N246, N247, N248, N249, N250, N251, N252, N253,
         dma_req_out_hold, N278, N279, N280, N281, N282, N283, N284, N285,
         N286, N287, N288, N289, N291, N292, N293, N294, N295, N296, N297,
         N298, N299, N300, N301, N302, N319, N321, N322, N323, N324, N325,
         N326, N327, N328, N329, N330, N331, N332, N333, N336, N337, N338,
         N339, N340, N341, N342, N343, N344, N345, N346, \buf0_orig_m3[0] ,
         N347, dma_req_in_hold2, N348, dma_req_in_hold, r1, r2, r4, r5, N361,
         dma_ack_wr1, \sub_449/carry[2] , \sub_449/carry[3] ,
         \sub_449/carry[4] , \sub_449/carry[5] , \sub_449/carry[6] ,
         \sub_449/carry[7] , \sub_449/carry[8] , \sub_449/carry[9] ,
         \sub_449/carry[10] , \sub_449/carry[11] , n1, n2, n3, n4, n5, n7, n8,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n27, n30, n31, n33, n34, n36, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n54, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n72, n73, n74, n75, n76, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n235, n236, n237, n238,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807;
  wire   [31:0] buf0_orig;
  wire   [11:0] dma_out_cnt;
  wire   [11:0] dma_in_cnt;
  wire   [11:0] dma_out_left;
  assign csr[14] = 1'b0;
  assign csr[13] = csr_13;
  assign csr[12] = csr_12;
  assign csr[11] = csr_11;
  assign csr[10] = csr_10;
  assign csr[9] = csr_9;
  assign csr[8] = csr_8;
  assign csr[7] = csr_7;
  assign csr[6] = csr_6;
  assign csr[5] = csr_5;
  assign csr[4] = csr_4;
  assign csr[3] = csr_3;
  assign csr[2] = csr_2;
  assign csr[1] = csr_1;
  assign csr[0] = csr_0;

  usbf_ep_rf_2_DW01_sub_1 sub_433 ( .A(buf0_orig[30:19]), .B(dma_out_cnt), 
        .CI(1'b0), .DIFF({N332, N331, N330, N329, N328, N327, N326, N325, N324, 
        N323, N322, N321}) );
  usbf_ep_rf_2_DW01_sub_2 sub_422 ( .A(dma_in_cnt), .B({1'b0, 1'b0, 1'b0, 
        csr_10, csr_9, csr_8, csr_7, csr_6, csr_5, csr_4, csr_3, csr_2}), .CI(
        1'b0), .DIFF({N302, N301, N300, N299, N298, N297, N296, N295, N294, 
        N293, N292, N291}) );
  usbf_ep_rf_2_DW01_inc_0 add_419_S2 ( .A(dma_in_cnt), .SUM({N289, N288, N287, 
        N286, N285, N284, N283, N282, N281, N280, N279, N278}) );
  usbf_ep_rf_2_DW01_add_0 add_397 ( .A(dma_out_cnt), .B({1'b0, 1'b0, 1'b0, 
        csr_10, csr_9, csr_8, csr_7, csr_6, csr_5, csr_4, csr_3, csr_2}), .CI(
        1'b0), .SUM({N253, N252, N251, N250, N249, N248, N247, N246, N245, 
        N244, N243, N242}) );
  usbf_ep_rf_2_DW01_dec_0 sub_394_S2 ( .A(dma_out_cnt), .SUM({N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229}) );
  SDFFSSRX1_RVT int_re_reg ( .RSTB(n624), .SETB(1'b1), .D(adr[0]), .SI(1'b0), 
        .SE(n623), .CLK(n162), .QN(n78) );
  DFFX1_RVT \ienb_reg[5]  ( .D(n653), .CLK(n149), .Q(n48), .QN(n576) );
  DFFX1_RVT \ienb_reg[4]  ( .D(n654), .CLK(n149), .Q(n20), .QN(n574) );
  DFFX1_RVT \ienb_reg[3]  ( .D(n655), .CLK(n150), .Q(n51), .QN(n572) );
  DFFX1_RVT \ienb_reg[2]  ( .D(n656), .CLK(n149), .Q(n21), .QN(n575) );
  DFFX1_RVT \ienb_reg[1]  ( .D(n657), .CLK(n149), .Q(n19), .QN(n573) );
  DFFX1_RVT \ienb_reg[0]  ( .D(n658), .CLK(n149), .Q(n22), .QN(n571) );
  DFFX1_RVT \iena_reg[5]  ( .D(n659), .CLK(n149), .Q(n8), .QN(n588) );
  DFFX1_RVT \iena_reg[4]  ( .D(n660), .CLK(n149), .Q(n5), .QN(n584) );
  DFFX1_RVT \iena_reg[3]  ( .D(n661), .CLK(n150), .Q(n49), .QN(n579) );
  DFFX1_RVT \iena_reg[2]  ( .D(n662), .CLK(n150), .Q(n23), .QN(n586) );
  DFFX1_RVT \iena_reg[1]  ( .D(n663), .CLK(n150), .Q(n7), .QN(n580) );
  DFFX1_RVT \iena_reg[0]  ( .D(n664), .CLK(n150), .Q(n11), .QN(n577) );
  DFFX1_RVT \buf0_orig_reg[31]  ( .D(n665), .CLK(n150), .Q(n75) );
  DFFX1_RVT \buf0_orig_reg[18]  ( .D(n678), .CLK(n151), .Q(n74) );
  DFFX1_RVT \buf0_orig_reg[17]  ( .D(n679), .CLK(n151), .Q(n73) );
  DFFX1_RVT \buf0_orig_reg[16]  ( .D(n680), .CLK(n151), .Q(n72) );
  DFFX1_RVT \buf0_orig_reg[15]  ( .D(n681), .CLK(n151), .Q(n70) );
  DFFX1_RVT \buf0_orig_reg[14]  ( .D(n682), .CLK(n151), .Q(n69) );
  DFFX1_RVT \buf0_orig_reg[13]  ( .D(n683), .CLK(n151), .Q(n68) );
  DFFX1_RVT \buf0_orig_reg[12]  ( .D(n684), .CLK(n152), .Q(n67) );
  DFFX1_RVT \buf0_orig_reg[11]  ( .D(n685), .CLK(n152), .Q(n66) );
  DFFX1_RVT \buf0_orig_reg[10]  ( .D(n686), .CLK(n152), .Q(n65) );
  DFFX1_RVT \buf0_orig_reg[9]  ( .D(n687), .CLK(n152), .Q(n64) );
  DFFX1_RVT \buf0_orig_reg[8]  ( .D(n688), .CLK(n152), .Q(n63) );
  DFFX1_RVT \buf0_orig_reg[7]  ( .D(n689), .CLK(n152), .Q(n62) );
  DFFX1_RVT \buf0_orig_reg[6]  ( .D(n690), .CLK(n152), .Q(n61) );
  DFFX1_RVT \buf0_orig_reg[5]  ( .D(n691), .CLK(n152), .Q(n60) );
  DFFX1_RVT \buf0_orig_reg[4]  ( .D(n692), .CLK(n152), .Q(n59) );
  DFFX1_RVT \buf0_orig_reg[3]  ( .D(n693), .CLK(n152), .Q(n58) );
  DFFX1_RVT \buf0_orig_reg[2]  ( .D(n694), .CLK(n152), .Q(n57) );
  DFFX1_RVT \buf0_orig_reg[1]  ( .D(n695), .CLK(n152), .Q(n56) );
  DFFX1_RVT \buf0_orig_reg[0]  ( .D(n696), .CLK(n153), .Q(n54) );
  DFFX1_RVT ep_match_r_reg ( .D(ep_match), .CLK(n153), .Q(n4) );
  DFFX1_RVT \int_stat_reg[6]  ( .D(n761), .CLK(n158), .Q(n44), .QN(n589) );
  DFFX1_RVT \int_stat_reg[5]  ( .D(n762), .CLK(n158), .Q(n45), .QN(n585) );
  DFFX1_RVT \int_stat_reg[4]  ( .D(n763), .CLK(n158), .Q(n50), .QN(n583) );
  DFFX1_RVT \int_stat_reg[3]  ( .D(n764), .CLK(n158), .Q(n47), .QN(n582) );
  DFFX1_RVT \int_stat_reg[2]  ( .D(n765), .CLK(n158), .Q(n46), .QN(n587) );
  DFFX1_RVT \int_stat_reg[1]  ( .D(n766), .CLK(n159), .Q(n17), .QN(n581) );
  DFFX1_RVT \int_stat_reg[0]  ( .D(n767), .CLK(n159), .Q(n18), .QN(n578) );
  DFFSSRX1_RVT set_r_reg ( .D(buf0_set), .SETB(n622), .RSTB(r5), .CLK(n147), 
        .QN(n556) );
  DFFX1_RVT dma_out_buf_avail_reg ( .D(N333), .CLK(n161), .Q(dma_out_buf_avail) );
  DFFX1_RVT \csr1_reg[12]  ( .D(n627), .CLK(n154), .Q(csr[27]), .QN(n807) );
  DFFX1_RVT \csr1_reg[11]  ( .D(n628), .CLK(n147), .Q(csr[26]), .QN(n175) );
  DFFX1_RVT \csr1_reg[10]  ( .D(n629), .CLK(n147), .Q(csr[25]) );
  DFFX1_RVT \csr1_reg[9]  ( .D(n630), .CLK(n147), .Q(csr[24]) );
  DFFX1_RVT \csr1_reg[6]  ( .D(n631), .CLK(n147), .Q(csr[21]), .QN(n557) );
  DFFX1_RVT \csr1_reg[5]  ( .D(n632), .CLK(n148), .Q(csr[20]), .QN(n558) );
  DFFX1_RVT \csr1_reg[4]  ( .D(n633), .CLK(n147), .Q(csr[19]), .QN(n559) );
  DFFX1_RVT \csr1_reg[3]  ( .D(n634), .CLK(n147), .Q(csr[18]), .QN(n560) );
  DFFX1_RVT \csr1_reg[2]  ( .D(n635), .CLK(n147), .Q(csr[17]) );
  DFFX1_RVT \csr1_reg[1]  ( .D(n636), .CLK(n147), .Q(csr[16]) );
  DFFX1_RVT \csr1_reg[0]  ( .D(n637), .CLK(n147), .Q(csr[15]), .QN(n806) );
  DFFX1_RVT ots_stop_reg ( .D(n626), .CLK(n148), .Q(csr_13) );
  DFFX1_RVT \csr1_reg[8]  ( .D(n639), .CLK(n148), .Q(csr[23]) );
  DFFX1_RVT \csr1_reg[7]  ( .D(n638), .CLK(n148), .Q(csr[22]) );
  DFFX1_RVT \csr0_reg[12]  ( .D(n640), .CLK(n148), .Q(csr_12) );
  DFFX1_RVT \csr0_reg[11]  ( .D(n641), .CLK(n148), .Q(csr_11) );
  DFFX1_RVT \csr0_reg[1]  ( .D(n651), .CLK(n149), .Q(csr_1), .QN(n561) );
  DFFX1_RVT \csr0_reg[0]  ( .D(n652), .CLK(n149), .Q(csr_0), .QN(n562) );
  DFFX1_RVT \buf1_reg[1]  ( .D(n760), .CLK(n153), .Q(buf1[1]) );
  DFFX1_RVT \buf1_reg[2]  ( .D(n759), .CLK(n153), .Q(buf1[2]) );
  DFFX1_RVT \buf1_reg[3]  ( .D(n758), .CLK(n153), .Q(buf1[3]) );
  DFFX1_RVT \buf1_reg[4]  ( .D(n757), .CLK(n153), .Q(buf1[4]) );
  DFFX1_RVT \buf1_reg[5]  ( .D(n756), .CLK(n153), .Q(buf1[5]) );
  DFFX1_RVT \buf1_reg[6]  ( .D(n755), .CLK(n153), .Q(buf1[6]) );
  DFFX1_RVT \buf1_reg[7]  ( .D(n754), .CLK(n153), .Q(buf1[7]) );
  DFFX1_RVT \buf1_reg[8]  ( .D(n753), .CLK(n153), .Q(buf1[8]) );
  DFFX1_RVT \buf1_reg[9]  ( .D(n752), .CLK(n153), .Q(buf1[9]) );
  DFFX1_RVT \buf1_reg[10]  ( .D(n751), .CLK(n153), .Q(buf1[10]) );
  DFFX1_RVT \buf1_reg[11]  ( .D(n750), .CLK(n154), .Q(buf1[11]) );
  DFFX1_RVT \buf1_reg[12]  ( .D(n749), .CLK(n154), .Q(buf1[12]) );
  DFFX1_RVT \buf1_reg[13]  ( .D(n748), .CLK(n154), .Q(buf1[13]) );
  DFFX1_RVT \buf1_reg[14]  ( .D(n747), .CLK(n154), .Q(buf1[14]) );
  DFFX1_RVT \buf1_reg[15]  ( .D(n746), .CLK(n154), .Q(buf1[15]) );
  DFFX1_RVT \buf1_reg[16]  ( .D(n745), .CLK(n154), .Q(buf1[16]) );
  DFFX1_RVT \buf1_reg[17]  ( .D(n744), .CLK(n154), .Q(buf1[17]) );
  DFFX1_RVT \buf1_reg[18]  ( .D(n743), .CLK(n154), .Q(buf1[18]) );
  DFFX1_RVT \buf1_reg[19]  ( .D(n742), .CLK(n154), .Q(buf1[19]) );
  DFFX1_RVT \buf1_reg[20]  ( .D(n741), .CLK(n154), .Q(buf1[20]) );
  DFFX1_RVT \buf1_reg[21]  ( .D(n740), .CLK(n154), .Q(buf1[21]) );
  DFFX1_RVT \buf1_reg[22]  ( .D(n739), .CLK(n155), .Q(buf1[22]) );
  DFFX1_RVT \buf1_reg[23]  ( .D(n738), .CLK(n155), .Q(buf1[23]) );
  DFFX1_RVT \buf1_reg[24]  ( .D(n737), .CLK(n155), .Q(buf1[24]) );
  DFFX1_RVT \buf1_reg[25]  ( .D(n736), .CLK(n155), .Q(buf1[25]) );
  DFFX1_RVT \buf1_reg[26]  ( .D(n735), .CLK(n155), .Q(buf1[26]) );
  DFFX1_RVT \buf1_reg[27]  ( .D(n734), .CLK(n155), .Q(buf1[27]) );
  DFFX1_RVT \buf1_reg[28]  ( .D(n733), .CLK(n155), .Q(buf1[28]) );
  DFFX1_RVT \buf1_reg[29]  ( .D(n732), .CLK(n155), .Q(buf1[29]) );
  DFFX1_RVT \buf1_reg[30]  ( .D(n731), .CLK(n155), .Q(buf1[30]) );
  DFFX1_RVT \buf1_reg[31]  ( .D(n730), .CLK(n155), .Q(buf1[31]) );
  DFFX1_RVT \buf1_reg[0]  ( .D(n729), .CLK(n155), .Q(buf1[0]) );
  DFFX1_RVT \buf0_reg[31]  ( .D(n728), .CLK(n155), .Q(buf0[31]) );
  DFFX1_RVT \buf0_reg[30]  ( .D(n727), .CLK(n156), .Q(buf0[30]) );
  DFFX1_RVT \buf0_reg[29]  ( .D(n726), .CLK(n156), .Q(buf0[29]) );
  DFFX1_RVT \buf0_reg[28]  ( .D(n725), .CLK(n156), .Q(buf0[28]) );
  DFFX1_RVT \buf0_reg[27]  ( .D(n724), .CLK(n156), .Q(buf0[27]) );
  DFFX1_RVT \buf0_reg[26]  ( .D(n723), .CLK(n156), .Q(buf0[26]) );
  DFFX1_RVT \buf0_reg[25]  ( .D(n722), .CLK(n156), .Q(buf0[25]) );
  DFFX1_RVT \buf0_reg[24]  ( .D(n721), .CLK(n156), .Q(buf0[24]) );
  DFFX1_RVT \buf0_reg[23]  ( .D(n720), .CLK(n156), .Q(buf0[23]) );
  DFFX1_RVT \buf0_reg[22]  ( .D(n719), .CLK(n156), .Q(buf0[22]) );
  DFFX1_RVT \buf0_reg[21]  ( .D(n718), .CLK(n156), .Q(buf0[21]) );
  DFFX1_RVT \buf0_reg[20]  ( .D(n717), .CLK(n156), .Q(buf0[20]) );
  DFFX1_RVT \buf0_reg[19]  ( .D(n716), .CLK(n156), .Q(buf0[19]) );
  DFFX1_RVT \buf0_reg[18]  ( .D(n715), .CLK(n157), .Q(buf0[18]) );
  DFFX1_RVT \buf0_reg[17]  ( .D(n714), .CLK(n157), .Q(buf0[17]) );
  DFFX1_RVT \buf0_reg[16]  ( .D(n713), .CLK(n157), .Q(buf0[16]) );
  DFFX1_RVT \buf0_reg[15]  ( .D(n712), .CLK(n157), .Q(buf0[15]) );
  DFFX1_RVT \buf0_reg[14]  ( .D(n711), .CLK(n157), .Q(buf0[14]) );
  DFFX1_RVT \buf0_reg[13]  ( .D(n710), .CLK(n157), .Q(buf0[13]) );
  DFFX1_RVT \buf0_reg[12]  ( .D(n709), .CLK(n157), .Q(buf0[12]) );
  DFFX1_RVT \buf0_reg[11]  ( .D(n708), .CLK(n157), .Q(buf0[11]) );
  DFFX1_RVT \buf0_reg[10]  ( .D(n707), .CLK(n157), .Q(buf0[10]) );
  DFFX1_RVT \buf0_reg[9]  ( .D(n706), .CLK(n157), .Q(buf0[9]) );
  DFFX1_RVT \buf0_reg[8]  ( .D(n705), .CLK(n157), .Q(buf0[8]) );
  DFFX1_RVT \buf0_reg[7]  ( .D(n704), .CLK(n157), .Q(buf0[7]) );
  DFFX1_RVT \buf0_reg[6]  ( .D(n703), .CLK(n158), .Q(buf0[6]) );
  DFFX1_RVT \buf0_reg[5]  ( .D(n702), .CLK(n158), .Q(buf0[5]) );
  DFFX1_RVT \buf0_reg[4]  ( .D(n701), .CLK(n158), .Q(buf0[4]) );
  DFFX1_RVT \buf0_reg[3]  ( .D(n700), .CLK(n158), .Q(buf0[3]) );
  DFFX1_RVT \buf0_reg[2]  ( .D(n699), .CLK(n158), .Q(buf0[2]) );
  DFFX1_RVT \buf0_reg[1]  ( .D(n698), .CLK(n158), .Q(buf0[1]) );
  DFFX1_RVT \buf0_reg[0]  ( .D(n697), .CLK(n158), .Q(buf0[0]) );
  DFFX1_RVT \uc_dpd_reg[1]  ( .D(n768), .CLK(n159), .Q(csr[29]) );
  DFFX1_RVT \uc_dpd_reg[0]  ( .D(n769), .CLK(n159), .Q(csr[28]) );
  DFFX1_RVT \uc_bsel_reg[1]  ( .D(n770), .CLK(n159), .Q(csr[31]) );
  DFFX1_RVT \uc_bsel_reg[0]  ( .D(n771), .CLK(n159), .Q(csr[30]) );
  DFFX1_RVT \dma_out_left_reg[10]  ( .D(N331), .CLK(n161), .Q(dma_out_left[10]) );
  DFFX1_RVT \dma_out_left_reg[9]  ( .D(N330), .CLK(n161), .Q(dma_out_left[9])
         );
  DFFX1_RVT \dma_out_left_reg[0]  ( .D(N321), .CLK(n160), .QN(n82) );
  DFFX1_RVT \dma_out_left_reg[1]  ( .D(N322), .CLK(n160), .QN(n30) );
  DFFX1_RVT \dma_out_left_reg[2]  ( .D(N323), .CLK(n160), .QN(n12) );
  DFFX1_RVT \dma_out_left_reg[3]  ( .D(N324), .CLK(n160), .QN(n79) );
  DFFX1_RVT \dma_out_left_reg[4]  ( .D(N325), .CLK(n161), .QN(n31) );
  DFFX1_RVT \dma_out_left_reg[5]  ( .D(N326), .CLK(n161), .QN(n80) );
  DFFX1_RVT \dma_out_left_reg[6]  ( .D(N327), .CLK(n161), .QN(n33) );
  DFFX1_RVT \dma_out_left_reg[7]  ( .D(N328), .CLK(n161), .QN(n81) );
  DFFX1_RVT \dma_out_left_reg[8]  ( .D(N329), .CLK(n161), .QN(n27) );
  DFFX1_RVT \dma_out_left_reg[11]  ( .D(N332), .CLK(n161), .Q(dma_out_left[11]) );
  DFFX1_RVT r4_reg ( .D(dma_ack_wr1), .CLK(n159), .Q(r4), .QN(n76) );
  DFFX1_RVT r5_reg ( .D(r4), .CLK(n159), .Q(r5), .QN(n24) );
  DFFSSRX1_RVT dma_in_buf_sz1_reg ( .D(n797), .SETB(n621), .RSTB(N319), .CLK(
        n147), .Q(dma_in_buf_sz1) );
  DFFX1_RVT \dma_in_cnt_reg[11]  ( .D(n783), .CLK(n161), .Q(dma_in_cnt[11]), 
        .QN(n609) );
  DFFX1_RVT \dma_out_cnt_reg[11]  ( .D(n795), .CLK(n159), .Q(dma_out_cnt[11]), 
        .QN(n803) );
  DFFX1_RVT \dma_in_cnt_reg[1]  ( .D(n772), .CLK(n161), .Q(dma_in_cnt[1]), 
        .QN(n608) );
  DFFX1_RVT \dma_in_cnt_reg[2]  ( .D(n774), .CLK(n162), .Q(dma_in_cnt[2]), 
        .QN(n611) );
  DFFX1_RVT \dma_in_cnt_reg[3]  ( .D(n775), .CLK(n162), .Q(dma_in_cnt[3]), 
        .QN(n612) );
  DFFX1_RVT \dma_in_cnt_reg[4]  ( .D(n776), .CLK(n162), .Q(dma_in_cnt[4]), 
        .QN(n613) );
  DFFX1_RVT \dma_in_cnt_reg[5]  ( .D(n777), .CLK(n162), .Q(dma_in_cnt[5]), 
        .QN(n614) );
  DFFX1_RVT \dma_in_cnt_reg[6]  ( .D(n778), .CLK(n162), .Q(dma_in_cnt[6]), 
        .QN(n615) );
  DFFX1_RVT \dma_in_cnt_reg[7]  ( .D(n779), .CLK(n162), .Q(dma_in_cnt[7]), 
        .QN(n616) );
  DFFX1_RVT \dma_in_cnt_reg[8]  ( .D(n780), .CLK(n162), .Q(dma_in_cnt[8]), 
        .QN(n617) );
  DFFX1_RVT \buf0_orig_reg[30]  ( .D(n666), .CLK(n150), .Q(buf0_orig[30]), 
        .QN(n599) );
  DFFX1_RVT \dma_in_cnt_reg[9]  ( .D(n781), .CLK(n162), .Q(dma_in_cnt[9]), 
        .QN(n618) );
  DFFX1_RVT \dma_in_cnt_reg[10]  ( .D(n782), .CLK(n147), .Q(dma_in_cnt[10]), 
        .QN(n619) );
  DFFX1_RVT \buf0_orig_reg[20]  ( .D(n676), .CLK(n151), .Q(buf0_orig[20]) );
  DFFX1_RVT \dma_out_cnt_reg[9]  ( .D(n793), .CLK(n160), .Q(dma_out_cnt[9]), 
        .QN(n566) );
  DFFX1_RVT \csr0_reg[2]  ( .D(n650), .CLK(n149), .Q(csr_2), .QN(n596) );
  DFFX1_RVT \buf0_orig_reg[29]  ( .D(n667), .CLK(n150), .Q(buf0_orig[29]), 
        .QN(n600) );
  DFFX1_RVT \buf0_orig_reg[28]  ( .D(n668), .CLK(n150), .Q(buf0_orig[28]), 
        .QN(n601) );
  DFFX1_RVT \buf0_orig_reg[27]  ( .D(n669), .CLK(n150), .Q(buf0_orig[27]), 
        .QN(n602) );
  DFFX1_RVT \buf0_orig_reg[26]  ( .D(n670), .CLK(n150), .Q(buf0_orig[26]), 
        .QN(n603) );
  DFFX1_RVT \buf0_orig_reg[25]  ( .D(n671), .CLK(n150), .Q(buf0_orig[25]), 
        .QN(n604) );
  DFFX1_RVT \buf0_orig_reg[24]  ( .D(n672), .CLK(n151), .Q(buf0_orig[24]), 
        .QN(n605) );
  DFFX1_RVT \buf0_orig_reg[23]  ( .D(n673), .CLK(n151), .Q(buf0_orig[23]), 
        .QN(n606) );
  DFFX1_RVT \buf0_orig_reg[22]  ( .D(n674), .CLK(n151), .Q(buf0_orig[22]), 
        .QN(n805) );
  DFFX1_RVT \buf0_orig_reg[21]  ( .D(n675), .CLK(n151), .Q(buf0_orig[21]), 
        .QN(n804) );
  DFFX1_RVT \dma_out_cnt_reg[1]  ( .D(n784), .CLK(n159), .Q(dma_out_cnt[1]) );
  DFFX1_RVT \dma_out_cnt_reg[2]  ( .D(n786), .CLK(n159), .Q(dma_out_cnt[2]), 
        .QN(n568) );
  DFFX1_RVT \dma_out_cnt_reg[3]  ( .D(n787), .CLK(n160), .Q(dma_out_cnt[3]), 
        .QN(n570) );
  DFFX1_RVT \dma_out_cnt_reg[4]  ( .D(n788), .CLK(n160), .Q(dma_out_cnt[4]), 
        .QN(n569) );
  DFFX1_RVT \dma_out_cnt_reg[5]  ( .D(n789), .CLK(n160), .Q(dma_out_cnt[5]), 
        .QN(n564) );
  DFFX1_RVT \dma_out_cnt_reg[6]  ( .D(n790), .CLK(n160), .Q(dma_out_cnt[6]), 
        .QN(n563) );
  DFFX1_RVT \dma_out_cnt_reg[7]  ( .D(n791), .CLK(n160), .Q(dma_out_cnt[7]), 
        .QN(n565) );
  DFFX1_RVT \dma_out_cnt_reg[8]  ( .D(n792), .CLK(n160), .Q(dma_out_cnt[8]), 
        .QN(n567) );
  DFFX1_RVT \dma_in_cnt_reg[0]  ( .D(n773), .CLK(n161), .Q(dma_in_cnt[0]), 
        .QN(n610) );
  DFFX1_RVT \csr0_reg[9]  ( .D(n643), .CLK(n148), .Q(csr_9), .QN(n590) );
  DFFX1_RVT \csr0_reg[7]  ( .D(n645), .CLK(n148), .Q(csr_7), .QN(n592) );
  DFFX1_RVT \csr0_reg[5]  ( .D(n647), .CLK(n149), .Q(csr_5), .QN(n594) );
  DFFX1_RVT \csr0_reg[8]  ( .D(n644), .CLK(n148), .Q(csr_8), .QN(n591) );
  DFFX1_RVT \csr0_reg[6]  ( .D(n646), .CLK(n148), .Q(csr_6), .QN(n593) );
  DFFX1_RVT \dma_out_cnt_reg[10]  ( .D(n794), .CLK(n160), .Q(dma_out_cnt[10]), 
        .QN(n802) );
  DFFX1_RVT \csr0_reg[4]  ( .D(n648), .CLK(n148), .Q(csr_4), .QN(n595) );
  DFFX1_RVT \csr0_reg[3]  ( .D(n649), .CLK(n149), .Q(csr_3), .QN(n597) );
  DFFX1_RVT \dma_out_cnt_reg[0]  ( .D(n785), .CLK(n159), .Q(dma_out_cnt[0]) );
  DFFX1_RVT \csr0_reg[10]  ( .D(n642), .CLK(n148), .Q(csr_10), .QN(n598) );
  DFFX1_RVT \buf0_orig_reg[19]  ( .D(n677), .CLK(n151), .Q(buf0_orig[19]), 
        .QN(n607) );
  DFFX1_RVT dma_req_in_hold2_reg ( .D(N347), .CLK(wclk), .Q(dma_req_in_hold2)
         );
  DFFX1_RVT dma_req_in_hold_reg ( .D(N348), .CLK(wclk), .Q(dma_req_in_hold) );
  DFFX1_RVT r1_reg ( .D(N361), .CLK(wclk), .Q(r1), .QN(n174) );
  DFFX1_RVT inta_reg ( .D(N221), .CLK(wclk), .Q(inta) );
  DFFX1_RVT intb_reg ( .D(N222), .CLK(wclk), .Q(intb) );
  SDFFSSRX1_RVT dma_req_out_hold_reg ( .RSTB(n798), .SETB(1'b1), .D(n175), 
        .SI(1'b0), .SE(n807), .CLK(wclk), .Q(dma_req_out_hold) );
  DFFSSRX1_RVT dma_ack_wr1_reg ( .D(n799), .SETB(n625), .RSTB(rst), .CLK(wclk), 
        .Q(dma_ack_wr1) );
  DFFSSRX1_RVT r2_reg ( .D(n800), .SETB(n174), .RSTB(rst), .CLK(wclk), .Q(r2), 
        .QN(n3) );
  DFFX1_RVT dma_ack_clr1_reg ( .D(r4), .CLK(wclk), .QN(n801) );
  DFFX1_RVT \buf0_orig_m3_reg[10]  ( .D(N345), .CLK(wclk), .Q(n42) );
  DFFX1_RVT \buf0_orig_m3_reg[9]  ( .D(N344), .CLK(wclk), .Q(n15) );
  DFFX1_RVT \buf0_orig_m3_reg[8]  ( .D(N343), .CLK(wclk), .Q(n41) );
  DFFX1_RVT \buf0_orig_m3_reg[7]  ( .D(N342), .CLK(wclk), .Q(n16) );
  DFFX1_RVT dma_req_r_reg ( .D(n796), .CLK(wclk), .Q(dma_req) );
  DFFX1_RVT \buf0_orig_m3_reg[11]  ( .D(N346), .CLK(wclk), .Q(n43), .QN(n620)
         );
  DFFX1_RVT \buf0_orig_m3_reg[0]  ( .D(n607), .CLK(wclk), .Q(\buf0_orig_m3[0] ) );
  DFFX1_RVT \buf0_orig_m3_reg[6]  ( .D(N341), .CLK(wclk), .Q(n39) );
  DFFX1_RVT \buf0_orig_m3_reg[5]  ( .D(N340), .CLK(wclk), .Q(n14) );
  DFFX1_RVT \buf0_orig_m3_reg[4]  ( .D(N339), .CLK(wclk), .Q(n40) );
  DFFX1_RVT \buf0_orig_m3_reg[3]  ( .D(N338), .CLK(wclk), .Q(n13) );
  DFFX1_RVT \buf0_orig_m3_reg[2]  ( .D(N337), .CLK(wclk), .Q(n34) );
  DFFX1_RVT \buf0_orig_m3_reg[1]  ( .D(N336), .CLK(wclk), .Q(n36) );
  AND2X1_RVT U3 ( .A1(n140), .A2(n183), .Y(n1) );
  AND2X1_RVT U6 ( .A1(adr[0]), .A2(n624), .Y(n184) );
  INVX1_RVT U7 ( .A(adr[0]), .Y(n503) );
  AO21X1_RVT U8 ( .A1(n111), .A2(din[19]), .A3(n144), .Y(n198) );
  AO21X1_RVT U9 ( .A1(n112), .A2(din[20]), .A3(n144), .Y(n197) );
  AO21X1_RVT U10 ( .A1(n112), .A2(din[21]), .A3(n144), .Y(n196) );
  AO21X1_RVT U12 ( .A1(n112), .A2(din[24]), .A3(n144), .Y(n193) );
  AO21X1_RVT U13 ( .A1(n110), .A2(din[16]), .A3(n145), .Y(n201) );
  AO21X1_RVT U16 ( .A1(n110), .A2(din[17]), .A3(n145), .Y(n200) );
  AO21X1_RVT U19 ( .A1(n110), .A2(din[18]), .A3(n144), .Y(n199) );
  AO22X1_RVT U20 ( .A1(n101), .A2(n21), .A3(n100), .A4(csr[18]), .Y(n499) );
  AO22X1_RVT U21 ( .A1(n101), .A2(n22), .A3(n100), .A4(csr[16]), .Y(n501) );
  AO22X1_RVT U22 ( .A1(n101), .A2(n19), .A3(n97), .A4(csr[17]), .Y(n500) );
  AO22X1_RVT U23 ( .A1(n102), .A2(n20), .A3(n100), .A4(csr[20]), .Y(n496) );
  AO22X1_RVT U24 ( .A1(n103), .A2(n48), .A3(n96), .A4(csr[21]), .Y(n495) );
  AO22X1_RVT U25 ( .A1(n103), .A2(n49), .A3(n100), .A4(csr[27]), .Y(n491) );
  AO22X1_RVT U26 ( .A1(n102), .A2(n5), .A3(n95), .A4(csr[28]), .Y(n490) );
  INVX1_RVT U27 ( .A(n92), .Y(n99) );
  AO22X1_RVT U28 ( .A1(n101), .A2(n18), .A3(n95), .A4(csr_0), .Y(n502) );
  AO22X1_RVT U29 ( .A1(n103), .A2(n17), .A3(n95), .A4(csr_1), .Y(n497) );
  NBUFFX2_RVT U30 ( .A(n93), .Y(n86) );
  AO21X1_RVT U31 ( .A1(n131), .A2(din[24]), .A3(n143), .Y(n434) );
  AO21X1_RVT U32 ( .A1(n131), .A2(din[21]), .A3(n142), .Y(n437) );
  AO21X1_RVT U33 ( .A1(n132), .A2(din[20]), .A3(n142), .Y(n438) );
  AO21X1_RVT U34 ( .A1(n132), .A2(din[19]), .A3(n142), .Y(n439) );
  AO21X1_RVT U35 ( .A1(n132), .A2(din[18]), .A3(n142), .Y(n440) );
  AO21X1_RVT U36 ( .A1(n132), .A2(din[17]), .A3(n142), .Y(n441) );
  AO21X1_RVT U37 ( .A1(n132), .A2(din[16]), .A3(n142), .Y(n442) );
  INVX0_RVT U38 ( .A(adr[1]), .Y(n624) );
  NBUFFX2_RVT U39 ( .A(n93), .Y(n85) );
  INVX1_RVT U40 ( .A(n92), .Y(n122) );
  INVX1_RVT U41 ( .A(n92), .Y(n124) );
  INVX1_RVT U42 ( .A(n92), .Y(n123) );
  NAND2X0_RVT U43 ( .A1(n503), .A2(n624), .Y(n2) );
  NBUFFX2_RVT U44 ( .A(n93), .Y(n83) );
  NBUFFX2_RVT U45 ( .A(n93), .Y(n84) );
  INVX0_RVT U46 ( .A(n87), .Y(n93) );
  NAND2X0_RVT U47 ( .A1(adr[0]), .A2(adr[1]), .Y(n87) );
  INVX1_RVT U48 ( .A(n163), .Y(n162) );
  INVX1_RVT U49 ( .A(n140), .Y(n146) );
  INVX1_RVT U50 ( .A(n424), .Y(n116) );
  INVX1_RVT U51 ( .A(n424), .Y(n117) );
  INVX1_RVT U52 ( .A(n140), .Y(n145) );
  INVX1_RVT U53 ( .A(n140), .Y(n144) );
  INVX1_RVT U54 ( .A(n140), .Y(n143) );
  INVX1_RVT U55 ( .A(n140), .Y(n142) );
  INVX1_RVT U56 ( .A(n110), .Y(n109) );
  INVX1_RVT U57 ( .A(n110), .Y(n108) );
  INVX1_RVT U58 ( .A(n423), .Y(n119) );
  INVX1_RVT U59 ( .A(n423), .Y(n120) );
  INVX1_RVT U60 ( .A(n163), .Y(n161) );
  INVX1_RVT U61 ( .A(n163), .Y(n160) );
  INVX1_RVT U62 ( .A(n163), .Y(n159) );
  INVX1_RVT U63 ( .A(n163), .Y(n158) );
  INVX1_RVT U64 ( .A(n163), .Y(n157) );
  INVX1_RVT U65 ( .A(n163), .Y(n156) );
  INVX1_RVT U66 ( .A(n163), .Y(n155) );
  INVX1_RVT U67 ( .A(n163), .Y(n153) );
  INVX1_RVT U68 ( .A(n163), .Y(n152) );
  INVX1_RVT U69 ( .A(n163), .Y(n151) );
  INVX1_RVT U70 ( .A(n163), .Y(n154) );
  INVX1_RVT U71 ( .A(n424), .Y(n118) );
  INVX1_RVT U72 ( .A(n423), .Y(n121) );
  INVX1_RVT U73 ( .A(n88), .Y(n115) );
  INVX1_RVT U74 ( .A(n88), .Y(n113) );
  INVX1_RVT U75 ( .A(n88), .Y(n114) );
  INVX1_RVT U76 ( .A(n163), .Y(n150) );
  INVX1_RVT U77 ( .A(n163), .Y(n149) );
  INVX1_RVT U78 ( .A(n163), .Y(n148) );
  INVX1_RVT U79 ( .A(n163), .Y(n147) );
  INVX1_RVT U80 ( .A(n89), .Y(n106) );
  INVX1_RVT U81 ( .A(n89), .Y(n107) );
  INVX1_RVT U82 ( .A(n181), .Y(n104) );
  INVX1_RVT U83 ( .A(n458), .Y(n131) );
  INVX1_RVT U84 ( .A(n458), .Y(n132) );
  INVX1_RVT U85 ( .A(n181), .Y(n105) );
  INVX1_RVT U86 ( .A(n458), .Y(n133) );
  INVX1_RVT U87 ( .A(clk), .Y(n163) );
  INVX1_RVT U88 ( .A(n185), .Y(n112) );
  INVX1_RVT U89 ( .A(n185), .Y(n111) );
  INVX1_RVT U90 ( .A(n185), .Y(n110) );
  NAND3X0_RVT U91 ( .A1(n423), .A2(n185), .A3(n424), .Y(n88) );
  INVX1_RVT U92 ( .A(n141), .Y(n140) );
  NAND2X0_RVT U93 ( .A1(n140), .A2(n181), .Y(n89) );
  NBUFFX2_RVT U94 ( .A(n93), .Y(n94) );
  INVX1_RVT U95 ( .A(n90), .Y(n127) );
  INVX1_RVT U96 ( .A(n90), .Y(n125) );
  INVX1_RVT U97 ( .A(n90), .Y(n126) );
  INVX1_RVT U98 ( .A(n459), .Y(n128) );
  INVX1_RVT U99 ( .A(n459), .Y(n129) );
  INVX1_RVT U100 ( .A(n459), .Y(n130) );
  INVX1_RVT U101 ( .A(n469), .Y(n138) );
  INVX1_RVT U102 ( .A(n469), .Y(n139) );
  INVX1_RVT U103 ( .A(n470), .Y(n134) );
  INVX1_RVT U104 ( .A(n470), .Y(n135) );
  INVX1_RVT U105 ( .A(n91), .Y(n136) );
  INVX1_RVT U106 ( .A(n91), .Y(n137) );
  NBUFFX2_RVT U107 ( .A(n184), .Y(n103) );
  NBUFFX2_RVT U108 ( .A(n184), .Y(n102) );
  AO22X1_RVT U109 ( .A1(n101), .A2(n51), .A3(n96), .A4(csr[19]), .Y(n498) );
  AO22X1_RVT U110 ( .A1(n102), .A2(n23), .A3(n97), .A4(csr[26]), .Y(n492) );
  NBUFFX2_RVT U111 ( .A(n184), .Y(n101) );
  AO22X1_RVT U112 ( .A1(n102), .A2(n11), .A3(n100), .A4(csr[24]), .Y(n494) );
  AO22X1_RVT U113 ( .A1(n103), .A2(n7), .A3(n97), .A4(csr[25]), .Y(n493) );
  NAND2X0_RVT U114 ( .A1(n459), .A2(n458), .Y(n90) );
  NAND3X0_RVT U115 ( .A1(n469), .A2(csr[15]), .A3(n470), .Y(n91) );
  NAND2X0_RVT U116 ( .A1(adr[1]), .A2(n503), .Y(n92) );
  INVX0_RVT U117 ( .A(n2), .Y(n95) );
  INVX0_RVT U118 ( .A(n2), .Y(n96) );
  INVX0_RVT U119 ( .A(n2), .Y(n97) );
  INVX0_RVT U120 ( .A(n2), .Y(n98) );
  INVX0_RVT U121 ( .A(n2), .Y(n100) );
  INVX0_RVT U122 ( .A(rst), .Y(n141) );
  XNOR2X1_RVT U123 ( .A1(buf0_orig[30]), .A2(\sub_449/carry[11] ), .Y(N346) );
  OR2X1_RVT U124 ( .A1(buf0_orig[29]), .A2(\sub_449/carry[10] ), .Y(
        \sub_449/carry[11] ) );
  XNOR2X1_RVT U125 ( .A1(\sub_449/carry[10] ), .A2(buf0_orig[29]), .Y(N345) );
  OR2X1_RVT U126 ( .A1(buf0_orig[28]), .A2(\sub_449/carry[9] ), .Y(
        \sub_449/carry[10] ) );
  XNOR2X1_RVT U127 ( .A1(\sub_449/carry[9] ), .A2(buf0_orig[28]), .Y(N344) );
  OR2X1_RVT U128 ( .A1(buf0_orig[27]), .A2(\sub_449/carry[8] ), .Y(
        \sub_449/carry[9] ) );
  XNOR2X1_RVT U129 ( .A1(\sub_449/carry[8] ), .A2(buf0_orig[27]), .Y(N343) );
  OR2X1_RVT U130 ( .A1(buf0_orig[26]), .A2(\sub_449/carry[7] ), .Y(
        \sub_449/carry[8] ) );
  XNOR2X1_RVT U131 ( .A1(\sub_449/carry[7] ), .A2(buf0_orig[26]), .Y(N342) );
  OR2X1_RVT U132 ( .A1(buf0_orig[25]), .A2(\sub_449/carry[6] ), .Y(
        \sub_449/carry[7] ) );
  XNOR2X1_RVT U133 ( .A1(\sub_449/carry[6] ), .A2(buf0_orig[25]), .Y(N341) );
  OR2X1_RVT U134 ( .A1(buf0_orig[24]), .A2(\sub_449/carry[5] ), .Y(
        \sub_449/carry[6] ) );
  XNOR2X1_RVT U135 ( .A1(\sub_449/carry[5] ), .A2(buf0_orig[24]), .Y(N340) );
  OR2X1_RVT U136 ( .A1(buf0_orig[23]), .A2(\sub_449/carry[4] ), .Y(
        \sub_449/carry[5] ) );
  XNOR2X1_RVT U137 ( .A1(\sub_449/carry[4] ), .A2(buf0_orig[23]), .Y(N339) );
  OR2X1_RVT U138 ( .A1(buf0_orig[22]), .A2(\sub_449/carry[3] ), .Y(
        \sub_449/carry[4] ) );
  XNOR2X1_RVT U139 ( .A1(\sub_449/carry[3] ), .A2(buf0_orig[22]), .Y(N338) );
  OR2X1_RVT U140 ( .A1(buf0_orig[21]), .A2(\sub_449/carry[2] ), .Y(
        \sub_449/carry[3] ) );
  XNOR2X1_RVT U141 ( .A1(\sub_449/carry[2] ), .A2(buf0_orig[21]), .Y(N337) );
  AND2X1_RVT U142 ( .A1(buf0_orig[20]), .A2(buf0_orig[19]), .Y(
        \sub_449/carry[2] ) );
  XOR2X1_RVT U143 ( .A1(buf0_orig[20]), .A2(buf0_orig[19]), .Y(N336) );
  OR2X1_RVT U144 ( .A1(n27), .A2(csr_10), .Y(n173) );
  OA21X1_RVT U145 ( .A1(n30), .A2(csr_3), .A3(n82), .Y(n164) );
  AO222X1_RVT U146 ( .A1(csr_3), .A2(n30), .A3(n164), .A4(csr_2), .A5(csr_4), 
        .A6(n12), .Y(n165) );
  OA221X1_RVT U147 ( .A1(csr_5), .A2(n79), .A3(csr_4), .A4(n12), .A5(n165), 
        .Y(n166) );
  AO221X1_RVT U148 ( .A1(csr_5), .A2(n79), .A3(csr_6), .A4(n31), .A5(n166), 
        .Y(n167) );
  OA221X1_RVT U149 ( .A1(csr_7), .A2(n80), .A3(csr_6), .A4(n31), .A5(n167), 
        .Y(n168) );
  AO221X1_RVT U150 ( .A1(csr_7), .A2(n80), .A3(csr_8), .A4(n33), .A5(n168), 
        .Y(n169) );
  OA221X1_RVT U151 ( .A1(csr_9), .A2(n81), .A3(csr_8), .A4(n33), .A5(n169), 
        .Y(n170) );
  AO221X1_RVT U152 ( .A1(csr_9), .A2(n81), .A3(csr_10), .A4(n27), .A5(n170), 
        .Y(n172) );
  NOR3X0_RVT U153 ( .A1(dma_out_left[10]), .A2(dma_out_left[9]), .A3(
        dma_out_left[11]), .Y(n171) );
  NAND3X0_RVT U154 ( .A1(n173), .A2(n172), .A3(n171), .Y(N333) );
  AND3X1_RVT U155 ( .A1(n561), .A2(n562), .A3(n176), .Y(n621) );
  AND3X1_RVT U156 ( .A1(n597), .A2(n598), .A3(n596), .Y(n176) );
  INVX0_RVT U157 ( .A(re), .Y(n623) );
  AND2X1_RVT U158 ( .A1(dma_ack_wr1), .A2(n801), .Y(n799) );
  AND2X1_RVT U159 ( .A1(r2), .A2(n76), .Y(n800) );
  AO22X1_RVT U160 ( .A1(din[13]), .A2(n104), .A3(n106), .A4(csr_13), .Y(n626)
         );
  AO22X1_RVT U161 ( .A1(din[27]), .A2(n105), .A3(n107), .A4(csr[27]), .Y(n627)
         );
  AO22X1_RVT U162 ( .A1(din[26]), .A2(n105), .A3(n107), .A4(csr[26]), .Y(n628)
         );
  AO22X1_RVT U163 ( .A1(din[25]), .A2(n105), .A3(n107), .A4(csr[25]), .Y(n629)
         );
  AO22X1_RVT U164 ( .A1(din[24]), .A2(n105), .A3(n107), .A4(csr[24]), .Y(n630)
         );
  AO22X1_RVT U165 ( .A1(din[21]), .A2(n105), .A3(n107), .A4(csr[21]), .Y(n631)
         );
  AO22X1_RVT U166 ( .A1(din[20]), .A2(n105), .A3(n107), .A4(csr[20]), .Y(n632)
         );
  AO22X1_RVT U167 ( .A1(din[19]), .A2(n105), .A3(n107), .A4(csr[19]), .Y(n633)
         );
  AO22X1_RVT U168 ( .A1(din[18]), .A2(n105), .A3(n107), .A4(csr[18]), .Y(n634)
         );
  AO22X1_RVT U169 ( .A1(din[17]), .A2(n105), .A3(n107), .A4(csr[17]), .Y(n635)
         );
  AO22X1_RVT U170 ( .A1(din[16]), .A2(n105), .A3(n107), .A4(csr[16]), .Y(n636)
         );
  AO22X1_RVT U171 ( .A1(din[15]), .A2(n105), .A3(n107), .A4(csr[15]), .Y(n637)
         );
  AO221X1_RVT U172 ( .A1(n107), .A2(csr[22]), .A3(din[22]), .A4(n104), .A5(
        n177), .Y(n638) );
  INVX0_RVT U173 ( .A(n178), .Y(n177) );
  AO22X1_RVT U174 ( .A1(din[23]), .A2(n105), .A3(n179), .A4(n106), .Y(n639) );
  AND2X1_RVT U175 ( .A1(n178), .A2(csr[23]), .Y(n179) );
  NAND4X0_RVT U176 ( .A1(out_to_small), .A2(n140), .A3(n180), .A4(csr_13), .Y(
        n178) );
  NAND2X0_RVT U177 ( .A1(we), .A2(n95), .Y(n180) );
  AO22X1_RVT U178 ( .A1(din[12]), .A2(n105), .A3(n106), .A4(csr_12), .Y(n640)
         );
  AO22X1_RVT U179 ( .A1(din[11]), .A2(n104), .A3(n106), .A4(csr_11), .Y(n641)
         );
  AO22X1_RVT U180 ( .A1(din[10]), .A2(n104), .A3(n106), .A4(csr_10), .Y(n642)
         );
  AO22X1_RVT U181 ( .A1(din[9]), .A2(n104), .A3(n106), .A4(csr_9), .Y(n643) );
  AO22X1_RVT U182 ( .A1(din[8]), .A2(n104), .A3(n107), .A4(csr_8), .Y(n644) );
  AO22X1_RVT U183 ( .A1(din[7]), .A2(n104), .A3(n106), .A4(csr_7), .Y(n645) );
  AO22X1_RVT U184 ( .A1(din[6]), .A2(n104), .A3(n106), .A4(csr_6), .Y(n646) );
  AO22X1_RVT U185 ( .A1(din[5]), .A2(n104), .A3(n106), .A4(csr_5), .Y(n647) );
  AO22X1_RVT U186 ( .A1(din[4]), .A2(n104), .A3(n106), .A4(csr_4), .Y(n648) );
  AO22X1_RVT U187 ( .A1(din[3]), .A2(n104), .A3(n106), .A4(csr_3), .Y(n649) );
  AO22X1_RVT U188 ( .A1(din[2]), .A2(n104), .A3(n106), .A4(csr_2), .Y(n650) );
  AO22X1_RVT U189 ( .A1(din[1]), .A2(n104), .A3(n106), .A4(csr_1), .Y(n651) );
  AO22X1_RVT U190 ( .A1(din[0]), .A2(n105), .A3(n107), .A4(csr_0), .Y(n652) );
  NAND3X0_RVT U191 ( .A1(n140), .A2(n96), .A3(we), .Y(n181) );
  AO22X1_RVT U192 ( .A1(n182), .A2(din[21]), .A3(n1), .A4(n48), .Y(n653) );
  AO22X1_RVT U193 ( .A1(n182), .A2(din[20]), .A3(n1), .A4(n20), .Y(n654) );
  AO22X1_RVT U194 ( .A1(n182), .A2(din[19]), .A3(n1), .A4(n51), .Y(n655) );
  AO22X1_RVT U195 ( .A1(n182), .A2(din[18]), .A3(n1), .A4(n21), .Y(n656) );
  AO22X1_RVT U196 ( .A1(n182), .A2(din[17]), .A3(n1), .A4(n19), .Y(n657) );
  AO22X1_RVT U197 ( .A1(n182), .A2(din[16]), .A3(n1), .A4(n22), .Y(n658) );
  AO22X1_RVT U198 ( .A1(din[29]), .A2(n182), .A3(n1), .A4(n8), .Y(n659) );
  AO22X1_RVT U199 ( .A1(din[28]), .A2(n182), .A3(n1), .A4(n5), .Y(n660) );
  AO22X1_RVT U200 ( .A1(n182), .A2(din[27]), .A3(n1), .A4(n49), .Y(n661) );
  AO22X1_RVT U201 ( .A1(n182), .A2(din[26]), .A3(n1), .A4(n23), .Y(n662) );
  AO22X1_RVT U202 ( .A1(n182), .A2(din[25]), .A3(n1), .A4(n7), .Y(n663) );
  AO22X1_RVT U203 ( .A1(n182), .A2(din[24]), .A3(n1), .A4(n11), .Y(n664) );
  INVX0_RVT U204 ( .A(n183), .Y(n182) );
  NAND3X0_RVT U205 ( .A1(we), .A2(n140), .A3(n101), .Y(n183) );
  AO21X1_RVT U206 ( .A1(n109), .A2(n75), .A3(n186), .Y(n665) );
  AO21X1_RVT U207 ( .A1(n108), .A2(buf0_orig[30]), .A3(n187), .Y(n666) );
  AO21X1_RVT U208 ( .A1(n108), .A2(buf0_orig[29]), .A3(n188), .Y(n667) );
  AO21X1_RVT U209 ( .A1(n108), .A2(buf0_orig[28]), .A3(n189), .Y(n668) );
  AO21X1_RVT U210 ( .A1(n108), .A2(buf0_orig[27]), .A3(n190), .Y(n669) );
  AO21X1_RVT U211 ( .A1(n108), .A2(buf0_orig[26]), .A3(n191), .Y(n670) );
  AO21X1_RVT U212 ( .A1(n108), .A2(buf0_orig[25]), .A3(n192), .Y(n671) );
  AO21X1_RVT U213 ( .A1(n108), .A2(buf0_orig[24]), .A3(n193), .Y(n672) );
  AO21X1_RVT U214 ( .A1(n108), .A2(buf0_orig[23]), .A3(n194), .Y(n673) );
  AO21X1_RVT U215 ( .A1(n108), .A2(buf0_orig[22]), .A3(n195), .Y(n674) );
  AO21X1_RVT U216 ( .A1(n108), .A2(buf0_orig[21]), .A3(n196), .Y(n675) );
  AO21X1_RVT U217 ( .A1(n108), .A2(buf0_orig[20]), .A3(n197), .Y(n676) );
  AO21X1_RVT U218 ( .A1(n109), .A2(buf0_orig[19]), .A3(n198), .Y(n677) );
  AO21X1_RVT U219 ( .A1(n109), .A2(n74), .A3(n199), .Y(n678) );
  AO21X1_RVT U220 ( .A1(n109), .A2(n73), .A3(n200), .Y(n679) );
  AO21X1_RVT U221 ( .A1(n109), .A2(n72), .A3(n201), .Y(n680) );
  AO21X1_RVT U222 ( .A1(n109), .A2(n70), .A3(n202), .Y(n681) );
  AO21X1_RVT U223 ( .A1(n109), .A2(n69), .A3(n203), .Y(n682) );
  AO21X1_RVT U224 ( .A1(n109), .A2(n68), .A3(n204), .Y(n683) );
  AO21X1_RVT U225 ( .A1(n109), .A2(n67), .A3(n205), .Y(n684) );
  AO21X1_RVT U226 ( .A1(n109), .A2(n66), .A3(n206), .Y(n685) );
  AO21X1_RVT U227 ( .A1(n109), .A2(n65), .A3(n207), .Y(n686) );
  AO21X1_RVT U228 ( .A1(n109), .A2(n64), .A3(n208), .Y(n687) );
  AO21X1_RVT U229 ( .A1(n109), .A2(n63), .A3(n209), .Y(n688) );
  AO21X1_RVT U230 ( .A1(n185), .A2(n62), .A3(n210), .Y(n689) );
  AO21X1_RVT U231 ( .A1(n185), .A2(n61), .A3(n211), .Y(n690) );
  AO21X1_RVT U232 ( .A1(n185), .A2(n60), .A3(n212), .Y(n691) );
  AO21X1_RVT U233 ( .A1(n185), .A2(n59), .A3(n213), .Y(n692) );
  AO21X1_RVT U234 ( .A1(n185), .A2(n58), .A3(n214), .Y(n693) );
  AO21X1_RVT U235 ( .A1(n185), .A2(n57), .A3(n215), .Y(n694) );
  AO21X1_RVT U236 ( .A1(n185), .A2(n56), .A3(n216), .Y(n695) );
  AO21X1_RVT U237 ( .A1(n185), .A2(n54), .A3(n217), .Y(n696) );
  AO221X1_RVT U238 ( .A1(n113), .A2(buf0[0]), .A3(idin[0]), .A4(n116), .A5(
        n218), .Y(n697) );
  AO21X1_RVT U239 ( .A1(n119), .A2(n54), .A3(n217), .Y(n218) );
  AO21X1_RVT U240 ( .A1(n111), .A2(din[0]), .A3(n146), .Y(n217) );
  AO221X1_RVT U241 ( .A1(n113), .A2(buf0[1]), .A3(idin[1]), .A4(n116), .A5(
        n219), .Y(n698) );
  AO21X1_RVT U242 ( .A1(n119), .A2(n56), .A3(n216), .Y(n219) );
  AO21X1_RVT U243 ( .A1(n110), .A2(din[1]), .A3(n146), .Y(n216) );
  AO221X1_RVT U244 ( .A1(n113), .A2(buf0[2]), .A3(idin[2]), .A4(n116), .A5(
        n220), .Y(n699) );
  AO21X1_RVT U245 ( .A1(n119), .A2(n57), .A3(n215), .Y(n220) );
  AO21X1_RVT U246 ( .A1(n110), .A2(din[2]), .A3(n146), .Y(n215) );
  AO221X1_RVT U247 ( .A1(n113), .A2(buf0[3]), .A3(idin[3]), .A4(n116), .A5(
        n221), .Y(n700) );
  AO21X1_RVT U248 ( .A1(n119), .A2(n58), .A3(n214), .Y(n221) );
  AO21X1_RVT U249 ( .A1(n111), .A2(din[3]), .A3(n146), .Y(n214) );
  AO221X1_RVT U250 ( .A1(n113), .A2(buf0[4]), .A3(idin[4]), .A4(n116), .A5(
        n222), .Y(n701) );
  AO21X1_RVT U251 ( .A1(n119), .A2(n59), .A3(n213), .Y(n222) );
  AO21X1_RVT U252 ( .A1(n110), .A2(din[4]), .A3(n146), .Y(n213) );
  AO221X1_RVT U253 ( .A1(n113), .A2(buf0[5]), .A3(idin[5]), .A4(n116), .A5(
        n223), .Y(n702) );
  AO21X1_RVT U254 ( .A1(n119), .A2(n60), .A3(n212), .Y(n223) );
  AO21X1_RVT U255 ( .A1(n110), .A2(din[5]), .A3(n146), .Y(n212) );
  AO221X1_RVT U256 ( .A1(n113), .A2(buf0[6]), .A3(idin[6]), .A4(n116), .A5(
        n224), .Y(n703) );
  AO21X1_RVT U257 ( .A1(n119), .A2(n61), .A3(n211), .Y(n224) );
  AO21X1_RVT U258 ( .A1(n111), .A2(din[6]), .A3(n145), .Y(n211) );
  AO221X1_RVT U259 ( .A1(n113), .A2(buf0[7]), .A3(idin[7]), .A4(n116), .A5(
        n225), .Y(n704) );
  AO21X1_RVT U260 ( .A1(n119), .A2(n62), .A3(n210), .Y(n225) );
  AO21X1_RVT U261 ( .A1(n111), .A2(din[7]), .A3(n145), .Y(n210) );
  AO221X1_RVT U262 ( .A1(n113), .A2(buf0[8]), .A3(idin[8]), .A4(n116), .A5(
        n226), .Y(n705) );
  AO21X1_RVT U263 ( .A1(n119), .A2(n63), .A3(n209), .Y(n226) );
  AO21X1_RVT U264 ( .A1(n111), .A2(din[8]), .A3(n145), .Y(n209) );
  AO221X1_RVT U265 ( .A1(n113), .A2(buf0[9]), .A3(idin[9]), .A4(n116), .A5(
        n227), .Y(n706) );
  AO21X1_RVT U266 ( .A1(n119), .A2(n64), .A3(n208), .Y(n227) );
  AO21X1_RVT U267 ( .A1(n111), .A2(din[9]), .A3(n145), .Y(n208) );
  AO221X1_RVT U268 ( .A1(n113), .A2(buf0[10]), .A3(idin[10]), .A4(n116), .A5(
        n228), .Y(n707) );
  AO21X1_RVT U269 ( .A1(n119), .A2(n65), .A3(n207), .Y(n228) );
  AO21X1_RVT U270 ( .A1(n111), .A2(din[10]), .A3(n145), .Y(n207) );
  AO221X1_RVT U271 ( .A1(n113), .A2(buf0[11]), .A3(idin[11]), .A4(n116), .A5(
        n229), .Y(n708) );
  AO21X1_RVT U272 ( .A1(n119), .A2(n66), .A3(n206), .Y(n229) );
  AO21X1_RVT U273 ( .A1(n110), .A2(din[11]), .A3(n145), .Y(n206) );
  AO221X1_RVT U274 ( .A1(n114), .A2(buf0[12]), .A3(idin[12]), .A4(n117), .A5(
        n230), .Y(n709) );
  AO21X1_RVT U275 ( .A1(n120), .A2(n67), .A3(n205), .Y(n230) );
  AO21X1_RVT U276 ( .A1(n111), .A2(din[12]), .A3(n145), .Y(n205) );
  AO221X1_RVT U277 ( .A1(n114), .A2(buf0[13]), .A3(idin[13]), .A4(n117), .A5(
        n231), .Y(n710) );
  AO21X1_RVT U278 ( .A1(n120), .A2(n68), .A3(n204), .Y(n231) );
  AO21X1_RVT U279 ( .A1(n110), .A2(din[13]), .A3(n145), .Y(n204) );
  AO221X1_RVT U280 ( .A1(n114), .A2(buf0[14]), .A3(idin[14]), .A4(n117), .A5(
        n232), .Y(n711) );
  AO21X1_RVT U281 ( .A1(n120), .A2(n69), .A3(n203), .Y(n232) );
  AO21X1_RVT U282 ( .A1(din[14]), .A2(n112), .A3(n145), .Y(n203) );
  AO221X1_RVT U283 ( .A1(n114), .A2(buf0[15]), .A3(idin[15]), .A4(n117), .A5(
        n233), .Y(n712) );
  AO21X1_RVT U284 ( .A1(n120), .A2(n70), .A3(n202), .Y(n233) );
  AO21X1_RVT U285 ( .A1(n110), .A2(din[15]), .A3(n145), .Y(n202) );
  AO221X1_RVT U286 ( .A1(n114), .A2(buf0[16]), .A3(idin[16]), .A4(n117), .A5(
        n235), .Y(n713) );
  AO21X1_RVT U287 ( .A1(n120), .A2(n72), .A3(n201), .Y(n235) );
  AO221X1_RVT U288 ( .A1(n114), .A2(buf0[17]), .A3(idin[17]), .A4(n117), .A5(
        n236), .Y(n714) );
  AO21X1_RVT U289 ( .A1(n120), .A2(n73), .A3(n200), .Y(n236) );
  AO221X1_RVT U290 ( .A1(n114), .A2(buf0[18]), .A3(idin[18]), .A4(n117), .A5(
        n237), .Y(n715) );
  AO21X1_RVT U291 ( .A1(n120), .A2(n74), .A3(n199), .Y(n237) );
  AO221X1_RVT U292 ( .A1(n114), .A2(buf0[19]), .A3(idin[19]), .A4(n117), .A5(
        n238), .Y(n716) );
  AO21X1_RVT U293 ( .A1(n120), .A2(buf0_orig[19]), .A3(n198), .Y(n238) );
  AO221X1_RVT U294 ( .A1(n114), .A2(buf0[20]), .A3(idin[20]), .A4(n117), .A5(
        n240), .Y(n717) );
  AO21X1_RVT U295 ( .A1(n120), .A2(buf0_orig[20]), .A3(n197), .Y(n240) );
  AO221X1_RVT U296 ( .A1(n114), .A2(buf0[21]), .A3(idin[21]), .A4(n117), .A5(
        n241), .Y(n718) );
  AO21X1_RVT U297 ( .A1(n120), .A2(buf0_orig[21]), .A3(n196), .Y(n241) );
  AO221X1_RVT U298 ( .A1(n114), .A2(buf0[22]), .A3(idin[22]), .A4(n117), .A5(
        n242), .Y(n719) );
  AO21X1_RVT U299 ( .A1(n120), .A2(buf0_orig[22]), .A3(n195), .Y(n242) );
  AO21X1_RVT U300 ( .A1(n112), .A2(din[22]), .A3(n144), .Y(n195) );
  AO221X1_RVT U301 ( .A1(n114), .A2(buf0[23]), .A3(idin[23]), .A4(n117), .A5(
        n243), .Y(n720) );
  AO21X1_RVT U302 ( .A1(n120), .A2(buf0_orig[23]), .A3(n194), .Y(n243) );
  AO21X1_RVT U303 ( .A1(n110), .A2(din[23]), .A3(n144), .Y(n194) );
  AO221X1_RVT U304 ( .A1(n115), .A2(buf0[24]), .A3(idin[24]), .A4(n118), .A5(
        n244), .Y(n721) );
  AO21X1_RVT U305 ( .A1(n121), .A2(buf0_orig[24]), .A3(n193), .Y(n244) );
  AO221X1_RVT U306 ( .A1(n115), .A2(buf0[25]), .A3(idin[25]), .A4(n118), .A5(
        n245), .Y(n722) );
  AO21X1_RVT U307 ( .A1(n121), .A2(buf0_orig[25]), .A3(n192), .Y(n245) );
  AO21X1_RVT U308 ( .A1(n111), .A2(din[25]), .A3(n144), .Y(n192) );
  AO221X1_RVT U309 ( .A1(n115), .A2(buf0[26]), .A3(idin[26]), .A4(n118), .A5(
        n246), .Y(n723) );
  AO21X1_RVT U310 ( .A1(n121), .A2(buf0_orig[26]), .A3(n191), .Y(n246) );
  AO21X1_RVT U311 ( .A1(n111), .A2(din[26]), .A3(n144), .Y(n191) );
  AO221X1_RVT U312 ( .A1(n115), .A2(buf0[27]), .A3(idin[27]), .A4(n118), .A5(
        n247), .Y(n724) );
  AO21X1_RVT U313 ( .A1(n121), .A2(buf0_orig[27]), .A3(n190), .Y(n247) );
  AO21X1_RVT U314 ( .A1(n111), .A2(din[27]), .A3(n144), .Y(n190) );
  AO221X1_RVT U315 ( .A1(n115), .A2(buf0[28]), .A3(idin[28]), .A4(n118), .A5(
        n248), .Y(n725) );
  AO21X1_RVT U316 ( .A1(n121), .A2(buf0_orig[28]), .A3(n189), .Y(n248) );
  AO21X1_RVT U317 ( .A1(n111), .A2(din[28]), .A3(n144), .Y(n189) );
  AO221X1_RVT U318 ( .A1(n115), .A2(buf0[29]), .A3(idin[29]), .A4(n118), .A5(
        n249), .Y(n726) );
  AO21X1_RVT U319 ( .A1(n121), .A2(buf0_orig[29]), .A3(n188), .Y(n249) );
  AO21X1_RVT U320 ( .A1(n111), .A2(din[29]), .A3(n144), .Y(n188) );
  AO221X1_RVT U321 ( .A1(n115), .A2(buf0[30]), .A3(idin[30]), .A4(n118), .A5(
        n250), .Y(n727) );
  AO21X1_RVT U322 ( .A1(n121), .A2(buf0_orig[30]), .A3(n187), .Y(n250) );
  AO21X1_RVT U323 ( .A1(din[30]), .A2(n112), .A3(n143), .Y(n187) );
  AO221X1_RVT U324 ( .A1(n115), .A2(buf0[31]), .A3(idin[31]), .A4(n118), .A5(
        n422), .Y(n728) );
  AO21X1_RVT U325 ( .A1(n121), .A2(n75), .A3(n186), .Y(n422) );
  AO21X1_RVT U326 ( .A1(din[31]), .A2(n112), .A3(n143), .Y(n186) );
  NAND4X0_RVT U327 ( .A1(buf0_set), .A2(n425), .A3(n108), .A4(n622), .Y(n424)
         );
  NAND3X0_RVT U328 ( .A1(n108), .A2(buf0_rl), .A3(n425), .Y(n423) );
  NAND2X0_RVT U329 ( .A1(n122), .A2(we), .Y(n185) );
  AO221X1_RVT U330 ( .A1(n125), .A2(buf1[0]), .A3(n128), .A4(idin[0]), .A5(
        n426), .Y(n729) );
  AO21X1_RVT U331 ( .A1(n131), .A2(din[0]), .A3(n143), .Y(n426) );
  AO221X1_RVT U332 ( .A1(n125), .A2(buf1[31]), .A3(n128), .A4(idin[31]), .A5(
        n427), .Y(n730) );
  AO21X1_RVT U333 ( .A1(n131), .A2(din[31]), .A3(n143), .Y(n427) );
  AO221X1_RVT U334 ( .A1(n125), .A2(buf1[30]), .A3(n128), .A4(idin[30]), .A5(
        n428), .Y(n731) );
  AO21X1_RVT U335 ( .A1(n131), .A2(din[30]), .A3(n143), .Y(n428) );
  AO221X1_RVT U336 ( .A1(n125), .A2(buf1[29]), .A3(n128), .A4(idin[29]), .A5(
        n429), .Y(n732) );
  AO21X1_RVT U337 ( .A1(n131), .A2(din[29]), .A3(n143), .Y(n429) );
  AO221X1_RVT U338 ( .A1(n125), .A2(buf1[28]), .A3(n128), .A4(idin[28]), .A5(
        n430), .Y(n733) );
  AO21X1_RVT U339 ( .A1(n131), .A2(din[28]), .A3(n143), .Y(n430) );
  AO221X1_RVT U340 ( .A1(n125), .A2(buf1[27]), .A3(n128), .A4(idin[27]), .A5(
        n431), .Y(n734) );
  AO21X1_RVT U341 ( .A1(n131), .A2(din[27]), .A3(n143), .Y(n431) );
  AO221X1_RVT U342 ( .A1(n125), .A2(buf1[26]), .A3(n128), .A4(idin[26]), .A5(
        n432), .Y(n735) );
  AO21X1_RVT U343 ( .A1(n131), .A2(din[26]), .A3(n143), .Y(n432) );
  AO221X1_RVT U344 ( .A1(n125), .A2(buf1[25]), .A3(n128), .A4(idin[25]), .A5(
        n433), .Y(n736) );
  AO21X1_RVT U345 ( .A1(n131), .A2(din[25]), .A3(n143), .Y(n433) );
  AO221X1_RVT U346 ( .A1(n125), .A2(buf1[24]), .A3(n128), .A4(idin[24]), .A5(
        n434), .Y(n737) );
  AO221X1_RVT U347 ( .A1(n125), .A2(buf1[23]), .A3(n128), .A4(idin[23]), .A5(
        n435), .Y(n738) );
  AO21X1_RVT U348 ( .A1(n131), .A2(din[23]), .A3(n143), .Y(n435) );
  AO221X1_RVT U349 ( .A1(n125), .A2(buf1[22]), .A3(n128), .A4(idin[22]), .A5(
        n436), .Y(n739) );
  AO21X1_RVT U350 ( .A1(n131), .A2(din[22]), .A3(n142), .Y(n436) );
  AO221X1_RVT U351 ( .A1(n125), .A2(buf1[21]), .A3(n128), .A4(idin[21]), .A5(
        n437), .Y(n740) );
  AO221X1_RVT U352 ( .A1(n126), .A2(buf1[20]), .A3(n129), .A4(idin[20]), .A5(
        n438), .Y(n741) );
  AO221X1_RVT U353 ( .A1(n126), .A2(buf1[19]), .A3(n129), .A4(idin[19]), .A5(
        n439), .Y(n742) );
  AO221X1_RVT U354 ( .A1(n126), .A2(buf1[18]), .A3(n129), .A4(idin[18]), .A5(
        n440), .Y(n743) );
  AO221X1_RVT U355 ( .A1(n126), .A2(buf1[17]), .A3(n129), .A4(idin[17]), .A5(
        n441), .Y(n744) );
  AO221X1_RVT U356 ( .A1(n126), .A2(buf1[16]), .A3(n129), .A4(idin[16]), .A5(
        n442), .Y(n745) );
  AO221X1_RVT U357 ( .A1(n126), .A2(buf1[15]), .A3(n129), .A4(idin[15]), .A5(
        n443), .Y(n746) );
  AO21X1_RVT U358 ( .A1(n132), .A2(din[15]), .A3(n142), .Y(n443) );
  AO221X1_RVT U359 ( .A1(n126), .A2(buf1[14]), .A3(n129), .A4(idin[14]), .A5(
        n444), .Y(n747) );
  AO21X1_RVT U360 ( .A1(n132), .A2(din[14]), .A3(n142), .Y(n444) );
  AO221X1_RVT U361 ( .A1(n126), .A2(buf1[13]), .A3(n129), .A4(idin[13]), .A5(
        n445), .Y(n748) );
  AO21X1_RVT U362 ( .A1(n132), .A2(din[13]), .A3(n142), .Y(n445) );
  AO221X1_RVT U363 ( .A1(n126), .A2(buf1[12]), .A3(n129), .A4(idin[12]), .A5(
        n446), .Y(n749) );
  AO21X1_RVT U364 ( .A1(n132), .A2(din[12]), .A3(n142), .Y(n446) );
  AO221X1_RVT U365 ( .A1(n126), .A2(buf1[11]), .A3(n129), .A4(idin[11]), .A5(
        n447), .Y(n750) );
  AO21X1_RVT U366 ( .A1(n132), .A2(din[11]), .A3(n142), .Y(n447) );
  AO221X1_RVT U367 ( .A1(n126), .A2(buf1[10]), .A3(n129), .A4(idin[10]), .A5(
        n448), .Y(n751) );
  AO21X1_RVT U368 ( .A1(n132), .A2(din[10]), .A3(n141), .Y(n448) );
  AO221X1_RVT U369 ( .A1(n126), .A2(buf1[9]), .A3(n129), .A4(idin[9]), .A5(
        n449), .Y(n752) );
  AO21X1_RVT U370 ( .A1(n132), .A2(din[9]), .A3(n141), .Y(n449) );
  AO221X1_RVT U371 ( .A1(n127), .A2(buf1[8]), .A3(n130), .A4(idin[8]), .A5(
        n450), .Y(n753) );
  AO21X1_RVT U372 ( .A1(n133), .A2(din[8]), .A3(n141), .Y(n450) );
  AO221X1_RVT U373 ( .A1(n127), .A2(buf1[7]), .A3(n130), .A4(idin[7]), .A5(
        n451), .Y(n754) );
  AO21X1_RVT U374 ( .A1(n133), .A2(din[7]), .A3(n146), .Y(n451) );
  AO221X1_RVT U375 ( .A1(n127), .A2(buf1[6]), .A3(n130), .A4(idin[6]), .A5(
        n452), .Y(n755) );
  AO21X1_RVT U376 ( .A1(n133), .A2(din[6]), .A3(n141), .Y(n452) );
  AO221X1_RVT U377 ( .A1(n127), .A2(buf1[5]), .A3(n130), .A4(idin[5]), .A5(
        n453), .Y(n756) );
  AO21X1_RVT U378 ( .A1(n133), .A2(din[5]), .A3(n146), .Y(n453) );
  AO221X1_RVT U379 ( .A1(n127), .A2(buf1[4]), .A3(n130), .A4(idin[4]), .A5(
        n454), .Y(n757) );
  AO21X1_RVT U380 ( .A1(n133), .A2(din[4]), .A3(n141), .Y(n454) );
  AO221X1_RVT U381 ( .A1(n127), .A2(buf1[3]), .A3(n130), .A4(idin[3]), .A5(
        n455), .Y(n758) );
  AO21X1_RVT U382 ( .A1(n133), .A2(din[3]), .A3(n146), .Y(n455) );
  AO221X1_RVT U383 ( .A1(n127), .A2(buf1[2]), .A3(n130), .A4(idin[2]), .A5(
        n456), .Y(n759) );
  AO21X1_RVT U384 ( .A1(n133), .A2(din[2]), .A3(n141), .Y(n456) );
  AO221X1_RVT U385 ( .A1(n127), .A2(buf1[1]), .A3(n130), .A4(idin[1]), .A5(
        n457), .Y(n760) );
  AO21X1_RVT U386 ( .A1(n133), .A2(din[1]), .A3(n146), .Y(n457) );
  NAND3X0_RVT U387 ( .A1(n458), .A2(n4), .A3(n460), .Y(n459) );
  OR2X1_RVT U388 ( .A1(out_to_small), .A2(buf1_set), .Y(n460) );
  NAND2X0_RVT U389 ( .A1(n86), .A2(we), .Y(n458) );
  AO22X1_RVT U390 ( .A1(n461), .A2(out_to_small), .A3(n462), .A4(n44), .Y(n761) );
  AO22X1_RVT U391 ( .A1(int_seqerr_set), .A2(n461), .A3(n462), .A4(n45), .Y(
        n762) );
  AO22X1_RVT U392 ( .A1(int_buf1_set), .A2(n461), .A3(n462), .A4(n50), .Y(n763) );
  AO22X1_RVT U393 ( .A1(int_buf0_set), .A2(n461), .A3(n462), .A4(n47), .Y(n764) );
  AO22X1_RVT U394 ( .A1(int_upid_set), .A2(n461), .A3(n462), .A4(n46), .Y(n765) );
  AO22X1_RVT U395 ( .A1(int_crc16_set), .A2(n461), .A3(n462), .A4(n17), .Y(
        n766) );
  AO22X1_RVT U396 ( .A1(int_to_set), .A2(n461), .A3(n462), .A4(n18), .Y(n767)
         );
  AND2X1_RVT U397 ( .A1(n140), .A2(n78), .Y(n462) );
  AND2X1_RVT U398 ( .A1(n425), .A2(n78), .Y(n461) );
  MUX21X1_RVT U399 ( .A1(n463), .A2(csr[29]), .S0(n464), .Y(n768) );
  AND2X1_RVT U400 ( .A1(idin[3]), .A2(n425), .Y(n463) );
  MUX21X1_RVT U401 ( .A1(n465), .A2(csr[28]), .S0(n464), .Y(n769) );
  AOI21X1_RVT U402 ( .A1(uc_dpd_set), .A2(n4), .A3(n141), .Y(n464) );
  AND2X1_RVT U403 ( .A1(idin[2]), .A2(n425), .Y(n465) );
  MUX21X1_RVT U404 ( .A1(n466), .A2(csr[31]), .S0(n467), .Y(n770) );
  AND2X1_RVT U405 ( .A1(idin[1]), .A2(n425), .Y(n466) );
  MUX21X1_RVT U406 ( .A1(n468), .A2(csr[30]), .S0(n467), .Y(n771) );
  AOI21X1_RVT U407 ( .A1(uc_bsel_set), .A2(n4), .A3(n141), .Y(n467) );
  AND2X1_RVT U408 ( .A1(idin[0]), .A2(n425), .Y(n468) );
  AND2X1_RVT U409 ( .A1(n140), .A2(n4), .Y(n425) );
  AO222X1_RVT U410 ( .A1(N292), .A2(n134), .A3(n136), .A4(dma_in_cnt[1]), .A5(
        N279), .A6(n138), .Y(n772) );
  AO222X1_RVT U411 ( .A1(N291), .A2(n134), .A3(n136), .A4(dma_in_cnt[0]), .A5(
        N278), .A6(n138), .Y(n773) );
  AO222X1_RVT U412 ( .A1(N293), .A2(n134), .A3(n136), .A4(dma_in_cnt[2]), .A5(
        N280), .A6(n138), .Y(n774) );
  AO222X1_RVT U413 ( .A1(N294), .A2(n134), .A3(n136), .A4(dma_in_cnt[3]), .A5(
        N281), .A6(n138), .Y(n775) );
  AO222X1_RVT U414 ( .A1(N295), .A2(n134), .A3(n136), .A4(dma_in_cnt[4]), .A5(
        N282), .A6(n138), .Y(n776) );
  AO222X1_RVT U415 ( .A1(N296), .A2(n134), .A3(n136), .A4(dma_in_cnt[5]), .A5(
        N283), .A6(n138), .Y(n777) );
  AO222X1_RVT U416 ( .A1(N297), .A2(n134), .A3(n136), .A4(dma_in_cnt[6]), .A5(
        N284), .A6(n138), .Y(n778) );
  AO222X1_RVT U417 ( .A1(N298), .A2(n134), .A3(n136), .A4(dma_in_cnt[7]), .A5(
        N285), .A6(n138), .Y(n779) );
  AO222X1_RVT U418 ( .A1(N299), .A2(n134), .A3(n136), .A4(dma_in_cnt[8]), .A5(
        N286), .A6(n138), .Y(n780) );
  AO222X1_RVT U419 ( .A1(N300), .A2(n134), .A3(n136), .A4(dma_in_cnt[9]), .A5(
        N287), .A6(n138), .Y(n781) );
  AO222X1_RVT U420 ( .A1(N301), .A2(n134), .A3(n136), .A4(dma_in_cnt[10]), 
        .A5(N288), .A6(n138), .Y(n782) );
  AO222X1_RVT U421 ( .A1(N302), .A2(n134), .A3(n136), .A4(dma_in_cnt[11]), 
        .A5(N289), .A6(n138), .Y(n783) );
  AO222X1_RVT U422 ( .A1(N243), .A2(n135), .A3(n137), .A4(dma_out_cnt[1]), 
        .A5(N230), .A6(n139), .Y(n784) );
  AO222X1_RVT U423 ( .A1(N242), .A2(n135), .A3(n137), .A4(dma_out_cnt[0]), 
        .A5(N229), .A6(n139), .Y(n785) );
  AO222X1_RVT U424 ( .A1(N244), .A2(n135), .A3(n137), .A4(dma_out_cnt[2]), 
        .A5(N231), .A6(n139), .Y(n786) );
  AO222X1_RVT U425 ( .A1(N245), .A2(n135), .A3(n137), .A4(dma_out_cnt[3]), 
        .A5(N232), .A6(n139), .Y(n787) );
  AO222X1_RVT U426 ( .A1(N246), .A2(n135), .A3(n137), .A4(dma_out_cnt[4]), 
        .A5(N233), .A6(n139), .Y(n788) );
  AO222X1_RVT U427 ( .A1(N247), .A2(n135), .A3(n137), .A4(dma_out_cnt[5]), 
        .A5(N234), .A6(n139), .Y(n789) );
  AO222X1_RVT U428 ( .A1(N248), .A2(n135), .A3(n137), .A4(dma_out_cnt[6]), 
        .A5(N235), .A6(n139), .Y(n790) );
  AO222X1_RVT U429 ( .A1(N249), .A2(n135), .A3(n137), .A4(dma_out_cnt[7]), 
        .A5(N236), .A6(n139), .Y(n791) );
  AO222X1_RVT U430 ( .A1(N250), .A2(n135), .A3(n137), .A4(dma_out_cnt[8]), 
        .A5(N237), .A6(n139), .Y(n792) );
  AO222X1_RVT U431 ( .A1(N251), .A2(n135), .A3(n137), .A4(dma_out_cnt[9]), 
        .A5(N238), .A6(n139), .Y(n793) );
  AO222X1_RVT U432 ( .A1(N252), .A2(n135), .A3(n137), .A4(dma_out_cnt[10]), 
        .A5(N239), .A6(n139), .Y(n794) );
  AO222X1_RVT U433 ( .A1(N253), .A2(n135), .A3(n137), .A4(dma_out_cnt[11]), 
        .A5(N240), .A6(n139), .Y(n795) );
  NAND2X0_RVT U434 ( .A1(r5), .A2(csr[15]), .Y(n469) );
  NAND4X0_RVT U435 ( .A1(n471), .A2(csr[15]), .A3(n4), .A4(n24), .Y(n470) );
  NAND3X0_RVT U436 ( .A1(n472), .A2(n556), .A3(n622), .Y(n471) );
  INVX0_RVT U437 ( .A(buf0_rl), .Y(n622) );
  INVX0_RVT U438 ( .A(buf0_set), .Y(n472) );
  AND2X1_RVT U439 ( .A1(rst), .A2(n473), .Y(n796) );
  AO221X1_RVT U440 ( .A1(n474), .A2(dma_req), .A3(r1), .A4(n3), .A5(n476), .Y(
        n473) );
  AND4X1_RVT U441 ( .A1(n477), .A2(dma_req_in_hold2), .A3(dma_req_in_hold), 
        .A4(dma_req), .Y(n476) );
  AO21X1_RVT U442 ( .A1(n478), .A2(dma_req_out_hold), .A3(n625), .Y(n474) );
  INVX0_RVT U443 ( .A(dma_ack), .Y(n625) );
  NAND4X0_RVT U444 ( .A1(n591), .A2(n592), .A3(n590), .A4(n479), .Y(n797) );
  AND3X1_RVT U445 ( .A1(n594), .A2(n595), .A3(n593), .Y(n479) );
  AND4X1_RVT U446 ( .A1(n480), .A2(n481), .A3(n482), .A4(n483), .Y(ep_match)
         );
  XOR2X1_RVT U447 ( .A1(n557), .A2(ep_sel[3]), .Y(n483) );
  XOR2X1_RVT U448 ( .A1(n558), .A2(ep_sel[2]), .Y(n482) );
  XOR2X1_RVT U449 ( .A1(n559), .A2(ep_sel[1]), .Y(n481) );
  XOR2X1_RVT U450 ( .A1(n560), .A2(ep_sel[0]), .Y(n480) );
  AO222X1_RVT U451 ( .A1(n123), .A2(buf0[9]), .A3(n94), .A4(buf1[9]), .A5(n96), 
        .A6(csr_9), .Y(dout[9]) );
  AO222X1_RVT U452 ( .A1(n122), .A2(buf0[8]), .A3(n84), .A4(buf1[8]), .A5(n98), 
        .A6(csr_8), .Y(dout[8]) );
  AO222X1_RVT U453 ( .A1(n123), .A2(buf0[7]), .A3(n85), .A4(buf1[7]), .A5(n98), 
        .A6(csr_7), .Y(dout[7]) );
  AO221X1_RVT U454 ( .A1(n94), .A2(buf1[6]), .A3(n123), .A4(buf0[6]), .A5(n484), .Y(dout[6]) );
  AO22X1_RVT U455 ( .A1(n102), .A2(n44), .A3(n97), .A4(csr_6), .Y(n484) );
  AO221X1_RVT U456 ( .A1(n83), .A2(buf1[5]), .A3(n123), .A4(buf0[5]), .A5(n485), .Y(dout[5]) );
  AO22X1_RVT U457 ( .A1(n103), .A2(n45), .A3(n97), .A4(csr_5), .Y(n485) );
  AO221X1_RVT U458 ( .A1(n83), .A2(buf1[4]), .A3(n122), .A4(buf0[4]), .A5(n486), .Y(dout[4]) );
  AO22X1_RVT U459 ( .A1(n102), .A2(n50), .A3(n98), .A4(csr_4), .Y(n486) );
  AO221X1_RVT U460 ( .A1(n85), .A2(buf1[3]), .A3(n124), .A4(buf0[3]), .A5(n487), .Y(dout[3]) );
  AO22X1_RVT U461 ( .A1(n103), .A2(n47), .A3(n98), .A4(csr_3), .Y(n487) );
  AO222X1_RVT U462 ( .A1(n123), .A2(buf0[31]), .A3(n94), .A4(buf1[31]), .A5(
        n100), .A6(csr[31]), .Y(dout[31]) );
  AO222X1_RVT U463 ( .A1(n122), .A2(buf0[30]), .A3(n84), .A4(buf1[30]), .A5(
        n96), .A6(csr[30]), .Y(dout[30]) );
  AO221X1_RVT U464 ( .A1(n86), .A2(buf1[2]), .A3(n99), .A4(buf0[2]), .A5(n488), 
        .Y(dout[2]) );
  AO22X1_RVT U465 ( .A1(n102), .A2(n46), .A3(n97), .A4(csr_2), .Y(n488) );
  AO221X1_RVT U466 ( .A1(n85), .A2(buf1[29]), .A3(n123), .A4(buf0[29]), .A5(
        n489), .Y(dout[29]) );
  AO22X1_RVT U467 ( .A1(n103), .A2(n8), .A3(n100), .A4(csr[29]), .Y(n489) );
  AO221X1_RVT U468 ( .A1(n94), .A2(buf1[28]), .A3(n124), .A4(buf0[28]), .A5(
        n490), .Y(dout[28]) );
  AO221X1_RVT U469 ( .A1(n84), .A2(buf1[27]), .A3(n122), .A4(buf0[27]), .A5(
        n491), .Y(dout[27]) );
  AO221X1_RVT U470 ( .A1(n83), .A2(buf1[26]), .A3(n123), .A4(buf0[26]), .A5(
        n492), .Y(dout[26]) );
  AO221X1_RVT U471 ( .A1(n93), .A2(buf1[25]), .A3(n99), .A4(buf0[25]), .A5(
        n493), .Y(dout[25]) );
  AO221X1_RVT U472 ( .A1(n85), .A2(buf1[24]), .A3(n99), .A4(buf0[24]), .A5(
        n494), .Y(dout[24]) );
  AO222X1_RVT U473 ( .A1(n99), .A2(buf0[23]), .A3(n86), .A4(buf1[23]), .A5(n96), .A6(csr[23]), .Y(dout[23]) );
  AO222X1_RVT U474 ( .A1(n123), .A2(buf0[22]), .A3(n84), .A4(buf1[22]), .A5(
        n98), .A6(csr[22]), .Y(dout[22]) );
  AO221X1_RVT U475 ( .A1(n94), .A2(buf1[21]), .A3(n122), .A4(buf0[21]), .A5(
        n495), .Y(dout[21]) );
  AO221X1_RVT U476 ( .A1(n84), .A2(buf1[20]), .A3(n99), .A4(buf0[20]), .A5(
        n496), .Y(dout[20]) );
  AO221X1_RVT U477 ( .A1(n84), .A2(buf1[1]), .A3(n124), .A4(buf0[1]), .A5(n497), .Y(dout[1]) );
  AO221X1_RVT U478 ( .A1(n86), .A2(buf1[19]), .A3(n122), .A4(buf0[19]), .A5(
        n498), .Y(dout[19]) );
  AO221X1_RVT U479 ( .A1(n85), .A2(buf1[18]), .A3(n124), .A4(buf0[18]), .A5(
        n499), .Y(dout[18]) );
  AO221X1_RVT U480 ( .A1(n83), .A2(buf1[17]), .A3(n122), .A4(buf0[17]), .A5(
        n500), .Y(dout[17]) );
  AO221X1_RVT U481 ( .A1(n85), .A2(buf1[16]), .A3(n99), .A4(buf0[16]), .A5(
        n501), .Y(dout[16]) );
  AO222X1_RVT U482 ( .A1(n99), .A2(buf0[15]), .A3(n84), .A4(buf1[15]), .A5(n95), .A6(csr[15]), .Y(dout[15]) );
  AO22X1_RVT U483 ( .A1(n124), .A2(buf0[14]), .A3(n83), .A4(buf1[14]), .Y(
        dout[14]) );
  AO222X1_RVT U484 ( .A1(n124), .A2(buf0[13]), .A3(n86), .A4(buf1[13]), .A5(
        n96), .A6(csr_13), .Y(dout[13]) );
  AO222X1_RVT U485 ( .A1(n122), .A2(buf0[12]), .A3(n86), .A4(buf1[12]), .A5(
        n98), .A6(csr_12), .Y(dout[12]) );
  AO222X1_RVT U486 ( .A1(n99), .A2(buf0[11]), .A3(n83), .A4(buf1[11]), .A5(n95), .A6(csr_11), .Y(dout[11]) );
  AO222X1_RVT U487 ( .A1(n124), .A2(buf0[10]), .A3(n94), .A4(buf1[10]), .A5(
        n95), .A6(csr_10), .Y(dout[10]) );
  AO221X1_RVT U488 ( .A1(n85), .A2(buf1[0]), .A3(n124), .A4(buf0[0]), .A5(n502), .Y(dout[0]) );
  AND4X1_RVT U489 ( .A1(n76), .A2(n24), .A3(n3), .A4(n504), .Y(N361) );
  AOI21X1_RVT U490 ( .A1(n505), .A2(n506), .A3(n806), .Y(n504) );
  NAND3X0_RVT U491 ( .A1(n507), .A2(csr[26]), .A3(n807), .Y(n506) );
  AO22X1_RVT U492 ( .A1(n609), .A2(buf0_orig[30]), .A3(n508), .A4(n509), .Y(
        n507) );
  NAND2X0_RVT U493 ( .A1(n599), .A2(dma_in_cnt[11]), .Y(n509) );
  AO21X1_RVT U494 ( .A1(n619), .A2(buf0_orig[29]), .A3(n510), .Y(n508) );
  OA221X1_RVT U495 ( .A1(n618), .A2(buf0_orig[28]), .A3(n619), .A4(
        buf0_orig[29]), .A5(n511), .Y(n510) );
  AO221X1_RVT U496 ( .A1(n618), .A2(buf0_orig[28]), .A3(n617), .A4(
        buf0_orig[27]), .A5(n512), .Y(n511) );
  OA221X1_RVT U497 ( .A1(n617), .A2(buf0_orig[27]), .A3(n616), .A4(
        buf0_orig[26]), .A5(n513), .Y(n512) );
  AO221X1_RVT U498 ( .A1(n616), .A2(buf0_orig[26]), .A3(n615), .A4(
        buf0_orig[25]), .A5(n514), .Y(n513) );
  OA221X1_RVT U499 ( .A1(n615), .A2(buf0_orig[25]), .A3(n614), .A4(
        buf0_orig[24]), .A5(n515), .Y(n514) );
  AO221X1_RVT U500 ( .A1(n614), .A2(buf0_orig[24]), .A3(n613), .A4(
        buf0_orig[23]), .A5(n516), .Y(n515) );
  OA221X1_RVT U501 ( .A1(n613), .A2(buf0_orig[23]), .A3(n612), .A4(
        buf0_orig[22]), .A5(n517), .Y(n516) );
  AO222X1_RVT U502 ( .A1(n518), .A2(buf0_orig[21]), .A3(n611), .A4(n519), .A5(
        n612), .A6(buf0_orig[22]), .Y(n517) );
  OR2X1_RVT U503 ( .A1(buf0_orig[21]), .A2(n518), .Y(n519) );
  AO22X1_RVT U504 ( .A1(n608), .A2(buf0_orig[20]), .A3(n520), .A4(n610), .Y(
        n518) );
  OA21X1_RVT U505 ( .A1(n608), .A2(buf0_orig[20]), .A3(buf0_orig[19]), .Y(n520) );
  NAND2X0_RVT U506 ( .A1(n478), .A2(n521), .Y(n505) );
  OR3X1_RVT U507 ( .A1(dma_out_cnt[0]), .A2(n798), .A3(dma_out_cnt[1]), .Y(
        n521) );
  NAND4X0_RVT U508 ( .A1(n563), .A2(n564), .A3(n522), .A4(n523), .Y(n798) );
  AND3X1_RVT U509 ( .A1(n568), .A2(n569), .A3(n524), .Y(n523) );
  AND3X1_RVT U510 ( .A1(n802), .A2(n803), .A3(n570), .Y(n524) );
  AND3X1_RVT U511 ( .A1(n566), .A2(n567), .A3(n565), .Y(n522) );
  INVX0_RVT U512 ( .A(n477), .Y(n478) );
  NAND2X0_RVT U513 ( .A1(n175), .A2(csr[27]), .Y(n477) );
  AND3X1_RVT U514 ( .A1(n525), .A2(csr[26]), .A3(n807), .Y(N348) );
  NAND4X0_RVT U515 ( .A1(n601), .A2(n600), .A3(n526), .A4(n527), .Y(n525) );
  AND3X1_RVT U516 ( .A1(n605), .A2(n606), .A3(n528), .Y(n527) );
  AND3X1_RVT U517 ( .A1(n804), .A2(n599), .A3(n805), .Y(n528) );
  AND3X1_RVT U518 ( .A1(n603), .A2(n604), .A3(n602), .Y(n526) );
  AO22X1_RVT U519 ( .A1(n609), .A2(n43), .A3(n529), .A4(n530), .Y(N347) );
  NAND2X0_RVT U520 ( .A1(n620), .A2(dma_in_cnt[11]), .Y(n530) );
  AO21X1_RVT U521 ( .A1(n619), .A2(n42), .A3(n531), .Y(n529) );
  OA221X1_RVT U522 ( .A1(n618), .A2(n15), .A3(n619), .A4(n42), .A5(n532), .Y(
        n531) );
  AO221X1_RVT U523 ( .A1(n617), .A2(n41), .A3(n618), .A4(n15), .A5(n533), .Y(
        n532) );
  OA221X1_RVT U524 ( .A1(n617), .A2(n41), .A3(n616), .A4(n16), .A5(n534), .Y(
        n533) );
  AO221X1_RVT U525 ( .A1(n615), .A2(n39), .A3(n616), .A4(n16), .A5(n535), .Y(
        n534) );
  OA221X1_RVT U526 ( .A1(n615), .A2(n39), .A3(n614), .A4(n14), .A5(n536), .Y(
        n535) );
  AO221X1_RVT U527 ( .A1(n613), .A2(n40), .A3(n614), .A4(n14), .A5(n537), .Y(
        n536) );
  OA221X1_RVT U528 ( .A1(n613), .A2(n40), .A3(n612), .A4(n13), .A5(n538), .Y(
        n537) );
  AO222X1_RVT U529 ( .A1(n539), .A2(n34), .A3(n611), .A4(n540), .A5(n612), 
        .A6(n13), .Y(n538) );
  OR2X1_RVT U530 ( .A1(n34), .A2(n539), .Y(n540) );
  AO22X1_RVT U531 ( .A1(n608), .A2(n36), .A3(n541), .A4(n610), .Y(n539) );
  OA21X1_RVT U532 ( .A1(n608), .A2(n36), .A3(\buf0_orig_m3[0] ), .Y(n541) );
  NAND4X0_RVT U533 ( .A1(n609), .A2(n619), .A3(n542), .A4(n618), .Y(N319) );
  OA21X1_RVT U534 ( .A1(n617), .A2(csr_10), .A3(n543), .Y(n542) );
  AO221X1_RVT U535 ( .A1(n617), .A2(csr_10), .A3(n616), .A4(csr_9), .A5(n544), 
        .Y(n543) );
  OA221X1_RVT U536 ( .A1(n615), .A2(csr_8), .A3(n616), .A4(csr_9), .A5(n545), 
        .Y(n544) );
  AO221X1_RVT U537 ( .A1(n615), .A2(csr_8), .A3(n614), .A4(csr_7), .A5(n546), 
        .Y(n545) );
  OA221X1_RVT U538 ( .A1(n613), .A2(csr_6), .A3(n614), .A4(csr_7), .A5(n547), 
        .Y(n546) );
  AO221X1_RVT U539 ( .A1(n613), .A2(csr_6), .A3(n612), .A4(csr_5), .A5(n548), 
        .Y(n547) );
  OA221X1_RVT U540 ( .A1(n611), .A2(csr_4), .A3(n612), .A4(csr_5), .A5(n549), 
        .Y(n548) );
  AO222X1_RVT U541 ( .A1(n611), .A2(csr_4), .A3(n550), .A4(n610), .A5(n608), 
        .A6(csr_3), .Y(n549) );
  OA21X1_RVT U542 ( .A1(n608), .A2(csr_3), .A3(csr_2), .Y(n550) );
  NAND2X0_RVT U543 ( .A1(n551), .A2(n552), .Y(N222) );
  OA222X1_RVT U544 ( .A1(n575), .A2(n587), .A3(n572), .A4(n553), .A5(n576), 
        .A6(n589), .Y(n552) );
  OA222X1_RVT U545 ( .A1(n571), .A2(n578), .A3(n574), .A4(n585), .A5(n573), 
        .A6(n581), .Y(n551) );
  NAND2X0_RVT U546 ( .A1(n554), .A2(n555), .Y(N221) );
  OA222X1_RVT U547 ( .A1(n586), .A2(n587), .A3(n579), .A4(n553), .A5(n588), 
        .A6(n589), .Y(n555) );
  AND2X1_RVT U548 ( .A1(n582), .A2(n583), .Y(n553) );
  OA222X1_RVT U549 ( .A1(n577), .A2(n578), .A3(n584), .A4(n585), .A5(n580), 
        .A6(n581), .Y(n554) );
endmodule


module usbf_ep_rf_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  FADDX1_RVT U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .S(DIFF[11]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n1), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1_RVT U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(
        DIFF[9]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1_RVT U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1_RVT U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(
        DIFF[8]) );
  FADDX1_RVT U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  INVX1_RVT U1 ( .A(B[0]), .Y(n3) );
  INVX1_RVT U2 ( .A(B[10]), .Y(n12) );
  INVX1_RVT U3 ( .A(B[8]), .Y(n10) );
  INVX1_RVT U4 ( .A(B[7]), .Y(n9) );
  INVX1_RVT U5 ( .A(B[6]), .Y(n8) );
  INVX1_RVT U6 ( .A(B[5]), .Y(n7) );
  INVX1_RVT U7 ( .A(B[4]), .Y(n6) );
  INVX1_RVT U8 ( .A(B[3]), .Y(n5) );
  INVX1_RVT U9 ( .A(B[2]), .Y(n4) );
  INVX1_RVT U10 ( .A(B[9]), .Y(n11) );
  OR2X1_RVT U11 ( .A1(n3), .A2(A[0]), .Y(carry[1]) );
  INVX1_RVT U12 ( .A(B[1]), .Y(n1) );
  XNOR2X1_RVT U13 ( .A1(A[0]), .A2(n3), .Y(DIFF[0]) );
  INVX1_RVT U14 ( .A(B[11]), .Y(n2) );
endmodule


module usbf_ep_rf_1_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [12:0] carry;

  FADDX1_RVT U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1_RVT U2_8 ( .A(A[8]), .B(n1), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  INVX1_RVT U1 ( .A(B[0]), .Y(n9) );
  INVX1_RVT U2 ( .A(B[8]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(n9), .A2(A[0]), .Y(carry[1]) );
  INVX1_RVT U4 ( .A(B[1]), .Y(n8) );
  INVX1_RVT U5 ( .A(B[2]), .Y(n7) );
  INVX1_RVT U6 ( .A(B[4]), .Y(n5) );
  INVX1_RVT U7 ( .A(B[6]), .Y(n3) );
  INVX1_RVT U8 ( .A(B[3]), .Y(n6) );
  INVX1_RVT U9 ( .A(B[5]), .Y(n4) );
  INVX1_RVT U10 ( .A(B[7]), .Y(n2) );
  XNOR2X1_RVT U11 ( .A1(A[10]), .A2(carry[10]), .Y(DIFF[10]) );
  XNOR2X1_RVT U12 ( .A1(A[9]), .A2(carry[9]), .Y(DIFF[9]) );
  XNOR2X1_RVT U13 ( .A1(A[0]), .A2(n9), .Y(DIFF[0]) );
  XNOR2X1_RVT U14 ( .A1(A[11]), .A2(carry[11]), .Y(DIFF[11]) );
  OR2X1_RVT U15 ( .A1(carry[10]), .A2(A[10]), .Y(carry[11]) );
  OR2X1_RVT U16 ( .A1(carry[9]), .A2(A[9]), .Y(carry[10]) );
endmodule


module usbf_ep_rf_1_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HADDX1_RVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[11]), .A2(A[11]), .Y(SUM[11]) );
endmodule


module usbf_ep_rf_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;

  wire   [11:1] carry;

  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
  XOR2X1_RVT U2 ( .A1(A[10]), .A2(carry[10]), .Y(SUM[10]) );
  XOR2X1_RVT U3 ( .A1(A[9]), .A2(carry[9]), .Y(SUM[9]) );
  XOR2X1_RVT U4 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  XOR2X1_RVT U5 ( .A1(A[11]), .A2(carry[11]), .Y(SUM[11]) );
  AND2X1_RVT U6 ( .A1(A[9]), .A2(carry[9]), .Y(carry[10]) );
  AND2X1_RVT U7 ( .A1(A[10]), .A2(carry[10]), .Y(carry[11]) );
endmodule


module usbf_ep_rf_1_DW01_dec_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20;

  INVX1_RVT U1 ( .A(n20), .Y(n1) );
  INVX1_RVT U2 ( .A(n11), .Y(n2) );
  INVX1_RVT U3 ( .A(n12), .Y(n3) );
  INVX1_RVT U4 ( .A(n13), .Y(n4) );
  INVX1_RVT U5 ( .A(n14), .Y(n5) );
  INVX1_RVT U6 ( .A(n15), .Y(n6) );
  INVX1_RVT U7 ( .A(n16), .Y(n7) );
  INVX1_RVT U8 ( .A(n17), .Y(n8) );
  INVX1_RVT U9 ( .A(A[0]), .Y(SUM[0]) );
  INVX1_RVT U10 ( .A(n18), .Y(n9) );
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


module usbf_ep_rf_1 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;
  wire   csr_13, csr_12, csr_11, csr_10, csr_9, csr_8, csr_7, csr_6, csr_5,
         csr_4, csr_3, csr_2, csr_1, csr_0, N221, N222, N229, N230, N231, N232,
         N233, N234, N235, N236, N237, N238, N239, N240, N242, N243, N244,
         N245, N246, N247, N248, N249, N250, N251, N252, N253,
         dma_req_out_hold, N278, N279, N280, N281, N282, N283, N284, N285,
         N286, N287, N288, N289, N291, N292, N293, N294, N295, N296, N297,
         N298, N299, N300, N301, N302, N319, N321, N322, N323, N324, N325,
         N326, N327, N328, N329, N330, N331, N332, N333, N336, N337, N338,
         N339, N340, N341, N342, N343, N344, N345, N346, \buf0_orig_m3[0] ,
         N347, dma_req_in_hold2, N348, dma_req_in_hold, r1, r2, r4, r5, N361,
         dma_ack_wr1, \sub_449/carry[2] , \sub_449/carry[3] ,
         \sub_449/carry[4] , \sub_449/carry[5] , \sub_449/carry[6] ,
         \sub_449/carry[7] , \sub_449/carry[8] , \sub_449/carry[9] ,
         \sub_449/carry[10] , \sub_449/carry[11] , n1, n2, n3, n4, n5, n7, n8,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n27, n30, n31, n33, n34, n36, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n54, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n72, n73, n74, n75, n76, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n235, n236, n237, n238,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808;
  wire   [31:0] buf0_orig;
  wire   [11:0] dma_out_cnt;
  wire   [11:0] dma_in_cnt;
  wire   [11:0] dma_out_left;
  assign csr[14] = 1'b0;
  assign csr[13] = csr_13;
  assign csr[12] = csr_12;
  assign csr[11] = csr_11;
  assign csr[10] = csr_10;
  assign csr[9] = csr_9;
  assign csr[8] = csr_8;
  assign csr[7] = csr_7;
  assign csr[6] = csr_6;
  assign csr[5] = csr_5;
  assign csr[4] = csr_4;
  assign csr[3] = csr_3;
  assign csr[2] = csr_2;
  assign csr[1] = csr_1;
  assign csr[0] = csr_0;

  usbf_ep_rf_1_DW01_sub_1 sub_433 ( .A(buf0_orig[30:19]), .B(dma_out_cnt), 
        .CI(1'b0), .DIFF({N332, N331, N330, N329, N328, N327, N326, N325, N324, 
        N323, N322, N321}) );
  usbf_ep_rf_1_DW01_sub_2 sub_422 ( .A(dma_in_cnt), .B({1'b0, 1'b0, 1'b0, 
        csr_10, csr_9, csr_8, csr_7, csr_6, csr_5, csr_4, csr_3, csr_2}), .CI(
        1'b0), .DIFF({N302, N301, N300, N299, N298, N297, N296, N295, N294, 
        N293, N292, N291}) );
  usbf_ep_rf_1_DW01_inc_0 add_419_S2 ( .A(dma_in_cnt), .SUM({N289, N288, N287, 
        N286, N285, N284, N283, N282, N281, N280, N279, N278}) );
  usbf_ep_rf_1_DW01_add_0 add_397 ( .A(dma_out_cnt), .B({1'b0, 1'b0, 1'b0, 
        csr_10, csr_9, csr_8, csr_7, csr_6, csr_5, csr_4, csr_3, csr_2}), .CI(
        1'b0), .SUM({N253, N252, N251, N250, N249, N248, N247, N246, N245, 
        N244, N243, N242}) );
  usbf_ep_rf_1_DW01_dec_0 sub_394_S2 ( .A(dma_out_cnt), .SUM({N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229}) );
  SDFFSSRX1_RVT int_re_reg ( .RSTB(n625), .SETB(1'b1), .D(adr[0]), .SI(1'b0), 
        .SE(n624), .CLK(n161), .QN(n76) );
  DFFX1_RVT \ienb_reg[5]  ( .D(n654), .CLK(n148), .Q(n47), .QN(n577) );
  DFFX1_RVT \ienb_reg[4]  ( .D(n655), .CLK(n148), .Q(n19), .QN(n575) );
  DFFX1_RVT \ienb_reg[3]  ( .D(n656), .CLK(n149), .Q(n48), .QN(n573) );
  DFFX1_RVT \ienb_reg[2]  ( .D(n657), .CLK(n148), .Q(n21), .QN(n576) );
  DFFX1_RVT \ienb_reg[1]  ( .D(n658), .CLK(n148), .Q(n18), .QN(n574) );
  DFFX1_RVT \ienb_reg[0]  ( .D(n659), .CLK(n148), .Q(n22), .QN(n572) );
  DFFX1_RVT \iena_reg[5]  ( .D(n660), .CLK(n148), .Q(n4), .QN(n589) );
  DFFX1_RVT \iena_reg[4]  ( .D(n661), .CLK(n148), .Q(n5), .QN(n585) );
  DFFX1_RVT \iena_reg[3]  ( .D(n662), .CLK(n149), .Q(n49), .QN(n580) );
  DFFX1_RVT \iena_reg[2]  ( .D(n663), .CLK(n149), .Q(n20), .QN(n587) );
  DFFX1_RVT \iena_reg[1]  ( .D(n664), .CLK(n149), .Q(n7), .QN(n581) );
  DFFX1_RVT \iena_reg[0]  ( .D(n665), .CLK(n149), .Q(n8), .QN(n578) );
  DFFX1_RVT \buf0_orig_reg[31]  ( .D(n666), .CLK(n149), .Q(n74) );
  DFFX1_RVT \buf0_orig_reg[18]  ( .D(n679), .CLK(n150), .Q(n73) );
  DFFX1_RVT \buf0_orig_reg[17]  ( .D(n680), .CLK(n150), .Q(n72) );
  DFFX1_RVT \buf0_orig_reg[16]  ( .D(n681), .CLK(n150), .Q(n70) );
  DFFX1_RVT \buf0_orig_reg[15]  ( .D(n682), .CLK(n150), .Q(n69) );
  DFFX1_RVT \buf0_orig_reg[14]  ( .D(n683), .CLK(n150), .Q(n68) );
  DFFX1_RVT \buf0_orig_reg[13]  ( .D(n684), .CLK(n150), .Q(n67) );
  DFFX1_RVT \buf0_orig_reg[12]  ( .D(n685), .CLK(n151), .Q(n66) );
  DFFX1_RVT \buf0_orig_reg[11]  ( .D(n686), .CLK(n151), .Q(n65) );
  DFFX1_RVT \buf0_orig_reg[10]  ( .D(n687), .CLK(n151), .Q(n64) );
  DFFX1_RVT \buf0_orig_reg[9]  ( .D(n688), .CLK(n151), .Q(n63) );
  DFFX1_RVT \buf0_orig_reg[8]  ( .D(n689), .CLK(n151), .Q(n62) );
  DFFX1_RVT \buf0_orig_reg[7]  ( .D(n690), .CLK(n151), .Q(n61) );
  DFFX1_RVT \buf0_orig_reg[6]  ( .D(n691), .CLK(n151), .Q(n60) );
  DFFX1_RVT \buf0_orig_reg[5]  ( .D(n692), .CLK(n151), .Q(n59) );
  DFFX1_RVT \buf0_orig_reg[4]  ( .D(n693), .CLK(n151), .Q(n58) );
  DFFX1_RVT \buf0_orig_reg[3]  ( .D(n694), .CLK(n151), .Q(n57) );
  DFFX1_RVT \buf0_orig_reg[2]  ( .D(n695), .CLK(n151), .Q(n56) );
  DFFX1_RVT \buf0_orig_reg[1]  ( .D(n696), .CLK(n151), .Q(n54) );
  DFFX1_RVT \buf0_orig_reg[0]  ( .D(n697), .CLK(n152), .Q(n51) );
  DFFX1_RVT ep_match_r_reg ( .D(ep_match), .CLK(n152), .Q(n3) );
  DFFX1_RVT \int_stat_reg[6]  ( .D(n762), .CLK(n157), .Q(n43), .QN(n590) );
  DFFX1_RVT \int_stat_reg[5]  ( .D(n763), .CLK(n157), .Q(n44), .QN(n586) );
  DFFX1_RVT \int_stat_reg[4]  ( .D(n764), .CLK(n157), .Q(n50), .QN(n584) );
  DFFX1_RVT \int_stat_reg[3]  ( .D(n765), .CLK(n157), .Q(n46), .QN(n583) );
  DFFX1_RVT \int_stat_reg[2]  ( .D(n766), .CLK(n157), .Q(n45), .QN(n588) );
  DFFX1_RVT \int_stat_reg[1]  ( .D(n767), .CLK(n158), .Q(n16), .QN(n582) );
  DFFX1_RVT \int_stat_reg[0]  ( .D(n768), .CLK(n158), .Q(n17), .QN(n579) );
  DFFSSRX1_RVT set_r_reg ( .D(buf0_set), .SETB(n623), .RSTB(r5), .CLK(n146), 
        .QN(n557) );
  DFFX1_RVT dma_out_buf_avail_reg ( .D(N333), .CLK(n160), .Q(dma_out_buf_avail) );
  DFFX1_RVT \dma_out_left_reg[10]  ( .D(N331), .CLK(n160), .Q(dma_out_left[10]) );
  DFFX1_RVT \dma_out_left_reg[9]  ( .D(N330), .CLK(n160), .Q(dma_out_left[9])
         );
  DFFX1_RVT \csr1_reg[12]  ( .D(n628), .CLK(n153), .Q(csr[27]), .QN(n808) );
  DFFX1_RVT \csr1_reg[11]  ( .D(n629), .CLK(n146), .Q(csr[26]), .QN(n174) );
  DFFX1_RVT \csr1_reg[10]  ( .D(n630), .CLK(n146), .Q(csr[25]) );
  DFFX1_RVT \csr1_reg[9]  ( .D(n631), .CLK(n146), .Q(csr[24]) );
  DFFX1_RVT \csr1_reg[6]  ( .D(n632), .CLK(n146), .Q(csr[21]), .QN(n558) );
  DFFX1_RVT \csr1_reg[5]  ( .D(n633), .CLK(n147), .Q(csr[20]), .QN(n559) );
  DFFX1_RVT \csr1_reg[4]  ( .D(n634), .CLK(n146), .Q(csr[19]), .QN(n560) );
  DFFX1_RVT \csr1_reg[3]  ( .D(n635), .CLK(n146), .Q(csr[18]), .QN(n561) );
  DFFX1_RVT \csr1_reg[2]  ( .D(n636), .CLK(n146), .Q(csr[17]) );
  DFFX1_RVT \csr1_reg[1]  ( .D(n637), .CLK(n146), .Q(csr[16]) );
  DFFX1_RVT \csr1_reg[0]  ( .D(n638), .CLK(n146), .Q(csr[15]), .QN(n807) );
  DFFX1_RVT ots_stop_reg ( .D(n627), .CLK(n147), .Q(csr_13) );
  DFFX1_RVT \csr1_reg[8]  ( .D(n640), .CLK(n147), .Q(csr[23]) );
  DFFX1_RVT \csr1_reg[7]  ( .D(n639), .CLK(n147), .Q(csr[22]) );
  DFFX1_RVT \csr0_reg[12]  ( .D(n641), .CLK(n147), .Q(csr_12) );
  DFFX1_RVT \csr0_reg[11]  ( .D(n642), .CLK(n147), .Q(csr_11) );
  DFFX1_RVT \csr0_reg[1]  ( .D(n652), .CLK(n148), .Q(csr_1), .QN(n562) );
  DFFX1_RVT \csr0_reg[0]  ( .D(n653), .CLK(n148), .Q(csr_0), .QN(n563) );
  DFFX1_RVT \buf1_reg[1]  ( .D(n761), .CLK(n152), .Q(buf1[1]) );
  DFFX1_RVT \buf1_reg[2]  ( .D(n760), .CLK(n152), .Q(buf1[2]) );
  DFFX1_RVT \buf1_reg[3]  ( .D(n759), .CLK(n152), .Q(buf1[3]) );
  DFFX1_RVT \buf1_reg[4]  ( .D(n758), .CLK(n152), .Q(buf1[4]) );
  DFFX1_RVT \buf1_reg[5]  ( .D(n757), .CLK(n152), .Q(buf1[5]) );
  DFFX1_RVT \buf1_reg[6]  ( .D(n756), .CLK(n152), .Q(buf1[6]) );
  DFFX1_RVT \buf1_reg[7]  ( .D(n755), .CLK(n152), .Q(buf1[7]) );
  DFFX1_RVT \buf1_reg[8]  ( .D(n754), .CLK(n152), .Q(buf1[8]) );
  DFFX1_RVT \buf1_reg[9]  ( .D(n753), .CLK(n152), .Q(buf1[9]) );
  DFFX1_RVT \buf1_reg[10]  ( .D(n752), .CLK(n152), .Q(buf1[10]) );
  DFFX1_RVT \buf1_reg[11]  ( .D(n751), .CLK(n153), .Q(buf1[11]) );
  DFFX1_RVT \buf1_reg[12]  ( .D(n750), .CLK(n153), .Q(buf1[12]) );
  DFFX1_RVT \buf1_reg[13]  ( .D(n749), .CLK(n153), .Q(buf1[13]) );
  DFFX1_RVT \buf1_reg[14]  ( .D(n748), .CLK(n153), .Q(buf1[14]) );
  DFFX1_RVT \buf1_reg[15]  ( .D(n747), .CLK(n153), .Q(buf1[15]) );
  DFFX1_RVT \buf1_reg[16]  ( .D(n746), .CLK(n153), .Q(buf1[16]) );
  DFFX1_RVT \buf1_reg[17]  ( .D(n745), .CLK(n153), .Q(buf1[17]) );
  DFFX1_RVT \buf1_reg[18]  ( .D(n744), .CLK(n153), .Q(buf1[18]) );
  DFFX1_RVT \buf1_reg[19]  ( .D(n743), .CLK(n153), .Q(buf1[19]) );
  DFFX1_RVT \buf1_reg[20]  ( .D(n742), .CLK(n153), .Q(buf1[20]) );
  DFFX1_RVT \buf1_reg[21]  ( .D(n741), .CLK(n153), .Q(buf1[21]) );
  DFFX1_RVT \buf1_reg[22]  ( .D(n740), .CLK(n154), .Q(buf1[22]) );
  DFFX1_RVT \buf1_reg[23]  ( .D(n739), .CLK(n154), .Q(buf1[23]) );
  DFFX1_RVT \buf1_reg[24]  ( .D(n738), .CLK(n154), .Q(buf1[24]) );
  DFFX1_RVT \buf1_reg[25]  ( .D(n737), .CLK(n154), .Q(buf1[25]) );
  DFFX1_RVT \buf1_reg[26]  ( .D(n736), .CLK(n154), .Q(buf1[26]) );
  DFFX1_RVT \buf1_reg[27]  ( .D(n735), .CLK(n154), .Q(buf1[27]) );
  DFFX1_RVT \buf1_reg[28]  ( .D(n734), .CLK(n154), .Q(buf1[28]) );
  DFFX1_RVT \buf1_reg[29]  ( .D(n733), .CLK(n154), .Q(buf1[29]) );
  DFFX1_RVT \buf1_reg[30]  ( .D(n732), .CLK(n154), .Q(buf1[30]) );
  DFFX1_RVT \buf1_reg[31]  ( .D(n731), .CLK(n154), .Q(buf1[31]) );
  DFFX1_RVT \buf1_reg[0]  ( .D(n730), .CLK(n154), .Q(buf1[0]) );
  DFFX1_RVT \buf0_reg[31]  ( .D(n729), .CLK(n154), .Q(buf0[31]) );
  DFFX1_RVT \buf0_reg[30]  ( .D(n728), .CLK(n155), .Q(buf0[30]) );
  DFFX1_RVT \buf0_reg[29]  ( .D(n727), .CLK(n155), .Q(buf0[29]) );
  DFFX1_RVT \buf0_reg[28]  ( .D(n726), .CLK(n155), .Q(buf0[28]) );
  DFFX1_RVT \buf0_reg[27]  ( .D(n725), .CLK(n155), .Q(buf0[27]) );
  DFFX1_RVT \buf0_reg[26]  ( .D(n724), .CLK(n155), .Q(buf0[26]) );
  DFFX1_RVT \buf0_reg[25]  ( .D(n723), .CLK(n155), .Q(buf0[25]) );
  DFFX1_RVT \buf0_reg[24]  ( .D(n722), .CLK(n155), .Q(buf0[24]) );
  DFFX1_RVT \buf0_reg[23]  ( .D(n721), .CLK(n155), .Q(buf0[23]) );
  DFFX1_RVT \buf0_reg[22]  ( .D(n720), .CLK(n155), .Q(buf0[22]) );
  DFFX1_RVT \buf0_reg[21]  ( .D(n719), .CLK(n155), .Q(buf0[21]) );
  DFFX1_RVT \buf0_reg[20]  ( .D(n718), .CLK(n155), .Q(buf0[20]) );
  DFFX1_RVT \buf0_reg[19]  ( .D(n717), .CLK(n155), .Q(buf0[19]) );
  DFFX1_RVT \buf0_reg[18]  ( .D(n716), .CLK(n156), .Q(buf0[18]) );
  DFFX1_RVT \buf0_reg[17]  ( .D(n715), .CLK(n156), .Q(buf0[17]) );
  DFFX1_RVT \buf0_reg[16]  ( .D(n714), .CLK(n156), .Q(buf0[16]) );
  DFFX1_RVT \buf0_reg[15]  ( .D(n713), .CLK(n156), .Q(buf0[15]) );
  DFFX1_RVT \buf0_reg[14]  ( .D(n712), .CLK(n156), .Q(buf0[14]) );
  DFFX1_RVT \buf0_reg[13]  ( .D(n711), .CLK(n156), .Q(buf0[13]) );
  DFFX1_RVT \buf0_reg[12]  ( .D(n710), .CLK(n156), .Q(buf0[12]) );
  DFFX1_RVT \buf0_reg[11]  ( .D(n709), .CLK(n156), .Q(buf0[11]) );
  DFFX1_RVT \buf0_reg[10]  ( .D(n708), .CLK(n156), .Q(buf0[10]) );
  DFFX1_RVT \buf0_reg[9]  ( .D(n707), .CLK(n156), .Q(buf0[9]) );
  DFFX1_RVT \buf0_reg[8]  ( .D(n706), .CLK(n156), .Q(buf0[8]) );
  DFFX1_RVT \buf0_reg[7]  ( .D(n705), .CLK(n156), .Q(buf0[7]) );
  DFFX1_RVT \buf0_reg[6]  ( .D(n704), .CLK(n157), .Q(buf0[6]) );
  DFFX1_RVT \buf0_reg[5]  ( .D(n703), .CLK(n157), .Q(buf0[5]) );
  DFFX1_RVT \buf0_reg[4]  ( .D(n702), .CLK(n157), .Q(buf0[4]) );
  DFFX1_RVT \buf0_reg[3]  ( .D(n701), .CLK(n157), .Q(buf0[3]) );
  DFFX1_RVT \buf0_reg[2]  ( .D(n700), .CLK(n157), .Q(buf0[2]) );
  DFFX1_RVT \buf0_reg[1]  ( .D(n699), .CLK(n157), .Q(buf0[1]) );
  DFFX1_RVT \buf0_reg[0]  ( .D(n698), .CLK(n157), .Q(buf0[0]) );
  DFFX1_RVT \uc_dpd_reg[1]  ( .D(n769), .CLK(n158), .Q(csr[29]) );
  DFFX1_RVT \uc_dpd_reg[0]  ( .D(n770), .CLK(n158), .Q(csr[28]) );
  DFFX1_RVT \uc_bsel_reg[1]  ( .D(n771), .CLK(n158), .Q(csr[31]) );
  DFFX1_RVT \uc_bsel_reg[0]  ( .D(n772), .CLK(n158), .Q(csr[30]) );
  DFFX1_RVT \dma_out_left_reg[0]  ( .D(N321), .CLK(n159), .QN(n81) );
  DFFX1_RVT \dma_out_left_reg[1]  ( .D(N322), .CLK(n159), .QN(n27) );
  DFFX1_RVT \dma_out_left_reg[2]  ( .D(N323), .CLK(n159), .QN(n11) );
  DFFX1_RVT \dma_out_left_reg[3]  ( .D(N324), .CLK(n159), .QN(n78) );
  DFFX1_RVT \dma_out_left_reg[4]  ( .D(N325), .CLK(n160), .QN(n30) );
  DFFX1_RVT \dma_out_left_reg[5]  ( .D(N326), .CLK(n160), .QN(n79) );
  DFFX1_RVT \dma_out_left_reg[6]  ( .D(N327), .CLK(n160), .QN(n31) );
  DFFX1_RVT \dma_out_left_reg[7]  ( .D(N328), .CLK(n160), .QN(n80) );
  DFFX1_RVT \dma_out_left_reg[8]  ( .D(N329), .CLK(n160), .QN(n24) );
  DFFX1_RVT \dma_out_left_reg[11]  ( .D(N332), .CLK(n160), .Q(dma_out_left[11]) );
  DFFX1_RVT r4_reg ( .D(dma_ack_wr1), .CLK(n158), .Q(r4), .QN(n75) );
  DFFX1_RVT r5_reg ( .D(r4), .CLK(n158), .Q(r5), .QN(n23) );
  DFFSSRX1_RVT dma_in_buf_sz1_reg ( .D(n798), .SETB(n622), .RSTB(N319), .CLK(
        n146), .Q(dma_in_buf_sz1) );
  DFFX1_RVT \dma_in_cnt_reg[11]  ( .D(n784), .CLK(n160), .Q(dma_in_cnt[11]), 
        .QN(n610) );
  DFFX1_RVT \dma_out_cnt_reg[11]  ( .D(n796), .CLK(n158), .Q(dma_out_cnt[11]), 
        .QN(n804) );
  DFFX1_RVT \dma_in_cnt_reg[1]  ( .D(n773), .CLK(n160), .Q(dma_in_cnt[1]), 
        .QN(n609) );
  DFFX1_RVT \dma_in_cnt_reg[2]  ( .D(n775), .CLK(n161), .Q(dma_in_cnt[2]), 
        .QN(n612) );
  DFFX1_RVT \dma_in_cnt_reg[3]  ( .D(n776), .CLK(n161), .Q(dma_in_cnt[3]), 
        .QN(n613) );
  DFFX1_RVT \dma_in_cnt_reg[4]  ( .D(n777), .CLK(n161), .Q(dma_in_cnt[4]), 
        .QN(n614) );
  DFFX1_RVT \dma_in_cnt_reg[5]  ( .D(n778), .CLK(n161), .Q(dma_in_cnt[5]), 
        .QN(n615) );
  DFFX1_RVT \dma_in_cnt_reg[6]  ( .D(n779), .CLK(n161), .Q(dma_in_cnt[6]), 
        .QN(n616) );
  DFFX1_RVT \dma_in_cnt_reg[7]  ( .D(n780), .CLK(n161), .Q(dma_in_cnt[7]), 
        .QN(n617) );
  DFFX1_RVT \dma_in_cnt_reg[8]  ( .D(n781), .CLK(n161), .Q(dma_in_cnt[8]), 
        .QN(n618) );
  DFFX1_RVT \buf0_orig_reg[30]  ( .D(n667), .CLK(n149), .Q(buf0_orig[30]), 
        .QN(n600) );
  DFFX1_RVT \dma_in_cnt_reg[9]  ( .D(n782), .CLK(n161), .Q(dma_in_cnt[9]), 
        .QN(n619) );
  DFFX1_RVT \dma_in_cnt_reg[10]  ( .D(n783), .CLK(n146), .Q(dma_in_cnt[10]), 
        .QN(n620) );
  DFFX1_RVT \buf0_orig_reg[20]  ( .D(n677), .CLK(n150), .Q(buf0_orig[20]) );
  DFFX1_RVT \dma_out_cnt_reg[9]  ( .D(n794), .CLK(n159), .Q(dma_out_cnt[9]), 
        .QN(n567) );
  DFFX1_RVT \buf0_orig_reg[29]  ( .D(n668), .CLK(n149), .Q(buf0_orig[29]), 
        .QN(n601) );
  DFFX1_RVT \buf0_orig_reg[28]  ( .D(n669), .CLK(n149), .Q(buf0_orig[28]), 
        .QN(n602) );
  DFFX1_RVT \buf0_orig_reg[27]  ( .D(n670), .CLK(n149), .Q(buf0_orig[27]), 
        .QN(n603) );
  DFFX1_RVT \buf0_orig_reg[26]  ( .D(n671), .CLK(n149), .Q(buf0_orig[26]), 
        .QN(n604) );
  DFFX1_RVT \buf0_orig_reg[25]  ( .D(n672), .CLK(n149), .Q(buf0_orig[25]), 
        .QN(n605) );
  DFFX1_RVT \buf0_orig_reg[24]  ( .D(n673), .CLK(n150), .Q(buf0_orig[24]), 
        .QN(n606) );
  DFFX1_RVT \buf0_orig_reg[23]  ( .D(n674), .CLK(n150), .Q(buf0_orig[23]), 
        .QN(n607) );
  DFFX1_RVT \buf0_orig_reg[22]  ( .D(n675), .CLK(n150), .Q(buf0_orig[22]), 
        .QN(n806) );
  DFFX1_RVT \buf0_orig_reg[21]  ( .D(n676), .CLK(n150), .Q(buf0_orig[21]), 
        .QN(n805) );
  DFFX1_RVT \csr0_reg[2]  ( .D(n651), .CLK(n148), .Q(csr_2), .QN(n597) );
  DFFX1_RVT \dma_out_cnt_reg[1]  ( .D(n785), .CLK(n158), .Q(dma_out_cnt[1]) );
  DFFX1_RVT \dma_out_cnt_reg[2]  ( .D(n787), .CLK(n158), .Q(dma_out_cnt[2]), 
        .QN(n569) );
  DFFX1_RVT \dma_out_cnt_reg[3]  ( .D(n788), .CLK(n159), .Q(dma_out_cnt[3]), 
        .QN(n571) );
  DFFX1_RVT \dma_out_cnt_reg[4]  ( .D(n789), .CLK(n159), .Q(dma_out_cnt[4]), 
        .QN(n570) );
  DFFX1_RVT \dma_out_cnt_reg[5]  ( .D(n790), .CLK(n159), .Q(dma_out_cnt[5]), 
        .QN(n565) );
  DFFX1_RVT \dma_out_cnt_reg[6]  ( .D(n791), .CLK(n159), .Q(dma_out_cnt[6]), 
        .QN(n564) );
  DFFX1_RVT \dma_out_cnt_reg[7]  ( .D(n792), .CLK(n159), .Q(dma_out_cnt[7]), 
        .QN(n566) );
  DFFX1_RVT \dma_out_cnt_reg[8]  ( .D(n793), .CLK(n159), .Q(dma_out_cnt[8]), 
        .QN(n568) );
  DFFX1_RVT \dma_in_cnt_reg[0]  ( .D(n774), .CLK(n160), .Q(dma_in_cnt[0]), 
        .QN(n611) );
  DFFX1_RVT \dma_out_cnt_reg[10]  ( .D(n795), .CLK(n159), .Q(dma_out_cnt[10]), 
        .QN(n803) );
  DFFX1_RVT \csr0_reg[9]  ( .D(n644), .CLK(n147), .Q(csr_9), .QN(n591) );
  DFFX1_RVT \csr0_reg[7]  ( .D(n646), .CLK(n147), .Q(csr_7), .QN(n593) );
  DFFX1_RVT \csr0_reg[5]  ( .D(n648), .CLK(n148), .Q(csr_5), .QN(n595) );
  DFFX1_RVT \csr0_reg[8]  ( .D(n645), .CLK(n147), .Q(csr_8), .QN(n592) );
  DFFX1_RVT \csr0_reg[6]  ( .D(n647), .CLK(n147), .Q(csr_6), .QN(n594) );
  DFFX1_RVT \csr0_reg[4]  ( .D(n649), .CLK(n147), .Q(csr_4), .QN(n596) );
  DFFX1_RVT \csr0_reg[3]  ( .D(n650), .CLK(n148), .Q(csr_3), .QN(n598) );
  DFFX1_RVT \dma_out_cnt_reg[0]  ( .D(n786), .CLK(n158), .Q(dma_out_cnt[0]) );
  DFFX1_RVT \csr0_reg[10]  ( .D(n643), .CLK(n147), .Q(csr_10), .QN(n599) );
  DFFX1_RVT \buf0_orig_reg[19]  ( .D(n678), .CLK(n150), .Q(buf0_orig[19]), 
        .QN(n608) );
  DFFX1_RVT dma_req_in_hold2_reg ( .D(N347), .CLK(wclk), .Q(dma_req_in_hold2)
         );
  DFFX1_RVT dma_req_in_hold_reg ( .D(N348), .CLK(wclk), .Q(dma_req_in_hold) );
  DFFX1_RVT r1_reg ( .D(N361), .CLK(wclk), .Q(r1), .QN(n173) );
  DFFX1_RVT inta_reg ( .D(N221), .CLK(wclk), .Q(inta) );
  DFFX1_RVT intb_reg ( .D(N222), .CLK(wclk), .Q(intb) );
  SDFFSSRX1_RVT dma_req_out_hold_reg ( .RSTB(n799), .SETB(1'b1), .D(n174), 
        .SI(1'b0), .SE(n808), .CLK(wclk), .Q(dma_req_out_hold) );
  DFFSSRX1_RVT dma_ack_wr1_reg ( .D(n800), .SETB(n626), .RSTB(rst), .CLK(wclk), 
        .Q(dma_ack_wr1) );
  DFFSSRX1_RVT r2_reg ( .D(n801), .SETB(n173), .RSTB(rst), .CLK(wclk), .Q(r2), 
        .QN(n2) );
  DFFX1_RVT dma_ack_clr1_reg ( .D(r4), .CLK(wclk), .QN(n802) );
  DFFX1_RVT \buf0_orig_m3_reg[10]  ( .D(N345), .CLK(wclk), .Q(n41) );
  DFFX1_RVT \buf0_orig_m3_reg[9]  ( .D(N344), .CLK(wclk), .Q(n14) );
  DFFX1_RVT \buf0_orig_m3_reg[8]  ( .D(N343), .CLK(wclk), .Q(n40) );
  DFFX1_RVT \buf0_orig_m3_reg[7]  ( .D(N342), .CLK(wclk), .Q(n15) );
  DFFX1_RVT dma_req_r_reg ( .D(n797), .CLK(wclk), .Q(dma_req) );
  DFFX1_RVT \buf0_orig_m3_reg[11]  ( .D(N346), .CLK(wclk), .Q(n42), .QN(n621)
         );
  DFFX1_RVT \buf0_orig_m3_reg[0]  ( .D(n608), .CLK(wclk), .Q(\buf0_orig_m3[0] ) );
  DFFX1_RVT \buf0_orig_m3_reg[6]  ( .D(N341), .CLK(wclk), .Q(n36) );
  DFFX1_RVT \buf0_orig_m3_reg[5]  ( .D(N340), .CLK(wclk), .Q(n13) );
  DFFX1_RVT \buf0_orig_m3_reg[4]  ( .D(N339), .CLK(wclk), .Q(n39) );
  DFFX1_RVT \buf0_orig_m3_reg[3]  ( .D(N338), .CLK(wclk), .Q(n12) );
  DFFX1_RVT \buf0_orig_m3_reg[2]  ( .D(N337), .CLK(wclk), .Q(n33) );
  DFFX1_RVT \buf0_orig_m3_reg[1]  ( .D(N336), .CLK(wclk), .Q(n34) );
  AND2X1_RVT U3 ( .A1(n139), .A2(n183), .Y(n1) );
  AND2X1_RVT U6 ( .A1(adr[0]), .A2(n625), .Y(n184) );
  AO22X1_RVT U7 ( .A1(n100), .A2(n48), .A3(n99), .A4(csr[19]), .Y(n499) );
  INVX1_RVT U8 ( .A(n86), .Y(n93) );
  INVX1_RVT U9 ( .A(adr[0]), .Y(n504) );
  AO22X1_RVT U10 ( .A1(n102), .A2(n47), .A3(n98), .A4(csr[21]), .Y(n496) );
  AO22X1_RVT U12 ( .A1(n102), .A2(n49), .A3(n98), .A4(csr[27]), .Y(n492) );
  AO22X1_RVT U13 ( .A1(n101), .A2(n5), .A3(n98), .A4(csr[28]), .Y(n491) );
  AO22X1_RVT U16 ( .A1(n101), .A2(n8), .A3(n99), .A4(csr[24]), .Y(n495) );
  AO22X1_RVT U19 ( .A1(n101), .A2(n20), .A3(n99), .A4(csr[26]), .Y(n493) );
  AO22X1_RVT U20 ( .A1(n102), .A2(n4), .A3(n98), .A4(csr[29]), .Y(n490) );
  AO22X1_RVT U21 ( .A1(n101), .A2(n43), .A3(n99), .A4(csr_6), .Y(n485) );
  AO21X1_RVT U22 ( .A1(n110), .A2(din[19]), .A3(n143), .Y(n198) );
  AO21X1_RVT U23 ( .A1(n111), .A2(din[20]), .A3(n143), .Y(n197) );
  AO21X1_RVT U24 ( .A1(n111), .A2(din[21]), .A3(n143), .Y(n196) );
  AO21X1_RVT U25 ( .A1(n111), .A2(din[24]), .A3(n143), .Y(n193) );
  AO21X1_RVT U26 ( .A1(n109), .A2(din[16]), .A3(n144), .Y(n201) );
  AO21X1_RVT U27 ( .A1(n109), .A2(din[17]), .A3(n144), .Y(n200) );
  AO21X1_RVT U28 ( .A1(n109), .A2(din[18]), .A3(n143), .Y(n199) );
  AO22X1_RVT U29 ( .A1(n100), .A2(n18), .A3(n99), .A4(csr[17]), .Y(n501) );
  AO21X1_RVT U30 ( .A1(n130), .A2(din[24]), .A3(n142), .Y(n434) );
  AO21X1_RVT U31 ( .A1(n130), .A2(din[21]), .A3(n141), .Y(n437) );
  AO21X1_RVT U32 ( .A1(n131), .A2(din[20]), .A3(n141), .Y(n438) );
  AO21X1_RVT U33 ( .A1(n131), .A2(din[19]), .A3(n141), .Y(n439) );
  AO21X1_RVT U34 ( .A1(n131), .A2(din[18]), .A3(n141), .Y(n440) );
  AO21X1_RVT U35 ( .A1(n131), .A2(din[17]), .A3(n141), .Y(n441) );
  AO21X1_RVT U36 ( .A1(n131), .A2(din[16]), .A3(n141), .Y(n442) );
  INVX0_RVT U37 ( .A(adr[1]), .Y(n625) );
  INVX1_RVT U38 ( .A(n86), .Y(n123) );
  INVX1_RVT U39 ( .A(n86), .Y(n121) );
  INVX1_RVT U40 ( .A(n86), .Y(n122) );
  NAND3X0_RVT U41 ( .A1(n139), .A2(n92), .A3(we), .Y(n181) );
  INVX1_RVT U42 ( .A(n139), .Y(n145) );
  INVX1_RVT U43 ( .A(n139), .Y(n144) );
  INVX1_RVT U44 ( .A(n139), .Y(n143) );
  INVX1_RVT U45 ( .A(n139), .Y(n142) );
  INVX1_RVT U46 ( .A(n139), .Y(n141) );
  INVX1_RVT U47 ( .A(n162), .Y(n161) );
  INVX1_RVT U48 ( .A(n424), .Y(n115) );
  INVX1_RVT U49 ( .A(n424), .Y(n116) );
  INVX1_RVT U50 ( .A(n109), .Y(n108) );
  INVX1_RVT U51 ( .A(n109), .Y(n107) );
  INVX1_RVT U52 ( .A(n423), .Y(n118) );
  INVX1_RVT U53 ( .A(n423), .Y(n119) );
  INVX1_RVT U54 ( .A(n181), .Y(n104) );
  INVX1_RVT U55 ( .A(n162), .Y(n160) );
  INVX1_RVT U56 ( .A(n162), .Y(n159) );
  INVX1_RVT U57 ( .A(n162), .Y(n158) );
  INVX1_RVT U58 ( .A(n162), .Y(n157) );
  INVX1_RVT U59 ( .A(n162), .Y(n156) );
  INVX1_RVT U60 ( .A(n162), .Y(n155) );
  INVX1_RVT U61 ( .A(n162), .Y(n154) );
  INVX1_RVT U62 ( .A(n162), .Y(n152) );
  INVX1_RVT U63 ( .A(n162), .Y(n151) );
  INVX1_RVT U64 ( .A(n162), .Y(n150) );
  INVX1_RVT U65 ( .A(n162), .Y(n153) );
  INVX1_RVT U66 ( .A(n181), .Y(n103) );
  INVX1_RVT U67 ( .A(n424), .Y(n117) );
  INVX1_RVT U68 ( .A(n423), .Y(n120) );
  INVX1_RVT U69 ( .A(n82), .Y(n114) );
  INVX1_RVT U70 ( .A(n82), .Y(n112) );
  INVX1_RVT U71 ( .A(n82), .Y(n113) );
  INVX1_RVT U72 ( .A(n162), .Y(n149) );
  INVX1_RVT U73 ( .A(n162), .Y(n148) );
  INVX1_RVT U74 ( .A(n162), .Y(n147) );
  INVX1_RVT U75 ( .A(n162), .Y(n146) );
  INVX1_RVT U76 ( .A(n83), .Y(n105) );
  INVX1_RVT U77 ( .A(n83), .Y(n106) );
  INVX1_RVT U78 ( .A(n458), .Y(n130) );
  INVX1_RVT U79 ( .A(n458), .Y(n131) );
  INVX1_RVT U80 ( .A(n458), .Y(n132) );
  INVX1_RVT U81 ( .A(clk), .Y(n162) );
  INVX1_RVT U82 ( .A(n185), .Y(n111) );
  INVX1_RVT U83 ( .A(n185), .Y(n110) );
  INVX1_RVT U84 ( .A(n185), .Y(n109) );
  NAND3X0_RVT U85 ( .A1(n423), .A2(n185), .A3(n424), .Y(n82) );
  NAND2X0_RVT U86 ( .A1(n139), .A2(n181), .Y(n83) );
  INVX1_RVT U87 ( .A(n84), .Y(n126) );
  INVX1_RVT U88 ( .A(n84), .Y(n124) );
  INVX1_RVT U89 ( .A(n84), .Y(n125) );
  INVX1_RVT U90 ( .A(n459), .Y(n127) );
  INVX1_RVT U91 ( .A(n459), .Y(n128) );
  INVX1_RVT U92 ( .A(n459), .Y(n129) );
  INVX1_RVT U93 ( .A(n470), .Y(n137) );
  INVX1_RVT U94 ( .A(n470), .Y(n138) );
  INVX1_RVT U95 ( .A(n471), .Y(n133) );
  INVX1_RVT U96 ( .A(n471), .Y(n134) );
  INVX1_RVT U97 ( .A(n85), .Y(n135) );
  INVX1_RVT U98 ( .A(n85), .Y(n136) );
  NBUFFX2_RVT U99 ( .A(n184), .Y(n102) );
  NBUFFX2_RVT U100 ( .A(n184), .Y(n101) );
  NBUFFX2_RVT U101 ( .A(n184), .Y(n100) );
  AO22X1_RVT U102 ( .A1(n102), .A2(n46), .A3(n99), .A4(csr_3), .Y(n488) );
  NAND2X0_RVT U103 ( .A1(n459), .A2(n458), .Y(n84) );
  NAND3X0_RVT U104 ( .A1(n470), .A2(csr[15]), .A3(n471), .Y(n85) );
  NAND2X0_RVT U105 ( .A1(adr[1]), .A2(n504), .Y(n86) );
  INVX0_RVT U106 ( .A(n94), .Y(n87) );
  INVX0_RVT U107 ( .A(n94), .Y(n88) );
  INVX0_RVT U108 ( .A(n94), .Y(n89) );
  INVX0_RVT U109 ( .A(n97), .Y(n90) );
  INVX0_RVT U110 ( .A(n97), .Y(n91) );
  INVX0_RVT U111 ( .A(n97), .Y(n98) );
  INVX0_RVT U112 ( .A(n97), .Y(n92) );
  INVX0_RVT U113 ( .A(n97), .Y(n99) );
  INVX0_RVT U114 ( .A(n461), .Y(n94) );
  INVX0_RVT U115 ( .A(n94), .Y(n95) );
  INVX0_RVT U116 ( .A(n94), .Y(n96) );
  NOR2X0_RVT U117 ( .A1(n504), .A2(n625), .Y(n461) );
  INVX0_RVT U118 ( .A(n180), .Y(n97) );
  INVX0_RVT U119 ( .A(n140), .Y(n139) );
  INVX0_RVT U120 ( .A(rst), .Y(n140) );
  XNOR2X1_RVT U121 ( .A1(buf0_orig[30]), .A2(\sub_449/carry[11] ), .Y(N346) );
  OR2X1_RVT U122 ( .A1(buf0_orig[29]), .A2(\sub_449/carry[10] ), .Y(
        \sub_449/carry[11] ) );
  XNOR2X1_RVT U123 ( .A1(\sub_449/carry[10] ), .A2(buf0_orig[29]), .Y(N345) );
  OR2X1_RVT U124 ( .A1(buf0_orig[28]), .A2(\sub_449/carry[9] ), .Y(
        \sub_449/carry[10] ) );
  XNOR2X1_RVT U125 ( .A1(\sub_449/carry[9] ), .A2(buf0_orig[28]), .Y(N344) );
  OR2X1_RVT U126 ( .A1(buf0_orig[27]), .A2(\sub_449/carry[8] ), .Y(
        \sub_449/carry[9] ) );
  XNOR2X1_RVT U127 ( .A1(\sub_449/carry[8] ), .A2(buf0_orig[27]), .Y(N343) );
  OR2X1_RVT U128 ( .A1(buf0_orig[26]), .A2(\sub_449/carry[7] ), .Y(
        \sub_449/carry[8] ) );
  XNOR2X1_RVT U129 ( .A1(\sub_449/carry[7] ), .A2(buf0_orig[26]), .Y(N342) );
  OR2X1_RVT U130 ( .A1(buf0_orig[25]), .A2(\sub_449/carry[6] ), .Y(
        \sub_449/carry[7] ) );
  XNOR2X1_RVT U131 ( .A1(\sub_449/carry[6] ), .A2(buf0_orig[25]), .Y(N341) );
  OR2X1_RVT U132 ( .A1(buf0_orig[24]), .A2(\sub_449/carry[5] ), .Y(
        \sub_449/carry[6] ) );
  XNOR2X1_RVT U133 ( .A1(\sub_449/carry[5] ), .A2(buf0_orig[24]), .Y(N340) );
  OR2X1_RVT U134 ( .A1(buf0_orig[23]), .A2(\sub_449/carry[4] ), .Y(
        \sub_449/carry[5] ) );
  XNOR2X1_RVT U135 ( .A1(\sub_449/carry[4] ), .A2(buf0_orig[23]), .Y(N339) );
  OR2X1_RVT U136 ( .A1(buf0_orig[22]), .A2(\sub_449/carry[3] ), .Y(
        \sub_449/carry[4] ) );
  XNOR2X1_RVT U137 ( .A1(\sub_449/carry[3] ), .A2(buf0_orig[22]), .Y(N338) );
  OR2X1_RVT U138 ( .A1(buf0_orig[21]), .A2(\sub_449/carry[2] ), .Y(
        \sub_449/carry[3] ) );
  XNOR2X1_RVT U139 ( .A1(\sub_449/carry[2] ), .A2(buf0_orig[21]), .Y(N337) );
  AND2X1_RVT U140 ( .A1(buf0_orig[20]), .A2(buf0_orig[19]), .Y(
        \sub_449/carry[2] ) );
  XOR2X1_RVT U141 ( .A1(buf0_orig[20]), .A2(buf0_orig[19]), .Y(N336) );
  OR2X1_RVT U142 ( .A1(n24), .A2(csr_10), .Y(n172) );
  OA21X1_RVT U143 ( .A1(n27), .A2(csr_3), .A3(n81), .Y(n163) );
  AO222X1_RVT U144 ( .A1(csr_3), .A2(n27), .A3(n163), .A4(csr_2), .A5(csr_4), 
        .A6(n11), .Y(n164) );
  OA221X1_RVT U145 ( .A1(csr_5), .A2(n78), .A3(csr_4), .A4(n11), .A5(n164), 
        .Y(n165) );
  AO221X1_RVT U146 ( .A1(csr_5), .A2(n78), .A3(csr_6), .A4(n30), .A5(n165), 
        .Y(n166) );
  OA221X1_RVT U147 ( .A1(csr_7), .A2(n79), .A3(csr_6), .A4(n30), .A5(n166), 
        .Y(n167) );
  AO221X1_RVT U148 ( .A1(csr_7), .A2(n79), .A3(csr_8), .A4(n31), .A5(n167), 
        .Y(n168) );
  OA221X1_RVT U149 ( .A1(csr_9), .A2(n80), .A3(csr_8), .A4(n31), .A5(n168), 
        .Y(n169) );
  AO221X1_RVT U150 ( .A1(csr_9), .A2(n80), .A3(csr_10), .A4(n24), .A5(n169), 
        .Y(n171) );
  NOR3X0_RVT U151 ( .A1(dma_out_left[10]), .A2(dma_out_left[9]), .A3(
        dma_out_left[11]), .Y(n170) );
  NAND3X0_RVT U152 ( .A1(n172), .A2(n171), .A3(n170), .Y(N333) );
  AND3X1_RVT U153 ( .A1(n562), .A2(n563), .A3(n175), .Y(n622) );
  AND3X1_RVT U154 ( .A1(n598), .A2(n599), .A3(n597), .Y(n175) );
  INVX0_RVT U155 ( .A(re), .Y(n624) );
  AND2X1_RVT U156 ( .A1(dma_ack_wr1), .A2(n802), .Y(n800) );
  AND2X1_RVT U157 ( .A1(r2), .A2(n75), .Y(n801) );
  AO22X1_RVT U158 ( .A1(din[13]), .A2(n103), .A3(n105), .A4(csr_13), .Y(n627)
         );
  AO22X1_RVT U159 ( .A1(din[27]), .A2(n104), .A3(n106), .A4(csr[27]), .Y(n628)
         );
  AO22X1_RVT U160 ( .A1(din[26]), .A2(n104), .A3(n106), .A4(csr[26]), .Y(n629)
         );
  AO22X1_RVT U161 ( .A1(din[25]), .A2(n104), .A3(n106), .A4(csr[25]), .Y(n630)
         );
  AO22X1_RVT U162 ( .A1(din[24]), .A2(n104), .A3(n106), .A4(csr[24]), .Y(n631)
         );
  AO22X1_RVT U163 ( .A1(din[21]), .A2(n104), .A3(n106), .A4(csr[21]), .Y(n632)
         );
  AO22X1_RVT U164 ( .A1(din[20]), .A2(n104), .A3(n106), .A4(csr[20]), .Y(n633)
         );
  AO22X1_RVT U165 ( .A1(din[19]), .A2(n104), .A3(n106), .A4(csr[19]), .Y(n634)
         );
  AO22X1_RVT U166 ( .A1(din[18]), .A2(n104), .A3(n106), .A4(csr[18]), .Y(n635)
         );
  AO22X1_RVT U167 ( .A1(din[17]), .A2(n104), .A3(n106), .A4(csr[17]), .Y(n636)
         );
  AO22X1_RVT U168 ( .A1(din[16]), .A2(n104), .A3(n106), .A4(csr[16]), .Y(n637)
         );
  AO22X1_RVT U169 ( .A1(din[15]), .A2(n104), .A3(n106), .A4(csr[15]), .Y(n638)
         );
  AO221X1_RVT U170 ( .A1(n106), .A2(csr[22]), .A3(din[22]), .A4(n103), .A5(
        n176), .Y(n639) );
  INVX0_RVT U171 ( .A(n177), .Y(n176) );
  AO22X1_RVT U172 ( .A1(din[23]), .A2(n104), .A3(n178), .A4(n105), .Y(n640) );
  AND2X1_RVT U173 ( .A1(n177), .A2(csr[23]), .Y(n178) );
  NAND4X0_RVT U174 ( .A1(out_to_small), .A2(n139), .A3(n179), .A4(csr_13), .Y(
        n177) );
  NAND2X0_RVT U175 ( .A1(we), .A2(n91), .Y(n179) );
  AO22X1_RVT U176 ( .A1(din[12]), .A2(n104), .A3(n105), .A4(csr_12), .Y(n641)
         );
  AO22X1_RVT U177 ( .A1(din[11]), .A2(n103), .A3(n105), .A4(csr_11), .Y(n642)
         );
  AO22X1_RVT U178 ( .A1(din[10]), .A2(n103), .A3(n105), .A4(csr_10), .Y(n643)
         );
  AO22X1_RVT U179 ( .A1(din[9]), .A2(n103), .A3(n105), .A4(csr_9), .Y(n644) );
  AO22X1_RVT U180 ( .A1(din[8]), .A2(n103), .A3(n106), .A4(csr_8), .Y(n645) );
  AO22X1_RVT U181 ( .A1(din[7]), .A2(n103), .A3(n105), .A4(csr_7), .Y(n646) );
  AO22X1_RVT U182 ( .A1(din[6]), .A2(n103), .A3(n105), .A4(csr_6), .Y(n647) );
  AO22X1_RVT U183 ( .A1(din[5]), .A2(n103), .A3(n105), .A4(csr_5), .Y(n648) );
  AO22X1_RVT U184 ( .A1(din[4]), .A2(n103), .A3(n105), .A4(csr_4), .Y(n649) );
  AO22X1_RVT U185 ( .A1(din[3]), .A2(n103), .A3(n105), .A4(csr_3), .Y(n650) );
  AO22X1_RVT U186 ( .A1(din[2]), .A2(n103), .A3(n105), .A4(csr_2), .Y(n651) );
  AO22X1_RVT U187 ( .A1(din[1]), .A2(n103), .A3(n105), .A4(csr_1), .Y(n652) );
  AO22X1_RVT U188 ( .A1(din[0]), .A2(n104), .A3(n106), .A4(csr_0), .Y(n653) );
  AO22X1_RVT U189 ( .A1(n182), .A2(din[21]), .A3(n1), .A4(n47), .Y(n654) );
  AO22X1_RVT U190 ( .A1(n182), .A2(din[20]), .A3(n1), .A4(n19), .Y(n655) );
  AO22X1_RVT U191 ( .A1(n182), .A2(din[19]), .A3(n1), .A4(n48), .Y(n656) );
  AO22X1_RVT U192 ( .A1(n182), .A2(din[18]), .A3(n1), .A4(n21), .Y(n657) );
  AO22X1_RVT U193 ( .A1(n182), .A2(din[17]), .A3(n1), .A4(n18), .Y(n658) );
  AO22X1_RVT U194 ( .A1(n182), .A2(din[16]), .A3(n1), .A4(n22), .Y(n659) );
  AO22X1_RVT U195 ( .A1(din[29]), .A2(n182), .A3(n1), .A4(n4), .Y(n660) );
  AO22X1_RVT U196 ( .A1(din[28]), .A2(n182), .A3(n1), .A4(n5), .Y(n661) );
  AO22X1_RVT U197 ( .A1(n182), .A2(din[27]), .A3(n1), .A4(n49), .Y(n662) );
  AO22X1_RVT U198 ( .A1(n182), .A2(din[26]), .A3(n1), .A4(n20), .Y(n663) );
  AO22X1_RVT U199 ( .A1(n182), .A2(din[25]), .A3(n1), .A4(n7), .Y(n664) );
  AO22X1_RVT U200 ( .A1(n182), .A2(din[24]), .A3(n1), .A4(n8), .Y(n665) );
  INVX0_RVT U201 ( .A(n183), .Y(n182) );
  NAND3X0_RVT U202 ( .A1(we), .A2(n139), .A3(n100), .Y(n183) );
  AO21X1_RVT U203 ( .A1(n108), .A2(n74), .A3(n186), .Y(n666) );
  AO21X1_RVT U204 ( .A1(n107), .A2(buf0_orig[30]), .A3(n187), .Y(n667) );
  AO21X1_RVT U205 ( .A1(n107), .A2(buf0_orig[29]), .A3(n188), .Y(n668) );
  AO21X1_RVT U206 ( .A1(n107), .A2(buf0_orig[28]), .A3(n189), .Y(n669) );
  AO21X1_RVT U207 ( .A1(n107), .A2(buf0_orig[27]), .A3(n190), .Y(n670) );
  AO21X1_RVT U208 ( .A1(n107), .A2(buf0_orig[26]), .A3(n191), .Y(n671) );
  AO21X1_RVT U209 ( .A1(n107), .A2(buf0_orig[25]), .A3(n192), .Y(n672) );
  AO21X1_RVT U210 ( .A1(n107), .A2(buf0_orig[24]), .A3(n193), .Y(n673) );
  AO21X1_RVT U211 ( .A1(n107), .A2(buf0_orig[23]), .A3(n194), .Y(n674) );
  AO21X1_RVT U212 ( .A1(n107), .A2(buf0_orig[22]), .A3(n195), .Y(n675) );
  AO21X1_RVT U213 ( .A1(n107), .A2(buf0_orig[21]), .A3(n196), .Y(n676) );
  AO21X1_RVT U214 ( .A1(n107), .A2(buf0_orig[20]), .A3(n197), .Y(n677) );
  AO21X1_RVT U215 ( .A1(n108), .A2(buf0_orig[19]), .A3(n198), .Y(n678) );
  AO21X1_RVT U216 ( .A1(n108), .A2(n73), .A3(n199), .Y(n679) );
  AO21X1_RVT U217 ( .A1(n108), .A2(n72), .A3(n200), .Y(n680) );
  AO21X1_RVT U218 ( .A1(n108), .A2(n70), .A3(n201), .Y(n681) );
  AO21X1_RVT U219 ( .A1(n108), .A2(n69), .A3(n202), .Y(n682) );
  AO21X1_RVT U220 ( .A1(n108), .A2(n68), .A3(n203), .Y(n683) );
  AO21X1_RVT U221 ( .A1(n108), .A2(n67), .A3(n204), .Y(n684) );
  AO21X1_RVT U222 ( .A1(n108), .A2(n66), .A3(n205), .Y(n685) );
  AO21X1_RVT U223 ( .A1(n108), .A2(n65), .A3(n206), .Y(n686) );
  AO21X1_RVT U224 ( .A1(n108), .A2(n64), .A3(n207), .Y(n687) );
  AO21X1_RVT U225 ( .A1(n108), .A2(n63), .A3(n208), .Y(n688) );
  AO21X1_RVT U226 ( .A1(n108), .A2(n62), .A3(n209), .Y(n689) );
  AO21X1_RVT U227 ( .A1(n185), .A2(n61), .A3(n210), .Y(n690) );
  AO21X1_RVT U228 ( .A1(n185), .A2(n60), .A3(n211), .Y(n691) );
  AO21X1_RVT U229 ( .A1(n185), .A2(n59), .A3(n212), .Y(n692) );
  AO21X1_RVT U230 ( .A1(n185), .A2(n58), .A3(n213), .Y(n693) );
  AO21X1_RVT U231 ( .A1(n185), .A2(n57), .A3(n214), .Y(n694) );
  AO21X1_RVT U232 ( .A1(n185), .A2(n56), .A3(n215), .Y(n695) );
  AO21X1_RVT U233 ( .A1(n185), .A2(n54), .A3(n216), .Y(n696) );
  AO21X1_RVT U234 ( .A1(n185), .A2(n51), .A3(n217), .Y(n697) );
  AO221X1_RVT U235 ( .A1(n112), .A2(buf0[0]), .A3(idin[0]), .A4(n115), .A5(
        n218), .Y(n698) );
  AO21X1_RVT U236 ( .A1(n118), .A2(n51), .A3(n217), .Y(n218) );
  AO21X1_RVT U237 ( .A1(n110), .A2(din[0]), .A3(n145), .Y(n217) );
  AO221X1_RVT U238 ( .A1(n112), .A2(buf0[1]), .A3(idin[1]), .A4(n115), .A5(
        n219), .Y(n699) );
  AO21X1_RVT U239 ( .A1(n118), .A2(n54), .A3(n216), .Y(n219) );
  AO21X1_RVT U240 ( .A1(n109), .A2(din[1]), .A3(n145), .Y(n216) );
  AO221X1_RVT U241 ( .A1(n112), .A2(buf0[2]), .A3(idin[2]), .A4(n115), .A5(
        n220), .Y(n700) );
  AO21X1_RVT U242 ( .A1(n118), .A2(n56), .A3(n215), .Y(n220) );
  AO21X1_RVT U243 ( .A1(n109), .A2(din[2]), .A3(n145), .Y(n215) );
  AO221X1_RVT U244 ( .A1(n112), .A2(buf0[3]), .A3(idin[3]), .A4(n115), .A5(
        n221), .Y(n701) );
  AO21X1_RVT U245 ( .A1(n118), .A2(n57), .A3(n214), .Y(n221) );
  AO21X1_RVT U246 ( .A1(n110), .A2(din[3]), .A3(n145), .Y(n214) );
  AO221X1_RVT U247 ( .A1(n112), .A2(buf0[4]), .A3(idin[4]), .A4(n115), .A5(
        n222), .Y(n702) );
  AO21X1_RVT U248 ( .A1(n118), .A2(n58), .A3(n213), .Y(n222) );
  AO21X1_RVT U249 ( .A1(n109), .A2(din[4]), .A3(n145), .Y(n213) );
  AO221X1_RVT U250 ( .A1(n112), .A2(buf0[5]), .A3(idin[5]), .A4(n115), .A5(
        n223), .Y(n703) );
  AO21X1_RVT U251 ( .A1(n118), .A2(n59), .A3(n212), .Y(n223) );
  AO21X1_RVT U252 ( .A1(n109), .A2(din[5]), .A3(n145), .Y(n212) );
  AO221X1_RVT U253 ( .A1(n112), .A2(buf0[6]), .A3(idin[6]), .A4(n115), .A5(
        n224), .Y(n704) );
  AO21X1_RVT U254 ( .A1(n118), .A2(n60), .A3(n211), .Y(n224) );
  AO21X1_RVT U255 ( .A1(n110), .A2(din[6]), .A3(n144), .Y(n211) );
  AO221X1_RVT U256 ( .A1(n112), .A2(buf0[7]), .A3(idin[7]), .A4(n115), .A5(
        n225), .Y(n705) );
  AO21X1_RVT U257 ( .A1(n118), .A2(n61), .A3(n210), .Y(n225) );
  AO21X1_RVT U258 ( .A1(n110), .A2(din[7]), .A3(n144), .Y(n210) );
  AO221X1_RVT U259 ( .A1(n112), .A2(buf0[8]), .A3(idin[8]), .A4(n115), .A5(
        n226), .Y(n706) );
  AO21X1_RVT U260 ( .A1(n118), .A2(n62), .A3(n209), .Y(n226) );
  AO21X1_RVT U261 ( .A1(n110), .A2(din[8]), .A3(n144), .Y(n209) );
  AO221X1_RVT U262 ( .A1(n112), .A2(buf0[9]), .A3(idin[9]), .A4(n115), .A5(
        n227), .Y(n707) );
  AO21X1_RVT U263 ( .A1(n118), .A2(n63), .A3(n208), .Y(n227) );
  AO21X1_RVT U264 ( .A1(n110), .A2(din[9]), .A3(n144), .Y(n208) );
  AO221X1_RVT U265 ( .A1(n112), .A2(buf0[10]), .A3(idin[10]), .A4(n115), .A5(
        n228), .Y(n708) );
  AO21X1_RVT U266 ( .A1(n118), .A2(n64), .A3(n207), .Y(n228) );
  AO21X1_RVT U267 ( .A1(n110), .A2(din[10]), .A3(n144), .Y(n207) );
  AO221X1_RVT U268 ( .A1(n112), .A2(buf0[11]), .A3(idin[11]), .A4(n115), .A5(
        n229), .Y(n709) );
  AO21X1_RVT U269 ( .A1(n118), .A2(n65), .A3(n206), .Y(n229) );
  AO21X1_RVT U270 ( .A1(n109), .A2(din[11]), .A3(n144), .Y(n206) );
  AO221X1_RVT U271 ( .A1(n113), .A2(buf0[12]), .A3(idin[12]), .A4(n116), .A5(
        n230), .Y(n710) );
  AO21X1_RVT U272 ( .A1(n119), .A2(n66), .A3(n205), .Y(n230) );
  AO21X1_RVT U273 ( .A1(n110), .A2(din[12]), .A3(n144), .Y(n205) );
  AO221X1_RVT U274 ( .A1(n113), .A2(buf0[13]), .A3(idin[13]), .A4(n116), .A5(
        n231), .Y(n711) );
  AO21X1_RVT U275 ( .A1(n119), .A2(n67), .A3(n204), .Y(n231) );
  AO21X1_RVT U276 ( .A1(n109), .A2(din[13]), .A3(n144), .Y(n204) );
  AO221X1_RVT U277 ( .A1(n113), .A2(buf0[14]), .A3(idin[14]), .A4(n116), .A5(
        n232), .Y(n712) );
  AO21X1_RVT U278 ( .A1(n119), .A2(n68), .A3(n203), .Y(n232) );
  AO21X1_RVT U279 ( .A1(din[14]), .A2(n111), .A3(n144), .Y(n203) );
  AO221X1_RVT U280 ( .A1(n113), .A2(buf0[15]), .A3(idin[15]), .A4(n116), .A5(
        n233), .Y(n713) );
  AO21X1_RVT U281 ( .A1(n119), .A2(n69), .A3(n202), .Y(n233) );
  AO21X1_RVT U282 ( .A1(n109), .A2(din[15]), .A3(n144), .Y(n202) );
  AO221X1_RVT U283 ( .A1(n113), .A2(buf0[16]), .A3(idin[16]), .A4(n116), .A5(
        n235), .Y(n714) );
  AO21X1_RVT U284 ( .A1(n119), .A2(n70), .A3(n201), .Y(n235) );
  AO221X1_RVT U285 ( .A1(n113), .A2(buf0[17]), .A3(idin[17]), .A4(n116), .A5(
        n236), .Y(n715) );
  AO21X1_RVT U286 ( .A1(n119), .A2(n72), .A3(n200), .Y(n236) );
  AO221X1_RVT U287 ( .A1(n113), .A2(buf0[18]), .A3(idin[18]), .A4(n116), .A5(
        n237), .Y(n716) );
  AO21X1_RVT U288 ( .A1(n119), .A2(n73), .A3(n199), .Y(n237) );
  AO221X1_RVT U289 ( .A1(n113), .A2(buf0[19]), .A3(idin[19]), .A4(n116), .A5(
        n238), .Y(n717) );
  AO21X1_RVT U290 ( .A1(n119), .A2(buf0_orig[19]), .A3(n198), .Y(n238) );
  AO221X1_RVT U291 ( .A1(n113), .A2(buf0[20]), .A3(idin[20]), .A4(n116), .A5(
        n240), .Y(n718) );
  AO21X1_RVT U292 ( .A1(n119), .A2(buf0_orig[20]), .A3(n197), .Y(n240) );
  AO221X1_RVT U293 ( .A1(n113), .A2(buf0[21]), .A3(idin[21]), .A4(n116), .A5(
        n241), .Y(n719) );
  AO21X1_RVT U294 ( .A1(n119), .A2(buf0_orig[21]), .A3(n196), .Y(n241) );
  AO221X1_RVT U295 ( .A1(n113), .A2(buf0[22]), .A3(idin[22]), .A4(n116), .A5(
        n242), .Y(n720) );
  AO21X1_RVT U296 ( .A1(n119), .A2(buf0_orig[22]), .A3(n195), .Y(n242) );
  AO21X1_RVT U297 ( .A1(n111), .A2(din[22]), .A3(n143), .Y(n195) );
  AO221X1_RVT U298 ( .A1(n113), .A2(buf0[23]), .A3(idin[23]), .A4(n116), .A5(
        n243), .Y(n721) );
  AO21X1_RVT U299 ( .A1(n119), .A2(buf0_orig[23]), .A3(n194), .Y(n243) );
  AO21X1_RVT U300 ( .A1(n109), .A2(din[23]), .A3(n143), .Y(n194) );
  AO221X1_RVT U301 ( .A1(n114), .A2(buf0[24]), .A3(idin[24]), .A4(n117), .A5(
        n244), .Y(n722) );
  AO21X1_RVT U302 ( .A1(n120), .A2(buf0_orig[24]), .A3(n193), .Y(n244) );
  AO221X1_RVT U303 ( .A1(n114), .A2(buf0[25]), .A3(idin[25]), .A4(n117), .A5(
        n245), .Y(n723) );
  AO21X1_RVT U304 ( .A1(n120), .A2(buf0_orig[25]), .A3(n192), .Y(n245) );
  AO21X1_RVT U305 ( .A1(n110), .A2(din[25]), .A3(n143), .Y(n192) );
  AO221X1_RVT U306 ( .A1(n114), .A2(buf0[26]), .A3(idin[26]), .A4(n117), .A5(
        n246), .Y(n724) );
  AO21X1_RVT U307 ( .A1(n120), .A2(buf0_orig[26]), .A3(n191), .Y(n246) );
  AO21X1_RVT U308 ( .A1(n110), .A2(din[26]), .A3(n143), .Y(n191) );
  AO221X1_RVT U309 ( .A1(n114), .A2(buf0[27]), .A3(idin[27]), .A4(n117), .A5(
        n247), .Y(n725) );
  AO21X1_RVT U310 ( .A1(n120), .A2(buf0_orig[27]), .A3(n190), .Y(n247) );
  AO21X1_RVT U311 ( .A1(n110), .A2(din[27]), .A3(n143), .Y(n190) );
  AO221X1_RVT U312 ( .A1(n114), .A2(buf0[28]), .A3(idin[28]), .A4(n117), .A5(
        n248), .Y(n726) );
  AO21X1_RVT U313 ( .A1(n120), .A2(buf0_orig[28]), .A3(n189), .Y(n248) );
  AO21X1_RVT U314 ( .A1(n110), .A2(din[28]), .A3(n143), .Y(n189) );
  AO221X1_RVT U315 ( .A1(n114), .A2(buf0[29]), .A3(idin[29]), .A4(n117), .A5(
        n249), .Y(n727) );
  AO21X1_RVT U316 ( .A1(n120), .A2(buf0_orig[29]), .A3(n188), .Y(n249) );
  AO21X1_RVT U317 ( .A1(n110), .A2(din[29]), .A3(n143), .Y(n188) );
  AO221X1_RVT U318 ( .A1(n114), .A2(buf0[30]), .A3(idin[30]), .A4(n117), .A5(
        n250), .Y(n728) );
  AO21X1_RVT U319 ( .A1(n120), .A2(buf0_orig[30]), .A3(n187), .Y(n250) );
  AO21X1_RVT U320 ( .A1(din[30]), .A2(n111), .A3(n142), .Y(n187) );
  AO221X1_RVT U321 ( .A1(n114), .A2(buf0[31]), .A3(idin[31]), .A4(n117), .A5(
        n422), .Y(n729) );
  AO21X1_RVT U322 ( .A1(n120), .A2(n74), .A3(n186), .Y(n422) );
  AO21X1_RVT U323 ( .A1(din[31]), .A2(n111), .A3(n142), .Y(n186) );
  NAND4X0_RVT U324 ( .A1(buf0_set), .A2(n425), .A3(n107), .A4(n623), .Y(n424)
         );
  NAND3X0_RVT U325 ( .A1(n107), .A2(buf0_rl), .A3(n425), .Y(n423) );
  NAND2X0_RVT U326 ( .A1(n121), .A2(we), .Y(n185) );
  AO221X1_RVT U327 ( .A1(n124), .A2(buf1[0]), .A3(n127), .A4(idin[0]), .A5(
        n426), .Y(n730) );
  AO21X1_RVT U328 ( .A1(n130), .A2(din[0]), .A3(n142), .Y(n426) );
  AO221X1_RVT U329 ( .A1(n124), .A2(buf1[31]), .A3(n127), .A4(idin[31]), .A5(
        n427), .Y(n731) );
  AO21X1_RVT U330 ( .A1(n130), .A2(din[31]), .A3(n142), .Y(n427) );
  AO221X1_RVT U331 ( .A1(n124), .A2(buf1[30]), .A3(n127), .A4(idin[30]), .A5(
        n428), .Y(n732) );
  AO21X1_RVT U332 ( .A1(n130), .A2(din[30]), .A3(n142), .Y(n428) );
  AO221X1_RVT U333 ( .A1(n124), .A2(buf1[29]), .A3(n127), .A4(idin[29]), .A5(
        n429), .Y(n733) );
  AO21X1_RVT U334 ( .A1(n130), .A2(din[29]), .A3(n142), .Y(n429) );
  AO221X1_RVT U335 ( .A1(n124), .A2(buf1[28]), .A3(n127), .A4(idin[28]), .A5(
        n430), .Y(n734) );
  AO21X1_RVT U336 ( .A1(n130), .A2(din[28]), .A3(n142), .Y(n430) );
  AO221X1_RVT U337 ( .A1(n124), .A2(buf1[27]), .A3(n127), .A4(idin[27]), .A5(
        n431), .Y(n735) );
  AO21X1_RVT U338 ( .A1(n130), .A2(din[27]), .A3(n142), .Y(n431) );
  AO221X1_RVT U339 ( .A1(n124), .A2(buf1[26]), .A3(n127), .A4(idin[26]), .A5(
        n432), .Y(n736) );
  AO21X1_RVT U340 ( .A1(n130), .A2(din[26]), .A3(n142), .Y(n432) );
  AO221X1_RVT U341 ( .A1(n124), .A2(buf1[25]), .A3(n127), .A4(idin[25]), .A5(
        n433), .Y(n737) );
  AO21X1_RVT U342 ( .A1(n130), .A2(din[25]), .A3(n142), .Y(n433) );
  AO221X1_RVT U343 ( .A1(n124), .A2(buf1[24]), .A3(n127), .A4(idin[24]), .A5(
        n434), .Y(n738) );
  AO221X1_RVT U344 ( .A1(n124), .A2(buf1[23]), .A3(n127), .A4(idin[23]), .A5(
        n435), .Y(n739) );
  AO21X1_RVT U345 ( .A1(n130), .A2(din[23]), .A3(n142), .Y(n435) );
  AO221X1_RVT U346 ( .A1(n124), .A2(buf1[22]), .A3(n127), .A4(idin[22]), .A5(
        n436), .Y(n740) );
  AO21X1_RVT U347 ( .A1(n130), .A2(din[22]), .A3(n141), .Y(n436) );
  AO221X1_RVT U348 ( .A1(n124), .A2(buf1[21]), .A3(n127), .A4(idin[21]), .A5(
        n437), .Y(n741) );
  AO221X1_RVT U349 ( .A1(n125), .A2(buf1[20]), .A3(n128), .A4(idin[20]), .A5(
        n438), .Y(n742) );
  AO221X1_RVT U350 ( .A1(n125), .A2(buf1[19]), .A3(n128), .A4(idin[19]), .A5(
        n439), .Y(n743) );
  AO221X1_RVT U351 ( .A1(n125), .A2(buf1[18]), .A3(n128), .A4(idin[18]), .A5(
        n440), .Y(n744) );
  AO221X1_RVT U352 ( .A1(n125), .A2(buf1[17]), .A3(n128), .A4(idin[17]), .A5(
        n441), .Y(n745) );
  AO221X1_RVT U353 ( .A1(n125), .A2(buf1[16]), .A3(n128), .A4(idin[16]), .A5(
        n442), .Y(n746) );
  AO221X1_RVT U354 ( .A1(n125), .A2(buf1[15]), .A3(n128), .A4(idin[15]), .A5(
        n443), .Y(n747) );
  AO21X1_RVT U355 ( .A1(n131), .A2(din[15]), .A3(n141), .Y(n443) );
  AO221X1_RVT U356 ( .A1(n125), .A2(buf1[14]), .A3(n128), .A4(idin[14]), .A5(
        n444), .Y(n748) );
  AO21X1_RVT U357 ( .A1(n131), .A2(din[14]), .A3(n141), .Y(n444) );
  AO221X1_RVT U358 ( .A1(n125), .A2(buf1[13]), .A3(n128), .A4(idin[13]), .A5(
        n445), .Y(n749) );
  AO21X1_RVT U359 ( .A1(n131), .A2(din[13]), .A3(n141), .Y(n445) );
  AO221X1_RVT U360 ( .A1(n125), .A2(buf1[12]), .A3(n128), .A4(idin[12]), .A5(
        n446), .Y(n750) );
  AO21X1_RVT U361 ( .A1(n131), .A2(din[12]), .A3(n141), .Y(n446) );
  AO221X1_RVT U362 ( .A1(n125), .A2(buf1[11]), .A3(n128), .A4(idin[11]), .A5(
        n447), .Y(n751) );
  AO21X1_RVT U363 ( .A1(n131), .A2(din[11]), .A3(n141), .Y(n447) );
  AO221X1_RVT U364 ( .A1(n125), .A2(buf1[10]), .A3(n128), .A4(idin[10]), .A5(
        n448), .Y(n752) );
  AO21X1_RVT U365 ( .A1(n131), .A2(din[10]), .A3(n140), .Y(n448) );
  AO221X1_RVT U366 ( .A1(n125), .A2(buf1[9]), .A3(n128), .A4(idin[9]), .A5(
        n449), .Y(n753) );
  AO21X1_RVT U367 ( .A1(n131), .A2(din[9]), .A3(n140), .Y(n449) );
  AO221X1_RVT U368 ( .A1(n126), .A2(buf1[8]), .A3(n129), .A4(idin[8]), .A5(
        n450), .Y(n754) );
  AO21X1_RVT U369 ( .A1(n132), .A2(din[8]), .A3(n140), .Y(n450) );
  AO221X1_RVT U370 ( .A1(n126), .A2(buf1[7]), .A3(n129), .A4(idin[7]), .A5(
        n451), .Y(n755) );
  AO21X1_RVT U371 ( .A1(n132), .A2(din[7]), .A3(n145), .Y(n451) );
  AO221X1_RVT U372 ( .A1(n126), .A2(buf1[6]), .A3(n129), .A4(idin[6]), .A5(
        n452), .Y(n756) );
  AO21X1_RVT U373 ( .A1(n132), .A2(din[6]), .A3(n140), .Y(n452) );
  AO221X1_RVT U374 ( .A1(n126), .A2(buf1[5]), .A3(n129), .A4(idin[5]), .A5(
        n453), .Y(n757) );
  AO21X1_RVT U375 ( .A1(n132), .A2(din[5]), .A3(n145), .Y(n453) );
  AO221X1_RVT U376 ( .A1(n126), .A2(buf1[4]), .A3(n129), .A4(idin[4]), .A5(
        n454), .Y(n758) );
  AO21X1_RVT U377 ( .A1(n132), .A2(din[4]), .A3(n140), .Y(n454) );
  AO221X1_RVT U378 ( .A1(n126), .A2(buf1[3]), .A3(n129), .A4(idin[3]), .A5(
        n455), .Y(n759) );
  AO21X1_RVT U379 ( .A1(n132), .A2(din[3]), .A3(n145), .Y(n455) );
  AO221X1_RVT U380 ( .A1(n126), .A2(buf1[2]), .A3(n129), .A4(idin[2]), .A5(
        n456), .Y(n760) );
  AO21X1_RVT U381 ( .A1(n132), .A2(din[2]), .A3(n140), .Y(n456) );
  AO221X1_RVT U382 ( .A1(n126), .A2(buf1[1]), .A3(n129), .A4(idin[1]), .A5(
        n457), .Y(n761) );
  AO21X1_RVT U383 ( .A1(n132), .A2(din[1]), .A3(n145), .Y(n457) );
  NAND3X0_RVT U384 ( .A1(n458), .A2(n3), .A3(n460), .Y(n459) );
  OR2X1_RVT U385 ( .A1(out_to_small), .A2(buf1_set), .Y(n460) );
  NAND2X0_RVT U386 ( .A1(n461), .A2(we), .Y(n458) );
  AO22X1_RVT U387 ( .A1(n462), .A2(out_to_small), .A3(n463), .A4(n43), .Y(n762) );
  AO22X1_RVT U388 ( .A1(int_seqerr_set), .A2(n462), .A3(n463), .A4(n44), .Y(
        n763) );
  AO22X1_RVT U389 ( .A1(int_buf1_set), .A2(n462), .A3(n463), .A4(n50), .Y(n764) );
  AO22X1_RVT U390 ( .A1(int_buf0_set), .A2(n462), .A3(n463), .A4(n46), .Y(n765) );
  AO22X1_RVT U391 ( .A1(int_upid_set), .A2(n462), .A3(n463), .A4(n45), .Y(n766) );
  AO22X1_RVT U392 ( .A1(int_crc16_set), .A2(n462), .A3(n463), .A4(n16), .Y(
        n767) );
  AO22X1_RVT U393 ( .A1(int_to_set), .A2(n462), .A3(n463), .A4(n17), .Y(n768)
         );
  AND2X1_RVT U394 ( .A1(n139), .A2(n76), .Y(n463) );
  AND2X1_RVT U395 ( .A1(n425), .A2(n76), .Y(n462) );
  MUX21X1_RVT U396 ( .A1(n464), .A2(csr[29]), .S0(n465), .Y(n769) );
  AND2X1_RVT U397 ( .A1(idin[3]), .A2(n425), .Y(n464) );
  MUX21X1_RVT U398 ( .A1(n466), .A2(csr[28]), .S0(n465), .Y(n770) );
  AOI21X1_RVT U399 ( .A1(uc_dpd_set), .A2(n3), .A3(n140), .Y(n465) );
  AND2X1_RVT U400 ( .A1(idin[2]), .A2(n425), .Y(n466) );
  MUX21X1_RVT U401 ( .A1(n467), .A2(csr[31]), .S0(n468), .Y(n771) );
  AND2X1_RVT U402 ( .A1(idin[1]), .A2(n425), .Y(n467) );
  MUX21X1_RVT U403 ( .A1(n469), .A2(csr[30]), .S0(n468), .Y(n772) );
  AOI21X1_RVT U404 ( .A1(uc_bsel_set), .A2(n3), .A3(n140), .Y(n468) );
  AND2X1_RVT U405 ( .A1(idin[0]), .A2(n425), .Y(n469) );
  AND2X1_RVT U406 ( .A1(n139), .A2(n3), .Y(n425) );
  AO222X1_RVT U407 ( .A1(N292), .A2(n133), .A3(n135), .A4(dma_in_cnt[1]), .A5(
        N279), .A6(n137), .Y(n773) );
  AO222X1_RVT U408 ( .A1(N291), .A2(n133), .A3(n135), .A4(dma_in_cnt[0]), .A5(
        N278), .A6(n137), .Y(n774) );
  AO222X1_RVT U409 ( .A1(N293), .A2(n133), .A3(n135), .A4(dma_in_cnt[2]), .A5(
        N280), .A6(n137), .Y(n775) );
  AO222X1_RVT U410 ( .A1(N294), .A2(n133), .A3(n135), .A4(dma_in_cnt[3]), .A5(
        N281), .A6(n137), .Y(n776) );
  AO222X1_RVT U411 ( .A1(N295), .A2(n133), .A3(n135), .A4(dma_in_cnt[4]), .A5(
        N282), .A6(n137), .Y(n777) );
  AO222X1_RVT U412 ( .A1(N296), .A2(n133), .A3(n135), .A4(dma_in_cnt[5]), .A5(
        N283), .A6(n137), .Y(n778) );
  AO222X1_RVT U413 ( .A1(N297), .A2(n133), .A3(n135), .A4(dma_in_cnt[6]), .A5(
        N284), .A6(n137), .Y(n779) );
  AO222X1_RVT U414 ( .A1(N298), .A2(n133), .A3(n135), .A4(dma_in_cnt[7]), .A5(
        N285), .A6(n137), .Y(n780) );
  AO222X1_RVT U415 ( .A1(N299), .A2(n133), .A3(n135), .A4(dma_in_cnt[8]), .A5(
        N286), .A6(n137), .Y(n781) );
  AO222X1_RVT U416 ( .A1(N300), .A2(n133), .A3(n135), .A4(dma_in_cnt[9]), .A5(
        N287), .A6(n137), .Y(n782) );
  AO222X1_RVT U417 ( .A1(N301), .A2(n133), .A3(n135), .A4(dma_in_cnt[10]), 
        .A5(N288), .A6(n137), .Y(n783) );
  AO222X1_RVT U418 ( .A1(N302), .A2(n133), .A3(n135), .A4(dma_in_cnt[11]), 
        .A5(N289), .A6(n137), .Y(n784) );
  AO222X1_RVT U419 ( .A1(N243), .A2(n134), .A3(n136), .A4(dma_out_cnt[1]), 
        .A5(N230), .A6(n138), .Y(n785) );
  AO222X1_RVT U420 ( .A1(N242), .A2(n134), .A3(n136), .A4(dma_out_cnt[0]), 
        .A5(N229), .A6(n138), .Y(n786) );
  AO222X1_RVT U421 ( .A1(N244), .A2(n134), .A3(n136), .A4(dma_out_cnt[2]), 
        .A5(N231), .A6(n138), .Y(n787) );
  AO222X1_RVT U422 ( .A1(N245), .A2(n134), .A3(n136), .A4(dma_out_cnt[3]), 
        .A5(N232), .A6(n138), .Y(n788) );
  AO222X1_RVT U423 ( .A1(N246), .A2(n134), .A3(n136), .A4(dma_out_cnt[4]), 
        .A5(N233), .A6(n138), .Y(n789) );
  AO222X1_RVT U424 ( .A1(N247), .A2(n134), .A3(n136), .A4(dma_out_cnt[5]), 
        .A5(N234), .A6(n138), .Y(n790) );
  AO222X1_RVT U425 ( .A1(N248), .A2(n134), .A3(n136), .A4(dma_out_cnt[6]), 
        .A5(N235), .A6(n138), .Y(n791) );
  AO222X1_RVT U426 ( .A1(N249), .A2(n134), .A3(n136), .A4(dma_out_cnt[7]), 
        .A5(N236), .A6(n138), .Y(n792) );
  AO222X1_RVT U427 ( .A1(N250), .A2(n134), .A3(n136), .A4(dma_out_cnt[8]), 
        .A5(N237), .A6(n138), .Y(n793) );
  AO222X1_RVT U428 ( .A1(N251), .A2(n134), .A3(n136), .A4(dma_out_cnt[9]), 
        .A5(N238), .A6(n138), .Y(n794) );
  AO222X1_RVT U429 ( .A1(N252), .A2(n134), .A3(n136), .A4(dma_out_cnt[10]), 
        .A5(N239), .A6(n138), .Y(n795) );
  AO222X1_RVT U430 ( .A1(N253), .A2(n134), .A3(n136), .A4(dma_out_cnt[11]), 
        .A5(N240), .A6(n138), .Y(n796) );
  NAND2X0_RVT U431 ( .A1(r5), .A2(csr[15]), .Y(n470) );
  NAND4X0_RVT U432 ( .A1(n472), .A2(csr[15]), .A3(n3), .A4(n23), .Y(n471) );
  NAND3X0_RVT U433 ( .A1(n473), .A2(n557), .A3(n623), .Y(n472) );
  INVX0_RVT U434 ( .A(buf0_rl), .Y(n623) );
  INVX0_RVT U435 ( .A(buf0_set), .Y(n473) );
  AND2X1_RVT U436 ( .A1(rst), .A2(n474), .Y(n797) );
  AO221X1_RVT U437 ( .A1(n475), .A2(dma_req), .A3(r1), .A4(n2), .A5(n477), .Y(
        n474) );
  AND4X1_RVT U438 ( .A1(n478), .A2(dma_req_in_hold2), .A3(dma_req_in_hold), 
        .A4(dma_req), .Y(n477) );
  AO21X1_RVT U439 ( .A1(n479), .A2(dma_req_out_hold), .A3(n626), .Y(n475) );
  INVX0_RVT U440 ( .A(dma_ack), .Y(n626) );
  NAND4X0_RVT U441 ( .A1(n592), .A2(n593), .A3(n591), .A4(n480), .Y(n798) );
  AND3X1_RVT U442 ( .A1(n595), .A2(n596), .A3(n594), .Y(n480) );
  AND4X1_RVT U443 ( .A1(n481), .A2(n482), .A3(n483), .A4(n484), .Y(ep_match)
         );
  XOR2X1_RVT U444 ( .A1(n558), .A2(ep_sel[3]), .Y(n484) );
  XOR2X1_RVT U445 ( .A1(n559), .A2(ep_sel[2]), .Y(n483) );
  XOR2X1_RVT U446 ( .A1(n560), .A2(ep_sel[1]), .Y(n482) );
  XOR2X1_RVT U447 ( .A1(n561), .A2(ep_sel[0]), .Y(n481) );
  AO222X1_RVT U448 ( .A1(n123), .A2(buf0[9]), .A3(n96), .A4(buf1[9]), .A5(n180), .A6(csr_9), .Y(dout[9]) );
  AO222X1_RVT U449 ( .A1(n93), .A2(buf0[8]), .A3(n89), .A4(buf1[8]), .A5(n91), 
        .A6(csr_8), .Y(dout[8]) );
  AO222X1_RVT U450 ( .A1(n122), .A2(buf0[7]), .A3(n88), .A4(buf1[7]), .A5(n91), 
        .A6(csr_7), .Y(dout[7]) );
  AO221X1_RVT U451 ( .A1(n87), .A2(buf1[6]), .A3(n122), .A4(buf0[6]), .A5(n485), .Y(dout[6]) );
  AO221X1_RVT U452 ( .A1(n87), .A2(buf1[5]), .A3(n122), .A4(buf0[5]), .A5(n486), .Y(dout[5]) );
  AO22X1_RVT U453 ( .A1(n102), .A2(n44), .A3(n90), .A4(csr_5), .Y(n486) );
  AO221X1_RVT U454 ( .A1(n95), .A2(buf1[4]), .A3(n121), .A4(buf0[4]), .A5(n487), .Y(dout[4]) );
  AO22X1_RVT U455 ( .A1(n101), .A2(n50), .A3(n180), .A4(csr_4), .Y(n487) );
  AO221X1_RVT U456 ( .A1(n461), .A2(buf1[3]), .A3(n93), .A4(buf0[3]), .A5(n488), .Y(dout[3]) );
  AO222X1_RVT U457 ( .A1(n122), .A2(buf0[31]), .A3(n87), .A4(buf1[31]), .A5(
        n98), .A6(csr[31]), .Y(dout[31]) );
  AO222X1_RVT U458 ( .A1(n122), .A2(buf0[30]), .A3(n96), .A4(buf1[30]), .A5(
        n92), .A6(csr[30]), .Y(dout[30]) );
  AO221X1_RVT U459 ( .A1(n96), .A2(buf1[2]), .A3(n123), .A4(buf0[2]), .A5(n489), .Y(dout[2]) );
  AO22X1_RVT U460 ( .A1(n101), .A2(n45), .A3(n90), .A4(csr_2), .Y(n489) );
  AO221X1_RVT U461 ( .A1(n95), .A2(buf1[29]), .A3(n122), .A4(buf0[29]), .A5(
        n490), .Y(dout[29]) );
  AO221X1_RVT U462 ( .A1(n96), .A2(buf1[28]), .A3(n121), .A4(buf0[28]), .A5(
        n491), .Y(dout[28]) );
  AO221X1_RVT U463 ( .A1(n89), .A2(buf1[27]), .A3(n123), .A4(buf0[27]), .A5(
        n492), .Y(dout[27]) );
  AO221X1_RVT U464 ( .A1(n89), .A2(buf1[26]), .A3(n123), .A4(buf0[26]), .A5(
        n493), .Y(dout[26]) );
  AO221X1_RVT U465 ( .A1(n88), .A2(buf1[25]), .A3(n123), .A4(buf0[25]), .A5(
        n494), .Y(dout[25]) );
  AO22X1_RVT U466 ( .A1(n102), .A2(n7), .A3(n90), .A4(csr[25]), .Y(n494) );
  AO221X1_RVT U467 ( .A1(n87), .A2(buf1[24]), .A3(n93), .A4(buf0[24]), .A5(
        n495), .Y(dout[24]) );
  AO222X1_RVT U468 ( .A1(n93), .A2(buf0[23]), .A3(n95), .A4(buf1[23]), .A5(n91), .A6(csr[23]), .Y(dout[23]) );
  AO222X1_RVT U469 ( .A1(n122), .A2(buf0[22]), .A3(n88), .A4(buf1[22]), .A5(
        n91), .A6(csr[22]), .Y(dout[22]) );
  AO221X1_RVT U470 ( .A1(n89), .A2(buf1[21]), .A3(n93), .A4(buf0[21]), .A5(
        n496), .Y(dout[21]) );
  AO221X1_RVT U471 ( .A1(n96), .A2(buf1[20]), .A3(n122), .A4(buf0[20]), .A5(
        n497), .Y(dout[20]) );
  AO22X1_RVT U472 ( .A1(n101), .A2(n19), .A3(n91), .A4(csr[20]), .Y(n497) );
  AO221X1_RVT U473 ( .A1(n95), .A2(buf1[1]), .A3(n93), .A4(buf0[1]), .A5(n498), 
        .Y(dout[1]) );
  AO22X1_RVT U474 ( .A1(n102), .A2(n16), .A3(n180), .A4(csr_1), .Y(n498) );
  AO221X1_RVT U475 ( .A1(n87), .A2(buf1[19]), .A3(n123), .A4(buf0[19]), .A5(
        n499), .Y(dout[19]) );
  AO221X1_RVT U476 ( .A1(n89), .A2(buf1[18]), .A3(n121), .A4(buf0[18]), .A5(
        n500), .Y(dout[18]) );
  AO22X1_RVT U477 ( .A1(n100), .A2(n21), .A3(n92), .A4(csr[18]), .Y(n500) );
  AO221X1_RVT U478 ( .A1(n88), .A2(buf1[17]), .A3(n93), .A4(buf0[17]), .A5(
        n501), .Y(dout[17]) );
  AO221X1_RVT U479 ( .A1(n87), .A2(buf1[16]), .A3(n121), .A4(buf0[16]), .A5(
        n502), .Y(dout[16]) );
  AO22X1_RVT U480 ( .A1(n100), .A2(n22), .A3(n90), .A4(csr[16]), .Y(n502) );
  AO222X1_RVT U481 ( .A1(n123), .A2(buf0[15]), .A3(n95), .A4(buf1[15]), .A5(
        n92), .A6(csr[15]), .Y(dout[15]) );
  AO22X1_RVT U482 ( .A1(n123), .A2(buf0[14]), .A3(n89), .A4(buf1[14]), .Y(
        dout[14]) );
  AO222X1_RVT U483 ( .A1(n121), .A2(buf0[13]), .A3(n96), .A4(buf1[13]), .A5(
        n92), .A6(csr_13), .Y(dout[13]) );
  AO222X1_RVT U484 ( .A1(n93), .A2(buf0[12]), .A3(n88), .A4(buf1[12]), .A5(n98), .A6(csr_12), .Y(dout[12]) );
  AO222X1_RVT U485 ( .A1(n123), .A2(buf0[11]), .A3(n88), .A4(buf1[11]), .A5(
        n90), .A6(csr_11), .Y(dout[11]) );
  AO222X1_RVT U486 ( .A1(n121), .A2(buf0[10]), .A3(n95), .A4(buf1[10]), .A5(
        n92), .A6(csr_10), .Y(dout[10]) );
  AO221X1_RVT U487 ( .A1(n461), .A2(buf1[0]), .A3(n121), .A4(buf0[0]), .A5(
        n503), .Y(dout[0]) );
  AO22X1_RVT U488 ( .A1(n100), .A2(n17), .A3(n90), .A4(csr_0), .Y(n503) );
  AND2X1_RVT U489 ( .A1(n504), .A2(n625), .Y(n180) );
  AND4X1_RVT U490 ( .A1(n75), .A2(n23), .A3(n2), .A4(n505), .Y(N361) );
  AOI21X1_RVT U491 ( .A1(n506), .A2(n507), .A3(n807), .Y(n505) );
  NAND3X0_RVT U492 ( .A1(n508), .A2(csr[26]), .A3(n808), .Y(n507) );
  AO22X1_RVT U493 ( .A1(n610), .A2(buf0_orig[30]), .A3(n509), .A4(n510), .Y(
        n508) );
  NAND2X0_RVT U494 ( .A1(n600), .A2(dma_in_cnt[11]), .Y(n510) );
  AO21X1_RVT U495 ( .A1(n620), .A2(buf0_orig[29]), .A3(n511), .Y(n509) );
  OA221X1_RVT U496 ( .A1(n619), .A2(buf0_orig[28]), .A3(n620), .A4(
        buf0_orig[29]), .A5(n512), .Y(n511) );
  AO221X1_RVT U497 ( .A1(n619), .A2(buf0_orig[28]), .A3(n618), .A4(
        buf0_orig[27]), .A5(n513), .Y(n512) );
  OA221X1_RVT U498 ( .A1(n618), .A2(buf0_orig[27]), .A3(n617), .A4(
        buf0_orig[26]), .A5(n514), .Y(n513) );
  AO221X1_RVT U499 ( .A1(n617), .A2(buf0_orig[26]), .A3(n616), .A4(
        buf0_orig[25]), .A5(n515), .Y(n514) );
  OA221X1_RVT U500 ( .A1(n616), .A2(buf0_orig[25]), .A3(n615), .A4(
        buf0_orig[24]), .A5(n516), .Y(n515) );
  AO221X1_RVT U501 ( .A1(n615), .A2(buf0_orig[24]), .A3(n614), .A4(
        buf0_orig[23]), .A5(n517), .Y(n516) );
  OA221X1_RVT U502 ( .A1(n614), .A2(buf0_orig[23]), .A3(n613), .A4(
        buf0_orig[22]), .A5(n518), .Y(n517) );
  AO222X1_RVT U503 ( .A1(n519), .A2(buf0_orig[21]), .A3(n612), .A4(n520), .A5(
        n613), .A6(buf0_orig[22]), .Y(n518) );
  OR2X1_RVT U504 ( .A1(buf0_orig[21]), .A2(n519), .Y(n520) );
  AO22X1_RVT U505 ( .A1(n609), .A2(buf0_orig[20]), .A3(n521), .A4(n611), .Y(
        n519) );
  OA21X1_RVT U506 ( .A1(n609), .A2(buf0_orig[20]), .A3(buf0_orig[19]), .Y(n521) );
  NAND2X0_RVT U507 ( .A1(n479), .A2(n522), .Y(n506) );
  OR3X1_RVT U508 ( .A1(dma_out_cnt[0]), .A2(n799), .A3(dma_out_cnt[1]), .Y(
        n522) );
  NAND4X0_RVT U509 ( .A1(n564), .A2(n565), .A3(n523), .A4(n524), .Y(n799) );
  AND3X1_RVT U510 ( .A1(n569), .A2(n570), .A3(n525), .Y(n524) );
  AND3X1_RVT U511 ( .A1(n803), .A2(n804), .A3(n571), .Y(n525) );
  AND3X1_RVT U512 ( .A1(n567), .A2(n568), .A3(n566), .Y(n523) );
  INVX0_RVT U513 ( .A(n478), .Y(n479) );
  NAND2X0_RVT U514 ( .A1(n174), .A2(csr[27]), .Y(n478) );
  AND3X1_RVT U515 ( .A1(n526), .A2(csr[26]), .A3(n808), .Y(N348) );
  NAND4X0_RVT U516 ( .A1(n602), .A2(n601), .A3(n527), .A4(n528), .Y(n526) );
  AND3X1_RVT U517 ( .A1(n606), .A2(n607), .A3(n529), .Y(n528) );
  AND3X1_RVT U518 ( .A1(n805), .A2(n600), .A3(n806), .Y(n529) );
  AND3X1_RVT U519 ( .A1(n604), .A2(n605), .A3(n603), .Y(n527) );
  AO22X1_RVT U520 ( .A1(n610), .A2(n42), .A3(n530), .A4(n531), .Y(N347) );
  NAND2X0_RVT U521 ( .A1(n621), .A2(dma_in_cnt[11]), .Y(n531) );
  AO21X1_RVT U522 ( .A1(n620), .A2(n41), .A3(n532), .Y(n530) );
  OA221X1_RVT U523 ( .A1(n619), .A2(n14), .A3(n620), .A4(n41), .A5(n533), .Y(
        n532) );
  AO221X1_RVT U524 ( .A1(n618), .A2(n40), .A3(n619), .A4(n14), .A5(n534), .Y(
        n533) );
  OA221X1_RVT U525 ( .A1(n618), .A2(n40), .A3(n617), .A4(n15), .A5(n535), .Y(
        n534) );
  AO221X1_RVT U526 ( .A1(n616), .A2(n36), .A3(n617), .A4(n15), .A5(n536), .Y(
        n535) );
  OA221X1_RVT U527 ( .A1(n616), .A2(n36), .A3(n615), .A4(n13), .A5(n537), .Y(
        n536) );
  AO221X1_RVT U528 ( .A1(n614), .A2(n39), .A3(n615), .A4(n13), .A5(n538), .Y(
        n537) );
  OA221X1_RVT U529 ( .A1(n614), .A2(n39), .A3(n613), .A4(n12), .A5(n539), .Y(
        n538) );
  AO222X1_RVT U530 ( .A1(n540), .A2(n33), .A3(n612), .A4(n541), .A5(n613), 
        .A6(n12), .Y(n539) );
  OR2X1_RVT U531 ( .A1(n33), .A2(n540), .Y(n541) );
  AO22X1_RVT U532 ( .A1(n609), .A2(n34), .A3(n542), .A4(n611), .Y(n540) );
  OA21X1_RVT U533 ( .A1(n609), .A2(n34), .A3(\buf0_orig_m3[0] ), .Y(n542) );
  NAND4X0_RVT U534 ( .A1(n610), .A2(n620), .A3(n543), .A4(n619), .Y(N319) );
  OA21X1_RVT U535 ( .A1(n618), .A2(csr_10), .A3(n544), .Y(n543) );
  AO221X1_RVT U536 ( .A1(n618), .A2(csr_10), .A3(n617), .A4(csr_9), .A5(n545), 
        .Y(n544) );
  OA221X1_RVT U537 ( .A1(n616), .A2(csr_8), .A3(n617), .A4(csr_9), .A5(n546), 
        .Y(n545) );
  AO221X1_RVT U538 ( .A1(n616), .A2(csr_8), .A3(n615), .A4(csr_7), .A5(n547), 
        .Y(n546) );
  OA221X1_RVT U539 ( .A1(n614), .A2(csr_6), .A3(n615), .A4(csr_7), .A5(n548), 
        .Y(n547) );
  AO221X1_RVT U540 ( .A1(n614), .A2(csr_6), .A3(n613), .A4(csr_5), .A5(n549), 
        .Y(n548) );
  OA221X1_RVT U541 ( .A1(n612), .A2(csr_4), .A3(n613), .A4(csr_5), .A5(n550), 
        .Y(n549) );
  AO222X1_RVT U542 ( .A1(n612), .A2(csr_4), .A3(n551), .A4(n611), .A5(n609), 
        .A6(csr_3), .Y(n550) );
  OA21X1_RVT U543 ( .A1(n609), .A2(csr_3), .A3(csr_2), .Y(n551) );
  NAND2X0_RVT U544 ( .A1(n552), .A2(n553), .Y(N222) );
  OA222X1_RVT U545 ( .A1(n576), .A2(n588), .A3(n573), .A4(n554), .A5(n577), 
        .A6(n590), .Y(n553) );
  OA222X1_RVT U546 ( .A1(n572), .A2(n579), .A3(n575), .A4(n586), .A5(n574), 
        .A6(n582), .Y(n552) );
  NAND2X0_RVT U547 ( .A1(n555), .A2(n556), .Y(N221) );
  OA222X1_RVT U548 ( .A1(n587), .A2(n588), .A3(n580), .A4(n554), .A5(n589), 
        .A6(n590), .Y(n556) );
  AND2X1_RVT U549 ( .A1(n583), .A2(n584), .Y(n554) );
  OA222X1_RVT U550 ( .A1(n578), .A2(n579), .A3(n585), .A4(n586), .A5(n581), 
        .A6(n582), .Y(n555) );
endmodule


module usbf_ep_rf_0_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  FADDX1_RVT U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .S(DIFF[11]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n1), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1_RVT U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(
        DIFF[9]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1_RVT U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1_RVT U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(
        DIFF[8]) );
  FADDX1_RVT U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  INVX1_RVT U1 ( .A(B[0]), .Y(n3) );
  INVX1_RVT U2 ( .A(B[10]), .Y(n12) );
  INVX1_RVT U3 ( .A(B[8]), .Y(n10) );
  INVX1_RVT U4 ( .A(B[7]), .Y(n9) );
  INVX1_RVT U5 ( .A(B[6]), .Y(n8) );
  INVX1_RVT U6 ( .A(B[5]), .Y(n7) );
  INVX1_RVT U7 ( .A(B[4]), .Y(n6) );
  INVX1_RVT U8 ( .A(B[3]), .Y(n5) );
  INVX1_RVT U9 ( .A(B[2]), .Y(n4) );
  INVX1_RVT U10 ( .A(B[9]), .Y(n11) );
  OR2X1_RVT U11 ( .A1(n3), .A2(A[0]), .Y(carry[1]) );
  INVX1_RVT U12 ( .A(B[1]), .Y(n1) );
  XNOR2X1_RVT U13 ( .A1(A[0]), .A2(n3), .Y(DIFF[0]) );
  INVX1_RVT U14 ( .A(B[11]), .Y(n2) );
endmodule


module usbf_ep_rf_0_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [12:0] carry;

  FADDX1_RVT U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1_RVT U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1_RVT U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1_RVT U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1_RVT U2_8 ( .A(A[8]), .B(n1), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  INVX1_RVT U1 ( .A(B[0]), .Y(n9) );
  INVX1_RVT U2 ( .A(B[8]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(n9), .A2(A[0]), .Y(carry[1]) );
  INVX1_RVT U4 ( .A(B[1]), .Y(n8) );
  INVX1_RVT U5 ( .A(B[2]), .Y(n7) );
  INVX1_RVT U6 ( .A(B[4]), .Y(n5) );
  INVX1_RVT U7 ( .A(B[6]), .Y(n3) );
  INVX1_RVT U8 ( .A(B[3]), .Y(n6) );
  INVX1_RVT U9 ( .A(B[5]), .Y(n4) );
  INVX1_RVT U10 ( .A(B[7]), .Y(n2) );
  XNOR2X1_RVT U11 ( .A1(A[10]), .A2(carry[10]), .Y(DIFF[10]) );
  XNOR2X1_RVT U12 ( .A1(A[9]), .A2(carry[9]), .Y(DIFF[9]) );
  XNOR2X1_RVT U13 ( .A1(A[0]), .A2(n9), .Y(DIFF[0]) );
  XNOR2X1_RVT U14 ( .A1(A[11]), .A2(carry[11]), .Y(DIFF[11]) );
  OR2X1_RVT U15 ( .A1(carry[10]), .A2(A[10]), .Y(carry[11]) );
  OR2X1_RVT U16 ( .A1(carry[9]), .A2(A[9]), .Y(carry[10]) );
endmodule


module usbf_ep_rf_0_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HADDX1_RVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[11]), .A2(A[11]), .Y(SUM[11]) );
endmodule


module usbf_ep_rf_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;

  wire   [11:1] carry;

  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
  XOR2X1_RVT U2 ( .A1(A[10]), .A2(carry[10]), .Y(SUM[10]) );
  XOR2X1_RVT U3 ( .A1(A[9]), .A2(carry[9]), .Y(SUM[9]) );
  XOR2X1_RVT U4 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  XOR2X1_RVT U5 ( .A1(A[11]), .A2(carry[11]), .Y(SUM[11]) );
  AND2X1_RVT U6 ( .A1(A[9]), .A2(carry[9]), .Y(carry[10]) );
  AND2X1_RVT U7 ( .A1(A[10]), .A2(carry[10]), .Y(carry[11]) );
endmodule


module usbf_ep_rf_0_DW01_dec_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20;

  INVX1_RVT U1 ( .A(n20), .Y(n1) );
  INVX1_RVT U2 ( .A(n11), .Y(n2) );
  INVX1_RVT U3 ( .A(n12), .Y(n3) );
  INVX1_RVT U4 ( .A(n13), .Y(n4) );
  INVX1_RVT U5 ( .A(n14), .Y(n5) );
  INVX1_RVT U6 ( .A(n15), .Y(n6) );
  INVX1_RVT U7 ( .A(n16), .Y(n7) );
  INVX1_RVT U8 ( .A(n17), .Y(n8) );
  INVX1_RVT U9 ( .A(A[0]), .Y(SUM[0]) );
  INVX1_RVT U10 ( .A(n18), .Y(n9) );
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


module usbf_ep_rf_0 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;
  wire   csr_13, csr_12, csr_11, csr_10, csr_9, csr_8, csr_7, csr_6, csr_5,
         csr_4, csr_3, csr_2, csr_1, csr_0, N221, N222, N229, N230, N231, N232,
         N233, N234, N235, N236, N237, N238, N239, N240, N242, N243, N244,
         N245, N246, N247, N248, N249, N250, N251, N252, N253,
         dma_req_out_hold, N278, N279, N280, N281, N282, N283, N284, N285,
         N286, N287, N288, N289, N291, N292, N293, N294, N295, N296, N297,
         N298, N299, N300, N301, N302, N319, N321, N322, N323, N324, N325,
         N326, N327, N328, N329, N330, N331, N332, N333, N336, N337, N338,
         N339, N340, N341, N342, N343, N344, N345, N346, \buf0_orig_m3[0] ,
         N347, dma_req_in_hold2, N348, dma_req_in_hold, r1, r2, r4, r5, N361,
         dma_ack_wr1, \sub_449/carry[2] , \sub_449/carry[3] ,
         \sub_449/carry[4] , \sub_449/carry[5] , \sub_449/carry[6] ,
         \sub_449/carry[7] , \sub_449/carry[8] , \sub_449/carry[9] ,
         \sub_449/carry[10] , \sub_449/carry[11] , n1, n2, n3, n4, n5, n7, n8,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n27, n30, n31, n33, n34, n36, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n54, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n72, n73, n74, n75, n76, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n235, n236, n237, n238,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808;
  wire   [31:0] buf0_orig;
  wire   [11:0] dma_out_cnt;
  wire   [11:0] dma_in_cnt;
  wire   [11:0] dma_out_left;
  assign csr[14] = 1'b0;
  assign csr[13] = csr_13;
  assign csr[12] = csr_12;
  assign csr[11] = csr_11;
  assign csr[10] = csr_10;
  assign csr[9] = csr_9;
  assign csr[8] = csr_8;
  assign csr[7] = csr_7;
  assign csr[6] = csr_6;
  assign csr[5] = csr_5;
  assign csr[4] = csr_4;
  assign csr[3] = csr_3;
  assign csr[2] = csr_2;
  assign csr[1] = csr_1;
  assign csr[0] = csr_0;

  usbf_ep_rf_0_DW01_sub_1 sub_433 ( .A(buf0_orig[30:19]), .B(dma_out_cnt), 
        .CI(1'b0), .DIFF({N332, N331, N330, N329, N328, N327, N326, N325, N324, 
        N323, N322, N321}) );
  usbf_ep_rf_0_DW01_sub_2 sub_422 ( .A(dma_in_cnt), .B({1'b0, 1'b0, 1'b0, 
        csr_10, csr_9, csr_8, csr_7, csr_6, csr_5, csr_4, csr_3, csr_2}), .CI(
        1'b0), .DIFF({N302, N301, N300, N299, N298, N297, N296, N295, N294, 
        N293, N292, N291}) );
  usbf_ep_rf_0_DW01_inc_0 add_419_S2 ( .A(dma_in_cnt), .SUM({N289, N288, N287, 
        N286, N285, N284, N283, N282, N281, N280, N279, N278}) );
  usbf_ep_rf_0_DW01_add_0 add_397 ( .A(dma_out_cnt), .B({1'b0, 1'b0, 1'b0, 
        csr_10, csr_9, csr_8, csr_7, csr_6, csr_5, csr_4, csr_3, csr_2}), .CI(
        1'b0), .SUM({N253, N252, N251, N250, N249, N248, N247, N246, N245, 
        N244, N243, N242}) );
  usbf_ep_rf_0_DW01_dec_0 sub_394_S2 ( .A(dma_out_cnt), .SUM({N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229}) );
  SDFFSSRX1_RVT int_re_reg ( .RSTB(n625), .SETB(1'b1), .D(adr[0]), .SI(1'b0), 
        .SE(n624), .CLK(n163), .QN(n78) );
  DFFX1_RVT \ienb_reg[5]  ( .D(n654), .CLK(n150), .Q(n50), .QN(n577) );
  DFFX1_RVT \ienb_reg[4]  ( .D(n655), .CLK(n150), .Q(n18), .QN(n575) );
  DFFX1_RVT \ienb_reg[3]  ( .D(n656), .CLK(n151), .Q(n48), .QN(n573) );
  DFFX1_RVT \ienb_reg[2]  ( .D(n657), .CLK(n150), .Q(n19), .QN(n576) );
  DFFX1_RVT \ienb_reg[1]  ( .D(n658), .CLK(n150), .Q(n17), .QN(n574) );
  DFFX1_RVT \ienb_reg[0]  ( .D(n659), .CLK(n150), .Q(n20), .QN(n572) );
  DFFX1_RVT \iena_reg[5]  ( .D(n660), .CLK(n150), .Q(n5), .QN(n589) );
  DFFX1_RVT \iena_reg[4]  ( .D(n661), .CLK(n150), .Q(n7), .QN(n585) );
  DFFX1_RVT \iena_reg[3]  ( .D(n662), .CLK(n151), .Q(n51), .QN(n580) );
  DFFX1_RVT \iena_reg[2]  ( .D(n663), .CLK(n151), .Q(n21), .QN(n587) );
  DFFX1_RVT \iena_reg[1]  ( .D(n664), .CLK(n151), .Q(n4), .QN(n581) );
  DFFX1_RVT \iena_reg[0]  ( .D(n665), .CLK(n151), .Q(n8), .QN(n578) );
  DFFX1_RVT \buf0_orig_reg[31]  ( .D(n666), .CLK(n151), .Q(n75) );
  DFFX1_RVT \buf0_orig_reg[18]  ( .D(n679), .CLK(n152), .Q(n74) );
  DFFX1_RVT \buf0_orig_reg[17]  ( .D(n680), .CLK(n152), .Q(n73) );
  DFFX1_RVT \buf0_orig_reg[16]  ( .D(n681), .CLK(n152), .Q(n72) );
  DFFX1_RVT \buf0_orig_reg[15]  ( .D(n682), .CLK(n152), .Q(n70) );
  DFFX1_RVT \buf0_orig_reg[14]  ( .D(n683), .CLK(n152), .Q(n69) );
  DFFX1_RVT \buf0_orig_reg[13]  ( .D(n684), .CLK(n152), .Q(n68) );
  DFFX1_RVT \buf0_orig_reg[12]  ( .D(n685), .CLK(n153), .Q(n67) );
  DFFX1_RVT \buf0_orig_reg[11]  ( .D(n686), .CLK(n153), .Q(n66) );
  DFFX1_RVT \buf0_orig_reg[10]  ( .D(n687), .CLK(n153), .Q(n65) );
  DFFX1_RVT \buf0_orig_reg[9]  ( .D(n688), .CLK(n153), .Q(n64) );
  DFFX1_RVT \buf0_orig_reg[8]  ( .D(n689), .CLK(n153), .Q(n63) );
  DFFX1_RVT \buf0_orig_reg[7]  ( .D(n690), .CLK(n153), .Q(n62) );
  DFFX1_RVT \buf0_orig_reg[6]  ( .D(n691), .CLK(n153), .Q(n61) );
  DFFX1_RVT \buf0_orig_reg[5]  ( .D(n692), .CLK(n153), .Q(n60) );
  DFFX1_RVT \buf0_orig_reg[4]  ( .D(n693), .CLK(n153), .Q(n59) );
  DFFX1_RVT \buf0_orig_reg[3]  ( .D(n694), .CLK(n153), .Q(n58) );
  DFFX1_RVT \buf0_orig_reg[2]  ( .D(n695), .CLK(n153), .Q(n57) );
  DFFX1_RVT \buf0_orig_reg[1]  ( .D(n696), .CLK(n153), .Q(n56) );
  DFFX1_RVT \buf0_orig_reg[0]  ( .D(n697), .CLK(n154), .Q(n54) );
  DFFX1_RVT ep_match_r_reg ( .D(ep_match), .CLK(n154), .Q(n3) );
  DFFX1_RVT \int_stat_reg[6]  ( .D(n762), .CLK(n159), .Q(n43), .QN(n590) );
  DFFX1_RVT \int_stat_reg[5]  ( .D(n763), .CLK(n159), .Q(n44), .QN(n586) );
  DFFX1_RVT \int_stat_reg[4]  ( .D(n764), .CLK(n159), .Q(n49), .QN(n584) );
  DFFX1_RVT \int_stat_reg[3]  ( .D(n765), .CLK(n159), .Q(n47), .QN(n583) );
  DFFX1_RVT \int_stat_reg[2]  ( .D(n766), .CLK(n159), .Q(n45), .QN(n588) );
  DFFX1_RVT \int_stat_reg[1]  ( .D(n767), .CLK(n160), .Q(n16), .QN(n582) );
  DFFX1_RVT \int_stat_reg[0]  ( .D(n768), .CLK(n160), .Q(n46), .QN(n579) );
  DFFSSRX1_RVT set_r_reg ( .D(buf0_set), .SETB(n623), .RSTB(r5), .CLK(n148), 
        .QN(n557) );
  DFFX1_RVT \csr1_reg[12]  ( .D(n628), .CLK(n155), .Q(csr[27]), .QN(n808) );
  DFFX1_RVT \csr1_reg[11]  ( .D(n629), .CLK(n148), .Q(csr[26]), .QN(n176) );
  DFFX1_RVT \csr1_reg[10]  ( .D(n630), .CLK(n148), .Q(csr[25]) );
  DFFX1_RVT \csr1_reg[9]  ( .D(n631), .CLK(n148), .Q(csr[24]) );
  DFFX1_RVT \csr1_reg[6]  ( .D(n632), .CLK(n148), .Q(csr[21]), .QN(n558) );
  DFFX1_RVT \csr1_reg[5]  ( .D(n633), .CLK(n149), .Q(csr[20]), .QN(n559) );
  DFFX1_RVT \csr1_reg[4]  ( .D(n634), .CLK(n148), .Q(csr[19]), .QN(n560) );
  DFFX1_RVT \csr1_reg[3]  ( .D(n635), .CLK(n148), .Q(csr[18]), .QN(n561) );
  DFFX1_RVT \csr1_reg[2]  ( .D(n636), .CLK(n148), .Q(csr[17]) );
  DFFX1_RVT \csr1_reg[1]  ( .D(n637), .CLK(n148), .Q(csr[16]) );
  DFFX1_RVT \csr1_reg[0]  ( .D(n638), .CLK(n148), .Q(csr[15]), .QN(n807) );
  DFFX1_RVT ots_stop_reg ( .D(n627), .CLK(n149), .Q(csr_13) );
  DFFX1_RVT \csr1_reg[8]  ( .D(n640), .CLK(n149), .Q(csr[23]) );
  DFFX1_RVT \csr1_reg[7]  ( .D(n639), .CLK(n149), .Q(csr[22]) );
  DFFX1_RVT \csr0_reg[12]  ( .D(n641), .CLK(n149), .Q(csr_12) );
  DFFX1_RVT \csr0_reg[11]  ( .D(n642), .CLK(n149), .Q(csr_11) );
  DFFX1_RVT \csr0_reg[1]  ( .D(n652), .CLK(n150), .Q(csr_1), .QN(n562) );
  DFFX1_RVT \csr0_reg[0]  ( .D(n653), .CLK(n150), .Q(csr_0), .QN(n563) );
  DFFX1_RVT \buf1_reg[1]  ( .D(n761), .CLK(n154), .Q(buf1[1]) );
  DFFX1_RVT \buf1_reg[2]  ( .D(n760), .CLK(n154), .Q(buf1[2]) );
  DFFX1_RVT \buf1_reg[3]  ( .D(n759), .CLK(n154), .Q(buf1[3]) );
  DFFX1_RVT \buf1_reg[4]  ( .D(n758), .CLK(n154), .Q(buf1[4]) );
  DFFX1_RVT \buf1_reg[5]  ( .D(n757), .CLK(n154), .Q(buf1[5]) );
  DFFX1_RVT \buf1_reg[6]  ( .D(n756), .CLK(n154), .Q(buf1[6]) );
  DFFX1_RVT \buf1_reg[7]  ( .D(n755), .CLK(n154), .Q(buf1[7]) );
  DFFX1_RVT \buf1_reg[8]  ( .D(n754), .CLK(n154), .Q(buf1[8]) );
  DFFX1_RVT \buf1_reg[9]  ( .D(n753), .CLK(n154), .Q(buf1[9]) );
  DFFX1_RVT \buf1_reg[10]  ( .D(n752), .CLK(n154), .Q(buf1[10]) );
  DFFX1_RVT \buf1_reg[11]  ( .D(n751), .CLK(n155), .Q(buf1[11]) );
  DFFX1_RVT \buf1_reg[12]  ( .D(n750), .CLK(n155), .Q(buf1[12]) );
  DFFX1_RVT \buf1_reg[13]  ( .D(n749), .CLK(n155), .Q(buf1[13]) );
  DFFX1_RVT \buf1_reg[14]  ( .D(n748), .CLK(n155), .Q(buf1[14]) );
  DFFX1_RVT \buf1_reg[15]  ( .D(n747), .CLK(n155), .Q(buf1[15]) );
  DFFX1_RVT \buf1_reg[16]  ( .D(n746), .CLK(n155), .Q(buf1[16]) );
  DFFX1_RVT \buf1_reg[17]  ( .D(n745), .CLK(n155), .Q(buf1[17]) );
  DFFX1_RVT \buf1_reg[18]  ( .D(n744), .CLK(n155), .Q(buf1[18]) );
  DFFX1_RVT \buf1_reg[19]  ( .D(n743), .CLK(n155), .Q(buf1[19]) );
  DFFX1_RVT \buf1_reg[20]  ( .D(n742), .CLK(n155), .Q(buf1[20]) );
  DFFX1_RVT \buf1_reg[21]  ( .D(n741), .CLK(n155), .Q(buf1[21]) );
  DFFX1_RVT \buf1_reg[22]  ( .D(n740), .CLK(n156), .Q(buf1[22]) );
  DFFX1_RVT \buf1_reg[23]  ( .D(n739), .CLK(n156), .Q(buf1[23]) );
  DFFX1_RVT \buf1_reg[24]  ( .D(n738), .CLK(n156), .Q(buf1[24]) );
  DFFX1_RVT \buf1_reg[25]  ( .D(n737), .CLK(n156), .Q(buf1[25]) );
  DFFX1_RVT \buf1_reg[26]  ( .D(n736), .CLK(n156), .Q(buf1[26]) );
  DFFX1_RVT \buf1_reg[27]  ( .D(n735), .CLK(n156), .Q(buf1[27]) );
  DFFX1_RVT \buf1_reg[28]  ( .D(n734), .CLK(n156), .Q(buf1[28]) );
  DFFX1_RVT \buf1_reg[29]  ( .D(n733), .CLK(n156), .Q(buf1[29]) );
  DFFX1_RVT \buf1_reg[30]  ( .D(n732), .CLK(n156), .Q(buf1[30]) );
  DFFX1_RVT \buf1_reg[31]  ( .D(n731), .CLK(n156), .Q(buf1[31]) );
  DFFX1_RVT \buf1_reg[0]  ( .D(n730), .CLK(n156), .Q(buf1[0]) );
  DFFX1_RVT \buf0_reg[31]  ( .D(n729), .CLK(n156), .Q(buf0[31]) );
  DFFX1_RVT \buf0_reg[30]  ( .D(n728), .CLK(n157), .Q(buf0[30]) );
  DFFX1_RVT \buf0_reg[29]  ( .D(n727), .CLK(n157), .Q(buf0[29]) );
  DFFX1_RVT \buf0_reg[28]  ( .D(n726), .CLK(n157), .Q(buf0[28]) );
  DFFX1_RVT \buf0_reg[27]  ( .D(n725), .CLK(n157), .Q(buf0[27]) );
  DFFX1_RVT \buf0_reg[26]  ( .D(n724), .CLK(n157), .Q(buf0[26]) );
  DFFX1_RVT \buf0_reg[25]  ( .D(n723), .CLK(n157), .Q(buf0[25]) );
  DFFX1_RVT \buf0_reg[24]  ( .D(n722), .CLK(n157), .Q(buf0[24]) );
  DFFX1_RVT \buf0_reg[23]  ( .D(n721), .CLK(n157), .Q(buf0[23]) );
  DFFX1_RVT \buf0_reg[22]  ( .D(n720), .CLK(n157), .Q(buf0[22]) );
  DFFX1_RVT \buf0_reg[21]  ( .D(n719), .CLK(n157), .Q(buf0[21]) );
  DFFX1_RVT \buf0_reg[20]  ( .D(n718), .CLK(n157), .Q(buf0[20]) );
  DFFX1_RVT \buf0_reg[19]  ( .D(n717), .CLK(n157), .Q(buf0[19]) );
  DFFX1_RVT \buf0_reg[18]  ( .D(n716), .CLK(n158), .Q(buf0[18]) );
  DFFX1_RVT \buf0_reg[17]  ( .D(n715), .CLK(n158), .Q(buf0[17]) );
  DFFX1_RVT \buf0_reg[16]  ( .D(n714), .CLK(n158), .Q(buf0[16]) );
  DFFX1_RVT \buf0_reg[15]  ( .D(n713), .CLK(n158), .Q(buf0[15]) );
  DFFX1_RVT \buf0_reg[14]  ( .D(n712), .CLK(n158), .Q(buf0[14]) );
  DFFX1_RVT \buf0_reg[13]  ( .D(n711), .CLK(n158), .Q(buf0[13]) );
  DFFX1_RVT \buf0_reg[12]  ( .D(n710), .CLK(n158), .Q(buf0[12]) );
  DFFX1_RVT \buf0_reg[11]  ( .D(n709), .CLK(n158), .Q(buf0[11]) );
  DFFX1_RVT \buf0_reg[10]  ( .D(n708), .CLK(n158), .Q(buf0[10]) );
  DFFX1_RVT \buf0_reg[9]  ( .D(n707), .CLK(n158), .Q(buf0[9]) );
  DFFX1_RVT \buf0_reg[8]  ( .D(n706), .CLK(n158), .Q(buf0[8]) );
  DFFX1_RVT \buf0_reg[7]  ( .D(n705), .CLK(n158), .Q(buf0[7]) );
  DFFX1_RVT \buf0_reg[6]  ( .D(n704), .CLK(n159), .Q(buf0[6]) );
  DFFX1_RVT \buf0_reg[5]  ( .D(n703), .CLK(n159), .Q(buf0[5]) );
  DFFX1_RVT \buf0_reg[4]  ( .D(n702), .CLK(n159), .Q(buf0[4]) );
  DFFX1_RVT \buf0_reg[3]  ( .D(n701), .CLK(n159), .Q(buf0[3]) );
  DFFX1_RVT \buf0_reg[2]  ( .D(n700), .CLK(n159), .Q(buf0[2]) );
  DFFX1_RVT \buf0_reg[1]  ( .D(n699), .CLK(n159), .Q(buf0[1]) );
  DFFX1_RVT \buf0_reg[0]  ( .D(n698), .CLK(n159), .Q(buf0[0]) );
  DFFX1_RVT \uc_dpd_reg[1]  ( .D(n769), .CLK(n160), .Q(csr[29]) );
  DFFX1_RVT \uc_dpd_reg[0]  ( .D(n770), .CLK(n160), .Q(csr[28]) );
  DFFX1_RVT \uc_bsel_reg[1]  ( .D(n771), .CLK(n160), .Q(csr[31]) );
  DFFX1_RVT \uc_bsel_reg[0]  ( .D(n772), .CLK(n160), .Q(csr[30]) );
  DFFX1_RVT dma_out_buf_avail_reg ( .D(N333), .CLK(n162), .Q(dma_out_buf_avail) );
  DFFX1_RVT \dma_out_left_reg[10]  ( .D(N331), .CLK(n162), .Q(dma_out_left[10]) );
  DFFX1_RVT \dma_out_left_reg[9]  ( .D(N330), .CLK(n162), .Q(dma_out_left[9])
         );
  DFFX1_RVT \dma_out_left_reg[0]  ( .D(N321), .CLK(n161), .QN(n82) );
  DFFX1_RVT \dma_out_left_reg[1]  ( .D(N322), .CLK(n161), .QN(n24) );
  DFFX1_RVT \dma_out_left_reg[2]  ( .D(N323), .CLK(n161), .QN(n11) );
  DFFX1_RVT \dma_out_left_reg[3]  ( .D(N324), .CLK(n161), .QN(n79) );
  DFFX1_RVT \dma_out_left_reg[4]  ( .D(N325), .CLK(n162), .QN(n27) );
  DFFX1_RVT \dma_out_left_reg[5]  ( .D(N326), .CLK(n162), .QN(n80) );
  DFFX1_RVT \dma_out_left_reg[6]  ( .D(N327), .CLK(n162), .QN(n30) );
  DFFX1_RVT \dma_out_left_reg[7]  ( .D(N328), .CLK(n162), .QN(n81) );
  DFFX1_RVT \dma_out_left_reg[8]  ( .D(N329), .CLK(n162), .QN(n23) );
  DFFX1_RVT \dma_out_left_reg[11]  ( .D(N332), .CLK(n162), .Q(dma_out_left[11]) );
  DFFX1_RVT r4_reg ( .D(dma_ack_wr1), .CLK(n160), .Q(r4), .QN(n76) );
  DFFX1_RVT r5_reg ( .D(r4), .CLK(n160), .Q(r5), .QN(n22) );
  DFFSSRX1_RVT dma_in_buf_sz1_reg ( .D(n798), .SETB(n622), .RSTB(N319), .CLK(
        n148), .Q(dma_in_buf_sz1) );
  DFFX1_RVT \dma_in_cnt_reg[11]  ( .D(n784), .CLK(n162), .Q(dma_in_cnt[11]), 
        .QN(n610) );
  DFFX1_RVT \dma_out_cnt_reg[11]  ( .D(n796), .CLK(n160), .Q(dma_out_cnt[11]), 
        .QN(n804) );
  DFFX1_RVT \dma_in_cnt_reg[1]  ( .D(n773), .CLK(n162), .Q(dma_in_cnt[1]), 
        .QN(n609) );
  DFFX1_RVT \dma_in_cnt_reg[2]  ( .D(n775), .CLK(n163), .Q(dma_in_cnt[2]), 
        .QN(n612) );
  DFFX1_RVT \dma_in_cnt_reg[3]  ( .D(n776), .CLK(n163), .Q(dma_in_cnt[3]), 
        .QN(n613) );
  DFFX1_RVT \dma_in_cnt_reg[4]  ( .D(n777), .CLK(n163), .Q(dma_in_cnt[4]), 
        .QN(n614) );
  DFFX1_RVT \dma_in_cnt_reg[5]  ( .D(n778), .CLK(n163), .Q(dma_in_cnt[5]), 
        .QN(n615) );
  DFFX1_RVT \dma_in_cnt_reg[6]  ( .D(n779), .CLK(n163), .Q(dma_in_cnt[6]), 
        .QN(n616) );
  DFFX1_RVT \dma_in_cnt_reg[7]  ( .D(n780), .CLK(n163), .Q(dma_in_cnt[7]), 
        .QN(n617) );
  DFFX1_RVT \dma_in_cnt_reg[8]  ( .D(n781), .CLK(n163), .Q(dma_in_cnt[8]), 
        .QN(n618) );
  DFFX1_RVT \buf0_orig_reg[30]  ( .D(n667), .CLK(n151), .Q(buf0_orig[30]), 
        .QN(n600) );
  DFFX1_RVT \dma_in_cnt_reg[9]  ( .D(n782), .CLK(n163), .Q(dma_in_cnt[9]), 
        .QN(n619) );
  DFFX1_RVT \dma_in_cnt_reg[10]  ( .D(n783), .CLK(n148), .Q(dma_in_cnt[10]), 
        .QN(n620) );
  DFFX1_RVT \buf0_orig_reg[20]  ( .D(n677), .CLK(n152), .Q(buf0_orig[20]) );
  DFFX1_RVT \csr0_reg[2]  ( .D(n651), .CLK(n150), .Q(csr_2), .QN(n597) );
  DFFX1_RVT \dma_out_cnt_reg[9]  ( .D(n794), .CLK(n161), .Q(dma_out_cnt[9]), 
        .QN(n567) );
  DFFX1_RVT \buf0_orig_reg[29]  ( .D(n668), .CLK(n151), .Q(buf0_orig[29]), 
        .QN(n601) );
  DFFX1_RVT \buf0_orig_reg[28]  ( .D(n669), .CLK(n151), .Q(buf0_orig[28]), 
        .QN(n602) );
  DFFX1_RVT \buf0_orig_reg[27]  ( .D(n670), .CLK(n151), .Q(buf0_orig[27]), 
        .QN(n603) );
  DFFX1_RVT \buf0_orig_reg[26]  ( .D(n671), .CLK(n151), .Q(buf0_orig[26]), 
        .QN(n604) );
  DFFX1_RVT \buf0_orig_reg[25]  ( .D(n672), .CLK(n151), .Q(buf0_orig[25]), 
        .QN(n605) );
  DFFX1_RVT \buf0_orig_reg[24]  ( .D(n673), .CLK(n152), .Q(buf0_orig[24]), 
        .QN(n606) );
  DFFX1_RVT \buf0_orig_reg[23]  ( .D(n674), .CLK(n152), .Q(buf0_orig[23]), 
        .QN(n607) );
  DFFX1_RVT \buf0_orig_reg[22]  ( .D(n675), .CLK(n152), .Q(buf0_orig[22]), 
        .QN(n806) );
  DFFX1_RVT \buf0_orig_reg[21]  ( .D(n676), .CLK(n152), .Q(buf0_orig[21]), 
        .QN(n805) );
  DFFX1_RVT \dma_out_cnt_reg[1]  ( .D(n785), .CLK(n160), .Q(dma_out_cnt[1]) );
  DFFX1_RVT \dma_out_cnt_reg[2]  ( .D(n787), .CLK(n160), .Q(dma_out_cnt[2]), 
        .QN(n569) );
  DFFX1_RVT \dma_out_cnt_reg[3]  ( .D(n788), .CLK(n161), .Q(dma_out_cnt[3]), 
        .QN(n571) );
  DFFX1_RVT \dma_out_cnt_reg[4]  ( .D(n789), .CLK(n161), .Q(dma_out_cnt[4]), 
        .QN(n570) );
  DFFX1_RVT \dma_out_cnt_reg[5]  ( .D(n790), .CLK(n161), .Q(dma_out_cnt[5]), 
        .QN(n565) );
  DFFX1_RVT \dma_out_cnt_reg[6]  ( .D(n791), .CLK(n161), .Q(dma_out_cnt[6]), 
        .QN(n564) );
  DFFX1_RVT \dma_out_cnt_reg[7]  ( .D(n792), .CLK(n161), .Q(dma_out_cnt[7]), 
        .QN(n566) );
  DFFX1_RVT \dma_out_cnt_reg[8]  ( .D(n793), .CLK(n161), .Q(dma_out_cnt[8]), 
        .QN(n568) );
  DFFX1_RVT \dma_in_cnt_reg[0]  ( .D(n774), .CLK(n162), .Q(dma_in_cnt[0]), 
        .QN(n611) );
  DFFX1_RVT \csr0_reg[9]  ( .D(n644), .CLK(n149), .Q(csr_9), .QN(n591) );
  DFFX1_RVT \csr0_reg[7]  ( .D(n646), .CLK(n149), .Q(csr_7), .QN(n593) );
  DFFX1_RVT \csr0_reg[5]  ( .D(n648), .CLK(n150), .Q(csr_5), .QN(n595) );
  DFFX1_RVT \csr0_reg[8]  ( .D(n645), .CLK(n149), .Q(csr_8), .QN(n592) );
  DFFX1_RVT \csr0_reg[6]  ( .D(n647), .CLK(n149), .Q(csr_6), .QN(n594) );
  DFFX1_RVT \csr0_reg[4]  ( .D(n649), .CLK(n149), .Q(csr_4), .QN(n596) );
  DFFX1_RVT \dma_out_cnt_reg[10]  ( .D(n795), .CLK(n161), .Q(dma_out_cnt[10]), 
        .QN(n803) );
  DFFX1_RVT \csr0_reg[3]  ( .D(n650), .CLK(n150), .Q(csr_3), .QN(n598) );
  DFFX1_RVT \csr0_reg[10]  ( .D(n643), .CLK(n149), .Q(csr_10), .QN(n599) );
  DFFX1_RVT \dma_out_cnt_reg[0]  ( .D(n786), .CLK(n160), .Q(dma_out_cnt[0]) );
  DFFX1_RVT \buf0_orig_reg[19]  ( .D(n678), .CLK(n152), .Q(buf0_orig[19]), 
        .QN(n608) );
  DFFX1_RVT dma_req_in_hold2_reg ( .D(N347), .CLK(wclk), .Q(dma_req_in_hold2)
         );
  DFFX1_RVT dma_req_in_hold_reg ( .D(N348), .CLK(wclk), .Q(dma_req_in_hold) );
  DFFX1_RVT r1_reg ( .D(N361), .CLK(wclk), .Q(r1), .QN(n175) );
  DFFX1_RVT inta_reg ( .D(N221), .CLK(wclk), .Q(inta) );
  DFFX1_RVT intb_reg ( .D(N222), .CLK(wclk), .Q(intb) );
  SDFFSSRX1_RVT dma_req_out_hold_reg ( .RSTB(n799), .SETB(1'b1), .D(n176), 
        .SI(1'b0), .SE(n808), .CLK(wclk), .Q(dma_req_out_hold) );
  DFFSSRX1_RVT dma_ack_wr1_reg ( .D(n800), .SETB(n626), .RSTB(rst), .CLK(wclk), 
        .Q(dma_ack_wr1) );
  DFFSSRX1_RVT r2_reg ( .D(n801), .SETB(n175), .RSTB(rst), .CLK(wclk), .Q(r2), 
        .QN(n2) );
  DFFX1_RVT dma_ack_clr1_reg ( .D(r4), .CLK(wclk), .QN(n802) );
  DFFX1_RVT \buf0_orig_m3_reg[10]  ( .D(N345), .CLK(wclk), .Q(n41) );
  DFFX1_RVT \buf0_orig_m3_reg[9]  ( .D(N344), .CLK(wclk), .Q(n14) );
  DFFX1_RVT \buf0_orig_m3_reg[8]  ( .D(N343), .CLK(wclk), .Q(n40) );
  DFFX1_RVT \buf0_orig_m3_reg[7]  ( .D(N342), .CLK(wclk), .Q(n15) );
  DFFX1_RVT dma_req_r_reg ( .D(n797), .CLK(wclk), .Q(dma_req) );
  DFFX1_RVT \buf0_orig_m3_reg[11]  ( .D(N346), .CLK(wclk), .Q(n42), .QN(n621)
         );
  DFFX1_RVT \buf0_orig_m3_reg[0]  ( .D(n608), .CLK(wclk), .Q(\buf0_orig_m3[0] ) );
  DFFX1_RVT \buf0_orig_m3_reg[6]  ( .D(N341), .CLK(wclk), .Q(n36) );
  DFFX1_RVT \buf0_orig_m3_reg[5]  ( .D(N340), .CLK(wclk), .Q(n13) );
  DFFX1_RVT \buf0_orig_m3_reg[4]  ( .D(N339), .CLK(wclk), .Q(n39) );
  DFFX1_RVT \buf0_orig_m3_reg[3]  ( .D(N338), .CLK(wclk), .Q(n12) );
  DFFX1_RVT \buf0_orig_m3_reg[2]  ( .D(N337), .CLK(wclk), .Q(n33) );
  DFFX1_RVT \buf0_orig_m3_reg[1]  ( .D(N336), .CLK(wclk), .Q(n34) );
  AND2X1_RVT U3 ( .A1(n141), .A2(n184), .Y(n1) );
  INVX1_RVT U6 ( .A(n93), .Y(n100) );
  AO21X1_RVT U7 ( .A1(n114), .A2(din[19]), .A3(n145), .Y(n199) );
  AO21X1_RVT U8 ( .A1(n115), .A2(din[20]), .A3(n145), .Y(n198) );
  AO21X1_RVT U9 ( .A1(n115), .A2(din[21]), .A3(n145), .Y(n197) );
  AO21X1_RVT U10 ( .A1(n115), .A2(din[24]), .A3(n145), .Y(n194) );
  AO21X1_RVT U12 ( .A1(n113), .A2(din[16]), .A3(n146), .Y(n202) );
  AO21X1_RVT U13 ( .A1(n113), .A2(din[17]), .A3(n146), .Y(n201) );
  AO21X1_RVT U16 ( .A1(n113), .A2(din[18]), .A3(n145), .Y(n200) );
  AO22X1_RVT U19 ( .A1(n105), .A2(n48), .A3(n95), .A4(csr[19]), .Y(n499) );
  AO21X1_RVT U20 ( .A1(n132), .A2(din[24]), .A3(n144), .Y(n435) );
  AO21X1_RVT U21 ( .A1(n132), .A2(din[21]), .A3(n143), .Y(n438) );
  AO21X1_RVT U22 ( .A1(n133), .A2(din[20]), .A3(n143), .Y(n439) );
  AO21X1_RVT U23 ( .A1(n133), .A2(din[19]), .A3(n143), .Y(n440) );
  AO21X1_RVT U24 ( .A1(n133), .A2(din[18]), .A3(n143), .Y(n441) );
  AO21X1_RVT U25 ( .A1(n133), .A2(din[17]), .A3(n143), .Y(n442) );
  AO21X1_RVT U26 ( .A1(n133), .A2(din[16]), .A3(n143), .Y(n443) );
  INVX1_RVT U27 ( .A(n93), .Y(n125) );
  NBUFFX2_RVT U28 ( .A(n97), .Y(n84) );
  OR2X1_RVT U29 ( .A1(n102), .A2(n563), .Y(n31) );
  INVX0_RVT U30 ( .A(n94), .Y(n83) );
  NBUFFX2_RVT U31 ( .A(n97), .Y(n85) );
  NBUFFX2_RVT U32 ( .A(n97), .Y(n86) );
  INVX0_RVT U33 ( .A(n94), .Y(n97) );
  NBUFFX2_RVT U34 ( .A(n185), .Y(n87) );
  INVX0_RVT U35 ( .A(n93), .Y(n99) );
  INVX0_RVT U36 ( .A(n93), .Y(n88) );
  INVX1_RVT U37 ( .A(n164), .Y(n163) );
  INVX1_RVT U38 ( .A(n141), .Y(n147) );
  INVX1_RVT U39 ( .A(n425), .Y(n119) );
  INVX1_RVT U40 ( .A(n425), .Y(n120) );
  INVX1_RVT U41 ( .A(n141), .Y(n146) );
  INVX1_RVT U42 ( .A(n141), .Y(n145) );
  INVX1_RVT U43 ( .A(n141), .Y(n144) );
  INVX1_RVT U44 ( .A(n141), .Y(n143) );
  INVX1_RVT U45 ( .A(n113), .Y(n111) );
  INVX1_RVT U46 ( .A(n113), .Y(n112) );
  INVX1_RVT U47 ( .A(n424), .Y(n122) );
  INVX1_RVT U48 ( .A(n424), .Y(n123) );
  INVX1_RVT U49 ( .A(n164), .Y(n162) );
  INVX1_RVT U50 ( .A(n164), .Y(n161) );
  INVX1_RVT U51 ( .A(n164), .Y(n160) );
  INVX1_RVT U52 ( .A(n164), .Y(n159) );
  INVX1_RVT U53 ( .A(n164), .Y(n158) );
  INVX1_RVT U54 ( .A(n164), .Y(n157) );
  INVX1_RVT U55 ( .A(n164), .Y(n156) );
  INVX1_RVT U56 ( .A(n164), .Y(n154) );
  INVX1_RVT U57 ( .A(n164), .Y(n153) );
  INVX1_RVT U58 ( .A(n164), .Y(n152) );
  INVX1_RVT U59 ( .A(n164), .Y(n155) );
  INVX1_RVT U60 ( .A(n425), .Y(n121) );
  INVX1_RVT U61 ( .A(n424), .Y(n124) );
  INVX1_RVT U62 ( .A(n89), .Y(n118) );
  INVX1_RVT U63 ( .A(n89), .Y(n116) );
  INVX1_RVT U64 ( .A(n89), .Y(n117) );
  INVX1_RVT U65 ( .A(n164), .Y(n151) );
  INVX1_RVT U66 ( .A(n164), .Y(n150) );
  INVX1_RVT U67 ( .A(n164), .Y(n149) );
  INVX1_RVT U68 ( .A(n164), .Y(n148) );
  INVX1_RVT U69 ( .A(n90), .Y(n109) );
  INVX1_RVT U70 ( .A(n90), .Y(n108) );
  INVX1_RVT U71 ( .A(n459), .Y(n132) );
  INVX1_RVT U72 ( .A(n459), .Y(n133) );
  INVX1_RVT U73 ( .A(n182), .Y(n106) );
  INVX1_RVT U74 ( .A(n182), .Y(n107) );
  INVX1_RVT U75 ( .A(n459), .Y(n134) );
  INVX1_RVT U76 ( .A(clk), .Y(n164) );
  INVX1_RVT U77 ( .A(n186), .Y(n115) );
  INVX1_RVT U78 ( .A(n186), .Y(n114) );
  INVX1_RVT U79 ( .A(n186), .Y(n113) );
  NAND3X0_RVT U80 ( .A1(n424), .A2(n186), .A3(n425), .Y(n89) );
  INVX1_RVT U81 ( .A(n142), .Y(n141) );
  NAND2X0_RVT U82 ( .A1(n141), .A2(n182), .Y(n90) );
  NBUFFX2_RVT U83 ( .A(n185), .Y(n105) );
  NBUFFX2_RVT U84 ( .A(n185), .Y(n104) );
  INVX1_RVT U85 ( .A(n91), .Y(n128) );
  INVX1_RVT U86 ( .A(n91), .Y(n126) );
  INVX1_RVT U87 ( .A(n91), .Y(n127) );
  INVX1_RVT U88 ( .A(n460), .Y(n129) );
  INVX1_RVT U89 ( .A(n460), .Y(n130) );
  INVX1_RVT U90 ( .A(n460), .Y(n131) );
  INVX1_RVT U91 ( .A(n470), .Y(n139) );
  INVX1_RVT U92 ( .A(n470), .Y(n140) );
  INVX1_RVT U93 ( .A(n471), .Y(n135) );
  INVX1_RVT U94 ( .A(n471), .Y(n136) );
  INVX1_RVT U95 ( .A(n92), .Y(n137) );
  INVX1_RVT U96 ( .A(n92), .Y(n138) );
  AO22X1_RVT U97 ( .A1(n87), .A2(n16), .A3(n98), .A4(csr_1), .Y(n498) );
  AND2X1_RVT U98 ( .A1(adr[0]), .A2(n625), .Y(n185) );
  AO22X1_RVT U99 ( .A1(n87), .A2(n51), .A3(n98), .A4(csr[27]), .Y(n492) );
  AO22X1_RVT U100 ( .A1(n105), .A2(n50), .A3(n110), .A4(csr[21]), .Y(n496) );
  AO22X1_RVT U101 ( .A1(n185), .A2(n7), .A3(n95), .A4(csr[28]), .Y(n491) );
  AO22X1_RVT U102 ( .A1(n104), .A2(n4), .A3(n110), .A4(csr[25]), .Y(n494) );
  AO22X1_RVT U103 ( .A1(n104), .A2(n18), .A3(n96), .A4(csr[20]), .Y(n497) );
  AO22X1_RVT U104 ( .A1(n185), .A2(n17), .A3(n96), .A4(csr[17]), .Y(n501) );
  AO22X1_RVT U105 ( .A1(n104), .A2(n8), .A3(n110), .A4(csr[24]), .Y(n495) );
  AO22X1_RVT U106 ( .A1(n87), .A2(n21), .A3(n96), .A4(csr[26]), .Y(n493) );
  AO22X1_RVT U107 ( .A1(n105), .A2(n20), .A3(n95), .A4(csr[16]), .Y(n502) );
  AO22X1_RVT U108 ( .A1(n87), .A2(n19), .A3(n110), .A4(csr[18]), .Y(n500) );
  NAND2X0_RVT U109 ( .A1(n460), .A2(n459), .Y(n91) );
  NAND3X0_RVT U110 ( .A1(n470), .A2(csr[15]), .A3(n471), .Y(n92) );
  NAND2X0_RVT U111 ( .A1(adr[1]), .A2(n504), .Y(n93) );
  NAND2X0_RVT U112 ( .A1(adr[0]), .A2(adr[1]), .Y(n94) );
  INVX0_RVT U113 ( .A(n102), .Y(n95) );
  INVX0_RVT U114 ( .A(n102), .Y(n96) );
  INVX0_RVT U115 ( .A(adr[0]), .Y(n504) );
  INVX0_RVT U116 ( .A(n101), .Y(n98) );
  INVX0_RVT U117 ( .A(n101), .Y(n110) );
  NAND2X0_RVT U118 ( .A1(n504), .A2(n625), .Y(n101) );
  NAND2X0_RVT U119 ( .A1(n504), .A2(n625), .Y(n102) );
  NAND2X0_RVT U120 ( .A1(n105), .A2(n46), .Y(n103) );
  NAND2X0_RVT U121 ( .A1(n103), .A2(n31), .Y(n503) );
  INVX0_RVT U122 ( .A(rst), .Y(n142) );
  XNOR2X1_RVT U123 ( .A1(buf0_orig[30]), .A2(\sub_449/carry[11] ), .Y(N346) );
  OR2X1_RVT U124 ( .A1(buf0_orig[29]), .A2(\sub_449/carry[10] ), .Y(
        \sub_449/carry[11] ) );
  XNOR2X1_RVT U125 ( .A1(\sub_449/carry[10] ), .A2(buf0_orig[29]), .Y(N345) );
  OR2X1_RVT U126 ( .A1(buf0_orig[28]), .A2(\sub_449/carry[9] ), .Y(
        \sub_449/carry[10] ) );
  XNOR2X1_RVT U127 ( .A1(\sub_449/carry[9] ), .A2(buf0_orig[28]), .Y(N344) );
  OR2X1_RVT U128 ( .A1(buf0_orig[27]), .A2(\sub_449/carry[8] ), .Y(
        \sub_449/carry[9] ) );
  XNOR2X1_RVT U129 ( .A1(\sub_449/carry[8] ), .A2(buf0_orig[27]), .Y(N343) );
  OR2X1_RVT U130 ( .A1(buf0_orig[26]), .A2(\sub_449/carry[7] ), .Y(
        \sub_449/carry[8] ) );
  XNOR2X1_RVT U131 ( .A1(\sub_449/carry[7] ), .A2(buf0_orig[26]), .Y(N342) );
  OR2X1_RVT U132 ( .A1(buf0_orig[25]), .A2(\sub_449/carry[6] ), .Y(
        \sub_449/carry[7] ) );
  XNOR2X1_RVT U133 ( .A1(\sub_449/carry[6] ), .A2(buf0_orig[25]), .Y(N341) );
  OR2X1_RVT U134 ( .A1(buf0_orig[24]), .A2(\sub_449/carry[5] ), .Y(
        \sub_449/carry[6] ) );
  XNOR2X1_RVT U135 ( .A1(\sub_449/carry[5] ), .A2(buf0_orig[24]), .Y(N340) );
  OR2X1_RVT U136 ( .A1(buf0_orig[23]), .A2(\sub_449/carry[4] ), .Y(
        \sub_449/carry[5] ) );
  XNOR2X1_RVT U137 ( .A1(\sub_449/carry[4] ), .A2(buf0_orig[23]), .Y(N339) );
  OR2X1_RVT U138 ( .A1(buf0_orig[22]), .A2(\sub_449/carry[3] ), .Y(
        \sub_449/carry[4] ) );
  XNOR2X1_RVT U139 ( .A1(\sub_449/carry[3] ), .A2(buf0_orig[22]), .Y(N338) );
  OR2X1_RVT U140 ( .A1(buf0_orig[21]), .A2(\sub_449/carry[2] ), .Y(
        \sub_449/carry[3] ) );
  XNOR2X1_RVT U141 ( .A1(\sub_449/carry[2] ), .A2(buf0_orig[21]), .Y(N337) );
  AND2X1_RVT U142 ( .A1(buf0_orig[20]), .A2(buf0_orig[19]), .Y(
        \sub_449/carry[2] ) );
  XOR2X1_RVT U143 ( .A1(buf0_orig[20]), .A2(buf0_orig[19]), .Y(N336) );
  OR2X1_RVT U144 ( .A1(n23), .A2(csr_10), .Y(n174) );
  OA21X1_RVT U145 ( .A1(n24), .A2(csr_3), .A3(n82), .Y(n165) );
  AO222X1_RVT U146 ( .A1(csr_3), .A2(n24), .A3(n165), .A4(csr_2), .A5(csr_4), 
        .A6(n11), .Y(n166) );
  OA221X1_RVT U147 ( .A1(csr_5), .A2(n79), .A3(csr_4), .A4(n11), .A5(n166), 
        .Y(n167) );
  AO221X1_RVT U148 ( .A1(csr_5), .A2(n79), .A3(csr_6), .A4(n27), .A5(n167), 
        .Y(n168) );
  OA221X1_RVT U149 ( .A1(csr_7), .A2(n80), .A3(csr_6), .A4(n27), .A5(n168), 
        .Y(n169) );
  AO221X1_RVT U150 ( .A1(csr_7), .A2(n80), .A3(csr_8), .A4(n30), .A5(n169), 
        .Y(n170) );
  OA221X1_RVT U151 ( .A1(csr_9), .A2(n81), .A3(csr_8), .A4(n30), .A5(n170), 
        .Y(n171) );
  AO221X1_RVT U152 ( .A1(csr_9), .A2(n81), .A3(csr_10), .A4(n23), .A5(n171), 
        .Y(n173) );
  NOR3X0_RVT U153 ( .A1(dma_out_left[10]), .A2(dma_out_left[9]), .A3(
        dma_out_left[11]), .Y(n172) );
  NAND3X0_RVT U154 ( .A1(n174), .A2(n173), .A3(n172), .Y(N333) );
  AND3X1_RVT U155 ( .A1(n562), .A2(n563), .A3(n177), .Y(n622) );
  AND3X1_RVT U156 ( .A1(n598), .A2(n599), .A3(n597), .Y(n177) );
  INVX0_RVT U157 ( .A(re), .Y(n624) );
  AND2X1_RVT U158 ( .A1(dma_ack_wr1), .A2(n802), .Y(n800) );
  AND2X1_RVT U159 ( .A1(r2), .A2(n76), .Y(n801) );
  AO22X1_RVT U160 ( .A1(din[13]), .A2(n106), .A3(n108), .A4(csr_13), .Y(n627)
         );
  AO22X1_RVT U161 ( .A1(din[27]), .A2(n107), .A3(n109), .A4(csr[27]), .Y(n628)
         );
  AO22X1_RVT U162 ( .A1(din[26]), .A2(n107), .A3(n109), .A4(csr[26]), .Y(n629)
         );
  AO22X1_RVT U163 ( .A1(din[25]), .A2(n107), .A3(n109), .A4(csr[25]), .Y(n630)
         );
  AO22X1_RVT U164 ( .A1(din[24]), .A2(n107), .A3(n109), .A4(csr[24]), .Y(n631)
         );
  AO22X1_RVT U165 ( .A1(din[21]), .A2(n107), .A3(n109), .A4(csr[21]), .Y(n632)
         );
  AO22X1_RVT U166 ( .A1(din[20]), .A2(n107), .A3(n109), .A4(csr[20]), .Y(n633)
         );
  AO22X1_RVT U167 ( .A1(din[19]), .A2(n107), .A3(n109), .A4(csr[19]), .Y(n634)
         );
  AO22X1_RVT U168 ( .A1(din[18]), .A2(n107), .A3(n109), .A4(csr[18]), .Y(n635)
         );
  AO22X1_RVT U169 ( .A1(din[17]), .A2(n107), .A3(n109), .A4(csr[17]), .Y(n636)
         );
  AO22X1_RVT U170 ( .A1(din[16]), .A2(n107), .A3(n109), .A4(csr[16]), .Y(n637)
         );
  AO22X1_RVT U171 ( .A1(din[15]), .A2(n107), .A3(n109), .A4(csr[15]), .Y(n638)
         );
  AO221X1_RVT U172 ( .A1(n109), .A2(csr[22]), .A3(din[22]), .A4(n106), .A5(
        n178), .Y(n639) );
  INVX0_RVT U173 ( .A(n179), .Y(n178) );
  AO22X1_RVT U174 ( .A1(din[23]), .A2(n107), .A3(n180), .A4(n108), .Y(n640) );
  AND2X1_RVT U175 ( .A1(n179), .A2(csr[23]), .Y(n180) );
  NAND4X0_RVT U176 ( .A1(out_to_small), .A2(n141), .A3(n181), .A4(csr_13), .Y(
        n179) );
  NAND2X0_RVT U177 ( .A1(we), .A2(n110), .Y(n181) );
  AO22X1_RVT U178 ( .A1(din[12]), .A2(n107), .A3(n108), .A4(csr_12), .Y(n641)
         );
  AO22X1_RVT U179 ( .A1(din[11]), .A2(n106), .A3(n108), .A4(csr_11), .Y(n642)
         );
  AO22X1_RVT U180 ( .A1(din[10]), .A2(n106), .A3(n108), .A4(csr_10), .Y(n643)
         );
  AO22X1_RVT U181 ( .A1(din[9]), .A2(n106), .A3(n108), .A4(csr_9), .Y(n644) );
  AO22X1_RVT U182 ( .A1(din[8]), .A2(n106), .A3(n109), .A4(csr_8), .Y(n645) );
  AO22X1_RVT U183 ( .A1(din[7]), .A2(n106), .A3(n108), .A4(csr_7), .Y(n646) );
  AO22X1_RVT U184 ( .A1(din[6]), .A2(n106), .A3(n108), .A4(csr_6), .Y(n647) );
  AO22X1_RVT U185 ( .A1(din[5]), .A2(n106), .A3(n108), .A4(csr_5), .Y(n648) );
  AO22X1_RVT U186 ( .A1(din[4]), .A2(n106), .A3(n108), .A4(csr_4), .Y(n649) );
  AO22X1_RVT U187 ( .A1(din[3]), .A2(n106), .A3(n108), .A4(csr_3), .Y(n650) );
  AO22X1_RVT U188 ( .A1(din[2]), .A2(n106), .A3(n108), .A4(csr_2), .Y(n651) );
  AO22X1_RVT U189 ( .A1(din[1]), .A2(n106), .A3(n108), .A4(csr_1), .Y(n652) );
  AO22X1_RVT U190 ( .A1(din[0]), .A2(n107), .A3(n109), .A4(csr_0), .Y(n653) );
  NAND3X0_RVT U191 ( .A1(n141), .A2(n98), .A3(we), .Y(n182) );
  AO22X1_RVT U192 ( .A1(n183), .A2(din[21]), .A3(n1), .A4(n50), .Y(n654) );
  AO22X1_RVT U193 ( .A1(n183), .A2(din[20]), .A3(n1), .A4(n18), .Y(n655) );
  AO22X1_RVT U194 ( .A1(n183), .A2(din[19]), .A3(n1), .A4(n48), .Y(n656) );
  AO22X1_RVT U195 ( .A1(n183), .A2(din[18]), .A3(n1), .A4(n19), .Y(n657) );
  AO22X1_RVT U196 ( .A1(n183), .A2(din[17]), .A3(n1), .A4(n17), .Y(n658) );
  AO22X1_RVT U197 ( .A1(n183), .A2(din[16]), .A3(n1), .A4(n20), .Y(n659) );
  AO22X1_RVT U198 ( .A1(din[29]), .A2(n183), .A3(n1), .A4(n5), .Y(n660) );
  AO22X1_RVT U199 ( .A1(din[28]), .A2(n183), .A3(n1), .A4(n7), .Y(n661) );
  AO22X1_RVT U200 ( .A1(n183), .A2(din[27]), .A3(n1), .A4(n51), .Y(n662) );
  AO22X1_RVT U201 ( .A1(n183), .A2(din[26]), .A3(n1), .A4(n21), .Y(n663) );
  AO22X1_RVT U202 ( .A1(n183), .A2(din[25]), .A3(n1), .A4(n4), .Y(n664) );
  AO22X1_RVT U203 ( .A1(n183), .A2(din[24]), .A3(n1), .A4(n8), .Y(n665) );
  INVX0_RVT U204 ( .A(n184), .Y(n183) );
  NAND3X0_RVT U205 ( .A1(we), .A2(n141), .A3(n87), .Y(n184) );
  AO21X1_RVT U206 ( .A1(n112), .A2(n75), .A3(n187), .Y(n666) );
  AO21X1_RVT U207 ( .A1(n111), .A2(buf0_orig[30]), .A3(n188), .Y(n667) );
  AO21X1_RVT U208 ( .A1(n111), .A2(buf0_orig[29]), .A3(n189), .Y(n668) );
  AO21X1_RVT U209 ( .A1(n111), .A2(buf0_orig[28]), .A3(n190), .Y(n669) );
  AO21X1_RVT U210 ( .A1(n111), .A2(buf0_orig[27]), .A3(n191), .Y(n670) );
  AO21X1_RVT U211 ( .A1(n111), .A2(buf0_orig[26]), .A3(n192), .Y(n671) );
  AO21X1_RVT U212 ( .A1(n111), .A2(buf0_orig[25]), .A3(n193), .Y(n672) );
  AO21X1_RVT U213 ( .A1(n111), .A2(buf0_orig[24]), .A3(n194), .Y(n673) );
  AO21X1_RVT U214 ( .A1(n111), .A2(buf0_orig[23]), .A3(n195), .Y(n674) );
  AO21X1_RVT U215 ( .A1(n111), .A2(buf0_orig[22]), .A3(n196), .Y(n675) );
  AO21X1_RVT U216 ( .A1(n111), .A2(buf0_orig[21]), .A3(n197), .Y(n676) );
  AO21X1_RVT U217 ( .A1(n111), .A2(buf0_orig[20]), .A3(n198), .Y(n677) );
  AO21X1_RVT U218 ( .A1(n112), .A2(buf0_orig[19]), .A3(n199), .Y(n678) );
  AO21X1_RVT U219 ( .A1(n112), .A2(n74), .A3(n200), .Y(n679) );
  AO21X1_RVT U220 ( .A1(n112), .A2(n73), .A3(n201), .Y(n680) );
  AO21X1_RVT U221 ( .A1(n112), .A2(n72), .A3(n202), .Y(n681) );
  AO21X1_RVT U222 ( .A1(n112), .A2(n70), .A3(n203), .Y(n682) );
  AO21X1_RVT U223 ( .A1(n112), .A2(n69), .A3(n204), .Y(n683) );
  AO21X1_RVT U224 ( .A1(n112), .A2(n68), .A3(n205), .Y(n684) );
  AO21X1_RVT U225 ( .A1(n112), .A2(n67), .A3(n206), .Y(n685) );
  AO21X1_RVT U226 ( .A1(n112), .A2(n66), .A3(n207), .Y(n686) );
  AO21X1_RVT U227 ( .A1(n112), .A2(n65), .A3(n208), .Y(n687) );
  AO21X1_RVT U228 ( .A1(n112), .A2(n64), .A3(n209), .Y(n688) );
  AO21X1_RVT U229 ( .A1(n112), .A2(n63), .A3(n210), .Y(n689) );
  AO21X1_RVT U230 ( .A1(n186), .A2(n62), .A3(n211), .Y(n690) );
  AO21X1_RVT U231 ( .A1(n186), .A2(n61), .A3(n212), .Y(n691) );
  AO21X1_RVT U232 ( .A1(n186), .A2(n60), .A3(n213), .Y(n692) );
  AO21X1_RVT U233 ( .A1(n186), .A2(n59), .A3(n214), .Y(n693) );
  AO21X1_RVT U234 ( .A1(n186), .A2(n58), .A3(n215), .Y(n694) );
  AO21X1_RVT U235 ( .A1(n186), .A2(n57), .A3(n216), .Y(n695) );
  AO21X1_RVT U236 ( .A1(n186), .A2(n56), .A3(n217), .Y(n696) );
  AO21X1_RVT U237 ( .A1(n186), .A2(n54), .A3(n218), .Y(n697) );
  AO221X1_RVT U238 ( .A1(n116), .A2(buf0[0]), .A3(idin[0]), .A4(n119), .A5(
        n219), .Y(n698) );
  AO21X1_RVT U239 ( .A1(n122), .A2(n54), .A3(n218), .Y(n219) );
  AO21X1_RVT U240 ( .A1(n114), .A2(din[0]), .A3(n147), .Y(n218) );
  AO221X1_RVT U241 ( .A1(n116), .A2(buf0[1]), .A3(idin[1]), .A4(n119), .A5(
        n220), .Y(n699) );
  AO21X1_RVT U242 ( .A1(n122), .A2(n56), .A3(n217), .Y(n220) );
  AO21X1_RVT U243 ( .A1(n113), .A2(din[1]), .A3(n147), .Y(n217) );
  AO221X1_RVT U244 ( .A1(n116), .A2(buf0[2]), .A3(idin[2]), .A4(n119), .A5(
        n221), .Y(n700) );
  AO21X1_RVT U245 ( .A1(n122), .A2(n57), .A3(n216), .Y(n221) );
  AO21X1_RVT U246 ( .A1(n113), .A2(din[2]), .A3(n147), .Y(n216) );
  AO221X1_RVT U247 ( .A1(n116), .A2(buf0[3]), .A3(idin[3]), .A4(n119), .A5(
        n222), .Y(n701) );
  AO21X1_RVT U248 ( .A1(n122), .A2(n58), .A3(n215), .Y(n222) );
  AO21X1_RVT U249 ( .A1(n114), .A2(din[3]), .A3(n147), .Y(n215) );
  AO221X1_RVT U250 ( .A1(n116), .A2(buf0[4]), .A3(idin[4]), .A4(n119), .A5(
        n223), .Y(n702) );
  AO21X1_RVT U251 ( .A1(n122), .A2(n59), .A3(n214), .Y(n223) );
  AO21X1_RVT U252 ( .A1(n113), .A2(din[4]), .A3(n147), .Y(n214) );
  AO221X1_RVT U253 ( .A1(n116), .A2(buf0[5]), .A3(idin[5]), .A4(n119), .A5(
        n224), .Y(n703) );
  AO21X1_RVT U254 ( .A1(n122), .A2(n60), .A3(n213), .Y(n224) );
  AO21X1_RVT U255 ( .A1(n113), .A2(din[5]), .A3(n147), .Y(n213) );
  AO221X1_RVT U256 ( .A1(n116), .A2(buf0[6]), .A3(idin[6]), .A4(n119), .A5(
        n225), .Y(n704) );
  AO21X1_RVT U257 ( .A1(n122), .A2(n61), .A3(n212), .Y(n225) );
  AO21X1_RVT U258 ( .A1(n114), .A2(din[6]), .A3(n146), .Y(n212) );
  AO221X1_RVT U259 ( .A1(n116), .A2(buf0[7]), .A3(idin[7]), .A4(n119), .A5(
        n226), .Y(n705) );
  AO21X1_RVT U260 ( .A1(n122), .A2(n62), .A3(n211), .Y(n226) );
  AO21X1_RVT U261 ( .A1(n114), .A2(din[7]), .A3(n146), .Y(n211) );
  AO221X1_RVT U262 ( .A1(n116), .A2(buf0[8]), .A3(idin[8]), .A4(n119), .A5(
        n227), .Y(n706) );
  AO21X1_RVT U263 ( .A1(n122), .A2(n63), .A3(n210), .Y(n227) );
  AO21X1_RVT U264 ( .A1(n114), .A2(din[8]), .A3(n146), .Y(n210) );
  AO221X1_RVT U265 ( .A1(n116), .A2(buf0[9]), .A3(idin[9]), .A4(n119), .A5(
        n228), .Y(n707) );
  AO21X1_RVT U266 ( .A1(n122), .A2(n64), .A3(n209), .Y(n228) );
  AO21X1_RVT U267 ( .A1(n114), .A2(din[9]), .A3(n146), .Y(n209) );
  AO221X1_RVT U268 ( .A1(n116), .A2(buf0[10]), .A3(idin[10]), .A4(n119), .A5(
        n229), .Y(n708) );
  AO21X1_RVT U269 ( .A1(n122), .A2(n65), .A3(n208), .Y(n229) );
  AO21X1_RVT U270 ( .A1(n114), .A2(din[10]), .A3(n146), .Y(n208) );
  AO221X1_RVT U271 ( .A1(n116), .A2(buf0[11]), .A3(idin[11]), .A4(n119), .A5(
        n230), .Y(n709) );
  AO21X1_RVT U272 ( .A1(n122), .A2(n66), .A3(n207), .Y(n230) );
  AO21X1_RVT U273 ( .A1(n113), .A2(din[11]), .A3(n146), .Y(n207) );
  AO221X1_RVT U274 ( .A1(n117), .A2(buf0[12]), .A3(idin[12]), .A4(n120), .A5(
        n231), .Y(n710) );
  AO21X1_RVT U275 ( .A1(n123), .A2(n67), .A3(n206), .Y(n231) );
  AO21X1_RVT U276 ( .A1(n114), .A2(din[12]), .A3(n146), .Y(n206) );
  AO221X1_RVT U277 ( .A1(n117), .A2(buf0[13]), .A3(idin[13]), .A4(n120), .A5(
        n232), .Y(n711) );
  AO21X1_RVT U278 ( .A1(n123), .A2(n68), .A3(n205), .Y(n232) );
  AO21X1_RVT U279 ( .A1(n113), .A2(din[13]), .A3(n146), .Y(n205) );
  AO221X1_RVT U280 ( .A1(n117), .A2(buf0[14]), .A3(idin[14]), .A4(n120), .A5(
        n233), .Y(n712) );
  AO21X1_RVT U281 ( .A1(n123), .A2(n69), .A3(n204), .Y(n233) );
  AO21X1_RVT U282 ( .A1(din[14]), .A2(n115), .A3(n146), .Y(n204) );
  AO221X1_RVT U283 ( .A1(n117), .A2(buf0[15]), .A3(idin[15]), .A4(n120), .A5(
        n235), .Y(n713) );
  AO21X1_RVT U284 ( .A1(n123), .A2(n70), .A3(n203), .Y(n235) );
  AO21X1_RVT U285 ( .A1(n113), .A2(din[15]), .A3(n146), .Y(n203) );
  AO221X1_RVT U286 ( .A1(n117), .A2(buf0[16]), .A3(idin[16]), .A4(n120), .A5(
        n236), .Y(n714) );
  AO21X1_RVT U287 ( .A1(n123), .A2(n72), .A3(n202), .Y(n236) );
  AO221X1_RVT U288 ( .A1(n117), .A2(buf0[17]), .A3(idin[17]), .A4(n120), .A5(
        n237), .Y(n715) );
  AO21X1_RVT U289 ( .A1(n123), .A2(n73), .A3(n201), .Y(n237) );
  AO221X1_RVT U290 ( .A1(n117), .A2(buf0[18]), .A3(idin[18]), .A4(n120), .A5(
        n238), .Y(n716) );
  AO21X1_RVT U291 ( .A1(n123), .A2(n74), .A3(n200), .Y(n238) );
  AO221X1_RVT U292 ( .A1(n117), .A2(buf0[19]), .A3(idin[19]), .A4(n120), .A5(
        n240), .Y(n717) );
  AO21X1_RVT U293 ( .A1(n123), .A2(buf0_orig[19]), .A3(n199), .Y(n240) );
  AO221X1_RVT U294 ( .A1(n117), .A2(buf0[20]), .A3(idin[20]), .A4(n120), .A5(
        n241), .Y(n718) );
  AO21X1_RVT U295 ( .A1(n123), .A2(buf0_orig[20]), .A3(n198), .Y(n241) );
  AO221X1_RVT U296 ( .A1(n117), .A2(buf0[21]), .A3(idin[21]), .A4(n120), .A5(
        n242), .Y(n719) );
  AO21X1_RVT U297 ( .A1(n123), .A2(buf0_orig[21]), .A3(n197), .Y(n242) );
  AO221X1_RVT U298 ( .A1(n117), .A2(buf0[22]), .A3(idin[22]), .A4(n120), .A5(
        n243), .Y(n720) );
  AO21X1_RVT U299 ( .A1(n123), .A2(buf0_orig[22]), .A3(n196), .Y(n243) );
  AO21X1_RVT U300 ( .A1(n115), .A2(din[22]), .A3(n145), .Y(n196) );
  AO221X1_RVT U301 ( .A1(n117), .A2(buf0[23]), .A3(idin[23]), .A4(n120), .A5(
        n244), .Y(n721) );
  AO21X1_RVT U302 ( .A1(n123), .A2(buf0_orig[23]), .A3(n195), .Y(n244) );
  AO21X1_RVT U303 ( .A1(n113), .A2(din[23]), .A3(n145), .Y(n195) );
  AO221X1_RVT U304 ( .A1(n118), .A2(buf0[24]), .A3(idin[24]), .A4(n121), .A5(
        n245), .Y(n722) );
  AO21X1_RVT U305 ( .A1(n124), .A2(buf0_orig[24]), .A3(n194), .Y(n245) );
  AO221X1_RVT U306 ( .A1(n118), .A2(buf0[25]), .A3(idin[25]), .A4(n121), .A5(
        n246), .Y(n723) );
  AO21X1_RVT U307 ( .A1(n124), .A2(buf0_orig[25]), .A3(n193), .Y(n246) );
  AO21X1_RVT U308 ( .A1(n114), .A2(din[25]), .A3(n145), .Y(n193) );
  AO221X1_RVT U309 ( .A1(n118), .A2(buf0[26]), .A3(idin[26]), .A4(n121), .A5(
        n247), .Y(n724) );
  AO21X1_RVT U310 ( .A1(n124), .A2(buf0_orig[26]), .A3(n192), .Y(n247) );
  AO21X1_RVT U311 ( .A1(n114), .A2(din[26]), .A3(n145), .Y(n192) );
  AO221X1_RVT U312 ( .A1(n118), .A2(buf0[27]), .A3(idin[27]), .A4(n121), .A5(
        n248), .Y(n725) );
  AO21X1_RVT U313 ( .A1(n124), .A2(buf0_orig[27]), .A3(n191), .Y(n248) );
  AO21X1_RVT U314 ( .A1(n114), .A2(din[27]), .A3(n145), .Y(n191) );
  AO221X1_RVT U315 ( .A1(n118), .A2(buf0[28]), .A3(idin[28]), .A4(n121), .A5(
        n249), .Y(n726) );
  AO21X1_RVT U316 ( .A1(n124), .A2(buf0_orig[28]), .A3(n190), .Y(n249) );
  AO21X1_RVT U317 ( .A1(n114), .A2(din[28]), .A3(n145), .Y(n190) );
  AO221X1_RVT U318 ( .A1(n118), .A2(buf0[29]), .A3(idin[29]), .A4(n121), .A5(
        n250), .Y(n727) );
  AO21X1_RVT U319 ( .A1(n124), .A2(buf0_orig[29]), .A3(n189), .Y(n250) );
  AO21X1_RVT U320 ( .A1(n114), .A2(din[29]), .A3(n145), .Y(n189) );
  AO221X1_RVT U321 ( .A1(n118), .A2(buf0[30]), .A3(idin[30]), .A4(n121), .A5(
        n422), .Y(n728) );
  AO21X1_RVT U322 ( .A1(n124), .A2(buf0_orig[30]), .A3(n188), .Y(n422) );
  AO21X1_RVT U323 ( .A1(din[30]), .A2(n115), .A3(n144), .Y(n188) );
  AO221X1_RVT U324 ( .A1(n118), .A2(buf0[31]), .A3(idin[31]), .A4(n121), .A5(
        n423), .Y(n729) );
  AO21X1_RVT U325 ( .A1(n124), .A2(n75), .A3(n187), .Y(n423) );
  AO21X1_RVT U326 ( .A1(din[31]), .A2(n115), .A3(n144), .Y(n187) );
  NAND4X0_RVT U327 ( .A1(buf0_set), .A2(n426), .A3(n111), .A4(n623), .Y(n425)
         );
  NAND3X0_RVT U328 ( .A1(n111), .A2(buf0_rl), .A3(n426), .Y(n424) );
  NAND2X0_RVT U329 ( .A1(n125), .A2(we), .Y(n186) );
  AO221X1_RVT U330 ( .A1(n126), .A2(buf1[0]), .A3(n129), .A4(idin[0]), .A5(
        n427), .Y(n730) );
  AO21X1_RVT U331 ( .A1(n132), .A2(din[0]), .A3(n144), .Y(n427) );
  AO221X1_RVT U332 ( .A1(n126), .A2(buf1[31]), .A3(n129), .A4(idin[31]), .A5(
        n428), .Y(n731) );
  AO21X1_RVT U333 ( .A1(n132), .A2(din[31]), .A3(n144), .Y(n428) );
  AO221X1_RVT U334 ( .A1(n126), .A2(buf1[30]), .A3(n129), .A4(idin[30]), .A5(
        n429), .Y(n732) );
  AO21X1_RVT U335 ( .A1(n132), .A2(din[30]), .A3(n144), .Y(n429) );
  AO221X1_RVT U336 ( .A1(n126), .A2(buf1[29]), .A3(n129), .A4(idin[29]), .A5(
        n430), .Y(n733) );
  AO21X1_RVT U337 ( .A1(n132), .A2(din[29]), .A3(n144), .Y(n430) );
  AO221X1_RVT U338 ( .A1(n126), .A2(buf1[28]), .A3(n129), .A4(idin[28]), .A5(
        n431), .Y(n734) );
  AO21X1_RVT U339 ( .A1(n132), .A2(din[28]), .A3(n144), .Y(n431) );
  AO221X1_RVT U340 ( .A1(n126), .A2(buf1[27]), .A3(n129), .A4(idin[27]), .A5(
        n432), .Y(n735) );
  AO21X1_RVT U341 ( .A1(n132), .A2(din[27]), .A3(n144), .Y(n432) );
  AO221X1_RVT U342 ( .A1(n126), .A2(buf1[26]), .A3(n129), .A4(idin[26]), .A5(
        n433), .Y(n736) );
  AO21X1_RVT U343 ( .A1(n132), .A2(din[26]), .A3(n144), .Y(n433) );
  AO221X1_RVT U344 ( .A1(n126), .A2(buf1[25]), .A3(n129), .A4(idin[25]), .A5(
        n434), .Y(n737) );
  AO21X1_RVT U345 ( .A1(n132), .A2(din[25]), .A3(n144), .Y(n434) );
  AO221X1_RVT U346 ( .A1(n126), .A2(buf1[24]), .A3(n129), .A4(idin[24]), .A5(
        n435), .Y(n738) );
  AO221X1_RVT U347 ( .A1(n126), .A2(buf1[23]), .A3(n129), .A4(idin[23]), .A5(
        n436), .Y(n739) );
  AO21X1_RVT U348 ( .A1(n132), .A2(din[23]), .A3(n144), .Y(n436) );
  AO221X1_RVT U349 ( .A1(n126), .A2(buf1[22]), .A3(n129), .A4(idin[22]), .A5(
        n437), .Y(n740) );
  AO21X1_RVT U350 ( .A1(n132), .A2(din[22]), .A3(n143), .Y(n437) );
  AO221X1_RVT U351 ( .A1(n126), .A2(buf1[21]), .A3(n129), .A4(idin[21]), .A5(
        n438), .Y(n741) );
  AO221X1_RVT U352 ( .A1(n127), .A2(buf1[20]), .A3(n130), .A4(idin[20]), .A5(
        n439), .Y(n742) );
  AO221X1_RVT U353 ( .A1(n127), .A2(buf1[19]), .A3(n130), .A4(idin[19]), .A5(
        n440), .Y(n743) );
  AO221X1_RVT U354 ( .A1(n127), .A2(buf1[18]), .A3(n130), .A4(idin[18]), .A5(
        n441), .Y(n744) );
  AO221X1_RVT U355 ( .A1(n127), .A2(buf1[17]), .A3(n130), .A4(idin[17]), .A5(
        n442), .Y(n745) );
  AO221X1_RVT U356 ( .A1(n127), .A2(buf1[16]), .A3(n130), .A4(idin[16]), .A5(
        n443), .Y(n746) );
  AO221X1_RVT U357 ( .A1(n127), .A2(buf1[15]), .A3(n130), .A4(idin[15]), .A5(
        n444), .Y(n747) );
  AO21X1_RVT U358 ( .A1(n133), .A2(din[15]), .A3(n143), .Y(n444) );
  AO221X1_RVT U359 ( .A1(n127), .A2(buf1[14]), .A3(n130), .A4(idin[14]), .A5(
        n445), .Y(n748) );
  AO21X1_RVT U360 ( .A1(n133), .A2(din[14]), .A3(n143), .Y(n445) );
  AO221X1_RVT U361 ( .A1(n127), .A2(buf1[13]), .A3(n130), .A4(idin[13]), .A5(
        n446), .Y(n749) );
  AO21X1_RVT U362 ( .A1(n133), .A2(din[13]), .A3(n143), .Y(n446) );
  AO221X1_RVT U363 ( .A1(n127), .A2(buf1[12]), .A3(n130), .A4(idin[12]), .A5(
        n447), .Y(n750) );
  AO21X1_RVT U364 ( .A1(n133), .A2(din[12]), .A3(n143), .Y(n447) );
  AO221X1_RVT U365 ( .A1(n127), .A2(buf1[11]), .A3(n130), .A4(idin[11]), .A5(
        n448), .Y(n751) );
  AO21X1_RVT U366 ( .A1(n133), .A2(din[11]), .A3(n143), .Y(n448) );
  AO221X1_RVT U367 ( .A1(n127), .A2(buf1[10]), .A3(n130), .A4(idin[10]), .A5(
        n449), .Y(n752) );
  AO21X1_RVT U368 ( .A1(n133), .A2(din[10]), .A3(n142), .Y(n449) );
  AO221X1_RVT U369 ( .A1(n127), .A2(buf1[9]), .A3(n130), .A4(idin[9]), .A5(
        n450), .Y(n753) );
  AO21X1_RVT U370 ( .A1(n133), .A2(din[9]), .A3(n142), .Y(n450) );
  AO221X1_RVT U371 ( .A1(n128), .A2(buf1[8]), .A3(n131), .A4(idin[8]), .A5(
        n451), .Y(n754) );
  AO21X1_RVT U372 ( .A1(n134), .A2(din[8]), .A3(n142), .Y(n451) );
  AO221X1_RVT U373 ( .A1(n128), .A2(buf1[7]), .A3(n131), .A4(idin[7]), .A5(
        n452), .Y(n755) );
  AO21X1_RVT U374 ( .A1(n134), .A2(din[7]), .A3(n147), .Y(n452) );
  AO221X1_RVT U375 ( .A1(n128), .A2(buf1[6]), .A3(n131), .A4(idin[6]), .A5(
        n453), .Y(n756) );
  AO21X1_RVT U376 ( .A1(n134), .A2(din[6]), .A3(n142), .Y(n453) );
  AO221X1_RVT U377 ( .A1(n128), .A2(buf1[5]), .A3(n131), .A4(idin[5]), .A5(
        n454), .Y(n757) );
  AO21X1_RVT U378 ( .A1(n134), .A2(din[5]), .A3(n147), .Y(n454) );
  AO221X1_RVT U379 ( .A1(n128), .A2(buf1[4]), .A3(n131), .A4(idin[4]), .A5(
        n455), .Y(n758) );
  AO21X1_RVT U380 ( .A1(n134), .A2(din[4]), .A3(n142), .Y(n455) );
  AO221X1_RVT U381 ( .A1(n128), .A2(buf1[3]), .A3(n131), .A4(idin[3]), .A5(
        n456), .Y(n759) );
  AO21X1_RVT U382 ( .A1(n134), .A2(din[3]), .A3(n147), .Y(n456) );
  AO221X1_RVT U383 ( .A1(n128), .A2(buf1[2]), .A3(n131), .A4(idin[2]), .A5(
        n457), .Y(n760) );
  AO21X1_RVT U384 ( .A1(n134), .A2(din[2]), .A3(n142), .Y(n457) );
  AO221X1_RVT U385 ( .A1(n128), .A2(buf1[1]), .A3(n131), .A4(idin[1]), .A5(
        n458), .Y(n761) );
  AO21X1_RVT U386 ( .A1(n134), .A2(din[1]), .A3(n147), .Y(n458) );
  NAND3X0_RVT U387 ( .A1(n459), .A2(n3), .A3(n461), .Y(n460) );
  OR2X1_RVT U388 ( .A1(out_to_small), .A2(buf1_set), .Y(n461) );
  NAND2X0_RVT U389 ( .A1(n85), .A2(we), .Y(n459) );
  AO22X1_RVT U390 ( .A1(n462), .A2(out_to_small), .A3(n463), .A4(n43), .Y(n762) );
  AO22X1_RVT U391 ( .A1(int_seqerr_set), .A2(n462), .A3(n463), .A4(n44), .Y(
        n763) );
  AO22X1_RVT U392 ( .A1(int_buf1_set), .A2(n462), .A3(n463), .A4(n49), .Y(n764) );
  AO22X1_RVT U393 ( .A1(int_buf0_set), .A2(n462), .A3(n463), .A4(n47), .Y(n765) );
  AO22X1_RVT U394 ( .A1(int_upid_set), .A2(n462), .A3(n463), .A4(n45), .Y(n766) );
  AO22X1_RVT U395 ( .A1(int_crc16_set), .A2(n462), .A3(n463), .A4(n16), .Y(
        n767) );
  AO22X1_RVT U396 ( .A1(int_to_set), .A2(n462), .A3(n463), .A4(n46), .Y(n768)
         );
  AND2X1_RVT U397 ( .A1(n141), .A2(n78), .Y(n463) );
  AND2X1_RVT U398 ( .A1(n426), .A2(n78), .Y(n462) );
  MUX21X1_RVT U399 ( .A1(n464), .A2(csr[29]), .S0(n465), .Y(n769) );
  AND2X1_RVT U400 ( .A1(idin[3]), .A2(n426), .Y(n464) );
  MUX21X1_RVT U401 ( .A1(n466), .A2(csr[28]), .S0(n465), .Y(n770) );
  AOI21X1_RVT U402 ( .A1(uc_dpd_set), .A2(n3), .A3(n142), .Y(n465) );
  AND2X1_RVT U403 ( .A1(idin[2]), .A2(n426), .Y(n466) );
  MUX21X1_RVT U404 ( .A1(n467), .A2(csr[31]), .S0(n468), .Y(n771) );
  AND2X1_RVT U405 ( .A1(idin[1]), .A2(n426), .Y(n467) );
  MUX21X1_RVT U406 ( .A1(n469), .A2(csr[30]), .S0(n468), .Y(n772) );
  AOI21X1_RVT U407 ( .A1(uc_bsel_set), .A2(n3), .A3(n142), .Y(n468) );
  AND2X1_RVT U408 ( .A1(idin[0]), .A2(n426), .Y(n469) );
  AND2X1_RVT U409 ( .A1(n141), .A2(n3), .Y(n426) );
  AO222X1_RVT U410 ( .A1(N292), .A2(n135), .A3(n137), .A4(dma_in_cnt[1]), .A5(
        N279), .A6(n139), .Y(n773) );
  AO222X1_RVT U411 ( .A1(N291), .A2(n135), .A3(n137), .A4(dma_in_cnt[0]), .A5(
        N278), .A6(n139), .Y(n774) );
  AO222X1_RVT U412 ( .A1(N293), .A2(n135), .A3(n137), .A4(dma_in_cnt[2]), .A5(
        N280), .A6(n139), .Y(n775) );
  AO222X1_RVT U413 ( .A1(N294), .A2(n135), .A3(n137), .A4(dma_in_cnt[3]), .A5(
        N281), .A6(n139), .Y(n776) );
  AO222X1_RVT U414 ( .A1(N295), .A2(n135), .A3(n137), .A4(dma_in_cnt[4]), .A5(
        N282), .A6(n139), .Y(n777) );
  AO222X1_RVT U415 ( .A1(N296), .A2(n135), .A3(n137), .A4(dma_in_cnt[5]), .A5(
        N283), .A6(n139), .Y(n778) );
  AO222X1_RVT U416 ( .A1(N297), .A2(n135), .A3(n137), .A4(dma_in_cnt[6]), .A5(
        N284), .A6(n139), .Y(n779) );
  AO222X1_RVT U417 ( .A1(N298), .A2(n135), .A3(n137), .A4(dma_in_cnt[7]), .A5(
        N285), .A6(n139), .Y(n780) );
  AO222X1_RVT U418 ( .A1(N299), .A2(n135), .A3(n137), .A4(dma_in_cnt[8]), .A5(
        N286), .A6(n139), .Y(n781) );
  AO222X1_RVT U419 ( .A1(N300), .A2(n135), .A3(n137), .A4(dma_in_cnt[9]), .A5(
        N287), .A6(n139), .Y(n782) );
  AO222X1_RVT U420 ( .A1(N301), .A2(n135), .A3(n137), .A4(dma_in_cnt[10]), 
        .A5(N288), .A6(n139), .Y(n783) );
  AO222X1_RVT U421 ( .A1(N302), .A2(n135), .A3(n137), .A4(dma_in_cnt[11]), 
        .A5(N289), .A6(n139), .Y(n784) );
  AO222X1_RVT U422 ( .A1(N243), .A2(n136), .A3(n138), .A4(dma_out_cnt[1]), 
        .A5(N230), .A6(n140), .Y(n785) );
  AO222X1_RVT U423 ( .A1(N242), .A2(n136), .A3(n138), .A4(dma_out_cnt[0]), 
        .A5(N229), .A6(n140), .Y(n786) );
  AO222X1_RVT U424 ( .A1(N244), .A2(n136), .A3(n138), .A4(dma_out_cnt[2]), 
        .A5(N231), .A6(n140), .Y(n787) );
  AO222X1_RVT U425 ( .A1(N245), .A2(n136), .A3(n138), .A4(dma_out_cnt[3]), 
        .A5(N232), .A6(n140), .Y(n788) );
  AO222X1_RVT U426 ( .A1(N246), .A2(n136), .A3(n138), .A4(dma_out_cnt[4]), 
        .A5(N233), .A6(n140), .Y(n789) );
  AO222X1_RVT U427 ( .A1(N247), .A2(n136), .A3(n138), .A4(dma_out_cnt[5]), 
        .A5(N234), .A6(n140), .Y(n790) );
  AO222X1_RVT U428 ( .A1(N248), .A2(n136), .A3(n138), .A4(dma_out_cnt[6]), 
        .A5(N235), .A6(n140), .Y(n791) );
  AO222X1_RVT U429 ( .A1(N249), .A2(n136), .A3(n138), .A4(dma_out_cnt[7]), 
        .A5(N236), .A6(n140), .Y(n792) );
  AO222X1_RVT U430 ( .A1(N250), .A2(n136), .A3(n138), .A4(dma_out_cnt[8]), 
        .A5(N237), .A6(n140), .Y(n793) );
  AO222X1_RVT U431 ( .A1(N251), .A2(n136), .A3(n138), .A4(dma_out_cnt[9]), 
        .A5(N238), .A6(n140), .Y(n794) );
  AO222X1_RVT U432 ( .A1(N252), .A2(n136), .A3(n138), .A4(dma_out_cnt[10]), 
        .A5(N239), .A6(n140), .Y(n795) );
  AO222X1_RVT U433 ( .A1(N253), .A2(n136), .A3(n138), .A4(dma_out_cnt[11]), 
        .A5(N240), .A6(n140), .Y(n796) );
  NAND2X0_RVT U434 ( .A1(r5), .A2(csr[15]), .Y(n470) );
  NAND4X0_RVT U435 ( .A1(n472), .A2(csr[15]), .A3(n3), .A4(n22), .Y(n471) );
  NAND3X0_RVT U436 ( .A1(n473), .A2(n557), .A3(n623), .Y(n472) );
  INVX0_RVT U437 ( .A(buf0_rl), .Y(n623) );
  INVX0_RVT U438 ( .A(buf0_set), .Y(n473) );
  AND2X1_RVT U439 ( .A1(rst), .A2(n474), .Y(n797) );
  AO221X1_RVT U440 ( .A1(n475), .A2(dma_req), .A3(r1), .A4(n2), .A5(n477), .Y(
        n474) );
  AND4X1_RVT U441 ( .A1(n478), .A2(dma_req_in_hold2), .A3(dma_req_in_hold), 
        .A4(dma_req), .Y(n477) );
  AO21X1_RVT U442 ( .A1(n479), .A2(dma_req_out_hold), .A3(n626), .Y(n475) );
  INVX0_RVT U443 ( .A(dma_ack), .Y(n626) );
  NAND4X0_RVT U444 ( .A1(n592), .A2(n593), .A3(n591), .A4(n480), .Y(n798) );
  AND3X1_RVT U445 ( .A1(n595), .A2(n596), .A3(n594), .Y(n480) );
  AND4X1_RVT U446 ( .A1(n481), .A2(n482), .A3(n483), .A4(n484), .Y(ep_match)
         );
  XOR2X1_RVT U447 ( .A1(n558), .A2(ep_sel[3]), .Y(n484) );
  XOR2X1_RVT U448 ( .A1(n559), .A2(ep_sel[2]), .Y(n483) );
  XOR2X1_RVT U449 ( .A1(n560), .A2(ep_sel[1]), .Y(n482) );
  XOR2X1_RVT U450 ( .A1(n561), .A2(ep_sel[0]), .Y(n481) );
  AO222X1_RVT U451 ( .A1(n99), .A2(buf0[9]), .A3(n84), .A4(buf1[9]), .A5(n110), 
        .A6(csr_9), .Y(dout[9]) );
  AO222X1_RVT U452 ( .A1(n125), .A2(buf0[8]), .A3(n85), .A4(buf1[8]), .A5(n95), 
        .A6(csr_8), .Y(dout[8]) );
  AO222X1_RVT U453 ( .A1(n88), .A2(buf0[7]), .A3(n86), .A4(buf1[7]), .A5(n110), 
        .A6(csr_7), .Y(dout[7]) );
  AO221X1_RVT U454 ( .A1(n84), .A2(buf1[6]), .A3(n88), .A4(buf0[6]), .A5(n485), 
        .Y(dout[6]) );
  AO22X1_RVT U455 ( .A1(n104), .A2(n43), .A3(n95), .A4(csr_6), .Y(n485) );
  AO221X1_RVT U456 ( .A1(n97), .A2(buf1[5]), .A3(n125), .A4(buf0[5]), .A5(n486), .Y(dout[5]) );
  AO22X1_RVT U457 ( .A1(n104), .A2(n44), .A3(n96), .A4(csr_5), .Y(n486) );
  AO221X1_RVT U458 ( .A1(n86), .A2(buf1[4]), .A3(n88), .A4(buf0[4]), .A5(n487), 
        .Y(dout[4]) );
  AO22X1_RVT U459 ( .A1(n105), .A2(n49), .A3(n95), .A4(csr_4), .Y(n487) );
  AO221X1_RVT U460 ( .A1(n86), .A2(buf1[3]), .A3(n88), .A4(buf0[3]), .A5(n488), 
        .Y(dout[3]) );
  AO22X1_RVT U461 ( .A1(n105), .A2(n47), .A3(n96), .A4(csr_3), .Y(n488) );
  AO222X1_RVT U462 ( .A1(n100), .A2(buf0[31]), .A3(n84), .A4(buf1[31]), .A5(
        n98), .A6(csr[31]), .Y(dout[31]) );
  AO222X1_RVT U463 ( .A1(n100), .A2(buf0[30]), .A3(n83), .A4(buf1[30]), .A5(
        n96), .A6(csr[30]), .Y(dout[30]) );
  AO221X1_RVT U464 ( .A1(n97), .A2(buf1[2]), .A3(n99), .A4(buf0[2]), .A5(n489), 
        .Y(dout[2]) );
  AO22X1_RVT U465 ( .A1(n104), .A2(n45), .A3(n98), .A4(csr_2), .Y(n489) );
  AO221X1_RVT U466 ( .A1(n83), .A2(buf1[29]), .A3(n100), .A4(buf0[29]), .A5(
        n490), .Y(dout[29]) );
  AO22X1_RVT U467 ( .A1(n87), .A2(n5), .A3(n98), .A4(csr[29]), .Y(n490) );
  AO221X1_RVT U468 ( .A1(n85), .A2(buf1[28]), .A3(n99), .A4(buf0[28]), .A5(
        n491), .Y(dout[28]) );
  AO221X1_RVT U469 ( .A1(n83), .A2(buf1[27]), .A3(n88), .A4(buf0[27]), .A5(
        n492), .Y(dout[27]) );
  AO221X1_RVT U470 ( .A1(n86), .A2(buf1[26]), .A3(n88), .A4(buf0[26]), .A5(
        n493), .Y(dout[26]) );
  AO221X1_RVT U471 ( .A1(n84), .A2(buf1[25]), .A3(n99), .A4(buf0[25]), .A5(
        n494), .Y(dout[25]) );
  AO221X1_RVT U472 ( .A1(n85), .A2(buf1[24]), .A3(n99), .A4(buf0[24]), .A5(
        n495), .Y(dout[24]) );
  AO222X1_RVT U473 ( .A1(n125), .A2(buf0[23]), .A3(n83), .A4(buf1[23]), .A5(
        n98), .A6(csr[23]), .Y(dout[23]) );
  AO222X1_RVT U474 ( .A1(n99), .A2(buf0[22]), .A3(n86), .A4(buf1[22]), .A5(n95), .A6(csr[22]), .Y(dout[22]) );
  AO221X1_RVT U475 ( .A1(n84), .A2(buf1[21]), .A3(n125), .A4(buf0[21]), .A5(
        n496), .Y(dout[21]) );
  AO221X1_RVT U476 ( .A1(n86), .A2(buf1[20]), .A3(n100), .A4(buf0[20]), .A5(
        n497), .Y(dout[20]) );
  AO221X1_RVT U477 ( .A1(n86), .A2(buf1[1]), .A3(n100), .A4(buf0[1]), .A5(n498), .Y(dout[1]) );
  AO221X1_RVT U478 ( .A1(n83), .A2(buf1[19]), .A3(n99), .A4(buf0[19]), .A5(
        n499), .Y(dout[19]) );
  AO221X1_RVT U479 ( .A1(n97), .A2(buf1[18]), .A3(n88), .A4(buf0[18]), .A5(
        n500), .Y(dout[18]) );
  AO221X1_RVT U480 ( .A1(n97), .A2(buf1[17]), .A3(n125), .A4(buf0[17]), .A5(
        n501), .Y(dout[17]) );
  AO221X1_RVT U481 ( .A1(n84), .A2(buf1[16]), .A3(n100), .A4(buf0[16]), .A5(
        n502), .Y(dout[16]) );
  AO222X1_RVT U482 ( .A1(n100), .A2(buf0[15]), .A3(n85), .A4(buf1[15]), .A5(
        n96), .A6(csr[15]), .Y(dout[15]) );
  AO22X1_RVT U483 ( .A1(n125), .A2(buf0[14]), .A3(n85), .A4(buf1[14]), .Y(
        dout[14]) );
  AO222X1_RVT U484 ( .A1(n99), .A2(buf0[13]), .A3(n85), .A4(buf1[13]), .A5(n98), .A6(csr_13), .Y(dout[13]) );
  AO222X1_RVT U485 ( .A1(n88), .A2(buf0[12]), .A3(n83), .A4(buf1[12]), .A5(n95), .A6(csr_12), .Y(dout[12]) );
  AO222X1_RVT U486 ( .A1(n125), .A2(buf0[11]), .A3(n83), .A4(buf1[11]), .A5(
        n110), .A6(csr_11), .Y(dout[11]) );
  AO222X1_RVT U487 ( .A1(n100), .A2(buf0[10]), .A3(n83), .A4(buf1[10]), .A5(
        n96), .A6(csr_10), .Y(dout[10]) );
  AO221X1_RVT U488 ( .A1(n83), .A2(buf1[0]), .A3(n125), .A4(buf0[0]), .A5(n503), .Y(dout[0]) );
  INVX0_RVT U489 ( .A(adr[1]), .Y(n625) );
  AND4X1_RVT U490 ( .A1(n76), .A2(n22), .A3(n2), .A4(n505), .Y(N361) );
  AOI21X1_RVT U491 ( .A1(n506), .A2(n507), .A3(n807), .Y(n505) );
  NAND3X0_RVT U492 ( .A1(n508), .A2(csr[26]), .A3(n808), .Y(n507) );
  AO22X1_RVT U493 ( .A1(n610), .A2(buf0_orig[30]), .A3(n509), .A4(n510), .Y(
        n508) );
  NAND2X0_RVT U494 ( .A1(n600), .A2(dma_in_cnt[11]), .Y(n510) );
  AO21X1_RVT U495 ( .A1(n620), .A2(buf0_orig[29]), .A3(n511), .Y(n509) );
  OA221X1_RVT U496 ( .A1(n619), .A2(buf0_orig[28]), .A3(n620), .A4(
        buf0_orig[29]), .A5(n512), .Y(n511) );
  AO221X1_RVT U497 ( .A1(n619), .A2(buf0_orig[28]), .A3(n618), .A4(
        buf0_orig[27]), .A5(n513), .Y(n512) );
  OA221X1_RVT U498 ( .A1(n618), .A2(buf0_orig[27]), .A3(n617), .A4(
        buf0_orig[26]), .A5(n514), .Y(n513) );
  AO221X1_RVT U499 ( .A1(n617), .A2(buf0_orig[26]), .A3(n616), .A4(
        buf0_orig[25]), .A5(n515), .Y(n514) );
  OA221X1_RVT U500 ( .A1(n616), .A2(buf0_orig[25]), .A3(n615), .A4(
        buf0_orig[24]), .A5(n516), .Y(n515) );
  AO221X1_RVT U501 ( .A1(n615), .A2(buf0_orig[24]), .A3(n614), .A4(
        buf0_orig[23]), .A5(n517), .Y(n516) );
  OA221X1_RVT U502 ( .A1(n614), .A2(buf0_orig[23]), .A3(n613), .A4(
        buf0_orig[22]), .A5(n518), .Y(n517) );
  AO222X1_RVT U503 ( .A1(n519), .A2(buf0_orig[21]), .A3(n612), .A4(n520), .A5(
        n613), .A6(buf0_orig[22]), .Y(n518) );
  OR2X1_RVT U504 ( .A1(buf0_orig[21]), .A2(n519), .Y(n520) );
  AO22X1_RVT U505 ( .A1(n609), .A2(buf0_orig[20]), .A3(n521), .A4(n611), .Y(
        n519) );
  OA21X1_RVT U506 ( .A1(n609), .A2(buf0_orig[20]), .A3(buf0_orig[19]), .Y(n521) );
  NAND2X0_RVT U507 ( .A1(n479), .A2(n522), .Y(n506) );
  OR3X1_RVT U508 ( .A1(dma_out_cnt[0]), .A2(n799), .A3(dma_out_cnt[1]), .Y(
        n522) );
  NAND4X0_RVT U509 ( .A1(n564), .A2(n565), .A3(n523), .A4(n524), .Y(n799) );
  AND3X1_RVT U510 ( .A1(n569), .A2(n570), .A3(n525), .Y(n524) );
  AND3X1_RVT U511 ( .A1(n803), .A2(n804), .A3(n571), .Y(n525) );
  AND3X1_RVT U512 ( .A1(n567), .A2(n568), .A3(n566), .Y(n523) );
  INVX0_RVT U513 ( .A(n478), .Y(n479) );
  NAND2X0_RVT U514 ( .A1(n176), .A2(csr[27]), .Y(n478) );
  AND3X1_RVT U515 ( .A1(n526), .A2(csr[26]), .A3(n808), .Y(N348) );
  NAND4X0_RVT U516 ( .A1(n602), .A2(n601), .A3(n527), .A4(n528), .Y(n526) );
  AND3X1_RVT U517 ( .A1(n606), .A2(n607), .A3(n529), .Y(n528) );
  AND3X1_RVT U518 ( .A1(n805), .A2(n600), .A3(n806), .Y(n529) );
  AND3X1_RVT U519 ( .A1(n604), .A2(n605), .A3(n603), .Y(n527) );
  AO22X1_RVT U520 ( .A1(n610), .A2(n42), .A3(n530), .A4(n531), .Y(N347) );
  NAND2X0_RVT U521 ( .A1(n621), .A2(dma_in_cnt[11]), .Y(n531) );
  AO21X1_RVT U522 ( .A1(n620), .A2(n41), .A3(n532), .Y(n530) );
  OA221X1_RVT U523 ( .A1(n619), .A2(n14), .A3(n620), .A4(n41), .A5(n533), .Y(
        n532) );
  AO221X1_RVT U524 ( .A1(n618), .A2(n40), .A3(n619), .A4(n14), .A5(n534), .Y(
        n533) );
  OA221X1_RVT U525 ( .A1(n618), .A2(n40), .A3(n617), .A4(n15), .A5(n535), .Y(
        n534) );
  AO221X1_RVT U526 ( .A1(n616), .A2(n36), .A3(n617), .A4(n15), .A5(n536), .Y(
        n535) );
  OA221X1_RVT U527 ( .A1(n616), .A2(n36), .A3(n615), .A4(n13), .A5(n537), .Y(
        n536) );
  AO221X1_RVT U528 ( .A1(n614), .A2(n39), .A3(n615), .A4(n13), .A5(n538), .Y(
        n537) );
  OA221X1_RVT U529 ( .A1(n614), .A2(n39), .A3(n613), .A4(n12), .A5(n539), .Y(
        n538) );
  AO222X1_RVT U530 ( .A1(n540), .A2(n33), .A3(n612), .A4(n541), .A5(n613), 
        .A6(n12), .Y(n539) );
  OR2X1_RVT U531 ( .A1(n33), .A2(n540), .Y(n541) );
  AO22X1_RVT U532 ( .A1(n609), .A2(n34), .A3(n542), .A4(n611), .Y(n540) );
  OA21X1_RVT U533 ( .A1(n609), .A2(n34), .A3(\buf0_orig_m3[0] ), .Y(n542) );
  NAND4X0_RVT U534 ( .A1(n610), .A2(n620), .A3(n543), .A4(n619), .Y(N319) );
  OA21X1_RVT U535 ( .A1(n618), .A2(csr_10), .A3(n544), .Y(n543) );
  AO221X1_RVT U536 ( .A1(n618), .A2(csr_10), .A3(n617), .A4(csr_9), .A5(n545), 
        .Y(n544) );
  OA221X1_RVT U537 ( .A1(n616), .A2(csr_8), .A3(n617), .A4(csr_9), .A5(n546), 
        .Y(n545) );
  AO221X1_RVT U538 ( .A1(n616), .A2(csr_8), .A3(n615), .A4(csr_7), .A5(n547), 
        .Y(n546) );
  OA221X1_RVT U539 ( .A1(n614), .A2(csr_6), .A3(n615), .A4(csr_7), .A5(n548), 
        .Y(n547) );
  AO221X1_RVT U540 ( .A1(n614), .A2(csr_6), .A3(n613), .A4(csr_5), .A5(n549), 
        .Y(n548) );
  OA221X1_RVT U541 ( .A1(n612), .A2(csr_4), .A3(n613), .A4(csr_5), .A5(n550), 
        .Y(n549) );
  AO222X1_RVT U542 ( .A1(n612), .A2(csr_4), .A3(n551), .A4(n611), .A5(n609), 
        .A6(csr_3), .Y(n550) );
  OA21X1_RVT U543 ( .A1(n609), .A2(csr_3), .A3(csr_2), .Y(n551) );
  NAND2X0_RVT U544 ( .A1(n552), .A2(n553), .Y(N222) );
  OA222X1_RVT U545 ( .A1(n576), .A2(n588), .A3(n573), .A4(n554), .A5(n577), 
        .A6(n590), .Y(n553) );
  OA222X1_RVT U546 ( .A1(n572), .A2(n579), .A3(n575), .A4(n586), .A5(n574), 
        .A6(n582), .Y(n552) );
  NAND2X0_RVT U547 ( .A1(n555), .A2(n556), .Y(N221) );
  OA222X1_RVT U548 ( .A1(n587), .A2(n588), .A3(n580), .A4(n554), .A5(n589), 
        .A6(n590), .Y(n556) );
  AND2X1_RVT U549 ( .A1(n583), .A2(n584), .Y(n554) );
  OA222X1_RVT U550 ( .A1(n578), .A2(n579), .A3(n585), .A4(n586), .A5(n581), 
        .A6(n582), .Y(n555) );
endmodule


module usbf_ep_rf_dummy_11 ( clk, wclk, rst, adr, re, we, din, dout, inta, 
        intb, dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, 
        buf1_set, uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, 
        int_upid_set, int_crc16_set, int_to_set, int_seqerr_set, out_to_small, 
        csr, buf0, buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_10 ( clk, wclk, rst, adr, re, we, din, dout, inta, 
        intb, dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, 
        buf1_set, uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, 
        int_upid_set, int_crc16_set, int_to_set, int_seqerr_set, out_to_small, 
        csr, buf0, buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_9 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_8 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_7 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_6 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_5 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_4 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_3 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_2 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_1 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_ep_rf_dummy_0 ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, 
        dma_req, dma_ack, idin, ep_sel, ep_match, buf0_rl, buf0_set, buf1_set, 
        uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, 
        int_crc16_set, int_to_set, int_seqerr_set, out_to_small, csr, buf0, 
        buf1, dma_in_buf_sz1, dma_out_buf_avail );
  input [1:0] adr;
  input [31:0] din;
  output [31:0] dout;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  input clk, wclk, rst, re, we, dma_ack, buf0_rl, buf0_set, buf1_set,
         uc_bsel_set, uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set,
         int_crc16_set, int_to_set, int_seqerr_set, out_to_small;
  output inta, intb, dma_req, ep_match, dma_in_buf_sz1, dma_out_buf_avail;

  assign buf1[0] = 1'b1;
  assign buf1[1] = 1'b1;
  assign buf1[2] = 1'b1;
  assign buf1[3] = 1'b1;
  assign buf1[4] = 1'b1;
  assign buf1[5] = 1'b1;
  assign buf1[6] = 1'b1;
  assign buf1[7] = 1'b1;
  assign buf1[8] = 1'b1;
  assign buf1[9] = 1'b1;
  assign buf1[10] = 1'b1;
  assign buf1[11] = 1'b1;
  assign buf1[12] = 1'b1;
  assign buf1[13] = 1'b1;
  assign buf1[14] = 1'b1;
  assign buf1[15] = 1'b1;
  assign buf1[16] = 1'b1;
  assign buf1[17] = 1'b1;
  assign buf1[18] = 1'b1;
  assign buf1[19] = 1'b1;
  assign buf1[20] = 1'b1;
  assign buf1[21] = 1'b1;
  assign buf1[22] = 1'b1;
  assign buf1[23] = 1'b1;
  assign buf1[24] = 1'b1;
  assign buf1[25] = 1'b1;
  assign buf1[26] = 1'b1;
  assign buf1[27] = 1'b1;
  assign buf1[28] = 1'b1;
  assign buf1[29] = 1'b1;
  assign buf1[30] = 1'b1;
  assign buf1[31] = 1'b1;
  assign buf0[0] = 1'b1;
  assign buf0[1] = 1'b1;
  assign buf0[2] = 1'b1;
  assign buf0[3] = 1'b1;
  assign buf0[4] = 1'b1;
  assign buf0[5] = 1'b1;
  assign buf0[6] = 1'b1;
  assign buf0[7] = 1'b1;
  assign buf0[8] = 1'b1;
  assign buf0[9] = 1'b1;
  assign buf0[10] = 1'b1;
  assign buf0[11] = 1'b1;
  assign buf0[12] = 1'b1;
  assign buf0[13] = 1'b1;
  assign buf0[14] = 1'b1;
  assign buf0[15] = 1'b1;
  assign buf0[16] = 1'b1;
  assign buf0[17] = 1'b1;
  assign buf0[18] = 1'b1;
  assign buf0[19] = 1'b1;
  assign buf0[20] = 1'b1;
  assign buf0[21] = 1'b1;
  assign buf0[22] = 1'b1;
  assign buf0[23] = 1'b1;
  assign buf0[24] = 1'b1;
  assign buf0[25] = 1'b1;
  assign buf0[26] = 1'b1;
  assign buf0[27] = 1'b1;
  assign buf0[28] = 1'b1;
  assign buf0[29] = 1'b1;
  assign buf0[30] = 1'b1;
  assign buf0[31] = 1'b1;
  assign dma_out_buf_avail = 1'b0;
  assign dma_in_buf_sz1 = 1'b0;
  assign csr[0] = 1'b0;
  assign csr[1] = 1'b0;
  assign csr[2] = 1'b0;
  assign csr[3] = 1'b0;
  assign csr[4] = 1'b0;
  assign csr[5] = 1'b0;
  assign csr[6] = 1'b0;
  assign csr[7] = 1'b0;
  assign csr[8] = 1'b0;
  assign csr[9] = 1'b0;
  assign csr[10] = 1'b0;
  assign csr[11] = 1'b0;
  assign csr[12] = 1'b0;
  assign csr[13] = 1'b0;
  assign csr[14] = 1'b0;
  assign csr[15] = 1'b0;
  assign csr[16] = 1'b0;
  assign csr[17] = 1'b0;
  assign csr[18] = 1'b0;
  assign csr[19] = 1'b0;
  assign csr[20] = 1'b0;
  assign csr[21] = 1'b0;
  assign csr[22] = 1'b0;
  assign csr[23] = 1'b0;
  assign csr[24] = 1'b0;
  assign csr[25] = 1'b0;
  assign csr[26] = 1'b0;
  assign csr[27] = 1'b0;
  assign csr[28] = 1'b0;
  assign csr[29] = 1'b0;
  assign csr[30] = 1'b0;
  assign csr[31] = 1'b0;
  assign ep_match = 1'b0;
  assign dma_req = 1'b0;
  assign intb = 1'b0;
  assign inta = 1'b0;
  assign dout[0] = 1'b0;
  assign dout[1] = 1'b0;
  assign dout[2] = 1'b0;
  assign dout[3] = 1'b0;
  assign dout[4] = 1'b0;
  assign dout[5] = 1'b0;
  assign dout[6] = 1'b0;
  assign dout[7] = 1'b0;
  assign dout[8] = 1'b0;
  assign dout[9] = 1'b0;
  assign dout[10] = 1'b0;
  assign dout[11] = 1'b0;
  assign dout[12] = 1'b0;
  assign dout[13] = 1'b0;
  assign dout[14] = 1'b0;
  assign dout[15] = 1'b0;
  assign dout[16] = 1'b0;
  assign dout[17] = 1'b0;
  assign dout[18] = 1'b0;
  assign dout[19] = 1'b0;
  assign dout[20] = 1'b0;
  assign dout[21] = 1'b0;
  assign dout[22] = 1'b0;
  assign dout[23] = 1'b0;
  assign dout[24] = 1'b0;
  assign dout[25] = 1'b0;
  assign dout[26] = 1'b0;
  assign dout[27] = 1'b0;
  assign dout[28] = 1'b0;
  assign dout[29] = 1'b0;
  assign dout[30] = 1'b0;
  assign dout[31] = 1'b0;

endmodule


module usbf_rf ( clk, wclk, rst, adr, re, we, din, dout, inta, intb, dma_req, 
        dma_ack, idin, ep_sel, match, buf0_rl, buf0_set, buf1_set, uc_bsel_set, 
        uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, int_crc16_set, 
        int_to_set, int_seqerr_set, out_to_small, csr, buf0, buf1, funct_adr, 
        dma_in_buf_sz1, dma_out_buf_avail, frm_nat, utmi_vend_stat, 
        utmi_vend_ctrl, utmi_vend_wr, line_stat, usb_attached, mode_hs, 
        suspend, attached, usb_reset, pid_cs_err, nse_err, crc5_err, rx_err, 
        rf_resume_req );
  input [6:0] adr;
  input [31:0] din;
  output [31:0] dout;
  output [15:0] dma_req;
  input [15:0] dma_ack;
  input [31:0] idin;
  input [3:0] ep_sel;
  output [31:0] csr;
  output [31:0] buf0;
  output [31:0] buf1;
  output [6:0] funct_adr;
  input [31:0] frm_nat;
  input [7:0] utmi_vend_stat;
  output [3:0] utmi_vend_ctrl;
  input [1:0] line_stat;
  input clk, wclk, rst, re, we, buf0_rl, buf0_set, buf1_set, uc_bsel_set,
         uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, int_crc16_set,
         int_to_set, int_seqerr_set, out_to_small, usb_attached, mode_hs,
         suspend, attached, usb_reset, pid_cs_err, nse_err, crc5_err, rx_err;
  output inta, intb, match, dma_in_buf_sz1, dma_out_buf_avail, utmi_vend_wr,
         rf_resume_req;
  wire   utmi_vend_wr_r, rf_resume_req_r, N167, N168, N169, N170, N171, N172,
         N173, N174, N175, N176, N177, N178, N179, N181, N182, N183, N184,
         N185, N186, N187, N188, N189, N190, N191, N192, N193, N194, N195,
         N196, N197, N198, ep0_re, ep1_re, ep2_re, ep3_re, ep4_re, ep5_re,
         ep6_re, ep7_re, ep8_re, ep9_re, ep10_re, ep11_re, ep12_re, ep13_re,
         ep14_re, ep15_re, ep0_we, ep1_we, ep2_we, ep3_we, ep4_we, ep5_we,
         ep6_we, ep7_we, ep8_we, ep9_we, ep10_we, ep11_we, ep12_we, ep13_we,
         ep14_we, ep15_we, ep0_match, ep1_match, ep2_match, ep3_match,
         ep0_dma_in_buf_sz1, ep1_dma_in_buf_sz1, ep2_dma_in_buf_sz1,
         ep3_dma_in_buf_sz1, ep0_dma_out_buf_avail, ep1_dma_out_buf_avail,
         ep2_dma_out_buf_avail, ep3_dma_out_buf_avail, attach_r, suspend_r,
         suspend_r1, usb_reset_r, rx_err_r, nse_err_r, pid_cs_err_r,
         crc5_err_r, ep3_inta, ep3_intb, ep2_inta, ep2_intb, ep1_inta,
         ep1_intb, ep0_inta, ep0_intb, N650, N651, n2, n5, n8, n10, n13, n18,
         n19, n31, n32, n37, n45, n46, n50, n55, n58, n59, n63, n64, n67, n68,
         n72, n75, n76, n80, n83, n84, n88, n91, n92, n96, n99, n100, n104,
         n107, n108, n112, n115, n116, n120, n123, n124, n128, n131, n132,
         n136, n139, n140, n144, n147, n148, n152, n155, n156, n160, n163,
         n164, n168, n171, n172, n176, n179, n180, n184, n187, n188, n192,
         n195, n196, n200, n203, n204, n208, n211, n212, n216, n219, n220,
         n224, n227, n228, n232, n235, n236, n240, n243, n244, n248, n251,
         n252, n256, n259, n260, n264, n267, n268, n272, n275, n276, n280,
         n283, n284, n288, n291, n292, n296, n299, n300, n304, n307, n308,
         n312, n315, n316, n320, n323, n324, n328, n331, n332, n336, n339,
         n340, n344, n347, n348, n352, n355, n356, n360, n363, n364, n368,
         n371, n372, n376, n379, n380, n384, n387, n388, n392, n395, n396,
         n400, n403, n404, n408, n411, n412, n416, n419, n420, n424, n427,
         n428, n432, n435, n436, n440, n443, n444, n448, n451, n452, n456,
         n459, n460, n464, n467, n468, n472, n475, n476, n480, n483, n484,
         n488, n491, n492, n496, n499, n500, n504, n507, n508, n512, n515,
         n516, n520, n523, n524, n528, n531, n532, n536, n539, n540, n544,
         n547, n548, n552, n555, n556, n560, n563, n564, n568, n571, n572,
         n576, n579, n580, n584, n587, n588, n592, n595, n596, n600, n603,
         n604, n608, n611, n612, n616, n619, n620, n624, n627, n628, n632,
         n635, n636, n640, n643, n644, n648, n651, n652, n656, n659, n660,
         n664, n667, n668, n672, n675, n676, n680, n691, n692, n696, n699,
         n700, n704, n707, n708, n712, n715, n716, n720, n723, n724, n728,
         n731, n732, n736, n739, n740, n744, n747, n748, n752, n755, n756,
         n760, n763, n764, n768, n771, n772, n776, n779, n780, n784, n787,
         n788, n792, n795, n796, n800, n803, n804, n808, n811, n812, n816,
         n819, n820, n828, n829, n830, n849, n850, n854, n873, n874, n877,
         n885, n889, n890, n892, n893, n894, n897, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n921, n922, n928, n929, n930, n931, n932, n933,
         n934, n935, n936, n941, n948, n952, n962, n970, n979, n987, n995,
         n1003, n1012, n1020, n1028, n1036, n1044, n1052, n1053, n1055, n1060,
         n1061, n1063, n1068, n1069, n1071, n1076, n1084, n1092, n1095, n1100,
         n1108, n1116, n1124, n1132, n1140, n1146, n1148, n1150, n1151, n1152,
         n1154, n1155, n1156, n1157, n1160, n1161, n1162, n1163, n1164, n1165,
         n1167, n1168, n1169, n1170, n1173, n1179, n1180, n1181, n1183, n1189,
         n1190, n1192, n1198, n1199, n1201, n1207, n1208, n1210, n1217, n1218,
         n1219, n1221, n1222, n1223, n1224, n1232, n1233, n1234, n1235, n1236,
         n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246,
         n1247, n1248, n1249, n1250, n1251, n1252, n1254, n1255, n1256, n1257,
         n1258, n1259, n1281, n1285, n1286, n1287, n1288, n1306, n1307, n1308,
         n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318,
         n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328,
         n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338,
         n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348,
         n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358,
         n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368,
         n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378,
         n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388,
         n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398,
         n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408,
         n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418,
         n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428,
         n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438,
         n1439, n1440, n1441, n1, n3, n4, n6, n7, n9, n11, n12, n14, n15, n16,
         n17, n20, n21, n22, n23, n24, n25, n26, n27, n28, n33, n34, n35, n36,
         n38, n39, n40, n41, n42, n43, n44, n47, n48, n49, n51, n52, n53, n54,
         n56, n57, n60, n61, n62, n65, n66, n69, n70, n71, n73, n74, n77, n78,
         n79, n81, n82, n85, n86, n87, n89, n90, n93, n94, n95, n97, n98, n101,
         n102, n103, n105, n106, n109, n110, n111, n113, n114, n117, n118,
         n119, n121, n122, n125, n126, n129, n130, n133, n134, n135, n137,
         n138, n142, n143, n145, n146, n149, n150, n151, n153, n154, n157,
         n159, n161, n162, n165, n166, n167, n169, n170, n173, n174, n175,
         n177, n178, n181, n182, n183, n185, n186, n189, n190, n191, n193,
         n194, n197, n198, n199, n201, n202, n205, n206, n207, n209, n210,
         n213, n214, n215, n217, n218, n221, n222, n223, n225, n226, n229,
         n230, n231, n233, n234, n237, n238, n239, n241, n242, n245, n246,
         n247, n249, n250, n253, n254, n255, n257, n258, n261, n262, n263,
         n265, n266, n269, n270, n271, n273, n274, n277, n278, n279, n281,
         n282, n285, n286, n287, n289, n290, n293, n305, n306, n309, n310,
         n311, n313, n314, n317, n318, n319, n321, n322, n325, n326, n327,
         n329, n330, n333, n334, n335, n337, n338, n341, n342, n343, n345,
         n346, n349, n350, n351, n353, n354;
  wire   [15:0] int_srca;
  wire   [7:0] utmi_vend_stat_r;
  wire   [3:0] utmi_vend_ctrl_r;
  wire   [31:0] ep0_dout;
  wire   [31:0] ep1_dout;
  wire   [31:0] ep2_dout;
  wire   [31:0] ep3_dout;
  wire   [31:0] ep0_csr;
  wire   [31:0] ep1_csr;
  wire   [31:0] ep2_csr;
  wire   [31:0] ep3_csr;
  wire   [31:0] ep0_buf0;
  wire   [31:0] ep1_buf0;
  wire   [31:0] ep2_buf0;
  wire   [31:0] ep3_buf0;
  wire   [31:0] ep0_buf1;
  wire   [31:0] ep1_buf1;
  wire   [31:0] ep2_buf1;
  wire   [31:0] ep3_buf1;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign dma_req[15] = 1'b0;
  assign dma_req[14] = 1'b0;
  assign dma_req[13] = 1'b0;
  assign dma_req[12] = 1'b0;
  assign dma_req[11] = 1'b0;
  assign dma_req[10] = 1'b0;
  assign dma_req[9] = 1'b0;
  assign dma_req[8] = 1'b0;
  assign dma_req[7] = 1'b0;
  assign dma_req[6] = 1'b0;
  assign dma_req[5] = 1'b0;
  assign dma_req[4] = 1'b0;

  usbf_ep_rf_3 u0 ( .clk(n265), .wclk(wclk), .rst(n166), .adr({adr[1], n34}), 
        .re(ep0_re), .we(ep0_we), .din({din[31:25], n38, din[23:22], n43, n44, 
        n42, n41, n39, n40, din[15:0]}), .dout(ep0_dout), .inta(ep0_inta), 
        .intb(ep0_intb), .dma_req(dma_req[0]), .dma_ack(dma_ack[0]), .idin(
        idin), .ep_sel(ep_sel), .ep_match(ep0_match), .buf0_rl(buf0_rl), 
        .buf0_set(buf0_set), .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), 
        .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(
        int_buf0_set), .int_upid_set(int_upid_set), .int_crc16_set(
        int_crc16_set), .int_to_set(int_to_set), .int_seqerr_set(
        int_seqerr_set), .out_to_small(out_to_small), .csr({ep0_csr[31:15], 
        SYNOPSYS_UNCONNECTED__0, ep0_csr[13:0]}), .buf0(ep0_buf0), .buf1(
        ep0_buf1), .dma_in_buf_sz1(ep0_dma_in_buf_sz1), .dma_out_buf_avail(
        ep0_dma_out_buf_avail) );
  usbf_ep_rf_2 u1 ( .clk(n265), .wclk(wclk), .rst(n262), .adr({adr[1], n34}), 
        .re(ep1_re), .we(ep1_we), .din(din), .dout(ep1_dout), .inta(ep1_inta), 
        .intb(ep1_intb), .dma_req(dma_req[1]), .dma_ack(dma_ack[1]), .idin(
        idin), .ep_sel(ep_sel), .ep_match(ep1_match), .buf0_rl(buf0_rl), 
        .buf0_set(buf0_set), .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), 
        .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(
        int_buf0_set), .int_upid_set(int_upid_set), .int_crc16_set(
        int_crc16_set), .int_to_set(int_to_set), .int_seqerr_set(
        int_seqerr_set), .out_to_small(out_to_small), .csr({ep1_csr[31:15], 
        SYNOPSYS_UNCONNECTED__1, ep1_csr[13:0]}), .buf0(ep1_buf0), .buf1(
        ep1_buf1), .dma_in_buf_sz1(ep1_dma_in_buf_sz1), .dma_out_buf_avail(
        ep1_dma_out_buf_avail) );
  usbf_ep_rf_1 u2 ( .clk(n265), .wclk(wclk), .rst(n262), .adr(adr[1:0]), .re(
        ep2_re), .we(ep2_we), .din(din), .dout(ep2_dout), .inta(ep2_inta), 
        .intb(ep2_intb), .dma_req(dma_req[2]), .dma_ack(dma_ack[2]), .idin(
        idin), .ep_sel(ep_sel), .ep_match(ep2_match), .buf0_rl(buf0_rl), 
        .buf0_set(buf0_set), .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), 
        .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(
        int_buf0_set), .int_upid_set(int_upid_set), .int_crc16_set(
        int_crc16_set), .int_to_set(int_to_set), .int_seqerr_set(
        int_seqerr_set), .out_to_small(out_to_small), .csr({ep2_csr[31:15], 
        SYNOPSYS_UNCONNECTED__2, ep2_csr[13:0]}), .buf0(ep2_buf0), .buf1(
        ep2_buf1), .dma_in_buf_sz1(ep2_dma_in_buf_sz1), .dma_out_buf_avail(
        ep2_dma_out_buf_avail) );
  usbf_ep_rf_0 u3 ( .clk(n265), .wclk(wclk), .rst(rst), .adr(adr[1:0]), .re(
        ep3_re), .we(ep3_we), .din({din[31:25], n38, din[23:22], n43, n44, n42, 
        n41, n39, n40, din[15:0]}), .dout(ep3_dout), .inta(ep3_inta), .intb(
        ep3_intb), .dma_req(dma_req[3]), .dma_ack(dma_ack[3]), .idin(idin), 
        .ep_sel(ep_sel), .ep_match(ep3_match), .buf0_rl(buf0_rl), .buf0_set(
        buf0_set), .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), 
        .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(
        int_buf0_set), .int_upid_set(int_upid_set), .int_crc16_set(
        int_crc16_set), .int_to_set(int_to_set), .int_seqerr_set(
        int_seqerr_set), .out_to_small(out_to_small), .csr({ep3_csr[31:15], 
        SYNOPSYS_UNCONNECTED__3, ep3_csr[13:0]}), .buf0(ep3_buf0), .buf1(
        ep3_buf1), .dma_in_buf_sz1(ep3_dma_in_buf_sz1), .dma_out_buf_avail(
        ep3_dma_out_buf_avail) );
  usbf_ep_rf_dummy_11 u4 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep4_re), .we(ep4_we), .din(din), .dma_ack(dma_ack[4]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_10 u5 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep5_re), .we(ep5_we), .din(din), .dma_ack(dma_ack[5]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_9 u6 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep6_re), .we(ep6_we), .din(din), .dma_ack(dma_ack[6]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_8 u7 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep7_re), .we(ep7_we), .din(din), .dma_ack(dma_ack[7]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_7 u8 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep8_re), .we(ep8_we), .din(din), .dma_ack(dma_ack[8]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_6 u9 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep9_re), .we(ep9_we), .din(din), .dma_ack(dma_ack[9]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_5 u10 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep10_re), .we(ep10_we), .din(din), .dma_ack(dma_ack[10]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_4 u11 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep11_re), .we(ep11_we), .din(din), .dma_ack(dma_ack[11]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_3 u12 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep12_re), .we(ep12_we), .din(din), .dma_ack(dma_ack[12]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_2 u13 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep13_re), .we(ep13_we), .din(din), .dma_ack(dma_ack[13]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_1 u14 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep14_re), .we(ep14_we), .din(din), .dma_ack(dma_ack[14]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  usbf_ep_rf_dummy_0 u15 ( .clk(n273), .wclk(wclk), .rst(n166), .adr({adr[1], 
        n34}), .re(ep15_re), .we(ep15_we), .din(din), .dma_ack(dma_ack[15]), 
        .idin(idin), .ep_sel(ep_sel), .buf0_rl(buf0_rl), .buf0_set(buf0_set), 
        .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(int_buf0_set), .int_upid_set(
        int_upid_set), .int_crc16_set(int_crc16_set), .int_to_set(int_to_set), 
        .int_seqerr_set(int_seqerr_set), .out_to_small(out_to_small) );
  DFFX1_RVT \int_srcb_reg[4]  ( .D(n1313), .CLK(wclk), .Q(n335), .QN(n1255) );
  DFFX1_RVT \int_srcb_reg[6]  ( .D(n1315), .CLK(wclk), .Q(n333), .QN(n1252) );
  DFFX1_RVT \int_srcb_reg[5]  ( .D(n1314), .CLK(wclk), .Q(n334), .QN(n1254) );
  DFFX1_RVT \int_srcb_reg[3]  ( .D(n1312), .CLK(wclk), .Q(n337), .QN(n1256) );
  DFFX1_RVT \int_srcb_reg[2]  ( .D(n1311), .CLK(wclk), .Q(n338), .QN(n1257) );
  DFFX1_RVT \int_srcb_reg[1]  ( .D(n1310), .CLK(wclk), .Q(n341), .QN(n1258) );
  DFFX1_RVT \intb_msk_reg[6]  ( .D(n1422), .CLK(wclk), .Q(n318), .QN(n1243) );
  DFFX1_RVT \inta_msk_reg[0]  ( .D(n1425), .CLK(wclk), .Q(n313), .QN(n1240) );
  DFFX1_RVT \inta_msk_reg[3]  ( .D(n1428), .CLK(wclk), .Q(n309), .QN(n1237) );
  DFFX1_RVT \intb_msk_reg[2]  ( .D(n1418), .CLK(wclk), .Q(n322), .QN(n1247) );
  DFFX1_RVT \intb_msk_reg[3]  ( .D(n1419), .CLK(wclk), .Q(n321), .QN(n1246) );
  DFFX1_RVT \intb_msk_reg[5]  ( .D(n1421), .CLK(wclk), .Q(n319), .QN(n1244) );
  DFFX1_RVT \intb_msk_reg[7]  ( .D(n1423), .CLK(wclk), .Q(n317), .QN(n1242) );
  DFFX1_RVT \inta_msk_reg[1]  ( .D(n1426), .CLK(wclk), .Q(n311), .QN(n1239) );
  DFFX1_RVT \inta_msk_reg[4]  ( .D(n1429), .CLK(wclk), .Q(n306), .QN(n1236) );
  DFFX1_RVT \inta_msk_reg[5]  ( .D(n1430), .CLK(wclk), .Q(n21), .QN(n1235) );
  DFFX1_RVT \inta_msk_reg[7]  ( .D(n1432), .CLK(wclk), .Q(n305), .QN(n1233) );
  DFFX1_RVT \inta_msk_reg[8]  ( .D(n1433), .CLK(wclk), .Q(n16), .QN(n1232) );
  DFFX1_RVT \utmi_vend_stat_r_reg[7]  ( .D(utmi_vend_stat[7]), .CLK(wclk), 
        .QN(n165) );
  DFFSSRX1_RVT \dout_reg[13]  ( .D(n1095), .SETB(n151), .RSTB(1'b1), .CLK(wclk), .Q(dout[13]) );
  DFFSSRX1_RVT utmi_vend_wr_r_reg ( .D(n1307), .SETB(n1281), .RSTB(n262), 
        .CLK(wclk), .Q(utmi_vend_wr_r) );
  DFFX1_RVT utmi_vend_wr_reg ( .D(utmi_vend_wr_r), .CLK(n265), .Q(utmi_vend_wr), .QN(n1286) );
  DFFX1_RVT \buf1_reg[0]  ( .D(n1320), .CLK(n273), .Q(buf1[0]) );
  DFFX1_RVT \buf1_reg[4]  ( .D(n1324), .CLK(n273), .Q(buf1[4]) );
  DFFX1_RVT \buf1_reg[3]  ( .D(n1323), .CLK(n273), .Q(buf1[3]) );
  DFFX1_RVT \buf1_reg[2]  ( .D(n1322), .CLK(n273), .Q(buf1[2]) );
  DFFX1_RVT \buf1_reg[5]  ( .D(n1325), .CLK(n273), .Q(buf1[5]) );
  DFFX1_RVT \buf1_reg[1]  ( .D(n1321), .CLK(n273), .Q(buf1[1]) );
  SDFFSSRX1_RVT match_r1_reg ( .RSTB(1'b1), .SETB(n1306), .D(1'b0), .SI(1'b1), 
        .SE(1'b0), .CLK(n273), .Q(match) );
  DFFX1_RVT usb_reset_r_reg ( .D(usb_reset), .CLK(wclk), .Q(usb_reset_r) );
  DFFX1_RVT rx_err_r_reg ( .D(rx_err), .CLK(wclk), .Q(rx_err_r) );
  DFFX1_RVT nse_err_r_reg ( .D(nse_err), .CLK(wclk), .Q(nse_err_r) );
  DFFX1_RVT pid_cs_err_r_reg ( .D(pid_cs_err), .CLK(wclk), .Q(pid_cs_err_r) );
  DFFX1_RVT crc5_err_r_reg ( .D(crc5_err), .CLK(wclk), .Q(crc5_err_r) );
  DFFX1_RVT \utmi_vend_stat_r_reg[4]  ( .D(utmi_vend_stat[4]), .CLK(wclk), .Q(
        utmi_vend_stat_r[4]) );
  DFFX1_RVT \utmi_vend_stat_r_reg[3]  ( .D(utmi_vend_stat[3]), .CLK(wclk), .Q(
        utmi_vend_stat_r[3]) );
  DFFX1_RVT \utmi_vend_stat_r_reg[2]  ( .D(utmi_vend_stat[2]), .CLK(wclk), .Q(
        utmi_vend_stat_r[2]) );
  DFFX1_RVT \utmi_vend_stat_r_reg[1]  ( .D(utmi_vend_stat[1]), .CLK(wclk), .Q(
        utmi_vend_stat_r[1]) );
  DFFX1_RVT \utmi_vend_stat_r_reg[0]  ( .D(utmi_vend_stat[0]), .CLK(wclk), .Q(
        utmi_vend_stat_r[0]) );
  DFFX1_RVT rf_resume_req_r_reg ( .D(n1441), .CLK(wclk), .Q(rf_resume_req_r)
         );
  DFFX1_RVT suspend_r_reg ( .D(suspend), .CLK(wclk), .Q(suspend_r), .QN(n22)
         );
  DFFX1_RVT suspend_r1_reg ( .D(suspend_r), .CLK(wclk), .Q(suspend_r1) );
  DFFSSRX1_RVT \int_srca_reg[3]  ( .D(ep3_intb), .SETB(n287), .RSTB(1'b1), 
        .CLK(wclk), .Q(int_srca[3]) );
  DFFSSRX1_RVT \int_srca_reg[2]  ( .D(ep2_intb), .SETB(n285), .RSTB(1'b1), 
        .CLK(wclk), .Q(int_srca[2]) );
  DFFSSRX1_RVT \int_srca_reg[1]  ( .D(ep1_intb), .SETB(n281), .RSTB(1'b1), 
        .CLK(wclk), .Q(int_srca[1]) );
  DFFSSRX1_RVT \int_srca_reg[0]  ( .D(ep0_intb), .SETB(n289), .RSTB(1'b1), 
        .CLK(wclk), .Q(int_srca[0]) );
  DFFX1_RVT \utmi_vend_stat_r_reg[6]  ( .D(utmi_vend_stat[6]), .CLK(wclk), 
        .QN(n1224) );
  DFFX1_RVT \utmi_vend_stat_r_reg[5]  ( .D(utmi_vend_stat[5]), .CLK(wclk), 
        .QN(n1223) );
  DFFX1_RVT \funct_adr_reg[6]  ( .D(n1440), .CLK(wclk), .Q(funct_adr[6]) );
  DFFX1_RVT \funct_adr_reg[5]  ( .D(n1439), .CLK(wclk), .Q(funct_adr[5]) );
  DFFX1_RVT \funct_adr_reg[4]  ( .D(n1438), .CLK(wclk), .Q(funct_adr[4]) );
  DFFX1_RVT \funct_adr_reg[3]  ( .D(n1437), .CLK(wclk), .Q(funct_adr[3]) );
  DFFX1_RVT \funct_adr_reg[2]  ( .D(n1436), .CLK(wclk), .Q(funct_adr[2]) );
  DFFX1_RVT \funct_adr_reg[1]  ( .D(n1435), .CLK(wclk), .Q(funct_adr[1]) );
  DFFX1_RVT \funct_adr_reg[0]  ( .D(n1434), .CLK(wclk), .Q(funct_adr[0]) );
  DFFX1_RVT attach_r1_reg ( .D(attach_r), .CLK(wclk), .Q(n327) );
  DFFX1_RVT \inta_msk_reg[2]  ( .D(n1427), .CLK(wclk), .Q(n310), .QN(n1238) );
  DFFX1_RVT \intb_msk_reg[8]  ( .D(n1424), .CLK(wclk), .Q(n314), .QN(n1241) );
  DFFX1_RVT \intb_msk_reg[1]  ( .D(n1417), .CLK(wclk), .Q(n325), .QN(n1248) );
  DFFX1_RVT \intb_msk_reg[0]  ( .D(n1416), .CLK(wclk), .Q(n326), .QN(n1249) );
  DFFX1_RVT attach_r_reg ( .D(usb_attached), .CLK(wclk), .Q(attach_r), .QN(
        n1288) );
  DFFX1_RVT \intb_msk_reg[4]  ( .D(n1420), .CLK(wclk), .Q(n17), .QN(n1245) );
  DFFX1_RVT \int_srcb_reg[8]  ( .D(n1317), .CLK(wclk), .Q(n329), .QN(n1250) );
  DFFX1_RVT \int_srcb_reg[0]  ( .D(n1309), .CLK(wclk), .Q(n342), .QN(n1259) );
  DFFX1_RVT \inta_msk_reg[6]  ( .D(n1431), .CLK(wclk), .Q(n20), .QN(n1234) );
  DFFX1_RVT \int_srcb_reg[7]  ( .D(n1316), .CLK(wclk), .Q(n330), .QN(n1251) );
  DFFX1_RVT inta_reg ( .D(N650), .CLK(wclk), .Q(inta) );
  DFFX1_RVT intb_reg ( .D(N651), .CLK(wclk), .Q(intb) );
  DFFX1_RVT \utmi_vend_ctrl_reg[3]  ( .D(utmi_vend_ctrl_r[3]), .CLK(n265), .Q(
        utmi_vend_ctrl[3]) );
  DFFX1_RVT \utmi_vend_ctrl_reg[2]  ( .D(utmi_vend_ctrl_r[2]), .CLK(n265), .Q(
        utmi_vend_ctrl[2]) );
  DFFX1_RVT \utmi_vend_ctrl_reg[1]  ( .D(utmi_vend_ctrl_r[1]), .CLK(n265), .Q(
        utmi_vend_ctrl[1]) );
  DFFX1_RVT \utmi_vend_ctrl_reg[0]  ( .D(utmi_vend_ctrl_r[0]), .CLK(n265), .Q(
        utmi_vend_ctrl[0]) );
  DFFSSRX1_RVT int_src_re_reg ( .D(n33), .SETB(1'b1), .RSTB(re), .CLK(wclk), 
        .QN(n1285) );
  DFFX1_RVT \utmi_vend_ctrl_r_reg[0]  ( .D(n28), .CLK(wclk), .Q(
        utmi_vend_ctrl_r[0]) );
  DFFX1_RVT \utmi_vend_ctrl_r_reg[3]  ( .D(n27), .CLK(wclk), .Q(
        utmi_vend_ctrl_r[3]) );
  DFFX1_RVT \utmi_vend_ctrl_r_reg[2]  ( .D(n26), .CLK(wclk), .Q(
        utmi_vend_ctrl_r[2]) );
  DFFX1_RVT \utmi_vend_ctrl_r_reg[1]  ( .D(n25), .CLK(wclk), .Q(
        utmi_vend_ctrl_r[1]) );
  DFFX1_RVT \dout_reg[4]  ( .D(N171), .CLK(wclk), .Q(dout[4]) );
  DFFX1_RVT \dout_reg[1]  ( .D(N168), .CLK(wclk), .Q(dout[1]) );
  DFFX1_RVT \dout_reg[3]  ( .D(N170), .CLK(wclk), .Q(dout[3]) );
  DFFX1_RVT \dout_reg[0]  ( .D(N167), .CLK(wclk), .Q(dout[0]) );
  DFFX1_RVT \dout_reg[5]  ( .D(N172), .CLK(wclk), .Q(dout[5]) );
  DFFX1_RVT \dout_reg[7]  ( .D(N174), .CLK(wclk), .Q(dout[7]) );
  DFFX1_RVT \dout_reg[2]  ( .D(N169), .CLK(wclk), .Q(dout[2]) );
  DFFX1_RVT \dout_reg[6]  ( .D(N173), .CLK(wclk), .Q(dout[6]) );
  DFFX1_RVT \dout_reg[30]  ( .D(N197), .CLK(wclk), .Q(dout[30]) );
  DFFX1_RVT \dout_reg[31]  ( .D(N198), .CLK(wclk), .Q(dout[31]) );
  DFFX1_RVT \dout_reg[8]  ( .D(N175), .CLK(wclk), .Q(dout[8]) );
  DFFX1_RVT \dout_reg[29]  ( .D(N196), .CLK(wclk), .Q(dout[29]) );
  DFFX1_RVT \dout_reg[15]  ( .D(N182), .CLK(wclk), .Q(dout[15]) );
  DFFX1_RVT \dout_reg[12]  ( .D(N179), .CLK(wclk), .Q(dout[12]) );
  DFFX1_RVT \dout_reg[11]  ( .D(N178), .CLK(wclk), .Q(dout[11]) );
  DFFX1_RVT \dout_reg[14]  ( .D(N181), .CLK(wclk), .Q(dout[14]) );
  DFFX1_RVT \dout_reg[10]  ( .D(N177), .CLK(wclk), .Q(dout[10]) );
  DFFX1_RVT \dout_reg[9]  ( .D(N176), .CLK(wclk), .Q(dout[9]) );
  DFFX1_RVT \dout_reg[26]  ( .D(N193), .CLK(wclk), .Q(dout[26]) );
  DFFX1_RVT \dout_reg[24]  ( .D(N191), .CLK(wclk), .Q(dout[24]) );
  DFFX1_RVT \dout_reg[23]  ( .D(N190), .CLK(wclk), .Q(dout[23]) );
  DFFX1_RVT \dout_reg[28]  ( .D(N195), .CLK(wclk), .Q(dout[28]) );
  DFFX1_RVT \dout_reg[27]  ( .D(N194), .CLK(wclk), .Q(dout[27]) );
  DFFX1_RVT \dout_reg[25]  ( .D(N192), .CLK(wclk), .Q(dout[25]) );
  DFFX1_RVT \dout_reg[21]  ( .D(N188), .CLK(wclk), .Q(dout[21]) );
  DFFX1_RVT \dout_reg[20]  ( .D(N187), .CLK(wclk), .Q(dout[20]) );
  DFFX1_RVT \dout_reg[19]  ( .D(N186), .CLK(wclk), .Q(dout[19]) );
  DFFX1_RVT \dout_reg[22]  ( .D(N189), .CLK(wclk), .Q(dout[22]) );
  DFFX1_RVT \dout_reg[17]  ( .D(N184), .CLK(wclk), .Q(dout[17]) );
  DFFX1_RVT \dout_reg[16]  ( .D(N183), .CLK(wclk), .Q(dout[16]) );
  DFFX1_RVT \dout_reg[18]  ( .D(N185), .CLK(wclk), .Q(dout[18]) );
  DFFX1_RVT \csr_reg[4]  ( .D(n1388), .CLK(n266), .Q(csr[4]) );
  DFFX1_RVT rf_resume_req_reg ( .D(rf_resume_req_r), .CLK(n265), .Q(
        rf_resume_req), .QN(n1287) );
  DFFX1_RVT \csr_reg[31]  ( .D(n1415), .CLK(n265), .Q(csr[31]) );
  DFFX1_RVT \csr_reg[30]  ( .D(n1414), .CLK(n265), .Q(csr[30]) );
  DFFX1_RVT \csr_reg[29]  ( .D(n1413), .CLK(n265), .Q(csr[29]) );
  DFFX1_RVT \csr_reg[28]  ( .D(n1412), .CLK(n265), .Q(csr[28]) );
  DFFX1_RVT \csr_reg[27]  ( .D(n1411), .CLK(n265), .Q(csr[27]) );
  DFFX1_RVT \csr_reg[26]  ( .D(n1410), .CLK(n265), .Q(csr[26]) );
  DFFX1_RVT \csr_reg[25]  ( .D(n1409), .CLK(n265), .Q(csr[25]) );
  DFFX1_RVT \csr_reg[24]  ( .D(n1408), .CLK(n269), .Q(csr[24]) );
  DFFX1_RVT \csr_reg[23]  ( .D(n1407), .CLK(n266), .Q(csr[23]) );
  DFFX1_RVT \csr_reg[22]  ( .D(n1406), .CLK(n266), .Q(csr[22]) );
  DFFX1_RVT \csr_reg[21]  ( .D(n1405), .CLK(n266), .Q(csr[21]) );
  DFFX1_RVT \csr_reg[20]  ( .D(n1404), .CLK(n266), .Q(csr[20]) );
  DFFX1_RVT \csr_reg[19]  ( .D(n1403), .CLK(n266), .Q(csr[19]) );
  DFFX1_RVT \csr_reg[18]  ( .D(n1402), .CLK(n266), .Q(csr[18]) );
  DFFX1_RVT \csr_reg[17]  ( .D(n1401), .CLK(n266), .Q(csr[17]) );
  DFFX1_RVT \csr_reg[16]  ( .D(n1400), .CLK(n266), .Q(csr[16]) );
  DFFX1_RVT \csr_reg[15]  ( .D(n1399), .CLK(n266), .Q(csr[15]) );
  DFFX1_RVT \csr_reg[14]  ( .D(n1398), .CLK(n266), .Q(csr[14]) );
  DFFX1_RVT \csr_reg[13]  ( .D(n1397), .CLK(n266), .Q(csr[13]) );
  DFFX1_RVT \csr_reg[12]  ( .D(n1396), .CLK(n266), .Q(csr[12]) );
  DFFX1_RVT \csr_reg[11]  ( .D(n1395), .CLK(n266), .Q(csr[11]) );
  DFFX1_RVT \csr_reg[10]  ( .D(n1394), .CLK(n266), .Q(csr[10]) );
  DFFX1_RVT \csr_reg[9]  ( .D(n1393), .CLK(n266), .Q(csr[9]) );
  DFFX1_RVT \csr_reg[8]  ( .D(n1392), .CLK(n266), .Q(csr[8]) );
  DFFX1_RVT \csr_reg[7]  ( .D(n1391), .CLK(n266), .Q(csr[7]) );
  DFFX1_RVT \csr_reg[6]  ( .D(n1390), .CLK(n266), .Q(csr[6]) );
  DFFX1_RVT \csr_reg[5]  ( .D(n1389), .CLK(n266), .Q(csr[5]) );
  DFFX1_RVT \csr_reg[3]  ( .D(n1387), .CLK(n266), .Q(csr[3]) );
  DFFX1_RVT \csr_reg[2]  ( .D(n1386), .CLK(n269), .Q(csr[2]) );
  DFFX1_RVT \csr_reg[1]  ( .D(n1385), .CLK(n269), .Q(csr[1]) );
  DFFX1_RVT \csr_reg[0]  ( .D(n1384), .CLK(n269), .Q(csr[0]) );
  DFFX1_RVT \buf0_reg[31]  ( .D(n1383), .CLK(n269), .Q(buf0[31]) );
  DFFX1_RVT \buf0_reg[30]  ( .D(n1382), .CLK(n269), .Q(buf0[30]) );
  DFFX1_RVT \buf0_reg[29]  ( .D(n1381), .CLK(n269), .Q(buf0[29]) );
  DFFX1_RVT \buf0_reg[28]  ( .D(n1380), .CLK(n269), .Q(buf0[28]) );
  DFFX1_RVT \buf0_reg[27]  ( .D(n1379), .CLK(n269), .Q(buf0[27]) );
  DFFX1_RVT \buf0_reg[26]  ( .D(n1378), .CLK(n269), .Q(buf0[26]) );
  DFFX1_RVT \buf0_reg[25]  ( .D(n1377), .CLK(n269), .Q(buf0[25]) );
  DFFX1_RVT \buf0_reg[24]  ( .D(n1376), .CLK(n269), .Q(buf0[24]) );
  DFFX1_RVT \buf0_reg[23]  ( .D(n1375), .CLK(n269), .Q(buf0[23]) );
  DFFX1_RVT \buf0_reg[22]  ( .D(n1374), .CLK(n269), .Q(buf0[22]) );
  DFFX1_RVT \buf0_reg[21]  ( .D(n1373), .CLK(n269), .Q(buf0[21]) );
  DFFX1_RVT \buf0_reg[20]  ( .D(n1372), .CLK(n269), .Q(buf0[20]) );
  DFFX1_RVT \buf0_reg[19]  ( .D(n1371), .CLK(n269), .Q(buf0[19]) );
  DFFX1_RVT \buf0_reg[18]  ( .D(n1370), .CLK(n269), .Q(buf0[18]) );
  DFFX1_RVT \buf0_reg[17]  ( .D(n1369), .CLK(n269), .Q(buf0[17]) );
  DFFX1_RVT \buf0_reg[16]  ( .D(n1368), .CLK(n269), .Q(buf0[16]) );
  DFFX1_RVT \buf0_reg[15]  ( .D(n1367), .CLK(n269), .Q(buf0[15]) );
  DFFX1_RVT \buf0_reg[14]  ( .D(n1366), .CLK(n270), .Q(buf0[14]) );
  DFFX1_RVT \buf0_reg[13]  ( .D(n1365), .CLK(n270), .Q(buf0[13]) );
  DFFX1_RVT \buf0_reg[12]  ( .D(n1364), .CLK(n270), .Q(buf0[12]) );
  DFFX1_RVT \buf0_reg[11]  ( .D(n1363), .CLK(n270), .Q(buf0[11]) );
  DFFX1_RVT \buf0_reg[10]  ( .D(n1362), .CLK(n270), .Q(buf0[10]) );
  DFFX1_RVT \buf0_reg[9]  ( .D(n1361), .CLK(n270), .Q(buf0[9]) );
  DFFX1_RVT \buf0_reg[8]  ( .D(n1360), .CLK(n270), .Q(buf0[8]) );
  DFFX1_RVT \buf0_reg[7]  ( .D(n1359), .CLK(n270), .Q(buf0[7]) );
  DFFX1_RVT \buf0_reg[6]  ( .D(n1358), .CLK(n270), .Q(buf0[6]) );
  DFFX1_RVT \buf0_reg[5]  ( .D(n1357), .CLK(n270), .Q(buf0[5]) );
  DFFX1_RVT \buf0_reg[4]  ( .D(n1356), .CLK(n270), .Q(buf0[4]) );
  DFFX1_RVT \buf0_reg[3]  ( .D(n1355), .CLK(n270), .Q(buf0[3]) );
  DFFX1_RVT \buf0_reg[2]  ( .D(n1354), .CLK(n270), .Q(buf0[2]) );
  DFFX1_RVT \buf0_reg[1]  ( .D(n1353), .CLK(n270), .Q(buf0[1]) );
  DFFX1_RVT \buf0_reg[0]  ( .D(n1352), .CLK(n270), .Q(buf0[0]) );
  DFFX1_RVT \buf1_reg[31]  ( .D(n1351), .CLK(n270), .Q(buf1[31]) );
  DFFX1_RVT \buf1_reg[30]  ( .D(n1350), .CLK(n270), .Q(buf1[30]) );
  DFFX1_RVT \buf1_reg[29]  ( .D(n1349), .CLK(n270), .Q(buf1[29]) );
  DFFX1_RVT \buf1_reg[28]  ( .D(n1348), .CLK(n270), .Q(buf1[28]) );
  DFFX1_RVT \buf1_reg[27]  ( .D(n1347), .CLK(n270), .Q(buf1[27]) );
  DFFX1_RVT \buf1_reg[26]  ( .D(n1346), .CLK(n270), .Q(buf1[26]) );
  DFFX1_RVT \buf1_reg[25]  ( .D(n1345), .CLK(n271), .Q(buf1[25]) );
  DFFX1_RVT \buf1_reg[24]  ( .D(n1344), .CLK(n271), .Q(buf1[24]) );
  DFFX1_RVT \buf1_reg[23]  ( .D(n1343), .CLK(n271), .Q(buf1[23]) );
  DFFX1_RVT \buf1_reg[22]  ( .D(n1342), .CLK(n271), .Q(buf1[22]) );
  DFFX1_RVT \buf1_reg[21]  ( .D(n1341), .CLK(n271), .Q(buf1[21]) );
  DFFX1_RVT \buf1_reg[20]  ( .D(n1340), .CLK(n271), .Q(buf1[20]) );
  DFFX1_RVT \buf1_reg[19]  ( .D(n1339), .CLK(n271), .Q(buf1[19]) );
  DFFX1_RVT \buf1_reg[18]  ( .D(n1338), .CLK(n271), .Q(buf1[18]) );
  DFFX1_RVT \buf1_reg[17]  ( .D(n1337), .CLK(n271), .Q(buf1[17]) );
  DFFX1_RVT \buf1_reg[16]  ( .D(n1336), .CLK(n271), .Q(buf1[16]) );
  DFFX1_RVT \buf1_reg[15]  ( .D(n1335), .CLK(n271), .Q(buf1[15]) );
  DFFX1_RVT \buf1_reg[14]  ( .D(n1334), .CLK(n271), .Q(buf1[14]) );
  DFFX1_RVT \buf1_reg[13]  ( .D(n1333), .CLK(n271), .Q(buf1[13]) );
  DFFX1_RVT \buf1_reg[12]  ( .D(n1332), .CLK(n271), .Q(buf1[12]) );
  DFFX1_RVT \buf1_reg[11]  ( .D(n1331), .CLK(n271), .Q(buf1[11]) );
  DFFX1_RVT \buf1_reg[10]  ( .D(n1330), .CLK(n271), .Q(buf1[10]) );
  DFFX1_RVT \buf1_reg[9]  ( .D(n1329), .CLK(n271), .Q(buf1[9]) );
  DFFX1_RVT \buf1_reg[8]  ( .D(n1328), .CLK(n271), .Q(buf1[8]) );
  DFFX1_RVT \buf1_reg[7]  ( .D(n1327), .CLK(n271), .Q(buf1[7]) );
  DFFX1_RVT \buf1_reg[6]  ( .D(n1326), .CLK(n271), .Q(buf1[6]) );
  DFFX1_RVT dma_in_buf_sz1_reg ( .D(n1319), .CLK(n271), .Q(dma_in_buf_sz1) );
  DFFX1_RVT dma_out_buf_avail_reg ( .D(n1318), .CLK(n265), .Q(
        dma_out_buf_avail) );
  OA21X1_RVT \int_src_re_reg/U4  ( .A1(1'b0), .A2(n343), .A3(n1308), .Y(n33)
         );
  OA22X1_RVT U3 ( .A1(n138), .A2(n161), .A3(n53), .A4(1'b1), .Y(n137) );
  OA22X1_RVT U4 ( .A1(n157), .A2(n161), .A3(n53), .A4(1'b1), .Y(n154) );
  OAI22X2_RVT U5 ( .A1(n1160), .A2(n1233), .A3(n165), .A4(n1148), .Y(n1146) );
  AO22X2_RVT U6 ( .A1(n49), .A2(n306), .A3(n1180), .A4(n3), .Y(n1179) );
  AOI22X1_RVT U7 ( .A1(n143), .A2(1'b0), .A3(frm_nat[5]), .A4(n48), .Y(n1164)
         );
  AOI22X1_RVT U8 ( .A1(n142), .A2(1'b0), .A3(frm_nat[6]), .A4(n134), .Y(n1151)
         );
  AOI22X2_RVT U9 ( .A1(n49), .A2(n16), .A3(frm_nat[8]), .A4(n135), .Y(n94) );
  AOI22X1_RVT U10 ( .A1(frm_nat[10]), .A2(n135), .A3(n142), .A4(1'b0), .Y(n51)
         );
  AOI22X1_RVT U11 ( .A1(frm_nat[11]), .A2(n135), .A3(n215), .A4(1'b0), .Y(n4)
         );
  AOI22X1_RVT U12 ( .A1(frm_nat[12]), .A2(n948), .A3(n143), .A4(1'b0), .Y(n23)
         );
  AO22X1_RVT U13 ( .A1(frm_nat[13]), .A2(n948), .A3(n142), .A4(1'b0), .Y(n1095) );
  AOI22X1_RVT U14 ( .A1(frm_nat[15]), .A2(n48), .A3(n215), .A4(1'b0), .Y(n24)
         );
  AND3X1_RVT U15 ( .A1(n1162), .A2(n354), .A3(adr[2]), .Y(n948) );
  INVX1_RVT U16 ( .A(n1162), .Y(n1) );
  INVX1_RVT U17 ( .A(n1), .Y(n3) );
  AND3X1_RVT U18 ( .A1(n353), .A2(n351), .A3(n34), .Y(n1163) );
  NAND2X0_RVT U19 ( .A1(n897), .A2(n1219), .Y(n1162) );
  INVX1_RVT U20 ( .A(adr[2]), .Y(n351) );
  AND2X1_RVT U21 ( .A1(adr[2]), .A2(n892), .Y(n910) );
  NOR2X0_RVT U22 ( .A1(n47), .A2(adr[2]), .Y(n912) );
  INVX1_RVT U23 ( .A(n892), .Y(n47) );
  NAND3X0_RVT U24 ( .A1(n3), .A2(funct_adr[6]), .A3(n1163), .Y(n1161) );
  NAND3X0_RVT U25 ( .A1(n3), .A2(funct_adr[5]), .A3(n1163), .Y(n1173) );
  AND3X1_RVT U26 ( .A1(n913), .A2(we), .A3(n910), .Y(ep1_we) );
  AND3X1_RVT U27 ( .A1(we), .A2(n912), .A3(n911), .Y(ep2_we) );
  AND3X1_RVT U28 ( .A1(n910), .A2(we), .A3(n911), .Y(ep3_we) );
  AND3X1_RVT U29 ( .A1(we), .A2(n912), .A3(n913), .Y(ep0_we) );
  NAND3X0_RVT U30 ( .A1(n167), .A2(n353), .A3(n34), .Y(n885) );
  AND2X1_RVT U31 ( .A1(n34), .A2(adr[1]), .Y(n1308) );
  INVX1_RVT U32 ( .A(n897), .Y(n343) );
  NAND4X0_RVT U33 ( .A1(we), .A2(n892), .A3(n893), .A4(n894), .Y(n1281) );
  AND3X1_RVT U34 ( .A1(n351), .A2(n350), .A3(n1221), .Y(n909) );
  AND3X1_RVT U35 ( .A1(n351), .A2(n350), .A3(adr[6]), .Y(n919) );
  AND3X1_RVT U36 ( .A1(adr[2]), .A2(n350), .A3(adr[6]), .Y(n918) );
  AND3X1_RVT U37 ( .A1(adr[3]), .A2(n351), .A3(adr[6]), .Y(n917) );
  AND3X1_RVT U38 ( .A1(adr[3]), .A2(adr[2]), .A3(adr[6]), .Y(n914) );
  AND3X1_RVT U39 ( .A1(adr[5]), .A2(n351), .A3(n911), .Y(n922) );
  AND3X1_RVT U40 ( .A1(adr[5]), .A2(adr[2]), .A3(n911), .Y(n921) );
  AND3X1_RVT U41 ( .A1(adr[2]), .A2(n350), .A3(n1221), .Y(n908) );
  AND3X1_RVT U42 ( .A1(n1221), .A2(n351), .A3(adr[3]), .Y(n907) );
  AND3X1_RVT U43 ( .A1(n1221), .A2(adr[2]), .A3(adr[3]), .Y(n906) );
  AND3X1_RVT U44 ( .A1(n913), .A2(n351), .A3(adr[5]), .Y(n905) );
  AND3X1_RVT U45 ( .A1(n913), .A2(adr[2]), .A3(adr[5]), .Y(n902) );
  AND3X1_RVT U46 ( .A1(n913), .A2(re), .A3(n910), .Y(ep1_re) );
  AND3X1_RVT U47 ( .A1(n912), .A2(re), .A3(n911), .Y(ep2_re) );
  AND3X1_RVT U48 ( .A1(n910), .A2(re), .A3(n911), .Y(ep3_re) );
  AND3X1_RVT U49 ( .A1(n912), .A2(re), .A3(n913), .Y(ep0_re) );
  INVX1_RVT U50 ( .A(frm_nat[9]), .Y(n138) );
  AO22X1_RVT U51 ( .A1(n290), .A2(din[0]), .A3(n877), .A4(funct_adr[0]), .Y(
        n1434) );
  AO22X1_RVT U52 ( .A1(n290), .A2(din[1]), .A3(n877), .A4(funct_adr[1]), .Y(
        n1435) );
  AO22X1_RVT U53 ( .A1(n290), .A2(din[2]), .A3(n877), .A4(funct_adr[2]), .Y(
        n1436) );
  AO22X1_RVT U54 ( .A1(n290), .A2(din[3]), .A3(n877), .A4(funct_adr[3]), .Y(
        n1437) );
  AO22X1_RVT U55 ( .A1(n290), .A2(din[4]), .A3(n877), .A4(funct_adr[4]), .Y(
        n1438) );
  AO22X1_RVT U56 ( .A1(n290), .A2(din[5]), .A3(n877), .A4(funct_adr[5]), .Y(
        n1439) );
  AO22X1_RVT U57 ( .A1(n290), .A2(din[6]), .A3(n877), .A4(funct_adr[6]), .Y(
        n1440) );
  AND3X1_RVT U58 ( .A1(din[5]), .A2(n167), .A3(n889), .Y(n125) );
  NAND3X0_RVT U59 ( .A1(we), .A2(n343), .A3(n889), .Y(n890) );
  NAND3X0_RVT U60 ( .A1(n351), .A2(n346), .A3(n911), .Y(n6) );
  NAND3X0_RVT U61 ( .A1(adr[2]), .A2(n346), .A3(n913), .Y(n7) );
  NAND3X0_RVT U62 ( .A1(adr[2]), .A2(n346), .A3(n911), .Y(n9) );
  NAND3X0_RVT U63 ( .A1(n1162), .A2(n354), .A3(adr[1]), .Y(n1160) );
  AOI22X1_RVT U64 ( .A1(frm_nat[25]), .A2(n48), .A3(n215), .A4(n334), .Y(n11)
         );
  AOI22X1_RVT U65 ( .A1(frm_nat[26]), .A2(n135), .A3(n143), .A4(n333), .Y(n12)
         );
  AOI22X1_RVT U66 ( .A1(frm_nat[27]), .A2(n948), .A3(n215), .A4(n330), .Y(n14)
         );
  AND2X1_RVT U67 ( .A1(n350), .A2(n349), .Y(n15) );
  INVX1_RVT U68 ( .A(n53), .Y(n142) );
  INVX1_RVT U71 ( .A(n354), .Y(n34) );
  INVX1_RVT U72 ( .A(adr[0]), .Y(n354) );
  NBUFFX2_RVT U73 ( .A(n893), .Y(n35) );
  NOR2X0_RVT U74 ( .A1(n351), .A2(n354), .Y(n893) );
  INVX1_RVT U75 ( .A(n52), .Y(n36) );
  INVX1_RVT U76 ( .A(n52), .Y(n234) );
  NAND3X0_RVT U77 ( .A1(n351), .A2(n346), .A3(n913), .Y(n52) );
  NBUFFX2_RVT U78 ( .A(din[24]), .Y(n38) );
  NBUFFX2_RVT U79 ( .A(din[17]), .Y(n39) );
  NBUFFX2_RVT U80 ( .A(din[16]), .Y(n40) );
  NBUFFX2_RVT U81 ( .A(din[18]), .Y(n41) );
  NBUFFX2_RVT U82 ( .A(din[19]), .Y(n42) );
  NBUFFX2_RVT U83 ( .A(din[21]), .Y(n43) );
  NBUFFX2_RVT U84 ( .A(din[20]), .Y(n44) );
  INVX0_RVT U85 ( .A(n161), .Y(n48) );
  NAND2X0_RVT U86 ( .A1(n912), .A2(n15), .Y(n897) );
  INVX0_RVT U87 ( .A(n1160), .Y(n49) );
  INVX0_RVT U88 ( .A(n1281), .Y(n293) );
  INVX0_RVT U89 ( .A(n53), .Y(n215) );
  INVX0_RVT U90 ( .A(n53), .Y(n143) );
  INVX1_RVT U91 ( .A(n830), .Y(n197) );
  INVX1_RVT U92 ( .A(n830), .Y(n198) );
  INVX1_RVT U93 ( .A(n830), .Y(n199) );
  INVX1_RVT U94 ( .A(n830), .Y(n201) );
  INVX1_RVT U95 ( .A(n830), .Y(n202) );
  INVX1_RVT U96 ( .A(n830), .Y(n193) );
  INVX1_RVT U97 ( .A(n830), .Y(n194) );
  INVX1_RVT U98 ( .A(n829), .Y(n214) );
  INVX1_RVT U99 ( .A(n829), .Y(n213) );
  INVX1_RVT U100 ( .A(n829), .Y(n210) );
  INVX1_RVT U101 ( .A(n829), .Y(n209) );
  INVX1_RVT U102 ( .A(n829), .Y(n207) );
  INVX1_RVT U103 ( .A(n829), .Y(n206) );
  INVX1_RVT U104 ( .A(n829), .Y(n205) );
  INVX1_RVT U105 ( .A(n828), .Y(n191) );
  INVX1_RVT U106 ( .A(n828), .Y(n190) );
  INVX1_RVT U107 ( .A(n828), .Y(n189) );
  INVX1_RVT U108 ( .A(n828), .Y(n186) );
  INVX1_RVT U109 ( .A(n828), .Y(n185) );
  INVX1_RVT U110 ( .A(n828), .Y(n183) );
  INVX1_RVT U111 ( .A(n828), .Y(n182) );
  INVX1_RVT U112 ( .A(n828), .Y(n181) );
  INVX1_RVT U113 ( .A(n52), .Y(n231) );
  INVX1_RVT U114 ( .A(n52), .Y(n233) );
  INVX1_RVT U115 ( .A(n6), .Y(n222) );
  INVX1_RVT U116 ( .A(n6), .Y(n225) );
  INVX1_RVT U117 ( .A(n274), .Y(n265) );
  INVX1_RVT U118 ( .A(n274), .Y(n271) );
  INVX1_RVT U119 ( .A(n274), .Y(n270) );
  INVX1_RVT U120 ( .A(n274), .Y(n266) );
  INVX1_RVT U121 ( .A(n274), .Y(n269) );
  INVX1_RVT U122 ( .A(n247), .Y(n237) );
  INVX1_RVT U123 ( .A(n247), .Y(n238) );
  INVX1_RVT U124 ( .A(n247), .Y(n239) );
  INVX1_RVT U125 ( .A(n247), .Y(n241) );
  INVX1_RVT U126 ( .A(n247), .Y(n242) );
  INVX1_RVT U127 ( .A(n247), .Y(n245) );
  INVX1_RVT U128 ( .A(n247), .Y(n246) );
  INVX1_RVT U129 ( .A(n261), .Y(n254) );
  INVX1_RVT U130 ( .A(n261), .Y(n253) );
  INVX1_RVT U131 ( .A(n261), .Y(n250) );
  INVX1_RVT U132 ( .A(n261), .Y(n249) );
  INVX1_RVT U133 ( .A(n261), .Y(n258) );
  INVX1_RVT U134 ( .A(n261), .Y(n257) );
  INVX1_RVT U135 ( .A(n261), .Y(n255) );
  AND3X1_RVT U136 ( .A1(n278), .A2(n282), .A3(n261), .Y(n850) );
  AND2X1_RVT U137 ( .A1(n261), .A2(n286), .Y(n32) );
  INVX1_RVT U138 ( .A(n829), .Y(n279) );
  INVX1_RVT U139 ( .A(n830), .Y(n277) );
  AND2X1_RVT U140 ( .A1(n286), .A2(n850), .Y(n1306) );
  AND2X1_RVT U141 ( .A1(n909), .A2(n904), .Y(ep4_re) );
  AND2X1_RVT U142 ( .A1(n909), .A2(n903), .Y(ep4_we) );
  INVX1_RVT U143 ( .A(n274), .Y(n273) );
  AND2X1_RVT U144 ( .A1(ep3_dout[5]), .A2(n217), .Y(n1168) );
  AND2X1_RVT U145 ( .A1(ep3_dout[6]), .A2(n217), .Y(n1155) );
  AND3X1_RVT U146 ( .A1(n350), .A2(n349), .A3(n353), .Y(n894) );
  AO22X1_RVT U147 ( .A1(ep3_dout[14]), .A2(n221), .A3(ep2_dout[14]), .A4(n223), 
        .Y(n1092) );
  AO22X1_RVT U148 ( .A1(ep3_dout[11]), .A2(n221), .A3(ep2_dout[11]), .A4(n223), 
        .Y(n1116) );
  NAND3X0_RVT U149 ( .A1(n350), .A2(n349), .A3(n910), .Y(n1219) );
  AND2X1_RVT U150 ( .A1(ep1_dout[6]), .A2(n230), .Y(n1157) );
  AO22X1_RVT U151 ( .A1(ep0_dout[5]), .A2(n36), .A3(ep2_dout[5]), .A4(n129), 
        .Y(n1169) );
  AO22X1_RVT U152 ( .A1(ep3_dout[13]), .A2(n221), .A3(ep2_dout[13]), .A4(n223), 
        .Y(n1100) );
  NAND2X0_RVT U153 ( .A1(n1308), .A2(n1162), .Y(n53) );
  INVX1_RVT U154 ( .A(n9), .Y(n217) );
  INVX1_RVT U155 ( .A(n7), .Y(n229) );
  INVX1_RVT U156 ( .A(n9), .Y(n218) );
  INVX1_RVT U157 ( .A(n7), .Y(n226) );
  AND2X1_RVT U158 ( .A1(n346), .A2(n345), .Y(n892) );
  INVX1_RVT U159 ( .A(n7), .Y(n230) );
  INVX1_RVT U160 ( .A(n9), .Y(n221) );
  AND2X1_RVT U161 ( .A1(n287), .A2(n54), .Y(n936) );
  AND2X1_RVT U162 ( .A1(n281), .A2(n285), .Y(n54) );
  INVX1_RVT U163 ( .A(clk), .Y(n274) );
  INVX1_RVT U164 ( .A(ep1_match), .Y(n278) );
  INVX1_RVT U165 ( .A(ep0_match), .Y(n261) );
  INVX1_RVT U166 ( .A(ep2_match), .Y(n282) );
  INVX1_RVT U167 ( .A(ep3_match), .Y(n286) );
  INVX1_RVT U168 ( .A(n63), .Y(n247) );
  AND4X1_RVT U169 ( .A1(n829), .A2(n828), .A3(n261), .A4(n830), .Y(n63) );
  AND3X1_RVT U170 ( .A1(n349), .A2(n346), .A3(we), .Y(n915) );
  AND3X1_RVT U171 ( .A1(n349), .A2(n346), .A3(re), .Y(n916) );
  AND2X1_RVT U172 ( .A1(we), .A2(n345), .Y(n903) );
  AND2X1_RVT U173 ( .A1(re), .A2(n345), .Y(n904) );
  NAND3X0_RVT U174 ( .A1(n261), .A2(n278), .A3(ep2_match), .Y(n828) );
  AND2X1_RVT U175 ( .A1(n919), .A2(n915), .Y(ep12_we) );
  AND2X1_RVT U176 ( .A1(n918), .A2(n915), .Y(ep13_we) );
  AND2X1_RVT U177 ( .A1(n917), .A2(n915), .Y(ep14_we) );
  AND2X1_RVT U178 ( .A1(n914), .A2(n915), .Y(ep15_we) );
  AND2X1_RVT U179 ( .A1(n919), .A2(n916), .Y(ep12_re) );
  AND2X1_RVT U180 ( .A1(n918), .A2(n916), .Y(ep13_re) );
  AND2X1_RVT U181 ( .A1(n917), .A2(n916), .Y(ep14_re) );
  AND2X1_RVT U182 ( .A1(n916), .A2(n914), .Y(ep15_re) );
  AND2X1_RVT U183 ( .A1(n904), .A2(n902), .Y(ep9_re) );
  AND2X1_RVT U184 ( .A1(n922), .A2(n904), .Y(ep10_re) );
  AND2X1_RVT U185 ( .A1(n922), .A2(n903), .Y(ep10_we) );
  AND2X1_RVT U186 ( .A1(n921), .A2(n904), .Y(ep11_re) );
  AND2X1_RVT U187 ( .A1(n921), .A2(n903), .Y(ep11_we) );
  AND2X1_RVT U188 ( .A1(n908), .A2(n904), .Y(ep5_re) );
  AND2X1_RVT U189 ( .A1(n908), .A2(n903), .Y(ep5_we) );
  AND2X1_RVT U190 ( .A1(n907), .A2(n904), .Y(ep6_re) );
  AND2X1_RVT U191 ( .A1(n907), .A2(n903), .Y(ep6_we) );
  AND2X1_RVT U192 ( .A1(n906), .A2(n904), .Y(ep7_re) );
  AND2X1_RVT U193 ( .A1(n906), .A2(n903), .Y(ep7_we) );
  AND2X1_RVT U194 ( .A1(n905), .A2(n904), .Y(ep8_re) );
  AND2X1_RVT U195 ( .A1(n905), .A2(n903), .Y(ep8_we) );
  AND2X1_RVT U196 ( .A1(n902), .A2(n903), .Y(ep9_we) );
  NAND2X0_RVT U197 ( .A1(ep1_match), .A2(n261), .Y(n829) );
  NAND2X0_RVT U198 ( .A1(ep3_match), .A2(n850), .Y(n830) );
  AO22X1_RVT U199 ( .A1(utmi_vend_ctrl_r[0]), .A2(n1281), .A3(din[0]), .A4(
        n293), .Y(n28) );
  AO22X1_RVT U200 ( .A1(utmi_vend_ctrl_r[1]), .A2(n1281), .A3(din[1]), .A4(
        n293), .Y(n25) );
  AO22X1_RVT U201 ( .A1(utmi_vend_ctrl_r[2]), .A2(n1281), .A3(din[2]), .A4(
        n293), .Y(n26) );
  AO22X1_RVT U202 ( .A1(utmi_vend_ctrl_r[3]), .A2(n1281), .A3(din[3]), .A4(
        n293), .Y(n27) );
  OA221X1_RVT U203 ( .A1(n1234), .A2(n1160), .A3(n1148), .A4(n1224), .A5(n1161), .Y(n1152) );
  OA221X1_RVT U204 ( .A1(n1235), .A2(n1160), .A3(n1148), .A4(n1223), .A5(n1173), .Y(n1165) );
  INVX1_RVT U205 ( .A(frm_nat[14]), .Y(n157) );
  NAND2X0_RVT U206 ( .A1(n56), .A2(n57), .Y(N196) );
  NAND2X0_RVT U207 ( .A1(frm_nat[29]), .A2(n48), .Y(n56) );
  AOI221X1_RVT U208 ( .A1(ep0_dout[29]), .A2(n36), .A3(ep1_dout[29]), .A4(n229), .A5(n970), .Y(n57) );
  NAND3X0_RVT U209 ( .A1(n60), .A2(n61), .A3(n62), .Y(N168) );
  AOI221X1_RVT U210 ( .A1(ep2_dout[1]), .A2(n225), .A3(ep0_dout[1]), .A4(n36), 
        .A5(n1210), .Y(n60) );
  NAND2X0_RVT U211 ( .A1(ep1_dout[1]), .A2(n230), .Y(n61) );
  AOI21X1_RVT U212 ( .A1(frm_nat[1]), .A2(n134), .A3(n1207), .Y(n62) );
  NAND3X0_RVT U213 ( .A1(n65), .A2(n66), .A3(n69), .Y(N169) );
  AOI221X1_RVT U214 ( .A1(ep2_dout[2]), .A2(n223), .A3(ep0_dout[2]), .A4(n231), 
        .A5(n1201), .Y(n65) );
  NAND2X0_RVT U215 ( .A1(ep1_dout[2]), .A2(n230), .Y(n66) );
  AOI21X1_RVT U216 ( .A1(frm_nat[2]), .A2(n135), .A3(n1198), .Y(n69) );
  NAND3X0_RVT U217 ( .A1(n70), .A2(n71), .A3(n73), .Y(N171) );
  AOI221X1_RVT U218 ( .A1(ep2_dout[4]), .A2(n225), .A3(ep0_dout[4]), .A4(n233), 
        .A5(n1183), .Y(n70) );
  NAND2X0_RVT U219 ( .A1(ep1_dout[4]), .A2(n230), .Y(n71) );
  AOI21X1_RVT U220 ( .A1(frm_nat[4]), .A2(n48), .A3(n1179), .Y(n73) );
  NAND3X0_RVT U221 ( .A1(n74), .A2(n77), .A3(n78), .Y(N167) );
  AOI221X1_RVT U222 ( .A1(ep2_dout[0]), .A2(n129), .A3(ep0_dout[0]), .A4(n234), 
        .A5(n1222), .Y(n74) );
  NAND2X0_RVT U223 ( .A1(ep1_dout[0]), .A2(n230), .Y(n77) );
  AOI21X1_RVT U224 ( .A1(frm_nat[0]), .A2(n134), .A3(n1217), .Y(n78) );
  NAND2X0_RVT U225 ( .A1(n79), .A2(n81), .Y(N189) );
  AOI222X1_RVT U226 ( .A1(n143), .A2(n338), .A3(n162), .A4(n318), .A5(
        frm_nat[22]), .A6(n134), .Y(n79) );
  AOI221X1_RVT U227 ( .A1(ep0_dout[22]), .A2(n231), .A3(ep1_dout[22]), .A4(
        n229), .A5(n1028), .Y(n81) );
  NAND2X0_RVT U228 ( .A1(n85), .A2(n82), .Y(N191) );
  AOI222X1_RVT U229 ( .A1(n142), .A2(n335), .A3(n49), .A4(n314), .A5(
        frm_nat[24]), .A6(n48), .Y(n82) );
  AOI221X1_RVT U230 ( .A1(ep0_dout[24]), .A2(n233), .A3(ep1_dout[24]), .A4(
        n229), .A5(n1012), .Y(n85) );
  NAND2X0_RVT U231 ( .A1(n86), .A2(n87), .Y(N188) );
  AOI222X1_RVT U232 ( .A1(n142), .A2(n341), .A3(n49), .A4(n319), .A5(
        frm_nat[21]), .A6(n134), .Y(n86) );
  AOI221X1_RVT U233 ( .A1(ep0_dout[21]), .A2(n234), .A3(ep1_dout[21]), .A4(
        n229), .A5(n1036), .Y(n87) );
  NAND2X0_RVT U234 ( .A1(n90), .A2(n89), .Y(N190) );
  AOI222X1_RVT U235 ( .A1(n215), .A2(n337), .A3(n162), .A4(n317), .A5(
        frm_nat[23]), .A6(n948), .Y(n89) );
  AOI221X1_RVT U236 ( .A1(ep0_dout[23]), .A2(n36), .A3(ep1_dout[23]), .A4(n229), .A5(n1020), .Y(n90) );
  NAND2X0_RVT U237 ( .A1(n93), .A2(n12), .Y(N193) );
  AOI221X1_RVT U238 ( .A1(ep0_dout[26]), .A2(n231), .A3(ep1_dout[26]), .A4(
        n229), .A5(n995), .Y(n93) );
  NAND2X0_RVT U239 ( .A1(n95), .A2(n94), .Y(N175) );
  AOI221X1_RVT U240 ( .A1(ep0_dout[8]), .A2(n233), .A3(ep1_dout[8]), .A4(n226), 
        .A5(n1140), .Y(n95) );
  NAND2X0_RVT U241 ( .A1(n14), .A2(n97), .Y(N194) );
  AOI221X1_RVT U242 ( .A1(ep0_dout[27]), .A2(n233), .A3(ep1_dout[27]), .A4(
        n229), .A5(n987), .Y(n97) );
  NAND2X0_RVT U243 ( .A1(n98), .A2(n101), .Y(N198) );
  NAND2X0_RVT U244 ( .A1(frm_nat[31]), .A2(n135), .Y(n98) );
  AOI221X1_RVT U245 ( .A1(ep0_dout[31]), .A2(n233), .A3(ep1_dout[31]), .A4(
        n229), .A5(n952), .Y(n101) );
  NAND2X0_RVT U246 ( .A1(n103), .A2(n102), .Y(N197) );
  NAND2X0_RVT U247 ( .A1(frm_nat[30]), .A2(n948), .Y(n102) );
  AOI221X1_RVT U248 ( .A1(ep0_dout[30]), .A2(n234), .A3(ep1_dout[30]), .A4(
        n229), .A5(n962), .Y(n103) );
  NAND2X0_RVT U249 ( .A1(n105), .A2(n106), .Y(N186) );
  AOI22X1_RVT U250 ( .A1(frm_nat[19]), .A2(n134), .A3(n162), .A4(n321), .Y(
        n105) );
  AOI221X1_RVT U251 ( .A1(ep0_dout[19]), .A2(n36), .A3(ep1_dout[19]), .A4(n226), .A5(n1052), .Y(n106) );
  AO222X1_RVT U252 ( .A1(n1163), .A2(funct_adr[0]), .A3(suspend), .A4(n1181), 
        .A5(utmi_vend_stat_r[0]), .A6(n35), .Y(n1218) );
  AO222X1_RVT U253 ( .A1(n1163), .A2(funct_adr[1]), .A3(mode_hs), .A4(n1181), 
        .A5(utmi_vend_stat_r[1]), .A6(n35), .Y(n1208) );
  AO222X1_RVT U254 ( .A1(n1163), .A2(funct_adr[2]), .A3(usb_attached), .A4(
        n1181), .A5(utmi_vend_stat_r[2]), .A6(n35), .Y(n1199) );
  AO222X1_RVT U255 ( .A1(n1163), .A2(funct_adr[4]), .A3(line_stat[1]), .A4(
        n1181), .A5(utmi_vend_stat_r[4]), .A6(n35), .Y(n1180) );
  AO222X1_RVT U256 ( .A1(n1163), .A2(funct_adr[3]), .A3(line_stat[0]), .A4(
        n1181), .A5(utmi_vend_stat_r[3]), .A6(n35), .Y(n1190) );
  NAND3X0_RVT U257 ( .A1(n109), .A2(n110), .A3(n111), .Y(N170) );
  AOI221X1_RVT U258 ( .A1(ep2_dout[3]), .A2(n129), .A3(ep0_dout[3]), .A4(n36), 
        .A5(n1192), .Y(n109) );
  NAND2X0_RVT U259 ( .A1(ep1_dout[3]), .A2(n230), .Y(n110) );
  AOI21X1_RVT U260 ( .A1(frm_nat[3]), .A2(n134), .A3(n1189), .Y(n111) );
  NAND3X0_RVT U261 ( .A1(n113), .A2(n114), .A3(n117), .Y(N174) );
  AOI221X1_RVT U262 ( .A1(ep2_dout[7]), .A2(n222), .A3(ep0_dout[7]), .A4(n231), 
        .A5(n1150), .Y(n113) );
  NAND2X0_RVT U263 ( .A1(ep1_dout[7]), .A2(n230), .Y(n114) );
  AOI21X1_RVT U264 ( .A1(frm_nat[7]), .A2(n135), .A3(n1146), .Y(n117) );
  NAND3X0_RVT U265 ( .A1(n874), .A2(n354), .A3(adr[1]), .Y(n873) );
  NAND2X0_RVT U266 ( .A1(n118), .A2(n119), .Y(N195) );
  AOI22X1_RVT U267 ( .A1(frm_nat[28]), .A2(n48), .A3(n142), .A4(n329), .Y(n118) );
  AOI221X1_RVT U268 ( .A1(ep0_dout[28]), .A2(n231), .A3(ep1_dout[28]), .A4(
        n229), .A5(n979), .Y(n119) );
  NAND2X0_RVT U269 ( .A1(n11), .A2(n121), .Y(N192) );
  AOI221X1_RVT U270 ( .A1(ep0_dout[25]), .A2(n233), .A3(ep1_dout[25]), .A4(
        n229), .A5(n1003), .Y(n121) );
  OR2X1_RVT U271 ( .A1(n122), .A2(n125), .Y(n1441) );
  AND4X1_RVT U272 ( .A1(rf_resume_req_r), .A2(n262), .A3(n890), .A4(n1287), 
        .Y(n122) );
  INVX0_RVT U273 ( .A(adr[1]), .Y(n353) );
  INVX1_RVT U274 ( .A(adr[3]), .Y(n350) );
  AND2X1_RVT U275 ( .A1(adr[4]), .A2(n350), .Y(n913) );
  INVX1_RVT U276 ( .A(adr[5]), .Y(n346) );
  AND2X1_RVT U277 ( .A1(adr[3]), .A2(adr[4]), .Y(n911) );
  INVX1_RVT U278 ( .A(adr[4]), .Y(n349) );
  INVX1_RVT U279 ( .A(adr[6]), .Y(n345) );
  OA21X1_RVT U280 ( .A1(pid_cs_err_r), .A2(n341), .A3(n2), .Y(n1310) );
  OA21X1_RVT U281 ( .A1(n8), .A2(n335), .A3(n2), .Y(n1313) );
  AND2X1_RVT U282 ( .A1(suspend_r1), .A2(n22), .Y(n8) );
  OA21X1_RVT U283 ( .A1(n10), .A2(n334), .A3(n2), .Y(n1314) );
  NOR2X0_RVT U284 ( .A1(n327), .A2(n1288), .Y(n10) );
  OA21X1_RVT U285 ( .A1(n13), .A2(n333), .A3(n2), .Y(n1315) );
  AND2X1_RVT U286 ( .A1(n1288), .A2(n327), .Y(n13) );
  OA21X1_RVT U287 ( .A1(nse_err_r), .A2(n338), .A3(n2), .Y(n1311) );
  OA21X1_RVT U288 ( .A1(n5), .A2(n337), .A3(n2), .Y(n1312) );
  NOR2X0_RVT U289 ( .A1(n22), .A2(suspend_r1), .Y(n5) );
  OA21X1_RVT U290 ( .A1(rx_err_r), .A2(n330), .A3(n2), .Y(n1316) );
  OA21X1_RVT U291 ( .A1(usb_reset_r), .A2(n329), .A3(n2), .Y(n1317) );
  OA21X1_RVT U292 ( .A1(n342), .A2(crc5_err_r), .A3(n2), .Y(n1309) );
  INVX1_RVT U293 ( .A(rst), .Y(n263) );
  OA222X1_RVT U294 ( .A1(n1238), .A2(n1257), .A3(n1240), .A4(n1259), .A5(n1239), .A6(n1258), .Y(n941) );
  OA222X1_RVT U295 ( .A1(n1241), .A2(n1250), .A3(n1243), .A4(n1252), .A5(n1242), .A6(n1251), .Y(n928) );
  OA222X1_RVT U296 ( .A1(n1244), .A2(n1254), .A3(n1246), .A4(n1256), .A5(n1245), .A6(n1255), .Y(n929) );
  OA222X1_RVT U297 ( .A1(n1247), .A2(n1257), .A3(n1249), .A4(n1259), .A5(n1248), .A6(n1258), .Y(n930) );
  OR2X1_RVT U298 ( .A1(ep1_intb), .A2(ep2_intb), .Y(n932) );
  INVX1_RVT U299 ( .A(ep3_inta), .Y(n287) );
  INVX1_RVT U300 ( .A(ep1_inta), .Y(n281) );
  INVX1_RVT U301 ( .A(ep2_inta), .Y(n285) );
  INVX1_RVT U302 ( .A(ep0_inta), .Y(n289) );
  NAND4X0_RVT U303 ( .A1(n933), .A2(n934), .A3(n935), .A4(n936), .Y(N650) );
  OA222X1_RVT U304 ( .A1(n1232), .A2(n1250), .A3(n1234), .A4(n1252), .A5(n1233), .A6(n1251), .Y(n933) );
  OA222X1_RVT U305 ( .A1(n1235), .A2(n1254), .A3(n1237), .A4(n1256), .A5(n1236), .A6(n1255), .Y(n934) );
  AND2X1_RVT U306 ( .A1(n289), .A2(n941), .Y(n935) );
  INVX1_RVT U307 ( .A(ep0_intb), .Y(n931) );
  OR3X2_RVT U308 ( .A1(n932), .A2(n126), .A3(ep3_intb), .Y(N651) );
  NAND4X0_RVT U309 ( .A1(n928), .A2(n929), .A3(n930), .A4(n931), .Y(n126) );
  AND2X1_RVT U310 ( .A1(n237), .A2(csr[14]), .Y(n1398) );
  AND2X1_RVT U311 ( .A1(ep0_dma_in_buf_sz1), .A2(n258), .Y(n55) );
  AND2X1_RVT U312 ( .A1(adr[5]), .A2(n349), .Y(n1221) );
  AND2X1_RVT U313 ( .A1(ep0_match), .A2(ep0_dma_out_buf_avail), .Y(n37) );
  OR2X1_RVT U314 ( .A1(n19), .A2(n18), .Y(n1318) );
  AO221X1_RVT U315 ( .A1(ep1_dma_out_buf_avail), .A2(n279), .A3(
        ep2_dma_out_buf_avail), .A4(n191), .A5(n31), .Y(n19) );
  AO21X1_RVT U316 ( .A1(ep3_dma_out_buf_avail), .A2(n193), .A3(n37), .Y(n18)
         );
  AND4X1_RVT U317 ( .A1(n32), .A2(n278), .A3(n282), .A4(dma_out_buf_avail), 
        .Y(n31) );
  OR2X1_RVT U318 ( .A1(n46), .A2(n45), .Y(n1319) );
  AO221X1_RVT U319 ( .A1(ep1_dma_in_buf_sz1), .A2(n214), .A3(
        ep2_dma_in_buf_sz1), .A4(n191), .A5(n50), .Y(n46) );
  AO21X1_RVT U320 ( .A1(ep3_dma_in_buf_sz1), .A2(n193), .A3(n55), .Y(n45) );
  AND4X1_RVT U321 ( .A1(n32), .A2(n278), .A3(n282), .A4(dma_in_buf_sz1), .Y(
        n50) );
  OR2X1_RVT U322 ( .A1(n59), .A2(n58), .Y(n1320) );
  AO222X1_RVT U323 ( .A1(ep1_buf1[0]), .A2(n214), .A3(n237), .A4(buf1[0]), 
        .A5(ep2_buf1[0]), .A6(n191), .Y(n59) );
  AO21X1_RVT U324 ( .A1(ep3_buf1[0]), .A2(n277), .A3(n64), .Y(n58) );
  AND2X1_RVT U325 ( .A1(ep0_buf1[0]), .A2(n255), .Y(n64) );
  OR2X1_RVT U326 ( .A1(n68), .A2(n67), .Y(n1321) );
  AO222X1_RVT U327 ( .A1(ep1_buf1[1]), .A2(n214), .A3(n237), .A4(buf1[1]), 
        .A5(ep2_buf1[1]), .A6(n191), .Y(n68) );
  AO21X1_RVT U328 ( .A1(ep3_buf1[1]), .A2(n277), .A3(n72), .Y(n67) );
  AND2X1_RVT U329 ( .A1(ep0_buf1[1]), .A2(n255), .Y(n72) );
  OR2X1_RVT U330 ( .A1(n76), .A2(n75), .Y(n1322) );
  AO222X1_RVT U331 ( .A1(ep1_buf1[2]), .A2(n214), .A3(n237), .A4(buf1[2]), 
        .A5(ep2_buf1[2]), .A6(n191), .Y(n76) );
  AO21X1_RVT U332 ( .A1(ep3_buf1[2]), .A2(n277), .A3(n80), .Y(n75) );
  AND2X1_RVT U333 ( .A1(ep0_buf1[2]), .A2(n255), .Y(n80) );
  OR2X1_RVT U334 ( .A1(n84), .A2(n83), .Y(n1323) );
  AO222X1_RVT U335 ( .A1(ep1_buf1[3]), .A2(n214), .A3(n237), .A4(buf1[3]), 
        .A5(ep2_buf1[3]), .A6(n191), .Y(n84) );
  AO21X1_RVT U336 ( .A1(ep3_buf1[3]), .A2(n197), .A3(n88), .Y(n83) );
  AND2X1_RVT U337 ( .A1(ep0_buf1[3]), .A2(n255), .Y(n88) );
  OR2X1_RVT U338 ( .A1(n92), .A2(n91), .Y(n1324) );
  AO222X1_RVT U339 ( .A1(ep1_buf1[4]), .A2(n214), .A3(n237), .A4(buf1[4]), 
        .A5(ep2_buf1[4]), .A6(n191), .Y(n92) );
  AO21X1_RVT U340 ( .A1(ep3_buf1[4]), .A2(n197), .A3(n96), .Y(n91) );
  AND2X1_RVT U341 ( .A1(ep0_buf1[4]), .A2(n254), .Y(n96) );
  OR2X1_RVT U342 ( .A1(n100), .A2(n99), .Y(n1325) );
  AO222X1_RVT U343 ( .A1(ep1_buf1[5]), .A2(n214), .A3(n237), .A4(buf1[5]), 
        .A5(ep2_buf1[5]), .A6(n191), .Y(n100) );
  AO21X1_RVT U344 ( .A1(ep3_buf1[5]), .A2(n197), .A3(n104), .Y(n99) );
  AND2X1_RVT U345 ( .A1(ep0_buf1[5]), .A2(n254), .Y(n104) );
  OR2X1_RVT U346 ( .A1(n108), .A2(n107), .Y(n1326) );
  AO222X1_RVT U347 ( .A1(ep1_buf1[6]), .A2(n214), .A3(n237), .A4(buf1[6]), 
        .A5(ep2_buf1[6]), .A6(n191), .Y(n108) );
  AO21X1_RVT U348 ( .A1(ep3_buf1[6]), .A2(n197), .A3(n112), .Y(n107) );
  AND2X1_RVT U349 ( .A1(ep0_buf1[6]), .A2(n254), .Y(n112) );
  OR2X1_RVT U350 ( .A1(n116), .A2(n115), .Y(n1327) );
  AO222X1_RVT U351 ( .A1(ep1_buf1[7]), .A2(n214), .A3(n237), .A4(buf1[7]), 
        .A5(ep2_buf1[7]), .A6(n191), .Y(n116) );
  AO21X1_RVT U352 ( .A1(ep3_buf1[7]), .A2(n197), .A3(n120), .Y(n115) );
  AND2X1_RVT U353 ( .A1(ep0_buf1[7]), .A2(n254), .Y(n120) );
  OR2X1_RVT U354 ( .A1(n124), .A2(n123), .Y(n1328) );
  AO222X1_RVT U355 ( .A1(ep1_buf1[8]), .A2(n214), .A3(n237), .A4(buf1[8]), 
        .A5(ep2_buf1[8]), .A6(n191), .Y(n124) );
  AO21X1_RVT U356 ( .A1(ep3_buf1[8]), .A2(n197), .A3(n128), .Y(n123) );
  AND2X1_RVT U357 ( .A1(ep0_buf1[8]), .A2(n254), .Y(n128) );
  OR2X1_RVT U358 ( .A1(n132), .A2(n131), .Y(n1329) );
  AO222X1_RVT U359 ( .A1(ep1_buf1[9]), .A2(n214), .A3(n237), .A4(buf1[9]), 
        .A5(ep2_buf1[9]), .A6(n191), .Y(n132) );
  AO21X1_RVT U360 ( .A1(ep3_buf1[9]), .A2(n197), .A3(n136), .Y(n131) );
  AND2X1_RVT U361 ( .A1(ep0_buf1[9]), .A2(n254), .Y(n136) );
  OR2X1_RVT U362 ( .A1(n140), .A2(n139), .Y(n1330) );
  AO222X1_RVT U363 ( .A1(ep1_buf1[10]), .A2(n214), .A3(n237), .A4(buf1[10]), 
        .A5(ep2_buf1[10]), .A6(n191), .Y(n140) );
  AO21X1_RVT U364 ( .A1(ep3_buf1[10]), .A2(n197), .A3(n144), .Y(n139) );
  AND2X1_RVT U365 ( .A1(ep0_buf1[10]), .A2(n254), .Y(n144) );
  OR2X1_RVT U366 ( .A1(n148), .A2(n147), .Y(n1331) );
  AO222X1_RVT U367 ( .A1(ep1_buf1[11]), .A2(n213), .A3(n238), .A4(buf1[11]), 
        .A5(ep2_buf1[11]), .A6(n190), .Y(n148) );
  AO21X1_RVT U368 ( .A1(ep3_buf1[11]), .A2(n197), .A3(n152), .Y(n147) );
  AND2X1_RVT U369 ( .A1(ep0_buf1[11]), .A2(n254), .Y(n152) );
  OR2X1_RVT U370 ( .A1(n156), .A2(n155), .Y(n1332) );
  AO222X1_RVT U371 ( .A1(ep1_buf1[12]), .A2(n213), .A3(n238), .A4(buf1[12]), 
        .A5(ep2_buf1[12]), .A6(n190), .Y(n156) );
  AO21X1_RVT U372 ( .A1(ep3_buf1[12]), .A2(n197), .A3(n160), .Y(n155) );
  AND2X1_RVT U373 ( .A1(ep0_buf1[12]), .A2(n254), .Y(n160) );
  OR2X1_RVT U374 ( .A1(n164), .A2(n163), .Y(n1333) );
  AO222X1_RVT U375 ( .A1(ep1_buf1[13]), .A2(n213), .A3(n238), .A4(buf1[13]), 
        .A5(ep2_buf1[13]), .A6(n190), .Y(n164) );
  AO21X1_RVT U376 ( .A1(ep3_buf1[13]), .A2(n197), .A3(n168), .Y(n163) );
  AND2X1_RVT U377 ( .A1(ep0_buf1[13]), .A2(n254), .Y(n168) );
  OR2X1_RVT U378 ( .A1(n172), .A2(n171), .Y(n1334) );
  AO222X1_RVT U379 ( .A1(ep1_buf1[14]), .A2(n213), .A3(n238), .A4(buf1[14]), 
        .A5(ep2_buf1[14]), .A6(n190), .Y(n172) );
  AO21X1_RVT U380 ( .A1(ep3_buf1[14]), .A2(n197), .A3(n176), .Y(n171) );
  AND2X1_RVT U381 ( .A1(ep0_buf1[14]), .A2(n254), .Y(n176) );
  OR2X1_RVT U382 ( .A1(n180), .A2(n179), .Y(n1335) );
  AO222X1_RVT U383 ( .A1(ep1_buf1[15]), .A2(n213), .A3(n238), .A4(buf1[15]), 
        .A5(ep2_buf1[15]), .A6(n190), .Y(n180) );
  AO21X1_RVT U384 ( .A1(ep3_buf1[15]), .A2(n198), .A3(n184), .Y(n179) );
  AND2X1_RVT U385 ( .A1(ep0_buf1[15]), .A2(n254), .Y(n184) );
  OR2X1_RVT U386 ( .A1(n188), .A2(n187), .Y(n1336) );
  AO222X1_RVT U387 ( .A1(ep1_buf1[16]), .A2(n213), .A3(n238), .A4(buf1[16]), 
        .A5(ep2_buf1[16]), .A6(n190), .Y(n188) );
  AO21X1_RVT U388 ( .A1(ep3_buf1[16]), .A2(n198), .A3(n192), .Y(n187) );
  AND2X1_RVT U389 ( .A1(ep0_buf1[16]), .A2(n253), .Y(n192) );
  OR2X1_RVT U390 ( .A1(n196), .A2(n195), .Y(n1337) );
  AO222X1_RVT U391 ( .A1(ep1_buf1[17]), .A2(n213), .A3(n238), .A4(buf1[17]), 
        .A5(ep2_buf1[17]), .A6(n190), .Y(n196) );
  AO21X1_RVT U392 ( .A1(ep3_buf1[17]), .A2(n198), .A3(n200), .Y(n195) );
  AND2X1_RVT U393 ( .A1(ep0_buf1[17]), .A2(n253), .Y(n200) );
  OR2X1_RVT U394 ( .A1(n204), .A2(n203), .Y(n1338) );
  AO222X1_RVT U395 ( .A1(ep1_buf1[18]), .A2(n213), .A3(n238), .A4(buf1[18]), 
        .A5(ep2_buf1[18]), .A6(n190), .Y(n204) );
  AO21X1_RVT U396 ( .A1(ep3_buf1[18]), .A2(n198), .A3(n208), .Y(n203) );
  AND2X1_RVT U397 ( .A1(ep0_buf1[18]), .A2(n253), .Y(n208) );
  OR2X1_RVT U398 ( .A1(n212), .A2(n211), .Y(n1339) );
  AO222X1_RVT U399 ( .A1(ep1_buf1[19]), .A2(n213), .A3(n238), .A4(buf1[19]), 
        .A5(ep2_buf1[19]), .A6(n190), .Y(n212) );
  AO21X1_RVT U400 ( .A1(ep3_buf1[19]), .A2(n198), .A3(n216), .Y(n211) );
  AND2X1_RVT U401 ( .A1(ep0_buf1[19]), .A2(n253), .Y(n216) );
  OR2X1_RVT U402 ( .A1(n220), .A2(n219), .Y(n1340) );
  AO222X1_RVT U403 ( .A1(ep1_buf1[20]), .A2(n213), .A3(n238), .A4(buf1[20]), 
        .A5(ep2_buf1[20]), .A6(n190), .Y(n220) );
  AO21X1_RVT U404 ( .A1(ep3_buf1[20]), .A2(n198), .A3(n224), .Y(n219) );
  AND2X1_RVT U405 ( .A1(ep0_buf1[20]), .A2(n253), .Y(n224) );
  OR2X1_RVT U406 ( .A1(n228), .A2(n227), .Y(n1341) );
  AO222X1_RVT U407 ( .A1(ep1_buf1[21]), .A2(n213), .A3(n238), .A4(buf1[21]), 
        .A5(ep2_buf1[21]), .A6(n190), .Y(n228) );
  AO21X1_RVT U408 ( .A1(ep3_buf1[21]), .A2(n198), .A3(n232), .Y(n227) );
  AND2X1_RVT U409 ( .A1(ep0_buf1[21]), .A2(n253), .Y(n232) );
  OR2X1_RVT U410 ( .A1(n236), .A2(n235), .Y(n1342) );
  AO222X1_RVT U411 ( .A1(ep1_buf1[22]), .A2(n213), .A3(n238), .A4(buf1[22]), 
        .A5(ep2_buf1[22]), .A6(n190), .Y(n236) );
  AO21X1_RVT U412 ( .A1(ep3_buf1[22]), .A2(n198), .A3(n240), .Y(n235) );
  AND2X1_RVT U413 ( .A1(ep0_buf1[22]), .A2(n253), .Y(n240) );
  OR2X1_RVT U414 ( .A1(n244), .A2(n243), .Y(n1343) );
  AO222X1_RVT U415 ( .A1(ep1_buf1[23]), .A2(n210), .A3(n239), .A4(buf1[23]), 
        .A5(ep2_buf1[23]), .A6(n189), .Y(n244) );
  AO21X1_RVT U416 ( .A1(ep3_buf1[23]), .A2(n198), .A3(n248), .Y(n243) );
  AND2X1_RVT U417 ( .A1(ep0_buf1[23]), .A2(n253), .Y(n248) );
  OR2X1_RVT U418 ( .A1(n252), .A2(n251), .Y(n1344) );
  AO222X1_RVT U419 ( .A1(ep1_buf1[24]), .A2(n210), .A3(n239), .A4(buf1[24]), 
        .A5(ep2_buf1[24]), .A6(n189), .Y(n252) );
  AO21X1_RVT U420 ( .A1(ep3_buf1[24]), .A2(n198), .A3(n256), .Y(n251) );
  AND2X1_RVT U421 ( .A1(ep0_buf1[24]), .A2(n253), .Y(n256) );
  OR2X1_RVT U422 ( .A1(n260), .A2(n259), .Y(n1345) );
  AO222X1_RVT U423 ( .A1(ep1_buf1[25]), .A2(n210), .A3(n239), .A4(buf1[25]), 
        .A5(ep2_buf1[25]), .A6(n189), .Y(n260) );
  AO21X1_RVT U424 ( .A1(ep3_buf1[25]), .A2(n198), .A3(n264), .Y(n259) );
  AND2X1_RVT U425 ( .A1(ep0_buf1[25]), .A2(n253), .Y(n264) );
  OR2X1_RVT U426 ( .A1(n268), .A2(n267), .Y(n1346) );
  AO222X1_RVT U427 ( .A1(ep1_buf1[26]), .A2(n210), .A3(n239), .A4(buf1[26]), 
        .A5(ep2_buf1[26]), .A6(n189), .Y(n268) );
  AO21X1_RVT U428 ( .A1(ep3_buf1[26]), .A2(n198), .A3(n272), .Y(n267) );
  AND2X1_RVT U429 ( .A1(ep0_buf1[26]), .A2(n253), .Y(n272) );
  OR2X1_RVT U430 ( .A1(n276), .A2(n275), .Y(n1347) );
  AO222X1_RVT U431 ( .A1(ep1_buf1[27]), .A2(n210), .A3(n239), .A4(buf1[27]), 
        .A5(ep2_buf1[27]), .A6(n189), .Y(n276) );
  AO21X1_RVT U432 ( .A1(ep3_buf1[27]), .A2(n199), .A3(n280), .Y(n275) );
  AND2X1_RVT U433 ( .A1(ep0_buf1[27]), .A2(n253), .Y(n280) );
  OR2X1_RVT U434 ( .A1(n284), .A2(n283), .Y(n1348) );
  AO222X1_RVT U435 ( .A1(ep1_buf1[28]), .A2(n210), .A3(n239), .A4(buf1[28]), 
        .A5(ep2_buf1[28]), .A6(n189), .Y(n284) );
  AO21X1_RVT U436 ( .A1(ep3_buf1[28]), .A2(n199), .A3(n288), .Y(n283) );
  AND2X1_RVT U437 ( .A1(ep0_buf1[28]), .A2(n250), .Y(n288) );
  OR2X1_RVT U438 ( .A1(n292), .A2(n291), .Y(n1349) );
  AO222X1_RVT U439 ( .A1(ep1_buf1[29]), .A2(n210), .A3(n239), .A4(buf1[29]), 
        .A5(ep2_buf1[29]), .A6(n189), .Y(n292) );
  AO21X1_RVT U440 ( .A1(ep3_buf1[29]), .A2(n199), .A3(n296), .Y(n291) );
  AND2X1_RVT U441 ( .A1(ep0_buf1[29]), .A2(n250), .Y(n296) );
  OR2X1_RVT U442 ( .A1(n300), .A2(n299), .Y(n1350) );
  AO222X1_RVT U443 ( .A1(ep1_buf1[30]), .A2(n210), .A3(n239), .A4(buf1[30]), 
        .A5(ep2_buf1[30]), .A6(n189), .Y(n300) );
  AO21X1_RVT U444 ( .A1(ep3_buf1[30]), .A2(n199), .A3(n304), .Y(n299) );
  AND2X1_RVT U445 ( .A1(ep0_buf1[30]), .A2(n250), .Y(n304) );
  OR2X1_RVT U446 ( .A1(n308), .A2(n307), .Y(n1351) );
  AO222X1_RVT U447 ( .A1(ep1_buf1[31]), .A2(n210), .A3(n239), .A4(buf1[31]), 
        .A5(ep2_buf1[31]), .A6(n189), .Y(n308) );
  AO21X1_RVT U448 ( .A1(ep3_buf1[31]), .A2(n199), .A3(n312), .Y(n307) );
  AND2X1_RVT U449 ( .A1(ep0_buf1[31]), .A2(n250), .Y(n312) );
  OR2X1_RVT U450 ( .A1(n316), .A2(n315), .Y(n1352) );
  AO222X1_RVT U451 ( .A1(ep1_buf0[0]), .A2(n210), .A3(n239), .A4(buf0[0]), 
        .A5(ep2_buf0[0]), .A6(n189), .Y(n316) );
  AO21X1_RVT U452 ( .A1(ep3_buf0[0]), .A2(n199), .A3(n320), .Y(n315) );
  AND2X1_RVT U453 ( .A1(ep0_buf0[0]), .A2(n250), .Y(n320) );
  OR2X1_RVT U454 ( .A1(n324), .A2(n323), .Y(n1353) );
  AO222X1_RVT U455 ( .A1(ep1_buf0[1]), .A2(n210), .A3(n239), .A4(buf0[1]), 
        .A5(ep2_buf0[1]), .A6(n189), .Y(n324) );
  AO21X1_RVT U456 ( .A1(ep3_buf0[1]), .A2(n199), .A3(n328), .Y(n323) );
  AND2X1_RVT U457 ( .A1(ep0_buf0[1]), .A2(n250), .Y(n328) );
  OR2X1_RVT U458 ( .A1(n332), .A2(n331), .Y(n1354) );
  AO222X1_RVT U459 ( .A1(ep1_buf0[2]), .A2(n210), .A3(n239), .A4(buf0[2]), 
        .A5(ep2_buf0[2]), .A6(n189), .Y(n332) );
  AO21X1_RVT U460 ( .A1(ep3_buf0[2]), .A2(n199), .A3(n336), .Y(n331) );
  AND2X1_RVT U461 ( .A1(ep0_buf0[2]), .A2(n250), .Y(n336) );
  OR2X1_RVT U462 ( .A1(n340), .A2(n339), .Y(n1355) );
  AO222X1_RVT U463 ( .A1(ep1_buf0[3]), .A2(n209), .A3(n241), .A4(buf0[3]), 
        .A5(ep2_buf0[3]), .A6(n186), .Y(n340) );
  AO21X1_RVT U464 ( .A1(ep3_buf0[3]), .A2(n199), .A3(n344), .Y(n339) );
  AND2X1_RVT U465 ( .A1(ep0_buf0[3]), .A2(n250), .Y(n344) );
  OR2X1_RVT U466 ( .A1(n348), .A2(n347), .Y(n1356) );
  AO222X1_RVT U467 ( .A1(ep1_buf0[4]), .A2(n209), .A3(n241), .A4(buf0[4]), 
        .A5(ep2_buf0[4]), .A6(n186), .Y(n348) );
  AO21X1_RVT U468 ( .A1(ep3_buf0[4]), .A2(n199), .A3(n352), .Y(n347) );
  AND2X1_RVT U469 ( .A1(ep0_buf0[4]), .A2(n250), .Y(n352) );
  OR2X1_RVT U470 ( .A1(n356), .A2(n355), .Y(n1357) );
  AO222X1_RVT U471 ( .A1(ep1_buf0[5]), .A2(n209), .A3(n241), .A4(buf0[5]), 
        .A5(ep2_buf0[5]), .A6(n186), .Y(n356) );
  AO21X1_RVT U472 ( .A1(ep3_buf0[5]), .A2(n199), .A3(n360), .Y(n355) );
  AND2X1_RVT U473 ( .A1(ep0_buf0[5]), .A2(n250), .Y(n360) );
  OR2X1_RVT U474 ( .A1(n364), .A2(n363), .Y(n1358) );
  AO222X1_RVT U475 ( .A1(ep1_buf0[6]), .A2(n209), .A3(n241), .A4(buf0[6]), 
        .A5(ep2_buf0[6]), .A6(n186), .Y(n364) );
  AO21X1_RVT U476 ( .A1(ep3_buf0[6]), .A2(n199), .A3(n368), .Y(n363) );
  AND2X1_RVT U477 ( .A1(ep0_buf0[6]), .A2(n250), .Y(n368) );
  OR2X1_RVT U478 ( .A1(n372), .A2(n371), .Y(n1359) );
  AO222X1_RVT U479 ( .A1(ep1_buf0[7]), .A2(n209), .A3(n241), .A4(buf0[7]), 
        .A5(ep2_buf0[7]), .A6(n186), .Y(n372) );
  AO21X1_RVT U480 ( .A1(ep3_buf0[7]), .A2(n201), .A3(n376), .Y(n371) );
  AND2X1_RVT U481 ( .A1(ep0_buf0[7]), .A2(n250), .Y(n376) );
  OR2X1_RVT U482 ( .A1(n380), .A2(n379), .Y(n1360) );
  AO222X1_RVT U483 ( .A1(ep1_buf0[8]), .A2(n209), .A3(n241), .A4(buf0[8]), 
        .A5(ep2_buf0[8]), .A6(n186), .Y(n380) );
  AO21X1_RVT U484 ( .A1(ep3_buf0[8]), .A2(n201), .A3(n384), .Y(n379) );
  AND2X1_RVT U485 ( .A1(ep0_buf0[8]), .A2(n249), .Y(n384) );
  OR2X1_RVT U486 ( .A1(n388), .A2(n387), .Y(n1361) );
  AO222X1_RVT U487 ( .A1(ep1_buf0[9]), .A2(n209), .A3(n241), .A4(buf0[9]), 
        .A5(ep2_buf0[9]), .A6(n186), .Y(n388) );
  AO21X1_RVT U488 ( .A1(ep3_buf0[9]), .A2(n201), .A3(n392), .Y(n387) );
  AND2X1_RVT U489 ( .A1(ep0_buf0[9]), .A2(n249), .Y(n392) );
  OR2X1_RVT U490 ( .A1(n396), .A2(n395), .Y(n1362) );
  AO222X1_RVT U491 ( .A1(ep1_buf0[10]), .A2(n209), .A3(n241), .A4(buf0[10]), 
        .A5(ep2_buf0[10]), .A6(n186), .Y(n396) );
  AO21X1_RVT U492 ( .A1(ep3_buf0[10]), .A2(n201), .A3(n400), .Y(n395) );
  AND2X1_RVT U493 ( .A1(ep0_buf0[10]), .A2(n249), .Y(n400) );
  OR2X1_RVT U494 ( .A1(n404), .A2(n403), .Y(n1363) );
  AO222X1_RVT U495 ( .A1(ep1_buf0[11]), .A2(n209), .A3(n241), .A4(buf0[11]), 
        .A5(ep2_buf0[11]), .A6(n186), .Y(n404) );
  AO21X1_RVT U496 ( .A1(ep3_buf0[11]), .A2(n201), .A3(n408), .Y(n403) );
  AND2X1_RVT U497 ( .A1(ep0_buf0[11]), .A2(n249), .Y(n408) );
  OR2X1_RVT U498 ( .A1(n412), .A2(n411), .Y(n1364) );
  AO222X1_RVT U499 ( .A1(ep1_buf0[12]), .A2(n209), .A3(n241), .A4(buf0[12]), 
        .A5(ep2_buf0[12]), .A6(n186), .Y(n412) );
  AO21X1_RVT U500 ( .A1(ep3_buf0[12]), .A2(n201), .A3(n416), .Y(n411) );
  AND2X1_RVT U501 ( .A1(ep0_buf0[12]), .A2(n249), .Y(n416) );
  OR2X1_RVT U502 ( .A1(n420), .A2(n419), .Y(n1365) );
  AO222X1_RVT U503 ( .A1(ep1_buf0[13]), .A2(n209), .A3(n241), .A4(buf0[13]), 
        .A5(ep2_buf0[13]), .A6(n186), .Y(n420) );
  AO21X1_RVT U504 ( .A1(ep3_buf0[13]), .A2(n201), .A3(n424), .Y(n419) );
  AND2X1_RVT U505 ( .A1(ep0_buf0[13]), .A2(n249), .Y(n424) );
  OR2X1_RVT U506 ( .A1(n428), .A2(n427), .Y(n1366) );
  AO222X1_RVT U507 ( .A1(ep1_buf0[14]), .A2(n209), .A3(n241), .A4(buf0[14]), 
        .A5(ep2_buf0[14]), .A6(n186), .Y(n428) );
  AO21X1_RVT U508 ( .A1(ep3_buf0[14]), .A2(n201), .A3(n432), .Y(n427) );
  AND2X1_RVT U509 ( .A1(ep0_buf0[14]), .A2(n249), .Y(n432) );
  OR2X1_RVT U510 ( .A1(n436), .A2(n435), .Y(n1367) );
  AO222X1_RVT U511 ( .A1(ep1_buf0[15]), .A2(n207), .A3(n242), .A4(buf0[15]), 
        .A5(ep2_buf0[15]), .A6(n185), .Y(n436) );
  AO21X1_RVT U512 ( .A1(ep3_buf0[15]), .A2(n201), .A3(n440), .Y(n435) );
  AND2X1_RVT U513 ( .A1(ep0_buf0[15]), .A2(n249), .Y(n440) );
  OR2X1_RVT U514 ( .A1(n444), .A2(n443), .Y(n1368) );
  AO222X1_RVT U515 ( .A1(ep1_buf0[16]), .A2(n207), .A3(n242), .A4(buf0[16]), 
        .A5(ep2_buf0[16]), .A6(n185), .Y(n444) );
  AO21X1_RVT U516 ( .A1(ep3_buf0[16]), .A2(n201), .A3(n448), .Y(n443) );
  AND2X1_RVT U517 ( .A1(ep0_buf0[16]), .A2(n249), .Y(n448) );
  OR2X1_RVT U518 ( .A1(n452), .A2(n451), .Y(n1369) );
  AO222X1_RVT U519 ( .A1(ep1_buf0[17]), .A2(n207), .A3(n242), .A4(buf0[17]), 
        .A5(ep2_buf0[17]), .A6(n185), .Y(n452) );
  AO21X1_RVT U520 ( .A1(ep3_buf0[17]), .A2(n201), .A3(n456), .Y(n451) );
  AND2X1_RVT U521 ( .A1(ep0_buf0[17]), .A2(n249), .Y(n456) );
  OR2X1_RVT U522 ( .A1(n460), .A2(n459), .Y(n1370) );
  AO222X1_RVT U523 ( .A1(ep1_buf0[18]), .A2(n207), .A3(n242), .A4(buf0[18]), 
        .A5(ep2_buf0[18]), .A6(n185), .Y(n460) );
  AO21X1_RVT U524 ( .A1(ep3_buf0[18]), .A2(n201), .A3(n464), .Y(n459) );
  AND2X1_RVT U525 ( .A1(ep0_buf0[18]), .A2(n249), .Y(n464) );
  OR2X1_RVT U526 ( .A1(n468), .A2(n467), .Y(n1371) );
  AO222X1_RVT U527 ( .A1(ep1_buf0[19]), .A2(n207), .A3(n242), .A4(buf0[19]), 
        .A5(ep2_buf0[19]), .A6(n185), .Y(n468) );
  AO21X1_RVT U528 ( .A1(ep3_buf0[19]), .A2(n202), .A3(n472), .Y(n467) );
  AND2X1_RVT U529 ( .A1(ep0_buf0[19]), .A2(n249), .Y(n472) );
  OR2X1_RVT U530 ( .A1(n476), .A2(n475), .Y(n1372) );
  AO222X1_RVT U531 ( .A1(ep1_buf0[20]), .A2(n207), .A3(n242), .A4(buf0[20]), 
        .A5(ep2_buf0[20]), .A6(n185), .Y(n476) );
  AO21X1_RVT U532 ( .A1(ep3_buf0[20]), .A2(n202), .A3(n480), .Y(n475) );
  AND2X1_RVT U533 ( .A1(ep0_buf0[20]), .A2(ep0_match), .Y(n480) );
  OR2X1_RVT U534 ( .A1(n484), .A2(n483), .Y(n1373) );
  AO222X1_RVT U535 ( .A1(ep1_buf0[21]), .A2(n207), .A3(n242), .A4(buf0[21]), 
        .A5(ep2_buf0[21]), .A6(n185), .Y(n484) );
  AO21X1_RVT U536 ( .A1(ep3_buf0[21]), .A2(n202), .A3(n488), .Y(n483) );
  AND2X1_RVT U537 ( .A1(ep0_buf0[21]), .A2(ep0_match), .Y(n488) );
  OR2X1_RVT U538 ( .A1(n492), .A2(n491), .Y(n1374) );
  AO222X1_RVT U539 ( .A1(ep1_buf0[22]), .A2(n207), .A3(n242), .A4(buf0[22]), 
        .A5(ep2_buf0[22]), .A6(n185), .Y(n492) );
  AO21X1_RVT U540 ( .A1(ep3_buf0[22]), .A2(n202), .A3(n496), .Y(n491) );
  AND2X1_RVT U541 ( .A1(ep0_buf0[22]), .A2(ep0_match), .Y(n496) );
  OR2X1_RVT U542 ( .A1(n500), .A2(n499), .Y(n1375) );
  AO222X1_RVT U543 ( .A1(ep1_buf0[23]), .A2(n207), .A3(n242), .A4(buf0[23]), 
        .A5(ep2_buf0[23]), .A6(n185), .Y(n500) );
  AO21X1_RVT U544 ( .A1(ep3_buf0[23]), .A2(n202), .A3(n504), .Y(n499) );
  AND2X1_RVT U545 ( .A1(ep0_buf0[23]), .A2(ep0_match), .Y(n504) );
  OR2X1_RVT U546 ( .A1(n508), .A2(n507), .Y(n1376) );
  AO222X1_RVT U547 ( .A1(ep1_buf0[24]), .A2(n207), .A3(n242), .A4(buf0[24]), 
        .A5(ep2_buf0[24]), .A6(n185), .Y(n508) );
  AO21X1_RVT U548 ( .A1(ep3_buf0[24]), .A2(n202), .A3(n512), .Y(n507) );
  AND2X1_RVT U549 ( .A1(ep0_buf0[24]), .A2(ep0_match), .Y(n512) );
  OR2X1_RVT U550 ( .A1(n516), .A2(n515), .Y(n1377) );
  AO222X1_RVT U551 ( .A1(ep1_buf0[25]), .A2(n207), .A3(n242), .A4(buf0[25]), 
        .A5(ep2_buf0[25]), .A6(n185), .Y(n516) );
  AO21X1_RVT U552 ( .A1(ep3_buf0[25]), .A2(n202), .A3(n520), .Y(n515) );
  AND2X1_RVT U553 ( .A1(ep0_buf0[25]), .A2(ep0_match), .Y(n520) );
  OR2X1_RVT U554 ( .A1(n524), .A2(n523), .Y(n1378) );
  AO222X1_RVT U555 ( .A1(ep1_buf0[26]), .A2(n207), .A3(n242), .A4(buf0[26]), 
        .A5(ep2_buf0[26]), .A6(n185), .Y(n524) );
  AO21X1_RVT U556 ( .A1(ep3_buf0[26]), .A2(n202), .A3(n528), .Y(n523) );
  AND2X1_RVT U557 ( .A1(ep0_buf0[26]), .A2(ep0_match), .Y(n528) );
  OR2X1_RVT U558 ( .A1(n532), .A2(n531), .Y(n1379) );
  AO222X1_RVT U559 ( .A1(ep1_buf0[27]), .A2(n279), .A3(n63), .A4(buf0[27]), 
        .A5(ep2_buf0[27]), .A6(n183), .Y(n532) );
  AO21X1_RVT U560 ( .A1(ep3_buf0[27]), .A2(n202), .A3(n536), .Y(n531) );
  AND2X1_RVT U561 ( .A1(ep0_buf0[27]), .A2(ep0_match), .Y(n536) );
  OR2X1_RVT U562 ( .A1(n540), .A2(n539), .Y(n1380) );
  AO222X1_RVT U563 ( .A1(ep1_buf0[28]), .A2(n279), .A3(n63), .A4(buf0[28]), 
        .A5(ep2_buf0[28]), .A6(n183), .Y(n540) );
  AO21X1_RVT U564 ( .A1(ep3_buf0[28]), .A2(n202), .A3(n544), .Y(n539) );
  AND2X1_RVT U565 ( .A1(ep0_buf0[28]), .A2(ep0_match), .Y(n544) );
  OR2X1_RVT U566 ( .A1(n548), .A2(n547), .Y(n1381) );
  AO222X1_RVT U567 ( .A1(ep1_buf0[29]), .A2(n279), .A3(n63), .A4(buf0[29]), 
        .A5(ep2_buf0[29]), .A6(n183), .Y(n548) );
  AO21X1_RVT U568 ( .A1(ep3_buf0[29]), .A2(n202), .A3(n552), .Y(n547) );
  AND2X1_RVT U569 ( .A1(ep0_buf0[29]), .A2(n254), .Y(n552) );
  OR2X1_RVT U570 ( .A1(n556), .A2(n555), .Y(n1382) );
  AO222X1_RVT U571 ( .A1(ep1_buf0[30]), .A2(n279), .A3(n63), .A4(buf0[30]), 
        .A5(ep2_buf0[30]), .A6(n183), .Y(n556) );
  AO21X1_RVT U572 ( .A1(ep3_buf0[30]), .A2(n202), .A3(n560), .Y(n555) );
  AND2X1_RVT U573 ( .A1(ep0_buf0[30]), .A2(n253), .Y(n560) );
  OR2X1_RVT U574 ( .A1(n572), .A2(n571), .Y(n1384) );
  AO222X1_RVT U575 ( .A1(ep1_csr[0]), .A2(n279), .A3(n63), .A4(csr[0]), .A5(
        ep2_csr[0]), .A6(n183), .Y(n572) );
  AO21X1_RVT U576 ( .A1(ep3_csr[0]), .A2(n193), .A3(n576), .Y(n571) );
  AND2X1_RVT U577 ( .A1(ep0_csr[0]), .A2(n258), .Y(n576) );
  OR2X1_RVT U578 ( .A1(n580), .A2(n579), .Y(n1385) );
  AO222X1_RVT U579 ( .A1(ep1_csr[1]), .A2(n279), .A3(n63), .A4(csr[1]), .A5(
        ep2_csr[1]), .A6(n183), .Y(n580) );
  AO21X1_RVT U580 ( .A1(ep3_csr[1]), .A2(n193), .A3(n584), .Y(n579) );
  AND2X1_RVT U581 ( .A1(ep0_csr[1]), .A2(n258), .Y(n584) );
  OR2X1_RVT U582 ( .A1(n588), .A2(n587), .Y(n1386) );
  AO222X1_RVT U583 ( .A1(ep1_csr[2]), .A2(n279), .A3(n63), .A4(csr[2]), .A5(
        ep2_csr[2]), .A6(n183), .Y(n588) );
  AO21X1_RVT U584 ( .A1(ep3_csr[2]), .A2(n193), .A3(n592), .Y(n587) );
  AND2X1_RVT U585 ( .A1(ep0_csr[2]), .A2(n258), .Y(n592) );
  OR2X1_RVT U586 ( .A1(n596), .A2(n595), .Y(n1387) );
  AO222X1_RVT U587 ( .A1(ep1_csr[3]), .A2(n279), .A3(n63), .A4(csr[3]), .A5(
        ep2_csr[3]), .A6(n183), .Y(n596) );
  AO21X1_RVT U588 ( .A1(ep3_csr[3]), .A2(n193), .A3(n600), .Y(n595) );
  AND2X1_RVT U589 ( .A1(ep0_csr[3]), .A2(n258), .Y(n600) );
  OR2X1_RVT U590 ( .A1(n604), .A2(n603), .Y(n1388) );
  AO222X1_RVT U591 ( .A1(ep1_csr[4]), .A2(n279), .A3(n63), .A4(csr[4]), .A5(
        ep2_csr[4]), .A6(n183), .Y(n604) );
  AO21X1_RVT U592 ( .A1(ep3_csr[4]), .A2(n193), .A3(n608), .Y(n603) );
  AND2X1_RVT U593 ( .A1(ep0_csr[4]), .A2(n258), .Y(n608) );
  OR2X1_RVT U594 ( .A1(n612), .A2(n611), .Y(n1389) );
  AO222X1_RVT U595 ( .A1(ep1_csr[5]), .A2(n279), .A3(n63), .A4(csr[5]), .A5(
        ep2_csr[5]), .A6(n183), .Y(n612) );
  AO21X1_RVT U596 ( .A1(ep3_csr[5]), .A2(n193), .A3(n616), .Y(n611) );
  AND2X1_RVT U597 ( .A1(ep0_csr[5]), .A2(n258), .Y(n616) );
  OR2X1_RVT U598 ( .A1(n620), .A2(n619), .Y(n1390) );
  AO222X1_RVT U599 ( .A1(ep1_csr[6]), .A2(n279), .A3(n63), .A4(csr[6]), .A5(
        ep2_csr[6]), .A6(n183), .Y(n620) );
  AO21X1_RVT U600 ( .A1(ep3_csr[6]), .A2(n193), .A3(n624), .Y(n619) );
  AND2X1_RVT U601 ( .A1(ep0_csr[6]), .A2(n258), .Y(n624) );
  OR2X1_RVT U602 ( .A1(n628), .A2(n627), .Y(n1391) );
  AO222X1_RVT U603 ( .A1(ep1_csr[7]), .A2(n206), .A3(n245), .A4(csr[7]), .A5(
        ep2_csr[7]), .A6(n182), .Y(n628) );
  AO21X1_RVT U604 ( .A1(ep3_csr[7]), .A2(n193), .A3(n632), .Y(n627) );
  AND2X1_RVT U605 ( .A1(ep0_csr[7]), .A2(n258), .Y(n632) );
  OR2X1_RVT U606 ( .A1(n636), .A2(n635), .Y(n1392) );
  AO222X1_RVT U607 ( .A1(ep1_csr[8]), .A2(n206), .A3(n245), .A4(csr[8]), .A5(
        ep2_csr[8]), .A6(n182), .Y(n636) );
  AO21X1_RVT U608 ( .A1(ep3_csr[8]), .A2(n193), .A3(n640), .Y(n635) );
  AND2X1_RVT U609 ( .A1(ep0_csr[8]), .A2(n258), .Y(n640) );
  OR2X1_RVT U610 ( .A1(n644), .A2(n643), .Y(n1393) );
  AO222X1_RVT U611 ( .A1(ep1_csr[9]), .A2(n206), .A3(n245), .A4(csr[9]), .A5(
        ep2_csr[9]), .A6(n182), .Y(n644) );
  AO21X1_RVT U612 ( .A1(ep3_csr[9]), .A2(n193), .A3(n648), .Y(n643) );
  AND2X1_RVT U613 ( .A1(ep0_csr[9]), .A2(n258), .Y(n648) );
  OR2X1_RVT U614 ( .A1(n652), .A2(n651), .Y(n1394) );
  AO222X1_RVT U615 ( .A1(ep1_csr[10]), .A2(n206), .A3(n245), .A4(csr[10]), 
        .A5(ep2_csr[10]), .A6(n182), .Y(n652) );
  AO21X1_RVT U616 ( .A1(ep3_csr[10]), .A2(n194), .A3(n656), .Y(n651) );
  AND2X1_RVT U617 ( .A1(ep0_csr[10]), .A2(n258), .Y(n656) );
  OR2X1_RVT U618 ( .A1(n660), .A2(n659), .Y(n1395) );
  AO222X1_RVT U619 ( .A1(ep1_csr[11]), .A2(n206), .A3(n245), .A4(csr[11]), 
        .A5(ep2_csr[11]), .A6(n182), .Y(n660) );
  AO21X1_RVT U620 ( .A1(ep3_csr[11]), .A2(n194), .A3(n664), .Y(n659) );
  AND2X1_RVT U621 ( .A1(ep0_csr[11]), .A2(n257), .Y(n664) );
  OR2X1_RVT U622 ( .A1(n668), .A2(n667), .Y(n1396) );
  AO222X1_RVT U623 ( .A1(ep1_csr[12]), .A2(n206), .A3(n245), .A4(csr[12]), 
        .A5(ep2_csr[12]), .A6(n182), .Y(n668) );
  AO21X1_RVT U624 ( .A1(ep3_csr[12]), .A2(n194), .A3(n672), .Y(n667) );
  AND2X1_RVT U625 ( .A1(ep0_csr[12]), .A2(n257), .Y(n672) );
  OR2X1_RVT U626 ( .A1(n676), .A2(n675), .Y(n1397) );
  AO222X1_RVT U627 ( .A1(ep1_csr[13]), .A2(n206), .A3(n245), .A4(csr[13]), 
        .A5(ep2_csr[13]), .A6(n182), .Y(n676) );
  AO21X1_RVT U628 ( .A1(ep3_csr[13]), .A2(n194), .A3(n680), .Y(n675) );
  AND2X1_RVT U629 ( .A1(ep0_csr[13]), .A2(n257), .Y(n680) );
  OR2X1_RVT U630 ( .A1(n692), .A2(n691), .Y(n1399) );
  AO222X1_RVT U631 ( .A1(ep1_csr[15]), .A2(n206), .A3(n245), .A4(csr[15]), 
        .A5(ep2_csr[15]), .A6(n182), .Y(n692) );
  AO21X1_RVT U632 ( .A1(ep3_csr[15]), .A2(n194), .A3(n696), .Y(n691) );
  AND2X1_RVT U633 ( .A1(ep0_csr[15]), .A2(n257), .Y(n696) );
  OR2X1_RVT U634 ( .A1(n700), .A2(n699), .Y(n1400) );
  AO222X1_RVT U635 ( .A1(ep1_csr[16]), .A2(n206), .A3(n245), .A4(csr[16]), 
        .A5(ep2_csr[16]), .A6(n182), .Y(n700) );
  AO21X1_RVT U636 ( .A1(ep3_csr[16]), .A2(n194), .A3(n704), .Y(n699) );
  AND2X1_RVT U637 ( .A1(ep0_csr[16]), .A2(n257), .Y(n704) );
  OR2X1_RVT U638 ( .A1(n708), .A2(n707), .Y(n1401) );
  AO222X1_RVT U639 ( .A1(ep1_csr[17]), .A2(n206), .A3(n245), .A4(csr[17]), 
        .A5(ep2_csr[17]), .A6(n182), .Y(n708) );
  AO21X1_RVT U640 ( .A1(ep3_csr[17]), .A2(n194), .A3(n712), .Y(n707) );
  AND2X1_RVT U641 ( .A1(ep0_csr[17]), .A2(n257), .Y(n712) );
  OR2X1_RVT U642 ( .A1(n716), .A2(n715), .Y(n1402) );
  AO222X1_RVT U643 ( .A1(ep1_csr[18]), .A2(n206), .A3(n245), .A4(csr[18]), 
        .A5(ep2_csr[18]), .A6(n182), .Y(n716) );
  AO21X1_RVT U644 ( .A1(ep3_csr[18]), .A2(n194), .A3(n720), .Y(n715) );
  AND2X1_RVT U645 ( .A1(ep0_csr[18]), .A2(n257), .Y(n720) );
  OR2X1_RVT U646 ( .A1(n724), .A2(n723), .Y(n1403) );
  AO222X1_RVT U647 ( .A1(ep1_csr[19]), .A2(n206), .A3(n245), .A4(csr[19]), 
        .A5(ep2_csr[19]), .A6(n182), .Y(n724) );
  AO21X1_RVT U648 ( .A1(ep3_csr[19]), .A2(n194), .A3(n728), .Y(n723) );
  AND2X1_RVT U649 ( .A1(ep0_csr[19]), .A2(n257), .Y(n728) );
  OR2X1_RVT U650 ( .A1(n732), .A2(n731), .Y(n1404) );
  AO222X1_RVT U651 ( .A1(ep1_csr[20]), .A2(n205), .A3(n246), .A4(csr[20]), 
        .A5(ep2_csr[20]), .A6(n181), .Y(n732) );
  AO21X1_RVT U652 ( .A1(ep3_csr[20]), .A2(n194), .A3(n736), .Y(n731) );
  AND2X1_RVT U653 ( .A1(ep0_csr[20]), .A2(n257), .Y(n736) );
  OR2X1_RVT U654 ( .A1(n740), .A2(n739), .Y(n1405) );
  AO222X1_RVT U655 ( .A1(ep1_csr[21]), .A2(n205), .A3(n246), .A4(csr[21]), 
        .A5(ep2_csr[21]), .A6(n181), .Y(n740) );
  AO21X1_RVT U656 ( .A1(ep3_csr[21]), .A2(n194), .A3(n744), .Y(n739) );
  AND2X1_RVT U657 ( .A1(ep0_csr[21]), .A2(n257), .Y(n744) );
  OR2X1_RVT U658 ( .A1(n748), .A2(n747), .Y(n1406) );
  AO222X1_RVT U659 ( .A1(ep1_csr[22]), .A2(n205), .A3(n246), .A4(csr[22]), 
        .A5(ep2_csr[22]), .A6(n181), .Y(n748) );
  AO21X1_RVT U660 ( .A1(ep3_csr[22]), .A2(n194), .A3(n752), .Y(n747) );
  AND2X1_RVT U661 ( .A1(ep0_csr[22]), .A2(n257), .Y(n752) );
  OR2X1_RVT U662 ( .A1(n756), .A2(n755), .Y(n1407) );
  AO222X1_RVT U663 ( .A1(ep1_csr[23]), .A2(n205), .A3(n246), .A4(csr[23]), 
        .A5(ep2_csr[23]), .A6(n181), .Y(n756) );
  AO21X1_RVT U664 ( .A1(ep3_csr[23]), .A2(n277), .A3(n760), .Y(n755) );
  AND2X1_RVT U665 ( .A1(ep0_csr[23]), .A2(n257), .Y(n760) );
  OR2X1_RVT U666 ( .A1(n764), .A2(n763), .Y(n1408) );
  AO222X1_RVT U667 ( .A1(ep1_csr[24]), .A2(n205), .A3(n246), .A4(csr[24]), 
        .A5(ep2_csr[24]), .A6(n181), .Y(n764) );
  AO21X1_RVT U668 ( .A1(ep3_csr[24]), .A2(n277), .A3(n768), .Y(n763) );
  AND2X1_RVT U669 ( .A1(ep0_csr[24]), .A2(n255), .Y(n768) );
  OR2X1_RVT U670 ( .A1(n772), .A2(n771), .Y(n1409) );
  AO222X1_RVT U671 ( .A1(ep1_csr[25]), .A2(n205), .A3(n246), .A4(csr[25]), 
        .A5(ep2_csr[25]), .A6(n181), .Y(n772) );
  AO21X1_RVT U672 ( .A1(ep3_csr[25]), .A2(n277), .A3(n776), .Y(n771) );
  AND2X1_RVT U673 ( .A1(ep0_csr[25]), .A2(n255), .Y(n776) );
  OR2X1_RVT U674 ( .A1(n780), .A2(n779), .Y(n1410) );
  AO222X1_RVT U675 ( .A1(ep1_csr[26]), .A2(n205), .A3(n246), .A4(csr[26]), 
        .A5(ep2_csr[26]), .A6(n181), .Y(n780) );
  AO21X1_RVT U676 ( .A1(ep3_csr[26]), .A2(n277), .A3(n784), .Y(n779) );
  AND2X1_RVT U677 ( .A1(ep0_csr[26]), .A2(n255), .Y(n784) );
  OR2X1_RVT U678 ( .A1(n788), .A2(n787), .Y(n1411) );
  AO222X1_RVT U679 ( .A1(ep1_csr[27]), .A2(n205), .A3(n246), .A4(csr[27]), 
        .A5(ep2_csr[27]), .A6(n181), .Y(n788) );
  AO21X1_RVT U680 ( .A1(ep3_csr[27]), .A2(n277), .A3(n792), .Y(n787) );
  AND2X1_RVT U681 ( .A1(ep0_csr[27]), .A2(n255), .Y(n792) );
  OR2X1_RVT U682 ( .A1(n796), .A2(n795), .Y(n1412) );
  AO222X1_RVT U683 ( .A1(ep1_csr[28]), .A2(n205), .A3(n246), .A4(csr[28]), 
        .A5(ep2_csr[28]), .A6(n181), .Y(n796) );
  AO21X1_RVT U684 ( .A1(ep3_csr[28]), .A2(n277), .A3(n800), .Y(n795) );
  AND2X1_RVT U685 ( .A1(ep0_csr[28]), .A2(n255), .Y(n800) );
  OR2X1_RVT U686 ( .A1(n804), .A2(n803), .Y(n1413) );
  AO222X1_RVT U687 ( .A1(ep1_csr[29]), .A2(n205), .A3(n246), .A4(csr[29]), 
        .A5(ep2_csr[29]), .A6(n181), .Y(n804) );
  AO21X1_RVT U688 ( .A1(ep3_csr[29]), .A2(n277), .A3(n808), .Y(n803) );
  AND2X1_RVT U689 ( .A1(ep0_csr[29]), .A2(n255), .Y(n808) );
  OR2X1_RVT U690 ( .A1(n812), .A2(n811), .Y(n1414) );
  AO222X1_RVT U691 ( .A1(ep1_csr[30]), .A2(n205), .A3(n246), .A4(csr[30]), 
        .A5(ep2_csr[30]), .A6(n181), .Y(n812) );
  AO21X1_RVT U692 ( .A1(ep3_csr[30]), .A2(n277), .A3(n816), .Y(n811) );
  AND2X1_RVT U693 ( .A1(ep0_csr[30]), .A2(n255), .Y(n816) );
  OR2X1_RVT U694 ( .A1(n820), .A2(n819), .Y(n1415) );
  AO222X1_RVT U695 ( .A1(ep1_csr[31]), .A2(n205), .A3(n246), .A4(csr[31]), 
        .A5(ep2_csr[31]), .A6(n181), .Y(n820) );
  AO21X1_RVT U696 ( .A1(ep3_csr[31]), .A2(n197), .A3(n849), .Y(n819) );
  AND2X1_RVT U697 ( .A1(ep0_csr[31]), .A2(n255), .Y(n849) );
  OR2X1_RVT U698 ( .A1(n564), .A2(n563), .Y(n1383) );
  AO21X1_RVT U699 ( .A1(ep3_buf0[31]), .A2(n277), .A3(n568), .Y(n563) );
  AO222X1_RVT U700 ( .A1(ep1_buf0[31]), .A2(n213), .A3(n238), .A4(buf0[31]), 
        .A5(ep2_buf0[31]), .A6(n183), .Y(n564) );
  AND2X1_RVT U701 ( .A1(ep0_buf0[31]), .A2(n250), .Y(n568) );
  AND2X1_RVT U702 ( .A1(utmi_vend_wr_r), .A2(n1286), .Y(n1307) );
  AO22X1_RVT U713 ( .A1(ep3_dout[10]), .A2(n221), .A3(ep2_dout[10]), .A4(n223), 
        .Y(n1124) );
  AO22X1_RVT U714 ( .A1(ep3_dout[12]), .A2(n221), .A3(ep2_dout[12]), .A4(n223), 
        .Y(n1108) );
  AO22X1_RVT U715 ( .A1(ep3_dout[15]), .A2(n221), .A3(ep2_dout[15]), .A4(n223), 
        .Y(n1084) );
  AO22X1_RVT U716 ( .A1(ep3_dout[9]), .A2(n221), .A3(ep2_dout[9]), .A4(n223), 
        .Y(n1132) );
  AND2X1_RVT U717 ( .A1(ep3_dout[2]), .A2(n217), .Y(n1201) );
  AND2X1_RVT U718 ( .A1(n889), .A2(n351), .Y(n1181) );
  NAND3X0_RVT U719 ( .A1(n1152), .A2(n1154), .A3(n1151), .Y(N173) );
  INVX1_RVT U720 ( .A(n6), .Y(n129) );
  INVX1_RVT U721 ( .A(n6), .Y(n223) );
  NAND2X0_RVT U722 ( .A1(n130), .A2(n133), .Y(N187) );
  AOI222X1_RVT U723 ( .A1(n143), .A2(n342), .A3(n162), .A4(n17), .A5(
        frm_nat[20]), .A6(n135), .Y(n130) );
  AOI221X1_RVT U724 ( .A1(ep0_dout[20]), .A2(n234), .A3(ep1_dout[20]), .A4(
        n229), .A5(n1044), .Y(n133) );
  AND2X1_RVT U725 ( .A1(ep3_dout[3]), .A2(n217), .Y(n1192) );
  AND2X1_RVT U726 ( .A1(ep3_dout[4]), .A2(n217), .Y(n1183) );
  NBUFFX2_RVT U727 ( .A(n948), .Y(n134) );
  NBUFFX2_RVT U728 ( .A(n948), .Y(n135) );
  AND2X1_RVT U729 ( .A1(ep1_dout[5]), .A2(n230), .Y(n1170) );
  NAND2X0_RVT U730 ( .A1(n137), .A2(n145), .Y(N176) );
  AOI221X1_RVT U731 ( .A1(ep0_dout[9]), .A2(n234), .A3(ep1_dout[9]), .A4(n226), 
        .A5(n1132), .Y(n145) );
  NAND2X0_RVT U732 ( .A1(n51), .A2(n146), .Y(N177) );
  AOI221X1_RVT U733 ( .A1(ep0_dout[10]), .A2(n234), .A3(ep1_dout[10]), .A4(
        n226), .A5(n1124), .Y(n146) );
  NAND2X0_RVT U734 ( .A1(n149), .A2(n4), .Y(N178) );
  AOI221X1_RVT U735 ( .A1(ep0_dout[11]), .A2(n36), .A3(ep1_dout[11]), .A4(n226), .A5(n1116), .Y(n149) );
  NAND2X0_RVT U736 ( .A1(n150), .A2(n23), .Y(N179) );
  AOI221X1_RVT U737 ( .A1(ep0_dout[12]), .A2(n231), .A3(ep1_dout[12]), .A4(
        n226), .A5(n1108), .Y(n150) );
  AOI221X1_RVT U738 ( .A1(ep0_dout[13]), .A2(n36), .A3(ep1_dout[13]), .A4(n226), .A5(n1100), .Y(n151) );
  NAND2X0_RVT U739 ( .A1(n153), .A2(n24), .Y(N182) );
  AOI221X1_RVT U740 ( .A1(ep0_dout[15]), .A2(n233), .A3(ep1_dout[15]), .A4(
        n226), .A5(n1084), .Y(n153) );
  AO22X1_RVT U741 ( .A1(ep3_dout[8]), .A2(n217), .A3(ep2_dout[8]), .A4(n222), 
        .Y(n1140) );
  AND2X1_RVT U742 ( .A1(ep3_dout[7]), .A2(n217), .Y(n1150) );
  AO22X1_RVT U743 ( .A1(ep2_dout[29]), .A2(n222), .A3(ep3_dout[29]), .A4(n217), 
        .Y(n970) );
  NAND3X0_RVT U744 ( .A1(n1165), .A2(n1167), .A3(n1164), .Y(N172) );
  AO22X1_RVT U745 ( .A1(ep3_dout[22]), .A2(n218), .A3(ep2_dout[22]), .A4(n222), 
        .Y(n1028) );
  AO22X1_RVT U746 ( .A1(ep3_dout[23]), .A2(n218), .A3(ep2_dout[23]), .A4(n129), 
        .Y(n1020) );
  AO22X1_RVT U747 ( .A1(ep2_dout[30]), .A2(n225), .A3(ep3_dout[30]), .A4(n217), 
        .Y(n962) );
  NAND2X0_RVT U748 ( .A1(n154), .A2(n159), .Y(N181) );
  AOI221X1_RVT U749 ( .A1(ep0_dout[14]), .A2(n234), .A3(ep1_dout[14]), .A4(
        n226), .A5(n1092), .Y(n159) );
  AO22X1_RVT U750 ( .A1(ep2_dout[31]), .A2(n129), .A3(ep3_dout[31]), .A4(n217), 
        .Y(n952) );
  AO22X1_RVT U751 ( .A1(ep0_dout[6]), .A2(n231), .A3(ep2_dout[6]), .A4(n222), 
        .Y(n1156) );
  NOR3X0_RVT U752 ( .A1(n1157), .A2(n1155), .A3(n1156), .Y(n1154) );
  NOR3X0_RVT U753 ( .A1(n1170), .A2(n1168), .A3(n1169), .Y(n1167) );
  AO22X1_RVT U754 ( .A1(ep3_dout[21]), .A2(n218), .A3(ep2_dout[21]), .A4(n225), 
        .Y(n1036) );
  OR2X1_RVT U755 ( .A1(n1071), .A2(n1069), .Y(N183) );
  AO22X1_RVT U756 ( .A1(ep3_dout[16]), .A2(n218), .A3(ep2_dout[16]), .A4(n222), 
        .Y(n1076) );
  OR2X1_RVT U757 ( .A1(n1055), .A2(n1053), .Y(N185) );
  AO221X1_RVT U758 ( .A1(ep0_dout[18]), .A2(n231), .A3(ep1_dout[18]), .A4(n226), .A5(n1060), .Y(n1053) );
  AO22X1_RVT U759 ( .A1(ep3_dout[18]), .A2(n218), .A3(ep2_dout[18]), .A4(n225), 
        .Y(n1060) );
  OR2X1_RVT U760 ( .A1(n1063), .A2(n1061), .Y(N184) );
  AO221X1_RVT U761 ( .A1(ep0_dout[17]), .A2(n233), .A3(ep1_dout[17]), .A4(n226), .A5(n1068), .Y(n1061) );
  AO22X1_RVT U762 ( .A1(ep3_dout[17]), .A2(n218), .A3(ep2_dout[17]), .A4(n129), 
        .Y(n1068) );
  AO22X1_RVT U763 ( .A1(ep3_dout[19]), .A2(n218), .A3(ep2_dout[19]), .A4(n129), 
        .Y(n1052) );
  AO22X1_RVT U764 ( .A1(ep3_dout[28]), .A2(n218), .A3(ep2_dout[28]), .A4(n222), 
        .Y(n979) );
  AO22X1_RVT U765 ( .A1(ep3_dout[27]), .A2(n218), .A3(ep2_dout[27]), .A4(n225), 
        .Y(n987) );
  AO22X1_RVT U766 ( .A1(ep3_dout[26]), .A2(n218), .A3(ep2_dout[26]), .A4(n222), 
        .Y(n995) );
  AO22X1_RVT U767 ( .A1(ep3_dout[20]), .A2(n218), .A3(ep2_dout[20]), .A4(n225), 
        .Y(n1044) );
  AO221X1_RVT U768 ( .A1(ep0_dout[16]), .A2(n234), .A3(ep1_dout[16]), .A4(n226), .A5(n1076), .Y(n1069) );
  AO22X1_RVT U769 ( .A1(ep3_dout[25]), .A2(n218), .A3(ep2_dout[25]), .A4(n129), 
        .Y(n1003) );
  AND2X1_RVT U770 ( .A1(ep3_dout[0]), .A2(n217), .Y(n1222) );
  AO22X1_RVT U771 ( .A1(ep3_dout[24]), .A2(n218), .A3(ep2_dout[24]), .A4(n225), 
        .Y(n1012) );
  AND2X1_RVT U772 ( .A1(ep3_dout[1]), .A2(n217), .Y(n1210) );
  INVX0_RVT U773 ( .A(n948), .Y(n161) );
  INVX0_RVT U774 ( .A(n1160), .Y(n162) );
  NAND2X0_RVT U775 ( .A1(n893), .A2(n3), .Y(n1148) );
  AO22X1_RVT U776 ( .A1(frm_nat[16]), .A2(n48), .A3(n49), .A4(n326), .Y(n1071)
         );
  AO22X1_RVT U777 ( .A1(frm_nat[17]), .A2(n135), .A3(n162), .A4(n325), .Y(
        n1063) );
  AO22X1_RVT U778 ( .A1(frm_nat[18]), .A2(n134), .A3(n49), .A4(n322), .Y(n1055) );
  AO222X1_RVT U779 ( .A1(n162), .A2(n313), .A3(n1218), .A4(n3), .A5(n215), 
        .A6(int_srca[0]), .Y(n1217) );
  AO222X1_RVT U780 ( .A1(n49), .A2(n311), .A3(n1208), .A4(n3), .A5(n215), .A6(
        int_srca[1]), .Y(n1207) );
  AO222X1_RVT U781 ( .A1(n49), .A2(n310), .A3(n1199), .A4(n3), .A5(n143), .A6(
        int_srca[2]), .Y(n1198) );
  AO222X1_RVT U782 ( .A1(n162), .A2(n309), .A3(n1190), .A4(n3), .A5(n143), 
        .A6(int_srca[3]), .Y(n1189) );
  AND2X1_RVT U783 ( .A1(n354), .A2(n353), .Y(n889) );
  NBUFFX2_RVT U784 ( .A(n262), .Y(n166) );
  INVX0_RVT U785 ( .A(n263), .Y(n262) );
  INVX0_RVT U786 ( .A(n885), .Y(n290) );
  INVX0_RVT U787 ( .A(n854), .Y(n175) );
  AND2X1_RVT U788 ( .A1(n262), .A2(n885), .Y(n877) );
  AND3X1_RVT U789 ( .A1(n343), .A2(n166), .A3(we), .Y(n167) );
  NAND2X0_RVT U790 ( .A1(din[20]), .A2(n174), .Y(n169) );
  NAND2X0_RVT U791 ( .A1(n854), .A2(n17), .Y(n170) );
  NAND2X0_RVT U792 ( .A1(n169), .A2(n170), .Y(n1420) );
  AO22X1_RVT U793 ( .A1(din[4]), .A2(n173), .A3(n178), .A4(n306), .Y(n1429) );
  AO22X1_RVT U794 ( .A1(din[8]), .A2(n173), .A3(n177), .A4(n16), .Y(n1433) );
  AO22X1_RVT U795 ( .A1(din[6]), .A2(n174), .A3(n854), .A4(n20), .Y(n1431) );
  AO22X1_RVT U796 ( .A1(din[2]), .A2(n174), .A3(n177), .A4(n310), .Y(n1427) );
  AO22X1_RVT U797 ( .A1(din[23]), .A2(n173), .A3(n178), .A4(n317), .Y(n1423)
         );
  AO22X1_RVT U798 ( .A1(din[3]), .A2(n173), .A3(n178), .A4(n309), .Y(n1428) );
  AO22X1_RVT U799 ( .A1(din[1]), .A2(n174), .A3(n854), .A4(n311), .Y(n1426) );
  AO22X1_RVT U800 ( .A1(din[24]), .A2(n174), .A3(n177), .A4(n314), .Y(n1424)
         );
  AO22X1_RVT U801 ( .A1(din[22]), .A2(n174), .A3(n854), .A4(n318), .Y(n1422)
         );
  AO22X1_RVT U802 ( .A1(din[21]), .A2(n173), .A3(n177), .A4(n319), .Y(n1421)
         );
  AO22X1_RVT U803 ( .A1(din[19]), .A2(n173), .A3(n178), .A4(n321), .Y(n1419)
         );
  AO22X1_RVT U804 ( .A1(din[18]), .A2(n173), .A3(n178), .A4(n322), .Y(n1418)
         );
  AO22X1_RVT U805 ( .A1(din[17]), .A2(n174), .A3(n854), .A4(n325), .Y(n1417)
         );
  AO22X1_RVT U806 ( .A1(din[16]), .A2(n174), .A3(n177), .A4(n326), .Y(n1416)
         );
  INVX0_RVT U807 ( .A(n175), .Y(n178) );
  AO22X1_RVT U808 ( .A1(din[7]), .A2(n174), .A3(n178), .A4(n305), .Y(n1432) );
  AO22X1_RVT U809 ( .A1(din[5]), .A2(n173), .A3(n854), .A4(n21), .Y(n1430) );
  AND3X1_RVT U810 ( .A1(n343), .A2(rst), .A3(we), .Y(n874) );
  AO22X1_RVT U811 ( .A1(din[0]), .A2(n173), .A3(n177), .A4(n313), .Y(n1425) );
  INVX0_RVT U812 ( .A(n175), .Y(n177) );
  AND2X1_RVT U813 ( .A1(n262), .A2(n873), .Y(n854) );
  AND2X1_RVT U814 ( .A1(n166), .A2(n1285), .Y(n2) );
  INVX0_RVT U815 ( .A(n873), .Y(n173) );
  INVX0_RVT U816 ( .A(n873), .Y(n174) );
endmodule


module usbf_wb ( wb_clk, phy_clk, rst, wb_addr_i, wb_data_i, wb_data_o, 
        wb_ack_o, wb_we_i, wb_stb_i, wb_cyc_i, ma_adr, ma_dout, ma_din, ma_we, 
        ma_req, ma_ack, rf_re, rf_we, rf_din, rf_dout );
  input [17:0] wb_addr_i;
  input [31:0] wb_data_i;
  output [31:0] wb_data_o;
  output [17:0] ma_adr;
  output [31:0] ma_dout;
  input [31:0] ma_din;
  input [31:0] rf_din;
  output [31:0] rf_dout;
  input wb_clk, phy_clk, rst, wb_we_i, wb_stb_i, wb_cyc_i, ma_ack;
  output wb_ack_o, ma_we, ma_req, rf_re, rf_we;
  wire   wb_req_s1, wb_ack_s1, N47, wb_ack_s1a, n2, n12, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n7, n8, n9, n10, n11, n14, n15, n16, n39, n40,
         n43, n44;
  wire   [5:0] state;
  assign ma_adr[16] = wb_addr_i[16];
  assign ma_adr[15] = wb_addr_i[15];
  assign ma_adr[14] = wb_addr_i[14];
  assign ma_adr[13] = wb_addr_i[13];
  assign ma_adr[12] = wb_addr_i[12];
  assign ma_adr[11] = wb_addr_i[11];
  assign ma_adr[10] = wb_addr_i[10];
  assign ma_adr[9] = wb_addr_i[9];
  assign ma_adr[8] = wb_addr_i[8];
  assign ma_adr[7] = wb_addr_i[7];
  assign ma_adr[6] = wb_addr_i[6];
  assign ma_adr[5] = wb_addr_i[5];
  assign ma_adr[4] = wb_addr_i[4];
  assign ma_adr[3] = wb_addr_i[3];
  assign ma_adr[2] = wb_addr_i[2];
  assign ma_adr[1] = wb_addr_i[1];
  assign ma_adr[0] = wb_addr_i[0];
  assign rf_dout[31] = wb_data_i[31];
  assign ma_dout[31] = wb_data_i[31];
  assign rf_dout[30] = wb_data_i[30];
  assign ma_dout[30] = wb_data_i[30];
  assign rf_dout[29] = wb_data_i[29];
  assign ma_dout[29] = wb_data_i[29];
  assign rf_dout[28] = wb_data_i[28];
  assign ma_dout[28] = wb_data_i[28];
  assign ma_dout[27] = wb_data_i[27];
  assign ma_dout[26] = wb_data_i[26];
  assign ma_dout[25] = wb_data_i[25];
  assign rf_dout[24] = wb_data_i[24];
  assign ma_dout[24] = wb_data_i[24];
  assign rf_dout[23] = wb_data_i[23];
  assign ma_dout[23] = wb_data_i[23];
  assign rf_dout[22] = wb_data_i[22];
  assign ma_dout[22] = wb_data_i[22];
  assign rf_dout[21] = wb_data_i[21];
  assign ma_dout[21] = wb_data_i[21];
  assign rf_dout[20] = wb_data_i[20];
  assign ma_dout[20] = wb_data_i[20];
  assign rf_dout[19] = wb_data_i[19];
  assign ma_dout[19] = wb_data_i[19];
  assign rf_dout[18] = wb_data_i[18];
  assign ma_dout[18] = wb_data_i[18];
  assign rf_dout[17] = wb_data_i[17];
  assign ma_dout[17] = wb_data_i[17];
  assign rf_dout[16] = wb_data_i[16];
  assign ma_dout[16] = wb_data_i[16];
  assign rf_dout[15] = wb_data_i[15];
  assign ma_dout[15] = wb_data_i[15];
  assign rf_dout[14] = wb_data_i[14];
  assign ma_dout[14] = wb_data_i[14];
  assign rf_dout[13] = wb_data_i[13];
  assign ma_dout[13] = wb_data_i[13];
  assign rf_dout[12] = wb_data_i[12];
  assign ma_dout[12] = wb_data_i[12];
  assign rf_dout[11] = wb_data_i[11];
  assign ma_dout[11] = wb_data_i[11];
  assign rf_dout[10] = wb_data_i[10];
  assign ma_dout[10] = wb_data_i[10];
  assign rf_dout[9] = wb_data_i[9];
  assign ma_dout[9] = wb_data_i[9];
  assign rf_dout[8] = wb_data_i[8];
  assign ma_dout[8] = wb_data_i[8];
  assign rf_dout[7] = wb_data_i[7];
  assign ma_dout[7] = wb_data_i[7];
  assign rf_dout[6] = wb_data_i[6];
  assign ma_dout[6] = wb_data_i[6];
  assign rf_dout[5] = wb_data_i[5];
  assign ma_dout[5] = wb_data_i[5];
  assign rf_dout[4] = wb_data_i[4];
  assign ma_dout[4] = wb_data_i[4];
  assign rf_dout[3] = wb_data_i[3];
  assign ma_dout[3] = wb_data_i[3];
  assign rf_dout[2] = wb_data_i[2];
  assign ma_dout[2] = wb_data_i[2];
  assign rf_dout[1] = wb_data_i[1];
  assign ma_dout[1] = wb_data_i[1];
  assign rf_dout[0] = wb_data_i[0];
  assign ma_dout[0] = wb_data_i[0];

  SDFFX1_RVT \wb_data_o_reg[5]  ( .D(rf_din[5]), .SI(ma_din[5]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[5]) );
  DFFX1_RVT \state_reg[5]  ( .D(n33), .CLK(phy_clk), .Q(state[5]), .QN(n12) );
  DFFX1_RVT \state_reg[4]  ( .D(n34), .CLK(phy_clk), .Q(state[4]) );
  DFFX1_RVT \state_reg[1]  ( .D(n36), .CLK(phy_clk), .Q(state[1]), .QN(n2) );
  DFFX1_RVT \state_reg[2]  ( .D(n37), .CLK(phy_clk), .Q(state[2]) );
  DFFX1_RVT \state_reg[3]  ( .D(n35), .CLK(phy_clk), .Q(state[3]) );
  DFFSSRX1_RVT wb_req_s1_reg ( .D(wb_stb_i), .SETB(1'b1), .RSTB(wb_cyc_i), 
        .CLK(phy_clk), .Q(wb_req_s1) );
  DFFX1_RVT \state_reg[0]  ( .D(n38), .CLK(phy_clk), .Q(state[0]), .QN(n7) );
  DFFX1_RVT wb_ack_s2_reg ( .D(wb_ack_s1a), .CLK(wb_clk), .QN(n8) );
  DFFX1_RVT wb_ack_o_reg ( .D(N47), .CLK(wb_clk), .Q(wb_ack_o), .QN(n9) );
  SDFFSSRX1_RVT wb_ack_s1_reg ( .RSTB(ma_ack), .SETB(n2), .D(state[2]), .SI(
        1'b1), .SE(state[3]), .CLK(wb_clk), .Q(wb_ack_s1) );
  SDFFX1_RVT \wb_data_o_reg[31]  ( .D(rf_din[31]), .SI(ma_din[31]), .SE(
        ma_adr[17]), .CLK(wb_clk), .Q(wb_data_o[31]) );
  SDFFX1_RVT \wb_data_o_reg[30]  ( .D(rf_din[30]), .SI(ma_din[30]), .SE(
        ma_adr[17]), .CLK(wb_clk), .Q(wb_data_o[30]) );
  SDFFX1_RVT \wb_data_o_reg[29]  ( .D(rf_din[29]), .SI(ma_din[29]), .SE(
        ma_adr[17]), .CLK(wb_clk), .Q(wb_data_o[29]) );
  SDFFX1_RVT \wb_data_o_reg[28]  ( .D(rf_din[28]), .SI(ma_din[28]), .SE(
        ma_adr[17]), .CLK(wb_clk), .Q(wb_data_o[28]) );
  SDFFX1_RVT \wb_data_o_reg[27]  ( .D(rf_din[27]), .SI(ma_din[27]), .SE(
        ma_adr[17]), .CLK(wb_clk), .Q(wb_data_o[27]) );
  SDFFX1_RVT \wb_data_o_reg[26]  ( .D(rf_din[26]), .SI(ma_din[26]), .SE(
        ma_adr[17]), .CLK(wb_clk), .Q(wb_data_o[26]) );
  SDFFX1_RVT \wb_data_o_reg[25]  ( .D(rf_din[25]), .SI(ma_din[25]), .SE(
        ma_adr[17]), .CLK(wb_clk), .Q(wb_data_o[25]) );
  SDFFX1_RVT \wb_data_o_reg[24]  ( .D(rf_din[24]), .SI(ma_din[24]), .SE(
        ma_adr[17]), .CLK(wb_clk), .Q(wb_data_o[24]) );
  SDFFX1_RVT \wb_data_o_reg[23]  ( .D(rf_din[23]), .SI(ma_din[23]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[23]) );
  SDFFX1_RVT \wb_data_o_reg[22]  ( .D(rf_din[22]), .SI(ma_din[22]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[22]) );
  SDFFX1_RVT \wb_data_o_reg[21]  ( .D(rf_din[21]), .SI(ma_din[21]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[21]) );
  SDFFX1_RVT \wb_data_o_reg[20]  ( .D(rf_din[20]), .SI(ma_din[20]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[20]) );
  SDFFX1_RVT \wb_data_o_reg[19]  ( .D(rf_din[19]), .SI(ma_din[19]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[19]) );
  SDFFX1_RVT \wb_data_o_reg[18]  ( .D(rf_din[18]), .SI(ma_din[18]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[18]) );
  SDFFX1_RVT \wb_data_o_reg[17]  ( .D(rf_din[17]), .SI(ma_din[17]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[17]) );
  SDFFX1_RVT \wb_data_o_reg[16]  ( .D(rf_din[16]), .SI(ma_din[16]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[16]) );
  SDFFX1_RVT \wb_data_o_reg[15]  ( .D(rf_din[15]), .SI(ma_din[15]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[15]) );
  SDFFX1_RVT \wb_data_o_reg[14]  ( .D(rf_din[14]), .SI(ma_din[14]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[14]) );
  SDFFX1_RVT \wb_data_o_reg[13]  ( .D(rf_din[13]), .SI(ma_din[13]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[13]) );
  SDFFX1_RVT \wb_data_o_reg[12]  ( .D(rf_din[12]), .SI(ma_din[12]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[12]) );
  SDFFX1_RVT \wb_data_o_reg[11]  ( .D(rf_din[11]), .SI(ma_din[11]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[11]) );
  SDFFX1_RVT \wb_data_o_reg[10]  ( .D(rf_din[10]), .SI(ma_din[10]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[10]) );
  SDFFX1_RVT \wb_data_o_reg[9]  ( .D(rf_din[9]), .SI(ma_din[9]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[9]) );
  SDFFX1_RVT \wb_data_o_reg[8]  ( .D(rf_din[8]), .SI(ma_din[8]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[8]) );
  SDFFX1_RVT \wb_data_o_reg[7]  ( .D(rf_din[7]), .SI(ma_din[7]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[7]) );
  SDFFX1_RVT \wb_data_o_reg[6]  ( .D(rf_din[6]), .SI(ma_din[6]), .SE(n11), 
        .CLK(wb_clk), .Q(wb_data_o[6]) );
  SDFFX1_RVT \wb_data_o_reg[4]  ( .D(rf_din[4]), .SI(ma_din[4]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[4]) );
  SDFFX1_RVT \wb_data_o_reg[3]  ( .D(rf_din[3]), .SI(ma_din[3]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[3]) );
  SDFFX1_RVT \wb_data_o_reg[2]  ( .D(rf_din[2]), .SI(ma_din[2]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[2]) );
  SDFFX1_RVT \wb_data_o_reg[1]  ( .D(rf_din[1]), .SI(ma_din[1]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[1]) );
  SDFFX1_RVT \wb_data_o_reg[0]  ( .D(rf_din[0]), .SI(ma_din[0]), .SE(n10), 
        .CLK(wb_clk), .Q(wb_data_o[0]) );
  DFFX1_RVT wb_ack_s1a_reg ( .D(wb_ack_s1), .CLK(wb_clk), .Q(wb_ack_s1a) );
  NBUFFX2_RVT U5 ( .A(wb_data_i[25]), .Y(rf_dout[25]) );
  NBUFFX2_RVT U6 ( .A(wb_data_i[26]), .Y(rf_dout[26]) );
  NBUFFX2_RVT U7 ( .A(wb_data_i[27]), .Y(rf_dout[27]) );
  INVX1_RVT U8 ( .A(n14), .Y(ma_adr[17]) );
  INVX1_RVT U9 ( .A(n26), .Y(n39) );
  INVX1_RVT U10 ( .A(n14), .Y(n10) );
  INVX1_RVT U11 ( .A(n14), .Y(n11) );
  INVX1_RVT U12 ( .A(n18), .Y(rf_we) );
  INVX1_RVT U13 ( .A(n19), .Y(rf_re) );
  INVX1_RVT U14 ( .A(ma_ack), .Y(n15) );
  INVX1_RVT U15 ( .A(n27), .Y(n16) );
  AND2X1_RVT U16 ( .A1(rst), .A2(n27), .Y(n20) );
  NAND3X0_RVT U17 ( .A1(n26), .A2(n32), .A3(n24), .Y(n30) );
  INVX1_RVT U18 ( .A(wb_addr_i[17]), .Y(n14) );
  AO221X1_RVT U19 ( .A1(n39), .A2(state[0]), .A3(state[2]), .A4(n15), .A5(
        ma_we), .Y(ma_req) );
  AO22X1_RVT U20 ( .A1(state[1]), .A2(n15), .A3(n40), .A4(state[0]), .Y(ma_we)
         );
  INVX1_RVT U21 ( .A(n32), .Y(n40) );
  NAND3X0_RVT U22 ( .A1(wb_req_s1), .A2(n44), .A3(ma_adr[17]), .Y(n26) );
  NAND3X0_RVT U23 ( .A1(wb_we_i), .A2(wb_req_s1), .A3(ma_adr[17]), .Y(n32) );
  INVX1_RVT U24 ( .A(wb_we_i), .Y(n44) );
  NAND3X0_RVT U25 ( .A1(wb_req_s1), .A2(n14), .A3(wb_we_i), .Y(n24) );
  OR2X1_RVT U26 ( .A1(n7), .A2(n24), .Y(n18) );
  NAND3X0_RVT U27 ( .A1(n14), .A2(n44), .A3(wb_req_s1), .Y(n23) );
  OR2X1_RVT U28 ( .A1(n23), .A2(n7), .Y(n19) );
  AND3X1_RVT U29 ( .A1(wb_ack_s1), .A2(n8), .A3(n9), .Y(N47) );
  AO22X1_RVT U30 ( .A1(n16), .A2(state[0]), .A3(n28), .A4(n27), .Y(n38) );
  NAND2X0_RVT U31 ( .A1(rst), .A2(n12), .Y(n28) );
  AO22X1_RVT U32 ( .A1(state[5]), .A2(n16), .A3(state[4]), .A4(n20), .Y(n33)
         );
  AO22X1_RVT U33 ( .A1(state[2]), .A2(n16), .A3(n39), .A4(n25), .Y(n37) );
  AO22X1_RVT U34 ( .A1(state[1]), .A2(n16), .A3(n25), .A4(n26), .Y(n36) );
  AO22X1_RVT U35 ( .A1(state[3]), .A2(n16), .A3(n20), .A4(n22), .Y(n35) );
  NAND2X0_RVT U36 ( .A1(n18), .A2(n19), .Y(n22) );
  AO22X1_RVT U37 ( .A1(n16), .A2(state[4]), .A3(n20), .A4(n21), .Y(n34) );
  OR2X1_RVT U38 ( .A1(n17), .A2(state[3]), .Y(n21) );
  OR2X1_RVT U39 ( .A1(state[2]), .A2(state[1]), .Y(n17) );
  NAND2X0_RVT U40 ( .A1(n29), .A2(rst), .Y(n27) );
  OAI22X1_RVT U41 ( .A1(n30), .A2(n31), .A3(n43), .A4(ma_ack), .Y(n29) );
  NAND2X0_RVT U42 ( .A1(state[0]), .A2(n23), .Y(n31) );
  INVX1_RVT U43 ( .A(n17), .Y(n43) );
  AND4X1_RVT U44 ( .A1(n20), .A2(state[0]), .A3(n23), .A4(n24), .Y(n25) );
endmodule


module usbf_top ( clk_i, rst_i, wb_addr_i, wb_data_i, wb_data_o, wb_ack_o, 
        wb_we_i, wb_stb_i, wb_cyc_i, inta_o, intb_o, dma_req_o, dma_ack_i, 
        susp_o, resume_req_i, phy_clk_pad_i, phy_rst_pad_o, DataOut_pad_o, 
        TxValid_pad_o, TxReady_pad_i, RxValid_pad_i, RxActive_pad_i, 
        RxError_pad_i, DataIn_pad_i, XcvSelect_pad_o, TermSel_pad_o, 
        SuspendM_pad_o, LineState_pad_i, OpMode_pad_o, usb_vbus_pad_i, 
        VControl_Load_pad_o, VControl_pad_o, VStatus_pad_i, sram_adr_o, 
        sram_data_i, sram_data_o, sram_re_o, sram_we_o );
  input [17:0] wb_addr_i;
  input [31:0] wb_data_i;
  output [31:0] wb_data_o;
  output [15:0] dma_req_o;
  input [15:0] dma_ack_i;
  output [7:0] DataOut_pad_o;
  input [7:0] DataIn_pad_i;
  input [1:0] LineState_pad_i;
  output [1:0] OpMode_pad_o;
  output [3:0] VControl_pad_o;
  input [7:0] VStatus_pad_i;
  output [14:0] sram_adr_o;
  input [31:0] sram_data_i;
  output [31:0] sram_data_o;
  input clk_i, rst_i, wb_we_i, wb_stb_i, wb_cyc_i, resume_req_i, phy_clk_pad_i,
         TxReady_pad_i, RxValid_pad_i, RxActive_pad_i, RxError_pad_i,
         usb_vbus_pad_i;
  output wb_ack_o, inta_o, intb_o, susp_o, phy_rst_pad_o, TxValid_pad_o,
         XcvSelect_pad_o, TermSel_pad_o, SuspendM_pad_o, VControl_Load_pad_o,
         sram_re_o, sram_we_o;
  wire   phy_rst_pad_o, usb_suspend, suspend_clr, resume_req_r, rx_valid,
         rx_active, rx_err, tx_valid, tx_valid_last, tx_ready, tx_first,
         mode_hs, usb_reset, usb_attached, mwe, mreq, mack, dma_in_buf_sz1,
         dma_out_buf_avail, match, buf0_rl, buf0_set, buf1_set, uc_bsel_set,
         uc_dpd_set, int_buf1_set, int_buf0_set, int_upid_set, int_crc16_set,
         int_to_set, int_seqerr_set, out_to_small, pid_cs_err, nse_err,
         crc5_err, ma_we, ma_req, ma_ack, rf_re, rf_we, n4, n6, n8;
  wire   [1:0] LineState_r;
  wire   [7:0] VStatus_r;
  wire   [7:0] rx_data;
  wire   [7:0] tx_data;
  wire   [14:0] madr;
  wire   [31:0] mdout;
  wire   [31:0] mdin;
  wire   [6:0] funct_adr;
  wire   [31:0] idin;
  wire   [3:0] ep_sel;
  wire   [31:0] csr;
  wire   [31:0] buf0;
  wire   [31:0] buf1;
  wire   [31:0] frm_nat;
  wire   [17:0] ma_adr;
  wire   [31:0] ma2wb_d;
  wire   [31:0] wb2ma_d;
  wire   [31:0] wb2rf_d;
  wire   [31:0] rf2wb_d;
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
        SYNOPSYS_UNCONNECTED__20;
  assign phy_rst_pad_o = rst_i;
  assign sram_re_o = 1'b1;
  assign dma_req_o[4] = 1'b0;
  assign dma_req_o[15] = 1'b0;
  assign dma_req_o[14] = 1'b0;
  assign dma_req_o[13] = 1'b0;
  assign dma_req_o[12] = 1'b0;
  assign dma_req_o[11] = 1'b0;
  assign dma_req_o[10] = 1'b0;
  assign dma_req_o[9] = 1'b0;
  assign dma_req_o[8] = 1'b0;
  assign dma_req_o[7] = 1'b0;
  assign dma_req_o[6] = 1'b0;
  assign dma_req_o[5] = 1'b0;
  assign OpMode_pad_o[0] = 1'b0;

  usbf_utmi_if u0 ( .phy_clk(phy_clk_pad_i), .rst(n8), .DataOut(DataOut_pad_o), 
        .TxValid(TxValid_pad_o), .TxReady(TxReady_pad_i), .RxValid(
        RxValid_pad_i), .RxActive(RxActive_pad_i), .RxError(RxError_pad_i), 
        .DataIn(DataIn_pad_i), .XcvSelect(XcvSelect_pad_o), .TermSel(
        TermSel_pad_o), .SuspendM(SuspendM_pad_o), .LineState(LineState_pad_i), 
        .OpMode({OpMode_pad_o[1], SYNOPSYS_UNCONNECTED__0}), .usb_vbus(
        usb_vbus_pad_i), .rx_data(rx_data), .rx_valid(rx_valid), .rx_active(
        rx_active), .rx_err(rx_err), .tx_data(tx_data), .tx_valid(tx_valid), 
        .tx_valid_last(tx_valid_last), .tx_ready(tx_ready), .tx_first(tx_first), .mode_hs(mode_hs), .usb_reset(usb_reset), .usb_suspend(usb_suspend), 
        .usb_attached(usb_attached), .resume_req(resume_req_r), .suspend_clr(
        suspend_clr) );
  usbf_pl_SSRAM_HADR14 u1 ( .clk(phy_clk_pad_i), .rst(n8), .rx_data(rx_data), 
        .rx_valid(rx_valid), .rx_active(rx_active), .rx_err(rx_err), .tx_data(
        tx_data), .tx_valid(tx_valid), .tx_valid_last(tx_valid_last), 
        .tx_ready(tx_ready), .tx_first(tx_first), .tx_valid_out(TxValid_pad_o), 
        .mode_hs(mode_hs), .usb_reset(usb_reset), .usb_suspend(usb_suspend), 
        .usb_attached(usb_attached), .madr(madr), .mdout(mdout), .mdin(mdin), 
        .mwe(mwe), .mreq(mreq), .mack(mack), .fa(funct_adr), .idin(idin), 
        .ep_sel(ep_sel), .match(match), .dma_in_buf_sz1(dma_in_buf_sz1), 
        .dma_out_buf_avail(dma_out_buf_avail), .buf0_rl(buf0_rl), .buf0_set(
        buf0_set), .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), 
        .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(
        int_buf0_set), .int_upid_set(int_upid_set), .int_crc16_set(
        int_crc16_set), .int_to_set(int_to_set), .int_seqerr_set(
        int_seqerr_set), .out_to_small(out_to_small), .csr(csr), .buf0(buf0), 
        .buf1(buf1), .frm_nat({frm_nat[31:28], SYNOPSYS_UNCONNECTED__1, 
        frm_nat[26:16], SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, frm_nat[11:0]}), 
        .pid_cs_err(pid_cs_err), .nse_err(nse_err), .crc5_err(crc5_err) );
  usbf_mem_arb_SSRAM_HADR14 u2 ( .phy_clk(phy_clk_pad_i), .wclk(clk_i), .rst(
        n8), .sram_adr(sram_adr_o), .sram_din(sram_data_i), .sram_dout(
        sram_data_o), .sram_we(sram_we_o), .madr(madr), .mdout(mdin), .mdin(
        mdout), .mwe(mwe), .mreq(mreq), .mack(mack), .wadr(ma_adr[16:2]), 
        .wdout(ma2wb_d), .wdin(wb2ma_d), .wwe(ma_we), .wreq(ma_req), .wack(
        ma_ack) );
  usbf_rf u4 ( .clk(phy_clk_pad_i), .wclk(clk_i), .rst(phy_rst_pad_o), .adr(
        ma_adr[8:2]), .re(rf_re), .we(rf_we), .din(wb2rf_d), .dout(rf2wb_d), 
        .inta(inta_o), .intb(intb_o), .dma_req({SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, dma_req_o[3:0]}), .dma_ack(dma_ack_i), 
        .idin(idin), .ep_sel(ep_sel), .match(match), .buf0_rl(buf0_rl), 
        .buf0_set(buf0_set), .buf1_set(buf1_set), .uc_bsel_set(uc_bsel_set), 
        .uc_dpd_set(uc_dpd_set), .int_buf1_set(int_buf1_set), .int_buf0_set(
        int_buf0_set), .int_upid_set(int_upid_set), .int_crc16_set(
        int_crc16_set), .int_to_set(int_to_set), .int_seqerr_set(
        int_seqerr_set), .out_to_small(out_to_small), .csr(csr), .buf0(buf0), 
        .buf1(buf1), .funct_adr(funct_adr), .dma_in_buf_sz1(dma_in_buf_sz1), 
        .dma_out_buf_avail(dma_out_buf_avail), .frm_nat({frm_nat[31:28], 1'b0, 
        frm_nat[26:16], 1'b0, 1'b0, 1'b0, 1'b0, frm_nat[11:0]}), 
        .utmi_vend_stat(VStatus_r), .utmi_vend_ctrl(VControl_pad_o), 
        .utmi_vend_wr(VControl_Load_pad_o), .line_stat(LineState_r), 
        .usb_attached(usb_attached), .mode_hs(mode_hs), .suspend(usb_suspend), 
        .attached(usb_attached), .usb_reset(usb_reset), .pid_cs_err(pid_cs_err), .nse_err(nse_err), .crc5_err(crc5_err), .rx_err(rx_err) );
  usbf_wb u5 ( .wb_clk(clk_i), .phy_clk(phy_clk_pad_i), .rst(n8), .wb_addr_i(
        wb_addr_i), .wb_data_i(wb_data_i), .wb_data_o(wb_data_o), .wb_ack_o(
        wb_ack_o), .wb_we_i(wb_we_i), .wb_stb_i(wb_stb_i), .wb_cyc_i(wb_cyc_i), 
        .ma_adr({SYNOPSYS_UNCONNECTED__18, ma_adr[16:2], 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20}), .ma_dout(wb2ma_d), .ma_din(ma2wb_d), .ma_we(ma_we), .ma_req(ma_req), .ma_ack(ma_ack), .rf_re(
        rf_re), .rf_we(rf_we), .rf_din(rf2wb_d), .rf_dout(wb2rf_d) );
  DFFX1_RVT \LineState_r_reg[1]  ( .D(LineState_pad_i[1]), .CLK(phy_clk_pad_i), 
        .Q(LineState_r[1]) );
  DFFX1_RVT \LineState_r_reg[0]  ( .D(LineState_pad_i[0]), .CLK(phy_clk_pad_i), 
        .Q(LineState_r[0]) );
  SDFFSSRX1_RVT resume_req_r_reg ( .RSTB(phy_rst_pad_o), .SETB(1'b1), .D(n4), 
        .SI(1'b0), .SE(n6), .CLK(clk_i), .Q(resume_req_r) );
  DFFX1_RVT \VStatus_r_reg[7]  ( .D(VStatus_pad_i[7]), .CLK(phy_clk_pad_i), 
        .Q(VStatus_r[7]) );
  DFFX1_RVT \VStatus_r_reg[6]  ( .D(VStatus_pad_i[6]), .CLK(phy_clk_pad_i), 
        .Q(VStatus_r[6]) );
  DFFX1_RVT \VStatus_r_reg[5]  ( .D(VStatus_pad_i[5]), .CLK(phy_clk_pad_i), 
        .Q(VStatus_r[5]) );
  DFFX1_RVT \VStatus_r_reg[4]  ( .D(VStatus_pad_i[4]), .CLK(phy_clk_pad_i), 
        .Q(VStatus_r[4]) );
  DFFX1_RVT \VStatus_r_reg[3]  ( .D(VStatus_pad_i[3]), .CLK(phy_clk_pad_i), 
        .Q(VStatus_r[3]) );
  DFFX1_RVT \VStatus_r_reg[2]  ( .D(VStatus_pad_i[2]), .CLK(phy_clk_pad_i), 
        .Q(VStatus_r[2]) );
  DFFX1_RVT \VStatus_r_reg[1]  ( .D(VStatus_pad_i[1]), .CLK(phy_clk_pad_i), 
        .Q(VStatus_r[1]) );
  DFFX1_RVT \VStatus_r_reg[0]  ( .D(VStatus_pad_i[0]), .CLK(phy_clk_pad_i), 
        .Q(VStatus_r[0]) );
  DFFX1_RVT suspend_clr_wr_reg ( .D(suspend_clr), .CLK(clk_i), .QN(n4) );
  DFFX1_RVT susp_o_reg ( .D(usb_suspend), .CLK(clk_i), .Q(susp_o) );
  NOR2X0_RVT U7 ( .A1(resume_req_r), .A2(resume_req_i), .Y(n6) );
  NBUFFX2_RVT U9 ( .A(phy_rst_pad_o), .Y(n8) );
endmodule

