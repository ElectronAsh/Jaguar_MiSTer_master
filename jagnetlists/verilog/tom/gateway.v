/* verilator lint_off LITENDIAN */
`include "defs.v"

module gateway
(
	output [0:23] address_out,
	output [0:23] address_oe,
	input [0:23] address_in,
	output wdata_0_out,
	output wdata_0_oe,
	input wdata_0_in,
	output wdata_1_out,
	output wdata_1_oe,
	input wdata_1_in,
	output wdata_2_out,
	output wdata_2_oe,
	input wdata_2_in,
	output wdata_3_out,
	output wdata_3_oe,
	input wdata_3_in,
	output wdata_4_out,
	output wdata_4_oe,
	input wdata_4_in,
	output wdata_5_out,
	output wdata_5_oe,
	input wdata_5_in,
	output wdata_6_out,
	output wdata_6_oe,
	input wdata_6_in,
	output wdata_7_out,
	output wdata_7_oe,
	input wdata_7_in,
	output wdata_8_out,
	output wdata_8_oe,
	input wdata_8_in,
	output wdata_9_out,
	output wdata_9_oe,
	input wdata_9_in,
	output wdata_10_out,
	output wdata_10_oe,
	input wdata_10_in,
	output wdata_11_out,
	output wdata_11_oe,
	input wdata_11_in,
	output wdata_12_out,
	output wdata_12_oe,
	input wdata_12_in,
	output wdata_13_out,
	output wdata_13_oe,
	input wdata_13_in,
	output wdata_14_out,
	output wdata_14_oe,
	input wdata_14_in,
	output wdata_15_out,
	output wdata_15_oe,
	input wdata_15_in,
	output wdata_16_out,
	output wdata_16_oe,
	input wdata_16_in,
	output wdata_17_out,
	output wdata_17_oe,
	input wdata_17_in,
	output wdata_18_out,
	output wdata_18_oe,
	input wdata_18_in,
	output wdata_19_out,
	output wdata_19_oe,
	input wdata_19_in,
	output wdata_20_out,
	output wdata_20_oe,
	input wdata_20_in,
	output wdata_21_out,
	output wdata_21_oe,
	input wdata_21_in,
	output wdata_22_out,
	output wdata_22_oe,
	input wdata_22_in,
	output wdata_23_out,
	output wdata_23_oe,
	input wdata_23_in,
	output wdata_24_out,
	output wdata_24_oe,
	input wdata_24_in,
	output wdata_25_out,
	output wdata_25_oe,
	input wdata_25_in,
	output wdata_26_out,
	output wdata_26_oe,
	input wdata_26_in,
	output wdata_27_out,
	output wdata_27_oe,
	input wdata_27_in,
	output wdata_28_out,
	output wdata_28_oe,
	input wdata_28_in,
	output wdata_29_out,
	output wdata_29_oe,
	input wdata_29_in,
	output wdata_30_out,
	output wdata_30_oe,
	input wdata_30_in,
	output wdata_31_out,
	output wdata_31_oe,
	input wdata_31_in,
	output wdata_32_out,
	output wdata_32_oe,
	input wdata_32_in,
	output wdata_33_out,
	output wdata_33_oe,
	input wdata_33_in,
	output wdata_34_out,
	output wdata_34_oe,
	input wdata_34_in,
	output wdata_35_out,
	output wdata_35_oe,
	input wdata_35_in,
	output wdata_36_out,
	output wdata_36_oe,
	input wdata_36_in,
	output wdata_37_out,
	output wdata_37_oe,
	input wdata_37_in,
	output wdata_38_out,
	output wdata_38_oe,
	input wdata_38_in,
	output wdata_39_out,
	output wdata_39_oe,
	input wdata_39_in,
	output wdata_40_out,
	output wdata_40_oe,
	input wdata_40_in,
	output wdata_41_out,
	output wdata_41_oe,
	input wdata_41_in,
	output wdata_42_out,
	output wdata_42_oe,
	input wdata_42_in,
	output wdata_43_out,
	output wdata_43_oe,
	input wdata_43_in,
	output wdata_44_out,
	output wdata_44_oe,
	input wdata_44_in,
	output wdata_45_out,
	output wdata_45_oe,
	input wdata_45_in,
	output wdata_46_out,
	output wdata_46_oe,
	input wdata_46_in,
	output wdata_47_out,
	output wdata_47_oe,
	input wdata_47_in,
	output wdata_48_out,
	output wdata_48_oe,
	input wdata_48_in,
	output wdata_49_out,
	output wdata_49_oe,
	input wdata_49_in,
	output wdata_50_out,
	output wdata_50_oe,
	input wdata_50_in,
	output wdata_51_out,
	output wdata_51_oe,
	input wdata_51_in,
	output wdata_52_out,
	output wdata_52_oe,
	input wdata_52_in,
	output wdata_53_out,
	output wdata_53_oe,
	input wdata_53_in,
	output wdata_54_out,
	output wdata_54_oe,
	input wdata_54_in,
	output wdata_55_out,
	output wdata_55_oe,
	input wdata_55_in,
	output wdata_56_out,
	output wdata_56_oe,
	input wdata_56_in,
	output wdata_57_out,
	output wdata_57_oe,
	input wdata_57_in,
	output wdata_58_out,
	output wdata_58_oe,
	input wdata_58_in,
	output wdata_59_out,
	output wdata_59_oe,
	input wdata_59_in,
	output wdata_60_out,
	output wdata_60_oe,
	input wdata_60_in,
	output wdata_61_out,
	output wdata_61_oe,
	input wdata_61_in,
	output wdata_62_out,
	output wdata_62_oe,
	input wdata_62_in,
	output wdata_63_out,
	output wdata_63_oe,
	input wdata_63_in,
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output read_out,
	output read_oe,
	input read_in,
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
	output gpu_dout_15_out,
	output gpu_dout_15_oe,
	input gpu_dout_15_in,
	output dma_breq,
	output gate_active,
	output gatereq,
	output gpu_breq,
	output [0:31] load_data,
	output xld_ready,
	input ack,
	input bus_hog,
	input clk_0,
	input clk_2,
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
	input external,
	input flagrd,
	input flagwr,
	input gateack,
	input [0:23] gpu_addr,
	input gpu_back,
	input [0:31] gpu_din,
	input gpu_memw,
	input hidrd,
	input hidwr,
	input msize_0,
	input msize_1,
	input progserv,
	input reset_n,
	input sys_clk // Generated
);
wire [0:23] out_addr;
wire [0:23] cpu_addr;
wire [0:23] dat_addr;
wire [0:31] hidin;
wire [0:31] hidatai;
wire [0:31] hirdata;
wire [0:31] lddatai;
wire [0:31] lodatai;
wire [0:31] lodin;
wire [0:31] prog_data;
wire ack_n;
wire external_n;
wire gateack_n;
wire gpu_memw_n;
wire progserv_n;
wire one;
wire dmaen;
wire dmaen_n;
wire prot_1;
wire active;
wire gpu_ack;
wire cycgo;
wire prot_2;
wire idle;
wire cycstart;
wire progoi;
wire progown;
wire progownp;
wire cycpend;
wire progown_n;
wire readp;
wire readi;
wire reada;
wire reada_n;
wire msizelat;
wire msized_0;
wire msized_1;
wire cyptset;
wire cypt_0;
wire cypt_1;
wire activet_0;
wire activet_1;
wire gpu_ack_n;
wire activet_2;
wire activet_3;
wire activet;
wire pawset_n;
wire pawt_0;
wire packwt;
wire pawt_1;
wire pdatld;
wire greqt_0;
wire greqt_2;
wire greqt_1;
wire dawset_n;
wire dawt_0;
wire dackwt;
wire dawt_1;
wire ddatld;
wire busack;
wire tri_en;
wire cald;
wire dald;
wire msizet_0;
wire msizet_1;
wire widt_0;
wire widt_1;
wire widt_2;
wire widt_3;
wire pdatstrb;
wire lodwr;
wire lodstrbt;
wire lodstrb;
wire maskwt_n;
wire maskbt_n;
wire maskld;
wire maskb_n;
wire maskw_n;
wire lodm_8;
wire lodm_9;
wire lodm_10;
wire lodm_11;
wire lodm_12;
wire lodm_13;
wire lodm_14;
wire lodm_15;
wire lodm_16;
wire lodm_17;
wire lodm_18;
wire lodm_19;
wire lodm_20;
wire lodm_21;
wire lodm_22;
wire lodm_23;
wire lodm_24;
wire lodm_25;
wire lodm_26;
wire lodm_27;
wire lodm_28;
wire lodm_29;
wire lodm_30;
wire lodm_31;
wire ddatldb;
wire hidwrb;
wire wdlat;
wire wden;
wire wdenb_0;
wire wdenb_1;
wire ext_reqt_0;
wire ext_reqt_1;
wire ext_reqt_2;
wire ext_reqt_3;
wire ext_reqt_4;
wire ext_reqt_5;
wire ext_req_n;
wire gpu_bt_0;
wire gpu_bt_1;
wire gpu_bt_2;
wire ts_pe_5_a0_out;
wire ts_pe_5_a0_oe;
wire ts_pe_5_a0_in;
wire ts_pe_5_a1_out;
wire ts_pe_5_a1_oe;
wire ts_pe_5_a1_in;
wire ts_pe_6_a0_out;
wire ts_pe_6_a0_oe;
wire ts_pe_6_a0_in;
wire ts_pe_6_a1_out;
wire ts_pe_6_a1_oe;
wire ts_pe_6_a1_in;
wire ts_pe_7_a0_out;
wire ts_pe_7_a0_oe;
wire ts_pe_7_a0_in;
wire ts_pe_7_a1_out;
wire ts_pe_7_a1_oe;
wire ts_pe_7_a1_in;
wire ts_pe_8_a0_out;
wire ts_pe_8_a0_oe;
wire ts_pe_8_a0_in;
wire ts_pe_8_a1_out;
wire ts_pe_8_a1_oe;
wire ts_pe_8_a1_in;
wire ts_pe_9_a0_out;
wire ts_pe_9_a0_oe;
wire ts_pe_9_a0_in;
wire ts_pe_9_a1_out;
wire ts_pe_9_a1_oe;
wire ts_pe_9_a1_in;
wire ts_pe_10_a0_out;
wire ts_pe_10_a0_oe;
wire ts_pe_10_a0_in;
wire ts_pe_10_a1_out;
wire ts_pe_10_a1_oe;
wire ts_pe_10_a1_in;
wire ts_pe_11_a0_out;
wire ts_pe_11_a0_oe;
wire ts_pe_11_a0_in;
wire ts_pe_11_a1_out;
wire ts_pe_11_a1_oe;
wire ts_pe_11_a1_in;
wire ts_pe_12_a0_out;
wire ts_pe_12_a0_oe;
wire ts_pe_12_a0_in;
wire ts_pe_12_a1_out;
wire ts_pe_12_a1_oe;
wire ts_pe_12_a1_in;
wire ts_pe_13_a0_out;
wire ts_pe_13_a0_oe;
wire ts_pe_13_a0_in;
wire ts_pe_13_a1_out;
wire ts_pe_13_a1_oe;
wire ts_pe_13_a1_in;
wire ts_pe_14_a0_out;
wire ts_pe_14_a0_oe;
wire ts_pe_14_a0_in;
wire ts_pe_14_a1_out;
wire ts_pe_14_a1_oe;
wire ts_pe_14_a1_in;
wire ts_pe_15_a0_out;
wire ts_pe_15_a0_oe;
wire ts_pe_15_a0_in;
wire ts_pe_15_a1_out;
wire ts_pe_15_a1_oe;
wire ts_pe_15_a1_in;
wire ts_pe_16_a0_out;
wire ts_pe_16_a0_oe;
wire ts_pe_16_a0_in;
wire ts_pe_16_a1_out;
wire ts_pe_16_a1_oe;
wire ts_pe_16_a1_in;
wire ts_pe_17_a0_out;
wire ts_pe_17_a0_oe;
wire ts_pe_17_a0_in;
wire ts_pe_17_a1_out;
wire ts_pe_17_a1_oe;
wire ts_pe_17_a1_in;
wire ts_pe_18_a0_out;
wire ts_pe_18_a0_oe;
wire ts_pe_18_a0_in;
wire ts_pe_18_a1_out;
wire ts_pe_18_a1_oe;
wire ts_pe_18_a1_in;
wire ts_pe_19_a0_out;
wire ts_pe_19_a0_oe;
wire ts_pe_19_a0_in;
wire ts_pe_19_a1_out;
wire ts_pe_19_a1_oe;
wire ts_pe_19_a1_in;
wire ts_pe_20_a0_out;
wire ts_pe_20_a0_oe;
wire ts_pe_20_a0_in;
wire ts_pe_20_a1_out;
wire ts_pe_20_a1_oe;
wire ts_pe_20_a1_in;
wire ts_pe_21_a0_out;
wire ts_pe_21_a0_oe;
wire ts_pe_21_a0_in;
wire ts_pe_21_a1_out;
wire ts_pe_21_a1_oe;
wire ts_pe_21_a1_in;
wire ts_pe_22_a0_out;
wire ts_pe_22_a0_oe;
wire ts_pe_22_a0_in;
wire ts_pe_22_a1_out;
wire ts_pe_22_a1_oe;
wire ts_pe_22_a1_in;
wire ts_pe_23_a0_out;
wire ts_pe_23_a0_oe;
wire ts_pe_23_a0_in;
wire ts_pe_23_a1_out;
wire ts_pe_23_a1_oe;
wire ts_pe_23_a1_in;
wire ts_pe_24_a0_out;
wire ts_pe_24_a0_oe;
wire ts_pe_24_a0_in;
wire ts_pe_24_a1_out;
wire ts_pe_24_a1_oe;
wire ts_pe_24_a1_in;
wire ts_pe_25_a0_out;
wire ts_pe_25_a0_oe;
wire ts_pe_25_a0_in;
wire ts_pe_25_a1_out;
wire ts_pe_25_a1_oe;
wire ts_pe_25_a1_in;
wire ts_pe_26_a0_out;
wire ts_pe_26_a0_oe;
wire ts_pe_26_a0_in;
wire ts_pe_26_a1_out;
wire ts_pe_26_a1_oe;
wire ts_pe_26_a1_in;
wire ts_pe_27_a0_out;
wire ts_pe_27_a0_oe;
wire ts_pe_27_a0_in;
wire ts_pe_27_a1_out;
wire ts_pe_27_a1_oe;
wire ts_pe_27_a1_in;
wire ts_pe_28_a0_out;
wire ts_pe_28_a0_oe;
wire ts_pe_28_a0_in;
wire ts_pe_28_a1_out;
wire ts_pe_28_a1_oe;
wire ts_pe_28_a1_in;
wire ts_pe_29_a0_out;
wire ts_pe_29_a0_oe;
wire ts_pe_29_a0_in;
wire ts_pe_29_a1_out;
wire ts_pe_29_a1_oe;
wire ts_pe_29_a1_in;
wire ts_pe_30_a0_out;
wire ts_pe_30_a0_oe;
wire ts_pe_30_a0_in;
wire ts_pe_30_a1_out;
wire ts_pe_30_a1_oe;
wire ts_pe_30_a1_in;
wire ts_pe_31_a0_out;
wire ts_pe_31_a0_oe;
wire ts_pe_31_a0_in;
wire ts_pe_31_a1_out;
wire ts_pe_31_a1_oe;
wire ts_pe_31_a1_in;
wire ts_pe_32_a0_out;
wire ts_pe_32_a0_oe;
wire ts_pe_32_a0_in;
wire ts_pe_32_a1_out;
wire ts_pe_32_a1_oe;
wire ts_pe_32_a1_in;
wire ts_pe_33_a0_out;
wire ts_pe_33_a0_oe;
wire ts_pe_33_a0_in;
wire ts_pe_33_a1_out;
wire ts_pe_33_a1_oe;
wire ts_pe_33_a1_in;
wire ts_pe_34_a0_out;
wire ts_pe_34_a0_oe;
wire ts_pe_34_a0_in;
wire ts_pe_34_a1_out;
wire ts_pe_34_a1_oe;
wire ts_pe_34_a1_in;
wire ts_pe_35_a0_out;
wire ts_pe_35_a0_oe;
wire ts_pe_35_a0_in;
wire ts_pe_35_a1_out;
wire ts_pe_35_a1_oe;
wire ts_pe_35_a1_in;
wire ts_pe_36_a0_out;
wire ts_pe_36_a0_oe;
wire ts_pe_36_a0_in;
wire ts_pe_36_a1_out;
wire ts_pe_36_a1_oe;
wire ts_pe_36_a1_in;

// Output buffers
wire dma_breq_obuf;
wire gpu_breq_obuf;
wire load_data_b0_obuf;
wire load_data_b1_obuf;
wire load_data_b2_obuf;
wire load_data_b3_obuf;
wire load_data_b4_obuf;
wire load_data_b5_obuf;
wire load_data_b6_obuf;
wire load_data_b7_obuf;
wire load_data_b8_obuf;
wire load_data_b9_obuf;
wire load_data_b10_obuf;
wire load_data_b11_obuf;
wire load_data_b12_obuf;
wire load_data_b13_obuf;
wire load_data_b14_obuf;
wire load_data_b15_obuf;
wire load_data_b16_obuf;
wire load_data_b17_obuf;
wire load_data_b18_obuf;
wire load_data_b19_obuf;
wire load_data_b20_obuf;
wire load_data_b21_obuf;
wire load_data_b22_obuf;
wire load_data_b23_obuf;
wire load_data_b24_obuf;
wire load_data_b25_obuf;
wire load_data_b26_obuf;
wire load_data_b27_obuf;
wire load_data_b28_obuf;
wire load_data_b29_obuf;
wire load_data_b30_obuf;
wire load_data_b31_obuf;


// Output buffers
assign dma_breq = dma_breq_obuf;
assign gpu_breq = gpu_breq_obuf;
assign load_data[0] = load_data_b0_obuf;
assign load_data[1] = load_data_b1_obuf;
assign load_data[2] = load_data_b2_obuf;
assign load_data[3] = load_data_b3_obuf;
assign load_data[4] = load_data_b4_obuf;
assign load_data[5] = load_data_b5_obuf;
assign load_data[6] = load_data_b6_obuf;
assign load_data[7] = load_data_b7_obuf;
assign load_data[8] = load_data_b8_obuf;
assign load_data[9] = load_data_b9_obuf;
assign load_data[10] = load_data_b10_obuf;
assign load_data[11] = load_data_b11_obuf;
assign load_data[12] = load_data_b12_obuf;
assign load_data[13] = load_data_b13_obuf;
assign load_data[14] = load_data_b14_obuf;
assign load_data[15] = load_data_b15_obuf;
assign load_data[16] = load_data_b16_obuf;
assign load_data[17] = load_data_b17_obuf;
assign load_data[18] = load_data_b18_obuf;
assign load_data[19] = load_data_b19_obuf;
assign load_data[20] = load_data_b20_obuf;
assign load_data[21] = load_data_b21_obuf;
assign load_data[22] = load_data_b22_obuf;
assign load_data[23] = load_data_b23_obuf;
assign load_data[24] = load_data_b24_obuf;
assign load_data[25] = load_data_b25_obuf;
assign load_data[26] = load_data_b26_obuf;
assign load_data[27] = load_data_b27_obuf;
assign load_data[28] = load_data_b28_obuf;
assign load_data[29] = load_data_b29_obuf;
assign load_data[30] = load_data_b30_obuf;
assign load_data[31] = load_data_b31_obuf;


// GATEWAY.NET (56) - lodatai : join
assign lodatai[0] = data_0;
assign lodatai[1] = data_1;
assign lodatai[2] = data_2;
assign lodatai[3] = data_3;
assign lodatai[4] = data_4;
assign lodatai[5] = data_5;
assign lodatai[6] = data_6;
assign lodatai[7] = data_7;
assign lodatai[8] = data_8;
assign lodatai[9] = data_9;
assign lodatai[10] = data_10;
assign lodatai[11] = data_11;
assign lodatai[12] = data_12;
assign lodatai[13] = data_13;
assign lodatai[14] = data_14;
assign lodatai[15] = data_15;
assign lodatai[16] = data_16;
assign lodatai[17] = data_17;
assign lodatai[18] = data_18;
assign lodatai[19] = data_19;
assign lodatai[20] = data_20;
assign lodatai[21] = data_21;
assign lodatai[22] = data_22;
assign lodatai[23] = data_23;
assign lodatai[24] = data_24;
assign lodatai[25] = data_25;
assign lodatai[26] = data_26;
assign lodatai[27] = data_27;
assign lodatai[28] = data_28;
assign lodatai[29] = data_29;
assign lodatai[30] = data_30;
assign lodatai[31] = data_31;

// GATEWAY.NET (57) - hidatai : join
assign hidatai[0] = data_32;
assign hidatai[1] = data_33;
assign hidatai[2] = data_34;
assign hidatai[3] = data_35;
assign hidatai[4] = data_36;
assign hidatai[5] = data_37;
assign hidatai[6] = data_38;
assign hidatai[7] = data_39;
assign hidatai[8] = data_40;
assign hidatai[9] = data_41;
assign hidatai[10] = data_42;
assign hidatai[11] = data_43;
assign hidatai[12] = data_44;
assign hidatai[13] = data_45;
assign hidatai[14] = data_46;
assign hidatai[15] = data_47;
assign hidatai[16] = data_48;
assign hidatai[17] = data_49;
assign hidatai[18] = data_50;
assign hidatai[19] = data_51;
assign hidatai[20] = data_52;
assign hidatai[21] = data_53;
assign hidatai[22] = data_54;
assign hidatai[23] = data_55;
assign hidatai[24] = data_56;
assign hidatai[25] = data_57;
assign hidatai[26] = data_58;
assign hidatai[27] = data_59;
assign hidatai[28] = data_60;
assign hidatai[29] = data_61;
assign hidatai[30] = data_62;
assign hidatai[31] = data_63;

// GATEWAY.NET (59) - ack\ : iv
assign ack_n = ~ack;

// GATEWAY.NET (60) - external\ : iv
assign external_n = ~external;

// GATEWAY.NET (61) - gateack\ : iv
assign gateack_n = ~gateack;

// GATEWAY.NET (62) - gpu_memw\ : iv
assign gpu_memw_n = ~gpu_memw;

// GATEWAY.NET (63) - progserv\ : iv
assign progserv_n = ~progserv;

// GATEWAY.NET (65) - one : tie1
assign one = 1'b1;

// GATEWAY.NET (70) - dmaen : fdsyncr
fdsyncr dmaen_inst
(
	.q /* OUT */ (dmaen),
	.d /* IN */ (gpu_din[15]),
	.ld /* IN */ (flagwr),
	.clk /* IN */ (clk_0),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (72) - dmaen\ : iv
assign dmaen_n = ~dmaen;

// GATEWAY.NET (73) - dmaenr : ts
assign gpu_dout_15_out = dmaen;
assign gpu_dout_15_oe = flagrd;

// GATEWAY.NET (82) - prot1 : nd3
assign prot_1 = ~(active & gpu_ack & cycgo);

// GATEWAY.NET (83) - prot2 : nd2
assign prot_2 = ~(idle & external);

// GATEWAY.NET (84) - cycstart : nd2
assign cycstart = ~(prot_1 & prot_2);

// GATEWAY.NET (88) - progoi : mx4
mx4 progoi_inst
(
	.z /* OUT */ (progoi),
	.a0 /* IN */ (progown),
	.a1 /* IN */ (progown),
	.a2 /* IN */ (progserv),
	.a3 /* IN */ (progownp),
	.s0 /* IN */ (cycpend),
	.s1 /* IN */ (cycstart)
);

// GATEWAY.NET (90) - progown : fd2qu
fd2q progown_inst
(
	.q /* OUT */ (progown),
	.d /* IN */ (progoi),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (91) - progown\ : iv
assign progown_n = ~progown;

// GATEWAY.NET (95) - progownp : fdsync
fdsync progownp_inst
(
	.q /* OUT */ (progownp),
	.d /* IN */ (progserv),
	.ld /* IN */ (external),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (99) - readp : fdsync
fdsync readp_inst
(
	.q /* OUT */ (readp),
	.d /* IN */ (gpu_memw_n),
	.ld /* IN */ (external),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (101) - readi : mx4
mx4 readi_inst
(
	.z /* OUT */ (readi),
	.a0 /* IN */ (reada),
	.a1 /* IN */ (reada),
	.a2 /* IN */ (gpu_memw_n),
	.a3 /* IN */ (readp),
	.s0 /* IN */ (cycpend),
	.s1 /* IN */ (cycstart)
);

// GATEWAY.NET (103) - reada : fd1q
fd1q reada_inst
(
	.q /* OUT */ (reada),
	.d /* IN */ (readi),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (104) - reada\ : iv
assign reada_n = ~reada;

// GATEWAY.NET (108) - msizelat : an3
assign msizelat = external & progserv_n & clk_2;

// GATEWAY.NET (109) - msized[0-1] : ldp1q
ldp1q msized_from_0_to_1_inst_0
(
	.q /* OUT */ (msized_0),
	.d /* IN */ (msize_0),
	.g /* IN */ (msizelat),
	.sys_clk(sys_clk) // Generated
);
ldp1q msized_from_0_to_1_inst_1
(
	.q /* OUT */ (msized_1),
	.d /* IN */ (msize_1),
	.g /* IN */ (msizelat),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (114) - cyptset : nr3
assign cyptset = ~(external_n | idle | cycstart);

// GATEWAY.NET (115) - cypt0 : nr2
assign cypt_0 = ~(cyptset | cycpend);

// GATEWAY.NET (116) - cypt1 : nr2
assign cypt_1 = ~(cypt_0 | cycstart);

// GATEWAY.NET (117) - cycpend : fd2q
fd2q cycpend_inst
(
	.q /* OUT */ (cycpend),
	.d /* IN */ (cypt_1),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (119) - cycgo : or2
assign cycgo = external | cycpend;

// GATEWAY.NET (123) - activet0 : nd2
assign activet_0 = ~(idle & external);

// GATEWAY.NET (124) - activet1 : nd2
assign activet_1 = ~(active & gpu_ack_n);

// GATEWAY.NET (125) - activet2 : nd3
assign activet_2 = ~(active & gpu_ack & cycgo);

// GATEWAY.NET (126) - activet3 : nd3
assign activet_3 = ~(activet_0 & activet_1 & activet_2);

// GATEWAY.NET (127) - activet : fd2q
fd2q activet_inst
(
	.q /* OUT */ (activet),
	.d /* IN */ (activet_3),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (128) - active : nivm
assign active = activet;

// GATEWAY.NET (129) - idle : iv
assign idle = ~active;

// GATEWAY.NET (136) - gate_active : niv
assign gate_active = active;

// GATEWAY.NET (142) - pawset\ : nd3
assign pawset_n = ~(active & progown & gpu_ack);

// GATEWAY.NET (143) - pawt0 : nd2
assign pawt_0 = ~(packwt & ack_n);

// GATEWAY.NET (144) - pawt1 : nd2
assign pawt_1 = ~(pawset_n & pawt_0);

// GATEWAY.NET (145) - packwt : fd2q
fd2q packwt_inst
(
	.q /* OUT */ (packwt),
	.d /* IN */ (pawt_1),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (146) - pdatld : an2
assign pdatld = packwt & ack;

// GATEWAY.NET (153) - greqt0 : nr2
assign greqt_0 = ~(pdatld | greqt_2);

// GATEWAY.NET (154) - greqt1 : nr2
assign greqt_1 = ~(gateack | greqt_0);

// GATEWAY.NET (155) - greqt2 : fd2q
fd2q greqt2_inst
(
	.q /* OUT */ (greqt_2),
	.d /* IN */ (greqt_1),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (156) - gatereq : oan1
assign gatereq = (pdatld | greqt_2) & gateack_n;

// GATEWAY.NET (160) - dawset\ : nd4
assign dawset_n = ~(active & progown_n & gpu_ack & reada);

// GATEWAY.NET (161) - dawt0 : nd2
assign dawt_0 = ~(dackwt & ack_n);

// GATEWAY.NET (162) - dawt1 : nd2
assign dawt_1 = ~(dawset_n & dawt_0);

// GATEWAY.NET (163) - dackwt : fd2q
fd2q dackwt_inst
(
	.q /* OUT */ (dackwt),
	.d /* IN */ (dawt_1),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (164) - ddatld : an2
assign ddatld = dackwt & ack;

// GATEWAY.NET (168) - xld_ready : fd1qu
fd1q xld_ready_inst
(
	.q /* OUT */ (xld_ready),
	.d /* IN */ (ddatld),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (172) - busack : oan1
assign busack = (gpu_breq_obuf | dma_breq_obuf) & gpu_back;

// GATEWAY.NET (176) - tri_en : nivu
assign tri_en = gpu_back;

// GATEWAY.NET (180) - gpu_ack\ : nd2
assign gpu_ack_n = ~(ack & busack);

// GATEWAY.NET (181) - gpu_ack : iv
assign gpu_ack = ~gpu_ack_n;

// GATEWAY.NET (185) - cald : an3u
assign cald = external & progserv & clk_2;

// GATEWAY.NET (186) - cpu_addr : ldp1q
ldp1q cpu_addr_inst_0
(
	.q /* OUT */ (cpu_addr[0]),
	.d /* IN */ (gpu_addr[0]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_1
(
	.q /* OUT */ (cpu_addr[1]),
	.d /* IN */ (gpu_addr[1]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_2
(
	.q /* OUT */ (cpu_addr[2]),
	.d /* IN */ (gpu_addr[2]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_3
(
	.q /* OUT */ (cpu_addr[3]),
	.d /* IN */ (gpu_addr[3]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_4
(
	.q /* OUT */ (cpu_addr[4]),
	.d /* IN */ (gpu_addr[4]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_5
(
	.q /* OUT */ (cpu_addr[5]),
	.d /* IN */ (gpu_addr[5]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_6
(
	.q /* OUT */ (cpu_addr[6]),
	.d /* IN */ (gpu_addr[6]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_7
(
	.q /* OUT */ (cpu_addr[7]),
	.d /* IN */ (gpu_addr[7]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_8
(
	.q /* OUT */ (cpu_addr[8]),
	.d /* IN */ (gpu_addr[8]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_9
(
	.q /* OUT */ (cpu_addr[9]),
	.d /* IN */ (gpu_addr[9]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_10
(
	.q /* OUT */ (cpu_addr[10]),
	.d /* IN */ (gpu_addr[10]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_11
(
	.q /* OUT */ (cpu_addr[11]),
	.d /* IN */ (gpu_addr[11]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_12
(
	.q /* OUT */ (cpu_addr[12]),
	.d /* IN */ (gpu_addr[12]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_13
(
	.q /* OUT */ (cpu_addr[13]),
	.d /* IN */ (gpu_addr[13]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_14
(
	.q /* OUT */ (cpu_addr[14]),
	.d /* IN */ (gpu_addr[14]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_15
(
	.q /* OUT */ (cpu_addr[15]),
	.d /* IN */ (gpu_addr[15]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_16
(
	.q /* OUT */ (cpu_addr[16]),
	.d /* IN */ (gpu_addr[16]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_17
(
	.q /* OUT */ (cpu_addr[17]),
	.d /* IN */ (gpu_addr[17]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_18
(
	.q /* OUT */ (cpu_addr[18]),
	.d /* IN */ (gpu_addr[18]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_19
(
	.q /* OUT */ (cpu_addr[19]),
	.d /* IN */ (gpu_addr[19]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_20
(
	.q /* OUT */ (cpu_addr[20]),
	.d /* IN */ (gpu_addr[20]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_21
(
	.q /* OUT */ (cpu_addr[21]),
	.d /* IN */ (gpu_addr[21]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_22
(
	.q /* OUT */ (cpu_addr[22]),
	.d /* IN */ (gpu_addr[22]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_23
(
	.q /* OUT */ (cpu_addr[23]),
	.d /* IN */ (gpu_addr[23]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (187) - dald : an3u
assign dald = external & progserv_n & clk_2;

// GATEWAY.NET (188) - dat_addr : ldp1q
ldp1q dat_addr_inst_0
(
	.q /* OUT */ (dat_addr[0]),
	.d /* IN */ (gpu_addr[0]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_1
(
	.q /* OUT */ (dat_addr[1]),
	.d /* IN */ (gpu_addr[1]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_2
(
	.q /* OUT */ (dat_addr[2]),
	.d /* IN */ (gpu_addr[2]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_3
(
	.q /* OUT */ (dat_addr[3]),
	.d /* IN */ (gpu_addr[3]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_4
(
	.q /* OUT */ (dat_addr[4]),
	.d /* IN */ (gpu_addr[4]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_5
(
	.q /* OUT */ (dat_addr[5]),
	.d /* IN */ (gpu_addr[5]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_6
(
	.q /* OUT */ (dat_addr[6]),
	.d /* IN */ (gpu_addr[6]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_7
(
	.q /* OUT */ (dat_addr[7]),
	.d /* IN */ (gpu_addr[7]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_8
(
	.q /* OUT */ (dat_addr[8]),
	.d /* IN */ (gpu_addr[8]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_9
(
	.q /* OUT */ (dat_addr[9]),
	.d /* IN */ (gpu_addr[9]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_10
(
	.q /* OUT */ (dat_addr[10]),
	.d /* IN */ (gpu_addr[10]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_11
(
	.q /* OUT */ (dat_addr[11]),
	.d /* IN */ (gpu_addr[11]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_12
(
	.q /* OUT */ (dat_addr[12]),
	.d /* IN */ (gpu_addr[12]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_13
(
	.q /* OUT */ (dat_addr[13]),
	.d /* IN */ (gpu_addr[13]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_14
(
	.q /* OUT */ (dat_addr[14]),
	.d /* IN */ (gpu_addr[14]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_15
(
	.q /* OUT */ (dat_addr[15]),
	.d /* IN */ (gpu_addr[15]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_16
(
	.q /* OUT */ (dat_addr[16]),
	.d /* IN */ (gpu_addr[16]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_17
(
	.q /* OUT */ (dat_addr[17]),
	.d /* IN */ (gpu_addr[17]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_18
(
	.q /* OUT */ (dat_addr[18]),
	.d /* IN */ (gpu_addr[18]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_19
(
	.q /* OUT */ (dat_addr[19]),
	.d /* IN */ (gpu_addr[19]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_20
(
	.q /* OUT */ (dat_addr[20]),
	.d /* IN */ (gpu_addr[20]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_21
(
	.q /* OUT */ (dat_addr[21]),
	.d /* IN */ (gpu_addr[21]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_22
(
	.q /* OUT */ (dat_addr[22]),
	.d /* IN */ (gpu_addr[22]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_23
(
	.q /* OUT */ (dat_addr[23]),
	.d /* IN */ (gpu_addr[23]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (192) - out_addr : mx2
assign out_addr[0] = (progown) ? cpu_addr[0] : dat_addr[0];
assign out_addr[1] = (progown) ? cpu_addr[1] : dat_addr[1];
assign out_addr[2] = (progown) ? cpu_addr[2] : dat_addr[2];
assign out_addr[3] = (progown) ? cpu_addr[3] : dat_addr[3];
assign out_addr[4] = (progown) ? cpu_addr[4] : dat_addr[4];
assign out_addr[5] = (progown) ? cpu_addr[5] : dat_addr[5];
assign out_addr[6] = (progown) ? cpu_addr[6] : dat_addr[6];
assign out_addr[7] = (progown) ? cpu_addr[7] : dat_addr[7];
assign out_addr[8] = (progown) ? cpu_addr[8] : dat_addr[8];
assign out_addr[9] = (progown) ? cpu_addr[9] : dat_addr[9];
assign out_addr[10] = (progown) ? cpu_addr[10] : dat_addr[10];
assign out_addr[11] = (progown) ? cpu_addr[11] : dat_addr[11];
assign out_addr[12] = (progown) ? cpu_addr[12] : dat_addr[12];
assign out_addr[13] = (progown) ? cpu_addr[13] : dat_addr[13];
assign out_addr[14] = (progown) ? cpu_addr[14] : dat_addr[14];
assign out_addr[15] = (progown) ? cpu_addr[15] : dat_addr[15];
assign out_addr[16] = (progown) ? cpu_addr[16] : dat_addr[16];
assign out_addr[17] = (progown) ? cpu_addr[17] : dat_addr[17];
assign out_addr[18] = (progown) ? cpu_addr[18] : dat_addr[18];
assign out_addr[19] = (progown) ? cpu_addr[19] : dat_addr[19];
assign out_addr[20] = (progown) ? cpu_addr[20] : dat_addr[20];
assign out_addr[21] = (progown) ? cpu_addr[21] : dat_addr[21];
assign out_addr[22] = (progown) ? cpu_addr[22] : dat_addr[22];
assign out_addr[23] = (progown) ? cpu_addr[23] : dat_addr[23];

// GATEWAY.NET (193) - address : tsm
assign address_out[0] = out_addr[0];
assign address_oe[0] = tri_en;
assign address_out[1] = out_addr[1];
assign address_oe[1] = tri_en;
assign address_out[2] = out_addr[2];
assign address_oe[2] = tri_en;
assign address_out[3] = out_addr[3];
assign address_oe[3] = tri_en;
assign address_out[4] = out_addr[4];
assign address_oe[4] = tri_en;
assign address_out[5] = out_addr[5];
assign address_oe[5] = tri_en;
assign address_out[6] = out_addr[6];
assign address_oe[6] = tri_en;
assign address_out[7] = out_addr[7];
assign address_oe[7] = tri_en;
assign address_out[8] = out_addr[8];
assign address_oe[8] = tri_en;
assign address_out[9] = out_addr[9];
assign address_oe[9] = tri_en;
assign address_out[10] = out_addr[10];
assign address_oe[10] = tri_en;
assign address_out[11] = out_addr[11];
assign address_oe[11] = tri_en;
assign address_out[12] = out_addr[12];
assign address_oe[12] = tri_en;
assign address_out[13] = out_addr[13];
assign address_oe[13] = tri_en;
assign address_out[14] = out_addr[14];
assign address_oe[14] = tri_en;
assign address_out[15] = out_addr[15];
assign address_oe[15] = tri_en;
assign address_out[16] = out_addr[16];
assign address_oe[16] = tri_en;
assign address_out[17] = out_addr[17];
assign address_oe[17] = tri_en;
assign address_out[18] = out_addr[18];
assign address_oe[18] = tri_en;
assign address_out[19] = out_addr[19];
assign address_oe[19] = tri_en;
assign address_out[20] = out_addr[20];
assign address_oe[20] = tri_en;
assign address_out[21] = out_addr[21];
assign address_oe[21] = tri_en;
assign address_out[22] = out_addr[22];
assign address_oe[22] = tri_en;
assign address_out[23] = out_addr[23];
assign address_oe[23] = tri_en;

// GATEWAY.NET (197) - mreq : tsm
assign mreq_out = active;
assign mreq_oe = tri_en;

// GATEWAY.NET (198) - read : ts
assign read_out = reada;
assign read_oe = tri_en;

// GATEWAY.NET (199) - justify : ts
assign justify_out = one;
assign justify_oe = tri_en;

// GATEWAY.NET (204) - msizet[0] : an2
assign msizet_0 = msized_0 & progown_n;

// GATEWAY.NET (205) - msizet[1] : or2
assign msizet_1 = msized_1 | progown;

// GATEWAY.NET (206) - widt : d24h
d24h widt_inst
(
	.z0 /* OUT */ (widt_0),
	.z1 /* OUT */ (widt_1),
	.z2 /* OUT */ (widt_2),
	.z3 /* OUT */ (widt_3),
	.a0 /* IN */ (msizet_0),
	.a1 /* IN */ (msizet_1)
);

// GATEWAY.NET (207) - width[0-3] : ts
assign width_0_out = widt_0;
assign width_0_oe = tri_en;
assign width_1_out = widt_1;
assign width_1_oe = tri_en;
assign width_2_out = widt_2;
assign width_2_oe = tri_en;
assign width_3_out = widt_3;
assign width_3_oe = tri_en;

// GATEWAY.NET (211) - pdatstrb : an2u
assign pdatstrb = pdatld & clk_2;

// GATEWAY.NET (212) - prog_data : ldp1q
ldp1q prog_data_inst_0
(
	.q /* OUT */ (prog_data[0]),
	.d /* IN */ (lodatai[0]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_1
(
	.q /* OUT */ (prog_data[1]),
	.d /* IN */ (lodatai[1]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_2
(
	.q /* OUT */ (prog_data[2]),
	.d /* IN */ (lodatai[2]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_3
(
	.q /* OUT */ (prog_data[3]),
	.d /* IN */ (lodatai[3]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_4
(
	.q /* OUT */ (prog_data[4]),
	.d /* IN */ (lodatai[4]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_5
(
	.q /* OUT */ (prog_data[5]),
	.d /* IN */ (lodatai[5]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_6
(
	.q /* OUT */ (prog_data[6]),
	.d /* IN */ (lodatai[6]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_7
(
	.q /* OUT */ (prog_data[7]),
	.d /* IN */ (lodatai[7]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_8
(
	.q /* OUT */ (prog_data[8]),
	.d /* IN */ (lodatai[8]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_9
(
	.q /* OUT */ (prog_data[9]),
	.d /* IN */ (lodatai[9]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_10
(
	.q /* OUT */ (prog_data[10]),
	.d /* IN */ (lodatai[10]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_11
(
	.q /* OUT */ (prog_data[11]),
	.d /* IN */ (lodatai[11]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_12
(
	.q /* OUT */ (prog_data[12]),
	.d /* IN */ (lodatai[12]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_13
(
	.q /* OUT */ (prog_data[13]),
	.d /* IN */ (lodatai[13]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_14
(
	.q /* OUT */ (prog_data[14]),
	.d /* IN */ (lodatai[14]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_15
(
	.q /* OUT */ (prog_data[15]),
	.d /* IN */ (lodatai[15]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_16
(
	.q /* OUT */ (prog_data[16]),
	.d /* IN */ (lodatai[16]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_17
(
	.q /* OUT */ (prog_data[17]),
	.d /* IN */ (lodatai[17]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_18
(
	.q /* OUT */ (prog_data[18]),
	.d /* IN */ (lodatai[18]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_19
(
	.q /* OUT */ (prog_data[19]),
	.d /* IN */ (lodatai[19]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_20
(
	.q /* OUT */ (prog_data[20]),
	.d /* IN */ (lodatai[20]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_21
(
	.q /* OUT */ (prog_data[21]),
	.d /* IN */ (lodatai[21]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_22
(
	.q /* OUT */ (prog_data[22]),
	.d /* IN */ (lodatai[22]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_23
(
	.q /* OUT */ (prog_data[23]),
	.d /* IN */ (lodatai[23]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_24
(
	.q /* OUT */ (prog_data[24]),
	.d /* IN */ (lodatai[24]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_25
(
	.q /* OUT */ (prog_data[25]),
	.d /* IN */ (lodatai[25]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_26
(
	.q /* OUT */ (prog_data[26]),
	.d /* IN */ (lodatai[26]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_27
(
	.q /* OUT */ (prog_data[27]),
	.d /* IN */ (lodatai[27]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_28
(
	.q /* OUT */ (prog_data[28]),
	.d /* IN */ (lodatai[28]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_29
(
	.q /* OUT */ (prog_data[29]),
	.d /* IN */ (lodatai[29]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_30
(
	.q /* OUT */ (prog_data[30]),
	.d /* IN */ (lodatai[30]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q prog_data_inst_31
(
	.q /* OUT */ (prog_data[31]),
	.d /* IN */ (lodatai[31]),
	.g /* IN */ (pdatstrb),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (216) - lodrd : ts
assign ts_pe_5_a0_out = prog_data[0];
assign ts_pe_5_a0_oe = gateack;
assign ts_pe_6_a0_out = prog_data[1];
assign ts_pe_6_a0_oe = gateack;
assign ts_pe_7_a0_out = prog_data[2];
assign ts_pe_7_a0_oe = gateack;
assign ts_pe_8_a0_out = prog_data[3];
assign ts_pe_8_a0_oe = gateack;
assign ts_pe_9_a0_out = prog_data[4];
assign ts_pe_9_a0_oe = gateack;
assign ts_pe_10_a0_out = prog_data[5];
assign ts_pe_10_a0_oe = gateack;
assign ts_pe_11_a0_out = prog_data[6];
assign ts_pe_11_a0_oe = gateack;
assign ts_pe_12_a0_out = prog_data[7];
assign ts_pe_12_a0_oe = gateack;
assign ts_pe_13_a0_out = prog_data[8];
assign ts_pe_13_a0_oe = gateack;
assign ts_pe_14_a0_out = prog_data[9];
assign ts_pe_14_a0_oe = gateack;
assign ts_pe_15_a0_out = prog_data[10];
assign ts_pe_15_a0_oe = gateack;
assign ts_pe_16_a0_out = prog_data[11];
assign ts_pe_16_a0_oe = gateack;
assign ts_pe_17_a0_out = prog_data[12];
assign ts_pe_17_a0_oe = gateack;
assign ts_pe_18_a0_out = prog_data[13];
assign ts_pe_18_a0_oe = gateack;
assign ts_pe_19_a0_out = prog_data[14];
assign ts_pe_19_a0_oe = gateack;
assign ts_pe_20_a0_out = prog_data[15];
assign ts_pe_20_a0_oe = gateack;
assign ts_pe_21_a0_out = prog_data[16];
assign ts_pe_21_a0_oe = gateack;
assign ts_pe_22_a0_out = prog_data[17];
assign ts_pe_22_a0_oe = gateack;
assign ts_pe_23_a0_out = prog_data[18];
assign ts_pe_23_a0_oe = gateack;
assign ts_pe_24_a0_out = prog_data[19];
assign ts_pe_24_a0_oe = gateack;
assign ts_pe_25_a0_out = prog_data[20];
assign ts_pe_25_a0_oe = gateack;
assign ts_pe_26_a0_out = prog_data[21];
assign ts_pe_26_a0_oe = gateack;
assign ts_pe_27_a0_out = prog_data[22];
assign ts_pe_27_a0_oe = gateack;
assign ts_pe_28_a0_out = prog_data[23];
assign ts_pe_28_a0_oe = gateack;
assign ts_pe_29_a0_out = prog_data[24];
assign ts_pe_29_a0_oe = gateack;
assign ts_pe_30_a0_out = prog_data[25];
assign ts_pe_30_a0_oe = gateack;
assign ts_pe_31_a0_out = prog_data[26];
assign ts_pe_31_a0_oe = gateack;
assign ts_pe_32_a0_out = prog_data[27];
assign ts_pe_32_a0_oe = gateack;
assign ts_pe_33_a0_out = prog_data[28];
assign ts_pe_33_a0_oe = gateack;
assign ts_pe_34_a0_out = prog_data[29];
assign ts_pe_34_a0_oe = gateack;
assign ts_pe_35_a0_out = prog_data[30];
assign ts_pe_35_a0_oe = gateack;
assign ts_pe_36_a0_out = prog_data[31];
assign ts_pe_36_a0_oe = gateack;

// GATEWAY.NET (220) - lodwr : an3u
assign lodwr = external & progserv_n & gpu_memw;

// GATEWAY.NET (221) - lodstrbt : oan1
assign lodstrbt = (lodwr | ddatld) & clk_2;

// GATEWAY.NET (222) - lodstrb : nivu
assign lodstrb = lodstrbt;

// GATEWAY.NET (230) - maskwt : join
assign maskwt_n = msizet_1;

// GATEWAY.NET (231) - maskbt : or2
assign maskbt_n = msizet_0 | msizet_1;

// GATEWAY.NET (233) - maskld : an2
assign maskld = active & gpu_ack;

// GATEWAY.NET (234) - maskb : fdsync
fdsync maskb_inst
(
	.q /* OUT */ (maskb_n),
	.d /* IN */ (maskbt_n),
	.ld /* IN */ (maskld),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (235) - maskw : fdsynch
fdsynch maskw_inst
(
	.q /* OUT */ (maskw_n),
	.d /* IN */ (maskwt_n),
	.ld /* IN */ (maskld),
	.clk /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (237) - lodm[8-15] : an2
assign lodm_8 = maskb_n & data_8;
assign lodm_9 = maskb_n & data_9;
assign lodm_10 = maskb_n & data_10;
assign lodm_11 = maskb_n & data_11;
assign lodm_12 = maskb_n & data_12;
assign lodm_13 = maskb_n & data_13;
assign lodm_14 = maskb_n & data_14;
assign lodm_15 = maskb_n & data_15;

// GATEWAY.NET (238) - lodm[16-31] : an2
assign lodm_16 = maskw_n & data_16;
assign lodm_17 = maskw_n & data_17;
assign lodm_18 = maskw_n & data_18;
assign lodm_19 = maskw_n & data_19;
assign lodm_20 = maskw_n & data_20;
assign lodm_21 = maskw_n & data_21;
assign lodm_22 = maskw_n & data_22;
assign lodm_23 = maskw_n & data_23;
assign lodm_24 = maskw_n & data_24;
assign lodm_25 = maskw_n & data_25;
assign lodm_26 = maskw_n & data_26;
assign lodm_27 = maskw_n & data_27;
assign lodm_28 = maskw_n & data_28;
assign lodm_29 = maskw_n & data_29;
assign lodm_30 = maskw_n & data_30;
assign lodm_31 = maskw_n & data_31;

// GATEWAY.NET (240) - lddatai : join
assign lddatai[0] = data_0;
assign lddatai[1] = data_1;
assign lddatai[2] = data_2;
assign lddatai[3] = data_3;
assign lddatai[4] = data_4;
assign lddatai[5] = data_5;
assign lddatai[6] = data_6;
assign lddatai[7] = data_7;
assign lddatai[8] = lodm_8;
assign lddatai[9] = lodm_9;
assign lddatai[10] = lodm_10;
assign lddatai[11] = lodm_11;
assign lddatai[12] = lodm_12;
assign lddatai[13] = lodm_13;
assign lddatai[14] = lodm_14;
assign lddatai[15] = lodm_15;
assign lddatai[16] = lodm_16;
assign lddatai[17] = lodm_17;
assign lddatai[18] = lodm_18;
assign lddatai[19] = lodm_19;
assign lddatai[20] = lodm_20;
assign lddatai[21] = lodm_21;
assign lddatai[22] = lodm_22;
assign lddatai[23] = lodm_23;
assign lddatai[24] = lodm_24;
assign lddatai[25] = lodm_25;
assign lddatai[26] = lodm_26;
assign lddatai[27] = lodm_27;
assign lddatai[28] = lodm_28;
assign lddatai[29] = lodm_29;
assign lddatai[30] = lodm_30;
assign lddatai[31] = lodm_31;

// GATEWAY.NET (241) - lodin : mx2
assign lodin[0] = (lodwr) ? gpu_din[0] : lddatai[0];
assign lodin[1] = (lodwr) ? gpu_din[1] : lddatai[1];
assign lodin[2] = (lodwr) ? gpu_din[2] : lddatai[2];
assign lodin[3] = (lodwr) ? gpu_din[3] : lddatai[3];
assign lodin[4] = (lodwr) ? gpu_din[4] : lddatai[4];
assign lodin[5] = (lodwr) ? gpu_din[5] : lddatai[5];
assign lodin[6] = (lodwr) ? gpu_din[6] : lddatai[6];
assign lodin[7] = (lodwr) ? gpu_din[7] : lddatai[7];
assign lodin[8] = (lodwr) ? gpu_din[8] : lddatai[8];
assign lodin[9] = (lodwr) ? gpu_din[9] : lddatai[9];
assign lodin[10] = (lodwr) ? gpu_din[10] : lddatai[10];
assign lodin[11] = (lodwr) ? gpu_din[11] : lddatai[11];
assign lodin[12] = (lodwr) ? gpu_din[12] : lddatai[12];
assign lodin[13] = (lodwr) ? gpu_din[13] : lddatai[13];
assign lodin[14] = (lodwr) ? gpu_din[14] : lddatai[14];
assign lodin[15] = (lodwr) ? gpu_din[15] : lddatai[15];
assign lodin[16] = (lodwr) ? gpu_din[16] : lddatai[16];
assign lodin[17] = (lodwr) ? gpu_din[17] : lddatai[17];
assign lodin[18] = (lodwr) ? gpu_din[18] : lddatai[18];
assign lodin[19] = (lodwr) ? gpu_din[19] : lddatai[19];
assign lodin[20] = (lodwr) ? gpu_din[20] : lddatai[20];
assign lodin[21] = (lodwr) ? gpu_din[21] : lddatai[21];
assign lodin[22] = (lodwr) ? gpu_din[22] : lddatai[22];
assign lodin[23] = (lodwr) ? gpu_din[23] : lddatai[23];
assign lodin[24] = (lodwr) ? gpu_din[24] : lddatai[24];
assign lodin[25] = (lodwr) ? gpu_din[25] : lddatai[25];
assign lodin[26] = (lodwr) ? gpu_din[26] : lddatai[26];
assign lodin[27] = (lodwr) ? gpu_din[27] : lddatai[27];
assign lodin[28] = (lodwr) ? gpu_din[28] : lddatai[28];
assign lodin[29] = (lodwr) ? gpu_din[29] : lddatai[29];
assign lodin[30] = (lodwr) ? gpu_din[30] : lddatai[30];
assign lodin[31] = (lodwr) ? gpu_din[31] : lddatai[31];

// GATEWAY.NET (242) - loaddata : ldp1q
ldp1q loaddata_inst_0
(
	.q /* OUT */ (load_data_b0_obuf),
	.d /* IN */ (lodin[0]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_1
(
	.q /* OUT */ (load_data_b1_obuf),
	.d /* IN */ (lodin[1]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_2
(
	.q /* OUT */ (load_data_b2_obuf),
	.d /* IN */ (lodin[2]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_3
(
	.q /* OUT */ (load_data_b3_obuf),
	.d /* IN */ (lodin[3]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_4
(
	.q /* OUT */ (load_data_b4_obuf),
	.d /* IN */ (lodin[4]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_5
(
	.q /* OUT */ (load_data_b5_obuf),
	.d /* IN */ (lodin[5]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_6
(
	.q /* OUT */ (load_data_b6_obuf),
	.d /* IN */ (lodin[6]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_7
(
	.q /* OUT */ (load_data_b7_obuf),
	.d /* IN */ (lodin[7]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_8
(
	.q /* OUT */ (load_data_b8_obuf),
	.d /* IN */ (lodin[8]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_9
(
	.q /* OUT */ (load_data_b9_obuf),
	.d /* IN */ (lodin[9]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_10
(
	.q /* OUT */ (load_data_b10_obuf),
	.d /* IN */ (lodin[10]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_11
(
	.q /* OUT */ (load_data_b11_obuf),
	.d /* IN */ (lodin[11]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_12
(
	.q /* OUT */ (load_data_b12_obuf),
	.d /* IN */ (lodin[12]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_13
(
	.q /* OUT */ (load_data_b13_obuf),
	.d /* IN */ (lodin[13]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_14
(
	.q /* OUT */ (load_data_b14_obuf),
	.d /* IN */ (lodin[14]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_15
(
	.q /* OUT */ (load_data_b15_obuf),
	.d /* IN */ (lodin[15]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_16
(
	.q /* OUT */ (load_data_b16_obuf),
	.d /* IN */ (lodin[16]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_17
(
	.q /* OUT */ (load_data_b17_obuf),
	.d /* IN */ (lodin[17]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_18
(
	.q /* OUT */ (load_data_b18_obuf),
	.d /* IN */ (lodin[18]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_19
(
	.q /* OUT */ (load_data_b19_obuf),
	.d /* IN */ (lodin[19]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_20
(
	.q /* OUT */ (load_data_b20_obuf),
	.d /* IN */ (lodin[20]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_21
(
	.q /* OUT */ (load_data_b21_obuf),
	.d /* IN */ (lodin[21]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_22
(
	.q /* OUT */ (load_data_b22_obuf),
	.d /* IN */ (lodin[22]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_23
(
	.q /* OUT */ (load_data_b23_obuf),
	.d /* IN */ (lodin[23]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_24
(
	.q /* OUT */ (load_data_b24_obuf),
	.d /* IN */ (lodin[24]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_25
(
	.q /* OUT */ (load_data_b25_obuf),
	.d /* IN */ (lodin[25]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_26
(
	.q /* OUT */ (load_data_b26_obuf),
	.d /* IN */ (lodin[26]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_27
(
	.q /* OUT */ (load_data_b27_obuf),
	.d /* IN */ (lodin[27]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_28
(
	.q /* OUT */ (load_data_b28_obuf),
	.d /* IN */ (lodin[28]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_29
(
	.q /* OUT */ (load_data_b29_obuf),
	.d /* IN */ (lodin[29]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_30
(
	.q /* OUT */ (load_data_b30_obuf),
	.d /* IN */ (lodin[30]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);
ldp1q loaddata_inst_31
(
	.q /* OUT */ (load_data_b31_obuf),
	.d /* IN */ (lodin[31]),
	.g /* IN */ (lodstrb),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (246) - ddatldb : nivu
assign ddatldb = ddatld;

// GATEWAY.NET (247) - hidwrb : nivu
assign hidwrb = hidwr;

// GATEWAY.NET (248) - hidin : mx4
mx4 hidin_inst_0
(
	.z /* OUT */ (hidin[0]),
	.a0 /* IN */ (hirdata[0]),
	.a1 /* IN */ (gpu_din[0]),
	.a2 /* IN */ (hidatai[0]),
	.a3 /* IN */ (hidatai[0]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_1
(
	.z /* OUT */ (hidin[1]),
	.a0 /* IN */ (hirdata[1]),
	.a1 /* IN */ (gpu_din[1]),
	.a2 /* IN */ (hidatai[1]),
	.a3 /* IN */ (hidatai[1]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_2
(
	.z /* OUT */ (hidin[2]),
	.a0 /* IN */ (hirdata[2]),
	.a1 /* IN */ (gpu_din[2]),
	.a2 /* IN */ (hidatai[2]),
	.a3 /* IN */ (hidatai[2]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_3
(
	.z /* OUT */ (hidin[3]),
	.a0 /* IN */ (hirdata[3]),
	.a1 /* IN */ (gpu_din[3]),
	.a2 /* IN */ (hidatai[3]),
	.a3 /* IN */ (hidatai[3]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_4
(
	.z /* OUT */ (hidin[4]),
	.a0 /* IN */ (hirdata[4]),
	.a1 /* IN */ (gpu_din[4]),
	.a2 /* IN */ (hidatai[4]),
	.a3 /* IN */ (hidatai[4]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_5
(
	.z /* OUT */ (hidin[5]),
	.a0 /* IN */ (hirdata[5]),
	.a1 /* IN */ (gpu_din[5]),
	.a2 /* IN */ (hidatai[5]),
	.a3 /* IN */ (hidatai[5]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_6
(
	.z /* OUT */ (hidin[6]),
	.a0 /* IN */ (hirdata[6]),
	.a1 /* IN */ (gpu_din[6]),
	.a2 /* IN */ (hidatai[6]),
	.a3 /* IN */ (hidatai[6]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_7
(
	.z /* OUT */ (hidin[7]),
	.a0 /* IN */ (hirdata[7]),
	.a1 /* IN */ (gpu_din[7]),
	.a2 /* IN */ (hidatai[7]),
	.a3 /* IN */ (hidatai[7]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_8
(
	.z /* OUT */ (hidin[8]),
	.a0 /* IN */ (hirdata[8]),
	.a1 /* IN */ (gpu_din[8]),
	.a2 /* IN */ (hidatai[8]),
	.a3 /* IN */ (hidatai[8]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_9
(
	.z /* OUT */ (hidin[9]),
	.a0 /* IN */ (hirdata[9]),
	.a1 /* IN */ (gpu_din[9]),
	.a2 /* IN */ (hidatai[9]),
	.a3 /* IN */ (hidatai[9]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_10
(
	.z /* OUT */ (hidin[10]),
	.a0 /* IN */ (hirdata[10]),
	.a1 /* IN */ (gpu_din[10]),
	.a2 /* IN */ (hidatai[10]),
	.a3 /* IN */ (hidatai[10]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_11
(
	.z /* OUT */ (hidin[11]),
	.a0 /* IN */ (hirdata[11]),
	.a1 /* IN */ (gpu_din[11]),
	.a2 /* IN */ (hidatai[11]),
	.a3 /* IN */ (hidatai[11]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_12
(
	.z /* OUT */ (hidin[12]),
	.a0 /* IN */ (hirdata[12]),
	.a1 /* IN */ (gpu_din[12]),
	.a2 /* IN */ (hidatai[12]),
	.a3 /* IN */ (hidatai[12]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_13
(
	.z /* OUT */ (hidin[13]),
	.a0 /* IN */ (hirdata[13]),
	.a1 /* IN */ (gpu_din[13]),
	.a2 /* IN */ (hidatai[13]),
	.a3 /* IN */ (hidatai[13]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_14
(
	.z /* OUT */ (hidin[14]),
	.a0 /* IN */ (hirdata[14]),
	.a1 /* IN */ (gpu_din[14]),
	.a2 /* IN */ (hidatai[14]),
	.a3 /* IN */ (hidatai[14]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_15
(
	.z /* OUT */ (hidin[15]),
	.a0 /* IN */ (hirdata[15]),
	.a1 /* IN */ (gpu_din[15]),
	.a2 /* IN */ (hidatai[15]),
	.a3 /* IN */ (hidatai[15]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_16
(
	.z /* OUT */ (hidin[16]),
	.a0 /* IN */ (hirdata[16]),
	.a1 /* IN */ (gpu_din[16]),
	.a2 /* IN */ (hidatai[16]),
	.a3 /* IN */ (hidatai[16]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_17
(
	.z /* OUT */ (hidin[17]),
	.a0 /* IN */ (hirdata[17]),
	.a1 /* IN */ (gpu_din[17]),
	.a2 /* IN */ (hidatai[17]),
	.a3 /* IN */ (hidatai[17]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_18
(
	.z /* OUT */ (hidin[18]),
	.a0 /* IN */ (hirdata[18]),
	.a1 /* IN */ (gpu_din[18]),
	.a2 /* IN */ (hidatai[18]),
	.a3 /* IN */ (hidatai[18]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_19
(
	.z /* OUT */ (hidin[19]),
	.a0 /* IN */ (hirdata[19]),
	.a1 /* IN */ (gpu_din[19]),
	.a2 /* IN */ (hidatai[19]),
	.a3 /* IN */ (hidatai[19]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_20
(
	.z /* OUT */ (hidin[20]),
	.a0 /* IN */ (hirdata[20]),
	.a1 /* IN */ (gpu_din[20]),
	.a2 /* IN */ (hidatai[20]),
	.a3 /* IN */ (hidatai[20]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_21
(
	.z /* OUT */ (hidin[21]),
	.a0 /* IN */ (hirdata[21]),
	.a1 /* IN */ (gpu_din[21]),
	.a2 /* IN */ (hidatai[21]),
	.a3 /* IN */ (hidatai[21]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_22
(
	.z /* OUT */ (hidin[22]),
	.a0 /* IN */ (hirdata[22]),
	.a1 /* IN */ (gpu_din[22]),
	.a2 /* IN */ (hidatai[22]),
	.a3 /* IN */ (hidatai[22]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_23
(
	.z /* OUT */ (hidin[23]),
	.a0 /* IN */ (hirdata[23]),
	.a1 /* IN */ (gpu_din[23]),
	.a2 /* IN */ (hidatai[23]),
	.a3 /* IN */ (hidatai[23]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_24
(
	.z /* OUT */ (hidin[24]),
	.a0 /* IN */ (hirdata[24]),
	.a1 /* IN */ (gpu_din[24]),
	.a2 /* IN */ (hidatai[24]),
	.a3 /* IN */ (hidatai[24]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_25
(
	.z /* OUT */ (hidin[25]),
	.a0 /* IN */ (hirdata[25]),
	.a1 /* IN */ (gpu_din[25]),
	.a2 /* IN */ (hidatai[25]),
	.a3 /* IN */ (hidatai[25]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_26
(
	.z /* OUT */ (hidin[26]),
	.a0 /* IN */ (hirdata[26]),
	.a1 /* IN */ (gpu_din[26]),
	.a2 /* IN */ (hidatai[26]),
	.a3 /* IN */ (hidatai[26]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_27
(
	.z /* OUT */ (hidin[27]),
	.a0 /* IN */ (hirdata[27]),
	.a1 /* IN */ (gpu_din[27]),
	.a2 /* IN */ (hidatai[27]),
	.a3 /* IN */ (hidatai[27]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_28
(
	.z /* OUT */ (hidin[28]),
	.a0 /* IN */ (hirdata[28]),
	.a1 /* IN */ (gpu_din[28]),
	.a2 /* IN */ (hidatai[28]),
	.a3 /* IN */ (hidatai[28]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_29
(
	.z /* OUT */ (hidin[29]),
	.a0 /* IN */ (hirdata[29]),
	.a1 /* IN */ (gpu_din[29]),
	.a2 /* IN */ (hidatai[29]),
	.a3 /* IN */ (hidatai[29]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_30
(
	.z /* OUT */ (hidin[30]),
	.a0 /* IN */ (hirdata[30]),
	.a1 /* IN */ (gpu_din[30]),
	.a2 /* IN */ (hidatai[30]),
	.a3 /* IN */ (hidatai[30]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);
mx4 hidin_inst_31
(
	.z /* OUT */ (hidin[31]),
	.a0 /* IN */ (hirdata[31]),
	.a1 /* IN */ (gpu_din[31]),
	.a2 /* IN */ (hidatai[31]),
	.a3 /* IN */ (hidatai[31]),
	.s0 /* IN */ (hidwrb),
	.s1 /* IN */ (ddatldb)
);

// GATEWAY.NET (250) - hirdata : fd1q
fd1q hirdata_inst_0
(
	.q /* OUT */ (hirdata[0]),
	.d /* IN */ (hidin[0]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_1
(
	.q /* OUT */ (hirdata[1]),
	.d /* IN */ (hidin[1]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_2
(
	.q /* OUT */ (hirdata[2]),
	.d /* IN */ (hidin[2]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_3
(
	.q /* OUT */ (hirdata[3]),
	.d /* IN */ (hidin[3]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_4
(
	.q /* OUT */ (hirdata[4]),
	.d /* IN */ (hidin[4]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_5
(
	.q /* OUT */ (hirdata[5]),
	.d /* IN */ (hidin[5]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_6
(
	.q /* OUT */ (hirdata[6]),
	.d /* IN */ (hidin[6]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_7
(
	.q /* OUT */ (hirdata[7]),
	.d /* IN */ (hidin[7]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_8
(
	.q /* OUT */ (hirdata[8]),
	.d /* IN */ (hidin[8]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_9
(
	.q /* OUT */ (hirdata[9]),
	.d /* IN */ (hidin[9]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_10
(
	.q /* OUT */ (hirdata[10]),
	.d /* IN */ (hidin[10]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_11
(
	.q /* OUT */ (hirdata[11]),
	.d /* IN */ (hidin[11]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_12
(
	.q /* OUT */ (hirdata[12]),
	.d /* IN */ (hidin[12]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_13
(
	.q /* OUT */ (hirdata[13]),
	.d /* IN */ (hidin[13]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_14
(
	.q /* OUT */ (hirdata[14]),
	.d /* IN */ (hidin[14]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_15
(
	.q /* OUT */ (hirdata[15]),
	.d /* IN */ (hidin[15]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_16
(
	.q /* OUT */ (hirdata[16]),
	.d /* IN */ (hidin[16]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_17
(
	.q /* OUT */ (hirdata[17]),
	.d /* IN */ (hidin[17]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_18
(
	.q /* OUT */ (hirdata[18]),
	.d /* IN */ (hidin[18]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_19
(
	.q /* OUT */ (hirdata[19]),
	.d /* IN */ (hidin[19]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_20
(
	.q /* OUT */ (hirdata[20]),
	.d /* IN */ (hidin[20]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_21
(
	.q /* OUT */ (hirdata[21]),
	.d /* IN */ (hidin[21]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_22
(
	.q /* OUT */ (hirdata[22]),
	.d /* IN */ (hidin[22]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_23
(
	.q /* OUT */ (hirdata[23]),
	.d /* IN */ (hidin[23]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_24
(
	.q /* OUT */ (hirdata[24]),
	.d /* IN */ (hidin[24]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_25
(
	.q /* OUT */ (hirdata[25]),
	.d /* IN */ (hidin[25]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_26
(
	.q /* OUT */ (hirdata[26]),
	.d /* IN */ (hidin[26]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_27
(
	.q /* OUT */ (hirdata[27]),
	.d /* IN */ (hidin[27]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_28
(
	.q /* OUT */ (hirdata[28]),
	.d /* IN */ (hidin[28]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_29
(
	.q /* OUT */ (hirdata[29]),
	.d /* IN */ (hidin[29]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_30
(
	.q /* OUT */ (hirdata[30]),
	.d /* IN */ (hidin[30]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q hirdata_inst_31
(
	.q /* OUT */ (hirdata[31]),
	.d /* IN */ (hidin[31]),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (251) - hidrd : ts
assign ts_pe_5_a1_out = hirdata[0];
assign ts_pe_5_a1_oe = hidrd;
assign ts_pe_6_a1_out = hirdata[1];
assign ts_pe_6_a1_oe = hidrd;
assign ts_pe_7_a1_out = hirdata[2];
assign ts_pe_7_a1_oe = hidrd;
assign ts_pe_8_a1_out = hirdata[3];
assign ts_pe_8_a1_oe = hidrd;
assign ts_pe_9_a1_out = hirdata[4];
assign ts_pe_9_a1_oe = hidrd;
assign ts_pe_10_a1_out = hirdata[5];
assign ts_pe_10_a1_oe = hidrd;
assign ts_pe_11_a1_out = hirdata[6];
assign ts_pe_11_a1_oe = hidrd;
assign ts_pe_12_a1_out = hirdata[7];
assign ts_pe_12_a1_oe = hidrd;
assign ts_pe_13_a1_out = hirdata[8];
assign ts_pe_13_a1_oe = hidrd;
assign ts_pe_14_a1_out = hirdata[9];
assign ts_pe_14_a1_oe = hidrd;
assign ts_pe_15_a1_out = hirdata[10];
assign ts_pe_15_a1_oe = hidrd;
assign ts_pe_16_a1_out = hirdata[11];
assign ts_pe_16_a1_oe = hidrd;
assign ts_pe_17_a1_out = hirdata[12];
assign ts_pe_17_a1_oe = hidrd;
assign ts_pe_18_a1_out = hirdata[13];
assign ts_pe_18_a1_oe = hidrd;
assign ts_pe_19_a1_out = hirdata[14];
assign ts_pe_19_a1_oe = hidrd;
assign ts_pe_20_a1_out = hirdata[15];
assign ts_pe_20_a1_oe = hidrd;
assign ts_pe_21_a1_out = hirdata[16];
assign ts_pe_21_a1_oe = hidrd;
assign ts_pe_22_a1_out = hirdata[17];
assign ts_pe_22_a1_oe = hidrd;
assign ts_pe_23_a1_out = hirdata[18];
assign ts_pe_23_a1_oe = hidrd;
assign ts_pe_24_a1_out = hirdata[19];
assign ts_pe_24_a1_oe = hidrd;
assign ts_pe_25_a1_out = hirdata[20];
assign ts_pe_25_a1_oe = hidrd;
assign ts_pe_26_a1_out = hirdata[21];
assign ts_pe_26_a1_oe = hidrd;
assign ts_pe_27_a1_out = hirdata[22];
assign ts_pe_27_a1_oe = hidrd;
assign ts_pe_28_a1_out = hirdata[23];
assign ts_pe_28_a1_oe = hidrd;
assign ts_pe_29_a1_out = hirdata[24];
assign ts_pe_29_a1_oe = hidrd;
assign ts_pe_30_a1_out = hirdata[25];
assign ts_pe_30_a1_oe = hidrd;
assign ts_pe_31_a1_out = hirdata[26];
assign ts_pe_31_a1_oe = hidrd;
assign ts_pe_32_a1_out = hirdata[27];
assign ts_pe_32_a1_oe = hidrd;
assign ts_pe_33_a1_out = hirdata[28];
assign ts_pe_33_a1_oe = hidrd;
assign ts_pe_34_a1_out = hirdata[29];
assign ts_pe_34_a1_oe = hidrd;
assign ts_pe_35_a1_out = hirdata[30];
assign ts_pe_35_a1_oe = hidrd;
assign ts_pe_36_a1_out = hirdata[31];
assign ts_pe_36_a1_oe = hidrd;

// GATEWAY.NET (256) - wdlat : an3
assign wdlat = active & reada_n & gpu_ack;

// GATEWAY.NET (257) - wden : fd1q
fd1q wden_inst
(
	.q /* OUT */ (wden),
	.d /* IN */ (wdlat),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (258) - wdenb[0-1] : nivu
assign wdenb_0 = wden;
assign wdenb_1 = wden;

// GATEWAY.NET (259) - wddrv[0-31] : ts
assign wdata_0_out = load_data_b0_obuf;
assign wdata_0_oe = wdenb_0;
assign wdata_1_out = load_data_b1_obuf;
assign wdata_1_oe = wdenb_0;
assign wdata_2_out = load_data_b2_obuf;
assign wdata_2_oe = wdenb_0;
assign wdata_3_out = load_data_b3_obuf;
assign wdata_3_oe = wdenb_0;
assign wdata_4_out = load_data_b4_obuf;
assign wdata_4_oe = wdenb_0;
assign wdata_5_out = load_data_b5_obuf;
assign wdata_5_oe = wdenb_0;
assign wdata_6_out = load_data_b6_obuf;
assign wdata_6_oe = wdenb_0;
assign wdata_7_out = load_data_b7_obuf;
assign wdata_7_oe = wdenb_0;
assign wdata_8_out = load_data_b8_obuf;
assign wdata_8_oe = wdenb_0;
assign wdata_9_out = load_data_b9_obuf;
assign wdata_9_oe = wdenb_0;
assign wdata_10_out = load_data_b10_obuf;
assign wdata_10_oe = wdenb_0;
assign wdata_11_out = load_data_b11_obuf;
assign wdata_11_oe = wdenb_0;
assign wdata_12_out = load_data_b12_obuf;
assign wdata_12_oe = wdenb_0;
assign wdata_13_out = load_data_b13_obuf;
assign wdata_13_oe = wdenb_0;
assign wdata_14_out = load_data_b14_obuf;
assign wdata_14_oe = wdenb_0;
assign wdata_15_out = load_data_b15_obuf;
assign wdata_15_oe = wdenb_0;
assign wdata_16_out = load_data_b16_obuf;
assign wdata_16_oe = wdenb_0;
assign wdata_17_out = load_data_b17_obuf;
assign wdata_17_oe = wdenb_0;
assign wdata_18_out = load_data_b18_obuf;
assign wdata_18_oe = wdenb_0;
assign wdata_19_out = load_data_b19_obuf;
assign wdata_19_oe = wdenb_0;
assign wdata_20_out = load_data_b20_obuf;
assign wdata_20_oe = wdenb_0;
assign wdata_21_out = load_data_b21_obuf;
assign wdata_21_oe = wdenb_0;
assign wdata_22_out = load_data_b22_obuf;
assign wdata_22_oe = wdenb_0;
assign wdata_23_out = load_data_b23_obuf;
assign wdata_23_oe = wdenb_0;
assign wdata_24_out = load_data_b24_obuf;
assign wdata_24_oe = wdenb_0;
assign wdata_25_out = load_data_b25_obuf;
assign wdata_25_oe = wdenb_0;
assign wdata_26_out = load_data_b26_obuf;
assign wdata_26_oe = wdenb_0;
assign wdata_27_out = load_data_b27_obuf;
assign wdata_27_oe = wdenb_0;
assign wdata_28_out = load_data_b28_obuf;
assign wdata_28_oe = wdenb_0;
assign wdata_29_out = load_data_b29_obuf;
assign wdata_29_oe = wdenb_0;
assign wdata_30_out = load_data_b30_obuf;
assign wdata_30_oe = wdenb_0;
assign wdata_31_out = load_data_b31_obuf;
assign wdata_31_oe = wdenb_0;

// GATEWAY.NET (260) - wddrv[32-63] : ts
assign wdata_32_out = hirdata[0];
assign wdata_32_oe = wdenb_1;
assign wdata_33_out = hirdata[1];
assign wdata_33_oe = wdenb_1;
assign wdata_34_out = hirdata[2];
assign wdata_34_oe = wdenb_1;
assign wdata_35_out = hirdata[3];
assign wdata_35_oe = wdenb_1;
assign wdata_36_out = hirdata[4];
assign wdata_36_oe = wdenb_1;
assign wdata_37_out = hirdata[5];
assign wdata_37_oe = wdenb_1;
assign wdata_38_out = hirdata[6];
assign wdata_38_oe = wdenb_1;
assign wdata_39_out = hirdata[7];
assign wdata_39_oe = wdenb_1;
assign wdata_40_out = hirdata[8];
assign wdata_40_oe = wdenb_1;
assign wdata_41_out = hirdata[9];
assign wdata_41_oe = wdenb_1;
assign wdata_42_out = hirdata[10];
assign wdata_42_oe = wdenb_1;
assign wdata_43_out = hirdata[11];
assign wdata_43_oe = wdenb_1;
assign wdata_44_out = hirdata[12];
assign wdata_44_oe = wdenb_1;
assign wdata_45_out = hirdata[13];
assign wdata_45_oe = wdenb_1;
assign wdata_46_out = hirdata[14];
assign wdata_46_oe = wdenb_1;
assign wdata_47_out = hirdata[15];
assign wdata_47_oe = wdenb_1;
assign wdata_48_out = hirdata[16];
assign wdata_48_oe = wdenb_1;
assign wdata_49_out = hirdata[17];
assign wdata_49_oe = wdenb_1;
assign wdata_50_out = hirdata[18];
assign wdata_50_oe = wdenb_1;
assign wdata_51_out = hirdata[19];
assign wdata_51_oe = wdenb_1;
assign wdata_52_out = hirdata[20];
assign wdata_52_oe = wdenb_1;
assign wdata_53_out = hirdata[21];
assign wdata_53_oe = wdenb_1;
assign wdata_54_out = hirdata[22];
assign wdata_54_oe = wdenb_1;
assign wdata_55_out = hirdata[23];
assign wdata_55_oe = wdenb_1;
assign wdata_56_out = hirdata[24];
assign wdata_56_oe = wdenb_1;
assign wdata_57_out = hirdata[25];
assign wdata_57_oe = wdenb_1;
assign wdata_58_out = hirdata[26];
assign wdata_58_oe = wdenb_1;
assign wdata_59_out = hirdata[27];
assign wdata_59_oe = wdenb_1;
assign wdata_60_out = hirdata[28];
assign wdata_60_oe = wdenb_1;
assign wdata_61_out = hirdata[29];
assign wdata_61_oe = wdenb_1;
assign wdata_62_out = hirdata[30];
assign wdata_62_oe = wdenb_1;
assign wdata_63_out = hirdata[31];
assign wdata_63_oe = wdenb_1;

// GATEWAY.NET (267) - ext_reqt0 : an2
assign ext_reqt_0 = active & progown;

// GATEWAY.NET (268) - ext_reqt[1-4] : fd1q
fd1q ext_reqt_from_1_to_4_inst_0
(
	.q /* OUT */ (ext_reqt_1),
	.d /* IN */ (ext_reqt_0),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q ext_reqt_from_1_to_4_inst_1
(
	.q /* OUT */ (ext_reqt_2),
	.d /* IN */ (ext_reqt_1),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q ext_reqt_from_1_to_4_inst_2
(
	.q /* OUT */ (ext_reqt_3),
	.d /* IN */ (ext_reqt_2),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q ext_reqt_from_1_to_4_inst_3
(
	.q /* OUT */ (ext_reqt_4),
	.d /* IN */ (ext_reqt_3),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GATEWAY.NET (269) - ext_reqt[5] : or4
assign ext_reqt_5 = ext_reqt_1 | ext_reqt_2 | ext_reqt_3 | ext_reqt_4;

// GATEWAY.NET (270) - ext_req\ : nd2
assign ext_req_n = ~(ext_reqt_5 & bus_hog);

// GATEWAY.NET (278) - gpu_bt0 : nd2
assign gpu_bt_0 = ~(progown_n & dmaen_n);

// GATEWAY.NET (279) - gpu_bt1 : nd2
assign gpu_bt_1 = ~(gpu_bt_0 & progown_n);

// GATEWAY.NET (280) - gpu_bt2 : nd2
assign gpu_bt_2 = ~(gpu_bt_1 & active);

// GATEWAY.NET (281) - gpu_breq : nd2
assign gpu_breq_obuf = ~(gpu_bt_2 & ext_req_n);

// GATEWAY.NET (283) - dma_breq : an3
assign dma_breq_obuf = active & progown_n & dmaen;

// --- Compiler-generated PE for BUS gpu_data<0>
assign gpu_data_out[0] = (ts_pe_5_a0_oe & ts_pe_5_a0_out ) | (ts_pe_5_a1_oe & ts_pe_5_a1_out ) | 1'b0;
assign gpu_data_oe[0] = ts_pe_5_a0_oe | ts_pe_5_a1_oe;
assign ts_pe_5_a0_in = gpu_data_in[0];
assign ts_pe_5_a1_in = gpu_data_in[0];

// --- Compiler-generated PE for BUS gpu_data<1>
assign gpu_data_out[1] = (ts_pe_6_a0_oe & ts_pe_6_a0_out ) | (ts_pe_6_a1_oe & ts_pe_6_a1_out ) | 1'b0;
assign gpu_data_oe[1] = ts_pe_6_a0_oe | ts_pe_6_a1_oe;
assign ts_pe_6_a0_in = gpu_data_in[1];
assign ts_pe_6_a1_in = gpu_data_in[1];

// --- Compiler-generated PE for BUS gpu_data<2>
assign gpu_data_out[2] = (ts_pe_7_a0_oe & ts_pe_7_a0_out ) | (ts_pe_7_a1_oe & ts_pe_7_a1_out ) | 1'b0;
assign gpu_data_oe[2] = ts_pe_7_a0_oe | ts_pe_7_a1_oe;
assign ts_pe_7_a0_in = gpu_data_in[2];
assign ts_pe_7_a1_in = gpu_data_in[2];

// --- Compiler-generated PE for BUS gpu_data<3>
assign gpu_data_out[3] = (ts_pe_8_a0_oe & ts_pe_8_a0_out ) | (ts_pe_8_a1_oe & ts_pe_8_a1_out ) | 1'b0;
assign gpu_data_oe[3] = ts_pe_8_a0_oe | ts_pe_8_a1_oe;
assign ts_pe_8_a0_in = gpu_data_in[3];
assign ts_pe_8_a1_in = gpu_data_in[3];

// --- Compiler-generated PE for BUS gpu_data<4>
assign gpu_data_out[4] = (ts_pe_9_a0_oe & ts_pe_9_a0_out ) | (ts_pe_9_a1_oe & ts_pe_9_a1_out ) | 1'b0;
assign gpu_data_oe[4] = ts_pe_9_a0_oe | ts_pe_9_a1_oe;
assign ts_pe_9_a0_in = gpu_data_in[4];
assign ts_pe_9_a1_in = gpu_data_in[4];

// --- Compiler-generated PE for BUS gpu_data<5>
assign gpu_data_out[5] = (ts_pe_10_a0_oe & ts_pe_10_a0_out ) | (ts_pe_10_a1_oe & ts_pe_10_a1_out ) | 1'b0;
assign gpu_data_oe[5] = ts_pe_10_a0_oe | ts_pe_10_a1_oe;
assign ts_pe_10_a0_in = gpu_data_in[5];
assign ts_pe_10_a1_in = gpu_data_in[5];

// --- Compiler-generated PE for BUS gpu_data<6>
assign gpu_data_out[6] = (ts_pe_11_a0_oe & ts_pe_11_a0_out ) | (ts_pe_11_a1_oe & ts_pe_11_a1_out ) | 1'b0;
assign gpu_data_oe[6] = ts_pe_11_a0_oe | ts_pe_11_a1_oe;
assign ts_pe_11_a0_in = gpu_data_in[6];
assign ts_pe_11_a1_in = gpu_data_in[6];

// --- Compiler-generated PE for BUS gpu_data<7>
assign gpu_data_out[7] = (ts_pe_12_a0_oe & ts_pe_12_a0_out ) | (ts_pe_12_a1_oe & ts_pe_12_a1_out ) | 1'b0;
assign gpu_data_oe[7] = ts_pe_12_a0_oe | ts_pe_12_a1_oe;
assign ts_pe_12_a0_in = gpu_data_in[7];
assign ts_pe_12_a1_in = gpu_data_in[7];

// --- Compiler-generated PE for BUS gpu_data<8>
assign gpu_data_out[8] = (ts_pe_13_a0_oe & ts_pe_13_a0_out ) | (ts_pe_13_a1_oe & ts_pe_13_a1_out ) | 1'b0;
assign gpu_data_oe[8] = ts_pe_13_a0_oe | ts_pe_13_a1_oe;
assign ts_pe_13_a0_in = gpu_data_in[8];
assign ts_pe_13_a1_in = gpu_data_in[8];

// --- Compiler-generated PE for BUS gpu_data<9>
assign gpu_data_out[9] = (ts_pe_14_a0_oe & ts_pe_14_a0_out ) | (ts_pe_14_a1_oe & ts_pe_14_a1_out ) | 1'b0;
assign gpu_data_oe[9] = ts_pe_14_a0_oe | ts_pe_14_a1_oe;
assign ts_pe_14_a0_in = gpu_data_in[9];
assign ts_pe_14_a1_in = gpu_data_in[9];

// --- Compiler-generated PE for BUS gpu_data<10>
assign gpu_data_out[10] = (ts_pe_15_a0_oe & ts_pe_15_a0_out ) | (ts_pe_15_a1_oe & ts_pe_15_a1_out ) | 1'b0;
assign gpu_data_oe[10] = ts_pe_15_a0_oe | ts_pe_15_a1_oe;
assign ts_pe_15_a0_in = gpu_data_in[10];
assign ts_pe_15_a1_in = gpu_data_in[10];

// --- Compiler-generated PE for BUS gpu_data<11>
assign gpu_data_out[11] = (ts_pe_16_a0_oe & ts_pe_16_a0_out ) | (ts_pe_16_a1_oe & ts_pe_16_a1_out ) | 1'b0;
assign gpu_data_oe[11] = ts_pe_16_a0_oe | ts_pe_16_a1_oe;
assign ts_pe_16_a0_in = gpu_data_in[11];
assign ts_pe_16_a1_in = gpu_data_in[11];

// --- Compiler-generated PE for BUS gpu_data<12>
assign gpu_data_out[12] = (ts_pe_17_a0_oe & ts_pe_17_a0_out ) | (ts_pe_17_a1_oe & ts_pe_17_a1_out ) | 1'b0;
assign gpu_data_oe[12] = ts_pe_17_a0_oe | ts_pe_17_a1_oe;
assign ts_pe_17_a0_in = gpu_data_in[12];
assign ts_pe_17_a1_in = gpu_data_in[12];

// --- Compiler-generated PE for BUS gpu_data<13>
assign gpu_data_out[13] = (ts_pe_18_a0_oe & ts_pe_18_a0_out ) | (ts_pe_18_a1_oe & ts_pe_18_a1_out ) | 1'b0;
assign gpu_data_oe[13] = ts_pe_18_a0_oe | ts_pe_18_a1_oe;
assign ts_pe_18_a0_in = gpu_data_in[13];
assign ts_pe_18_a1_in = gpu_data_in[13];

// --- Compiler-generated PE for BUS gpu_data<14>
assign gpu_data_out[14] = (ts_pe_19_a0_oe & ts_pe_19_a0_out ) | (ts_pe_19_a1_oe & ts_pe_19_a1_out ) | 1'b0;
assign gpu_data_oe[14] = ts_pe_19_a0_oe | ts_pe_19_a1_oe;
assign ts_pe_19_a0_in = gpu_data_in[14];
assign ts_pe_19_a1_in = gpu_data_in[14];

// --- Compiler-generated PE for BUS gpu_data<15>
assign gpu_data_out[15] = (ts_pe_20_a0_oe & ts_pe_20_a0_out ) | (ts_pe_20_a1_oe & ts_pe_20_a1_out ) | 1'b0;
assign gpu_data_oe[15] = ts_pe_20_a0_oe | ts_pe_20_a1_oe;
assign ts_pe_20_a0_in = gpu_data_in[15];
assign ts_pe_20_a1_in = gpu_data_in[15];

// --- Compiler-generated PE for BUS gpu_data<16>
assign gpu_data_out[16] = (ts_pe_21_a0_oe & ts_pe_21_a0_out ) | (ts_pe_21_a1_oe & ts_pe_21_a1_out ) | 1'b0;
assign gpu_data_oe[16] = ts_pe_21_a0_oe | ts_pe_21_a1_oe;
assign ts_pe_21_a0_in = gpu_data_in[16];
assign ts_pe_21_a1_in = gpu_data_in[16];

// --- Compiler-generated PE for BUS gpu_data<17>
assign gpu_data_out[17] = (ts_pe_22_a0_oe & ts_pe_22_a0_out ) | (ts_pe_22_a1_oe & ts_pe_22_a1_out ) | 1'b0;
assign gpu_data_oe[17] = ts_pe_22_a0_oe | ts_pe_22_a1_oe;
assign ts_pe_22_a0_in = gpu_data_in[17];
assign ts_pe_22_a1_in = gpu_data_in[17];

// --- Compiler-generated PE for BUS gpu_data<18>
assign gpu_data_out[18] = (ts_pe_23_a0_oe & ts_pe_23_a0_out ) | (ts_pe_23_a1_oe & ts_pe_23_a1_out ) | 1'b0;
assign gpu_data_oe[18] = ts_pe_23_a0_oe | ts_pe_23_a1_oe;
assign ts_pe_23_a0_in = gpu_data_in[18];
assign ts_pe_23_a1_in = gpu_data_in[18];

// --- Compiler-generated PE for BUS gpu_data<19>
assign gpu_data_out[19] = (ts_pe_24_a0_oe & ts_pe_24_a0_out ) | (ts_pe_24_a1_oe & ts_pe_24_a1_out ) | 1'b0;
assign gpu_data_oe[19] = ts_pe_24_a0_oe | ts_pe_24_a1_oe;
assign ts_pe_24_a0_in = gpu_data_in[19];
assign ts_pe_24_a1_in = gpu_data_in[19];

// --- Compiler-generated PE for BUS gpu_data<20>
assign gpu_data_out[20] = (ts_pe_25_a0_oe & ts_pe_25_a0_out ) | (ts_pe_25_a1_oe & ts_pe_25_a1_out ) | 1'b0;
assign gpu_data_oe[20] = ts_pe_25_a0_oe | ts_pe_25_a1_oe;
assign ts_pe_25_a0_in = gpu_data_in[20];
assign ts_pe_25_a1_in = gpu_data_in[20];

// --- Compiler-generated PE for BUS gpu_data<21>
assign gpu_data_out[21] = (ts_pe_26_a0_oe & ts_pe_26_a0_out ) | (ts_pe_26_a1_oe & ts_pe_26_a1_out ) | 1'b0;
assign gpu_data_oe[21] = ts_pe_26_a0_oe | ts_pe_26_a1_oe;
assign ts_pe_26_a0_in = gpu_data_in[21];
assign ts_pe_26_a1_in = gpu_data_in[21];

// --- Compiler-generated PE for BUS gpu_data<22>
assign gpu_data_out[22] = (ts_pe_27_a0_oe & ts_pe_27_a0_out ) | (ts_pe_27_a1_oe & ts_pe_27_a1_out ) | 1'b0;
assign gpu_data_oe[22] = ts_pe_27_a0_oe | ts_pe_27_a1_oe;
assign ts_pe_27_a0_in = gpu_data_in[22];
assign ts_pe_27_a1_in = gpu_data_in[22];

// --- Compiler-generated PE for BUS gpu_data<23>
assign gpu_data_out[23] = (ts_pe_28_a0_oe & ts_pe_28_a0_out ) | (ts_pe_28_a1_oe & ts_pe_28_a1_out ) | 1'b0;
assign gpu_data_oe[23] = ts_pe_28_a0_oe | ts_pe_28_a1_oe;
assign ts_pe_28_a0_in = gpu_data_in[23];
assign ts_pe_28_a1_in = gpu_data_in[23];

// --- Compiler-generated PE for BUS gpu_data<24>
assign gpu_data_out[24] = (ts_pe_29_a0_oe & ts_pe_29_a0_out ) | (ts_pe_29_a1_oe & ts_pe_29_a1_out ) | 1'b0;
assign gpu_data_oe[24] = ts_pe_29_a0_oe | ts_pe_29_a1_oe;
assign ts_pe_29_a0_in = gpu_data_in[24];
assign ts_pe_29_a1_in = gpu_data_in[24];

// --- Compiler-generated PE for BUS gpu_data<25>
assign gpu_data_out[25] = (ts_pe_30_a0_oe & ts_pe_30_a0_out ) | (ts_pe_30_a1_oe & ts_pe_30_a1_out ) | 1'b0;
assign gpu_data_oe[25] = ts_pe_30_a0_oe | ts_pe_30_a1_oe;
assign ts_pe_30_a0_in = gpu_data_in[25];
assign ts_pe_30_a1_in = gpu_data_in[25];

// --- Compiler-generated PE for BUS gpu_data<26>
assign gpu_data_out[26] = (ts_pe_31_a0_oe & ts_pe_31_a0_out ) | (ts_pe_31_a1_oe & ts_pe_31_a1_out ) | 1'b0;
assign gpu_data_oe[26] = ts_pe_31_a0_oe | ts_pe_31_a1_oe;
assign ts_pe_31_a0_in = gpu_data_in[26];
assign ts_pe_31_a1_in = gpu_data_in[26];

// --- Compiler-generated PE for BUS gpu_data<27>
assign gpu_data_out[27] = (ts_pe_32_a0_oe & ts_pe_32_a0_out ) | (ts_pe_32_a1_oe & ts_pe_32_a1_out ) | 1'b0;
assign gpu_data_oe[27] = ts_pe_32_a0_oe | ts_pe_32_a1_oe;
assign ts_pe_32_a0_in = gpu_data_in[27];
assign ts_pe_32_a1_in = gpu_data_in[27];

// --- Compiler-generated PE for BUS gpu_data<28>
assign gpu_data_out[28] = (ts_pe_33_a0_oe & ts_pe_33_a0_out ) | (ts_pe_33_a1_oe & ts_pe_33_a1_out ) | 1'b0;
assign gpu_data_oe[28] = ts_pe_33_a0_oe | ts_pe_33_a1_oe;
assign ts_pe_33_a0_in = gpu_data_in[28];
assign ts_pe_33_a1_in = gpu_data_in[28];

// --- Compiler-generated PE for BUS gpu_data<29>
assign gpu_data_out[29] = (ts_pe_34_a0_oe & ts_pe_34_a0_out ) | (ts_pe_34_a1_oe & ts_pe_34_a1_out ) | 1'b0;
assign gpu_data_oe[29] = ts_pe_34_a0_oe | ts_pe_34_a1_oe;
assign ts_pe_34_a0_in = gpu_data_in[29];
assign ts_pe_34_a1_in = gpu_data_in[29];

// --- Compiler-generated PE for BUS gpu_data<30>
assign gpu_data_out[30] = (ts_pe_35_a0_oe & ts_pe_35_a0_out ) | (ts_pe_35_a1_oe & ts_pe_35_a1_out ) | 1'b0;
assign gpu_data_oe[30] = ts_pe_35_a0_oe | ts_pe_35_a1_oe;
assign ts_pe_35_a0_in = gpu_data_in[30];
assign ts_pe_35_a1_in = gpu_data_in[30];

// --- Compiler-generated PE for BUS gpu_data<31>
assign gpu_data_out[31] = (ts_pe_36_a0_oe & ts_pe_36_a0_out ) | (ts_pe_36_a1_oe & ts_pe_36_a1_out ) | 1'b0;
assign gpu_data_oe[31] = ts_pe_36_a0_oe | ts_pe_36_a1_oe;
assign ts_pe_36_a0_in = gpu_data_in[31];
assign ts_pe_36_a1_in = gpu_data_in[31];
endmodule
/* verilator lint_on LITENDIAN */
