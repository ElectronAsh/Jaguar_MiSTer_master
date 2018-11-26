/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_dsp
(
	input ima_0,
	input ima_1,
	input ima_2,
	input ima_3,
	input ima_4,
	input ima_5,
	input ima_6,
	input ima_7,
	input ima_8,
	input ima_9,
	input ima_10,
	input ima_11,
	input ima_12,
	input ima_13,
	input ima_14,
	input ima_15,
	input dout_0,
	input dout_1,
	input dout_2,
	input dout_3,
	input dout_4,
	input dout_5,
	input dout_6,
	input dout_7,
	input dout_8,
	input dout_9,
	input dout_10,
	input dout_11,
	input dout_12,
	input dout_13,
	input dout_14,
	input dout_15,
	input dout_16,
	input dout_17,
	input dout_18,
	input dout_19,
	input dout_20,
	input dout_21,
	input dout_22,
	input dout_23,
	input dout_24,
	input dout_25,
	input dout_26,
	input dout_27,
	input dout_28,
	input dout_29,
	input dout_30,
	input dout_31,
	input ack,
	input gpu_back,
	input reset_n,
	input clk,
	input eint_n_0,
	input eint_n_1,
	input tint_0,
	input tint_1,
	input i2int,
	input iord,
	input iowr,
	input tlw,
	output gpu_breq,
	output dma_breq,
	output cpu_int,
	output wdata_0,
	output wdata_1,
	output wdata_2,
	output wdata_3,
	output wdata_4,
	output wdata_5,
	output wdata_6,
	output wdata_7,
	output wdata_8,
	output wdata_9,
	output wdata_10,
	output wdata_11,
	output wdata_12,
	output wdata_13,
	output wdata_14,
	output wdata_15,
	output wdata_16,
	output wdata_17,
	output wdata_18,
	output wdata_19,
	output wdata_20,
	output wdata_21,
	output wdata_22,
	output wdata_23,
	output wdata_24,
	output wdata_25,
	output wdata_26,
	output wdata_27,
	output wdata_28,
	output wdata_29,
	output wdata_30,
	output wdata_31,
	output a_0,
	output a_1,
	output a_2,
	output a_3,
	output a_4,
	output a_5,
	output a_6,
	output a_7,
	output a_8,
	output a_9,
	output a_10,
	output a_11,
	output a_12,
	output a_13,
	output a_14,
	output a_15,
	output a_16,
	output a_17,
	output a_18,
	output a_19,
	output a_20,
	output a_21,
	output a_22,
	output a_23,
	output width_0,
	output width_1,
	output width_2,
	output read,
	output mreq,
	output dacw_0,
	output dacw_1,
	output gpu_din_0,
	output gpu_din_1,
	output gpu_din_2,
	output gpu_din_3,
	output gpu_din_4,
	output gpu_din_5,
	output gpu_din_6,
	output gpu_din_7,
	output gpu_din_8,
	output gpu_din_9,
	output gpu_din_10,
	output gpu_din_11,
	output gpu_din_12,
	output gpu_din_13,
	output gpu_din_14,
	output gpu_din_15,
	output i2sw_0,
	output i2sw_1,
	output i2sw_2,
	output i2sw_3,
	output i2sr_0,
	output i2sr_1,
	output i2sr_2,
	output dr_0_out,
	output dr_0_oe,
	input dr_0_in,
	output dr_1_out,
	output dr_1_oe,
	input dr_1_in,
	output dr_2_out,
	output dr_2_oe,
	input dr_2_in,
	output dr_3_out,
	output dr_3_oe,
	input dr_3_in,
	output dr_4_out,
	output dr_4_oe,
	input dr_4_in,
	output dr_5_out,
	output dr_5_oe,
	input dr_5_in,
	output dr_6_out,
	output dr_6_oe,
	input dr_6_in,
	output dr_7_out,
	output dr_7_oe,
	input dr_7_in,
	output dr_8_out,
	output dr_8_oe,
	input dr_8_in,
	output dr_9_out,
	output dr_9_oe,
	input dr_9_in,
	output dr_10_out,
	output dr_10_oe,
	input dr_10_in,
	output dr_11_out,
	output dr_11_oe,
	input dr_11_in,
	output dr_12_out,
	output dr_12_oe,
	input dr_12_in,
	output dr_13_out,
	output dr_13_oe,
	input dr_13_in,
	output dr_14_out,
	output dr_14_oe,
	input dr_14_in,
	output dr_15_out,
	output dr_15_oe,
	input dr_15_in,
	output gpu_dout_o_0_out,
	output gpu_dout_o_0_oe,
	input gpu_dout_o_0_in,
	output gpu_dout_o_1_out,
	output gpu_dout_o_1_oe,
	input gpu_dout_o_1_in,
	output gpu_dout_o_2_out,
	output gpu_dout_o_2_oe,
	input gpu_dout_o_2_in,
	output gpu_dout_o_3_out,
	output gpu_dout_o_3_oe,
	input gpu_dout_o_3_in,
	output gpu_dout_o_4_out,
	output gpu_dout_o_4_oe,
	input gpu_dout_o_4_in,
	output gpu_dout_o_5_out,
	output gpu_dout_o_5_oe,
	input gpu_dout_o_5_in,
	output gpu_dout_o_6_out,
	output gpu_dout_o_6_oe,
	input gpu_dout_o_6_in,
	output gpu_dout_o_7_out,
	output gpu_dout_o_7_oe,
	input gpu_dout_o_7_in,
	output gpu_dout_o_8_out,
	output gpu_dout_o_8_oe,
	input gpu_dout_o_8_in,
	output gpu_dout_o_9_out,
	output gpu_dout_o_9_oe,
	input gpu_dout_o_9_in,
	output gpu_dout_o_10_out,
	output gpu_dout_o_10_oe,
	input gpu_dout_o_10_in,
	output gpu_dout_o_11_out,
	output gpu_dout_o_11_oe,
	input gpu_dout_o_11_in,
	output gpu_dout_o_12_out,
	output gpu_dout_o_12_oe,
	input gpu_dout_o_12_in,
	output gpu_dout_o_13_out,
	output gpu_dout_o_13_oe,
	input gpu_dout_o_13_in,
	output gpu_dout_o_14_out,
	output gpu_dout_o_14_oe,
	input gpu_dout_o_14_in,
	output gpu_dout_o_15_out,
	output gpu_dout_o_15_oe,
	input gpu_dout_o_15_in,
	input sys_clk // Generated
);
wire [0:15] io_addr;
wire [0:31] gpu_din;
wire [0:23] dataddr;
wire [0:23] gpu_addr;
wire [0:31] immdata;
wire [0:31] locsrc;
wire [0:31] result;
wire [0:31] srcd;
wire [0:31] srcdp;
wire [0:31] srcdpa;
wire [0:31] dstwd;
wire [0:31] srcwd;
wire [0:31] load_data;
wire [0:31] mem_data;
wire [0:31] quotient;
wire [0:31] dstdp;
wire [0:31] dstd;
wire [0:31] cpudata;
wire [0:2] alufunc;
wire [0:5] dstanwi;
wire [0:5] srcanwi;
wire [0:5] dstat;
wire [0:5] dsta;
wire [0:5] srca;
wire [0:21] progaddr;
wire [0:12] cpuaddr;
wire [0:23] address;
wire [0:15] dread_out;
wire [0:15] dread_oe;
wire [0:15] dread_in;
wire [0:31] gpu_data_out;
wire [0:31] gpu_data_oe;
wire [0:31] gpu_data_in;
wire gpu_dout_0_out;
wire gpu_dout_0_oe;
wire gpu_dout_0_in;
wire gpu_dout_1_out;
wire gpu_dout_1_oe;
wire gpu_dout_1_in;
wire gpu_dout_2_out;
wire gpu_dout_2_oe;
wire gpu_dout_2_in;
wire gpu_dout_3_out;
wire gpu_dout_3_oe;
wire gpu_dout_3_in;
wire gpu_dout_4_out;
wire gpu_dout_4_oe;
wire gpu_dout_4_in;
wire gpu_dout_5_out;
wire gpu_dout_5_oe;
wire gpu_dout_5_in;
wire gpu_dout_6_out;
wire gpu_dout_6_oe;
wire gpu_dout_6_in;
wire gpu_dout_7_out;
wire gpu_dout_7_oe;
wire gpu_dout_7_in;
wire gpu_dout_8_out;
wire gpu_dout_8_oe;
wire gpu_dout_8_in;
wire gpu_dout_9_out;
wire gpu_dout_9_oe;
wire gpu_dout_9_in;
wire gpu_dout_10_out;
wire gpu_dout_10_oe;
wire gpu_dout_10_in;
wire gpu_dout_11_out;
wire gpu_dout_11_oe;
wire gpu_dout_11_in;
wire gpu_dout_12_out;
wire gpu_dout_12_oe;
wire gpu_dout_12_in;
wire gpu_dout_13_out;
wire gpu_dout_13_oe;
wire gpu_dout_13_in;
wire gpu_dout_14_out;
wire gpu_dout_14_oe;
wire gpu_dout_14_in;
wire gpu_dout_15_out;
wire gpu_dout_15_oe;
wire gpu_dout_15_in;
wire gpu_dout_16_out;
wire gpu_dout_16_oe;
wire gpu_dout_16_in;
wire gpu_dout_17_out;
wire gpu_dout_17_oe;
wire gpu_dout_17_in;
wire gpu_dout_18_out;
wire gpu_dout_18_oe;
wire gpu_dout_18_in;
wire gpu_dout_19_out;
wire gpu_dout_19_oe;
wire gpu_dout_19_in;
wire gpu_dout_20_out;
wire gpu_dout_20_oe;
wire gpu_dout_20_in;
wire gpu_dout_21_out;
wire gpu_dout_21_oe;
wire gpu_dout_21_in;
wire gpu_dout_22_out;
wire gpu_dout_22_oe;
wire gpu_dout_22_in;
wire gpu_dout_23_out;
wire gpu_dout_23_oe;
wire gpu_dout_23_in;
wire gpu_dout_24_out;
wire gpu_dout_24_oe;
wire gpu_dout_24_in;
wire gpu_dout_25_out;
wire gpu_dout_25_oe;
wire gpu_dout_25_in;
wire gpu_dout_26_out;
wire gpu_dout_26_oe;
wire gpu_dout_26_in;
wire gpu_dout_27_out;
wire gpu_dout_27_oe;
wire gpu_dout_27_in;
wire gpu_dout_28_out;
wire gpu_dout_28_oe;
wire gpu_dout_28_in;
wire gpu_dout_29_out;
wire gpu_dout_29_oe;
wire gpu_dout_29_in;
wire gpu_dout_30_out;
wire gpu_dout_30_oe;
wire gpu_dout_30_in;
wire gpu_dout_31_out;
wire gpu_dout_31_oe;
wire gpu_dout_31_in;
wire reset_n_0;
wire reset_n_1;
wire reset_n_2;
wire reset_n_3;
wire reset_n_4;
wire reset_n_5;
wire reset_n_6;
wire reset_n_7;
wire clk_1;
wire clk_2;
wire clk_3;
wire clk_4;
wire clk_5;
wire clk_6;
wire clk_7;
wire clk_8;
wire tlw_0;
wire tlw_1;
wire tlw_2;
wire eints_n_0;
wire eints_n_1;
wire eints_0;
wire eints_1;
wire eintd_n_0;
wire eintd_n_1;
wire gpu_irq_4;
wire gpu_irq_5;
wire gpu_irq_2;
wire gpu_irq_3;
wire i2int_n;
wire i2intd_n;
wire gpu_irq_1;
wire brlmux_0;
wire brlmux_1;
wire datreq;
wire datwe;
wire datwe_raw;
wire div_instr;
wire div_start;
wire dstdgate;
wire dstrrd;
wire dstrrdi;
wire dstrwr;
wire dstrwri;
wire dstwen;
wire exe;
wire flag_depend;
wire flagld;
wire immld;
wire immwri;
wire insexei;
wire locden;
wire macop;
wire memrw;
wire msize_0;
wire msize_1;
wire mtx_dover;
wire multsel;
wire multsign;
wire pabort;
wire precomp;
wire progreq;
wire resld;
wire ressel_0;
wire ressel_1;
wire ressel_2;
wire reswr;
wire rev_sub;
wire satsz;
wire srcrrd;
wire single_stop;
wire big_instr;
wire carry_flag;
wire datack;
wire dbgrd;
wire div_activei;
wire external;
wire flagrd;
wire flagwr;
wire gate_active;
wire go;
wire gpu_irq_0;
wire mtxawr;
wire mtxcwr;
wire nega_flag;
wire pcrd;
wire pcwr;
wire progack;
wire resaddrldi;
wire sbwait;
wire sdatreq;
wire single_go;
wire single_step;
wire srcaddrldi;
wire statrd;
wire zero_flag;
wire dstrwen_n;
wire srcrwen_n;
wire del_xld;
wire xld_ready;
wire accumrd;
wire modulowr;
wire divwr;
wire remrd;
wire big_io;
wire ctrlwr;
wire gateack;
wire gpu_memw;
wire progserv;
wire ram_addr_2;
wire ram_addr_3;
wire ram_addr_4;
wire ram_addr_5;
wire ram_addr_6;
wire ram_addr_7;
wire ram_addr_8;
wire ram_addr_9;
wire ram_addr_10;
wire ram_addr_11;
wire ramen_0;
wire ramen_1;
wire romen;
wire gatereq;
wire ioreq;
wire bus_hog;
wire ts_local_pe_39_a0_out;
wire ts_local_pe_39_a0_oe;
wire ts_local_pe_39_a0_in;
wire ts_local_pe_39_a1_out;
wire ts_local_pe_39_a1_oe;
wire ts_local_pe_39_a1_in;
wire ts_local_pe_39_a2_out;
wire ts_local_pe_39_a2_oe;
wire ts_local_pe_39_a2_in;
wire ts_local_pe_39_a3_out;
wire ts_local_pe_39_a3_oe;
wire ts_local_pe_39_a3_in;
wire ts_local_pe_39_a4_out;
wire ts_local_pe_39_a4_oe;
wire ts_local_pe_39_a4_in;
wire ts_local_pe_39_a5_out;
wire ts_local_pe_39_a5_oe;
wire ts_local_pe_39_a5_in;
wire ts_local_pe_39_a6_out;
wire ts_local_pe_39_a6_oe;
wire ts_local_pe_39_a6_in;
wire ts_local_pe_40_a0_out;
wire ts_local_pe_40_a0_oe;
wire ts_local_pe_40_a0_in;
wire ts_local_pe_40_a1_out;
wire ts_local_pe_40_a1_oe;
wire ts_local_pe_40_a1_in;
wire ts_local_pe_40_a2_out;
wire ts_local_pe_40_a2_oe;
wire ts_local_pe_40_a2_in;
wire ts_local_pe_40_a3_out;
wire ts_local_pe_40_a3_oe;
wire ts_local_pe_40_a3_in;
wire ts_local_pe_40_a4_out;
wire ts_local_pe_40_a4_oe;
wire ts_local_pe_40_a4_in;
wire ts_local_pe_40_a5_out;
wire ts_local_pe_40_a5_oe;
wire ts_local_pe_40_a5_in;
wire ts_local_pe_40_a6_out;
wire ts_local_pe_40_a6_oe;
wire ts_local_pe_40_a6_in;
wire ts_local_pe_41_a0_out;
wire ts_local_pe_41_a0_oe;
wire ts_local_pe_41_a0_in;
wire ts_local_pe_41_a1_out;
wire ts_local_pe_41_a1_oe;
wire ts_local_pe_41_a1_in;
wire ts_local_pe_41_a2_out;
wire ts_local_pe_41_a2_oe;
wire ts_local_pe_41_a2_in;
wire ts_local_pe_41_a3_out;
wire ts_local_pe_41_a3_oe;
wire ts_local_pe_41_a3_in;
wire ts_local_pe_41_a4_out;
wire ts_local_pe_41_a4_oe;
wire ts_local_pe_41_a4_in;
wire ts_local_pe_41_a5_out;
wire ts_local_pe_41_a5_oe;
wire ts_local_pe_41_a5_in;
wire ts_local_pe_41_a6_out;
wire ts_local_pe_41_a6_oe;
wire ts_local_pe_41_a6_in;
wire ts_local_pe_42_a0_out;
wire ts_local_pe_42_a0_oe;
wire ts_local_pe_42_a0_in;
wire ts_local_pe_42_a1_out;
wire ts_local_pe_42_a1_oe;
wire ts_local_pe_42_a1_in;
wire ts_local_pe_42_a2_out;
wire ts_local_pe_42_a2_oe;
wire ts_local_pe_42_a2_in;
wire ts_local_pe_42_a3_out;
wire ts_local_pe_42_a3_oe;
wire ts_local_pe_42_a3_in;
wire ts_local_pe_42_a4_out;
wire ts_local_pe_42_a4_oe;
wire ts_local_pe_42_a4_in;
wire ts_local_pe_42_a5_out;
wire ts_local_pe_42_a5_oe;
wire ts_local_pe_42_a5_in;
wire ts_local_pe_42_a6_out;
wire ts_local_pe_42_a6_oe;
wire ts_local_pe_42_a6_in;
wire ts_local_pe_43_a0_out;
wire ts_local_pe_43_a0_oe;
wire ts_local_pe_43_a0_in;
wire ts_local_pe_43_a1_out;
wire ts_local_pe_43_a1_oe;
wire ts_local_pe_43_a1_in;
wire ts_local_pe_43_a2_out;
wire ts_local_pe_43_a2_oe;
wire ts_local_pe_43_a2_in;
wire ts_local_pe_43_a3_out;
wire ts_local_pe_43_a3_oe;
wire ts_local_pe_43_a3_in;
wire ts_local_pe_43_a4_out;
wire ts_local_pe_43_a4_oe;
wire ts_local_pe_43_a4_in;
wire ts_local_pe_43_a5_out;
wire ts_local_pe_43_a5_oe;
wire ts_local_pe_43_a5_in;
wire ts_local_pe_43_a6_out;
wire ts_local_pe_43_a6_oe;
wire ts_local_pe_43_a6_in;
wire ts_local_pe_44_a0_out;
wire ts_local_pe_44_a0_oe;
wire ts_local_pe_44_a0_in;
wire ts_local_pe_44_a1_out;
wire ts_local_pe_44_a1_oe;
wire ts_local_pe_44_a1_in;
wire ts_local_pe_44_a2_out;
wire ts_local_pe_44_a2_oe;
wire ts_local_pe_44_a2_in;
wire ts_local_pe_44_a3_out;
wire ts_local_pe_44_a3_oe;
wire ts_local_pe_44_a3_in;
wire ts_local_pe_44_a4_out;
wire ts_local_pe_44_a4_oe;
wire ts_local_pe_44_a4_in;
wire ts_local_pe_44_a5_out;
wire ts_local_pe_44_a5_oe;
wire ts_local_pe_44_a5_in;
wire ts_local_pe_44_a6_out;
wire ts_local_pe_44_a6_oe;
wire ts_local_pe_44_a6_in;
wire ts_local_pe_45_a0_out;
wire ts_local_pe_45_a0_oe;
wire ts_local_pe_45_a0_in;
wire ts_local_pe_45_a1_out;
wire ts_local_pe_45_a1_oe;
wire ts_local_pe_45_a1_in;
wire ts_local_pe_45_a2_out;
wire ts_local_pe_45_a2_oe;
wire ts_local_pe_45_a2_in;
wire ts_local_pe_45_a3_out;
wire ts_local_pe_45_a3_oe;
wire ts_local_pe_45_a3_in;
wire ts_local_pe_45_a4_out;
wire ts_local_pe_45_a4_oe;
wire ts_local_pe_45_a4_in;
wire ts_local_pe_45_a5_out;
wire ts_local_pe_45_a5_oe;
wire ts_local_pe_45_a5_in;
wire ts_local_pe_45_a6_out;
wire ts_local_pe_45_a6_oe;
wire ts_local_pe_45_a6_in;
wire ts_local_pe_46_a0_out;
wire ts_local_pe_46_a0_oe;
wire ts_local_pe_46_a0_in;
wire ts_local_pe_46_a1_out;
wire ts_local_pe_46_a1_oe;
wire ts_local_pe_46_a1_in;
wire ts_local_pe_46_a2_out;
wire ts_local_pe_46_a2_oe;
wire ts_local_pe_46_a2_in;
wire ts_local_pe_46_a3_out;
wire ts_local_pe_46_a3_oe;
wire ts_local_pe_46_a3_in;
wire ts_local_pe_46_a4_out;
wire ts_local_pe_46_a4_oe;
wire ts_local_pe_46_a4_in;
wire ts_local_pe_46_a5_out;
wire ts_local_pe_46_a5_oe;
wire ts_local_pe_46_a5_in;
wire ts_local_pe_46_a6_out;
wire ts_local_pe_46_a6_oe;
wire ts_local_pe_46_a6_in;
wire ts_local_pe_47_a0_out;
wire ts_local_pe_47_a0_oe;
wire ts_local_pe_47_a0_in;
wire ts_local_pe_47_a1_out;
wire ts_local_pe_47_a1_oe;
wire ts_local_pe_47_a1_in;
wire ts_local_pe_47_a2_out;
wire ts_local_pe_47_a2_oe;
wire ts_local_pe_47_a2_in;
wire ts_local_pe_47_a3_out;
wire ts_local_pe_47_a3_oe;
wire ts_local_pe_47_a3_in;
wire ts_local_pe_47_a4_out;
wire ts_local_pe_47_a4_oe;
wire ts_local_pe_47_a4_in;
wire ts_local_pe_47_a5_out;
wire ts_local_pe_47_a5_oe;
wire ts_local_pe_47_a5_in;
wire ts_local_pe_47_a6_out;
wire ts_local_pe_47_a6_oe;
wire ts_local_pe_47_a6_in;
wire ts_local_pe_48_a0_out;
wire ts_local_pe_48_a0_oe;
wire ts_local_pe_48_a0_in;
wire ts_local_pe_48_a1_out;
wire ts_local_pe_48_a1_oe;
wire ts_local_pe_48_a1_in;
wire ts_local_pe_48_a2_out;
wire ts_local_pe_48_a2_oe;
wire ts_local_pe_48_a2_in;
wire ts_local_pe_48_a3_out;
wire ts_local_pe_48_a3_oe;
wire ts_local_pe_48_a3_in;
wire ts_local_pe_48_a4_out;
wire ts_local_pe_48_a4_oe;
wire ts_local_pe_48_a4_in;
wire ts_local_pe_48_a5_out;
wire ts_local_pe_48_a5_oe;
wire ts_local_pe_48_a5_in;
wire ts_local_pe_48_a6_out;
wire ts_local_pe_48_a6_oe;
wire ts_local_pe_48_a6_in;
wire ts_local_pe_49_a0_out;
wire ts_local_pe_49_a0_oe;
wire ts_local_pe_49_a0_in;
wire ts_local_pe_49_a1_out;
wire ts_local_pe_49_a1_oe;
wire ts_local_pe_49_a1_in;
wire ts_local_pe_49_a2_out;
wire ts_local_pe_49_a2_oe;
wire ts_local_pe_49_a2_in;
wire ts_local_pe_49_a3_out;
wire ts_local_pe_49_a3_oe;
wire ts_local_pe_49_a3_in;
wire ts_local_pe_49_a4_out;
wire ts_local_pe_49_a4_oe;
wire ts_local_pe_49_a4_in;
wire ts_local_pe_49_a5_out;
wire ts_local_pe_49_a5_oe;
wire ts_local_pe_49_a5_in;
wire ts_local_pe_49_a6_out;
wire ts_local_pe_49_a6_oe;
wire ts_local_pe_49_a6_in;
wire ts_local_pe_50_a0_out;
wire ts_local_pe_50_a0_oe;
wire ts_local_pe_50_a0_in;
wire ts_local_pe_50_a1_out;
wire ts_local_pe_50_a1_oe;
wire ts_local_pe_50_a1_in;
wire ts_local_pe_50_a2_out;
wire ts_local_pe_50_a2_oe;
wire ts_local_pe_50_a2_in;
wire ts_local_pe_50_a3_out;
wire ts_local_pe_50_a3_oe;
wire ts_local_pe_50_a3_in;
wire ts_local_pe_50_a4_out;
wire ts_local_pe_50_a4_oe;
wire ts_local_pe_50_a4_in;
wire ts_local_pe_50_a5_out;
wire ts_local_pe_50_a5_oe;
wire ts_local_pe_50_a5_in;
wire ts_local_pe_50_a6_out;
wire ts_local_pe_50_a6_oe;
wire ts_local_pe_50_a6_in;
wire ts_local_pe_51_a0_out;
wire ts_local_pe_51_a0_oe;
wire ts_local_pe_51_a0_in;
wire ts_local_pe_51_a1_out;
wire ts_local_pe_51_a1_oe;
wire ts_local_pe_51_a1_in;
wire ts_local_pe_51_a2_out;
wire ts_local_pe_51_a2_oe;
wire ts_local_pe_51_a2_in;
wire ts_local_pe_51_a3_out;
wire ts_local_pe_51_a3_oe;
wire ts_local_pe_51_a3_in;
wire ts_local_pe_51_a4_out;
wire ts_local_pe_51_a4_oe;
wire ts_local_pe_51_a4_in;
wire ts_local_pe_51_a5_out;
wire ts_local_pe_51_a5_oe;
wire ts_local_pe_51_a5_in;
wire ts_local_pe_51_a6_out;
wire ts_local_pe_51_a6_oe;
wire ts_local_pe_51_a6_in;
wire ts_local_pe_52_a0_out;
wire ts_local_pe_52_a0_oe;
wire ts_local_pe_52_a0_in;
wire ts_local_pe_52_a1_out;
wire ts_local_pe_52_a1_oe;
wire ts_local_pe_52_a1_in;
wire ts_local_pe_52_a2_out;
wire ts_local_pe_52_a2_oe;
wire ts_local_pe_52_a2_in;
wire ts_local_pe_52_a3_out;
wire ts_local_pe_52_a3_oe;
wire ts_local_pe_52_a3_in;
wire ts_local_pe_52_a4_out;
wire ts_local_pe_52_a4_oe;
wire ts_local_pe_52_a4_in;
wire ts_local_pe_52_a5_out;
wire ts_local_pe_52_a5_oe;
wire ts_local_pe_52_a5_in;
wire ts_local_pe_52_a6_out;
wire ts_local_pe_52_a6_oe;
wire ts_local_pe_52_a6_in;
wire ts_local_pe_53_a0_out;
wire ts_local_pe_53_a0_oe;
wire ts_local_pe_53_a0_in;
wire ts_local_pe_53_a1_out;
wire ts_local_pe_53_a1_oe;
wire ts_local_pe_53_a1_in;
wire ts_local_pe_53_a2_out;
wire ts_local_pe_53_a2_oe;
wire ts_local_pe_53_a2_in;
wire ts_local_pe_53_a3_out;
wire ts_local_pe_53_a3_oe;
wire ts_local_pe_53_a3_in;
wire ts_local_pe_53_a4_out;
wire ts_local_pe_53_a4_oe;
wire ts_local_pe_53_a4_in;
wire ts_local_pe_53_a5_out;
wire ts_local_pe_53_a5_oe;
wire ts_local_pe_53_a5_in;
wire ts_local_pe_53_a6_out;
wire ts_local_pe_53_a6_oe;
wire ts_local_pe_53_a6_in;
wire ts_local_pe_54_a0_out;
wire ts_local_pe_54_a0_oe;
wire ts_local_pe_54_a0_in;
wire ts_local_pe_54_a1_out;
wire ts_local_pe_54_a1_oe;
wire ts_local_pe_54_a1_in;
wire ts_local_pe_54_a2_out;
wire ts_local_pe_54_a2_oe;
wire ts_local_pe_54_a2_in;
wire ts_local_pe_54_a3_out;
wire ts_local_pe_54_a3_oe;
wire ts_local_pe_54_a3_in;
wire ts_local_pe_54_a4_out;
wire ts_local_pe_54_a4_oe;
wire ts_local_pe_54_a4_in;
wire ts_local_pe_54_a5_out;
wire ts_local_pe_54_a5_oe;
wire ts_local_pe_54_a5_in;
wire ts_local_pe_54_a6_out;
wire ts_local_pe_54_a6_oe;
wire ts_local_pe_54_a6_in;
wire ts_local_pe_55_a0_out;
wire ts_local_pe_55_a0_oe;
wire ts_local_pe_55_a0_in;
wire ts_local_pe_55_a1_out;
wire ts_local_pe_55_a1_oe;
wire ts_local_pe_55_a1_in;
wire ts_local_pe_55_a2_out;
wire ts_local_pe_55_a2_oe;
wire ts_local_pe_55_a2_in;
wire ts_local_pe_55_a3_out;
wire ts_local_pe_55_a3_oe;
wire ts_local_pe_55_a3_in;
wire ts_local_pe_55_a4_out;
wire ts_local_pe_55_a4_oe;
wire ts_local_pe_55_a4_in;
wire ts_local_pe_55_a5_out;
wire ts_local_pe_55_a5_oe;
wire ts_local_pe_55_a5_in;
wire ts_local_pe_55_a6_out;
wire ts_local_pe_55_a6_oe;
wire ts_local_pe_55_a6_in;
wire ts_local_pe_56_a0_out;
wire ts_local_pe_56_a0_oe;
wire ts_local_pe_56_a0_in;
wire ts_local_pe_56_a1_out;
wire ts_local_pe_56_a1_oe;
wire ts_local_pe_56_a1_in;
wire ts_local_pe_56_a2_out;
wire ts_local_pe_56_a2_oe;
wire ts_local_pe_56_a2_in;
wire ts_local_pe_56_a3_out;
wire ts_local_pe_56_a3_oe;
wire ts_local_pe_56_a3_in;
wire ts_local_pe_56_a4_out;
wire ts_local_pe_56_a4_oe;
wire ts_local_pe_56_a4_in;
wire ts_local_pe_56_a5_out;
wire ts_local_pe_56_a5_oe;
wire ts_local_pe_56_a5_in;
wire ts_local_pe_56_a6_out;
wire ts_local_pe_56_a6_oe;
wire ts_local_pe_56_a6_in;
wire ts_local_pe_57_a0_out;
wire ts_local_pe_57_a0_oe;
wire ts_local_pe_57_a0_in;
wire ts_local_pe_57_a1_out;
wire ts_local_pe_57_a1_oe;
wire ts_local_pe_57_a1_in;
wire ts_local_pe_57_a2_out;
wire ts_local_pe_57_a2_oe;
wire ts_local_pe_57_a2_in;
wire ts_local_pe_57_a3_out;
wire ts_local_pe_57_a3_oe;
wire ts_local_pe_57_a3_in;
wire ts_local_pe_57_a4_out;
wire ts_local_pe_57_a4_oe;
wire ts_local_pe_57_a4_in;
wire ts_local_pe_57_a5_out;
wire ts_local_pe_57_a5_oe;
wire ts_local_pe_57_a5_in;
wire ts_local_pe_57_a6_out;
wire ts_local_pe_57_a6_oe;
wire ts_local_pe_57_a6_in;
wire ts_local_pe_58_a0_out;
wire ts_local_pe_58_a0_oe;
wire ts_local_pe_58_a0_in;
wire ts_local_pe_58_a1_out;
wire ts_local_pe_58_a1_oe;
wire ts_local_pe_58_a1_in;
wire ts_local_pe_58_a2_out;
wire ts_local_pe_58_a2_oe;
wire ts_local_pe_58_a2_in;
wire ts_local_pe_58_a3_out;
wire ts_local_pe_58_a3_oe;
wire ts_local_pe_58_a3_in;
wire ts_local_pe_58_a4_out;
wire ts_local_pe_58_a4_oe;
wire ts_local_pe_58_a4_in;
wire ts_local_pe_58_a5_out;
wire ts_local_pe_58_a5_oe;
wire ts_local_pe_58_a5_in;
wire ts_local_pe_58_a6_out;
wire ts_local_pe_58_a6_oe;
wire ts_local_pe_58_a6_in;
wire ts_local_pe_59_a0_out;
wire ts_local_pe_59_a0_oe;
wire ts_local_pe_59_a0_in;
wire ts_local_pe_59_a1_out;
wire ts_local_pe_59_a1_oe;
wire ts_local_pe_59_a1_in;
wire ts_local_pe_59_a2_out;
wire ts_local_pe_59_a2_oe;
wire ts_local_pe_59_a2_in;
wire ts_local_pe_59_a3_out;
wire ts_local_pe_59_a3_oe;
wire ts_local_pe_59_a3_in;
wire ts_local_pe_59_a4_out;
wire ts_local_pe_59_a4_oe;
wire ts_local_pe_59_a4_in;
wire ts_local_pe_59_a5_out;
wire ts_local_pe_59_a5_oe;
wire ts_local_pe_59_a5_in;
wire ts_local_pe_59_a6_out;
wire ts_local_pe_59_a6_oe;
wire ts_local_pe_59_a6_in;
wire ts_local_pe_60_a0_out;
wire ts_local_pe_60_a0_oe;
wire ts_local_pe_60_a0_in;
wire ts_local_pe_60_a1_out;
wire ts_local_pe_60_a1_oe;
wire ts_local_pe_60_a1_in;
wire ts_local_pe_60_a2_out;
wire ts_local_pe_60_a2_oe;
wire ts_local_pe_60_a2_in;
wire ts_local_pe_60_a3_out;
wire ts_local_pe_60_a3_oe;
wire ts_local_pe_60_a3_in;
wire ts_local_pe_60_a4_out;
wire ts_local_pe_60_a4_oe;
wire ts_local_pe_60_a4_in;
wire ts_local_pe_60_a5_out;
wire ts_local_pe_60_a5_oe;
wire ts_local_pe_60_a5_in;
wire ts_local_pe_60_a6_out;
wire ts_local_pe_60_a6_oe;
wire ts_local_pe_60_a6_in;
wire ts_local_pe_61_a0_out;
wire ts_local_pe_61_a0_oe;
wire ts_local_pe_61_a0_in;
wire ts_local_pe_61_a1_out;
wire ts_local_pe_61_a1_oe;
wire ts_local_pe_61_a1_in;
wire ts_local_pe_61_a2_out;
wire ts_local_pe_61_a2_oe;
wire ts_local_pe_61_a2_in;
wire ts_local_pe_61_a3_out;
wire ts_local_pe_61_a3_oe;
wire ts_local_pe_61_a3_in;
wire ts_local_pe_61_a4_out;
wire ts_local_pe_61_a4_oe;
wire ts_local_pe_61_a4_in;
wire ts_local_pe_61_a5_out;
wire ts_local_pe_61_a5_oe;
wire ts_local_pe_61_a5_in;
wire ts_local_pe_61_a6_out;
wire ts_local_pe_61_a6_oe;
wire ts_local_pe_61_a6_in;
wire ts_local_pe_62_a0_out;
wire ts_local_pe_62_a0_oe;
wire ts_local_pe_62_a0_in;
wire ts_local_pe_62_a1_out;
wire ts_local_pe_62_a1_oe;
wire ts_local_pe_62_a1_in;
wire ts_local_pe_62_a2_out;
wire ts_local_pe_62_a2_oe;
wire ts_local_pe_62_a2_in;
wire ts_local_pe_62_a3_out;
wire ts_local_pe_62_a3_oe;
wire ts_local_pe_62_a3_in;
wire ts_local_pe_62_a4_out;
wire ts_local_pe_62_a4_oe;
wire ts_local_pe_62_a4_in;
wire ts_local_pe_62_a5_out;
wire ts_local_pe_62_a5_oe;
wire ts_local_pe_62_a5_in;
wire ts_local_pe_62_a6_out;
wire ts_local_pe_62_a6_oe;
wire ts_local_pe_62_a6_in;
wire ts_local_pe_63_a0_out;
wire ts_local_pe_63_a0_oe;
wire ts_local_pe_63_a0_in;
wire ts_local_pe_63_a1_out;
wire ts_local_pe_63_a1_oe;
wire ts_local_pe_63_a1_in;
wire ts_local_pe_63_a2_out;
wire ts_local_pe_63_a2_oe;
wire ts_local_pe_63_a2_in;
wire ts_local_pe_63_a3_out;
wire ts_local_pe_63_a3_oe;
wire ts_local_pe_63_a3_in;
wire ts_local_pe_63_a4_out;
wire ts_local_pe_63_a4_oe;
wire ts_local_pe_63_a4_in;
wire ts_local_pe_63_a5_out;
wire ts_local_pe_63_a5_oe;
wire ts_local_pe_63_a5_in;
wire ts_local_pe_63_a6_out;
wire ts_local_pe_63_a6_oe;
wire ts_local_pe_63_a6_in;
wire ts_local_pe_64_a0_out;
wire ts_local_pe_64_a0_oe;
wire ts_local_pe_64_a0_in;
wire ts_local_pe_64_a1_out;
wire ts_local_pe_64_a1_oe;
wire ts_local_pe_64_a1_in;
wire ts_local_pe_64_a2_out;
wire ts_local_pe_64_a2_oe;
wire ts_local_pe_64_a2_in;
wire ts_local_pe_64_a3_out;
wire ts_local_pe_64_a3_oe;
wire ts_local_pe_64_a3_in;
wire ts_local_pe_64_a4_out;
wire ts_local_pe_64_a4_oe;
wire ts_local_pe_64_a4_in;
wire ts_local_pe_64_a5_out;
wire ts_local_pe_64_a5_oe;
wire ts_local_pe_64_a5_in;
wire ts_local_pe_64_a6_out;
wire ts_local_pe_64_a6_oe;
wire ts_local_pe_64_a6_in;
wire ts_local_pe_65_a0_out;
wire ts_local_pe_65_a0_oe;
wire ts_local_pe_65_a0_in;
wire ts_local_pe_65_a1_out;
wire ts_local_pe_65_a1_oe;
wire ts_local_pe_65_a1_in;
wire ts_local_pe_65_a2_out;
wire ts_local_pe_65_a2_oe;
wire ts_local_pe_65_a2_in;
wire ts_local_pe_65_a3_out;
wire ts_local_pe_65_a3_oe;
wire ts_local_pe_65_a3_in;
wire ts_local_pe_65_a4_out;
wire ts_local_pe_65_a4_oe;
wire ts_local_pe_65_a4_in;
wire ts_local_pe_65_a5_out;
wire ts_local_pe_65_a5_oe;
wire ts_local_pe_65_a5_in;
wire ts_local_pe_65_a6_out;
wire ts_local_pe_65_a6_oe;
wire ts_local_pe_65_a6_in;
wire ts_local_pe_66_a0_out;
wire ts_local_pe_66_a0_oe;
wire ts_local_pe_66_a0_in;
wire ts_local_pe_66_a1_out;
wire ts_local_pe_66_a1_oe;
wire ts_local_pe_66_a1_in;
wire ts_local_pe_66_a2_out;
wire ts_local_pe_66_a2_oe;
wire ts_local_pe_66_a2_in;
wire ts_local_pe_66_a3_out;
wire ts_local_pe_66_a3_oe;
wire ts_local_pe_66_a3_in;
wire ts_local_pe_66_a4_out;
wire ts_local_pe_66_a4_oe;
wire ts_local_pe_66_a4_in;
wire ts_local_pe_66_a5_out;
wire ts_local_pe_66_a5_oe;
wire ts_local_pe_66_a5_in;
wire ts_local_pe_66_a6_out;
wire ts_local_pe_66_a6_oe;
wire ts_local_pe_66_a6_in;
wire ts_local_pe_67_a0_out;
wire ts_local_pe_67_a0_oe;
wire ts_local_pe_67_a0_in;
wire ts_local_pe_67_a1_out;
wire ts_local_pe_67_a1_oe;
wire ts_local_pe_67_a1_in;
wire ts_local_pe_67_a2_out;
wire ts_local_pe_67_a2_oe;
wire ts_local_pe_67_a2_in;
wire ts_local_pe_67_a3_out;
wire ts_local_pe_67_a3_oe;
wire ts_local_pe_67_a3_in;
wire ts_local_pe_67_a4_out;
wire ts_local_pe_67_a4_oe;
wire ts_local_pe_67_a4_in;
wire ts_local_pe_67_a5_out;
wire ts_local_pe_67_a5_oe;
wire ts_local_pe_67_a5_in;
wire ts_local_pe_67_a6_out;
wire ts_local_pe_67_a6_oe;
wire ts_local_pe_67_a6_in;
wire ts_local_pe_68_a0_out;
wire ts_local_pe_68_a0_oe;
wire ts_local_pe_68_a0_in;
wire ts_local_pe_68_a1_out;
wire ts_local_pe_68_a1_oe;
wire ts_local_pe_68_a1_in;
wire ts_local_pe_68_a2_out;
wire ts_local_pe_68_a2_oe;
wire ts_local_pe_68_a2_in;
wire ts_local_pe_68_a3_out;
wire ts_local_pe_68_a3_oe;
wire ts_local_pe_68_a3_in;
wire ts_local_pe_68_a4_out;
wire ts_local_pe_68_a4_oe;
wire ts_local_pe_68_a4_in;
wire ts_local_pe_68_a5_out;
wire ts_local_pe_68_a5_oe;
wire ts_local_pe_68_a5_in;
wire ts_local_pe_68_a6_out;
wire ts_local_pe_68_a6_oe;
wire ts_local_pe_68_a6_in;
wire ts_local_pe_69_a0_out;
wire ts_local_pe_69_a0_oe;
wire ts_local_pe_69_a0_in;
wire ts_local_pe_69_a1_out;
wire ts_local_pe_69_a1_oe;
wire ts_local_pe_69_a1_in;
wire ts_local_pe_69_a2_out;
wire ts_local_pe_69_a2_oe;
wire ts_local_pe_69_a2_in;
wire ts_local_pe_69_a3_out;
wire ts_local_pe_69_a3_oe;
wire ts_local_pe_69_a3_in;
wire ts_local_pe_69_a4_out;
wire ts_local_pe_69_a4_oe;
wire ts_local_pe_69_a4_in;
wire ts_local_pe_69_a5_out;
wire ts_local_pe_69_a5_oe;
wire ts_local_pe_69_a5_in;
wire ts_local_pe_69_a6_out;
wire ts_local_pe_69_a6_oe;
wire ts_local_pe_69_a6_in;
wire ts_local_pe_70_a0_out;
wire ts_local_pe_70_a0_oe;
wire ts_local_pe_70_a0_in;
wire ts_local_pe_70_a1_out;
wire ts_local_pe_70_a1_oe;
wire ts_local_pe_70_a1_in;
wire ts_local_pe_70_a2_out;
wire ts_local_pe_70_a2_oe;
wire ts_local_pe_70_a2_in;
wire ts_local_pe_70_a3_out;
wire ts_local_pe_70_a3_oe;
wire ts_local_pe_70_a3_in;
wire ts_local_pe_70_a4_out;
wire ts_local_pe_70_a4_oe;
wire ts_local_pe_70_a4_in;
wire ts_local_pe_70_a5_out;
wire ts_local_pe_70_a5_oe;
wire ts_local_pe_70_a5_in;
wire ts_local_pe_70_a6_out;
wire ts_local_pe_70_a6_oe;
wire ts_local_pe_70_a6_in;
wire ts_local_pe_71_a0_out;
wire ts_local_pe_71_a0_oe;
wire ts_local_pe_71_a0_in;
wire ts_local_pe_71_a1_out;
wire ts_local_pe_71_a1_oe;
wire ts_local_pe_71_a1_in;
wire ts_local_pe_71_a2_out;
wire ts_local_pe_71_a2_oe;
wire ts_local_pe_71_a2_in;
wire ts_local_pe_72_a0_out;
wire ts_local_pe_72_a0_oe;
wire ts_local_pe_72_a0_in;
wire ts_local_pe_72_a1_out;
wire ts_local_pe_72_a1_oe;
wire ts_local_pe_72_a1_in;
wire ts_local_pe_72_a2_out;
wire ts_local_pe_72_a2_oe;
wire ts_local_pe_72_a2_in;
wire ts_local_pe_73_a0_out;
wire ts_local_pe_73_a0_oe;
wire ts_local_pe_73_a0_in;
wire ts_local_pe_73_a1_out;
wire ts_local_pe_73_a1_oe;
wire ts_local_pe_73_a1_in;
wire ts_local_pe_73_a2_out;
wire ts_local_pe_73_a2_oe;
wire ts_local_pe_73_a2_in;
wire ts_local_pe_74_a0_out;
wire ts_local_pe_74_a0_oe;
wire ts_local_pe_74_a0_in;
wire ts_local_pe_74_a1_out;
wire ts_local_pe_74_a1_oe;
wire ts_local_pe_74_a1_in;
wire ts_local_pe_74_a2_out;
wire ts_local_pe_74_a2_oe;
wire ts_local_pe_74_a2_in;
wire ts_local_pe_75_a0_out;
wire ts_local_pe_75_a0_oe;
wire ts_local_pe_75_a0_in;
wire ts_local_pe_75_a1_out;
wire ts_local_pe_75_a1_oe;
wire ts_local_pe_75_a1_in;
wire ts_local_pe_75_a2_out;
wire ts_local_pe_75_a2_oe;
wire ts_local_pe_75_a2_in;
wire ts_local_pe_76_a0_out;
wire ts_local_pe_76_a0_oe;
wire ts_local_pe_76_a0_in;
wire ts_local_pe_76_a1_out;
wire ts_local_pe_76_a1_oe;
wire ts_local_pe_76_a1_in;
wire ts_local_pe_76_a2_out;
wire ts_local_pe_76_a2_oe;
wire ts_local_pe_76_a2_in;
wire ts_local_pe_77_a0_out;
wire ts_local_pe_77_a0_oe;
wire ts_local_pe_77_a0_in;
wire ts_local_pe_77_a1_out;
wire ts_local_pe_77_a1_oe;
wire ts_local_pe_77_a1_in;
wire ts_local_pe_78_a0_out;
wire ts_local_pe_78_a0_oe;
wire ts_local_pe_78_a0_in;
wire ts_local_pe_78_a1_out;
wire ts_local_pe_78_a1_oe;
wire ts_local_pe_78_a1_in;
wire ts_local_pe_79_a0_out;
wire ts_local_pe_79_a0_oe;
wire ts_local_pe_79_a0_in;
wire ts_local_pe_79_a1_out;
wire ts_local_pe_79_a1_oe;
wire ts_local_pe_79_a1_in;
wire ts_local_pe_80_a0_out;
wire ts_local_pe_80_a0_oe;
wire ts_local_pe_80_a0_in;
wire ts_local_pe_80_a1_out;
wire ts_local_pe_80_a1_oe;
wire ts_local_pe_80_a1_in;
wire ts_local_pe_81_a0_out;
wire ts_local_pe_81_a0_oe;
wire ts_local_pe_81_a0_in;
wire ts_local_pe_81_a1_out;
wire ts_local_pe_81_a1_oe;
wire ts_local_pe_81_a1_in;
wire ts_local_pe_82_a0_out;
wire ts_local_pe_82_a0_oe;
wire ts_local_pe_82_a0_in;
wire ts_local_pe_82_a1_out;
wire ts_local_pe_82_a1_oe;
wire ts_local_pe_82_a1_in;
wire ts_local_pe_82_a2_out;
wire ts_local_pe_82_a2_oe;
wire ts_local_pe_82_a2_in;
wire ts_local_pe_83_a0_out;
wire ts_local_pe_83_a0_oe;
wire ts_local_pe_83_a0_in;
wire ts_local_pe_83_a1_out;
wire ts_local_pe_83_a1_oe;
wire ts_local_pe_83_a1_in;
wire ts_local_pe_83_a2_out;
wire ts_local_pe_83_a2_oe;
wire ts_local_pe_83_a2_in;
wire ts_local_pe_84_a0_out;
wire ts_local_pe_84_a0_oe;
wire ts_local_pe_84_a0_in;
wire ts_local_pe_84_a1_out;
wire ts_local_pe_84_a1_oe;
wire ts_local_pe_84_a1_in;
wire ts_local_pe_84_a2_out;
wire ts_local_pe_84_a2_oe;
wire ts_local_pe_84_a2_in;
wire ts_local_pe_85_a0_out;
wire ts_local_pe_85_a0_oe;
wire ts_local_pe_85_a0_in;
wire ts_local_pe_85_a1_out;
wire ts_local_pe_85_a1_oe;
wire ts_local_pe_85_a1_in;
wire ts_local_pe_85_a2_out;
wire ts_local_pe_85_a2_oe;
wire ts_local_pe_85_a2_in;
wire ts_local_pe_86_a0_out;
wire ts_local_pe_86_a0_oe;
wire ts_local_pe_86_a0_in;
wire ts_local_pe_86_a1_out;
wire ts_local_pe_86_a1_oe;
wire ts_local_pe_86_a1_in;
wire ts_local_pe_86_a2_out;
wire ts_local_pe_86_a2_oe;
wire ts_local_pe_86_a2_in;
wire ts_local_pe_87_a0_out;
wire ts_local_pe_87_a0_oe;
wire ts_local_pe_87_a0_in;
wire ts_local_pe_87_a1_out;
wire ts_local_pe_87_a1_oe;
wire ts_local_pe_87_a1_in;
wire ts_local_pe_88_a0_out;
wire ts_local_pe_88_a0_oe;
wire ts_local_pe_88_a0_in;
wire ts_local_pe_88_a1_out;
wire ts_local_pe_88_a1_oe;
wire ts_local_pe_88_a1_in;
wire ts_local_pe_89_a0_out;
wire ts_local_pe_89_a0_oe;
wire ts_local_pe_89_a0_in;
wire ts_local_pe_89_a1_out;
wire ts_local_pe_89_a1_oe;
wire ts_local_pe_89_a1_in;
wire ts_local_pe_90_a0_out;
wire ts_local_pe_90_a0_oe;
wire ts_local_pe_90_a0_in;
wire ts_local_pe_90_a1_out;
wire ts_local_pe_90_a1_oe;
wire ts_local_pe_90_a1_in;
wire ts_local_pe_91_a0_out;
wire ts_local_pe_91_a0_oe;
wire ts_local_pe_91_a0_in;
wire ts_local_pe_91_a1_out;
wire ts_local_pe_91_a1_oe;
wire ts_local_pe_91_a1_in;
wire ts_local_pe_92_a0_out;
wire ts_local_pe_92_a0_oe;
wire ts_local_pe_92_a0_in;
wire ts_local_pe_92_a1_out;
wire ts_local_pe_92_a1_oe;
wire ts_local_pe_92_a1_in;
wire ts_local_pe_93_a0_out;
wire ts_local_pe_93_a0_oe;
wire ts_local_pe_93_a0_in;
wire ts_local_pe_93_a1_out;
wire ts_local_pe_93_a1_oe;
wire ts_local_pe_93_a1_in;
wire ts_local_pe_94_a0_out;
wire ts_local_pe_94_a0_oe;
wire ts_local_pe_94_a0_in;
wire ts_local_pe_94_a1_out;
wire ts_local_pe_94_a1_oe;
wire ts_local_pe_94_a1_in;
wire ts_local_pe_95_a0_out;
wire ts_local_pe_95_a0_oe;
wire ts_local_pe_95_a0_in;
wire ts_local_pe_95_a1_out;
wire ts_local_pe_95_a1_oe;
wire ts_local_pe_95_a1_in;
wire ts_local_pe_96_a0_out;
wire ts_local_pe_96_a0_oe;
wire ts_local_pe_96_a0_in;
wire ts_local_pe_96_a1_out;
wire ts_local_pe_96_a1_oe;
wire ts_local_pe_96_a1_in;
wire ts_local_pe_97_a0_out;
wire ts_local_pe_97_a0_oe;
wire ts_local_pe_97_a0_in;
wire ts_local_pe_97_a1_out;
wire ts_local_pe_97_a1_oe;
wire ts_local_pe_97_a1_in;
wire ts_local_pe_98_a0_out;
wire ts_local_pe_98_a0_oe;
wire ts_local_pe_98_a0_in;
wire ts_local_pe_98_a1_out;
wire ts_local_pe_98_a1_oe;
wire ts_local_pe_98_a1_in;
wire ts_local_pe_99_a0_out;
wire ts_local_pe_99_a0_oe;
wire ts_local_pe_99_a0_in;
wire ts_local_pe_99_a1_out;
wire ts_local_pe_99_a1_oe;
wire ts_local_pe_99_a1_in;
wire ts_local_pe_100_a0_out;
wire ts_local_pe_100_a0_oe;
wire ts_local_pe_100_a0_in;
wire ts_local_pe_100_a1_out;
wire ts_local_pe_100_a1_oe;
wire ts_local_pe_100_a1_in;
wire ts_local_pe_101_a0_out;
wire ts_local_pe_101_a0_oe;
wire ts_local_pe_101_a0_in;
wire ts_local_pe_101_a1_out;
wire ts_local_pe_101_a1_oe;
wire ts_local_pe_101_a1_in;
wire ts_local_pe_102_a0_out;
wire ts_local_pe_102_a0_oe;
wire ts_local_pe_102_a0_in;
wire ts_local_pe_102_a1_out;
wire ts_local_pe_102_a1_oe;
wire ts_local_pe_102_a1_in;

