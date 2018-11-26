/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_dsp_ram
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
	input clk,
	input gpu_memw,
	input ram_addr_2,
	input ram_addr_3,
	input ram_addr_4,
	input ram_addr_5,
	input ram_addr_6,
	input ram_addr_7,
	input ram_addr_8,
	input ram_addr_9,
	input ram_addr_10,
	input ram_addr_11,
	input ramen_0,
	input ramen_1,
	input romen,
	input sys_clk // Generated
);
wire [0:9] rama;
wire ramdd_0;
wire ramdd_1;
wire ramdd_2;
wire ramdd_3;
wire ramdd_4;
wire ramdd_5;
wire ramdd_6;
wire ramdd_7;
wire ramdd_8;
wire ramdd_9;
wire ramad_0;
wire ramad_1;
wire ramad_2;
wire ramad_3;
wire ramad_4;
wire ramad_5;
wire ramad_6;
wire ramad_7;
wire ramad_8;
wire ramad_9;
wire ramwe_0;
wire ramwe_1;
wire ts_pe_7_a0_out;
wire ts_pe_7_a0_oe;
wire ts_pe_7_a0_in;
wire ts_pe_7_a1_out;
wire ts_pe_7_a1_oe;
wire ts_pe_7_a1_in;
wire ts_pe_7_a2_out;
wire ts_pe_7_a2_oe;
wire ts_pe_7_a2_in;
wire ts_pe_8_a0_out;
wire ts_pe_8_a0_oe;
wire ts_pe_8_a0_in;
wire ts_pe_8_a1_out;
wire ts_pe_8_a1_oe;
wire ts_pe_8_a1_in;
wire ts_pe_8_a2_out;
wire ts_pe_8_a2_oe;
wire ts_pe_8_a2_in;
wire ts_pe_9_a0_out;
wire ts_pe_9_a0_oe;
wire ts_pe_9_a0_in;
wire ts_pe_9_a1_out;
wire ts_pe_9_a1_oe;
wire ts_pe_9_a1_in;
wire ts_pe_9_a2_out;
wire ts_pe_9_a2_oe;
wire ts_pe_9_a2_in;
wire ts_pe_10_a0_out;
wire ts_pe_10_a0_oe;
wire ts_pe_10_a0_in;
wire ts_pe_10_a1_out;
wire ts_pe_10_a1_oe;
wire ts_pe_10_a1_in;
wire ts_pe_10_a2_out;
wire ts_pe_10_a2_oe;
wire ts_pe_10_a2_in;
wire ts_pe_11_a0_out;
wire ts_pe_11_a0_oe;
wire ts_pe_11_a0_in;
wire ts_pe_11_a1_out;
wire ts_pe_11_a1_oe;
wire ts_pe_11_a1_in;
wire ts_pe_11_a2_out;
wire ts_pe_11_a2_oe;
wire ts_pe_11_a2_in;
wire ts_pe_12_a0_out;
wire ts_pe_12_a0_oe;
wire ts_pe_12_a0_in;
wire ts_pe_12_a1_out;
wire ts_pe_12_a1_oe;
wire ts_pe_12_a1_in;
wire ts_pe_12_a2_out;
wire ts_pe_12_a2_oe;
wire ts_pe_12_a2_in;
wire ts_pe_13_a0_out;
wire ts_pe_13_a0_oe;
wire ts_pe_13_a0_in;
wire ts_pe_13_a1_out;
wire ts_pe_13_a1_oe;
wire ts_pe_13_a1_in;
wire ts_pe_13_a2_out;
wire ts_pe_13_a2_oe;
wire ts_pe_13_a2_in;
wire ts_pe_14_a0_out;
wire ts_pe_14_a0_oe;
wire ts_pe_14_a0_in;
wire ts_pe_14_a1_out;
wire ts_pe_14_a1_oe;
wire ts_pe_14_a1_in;
wire ts_pe_14_a2_out;
wire ts_pe_14_a2_oe;
wire ts_pe_14_a2_in;
wire ts_pe_15_a0_out;
wire ts_pe_15_a0_oe;
wire ts_pe_15_a0_in;
wire ts_pe_15_a1_out;
wire ts_pe_15_a1_oe;
wire ts_pe_15_a1_in;
wire ts_pe_15_a2_out;
wire ts_pe_15_a2_oe;
wire ts_pe_15_a2_in;
wire ts_pe_16_a0_out;
wire ts_pe_16_a0_oe;
wire ts_pe_16_a0_in;
wire ts_pe_16_a1_out;
wire ts_pe_16_a1_oe;
wire ts_pe_16_a1_in;
wire ts_pe_16_a2_out;
wire ts_pe_16_a2_oe;
wire ts_pe_16_a2_in;
wire ts_pe_17_a0_out;
wire ts_pe_17_a0_oe;
wire ts_pe_17_a0_in;
wire ts_pe_17_a1_out;
wire ts_pe_17_a1_oe;
wire ts_pe_17_a1_in;
wire ts_pe_17_a2_out;
wire ts_pe_17_a2_oe;
wire ts_pe_17_a2_in;
wire ts_pe_18_a0_out;
wire ts_pe_18_a0_oe;
wire ts_pe_18_a0_in;
wire ts_pe_18_a1_out;
wire ts_pe_18_a1_oe;
wire ts_pe_18_a1_in;
wire ts_pe_18_a2_out;
wire ts_pe_18_a2_oe;
wire ts_pe_18_a2_in;
wire ts_pe_19_a0_out;
wire ts_pe_19_a0_oe;
wire ts_pe_19_a0_in;
wire ts_pe_19_a1_out;
wire ts_pe_19_a1_oe;
wire ts_pe_19_a1_in;
wire ts_pe_19_a2_out;
wire ts_pe_19_a2_oe;
wire ts_pe_19_a2_in;
wire ts_pe_20_a0_out;
wire ts_pe_20_a0_oe;
wire ts_pe_20_a0_in;
wire ts_pe_20_a1_out;
wire ts_pe_20_a1_oe;
wire ts_pe_20_a1_in;
wire ts_pe_20_a2_out;
wire ts_pe_20_a2_oe;
wire ts_pe_20_a2_in;
wire ts_pe_21_a0_out;
wire ts_pe_21_a0_oe;
wire ts_pe_21_a0_in;
wire ts_pe_21_a1_out;
wire ts_pe_21_a1_oe;
wire ts_pe_21_a1_in;
wire ts_pe_21_a2_out;
wire ts_pe_21_a2_oe;
wire ts_pe_21_a2_in;
wire ts_pe_22_a0_out;
wire ts_pe_22_a0_oe;
wire ts_pe_22_a0_in;
wire ts_pe_22_a1_out;
wire ts_pe_22_a1_oe;
wire ts_pe_22_a1_in;
wire ts_pe_22_a2_out;
wire ts_pe_22_a2_oe;
wire ts_pe_22_a2_in;
wire ts_pe_23_a0_out;
wire ts_pe_23_a0_oe;
wire ts_pe_23_a0_in;
wire ts_pe_23_a1_out;
wire ts_pe_23_a1_oe;
wire ts_pe_23_a1_in;
wire ts_pe_23_a2_out;
wire ts_pe_23_a2_oe;
wire ts_pe_23_a2_in;
wire ts_pe_24_a0_out;
wire ts_pe_24_a0_oe;
wire ts_pe_24_a0_in;
wire ts_pe_24_a1_out;
wire ts_pe_24_a1_oe;
wire ts_pe_24_a1_in;
wire ts_pe_24_a2_out;
wire ts_pe_24_a2_oe;
wire ts_pe_24_a2_in;
wire ts_pe_25_a0_out;
wire ts_pe_25_a0_oe;
wire ts_pe_25_a0_in;
wire ts_pe_25_a1_out;
wire ts_pe_25_a1_oe;
wire ts_pe_25_a1_in;
wire ts_pe_25_a2_out;
wire ts_pe_25_a2_oe;
wire ts_pe_25_a2_in;
wire ts_pe_26_a0_out;
wire ts_pe_26_a0_oe;
wire ts_pe_26_a0_in;
wire ts_pe_26_a1_out;
wire ts_pe_26_a1_oe;
wire ts_pe_26_a1_in;
wire ts_pe_26_a2_out;
wire ts_pe_26_a2_oe;
wire ts_pe_26_a2_in;
wire ts_pe_27_a0_out;
wire ts_pe_27_a0_oe;
wire ts_pe_27_a0_in;
wire ts_pe_27_a1_out;
wire ts_pe_27_a1_oe;
wire ts_pe_27_a1_in;
wire ts_pe_27_a2_out;
wire ts_pe_27_a2_oe;
wire ts_pe_27_a2_in;
wire ts_pe_28_a0_out;
wire ts_pe_28_a0_oe;
wire ts_pe_28_a0_in;
wire ts_pe_28_a1_out;
wire ts_pe_28_a1_oe;
wire ts_pe_28_a1_in;
wire ts_pe_28_a2_out;
wire ts_pe_28_a2_oe;
wire ts_pe_28_a2_in;
wire ts_pe_29_a0_out;
wire ts_pe_29_a0_oe;
wire ts_pe_29_a0_in;
wire ts_pe_29_a1_out;
wire ts_pe_29_a1_oe;
wire ts_pe_29_a1_in;
wire ts_pe_29_a2_out;
wire ts_pe_29_a2_oe;
wire ts_pe_29_a2_in;
wire ts_pe_30_a0_out;
wire ts_pe_30_a0_oe;
wire ts_pe_30_a0_in;
wire ts_pe_30_a1_out;
wire ts_pe_30_a1_oe;
wire ts_pe_30_a1_in;
wire ts_pe_30_a2_out;
wire ts_pe_30_a2_oe;
wire ts_pe_30_a2_in;
wire ts_pe_31_a0_out;
wire ts_pe_31_a0_oe;
wire ts_pe_31_a0_in;
wire ts_pe_31_a1_out;
wire ts_pe_31_a1_oe;
wire ts_pe_31_a1_in;
wire ts_pe_31_a2_out;
wire ts_pe_31_a2_oe;
wire ts_pe_31_a2_in;
wire ts_pe_32_a0_out;
wire ts_pe_32_a0_oe;
wire ts_pe_32_a0_in;
wire ts_pe_32_a1_out;
wire ts_pe_32_a1_oe;
wire ts_pe_32_a1_in;
wire ts_pe_32_a2_out;
wire ts_pe_32_a2_oe;
wire ts_pe_32_a2_in;
wire ts_pe_33_a0_out;
wire ts_pe_33_a0_oe;
wire ts_pe_33_a0_in;
wire ts_pe_33_a1_out;
wire ts_pe_33_a1_oe;
wire ts_pe_33_a1_in;
wire ts_pe_33_a2_out;
wire ts_pe_33_a2_oe;
wire ts_pe_33_a2_in;
wire ts_pe_34_a0_out;
wire ts_pe_34_a0_oe;
wire ts_pe_34_a0_in;
wire ts_pe_34_a1_out;
wire ts_pe_34_a1_oe;
wire ts_pe_34_a1_in;
wire ts_pe_34_a2_out;
wire ts_pe_34_a2_oe;
wire ts_pe_34_a2_in;
wire ts_pe_35_a0_out;
wire ts_pe_35_a0_oe;
wire ts_pe_35_a0_in;
wire ts_pe_35_a1_out;
wire ts_pe_35_a1_oe;
wire ts_pe_35_a1_in;
wire ts_pe_35_a2_out;
wire ts_pe_35_a2_oe;
wire ts_pe_35_a2_in;
wire ts_pe_36_a0_out;
wire ts_pe_36_a0_oe;
wire ts_pe_36_a0_in;
wire ts_pe_36_a1_out;
wire ts_pe_36_a1_oe;
wire ts_pe_36_a1_in;
wire ts_pe_36_a2_out;
wire ts_pe_36_a2_oe;
wire ts_pe_36_a2_in;
wire ts_pe_37_a0_out;
wire ts_pe_37_a0_oe;
wire ts_pe_37_a0_in;
wire ts_pe_37_a1_out;
wire ts_pe_37_a1_oe;
wire ts_pe_37_a1_in;
wire ts_pe_37_a2_out;
wire ts_pe_37_a2_oe;
wire ts_pe_37_a2_in;
wire ts_pe_38_a0_out;
wire ts_pe_38_a0_oe;
wire ts_pe_38_a0_in;
wire ts_pe_38_a1_out;
wire ts_pe_38_a1_oe;
wire ts_pe_38_a1_in;
wire ts_pe_38_a2_out;
wire ts_pe_38_a2_oe;
wire ts_pe_38_a2_in;

