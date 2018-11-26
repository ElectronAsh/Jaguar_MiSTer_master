/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_pc
(
	output [0:22] pc,
	output [0:23] program_count,
	input clk,
	input go,
	input [0:31] gpu_din,
	input progack,
	input jabs,
	input jrel,
	input pcwr,
	input qs_n_0,
	input qs_n_1,
	input qs_n_2,
	input reset_n,
	input [0:31] srcd,
	input [0:31] srcdp,
	input sys_clk // Generated
);
wire [0:22] subq;
wire one;
wire go_n;
wire jrel_n;
wire zerob;
wire adda_0;
wire adda_1;
wire adda_2;
wire adda_3;
wire adda_4;
wire adda_5;
wire adda_6;
wire adda_7;
wire adda_8;
wire adda_9;
wire adda_10;
wire adda_11;
wire adda_12;
wire adda_13;
wire adda_14;
wire adda_15;
wire adda_16;
wire adda_17;
wire adda_18;
wire adda_19;
wire adda_20;
wire adda_21;
wire adda_22;
wire addb_0;
wire addb_1;
wire addb_2;
wire addb_3;
wire addb_4;
wire addb_5;
wire addb_6;
wire addb_7;
wire addb_8;
wire addb_9;
wire addb_10;
wire addb_11;
wire addb_12;
wire addb_13;
wire addb_14;
wire addb_15;
wire addb_16;
wire addb_17;
wire addb_18;
wire addb_19;
wire addb_20;
wire addb_21;
wire addb_22;
wire pcadd_0;
wire pcadd_1;
wire pcadd_2;
wire pcadd_3;
wire pcadd_4;
wire pcadd_5;
wire pcadd_6;
wire pcadd_7;
wire pcadd_8;
wire pcadd_9;
wire pcadd_10;
wire pcadd_11;
wire pcadd_12;
wire pcadd_13;
wire pcadd_14;
wire pcadd_15;
wire pcadd_16;
wire pcadd_17;
wire pcadd_18;
wire pcadd_19;
wire pcadd_20;
wire pcadd_21;
wire pcadd_22;
wire loadpc;
wire sel_0;
wire sel1t0;
wire sel1t1;
wire sel_1;
wire pcin_0;
wire pcin_1;
wire pcin_2;
wire pcin_3;
wire pcin_4;
wire pcin_5;
wire pcin_6;
wire pcin_7;
wire pcin_8;
wire pcin_9;
wire pcin_10;
wire pcin_11;
wire pcin_12;
wire pcin_13;
wire pcin_14;
wire pcin_15;
wire pcin_16;
wire pcin_17;
wire pcin_18;
wire pcin_19;
wire pcin_20;
wire pcin_21;
wire pcin_22;
wire pc_0;
wire pc_1;
wire pc_2;
wire pc_3;
wire pc_4;
wire pc_5;
wire pc_6;
wire pc_7;
wire pc_8;
wire pc_9;
wire pc_10;
wire pc_11;
wire pc_12;
wire pc_13;
wire pc_14;
wire pc_15;
wire pc_16;
wire pc_17;
wire pc_18;
wire pc_19;
wire pc_20;
wire pc_21;
wire pc_22;

// Output buffers
wire pc_b0_obuf;
wire pc_b1_obuf;
wire pc_b2_obuf;
wire pc_b3_obuf;
wire pc_b4_obuf;
wire pc_b5_obuf;
wire pc_b6_obuf;
wire pc_b7_obuf;
wire pc_b8_obuf;
wire pc_b9_obuf;
wire pc_b10_obuf;
wire pc_b11_obuf;
wire pc_b12_obuf;
wire pc_b13_obuf;
wire pc_b14_obuf;
wire pc_b15_obuf;
wire pc_b16_obuf;
wire pc_b17_obuf;
wire pc_b18_obuf;
wire pc_b19_obuf;
wire pc_b20_obuf;
wire pc_b21_obuf;
wire pc_b22_obuf;


