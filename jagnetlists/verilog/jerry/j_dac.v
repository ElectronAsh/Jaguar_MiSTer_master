/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_dac
(
	input resetl,
	input clk,
	input dac1w,
	input dac2w,
	input tint_0,
	input ts,
	input dspd_0,
	input dspd_1,
	input dspd_2,
	input dspd_3,
	input dspd_4,
	input dspd_5,
	input dspd_6,
	input dspd_7,
	input dspd_8,
	input dspd_9,
	input dspd_10,
	input dspd_11,
	input dspd_12,
	input dspd_13,
	input dspd_14,
	input dspd_15,
	output rdac_0,
	output rdac_1,
	output ldac_0,
	output ldac_1,
	input sys_clk // Generated
);
wire [0:7] p;
wire dl1_2;
wire dl1_3;
wire dl1_4;
wire dl1_5;
wire dl1_6;
wire dl1_7;
wire dl1_8;
wire dl1_9;
wire dl1_10;
wire dl1_11;
wire dl1_12;
wire dl1_13;
wire dl1_14;
wire dl1_15;
wire dr1_2;
wire dr1_3;
wire dr1_4;
wire dr1_5;
wire dr1_6;
wire dr1_7;
wire dr1_8;
wire dr1_9;
wire dr1_10;
wire dr1_11;
wire dr1_12;
wire dr1_13;
wire dr1_14;
wire dr1_15;
wire dl2_2;
wire dl2_3;
wire dl2_4;
wire dl2_5;
wire dl2_6;
wire dl2_7;
wire dl2_8;
wire dl2_9;
wire dl2_10;
wire dl2_11;
wire dl2_12;
wire dl2_13;
wire dl2_14;
wire dl2_15;
wire dr2_2;
wire dr2_3;
wire dr2_4;
wire dr2_5;
wire dr2_6;
wire dr2_7;
wire dr2_8;
wire dr2_9;
wire dr2_10;
wire dr2_11;
wire dr2_12;
wire dr2_13;
wire dr2_14;
wire dr2_15;
wire pi_0;
wire pco_0;
wire gnd;
wire go;
wire pi_1;
wire pi_2;
wire pi_3;
wire pi_4;
wire pi_5;
wire pi_6;
wire pco_1;
wire pco_2;
wire pco_3;
wire pco_4;
wire pco_5;
wire pco_6;
wire pi_7;
wire pco_7;
wire vcc;
wire p_0;
wire p_1;
wire p_2;
wire p_3;
wire p_4;
wire p_5;
wire p_6;
wire p_7;
wire stop;
wire dli_15;
wire dri_15;

