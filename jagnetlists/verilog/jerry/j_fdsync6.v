/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_fdsync6
(
	output [0:5] q,
	input [0:5] d,
	input ld,
	input clk,
	input sys_clk // Generated
);
wire [0:5] qb;

// Output buffers
wire q_b0_obuf;
wire q_b1_obuf;
wire q_b2_obuf;
wire q_b3_obuf;
wire q_b4_obuf;
wire q_b5_obuf;


// Output buffers
assign q[0] = q_b0_obuf;
assign q[1] = q_b1_obuf;
assign q[2] = q_b2_obuf;
assign q[3] = q_b3_obuf;
assign q[4] = q_b4_obuf;
assign q[5] = q_b5_obuf;


// _DUPLO.NET (260) - q : fd1e
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

// _DUPLO.NET (261) - dummy : dummy
endmodule
/* verilator lint_on LITENDIAN */
