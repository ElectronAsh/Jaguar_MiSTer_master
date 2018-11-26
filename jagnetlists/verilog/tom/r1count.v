/* verilator lint_off LITENDIAN */
`include "defs.v"

module r1count
(
	output count_0,
	output count_1,
	output count_2,
	output count_3,
	output count_4,
	output count_5,
	input clk,
	input cnten,
	input cntld,
	input mr1_0,
	input mr1_1,
	input mr1_2,
	input mr1_3,
	input mr1_4,
	input sys_clk // Generated
);
wire cntt_0;
wire cntt_1;
wire cntc_1;
wire cntt_2;
wire cntc_2;
wire cntt_3;
wire cntc_3;
wire cntt_4;
wire cntc_4;
wire cntt_5;
wire cnti_0;
wire cnti_1;
wire cnti_2;
wire cnti_3;
wire cnti_4;
wire cnti_5;

// Output buffers
wire count_0_obuf;
wire count_1_obuf;
wire count_2_obuf;
wire count_3_obuf;
wire count_4_obuf;
wire count_5_obuf;


// Output buffers
assign count_0 = count_0_obuf;
assign count_1 = count_1_obuf;
assign count_2 = count_2_obuf;
assign count_3 = count_3_obuf;
assign count_4 = count_4_obuf;
assign count_5 = count_5_obuf;


// SYSTOLIC.NET (222) - cntt0 : iv
assign cntt_0 = ~count_0_obuf;

// SYSTOLIC.NET (223) - cntt1 : ha1
ha1 cntt1_inst
(
	.s /* OUT */ (cntt_1),
	.co /* OUT */ (cntc_1),
	.a /* IN */ (count_1_obuf),
	.b /* IN */ (count_0_obuf)
);

// SYSTOLIC.NET (224) - cntt2 : ha1
ha1 cntt2_inst
(
	.s /* OUT */ (cntt_2),
	.co /* OUT */ (cntc_2),
	.a /* IN */ (count_2_obuf),
	.b /* IN */ (cntc_1)
);

// SYSTOLIC.NET (225) - cntt3 : ha1
ha1 cntt3_inst
(
	.s /* OUT */ (cntt_3),
	.co /* OUT */ (cntc_3),
	.a /* IN */ (count_3_obuf),
	.b /* IN */ (cntc_2)
);

// SYSTOLIC.NET (226) - cntt4 : ha1
ha1 cntt4_inst
(
	.s /* OUT */ (cntt_4),
	.co /* OUT */ (cntc_4),
	.a /* IN */ (count_4_obuf),
	.b /* IN */ (cntc_3)
);

// SYSTOLIC.NET (227) - cntt5 : eo
assign cntt_5 = count_5_obuf ^ cntc_4;

// SYSTOLIC.NET (229) - cnti[0] : mx2g
mx2g cnti_index_0_inst
(
	.z /* OUT */ (cnti_0),
	.a0 /* IN */ (count_0_obuf),
	.a1 /* IN */ (cntt_0),
	.s /* IN */ (cnten),
	.gn /* IN */ (cntld)
);

// SYSTOLIC.NET (230) - cnti[1-5] : mx4
mx4 cnti_from_1_to_5_inst_0
(
	.z /* OUT */ (cnti_1),
	.a0 /* IN */ (count_1_obuf),
	.a1 /* IN */ (cntt_1),
	.a2 /* IN */ (mr1_0),
	.a3 /* IN */ (mr1_0),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_1_to_5_inst_1
(
	.z /* OUT */ (cnti_2),
	.a0 /* IN */ (count_2_obuf),
	.a1 /* IN */ (cntt_2),
	.a2 /* IN */ (mr1_1),
	.a3 /* IN */ (mr1_1),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_1_to_5_inst_2
(
	.z /* OUT */ (cnti_3),
	.a0 /* IN */ (count_3_obuf),
	.a1 /* IN */ (cntt_3),
	.a2 /* IN */ (mr1_2),
	.a3 /* IN */ (mr1_2),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_1_to_5_inst_3
(
	.z /* OUT */ (cnti_4),
	.a0 /* IN */ (count_4_obuf),
	.a1 /* IN */ (cntt_4),
	.a2 /* IN */ (mr1_3),
	.a3 /* IN */ (mr1_3),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_1_to_5_inst_4
(
	.z /* OUT */ (cnti_5),
	.a0 /* IN */ (count_5_obuf),
	.a1 /* IN */ (cntt_5),
	.a2 /* IN */ (mr1_4),
	.a3 /* IN */ (mr1_4),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);

// SYSTOLIC.NET (233) - count[0-5] : fd1q
fd1q count_from_0_to_5_inst_0
(
	.q /* OUT */ (count_0_obuf),
	.d /* IN */ (cnti_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_5_inst_1
(
	.q /* OUT */ (count_1_obuf),
	.d /* IN */ (cnti_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_5_inst_2
(
	.q /* OUT */ (count_2_obuf),
	.d /* IN */ (cnti_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_5_inst_3
(
	.q /* OUT */ (count_3_obuf),
	.d /* IN */ (cnti_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_5_inst_4
(
	.q /* OUT */ (count_4_obuf),
	.d /* IN */ (cnti_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_5_inst_5
(
	.q /* OUT */ (count_5_obuf),
	.d /* IN */ (cnti_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
