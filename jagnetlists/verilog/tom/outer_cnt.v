/* verilator lint_off LITENDIAN */
`include "defs.v"

module outer_cnt
(
	output outer0,
	input clk,
	input countld,
	input [0:31] gpu_din,
	input ocntena,
	input sys_clk // Generated
);
wire [0:15] gpu_d_hi16;
wire [0:15] ocount;
wire out0t_0;
wire out0t_1;

// OUTER.NET (184) - gpu_d_hi16 : join
assign gpu_d_hi16[0] = gpu_din[16];
assign gpu_d_hi16[1] = gpu_din[17];
assign gpu_d_hi16[2] = gpu_din[18];
assign gpu_d_hi16[3] = gpu_din[19];
assign gpu_d_hi16[4] = gpu_din[20];
assign gpu_d_hi16[5] = gpu_din[21];
assign gpu_d_hi16[6] = gpu_din[22];
assign gpu_d_hi16[7] = gpu_din[23];
assign gpu_d_hi16[8] = gpu_din[24];
assign gpu_d_hi16[9] = gpu_din[25];
assign gpu_d_hi16[10] = gpu_din[26];
assign gpu_d_hi16[11] = gpu_din[27];
assign gpu_d_hi16[12] = gpu_din[28];
assign gpu_d_hi16[13] = gpu_din[29];
assign gpu_d_hi16[14] = gpu_din[30];
assign gpu_d_hi16[15] = gpu_din[31];

// OUTER.NET (188) - counto : dcount16
dcount16 counto_inst
(
	.count /* OUT */ ({ocount[0],ocount[1],ocount[2],ocount[3],ocount[4],ocount[5],ocount[6],ocount[7],ocount[8],ocount[9],ocount[10],ocount[11],ocount[12],ocount[13],ocount[14],ocount[15]}),
	.data /* IN */ ({gpu_d_hi16[0],gpu_d_hi16[1],gpu_d_hi16[2],gpu_d_hi16[3],gpu_d_hi16[4],gpu_d_hi16[5],gpu_d_hi16[6],gpu_d_hi16[7],gpu_d_hi16[8],gpu_d_hi16[9],gpu_d_hi16[10],gpu_d_hi16[11],gpu_d_hi16[12],gpu_d_hi16[13],gpu_d_hi16[14],gpu_d_hi16[15]}),
	.load /* IN */ (countld),
	.ena /* IN */ (ocntena),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OUTER.NET (193) - out0t0 : nr8
assign out0t_0 = ~(ocount[0] | ocount[1] | ocount[2] | ocount[3] | ocount[4] | ocount[5] | ocount[6] | ocount[7]);

// OUTER.NET (194) - out0t1 : nr8
assign out0t_1 = ~(ocount[8] | ocount[9] | ocount[10] | ocount[11] | ocount[12] | ocount[13] | ocount[14] | ocount[15]);

// OUTER.NET (195) - outer0 : an2
assign outer0 = out0t_0 & out0t_1;
endmodule
/* verilator lint_on LITENDIAN */