// DAC.NET (24) - dl1[2-15] : slatchc
j_slatchc dl1_from_2_to_15_inst_0
(
	.q /* OUT */ (dl1_2),
	.d /* IN */ (dspd_2),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_1
(
	.q /* OUT */ (dl1_3),
	.d /* IN */ (dspd_3),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_2
(
	.q /* OUT */ (dl1_4),
	.d /* IN */ (dspd_4),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_3
(
	.q /* OUT */ (dl1_5),
	.d /* IN */ (dspd_5),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_4
(
	.q /* OUT */ (dl1_6),
	.d /* IN */ (dspd_6),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_5
(
	.q /* OUT */ (dl1_7),
	.d /* IN */ (dspd_7),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_6
(
	.q /* OUT */ (dl1_8),
	.d /* IN */ (dspd_8),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_7
(
	.q /* OUT */ (dl1_9),
	.d /* IN */ (dspd_9),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_8
(
	.q /* OUT */ (dl1_10),
	.d /* IN */ (dspd_10),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_9
(
	.q /* OUT */ (dl1_11),
	.d /* IN */ (dspd_11),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_10
(
	.q /* OUT */ (dl1_12),
	.d /* IN */ (dspd_12),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_11
(
	.q /* OUT */ (dl1_13),
	.d /* IN */ (dspd_13),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_12
(
	.q /* OUT */ (dl1_14),
	.d /* IN */ (dspd_14),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl1_from_2_to_15_inst_13
(
	.q /* OUT */ (dl1_15),
	.d /* IN */ (dspd_15),
	.clk /* IN */ (clk),
	.en /* IN */ (dac1w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (25) - dr1[2-15] : slatchc
j_slatchc dr1_from_2_to_15_inst_0
(
	.q /* OUT */ (dr1_2),
	.d /* IN */ (dspd_2),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_1
(
	.q /* OUT */ (dr1_3),
	.d /* IN */ (dspd_3),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_2
(
	.q /* OUT */ (dr1_4),
	.d /* IN */ (dspd_4),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_3
(
	.q /* OUT */ (dr1_5),
	.d /* IN */ (dspd_5),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_4
(
	.q /* OUT */ (dr1_6),
	.d /* IN */ (dspd_6),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_5
(
	.q /* OUT */ (dr1_7),
	.d /* IN */ (dspd_7),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_6
(
	.q /* OUT */ (dr1_8),
	.d /* IN */ (dspd_8),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_7
(
	.q /* OUT */ (dr1_9),
	.d /* IN */ (dspd_9),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_8
(
	.q /* OUT */ (dr1_10),
	.d /* IN */ (dspd_10),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_9
(
	.q /* OUT */ (dr1_11),
	.d /* IN */ (dspd_11),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_10
(
	.q /* OUT */ (dr1_12),
	.d /* IN */ (dspd_12),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_11
(
	.q /* OUT */ (dr1_13),
	.d /* IN */ (dspd_13),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_12
(
	.q /* OUT */ (dr1_14),
	.d /* IN */ (dspd_14),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr1_from_2_to_15_inst_13
(
	.q /* OUT */ (dr1_15),
	.d /* IN */ (dspd_15),
	.clk /* IN */ (clk),
	.en /* IN */ (dac2w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (27) - dspdu[0-1] : dummy

// DAC.NET (31) - dl2[2-15] : slatchc
j_slatchc dl2_from_2_to_15_inst_0
(
	.q /* OUT */ (dl2_2),
	.d /* IN */ (dl1_2),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_1
(
	.q /* OUT */ (dl2_3),
	.d /* IN */ (dl1_3),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_2
(
	.q /* OUT */ (dl2_4),
	.d /* IN */ (dl1_4),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_3
(
	.q /* OUT */ (dl2_5),
	.d /* IN */ (dl1_5),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_4
(
	.q /* OUT */ (dl2_6),
	.d /* IN */ (dl1_6),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_5
(
	.q /* OUT */ (dl2_7),
	.d /* IN */ (dl1_7),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_6
(
	.q /* OUT */ (dl2_8),
	.d /* IN */ (dl1_8),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_7
(
	.q /* OUT */ (dl2_9),
	.d /* IN */ (dl1_9),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_8
(
	.q /* OUT */ (dl2_10),
	.d /* IN */ (dl1_10),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_9
(
	.q /* OUT */ (dl2_11),
	.d /* IN */ (dl1_11),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_10
(
	.q /* OUT */ (dl2_12),
	.d /* IN */ (dl1_12),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_11
(
	.q /* OUT */ (dl2_13),
	.d /* IN */ (dl1_13),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_12
(
	.q /* OUT */ (dl2_14),
	.d /* IN */ (dl1_14),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dl2_from_2_to_15_inst_13
(
	.q /* OUT */ (dl2_15),
	.d /* IN */ (dl1_15),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (32) - dr2[2-15] : slatchc
j_slatchc dr2_from_2_to_15_inst_0
(
	.q /* OUT */ (dr2_2),
	.d /* IN */ (dr1_2),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_1
(
	.q /* OUT */ (dr2_3),
	.d /* IN */ (dr1_3),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_2
(
	.q /* OUT */ (dr2_4),
	.d /* IN */ (dr1_4),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_3
(
	.q /* OUT */ (dr2_5),
	.d /* IN */ (dr1_5),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_4
(
	.q /* OUT */ (dr2_6),
	.d /* IN */ (dr1_6),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_5
(
	.q /* OUT */ (dr2_7),
	.d /* IN */ (dr1_7),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_6
(
	.q /* OUT */ (dr2_8),
	.d /* IN */ (dr1_8),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_7
(
	.q /* OUT */ (dr2_9),
	.d /* IN */ (dr1_9),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_8
(
	.q /* OUT */ (dr2_10),
	.d /* IN */ (dr1_10),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_9
(
	.q /* OUT */ (dr2_11),
	.d /* IN */ (dr1_11),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_10
(
	.q /* OUT */ (dr2_12),
	.d /* IN */ (dr1_12),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_11
(
	.q /* OUT */ (dr2_13),
	.d /* IN */ (dr1_13),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_12
(
	.q /* OUT */ (dr2_14),
	.d /* IN */ (dr1_14),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_slatchc dr2_from_2_to_15_inst_13
(
	.q /* OUT */ (dr2_15),
	.d /* IN */ (dr1_15),
	.clk /* IN */ (clk),
	.en /* IN */ (tint_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (39) - pi[0] : dncnt
j_dncnt pi_index_0_inst
(
	.q /* OUT */ (pi_0),
	.co /* OUT */ (pco_0),
	.d /* IN */ (gnd),
	.clk /* IN */ (clk),
	.ci /* IN */ (go),
	.ld /* IN */ (ts),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (40) - pi[1-6] : dncnt
j_dncnt pi_from_1_to_6_inst_0
(
	.q /* OUT */ (pi_1),
	.co /* OUT */ (pco_1),
	.d /* IN */ (gnd),
	.clk /* IN */ (clk),
	.ci /* IN */ (pco_0),
	.ld /* IN */ (ts),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt pi_from_1_to_6_inst_1
(
	.q /* OUT */ (pi_2),
	.co /* OUT */ (pco_2),
	.d /* IN */ (gnd),
	.clk /* IN */ (clk),
	.ci /* IN */ (pco_1),
	.ld /* IN */ (ts),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt pi_from_1_to_6_inst_2
(
	.q /* OUT */ (pi_3),
	.co /* OUT */ (pco_3),
	.d /* IN */ (gnd),
	.clk /* IN */ (clk),
	.ci /* IN */ (pco_2),
	.ld /* IN */ (ts),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt pi_from_1_to_6_inst_3
(
	.q /* OUT */ (pi_4),
	.co /* OUT */ (pco_4),
	.d /* IN */ (gnd),
	.clk /* IN */ (clk),
	.ci /* IN */ (pco_3),
	.ld /* IN */ (ts),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt pi_from_1_to_6_inst_4
(
	.q /* OUT */ (pi_5),
	.co /* OUT */ (pco_5),
	.d /* IN */ (gnd),
	.clk /* IN */ (clk),
	.ci /* IN */ (pco_4),
	.ld /* IN */ (ts),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt pi_from_1_to_6_inst_5
(
	.q /* OUT */ (pi_6),
	.co /* OUT */ (pco_6),
	.d /* IN */ (gnd),
	.clk /* IN */ (clk),
	.ci /* IN */ (pco_5),
	.ld /* IN */ (ts),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (41) - pi[7] : dncnt
j_dncnt pi_index_7_inst
(
	.q /* OUT */ (pi_7),
	.co /* OUT */ (pco_7),
	.d /* IN */ (vcc),
	.clk /* IN */ (clk),
	.ci /* IN */ (pco_6),
	.ld /* IN */ (ts),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (42) - pco[7] : dummy

// DAC.NET (43) - gnd : tie0
assign gnd = 1'b0;

// DAC.NET (44) - vcc : tie1
assign vcc = 1'b1;

// DAC.NET (45) - p[0-7] : nivm
assign p_0 = pi_0;
assign p_1 = pi_1;
assign p_2 = pi_2;
assign p_3 = pi_3;
assign p_4 = pi_4;
assign p_5 = pi_5;
assign p_6 = pi_6;
assign p_7 = pi_7;

// DAC.NET (47) - p : join
assign p[0] = p_0;
assign p[1] = p_1;
assign p[2] = p_2;
assign p[3] = p_3;
assign p[4] = p_4;
assign p[5] = p_5;
assign p[6] = p_6;
assign p[7] = p_7;

// DAC.NET (48) - pu : dummy

// DAC.NET (52) - go : nd2
assign go = ~(p_6 & p_7);

// DAC.NET (53) - stop : iv
assign stop = ~go;

// DAC.NET (60) - ldac[0] : pulse
j_pulse ldac_index_0_inst
(
	.a_0 /* IN */ (p_0),
	.a_1 /* IN */ (p_1),
	.a_2 /* IN */ (p_2),
	.a_3 /* IN */ (p_3),
	.a_4 /* IN */ (p_4),
	.a_5 /* IN */ (p_5),
	.a_6 /* IN */ (p_6),
	.a_7 /* IN */ (p_7),
	.b_0 /* IN */ (dl2_2),
	.b_1 /* IN */ (dl2_3),
	.b_2 /* IN */ (dl2_4),
	.b_3 /* IN */ (dl2_5),
	.b_4 /* IN */ (dl2_6),
	.b_5 /* IN */ (dl2_7),
	.b_6 /* IN */ (dl2_8),
	.stop /* IN */ (stop),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.pulse /* OUT */ (ldac_0),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (61) - ldac[1] : pulse
j_pulse ldac_index_1_inst
(
	.a_0 /* IN */ (p_0),
	.a_1 /* IN */ (p_1),
	.a_2 /* IN */ (p_2),
	.a_3 /* IN */ (p_3),
	.a_4 /* IN */ (p_4),
	.a_5 /* IN */ (p_5),
	.a_6 /* IN */ (p_6),
	.a_7 /* IN */ (p_7),
	.b_0 /* IN */ (dl2_9),
	.b_1 /* IN */ (dl2_10),
	.b_2 /* IN */ (dl2_11),
	.b_3 /* IN */ (dl2_12),
	.b_4 /* IN */ (dl2_13),
	.b_5 /* IN */ (dl2_14),
	.b_6 /* IN */ (dli_15),
	.stop /* IN */ (stop),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.pulse /* OUT */ (ldac_1),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (62) - rdac[0] : pulse
j_pulse rdac_index_0_inst
(
	.a_0 /* IN */ (p_0),
	.a_1 /* IN */ (p_1),
	.a_2 /* IN */ (p_2),
	.a_3 /* IN */ (p_3),
	.a_4 /* IN */ (p_4),
	.a_5 /* IN */ (p_5),
	.a_6 /* IN */ (p_6),
	.a_7 /* IN */ (p_7),
	.b_0 /* IN */ (dr2_2),
	.b_1 /* IN */ (dr2_3),
	.b_2 /* IN */ (dr2_4),
	.b_3 /* IN */ (dr2_5),
	.b_4 /* IN */ (dr2_6),
	.b_5 /* IN */ (dr2_7),
	.b_6 /* IN */ (dr2_8),
	.stop /* IN */ (stop),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.pulse /* OUT */ (rdac_0),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (63) - rdac[1] : pulse
j_pulse rdac_index_1_inst
(
	.a_0 /* IN */ (p_0),
	.a_1 /* IN */ (p_1),
	.a_2 /* IN */ (p_2),
	.a_3 /* IN */ (p_3),
	.a_4 /* IN */ (p_4),
	.a_5 /* IN */ (p_5),
	.a_6 /* IN */ (p_6),
	.a_7 /* IN */ (p_7),
	.b_0 /* IN */ (dr2_9),
	.b_1 /* IN */ (dr2_10),
	.b_2 /* IN */ (dr2_11),
	.b_3 /* IN */ (dr2_12),
	.b_4 /* IN */ (dr2_13),
	.b_5 /* IN */ (dr2_14),
	.b_6 /* IN */ (dri_15),
	.stop /* IN */ (stop),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.pulse /* OUT */ (rdac_1),
	.sys_clk(sys_clk) // Generated
);

// DAC.NET (65) - dli[15] : iv
assign dli_15 = ~dl2_15;

// DAC.NET (66) - dri[15] : iv
assign dri_15 = ~dr2_15;
endmodule
/* verilator lint_on LITENDIAN */
