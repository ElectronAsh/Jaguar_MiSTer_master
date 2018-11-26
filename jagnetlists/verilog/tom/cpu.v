/* verilator lint_off LITENDIAN */
`include "defs.v"

module cpu
(
	input sizin_0,
	input sizin_1,
	input rwin,
	input notack,
	input ack,
	input dreqin,
	input resetl,
	input clk_0,
	input intbm,
	input intbms,
	input m68k,
	input ba,
	input dbgl,
	output dtackl,
	output erd,
	output w_0_out,
	output w_0_oe,
	input w_0_in,
	output w_1_out,
	output w_1_oe,
	input w_1_in,
	output w_2_out,
	output w_2_oe,
	input w_2_in,
	output w_3_out,
	output w_3_oe,
	input w_3_in,
	output rw_out,
	output rw_oe,
	input rw_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	input sys_clk // Generated
);
wire w68k_1;
wire w68k_0;
wire bmcpu;
wire bm68k;
wire sizin_2;
wire xw_0;
wire xw_1;
wire xw_2;
wire gnd;
wire xp;
wire extbms;
wire dbg;
wire cmreq;
wire vcc;
wire q11;
wire d11;
wire q12;
wire d12;
wire q13;
wire d13;
wire idlei;
wire idle;
wire mt11a;
wire mt11b;
wire not68k;
wire mt11c;
wire lds;
wire mt11d;
wire uds;
wire mt111;
wire mt120;
wire mt121;
wire mt130;
wire mt13a;
wire mt13b;
wire mt13c;
wire mt13d;
wire readcycle;

// CPU.NET (31) - w68k[1] : nr2
assign w68k_1 = ~(sizin_0 | sizin_1);

// CPU.NET (32) - w68k[0] : iv
assign w68k_0 = ~w68k_1;

// CPU.NET (33) - bmcpu : iv
assign bmcpu = ~ba;

// CPU.NET (34) - bm68k : an2
assign bm68k = m68k & bmcpu;

// CPU.NET (35) - jsizin[2] : nr2
assign sizin_2 = ~(sizin_0 | sizin_1);

// CPU.NET (38) - xw[0] : mx2
assign xw_0 = (bm68k) ? w68k_0 : sizin_0;

// CPU.NET (39) - xw[1] : mx2
assign xw_1 = (bm68k) ? w68k_1 : sizin_1;

// CPU.NET (40) - xw[2] : mx2
assign xw_2 = (bm68k) ? gnd : sizin_2;

// CPU.NET (42) - xp : ivm
assign xp = ~intbm;

// CPU.NET (43) - extbms : ivm
assign extbms = ~intbms;

// CPU.NET (44) - dbg : iv
assign dbg = ~dbgl;

// CPU.NET (46) - w[0-2] : ts
assign w_0_out = xw_0;
assign w_0_oe = xp;
assign w_1_out = xw_1;
assign w_1_oe = xp;
assign w_2_out = xw_2;
assign w_2_oe = xp;

// CPU.NET (47) - w[3] : ts
assign w_3_out = gnd;
assign w_3_oe = xp;

// CPU.NET (48) - rw : ts
assign rw_out = rwin;
assign rw_oe = xp;

// CPU.NET (49) - mreq : tsm
assign mreq_out = cmreq;
assign mreq_oe = xp;

// CPU.NET (50) - justify : ts
assign justify_out = gnd;
assign justify_oe = xp;

// CPU.NET (51) - gnd : tie0
assign gnd = 1'b0;

// CPU.NET (52) - vcc : tie1
assign vcc = 1'b1;

// CPU.NET (74) - q11 : fd2q
fd2q q11_inst
(
	.q /* OUT */ (q11),
	.d /* IN */ (d11),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// CPU.NET (75) - q12 : fd2q
fd2q q12_inst
(
	.q /* OUT */ (q12),
	.d /* IN */ (d12),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// CPU.NET (76) - q13 : fd2q
fd2q q13_inst
(
	.q /* OUT */ (q13),
	.d /* IN */ (d13),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// CPU.NET (78) - idlei : nr3
assign idlei = ~(q11 | q12 | q13);

// CPU.NET (79) - idle : niv
assign idle = idlei;

// CPU.NET (81) - mt11a : nd3
assign mt11a = ~(dbg & dreqin & idle);

// CPU.NET (82) - mt11b : nd6
assign mt11b = ~(bmcpu & dreqin & not68k & extbms & vcc & idle);

// CPU.NET (83) - mt11c : nd6
assign mt11c = ~(bmcpu & dreqin & lds & m68k & extbms & idle);

// CPU.NET (84) - mt11d : nd6
assign mt11d = ~(bmcpu & dreqin & uds & m68k & extbms & idle);

// CPU.NET (85) - mt111 : nd2
assign mt111 = ~(q11 & notack);

// CPU.NET (86) - d11 : nd6
assign d11 = ~(mt11a & mt11b & mt11c & mt11d & vcc & mt111);

// CPU.NET (88) - mt120 : nd2
assign mt120 = ~(q11 & ack);

// CPU.NET (89) - mt121 : nd2
assign mt121 = ~(q12 & notack);

// CPU.NET (90) - d12 : nd2
assign d12 = ~(mt120 & mt121);

// CPU.NET (92) - mt130 : nd2
assign mt130 = ~(q12 & ack);

// CPU.NET (93) - mt13a : nd4
assign mt13a = ~(ba & dreqin & extbms & q13);

// CPU.NET (94) - mt13b : nd6
assign mt13b = ~(bmcpu & dreqin & not68k & extbms & vcc & q13);

// CPU.NET (95) - mt13c : nd6
assign mt13c = ~(bmcpu & dreqin & lds & m68k & extbms & q13);

// CPU.NET (96) - mt13d : nd6
assign mt13d = ~(bmcpu & dreqin & uds & m68k & extbms & q13);

// CPU.NET (97) - d13 : nd6
assign d13 = ~(mt130 & mt13a & mt13b & mt13c & mt13d & vcc);

// CPU.NET (99) - cmreq : niv
assign cmreq = q11;

// CPU.NET (101) - dt1 : iv
assign dtackl = ~q13;

// CPU.NET (103) - erd1 : an2
assign erd = q13 & readcycle;

// CPU.NET (107) - readcycle : slatch
slatch readcycle_inst
(
	.q /* OUT */ (readcycle),
	.d /* IN */ (rw_in),
	.clk /* IN */ (clk_0),
	.en /* IN */ (q11),
	.sys_clk(sys_clk) // Generated
);

// CPU.NET (109) - lds : iv
assign lds = ~sizin_0;

// CPU.NET (110) - uds : iv
assign uds = ~sizin_1;

// CPU.NET (111) - not68k : iv
assign not68k = ~m68k;
endmodule
/* verilator lint_on LITENDIAN */
