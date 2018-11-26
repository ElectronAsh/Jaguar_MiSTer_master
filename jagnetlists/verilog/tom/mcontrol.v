/* verilator lint_off LITENDIAN */
`include "defs.v"

module mcontrol
(
	output [0:23] blit_addr_out,
	output [0:23] blit_addr_oe,
	input [0:23] blit_addr_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output width_0_out,
	output width_0_oe,
	input width_0_in,
	output width_1_out,
	output width_1_oe,
	input width_1_in,
	output width_2_out,
	output width_2_oe,
	input width_2_in,
	output width_3_out,
	output width_3_oe,
	input width_3_in,
	output read_out,
	output read_oe,
	input read_in,
	output active,
	output blitack,
	output memidle,
	output memready,
	output read_ack,
	output wactive,
	input ack,
	input [0:23] address,
	input bcompen,
	input blit_back,
	input clk,
	input phrase_cycle,
	input phrase_mode,
	input pixsize_0,
	input pixsize_1,
	input pixsize_2,
	input pwidth_0,
	input pwidth_1,
	input pwidth_2,
	input pwidth_3,
	input readreq,
	input reset_n,
	input sread_1,
	input sreadx_1,
	input step_inner,
	input writereq,
	input sys_clk // Generated
);
wire [0:23] blita;
wire ack_n;
wire pixsize_n_0;
wire pixsize_n_2;
wire busen;
wire blitack_n;
wire ractvt_0;
wire ractive_n;
wire ractvt_1;
wire ractive;
wire ractvt_2;
wire ractvt_3;
wire wactvt_0;
wire wactive_n;
wire wactvt_1;
wire wactvt_2;
wire wactvt_3;
wire active_n;
wire wt0t;
wire fontread;
wire wt_0;
wire wt_1;
wire wt_2;
wire pwrite;
wire wout_0;
wire wout_1;
wire wout_2;
wire wout_3;
wire fontread_n;
wire justt;
wire step_innerb;
wire waset_n;
wire wat0;
wire waitack;
wire wat1;

// Output buffers
wire active_obuf;
wire blitack_obuf;
wire wactive_obuf;


// Output buffers
assign active = active_obuf;
assign blitack = blitack_obuf;
assign wactive = wactive_obuf;


// MCONTROL.NET (47) - ack\ : iv
assign ack_n = ~ack;

// MCONTROL.NET (48) - pixsize\[0] : iv
assign pixsize_n_0 = ~pixsize_0;

// MCONTROL.NET (49) - pixsize\[2] : iv
assign pixsize_n_2 = ~pixsize_2;

// MCONTROL.NET (51) - busen : nivu
assign busen = blit_back;

// MCONTROL.NET (55) - blitack\ : nd2
assign blitack_n = ~(ack & blit_back);

// MCONTROL.NET (56) - blitack : iv
assign blitack_obuf = ~blitack_n;

// MCONTROL.NET (60) - ractvt0 : nd2
assign ractvt_0 = ~(ractive_n & readreq);

// MCONTROL.NET (61) - ractvt1 : nd2
assign ractvt_1 = ~(ractive & blitack_n);

// MCONTROL.NET (62) - ractvt2 : nd3
assign ractvt_2 = ~(ractive & blitack_obuf & readreq);

// MCONTROL.NET (63) - ractvt3 : nd3
assign ractvt_3 = ~(ractvt_0 & ractvt_1 & ractvt_2);

// MCONTROL.NET (64) - ractive : fd2
fd2 ractive_inst
(
	.q /* OUT */ (ractive),
	.qn /* OUT */ (ractive_n),
	.d /* IN */ (ractvt_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// MCONTROL.NET (66) - wactvt0 : nd2
assign wactvt_0 = ~(wactive_n & writereq);

// MCONTROL.NET (67) - wactvt1 : nd2
assign wactvt_1 = ~(wactive_obuf & blitack_n);

// MCONTROL.NET (68) - wactvt2 : nd3
assign wactvt_2 = ~(wactive_obuf & blitack_obuf & writereq);

// MCONTROL.NET (69) - wactvt3 : nd3
assign wactvt_3 = ~(wactvt_0 & wactvt_1 & wactvt_2);

// MCONTROL.NET (70) - wactive : fd2
fd2 wactive_inst
(
	.q /* OUT */ (wactive_obuf),
	.qn /* OUT */ (wactive_n),
	.d /* IN */ (wactvt_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// MCONTROL.NET (73) - active\ : nr2
assign active_n = ~(wactive_obuf | ractive);

// MCONTROL.NET (74) - active : iv
assign active_obuf = ~active_n;

// MCONTROL.NET (78) - memready : an2
assign memready = blitack_obuf & active_obuf;

// MCONTROL.NET (80) - memidle : iv
assign memidle = ~active_obuf;

// MCONTROL.NET (86) - mreq : tsm
assign mreq_out = active_obuf;
assign mreq_oe = busen;

// MCONTROL.NET (88) - read : ts
assign read_out = ractive;
assign read_oe = busen;

// MCONTROL.NET (101) - wt0t : nr2
assign wt0t = ~(pixsize_n_2 | fontread);

// MCONTROL.NET (102) - wt0 : nr2
assign wt_0 = ~(wt0t | phrase_cycle);

// MCONTROL.NET (103) - wt1 : nr5
assign wt_1 = ~(pixsize_n_2 | pixsize_1 | pixsize_0 | phrase_cycle | fontread);

// MCONTROL.NET (105) - wt2 : nr5
assign wt_2 = ~(pixsize_n_2 | pixsize_1 | pixsize_n_0 | phrase_cycle | fontread);

// MCONTROL.NET (107) - pwrite : an2
assign pwrite = phrase_cycle & wactive_obuf;

// MCONTROL.NET (108) - wout[0-2] : mx2
assign wout_0 = (pwrite) ? pwidth_0 : wt_0;
assign wout_1 = (pwrite) ? pwidth_1 : wt_1;
assign wout_2 = (pwrite) ? pwidth_2 : wt_2;

// MCONTROL.NET (109) - wout[3] : mx2
assign wout_3 = (pwrite) ? pwidth_3 : phrase_cycle;

// MCONTROL.NET (111) - width[0-3] : ts
assign width_0_out = wout_0;
assign width_0_oe = busen;
assign width_1_out = wout_1;
assign width_1_oe = busen;
assign width_2_out = wout_2;
assign width_2_oe = busen;
assign width_3_out = wout_3;
assign width_3_oe = busen;

// MCONTROL.NET (118) - fontread\ : ond1
assign fontread_n = ~( (sread_1 | sreadx_1) & bcompen );

// MCONTROL.NET (119) - fontread : iv
assign fontread = ~fontread_n;

// MCONTROL.NET (121) - justt : nd2
assign justt = ~(fontread_n & phrase_mode);

// MCONTROL.NET (122) - justify : ts
assign justify_out = justt;
assign justify_oe = busen;

// MCONTROL.NET (129) - step_innerb : nivu
assign step_innerb = step_inner;

// MCONTROL.NET (130) - blita : fdsync24
fdsync24 blita_inst
(
	.q /* OUT */ ({blita[0],blita[1],blita[2],blita[3],blita[4],blita[5],blita[6],blita[7],blita[8],blita[9],blita[10],blita[11],blita[12],blita[13],blita[14],blita[15],blita[16],blita[17],blita[18],blita[19],blita[20],blita[21],blita[22],blita[23]}),
	.d /* IN */ ({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}),
	.ld /* IN */ (step_innerb),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// MCONTROL.NET (131) - blit_addr : tsm
assign blit_addr_out[0] = blita[0];
assign blit_addr_oe[0] = busen;
assign blit_addr_out[1] = blita[1];
assign blit_addr_oe[1] = busen;
assign blit_addr_out[2] = blita[2];
assign blit_addr_oe[2] = busen;
assign blit_addr_out[3] = blita[3];
assign blit_addr_oe[3] = busen;
assign blit_addr_out[4] = blita[4];
assign blit_addr_oe[4] = busen;
assign blit_addr_out[5] = blita[5];
assign blit_addr_oe[5] = busen;
assign blit_addr_out[6] = blita[6];
assign blit_addr_oe[6] = busen;
assign blit_addr_out[7] = blita[7];
assign blit_addr_oe[7] = busen;
assign blit_addr_out[8] = blita[8];
assign blit_addr_oe[8] = busen;
assign blit_addr_out[9] = blita[9];
assign blit_addr_oe[9] = busen;
assign blit_addr_out[10] = blita[10];
assign blit_addr_oe[10] = busen;
assign blit_addr_out[11] = blita[11];
assign blit_addr_oe[11] = busen;
assign blit_addr_out[12] = blita[12];
assign blit_addr_oe[12] = busen;
assign blit_addr_out[13] = blita[13];
assign blit_addr_oe[13] = busen;
assign blit_addr_out[14] = blita[14];
assign blit_addr_oe[14] = busen;
assign blit_addr_out[15] = blita[15];
assign blit_addr_oe[15] = busen;
assign blit_addr_out[16] = blita[16];
assign blit_addr_oe[16] = busen;
assign blit_addr_out[17] = blita[17];
assign blit_addr_oe[17] = busen;
assign blit_addr_out[18] = blita[18];
assign blit_addr_oe[18] = busen;
assign blit_addr_out[19] = blita[19];
assign blit_addr_oe[19] = busen;
assign blit_addr_out[20] = blita[20];
assign blit_addr_oe[20] = busen;
assign blit_addr_out[21] = blita[21];
assign blit_addr_oe[21] = busen;
assign blit_addr_out[22] = blita[22];
assign blit_addr_oe[22] = busen;
assign blit_addr_out[23] = blita[23];
assign blit_addr_oe[23] = busen;

// MCONTROL.NET (137) - waitackset : nd2
assign waset_n = ~(ractive & blitack_obuf);

// MCONTROL.NET (138) - wat0 : nd2
assign wat0 = ~(waitack & ack_n);

// MCONTROL.NET (139) - wat1 : nd2
assign wat1 = ~(waset_n & wat0);

// MCONTROL.NET (140) - waitack : fd2q
fd2q waitack_inst
(
	.q /* OUT */ (waitack),
	.d /* IN */ (wat1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// MCONTROL.NET (141) - read_ack : an2
assign read_ack = waitack & ack;
endmodule
/* verilator lint_on LITENDIAN */