// DSP.NET (66) - reset\[0] : nivu3
assign reset_n_0 = reset_n;

// DSP.NET (67) - reset\[1-7] : nivu
assign reset_n_1 = reset_n;
assign reset_n_2 = reset_n;
assign reset_n_3 = reset_n;
assign reset_n_4 = reset_n;
assign reset_n_5 = reset_n;
assign reset_n_6 = reset_n;
assign reset_n_7 = reset_n;

// DSP.NET (70) - clk[1] : bu33ip7c
assign clk_1 = clk;

// DSP.NET (71) - clk[2] : bu36da3m
assign clk_2 = clk;

// DSP.NET (72) - clk[3-5] : bu33ip7c
assign clk_3 = clk;
assign clk_4 = clk;
assign clk_5 = clk;

// DSP.NET (73) - clk[6] : bu36b52e
assign clk_6 = clk;

// DSP.NET (74) - clk[7-8] : bu36b531
assign clk_7 = clk;
assign clk_8 = clk;

// DSP.NET (75) - tlw[0-2] : nivu
assign tlw_0 = tlw;
assign tlw_1 = tlw;
assign tlw_2 = tlw;

// DSP.NET (77) - io_addr : join
assign io_addr[0] = ima_0;
assign io_addr[1] = ima_1;
assign io_addr[2] = ima_2;
assign io_addr[3] = ima_3;
assign io_addr[4] = ima_4;
assign io_addr[5] = ima_5;
assign io_addr[6] = ima_6;
assign io_addr[7] = ima_7;
assign io_addr[8] = ima_8;
assign io_addr[9] = ima_9;
assign io_addr[10] = ima_10;
assign io_addr[11] = ima_11;
assign io_addr[12] = ima_12;
assign io_addr[13] = ima_13;
assign io_addr[14] = ima_14;
assign io_addr[15] = ima_15;

