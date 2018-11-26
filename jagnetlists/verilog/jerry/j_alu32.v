/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_alu32
(
	output [0:31] aluq,
	output alu_co,
	input [0:31] alua,
	input [0:31] alub,
	input carry_flag,
	input [0:2] alufunc,
	input dstdp_31,
	input rev_subp
);
wire [0:31] _and;
wire [0:31] _or;
wire [0:31] _xor;
wire [0:31] compa32;
wire [0:31] compb32;
wire [0:31] adda;
wire [0:31] addb;
wire [0:31] sum;
wire alufunc_0;
wire alufunc_1;
wire alufunc_2;
wire alufunc_n_2;
wire rev_subp_n;
wire subt_0;
wire subt_1;
wire subtract;
wire subtractb;
wire compa_0;
wire compa_1;
wire compb_0;
wire compb_1;
wire cint;
wire cin;
wire alu_cout;
wire unused_0;
wire unused_1;
wire selt_0;
wire selt_1;
wire sel_0;
wire sel_1;

// DSP_A-5Q.NET (402) - alufunc[0-2] : join
assign alufunc_0 = alufunc[0];
assign alufunc_1 = alufunc[1];
assign alufunc_2 = alufunc[2];

// DSP_A-5Q.NET (403) - alufunc\[2] : ivs
assign alufunc_n_2 = ~alufunc_2;

// DSP_A-5Q.NET (404) - rev_subp\ : iv
assign rev_subp_n = ~rev_subp;

// DSP_A-5Q.NET (408) - subt0 : nd4p
assign subt_0 = ~(alufunc_0 & alufunc_1 & alufunc_2 & dstdp_31);

// DSP_A-5Q.NET (409) - subt1 : nd2p
assign subt_1 = ~(alufunc_1 & alufunc_n_2);

// DSP_A-5Q.NET (410) - subtract : nd2p
assign subtract = ~(subt_0 & subt_1);

// DSP_A-5Q.NET (411) - subtractb : nd2p
assign subtractb = ~(subt_0 & subt_1);

// DSP_A-5Q.NET (415) - compa[0-1] : an2u
assign compa_0 = subtractb & rev_subp;
assign compa_1 = subtractb & rev_subp;

// DSP_A-5Q.NET (416) - compb[0-1] : an2u
assign compb_0 = subtractb & rev_subp_n;
assign compb_1 = subtractb & rev_subp_n;

// DSP_A-5Q.NET (417) - compa32 : join
assign compa32[0] = compa_0;
assign compa32[1] = compa_0;
assign compa32[2] = compa_0;
assign compa32[3] = compa_0;
assign compa32[4] = compa_0;
assign compa32[5] = compa_0;
assign compa32[6] = compa_0;
assign compa32[7] = compa_0;
assign compa32[8] = compa_0;
assign compa32[9] = compa_0;
assign compa32[10] = compa_0;
assign compa32[11] = compa_0;
assign compa32[12] = compa_0;
assign compa32[13] = compa_0;
assign compa32[14] = compa_0;
assign compa32[15] = compa_0;
assign compa32[16] = compa_1;
assign compa32[17] = compa_1;
assign compa32[18] = compa_1;
assign compa32[19] = compa_1;
assign compa32[20] = compa_1;
assign compa32[21] = compa_1;
assign compa32[22] = compa_1;
assign compa32[23] = compa_1;
assign compa32[24] = compa_1;
assign compa32[25] = compa_1;
assign compa32[26] = compa_1;
assign compa32[27] = compa_1;
assign compa32[28] = compa_1;
assign compa32[29] = compa_1;
assign compa32[30] = compa_1;
assign compa32[31] = compa_1;

