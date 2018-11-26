/* verilator lint_off LITENDIAN */
`include "defs.v"

module local_mux
(
	output [0:31] local_data_0,
	output [0:31] local_data_1,
	output [0:31] load_data_0,
	output [0:31] load_data_1,
	input [0:15] addq_0,
	input [0:15] addq_1,
	input [0:15] addq_2,
	input [0:15] addq_3,
	input [0:31] gpu_din,
	input data_0,
	input data_1,
	input data_2,
	input data_3,
	input data_4,
	input data_5,
	input data_6,
	input data_7,
	input data_8,
	input data_9,
	input data_10,
	input data_11,
	input data_12,
	input data_13,
	input data_14,
	input data_15,
	input data_16,
	input data_17,
	input data_18,
	input data_19,
	input data_20,
	input data_21,
	input data_22,
	input data_23,
	input data_24,
	input data_25,
	input data_26,
	input data_27,
	input data_28,
	input data_29,
	input data_30,
	input data_31,
	input data_32,
	input data_33,
	input data_34,
	input data_35,
	input data_36,
	input data_37,
	input data_38,
	input data_39,
	input data_40,
	input data_41,
	input data_42,
	input data_43,
	input data_44,
	input data_45,
	input data_46,
	input data_47,
	input data_48,
	input data_49,
	input data_50,
	input data_51,
	input data_52,
	input data_53,
	input data_54,
	input data_55,
	input data_56,
	input data_57,
	input data_58,
	input data_59,
	input data_60,
	input data_61,
	input data_62,
	input data_63,
	input blit_back,
	input blit_breq_0,
	input blit_breq_1,
	input daddq_sel
);
wire [0:31] addqlo32;
wire [0:31] addqhi32;
wire [0:31] r_data_0;
wire [0:31] r_data_1;
wire blit_active;
wire blit_backb;
wire daddq_selb_0;
wire daddq_selb_1;

// Output buffers
wire load_data_0_b0_obuf;
wire load_data_0_b1_obuf;
wire load_data_0_b2_obuf;
wire load_data_0_b3_obuf;
wire load_data_0_b4_obuf;
wire load_data_0_b5_obuf;
wire load_data_0_b6_obuf;
wire load_data_0_b7_obuf;
wire load_data_0_b8_obuf;
wire load_data_0_b9_obuf;
wire load_data_0_b10_obuf;
wire load_data_0_b11_obuf;
wire load_data_0_b12_obuf;
wire load_data_0_b13_obuf;
wire load_data_0_b14_obuf;
wire load_data_0_b15_obuf;
wire load_data_0_b16_obuf;
wire load_data_0_b17_obuf;
wire load_data_0_b18_obuf;
wire load_data_0_b19_obuf;
wire load_data_0_b20_obuf;
wire load_data_0_b21_obuf;
wire load_data_0_b22_obuf;
wire load_data_0_b23_obuf;
wire load_data_0_b24_obuf;
wire load_data_0_b25_obuf;
wire load_data_0_b26_obuf;
wire load_data_0_b27_obuf;
wire load_data_0_b28_obuf;
wire load_data_0_b29_obuf;
wire load_data_0_b30_obuf;
wire load_data_0_b31_obuf;
wire load_data_1_b0_obuf;
wire load_data_1_b1_obuf;
wire load_data_1_b2_obuf;
wire load_data_1_b3_obuf;
wire load_data_1_b4_obuf;
wire load_data_1_b5_obuf;
wire load_data_1_b6_obuf;
wire load_data_1_b7_obuf;
wire load_data_1_b8_obuf;
wire load_data_1_b9_obuf;
wire load_data_1_b10_obuf;
wire load_data_1_b11_obuf;
wire load_data_1_b12_obuf;
wire load_data_1_b13_obuf;
wire load_data_1_b14_obuf;
wire load_data_1_b15_obuf;
wire load_data_1_b16_obuf;
wire load_data_1_b17_obuf;
wire load_data_1_b18_obuf;
wire load_data_1_b19_obuf;
wire load_data_1_b20_obuf;
wire load_data_1_b21_obuf;
wire load_data_1_b22_obuf;
wire load_data_1_b23_obuf;
wire load_data_1_b24_obuf;
wire load_data_1_b25_obuf;
wire load_data_1_b26_obuf;
wire load_data_1_b27_obuf;
wire load_data_1_b28_obuf;
wire load_data_1_b29_obuf;
wire load_data_1_b30_obuf;
wire load_data_1_b31_obuf;


// Output buffers
assign load_data_0[0] = load_data_0_b0_obuf;
assign load_data_0[1] = load_data_0_b1_obuf;
assign load_data_0[2] = load_data_0_b2_obuf;
assign load_data_0[3] = load_data_0_b3_obuf;
assign load_data_0[4] = load_data_0_b4_obuf;
assign load_data_0[5] = load_data_0_b5_obuf;
assign load_data_0[6] = load_data_0_b6_obuf;
assign load_data_0[7] = load_data_0_b7_obuf;
assign load_data_0[8] = load_data_0_b8_obuf;
assign load_data_0[9] = load_data_0_b9_obuf;
assign load_data_0[10] = load_data_0_b10_obuf;
assign load_data_0[11] = load_data_0_b11_obuf;
assign load_data_0[12] = load_data_0_b12_obuf;
assign load_data_0[13] = load_data_0_b13_obuf;
assign load_data_0[14] = load_data_0_b14_obuf;
assign load_data_0[15] = load_data_0_b15_obuf;
assign load_data_0[16] = load_data_0_b16_obuf;
assign load_data_0[17] = load_data_0_b17_obuf;
assign load_data_0[18] = load_data_0_b18_obuf;
assign load_data_0[19] = load_data_0_b19_obuf;
assign load_data_0[20] = load_data_0_b20_obuf;
assign load_data_0[21] = load_data_0_b21_obuf;
assign load_data_0[22] = load_data_0_b22_obuf;
assign load_data_0[23] = load_data_0_b23_obuf;
assign load_data_0[24] = load_data_0_b24_obuf;
assign load_data_0[25] = load_data_0_b25_obuf;
assign load_data_0[26] = load_data_0_b26_obuf;
assign load_data_0[27] = load_data_0_b27_obuf;
assign load_data_0[28] = load_data_0_b28_obuf;
assign load_data_0[29] = load_data_0_b29_obuf;
assign load_data_0[30] = load_data_0_b30_obuf;
assign load_data_0[31] = load_data_0_b31_obuf;
assign load_data_1[0] = load_data_1_b0_obuf;
assign load_data_1[1] = load_data_1_b1_obuf;
assign load_data_1[2] = load_data_1_b2_obuf;
assign load_data_1[3] = load_data_1_b3_obuf;
assign load_data_1[4] = load_data_1_b4_obuf;
assign load_data_1[5] = load_data_1_b5_obuf;
assign load_data_1[6] = load_data_1_b6_obuf;
assign load_data_1[7] = load_data_1_b7_obuf;
assign load_data_1[8] = load_data_1_b8_obuf;
assign load_data_1[9] = load_data_1_b9_obuf;
assign load_data_1[10] = load_data_1_b10_obuf;
assign load_data_1[11] = load_data_1_b11_obuf;
assign load_data_1[12] = load_data_1_b12_obuf;
assign load_data_1[13] = load_data_1_b13_obuf;
assign load_data_1[14] = load_data_1_b14_obuf;
assign load_data_1[15] = load_data_1_b15_obuf;
assign load_data_1[16] = load_data_1_b16_obuf;
assign load_data_1[17] = load_data_1_b17_obuf;
assign load_data_1[18] = load_data_1_b18_obuf;
assign load_data_1[19] = load_data_1_b19_obuf;
assign load_data_1[20] = load_data_1_b20_obuf;
assign load_data_1[21] = load_data_1_b21_obuf;
assign load_data_1[22] = load_data_1_b22_obuf;
assign load_data_1[23] = load_data_1_b23_obuf;
assign load_data_1[24] = load_data_1_b24_obuf;
assign load_data_1[25] = load_data_1_b25_obuf;
assign load_data_1[26] = load_data_1_b26_obuf;
assign load_data_1[27] = load_data_1_b27_obuf;
assign load_data_1[28] = load_data_1_b28_obuf;
assign load_data_1[29] = load_data_1_b29_obuf;
assign load_data_1[30] = load_data_1_b30_obuf;
assign load_data_1[31] = load_data_1_b31_obuf;


// DATAMUX.NET (123) - blit_active : or3p
assign blit_active = blit_breq_0 | blit_breq_1 | blit_back;

// DATAMUX.NET (124) - blit_backb : nivu2
assign blit_backb = blit_active;

// DATAMUX.NET (126) - r_data[0] : join
assign r_data_0[0] = data_0;
assign r_data_0[1] = data_1;
assign r_data_0[2] = data_2;
assign r_data_0[3] = data_3;
assign r_data_0[4] = data_4;
assign r_data_0[5] = data_5;
assign r_data_0[6] = data_6;
assign r_data_0[7] = data_7;
assign r_data_0[8] = data_8;
assign r_data_0[9] = data_9;
assign r_data_0[10] = data_10;
assign r_data_0[11] = data_11;
assign r_data_0[12] = data_12;
assign r_data_0[13] = data_13;
assign r_data_0[14] = data_14;
assign r_data_0[15] = data_15;
assign r_data_0[16] = data_16;
assign r_data_0[17] = data_17;
assign r_data_0[18] = data_18;
assign r_data_0[19] = data_19;
assign r_data_0[20] = data_20;
assign r_data_0[21] = data_21;
assign r_data_0[22] = data_22;
assign r_data_0[23] = data_23;
assign r_data_0[24] = data_24;
assign r_data_0[25] = data_25;
assign r_data_0[26] = data_26;
assign r_data_0[27] = data_27;
assign r_data_0[28] = data_28;
assign r_data_0[29] = data_29;
assign r_data_0[30] = data_30;
assign r_data_0[31] = data_31;

// DATAMUX.NET (127) - r_data[1] : join
assign r_data_1[0] = data_32;
assign r_data_1[1] = data_33;
assign r_data_1[2] = data_34;
assign r_data_1[3] = data_35;
assign r_data_1[4] = data_36;
assign r_data_1[5] = data_37;
assign r_data_1[6] = data_38;
assign r_data_1[7] = data_39;
assign r_data_1[8] = data_40;
assign r_data_1[9] = data_41;
assign r_data_1[10] = data_42;
assign r_data_1[11] = data_43;
assign r_data_1[12] = data_44;
assign r_data_1[13] = data_45;
assign r_data_1[14] = data_46;
assign r_data_1[15] = data_47;
assign r_data_1[16] = data_48;
assign r_data_1[17] = data_49;
assign r_data_1[18] = data_50;
assign r_data_1[19] = data_51;
assign r_data_1[20] = data_52;
assign r_data_1[21] = data_53;
assign r_data_1[22] = data_54;
assign r_data_1[23] = data_55;
assign r_data_1[24] = data_56;
assign r_data_1[25] = data_57;
assign r_data_1[26] = data_58;
assign r_data_1[27] = data_59;
assign r_data_1[28] = data_60;
assign r_data_1[29] = data_61;
assign r_data_1[30] = data_62;
assign r_data_1[31] = data_63;

// DATAMUX.NET (129) - addqlo32 : join
assign addqlo32[0] = addq_0[0];
assign addqlo32[1] = addq_0[1];
assign addqlo32[2] = addq_0[2];
assign addqlo32[3] = addq_0[3];
assign addqlo32[4] = addq_0[4];
assign addqlo32[5] = addq_0[5];
assign addqlo32[6] = addq_0[6];
assign addqlo32[7] = addq_0[7];
assign addqlo32[8] = addq_0[8];
assign addqlo32[9] = addq_0[9];
assign addqlo32[10] = addq_0[10];
assign addqlo32[11] = addq_0[11];
assign addqlo32[12] = addq_0[12];
assign addqlo32[13] = addq_0[13];
assign addqlo32[14] = addq_0[14];
assign addqlo32[15] = addq_0[15];
assign addqlo32[16] = addq_1[0];
assign addqlo32[17] = addq_1[1];
assign addqlo32[18] = addq_1[2];
assign addqlo32[19] = addq_1[3];
assign addqlo32[20] = addq_1[4];
assign addqlo32[21] = addq_1[5];
assign addqlo32[22] = addq_1[6];
assign addqlo32[23] = addq_1[7];
assign addqlo32[24] = addq_1[8];
assign addqlo32[25] = addq_1[9];
assign addqlo32[26] = addq_1[10];
assign addqlo32[27] = addq_1[11];
assign addqlo32[28] = addq_1[12];
assign addqlo32[29] = addq_1[13];
assign addqlo32[30] = addq_1[14];
assign addqlo32[31] = addq_1[15];

// DATAMUX.NET (130) - addqhi32 : join
assign addqhi32[0] = addq_2[0];
assign addqhi32[1] = addq_2[1];
assign addqhi32[2] = addq_2[2];
assign addqhi32[3] = addq_2[3];
assign addqhi32[4] = addq_2[4];
assign addqhi32[5] = addq_2[5];
assign addqhi32[6] = addq_2[6];
assign addqhi32[7] = addq_2[7];
assign addqhi32[8] = addq_2[8];
assign addqhi32[9] = addq_2[9];
assign addqhi32[10] = addq_2[10];
assign addqhi32[11] = addq_2[11];
assign addqhi32[12] = addq_2[12];
assign addqhi32[13] = addq_2[13];
assign addqhi32[14] = addq_2[14];
assign addqhi32[15] = addq_2[15];
assign addqhi32[16] = addq_3[0];
assign addqhi32[17] = addq_3[1];
assign addqhi32[18] = addq_3[2];
assign addqhi32[19] = addq_3[3];
assign addqhi32[20] = addq_3[4];
assign addqhi32[21] = addq_3[5];
assign addqhi32[22] = addq_3[6];
assign addqhi32[23] = addq_3[7];
assign addqhi32[24] = addq_3[8];
assign addqhi32[25] = addq_3[9];
assign addqhi32[26] = addq_3[10];
assign addqhi32[27] = addq_3[11];
assign addqhi32[28] = addq_3[12];
assign addqhi32[29] = addq_3[13];
assign addqhi32[30] = addq_3[14];
assign addqhi32[31] = addq_3[15];

// DATAMUX.NET (132) - load_data[0] : mx2
assign load_data_0_b0_obuf = (blit_backb) ? r_data_0[0] : gpu_din[0];
assign load_data_0_b1_obuf = (blit_backb) ? r_data_0[1] : gpu_din[1];
assign load_data_0_b2_obuf = (blit_backb) ? r_data_0[2] : gpu_din[2];
assign load_data_0_b3_obuf = (blit_backb) ? r_data_0[3] : gpu_din[3];
assign load_data_0_b4_obuf = (blit_backb) ? r_data_0[4] : gpu_din[4];
assign load_data_0_b5_obuf = (blit_backb) ? r_data_0[5] : gpu_din[5];
assign load_data_0_b6_obuf = (blit_backb) ? r_data_0[6] : gpu_din[6];
assign load_data_0_b7_obuf = (blit_backb) ? r_data_0[7] : gpu_din[7];
assign load_data_0_b8_obuf = (blit_backb) ? r_data_0[8] : gpu_din[8];
assign load_data_0_b9_obuf = (blit_backb) ? r_data_0[9] : gpu_din[9];
assign load_data_0_b10_obuf = (blit_backb) ? r_data_0[10] : gpu_din[10];
assign load_data_0_b11_obuf = (blit_backb) ? r_data_0[11] : gpu_din[11];
assign load_data_0_b12_obuf = (blit_backb) ? r_data_0[12] : gpu_din[12];
assign load_data_0_b13_obuf = (blit_backb) ? r_data_0[13] : gpu_din[13];
assign load_data_0_b14_obuf = (blit_backb) ? r_data_0[14] : gpu_din[14];
assign load_data_0_b15_obuf = (blit_backb) ? r_data_0[15] : gpu_din[15];
assign load_data_0_b16_obuf = (blit_backb) ? r_data_0[16] : gpu_din[16];
assign load_data_0_b17_obuf = (blit_backb) ? r_data_0[17] : gpu_din[17];
assign load_data_0_b18_obuf = (blit_backb) ? r_data_0[18] : gpu_din[18];
assign load_data_0_b19_obuf = (blit_backb) ? r_data_0[19] : gpu_din[19];
assign load_data_0_b20_obuf = (blit_backb) ? r_data_0[20] : gpu_din[20];
assign load_data_0_b21_obuf = (blit_backb) ? r_data_0[21] : gpu_din[21];
assign load_data_0_b22_obuf = (blit_backb) ? r_data_0[22] : gpu_din[22];
assign load_data_0_b23_obuf = (blit_backb) ? r_data_0[23] : gpu_din[23];
assign load_data_0_b24_obuf = (blit_backb) ? r_data_0[24] : gpu_din[24];
assign load_data_0_b25_obuf = (blit_backb) ? r_data_0[25] : gpu_din[25];
assign load_data_0_b26_obuf = (blit_backb) ? r_data_0[26] : gpu_din[26];
assign load_data_0_b27_obuf = (blit_backb) ? r_data_0[27] : gpu_din[27];
assign load_data_0_b28_obuf = (blit_backb) ? r_data_0[28] : gpu_din[28];
assign load_data_0_b29_obuf = (blit_backb) ? r_data_0[29] : gpu_din[29];
assign load_data_0_b30_obuf = (blit_backb) ? r_data_0[30] : gpu_din[30];
assign load_data_0_b31_obuf = (blit_backb) ? r_data_0[31] : gpu_din[31];

// DATAMUX.NET (134) - load_data[1] : mx2
assign load_data_1_b0_obuf = (blit_backb) ? r_data_1[0] : gpu_din[0];
assign load_data_1_b1_obuf = (blit_backb) ? r_data_1[1] : gpu_din[1];
assign load_data_1_b2_obuf = (blit_backb) ? r_data_1[2] : gpu_din[2];
assign load_data_1_b3_obuf = (blit_backb) ? r_data_1[3] : gpu_din[3];
assign load_data_1_b4_obuf = (blit_backb) ? r_data_1[4] : gpu_din[4];
assign load_data_1_b5_obuf = (blit_backb) ? r_data_1[5] : gpu_din[5];
assign load_data_1_b6_obuf = (blit_backb) ? r_data_1[6] : gpu_din[6];
assign load_data_1_b7_obuf = (blit_backb) ? r_data_1[7] : gpu_din[7];
assign load_data_1_b8_obuf = (blit_backb) ? r_data_1[8] : gpu_din[8];
assign load_data_1_b9_obuf = (blit_backb) ? r_data_1[9] : gpu_din[9];
assign load_data_1_b10_obuf = (blit_backb) ? r_data_1[10] : gpu_din[10];
assign load_data_1_b11_obuf = (blit_backb) ? r_data_1[11] : gpu_din[11];
assign load_data_1_b12_obuf = (blit_backb) ? r_data_1[12] : gpu_din[12];
assign load_data_1_b13_obuf = (blit_backb) ? r_data_1[13] : gpu_din[13];
assign load_data_1_b14_obuf = (blit_backb) ? r_data_1[14] : gpu_din[14];
assign load_data_1_b15_obuf = (blit_backb) ? r_data_1[15] : gpu_din[15];
assign load_data_1_b16_obuf = (blit_backb) ? r_data_1[16] : gpu_din[16];
assign load_data_1_b17_obuf = (blit_backb) ? r_data_1[17] : gpu_din[17];
assign load_data_1_b18_obuf = (blit_backb) ? r_data_1[18] : gpu_din[18];
assign load_data_1_b19_obuf = (blit_backb) ? r_data_1[19] : gpu_din[19];
assign load_data_1_b20_obuf = (blit_backb) ? r_data_1[20] : gpu_din[20];
assign load_data_1_b21_obuf = (blit_backb) ? r_data_1[21] : gpu_din[21];
assign load_data_1_b22_obuf = (blit_backb) ? r_data_1[22] : gpu_din[22];
assign load_data_1_b23_obuf = (blit_backb) ? r_data_1[23] : gpu_din[23];
assign load_data_1_b24_obuf = (blit_backb) ? r_data_1[24] : gpu_din[24];
assign load_data_1_b25_obuf = (blit_backb) ? r_data_1[25] : gpu_din[25];
assign load_data_1_b26_obuf = (blit_backb) ? r_data_1[26] : gpu_din[26];
assign load_data_1_b27_obuf = (blit_backb) ? r_data_1[27] : gpu_din[27];
assign load_data_1_b28_obuf = (blit_backb) ? r_data_1[28] : gpu_din[28];
assign load_data_1_b29_obuf = (blit_backb) ? r_data_1[29] : gpu_din[29];
assign load_data_1_b30_obuf = (blit_backb) ? r_data_1[30] : gpu_din[30];
assign load_data_1_b31_obuf = (blit_backb) ? r_data_1[31] : gpu_din[31];

// DATAMUX.NET (136) - daddq_selb[0-1] : nivu
assign daddq_selb_0 = daddq_sel;
assign daddq_selb_1 = daddq_sel;

// DATAMUX.NET (137) - local_data[0] : mx2p
assign local_data_0[0] = (daddq_selb_0) ? addqlo32[0] : load_data_0_b0_obuf;
assign local_data_0[1] = (daddq_selb_0) ? addqlo32[1] : load_data_0_b1_obuf;
assign local_data_0[2] = (daddq_selb_0) ? addqlo32[2] : load_data_0_b2_obuf;
assign local_data_0[3] = (daddq_selb_0) ? addqlo32[3] : load_data_0_b3_obuf;
assign local_data_0[4] = (daddq_selb_0) ? addqlo32[4] : load_data_0_b4_obuf;
assign local_data_0[5] = (daddq_selb_0) ? addqlo32[5] : load_data_0_b5_obuf;
assign local_data_0[6] = (daddq_selb_0) ? addqlo32[6] : load_data_0_b6_obuf;
assign local_data_0[7] = (daddq_selb_0) ? addqlo32[7] : load_data_0_b7_obuf;
assign local_data_0[8] = (daddq_selb_0) ? addqlo32[8] : load_data_0_b8_obuf;
assign local_data_0[9] = (daddq_selb_0) ? addqlo32[9] : load_data_0_b9_obuf;
assign local_data_0[10] = (daddq_selb_0) ? addqlo32[10] : load_data_0_b10_obuf;
assign local_data_0[11] = (daddq_selb_0) ? addqlo32[11] : load_data_0_b11_obuf;
assign local_data_0[12] = (daddq_selb_0) ? addqlo32[12] : load_data_0_b12_obuf;
assign local_data_0[13] = (daddq_selb_0) ? addqlo32[13] : load_data_0_b13_obuf;
assign local_data_0[14] = (daddq_selb_0) ? addqlo32[14] : load_data_0_b14_obuf;
assign local_data_0[15] = (daddq_selb_0) ? addqlo32[15] : load_data_0_b15_obuf;
assign local_data_0[16] = (daddq_selb_0) ? addqlo32[16] : load_data_0_b16_obuf;
assign local_data_0[17] = (daddq_selb_0) ? addqlo32[17] : load_data_0_b17_obuf;
assign local_data_0[18] = (daddq_selb_0) ? addqlo32[18] : load_data_0_b18_obuf;
assign local_data_0[19] = (daddq_selb_0) ? addqlo32[19] : load_data_0_b19_obuf;
assign local_data_0[20] = (daddq_selb_0) ? addqlo32[20] : load_data_0_b20_obuf;
assign local_data_0[21] = (daddq_selb_0) ? addqlo32[21] : load_data_0_b21_obuf;
assign local_data_0[22] = (daddq_selb_0) ? addqlo32[22] : load_data_0_b22_obuf;
assign local_data_0[23] = (daddq_selb_0) ? addqlo32[23] : load_data_0_b23_obuf;
assign local_data_0[24] = (daddq_selb_0) ? addqlo32[24] : load_data_0_b24_obuf;
assign local_data_0[25] = (daddq_selb_0) ? addqlo32[25] : load_data_0_b25_obuf;
assign local_data_0[26] = (daddq_selb_0) ? addqlo32[26] : load_data_0_b26_obuf;
assign local_data_0[27] = (daddq_selb_0) ? addqlo32[27] : load_data_0_b27_obuf;
assign local_data_0[28] = (daddq_selb_0) ? addqlo32[28] : load_data_0_b28_obuf;
assign local_data_0[29] = (daddq_selb_0) ? addqlo32[29] : load_data_0_b29_obuf;
assign local_data_0[30] = (daddq_selb_0) ? addqlo32[30] : load_data_0_b30_obuf;
assign local_data_0[31] = (daddq_selb_0) ? addqlo32[31] : load_data_0_b31_obuf;

// DATAMUX.NET (139) - local_data[1] : mx2p
assign local_data_1[0] = (daddq_selb_1) ? addqhi32[0] : load_data_1_b0_obuf;
assign local_data_1[1] = (daddq_selb_1) ? addqhi32[1] : load_data_1_b1_obuf;
assign local_data_1[2] = (daddq_selb_1) ? addqhi32[2] : load_data_1_b2_obuf;
assign local_data_1[3] = (daddq_selb_1) ? addqhi32[3] : load_data_1_b3_obuf;
assign local_data_1[4] = (daddq_selb_1) ? addqhi32[4] : load_data_1_b4_obuf;
assign local_data_1[5] = (daddq_selb_1) ? addqhi32[5] : load_data_1_b5_obuf;
assign local_data_1[6] = (daddq_selb_1) ? addqhi32[6] : load_data_1_b6_obuf;
assign local_data_1[7] = (daddq_selb_1) ? addqhi32[7] : load_data_1_b7_obuf;
assign local_data_1[8] = (daddq_selb_1) ? addqhi32[8] : load_data_1_b8_obuf;
assign local_data_1[9] = (daddq_selb_1) ? addqhi32[9] : load_data_1_b9_obuf;
assign local_data_1[10] = (daddq_selb_1) ? addqhi32[10] : load_data_1_b10_obuf;
assign local_data_1[11] = (daddq_selb_1) ? addqhi32[11] : load_data_1_b11_obuf;
assign local_data_1[12] = (daddq_selb_1) ? addqhi32[12] : load_data_1_b12_obuf;
assign local_data_1[13] = (daddq_selb_1) ? addqhi32[13] : load_data_1_b13_obuf;
assign local_data_1[14] = (daddq_selb_1) ? addqhi32[14] : load_data_1_b14_obuf;
assign local_data_1[15] = (daddq_selb_1) ? addqhi32[15] : load_data_1_b15_obuf;
assign local_data_1[16] = (daddq_selb_1) ? addqhi32[16] : load_data_1_b16_obuf;
assign local_data_1[17] = (daddq_selb_1) ? addqhi32[17] : load_data_1_b17_obuf;
assign local_data_1[18] = (daddq_selb_1) ? addqhi32[18] : load_data_1_b18_obuf;
assign local_data_1[19] = (daddq_selb_1) ? addqhi32[19] : load_data_1_b19_obuf;
assign local_data_1[20] = (daddq_selb_1) ? addqhi32[20] : load_data_1_b20_obuf;
assign local_data_1[21] = (daddq_selb_1) ? addqhi32[21] : load_data_1_b21_obuf;
assign local_data_1[22] = (daddq_selb_1) ? addqhi32[22] : load_data_1_b22_obuf;
assign local_data_1[23] = (daddq_selb_1) ? addqhi32[23] : load_data_1_b23_obuf;
assign local_data_1[24] = (daddq_selb_1) ? addqhi32[24] : load_data_1_b24_obuf;
assign local_data_1[25] = (daddq_selb_1) ? addqhi32[25] : load_data_1_b25_obuf;
assign local_data_1[26] = (daddq_selb_1) ? addqhi32[26] : load_data_1_b26_obuf;
assign local_data_1[27] = (daddq_selb_1) ? addqhi32[27] : load_data_1_b27_obuf;
assign local_data_1[28] = (daddq_selb_1) ? addqhi32[28] : load_data_1_b28_obuf;
assign local_data_1[29] = (daddq_selb_1) ? addqhi32[29] : load_data_1_b29_obuf;
assign local_data_1[30] = (daddq_selb_1) ? addqhi32[30] : load_data_1_b30_obuf;
assign local_data_1[31] = (daddq_selb_1) ? addqhi32[31] : load_data_1_b31_obuf;
endmodule
/* verilator lint_on LITENDIAN */
