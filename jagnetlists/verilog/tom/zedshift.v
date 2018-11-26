/* verilator lint_off LITENDIAN */
`include "defs.v"

module zedshift
(
	output [0:31] srczlo,
	output [0:31] srczhi,
	input [0:31] srcz1lo,
	input [0:31] srcz1hi,
	input [0:31] srcz2lo,
	input [0:31] srcz2hi,
	input srcshift_4,
	input srcshift_5
);
wire [0:15] srcz_0;
wire [0:15] srcz_1;
wire [0:15] srcz_2;
wire [0:15] srcz_3;
wire [0:15] srczw_0;
wire [0:15] srczw_1;
wire [0:15] srczw_2;
wire [0:15] srczw_3;
wire [0:15] srczw_4;
wire [0:15] srczw_5;
wire [0:15] srczw_6;
wire srcshift4b_0;
wire srcshift4b_1;
wire srcshift5b_0;
wire srcshift5b_1;

// DATACOMP.NET (82) - srczw[0] : join
assign srczw_0[0] = srcz1lo[0];
assign srczw_0[1] = srcz1lo[1];
assign srczw_0[2] = srcz1lo[2];
assign srczw_0[3] = srcz1lo[3];
assign srczw_0[4] = srcz1lo[4];
assign srczw_0[5] = srcz1lo[5];
assign srczw_0[6] = srcz1lo[6];
assign srczw_0[7] = srcz1lo[7];
assign srczw_0[8] = srcz1lo[8];
assign srczw_0[9] = srcz1lo[9];
assign srczw_0[10] = srcz1lo[10];
assign srczw_0[11] = srcz1lo[11];
assign srczw_0[12] = srcz1lo[12];
assign srczw_0[13] = srcz1lo[13];
assign srczw_0[14] = srcz1lo[14];
assign srczw_0[15] = srcz1lo[15];

// DATACOMP.NET (83) - srczw[1] : join
assign srczw_1[0] = srcz1lo[16];
assign srczw_1[1] = srcz1lo[17];
assign srczw_1[2] = srcz1lo[18];
assign srczw_1[3] = srcz1lo[19];
assign srczw_1[4] = srcz1lo[20];
assign srczw_1[5] = srcz1lo[21];
assign srczw_1[6] = srcz1lo[22];
assign srczw_1[7] = srcz1lo[23];
assign srczw_1[8] = srcz1lo[24];
assign srczw_1[9] = srcz1lo[25];
assign srczw_1[10] = srcz1lo[26];
assign srczw_1[11] = srcz1lo[27];
assign srczw_1[12] = srcz1lo[28];
assign srczw_1[13] = srcz1lo[29];
assign srczw_1[14] = srcz1lo[30];
assign srczw_1[15] = srcz1lo[31];

// DATACOMP.NET (84) - srczw[2] : join
assign srczw_2[0] = srcz1hi[0];
assign srczw_2[1] = srcz1hi[1];
assign srczw_2[2] = srcz1hi[2];
assign srczw_2[3] = srcz1hi[3];
assign srczw_2[4] = srcz1hi[4];
assign srczw_2[5] = srcz1hi[5];
assign srczw_2[6] = srcz1hi[6];
assign srczw_2[7] = srcz1hi[7];
assign srczw_2[8] = srcz1hi[8];
assign srczw_2[9] = srcz1hi[9];
assign srczw_2[10] = srcz1hi[10];
assign srczw_2[11] = srcz1hi[11];
assign srczw_2[12] = srcz1hi[12];
assign srczw_2[13] = srcz1hi[13];
assign srczw_2[14] = srcz1hi[14];
assign srczw_2[15] = srcz1hi[15];

// DATACOMP.NET (85) - srczw[3] : join
assign srczw_3[0] = srcz1hi[16];
assign srczw_3[1] = srcz1hi[17];
assign srczw_3[2] = srcz1hi[18];
assign srczw_3[3] = srcz1hi[19];
assign srczw_3[4] = srcz1hi[20];
assign srczw_3[5] = srcz1hi[21];
assign srczw_3[6] = srcz1hi[22];
assign srczw_3[7] = srcz1hi[23];
assign srczw_3[8] = srcz1hi[24];
assign srczw_3[9] = srcz1hi[25];
assign srczw_3[10] = srcz1hi[26];
assign srczw_3[11] = srcz1hi[27];
assign srczw_3[12] = srcz1hi[28];
assign srczw_3[13] = srcz1hi[29];
assign srczw_3[14] = srcz1hi[30];
assign srczw_3[15] = srcz1hi[31];

// DATACOMP.NET (86) - srczw[4] : join
assign srczw_4[0] = srcz2lo[0];
assign srczw_4[1] = srcz2lo[1];
assign srczw_4[2] = srcz2lo[2];
assign srczw_4[3] = srcz2lo[3];
assign srczw_4[4] = srcz2lo[4];
assign srczw_4[5] = srcz2lo[5];
assign srczw_4[6] = srcz2lo[6];
assign srczw_4[7] = srcz2lo[7];
assign srczw_4[8] = srcz2lo[8];
assign srczw_4[9] = srcz2lo[9];
assign srczw_4[10] = srcz2lo[10];
assign srczw_4[11] = srcz2lo[11];
assign srczw_4[12] = srcz2lo[12];
assign srczw_4[13] = srcz2lo[13];
assign srczw_4[14] = srcz2lo[14];
assign srczw_4[15] = srcz2lo[15];

// DATACOMP.NET (87) - srczw[5] : join
assign srczw_5[0] = srcz2lo[16];
assign srczw_5[1] = srcz2lo[17];
assign srczw_5[2] = srcz2lo[18];
assign srczw_5[3] = srcz2lo[19];
assign srczw_5[4] = srcz2lo[20];
assign srczw_5[5] = srcz2lo[21];
assign srczw_5[6] = srcz2lo[22];
assign srczw_5[7] = srcz2lo[23];
assign srczw_5[8] = srcz2lo[24];
assign srczw_5[9] = srcz2lo[25];
assign srczw_5[10] = srcz2lo[26];
assign srczw_5[11] = srcz2lo[27];
assign srczw_5[12] = srcz2lo[28];
assign srczw_5[13] = srcz2lo[29];
assign srczw_5[14] = srcz2lo[30];
assign srczw_5[15] = srcz2lo[31];

// DATACOMP.NET (88) - srczw[6] : join
assign srczw_6[0] = srcz2hi[0];
assign srczw_6[1] = srcz2hi[1];
assign srczw_6[2] = srcz2hi[2];
assign srczw_6[3] = srcz2hi[3];
assign srczw_6[4] = srcz2hi[4];
assign srczw_6[5] = srcz2hi[5];
assign srczw_6[6] = srcz2hi[6];
assign srczw_6[7] = srcz2hi[7];
assign srczw_6[8] = srcz2hi[8];
assign srczw_6[9] = srcz2hi[9];
assign srczw_6[10] = srcz2hi[10];
assign srczw_6[11] = srcz2hi[11];
assign srczw_6[12] = srcz2hi[12];
assign srczw_6[13] = srcz2hi[13];
assign srczw_6[14] = srcz2hi[14];
assign srczw_6[15] = srcz2hi[15];

// DATACOMP.NET (92) - srcshift4b[0-1] : nivu
assign srcshift4b_0 = srcshift_4;
assign srcshift4b_1 = srcshift_4;

// DATACOMP.NET (93) - srcshift5b[0-1] : nivu
assign srcshift5b_0 = srcshift_5;
assign srcshift5b_1 = srcshift_5;

// DATACOMP.NET (94) - srcz[0] : mx4
mx4 srcz_index_0_inst_0
(
	.z /* OUT */ (srcz_0[0]),
	.a0 /* IN */ (srczw_0[0]),
	.a1 /* IN */ (srczw_1[0]),
	.a2 /* IN */ (srczw_2[0]),
	.a3 /* IN */ (srczw_3[0]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_1
(
	.z /* OUT */ (srcz_0[1]),
	.a0 /* IN */ (srczw_0[1]),
	.a1 /* IN */ (srczw_1[1]),
	.a2 /* IN */ (srczw_2[1]),
	.a3 /* IN */ (srczw_3[1]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_2
(
	.z /* OUT */ (srcz_0[2]),
	.a0 /* IN */ (srczw_0[2]),
	.a1 /* IN */ (srczw_1[2]),
	.a2 /* IN */ (srczw_2[2]),
	.a3 /* IN */ (srczw_3[2]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_3
(
	.z /* OUT */ (srcz_0[3]),
	.a0 /* IN */ (srczw_0[3]),
	.a1 /* IN */ (srczw_1[3]),
	.a2 /* IN */ (srczw_2[3]),
	.a3 /* IN */ (srczw_3[3]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_4
(
	.z /* OUT */ (srcz_0[4]),
	.a0 /* IN */ (srczw_0[4]),
	.a1 /* IN */ (srczw_1[4]),
	.a2 /* IN */ (srczw_2[4]),
	.a3 /* IN */ (srczw_3[4]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_5
(
	.z /* OUT */ (srcz_0[5]),
	.a0 /* IN */ (srczw_0[5]),
	.a1 /* IN */ (srczw_1[5]),
	.a2 /* IN */ (srczw_2[5]),
	.a3 /* IN */ (srczw_3[5]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_6
(
	.z /* OUT */ (srcz_0[6]),
	.a0 /* IN */ (srczw_0[6]),
	.a1 /* IN */ (srczw_1[6]),
	.a2 /* IN */ (srczw_2[6]),
	.a3 /* IN */ (srczw_3[6]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_7
(
	.z /* OUT */ (srcz_0[7]),
	.a0 /* IN */ (srczw_0[7]),
	.a1 /* IN */ (srczw_1[7]),
	.a2 /* IN */ (srczw_2[7]),
	.a3 /* IN */ (srczw_3[7]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_8
(
	.z /* OUT */ (srcz_0[8]),
	.a0 /* IN */ (srczw_0[8]),
	.a1 /* IN */ (srczw_1[8]),
	.a2 /* IN */ (srczw_2[8]),
	.a3 /* IN */ (srczw_3[8]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_9
(
	.z /* OUT */ (srcz_0[9]),
	.a0 /* IN */ (srczw_0[9]),
	.a1 /* IN */ (srczw_1[9]),
	.a2 /* IN */ (srczw_2[9]),
	.a3 /* IN */ (srczw_3[9]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_10
(
	.z /* OUT */ (srcz_0[10]),
	.a0 /* IN */ (srczw_0[10]),
	.a1 /* IN */ (srczw_1[10]),
	.a2 /* IN */ (srczw_2[10]),
	.a3 /* IN */ (srczw_3[10]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_11
(
	.z /* OUT */ (srcz_0[11]),
	.a0 /* IN */ (srczw_0[11]),
	.a1 /* IN */ (srczw_1[11]),
	.a2 /* IN */ (srczw_2[11]),
	.a3 /* IN */ (srczw_3[11]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_12
(
	.z /* OUT */ (srcz_0[12]),
	.a0 /* IN */ (srczw_0[12]),
	.a1 /* IN */ (srczw_1[12]),
	.a2 /* IN */ (srczw_2[12]),
	.a3 /* IN */ (srczw_3[12]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_13
(
	.z /* OUT */ (srcz_0[13]),
	.a0 /* IN */ (srczw_0[13]),
	.a1 /* IN */ (srczw_1[13]),
	.a2 /* IN */ (srczw_2[13]),
	.a3 /* IN */ (srczw_3[13]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_14
(
	.z /* OUT */ (srcz_0[14]),
	.a0 /* IN */ (srczw_0[14]),
	.a1 /* IN */ (srczw_1[14]),
	.a2 /* IN */ (srczw_2[14]),
	.a3 /* IN */ (srczw_3[14]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_0_inst_15
(
	.z /* OUT */ (srcz_0[15]),
	.a0 /* IN */ (srczw_0[15]),
	.a1 /* IN */ (srczw_1[15]),
	.a2 /* IN */ (srczw_2[15]),
	.a3 /* IN */ (srczw_3[15]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);

// DATACOMP.NET (96) - srcz[1] : mx4
mx4 srcz_index_1_inst_0
(
	.z /* OUT */ (srcz_1[0]),
	.a0 /* IN */ (srczw_1[0]),
	.a1 /* IN */ (srczw_2[0]),
	.a2 /* IN */ (srczw_3[0]),
	.a3 /* IN */ (srczw_4[0]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_1
(
	.z /* OUT */ (srcz_1[1]),
	.a0 /* IN */ (srczw_1[1]),
	.a1 /* IN */ (srczw_2[1]),
	.a2 /* IN */ (srczw_3[1]),
	.a3 /* IN */ (srczw_4[1]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_2
(
	.z /* OUT */ (srcz_1[2]),
	.a0 /* IN */ (srczw_1[2]),
	.a1 /* IN */ (srczw_2[2]),
	.a2 /* IN */ (srczw_3[2]),
	.a3 /* IN */ (srczw_4[2]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_3
(
	.z /* OUT */ (srcz_1[3]),
	.a0 /* IN */ (srczw_1[3]),
	.a1 /* IN */ (srczw_2[3]),
	.a2 /* IN */ (srczw_3[3]),
	.a3 /* IN */ (srczw_4[3]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_4
(
	.z /* OUT */ (srcz_1[4]),
	.a0 /* IN */ (srczw_1[4]),
	.a1 /* IN */ (srczw_2[4]),
	.a2 /* IN */ (srczw_3[4]),
	.a3 /* IN */ (srczw_4[4]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_5
(
	.z /* OUT */ (srcz_1[5]),
	.a0 /* IN */ (srczw_1[5]),
	.a1 /* IN */ (srczw_2[5]),
	.a2 /* IN */ (srczw_3[5]),
	.a3 /* IN */ (srczw_4[5]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_6
(
	.z /* OUT */ (srcz_1[6]),
	.a0 /* IN */ (srczw_1[6]),
	.a1 /* IN */ (srczw_2[6]),
	.a2 /* IN */ (srczw_3[6]),
	.a3 /* IN */ (srczw_4[6]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_7
(
	.z /* OUT */ (srcz_1[7]),
	.a0 /* IN */ (srczw_1[7]),
	.a1 /* IN */ (srczw_2[7]),
	.a2 /* IN */ (srczw_3[7]),
	.a3 /* IN */ (srczw_4[7]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_8
(
	.z /* OUT */ (srcz_1[8]),
	.a0 /* IN */ (srczw_1[8]),
	.a1 /* IN */ (srczw_2[8]),
	.a2 /* IN */ (srczw_3[8]),
	.a3 /* IN */ (srczw_4[8]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_9
(
	.z /* OUT */ (srcz_1[9]),
	.a0 /* IN */ (srczw_1[9]),
	.a1 /* IN */ (srczw_2[9]),
	.a2 /* IN */ (srczw_3[9]),
	.a3 /* IN */ (srczw_4[9]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_10
(
	.z /* OUT */ (srcz_1[10]),
	.a0 /* IN */ (srczw_1[10]),
	.a1 /* IN */ (srczw_2[10]),
	.a2 /* IN */ (srczw_3[10]),
	.a3 /* IN */ (srczw_4[10]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_11
(
	.z /* OUT */ (srcz_1[11]),
	.a0 /* IN */ (srczw_1[11]),
	.a1 /* IN */ (srczw_2[11]),
	.a2 /* IN */ (srczw_3[11]),
	.a3 /* IN */ (srczw_4[11]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_12
(
	.z /* OUT */ (srcz_1[12]),
	.a0 /* IN */ (srczw_1[12]),
	.a1 /* IN */ (srczw_2[12]),
	.a2 /* IN */ (srczw_3[12]),
	.a3 /* IN */ (srczw_4[12]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_13
(
	.z /* OUT */ (srcz_1[13]),
	.a0 /* IN */ (srczw_1[13]),
	.a1 /* IN */ (srczw_2[13]),
	.a2 /* IN */ (srczw_3[13]),
	.a3 /* IN */ (srczw_4[13]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_14
(
	.z /* OUT */ (srcz_1[14]),
	.a0 /* IN */ (srczw_1[14]),
	.a1 /* IN */ (srczw_2[14]),
	.a2 /* IN */ (srczw_3[14]),
	.a3 /* IN */ (srczw_4[14]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);
mx4 srcz_index_1_inst_15
(
	.z /* OUT */ (srcz_1[15]),
	.a0 /* IN */ (srczw_1[15]),
	.a1 /* IN */ (srczw_2[15]),
	.a2 /* IN */ (srczw_3[15]),
	.a3 /* IN */ (srczw_4[15]),
	.s0 /* IN */ (srcshift4b_0),
	.s1 /* IN */ (srcshift5b_0)
);

// DATACOMP.NET (98) - srcz[2] : mx4
mx4 srcz_index_2_inst_0
(
	.z /* OUT */ (srcz_2[0]),
	.a0 /* IN */ (srczw_2[0]),
	.a1 /* IN */ (srczw_3[0]),
	.a2 /* IN */ (srczw_4[0]),
	.a3 /* IN */ (srczw_5[0]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_1
(
	.z /* OUT */ (srcz_2[1]),
	.a0 /* IN */ (srczw_2[1]),
	.a1 /* IN */ (srczw_3[1]),
	.a2 /* IN */ (srczw_4[1]),
	.a3 /* IN */ (srczw_5[1]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_2
(
	.z /* OUT */ (srcz_2[2]),
	.a0 /* IN */ (srczw_2[2]),
	.a1 /* IN */ (srczw_3[2]),
	.a2 /* IN */ (srczw_4[2]),
	.a3 /* IN */ (srczw_5[2]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_3
(
	.z /* OUT */ (srcz_2[3]),
	.a0 /* IN */ (srczw_2[3]),
	.a1 /* IN */ (srczw_3[3]),
	.a2 /* IN */ (srczw_4[3]),
	.a3 /* IN */ (srczw_5[3]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_4
(
	.z /* OUT */ (srcz_2[4]),
	.a0 /* IN */ (srczw_2[4]),
	.a1 /* IN */ (srczw_3[4]),
	.a2 /* IN */ (srczw_4[4]),
	.a3 /* IN */ (srczw_5[4]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_5
(
	.z /* OUT */ (srcz_2[5]),
	.a0 /* IN */ (srczw_2[5]),
	.a1 /* IN */ (srczw_3[5]),
	.a2 /* IN */ (srczw_4[5]),
	.a3 /* IN */ (srczw_5[5]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_6
(
	.z /* OUT */ (srcz_2[6]),
	.a0 /* IN */ (srczw_2[6]),
	.a1 /* IN */ (srczw_3[6]),
	.a2 /* IN */ (srczw_4[6]),
	.a3 /* IN */ (srczw_5[6]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_7
(
	.z /* OUT */ (srcz_2[7]),
	.a0 /* IN */ (srczw_2[7]),
	.a1 /* IN */ (srczw_3[7]),
	.a2 /* IN */ (srczw_4[7]),
	.a3 /* IN */ (srczw_5[7]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_8
(
	.z /* OUT */ (srcz_2[8]),
	.a0 /* IN */ (srczw_2[8]),
	.a1 /* IN */ (srczw_3[8]),
	.a2 /* IN */ (srczw_4[8]),
	.a3 /* IN */ (srczw_5[8]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_9
(
	.z /* OUT */ (srcz_2[9]),
	.a0 /* IN */ (srczw_2[9]),
	.a1 /* IN */ (srczw_3[9]),
	.a2 /* IN */ (srczw_4[9]),
	.a3 /* IN */ (srczw_5[9]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_10
(
	.z /* OUT */ (srcz_2[10]),
	.a0 /* IN */ (srczw_2[10]),
	.a1 /* IN */ (srczw_3[10]),
	.a2 /* IN */ (srczw_4[10]),
	.a3 /* IN */ (srczw_5[10]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_11
(
	.z /* OUT */ (srcz_2[11]),
	.a0 /* IN */ (srczw_2[11]),
	.a1 /* IN */ (srczw_3[11]),
	.a2 /* IN */ (srczw_4[11]),
	.a3 /* IN */ (srczw_5[11]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_12
(
	.z /* OUT */ (srcz_2[12]),
	.a0 /* IN */ (srczw_2[12]),
	.a1 /* IN */ (srczw_3[12]),
	.a2 /* IN */ (srczw_4[12]),
	.a3 /* IN */ (srczw_5[12]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_13
(
	.z /* OUT */ (srcz_2[13]),
	.a0 /* IN */ (srczw_2[13]),
	.a1 /* IN */ (srczw_3[13]),
	.a2 /* IN */ (srczw_4[13]),
	.a3 /* IN */ (srczw_5[13]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_14
(
	.z /* OUT */ (srcz_2[14]),
	.a0 /* IN */ (srczw_2[14]),
	.a1 /* IN */ (srczw_3[14]),
	.a2 /* IN */ (srczw_4[14]),
	.a3 /* IN */ (srczw_5[14]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_2_inst_15
(
	.z /* OUT */ (srcz_2[15]),
	.a0 /* IN */ (srczw_2[15]),
	.a1 /* IN */ (srczw_3[15]),
	.a2 /* IN */ (srczw_4[15]),
	.a3 /* IN */ (srczw_5[15]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);

// DATACOMP.NET (100) - srcz[3] : mx4
mx4 srcz_index_3_inst_0
(
	.z /* OUT */ (srcz_3[0]),
	.a0 /* IN */ (srczw_3[0]),
	.a1 /* IN */ (srczw_4[0]),
	.a2 /* IN */ (srczw_5[0]),
	.a3 /* IN */ (srczw_6[0]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_1
(
	.z /* OUT */ (srcz_3[1]),
	.a0 /* IN */ (srczw_3[1]),
	.a1 /* IN */ (srczw_4[1]),
	.a2 /* IN */ (srczw_5[1]),
	.a3 /* IN */ (srczw_6[1]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_2
(
	.z /* OUT */ (srcz_3[2]),
	.a0 /* IN */ (srczw_3[2]),
	.a1 /* IN */ (srczw_4[2]),
	.a2 /* IN */ (srczw_5[2]),
	.a3 /* IN */ (srczw_6[2]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_3
(
	.z /* OUT */ (srcz_3[3]),
	.a0 /* IN */ (srczw_3[3]),
	.a1 /* IN */ (srczw_4[3]),
	.a2 /* IN */ (srczw_5[3]),
	.a3 /* IN */ (srczw_6[3]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_4
(
	.z /* OUT */ (srcz_3[4]),
	.a0 /* IN */ (srczw_3[4]),
	.a1 /* IN */ (srczw_4[4]),
	.a2 /* IN */ (srczw_5[4]),
	.a3 /* IN */ (srczw_6[4]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_5
(
	.z /* OUT */ (srcz_3[5]),
	.a0 /* IN */ (srczw_3[5]),
	.a1 /* IN */ (srczw_4[5]),
	.a2 /* IN */ (srczw_5[5]),
	.a3 /* IN */ (srczw_6[5]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_6
(
	.z /* OUT */ (srcz_3[6]),
	.a0 /* IN */ (srczw_3[6]),
	.a1 /* IN */ (srczw_4[6]),
	.a2 /* IN */ (srczw_5[6]),
	.a3 /* IN */ (srczw_6[6]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_7
(
	.z /* OUT */ (srcz_3[7]),
	.a0 /* IN */ (srczw_3[7]),
	.a1 /* IN */ (srczw_4[7]),
	.a2 /* IN */ (srczw_5[7]),
	.a3 /* IN */ (srczw_6[7]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_8
(
	.z /* OUT */ (srcz_3[8]),
	.a0 /* IN */ (srczw_3[8]),
	.a1 /* IN */ (srczw_4[8]),
	.a2 /* IN */ (srczw_5[8]),
	.a3 /* IN */ (srczw_6[8]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_9
(
	.z /* OUT */ (srcz_3[9]),
	.a0 /* IN */ (srczw_3[9]),
	.a1 /* IN */ (srczw_4[9]),
	.a2 /* IN */ (srczw_5[9]),
	.a3 /* IN */ (srczw_6[9]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_10
(
	.z /* OUT */ (srcz_3[10]),
	.a0 /* IN */ (srczw_3[10]),
	.a1 /* IN */ (srczw_4[10]),
	.a2 /* IN */ (srczw_5[10]),
	.a3 /* IN */ (srczw_6[10]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_11
(
	.z /* OUT */ (srcz_3[11]),
	.a0 /* IN */ (srczw_3[11]),
	.a1 /* IN */ (srczw_4[11]),
	.a2 /* IN */ (srczw_5[11]),
	.a3 /* IN */ (srczw_6[11]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_12
(
	.z /* OUT */ (srcz_3[12]),
	.a0 /* IN */ (srczw_3[12]),
	.a1 /* IN */ (srczw_4[12]),
	.a2 /* IN */ (srczw_5[12]),
	.a3 /* IN */ (srczw_6[12]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_13
(
	.z /* OUT */ (srcz_3[13]),
	.a0 /* IN */ (srczw_3[13]),
	.a1 /* IN */ (srczw_4[13]),
	.a2 /* IN */ (srczw_5[13]),
	.a3 /* IN */ (srczw_6[13]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_14
(
	.z /* OUT */ (srcz_3[14]),
	.a0 /* IN */ (srczw_3[14]),
	.a1 /* IN */ (srczw_4[14]),
	.a2 /* IN */ (srczw_5[14]),
	.a3 /* IN */ (srczw_6[14]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);
mx4 srcz_index_3_inst_15
(
	.z /* OUT */ (srcz_3[15]),
	.a0 /* IN */ (srczw_3[15]),
	.a1 /* IN */ (srczw_4[15]),
	.a2 /* IN */ (srczw_5[15]),
	.a3 /* IN */ (srczw_6[15]),
	.s0 /* IN */ (srcshift4b_1),
	.s1 /* IN */ (srcshift5b_1)
);

// DATACOMP.NET (103) - srczlo : join
assign srczlo[0] = srcz_0[0];
assign srczlo[1] = srcz_0[1];
assign srczlo[2] = srcz_0[2];
assign srczlo[3] = srcz_0[3];
assign srczlo[4] = srcz_0[4];
assign srczlo[5] = srcz_0[5];
assign srczlo[6] = srcz_0[6];
assign srczlo[7] = srcz_0[7];
assign srczlo[8] = srcz_0[8];
assign srczlo[9] = srcz_0[9];
assign srczlo[10] = srcz_0[10];
assign srczlo[11] = srcz_0[11];
assign srczlo[12] = srcz_0[12];
assign srczlo[13] = srcz_0[13];
assign srczlo[14] = srcz_0[14];
assign srczlo[15] = srcz_0[15];
assign srczlo[16] = srcz_1[0];
assign srczlo[17] = srcz_1[1];
assign srczlo[18] = srcz_1[2];
assign srczlo[19] = srcz_1[3];
assign srczlo[20] = srcz_1[4];
assign srczlo[21] = srcz_1[5];
assign srczlo[22] = srcz_1[6];
assign srczlo[23] = srcz_1[7];
assign srczlo[24] = srcz_1[8];
assign srczlo[25] = srcz_1[9];
assign srczlo[26] = srcz_1[10];
assign srczlo[27] = srcz_1[11];
assign srczlo[28] = srcz_1[12];
assign srczlo[29] = srcz_1[13];
assign srczlo[30] = srcz_1[14];
assign srczlo[31] = srcz_1[15];

// DATACOMP.NET (104) - srczhi : join
assign srczhi[0] = srcz_2[0];
assign srczhi[1] = srcz_2[1];
assign srczhi[2] = srcz_2[2];
assign srczhi[3] = srcz_2[3];
assign srczhi[4] = srcz_2[4];
assign srczhi[5] = srcz_2[5];
assign srczhi[6] = srcz_2[6];
assign srczhi[7] = srcz_2[7];
assign srczhi[8] = srcz_2[8];
assign srczhi[9] = srcz_2[9];
assign srczhi[10] = srcz_2[10];
assign srczhi[11] = srcz_2[11];
assign srczhi[12] = srcz_2[12];
assign srczhi[13] = srcz_2[13];
assign srczhi[14] = srcz_2[14];
assign srczhi[15] = srcz_2[15];
assign srczhi[16] = srcz_3[0];
assign srczhi[17] = srcz_3[1];
assign srczhi[18] = srcz_3[2];
assign srczhi[19] = srcz_3[3];
assign srczhi[20] = srcz_3[4];
assign srczhi[21] = srcz_3[5];
assign srczhi[22] = srcz_3[6];
assign srczhi[23] = srcz_3[7];
assign srczhi[24] = srcz_3[8];
assign srczhi[25] = srcz_3[9];
assign srczhi[26] = srcz_3[10];
assign srczhi[27] = srcz_3[11];
assign srczhi[28] = srcz_3[12];
assign srczhi[29] = srcz_3[13];
assign srczhi[30] = srcz_3[14];
assign srczhi[31] = srcz_3[15];
endmodule
/* verilator lint_on LITENDIAN */
