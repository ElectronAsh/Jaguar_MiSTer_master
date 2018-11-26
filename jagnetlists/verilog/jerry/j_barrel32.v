/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_barrel32
(
	output z_0,
	output z_1,
	output z_2,
	output z_3,
	output z_4,
	output z_5,
	output z_6,
	output z_7,
	output z_8,
	output z_9,
	output z_10,
	output z_11,
	output z_12,
	output z_13,
	output z_14,
	output z_15,
	output z_16,
	output z_17,
	output z_18,
	output z_19,
	output z_20,
	output z_21,
	output z_22,
	output z_23,
	output z_24,
	output z_25,
	output z_26,
	output z_27,
	output z_28,
	output z_29,
	output z_30,
	output z_31,
	input mux_0,
	input mux_1,
	input sft_0,
	input sft_1,
	input sft_2,
	input sft_3,
	input sft_4,
	input flin,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input a_8,
	input a_9,
	input a_10,
	input a_11,
	input a_12,
	input a_13,
	input a_14,
	input a_15,
	input a_16,
	input a_17,
	input a_18,
	input a_19,
	input a_20,
	input a_21,
	input a_22,
	input a_23,
	input a_24,
	input a_25,
	input a_26,
	input a_27,
	input a_28,
	input a_29,
	input a_30,
	input a_31
);
wire [0:4] shift;
wire [0:31] f;
wire [0:31] rmask;
wire [0:31] lmask;
wire f_0;
wire f_1;
wire f_2;
wire f_3;
wire f_4;
wire f_5;
wire f_6;
wire f_7;
wire f_8;
wire f_9;
wire f_10;
wire f_11;
wire f_12;
wire f_13;
wire f_14;
wire f_15;
wire f_16;
wire f_17;
wire f_18;
wire f_19;
wire f_20;
wire f_21;
wire f_22;
wire f_23;
wire f_24;
wire f_25;
wire f_26;
wire f_27;
wire f_28;
wire f_29;
wire f_30;
wire f_31;
wire rmask_0;
wire rmask_1;
wire rmask_2;
wire rmask_3;
wire rmask_4;
wire rmask_5;
wire rmask_6;
wire rmask_7;
wire rmask_8;
wire rmask_9;
wire rmask_10;
wire rmask_11;
wire rmask_12;
wire rmask_13;
wire rmask_14;
wire rmask_15;
wire rmask_16;
wire rmask_17;
wire rmask_18;
wire rmask_19;
wire rmask_20;
wire rmask_21;
wire rmask_22;
wire rmask_23;
wire rmask_24;
wire rmask_25;
wire rmask_26;
wire rmask_27;
wire rmask_28;
wire rmask_29;
wire rmask_30;
wire rmask_31;
wire lmask_0;
wire lmask_1;
wire lmask_2;
wire lmask_3;
wire lmask_4;
wire lmask_5;
wire lmask_6;
wire lmask_7;
wire lmask_8;
wire lmask_9;
wire lmask_10;
wire lmask_11;
wire lmask_12;
wire lmask_13;
wire lmask_14;
wire lmask_15;
wire lmask_16;
wire lmask_17;
wire lmask_18;
wire lmask_19;
wire lmask_20;
wire lmask_21;
wire lmask_22;
wire lmask_23;
wire lmask_24;
wire lmask_25;
wire lmask_26;
wire lmask_27;
wire lmask_28;
wire lmask_29;
wire lmask_30;
wire lmask_31;
wire mux_n_0;
wire mux_n_1;
wire sftb_0;
wire sftb_1;
wire sftb_2;
wire sftb_3;
wire sftb_4;
wire sft_n_4;
wire zero;
wire b_0;
wire b_1;
wire b_2;
wire b_3;
wire b_4;
wire b_5;
wire b_6;
wire b_7;
wire b_8;
wire b_9;
wire b_10;
wire b_11;
wire b_12;
wire b_13;
wire b_14;
wire b_15;
wire b_16;
wire b_17;
wire b_18;
wire b_19;
wire b_20;
wire b_21;
wire b_22;
wire b_23;
wire b_24;
wire b_25;
wire b_26;
wire b_27;
wire b_28;
wire b_29;
wire b_30;
wire b_31;
wire c_0;
wire c_1;
wire c_2;
wire c_3;
wire c_4;
wire c_5;
wire c_6;
wire c_7;
wire c_8;
wire c_9;
wire c_10;
wire c_11;
wire c_12;
wire c_13;
wire c_14;
wire c_15;
wire c_16;
wire c_17;
wire c_18;
wire c_19;
wire c_20;
wire c_21;
wire c_22;
wire c_23;
wire c_24;
wire c_25;
wire c_26;
wire c_27;
wire c_28;
wire c_29;
wire c_30;
wire c_31;
wire d_0;
wire d_1;
wire d_2;
wire d_3;
wire d_4;
wire d_5;
wire d_6;
wire d_7;
wire d_8;
wire d_9;
wire d_10;
wire d_11;
wire d_12;
wire d_13;
wire d_14;
wire d_15;
wire d_16;
wire d_17;
wire d_18;
wire d_19;
wire d_20;
wire d_21;
wire d_22;
wire d_23;
wire d_24;
wire d_25;
wire d_26;
wire d_27;
wire d_28;
wire d_29;
wire d_30;
wire d_31;
wire e_0;
wire e_1;
wire e_2;
wire e_3;
wire e_4;
wire e_5;
wire e_6;
wire e_7;
wire e_8;
wire e_9;
wire e_10;
wire e_11;
wire e_12;
wire e_13;
wire e_14;
wire e_15;
wire e_16;
wire e_17;
wire e_18;
wire e_19;
wire e_20;
wire e_21;
wire e_22;
wire e_23;
wire e_24;
wire e_25;
wire e_26;
wire e_27;
wire e_28;
wire e_29;
wire e_30;
wire e_31;
wire dcd_0;
wire dcd_1;
wire dcd_2;
wire dcd_3;
wire dcd_4;
wire dcd_5;
wire dcd_6;
wire dcd_7;
wire dcd_8;
wire dcd_9;
wire dcd_10;
wire dcd_11;
wire dcd_12;
wire dcd_13;
wire dcd_14;
wire dcd_15;
wire dcd_16;
wire dcd_17;
wire dcd_18;
wire dcd_19;
wire dcd_20;
wire dcd_21;
wire dcd_22;
wire dcd_23;
wire dcd_24;
wire dcd_25;
wire dcd_26;
wire dcd_27;
wire dcd_28;
wire dcd_29;
wire dcd_30;
wire dcd_31;
wire lsl;
wire sr;
wire asr_sign;
wire opt0_0;
wire opt0_1;
wire opt0_2;
wire opt0_3;
wire opt0_4;
wire opt0_5;
wire opt0_6;
wire opt0_7;
wire opt0_8;
wire opt0_9;
wire opt0_10;
wire opt0_11;
wire opt0_12;
wire opt0_13;
wire opt0_14;
wire opt0_15;
wire opt0_16;
wire opt0_17;
wire opt0_18;
wire opt0_19;
wire opt0_20;
wire opt0_21;
wire opt0_22;
wire opt0_23;
wire opt0_24;
wire opt0_25;
wire opt0_26;
wire opt0_27;
wire opt0_28;
wire opt0_29;
wire opt0_30;
wire opt0_31;
wire opt1_0;
wire opt1_1;
wire opt1_2;
wire opt1_3;
wire opt1_4;
wire opt1_5;
wire opt1_6;
wire opt1_7;
wire opt1_8;
wire opt1_9;
wire opt1_10;
wire opt1_11;
wire opt1_12;
wire opt1_13;
wire opt1_14;
wire opt1_15;
wire opt1_16;
wire opt1_17;
wire opt1_18;
wire opt1_19;
wire opt1_20;
wire opt1_21;
wire opt1_22;
wire opt1_23;
wire opt1_24;
wire opt1_25;
wire opt1_26;
wire opt1_27;
wire opt1_28;
wire opt1_29;
wire opt1_30;
wire opt1_31;

