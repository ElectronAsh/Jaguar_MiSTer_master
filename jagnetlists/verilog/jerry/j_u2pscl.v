/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_u2pscl
(
	output bx16,
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
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input u2psclw,
	input u2psclr,
	input clk,
	input resetl,
	output dr_0_out,
	output dr_0_oe,
	input dr_0_in,
	output dr_1_out,
	output dr_1_oe,
	input dr_1_in,
	output dr_2_out,
	output dr_2_oe,
	input dr_2_in,
	output dr_3_out,
	output dr_3_oe,
	input dr_3_in,
	output dr_4_out,
	output dr_4_oe,
	input dr_4_in,
	output dr_5_out,
	output dr_5_oe,
	input dr_5_in,
	output dr_6_out,
	output dr_6_oe,
	input dr_6_in,
	output dr_7_out,
	output dr_7_oe,
	input dr_7_in,
	output dr_8_out,
	output dr_8_oe,
	input dr_8_in,
	output dr_9_out,
	output dr_9_oe,
	input dr_9_in,
	output dr_10_out,
	output dr_10_oe,
	input dr_10_in,
	output dr_11_out,
	output dr_11_oe,
	input dr_11_in,
	output dr_12_out,
	output dr_12_oe,
	input dr_12_in,
	output dr_13_out,
	output dr_13_oe,
	input dr_13_in,
	output dr_14_out,
	output dr_14_oe,
	input dr_14_in,
	output dr_15_out,
	output dr_15_oe,
	input dr_15_in,
	input sys_clk // Generated
);
wire pd0_0;
wire pd0_1;
wire pd0_2;
wire pd0_3;
wire pd0_4;
wire pd0_5;
wire pd0_6;
wire pd0_7;
wire pd0_8;
wire pd0_9;
wire pd0_10;
wire pd0_11;
wire pd0_12;
wire pd0_13;
wire pd0_14;
wire pd0_15;
wire ten00;
wire ten01;
wire ten0;
wire presl0;
wire tp0_0;
wire tpco0_0;
wire tpld0;
wire tp0_1;
wire tp0_2;
wire tp0_3;
wire tp0_4;
wire tp0_5;
wire tp0_6;
wire tp0_7;
wire tpco0_1;
wire tpco0_2;
wire tpco0_3;
wire tpco0_4;
wire tpco0_5;
wire tpco0_6;
wire tpco0_7;
wire tp0_8;
wire tpco0_8;
wire tpc08;
wire tp0_9;
wire tp0_10;
wire tp0_11;
wire tp0_12;
wire tp0_13;
wire tp0_14;
wire tp0_15;
wire tpco0_9;
wire tpco0_10;
wire tpco0_11;
wire tpco0_12;
wire tpco0_13;
wire tpco0_14;
wire tpco0_15;
wire tplac00;
wire tplac01;
wire tpc016;
wire tpld0i;

