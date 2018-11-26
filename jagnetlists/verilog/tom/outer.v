/* verilator lint_off LITENDIAN */
`include "defs.v"

module outer
(
	output gpu_dout_11_out,
	output gpu_dout_11_oe,
	input gpu_dout_11_in,
	output gpu_dout_12_out,
	output gpu_dout_12_oe,
	input gpu_dout_12_in,
	output gpu_dout_13_out,
	output gpu_dout_13_oe,
	input gpu_dout_13_in,
	output gpu_dout_14_out,
	output gpu_dout_14_oe,
	input gpu_dout_14_in,
	output gpu_dout_15_out,
	output gpu_dout_15_oe,
	input gpu_dout_15_in,
	output a1updatei,
	output a1fupdatei,
	output a2updatei,
	output blit_breq_0,
	output blit_breq_1,
	output blit_int,
	output instart,
	output sshftld,
	input active,
	input clk,
	input cmdld,
	input countld,
	input [0:31] gpu_din,
	input indone,
	input reset_n,
	input statrd,
	input stopped,
	input sys_clk // Generated
);
wire idle;
wire inner;
wire a1fupdate;
wire a1update;
wire a2update;
wire upda1f;
wire upda1;
wire upda2;
wire bushi;
wire bushi_n;
wire gpu_din_n_7;
wire goin;
wire go;
wire go_n;
wire indone_n;
wire outer0_n;
wire outer0;
wire upda1f_n;
wire upda1_n;
wire upda2_n;
wire idlet_0;
wire idlet_1;
wire idlet_2;
wire idle_n;
wire innert_0;
wire innert_1;
wire innert2t;
wire innert_2;
wire innert_3;
wire innert_4;
wire innert_5;
wire a1updt_0;
wire a1updt_1;
wire a2updt_0;
wire a2updt_1;
wire ocntena;
wire breqt_n;
wire idledt;
wire idled;
wire idled_n;

// Output buffers
wire a1updatei_obuf;
wire a1fupdatei_obuf;
wire a2updatei_obuf;
wire instart_obuf;


// Output buffers
assign a1updatei = a1updatei_obuf;
assign a1fupdatei = a1fupdatei_obuf;
assign a2updatei = a2updatei_obuf;
assign instart = instart_obuf;


// OUTER.NET (46) - stat[11] : ts
assign gpu_dout_11_out = idle;
assign gpu_dout_11_oe = statrd;

// OUTER.NET (47) - stat[12] : ts
assign gpu_dout_12_out = inner;
assign gpu_dout_12_oe = statrd;

// OUTER.NET (48) - stat[13] : ts
assign gpu_dout_13_out = a1fupdate;
assign gpu_dout_13_oe = statrd;

// OUTER.NET (49) - stat[14] : ts
assign gpu_dout_14_out = a1update;
assign gpu_dout_14_oe = statrd;

// OUTER.NET (50) - stat[15] : ts
assign gpu_dout_15_out = a2update;
assign gpu_dout_15_oe = statrd;

// OUTER.NET (54) - upda1f : fdsync
fdsync upda1f_inst
(
	.q /* OUT */ (upda1f),
	.d /* IN */ (gpu_din[8]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (55) - upda1 : fdsync
fdsync upda1_inst
(
	.q /* OUT */ (upda1),
	.d /* IN */ (gpu_din[9]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (56) - upda2 : fdsync
fdsync upda2_inst
(
	.q /* OUT */ (upda2),
	.d /* IN */ (gpu_din[10]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (60) - bushi : fdsync
fdsync bushi_inst
(
	.q /* OUT */ (bushi),
	.d /* IN */ (gpu_din[29]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (61) - bushi\ : iv
assign bushi_n = ~bushi;

// OUTER.NET (66) - gpu_data\[7] : iv
assign gpu_din_n_7 = ~gpu_din[7];

// OUTER.NET (67) - goin : an2
assign goin = cmdld & gpu_din_n_7;

// OUTER.NET (68) - go : fd1
fd1 go_inst
(
	.q /* OUT */ (go),
	.qn /* OUT */ (go_n),
	.d /* IN */ (goin),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (72) - indone\ : iv
assign indone_n = ~indone;

// OUTER.NET (73) - outer0\ : iv
assign outer0_n = ~outer0;

// OUTER.NET (74) - upda1f\ : iv
assign upda1f_n = ~upda1f;

// OUTER.NET (75) - upda1\ : iv
assign upda1_n = ~upda1;

// OUTER.NET (76) - upda2\ : iv
assign upda2_n = ~upda2;

// OUTER.NET (80) - idle0 : nd2
assign idlet_0 = ~(idle & go_n);

// OUTER.NET (81) - idle1 : nd3
assign idlet_1 = ~(inner & outer0 & indone);

// OUTER.NET (82) - idle2 : nd2
assign idlet_2 = ~(idlet_0 & idlet_1);

// OUTER.NET (83) - idle : fd4q
fd4q idle_inst
(
	.q /* OUT */ (idle),
	.d /* IN */ (idlet_2),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (84) - idle\ : iv
assign idle_n = ~idle;

// OUTER.NET (88) - inner0 : nd2
assign innert_0 = ~(idle & go);

// OUTER.NET (89) - inner1 : nd2
assign innert_1 = ~(inner & indone_n);

// OUTER.NET (90) - inner2t : an5
assign innert2t = inner & outer0_n & upda1f_n & upda1_n & upda2_n;

// OUTER.NET (92) - inner2 : nd2
assign innert_2 = ~(indone & innert2t);

// OUTER.NET (93) - inner3 : nd2
assign innert_3 = ~(a1update & upda2_n);

// OUTER.NET (94) - inner4 : iv
assign innert_4 = ~a2update;

// OUTER.NET (95) - inner5 : nd5
assign innert_5 = ~(innert_0 & innert_1 & innert_2 & innert_3 & innert_4);

// OUTER.NET (96) - inner : fd2q
fd2q inner_inst
(
	.q /* OUT */ (inner),
	.d /* IN */ (innert_5),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (100) - a1fupd0 : an4
assign a1fupdatei_obuf = inner & indone & outer0_n & upda1f;

// OUTER.NET (102) - a1fupdate : fd2q
fd2q a1fupdate_inst
(
	.q /* OUT */ (a1fupdate),
	.d /* IN */ (a1fupdatei_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (106) - a1upd0 : iv
assign a1updt_0 = ~a1fupdate;

// OUTER.NET (107) - a1upd1 : nd5
assign a1updt_1 = ~(inner & indone & outer0_n & upda1f_n & upda1);

// OUTER.NET (109) - a1upd2 : nd2
assign a1updatei_obuf = ~(a1updt_0 & a1updt_1);

// OUTER.NET (110) - a1update : fd2q
fd2q a1update_inst
(
	.q /* OUT */ (a1update),
	.d /* IN */ (a1updatei_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (114) - a2upd0 : nd2
assign a2updt_0 = ~(a1update & upda2);

// OUTER.NET (115) - a2upd1 : nd6
assign a2updt_1 = ~(inner & indone & outer0_n & upda1f_n & upda1_n & upda2);

// OUTER.NET (117) - a2upd2 : nd2
assign a2updatei_obuf = ~(a2updt_0 & a2updt_1);

// OUTER.NET (118) - a2update : fd2q
fd2q a2update_inst
(
	.q /* OUT */ (a2update),
	.d /* IN */ (a2updatei_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (125) - instart : nd4u
assign instart_obuf = ~(innert_0 & innert_2 & innert_3 & innert_4);

// OUTER.NET (129) - sshftld : fd1qm
fd1q sshftld_inst
(
	.q /* OUT */ (sshftld),
	.d /* IN */ (instart_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (134) - ocntena : join
assign ocntena = instart_obuf;

// OUTER.NET (139) - breqt : nr2
assign breqt_n = ~(idle_n | active);

// OUTER.NET (140) - blit_breq[0] : nr3
assign blit_breq_0 = ~(breqt_n | stopped | bushi);

// OUTER.NET (141) - blit_breq[1] : nr3
assign blit_breq_1 = ~(breqt_n | stopped | bushi_n);

// OUTER.NET (145) - outer_cnt : outer_cnt
outer_cnt outer_cnt_inst
(
	.outer0 /* OUT */ (outer0),
	.clk /* IN */ (clk),
	.countld /* IN */ (countld),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.ocntena /* IN */ (ocntena),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (156) - idledt : nr2
assign idledt = ~(idle_n | active);

// OUTER.NET (157) - idled : fd4q
fd4q idled_inst
(
	.q /* OUT */ (idled),
	.d /* IN */ (idledt),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (158) - idled\ : iv
assign idled_n = ~idled;

// OUTER.NET (159) - blit_int : an2
assign blit_int = idled_n & idledt;
endmodule
/* verilator lint_on LITENDIAN */
