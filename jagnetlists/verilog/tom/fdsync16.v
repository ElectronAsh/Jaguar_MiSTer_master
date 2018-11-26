/* verilator lint_off LITENDIAN */
`include "defs.v"

module fdsync16
(
	output [0:15] q,
	input [0:15] d,
	input ld,
	input clk,
	input sys_clk // Generated
);
wire [0:15] qb;

// Output buffers
wire q_b0_obuf;
wire q_b1_obuf;
wire q_b2_obuf;
wire q_b3_obuf;
wire q_b4_obuf;
wire q_b5_obuf;
wire q_b6_obuf;
wire q_b7_obuf;
wire q_b8_obuf;
wire q_b9_obuf;
wire q_b10_obuf;
wire q_b11_obuf;
wire q_b12_obuf;
wire q_b13_obuf;
wire q_b14_obuf;
wire q_b15_obuf;


// Output buffers
assign q[0] = q_b0_obuf;
assign q[1] = q_b1_obuf;
assign q[2] = q_b2_obuf;
assign q[3] = q_b3_obuf;
assign q[4] = q_b4_obuf;
assign q[5] = q_b5_obuf;
assign q[6] = q_b6_obuf;
assign q[7] = q_b7_obuf;
assign q[8] = q_b8_obuf;
assign q[9] = q_b9_obuf;
assign q[10] = q_b10_obuf;
assign q[11] = q_b11_obuf;
assign q[12] = q_b12_obuf;
assign q[13] = q_b13_obuf;
assign q[14] = q_b14_obuf;
assign q[15] = q_b15_obuf;


// DUPLO.NET (266) - q : fd1e
fd1e q_inst_0
(
	.q /* OUT */ (q_b0_obuf),
	.qn /* OUT */ (qb[0]),
	.d /* IN */ (q_b0_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[0]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_1
(
	.q /* OUT */ (q_b1_obuf),
	.qn /* OUT */ (qb[1]),
	.d /* IN */ (q_b1_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[1]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_2
(
	.q /* OUT */ (q_b2_obuf),
	.qn /* OUT */ (qb[2]),
	.d /* IN */ (q_b2_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[2]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_3
(
	.q /* OUT */ (q_b3_obuf),
	.qn /* OUT */ (qb[3]),
	.d /* IN */ (q_b3_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[3]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_4
(
	.q /* OUT */ (q_b4_obuf),
	.qn /* OUT */ (qb[4]),
	.d /* IN */ (q_b4_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[4]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_5
(
	.q /* OUT */ (q_b5_obuf),
	.qn /* OUT */ (qb[5]),
	.d /* IN */ (q_b5_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[5]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_6
(
	.q /* OUT */ (q_b6_obuf),
	.qn /* OUT */ (qb[6]),
	.d /* IN */ (q_b6_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[6]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_7
(
	.q /* OUT */ (q_b7_obuf),
	.qn /* OUT */ (qb[7]),
	.d /* IN */ (q_b7_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[7]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_8
(
	.q /* OUT */ (q_b8_obuf),
	.qn /* OUT */ (qb[8]),
	.d /* IN */ (q_b8_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[8]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_9
(
	.q /* OUT */ (q_b9_obuf),
	.qn /* OUT */ (qb[9]),
	.d /* IN */ (q_b9_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[9]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_10
(
	.q /* OUT */ (q_b10_obuf),
	.qn /* OUT */ (qb[10]),
	.d /* IN */ (q_b10_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[10]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_11
(
	.q /* OUT */ (q_b11_obuf),
	.qn /* OUT */ (qb[11]),
	.d /* IN */ (q_b11_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[11]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_12
(
	.q /* OUT */ (q_b12_obuf),
	.qn /* OUT */ (qb[12]),
	.d /* IN */ (q_b12_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[12]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_13
(
	.q /* OUT */ (q_b13_obuf),
	.qn /* OUT */ (qb[13]),
	.d /* IN */ (q_b13_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[13]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_14
(
	.q /* OUT */ (q_b14_obuf),
	.qn /* OUT */ (qb[14]),
	.d /* IN */ (q_b14_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[14]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_15
(
	.q /* OUT */ (q_b15_obuf),
	.qn /* OUT */ (qb[15]),
	.d /* IN */ (q_b15_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[15]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);

// DUPLO.NET (267) - dummy : dummy
endmodule
/* verilator lint_on LITENDIAN */
