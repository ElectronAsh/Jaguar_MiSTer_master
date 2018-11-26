/* verilator lint_off LITENDIAN */
`include "defs.v"

module inner_cnt
(
	output gpu_dout_16_out,
	output gpu_dout_16_oe,
	input gpu_dout_16_in,
	output gpu_dout_17_out,
	output gpu_dout_17_oe,
	input gpu_dout_17_in,
	output gpu_dout_18_out,
	output gpu_dout_18_oe,
	input gpu_dout_18_in,
	output gpu_dout_19_out,
	output gpu_dout_19_oe,
	input gpu_dout_19_in,
	output gpu_dout_20_out,
	output gpu_dout_20_oe,
	input gpu_dout_20_in,
	output gpu_dout_21_out,
	output gpu_dout_21_oe,
	input gpu_dout_21_in,
	output gpu_dout_22_out,
	output gpu_dout_22_oe,
	input gpu_dout_22_in,
	output gpu_dout_23_out,
	output gpu_dout_23_oe,
	input gpu_dout_23_in,
	output gpu_dout_24_out,
	output gpu_dout_24_oe,
	input gpu_dout_24_in,
	output gpu_dout_25_out,
	output gpu_dout_25_oe,
	input gpu_dout_25_in,
	output gpu_dout_26_out,
	output gpu_dout_26_oe,
	input gpu_dout_26_in,
	output gpu_dout_27_out,
	output gpu_dout_27_oe,
	input gpu_dout_27_in,
	output gpu_dout_28_out,
	output gpu_dout_28_oe,
	input gpu_dout_28_in,
	output gpu_dout_29_out,
	output gpu_dout_29_oe,
	input gpu_dout_29_in,
	output gpu_dout_30_out,
	output gpu_dout_30_oe,
	input gpu_dout_30_in,
	output gpu_dout_31_out,
	output gpu_dout_31_oe,
	input gpu_dout_31_in,
	output icount_0,
	output icount_1,
	output icount_2,
	output inner0,
	input clk,
	input countld,
	input [0:15] dstxp,
	input [0:31] gpu_din,
	input icntena,
	input ireload,
	input phrase_mode,
	input pixsize_0,
	input pixsize_1,
	input pixsize_2,
	input statrd,
	input sys_clk // Generated
);
wire [0:15] cntval;
wire [0:15] cntvall;
wire [0:15] gpu_d_lo16;
wire [0:15] icount;
wire icount_3;
wire icount_4;
wire icount_5;
wire icount_6;
wire icount_7;
wire icount_8;
wire icount_9;
wire icount_10;
wire icount_11;
wire icount_12;
wire icount_13;
wire icount_14;
wire icount_15;
wire one;
wire pixsize_n_0;
wire pixsize_n_1;
wire pixsize_n_2;
wire pixel8_n;
wire pixel8;
wire pixel16_n;
wire pixel16;
wire pixel32_n;
wire pixel32;
wire countldb;
wire dstxp_n_0;
wire dstxp_n_1;
wire dstxp_n_2;
wire inct_0;
wire inct_1;
wire incc_1;
wire inct_2;
wire inct_n_0;
wire inct_n_1;
wire inct_n_2;
wire inc0t;
wire inc_n_0;
wire inc1t_1;
wire inc1t_2;
wire inc1t_3;
wire inc1t_4;
wire inc_n_1;
wire inc2t_0;
wire inc2t_1;
wire inc2t_2;
wire inc_n_2;
wire inc_n_3;
wire count_0;
wire count_1;
wire count_2;
wire count_3;
wire carry_3;
wire count_4;
wire count_5;
wire count_6;
wire count_7;
wire count_8;
wire count_9;
wire carry_4;
wire carry_5;
wire carry_6;
wire carry_7;
wire carry_8;
wire carry_9;
wire count_10;
wire cla10;
wire count_11;
wire carry_11;
wire count_12;
wire count_13;
wire count_14;
wire carry_12;
wire carry_13;
wire carry_14;
wire count_15;
wire cntlden;
wire cntisel_1;
wire cnti_0;
wire cnti_1;
wire cnti_2;
wire cnti_3;
wire cnti_4;
wire cnti_5;
wire cnti_6;
wire cnti_7;
wire cnti_8;
wire cnti_9;
wire cnti_10;
wire cnti_11;
wire cnti_12;
wire cnti_13;
wire cnti_14;
wire cnti_15;
wire icountt_0;
wire icount_n_15;
wire uflowt;
wire underflow;
wire inner0t;

// Output buffers
wire icount_0_obuf;
wire icount_1_obuf;
wire icount_2_obuf;


// Output buffers
assign icount_0 = icount_0_obuf;
assign icount_1 = icount_1_obuf;
assign icount_2 = icount_2_obuf;


// INNER.NET (573) - icount : join
assign icount[0] = icount_0_obuf;
assign icount[1] = icount_1_obuf;
assign icount[2] = icount_2_obuf;
assign icount[3] = icount_3;
assign icount[4] = icount_4;
assign icount[5] = icount_5;
assign icount[6] = icount_6;
assign icount[7] = icount_7;
assign icount[8] = icount_8;
assign icount[9] = icount_9;
assign icount[10] = icount_10;
assign icount[11] = icount_11;
assign icount[12] = icount_12;
assign icount[13] = icount_13;
assign icount[14] = icount_14;
assign icount[15] = icount_15;

// INNER.NET (574) - icountd : dummy

// INNER.NET (576) - one : tie1
assign one = 1'b1;

// INNER.NET (577) - pixsize\[0-2] : iv
assign pixsize_n_0 = ~pixsize_0;
assign pixsize_n_1 = ~pixsize_1;
assign pixsize_n_2 = ~pixsize_2;

// INNER.NET (578) - pixel8\ : nd3
assign pixel8_n = ~(pixsize_0 & pixsize_1 & pixsize_n_2);

// INNER.NET (579) - pixel8 : iv
assign pixel8 = ~pixel8_n;

// INNER.NET (580) - pixel16\ : nd3
assign pixel16_n = ~(pixsize_n_0 & pixsize_n_1 & pixsize_2);

// INNER.NET (581) - pixel16 : iv
assign pixel16 = ~pixel16_n;

// INNER.NET (582) - pixel32\ : nd3
assign pixel32_n = ~(pixsize_0 & pixsize_n_1 & pixsize_2);

// INNER.NET (584) - pixel32 : iv
assign pixel32 = ~pixel32_n;

// INNER.NET (586) - gpu_d_lo16 : join
assign gpu_d_lo16[0] = gpu_din[0];
assign gpu_d_lo16[1] = gpu_din[1];
assign gpu_d_lo16[2] = gpu_din[2];
assign gpu_d_lo16[3] = gpu_din[3];
assign gpu_d_lo16[4] = gpu_din[4];
assign gpu_d_lo16[5] = gpu_din[5];
assign gpu_d_lo16[6] = gpu_din[6];
assign gpu_d_lo16[7] = gpu_din[7];
assign gpu_d_lo16[8] = gpu_din[8];
assign gpu_d_lo16[9] = gpu_din[9];
assign gpu_d_lo16[10] = gpu_din[10];
assign gpu_d_lo16[11] = gpu_din[11];
assign gpu_d_lo16[12] = gpu_din[12];
assign gpu_d_lo16[13] = gpu_din[13];
assign gpu_d_lo16[14] = gpu_din[14];
assign gpu_d_lo16[15] = gpu_din[15];

// INNER.NET (590) - cntldb : nivh
assign countldb = countld;

// INNER.NET (591) - cntval : mx2
assign cntval[0] = (countldb) ? gpu_d_lo16[0] : cntvall[0];
assign cntval[1] = (countldb) ? gpu_d_lo16[1] : cntvall[1];
assign cntval[2] = (countldb) ? gpu_d_lo16[2] : cntvall[2];
assign cntval[3] = (countldb) ? gpu_d_lo16[3] : cntvall[3];
assign cntval[4] = (countldb) ? gpu_d_lo16[4] : cntvall[4];
assign cntval[5] = (countldb) ? gpu_d_lo16[5] : cntvall[5];
assign cntval[6] = (countldb) ? gpu_d_lo16[6] : cntvall[6];
assign cntval[7] = (countldb) ? gpu_d_lo16[7] : cntvall[7];
assign cntval[8] = (countldb) ? gpu_d_lo16[8] : cntvall[8];
assign cntval[9] = (countldb) ? gpu_d_lo16[9] : cntvall[9];
assign cntval[10] = (countldb) ? gpu_d_lo16[10] : cntvall[10];
assign cntval[11] = (countldb) ? gpu_d_lo16[11] : cntvall[11];
assign cntval[12] = (countldb) ? gpu_d_lo16[12] : cntvall[12];
assign cntval[13] = (countldb) ? gpu_d_lo16[13] : cntvall[13];
assign cntval[14] = (countldb) ? gpu_d_lo16[14] : cntvall[14];
assign cntval[15] = (countldb) ? gpu_d_lo16[15] : cntvall[15];

// INNER.NET (592) - cntvall : fd1q
fd1q cntvall_inst_0
(
	.q /* OUT */ (cntvall[0]),
	.d /* IN */ (cntval[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_1
(
	.q /* OUT */ (cntvall[1]),
	.d /* IN */ (cntval[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_2
(
	.q /* OUT */ (cntvall[2]),
	.d /* IN */ (cntval[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_3
(
	.q /* OUT */ (cntvall[3]),
	.d /* IN */ (cntval[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_4
(
	.q /* OUT */ (cntvall[4]),
	.d /* IN */ (cntval[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_5
(
	.q /* OUT */ (cntvall[5]),
	.d /* IN */ (cntval[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_6
(
	.q /* OUT */ (cntvall[6]),
	.d /* IN */ (cntval[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_7
(
	.q /* OUT */ (cntvall[7]),
	.d /* IN */ (cntval[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_8
(
	.q /* OUT */ (cntvall[8]),
	.d /* IN */ (cntval[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_9
(
	.q /* OUT */ (cntvall[9]),
	.d /* IN */ (cntval[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_10
(
	.q /* OUT */ (cntvall[10]),
	.d /* IN */ (cntval[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_11
(
	.q /* OUT */ (cntvall[11]),
	.d /* IN */ (cntval[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_12
(
	.q /* OUT */ (cntvall[12]),
	.d /* IN */ (cntval[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_13
(
	.q /* OUT */ (cntvall[13]),
	.d /* IN */ (cntval[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_14
(
	.q /* OUT */ (cntvall[14]),
	.d /* IN */ (cntval[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q cntvall_inst_15
(
	.q /* OUT */ (cntvall[15]),
	.d /* IN */ (cntval[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (605) - dstxp\[0-2] : iv
assign dstxp_n_0 = ~dstxp[0];
assign dstxp_n_1 = ~dstxp[1];
assign dstxp_n_2 = ~dstxp[2];

// INNER.NET (606) - inct0 : iv
assign inct_0 = ~dstxp_n_0;

// INNER.NET (607) - inct1 : ha1
ha1 inct1_inst
(
	.s /* OUT */ (inct_1),
	.co /* OUT */ (incc_1),
	.a /* IN */ (dstxp_n_1),
	.b /* IN */ (dstxp_n_0)
);

// INNER.NET (608) - inct2 : eo
assign inct_2 = dstxp_n_2 ^ incc_1;

// INNER.NET (609) - inct\[0-2] : iv
assign inct_n_0 = ~inct_0;
assign inct_n_1 = ~inct_1;
assign inct_n_2 = ~inct_2;

// INNER.NET (613) - inc0t : nd2
assign inc0t = ~(phrase_mode & inct_0);

// INNER.NET (614) - inc\[0] : an2
assign inc_n_0 = inc0t & phrase_mode;

// INNER.NET (619) - inc1t1 : nd2
assign inc1t_1 = ~(pixel8_n & pixel16_n);

// INNER.NET (620) - inc1t2 : nd2
assign inc1t_2 = ~(inc1t_1 & inct_1);

// INNER.NET (621) - inc1t3 : nd2
assign inc1t_3 = ~(pixel32 & inct_n_0);

// INNER.NET (622) - inc1t4 : nd2
assign inc1t_4 = ~(inc1t_2 & inc1t_3);

// INNER.NET (623) - inc\[1] : nd2
assign inc_n_1 = ~(phrase_mode & inc1t_4);

// INNER.NET (628) - inc2t0 : nd2
assign inc2t_0 = ~(pixel8 & inct_2);

// INNER.NET (629) - inc2t1 : nd3
assign inc2t_1 = ~(pixel16 & inct_n_0 & inct_n_1);

// INNER.NET (630) - inc2t2 : nd2
assign inc2t_2 = ~(inc2t_0 & inc2t_1);

// INNER.NET (631) - inc\[2] : nd2
assign inc_n_2 = ~(phrase_mode & inc2t_2);

// INNER.NET (635) - inc\[3] : nd5
assign inc_n_3 = ~(phrase_mode & pixel8 & inct_n_0 & inct_n_1 & inct_n_2);

// INNER.NET (637) - count0t4 : add4
add4 count0t4_inst
(
	.q_0 /* OUT */ (count_0),
	.q_1 /* OUT */ (count_1),
	.q_2 /* OUT */ (count_2),
	.q_3 /* OUT */ (count_3),
	.co /* OUT */ (carry_3),
	.a_0 /* IN */ (inc_n_0),
	.a_1 /* IN */ (inc_n_1),
	.a_2 /* IN */ (inc_n_2),
	.a_3 /* IN */ (inc_n_3),
	.b_0 /* IN */ (icount_0_obuf),
	.b_1 /* IN */ (icount_1_obuf),
	.b_2 /* IN */ (icount_2_obuf),
	.b_3 /* IN */ (icount_3),
	.ci /* IN */ (one)
);

// INNER.NET (639) - count[4-9] : hs1
hs1 count_from_4_to_9_inst_0
(
	.q /* OUT */ (count_4),
	.co /* OUT */ (carry_4),
	.a /* IN */ (carry_3),
	.ci /* IN */ (icount_4)
);
hs1 count_from_4_to_9_inst_1
(
	.q /* OUT */ (count_5),
	.co /* OUT */ (carry_5),
	.a /* IN */ (carry_4),
	.ci /* IN */ (icount_5)
);
hs1 count_from_4_to_9_inst_2
(
	.q /* OUT */ (count_6),
	.co /* OUT */ (carry_6),
	.a /* IN */ (carry_5),
	.ci /* IN */ (icount_6)
);
hs1 count_from_4_to_9_inst_3
(
	.q /* OUT */ (count_7),
	.co /* OUT */ (carry_7),
	.a /* IN */ (carry_6),
	.ci /* IN */ (icount_7)
);
hs1 count_from_4_to_9_inst_4
(
	.q /* OUT */ (count_8),
	.co /* OUT */ (carry_8),
	.a /* IN */ (carry_7),
	.ci /* IN */ (icount_8)
);
hs1 count_from_4_to_9_inst_5
(
	.q /* OUT */ (count_9),
	.co /* OUT */ (carry_9),
	.a /* IN */ (carry_8),
	.ci /* IN */ (icount_9)
);

// INNER.NET (641) - count[10] : en
assign count_10 = ~(carry_9 ^ icount_10);

// INNER.NET (642) - cla10 : or8
assign cla10 = carry_3 | icount_4 | icount_5 | icount_6 | icount_7 | icount_8 | icount_9 | icount_10;

// INNER.NET (643) - count[11] : hs1
hs1 count_index_11_inst
(
	.q /* OUT */ (count_11),
	.co /* OUT */ (carry_11),
	.a /* IN */ (cla10),
	.ci /* IN */ (icount_11)
);

// INNER.NET (644) - count[12-14] : hs1
hs1 count_from_12_to_14_inst_0
(
	.q /* OUT */ (count_12),
	.co /* OUT */ (carry_12),
	.a /* IN */ (carry_11),
	.ci /* IN */ (icount_12)
);
hs1 count_from_12_to_14_inst_1
(
	.q /* OUT */ (count_13),
	.co /* OUT */ (carry_13),
	.a /* IN */ (carry_12),
	.ci /* IN */ (icount_13)
);
hs1 count_from_12_to_14_inst_2
(
	.q /* OUT */ (count_14),
	.co /* OUT */ (carry_14),
	.a /* IN */ (carry_13),
	.ci /* IN */ (icount_14)
);

// INNER.NET (646) - count[15] : en
assign count_15 = ~(carry_14 ^ icount_15);

// INNER.NET (651) - cntlden : fd1q
fd1q cntlden_inst
(
	.q /* OUT */ (cntlden),
	.d /* IN */ (countld),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (652) - cntisel[1] : or2u
assign cntisel_1 = ireload | cntlden;

// INNER.NET (653) - cnti[0-15] : mx4
mx4 cnti_from_0_to_15_inst_0
(
	.z /* OUT */ (cnti_0),
	.a0 /* IN */ (icount_0_obuf),
	.a1 /* IN */ (count_0),
	.a2 /* IN */ (cntval[0]),
	.a3 /* IN */ (cntval[0]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_1
(
	.z /* OUT */ (cnti_1),
	.a0 /* IN */ (icount_1_obuf),
	.a1 /* IN */ (count_1),
	.a2 /* IN */ (cntval[1]),
	.a3 /* IN */ (cntval[1]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_2
(
	.z /* OUT */ (cnti_2),
	.a0 /* IN */ (icount_2_obuf),
	.a1 /* IN */ (count_2),
	.a2 /* IN */ (cntval[2]),
	.a3 /* IN */ (cntval[2]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_3
(
	.z /* OUT */ (cnti_3),
	.a0 /* IN */ (icount_3),
	.a1 /* IN */ (count_3),
	.a2 /* IN */ (cntval[3]),
	.a3 /* IN */ (cntval[3]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_4
(
	.z /* OUT */ (cnti_4),
	.a0 /* IN */ (icount_4),
	.a1 /* IN */ (count_4),
	.a2 /* IN */ (cntval[4]),
	.a3 /* IN */ (cntval[4]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_5
(
	.z /* OUT */ (cnti_5),
	.a0 /* IN */ (icount_5),
	.a1 /* IN */ (count_5),
	.a2 /* IN */ (cntval[5]),
	.a3 /* IN */ (cntval[5]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_6
(
	.z /* OUT */ (cnti_6),
	.a0 /* IN */ (icount_6),
	.a1 /* IN */ (count_6),
	.a2 /* IN */ (cntval[6]),
	.a3 /* IN */ (cntval[6]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_7
(
	.z /* OUT */ (cnti_7),
	.a0 /* IN */ (icount_7),
	.a1 /* IN */ (count_7),
	.a2 /* IN */ (cntval[7]),
	.a3 /* IN */ (cntval[7]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_8
(
	.z /* OUT */ (cnti_8),
	.a0 /* IN */ (icount_8),
	.a1 /* IN */ (count_8),
	.a2 /* IN */ (cntval[8]),
	.a3 /* IN */ (cntval[8]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_9
(
	.z /* OUT */ (cnti_9),
	.a0 /* IN */ (icount_9),
	.a1 /* IN */ (count_9),
	.a2 /* IN */ (cntval[9]),
	.a3 /* IN */ (cntval[9]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_10
(
	.z /* OUT */ (cnti_10),
	.a0 /* IN */ (icount_10),
	.a1 /* IN */ (count_10),
	.a2 /* IN */ (cntval[10]),
	.a3 /* IN */ (cntval[10]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_11
(
	.z /* OUT */ (cnti_11),
	.a0 /* IN */ (icount_11),
	.a1 /* IN */ (count_11),
	.a2 /* IN */ (cntval[11]),
	.a3 /* IN */ (cntval[11]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_12
(
	.z /* OUT */ (cnti_12),
	.a0 /* IN */ (icount_12),
	.a1 /* IN */ (count_12),
	.a2 /* IN */ (cntval[12]),
	.a3 /* IN */ (cntval[12]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_13
(
	.z /* OUT */ (cnti_13),
	.a0 /* IN */ (icount_13),
	.a1 /* IN */ (count_13),
	.a2 /* IN */ (cntval[13]),
	.a3 /* IN */ (cntval[13]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_14
(
	.z /* OUT */ (cnti_14),
	.a0 /* IN */ (icount_14),
	.a1 /* IN */ (count_14),
	.a2 /* IN */ (cntval[14]),
	.a3 /* IN */ (cntval[14]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);
mx4 cnti_from_0_to_15_inst_15
(
	.z /* OUT */ (cnti_15),
	.a0 /* IN */ (icount_15),
	.a1 /* IN */ (count_15),
	.a2 /* IN */ (cntval[15]),
	.a3 /* IN */ (cntval[15]),
	.s0 /* IN */ (icntena),
	.s1 /* IN */ (cntisel_1)
);

// INNER.NET (657) - icountt[0] : fd1q
fd1q icountt_index_0_inst
(
	.q /* OUT */ (icountt_0),
	.d /* IN */ (cnti_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (658) - icount[0] : nivm
assign icount_0_obuf = icountt_0;

// INNER.NET (659) - icount[1-15] : fd1qp
fd1q icount_from_1_to_15_inst_0
(
	.q /* OUT */ (icount_1_obuf),
	.d /* IN */ (cnti_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_1
(
	.q /* OUT */ (icount_2_obuf),
	.d /* IN */ (cnti_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_2
(
	.q /* OUT */ (icount_3),
	.d /* IN */ (cnti_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_3
(
	.q /* OUT */ (icount_4),
	.d /* IN */ (cnti_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_4
(
	.q /* OUT */ (icount_5),
	.d /* IN */ (cnti_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_5
(
	.q /* OUT */ (icount_6),
	.d /* IN */ (cnti_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_6
(
	.q /* OUT */ (icount_7),
	.d /* IN */ (cnti_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_7
(
	.q /* OUT */ (icount_8),
	.d /* IN */ (cnti_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_8
(
	.q /* OUT */ (icount_9),
	.d /* IN */ (cnti_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_9
(
	.q /* OUT */ (icount_10),
	.d /* IN */ (cnti_10),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_10
(
	.q /* OUT */ (icount_11),
	.d /* IN */ (cnti_11),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_11
(
	.q /* OUT */ (icount_12),
	.d /* IN */ (cnti_12),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_12
(
	.q /* OUT */ (icount_13),
	.d /* IN */ (cnti_13),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_13
(
	.q /* OUT */ (icount_14),
	.d /* IN */ (cnti_14),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q icount_from_1_to_15_inst_14
(
	.q /* OUT */ (icount_15),
	.d /* IN */ (cnti_15),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (668) - icount\[15] : iv
assign icount_n_15 = ~icount_15;

// INNER.NET (669) - uflowt : an2
assign uflowt = count_15 & icount_n_15;

// INNER.NET (670) - uflow : fdsync
fdsync uflow_inst
(
	.q /* OUT */ (underflow),
	.d /* IN */ (uflowt),
	.ld /* IN */ (icntena),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (672) - inner0t : nr16
assign inner0t = ~(icount_0_obuf | icount_1_obuf | icount_2_obuf | icount_3 | icount_4 | icount_5 | icount_6 | icount_7 | icount_8 | icount_9 | icount_10 | icount_11 | icount_12 | icount_13 | icount_14 | icount_15);

// INNER.NET (673) - inner0 : or2p
assign inner0 = inner0t | underflow;

// INNER.NET (677) - stat[16-31] : ts
assign gpu_dout_16_out = icount_0_obuf;
assign gpu_dout_16_oe = statrd;
assign gpu_dout_17_out = icount_1_obuf;
assign gpu_dout_17_oe = statrd;
assign gpu_dout_18_out = icount_2_obuf;
assign gpu_dout_18_oe = statrd;
assign gpu_dout_19_out = icount_3;
assign gpu_dout_19_oe = statrd;
assign gpu_dout_20_out = icount_4;
assign gpu_dout_20_oe = statrd;
assign gpu_dout_21_out = icount_5;
assign gpu_dout_21_oe = statrd;
assign gpu_dout_22_out = icount_6;
assign gpu_dout_22_oe = statrd;
assign gpu_dout_23_out = icount_7;
assign gpu_dout_23_oe = statrd;
assign gpu_dout_24_out = icount_8;
assign gpu_dout_24_oe = statrd;
assign gpu_dout_25_out = icount_9;
assign gpu_dout_25_oe = statrd;
assign gpu_dout_26_out = icount_10;
assign gpu_dout_26_oe = statrd;
assign gpu_dout_27_out = icount_11;
assign gpu_dout_27_oe = statrd;
assign gpu_dout_28_out = icount_12;
assign gpu_dout_28_oe = statrd;
assign gpu_dout_29_out = icount_13;
assign gpu_dout_29_oe = statrd;
assign gpu_dout_30_out = icount_14;
assign gpu_dout_30_oe = statrd;
assign gpu_dout_31_out = icount_15;
assign gpu_dout_31_oe = statrd;
endmodule
/* verilator lint_on LITENDIAN */
