/* verilator lint_off LITENDIAN */
`include "defs.v"

module bank
(
	output match,
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
	input newrow,
	input resl,
	input sys_clk // Generated
);
wire ra_0;
wire ra_1;
wire ra_2;
wire ra_3;
wire ra_4;
wire ra_5;
wire ra_6;
wire ra_7;
wire ra_8;
wire ra_9;
wire ra_10;
wire newrowl;
wire valid;
wire m_0;
wire m_1;
wire m_2;
wire m_3;
wire m_4;
wire m_5;
wire m_6;
wire m_7;
wire m_8;
wire m_9;
wire m_10;
wire m1;
wire m2;

// ABUS.NET (483) - ra[0-10] : ldp1q
ldp1q ra_from_0_to_10_inst_0
(
	.q /* OUT */ (ra_0),
	.d /* IN */ (a_0),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_1
(
	.q /* OUT */ (ra_1),
	.d /* IN */ (a_1),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_2
(
	.q /* OUT */ (ra_2),
	.d /* IN */ (a_2),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_3
(
	.q /* OUT */ (ra_3),
	.d /* IN */ (a_3),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_4
(
	.q /* OUT */ (ra_4),
	.d /* IN */ (a_4),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_5
(
	.q /* OUT */ (ra_5),
	.d /* IN */ (a_5),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_6
(
	.q /* OUT */ (ra_6),
	.d /* IN */ (a_6),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_7
(
	.q /* OUT */ (ra_7),
	.d /* IN */ (a_7),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_8
(
	.q /* OUT */ (ra_8),
	.d /* IN */ (a_8),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_9
(
	.q /* OUT */ (ra_9),
	.d /* IN */ (a_9),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);
ldp1q ra_from_0_to_10_inst_10
(
	.q /* OUT */ (ra_10),
	.d /* IN */ (a_10),
	.g /* IN */ (newrow),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (487) - newrowl : iv
assign newrowl = ~newrow;

// ABUS.NET (488) - valid : lsra
lsra valid_inst
(
	.q /* OUT */ (valid),
	.rn /* IN */ (resl),
	.sn /* IN */ (newrowl),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (492) - m[0-10] : en
assign m_0 = ~(ra_0 ^ a_0);
assign m_1 = ~(ra_1 ^ a_1);
assign m_2 = ~(ra_2 ^ a_2);
assign m_3 = ~(ra_3 ^ a_3);
assign m_4 = ~(ra_4 ^ a_4);
assign m_5 = ~(ra_5 ^ a_5);
assign m_6 = ~(ra_6 ^ a_6);
assign m_7 = ~(ra_7 ^ a_7);
assign m_8 = ~(ra_8 ^ a_8);
assign m_9 = ~(ra_9 ^ a_9);
assign m_10 = ~(ra_10 ^ a_10);

// ABUS.NET (494) - m1 : nd6
assign m1 = ~(m_0 & m_1 & m_2 & m_3 & m_4 & m_5);

// ABUS.NET (495) - m2 : nd6
assign m2 = ~(m_6 & m_7 & m_8 & m_9 & m_10 & valid);

// ABUS.NET (496) - match : nr2
assign match = ~(m1 | m2);
endmodule
/* verilator lint_on LITENDIAN */