// Output buffers
assign pc[0] = pc_b0_obuf;
assign pc[1] = pc_b1_obuf;
assign pc[2] = pc_b2_obuf;
assign pc[3] = pc_b3_obuf;
assign pc[4] = pc_b4_obuf;
assign pc[5] = pc_b5_obuf;
assign pc[6] = pc_b6_obuf;
assign pc[7] = pc_b7_obuf;
assign pc[8] = pc_b8_obuf;
assign pc[9] = pc_b9_obuf;
assign pc[10] = pc_b10_obuf;
assign pc[11] = pc_b11_obuf;
assign pc[12] = pc_b12_obuf;
assign pc[13] = pc_b13_obuf;
assign pc[14] = pc_b14_obuf;
assign pc[15] = pc_b15_obuf;
assign pc[16] = pc_b16_obuf;
assign pc[17] = pc_b17_obuf;
assign pc[18] = pc_b18_obuf;
assign pc[19] = pc_b19_obuf;
assign pc[20] = pc_b20_obuf;
assign pc[21] = pc_b21_obuf;
assign pc[22] = pc_b22_obuf;


// DSP_F-35.NET (304) - one : tie1
assign one = 1'b1;

// DSP_F-35.NET (305) - go\ : iv
assign go_n = ~go;

// DSP_F-35.NET (306) - jrel\ : iv
assign jrel_n = ~jrel;

// DSP_F-35.NET (313) - sub : subsize
j_subsize sub_inst
(
	.sub /* OUT */ ({subq[0],subq[1],subq[2],subq[3],subq[4],subq[5],subq[6],subq[7],subq[8],subq[9],subq[10],subq[11],subq[12],subq[13],subq[14],subq[15],subq[16],subq[17],subq[18],subq[19],subq[20],subq[21],subq[22]}),
	.a /* IN */ ({pc_b0_obuf,pc_b1_obuf,pc_b2_obuf,pc_b3_obuf,pc_b4_obuf,pc_b5_obuf,pc_b6_obuf,pc_b7_obuf,pc_b8_obuf,pc_b9_obuf,pc_b10_obuf,pc_b11_obuf,pc_b12_obuf,pc_b13_obuf,pc_b14_obuf,pc_b15_obuf,pc_b16_obuf,pc_b17_obuf,pc_b18_obuf,pc_b19_obuf,pc_b20_obuf,pc_b21_obuf,pc_b22_obuf}),
	.b_0 /* IN */ (qs_n_0),
	.b_1 /* IN */ (qs_n_1),
	.b_2 /* IN */ (qs_n_2)
);

// DSP_F-35.NET (314) - zerob : iv
assign zerob = ~one;

// DSP_F-35.NET (315) - program_count : join
assign program_count[0] = zerob;
assign program_count[1] = subq[0];
assign program_count[2] = subq[1];
assign program_count[3] = subq[2];
assign program_count[4] = subq[3];
assign program_count[5] = subq[4];
assign program_count[6] = subq[5];
assign program_count[7] = subq[6];
assign program_count[8] = subq[7];
assign program_count[9] = subq[8];
assign program_count[10] = subq[9];
assign program_count[11] = subq[10];
assign program_count[12] = subq[11];
assign program_count[13] = subq[12];
assign program_count[14] = subq[13];
assign program_count[15] = subq[14];
assign program_count[16] = subq[15];
assign program_count[17] = subq[16];
assign program_count[18] = subq[17];
assign program_count[19] = subq[18];
assign program_count[20] = subq[19];
assign program_count[21] = subq[20];
assign program_count[22] = subq[21];
assign program_count[23] = subq[22];

// DSP_F-35.NET (319) - adda[0] : an2
assign adda_0 = subq[0] & jrel;

