/* verilator lint_off LITENDIAN */
`include "defs.v"

module addrgen
(
	output [0:23] address,
	output pixa_0,
	output pixa_1,
	output pixa_2,
	input [0:15] a1_x,
	input [0:15] a1_y,
	input [0:20] a1_base,
	input a1_pitch_0,
	input a1_pitch_1,
	input a1_pixsize_0,
	input a1_pixsize_1,
	input a1_pixsize_2,
	input a1_width_0,
	input a1_width_1,
	input a1_width_2,
	input a1_width_3,
	input a1_width_4,
	input a1_width_5,
	input a1_zoffset_0,
	input a1_zoffset_1,
	input [0:15] a2_x,
	input [0:15] a2_y,
	input [0:20] a2_base,
	input a2_pitch_0,
	input a2_pitch_1,
	input a2_pixsize_0,
	input a2_pixsize_1,
	input a2_pixsize_2,
	input a2_width_0,
	input a2_width_1,
	input a2_width_2,
	input a2_width_3,
	input a2_width_4,
	input a2_width_5,
	input a2_zoffset_0,
	input a2_zoffset_1,
	input apipe,
	input clk,
	input gena2,
	input zaddr,
	input sys_clk // Generated
);
wire [0:15] pa_b;
wire [0:23] pa_a;
wire [0:24] pa;
wire [0:20] base;
wire [0:26] pixadr;
wire [0:23] addrgen;
wire [0:23] addressi;
wire one;
wire zero;
wire zerob;
wire zeroc;
wire gena2b_0;
wire gena2b_1;
wire x_0;
wire x_1;
wire x_2;
wire x_3;
wire x_4;
wire x_5;
wire x_6;
wire x_7;
wire x_8;
wire x_9;
wire x_10;
wire x_11;
wire x_12;
wire x_13;
wire x_14;
wire x_15;
wire y_0;
wire y_1;
wire y_2;
wire y_3;
wire y_4;
wire y_5;
wire y_6;
wire y_7;
wire y_8;
wire y_9;
wire y_10;
wire y_11;
wire width_0;
wire width_1;
wire width_2;
wire width_3;
wire width_4;
wire width_5;
wire width_n_4;
wire pixsize_0;
wire pixsize_1;
wire pixsize_2;
wire pixsizeb_0;
wire pitch_0;
wire pitch_1;
wire pitch_n_0;
wire pitch_n_1;
wire zoffset_0;
wire zoffset_1;
wire ym1_0;
wire ym1_1;
wire ym1_2;
wire ym1_3;
wire ym1_4;
wire ym1_5;
wire ym1_6;
wire ym1_7;
wire ym1_8;
wire ym1_9;
wire ym1_10;
wire ym1_11;
wire ym2_0;
wire ym2_1;
wire ym2_2;
wire ym2_3;
wire ym2_4;
wire ym2_5;
wire ym2_6;
wire ym2_7;
wire ym2_8;
wire ym2_9;
wire ym2_10;
wire ym2_11;
wire ytmt_0;
wire ytmt_1;
wire ytmt_2;
wire ytmt_3;
wire ytmt_4;
wire ytmt_5;
wire ytmt_6;
wire ytmt_7;
wire ytmt_8;
wire ytmt_9;
wire ytmt_10;
wire ytmt_11;
wire ytmt_12;
wire ytmt_13;
wire ytmt_14;
wire ytmt_15;
wire ytmt_16;
wire ytmt_17;
wire ytmt_18;
wire ytmt_19;
wire ytmt_20;
wire ytmt_21;
wire ytmt_22;
wire ytmt_23;
wire ytmt_24;
wire ytmt_25;
wire ytmt_26;
wire ytmt_27;
wire ytmt_28;
wire ytmt_29;
wire ytmt_30;
wire ytmt_31;
wire co_0;
wire co_1;
wire ytm_0;
wire ytm_1;
wire ytm_2;
wire ytm_3;
wire ytm_4;
wire ytm_5;
wire ytm_6;
wire ytm_7;
wire ytm_8;
wire ytm_9;
wire ytm_10;
wire ytm_11;
wire ytm_12;
wire ytm_13;
wire ytm_14;
wire lowen;
wire ya_0;
wire ya_1;
wire ya_2;
wire ya_3;
wire ya_4;
wire ya_5;
wire ya_6;
wire ya_7;
wire ya_8;
wire ya_9;
wire ya_10;
wire ya_11;
wire ya_12;
wire ya_13;
wire ya_14;
wire ya_15;
wire mid8en_n;
wire ya_16;
wire ya_17;
wire ya_18;
wire ya_19;
wire tm4en_n;
wire ya_20;
wire ya_21;
wire ya_22;
wire ya_23;
wire pa_0;
wire pa_1;
wire pa_2;
wire pa_3;
wire pa_4;
wire pa_5;
wire pa_6;
wire pa_7;
wire pa_8;
wire pa_9;
wire pa_10;
wire pa_11;
wire pa_12;
wire pa_13;
wire pa_14;
wire pa_15;
wire pa_16;
wire pa_17;
wire pa_18;
wire pa_19;
wire pa_20;
wire pa_21;
wire pa_22;
wire pa_23;
wire pa_24;
wire pacy_n_15;
wire pacy_15;
wire pacy_16;
wire pacy_17;
wire pacy_18;
wire pacy_19;
wire pacy_20;
wire pacy_21;
wire pacy_22;
wire pixa_4;
wire pixa_3;
wire pixa_5;
wire pixa_6;
wire pixa_7;
wire pixa_8;
wire pixa_9;
wire pixa_10;
wire pixa_11;
wire pixa_12;
wire pixa_13;
wire pixa_14;
wire pixa_15;
wire pixa_16;
wire pixa_17;
wire pixa_18;
wire pixa_19;
wire pixa_20;
wire pixa_21;
wire pixa_22;
wire pixa_23;
wire pixa_24;
wire pixa_25;
wire pixa_26;
wire pt_0;
wire pt_1;
wire phradr_0;
wire phradr_1;
wire phradr_2;
wire phradr_3;
wire phradr_4;
wire phradr_5;
wire phradr_6;
wire phradr_7;
wire phradr_8;
wire phradr_9;
wire phradr_10;
wire phradr_11;
wire phradr_12;
wire phradr_13;
wire phradr_14;
wire phradr_15;
wire phradr_16;
wire phradr_17;
wire phradr_18;
wire phradr_19;
wire phradr_20;
wire shupen;
wire shup_0;
wire shup_1;
wire shup_2;
wire shup_3;
wire shup_4;
wire shup_5;
wire shup_6;
wire shup_7;
wire shup_8;
wire shup_9;
wire shup_10;
wire shup_11;
wire shup_12;
wire shup_13;
wire shup_14;
wire shup_15;
wire shup_16;
wire shup_17;
wire shup_18;
wire shup_19;
wire za_0;
wire za_1;
wire addr_0;
wire adcy0;
wire addr1t;
wire adcy1a;
wire addr_1;
wire adcy1b;
wire addr2t;
wire adcy2a;
wire addr_2;
wire adcy2b;
wire addr_3;
wire addr_4;
wire addr_5;
wire addr_6;
wire addr_7;
wire addr_8;
wire addr_9;
wire addr_10;
wire addr_11;
wire addr_12;
wire addr_13;
wire addr_14;
wire addr_15;
wire addr_16;
wire addr_17;
wire addr_18;
wire addr_19;
wire addr_20;
wire unused_0;
wire unused_1;
wire unused_2;
wire unused_3;
wire unused_4;
wire unused_5;
wire unused_6;
wire unused_7;
wire unused_8;
wire unused_9;
wire unused_10;
wire unused_11;
wire unused_12;
wire unused_13;
wire unused_14;
wire unused_15;
wire apipeb;

// Output buffers
wire address_b0_obuf;
wire address_b1_obuf;
wire address_b2_obuf;
wire address_b3_obuf;
wire address_b4_obuf;
wire address_b5_obuf;
wire address_b6_obuf;
wire address_b7_obuf;
wire address_b8_obuf;
wire address_b9_obuf;
wire address_b10_obuf;
wire address_b11_obuf;
wire address_b12_obuf;
wire address_b13_obuf;
wire address_b14_obuf;
wire address_b15_obuf;
wire address_b16_obuf;
wire address_b17_obuf;
wire address_b18_obuf;
wire address_b19_obuf;
wire address_b20_obuf;
wire address_b21_obuf;
wire address_b22_obuf;
wire address_b23_obuf;
wire pixa_0_obuf;
wire pixa_1_obuf;
wire pixa_2_obuf;


// Output buffers
assign address[0] = address_b0_obuf;
assign address[1] = address_b1_obuf;
assign address[2] = address_b2_obuf;
assign address[3] = address_b3_obuf;
assign address[4] = address_b4_obuf;
assign address[5] = address_b5_obuf;
assign address[6] = address_b6_obuf;
assign address[7] = address_b7_obuf;
assign address[8] = address_b8_obuf;
assign address[9] = address_b9_obuf;
assign address[10] = address_b10_obuf;
assign address[11] = address_b11_obuf;
assign address[12] = address_b12_obuf;
assign address[13] = address_b13_obuf;
assign address[14] = address_b14_obuf;
assign address[15] = address_b15_obuf;
assign address[16] = address_b16_obuf;
assign address[17] = address_b17_obuf;
assign address[18] = address_b18_obuf;
assign address[19] = address_b19_obuf;
assign address[20] = address_b20_obuf;
assign address[21] = address_b21_obuf;
assign address[22] = address_b22_obuf;
assign address[23] = address_b23_obuf;
assign pixa_0 = pixa_0_obuf;
assign pixa_1 = pixa_1_obuf;
assign pixa_2 = pixa_2_obuf;


// ADDRGEN.NET (64) - one : tie1
assign one = 1'b1;

// ADDRGEN.NET (65) - zero : tie0
assign zero = 1'b0;

// ADDRGEN.NET (66) - zeroa : tie0
assign zerob = 1'b0;

// ADDRGEN.NET (67) - zerob : tie0
assign zeroc = 1'b0;

// ADDRGEN.NET (71) - gena2b[0-1] : nivu
assign gena2b_0 = gena2;
assign gena2b_1 = gena2;

// ADDRGEN.NET (75) - x[0-15] : mx2
assign x_0 = (gena2b_0) ? a2_x[0] : a1_x[0];
assign x_1 = (gena2b_0) ? a2_x[1] : a1_x[1];
assign x_2 = (gena2b_0) ? a2_x[2] : a1_x[2];
assign x_3 = (gena2b_0) ? a2_x[3] : a1_x[3];
assign x_4 = (gena2b_0) ? a2_x[4] : a1_x[4];
assign x_5 = (gena2b_0) ? a2_x[5] : a1_x[5];
assign x_6 = (gena2b_0) ? a2_x[6] : a1_x[6];
assign x_7 = (gena2b_0) ? a2_x[7] : a1_x[7];
assign x_8 = (gena2b_0) ? a2_x[8] : a1_x[8];
assign x_9 = (gena2b_0) ? a2_x[9] : a1_x[9];
assign x_10 = (gena2b_0) ? a2_x[10] : a1_x[10];
assign x_11 = (gena2b_0) ? a2_x[11] : a1_x[11];
assign x_12 = (gena2b_0) ? a2_x[12] : a1_x[12];
assign x_13 = (gena2b_0) ? a2_x[13] : a1_x[13];
assign x_14 = (gena2b_0) ? a2_x[14] : a1_x[14];
assign x_15 = (gena2b_0) ? a2_x[15] : a1_x[15];

// ADDRGEN.NET (78) - y[0-11] : mx2
assign y_0 = (gena2b_0) ? a2_y[0] : a1_y[0];
assign y_1 = (gena2b_0) ? a2_y[1] : a1_y[1];
assign y_2 = (gena2b_0) ? a2_y[2] : a1_y[2];
assign y_3 = (gena2b_0) ? a2_y[3] : a1_y[3];
assign y_4 = (gena2b_0) ? a2_y[4] : a1_y[4];
assign y_5 = (gena2b_0) ? a2_y[5] : a1_y[5];
assign y_6 = (gena2b_0) ? a2_y[6] : a1_y[6];
assign y_7 = (gena2b_0) ? a2_y[7] : a1_y[7];
assign y_8 = (gena2b_0) ? a2_y[8] : a1_y[8];
assign y_9 = (gena2b_0) ? a2_y[9] : a1_y[9];
assign y_10 = (gena2b_0) ? a2_y[10] : a1_y[10];
assign y_11 = (gena2b_0) ? a2_y[11] : a1_y[11];

// ADDRGEN.NET (81) - width[0-5] : mx2u
assign width_0 = (gena2b_1) ? a2_width_0 : a1_width_0;
assign width_1 = (gena2b_1) ? a2_width_1 : a1_width_1;
assign width_2 = (gena2b_1) ? a2_width_2 : a1_width_2;
assign width_3 = (gena2b_1) ? a2_width_3 : a1_width_3;
assign width_4 = (gena2b_1) ? a2_width_4 : a1_width_4;
assign width_5 = (gena2b_1) ? a2_width_5 : a1_width_5;

// ADDRGEN.NET (83) - width\[4] : iv
assign width_n_4 = ~width_4;

// ADDRGEN.NET (85) - pixsize[0-2] : mx2u
assign pixsize_0 = (gena2b_1) ? a2_pixsize_0 : a1_pixsize_0;
assign pixsize_1 = (gena2b_1) ? a2_pixsize_1 : a1_pixsize_1;
assign pixsize_2 = (gena2b_1) ? a2_pixsize_2 : a1_pixsize_2;

// ADDRGEN.NET (87) - pissizeb[0] : nivu
assign pixsizeb_0 = pixsize_0;

// ADDRGEN.NET (89) - pitch[0-1] : mx2p
assign pitch_0 = (gena2b_1) ? a2_pitch_0 : a1_pitch_0;
assign pitch_1 = (gena2b_1) ? a2_pitch_1 : a1_pitch_1;

// ADDRGEN.NET (91) - pitch\[0-1] : iv
assign pitch_n_0 = ~pitch_0;
assign pitch_n_1 = ~pitch_1;

// ADDRGEN.NET (93) - base : mx2p
assign base[0] = (gena2) ? a2_base[0] : a1_base[0];
assign base[1] = (gena2) ? a2_base[1] : a1_base[1];
assign base[2] = (gena2) ? a2_base[2] : a1_base[2];
assign base[3] = (gena2) ? a2_base[3] : a1_base[3];
assign base[4] = (gena2) ? a2_base[4] : a1_base[4];
assign base[5] = (gena2) ? a2_base[5] : a1_base[5];
assign base[6] = (gena2) ? a2_base[6] : a1_base[6];
assign base[7] = (gena2) ? a2_base[7] : a1_base[7];
assign base[8] = (gena2) ? a2_base[8] : a1_base[8];
assign base[9] = (gena2) ? a2_base[9] : a1_base[9];
assign base[10] = (gena2) ? a2_base[10] : a1_base[10];
assign base[11] = (gena2) ? a2_base[11] : a1_base[11];
assign base[12] = (gena2) ? a2_base[12] : a1_base[12];
assign base[13] = (gena2) ? a2_base[13] : a1_base[13];
assign base[14] = (gena2) ? a2_base[14] : a1_base[14];
assign base[15] = (gena2) ? a2_base[15] : a1_base[15];
assign base[16] = (gena2) ? a2_base[16] : a1_base[16];
assign base[17] = (gena2) ? a2_base[17] : a1_base[17];
assign base[18] = (gena2) ? a2_base[18] : a1_base[18];
assign base[19] = (gena2) ? a2_base[19] : a1_base[19];
assign base[20] = (gena2) ? a2_base[20] : a1_base[20];

// ADDRGEN.NET (95) - zoffset[0-1] : mx2
assign zoffset_0 = (gena2b_1) ? a2_zoffset_0 : a1_zoffset_0;
assign zoffset_1 = (gena2b_1) ? a2_zoffset_1 : a1_zoffset_1;

// ADDRGEN.NET (107) - ym1[0-11] : an2p
assign ym1_0 = width_1 & y_0;
assign ym1_1 = width_1 & y_1;
assign ym1_2 = width_1 & y_2;
assign ym1_3 = width_1 & y_3;
assign ym1_4 = width_1 & y_4;
assign ym1_5 = width_1 & y_5;
assign ym1_6 = width_1 & y_6;
assign ym1_7 = width_1 & y_7;
assign ym1_8 = width_1 & y_8;
assign ym1_9 = width_1 & y_9;
assign ym1_10 = width_1 & y_10;
assign ym1_11 = width_1 & y_11;

// ADDRGEN.NET (108) - ym2[0-11] : an2p
assign ym2_0 = width_0 & y_0;
assign ym2_1 = width_0 & y_1;
assign ym2_2 = width_0 & y_2;
assign ym2_3 = width_0 & y_3;
assign ym2_4 = width_0 & y_4;
assign ym2_5 = width_0 & y_5;
assign ym2_6 = width_0 & y_6;
assign ym2_7 = width_0 & y_7;
assign ym2_8 = width_0 & y_8;
assign ym2_9 = width_0 & y_9;
assign ym2_10 = width_0 & y_10;
assign ym2_11 = width_0 & y_11;

// ADDRGEN.NET (110) - yadd : fa332
fa332 yadd_inst
(
	.s0 /* OUT */ (ytmt_0),
	.s1 /* OUT */ (ytmt_1),
	.s2 /* OUT */ (ytmt_2),
	.s3 /* OUT */ (ytmt_3),
	.s4 /* OUT */ (ytmt_4),
	.s5 /* OUT */ (ytmt_5),
	.s6 /* OUT */ (ytmt_6),
	.s7 /* OUT */ (ytmt_7),
	.s8 /* OUT */ (ytmt_8),
	.s9 /* OUT */ (ytmt_9),
	.s10 /* OUT */ (ytmt_10),
	.s11 /* OUT */ (ytmt_11),
	.s12 /* OUT */ (ytmt_12),
	.s13 /* OUT */ (ytmt_13),
	.s14 /* OUT */ (ytmt_14),
	.s15 /* OUT */ (ytmt_15),
	.s16 /* OUT */ (ytmt_16),
	.s17 /* OUT */ (ytmt_17),
	.s18 /* OUT */ (ytmt_18),
	.s19 /* OUT */ (ytmt_19),
	.s20 /* OUT */ (ytmt_20),
	.s21 /* OUT */ (ytmt_21),
	.s22 /* OUT */ (ytmt_22),
	.s23 /* OUT */ (ytmt_23),
	.s24 /* OUT */ (ytmt_24),
	.s25 /* OUT */ (ytmt_25),
	.s26 /* OUT */ (ytmt_26),
	.s27 /* OUT */ (ytmt_27),
	.s28 /* OUT */ (ytmt_28),
	.s29 /* OUT */ (ytmt_29),
	.s30 /* OUT */ (ytmt_30),
	.s31 /* OUT */ (ytmt_31),
	.co0 /* OUT */ (co_0),
	.co1 /* OUT */ (co_1),
	.ci0 /* IN */ (zero),
	.ci1 /* IN */ (zero),
	.a0 /* IN */ (ym2_0),
	.b0 /* IN */ (zero),
	.c0 /* IN */ (zero),
	.a1 /* IN */ (ym2_1),
	.b1 /* IN */ (ym1_0),
	.c1 /* IN */ (zero),
	.a2 /* IN */ (ym2_2),
	.b2 /* IN */ (ym1_1),
	.c2 /* IN */ (y_0),
	.a3 /* IN */ (ym2_3),
	.b3 /* IN */ (ym1_2),
	.c3 /* IN */ (y_1),
	.a4 /* IN */ (ym2_4),
	.b4 /* IN */ (ym1_3),
	.c4 /* IN */ (y_2),
	.a5 /* IN */ (ym2_5),
	.b5 /* IN */ (ym1_4),
	.c5 /* IN */ (y_3),
	.a6 /* IN */ (ym2_6),
	.b6 /* IN */ (ym1_5),
	.c6 /* IN */ (y_4),
	.a7 /* IN */ (ym2_7),
	.b7 /* IN */ (ym1_6),
	.c7 /* IN */ (y_5),
	.a8 /* IN */ (ym2_8),
	.b8 /* IN */ (ym1_7),
	.c8 /* IN */ (y_6),
	.a9 /* IN */ (ym2_9),
	.b9 /* IN */ (ym1_8),
	.c9 /* IN */ (y_7),
	.a10 /* IN */ (ym2_10),
	.b10 /* IN */ (ym1_9),
	.c10 /* IN */ (y_8),
	.a11 /* IN */ (ym2_11),
	.b11 /* IN */ (ym1_10),
	.c11 /* IN */ (y_9),
	.a12 /* IN */ (zero),
	.b12 /* IN */ (ym1_11),
	.c12 /* IN */ (y_10),
	.a13 /* IN */ (zero),
	.b13 /* IN */ (zero),
	.c13 /* IN */ (y_11),
	.a14 /* IN */ (zero),
	.b14 /* IN */ (zero),
	.c14 /* IN */ (zero),
	.a15 /* IN */ (zero),
	.b15 /* IN */ (zero),
	.c15 /* IN */ (zero),
	.a16 /* IN */ (zero),
	.b16 /* IN */ (zero),
	.c16 /* IN */ (zero),
	.a17 /* IN */ (zero),
	.b17 /* IN */ (zero),
	.c17 /* IN */ (zero),
	.a18 /* IN */ (zero),
	.b18 /* IN */ (zero),
	.c18 /* IN */ (zero),
	.a19 /* IN */ (zero),
	.b19 /* IN */ (zero),
	.c19 /* IN */ (zero),
	.a20 /* IN */ (zero),
	.b20 /* IN */ (zero),
	.c20 /* IN */ (zero),
	.a21 /* IN */ (zero),
	.b21 /* IN */ (zero),
	.c21 /* IN */ (zero),
	.a22 /* IN */ (zero),
	.b22 /* IN */ (zero),
	.c22 /* IN */ (zero),
	.a23 /* IN */ (zero),
	.b23 /* IN */ (zero),
	.c23 /* IN */ (zero),
	.a24 /* IN */ (zero),
	.b24 /* IN */ (zero),
	.c24 /* IN */ (zero),
	.a25 /* IN */ (zero),
	.b25 /* IN */ (zero),
	.c25 /* IN */ (zero),
	.a26 /* IN */ (zero),
	.b26 /* IN */ (zero),
	.c26 /* IN */ (zero),
	.a27 /* IN */ (zero),
	.b27 /* IN */ (zero),
	.c27 /* IN */ (zero),
	.a28 /* IN */ (zero),
	.b28 /* IN */ (zero),
	.c28 /* IN */ (zero),
	.a29 /* IN */ (zero),
	.b29 /* IN */ (zero),
	.c29 /* IN */ (zero),
	.a30 /* IN */ (zero),
	.b30 /* IN */ (zero),
	.c30 /* IN */ (zero),
	.a31 /* IN */ (zero),
	.b31 /* IN */ (zero),
	.c31 /* IN */ (zero)
);

// ADDRGEN.NET (132) - co[0-1] : dummy

// ADDRGEN.NET (133) - ytmt[15-31] : dummy

// ADDRGEN.NET (135) - ytm[0-14] : nivh
assign ytm_0 = ytmt_0;
assign ytm_1 = ytmt_1;
assign ytm_2 = ytmt_2;
assign ytm_3 = ytmt_3;
assign ytm_4 = ytmt_4;
assign ytm_5 = ytmt_5;
assign ytm_6 = ytmt_6;
assign ytm_7 = ytmt_7;
assign ytm_8 = ytmt_8;
assign ytm_9 = ytmt_9;
assign ytm_10 = ytmt_10;
assign ytm_11 = ytmt_11;
assign ytm_12 = ytmt_12;
assign ytm_13 = ytmt_13;
assign ytm_14 = ytmt_14;

// ADDRGEN.NET (141) - lowen : or2
assign lowen = width_4 | width_5;

// ADDRGEN.NET (142) - yaddr[0] : mx4g
mx4g yaddr_index_0_inst
(
	.z /* OUT */ (ya_0),
	.a0 /* IN */ (ytm_2),
	.a1 /* IN */ (ytm_1),
	.a2 /* IN */ (ytm_0),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.gn /* IN */ (lowen)
);

// ADDRGEN.NET (144) - yaddr[1] : mx4g
mx4g yaddr_index_1_inst
(
	.z /* OUT */ (ya_1),
	.a0 /* IN */ (ytm_3),
	.a1 /* IN */ (ytm_2),
	.a2 /* IN */ (ytm_1),
	.a3 /* IN */ (ytm_0),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.gn /* IN */ (lowen)
);

// ADDRGEN.NET (146) - yaddr[2] : mx8g
mx8g yaddr_index_2_inst
(
	.z /* OUT */ (ya_2),
	.a0 /* IN */ (ytm_4),
	.a1 /* IN */ (ytm_3),
	.a2 /* IN */ (ytm_2),
	.a3 /* IN */ (ytm_1),
	.a4 /* IN */ (ytm_0),
	.a5 /* IN */ (zero),
	.a6 /* IN */ (zero),
	.a7 /* IN */ (zero),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.s2 /* IN */ (width_4),
	.gn /* IN */ (width_5)
);

// ADDRGEN.NET (149) - yaddr[3] : mx8g
mx8g yaddr_index_3_inst
(
	.z /* OUT */ (ya_3),
	.a0 /* IN */ (ytm_5),
	.a1 /* IN */ (ytm_4),
	.a2 /* IN */ (ytm_3),
	.a3 /* IN */ (ytm_2),
	.a4 /* IN */ (ytm_1),
	.a5 /* IN */ (ytm_0),
	.a6 /* IN */ (zero),
	.a7 /* IN */ (zero),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.s2 /* IN */ (width_4),
	.gn /* IN */ (width_5)
);

// ADDRGEN.NET (152) - yaddr[4] : mx8g
mx8g yaddr_index_4_inst
(
	.z /* OUT */ (ya_4),
	.a0 /* IN */ (ytm_6),
	.a1 /* IN */ (ytm_5),
	.a2 /* IN */ (ytm_4),
	.a3 /* IN */ (ytm_3),
	.a4 /* IN */ (ytm_2),
	.a5 /* IN */ (ytm_1),
	.a6 /* IN */ (ytm_0),
	.a7 /* IN */ (zero),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.s2 /* IN */ (width_4),
	.gn /* IN */ (width_5)
);

// ADDRGEN.NET (155) - yaddr[5] : mx8g
mx8g yaddr_index_5_inst
(
	.z /* OUT */ (ya_5),
	.a0 /* IN */ (ytm_7),
	.a1 /* IN */ (ytm_6),
	.a2 /* IN */ (ytm_5),
	.a3 /* IN */ (ytm_4),
	.a4 /* IN */ (ytm_3),
	.a5 /* IN */ (ytm_2),
	.a6 /* IN */ (ytm_1),
	.a7 /* IN */ (ytm_0),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.s2 /* IN */ (width_4),
	.gn /* IN */ (width_5)
);

// ADDRGEN.NET (158) - yaddr[6] : mx12b
mx12b yaddr_index_6_inst
(
	.q /* OUT */ (ya_6),
	.a_0 /* IN */ (ytm_8),
	.a_1 /* IN */ (ytm_7),
	.a_2 /* IN */ (ytm_6),
	.a_3 /* IN */ (ytm_5),
	.a_4 /* IN */ (ytm_4),
	.a_5 /* IN */ (ytm_3),
	.a_6 /* IN */ (ytm_2),
	.a_7 /* IN */ (ytm_1),
	.a_8 /* IN */ (ytm_0),
	.a_9 /* IN */ (zero),
	.a_10 /* IN */ (zerob),
	.a_11 /* IN */ (zeroc),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (161) - yaddr[7] : mx12b
mx12b yaddr_index_7_inst
(
	.q /* OUT */ (ya_7),
	.a_0 /* IN */ (ytm_9),
	.a_1 /* IN */ (ytm_8),
	.a_2 /* IN */ (ytm_7),
	.a_3 /* IN */ (ytm_6),
	.a_4 /* IN */ (ytm_5),
	.a_5 /* IN */ (ytm_4),
	.a_6 /* IN */ (ytm_3),
	.a_7 /* IN */ (ytm_2),
	.a_8 /* IN */ (ytm_1),
	.a_9 /* IN */ (ytm_0),
	.a_10 /* IN */ (zero),
	.a_11 /* IN */ (zero),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (164) - yaddr[8] : mx12b
mx12b yaddr_index_8_inst
(
	.q /* OUT */ (ya_8),
	.a_0 /* IN */ (ytm_10),
	.a_1 /* IN */ (ytm_9),
	.a_2 /* IN */ (ytm_8),
	.a_3 /* IN */ (ytm_7),
	.a_4 /* IN */ (ytm_6),
	.a_5 /* IN */ (ytm_5),
	.a_6 /* IN */ (ytm_4),
	.a_7 /* IN */ (ytm_3),
	.a_8 /* IN */ (ytm_2),
	.a_9 /* IN */ (ytm_1),
	.a_10 /* IN */ (ytm_0),
	.a_11 /* IN */ (zero),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (167) - yaddr[9] : mx12b
mx12b yaddr_index_9_inst
(
	.q /* OUT */ (ya_9),
	.a_0 /* IN */ (ytm_11),
	.a_1 /* IN */ (ytm_10),
	.a_2 /* IN */ (ytm_9),
	.a_3 /* IN */ (ytm_8),
	.a_4 /* IN */ (ytm_7),
	.a_5 /* IN */ (ytm_6),
	.a_6 /* IN */ (ytm_5),
	.a_7 /* IN */ (ytm_4),
	.a_8 /* IN */ (ytm_3),
	.a_9 /* IN */ (ytm_2),
	.a_10 /* IN */ (ytm_1),
	.a_11 /* IN */ (ytm_0),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (170) - yaddr[10] : mx12b
mx12b yaddr_index_10_inst
(
	.q /* OUT */ (ya_10),
	.a_0 /* IN */ (ytm_12),
	.a_1 /* IN */ (ytm_11),
	.a_2 /* IN */ (ytm_10),
	.a_3 /* IN */ (ytm_9),
	.a_4 /* IN */ (ytm_8),
	.a_5 /* IN */ (ytm_7),
	.a_6 /* IN */ (ytm_6),
	.a_7 /* IN */ (ytm_5),
	.a_8 /* IN */ (ytm_4),
	.a_9 /* IN */ (ytm_3),
	.a_10 /* IN */ (ytm_2),
	.a_11 /* IN */ (ytm_1),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (174) - yaddr[11] : mx12b
mx12b yaddr_index_11_inst
(
	.q /* OUT */ (ya_11),
	.a_0 /* IN */ (ytm_13),
	.a_1 /* IN */ (ytm_12),
	.a_2 /* IN */ (ytm_11),
	.a_3 /* IN */ (ytm_10),
	.a_4 /* IN */ (ytm_9),
	.a_5 /* IN */ (ytm_8),
	.a_6 /* IN */ (ytm_7),
	.a_7 /* IN */ (ytm_6),
	.a_8 /* IN */ (ytm_5),
	.a_9 /* IN */ (ytm_4),
	.a_10 /* IN */ (ytm_3),
	.a_11 /* IN */ (ytm_2),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (178) - yaddr[12] : mx12b
mx12b yaddr_index_12_inst
(
	.q /* OUT */ (ya_12),
	.a_0 /* IN */ (ytm_14),
	.a_1 /* IN */ (ytm_13),
	.a_2 /* IN */ (ytm_12),
	.a_3 /* IN */ (ytm_11),
	.a_4 /* IN */ (ytm_10),
	.a_5 /* IN */ (ytm_9),
	.a_6 /* IN */ (ytm_8),
	.a_7 /* IN */ (ytm_7),
	.a_8 /* IN */ (ytm_6),
	.a_9 /* IN */ (ytm_5),
	.a_10 /* IN */ (ytm_4),
	.a_11 /* IN */ (ytm_3),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (182) - yaddr[13] : mx12b
mx12b yaddr_index_13_inst
(
	.q /* OUT */ (ya_13),
	.a_0 /* IN */ (zero),
	.a_1 /* IN */ (ytm_14),
	.a_2 /* IN */ (ytm_13),
	.a_3 /* IN */ (ytm_12),
	.a_4 /* IN */ (ytm_11),
	.a_5 /* IN */ (ytm_10),
	.a_6 /* IN */ (ytm_9),
	.a_7 /* IN */ (ytm_8),
	.a_8 /* IN */ (ytm_7),
	.a_9 /* IN */ (ytm_6),
	.a_10 /* IN */ (ytm_5),
	.a_11 /* IN */ (ytm_4),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (186) - yaddr[14] : mx12b
mx12b yaddr_index_14_inst
(
	.q /* OUT */ (ya_14),
	.a_0 /* IN */ (zero),
	.a_1 /* IN */ (zero),
	.a_2 /* IN */ (ytm_14),
	.a_3 /* IN */ (ytm_13),
	.a_4 /* IN */ (ytm_12),
	.a_5 /* IN */ (ytm_11),
	.a_6 /* IN */ (ytm_10),
	.a_7 /* IN */ (ytm_9),
	.a_8 /* IN */ (ytm_8),
	.a_9 /* IN */ (ytm_7),
	.a_10 /* IN */ (ytm_6),
	.a_11 /* IN */ (ytm_5),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (190) - yaddr[15] : mx12b
mx12b yaddr_index_15_inst
(
	.q /* OUT */ (ya_15),
	.a_0 /* IN */ (zero),
	.a_1 /* IN */ (zero),
	.a_2 /* IN */ (zero),
	.a_3 /* IN */ (ytm_14),
	.a_4 /* IN */ (ytm_13),
	.a_5 /* IN */ (ytm_12),
	.a_6 /* IN */ (ytm_11),
	.a_7 /* IN */ (ytm_10),
	.a_8 /* IN */ (ytm_9),
	.a_9 /* IN */ (ytm_8),
	.a_10 /* IN */ (ytm_7),
	.a_11 /* IN */ (ytm_6),
	.sel_0 /* IN */ (width_2),
	.sel_1 /* IN */ (width_3),
	.sel_2 /* IN */ (width_4),
	.sel_3 /* IN */ (width_5)
);

// ADDRGEN.NET (196) - mid8en\ : en
assign mid8en_n = ~(width_4 ^ width_5);

// ADDRGEN.NET (197) - yaddr[16] : mx8g
mx8g yaddr_index_16_inst
(
	.z /* OUT */ (ya_16),
	.a0 /* IN */ (ytm_10),
	.a1 /* IN */ (ytm_9),
	.a2 /* IN */ (ytm_8),
	.a3 /* IN */ (ytm_7),
	.a4 /* IN */ (ytm_14),
	.a5 /* IN */ (ytm_13),
	.a6 /* IN */ (ytm_12),
	.a7 /* IN */ (ytm_11),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.s2 /* IN */ (width_4),
	.gn /* IN */ (mid8en_n)
);

// ADDRGEN.NET (201) - yaddr[17] : mx8g
mx8g yaddr_index_17_inst
(
	.z /* OUT */ (ya_17),
	.a0 /* IN */ (ytm_11),
	.a1 /* IN */ (ytm_10),
	.a2 /* IN */ (ytm_9),
	.a3 /* IN */ (ytm_8),
	.a4 /* IN */ (zero),
	.a5 /* IN */ (ytm_14),
	.a6 /* IN */ (ytm_13),
	.a7 /* IN */ (ytm_12),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.s2 /* IN */ (width_4),
	.gn /* IN */ (mid8en_n)
);

// ADDRGEN.NET (205) - yaddr[18] : mx8g
mx8g yaddr_index_18_inst
(
	.z /* OUT */ (ya_18),
	.a0 /* IN */ (ytm_12),
	.a1 /* IN */ (ytm_11),
	.a2 /* IN */ (ytm_10),
	.a3 /* IN */ (ytm_9),
	.a4 /* IN */ (zero),
	.a5 /* IN */ (zero),
	.a6 /* IN */ (ytm_14),
	.a7 /* IN */ (ytm_13),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.s2 /* IN */ (width_4),
	.gn /* IN */ (mid8en_n)
);

// ADDRGEN.NET (209) - yaddr[19] : mx8g
mx8g yaddr_index_19_inst
(
	.z /* OUT */ (ya_19),
	.a0 /* IN */ (ytm_13),
	.a1 /* IN */ (ytm_12),
	.a2 /* IN */ (ytm_11),
	.a3 /* IN */ (ytm_10),
	.a4 /* IN */ (zero),
	.a5 /* IN */ (zero),
	.a6 /* IN */ (zero),
	.a7 /* IN */ (ytm_14),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.s2 /* IN */ (width_4),
	.gn /* IN */ (mid8en_n)
);

// ADDRGEN.NET (213) - tm4en\ : nd2
assign tm4en_n = ~(width_n_4 & width_5);

// ADDRGEN.NET (214) - yaddr[20] : mx4g
mx4g yaddr_index_20_inst
(
	.z /* OUT */ (ya_20),
	.a0 /* IN */ (ytm_14),
	.a1 /* IN */ (ytm_13),
	.a2 /* IN */ (ytm_12),
	.a3 /* IN */ (ytm_11),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.gn /* IN */ (tm4en_n)
);

// ADDRGEN.NET (216) - yaddr[21] : mx4g
mx4g yaddr_index_21_inst
(
	.z /* OUT */ (ya_21),
	.a0 /* IN */ (zero),
	.a1 /* IN */ (ytm_14),
	.a2 /* IN */ (ytm_13),
	.a3 /* IN */ (ytm_12),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.gn /* IN */ (tm4en_n)
);

// ADDRGEN.NET (218) - yaddr[22] : mx4g
mx4g yaddr_index_22_inst
(
	.z /* OUT */ (ya_22),
	.a0 /* IN */ (zero),
	.a1 /* IN */ (zero),
	.a2 /* IN */ (ytm_14),
	.a3 /* IN */ (ytm_13),
	.s0 /* IN */ (width_2),
	.s1 /* IN */ (width_3),
	.gn /* IN */ (tm4en_n)
);

// ADDRGEN.NET (220) - yaddr[23] : an5
assign ya_23 = ytm_14 & width_2 & width_3 & width_n_4 & width_5;

// ADDRGEN.NET (227) - pa_a : join
assign pa_a[0] = ya_0;
assign pa_a[1] = ya_1;
assign pa_a[2] = ya_2;
assign pa_a[3] = ya_3;
assign pa_a[4] = ya_4;
assign pa_a[5] = ya_5;
assign pa_a[6] = ya_6;
assign pa_a[7] = ya_7;
assign pa_a[8] = ya_8;
assign pa_a[9] = ya_9;
assign pa_a[10] = ya_10;
assign pa_a[11] = ya_11;
assign pa_a[12] = ya_12;
assign pa_a[13] = ya_13;
assign pa_a[14] = ya_14;
assign pa_a[15] = ya_15;
assign pa_a[16] = ya_16;
assign pa_a[17] = ya_17;
assign pa_a[18] = ya_18;
assign pa_a[19] = ya_19;
assign pa_a[20] = ya_20;
assign pa_a[21] = ya_21;
assign pa_a[22] = ya_22;
assign pa_a[23] = ya_23;

// ADDRGEN.NET (228) - pa_ad : dummy

// ADDRGEN.NET (229) - pa_b : join
assign pa_b[0] = x_0;
assign pa_b[1] = x_1;
assign pa_b[2] = x_2;
assign pa_b[3] = x_3;
assign pa_b[4] = x_4;
assign pa_b[5] = x_5;
assign pa_b[6] = x_6;
assign pa_b[7] = x_7;
assign pa_b[8] = x_8;
assign pa_b[9] = x_9;
assign pa_b[10] = x_10;
assign pa_b[11] = x_11;
assign pa_b[12] = x_12;
assign pa_b[13] = x_13;
assign pa_b[14] = x_14;
assign pa_b[15] = x_15;

// ADDRGEN.NET (230) - pa_bd : dummy

// ADDRGEN.NET (231) - pa : join
assign pa[0] = pa_0;
assign pa[1] = pa_1;
assign pa[2] = pa_2;
assign pa[3] = pa_3;
assign pa[4] = pa_4;
assign pa[5] = pa_5;
assign pa[6] = pa_6;
assign pa[7] = pa_7;
assign pa[8] = pa_8;
assign pa[9] = pa_9;
assign pa[10] = pa_10;
assign pa[11] = pa_11;
assign pa[12] = pa_12;
assign pa[13] = pa_13;
assign pa[14] = pa_14;
assign pa[15] = pa_15;
assign pa[16] = pa_16;
assign pa[17] = pa_17;
assign pa[18] = pa_18;
assign pa[19] = pa_19;
assign pa[20] = pa_20;
assign pa[21] = pa_21;
assign pa[22] = pa_22;
assign pa[23] = pa_23;
assign pa[24] = pa_24;

// ADDRGEN.NET (232) - pad : dummy

// ADDRGEN.NET (234) - palow : fas16_s
fas16 palow_inst
(
	.s0 /* OUT */ (pa_0),
	.s1 /* OUT */ (pa_1),
	.s2 /* OUT */ (pa_2),
	.s3 /* OUT */ (pa_3),
	.s4 /* OUT */ (pa_4),
	.s5 /* OUT */ (pa_5),
	.s6 /* OUT */ (pa_6),
	.s7 /* OUT */ (pa_7),
	.s8 /* OUT */ (pa_8),
	.s9 /* OUT */ (pa_9),
	.s10 /* OUT */ (pa_10),
	.s11 /* OUT */ (pa_11),
	.s12 /* OUT */ (pa_12),
	.s13 /* OUT */ (pa_13),
	.s14 /* OUT */ (pa_14),
	.s15 /* OUT */ (pa_15),
	.co /* OUT */ (pacy_n_15),
	.as /* IN */ (one),
	.ci /* IN */ (one),
	.a0 /* IN */ (ya_0),
	.b0 /* IN */ (x_0),
	.a1 /* IN */ (ya_1),
	.b1 /* IN */ (x_1),
	.a2 /* IN */ (ya_2),
	.b2 /* IN */ (x_2),
	.a3 /* IN */ (ya_3),
	.b3 /* IN */ (x_3),
	.a4 /* IN */ (ya_4),
	.b4 /* IN */ (x_4),
	.a5 /* IN */ (ya_5),
	.b5 /* IN */ (x_5),
	.a6 /* IN */ (ya_6),
	.b6 /* IN */ (x_6),
	.a7 /* IN */ (ya_7),
	.b7 /* IN */ (x_7),
	.a8 /* IN */ (ya_8),
	.b8 /* IN */ (x_8),
	.a9 /* IN */ (ya_9),
	.b9 /* IN */ (x_9),
	.a10 /* IN */ (ya_10),
	.b10 /* IN */ (x_10),
	.a11 /* IN */ (ya_11),
	.b11 /* IN */ (x_11),
	.a12 /* IN */ (ya_12),
	.b12 /* IN */ (x_12),
	.a13 /* IN */ (ya_13),
	.b13 /* IN */ (x_13),
	.a14 /* IN */ (ya_14),
	.b14 /* IN */ (x_14),
	.a15 /* IN */ (ya_15),
	.b15 /* IN */ (x_15)
);

// ADDRGEN.NET (241) - pacy[15] : iv
assign pacy_15 = ~pacy_n_15;

// ADDRGEN.NET (242) - pa[16-19] : ha1
ha1 pa_from_16_to_19_inst_0
(
	.s /* OUT */ (pa_16),
	.co /* OUT */ (pacy_16),
	.a /* IN */ (ya_16),
	.b /* IN */ (pacy_15)
);
ha1 pa_from_16_to_19_inst_1
(
	.s /* OUT */ (pa_17),
	.co /* OUT */ (pacy_17),
	.a /* IN */ (ya_17),
	.b /* IN */ (pacy_16)
);
ha1 pa_from_16_to_19_inst_2
(
	.s /* OUT */ (pa_18),
	.co /* OUT */ (pacy_18),
	.a /* IN */ (ya_18),
	.b /* IN */ (pacy_17)
);
ha1 pa_from_16_to_19_inst_3
(
	.s /* OUT */ (pa_19),
	.co /* OUT */ (pacy_19),
	.a /* IN */ (ya_19),
	.b /* IN */ (pacy_18)
);

// ADDRGEN.NET (244) - pa[20] : eop
assign pa_20 = ya_20 ^ pacy_19;

// ADDRGEN.NET (245) - pacy[20] : an6m
assign pacy_20 = pacy_15 & ya_16 & ya_17 & ya_18 & ya_19 & ya_20;

// ADDRGEN.NET (246) - pa[21-22] : ha1
ha1 pa_from_21_to_22_inst_0
(
	.s /* OUT */ (pa_21),
	.co /* OUT */ (pacy_21),
	.a /* IN */ (ya_21),
	.b /* IN */ (pacy_20)
);
ha1 pa_from_21_to_22_inst_1
(
	.s /* OUT */ (pa_22),
	.co /* OUT */ (pacy_22),
	.a /* IN */ (ya_22),
	.b /* IN */ (pacy_21)
);

// ADDRGEN.NET (248) - pa[23] : ha1
ha1 pa_index_23_inst
(
	.s /* OUT */ (pa_23),
	.co /* OUT */ (pa_24),
	.a /* IN */ (ya_23),
	.b /* IN */ (pacy_22)
);

// ADDRGEN.NET (252) - pixa4 : mx6
mx6 pixa4_inst
(
	.q /* OUT */ (pixa_4),
	.a_0 /* IN */ (pa_4),
	.a_1 /* IN */ (pa_3),
	.a_2 /* IN */ (pa_2),
	.a_3 /* IN */ (pa_1),
	.a_4 /* IN */ (pa_0),
	.a_5 /* IN */ (zero),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);

// ADDRGEN.NET (254) - pixa3 : mx6
mx6 pixa3_inst
(
	.q /* OUT */ (pixa_3),
	.a_0 /* IN */ (pa_3),
	.a_1 /* IN */ (pa_2),
	.a_2 /* IN */ (pa_1),
	.a_3 /* IN */ (pa_0),
	.a_4 /* IN */ (zero),
	.a_5 /* IN */ (zero),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);

// ADDRGEN.NET (256) - pixa2 : mx6
mx6 pixa2_inst
(
	.q /* OUT */ (pixa_2_obuf),
	.a_0 /* IN */ (pa_2),
	.a_1 /* IN */ (pa_1),
	.a_2 /* IN */ (pa_0),
	.a_3 /* IN */ (zero),
	.a_4 /* IN */ (zero),
	.a_5 /* IN */ (zero),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);

// ADDRGEN.NET (258) - pixa1 : mx6
mx6 pixa1_inst
(
	.q /* OUT */ (pixa_1_obuf),
	.a_0 /* IN */ (pa_1),
	.a_1 /* IN */ (pa_0),
	.a_2 /* IN */ (zero),
	.a_3 /* IN */ (zero),
	.a_4 /* IN */ (zero),
	.a_5 /* IN */ (zero),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);

// ADDRGEN.NET (260) - pixa0 : mx6
mx6 pixa0_inst
(
	.q /* OUT */ (pixa_0_obuf),
	.a_0 /* IN */ (pa_0),
	.a_1 /* IN */ (zero),
	.a_2 /* IN */ (zero),
	.a_3 /* IN */ (zero),
	.a_4 /* IN */ (zero),
	.a_5 /* IN */ (zero),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);

// ADDRGEN.NET (262) - pixa[5-12] : mx6
mx6 pixa_from_5_to_12_inst_0
(
	.q /* OUT */ (pixa_5),
	.a_0 /* IN */ (pa_5),
	.a_1 /* IN */ (pa_4),
	.a_2 /* IN */ (pa_3),
	.a_3 /* IN */ (pa_2),
	.a_4 /* IN */ (pa_1),
	.a_5 /* IN */ (pa_0),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_5_to_12_inst_1
(
	.q /* OUT */ (pixa_6),
	.a_0 /* IN */ (pa_6),
	.a_1 /* IN */ (pa_5),
	.a_2 /* IN */ (pa_4),
	.a_3 /* IN */ (pa_3),
	.a_4 /* IN */ (pa_2),
	.a_5 /* IN */ (pa_1),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_5_to_12_inst_2
(
	.q /* OUT */ (pixa_7),
	.a_0 /* IN */ (pa_7),
	.a_1 /* IN */ (pa_6),
	.a_2 /* IN */ (pa_5),
	.a_3 /* IN */ (pa_4),
	.a_4 /* IN */ (pa_3),
	.a_5 /* IN */ (pa_2),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_5_to_12_inst_3
(
	.q /* OUT */ (pixa_8),
	.a_0 /* IN */ (pa_8),
	.a_1 /* IN */ (pa_7),
	.a_2 /* IN */ (pa_6),
	.a_3 /* IN */ (pa_5),
	.a_4 /* IN */ (pa_4),
	.a_5 /* IN */ (pa_3),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_5_to_12_inst_4
(
	.q /* OUT */ (pixa_9),
	.a_0 /* IN */ (pa_9),
	.a_1 /* IN */ (pa_8),
	.a_2 /* IN */ (pa_7),
	.a_3 /* IN */ (pa_6),
	.a_4 /* IN */ (pa_5),
	.a_5 /* IN */ (pa_4),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_5_to_12_inst_5
(
	.q /* OUT */ (pixa_10),
	.a_0 /* IN */ (pa_10),
	.a_1 /* IN */ (pa_9),
	.a_2 /* IN */ (pa_8),
	.a_3 /* IN */ (pa_7),
	.a_4 /* IN */ (pa_6),
	.a_5 /* IN */ (pa_5),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_5_to_12_inst_6
(
	.q /* OUT */ (pixa_11),
	.a_0 /* IN */ (pa_11),
	.a_1 /* IN */ (pa_10),
	.a_2 /* IN */ (pa_9),
	.a_3 /* IN */ (pa_8),
	.a_4 /* IN */ (pa_7),
	.a_5 /* IN */ (pa_6),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_5_to_12_inst_7
(
	.q /* OUT */ (pixa_12),
	.a_0 /* IN */ (pa_12),
	.a_1 /* IN */ (pa_11),
	.a_2 /* IN */ (pa_10),
	.a_3 /* IN */ (pa_9),
	.a_4 /* IN */ (pa_8),
	.a_5 /* IN */ (pa_7),
	.sel_0 /* IN */ (pixsize_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);

// ADDRGEN.NET (265) - pixa[13-24] : mx6
mx6 pixa_from_13_to_24_inst_0
(
	.q /* OUT */ (pixa_13),
	.a_0 /* IN */ (pa_13),
	.a_1 /* IN */ (pa_12),
	.a_2 /* IN */ (pa_11),
	.a_3 /* IN */ (pa_10),
	.a_4 /* IN */ (pa_9),
	.a_5 /* IN */ (pa_8),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_1
(
	.q /* OUT */ (pixa_14),
	.a_0 /* IN */ (pa_14),
	.a_1 /* IN */ (pa_13),
	.a_2 /* IN */ (pa_12),
	.a_3 /* IN */ (pa_11),
	.a_4 /* IN */ (pa_10),
	.a_5 /* IN */ (pa_9),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_2
(
	.q /* OUT */ (pixa_15),
	.a_0 /* IN */ (pa_15),
	.a_1 /* IN */ (pa_14),
	.a_2 /* IN */ (pa_13),
	.a_3 /* IN */ (pa_12),
	.a_4 /* IN */ (pa_11),
	.a_5 /* IN */ (pa_10),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_3
(
	.q /* OUT */ (pixa_16),
	.a_0 /* IN */ (pa_16),
	.a_1 /* IN */ (pa_15),
	.a_2 /* IN */ (pa_14),
	.a_3 /* IN */ (pa_13),
	.a_4 /* IN */ (pa_12),
	.a_5 /* IN */ (pa_11),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_4
(
	.q /* OUT */ (pixa_17),
	.a_0 /* IN */ (pa_17),
	.a_1 /* IN */ (pa_16),
	.a_2 /* IN */ (pa_15),
	.a_3 /* IN */ (pa_14),
	.a_4 /* IN */ (pa_13),
	.a_5 /* IN */ (pa_12),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_5
(
	.q /* OUT */ (pixa_18),
	.a_0 /* IN */ (pa_18),
	.a_1 /* IN */ (pa_17),
	.a_2 /* IN */ (pa_16),
	.a_3 /* IN */ (pa_15),
	.a_4 /* IN */ (pa_14),
	.a_5 /* IN */ (pa_13),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_6
(
	.q /* OUT */ (pixa_19),
	.a_0 /* IN */ (pa_19),
	.a_1 /* IN */ (pa_18),
	.a_2 /* IN */ (pa_17),
	.a_3 /* IN */ (pa_16),
	.a_4 /* IN */ (pa_15),
	.a_5 /* IN */ (pa_14),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_7
(
	.q /* OUT */ (pixa_20),
	.a_0 /* IN */ (pa_20),
	.a_1 /* IN */ (pa_19),
	.a_2 /* IN */ (pa_18),
	.a_3 /* IN */ (pa_17),
	.a_4 /* IN */ (pa_16),
	.a_5 /* IN */ (pa_15),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_8
(
	.q /* OUT */ (pixa_21),
	.a_0 /* IN */ (pa_21),
	.a_1 /* IN */ (pa_20),
	.a_2 /* IN */ (pa_19),
	.a_3 /* IN */ (pa_18),
	.a_4 /* IN */ (pa_17),
	.a_5 /* IN */ (pa_16),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_9
(
	.q /* OUT */ (pixa_22),
	.a_0 /* IN */ (pa_22),
	.a_1 /* IN */ (pa_21),
	.a_2 /* IN */ (pa_20),
	.a_3 /* IN */ (pa_19),
	.a_4 /* IN */ (pa_18),
	.a_5 /* IN */ (pa_17),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_10
(
	.q /* OUT */ (pixa_23),
	.a_0 /* IN */ (pa_23),
	.a_1 /* IN */ (pa_22),
	.a_2 /* IN */ (pa_21),
	.a_3 /* IN */ (pa_20),
	.a_4 /* IN */ (pa_19),
	.a_5 /* IN */ (pa_18),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);
mx6 pixa_from_13_to_24_inst_11
(
	.q /* OUT */ (pixa_24),
	.a_0 /* IN */ (pa_24),
	.a_1 /* IN */ (pa_23),
	.a_2 /* IN */ (pa_22),
	.a_3 /* IN */ (pa_21),
	.a_4 /* IN */ (pa_20),
	.a_5 /* IN */ (pa_19),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);

// ADDRGEN.NET (268) - pixa[25] : mx6
mx6 pixa_index_25_inst
(
	.q /* OUT */ (pixa_25),
	.a_0 /* IN */ (zero),
	.a_1 /* IN */ (pa_24),
	.a_2 /* IN */ (pa_23),
	.a_3 /* IN */ (pa_22),
	.a_4 /* IN */ (pa_21),
	.a_5 /* IN */ (pa_20),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);

// ADDRGEN.NET (271) - pixa[26] : mx6
mx6 pixa_index_26_inst
(
	.q /* OUT */ (pixa_26),
	.a_0 /* IN */ (zero),
	.a_1 /* IN */ (zero),
	.a_2 /* IN */ (pa_24),
	.a_3 /* IN */ (pa_23),
	.a_4 /* IN */ (pa_22),
	.a_5 /* IN */ (pa_21),
	.sel_0 /* IN */ (pixsizeb_0),
	.sel_1 /* IN */ (pixsize_1),
	.sel_2 /* IN */ (pixsize_2)
);

// ADDRGEN.NET (275) - pixadr : join
assign pixadr[0] = pixa_0_obuf;
assign pixadr[1] = pixa_1_obuf;
assign pixadr[2] = pixa_2_obuf;
assign pixadr[3] = pixa_3;
assign pixadr[4] = pixa_4;
assign pixadr[5] = pixa_5;
assign pixadr[6] = pixa_6;
assign pixadr[7] = pixa_7;
assign pixadr[8] = pixa_8;
assign pixadr[9] = pixa_9;
assign pixadr[10] = pixa_10;
assign pixadr[11] = pixa_11;
assign pixadr[12] = pixa_12;
assign pixadr[13] = pixa_13;
assign pixadr[14] = pixa_14;
assign pixadr[15] = pixa_15;
assign pixadr[16] = pixa_16;
assign pixadr[17] = pixa_17;
assign pixadr[18] = pixa_18;
assign pixadr[19] = pixa_19;
assign pixadr[20] = pixa_20;
assign pixadr[21] = pixa_21;
assign pixadr[22] = pixa_22;
assign pixadr[23] = pixa_23;
assign pixadr[24] = pixa_24;
assign pixadr[25] = pixa_25;
assign pixadr[26] = pixa_26;

// ADDRGEN.NET (276) - pixadrd : dummy

// ADDRGEN.NET (286) - pt0 : an2u
assign pt_0 = pitch_0 & pitch_n_1;

// ADDRGEN.NET (287) - pt1 : an2u
assign pt_1 = pitch_1 & pitch_n_0;

// ADDRGEN.NET (289) - phradr[0] : mx4p
mx4 phradr_index_0_inst
(
	.z /* OUT */ (phradr_0),
	.a0 /* IN */ (pixa_6),
	.a1 /* IN */ (zero),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);

// ADDRGEN.NET (291) - phradr[1] : mx4p
mx4 phradr_index_1_inst
(
	.z /* OUT */ (phradr_1),
	.a0 /* IN */ (pixa_7),
	.a1 /* IN */ (pixa_6),
	.a2 /* IN */ (zero),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);

// ADDRGEN.NET (293) - phradr[2] : mx4p
mx4 phradr_index_2_inst
(
	.z /* OUT */ (phradr_2),
	.a0 /* IN */ (pixa_8),
	.a1 /* IN */ (pixa_7),
	.a2 /* IN */ (pixa_6),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);

// ADDRGEN.NET (295) - phradr[3-20] : mx4p
mx4 phradr_from_3_to_20_inst_0
(
	.z /* OUT */ (phradr_3),
	.a0 /* IN */ (pixa_9),
	.a1 /* IN */ (pixa_8),
	.a2 /* IN */ (pixa_7),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_1
(
	.z /* OUT */ (phradr_4),
	.a0 /* IN */ (pixa_10),
	.a1 /* IN */ (pixa_9),
	.a2 /* IN */ (pixa_8),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_2
(
	.z /* OUT */ (phradr_5),
	.a0 /* IN */ (pixa_11),
	.a1 /* IN */ (pixa_10),
	.a2 /* IN */ (pixa_9),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_3
(
	.z /* OUT */ (phradr_6),
	.a0 /* IN */ (pixa_12),
	.a1 /* IN */ (pixa_11),
	.a2 /* IN */ (pixa_10),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_4
(
	.z /* OUT */ (phradr_7),
	.a0 /* IN */ (pixa_13),
	.a1 /* IN */ (pixa_12),
	.a2 /* IN */ (pixa_11),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_5
(
	.z /* OUT */ (phradr_8),
	.a0 /* IN */ (pixa_14),
	.a1 /* IN */ (pixa_13),
	.a2 /* IN */ (pixa_12),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_6
(
	.z /* OUT */ (phradr_9),
	.a0 /* IN */ (pixa_15),
	.a1 /* IN */ (pixa_14),
	.a2 /* IN */ (pixa_13),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_7
(
	.z /* OUT */ (phradr_10),
	.a0 /* IN */ (pixa_16),
	.a1 /* IN */ (pixa_15),
	.a2 /* IN */ (pixa_14),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_8
(
	.z /* OUT */ (phradr_11),
	.a0 /* IN */ (pixa_17),
	.a1 /* IN */ (pixa_16),
	.a2 /* IN */ (pixa_15),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_9
(
	.z /* OUT */ (phradr_12),
	.a0 /* IN */ (pixa_18),
	.a1 /* IN */ (pixa_17),
	.a2 /* IN */ (pixa_16),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_10
(
	.z /* OUT */ (phradr_13),
	.a0 /* IN */ (pixa_19),
	.a1 /* IN */ (pixa_18),
	.a2 /* IN */ (pixa_17),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_11
(
	.z /* OUT */ (phradr_14),
	.a0 /* IN */ (pixa_20),
	.a1 /* IN */ (pixa_19),
	.a2 /* IN */ (pixa_18),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_12
(
	.z /* OUT */ (phradr_15),
	.a0 /* IN */ (pixa_21),
	.a1 /* IN */ (pixa_20),
	.a2 /* IN */ (pixa_19),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_13
(
	.z /* OUT */ (phradr_16),
	.a0 /* IN */ (pixa_22),
	.a1 /* IN */ (pixa_21),
	.a2 /* IN */ (pixa_20),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_14
(
	.z /* OUT */ (phradr_17),
	.a0 /* IN */ (pixa_23),
	.a1 /* IN */ (pixa_22),
	.a2 /* IN */ (pixa_21),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_15
(
	.z /* OUT */ (phradr_18),
	.a0 /* IN */ (pixa_24),
	.a1 /* IN */ (pixa_23),
	.a2 /* IN */ (pixa_22),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_16
(
	.z /* OUT */ (phradr_19),
	.a0 /* IN */ (pixa_25),
	.a1 /* IN */ (pixa_24),
	.a2 /* IN */ (pixa_23),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);
mx4 phradr_from_3_to_20_inst_17
(
	.z /* OUT */ (phradr_20),
	.a0 /* IN */ (pixa_26),
	.a1 /* IN */ (pixa_25),
	.a2 /* IN */ (pixa_24),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pt_0),
	.s1 /* IN */ (pt_1)
);

// ADDRGEN.NET (300) - shupen : an2u
assign shupen = pitch_0 & pitch_1;

// ADDRGEN.NET (301) - shup[0-19] : an2
assign shup_0 = pixa_6 & shupen;
assign shup_1 = pixa_7 & shupen;
assign shup_2 = pixa_8 & shupen;
assign shup_3 = pixa_9 & shupen;
assign shup_4 = pixa_10 & shupen;
assign shup_5 = pixa_11 & shupen;
assign shup_6 = pixa_12 & shupen;
assign shup_7 = pixa_13 & shupen;
assign shup_8 = pixa_14 & shupen;
assign shup_9 = pixa_15 & shupen;
assign shup_10 = pixa_16 & shupen;
assign shup_11 = pixa_17 & shupen;
assign shup_12 = pixa_18 & shupen;
assign shup_13 = pixa_19 & shupen;
assign shup_14 = pixa_20 & shupen;
assign shup_15 = pixa_21 & shupen;
assign shup_16 = pixa_22 & shupen;
assign shup_17 = pixa_23 & shupen;
assign shup_18 = pixa_24 & shupen;
assign shup_19 = pixa_25 & shupen;

// ADDRGEN.NET (309) - za[0-1] : an2
assign za_0 = zoffset_0 & zaddr;
assign za_1 = zoffset_1 & zaddr;

// ADDRGEN.NET (311) - addr[0] : fa1
fa1 addr_index_0_inst
(
	.s /* OUT */ (addr_0),
	.co /* OUT */ (adcy0),
	.ci /* IN */ (base[0]),
	.a /* IN */ (phradr_0),
	.b /* IN */ (za_0)
);

// ADDRGEN.NET (313) - addr1t : fa1
fa1 addr1t_inst
(
	.s /* OUT */ (addr1t),
	.co /* OUT */ (adcy1a),
	.ci /* IN */ (base[1]),
	.a /* IN */ (phradr_1),
	.b /* IN */ (za_1)
);

// ADDRGEN.NET (315) - addr[1] : fa1
fa1 addr_index_1_inst
(
	.s /* OUT */ (addr_1),
	.co /* OUT */ (adcy1b),
	.ci /* IN */ (addr1t),
	.a /* IN */ (shup_0),
	.b /* IN */ (adcy0)
);

// ADDRGEN.NET (317) - addr2t : fa1
fa1 addr2t_inst
(
	.s /* OUT */ (addr2t),
	.co /* OUT */ (adcy2a),
	.ci /* IN */ (base[2]),
	.a /* IN */ (phradr_2),
	.b /* IN */ (adcy1a)
);

// ADDRGEN.NET (319) - addr[2] : fa1
fa1 addr_index_2_inst
(
	.s /* OUT */ (addr_2),
	.co /* OUT */ (adcy2b),
	.ci /* IN */ (addr2t),
	.a /* IN */ (shup_1),
	.b /* IN */ (adcy1b)
);

// ADDRGEN.NET (321) - addr3t28 : fa332
fa332 addr3t28_inst
(
	.s0 /* OUT */ (addr_3),
	.s1 /* OUT */ (addr_4),
	.s2 /* OUT */ (addr_5),
	.s3 /* OUT */ (addr_6),
	.s4 /* OUT */ (addr_7),
	.s5 /* OUT */ (addr_8),
	.s6 /* OUT */ (addr_9),
	.s7 /* OUT */ (addr_10),
	.s8 /* OUT */ (addr_11),
	.s9 /* OUT */ (addr_12),
	.s10 /* OUT */ (addr_13),
	.s11 /* OUT */ (addr_14),
	.s12 /* OUT */ (addr_15),
	.s13 /* OUT */ (addr_16),
	.s14 /* OUT */ (addr_17),
	.s15 /* OUT */ (addr_18),
	.s16 /* OUT */ (addr_19),
	.s17 /* OUT */ (addr_20),
	.s18 /* OUT */ (unused_0),
	.s19 /* OUT */ (unused_1),
	.s20 /* OUT */ (unused_2),
	.s21 /* OUT */ (unused_3),
	.s22 /* OUT */ (unused_4),
	.s23 /* OUT */ (unused_5),
	.s24 /* OUT */ (unused_6),
	.s25 /* OUT */ (unused_7),
	.s26 /* OUT */ (unused_8),
	.s27 /* OUT */ (unused_9),
	.s28 /* OUT */ (unused_10),
	.s29 /* OUT */ (unused_11),
	.s30 /* OUT */ (unused_12),
	.s31 /* OUT */ (unused_13),
	.co0 /* OUT */ (unused_14),
	.co1 /* OUT */ (unused_15),
	.ci0 /* IN */ (adcy2a),
	.ci1 /* IN */ (adcy2b),
	.a0 /* IN */ (shup_2),
	.b0 /* IN */ (base[3]),
	.c0 /* IN */ (phradr_3),
	.a1 /* IN */ (shup_3),
	.b1 /* IN */ (base[4]),
	.c1 /* IN */ (phradr_4),
	.a2 /* IN */ (shup_4),
	.b2 /* IN */ (base[5]),
	.c2 /* IN */ (phradr_5),
	.a3 /* IN */ (shup_5),
	.b3 /* IN */ (base[6]),
	.c3 /* IN */ (phradr_6),
	.a4 /* IN */ (shup_6),
	.b4 /* IN */ (base[7]),
	.c4 /* IN */ (phradr_7),
	.a5 /* IN */ (shup_7),
	.b5 /* IN */ (base[8]),
	.c5 /* IN */ (phradr_8),
	.a6 /* IN */ (shup_8),
	.b6 /* IN */ (base[9]),
	.c6 /* IN */ (phradr_9),
	.a7 /* IN */ (shup_9),
	.b7 /* IN */ (base[10]),
	.c7 /* IN */ (phradr_10),
	.a8 /* IN */ (shup_10),
	.b8 /* IN */ (base[11]),
	.c8 /* IN */ (phradr_11),
	.a9 /* IN */ (shup_11),
	.b9 /* IN */ (base[12]),
	.c9 /* IN */ (phradr_12),
	.a10 /* IN */ (shup_12),
	.b10 /* IN */ (base[13]),
	.c10 /* IN */ (phradr_13),
	.a11 /* IN */ (shup_13),
	.b11 /* IN */ (base[14]),
	.c11 /* IN */ (phradr_14),
	.a12 /* IN */ (shup_14),
	.b12 /* IN */ (base[15]),
	.c12 /* IN */ (phradr_15),
	.a13 /* IN */ (shup_15),
	.b13 /* IN */ (base[16]),
	.c13 /* IN */ (phradr_16),
	.a14 /* IN */ (shup_16),
	.b14 /* IN */ (base[17]),
	.c14 /* IN */ (phradr_17),
	.a15 /* IN */ (shup_17),
	.b15 /* IN */ (base[18]),
	.c15 /* IN */ (phradr_18),
	.a16 /* IN */ (shup_18),
	.b16 /* IN */ (base[19]),
	.c16 /* IN */ (phradr_19),
	.a17 /* IN */ (shup_19),
	.b17 /* IN */ (base[20]),
	.c17 /* IN */ (phradr_20),
	.a18 /* IN */ (zero),
	.b18 /* IN */ (zero),
	.c18 /* IN */ (zero),
	.a19 /* IN */ (zero),
	.b19 /* IN */ (zero),
	.c19 /* IN */ (zero),
	.a20 /* IN */ (zero),
	.b20 /* IN */ (zero),
	.c20 /* IN */ (zero),
	.a21 /* IN */ (zero),
	.b21 /* IN */ (zero),
	.c21 /* IN */ (zero),
	.a22 /* IN */ (zero),
	.b22 /* IN */ (zero),
	.c22 /* IN */ (zero),
	.a23 /* IN */ (zero),
	.b23 /* IN */ (zero),
	.c23 /* IN */ (zero),
	.a24 /* IN */ (zero),
	.b24 /* IN */ (zero),
	.c24 /* IN */ (zero),
	.a25 /* IN */ (zero),
	.b25 /* IN */ (zero),
	.c25 /* IN */ (zero),
	.a26 /* IN */ (zero),
	.b26 /* IN */ (zero),
	.c26 /* IN */ (zero),
	.a27 /* IN */ (zero),
	.b27 /* IN */ (zero),
	.c27 /* IN */ (zero),
	.a28 /* IN */ (zero),
	.b28 /* IN */ (zero),
	.c28 /* IN */ (zero),
	.a29 /* IN */ (zero),
	.b29 /* IN */ (zero),
	.c29 /* IN */ (zero),
	.a30 /* IN */ (zero),
	.b30 /* IN */ (zero),
	.c30 /* IN */ (zero),
	.a31 /* IN */ (zero),
	.b31 /* IN */ (zero),
	.c31 /* IN */ (zero)
);

// ADDRGEN.NET (356) - addrgen : join
assign addrgen[0] = pixa_3;
assign addrgen[1] = pixa_4;
assign addrgen[2] = pixa_5;
assign addrgen[3] = addr_0;
assign addrgen[4] = addr_1;
assign addrgen[5] = addr_2;
assign addrgen[6] = addr_3;
assign addrgen[7] = addr_4;
assign addrgen[8] = addr_5;
assign addrgen[9] = addr_6;
assign addrgen[10] = addr_7;
assign addrgen[11] = addr_8;
assign addrgen[12] = addr_9;
assign addrgen[13] = addr_10;
assign addrgen[14] = addr_11;
assign addrgen[15] = addr_12;
assign addrgen[16] = addr_13;
assign addrgen[17] = addr_14;
assign addrgen[18] = addr_15;
assign addrgen[19] = addr_16;
assign addrgen[20] = addr_17;
assign addrgen[21] = addr_18;
assign addrgen[22] = addr_19;
assign addrgen[23] = addr_20;

// ADDRGEN.NET (360) - apipeb : nivu
assign apipeb = apipe;

// ADDRGEN.NET (361) - addressi : mx2p
assign address_b0_obuf = (apipeb) ? addrgen[0] : addressi[0];
assign address_b1_obuf = (apipeb) ? addrgen[1] : addressi[1];
assign address_b2_obuf = (apipeb) ? addrgen[2] : addressi[2];
assign address_b3_obuf = (apipeb) ? addrgen[3] : addressi[3];
assign address_b4_obuf = (apipeb) ? addrgen[4] : addressi[4];
assign address_b5_obuf = (apipeb) ? addrgen[5] : addressi[5];
assign address_b6_obuf = (apipeb) ? addrgen[6] : addressi[6];
assign address_b7_obuf = (apipeb) ? addrgen[7] : addressi[7];
assign address_b8_obuf = (apipeb) ? addrgen[8] : addressi[8];
assign address_b9_obuf = (apipeb) ? addrgen[9] : addressi[9];
assign address_b10_obuf = (apipeb) ? addrgen[10] : addressi[10];
assign address_b11_obuf = (apipeb) ? addrgen[11] : addressi[11];
assign address_b12_obuf = (apipeb) ? addrgen[12] : addressi[12];
assign address_b13_obuf = (apipeb) ? addrgen[13] : addressi[13];
assign address_b14_obuf = (apipeb) ? addrgen[14] : addressi[14];
assign address_b15_obuf = (apipeb) ? addrgen[15] : addressi[15];
assign address_b16_obuf = (apipeb) ? addrgen[16] : addressi[16];
assign address_b17_obuf = (apipeb) ? addrgen[17] : addressi[17];
assign address_b18_obuf = (apipeb) ? addrgen[18] : addressi[18];
assign address_b19_obuf = (apipeb) ? addrgen[19] : addressi[19];
assign address_b20_obuf = (apipeb) ? addrgen[20] : addressi[20];
assign address_b21_obuf = (apipeb) ? addrgen[21] : addressi[21];
assign address_b22_obuf = (apipeb) ? addrgen[22] : addressi[22];
assign address_b23_obuf = (apipeb) ? addrgen[23] : addressi[23];

// ADDRGEN.NET (362) - address : fd1q
fd1q address_inst_0
(
	.q /* OUT */ (addressi[0]),
	.d /* IN */ (address_b0_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_1
(
	.q /* OUT */ (addressi[1]),
	.d /* IN */ (address_b1_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_2
(
	.q /* OUT */ (addressi[2]),
	.d /* IN */ (address_b2_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_3
(
	.q /* OUT */ (addressi[3]),
	.d /* IN */ (address_b3_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_4
(
	.q /* OUT */ (addressi[4]),
	.d /* IN */ (address_b4_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_5
(
	.q /* OUT */ (addressi[5]),
	.d /* IN */ (address_b5_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_6
(
	.q /* OUT */ (addressi[6]),
	.d /* IN */ (address_b6_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_7
(
	.q /* OUT */ (addressi[7]),
	.d /* IN */ (address_b7_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_8
(
	.q /* OUT */ (addressi[8]),
	.d /* IN */ (address_b8_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_9
(
	.q /* OUT */ (addressi[9]),
	.d /* IN */ (address_b9_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_10
(
	.q /* OUT */ (addressi[10]),
	.d /* IN */ (address_b10_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_11
(
	.q /* OUT */ (addressi[11]),
	.d /* IN */ (address_b11_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_12
(
	.q /* OUT */ (addressi[12]),
	.d /* IN */ (address_b12_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_13
(
	.q /* OUT */ (addressi[13]),
	.d /* IN */ (address_b13_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_14
(
	.q /* OUT */ (addressi[14]),
	.d /* IN */ (address_b14_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_15
(
	.q /* OUT */ (addressi[15]),
	.d /* IN */ (address_b15_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_16
(
	.q /* OUT */ (addressi[16]),
	.d /* IN */ (address_b16_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_17
(
	.q /* OUT */ (addressi[17]),
	.d /* IN */ (address_b17_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_18
(
	.q /* OUT */ (addressi[18]),
	.d /* IN */ (address_b18_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_19
(
	.q /* OUT */ (addressi[19]),
	.d /* IN */ (address_b19_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_20
(
	.q /* OUT */ (addressi[20]),
	.d /* IN */ (address_b20_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_21
(
	.q /* OUT */ (addressi[21]),
	.d /* IN */ (address_b21_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_22
(
	.q /* OUT */ (addressi[22]),
	.d /* IN */ (address_b22_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q address_inst_23
(
	.q /* OUT */ (addressi[23]),
	.d /* IN */ (address_b23_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ADDRGEN.NET (364) - unused[0-15] : dummy
endmodule
/* verilator lint_on LITENDIAN */
