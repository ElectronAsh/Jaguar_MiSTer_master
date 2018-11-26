/* verilator lint_off LITENDIAN */
`include "defs.v"

module mag_4
(
	output gto,
	output eqo,
	output lto,
	input gti,
	input eqi,
	input lti,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input b_0,
	input b_1,
	input b_2,
	input b_3
);
wire aab_n_0;
wire aab_n_1;
wire aab_n_2;
wire aab_n_3;
wire aoia_0;
wire aoia_1;
wire aoia_2;
wire aoia_3;
wire aoib_0;
wire aoib_1;
wire aoib_2;
wire aoib_3;
wire ltot_0;
wire ltot_1;
wire ltot_2;
wire ltot_3;
wire ltot_4;
wire ltot_5;
wire ltot_6;
wire eqot;
wire gtot_0;
wire gtot_1;
wire gtot_2;
wire gtot_3;
wire gtot_4;
wire gtot_5;
wire gtot_6;

// DUPLO.NET (336) - aab\[0-3] : nd2p
assign aab_n_0 = ~(a_0 & b_0);
assign aab_n_1 = ~(a_1 & b_1);
assign aab_n_2 = ~(a_2 & b_2);
assign aab_n_3 = ~(a_3 & b_3);

// DUPLO.NET (337) - aoia[0-3] : anr2p
assign aoia_0 = ~( (b_0 & aab_n_0) | (aab_n_0 & a_0) );
assign aoia_1 = ~( (b_1 & aab_n_1) | (aab_n_1 & a_1) );
assign aoia_2 = ~( (b_2 & aab_n_2) | (aab_n_2 & a_2) );
assign aoia_3 = ~( (b_3 & aab_n_3) | (aab_n_3 & a_3) );

// DUPLO.NET (339) - aoib[0-3] : anr2p
assign aoib_0 = ~( (b_0 & aab_n_0) | (aab_n_0 & a_0) );
assign aoib_1 = ~( (b_1 & aab_n_1) | (aab_n_1 & a_1) );
assign aoib_2 = ~( (b_2 & aab_n_2) | (aab_n_2 & a_2) );
assign aoib_3 = ~( (b_3 & aab_n_3) | (aab_n_3 & a_3) );

// DUPLO.NET (341) - ltot0 : nd2
assign ltot_0 = ~(a_3 & aab_n_3);

// DUPLO.NET (342) - ltot1 : nd3
assign ltot_1 = ~(a_2 & aab_n_2 & aoia_3);

// DUPLO.NET (343) - ltot2 : nd4
assign ltot_2 = ~(a_1 & aab_n_1 & aoia_2 & aoia_3);

// DUPLO.NET (344) - ltot3 : nd5
assign ltot_3 = ~(a_0 & aab_n_0 & aoia_1 & aoia_2 & aoia_3);

// DUPLO.NET (345) - ltot4 : nd5
assign ltot_4 = ~(aoia_0 & aoia_1 & aoia_2 & aoia_3 & gti);

// DUPLO.NET (346) - ltot5 : nd5
assign ltot_5 = ~(aoia_0 & aoia_1 & aoia_2 & aoia_3 & eqi);

// DUPLO.NET (347) - ltot6 : an4
assign ltot_6 = ltot_0 & ltot_1 & ltot_2 & ltot_3;

// DUPLO.NET (348) - lto : an3
assign lto = ltot_4 & ltot_5 & ltot_6;

// DUPLO.NET (349) - eqot : an4
assign eqot = aoia_0 & aoia_1 & aoia_2 & aoia_3;

// DUPLO.NET (350) - eqo : an2p
assign eqo = eqot & eqi;

// DUPLO.NET (351) - gtot0 : nd2
assign gtot_0 = ~(b_3 & aab_n_3);

// DUPLO.NET (352) - gtot1 : nd3
assign gtot_1 = ~(b_2 & aab_n_2 & aoib_3);

// DUPLO.NET (353) - gtot2 : nd4
assign gtot_2 = ~(b_1 & aab_n_1 & aoib_2 & aoib_3);

// DUPLO.NET (354) - gtot3 : nd5
assign gtot_3 = ~(b_0 & aab_n_0 & aoib_1 & aoib_2 & aoib_3);

// DUPLO.NET (355) - gtot4 : nd5
assign gtot_4 = ~(aoib_0 & aoib_1 & aoib_2 & aoib_3 & lti);

// DUPLO.NET (356) - gtot5 : nd5
assign gtot_5 = ~(aoib_0 & aoib_1 & aoib_2 & aoib_3 & eqi);

// DUPLO.NET (357) - gtot6 : an4
assign gtot_6 = gtot_0 & gtot_1 & gtot_2 & gtot_3;

// DUPLO.NET (358) - gto : an3
assign gto = gtot_4 & gtot_5 & gtot_6;
endmodule
/* verilator lint_on LITENDIAN */
