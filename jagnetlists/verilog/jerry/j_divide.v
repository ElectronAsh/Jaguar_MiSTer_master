/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_divide
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
	output div_activei,
	output [0:31] quotient,
	input clk,
	input div_start,
	input divwr,
	input [0:31] dstd,
	input [0:31] gpu_din,
	input remrd,
	input reset_n,
	input [0:31] srcd,
	input sys_clk // Generated
);
wire [0:31] divhit;
wire [0:31] dividend_hi;
wire [0:31] thisneg32_n;
wire [0:31] addq1;
wire [0:31] divein;
wire [0:31] dividend_lo;
wire [0:31] divisor;
wire [0:31] dend1;
wire [0:31] divr1;
wire [0:31] dend2;
wire [0:31] divr2;
wire [0:31] addq2;
wire zero;
wire div_start_n;
wire div_startb_0;
wire div_startb_1;
wire div_startb_2;
wire div_offsett;
wire div_offset;
wire divr1_0;
wire divr1_1;
wire divr1_2;
wire divr1_3;
wire divr1_4;
wire divr1_5;
wire last_neg_n_0;
wire divr1_6;
wire divr1_7;
wire divr1_8;
wire divr1_9;
wire divr1_10;
wire divr1_11;
wire last_neg_n_1;
wire divr1_12;
wire divr1_13;
wire divr1_14;
wire divr1_15;
wire divr1_16;
wire divr1_17;
wire last_neg_n_2;
wire divr1_18;
wire divr1_19;
wire divr1_20;
wire divr1_21;
wire divr1_22;
wire divr1_23;
wire last_neg_n_3;
wire divr1_24;
wire divr1_25;
wire divr1_26;
wire divr1_27;
wire divr1_28;
wire divr1_29;
wire last_neg_n_4;
wire divr1_30;
wire divr1_31;
wire last_neg_n_5;
wire carry1;
wire unused_0;
wire unused_1;
wire carry1_n;
wire dividend_hi_n_31;
wire addq132t_0;
wire last_neg_5;
wire addq132t_1;
wire addq132t_2;
wire addq132t_3;
wire thisnegt;
wire thisnegtt;
wire thisnegb_n_0;
wire thisnegb_n_1;
wire thisnegb_n_2;
wire thisnegb_n_3;
wire thisneg;
wire addq1_32;
wire carry2;
wire unused_3;
wire unused_4;
wire addq2_32;
wire unused_2;
wire addq1_n_31;
wire carry2_n;
wire lnegt_0;
wire div_activeb_0;
wire lnegt_1;
wire lnegt_2;
wire lnegt_3;
wire lnegt_n;
wire dhlsel_0;
wire div_activeb_2;
wire divhit_0;
wire divhit_1;
wire divhit_2;
wire divhit_3;
wire divhit_4;
wire divhit_5;
wire divhit_6;
wire divhit_7;
wire divhit_8;
wire divhit_9;
wire divhit_10;
wire divhit_11;
wire divhit_12;
wire divhit_13;
wire divhit_14;
wire divhit_15;
wire divhit_16;
wire divhit_17;
wire divhit_18;
wire divhit_19;
wire divhit_20;
wire divhit_21;
wire divhit_22;
wire divhit_23;
wire divhit_24;
wire divhit_25;
wire divhit_26;
wire divhit_27;
wire divhit_28;
wire divhit_29;
wire divhit_30;
wire divhit_31;
wire diveif0;
wire divein_0;
wire divein_1;
wire divein_2;
wire divein_3;
wire divein_4;
wire divein_5;
wire divein_6;
wire divein_7;
wire divein_8;
wire divein_9;
wire divein_10;
wire divein_11;
wire divein_12;
wire divein_13;
wire divein_14;
wire divein_15;
wire divein_16;
wire divein_17;
wire divein_18;
wire divein_19;
wire divein_20;
wire divein_21;
wire divein_22;
wire divein_23;
wire divein_24;
wire divein_25;
wire divein_26;
wire divein_27;
wire divein_28;
wire divein_29;
wire divein_30;
wire divein_31;
wire quosh_1;
wire quoti_0;
wire quotient_n_0;
wire quotient_0;
wire quotient_1;
wire quotient_2;
wire quotient_3;
wire quotient_4;
wire quotient_5;
wire quotient_6;
wire quotient_7;
wire quotient_8;
wire quotient_9;
wire quotient_10;
wire quotient_11;
wire quotient_12;
wire quotient_13;
wire quotient_14;
wire quotient_15;
wire quotient_16;
wire quotient_17;
wire quotient_18;
wire quotient_19;
wire quotient_20;
wire quotient_21;
wire quotient_22;
wire quotient_23;
wire quotient_24;
wire quotient_25;
wire quotient_26;
wire quotient_27;
wire quotient_28;
wire quotient_29;
wire quotient_30;
wire quotient_31;
wire div_activeb_1;
wire cnten;
wire cntt_0;
wire count_0;
wire cntt_1;
wire cntc_1;
wire count_1;
wire cntt_2;
wire cntc_2;
wire count_2;
wire cntt_3;
wire count_3;
wire cnti_0;
wire cnti_1;
wire cnti_2;
wire cnti_3;
wire cnt_zero_n;
wire dat_0;
wire div_active;

// Output buffers
wire div_activei_obuf;


// Output buffers
assign div_activei = div_activei_obuf;


// DIVIDE.NET (70) - zero : tie0
assign zero = 1'b0;

// DIVIDE.NET (72) - div_start\ : iv
assign div_start_n = ~div_start;

// DIVIDE.NET (73) - div_startb[0-2] : nivu
assign div_startb_0 = div_start;
assign div_startb_1 = div_start;
assign div_startb_2 = div_start;

