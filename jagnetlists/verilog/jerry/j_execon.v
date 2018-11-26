/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_execon
(
	output dstdgate,
	output exe,
	output exeb_1,
	output immwri,
	output insexe,
	output insexei,
	output loimmld,
	output romold,
	output romoldb_0,
	output romoldb_1,
	output romoldb_2,
	output romoldb_3,
	output romoldb_4,
	output stop,
	input clk_0,
	input go,
	input immld,
	input insrdy,
	input memrw,
	input datwe,
	input mtx_wait,
	input precomp,
	input reset_n,
	input sbwait,
	input single_go,
	input single_step,
	input sys_clk // Generated
);
wire go_n;
wire immld_n;
wire precomp_n;
wire single_go_n;
wire single_step_n;
wire insrdyp;
wire insrdyp_n;
wire vinsset_n;
wire vinsclrt;
wire imm1;
wire imm2;
wire vinsclr_n;
wire vinst_0;
wire vins;
wire vinsi;
wire wait_n;
wire compdwait;
wire waitb_n;
wire exe_n;
wire exec;
wire exeb_0;
wire execi;
wire compdwaiti_n;
wire idlet_0;
wire idle;
wire idlet_1;
wire idlet_2;
wire idlet_3;
wire exect_0;
wire exect_1;
wire exect_2;
wire exect_3;
wire exect_4;
wire exect;
wire imm1t_0;
wire imm1t_1;
wire imm1t_2;
wire imm2t_0;
wire imm2t_1;
wire imm2i;
wire stopt_0;
wire stopt_1;
wire stopt_2;
wire stopt_3;
wire romot_0;
wire romot_1;
wire romot2t;
wire romot_2;
wire romot_3;
wire romot_4;
wire romot_5;
wire romot_6;
wire romoldt;
wire romoldub_0;
wire romoldub_1;
wire romoldub_2;
wire compdldt_n;
wire compdld_n;
wire dstdgt;

// Output buffers
wire exe_obuf;
wire insexei_obuf;
wire romold_obuf;
wire stop_obuf;


// Output buffers
assign exe = exe_obuf;
assign insexei = insexei_obuf;
assign romold = romold_obuf;
assign stop = stop_obuf;


// EXECON.NET (50) - go\ : iv
assign go_n = ~go;

// EXECON.NET (51) - immld\ : iv
assign immld_n = ~immld;

// EXECON.NET (52) - precomp\ : iv
assign precomp_n = ~precomp;

// EXECON.NET (53) - single_go\ : iv
assign single_go_n = ~single_go;

// EXECON.NET (54) - single_step\ : iv
assign single_step_n = ~single_step;