// DSP.NET (78) - dr[0-15] : join_bus
assign dr_0_out = dread_out[0];
assign dr_0_oe = dread_oe[0];
assign dread_in[0] = dr_0_in;
assign dr_1_out = dread_out[1];
assign dr_1_oe = dread_oe[1];
assign dread_in[1] = dr_1_in;
assign dr_2_out = dread_out[2];
assign dr_2_oe = dread_oe[2];
assign dread_in[2] = dr_2_in;
assign dr_3_out = dread_out[3];
assign dr_3_oe = dread_oe[3];
assign dread_in[3] = dr_3_in;
assign dr_4_out = dread_out[4];
assign dr_4_oe = dread_oe[4];
assign dread_in[4] = dr_4_in;
assign dr_5_out = dread_out[5];
assign dr_5_oe = dread_oe[5];
assign dread_in[5] = dr_5_in;
assign dr_6_out = dread_out[6];
assign dr_6_oe = dread_oe[6];
assign dread_in[6] = dr_6_in;
assign dr_7_out = dread_out[7];
assign dr_7_oe = dread_oe[7];
assign dread_in[7] = dr_7_in;
assign dr_8_out = dread_out[8];
assign dr_8_oe = dread_oe[8];
assign dread_in[8] = dr_8_in;
assign dr_9_out = dread_out[9];
assign dr_9_oe = dread_oe[9];
assign dread_in[9] = dr_9_in;
assign dr_10_out = dread_out[10];
assign dr_10_oe = dread_oe[10];
assign dread_in[10] = dr_10_in;
assign dr_11_out = dread_out[11];
assign dr_11_oe = dread_oe[11];
assign dread_in[11] = dr_11_in;
assign dr_12_out = dread_out[12];
assign dr_12_oe = dread_oe[12];
assign dread_in[12] = dr_12_in;
assign dr_13_out = dread_out[13];
assign dr_13_oe = dread_oe[13];
assign dread_in[13] = dr_13_in;
assign dr_14_out = dread_out[14];
assign dr_14_oe = dread_oe[14];
assign dread_in[14] = dr_14_in;
assign dr_15_out = dread_out[15];
assign dr_15_oe = dread_oe[15];
assign dread_in[15] = dr_15_in;

// DSP.NET (80) - a[0-23] : join
assign a_0 = address[0];
assign a_1 = address[1];
assign a_2 = address[2];
assign a_3 = address[3];
assign a_4 = address[4];
assign a_5 = address[5];
assign a_6 = address[6];
assign a_7 = address[7];
assign a_8 = address[8];
assign a_9 = address[9];
assign a_10 = address[10];
assign a_11 = address[11];
assign a_12 = address[12];
assign a_13 = address[13];
assign a_14 = address[14];
assign a_15 = address[15];
assign a_16 = address[16];
assign a_17 = address[17];
assign a_18 = address[18];
assign a_19 = address[19];
assign a_20 = address[20];
assign a_21 = address[21];
assign a_22 = address[22];
assign a_23 = address[23];

// DSP.NET (81) - gpu_din[0-15] : join
assign gpu_din_0 = gpu_din[0];
assign gpu_din_1 = gpu_din[1];
assign gpu_din_2 = gpu_din[2];
assign gpu_din_3 = gpu_din[3];
assign gpu_din_4 = gpu_din[4];
assign gpu_din_5 = gpu_din[5];
assign gpu_din_6 = gpu_din[6];
assign gpu_din_7 = gpu_din[7];
assign gpu_din_8 = gpu_din[8];
assign gpu_din_9 = gpu_din[9];
assign gpu_din_10 = gpu_din[10];
assign gpu_din_11 = gpu_din[11];
assign gpu_din_12 = gpu_din[12];
assign gpu_din_13 = gpu_din[13];
assign gpu_din_14 = gpu_din[14];
assign gpu_din_15 = gpu_din[15];

// DSP.NET (83) - wddrv[0-31] : join
assign wdata_0 = load_data[0];
assign wdata_1 = load_data[1];
assign wdata_2 = load_data[2];
assign wdata_3 = load_data[3];
assign wdata_4 = load_data[4];
assign wdata_5 = load_data[5];
assign wdata_6 = load_data[6];
assign wdata_7 = load_data[7];
assign wdata_8 = load_data[8];
assign wdata_9 = load_data[9];
assign wdata_10 = load_data[10];
assign wdata_11 = load_data[11];
assign wdata_12 = load_data[12];
assign wdata_13 = load_data[13];
assign wdata_14 = load_data[14];
assign wdata_15 = load_data[15];
assign wdata_16 = load_data[16];
assign wdata_17 = load_data[17];
assign wdata_18 = load_data[18];
assign wdata_19 = load_data[19];
assign wdata_20 = load_data[20];
assign wdata_21 = load_data[21];
assign wdata_22 = load_data[22];
assign wdata_23 = load_data[23];
assign wdata_24 = load_data[24];
assign wdata_25 = load_data[25];
assign wdata_26 = load_data[26];
assign wdata_27 = load_data[27];
assign wdata_28 = load_data[28];
assign wdata_29 = load_data[29];
assign wdata_30 = load_data[30];
assign wdata_31 = load_data[31];

// DSP.NET (88) - eints[0-1] : fd1
fd1 eints_from_0_to_1_inst_0
(
	.q /* OUT */ (eints_n_0),
	.qn /* OUT */ (eints_0),
	.d /* IN */ (eint_n_0),
	.cp /* IN */ (clk_2),
	.sys_clk(sys_clk) // Generated
);
fd1 eints_from_0_to_1_inst_1
(
	.q /* OUT */ (eints_n_1),
	.qn /* OUT */ (eints_1),
	.d /* IN */ (eint_n_1),
	.cp /* IN */ (clk_2),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (89) - eintd[0-1] : fd1q
fd1q eintd_from_0_to_1_inst_0
(
	.q /* OUT */ (eintd_n_0),
	.d /* IN */ (eints_n_0),
	.cp /* IN */ (clk_2),
	.sys_clk(sys_clk) // Generated
);
fd1q eintd_from_0_to_1_inst_1
(
	.q /* OUT */ (eintd_n_1),
	.d /* IN */ (eints_n_1),
	.cp /* IN */ (clk_2),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (90) - gpu_irq[4-5] : an2
assign gpu_irq_4 = eints_0 & eintd_n_0;
assign gpu_irq_5 = eints_1 & eintd_n_1;

// DSP.NET (93) - gpu_irq[2-3] : join
assign gpu_irq_2 = tint_0;
assign gpu_irq_3 = tint_1;

// DSP.NET (96) - i2int\ : iv
assign i2int_n = ~i2int;

// DSP.NET (97) - i2intd\ : fd1q
fd1q i2intd_n_inst
(
	.q /* OUT */ (i2intd_n),
	.d /* IN */ (i2int_n),
	.cp /* IN */ (clk_2),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (98) - gpu_irq[1] : an2
assign gpu_irq_1 = i2int & i2intd_n;

// DSP.NET (102) - ins_exec : dsp_exec
j_dsp_exec ins_exec_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_39_a0_out,ts_local_pe_40_a0_out,ts_local_pe_41_a0_out,ts_local_pe_42_a0_out,ts_local_pe_43_a0_out,ts_local_pe_44_a0_out,ts_local_pe_45_a0_out,ts_local_pe_46_a0_out,ts_local_pe_47_a0_out,ts_local_pe_48_a0_out,ts_local_pe_49_a0_out,ts_local_pe_50_a0_out,ts_local_pe_51_a0_out,ts_local_pe_52_a0_out,ts_local_pe_53_a0_out,ts_local_pe_54_a0_out,ts_local_pe_55_a0_out,ts_local_pe_56_a0_out,ts_local_pe_57_a0_out,ts_local_pe_58_a0_out,ts_local_pe_59_a0_out,ts_local_pe_60_a0_out,ts_local_pe_61_a0_out,ts_local_pe_62_a0_out,ts_local_pe_63_a0_out,ts_local_pe_64_a0_out,ts_local_pe_65_a0_out,ts_local_pe_66_a0_out,ts_local_pe_67_a0_out,ts_local_pe_68_a0_out,ts_local_pe_69_a0_out,ts_local_pe_70_a0_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_39_a0_oe,ts_local_pe_40_a0_oe,ts_local_pe_41_a0_oe,ts_local_pe_42_a0_oe,ts_local_pe_43_a0_oe,ts_local_pe_44_a0_oe,ts_local_pe_45_a0_oe,ts_local_pe_46_a0_oe,ts_local_pe_47_a0_oe,ts_local_pe_48_a0_oe,ts_local_pe_49_a0_oe,ts_local_pe_50_a0_oe,ts_local_pe_51_a0_oe,ts_local_pe_52_a0_oe,ts_local_pe_53_a0_oe,ts_local_pe_54_a0_oe,ts_local_pe_55_a0_oe,ts_local_pe_56_a0_oe,ts_local_pe_57_a0_oe,ts_local_pe_58_a0_oe,ts_local_pe_59_a0_oe,ts_local_pe_60_a0_oe,ts_local_pe_61_a0_oe,ts_local_pe_62_a0_oe,ts_local_pe_63_a0_oe,ts_local_pe_64_a0_oe,ts_local_pe_65_a0_oe,ts_local_pe_66_a0_oe,ts_local_pe_67_a0_oe,ts_local_pe_68_a0_oe,ts_local_pe_69_a0_oe,ts_local_pe_70_a0_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_39_a0_in,ts_local_pe_40_a0_in,ts_local_pe_41_a0_in,ts_local_pe_42_a0_in,ts_local_pe_43_a0_in,ts_local_pe_44_a0_in,ts_local_pe_45_a0_in,ts_local_pe_46_a0_in,ts_local_pe_47_a0_in,ts_local_pe_48_a0_in,ts_local_pe_49_a0_in,ts_local_pe_50_a0_in,ts_local_pe_51_a0_in,ts_local_pe_52_a0_in,ts_local_pe_53_a0_in,ts_local_pe_54_a0_in,ts_local_pe_55_a0_in,ts_local_pe_56_a0_in,ts_local_pe_57_a0_in,ts_local_pe_58_a0_in,ts_local_pe_59_a0_in,ts_local_pe_60_a0_in,ts_local_pe_61_a0_in,ts_local_pe_62_a0_in,ts_local_pe_63_a0_in,ts_local_pe_64_a0_in,ts_local_pe_65_a0_in,ts_local_pe_66_a0_in,ts_local_pe_67_a0_in,ts_local_pe_68_a0_in,ts_local_pe_69_a0_in,ts_local_pe_70_a0_in}),
	.gpu_dout_3_out /* BUS */ (ts_local_pe_74_a0_out),
	.gpu_dout_3_oe /* BUS */ (ts_local_pe_74_a0_oe),
	.gpu_dout_3_in /* BUS */ (ts_local_pe_74_a0_in),
	.gpu_dout_4_out /* BUS */ (ts_local_pe_75_a0_out),
	.gpu_dout_4_oe /* BUS */ (ts_local_pe_75_a0_oe),
	.gpu_dout_4_in /* BUS */ (ts_local_pe_75_a0_in),
	.gpu_dout_5_out /* BUS */ (ts_local_pe_76_a0_out),
	.gpu_dout_5_oe /* BUS */ (ts_local_pe_76_a0_oe),
	.gpu_dout_5_in /* BUS */ (ts_local_pe_76_a0_in),
	.gpu_dout_6_out /* BUS */ (ts_local_pe_77_a0_out),
	.gpu_dout_6_oe /* BUS */ (ts_local_pe_77_a0_oe),
	.gpu_dout_6_in /* BUS */ (ts_local_pe_77_a0_in),
	.gpu_dout_7_out /* BUS */ (ts_local_pe_78_a0_out),
	.gpu_dout_7_oe /* BUS */ (ts_local_pe_78_a0_oe),
	.gpu_dout_7_in /* BUS */ (ts_local_pe_78_a0_in),
	.gpu_dout_8_out /* BUS */ (ts_local_pe_79_a0_out),
	.gpu_dout_8_oe /* BUS */ (ts_local_pe_79_a0_oe),
	.gpu_dout_8_in /* BUS */ (ts_local_pe_79_a0_in),
	.gpu_dout_9_out /* BUS */ (ts_local_pe_80_a0_out),
	.gpu_dout_9_oe /* BUS */ (ts_local_pe_80_a0_oe),
	.gpu_dout_9_in /* BUS */ (ts_local_pe_80_a0_in),
	.gpu_dout_10_out /* BUS */ (ts_local_pe_81_a0_out),
	.gpu_dout_10_oe /* BUS */ (ts_local_pe_81_a0_oe),
	.gpu_dout_10_in /* BUS */ (ts_local_pe_81_a0_in),
	.gpu_dout_11_out /* BUS */ (ts_local_pe_82_a0_out),
	.gpu_dout_11_oe /* BUS */ (ts_local_pe_82_a0_oe),
	.gpu_dout_11_in /* BUS */ (ts_local_pe_82_a0_in),
	.gpu_dout_12_out /* BUS */ (ts_local_pe_83_a0_out),
	.gpu_dout_12_oe /* BUS */ (ts_local_pe_83_a0_oe),
	.gpu_dout_12_in /* BUS */ (ts_local_pe_83_a0_in),
	.gpu_dout_13_out /* BUS */ (ts_local_pe_84_a0_out),
	.gpu_dout_13_oe /* BUS */ (ts_local_pe_84_a0_oe),
	.gpu_dout_13_in /* BUS */ (ts_local_pe_84_a0_in),
	.gpu_dout_14_out /* BUS */ (ts_local_pe_85_a0_out),
	.gpu_dout_14_oe /* BUS */ (ts_local_pe_85_a0_oe),
	.gpu_dout_14_in /* BUS */ (ts_local_pe_85_a0_in),
	.gpu_dout_16_out /* BUS */ (ts_local_pe_87_a0_out),
	.gpu_dout_16_oe /* BUS */ (ts_local_pe_87_a0_oe),
	.gpu_dout_16_in /* BUS */ (ts_local_pe_87_a0_in),
	.gpu_dout_17_out /* BUS */ (ts_local_pe_88_a0_out),
	.gpu_dout_17_oe /* BUS */ (ts_local_pe_88_a0_oe),
	.gpu_dout_17_in /* BUS */ (ts_local_pe_88_a0_in),
	.gpu_dout_18_out /* BUS */ (ts_local_pe_89_a0_out),
	.gpu_dout_18_oe /* BUS */ (ts_local_pe_89_a0_oe),
	.gpu_dout_18_in /* BUS */ (ts_local_pe_89_a0_in),
	.gpu_dout_19_out /* BUS */ (ts_local_pe_90_a0_out),
	.gpu_dout_19_oe /* BUS */ (ts_local_pe_90_a0_oe),
	.gpu_dout_19_in /* BUS */ (ts_local_pe_90_a0_in),
	.gpu_dout_20_out /* BUS */ (ts_local_pe_91_a0_out),
	.gpu_dout_20_oe /* BUS */ (ts_local_pe_91_a0_oe),
	.gpu_dout_20_in /* BUS */ (ts_local_pe_91_a0_in),
	.gpu_dout_21_out /* BUS */ (ts_local_pe_92_a0_out),
	.gpu_dout_21_oe /* BUS */ (ts_local_pe_92_a0_oe),
	.gpu_dout_21_in /* BUS */ (ts_local_pe_92_a0_in),
	.gpu_dout_22_out /* BUS */ (ts_local_pe_93_a0_out),
	.gpu_dout_22_oe /* BUS */ (ts_local_pe_93_a0_oe),
	.gpu_dout_22_in /* BUS */ (ts_local_pe_93_a0_in),
	.gpu_dout_23_out /* BUS */ (ts_local_pe_94_a0_out),
	.gpu_dout_23_oe /* BUS */ (ts_local_pe_94_a0_oe),
	.gpu_dout_23_in /* BUS */ (ts_local_pe_94_a0_in),
	.gpu_dout_24_out /* BUS */ (ts_local_pe_95_a0_out),
	.gpu_dout_24_oe /* BUS */ (ts_local_pe_95_a0_oe),
	.gpu_dout_24_in /* BUS */ (ts_local_pe_95_a0_in),
	.gpu_dout_25_out /* BUS */ (ts_local_pe_96_a0_out),
	.gpu_dout_25_oe /* BUS */ (ts_local_pe_96_a0_oe),
	.gpu_dout_25_in /* BUS */ (ts_local_pe_96_a0_in),
	.gpu_dout_26_out /* BUS */ (ts_local_pe_97_a0_out),
	.gpu_dout_26_oe /* BUS */ (ts_local_pe_97_a0_oe),
	.gpu_dout_26_in /* BUS */ (ts_local_pe_97_a0_in),
	.gpu_dout_27_out /* BUS */ (ts_local_pe_98_a0_out),
	.gpu_dout_27_oe /* BUS */ (ts_local_pe_98_a0_oe),
	.gpu_dout_27_in /* BUS */ (ts_local_pe_98_a0_in),
	.gpu_dout_28_out /* BUS */ (ts_local_pe_99_a0_out),
	.gpu_dout_28_oe /* BUS */ (ts_local_pe_99_a0_oe),
	.gpu_dout_28_in /* BUS */ (ts_local_pe_99_a0_in),
	.gpu_dout_29_out /* BUS */ (ts_local_pe_100_a0_out),
	.gpu_dout_29_oe /* BUS */ (ts_local_pe_100_a0_oe),
	.gpu_dout_29_in /* BUS */ (ts_local_pe_100_a0_in),
	.gpu_dout_30_out /* BUS */ (ts_local_pe_101_a0_out),
	.gpu_dout_30_oe /* BUS */ (ts_local_pe_101_a0_oe),
	.gpu_dout_30_in /* BUS */ (ts_local_pe_101_a0_in),
	.gpu_dout_31_out /* BUS */ (ts_local_pe_102_a0_out),
	.gpu_dout_31_oe /* BUS */ (ts_local_pe_102_a0_oe),
	.gpu_dout_31_in /* BUS */ (ts_local_pe_102_a0_in),
	.alufunc /* OUT */ ({alufunc[0],alufunc[1],alufunc[2]}),
	.brlmux_0 /* OUT */ (brlmux_0),
	.brlmux_1 /* OUT */ (brlmux_1),
	.dataddr /* OUT */ ({dataddr[0],dataddr[1],dataddr[2],dataddr[3],dataddr[4],dataddr[5],dataddr[6],dataddr[7],dataddr[8],dataddr[9],dataddr[10],dataddr[11],dataddr[12],dataddr[13],dataddr[14],dataddr[15],dataddr[16],dataddr[17],dataddr[18],dataddr[19],dataddr[20],dataddr[21],dataddr[22],dataddr[23]}),
	.datreq /* OUT */ (datreq),
	.datweb /* OUT */ (datwe),
	.datwe_raw /* OUT */ (datwe_raw),
	.div_instr /* OUT */ (div_instr),
	.div_start /* OUT */ (div_start),
	.dstanwi /* OUT */ ({dstanwi[0],dstanwi[1],dstanwi[2],dstanwi[3],dstanwi[4],dstanwi[5]}),
	.dstat /* OUT */ ({dstat[0],dstat[1],dstat[2],dstat[3],dstat[4],dstat[5]}),
	.dstdgate /* OUT */ (dstdgate),
	.dstrrd /* OUT */ (dstrrd),
	.dstrrdi /* OUT */ (dstrrdi),
	.dstrwr /* OUT */ (dstrwr),
	.dstrwri /* OUT */ (dstrwri),
	.dstwen /* OUT */ (dstwen),
	.exe /* OUT */ (exe),
	.flag_depend /* OUT */ (flag_depend),
	.flagld /* OUT */ (flagld),
	.immdata /* OUT */ ({immdata[0],immdata[1],immdata[2],immdata[3],immdata[4],immdata[5],immdata[6],immdata[7],immdata[8],immdata[9],immdata[10],immdata[11],immdata[12],immdata[13],immdata[14],immdata[15],immdata[16],immdata[17],immdata[18],immdata[19],immdata[20],immdata[21],immdata[22],immdata[23],immdata[24],immdata[25],immdata[26],immdata[27],immdata[28],immdata[29],immdata[30],immdata[31]}),
	.immld /* OUT */ (immld),
	.immwri /* OUT */ (immwri),
	.insexei /* OUT */ (insexei),
	.locden /* OUT */ (locden),
	.locsrc /* OUT */ ({locsrc[0],locsrc[1],locsrc[2],locsrc[3],locsrc[4],locsrc[5],locsrc[6],locsrc[7],locsrc[8],locsrc[9],locsrc[10],locsrc[11],locsrc[12],locsrc[13],locsrc[14],locsrc[15],locsrc[16],locsrc[17],locsrc[18],locsrc[19],locsrc[20],locsrc[21],locsrc[22],locsrc[23],locsrc[24],locsrc[25],locsrc[26],locsrc[27],locsrc[28],locsrc[29],locsrc[30],locsrc[31]}),
	.macop /* OUT */ (macop),
	.memrw /* OUT */ (memrw),
	.msize_0 /* OUT */ (msize_0),
	.msize_1 /* OUT */ (msize_1),
	.mtx_dover /* OUT */ (mtx_dover),
	.multsel /* OUT */ (multsel),
	.multsign /* OUT */ (multsign),
	.pabort /* OUT */ (pabort),
	.precomp /* OUT */ (precomp),
	.progaddr /* OUT */ ({progaddr[0],progaddr[1],progaddr[2],progaddr[3],progaddr[4],progaddr[5],progaddr[6],progaddr[7],progaddr[8],progaddr[9],progaddr[10],progaddr[11],progaddr[12],progaddr[13],progaddr[14],progaddr[15],progaddr[16],progaddr[17],progaddr[18],progaddr[19],progaddr[20],progaddr[21]}),
	.progreq /* OUT */ (progreq),
	.resld /* OUT */ (resld),
	.ressel_0 /* OUT */ (ressel_0),
	.ressel_1 /* OUT */ (ressel_1),
	.ressel_2 /* OUT */ (ressel_2),
	.reswr /* OUT */ (reswr),
	.rev_sub /* OUT */ (rev_sub),
	.satsz /* OUT */ (satsz),
	.srcrrd /* OUT */ (srcrrd),
	.single_stop /* OUT */ (single_stop),
	.srcanwi /* OUT */ ({srcanwi[0],srcanwi[1],srcanwi[2],srcanwi[3],srcanwi[4],srcanwi[5]}),
	.big_instr /* IN */ (big_instr),
	.carry_flag /* IN */ (carry_flag),
	.clk /* IN */ (clk_1),
	.clkb /* IN */ (clk_2),
	.tlw /* IN */ (tlw_0),
	.datack /* IN */ (datack),
	.dbgrd /* IN */ (dbgrd),
	.div_activei /* IN */ (div_activei),
	.external /* IN */ (external),
	.flagrd /* IN */ (flagrd),
	.flagwr /* IN */ (flagwr),
	.gate_active /* IN */ (gate_active),
	.go /* IN */ (go),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.gpu_irq_0 /* IN */ (gpu_irq_0),
	.gpu_irq_1 /* IN */ (gpu_irq_1),
	.gpu_irq_2 /* IN */ (gpu_irq_2),
	.gpu_irq_3 /* IN */ (gpu_irq_3),
	.gpu_irq_4 /* IN */ (gpu_irq_4),
	.gpu_irq_5 /* IN */ (gpu_irq_5),
	.mtxawr /* IN */ (mtxawr),
	.mtxcwr /* IN */ (mtxcwr),
	.nega_flag /* IN */ (nega_flag),
	.pcrd /* IN */ (pcrd),
	.pcwr /* IN */ (pcwr),
	.progack /* IN */ (progack),
	.resaddrldi /* IN */ (resaddrldi),
	.reset_n /* IN */ (reset_n_0),
	.result /* IN */ ({result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15],result[16],result[17],result[18],result[19],result[20],result[21],result[22],result[23],result[24],result[25],result[26],result[27],result[28],result[29],result[30],result[31]}),
	.sbwait /* IN */ (sbwait),
	.sdatreq /* IN */ (sdatreq),
	.single_go /* IN */ (single_go),
	.single_step /* IN */ (single_step),
	.srcaddrldi /* IN */ (srcaddrldi),
	.srcd /* IN */ ({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}),
	.srcdp /* IN */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.srcdpa /* IN */ ({srcdpa[0],srcdpa[1],srcdpa[2],srcdpa[3],srcdpa[4],srcdpa[5],srcdpa[6],srcdpa[7],srcdpa[8],srcdpa[9],srcdpa[10],srcdpa[11],srcdpa[12],srcdpa[13],srcdpa[14],srcdpa[15],srcdpa[16],srcdpa[17],srcdpa[18],srcdpa[19],srcdpa[20],srcdpa[21],srcdpa[22],srcdpa[23],srcdpa[24],srcdpa[25],srcdpa[26],srcdpa[27],srcdpa[28],srcdpa[29],srcdpa[30],srcdpa[31]}),
	.statrd /* IN */ (statrd),
	.zero_flag /* IN */ (zero_flag),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (124) - sboard : sboard