// DSP_A-5Q.NET (713) - shift : join
assign shift[0] = sft_0;
assign shift[1] = sft_1;
assign shift[2] = sft_2;
assign shift[3] = sft_3;
assign shift[4] = sft_4;

// DSP_A-5Q.NET (714) - f : join
assign f[0] = f_0;
assign f[1] = f_1;
assign f[2] = f_2;
assign f[3] = f_3;
assign f[4] = f_4;
assign f[5] = f_5;
assign f[6] = f_6;
assign f[7] = f_7;
assign f[8] = f_8;
assign f[9] = f_9;
assign f[10] = f_10;
assign f[11] = f_11;
assign f[12] = f_12;
assign f[13] = f_13;
assign f[14] = f_14;
assign f[15] = f_15;
assign f[16] = f_16;
assign f[17] = f_17;
assign f[18] = f_18;
assign f[19] = f_19;
assign f[20] = f_20;
assign f[21] = f_21;
assign f[22] = f_22;
assign f[23] = f_23;
assign f[24] = f_24;
assign f[25] = f_25;
assign f[26] = f_26;
assign f[27] = f_27;
assign f[28] = f_28;
assign f[29] = f_29;
assign f[30] = f_30;
assign f[31] = f_31;

// DSP_A-5Q.NET (715) - rmask : join
assign rmask[0] = rmask_0;
assign rmask[1] = rmask_1;
assign rmask[2] = rmask_2;
assign rmask[3] = rmask_3;
assign rmask[4] = rmask_4;
assign rmask[5] = rmask_5;
assign rmask[6] = rmask_6;
assign rmask[7] = rmask_7;
assign rmask[8] = rmask_8;
assign rmask[9] = rmask_9;
assign rmask[10] = rmask_10;
assign rmask[11] = rmask_11;
assign rmask[12] = rmask_12;
assign rmask[13] = rmask_13;
assign rmask[14] = rmask_14;
assign rmask[15] = rmask_15;
assign rmask[16] = rmask_16;
assign rmask[17] = rmask_17;
assign rmask[18] = rmask_18;
assign rmask[19] = rmask_19;
assign rmask[20] = rmask_20;
assign rmask[21] = rmask_21;
assign rmask[22] = rmask_22;
assign rmask[23] = rmask_23;
assign rmask[24] = rmask_24;
assign rmask[25] = rmask_25;
assign rmask[26] = rmask_26;
assign rmask[27] = rmask_27;
assign rmask[28] = rmask_28;
assign rmask[29] = rmask_29;
assign rmask[30] = rmask_30;
assign rmask[31] = rmask_31;