// DSP_F-35.NET (320) - adda[1-22] : mx2
assign adda_1 = (jrel) ? subq[1] : pc_b1_obuf;
assign adda_2 = (jrel) ? subq[2] : pc_b2_obuf;
assign adda_3 = (jrel) ? subq[3] : pc_b3_obuf;
assign adda_4 = (jrel) ? subq[4] : pc_b4_obuf;
assign adda_5 = (jrel) ? subq[5] : pc_b5_obuf;
assign adda_6 = (jrel) ? subq[6] : pc_b6_obuf;
assign adda_7 = (jrel) ? subq[7] : pc_b7_obuf;
assign adda_8 = (jrel) ? subq[8] : pc_b8_obuf;
assign adda_9 = (jrel) ? subq[9] : pc_b9_obuf;
assign adda_10 = (jrel) ? subq[10] : pc_b10_obuf;
assign adda_11 = (jrel) ? subq[11] : pc_b11_obuf;
assign adda_12 = (jrel) ? subq[12] : pc_b12_obuf;
assign adda_13 = (jrel) ? subq[13] : pc_b13_obuf;
assign adda_14 = (jrel) ? subq[14] : pc_b14_obuf;
assign adda_15 = (jrel) ? subq[15] : pc_b15_obuf;
assign adda_16 = (jrel) ? subq[16] : pc_b16_obuf;
assign adda_17 = (jrel) ? subq[17] : pc_b17_obuf;
assign adda_18 = (jrel) ? subq[18] : pc_b18_obuf;
assign adda_19 = (jrel) ? subq[19] : pc_b19_obuf;
assign adda_20 = (jrel) ? subq[20] : pc_b20_obuf;
assign adda_21 = (jrel) ? subq[21] : pc_b21_obuf;
assign adda_22 = (jrel) ? subq[22] : pc_b22_obuf;

// DSP_F-35.NET (322) - addb[0] : an2
assign addb_0 = srcdp[0] & jrel;

// DSP_F-35.NET (323) - addb[1] : or2
assign addb_1 = srcdp[1] | jrel_n;

// DSP_F-35.NET (324) - addb[2-22] : an2
assign addb_2 = srcdp[2] & jrel;
assign addb_3 = srcdp[3] & jrel;
assign addb_4 = srcdp[4] & jrel;
assign addb_5 = srcdp[5] & jrel;
assign addb_6 = srcdp[6] & jrel;
assign addb_7 = srcdp[7] & jrel;
assign addb_8 = srcdp[8] & jrel;
assign addb_9 = srcdp[9] & jrel;
assign addb_10 = srcdp[10] & jrel;
assign addb_11 = srcdp[11] & jrel;
assign addb_12 = srcdp[12] & jrel;
assign addb_13 = srcdp[13] & jrel;
assign addb_14 = srcdp[14] & jrel;
assign addb_15 = srcdp[15] & jrel;
assign addb_16 = srcdp[16] & jrel;
assign addb_17 = srcdp[17] & jrel;
assign addb_18 = srcdp[18] & jrel;
assign addb_19 = srcdp[19] & jrel;
assign addb_20 = srcdp[20] & jrel;
assign addb_21 = srcdp[21] & jrel;
assign addb_22 = srcdp[22] & jrel;

// DSP_F-35.NET (326) - pcadd : fa23
j_fa23 pcadd_inst
(
	.s_0 /* OUT */ (pcadd_0),
	.s_1 /* OUT */ (pcadd_1),
	.s_2 /* OUT */ (pcadd_2),
	.s_3 /* OUT */ (pcadd_3),
	.s_4 /* OUT */ (pcadd_4),
	.s_5 /* OUT */ (pcadd_5),
	.s_6 /* OUT */ (pcadd_6),
	.s_7 /* OUT */ (pcadd_7),
	.s_8 /* OUT */ (pcadd_8),
	.s_9 /* OUT */ (pcadd_9),
	.s_10 /* OUT */ (pcadd_10),
	.s_11 /* OUT */ (pcadd_11),
	.s_12 /* OUT */ (pcadd_12),
	.s_13 /* OUT */ (pcadd_13),
	.s_14 /* OUT */ (pcadd_14),
	.s_15 /* OUT */ (pcadd_15),
	.s_16 /* OUT */ (pcadd_16),
	.s_17 /* OUT */ (pcadd_17),
	.s_18 /* OUT */ (pcadd_18),
	.s_19 /* OUT */ (pcadd_19),
	.s_20 /* OUT */ (pcadd_20),
	.s_21 /* OUT */ (pcadd_21),
	.s_22 /* OUT */ (pcadd_22),
	.a_0 /* IN */ (adda_0),
	.a_1 /* IN */ (adda_1),
	.a_2 /* IN */ (adda_2),
	.a_3 /* IN */ (adda_3),
	.a_4 /* IN */ (adda_4),
	.a_5 /* IN */ (adda_5),
	.a_6 /* IN */ (adda_6),
	.a_7 /* IN */ (adda_7),
	.a_8 /* IN */ (adda_8),
	.a_9 /* IN */ (adda_9),
	.a_10 /* IN */ (adda_10),
	.a_11 /* IN */ (adda_11),
	.a_12 /* IN */ (adda_12),
	.a_13 /* IN */ (adda_13),
	.a_14 /* IN */ (adda_14),
	.a_15 /* IN */ (adda_15),
	.a_16 /* IN */ (adda_16),
	.a_17 /* IN */ (adda_17),
	.a_18 /* IN */ (adda_18),
	.a_19 /* IN */ (adda_19),
	.a_20 /* IN */ (adda_20),
	.a_21 /* IN */ (adda_21),
	.a_22 /* IN */ (adda_22),
	.b_0 /* IN */ (addb_0),
	.b_1 /* IN */ (addb_1),
	.b_2 /* IN */ (addb_2),
	.b_3 /* IN */ (addb_3),
	.b_4 /* IN */ (addb_4),
	.b_5 /* IN */ (addb_5),
	.b_6 /* IN */ (addb_6),
	.b_7 /* IN */ (addb_7),
	.b_8 /* IN */ (addb_8),
	.b_9 /* IN */ (addb_9),
	.b_10 /* IN */ (addb_10),
	.b_11 /* IN */ (addb_11),
	.b_12 /* IN */ (addb_12),
	.b_13 /* IN */ (addb_13),
	.b_14 /* IN */ (addb_14),
	.b_15 /* IN */ (addb_15),
	.b_16 /* IN */ (addb_16),
	.b_17 /* IN */ (addb_17),
	.b_18 /* IN */ (addb_18),
	.b_19 /* IN */ (addb_19),
	.b_20 /* IN */ (addb_20),
	.b_21 /* IN */ (addb_21),
	.b_22 /* IN */ (addb_22)
);