j_sboard sboard_inst
(
	.dsta /* OUT */ ({dsta[0],dsta[1],dsta[2],dsta[3],dsta[4],dsta[5]}),
	.sdatreq /* OUT */ (sdatreq),
	.dstrwen_n /* OUT */ (dstrwen_n),
	.dstwd /* OUT */ ({dstwd[0],dstwd[1],dstwd[2],dstwd[3],dstwd[4],dstwd[5],dstwd[6],dstwd[7],dstwd[8],dstwd[9],dstwd[10],dstwd[11],dstwd[12],dstwd[13],dstwd[14],dstwd[15],dstwd[16],dstwd[17],dstwd[18],dstwd[19],dstwd[20],dstwd[21],dstwd[22],dstwd[23],dstwd[24],dstwd[25],dstwd[26],dstwd[27],dstwd[28],dstwd[29],dstwd[30],dstwd[31]}),
	.resaddrldi /* OUT */ (resaddrldi),
	.sbwait /* OUT */ (sbwait),
	.srca /* OUT */ ({srca[0],srca[1],srca[2],srca[3],srca[4],srca[5]}),
	.srcaddrldi /* OUT */ (srcaddrldi),
	.srcrwen_n /* OUT */ (srcrwen_n),
	.srcwd /* OUT */ ({srcwd[0],srcwd[1],srcwd[2],srcwd[3],srcwd[4],srcwd[5],srcwd[6],srcwd[7],srcwd[8],srcwd[9],srcwd[10],srcwd[11],srcwd[12],srcwd[13],srcwd[14],srcwd[15],srcwd[16],srcwd[17],srcwd[18],srcwd[19],srcwd[20],srcwd[21],srcwd[22],srcwd[23],srcwd[24],srcwd[25],srcwd[26],srcwd[27],srcwd[28],srcwd[29],srcwd[30],srcwd[31]}),
	.clk /* IN */ (clk_3),
	.datack /* IN */ (datack),
	.datwe /* IN */ (datwe),
	.datwe_raw /* IN */ (datwe_raw),
	.del_xld /* IN */ (del_xld),
	.div_activei /* IN */ (div_activei),
	.div_instr /* IN */ (div_instr),
	.div_start /* IN */ (div_start),
	.dstanwi /* IN */ ({dstanwi[0],dstanwi[1],dstanwi[2],dstanwi[3],dstanwi[4],dstanwi[5]}),
	.dstat /* IN */ ({dstat[0],dstat[1],dstat[2],dstat[3],dstat[4],dstat[5]}),
	.dstrrd /* IN */ (dstrrd),
	.dstrrdi /* IN */ (dstrrdi),
	.dstrwr /* IN */ (dstrwr),
	.dstrwri /* IN */ (dstrwri),
	.dstwen /* IN */ (dstwen),
	.exe /* IN */ (exe),
	.flag_depend /* IN */ (flag_depend),
	.flagld /* IN */ (flagld),
	.gate_active /* IN */ (gate_active),
	.immdata /* IN */ ({immdata[0],immdata[1],immdata[2],immdata[3],immdata[4],immdata[5],immdata[6],immdata[7],immdata[8],immdata[9],immdata[10],immdata[11],immdata[12],immdata[13],immdata[14],immdata[15],immdata[16],immdata[17],immdata[18],immdata[19],immdata[20],immdata[21],immdata[22],immdata[23],immdata[24],immdata[25],immdata[26],immdata[27],immdata[28],immdata[29],immdata[30],immdata[31]}),
	.immld /* IN */ (immld),
	.immwri /* IN */ (immwri),
	.insexei /* IN */ (insexei),
	.load_data /* IN */ ({load_data[0],load_data[1],load_data[2],load_data[3],load_data[4],load_data[5],load_data[6],load_data[7],load_data[8],load_data[9],load_data[10],load_data[11],load_data[12],load_data[13],load_data[14],load_data[15],load_data[16],load_data[17],load_data[18],load_data[19],load_data[20],load_data[21],load_data[22],load_data[23],load_data[24],load_data[25],load_data[26],load_data[27],load_data[28],load_data[29],load_data[30],load_data[31]}),
	.mem_data /* IN */ ({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]}),
	.memrw /* IN */ (memrw),
	.mtx_dover /* IN */ (mtx_dover),
	.precomp /* IN */ (precomp),
	.quotient /* IN */ ({quotient[0],quotient[1],quotient[2],quotient[3],quotient[4],quotient[5],quotient[6],quotient[7],quotient[8],quotient[9],quotient[10],quotient[11],quotient[12],quotient[13],quotient[14],quotient[15],quotient[16],quotient[17],quotient[18],quotient[19],quotient[20],quotient[21],quotient[22],quotient[23],quotient[24],quotient[25],quotient[26],quotient[27],quotient[28],quotient[29],quotient[30],quotient[31]}),
	.reset_n /* IN */ (reset_n_1),
	.reswr /* IN */ (reswr),
	.result /* IN */ ({result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15],result[16],result[17],result[18],result[19],result[20],result[21],result[22],result[23],result[24],result[25],result[26],result[27],result[28],result[29],result[30],result[31]}),
	.srcanwi /* IN */ ({srcanwi[0],srcanwi[1],srcanwi[2],srcanwi[3],srcanwi[4],srcanwi[5]}),
	.srcdp /* IN */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.srcrrd /* IN */ (srcrrd),
	.xld_ready /* IN */ (xld_ready),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (139) - arith : dsp_arith
j_dsp_arith arith_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_39_a1_out,ts_local_pe_40_a1_out,ts_local_pe_41_a1_out,ts_local_pe_42_a1_out,ts_local_pe_43_a1_out,ts_local_pe_44_a1_out,ts_local_pe_45_a1_out,ts_local_pe_46_a1_out,ts_local_pe_47_a1_out,ts_local_pe_48_a1_out,ts_local_pe_49_a1_out,ts_local_pe_50_a1_out,ts_local_pe_51_a1_out,ts_local_pe_52_a1_out,ts_local_pe_53_a1_out,ts_local_pe_54_a1_out,ts_local_pe_55_a1_out,ts_local_pe_56_a1_out,ts_local_pe_57_a1_out,ts_local_pe_58_a1_out,ts_local_pe_59_a1_out,ts_local_pe_60_a1_out,ts_local_pe_61_a1_out,ts_local_pe_62_a1_out,ts_local_pe_63_a1_out,ts_local_pe_64_a1_out,ts_local_pe_65_a1_out,ts_local_pe_66_a1_out,ts_local_pe_67_a1_out,ts_local_pe_68_a1_out,ts_local_pe_69_a1_out,ts_local_pe_70_a1_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_39_a1_oe,ts_local_pe_40_a1_oe,ts_local_pe_41_a1_oe,ts_local_pe_42_a1_oe,ts_local_pe_43_a1_oe,ts_local_pe_44_a1_oe,ts_local_pe_45_a1_oe,ts_local_pe_46_a1_oe,ts_local_pe_47_a1_oe,ts_local_pe_48_a1_oe,ts_local_pe_49_a1_oe,ts_local_pe_50_a1_oe,ts_local_pe_51_a1_oe,ts_local_pe_52_a1_oe,ts_local_pe_53_a1_oe,ts_local_pe_54_a1_oe,ts_local_pe_55_a1_oe,ts_local_pe_56_a1_oe,ts_local_pe_57_a1_oe,ts_local_pe_58_a1_oe,ts_local_pe_59_a1_oe,ts_local_pe_60_a1_oe,ts_local_pe_61_a1_oe,ts_local_pe_62_a1_oe,ts_local_pe_63_a1_oe,ts_local_pe_64_a1_oe,ts_local_pe_65_a1_oe,ts_local_pe_66_a1_oe,ts_local_pe_67_a1_oe,ts_local_pe_68_a1_oe,ts_local_pe_69_a1_oe,ts_local_pe_70_a1_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_39_a1_in,ts_local_pe_40_a1_in,ts_local_pe_41_a1_in,ts_local_pe_42_a1_in,ts_local_pe_43_a1_in,ts_local_pe_44_a1_in,ts_local_pe_45_a1_in,ts_local_pe_46_a1_in,ts_local_pe_47_a1_in,ts_local_pe_48_a1_in,ts_local_pe_49_a1_in,ts_local_pe_50_a1_in,ts_local_pe_51_a1_in,ts_local_pe_52_a1_in,ts_local_pe_53_a1_in,ts_local_pe_54_a1_in,ts_local_pe_55_a1_in,ts_local_pe_56_a1_in,ts_local_pe_57_a1_in,ts_local_pe_58_a1_in,ts_local_pe_59_a1_in,ts_local_pe_60_a1_in,ts_local_pe_61_a1_in,ts_local_pe_62_a1_in,ts_local_pe_63_a1_in,ts_local_pe_64_a1_in,ts_local_pe_65_a1_in,ts_local_pe_66_a1_in,ts_local_pe_67_a1_in,ts_local_pe_68_a1_in,ts_local_pe_69_a1_in,ts_local_pe_70_a1_in}),
	.gpu_dout_0_out /* BUS */ (ts_local_pe_71_a0_out),
	.gpu_dout_0_oe /* BUS */ (ts_local_pe_71_a0_oe),
	.gpu_dout_0_in /* BUS */ (ts_local_pe_71_a0_in),
	.gpu_dout_1_out /* BUS */ (ts_local_pe_72_a0_out),
	.gpu_dout_1_oe /* BUS */ (ts_local_pe_72_a0_oe),
	.gpu_dout_1_in /* BUS */ (ts_local_pe_72_a0_in),
	.gpu_dout_2_out /* BUS */ (ts_local_pe_73_a0_out),
	.gpu_dout_2_oe /* BUS */ (ts_local_pe_73_a0_oe),
	.gpu_dout_2_in /* BUS */ (ts_local_pe_73_a0_in),
	.carry_flag /* OUT */ (carry_flag),
	.nega_flag /* OUT */ (nega_flag),
	.result /* OUT */ ({result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15],result[16],result[17],result[18],result[19],result[20],result[21],result[22],result[23],result[24],result[25],result[26],result[27],result[28],result[29],result[30],result[31]}),
	.zero_flag /* OUT */ (zero_flag),
	.accumrd /* IN */ (accumrd),
	.dstdp /* IN */ ({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]}),
	.srcdp /* IN */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.srcd_31 /* IN */ (srcd[31]),
	.alufunc /* IN */ ({alufunc[0],alufunc[1],alufunc[2]}),
	.brlmux_0 /* IN */ (brlmux_0),
	.brlmux_1 /* IN */ (brlmux_1),
	.clk /* IN */ (clk_4),
	.flagld /* IN */ (flagld),
	.flagrd /* IN */ (flagrd),
	.flagwr /* IN */ (flagwr),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.macop /* IN */ (macop),
	.modulowr /* IN */ (modulowr),
	.multsel /* IN */ (multsel),
	.multsign /* IN */ (multsign),
	.reset_n /* IN */ (reset_n_2),
	.resld /* IN */ (resld),
	.ressel_0 /* IN */ (ressel_0),
	.ressel_1 /* IN */ (ressel_1),
	.ressel_2 /* IN */ (ressel_2),
	.rev_sub /* IN */ (rev_sub),
	.satsz /* IN */ (satsz),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (148) - divide : divide
j_divide divide_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_39_a2_out,ts_local_pe_40_a2_out,ts_local_pe_41_a2_out,ts_local_pe_42_a2_out,ts_local_pe_43_a2_out,ts_local_pe_44_a2_out,ts_local_pe_45_a2_out,ts_local_pe_46_a2_out,ts_local_pe_47_a2_out,ts_local_pe_48_a2_out,ts_local_pe_49_a2_out,ts_local_pe_50_a2_out,ts_local_pe_51_a2_out,ts_local_pe_52_a2_out,ts_local_pe_53_a2_out,ts_local_pe_54_a2_out,ts_local_pe_55_a2_out,ts_local_pe_56_a2_out,ts_local_pe_57_a2_out,ts_local_pe_58_a2_out,ts_local_pe_59_a2_out,ts_local_pe_60_a2_out,ts_local_pe_61_a2_out,ts_local_pe_62_a2_out,ts_local_pe_63_a2_out,ts_local_pe_64_a2_out,ts_local_pe_65_a2_out,ts_local_pe_66_a2_out,ts_local_pe_67_a2_out,ts_local_pe_68_a2_out,ts_local_pe_69_a2_out,ts_local_pe_70_a2_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_39_a2_oe,ts_local_pe_40_a2_oe,ts_local_pe_41_a2_oe,ts_local_pe_42_a2_oe,ts_local_pe_43_a2_oe,ts_local_pe_44_a2_oe,ts_local_pe_45_a2_oe,ts_local_pe_46_a2_oe,ts_local_pe_47_a2_oe,ts_local_pe_48_a2_oe,ts_local_pe_49_a2_oe,ts_local_pe_50_a2_oe,ts_local_pe_51_a2_oe,ts_local_pe_52_a2_oe,ts_local_pe_53_a2_oe,ts_local_pe_54_a2_oe,ts_local_pe_55_a2_oe,ts_local_pe_56_a2_oe,ts_local_pe_57_a2_oe,ts_local_pe_58_a2_oe,ts_local_pe_59_a2_oe,ts_local_pe_60_a2_oe,ts_local_pe_61_a2_oe,ts_local_pe_62_a2_oe,ts_local_pe_63_a2_oe,ts_local_pe_64_a2_oe,ts_local_pe_65_a2_oe,ts_local_pe_66_a2_oe,ts_local_pe_67_a2_oe,ts_local_pe_68_a2_oe,ts_local_pe_69_a2_oe,ts_local_pe_70_a2_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_39_a2_in,ts_local_pe_40_a2_in,ts_local_pe_41_a2_in,ts_local_pe_42_a2_in,ts_local_pe_43_a2_in,ts_local_pe_44_a2_in,ts_local_pe_45_a2_in,ts_local_pe_46_a2_in,ts_local_pe_47_a2_in,ts_local_pe_48_a2_in,ts_local_pe_49_a2_in,ts_local_pe_50_a2_in,ts_local_pe_51_a2_in,ts_local_pe_52_a2_in,ts_local_pe_53_a2_in,ts_local_pe_54_a2_in,ts_local_pe_55_a2_in,ts_local_pe_56_a2_in,ts_local_pe_57_a2_in,ts_local_pe_58_a2_in,ts_local_pe_59_a2_in,ts_local_pe_60_a2_in,ts_local_pe_61_a2_in,ts_local_pe_62_a2_in,ts_local_pe_63_a2_in,ts_local_pe_64_a2_in,ts_local_pe_65_a2_in,ts_local_pe_66_a2_in,ts_local_pe_67_a2_in,ts_local_pe_68_a2_in,ts_local_pe_69_a2_in,ts_local_pe_70_a2_in}),
	.div_activei /* OUT */ (div_activei),
	.quotient /* OUT */ ({quotient[0],quotient[1],quotient[2],quotient[3],quotient[4],quotient[5],quotient[6],quotient[7],quotient[8],quotient[9],quotient[10],quotient[11],quotient[12],quotient[13],quotient[14],quotient[15],quotient[16],quotient[17],quotient[18],quotient[19],quotient[20],quotient[21],quotient[22],quotient[23],quotient[24],quotient[25],quotient[26],quotient[27],quotient[28],quotient[29],quotient[30],quotient[31]}),
	.clk /* IN */ (clk_5),
	.div_start /* IN */ (div_start),
	.divwr /* IN */ (divwr),
	.dstd /* IN */ ({dstd[0],dstd[1],dstd[2],dstd[3],dstd[4],dstd[5],dstd[6],dstd[7],dstd[8],dstd[9],dstd[10],dstd[11],dstd[12],dstd[13],dstd[14],dstd[15],dstd[16],dstd[17],dstd[18],dstd[19],dstd[20],dstd[21],dstd[22],dstd[23],dstd[24],dstd[25],dstd[26],dstd[27],dstd[28],dstd[29],dstd[30],dstd[31]}),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.remrd /* IN */ (remrd),
	.reset_n /* IN */ (reset_n_3),
	.srcd /* IN */ ({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (154) - registers : registers
j_registers registers_inst
(
	.srcd /* OUT */ ({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}),
	.srcdp /* OUT */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.srcdpa /* OUT */ ({srcdpa[0],srcdpa[1],srcdpa[2],srcdpa[3],srcdpa[4],srcdpa[5],srcdpa[6],srcdpa[7],srcdpa[8],srcdpa[9],srcdpa[10],srcdpa[11],srcdpa[12],srcdpa[13],srcdpa[14],srcdpa[15],srcdpa[16],srcdpa[17],srcdpa[18],srcdpa[19],srcdpa[20],srcdpa[21],srcdpa[22],srcdpa[23],srcdpa[24],srcdpa[25],srcdpa[26],srcdpa[27],srcdpa[28],srcdpa[29],srcdpa[30],srcdpa[31]}),
	.dstd /* OUT */ ({dstd[0],dstd[1],dstd[2],dstd[3],dstd[4],dstd[5],dstd[6],dstd[7],dstd[8],dstd[9],dstd[10],dstd[11],dstd[12],dstd[13],dstd[14],dstd[15],dstd[16],dstd[17],dstd[18],dstd[19],dstd[20],dstd[21],dstd[22],dstd[23],dstd[24],dstd[25],dstd[26],dstd[27],dstd[28],dstd[29],dstd[30],dstd[31]}),
	.dstdp /* OUT */ ({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]}),
	.clk /* IN */ (clk_6),
	.dsta /* IN */ ({dsta[0],dsta[1],dsta[2],dsta[3],dsta[4],dsta[5]}),
	.dstrwen_n /* IN */ (dstrwen_n),
	.dstwd /* IN */ ({dstwd[0],dstwd[1],dstwd[2],dstwd[3],dstwd[4],dstwd[5],dstwd[6],dstwd[7],dstwd[8],dstwd[9],dstwd[10],dstwd[11],dstwd[12],dstwd[13],dstwd[14],dstwd[15],dstwd[16],dstwd[17],dstwd[18],dstwd[19],dstwd[20],dstwd[21],dstwd[22],dstwd[23],dstwd[24],dstwd[25],dstwd[26],dstwd[27],dstwd[28],dstwd[29],dstwd[30],dstwd[31]}),
	.exe /* IN */ (exe),
	.locden /* IN */ (locden),
	.locsrc /* IN */ ({locsrc[0],locsrc[1],locsrc[2],locsrc[3],locsrc[4],locsrc[5],locsrc[6],locsrc[7],locsrc[8],locsrc[9],locsrc[10],locsrc[11],locsrc[12],locsrc[13],locsrc[14],locsrc[15],locsrc[16],locsrc[17],locsrc[18],locsrc[19],locsrc[20],locsrc[21],locsrc[22],locsrc[23],locsrc[24],locsrc[25],locsrc[26],locsrc[27],locsrc[28],locsrc[29],locsrc[30],locsrc[31]}),
	.mem_data /* IN */ ({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]}),
	.mtx_dover /* IN */ (mtx_dover),
	.srca /* IN */ ({srca[0],srca[1],srca[2],srca[3],srca[4],srca[5]}),
	.srcrwen_n /* IN */ (srcrwen_n),
	.srcwd /* IN */ ({srcwd[0],srcwd[1],srcwd[2],srcwd[3],srcwd[4],srcwd[5],srcwd[6],srcwd[7],srcwd[8],srcwd[9],srcwd[10],srcwd[11],srcwd[12],srcwd[13],srcwd[14],srcwd[15],srcwd[16],srcwd[17],srcwd[18],srcwd[19],srcwd[20],srcwd[21],srcwd[22],srcwd[23],srcwd[24],srcwd[25],srcwd[26],srcwd[27],srcwd[28],srcwd[29],srcwd[30],srcwd[31]}),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (161) - dsp_mem : dsp_mem
j_dsp_mem dsp_mem_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_39_a3_out,ts_local_pe_40_a3_out,ts_local_pe_41_a3_out,ts_local_pe_42_a3_out,ts_local_pe_43_a3_out,ts_local_pe_44_a3_out,ts_local_pe_45_a3_out,ts_local_pe_46_a3_out,ts_local_pe_47_a3_out,ts_local_pe_48_a3_out,ts_local_pe_49_a3_out,ts_local_pe_50_a3_out,ts_local_pe_51_a3_out,ts_local_pe_52_a3_out,ts_local_pe_53_a3_out,ts_local_pe_54_a3_out,ts_local_pe_55_a3_out,ts_local_pe_56_a3_out,ts_local_pe_57_a3_out,ts_local_pe_58_a3_out,ts_local_pe_59_a3_out,ts_local_pe_60_a3_out,ts_local_pe_61_a3_out,ts_local_pe_62_a3_out,ts_local_pe_63_a3_out,ts_local_pe_64_a3_out,ts_local_pe_65_a3_out,ts_local_pe_66_a3_out,ts_local_pe_67_a3_out,ts_local_pe_68_a3_out,ts_local_pe_69_a3_out,ts_local_pe_70_a3_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_39_a3_oe,ts_local_pe_40_a3_oe,ts_local_pe_41_a3_oe,ts_local_pe_42_a3_oe,ts_local_pe_43_a3_oe,ts_local_pe_44_a3_oe,ts_local_pe_45_a3_oe,ts_local_pe_46_a3_oe,ts_local_pe_47_a3_oe,ts_local_pe_48_a3_oe,ts_local_pe_49_a3_oe,ts_local_pe_50_a3_oe,ts_local_pe_51_a3_oe,ts_local_pe_52_a3_oe,ts_local_pe_53_a3_oe,ts_local_pe_54_a3_oe,ts_local_pe_55_a3_oe,ts_local_pe_56_a3_oe,ts_local_pe_57_a3_oe,ts_local_pe_58_a3_oe,ts_local_pe_59_a3_oe,ts_local_pe_60_a3_oe,ts_local_pe_61_a3_oe,ts_local_pe_62_a3_oe,ts_local_pe_63_a3_oe,ts_local_pe_64_a3_oe,ts_local_pe_65_a3_oe,ts_local_pe_66_a3_oe,ts_local_pe_67_a3_oe,ts_local_pe_68_a3_oe,ts_local_pe_69_a3_oe,ts_local_pe_70_a3_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_39_a3_in,ts_local_pe_40_a3_in,ts_local_pe_41_a3_in,ts_local_pe_42_a3_in,ts_local_pe_43_a3_in,ts_local_pe_44_a3_in,ts_local_pe_45_a3_in,ts_local_pe_46_a3_in,ts_local_pe_47_a3_in,ts_local_pe_48_a3_in,ts_local_pe_49_a3_in,ts_local_pe_50_a3_in,ts_local_pe_51_a3_in,ts_local_pe_52_a3_in,ts_local_pe_53_a3_in,ts_local_pe_54_a3_in,ts_local_pe_55_a3_in,ts_local_pe_56_a3_in,ts_local_pe_57_a3_in,ts_local_pe_58_a3_in,ts_local_pe_59_a3_in,ts_local_pe_60_a3_in,ts_local_pe_61_a3_in,ts_local_pe_62_a3_in,ts_local_pe_63_a3_in,ts_local_pe_64_a3_in,ts_local_pe_65_a3_in,ts_local_pe_66_a3_in,ts_local_pe_67_a3_in,ts_local_pe_68_a3_in,ts_local_pe_69_a3_in,ts_local_pe_70_a3_in}),
	.gpu_dout_0_out /* BUS */ (ts_local_pe_71_a1_out),
	.gpu_dout_0_oe /* BUS */ (ts_local_pe_71_a1_oe),
	.gpu_dout_0_in /* BUS */ (ts_local_pe_71_a1_in),
	.gpu_dout_1_out /* BUS */ (ts_local_pe_72_a1_out),
	.gpu_dout_1_oe /* BUS */ (ts_local_pe_72_a1_oe),
	.gpu_dout_1_in /* BUS */ (ts_local_pe_72_a1_in),
	.gpu_dout_2_out /* BUS */ (ts_local_pe_73_a1_out),
	.gpu_dout_2_oe /* BUS */ (ts_local_pe_73_a1_oe),
	.gpu_dout_2_in /* BUS */ (ts_local_pe_73_a1_in),
	.gpu_dout_3_out /* BUS */ (ts_local_pe_74_a1_out),
	.gpu_dout_3_oe /* BUS */ (ts_local_pe_74_a1_oe),
	.gpu_dout_3_in /* BUS */ (ts_local_pe_74_a1_in),
	.gpu_dout_4_out /* BUS */ (ts_local_pe_75_a1_out),
	.gpu_dout_4_oe /* BUS */ (ts_local_pe_75_a1_oe),
	.gpu_dout_4_in /* BUS */ (ts_local_pe_75_a1_in),
	.gpu_dout_5_out /* BUS */ (ts_local_pe_76_a1_out),
	.gpu_dout_5_oe /* BUS */ (ts_local_pe_76_a1_oe),
	.gpu_dout_5_in /* BUS */ (ts_local_pe_76_a1_in),
	.gpu_dout_6_out /* BUS */ (ts_local_pe_77_a1_out),
	.gpu_dout_6_oe /* BUS */ (ts_local_pe_77_a1_oe),
	.gpu_dout_6_in /* BUS */ (ts_local_pe_77_a1_in),
	.gpu_dout_7_out /* BUS */ (ts_local_pe_78_a1_out),
	.gpu_dout_7_oe /* BUS */ (ts_local_pe_78_a1_oe),
	.gpu_dout_7_in /* BUS */ (ts_local_pe_78_a1_in),
	.gpu_dout_8_out /* BUS */ (ts_local_pe_79_a1_out),
	.gpu_dout_8_oe /* BUS */ (ts_local_pe_79_a1_oe),
	.gpu_dout_8_in /* BUS */ (ts_local_pe_79_a1_in),
	.gpu_dout_9_out /* BUS */ (ts_local_pe_80_a1_out),
	.gpu_dout_9_oe /* BUS */ (ts_local_pe_80_a1_oe),
	.gpu_dout_9_in /* BUS */ (ts_local_pe_80_a1_in),
	.gpu_dout_10_out /* BUS */ (ts_local_pe_81_a1_out),
	.gpu_dout_10_oe /* BUS */ (ts_local_pe_81_a1_oe),
	.gpu_dout_10_in /* BUS */ (ts_local_pe_81_a1_in),
	.gpu_dout_11_out /* BUS */ (ts_local_pe_82_a1_out),
	.gpu_dout_11_oe /* BUS */ (ts_local_pe_82_a1_oe),
	.gpu_dout_11_in /* BUS */ (ts_local_pe_82_a1_in),
	.gpu_dout_12_out /* BUS */ (ts_local_pe_83_a1_out),
	.gpu_dout_12_oe /* BUS */ (ts_local_pe_83_a1_oe),
	.gpu_dout_12_in /* BUS */ (ts_local_pe_83_a1_in),
	.gpu_dout_13_out /* BUS */ (ts_local_pe_84_a1_out),
	.gpu_dout_13_oe /* BUS */ (ts_local_pe_84_a1_oe),
	.gpu_dout_13_in /* BUS */ (ts_local_pe_84_a1_in),
	.gpu_dout_14_out /* BUS */ (ts_local_pe_85_a1_out),
	.gpu_dout_14_oe /* BUS */ (ts_local_pe_85_a1_oe),
	.gpu_dout_14_in /* BUS */ (ts_local_pe_85_a1_in),
	.gpu_dout_15_out /* BUS */ (ts_local_pe_86_a0_out),
	.gpu_dout_15_oe /* BUS */ (ts_local_pe_86_a0_oe),
	.gpu_dout_15_in /* BUS */ (ts_local_pe_86_a0_in),
	.gpu_dout_16_out /* BUS */ (ts_local_pe_87_a1_out),
	.gpu_dout_16_oe /* BUS */ (ts_local_pe_87_a1_oe),
	.gpu_dout_16_in /* BUS */ (ts_local_pe_87_a1_in),
	.gpu_dout_17_out /* BUS */ (ts_local_pe_88_a1_out),
	.gpu_dout_17_oe /* BUS */ (ts_local_pe_88_a1_oe),
	.gpu_dout_17_in /* BUS */ (ts_local_pe_88_a1_in),
	.gpu_dout_18_out /* BUS */ (ts_local_pe_89_a1_out),
	.gpu_dout_18_oe /* BUS */ (ts_local_pe_89_a1_oe),
	.gpu_dout_18_in /* BUS */ (ts_local_pe_89_a1_in),
	.gpu_dout_19_out /* BUS */ (ts_local_pe_90_a1_out),
	.gpu_dout_19_oe /* BUS */ (ts_local_pe_90_a1_oe),
	.gpu_dout_19_in /* BUS */ (ts_local_pe_90_a1_in),
	.gpu_dout_20_out /* BUS */ (ts_local_pe_91_a1_out),
	.gpu_dout_20_oe /* BUS */ (ts_local_pe_91_a1_oe),
	.gpu_dout_20_in /* BUS */ (ts_local_pe_91_a1_in),
	.gpu_dout_21_out /* BUS */ (ts_local_pe_92_a1_out),
	.gpu_dout_21_oe /* BUS */ (ts_local_pe_92_a1_oe),
	.gpu_dout_21_in /* BUS */ (ts_local_pe_92_a1_in),
	.gpu_dout_22_out /* BUS */ (ts_local_pe_93_a1_out),
	.gpu_dout_22_oe /* BUS */ (ts_local_pe_93_a1_oe),
	.gpu_dout_22_in /* BUS */ (ts_local_pe_93_a1_in),
	.gpu_dout_23_out /* BUS */ (ts_local_pe_94_a1_out),
	.gpu_dout_23_oe /* BUS */ (ts_local_pe_94_a1_oe),
	.gpu_dout_23_in /* BUS */ (ts_local_pe_94_a1_in),
	.gpu_dout_24_out /* BUS */ (ts_local_pe_95_a1_out),
	.gpu_dout_24_oe /* BUS */ (ts_local_pe_95_a1_oe),
	.gpu_dout_24_in /* BUS */ (ts_local_pe_95_a1_in),
	.gpu_dout_25_out /* BUS */ (ts_local_pe_96_a1_out),
	.gpu_dout_25_oe /* BUS */ (ts_local_pe_96_a1_oe),
	.gpu_dout_25_in /* BUS */ (ts_local_pe_96_a1_in),
	.gpu_dout_26_out /* BUS */ (ts_local_pe_97_a1_out),
	.gpu_dout_26_oe /* BUS */ (ts_local_pe_97_a1_oe),
	.gpu_dout_26_in /* BUS */ (ts_local_pe_97_a1_in),
	.gpu_dout_27_out /* BUS */ (ts_local_pe_98_a1_out),
	.gpu_dout_27_oe /* BUS */ (ts_local_pe_98_a1_oe),
	.gpu_dout_27_in /* BUS */ (ts_local_pe_98_a1_in),
	.gpu_dout_28_out /* BUS */ (ts_local_pe_99_a1_out),
	.gpu_dout_28_oe /* BUS */ (ts_local_pe_99_a1_oe),
	.gpu_dout_28_in /* BUS */ (ts_local_pe_99_a1_in),
	.gpu_dout_29_out /* BUS */ (ts_local_pe_100_a1_out),
	.gpu_dout_29_oe /* BUS */ (ts_local_pe_100_a1_oe),
	.gpu_dout_29_in /* BUS */ (ts_local_pe_100_a1_in),
	.gpu_dout_30_out /* BUS */ (ts_local_pe_101_a1_out),
	.gpu_dout_30_oe /* BUS */ (ts_local_pe_101_a1_oe),
	.gpu_dout_30_in /* BUS */ (ts_local_pe_101_a1_in),
	.gpu_dout_31_out /* BUS */ (ts_local_pe_102_a1_out),
	.gpu_dout_31_oe /* BUS */ (ts_local_pe_102_a1_oe),
	.gpu_dout_31_in /* BUS */ (ts_local_pe_102_a1_in),
	.accumrd /* OUT */ (accumrd),
	.big_instr /* OUT */ (big_instr),
	.big_io /* OUT */ (big_io),
	.ctrlwr /* OUT */ (ctrlwr),
	.dacw_0 /* OUT */ (dacw_0),
	.dacw_1 /* OUT */ (dacw_1),
	.datack /* OUT */ (datack),
	.dbgrd /* OUT */ (dbgrd),
	.del_xld /* OUT */ (del_xld),
	.divwr /* OUT */ (divwr),
	.externalb /* OUT */ (external),
	.flagrd /* OUT */ (flagrd),
	.flagwr /* OUT */ (flagwr),
	.gateack /* OUT */ (gateack),
	.gpu_addr /* OUT */ ({gpu_addr[0],gpu_addr[1],gpu_addr[2],gpu_addr[3],gpu_addr[4],gpu_addr[5],gpu_addr[6],gpu_addr[7],gpu_addr[8],gpu_addr[9],gpu_addr[10],gpu_addr[11],gpu_addr[12],gpu_addr[13],gpu_addr[14],gpu_addr[15],gpu_addr[16],gpu_addr[17],gpu_addr[18],gpu_addr[19],gpu_addr[20],gpu_addr[21],gpu_addr[22],gpu_addr[23]}),
	.gpu_memw /* OUT */ (gpu_memw),
	.i2sr_0 /* OUT */ (i2sr_0),
	.i2sr_1 /* OUT */ (i2sr_1),
	.i2sr_2 /* OUT */ (i2sr_2),
	.i2sw_0 /* OUT */ (i2sw_0),
	.i2sw_1 /* OUT */ (i2sw_1),
	.i2sw_2 /* OUT */ (i2sw_2),
	.i2sw_3 /* OUT */ (i2sw_3),
	.mem_data /* OUT */ ({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]}),
	.modulowr /* OUT */ (modulowr),
	.mtxawr /* OUT */ (mtxawr),
	.mtxcwr /* OUT */ (mtxcwr),
	.pcrd /* OUT */ (pcrd),
	.pcwr /* OUT */ (pcwr),
	.progack /* OUT */ (progack),
	.progserv /* OUT */ (progserv),
	.ram_addr_2 /* OUT */ (ram_addr_2),
	.ram_addr_3 /* OUT */ (ram_addr_3),
	.ram_addr_4 /* OUT */ (ram_addr_4),
	.ram_addr_5 /* OUT */ (ram_addr_5),
	.ram_addr_6 /* OUT */ (ram_addr_6),
	.ram_addr_7 /* OUT */ (ram_addr_7),
	.ram_addr_8 /* OUT */ (ram_addr_8),
	.ram_addr_9 /* OUT */ (ram_addr_9),
	.ram_addr_10 /* OUT */ (ram_addr_10),
	.ram_addr_11 /* OUT */ (ram_addr_11),
	.ramen_0 /* OUT */ (ramen_0),
	.ramen_1 /* OUT */ (ramen_1),
	.remrd /* OUT */ (remrd),
	.romen /* OUT */ (romen),
	.statrd /* OUT */ (statrd),
	.clk /* IN */ (clk_7),
	.cpuaddr /* IN */ ({cpuaddr[0],cpuaddr[1],cpuaddr[2],cpuaddr[3],cpuaddr[4],cpuaddr[5],cpuaddr[6],cpuaddr[7],cpuaddr[8],cpuaddr[9],cpuaddr[10],cpuaddr[11],cpuaddr[12]}),
	.cpudata /* IN */ ({cpudata[0],cpudata[1],cpudata[2],cpudata[3],cpudata[4],cpudata[5],cpudata[6],cpudata[7],cpudata[8],cpudata[9],cpudata[10],cpudata[11],cpudata[12],cpudata[13],cpudata[14],cpudata[15],cpudata[16],cpudata[17],cpudata[18],cpudata[19],cpudata[20],cpudata[21],cpudata[22],cpudata[23],cpudata[24],cpudata[25],cpudata[26],cpudata[27],cpudata[28],cpudata[29],cpudata[30],cpudata[31]}),
	.dataddr /* IN */ ({dataddr[0],dataddr[1],dataddr[2],dataddr[3],dataddr[4],dataddr[5],dataddr[6],dataddr[7],dataddr[8],dataddr[9],dataddr[10],dataddr[11],dataddr[12],dataddr[13],dataddr[14],dataddr[15],dataddr[16],dataddr[17],dataddr[18],dataddr[19],dataddr[20],dataddr[21],dataddr[22],dataddr[23]}),
	.dstd /* IN */ ({dstd[0],dstd[1],dstd[2],dstd[3],dstd[4],dstd[5],dstd[6],dstd[7],dstd[8],dstd[9],dstd[10],dstd[11],dstd[12],dstd[13],dstd[14],dstd[15],dstd[16],dstd[17],dstd[18],dstd[19],dstd[20],dstd[21],dstd[22],dstd[23],dstd[24],dstd[25],dstd[26],dstd[27],dstd[28],dstd[29],dstd[30],dstd[31]}),
	.dstdgate /* IN */ (dstdgate),
	.datreq /* IN */ (datreq),
	.datwe /* IN */ (datwe),
	.gatereq /* IN */ (gatereq),
	.go /* IN */ (go),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.ioreq /* IN */ (ioreq),
	.iowr /* IN */ (iowr),
	.pabort /* IN */ (pabort),
	.progaddr /* IN */ ({progaddr[0],progaddr[1],progaddr[2],progaddr[3],progaddr[4],progaddr[5],progaddr[6],progaddr[7],progaddr[8],progaddr[9],progaddr[10],progaddr[11],progaddr[12],progaddr[13],progaddr[14],progaddr[15],progaddr[16],progaddr[17],progaddr[18],progaddr[19],progaddr[20],progaddr[21]}),
	.progreq /* IN */ (progreq),
	.reset_n /* IN */ (reset_n_4),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (174) - dsp_ctrl : dsp_ctrl
