/* verilator lint_off LITENDIAN */
`include "defs.v"

module mp16
(
	output	[0:31]	q,
	input		[0:15]	a,
	input		[0:15]	b,
	input		sign0,
	input		sign1,
	input		unk0,
	input		unk1
);

wire signed [15:0] ai;
wire signed [15:0] bi;
wire signed [31:0] qi;

wire [15:0] uai;
wire [15:0] ubi;
wire [31:0] uqi;

assign ai[15:0] = {a[15], a[14], a[13], a[12], a[11], a[10], 
	a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]};
assign bi[15:0] = {b[15], b[14], b[13], b[12], b[11], b[10],
	b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]};

assign qi = ai * bi;

assign uai[15:0] = {a[15], a[14], a[13], a[12], a[11], a[10], 
	a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]};
assign ubi[15:0] = {b[15], b[14], b[13], b[12], b[11], b[10],
	b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]};

assign uqi = uai * ubi;

assign q[0:31] = (sign0) ? 
		{qi[0], qi[1], qi[2], qi[3], qi[4], qi[5], qi[6], qi[7], qi[8], qi[9], 
		qi[10], qi[11], qi[12], qi[13], qi[14], qi[15], qi[16], qi[17], qi[18], qi[19],
		qi[20], qi[21], qi[22], qi[23], qi[24], qi[25], qi[26], qi[27], qi[28], qi[29],
		qi[30], qi[31]}
	: {uqi[0], uqi[1], uqi[2], uqi[3], uqi[4], uqi[5], uqi[6], uqi[7], uqi[8], uqi[9], 
		uqi[10], uqi[11], uqi[12], uqi[13], uqi[14], uqi[15], uqi[16], uqi[17], uqi[18], uqi[19],
		uqi[20], uqi[21], uqi[22], uqi[23], uqi[24], uqi[25], uqi[26], uqi[27], uqi[28], uqi[29],
		uqi[30], uqi[31]};

endmodule
/* verilator lint_on LITENDIAN */