// DSP_RAM.NET (29) - ramdd[0-9] : niv
assign ramdd_0 = ram_addr_2;
assign ramdd_1 = ram_addr_3;
assign ramdd_2 = ram_addr_4;
assign ramdd_3 = ram_addr_5;
assign ramdd_4 = ram_addr_6;
assign ramdd_5 = ram_addr_7;
assign ramdd_6 = ram_addr_8;
assign ramdd_7 = ram_addr_9;
assign ramdd_8 = ram_addr_10;
assign ramdd_9 = ram_addr_11;

// DSP_RAM.NET (30) - ramad[0-9] : nivm
assign ramad_0 = ramdd_0;
assign ramad_1 = ramdd_1;
assign ramad_2 = ramdd_2;
assign ramad_3 = ramdd_3;
assign ramad_4 = ramdd_4;
assign ramad_5 = ramdd_5;
assign ramad_6 = ramdd_6;
assign ramad_7 = ramdd_7;
assign ramad_8 = ramdd_8;
assign ramad_9 = ramdd_9;

// DSP_RAM.NET (31) - rama : join
assign rama[0] = ramad_0;
assign rama[1] = ramad_1;
assign rama[2] = ramad_2;
assign rama[3] = ramad_3;
assign rama[4] = ramad_4;
assign rama[5] = ramad_5;
assign rama[6] = ramad_6;
assign rama[7] = ramad_7;
assign rama[8] = ramad_8;
assign rama[9] = ramad_9;

