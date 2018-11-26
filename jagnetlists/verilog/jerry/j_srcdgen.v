/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_srcdgen
(
	output locdent,
	output [0:31] locsrc,
	input [0:31] program_count,
	input srcdat_0,
	input srcdat_1,
	input srcdat_2,
	input srcdat_3,
	input [0:4] srcop
);
wire [0:4] botsrc;
wire [0:4] _const;
wire [0:4] opshft;
wire [0:31] gensrc;
wire [0:31] mask;
wire srcdat_n_0;
wire srcdat_n_1;
wire srcdat_n_2;
wire srcdat_n_3;
wire srcop_n_4;
wire zero;
wire type5;
wire oneselt;
wire onesel;
wire topsrct;
wire topsrc;
wire srcb7;
wire opzero;
wire type2;
wire srcb6;
wire type8;
wire srcb5;
wire type6;
wire constsel;
wire maskt_n_0;
wire maskt_n_1;
wire maskt_n_2;
wire maskt_n_3;
wire maskt_n_4;
wire maskt_n_5;
wire maskt_n_6;
wire maskt_n_7;
wire maskt_n_8;
wire maskt_n_9;
wire maskt_n_10;
wire maskt_n_11;
wire maskt_n_12;
wire maskt_n_13;
wire maskt_n_14;
wire maskt_n_15;
wire maskt_n_16;
wire maskt_n_17;
wire maskt_n_18;
wire maskt_n_19;
wire maskt_n_20;
wire maskt_n_21;
wire maskt_n_22;
wire maskt_n_23;
wire maskt_n_24;
wire maskt_n_25;
wire maskt_n_26;
wire maskt_n_27;
wire maskt_n_28;
wire maskt_n_29;
wire maskt_n_30;
wire maskt_n_31;
wire type9;
wire mask_0;
wire mask_1;
wire mask_2;
wire mask_3;
wire mask_4;
wire mask_5;
wire mask_6;
wire mask_7;
wire mask_8;
wire mask_9;
wire mask_10;
wire mask_11;
wire mask_12;
wire mask_13;
wire mask_14;
wire mask_15;
wire mask_16;
wire mask_17;
wire mask_18;
wire mask_19;
wire mask_20;
wire mask_21;
wire mask_22;
wire mask_23;
wire mask_24;
wire mask_25;
wire mask_26;
wire mask_27;
wire mask_28;
wire mask_29;
wire mask_30;
wire mask_31;
wire type7;
wire type10;
wire sdsel_0;
wire sdsel_1;

// DSP_EXEC.NET (654) - srcdat\[0-3] : iv
assign srcdat_n_0 = ~srcdat_0;
assign srcdat_n_1 = ~srcdat_1;
assign srcdat_n_2 = ~srcdat_2;
assign srcdat_n_3 = ~srcdat_3;

// DSP_EXEC.NET (655) - srcop\[4] : iv
assign srcop_n_4 = ~srcop[4];

// DSP_EXEC.NET (656) - zero : tie0
assign zero = 1'b0;

// DSP_EXEC.NET (660) - locdent : or4u
assign locdent = srcdat_0 | srcdat_1 | srcdat_2 | srcdat_3;

// DSP_EXEC.NET (672) - type5 : an4
assign type5 = srcdat_0 & srcdat_n_1 & srcdat_2 & srcdat_n_3;

// DSP_EXEC.NET (677) - oneselt : eo
assign oneselt = srcdat_0 ^ srcdat_2;

// DSP_EXEC.NET (678) - onesel : an3
assign onesel = oneselt & srcdat_1 & srcdat_n_3;

// DSP_EXEC.NET (679) - topsrct : aor1
assign topsrct = (srcop[4] & type5) | onesel;

// DSP_EXEC.NET (680) - topsrc : nivh
assign topsrc = topsrct;

// DSP_EXEC.NET (685) - srcb7 : mx2
assign srcb7 = (type2) ? opzero : topsrc;

