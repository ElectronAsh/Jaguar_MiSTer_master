/* verilator lint_off LITENDIAN */
`include "defs.v"

module fdsync32
(
	output [0:31] q,
	input [0:31] d,
	input ld,
	input clk,
	input sys_clk // Generated
);
wire [0:31] qb;

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
wire q_b16_obuf;
wire q_b17_obuf;
wire q_b18_obuf;
wire q_b19_obuf;
wire q_b20_obuf;
wire q_b21_obuf;
wire q_b22_obuf;
wire q_b23_obuf;
wire q_b24_obuf;
wire q_b25_obuf;
wire q_b26_obuf;
wire q_b27_obuf;
wire q_b28_obuf;
wire q_b29_obuf;
wire q_b30_obuf;
wire q_b31_obuf;


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
assign q[16] = q_b16_obuf;
assign q[17] = q_b17_obuf;
assign q[18] = q_b18_obuf;
assign q[19] = q_b19_obuf;
assign q[20] = q_b20_obuf;
assign q[21] = q_b21_obuf;
assign q[22] = q_b22_obuf;
assign q[23] = q_b23_obuf;
assign q[24] = q_b24_obuf;
assign q[25] = q_b25_obuf;
assign q[26] = q_b26_obuf;
assign q[27] = q_b27_obuf;
assign q[28] = q_b28_obuf;
assign q[29] = q_b29_obuf;
assign q[30] = q_b30_obuf;
assign q[31] = q_b31_obuf;


// DUPLO.NET (278) - q : fd1e
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
fd1e q_inst_16
(
	.q /* OUT */ (q_b16_obuf),
	.qn /* OUT */ (qb[16]),
	.d /* IN */ (q_b16_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[16]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_17
(
	.q /* OUT */ (q_b17_obuf),
	.qn /* OUT */ (qb[17]),
	.d /* IN */ (q_b17_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[17]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_18
(
	.q /* OUT */ (q_b18_obuf),
	.qn /* OUT */ (qb[18]),
	.d /* IN */ (q_b18_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[18]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_19
(
	.q /* OUT */ (q_b19_obuf),
	.qn /* OUT */ (qb[19]),
	.d /* IN */ (q_b19_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[19]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_20
(
	.q /* OUT */ (q_b20_obuf),
	.qn /* OUT */ (qb[20]),
	.d /* IN */ (q_b20_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[20]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_21
(
	.q /* OUT */ (q_b21_obuf),
	.qn /* OUT */ (qb[21]),
	.d /* IN */ (q_b21_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[21]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_22
(
	.q /* OUT */ (q_b22_obuf),
	.qn /* OUT */ (qb[22]),
	.d /* IN */ (q_b22_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[22]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_23
(
	.q /* OUT */ (q_b23_obuf),
	.qn /* OUT */ (qb[23]),
	.d /* IN */ (q_b23_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[23]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_24
(
	.q /* OUT */ (q_b24_obuf),
	.qn /* OUT */ (qb[24]),
	.d /* IN */ (q_b24_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[24]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_25
(
	.q /* OUT */ (q_b25_obuf),
	.qn /* OUT */ (qb[25]),
	.d /* IN */ (q_b25_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[25]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_26
(
	.q /* OUT */ (q_b26_obuf),
	.qn /* OUT */ (qb[26]),
	.d /* IN */ (q_b26_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[26]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_27
(
	.q /* OUT */ (q_b27_obuf),
	.qn /* OUT */ (qb[27]),
	.d /* IN */ (q_b27_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[27]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_28
(
	.q /* OUT */ (q_b28_obuf),
	.qn /* OUT */ (qb[28]),
	.d /* IN */ (q_b28_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[28]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_29
(
	.q /* OUT */ (q_b29_obuf),
	.qn /* OUT */ (qb[29]),
	.d /* IN */ (q_b29_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[29]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_30
(
	.q /* OUT */ (q_b30_obuf),
	.qn /* OUT */ (qb[30]),
	.d /* IN */ (q_b30_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[30]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);
fd1e q_inst_31
(
	.q /* OUT */ (q_b31_obuf),
	.qn /* OUT */ (qb[31]),
	.d /* IN */ (q_b31_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d[31]),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);

// DUPLO.NET (279) - dummy : dummy
endmodule
/* verilator lint_on LITENDIAN */
