/* verilator lint_off LITENDIAN */
`include "defs.v"

module pix
(
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input dd,
	input vactive,
	input blank,
	input nextpixa,
	input nextpixd,
	input cry16,
	input rgb24,
	input rg16,
	input lbrd_0,
	input lbrd_1,
	input lbrd_2,
	input lbrd_3,
	input lbrd_4,
	input lbrd_5,
	input lbrd_6,
	input lbrd_7,
	input lbrd_8,
	input lbrd_9,
	input lbrd_10,
	input lbrd_11,
	input lbrd_12,
	input lbrd_13,
	input lbrd_14,
	input lbrd_15,
	input lbrd_16,
	input lbrd_17,
	input lbrd_18,
	input lbrd_19,
	input lbrd_20,
	input lbrd_21,
	input lbrd_22,
	input lbrd_23,
	input lbrd_24,
	input lbrd_25,
	input lbrd_26,
	input lbrd_27,
	input lbrd_28,
	input lbrd_29,
	input lbrd_30,
	input lbrd_31,
	input lbraw,
	input lbrar,
	input bcrgwr,
	input bcbwr,
	input resetl,
	input vclk,
	input gnd,
	input mptest,
	input incen,
	input binc,
	input lp,
	input rgb16,
	input varmod,
	input word2,
	input pp,
	output lbra_0,
	output lbra_1,
	output lbra_2,
	output lbra_3,
	output lbra_4,
	output lbra_5,
	output lbra_6,
	output lbra_7,
	output lbra_8,
	output r_0,
	output r_1,
	output r_2,
	output r_3,
	output r_4,
	output r_5,
	output r_6,
	output r_7,
	output g_0,
	output g_1,
	output g_2,
	output g_3,
	output g_4,
	output g_5,
	output g_6,
	output g_7,
	output b_0,
	output b_1,
	output b_2,
	output b_3,
	output b_4,
	output b_5,
	output b_6,
	output b_7,
	output inc,
	output dr_0_out,
	output dr_0_oe,
	input dr_0_in,
	output dr_1_out,
	output dr_1_oe,
	input dr_1_in,
	output dr_2_out,
	output dr_2_oe,
	input dr_2_in,
	output dr_3_out,
	output dr_3_oe,
	input dr_3_in,
	output dr_4_out,
	output dr_4_oe,
	input dr_4_in,
	output dr_5_out,
	output dr_5_oe,
	input dr_5_in,
	output dr_6_out,
	output dr_6_oe,
	input dr_6_in,
	output dr_7_out,
	output dr_7_oe,
	input dr_7_in,
	output dr_8_out,
	output dr_8_oe,
	input dr_8_in,
	input sys_clk // Generated
);
wire [0:7] red;
wire [0:7] green;
wire [0:7] blue;
wire [0:8] lbra;
wire [0:31] pd1_d;
wire [0:31] lbrd_d;
wire ddl;
wire lbres;
wire co_0;
wire co_1;
wire co_2;
wire co_3;
wire co_4;
wire co_5;
wire co_6;
wire co_7;
wire co_8;
wire nextpixb;
wire pd1_0;
wire pd1_1;
wire pd1_2;
wire pd1_3;
wire pd1_4;
wire pd1_5;
wire pd1_6;
wire pd1_7;
wire pd1_8;
wire pd1_9;
wire pd1_10;
wire pd1_11;
wire pd1_12;
wire pd1_13;
wire pd1_14;
wire pd1_15;
wire pd1_16;
wire pd1_17;
wire pd1_18;
wire pd1_19;
wire pd1_20;
wire pd1_21;
wire pd1_22;
wire pd1_23;
wire pd1_24;
wire pd1_25;
wire pd1_26;
wire pd1_27;
wire pd1_28;
wire pd1_29;
wire pd1_30;
wire pd1_31;
wire word2b;
wire pd2_0;
wire pd2_1;
wire pd2_2;
wire pd2_3;
wire pd2_4;
wire pd2_5;
wire pd2_6;
wire pd2_7;
wire pd2_8;
wire pd2_9;
wire pd2_10;
wire pd2_11;
wire pd2_12;
wire pd2_13;
wire pd2_14;
wire pd2_15;
wire rgb0;
wire rgb1;
wire rgb;
wire ppdi;
wire ppd;
wire pd3_0;
wire pd3_1;
wire pd3_2;
wire pd3_3;
wire pd3_4;
wire pd3_5;
wire pd3_6;
wire pd3_7;
wire pd3_8;
wire pd3_9;
wire pd3_10;
wire pd3_11;
wire pd3_12;
wire pd3_13;
wire pd3_14;
wire pd3_15;
wire pd3_16;
wire pd3_17;
wire pd3_18;
wire pd3_19;
wire pd3_20;
wire pd3_21;
wire pd3_22;
wire pd3_23;
wire pd20;
wire lpb;
wire pd4_0;
wire pd4_1;
wire pd4_2;
wire pd4_3;
wire pd4_4;
wire pd4_5;
wire pd4_6;
wire pd4_7;
wire pd4_8;
wire pd4_9;
wire pd4_10;
wire pd4_11;
wire pd4_12;
wire pd4_13;
wire pd4_14;
wire pd4_15;
wire bc_0;
wire bc_1;
wire bc_2;
wire bc_3;
wire bc_4;
wire bc_5;
wire bc_6;
wire bc_7;
wire bc_8;
wire bc_9;
wire bc_10;
wire bc_11;
wire bc_12;
wire bc_13;
wire bc_14;
wire bc_15;
wire bc_16;
wire bc_17;
wire bc_18;
wire bc_19;
wire bc_20;
wire bc_21;
wire bc_22;
wire bc_23;
wire sxp;
wire notvactive;
wire bord1;
wire bord2;
wire bord3;
wire border;
wire blankl;
wire borderl;
wire s1i;
wire s1;
wire s01;
wire s0i;
wire s0;
wire pd5_0;
wire pd5_1;
wire pd5_2;
wire pd5_3;
wire pd5_4;
wire pd5_5;
wire pd5_6;
wire pd5_7;
wire pd5_8;
wire pd5_9;
wire pd5_10;
wire pd5_11;
wire pd5_12;
wire pd5_13;
wire pd5_14;
wire pd5_15;
wire pd5_16;
wire pd5_17;
wire pd5_18;
wire pd5_19;
wire pd5_20;
wire pd5_21;
wire pd5_22;
wire pd5_23;
wire pd6_0;
wire pd6_1;
wire pd6_2;
wire pd6_3;
wire pd6_4;
wire pd6_5;
wire pd6_6;
wire pd6_7;
wire pd6_8;
wire pd6_9;
wire pd6_10;
wire pd6_11;
wire pd6_12;
wire pd6_13;
wire pd6_14;
wire pd6_15;
wire pd6_16;
wire pd6_17;
wire pd6_18;
wire pd6_19;
wire pd6_20;
wire pd6_21;
wire pd6_22;
wire pd6_23;
wire inc1;
wire inc2;
wire inc3;
wire inc4;
wire inc5;
wire notincen;
wire notvarmod;

// Output buffers
wire lbra_0_obuf;
wire lbra_1_obuf;
wire lbra_2_obuf;
wire lbra_3_obuf;
wire lbra_4_obuf;
wire lbra_5_obuf;
wire lbra_6_obuf;
wire lbra_7_obuf;
wire lbra_8_obuf;
wire r_0_obuf;
wire r_1_obuf;
wire r_2_obuf;
wire r_3_obuf;
wire r_4_obuf;
wire r_5_obuf;
wire r_6_obuf;
wire r_7_obuf;
wire g_0_obuf;
wire g_1_obuf;
wire g_2_obuf;
wire g_3_obuf;
wire g_4_obuf;
wire g_5_obuf;
wire g_6_obuf;
wire g_7_obuf;
wire b_0_obuf;
wire b_1_obuf;
wire b_2_obuf;
wire b_3_obuf;
wire b_4_obuf;
wire b_5_obuf;
wire b_6_obuf;
wire b_7_obuf;


// Output buffers
assign lbra_0 = lbra_0_obuf;
assign lbra_1 = lbra_1_obuf;
assign lbra_2 = lbra_2_obuf;
assign lbra_3 = lbra_3_obuf;
assign lbra_4 = lbra_4_obuf;
assign lbra_5 = lbra_5_obuf;
assign lbra_6 = lbra_6_obuf;
assign lbra_7 = lbra_7_obuf;
assign lbra_8 = lbra_8_obuf;
assign r_0 = r_0_obuf;
assign r_1 = r_1_obuf;
assign r_2 = r_2_obuf;
assign r_3 = r_3_obuf;
assign r_4 = r_4_obuf;
assign r_5 = r_5_obuf;
assign r_6 = r_6_obuf;
assign r_7 = r_7_obuf;
assign g_0 = g_0_obuf;
assign g_1 = g_1_obuf;
assign g_2 = g_2_obuf;
assign g_3 = g_3_obuf;
assign g_4 = g_4_obuf;
assign g_5 = g_5_obuf;
assign g_6 = g_6_obuf;
assign g_7 = g_7_obuf;
assign b_0 = b_0_obuf;
assign b_1 = b_1_obuf;
assign b_2 = b_2_obuf;
assign b_3 = b_3_obuf;
assign b_4 = b_4_obuf;
assign b_5 = b_5_obuf;
assign b_6 = b_6_obuf;
assign b_7 = b_7_obuf;


// PIX.NET (28) - red : join
assign red[0] = r_0_obuf;
assign red[1] = r_1_obuf;
assign red[2] = r_2_obuf;
assign red[3] = r_3_obuf;
assign red[4] = r_4_obuf;
assign red[5] = r_5_obuf;
assign red[6] = r_6_obuf;
assign red[7] = r_7_obuf;

// PIX.NET (29) - green : join
assign green[0] = g_0_obuf;
assign green[1] = g_1_obuf;
assign green[2] = g_2_obuf;
assign green[3] = g_3_obuf;
assign green[4] = g_4_obuf;
assign green[5] = g_5_obuf;
assign green[6] = g_6_obuf;
assign green[7] = g_7_obuf;

// PIX.NET (30) - blue : join
assign blue[0] = b_0_obuf;
assign blue[1] = b_1_obuf;
assign blue[2] = b_2_obuf;
assign blue[3] = b_3_obuf;
assign blue[4] = b_4_obuf;
assign blue[5] = b_5_obuf;
assign blue[6] = b_6_obuf;
assign blue[7] = b_7_obuf;

// PIX.NET (31) - ru : dummy

// PIX.NET (32) - gu : dummy

// PIX.NET (33) - bu : dummy

// PIX.NET (34) - lbra : join
assign lbra[0] = lbra_0_obuf;
assign lbra[1] = lbra_1_obuf;
assign lbra[2] = lbra_2_obuf;
assign lbra[3] = lbra_3_obuf;
assign lbra[4] = lbra_4_obuf;
assign lbra[5] = lbra_5_obuf;
assign lbra[6] = lbra_6_obuf;
assign lbra[7] = lbra_7_obuf;
assign lbra[8] = lbra_8_obuf;

// PIX.NET (35) - lbrau : dummy

// PIX.NET (39) - startdl : iv
assign ddl = ~dd;

// PIX.NET (40) - lbresl : nd2x2
assign lbres = ~(ddl & resetl);

// PIX.NET (41) - lbra[0] : upcnts
upcnts lbra_index_0_inst
(
	.q /* OUT */ (lbra_0_obuf),
	.co /* OUT */ (co_0),
	.d /* IN */ (din_0),
	.clk /* IN */ (vclk),
	.ci /* IN */ (nextpixa),
	.ld /* IN */ (lbraw),
	.res /* IN */ (lbres),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (42) - lbra[1-8] : upcnts
upcnts lbra_from_1_to_8_inst_0
(
	.q /* OUT */ (lbra_1_obuf),
	.co /* OUT */ (co_1),
	.d /* IN */ (din_1),
	.clk /* IN */ (vclk),
	.ci /* IN */ (co_0),
	.ld /* IN */ (lbraw),
	.res /* IN */ (lbres),
	.sys_clk(sys_clk) // Generated
);
upcnts lbra_from_1_to_8_inst_1
(
	.q /* OUT */ (lbra_2_obuf),
	.co /* OUT */ (co_2),
	.d /* IN */ (din_2),
	.clk /* IN */ (vclk),
	.ci /* IN */ (co_1),
	.ld /* IN */ (lbraw),
	.res /* IN */ (lbres),
	.sys_clk(sys_clk) // Generated
);
upcnts lbra_from_1_to_8_inst_2
(
	.q /* OUT */ (lbra_3_obuf),
	.co /* OUT */ (co_3),
	.d /* IN */ (din_3),
	.clk /* IN */ (vclk),
	.ci /* IN */ (co_2),
	.ld /* IN */ (lbraw),
	.res /* IN */ (lbres),
	.sys_clk(sys_clk) // Generated
);
upcnts lbra_from_1_to_8_inst_3
(
	.q /* OUT */ (lbra_4_obuf),
	.co /* OUT */ (co_4),
	.d /* IN */ (din_4),
	.clk /* IN */ (vclk),
	.ci /* IN */ (co_3),
	.ld /* IN */ (lbraw),
	.res /* IN */ (lbres),
	.sys_clk(sys_clk) // Generated
);
upcnts lbra_from_1_to_8_inst_4
(
	.q /* OUT */ (lbra_5_obuf),
	.co /* OUT */ (co_5),
	.d /* IN */ (din_5),
	.clk /* IN */ (vclk),
	.ci /* IN */ (co_4),
	.ld /* IN */ (lbraw),
	.res /* IN */ (lbres),
	.sys_clk(sys_clk) // Generated
);
upcnts lbra_from_1_to_8_inst_5
(
	.q /* OUT */ (lbra_6_obuf),
	.co /* OUT */ (co_6),
	.d /* IN */ (din_6),
	.clk /* IN */ (vclk),
	.ci /* IN */ (co_5),
	.ld /* IN */ (lbraw),
	.res /* IN */ (lbres),
	.sys_clk(sys_clk) // Generated
);
upcnts lbra_from_1_to_8_inst_6
(
	.q /* OUT */ (lbra_7_obuf),
	.co /* OUT */ (co_7),
	.d /* IN */ (din_7),
	.clk /* IN */ (vclk),
	.ci /* IN */ (co_6),
	.ld /* IN */ (lbraw),
	.res /* IN */ (lbres),
	.sys_clk(sys_clk) // Generated
);
upcnts lbra_from_1_to_8_inst_7
(
	.q /* OUT */ (lbra_8_obuf),
	.co /* OUT */ (co_8),
	.d /* IN */ (din_8),
	.clk /* IN */ (vclk),
	.ci /* IN */ (co_7),
	.ld /* IN */ (lbraw),
	.res /* IN */ (lbres),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (43) - co8 : dummy

// PIX.NET (45) - lbrad[0-8] : ts
assign dr_0_out = lbra_0_obuf;
assign dr_0_oe = lbrar;
assign dr_1_out = lbra_1_obuf;
assign dr_1_oe = lbrar;
assign dr_2_out = lbra_2_obuf;
assign dr_2_oe = lbrar;
assign dr_3_out = lbra_3_obuf;
assign dr_3_oe = lbrar;
assign dr_4_out = lbra_4_obuf;
assign dr_4_oe = lbrar;
assign dr_5_out = lbra_5_obuf;
assign dr_5_oe = lbrar;
assign dr_6_out = lbra_6_obuf;
assign dr_6_oe = lbrar;
assign dr_7_out = lbra_7_obuf;
assign dr_7_oe = lbrar;
assign dr_8_out = lbra_8_obuf;
assign dr_8_oe = lbrar;

// PIX.NET (49) - nextpixb : nivu2
assign nextpixb = nextpixd;

// PIX.NET (50) - pd1[0-31] : slatch
slatch pd1_from_0_to_31_inst_0
(
	.q /* OUT */ (pd1_0),
	.d /* IN */ (lbrd_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_1
(
	.q /* OUT */ (pd1_1),
	.d /* IN */ (lbrd_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_2
(
	.q /* OUT */ (pd1_2),
	.d /* IN */ (lbrd_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_3
(
	.q /* OUT */ (pd1_3),
	.d /* IN */ (lbrd_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_4
(
	.q /* OUT */ (pd1_4),
	.d /* IN */ (lbrd_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_5
(
	.q /* OUT */ (pd1_5),
	.d /* IN */ (lbrd_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_6
(
	.q /* OUT */ (pd1_6),
	.d /* IN */ (lbrd_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_7
(
	.q /* OUT */ (pd1_7),
	.d /* IN */ (lbrd_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_8
(
	.q /* OUT */ (pd1_8),
	.d /* IN */ (lbrd_8),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_9
(
	.q /* OUT */ (pd1_9),
	.d /* IN */ (lbrd_9),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_10
(
	.q /* OUT */ (pd1_10),
	.d /* IN */ (lbrd_10),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_11
(
	.q /* OUT */ (pd1_11),
	.d /* IN */ (lbrd_11),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_12
(
	.q /* OUT */ (pd1_12),
	.d /* IN */ (lbrd_12),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_13
(
	.q /* OUT */ (pd1_13),
	.d /* IN */ (lbrd_13),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_14
(
	.q /* OUT */ (pd1_14),
	.d /* IN */ (lbrd_14),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_15
(
	.q /* OUT */ (pd1_15),
	.d /* IN */ (lbrd_15),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_16
(
	.q /* OUT */ (pd1_16),
	.d /* IN */ (lbrd_16),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_17
(
	.q /* OUT */ (pd1_17),
	.d /* IN */ (lbrd_17),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_18
(
	.q /* OUT */ (pd1_18),
	.d /* IN */ (lbrd_18),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_19
(
	.q /* OUT */ (pd1_19),
	.d /* IN */ (lbrd_19),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_20
(
	.q /* OUT */ (pd1_20),
	.d /* IN */ (lbrd_20),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_21
(
	.q /* OUT */ (pd1_21),
	.d /* IN */ (lbrd_21),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_22
(
	.q /* OUT */ (pd1_22),
	.d /* IN */ (lbrd_22),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_23
(
	.q /* OUT */ (pd1_23),
	.d /* IN */ (lbrd_23),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_24
(
	.q /* OUT */ (pd1_24),
	.d /* IN */ (lbrd_24),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_25
(
	.q /* OUT */ (pd1_25),
	.d /* IN */ (lbrd_25),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_26
(
	.q /* OUT */ (pd1_26),
	.d /* IN */ (lbrd_26),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_27
(
	.q /* OUT */ (pd1_27),
	.d /* IN */ (lbrd_27),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_28
(
	.q /* OUT */ (pd1_28),
	.d /* IN */ (lbrd_28),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_29
(
	.q /* OUT */ (pd1_29),
	.d /* IN */ (lbrd_29),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_30
(
	.q /* OUT */ (pd1_30),
	.d /* IN */ (lbrd_30),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);
slatch pd1_from_0_to_31_inst_31
(
	.q /* OUT */ (pd1_31),
	.d /* IN */ (lbrd_31),
	.clk /* IN */ (vclk),
	.en /* IN */ (nextpixb),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (53) - ge1 : join
assign pd1_d[0] = pd1_0;
assign pd1_d[1] = pd1_1;
assign pd1_d[2] = pd1_2;
assign pd1_d[3] = pd1_3;
assign pd1_d[4] = pd1_4;
assign pd1_d[5] = pd1_5;
assign pd1_d[6] = pd1_6;
assign pd1_d[7] = pd1_7;
assign pd1_d[8] = pd1_8;
assign pd1_d[9] = pd1_9;
assign pd1_d[10] = pd1_10;
assign pd1_d[11] = pd1_11;
assign pd1_d[12] = pd1_12;
assign pd1_d[13] = pd1_13;
assign pd1_d[14] = pd1_14;
assign pd1_d[15] = pd1_15;
assign pd1_d[16] = pd1_16;
assign pd1_d[17] = pd1_17;
assign pd1_d[18] = pd1_18;
assign pd1_d[19] = pd1_19;
assign pd1_d[20] = pd1_20;
assign pd1_d[21] = pd1_21;
assign pd1_d[22] = pd1_22;
assign pd1_d[23] = pd1_23;
assign pd1_d[24] = pd1_24;
assign pd1_d[25] = pd1_25;
assign pd1_d[26] = pd1_26;
assign pd1_d[27] = pd1_27;
assign pd1_d[28] = pd1_28;
assign pd1_d[29] = pd1_29;
assign pd1_d[30] = pd1_30;
assign pd1_d[31] = pd1_31;

// PIX.NET (54) - ge2 : dummy

// PIX.NET (55) - ge3 : join
assign lbrd_d[0] = lbrd_0;
assign lbrd_d[1] = lbrd_1;
assign lbrd_d[2] = lbrd_2;
assign lbrd_d[3] = lbrd_3;
assign lbrd_d[4] = lbrd_4;
assign lbrd_d[5] = lbrd_5;
assign lbrd_d[6] = lbrd_6;
assign lbrd_d[7] = lbrd_7;
assign lbrd_d[8] = lbrd_8;
assign lbrd_d[9] = lbrd_9;
assign lbrd_d[10] = lbrd_10;
assign lbrd_d[11] = lbrd_11;
assign lbrd_d[12] = lbrd_12;
assign lbrd_d[13] = lbrd_13;
assign lbrd_d[14] = lbrd_14;
assign lbrd_d[15] = lbrd_15;
assign lbrd_d[16] = lbrd_16;
assign lbrd_d[17] = lbrd_17;
assign lbrd_d[18] = lbrd_18;
assign lbrd_d[19] = lbrd_19;
assign lbrd_d[20] = lbrd_20;
assign lbrd_d[21] = lbrd_21;
assign lbrd_d[22] = lbrd_22;
assign lbrd_d[23] = lbrd_23;
assign lbrd_d[24] = lbrd_24;
assign lbrd_d[25] = lbrd_25;
assign lbrd_d[26] = lbrd_26;
assign lbrd_d[27] = lbrd_27;
assign lbrd_d[28] = lbrd_28;
assign lbrd_d[29] = lbrd_29;
assign lbrd_d[30] = lbrd_30;
assign lbrd_d[31] = lbrd_31;

// PIX.NET (56) - ge4 : dummy

// PIX.NET (61) - word2b : nivu2
assign word2b = word2;

// PIX.NET (62) - pd2[0-15] : mx2m
assign pd2_0 = (word2b) ? pd1_16 : pd1_0;
assign pd2_1 = (word2b) ? pd1_17 : pd1_1;
assign pd2_2 = (word2b) ? pd1_18 : pd1_2;
assign pd2_3 = (word2b) ? pd1_19 : pd1_3;
assign pd2_4 = (word2b) ? pd1_20 : pd1_4;
assign pd2_5 = (word2b) ? pd1_21 : pd1_5;
assign pd2_6 = (word2b) ? pd1_22 : pd1_6;
assign pd2_7 = (word2b) ? pd1_23 : pd1_7;
assign pd2_8 = (word2b) ? pd1_24 : pd1_8;
assign pd2_9 = (word2b) ? pd1_25 : pd1_9;
assign pd2_10 = (word2b) ? pd1_26 : pd1_10;
assign pd2_11 = (word2b) ? pd1_27 : pd1_11;
assign pd2_12 = (word2b) ? pd1_28 : pd1_12;
assign pd2_13 = (word2b) ? pd1_29 : pd1_13;
assign pd2_14 = (word2b) ? pd1_30 : pd1_14;
assign pd2_15 = (word2b) ? pd1_31 : pd1_15;

// PIX.NET (70) - rgb0 : iv
assign rgb0 = ~rgb16;

// PIX.NET (71) - rgb1 : nd2
assign rgb1 = ~(varmod & pd2_0);

// PIX.NET (72) - rgb : nd2
assign rgb = ~(rgb0 & rgb1);

// PIX.NET (79) - ppdi : fd1q
fd1q ppdi_inst
(
	.q /* OUT */ (ppdi),
	.d /* IN */ (pp),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (80) - ppd : nivu
assign ppd = ppdi;

// PIX.NET (82) - pd3 : cryrgb
cryrgb pd3_inst
(
	.r_0 /* OUT */ (pd3_0),
	.r_1 /* OUT */ (pd3_1),
	.r_2 /* OUT */ (pd3_2),
	.r_3 /* OUT */ (pd3_3),
	.r_4 /* OUT */ (pd3_4),
	.r_5 /* OUT */ (pd3_5),
	.r_6 /* OUT */ (pd3_6),
	.r_7 /* OUT */ (pd3_7),
	.g_0 /* OUT */ (pd3_8),
	.g_1 /* OUT */ (pd3_9),
	.g_2 /* OUT */ (pd3_10),
	.g_3 /* OUT */ (pd3_11),
	.g_4 /* OUT */ (pd3_12),
	.g_5 /* OUT */ (pd3_13),
	.g_6 /* OUT */ (pd3_14),
	.g_7 /* OUT */ (pd3_15),
	.b_0 /* OUT */ (pd3_16),
	.b_1 /* OUT */ (pd3_17),
	.b_2 /* OUT */ (pd3_18),
	.b_3 /* OUT */ (pd3_19),
	.b_4 /* OUT */ (pd3_20),
	.b_5 /* OUT */ (pd3_21),
	.b_6 /* OUT */ (pd3_22),
	.b_7 /* OUT */ (pd3_23),
	.cry_0 /* IN */ (pd20),
	.cry_1 /* IN */ (pd2_1),
	.cry_2 /* IN */ (pd2_2),
	.cry_3 /* IN */ (pd2_3),
	.cry_4 /* IN */ (pd2_4),
	.cry_5 /* IN */ (pd2_5),
	.cry_6 /* IN */ (pd2_6),
	.cry_7 /* IN */ (pd2_7),
	.cry_8 /* IN */ (pd2_8),
	.cry_9 /* IN */ (pd2_9),
	.cry_10 /* IN */ (pd2_10),
	.cry_11 /* IN */ (pd2_11),
	.cry_12 /* IN */ (pd2_12),
	.cry_13 /* IN */ (pd2_13),
	.cry_14 /* IN */ (pd2_14),
	.cry_15 /* IN */ (pd2_15),
	.vclk /* IN */ (vclk),
	.mptest /* IN */ (mptest),
	.rgb /* IN */ (rgb),
	.ppd /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (87) - lpb : nivh
assign lpb = lp;

// PIX.NET (88) - pd4[0-15] : mx2
assign pd4_0 = (lpb) ? pd1_0 : pd1_16;
assign pd4_1 = (lpb) ? pd1_1 : pd1_17;
assign pd4_2 = (lpb) ? pd1_2 : pd1_18;
assign pd4_3 = (lpb) ? pd1_3 : pd1_19;
assign pd4_4 = (lpb) ? pd1_4 : pd1_20;
assign pd4_5 = (lpb) ? pd1_5 : pd1_21;
assign pd4_6 = (lpb) ? pd1_6 : pd1_22;
assign pd4_7 = (lpb) ? pd1_7 : pd1_23;
assign pd4_8 = (lpb) ? pd1_8 : pd1_24;
assign pd4_9 = (lpb) ? pd1_9 : pd1_25;
assign pd4_10 = (lpb) ? pd1_10 : pd1_26;
assign pd4_11 = (lpb) ? pd1_11 : pd1_27;
assign pd4_12 = (lpb) ? pd1_12 : pd1_28;
assign pd4_13 = (lpb) ? pd1_13 : pd1_29;
assign pd4_14 = (lpb) ? pd1_14 : pd1_30;
assign pd4_15 = (lpb) ? pd1_15 : pd1_31;

// PIX.NET (92) - bc[0-15] : ldp1q
ldp1q bc_from_0_to_15_inst_0
(
	.q /* OUT */ (bc_0),
	.d /* IN */ (din_0),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_1
(
	.q /* OUT */ (bc_1),
	.d /* IN */ (din_1),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_2
(
	.q /* OUT */ (bc_2),
	.d /* IN */ (din_2),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_3
(
	.q /* OUT */ (bc_3),
	.d /* IN */ (din_3),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_4
(
	.q /* OUT */ (bc_4),
	.d /* IN */ (din_4),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_5
(
	.q /* OUT */ (bc_5),
	.d /* IN */ (din_5),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_6
(
	.q /* OUT */ (bc_6),
	.d /* IN */ (din_6),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_7
(
	.q /* OUT */ (bc_7),
	.d /* IN */ (din_7),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_8
(
	.q /* OUT */ (bc_8),
	.d /* IN */ (din_8),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_9
(
	.q /* OUT */ (bc_9),
	.d /* IN */ (din_9),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_10
(
	.q /* OUT */ (bc_10),
	.d /* IN */ (din_10),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_11
(
	.q /* OUT */ (bc_11),
	.d /* IN */ (din_11),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_12
(
	.q /* OUT */ (bc_12),
	.d /* IN */ (din_12),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_13
(
	.q /* OUT */ (bc_13),
	.d /* IN */ (din_13),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_14
(
	.q /* OUT */ (bc_14),
	.d /* IN */ (din_14),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_0_to_15_inst_15
(
	.q /* OUT */ (bc_15),
	.d /* IN */ (din_15),
	.g /* IN */ (bcrgwr),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (93) - bc[16-23] : ldp1q
ldp1q bc_from_16_to_23_inst_0
(
	.q /* OUT */ (bc_16),
	.d /* IN */ (din_0),
	.g /* IN */ (bcbwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_16_to_23_inst_1
(
	.q /* OUT */ (bc_17),
	.d /* IN */ (din_1),
	.g /* IN */ (bcbwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_16_to_23_inst_2
(
	.q /* OUT */ (bc_18),
	.d /* IN */ (din_2),
	.g /* IN */ (bcbwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_16_to_23_inst_3
(
	.q /* OUT */ (bc_19),
	.d /* IN */ (din_3),
	.g /* IN */ (bcbwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_16_to_23_inst_4
(
	.q /* OUT */ (bc_20),
	.d /* IN */ (din_4),
	.g /* IN */ (bcbwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_16_to_23_inst_5
(
	.q /* OUT */ (bc_21),
	.d /* IN */ (din_5),
	.g /* IN */ (bcbwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_16_to_23_inst_6
(
	.q /* OUT */ (bc_22),
	.d /* IN */ (din_6),
	.g /* IN */ (bcbwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bc_from_16_to_23_inst_7
(
	.q /* OUT */ (bc_23),
	.d /* IN */ (din_7),
	.g /* IN */ (bcbwr),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (101) - sxp : or2
assign sxp = cry16 | rgb16;

// PIX.NET (102) - vactivel : iv
assign notvactive = ~vactive;

// PIX.NET (103) - bord1 : fd1q
fd1q bord1_inst
(
	.q /* OUT */ (bord1),
	.d /* IN */ (notvactive),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (104) - bord2 : fd1q
fd1q bord2_inst
(
	.q /* OUT */ (bord2),
	.d /* IN */ (bord1),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (105) - bord3 : slatch
slatch bord3_inst
(
	.q /* OUT */ (bord3),
	.d /* IN */ (bord2),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (106) - border : mx2
assign border = (sxp) ? bord3 : bord1;

// PIX.NET (127) - blankl : iv
assign blankl = ~blank;

// PIX.NET (128) - borderl : iv
assign borderl = ~border;

// PIX.NET (130) - s1i : nd2
assign s1i = ~(blankl & borderl);

// PIX.NET (131) - s1 : nivu
assign s1 = s1i;

// PIX.NET (132) - s01 : nd3
assign s01 = ~(blankl & borderl & rgb24);

// PIX.NET (133) - s0i : nd2
assign s0i = ~(s01 & blankl);

// PIX.NET (134) - s0 : nivu
assign s0 = s0i;

// PIX.NET (136) - pd5[0-23] : mx4
mx4 pd5_from_0_to_23_inst_0
(
	.z /* OUT */ (pd5_0),
	.a0 /* IN */ (pd3_0),
	.a1 /* IN */ (pd1_0),
	.a2 /* IN */ (bc_0),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_1
(
	.z /* OUT */ (pd5_1),
	.a0 /* IN */ (pd3_1),
	.a1 /* IN */ (pd1_1),
	.a2 /* IN */ (bc_1),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_2
(
	.z /* OUT */ (pd5_2),
	.a0 /* IN */ (pd3_2),
	.a1 /* IN */ (pd1_2),
	.a2 /* IN */ (bc_2),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_3
(
	.z /* OUT */ (pd5_3),
	.a0 /* IN */ (pd3_3),
	.a1 /* IN */ (pd1_3),
	.a2 /* IN */ (bc_3),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_4
(
	.z /* OUT */ (pd5_4),
	.a0 /* IN */ (pd3_4),
	.a1 /* IN */ (pd1_4),
	.a2 /* IN */ (bc_4),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_5
(
	.z /* OUT */ (pd5_5),
	.a0 /* IN */ (pd3_5),
	.a1 /* IN */ (pd1_5),
	.a2 /* IN */ (bc_5),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_6
(
	.z /* OUT */ (pd5_6),
	.a0 /* IN */ (pd3_6),
	.a1 /* IN */ (pd1_6),
	.a2 /* IN */ (bc_6),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_7
(
	.z /* OUT */ (pd5_7),
	.a0 /* IN */ (pd3_7),
	.a1 /* IN */ (pd1_7),
	.a2 /* IN */ (bc_7),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_8
(
	.z /* OUT */ (pd5_8),
	.a0 /* IN */ (pd3_8),
	.a1 /* IN */ (pd1_8),
	.a2 /* IN */ (bc_8),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_9
(
	.z /* OUT */ (pd5_9),
	.a0 /* IN */ (pd3_9),
	.a1 /* IN */ (pd1_9),
	.a2 /* IN */ (bc_9),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_10
(
	.z /* OUT */ (pd5_10),
	.a0 /* IN */ (pd3_10),
	.a1 /* IN */ (pd1_10),
	.a2 /* IN */ (bc_10),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_11
(
	.z /* OUT */ (pd5_11),
	.a0 /* IN */ (pd3_11),
	.a1 /* IN */ (pd1_11),
	.a2 /* IN */ (bc_11),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_12
(
	.z /* OUT */ (pd5_12),
	.a0 /* IN */ (pd3_12),
	.a1 /* IN */ (pd1_12),
	.a2 /* IN */ (bc_12),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_13
(
	.z /* OUT */ (pd5_13),
	.a0 /* IN */ (pd3_13),
	.a1 /* IN */ (pd1_13),
	.a2 /* IN */ (bc_13),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_14
(
	.z /* OUT */ (pd5_14),
	.a0 /* IN */ (pd3_14),
	.a1 /* IN */ (pd1_14),
	.a2 /* IN */ (bc_14),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_15
(
	.z /* OUT */ (pd5_15),
	.a0 /* IN */ (pd3_15),
	.a1 /* IN */ (pd1_15),
	.a2 /* IN */ (bc_15),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_16
(
	.z /* OUT */ (pd5_16),
	.a0 /* IN */ (pd3_16),
	.a1 /* IN */ (pd1_16),
	.a2 /* IN */ (bc_16),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_17
(
	.z /* OUT */ (pd5_17),
	.a0 /* IN */ (pd3_17),
	.a1 /* IN */ (pd1_17),
	.a2 /* IN */ (bc_17),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_18
(
	.z /* OUT */ (pd5_18),
	.a0 /* IN */ (pd3_18),
	.a1 /* IN */ (pd1_18),
	.a2 /* IN */ (bc_18),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_19
(
	.z /* OUT */ (pd5_19),
	.a0 /* IN */ (pd3_19),
	.a1 /* IN */ (pd1_19),
	.a2 /* IN */ (bc_19),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_20
(
	.z /* OUT */ (pd5_20),
	.a0 /* IN */ (pd3_20),
	.a1 /* IN */ (pd1_20),
	.a2 /* IN */ (bc_20),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_21
(
	.z /* OUT */ (pd5_21),
	.a0 /* IN */ (pd3_21),
	.a1 /* IN */ (pd1_21),
	.a2 /* IN */ (bc_21),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_22
(
	.z /* OUT */ (pd5_22),
	.a0 /* IN */ (pd3_22),
	.a1 /* IN */ (pd1_22),
	.a2 /* IN */ (bc_22),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);
mx4 pd5_from_0_to_23_inst_23
(
	.z /* OUT */ (pd5_23),
	.a0 /* IN */ (pd3_23),
	.a1 /* IN */ (pd1_23),
	.a2 /* IN */ (bc_23),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (s0),
	.s1 /* IN */ (s1)
);

// PIX.NET (140) - pd6[0-23] : fd1q
fd1q pd6_from_0_to_23_inst_0
(
	.q /* OUT */ (pd6_0),
	.d /* IN */ (pd5_0),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_1
(
	.q /* OUT */ (pd6_1),
	.d /* IN */ (pd5_1),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_2
(
	.q /* OUT */ (pd6_2),
	.d /* IN */ (pd5_2),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_3
(
	.q /* OUT */ (pd6_3),
	.d /* IN */ (pd5_3),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_4
(
	.q /* OUT */ (pd6_4),
	.d /* IN */ (pd5_4),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_5
(
	.q /* OUT */ (pd6_5),
	.d /* IN */ (pd5_5),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_6
(
	.q /* OUT */ (pd6_6),
	.d /* IN */ (pd5_6),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_7
(
	.q /* OUT */ (pd6_7),
	.d /* IN */ (pd5_7),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_8
(
	.q /* OUT */ (pd6_8),
	.d /* IN */ (pd5_8),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_9
(
	.q /* OUT */ (pd6_9),
	.d /* IN */ (pd5_9),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_10
(
	.q /* OUT */ (pd6_10),
	.d /* IN */ (pd5_10),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_11
(
	.q /* OUT */ (pd6_11),
	.d /* IN */ (pd5_11),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_12
(
	.q /* OUT */ (pd6_12),
	.d /* IN */ (pd5_12),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_13
(
	.q /* OUT */ (pd6_13),
	.d /* IN */ (pd5_13),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_14
(
	.q /* OUT */ (pd6_14),
	.d /* IN */ (pd5_14),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_15
(
	.q /* OUT */ (pd6_15),
	.d /* IN */ (pd5_15),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_16
(
	.q /* OUT */ (pd6_16),
	.d /* IN */ (pd5_16),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_17
(
	.q /* OUT */ (pd6_17),
	.d /* IN */ (pd5_17),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_18
(
	.q /* OUT */ (pd6_18),
	.d /* IN */ (pd5_18),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_19
(
	.q /* OUT */ (pd6_19),
	.d /* IN */ (pd5_19),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_20
(
	.q /* OUT */ (pd6_20),
	.d /* IN */ (pd5_20),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_21
(
	.q /* OUT */ (pd6_21),
	.d /* IN */ (pd5_21),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_22
(
	.q /* OUT */ (pd6_22),
	.d /* IN */ (pd5_22),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd6_from_0_to_23_inst_23
(
	.q /* OUT */ (pd6_23),
	.d /* IN */ (pd5_23),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (145) - r[0-7] : mx2
assign r_0_obuf = (rg16) ? pd4_0 : pd6_0;
assign r_1_obuf = (rg16) ? pd4_1 : pd6_1;
assign r_2_obuf = (rg16) ? pd4_2 : pd6_2;
assign r_3_obuf = (rg16) ? pd4_3 : pd6_3;
assign r_4_obuf = (rg16) ? pd4_4 : pd6_4;
assign r_5_obuf = (rg16) ? pd4_5 : pd6_5;
assign r_6_obuf = (rg16) ? pd4_6 : pd6_6;
assign r_7_obuf = (rg16) ? pd4_7 : pd6_7;

// PIX.NET (146) - g[0-7] : mx2
assign g_0_obuf = (rg16) ? pd4_8 : pd6_8;
assign g_1_obuf = (rg16) ? pd4_9 : pd6_9;
assign g_2_obuf = (rg16) ? pd4_10 : pd6_10;
assign g_3_obuf = (rg16) ? pd4_11 : pd6_11;
assign g_4_obuf = (rg16) ? pd4_12 : pd6_12;
assign g_5_obuf = (rg16) ? pd4_13 : pd6_13;
assign g_6_obuf = (rg16) ? pd4_14 : pd6_14;
assign g_7_obuf = (rg16) ? pd4_15 : pd6_15;

// PIX.NET (147) - b[0] : mx2
assign b_0_obuf = (rg16) ? blank : pd6_16;

// PIX.NET (148) - b[1] : mx2
assign b_1_obuf = (rg16) ? vactive : pd6_17;

// PIX.NET (149) - b[2-7] : mx2
assign b_2_obuf = (rg16) ? gnd : pd6_18;
assign b_3_obuf = (rg16) ? gnd : pd6_19;
assign b_4_obuf = (rg16) ? gnd : pd6_20;
assign b_5_obuf = (rg16) ? gnd : pd6_21;
assign b_6_obuf = (rg16) ? gnd : pd6_22;
assign b_7_obuf = (rg16) ? gnd : pd6_23;

// PIX.NET (157) - inc1 : fd1q
fd1q inc1_inst
(
	.q /* OUT */ (inc1),
	.d /* IN */ (pd2_0),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (158) - inc2 : slatch
slatch inc2_inst
(
	.q /* OUT */ (inc2),
	.d /* IN */ (inc1),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (159) - inc3 : mx2
assign inc3 = (rgb24) ? pd1_24 : inc2;

// PIX.NET (160) - inc4 : mx2
assign inc4 = (border) ? binc : inc3;

// PIX.NET (161) - inc5 : fd1q
fd1q inc5_inst
(
	.q /* OUT */ (inc5),
	.d /* IN */ (inc4),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (162) - inc : or2
assign inc = inc5 | notincen;

// PIX.NET (166) - pd20 : an3
assign pd20 = pd2_0 & notincen & notvarmod;

// PIX.NET (168) - notincen : iv
assign notincen = ~incen;

// PIX.NET (169) - notvarmod : iv
assign notvarmod = ~varmod;
endmodule
/* verilator lint_on LITENDIAN */
