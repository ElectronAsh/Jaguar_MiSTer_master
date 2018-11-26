/* verilator lint_off LITENDIAN */
`include "defs.v"

module mcount
(
	output count1,
	input clk,
	input cnten,
	input cntld,
	input mwidth_0,
	input mwidth_1,
	input mwidth_2,
	input mwidth_3,
	input sys_clk // Generated
);
wire cntt_0;
wire count_0;
wire cntt_1;
wire count_1;
wire cntc_1;
wire cntt_2;
wire count_2;
wire cntc_2;
wire cntt_3;
wire count_3;
wire cnti_0;
wire cnti_1;
wire cnti_2;
wire cnti_3;
wire count_n_0;

// SYSTOLIC.NET (192) - cntt0 : iv
assign cntt_0 = ~count_0;

// SYSTOLIC.NET (193) - cntt1 : en
assign cntt_1 = ~(count_0 ^ count_1);

// SYSTOLIC.NET (194) - cntc1 : or2
assign cntc_1 = count_0 | count_1;

// SYSTOLIC.NET (195) - cntt2 : en
assign cntt_2 = ~(cntc_1 ^ count_2);

// SYSTOLIC.NET (196) - cntc2 : or2
assign cntc_2 = cntc_1 | count_2;

// SYSTOLIC.NET (197) - cntt3 : en
assign cntt_3 = ~(cntc_2 ^ count_3);

// SYSTOLIC.NET (199) - cnti[0-3] : mx4
mx4 cnti_from_0_to_3_inst_0
(
	.z /* OUT */ (cnti_0),
	.a0 /* IN */ (count_0),
	.a1 /* IN */ (cntt_0),
	.a2 /* IN */ (mwidth_0),
	.a3 /* IN */ (mwidth_0),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_3_inst_1
(
	.z /* OUT */ (cnti_1),
	.a0 /* IN */ (count_1),
	.a1 /* IN */ (cntt_1),
	.a2 /* IN */ (mwidth_1),
	.a3 /* IN */ (mwidth_1),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_3_inst_2
(
	.z /* OUT */ (cnti_2),
	.a0 /* IN */ (count_2),
	.a1 /* IN */ (cntt_2),
	.a2 /* IN */ (mwidth_2),
	.a3 /* IN */ (mwidth_2),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);
mx4 cnti_from_0_to_3_inst_3
(
	.z /* OUT */ (cnti_3),
	.a0 /* IN */ (count_3),
	.a1 /* IN */ (cntt_3),
	.a2 /* IN */ (mwidth_3),
	.a3 /* IN */ (mwidth_3),
	.s0 /* IN */ (cnten),
	.s1 /* IN */ (cntld)
);

// SYSTOLIC.NET (202) - count[0-3] : fd1q
fd1q count_from_0_to_3_inst_0
(
	.q /* OUT */ (count_0),
	.d /* IN */ (cnti_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_3_inst_1
(
	.q /* OUT */ (count_1),
	.d /* IN */ (cnti_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_3_inst_2
(
	.q /* OUT */ (count_2),
	.d /* IN */ (cnti_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q count_from_0_to_3_inst_3
(
	.q /* OUT */ (count_3),
	.d /* IN */ (cnti_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (204) - count\[0] : iv
assign count_n_0 = ~count_0;

// SYSTOLIC.NET (205) - count2 : nr4
assign count1 = ~(count_n_0 | count_1 | count_2 | count_3);
endmodule
/* verilator lint_on LITENDIAN */