j_dsp_ctrl dsp_ctrl_inst
(
	.gpu_dout_0_out /* BUS */ (ts_local_pe_71_a2_out),
	.gpu_dout_0_oe /* BUS */ (ts_local_pe_71_a2_oe),
	.gpu_dout_0_in /* BUS */ (ts_local_pe_71_a2_in),
	.gpu_dout_1_out /* BUS */ (ts_local_pe_72_a2_out),
	.gpu_dout_1_oe /* BUS */ (ts_local_pe_72_a2_oe),
	.gpu_dout_1_in /* BUS */ (ts_local_pe_72_a2_in),
	.gpu_dout_2_out /* BUS */ (ts_local_pe_73_a2_out),
	.gpu_dout_2_oe /* BUS */ (ts_local_pe_73_a2_oe),
	.gpu_dout_2_in /* BUS */ (ts_local_pe_73_a2_in),
	.gpu_dout_3_out /* BUS */ (ts_local_pe_74_a2_out),
	.gpu_dout_3_oe /* BUS */ (ts_local_pe_74_a2_oe),
	.gpu_dout_3_in /* BUS */ (ts_local_pe_74_a2_in),
	.gpu_dout_4_out /* BUS */ (ts_local_pe_75_a2_out),
	.gpu_dout_4_oe /* BUS */ (ts_local_pe_75_a2_oe),
	.gpu_dout_4_in /* BUS */ (ts_local_pe_75_a2_in),
	.gpu_dout_5_out /* BUS */ (ts_local_pe_76_a2_out),
	.gpu_dout_5_oe /* BUS */ (ts_local_pe_76_a2_oe),
	.gpu_dout_5_in /* BUS */ (ts_local_pe_76_a2_in),
	.gpu_dout_11_out /* BUS */ (ts_local_pe_82_a2_out),
	.gpu_dout_11_oe /* BUS */ (ts_local_pe_82_a2_oe),
	.gpu_dout_11_in /* BUS */ (ts_local_pe_82_a2_in),
	.gpu_dout_12_out /* BUS */ (ts_local_pe_83_a2_out),
	.gpu_dout_12_oe /* BUS */ (ts_local_pe_83_a2_oe),
	.gpu_dout_12_in /* BUS */ (ts_local_pe_83_a2_in),
	.gpu_dout_13_out /* BUS */ (ts_local_pe_84_a2_out),
	.gpu_dout_13_oe /* BUS */ (ts_local_pe_84_a2_oe),
	.gpu_dout_13_in /* BUS */ (ts_local_pe_84_a2_in),
	.gpu_dout_14_out /* BUS */ (ts_local_pe_85_a2_out),
	.gpu_dout_14_oe /* BUS */ (ts_local_pe_85_a2_oe),
	.gpu_dout_14_in /* BUS */ (ts_local_pe_85_a2_in),
	.gpu_dout_15_out /* BUS */ (ts_local_pe_86_a1_out),
	.gpu_dout_15_oe /* BUS */ (ts_local_pe_86_a1_oe),
	.gpu_dout_15_in /* BUS */ (ts_local_pe_86_a1_in),
	.bus_hog /* OUT */ (bus_hog),
	.cpu_int /* OUT */ (cpu_int),
	.go /* OUT */ (go),
	.gpu_irq_0 /* OUT */ (gpu_irq_0),
	.single_go /* OUT */ (single_go),
	.single_step /* OUT */ (single_step),
	.clk /* IN */ (clk_2),
	.ctrlwr /* IN */ (ctrlwr),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.reset_n /* IN */ (reset_n_5),
	.single_stop /* IN */ (single_stop),
	.statrd /* IN */ (statrd),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (182) - dsp_ram : dsp_ram
j_dsp_ram dsp_ram_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_39_a4_out,ts_local_pe_40_a4_out,ts_local_pe_41_a4_out,ts_local_pe_42_a4_out,ts_local_pe_43_a4_out,ts_local_pe_44_a4_out,ts_local_pe_45_a4_out,ts_local_pe_46_a4_out,ts_local_pe_47_a4_out,ts_local_pe_48_a4_out,ts_local_pe_49_a4_out,ts_local_pe_50_a4_out,ts_local_pe_51_a4_out,ts_local_pe_52_a4_out,ts_local_pe_53_a4_out,ts_local_pe_54_a4_out,ts_local_pe_55_a4_out,ts_local_pe_56_a4_out,ts_local_pe_57_a4_out,ts_local_pe_58_a4_out,ts_local_pe_59_a4_out,ts_local_pe_60_a4_out,ts_local_pe_61_a4_out,ts_local_pe_62_a4_out,ts_local_pe_63_a4_out,ts_local_pe_64_a4_out,ts_local_pe_65_a4_out,ts_local_pe_66_a4_out,ts_local_pe_67_a4_out,ts_local_pe_68_a4_out,ts_local_pe_69_a4_out,ts_local_pe_70_a4_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_39_a4_oe,ts_local_pe_40_a4_oe,ts_local_pe_41_a4_oe,ts_local_pe_42_a4_oe,ts_local_pe_43_a4_oe,ts_local_pe_44_a4_oe,ts_local_pe_45_a4_oe,ts_local_pe_46_a4_oe,ts_local_pe_47_a4_oe,ts_local_pe_48_a4_oe,ts_local_pe_49_a4_oe,ts_local_pe_50_a4_oe,ts_local_pe_51_a4_oe,ts_local_pe_52_a4_oe,ts_local_pe_53_a4_oe,ts_local_pe_54_a4_oe,ts_local_pe_55_a4_oe,ts_local_pe_56_a4_oe,ts_local_pe_57_a4_oe,ts_local_pe_58_a4_oe,ts_local_pe_59_a4_oe,ts_local_pe_60_a4_oe,ts_local_pe_61_a4_oe,ts_local_pe_62_a4_oe,ts_local_pe_63_a4_oe,ts_local_pe_64_a4_oe,ts_local_pe_65_a4_oe,ts_local_pe_66_a4_oe,ts_local_pe_67_a4_oe,ts_local_pe_68_a4_oe,ts_local_pe_69_a4_oe,ts_local_pe_70_a4_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_39_a4_in,ts_local_pe_40_a4_in,ts_local_pe_41_a4_in,ts_local_pe_42_a4_in,ts_local_pe_43_a4_in,ts_local_pe_44_a4_in,ts_local_pe_45_a4_in,ts_local_pe_46_a4_in,ts_local_pe_47_a4_in,ts_local_pe_48_a4_in,ts_local_pe_49_a4_in,ts_local_pe_50_a4_in,ts_local_pe_51_a4_in,ts_local_pe_52_a4_in,ts_local_pe_53_a4_in,ts_local_pe_54_a4_in,ts_local_pe_55_a4_in,ts_local_pe_56_a4_in,ts_local_pe_57_a4_in,ts_local_pe_58_a4_in,ts_local_pe_59_a4_in,ts_local_pe_60_a4_in,ts_local_pe_61_a4_in,ts_local_pe_62_a4_in,ts_local_pe_63_a4_in,ts_local_pe_64_a4_in,ts_local_pe_65_a4_in,ts_local_pe_66_a4_in,ts_local_pe_67_a4_in,ts_local_pe_68_a4_in,ts_local_pe_69_a4_in,ts_local_pe_70_a4_in}),
	.clk /* IN */ (clk_2),
	.gpu_memw /* IN */ (gpu_memw),
	.ram_addr_2 /* IN */ (ram_addr_2),
	.ram_addr_3 /* IN */ (ram_addr_3),
	.ram_addr_4 /* IN */ (ram_addr_4),
	.ram_addr_5 /* IN */ (ram_addr_5),
	.ram_addr_6 /* IN */ (ram_addr_6),
	.ram_addr_7 /* IN */ (ram_addr_7),
	.ram_addr_8 /* IN */ (ram_addr_8),
	.ram_addr_9 /* IN */ (ram_addr_9),
	.ram_addr_10 /* IN */ (ram_addr_10),
	.ram_addr_11 /* IN */ (ram_addr_11),
	.ramen_0 /* IN */ (ramen_0),
	.ramen_1 /* IN */ (ramen_1),
	.romen /* IN */ (romen),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (187) - dsp_slave : dsp_slave
j_dsp_slave dsp_slave_inst
(
	.dread_out /* BUS */ ({dread_out[0],dread_out[1],dread_out[2],dread_out[3],dread_out[4],dread_out[5],dread_out[6],dread_out[7],dread_out[8],dread_out[9],dread_out[10],dread_out[11],dread_out[12],dread_out[13],dread_out[14],dread_out[15]}),
	.dread_oe /* BUS */ ({dread_oe[0],dread_oe[1],dread_oe[2],dread_oe[3],dread_oe[4],dread_oe[5],dread_oe[6],dread_oe[7],dread_oe[8],dread_oe[9],dread_oe[10],dread_oe[11],dread_oe[12],dread_oe[13],dread_oe[14],dread_oe[15]}),
	.dread_in /* BUS */ ({dread_in[0],dread_in[1],dread_in[2],dread_in[3],dread_in[4],dread_in[5],dread_in[6],dread_in[7],dread_in[8],dread_in[9],dread_in[10],dread_in[11],dread_in[12],dread_in[13],dread_in[14],dread_in[15]}),
	.cpuaddr /* OUT */ ({cpuaddr[0],cpuaddr[1],cpuaddr[2],cpuaddr[3],cpuaddr[4],cpuaddr[5],cpuaddr[6],cpuaddr[7],cpuaddr[8],cpuaddr[9],cpuaddr[10],cpuaddr[11],cpuaddr[12]}),
	.cpudata /* OUT */ ({cpudata[0],cpudata[1],cpudata[2],cpudata[3],cpudata[4],cpudata[5],cpudata[6],cpudata[7],cpudata[8],cpudata[9],cpudata[10],cpudata[11],cpudata[12],cpudata[13],cpudata[14],cpudata[15],cpudata[16],cpudata[17],cpudata[18],cpudata[19],cpudata[20],cpudata[21],cpudata[22],cpudata[23],cpudata[24],cpudata[25],cpudata[26],cpudata[27],cpudata[28],cpudata[29],cpudata[30],cpudata[31]}),
	.ioreq /* OUT */ (ioreq),
	.big_io /* IN */ (big_io),
	.clk_0 /* IN */ (clk_2),
	.clk_2 /* IN */ (tlw_1),
	.dwrite_0 /* IN */ (dout_0),
	.dwrite_1 /* IN */ (dout_1),
	.dwrite_2 /* IN */ (dout_2),
	.dwrite_3 /* IN */ (dout_3),
	.dwrite_4 /* IN */ (dout_4),
	.dwrite_5 /* IN */ (dout_5),
	.dwrite_6 /* IN */ (dout_6),
	.dwrite_7 /* IN */ (dout_7),
	.dwrite_8 /* IN */ (dout_8),
	.dwrite_9 /* IN */ (dout_9),
	.dwrite_10 /* IN */ (dout_10),
	.dwrite_11 /* IN */ (dout_11),
	.dwrite_12 /* IN */ (dout_12),
	.dwrite_13 /* IN */ (dout_13),
	.dwrite_14 /* IN */ (dout_14),
	.dwrite_15 /* IN */ (dout_15),
	.io_addr /* IN */ ({io_addr[0],io_addr[1],io_addr[2],io_addr[3],io_addr[4],io_addr[5],io_addr[6],io_addr[7],io_addr[8],io_addr[9],io_addr[10],io_addr[11],io_addr[12],io_addr[13],io_addr[14],io_addr[15]}),
	.iord /* IN */ (iord),
	.iowr /* IN */ (iowr),
	.mem_data /* IN */ ({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]}),
	.reset_n /* IN */ (reset_n_6),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (193) - gateway : dsp_gate
j_dsp_gate gateway_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_39_a5_out,ts_local_pe_40_a5_out,ts_local_pe_41_a5_out,ts_local_pe_42_a5_out,ts_local_pe_43_a5_out,ts_local_pe_44_a5_out,ts_local_pe_45_a5_out,ts_local_pe_46_a5_out,ts_local_pe_47_a5_out,ts_local_pe_48_a5_out,ts_local_pe_49_a5_out,ts_local_pe_50_a5_out,ts_local_pe_51_a5_out,ts_local_pe_52_a5_out,ts_local_pe_53_a5_out,ts_local_pe_54_a5_out,ts_local_pe_55_a5_out,ts_local_pe_56_a5_out,ts_local_pe_57_a5_out,ts_local_pe_58_a5_out,ts_local_pe_59_a5_out,ts_local_pe_60_a5_out,ts_local_pe_61_a5_out,ts_local_pe_62_a5_out,ts_local_pe_63_a5_out,ts_local_pe_64_a5_out,ts_local_pe_65_a5_out,ts_local_pe_66_a5_out,ts_local_pe_67_a5_out,ts_local_pe_68_a5_out,ts_local_pe_69_a5_out,ts_local_pe_70_a5_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_39_a5_oe,ts_local_pe_40_a5_oe,ts_local_pe_41_a5_oe,ts_local_pe_42_a5_oe,ts_local_pe_43_a5_oe,ts_local_pe_44_a5_oe,ts_local_pe_45_a5_oe,ts_local_pe_46_a5_oe,ts_local_pe_47_a5_oe,ts_local_pe_48_a5_oe,ts_local_pe_49_a5_oe,ts_local_pe_50_a5_oe,ts_local_pe_51_a5_oe,ts_local_pe_52_a5_oe,ts_local_pe_53_a5_oe,ts_local_pe_54_a5_oe,ts_local_pe_55_a5_oe,ts_local_pe_56_a5_oe,ts_local_pe_57_a5_oe,ts_local_pe_58_a5_oe,ts_local_pe_59_a5_oe,ts_local_pe_60_a5_oe,ts_local_pe_61_a5_oe,ts_local_pe_62_a5_oe,ts_local_pe_63_a5_oe,ts_local_pe_64_a5_oe,ts_local_pe_65_a5_oe,ts_local_pe_66_a5_oe,ts_local_pe_67_a5_oe,ts_local_pe_68_a5_oe,ts_local_pe_69_a5_oe,ts_local_pe_70_a5_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_39_a5_in,ts_local_pe_40_a5_in,ts_local_pe_41_a5_in,ts_local_pe_42_a5_in,ts_local_pe_43_a5_in,ts_local_pe_44_a5_in,ts_local_pe_45_a5_in,ts_local_pe_46_a5_in,ts_local_pe_47_a5_in,ts_local_pe_48_a5_in,ts_local_pe_49_a5_in,ts_local_pe_50_a5_in,ts_local_pe_51_a5_in,ts_local_pe_52_a5_in,ts_local_pe_53_a5_in,ts_local_pe_54_a5_in,ts_local_pe_55_a5_in,ts_local_pe_56_a5_in,ts_local_pe_57_a5_in,ts_local_pe_58_a5_in,ts_local_pe_59_a5_in,ts_local_pe_60_a5_in,ts_local_pe_61_a5_in,ts_local_pe_62_a5_in,ts_local_pe_63_a5_in,ts_local_pe_64_a5_in,ts_local_pe_65_a5_in,ts_local_pe_66_a5_in,ts_local_pe_67_a5_in,ts_local_pe_68_a5_in,ts_local_pe_69_a5_in,ts_local_pe_70_a5_in}),
	.gpu_dout_15_out /* BUS */ (ts_local_pe_86_a2_out),
	.gpu_dout_15_oe /* BUS */ (ts_local_pe_86_a2_oe),
	.gpu_dout_15_in /* BUS */ (ts_local_pe_86_a2_in),
	.address /* OUT */ ({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}),
	.mreq /* OUT */ (mreq),
	.read /* OUT */ (read),
	.width_0 /* OUT */ (width_0),
	.width_1 /* OUT */ (width_1),
	.width_2 /* OUT */ (width_2),
	.dma_breq_n /* OUT */ (dma_breq),
	.gate_active /* OUT */ (gate_active),
	.gatereq /* OUT */ (gatereq),
	.gpu_breq_n /* OUT */ (gpu_breq),
	.load_data /* OUT */ ({load_data[0],load_data[1],load_data[2],load_data[3],load_data[4],load_data[5],load_data[6],load_data[7],load_data[8],load_data[9],load_data[10],load_data[11],load_data[12],load_data[13],load_data[14],load_data[15],load_data[16],load_data[17],load_data[18],load_data[19],load_data[20],load_data[21],load_data[22],load_data[23],load_data[24],load_data[25],load_data[26],load_data[27],load_data[28],load_data[29],load_data[30],load_data[31]}),
	.xld_ready /* OUT */ (xld_ready),
	.ack /* IN */ (ack),
	.bus_hog /* IN */ (bus_hog),
	.clk /* IN */ (clk_8),
	.tlw /* IN */ (tlw_2),
	.data_0 /* IN */ (dout_0),
	.data_1 /* IN */ (dout_1),
	.data_2 /* IN */ (dout_2),
	.data_3 /* IN */ (dout_3),
	.data_4 /* IN */ (dout_4),
	.data_5 /* IN */ (dout_5),
	.data_6 /* IN */ (dout_6),
	.data_7 /* IN */ (dout_7),
	.data_8 /* IN */ (dout_8),
	.data_9 /* IN */ (dout_9),
	.data_10 /* IN */ (dout_10),
	.data_11 /* IN */ (dout_11),
	.data_12 /* IN */ (dout_12),
	.data_13 /* IN */ (dout_13),
	.data_14 /* IN */ (dout_14),
	.data_15 /* IN */ (dout_15),
	.data_16 /* IN */ (dout_16),
	.data_17 /* IN */ (dout_17),
	.data_18 /* IN */ (dout_18),
	.data_19 /* IN */ (dout_19),
	.data_20 /* IN */ (dout_20),
	.data_21 /* IN */ (dout_21),
	.data_22 /* IN */ (dout_22),
	.data_23 /* IN */ (dout_23),
	.data_24 /* IN */ (dout_24),
	.data_25 /* IN */ (dout_25),
	.data_26 /* IN */ (dout_26),
	.data_27 /* IN */ (dout_27),
	.data_28 /* IN */ (dout_28),
	.data_29 /* IN */ (dout_29),
	.data_30 /* IN */ (dout_30),
	.data_31 /* IN */ (dout_31),
	.external /* IN */ (external),
	.flagrd /* IN */ (flagrd),
	.flagwr /* IN */ (flagwr),
	.gateack /* IN */ (gateack),
	.gpu_addr /* IN */ ({gpu_addr[0],gpu_addr[1],gpu_addr[2],gpu_addr[3],gpu_addr[4],gpu_addr[5],gpu_addr[6],gpu_addr[7],gpu_addr[8],gpu_addr[9],gpu_addr[10],gpu_addr[11],gpu_addr[12],gpu_addr[13],gpu_addr[14],gpu_addr[15],gpu_addr[16],gpu_addr[17],gpu_addr[18],gpu_addr[19],gpu_addr[20],gpu_addr[21],gpu_addr[22],gpu_addr[23]}),
	.gpu_back_n /* IN */ (gpu_back),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.gpu_memw /* IN */ (gpu_memw),
	.msize_0 /* IN */ (msize_0),
	.msize_1 /* IN */ (msize_1),
	.progserv /* IN */ (progserv),
	.reset_n /* IN */ (reset_n_7),
	.sys_clk(sys_clk) // Generated
);