// DSP_RAM.NET (33) - ramwe[0-1] : nd2p
assign ramwe_0 = ~(ramen_0 & gpu_memw);
assign ramwe_1 = ~(ramen_1 & gpu_memw);

// DSP_RAM.NET (37) - program[0] : gpuram
j_gpuram program_index_0_inst
(
	.gpu_data_out /* BUS */ ({ts_pe_7_a0_out,ts_pe_8_a0_out,ts_pe_9_a0_out,ts_pe_10_a0_out,ts_pe_11_a0_out,ts_pe_12_a0_out,ts_pe_13_a0_out,ts_pe_14_a0_out,ts_pe_15_a0_out,ts_pe_16_a0_out,ts_pe_17_a0_out,ts_pe_18_a0_out,ts_pe_19_a0_out,ts_pe_20_a0_out,ts_pe_21_a0_out,ts_pe_22_a0_out,ts_pe_23_a0_out,ts_pe_24_a0_out,ts_pe_25_a0_out,ts_pe_26_a0_out,ts_pe_27_a0_out,ts_pe_28_a0_out,ts_pe_29_a0_out,ts_pe_30_a0_out,ts_pe_31_a0_out,ts_pe_32_a0_out,ts_pe_33_a0_out,ts_pe_34_a0_out,ts_pe_35_a0_out,ts_pe_36_a0_out,ts_pe_37_a0_out,ts_pe_38_a0_out}),
	.gpu_data_oe /* BUS */ ({ts_pe_7_a0_oe,ts_pe_8_a0_oe,ts_pe_9_a0_oe,ts_pe_10_a0_oe,ts_pe_11_a0_oe,ts_pe_12_a0_oe,ts_pe_13_a0_oe,ts_pe_14_a0_oe,ts_pe_15_a0_oe,ts_pe_16_a0_oe,ts_pe_17_a0_oe,ts_pe_18_a0_oe,ts_pe_19_a0_oe,ts_pe_20_a0_oe,ts_pe_21_a0_oe,ts_pe_22_a0_oe,ts_pe_23_a0_oe,ts_pe_24_a0_oe,ts_pe_25_a0_oe,ts_pe_26_a0_oe,ts_pe_27_a0_oe,ts_pe_28_a0_oe,ts_pe_29_a0_oe,ts_pe_30_a0_oe,ts_pe_31_a0_oe,ts_pe_32_a0_oe,ts_pe_33_a0_oe,ts_pe_34_a0_oe,ts_pe_35_a0_oe,ts_pe_36_a0_oe,ts_pe_37_a0_oe,ts_pe_38_a0_oe}),
	.gpu_data_in /* BUS */ ({ts_pe_7_a0_in,ts_pe_8_a0_in,ts_pe_9_a0_in,ts_pe_10_a0_in,ts_pe_11_a0_in,ts_pe_12_a0_in,ts_pe_13_a0_in,ts_pe_14_a0_in,ts_pe_15_a0_in,ts_pe_16_a0_in,ts_pe_17_a0_in,ts_pe_18_a0_in,ts_pe_19_a0_in,ts_pe_20_a0_in,ts_pe_21_a0_in,ts_pe_22_a0_in,ts_pe_23_a0_in,ts_pe_24_a0_in,ts_pe_25_a0_in,ts_pe_26_a0_in,ts_pe_27_a0_in,ts_pe_28_a0_in,ts_pe_29_a0_in,ts_pe_30_a0_in,ts_pe_31_a0_in,ts_pe_32_a0_in,ts_pe_33_a0_in,ts_pe_34_a0_in,ts_pe_35_a0_in,ts_pe_36_a0_in,ts_pe_37_a0_in,ts_pe_38_a0_in}),
	.clk /* IN */ (clk),
	.rama /* IN */ ({rama[0],rama[1],rama[2],rama[3],rama[4],rama[5],rama[6],rama[7],rama[8],rama[9]}),
	.ramen /* IN */ (ramen_0),
	.ramwe /* IN */ (ramwe_0),
	.sys_clk(sys_clk) // Generated
);