// DSP_A-5Q.NET (716) - lmask : join
assign lmask[0] = lmask_0;
assign lmask[1] = lmask_1;
assign lmask[2] = lmask_2;
assign lmask[3] = lmask_3;
assign lmask[4] = lmask_4;
assign lmask[5] = lmask_5;
assign lmask[6] = lmask_6;
assign lmask[7] = lmask_7;
assign lmask[8] = lmask_8;
assign lmask[9] = lmask_9;
assign lmask[10] = lmask_10;
assign lmask[11] = lmask_11;
assign lmask[12] = lmask_12;
assign lmask[13] = lmask_13;
assign lmask[14] = lmask_14;
assign lmask[15] = lmask_15;
assign lmask[16] = lmask_16;
assign lmask[17] = lmask_17;
assign lmask[18] = lmask_18;
assign lmask[19] = lmask_19;
assign lmask[20] = lmask_20;
assign lmask[21] = lmask_21;
assign lmask[22] = lmask_22;
assign lmask[23] = lmask_23;
assign lmask[24] = lmask_24;
assign lmask[25] = lmask_25;
assign lmask[26] = lmask_26;
assign lmask[27] = lmask_27;
assign lmask[28] = lmask_28;
assign lmask[29] = lmask_29;
assign lmask[30] = lmask_30;
assign lmask[31] = lmask_31;

// DSP_A-5Q.NET (718) - flin : dummy

// DSP_A-5Q.NET (719) - mux\[0-1] : iv
assign mux_n_0 = ~mux_0;
assign mux_n_1 = ~mux_1;

// DSP_A-5Q.NET (720) - sftb[0-4] : nivu
assign sftb_0 = sft_0;
assign sftb_1 = sft_1;
assign sftb_2 = sft_2;
assign sftb_3 = sft_3;
assign sftb_4 = sft_4;

// DSP_A-5Q.NET (721) - sft\[4] : iv
assign sft_n_4 = ~sft_4;

// DSP_A-5Q.NET (722) - zero : tie0
assign zero = 1'b0;

// DSP_A-5Q.NET (726) - b[0-15] : mx2
assign b_0 = (sftb_4) ? a_16 : a_0;
assign b_1 = (sftb_4) ? a_17 : a_1;
assign b_2 = (sftb_4) ? a_18 : a_2;
assign b_3 = (sftb_4) ? a_19 : a_3;
assign b_4 = (sftb_4) ? a_20 : a_4;
assign b_5 = (sftb_4) ? a_21 : a_5;
assign b_6 = (sftb_4) ? a_22 : a_6;
assign b_7 = (sftb_4) ? a_23 : a_7;
assign b_8 = (sftb_4) ? a_24 : a_8;
assign b_9 = (sftb_4) ? a_25 : a_9;
assign b_10 = (sftb_4) ? a_26 : a_10;
assign b_11 = (sftb_4) ? a_27 : a_11;
assign b_12 = (sftb_4) ? a_28 : a_12;
assign b_13 = (sftb_4) ? a_29 : a_13;
assign b_14 = (sftb_4) ? a_30 : a_14;
assign b_15 = (sftb_4) ? a_31 : a_15;

// DSP_A-5Q.NET (727) - b[16-31] : mx2
assign b_16 = (sftb_4) ? a_0 : a_16;
assign b_17 = (sftb_4) ? a_1 : a_17;
assign b_18 = (sftb_4) ? a_2 : a_18;
assign b_19 = (sftb_4) ? a_3 : a_19;
assign b_20 = (sftb_4) ? a_4 : a_20;
assign b_21 = (sftb_4) ? a_5 : a_21;
assign b_22 = (sftb_4) ? a_6 : a_22;
assign b_23 = (sftb_4) ? a_7 : a_23;
assign b_24 = (sftb_4) ? a_8 : a_24;
assign b_25 = (sftb_4) ? a_9 : a_25;
assign b_26 = (sftb_4) ? a_10 : a_26;
assign b_27 = (sftb_4) ? a_11 : a_27;
assign b_28 = (sftb_4) ? a_12 : a_28;
assign b_29 = (sftb_4) ? a_13 : a_29;
assign b_30 = (sftb_4) ? a_14 : a_30;
assign b_31 = (sftb_4) ? a_15 : a_31;

