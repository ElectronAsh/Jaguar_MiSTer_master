/* verilator lint_off LITENDIAN */
`include "defs.v"

module datamux
(
	output [0:15] data_x,
	output [0:15] data_y,
	input [0:31] gpu_din,
	input [0:15] addq_x,
	input [0:15] addq_y,
	input addqsel
);
wire [0:15] gpu_lo;
wire [0:15] gpu_hi;
wire addqselb;

// ADDRMUX.NET (162) - gpu_lo : join
assign gpu_lo[0] = gpu_din[0];
assign gpu_lo[1] = gpu_din[1];
assign gpu_lo[2] = gpu_din[2];
assign gpu_lo[3] = gpu_din[3];
assign gpu_lo[4] = gpu_din[4];
assign gpu_lo[5] = gpu_din[5];
assign gpu_lo[6] = gpu_din[6];
assign gpu_lo[7] = gpu_din[7];
assign gpu_lo[8] = gpu_din[8];
assign gpu_lo[9] = gpu_din[9];
assign gpu_lo[10] = gpu_din[10];
assign gpu_lo[11] = gpu_din[11];
assign gpu_lo[12] = gpu_din[12];
assign gpu_lo[13] = gpu_din[13];
assign gpu_lo[14] = gpu_din[14];
assign gpu_lo[15] = gpu_din[15];

// ADDRMUX.NET (163) - gpu_hi : join
assign gpu_hi[0] = gpu_din[16];
assign gpu_hi[1] = gpu_din[17];
assign gpu_hi[2] = gpu_din[18];
assign gpu_hi[3] = gpu_din[19];
assign gpu_hi[4] = gpu_din[20];
assign gpu_hi[5] = gpu_din[21];
assign gpu_hi[6] = gpu_din[22];
assign gpu_hi[7] = gpu_din[23];
assign gpu_hi[8] = gpu_din[24];
assign gpu_hi[9] = gpu_din[25];
assign gpu_hi[10] = gpu_din[26];
assign gpu_hi[11] = gpu_din[27];
assign gpu_hi[12] = gpu_din[28];
assign gpu_hi[13] = gpu_din[29];
assign gpu_hi[14] = gpu_din[30];
assign gpu_hi[15] = gpu_din[31];

// ADDRMUX.NET (165) - addqselb : nivu
assign addqselb = addqsel;

// ADDRMUX.NET (166) - data_x : mx2
assign data_x[0] = (addqselb) ? addq_x[0] : gpu_lo[0];
assign data_x[1] = (addqselb) ? addq_x[1] : gpu_lo[1];
assign data_x[2] = (addqselb) ? addq_x[2] : gpu_lo[2];
assign data_x[3] = (addqselb) ? addq_x[3] : gpu_lo[3];
assign data_x[4] = (addqselb) ? addq_x[4] : gpu_lo[4];
assign data_x[5] = (addqselb) ? addq_x[5] : gpu_lo[5];
assign data_x[6] = (addqselb) ? addq_x[6] : gpu_lo[6];
assign data_x[7] = (addqselb) ? addq_x[7] : gpu_lo[7];
assign data_x[8] = (addqselb) ? addq_x[8] : gpu_lo[8];
assign data_x[9] = (addqselb) ? addq_x[9] : gpu_lo[9];
assign data_x[10] = (addqselb) ? addq_x[10] : gpu_lo[10];
assign data_x[11] = (addqselb) ? addq_x[11] : gpu_lo[11];
assign data_x[12] = (addqselb) ? addq_x[12] : gpu_lo[12];
assign data_x[13] = (addqselb) ? addq_x[13] : gpu_lo[13];
assign data_x[14] = (addqselb) ? addq_x[14] : gpu_lo[14];
assign data_x[15] = (addqselb) ? addq_x[15] : gpu_lo[15];

// ADDRMUX.NET (167) - data_y : mx2
assign data_y[0] = (addqselb) ? addq_y[0] : gpu_hi[0];
assign data_y[1] = (addqselb) ? addq_y[1] : gpu_hi[1];
assign data_y[2] = (addqselb) ? addq_y[2] : gpu_hi[2];
assign data_y[3] = (addqselb) ? addq_y[3] : gpu_hi[3];
assign data_y[4] = (addqselb) ? addq_y[4] : gpu_hi[4];
assign data_y[5] = (addqselb) ? addq_y[5] : gpu_hi[5];
assign data_y[6] = (addqselb) ? addq_y[6] : gpu_hi[6];
assign data_y[7] = (addqselb) ? addq_y[7] : gpu_hi[7];
assign data_y[8] = (addqselb) ? addq_y[8] : gpu_hi[8];
assign data_y[9] = (addqselb) ? addq_y[9] : gpu_hi[9];
assign data_y[10] = (addqselb) ? addq_y[10] : gpu_hi[10];
assign data_y[11] = (addqselb) ? addq_y[11] : gpu_hi[11];
assign data_y[12] = (addqselb) ? addq_y[12] : gpu_hi[12];
assign data_y[13] = (addqselb) ? addq_y[13] : gpu_hi[13];
assign data_y[14] = (addqselb) ? addq_y[14] : gpu_hi[14];
assign data_y[15] = (addqselb) ? addq_y[15] : gpu_hi[15];
endmodule
/* verilator lint_on LITENDIAN */