// DSP_RAM.NET (38) - program[1] : gpuram
j_gpuram program_index_1_inst
(
	.gpu_data_out /* BUS */ ({ts_pe_7_a1_out,ts_pe_8_a1_out,ts_pe_9_a1_out,ts_pe_10_a1_out,ts_pe_11_a1_out,ts_pe_12_a1_out,ts_pe_13_a1_out,ts_pe_14_a1_out,ts_pe_15_a1_out,ts_pe_16_a1_out,ts_pe_17_a1_out,ts_pe_18_a1_out,ts_pe_19_a1_out,ts_pe_20_a1_out,ts_pe_21_a1_out,ts_pe_22_a1_out,ts_pe_23_a1_out,ts_pe_24_a1_out,ts_pe_25_a1_out,ts_pe_26_a1_out,ts_pe_27_a1_out,ts_pe_28_a1_out,ts_pe_29_a1_out,ts_pe_30_a1_out,ts_pe_31_a1_out,ts_pe_32_a1_out,ts_pe_33_a1_out,ts_pe_34_a1_out,ts_pe_35_a1_out,ts_pe_36_a1_out,ts_pe_37_a1_out,ts_pe_38_a1_out}),
	.gpu_data_oe /* BUS */ ({ts_pe_7_a1_oe,ts_pe_8_a1_oe,ts_pe_9_a1_oe,ts_pe_10_a1_oe,ts_pe_11_a1_oe,ts_pe_12_a1_oe,ts_pe_13_a1_oe,ts_pe_14_a1_oe,ts_pe_15_a1_oe,ts_pe_16_a1_oe,ts_pe_17_a1_oe,ts_pe_18_a1_oe,ts_pe_19_a1_oe,ts_pe_20_a1_oe,ts_pe_21_a1_oe,ts_pe_22_a1_oe,ts_pe_23_a1_oe,ts_pe_24_a1_oe,ts_pe_25_a1_oe,ts_pe_26_a1_oe,ts_pe_27_a1_oe,ts_pe_28_a1_oe,ts_pe_29_a1_oe,ts_pe_30_a1_oe,ts_pe_31_a1_oe,ts_pe_32_a1_oe,ts_pe_33_a1_oe,ts_pe_34_a1_oe,ts_pe_35_a1_oe,ts_pe_36_a1_oe,ts_pe_37_a1_oe,ts_pe_38_a1_oe}),
	.gpu_data_in /* BUS */ ({ts_pe_7_a1_in,ts_pe_8_a1_in,ts_pe_9_a1_in,ts_pe_10_a1_in,ts_pe_11_a1_in,ts_pe_12_a1_in,ts_pe_13_a1_in,ts_pe_14_a1_in,ts_pe_15_a1_in,ts_pe_16_a1_in,ts_pe_17_a1_in,ts_pe_18_a1_in,ts_pe_19_a1_in,ts_pe_20_a1_in,ts_pe_21_a1_in,ts_pe_22_a1_in,ts_pe_23_a1_in,ts_pe_24_a1_in,ts_pe_25_a1_in,ts_pe_26_a1_in,ts_pe_27_a1_in,ts_pe_28_a1_in,ts_pe_29_a1_in,ts_pe_30_a1_in,ts_pe_31_a1_in,ts_pe_32_a1_in,ts_pe_33_a1_in,ts_pe_34_a1_in,ts_pe_35_a1_in,ts_pe_36_a1_in,ts_pe_37_a1_in,ts_pe_38_a1_in}),
	.clk /* IN */ (clk),
	.rama /* IN */ ({rama[0],rama[1],rama[2],rama[3],rama[4],rama[5],rama[6],rama[7],rama[8],rama[9]}),
	.ramen /* IN */ (ramen_1),
	.ramwe /* IN */ (ramwe_1),
	.sys_clk(sys_clk) // Generated
);