// DSP_A-5Q.NET (729) - c[0-7] : mx2
assign c_0 = (sftb_3) ? b_24 : b_0;
assign c_1 = (sftb_3) ? b_25 : b_1;
assign c_2 = (sftb_3) ? b_26 : b_2;
assign c_3 = (sftb_3) ? b_27 : b_3;
assign c_4 = (sftb_3) ? b_28 : b_4;
assign c_5 = (sftb_3) ? b_29 : b_5;
assign c_6 = (sftb_3) ? b_30 : b_6;
assign c_7 = (sftb_3) ? b_31 : b_7;

// DSP_A-5Q.NET (730) - c[8-31] : mx2
assign c_8 = (sftb_3) ? b_0 : b_8;
assign c_9 = (sftb_3) ? b_1 : b_9;
assign c_10 = (sftb_3) ? b_2 : b_10;
assign c_11 = (sftb_3) ? b_3 : b_11;
assign c_12 = (sftb_3) ? b_4 : b_12;
assign c_13 = (sftb_3) ? b_5 : b_13;
assign c_14 = (sftb_3) ? b_6 : b_14;
assign c_15 = (sftb_3) ? b_7 : b_15;
assign c_16 = (sftb_3) ? b_8 : b_16;
assign c_17 = (sftb_3) ? b_9 : b_17;
assign c_18 = (sftb_3) ? b_10 : b_18;
assign c_19 = (sftb_3) ? b_11 : b_19;
assign c_20 = (sftb_3) ? b_12 : b_20;
assign c_21 = (sftb_3) ? b_13 : b_21;
assign c_22 = (sftb_3) ? b_14 : b_22;
assign c_23 = (sftb_3) ? b_15 : b_23;
assign c_24 = (sftb_3) ? b_16 : b_24;
assign c_25 = (sftb_3) ? b_17 : b_25;
assign c_26 = (sftb_3) ? b_18 : b_26;
assign c_27 = (sftb_3) ? b_19 : b_27;
assign c_28 = (sftb_3) ? b_20 : b_28;
assign c_29 = (sftb_3) ? b_21 : b_29;
assign c_30 = (sftb_3) ? b_22 : b_30;
assign c_31 = (sftb_3) ? b_23 : b_31;

// DSP_A-5Q.NET (732) - d[0-3] : mx2
assign d_0 = (sftb_2) ? c_28 : c_0;
assign d_1 = (sftb_2) ? c_29 : c_1;
assign d_2 = (sftb_2) ? c_30 : c_2;
assign d_3 = (sftb_2) ? c_31 : c_3;

// DSP_A-5Q.NET (733) - d[4-31] : mx2
assign d_4 = (sftb_2) ? c_0 : c_4;
assign d_5 = (sftb_2) ? c_1 : c_5;
assign d_6 = (sftb_2) ? c_2 : c_6;
assign d_7 = (sftb_2) ? c_3 : c_7;
assign d_8 = (sftb_2) ? c_4 : c_8;
assign d_9 = (sftb_2) ? c_5 : c_9;
assign d_10 = (sftb_2) ? c_6 : c_10;
assign d_11 = (sftb_2) ? c_7 : c_11;
assign d_12 = (sftb_2) ? c_8 : c_12;
assign d_13 = (sftb_2) ? c_9 : c_13;
assign d_14 = (sftb_2) ? c_10 : c_14;
assign d_15 = (sftb_2) ? c_11 : c_15;
assign d_16 = (sftb_2) ? c_12 : c_16;
assign d_17 = (sftb_2) ? c_13 : c_17;
assign d_18 = (sftb_2) ? c_14 : c_18;
assign d_19 = (sftb_2) ? c_15 : c_19;
assign d_20 = (sftb_2) ? c_16 : c_20;
assign d_21 = (sftb_2) ? c_17 : c_21;
assign d_22 = (sftb_2) ? c_18 : c_22;
assign d_23 = (sftb_2) ? c_19 : c_23;
assign d_24 = (sftb_2) ? c_20 : c_24;
assign d_25 = (sftb_2) ? c_21 : c_25;
assign d_26 = (sftb_2) ? c_22 : c_26;
assign d_27 = (sftb_2) ? c_23 : c_27;
assign d_28 = (sftb_2) ? c_24 : c_28;
assign d_29 = (sftb_2) ? c_25 : c_29;
assign d_30 = (sftb_2) ? c_26 : c_30;
assign d_31 = (sftb_2) ? c_27 : c_31;

// DSP_A-5Q.NET (735) - e[0-1] : mx2
assign e_0 = (sftb_1) ? d_30 : d_0;
assign e_1 = (sftb_1) ? d_31 : d_1;

