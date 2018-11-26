/* verilator lint_off LITENDIAN */
`include "defs.v"

module ha9
(
	output q_0,
	output q_1,
	output q_2,
	output q_3,
	output q_4,
	output q_5,
	output q_6,
	output q_7,
	output q_8,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input a_8,
	input ci
);
wire c;
wire q1t;
wire q2t;
wire q3t;
wire q4t;
wire vcc;
wire q5t;
wire q6t;
wire q7t;
wire q8t;

// WBK.NET (206) - c : nivh
assign c = ci;

// WBK.NET (207) - q0 : eo
assign q_0 = a_0 ^ c;

// WBK.NET (209) - q1t : nd2
assign q1t = ~(a_0 & c);

// WBK.NET (210) - q1 : en
assign q_1 = ~(a_1 ^ q1t);

// WBK.NET (212) - q2t : nd3
assign q2t = ~(a_1 & a_0 & c);

// WBK.NET (213) - q2 : en
assign q_2 = ~(a_2 ^ q2t);

// WBK.NET (215) - q3t : nd4
assign q3t = ~(a_2 & a_1 & a_0 & c);

// WBK.NET (216) - q3 : en
assign q_3 = ~(a_3 ^ q3t);

// WBK.NET (218) - q4t : nd8
assign q4t = ~(vcc & vcc & vcc & a_3 & a_2 & a_1 & a_0 & c);

// WBK.NET (219) - q4 : en
assign q_4 = ~(a_4 ^ q4t);

// WBK.NET (221) - q5t : nd8
assign q5t = ~(vcc & vcc & a_4 & a_3 & a_2 & a_1 & a_0 & c);

// WBK.NET (222) - q5 : en
assign q_5 = ~(a_5 ^ q5t);

// WBK.NET (224) - q6t : nd8
assign q6t = ~(vcc & a_5 & a_4 & a_3 & a_2 & a_1 & a_0 & c);

// WBK.NET (225) - q6 : en
assign q_6 = ~(a_6 ^ q6t);

// WBK.NET (227) - q7t : nd8
assign q7t = ~(a_6 & a_5 & a_4 & a_3 & a_2 & a_1 & a_0 & c);

// WBK.NET (228) - q7 : en
assign q_7 = ~(a_7 ^ q7t);

// WBK.NET (230) - q8t : nd9
assign q8t = ~(a_7 & a_6 & a_5 & a_4 & a_3 & a_2 & a_1 & a_0 & c);

// WBK.NET (231) - q8 : en
assign q_8 = ~(a_8 ^ q8t);

// WBK.NET (233) - vcc : tie1
assign vcc = 1'b1;
endmodule
/* verilator lint_on LITENDIAN */
