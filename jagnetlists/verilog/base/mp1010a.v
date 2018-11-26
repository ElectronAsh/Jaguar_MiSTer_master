/* verilator lint_off LITENDIAN */
`include "defs.v"

module mp1010a
(
	output	[0:19]	q,
	input		[0:9]		a,
	input		[0:9]		b
);

wire signed [9:0] ai;
wire signed [9:0] bi;
wire signed [19:0] qi;

assign ai[9:0] = {a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]};
assign bi[9:0] = {b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]};

assign qi = ai * bi;

assign q[0:19] = {qi[0], qi[1], qi[2], qi[3], qi[4], qi[5], qi[6], qi[7], qi[8], qi[9], 
	qi[10], qi[11], qi[12], qi[13], qi[14], qi[15], qi[16], qi[17], qi[18], qi[19]};

endmodule
/* verilator lint_on LITENDIAN */