// DSP_A-5Q.NET (736) - e[2-31] : mx2
assign e_2 = (sftb_1) ? d_0 : d_2;
assign e_3 = (sftb_1) ? d_1 : d_3;
assign e_4 = (sftb_1) ? d_2 : d_4;
assign e_5 = (sftb_1) ? d_3 : d_5;
assign e_6 = (sftb_1) ? d_4 : d_6;
assign e_7 = (sftb_1) ? d_5 : d_7;
assign e_8 = (sftb_1) ? d_6 : d_8;
assign e_9 = (sftb_1) ? d_7 : d_9;
assign e_10 = (sftb_1) ? d_8 : d_10;
assign e_11 = (sftb_1) ? d_9 : d_11;
assign e_12 = (sftb_1) ? d_10 : d_12;
assign e_13 = (sftb_1) ? d_11 : d_13;
assign e_14 = (sftb_1) ? d_12 : d_14;
assign e_15 = (sftb_1) ? d_13 : d_15;
assign e_16 = (sftb_1) ? d_14 : d_16;
assign e_17 = (sftb_1) ? d_15 : d_17;
assign e_18 = (sftb_1) ? d_16 : d_18;
assign e_19 = (sftb_1) ? d_17 : d_19;
assign e_20 = (sftb_1) ? d_18 : d_20;
assign e_21 = (sftb_1) ? d_19 : d_21;
assign e_22 = (sftb_1) ? d_20 : d_22;
assign e_23 = (sftb_1) ? d_21 : d_23;
assign e_24 = (sftb_1) ? d_22 : d_24;
assign e_25 = (sftb_1) ? d_23 : d_25;
assign e_26 = (sftb_1) ? d_24 : d_26;
assign e_27 = (sftb_1) ? d_25 : d_27;
assign e_28 = (sftb_1) ? d_26 : d_28;
assign e_29 = (sftb_1) ? d_27 : d_29;
assign e_30 = (sftb_1) ? d_28 : d_30;
assign e_31 = (sftb_1) ? d_29 : d_31;

// DSP_A-5Q.NET (738) - f[0] : mx2
assign f_0 = (sftb_0) ? e_31 : e_0;

// DSP_A-5Q.NET (739) - f[1-31] : mx2
assign f_1 = (sftb_0) ? e_0 : e_1;
assign f_2 = (sftb_0) ? e_1 : e_2;
assign f_3 = (sftb_0) ? e_2 : e_3;
assign f_4 = (sftb_0) ? e_3 : e_4;
assign f_5 = (sftb_0) ? e_4 : e_5;
assign f_6 = (sftb_0) ? e_5 : e_6;
assign f_7 = (sftb_0) ? e_6 : e_7;
assign f_8 = (sftb_0) ? e_7 : e_8;
assign f_9 = (sftb_0) ? e_8 : e_9;
assign f_10 = (sftb_0) ? e_9 : e_10;
assign f_11 = (sftb_0) ? e_10 : e_11;
assign f_12 = (sftb_0) ? e_11 : e_12;
assign f_13 = (sftb_0) ? e_12 : e_13;
assign f_14 = (sftb_0) ? e_13 : e_14;
assign f_15 = (sftb_0) ? e_14 : e_15;
assign f_16 = (sftb_0) ? e_15 : e_16;
assign f_17 = (sftb_0) ? e_16 : e_17;
assign f_18 = (sftb_0) ? e_17 : e_18;
assign f_19 = (sftb_0) ? e_18 : e_19;
assign f_20 = (sftb_0) ? e_19 : e_20;
assign f_21 = (sftb_0) ? e_20 : e_21;
assign f_22 = (sftb_0) ? e_21 : e_22;
assign f_23 = (sftb_0) ? e_22 : e_23;
assign f_24 = (sftb_0) ? e_23 : e_24;
assign f_25 = (sftb_0) ? e_24 : e_25;
assign f_26 = (sftb_0) ? e_25 : e_26;
assign f_27 = (sftb_0) ? e_26 : e_27;
assign f_28 = (sftb_0) ? e_27 : e_28;
assign f_29 = (sftb_0) ? e_28 : e_29;
assign f_30 = (sftb_0) ? e_29 : e_30;
assign f_31 = (sftb_0) ? e_30 : e_31;

// DSP_A-5Q.NET (743) - dcd0 : d416gh
d416gh dcd0_inst
(
	.z0 /* OUT */ (dcd_0),
	.z1 /* OUT */ (dcd_1),
	.z2 /* OUT */ (dcd_2),
	.z3 /* OUT */ (dcd_3),
	.z4 /* OUT */ (dcd_4),
	.z5 /* OUT */ (dcd_5),
	.z6 /* OUT */ (dcd_6),
	.z7 /* OUT */ (dcd_7),
	.z8 /* OUT */ (dcd_8),
	.z9 /* OUT */ (dcd_9),
	.z10 /* OUT */ (dcd_10),
	.z11 /* OUT */ (dcd_11),
	.z12 /* OUT */ (dcd_12),
	.z13 /* OUT */ (dcd_13),
	.z14 /* OUT */ (dcd_14),
	.z15 /* OUT */ (dcd_15),
	.a0 /* IN */ (sft_0),
	.a1 /* IN */ (sft_1),
	.a2 /* IN */ (sft_2),
	.a3 /* IN */ (sft_3),
	.gn /* IN */ (sft_4)
);

