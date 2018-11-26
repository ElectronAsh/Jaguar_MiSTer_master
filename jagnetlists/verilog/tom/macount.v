/* verilator lint_off LITENDIAN */
`include "defs.v"

module macount
(
	output maddr_0,
	output maddr_1,
	output maddr_2,
	output maddr_3,
	output maddr_4,
	output maddr_5,
	output maddr_6,
	output maddr_7,
	output maddr_8,
	output maddr_9,
	input clk,
	input cnten,
	input cntld,
	input gpu_din_2,
	input gpu_din_3,
	input gpu_din_4,
	input gpu_din_5,
	input gpu_din_6,
	input gpu_din_7,
	input gpu_din_8,
	input gpu_din_9,
	input gpu_din_10,
	input gpu_din_11,
	input maddw,
	input mwidth_0,
	input mwidth_1,
	input mwidth_2,
	input mwidth_3,
	input sys_clk // Generated
);
wire maddw_n;
wire inc_0;
wire inc_1;
wire inc_2;
wire inc_3;
wire sum_0;
wire carry_0;
wire sum_1;
wire sum_2;
wire sum_3;
wire carry_1;
wire carry_2;
wire carry_3;
wire sum_4;
wire sum_5;
wire sum_6;
wire sum_7;
wire sum_8;
wire carry_4;
wire carry_5;
wire carry_6;
wire carry_7;
wire carry_8;
wire sum_9;
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

// Output buffers
wire maddr_0_obuf;
wire maddr_1_obuf;
wire maddr_2_obuf;
wire maddr_3_obuf;
wire maddr_4_obuf;
wire maddr_5_obuf;
wire maddr_6_obuf;
wire maddr_7_obuf;
wire maddr_8_obuf;
wire maddr_9_obuf;


// Output buffers
assign maddr_0 = maddr_0_obuf;
assign maddr_1 = maddr_1_obuf;
assign maddr_2 = maddr_2_obuf;
assign maddr_3 = maddr_3_obuf;
assign maddr_4 = maddr_4_obuf;
assign maddr_5 = maddr_5_obuf;
assign maddr_6 = maddr_6_obuf;
assign maddr_7 = maddr_7_obuf;
assign maddr_8 = maddr_8_obuf;
assign maddr_9 = maddr_9_obuf;


// SYSTOLIC.NET (254) - maddw\ : iv
assign maddw_n = ~maddw;

// SYSTOLIC.NET (255) - inc[0] : or2
assign inc_0 = mwidth_0 | maddw_n;

// SYSTOLIC.NET (256) - inc[1-3] : an2
assign inc_1 = mwidth_1 & maddw;
assign inc_2 = mwidth_2 & maddw;
assign inc_3 = mwidth_3 & maddw;

// SYSTOLIC.NET (258) - sum[0] : ha1
ha1 sum_index_0_inst
(
	.s /* OUT */ (sum_0),
	.co /* OUT */ (carry_0),
	.a /* IN */ (maddr_0_obuf),
	.b /* IN */ (inc_0)
);

// SYSTOLIC.NET (259) - sum[1-3] : fa1
fa1 sum_from_1_to_3_inst_0
(
	.s /* OUT */ (sum_1),
	.co /* OUT */ (carry_1),
	.ci /* IN */ (carry_0),
	.a /* IN */ (maddr_1_obuf),
	.b /* IN */ (inc_1)
);
fa1 sum_from_1_to_3_inst_1
(
	.s /* OUT */ (sum_2),
	.co /* OUT */ (carry_2),
	.ci /* IN */ (carry_1),
	.a /* IN */ (maddr_2_obuf),
	.b /* IN */ (inc_2)
);
fa1 sum_from_1_to_3_inst_2
(
	.s /* OUT */ (sum_3),
	.co /* OUT */ (carry_3),
	.ci /* IN */ (carry_2),
	.a /* IN */ (maddr_3_obuf),
	.b /* IN */ (inc_3)
);

// SYSTOLIC.NET (261) - sum[4-8] : ha1
ha1 sum_from_4_to_8_inst_0
(
	.s /* OUT */ (sum_4),
	.co /* OUT */ (carry_4),
	.a /* IN */ (carry_3),
	.b /* IN */ (maddr_4_obuf)
);
ha1 sum_from_4_to_8_inst_1
(
	.s /* OUT */ (sum_5),
	.co /* OUT */ (carry_5),
	.a /* IN */ (carry_4),
	.b /* IN */ (maddr_5_obuf)
);
ha1 sum_from_4_to_8_inst_2
(
	.s /* OUT */ (sum_6),
	.co /* OUT */ (carry_6),
	.a /* IN */ (carry_5),
	.b /* IN */ (maddr_6_obuf)
);
ha1 sum_from_4_to_8_inst_3
(
	.s /* OUT */ (sum_7),
	.co /* OUT */ (carry_7),
	.a /* IN */ (carry_6),
	.b /* IN */ (maddr_7_obuf)
);
ha1 sum_from_4_to_8_inst_4
(
	.s /* OUT */ (sum_8),
	.co /* OUT */ (carry_8),
	.a /* IN */ (carry_7),
	.b /* IN */ (maddr_8_obuf)
);

// SYSTOLIC.NET (263) - sum[9] : eo
assign sum_9 = maddr_9_obuf ^ carry_8;

// SYSTOLIC.NET (265) - cnti[0-9] : mx4
mx4 cnti_from_0_to_9_inst_0
(
	.z /* OUT */ (cnti_0),
	.a0 /* IN */ (maddr_0_obuf),
	.a1 /* IN */ (sum_0),
	.a2 /* IN */ (gpu_din_2),
	.a3 /* IN */ (gpu_din_2),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_9_inst_1
(
	.z /* OUT */ (cnti_1),
	.a0 /* IN */ (maddr_1_obuf),
	.a1 /* IN */ (sum_1),
	.a2 /* IN */ (gpu_din_3),
	.a3 /* IN */ (gpu_din_3),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_9_inst_2
(
	.z /* OUT */ (cnti_2),
	.a0 /* IN */ (maddr_2_obuf),
	.a1 /* IN */ (sum_2),
	.a2 /* IN */ (gpu_din_4),
	.a3 /* IN */ (gpu_din_4),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_9_inst_3
(
	.z /* OUT */ (cnti_3),
	.a0 /* IN */ (maddr_3_obuf),
	.a1 /* IN */ (sum_3),
	.a2 /* IN */ (gpu_din_5),
	.a3 /* IN */ (gpu_din_5),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_9_inst_4
(
	.z /* OUT */ (cnti_4),
	.a0 /* IN */ (maddr_4_obuf),
	.a1 /* IN */ (sum_4),
	.a2 /* IN */ (gpu_din_6),
	.a3 /* IN */ (gpu_din_6),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_9_inst_5
(
	.z /* OUT */ (cnti_5),
	.a0 /* IN */ (maddr_5_obuf),
	.a1 /* IN */ (sum_5),
	.a2 /* IN */ (gpu_din_7),
	.a3 /* IN */ (gpu_din_7),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_9_inst_6
(
	.z /* OUT */ (cnti_6),
	.a0 /* IN */ (maddr_6_obuf),
	.a1 /* IN */ (sum_6),
	.a2 /* IN */ (gpu_din_8),
	.a3 /* IN */ (gpu_din_8),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_9_inst_7
(
	.z /* OUT */ (cnti_7),
	.a0 /* IN */ (maddr_7_obuf),
	.a1 /* IN */ (sum_7),
	.a2 /* IN */ (gpu_din_9),
	.a3 /* IN */ (gpu_din_9),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_9_inst_8
(
	.z /* OUT */ (cnti_8),
	.a0 /* IN */ (maddr_8_obuf),
	.a1 /* IN */ (sum_8),
	.a2 /* IN */ (gpu_din_10),
	.a3 /* IN */ (gpu_din_10),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_9_inst_9
(
	.z /* OUT */ (cnti_9),
	.a0 /* IN */ (maddr_9_obuf),
	.a1 /* IN */ (sum_9),
	.a2 /* IN */ (gpu_din_11),
	.a3 /* IN */ (gpu_din_11),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);

// SYSTOLIC.NET (269) - maddr[0-9] : fd1q
fd1q maddr_from_0_to_9_inst_0
(
	.q /* OUT */ (maddr_0_obuf),
	.d /* IN */ (cnti_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q maddr_from_0_to_9_inst_1
(
	.q /* OUT */ (maddr_1_obuf),
	.d /* IN */ (cnti_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q maddr_from_0_to_9_inst_2
(
	.q /* OUT */ (maddr_2_obuf),
	.d /* IN */ (cnti_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q maddr_from_0_to_9_inst_3
(
	.q /* OUT */ (maddr_3_obuf),
	.d /* IN */ (cnti_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q maddr_from_0_to_9_inst_4
(
	.q /* OUT */ (maddr_4_obuf),
	.d /* IN */ (cnti_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q maddr_from_0_to_9_inst_5
(
	.q /* OUT */ (maddr_5_obuf),
	.d /* IN */ (cnti_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q maddr_from_0_to_9_inst_6
(
	.q /* OUT */ (maddr_6_obuf),
	.d /* IN */ (cnti_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q maddr_from_0_to_9_inst_7
(
	.q /* OUT */ (maddr_7_obuf),
	.d /* IN */ (cnti_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q maddr_from_0_to_9_inst_8
(
	.q /* OUT */ (maddr_8_obuf),
	.d /* IN */ (cnti_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q maddr_from_0_to_9_inst_9
(
	.q /* OUT */ (maddr_9_obuf),
	.d /* IN */ (cnti_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
