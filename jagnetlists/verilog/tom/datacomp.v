/* verilator lint_off LITENDIAN */
`include "defs.v"

module datacomp
(
	output dcomp_0,
	output dcomp_1,
	output dcomp_2,
	output dcomp_3,
	output dcomp_4,
	output dcomp_5,
	output dcomp_6,
	output dcomp_7,
	input cmpdst,
	input [0:31] dstdlo,
	input [0:31] dstdhi,
	input [0:31] patdlo,
	input [0:31] patdhi,
	input [0:31] srcdlo,
	input [0:31] srcdhi
);
wire [0:7] patb_0;
wire [0:7] patb_1;
wire [0:7] patb_2;
wire [0:7] patb_3;
wire [0:7] patb_4;
wire [0:7] patb_5;
wire [0:7] patb_6;
wire [0:7] patb_7;
wire [0:7] tarb_0;
wire [0:7] tarb_1;
wire [0:7] tarb_2;
wire [0:7] tarb_3;
wire [0:7] tarb_4;
wire [0:7] tarb_5;
wire [0:7] tarb_6;
wire [0:7] tarb_7;
wire [0:31] tardlo;
wire [0:31] tardhi;
wire cmpdstb_0;
wire cmpdstb_1;

// DATACOMP.NET (41) - cmpdstb[0-1] : nivu
assign cmpdstb_0 = cmpdst;
assign cmpdstb_1 = cmpdst;

// DATACOMP.NET (42) - tardlo : mx2
assign tardlo[0] = (cmpdstb_0) ? dstdlo[0] : srcdlo[0];
assign tardlo[1] = (cmpdstb_0) ? dstdlo[1] : srcdlo[1];
assign tardlo[2] = (cmpdstb_0) ? dstdlo[2] : srcdlo[2];
assign tardlo[3] = (cmpdstb_0) ? dstdlo[3] : srcdlo[3];
assign tardlo[4] = (cmpdstb_0) ? dstdlo[4] : srcdlo[4];
assign tardlo[5] = (cmpdstb_0) ? dstdlo[5] : srcdlo[5];
assign tardlo[6] = (cmpdstb_0) ? dstdlo[6] : srcdlo[6];
assign tardlo[7] = (cmpdstb_0) ? dstdlo[7] : srcdlo[7];
assign tardlo[8] = (cmpdstb_0) ? dstdlo[8] : srcdlo[8];
assign tardlo[9] = (cmpdstb_0) ? dstdlo[9] : srcdlo[9];
assign tardlo[10] = (cmpdstb_0) ? dstdlo[10] : srcdlo[10];
assign tardlo[11] = (cmpdstb_0) ? dstdlo[11] : srcdlo[11];
assign tardlo[12] = (cmpdstb_0) ? dstdlo[12] : srcdlo[12];
assign tardlo[13] = (cmpdstb_0) ? dstdlo[13] : srcdlo[13];
assign tardlo[14] = (cmpdstb_0) ? dstdlo[14] : srcdlo[14];
assign tardlo[15] = (cmpdstb_0) ? dstdlo[15] : srcdlo[15];
assign tardlo[16] = (cmpdstb_0) ? dstdlo[16] : srcdlo[16];
assign tardlo[17] = (cmpdstb_0) ? dstdlo[17] : srcdlo[17];
assign tardlo[18] = (cmpdstb_0) ? dstdlo[18] : srcdlo[18];
assign tardlo[19] = (cmpdstb_0) ? dstdlo[19] : srcdlo[19];
assign tardlo[20] = (cmpdstb_0) ? dstdlo[20] : srcdlo[20];
assign tardlo[21] = (cmpdstb_0) ? dstdlo[21] : srcdlo[21];
assign tardlo[22] = (cmpdstb_0) ? dstdlo[22] : srcdlo[22];
assign tardlo[23] = (cmpdstb_0) ? dstdlo[23] : srcdlo[23];
assign tardlo[24] = (cmpdstb_0) ? dstdlo[24] : srcdlo[24];
assign tardlo[25] = (cmpdstb_0) ? dstdlo[25] : srcdlo[25];
assign tardlo[26] = (cmpdstb_0) ? dstdlo[26] : srcdlo[26];
assign tardlo[27] = (cmpdstb_0) ? dstdlo[27] : srcdlo[27];
assign tardlo[28] = (cmpdstb_0) ? dstdlo[28] : srcdlo[28];
assign tardlo[29] = (cmpdstb_0) ? dstdlo[29] : srcdlo[29];
assign tardlo[30] = (cmpdstb_0) ? dstdlo[30] : srcdlo[30];
assign tardlo[31] = (cmpdstb_0) ? dstdlo[31] : srcdlo[31];

// DATACOMP.NET (43) - tardhi : mx2
assign tardhi[0] = (cmpdstb_1) ? dstdhi[0] : srcdhi[0];
assign tardhi[1] = (cmpdstb_1) ? dstdhi[1] : srcdhi[1];
assign tardhi[2] = (cmpdstb_1) ? dstdhi[2] : srcdhi[2];
assign tardhi[3] = (cmpdstb_1) ? dstdhi[3] : srcdhi[3];
assign tardhi[4] = (cmpdstb_1) ? dstdhi[4] : srcdhi[4];
assign tardhi[5] = (cmpdstb_1) ? dstdhi[5] : srcdhi[5];
assign tardhi[6] = (cmpdstb_1) ? dstdhi[6] : srcdhi[6];
assign tardhi[7] = (cmpdstb_1) ? dstdhi[7] : srcdhi[7];
assign tardhi[8] = (cmpdstb_1) ? dstdhi[8] : srcdhi[8];
assign tardhi[9] = (cmpdstb_1) ? dstdhi[9] : srcdhi[9];
assign tardhi[10] = (cmpdstb_1) ? dstdhi[10] : srcdhi[10];
assign tardhi[11] = (cmpdstb_1) ? dstdhi[11] : srcdhi[11];
assign tardhi[12] = (cmpdstb_1) ? dstdhi[12] : srcdhi[12];
assign tardhi[13] = (cmpdstb_1) ? dstdhi[13] : srcdhi[13];
assign tardhi[14] = (cmpdstb_1) ? dstdhi[14] : srcdhi[14];
assign tardhi[15] = (cmpdstb_1) ? dstdhi[15] : srcdhi[15];
assign tardhi[16] = (cmpdstb_1) ? dstdhi[16] : srcdhi[16];
assign tardhi[17] = (cmpdstb_1) ? dstdhi[17] : srcdhi[17];
assign tardhi[18] = (cmpdstb_1) ? dstdhi[18] : srcdhi[18];
assign tardhi[19] = (cmpdstb_1) ? dstdhi[19] : srcdhi[19];
assign tardhi[20] = (cmpdstb_1) ? dstdhi[20] : srcdhi[20];
assign tardhi[21] = (cmpdstb_1) ? dstdhi[21] : srcdhi[21];
assign tardhi[22] = (cmpdstb_1) ? dstdhi[22] : srcdhi[22];
assign tardhi[23] = (cmpdstb_1) ? dstdhi[23] : srcdhi[23];
assign tardhi[24] = (cmpdstb_1) ? dstdhi[24] : srcdhi[24];
assign tardhi[25] = (cmpdstb_1) ? dstdhi[25] : srcdhi[25];
assign tardhi[26] = (cmpdstb_1) ? dstdhi[26] : srcdhi[26];
assign tardhi[27] = (cmpdstb_1) ? dstdhi[27] : srcdhi[27];
assign tardhi[28] = (cmpdstb_1) ? dstdhi[28] : srcdhi[28];
assign tardhi[29] = (cmpdstb_1) ? dstdhi[29] : srcdhi[29];
assign tardhi[30] = (cmpdstb_1) ? dstdhi[30] : srcdhi[30];
assign tardhi[31] = (cmpdstb_1) ? dstdhi[31] : srcdhi[31];

// DATACOMP.NET (45) - patb[0] : join
assign patb_0[0] = patdlo[0];
assign patb_0[1] = patdlo[1];
assign patb_0[2] = patdlo[2];
assign patb_0[3] = patdlo[3];
assign patb_0[4] = patdlo[4];
assign patb_0[5] = patdlo[5];
assign patb_0[6] = patdlo[6];
assign patb_0[7] = patdlo[7];

// DATACOMP.NET (46) - patb[1] : join
assign patb_1[0] = patdlo[8];
assign patb_1[1] = patdlo[9];
assign patb_1[2] = patdlo[10];
assign patb_1[3] = patdlo[11];
assign patb_1[4] = patdlo[12];
assign patb_1[5] = patdlo[13];
assign patb_1[6] = patdlo[14];
assign patb_1[7] = patdlo[15];

// DATACOMP.NET (47) - patb[2] : join
assign patb_2[0] = patdlo[16];
assign patb_2[1] = patdlo[17];
assign patb_2[2] = patdlo[18];
assign patb_2[3] = patdlo[19];
assign patb_2[4] = patdlo[20];
assign patb_2[5] = patdlo[21];
assign patb_2[6] = patdlo[22];
assign patb_2[7] = patdlo[23];

// DATACOMP.NET (48) - patb[3] : join
assign patb_3[0] = patdlo[24];
assign patb_3[1] = patdlo[25];
assign patb_3[2] = patdlo[26];
assign patb_3[3] = patdlo[27];
assign patb_3[4] = patdlo[28];
assign patb_3[5] = patdlo[29];
assign patb_3[6] = patdlo[30];
assign patb_3[7] = patdlo[31];

// DATACOMP.NET (49) - patb[4] : join
assign patb_4[0] = patdhi[0];
assign patb_4[1] = patdhi[1];
assign patb_4[2] = patdhi[2];
assign patb_4[3] = patdhi[3];
assign patb_4[4] = patdhi[4];
assign patb_4[5] = patdhi[5];
assign patb_4[6] = patdhi[6];
assign patb_4[7] = patdhi[7];

// DATACOMP.NET (50) - patb[5] : join
assign patb_5[0] = patdhi[8];
assign patb_5[1] = patdhi[9];
assign patb_5[2] = patdhi[10];
assign patb_5[3] = patdhi[11];
assign patb_5[4] = patdhi[12];
assign patb_5[5] = patdhi[13];
assign patb_5[6] = patdhi[14];
assign patb_5[7] = patdhi[15];

// DATACOMP.NET (51) - patb[6] : join
assign patb_6[0] = patdhi[16];
assign patb_6[1] = patdhi[17];
assign patb_6[2] = patdhi[18];
assign patb_6[3] = patdhi[19];
assign patb_6[4] = patdhi[20];
assign patb_6[5] = patdhi[21];
assign patb_6[6] = patdhi[22];
assign patb_6[7] = patdhi[23];

// DATACOMP.NET (52) - patb[7] : join
assign patb_7[0] = patdhi[24];
assign patb_7[1] = patdhi[25];
assign patb_7[2] = patdhi[26];
assign patb_7[3] = patdhi[27];
assign patb_7[4] = patdhi[28];
assign patb_7[5] = patdhi[29];
assign patb_7[6] = patdhi[30];
assign patb_7[7] = patdhi[31];

// DATACOMP.NET (54) - tarb[0] : join
assign tarb_0[0] = tardlo[0];
assign tarb_0[1] = tardlo[1];
assign tarb_0[2] = tardlo[2];
assign tarb_0[3] = tardlo[3];
assign tarb_0[4] = tardlo[4];
assign tarb_0[5] = tardlo[5];
assign tarb_0[6] = tardlo[6];
assign tarb_0[7] = tardlo[7];

// DATACOMP.NET (55) - tarb[1] : join
assign tarb_1[0] = tardlo[8];
assign tarb_1[1] = tardlo[9];
assign tarb_1[2] = tardlo[10];
assign tarb_1[3] = tardlo[11];
assign tarb_1[4] = tardlo[12];
assign tarb_1[5] = tardlo[13];
assign tarb_1[6] = tardlo[14];
assign tarb_1[7] = tardlo[15];

// DATACOMP.NET (56) - tarb[2] : join
assign tarb_2[0] = tardlo[16];
assign tarb_2[1] = tardlo[17];
assign tarb_2[2] = tardlo[18];
assign tarb_2[3] = tardlo[19];
assign tarb_2[4] = tardlo[20];
assign tarb_2[5] = tardlo[21];
assign tarb_2[6] = tardlo[22];
assign tarb_2[7] = tardlo[23];

// DATACOMP.NET (57) - tarb[3] : join
assign tarb_3[0] = tardlo[24];
assign tarb_3[1] = tardlo[25];
assign tarb_3[2] = tardlo[26];
assign tarb_3[3] = tardlo[27];
assign tarb_3[4] = tardlo[28];
assign tarb_3[5] = tardlo[29];
assign tarb_3[6] = tardlo[30];
assign tarb_3[7] = tardlo[31];

// DATACOMP.NET (58) - tarb[4] : join
assign tarb_4[0] = tardhi[0];
assign tarb_4[1] = tardhi[1];
assign tarb_4[2] = tardhi[2];
assign tarb_4[3] = tardhi[3];
assign tarb_4[4] = tardhi[4];
assign tarb_4[5] = tardhi[5];
assign tarb_4[6] = tardhi[6];
assign tarb_4[7] = tardhi[7];

// DATACOMP.NET (59) - tarb[5] : join
assign tarb_5[0] = tardhi[8];
assign tarb_5[1] = tardhi[9];
assign tarb_5[2] = tardhi[10];
assign tarb_5[3] = tardhi[11];
assign tarb_5[4] = tardhi[12];
assign tarb_5[5] = tardhi[13];
assign tarb_5[6] = tardhi[14];
assign tarb_5[7] = tardhi[15];

// DATACOMP.NET (60) - tarb[6] : join
assign tarb_6[0] = tardhi[16];
assign tarb_6[1] = tardhi[17];
assign tarb_6[2] = tardhi[18];
assign tarb_6[3] = tardhi[19];
assign tarb_6[4] = tardhi[20];
assign tarb_6[5] = tardhi[21];
assign tarb_6[6] = tardhi[22];
assign tarb_6[7] = tardhi[23];

// DATACOMP.NET (61) - tarb[7] : join
assign tarb_7[0] = tardhi[24];
assign tarb_7[1] = tardhi[25];
assign tarb_7[2] = tardhi[26];
assign tarb_7[3] = tardhi[27];
assign tarb_7[4] = tardhi[28];
assign tarb_7[5] = tardhi[29];
assign tarb_7[6] = tardhi[30];
assign tarb_7[7] = tardhi[31];

// DATACOMP.NET (63) - dcmp[0-7] : cmp8_int
cmp8_int dcmp_from_0_to_7_inst_0
(
	.equal /* OUT */ (dcomp_0),
	.a /* IN */ ({patb_0[0],patb_0[1],patb_0[2],patb_0[3],patb_0[4],patb_0[5],patb_0[6],patb_0[7]}),
	.b /* IN */ ({tarb_0[0],tarb_0[1],tarb_0[2],tarb_0[3],tarb_0[4],tarb_0[5],tarb_0[6],tarb_0[7]})
);
cmp8_int dcmp_from_0_to_7_inst_1
(
	.equal /* OUT */ (dcomp_1),
	.a /* IN */ ({patb_1[0],patb_1[1],patb_1[2],patb_1[3],patb_1[4],patb_1[5],patb_1[6],patb_1[7]}),
	.b /* IN */ ({tarb_1[0],tarb_1[1],tarb_1[2],tarb_1[3],tarb_1[4],tarb_1[5],tarb_1[6],tarb_1[7]})
);
cmp8_int dcmp_from_0_to_7_inst_2
(
	.equal /* OUT */ (dcomp_2),
	.a /* IN */ ({patb_2[0],patb_2[1],patb_2[2],patb_2[3],patb_2[4],patb_2[5],patb_2[6],patb_2[7]}),
	.b /* IN */ ({tarb_2[0],tarb_2[1],tarb_2[2],tarb_2[3],tarb_2[4],tarb_2[5],tarb_2[6],tarb_2[7]})
);
cmp8_int dcmp_from_0_to_7_inst_3
(
	.equal /* OUT */ (dcomp_3),
	.a /* IN */ ({patb_3[0],patb_3[1],patb_3[2],patb_3[3],patb_3[4],patb_3[5],patb_3[6],patb_3[7]}),
	.b /* IN */ ({tarb_3[0],tarb_3[1],tarb_3[2],tarb_3[3],tarb_3[4],tarb_3[5],tarb_3[6],tarb_3[7]})
);
cmp8_int dcmp_from_0_to_7_inst_4
(
	.equal /* OUT */ (dcomp_4),
	.a /* IN */ ({patb_4[0],patb_4[1],patb_4[2],patb_4[3],patb_4[4],patb_4[5],patb_4[6],patb_4[7]}),
	.b /* IN */ ({tarb_4[0],tarb_4[1],tarb_4[2],tarb_4[3],tarb_4[4],tarb_4[5],tarb_4[6],tarb_4[7]})
);
cmp8_int dcmp_from_0_to_7_inst_5
(
	.equal /* OUT */ (dcomp_5),
	.a /* IN */ ({patb_5[0],patb_5[1],patb_5[2],patb_5[3],patb_5[4],patb_5[5],patb_5[6],patb_5[7]}),
	.b /* IN */ ({tarb_5[0],tarb_5[1],tarb_5[2],tarb_5[3],tarb_5[4],tarb_5[5],tarb_5[6],tarb_5[7]})
);
cmp8_int dcmp_from_0_to_7_inst_6
(
	.equal /* OUT */ (dcomp_6),
	.a /* IN */ ({patb_6[0],patb_6[1],patb_6[2],patb_6[3],patb_6[4],patb_6[5],patb_6[6],patb_6[7]}),
	.b /* IN */ ({tarb_6[0],tarb_6[1],tarb_6[2],tarb_6[3],tarb_6[4],tarb_6[5],tarb_6[6],tarb_6[7]})
);
cmp8_int dcmp_from_0_to_7_inst_7
(
	.equal /* OUT */ (dcomp_7),
	.a /* IN */ ({patb_7[0],patb_7[1],patb_7[2],patb_7[3],patb_7[4],patb_7[5],patb_7[6],patb_7[7]}),
	.b /* IN */ ({tarb_7[0],tarb_7[1],tarb_7[2],tarb_7[3],tarb_7[4],tarb_7[5],tarb_7[6],tarb_7[7]})
);
endmodule
/* verilator lint_on LITENDIAN */
