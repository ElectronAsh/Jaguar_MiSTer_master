/* verilator lint_off LITENDIAN */
`include "defs.v"

module dech38el
(
	output q_0,
	output q_1,
	output q_2,
	output q_3,
	output q_4,
	output q_5,
	output q_6,
	output q_7,
	input a,
	input b,
	input c,
	input en
);
wire s_n_0;
wire s_0;
wire s_n_1;
wire s_1;
wire s_n_2;
wire s_2;
wire enb;

// DUPLO.NET (153) - abuf : ivdm
assign s_n_0 = ~a;
assign s_0 = a;

// DUPLO.NET (154) - bbuf : ivdm
assign s_n_1 = ~b;
assign s_1 = b;

// DUPLO.NET (155) - cbuf : ivdm
assign s_n_2 = ~c;
assign s_2 = c;

// DUPLO.NET (156) - ebuf : ivm
assign enb = ~en;

// DUPLO.NET (157) - q[0] : an4
assign q_0 = s_n_0 & s_n_1 & s_n_2 & enb;

// DUPLO.NET (158) - q[1] : an4
assign q_1 = s_0 & s_n_1 & s_n_2 & enb;

// DUPLO.NET (159) - q[2] : an4
assign q_2 = s_n_0 & s_1 & s_n_2 & enb;

// DUPLO.NET (160) - q[3] : an4
assign q_3 = s_0 & s_1 & s_n_2 & enb;

// DUPLO.NET (161) - q[4] : an4
assign q_4 = s_n_0 & s_n_1 & s_2 & enb;

// DUPLO.NET (162) - q[5] : an4
assign q_5 = s_0 & s_n_1 & s_2 & enb;

// DUPLO.NET (163) - q[6] : an4
assign q_6 = s_n_0 & s_1 & s_2 & enb;

// DUPLO.NET (164) - q[7] : an4
assign q_7 = s_0 & s_1 & s_2 & enb;
endmodule
/* verilator lint_on LITENDIAN */