// DSP_A-5Q.NET (426) - compb32 : join
assign compb32[0] = compb_0;
assign compb32[1] = compb_0;
assign compb32[2] = compb_0;
assign compb32[3] = compb_0;
assign compb32[4] = compb_0;
assign compb32[5] = compb_0;
assign compb32[6] = compb_0;
assign compb32[7] = compb_0;
assign compb32[8] = compb_0;
assign compb32[9] = compb_0;
assign compb32[10] = compb_0;
assign compb32[11] = compb_0;
assign compb32[12] = compb_0;
assign compb32[13] = compb_0;
assign compb32[14] = compb_0;
assign compb32[15] = compb_0;
assign compb32[16] = compb_1;
assign compb32[17] = compb_1;
assign compb32[18] = compb_1;
assign compb32[19] = compb_1;
assign compb32[20] = compb_1;
assign compb32[21] = compb_1;
assign compb32[22] = compb_1;
assign compb32[23] = compb_1;
assign compb32[24] = compb_1;
assign compb32[25] = compb_1;
assign compb32[26] = compb_1;
assign compb32[27] = compb_1;
assign compb32[28] = compb_1;
assign compb32[29] = compb_1;
assign compb32[30] = compb_1;
assign compb32[31] = compb_1;

// DSP_A-5Q.NET (436) - adda : eo
assign adda[0] = alua[0] ^ compa32[0];
assign adda[1] = alua[1] ^ compa32[1];
assign adda[2] = alua[2] ^ compa32[2];
assign adda[3] = alua[3] ^ compa32[3];
assign adda[4] = alua[4] ^ compa32[4];
assign adda[5] = alua[5] ^ compa32[5];
assign adda[6] = alua[6] ^ compa32[6];
assign adda[7] = alua[7] ^ compa32[7];
assign adda[8] = alua[8] ^ compa32[8];
assign adda[9] = alua[9] ^ compa32[9];
assign adda[10] = alua[10] ^ compa32[10];
assign adda[11] = alua[11] ^ compa32[11];
assign adda[12] = alua[12] ^ compa32[12];
assign adda[13] = alua[13] ^ compa32[13];
assign adda[14] = alua[14] ^ compa32[14];
assign adda[15] = alua[15] ^ compa32[15];
assign adda[16] = alua[16] ^ compa32[16];
assign adda[17] = alua[17] ^ compa32[17];
assign adda[18] = alua[18] ^ compa32[18];
assign adda[19] = alua[19] ^ compa32[19];
assign adda[20] = alua[20] ^ compa32[20];
assign adda[21] = alua[21] ^ compa32[21];
assign adda[22] = alua[22] ^ compa32[22];
assign adda[23] = alua[23] ^ compa32[23];
assign adda[24] = alua[24] ^ compa32[24];
assign adda[25] = alua[25] ^ compa32[25];
assign adda[26] = alua[26] ^ compa32[26];
assign adda[27] = alua[27] ^ compa32[27];
assign adda[28] = alua[28] ^ compa32[28];
assign adda[29] = alua[29] ^ compa32[29];
assign adda[30] = alua[30] ^ compa32[30];
assign adda[31] = alua[31] ^ compa32[31];

// DSP_A-5Q.NET (437) - addb : eo
assign addb[0] = alub[0] ^ compb32[0];
assign addb[1] = alub[1] ^ compb32[1];
assign addb[2] = alub[2] ^ compb32[2];
assign addb[3] = alub[3] ^ compb32[3];
assign addb[4] = alub[4] ^ compb32[4];
assign addb[5] = alub[5] ^ compb32[5];
assign addb[6] = alub[6] ^ compb32[6];
assign addb[7] = alub[7] ^ compb32[7];
assign addb[8] = alub[8] ^ compb32[8];
assign addb[9] = alub[9] ^ compb32[9];
assign addb[10] = alub[10] ^ compb32[10];
assign addb[11] = alub[11] ^ compb32[11];
assign addb[12] = alub[12] ^ compb32[12];
assign addb[13] = alub[13] ^ compb32[13];
assign addb[14] = alub[14] ^ compb32[14];
assign addb[15] = alub[15] ^ compb32[15];
assign addb[16] = alub[16] ^ compb32[16];
assign addb[17] = alub[17] ^ compb32[17];
assign addb[18] = alub[18] ^ compb32[18];
assign addb[19] = alub[19] ^ compb32[19];
assign addb[20] = alub[20] ^ compb32[20];
assign addb[21] = alub[21] ^ compb32[21];
assign addb[22] = alub[22] ^ compb32[22];
assign addb[23] = alub[23] ^ compb32[23];
assign addb[24] = alub[24] ^ compb32[24];
assign addb[25] = alub[25] ^ compb32[25];
assign addb[26] = alub[26] ^ compb32[26];
assign addb[27] = alub[27] ^ compb32[27];
assign addb[28] = alub[28] ^ compb32[28];
assign addb[29] = alub[29] ^ compb32[29];
assign addb[30] = alub[30] ^ compb32[30];
assign addb[31] = alub[31] ^ compb32[31];