// DSP_RAM.NET (40) - sinerom : sinerom
j_sinerom sinerom_inst
(
	.gpu_data_out /* BUS */ ({ts_pe_7_a2_out,ts_pe_8_a2_out,ts_pe_9_a2_out,ts_pe_10_a2_out,ts_pe_11_a2_out,ts_pe_12_a2_out,ts_pe_13_a2_out,ts_pe_14_a2_out,ts_pe_15_a2_out,ts_pe_16_a2_out,ts_pe_17_a2_out,ts_pe_18_a2_out,ts_pe_19_a2_out,ts_pe_20_a2_out,ts_pe_21_a2_out,ts_pe_22_a2_out,ts_pe_23_a2_out,ts_pe_24_a2_out,ts_pe_25_a2_out,ts_pe_26_a2_out,ts_pe_27_a2_out,ts_pe_28_a2_out,ts_pe_29_a2_out,ts_pe_30_a2_out,ts_pe_31_a2_out,ts_pe_32_a2_out,ts_pe_33_a2_out,ts_pe_34_a2_out,ts_pe_35_a2_out,ts_pe_36_a2_out,ts_pe_37_a2_out,ts_pe_38_a2_out}),
	.gpu_data_oe /* BUS */ ({ts_pe_7_a2_oe,ts_pe_8_a2_oe,ts_pe_9_a2_oe,ts_pe_10_a2_oe,ts_pe_11_a2_oe,ts_pe_12_a2_oe,ts_pe_13_a2_oe,ts_pe_14_a2_oe,ts_pe_15_a2_oe,ts_pe_16_a2_oe,ts_pe_17_a2_oe,ts_pe_18_a2_oe,ts_pe_19_a2_oe,ts_pe_20_a2_oe,ts_pe_21_a2_oe,ts_pe_22_a2_oe,ts_pe_23_a2_oe,ts_pe_24_a2_oe,ts_pe_25_a2_oe,ts_pe_26_a2_oe,ts_pe_27_a2_oe,ts_pe_28_a2_oe,ts_pe_29_a2_oe,ts_pe_30_a2_oe,ts_pe_31_a2_oe,ts_pe_32_a2_oe,ts_pe_33_a2_oe,ts_pe_34_a2_oe,ts_pe_35_a2_oe,ts_pe_36_a2_oe,ts_pe_37_a2_oe,ts_pe_38_a2_oe}),
	.gpu_data_in /* BUS */ ({ts_pe_7_a2_in,ts_pe_8_a2_in,ts_pe_9_a2_in,ts_pe_10_a2_in,ts_pe_11_a2_in,ts_pe_12_a2_in,ts_pe_13_a2_in,ts_pe_14_a2_in,ts_pe_15_a2_in,ts_pe_16_a2_in,ts_pe_17_a2_in,ts_pe_18_a2_in,ts_pe_19_a2_in,ts_pe_20_a2_in,ts_pe_21_a2_in,ts_pe_22_a2_in,ts_pe_23_a2_in,ts_pe_24_a2_in,ts_pe_25_a2_in,ts_pe_26_a2_in,ts_pe_27_a2_in,ts_pe_28_a2_in,ts_pe_29_a2_in,ts_pe_30_a2_in,ts_pe_31_a2_in,ts_pe_32_a2_in,ts_pe_33_a2_in,ts_pe_34_a2_in,ts_pe_35_a2_in,ts_pe_36_a2_in,ts_pe_37_a2_in,ts_pe_38_a2_in}),
	.clk /* IN */ (clk),
	.roma /* IN */ ({rama[0],rama[1],rama[2],rama[3],rama[4],rama[5],rama[6],rama[7],rama[8],rama[9]}),
	.romen /* IN */ (romen),
	.sys_clk(sys_clk) // Generated
);

// --- Compiler-generated PE for BUS gpu_data<0>
assign gpu_data_out[0] = (ts_pe_7_a0_oe & ts_pe_7_a0_out ) | (ts_pe_7_a1_oe & ts_pe_7_a1_out ) | (ts_pe_7_a2_oe & ts_pe_7_a2_out ) | 1'b0;
assign gpu_data_oe[0] = ts_pe_7_a0_oe | ts_pe_7_a1_oe | ts_pe_7_a2_oe;
assign ts_pe_7_a0_in = gpu_data_in[0];
assign ts_pe_7_a1_in = gpu_data_in[0];
assign ts_pe_7_a2_in = gpu_data_in[0];

// --- Compiler-generated PE for BUS gpu_data<1>
assign gpu_data_out[1] = (ts_pe_8_a0_oe & ts_pe_8_a0_out ) | (ts_pe_8_a1_oe & ts_pe_8_a1_out ) | (ts_pe_8_a2_oe & ts_pe_8_a2_out ) | 1'b0;
assign gpu_data_oe[1] = ts_pe_8_a0_oe | ts_pe_8_a1_oe | ts_pe_8_a2_oe;
assign ts_pe_8_a0_in = gpu_data_in[1];
assign ts_pe_8_a1_in = gpu_data_in[1];
assign ts_pe_8_a2_in = gpu_data_in[1];

// --- Compiler-generated PE for BUS gpu_data<2>
assign gpu_data_out[2] = (ts_pe_9_a0_oe & ts_pe_9_a0_out ) | (ts_pe_9_a1_oe & ts_pe_9_a1_out ) | (ts_pe_9_a2_oe & ts_pe_9_a2_out ) | 1'b0;
assign gpu_data_oe[2] = ts_pe_9_a0_oe | ts_pe_9_a1_oe | ts_pe_9_a2_oe;
assign ts_pe_9_a0_in = gpu_data_in[2];
assign ts_pe_9_a1_in = gpu_data_in[2];
assign ts_pe_9_a2_in = gpu_data_in[2];

// --- Compiler-generated PE for BUS gpu_data<3>
assign gpu_data_out[3] = (ts_pe_10_a0_oe & ts_pe_10_a0_out ) | (ts_pe_10_a1_oe & ts_pe_10_a1_out ) | (ts_pe_10_a2_oe & ts_pe_10_a2_out ) | 1'b0;
assign gpu_data_oe[3] = ts_pe_10_a0_oe | ts_pe_10_a1_oe | ts_pe_10_a2_oe;
assign ts_pe_10_a0_in = gpu_data_in[3];
assign ts_pe_10_a1_in = gpu_data_in[3];
assign ts_pe_10_a2_in = gpu_data_in[3];

// --- Compiler-generated PE for BUS gpu_data<4>
assign gpu_data_out[4] = (ts_pe_11_a0_oe & ts_pe_11_a0_out ) | (ts_pe_11_a1_oe & ts_pe_11_a1_out ) | (ts_pe_11_a2_oe & ts_pe_11_a2_out ) | 1'b0;
assign gpu_data_oe[4] = ts_pe_11_a0_oe | ts_pe_11_a1_oe | ts_pe_11_a2_oe;
assign ts_pe_11_a0_in = gpu_data_in[4];
assign ts_pe_11_a1_in = gpu_data_in[4];
assign ts_pe_11_a2_in = gpu_data_in[4];

// --- Compiler-generated PE for BUS gpu_data<5>
assign gpu_data_out[5] = (ts_pe_12_a0_oe & ts_pe_12_a0_out ) | (ts_pe_12_a1_oe & ts_pe_12_a1_out ) | (ts_pe_12_a2_oe & ts_pe_12_a2_out ) | 1'b0;
assign gpu_data_oe[5] = ts_pe_12_a0_oe | ts_pe_12_a1_oe | ts_pe_12_a2_oe;
assign ts_pe_12_a0_in = gpu_data_in[5];
assign ts_pe_12_a1_in = gpu_data_in[5];
assign ts_pe_12_a2_in = gpu_data_in[5];