// DSP_A-5Q.NET (744) - dcd1 : d416gh
d416gh dcd1_inst
(
	.z0 /* OUT */ (dcd_16),
	.z1 /* OUT */ (dcd_17),
	.z2 /* OUT */ (dcd_18),
	.z3 /* OUT */ (dcd_19),
	.z4 /* OUT */ (dcd_20),
	.z5 /* OUT */ (dcd_21),
	.z6 /* OUT */ (dcd_22),
	.z7 /* OUT */ (dcd_23),
	.z8 /* OUT */ (dcd_24),
	.z9 /* OUT */ (dcd_25),
	.z10 /* OUT */ (dcd_26),
	.z11 /* OUT */ (dcd_27),
	.z12 /* OUT */ (dcd_28),
	.z13 /* OUT */ (dcd_29),
	.z14 /* OUT */ (dcd_30),
	.z15 /* OUT */ (dcd_31),
	.a0 /* IN */ (sft_0),
	.a1 /* IN */ (sft_1),
	.a2 /* IN */ (sft_2),
	.a3 /* IN */ (sft_3),
	.gn /* IN */ (sft_n_4)
);

// DSP_A-5Q.NET (757) - rmask[0] : join
assign rmask_0 = dcd_0;

// DSP_A-5Q.NET (758) - rmask[1-7] : or2
assign rmask_1 = rmask_0 | dcd_1;
assign rmask_2 = rmask_1 | dcd_2;
assign rmask_3 = rmask_2 | dcd_3;
assign rmask_4 = rmask_3 | dcd_4;
assign rmask_5 = rmask_4 | dcd_5;
assign rmask_6 = rmask_5 | dcd_6;
assign rmask_7 = rmask_6 | dcd_7;

// DSP_A-5Q.NET (759) - rmask[8] : or9
assign rmask_8 = dcd_0 | dcd_1 | dcd_2 | dcd_3 | dcd_4 | dcd_5 | dcd_6 | dcd_7 | dcd_8;

// DSP_A-5Q.NET (760) - rmask[9-15] : or2
assign rmask_9 = rmask_8 | dcd_9;
assign rmask_10 = rmask_9 | dcd_10;
assign rmask_11 = rmask_10 | dcd_11;
assign rmask_12 = rmask_11 | dcd_12;
assign rmask_13 = rmask_12 | dcd_13;
assign rmask_14 = rmask_13 | dcd_14;
assign rmask_15 = rmask_14 | dcd_15;

// DSP_A-5Q.NET (761) - rmask[16] : or9
assign rmask_16 = rmask_8 | dcd_9 | dcd_10 | dcd_11 | dcd_12 | dcd_13 | dcd_14 | dcd_15 | dcd_16;

// DSP_A-5Q.NET (762) - rmask[17-23] : or2
assign rmask_17 = rmask_16 | dcd_17;
assign rmask_18 = rmask_17 | dcd_18;
assign rmask_19 = rmask_18 | dcd_19;
assign rmask_20 = rmask_19 | dcd_20;
assign rmask_21 = rmask_20 | dcd_21;
assign rmask_22 = rmask_21 | dcd_22;
assign rmask_23 = rmask_22 | dcd_23;

// DSP_A-5Q.NET (763) - rmask[24] : or9
assign rmask_24 = rmask_16 | dcd_17 | dcd_18 | dcd_19 | dcd_20 | dcd_21 | dcd_22 | dcd_23 | dcd_24;

// DSP_A-5Q.NET (764) - rmask[25-31] : or2
assign rmask_25 = rmask_24 | dcd_25;
assign rmask_26 = rmask_25 | dcd_26;
assign rmask_27 = rmask_26 | dcd_27;
assign rmask_28 = rmask_27 | dcd_28;
assign rmask_29 = rmask_28 | dcd_29;
assign rmask_30 = rmask_29 | dcd_30;
assign rmask_31 = rmask_30 | dcd_31;

// DSP_A-5Q.NET (776) - lmask[31] : join
assign lmask_31 = zero;

// DSP_A-5Q.NET (777) - lmask[30] : join
assign lmask_30 = dcd_31;

// DSP_A-5Q.NET (778) - lmask[24-29] : or2
assign lmask_24 = lmask_25 | dcd_25;
assign lmask_25 = lmask_26 | dcd_26;
assign lmask_26 = lmask_27 | dcd_27;
assign lmask_27 = lmask_28 | dcd_28;
assign lmask_28 = lmask_29 | dcd_29;
assign lmask_29 = lmask_30 | dcd_30;

