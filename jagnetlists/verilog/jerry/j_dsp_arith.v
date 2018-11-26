/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_dsp_arith
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
	output gpu_dout_0_out,
	output gpu_dout_0_oe,
	input gpu_dout_0_in,
	output gpu_dout_1_out,
	output gpu_dout_1_oe,
	input gpu_dout_1_in,
	output gpu_dout_2_out,
	output gpu_dout_2_oe,
	input gpu_dout_2_in,
	output carry_flag,
	output nega_flag,
	output [0:31] result,
	output zero_flag,
	input accumrd,
	input [0:31] dstdp,
	input [0:31] srcdp,
	input srcd_31,
	input [0:2] alufunc,
	input brlmux_0,
	input brlmux_1,
	input clk,
	input flagld,
	input flagrd,
	input flagwr,
	input [0:31] gpu_din,
	input macop,
	input modulowr,
	input multsel,
	input multsign,
	input reset_n,
	input resld,
	input ressel_0,
	input ressel_1,
	input ressel_2,
	input rev_sub,
	input satsz,
	input sys_clk // Generated
);
wire [0:2] alufnc;
wire [0:2] alufnci;
wire [0:15] losrcdp;
wire [0:15] hisrcdp;
wire [0:15] mula;
wire [0:15] mulb;
wire [0:22] mantissa;
wire [0:31] alua;
wire [0:31] aluat;
wire [0:31] alub;
wire [0:31] aluq;
wire [0:31] mant;
wire [0:31] mulq;
wire [0:31] mulqp;
wire [0:31] normi;
wire [0:31] resd;
wire [0:31] accum;
wire [0:31] modalu;
wire [0:31] mirror;
wire [0:31] brlq;
wire [0:31] satval;
wire acctop_32;
wire acctop_33;
wire acctop_34;
wire acctop_35;
wire acctop_36;
wire acctop_37;
wire acctop_38;
wire acctop_39;
wire one;
wire zero;
wire ressel_n_0;
wire ressel_n_1;
wire brlmuxp_0;
wire brlmuxp_1;
wire flagldp;
wire resldp;
wire multselp;
wire multsignp;
wire resselpt_0;
wire resselp_n_0;
wire resselpt_1;
wire resselpt_2;
wire resselp_n_2;
wire resselp_0;
wire resselp_1;
wire resselp_2;
wire rev_subp;
wire macop_p;
wire macop_ppt;
wire macop_pp;
wire satszp;
wire mantmodei;
wire mantmode;
wire addtosubi_n;
wire alufunc_n_1;
wire alufn_1;
wire mulq_0;
wire mulq_1;
wire mulq_2;
wire mulq_3;
wire mulq_4;
wire mulq_5;
wire mulq_6;
wire mulq_7;
wire mulq_8;
wire mulq_9;
wire mulq_10;
wire mulq_11;
wire mulq_12;
wire mulq_13;
wire mulq_14;
wire mulq_15;
wire mulq_16;
wire mulq_17;
wire mulq_18;
wire mulq_19;
wire mulq_20;
wire mulq_21;
wire mulq_22;
wire mulq_23;
wire mulq_24;
wire mulq_25;
wire mulq_26;
wire mulq_27;
wire mulq_28;
wire mulq_29;
wire mulq_30;
wire mulq_31;
wire srcdp_0;
wire srcdp_1;
wire srcdp_2;
wire srcdp_3;
wire srcdp_4;
wire srcdp_5;
wire srcdp_6;
wire srcdp_7;
wire srcdp_8;
wire srcdp_9;
wire srcdp_10;
wire srcdp_11;
wire srcdp_12;
wire srcdp_13;
wire srcdp_14;
wire srcdp_15;
wire srcdp_16;
wire srcdp_17;
wire srcdp_18;
wire srcdp_19;
wire srcdp_20;
wire srcdp_21;
wire srcdp_22;
wire srcdp_23;
wire srcdp_24;
wire srcdp_25;
wire srcdp_26;
wire srcdp_27;
wire srcdp_28;
wire srcdp_29;
wire srcdp_30;
wire srcdp_31;
wire topset_31;
wire topset_30;
wire inh_30;
wire topset_25;
wire topset_26;
wire topset_27;
wire topset_28;
wire topset_29;
wire inh_25;
wire inh_26;
wire inh_27;
wire inh_28;
wire inh_29;
wire topset_24;
wire inh_24;
wire topset_17;
wire topset_18;
wire topset_19;
wire topset_20;
wire topset_21;
wire topset_22;
wire topset_23;
wire inh_17;
wire inh_18;
wire inh_19;
wire inh_20;
wire inh_21;
wire inh_22;
wire inh_23;
wire topset_16;
wire inh_16;
wire topset_9;
wire topset_10;
wire topset_11;
wire topset_12;
wire topset_13;
wire topset_14;
wire topset_15;
wire inh_9;
wire inh_10;
wire inh_11;
wire inh_12;
wire inh_13;
wire inh_14;
wire inh_15;
wire topset_8;
wire inh_8;
wire topset_1;
wire topset_2;
wire topset_3;
wire topset_4;
wire topset_5;
wire topset_6;
wire topset_7;
wire inh_1;
wire inh_2;
wire inh_3;
wire inh_4;
wire inh_5;
wire inh_6;
wire inh_7;
wire topset_0;
wire normi_0;
wire normi_1;
wire normi_2;
wire normi_3;
wire normi_4;
wire normi_5;
wire normib_5;
wire aluazero_n;
wire alua_0;
wire alua_1;
wire alua_2;
wire alua_3;
wire alua_4;
wire alua_5;
wire alua_6;
wire alua_7;
wire alua_8;
wire alua_9;
wire alua_10;
wire alua_11;
wire alua_12;
wire alua_13;
wire alua_14;
wire alua_15;
wire alua_16;
wire alua_17;
wire alua_18;
wire alua_19;
wire alua_20;
wire alua_21;
wire alua_22;
wire alua_23;
wire alua_24;
wire alua_25;
wire alua_26;
wire alua_27;
wire alua_28;
wire alua_29;
wire alua_30;
wire alua_31;
wire mantmodeb;
wire alu_co;
wire mulqpsgn;
wire accuma_32;
wire accuma_33;
wire accuma_34;
wire accuma_35;
wire cot;
wire accuma_36;
wire accuma_37;
wire accuma_38;
wire accuma_39;
wire cot2;
wire accuminit;
wire mulqsgn;
wire accumb_32;
wire accumb_33;
wire accumb_34;
wire accumb_35;
wire accumb_36;
wire accumb_37;
wire accumb_38;
wire accumb_39;
wire accums;
wire brl_carry;
wire modulo_0;
wire modulo_1;
wire modulo_2;
wire modulo_3;
wire modulo_4;
wire modulo_5;
wire modulo_6;
wire modulo_7;
wire modulo_8;
wire modulo_9;
wire modulo_10;
wire modulo_11;
wire modulo_12;
wire modulo_13;
wire modulo_14;
wire modulo_15;
wire modulo_16;
wire modulo_17;
wire modulo_18;
wire modulo_19;
wire modulo_20;
wire modulo_21;
wire modulo_22;
wire modulo_23;
wire modulo_24;
wire modulo_25;
wire modulo_26;
wire modulo_27;
wire modulo_28;
wire modulo_29;
wire modulo_30;
wire modulo_31;
wire modalu_0;
wire modalu_1;
wire modalu_2;
wire modalu_3;
wire modalu_4;
wire modalu_5;
wire modalu_6;
wire modalu_7;
wire modalu_8;
wire modalu_9;
wire modalu_10;
wire modalu_11;
wire modalu_12;
wire modalu_13;
wire modalu_14;
wire modalu_15;
wire modalu_16;
wire modalu_17;
wire modalu_18;
wire modalu_19;
wire modalu_20;
wire modalu_21;
wire modalu_22;
wire modalu_23;
wire modalu_24;
wire modalu_25;
wire modalu_26;
wire modalu_27;
wire modalu_28;
wire modalu_29;
wire modalu_30;
wire modalu_31;
wire mirror_0;
wire mirror_1;
wire mirror_2;
wire mirror_3;
wire mirror_4;
wire mirror_5;
wire mirror_6;
wire mirror_7;
wire mirror_8;
wire mirror_9;
wire mirror_10;
wire mirror_11;
wire mirror_12;
wire mirror_13;
wire mirror_14;
wire mirror_15;
wire mirror_16;
wire mirror_17;
wire mirror_18;
wire mirror_19;
wire mirror_20;
wire mirror_21;
wire mirror_22;
wire mirror_23;
wire mirror_24;
wire mirror_25;
wire mirror_26;
wire mirror_27;
wire mirror_28;
wire mirror_29;
wire mirror_30;
wire mirror_31;
wire resldt;
wire zerodet;
wire zfi;
wire cfisel_0;
wire cfisel_1;
wire cfi;
wire nfi;

// Output buffers
wire carry_flag_obuf;
wire nega_flag_obuf;
wire result_b0_obuf;
wire result_b1_obuf;
wire result_b2_obuf;
wire result_b3_obuf;
wire result_b4_obuf;
wire result_b5_obuf;
wire result_b6_obuf;
wire result_b7_obuf;
wire result_b8_obuf;
wire result_b9_obuf;
wire result_b10_obuf;
wire result_b11_obuf;
wire result_b12_obuf;
wire result_b13_obuf;
wire result_b14_obuf;
wire result_b15_obuf;
wire result_b16_obuf;
wire result_b17_obuf;
wire result_b18_obuf;
wire result_b19_obuf;
wire result_b20_obuf;
wire result_b21_obuf;
wire result_b22_obuf;
wire result_b23_obuf;
wire result_b24_obuf;
wire result_b25_obuf;
wire result_b26_obuf;
wire result_b27_obuf;
wire result_b28_obuf;
wire result_b29_obuf;
wire result_b30_obuf;
wire result_b31_obuf;
wire zero_flag_obuf;


// Output buffers
assign carry_flag = carry_flag_obuf;
assign nega_flag = nega_flag_obuf;
assign result[0] = result_b0_obuf;
assign result[1] = result_b1_obuf;
assign result[2] = result_b2_obuf;
assign result[3] = result_b3_obuf;
assign result[4] = result_b4_obuf;
assign result[5] = result_b5_obuf;
assign result[6] = result_b6_obuf;
assign result[7] = result_b7_obuf;
assign result[8] = result_b8_obuf;
assign result[9] = result_b9_obuf;
assign result[10] = result_b10_obuf;
assign result[11] = result_b11_obuf;
assign result[12] = result_b12_obuf;
assign result[13] = result_b13_obuf;
assign result[14] = result_b14_obuf;
assign result[15] = result_b15_obuf;
assign result[16] = result_b16_obuf;
assign result[17] = result_b17_obuf;
assign result[18] = result_b18_obuf;
assign result[19] = result_b19_obuf;
assign result[20] = result_b20_obuf;
assign result[21] = result_b21_obuf;
assign result[22] = result_b22_obuf;
assign result[23] = result_b23_obuf;
assign result[24] = result_b24_obuf;
assign result[25] = result_b25_obuf;
assign result[26] = result_b26_obuf;
assign result[27] = result_b27_obuf;
assign result[28] = result_b28_obuf;
assign result[29] = result_b29_obuf;
assign result[30] = result_b30_obuf;
assign result[31] = result_b31_obuf;
assign zero_flag = zero_flag_obuf;


// DSP_A-5Q.NET (61) - one : tie1
assign one = 1'b1;

// DSP_A-5Q.NET (62) - zero : tie0
assign zero = 1'b0;

// DSP_A-5Q.NET (63) - dummy : dummy

// DSP_A-5Q.NET (64) - ressel\[0-1] : iv
assign ressel_n_0 = ~ressel_0;
assign ressel_n_1 = ~ressel_1;