// DSP.NET (203) - gpu_dout : join_bus
assign ts_local_pe_39_a6_out = gpu_dout_0_out;
assign ts_local_pe_39_a6_oe = gpu_dout_0_oe;
assign gpu_dout_0_in = ts_local_pe_39_a6_in;
assign ts_local_pe_40_a6_out = gpu_dout_1_out;
assign ts_local_pe_40_a6_oe = gpu_dout_1_oe;
assign gpu_dout_1_in = ts_local_pe_40_a6_in;
assign ts_local_pe_41_a6_out = gpu_dout_2_out;
assign ts_local_pe_41_a6_oe = gpu_dout_2_oe;
assign gpu_dout_2_in = ts_local_pe_41_a6_in;
assign ts_local_pe_42_a6_out = gpu_dout_3_out;
assign ts_local_pe_42_a6_oe = gpu_dout_3_oe;
assign gpu_dout_3_in = ts_local_pe_42_a6_in;
assign ts_local_pe_43_a6_out = gpu_dout_4_out;
assign ts_local_pe_43_a6_oe = gpu_dout_4_oe;
assign gpu_dout_4_in = ts_local_pe_43_a6_in;
assign ts_local_pe_44_a6_out = gpu_dout_5_out;
assign ts_local_pe_44_a6_oe = gpu_dout_5_oe;
assign gpu_dout_5_in = ts_local_pe_44_a6_in;
assign ts_local_pe_45_a6_out = gpu_dout_6_out;
assign ts_local_pe_45_a6_oe = gpu_dout_6_oe;
assign gpu_dout_6_in = ts_local_pe_45_a6_in;
assign ts_local_pe_46_a6_out = gpu_dout_7_out;
assign ts_local_pe_46_a6_oe = gpu_dout_7_oe;
assign gpu_dout_7_in = ts_local_pe_46_a6_in;
assign ts_local_pe_47_a6_out = gpu_dout_8_out;
assign ts_local_pe_47_a6_oe = gpu_dout_8_oe;
assign gpu_dout_8_in = ts_local_pe_47_a6_in;
assign ts_local_pe_48_a6_out = gpu_dout_9_out;
assign ts_local_pe_48_a6_oe = gpu_dout_9_oe;
assign gpu_dout_9_in = ts_local_pe_48_a6_in;
assign ts_local_pe_49_a6_out = gpu_dout_10_out;
assign ts_local_pe_49_a6_oe = gpu_dout_10_oe;
assign gpu_dout_10_in = ts_local_pe_49_a6_in;
assign ts_local_pe_50_a6_out = gpu_dout_11_out;
assign ts_local_pe_50_a6_oe = gpu_dout_11_oe;
assign gpu_dout_11_in = ts_local_pe_50_a6_in;
assign ts_local_pe_51_a6_out = gpu_dout_12_out;
assign ts_local_pe_51_a6_oe = gpu_dout_12_oe;
assign gpu_dout_12_in = ts_local_pe_51_a6_in;
assign ts_local_pe_52_a6_out = gpu_dout_13_out;
assign ts_local_pe_52_a6_oe = gpu_dout_13_oe;
assign gpu_dout_13_in = ts_local_pe_52_a6_in;
assign ts_local_pe_53_a6_out = gpu_dout_14_out;
assign ts_local_pe_53_a6_oe = gpu_dout_14_oe;
assign gpu_dout_14_in = ts_local_pe_53_a6_in;
assign ts_local_pe_54_a6_out = gpu_dout_15_out;
assign ts_local_pe_54_a6_oe = gpu_dout_15_oe;
assign gpu_dout_15_in = ts_local_pe_54_a6_in;
assign ts_local_pe_55_a6_out = gpu_dout_16_out;
assign ts_local_pe_55_a6_oe = gpu_dout_16_oe;
assign gpu_dout_16_in = ts_local_pe_55_a6_in;
assign ts_local_pe_56_a6_out = gpu_dout_17_out;
assign ts_local_pe_56_a6_oe = gpu_dout_17_oe;
assign gpu_dout_17_in = ts_local_pe_56_a6_in;
assign ts_local_pe_57_a6_out = gpu_dout_18_out;
assign ts_local_pe_57_a6_oe = gpu_dout_18_oe;
assign gpu_dout_18_in = ts_local_pe_57_a6_in;
assign ts_local_pe_58_a6_out = gpu_dout_19_out;
assign ts_local_pe_58_a6_oe = gpu_dout_19_oe;
assign gpu_dout_19_in = ts_local_pe_58_a6_in;
assign ts_local_pe_59_a6_out = gpu_dout_20_out;
assign ts_local_pe_59_a6_oe = gpu_dout_20_oe;
assign gpu_dout_20_in = ts_local_pe_59_a6_in;
assign ts_local_pe_60_a6_out = gpu_dout_21_out;
assign ts_local_pe_60_a6_oe = gpu_dout_21_oe;
assign gpu_dout_21_in = ts_local_pe_60_a6_in;
assign ts_local_pe_61_a6_out = gpu_dout_22_out;
assign ts_local_pe_61_a6_oe = gpu_dout_22_oe;
assign gpu_dout_22_in = ts_local_pe_61_a6_in;
assign ts_local_pe_62_a6_out = gpu_dout_23_out;
assign ts_local_pe_62_a6_oe = gpu_dout_23_oe;
assign gpu_dout_23_in = ts_local_pe_62_a6_in;
assign ts_local_pe_63_a6_out = gpu_dout_24_out;
assign ts_local_pe_63_a6_oe = gpu_dout_24_oe;
assign gpu_dout_24_in = ts_local_pe_63_a6_in;
assign ts_local_pe_64_a6_out = gpu_dout_25_out;
assign ts_local_pe_64_a6_oe = gpu_dout_25_oe;
assign gpu_dout_25_in = ts_local_pe_64_a6_in;
assign ts_local_pe_65_a6_out = gpu_dout_26_out;
assign ts_local_pe_65_a6_oe = gpu_dout_26_oe;
assign gpu_dout_26_in = ts_local_pe_65_a6_in;
assign ts_local_pe_66_a6_out = gpu_dout_27_out;
assign ts_local_pe_66_a6_oe = gpu_dout_27_oe;
assign gpu_dout_27_in = ts_local_pe_66_a6_in;
assign ts_local_pe_67_a6_out = gpu_dout_28_out;
assign ts_local_pe_67_a6_oe = gpu_dout_28_oe;
assign gpu_dout_28_in = ts_local_pe_67_a6_in;
assign ts_local_pe_68_a6_out = gpu_dout_29_out;
assign ts_local_pe_68_a6_oe = gpu_dout_29_oe;
assign gpu_dout_29_in = ts_local_pe_68_a6_in;
assign ts_local_pe_69_a6_out = gpu_dout_30_out;
assign ts_local_pe_69_a6_oe = gpu_dout_30_oe;
assign gpu_dout_30_in = ts_local_pe_69_a6_in;
assign ts_local_pe_70_a6_out = gpu_dout_31_out;
assign ts_local_pe_70_a6_oe = gpu_dout_31_oe;
assign gpu_dout_31_in = ts_local_pe_70_a6_in;

// DSP.NET (207) - gpu_din : nivh
assign gpu_din[0] = gpu_data_in[0];
assign gpu_din[1] = gpu_data_in[1];
assign gpu_din[2] = gpu_data_in[2];
assign gpu_din[3] = gpu_data_in[3];
assign gpu_din[4] = gpu_data_in[4];
assign gpu_din[5] = gpu_data_in[5];
assign gpu_din[6] = gpu_data_in[6];
assign gpu_din[7] = gpu_data_in[7];
assign gpu_din[8] = gpu_data_in[8];
assign gpu_din[9] = gpu_data_in[9];
assign gpu_din[10] = gpu_data_in[10];
assign gpu_din[11] = gpu_data_in[11];
assign gpu_din[12] = gpu_data_in[12];
assign gpu_din[13] = gpu_data_in[13];
assign gpu_din[14] = gpu_data_in[14];
assign gpu_din[15] = gpu_data_in[15];
assign gpu_din[16] = gpu_data_in[16];
assign gpu_din[17] = gpu_data_in[17];
assign gpu_din[18] = gpu_data_in[18];
assign gpu_din[19] = gpu_data_in[19];
assign gpu_din[20] = gpu_data_in[20];
assign gpu_din[21] = gpu_data_in[21];
assign gpu_din[22] = gpu_data_in[22];
assign gpu_din[23] = gpu_data_in[23];
assign gpu_din[24] = gpu_data_in[24];
assign gpu_din[25] = gpu_data_in[25];
assign gpu_din[26] = gpu_data_in[26];
assign gpu_din[27] = gpu_data_in[27];
assign gpu_din[28] = gpu_data_in[28];
assign gpu_din[29] = gpu_data_in[29];
assign gpu_din[30] = gpu_data_in[30];
assign gpu_din[31] = gpu_data_in[31];

// DSP.NET (210) - ge : join_bus
assign gpu_dout_o_0_out = gpu_data_out[0];
assign gpu_dout_o_0_oe = gpu_data_oe[0];
assign gpu_data_in[0] = gpu_dout_o_0_in;
assign gpu_dout_o_1_out = gpu_data_out[1];
assign gpu_dout_o_1_oe = gpu_data_oe[1];
assign gpu_data_in[1] = gpu_dout_o_1_in;
assign gpu_dout_o_2_out = gpu_data_out[2];
assign gpu_dout_o_2_oe = gpu_data_oe[2];
assign gpu_data_in[2] = gpu_dout_o_2_in;
assign gpu_dout_o_3_out = gpu_data_out[3];
assign gpu_dout_o_3_oe = gpu_data_oe[3];
assign gpu_data_in[3] = gpu_dout_o_3_in;
assign gpu_dout_o_4_out = gpu_data_out[4];
assign gpu_dout_o_4_oe = gpu_data_oe[4];
assign gpu_data_in[4] = gpu_dout_o_4_in;
assign gpu_dout_o_5_out = gpu_data_out[5];
assign gpu_dout_o_5_oe = gpu_data_oe[5];
assign gpu_data_in[5] = gpu_dout_o_5_in;
assign gpu_dout_o_6_out = gpu_data_out[6];
assign gpu_dout_o_6_oe = gpu_data_oe[6];
assign gpu_data_in[6] = gpu_dout_o_6_in;
assign gpu_dout_o_7_out = gpu_data_out[7];
assign gpu_dout_o_7_oe = gpu_data_oe[7];
assign gpu_data_in[7] = gpu_dout_o_7_in;
assign gpu_dout_o_8_out = gpu_data_out[8];
assign gpu_dout_o_8_oe = gpu_data_oe[8];
assign gpu_data_in[8] = gpu_dout_o_8_in;
assign gpu_dout_o_9_out = gpu_data_out[9];
assign gpu_dout_o_9_oe = gpu_data_oe[9];
assign gpu_data_in[9] = gpu_dout_o_9_in;
assign gpu_dout_o_10_out = gpu_data_out[10];
assign gpu_dout_o_10_oe = gpu_data_oe[10];
assign gpu_data_in[10] = gpu_dout_o_10_in;
assign gpu_dout_o_11_out = gpu_data_out[11];
assign gpu_dout_o_11_oe = gpu_data_oe[11];
assign gpu_data_in[11] = gpu_dout_o_11_in;
assign gpu_dout_o_12_out = gpu_data_out[12];
assign gpu_dout_o_12_oe = gpu_data_oe[12];
assign gpu_data_in[12] = gpu_dout_o_12_in;
assign gpu_dout_o_13_out = gpu_data_out[13];
assign gpu_dout_o_13_oe = gpu_data_oe[13];
assign gpu_data_in[13] = gpu_dout_o_13_in;
assign gpu_dout_o_14_out = gpu_data_out[14];
assign gpu_dout_o_14_oe = gpu_data_oe[14];
assign gpu_data_in[14] = gpu_dout_o_14_in;
assign gpu_dout_o_15_out = gpu_data_out[15];
assign gpu_dout_o_15_oe = gpu_data_oe[15];
assign gpu_data_in[15] = gpu_dout_o_15_in;

// --- Compiler-generated local PE for BUS gpu_data<0>
assign gpu_data_out[0] = (ts_local_pe_39_a0_oe & ts_local_pe_39_a0_out ) | (ts_local_pe_39_a1_oe & ts_local_pe_39_a1_out ) | (ts_local_pe_39_a2_oe & ts_local_pe_39_a2_out ) | (ts_local_pe_39_a3_oe & ts_local_pe_39_a3_out ) | (ts_local_pe_39_a4_oe & ts_local_pe_39_a4_out ) | (ts_local_pe_39_a5_oe & ts_local_pe_39_a5_out ) | (ts_local_pe_39_a6_oe & ts_local_pe_39_a6_out ) | 1'b0;
assign gpu_data_oe[0] = ts_local_pe_39_a0_oe | ts_local_pe_39_a1_oe | ts_local_pe_39_a2_oe | ts_local_pe_39_a3_oe | ts_local_pe_39_a4_oe | ts_local_pe_39_a5_oe | ts_local_pe_39_a6_oe;
assign ts_local_pe_39_a0_in = gpu_data_in[0];
assign ts_local_pe_39_a1_in = gpu_data_in[0];
assign ts_local_pe_39_a2_in = gpu_data_in[0];
assign ts_local_pe_39_a3_in = gpu_data_in[0];
assign ts_local_pe_39_a4_in = gpu_data_in[0];
assign ts_local_pe_39_a5_in = gpu_data_in[0];
assign ts_local_pe_39_a6_in = gpu_data_in[0];

// --- Compiler-generated local PE for BUS gpu_data<1>
assign gpu_data_out[1] = (ts_local_pe_40_a0_oe & ts_local_pe_40_a0_out ) | (ts_local_pe_40_a1_oe & ts_local_pe_40_a1_out ) | (ts_local_pe_40_a2_oe & ts_local_pe_40_a2_out ) | (ts_local_pe_40_a3_oe & ts_local_pe_40_a3_out ) | (ts_local_pe_40_a4_oe & ts_local_pe_40_a4_out ) | (ts_local_pe_40_a5_oe & ts_local_pe_40_a5_out ) | (ts_local_pe_40_a6_oe & ts_local_pe_40_a6_out ) | 1'b0;
assign gpu_data_oe[1] = ts_local_pe_40_a0_oe | ts_local_pe_40_a1_oe | ts_local_pe_40_a2_oe | ts_local_pe_40_a3_oe | ts_local_pe_40_a4_oe | ts_local_pe_40_a5_oe | ts_local_pe_40_a6_oe;
assign ts_local_pe_40_a0_in = gpu_data_in[1];
assign ts_local_pe_40_a1_in = gpu_data_in[1];
assign ts_local_pe_40_a2_in = gpu_data_in[1];
assign ts_local_pe_40_a3_in = gpu_data_in[1];
assign ts_local_pe_40_a4_in = gpu_data_in[1];
assign ts_local_pe_40_a5_in = gpu_data_in[1];
assign ts_local_pe_40_a6_in = gpu_data_in[1];

// --- Compiler-generated local PE for BUS gpu_data<2>
assign gpu_data_out[2] = (ts_local_pe_41_a0_oe & ts_local_pe_41_a0_out ) | (ts_local_pe_41_a1_oe & ts_local_pe_41_a1_out ) | (ts_local_pe_41_a2_oe & ts_local_pe_41_a2_out ) | (ts_local_pe_41_a3_oe & ts_local_pe_41_a3_out ) | (ts_local_pe_41_a4_oe & ts_local_pe_41_a4_out ) | (ts_local_pe_41_a5_oe & ts_local_pe_41_a5_out ) | (ts_local_pe_41_a6_oe & ts_local_pe_41_a6_out ) | 1'b0;
assign gpu_data_oe[2] = ts_local_pe_41_a0_oe | ts_local_pe_41_a1_oe | ts_local_pe_41_a2_oe | ts_local_pe_41_a3_oe | ts_local_pe_41_a4_oe | ts_local_pe_41_a5_oe | ts_local_pe_41_a6_oe;
assign ts_local_pe_41_a0_in = gpu_data_in[2];
assign ts_local_pe_41_a1_in = gpu_data_in[2];
assign ts_local_pe_41_a2_in = gpu_data_in[2];
assign ts_local_pe_41_a3_in = gpu_data_in[2];
assign ts_local_pe_41_a4_in = gpu_data_in[2];
assign ts_local_pe_41_a5_in = gpu_data_in[2];
assign ts_local_pe_41_a6_in = gpu_data_in[2];

// --- Compiler-generated local PE for BUS gpu_data<3>
assign gpu_data_out[3] = (ts_local_pe_42_a0_oe & ts_local_pe_42_a0_out ) | (ts_local_pe_42_a1_oe & ts_local_pe_42_a1_out ) | (ts_local_pe_42_a2_oe & ts_local_pe_42_a2_out ) | (ts_local_pe_42_a3_oe & ts_local_pe_42_a3_out ) | (ts_local_pe_42_a4_oe & ts_local_pe_42_a4_out ) | (ts_local_pe_42_a5_oe & ts_local_pe_42_a5_out ) | (ts_local_pe_42_a6_oe & ts_local_pe_42_a6_out ) | 1'b0;
assign gpu_data_oe[3] = ts_local_pe_42_a0_oe | ts_local_pe_42_a1_oe | ts_local_pe_42_a2_oe | ts_local_pe_42_a3_oe | ts_local_pe_42_a4_oe | ts_local_pe_42_a5_oe | ts_local_pe_42_a6_oe;
assign ts_local_pe_42_a0_in = gpu_data_in[3];
assign ts_local_pe_42_a1_in = gpu_data_in[3];
assign ts_local_pe_42_a2_in = gpu_data_in[3];
assign ts_local_pe_42_a3_in = gpu_data_in[3];
assign ts_local_pe_42_a4_in = gpu_data_in[3];
assign ts_local_pe_42_a5_in = gpu_data_in[3];
assign ts_local_pe_42_a6_in = gpu_data_in[3];

// --- Compiler-generated local PE for BUS gpu_data<4>
assign gpu_data_out[4] = (ts_local_pe_43_a0_oe & ts_local_pe_43_a0_out ) | (ts_local_pe_43_a1_oe & ts_local_pe_43_a1_out ) | (ts_local_pe_43_a2_oe & ts_local_pe_43_a2_out ) | (ts_local_pe_43_a3_oe & ts_local_pe_43_a3_out ) | (ts_local_pe_43_a4_oe & ts_local_pe_43_a4_out ) | (ts_local_pe_43_a5_oe & ts_local_pe_43_a5_out ) | (ts_local_pe_43_a6_oe & ts_local_pe_43_a6_out ) | 1'b0;
assign gpu_data_oe[4] = ts_local_pe_43_a0_oe | ts_local_pe_43_a1_oe | ts_local_pe_43_a2_oe | ts_local_pe_43_a3_oe | ts_local_pe_43_a4_oe | ts_local_pe_43_a5_oe | ts_local_pe_43_a6_oe;
assign ts_local_pe_43_a0_in = gpu_data_in[4];
assign ts_local_pe_43_a1_in = gpu_data_in[4];
assign ts_local_pe_43_a2_in = gpu_data_in[4];
assign ts_local_pe_43_a3_in = gpu_data_in[4];
assign ts_local_pe_43_a4_in = gpu_data_in[4];
assign ts_local_pe_43_a5_in = gpu_data_in[4];
assign ts_local_pe_43_a6_in = gpu_data_in[4];

// --- Compiler-generated local PE for BUS gpu_data<5>
assign gpu_data_out[5] = (ts_local_pe_44_a0_oe & ts_local_pe_44_a0_out ) | (ts_local_pe_44_a1_oe & ts_local_pe_44_a1_out ) | (ts_local_pe_44_a2_oe & ts_local_pe_44_a2_out ) | (ts_local_pe_44_a3_oe & ts_local_pe_44_a3_out ) | (ts_local_pe_44_a4_oe & ts_local_pe_44_a4_out ) | (ts_local_pe_44_a5_oe & ts_local_pe_44_a5_out ) | (ts_local_pe_44_a6_oe & ts_local_pe_44_a6_out ) | 1'b0;
assign gpu_data_oe[5] = ts_local_pe_44_a0_oe | ts_local_pe_44_a1_oe | ts_local_pe_44_a2_oe | ts_local_pe_44_a3_oe | ts_local_pe_44_a4_oe | ts_local_pe_44_a5_oe | ts_local_pe_44_a6_oe;
assign ts_local_pe_44_a0_in = gpu_data_in[5];
assign ts_local_pe_44_a1_in = gpu_data_in[5];
assign ts_local_pe_44_a2_in = gpu_data_in[5];
assign ts_local_pe_44_a3_in = gpu_data_in[5];
assign ts_local_pe_44_a4_in = gpu_data_in[5];
assign ts_local_pe_44_a5_in = gpu_data_in[5];
assign ts_local_pe_44_a6_in = gpu_data_in[5];

// --- Compiler-generated local PE for BUS gpu_data<6>
assign gpu_data_out[6] = (ts_local_pe_45_a0_oe & ts_local_pe_45_a0_out ) | (ts_local_pe_45_a1_oe & ts_local_pe_45_a1_out ) | (ts_local_pe_45_a2_oe & ts_local_pe_45_a2_out ) | (ts_local_pe_45_a3_oe & ts_local_pe_45_a3_out ) | (ts_local_pe_45_a4_oe & ts_local_pe_45_a4_out ) | (ts_local_pe_45_a5_oe & ts_local_pe_45_a5_out ) | (ts_local_pe_45_a6_oe & ts_local_pe_45_a6_out ) | 1'b0;
assign gpu_data_oe[6] = ts_local_pe_45_a0_oe | ts_local_pe_45_a1_oe | ts_local_pe_45_a2_oe | ts_local_pe_45_a3_oe | ts_local_pe_45_a4_oe | ts_local_pe_45_a5_oe | ts_local_pe_45_a6_oe;
assign ts_local_pe_45_a0_in = gpu_data_in[6];
assign ts_local_pe_45_a1_in = gpu_data_in[6];
assign ts_local_pe_45_a2_in = gpu_data_in[6];
assign ts_local_pe_45_a3_in = gpu_data_in[6];
assign ts_local_pe_45_a4_in = gpu_data_in[6];
assign ts_local_pe_45_a5_in = gpu_data_in[6];
assign ts_local_pe_45_a6_in = gpu_data_in[6];

// --- Compiler-generated local PE for BUS gpu_data<7>
assign gpu_data_out[7] = (ts_local_pe_46_a0_oe & ts_local_pe_46_a0_out ) | (ts_local_pe_46_a1_oe & ts_local_pe_46_a1_out ) | (ts_local_pe_46_a2_oe & ts_local_pe_46_a2_out ) | (ts_local_pe_46_a3_oe & ts_local_pe_46_a3_out ) | (ts_local_pe_46_a4_oe & ts_local_pe_46_a4_out ) | (ts_local_pe_46_a5_oe & ts_local_pe_46_a5_out ) | (ts_local_pe_46_a6_oe & ts_local_pe_46_a6_out ) | 1'b0;
assign gpu_data_oe[7] = ts_local_pe_46_a0_oe | ts_local_pe_46_a1_oe | ts_local_pe_46_a2_oe | ts_local_pe_46_a3_oe | ts_local_pe_46_a4_oe | ts_local_pe_46_a5_oe | ts_local_pe_46_a6_oe;
assign ts_local_pe_46_a0_in = gpu_data_in[7];
assign ts_local_pe_46_a1_in = gpu_data_in[7];
assign ts_local_pe_46_a2_in = gpu_data_in[7];
assign ts_local_pe_46_a3_in = gpu_data_in[7];
assign ts_local_pe_46_a4_in = gpu_data_in[7];
assign ts_local_pe_46_a5_in = gpu_data_in[7];
assign ts_local_pe_46_a6_in = gpu_data_in[7];

// --- Compiler-generated local PE for BUS gpu_data<8>
assign gpu_data_out[8] = (ts_local_pe_47_a0_oe & ts_local_pe_47_a0_out ) | (ts_local_pe_47_a1_oe & ts_local_pe_47_a1_out ) | (ts_local_pe_47_a2_oe & ts_local_pe_47_a2_out ) | (ts_local_pe_47_a3_oe & ts_local_pe_47_a3_out ) | (ts_local_pe_47_a4_oe & ts_local_pe_47_a4_out ) | (ts_local_pe_47_a5_oe & ts_local_pe_47_a5_out ) | (ts_local_pe_47_a6_oe & ts_local_pe_47_a6_out ) | 1'b0;
assign gpu_data_oe[8] = ts_local_pe_47_a0_oe | ts_local_pe_47_a1_oe | ts_local_pe_47_a2_oe | ts_local_pe_47_a3_oe | ts_local_pe_47_a4_oe | ts_local_pe_47_a5_oe | ts_local_pe_47_a6_oe;
assign ts_local_pe_47_a0_in = gpu_data_in[8];
assign ts_local_pe_47_a1_in = gpu_data_in[8];
assign ts_local_pe_47_a2_in = gpu_data_in[8];
assign ts_local_pe_47_a3_in = gpu_data_in[8];
assign ts_local_pe_47_a4_in = gpu_data_in[8];
assign ts_local_pe_47_a5_in = gpu_data_in[8];
assign ts_local_pe_47_a6_in = gpu_data_in[8];

// --- Compiler-generated local PE for BUS gpu_data<9>
assign gpu_data_out[9] = (ts_local_pe_48_a0_oe & ts_local_pe_48_a0_out ) | (ts_local_pe_48_a1_oe & ts_local_pe_48_a1_out ) | (ts_local_pe_48_a2_oe & ts_local_pe_48_a2_out ) | (ts_local_pe_48_a3_oe & ts_local_pe_48_a3_out ) | (ts_local_pe_48_a4_oe & ts_local_pe_48_a4_out ) | (ts_local_pe_48_a5_oe & ts_local_pe_48_a5_out ) | (ts_local_pe_48_a6_oe & ts_local_pe_48_a6_out ) | 1'b0;
assign gpu_data_oe[9] = ts_local_pe_48_a0_oe | ts_local_pe_48_a1_oe | ts_local_pe_48_a2_oe | ts_local_pe_48_a3_oe | ts_local_pe_48_a4_oe | ts_local_pe_48_a5_oe | ts_local_pe_48_a6_oe;
assign ts_local_pe_48_a0_in = gpu_data_in[9];
assign ts_local_pe_48_a1_in = gpu_data_in[9];
assign ts_local_pe_48_a2_in = gpu_data_in[9];
assign ts_local_pe_48_a3_in = gpu_data_in[9];
assign ts_local_pe_48_a4_in = gpu_data_in[9];
assign ts_local_pe_48_a5_in = gpu_data_in[9];
assign ts_local_pe_48_a6_in = gpu_data_in[9];

