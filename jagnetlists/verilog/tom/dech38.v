/* verilator lint_off LITENDIAN */
`include "defs.v"

module dech38
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
	input c
);
wire s_n_0;
wire s_0;
wire s_n_1;
wire s_1;
wire s_n_2;
wire s_2;

// DUPLO.NET (137) - abuf : ivdm
assign s_n_0 = ~a;
assign s_0 = a;

// DUPLO.NET (138) - bbuf : ivdm
assign s_n_1 = ~b;
assign s_1 = b;

// DUPLO.NET (139) - cbuf : ivdm
assign s_n_2 = ~c;
assign s_2 = c;

// DUPLO.NET (140) - q[0] : an3
assign q_0 = s_n_0 & s_n_1 & s_n_2;

// DUPLO.NET (141) - q[1] : an3
assign q_1 = s_0 & s_n_1 & s_n_2;

// DUPLO.NET (142) - q[2] : an3
assign q_2 = s_n_0 & s_1 & s_n_2;

// DUPLO.NET (143) - q[3] : an3
assign q_3 = s_0 & s_1 & s_n_2;

// DUPLO.NET (144) - q[4] : an3
assign q_4 = s_n_0 & s_n_1 & s_2;

// DUPLO.NET (145) - q[5] : an3
assign q_5 = s_0 & s_n_1 & s_2;

// DUPLO.NET (146) - q[6] : an3
assign q_6 = s_n_0 & s_1 & s_2;

// DUPLO.NET (147) - q[7] : an3
assign q_7 = s_0 & s_1 & s_2;
endmodule
/* verilator lint_on LITENDIAN */