// DSP_A-5Q.NET (779) - lmask[23] : or8
assign lmask_23 = dcd_24 | dcd_25 | dcd_26 | dcd_27 | dcd_28 | dcd_29 | dcd_30 | dcd_31;

// DSP_A-5Q.NET (780) - lmask[16-22] : or2
assign lmask_16 = lmask_17 | dcd_17;
assign lmask_17 = lmask_18 | dcd_18;
assign lmask_18 = lmask_19 | dcd_19;
assign lmask_19 = lmask_20 | dcd_20;
assign lmask_20 = lmask_21 | dcd_21;
assign lmask_21 = lmask_22 | dcd_22;
assign lmask_22 = lmask_23 | dcd_23;

// DSP_A-5Q.NET (781) - lmask[15] : or9
assign lmask_15 = lmask_23 | dcd_16 | dcd_17 | dcd_18 | dcd_19 | dcd_20 | dcd_21 | dcd_22 | dcd_23;

// DSP_A-5Q.NET (782) - lmask[8-14] : or2
assign lmask_8 = lmask_9 | dcd_9;
assign lmask_9 = lmask_10 | dcd_10;
assign lmask_10 = lmask_11 | dcd_11;
assign lmask_11 = lmask_12 | dcd_12;
assign lmask_12 = lmask_13 | dcd_13;
assign lmask_13 = lmask_14 | dcd_14;
assign lmask_14 = lmask_15 | dcd_15;

// DSP_A-5Q.NET (783) - lmask[7] : or9
assign lmask_7 = lmask_15 | dcd_8 | dcd_9 | dcd_10 | dcd_11 | dcd_12 | dcd_13 | dcd_14 | dcd_15;

// DSP_A-5Q.NET (784) - lmask[0-6] : or2
assign lmask_0 = lmask_1 | dcd_1;
assign lmask_1 = lmask_2 | dcd_2;
assign lmask_2 = lmask_3 | dcd_3;
assign lmask_3 = lmask_4 | dcd_4;
assign lmask_4 = lmask_5 | dcd_5;
assign lmask_5 = lmask_6 | dcd_6;
assign lmask_6 = lmask_7 | dcd_7;

// DSP_A-5Q.NET (788) - lsl : an2u
assign lsl = mux_n_0 & mux_n_1;

// DSP_A-5Q.NET (789) - sr : nivu
assign sr = mux_0;

// DSP_A-5Q.NET (790) - asr_sign : an3u
assign asr_sign = mux_0 & mux_1 & a_31;

// DSP_A-5Q.NET (793) - opt0[0-31] : anr2
assign opt0_0 = ~( (lsl & lmask_0) | (sr & rmask_0) );
assign opt0_1 = ~( (lsl & lmask_1) | (sr & rmask_1) );
assign opt0_2 = ~( (lsl & lmask_2) | (sr & rmask_2) );
assign opt0_3 = ~( (lsl & lmask_3) | (sr & rmask_3) );
assign opt0_4 = ~( (lsl & lmask_4) | (sr & rmask_4) );
assign opt0_5 = ~( (lsl & lmask_5) | (sr & rmask_5) );
assign opt0_6 = ~( (lsl & lmask_6) | (sr & rmask_6) );
assign opt0_7 = ~( (lsl & lmask_7) | (sr & rmask_7) );
assign opt0_8 = ~( (lsl & lmask_8) | (sr & rmask_8) );
assign opt0_9 = ~( (lsl & lmask_9) | (sr & rmask_9) );
assign opt0_10 = ~( (lsl & lmask_10) | (sr & rmask_10) );
assign opt0_11 = ~( (lsl & lmask_11) | (sr & rmask_11) );
assign opt0_12 = ~( (lsl & lmask_12) | (sr & rmask_12) );
assign opt0_13 = ~( (lsl & lmask_13) | (sr & rmask_13) );
assign opt0_14 = ~( (lsl & lmask_14) | (sr & rmask_14) );
assign opt0_15 = ~( (lsl & lmask_15) | (sr & rmask_15) );
assign opt0_16 = ~( (lsl & lmask_16) | (sr & rmask_16) );
assign opt0_17 = ~( (lsl & lmask_17) | (sr & rmask_17) );
assign opt0_18 = ~( (lsl & lmask_18) | (sr & rmask_18) );
assign opt0_19 = ~( (lsl & lmask_19) | (sr & rmask_19) );
assign opt0_20 = ~( (lsl & lmask_20) | (sr & rmask_20) );
assign opt0_21 = ~( (lsl & lmask_21) | (sr & rmask_21) );
assign opt0_22 = ~( (lsl & lmask_22) | (sr & rmask_22) );
assign opt0_23 = ~( (lsl & lmask_23) | (sr & rmask_23) );
assign opt0_24 = ~( (lsl & lmask_24) | (sr & rmask_24) );
assign opt0_25 = ~( (lsl & lmask_25) | (sr & rmask_25) );
assign opt0_26 = ~( (lsl & lmask_26) | (sr & rmask_26) );
assign opt0_27 = ~( (lsl & lmask_27) | (sr & rmask_27) );
assign opt0_28 = ~( (lsl & lmask_28) | (sr & rmask_28) );
assign opt0_29 = ~( (lsl & lmask_29) | (sr & rmask_29) );
assign opt0_30 = ~( (lsl & lmask_30) | (sr & rmask_30) );
assign opt0_31 = ~( (lsl & lmask_31) | (sr & rmask_31) );