// --- Compiler-generated local PE for BUS gpu_data<10>
assign gpu_data_out[10] = (ts_local_pe_49_a0_oe & ts_local_pe_49_a0_out ) | (ts_local_pe_49_a1_oe & ts_local_pe_49_a1_out ) | (ts_local_pe_49_a2_oe & ts_local_pe_49_a2_out ) | (ts_local_pe_49_a3_oe & ts_local_pe_49_a3_out ) | (ts_local_pe_49_a4_oe & ts_local_pe_49_a4_out ) | (ts_local_pe_49_a5_oe & ts_local_pe_49_a5_out ) | (ts_local_pe_49_a6_oe & ts_local_pe_49_a6_out ) | 1'b0;
assign gpu_data_oe[10] = ts_local_pe_49_a0_oe | ts_local_pe_49_a1_oe | ts_local_pe_49_a2_oe | ts_local_pe_49_a3_oe | ts_local_pe_49_a4_oe | ts_local_pe_49_a5_oe | ts_local_pe_49_a6_oe;
assign ts_local_pe_49_a0_in = gpu_data_in[10];
assign ts_local_pe_49_a1_in = gpu_data_in[10];
assign ts_local_pe_49_a2_in = gpu_data_in[10];
assign ts_local_pe_49_a3_in = gpu_data_in[10];
assign ts_local_pe_49_a4_in = gpu_data_in[10];
assign ts_local_pe_49_a5_in = gpu_data_in[10];
assign ts_local_pe_49_a6_in = gpu_data_in[10];

// --- Compiler-generated local PE for BUS gpu_data<11>
assign gpu_data_out[11] = (ts_local_pe_50_a0_oe & ts_local_pe_50_a0_out ) | (ts_local_pe_50_a1_oe & ts_local_pe_50_a1_out ) | (ts_local_pe_50_a2_oe & ts_local_pe_50_a2_out ) | (ts_local_pe_50_a3_oe & ts_local_pe_50_a3_out ) | (ts_local_pe_50_a4_oe & ts_local_pe_50_a4_out ) | (ts_local_pe_50_a5_oe & ts_local_pe_50_a5_out ) | (ts_local_pe_50_a6_oe & ts_local_pe_50_a6_out ) | 1'b0;
assign gpu_data_oe[11] = ts_local_pe_50_a0_oe | ts_local_pe_50_a1_oe | ts_local_pe_50_a2_oe | ts_local_pe_50_a3_oe | ts_local_pe_50_a4_oe | ts_local_pe_50_a5_oe | ts_local_pe_50_a6_oe;
assign ts_local_pe_50_a0_in = gpu_data_in[11];
assign ts_local_pe_50_a1_in = gpu_data_in[11];
assign ts_local_pe_50_a2_in = gpu_data_in[11];
assign ts_local_pe_50_a3_in = gpu_data_in[11];
assign ts_local_pe_50_a4_in = gpu_data_in[11];
assign ts_local_pe_50_a5_in = gpu_data_in[11];
assign ts_local_pe_50_a6_in = gpu_data_in[11];

// --- Compiler-generated local PE for BUS gpu_data<12>
assign gpu_data_out[12] = (ts_local_pe_51_a0_oe & ts_local_pe_51_a0_out ) | (ts_local_pe_51_a1_oe & ts_local_pe_51_a1_out ) | (ts_local_pe_51_a2_oe & ts_local_pe_51_a2_out ) | (ts_local_pe_51_a3_oe & ts_local_pe_51_a3_out ) | (ts_local_pe_51_a4_oe & ts_local_pe_51_a4_out ) | (ts_local_pe_51_a5_oe & ts_local_pe_51_a5_out ) | (ts_local_pe_51_a6_oe & ts_local_pe_51_a6_out ) | 1'b0;
assign gpu_data_oe[12] = ts_local_pe_51_a0_oe | ts_local_pe_51_a1_oe | ts_local_pe_51_a2_oe | ts_local_pe_51_a3_oe | ts_local_pe_51_a4_oe | ts_local_pe_51_a5_oe | ts_local_pe_51_a6_oe;
assign ts_local_pe_51_a0_in = gpu_data_in[12];
assign ts_local_pe_51_a1_in = gpu_data_in[12];
assign ts_local_pe_51_a2_in = gpu_data_in[12];
assign ts_local_pe_51_a3_in = gpu_data_in[12];
assign ts_local_pe_51_a4_in = gpu_data_in[12];
assign ts_local_pe_51_a5_in = gpu_data_in[12];
assign ts_local_pe_51_a6_in = gpu_data_in[12];

// --- Compiler-generated local PE for BUS gpu_data<13>
assign gpu_data_out[13] = (ts_local_pe_52_a0_oe & ts_local_pe_52_a0_out ) | (ts_local_pe_52_a1_oe & ts_local_pe_52_a1_out ) | (ts_local_pe_52_a2_oe & ts_local_pe_52_a2_out ) | (ts_local_pe_52_a3_oe & ts_local_pe_52_a3_out ) | (ts_local_pe_52_a4_oe & ts_local_pe_52_a4_out ) | (ts_local_pe_52_a5_oe & ts_local_pe_52_a5_out ) | (ts_local_pe_52_a6_oe & ts_local_pe_52_a6_out ) | 1'b0;
assign gpu_data_oe[13] = ts_local_pe_52_a0_oe | ts_local_pe_52_a1_oe | ts_local_pe_52_a2_oe | ts_local_pe_52_a3_oe | ts_local_pe_52_a4_oe | ts_local_pe_52_a5_oe | ts_local_pe_52_a6_oe;
assign ts_local_pe_52_a0_in = gpu_data_in[13];
assign ts_local_pe_52_a1_in = gpu_data_in[13];
assign ts_local_pe_52_a2_in = gpu_data_in[13];
assign ts_local_pe_52_a3_in = gpu_data_in[13];
assign ts_local_pe_52_a4_in = gpu_data_in[13];
assign ts_local_pe_52_a5_in = gpu_data_in[13];
assign ts_local_pe_52_a6_in = gpu_data_in[13];

// --- Compiler-generated local PE for BUS gpu_data<14>
assign gpu_data_out[14] = (ts_local_pe_53_a0_oe & ts_local_pe_53_a0_out ) | (ts_local_pe_53_a1_oe & ts_local_pe_53_a1_out ) | (ts_local_pe_53_a2_oe & ts_local_pe_53_a2_out ) | (ts_local_pe_53_a3_oe & ts_local_pe_53_a3_out ) | (ts_local_pe_53_a4_oe & ts_local_pe_53_a4_out ) | (ts_local_pe_53_a5_oe & ts_local_pe_53_a5_out ) | (ts_local_pe_53_a6_oe & ts_local_pe_53_a6_out ) | 1'b0;
assign gpu_data_oe[14] = ts_local_pe_53_a0_oe | ts_local_pe_53_a1_oe | ts_local_pe_53_a2_oe | ts_local_pe_53_a3_oe | ts_local_pe_53_a4_oe | ts_local_pe_53_a5_oe | ts_local_pe_53_a6_oe;
assign ts_local_pe_53_a0_in = gpu_data_in[14];
assign ts_local_pe_53_a1_in = gpu_data_in[14];
assign ts_local_pe_53_a2_in = gpu_data_in[14];
assign ts_local_pe_53_a3_in = gpu_data_in[14];
assign ts_local_pe_53_a4_in = gpu_data_in[14];
assign ts_local_pe_53_a5_in = gpu_data_in[14];
assign ts_local_pe_53_a6_in = gpu_data_in[14];

// --- Compiler-generated local PE for BUS gpu_data<15>
assign gpu_data_out[15] = (ts_local_pe_54_a0_oe & ts_local_pe_54_a0_out ) | (ts_local_pe_54_a1_oe & ts_local_pe_54_a1_out ) | (ts_local_pe_54_a2_oe & ts_local_pe_54_a2_out ) | (ts_local_pe_54_a3_oe & ts_local_pe_54_a3_out ) | (ts_local_pe_54_a4_oe & ts_local_pe_54_a4_out ) | (ts_local_pe_54_a5_oe & ts_local_pe_54_a5_out ) | (ts_local_pe_54_a6_oe & ts_local_pe_54_a6_out ) | 1'b0;
assign gpu_data_oe[15] = ts_local_pe_54_a0_oe | ts_local_pe_54_a1_oe | ts_local_pe_54_a2_oe | ts_local_pe_54_a3_oe | ts_local_pe_54_a4_oe | ts_local_pe_54_a5_oe | ts_local_pe_54_a6_oe;
assign ts_local_pe_54_a0_in = gpu_data_in[15];
assign ts_local_pe_54_a1_in = gpu_data_in[15];
assign ts_local_pe_54_a2_in = gpu_data_in[15];
assign ts_local_pe_54_a3_in = gpu_data_in[15];
assign ts_local_pe_54_a4_in = gpu_data_in[15];
assign ts_local_pe_54_a5_in = gpu_data_in[15];
assign ts_local_pe_54_a6_in = gpu_data_in[15];

// --- Compiler-generated local PE for BUS gpu_data<16>
assign gpu_data_out[16] = (ts_local_pe_55_a0_oe & ts_local_pe_55_a0_out ) | (ts_local_pe_55_a1_oe & ts_local_pe_55_a1_out ) | (ts_local_pe_55_a2_oe & ts_local_pe_55_a2_out ) | (ts_local_pe_55_a3_oe & ts_local_pe_55_a3_out ) | (ts_local_pe_55_a4_oe & ts_local_pe_55_a4_out ) | (ts_local_pe_55_a5_oe & ts_local_pe_55_a5_out ) | (ts_local_pe_55_a6_oe & ts_local_pe_55_a6_out ) | 1'b0;
assign gpu_data_oe[16] = ts_local_pe_55_a0_oe | ts_local_pe_55_a1_oe | ts_local_pe_55_a2_oe | ts_local_pe_55_a3_oe | ts_local_pe_55_a4_oe | ts_local_pe_55_a5_oe | ts_local_pe_55_a6_oe;
assign ts_local_pe_55_a0_in = gpu_data_in[16];
assign ts_local_pe_55_a1_in = gpu_data_in[16];
assign ts_local_pe_55_a2_in = gpu_data_in[16];
assign ts_local_pe_55_a3_in = gpu_data_in[16];
assign ts_local_pe_55_a4_in = gpu_data_in[16];
assign ts_local_pe_55_a5_in = gpu_data_in[16];
assign ts_local_pe_55_a6_in = gpu_data_in[16];

// --- Compiler-generated local PE for BUS gpu_data<17>
assign gpu_data_out[17] = (ts_local_pe_56_a0_oe & ts_local_pe_56_a0_out ) | (ts_local_pe_56_a1_oe & ts_local_pe_56_a1_out ) | (ts_local_pe_56_a2_oe & ts_local_pe_56_a2_out ) | (ts_local_pe_56_a3_oe & ts_local_pe_56_a3_out ) | (ts_local_pe_56_a4_oe & ts_local_pe_56_a4_out ) | (ts_local_pe_56_a5_oe & ts_local_pe_56_a5_out ) | (ts_local_pe_56_a6_oe & ts_local_pe_56_a6_out ) | 1'b0;
assign gpu_data_oe[17] = ts_local_pe_56_a0_oe | ts_local_pe_56_a1_oe | ts_local_pe_56_a2_oe | ts_local_pe_56_a3_oe | ts_local_pe_56_a4_oe | ts_local_pe_56_a5_oe | ts_local_pe_56_a6_oe;
assign ts_local_pe_56_a0_in = gpu_data_in[17];
assign ts_local_pe_56_a1_in = gpu_data_in[17];
assign ts_local_pe_56_a2_in = gpu_data_in[17];
assign ts_local_pe_56_a3_in = gpu_data_in[17];
assign ts_local_pe_56_a4_in = gpu_data_in[17];
assign ts_local_pe_56_a5_in = gpu_data_in[17];
assign ts_local_pe_56_a6_in = gpu_data_in[17];

// --- Compiler-generated local PE for BUS gpu_data<18>
assign gpu_data_out[18] = (ts_local_pe_57_a0_oe & ts_local_pe_57_a0_out ) | (ts_local_pe_57_a1_oe & ts_local_pe_57_a1_out ) | (ts_local_pe_57_a2_oe & ts_local_pe_57_a2_out ) | (ts_local_pe_57_a3_oe & ts_local_pe_57_a3_out ) | (ts_local_pe_57_a4_oe & ts_local_pe_57_a4_out ) | (ts_local_pe_57_a5_oe & ts_local_pe_57_a5_out ) | (ts_local_pe_57_a6_oe & ts_local_pe_57_a6_out ) | 1'b0;
assign gpu_data_oe[18] = ts_local_pe_57_a0_oe | ts_local_pe_57_a1_oe | ts_local_pe_57_a2_oe | ts_local_pe_57_a3_oe | ts_local_pe_57_a4_oe | ts_local_pe_57_a5_oe | ts_local_pe_57_a6_oe;
assign ts_local_pe_57_a0_in = gpu_data_in[18];
assign ts_local_pe_57_a1_in = gpu_data_in[18];
assign ts_local_pe_57_a2_in = gpu_data_in[18];
assign ts_local_pe_57_a3_in = gpu_data_in[18];
assign ts_local_pe_57_a4_in = gpu_data_in[18];
assign ts_local_pe_57_a5_in = gpu_data_in[18];
assign ts_local_pe_57_a6_in = gpu_data_in[18];

// --- Compiler-generated local PE for BUS gpu_data<19>
assign gpu_data_out[19] = (ts_local_pe_58_a0_oe & ts_local_pe_58_a0_out ) | (ts_local_pe_58_a1_oe & ts_local_pe_58_a1_out ) | (ts_local_pe_58_a2_oe & ts_local_pe_58_a2_out ) | (ts_local_pe_58_a3_oe & ts_local_pe_58_a3_out ) | (ts_local_pe_58_a4_oe & ts_local_pe_58_a4_out ) | (ts_local_pe_58_a5_oe & ts_local_pe_58_a5_out ) | (ts_local_pe_58_a6_oe & ts_local_pe_58_a6_out ) | 1'b0;
assign gpu_data_oe[19] = ts_local_pe_58_a0_oe | ts_local_pe_58_a1_oe | ts_local_pe_58_a2_oe | ts_local_pe_58_a3_oe | ts_local_pe_58_a4_oe | ts_local_pe_58_a5_oe | ts_local_pe_58_a6_oe;
assign ts_local_pe_58_a0_in = gpu_data_in[19];
assign ts_local_pe_58_a1_in = gpu_data_in[19];
assign ts_local_pe_58_a2_in = gpu_data_in[19];
assign ts_local_pe_58_a3_in = gpu_data_in[19];
assign ts_local_pe_58_a4_in = gpu_data_in[19];
assign ts_local_pe_58_a5_in = gpu_data_in[19];
assign ts_local_pe_58_a6_in = gpu_data_in[19];

// --- Compiler-generated local PE for BUS gpu_data<20>
assign gpu_data_out[20] = (ts_local_pe_59_a0_oe & ts_local_pe_59_a0_out ) | (ts_local_pe_59_a1_oe & ts_local_pe_59_a1_out ) | (ts_local_pe_59_a2_oe & ts_local_pe_59_a2_out ) | (ts_local_pe_59_a3_oe & ts_local_pe_59_a3_out ) | (ts_local_pe_59_a4_oe & ts_local_pe_59_a4_out ) | (ts_local_pe_59_a5_oe & ts_local_pe_59_a5_out ) | (ts_local_pe_59_a6_oe & ts_local_pe_59_a6_out ) | 1'b0;
assign gpu_data_oe[20] = ts_local_pe_59_a0_oe | ts_local_pe_59_a1_oe | ts_local_pe_59_a2_oe | ts_local_pe_59_a3_oe | ts_local_pe_59_a4_oe | ts_local_pe_59_a5_oe | ts_local_pe_59_a6_oe;
assign ts_local_pe_59_a0_in = gpu_data_in[20];
assign ts_local_pe_59_a1_in = gpu_data_in[20];
assign ts_local_pe_59_a2_in = gpu_data_in[20];
assign ts_local_pe_59_a3_in = gpu_data_in[20];
assign ts_local_pe_59_a4_in = gpu_data_in[20];
assign ts_local_pe_59_a5_in = gpu_data_in[20];
assign ts_local_pe_59_a6_in = gpu_data_in[20];

// --- Compiler-generated local PE for BUS gpu_data<21>
assign gpu_data_out[21] = (ts_local_pe_60_a0_oe & ts_local_pe_60_a0_out ) | (ts_local_pe_60_a1_oe & ts_local_pe_60_a1_out ) | (ts_local_pe_60_a2_oe & ts_local_pe_60_a2_out ) | (ts_local_pe_60_a3_oe & ts_local_pe_60_a3_out ) | (ts_local_pe_60_a4_oe & ts_local_pe_60_a4_out ) | (ts_local_pe_60_a5_oe & ts_local_pe_60_a5_out ) | (ts_local_pe_60_a6_oe & ts_local_pe_60_a6_out ) | 1'b0;
assign gpu_data_oe[21] = ts_local_pe_60_a0_oe | ts_local_pe_60_a1_oe | ts_local_pe_60_a2_oe | ts_local_pe_60_a3_oe | ts_local_pe_60_a4_oe | ts_local_pe_60_a5_oe | ts_local_pe_60_a6_oe;
assign ts_local_pe_60_a0_in = gpu_data_in[21];
assign ts_local_pe_60_a1_in = gpu_data_in[21];
assign ts_local_pe_60_a2_in = gpu_data_in[21];
assign ts_local_pe_60_a3_in = gpu_data_in[21];
assign ts_local_pe_60_a4_in = gpu_data_in[21];
assign ts_local_pe_60_a5_in = gpu_data_in[21];
assign ts_local_pe_60_a6_in = gpu_data_in[21];

// --- Compiler-generated local PE for BUS gpu_data<22>
assign gpu_data_out[22] = (ts_local_pe_61_a0_oe & ts_local_pe_61_a0_out ) | (ts_local_pe_61_a1_oe & ts_local_pe_61_a1_out ) | (ts_local_pe_61_a2_oe & ts_local_pe_61_a2_out ) | (ts_local_pe_61_a3_oe & ts_local_pe_61_a3_out ) | (ts_local_pe_61_a4_oe & ts_local_pe_61_a4_out ) | (ts_local_pe_61_a5_oe & ts_local_pe_61_a5_out ) | (ts_local_pe_61_a6_oe & ts_local_pe_61_a6_out ) | 1'b0;
assign gpu_data_oe[22] = ts_local_pe_61_a0_oe | ts_local_pe_61_a1_oe | ts_local_pe_61_a2_oe | ts_local_pe_61_a3_oe | ts_local_pe_61_a4_oe | ts_local_pe_61_a5_oe | ts_local_pe_61_a6_oe;
assign ts_local_pe_61_a0_in = gpu_data_in[22];
assign ts_local_pe_61_a1_in = gpu_data_in[22];
assign ts_local_pe_61_a2_in = gpu_data_in[22];
assign ts_local_pe_61_a3_in = gpu_data_in[22];
assign ts_local_pe_61_a4_in = gpu_data_in[22];
assign ts_local_pe_61_a5_in = gpu_data_in[22];
assign ts_local_pe_61_a6_in = gpu_data_in[22];

// --- Compiler-generated local PE for BUS gpu_data<23>
assign gpu_data_out[23] = (ts_local_pe_62_a0_oe & ts_local_pe_62_a0_out ) | (ts_local_pe_62_a1_oe & ts_local_pe_62_a1_out ) | (ts_local_pe_62_a2_oe & ts_local_pe_62_a2_out ) | (ts_local_pe_62_a3_oe & ts_local_pe_62_a3_out ) | (ts_local_pe_62_a4_oe & ts_local_pe_62_a4_out ) | (ts_local_pe_62_a5_oe & ts_local_pe_62_a5_out ) | (ts_local_pe_62_a6_oe & ts_local_pe_62_a6_out ) | 1'b0;
assign gpu_data_oe[23] = ts_local_pe_62_a0_oe | ts_local_pe_62_a1_oe | ts_local_pe_62_a2_oe | ts_local_pe_62_a3_oe | ts_local_pe_62_a4_oe | ts_local_pe_62_a5_oe | ts_local_pe_62_a6_oe;
assign ts_local_pe_62_a0_in = gpu_data_in[23];
assign ts_local_pe_62_a1_in = gpu_data_in[23];
assign ts_local_pe_62_a2_in = gpu_data_in[23];
assign ts_local_pe_62_a3_in = gpu_data_in[23];
assign ts_local_pe_62_a4_in = gpu_data_in[23];
assign ts_local_pe_62_a5_in = gpu_data_in[23];
assign ts_local_pe_62_a6_in = gpu_data_in[23];

// --- Compiler-generated local PE for BUS gpu_data<24>
assign gpu_data_out[24] = (ts_local_pe_63_a0_oe & ts_local_pe_63_a0_out ) | (ts_local_pe_63_a1_oe & ts_local_pe_63_a1_out ) | (ts_local_pe_63_a2_oe & ts_local_pe_63_a2_out ) | (ts_local_pe_63_a3_oe & ts_local_pe_63_a3_out ) | (ts_local_pe_63_a4_oe & ts_local_pe_63_a4_out ) | (ts_local_pe_63_a5_oe & ts_local_pe_63_a5_out ) | (ts_local_pe_63_a6_oe & ts_local_pe_63_a6_out ) | 1'b0;
assign gpu_data_oe[24] = ts_local_pe_63_a0_oe | ts_local_pe_63_a1_oe | ts_local_pe_63_a2_oe | ts_local_pe_63_a3_oe | ts_local_pe_63_a4_oe | ts_local_pe_63_a5_oe | ts_local_pe_63_a6_oe;
assign ts_local_pe_63_a0_in = gpu_data_in[24];
assign ts_local_pe_63_a1_in = gpu_data_in[24];
assign ts_local_pe_63_a2_in = gpu_data_in[24];
assign ts_local_pe_63_a3_in = gpu_data_in[24];
assign ts_local_pe_63_a4_in = gpu_data_in[24];
assign ts_local_pe_63_a5_in = gpu_data_in[24];
assign ts_local_pe_63_a6_in = gpu_data_in[24];

// --- Compiler-generated local PE for BUS gpu_data<25>
assign gpu_data_out[25] = (ts_local_pe_64_a0_oe & ts_local_pe_64_a0_out ) | (ts_local_pe_64_a1_oe & ts_local_pe_64_a1_out ) | (ts_local_pe_64_a2_oe & ts_local_pe_64_a2_out ) | (ts_local_pe_64_a3_oe & ts_local_pe_64_a3_out ) | (ts_local_pe_64_a4_oe & ts_local_pe_64_a4_out ) | (ts_local_pe_64_a5_oe & ts_local_pe_64_a5_out ) | (ts_local_pe_64_a6_oe & ts_local_pe_64_a6_out ) | 1'b0;
assign gpu_data_oe[25] = ts_local_pe_64_a0_oe | ts_local_pe_64_a1_oe | ts_local_pe_64_a2_oe | ts_local_pe_64_a3_oe | ts_local_pe_64_a4_oe | ts_local_pe_64_a5_oe | ts_local_pe_64_a6_oe;
assign ts_local_pe_64_a0_in = gpu_data_in[25];
assign ts_local_pe_64_a1_in = gpu_data_in[25];
assign ts_local_pe_64_a2_in = gpu_data_in[25];
assign ts_local_pe_64_a3_in = gpu_data_in[25];
assign ts_local_pe_64_a4_in = gpu_data_in[25];
assign ts_local_pe_64_a5_in = gpu_data_in[25];
assign ts_local_pe_64_a6_in = gpu_data_in[25];

// --- Compiler-generated local PE for BUS gpu_data<26>
assign gpu_data_out[26] = (ts_local_pe_65_a0_oe & ts_local_pe_65_a0_out ) | (ts_local_pe_65_a1_oe & ts_local_pe_65_a1_out ) | (ts_local_pe_65_a2_oe & ts_local_pe_65_a2_out ) | (ts_local_pe_65_a3_oe & ts_local_pe_65_a3_out ) | (ts_local_pe_65_a4_oe & ts_local_pe_65_a4_out ) | (ts_local_pe_65_a5_oe & ts_local_pe_65_a5_out ) | (ts_local_pe_65_a6_oe & ts_local_pe_65_a6_out ) | 1'b0;
assign gpu_data_oe[26] = ts_local_pe_65_a0_oe | ts_local_pe_65_a1_oe | ts_local_pe_65_a2_oe | ts_local_pe_65_a3_oe | ts_local_pe_65_a4_oe | ts_local_pe_65_a5_oe | ts_local_pe_65_a6_oe;
assign ts_local_pe_65_a0_in = gpu_data_in[26];
assign ts_local_pe_65_a1_in = gpu_data_in[26];
assign ts_local_pe_65_a2_in = gpu_data_in[26];
assign ts_local_pe_65_a3_in = gpu_data_in[26];
assign ts_local_pe_65_a4_in = gpu_data_in[26];
assign ts_local_pe_65_a5_in = gpu_data_in[26];
assign ts_local_pe_65_a6_in = gpu_data_in[26];

// --- Compiler-generated local PE for BUS gpu_data<27>
assign gpu_data_out[27] = (ts_local_pe_66_a0_oe & ts_local_pe_66_a0_out ) | (ts_local_pe_66_a1_oe & ts_local_pe_66_a1_out ) | (ts_local_pe_66_a2_oe & ts_local_pe_66_a2_out ) | (ts_local_pe_66_a3_oe & ts_local_pe_66_a3_out ) | (ts_local_pe_66_a4_oe & ts_local_pe_66_a4_out ) | (ts_local_pe_66_a5_oe & ts_local_pe_66_a5_out ) | (ts_local_pe_66_a6_oe & ts_local_pe_66_a6_out ) | 1'b0;
assign gpu_data_oe[27] = ts_local_pe_66_a0_oe | ts_local_pe_66_a1_oe | ts_local_pe_66_a2_oe | ts_local_pe_66_a3_oe | ts_local_pe_66_a4_oe | ts_local_pe_66_a5_oe | ts_local_pe_66_a6_oe;
assign ts_local_pe_66_a0_in = gpu_data_in[27];
assign ts_local_pe_66_a1_in = gpu_data_in[27];
assign ts_local_pe_66_a2_in = gpu_data_in[27];
assign ts_local_pe_66_a3_in = gpu_data_in[27];
assign ts_local_pe_66_a4_in = gpu_data_in[27];
assign ts_local_pe_66_a5_in = gpu_data_in[27];
assign ts_local_pe_66_a6_in = gpu_data_in[27];