// --- Compiler-generated PE for BUS gpu_data<6>
assign gpu_data_out[6] = (ts_pe_13_a0_oe & ts_pe_13_a0_out ) | (ts_pe_13_a1_oe & ts_pe_13_a1_out ) | (ts_pe_13_a2_oe & ts_pe_13_a2_out ) | 1'b0;
assign gpu_data_oe[6] = ts_pe_13_a0_oe | ts_pe_13_a1_oe | ts_pe_13_a2_oe;
assign ts_pe_13_a0_in = gpu_data_in[6];
assign ts_pe_13_a1_in = gpu_data_in[6];
assign ts_pe_13_a2_in = gpu_data_in[6];

// --- Compiler-generated PE for BUS gpu_data<7>
assign gpu_data_out[7] = (ts_pe_14_a0_oe & ts_pe_14_a0_out ) | (ts_pe_14_a1_oe & ts_pe_14_a1_out ) | (ts_pe_14_a2_oe & ts_pe_14_a2_out ) | 1'b0;
assign gpu_data_oe[7] = ts_pe_14_a0_oe | ts_pe_14_a1_oe | ts_pe_14_a2_oe;
assign ts_pe_14_a0_in = gpu_data_in[7];
assign ts_pe_14_a1_in = gpu_data_in[7];
assign ts_pe_14_a2_in = gpu_data_in[7];

// --- Compiler-generated PE for BUS gpu_data<8>
assign gpu_data_out[8] = (ts_pe_15_a0_oe & ts_pe_15_a0_out ) | (ts_pe_15_a1_oe & ts_pe_15_a1_out ) | (ts_pe_15_a2_oe & ts_pe_15_a2_out ) | 1'b0;
assign gpu_data_oe[8] = ts_pe_15_a0_oe | ts_pe_15_a1_oe | ts_pe_15_a2_oe;
assign ts_pe_15_a0_in = gpu_data_in[8];
assign ts_pe_15_a1_in = gpu_data_in[8];
assign ts_pe_15_a2_in = gpu_data_in[8];

// --- Compiler-generated PE for BUS gpu_data<9>
assign gpu_data_out[9] = (ts_pe_16_a0_oe & ts_pe_16_a0_out ) | (ts_pe_16_a1_oe & ts_pe_16_a1_out ) | (ts_pe_16_a2_oe & ts_pe_16_a2_out ) | 1'b0;
assign gpu_data_oe[9] = ts_pe_16_a0_oe | ts_pe_16_a1_oe | ts_pe_16_a2_oe;
assign ts_pe_16_a0_in = gpu_data_in[9];
assign ts_pe_16_a1_in = gpu_data_in[9];
assign ts_pe_16_a2_in = gpu_data_in[9];

// --- Compiler-generated PE for BUS gpu_data<10>
assign gpu_data_out[10] = (ts_pe_17_a0_oe & ts_pe_17_a0_out ) | (ts_pe_17_a1_oe & ts_pe_17_a1_out ) | (ts_pe_17_a2_oe & ts_pe_17_a2_out ) | 1'b0;
assign gpu_data_oe[10] = ts_pe_17_a0_oe | ts_pe_17_a1_oe | ts_pe_17_a2_oe;
assign ts_pe_17_a0_in = gpu_data_in[10];
assign ts_pe_17_a1_in = gpu_data_in[10];
assign ts_pe_17_a2_in = gpu_data_in[10];

// --- Compiler-generated PE for BUS gpu_data<11>
assign gpu_data_out[11] = (ts_pe_18_a0_oe & ts_pe_18_a0_out ) | (ts_pe_18_a1_oe & ts_pe_18_a1_out ) | (ts_pe_18_a2_oe & ts_pe_18_a2_out ) | 1'b0;
assign gpu_data_oe[11] = ts_pe_18_a0_oe | ts_pe_18_a1_oe | ts_pe_18_a2_oe;
assign ts_pe_18_a0_in = gpu_data_in[11];
assign ts_pe_18_a1_in = gpu_data_in[11];
assign ts_pe_18_a2_in = gpu_data_in[11];

// --- Compiler-generated PE for BUS gpu_data<12>
assign gpu_data_out[12] = (ts_pe_19_a0_oe & ts_pe_19_a0_out ) | (ts_pe_19_a1_oe & ts_pe_19_a1_out ) | (ts_pe_19_a2_oe & ts_pe_19_a2_out ) | 1'b0;
assign gpu_data_oe[12] = ts_pe_19_a0_oe | ts_pe_19_a1_oe | ts_pe_19_a2_oe;
assign ts_pe_19_a0_in = gpu_data_in[12];
assign ts_pe_19_a1_in = gpu_data_in[12];
assign ts_pe_19_a2_in = gpu_data_in[12];

// --- Compiler-generated PE for BUS gpu_data<13>
assign gpu_data_out[13] = (ts_pe_20_a0_oe & ts_pe_20_a0_out ) | (ts_pe_20_a1_oe & ts_pe_20_a1_out ) | (ts_pe_20_a2_oe & ts_pe_20_a2_out ) | 1'b0;
assign gpu_data_oe[13] = ts_pe_20_a0_oe | ts_pe_20_a1_oe | ts_pe_20_a2_oe;
assign ts_pe_20_a0_in = gpu_data_in[13];
assign ts_pe_20_a1_in = gpu_data_in[13];
assign ts_pe_20_a2_in = gpu_data_in[13];