// UART2.NET (576) - pd0[0-15] : ldp2q
ldp2q pd0_from_0_to_15_inst_0
(
	.q /* OUT */ (pd0_0),
	.d /* IN */ (din_0),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_1
(
	.q /* OUT */ (pd0_1),
	.d /* IN */ (din_1),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_2
(
	.q /* OUT */ (pd0_2),
	.d /* IN */ (din_2),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_3
(
	.q /* OUT */ (pd0_3),
	.d /* IN */ (din_3),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_4
(
	.q /* OUT */ (pd0_4),
	.d /* IN */ (din_4),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_5
(
	.q /* OUT */ (pd0_5),
	.d /* IN */ (din_5),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_6
(
	.q /* OUT */ (pd0_6),
	.d /* IN */ (din_6),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_7
(
	.q /* OUT */ (pd0_7),
	.d /* IN */ (din_7),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_8
(
	.q /* OUT */ (pd0_8),
	.d /* IN */ (din_8),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_9
(
	.q /* OUT */ (pd0_9),
	.d /* IN */ (din_9),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_10
(
	.q /* OUT */ (pd0_10),
	.d /* IN */ (din_10),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_11
(
	.q /* OUT */ (pd0_11),
	.d /* IN */ (din_11),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_12
(
	.q /* OUT */ (pd0_12),
	.d /* IN */ (din_12),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_13
(
	.q /* OUT */ (pd0_13),
	.d /* IN */ (din_13),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_14
(
	.q /* OUT */ (pd0_14),
	.d /* IN */ (din_14),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_15
(
	.q /* OUT */ (pd0_15),
	.d /* IN */ (din_15),
	.g /* IN */ (u2psclw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (580) - ten00 : or8
assign ten00 = pd0_0 | pd0_1 | pd0_2 | pd0_3 | pd0_4 | pd0_5 | pd0_6 | pd0_7;

// UART2.NET (581) - ten01 : or8
assign ten01 = pd0_8 | pd0_9 | pd0_10 | pd0_11 | pd0_12 | pd0_13 | pd0_14 | pd0_15;

// UART2.NET (582) - ten0 : or2
assign ten0 = ten00 | ten01;

// UART2.NET (583) - presl0 : an2u
assign presl0 = ten0 & resetl;

// UART2.NET (587) - tp0[0] : dncnt
j_dncnt tp0_index_0_inst
(
	.q /* OUT */ (tp0_0),
	.co /* OUT */ (tpco0_0),
	.d /* IN */ (pd0_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (ten0),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (588) - tp0[1-7] : dncnt
j_dncnt tp0_from_1_to_7_inst_0
(
	.q /* OUT */ (tp0_1),
	.co /* OUT */ (tpco0_1),
	.d /* IN */ (pd0_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_0),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_1
(
	.q /* OUT */ (tp0_2),
	.co /* OUT */ (tpco0_2),
	.d /* IN */ (pd0_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_1),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_2
(
	.q /* OUT */ (tp0_3),
	.co /* OUT */ (tpco0_3),
	.d /* IN */ (pd0_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_2),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_3
(
	.q /* OUT */ (tp0_4),
	.co /* OUT */ (tpco0_4),
	.d /* IN */ (pd0_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_3),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_4
(
	.q /* OUT */ (tp0_5),
	.co /* OUT */ (tpco0_5),
	.d /* IN */ (pd0_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_4),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_5
(
	.q /* OUT */ (tp0_6),
	.co /* OUT */ (tpco0_6),
	.d /* IN */ (pd0_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_5),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_6
(
	.q /* OUT */ (tp0_7),
	.co /* OUT */ (tpco0_7),
	.d /* IN */ (pd0_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_6),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (589) - tp0[8] : dncnt
j_dncnt tp0_index_8_inst
(
	.q /* OUT */ (tp0_8),
	.co /* OUT */ (tpco0_8),
	.d /* IN */ (pd0_8),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpc08),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (590) - tp0[9-15] : dncnt
j_dncnt tp0_from_9_to_15_inst_0
(
	.q /* OUT */ (tp0_9),
	.co /* OUT */ (tpco0_9),
	.d /* IN */ (pd0_9),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_8),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_1
(
	.q /* OUT */ (tp0_10),
	.co /* OUT */ (tpco0_10),
	.d /* IN */ (pd0_10),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_9),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_2
(
	.q /* OUT */ (tp0_11),
	.co /* OUT */ (tpco0_11),
	.d /* IN */ (pd0_11),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_10),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_3
(
	.q /* OUT */ (tp0_12),
	.co /* OUT */ (tpco0_12),
	.d /* IN */ (pd0_12),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_11),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_4
(
	.q /* OUT */ (tp0_13),
	.co /* OUT */ (tpco0_13),
	.d /* IN */ (pd0_13),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_12),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_5
(
	.q /* OUT */ (tp0_14),
	.co /* OUT */ (tpco0_14),
	.d /* IN */ (pd0_14),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_13),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_6
(
	.q /* OUT */ (tp0_15),
	.co /* OUT */ (tpco0_15),
	.d /* IN */ (pd0_15),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_14),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (591) - tpu0[0-15] : dummy

// UART2.NET (592) - tpco0[7] : dummy

// UART2.NET (593) - tpco0[15] : dummy

// UART2.NET (594) - tplac00 : nr8
assign tplac00 = ~(tp0_0 | tp0_1 | tp0_2 | tp0_3 | tp0_4 | tp0_5 | tp0_6 | tp0_7);

// UART2.NET (595) - tplac01 : nr8
assign tplac01 = ~(tp0_8 | tp0_9 | tp0_10 | tp0_11 | tp0_12 | tp0_13 | tp0_14 | tp0_15);

// UART2.NET (596) - tpc08 : an2
assign tpc08 = tplac00 & ten0;

// UART2.NET (597) - tpc016 : an3
assign tpc016 = tplac00 & tplac01 & ten0;

// UART2.NET (598) - bx16 : nivh
assign bx16 = tpc016;

// UART2.NET (599) - dtp0[0-15] : ts
assign dr_0_out = tp0_0;
assign dr_0_oe = u2psclr;
assign dr_1_out = tp0_1;
assign dr_1_oe = u2psclr;
assign dr_2_out = tp0_2;
assign dr_2_oe = u2psclr;
assign dr_3_out = tp0_3;
assign dr_3_oe = u2psclr;
assign dr_4_out = tp0_4;
assign dr_4_oe = u2psclr;
assign dr_5_out = tp0_5;
assign dr_5_oe = u2psclr;
assign dr_6_out = tp0_6;
assign dr_6_oe = u2psclr;
assign dr_7_out = tp0_7;
assign dr_7_oe = u2psclr;
assign dr_8_out = tp0_8;
assign dr_8_oe = u2psclr;
assign dr_9_out = tp0_9;
assign dr_9_oe = u2psclr;
assign dr_10_out = tp0_10;
assign dr_10_oe = u2psclr;
assign dr_11_out = tp0_11;
assign dr_11_oe = u2psclr;
assign dr_12_out = tp0_12;
assign dr_12_oe = u2psclr;
assign dr_13_out = tp0_13;
assign dr_13_oe = u2psclr;
assign dr_14_out = tp0_14;
assign dr_14_oe = u2psclr;
assign dr_15_out = tp0_15;
assign dr_15_oe = u2psclr;

// UART2.NET (600) - tpld0i : nr2
assign tpld0i = ~(tpc016 | u2psclw);

// UART2.NET (601) - tpld0 : ivh
assign tpld0 = ~tpld0i;
endmodule
/* verilator lint_on LITENDIAN */
