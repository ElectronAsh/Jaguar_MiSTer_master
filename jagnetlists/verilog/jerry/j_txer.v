/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_txer
(
	output serout,
	output tbe,
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
	input u2dwr,
	input paren,
	input even,
	input bx16,
	input txpol,
	input txbrk,
	input resetl,
	input clk,
	input sys_clk // Generated
);
wire [0:7] txr;
wire [0:7] sd;
wire [0:3] bg;
wire [0:2] dc;
wire gnd;
wire vcc;
wire evenl;
wire parenl;
wire sd_0;
wire sd_1;
wire sd_2;
wire sd_3;
wire sd_4;
wire sd_5;
wire sd_6;
wire sd_7;
wire ntxr_0;
wire ntxr_1;
wire ntxr_2;
wire ntxr_3;
wire ntxr_4;
wire ntxr_5;
wire ntxr_6;
wire txr_0;
wire txr_1;
wire txr_2;
wire txr_3;
wire txr_4;
wire txr_5;
wire txr_6;
wire txr_7;
wire shift;
wire load;
wire ntxr_7;
wire txrl_0;
wire txen;
wire seldat;
wire f1;
wire f1l;
wire nf1;
wire nnf1;
wire f1f;
wire f1t;
wire selpar;
wire tbel;
wire f0;
wire f0l;
wire nf0;
wire f0f;
wire txenl;
wire seldatl;
wire nseldat;
wire seldatf;
wire tcl;
wire selparl;
wire nselpar;
wire selparf;
wire tc;
wire txd;
wire txbrkl;
wire ntxd;
wire txda;
wire txdb;
wire tpar;
wire tparl;
wire ntpar;
wire tpa;
wire tpb;
wire tpc;
wire tpd;
wire tpe;
wire dc_0;
wire dc_1;
wire dc_2;
wire dcl_0;
wire dcl_1;
wire dcl_2;
wire ndc_0;
wire ndc_1;
wire ndc_2;
wire ci_0;
wire co_0;
wire co_1;
wire scs;
wire scsl;
wire dscs;
wire ntbe;
wire tbea;
wire tbeb;
wire tbec;
wire df1l;
wire df1;
wire bco_3;
wire bg_3;
wire bg_2;
wire bg_1;
wire bg_0;
wire bco_2;
wire bco_1;
wire bco_0;
wire bgl_0;
wire bgl_1;
wire bgl_2;
wire bgl_3;
wire nbg_0;
wire nbg_1;
wire nbg_2;
wire nbg_3;
wire co3d;
wire co3dl;
wire txenw;

// UART2.NET (410) - gnd : tie0
assign gnd = 1'b0;

// UART2.NET (411) - vcc : tie1
assign vcc = 1'b1;

// UART2.NET (412) - unused[0-7] : dummy

// UART2.NET (414) - evenl : iv
assign evenl = ~even;

// UART2.NET (415) - parenl : iv
assign parenl = ~paren;

