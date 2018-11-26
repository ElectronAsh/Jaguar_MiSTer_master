/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_sinerom
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
	input clk,
	input [0:9] roma,
	input romen,
	input sys_clk // Generated
);
wire [0:15] rom_data_out;
wire [0:15] rom_data_oe;
wire [0:15] rom_data_in;
wire romhid_16_out;
wire romhid_16_oe;
wire romhid_16_in;
wire romhid_17_out;
wire romhid_17_oe;
wire romhid_17_in;
wire romhid_18_out;
wire romhid_18_oe;
wire romhid_18_in;
wire romhid_19_out;
wire romhid_19_oe;
wire romhid_19_in;
wire romhid_20_out;
wire romhid_20_oe;
wire romhid_20_in;
wire romhid_21_out;
wire romhid_21_oe;
wire romhid_21_in;
wire romhid_22_out;
wire romhid_22_oe;
wire romhid_22_in;
wire romhid_23_out;
wire romhid_23_oe;
wire romhid_23_in;
wire romhid_24_out;
wire romhid_24_oe;
wire romhid_24_in;
wire romhid_25_out;
wire romhid_25_oe;
wire romhid_25_in;
wire romhid_26_out;
wire romhid_26_oe;
wire romhid_26_in;
wire romhid_27_out;
wire romhid_27_oe;
wire romhid_27_in;
wire romhid_28_out;
wire romhid_28_oe;
wire romhid_28_in;
wire romhid_29_out;
wire romhid_29_oe;
wire romhid_29_in;
wire romhid_30_out;
wire romhid_30_oe;
wire romhid_30_in;
wire romhid_31_out;
wire romhid_31_oe;
wire romhid_31_in;
wire romcs;
wire romhidi;
wire romenb;

// DSP_RAM.NET (132) - romcs : clkgen
j_clkgen romcs_inst
(
	.ramcs /* OUT */ (romcs),
	.clk /* IN */ (clk),
	.ena /* IN */ (romen)
);

// DSP_RAM.NET (133) - sinerom : raa016a
raa016a sinerom_inst
(
	.z_out /* BUS */ ({rom_data_out[0],rom_data_out[1],rom_data_out[2],rom_data_out[3],rom_data_out[4],rom_data_out[5],rom_data_out[6],rom_data_out[7],rom_data_out[8],rom_data_out[9],rom_data_out[10],rom_data_out[11],rom_data_out[12],rom_data_out[13],rom_data_out[14],rom_data_out[15]}),
	.z_oe /* BUS */ ({rom_data_oe[0],rom_data_oe[1],rom_data_oe[2],rom_data_oe[3],rom_data_oe[4],rom_data_oe[5],rom_data_oe[6],rom_data_oe[7],rom_data_oe[8],rom_data_oe[9],rom_data_oe[10],rom_data_oe[11],rom_data_oe[12],rom_data_oe[13],rom_data_oe[14],rom_data_oe[15]}),
	.z_in /* BUS */ ({rom_data_in[0],rom_data_in[1],rom_data_in[2],rom_data_in[3],rom_data_in[4],rom_data_in[5],rom_data_in[6],rom_data_in[7],rom_data_in[8],rom_data_in[9],rom_data_in[10],rom_data_in[11],rom_data_in[12],rom_data_in[13],rom_data_in[14],rom_data_in[15]}),
	.cs /* IN */ (romcs),
	.a /* IN */ ({roma[0],roma[1],roma[2],roma[3],roma[4],roma[5],roma[6],roma[7],roma[8],roma[9]}),
	.sys_clk(sys_clk) // Generated
);

// DSP_RAM.NET (135) - romhidi : nivh
assign romhidi = rom_data_in[15];

// DSP_RAM.NET (136) - romenb : nivh
assign romenb = romen;

// DSP_RAM.NET (137) - romhid[16-31] : ts
assign romhid_16_out = romhidi;
assign romhid_16_oe = romenb;
assign romhid_17_out = romhidi;
assign romhid_17_oe = romenb;
assign romhid_18_out = romhidi;
assign romhid_18_oe = romenb;
assign romhid_19_out = romhidi;
assign romhid_19_oe = romenb;
assign romhid_20_out = romhidi;
assign romhid_20_oe = romenb;
assign romhid_21_out = romhidi;
assign romhid_21_oe = romenb;
assign romhid_22_out = romhidi;
assign romhid_22_oe = romenb;
assign romhid_23_out = romhidi;
assign romhid_23_oe = romenb;
assign romhid_24_out = romhidi;
assign romhid_24_oe = romenb;
assign romhid_25_out = romhidi;
assign romhid_25_oe = romenb;
assign romhid_26_out = romhidi;
assign romhid_26_oe = romenb;
assign romhid_27_out = romhidi;
assign romhid_27_oe = romenb;
assign romhid_28_out = romhidi;
assign romhid_28_oe = romenb;
assign romhid_29_out = romhidi;
assign romhid_29_oe = romenb;
assign romhid_30_out = romhidi;
assign romhid_30_oe = romenb;
assign romhid_31_out = romhidi;
assign romhid_31_oe = romenb;