// EXECON.NET (58) - insrdy : fd2
fd2 insrdy_inst
(
	.q /* OUT */ (insrdyp),
	.qn /* OUT */ (insrdyp_n),
	.d /* IN */ (insrdy),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// EXECON.NET (70) - vinsset\ : nd2
assign vinsset_n = ~(romold_obuf & insrdy);

// EXECON.NET (71) - vinsclrt : oan1
assign vinsclrt = (imm1 | imm2) & insrdyp;

// EXECON.NET (72) - vinsclr\ : nr3
assign vinsclr_n = ~(exe_obuf | vinsclrt | go_n);

// EXECON.NET (73) - vinst0 : nd2
assign vinst_0 = ~(vins & vinsclr_n);

// EXECON.NET (74) - vinsi : nd2p
assign vinsi = ~(vinst_0 & vinsset_n);

// EXECON.NET (75) - vins : fd2qp
fd2q vins_inst
(
	.q /* OUT */ (vins),
	.d /* IN */ (vinsi),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// EXECON.NET (77) - wait\ : nr3p
assign wait_n = ~(sbwait | compdwait | mtx_wait);

// EXECON.NET (78) - waitb\ : nr3p
assign waitb_n = ~(sbwait | compdwait | mtx_wait);

// EXECON.NET (82) - exe\ : nd3p
assign exe_n = ~(vins & wait_n & exec);

// EXECON.NET (83) - exe : an3u
assign exe_obuf = vins & wait_n & exec;

// EXECON.NET (85) - exeb[0] : an3p
assign exeb_0 = vins & waitb_n & exec;

// EXECON.NET (87) - exeb[1] : an3p
assign exeb_1 = vins & waitb_n & exec;

// EXECON.NET (92) - insexei : an3p
assign insexei_obuf = vinsi & execi & compdwaiti_n;

// EXECON.NET (93) - insexe : fd2qp
fd2q insexe_inst
(
	.q /* OUT */ (insexe),
	.d /* IN */ (insexei_obuf),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// EXECON.NET (102) - idlet0 : nd2
assign idlet_0 = ~(idle & go_n);

// EXECON.NET (103) - idlet1 : nd2
assign idlet_1 = ~(exec & go_n);

// EXECON.NET (104) - idlet2 : nd2
assign idlet_2 = ~(stop_obuf & go_n);

// EXECON.NET (105) - idlet3 : nd3
assign idlet_3 = ~(idlet_0 & idlet_1 & idlet_2);

// EXECON.NET (106) - idle : fd4q
fd4q idle_inst
(
	.q /* OUT */ (idle),
	.d /* IN */ (idlet_3),
	.cp /* IN */ (clk_0),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// EXECON.NET (108) - exect0 : nd2
assign exect_0 = ~(idle & go);

// EXECON.NET (109) - exect1 : nd3
assign exect_1 = ~(exec & go & exe_n);

// EXECON.NET (110) - exect2 : nd5
assign exect_2 = ~(exec & go & exe_obuf & single_step_n & immld_n);

// EXECON.NET (112) - exect3 : nd3
assign exect_3 = ~(imm2 & insrdyp & single_step_n);

// EXECON.NET (113) - exect4 : nd3
assign exect_4 = ~(stop_obuf & single_go & go);

// EXECON.NET (114) - exect5 : nd5
assign execi = ~(exect_0 & exect_1 & exect_2 & exect_3 & exect_4);

// EXECON.NET (115) - exect : fd2q
fd2q exect_inst
(
	.q /* OUT */ (exect),
	.d /* IN */ (execi),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// EXECON.NET (116) - exec : nivm
assign exec = exect;

// EXECON.NET (118) - imm1t0 : nd4
assign imm1t_0 = ~(exec & go & exe_obuf & immld);

// EXECON.NET (119) - imm1t1 : nd2
assign imm1t_1 = ~(imm1 & insrdyp_n);

// EXECON.NET (120) - imm1t2 : nd2
assign imm1t_2 = ~(imm1t_0 & imm1t_1);

// EXECON.NET (121) - imm1 : fd2q
fd2q imm1_inst
(
	.q /* OUT */ (imm1),
	.d /* IN */ (imm1t_2),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// EXECON.NET (123) - imm2t0 : nd2
assign imm2t_0 = ~(imm1 & insrdyp);

// EXECON.NET (124) - imm2t1 : nd2
assign imm2t_1 = ~(imm2 & insrdyp_n);

// EXECON.NET (125) - imm2t2 : nd2
assign imm2i = ~(imm2t_0 & imm2t_1);

// EXECON.NET (126) - imm2 : fd2q
fd2q imm2_inst
(
	.q /* OUT */ (imm2),
	.d /* IN */ (imm2i),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// EXECON.NET (128) - stopt0 : nd5
assign stopt_0 = ~(exec & go & exe_obuf & immld_n & single_step);

// EXECON.NET (130) - stopt1 : nd3
assign stopt_1 = ~(imm2 & insrdyp & single_step);

// EXECON.NET (131) - stopt2 : nd3
assign stopt_2 = ~(stop_obuf & single_go_n & go);

// EXECON.NET (132) - stopt3 : nd3
assign stopt_3 = ~(stopt_0 & stopt_1 & stopt_2);

// EXECON.NET (133) - stop : fd2q
fd2q stop_inst
(
	.q /* OUT */ (stop_obuf),
	.d /* IN */ (stopt_3),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// EXECON.NET (150) - romot0 : nd2p
assign romot_0 = ~(imm1 & insrdy);

// EXECON.NET (151) - romot1 : nd3p
assign romot_1 = ~(imm2 & single_step_n & insrdy);

// EXECON.NET (152) - romot2t : nd3
assign romot2t = ~(memrw & datwe & precomp);

// EXECON.NET (153) - romot2 : nd5p
assign romot_2 = ~(exec & exeb_0 & single_step_n & insrdy & romot2t);

// EXECON.NET (155) - romot3 : nd3
assign romot_3 = ~(exec & exe_n & compdwait);

// EXECON.NET (156) - romot4 : nd5
assign romot_4 = ~(exec & exeb_0 & immld & single_step & insrdy);

// EXECON.NET (158) - romot5 : nd4
assign romot_5 = ~(exec & exe_n & wait_n & insrdy);

// EXECON.NET (159) - romot6 : nd3
assign romot_6 = ~(stop_obuf & single_go & insrdy);

// EXECON.NET (160) - romoldt : an4p
assign romoldt = romot_3 & romot_4 & romot_5 & romot_6;

// EXECON.NET (161) - romold : nd4p
assign romold_obuf = ~(romot_0 & romot_1 & romot_2 & romoldt);

// EXECON.NET (162) - romoldub[0-2] : nd4p
assign romoldub_0 = ~(romot_0 & romot_1 & romot_2 & romoldt);
assign romoldub_1 = ~(romot_0 & romot_1 & romot_2 & romoldt);
assign romoldub_2 = ~(romot_0 & romot_1 & romot_2 & romoldt);

// EXECON.NET (163) - romoldb[0] : nivu
assign romoldb_0 = romoldub_0;

// EXECON.NET (164) - romoldb[1-2] : nivm
assign romoldb_1 = romoldub_1;
assign romoldb_2 = romoldub_1;

// EXECON.NET (165) - romoldb[3] : nivh
assign romoldb_3 = romoldub_2;

// EXECON.NET (166) - romoldb[4] : nivm
assign romoldb_4 = romoldub_2;

// EXECON.NET (171) - loimmld : an2h
assign loimmld = insrdyp & imm1;

// EXECON.NET (183) - compdldt : nd4
assign compdldt_n = ~(exe_obuf & memrw & datwe & precomp);

// EXECON.NET (184) - compdld : fd1q
fd1q compdld_inst
(
	.q /* OUT */ (compdld_n),
	.d /* IN */ (compdldt_n),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// EXECON.NET (185) - dstdgt0 : nd4
assign dstdgt = ~(exe_obuf & memrw & datwe & precomp_n);

// EXECON.NET (186) - dstgate : nd2
assign dstdgate = ~(dstdgt & compdld_n);

// EXECON.NET (188) - compdwait : iv
assign compdwait = ~compdld_n;

// EXECON.NET (189) - compdwaiti\ : join
assign compdwaiti_n = compdldt_n;

// EXECON.NET (194) - immwri : an2
assign immwri = insrdy & imm2i;
endmodule
/* verilator lint_on LITENDIAN */
