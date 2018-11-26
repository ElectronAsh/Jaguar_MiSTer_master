/* verilator lint_off LITENDIAN */
`include "defs.v"

module inner
(
	output gpu_dout_2_out,
	output gpu_dout_2_oe,
	input gpu_dout_2_in,
	output gpu_dout_3_out,
	output gpu_dout_3_oe,
	input gpu_dout_3_in,
	output gpu_dout_4_out,
	output gpu_dout_4_oe,
	input gpu_dout_4_in,
	output gpu_dout_5_out,
	output gpu_dout_5_oe,
	input gpu_dout_5_in,
	output gpu_dout_6_out,
	output gpu_dout_6_oe,
	input gpu_dout_6_in,
	output gpu_dout_7_out,
	output gpu_dout_7_oe,
	input gpu_dout_7_in,
	output gpu_dout_8_out,
	output gpu_dout_8_oe,
	input gpu_dout_8_in,
	output gpu_dout_9_out,
	output gpu_dout_9_oe,
	input gpu_dout_9_in,
	output gpu_dout_10_out,
	output gpu_dout_10_oe,
	input gpu_dout_10_in,
	output gpu_dout_16_out,
	output gpu_dout_16_oe,
	input gpu_dout_16_in,
	output gpu_dout_17_out,
	output gpu_dout_17_oe,
	input gpu_dout_17_in,
	output gpu_dout_18_out,
	output gpu_dout_18_oe,
	input gpu_dout_18_in,
	output gpu_dout_19_out,
	output gpu_dout_19_oe,
	input gpu_dout_19_in,
	output gpu_dout_20_out,
	output gpu_dout_20_oe,
	input gpu_dout_20_in,
	output gpu_dout_21_out,
	output gpu_dout_21_oe,
	input gpu_dout_21_in,
	output gpu_dout_22_out,
	output gpu_dout_22_oe,
	input gpu_dout_22_in,
	output gpu_dout_23_out,
	output gpu_dout_23_oe,
	input gpu_dout_23_in,
	output gpu_dout_24_out,
	output gpu_dout_24_oe,
	input gpu_dout_24_in,
	output gpu_dout_25_out,
	output gpu_dout_25_oe,
	input gpu_dout_25_in,
	output gpu_dout_26_out,
	output gpu_dout_26_oe,
	input gpu_dout_26_in,
	output gpu_dout_27_out,
	output gpu_dout_27_oe,
	input gpu_dout_27_in,
	output gpu_dout_28_out,
	output gpu_dout_28_oe,
	input gpu_dout_28_in,
	output gpu_dout_29_out,
	output gpu_dout_29_oe,
	input gpu_dout_29_in,
	output gpu_dout_30_out,
	output gpu_dout_30_oe,
	input gpu_dout_30_in,
	output gpu_dout_31_out,
	output gpu_dout_31_oe,
	input gpu_dout_31_in,
	output apipe,
	output atick_0,
	output atick_1,
	output aticki_0,
	output data_ena,
	output dest_cycle_1,
	output dpipe_0,
	output dpipe_1,
	output dsta_addi,
	output dstdread,
	output dstzread,
	output dwrite,
	output dwrite1,
	output dzwrite,
	output dzwrite1,
	output gena2,
	output icount_0,
	output icount_1,
	output icount_2,
	output indone,
	output inner0,
	output readreq,
	output srca_addi,
	output srcdread,
	output srcdreadd,
	output srcen,
	output srczread,
	output sread_1,
	output sreadx_1,
	output step,
	output writereq,
	output zaddr,
	output zpipe_0,
	output zpipe_1,
	input a1_outside,
	input blitack,
	input clk,
	input cmdld,
	input countld,
	input dsta2,
	input [0:15] dstxp,
	input gourd,
	input gourz,
	input [0:31] gpu_din,
	input inhiben,
	input instart,
	input memidle,
	input memready,
	input nowrite,
	input phrase_mode,
	input pixsize_0,
	input pixsize_1,
	input pixsize_2,
	input read_ack,
	input reset_n,
	input srcshade,
	input statrd,
	input wactive,
	input sys_clk // Generated
);
wire idle;
wire sreadx;
wire szreadx;
wire sread;
wire szread;
wire dread;
wire dzread;
wire gourd_n;
wire gourz_n;
wire nowrite_n;
wire read_ack_n;
wire instart_n;
wire srcenz;
wire srcenx;
wire dsten;
wire dstenzt;
wire dstenz;
wire dstwrz;
wire diso_a1;
wire stupt;
wire stupl;
wire stupi;
wire startup;
wire dnrt_0;
wire dzread_1;
wire dstzack_n;
wire dnrt_1;
wire dread_1;
wire dstenz_n;
wire dstdack_n;
wire dnrt_2;
wire szread_1;
wire dsten_n;
wire srczack_n;
wire dnrt_3;
wire srcenz_n;
wire srcdack_n;
wire dnrt_4;
wire srcen_n;
wire srcdxack_n;
wire dnrt_5;
wire dnrt_6;
wire dnreadyd;
wire dnready_n;
wire mready_n;
wire mready;
wire istept_0;
wire istept_1;
wire istep_n;
wire stept_n;
wire aready;
wire idle_n;
wire stepp1t_n;
wire step_p1;
wire dstwrz_n;
wire inner0_n;
wire srcenx_n;
wire step_n;
wire idlet_0;
wire idlet_1;
wire idlet_2;
wire idlei;
wire idlet;
wire sreadxt_0;
wire sreadxt_1;
wire sreadxi;
wire szreadxt_0;
wire szreadxt_1;
wire szreadxi;
wire sreadt_0;
wire sreadt_1;
wire sreadt_2;
wire sreadt_3;
wire sreadt_4;
wire sreadt_5;
wire sreadi;
wire szreadt_0;
wire szreadt_1;
wire szreadi;
wire dreadt_0;
wire dreadt_1;
wire dreadt_2;
wire dreadt_3;
wire dreadt_4;
wire dreadt_5;
wire dreadt_6;
wire dreadi;
wire dzreadt_0;
wire dzreadt_1;
wire dzreadt_2;
wire dzreadt_3;
wire dzreadt_4;
wire dzreadt_5;
wire dzreadt_6;
wire dzreadt_7;
wire dzreadi;
wire dwritet_0;
wire dwritet_1;
wire dwritet_2;
wire dwritet_3;
wire dwritet_4;
wire dwritet_5;
wire dwritet_6;
wire dwritet_7;
wire dwritet_8;
wire dwritei;
wire dzwritet_0;
wire dzwritet_1;
wire dzwritei;
wire atick0t_0;
wire atick_n_0;
wire atick_n_1;
wire indone_n;
wire atick0t_1;
wire atickt_1;
wire dpipe0t;
wire dpipe1t0;
wire dpipe1t1;
wire zpipe0t;
wire zpipe1t0;
wire zpipe1t1;
wire indot_0;
wire indot_1;
wire indone_tmp;
wire icntena;
wire oldoutld;
wire srca_add;
wire oldoutside;
wire oldoutsidel;
wire outside;
wire clip_n;
wire rreqt;
wire wreqt;
wire sraat_0;
wire sraat_1;
wire dstaat;
wire gensrc;
wire gendst;
wire dsta2_n;
wire gena2t_0;
wire gena2t_1;
wire gena2i;
wire srczxack_n;
wire srcdxpend;
wire srczxpend;
wire srcdpend;
wire srczpend;
wire dstdpend;
wire srcdpset_n;
wire srcdpt_1;
wire srcdpt_2;
wire srcdxpset_n;
wire srcdxpt_1;
wire srcdxpt_2;
wire sdpend;
wire srcdreadt;
wire srczpset_n;
wire srczpt_1;
wire srczpt_2;
wire srczxpset_n;
wire srczxpt_1;
wire srczxpt_2;
wire szpend;
wire dstdpset_n;
wire dstdpt_0;
wire dstdpt_1;
wire dstzpset_n;
wire dstzpt_0;
wire dstzpend;
wire dstzpt_1;
wire denat_0;
wire denat_1;
wire denat_2;
wire denat_3;

// Output buffers
wire atick_0_obuf;
wire atick_1_obuf;
wire aticki_0_obuf;
wire dwrite_obuf;
wire dwrite1_obuf;
wire dzwrite_obuf;
wire dzwrite1_obuf;
wire inner0_obuf;
wire readreq_obuf;
wire srca_addi_obuf;
wire srcdreadd_obuf;
wire srcen_obuf;
wire sread_1_obuf;
wire sreadx_1_obuf;
wire step_obuf;
wire writereq_obuf;


// Output buffers
assign atick_0 = atick_0_obuf;
assign atick_1 = atick_1_obuf;
assign aticki_0 = aticki_0_obuf;
assign dwrite = dwrite_obuf;
assign dwrite1 = dwrite1_obuf;
assign dzwrite = dzwrite_obuf;
assign dzwrite1 = dzwrite1_obuf;
assign inner0 = inner0_obuf;
assign readreq = readreq_obuf;
assign srca_addi = srca_addi_obuf;
assign srcdreadd = srcdreadd_obuf;
assign srcen = srcen_obuf;
assign sread_1 = sread_1_obuf;
assign sreadx_1 = sreadx_1_obuf;
assign step = step_obuf;
assign writereq = writereq_obuf;


// INNER.NET (83) - stat[2] : ts
assign gpu_dout_2_out = idle;
assign gpu_dout_2_oe = statrd;

// INNER.NET (84) - stat[3] : ts
assign gpu_dout_3_out = sreadx;
assign gpu_dout_3_oe = statrd;

// INNER.NET (85) - stat[4] : ts
assign gpu_dout_4_out = szreadx;
assign gpu_dout_4_oe = statrd;

// INNER.NET (86) - stat[5] : ts
assign gpu_dout_5_out = sread;
assign gpu_dout_5_oe = statrd;

// INNER.NET (87) - stat[6] : ts
assign gpu_dout_6_out = szread;
assign gpu_dout_6_oe = statrd;

// INNER.NET (88) - stat[7] : ts
assign gpu_dout_7_out = dread;
assign gpu_dout_7_oe = statrd;

// INNER.NET (89) - stat[8] : ts
assign gpu_dout_8_out = dzread;
assign gpu_dout_8_oe = statrd;

// INNER.NET (90) - stat[9] : ts
assign gpu_dout_9_out = dwrite_obuf;
assign gpu_dout_9_oe = statrd;

// INNER.NET (91) - stat[10] : ts
assign gpu_dout_10_out = dzwrite_obuf;
assign gpu_dout_10_oe = statrd;

// INNER.NET (93) - gourd\ : iv
assign gourd_n = ~gourd;

// INNER.NET (94) - gourz\ : iv
assign gourz_n = ~gourz;

// INNER.NET (95) - nowrite\ : iv
assign nowrite_n = ~nowrite;

// INNER.NET (96) - read_ack\ : iv
assign read_ack_n = ~read_ack;

// INNER.NET (97) - instart\ : iv
assign instart_n = ~instart;

// INNER.NET (101) - srcen : fdsync
fdsync srcen_inst
(
	.q /* OUT */ (srcen_obuf),
	.d /* IN */ (gpu_din[0]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (102) - srcenz : fdsync
fdsync srcenz_inst
(
	.q /* OUT */ (srcenz),
	.d /* IN */ (gpu_din[1]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (103) - srcenx : fdsync
fdsync srcenx_inst
(
	.q /* OUT */ (srcenx),
	.d /* IN */ (gpu_din[2]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (104) - dsten : fdsync
fdsync dsten_inst
(
	.q /* OUT */ (dsten),
	.d /* IN */ (gpu_din[3]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (105) - dstenzt : fdsync
fdsync dstenzt_inst
(
	.q /* OUT */ (dstenzt),
	.d /* IN */ (gpu_din[4]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (106) - dstenz : nivm
assign dstenz = dstenzt;

// INNER.NET (107) - dstwrz : fdsync
fdsync dstwrz_inst
(
	.q /* OUT */ (dstwrz),
	.d /* IN */ (gpu_din[5]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (108) - diso_a1 : fdsync
fdsync diso_a1_inst
(
	.q /* OUT */ (diso_a1),
	.d /* IN */ (gpu_din[6]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (114) - stupt : nd2
assign stupt = ~(idle & stupl);

// INNER.NET (115) - stupi : nd2
assign stupi = ~(instart_n & stupt);

// INNER.NET (116) - stupl : fd2q
fd2q stupl_inst
(
	.q /* OUT */ (stupl),
	.d /* IN */ (stupi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (117) - startup : or2
assign startup = instart | stupl;

// INNER.NET (158) - dnrt0 : nd2
assign dnrt_0 = ~(dzread_1 & dstzack_n);

// INNER.NET (159) - dnrt1 : nd3
assign dnrt_1 = ~(dread_1 & dstenz_n & dstdack_n);

// INNER.NET (160) - dnrt2 : nd4
assign dnrt_2 = ~(szread_1 & dsten_n & dstenz_n & srczack_n);

// INNER.NET (162) - dnrt3 : nd5
assign dnrt_3 = ~(sread_1_obuf & srcenz_n & dsten_n & dstenz_n & srcdack_n);

// INNER.NET (164) - dnrt4 : nd6
assign dnrt_4 = ~(sreadx_1_obuf & srcenz_n & srcen_n & dsten_n & dstenz_n & srcdxack_n);

// INNER.NET (166) - dnrt5 : nd5
assign dnrt_5 = ~(dnrt_0 & dnrt_1 & dnrt_2 & dnrt_3 & dnrt_4);

// INNER.NET (167) - dnrt6 : fd1q
fd1q dnrt6_inst
(
	.q /* OUT */ (dnrt_6),
	.d /* IN */ (dnrt_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (168) - dnreadyd : aor1
assign dnreadyd = (srcshade & gourz) | inhiben;

// INNER.NET (169) - dnready : mxi2
mxi2 dnready_inst
(
	.z /* OUT */ (dnready_n),
	.a0 /* IN */ (dnrt_5),
	.a1 /* IN */ (dnrt_6),
	.s /* IN */ (dnreadyd)
);

// INNER.NET (171) - mready\ : nr2
assign mready_n = ~(memready | memidle);

// INNER.NET (172) - mready : iv
assign mready = ~mready_n;

// INNER.NET (173) - istept0 : or2
assign istept_0 = dwrite1_obuf | dzwrite1_obuf;

// INNER.NET (174) - istept1 : nd2
assign istept_1 = ~(istept_0 & mready_n);

// INNER.NET (175) - istep : nd3
assign istep_n = ~(idle & startup & istept_1);

// INNER.NET (176) - stept : nd4
assign stept_n = ~(aready & mready & dnready_n & idle_n);

// INNER.NET (177) - step : nd2u
assign step_obuf = ~(stept_n & istep_n);

// INNER.NET (183) - stepp1t : nd3
assign stepp1t_n = ~(aready & mready & dnready_n);

// INNER.NET (184) - step_p1 : nd2m
assign step_p1 = ~(stepp1t_n & istep_n);

// INNER.NET (192) - dsten\ : ivm
assign dsten_n = ~dsten;

// INNER.NET (193) - dstenz\ : ivm
assign dstenz_n = ~dstenz;

// INNER.NET (194) - dstwrz\ : iv
assign dstwrz_n = ~dstwrz;

// INNER.NET (195) - inner0\ : ivm
assign inner0_n = ~inner0_obuf;

// INNER.NET (196) - srcen\ : ivm
assign srcen_n = ~srcen_obuf;

// INNER.NET (197) - srcenx\ : iv
assign srcenx_n = ~srcenx;

// INNER.NET (198) - srcenz\ : ivm
assign srcenz_n = ~srcenz;

// INNER.NET (199) - step\ : ivm
assign step_n = ~step_obuf;

// INNER.NET (203) - idlet0 : nd2
assign idlet_0 = ~(idle & step_n);

// INNER.NET (204) - idlet1 : nd3
assign idlet_1 = ~(dzwrite_obuf & step_obuf & inner0_obuf);

// INNER.NET (205) - idlet2 : nd4
assign idlet_2 = ~(dwrite_obuf & step_obuf & dstwrz_n & inner0_obuf);

// INNER.NET (206) - idlet3 : nd3
assign idlei = ~(idlet_0 & idlet_1 & idlet_2);

// INNER.NET (207) - idlet : fd4q
fd4q idlet_inst
(
	.q /* OUT */ (idlet),
	.d /* IN */ (idlei),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (208) - idle\ : iv
assign idle_n = ~idlet;

// INNER.NET (209) - idle : ivm
assign idle = ~idle_n;

// INNER.NET (213) - sreadxt0 : nd3
assign sreadxt_0 = ~(idle & step_obuf & srcenx);

// INNER.NET (214) - sreadxt1 : nd2
assign sreadxt_1 = ~(sreadx & step_n);

// INNER.NET (215) - sreadxt2 : nd2
assign sreadxi = ~(sreadxt_0 & sreadxt_1);

// INNER.NET (216) - sreadx : fd2qm
fd2q sreadx_inst
(
	.q /* OUT */ (sreadx),
	.d /* IN */ (sreadxi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (220) - szreadxt0 : nd3
assign szreadxt_0 = ~(sreadx & step_obuf & srcenz);

// INNER.NET (221) - szreadxt1 : nd2
assign szreadxt_1 = ~(szreadx & step_n);

// INNER.NET (222) - szreadxt2 : nd2
assign szreadxi = ~(szreadxt_0 & szreadxt_1);

// INNER.NET (223) - szreadx : fd2q
fd2q szreadx_inst
(
	.q /* OUT */ (szreadx),
	.d /* IN */ (szreadxi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (227) - sreadt0 : nd2
assign sreadt_0 = ~(szreadx & step_obuf);

// INNER.NET (228) - sreadt1 : nd4
assign sreadt_1 = ~(sreadx & step_obuf & srcenz_n & srcen_obuf);

// INNER.NET (229) - sreadt2 : nd4
assign sreadt_2 = ~(idle & step_obuf & srcenx_n & srcen_obuf);

// INNER.NET (230) - sreadt3 : nd4
assign sreadt_3 = ~(dzwrite_obuf & step_obuf & inner0_n & srcen_obuf);

// INNER.NET (231) - sreadt4 : nd5
assign sreadt_4 = ~(dwrite_obuf & step_obuf & dstwrz_n & inner0_n & srcen_obuf);

// INNER.NET (233) - sreadt5 : nd2
assign sreadt_5 = ~(sread & step_n);

// INNER.NET (234) - sreadt6 : nd6
assign sreadi = ~(sreadt_0 & sreadt_1 & sreadt_2 & sreadt_3 & sreadt_4 & sreadt_5);

// INNER.NET (235) - sread : fd2qm
fd2q sread_inst
(
	.q /* OUT */ (sread),
	.d /* IN */ (sreadi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (239) - szreadt0 : nd3
assign szreadt_0 = ~(sread & step_obuf & srcenz);

// INNER.NET (240) - szreadt1 : nd2
assign szreadt_1 = ~(szread & step_n);

// INNER.NET (241) - szreadt2 : nd2
assign szreadi = ~(szreadt_0 & szreadt_1);

// INNER.NET (242) - szread : fd2qm
fd2q szread_inst
(
	.q /* OUT */ (szread),
	.d /* IN */ (szreadi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (246) - dreadt0 : nd3
assign dreadt_0 = ~(szread & step_obuf & dsten);

// INNER.NET (247) - dreadt1 : nd4
assign dreadt_1 = ~(sread & step_obuf & srcenz_n & dsten);

// INNER.NET (248) - dreadt2 : nd5
assign dreadt_2 = ~(sreadx & step_obuf & srcenz_n & srcen_n & dsten);

// INNER.NET (250) - dreadt3 : nd5
assign dreadt_3 = ~(idle & step_obuf & srcenx_n & srcen_n & dsten);

// INNER.NET (252) - dreadt4 : nd5
assign dreadt_4 = ~(dzwrite_obuf & step_obuf & inner0_n & srcen_n & dsten);

// INNER.NET (254) - dreadt5 : nd6
assign dreadt_5 = ~(dwrite_obuf & step_obuf & dstwrz_n & inner0_n & srcen_n & dsten);

// INNER.NET (256) - dreadt6 : nd2
assign dreadt_6 = ~(dread & step_n);

// INNER.NET (257) - dreadt7 : nd7
assign dreadi = ~(dreadt_0 & dreadt_1 & dreadt_2 & dreadt_3 & dreadt_4 & dreadt_5 & dreadt_6);

// INNER.NET (258) - dread : fd2q
fd2q dread_inst
(
	.q /* OUT */ (dread),
	.d /* IN */ (dreadi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (262) - dzreadt0 : nd3
assign dzreadt_0 = ~(dread & step_obuf & dstenz);

// INNER.NET (263) - dzreadt1 : nd4
assign dzreadt_1 = ~(szread & step_obuf & dsten_n & dstenz);

// INNER.NET (264) - dzreadt2 : nd5
assign dzreadt_2 = ~(sread & step_obuf & srcenz_n & dsten_n & dstenz);

// INNER.NET (266) - dzreadt3 : nd6
assign dzreadt_3 = ~(sreadx & step_obuf & srcenz_n & srcen_n & dsten_n & dstenz);

// INNER.NET (268) - dzreadt4 : nd6
assign dzreadt_4 = ~(idle & step_obuf & srcenx_n & srcen_n & dsten_n & dstenz);

// INNER.NET (270) - dzreadt5 : nd6
assign dzreadt_5 = ~(dzwrite_obuf & step_obuf & inner0_n & srcen_n & dsten_n & dstenz);

// INNER.NET (272) - dzreadt6 : nd7
assign dzreadt_6 = ~(dwrite_obuf & step_obuf & dstwrz_n & inner0_n & srcen_n & dsten_n & dstenz);

// INNER.NET (274) - dzreadt7 : nd2
assign dzreadt_7 = ~(dzread & step_n);

// INNER.NET (275) - dzreadt8 : nd8
assign dzreadi = ~(dzreadt_0 & dzreadt_1 & dzreadt_2 & dzreadt_3 & dzreadt_4 & dzreadt_5 & dzreadt_6 & dzreadt_7);

// INNER.NET (276) - dzread : fd2q
fd2q dzread_inst
(
	.q /* OUT */ (dzread),
	.d /* IN */ (dzreadi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (280) - dwritet0 : nd2
assign dwritet_0 = ~(dzread & step_obuf);

// INNER.NET (281) - dwritet1 : nd3
assign dwritet_1 = ~(dread & step_obuf & dstenz_n);

// INNER.NET (282) - dwritet2 : nd4
assign dwritet_2 = ~(szread & step_obuf & dsten_n & dstenz_n);

// INNER.NET (283) - dwritet3 : nd5
assign dwritet_3 = ~(sread & step_obuf & srcenz_n & dsten_n & dstenz_n);

// INNER.NET (285) - dwritet4 : nd6
assign dwritet_4 = ~(sreadx & step_obuf & srcenz_n & srcen_n & dsten_n & dstenz_n);

// INNER.NET (287) - dwritet5 : nd6
assign dwritet_5 = ~(idle & step_obuf & srcenx_n & srcen_n & dsten_n & dstenz_n);

// INNER.NET (289) - dwritet6 : nd6
assign dwritet_6 = ~(dzwrite_obuf & step_obuf & inner0_n & srcen_n & dsten_n & dstenz_n);

// INNER.NET (291) - dwritet7 : nd7
assign dwritet_7 = ~(dwrite_obuf & step_obuf & dstwrz_n & inner0_n & srcen_n & dsten_n & dstenz_n);

// INNER.NET (293) - dwritet8 : nd2
assign dwritet_8 = ~(dwrite_obuf & step_n);

// INNER.NET (294) - dwritet9 : nd9
assign dwritei = ~(dwritet_0 & dwritet_1 & dwritet_2 & dwritet_3 & dwritet_4 & dwritet_5 & dwritet_6 & dwritet_7 & dwritet_8);

// INNER.NET (295) - dwrite : fd2qh
fd2q dwrite_inst
(
	.q /* OUT */ (dwrite_obuf),
	.d /* IN */ (dwritei),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (299) - dzwritet0 : nd2
assign dzwritet_0 = ~(dzwrite_obuf & step_n);

// INNER.NET (300) - dzwritet1 : nd3
assign dzwritet_1 = ~(dwrite_obuf & step_obuf & dstwrz);

// INNER.NET (301) - dzwritet2 : nd2
assign dzwritei = ~(dzwritet_0 & dzwritet_1);

// INNER.NET (302) - dzwrite : fd2qu
fd2q dzwrite_inst
(
	.q /* OUT */ (dzwrite_obuf),
	.d /* IN */ (dzwritei),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (309) - atick0t0 : nd4
assign atick0t_0 = ~(atick_n_0 & atick_n_1 & step_obuf & indone_n);

// INNER.NET (310) - atick0t1 : nd3
assign atick0t_1 = ~(atick_1_obuf & step_obuf & indone_n);

// INNER.NET (311) - atick0t2 : nd2
assign aticki_0_obuf = ~(atick0t_0 & atick0t_1);

// INNER.NET (312) - atick0 : fd2h
fd2 atick0_inst
(
	.q /* OUT */ (atick_0_obuf),
	.qn /* OUT */ (atick_n_0),
	.d /* IN */ (aticki_0_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (314) - atick1 : fd2qp
fd2q atick1_inst
(
	.q /* OUT */ (atickt_1),
	.d /* IN */ (atick_0_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (315) - atick\[1] : iv
assign atick_n_1 = ~atickt_1;

// INNER.NET (316) - atick[1] : nivu
assign atick_1_obuf = atickt_1;

// INNER.NET (320) - aready : join
assign aready = atick_n_0;

// INNER.NET (324) - apipe : niv
assign apipe = atick_1_obuf;

// INNER.NET (337) - dpipe0t : nd2
assign dpipe0t = ~(atick_1_obuf & dwrite_obuf);

// INNER.NET (338) - dpipe[0] : nd2
assign dpipe_0 = ~(dpipe0t & gourd);

// INNER.NET (339) - dpipe1t0 : an2
assign dpipe1t0 = writereq_obuf & dwrite_obuf;

// INNER.NET (340) - dpipe1t1 : fd1q
fd1q dpipe1t1_inst
(
	.q /* OUT */ (dpipe1t1),
	.d /* IN */ (dpipe1t0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (341) - dpipe[1] : or2
assign dpipe_1 = dpipe1t1 | gourd_n;

// INNER.NET (349) - zpipe0t0 : nd2
assign zpipe0t = ~(atick_0_obuf & dzwrite_obuf);

// INNER.NET (350) - zpipe0t1 : nd2
assign zpipe_0 = ~(zpipe0t & gourz);

// INNER.NET (352) - zpipe1t0 : an2
assign zpipe1t0 = writereq_obuf & dzwrite_obuf;

// INNER.NET (353) - zpipe1t1 : fd1q
fd1q zpipe1t1_inst
(
	.q /* OUT */ (zpipe1t1),
	.d /* IN */ (zpipe1t0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (354) - zpipe[1] : or2p
assign zpipe_1 = zpipe1t1 | gourz_n;

// INNER.NET (359) - indot0 : nd3
assign indot_0 = ~(dzwrite_obuf & step_obuf & inner0_obuf);

// INNER.NET (360) - indot1 : nd4
assign indot_1 = ~(dwrite_obuf & step_obuf & dstwrz_n & inner0_obuf);

// INNER.NET (363) - indone_tmp : nd2p
assign indone_tmp = ~(indot_0 & indot_1);

// INNER.NET (364) - indone\ : iv
assign indone_n = ~indone_tmp;

// INNER.NET (365) - indone : sysclkdly
sysclkdly indone_inst
(
	.z /* OUT */ (indone),
	.a /* IN */ (indone_tmp),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (371) - icntena : an2u
assign icntena = atick_0_obuf & dwrite_obuf;

// INNER.NET (373) - inner_count : inner_cnt
inner_cnt inner_count_inst
(
	.gpu_dout_16_out /* BUS */ (gpu_dout_16_out),
	.gpu_dout_16_oe /* BUS */ (gpu_dout_16_oe),
	.gpu_dout_16_in /* BUS */ (gpu_dout_16_in),
	.gpu_dout_17_out /* BUS */ (gpu_dout_17_out),
	.gpu_dout_17_oe /* BUS */ (gpu_dout_17_oe),
	.gpu_dout_17_in /* BUS */ (gpu_dout_17_in),
	.gpu_dout_18_out /* BUS */ (gpu_dout_18_out),
	.gpu_dout_18_oe /* BUS */ (gpu_dout_18_oe),
	.gpu_dout_18_in /* BUS */ (gpu_dout_18_in),
	.gpu_dout_19_out /* BUS */ (gpu_dout_19_out),
	.gpu_dout_19_oe /* BUS */ (gpu_dout_19_oe),
	.gpu_dout_19_in /* BUS */ (gpu_dout_19_in),
	.gpu_dout_20_out /* BUS */ (gpu_dout_20_out),
	.gpu_dout_20_oe /* BUS */ (gpu_dout_20_oe),
	.gpu_dout_20_in /* BUS */ (gpu_dout_20_in),
	.gpu_dout_21_out /* BUS */ (gpu_dout_21_out),
	.gpu_dout_21_oe /* BUS */ (gpu_dout_21_oe),
	.gpu_dout_21_in /* BUS */ (gpu_dout_21_in),
	.gpu_dout_22_out /* BUS */ (gpu_dout_22_out),
	.gpu_dout_22_oe /* BUS */ (gpu_dout_22_oe),
	.gpu_dout_22_in /* BUS */ (gpu_dout_22_in),
	.gpu_dout_23_out /* BUS */ (gpu_dout_23_out),
	.gpu_dout_23_oe /* BUS */ (gpu_dout_23_oe),
	.gpu_dout_23_in /* BUS */ (gpu_dout_23_in),
	.gpu_dout_24_out /* BUS */ (gpu_dout_24_out),
	.gpu_dout_24_oe /* BUS */ (gpu_dout_24_oe),
	.gpu_dout_24_in /* BUS */ (gpu_dout_24_in),
	.gpu_dout_25_out /* BUS */ (gpu_dout_25_out),
	.gpu_dout_25_oe /* BUS */ (gpu_dout_25_oe),
	.gpu_dout_25_in /* BUS */ (gpu_dout_25_in),
	.gpu_dout_26_out /* BUS */ (gpu_dout_26_out),
	.gpu_dout_26_oe /* BUS */ (gpu_dout_26_oe),
	.gpu_dout_26_in /* BUS */ (gpu_dout_26_in),
	.gpu_dout_27_out /* BUS */ (gpu_dout_27_out),
	.gpu_dout_27_oe /* BUS */ (gpu_dout_27_oe),
	.gpu_dout_27_in /* BUS */ (gpu_dout_27_in),
	.gpu_dout_28_out /* BUS */ (gpu_dout_28_out),
	.gpu_dout_28_oe /* BUS */ (gpu_dout_28_oe),
	.gpu_dout_28_in /* BUS */ (gpu_dout_28_in),
	.gpu_dout_29_out /* BUS */ (gpu_dout_29_out),
	.gpu_dout_29_oe /* BUS */ (gpu_dout_29_oe),
	.gpu_dout_29_in /* BUS */ (gpu_dout_29_in),
	.gpu_dout_30_out /* BUS */ (gpu_dout_30_out),
	.gpu_dout_30_oe /* BUS */ (gpu_dout_30_oe),
	.gpu_dout_30_in /* BUS */ (gpu_dout_30_in),
	.gpu_dout_31_out /* BUS */ (gpu_dout_31_out),
	.gpu_dout_31_oe /* BUS */ (gpu_dout_31_oe),
	.gpu_dout_31_in /* BUS */ (gpu_dout_31_in),
	.icount_0 /* OUT */ (icount_0),
	.icount_1 /* OUT */ (icount_1),
	.icount_2 /* OUT */ (icount_2),
	.inner0 /* OUT */ (inner0_obuf),
	.clk /* IN */ (clk),
	.countld /* IN */ (countld),
	.dstxp /* IN */ ({dstxp[0],dstxp[1],dstxp[2],dstxp[3],dstxp[4],dstxp[5],dstxp[6],dstxp[7],dstxp[8],dstxp[9],dstxp[10],dstxp[11],dstxp[12],dstxp[13],dstxp[14],dstxp[15]}),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.icntena /* IN */ (icntena),
	.ireload /* IN */ (instart),
	.phrase_mode /* IN */ (phrase_mode),
	.pixsize_0 /* IN */ (pixsize_0),
	.pixsize_1 /* IN */ (pixsize_1),
	.pixsize_2 /* IN */ (pixsize_2),
	.statrd /* IN */ (statrd),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (389) - oldoutld : an2
assign oldoutld = srca_add & atick_1_obuf;

// INNER.NET (390) - oldoutside : mx2
assign oldoutside = (oldoutld) ? a1_outside : oldoutsidel;

// INNER.NET (392) - oldoutsidel : fd1q
fd1q oldoutsidel_inst
(
	.q /* OUT */ (oldoutsidel),
	.d /* IN */ (oldoutside),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (393) - outside : mx2
assign outside = (dsta2) ? oldoutside : a1_outside;

// INNER.NET (394) - clip\ : nd2
assign clip_n = ~(diso_a1 & outside);

// INNER.NET (401) - rreqt : or6
assign rreqt = sreadx | szreadx | sread | szread | dread | dzread;

// INNER.NET (403) - readreq : an2p
assign readreq_obuf = rreqt & step_obuf;

// INNER.NET (404) - wreqt : or2
assign wreqt = dwrite_obuf | dzwrite_obuf;

// INNER.NET (405) - writereq : an4
assign writereq_obuf = wreqt & step_obuf & nowrite_n & clip_n;

// INNER.NET (410) - sraat0 : an2
assign sraat_0 = sreadxi & srcenz_n;

// INNER.NET (411) - sraat1 : an2
assign sraat_1 = sreadi & srcenz_n;

// INNER.NET (412) - srca_addi : or4
assign srca_addi_obuf = szreadxi | szreadi | sraat_0 | sraat_1;

// INNER.NET (413) - srca_add : fd1q
fd1q srca_add_inst
(
	.q /* OUT */ (srca_add),
	.d /* IN */ (srca_addi_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (415) - dstaat : an2
assign dstaat = dwritei & dstwrz_n;

// INNER.NET (416) - dsta_addi : or2
assign dsta_addi = dzwritei | dstaat;

// INNER.NET (420) - gensrc : or4
assign gensrc = sreadxi | szreadxi | sreadi | szreadi;

// INNER.NET (422) - gendst : or4
assign gendst = dreadi | dzreadi | dwritei | dzwritei;

// INNER.NET (424) - dsta2\ : iv
assign dsta2_n = ~dsta2;

// INNER.NET (425) - gena2t0 : nd2
assign gena2t_0 = ~(gensrc & dsta2_n);

// INNER.NET (426) - gena2t1 : nd2
assign gena2t_1 = ~(gendst & dsta2);

// INNER.NET (427) - gena2i : nd2
assign gena2i = ~(gena2t_0 & gena2t_1);

// INNER.NET (428) - gena2 : fd1qu
fd1q gena2_inst
(
	.q /* OUT */ (gena2),
	.d /* IN */ (gena2i),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (430) - zaddr : or4
assign zaddr = szreadx | szread | dzread | dzwrite_obuf;

// INNER.NET (434) - sreadx1 : fdsyncr
fdsyncr sreadx1_inst
(
	.q /* OUT */ (sreadx_1_obuf),
	.d /* IN */ (sreadx),
	.ld /* IN */ (step_p1),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (436) - sread1 : fdsyncr
fdsyncr sread1_inst
(
	.q /* OUT */ (sread_1_obuf),
	.d /* IN */ (sread),
	.ld /* IN */ (step_p1),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (438) - szread1 : fdsyncr
fdsyncr szread1_inst
(
	.q /* OUT */ (szread_1),
	.d /* IN */ (szread),
	.ld /* IN */ (step_p1),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (440) - dread1 : fdsyncr
fdsyncr dread1_inst
(
	.q /* OUT */ (dread_1),
	.d /* IN */ (dread),
	.ld /* IN */ (step_p1),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (442) - dzread1 : fdsyncr
fdsyncr dzread1_inst
(
	.q /* OUT */ (dzread_1),
	.d /* IN */ (dzread),
	.ld /* IN */ (step_p1),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (444) - dwrite1 : fdsync
fdsync dwrite1_inst
(
	.q /* OUT */ (dwrite1_obuf),
	.d /* IN */ (dwrite_obuf),
	.ld /* IN */ (step_p1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (445) - dzwrite1 : fdsync
fdsync dzwrite1_inst
(
	.q /* OUT */ (dzwrite1_obuf),
	.d /* IN */ (dzwrite_obuf),
	.ld /* IN */ (step_p1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (449) - dest_cycle[1] : or4
assign dest_cycle_1 = dread_1 | dzread_1 | dwrite1_obuf | dzwrite1_obuf;

// INNER.NET (457) - srcdxack : join
assign srcdxack_n = read_ack_n;

// INNER.NET (458) - srczxack : or2
assign srczxack_n = read_ack_n | srcdxpend;

// INNER.NET (459) - srcdack : or3
assign srcdack_n = read_ack_n | srcdxpend | srczxpend;

// INNER.NET (461) - srczack : or4
assign srczack_n = read_ack_n | srcdpend | srcdxpend | srczxpend;

// INNER.NET (463) - dstdack : or5
assign dstdack_n = read_ack_n | srcdpend | srczpend | srcdxpend | srczxpend;

// INNER.NET (465) - dstzack : or6
assign dstzack_n = read_ack_n | dstdpend | srcdpend | srczpend | srcdxpend | srczxpend;

// INNER.NET (470) - srcdpset\ : nd2
assign srcdpset_n = ~(readreq_obuf & sread);

// INNER.NET (471) - srcdpt1 : nd2
assign srcdpt_1 = ~(srcdpend & srcdack_n);

// INNER.NET (472) - srcdpt2 : nd2
assign srcdpt_2 = ~(srcdpset_n & srcdpt_1);

// INNER.NET (473) - srcdpend : fd2q
fd2q srcdpend_inst
(
	.q /* OUT */ (srcdpend),
	.d /* IN */ (srcdpt_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (475) - srcdxpset\ : nd2
assign srcdxpset_n = ~(readreq_obuf & sreadx);

// INNER.NET (476) - srcdxpt1 : nd2
assign srcdxpt_1 = ~(srcdxpend & srcdxack_n);

// INNER.NET (477) - srcdxpt2 : nd2
assign srcdxpt_2 = ~(srcdxpset_n & srcdxpt_1);

// INNER.NET (478) - srcdxpend : fd2q
fd2q srcdxpend_inst
(
	.q /* OUT */ (srcdxpend),
	.d /* IN */ (srcdxpt_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (480) - sdpend : or2
assign sdpend = srcdxpend | srcdpend;

// INNER.NET (481) - srcdreadt : an2
assign srcdreadt = sdpend & read_ack;

// INNER.NET (488) - srcdreadd : fd1q
fd1q srcdreadd_inst
(
	.q /* OUT */ (srcdreadd_obuf),
	.d /* IN */ (srcdreadt),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (489) - srcdread : aor1
assign srcdread = (srcshade & srcdreadd_obuf) | srcdreadt;

// INNER.NET (493) - srczpset\ : nd2
assign srczpset_n = ~(readreq_obuf & szread);

// INNER.NET (494) - srczpt1 : nd2
assign srczpt_1 = ~(srczpend & srczack_n);

// INNER.NET (495) - srczpt2 : nd2
assign srczpt_2 = ~(srczpset_n & srczpt_1);

// INNER.NET (496) - srczpend : fd2q
fd2q srczpend_inst
(
	.q /* OUT */ (srczpend),
	.d /* IN */ (srczpt_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (498) - srczxpset\ : nd2
assign srczxpset_n = ~(readreq_obuf & szreadx);

// INNER.NET (499) - srczxpt1 : nd2
assign srczxpt_1 = ~(srczxpend & srczxack_n);

// INNER.NET (500) - srczxpt2 : nd2
assign srczxpt_2 = ~(srczxpset_n & srczxpt_1);

// INNER.NET (501) - srczxpend : fd2q
fd2q srczxpend_inst
(
	.q /* OUT */ (srczxpend),
	.d /* IN */ (srczxpt_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (503) - szpend : or2
assign szpend = srczpend | srczxpend;

// INNER.NET (504) - srczread : an2
assign srczread = szpend & read_ack;

// INNER.NET (508) - dstdpset\ : nd2
assign dstdpset_n = ~(readreq_obuf & dread);

// INNER.NET (509) - dstdpt0 : nd2
assign dstdpt_0 = ~(dstdpend & dstdack_n);

// INNER.NET (510) - dstdpt1 : nd2
assign dstdpt_1 = ~(dstdpset_n & dstdpt_0);

// INNER.NET (511) - dstdpend : fd2q
fd2q dstdpend_inst
(
	.q /* OUT */ (dstdpend),
	.d /* IN */ (dstdpt_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (512) - dstdread : an2
assign dstdread = dstdpend & read_ack;

// INNER.NET (516) - dstzpset\ : nd2
assign dstzpset_n = ~(readreq_obuf & dzread);

// INNER.NET (517) - dstzpt0 : nd2
assign dstzpt_0 = ~(dstzpend & dstzack_n);

// INNER.NET (518) - dstzpt1 : nd2
assign dstzpt_1 = ~(dstzpset_n & dstzpt_0);

// INNER.NET (519) - dstzpend : fd2q
fd2q dstzpend_inst
(
	.q /* OUT */ (dstzpend),
	.d /* IN */ (dstzpt_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (520) - dstzread : an2
assign dstzread = dstzpend & read_ack;

// INNER.NET (527) - denat0 : or2
assign denat_0 = dwrite_obuf | dzwrite_obuf;

// INNER.NET (528) - denat1 : an3
assign denat_1 = denat_0 & nowrite_n & clip_n;

// INNER.NET (529) - denat2 : fdsyncr
fdsyncr denat2_inst
(
	.q /* OUT */ (denat_2),
	.d /* IN */ (denat_1),
	.ld /* IN */ (step_p1),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (531) - dstdwt : an3
assign denat_3 = blitack & wactive & denat_2;

// INNER.NET (532) - data_ena : fd1qp
fd1q data_ena_inst
(
	.q /* OUT */ (data_ena),
	.d /* IN */ (denat_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