// --- Compiler-generated PE for BUS gpu_data<14>
assign gpu_data_out[14] = (ts_pe_21_a0_oe & ts_pe_21_a0_out ) | (ts_pe_21_a1_oe & ts_pe_21_a1_out ) | (ts_pe_21_a2_oe & ts_pe_21_a2_out ) | 1'b0;
assign gpu_data_oe[14] = ts_pe_21_a0_oe | ts_pe_21_a1_oe | ts_pe_21_a2_oe;
assign ts_pe_21_a0_in = gpu_data_in[14];
assign ts_pe_21_a1_in = gpu_data_in[14];
assign ts_pe_21_a2_in = gpu_data_in[14];

// --- Compiler-generated PE for BUS gpu_data<15>
assign gpu_data_out[15] = (ts_pe_22_a0_oe & ts_pe_22_a0_out ) | (ts_pe_22_a1_oe & ts_pe_22_a1_out ) | (ts_pe_22_a2_oe & ts_pe_22_a2_out ) | 1'b0;
assign gpu_data_oe[15] = ts_pe_22_a0_oe | ts_pe_22_a1_oe | ts_pe_22_a2_oe;
assign ts_pe_22_a0_in = gpu_data_in[15];
assign ts_pe_22_a1_in = gpu_data_in[15];
assign ts_pe_22_a2_in = gpu_data_in[15];

// --- Compiler-generated PE for BUS gpu_data<16>
assign gpu_data_out[16] = (ts_pe_23_a0_oe & ts_pe_23_a0_out ) | (ts_pe_23_a1_oe & ts_pe_23_a1_out ) | (ts_pe_23_a2_oe & ts_pe_23_a2_out ) | 1'b0;
assign gpu_data_oe[16] = ts_pe_23_a0_oe | ts_pe_23_a1_oe | ts_pe_23_a2_oe;
assign ts_pe_23_a0_in = gpu_data_in[16];
assign ts_pe_23_a1_in = gpu_data_in[16];
assign ts_pe_23_a2_in = gpu_data_in[16];

// --- Compiler-generated PE for BUS gpu_data<17>
assign gpu_data_out[17] = (ts_pe_24_a0_oe & ts_pe_24_a0_out ) | (ts_pe_24_a1_oe & ts_pe_24_a1_out ) | (ts_pe_24_a2_oe & ts_pe_24_a2_out ) | 1'b0;
assign gpu_data_oe[17] = ts_pe_24_a0_oe | ts_pe_24_a1_oe | ts_pe_24_a2_oe;
assign ts_pe_24_a0_in = gpu_data_in[17];
assign ts_pe_24_a1_in = gpu_data_in[17];
assign ts_pe_24_a2_in = gpu_data_in[17];

// --- Compiler-generated PE for BUS gpu_data<18>
assign gpu_data_out[18] = (ts_pe_25_a0_oe & ts_pe_25_a0_out ) | (ts_pe_25_a1_oe & ts_pe_25_a1_out ) | (ts_pe_25_a2_oe & ts_pe_25_a2_out ) | 1'b0;
assign gpu_data_oe[18] = ts_pe_25_a0_oe | ts_pe_25_a1_oe | ts_pe_25_a2_oe;
assign ts_pe_25_a0_in = gpu_data_in[18];
assign ts_pe_25_a1_in = gpu_data_in[18];
assign ts_pe_25_a2_in = gpu_data_in[18];

// --- Compiler-generated PE for BUS gpu_data<19>
assign gpu_data_out[19] = (ts_pe_26_a0_oe & ts_pe_26_a0_out ) | (ts_pe_26_a1_oe & ts_pe_26_a1_out ) | (ts_pe_26_a2_oe & ts_pe_26_a2_out ) | 1'b0;
assign gpu_data_oe[19] = ts_pe_26_a0_oe | ts_pe_26_a1_oe | ts_pe_26_a2_oe;
assign ts_pe_26_a0_in = gpu_data_in[19];
assign ts_pe_26_a1_in = gpu_data_in[19];
assign ts_pe_26_a2_in = gpu_data_in[19];

// --- Compiler-generated PE for BUS gpu_data<20>
assign gpu_data_out[20] = (ts_pe_27_a0_oe & ts_pe_27_a0_out ) | (ts_pe_27_a1_oe & ts_pe_27_a1_out ) | (ts_pe_27_a2_oe & ts_pe_27_a2_out ) | 1'b0;
assign gpu_data_oe[20] = ts_pe_27_a0_oe | ts_pe_27_a1_oe | ts_pe_27_a2_oe;
assign ts_pe_27_a0_in = gpu_data_in[20];
assign ts_pe_27_a1_in = gpu_data_in[20];
assign ts_pe_27_a2_in = gpu_data_in[20];

// --- Compiler-generated PE for BUS gpu_data<21>
assign gpu_data_out[21] = (ts_pe_28_a0_oe & ts_pe_28_a0_out ) | (ts_pe_28_a1_oe & ts_pe_28_a1_out ) | (ts_pe_28_a2_oe & ts_pe_28_a2_out ) | 1'b0;
assign gpu_data_oe[21] = ts_pe_28_a0_oe | ts_pe_28_a1_oe | ts_pe_28_a2_oe;
assign ts_pe_28_a0_in = gpu_data_in[21];
assign ts_pe_28_a1_in = gpu_data_in[21];
assign ts_pe_28_a2_in = gpu_data_in[21];

// --- Compiler-generated PE for BUS gpu_data<22>
assign gpu_data_out[22] = (ts_pe_29_a0_oe & ts_pe_29_a0_out ) | (ts_pe_29_a1_oe & ts_pe_29_a1_out ) | (ts_pe_29_a2_oe & ts_pe_29_a2_out ) | 1'b0;
assign gpu_data_oe[22] = ts_pe_29_a0_oe | ts_pe_29_a1_oe | ts_pe_29_a2_oe;
assign ts_pe_29_a0_in = gpu_data_in[22];
assign ts_pe_29_a1_in = gpu_data_in[22];
assign ts_pe_29_a2_in = gpu_data_in[22];