// DSP_A-5Q.NET (442) - cint : an3
assign cint = alufunc_0 & alufunc_n_2 & carry_flag;

// DSP_A-5Q.NET (443) - cin : eo
assign cin = cint ^ subtract;

// DSP_A-5Q.NET (447) - sum : fa32_int
j_fa32_int sum_inst
(
	.s /* OUT */ ({sum[0],sum[1],sum[2],sum[3],sum[4],sum[5],sum[6],sum[7],sum[8],sum[9],sum[10],sum[11],sum[12],sum[13],sum[14],sum[15],sum[16],sum[17],sum[18],sum[19],sum[20],sum[21],sum[22],sum[23],sum[24],sum[25],sum[26],sum[27],sum[28],sum[29],sum[30],sum[31]}),
	.co32 /* OUT */ (alu_cout),
	.co31 /* OUT */ (unused_0),
	.co24 /* OUT */ (unused_1),
	.c /* IN */ (cin),
	.a /* IN */ ({adda[0],adda[1],adda[2],adda[3],adda[4],adda[5],adda[6],adda[7],adda[8],adda[9],adda[10],adda[11],adda[12],adda[13],adda[14],adda[15],adda[16],adda[17],adda[18],adda[19],adda[20],adda[21],adda[22],adda[23],adda[24],adda[25],adda[26],adda[27],adda[28],adda[29],adda[30],adda[31]}),
	.b /* IN */ ({addb[0],addb[1],addb[2],addb[3],addb[4],addb[5],addb[6],addb[7],addb[8],addb[9],addb[10],addb[11],addb[12],addb[13],addb[14],addb[15],addb[16],addb[17],addb[18],addb[19],addb[20],addb[21],addb[22],addb[23],addb[24],addb[25],addb[26],addb[27],addb[28],addb[29],addb[30],addb[31]})
);

// DSP_A-5Q.NET (452) - and : an2
assign _and[0] = alua[0] & alub[0];
assign _and[1] = alua[1] & alub[1];
assign _and[2] = alua[2] & alub[2];
assign _and[3] = alua[3] & alub[3];
assign _and[4] = alua[4] & alub[4];
assign _and[5] = alua[5] & alub[5];
assign _and[6] = alua[6] & alub[6];
assign _and[7] = alua[7] & alub[7];
assign _and[8] = alua[8] & alub[8];
assign _and[9] = alua[9] & alub[9];
assign _and[10] = alua[10] & alub[10];
assign _and[11] = alua[11] & alub[11];
assign _and[12] = alua[12] & alub[12];
assign _and[13] = alua[13] & alub[13];
assign _and[14] = alua[14] & alub[14];
assign _and[15] = alua[15] & alub[15];
assign _and[16] = alua[16] & alub[16];
assign _and[17] = alua[17] & alub[17];
assign _and[18] = alua[18] & alub[18];
assign _and[19] = alua[19] & alub[19];
assign _and[20] = alua[20] & alub[20];
assign _and[21] = alua[21] & alub[21];
assign _and[22] = alua[22] & alub[22];
assign _and[23] = alua[23] & alub[23];
assign _and[24] = alua[24] & alub[24];
assign _and[25] = alua[25] & alub[25];
assign _and[26] = alua[26] & alub[26];
assign _and[27] = alua[27] & alub[27];
assign _and[28] = alua[28] & alub[28];
assign _and[29] = alua[29] & alub[29];
assign _and[30] = alua[30] & alub[30];
assign _and[31] = alua[31] & alub[31];