// UART2.NET (423) - sd[0-7] : ldp1q
ldp1q sd_from_0_to_7_inst_0
(
	.q /* OUT */ (sd_0),
	.d /* IN */ (din_0),
	.g /* IN */ (u2dwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q sd_from_0_to_7_inst_1
(
	.q /* OUT */ (sd_1),
	.d /* IN */ (din_1),
	.g /* IN */ (u2dwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q sd_from_0_to_7_inst_2
(
	.q /* OUT */ (sd_2),
	.d /* IN */ (din_2),
	.g /* IN */ (u2dwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q sd_from_0_to_7_inst_3
(
	.q /* OUT */ (sd_3),
	.d /* IN */ (din_3),
	.g /* IN */ (u2dwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q sd_from_0_to_7_inst_4
(
	.q /* OUT */ (sd_4),
	.d /* IN */ (din_4),
	.g /* IN */ (u2dwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q sd_from_0_to_7_inst_5
(
	.q /* OUT */ (sd_5),
	.d /* IN */ (din_5),
	.g /* IN */ (u2dwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q sd_from_0_to_7_inst_6
(
	.q /* OUT */ (sd_6),
	.d /* IN */ (din_6),
	.g /* IN */ (u2dwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q sd_from_0_to_7_inst_7
(
	.q /* OUT */ (sd_7),
	.d /* IN */ (din_7),
	.g /* IN */ (u2dwr),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (424) - sd : join
assign sd[0] = sd_0;
assign sd[1] = sd_1;
assign sd[2] = sd_2;
assign sd[3] = sd_3;
assign sd[4] = sd_4;
assign sd[5] = sd_5;
assign sd[6] = sd_6;
assign sd[7] = sd_7;

// UART2.NET (425) - sdu : dummy

// UART2.NET (429) - ntxr[0-6] : mx4
mx4 ntxr_from_0_to_6_inst_0
(
	.z /* OUT */ (ntxr_0),
	.a0 /* IN */ (txr_0),
	.a1 /* IN */ (txr_1),
	.a2 /* IN */ (sd_0),
	.a3 /* IN */ (sd_0),
	.s0 /* IN */ (shift),
	.s1 /* IN */ (load)
);
mx4 ntxr_from_0_to_6_inst_1
(
	.z /* OUT */ (ntxr_1),
	.a0 /* IN */ (txr_1),
	.a1 /* IN */ (txr_2),
	.a2 /* IN */ (sd_1),
	.a3 /* IN */ (sd_1),
	.s0 /* IN */ (shift),
	.s1 /* IN */ (load)
);
mx4 ntxr_from_0_to_6_inst_2
(
	.z /* OUT */ (ntxr_2),
	.a0 /* IN */ (txr_2),
	.a1 /* IN */ (txr_3),
	.a2 /* IN */ (sd_2),
	.a3 /* IN */ (sd_2),
	.s0 /* IN */ (shift),
	.s1 /* IN */ (load)
);
mx4 ntxr_from_0_to_6_inst_3
(
	.z /* OUT */ (ntxr_3),
	.a0 /* IN */ (txr_3),
	.a1 /* IN */ (txr_4),
	.a2 /* IN */ (sd_3),
	.a3 /* IN */ (sd_3),
	.s0 /* IN */ (shift),
	.s1 /* IN */ (load)
);
mx4 ntxr_from_0_to_6_inst_4
(
	.z /* OUT */ (ntxr_4),
	.a0 /* IN */ (txr_4),
	.a1 /* IN */ (txr_5),
	.a2 /* IN */ (sd_4),
	.a3 /* IN */ (sd_4),
	.s0 /* IN */ (shift),
	.s1 /* IN */ (load)
);
mx4 ntxr_from_0_to_6_inst_5
(
	.z /* OUT */ (ntxr_5),
	.a0 /* IN */ (txr_5),
	.a1 /* IN */ (txr_6),
	.a2 /* IN */ (sd_5),
	.a3 /* IN */ (sd_5),
	.s0 /* IN */ (shift),
	.s1 /* IN */ (load)
);
mx4 ntxr_from_0_to_6_inst_6
(
	.z /* OUT */ (ntxr_6),
	.a0 /* IN */ (txr_6),
	.a1 /* IN */ (txr_7),
	.a2 /* IN */ (sd_6),
	.a3 /* IN */ (sd_6),
	.s0 /* IN */ (shift),
	.s1 /* IN */ (load)
);

// UART2.NET (430) - ntxr[7] : mx4
mx4 ntxr_index_7_inst
(
	.z /* OUT */ (ntxr_7),
	.a0 /* IN */ (txr_7),
	.a1 /* IN */ (gnd),
	.a2 /* IN */ (sd_7),
	.a3 /* IN */ (sd_7),
	.s0 /* IN */ (shift),
	.s1 /* IN */ (load)
);

// UART2.NET (431) - txr[0-7] : fd1q
fd1q txr_from_0_to_7_inst_0
(
	.q /* OUT */ (txr_0),
	.d /* IN */ (ntxr_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q txr_from_0_to_7_inst_1
(
	.q /* OUT */ (txr_1),
	.d /* IN */ (ntxr_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q txr_from_0_to_7_inst_2
(
	.q /* OUT */ (txr_2),
	.d /* IN */ (ntxr_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q txr_from_0_to_7_inst_3
(
	.q /* OUT */ (txr_3),
	.d /* IN */ (ntxr_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q txr_from_0_to_7_inst_4
(
	.q /* OUT */ (txr_4),
	.d /* IN */ (ntxr_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q txr_from_0_to_7_inst_5
(
	.q /* OUT */ (txr_5),
	.d /* IN */ (ntxr_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q txr_from_0_to_7_inst_6
(
	.q /* OUT */ (txr_6),
	.d /* IN */ (ntxr_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q txr_from_0_to_7_inst_7
(
	.q /* OUT */ (txr_7),
	.d /* IN */ (ntxr_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (432) - txrl[0] : iv
assign txrl_0 = ~txr_0;

// UART2.NET (433) - shift : an2h
assign shift = txen & seldat;

// UART2.NET (434) - load : an2h
assign load = txen & f1;

// UART2.NET (436) - txr : join
assign txr[0] = txr_0;
assign txr[1] = txr_1;
assign txr[2] = txr_2;
assign txr[3] = txr_3;
assign txr[4] = txr_4;
assign txr[5] = txr_5;
assign txr[6] = txr_6;
assign txr[7] = txr_7;

// UART2.NET (437) - txru : dummy

// UART2.NET (443) - f1 : fd1
fd1 f1_inst
(
	.q /* OUT */ (f1),
	.qn /* OUT */ (f1l),
	.d /* IN */ (nf1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (444) - nf1 : nd2
assign nf1 = ~(nnf1 & resetl);

// UART2.NET (445) - nnf1 : mx2
assign nnf1 = (f1) ? f1t : f1f;

// UART2.NET (446) - f1f : nd2
assign f1f = ~(selpar & txen);

// UART2.NET (447) - f1t : an2
assign f1t = tbel & txen;

// UART2.NET (449) - f0 : fd2
fd2 f0_inst
(
	.q /* OUT */ (f0),
	.qn /* OUT */ (f0l),
	.d /* IN */ (nf0),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (450) - fou : dummy

// UART2.NET (451) - nf0 : mx2
assign nf0 = (f0) ? txenl : f0f;

// UART2.NET (452) - f0f : an3
assign f0f = f1 & tbel & txen;

// UART2.NET (454) - seldat : fd2
fd2 seldat_inst
(
	.q /* OUT */ (seldat),
	.qn /* OUT */ (seldatl),
	.d /* IN */ (nseldat),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (455) - nseldat : mx2
assign nseldat = (seldat) ? tcl : seldatf;

// UART2.NET (456) - seldatf : an2
assign seldatf = f0 & txen;

// UART2.NET (458) - selpar : fd2
fd2 selpar_inst
(
	.q /* OUT */ (selpar),
	.qn /* OUT */ (selparl),
	.d /* IN */ (nselpar),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (459) - selparu : dummy

// UART2.NET (460) - nselpar : mx2
assign nselpar = (selpar) ? txenl : selparf;

// UART2.NET (461) - selparf : an2
assign selparf = seldat & tc;

// UART2.NET (467) - serout : eo
assign serout = txd ^ txpol;

// UART2.NET (469) - txbrkl : iv
assign txbrkl = ~txbrk;

// UART2.NET (470) - txd : fd2q
fd2q txd_inst
(
	.q /* OUT */ (txd),
	.d /* IN */ (ntxd),
	.cp /* IN */ (clk),
	.cd /* IN */ (txbrkl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (471) - ntxd : nd3
assign ntxd = ~(txda & txdb & f1l);

// UART2.NET (472) - txda : nd2
assign txda = ~(tpar & selpar);

// UART2.NET (473) - txdb : nd2
assign txdb = ~(seldat & txr_0);

// UART2.NET (486) - tpar : fd1
fd1 tpar_inst
(
	.q /* OUT */ (tpar),
	.qn /* OUT */ (tparl),
	.d /* IN */ (ntpar),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (487) - ntpar : nd6
assign ntpar = ~(tpa & tpb & tpc & tpd & tpe & vcc);

// UART2.NET (488) - tpa : nd3
assign tpa = ~(txen & evenl & seldatl);

// UART2.NET (489) - tpb : nd3
assign tpb = ~(txen & even & parenl);

// UART2.NET (490) - tpc : nd6
assign tpc = ~(txen & txrl_0 & seldat & paren & tpar & vcc);

// UART2.NET (491) - tpd : nd6
assign tpd = ~(txen & txr_0 & seldat & paren & tparl & vcc);

// UART2.NET (492) - tpe : nd2
assign tpe = ~(txenl & tpar);

// UART2.NET (501) - dc : join
assign dc[0] = dc_0;
assign dc[1] = dc_1;
assign dc[2] = dc_2;

// UART2.NET (502) - dcu : dummy

// UART2.NET (504) - dc[0-2] : fd1
fd1 dc_from_0_to_2_inst_0
(
	.q /* OUT */ (dc_0),
	.qn /* OUT */ (dcl_0),
	.d /* IN */ (ndc_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 dc_from_0_to_2_inst_1
(
	.q /* OUT */ (dc_1),
	.qn /* OUT */ (dcl_1),
	.d /* IN */ (ndc_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 dc_from_0_to_2_inst_2
(
	.q /* OUT */ (dc_2),
	.qn /* OUT */ (dcl_2),
	.d /* IN */ (ndc_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (506) - ci[0] : an2
assign ci_0 = seldat & txen;

// UART2.NET (507) - co[0] : an3
assign co_0 = ci_0 & dc_0 & txen;

// UART2.NET (508) - co[1] : an3
assign co_1 = co_0 & dc_1 & txen;

// UART2.NET (509) - tc : an2
assign tc = co_1 & dc_2;

// UART2.NET (510) - tcl : iv
assign tcl = ~tc;

// UART2.NET (512) - ndc[0] : mx4
mx4 ndc_index_0_inst
(
	.z /* OUT */ (ndc_0),
	.a0 /* IN */ (dc_0),
	.a1 /* IN */ (gnd),
	.a2 /* IN */ (dcl_0),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (seldatl),
	.s1 /* IN */ (ci_0)
);

// UART2.NET (513) - ndc[1-2] : mx4
mx4 ndc_from_1_to_2_inst_0
(
	.z /* OUT */ (ndc_1),
	.a0 /* IN */ (dc_1),
	.a1 /* IN */ (gnd),
	.a2 /* IN */ (dcl_1),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (seldatl),
	.s1 /* IN */ (co_0)
);
mx4 ndc_from_1_to_2_inst_1
(
	.z /* OUT */ (ndc_2),
	.a0 /* IN */ (dc_2),
	.a1 /* IN */ (gnd),
	.a2 /* IN */ (dcl_2),
	.a3 /* IN */ (gnd),
	.s0 /* IN */ (seldatl),
	.s1 /* IN */ (co_1)
);

// UART2.NET (520) - scs : fd1
fd1 scs_inst
(
	.q /* OUT */ (scs),
	.qn /* OUT */ (scsl),
	.d /* IN */ (u2dwr),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (521) - dscs : fd1q
fd1q dscs_inst
(
	.q /* OUT */ (dscs),
	.d /* IN */ (scs),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (523) - tbe : fd1
fd1 tbe_inst
(
	.q /* OUT */ (tbe),
	.qn /* OUT */ (tbel),
	.d /* IN */ (ntbe),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (524) - ntbe : an3
assign ntbe = tbea & tbeb & tbec;

// UART2.NET (525) - tbea : nd3
assign tbea = ~(resetl & scsl & dscs);

// UART2.NET (526) - tbeb : nd3
assign tbeb = ~(resetl & tbel & f1);

// UART2.NET (527) - tbec : nd3
assign tbec = ~(resetl & tbel & df1l);

// UART2.NET (529) - df1 : fd1
fd1 df1_inst
(
	.q /* OUT */ (df1),
	.qn /* OUT */ (df1l),
	.d /* IN */ (f1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (530) - df1u : dummy

// UART2.NET (539) - bco[3] : an6
assign bco_3 = bg_3 & bg_2 & bg_1 & bg_0 & bx16 & vcc;

// UART2.NET (540) - bco[2] : an4
assign bco_2 = bg_2 & bco_1 & bco_0 & bx16;

// UART2.NET (541) - bco[1] : an3
assign bco_1 = bg_1 & bg_0 & bx16;

// UART2.NET (542) - bco[0] : an2
assign bco_0 = bg_0 & bx16;

// UART2.NET (545) - bg[0-3] : fd2
fd2 bg_from_0_to_3_inst_0
(
	.q /* OUT */ (bg_0),
	.qn /* OUT */ (bgl_0),
	.d /* IN */ (nbg_0),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
fd2 bg_from_0_to_3_inst_1
(
	.q /* OUT */ (bg_1),
	.qn /* OUT */ (bgl_1),
	.d /* IN */ (nbg_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
fd2 bg_from_0_to_3_inst_2
(
	.q /* OUT */ (bg_2),
	.qn /* OUT */ (bgl_2),
	.d /* IN */ (nbg_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
fd2 bg_from_0_to_3_inst_3
(
	.q /* OUT */ (bg_3),
	.qn /* OUT */ (bgl_3),
	.d /* IN */ (nbg_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (546) - bg : join
assign bg[0] = bg_0;
assign bg[1] = bg_1;
assign bg[2] = bg_2;
assign bg[3] = bg_3;

// UART2.NET (547) - bgu : dummy

// UART2.NET (549) - nbg[3] : mx2
assign nbg_3 = (bco_2) ? bgl_3 : bg_3;

// UART2.NET (550) - nbg[2] : mx2
assign nbg_2 = (bco_1) ? bgl_2 : bg_2;

// UART2.NET (551) - nbg[1] : mx2
assign nbg_1 = (bco_0) ? bgl_1 : bg_1;

// UART2.NET (552) - nbg[0] : mx2
assign nbg_0 = (bx16) ? bgl_0 : bg_0;

// UART2.NET (554) - co3d : fd1
fd1 co3d_inst
(
	.q /* OUT */ (co3d),
	.qn /* OUT */ (co3dl),
	.d /* IN */ (bco_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (555) - uco3d : dummy

// UART2.NET (556) - txenw : an2
assign txenw = bco_3 & co3dl;

// UART2.NET (558) - txen : nivh
assign txen = txenw;

// UART2.NET (559) - txenl : iv
assign txenl = ~txenw;
endmodule
/* verilator lint_on LITENDIAN */
