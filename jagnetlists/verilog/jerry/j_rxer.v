/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_rxer
(
	output rbf,
	output pe,
	output oe,
	output fe,
	output error,
	input clr_err,
	input paren,
	input even,
	input u2drd,
	input rxpol,
	input serin,
	input resetl,
	input bx16,
	input clk,
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
wire [0:9] rsr;
wire [0:7] rdr;
wire [0:3] rxg;
wire [0:3] rdc;
wire gnd;
wire vcc;
wire clr_errl;
wire rsr_0;
wire rsr_1;
wire rsr_2;
wire rsr_3;
wire rsr_4;
wire rsr_5;
wire rsr_6;
wire rsr_7;
wire rsr_8;
wire rsr_9;
wire rsrl_0;
wire rsrl_1;
wire rsrl_2;
wire rsrl_3;
wire rsrl_4;
wire rsrl_5;
wire rsrl_6;
wire rsrl_7;
wire rsrl_8;
wire rsrl_9;
wire nrsr_0;
wire nrsr_1;
wire nrsr_2;
wire nrsr_3;
wire nrsr_4;
wire nrsr_5;
wire nrsr_6;
wire nrsr_7;
wire nrsr_8;
wire nrsr_9;
wire rxins;
wire shiften;
wire shen;
wire rxen;
wire rdr_0;
wire rdr_1;
wire rdr_2;
wire rdr_3;
wire rdr_4;
wire rdr_5;
wire rdr_6;
wire rdr_7;
wire tfr;
wire tfri;
wire tfrl;
wire ntfr;
wire tc;
wire sheni;
wire shenl;
wire nshen;
wire shena;
wire shenb;
wire shenc;
wire tbegin;
wire errorl;
wire tcl;
wire rxenl;
wire go;
wire rxbrkl;
wire rxbrk;
wire rxbrkli;
wire nrxbrk;
wire nrxba;
wire nrxbb;
wire nrxbaa;
wire nrxbab;
wire rxinsl;
wire setpol;
wire rco_1;
wire rco_2;
wire rxg_1;
wire rxg_2;
wire rco_0;
wire rxg_0;
wire rxg_3;
wire rxgl_0;
wire rxgl_1;
wire rxgl_2;
wire rxgl_3;
wire nrxg_0;
wire nrxg_1;
wire nrxg_2;
wire nrxg_3;
wire sync;
wire ro;
wire nro;
wire rod;
wire rodl;
wire rxenw;
wire rxenwl;
wire nrxen;
wire start;
wire nstart;
wire sta;
wire stb;
wire stc;
wire startd;
wire startdl;
wire nsync;
wire gol;
wire ngo;
wire ngoa;
wire ngob;
wire rdc_0;
wire rdc_1;
wire rdc_2;
wire rdc_3;
wire rdcl_0;
wire rdcl_1;
wire rdcl_2;
wire rdcl_3;
wire nrdc_0;
wire nrdc_1;
wire nrdc_2;
wire nrdc_3;
wire co_0;
wire co_1;
wire co_2;
wire ci_0;
wire ntc;
wire rpar;
wire rparl;
wire nrpar;
wire rpa;
wire rpb;
wire rpc;
wire rpd;
wire pel;
wire npe;
wire pea;
wire peb;
wire fel;
wire nfe;
wire fea;
wire feb;
wire fec;
wire feaa;
wire feab;
wire oel;
wire noe;
wire orea;
wire oreb;
wire nnrbf;
wire nrbf;
wire rbfa;
wire dataccl;
wire rdsdl;
wire rds;
wire rdsd;

// Output buffers
wire rbf_obuf;
wire pe_obuf;
wire oe_obuf;
wire fe_obuf;
wire error_obuf;


// Output buffers
assign rbf = rbf_obuf;
assign pe = pe_obuf;
assign oe = oe_obuf;
assign fe = fe_obuf;
assign error = error_obuf;


// UART2.NET (146) - gnd : tie0
assign gnd = 1'b0;

// UART2.NET (147) - vcc : tie1
assign vcc = 1'b1;

// UART2.NET (148) - clr_errl : iv
assign clr_errl = ~clr_err;

// UART2.NET (169) - rsr[0-9] : fd1
fd1 rsr_from_0_to_9_inst_0
(
	.q /* OUT */ (rsr_0),
	.qn /* OUT */ (rsrl_0),
	.d /* IN */ (nrsr_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rsr_from_0_to_9_inst_1
(
	.q /* OUT */ (rsr_1),
	.qn /* OUT */ (rsrl_1),
	.d /* IN */ (nrsr_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rsr_from_0_to_9_inst_2
(
	.q /* OUT */ (rsr_2),
	.qn /* OUT */ (rsrl_2),
	.d /* IN */ (nrsr_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rsr_from_0_to_9_inst_3
(
	.q /* OUT */ (rsr_3),
	.qn /* OUT */ (rsrl_3),
	.d /* IN */ (nrsr_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rsr_from_0_to_9_inst_4
(
	.q /* OUT */ (rsr_4),
	.qn /* OUT */ (rsrl_4),
	.d /* IN */ (nrsr_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rsr_from_0_to_9_inst_5
(
	.q /* OUT */ (rsr_5),
	.qn /* OUT */ (rsrl_5),
	.d /* IN */ (nrsr_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rsr_from_0_to_9_inst_6
(
	.q /* OUT */ (rsr_6),
	.qn /* OUT */ (rsrl_6),
	.d /* IN */ (nrsr_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rsr_from_0_to_9_inst_7
(
	.q /* OUT */ (rsr_7),
	.qn /* OUT */ (rsrl_7),
	.d /* IN */ (nrsr_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rsr_from_0_to_9_inst_8
(
	.q /* OUT */ (rsr_8),
	.qn /* OUT */ (rsrl_8),
	.d /* IN */ (nrsr_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rsr_from_0_to_9_inst_9
(
	.q /* OUT */ (rsr_9),
	.qn /* OUT */ (rsrl_9),
	.d /* IN */ (nrsr_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (170) - rsr : join
assign rsr[0] = rsr_0;
assign rsr[1] = rsr_1;
assign rsr[2] = rsr_2;
assign rsr[3] = rsr_3;
assign rsr[4] = rsr_4;
assign rsr[5] = rsr_5;
assign rsr[6] = rsr_6;
assign rsr[7] = rsr_7;
assign rsr[8] = rsr_8;
assign rsr[9] = rsr_9;

// UART2.NET (171) - rsru : dummy

// UART2.NET (173) - nrsr[9] : mx2
assign nrsr_9 = (shiften) ? rxins : rsr_9;

// UART2.NET (174) - nrsr[0-8] : mx2
assign nrsr_0 = (shiften) ? rsr_1 : rsr_0;
assign nrsr_1 = (shiften) ? rsr_2 : rsr_1;
assign nrsr_2 = (shiften) ? rsr_3 : rsr_2;
assign nrsr_3 = (shiften) ? rsr_4 : rsr_3;
assign nrsr_4 = (shiften) ? rsr_5 : rsr_4;
assign nrsr_5 = (shiften) ? rsr_6 : rsr_5;
assign nrsr_6 = (shiften) ? rsr_7 : rsr_6;
assign nrsr_7 = (shiften) ? rsr_8 : rsr_7;
assign nrsr_8 = (shiften) ? rsr_9 : rsr_8;

// UART2.NET (176) - shiften : an2h
assign shiften = shen & rxen;

// UART2.NET (183) - dr[0-7] : ts
assign dr_0_out = rdr_0;
assign dr_0_oe = u2drd;
assign dr_1_out = rdr_1;
assign dr_1_oe = u2drd;
assign dr_2_out = rdr_2;
assign dr_2_oe = u2drd;
assign dr_3_out = rdr_3;
assign dr_3_oe = u2drd;
assign dr_4_out = rdr_4;
assign dr_4_oe = u2drd;
assign dr_5_out = rdr_5;
assign dr_5_oe = u2drd;
assign dr_6_out = rdr_6;
assign dr_6_oe = u2drd;
assign dr_7_out = rdr_7;
assign dr_7_oe = u2drd;

// UART2.NET (184) - dr[8-15] : ts
assign dr_8_out = gnd;
assign dr_8_oe = u2drd;
assign dr_9_out = gnd;
assign dr_9_oe = u2drd;
assign dr_10_out = gnd;
assign dr_10_oe = u2drd;
assign dr_11_out = gnd;
assign dr_11_oe = u2drd;
assign dr_12_out = gnd;
assign dr_12_oe = u2drd;
assign dr_13_out = gnd;
assign dr_13_oe = u2drd;
assign dr_14_out = gnd;
assign dr_14_oe = u2drd;
assign dr_15_out = gnd;
assign dr_15_oe = u2drd;

// UART2.NET (193) - rdr[0-7] : ldp1q
ldp1q rdr_from_0_to_7_inst_0
(
	.q /* OUT */ (rdr_0),
	.d /* IN */ (rsr_0),
	.g /* IN */ (tfr),
	.sys_clk(sys_clk) // Generated
);
ldp1q rdr_from_0_to_7_inst_1
(
	.q /* OUT */ (rdr_1),
	.d /* IN */ (rsr_1),
	.g /* IN */ (tfr),
	.sys_clk(sys_clk) // Generated
);
ldp1q rdr_from_0_to_7_inst_2
(
	.q /* OUT */ (rdr_2),
	.d /* IN */ (rsr_2),
	.g /* IN */ (tfr),
	.sys_clk(sys_clk) // Generated
);
ldp1q rdr_from_0_to_7_inst_3
(
	.q /* OUT */ (rdr_3),
	.d /* IN */ (rsr_3),
	.g /* IN */ (tfr),
	.sys_clk(sys_clk) // Generated
);
ldp1q rdr_from_0_to_7_inst_4
(
	.q /* OUT */ (rdr_4),
	.d /* IN */ (rsr_4),
	.g /* IN */ (tfr),
	.sys_clk(sys_clk) // Generated
);
ldp1q rdr_from_0_to_7_inst_5
(
	.q /* OUT */ (rdr_5),
	.d /* IN */ (rsr_5),
	.g /* IN */ (tfr),
	.sys_clk(sys_clk) // Generated
);
ldp1q rdr_from_0_to_7_inst_6
(
	.q /* OUT */ (rdr_6),
	.d /* IN */ (rsr_6),
	.g /* IN */ (tfr),
	.sys_clk(sys_clk) // Generated
);
ldp1q rdr_from_0_to_7_inst_7
(
	.q /* OUT */ (rdr_7),
	.d /* IN */ (rsr_7),
	.g /* IN */ (tfr),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (194) - rdr : join
assign rdr[0] = rdr_0;
assign rdr[1] = rdr_1;
assign rdr[2] = rdr_2;
assign rdr[3] = rdr_3;
assign rdr[4] = rdr_4;
assign rdr[5] = rdr_5;
assign rdr[6] = rdr_6;
assign rdr[7] = rdr_7;

// UART2.NET (195) - rdru : dummy

// UART2.NET (199) - tfri : fd1
fd1 tfri_inst
(
	.q /* OUT */ (tfri),
	.qn /* OUT */ (tfrl),
	.d /* IN */ (ntfr),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (200) - tfr : nivh
assign tfr = tfri;

// UART2.NET (201) - ntfr : an6
assign ntfr = resetl & tc & rxen & tfrl & shen & vcc;

// UART2.NET (203) - sheni : fd1
fd1 sheni_inst
(
	.q /* OUT */ (sheni),
	.qn /* OUT */ (shenl),
	.d /* IN */ (nshen),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (204) - shen : nivh
assign shen = sheni;

// UART2.NET (205) - nshen : nd3
assign nshen = ~(shena & shenb & shenc);

// UART2.NET (206) - shena : nd6
assign shena = ~(resetl & rxen & tbegin & errorl & tfrl & shenl);

// UART2.NET (207) - shenb : nd4
assign shenb = ~(resetl & tcl & tfrl & shen);

// UART2.NET (208) - shenc : nd4
assign shenc = ~(resetl & rxenl & tfrl & shen);

// UART2.NET (211) - beg : an2
assign tbegin = go & rxbrkl;

// UART2.NET (220) - rxbrki : fd2
fd2 rxbrki_inst
(
	.q /* OUT */ (rxbrk),
	.qn /* OUT */ (rxbrkli),
	.d /* IN */ (nrxbrk),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (221) - rxbrk : nivh
assign rxbrkl = rxbrkli;

// UART2.NET (222) - nrxbrk : nd2
assign nrxbrk = ~(nrxba & nrxbb);

// UART2.NET (223) - nrxba : nd2
assign nrxba = ~(nrxbaa & nrxbab);

// UART2.NET (224) - nrxbb : nd2
assign nrxbb = ~(rxbrk & rxinsl);

// UART2.NET (226) - nrxbaa : an6
assign nrxbaa = rsrl_0 & rsrl_1 & rsrl_2 & rsrl_3 & rsrl_4 & rsrl_5;

// UART2.NET (227) - nrxbab : an6
assign nrxbab = rsrl_6 & rsrl_7 & tfr & rsrl_9 & rxbrkl & vcc;

// UART2.NET (236) - setpol : eo
assign setpol = serin ^ rxpol;

// UART2.NET (237) - rxins : fd1
fd1 rxins_inst
(
	.q /* OUT */ (rxins),
	.qn /* OUT */ (rxinsl),
	.d /* IN */ (setpol),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (248) - rco[1-2] : an3
assign rco_1 = rxg_1 & rco_0 & bx16;
assign rco_2 = rxg_2 & rco_1 & bx16;

// UART2.NET (249) - rco[0] : an2
assign rco_0 = rxg_0 & bx16;

// UART2.NET (250) - rxg[0-3] : fd2
fd2 rxg_from_0_to_3_inst_0
(
	.q /* OUT */ (rxg_0),
	.qn /* OUT */ (rxgl_0),
	.d /* IN */ (nrxg_0),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
fd2 rxg_from_0_to_3_inst_1
(
	.q /* OUT */ (rxg_1),
	.qn /* OUT */ (rxgl_1),
	.d /* IN */ (nrxg_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
fd2 rxg_from_0_to_3_inst_2
(
	.q /* OUT */ (rxg_2),
	.qn /* OUT */ (rxgl_2),
	.d /* IN */ (nrxg_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
fd2 rxg_from_0_to_3_inst_3
(
	.q /* OUT */ (rxg_3),
	.qn /* OUT */ (rxgl_3),
	.d /* IN */ (nrxg_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (251) - rxg : join
assign rxg[0] = rxg_0;
assign rxg[1] = rxg_1;
assign rxg[2] = rxg_2;
assign rxg[3] = rxg_3;

// UART2.NET (252) - rxgu : dummy

// UART2.NET (254) - nrxg[3] : mx2g
mx2g nrxg_index_3_inst
(
	.z /* OUT */ (nrxg_3),
	.a0 /* IN */ (rxg_3),
	.a1 /* IN */ (rxgl_3),
	.s /* IN */ (rco_2),
	.gn /* IN */ (sync)
);

// UART2.NET (255) - nrxg[2] : mx2g
mx2g nrxg_index_2_inst
(
	.z /* OUT */ (nrxg_2),
	.a0 /* IN */ (rxg_2),
	.a1 /* IN */ (rxgl_2),
	.s /* IN */ (rco_1),
	.gn /* IN */ (sync)
);

// UART2.NET (256) - nrxg[1] : mx2g
mx2g nrxg_index_1_inst
(
	.z /* OUT */ (nrxg_1),
	.a0 /* IN */ (rxg_1),
	.a1 /* IN */ (rxgl_1),
	.s /* IN */ (rco_0),
	.gn /* IN */ (sync)
);

// UART2.NET (257) - nrxg[0] : mx2g
mx2g nrxg_index_0_inst
(
	.z /* OUT */ (nrxg_0),
	.a0 /* IN */ (rxg_0),
	.a1 /* IN */ (rxgl_0),
	.s /* IN */ (bx16),
	.gn /* IN */ (sync)
);

// UART2.NET (259) - ro : fd1q
fd1q ro_inst
(
	.q /* OUT */ (ro),
	.d /* IN */ (nro),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (260) - nro : an6
assign nro = resetl & rxgl_3 & rxg_2 & rxgl_1 & rxg_0 & bx16;

// UART2.NET (262) - rod : fd1
fd1 rod_inst
(
	.q /* OUT */ (rod),
	.qn /* OUT */ (rodl),
	.d /* IN */ (ro),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (263) - urod : dummy

// UART2.NET (265) - rxenw : fd1
fd1 rxenw_inst
(
	.q /* OUT */ (rxenw),
	.qn /* OUT */ (rxenwl),
	.d /* IN */ (nrxen),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (266) - nrxen : an3
assign nrxen = resetl & ro & rodl;

// UART2.NET (267) - rxen : nivh
assign rxen = rxenw;

// UART2.NET (268) - rxenl : niv
assign rxenl = rxenwl;

// UART2.NET (274) - start : fd2q
fd2q start_inst
(
	.q /* OUT */ (start),
	.d /* IN */ (nstart),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (275) - nstart : nd3
assign nstart = ~(sta & stb & stc);

// UART2.NET (276) - sta : nd4
assign sta = ~(tfrl & shenl & rxinsl & rxbrkl);

// UART2.NET (277) - stb : nd4
assign stb = ~(start & shenl & errorl & rxbrkl);

// UART2.NET (278) - stc : nd4
assign stc = ~(start & rxenl & errorl & rxbrkl);

// UART2.NET (281) - startd : fd2
fd2 startd_inst
(
	.q /* OUT */ (startd),
	.qn /* OUT */ (startdl),
	.d /* IN */ (start),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (282) - ustartd : dummy

// UART2.NET (284) - sync : fd2q
fd2q sync_inst
(
	.q /* OUT */ (sync),
	.d /* IN */ (nsync),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (286) - nsync : an2
assign nsync = start & startdl;

// UART2.NET (288) - go : fd2
fd2 go_inst
(
	.q /* OUT */ (go),
	.qn /* OUT */ (gol),
	.d /* IN */ (ngo),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (289) - ngo : nd2
assign ngo = ~(ngoa & ngob);

// UART2.NET (290) - ngoa : nd4
assign ngoa = ~(shenl & go & errorl & rxbrkl);

// UART2.NET (291) - ngob : nd4
assign ngob = ~(sync & gol & errorl & rxbrkl);

// UART2.NET (302) - rdc[0-3] : fd1
fd1 rdc_from_0_to_3_inst_0
(
	.q /* OUT */ (rdc_0),
	.qn /* OUT */ (rdcl_0),
	.d /* IN */ (nrdc_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rdc_from_0_to_3_inst_1
(
	.q /* OUT */ (rdc_1),
	.qn /* OUT */ (rdcl_1),
	.d /* IN */ (nrdc_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rdc_from_0_to_3_inst_2
(
	.q /* OUT */ (rdc_2),
	.qn /* OUT */ (rdcl_2),
	.d /* IN */ (nrdc_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1 rdc_from_0_to_3_inst_3
(
	.q /* OUT */ (rdc_3),
	.qn /* OUT */ (rdcl_3),
	.d /* IN */ (nrdc_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (303) - rdc : join
assign rdc[0] = rdc_0;
assign rdc[1] = rdc_1;
assign rdc[2] = rdc_2;
assign rdc[3] = rdc_3;

// UART2.NET (304) - rdcu : dummy

// UART2.NET (306) - nrdc[1-3] : mx4
mx4 nrdc_from_1_to_3_inst_0
(
	.z /* OUT */ (nrdc_1),
	.a0 /* IN */ (gnd),
	.a1 /* IN */ (rdc_1),
	.a2 /* IN */ (gnd),
	.a3 /* IN */ (rdcl_1),
	.s0 /* IN */ (shen),
	.s1 /* IN */ (co_0)
);
mx4 nrdc_from_1_to_3_inst_1
(
	.z /* OUT */ (nrdc_2),
	.a0 /* IN */ (gnd),
	.a1 /* IN */ (rdc_2),
	.a2 /* IN */ (gnd),
	.a3 /* IN */ (rdcl_2),
	.s0 /* IN */ (shen),
	.s1 /* IN */ (co_1)
);
mx4 nrdc_from_1_to_3_inst_2
(
	.z /* OUT */ (nrdc_3),
	.a0 /* IN */ (gnd),
	.a1 /* IN */ (rdc_3),
	.a2 /* IN */ (gnd),
	.a3 /* IN */ (rdcl_3),
	.s0 /* IN */ (shen),
	.s1 /* IN */ (co_2)
);

// UART2.NET (307) - nrdc[0] : mx2g
mx2g nrdc_index_0_inst
(
	.z /* OUT */ (nrdc_0),
	.a0 /* IN */ (rdc_0),
	.a1 /* IN */ (rdcl_0),
	.s /* IN */ (ci_0),
	.gn /* IN */ (shenl)
);

// UART2.NET (309) - co[2] : an3
assign co_2 = co_1 & rdc_2 & rxen;

// UART2.NET (310) - co[1] : an3
assign co_1 = co_0 & rdc_1 & rxen;

// UART2.NET (311) - co[0] : an2
assign co_0 = rdc_0 & rxen;

// UART2.NET (312) - ci[0] : an2
assign ci_0 = shen & rxen;

// UART2.NET (313) - tc : fd1
fd1 tc_inst
(
	.q /* OUT */ (tc),
	.qn /* OUT */ (tcl),
	.d /* IN */ (ntc),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (314) - ntc : an6
assign ntc = resetl & rdc_3 & rdcl_2 & rdcl_1 & rdc_0 & vcc;

// UART2.NET (324) - rpar : fd1
fd1 rpar_inst
(
	.q /* OUT */ (rpar),
	.qn /* OUT */ (rparl),
	.d /* IN */ (nrpar),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (325) - nrpar : nd4
assign nrpar = ~(rpa & rpb & rpc & rpd);

// UART2.NET (326) - rpa : nd6
assign rpa = ~(resetl & paren & rxen & shenl & even & vcc);

// UART2.NET (327) - rpb : nd6
assign rpb = ~(resetl & paren & rxen & shen & rpar & rxinsl);

// UART2.NET (328) - rpc : nd6
assign rpc = ~(resetl & paren & rxen & shen & rparl & rxins);

// UART2.NET (329) - rpd : nd4
assign rpd = ~(resetl & paren & rxenl & rpar);

// UART2.NET (335) - pe : fd1
fd1 pe_inst
(
	.q /* OUT */ (pe_obuf),
	.qn /* OUT */ (pel),
	.d /* IN */ (npe),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (336) - npe : nd2
assign npe = ~(pea & peb);

// UART2.NET (337) - pea : nd4
assign pea = ~(resetl & tfr & rpar & pel);

// UART2.NET (338) - peb : nd3
assign peb = ~(resetl & pe_obuf & clr_errl);

// UART2.NET (347) - fe : fd1
fd1 fe_inst
(
	.q /* OUT */ (fe_obuf),
	.qn /* OUT */ (fel),
	.d /* IN */ (nfe),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (348) - nfe : an6
assign nfe = fea & feb & fec & resetl & clr_errl & vcc;

// UART2.NET (349) - fea : nd2
assign fea = ~(feaa & feab);

// UART2.NET (350) - feb : nd3
assign feb = ~(fel & tfr & rsr_9);

// UART2.NET (351) - fec : nd2
assign fec = ~(tfrl & fel);

// UART2.NET (353) - feaa : an6
assign feaa = fel & tfr & rsrl_0 & rsrl_1 & rsrl_2 & rsrl_3;

// UART2.NET (354) - feab : an6
assign feab = rsrl_4 & rsrl_5 & rsrl_6 & rsrl_7 & rsrl_8 & rsrl_9;

// UART2.NET (366) - oe : fd1
fd1 oe_inst
(
	.q /* OUT */ (oe_obuf),
	.qn /* OUT */ (oel),
	.d /* IN */ (noe),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (367) - noe : nd2
assign noe = ~(orea & oreb);

// UART2.NET (368) - orea : nd6
assign orea = ~(resetl & clr_errl & oel & rbf_obuf & tfr & vcc);

// UART2.NET (369) - oreb : nd3
assign oreb = ~(resetl & clr_errl & oe_obuf);

// UART2.NET (376) - error : or3
assign error_obuf = pe_obuf | oe_obuf | fe_obuf;

// UART2.NET (377) - errorl : iv
assign errorl = ~error_obuf;

// UART2.NET (387) - rbf : fd2q
fd2q rbf_inst
(
	.q /* OUT */ (rbf_obuf),
	.d /* IN */ (nnrbf),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (388) - nnrbf : an2
assign nnrbf = nrbf & rxbrkl;

// UART2.NET (389) - nrbf : nd2
assign nrbf = ~(tfrl & rbfa);

// UART2.NET (390) - rbfa : nd2
assign rbfa = ~(rbf_obuf & dataccl);

// UART2.NET (393) - datacc : nd2
assign dataccl = ~(rdsdl & rds);

// UART2.NET (394) - rds : fd1q
fd1q rds_inst
(
	.q /* OUT */ (rds),
	.d /* IN */ (u2drd),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (395) - rdsd : fd1
fd1 rdsd_inst
(
	.q /* OUT */ (rdsd),
	.qn /* OUT */ (rdsdl),
	.d /* IN */ (rds),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (396) - urdsd : dummy
endmodule
/* verilator lint_on LITENDIAN */