// DSP_A-5Q.NET (453) - or : or2
assign _or[0] = alua[0] | alub[0];
assign _or[1] = alua[1] | alub[1];
assign _or[2] = alua[2] | alub[2];
assign _or[3] = alua[3] | alub[3];
assign _or[4] = alua[4] | alub[4];
assign _or[5] = alua[5] | alub[5];
assign _or[6] = alua[6] | alub[6];
assign _or[7] = alua[7] | alub[7];
assign _or[8] = alua[8] | alub[8];
assign _or[9] = alua[9] | alub[9];
assign _or[10] = alua[10] | alub[10];
assign _or[11] = alua[11] | alub[11];
assign _or[12] = alua[12] | alub[12];
assign _or[13] = alua[13] | alub[13];
assign _or[14] = alua[14] | alub[14];
assign _or[15] = alua[15] | alub[15];
assign _or[16] = alua[16] | alub[16];
assign _or[17] = alua[17] | alub[17];
assign _or[18] = alua[18] | alub[18];
assign _or[19] = alua[19] | alub[19];
assign _or[20] = alua[20] | alub[20];
assign _or[21] = alua[21] | alub[21];
assign _or[22] = alua[22] | alub[22];
assign _or[23] = alua[23] | alub[23];
assign _or[24] = alua[24] | alub[24];
assign _or[25] = alua[25] | alub[25];
assign _or[26] = alua[26] | alub[26];
assign _or[27] = alua[27] | alub[27];
assign _or[28] = alua[28] | alub[28];
assign _or[29] = alua[29] | alub[29];
assign _or[30] = alua[30] | alub[30];
assign _or[31] = alua[31] | alub[31];

// DSP_A-5Q.NET (454) - xor : eo
assign _xor[0] = alua[0] ^ alub[0];
assign _xor[1] = alua[1] ^ alub[1];
assign _xor[2] = alua[2] ^ alub[2];
assign _xor[3] = alua[3] ^ alub[3];
assign _xor[4] = alua[4] ^ alub[4];
assign _xor[5] = alua[5] ^ alub[5];
assign _xor[6] = alua[6] ^ alub[6];
assign _xor[7] = alua[7] ^ alub[7];
assign _xor[8] = alua[8] ^ alub[8];
assign _xor[9] = alua[9] ^ alub[9];
assign _xor[10] = alua[10] ^ alub[10];
assign _xor[11] = alua[11] ^ alub[11];
assign _xor[12] = alua[12] ^ alub[12];
assign _xor[13] = alua[13] ^ alub[13];
assign _xor[14] = alua[14] ^ alub[14];
assign _xor[15] = alua[15] ^ alub[15];
assign _xor[16] = alua[16] ^ alub[16];
assign _xor[17] = alua[17] ^ alub[17];
assign _xor[18] = alua[18] ^ alub[18];
assign _xor[19] = alua[19] ^ alub[19];
assign _xor[20] = alua[20] ^ alub[20];
assign _xor[21] = alua[21] ^ alub[21];
assign _xor[22] = alua[22] ^ alub[22];
assign _xor[23] = alua[23] ^ alub[23];
assign _xor[24] = alua[24] ^ alub[24];
assign _xor[25] = alua[25] ^ alub[25];
assign _xor[26] = alua[26] ^ alub[26];
assign _xor[27] = alua[27] ^ alub[27];
assign _xor[28] = alua[28] ^ alub[28];
assign _xor[29] = alua[29] ^ alub[29];
assign _xor[30] = alua[30] ^ alub[30];
assign _xor[31] = alua[31] ^ alub[31];

// DSP_A-5Q.NET (458) - selt0 : aor1
assign selt_0 = (alufunc_0 & alufunc_2) | alufunc_n_2;

// DSP_A-5Q.NET (460) - selt1 : aor1
assign selt_1 = (alufunc_1 & alufunc_2) | alufunc_n_2;

// DSP_A-5Q.NET (462) - sel[0-1] : nivu
assign sel_0 = selt_0;
assign sel_1 = selt_1;

