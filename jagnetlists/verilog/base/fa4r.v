`include "defs.v"

module fa4r
(
	output	s0,
	output	s1,
	output	s2,
	output	s3,
	output	co,
	input		ci,	
	input		a0,
	input		b0,
	input		a1,
	input		b1,
	input		a2,
	input		b2,
	input		a3,
	input		b3
);

wire [3:0] a;
wire [3:0] b;
wire [3:0] s;

assign a = {a3, a2, a1, a0};
assign b = {b3, b2, b1, b0};

assign s0 = s[0];
assign s1 = s[1];
assign s2 = s[2];
assign s3 = s[3];

assign {co, s} = a + b + {3'b000, ci};

endmodule
