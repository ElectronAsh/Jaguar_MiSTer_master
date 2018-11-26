/* verilator lint_off LITENDIAN */
`include "defs.v"

module dcontrol
(
	output daddasel_0,
	output daddasel_1,
	output daddasel_2,
	output daddbsel_0,
	output daddbsel_1,
	output daddbsel_2,
	output daddmode_0,
	output daddmode_1,
	output daddmode_2,
	output data_sel_0,
	output data_sel_1,
	output daddq_sel,
	output gourd,
	output gourz,
	output patdadd,
	output patfadd,
	output srcz1add,
	output srcz2add,
	input atick_0,
	input atick_1,
	input clk_0,
	input cmdld,
	input dwrite,
	input dzwrite,
	input dzwrite1,
	input [0:31] gpu_din,
	input srcdreadd,
	input srcshade,
	input sys_clk // Generated
);
wire topben;
wire topnen;
wire patdsel;
wire adddsel;
wire gourd_n;
wire gourz_n;
wire topben_n;
wire atickboth;
wire shadeadd_n;
wire shadeadd;
wire dasel0t_0;
wire dasel0t_1;
wire dbsel0t_0;
wire dbsel0t_1;
wire dbsel2t_0;
wire dbsel2t_1;
wire dm0t_0;
wire dm0t_1;
wire dm0t_2;
wire dm0t_3;
wire dm0t_4;
wire dm1t_0;
wire dm1t_1;
wire dm1t_2;
wire srcshadd;
wire dzwrite1d;
wire dsel0t;

// Output buffers
wire gourd_obuf;
wire gourz_obuf;
wire patdadd_obuf;
wire patfadd_obuf;
wire srcz1add_obuf;
wire srcz2add_obuf;


// Output buffers
assign gourd = gourd_obuf;
assign gourz = gourz_obuf;
assign patdadd = patdadd_obuf;
assign patfadd = patfadd_obuf;
assign srcz1add = srcz1add_obuf;
assign srcz2add = srcz2add_obuf;


// DCONTROL.NET (40) - gourd : fdsyncm
fdsyncm gourd_inst
(
	.q /* OUT */ (gourd_obuf),
	.d /* IN */ (gpu_din[12]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// DCONTROL.NET (41) - gourz : fdsyncm
fdsyncm gourz_inst
(
	.q /* OUT */ (gourz_obuf),
	.d /* IN */ (gpu_din[13]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// DCONTROL.NET (42) - topben : fdsync
fdsync topben_inst
(
	.q /* OUT */ (topben),
	.d /* IN */ (gpu_din[14]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// DCONTROL.NET (43) - topnen : fdsync
fdsync topnen_inst
(
	.q /* OUT */ (topnen),
	.d /* IN */ (gpu_din[15]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// DCONTROL.NET (44) - patdsel : fdsync
fdsync patdsel_inst
(
	.q /* OUT */ (patdsel),
	.d /* IN */ (gpu_din[16]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// DCONTROL.NET (45) - adddsel : fdsync
fdsync adddsel_inst
(
	.q /* OUT */ (adddsel),
	.d /* IN */ (gpu_din[17]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// DCONTROL.NET (47) - gourd\ : iv
assign gourd_n = ~gourd_obuf;

// DCONTROL.NET (48) - gourz\ : iv
assign gourz_n = ~gourz_obuf;

// DCONTROL.NET (49) - topben\ : iv
assign topben_n = ~topben;

// DCONTROL.NET (53) - atickboth : or2p
assign atickboth = atick_0 | atick_1;

// DCONTROL.NET (70) - shadeadd\ : nd2p
assign shadeadd_n = ~(dwrite & srcshade);

// DCONTROL.NET (71) - shadeadd : ivs
assign shadeadd = ~shadeadd_n;

// DCONTROL.NET (72) - dasel0t0 : nd3
assign dasel0t_0 = ~(dwrite & gourd_obuf & atick_1);

// DCONTROL.NET (73) - dasel0t1 : nd3
assign dasel0t_1 = ~(dzwrite & gourz_obuf & atick_0);

// DCONTROL.NET (74) - daddasel[0] : nd2p
assign daddasel_0 = ~(dasel0t_0 & dasel0t_1);

// DCONTROL.NET (75) - daddasel[1] : an3p
assign daddasel_1 = dzwrite & gourz_obuf & atickboth;

// DCONTROL.NET (76) - daddasel[2] : or3p
assign daddasel_2 = gourd_obuf | gourz_obuf | shadeadd;

// DCONTROL.NET (94) - dbsel0t0 : nd3
assign dbsel0t_0 = ~(dwrite & gourd_obuf & atick_1);

// DCONTROL.NET (95) - dbsel0t1 : nd3
assign dbsel0t_1 = ~(dzwrite & gourz_obuf & atick_1);

// DCONTROL.NET (96) - daddbsel[0] : nd3p
assign daddbsel_0 = ~(dbsel0t_0 & dbsel0t_1 & shadeadd_n);

// DCONTROL.NET (97) - daddbsel[1] : an3p
assign daddbsel_1 = dzwrite & gourz_obuf & atickboth;

// DCONTROL.NET (98) - dbsel2t0 : nd3
assign dbsel2t_0 = ~(dwrite & gourd_obuf & atickboth);

// DCONTROL.NET (99) - dbsel2t1 : nd3
assign dbsel2t_1 = ~(dzwrite & gourz_obuf & atickboth);

// DCONTROL.NET (100) - daddbsel[2] : nd3p
assign daddbsel_2 = ~(dbsel2t_0 & dbsel2t_1 & shadeadd_n);

// DCONTROL.NET (133) - dm0t0 : nd3
assign dm0t_0 = ~(dzwrite & gourz_obuf & atick_1);

// DCONTROL.NET (134) - dm0t1 : en
assign dm0t_1 = ~(topben ^ topnen);

// DCONTROL.NET (135) - dm0t2 : nd4
assign dm0t_2 = ~(dwrite & gourd_obuf & atick_1 & dm0t_1);

// DCONTROL.NET (136) - dm0t3 : nd3
assign dm0t_3 = ~(gourd_n & gourz_n & dm0t_1);

// DCONTROL.NET (137) - dm0t4 : nd2
assign dm0t_4 = ~(shadeadd & dm0t_1);

// DCONTROL.NET (138) - daddmode[0] : nd4p
assign daddmode_0 = ~(dm0t_0 & dm0t_2 & dm0t_3 & dm0t_4);

// DCONTROL.NET (140) - dm1t0 : nd4
assign dm1t_0 = ~(dwrite & gourd_obuf & atick_1 & topben_n);

// DCONTROL.NET (141) - dm1t1 : nd3
assign dm1t_1 = ~(gourd_n & gourz_n & topben_n);

// DCONTROL.NET (142) - dm1t2 : nd2
assign dm1t_2 = ~(shadeadd & topben_n);

// DCONTROL.NET (143) - daddmode[1] : nd3h
assign daddmode_1 = ~(dm1t_0 & dm1t_1 & dm1t_2);

// DCONTROL.NET (145) - daddmode[2] : aor1p
assign daddmode_2 = (gourd_n & gourz_n) | shadeadd;

// DCONTROL.NET (160) - patfadd : an3
assign patfadd_obuf = dwrite & gourd_obuf & atick_0;

// DCONTROL.NET (161) - patdadd : an3
assign patdadd_obuf = dwrite & gourd_obuf & atick_1;

// DCONTROL.NET (162) - srcz1add : an3
assign srcz1add_obuf = dzwrite & gourz_obuf & atick_1;

// DCONTROL.NET (163) - srcz2add : an3
assign srcz2add_obuf = dzwrite & gourz_obuf & atick_0;

// DCONTROL.NET (164) - srcshadd : an2
assign srcshadd = srcdreadd & srcshade;

// DCONTROL.NET (165) - daddq_sel : or5
assign daddq_sel = patfadd_obuf | patdadd_obuf | srcz1add_obuf | srcz2add_obuf | srcshadd;

// DCONTROL.NET (185) - dzwrite1d : fd1q
fd1q dzwrite1d_inst
(
	.q /* OUT */ (dzwrite1d),
	.d /* IN */ (dzwrite1),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// DCONTROL.NET (187) - dsel0t : nr2
assign dsel0t = ~(patdsel | adddsel);

// DCONTROL.NET (188) - data_sel[0] : or2
assign data_sel_0 = dzwrite1d | dsel0t;

// DCONTROL.NET (190) - data_sel[1] : or2
assign data_sel_1 = dzwrite1d | adddsel;
endmodule
/* verilator lint_on LITENDIAN */
