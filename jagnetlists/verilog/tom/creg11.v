/* verilator lint_off LITENDIAN */
`include "defs.v"

module creg11
(
	output creq,
	output dout_0_out,
	output dout_0_oe,
	input dout_0_in,
	output dout_1_out,
	output dout_1_oe,
	input dout_1_in,
	output dout_2_out,
	output dout_2_oe,
	input dout_2_in,
	output dout_3_out,
	output dout_3_oe,
	input dout_3_in,
	output dout_4_out,
	output dout_4_oe,
	input dout_4_in,
	output dout_5_out,
	output dout_5_oe,
	input dout_5_in,
	output dout_6_out,
	output dout_6_oe,
	input dout_6_in,
	output dout_7_out,
	output dout_7_oe,
	input dout_7_in,
	output dout_8_out,
	output dout_8_oe,
	input dout_8_in,
	output dout_9_out,
	output dout_9_oe,
	input dout_9_in,
	output dout_10_out,
	output dout_10_oe,
	input dout_10_in,
	input count_0,
	input count_1,
	input count_2,
	input count_3,
	input count_4,
	input count_5,
	input count_6,
	input count_7,
	input count_8,
	input count_9,
	input count_10,
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input crwr,
	input sys_clk // Generated
);
wire cr_0;
wire cr_1;
wire cr_2;
wire cr_3;
wire cr_4;
wire cr_5;
wire cr_6;
wire cr_7;
wire cr_8;
wire cr_9;
wire cr_10;
wire cre_0;
wire cre_1;
wire cre_2;
wire cre_3;
wire cre_4;
wire cre_5;
wire cre_6;
wire cre_7;
wire cre_8;
wire cre_9;
wire cre_10;
wire zero;

// VID.NET (416) - cr[0-10] : ldp1q
ldp1q cr_from_0_to_10_inst_0
(
	.q /* OUT */ (cr_0),
	.d /* IN */ (din_0),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_1
(
	.q /* OUT */ (cr_1),
	.d /* IN */ (din_1),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_2
(
	.q /* OUT */ (cr_2),
	.d /* IN */ (din_2),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_3
(
	.q /* OUT */ (cr_3),
	.d /* IN */ (din_3),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_4
(
	.q /* OUT */ (cr_4),
	.d /* IN */ (din_4),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_5
(
	.q /* OUT */ (cr_5),
	.d /* IN */ (din_5),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_6
(
	.q /* OUT */ (cr_6),
	.d /* IN */ (din_6),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_7
(
	.q /* OUT */ (cr_7),
	.d /* IN */ (din_7),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_8
(
	.q /* OUT */ (cr_8),
	.d /* IN */ (din_8),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_9
(
	.q /* OUT */ (cr_9),
	.d /* IN */ (din_9),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q cr_from_0_to_10_inst_10
(
	.q /* OUT */ (cr_10),
	.d /* IN */ (din_10),
	.g /* IN */ (crwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (417) - cre[0-10] : en
assign cre_0 = ~(cr_0 ^ count_0);
assign cre_1 = ~(cr_1 ^ count_1);
assign cre_2 = ~(cr_2 ^ count_2);
assign cre_3 = ~(cr_3 ^ count_3);
assign cre_4 = ~(cr_4 ^ count_4);
assign cre_5 = ~(cr_5 ^ count_5);
assign cre_6 = ~(cr_6 ^ count_6);
assign cre_7 = ~(cr_7 ^ count_7);
assign cre_8 = ~(cr_8 ^ count_8);
assign cre_9 = ~(cr_9 ^ count_9);
assign cre_10 = ~(cr_10 ^ count_10);

// VID.NET (418) - creq : and11
assign creq = cre_0 & cre_1 & cre_2 & cre_3 & cre_4 & cre_5 & cre_6 & cre_7 & cre_8 & cre_9 & cre_10;

// VID.NET (420) - zero : tie0
assign zero = 1'b0;

// VID.NET (421) - dout[0-10] : ts
assign dout_0_out = cr_0;
assign dout_0_oe = zero;
assign dout_1_out = cr_1;
assign dout_1_oe = zero;
assign dout_2_out = cr_2;
assign dout_2_oe = zero;
assign dout_3_out = cr_3;
assign dout_3_oe = zero;
assign dout_4_out = cr_4;
assign dout_4_oe = zero;
assign dout_5_out = cr_5;
assign dout_5_oe = zero;
assign dout_6_out = cr_6;
assign dout_6_oe = zero;
assign dout_7_out = cr_7;
assign dout_7_oe = zero;
assign dout_8_out = cr_8;
assign dout_8_oe = zero;
assign dout_9_out = cr_9;
assign dout_9_oe = zero;
assign dout_10_out = cr_10;
assign dout_10_oe = zero;
endmodule
/* verilator lint_on LITENDIAN */
