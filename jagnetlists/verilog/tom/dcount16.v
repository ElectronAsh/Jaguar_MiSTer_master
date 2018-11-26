/* verilator lint_off LITENDIAN */
`include "defs.v"

module dcount16
(
	output [0:15] count,
	input [0:15] data,
	input load,
	input ena,
	input clk,
	input sys_clk // Generated
);
wire cnti_0;
wire count_0;
wire cnti_1;
wire cry_1;
wire count_1;
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
wire cry_2;
wire cry_3;
wire cry_4;
wire cry_5;
wire cry_6;
wire cry_7;
wire cry_8;
wire cry_9;
wire cry_10;
wire cry_11;
wire cry_12;
wire cry_13;
wire cry_14;
wire count_2;
wire count_3;
wire count_4;
wire count_5;
wire count_6;
wire count_7;
wire count_8;
wire count_9;
wire count_10;
wire count_11;
wire count_12;
wire count_13;
wire count_14;
wire cnti_15;
wire count_15;
wire cntj_0;
wire cntj_1;
wire cntj_2;
wire cntj_3;
wire cntj_4;
wire cntj_5;
wire cntj_6;
wire cntj_7;
wire cntj_8;
wire cntj_9;
wire cntj_10;
wire cntj_11;
wire cntj_12;
wire cntj_13;
wire cntj_14;
wire cntj_15;

// DUPLO.NET (773) - cnti[0] : iv
assign cnti_0 = ~count_0;

// DUPLO.NET (774) - cnti[1] : hs1
hs1 cnti_index_1_inst
(
	.q /* OUT */ (cnti_1),
	.co /* OUT */ (cry_1),
	.a /* IN */ (count_1),
	.ci /* IN */ (count_0)
);

// DUPLO.NET (775) - cnti[2-14] : hs1
hs1 cnti_from_2_to_14_inst_0
(
	.q /* OUT */ (cnti_2),
	.co /* OUT */ (cry_2),
	.a /* IN */ (count_2),
	.ci /* IN */ (cry_1)
);
hs1 cnti_from_2_to_14_inst_1
(
	.q /* OUT */ (cnti_3),
	.co /* OUT */ (cry_3),
	.a /* IN */ (count_3),
	.ci /* IN */ (cry_2)
);
hs1 cnti_from_2_to_14_inst_2
(
	.q /* OUT */ (cnti_4),
	.co /* OUT */ (cry_4),
	.a /* IN */ (count_4),
	.ci /* IN */ (cry_3)
);
hs1 cnti_from_2_to_14_inst_3
(
	.q /* OUT */ (cnti_5),
	.co /* OUT */ (cry_5),
	.a /* IN */ (count_5),
	.ci /* IN */ (cry_4)
);
hs1 cnti_from_2_to_14_inst_4
(
	.q /* OUT */ (cnti_6),
	.co /* OUT */ (cry_6),
	.a /* IN */ (count_6),
	.ci /* IN */ (cry_5)
);
hs1 cnti_from_2_to_14_inst_5
(
	.q /* OUT */ (cnti_7),
	.co /* OUT */ (cry_7),
	.a /* IN */ (count_7),
	.ci /* IN */ (cry_6)
);
hs1 cnti_from_2_to_14_inst_6
(
	.q /* OUT */ (cnti_8),
	.co /* OUT */ (cry_8),
	.a /* IN */ (count_8),
	.ci /* IN */ (cry_7)
);
hs1 cnti_from_2_to_14_inst_7
(
	.q /* OUT */ (cnti_9),
	.co /* OUT */ (cry_9),
	.a /* IN */ (count_9),
	.ci /* IN */ (cry_8)
);
hs1 cnti_from_2_to_14_inst_8
(
	.q /* OUT */ (cnti_10),
	.co /* OUT */ (cry_10),
	.a /* IN */ (count_10),
	.ci /* IN */ (cry_9)
);
hs1 cnti_from_2_to_14_inst_9
(
	.q /* OUT */ (cnti_11),
	.co /* OUT */ (cry_11),
	.a /* IN */ (count_11),
	.ci /* IN */ (cry_10)
);
hs1 cnti_from_2_to_14_inst_10
(
	.q /* OUT */ (cnti_12),
	.co /* OUT */ (cry_12),
	.a /* IN */ (count_12),
	.ci /* IN */ (cry_11)
);
hs1 cnti_from_2_to_14_inst_11
(
	.q /* OUT */ (cnti_13),
	.co /* OUT */ (cry_13),
	.a /* IN */ (count_13),
	.ci /* IN */ (cry_12)
);
hs1 cnti_from_2_to_14_inst_12
(
	.q /* OUT */ (cnti_14),
	.co /* OUT */ (cry_14),
	.a /* IN */ (count_14),
	.ci /* IN */ (cry_13)
);

// DUPLO.NET (777) - cnti[15] : en
assign cnti_15 = ~(count_15 ^ cry_14);

// DUPLO.NET (778) - cntj[0-15] : mx4
mx4 cntj_from_0_to_15_inst_0
(
	.z /* OUT */ (cntj_0),
	.a0 /* IN */ (count_0),
	.a1 /* IN */ (cnti_0),
	.a2 /* IN */ (data[0]),
	.a3 /* IN */ (data[0]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_1
(
	.z /* OUT */ (cntj_1),
	.a0 /* IN */ (count_1),
	.a1 /* IN */ (cnti_1),
	.a2 /* IN */ (data[1]),
	.a3 /* IN */ (data[1]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_2
(
	.z /* OUT */ (cntj_2),
	.a0 /* IN */ (count_2),
	.a1 /* IN */ (cnti_2),
	.a2 /* IN */ (data[2]),
	.a3 /* IN */ (data[2]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_3
(
	.z /* OUT */ (cntj_3),
	.a0 /* IN */ (count_3),
	.a1 /* IN */ (cnti_3),
	.a2 /* IN */ (data[3]),
	.a3 /* IN */ (data[3]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_4
(
	.z /* OUT */ (cntj_4),
	.a0 /* IN */ (count_4),
	.a1 /* IN */ (cnti_4),
	.a2 /* IN */ (data[4]),
	.a3 /* IN */ (data[4]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_5
(
	.z /* OUT */ (cntj_5),
	.a0 /* IN */ (count_5),
	.a1 /* IN */ (cnti_5),
	.a2 /* IN */ (data[5]),
	.a3 /* IN */ (data[5]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_6
(
	.z /* OUT */ (cntj_6),
	.a0 /* IN */ (count_6),
	.a1 /* IN */ (cnti_6),
	.a2 /* IN */ (data[6]),
	.a3 /* IN */ (data[6]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_7
(
	.z /* OUT */ (cntj_7),
	.a0 /* IN */ (count_7),
	.a1 /* IN */ (cnti_7),
	.a2 /* IN */ (data[7]),
	.a3 /* IN */ (data[7]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_8
(
	.z /* OUT */ (cntj_8),
	.a0 /* IN */ (count_8),
	.a1 /* IN */ (cnti_8),
	.a2 /* IN */ (data[8]),
	.a3 /* IN */ (data[8]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_9
(
	.z /* OUT */ (cntj_9),
	.a0 /* IN */ (count_9),
	.a1 /* IN */ (cnti_9),
	.a2 /* IN */ (data[9]),
	.a3 /* IN */ (data[9]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_10
(
	.z /* OUT */ (cntj_10),
	.a0 /* IN */ (count_10),
	.a1 /* IN */ (cnti_10),
	.a2 /* IN */ (data[10]),
	.a3 /* IN */ (data[10]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_11
(
	.z /* OUT */ (cntj_11),
	.a0 /* IN */ (count_11),
	.a1 /* IN */ (cnti_11),
	.a2 /* IN */ (data[11]),
	.a3 /* IN */ (data[11]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_12
(
	.z /* OUT */ (cntj_12),
	.a0 /* IN */ (count_12),
	.a1 /* IN */ (cnti_12),
	.a2 /* IN */ (data[12]),
	.a3 /* IN */ (data[12]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_13
(
	.z /* OUT */ (cntj_13),
	.a0 /* IN */ (count_13),
	.a1 /* IN */ (cnti_13),
	.a2 /* IN */ (data[13]),
	.a3 /* IN */ (data[13]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_14
(
	.z /* OUT */ (cntj_14),
	.a0 /* IN */ (count_14),
	.a1 /* IN */ (cnti_14),
	.a2 /* IN */ (data[14]),
	.a3 /* IN */ (data[14]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);
mx4 cntj_from_0_to_15_inst_15
(
	.z /* OUT */ (cntj_15),
	.a0 /* IN */ (count_15),
	.a1 /* IN */ (cnti_15),
	.a2 /* IN */ (data[15]),
	.a3 /* IN */ (data[15]),
	.s0 /* IN */ (ena),
	.s1 /* IN */ (load)
);

// DUPLO.NET (780) - count[0-15] : fd1q
fd1q count_from_0_to_15_inst_0
(
	.q /* OUT */ (count_0),
	.d /* IN */ (cntj_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_1
(
	.q /* OUT */ (count_1),
	.d /* IN */ (cntj_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_2
(
	.q /* OUT */ (count_2),
	.d /* IN */ (cntj_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_3
(
	.q /* OUT */ (count_3),
	.d /* IN */ (cntj_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_4
(
	.q /* OUT */ (count_4),
	.d /* IN */ (cntj_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_5
(
	.q /* OUT */ (count_5),
	.d /* IN */ (cntj_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_6
(
	.q /* OUT */ (count_6),
	.d /* IN */ (cntj_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_7
(
	.q /* OUT */ (count_7),
	.d /* IN */ (cntj_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_8
(
	.q /* OUT */ (count_8),
	.d /* IN */ (cntj_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_9
(
	.q /* OUT */ (count_9),
	.d /* IN */ (cntj_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_10
(
	.q /* OUT */ (count_10),
	.d /* IN */ (cntj_10),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_11
(
	.q /* OUT */ (count_11),
	.d /* IN */ (cntj_11),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_12
(
	.q /* OUT */ (count_12),
	.d /* IN */ (cntj_12),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_13
(
	.q /* OUT */ (count_13),
	.d /* IN */ (cntj_13),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_14
(
	.q /* OUT */ (count_14),
	.d /* IN */ (cntj_14),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_15_inst_15
(
	.q /* OUT */ (count_15),
	.d /* IN */ (cntj_15),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DUPLO.NET (781) - count : join
assign count[0] = count_0;
assign count[1] = count_1;
assign count[2] = count_2;
assign count[3] = count_3;
assign count[4] = count_4;
assign count[5] = count_5;
assign count[6] = count_6;
assign count[7] = count_7;
assign count[8] = count_8;
assign count[9] = count_9;
assign count[10] = count_10;
assign count[11] = count_11;
assign count[12] = count_12;
assign count[13] = count_13;
assign count[14] = count_14;
assign count[15] = count_15;
endmodule
/* verilator lint_on LITENDIAN */