// DIVIDE.NET (77) - div_offsett : fdsyncr
j_fdsyncr div_offsett_inst
(
	.q /* OUT */ (div_offsett),
	.d /* IN */ (gpu_din[0]),
	.ld /* IN */ (divwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (79) - div_offset : nivh
assign div_offset = div_offsett;

// DIVIDE.NET (82) - dend1 : join
assign dend1[0] = dividend_lo[31];
assign dend1[1] = dividend_hi[0];
assign dend1[2] = dividend_hi[1];
assign dend1[3] = dividend_hi[2];
assign dend1[4] = dividend_hi[3];
assign dend1[5] = dividend_hi[4];
assign dend1[6] = dividend_hi[5];
assign dend1[7] = dividend_hi[6];
assign dend1[8] = dividend_hi[7];
assign dend1[9] = dividend_hi[8];
assign dend1[10] = dividend_hi[9];
assign dend1[11] = dividend_hi[10];
assign dend1[12] = dividend_hi[11];
assign dend1[13] = dividend_hi[12];
assign dend1[14] = dividend_hi[13];
assign dend1[15] = dividend_hi[14];
assign dend1[16] = dividend_hi[15];
assign dend1[17] = dividend_hi[16];
assign dend1[18] = dividend_hi[17];
assign dend1[19] = dividend_hi[18];
assign dend1[20] = dividend_hi[19];
assign dend1[21] = dividend_hi[20];
assign dend1[22] = dividend_hi[21];
assign dend1[23] = dividend_hi[22];
assign dend1[24] = dividend_hi[23];
assign dend1[25] = dividend_hi[24];
assign dend1[26] = dividend_hi[25];
assign dend1[27] = dividend_hi[26];
assign dend1[28] = dividend_hi[27];
assign dend1[29] = dividend_hi[28];
assign dend1[30] = dividend_hi[29];
assign dend1[31] = dividend_hi[30];

// DIVIDE.NET (84) - divr1[0-5] : eop
assign divr1_0 = divisor[0] ^ last_neg_n_0;
assign divr1_1 = divisor[1] ^ last_neg_n_0;
assign divr1_2 = divisor[2] ^ last_neg_n_0;
assign divr1_3 = divisor[3] ^ last_neg_n_0;
assign divr1_4 = divisor[4] ^ last_neg_n_0;
assign divr1_5 = divisor[5] ^ last_neg_n_0;

// DIVIDE.NET (85) - divr1[6-11] : eop
assign divr1_6 = divisor[6] ^ last_neg_n_1;
assign divr1_7 = divisor[7] ^ last_neg_n_1;
assign divr1_8 = divisor[8] ^ last_neg_n_1;
assign divr1_9 = divisor[9] ^ last_neg_n_1;
assign divr1_10 = divisor[10] ^ last_neg_n_1;
assign divr1_11 = divisor[11] ^ last_neg_n_1;

// DIVIDE.NET (86) - divr1[12-17] : eop
assign divr1_12 = divisor[12] ^ last_neg_n_2;
assign divr1_13 = divisor[13] ^ last_neg_n_2;
assign divr1_14 = divisor[14] ^ last_neg_n_2;
assign divr1_15 = divisor[15] ^ last_neg_n_2;
assign divr1_16 = divisor[16] ^ last_neg_n_2;
assign divr1_17 = divisor[17] ^ last_neg_n_2;

// DIVIDE.NET (88) - divr1[18-23] : eop
assign divr1_18 = divisor[18] ^ last_neg_n_3;
assign divr1_19 = divisor[19] ^ last_neg_n_3;
assign divr1_20 = divisor[20] ^ last_neg_n_3;
assign divr1_21 = divisor[21] ^ last_neg_n_3;
assign divr1_22 = divisor[22] ^ last_neg_n_3;
assign divr1_23 = divisor[23] ^ last_neg_n_3;

// DIVIDE.NET (90) - divr1[24-29] : eop
assign divr1_24 = divisor[24] ^ last_neg_n_4;
assign divr1_25 = divisor[25] ^ last_neg_n_4;
assign divr1_26 = divisor[26] ^ last_neg_n_4;
assign divr1_27 = divisor[27] ^ last_neg_n_4;
assign divr1_28 = divisor[28] ^ last_neg_n_4;
assign divr1_29 = divisor[29] ^ last_neg_n_4;

// DIVIDE.NET (92) - divr1[30-31] : eop
assign divr1_30 = divisor[30] ^ last_neg_n_5;
assign divr1_31 = divisor[31] ^ last_neg_n_5;

// DIVIDE.NET (95) - divr1 : join
assign divr1[0] = divr1_0;
assign divr1[1] = divr1_1;
assign divr1[2] = divr1_2;
assign divr1[3] = divr1_3;
assign divr1[4] = divr1_4;
assign divr1[5] = divr1_5;
assign divr1[6] = divr1_6;
assign divr1[7] = divr1_7;
assign divr1[8] = divr1_8;
assign divr1[9] = divr1_9;
assign divr1[10] = divr1_10;
assign divr1[11] = divr1_11;
assign divr1[12] = divr1_12;
assign divr1[13] = divr1_13;
assign divr1[14] = divr1_14;
assign divr1[15] = divr1_15;
assign divr1[16] = divr1_16;
assign divr1[17] = divr1_17;
assign divr1[18] = divr1_18;
assign divr1[19] = divr1_19;
assign divr1[20] = divr1_20;
assign divr1[21] = divr1_21;
assign divr1[22] = divr1_22;
assign divr1[23] = divr1_23;
assign divr1[24] = divr1_24;
assign divr1[25] = divr1_25;
assign divr1[26] = divr1_26;
assign divr1[27] = divr1_27;
assign divr1[28] = divr1_28;
assign divr1[29] = divr1_29;
assign divr1[30] = divr1_30;
assign divr1[31] = divr1_31;

// DIVIDE.NET (97) - adder1 : fa32_int
j_fa32_int adder1_inst
(
	.s /* OUT */ ({addq1[0],addq1[1],addq1[2],addq1[3],addq1[4],addq1[5],addq1[6],addq1[7],addq1[8],addq1[9],addq1[10],addq1[11],addq1[12],addq1[13],addq1[14],addq1[15],addq1[16],addq1[17],addq1[18],addq1[19],addq1[20],addq1[21],addq1[22],addq1[23],addq1[24],addq1[25],addq1[26],addq1[27],addq1[28],addq1[29],addq1[30],addq1[31]}),
	.co32 /* OUT */ (carry1),
	.co31 /* OUT */ (unused_0),
	.co24 /* OUT */ (unused_1),
	.c /* IN */ (last_neg_n_5),
	.a /* IN */ ({dend1[0],dend1[1],dend1[2],dend1[3],dend1[4],dend1[5],dend1[6],dend1[7],dend1[8],dend1[9],dend1[10],dend1[11],dend1[12],dend1[13],dend1[14],dend1[15],dend1[16],dend1[17],dend1[18],dend1[19],dend1[20],dend1[21],dend1[22],dend1[23],dend1[24],dend1[25],dend1[26],dend1[27],dend1[28],dend1[29],dend1[30],dend1[31]}),
	.b /* IN */ ({divr1[0],divr1[1],divr1[2],divr1[3],divr1[4],divr1[5],divr1[6],divr1[7],divr1[8],divr1[9],divr1[10],divr1[11],divr1[12],divr1[13],divr1[14],divr1[15],divr1[16],divr1[17],divr1[18],divr1[19],divr1[20],divr1[21],divr1[22],divr1[23],divr1[24],divr1[25],divr1[26],divr1[27],divr1[28],divr1[29],divr1[30],divr1[31]})
);

// DIVIDE.NET (101) - carry1\ : ivs
assign carry1_n = ~carry1;

// DIVIDE.NET (102) - divdend_hi\[31] : iv
assign dividend_hi_n_31 = ~dividend_hi[31];

// DIVIDE.NET (103) - addq132t0 : nd3p
assign addq132t_0 = ~(dividend_hi[31] & carry1_n & last_neg_5);

// DIVIDE.NET (105) - addq132t1 : nd3p
assign addq132t_1 = ~(dividend_hi_n_31 & carry1 & last_neg_5);

// DIVIDE.NET (107) - addq132t2 : nd3p
assign addq132t_2 = ~(dividend_hi_n_31 & carry1_n & last_neg_n_5);

// DIVIDE.NET (109) - addq132t3 : nd3p
assign addq132t_3 = ~(dividend_hi[31] & carry1 & last_neg_n_5);

// DIVIDE.NET (111) - this_negt : nd4p
assign thisnegt = ~(addq132t_0 & addq132t_1 & addq132t_2 & addq132t_3);

// DIVIDE.NET (112) - this_negtt : nd4p
assign thisnegtt = ~(addq132t_0 & addq132t_1 & addq132t_2 & addq132t_3);

// DIVIDE.NET (114) - this_negb\[0-1] : ivu
assign thisnegb_n_0 = ~thisnegt;
assign thisnegb_n_1 = ~thisnegt;

// DIVIDE.NET (115) - this_negb\[2] : ivu
assign thisnegb_n_2 = ~thisnegtt;

// DIVIDE.NET (116) - this_negb\[3] : ivm
assign thisnegb_n_3 = ~thisnegtt;

// DIVIDE.NET (117) - this_neg : iv
assign thisneg = ~thisnegb_n_0;

// DIVIDE.NET (118) - adder1_33 : join
assign addq1_32 = thisneg;

// DIVIDE.NET (122) - dend2 : join
assign dend2[0] = dividend_lo[30];
assign dend2[1] = addq1[0];
assign dend2[2] = addq1[1];
assign dend2[3] = addq1[2];
assign dend2[4] = addq1[3];
assign dend2[5] = addq1[4];
assign dend2[6] = addq1[5];
assign dend2[7] = addq1[6];
assign dend2[8] = addq1[7];
assign dend2[9] = addq1[8];
assign dend2[10] = addq1[9];
assign dend2[11] = addq1[10];
assign dend2[12] = addq1[11];
assign dend2[13] = addq1[12];
assign dend2[14] = addq1[13];
assign dend2[15] = addq1[14];
assign dend2[16] = addq1[15];
assign dend2[17] = addq1[16];
assign dend2[18] = addq1[17];
assign dend2[19] = addq1[18];
assign dend2[20] = addq1[19];
assign dend2[21] = addq1[20];
assign dend2[22] = addq1[21];
assign dend2[23] = addq1[22];
assign dend2[24] = addq1[23];
assign dend2[25] = addq1[24];
assign dend2[26] = addq1[25];
assign dend2[27] = addq1[26];
assign dend2[28] = addq1[27];
assign dend2[29] = addq1[28];
assign dend2[30] = addq1[29];
assign dend2[31] = addq1[30];

// DIVIDE.NET (123) - this_neg32 : join
assign thisneg32_n[0] = thisnegb_n_0;
assign thisneg32_n[1] = thisnegb_n_0;
assign thisneg32_n[2] = thisnegb_n_0;
assign thisneg32_n[3] = thisnegb_n_0;
assign thisneg32_n[4] = thisnegb_n_0;
assign thisneg32_n[5] = thisnegb_n_0;
assign thisneg32_n[6] = thisnegb_n_0;
assign thisneg32_n[7] = thisnegb_n_0;
assign thisneg32_n[8] = thisnegb_n_0;
assign thisneg32_n[9] = thisnegb_n_1;
assign thisneg32_n[10] = thisnegb_n_1;
assign thisneg32_n[11] = thisnegb_n_1;
assign thisneg32_n[12] = thisnegb_n_1;
assign thisneg32_n[13] = thisnegb_n_1;
assign thisneg32_n[14] = thisnegb_n_1;
assign thisneg32_n[15] = thisnegb_n_1;
assign thisneg32_n[16] = thisnegb_n_1;
assign thisneg32_n[17] = thisnegb_n_1;
assign thisneg32_n[18] = thisnegb_n_1;
assign thisneg32_n[19] = thisnegb_n_2;
assign thisneg32_n[20] = thisnegb_n_2;
assign thisneg32_n[21] = thisnegb_n_2;
assign thisneg32_n[22] = thisnegb_n_2;
assign thisneg32_n[23] = thisnegb_n_2;
assign thisneg32_n[24] = thisnegb_n_2;
assign thisneg32_n[25] = thisnegb_n_2;
assign thisneg32_n[26] = thisnegb_n_2;
assign thisneg32_n[27] = thisnegb_n_2;
assign thisneg32_n[28] = thisnegb_n_2;
assign thisneg32_n[29] = thisnegb_n_2;
assign thisneg32_n[30] = thisnegb_n_2;
assign thisneg32_n[31] = thisnegb_n_2;

// DIVIDE.NET (134) - divr2 : eop
assign divr2[0] = divisor[0] ^ thisneg32_n[0];
assign divr2[1] = divisor[1] ^ thisneg32_n[1];
assign divr2[2] = divisor[2] ^ thisneg32_n[2];
assign divr2[3] = divisor[3] ^ thisneg32_n[3];
assign divr2[4] = divisor[4] ^ thisneg32_n[4];
assign divr2[5] = divisor[5] ^ thisneg32_n[5];
assign divr2[6] = divisor[6] ^ thisneg32_n[6];
assign divr2[7] = divisor[7] ^ thisneg32_n[7];
assign divr2[8] = divisor[8] ^ thisneg32_n[8];
assign divr2[9] = divisor[9] ^ thisneg32_n[9];
assign divr2[10] = divisor[10] ^ thisneg32_n[10];
assign divr2[11] = divisor[11] ^ thisneg32_n[11];
assign divr2[12] = divisor[12] ^ thisneg32_n[12];
assign divr2[13] = divisor[13] ^ thisneg32_n[13];
assign divr2[14] = divisor[14] ^ thisneg32_n[14];
assign divr2[15] = divisor[15] ^ thisneg32_n[15];
assign divr2[16] = divisor[16] ^ thisneg32_n[16];
assign divr2[17] = divisor[17] ^ thisneg32_n[17];
assign divr2[18] = divisor[18] ^ thisneg32_n[18];
assign divr2[19] = divisor[19] ^ thisneg32_n[19];
assign divr2[20] = divisor[20] ^ thisneg32_n[20];
assign divr2[21] = divisor[21] ^ thisneg32_n[21];
assign divr2[22] = divisor[22] ^ thisneg32_n[22];
assign divr2[23] = divisor[23] ^ thisneg32_n[23];
assign divr2[24] = divisor[24] ^ thisneg32_n[24];
assign divr2[25] = divisor[25] ^ thisneg32_n[25];
assign divr2[26] = divisor[26] ^ thisneg32_n[26];
assign divr2[27] = divisor[27] ^ thisneg32_n[27];
assign divr2[28] = divisor[28] ^ thisneg32_n[28];
assign divr2[29] = divisor[29] ^ thisneg32_n[29];
assign divr2[30] = divisor[30] ^ thisneg32_n[30];
assign divr2[31] = divisor[31] ^ thisneg32_n[31];

// DIVIDE.NET (136) - adder2 : fa32_int
j_fa32_int adder2_inst
(
	.s /* OUT */ ({addq2[0],addq2[1],addq2[2],addq2[3],addq2[4],addq2[5],addq2[6],addq2[7],addq2[8],addq2[9],addq2[10],addq2[11],addq2[12],addq2[13],addq2[14],addq2[15],addq2[16],addq2[17],addq2[18],addq2[19],addq2[20],addq2[21],addq2[22],addq2[23],addq2[24],addq2[25],addq2[26],addq2[27],addq2[28],addq2[29],addq2[30],addq2[31]}),
	.co32 /* OUT */ (carry2),
	.co31 /* OUT */ (unused_3),
	.co24 /* OUT */ (unused_4),
	.c /* IN */ (thisnegb_n_3),
	.a /* IN */ ({dend2[0],dend2[1],dend2[2],dend2[3],dend2[4],dend2[5],dend2[6],dend2[7],dend2[8],dend2[9],dend2[10],dend2[11],dend2[12],dend2[13],dend2[14],dend2[15],dend2[16],dend2[17],dend2[18],dend2[19],dend2[20],dend2[21],dend2[22],dend2[23],dend2[24],dend2[25],dend2[26],dend2[27],dend2[28],dend2[29],dend2[30],dend2[31]}),
	.b /* IN */ ({divr2[0],divr2[1],divr2[2],divr2[3],divr2[4],divr2[5],divr2[6],divr2[7],divr2[8],divr2[9],divr2[10],divr2[11],divr2[12],divr2[13],divr2[14],divr2[15],divr2[16],divr2[17],divr2[18],divr2[19],divr2[20],divr2[21],divr2[22],divr2[23],divr2[24],divr2[25],divr2[26],divr2[27],divr2[28],divr2[29],divr2[30],divr2[31]})
);

// DIVIDE.NET (138) - adder2_33 : fa1p
fa1 adder2_33_inst
(
	.s /* OUT */ (addq2_32),
	.co /* OUT */ (unused_2),
	.ci /* IN */ (addq1[31]),
	.a /* IN */ (carry2),
	.b /* IN */ (thisnegb_n_3)
);

// DIVIDE.NET (153) - addq1\[31] : iv
assign addq1_n_31 = ~addq1[31];

// DIVIDE.NET (154) - carry2\ : ivs
assign carry2_n = ~carry2;

// DIVIDE.NET (155) - lnegt[0] : nd4
assign lnegt_0 = ~(addq1[31] & carry2_n & thisneg & div_activeb_0);

// DIVIDE.NET (157) - lnegt[1] : nd4
assign lnegt_1 = ~(addq1_n_31 & carry2 & thisneg & div_activeb_0);

// DIVIDE.NET (159) - lnegt[2] : nd4
assign lnegt_2 = ~(addq1_n_31 & carry2_n & thisnegb_n_3 & div_activeb_0);

// DIVIDE.NET (161) - lnegt[3] : nd4
assign lnegt_3 = ~(addq1[31] & carry2 & thisnegb_n_3 & div_activeb_0);

// DIVIDE.NET (163) - lnegt0 : an4p
assign lnegt_n = lnegt_0 & lnegt_1 & lnegt_2 & lnegt_3;

// DIVIDE.NET (164) - last_neg\[0-2] : fd1qp
fd1q last_neg_n_from_0_to_2_inst_0
(
	.q /* OUT */ (last_neg_n_0),
	.d /* IN */ (lnegt_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q last_neg_n_from_0_to_2_inst_1
(
	.q /* OUT */ (last_neg_n_1),
	.d /* IN */ (lnegt_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q last_neg_n_from_0_to_2_inst_2
(
	.q /* OUT */ (last_neg_n_2),
	.d /* IN */ (lnegt_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (165) - last_neg\[3-4] : fd1qp
fd1q last_neg_n_from_3_to_4_inst_0
(
	.q /* OUT */ (last_neg_n_3),
	.d /* IN */ (lnegt_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q last_neg_n_from_3_to_4_inst_1
(
	.q /* OUT */ (last_neg_n_4),
	.d /* IN */ (lnegt_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (166) - last_neg\[5] : fd1p
fd1 last_neg_n_index_5_inst
(
	.q /* OUT */ (last_neg_n_5),
	.qn /* OUT */ (last_neg_5),
	.d /* IN */ (lnegt_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (187) - dhlsel[0] : mx2h
assign dhlsel_0 = (div_startb_0) ? div_offset : div_activeb_2;

// DIVIDE.NET (189) - divhit[0-15] : mx4
mx4 divhit_from_0_to_15_inst_0
(
	.z /* OUT */ (divhit_0),
	.a0 /* IN */ (dividend_hi[0]),
	.a1 /* IN */ (addq2[0]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[16]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_1
(
	.z /* OUT */ (divhit_1),
	.a0 /* IN */ (dividend_hi[1]),
	.a1 /* IN */ (addq2[1]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[17]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_2
(
	.z /* OUT */ (divhit_2),
	.a0 /* IN */ (dividend_hi[2]),
	.a1 /* IN */ (addq2[2]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[18]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_3
(
	.z /* OUT */ (divhit_3),
	.a0 /* IN */ (dividend_hi[3]),
	.a1 /* IN */ (addq2[3]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[19]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_4
(
	.z /* OUT */ (divhit_4),
	.a0 /* IN */ (dividend_hi[4]),
	.a1 /* IN */ (addq2[4]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[20]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_5
(
	.z /* OUT */ (divhit_5),
	.a0 /* IN */ (dividend_hi[5]),
	.a1 /* IN */ (addq2[5]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[21]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_6
(
	.z /* OUT */ (divhit_6),
	.a0 /* IN */ (dividend_hi[6]),
	.a1 /* IN */ (addq2[6]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[22]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_7
(
	.z /* OUT */ (divhit_7),
	.a0 /* IN */ (dividend_hi[7]),
	.a1 /* IN */ (addq2[7]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[23]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_8
(
	.z /* OUT */ (divhit_8),
	.a0 /* IN */ (dividend_hi[8]),
	.a1 /* IN */ (addq2[8]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[24]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_9
(
	.z /* OUT */ (divhit_9),
	.a0 /* IN */ (dividend_hi[9]),
	.a1 /* IN */ (addq2[9]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[25]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_10
(
	.z /* OUT */ (divhit_10),
	.a0 /* IN */ (dividend_hi[10]),
	.a1 /* IN */ (addq2[10]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[26]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_11
(
	.z /* OUT */ (divhit_11),
	.a0 /* IN */ (dividend_hi[11]),
	.a1 /* IN */ (addq2[11]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[27]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_12
(
	.z /* OUT */ (divhit_12),
	.a0 /* IN */ (dividend_hi[12]),
	.a1 /* IN */ (addq2[12]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[28]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_13
(
	.z /* OUT */ (divhit_13),
	.a0 /* IN */ (dividend_hi[13]),
	.a1 /* IN */ (addq2[13]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[29]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_14
(
	.z /* OUT */ (divhit_14),
	.a0 /* IN */ (dividend_hi[14]),
	.a1 /* IN */ (addq2[14]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[30]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);
mx4 divhit_from_0_to_15_inst_15
(
	.z /* OUT */ (divhit_15),
	.a0 /* IN */ (dividend_hi[15]),
	.a1 /* IN */ (addq2[15]),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (dstd[31]),
	.s0 /* IN */ (dhlsel_0),
	.s1 /* IN */ (div_startb_0)
);

// DIVIDE.NET (192) - divhit[16-31] : mx2g
mx2g divhit_from_16_to_31_inst_0
(
	.z /* OUT */ (divhit_16),
	.a0 /* IN */ (dividend_hi[16]),
	.a1 /* IN */ (addq2[16]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_1
(
	.z /* OUT */ (divhit_17),
	.a0 /* IN */ (dividend_hi[17]),
	.a1 /* IN */ (addq2[17]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_2
(
	.z /* OUT */ (divhit_18),
	.a0 /* IN */ (dividend_hi[18]),
	.a1 /* IN */ (addq2[18]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_3
(
	.z /* OUT */ (divhit_19),
	.a0 /* IN */ (dividend_hi[19]),
	.a1 /* IN */ (addq2[19]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_4
(
	.z /* OUT */ (divhit_20),
	.a0 /* IN */ (dividend_hi[20]),
	.a1 /* IN */ (addq2[20]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_5
(
	.z /* OUT */ (divhit_21),
	.a0 /* IN */ (dividend_hi[21]),
	.a1 /* IN */ (addq2[21]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_6
(
	.z /* OUT */ (divhit_22),
	.a0 /* IN */ (dividend_hi[22]),
	.a1 /* IN */ (addq2[22]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_7
(
	.z /* OUT */ (divhit_23),
	.a0 /* IN */ (dividend_hi[23]),
	.a1 /* IN */ (addq2[23]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_8
(
	.z /* OUT */ (divhit_24),
	.a0 /* IN */ (dividend_hi[24]),
	.a1 /* IN */ (addq2[24]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_9
(
	.z /* OUT */ (divhit_25),
	.a0 /* IN */ (dividend_hi[25]),
	.a1 /* IN */ (addq2[25]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_10
(
	.z /* OUT */ (divhit_26),
	.a0 /* IN */ (dividend_hi[26]),
	.a1 /* IN */ (addq2[26]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_11
(
	.z /* OUT */ (divhit_27),
	.a0 /* IN */ (dividend_hi[27]),
	.a1 /* IN */ (addq2[27]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_12
(
	.z /* OUT */ (divhit_28),
	.a0 /* IN */ (dividend_hi[28]),
	.a1 /* IN */ (addq2[28]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_13
(
	.z /* OUT */ (divhit_29),
	.a0 /* IN */ (dividend_hi[29]),
	.a1 /* IN */ (addq2[29]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_14
(
	.z /* OUT */ (divhit_30),
	.a0 /* IN */ (dividend_hi[30]),
	.a1 /* IN */ (addq2[30]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);
mx2g divhit_from_16_to_31_inst_15
(
	.z /* OUT */ (divhit_31),
	.a0 /* IN */ (dividend_hi[31]),
	.a1 /* IN */ (addq2[31]),
	.s /* IN */ (div_activeb_2),
	.gn /* IN */ (div_startb_0)
);

// DIVIDE.NET (195) - divhit : join
assign divhit[0] = divhit_0;
assign divhit[1] = divhit_1;
assign divhit[2] = divhit_2;
assign divhit[3] = divhit_3;
assign divhit[4] = divhit_4;
assign divhit[5] = divhit_5;
assign divhit[6] = divhit_6;
assign divhit[7] = divhit_7;
assign divhit[8] = divhit_8;
assign divhit[9] = divhit_9;
assign divhit[10] = divhit_10;
assign divhit[11] = divhit_11;
assign divhit[12] = divhit_12;
assign divhit[13] = divhit_13;
assign divhit[14] = divhit_14;
assign divhit[15] = divhit_15;
assign divhit[16] = divhit_16;
assign divhit[17] = divhit_17;
assign divhit[18] = divhit_18;
assign divhit[19] = divhit_19;
assign divhit[20] = divhit_20;
assign divhit[21] = divhit_21;
assign divhit[22] = divhit_22;
assign divhit[23] = divhit_23;
assign divhit[24] = divhit_24;
assign divhit[25] = divhit_25;
assign divhit[26] = divhit_26;
assign divhit[27] = divhit_27;
assign divhit[28] = divhit_28;
assign divhit[29] = divhit_29;
assign divhit[30] = divhit_30;
assign divhit[31] = divhit_31;

// DIVIDE.NET (196) - dividend_hi : fd1qp
fd1q dividend_hi_inst_0
(
	.q /* OUT */ (dividend_hi[0]),
	.d /* IN */ (divhit[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_1
(
	.q /* OUT */ (dividend_hi[1]),
	.d /* IN */ (divhit[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_2
(
	.q /* OUT */ (dividend_hi[2]),
	.d /* IN */ (divhit[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_3
(
	.q /* OUT */ (dividend_hi[3]),
	.d /* IN */ (divhit[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_4
(
	.q /* OUT */ (dividend_hi[4]),
	.d /* IN */ (divhit[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_5
(
	.q /* OUT */ (dividend_hi[5]),
	.d /* IN */ (divhit[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_6
(
	.q /* OUT */ (dividend_hi[6]),
	.d /* IN */ (divhit[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_7
(
	.q /* OUT */ (dividend_hi[7]),
	.d /* IN */ (divhit[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_8
(
	.q /* OUT */ (dividend_hi[8]),
	.d /* IN */ (divhit[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_9
(
	.q /* OUT */ (dividend_hi[9]),
	.d /* IN */ (divhit[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_10
(
	.q /* OUT */ (dividend_hi[10]),
	.d /* IN */ (divhit[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_11
(
	.q /* OUT */ (dividend_hi[11]),
	.d /* IN */ (divhit[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_12
(
	.q /* OUT */ (dividend_hi[12]),
	.d /* IN */ (divhit[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_13
(
	.q /* OUT */ (dividend_hi[13]),
	.d /* IN */ (divhit[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_14
(
	.q /* OUT */ (dividend_hi[14]),
	.d /* IN */ (divhit[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_15
(
	.q /* OUT */ (dividend_hi[15]),
	.d /* IN */ (divhit[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_16
(
	.q /* OUT */ (dividend_hi[16]),
	.d /* IN */ (divhit[16]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_17
(
	.q /* OUT */ (dividend_hi[17]),
	.d /* IN */ (divhit[17]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_18
(
	.q /* OUT */ (dividend_hi[18]),
	.d /* IN */ (divhit[18]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_19
(
	.q /* OUT */ (dividend_hi[19]),
	.d /* IN */ (divhit[19]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_20
(
	.q /* OUT */ (dividend_hi[20]),
	.d /* IN */ (divhit[20]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_21
(
	.q /* OUT */ (dividend_hi[21]),
	.d /* IN */ (divhit[21]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_22
(
	.q /* OUT */ (dividend_hi[22]),
	.d /* IN */ (divhit[22]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_23
(
	.q /* OUT */ (dividend_hi[23]),
	.d /* IN */ (divhit[23]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_24
(
	.q /* OUT */ (dividend_hi[24]),
	.d /* IN */ (divhit[24]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_25
(
	.q /* OUT */ (dividend_hi[25]),
	.d /* IN */ (divhit[25]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_26
(
	.q /* OUT */ (dividend_hi[26]),
	.d /* IN */ (divhit[26]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_27
(
	.q /* OUT */ (dividend_hi[27]),
	.d /* IN */ (divhit[27]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_28
(
	.q /* OUT */ (dividend_hi[28]),
	.d /* IN */ (divhit[28]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_29
(
	.q /* OUT */ (dividend_hi[29]),
	.d /* IN */ (divhit[29]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_30
(
	.q /* OUT */ (dividend_hi[30]),
	.d /* IN */ (divhit[30]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_hi_inst_31
(
	.q /* OUT */ (dividend_hi[31]),
	.d /* IN */ (divhit[31]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (197) - remrd : ts
assign gpu_data_out[0] = dividend_hi[0];
assign gpu_data_oe[0] = remrd;
assign gpu_data_out[1] = dividend_hi[1];
assign gpu_data_oe[1] = remrd;
assign gpu_data_out[2] = dividend_hi[2];
assign gpu_data_oe[2] = remrd;
assign gpu_data_out[3] = dividend_hi[3];
assign gpu_data_oe[3] = remrd;
assign gpu_data_out[4] = dividend_hi[4];
assign gpu_data_oe[4] = remrd;
assign gpu_data_out[5] = dividend_hi[5];
assign gpu_data_oe[5] = remrd;
assign gpu_data_out[6] = dividend_hi[6];
assign gpu_data_oe[6] = remrd;
assign gpu_data_out[7] = dividend_hi[7];
assign gpu_data_oe[7] = remrd;
assign gpu_data_out[8] = dividend_hi[8];
assign gpu_data_oe[8] = remrd;
assign gpu_data_out[9] = dividend_hi[9];
assign gpu_data_oe[9] = remrd;
assign gpu_data_out[10] = dividend_hi[10];
assign gpu_data_oe[10] = remrd;
assign gpu_data_out[11] = dividend_hi[11];
assign gpu_data_oe[11] = remrd;
assign gpu_data_out[12] = dividend_hi[12];
assign gpu_data_oe[12] = remrd;
assign gpu_data_out[13] = dividend_hi[13];
assign gpu_data_oe[13] = remrd;
assign gpu_data_out[14] = dividend_hi[14];
assign gpu_data_oe[14] = remrd;
assign gpu_data_out[15] = dividend_hi[15];
assign gpu_data_oe[15] = remrd;
assign gpu_data_out[16] = dividend_hi[16];
assign gpu_data_oe[16] = remrd;
assign gpu_data_out[17] = dividend_hi[17];
assign gpu_data_oe[17] = remrd;
assign gpu_data_out[18] = dividend_hi[18];
assign gpu_data_oe[18] = remrd;
assign gpu_data_out[19] = dividend_hi[19];
assign gpu_data_oe[19] = remrd;
assign gpu_data_out[20] = dividend_hi[20];
assign gpu_data_oe[20] = remrd;
assign gpu_data_out[21] = dividend_hi[21];
assign gpu_data_oe[21] = remrd;
assign gpu_data_out[22] = dividend_hi[22];
assign gpu_data_oe[22] = remrd;
assign gpu_data_out[23] = dividend_hi[23];
assign gpu_data_oe[23] = remrd;
assign gpu_data_out[24] = dividend_hi[24];
assign gpu_data_oe[24] = remrd;
assign gpu_data_out[25] = dividend_hi[25];
assign gpu_data_oe[25] = remrd;
assign gpu_data_out[26] = dividend_hi[26];
assign gpu_data_oe[26] = remrd;
assign gpu_data_out[27] = dividend_hi[27];
assign gpu_data_oe[27] = remrd;
assign gpu_data_out[28] = dividend_hi[28];
assign gpu_data_oe[28] = remrd;
assign gpu_data_out[29] = dividend_hi[29];
assign gpu_data_oe[29] = remrd;
assign gpu_data_out[30] = dividend_hi[30];
assign gpu_data_oe[30] = remrd;
assign gpu_data_out[31] = dividend_hi[31];
assign gpu_data_oe[31] = remrd;

// DIVIDE.NET (206) - diveif0 : an2h
assign diveif0 = div_startb_1 & div_offset;

// DIVIDE.NET (207) - divein[0-1] : mx2g
mx2g divein_from_0_to_1_inst_0
(
	.z /* OUT */ (divein_0),
	.a0 /* IN */ (zero),
	.a1 /* IN */ (dstd[0]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_0_to_1_inst_1
(
	.z /* OUT */ (divein_1),
	.a0 /* IN */ (zero),
	.a1 /* IN */ (dstd[1]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);

// DIVIDE.NET (209) - divein[2-15] : mx2g
mx2g divein_from_2_to_15_inst_0
(
	.z /* OUT */ (divein_2),
	.a0 /* IN */ (dividend_lo[0]),
	.a1 /* IN */ (dstd[2]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_1
(
	.z /* OUT */ (divein_3),
	.a0 /* IN */ (dividend_lo[1]),
	.a1 /* IN */ (dstd[3]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_2
(
	.z /* OUT */ (divein_4),
	.a0 /* IN */ (dividend_lo[2]),
	.a1 /* IN */ (dstd[4]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_3
(
	.z /* OUT */ (divein_5),
	.a0 /* IN */ (dividend_lo[3]),
	.a1 /* IN */ (dstd[5]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_4
(
	.z /* OUT */ (divein_6),
	.a0 /* IN */ (dividend_lo[4]),
	.a1 /* IN */ (dstd[6]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_5
(
	.z /* OUT */ (divein_7),
	.a0 /* IN */ (dividend_lo[5]),
	.a1 /* IN */ (dstd[7]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_6
(
	.z /* OUT */ (divein_8),
	.a0 /* IN */ (dividend_lo[6]),
	.a1 /* IN */ (dstd[8]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_7
(
	.z /* OUT */ (divein_9),
	.a0 /* IN */ (dividend_lo[7]),
	.a1 /* IN */ (dstd[9]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_8
(
	.z /* OUT */ (divein_10),
	.a0 /* IN */ (dividend_lo[8]),
	.a1 /* IN */ (dstd[10]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_9
(
	.z /* OUT */ (divein_11),
	.a0 /* IN */ (dividend_lo[9]),
	.a1 /* IN */ (dstd[11]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_10
(
	.z /* OUT */ (divein_12),
	.a0 /* IN */ (dividend_lo[10]),
	.a1 /* IN */ (dstd[12]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_11
(
	.z /* OUT */ (divein_13),
	.a0 /* IN */ (dividend_lo[11]),
	.a1 /* IN */ (dstd[13]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_12
(
	.z /* OUT */ (divein_14),
	.a0 /* IN */ (dividend_lo[12]),
	.a1 /* IN */ (dstd[14]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);
mx2g divein_from_2_to_15_inst_13
(
	.z /* OUT */ (divein_15),
	.a0 /* IN */ (dividend_lo[13]),
	.a1 /* IN */ (dstd[15]),
	.s /* IN */ (div_startb_1),
	.gn /* IN */ (diveif0)
);

// DIVIDE.NET (211) - divein[16-31] : mx4
mx4 divein_from_16_to_31_inst_0
(
	.z /* OUT */ (divein_16),
	.a0 /* IN */ (dividend_lo[14]),
	.a1 /* IN */ (dstd[16]),
	.a2 /* IN */ (dividend_lo[14]),
	.a3 /* IN */ (dstd[0]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_1
(
	.z /* OUT */ (divein_17),
	.a0 /* IN */ (dividend_lo[15]),
	.a1 /* IN */ (dstd[17]),
	.a2 /* IN */ (dividend_lo[15]),
	.a3 /* IN */ (dstd[1]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_2
(
	.z /* OUT */ (divein_18),
	.a0 /* IN */ (dividend_lo[16]),
	.a1 /* IN */ (dstd[18]),
	.a2 /* IN */ (dividend_lo[16]),
	.a3 /* IN */ (dstd[2]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_3
(
	.z /* OUT */ (divein_19),
	.a0 /* IN */ (dividend_lo[17]),
	.a1 /* IN */ (dstd[19]),
	.a2 /* IN */ (dividend_lo[17]),
	.a3 /* IN */ (dstd[3]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_4
(
	.z /* OUT */ (divein_20),
	.a0 /* IN */ (dividend_lo[18]),
	.a1 /* IN */ (dstd[20]),
	.a2 /* IN */ (dividend_lo[18]),
	.a3 /* IN */ (dstd[4]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_5
(
	.z /* OUT */ (divein_21),
	.a0 /* IN */ (dividend_lo[19]),
	.a1 /* IN */ (dstd[21]),
	.a2 /* IN */ (dividend_lo[19]),
	.a3 /* IN */ (dstd[5]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_6
(
	.z /* OUT */ (divein_22),
	.a0 /* IN */ (dividend_lo[20]),
	.a1 /* IN */ (dstd[22]),
	.a2 /* IN */ (dividend_lo[20]),
	.a3 /* IN */ (dstd[6]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_7
(
	.z /* OUT */ (divein_23),
	.a0 /* IN */ (dividend_lo[21]),
	.a1 /* IN */ (dstd[23]),
	.a2 /* IN */ (dividend_lo[21]),
	.a3 /* IN */ (dstd[7]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_8
(
	.z /* OUT */ (divein_24),
	.a0 /* IN */ (dividend_lo[22]),
	.a1 /* IN */ (dstd[24]),
	.a2 /* IN */ (dividend_lo[22]),
	.a3 /* IN */ (dstd[8]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_9
(
	.z /* OUT */ (divein_25),
	.a0 /* IN */ (dividend_lo[23]),
	.a1 /* IN */ (dstd[25]),
	.a2 /* IN */ (dividend_lo[23]),
	.a3 /* IN */ (dstd[9]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_10
(
	.z /* OUT */ (divein_26),
	.a0 /* IN */ (dividend_lo[24]),
	.a1 /* IN */ (dstd[26]),
	.a2 /* IN */ (dividend_lo[24]),
	.a3 /* IN */ (dstd[10]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_11
(
	.z /* OUT */ (divein_27),
	.a0 /* IN */ (dividend_lo[25]),
	.a1 /* IN */ (dstd[27]),
	.a2 /* IN */ (dividend_lo[25]),
	.a3 /* IN */ (dstd[11]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_12
(
	.z /* OUT */ (divein_28),
	.a0 /* IN */ (dividend_lo[26]),
	.a1 /* IN */ (dstd[28]),
	.a2 /* IN */ (dividend_lo[26]),
	.a3 /* IN */ (dstd[12]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_13
(
	.z /* OUT */ (divein_29),
	.a0 /* IN */ (dividend_lo[27]),
	.a1 /* IN */ (dstd[29]),
	.a2 /* IN */ (dividend_lo[27]),
	.a3 /* IN */ (dstd[13]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_14
(
	.z /* OUT */ (divein_30),
	.a0 /* IN */ (dividend_lo[28]),
	.a1 /* IN */ (dstd[30]),
	.a2 /* IN */ (dividend_lo[28]),
	.a3 /* IN */ (dstd[14]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);
mx4 divein_from_16_to_31_inst_15
(
	.z /* OUT */ (divein_31),
	.a0 /* IN */ (dividend_lo[29]),
	.a1 /* IN */ (dstd[31]),
	.a2 /* IN */ (dividend_lo[29]),
	.a3 /* IN */ (dstd[15]),
	.s0 /* IN */ (div_startb_1),
	.s1 /* IN */ (div_offset)
);

// DIVIDE.NET (214) - divein : join
assign divein[0] = divein_0;
assign divein[1] = divein_1;
assign divein[2] = divein_2;
assign divein[3] = divein_3;
assign divein[4] = divein_4;
assign divein[5] = divein_5;
assign divein[6] = divein_6;
assign divein[7] = divein_7;
assign divein[8] = divein_8;
assign divein[9] = divein_9;
assign divein[10] = divein_10;
assign divein[11] = divein_11;
assign divein[12] = divein_12;
assign divein[13] = divein_13;
assign divein[14] = divein_14;
assign divein[15] = divein_15;
assign divein[16] = divein_16;
assign divein[17] = divein_17;
assign divein[18] = divein_18;
assign divein[19] = divein_19;
assign divein[20] = divein_20;
assign divein[21] = divein_21;
assign divein[22] = divein_22;
assign divein[23] = divein_23;
assign divein[24] = divein_24;
assign divein[25] = divein_25;
assign divein[26] = divein_26;
assign divein[27] = divein_27;
assign divein[28] = divein_28;
assign divein[29] = divein_29;
assign divein[30] = divein_30;
assign divein[31] = divein_31;

// DIVIDE.NET (215) - dividend_lo : fd1qp
fd1q dividend_lo_inst_0
(
	.q /* OUT */ (dividend_lo[0]),
	.d /* IN */ (divein[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_1
(
	.q /* OUT */ (dividend_lo[1]),
	.d /* IN */ (divein[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_2
(
	.q /* OUT */ (dividend_lo[2]),
	.d /* IN */ (divein[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_3
(
	.q /* OUT */ (dividend_lo[3]),
	.d /* IN */ (divein[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_4
(
	.q /* OUT */ (dividend_lo[4]),
	.d /* IN */ (divein[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_5
(
	.q /* OUT */ (dividend_lo[5]),
	.d /* IN */ (divein[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_6
(
	.q /* OUT */ (dividend_lo[6]),
	.d /* IN */ (divein[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_7
(
	.q /* OUT */ (dividend_lo[7]),
	.d /* IN */ (divein[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_8
(
	.q /* OUT */ (dividend_lo[8]),
	.d /* IN */ (divein[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_9
(
	.q /* OUT */ (dividend_lo[9]),
	.d /* IN */ (divein[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_10
(
	.q /* OUT */ (dividend_lo[10]),
	.d /* IN */ (divein[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_11
(
	.q /* OUT */ (dividend_lo[11]),
	.d /* IN */ (divein[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_12
(
	.q /* OUT */ (dividend_lo[12]),
	.d /* IN */ (divein[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_13
(
	.q /* OUT */ (dividend_lo[13]),
	.d /* IN */ (divein[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_14
(
	.q /* OUT */ (dividend_lo[14]),
	.d /* IN */ (divein[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_15
(
	.q /* OUT */ (dividend_lo[15]),
	.d /* IN */ (divein[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_16
(
	.q /* OUT */ (dividend_lo[16]),
	.d /* IN */ (divein[16]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_17
(
	.q /* OUT */ (dividend_lo[17]),
	.d /* IN */ (divein[17]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_18
(
	.q /* OUT */ (dividend_lo[18]),
	.d /* IN */ (divein[18]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_19
(
	.q /* OUT */ (dividend_lo[19]),
	.d /* IN */ (divein[19]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_20
(
	.q /* OUT */ (dividend_lo[20]),
	.d /* IN */ (divein[20]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_21
(
	.q /* OUT */ (dividend_lo[21]),
	.d /* IN */ (divein[21]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_22
(
	.q /* OUT */ (dividend_lo[22]),
	.d /* IN */ (divein[22]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_23
(
	.q /* OUT */ (dividend_lo[23]),
	.d /* IN */ (divein[23]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_24
(
	.q /* OUT */ (dividend_lo[24]),
	.d /* IN */ (divein[24]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_25
(
	.q /* OUT */ (dividend_lo[25]),
	.d /* IN */ (divein[25]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_26
(
	.q /* OUT */ (dividend_lo[26]),
	.d /* IN */ (divein[26]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_27
(
	.q /* OUT */ (dividend_lo[27]),
	.d /* IN */ (divein[27]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_28
(
	.q /* OUT */ (dividend_lo[28]),
	.d /* IN */ (divein[28]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_29
(
	.q /* OUT */ (dividend_lo[29]),
	.d /* IN */ (divein[29]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_30
(
	.q /* OUT */ (dividend_lo[30]),
	.d /* IN */ (divein[30]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dividend_lo_inst_31
(
	.q /* OUT */ (dividend_lo[31]),
	.d /* IN */ (divein[31]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (222) - divisor : fdsync32
j_fdsync32 divisor_inst
(
	.q /* OUT */ ({divisor[0],divisor[1],divisor[2],divisor[3],divisor[4],divisor[5],divisor[6],divisor[7],divisor[8],divisor[9],divisor[10],divisor[11],divisor[12],divisor[13],divisor[14],divisor[15],divisor[16],divisor[17],divisor[18],divisor[19],divisor[20],divisor[21],divisor[22],divisor[23],divisor[24],divisor[25],divisor[26],divisor[27],divisor[28],divisor[29],divisor[30],divisor[31]}),
	.d /* IN */ ({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}),
	.ld /* IN */ (div_startb_2),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (229) - quosh[1] : iv
assign quosh_1 = ~addq1_32;

// DIVIDE.NET (230) - quoti[0] : mxi2
mxi2 quoti_index_0_inst
(
	.z /* OUT */ (quoti_0),
	.a0 /* IN */ (quotient_n_0),
	.a1 /* IN */ (addq2_32),
	.s /* IN */ (div_activeb_0)
);

// DIVIDE.NET (232) - quotient[0] : fd1
fd1 quotient_index_0_inst
(
	.q /* OUT */ (quotient_0),
	.qn /* OUT */ (quotient_n_0),
	.d /* IN */ (quoti_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (233) - quotient[1] : fdsync
j_fdsync quotient_index_1_inst
(
	.q /* OUT */ (quotient_1),
	.d /* IN */ (quosh_1),
	.ld /* IN */ (div_activeb_0),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (235) - quotient[2-31] : fdsync
j_fdsync quotient_from_2_to_31_inst_0
(
	.q /* OUT */ (quotient_2),
	.d /* IN */ (quotient_0),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_1
(
	.q /* OUT */ (quotient_3),
	.d /* IN */ (quotient_1),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_2
(
	.q /* OUT */ (quotient_4),
	.d /* IN */ (quotient_2),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_3
(
	.q /* OUT */ (quotient_5),
	.d /* IN */ (quotient_3),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_4
(
	.q /* OUT */ (quotient_6),
	.d /* IN */ (quotient_4),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_5
(
	.q /* OUT */ (quotient_7),
	.d /* IN */ (quotient_5),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_6
(
	.q /* OUT */ (quotient_8),
	.d /* IN */ (quotient_6),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_7
(
	.q /* OUT */ (quotient_9),
	.d /* IN */ (quotient_7),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_8
(
	.q /* OUT */ (quotient_10),
	.d /* IN */ (quotient_8),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_9
(
	.q /* OUT */ (quotient_11),
	.d /* IN */ (quotient_9),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_10
(
	.q /* OUT */ (quotient_12),
	.d /* IN */ (quotient_10),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_11
(
	.q /* OUT */ (quotient_13),
	.d /* IN */ (quotient_11),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_12
(
	.q /* OUT */ (quotient_14),
	.d /* IN */ (quotient_12),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_13
(
	.q /* OUT */ (quotient_15),
	.d /* IN */ (quotient_13),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_14
(
	.q /* OUT */ (quotient_16),
	.d /* IN */ (quotient_14),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_15
(
	.q /* OUT */ (quotient_17),
	.d /* IN */ (quotient_15),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_16
(
	.q /* OUT */ (quotient_18),
	.d /* IN */ (quotient_16),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_17
(
	.q /* OUT */ (quotient_19),
	.d /* IN */ (quotient_17),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_18
(
	.q /* OUT */ (quotient_20),
	.d /* IN */ (quotient_18),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_19
(
	.q /* OUT */ (quotient_21),
	.d /* IN */ (quotient_19),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_20
(
	.q /* OUT */ (quotient_22),
	.d /* IN */ (quotient_20),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_21
(
	.q /* OUT */ (quotient_23),
	.d /* IN */ (quotient_21),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_22
(
	.q /* OUT */ (quotient_24),
	.d /* IN */ (quotient_22),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_23
(
	.q /* OUT */ (quotient_25),
	.d /* IN */ (quotient_23),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_24
(
	.q /* OUT */ (quotient_26),
	.d /* IN */ (quotient_24),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_25
(
	.q /* OUT */ (quotient_27),
	.d /* IN */ (quotient_25),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_26
(
	.q /* OUT */ (quotient_28),
	.d /* IN */ (quotient_26),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_27
(
	.q /* OUT */ (quotient_29),
	.d /* IN */ (quotient_27),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_28
(
	.q /* OUT */ (quotient_30),
	.d /* IN */ (quotient_28),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync quotient_from_2_to_31_inst_29
(
	.q /* OUT */ (quotient_31),
	.d /* IN */ (quotient_29),
	.ld /* IN */ (div_activeb_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (237) - quotient : join
assign quotient[0] = quotient_0;
assign quotient[1] = quotient_1;
assign quotient[2] = quotient_2;
assign quotient[3] = quotient_3;
assign quotient[4] = quotient_4;
assign quotient[5] = quotient_5;
assign quotient[6] = quotient_6;
assign quotient[7] = quotient_7;
assign quotient[8] = quotient_8;
assign quotient[9] = quotient_9;
assign quotient[10] = quotient_10;
assign quotient[11] = quotient_11;
assign quotient[12] = quotient_12;
assign quotient[13] = quotient_13;
assign quotient[14] = quotient_14;
assign quotient[15] = quotient_15;
assign quotient[16] = quotient_16;
assign quotient[17] = quotient_17;
assign quotient[18] = quotient_18;
assign quotient[19] = quotient_19;
assign quotient[20] = quotient_20;
assign quotient[21] = quotient_21;
assign quotient[22] = quotient_22;
assign quotient[23] = quotient_23;
assign quotient[24] = quotient_24;
assign quotient[25] = quotient_25;
assign quotient[26] = quotient_26;
assign quotient[27] = quotient_27;
assign quotient[28] = quotient_28;
assign quotient[29] = quotient_29;
assign quotient[30] = quotient_30;
assign quotient[31] = quotient_31;

// DIVIDE.NET (244) - cnten : or2
assign cnten = div_activeb_1 | div_startb_2;

// DIVIDE.NET (248) - cntt0 : iv
assign cntt_0 = ~count_0;

// DIVIDE.NET (249) - cntt1 : ha1
ha1 cntt1_inst
(
	.s /* OUT */ (cntt_1),
	.co /* OUT */ (cntc_1),
	.a /* IN */ (count_1),
	.b /* IN */ (count_0)
);

// DIVIDE.NET (250) - cntt2 : ha1
ha1 cntt2_inst
(
	.s /* OUT */ (cntt_2),
	.co /* OUT */ (cntc_2),
	.a /* IN */ (count_2),
	.b /* IN */ (cntc_1)
);

// DIVIDE.NET (251) - cntt3 : eo
assign cntt_3 = count_3 ^ cntc_2;

// DIVIDE.NET (253) - cnti[0-3] : an2
assign cnti_0 = cntt_0 & cnten;
assign cnti_1 = cntt_1 & cnten;
assign cnti_2 = cntt_2 & cnten;
assign cnti_3 = cntt_3 & cnten;

// DIVIDE.NET (254) - count[0-3] : fd1q
fd1q count_from_0_to_3_inst_0
(
	.q /* OUT */ (count_0),
	.d /* IN */ (cnti_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_3_inst_1
(
	.q /* OUT */ (count_1),
	.d /* IN */ (cnti_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_3_inst_2
(
	.q /* OUT */ (count_2),
	.d /* IN */ (cnti_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_3_inst_3
(
	.q /* OUT */ (count_3),
	.d /* IN */ (cnti_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (256) - cnt_zero : or4
assign cnt_zero_n = count_0 | count_1 | count_2 | count_3;

// DIVIDE.NET (258) - dat0 : nd2
assign dat_0 = ~(div_activeb_2 & cnt_zero_n);

// DIVIDE.NET (259) - dat1 : nd2
assign div_activei_obuf = ~(div_start_n & dat_0);

// DIVIDE.NET (260) - div_active : fd2q
fd2q div_active_inst
(
	.q /* OUT */ (div_active),
	.d /* IN */ (div_activei_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DIVIDE.NET (261) - div_activeb[0-2] : nivu
assign div_activeb_0 = div_active;
assign div_activeb_1 = div_active;
assign div_activeb_2 = div_active;

// DIVIDE.NET (263) - unused[0-4] : dummy
endmodule
/* verilator lint_on LITENDIAN */