// DSP_RAM.NET (138) - gpu_data : join_bus
assign gpu_data_out[0] = rom_data_out[0];
assign gpu_data_oe[0] = rom_data_oe[0];
assign rom_data_in[0] = gpu_data_in[0];
assign gpu_data_out[1] = rom_data_out[1];
assign gpu_data_oe[1] = rom_data_oe[1];
assign rom_data_in[1] = gpu_data_in[1];
assign gpu_data_out[2] = rom_data_out[2];
assign gpu_data_oe[2] = rom_data_oe[2];
assign rom_data_in[2] = gpu_data_in[2];
assign gpu_data_out[3] = rom_data_out[3];
assign gpu_data_oe[3] = rom_data_oe[3];
assign rom_data_in[3] = gpu_data_in[3];
assign gpu_data_out[4] = rom_data_out[4];
assign gpu_data_oe[4] = rom_data_oe[4];
assign rom_data_in[4] = gpu_data_in[4];
assign gpu_data_out[5] = rom_data_out[5];
assign gpu_data_oe[5] = rom_data_oe[5];
assign rom_data_in[5] = gpu_data_in[5];
assign gpu_data_out[6] = rom_data_out[6];
assign gpu_data_oe[6] = rom_data_oe[6];
assign rom_data_in[6] = gpu_data_in[6];
assign gpu_data_out[7] = rom_data_out[7];
assign gpu_data_oe[7] = rom_data_oe[7];
assign rom_data_in[7] = gpu_data_in[7];
assign gpu_data_out[8] = rom_data_out[8];
assign gpu_data_oe[8] = rom_data_oe[8];
assign rom_data_in[8] = gpu_data_in[8];
assign gpu_data_out[9] = rom_data_out[9];
assign gpu_data_oe[9] = rom_data_oe[9];
assign rom_data_in[9] = gpu_data_in[9];
assign gpu_data_out[10] = rom_data_out[10];
assign gpu_data_oe[10] = rom_data_oe[10];
assign rom_data_in[10] = gpu_data_in[10];
assign gpu_data_out[11] = rom_data_out[11];
assign gpu_data_oe[11] = rom_data_oe[11];
assign rom_data_in[11] = gpu_data_in[11];
assign gpu_data_out[12] = rom_data_out[12];
assign gpu_data_oe[12] = rom_data_oe[12];
assign rom_data_in[12] = gpu_data_in[12];
assign gpu_data_out[13] = rom_data_out[13];
assign gpu_data_oe[13] = rom_data_oe[13];
assign rom_data_in[13] = gpu_data_in[13];
assign gpu_data_out[14] = rom_data_out[14];
assign gpu_data_oe[14] = rom_data_oe[14];
assign rom_data_in[14] = gpu_data_in[14];
assign gpu_data_out[15] = rom_data_out[15];
assign gpu_data_oe[15] = rom_data_oe[15];
assign rom_data_in[15] = gpu_data_in[15];
assign gpu_data_out[16] = romhid_16_out;
assign gpu_data_oe[16] = romhid_16_oe;
assign romhid_16_in = gpu_data_in[16];
assign gpu_data_out[17] = romhid_17_out;
assign gpu_data_oe[17] = romhid_17_oe;
assign romhid_17_in = gpu_data_in[17];
assign gpu_data_out[18] = romhid_18_out;
assign gpu_data_oe[18] = romhid_18_oe;
assign romhid_18_in = gpu_data_in[18];
assign gpu_data_out[19] = romhid_19_out;
assign gpu_data_oe[19] = romhid_19_oe;
assign romhid_19_in = gpu_data_in[19];
assign gpu_data_out[20] = romhid_20_out;
assign gpu_data_oe[20] = romhid_20_oe;
assign romhid_20_in = gpu_data_in[20];
assign gpu_data_out[21] = romhid_21_out;
assign gpu_data_oe[21] = romhid_21_oe;
assign romhid_21_in = gpu_data_in[21];
assign gpu_data_out[22] = romhid_22_out;
assign gpu_data_oe[22] = romhid_22_oe;
assign romhid_22_in = gpu_data_in[22];
assign gpu_data_out[23] = romhid_23_out;
assign gpu_data_oe[23] = romhid_23_oe;
assign romhid_23_in = gpu_data_in[23];
assign gpu_data_out[24] = romhid_24_out;
assign gpu_data_oe[24] = romhid_24_oe;
assign romhid_24_in = gpu_data_in[24];
assign gpu_data_out[25] = romhid_25_out;
assign gpu_data_oe[25] = romhid_25_oe;
assign romhid_25_in = gpu_data_in[25];
assign gpu_data_out[26] = romhid_26_out;
assign gpu_data_oe[26] = romhid_26_oe;
assign romhid_26_in = gpu_data_in[26];
assign gpu_data_out[27] = romhid_27_out;
assign gpu_data_oe[27] = romhid_27_oe;
assign romhid_27_in = gpu_data_in[27];
assign gpu_data_out[28] = romhid_28_out;
assign gpu_data_oe[28] = romhid_28_oe;
assign romhid_28_in = gpu_data_in[28];
assign gpu_data_out[29] = romhid_29_out;
assign gpu_data_oe[29] = romhid_29_oe;
assign romhid_29_in = gpu_data_in[29];
assign gpu_data_out[30] = romhid_30_out;
assign gpu_data_oe[30] = romhid_30_oe;
assign romhid_30_in = gpu_data_in[30];
assign gpu_data_out[31] = romhid_31_out;
assign gpu_data_oe[31] = romhid_31_oe;
assign romhid_31_in = gpu_data_in[31];
endmodule
/* verilator lint_on LITENDIAN */