// --- Compiler-generated PE for BUS gpu_data<23>
assign gpu_data_out[23] = (ts_pe_30_a0_oe & ts_pe_30_a0_out ) | (ts_pe_30_a1_oe & ts_pe_30_a1_out ) | (ts_pe_30_a2_oe & ts_pe_30_a2_out ) | 1'b0;
assign gpu_data_oe[23] = ts_pe_30_a0_oe | ts_pe_30_a1_oe | ts_pe_30_a2_oe;
assign ts_pe_30_a0_in = gpu_data_in[23];
assign ts_pe_30_a1_in = gpu_data_in[23];
assign ts_pe_30_a2_in = gpu_data_in[23];

// --- Compiler-generated PE for BUS gpu_data<24>
assign gpu_data_out[24] = (ts_pe_31_a0_oe & ts_pe_31_a0_out ) | (ts_pe_31_a1_oe & ts_pe_31_a1_out ) | (ts_pe_31_a2_oe & ts_pe_31_a2_out ) | 1'b0;
assign gpu_data_oe[24] = ts_pe_31_a0_oe | ts_pe_31_a1_oe | ts_pe_31_a2_oe;
assign ts_pe_31_a0_in = gpu_data_in[24];
assign ts_pe_31_a1_in = gpu_data_in[24];
assign ts_pe_31_a2_in = gpu_data_in[24];

// --- Compiler-generated PE for BUS gpu_data<25>
assign gpu_data_out[25] = (ts_pe_32_a0_oe & ts_pe_32_a0_out ) | (ts_pe_32_a1_oe & ts_pe_32_a1_out ) | (ts_pe_32_a2_oe & ts_pe_32_a2_out ) | 1'b0;
assign gpu_data_oe[25] = ts_pe_32_a0_oe | ts_pe_32_a1_oe | ts_pe_32_a2_oe;
assign ts_pe_32_a0_in = gpu_data_in[25];
assign ts_pe_32_a1_in = gpu_data_in[25];
assign ts_pe_32_a2_in = gpu_data_in[25];

// --- Compiler-generated PE for BUS gpu_data<26>
assign gpu_data_out[26] = (ts_pe_33_a0_oe & ts_pe_33_a0_out ) | (ts_pe_33_a1_oe & ts_pe_33_a1_out ) | (ts_pe_33_a2_oe & ts_pe_33_a2_out ) | 1'b0;
assign gpu_data_oe[26] = ts_pe_33_a0_oe | ts_pe_33_a1_oe | ts_pe_33_a2_oe;
assign ts_pe_33_a0_in = gpu_data_in[26];
assign ts_pe_33_a1_in = gpu_data_in[26];
assign ts_pe_33_a2_in = gpu_data_in[26];

// --- Compiler-generated PE for BUS gpu_data<27>
assign gpu_data_out[27] = (ts_pe_34_a0_oe & ts_pe_34_a0_out ) | (ts_pe_34_a1_oe & ts_pe_34_a1_out ) | (ts_pe_34_a2_oe & ts_pe_34_a2_out ) | 1'b0;
assign gpu_data_oe[27] = ts_pe_34_a0_oe | ts_pe_34_a1_oe | ts_pe_34_a2_oe;
assign ts_pe_34_a0_in = gpu_data_in[27];
assign ts_pe_34_a1_in = gpu_data_in[27];
assign ts_pe_34_a2_in = gpu_data_in[27];

// --- Compiler-generated PE for BUS gpu_data<28>
assign gpu_data_out[28] = (ts_pe_35_a0_oe & ts_pe_35_a0_out ) | (ts_pe_35_a1_oe & ts_pe_35_a1_out ) | (ts_pe_35_a2_oe & ts_pe_35_a2_out ) | 1'b0;
assign gpu_data_oe[28] = ts_pe_35_a0_oe | ts_pe_35_a1_oe | ts_pe_35_a2_oe;
assign ts_pe_35_a0_in = gpu_data_in[28];
assign ts_pe_35_a1_in = gpu_data_in[28];
assign ts_pe_35_a2_in = gpu_data_in[28];

// --- Compiler-generated PE for BUS gpu_data<29>
assign gpu_data_out[29] = (ts_pe_36_a0_oe & ts_pe_36_a0_out ) | (ts_pe_36_a1_oe & ts_pe_36_a1_out ) | (ts_pe_36_a2_oe & ts_pe_36_a2_out ) | 1'b0;
assign gpu_data_oe[29] = ts_pe_36_a0_oe | ts_pe_36_a1_oe | ts_pe_36_a2_oe;
assign ts_pe_36_a0_in = gpu_data_in[29];
assign ts_pe_36_a1_in = gpu_data_in[29];
assign ts_pe_36_a2_in = gpu_data_in[29];

// --- Compiler-generated PE for BUS gpu_data<30>
assign gpu_data_out[30] = (ts_pe_37_a0_oe & ts_pe_37_a0_out ) | (ts_pe_37_a1_oe & ts_pe_37_a1_out ) | (ts_pe_37_a2_oe & ts_pe_37_a2_out ) | 1'b0;
assign gpu_data_oe[30] = ts_pe_37_a0_oe | ts_pe_37_a1_oe | ts_pe_37_a2_oe;
assign ts_pe_37_a0_in = gpu_data_in[30];
assign ts_pe_37_a1_in = gpu_data_in[30];
assign ts_pe_37_a2_in = gpu_data_in[30];

// --- Compiler-generated PE for BUS gpu_data<31>
assign gpu_data_out[31] = (ts_pe_38_a0_oe & ts_pe_38_a0_out ) | (ts_pe_38_a1_oe & ts_pe_38_a1_out ) | (ts_pe_38_a2_oe & ts_pe_38_a2_out ) | 1'b0;
assign gpu_data_oe[31] = ts_pe_38_a0_oe | ts_pe_38_a1_oe | ts_pe_38_a2_oe;
assign ts_pe_38_a0_in = gpu_data_in[31];
assign ts_pe_38_a1_in = gpu_data_in[31];
assign ts_pe_38_a2_in = gpu_data_in[31];
endmodule
/* verilator lint_on LITENDIAN */