// --- Compiler-generated local PE for BUS gpu_data<28>
assign gpu_data_out[28] = (ts_local_pe_67_a0_oe & ts_local_pe_67_a0_out ) | (ts_local_pe_67_a1_oe & ts_local_pe_67_a1_out ) | (ts_local_pe_67_a2_oe & ts_local_pe_67_a2_out ) | (ts_local_pe_67_a3_oe & ts_local_pe_67_a3_out ) | (ts_local_pe_67_a4_oe & ts_local_pe_67_a4_out ) | (ts_local_pe_67_a5_oe & ts_local_pe_67_a5_out ) | (ts_local_pe_67_a6_oe & ts_local_pe_67_a6_out ) | 1'b0;
assign gpu_data_oe[28] = ts_local_pe_67_a0_oe | ts_local_pe_67_a1_oe | ts_local_pe_67_a2_oe | ts_local_pe_67_a3_oe | ts_local_pe_67_a4_oe | ts_local_pe_67_a5_oe | ts_local_pe_67_a6_oe;
assign ts_local_pe_67_a0_in = gpu_data_in[28];
assign ts_local_pe_67_a1_in = gpu_data_in[28];
assign ts_local_pe_67_a2_in = gpu_data_in[28];
assign ts_local_pe_67_a3_in = gpu_data_in[28];
assign ts_local_pe_67_a4_in = gpu_data_in[28];
assign ts_local_pe_67_a5_in = gpu_data_in[28];
assign ts_local_pe_67_a6_in = gpu_data_in[28];

// --- Compiler-generated local PE for BUS gpu_data<29>
assign gpu_data_out[29] = (ts_local_pe_68_a0_oe & ts_local_pe_68_a0_out ) | (ts_local_pe_68_a1_oe & ts_local_pe_68_a1_out ) | (ts_local_pe_68_a2_oe & ts_local_pe_68_a2_out ) | (ts_local_pe_68_a3_oe & ts_local_pe_68_a3_out ) | (ts_local_pe_68_a4_oe & ts_local_pe_68_a4_out ) | (ts_local_pe_68_a5_oe & ts_local_pe_68_a5_out ) | (ts_local_pe_68_a6_oe & ts_local_pe_68_a6_out ) | 1'b0;
assign gpu_data_oe[29] = ts_local_pe_68_a0_oe | ts_local_pe_68_a1_oe | ts_local_pe_68_a2_oe | ts_local_pe_68_a3_oe | ts_local_pe_68_a4_oe | ts_local_pe_68_a5_oe | ts_local_pe_68_a6_oe;
assign ts_local_pe_68_a0_in = gpu_data_in[29];
assign ts_local_pe_68_a1_in = gpu_data_in[29];
assign ts_local_pe_68_a2_in = gpu_data_in[29];
assign ts_local_pe_68_a3_in = gpu_data_in[29];
assign ts_local_pe_68_a4_in = gpu_data_in[29];
assign ts_local_pe_68_a5_in = gpu_data_in[29];
assign ts_local_pe_68_a6_in = gpu_data_in[29];

// --- Compiler-generated local PE for BUS gpu_data<30>
assign gpu_data_out[30] = (ts_local_pe_69_a0_oe & ts_local_pe_69_a0_out ) | (ts_local_pe_69_a1_oe & ts_local_pe_69_a1_out ) | (ts_local_pe_69_a2_oe & ts_local_pe_69_a2_out ) | (ts_local_pe_69_a3_oe & ts_local_pe_69_a3_out ) | (ts_local_pe_69_a4_oe & ts_local_pe_69_a4_out ) | (ts_local_pe_69_a5_oe & ts_local_pe_69_a5_out ) | (ts_local_pe_69_a6_oe & ts_local_pe_69_a6_out ) | 1'b0;
assign gpu_data_oe[30] = ts_local_pe_69_a0_oe | ts_local_pe_69_a1_oe | ts_local_pe_69_a2_oe | ts_local_pe_69_a3_oe | ts_local_pe_69_a4_oe | ts_local_pe_69_a5_oe | ts_local_pe_69_a6_oe;
assign ts_local_pe_69_a0_in = gpu_data_in[30];
assign ts_local_pe_69_a1_in = gpu_data_in[30];
assign ts_local_pe_69_a2_in = gpu_data_in[30];
assign ts_local_pe_69_a3_in = gpu_data_in[30];
assign ts_local_pe_69_a4_in = gpu_data_in[30];
assign ts_local_pe_69_a5_in = gpu_data_in[30];
assign ts_local_pe_69_a6_in = gpu_data_in[30];

// --- Compiler-generated local PE for BUS gpu_data<31>
assign gpu_data_out[31] = (ts_local_pe_70_a0_oe & ts_local_pe_70_a0_out ) | (ts_local_pe_70_a1_oe & ts_local_pe_70_a1_out ) | (ts_local_pe_70_a2_oe & ts_local_pe_70_a2_out ) | (ts_local_pe_70_a3_oe & ts_local_pe_70_a3_out ) | (ts_local_pe_70_a4_oe & ts_local_pe_70_a4_out ) | (ts_local_pe_70_a5_oe & ts_local_pe_70_a5_out ) | (ts_local_pe_70_a6_oe & ts_local_pe_70_a6_out ) | 1'b0;
assign gpu_data_oe[31] = ts_local_pe_70_a0_oe | ts_local_pe_70_a1_oe | ts_local_pe_70_a2_oe | ts_local_pe_70_a3_oe | ts_local_pe_70_a4_oe | ts_local_pe_70_a5_oe | ts_local_pe_70_a6_oe;
assign ts_local_pe_70_a0_in = gpu_data_in[31];
assign ts_local_pe_70_a1_in = gpu_data_in[31];
assign ts_local_pe_70_a2_in = gpu_data_in[31];
assign ts_local_pe_70_a3_in = gpu_data_in[31];
assign ts_local_pe_70_a4_in = gpu_data_in[31];
assign ts_local_pe_70_a5_in = gpu_data_in[31];
assign ts_local_pe_70_a6_in = gpu_data_in[31];

// --- Compiler-generated local PE for BUS gpu_dout[0]
assign gpu_dout_0_out = (ts_local_pe_71_a0_oe & ts_local_pe_71_a0_out ) | (ts_local_pe_71_a1_oe & ts_local_pe_71_a1_out ) | (ts_local_pe_71_a2_oe & ts_local_pe_71_a2_out ) | 1'b0;
assign gpu_dout_0_oe = ts_local_pe_71_a0_oe | ts_local_pe_71_a1_oe | ts_local_pe_71_a2_oe;
assign ts_local_pe_71_a0_in = gpu_dout_0_in;
assign ts_local_pe_71_a1_in = gpu_dout_0_in;
assign ts_local_pe_71_a2_in = gpu_dout_0_in;

// --- Compiler-generated local PE for BUS gpu_dout[1]
assign gpu_dout_1_out = (ts_local_pe_72_a0_oe & ts_local_pe_72_a0_out ) | (ts_local_pe_72_a1_oe & ts_local_pe_72_a1_out ) | (ts_local_pe_72_a2_oe & ts_local_pe_72_a2_out ) | 1'b0;
assign gpu_dout_1_oe = ts_local_pe_72_a0_oe | ts_local_pe_72_a1_oe | ts_local_pe_72_a2_oe;
assign ts_local_pe_72_a0_in = gpu_dout_1_in;
assign ts_local_pe_72_a1_in = gpu_dout_1_in;
assign ts_local_pe_72_a2_in = gpu_dout_1_in;

// --- Compiler-generated local PE for BUS gpu_dout[2]
assign gpu_dout_2_out = (ts_local_pe_73_a0_oe & ts_local_pe_73_a0_out ) | (ts_local_pe_73_a1_oe & ts_local_pe_73_a1_out ) | (ts_local_pe_73_a2_oe & ts_local_pe_73_a2_out ) | 1'b0;
assign gpu_dout_2_oe = ts_local_pe_73_a0_oe | ts_local_pe_73_a1_oe | ts_local_pe_73_a2_oe;
assign ts_local_pe_73_a0_in = gpu_dout_2_in;
assign ts_local_pe_73_a1_in = gpu_dout_2_in;
assign ts_local_pe_73_a2_in = gpu_dout_2_in;

// --- Compiler-generated local PE for BUS gpu_dout[3]
assign gpu_dout_3_out = (ts_local_pe_74_a0_oe & ts_local_pe_74_a0_out ) | (ts_local_pe_74_a1_oe & ts_local_pe_74_a1_out ) | (ts_local_pe_74_a2_oe & ts_local_pe_74_a2_out ) | 1'b0;
assign gpu_dout_3_oe = ts_local_pe_74_a0_oe | ts_local_pe_74_a1_oe | ts_local_pe_74_a2_oe;
assign ts_local_pe_74_a0_in = gpu_dout_3_in;
assign ts_local_pe_74_a1_in = gpu_dout_3_in;
assign ts_local_pe_74_a2_in = gpu_dout_3_in;

// --- Compiler-generated local PE for BUS gpu_dout[4]
assign gpu_dout_4_out = (ts_local_pe_75_a0_oe & ts_local_pe_75_a0_out ) | (ts_local_pe_75_a1_oe & ts_local_pe_75_a1_out ) | (ts_local_pe_75_a2_oe & ts_local_pe_75_a2_out ) | 1'b0;
assign gpu_dout_4_oe = ts_local_pe_75_a0_oe | ts_local_pe_75_a1_oe | ts_local_pe_75_a2_oe;
assign ts_local_pe_75_a0_in = gpu_dout_4_in;
assign ts_local_pe_75_a1_in = gpu_dout_4_in;
assign ts_local_pe_75_a2_in = gpu_dout_4_in;

// --- Compiler-generated local PE for BUS gpu_dout[5]
assign gpu_dout_5_out = (ts_local_pe_76_a0_oe & ts_local_pe_76_a0_out ) | (ts_local_pe_76_a1_oe & ts_local_pe_76_a1_out ) | (ts_local_pe_76_a2_oe & ts_local_pe_76_a2_out ) | 1'b0;
assign gpu_dout_5_oe = ts_local_pe_76_a0_oe | ts_local_pe_76_a1_oe | ts_local_pe_76_a2_oe;
assign ts_local_pe_76_a0_in = gpu_dout_5_in;
assign ts_local_pe_76_a1_in = gpu_dout_5_in;
assign ts_local_pe_76_a2_in = gpu_dout_5_in;

// --- Compiler-generated local PE for BUS gpu_dout[6]
assign gpu_dout_6_out = (ts_local_pe_77_a0_oe & ts_local_pe_77_a0_out ) | (ts_local_pe_77_a1_oe & ts_local_pe_77_a1_out ) | 1'b0;
assign gpu_dout_6_oe = ts_local_pe_77_a0_oe | ts_local_pe_77_a1_oe;
assign ts_local_pe_77_a0_in = gpu_dout_6_in;
assign ts_local_pe_77_a1_in = gpu_dout_6_in;

// --- Compiler-generated local PE for BUS gpu_dout[7]
assign gpu_dout_7_out = (ts_local_pe_78_a0_oe & ts_local_pe_78_a0_out ) | (ts_local_pe_78_a1_oe & ts_local_pe_78_a1_out ) | 1'b0;
assign gpu_dout_7_oe = ts_local_pe_78_a0_oe | ts_local_pe_78_a1_oe;
assign ts_local_pe_78_a0_in = gpu_dout_7_in;
assign ts_local_pe_78_a1_in = gpu_dout_7_in;

// --- Compiler-generated local PE for BUS gpu_dout[8]
assign gpu_dout_8_out = (ts_local_pe_79_a0_oe & ts_local_pe_79_a0_out ) | (ts_local_pe_79_a1_oe & ts_local_pe_79_a1_out ) | 1'b0;
assign gpu_dout_8_oe = ts_local_pe_79_a0_oe | ts_local_pe_79_a1_oe;
assign ts_local_pe_79_a0_in = gpu_dout_8_in;
assign ts_local_pe_79_a1_in = gpu_dout_8_in;

// --- Compiler-generated local PE for BUS gpu_dout[9]
assign gpu_dout_9_out = (ts_local_pe_80_a0_oe & ts_local_pe_80_a0_out ) | (ts_local_pe_80_a1_oe & ts_local_pe_80_a1_out ) | 1'b0;
assign gpu_dout_9_oe = ts_local_pe_80_a0_oe | ts_local_pe_80_a1_oe;
assign ts_local_pe_80_a0_in = gpu_dout_9_in;
assign ts_local_pe_80_a1_in = gpu_dout_9_in;

// --- Compiler-generated local PE for BUS gpu_dout[10]
assign gpu_dout_10_out = (ts_local_pe_81_a0_oe & ts_local_pe_81_a0_out ) | (ts_local_pe_81_a1_oe & ts_local_pe_81_a1_out ) | 1'b0;
assign gpu_dout_10_oe = ts_local_pe_81_a0_oe | ts_local_pe_81_a1_oe;
assign ts_local_pe_81_a0_in = gpu_dout_10_in;
assign ts_local_pe_81_a1_in = gpu_dout_10_in;

// --- Compiler-generated local PE for BUS gpu_dout[11]
assign gpu_dout_11_out = (ts_local_pe_82_a0_oe & ts_local_pe_82_a0_out ) | (ts_local_pe_82_a1_oe & ts_local_pe_82_a1_out ) | (ts_local_pe_82_a2_oe & ts_local_pe_82_a2_out ) | 1'b0;
assign gpu_dout_11_oe = ts_local_pe_82_a0_oe | ts_local_pe_82_a1_oe | ts_local_pe_82_a2_oe;
assign ts_local_pe_82_a0_in = gpu_dout_11_in;
assign ts_local_pe_82_a1_in = gpu_dout_11_in;
assign ts_local_pe_82_a2_in = gpu_dout_11_in;

// --- Compiler-generated local PE for BUS gpu_dout[12]
assign gpu_dout_12_out = (ts_local_pe_83_a0_oe & ts_local_pe_83_a0_out ) | (ts_local_pe_83_a1_oe & ts_local_pe_83_a1_out ) | (ts_local_pe_83_a2_oe & ts_local_pe_83_a2_out ) | 1'b0;
assign gpu_dout_12_oe = ts_local_pe_83_a0_oe | ts_local_pe_83_a1_oe | ts_local_pe_83_a2_oe;
assign ts_local_pe_83_a0_in = gpu_dout_12_in;
assign ts_local_pe_83_a1_in = gpu_dout_12_in;
assign ts_local_pe_83_a2_in = gpu_dout_12_in;

// --- Compiler-generated local PE for BUS gpu_dout[13]
assign gpu_dout_13_out = (ts_local_pe_84_a0_oe & ts_local_pe_84_a0_out ) | (ts_local_pe_84_a1_oe & ts_local_pe_84_a1_out ) | (ts_local_pe_84_a2_oe & ts_local_pe_84_a2_out ) | 1'b0;
assign gpu_dout_13_oe = ts_local_pe_84_a0_oe | ts_local_pe_84_a1_oe | ts_local_pe_84_a2_oe;
assign ts_local_pe_84_a0_in = gpu_dout_13_in;
assign ts_local_pe_84_a1_in = gpu_dout_13_in;
assign ts_local_pe_84_a2_in = gpu_dout_13_in;

// --- Compiler-generated local PE for BUS gpu_dout[14]
assign gpu_dout_14_out = (ts_local_pe_85_a0_oe & ts_local_pe_85_a0_out ) | (ts_local_pe_85_a1_oe & ts_local_pe_85_a1_out ) | (ts_local_pe_85_a2_oe & ts_local_pe_85_a2_out ) | 1'b0;
assign gpu_dout_14_oe = ts_local_pe_85_a0_oe | ts_local_pe_85_a1_oe | ts_local_pe_85_a2_oe;
assign ts_local_pe_85_a0_in = gpu_dout_14_in;
assign ts_local_pe_85_a1_in = gpu_dout_14_in;
assign ts_local_pe_85_a2_in = gpu_dout_14_in;

// --- Compiler-generated local PE for BUS gpu_dout[15]
assign gpu_dout_15_out = (ts_local_pe_86_a0_oe & ts_local_pe_86_a0_out ) | (ts_local_pe_86_a1_oe & ts_local_pe_86_a1_out ) | (ts_local_pe_86_a2_oe & ts_local_pe_86_a2_out ) | 1'b0;
assign gpu_dout_15_oe = ts_local_pe_86_a0_oe | ts_local_pe_86_a1_oe | ts_local_pe_86_a2_oe;
assign ts_local_pe_86_a0_in = gpu_dout_15_in;
assign ts_local_pe_86_a1_in = gpu_dout_15_in;
assign ts_local_pe_86_a2_in = gpu_dout_15_in;

// --- Compiler-generated local PE for BUS gpu_dout[16]
assign gpu_dout_16_out = (ts_local_pe_87_a0_oe & ts_local_pe_87_a0_out ) | (ts_local_pe_87_a1_oe & ts_local_pe_87_a1_out ) | 1'b0;
assign gpu_dout_16_oe = ts_local_pe_87_a0_oe | ts_local_pe_87_a1_oe;
assign ts_local_pe_87_a0_in = gpu_dout_16_in;
assign ts_local_pe_87_a1_in = gpu_dout_16_in;

// --- Compiler-generated local PE for BUS gpu_dout[17]
assign gpu_dout_17_out = (ts_local_pe_88_a0_oe & ts_local_pe_88_a0_out ) | (ts_local_pe_88_a1_oe & ts_local_pe_88_a1_out ) | 1'b0;
assign gpu_dout_17_oe = ts_local_pe_88_a0_oe | ts_local_pe_88_a1_oe;
assign ts_local_pe_88_a0_in = gpu_dout_17_in;
assign ts_local_pe_88_a1_in = gpu_dout_17_in;

// --- Compiler-generated local PE for BUS gpu_dout[18]
assign gpu_dout_18_out = (ts_local_pe_89_a0_oe & ts_local_pe_89_a0_out ) | (ts_local_pe_89_a1_oe & ts_local_pe_89_a1_out ) | 1'b0;
assign gpu_dout_18_oe = ts_local_pe_89_a0_oe | ts_local_pe_89_a1_oe;
assign ts_local_pe_89_a0_in = gpu_dout_18_in;
assign ts_local_pe_89_a1_in = gpu_dout_18_in;

// --- Compiler-generated local PE for BUS gpu_dout[19]
assign gpu_dout_19_out = (ts_local_pe_90_a0_oe & ts_local_pe_90_a0_out ) | (ts_local_pe_90_a1_oe & ts_local_pe_90_a1_out ) | 1'b0;
assign gpu_dout_19_oe = ts_local_pe_90_a0_oe | ts_local_pe_90_a1_oe;
assign ts_local_pe_90_a0_in = gpu_dout_19_in;
assign ts_local_pe_90_a1_in = gpu_dout_19_in;

// --- Compiler-generated local PE for BUS gpu_dout[20]
assign gpu_dout_20_out = (ts_local_pe_91_a0_oe & ts_local_pe_91_a0_out ) | (ts_local_pe_91_a1_oe & ts_local_pe_91_a1_out ) | 1'b0;
assign gpu_dout_20_oe = ts_local_pe_91_a0_oe | ts_local_pe_91_a1_oe;
assign ts_local_pe_91_a0_in = gpu_dout_20_in;
assign ts_local_pe_91_a1_in = gpu_dout_20_in;

// --- Compiler-generated local PE for BUS gpu_dout[21]
assign gpu_dout_21_out = (ts_local_pe_92_a0_oe & ts_local_pe_92_a0_out ) | (ts_local_pe_92_a1_oe & ts_local_pe_92_a1_out ) | 1'b0;
assign gpu_dout_21_oe = ts_local_pe_92_a0_oe | ts_local_pe_92_a1_oe;
assign ts_local_pe_92_a0_in = gpu_dout_21_in;
assign ts_local_pe_92_a1_in = gpu_dout_21_in;

// --- Compiler-generated local PE for BUS gpu_dout[22]
assign gpu_dout_22_out = (ts_local_pe_93_a0_oe & ts_local_pe_93_a0_out ) | (ts_local_pe_93_a1_oe & ts_local_pe_93_a1_out ) | 1'b0;
assign gpu_dout_22_oe = ts_local_pe_93_a0_oe | ts_local_pe_93_a1_oe;
assign ts_local_pe_93_a0_in = gpu_dout_22_in;
assign ts_local_pe_93_a1_in = gpu_dout_22_in;

// --- Compiler-generated local PE for BUS gpu_dout[23]
assign gpu_dout_23_out = (ts_local_pe_94_a0_oe & ts_local_pe_94_a0_out ) | (ts_local_pe_94_a1_oe & ts_local_pe_94_a1_out ) | 1'b0;
assign gpu_dout_23_oe = ts_local_pe_94_a0_oe | ts_local_pe_94_a1_oe;
assign ts_local_pe_94_a0_in = gpu_dout_23_in;
assign ts_local_pe_94_a1_in = gpu_dout_23_in;

// --- Compiler-generated local PE for BUS gpu_dout[24]
assign gpu_dout_24_out = (ts_local_pe_95_a0_oe & ts_local_pe_95_a0_out ) | (ts_local_pe_95_a1_oe & ts_local_pe_95_a1_out ) | 1'b0;
assign gpu_dout_24_oe = ts_local_pe_95_a0_oe | ts_local_pe_95_a1_oe;
assign ts_local_pe_95_a0_in = gpu_dout_24_in;
assign ts_local_pe_95_a1_in = gpu_dout_24_in;

// --- Compiler-generated local PE for BUS gpu_dout[25]
assign gpu_dout_25_out = (ts_local_pe_96_a0_oe & ts_local_pe_96_a0_out ) | (ts_local_pe_96_a1_oe & ts_local_pe_96_a1_out ) | 1'b0;
assign gpu_dout_25_oe = ts_local_pe_96_a0_oe | ts_local_pe_96_a1_oe;
assign ts_local_pe_96_a0_in = gpu_dout_25_in;
assign ts_local_pe_96_a1_in = gpu_dout_25_in;

// --- Compiler-generated local PE for BUS gpu_dout[26]
assign gpu_dout_26_out = (ts_local_pe_97_a0_oe & ts_local_pe_97_a0_out ) | (ts_local_pe_97_a1_oe & ts_local_pe_97_a1_out ) | 1'b0;
assign gpu_dout_26_oe = ts_local_pe_97_a0_oe | ts_local_pe_97_a1_oe;
assign ts_local_pe_97_a0_in = gpu_dout_26_in;
assign ts_local_pe_97_a1_in = gpu_dout_26_in;

// --- Compiler-generated local PE for BUS gpu_dout[27]
assign gpu_dout_27_out = (ts_local_pe_98_a0_oe & ts_local_pe_98_a0_out ) | (ts_local_pe_98_a1_oe & ts_local_pe_98_a1_out ) | 1'b0;
assign gpu_dout_27_oe = ts_local_pe_98_a0_oe | ts_local_pe_98_a1_oe;
assign ts_local_pe_98_a0_in = gpu_dout_27_in;
assign ts_local_pe_98_a1_in = gpu_dout_27_in;

// --- Compiler-generated local PE for BUS gpu_dout[28]
assign gpu_dout_28_out = (ts_local_pe_99_a0_oe & ts_local_pe_99_a0_out ) | (ts_local_pe_99_a1_oe & ts_local_pe_99_a1_out ) | 1'b0;
assign gpu_dout_28_oe = ts_local_pe_99_a0_oe | ts_local_pe_99_a1_oe;
assign ts_local_pe_99_a0_in = gpu_dout_28_in;
assign ts_local_pe_99_a1_in = gpu_dout_28_in;

// --- Compiler-generated local PE for BUS gpu_dout[29]
assign gpu_dout_29_out = (ts_local_pe_100_a0_oe & ts_local_pe_100_a0_out ) | (ts_local_pe_100_a1_oe & ts_local_pe_100_a1_out ) | 1'b0;
assign gpu_dout_29_oe = ts_local_pe_100_a0_oe | ts_local_pe_100_a1_oe;
assign ts_local_pe_100_a0_in = gpu_dout_29_in;
assign ts_local_pe_100_a1_in = gpu_dout_29_in;

// --- Compiler-generated local PE for BUS gpu_dout[30]
assign gpu_dout_30_out = (ts_local_pe_101_a0_oe & ts_local_pe_101_a0_out ) | (ts_local_pe_101_a1_oe & ts_local_pe_101_a1_out ) | 1'b0;
assign gpu_dout_30_oe = ts_local_pe_101_a0_oe | ts_local_pe_101_a1_oe;
assign ts_local_pe_101_a0_in = gpu_dout_30_in;
assign ts_local_pe_101_a1_in = gpu_dout_30_in;

// --- Compiler-generated local PE for BUS gpu_dout[31]
assign gpu_dout_31_out = (ts_local_pe_102_a0_oe & ts_local_pe_102_a0_out ) | (ts_local_pe_102_a1_oe & ts_local_pe_102_a1_out ) | 1'b0;
assign gpu_dout_31_oe = ts_local_pe_102_a0_oe | ts_local_pe_102_a1_oe;
assign ts_local_pe_102_a0_in = gpu_dout_31_in;
assign ts_local_pe_102_a1_in = gpu_dout_31_in;

// --- Compiler-generated local LB for BUS gpu_data<16>
assign gpu_data_in[16] = gpu_data_out[16];

// --- Compiler-generated local LB for BUS gpu_data<17>
assign gpu_data_in[17] = gpu_data_out[17];

// --- Compiler-generated local LB for BUS gpu_data<18>
assign gpu_data_in[18] = gpu_data_out[18];

// --- Compiler-generated local LB for BUS gpu_data<19>
assign gpu_data_in[19] = gpu_data_out[19];

// --- Compiler-generated local LB for BUS gpu_data<20>
assign gpu_data_in[20] = gpu_data_out[20];

// --- Compiler-generated local LB for BUS gpu_data<21>
assign gpu_data_in[21] = gpu_data_out[21];

// --- Compiler-generated local LB for BUS gpu_data<22>
assign gpu_data_in[22] = gpu_data_out[22];

// --- Compiler-generated local LB for BUS gpu_data<23>
assign gpu_data_in[23] = gpu_data_out[23];

// --- Compiler-generated local LB for BUS gpu_data<24>
assign gpu_data_in[24] = gpu_data_out[24];

// --- Compiler-generated local LB for BUS gpu_data<25>
assign gpu_data_in[25] = gpu_data_out[25];

// --- Compiler-generated local LB for BUS gpu_data<26>
assign gpu_data_in[26] = gpu_data_out[26];

// --- Compiler-generated local LB for BUS gpu_data<27>
assign gpu_data_in[27] = gpu_data_out[27];

// --- Compiler-generated local LB for BUS gpu_data<28>
assign gpu_data_in[28] = gpu_data_out[28];

// --- Compiler-generated local LB for BUS gpu_data<29>
assign gpu_data_in[29] = gpu_data_out[29];

// --- Compiler-generated local LB for BUS gpu_data<30>
assign gpu_data_in[30] = gpu_data_out[30];

// --- Compiler-generated local LB for BUS gpu_data<31>
assign gpu_data_in[31] = gpu_data_out[31];
endmodule
/* verilator lint_on LITENDIAN */
