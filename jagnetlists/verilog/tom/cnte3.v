/* verilator lint_off LITENDIAN */
`include "defs.v"

module cnte3
(
	output count_0,
	output count_1,
	output count_2,
	input cnten,
	input clk,
	input reset_n,
	input sys_clk // Generated
);
wire sum_1;
wire carry_1;
wire sum_2;
wire cnti_0;
wire count_n_0;
wire cnti_1;
wire cnti_2;
wire countt_0;
wire countt_1;
wire countt_2;

// Output buffers
wire count_0_obuf;
wire count_1_obuf;
wire count_2_obuf;


// Output buffers
assign count_0 = count_0_obuf;
assign count_1 = count_1_obuf;
assign count_2 = count_2_obuf;


// INTER-UA.NET (161) - add1 : ha1
ha1 add1_inst
(
	.s /* OUT */ (sum_1),
	.co /* OUT */ (carry_1),
	.a /* IN */ (count_1_obuf),
	.b /* IN */ (count_0_obuf)
);

// INTER-UA.NET (162) - add2 : eo
assign sum_2 = count_2_obuf ^ carry_1;

// INTER-UA.NET (163) - cnti0 : mx2
assign cnti_0 = (cnten) ? count_n_0 : count_0_obuf;

// INTER-UA.NET (164) - cnti1 : mx2
assign cnti_1 = (cnten) ? sum_1 : count_1_obuf;

// INTER-UA.NET (165) - cnti2 : mx2
assign cnti_2 = (cnten) ? sum_2 : count_2_obuf;

// INTER-UA.NET (166) - count0 : fd2p
fd2 count0_inst
(
	.q /* OUT */ (countt_0),
	.qn /* OUT */ (count_n_0),
	.d /* IN */ (cnti_0),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INTER-UA.NET (167) - count1 : fd2qp
fd2q count1_inst
(
	.q /* OUT */ (countt_1),
	.d /* IN */ (cnti_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INTER-UA.NET (168) - count2 : fd2qp
fd2q count2_inst
(
	.q /* OUT */ (countt_2),
	.d /* IN */ (cnti_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INTER-UA.NET (169) - icount[0-2] : nivu
assign count_0_obuf = countt_0;
assign count_1_obuf = countt_1;
assign count_2_obuf = countt_2;
endmodule
/* verilator lint_on LITENDIAN */