// DSP_A-5Q.NET (70) - brlmuxp[0-1] : fd1q
fd1q brlmuxp_from_0_to_1_inst_0
(
	.q /* OUT */ (brlmuxp_0),
	.d /* IN */ (brlmux_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q brlmuxp_from_0_to_1_inst_1
(
	.q /* OUT */ (brlmuxp_1),
	.d /* IN */ (brlmux_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (71) - flagldp : fd2q
fd2q flagldp_inst
(
	.q /* OUT */ (flagldp),
	.d /* IN */ (flagld),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (72) - resldp : fd1q
fd1q resldp_inst
(
	.q /* OUT */ (resldp),
	.d /* IN */ (resld),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (73) - multselp : fd1qh
fd1q multselp_inst
(
	.q /* OUT */ (multselp),
	.d /* IN */ (multsel),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (74) - multsignp : fd1q
fd1q multsignp_inst
(
	.q /* OUT */ (multsignp),
	.d /* IN */ (multsign),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (75) - resselpt[0] : fd1
fd1 resselpt_index_0_inst
(
	.q /* OUT */ (resselpt_0),
	.qn /* OUT */ (resselp_n_0),
	.d /* IN */ (ressel_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (76) - resselpt[1] : fd1q
fd1q resselpt_index_1_inst
(
	.q /* OUT */ (resselpt_1),
	.d /* IN */ (ressel_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (77) - resselpt[2] : fd1
fd1 resselpt_index_2_inst
(
	.q /* OUT */ (resselpt_2),
	.qn /* OUT */ (resselp_n_2),
	.d /* IN */ (ressel_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (78) - resselp[0-2] : nivu
assign resselp_0 = resselpt_0;
assign resselp_1 = resselpt_1;
assign resselp_2 = resselpt_2;

// DSP_A-5Q.NET (79) - rev_subp : fd1q
fd1q rev_subp_inst
(
	.q /* OUT */ (rev_subp),
	.d /* IN */ (rev_sub),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (80) - macop_p : fd1q
fd1q macop_p_inst
(
	.q /* OUT */ (macop_p),
	.d /* IN */ (macop),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (81) - macop_ppt : fd1qp
fd1q macop_ppt_inst
(
	.q /* OUT */ (macop_ppt),
	.d /* IN */ (macop_p),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (82) - macop_pp : nivu2
assign macop_pp = macop_ppt;

// DSP_A-5Q.NET (83) - satszp : fd1qu
fd1q satszp_inst
(
	.q /* OUT */ (satszp),
	.d /* IN */ (satsz),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (89) - mantmodei : an3
assign mantmodei = ressel_n_0 & ressel_n_1 & ressel_2;

// DSP_A-5Q.NET (90) - mantmode : fd1q
fd1q mantmode_inst
(
	.q /* OUT */ (mantmode),
	.d /* IN */ (mantmodei),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (94) - addtosubi\ : nd2
assign addtosubi_n = ~(mantmodei & srcd_31);

// DSP_A-5Q.NET (98) - alufunc\[1] : iv
assign alufunc_n_1 = ~alufunc[1];

// DSP_A-5Q.NET (99) - alufn[1] : nd2
assign alufn_1 = ~(alufunc_n_1 & addtosubi_n);

// DSP_A-5Q.NET (100) - alufnc : join
assign alufnci[0] = alufunc[0];
assign alufnci[1] = alufn_1;
assign alufnci[2] = alufunc[2];

// DSP_A-5Q.NET (102) - alufncp : fd1qp
fd1q alufncp_inst_0
(
	.q /* OUT */ (alufnc[0]),
	.d /* IN */ (alufnci[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q alufncp_inst_1
(
	.q /* OUT */ (alufnc[1]),
	.d /* IN */ (alufnci[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q alufncp_inst_2
(
	.q /* OUT */ (alufnc[2]),
	.d /* IN */ (alufnci[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (107) - losrcdp : join
assign losrcdp[0] = srcdp[0];
assign losrcdp[1] = srcdp[1];
assign losrcdp[2] = srcdp[2];
assign losrcdp[3] = srcdp[3];
assign losrcdp[4] = srcdp[4];
assign losrcdp[5] = srcdp[5];
assign losrcdp[6] = srcdp[6];
assign losrcdp[7] = srcdp[7];
assign losrcdp[8] = srcdp[8];
assign losrcdp[9] = srcdp[9];
assign losrcdp[10] = srcdp[10];
assign losrcdp[11] = srcdp[11];
assign losrcdp[12] = srcdp[12];
assign losrcdp[13] = srcdp[13];
assign losrcdp[14] = srcdp[14];
assign losrcdp[15] = srcdp[15];

// DSP_A-5Q.NET (108) - hisrcdp : join
assign hisrcdp[0] = srcdp[16];
assign hisrcdp[1] = srcdp[17];
assign hisrcdp[2] = srcdp[18];
assign hisrcdp[3] = srcdp[19];
assign hisrcdp[4] = srcdp[20];
assign hisrcdp[5] = srcdp[21];
assign hisrcdp[6] = srcdp[22];
assign hisrcdp[7] = srcdp[23];
assign hisrcdp[8] = srcdp[24];
assign hisrcdp[9] = srcdp[25];
assign hisrcdp[10] = srcdp[26];
assign hisrcdp[11] = srcdp[27];
assign hisrcdp[12] = srcdp[28];
assign hisrcdp[13] = srcdp[29];
assign hisrcdp[14] = srcdp[30];
assign hisrcdp[15] = srcdp[31];

// DSP_A-5Q.NET (109) - mulb : join
assign mulb[0] = dstdp[0];
assign mulb[1] = dstdp[1];
assign mulb[2] = dstdp[2];
assign mulb[3] = dstdp[3];
assign mulb[4] = dstdp[4];
assign mulb[5] = dstdp[5];
assign mulb[6] = dstdp[6];
assign mulb[7] = dstdp[7];
assign mulb[8] = dstdp[8];
assign mulb[9] = dstdp[9];
assign mulb[10] = dstdp[10];
assign mulb[11] = dstdp[11];
assign mulb[12] = dstdp[12];
assign mulb[13] = dstdp[13];
assign mulb[14] = dstdp[14];
assign mulb[15] = dstdp[15];

// DSP_A-5Q.NET (110) - mula : mx2
assign mula[0] = (multselp) ? hisrcdp[0] : losrcdp[0];
assign mula[1] = (multselp) ? hisrcdp[1] : losrcdp[1];
assign mula[2] = (multselp) ? hisrcdp[2] : losrcdp[2];
assign mula[3] = (multselp) ? hisrcdp[3] : losrcdp[3];
assign mula[4] = (multselp) ? hisrcdp[4] : losrcdp[4];
assign mula[5] = (multselp) ? hisrcdp[5] : losrcdp[5];
assign mula[6] = (multselp) ? hisrcdp[6] : losrcdp[6];
assign mula[7] = (multselp) ? hisrcdp[7] : losrcdp[7];
assign mula[8] = (multselp) ? hisrcdp[8] : losrcdp[8];
assign mula[9] = (multselp) ? hisrcdp[9] : losrcdp[9];
assign mula[10] = (multselp) ? hisrcdp[10] : losrcdp[10];
assign mula[11] = (multselp) ? hisrcdp[11] : losrcdp[11];
assign mula[12] = (multselp) ? hisrcdp[12] : losrcdp[12];
assign mula[13] = (multselp) ? hisrcdp[13] : losrcdp[13];
assign mula[14] = (multselp) ? hisrcdp[14] : losrcdp[14];
assign mula[15] = (multselp) ? hisrcdp[15] : losrcdp[15];

// DSP_A-5Q.NET (114) - mult : mp16
mp16 mult_inst
(
	.q /* OUT */ ({mulq_0,mulq_1,mulq_2,mulq_3,mulq_4,mulq_5,mulq_6,mulq_7,mulq_8,mulq_9,mulq_10,mulq_11,mulq_12,mulq_13,mulq_14,mulq_15,mulq_16,mulq_17,mulq_18,mulq_19,mulq_20,mulq_21,mulq_22,mulq_23,mulq_24,mulq_25,mulq_26,mulq_27,mulq_28,mulq_29,mulq_30,mulq_31}),
	.a /* IN */ ({mula[0],mula[1],mula[2],mula[3],mula[4],mula[5],mula[6],mula[7],mula[8],mula[9],mula[10],mula[11],mula[12],mula[13],mula[14],mula[15]}),
	.b /* IN */ ({mulb[0],mulb[1],mulb[2],mulb[3],mulb[4],mulb[5],mulb[6],mulb[7],mulb[8],mulb[9],mulb[10],mulb[11],mulb[12],mulb[13],mulb[14],mulb[15]}),
	.sign0 /* IN */ (multsignp),
	.sign1 /* IN */ (multsignp),
	.unk0 /* IN */ (one),
	.unk1 /* IN */ (zero)
);

// DSP_A-5Q.NET (116) - mulq : join
assign mulq[0] = mulq_0;
assign mulq[1] = mulq_1;
assign mulq[2] = mulq_2;
assign mulq[3] = mulq_3;
assign mulq[4] = mulq_4;
assign mulq[5] = mulq_5;
assign mulq[6] = mulq_6;
assign mulq[7] = mulq_7;
assign mulq[8] = mulq_8;
assign mulq[9] = mulq_9;
assign mulq[10] = mulq_10;
assign mulq[11] = mulq_11;
assign mulq[12] = mulq_12;
assign mulq[13] = mulq_13;
assign mulq[14] = mulq_14;
assign mulq[15] = mulq_15;
assign mulq[16] = mulq_16;
assign mulq[17] = mulq_17;
assign mulq[18] = mulq_18;
assign mulq[19] = mulq_19;
assign mulq[20] = mulq_20;
assign mulq[21] = mulq_21;
assign mulq[22] = mulq_22;
assign mulq[23] = mulq_23;
assign mulq[24] = mulq_24;
assign mulq[25] = mulq_25;
assign mulq[26] = mulq_26;
assign mulq[27] = mulq_27;
assign mulq[28] = mulq_28;
assign mulq[29] = mulq_29;
assign mulq[30] = mulq_30;
assign mulq[31] = mulq_31;

// DSP_A-5Q.NET (120) - mulqp : fd1q
fd1q mulqp_inst_0
(
	.q /* OUT */ (mulqp[0]),
	.d /* IN */ (mulq[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_1
(
	.q /* OUT */ (mulqp[1]),
	.d /* IN */ (mulq[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_2
(
	.q /* OUT */ (mulqp[2]),
	.d /* IN */ (mulq[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_3
(
	.q /* OUT */ (mulqp[3]),
	.d /* IN */ (mulq[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_4
(
	.q /* OUT */ (mulqp[4]),
	.d /* IN */ (mulq[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_5
(
	.q /* OUT */ (mulqp[5]),
	.d /* IN */ (mulq[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_6
(
	.q /* OUT */ (mulqp[6]),
	.d /* IN */ (mulq[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_7
(
	.q /* OUT */ (mulqp[7]),
	.d /* IN */ (mulq[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_8
(
	.q /* OUT */ (mulqp[8]),
	.d /* IN */ (mulq[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_9
(
	.q /* OUT */ (mulqp[9]),
	.d /* IN */ (mulq[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_10
(
	.q /* OUT */ (mulqp[10]),
	.d /* IN */ (mulq[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_11
(
	.q /* OUT */ (mulqp[11]),
	.d /* IN */ (mulq[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_12
(
	.q /* OUT */ (mulqp[12]),
	.d /* IN */ (mulq[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_13
(
	.q /* OUT */ (mulqp[13]),
	.d /* IN */ (mulq[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_14
(
	.q /* OUT */ (mulqp[14]),
	.d /* IN */ (mulq[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_15
(
	.q /* OUT */ (mulqp[15]),
	.d /* IN */ (mulq[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_16
(
	.q /* OUT */ (mulqp[16]),
	.d /* IN */ (mulq[16]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_17
(
	.q /* OUT */ (mulqp[17]),
	.d /* IN */ (mulq[17]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_18
(
	.q /* OUT */ (mulqp[18]),
	.d /* IN */ (mulq[18]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_19
(
	.q /* OUT */ (mulqp[19]),
	.d /* IN */ (mulq[19]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_20
(
	.q /* OUT */ (mulqp[20]),
	.d /* IN */ (mulq[20]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_21
(
	.q /* OUT */ (mulqp[21]),
	.d /* IN */ (mulq[21]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_22
(
	.q /* OUT */ (mulqp[22]),
	.d /* IN */ (mulq[22]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_23
(
	.q /* OUT */ (mulqp[23]),
	.d /* IN */ (mulq[23]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_24
(
	.q /* OUT */ (mulqp[24]),
	.d /* IN */ (mulq[24]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_25
(
	.q /* OUT */ (mulqp[25]),
	.d /* IN */ (mulq[25]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_26
(
	.q /* OUT */ (mulqp[26]),
	.d /* IN */ (mulq[26]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_27
(
	.q /* OUT */ (mulqp[27]),
	.d /* IN */ (mulq[27]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_28
(
	.q /* OUT */ (mulqp[28]),
	.d /* IN */ (mulq[28]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_29
(
	.q /* OUT */ (mulqp[29]),
	.d /* IN */ (mulq[29]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_30
(
	.q /* OUT */ (mulqp[30]),
	.d /* IN */ (mulq[30]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mulqp_inst_31
(
	.q /* OUT */ (mulqp[31]),
	.d /* IN */ (mulq[31]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (129) - mantissa : join
assign mantissa[0] = srcdp[0];
assign mantissa[1] = srcdp[1];
assign mantissa[2] = srcdp[2];
assign mantissa[3] = srcdp[3];
assign mantissa[4] = srcdp[4];
assign mantissa[5] = srcdp[5];
assign mantissa[6] = srcdp[6];
assign mantissa[7] = srcdp[7];
assign mantissa[8] = srcdp[8];
assign mantissa[9] = srcdp[9];
assign mantissa[10] = srcdp[10];
assign mantissa[11] = srcdp[11];
assign mantissa[12] = srcdp[12];
assign mantissa[13] = srcdp[13];
assign mantissa[14] = srcdp[14];
assign mantissa[15] = srcdp[15];
assign mantissa[16] = srcdp[16];
assign mantissa[17] = srcdp[17];
assign mantissa[18] = srcdp[18];
assign mantissa[19] = srcdp[19];
assign mantissa[20] = srcdp[20];
assign mantissa[21] = srcdp[21];
assign mantissa[22] = srcdp[22];

// DSP_A-5Q.NET (130) - mant : join
assign mant[0] = mantissa[0];
assign mant[1] = mantissa[1];
assign mant[2] = mantissa[2];
assign mant[3] = mantissa[3];
assign mant[4] = mantissa[4];
assign mant[5] = mantissa[5];
assign mant[6] = mantissa[6];
assign mant[7] = mantissa[7];
assign mant[8] = mantissa[8];
assign mant[9] = mantissa[9];
assign mant[10] = mantissa[10];
assign mant[11] = mantissa[11];
assign mant[12] = mantissa[12];
assign mant[13] = mantissa[13];
assign mant[14] = mantissa[14];
assign mant[15] = mantissa[15];
assign mant[16] = mantissa[16];
assign mant[17] = mantissa[17];
assign mant[18] = mantissa[18];
assign mant[19] = mantissa[19];
assign mant[20] = mantissa[20];
assign mant[21] = mantissa[21];
assign mant[22] = mantissa[22];
assign mant[23] = one;
assign mant[24] = zero;
assign mant[25] = zero;
assign mant[26] = zero;
assign mant[27] = zero;
assign mant[28] = zero;
assign mant[29] = zero;
assign mant[30] = zero;
assign mant[31] = zero;

// DSP_A-5Q.NET (139) - srcdp[0-31] : join
assign srcdp_0 = srcdp[0];
assign srcdp_1 = srcdp[1];
assign srcdp_2 = srcdp[2];
assign srcdp_3 = srcdp[3];
assign srcdp_4 = srcdp[4];
assign srcdp_5 = srcdp[5];
assign srcdp_6 = srcdp[6];
assign srcdp_7 = srcdp[7];
assign srcdp_8 = srcdp[8];
assign srcdp_9 = srcdp[9];
assign srcdp_10 = srcdp[10];
assign srcdp_11 = srcdp[11];
assign srcdp_12 = srcdp[12];
assign srcdp_13 = srcdp[13];
assign srcdp_14 = srcdp[14];
assign srcdp_15 = srcdp[15];
assign srcdp_16 = srcdp[16];
assign srcdp_17 = srcdp[17];
assign srcdp_18 = srcdp[18];
assign srcdp_19 = srcdp[19];
assign srcdp_20 = srcdp[20];
assign srcdp_21 = srcdp[21];
assign srcdp_22 = srcdp[22];
assign srcdp_23 = srcdp[23];
assign srcdp_24 = srcdp[24];
assign srcdp_25 = srcdp[25];
assign srcdp_26 = srcdp[26];
assign srcdp_27 = srcdp[27];
assign srcdp_28 = srcdp[28];
assign srcdp_29 = srcdp[29];
assign srcdp_30 = srcdp[30];
assign srcdp_31 = srcdp[31];

// DSP_A-5Q.NET (143) - topset[31] : niv
assign topset_31 = srcdp_31;

// DSP_A-5Q.NET (144) - topset[30] : tben
j_tben topset_index_30_inst
(
	._this /* OUT */ (topset_30),
	.inho /* OUT */ (inh_30),
	._bit /* IN */ (srcdp_30),
	.inhi /* IN */ (topset_31)
);

// DSP_A-5Q.NET (146) - topset[25-29] : tben
j_tben topset_from_25_to_29_inst_0
(
	._this /* OUT */ (topset_25),
	.inho /* OUT */ (inh_25),
	._bit /* IN */ (srcdp_25),
	.inhi /* IN */ (inh_26)
);
j_tben topset_from_25_to_29_inst_1
(
	._this /* OUT */ (topset_26),
	.inho /* OUT */ (inh_26),
	._bit /* IN */ (srcdp_26),
	.inhi /* IN */ (inh_27)
);
j_tben topset_from_25_to_29_inst_2
(
	._this /* OUT */ (topset_27),
	.inho /* OUT */ (inh_27),
	._bit /* IN */ (srcdp_27),
	.inhi /* IN */ (inh_28)
);
j_tben topset_from_25_to_29_inst_3
(
	._this /* OUT */ (topset_28),
	.inho /* OUT */ (inh_28),
	._bit /* IN */ (srcdp_28),
	.inhi /* IN */ (inh_29)
);
j_tben topset_from_25_to_29_inst_4
(
	._this /* OUT */ (topset_29),
	.inho /* OUT */ (inh_29),
	._bit /* IN */ (srcdp_29),
	.inhi /* IN */ (inh_30)
);

// DSP_A-5Q.NET (148) - topset[24] : tbenw
j_tbenw topset_index_24_inst
(
	._this /* OUT */ (topset_24),
	._bit /* IN */ (srcdp_24),
	.inhi /* IN */ (inh_25)
);

// DSP_A-5Q.NET (149) - inh[24] : or8
assign inh_24 = srcdp_24 | srcdp_25 | srcdp_26 | srcdp_27 | srcdp_28 | srcdp_29 | srcdp_30 | srcdp_31;

// DSP_A-5Q.NET (151) - topset[17-23] : tben
j_tben topset_from_17_to_23_inst_0
(
	._this /* OUT */ (topset_17),
	.inho /* OUT */ (inh_17),
	._bit /* IN */ (srcdp_17),
	.inhi /* IN */ (inh_18)
);
j_tben topset_from_17_to_23_inst_1
(
	._this /* OUT */ (topset_18),
	.inho /* OUT */ (inh_18),
	._bit /* IN */ (srcdp_18),
	.inhi /* IN */ (inh_19)
);
j_tben topset_from_17_to_23_inst_2
(
	._this /* OUT */ (topset_19),
	.inho /* OUT */ (inh_19),
	._bit /* IN */ (srcdp_19),
	.inhi /* IN */ (inh_20)
);
j_tben topset_from_17_to_23_inst_3
(
	._this /* OUT */ (topset_20),
	.inho /* OUT */ (inh_20),
	._bit /* IN */ (srcdp_20),
	.inhi /* IN */ (inh_21)
);
j_tben topset_from_17_to_23_inst_4
(
	._this /* OUT */ (topset_21),
	.inho /* OUT */ (inh_21),
	._bit /* IN */ (srcdp_21),
	.inhi /* IN */ (inh_22)
);
j_tben topset_from_17_to_23_inst_5
(
	._this /* OUT */ (topset_22),
	.inho /* OUT */ (inh_22),
	._bit /* IN */ (srcdp_22),
	.inhi /* IN */ (inh_23)
);
j_tben topset_from_17_to_23_inst_6
(
	._this /* OUT */ (topset_23),
	.inho /* OUT */ (inh_23),
	._bit /* IN */ (srcdp_23),
	.inhi /* IN */ (inh_24)
);

// DSP_A-5Q.NET (153) - topset[16] : tbenw
j_tbenw topset_index_16_inst
(
	._this /* OUT */ (topset_16),
	._bit /* IN */ (srcdp_16),
	.inhi /* IN */ (inh_17)
);

// DSP_A-5Q.NET (154) - inh[16] : or9
assign inh_16 = srcdp_16 | srcdp_17 | srcdp_18 | srcdp_19 | srcdp_20 | srcdp_21 | srcdp_22 | srcdp_23 | inh_24;

// DSP_A-5Q.NET (156) - topset[9-15] : tben
j_tben topset_from_9_to_15_inst_0
(
	._this /* OUT */ (topset_9),
	.inho /* OUT */ (inh_9),
	._bit /* IN */ (srcdp_9),
	.inhi /* IN */ (inh_10)
);
j_tben topset_from_9_to_15_inst_1
(
	._this /* OUT */ (topset_10),
	.inho /* OUT */ (inh_10),
	._bit /* IN */ (srcdp_10),
	.inhi /* IN */ (inh_11)
);
j_tben topset_from_9_to_15_inst_2
(
	._this /* OUT */ (topset_11),
	.inho /* OUT */ (inh_11),
	._bit /* IN */ (srcdp_11),
	.inhi /* IN */ (inh_12)
);
j_tben topset_from_9_to_15_inst_3
(
	._this /* OUT */ (topset_12),
	.inho /* OUT */ (inh_12),
	._bit /* IN */ (srcdp_12),
	.inhi /* IN */ (inh_13)
);
j_tben topset_from_9_to_15_inst_4
(
	._this /* OUT */ (topset_13),
	.inho /* OUT */ (inh_13),
	._bit /* IN */ (srcdp_13),
	.inhi /* IN */ (inh_14)
);
j_tben topset_from_9_to_15_inst_5
(
	._this /* OUT */ (topset_14),
	.inho /* OUT */ (inh_14),
	._bit /* IN */ (srcdp_14),
	.inhi /* IN */ (inh_15)
);
j_tben topset_from_9_to_15_inst_6
(
	._this /* OUT */ (topset_15),
	.inho /* OUT */ (inh_15),
	._bit /* IN */ (srcdp_15),
	.inhi /* IN */ (inh_16)
);

// DSP_A-5Q.NET (158) - topset[8] : tbenw
j_tbenw topset_index_8_inst
(
	._this /* OUT */ (topset_8),
	._bit /* IN */ (srcdp_8),
	.inhi /* IN */ (inh_9)
);

// DSP_A-5Q.NET (159) - inh[8] : or9
assign inh_8 = srcdp_8 | srcdp_9 | srcdp_10 | srcdp_11 | srcdp_12 | srcdp_13 | srcdp_14 | srcdp_15 | inh_16;

// DSP_A-5Q.NET (161) - topset[1-7] : tben
j_tben topset_from_1_to_7_inst_0
(
	._this /* OUT */ (topset_1),
	.inho /* OUT */ (inh_1),
	._bit /* IN */ (srcdp_1),
	.inhi /* IN */ (inh_2)
);
j_tben topset_from_1_to_7_inst_1
(
	._this /* OUT */ (topset_2),
	.inho /* OUT */ (inh_2),
	._bit /* IN */ (srcdp_2),
	.inhi /* IN */ (inh_3)
);
j_tben topset_from_1_to_7_inst_2
(
	._this /* OUT */ (topset_3),
	.inho /* OUT */ (inh_3),
	._bit /* IN */ (srcdp_3),
	.inhi /* IN */ (inh_4)
);
j_tben topset_from_1_to_7_inst_3
(
	._this /* OUT */ (topset_4),
	.inho /* OUT */ (inh_4),
	._bit /* IN */ (srcdp_4),
	.inhi /* IN */ (inh_5)
);
j_tben topset_from_1_to_7_inst_4
(
	._this /* OUT */ (topset_5),
	.inho /* OUT */ (inh_5),
	._bit /* IN */ (srcdp_5),
	.inhi /* IN */ (inh_6)
);
j_tben topset_from_1_to_7_inst_5
(
	._this /* OUT */ (topset_6),
	.inho /* OUT */ (inh_6),
	._bit /* IN */ (srcdp_6),
	.inhi /* IN */ (inh_7)
);
j_tben topset_from_1_to_7_inst_6
(
	._this /* OUT */ (topset_7),
	.inho /* OUT */ (inh_7),
	._bit /* IN */ (srcdp_7),
	.inhi /* IN */ (inh_8)
);

// DSP_A-5Q.NET (163) - topset[0] : tbenw
j_tbenw topset_index_0_inst
(
	._this /* OUT */ (topset_0),
	._bit /* IN */ (srcdp_0),
	.inhi /* IN */ (inh_1)
);

// DSP_A-5Q.NET (167) - normi[0] : or16
assign normi_0 = topset_30 | topset_28 | topset_26 | topset_24 | topset_22 | topset_20 | topset_18 | topset_16 | topset_14 | topset_12 | topset_10 | topset_8 | topset_6 | topset_4 | topset_2 | topset_0;

// DSP_A-5Q.NET (173) - normi[1] : or16
assign normi_1 = topset_29 | topset_30 | topset_25 | topset_26 | topset_21 | topset_22 | topset_17 | topset_18 | topset_13 | topset_14 | topset_9 | topset_10 | topset_5 | topset_6 | topset_1 | topset_2;

// DSP_A-5Q.NET (177) - normi[2] : or16
assign normi_2 = topset_27 | topset_28 | topset_29 | topset_30 | topset_19 | topset_20 | topset_21 | topset_22 | topset_11 | topset_12 | topset_13 | topset_14 | topset_3 | topset_4 | topset_5 | topset_6;

// DSP_A-5Q.NET (179) - normi[3] : or16
assign normi_3 = topset_31 | topset_15 | topset_16 | topset_17 | topset_18 | topset_19 | topset_20 | topset_21 | topset_22 | topset_0 | topset_1 | topset_2 | topset_3 | topset_4 | topset_5 | topset_6;

// DSP_A-5Q.NET (181) - normi[4] : an2
assign normi_4 = normi_5 & inh_7;

// DSP_A-5Q.NET (182) - normi[5] : ivu
assign normi_5 = ~inh_23;

// DSP_A-5Q.NET (183) - normib[5] : nivu
assign normib_5 = normi_5;

// DSP_A-5Q.NET (185) - normi : join
assign normi[0] = normi_0;
assign normi[1] = normi_1;
assign normi[2] = normi_2;
assign normi[3] = normi_3;
assign normi[4] = normi_4;
assign normi[5] = normi_5;
assign normi[6] = normi_5;
assign normi[7] = normi_5;
assign normi[8] = normi_5;
assign normi[9] = normi_5;
assign normi[10] = normi_5;
assign normi[11] = normi_5;
assign normi[12] = normi_5;
assign normi[13] = normi_5;
assign normi[14] = normi_5;
assign normi[15] = normi_5;
assign normi[16] = normi_5;
assign normi[17] = normi_5;
assign normi[18] = normi_5;
assign normi[19] = normi_5;
assign normi[20] = normib_5;
assign normi[21] = normib_5;
assign normi[22] = normib_5;
assign normi[23] = normib_5;
assign normi[24] = normib_5;
assign normi[25] = normib_5;
assign normi[26] = normib_5;
assign normi[27] = normib_5;
assign normi[28] = normib_5;
assign normi[29] = normib_5;
assign normi[30] = normib_5;
assign normi[31] = normib_5;

// DSP_A-5Q.NET (193) - dummya : dummy

// DSP_A-5Q.NET (194) - dummyb : dummy

// DSP_A-5Q.NET (201) - aluamux : mx2
assign aluat[0] = (macop_pp) ? result_b0_obuf : dstdp[0];
assign aluat[1] = (macop_pp) ? result_b1_obuf : dstdp[1];
assign aluat[2] = (macop_pp) ? result_b2_obuf : dstdp[2];
assign aluat[3] = (macop_pp) ? result_b3_obuf : dstdp[3];
assign aluat[4] = (macop_pp) ? result_b4_obuf : dstdp[4];
assign aluat[5] = (macop_pp) ? result_b5_obuf : dstdp[5];
assign aluat[6] = (macop_pp) ? result_b6_obuf : dstdp[6];
assign aluat[7] = (macop_pp) ? result_b7_obuf : dstdp[7];
assign aluat[8] = (macop_pp) ? result_b8_obuf : dstdp[8];
assign aluat[9] = (macop_pp) ? result_b9_obuf : dstdp[9];
assign aluat[10] = (macop_pp) ? result_b10_obuf : dstdp[10];
assign aluat[11] = (macop_pp) ? result_b11_obuf : dstdp[11];
assign aluat[12] = (macop_pp) ? result_b12_obuf : dstdp[12];
assign aluat[13] = (macop_pp) ? result_b13_obuf : dstdp[13];
assign aluat[14] = (macop_pp) ? result_b14_obuf : dstdp[14];
assign aluat[15] = (macop_pp) ? result_b15_obuf : dstdp[15];
assign aluat[16] = (macop_pp) ? result_b16_obuf : dstdp[16];
assign aluat[17] = (macop_pp) ? result_b17_obuf : dstdp[17];
assign aluat[18] = (macop_pp) ? result_b18_obuf : dstdp[18];
assign aluat[19] = (macop_pp) ? result_b19_obuf : dstdp[19];
assign aluat[20] = (macop_pp) ? result_b20_obuf : dstdp[20];
assign aluat[21] = (macop_pp) ? result_b21_obuf : dstdp[21];
assign aluat[22] = (macop_pp) ? result_b22_obuf : dstdp[22];
assign aluat[23] = (macop_pp) ? result_b23_obuf : dstdp[23];
assign aluat[24] = (macop_pp) ? result_b24_obuf : dstdp[24];
assign aluat[25] = (macop_pp) ? result_b25_obuf : dstdp[25];
assign aluat[26] = (macop_pp) ? result_b26_obuf : dstdp[26];
assign aluat[27] = (macop_pp) ? result_b27_obuf : dstdp[27];
assign aluat[28] = (macop_pp) ? result_b28_obuf : dstdp[28];
assign aluat[29] = (macop_pp) ? result_b29_obuf : dstdp[29];
assign aluat[30] = (macop_pp) ? result_b30_obuf : dstdp[30];
assign aluat[31] = (macop_pp) ? result_b31_obuf : dstdp[31];

// DSP_A-5Q.NET (202) - aluazero\ : ivu
assign aluazero_n = ~mantmode;

// DSP_A-5Q.NET (203) - alua[0-31] : an2p
assign alua_0 = aluat[0] & aluazero_n;
assign alua_1 = aluat[1] & aluazero_n;
assign alua_2 = aluat[2] & aluazero_n;
assign alua_3 = aluat[3] & aluazero_n;
assign alua_4 = aluat[4] & aluazero_n;
assign alua_5 = aluat[5] & aluazero_n;
assign alua_6 = aluat[6] & aluazero_n;
assign alua_7 = aluat[7] & aluazero_n;
assign alua_8 = aluat[8] & aluazero_n;
assign alua_9 = aluat[9] & aluazero_n;
assign alua_10 = aluat[10] & aluazero_n;
assign alua_11 = aluat[11] & aluazero_n;
assign alua_12 = aluat[12] & aluazero_n;
assign alua_13 = aluat[13] & aluazero_n;
assign alua_14 = aluat[14] & aluazero_n;
assign alua_15 = aluat[15] & aluazero_n;
assign alua_16 = aluat[16] & aluazero_n;
assign alua_17 = aluat[17] & aluazero_n;
assign alua_18 = aluat[18] & aluazero_n;
assign alua_19 = aluat[19] & aluazero_n;
assign alua_20 = aluat[20] & aluazero_n;
assign alua_21 = aluat[21] & aluazero_n;
assign alua_22 = aluat[22] & aluazero_n;
assign alua_23 = aluat[23] & aluazero_n;
assign alua_24 = aluat[24] & aluazero_n;
assign alua_25 = aluat[25] & aluazero_n;
assign alua_26 = aluat[26] & aluazero_n;
assign alua_27 = aluat[27] & aluazero_n;
assign alua_28 = aluat[28] & aluazero_n;
assign alua_29 = aluat[29] & aluazero_n;
assign alua_30 = aluat[30] & aluazero_n;
assign alua_31 = aluat[31] & aluazero_n;

// DSP_A-5Q.NET (204) - alua : join
assign alua[0] = alua_0;
assign alua[1] = alua_1;
assign alua[2] = alua_2;
assign alua[3] = alua_3;
assign alua[4] = alua_4;
assign alua[5] = alua_5;
assign alua[6] = alua_6;
assign alua[7] = alua_7;
assign alua[8] = alua_8;
assign alua[9] = alua_9;
assign alua[10] = alua_10;
assign alua[11] = alua_11;
assign alua[12] = alua_12;
assign alua[13] = alua_13;
assign alua[14] = alua_14;
assign alua[15] = alua_15;
assign alua[16] = alua_16;
assign alua[17] = alua_17;
assign alua[18] = alua_18;
assign alua[19] = alua_19;
assign alua[20] = alua_20;
assign alua[21] = alua_21;
assign alua[22] = alua_22;
assign alua[23] = alua_23;
assign alua[24] = alua_24;
assign alua[25] = alua_25;
assign alua[26] = alua_26;
assign alua[27] = alua_27;
assign alua[28] = alua_28;
assign alua[29] = alua_29;
assign alua[30] = alua_30;
assign alua[31] = alua_31;

// DSP_A-5Q.NET (211) - mantmodeb : nivu
assign mantmodeb = mantmode;

// DSP_A-5Q.NET (212) - alubmux : mx4p
mx4 alubmux_inst_0
(
	.z /* OUT */ (alub[0]),
	.a0 /* IN */ (srcdp[0]),
	.a1 /* IN */ (mulqp[0]),
	.a2 /* IN */ (mant[0]),
	.a3 /* IN */ (mant[0]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_1
(
	.z /* OUT */ (alub[1]),
	.a0 /* IN */ (srcdp[1]),
	.a1 /* IN */ (mulqp[1]),
	.a2 /* IN */ (mant[1]),
	.a3 /* IN */ (mant[1]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_2
(
	.z /* OUT */ (alub[2]),
	.a0 /* IN */ (srcdp[2]),
	.a1 /* IN */ (mulqp[2]),
	.a2 /* IN */ (mant[2]),
	.a3 /* IN */ (mant[2]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_3
(
	.z /* OUT */ (alub[3]),
	.a0 /* IN */ (srcdp[3]),
	.a1 /* IN */ (mulqp[3]),
	.a2 /* IN */ (mant[3]),
	.a3 /* IN */ (mant[3]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_4
(
	.z /* OUT */ (alub[4]),
	.a0 /* IN */ (srcdp[4]),
	.a1 /* IN */ (mulqp[4]),
	.a2 /* IN */ (mant[4]),
	.a3 /* IN */ (mant[4]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_5
(
	.z /* OUT */ (alub[5]),
	.a0 /* IN */ (srcdp[5]),
	.a1 /* IN */ (mulqp[5]),
	.a2 /* IN */ (mant[5]),
	.a3 /* IN */ (mant[5]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_6
(
	.z /* OUT */ (alub[6]),
	.a0 /* IN */ (srcdp[6]),
	.a1 /* IN */ (mulqp[6]),
	.a2 /* IN */ (mant[6]),
	.a3 /* IN */ (mant[6]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_7
(
	.z /* OUT */ (alub[7]),
	.a0 /* IN */ (srcdp[7]),
	.a1 /* IN */ (mulqp[7]),
	.a2 /* IN */ (mant[7]),
	.a3 /* IN */ (mant[7]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_8
(
	.z /* OUT */ (alub[8]),
	.a0 /* IN */ (srcdp[8]),
	.a1 /* IN */ (mulqp[8]),
	.a2 /* IN */ (mant[8]),
	.a3 /* IN */ (mant[8]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_9
(
	.z /* OUT */ (alub[9]),
	.a0 /* IN */ (srcdp[9]),
	.a1 /* IN */ (mulqp[9]),
	.a2 /* IN */ (mant[9]),
	.a3 /* IN */ (mant[9]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_10
(
	.z /* OUT */ (alub[10]),
	.a0 /* IN */ (srcdp[10]),
	.a1 /* IN */ (mulqp[10]),
	.a2 /* IN */ (mant[10]),
	.a3 /* IN */ (mant[10]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_11
(
	.z /* OUT */ (alub[11]),
	.a0 /* IN */ (srcdp[11]),
	.a1 /* IN */ (mulqp[11]),
	.a2 /* IN */ (mant[11]),
	.a3 /* IN */ (mant[11]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_12
(
	.z /* OUT */ (alub[12]),
	.a0 /* IN */ (srcdp[12]),
	.a1 /* IN */ (mulqp[12]),
	.a2 /* IN */ (mant[12]),
	.a3 /* IN */ (mant[12]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_13
(
	.z /* OUT */ (alub[13]),
	.a0 /* IN */ (srcdp[13]),
	.a1 /* IN */ (mulqp[13]),
	.a2 /* IN */ (mant[13]),
	.a3 /* IN */ (mant[13]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_14
(
	.z /* OUT */ (alub[14]),
	.a0 /* IN */ (srcdp[14]),
	.a1 /* IN */ (mulqp[14]),
	.a2 /* IN */ (mant[14]),
	.a3 /* IN */ (mant[14]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_15
(
	.z /* OUT */ (alub[15]),
	.a0 /* IN */ (srcdp[15]),
	.a1 /* IN */ (mulqp[15]),
	.a2 /* IN */ (mant[15]),
	.a3 /* IN */ (mant[15]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_16
(
	.z /* OUT */ (alub[16]),
	.a0 /* IN */ (srcdp[16]),
	.a1 /* IN */ (mulqp[16]),
	.a2 /* IN */ (mant[16]),
	.a3 /* IN */ (mant[16]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_17
(
	.z /* OUT */ (alub[17]),
	.a0 /* IN */ (srcdp[17]),
	.a1 /* IN */ (mulqp[17]),
	.a2 /* IN */ (mant[17]),
	.a3 /* IN */ (mant[17]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_18
(
	.z /* OUT */ (alub[18]),
	.a0 /* IN */ (srcdp[18]),
	.a1 /* IN */ (mulqp[18]),
	.a2 /* IN */ (mant[18]),
	.a3 /* IN */ (mant[18]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_19
(
	.z /* OUT */ (alub[19]),
	.a0 /* IN */ (srcdp[19]),
	.a1 /* IN */ (mulqp[19]),
	.a2 /* IN */ (mant[19]),
	.a3 /* IN */ (mant[19]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_20
(
	.z /* OUT */ (alub[20]),
	.a0 /* IN */ (srcdp[20]),
	.a1 /* IN */ (mulqp[20]),
	.a2 /* IN */ (mant[20]),
	.a3 /* IN */ (mant[20]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_21
(
	.z /* OUT */ (alub[21]),
	.a0 /* IN */ (srcdp[21]),
	.a1 /* IN */ (mulqp[21]),
	.a2 /* IN */ (mant[21]),
	.a3 /* IN */ (mant[21]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_22
(
	.z /* OUT */ (alub[22]),
	.a0 /* IN */ (srcdp[22]),
	.a1 /* IN */ (mulqp[22]),
	.a2 /* IN */ (mant[22]),
	.a3 /* IN */ (mant[22]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_23
(
	.z /* OUT */ (alub[23]),
	.a0 /* IN */ (srcdp[23]),
	.a1 /* IN */ (mulqp[23]),
	.a2 /* IN */ (mant[23]),
	.a3 /* IN */ (mant[23]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_24
(
	.z /* OUT */ (alub[24]),
	.a0 /* IN */ (srcdp[24]),
	.a1 /* IN */ (mulqp[24]),
	.a2 /* IN */ (mant[24]),
	.a3 /* IN */ (mant[24]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_25
(
	.z /* OUT */ (alub[25]),
	.a0 /* IN */ (srcdp[25]),
	.a1 /* IN */ (mulqp[25]),
	.a2 /* IN */ (mant[25]),
	.a3 /* IN */ (mant[25]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_26
(
	.z /* OUT */ (alub[26]),
	.a0 /* IN */ (srcdp[26]),
	.a1 /* IN */ (mulqp[26]),
	.a2 /* IN */ (mant[26]),
	.a3 /* IN */ (mant[26]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_27
(
	.z /* OUT */ (alub[27]),
	.a0 /* IN */ (srcdp[27]),
	.a1 /* IN */ (mulqp[27]),
	.a2 /* IN */ (mant[27]),
	.a3 /* IN */ (mant[27]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_28
(
	.z /* OUT */ (alub[28]),
	.a0 /* IN */ (srcdp[28]),
	.a1 /* IN */ (mulqp[28]),
	.a2 /* IN */ (mant[28]),
	.a3 /* IN */ (mant[28]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_29
(
	.z /* OUT */ (alub[29]),
	.a0 /* IN */ (srcdp[29]),
	.a1 /* IN */ (mulqp[29]),
	.a2 /* IN */ (mant[29]),
	.a3 /* IN */ (mant[29]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_30
(
	.z /* OUT */ (alub[30]),
	.a0 /* IN */ (srcdp[30]),
	.a1 /* IN */ (mulqp[30]),
	.a2 /* IN */ (mant[30]),
	.a3 /* IN */ (mant[30]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);
mx4 alubmux_inst_31
(
	.z /* OUT */ (alub[31]),
	.a0 /* IN */ (srcdp[31]),
	.a1 /* IN */ (mulqp[31]),
	.a2 /* IN */ (mant[31]),
	.a3 /* IN */ (mant[31]),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (mantmodeb)
);

// DSP_A-5Q.NET (217) - alu : alu32
j_alu32 alu_inst
(
	.aluq /* OUT */ ({aluq[0],aluq[1],aluq[2],aluq[3],aluq[4],aluq[5],aluq[6],aluq[7],aluq[8],aluq[9],aluq[10],aluq[11],aluq[12],aluq[13],aluq[14],aluq[15],aluq[16],aluq[17],aluq[18],aluq[19],aluq[20],aluq[21],aluq[22],aluq[23],aluq[24],aluq[25],aluq[26],aluq[27],aluq[28],aluq[29],aluq[30],aluq[31]}),
	.alu_co /* OUT */ (alu_co),
	.alua /* IN */ ({alua[0],alua[1],alua[2],alua[3],alua[4],alua[5],alua[6],alua[7],alua[8],alua[9],alua[10],alua[11],alua[12],alua[13],alua[14],alua[15],alua[16],alua[17],alua[18],alua[19],alua[20],alua[21],alua[22],alua[23],alua[24],alua[25],alua[26],alua[27],alua[28],alua[29],alua[30],alua[31]}),
	.alub /* IN */ ({alub[0],alub[1],alub[2],alub[3],alub[4],alub[5],alub[6],alub[7],alub[8],alub[9],alub[10],alub[11],alub[12],alub[13],alub[14],alub[15],alub[16],alub[17],alub[18],alub[19],alub[20],alub[21],alub[22],alub[23],alub[24],alub[25],alub[26],alub[27],alub[28],alub[29],alub[30],alub[31]}),
	.carry_flag /* IN */ (carry_flag_obuf),
	.alufunc /* IN */ ({alufnc[0],alufnc[1],alufnc[2]}),
	.dstdp_31 /* IN */ (dstdp[31]),
	.rev_subp /* IN */ (rev_subp)
);

// DSP_A-5Q.NET (226) - mulqpsgn : nivm
assign mulqpsgn = mulqp[31];

// DSP_A-5Q.NET (243) - ge1 : add4
j_add4 ge1_inst
(
	.q_0 /* OUT */ (accuma_32),
	.q_1 /* OUT */ (accuma_33),
	.q_2 /* OUT */ (accuma_34),
	.q_3 /* OUT */ (accuma_35),
	.co /* OUT */ (cot),
	.a_0 /* IN */ (acctop_32),
	.a_1 /* IN */ (acctop_33),
	.a_2 /* IN */ (acctop_34),
	.a_3 /* IN */ (acctop_35),
	.b_0 /* IN */ (mulqpsgn),
	.b_1 /* IN */ (mulqpsgn),
	.b_2 /* IN */ (mulqpsgn),
	.b_3 /* IN */ (mulqpsgn),
	.ci /* IN */ (alu_co)
);

// DSP_A-5Q.NET (244) - ge2 : add4
j_add4 ge2_inst
(
	.q_0 /* OUT */ (accuma_36),
	.q_1 /* OUT */ (accuma_37),
	.q_2 /* OUT */ (accuma_38),
	.q_3 /* OUT */ (accuma_39),
	.co /* OUT */ (cot2),
	.a_0 /* IN */ (acctop_36),
	.a_1 /* IN */ (acctop_37),
	.a_2 /* IN */ (acctop_38),
	.a_3 /* IN */ (acctop_39),
	.b_0 /* IN */ (mulqpsgn),
	.b_1 /* IN */ (mulqpsgn),
	.b_2 /* IN */ (mulqpsgn),
	.b_3 /* IN */ (mulqpsgn),
	.ci /* IN */ (cot)
);

// DSP_A-5Q.NET (245) - ge3 : dummy

// DSP_A-5Q.NET (250) - accuminit : an4p
assign accuminit = resldp & resselp_0 & resselp_1 & resselp_n_2;

// DSP_A-5Q.NET (252) - mulqsgn : nivm
assign mulqsgn = mulq[31];

// DSP_A-5Q.NET (253) - accumb[32-39] : mx4
mx4 accumb_from_32_to_39_inst_0
(
	.z /* OUT */ (accumb_32),
	.a0 /* IN */ (acctop_32),
	.a1 /* IN */ (accuma_32),
	.a2 /* IN */ (mulqsgn),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (accuminit)
);
mx4 accumb_from_32_to_39_inst_1
(
	.z /* OUT */ (accumb_33),
	.a0 /* IN */ (acctop_33),
	.a1 /* IN */ (accuma_33),
	.a2 /* IN */ (mulqsgn),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (accuminit)
);
mx4 accumb_from_32_to_39_inst_2
(
	.z /* OUT */ (accumb_34),
	.a0 /* IN */ (acctop_34),
	.a1 /* IN */ (accuma_34),
	.a2 /* IN */ (mulqsgn),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (accuminit)
);
mx4 accumb_from_32_to_39_inst_3
(
	.z /* OUT */ (accumb_35),
	.a0 /* IN */ (acctop_35),
	.a1 /* IN */ (accuma_35),
	.a2 /* IN */ (mulqsgn),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (accuminit)
);
mx4 accumb_from_32_to_39_inst_4
(
	.z /* OUT */ (accumb_36),
	.a0 /* IN */ (acctop_36),
	.a1 /* IN */ (accuma_36),
	.a2 /* IN */ (mulqsgn),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (accuminit)
);
mx4 accumb_from_32_to_39_inst_5
(
	.z /* OUT */ (accumb_37),
	.a0 /* IN */ (acctop_37),
	.a1 /* IN */ (accuma_37),
	.a2 /* IN */ (mulqsgn),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (accuminit)
);
mx4 accumb_from_32_to_39_inst_6
(
	.z /* OUT */ (accumb_38),
	.a0 /* IN */ (acctop_38),
	.a1 /* IN */ (accuma_38),
	.a2 /* IN */ (mulqsgn),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (accuminit)
);
mx4 accumb_from_32_to_39_inst_7
(
	.z /* OUT */ (accumb_39),
	.a0 /* IN */ (acctop_39),
	.a1 /* IN */ (accuma_39),
	.a2 /* IN */ (mulqsgn),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (macop_pp),
	.s1 /* IN */ (accuminit)
);

// DSP_A-5Q.NET (256) - accum[32-39] : fd1q
fd1q accum_from_32_to_39_inst_0
(
	.q /* OUT */ (acctop_32),
	.d /* IN */ (accumb_32),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q accum_from_32_to_39_inst_1
(
	.q /* OUT */ (acctop_33),
	.d /* IN */ (accumb_33),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q accum_from_32_to_39_inst_2
(
	.q /* OUT */ (acctop_34),
	.d /* IN */ (accumb_34),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q accum_from_32_to_39_inst_3
(
	.q /* OUT */ (acctop_35),
	.d /* IN */ (accumb_35),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q accum_from_32_to_39_inst_4
(
	.q /* OUT */ (acctop_36),
	.d /* IN */ (accumb_36),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q accum_from_32_to_39_inst_5
(
	.q /* OUT */ (acctop_37),
	.d /* IN */ (accumb_37),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q accum_from_32_to_39_inst_6
(
	.q /* OUT */ (acctop_38),
	.d /* IN */ (accumb_38),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q accum_from_32_to_39_inst_7
(
	.q /* OUT */ (acctop_39),
	.d /* IN */ (accumb_39),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (258) - accumsign : nivu
assign accums = acctop_39;

// DSP_A-5Q.NET (259) - accum : join
assign accum[0] = acctop_32;
assign accum[1] = acctop_33;
assign accum[2] = acctop_34;
assign accum[3] = acctop_35;
assign accum[4] = acctop_36;
assign accum[5] = acctop_37;
assign accum[6] = acctop_38;
assign accum[7] = acctop_39;
assign accum[8] = accums;
assign accum[9] = accums;
assign accum[10] = accums;
assign accum[11] = accums;
assign accum[12] = accums;
assign accum[13] = accums;
assign accum[14] = accums;
assign accum[15] = accums;
assign accum[16] = accums;
assign accum[17] = accums;
assign accum[18] = accums;
assign accum[19] = accums;
assign accum[20] = accums;
assign accum[21] = accums;
assign accum[22] = accums;
assign accum[23] = accums;
assign accum[24] = accums;
assign accum[25] = accums;
assign accum[26] = accums;
assign accum[27] = accums;
assign accum[28] = accums;
assign accum[29] = accums;
assign accum[30] = accums;
assign accum[31] = accums;

// DSP_A-5Q.NET (267) - accumrd : ts
assign gpu_data_out[0] = accum[0];
assign gpu_data_oe[0] = accumrd;
assign gpu_data_out[1] = accum[1];
assign gpu_data_oe[1] = accumrd;
assign gpu_data_out[2] = accum[2];
assign gpu_data_oe[2] = accumrd;
assign gpu_data_out[3] = accum[3];
assign gpu_data_oe[3] = accumrd;
assign gpu_data_out[4] = accum[4];
assign gpu_data_oe[4] = accumrd;
assign gpu_data_out[5] = accum[5];
assign gpu_data_oe[5] = accumrd;
assign gpu_data_out[6] = accum[6];
assign gpu_data_oe[6] = accumrd;
assign gpu_data_out[7] = accum[7];
assign gpu_data_oe[7] = accumrd;
assign gpu_data_out[8] = accum[8];
assign gpu_data_oe[8] = accumrd;
assign gpu_data_out[9] = accum[9];
assign gpu_data_oe[9] = accumrd;
assign gpu_data_out[10] = accum[10];
assign gpu_data_oe[10] = accumrd;
assign gpu_data_out[11] = accum[11];
assign gpu_data_oe[11] = accumrd;
assign gpu_data_out[12] = accum[12];
assign gpu_data_oe[12] = accumrd;
assign gpu_data_out[13] = accum[13];
assign gpu_data_oe[13] = accumrd;
assign gpu_data_out[14] = accum[14];
assign gpu_data_oe[14] = accumrd;
assign gpu_data_out[15] = accum[15];
assign gpu_data_oe[15] = accumrd;
assign gpu_data_out[16] = accum[16];
assign gpu_data_oe[16] = accumrd;
assign gpu_data_out[17] = accum[17];
assign gpu_data_oe[17] = accumrd;
assign gpu_data_out[18] = accum[18];
assign gpu_data_oe[18] = accumrd;
assign gpu_data_out[19] = accum[19];
assign gpu_data_oe[19] = accumrd;
assign gpu_data_out[20] = accum[20];
assign gpu_data_oe[20] = accumrd;
assign gpu_data_out[21] = accum[21];
assign gpu_data_oe[21] = accumrd;
assign gpu_data_out[22] = accum[22];
assign gpu_data_oe[22] = accumrd;
assign gpu_data_out[23] = accum[23];
assign gpu_data_oe[23] = accumrd;
assign gpu_data_out[24] = accum[24];
assign gpu_data_oe[24] = accumrd;
assign gpu_data_out[25] = accum[25];
assign gpu_data_oe[25] = accumrd;
assign gpu_data_out[26] = accum[26];
assign gpu_data_oe[26] = accumrd;
assign gpu_data_out[27] = accum[27];
assign gpu_data_oe[27] = accumrd;
assign gpu_data_out[28] = accum[28];
assign gpu_data_oe[28] = accumrd;
assign gpu_data_out[29] = accum[29];
assign gpu_data_oe[29] = accumrd;
assign gpu_data_out[30] = accum[30];
assign gpu_data_oe[30] = accumrd;
assign gpu_data_out[31] = accum[31];
assign gpu_data_oe[31] = accumrd;

// DSP_A-5Q.NET (271) - brl : brlshift
j_brlshift brl_inst
(
	.brlq /* OUT */ ({brlq[0],brlq[1],brlq[2],brlq[3],brlq[4],brlq[5],brlq[6],brlq[7],brlq[8],brlq[9],brlq[10],brlq[11],brlq[12],brlq[13],brlq[14],brlq[15],brlq[16],brlq[17],brlq[18],brlq[19],brlq[20],brlq[21],brlq[22],brlq[23],brlq[24],brlq[25],brlq[26],brlq[27],brlq[28],brlq[29],brlq[30],brlq[31]}),
	.brl_carry /* OUT */ (brl_carry),
	.brlmux_0 /* IN */ (brlmuxp_0),
	.brlmux_1 /* IN */ (brlmuxp_1),
	.srcdp /* IN */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.brld /* IN */ ({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]})
);

// DSP_A-5Q.NET (276) - saturate : saturate
j_saturate saturate_inst
(
	.q /* OUT */ ({satval[0],satval[1],satval[2],satval[3],satval[4],satval[5],satval[6],satval[7],satval[8],satval[9],satval[10],satval[11],satval[12],satval[13],satval[14],satval[15],satval[16],satval[17],satval[18],satval[19],satval[20],satval[21],satval[22],satval[23],satval[24],satval[25],satval[26],satval[27],satval[28],satval[29],satval[30],satval[31]}),
	.d /* IN */ ({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]}),
	.satszp /* IN */ (satszp),
	.accum_32 /* IN */ (acctop_32),
	.accum_33 /* IN */ (acctop_33),
	.accum_34 /* IN */ (acctop_34),
	.accum_35 /* IN */ (acctop_35),
	.accum_36 /* IN */ (acctop_36),
	.accum_37 /* IN */ (acctop_37),
	.accum_38 /* IN */ (acctop_38),
	.accum_39 /* IN */ (acctop_39)
);

// DSP_A-5Q.NET (281) - modulo[0-31] : fdsync
j_fdsync modulo_from_0_to_31_inst_0
(
	.q /* OUT */ (modulo_0),
	.d /* IN */ (gpu_din[0]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_1
(
	.q /* OUT */ (modulo_1),
	.d /* IN */ (gpu_din[1]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_2
(
	.q /* OUT */ (modulo_2),
	.d /* IN */ (gpu_din[2]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_3
(
	.q /* OUT */ (modulo_3),
	.d /* IN */ (gpu_din[3]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_4
(
	.q /* OUT */ (modulo_4),
	.d /* IN */ (gpu_din[4]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_5
(
	.q /* OUT */ (modulo_5),
	.d /* IN */ (gpu_din[5]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_6
(
	.q /* OUT */ (modulo_6),
	.d /* IN */ (gpu_din[6]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_7
(
	.q /* OUT */ (modulo_7),
	.d /* IN */ (gpu_din[7]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_8
(
	.q /* OUT */ (modulo_8),
	.d /* IN */ (gpu_din[8]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_9
(
	.q /* OUT */ (modulo_9),
	.d /* IN */ (gpu_din[9]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_10
(
	.q /* OUT */ (modulo_10),
	.d /* IN */ (gpu_din[10]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_11
(
	.q /* OUT */ (modulo_11),
	.d /* IN */ (gpu_din[11]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_12
(
	.q /* OUT */ (modulo_12),
	.d /* IN */ (gpu_din[12]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_13
(
	.q /* OUT */ (modulo_13),
	.d /* IN */ (gpu_din[13]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_14
(
	.q /* OUT */ (modulo_14),
	.d /* IN */ (gpu_din[14]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_15
(
	.q /* OUT */ (modulo_15),
	.d /* IN */ (gpu_din[15]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_16
(
	.q /* OUT */ (modulo_16),
	.d /* IN */ (gpu_din[16]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_17
(
	.q /* OUT */ (modulo_17),
	.d /* IN */ (gpu_din[17]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_18
(
	.q /* OUT */ (modulo_18),
	.d /* IN */ (gpu_din[18]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_19
(
	.q /* OUT */ (modulo_19),
	.d /* IN */ (gpu_din[19]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_20
(
	.q /* OUT */ (modulo_20),
	.d /* IN */ (gpu_din[20]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_21
(
	.q /* OUT */ (modulo_21),
	.d /* IN */ (gpu_din[21]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_22
(
	.q /* OUT */ (modulo_22),
	.d /* IN */ (gpu_din[22]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_23
(
	.q /* OUT */ (modulo_23),
	.d /* IN */ (gpu_din[23]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_24
(
	.q /* OUT */ (modulo_24),
	.d /* IN */ (gpu_din[24]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_25
(
	.q /* OUT */ (modulo_25),
	.d /* IN */ (gpu_din[25]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_26
(
	.q /* OUT */ (modulo_26),
	.d /* IN */ (gpu_din[26]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_27
(
	.q /* OUT */ (modulo_27),
	.d /* IN */ (gpu_din[27]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_28
(
	.q /* OUT */ (modulo_28),
	.d /* IN */ (gpu_din[28]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_29
(
	.q /* OUT */ (modulo_29),
	.d /* IN */ (gpu_din[29]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_30
(
	.q /* OUT */ (modulo_30),
	.d /* IN */ (gpu_din[30]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync modulo_from_0_to_31_inst_31
(
	.q /* OUT */ (modulo_31),
	.d /* IN */ (gpu_din[31]),
	.ld /* IN */ (modulowr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (283) - modalu[0-31] : mx2
assign modalu_0 = (modulo_0) ? dstdp[0] : aluq[0];
assign modalu_1 = (modulo_1) ? dstdp[1] : aluq[1];
assign modalu_2 = (modulo_2) ? dstdp[2] : aluq[2];
assign modalu_3 = (modulo_3) ? dstdp[3] : aluq[3];
assign modalu_4 = (modulo_4) ? dstdp[4] : aluq[4];
assign modalu_5 = (modulo_5) ? dstdp[5] : aluq[5];
assign modalu_6 = (modulo_6) ? dstdp[6] : aluq[6];
assign modalu_7 = (modulo_7) ? dstdp[7] : aluq[7];
assign modalu_8 = (modulo_8) ? dstdp[8] : aluq[8];
assign modalu_9 = (modulo_9) ? dstdp[9] : aluq[9];
assign modalu_10 = (modulo_10) ? dstdp[10] : aluq[10];
assign modalu_11 = (modulo_11) ? dstdp[11] : aluq[11];
assign modalu_12 = (modulo_12) ? dstdp[12] : aluq[12];
assign modalu_13 = (modulo_13) ? dstdp[13] : aluq[13];
assign modalu_14 = (modulo_14) ? dstdp[14] : aluq[14];
assign modalu_15 = (modulo_15) ? dstdp[15] : aluq[15];
assign modalu_16 = (modulo_16) ? dstdp[16] : aluq[16];
assign modalu_17 = (modulo_17) ? dstdp[17] : aluq[17];
assign modalu_18 = (modulo_18) ? dstdp[18] : aluq[18];
assign modalu_19 = (modulo_19) ? dstdp[19] : aluq[19];
assign modalu_20 = (modulo_20) ? dstdp[20] : aluq[20];
assign modalu_21 = (modulo_21) ? dstdp[21] : aluq[21];
assign modalu_22 = (modulo_22) ? dstdp[22] : aluq[22];
assign modalu_23 = (modulo_23) ? dstdp[23] : aluq[23];
assign modalu_24 = (modulo_24) ? dstdp[24] : aluq[24];
assign modalu_25 = (modulo_25) ? dstdp[25] : aluq[25];
assign modalu_26 = (modulo_26) ? dstdp[26] : aluq[26];
assign modalu_27 = (modulo_27) ? dstdp[27] : aluq[27];
assign modalu_28 = (modulo_28) ? dstdp[28] : aluq[28];
assign modalu_29 = (modulo_29) ? dstdp[29] : aluq[29];
assign modalu_30 = (modulo_30) ? dstdp[30] : aluq[30];
assign modalu_31 = (modulo_31) ? dstdp[31] : aluq[31];

// DSP_A-5Q.NET (285) - modalu : join
assign modalu[0] = modalu_0;
assign modalu[1] = modalu_1;
assign modalu[2] = modalu_2;
assign modalu[3] = modalu_3;
assign modalu[4] = modalu_4;
assign modalu[5] = modalu_5;
assign modalu[6] = modalu_6;
assign modalu[7] = modalu_7;
assign modalu[8] = modalu_8;
assign modalu[9] = modalu_9;
assign modalu[10] = modalu_10;
assign modalu[11] = modalu_11;
assign modalu[12] = modalu_12;
assign modalu[13] = modalu_13;
assign modalu[14] = modalu_14;
assign modalu[15] = modalu_15;
assign modalu[16] = modalu_16;
assign modalu[17] = modalu_17;
assign modalu[18] = modalu_18;
assign modalu[19] = modalu_19;
assign modalu[20] = modalu_20;
assign modalu[21] = modalu_21;
assign modalu[22] = modalu_22;
assign modalu[23] = modalu_23;
assign modalu[24] = modalu_24;
assign modalu[25] = modalu_25;
assign modalu[26] = modalu_26;
assign modalu[27] = modalu_27;
assign modalu[28] = modalu_28;
assign modalu[29] = modalu_29;
assign modalu[30] = modalu_30;
assign modalu[31] = modalu_31;

// DSP_A-5Q.NET (289) - mirror[0] : join
assign mirror_0 = dstdp[31];

// DSP_A-5Q.NET (290) - mirror[1] : join
assign mirror_1 = dstdp[30];

// DSP_A-5Q.NET (291) - mirror[2] : join
assign mirror_2 = dstdp[29];

// DSP_A-5Q.NET (292) - mirror[3] : join
assign mirror_3 = dstdp[28];

// DSP_A-5Q.NET (293) - mirror[4] : join
assign mirror_4 = dstdp[27];

// DSP_A-5Q.NET (294) - mirror[5] : join
assign mirror_5 = dstdp[26];

// DSP_A-5Q.NET (295) - mirror[6] : join
assign mirror_6 = dstdp[25];

// DSP_A-5Q.NET (296) - mirror[7] : join
assign mirror_7 = dstdp[24];

// DSP_A-5Q.NET (297) - mirror[8] : join
assign mirror_8 = dstdp[23];

// DSP_A-5Q.NET (298) - mirror[9] : join
assign mirror_9 = dstdp[22];

// DSP_A-5Q.NET (299) - mirror[10] : join
assign mirror_10 = dstdp[21];

// DSP_A-5Q.NET (300) - mirror[11] : join
assign mirror_11 = dstdp[20];

// DSP_A-5Q.NET (301) - mirror[12] : join
assign mirror_12 = dstdp[19];

// DSP_A-5Q.NET (302) - mirror[13] : join
assign mirror_13 = dstdp[18];

// DSP_A-5Q.NET (303) - mirror[14] : join
assign mirror_14 = dstdp[17];

// DSP_A-5Q.NET (304) - mirror[15] : join
assign mirror_15 = dstdp[16];

// DSP_A-5Q.NET (305) - mirror[16] : join
assign mirror_16 = dstdp[15];

// DSP_A-5Q.NET (306) - mirror[17] : join
assign mirror_17 = dstdp[14];

// DSP_A-5Q.NET (307) - mirror[18] : join
assign mirror_18 = dstdp[13];

// DSP_A-5Q.NET (308) - mirror[19] : join
assign mirror_19 = dstdp[12];

// DSP_A-5Q.NET (309) - mirror[20] : join
assign mirror_20 = dstdp[11];

// DSP_A-5Q.NET (310) - mirror[21] : join
assign mirror_21 = dstdp[10];

// DSP_A-5Q.NET (311) - mirror[22] : join
assign mirror_22 = dstdp[9];

// DSP_A-5Q.NET (312) - mirror[23] : join
assign mirror_23 = dstdp[8];

// DSP_A-5Q.NET (313) - mirror[24] : join
assign mirror_24 = dstdp[7];

// DSP_A-5Q.NET (314) - mirror[25] : join
assign mirror_25 = dstdp[6];

// DSP_A-5Q.NET (315) - mirror[26] : join
assign mirror_26 = dstdp[5];

// DSP_A-5Q.NET (316) - mirror[27] : join
assign mirror_27 = dstdp[4];

// DSP_A-5Q.NET (317) - mirror[28] : join
assign mirror_28 = dstdp[3];

// DSP_A-5Q.NET (318) - mirror[29] : join
assign mirror_29 = dstdp[2];

// DSP_A-5Q.NET (319) - mirror[30] : join
assign mirror_30 = dstdp[1];

// DSP_A-5Q.NET (320) - mirror[31] : join
assign mirror_31 = dstdp[0];

// DSP_A-5Q.NET (321) - mirror : join
assign mirror[0] = mirror_0;
assign mirror[1] = mirror_1;
assign mirror[2] = mirror_2;
assign mirror[3] = mirror_3;
assign mirror[4] = mirror_4;
assign mirror[5] = mirror_5;
assign mirror[6] = mirror_6;
assign mirror[7] = mirror_7;
assign mirror[8] = mirror_8;
assign mirror[9] = mirror_9;
assign mirror[10] = mirror_10;
assign mirror[11] = mirror_11;
assign mirror[12] = mirror_12;
assign mirror[13] = mirror_13;
assign mirror[14] = mirror_14;
assign mirror[15] = mirror_15;
assign mirror[16] = mirror_16;
assign mirror[17] = mirror_17;
assign mirror[18] = mirror_18;
assign mirror[19] = mirror_19;
assign mirror[20] = mirror_20;
assign mirror[21] = mirror_21;
assign mirror[22] = mirror_22;
assign mirror[23] = mirror_23;
assign mirror[24] = mirror_24;
assign mirror[25] = mirror_25;
assign mirror[26] = mirror_26;
assign mirror[27] = mirror_27;
assign mirror[28] = mirror_28;
assign mirror[29] = mirror_29;
assign mirror[30] = mirror_30;
assign mirror[31] = mirror_31;

// DSP_A-5Q.NET (325) - resmux : mx8p
mx8 resmux_inst_0
(
	.z /* OUT */ (resd[0]),
	.a0 /* IN */ (aluq[0]),
	.a1 /* IN */ (brlq[0]),
	.a2 /* IN */ (satval[0]),
	.a3 /* IN */ (mulq[0]),
	.a4 /* IN */ (aluq[0]),
	.a5 /* IN */ (normi[0]),
	.a6 /* IN */ (modalu[0]),
	.a7 /* IN */ (mirror[0]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_1
(
	.z /* OUT */ (resd[1]),
	.a0 /* IN */ (aluq[1]),
	.a1 /* IN */ (brlq[1]),
	.a2 /* IN */ (satval[1]),
	.a3 /* IN */ (mulq[1]),
	.a4 /* IN */ (aluq[1]),
	.a5 /* IN */ (normi[1]),
	.a6 /* IN */ (modalu[1]),
	.a7 /* IN */ (mirror[1]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_2
(
	.z /* OUT */ (resd[2]),
	.a0 /* IN */ (aluq[2]),
	.a1 /* IN */ (brlq[2]),
	.a2 /* IN */ (satval[2]),
	.a3 /* IN */ (mulq[2]),
	.a4 /* IN */ (aluq[2]),
	.a5 /* IN */ (normi[2]),
	.a6 /* IN */ (modalu[2]),
	.a7 /* IN */ (mirror[2]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_3
(
	.z /* OUT */ (resd[3]),
	.a0 /* IN */ (aluq[3]),
	.a1 /* IN */ (brlq[3]),
	.a2 /* IN */ (satval[3]),
	.a3 /* IN */ (mulq[3]),
	.a4 /* IN */ (aluq[3]),
	.a5 /* IN */ (normi[3]),
	.a6 /* IN */ (modalu[3]),
	.a7 /* IN */ (mirror[3]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_4
(
	.z /* OUT */ (resd[4]),
	.a0 /* IN */ (aluq[4]),
	.a1 /* IN */ (brlq[4]),
	.a2 /* IN */ (satval[4]),
	.a3 /* IN */ (mulq[4]),
	.a4 /* IN */ (aluq[4]),
	.a5 /* IN */ (normi[4]),
	.a6 /* IN */ (modalu[4]),
	.a7 /* IN */ (mirror[4]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_5
(
	.z /* OUT */ (resd[5]),
	.a0 /* IN */ (aluq[5]),
	.a1 /* IN */ (brlq[5]),
	.a2 /* IN */ (satval[5]),
	.a3 /* IN */ (mulq[5]),
	.a4 /* IN */ (aluq[5]),
	.a5 /* IN */ (normi[5]),
	.a6 /* IN */ (modalu[5]),
	.a7 /* IN */ (mirror[5]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_6
(
	.z /* OUT */ (resd[6]),
	.a0 /* IN */ (aluq[6]),
	.a1 /* IN */ (brlq[6]),
	.a2 /* IN */ (satval[6]),
	.a3 /* IN */ (mulq[6]),
	.a4 /* IN */ (aluq[6]),
	.a5 /* IN */ (normi[6]),
	.a6 /* IN */ (modalu[6]),
	.a7 /* IN */ (mirror[6]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_7
(
	.z /* OUT */ (resd[7]),
	.a0 /* IN */ (aluq[7]),
	.a1 /* IN */ (brlq[7]),
	.a2 /* IN */ (satval[7]),
	.a3 /* IN */ (mulq[7]),
	.a4 /* IN */ (aluq[7]),
	.a5 /* IN */ (normi[7]),
	.a6 /* IN */ (modalu[7]),
	.a7 /* IN */ (mirror[7]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_8
(
	.z /* OUT */ (resd[8]),
	.a0 /* IN */ (aluq[8]),
	.a1 /* IN */ (brlq[8]),
	.a2 /* IN */ (satval[8]),
	.a3 /* IN */ (mulq[8]),
	.a4 /* IN */ (aluq[8]),
	.a5 /* IN */ (normi[8]),
	.a6 /* IN */ (modalu[8]),
	.a7 /* IN */ (mirror[8]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_9
(
	.z /* OUT */ (resd[9]),
	.a0 /* IN */ (aluq[9]),
	.a1 /* IN */ (brlq[9]),
	.a2 /* IN */ (satval[9]),
	.a3 /* IN */ (mulq[9]),
	.a4 /* IN */ (aluq[9]),
	.a5 /* IN */ (normi[9]),
	.a6 /* IN */ (modalu[9]),
	.a7 /* IN */ (mirror[9]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_10
(
	.z /* OUT */ (resd[10]),
	.a0 /* IN */ (aluq[10]),
	.a1 /* IN */ (brlq[10]),
	.a2 /* IN */ (satval[10]),
	.a3 /* IN */ (mulq[10]),
	.a4 /* IN */ (aluq[10]),
	.a5 /* IN */ (normi[10]),
	.a6 /* IN */ (modalu[10]),
	.a7 /* IN */ (mirror[10]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_11
(
	.z /* OUT */ (resd[11]),
	.a0 /* IN */ (aluq[11]),
	.a1 /* IN */ (brlq[11]),
	.a2 /* IN */ (satval[11]),
	.a3 /* IN */ (mulq[11]),
	.a4 /* IN */ (aluq[11]),
	.a5 /* IN */ (normi[11]),
	.a6 /* IN */ (modalu[11]),
	.a7 /* IN */ (mirror[11]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_12
(
	.z /* OUT */ (resd[12]),
	.a0 /* IN */ (aluq[12]),
	.a1 /* IN */ (brlq[12]),
	.a2 /* IN */ (satval[12]),
	.a3 /* IN */ (mulq[12]),
	.a4 /* IN */ (aluq[12]),
	.a5 /* IN */ (normi[12]),
	.a6 /* IN */ (modalu[12]),
	.a7 /* IN */ (mirror[12]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_13
(
	.z /* OUT */ (resd[13]),
	.a0 /* IN */ (aluq[13]),
	.a1 /* IN */ (brlq[13]),
	.a2 /* IN */ (satval[13]),
	.a3 /* IN */ (mulq[13]),
	.a4 /* IN */ (aluq[13]),
	.a5 /* IN */ (normi[13]),
	.a6 /* IN */ (modalu[13]),
	.a7 /* IN */ (mirror[13]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_14
(
	.z /* OUT */ (resd[14]),
	.a0 /* IN */ (aluq[14]),
	.a1 /* IN */ (brlq[14]),
	.a2 /* IN */ (satval[14]),
	.a3 /* IN */ (mulq[14]),
	.a4 /* IN */ (aluq[14]),
	.a5 /* IN */ (normi[14]),
	.a6 /* IN */ (modalu[14]),
	.a7 /* IN */ (mirror[14]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_15
(
	.z /* OUT */ (resd[15]),
	.a0 /* IN */ (aluq[15]),
	.a1 /* IN */ (brlq[15]),
	.a2 /* IN */ (satval[15]),
	.a3 /* IN */ (mulq[15]),
	.a4 /* IN */ (aluq[15]),
	.a5 /* IN */ (normi[15]),
	.a6 /* IN */ (modalu[15]),
	.a7 /* IN */ (mirror[15]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_16
(
	.z /* OUT */ (resd[16]),
	.a0 /* IN */ (aluq[16]),
	.a1 /* IN */ (brlq[16]),
	.a2 /* IN */ (satval[16]),
	.a3 /* IN */ (mulq[16]),
	.a4 /* IN */ (aluq[16]),
	.a5 /* IN */ (normi[16]),
	.a6 /* IN */ (modalu[16]),
	.a7 /* IN */ (mirror[16]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_17
(
	.z /* OUT */ (resd[17]),
	.a0 /* IN */ (aluq[17]),
	.a1 /* IN */ (brlq[17]),
	.a2 /* IN */ (satval[17]),
	.a3 /* IN */ (mulq[17]),
	.a4 /* IN */ (aluq[17]),
	.a5 /* IN */ (normi[17]),
	.a6 /* IN */ (modalu[17]),
	.a7 /* IN */ (mirror[17]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_18
(
	.z /* OUT */ (resd[18]),
	.a0 /* IN */ (aluq[18]),
	.a1 /* IN */ (brlq[18]),
	.a2 /* IN */ (satval[18]),
	.a3 /* IN */ (mulq[18]),
	.a4 /* IN */ (aluq[18]),
	.a5 /* IN */ (normi[18]),
	.a6 /* IN */ (modalu[18]),
	.a7 /* IN */ (mirror[18]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_19
(
	.z /* OUT */ (resd[19]),
	.a0 /* IN */ (aluq[19]),
	.a1 /* IN */ (brlq[19]),
	.a2 /* IN */ (satval[19]),
	.a3 /* IN */ (mulq[19]),
	.a4 /* IN */ (aluq[19]),
	.a5 /* IN */ (normi[19]),
	.a6 /* IN */ (modalu[19]),
	.a7 /* IN */ (mirror[19]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_20
(
	.z /* OUT */ (resd[20]),
	.a0 /* IN */ (aluq[20]),
	.a1 /* IN */ (brlq[20]),
	.a2 /* IN */ (satval[20]),
	.a3 /* IN */ (mulq[20]),
	.a4 /* IN */ (aluq[20]),
	.a5 /* IN */ (normi[20]),
	.a6 /* IN */ (modalu[20]),
	.a7 /* IN */ (mirror[20]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_21
(
	.z /* OUT */ (resd[21]),
	.a0 /* IN */ (aluq[21]),
	.a1 /* IN */ (brlq[21]),
	.a2 /* IN */ (satval[21]),
	.a3 /* IN */ (mulq[21]),
	.a4 /* IN */ (aluq[21]),
	.a5 /* IN */ (normi[21]),
	.a6 /* IN */ (modalu[21]),
	.a7 /* IN */ (mirror[21]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_22
(
	.z /* OUT */ (resd[22]),
	.a0 /* IN */ (aluq[22]),
	.a1 /* IN */ (brlq[22]),
	.a2 /* IN */ (satval[22]),
	.a3 /* IN */ (mulq[22]),
	.a4 /* IN */ (aluq[22]),
	.a5 /* IN */ (normi[22]),
	.a6 /* IN */ (modalu[22]),
	.a7 /* IN */ (mirror[22]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_23
(
	.z /* OUT */ (resd[23]),
	.a0 /* IN */ (aluq[23]),
	.a1 /* IN */ (brlq[23]),
	.a2 /* IN */ (satval[23]),
	.a3 /* IN */ (mulq[23]),
	.a4 /* IN */ (aluq[23]),
	.a5 /* IN */ (normi[23]),
	.a6 /* IN */ (modalu[23]),
	.a7 /* IN */ (mirror[23]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_24
(
	.z /* OUT */ (resd[24]),
	.a0 /* IN */ (aluq[24]),
	.a1 /* IN */ (brlq[24]),
	.a2 /* IN */ (satval[24]),
	.a3 /* IN */ (mulq[24]),
	.a4 /* IN */ (aluq[24]),
	.a5 /* IN */ (normi[24]),
	.a6 /* IN */ (modalu[24]),
	.a7 /* IN */ (mirror[24]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_25
(
	.z /* OUT */ (resd[25]),
	.a0 /* IN */ (aluq[25]),
	.a1 /* IN */ (brlq[25]),
	.a2 /* IN */ (satval[25]),
	.a3 /* IN */ (mulq[25]),
	.a4 /* IN */ (aluq[25]),
	.a5 /* IN */ (normi[25]),
	.a6 /* IN */ (modalu[25]),
	.a7 /* IN */ (mirror[25]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_26
(
	.z /* OUT */ (resd[26]),
	.a0 /* IN */ (aluq[26]),
	.a1 /* IN */ (brlq[26]),
	.a2 /* IN */ (satval[26]),
	.a3 /* IN */ (mulq[26]),
	.a4 /* IN */ (aluq[26]),
	.a5 /* IN */ (normi[26]),
	.a6 /* IN */ (modalu[26]),
	.a7 /* IN */ (mirror[26]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_27
(
	.z /* OUT */ (resd[27]),
	.a0 /* IN */ (aluq[27]),
	.a1 /* IN */ (brlq[27]),
	.a2 /* IN */ (satval[27]),
	.a3 /* IN */ (mulq[27]),
	.a4 /* IN */ (aluq[27]),
	.a5 /* IN */ (normi[27]),
	.a6 /* IN */ (modalu[27]),
	.a7 /* IN */ (mirror[27]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_28
(
	.z /* OUT */ (resd[28]),
	.a0 /* IN */ (aluq[28]),
	.a1 /* IN */ (brlq[28]),
	.a2 /* IN */ (satval[28]),
	.a3 /* IN */ (mulq[28]),
	.a4 /* IN */ (aluq[28]),
	.a5 /* IN */ (normi[28]),
	.a6 /* IN */ (modalu[28]),
	.a7 /* IN */ (mirror[28]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_29
(
	.z /* OUT */ (resd[29]),
	.a0 /* IN */ (aluq[29]),
	.a1 /* IN */ (brlq[29]),
	.a2 /* IN */ (satval[29]),
	.a3 /* IN */ (mulq[29]),
	.a4 /* IN */ (aluq[29]),
	.a5 /* IN */ (normi[29]),
	.a6 /* IN */ (modalu[29]),
	.a7 /* IN */ (mirror[29]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_30
(
	.z /* OUT */ (resd[30]),
	.a0 /* IN */ (aluq[30]),
	.a1 /* IN */ (brlq[30]),
	.a2 /* IN */ (satval[30]),
	.a3 /* IN */ (mulq[30]),
	.a4 /* IN */ (aluq[30]),
	.a5 /* IN */ (normi[30]),
	.a6 /* IN */ (modalu[30]),
	.a7 /* IN */ (mirror[30]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);
mx8 resmux_inst_31
(
	.z /* OUT */ (resd[31]),
	.a0 /* IN */ (aluq[31]),
	.a1 /* IN */ (brlq[31]),
	.a2 /* IN */ (satval[31]),
	.a3 /* IN */ (mulq[31]),
	.a4 /* IN */ (aluq[31]),
	.a5 /* IN */ (normi[31]),
	.a6 /* IN */ (modalu[31]),
	.a7 /* IN */ (mirror[31]),
	.s0 /* IN */ (resselp_0),
	.s1 /* IN */ (resselp_1),
	.s2 /* IN */ (resselp_2)
);

// DSP_A-5Q.NET (331) - resldt : or2u
assign resldt = resldp | macop_pp;

// DSP_A-5Q.NET (332) - resreg : fdsync32
j_fdsync32 resreg_inst
(
	.q /* OUT */ ({result_b0_obuf,result_b1_obuf,result_b2_obuf,result_b3_obuf,result_b4_obuf,result_b5_obuf,result_b6_obuf,result_b7_obuf,result_b8_obuf,result_b9_obuf,result_b10_obuf,result_b11_obuf,result_b12_obuf,result_b13_obuf,result_b14_obuf,result_b15_obuf,result_b16_obuf,result_b17_obuf,result_b18_obuf,result_b19_obuf,result_b20_obuf,result_b21_obuf,result_b22_obuf,result_b23_obuf,result_b24_obuf,result_b25_obuf,result_b26_obuf,result_b27_obuf,result_b28_obuf,result_b29_obuf,result_b30_obuf,result_b31_obuf}),
	.d /* IN */ ({resd[0],resd[1],resd[2],resd[3],resd[4],resd[5],resd[6],resd[7],resd[8],resd[9],resd[10],resd[11],resd[12],resd[13],resd[14],resd[15],resd[16],resd[17],resd[18],resd[19],resd[20],resd[21],resd[22],resd[23],resd[24],resd[25],resd[26],resd[27],resd[28],resd[29],resd[30],resd[31]}),
	.ld /* IN */ (resldt),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (337) - zerodet : nr32
assign zerodet = ~(resd[0] | resd[1] | resd[2] | resd[3] | resd[4] | resd[5] | resd[6] | resd[7] | resd[8] | resd[9] | resd[10] | resd[11] | resd[12] | resd[13] | resd[14] | resd[15] | resd[16] | resd[17] | resd[18] | resd[19] | resd[20] | resd[21] | resd[22] | resd[23] | resd[24] | resd[25] | resd[26] | resd[27] | resd[28] | resd[29] | resd[30] | resd[31]);

// DSP_A-5Q.NET (338) - zfi : mx4
mx4 zfi_inst
(
	.z /* OUT */ (zfi),
	.a0 /* IN */ (zero_flag_obuf),
	.a1 /* IN */ (zerodet),
	.a2 /* IN */ (gpu_din[0]),
	.a3 /* IN */ (gpu_din[0]),
	.s0 /* IN */ (flagldp),
	.s1 /* IN */ (flagwr)
);

// DSP_A-5Q.NET (340) - zeroflag : fd2q
fd2q zeroflag_inst
(
	.q /* OUT */ (zero_flag_obuf),
	.d /* IN */ (zfi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (348) - cfisel0 : aor1
assign cfisel_0 = (flagldp & resselp_n_0) | flagwr;

// DSP_A-5Q.NET (349) - cfisel1 : aor1
assign cfisel_1 = (flagldp & resselp_0) | flagwr;

// DSP_A-5Q.NET (350) - cfi : mx4
mx4 cfi_inst
(
	.z /* OUT */ (cfi),
	.a0 /* IN */ (carry_flag_obuf),
	.a1 /* IN */ (alu_co),
	.a2 /* IN */ (brl_carry),
	.a3 /* IN */ (gpu_din[1]),
	.s0 /* IN */ (cfisel_0),
	.s1 /* IN */ (cfisel_1)
);

// DSP_A-5Q.NET (352) - carryflag : fd2q
fd2q carryflag_inst
(
	.q /* OUT */ (carry_flag_obuf),
	.d /* IN */ (cfi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (355) - nfi : mx4
mx4 nfi_inst
(
	.z /* OUT */ (nfi),
	.a0 /* IN */ (nega_flag_obuf),
	.a1 /* IN */ (resd[31]),
	.a2 /* IN */ (gpu_din[2]),
	.a3 /* IN */ (gpu_din[2]),
	.s0 /* IN */ (flagldp),
	.s1 /* IN */ (flagwr)
);

// DSP_A-5Q.NET (357) - negaflag : fd2q
fd2q negaflag_inst
(
	.q /* OUT */ (nega_flag_obuf),
	.d /* IN */ (nfi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_A-5Q.NET (361) - flagrd[0] : ts
assign gpu_dout_0_out = zero_flag_obuf;
assign gpu_dout_0_oe = flagrd;

// DSP_A-5Q.NET (362) - flagrd[1] : ts
assign gpu_dout_1_out = carry_flag_obuf;
assign gpu_dout_1_oe = flagrd;

// DSP_A-5Q.NET (363) - flagrd[2] : ts
assign gpu_dout_2_out = nega_flag_obuf;
assign gpu_dout_2_oe = flagrd;
endmodule
/* verilator lint_on LITENDIAN */
