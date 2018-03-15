
module controller ( clk_controller, SM1_voltage );
  input [7:0] SM1_voltage;
  input clk_controller;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, net8, net9, net10, net11,
         net12, net13, \SM1_adjuster/N20 , \SM1_adjuster/N19 ,
         \SM1_adjuster/N18 , \SM1_adjuster/N17 , \SM1_adjuster/N16 ,
         \SM1_adjuster/N15 , \SM1_adjuster/N14 , \SM1_adjuster/N13 ,
         \SM1_adjuster/N12 , \SM1_adjuster/N11 , \SM1_adjuster/N10 ,
         \SM1_adjuster/N9 , \SM1_adjuster/N8 , \SM1_adjuster/N7 ,
         \SM1_adjuster/N6 , \SM1_adjuster/N5 , \SM1_adjuster/N4 ,
         \SM1_adjuster/N3 , \SM1_adjuster/N2 , \SM1_adjuster/N1 ,
         \SM1_adjuster/remaining[0] , \SM1_adjuster/remaining[1] ,
         \SM1_adjuster/remaining[2] , \SM1_adjuster/remaining[3] ,
         \SM1_adjuster/remaining[4] , \SM1_adjuster/N0 , net15, net16, net17;
  wire   [4:0] SM1_issue_width_10_cycle;
  wire   [3:0] \SM1_adjuster/rst ;

  \**SEQGEN**  \SM1_issue_width_10_cycle_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N9), .clocked_on(clk_controller), .data_in(1'b0), .enable(
        1'b0), .Q(SM1_issue_width_10_cycle[4]), .QN(), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SM1_issue_width_10_cycle_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N8), .clocked_on(clk_controller), .data_in(1'b0), .enable(
        1'b0), .Q(SM1_issue_width_10_cycle[3]), .QN(), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SM1_issue_width_10_cycle_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N7), .clocked_on(clk_controller), .data_in(1'b0), .enable(
        1'b0), .Q(SM1_issue_width_10_cycle[2]), .QN(), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SM1_issue_width_10_cycle_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N6), .clocked_on(clk_controller), .data_in(1'b0), .enable(
        1'b0), .Q(SM1_issue_width_10_cycle[1]), .QN(), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SM1_issue_width_10_cycle_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N5), .clocked_on(clk_controller), .data_in(1'b0), .enable(
        1'b0), .Q(SM1_issue_width_10_cycle[0]), .QN(), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  DIV_UNS_OP div_33 ( .A(SM1_voltage), .B({1'b1, 1'b0, 1'b1, 1'b0}), 
        .QUOTIENT({net15, net16, net17, N4, N3, N2, N1, N0}) );
  SUB_UNS_OP sub_33 ( .A({1'b1, 1'b0, 1'b1, 1'b0, 1'b0}), .B({N4, N3, N2, N1, 
        N0}), .Z({N9, N8, N7, N6, N5}) );
  GTECH_NOT \SM1_adjuster/I_0  ( .A(\SM1_adjuster/N10 ), .Z(\SM1_adjuster/N11 ) );
  SELECT_OP \SM1_adjuster/C20  ( .DATA1({1'b1, 1'b0, 1'b1, 1'b0}), .DATA2({
        \SM1_adjuster/N9 , \SM1_adjuster/N8 , \SM1_adjuster/N7 , 
        \SM1_adjuster/N6 }), .CONTROL1(\SM1_adjuster/N0 ), .CONTROL2(
        \SM1_adjuster/N11 ), .Z({\SM1_adjuster/N20 , \SM1_adjuster/N19 , 
        \SM1_adjuster/N18 , \SM1_adjuster/N17 }) );
  GTECH_BUF \SM1_adjuster/B_0  ( .A(\SM1_adjuster/N10 ), .Z(\SM1_adjuster/N0 )
         );
  SELECT_OP \SM1_adjuster/C19  ( .DATA1(SM1_issue_width_10_cycle), .DATA2({
        \SM1_adjuster/N5 , \SM1_adjuster/N4 , \SM1_adjuster/N3 , 
        \SM1_adjuster/N2 , \SM1_adjuster/N1 }), .CONTROL1(\SM1_adjuster/N0 ), 
        .CONTROL2(\SM1_adjuster/N11 ), .Z({\SM1_adjuster/N16 , 
        \SM1_adjuster/N15 , \SM1_adjuster/N14 , \SM1_adjuster/N13 , 
        \SM1_adjuster/N12 }) );
  SUB_UNS_OP \SM1_adjuster/sub_66  ( .A(\SM1_adjuster/rst ), .B(1'b1), .Z({
        \SM1_adjuster/N9 , \SM1_adjuster/N8 , \SM1_adjuster/N7 , 
        \SM1_adjuster/N6 }) );
  SUB_UNS_OP \SM1_adjuster/sub_65  ( .A({\SM1_adjuster/remaining[4] , 
        \SM1_adjuster/remaining[3] , \SM1_adjuster/remaining[2] , 
        \SM1_adjuster/remaining[1] , \SM1_adjuster/remaining[0] }), .B({net9, 
        net10, net11, net12, net13}), .Z({\SM1_adjuster/N5 , \SM1_adjuster/N4 , 
        \SM1_adjuster/N3 , \SM1_adjuster/N2 , \SM1_adjuster/N1 }) );
  \**SEQGEN**  \SM1_adjuster/rst_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(\SM1_adjuster/N17 ), .clocked_on(net8), .data_in(1'b0), 
        .enable(1'b0), .Q(\SM1_adjuster/rst [0]), .QN(), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SM1_adjuster/rst_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(\SM1_adjuster/N18 ), .clocked_on(net8), .data_in(1'b0), 
        .enable(1'b0), .Q(\SM1_adjuster/rst [1]), .QN(), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SM1_adjuster/rst_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(\SM1_adjuster/N19 ), .clocked_on(net8), .data_in(1'b0), 
        .enable(1'b0), .Q(\SM1_adjuster/rst [2]), .QN(), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SM1_adjuster/rst_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(\SM1_adjuster/N20 ), .clocked_on(net8), .data_in(1'b0), 
        .enable(1'b0), .Q(\SM1_adjuster/rst [3]), .QN(), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SM1_adjuster/remaining_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(\SM1_adjuster/N12 ), .clocked_on(net8), .data_in(1'b0), 
        .enable(1'b0), .Q(\SM1_adjuster/remaining[0] ), .QN(), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1)
         );
  \**SEQGEN**  \SM1_adjuster/remaining_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(\SM1_adjuster/N13 ), .clocked_on(net8), .data_in(1'b0), 
        .enable(1'b0), .Q(\SM1_adjuster/remaining[1] ), .QN(), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1)
         );
  \**SEQGEN**  \SM1_adjuster/remaining_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(\SM1_adjuster/N14 ), .clocked_on(net8), .data_in(1'b0), 
        .enable(1'b0), .Q(\SM1_adjuster/remaining[2] ), .QN(), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1)
         );
  \**SEQGEN**  \SM1_adjuster/remaining_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(\SM1_adjuster/N15 ), .clocked_on(net8), .data_in(1'b0), 
        .enable(1'b0), .Q(\SM1_adjuster/remaining[3] ), .QN(), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1)
         );
  \**SEQGEN**  \SM1_adjuster/remaining_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(\SM1_adjuster/N16 ), .clocked_on(net8), .data_in(1'b0), 
        .enable(1'b0), .Q(\SM1_adjuster/remaining[4] ), .QN(), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1)
         );
  LEQ_UNS_OP \SM1_adjuster/lte_67  ( .A({\SM1_adjuster/N9 , \SM1_adjuster/N8 , 
        \SM1_adjuster/N7 , \SM1_adjuster/N6 }), .B(1'b0), .Z(
        \SM1_adjuster/N10 ) );
endmodule