// DSP_F-35.NET (336) - loadpc : an2
assign loadpc = pcwr & go_n;

// DSP_F-35.NET (337) - sel0 : or2u
assign sel_0 = jabs | loadpc;

// DSP_F-35.NET (338) - sel1t0 : nr2
assign sel1t0 = ~(progack | jrel);

// DSP_F-35.NET (339) - sel1t1 : nr2
assign sel1t1 = ~(sel1t0 | jabs);

// DSP_F-35.NET (340) - sel1 : or2u
assign sel_1 = sel1t1 | loadpc;

// DSP_F-35.NET (342) - pcin[0-22] : mx4
mx4 pcin_from_0_to_22_inst_0
(
	.z /* OUT */ (pcin_0),
	.a0 /* IN */ (pc_0),
	.a1 /* IN */ (srcd[1]),
	.a2 /* IN */ (pcadd_0),
	.a3 /* IN */ (gpu_din[1]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_1
(
	.z /* OUT */ (pcin_1),
	.a0 /* IN */ (pc_1),
	.a1 /* IN */ (srcd[2]),
	.a2 /* IN */ (pcadd_1),
	.a3 /* IN */ (gpu_din[2]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_2
(
	.z /* OUT */ (pcin_2),
	.a0 /* IN */ (pc_2),
	.a1 /* IN */ (srcd[3]),
	.a2 /* IN */ (pcadd_2),
	.a3 /* IN */ (gpu_din[3]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_3
(
	.z /* OUT */ (pcin_3),
	.a0 /* IN */ (pc_3),
	.a1 /* IN */ (srcd[4]),
	.a2 /* IN */ (pcadd_3),
	.a3 /* IN */ (gpu_din[4]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_4
(
	.z /* OUT */ (pcin_4),
	.a0 /* IN */ (pc_4),
	.a1 /* IN */ (srcd[5]),
	.a2 /* IN */ (pcadd_4),
	.a3 /* IN */ (gpu_din[5]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_5
(
	.z /* OUT */ (pcin_5),
	.a0 /* IN */ (pc_5),
	.a1 /* IN */ (srcd[6]),
	.a2 /* IN */ (pcadd_5),
	.a3 /* IN */ (gpu_din[6]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_6
(
	.z /* OUT */ (pcin_6),
	.a0 /* IN */ (pc_6),
	.a1 /* IN */ (srcd[7]),
	.a2 /* IN */ (pcadd_6),
	.a3 /* IN */ (gpu_din[7]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_7
(
	.z /* OUT */ (pcin_7),
	.a0 /* IN */ (pc_7),
	.a1 /* IN */ (srcd[8]),
	.a2 /* IN */ (pcadd_7),
	.a3 /* IN */ (gpu_din[8]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_8
(
	.z /* OUT */ (pcin_8),
	.a0 /* IN */ (pc_8),
	.a1 /* IN */ (srcd[9]),
	.a2 /* IN */ (pcadd_8),
	.a3 /* IN */ (gpu_din[9]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_9
(
	.z /* OUT */ (pcin_9),
	.a0 /* IN */ (pc_9),
	.a1 /* IN */ (srcd[10]),
	.a2 /* IN */ (pcadd_9),
	.a3 /* IN */ (gpu_din[10]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_10
(
	.z /* OUT */ (pcin_10),
	.a0 /* IN */ (pc_10),
	.a1 /* IN */ (srcd[11]),
	.a2 /* IN */ (pcadd_10),
	.a3 /* IN */ (gpu_din[11]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_11
(
	.z /* OUT */ (pcin_11),
	.a0 /* IN */ (pc_11),
	.a1 /* IN */ (srcd[12]),
	.a2 /* IN */ (pcadd_11),
	.a3 /* IN */ (gpu_din[12]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_12
(
	.z /* OUT */ (pcin_12),
	.a0 /* IN */ (pc_12),
	.a1 /* IN */ (srcd[13]),
	.a2 /* IN */ (pcadd_12),
	.a3 /* IN */ (gpu_din[13]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_13
(
	.z /* OUT */ (pcin_13),
	.a0 /* IN */ (pc_13),
	.a1 /* IN */ (srcd[14]),
	.a2 /* IN */ (pcadd_13),
	.a3 /* IN */ (gpu_din[14]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_14
(
	.z /* OUT */ (pcin_14),
	.a0 /* IN */ (pc_14),
	.a1 /* IN */ (srcd[15]),
	.a2 /* IN */ (pcadd_14),
	.a3 /* IN */ (gpu_din[15]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_15
(
	.z /* OUT */ (pcin_15),
	.a0 /* IN */ (pc_15),
	.a1 /* IN */ (srcd[16]),
	.a2 /* IN */ (pcadd_15),
	.a3 /* IN */ (gpu_din[16]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_16
(
	.z /* OUT */ (pcin_16),
	.a0 /* IN */ (pc_16),
	.a1 /* IN */ (srcd[17]),
	.a2 /* IN */ (pcadd_16),
	.a3 /* IN */ (gpu_din[17]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_17
(
	.z /* OUT */ (pcin_17),
	.a0 /* IN */ (pc_17),
	.a1 /* IN */ (srcd[18]),
	.a2 /* IN */ (pcadd_17),
	.a3 /* IN */ (gpu_din[18]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_18
(
	.z /* OUT */ (pcin_18),
	.a0 /* IN */ (pc_18),
	.a1 /* IN */ (srcd[19]),
	.a2 /* IN */ (pcadd_18),
	.a3 /* IN */ (gpu_din[19]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_19
(
	.z /* OUT */ (pcin_19),
	.a0 /* IN */ (pc_19),
	.a1 /* IN */ (srcd[20]),
	.a2 /* IN */ (pcadd_19),
	.a3 /* IN */ (gpu_din[20]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_20
(
	.z /* OUT */ (pcin_20),
	.a0 /* IN */ (pc_20),
	.a1 /* IN */ (srcd[21]),
	.a2 /* IN */ (pcadd_20),
	.a3 /* IN */ (gpu_din[21]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_21
(
	.z /* OUT */ (pcin_21),
	.a0 /* IN */ (pc_21),
	.a1 /* IN */ (srcd[22]),
	.a2 /* IN */ (pcadd_21),
	.a3 /* IN */ (gpu_din[22]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 pcin_from_0_to_22_inst_22
(
	.z /* OUT */ (pcin_22),
	.a0 /* IN */ (pc_22),
	.a1 /* IN */ (srcd[23]),
	.a2 /* IN */ (pcadd_22),
	.a3 /* IN */ (gpu_din[23]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);

// DSP_F-35.NET (350) - pc[0-1] : fd2q
fd2q pc_from_0_to_1_inst_0
(
	.q /* OUT */ (pc_0),
	.d /* IN */ (pcin_0),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_0_to_1_inst_1
(
	.q /* OUT */ (pc_1),
	.d /* IN */ (pcin_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_F-35.NET (351) - pc[2] : fd4q
fd4q pc_index_2_inst
(
	.q /* OUT */ (pc_2),
	.d /* IN */ (pcin_2),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_F-35.NET (352) - pc[3-12] : fd2q
fd2q pc_from_3_to_12_inst_0
(
	.q /* OUT */ (pc_3),
	.d /* IN */ (pcin_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_3_to_12_inst_1
(
	.q /* OUT */ (pc_4),
	.d /* IN */ (pcin_4),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_3_to_12_inst_2
(
	.q /* OUT */ (pc_5),
	.d /* IN */ (pcin_5),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_3_to_12_inst_3
(
	.q /* OUT */ (pc_6),
	.d /* IN */ (pcin_6),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_3_to_12_inst_4
(
	.q /* OUT */ (pc_7),
	.d /* IN */ (pcin_7),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_3_to_12_inst_5
(
	.q /* OUT */ (pc_8),
	.d /* IN */ (pcin_8),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_3_to_12_inst_6
(
	.q /* OUT */ (pc_9),
	.d /* IN */ (pcin_9),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_3_to_12_inst_7
(
	.q /* OUT */ (pc_10),
	.d /* IN */ (pcin_10),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_3_to_12_inst_8
(
	.q /* OUT */ (pc_11),
	.d /* IN */ (pcin_11),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q pc_from_3_to_12_inst_9
(
	.q /* OUT */ (pc_12),
	.d /* IN */ (pcin_12),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_F-35.NET (353) - pc[13] : fd2qp
fd2q pc_index_13_inst
(
	.q /* OUT */ (pc_13),
	.d /* IN */ (pcin_13),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_F-35.NET (354) - pc[14] : fd2q
fd2q pc_index_14_inst
(
	.q /* OUT */ (pc_14),
	.d /* IN */ (pcin_14),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_F-35.NET (355) - pc[15-22] : fd4q
fd4q pc_from_15_to_22_inst_0
(
	.q /* OUT */ (pc_15),
	.d /* IN */ (pcin_15),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd4q pc_from_15_to_22_inst_1
(
	.q /* OUT */ (pc_16),
	.d /* IN */ (pcin_16),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd4q pc_from_15_to_22_inst_2
(
	.q /* OUT */ (pc_17),
	.d /* IN */ (pcin_17),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd4q pc_from_15_to_22_inst_3
(
	.q /* OUT */ (pc_18),
	.d /* IN */ (pcin_18),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd4q pc_from_15_to_22_inst_4
(
	.q /* OUT */ (pc_19),
	.d /* IN */ (pcin_19),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd4q pc_from_15_to_22_inst_5
(
	.q /* OUT */ (pc_20),
	.d /* IN */ (pcin_20),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd4q pc_from_15_to_22_inst_6
(
	.q /* OUT */ (pc_21),
	.d /* IN */ (pcin_21),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd4q pc_from_15_to_22_inst_7
(
	.q /* OUT */ (pc_22),
	.d /* IN */ (pcin_22),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_F-35.NET (356) - pc : join
assign pc_b0_obuf = pc_0;
assign pc_b1_obuf = pc_1;
assign pc_b2_obuf = pc_2;
assign pc_b3_obuf = pc_3;
assign pc_b4_obuf = pc_4;
assign pc_b5_obuf = pc_5;
assign pc_b6_obuf = pc_6;
assign pc_b7_obuf = pc_7;
assign pc_b8_obuf = pc_8;
assign pc_b9_obuf = pc_9;
assign pc_b10_obuf = pc_10;
assign pc_b11_obuf = pc_11;
assign pc_b12_obuf = pc_12;
assign pc_b13_obuf = pc_13;
assign pc_b14_obuf = pc_14;
assign pc_b15_obuf = pc_15;
assign pc_b16_obuf = pc_16;
assign pc_b17_obuf = pc_17;
assign pc_b18_obuf = pc_18;
assign pc_b19_obuf = pc_19;
assign pc_b20_obuf = pc_20;
assign pc_b21_obuf = pc_21;
assign pc_b22_obuf = pc_22;
endmodule
/* verilator lint_on LITENDIAN */