// DSP_EXEC.NET (690) - type2 : an4m
assign type2 = srcdat_n_0 & srcdat_1 & srcdat_n_2 & srcdat_n_3;

// DSP_EXEC.NET (692) - srcb6 : mx2
assign srcb6 = (type2) ? srcop[4] : topsrc;

// DSP_EXEC.NET (697) - type8 : an4
assign type8 = srcdat_n_0 & srcdat_n_1 & srcdat_n_2 & srcdat_3;

// DSP_EXEC.NET (698) - opzero : nr5
assign opzero = ~(srcop[0] | srcop[1] | srcop[2] | srcop[3] | srcop[4]);

// DSP_EXEC.NET (699) - srcb5 : mx4
mx4 srcb5_inst
(
	.z /* OUT */ (srcb5),
	.a0 /* IN */ (topsrc),
	.a1 /* IN */ (opzero),
	.a2 /* IN */ (srcop[3]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (type8),
	.s1 /* IN */ (type2)
);

// DSP_EXEC.NET (705) - type6 : an4
assign type6 = srcdat_n_0 & srcdat_1 & srcdat_2 & srcdat_n_3;

// DSP_EXEC.NET (710) - constsel : an3p
assign constsel = srcdat_n_0 & srcdat_2 & srcdat_n_3;

// DSP_EXEC.NET (713) - const : join
assign _const[0] = type6;
assign _const[1] = type6;
assign _const[2] = type6;
assign _const[3] = type6;
assign _const[4] = type6;

// DSP_EXEC.NET (715) - opshft : join
assign opshft[0] = zero;
assign opshft[1] = zero;
assign opshft[2] = srcop[0];
assign opshft[3] = srcop[1];
assign opshft[4] = srcop[2];

// DSP_EXEC.NET (716) - botsrc : mx4
mx4 botsrc_inst_0
(
	.z /* OUT */ (botsrc[0]),
	.a0 /* IN */ (srcop[0]),
	.a1 /* IN */ (_const[0]),
	.a2 /* IN */ (opshft[0]),
	.a3 /* IN */ (opshft[0]),
	.s0 /* IN */ (constsel),
	.s1 /* IN */ (type2)
);
mx4 botsrc_inst_1
(
	.z /* OUT */ (botsrc[1]),
	.a0 /* IN */ (srcop[1]),
	.a1 /* IN */ (_const[1]),
	.a2 /* IN */ (opshft[1]),
	.a3 /* IN */ (opshft[1]),
	.s0 /* IN */ (constsel),
	.s1 /* IN */ (type2)
);
mx4 botsrc_inst_2
(
	.z /* OUT */ (botsrc[2]),
	.a0 /* IN */ (srcop[2]),
	.a1 /* IN */ (_const[2]),
	.a2 /* IN */ (opshft[2]),
	.a3 /* IN */ (opshft[2]),
	.s0 /* IN */ (constsel),
	.s1 /* IN */ (type2)
);
mx4 botsrc_inst_3
(
	.z /* OUT */ (botsrc[3]),
	.a0 /* IN */ (srcop[3]),
	.a1 /* IN */ (_const[3]),
	.a2 /* IN */ (opshft[3]),
	.a3 /* IN */ (opshft[3]),
	.s0 /* IN */ (constsel),
	.s1 /* IN */ (type2)
);
mx4 botsrc_inst_4
(
	.z /* OUT */ (botsrc[4]),
	.a0 /* IN */ (srcop[4]),
	.a1 /* IN */ (_const[4]),
	.a2 /* IN */ (opshft[4]),
	.a3 /* IN */ (opshft[4]),
	.s0 /* IN */ (constsel),
	.s1 /* IN */ (type2)
);

// DSP_EXEC.NET (721) - gensrc : join
assign gensrc[0] = botsrc[0];
assign gensrc[1] = botsrc[1];
assign gensrc[2] = botsrc[2];
assign gensrc[3] = botsrc[3];
assign gensrc[4] = botsrc[4];
assign gensrc[5] = srcb5;
assign gensrc[6] = srcb6;
assign gensrc[7] = srcb7;
assign gensrc[8] = topsrc;
assign gensrc[9] = topsrc;
assign gensrc[10] = topsrc;
assign gensrc[11] = topsrc;
assign gensrc[12] = topsrc;
assign gensrc[13] = topsrc;
assign gensrc[14] = topsrc;
assign gensrc[15] = topsrc;
assign gensrc[16] = topsrc;
assign gensrc[17] = topsrc;
assign gensrc[18] = topsrc;
assign gensrc[19] = topsrc;
assign gensrc[20] = topsrc;
assign gensrc[21] = topsrc;
assign gensrc[22] = topsrc;
assign gensrc[23] = topsrc;
assign gensrc[24] = topsrc;
assign gensrc[25] = topsrc;
assign gensrc[26] = topsrc;
assign gensrc[27] = topsrc;
assign gensrc[28] = topsrc;
assign gensrc[29] = topsrc;
assign gensrc[30] = topsrc;
assign gensrc[31] = topsrc;

// DSP_EXEC.NET (730) - masklo : d416g2l
d416g2l masklo_inst
(
	.z0 /* OUT */ (maskt_n_0),
	.z1 /* OUT */ (maskt_n_1),
	.z2 /* OUT */ (maskt_n_2),
	.z3 /* OUT */ (maskt_n_3),
	.z4 /* OUT */ (maskt_n_4),
	.z5 /* OUT */ (maskt_n_5),
	.z6 /* OUT */ (maskt_n_6),
	.z7 /* OUT */ (maskt_n_7),
	.z8 /* OUT */ (maskt_n_8),
	.z9 /* OUT */ (maskt_n_9),
	.z10 /* OUT */ (maskt_n_10),
	.z11 /* OUT */ (maskt_n_11),
	.z12 /* OUT */ (maskt_n_12),
	.z13 /* OUT */ (maskt_n_13),
	.z14 /* OUT */ (maskt_n_14),
	.z15 /* OUT */ (maskt_n_15),
	.a0 /* IN */ (srcop[0]),
	.a1 /* IN */ (srcop[1]),
	.a2 /* IN */ (srcop[2]),
	.a3 /* IN */ (srcop[3]),
	.g1n /* IN */ (srcop[4]),
	.g2n /* IN */ (zero)
);

// DSP_EXEC.NET (732) - maskhi : d416g2l
d416g2l maskhi_inst
(
	.z0 /* OUT */ (maskt_n_16),
	.z1 /* OUT */ (maskt_n_17),
	.z2 /* OUT */ (maskt_n_18),
	.z3 /* OUT */ (maskt_n_19),
	.z4 /* OUT */ (maskt_n_20),
	.z5 /* OUT */ (maskt_n_21),
	.z6 /* OUT */ (maskt_n_22),
	.z7 /* OUT */ (maskt_n_23),
	.z8 /* OUT */ (maskt_n_24),
	.z9 /* OUT */ (maskt_n_25),
	.z10 /* OUT */ (maskt_n_26),
	.z11 /* OUT */ (maskt_n_27),
	.z12 /* OUT */ (maskt_n_28),
	.z13 /* OUT */ (maskt_n_29),
	.z14 /* OUT */ (maskt_n_30),
	.z15 /* OUT */ (maskt_n_31),
	.a0 /* IN */ (srcop[0]),
	.a1 /* IN */ (srcop[1]),
	.a2 /* IN */ (srcop[2]),
	.a3 /* IN */ (srcop[3]),
	.g1n /* IN */ (srcop_n_4),
	.g2n /* IN */ (zero)
);

// DSP_EXEC.NET (734) - type9 : an4u
assign type9 = srcdat_0 & srcdat_n_1 & srcdat_n_2 & srcdat_3;

// DSP_EXEC.NET (736) - mask[0-31] : eo
assign mask_0 = maskt_n_0 ^ type9;
assign mask_1 = maskt_n_1 ^ type9;
assign mask_2 = maskt_n_2 ^ type9;
assign mask_3 = maskt_n_3 ^ type9;
assign mask_4 = maskt_n_4 ^ type9;
assign mask_5 = maskt_n_5 ^ type9;
assign mask_6 = maskt_n_6 ^ type9;
assign mask_7 = maskt_n_7 ^ type9;
assign mask_8 = maskt_n_8 ^ type9;
assign mask_9 = maskt_n_9 ^ type9;
assign mask_10 = maskt_n_10 ^ type9;
assign mask_11 = maskt_n_11 ^ type9;
assign mask_12 = maskt_n_12 ^ type9;
assign mask_13 = maskt_n_13 ^ type9;
assign mask_14 = maskt_n_14 ^ type9;
assign mask_15 = maskt_n_15 ^ type9;
assign mask_16 = maskt_n_16 ^ type9;
assign mask_17 = maskt_n_17 ^ type9;
assign mask_18 = maskt_n_18 ^ type9;
assign mask_19 = maskt_n_19 ^ type9;
assign mask_20 = maskt_n_20 ^ type9;
assign mask_21 = maskt_n_21 ^ type9;
assign mask_22 = maskt_n_22 ^ type9;
assign mask_23 = maskt_n_23 ^ type9;
assign mask_24 = maskt_n_24 ^ type9;
assign mask_25 = maskt_n_25 ^ type9;
assign mask_26 = maskt_n_26 ^ type9;
assign mask_27 = maskt_n_27 ^ type9;
assign mask_28 = maskt_n_28 ^ type9;
assign mask_29 = maskt_n_29 ^ type9;
assign mask_30 = maskt_n_30 ^ type9;
assign mask_31 = maskt_n_31 ^ type9;

// DSP_EXEC.NET (737) - mask : join
assign mask[0] = mask_0;
assign mask[1] = mask_1;
assign mask[2] = mask_2;
assign mask[3] = mask_3;
assign mask[4] = mask_4;
assign mask[5] = mask_5;
assign mask[6] = mask_6;
assign mask[7] = mask_7;
assign mask[8] = mask_8;
assign mask[9] = mask_9;
assign mask[10] = mask_10;
assign mask[11] = mask_11;
assign mask[12] = mask_12;
assign mask[13] = mask_13;
assign mask[14] = mask_14;
assign mask[15] = mask_15;
assign mask[16] = mask_16;
assign mask[17] = mask_17;
assign mask[18] = mask_18;
assign mask[19] = mask_19;
assign mask[20] = mask_20;
assign mask[21] = mask_21;
assign mask[22] = mask_22;
assign mask[23] = mask_23;
assign mask[24] = mask_24;
assign mask[25] = mask_25;
assign mask[26] = mask_26;
assign mask[27] = mask_27;
assign mask[28] = mask_28;
assign mask[29] = mask_29;
assign mask[30] = mask_30;
assign mask[31] = mask_31;

// DSP_EXEC.NET (748) - type7 : an4
assign type7 = srcdat_0 & srcdat_1 & srcdat_2 & srcdat_n_3;

// DSP_EXEC.NET (749) - type10 : an4
assign type10 = srcdat_n_0 & srcdat_1 & srcdat_n_2 & srcdat_3;

// DSP_EXEC.NET (751) - sdsel0 : or2u
assign sdsel_0 = type9 | type10;

// DSP_EXEC.NET (752) - sdsel1 : nivu
assign sdsel_1 = type7;

// DSP_EXEC.NET (754) - locsrc : mx4
mx4 locsrc_inst_0
(
	.z /* OUT */ (locsrc[0]),
	.a0 /* IN */ (gensrc[0]),
	.a1 /* IN */ (mask[0]),
	.a2 /* IN */ (program_count[0]),
	.a3 /* IN */ (program_count[0]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_1
(
	.z /* OUT */ (locsrc[1]),
	.a0 /* IN */ (gensrc[1]),
	.a1 /* IN */ (mask[1]),
	.a2 /* IN */ (program_count[1]),
	.a3 /* IN */ (program_count[1]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_2
(
	.z /* OUT */ (locsrc[2]),
	.a0 /* IN */ (gensrc[2]),
	.a1 /* IN */ (mask[2]),
	.a2 /* IN */ (program_count[2]),
	.a3 /* IN */ (program_count[2]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_3
(
	.z /* OUT */ (locsrc[3]),
	.a0 /* IN */ (gensrc[3]),
	.a1 /* IN */ (mask[3]),
	.a2 /* IN */ (program_count[3]),
	.a3 /* IN */ (program_count[3]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_4
(
	.z /* OUT */ (locsrc[4]),
	.a0 /* IN */ (gensrc[4]),
	.a1 /* IN */ (mask[4]),
	.a2 /* IN */ (program_count[4]),
	.a3 /* IN */ (program_count[4]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_5
(
	.z /* OUT */ (locsrc[5]),
	.a0 /* IN */ (gensrc[5]),
	.a1 /* IN */ (mask[5]),
	.a2 /* IN */ (program_count[5]),
	.a3 /* IN */ (program_count[5]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_6
(
	.z /* OUT */ (locsrc[6]),
	.a0 /* IN */ (gensrc[6]),
	.a1 /* IN */ (mask[6]),
	.a2 /* IN */ (program_count[6]),
	.a3 /* IN */ (program_count[6]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_7
(
	.z /* OUT */ (locsrc[7]),
	.a0 /* IN */ (gensrc[7]),
	.a1 /* IN */ (mask[7]),
	.a2 /* IN */ (program_count[7]),
	.a3 /* IN */ (program_count[7]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_8
(
	.z /* OUT */ (locsrc[8]),
	.a0 /* IN */ (gensrc[8]),
	.a1 /* IN */ (mask[8]),
	.a2 /* IN */ (program_count[8]),
	.a3 /* IN */ (program_count[8]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_9
(
	.z /* OUT */ (locsrc[9]),
	.a0 /* IN */ (gensrc[9]),
	.a1 /* IN */ (mask[9]),
	.a2 /* IN */ (program_count[9]),
	.a3 /* IN */ (program_count[9]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_10
(
	.z /* OUT */ (locsrc[10]),
	.a0 /* IN */ (gensrc[10]),
	.a1 /* IN */ (mask[10]),
	.a2 /* IN */ (program_count[10]),
	.a3 /* IN */ (program_count[10]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_11
(
	.z /* OUT */ (locsrc[11]),
	.a0 /* IN */ (gensrc[11]),
	.a1 /* IN */ (mask[11]),
	.a2 /* IN */ (program_count[11]),
	.a3 /* IN */ (program_count[11]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_12
(
	.z /* OUT */ (locsrc[12]),
	.a0 /* IN */ (gensrc[12]),
	.a1 /* IN */ (mask[12]),
	.a2 /* IN */ (program_count[12]),
	.a3 /* IN */ (program_count[12]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_13
(
	.z /* OUT */ (locsrc[13]),
	.a0 /* IN */ (gensrc[13]),
	.a1 /* IN */ (mask[13]),
	.a2 /* IN */ (program_count[13]),
	.a3 /* IN */ (program_count[13]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_14
(
	.z /* OUT */ (locsrc[14]),
	.a0 /* IN */ (gensrc[14]),
	.a1 /* IN */ (mask[14]),
	.a2 /* IN */ (program_count[14]),
	.a3 /* IN */ (program_count[14]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_15
(
	.z /* OUT */ (locsrc[15]),
	.a0 /* IN */ (gensrc[15]),
	.a1 /* IN */ (mask[15]),
	.a2 /* IN */ (program_count[15]),
	.a3 /* IN */ (program_count[15]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_16
(
	.z /* OUT */ (locsrc[16]),
	.a0 /* IN */ (gensrc[16]),
	.a1 /* IN */ (mask[16]),
	.a2 /* IN */ (program_count[16]),
	.a3 /* IN */ (program_count[16]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_17
(
	.z /* OUT */ (locsrc[17]),
	.a0 /* IN */ (gensrc[17]),
	.a1 /* IN */ (mask[17]),
	.a2 /* IN */ (program_count[17]),
	.a3 /* IN */ (program_count[17]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_18
(
	.z /* OUT */ (locsrc[18]),
	.a0 /* IN */ (gensrc[18]),
	.a1 /* IN */ (mask[18]),
	.a2 /* IN */ (program_count[18]),
	.a3 /* IN */ (program_count[18]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_19
(
	.z /* OUT */ (locsrc[19]),
	.a0 /* IN */ (gensrc[19]),
	.a1 /* IN */ (mask[19]),
	.a2 /* IN */ (program_count[19]),
	.a3 /* IN */ (program_count[19]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_20
(
	.z /* OUT */ (locsrc[20]),
	.a0 /* IN */ (gensrc[20]),
	.a1 /* IN */ (mask[20]),
	.a2 /* IN */ (program_count[20]),
	.a3 /* IN */ (program_count[20]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_21
(
	.z /* OUT */ (locsrc[21]),
	.a0 /* IN */ (gensrc[21]),
	.a1 /* IN */ (mask[21]),
	.a2 /* IN */ (program_count[21]),
	.a3 /* IN */ (program_count[21]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_22
(
	.z /* OUT */ (locsrc[22]),
	.a0 /* IN */ (gensrc[22]),
	.a1 /* IN */ (mask[22]),
	.a2 /* IN */ (program_count[22]),
	.a3 /* IN */ (program_count[22]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_23
(
	.z /* OUT */ (locsrc[23]),
	.a0 /* IN */ (gensrc[23]),
	.a1 /* IN */ (mask[23]),
	.a2 /* IN */ (program_count[23]),
	.a3 /* IN */ (program_count[23]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_24
(
	.z /* OUT */ (locsrc[24]),
	.a0 /* IN */ (gensrc[24]),
	.a1 /* IN */ (mask[24]),
	.a2 /* IN */ (program_count[24]),
	.a3 /* IN */ (program_count[24]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_25
(
	.z /* OUT */ (locsrc[25]),
	.a0 /* IN */ (gensrc[25]),
	.a1 /* IN */ (mask[25]),
	.a2 /* IN */ (program_count[25]),
	.a3 /* IN */ (program_count[25]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_26
(
	.z /* OUT */ (locsrc[26]),
	.a0 /* IN */ (gensrc[26]),
	.a1 /* IN */ (mask[26]),
	.a2 /* IN */ (program_count[26]),
	.a3 /* IN */ (program_count[26]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_27
(
	.z /* OUT */ (locsrc[27]),
	.a0 /* IN */ (gensrc[27]),
	.a1 /* IN */ (mask[27]),
	.a2 /* IN */ (program_count[27]),
	.a3 /* IN */ (program_count[27]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_28
(
	.z /* OUT */ (locsrc[28]),
	.a0 /* IN */ (gensrc[28]),
	.a1 /* IN */ (mask[28]),
	.a2 /* IN */ (program_count[28]),
	.a3 /* IN */ (program_count[28]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_29
(
	.z /* OUT */ (locsrc[29]),
	.a0 /* IN */ (gensrc[29]),
	.a1 /* IN */ (mask[29]),
	.a2 /* IN */ (program_count[29]),
	.a3 /* IN */ (program_count[29]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_30
(
	.z /* OUT */ (locsrc[30]),
	.a0 /* IN */ (gensrc[30]),
	.a1 /* IN */ (mask[30]),
	.a2 /* IN */ (program_count[30]),
	.a3 /* IN */ (program_count[30]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
mx4 locsrc_inst_31
(
	.z /* OUT */ (locsrc[31]),
	.a0 /* IN */ (gensrc[31]),
	.a1 /* IN */ (mask[31]),
	.a2 /* IN */ (program_count[31]),
	.a3 /* IN */ (program_count[31]),
	.s0 /* IN */ (sdsel_0),
	.s1 /* IN */ (sdsel_1)
);
endmodule
/* verilator lint_on LITENDIAN */