// DSP_A-5Q.NET (795) - opt1[0-31] : an2
assign opt1_0 = asr_sign & rmask_0;
assign opt1_1 = asr_sign & rmask_1;
assign opt1_2 = asr_sign & rmask_2;
assign opt1_3 = asr_sign & rmask_3;
assign opt1_4 = asr_sign & rmask_4;
assign opt1_5 = asr_sign & rmask_5;
assign opt1_6 = asr_sign & rmask_6;
assign opt1_7 = asr_sign & rmask_7;
assign opt1_8 = asr_sign & rmask_8;
assign opt1_9 = asr_sign & rmask_9;
assign opt1_10 = asr_sign & rmask_10;
assign opt1_11 = asr_sign & rmask_11;
assign opt1_12 = asr_sign & rmask_12;
assign opt1_13 = asr_sign & rmask_13;
assign opt1_14 = asr_sign & rmask_14;
assign opt1_15 = asr_sign & rmask_15;
assign opt1_16 = asr_sign & rmask_16;
assign opt1_17 = asr_sign & rmask_17;
assign opt1_18 = asr_sign & rmask_18;
assign opt1_19 = asr_sign & rmask_19;
assign opt1_20 = asr_sign & rmask_20;
assign opt1_21 = asr_sign & rmask_21;
assign opt1_22 = asr_sign & rmask_22;
assign opt1_23 = asr_sign & rmask_23;
assign opt1_24 = asr_sign & rmask_24;
assign opt1_25 = asr_sign & rmask_25;
assign opt1_26 = asr_sign & rmask_26;
assign opt1_27 = asr_sign & rmask_27;
assign opt1_28 = asr_sign & rmask_28;
assign opt1_29 = asr_sign & rmask_29;
assign opt1_30 = asr_sign & rmask_30;
assign opt1_31 = asr_sign & rmask_31;

// DSP_A-5Q.NET (796) - opt[0-31] : aor1
assign z_0 = (f_0 & opt0_0) | opt1_0;
assign z_1 = (f_1 & opt0_1) | opt1_1;
assign z_2 = (f_2 & opt0_2) | opt1_2;
assign z_3 = (f_3 & opt0_3) | opt1_3;
assign z_4 = (f_4 & opt0_4) | opt1_4;
assign z_5 = (f_5 & opt0_5) | opt1_5;
assign z_6 = (f_6 & opt0_6) | opt1_6;
assign z_7 = (f_7 & opt0_7) | opt1_7;
assign z_8 = (f_8 & opt0_8) | opt1_8;
assign z_9 = (f_9 & opt0_9) | opt1_9;
assign z_10 = (f_10 & opt0_10) | opt1_10;
assign z_11 = (f_11 & opt0_11) | opt1_11;
assign z_12 = (f_12 & opt0_12) | opt1_12;
assign z_13 = (f_13 & opt0_13) | opt1_13;
assign z_14 = (f_14 & opt0_14) | opt1_14;
assign z_15 = (f_15 & opt0_15) | opt1_15;
assign z_16 = (f_16 & opt0_16) | opt1_16;
assign z_17 = (f_17 & opt0_17) | opt1_17;
assign z_18 = (f_18 & opt0_18) | opt1_18;
assign z_19 = (f_19 & opt0_19) | opt1_19;
assign z_20 = (f_20 & opt0_20) | opt1_20;
assign z_21 = (f_21 & opt0_21) | opt1_21;
assign z_22 = (f_22 & opt0_22) | opt1_22;
assign z_23 = (f_23 & opt0_23) | opt1_23;
assign z_24 = (f_24 & opt0_24) | opt1_24;
assign z_25 = (f_25 & opt0_25) | opt1_25;
assign z_26 = (f_26 & opt0_26) | opt1_26;
assign z_27 = (f_27 & opt0_27) | opt1_27;
assign z_28 = (f_28 & opt0_28) | opt1_28;
assign z_29 = (f_29 & opt0_29) | opt1_29;
assign z_30 = (f_30 & opt0_30) | opt1_30;
assign z_31 = (f_31 & opt0_31) | opt1_31;
endmodule
/* verilator lint_on LITENDIAN */