// DSP_A-5Q.NET (463) - aluq : mx4p
mx4 aluq_inst_0
(
	.z /* OUT */ (aluq[0]),
	.a0 /* IN */ (_and[0]),
	.a1 /* IN */ (_or[0]),
	.a2 /* IN */ (_xor[0]),
	.a3 /* IN */ (sum[0]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_1
(
	.z /* OUT */ (aluq[1]),
	.a0 /* IN */ (_and[1]),
	.a1 /* IN */ (_or[1]),
	.a2 /* IN */ (_xor[1]),
	.a3 /* IN */ (sum[1]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_2
(
	.z /* OUT */ (aluq[2]),
	.a0 /* IN */ (_and[2]),
	.a1 /* IN */ (_or[2]),
	.a2 /* IN */ (_xor[2]),
	.a3 /* IN */ (sum[2]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_3
(
	.z /* OUT */ (aluq[3]),
	.a0 /* IN */ (_and[3]),
	.a1 /* IN */ (_or[3]),
	.a2 /* IN */ (_xor[3]),
	.a3 /* IN */ (sum[3]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_4
(
	.z /* OUT */ (aluq[4]),
	.a0 /* IN */ (_and[4]),
	.a1 /* IN */ (_or[4]),
	.a2 /* IN */ (_xor[4]),
	.a3 /* IN */ (sum[4]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_5
(
	.z /* OUT */ (aluq[5]),
	.a0 /* IN */ (_and[5]),
	.a1 /* IN */ (_or[5]),
	.a2 /* IN */ (_xor[5]),
	.a3 /* IN */ (sum[5]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_6
(
	.z /* OUT */ (aluq[6]),
	.a0 /* IN */ (_and[6]),
	.a1 /* IN */ (_or[6]),
	.a2 /* IN */ (_xor[6]),
	.a3 /* IN */ (sum[6]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_7
(
	.z /* OUT */ (aluq[7]),
	.a0 /* IN */ (_and[7]),
	.a1 /* IN */ (_or[7]),
	.a2 /* IN */ (_xor[7]),
	.a3 /* IN */ (sum[7]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_8
(
	.z /* OUT */ (aluq[8]),
	.a0 /* IN */ (_and[8]),
	.a1 /* IN */ (_or[8]),
	.a2 /* IN */ (_xor[8]),
	.a3 /* IN */ (sum[8]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_9
(
	.z /* OUT */ (aluq[9]),
	.a0 /* IN */ (_and[9]),
	.a1 /* IN */ (_or[9]),
	.a2 /* IN */ (_xor[9]),
	.a3 /* IN */ (sum[9]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_10
(
	.z /* OUT */ (aluq[10]),
	.a0 /* IN */ (_and[10]),
	.a1 /* IN */ (_or[10]),
	.a2 /* IN */ (_xor[10]),
	.a3 /* IN */ (sum[10]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_11
(
	.z /* OUT */ (aluq[11]),
	.a0 /* IN */ (_and[11]),
	.a1 /* IN */ (_or[11]),
	.a2 /* IN */ (_xor[11]),
	.a3 /* IN */ (sum[11]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_12
(
	.z /* OUT */ (aluq[12]),
	.a0 /* IN */ (_and[12]),
	.a1 /* IN */ (_or[12]),
	.a2 /* IN */ (_xor[12]),
	.a3 /* IN */ (sum[12]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_13
(
	.z /* OUT */ (aluq[13]),
	.a0 /* IN */ (_and[13]),
	.a1 /* IN */ (_or[13]),
	.a2 /* IN */ (_xor[13]),
	.a3 /* IN */ (sum[13]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_14
(
	.z /* OUT */ (aluq[14]),
	.a0 /* IN */ (_and[14]),
	.a1 /* IN */ (_or[14]),
	.a2 /* IN */ (_xor[14]),
	.a3 /* IN */ (sum[14]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_15
(
	.z /* OUT */ (aluq[15]),
	.a0 /* IN */ (_and[15]),
	.a1 /* IN */ (_or[15]),
	.a2 /* IN */ (_xor[15]),
	.a3 /* IN */ (sum[15]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_16
(
	.z /* OUT */ (aluq[16]),
	.a0 /* IN */ (_and[16]),
	.a1 /* IN */ (_or[16]),
	.a2 /* IN */ (_xor[16]),
	.a3 /* IN */ (sum[16]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_17
(
	.z /* OUT */ (aluq[17]),
	.a0 /* IN */ (_and[17]),
	.a1 /* IN */ (_or[17]),
	.a2 /* IN */ (_xor[17]),
	.a3 /* IN */ (sum[17]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_18
(
	.z /* OUT */ (aluq[18]),
	.a0 /* IN */ (_and[18]),
	.a1 /* IN */ (_or[18]),
	.a2 /* IN */ (_xor[18]),
	.a3 /* IN */ (sum[18]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_19
(
	.z /* OUT */ (aluq[19]),
	.a0 /* IN */ (_and[19]),
	.a1 /* IN */ (_or[19]),
	.a2 /* IN */ (_xor[19]),
	.a3 /* IN */ (sum[19]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_20
(
	.z /* OUT */ (aluq[20]),
	.a0 /* IN */ (_and[20]),
	.a1 /* IN */ (_or[20]),
	.a2 /* IN */ (_xor[20]),
	.a3 /* IN */ (sum[20]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_21
(
	.z /* OUT */ (aluq[21]),
	.a0 /* IN */ (_and[21]),
	.a1 /* IN */ (_or[21]),
	.a2 /* IN */ (_xor[21]),
	.a3 /* IN */ (sum[21]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_22
(
	.z /* OUT */ (aluq[22]),
	.a0 /* IN */ (_and[22]),
	.a1 /* IN */ (_or[22]),
	.a2 /* IN */ (_xor[22]),
	.a3 /* IN */ (sum[22]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_23
(
	.z /* OUT */ (aluq[23]),
	.a0 /* IN */ (_and[23]),
	.a1 /* IN */ (_or[23]),
	.a2 /* IN */ (_xor[23]),
	.a3 /* IN */ (sum[23]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_24
(
	.z /* OUT */ (aluq[24]),
	.a0 /* IN */ (_and[24]),
	.a1 /* IN */ (_or[24]),
	.a2 /* IN */ (_xor[24]),
	.a3 /* IN */ (sum[24]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_25
(
	.z /* OUT */ (aluq[25]),
	.a0 /* IN */ (_and[25]),
	.a1 /* IN */ (_or[25]),
	.a2 /* IN */ (_xor[25]),
	.a3 /* IN */ (sum[25]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_26
(
	.z /* OUT */ (aluq[26]),
	.a0 /* IN */ (_and[26]),
	.a1 /* IN */ (_or[26]),
	.a2 /* IN */ (_xor[26]),
	.a3 /* IN */ (sum[26]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_27
(
	.z /* OUT */ (aluq[27]),
	.a0 /* IN */ (_and[27]),
	.a1 /* IN */ (_or[27]),
	.a2 /* IN */ (_xor[27]),
	.a3 /* IN */ (sum[27]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_28
(
	.z /* OUT */ (aluq[28]),
	.a0 /* IN */ (_and[28]),
	.a1 /* IN */ (_or[28]),
	.a2 /* IN */ (_xor[28]),
	.a3 /* IN */ (sum[28]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_29
(
	.z /* OUT */ (aluq[29]),
	.a0 /* IN */ (_and[29]),
	.a1 /* IN */ (_or[29]),
	.a2 /* IN */ (_xor[29]),
	.a3 /* IN */ (sum[29]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_30
(
	.z /* OUT */ (aluq[30]),
	.a0 /* IN */ (_and[30]),
	.a1 /* IN */ (_or[30]),
	.a2 /* IN */ (_xor[30]),
	.a3 /* IN */ (sum[30]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);
mx4 aluq_inst_31
(
	.z /* OUT */ (aluq[31]),
	.a0 /* IN */ (_and[31]),
	.a1 /* IN */ (_or[31]),
	.a2 /* IN */ (_xor[31]),
	.a3 /* IN */ (sum[31]),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);

// DSP_A-5Q.NET (467) - alu_co : eo
assign alu_co = alu_cout ^ subtract;

// DSP_A-5Q.NET (469) - unused[0-1] : dummy
endmodule
/* verilator lint_on LITENDIAN */
