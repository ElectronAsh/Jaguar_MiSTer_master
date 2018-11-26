/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_pulse
(
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input b_4,
	input b_5,
	input b_6,
	input stop,
	input clk,
	input resetl,
	output pulse,
	input sys_clk // Generated
);
wire ab_0;
wire ab_1;
wire ab_2;
wire ab_3;
wire ab_4;
wire ab_5;
wire ab_6;
wire ab_7;
wire startl;
wire start;
wire pulsel;

// DAC.NET (82) - ab[0-6] : en
assign ab_0 = ~(a_0 ^ b_0);
assign ab_1 = ~(a_1 ^ b_1);
assign ab_2 = ~(a_2 ^ b_2);
assign ab_3 = ~(a_3 ^ b_3);
assign ab_4 = ~(a_4 ^ b_4);
assign ab_5 = ~(a_5 ^ b_5);
assign ab_6 = ~(a_6 ^ b_6);

// DAC.NET (83) - ab[7] : iv
assign ab_7 = ~a_7;

// DAC.NET (84) - startl : nd8
assign startl = ~(ab_0 & ab_1 & ab_2 & ab_3 & ab_4 & ab_5 & ab_6 & ab_7);

// DAC.NET (85) - start : iv
assign start = ~startl;

// DAC.NET (87) - pulse : fjk2
fjk2 pulse_inst
(
	.q /* OUT */ (pulse),
	.qn /* OUT */ (pulsel),
	.j /* IN */ (start),
	.k /* IN */ (stop),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (88) - pulsel : dummy
endmodule
/* verilator lint_on LITENDIAN */
