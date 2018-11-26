/* verilator lint_off LITENDIAN */
`include "defs.v"

module decl38e
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

// DUPLO.NET (170) - abuf : ivdm
assign s_n_0 = ~a;
assign s_0 = a;

// DUPLO.NET (171) - bbuf : ivdm
assign s_n_1 = ~b;
assign s_1 = b;

// DUPLO.NET (172) - cbuf : ivdm
assign s_n_2 = ~c;
assign s_2 = c;

// DUPLO.NET (173) - ebuf : nivm
assign enb = en;

// DUPLO.NET (174) - q[0] : nd4
assign q_0 = ~(s_n_0 & s_n_1 & s_n_2 & enb);

// DUPLO.NET (175) - q[1] : nd4
assign q_1 = ~(s_0 & s_n_1 & s_n_2 & enb);

// DUPLO.NET (176) - q[2] : nd4
assign q_2 = ~(s_n_0 & s_1 & s_n_2 & enb);

// DUPLO.NET (177) - q[3] : nd4
assign q_3 = ~(s_0 & s_1 & s_n_2 & enb);

// DUPLO.NET (178) - q[4] : nd4
assign q_4 = ~(s_n_0 & s_n_1 & s_2 & enb);

// DUPLO.NET (179) - q[5] : nd4
assign q_5 = ~(s_0 & s_n_1 & s_2 & enb);

// DUPLO.NET (180) - q[6] : nd4
assign q_6 = ~(s_n_0 & s_1 & s_2 & enb);

// DUPLO.NET (181) - q[7] : nd4
assign q_7 = ~(s_0 & s_1 & s_2 & enb);
endmodule
/* verilator lint_on LITENDIAN */
