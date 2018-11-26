/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_uart2
(
	input resetl,
	input clk,
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
	input u2drd,
	input u2dwr,
	input u2strd,
	input u2ctwr,
	input serin,
	output serout,
	output uint,
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
wire gnd;
wire bx16;
wire txbrk;
wire clr_err;
wire nclr_err;
wire rinten;
wire tinten;
wire rxpol;
wire txpol;
wire paren;
wire even;
wire error;
wire oe;
wire fe;
wire pe;
wire tbe;
wire rbf;
wire rintens;
wire tintens;
wire fep;
wire oep;
wire pep;
wire rbfp;
wire tbep;
wire feq;
wire feqdl;
wire feqd;
wire peq;
wire peqdl;
wire peqd;
wire oeq;
wire oeqdl;
wire oeqd;
wire rbfq;
wire rbfqdl;
wire rbfqd;
wire tbeq;
wire tbeqdl;
wire tbeqd;
wire ts_pe_135_a0_out;
wire ts_pe_135_a0_oe;
wire ts_pe_135_a0_in;
wire ts_pe_135_a1_out;
wire ts_pe_135_a1_oe;
wire ts_pe_135_a1_in;
wire ts_pe_135_a2_out;
wire ts_pe_135_a2_oe;
wire ts_pe_135_a2_in;
wire ts_pe_136_a0_out;
wire ts_pe_136_a0_oe;
wire ts_pe_136_a0_in;
wire ts_pe_136_a1_out;
wire ts_pe_136_a1_oe;
wire ts_pe_136_a1_in;
wire ts_pe_136_a2_out;
wire ts_pe_136_a2_oe;
wire ts_pe_136_a2_in;
wire ts_pe_137_a0_out;
wire ts_pe_137_a0_oe;
wire ts_pe_137_a0_in;
wire ts_pe_137_a1_out;
wire ts_pe_137_a1_oe;
wire ts_pe_137_a1_in;
wire ts_pe_137_a2_out;
wire ts_pe_137_a2_oe;
wire ts_pe_137_a2_in;
wire ts_pe_138_a0_out;
wire ts_pe_138_a0_oe;
wire ts_pe_138_a0_in;
wire ts_pe_138_a1_out;
wire ts_pe_138_a1_oe;
wire ts_pe_138_a1_in;
wire ts_pe_138_a2_out;
wire ts_pe_138_a2_oe;
wire ts_pe_138_a2_in;
wire ts_pe_139_a0_out;
wire ts_pe_139_a0_oe;
wire ts_pe_139_a0_in;
wire ts_pe_139_a1_out;
wire ts_pe_139_a1_oe;
wire ts_pe_139_a1_in;
wire ts_pe_139_a2_out;
wire ts_pe_139_a2_oe;
wire ts_pe_139_a2_in;
wire ts_pe_140_a0_out;
wire ts_pe_140_a0_oe;
wire ts_pe_140_a0_in;
wire ts_pe_140_a1_out;
wire ts_pe_140_a1_oe;
wire ts_pe_140_a1_in;
wire ts_pe_140_a2_out;
wire ts_pe_140_a2_oe;
wire ts_pe_140_a2_in;
wire ts_pe_141_a0_out;
wire ts_pe_141_a0_oe;
wire ts_pe_141_a0_in;
wire ts_pe_141_a1_out;
wire ts_pe_141_a1_oe;
wire ts_pe_141_a1_in;
wire ts_pe_141_a2_out;
wire ts_pe_141_a2_oe;
wire ts_pe_141_a2_in;
wire ts_pe_142_a0_out;
wire ts_pe_142_a0_oe;
wire ts_pe_142_a0_in;
wire ts_pe_142_a1_out;
wire ts_pe_142_a1_oe;
wire ts_pe_142_a1_in;
wire ts_pe_142_a2_out;
wire ts_pe_142_a2_oe;
wire ts_pe_142_a2_in;
wire ts_pe_143_a0_out;
wire ts_pe_143_a0_oe;
wire ts_pe_143_a0_in;
wire ts_pe_143_a1_out;
wire ts_pe_143_a1_oe;
wire ts_pe_143_a1_in;
wire ts_pe_143_a2_out;
wire ts_pe_143_a2_oe;
wire ts_pe_143_a2_in;
wire ts_pe_144_a0_out;
wire ts_pe_144_a0_oe;
wire ts_pe_144_a0_in;
wire ts_pe_144_a1_out;
wire ts_pe_144_a1_oe;
wire ts_pe_144_a1_in;
wire ts_pe_144_a2_out;
wire ts_pe_144_a2_oe;
wire ts_pe_144_a2_in;
wire ts_pe_145_a0_out;
wire ts_pe_145_a0_oe;
wire ts_pe_145_a0_in;
wire ts_pe_145_a1_out;
wire ts_pe_145_a1_oe;
wire ts_pe_145_a1_in;
wire ts_pe_145_a2_out;
wire ts_pe_145_a2_oe;
wire ts_pe_145_a2_in;
wire ts_pe_146_a0_out;
wire ts_pe_146_a0_oe;
wire ts_pe_146_a0_in;
wire ts_pe_146_a1_out;
wire ts_pe_146_a1_oe;
wire ts_pe_146_a1_in;
wire ts_pe_146_a2_out;
wire ts_pe_146_a2_oe;
wire ts_pe_146_a2_in;
wire ts_pe_147_a0_out;
wire ts_pe_147_a0_oe;
wire ts_pe_147_a0_in;
wire ts_pe_147_a1_out;
wire ts_pe_147_a1_oe;
wire ts_pe_147_a1_in;
wire ts_pe_147_a2_out;
wire ts_pe_147_a2_oe;
wire ts_pe_147_a2_in;
wire ts_pe_148_a0_out;
wire ts_pe_148_a0_oe;
wire ts_pe_148_a0_in;
wire ts_pe_148_a1_out;
wire ts_pe_148_a1_oe;
wire ts_pe_148_a1_in;
wire ts_pe_148_a2_out;
wire ts_pe_148_a2_oe;
wire ts_pe_148_a2_in;
wire ts_pe_149_a0_out;
wire ts_pe_149_a0_oe;
wire ts_pe_149_a0_in;
wire ts_pe_149_a1_out;
wire ts_pe_149_a1_oe;
wire ts_pe_149_a1_in;
wire ts_pe_149_a2_out;
wire ts_pe_149_a2_oe;
wire ts_pe_149_a2_in;
wire ts_pe_150_a0_out;
wire ts_pe_150_a0_oe;
wire ts_pe_150_a0_in;
wire ts_pe_150_a1_out;
wire ts_pe_150_a1_oe;
wire ts_pe_150_a1_in;
wire ts_pe_150_a2_out;
wire ts_pe_150_a2_oe;
wire ts_pe_150_a2_in;

// UART2.NET (20) - gnd : tie0
assign gnd = 1'b0;

// UART2.NET (35) - u2prscl : u2pscl
j_u2pscl u2prscl_inst
(
	.bx16 /* OUT */ (bx16),
	.din_0 /* IN */ (din_0),
	.din_1 /* IN */ (din_1),
	.din_2 /* IN */ (din_2),
	.din_3 /* IN */ (din_3),
	.din_4 /* IN */ (din_4),
	.din_5 /* IN */ (din_5),
	.din_6 /* IN */ (din_6),
	.din_7 /* IN */ (din_7),
	.din_8 /* IN */ (din_8),
	.din_9 /* IN */ (din_9),
	.din_10 /* IN */ (din_10),
	.din_11 /* IN */ (din_11),
	.din_12 /* IN */ (din_12),
	.din_13 /* IN */ (din_13),
	.din_14 /* IN */ (din_14),
	.din_15 /* IN */ (din_15),
	.u2psclw /* IN */ (u2psclw),
	.u2psclr /* IN */ (u2psclr),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.dr_0_out /* BUS */ (ts_pe_135_a0_out),
	.dr_0_oe /* BUS */ (ts_pe_135_a0_oe),
	.dr_0_in /* BUS */ (ts_pe_135_a0_in),
	.dr_1_out /* BUS */ (ts_pe_136_a0_out),
	.dr_1_oe /* BUS */ (ts_pe_136_a0_oe),
	.dr_1_in /* BUS */ (ts_pe_136_a0_in),
	.dr_2_out /* BUS */ (ts_pe_137_a0_out),
	.dr_2_oe /* BUS */ (ts_pe_137_a0_oe),
	.dr_2_in /* BUS */ (ts_pe_137_a0_in),
	.dr_3_out /* BUS */ (ts_pe_138_a0_out),
	.dr_3_oe /* BUS */ (ts_pe_138_a0_oe),
	.dr_3_in /* BUS */ (ts_pe_138_a0_in),
	.dr_4_out /* BUS */ (ts_pe_139_a0_out),
	.dr_4_oe /* BUS */ (ts_pe_139_a0_oe),
	.dr_4_in /* BUS */ (ts_pe_139_a0_in),
	.dr_5_out /* BUS */ (ts_pe_140_a0_out),
	.dr_5_oe /* BUS */ (ts_pe_140_a0_oe),
	.dr_5_in /* BUS */ (ts_pe_140_a0_in),
	.dr_6_out /* BUS */ (ts_pe_141_a0_out),
	.dr_6_oe /* BUS */ (ts_pe_141_a0_oe),
	.dr_6_in /* BUS */ (ts_pe_141_a0_in),
	.dr_7_out /* BUS */ (ts_pe_142_a0_out),
	.dr_7_oe /* BUS */ (ts_pe_142_a0_oe),
	.dr_7_in /* BUS */ (ts_pe_142_a0_in),
	.dr_8_out /* BUS */ (ts_pe_143_a0_out),
	.dr_8_oe /* BUS */ (ts_pe_143_a0_oe),
	.dr_8_in /* BUS */ (ts_pe_143_a0_in),
	.dr_9_out /* BUS */ (ts_pe_144_a0_out),
	.dr_9_oe /* BUS */ (ts_pe_144_a0_oe),
	.dr_9_in /* BUS */ (ts_pe_144_a0_in),
	.dr_10_out /* BUS */ (ts_pe_145_a0_out),
	.dr_10_oe /* BUS */ (ts_pe_145_a0_oe),
	.dr_10_in /* BUS */ (ts_pe_145_a0_in),
	.dr_11_out /* BUS */ (ts_pe_146_a0_out),
	.dr_11_oe /* BUS */ (ts_pe_146_a0_oe),
	.dr_11_in /* BUS */ (ts_pe_146_a0_in),
	.dr_12_out /* BUS */ (ts_pe_147_a0_out),
	.dr_12_oe /* BUS */ (ts_pe_147_a0_oe),
	.dr_12_in /* BUS */ (ts_pe_147_a0_in),
	.dr_13_out /* BUS */ (ts_pe_148_a0_out),
	.dr_13_oe /* BUS */ (ts_pe_148_a0_oe),
	.dr_13_in /* BUS */ (ts_pe_148_a0_in),
	.dr_14_out /* BUS */ (ts_pe_149_a0_out),
	.dr_14_oe /* BUS */ (ts_pe_149_a0_oe),
	.dr_14_in /* BUS */ (ts_pe_149_a0_in),
	.dr_15_out /* BUS */ (ts_pe_150_a0_out),
	.dr_15_oe /* BUS */ (ts_pe_150_a0_oe),
	.dr_15_in /* BUS */ (ts_pe_150_a0_in),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (63) - txbrk : ldp2q
ldp2q txbrk_inst
(
	.q /* OUT */ (txbrk),
	.d /* IN */ (din_14),
	.g /* IN */ (u2ctwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (64) - clr_err : fd1q
fd1q clr_err_inst
(
	.q /* OUT */ (clr_err),
	.d /* IN */ (nclr_err),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (65) - nclr_err : an2
assign nclr_err = din_6 & u2ctwr;

// UART2.NET (66) - rinten : ldp2q
ldp2q rinten_inst
(
	.q /* OUT */ (rinten),
	.d /* IN */ (din_5),
	.g /* IN */ (u2ctwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (67) - tinten : ldp2q
ldp2q tinten_inst
(
	.q /* OUT */ (tinten),
	.d /* IN */ (din_4),
	.g /* IN */ (u2ctwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (68) - rxpol : ldp2q
ldp2q rxpol_inst
(
	.q /* OUT */ (rxpol),
	.d /* IN */ (din_3),
	.g /* IN */ (u2ctwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (69) - txpol : ldp2q
ldp2q txpol_inst
(
	.q /* OUT */ (txpol),
	.d /* IN */ (din_2),
	.g /* IN */ (u2ctwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (70) - paren : ldp2q
ldp2q paren_inst
(
	.q /* OUT */ (paren),
	.d /* IN */ (din_1),
	.g /* IN */ (u2ctwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (71) - even : ldp2q
ldp2q even_inst
(
	.q /* OUT */ (even),
	.d /* IN */ (din_0),
	.g /* IN */ (u2ctwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (75) - rerror : ts
assign ts_pe_150_a1_out = error;
assign ts_pe_150_a1_oe = u2strd;

// UART2.NET (76) - rtxbrk : ts
assign ts_pe_149_a1_out = txbrk;
assign ts_pe_149_a1_oe = u2strd;

// UART2.NET (77) - rserin : ts
assign ts_pe_148_a1_out = serin;
assign ts_pe_148_a1_oe = u2strd;

// UART2.NET (78) - dum : ts
assign ts_pe_147_a1_out = gnd;
assign ts_pe_147_a1_oe = u2strd;

// UART2.NET (79) - roe : ts
assign ts_pe_146_a1_out = oe;
assign ts_pe_146_a1_oe = u2strd;

// UART2.NET (80) - rfe : ts
assign ts_pe_145_a1_out = fe;
assign ts_pe_145_a1_oe = u2strd;

// UART2.NET (81) - rpe : ts
assign ts_pe_144_a1_out = pe;
assign ts_pe_144_a1_oe = u2strd;

// UART2.NET (82) - rtbe : ts
assign ts_pe_143_a1_out = tbe;
assign ts_pe_143_a1_oe = u2strd;

// UART2.NET (83) - rrbf : ts
assign ts_pe_142_a1_out = rbf;
assign ts_pe_142_a1_oe = u2strd;

// UART2.NET (84) - ntused[2] : ts
assign ts_pe_141_a1_out = gnd;
assign ts_pe_141_a1_oe = u2strd;

// UART2.NET (85) - rrinten : ts
assign ts_pe_140_a1_out = rinten;
assign ts_pe_140_a1_oe = u2strd;

// UART2.NET (86) - rtinten : ts
assign ts_pe_139_a1_out = tinten;
assign ts_pe_139_a1_oe = u2strd;

// UART2.NET (87) - rrxpol : ts
assign ts_pe_138_a1_out = rxpol;
assign ts_pe_138_a1_oe = u2strd;

// UART2.NET (88) - rtxpol : ts
assign ts_pe_137_a1_out = txpol;
assign ts_pe_137_a1_oe = u2strd;

// UART2.NET (89) - rparen : ts
assign ts_pe_136_a1_out = paren;
assign ts_pe_136_a1_oe = u2strd;

// UART2.NET (90) - reven : ts
assign ts_pe_135_a1_out = even;
assign ts_pe_135_a1_oe = u2strd;

// UART2.NET (94) - txer : txer
j_txer txer_inst
(
	.serout /* OUT */ (serout),
	.tbe /* OUT */ (tbe),
	.din_0 /* IN */ (din_0),
	.din_1 /* IN */ (din_1),
	.din_2 /* IN */ (din_2),
	.din_3 /* IN */ (din_3),
	.din_4 /* IN */ (din_4),
	.din_5 /* IN */ (din_5),
	.din_6 /* IN */ (din_6),
	.din_7 /* IN */ (din_7),
	.din_8 /* IN */ (din_8),
	.din_9 /* IN */ (din_9),
	.din_10 /* IN */ (din_10),
	.din_11 /* IN */ (din_11),
	.din_12 /* IN */ (din_12),
	.din_13 /* IN */ (din_13),
	.din_14 /* IN */ (din_14),
	.din_15 /* IN */ (din_15),
	.u2dwr /* IN */ (u2dwr),
	.paren /* IN */ (paren),
	.even /* IN */ (even),
	.bx16 /* IN */ (bx16),
	.txpol /* IN */ (txpol),
	.txbrk /* IN */ (txbrk),
	.resetl /* IN */ (resetl),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (99) - rxer : rxer
j_rxer rxer_inst
(
	.rbf /* OUT */ (rbf),
	.pe /* OUT */ (pe),
	.oe /* OUT */ (oe),
	.fe /* OUT */ (fe),
	.error /* OUT */ (error),
	.clr_err /* IN */ (clr_err),
	.paren /* IN */ (paren),
	.even /* IN */ (even),
	.u2drd /* IN */ (u2drd),
	.rxpol /* IN */ (rxpol),
	.serin /* IN */ (serin),
	.resetl /* IN */ (resetl),
	.bx16 /* IN */ (bx16),
	.clk /* IN */ (clk),
	.dr_0_out /* BUS */ (ts_pe_135_a2_out),
	.dr_0_oe /* BUS */ (ts_pe_135_a2_oe),
	.dr_0_in /* BUS */ (ts_pe_135_a2_in),
	.dr_1_out /* BUS */ (ts_pe_136_a2_out),
	.dr_1_oe /* BUS */ (ts_pe_136_a2_oe),
	.dr_1_in /* BUS */ (ts_pe_136_a2_in),
	.dr_2_out /* BUS */ (ts_pe_137_a2_out),
	.dr_2_oe /* BUS */ (ts_pe_137_a2_oe),
	.dr_2_in /* BUS */ (ts_pe_137_a2_in),
	.dr_3_out /* BUS */ (ts_pe_138_a2_out),
	.dr_3_oe /* BUS */ (ts_pe_138_a2_oe),
	.dr_3_in /* BUS */ (ts_pe_138_a2_in),
	.dr_4_out /* BUS */ (ts_pe_139_a2_out),
	.dr_4_oe /* BUS */ (ts_pe_139_a2_oe),
	.dr_4_in /* BUS */ (ts_pe_139_a2_in),
	.dr_5_out /* BUS */ (ts_pe_140_a2_out),
	.dr_5_oe /* BUS */ (ts_pe_140_a2_oe),
	.dr_5_in /* BUS */ (ts_pe_140_a2_in),
	.dr_6_out /* BUS */ (ts_pe_141_a2_out),
	.dr_6_oe /* BUS */ (ts_pe_141_a2_oe),
	.dr_6_in /* BUS */ (ts_pe_141_a2_in),
	.dr_7_out /* BUS */ (ts_pe_142_a2_out),
	.dr_7_oe /* BUS */ (ts_pe_142_a2_oe),
	.dr_7_in /* BUS */ (ts_pe_142_a2_in),
	.dr_8_out /* BUS */ (ts_pe_143_a2_out),
	.dr_8_oe /* BUS */ (ts_pe_143_a2_oe),
	.dr_8_in /* BUS */ (ts_pe_143_a2_in),
	.dr_9_out /* BUS */ (ts_pe_144_a2_out),
	.dr_9_oe /* BUS */ (ts_pe_144_a2_oe),
	.dr_9_in /* BUS */ (ts_pe_144_a2_in),
	.dr_10_out /* BUS */ (ts_pe_145_a2_out),
	.dr_10_oe /* BUS */ (ts_pe_145_a2_oe),
	.dr_10_in /* BUS */ (ts_pe_145_a2_in),
	.dr_11_out /* BUS */ (ts_pe_146_a2_out),
	.dr_11_oe /* BUS */ (ts_pe_146_a2_oe),
	.dr_11_in /* BUS */ (ts_pe_146_a2_in),
	.dr_12_out /* BUS */ (ts_pe_147_a2_out),
	.dr_12_oe /* BUS */ (ts_pe_147_a2_oe),
	.dr_12_in /* BUS */ (ts_pe_147_a2_in),
	.dr_13_out /* BUS */ (ts_pe_148_a2_out),
	.dr_13_oe /* BUS */ (ts_pe_148_a2_oe),
	.dr_13_in /* BUS */ (ts_pe_148_a2_in),
	.dr_14_out /* BUS */ (ts_pe_149_a2_out),
	.dr_14_oe /* BUS */ (ts_pe_149_a2_oe),
	.dr_14_in /* BUS */ (ts_pe_149_a2_in),
	.dr_15_out /* BUS */ (ts_pe_150_a2_out),
	.dr_15_oe /* BUS */ (ts_pe_150_a2_oe),
	.dr_15_in /* BUS */ (ts_pe_150_a2_in),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (105) - rintens : fd1q
fd1q rintens_inst
(
	.q /* OUT */ (rintens),
	.d /* IN */ (rinten),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (106) - tintens : fd1q
fd1q tintens_inst
(
	.q /* OUT */ (tintens),
	.d /* IN */ (tinten),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (108) - uint : or6
assign uint = fep | oep | pep | rbfp | tbep | gnd;

// UART2.NET (110) - fep : an2
assign fep = feq & feqdl;

// UART2.NET (111) - feq : an2
assign feq = fe & rintens;

// UART2.NET (112) - feqd : fd1
fd1 feqd_inst
(
	.q /* OUT */ (feqd),
	.qn /* OUT */ (feqdl),
	.d /* IN */ (feq),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (113) - feqdu : dummy

// UART2.NET (115) - pep : an2
assign pep = peq & peqdl;

// UART2.NET (116) - peq : an2
assign peq = pe & rintens;

// UART2.NET (117) - peqd : fd1
fd1 peqd_inst
(
	.q /* OUT */ (peqd),
	.qn /* OUT */ (peqdl),
	.d /* IN */ (peq),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (118) - peqdu : dummy

// UART2.NET (120) - oep : an2
assign oep = oeq & oeqdl;

// UART2.NET (121) - oeq : an2
assign oeq = oe & rintens;

// UART2.NET (122) - oeqd : fd1
fd1 oeqd_inst
(
	.q /* OUT */ (oeqd),
	.qn /* OUT */ (oeqdl),
	.d /* IN */ (oeq),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (123) - oedqu : dummy

// UART2.NET (125) - rbfp : an2
assign rbfp = rbfq & rbfqdl;

// UART2.NET (126) - rbfq : an2
assign rbfq = rbf & rintens;

// UART2.NET (127) - rbfqd : fd1
fd1 rbfqd_inst
(
	.q /* OUT */ (rbfqd),
	.qn /* OUT */ (rbfqdl),
	.d /* IN */ (rbfq),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (128) - rbfqdu : dummy

// UART2.NET (130) - tbep : an2
assign tbep = tbeq & tbeqdl;

// UART2.NET (131) - tbeq : an2
assign tbeq = tbe & tintens;

// UART2.NET (132) - tbeqd : fd1
fd1 tbeqd_inst
(
	.q /* OUT */ (tbeqd),
	.qn /* OUT */ (tbeqdl),
	.d /* IN */ (tbeq),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// UART2.NET (133) - tbeqdu : dummy

// --- Compiler-generated PE for BUS dr[0]
assign dr_0_out = (ts_pe_135_a0_oe & ts_pe_135_a0_out ) | (ts_pe_135_a1_oe & ts_pe_135_a1_out ) | (ts_pe_135_a2_oe & ts_pe_135_a2_out ) | 1'b0;
assign dr_0_oe = ts_pe_135_a0_oe | ts_pe_135_a1_oe | ts_pe_135_a2_oe;
assign ts_pe_135_a0_in = dr_0_in;
assign ts_pe_135_a1_in = dr_0_in;
assign ts_pe_135_a2_in = dr_0_in;

// --- Compiler-generated PE for BUS dr[1]
assign dr_1_out = (ts_pe_136_a0_oe & ts_pe_136_a0_out ) | (ts_pe_136_a1_oe & ts_pe_136_a1_out ) | (ts_pe_136_a2_oe & ts_pe_136_a2_out ) | 1'b0;
assign dr_1_oe = ts_pe_136_a0_oe | ts_pe_136_a1_oe | ts_pe_136_a2_oe;
assign ts_pe_136_a0_in = dr_1_in;
assign ts_pe_136_a1_in = dr_1_in;
assign ts_pe_136_a2_in = dr_1_in;

// --- Compiler-generated PE for BUS dr[2]
assign dr_2_out = (ts_pe_137_a0_oe & ts_pe_137_a0_out ) | (ts_pe_137_a1_oe & ts_pe_137_a1_out ) | (ts_pe_137_a2_oe & ts_pe_137_a2_out ) | 1'b0;
assign dr_2_oe = ts_pe_137_a0_oe | ts_pe_137_a1_oe | ts_pe_137_a2_oe;
assign ts_pe_137_a0_in = dr_2_in;
assign ts_pe_137_a1_in = dr_2_in;
assign ts_pe_137_a2_in = dr_2_in;

// --- Compiler-generated PE for BUS dr[3]
assign dr_3_out = (ts_pe_138_a0_oe & ts_pe_138_a0_out ) | (ts_pe_138_a1_oe & ts_pe_138_a1_out ) | (ts_pe_138_a2_oe & ts_pe_138_a2_out ) | 1'b0;
assign dr_3_oe = ts_pe_138_a0_oe | ts_pe_138_a1_oe | ts_pe_138_a2_oe;
assign ts_pe_138_a0_in = dr_3_in;
assign ts_pe_138_a1_in = dr_3_in;
assign ts_pe_138_a2_in = dr_3_in;

// --- Compiler-generated PE for BUS dr[4]
assign dr_4_out = (ts_pe_139_a0_oe & ts_pe_139_a0_out ) | (ts_pe_139_a1_oe & ts_pe_139_a1_out ) | (ts_pe_139_a2_oe & ts_pe_139_a2_out ) | 1'b0;
assign dr_4_oe = ts_pe_139_a0_oe | ts_pe_139_a1_oe | ts_pe_139_a2_oe;
assign ts_pe_139_a0_in = dr_4_in;
assign ts_pe_139_a1_in = dr_4_in;
assign ts_pe_139_a2_in = dr_4_in;

// --- Compiler-generated PE for BUS dr[5]
assign dr_5_out = (ts_pe_140_a0_oe & ts_pe_140_a0_out ) | (ts_pe_140_a1_oe & ts_pe_140_a1_out ) | (ts_pe_140_a2_oe & ts_pe_140_a2_out ) | 1'b0;
assign dr_5_oe = ts_pe_140_a0_oe | ts_pe_140_a1_oe | ts_pe_140_a2_oe;
assign ts_pe_140_a0_in = dr_5_in;
assign ts_pe_140_a1_in = dr_5_in;
assign ts_pe_140_a2_in = dr_5_in;

// --- Compiler-generated PE for BUS dr[6]
assign dr_6_out = (ts_pe_141_a0_oe & ts_pe_141_a0_out ) | (ts_pe_141_a1_oe & ts_pe_141_a1_out ) | (ts_pe_141_a2_oe & ts_pe_141_a2_out ) | 1'b0;
assign dr_6_oe = ts_pe_141_a0_oe | ts_pe_141_a1_oe | ts_pe_141_a2_oe;
assign ts_pe_141_a0_in = dr_6_in;
assign ts_pe_141_a1_in = dr_6_in;
assign ts_pe_141_a2_in = dr_6_in;

// --- Compiler-generated PE for BUS dr[7]
assign dr_7_out = (ts_pe_142_a0_oe & ts_pe_142_a0_out ) | (ts_pe_142_a1_oe & ts_pe_142_a1_out ) | (ts_pe_142_a2_oe & ts_pe_142_a2_out ) | 1'b0;
assign dr_7_oe = ts_pe_142_a0_oe | ts_pe_142_a1_oe | ts_pe_142_a2_oe;
assign ts_pe_142_a0_in = dr_7_in;
assign ts_pe_142_a1_in = dr_7_in;
assign ts_pe_142_a2_in = dr_7_in;

// --- Compiler-generated PE for BUS dr[8]
assign dr_8_out = (ts_pe_143_a0_oe & ts_pe_143_a0_out ) | (ts_pe_143_a1_oe & ts_pe_143_a1_out ) | (ts_pe_143_a2_oe & ts_pe_143_a2_out ) | 1'b0;
assign dr_8_oe = ts_pe_143_a0_oe | ts_pe_143_a1_oe | ts_pe_143_a2_oe;
assign ts_pe_143_a0_in = dr_8_in;
assign ts_pe_143_a1_in = dr_8_in;
assign ts_pe_143_a2_in = dr_8_in;

// --- Compiler-generated PE for BUS dr[9]
assign dr_9_out = (ts_pe_144_a0_oe & ts_pe_144_a0_out ) | (ts_pe_144_a1_oe & ts_pe_144_a1_out ) | (ts_pe_144_a2_oe & ts_pe_144_a2_out ) | 1'b0;
assign dr_9_oe = ts_pe_144_a0_oe | ts_pe_144_a1_oe | ts_pe_144_a2_oe;
assign ts_pe_144_a0_in = dr_9_in;
assign ts_pe_144_a1_in = dr_9_in;
assign ts_pe_144_a2_in = dr_9_in;

// --- Compiler-generated PE for BUS dr[10]
assign dr_10_out = (ts_pe_145_a0_oe & ts_pe_145_a0_out ) | (ts_pe_145_a1_oe & ts_pe_145_a1_out ) | (ts_pe_145_a2_oe & ts_pe_145_a2_out ) | 1'b0;
assign dr_10_oe = ts_pe_145_a0_oe | ts_pe_145_a1_oe | ts_pe_145_a2_oe;
assign ts_pe_145_a0_in = dr_10_in;
assign ts_pe_145_a1_in = dr_10_in;
assign ts_pe_145_a2_in = dr_10_in;

// --- Compiler-generated PE for BUS dr[11]
assign dr_11_out = (ts_pe_146_a0_oe & ts_pe_146_a0_out ) | (ts_pe_146_a1_oe & ts_pe_146_a1_out ) | (ts_pe_146_a2_oe & ts_pe_146_a2_out ) | 1'b0;
assign dr_11_oe = ts_pe_146_a0_oe | ts_pe_146_a1_oe | ts_pe_146_a2_oe;
assign ts_pe_146_a0_in = dr_11_in;
assign ts_pe_146_a1_in = dr_11_in;
assign ts_pe_146_a2_in = dr_11_in;

// --- Compiler-generated PE for BUS dr[12]
assign dr_12_out = (ts_pe_147_a0_oe & ts_pe_147_a0_out ) | (ts_pe_147_a1_oe & ts_pe_147_a1_out ) | (ts_pe_147_a2_oe & ts_pe_147_a2_out ) | 1'b0;
assign dr_12_oe = ts_pe_147_a0_oe | ts_pe_147_a1_oe | ts_pe_147_a2_oe;
assign ts_pe_147_a0_in = dr_12_in;
assign ts_pe_147_a1_in = dr_12_in;
assign ts_pe_147_a2_in = dr_12_in;

// --- Compiler-generated PE for BUS dr[13]
assign dr_13_out = (ts_pe_148_a0_oe & ts_pe_148_a0_out ) | (ts_pe_148_a1_oe & ts_pe_148_a1_out ) | (ts_pe_148_a2_oe & ts_pe_148_a2_out ) | 1'b0;
assign dr_13_oe = ts_pe_148_a0_oe | ts_pe_148_a1_oe | ts_pe_148_a2_oe;
assign ts_pe_148_a0_in = dr_13_in;
assign ts_pe_148_a1_in = dr_13_in;
assign ts_pe_148_a2_in = dr_13_in;

// --- Compiler-generated PE for BUS dr[14]
assign dr_14_out = (ts_pe_149_a0_oe & ts_pe_149_a0_out ) | (ts_pe_149_a1_oe & ts_pe_149_a1_out ) | (ts_pe_149_a2_oe & ts_pe_149_a2_out ) | 1'b0;
assign dr_14_oe = ts_pe_149_a0_oe | ts_pe_149_a1_oe | ts_pe_149_a2_oe;
assign ts_pe_149_a0_in = dr_14_in;
assign ts_pe_149_a1_in = dr_14_in;
assign ts_pe_149_a2_in = dr_14_in;

// --- Compiler-generated PE for BUS dr[15]
assign dr_15_out = (ts_pe_150_a0_oe & ts_pe_150_a0_out ) | (ts_pe_150_a1_oe & ts_pe_150_a1_out ) | (ts_pe_150_a2_oe & ts_pe_150_a2_out ) | 1'b0;
assign dr_15_oe = ts_pe_150_a0_oe | ts_pe_150_a1_oe | ts_pe_150_a2_oe;
assign ts_pe_150_a0_in = dr_15_in;
assign ts_pe_150_a1_in = dr_15_in;
assign ts_pe_150_a2_in = dr_15_in;
endmodule
/* verilator lint_on LITENDIAN */
