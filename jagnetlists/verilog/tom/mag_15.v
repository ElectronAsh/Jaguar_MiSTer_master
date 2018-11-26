/* verilator lint_off LITENDIAN */
`include "defs.v"

module mag_15
(
	output gt,
	output eq,
	output lt,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input a_8,
	input a_9,
	input a_10,
	input a_11,
	input a_12,
	input a_13,
	input a_14,
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input b_4,
	input b_5,
	input b_6,
	input b_7,
	input b_8,
	input b_9,
	input b_10,
	input b_11,
	input b_12,
	input b_13,
	input b_14
);
wire zeroa;
wire zerob;
wire one;
wire gt_0;
wire eq_0;
wire lt_0;
wire gt_1;
wire eq_1;
wire lt_1;
wire gt_2;
wire eq_2;
wire lt_2;

// DUPLO.NET (399) - zeroa : tie0
assign zeroa = 1'b0;

// DUPLO.NET (400) - zerob : tie0
assign zerob = 1'b0;

// DUPLO.NET (401) - one : tie1
assign one = 1'b1;

// DUPLO.NET (403) - mag0 : mag_4
mag_4 mag0_inst
(
	.gto /* OUT */ (gt_0),
	.eqo /* OUT */ (eq_0),
	.lto /* OUT */ (lt_0),
	.gti /* IN */ (zeroa),
	.eqi /* IN */ (one),
	.lti /* IN */ (zerob),
	.a_0 /* IN */ (a_0),
	.a_1 /* IN */ (a_1),
	.a_2 /* IN */ (a_2),
	.a_3 /* IN */ (a_3),
	.b_0 /* IN */ (b_0),
	.b_1 /* IN */ (b_1),
	.b_2 /* IN */ (b_2),
	.b_3 /* IN */ (b_3)
);

// DUPLO.NET (405) - mag1 : mag_4
mag_4 mag1_inst
(
	.gto /* OUT */ (gt_1),
	.eqo /* OUT */ (eq_1),
	.lto /* OUT */ (lt_1),
	.gti /* IN */ (a_4),
	.eqi /* IN */ (zerob),
	.lti /* IN */ (b_4),
	.a_0 /* IN */ (a_5),
	.a_1 /* IN */ (a_6),
	.a_2 /* IN */ (a_7),
	.a_3 /* IN */ (a_8),
	.b_0 /* IN */ (b_5),
	.b_1 /* IN */ (b_6),
	.b_2 /* IN */ (b_7),
	.b_3 /* IN */ (b_8)
);

// DUPLO.NET (407) - mag2 : mag_4
mag_4 mag2_inst
(
	.gto /* OUT */ (gt_2),
	.eqo /* OUT */ (eq_2),
	.lto /* OUT */ (lt_2),
	.gti /* IN */ (a_9),
	.eqi /* IN */ (zerob),
	.lti /* IN */ (b_9),
	.a_0 /* IN */ (a_10),
	.a_1 /* IN */ (a_11),
	.a_2 /* IN */ (a_12),
	.a_3 /* IN */ (a_13),
	.b_0 /* IN */ (b_10),
	.b_1 /* IN */ (b_11),
	.b_2 /* IN */ (b_12),
	.b_3 /* IN */ (b_13)
);

// DUPLO.NET (409) - mag3 : mag_4
mag_4 mag3_inst
(
	.gto /* OUT */ (gt),
	.eqo /* OUT */ (eq),
	.lto /* OUT */ (lt),
	.gti /* IN */ (gt_0),
	.eqi /* IN */ (eq_0),
	.lti /* IN */ (lt_0),
	.a_0 /* IN */ (gt_1),
	.a_1 /* IN */ (gt_2),
	.a_2 /* IN */ (a_14),
	.a_3 /* IN */ (zerob),
	.b_0 /* IN */ (lt_1),
	.b_1 /* IN */ (lt_2),
	.b_2 /* IN */ (b_14),
	.b_3 /* IN */ (zerob)
);

// DUPLO.NET (412) - dummy[1-2] : dummy
endmodule
/* verilator lint_on LITENDIAN */
