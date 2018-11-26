/* verilator lint_off LITENDIAN */
`include "defs.v"

module graphics
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
	input dwrite_0,
	input dwrite_1,
	input dwrite_2,
	input dwrite_3,
	input dwrite_4,
	input dwrite_5,
	input dwrite_6,
	input dwrite_7,
	input dwrite_8,
	input dwrite_9,
	input dwrite_10,
	input dwrite_11,
	input dwrite_12,
	input dwrite_13,
	input dwrite_14,
	input dwrite_15,
	input dwrite_16,
	input dwrite_17,
	input dwrite_18,
	input dwrite_19,
	input dwrite_20,
	input dwrite_21,
	input dwrite_22,
	input dwrite_23,
	input dwrite_24,
	input dwrite_25,
	input dwrite_26,
	input dwrite_27,
	input dwrite_28,
	input dwrite_29,
	input dwrite_30,
	input dwrite_31,
	input ack,
	input blit_back,
	input gpu_back,
	input reset_n,
	input clk,
	input tlw,
	input dint,
	input gpu_irq_3,
	input gpu_irq_2,
	input iord,
	input iowr,
	input reset_lock,
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
	input at_1,
	output blit_breq_0,
	output blit_breq_1,
	output gpu_breq,
	output dma_breq,
	output cpu_int,
	output lock,
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
	output a_0_out,
	output a_0_oe,
	input a_0_in,
	output a_1_out,
	output a_1_oe,
	input a_1_in,
	output a_2_out,
	output a_2_oe,
	input a_2_in,
	output a_3_out,
	output a_3_oe,
	input a_3_in,
	output a_4_out,
	output a_4_oe,
	input a_4_in,
	output a_5_out,
	output a_5_oe,
	input a_5_in,
	output a_6_out,
	output a_6_oe,
	input a_6_in,
	output a_7_out,
	output a_7_oe,
	input a_7_in,
	output a_8_out,
	output a_8_oe,
	input a_8_in,
	output a_9_out,
	output a_9_oe,
	input a_9_in,
	output a_10_out,
	output a_10_oe,
	input a_10_in,
	output a_11_out,
	output a_11_oe,
	input a_11_in,
	output a_12_out,
	output a_12_oe,
	input a_12_in,
	output a_13_out,
	output a_13_oe,
	input a_13_in,
	output a_14_out,
	output a_14_oe,
	input a_14_in,
	output a_15_out,
	output a_15_oe,
	input a_15_in,
	output a_16_out,
	output a_16_oe,
	input a_16_in,
	output a_17_out,
	output a_17_oe,
	input a_17_in,
	output a_18_out,
	output a_18_oe,
	input a_18_in,
	output a_19_out,
	output a_19_oe,
	input a_19_in,
	output a_20_out,
	output a_20_oe,
	input a_20_in,
	output a_21_out,
	output a_21_oe,
	input a_21_in,
	output a_22_out,
	output a_22_oe,
	input a_22_in,
	output a_23_out,
	output a_23_oe,
	input a_23_in,
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
	output read_out,
	output read_oe,
	input read_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
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
	output justify_out,
	output justify_oe,
	input justify_in,
	input sys_clk // Generated
);
wire [0:3] width;
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
wire [0:15] dread_out;
wire [0:15] dread_oe;
wire [0:15] dread_in;
wire [0:23] address_out;
wire [0:23] address_oe;
wire [0:23] address_in;
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
wire dintd;
wire dintd_n;
wire clk_11;
wire gpu_irq_1;
wire resetl_4;
wire resetl_5;
wire resetl_6;
wire resetl_7;
wire resetl_8;
wire resetl_9;
wire resetl_10;
wire resetl_11;
wire resetl_12;
wire clk_5;
wire clk_6;
wire clk_7;
wire clk_8;
wire clk_9;
wire clk_10;
wire clk_15;
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
wire satsz_0;
wire satsz_1;
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
wire gpu_irq_4;
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
wire divwr;
wire remrd;
wire big_io;
wire big_pix;
wire bliten;
wire ctrlwr;
wire ctrlwrgo;
wire gateack;
wire gpu_memw;
wire hidrd;
wire hidwr;
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
wire ramen;
wire gatereq;
wire ioreq;
wire bus_hog;
wire ts_pe_69_a0_out;
wire ts_pe_69_a0_oe;
wire ts_pe_69_a0_in;
wire ts_pe_69_a1_out;
wire ts_pe_69_a1_oe;
wire ts_pe_69_a1_in;
wire ts_pe_70_a0_out;
wire ts_pe_70_a0_oe;
wire ts_pe_70_a0_in;
wire ts_pe_70_a1_out;
wire ts_pe_70_a1_oe;
wire ts_pe_70_a1_in;
wire ts_pe_71_a0_out;
wire ts_pe_71_a0_oe;
wire ts_pe_71_a0_in;
wire ts_pe_71_a1_out;
wire ts_pe_71_a1_oe;
wire ts_pe_71_a1_in;
wire ts_pe_72_a0_out;
wire ts_pe_72_a0_oe;
wire ts_pe_72_a0_in;
wire ts_pe_72_a1_out;
wire ts_pe_72_a1_oe;
wire ts_pe_72_a1_in;
wire ts_pe_73_a0_out;
wire ts_pe_73_a0_oe;
wire ts_pe_73_a0_in;
wire ts_pe_73_a1_out;
wire ts_pe_73_a1_oe;
wire ts_pe_73_a1_in;
wire ts_pe_74_a0_out;
wire ts_pe_74_a0_oe;
wire ts_pe_74_a0_in;
wire ts_pe_74_a1_out;
wire ts_pe_74_a1_oe;
wire ts_pe_74_a1_in;
wire ts_pe_75_a0_out;
wire ts_pe_75_a0_oe;
wire ts_pe_75_a0_in;
wire ts_pe_75_a1_out;
wire ts_pe_75_a1_oe;
wire ts_pe_75_a1_in;
wire ts_pe_76_a0_out;
wire ts_pe_76_a0_oe;
wire ts_pe_76_a0_in;
wire ts_pe_76_a1_out;
wire ts_pe_76_a1_oe;
wire ts_pe_76_a1_in;
wire ts_pe_77_a0_out;
wire ts_pe_77_a0_oe;
wire ts_pe_77_a0_in;
wire ts_pe_77_a1_out;
wire ts_pe_77_a1_oe;
wire ts_pe_77_a1_in;
wire ts_pe_78_a0_out;
wire ts_pe_78_a0_oe;
wire ts_pe_78_a0_in;
wire ts_pe_78_a1_out;
wire ts_pe_78_a1_oe;
wire ts_pe_78_a1_in;
wire ts_pe_79_a0_out;
wire ts_pe_79_a0_oe;
wire ts_pe_79_a0_in;
wire ts_pe_79_a1_out;
wire ts_pe_79_a1_oe;
wire ts_pe_79_a1_in;
wire ts_pe_80_a0_out;
wire ts_pe_80_a0_oe;
wire ts_pe_80_a0_in;
wire ts_pe_80_a1_out;
wire ts_pe_80_a1_oe;
wire ts_pe_80_a1_in;
wire ts_pe_81_a0_out;
wire ts_pe_81_a0_oe;
wire ts_pe_81_a0_in;
wire ts_pe_81_a1_out;
wire ts_pe_81_a1_oe;
wire ts_pe_81_a1_in;
wire ts_pe_82_a0_out;
wire ts_pe_82_a0_oe;
wire ts_pe_82_a0_in;
wire ts_pe_82_a1_out;
wire ts_pe_82_a1_oe;
wire ts_pe_82_a1_in;
wire ts_pe_83_a0_out;
wire ts_pe_83_a0_oe;
wire ts_pe_83_a0_in;
wire ts_pe_83_a1_out;
wire ts_pe_83_a1_oe;
wire ts_pe_83_a1_in;
wire ts_pe_84_a0_out;
wire ts_pe_84_a0_oe;
wire ts_pe_84_a0_in;
wire ts_pe_84_a1_out;
wire ts_pe_84_a1_oe;
wire ts_pe_84_a1_in;
wire ts_pe_85_a0_out;
wire ts_pe_85_a0_oe;
wire ts_pe_85_a0_in;
wire ts_pe_85_a1_out;
wire ts_pe_85_a1_oe;
wire ts_pe_85_a1_in;
wire ts_pe_86_a0_out;
wire ts_pe_86_a0_oe;
wire ts_pe_86_a0_in;
wire ts_pe_86_a1_out;
wire ts_pe_86_a1_oe;
wire ts_pe_86_a1_in;
wire ts_pe_87_a0_out;
wire ts_pe_87_a0_oe;
wire ts_pe_87_a0_in;
wire ts_pe_87_a1_out;
wire ts_pe_87_a1_oe;
wire ts_pe_87_a1_in;
wire ts_pe_88_a0_out;
wire ts_pe_88_a0_oe;
wire ts_pe_88_a0_in;
wire ts_pe_88_a1_out;
wire ts_pe_88_a1_oe;
wire ts_pe_88_a1_in;
wire ts_pe_89_a0_out;
wire ts_pe_89_a0_oe;
wire ts_pe_89_a0_in;
wire ts_pe_89_a1_out;
wire ts_pe_89_a1_oe;
wire ts_pe_89_a1_in;
wire ts_pe_90_a0_out;
wire ts_pe_90_a0_oe;
wire ts_pe_90_a0_in;
wire ts_pe_90_a1_out;
wire ts_pe_90_a1_oe;
wire ts_pe_90_a1_in;
wire ts_pe_91_a0_out;
wire ts_pe_91_a0_oe;
wire ts_pe_91_a0_in;
wire ts_pe_91_a1_out;
wire ts_pe_91_a1_oe;
wire ts_pe_91_a1_in;
wire ts_pe_92_a0_out;
wire ts_pe_92_a0_oe;
wire ts_pe_92_a0_in;
wire ts_pe_92_a1_out;
wire ts_pe_92_a1_oe;
wire ts_pe_92_a1_in;
wire ts_pe_93_a0_out;
wire ts_pe_93_a0_oe;
wire ts_pe_93_a0_in;
wire ts_pe_93_a1_out;
wire ts_pe_93_a1_oe;
wire ts_pe_93_a1_in;
wire ts_pe_94_a0_out;
wire ts_pe_94_a0_oe;
wire ts_pe_94_a0_in;
wire ts_pe_94_a1_out;
wire ts_pe_94_a1_oe;
wire ts_pe_94_a1_in;
wire ts_pe_95_a0_out;
wire ts_pe_95_a0_oe;
wire ts_pe_95_a0_in;
wire ts_pe_95_a1_out;
wire ts_pe_95_a1_oe;
wire ts_pe_95_a1_in;
wire ts_pe_96_a0_out;
wire ts_pe_96_a0_oe;
wire ts_pe_96_a0_in;
wire ts_pe_96_a1_out;
wire ts_pe_96_a1_oe;
wire ts_pe_96_a1_in;
wire ts_pe_97_a0_out;
wire ts_pe_97_a0_oe;
wire ts_pe_97_a0_in;
wire ts_pe_97_a1_out;
wire ts_pe_97_a1_oe;
wire ts_pe_97_a1_in;
wire ts_pe_98_a0_out;
wire ts_pe_98_a0_oe;
wire ts_pe_98_a0_in;
wire ts_pe_98_a1_out;
wire ts_pe_98_a1_oe;
wire ts_pe_98_a1_in;
wire ts_pe_99_a0_out;
wire ts_pe_99_a0_oe;
wire ts_pe_99_a0_in;
wire ts_pe_99_a1_out;
wire ts_pe_99_a1_oe;
wire ts_pe_99_a1_in;
wire ts_pe_100_a0_out;
wire ts_pe_100_a0_oe;
wire ts_pe_100_a0_in;
wire ts_pe_100_a1_out;
wire ts_pe_100_a1_oe;
wire ts_pe_100_a1_in;
wire ts_pe_101_a0_out;
wire ts_pe_101_a0_oe;
wire ts_pe_101_a0_in;
wire ts_pe_101_a1_out;
wire ts_pe_101_a1_oe;
wire ts_pe_101_a1_in;
wire ts_pe_102_a0_out;
wire ts_pe_102_a0_oe;
wire ts_pe_102_a0_in;
wire ts_pe_102_a1_out;
wire ts_pe_102_a1_oe;
wire ts_pe_102_a1_in;
wire ts_pe_103_a0_out;
wire ts_pe_103_a0_oe;
wire ts_pe_103_a0_in;
wire ts_pe_103_a1_out;
wire ts_pe_103_a1_oe;
wire ts_pe_103_a1_in;
wire ts_pe_104_a0_out;
wire ts_pe_104_a0_oe;
wire ts_pe_104_a0_in;
wire ts_pe_104_a1_out;
wire ts_pe_104_a1_oe;
wire ts_pe_104_a1_in;
wire ts_pe_105_a0_out;
wire ts_pe_105_a0_oe;
wire ts_pe_105_a0_in;
wire ts_pe_105_a1_out;
wire ts_pe_105_a1_oe;
wire ts_pe_105_a1_in;
wire ts_pe_106_a0_out;
wire ts_pe_106_a0_oe;
wire ts_pe_106_a0_in;
wire ts_pe_106_a1_out;
wire ts_pe_106_a1_oe;
wire ts_pe_106_a1_in;
wire ts_pe_107_a0_out;
wire ts_pe_107_a0_oe;
wire ts_pe_107_a0_in;
wire ts_pe_107_a1_out;
wire ts_pe_107_a1_oe;
wire ts_pe_107_a1_in;
wire ts_pe_108_a0_out;
wire ts_pe_108_a0_oe;
wire ts_pe_108_a0_in;
wire ts_pe_108_a1_out;
wire ts_pe_108_a1_oe;
wire ts_pe_108_a1_in;
wire ts_pe_109_a0_out;
wire ts_pe_109_a0_oe;
wire ts_pe_109_a0_in;
wire ts_pe_109_a1_out;
wire ts_pe_109_a1_oe;
wire ts_pe_109_a1_in;
wire ts_pe_110_a0_out;
wire ts_pe_110_a0_oe;
wire ts_pe_110_a0_in;
wire ts_pe_110_a1_out;
wire ts_pe_110_a1_oe;
wire ts_pe_110_a1_in;
wire ts_pe_111_a0_out;
wire ts_pe_111_a0_oe;
wire ts_pe_111_a0_in;
wire ts_pe_111_a1_out;
wire ts_pe_111_a1_oe;
wire ts_pe_111_a1_in;
wire ts_pe_112_a0_out;
wire ts_pe_112_a0_oe;
wire ts_pe_112_a0_in;
wire ts_pe_112_a1_out;
wire ts_pe_112_a1_oe;
wire ts_pe_112_a1_in;
wire ts_pe_113_a0_out;
wire ts_pe_113_a0_oe;
wire ts_pe_113_a0_in;
wire ts_pe_113_a1_out;
wire ts_pe_113_a1_oe;
wire ts_pe_113_a1_in;
wire ts_pe_114_a0_out;
wire ts_pe_114_a0_oe;
wire ts_pe_114_a0_in;
wire ts_pe_114_a1_out;
wire ts_pe_114_a1_oe;
wire ts_pe_114_a1_in;
wire ts_pe_115_a0_out;
wire ts_pe_115_a0_oe;
wire ts_pe_115_a0_in;
wire ts_pe_115_a1_out;
wire ts_pe_115_a1_oe;
wire ts_pe_115_a1_in;
wire ts_pe_116_a0_out;
wire ts_pe_116_a0_oe;
wire ts_pe_116_a0_in;
wire ts_pe_116_a1_out;
wire ts_pe_116_a1_oe;
wire ts_pe_116_a1_in;
wire ts_pe_117_a0_out;
wire ts_pe_117_a0_oe;
wire ts_pe_117_a0_in;
wire ts_pe_117_a1_out;
wire ts_pe_117_a1_oe;
wire ts_pe_117_a1_in;
wire ts_pe_118_a0_out;
wire ts_pe_118_a0_oe;
wire ts_pe_118_a0_in;
wire ts_pe_118_a1_out;
wire ts_pe_118_a1_oe;
wire ts_pe_118_a1_in;
wire ts_pe_119_a0_out;
wire ts_pe_119_a0_oe;
wire ts_pe_119_a0_in;
wire ts_pe_119_a1_out;
wire ts_pe_119_a1_oe;
wire ts_pe_119_a1_in;
wire ts_pe_120_a0_out;
wire ts_pe_120_a0_oe;
wire ts_pe_120_a0_in;
wire ts_pe_120_a1_out;
wire ts_pe_120_a1_oe;
wire ts_pe_120_a1_in;
wire ts_pe_121_a0_out;
wire ts_pe_121_a0_oe;
wire ts_pe_121_a0_in;
wire ts_pe_121_a1_out;
wire ts_pe_121_a1_oe;
wire ts_pe_121_a1_in;
wire ts_pe_122_a0_out;
wire ts_pe_122_a0_oe;
wire ts_pe_122_a0_in;
wire ts_pe_122_a1_out;
wire ts_pe_122_a1_oe;
wire ts_pe_122_a1_in;
wire ts_pe_123_a0_out;
wire ts_pe_123_a0_oe;
wire ts_pe_123_a0_in;
wire ts_pe_123_a1_out;
wire ts_pe_123_a1_oe;
wire ts_pe_123_a1_in;
wire ts_pe_124_a0_out;
wire ts_pe_124_a0_oe;
wire ts_pe_124_a0_in;
wire ts_pe_124_a1_out;
wire ts_pe_124_a1_oe;
wire ts_pe_124_a1_in;
wire ts_pe_125_a0_out;
wire ts_pe_125_a0_oe;
wire ts_pe_125_a0_in;
wire ts_pe_125_a1_out;
wire ts_pe_125_a1_oe;
wire ts_pe_125_a1_in;
wire ts_pe_126_a0_out;
wire ts_pe_126_a0_oe;
wire ts_pe_126_a0_in;
wire ts_pe_126_a1_out;
wire ts_pe_126_a1_oe;
wire ts_pe_126_a1_in;
wire ts_pe_127_a0_out;
wire ts_pe_127_a0_oe;
wire ts_pe_127_a0_in;
wire ts_pe_127_a1_out;
wire ts_pe_127_a1_oe;
wire ts_pe_127_a1_in;
wire ts_pe_128_a0_out;
wire ts_pe_128_a0_oe;
wire ts_pe_128_a0_in;
wire ts_pe_128_a1_out;
wire ts_pe_128_a1_oe;
wire ts_pe_128_a1_in;
wire ts_pe_129_a0_out;
wire ts_pe_129_a0_oe;
wire ts_pe_129_a0_in;
wire ts_pe_129_a1_out;
wire ts_pe_129_a1_oe;
wire ts_pe_129_a1_in;
wire ts_pe_130_a0_out;
wire ts_pe_130_a0_oe;
wire ts_pe_130_a0_in;
wire ts_pe_130_a1_out;
wire ts_pe_130_a1_oe;
wire ts_pe_130_a1_in;
wire ts_pe_131_a0_out;
wire ts_pe_131_a0_oe;
wire ts_pe_131_a0_in;
wire ts_pe_131_a1_out;
wire ts_pe_131_a1_oe;
wire ts_pe_131_a1_in;
wire ts_pe_132_a0_out;
wire ts_pe_132_a0_oe;
wire ts_pe_132_a0_in;
wire ts_pe_132_a1_out;
wire ts_pe_132_a1_oe;
wire ts_pe_132_a1_in;
wire ts_pe_133_a0_out;
wire ts_pe_133_a0_oe;
wire ts_pe_133_a0_in;
wire ts_pe_133_a1_out;
wire ts_pe_133_a1_oe;
wire ts_pe_133_a1_in;
wire ts_pe_134_a0_out;
wire ts_pe_134_a0_oe;
wire ts_pe_134_a0_in;
wire ts_pe_134_a1_out;
wire ts_pe_134_a1_oe;
wire ts_pe_134_a1_in;
wire ts_pe_135_a0_out;
wire ts_pe_135_a0_oe;
wire ts_pe_135_a0_in;
wire ts_pe_135_a1_out;
wire ts_pe_135_a1_oe;
wire ts_pe_135_a1_in;
wire ts_pe_136_a0_out;
wire ts_pe_136_a0_oe;
wire ts_pe_136_a0_in;
wire ts_pe_136_a1_out;
wire ts_pe_136_a1_oe;
wire ts_pe_136_a1_in;
wire ts_pe_137_a0_out;
wire ts_pe_137_a0_oe;
wire ts_pe_137_a0_in;
wire ts_pe_137_a1_out;
wire ts_pe_137_a1_oe;
wire ts_pe_137_a1_in;
wire ts_pe_138_a0_out;
wire ts_pe_138_a0_oe;
wire ts_pe_138_a0_in;
wire ts_pe_138_a1_out;
wire ts_pe_138_a1_oe;
wire ts_pe_138_a1_in;
wire ts_pe_139_a0_out;
wire ts_pe_139_a0_oe;
wire ts_pe_139_a0_in;
wire ts_pe_139_a1_out;
wire ts_pe_139_a1_oe;
wire ts_pe_139_a1_in;
wire ts_local_pe_140_a0_out;
wire ts_local_pe_140_a0_oe;
wire ts_local_pe_140_a0_in;
wire ts_local_pe_140_a1_out;
wire ts_local_pe_140_a1_oe;
wire ts_local_pe_140_a1_in;
wire ts_local_pe_141_a0_out;
wire ts_local_pe_141_a0_oe;
wire ts_local_pe_141_a0_in;
wire ts_local_pe_141_a1_out;
wire ts_local_pe_141_a1_oe;
wire ts_local_pe_141_a1_in;
wire ts_local_pe_142_a0_out;
wire ts_local_pe_142_a0_oe;
wire ts_local_pe_142_a0_in;
wire ts_local_pe_142_a1_out;
wire ts_local_pe_142_a1_oe;
wire ts_local_pe_142_a1_in;
wire ts_local_pe_143_a0_out;
wire ts_local_pe_143_a0_oe;
wire ts_local_pe_143_a0_in;
wire ts_local_pe_143_a1_out;
wire ts_local_pe_143_a1_oe;
wire ts_local_pe_143_a1_in;
wire ts_local_pe_144_a0_out;
wire ts_local_pe_144_a0_oe;
wire ts_local_pe_144_a0_in;
wire ts_local_pe_144_a1_out;
wire ts_local_pe_144_a1_oe;
wire ts_local_pe_144_a1_in;
wire ts_local_pe_145_a0_out;
wire ts_local_pe_145_a0_oe;
wire ts_local_pe_145_a0_in;
wire ts_local_pe_145_a1_out;
wire ts_local_pe_145_a1_oe;
wire ts_local_pe_145_a1_in;
wire ts_local_pe_146_a0_out;
wire ts_local_pe_146_a0_oe;
wire ts_local_pe_146_a0_in;
wire ts_local_pe_146_a1_out;
wire ts_local_pe_146_a1_oe;
wire ts_local_pe_146_a1_in;
wire ts_local_pe_147_a0_out;
wire ts_local_pe_147_a0_oe;
wire ts_local_pe_147_a0_in;
wire ts_local_pe_147_a1_out;
wire ts_local_pe_147_a1_oe;
wire ts_local_pe_147_a1_in;
wire ts_local_pe_148_a0_out;
wire ts_local_pe_148_a0_oe;
wire ts_local_pe_148_a0_in;
wire ts_local_pe_148_a1_out;
wire ts_local_pe_148_a1_oe;
wire ts_local_pe_148_a1_in;
wire ts_local_pe_149_a0_out;
wire ts_local_pe_149_a0_oe;
wire ts_local_pe_149_a0_in;
wire ts_local_pe_149_a1_out;
wire ts_local_pe_149_a1_oe;
wire ts_local_pe_149_a1_in;
wire ts_local_pe_150_a0_out;
wire ts_local_pe_150_a0_oe;
wire ts_local_pe_150_a0_in;
wire ts_local_pe_150_a1_out;
wire ts_local_pe_150_a1_oe;
wire ts_local_pe_150_a1_in;
wire ts_local_pe_151_a0_out;
wire ts_local_pe_151_a0_oe;
wire ts_local_pe_151_a0_in;
wire ts_local_pe_151_a1_out;
wire ts_local_pe_151_a1_oe;
wire ts_local_pe_151_a1_in;
wire ts_local_pe_152_a0_out;
wire ts_local_pe_152_a0_oe;
wire ts_local_pe_152_a0_in;
wire ts_local_pe_152_a1_out;
wire ts_local_pe_152_a1_oe;
wire ts_local_pe_152_a1_in;
wire ts_local_pe_153_a0_out;
wire ts_local_pe_153_a0_oe;
wire ts_local_pe_153_a0_in;
wire ts_local_pe_153_a1_out;
wire ts_local_pe_153_a1_oe;
wire ts_local_pe_153_a1_in;
wire ts_local_pe_154_a0_out;
wire ts_local_pe_154_a0_oe;
wire ts_local_pe_154_a0_in;
wire ts_local_pe_154_a1_out;
wire ts_local_pe_154_a1_oe;
wire ts_local_pe_154_a1_in;
wire ts_local_pe_155_a0_out;
wire ts_local_pe_155_a0_oe;
wire ts_local_pe_155_a0_in;
wire ts_local_pe_155_a1_out;
wire ts_local_pe_155_a1_oe;
wire ts_local_pe_155_a1_in;
wire ts_local_pe_156_a0_out;
wire ts_local_pe_156_a0_oe;
wire ts_local_pe_156_a0_in;
wire ts_local_pe_156_a1_out;
wire ts_local_pe_156_a1_oe;
wire ts_local_pe_156_a1_in;
wire ts_local_pe_157_a0_out;
wire ts_local_pe_157_a0_oe;
wire ts_local_pe_157_a0_in;
wire ts_local_pe_157_a1_out;
wire ts_local_pe_157_a1_oe;
wire ts_local_pe_157_a1_in;
wire ts_local_pe_158_a0_out;
wire ts_local_pe_158_a0_oe;
wire ts_local_pe_158_a0_in;
wire ts_local_pe_158_a1_out;
wire ts_local_pe_158_a1_oe;
wire ts_local_pe_158_a1_in;
wire ts_local_pe_159_a0_out;
wire ts_local_pe_159_a0_oe;
wire ts_local_pe_159_a0_in;
wire ts_local_pe_159_a1_out;
wire ts_local_pe_159_a1_oe;
wire ts_local_pe_159_a1_in;
wire ts_local_pe_160_a0_out;
wire ts_local_pe_160_a0_oe;
wire ts_local_pe_160_a0_in;
wire ts_local_pe_160_a1_out;
wire ts_local_pe_160_a1_oe;
wire ts_local_pe_160_a1_in;
wire ts_local_pe_161_a0_out;
wire ts_local_pe_161_a0_oe;
wire ts_local_pe_161_a0_in;
wire ts_local_pe_161_a1_out;
wire ts_local_pe_161_a1_oe;
wire ts_local_pe_161_a1_in;
wire ts_local_pe_162_a0_out;
wire ts_local_pe_162_a0_oe;
wire ts_local_pe_162_a0_in;
wire ts_local_pe_162_a1_out;
wire ts_local_pe_162_a1_oe;
wire ts_local_pe_162_a1_in;
wire ts_local_pe_163_a0_out;
wire ts_local_pe_163_a0_oe;
wire ts_local_pe_163_a0_in;
wire ts_local_pe_163_a1_out;
wire ts_local_pe_163_a1_oe;
wire ts_local_pe_163_a1_in;
wire ts_local_pe_164_a0_out;
wire ts_local_pe_164_a0_oe;
wire ts_local_pe_164_a0_in;
wire ts_local_pe_164_a1_out;
wire ts_local_pe_164_a1_oe;
wire ts_local_pe_164_a1_in;
wire ts_local_pe_164_a2_out;
wire ts_local_pe_164_a2_oe;
wire ts_local_pe_164_a2_in;
wire ts_local_pe_164_a3_out;
wire ts_local_pe_164_a3_oe;
wire ts_local_pe_164_a3_in;
wire ts_local_pe_164_a4_out;
wire ts_local_pe_164_a4_oe;
wire ts_local_pe_164_a4_in;
wire ts_local_pe_164_a5_out;
wire ts_local_pe_164_a5_oe;
wire ts_local_pe_164_a5_in;
wire ts_local_pe_165_a0_out;
wire ts_local_pe_165_a0_oe;
wire ts_local_pe_165_a0_in;
wire ts_local_pe_165_a1_out;
wire ts_local_pe_165_a1_oe;
wire ts_local_pe_165_a1_in;
wire ts_local_pe_165_a2_out;
wire ts_local_pe_165_a2_oe;
wire ts_local_pe_165_a2_in;
wire ts_local_pe_165_a3_out;
wire ts_local_pe_165_a3_oe;
wire ts_local_pe_165_a3_in;
wire ts_local_pe_165_a4_out;
wire ts_local_pe_165_a4_oe;
wire ts_local_pe_165_a4_in;
wire ts_local_pe_165_a5_out;
wire ts_local_pe_165_a5_oe;
wire ts_local_pe_165_a5_in;
wire ts_local_pe_166_a0_out;
wire ts_local_pe_166_a0_oe;
wire ts_local_pe_166_a0_in;
wire ts_local_pe_166_a1_out;
wire ts_local_pe_166_a1_oe;
wire ts_local_pe_166_a1_in;
wire ts_local_pe_166_a2_out;
wire ts_local_pe_166_a2_oe;
wire ts_local_pe_166_a2_in;
wire ts_local_pe_166_a3_out;
wire ts_local_pe_166_a3_oe;
wire ts_local_pe_166_a3_in;
wire ts_local_pe_166_a4_out;
wire ts_local_pe_166_a4_oe;
wire ts_local_pe_166_a4_in;
wire ts_local_pe_166_a5_out;
wire ts_local_pe_166_a5_oe;
wire ts_local_pe_166_a5_in;
wire ts_local_pe_167_a0_out;
wire ts_local_pe_167_a0_oe;
wire ts_local_pe_167_a0_in;
wire ts_local_pe_167_a1_out;
wire ts_local_pe_167_a1_oe;
wire ts_local_pe_167_a1_in;
wire ts_local_pe_167_a2_out;
wire ts_local_pe_167_a2_oe;
wire ts_local_pe_167_a2_in;
wire ts_local_pe_167_a3_out;
wire ts_local_pe_167_a3_oe;
wire ts_local_pe_167_a3_in;
wire ts_local_pe_167_a4_out;
wire ts_local_pe_167_a4_oe;
wire ts_local_pe_167_a4_in;
wire ts_local_pe_167_a5_out;
wire ts_local_pe_167_a5_oe;
wire ts_local_pe_167_a5_in;
wire ts_local_pe_168_a0_out;
wire ts_local_pe_168_a0_oe;
wire ts_local_pe_168_a0_in;
wire ts_local_pe_168_a1_out;
wire ts_local_pe_168_a1_oe;
wire ts_local_pe_168_a1_in;
wire ts_local_pe_168_a2_out;
wire ts_local_pe_168_a2_oe;
wire ts_local_pe_168_a2_in;
wire ts_local_pe_168_a3_out;
wire ts_local_pe_168_a3_oe;
wire ts_local_pe_168_a3_in;
wire ts_local_pe_168_a4_out;
wire ts_local_pe_168_a4_oe;
wire ts_local_pe_168_a4_in;
wire ts_local_pe_168_a5_out;
wire ts_local_pe_168_a5_oe;
wire ts_local_pe_168_a5_in;
wire ts_local_pe_169_a0_out;
wire ts_local_pe_169_a0_oe;
wire ts_local_pe_169_a0_in;
wire ts_local_pe_169_a1_out;
wire ts_local_pe_169_a1_oe;
wire ts_local_pe_169_a1_in;
wire ts_local_pe_169_a2_out;
wire ts_local_pe_169_a2_oe;
wire ts_local_pe_169_a2_in;
wire ts_local_pe_169_a3_out;
wire ts_local_pe_169_a3_oe;
wire ts_local_pe_169_a3_in;
wire ts_local_pe_169_a4_out;
wire ts_local_pe_169_a4_oe;
wire ts_local_pe_169_a4_in;
wire ts_local_pe_169_a5_out;
wire ts_local_pe_169_a5_oe;
wire ts_local_pe_169_a5_in;
wire ts_local_pe_170_a0_out;
wire ts_local_pe_170_a0_oe;
wire ts_local_pe_170_a0_in;
wire ts_local_pe_170_a1_out;
wire ts_local_pe_170_a1_oe;
wire ts_local_pe_170_a1_in;
wire ts_local_pe_170_a2_out;
wire ts_local_pe_170_a2_oe;
wire ts_local_pe_170_a2_in;
wire ts_local_pe_170_a3_out;
wire ts_local_pe_170_a3_oe;
wire ts_local_pe_170_a3_in;
wire ts_local_pe_170_a4_out;
wire ts_local_pe_170_a4_oe;
wire ts_local_pe_170_a4_in;
wire ts_local_pe_170_a5_out;
wire ts_local_pe_170_a5_oe;
wire ts_local_pe_170_a5_in;
wire ts_local_pe_171_a0_out;
wire ts_local_pe_171_a0_oe;
wire ts_local_pe_171_a0_in;
wire ts_local_pe_171_a1_out;
wire ts_local_pe_171_a1_oe;
wire ts_local_pe_171_a1_in;
wire ts_local_pe_171_a2_out;
wire ts_local_pe_171_a2_oe;
wire ts_local_pe_171_a2_in;
wire ts_local_pe_171_a3_out;
wire ts_local_pe_171_a3_oe;
wire ts_local_pe_171_a3_in;
wire ts_local_pe_171_a4_out;
wire ts_local_pe_171_a4_oe;
wire ts_local_pe_171_a4_in;
wire ts_local_pe_171_a5_out;
wire ts_local_pe_171_a5_oe;
wire ts_local_pe_171_a5_in;
wire ts_local_pe_172_a0_out;
wire ts_local_pe_172_a0_oe;
wire ts_local_pe_172_a0_in;
wire ts_local_pe_172_a1_out;
wire ts_local_pe_172_a1_oe;
wire ts_local_pe_172_a1_in;
wire ts_local_pe_172_a2_out;
wire ts_local_pe_172_a2_oe;
wire ts_local_pe_172_a2_in;
wire ts_local_pe_172_a3_out;
wire ts_local_pe_172_a3_oe;
wire ts_local_pe_172_a3_in;
wire ts_local_pe_172_a4_out;
wire ts_local_pe_172_a4_oe;
wire ts_local_pe_172_a4_in;
wire ts_local_pe_172_a5_out;
wire ts_local_pe_172_a5_oe;
wire ts_local_pe_172_a5_in;
wire ts_local_pe_173_a0_out;
wire ts_local_pe_173_a0_oe;
wire ts_local_pe_173_a0_in;
wire ts_local_pe_173_a1_out;
wire ts_local_pe_173_a1_oe;
wire ts_local_pe_173_a1_in;
wire ts_local_pe_173_a2_out;
wire ts_local_pe_173_a2_oe;
wire ts_local_pe_173_a2_in;
wire ts_local_pe_173_a3_out;
wire ts_local_pe_173_a3_oe;
wire ts_local_pe_173_a3_in;
wire ts_local_pe_173_a4_out;
wire ts_local_pe_173_a4_oe;
wire ts_local_pe_173_a4_in;
wire ts_local_pe_173_a5_out;
wire ts_local_pe_173_a5_oe;
wire ts_local_pe_173_a5_in;
wire ts_local_pe_174_a0_out;
wire ts_local_pe_174_a0_oe;
wire ts_local_pe_174_a0_in;
wire ts_local_pe_174_a1_out;
wire ts_local_pe_174_a1_oe;
wire ts_local_pe_174_a1_in;
wire ts_local_pe_174_a2_out;
wire ts_local_pe_174_a2_oe;
wire ts_local_pe_174_a2_in;
wire ts_local_pe_174_a3_out;
wire ts_local_pe_174_a3_oe;
wire ts_local_pe_174_a3_in;
wire ts_local_pe_174_a4_out;
wire ts_local_pe_174_a4_oe;
wire ts_local_pe_174_a4_in;
wire ts_local_pe_174_a5_out;
wire ts_local_pe_174_a5_oe;
wire ts_local_pe_174_a5_in;
wire ts_local_pe_175_a0_out;
wire ts_local_pe_175_a0_oe;
wire ts_local_pe_175_a0_in;
wire ts_local_pe_175_a1_out;
wire ts_local_pe_175_a1_oe;
wire ts_local_pe_175_a1_in;
wire ts_local_pe_175_a2_out;
wire ts_local_pe_175_a2_oe;
wire ts_local_pe_175_a2_in;
wire ts_local_pe_175_a3_out;
wire ts_local_pe_175_a3_oe;
wire ts_local_pe_175_a3_in;
wire ts_local_pe_175_a4_out;
wire ts_local_pe_175_a4_oe;
wire ts_local_pe_175_a4_in;
wire ts_local_pe_175_a5_out;
wire ts_local_pe_175_a5_oe;
wire ts_local_pe_175_a5_in;
wire ts_local_pe_176_a0_out;
wire ts_local_pe_176_a0_oe;
wire ts_local_pe_176_a0_in;
wire ts_local_pe_176_a1_out;
wire ts_local_pe_176_a1_oe;
wire ts_local_pe_176_a1_in;
wire ts_local_pe_176_a2_out;
wire ts_local_pe_176_a2_oe;
wire ts_local_pe_176_a2_in;
wire ts_local_pe_176_a3_out;
wire ts_local_pe_176_a3_oe;
wire ts_local_pe_176_a3_in;
wire ts_local_pe_176_a4_out;
wire ts_local_pe_176_a4_oe;
wire ts_local_pe_176_a4_in;
wire ts_local_pe_176_a5_out;
wire ts_local_pe_176_a5_oe;
wire ts_local_pe_176_a5_in;
wire ts_local_pe_177_a0_out;
wire ts_local_pe_177_a0_oe;
wire ts_local_pe_177_a0_in;
wire ts_local_pe_177_a1_out;
wire ts_local_pe_177_a1_oe;
wire ts_local_pe_177_a1_in;
wire ts_local_pe_177_a2_out;
wire ts_local_pe_177_a2_oe;
wire ts_local_pe_177_a2_in;
wire ts_local_pe_177_a3_out;
wire ts_local_pe_177_a3_oe;
wire ts_local_pe_177_a3_in;
wire ts_local_pe_177_a4_out;
wire ts_local_pe_177_a4_oe;
wire ts_local_pe_177_a4_in;
wire ts_local_pe_177_a5_out;
wire ts_local_pe_177_a5_oe;
wire ts_local_pe_177_a5_in;
wire ts_local_pe_178_a0_out;
wire ts_local_pe_178_a0_oe;
wire ts_local_pe_178_a0_in;
wire ts_local_pe_178_a1_out;
wire ts_local_pe_178_a1_oe;
wire ts_local_pe_178_a1_in;
wire ts_local_pe_178_a2_out;
wire ts_local_pe_178_a2_oe;
wire ts_local_pe_178_a2_in;
wire ts_local_pe_178_a3_out;
wire ts_local_pe_178_a3_oe;
wire ts_local_pe_178_a3_in;
wire ts_local_pe_178_a4_out;
wire ts_local_pe_178_a4_oe;
wire ts_local_pe_178_a4_in;
wire ts_local_pe_178_a5_out;
wire ts_local_pe_178_a5_oe;
wire ts_local_pe_178_a5_in;
wire ts_local_pe_179_a0_out;
wire ts_local_pe_179_a0_oe;
wire ts_local_pe_179_a0_in;
wire ts_local_pe_179_a1_out;
wire ts_local_pe_179_a1_oe;
wire ts_local_pe_179_a1_in;
wire ts_local_pe_179_a2_out;
wire ts_local_pe_179_a2_oe;
wire ts_local_pe_179_a2_in;
wire ts_local_pe_179_a3_out;
wire ts_local_pe_179_a3_oe;
wire ts_local_pe_179_a3_in;
wire ts_local_pe_179_a4_out;
wire ts_local_pe_179_a4_oe;
wire ts_local_pe_179_a4_in;
wire ts_local_pe_179_a5_out;
wire ts_local_pe_179_a5_oe;
wire ts_local_pe_179_a5_in;
wire ts_local_pe_180_a0_out;
wire ts_local_pe_180_a0_oe;
wire ts_local_pe_180_a0_in;
wire ts_local_pe_180_a1_out;
wire ts_local_pe_180_a1_oe;
wire ts_local_pe_180_a1_in;
wire ts_local_pe_180_a2_out;
wire ts_local_pe_180_a2_oe;
wire ts_local_pe_180_a2_in;
wire ts_local_pe_180_a3_out;
wire ts_local_pe_180_a3_oe;
wire ts_local_pe_180_a3_in;
wire ts_local_pe_180_a4_out;
wire ts_local_pe_180_a4_oe;
wire ts_local_pe_180_a4_in;
wire ts_local_pe_180_a5_out;
wire ts_local_pe_180_a5_oe;
wire ts_local_pe_180_a5_in;
wire ts_local_pe_181_a0_out;
wire ts_local_pe_181_a0_oe;
wire ts_local_pe_181_a0_in;
wire ts_local_pe_181_a1_out;
wire ts_local_pe_181_a1_oe;
wire ts_local_pe_181_a1_in;
wire ts_local_pe_181_a2_out;
wire ts_local_pe_181_a2_oe;
wire ts_local_pe_181_a2_in;
wire ts_local_pe_181_a3_out;
wire ts_local_pe_181_a3_oe;
wire ts_local_pe_181_a3_in;
wire ts_local_pe_181_a4_out;
wire ts_local_pe_181_a4_oe;
wire ts_local_pe_181_a4_in;
wire ts_local_pe_181_a5_out;
wire ts_local_pe_181_a5_oe;
wire ts_local_pe_181_a5_in;
wire ts_local_pe_182_a0_out;
wire ts_local_pe_182_a0_oe;
wire ts_local_pe_182_a0_in;
wire ts_local_pe_182_a1_out;
wire ts_local_pe_182_a1_oe;
wire ts_local_pe_182_a1_in;
wire ts_local_pe_182_a2_out;
wire ts_local_pe_182_a2_oe;
wire ts_local_pe_182_a2_in;
wire ts_local_pe_182_a3_out;
wire ts_local_pe_182_a3_oe;
wire ts_local_pe_182_a3_in;
wire ts_local_pe_182_a4_out;
wire ts_local_pe_182_a4_oe;
wire ts_local_pe_182_a4_in;
wire ts_local_pe_182_a5_out;
wire ts_local_pe_182_a5_oe;
wire ts_local_pe_182_a5_in;
wire ts_local_pe_183_a0_out;
wire ts_local_pe_183_a0_oe;
wire ts_local_pe_183_a0_in;
wire ts_local_pe_183_a1_out;
wire ts_local_pe_183_a1_oe;
wire ts_local_pe_183_a1_in;
wire ts_local_pe_183_a2_out;
wire ts_local_pe_183_a2_oe;
wire ts_local_pe_183_a2_in;
wire ts_local_pe_183_a3_out;
wire ts_local_pe_183_a3_oe;
wire ts_local_pe_183_a3_in;
wire ts_local_pe_183_a4_out;
wire ts_local_pe_183_a4_oe;
wire ts_local_pe_183_a4_in;
wire ts_local_pe_183_a5_out;
wire ts_local_pe_183_a5_oe;
wire ts_local_pe_183_a5_in;
wire ts_local_pe_184_a0_out;
wire ts_local_pe_184_a0_oe;
wire ts_local_pe_184_a0_in;
wire ts_local_pe_184_a1_out;
wire ts_local_pe_184_a1_oe;
wire ts_local_pe_184_a1_in;
wire ts_local_pe_184_a2_out;
wire ts_local_pe_184_a2_oe;
wire ts_local_pe_184_a2_in;
wire ts_local_pe_184_a3_out;
wire ts_local_pe_184_a3_oe;
wire ts_local_pe_184_a3_in;
wire ts_local_pe_184_a4_out;
wire ts_local_pe_184_a4_oe;
wire ts_local_pe_184_a4_in;
wire ts_local_pe_184_a5_out;
wire ts_local_pe_184_a5_oe;
wire ts_local_pe_184_a5_in;
wire ts_local_pe_185_a0_out;
wire ts_local_pe_185_a0_oe;
wire ts_local_pe_185_a0_in;
wire ts_local_pe_185_a1_out;
wire ts_local_pe_185_a1_oe;
wire ts_local_pe_185_a1_in;
wire ts_local_pe_185_a2_out;
wire ts_local_pe_185_a2_oe;
wire ts_local_pe_185_a2_in;
wire ts_local_pe_185_a3_out;
wire ts_local_pe_185_a3_oe;
wire ts_local_pe_185_a3_in;
wire ts_local_pe_185_a4_out;
wire ts_local_pe_185_a4_oe;
wire ts_local_pe_185_a4_in;
wire ts_local_pe_185_a5_out;
wire ts_local_pe_185_a5_oe;
wire ts_local_pe_185_a5_in;
wire ts_local_pe_186_a0_out;
wire ts_local_pe_186_a0_oe;
wire ts_local_pe_186_a0_in;
wire ts_local_pe_186_a1_out;
wire ts_local_pe_186_a1_oe;
wire ts_local_pe_186_a1_in;
wire ts_local_pe_186_a2_out;
wire ts_local_pe_186_a2_oe;
wire ts_local_pe_186_a2_in;
wire ts_local_pe_186_a3_out;
wire ts_local_pe_186_a3_oe;
wire ts_local_pe_186_a3_in;
wire ts_local_pe_186_a4_out;
wire ts_local_pe_186_a4_oe;
wire ts_local_pe_186_a4_in;
wire ts_local_pe_186_a5_out;
wire ts_local_pe_186_a5_oe;
wire ts_local_pe_186_a5_in;
wire ts_local_pe_187_a0_out;
wire ts_local_pe_187_a0_oe;
wire ts_local_pe_187_a0_in;
wire ts_local_pe_187_a1_out;
wire ts_local_pe_187_a1_oe;
wire ts_local_pe_187_a1_in;
wire ts_local_pe_187_a2_out;
wire ts_local_pe_187_a2_oe;
wire ts_local_pe_187_a2_in;
wire ts_local_pe_187_a3_out;
wire ts_local_pe_187_a3_oe;
wire ts_local_pe_187_a3_in;
wire ts_local_pe_187_a4_out;
wire ts_local_pe_187_a4_oe;
wire ts_local_pe_187_a4_in;
wire ts_local_pe_187_a5_out;
wire ts_local_pe_187_a5_oe;
wire ts_local_pe_187_a5_in;
wire ts_local_pe_188_a0_out;
wire ts_local_pe_188_a0_oe;
wire ts_local_pe_188_a0_in;
wire ts_local_pe_188_a1_out;
wire ts_local_pe_188_a1_oe;
wire ts_local_pe_188_a1_in;
wire ts_local_pe_188_a2_out;
wire ts_local_pe_188_a2_oe;
wire ts_local_pe_188_a2_in;
wire ts_local_pe_188_a3_out;
wire ts_local_pe_188_a3_oe;
wire ts_local_pe_188_a3_in;
wire ts_local_pe_188_a4_out;
wire ts_local_pe_188_a4_oe;
wire ts_local_pe_188_a4_in;
wire ts_local_pe_188_a5_out;
wire ts_local_pe_188_a5_oe;
wire ts_local_pe_188_a5_in;
wire ts_local_pe_189_a0_out;
wire ts_local_pe_189_a0_oe;
wire ts_local_pe_189_a0_in;
wire ts_local_pe_189_a1_out;
wire ts_local_pe_189_a1_oe;
wire ts_local_pe_189_a1_in;
wire ts_local_pe_189_a2_out;
wire ts_local_pe_189_a2_oe;
wire ts_local_pe_189_a2_in;
wire ts_local_pe_189_a3_out;
wire ts_local_pe_189_a3_oe;
wire ts_local_pe_189_a3_in;
wire ts_local_pe_189_a4_out;
wire ts_local_pe_189_a4_oe;
wire ts_local_pe_189_a4_in;
wire ts_local_pe_189_a5_out;
wire ts_local_pe_189_a5_oe;
wire ts_local_pe_189_a5_in;
wire ts_local_pe_190_a0_out;
wire ts_local_pe_190_a0_oe;
wire ts_local_pe_190_a0_in;
wire ts_local_pe_190_a1_out;
wire ts_local_pe_190_a1_oe;
wire ts_local_pe_190_a1_in;
wire ts_local_pe_190_a2_out;
wire ts_local_pe_190_a2_oe;
wire ts_local_pe_190_a2_in;
wire ts_local_pe_190_a3_out;
wire ts_local_pe_190_a3_oe;
wire ts_local_pe_190_a3_in;
wire ts_local_pe_190_a4_out;
wire ts_local_pe_190_a4_oe;
wire ts_local_pe_190_a4_in;
wire ts_local_pe_190_a5_out;
wire ts_local_pe_190_a5_oe;
wire ts_local_pe_190_a5_in;
wire ts_local_pe_191_a0_out;
wire ts_local_pe_191_a0_oe;
wire ts_local_pe_191_a0_in;
wire ts_local_pe_191_a1_out;
wire ts_local_pe_191_a1_oe;
wire ts_local_pe_191_a1_in;
wire ts_local_pe_191_a2_out;
wire ts_local_pe_191_a2_oe;
wire ts_local_pe_191_a2_in;
wire ts_local_pe_191_a3_out;
wire ts_local_pe_191_a3_oe;
wire ts_local_pe_191_a3_in;
wire ts_local_pe_191_a4_out;
wire ts_local_pe_191_a4_oe;
wire ts_local_pe_191_a4_in;
wire ts_local_pe_191_a5_out;
wire ts_local_pe_191_a5_oe;
wire ts_local_pe_191_a5_in;
wire ts_local_pe_192_a0_out;
wire ts_local_pe_192_a0_oe;
wire ts_local_pe_192_a0_in;
wire ts_local_pe_192_a1_out;
wire ts_local_pe_192_a1_oe;
wire ts_local_pe_192_a1_in;
wire ts_local_pe_192_a2_out;
wire ts_local_pe_192_a2_oe;
wire ts_local_pe_192_a2_in;
wire ts_local_pe_192_a3_out;
wire ts_local_pe_192_a3_oe;
wire ts_local_pe_192_a3_in;
wire ts_local_pe_192_a4_out;
wire ts_local_pe_192_a4_oe;
wire ts_local_pe_192_a4_in;
wire ts_local_pe_192_a5_out;
wire ts_local_pe_192_a5_oe;
wire ts_local_pe_192_a5_in;
wire ts_local_pe_193_a0_out;
wire ts_local_pe_193_a0_oe;
wire ts_local_pe_193_a0_in;
wire ts_local_pe_193_a1_out;
wire ts_local_pe_193_a1_oe;
wire ts_local_pe_193_a1_in;
wire ts_local_pe_193_a2_out;
wire ts_local_pe_193_a2_oe;
wire ts_local_pe_193_a2_in;
wire ts_local_pe_193_a3_out;
wire ts_local_pe_193_a3_oe;
wire ts_local_pe_193_a3_in;
wire ts_local_pe_193_a4_out;
wire ts_local_pe_193_a4_oe;
wire ts_local_pe_193_a4_in;
wire ts_local_pe_193_a5_out;
wire ts_local_pe_193_a5_oe;
wire ts_local_pe_193_a5_in;
wire ts_local_pe_194_a0_out;
wire ts_local_pe_194_a0_oe;
wire ts_local_pe_194_a0_in;
wire ts_local_pe_194_a1_out;
wire ts_local_pe_194_a1_oe;
wire ts_local_pe_194_a1_in;
wire ts_local_pe_194_a2_out;
wire ts_local_pe_194_a2_oe;
wire ts_local_pe_194_a2_in;
wire ts_local_pe_194_a3_out;
wire ts_local_pe_194_a3_oe;
wire ts_local_pe_194_a3_in;
wire ts_local_pe_194_a4_out;
wire ts_local_pe_194_a4_oe;
wire ts_local_pe_194_a4_in;
wire ts_local_pe_194_a5_out;
wire ts_local_pe_194_a5_oe;
wire ts_local_pe_194_a5_in;
wire ts_local_pe_195_a0_out;
wire ts_local_pe_195_a0_oe;
wire ts_local_pe_195_a0_in;
wire ts_local_pe_195_a1_out;
wire ts_local_pe_195_a1_oe;
wire ts_local_pe_195_a1_in;
wire ts_local_pe_195_a2_out;
wire ts_local_pe_195_a2_oe;
wire ts_local_pe_195_a2_in;
wire ts_local_pe_195_a3_out;
wire ts_local_pe_195_a3_oe;
wire ts_local_pe_195_a3_in;
wire ts_local_pe_195_a4_out;
wire ts_local_pe_195_a4_oe;
wire ts_local_pe_195_a4_in;
wire ts_local_pe_195_a5_out;
wire ts_local_pe_195_a5_oe;
wire ts_local_pe_195_a5_in;
wire ts_local_pe_196_a0_out;
wire ts_local_pe_196_a0_oe;
wire ts_local_pe_196_a0_in;
wire ts_local_pe_196_a1_out;
wire ts_local_pe_196_a1_oe;
wire ts_local_pe_196_a1_in;
wire ts_local_pe_196_a2_out;
wire ts_local_pe_196_a2_oe;
wire ts_local_pe_196_a2_in;
wire ts_local_pe_197_a0_out;
wire ts_local_pe_197_a0_oe;
wire ts_local_pe_197_a0_in;
wire ts_local_pe_197_a1_out;
wire ts_local_pe_197_a1_oe;
wire ts_local_pe_197_a1_in;
wire ts_local_pe_197_a2_out;
wire ts_local_pe_197_a2_oe;
wire ts_local_pe_197_a2_in;
wire ts_local_pe_198_a0_out;
wire ts_local_pe_198_a0_oe;
wire ts_local_pe_198_a0_in;
wire ts_local_pe_198_a1_out;
wire ts_local_pe_198_a1_oe;
wire ts_local_pe_198_a1_in;
wire ts_local_pe_198_a2_out;
wire ts_local_pe_198_a2_oe;
wire ts_local_pe_198_a2_in;
wire ts_local_pe_199_a0_out;
wire ts_local_pe_199_a0_oe;
wire ts_local_pe_199_a0_in;
wire ts_local_pe_199_a1_out;
wire ts_local_pe_199_a1_oe;
wire ts_local_pe_199_a1_in;
wire ts_local_pe_199_a2_out;
wire ts_local_pe_199_a2_oe;
wire ts_local_pe_199_a2_in;
wire ts_local_pe_200_a0_out;
wire ts_local_pe_200_a0_oe;
wire ts_local_pe_200_a0_in;
wire ts_local_pe_200_a1_out;
wire ts_local_pe_200_a1_oe;
wire ts_local_pe_200_a1_in;
wire ts_local_pe_200_a2_out;
wire ts_local_pe_200_a2_oe;
wire ts_local_pe_200_a2_in;
wire ts_local_pe_201_a0_out;
wire ts_local_pe_201_a0_oe;
wire ts_local_pe_201_a0_in;
wire ts_local_pe_201_a1_out;
wire ts_local_pe_201_a1_oe;
wire ts_local_pe_201_a1_in;
wire ts_local_pe_201_a2_out;
wire ts_local_pe_201_a2_oe;
wire ts_local_pe_201_a2_in;
wire ts_local_pe_202_a0_out;
wire ts_local_pe_202_a0_oe;
wire ts_local_pe_202_a0_in;
wire ts_local_pe_202_a1_out;
wire ts_local_pe_202_a1_oe;
wire ts_local_pe_202_a1_in;
wire ts_local_pe_203_a0_out;
wire ts_local_pe_203_a0_oe;
wire ts_local_pe_203_a0_in;
wire ts_local_pe_203_a1_out;
wire ts_local_pe_203_a1_oe;
wire ts_local_pe_203_a1_in;
wire ts_local_pe_204_a0_out;
wire ts_local_pe_204_a0_oe;
wire ts_local_pe_204_a0_in;
wire ts_local_pe_204_a1_out;
wire ts_local_pe_204_a1_oe;
wire ts_local_pe_204_a1_in;
wire ts_local_pe_205_a0_out;
wire ts_local_pe_205_a0_oe;
wire ts_local_pe_205_a0_in;
wire ts_local_pe_205_a1_out;
wire ts_local_pe_205_a1_oe;
wire ts_local_pe_205_a1_in;
wire ts_local_pe_206_a0_out;
wire ts_local_pe_206_a0_oe;
wire ts_local_pe_206_a0_in;
wire ts_local_pe_206_a1_out;
wire ts_local_pe_206_a1_oe;
wire ts_local_pe_206_a1_in;
wire ts_local_pe_207_a0_out;
wire ts_local_pe_207_a0_oe;
wire ts_local_pe_207_a0_in;
wire ts_local_pe_207_a1_out;
wire ts_local_pe_207_a1_oe;
wire ts_local_pe_207_a1_in;
wire ts_local_pe_207_a2_out;
wire ts_local_pe_207_a2_oe;
wire ts_local_pe_207_a2_in;
wire ts_local_pe_208_a0_out;
wire ts_local_pe_208_a0_oe;
wire ts_local_pe_208_a0_in;
wire ts_local_pe_208_a1_out;
wire ts_local_pe_208_a1_oe;
wire ts_local_pe_208_a1_in;
wire ts_local_pe_208_a2_out;
wire ts_local_pe_208_a2_oe;
wire ts_local_pe_208_a2_in;
wire ts_local_pe_209_a0_out;
wire ts_local_pe_209_a0_oe;
wire ts_local_pe_209_a0_in;
wire ts_local_pe_209_a1_out;
wire ts_local_pe_209_a1_oe;
wire ts_local_pe_209_a1_in;
wire ts_local_pe_209_a2_out;
wire ts_local_pe_209_a2_oe;
wire ts_local_pe_209_a2_in;
wire ts_local_pe_210_a0_out;
wire ts_local_pe_210_a0_oe;
wire ts_local_pe_210_a0_in;
wire ts_local_pe_210_a1_out;
wire ts_local_pe_210_a1_oe;
wire ts_local_pe_210_a1_in;
wire ts_local_pe_210_a2_out;
wire ts_local_pe_210_a2_oe;
wire ts_local_pe_210_a2_in;
wire ts_local_pe_211_a0_out;
wire ts_local_pe_211_a0_oe;
wire ts_local_pe_211_a0_in;
wire ts_local_pe_211_a1_out;
wire ts_local_pe_211_a1_oe;
wire ts_local_pe_211_a1_in;
wire ts_local_pe_211_a2_out;
wire ts_local_pe_211_a2_oe;
wire ts_local_pe_211_a2_in;
wire ts_local_pe_212_a0_out;
wire ts_local_pe_212_a0_oe;
wire ts_local_pe_212_a0_in;
wire ts_local_pe_212_a1_out;
wire ts_local_pe_212_a1_oe;
wire ts_local_pe_212_a1_in;
wire ts_local_pe_213_a0_out;
wire ts_local_pe_213_a0_oe;
wire ts_local_pe_213_a0_in;
wire ts_local_pe_213_a1_out;
wire ts_local_pe_213_a1_oe;
wire ts_local_pe_213_a1_in;
wire ts_local_pe_214_a0_out;
wire ts_local_pe_214_a0_oe;
wire ts_local_pe_214_a0_in;
wire ts_local_pe_214_a1_out;
wire ts_local_pe_214_a1_oe;
wire ts_local_pe_214_a1_in;
wire ts_local_pe_215_a0_out;
wire ts_local_pe_215_a0_oe;
wire ts_local_pe_215_a0_in;
wire ts_local_pe_215_a1_out;
wire ts_local_pe_215_a1_oe;
wire ts_local_pe_215_a1_in;
wire ts_local_pe_216_a0_out;
wire ts_local_pe_216_a0_oe;
wire ts_local_pe_216_a0_in;
wire ts_local_pe_216_a1_out;
wire ts_local_pe_216_a1_oe;
wire ts_local_pe_216_a1_in;
wire ts_local_pe_217_a0_out;
wire ts_local_pe_217_a0_oe;
wire ts_local_pe_217_a0_in;
wire ts_local_pe_217_a1_out;
wire ts_local_pe_217_a1_oe;
wire ts_local_pe_217_a1_in;
wire ts_local_pe_218_a0_out;
wire ts_local_pe_218_a0_oe;
wire ts_local_pe_218_a0_in;
wire ts_local_pe_218_a1_out;
wire ts_local_pe_218_a1_oe;
wire ts_local_pe_218_a1_in;
wire ts_local_pe_219_a0_out;
wire ts_local_pe_219_a0_oe;
wire ts_local_pe_219_a0_in;
wire ts_local_pe_219_a1_out;
wire ts_local_pe_219_a1_oe;
wire ts_local_pe_219_a1_in;
wire ts_local_pe_220_a0_out;
wire ts_local_pe_220_a0_oe;
wire ts_local_pe_220_a0_in;
wire ts_local_pe_220_a1_out;
wire ts_local_pe_220_a1_oe;
wire ts_local_pe_220_a1_in;
wire ts_local_pe_221_a0_out;
wire ts_local_pe_221_a0_oe;
wire ts_local_pe_221_a0_in;
wire ts_local_pe_221_a1_out;
wire ts_local_pe_221_a1_oe;
wire ts_local_pe_221_a1_in;
wire ts_local_pe_222_a0_out;
wire ts_local_pe_222_a0_oe;
wire ts_local_pe_222_a0_in;
wire ts_local_pe_222_a1_out;
wire ts_local_pe_222_a1_oe;
wire ts_local_pe_222_a1_in;
wire ts_local_pe_223_a0_out;
wire ts_local_pe_223_a0_oe;
wire ts_local_pe_223_a0_in;
wire ts_local_pe_223_a1_out;
wire ts_local_pe_223_a1_oe;
wire ts_local_pe_223_a1_in;
wire ts_local_pe_224_a0_out;
wire ts_local_pe_224_a0_oe;
wire ts_local_pe_224_a0_in;
wire ts_local_pe_224_a1_out;
wire ts_local_pe_224_a1_oe;
wire ts_local_pe_224_a1_in;
wire ts_local_pe_225_a0_out;
wire ts_local_pe_225_a0_oe;
wire ts_local_pe_225_a0_in;
wire ts_local_pe_225_a1_out;
wire ts_local_pe_225_a1_oe;
wire ts_local_pe_225_a1_in;
wire ts_local_pe_226_a0_out;
wire ts_local_pe_226_a0_oe;
wire ts_local_pe_226_a0_in;
wire ts_local_pe_226_a1_out;
wire ts_local_pe_226_a1_oe;
wire ts_local_pe_226_a1_in;
wire ts_local_pe_227_a0_out;
wire ts_local_pe_227_a0_oe;
wire ts_local_pe_227_a0_in;
wire ts_local_pe_227_a1_out;
wire ts_local_pe_227_a1_oe;
wire ts_local_pe_227_a1_in;

// GRAPHICS.NET (70) - io_addr : join
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

// GRAPHICS.NET (71) - dr[0-15] : join_bus
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

// GRAPHICS.NET (73) - width : join
assign width[0] = width_0_in;
assign width[1] = width_1_in;
assign width[2] = width_2_in;
assign width[3] = width_3_in;

// GRAPHICS.NET (74) - widthd : dummy

// GRAPHICS.NET (75) - a[0-23] : join_bus
assign a_0_out = address_out[0];
assign a_0_oe = address_oe[0];
assign address_in[0] = a_0_in;
assign a_1_out = address_out[1];
assign a_1_oe = address_oe[1];
assign address_in[1] = a_1_in;
assign a_2_out = address_out[2];
assign a_2_oe = address_oe[2];
assign address_in[2] = a_2_in;
assign a_3_out = address_out[3];
assign a_3_oe = address_oe[3];
assign address_in[3] = a_3_in;
assign a_4_out = address_out[4];
assign a_4_oe = address_oe[4];
assign address_in[4] = a_4_in;
assign a_5_out = address_out[5];
assign a_5_oe = address_oe[5];
assign address_in[5] = a_5_in;
assign a_6_out = address_out[6];
assign a_6_oe = address_oe[6];
assign address_in[6] = a_6_in;
assign a_7_out = address_out[7];
assign a_7_oe = address_oe[7];
assign address_in[7] = a_7_in;
assign a_8_out = address_out[8];
assign a_8_oe = address_oe[8];
assign address_in[8] = a_8_in;
assign a_9_out = address_out[9];
assign a_9_oe = address_oe[9];
assign address_in[9] = a_9_in;
assign a_10_out = address_out[10];
assign a_10_oe = address_oe[10];
assign address_in[10] = a_10_in;
assign a_11_out = address_out[11];
assign a_11_oe = address_oe[11];
assign address_in[11] = a_11_in;
assign a_12_out = address_out[12];
assign a_12_oe = address_oe[12];
assign address_in[12] = a_12_in;
assign a_13_out = address_out[13];
assign a_13_oe = address_oe[13];
assign address_in[13] = a_13_in;
assign a_14_out = address_out[14];
assign a_14_oe = address_oe[14];
assign address_in[14] = a_14_in;
assign a_15_out = address_out[15];
assign a_15_oe = address_oe[15];
assign address_in[15] = a_15_in;
assign a_16_out = address_out[16];
assign a_16_oe = address_oe[16];
assign address_in[16] = a_16_in;
assign a_17_out = address_out[17];
assign a_17_oe = address_oe[17];
assign address_in[17] = a_17_in;
assign a_18_out = address_out[18];
assign a_18_oe = address_oe[18];
assign address_in[18] = a_18_in;
assign a_19_out = address_out[19];
assign a_19_oe = address_oe[19];
assign address_in[19] = a_19_in;
assign a_20_out = address_out[20];
assign a_20_oe = address_oe[20];
assign address_in[20] = a_20_in;
assign a_21_out = address_out[21];
assign a_21_oe = address_oe[21];
assign address_in[21] = a_21_in;
assign a_22_out = address_out[22];
assign a_22_oe = address_oe[22];
assign address_in[22] = a_22_in;
assign a_23_out = address_out[23];
assign a_23_oe = address_oe[23];
assign address_in[23] = a_23_in;

// GRAPHICS.NET (79) - dintd : fd1
fd1 dintd_inst
(
	.q /* OUT */ (dintd),
	.qn /* OUT */ (dintd_n),
	.d /* IN */ (dint),
	.cp /* IN */ (clk_11),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (80) - dintdum : dummy

// GRAPHICS.NET (81) - gpu_irq[1] : an2
assign gpu_irq_1 = dint & dintd_n;

// GRAPHICS.NET (83) - resetl[4] : buf8x6
assign resetl_4 = reset_n;

// GRAPHICS.NET (84) - resetl[5] : buf8x2
assign resetl_5 = reset_n;

// GRAPHICS.NET (85) - resetl[6] : buf1
assign resetl_6 = reset_n;

// GRAPHICS.NET (86) - resetl[7] : buf1
assign resetl_7 = reset_n;

// GRAPHICS.NET (87) - resetl[8] : buf4
assign resetl_8 = reset_n;

// GRAPHICS.NET (88) - resetl[9] : buf1
assign resetl_9 = reset_n;

// GRAPHICS.NET (89) - resetl[10] : buf1
assign resetl_10 = reset_n;

// GRAPHICS.NET (90) - resetl[11] : buf2
assign resetl_11 = reset_n;

// GRAPHICS.NET (91) - resetl[12] : buf1
assign resetl_12 = reset_n;

// GRAPHICS.NET (92) - clk[5] : buf64
assign clk_5 = clk;

// GRAPHICS.NET (93) - clk[6] : buf48
assign clk_6 = clk;

// GRAPHICS.NET (94) - clk[7] : buf24
assign clk_7 = clk;

// GRAPHICS.NET (95) - clk[8] : buf48
assign clk_8 = clk;

// GRAPHICS.NET (96) - clk[9] : buf24
assign clk_9 = clk;

// GRAPHICS.NET (97) - clk[10] : buf24
assign clk_10 = clk;

// GRAPHICS.NET (98) - clk[11] : buf4
assign clk_11 = clk;

// GRAPHICS.NET (99) - clk[15] : buf16
assign clk_15 = clk;

// GRAPHICS.NET (103) - ins_exec : ins_exec
ins_exec ins_exec_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_164_a0_out,ts_local_pe_165_a0_out,ts_local_pe_166_a0_out,ts_local_pe_167_a0_out,ts_local_pe_168_a0_out,ts_local_pe_169_a0_out,ts_local_pe_170_a0_out,ts_local_pe_171_a0_out,ts_local_pe_172_a0_out,ts_local_pe_173_a0_out,ts_local_pe_174_a0_out,ts_local_pe_175_a0_out,ts_local_pe_176_a0_out,ts_local_pe_177_a0_out,ts_local_pe_178_a0_out,ts_local_pe_179_a0_out,ts_local_pe_180_a0_out,ts_local_pe_181_a0_out,ts_local_pe_182_a0_out,ts_local_pe_183_a0_out,ts_local_pe_184_a0_out,ts_local_pe_185_a0_out,ts_local_pe_186_a0_out,ts_local_pe_187_a0_out,ts_local_pe_188_a0_out,ts_local_pe_189_a0_out,ts_local_pe_190_a0_out,ts_local_pe_191_a0_out,ts_local_pe_192_a0_out,ts_local_pe_193_a0_out,ts_local_pe_194_a0_out,ts_local_pe_195_a0_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_164_a0_oe,ts_local_pe_165_a0_oe,ts_local_pe_166_a0_oe,ts_local_pe_167_a0_oe,ts_local_pe_168_a0_oe,ts_local_pe_169_a0_oe,ts_local_pe_170_a0_oe,ts_local_pe_171_a0_oe,ts_local_pe_172_a0_oe,ts_local_pe_173_a0_oe,ts_local_pe_174_a0_oe,ts_local_pe_175_a0_oe,ts_local_pe_176_a0_oe,ts_local_pe_177_a0_oe,ts_local_pe_178_a0_oe,ts_local_pe_179_a0_oe,ts_local_pe_180_a0_oe,ts_local_pe_181_a0_oe,ts_local_pe_182_a0_oe,ts_local_pe_183_a0_oe,ts_local_pe_184_a0_oe,ts_local_pe_185_a0_oe,ts_local_pe_186_a0_oe,ts_local_pe_187_a0_oe,ts_local_pe_188_a0_oe,ts_local_pe_189_a0_oe,ts_local_pe_190_a0_oe,ts_local_pe_191_a0_oe,ts_local_pe_192_a0_oe,ts_local_pe_193_a0_oe,ts_local_pe_194_a0_oe,ts_local_pe_195_a0_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_164_a0_in,ts_local_pe_165_a0_in,ts_local_pe_166_a0_in,ts_local_pe_167_a0_in,ts_local_pe_168_a0_in,ts_local_pe_169_a0_in,ts_local_pe_170_a0_in,ts_local_pe_171_a0_in,ts_local_pe_172_a0_in,ts_local_pe_173_a0_in,ts_local_pe_174_a0_in,ts_local_pe_175_a0_in,ts_local_pe_176_a0_in,ts_local_pe_177_a0_in,ts_local_pe_178_a0_in,ts_local_pe_179_a0_in,ts_local_pe_180_a0_in,ts_local_pe_181_a0_in,ts_local_pe_182_a0_in,ts_local_pe_183_a0_in,ts_local_pe_184_a0_in,ts_local_pe_185_a0_in,ts_local_pe_186_a0_in,ts_local_pe_187_a0_in,ts_local_pe_188_a0_in,ts_local_pe_189_a0_in,ts_local_pe_190_a0_in,ts_local_pe_191_a0_in,ts_local_pe_192_a0_in,ts_local_pe_193_a0_in,ts_local_pe_194_a0_in,ts_local_pe_195_a0_in}),
	.gpu_dout_3_out /* BUS */ (ts_local_pe_199_a0_out),
	.gpu_dout_3_oe /* BUS */ (ts_local_pe_199_a0_oe),
	.gpu_dout_3_in /* BUS */ (ts_local_pe_199_a0_in),
	.gpu_dout_4_out /* BUS */ (ts_local_pe_200_a0_out),
	.gpu_dout_4_oe /* BUS */ (ts_local_pe_200_a0_oe),
	.gpu_dout_4_in /* BUS */ (ts_local_pe_200_a0_in),
	.gpu_dout_5_out /* BUS */ (ts_local_pe_201_a0_out),
	.gpu_dout_5_oe /* BUS */ (ts_local_pe_201_a0_oe),
	.gpu_dout_5_in /* BUS */ (ts_local_pe_201_a0_in),
	.gpu_dout_6_out /* BUS */ (ts_local_pe_202_a0_out),
	.gpu_dout_6_oe /* BUS */ (ts_local_pe_202_a0_oe),
	.gpu_dout_6_in /* BUS */ (ts_local_pe_202_a0_in),
	.gpu_dout_7_out /* BUS */ (ts_local_pe_203_a0_out),
	.gpu_dout_7_oe /* BUS */ (ts_local_pe_203_a0_oe),
	.gpu_dout_7_in /* BUS */ (ts_local_pe_203_a0_in),
	.gpu_dout_8_out /* BUS */ (ts_local_pe_204_a0_out),
	.gpu_dout_8_oe /* BUS */ (ts_local_pe_204_a0_oe),
	.gpu_dout_8_in /* BUS */ (ts_local_pe_204_a0_in),
	.gpu_dout_9_out /* BUS */ (ts_local_pe_205_a0_out),
	.gpu_dout_9_oe /* BUS */ (ts_local_pe_205_a0_oe),
	.gpu_dout_9_in /* BUS */ (ts_local_pe_205_a0_in),
	.gpu_dout_10_out /* BUS */ (ts_local_pe_206_a0_out),
	.gpu_dout_10_oe /* BUS */ (ts_local_pe_206_a0_oe),
	.gpu_dout_10_in /* BUS */ (ts_local_pe_206_a0_in),
	.gpu_dout_11_out /* BUS */ (ts_local_pe_207_a0_out),
	.gpu_dout_11_oe /* BUS */ (ts_local_pe_207_a0_oe),
	.gpu_dout_11_in /* BUS */ (ts_local_pe_207_a0_in),
	.gpu_dout_12_out /* BUS */ (ts_local_pe_208_a0_out),
	.gpu_dout_12_oe /* BUS */ (ts_local_pe_208_a0_oe),
	.gpu_dout_12_in /* BUS */ (ts_local_pe_208_a0_in),
	.gpu_dout_13_out /* BUS */ (ts_local_pe_209_a0_out),
	.gpu_dout_13_oe /* BUS */ (ts_local_pe_209_a0_oe),
	.gpu_dout_13_in /* BUS */ (ts_local_pe_209_a0_in),
	.gpu_dout_14_out /* BUS */ (ts_local_pe_210_a0_out),
	.gpu_dout_14_oe /* BUS */ (ts_local_pe_210_a0_oe),
	.gpu_dout_14_in /* BUS */ (ts_local_pe_210_a0_in),
	.gpu_dout_16_out /* BUS */ (ts_local_pe_212_a0_out),
	.gpu_dout_16_oe /* BUS */ (ts_local_pe_212_a0_oe),
	.gpu_dout_16_in /* BUS */ (ts_local_pe_212_a0_in),
	.gpu_dout_17_out /* BUS */ (ts_local_pe_213_a0_out),
	.gpu_dout_17_oe /* BUS */ (ts_local_pe_213_a0_oe),
	.gpu_dout_17_in /* BUS */ (ts_local_pe_213_a0_in),
	.gpu_dout_18_out /* BUS */ (ts_local_pe_214_a0_out),
	.gpu_dout_18_oe /* BUS */ (ts_local_pe_214_a0_oe),
	.gpu_dout_18_in /* BUS */ (ts_local_pe_214_a0_in),
	.gpu_dout_19_out /* BUS */ (ts_local_pe_215_a0_out),
	.gpu_dout_19_oe /* BUS */ (ts_local_pe_215_a0_oe),
	.gpu_dout_19_in /* BUS */ (ts_local_pe_215_a0_in),
	.gpu_dout_20_out /* BUS */ (ts_local_pe_216_a0_out),
	.gpu_dout_20_oe /* BUS */ (ts_local_pe_216_a0_oe),
	.gpu_dout_20_in /* BUS */ (ts_local_pe_216_a0_in),
	.gpu_dout_21_out /* BUS */ (ts_local_pe_217_a0_out),
	.gpu_dout_21_oe /* BUS */ (ts_local_pe_217_a0_oe),
	.gpu_dout_21_in /* BUS */ (ts_local_pe_217_a0_in),
	.gpu_dout_22_out /* BUS */ (ts_local_pe_218_a0_out),
	.gpu_dout_22_oe /* BUS */ (ts_local_pe_218_a0_oe),
	.gpu_dout_22_in /* BUS */ (ts_local_pe_218_a0_in),
	.gpu_dout_23_out /* BUS */ (ts_local_pe_219_a0_out),
	.gpu_dout_23_oe /* BUS */ (ts_local_pe_219_a0_oe),
	.gpu_dout_23_in /* BUS */ (ts_local_pe_219_a0_in),
	.gpu_dout_24_out /* BUS */ (ts_local_pe_220_a0_out),
	.gpu_dout_24_oe /* BUS */ (ts_local_pe_220_a0_oe),
	.gpu_dout_24_in /* BUS */ (ts_local_pe_220_a0_in),
	.gpu_dout_25_out /* BUS */ (ts_local_pe_221_a0_out),
	.gpu_dout_25_oe /* BUS */ (ts_local_pe_221_a0_oe),
	.gpu_dout_25_in /* BUS */ (ts_local_pe_221_a0_in),
	.gpu_dout_26_out /* BUS */ (ts_local_pe_222_a0_out),
	.gpu_dout_26_oe /* BUS */ (ts_local_pe_222_a0_oe),
	.gpu_dout_26_in /* BUS */ (ts_local_pe_222_a0_in),
	.gpu_dout_27_out /* BUS */ (ts_local_pe_223_a0_out),
	.gpu_dout_27_oe /* BUS */ (ts_local_pe_223_a0_oe),
	.gpu_dout_27_in /* BUS */ (ts_local_pe_223_a0_in),
	.gpu_dout_28_out /* BUS */ (ts_local_pe_224_a0_out),
	.gpu_dout_28_oe /* BUS */ (ts_local_pe_224_a0_oe),
	.gpu_dout_28_in /* BUS */ (ts_local_pe_224_a0_in),
	.gpu_dout_29_out /* BUS */ (ts_local_pe_225_a0_out),
	.gpu_dout_29_oe /* BUS */ (ts_local_pe_225_a0_oe),
	.gpu_dout_29_in /* BUS */ (ts_local_pe_225_a0_in),
	.gpu_dout_30_out /* BUS */ (ts_local_pe_226_a0_out),
	.gpu_dout_30_oe /* BUS */ (ts_local_pe_226_a0_oe),
	.gpu_dout_30_in /* BUS */ (ts_local_pe_226_a0_in),
	.gpu_dout_31_out /* BUS */ (ts_local_pe_227_a0_out),
	.gpu_dout_31_oe /* BUS */ (ts_local_pe_227_a0_oe),
	.gpu_dout_31_in /* BUS */ (ts_local_pe_227_a0_in),
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
	.satsz_0 /* OUT */ (satsz_0),
	.satsz_1 /* OUT */ (satsz_1),
	.srcrrd /* OUT */ (srcrrd),
	.single_stop /* OUT */ (single_stop),
	.srcanwi /* OUT */ ({srcanwi[0],srcanwi[1],srcanwi[2],srcanwi[3],srcanwi[4],srcanwi[5]}),
	.big_instr /* IN */ (big_instr),
	.carry_flag /* IN */ (carry_flag),
	.clk /* IN */ (clk_5),
	.tlw /* IN */ (tlw),
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
	.mtxawr /* IN */ (mtxawr),
	.mtxcwr /* IN */ (mtxcwr),
	.nega_flag /* IN */ (nega_flag),
	.pcrd /* IN */ (pcrd),
	.pcwr /* IN */ (pcwr),
	.progack /* IN */ (progack),
	.resaddrldi /* IN */ (resaddrldi),
	.reset_n /* IN */ (resetl_4),
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

// GRAPHICS.NET (125) - sboard : sboard
sboard sboard_inst
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
	.clk /* IN */ (clk_6),
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
	.reset_n /* IN */ (resetl_5),
	.reswr /* IN */ (reswr),
	.result /* IN */ ({result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15],result[16],result[17],result[18],result[19],result[20],result[21],result[22],result[23],result[24],result[25],result[26],result[27],result[28],result[29],result[30],result[31]}),
	.srcanwi /* IN */ ({srcanwi[0],srcanwi[1],srcanwi[2],srcanwi[3],srcanwi[4],srcanwi[5]}),
	.srcdp /* IN */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.srcrrd /* IN */ (srcrrd),
	.xld_ready /* IN */ (xld_ready),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (140) - arith : arith
arith arith_inst
(
	.gpu_dout_0_out /* BUS */ (ts_local_pe_196_a0_out),
	.gpu_dout_0_oe /* BUS */ (ts_local_pe_196_a0_oe),
	.gpu_dout_0_in /* BUS */ (ts_local_pe_196_a0_in),
	.gpu_dout_1_out /* BUS */ (ts_local_pe_197_a0_out),
	.gpu_dout_1_oe /* BUS */ (ts_local_pe_197_a0_oe),
	.gpu_dout_1_in /* BUS */ (ts_local_pe_197_a0_in),
	.gpu_dout_2_out /* BUS */ (ts_local_pe_198_a0_out),
	.gpu_dout_2_oe /* BUS */ (ts_local_pe_198_a0_oe),
	.gpu_dout_2_in /* BUS */ (ts_local_pe_198_a0_in),
	.carry_flag /* OUT */ (carry_flag),
	.nega_flag /* OUT */ (nega_flag),
	.result /* OUT */ ({result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15],result[16],result[17],result[18],result[19],result[20],result[21],result[22],result[23],result[24],result[25],result[26],result[27],result[28],result[29],result[30],result[31]}),
	.zero_flag /* OUT */ (zero_flag),
	.dstdp /* IN */ ({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]}),
	.srcdp /* IN */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.srcd_31 /* IN */ (srcd[31]),
	.alufunc /* IN */ ({alufunc[0],alufunc[1],alufunc[2]}),
	.brlmux_0 /* IN */ (brlmux_0),
	.brlmux_1 /* IN */ (brlmux_1),
	.clk /* IN */ (clk_7),
	.flagld /* IN */ (flagld),
	.flagrd /* IN */ (flagrd),
	.flagwr /* IN */ (flagwr),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.macop /* IN */ (macop),
	.multsel /* IN */ (multsel),
	.multsign /* IN */ (multsign),
	.reset_n /* IN */ (resetl_6),
	.resld /* IN */ (resld),
	.ressel_0 /* IN */ (ressel_0),
	.ressel_1 /* IN */ (ressel_1),
	.ressel_2 /* IN */ (ressel_2),
	.rev_sub /* IN */ (rev_sub),
	.satsz_0 /* IN */ (satsz_0),
	.satsz_1 /* IN */ (satsz_1),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (149) - divide : divider
divider divide_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_164_a1_out,ts_local_pe_165_a1_out,ts_local_pe_166_a1_out,ts_local_pe_167_a1_out,ts_local_pe_168_a1_out,ts_local_pe_169_a1_out,ts_local_pe_170_a1_out,ts_local_pe_171_a1_out,ts_local_pe_172_a1_out,ts_local_pe_173_a1_out,ts_local_pe_174_a1_out,ts_local_pe_175_a1_out,ts_local_pe_176_a1_out,ts_local_pe_177_a1_out,ts_local_pe_178_a1_out,ts_local_pe_179_a1_out,ts_local_pe_180_a1_out,ts_local_pe_181_a1_out,ts_local_pe_182_a1_out,ts_local_pe_183_a1_out,ts_local_pe_184_a1_out,ts_local_pe_185_a1_out,ts_local_pe_186_a1_out,ts_local_pe_187_a1_out,ts_local_pe_188_a1_out,ts_local_pe_189_a1_out,ts_local_pe_190_a1_out,ts_local_pe_191_a1_out,ts_local_pe_192_a1_out,ts_local_pe_193_a1_out,ts_local_pe_194_a1_out,ts_local_pe_195_a1_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_164_a1_oe,ts_local_pe_165_a1_oe,ts_local_pe_166_a1_oe,ts_local_pe_167_a1_oe,ts_local_pe_168_a1_oe,ts_local_pe_169_a1_oe,ts_local_pe_170_a1_oe,ts_local_pe_171_a1_oe,ts_local_pe_172_a1_oe,ts_local_pe_173_a1_oe,ts_local_pe_174_a1_oe,ts_local_pe_175_a1_oe,ts_local_pe_176_a1_oe,ts_local_pe_177_a1_oe,ts_local_pe_178_a1_oe,ts_local_pe_179_a1_oe,ts_local_pe_180_a1_oe,ts_local_pe_181_a1_oe,ts_local_pe_182_a1_oe,ts_local_pe_183_a1_oe,ts_local_pe_184_a1_oe,ts_local_pe_185_a1_oe,ts_local_pe_186_a1_oe,ts_local_pe_187_a1_oe,ts_local_pe_188_a1_oe,ts_local_pe_189_a1_oe,ts_local_pe_190_a1_oe,ts_local_pe_191_a1_oe,ts_local_pe_192_a1_oe,ts_local_pe_193_a1_oe,ts_local_pe_194_a1_oe,ts_local_pe_195_a1_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_164_a1_in,ts_local_pe_165_a1_in,ts_local_pe_166_a1_in,ts_local_pe_167_a1_in,ts_local_pe_168_a1_in,ts_local_pe_169_a1_in,ts_local_pe_170_a1_in,ts_local_pe_171_a1_in,ts_local_pe_172_a1_in,ts_local_pe_173_a1_in,ts_local_pe_174_a1_in,ts_local_pe_175_a1_in,ts_local_pe_176_a1_in,ts_local_pe_177_a1_in,ts_local_pe_178_a1_in,ts_local_pe_179_a1_in,ts_local_pe_180_a1_in,ts_local_pe_181_a1_in,ts_local_pe_182_a1_in,ts_local_pe_183_a1_in,ts_local_pe_184_a1_in,ts_local_pe_185_a1_in,ts_local_pe_186_a1_in,ts_local_pe_187_a1_in,ts_local_pe_188_a1_in,ts_local_pe_189_a1_in,ts_local_pe_190_a1_in,ts_local_pe_191_a1_in,ts_local_pe_192_a1_in,ts_local_pe_193_a1_in,ts_local_pe_194_a1_in,ts_local_pe_195_a1_in}),
	.div_activei /* OUT */ (div_activei),
	.quotient /* OUT */ ({quotient[0],quotient[1],quotient[2],quotient[3],quotient[4],quotient[5],quotient[6],quotient[7],quotient[8],quotient[9],quotient[10],quotient[11],quotient[12],quotient[13],quotient[14],quotient[15],quotient[16],quotient[17],quotient[18],quotient[19],quotient[20],quotient[21],quotient[22],quotient[23],quotient[24],quotient[25],quotient[26],quotient[27],quotient[28],quotient[29],quotient[30],quotient[31]}),
	.clk /* IN */ (clk_8),
	.div_start /* IN */ (div_start),
	.divwr /* IN */ (divwr),
	.dstd /* IN */ ({dstd[0],dstd[1],dstd[2],dstd[3],dstd[4],dstd[5],dstd[6],dstd[7],dstd[8],dstd[9],dstd[10],dstd[11],dstd[12],dstd[13],dstd[14],dstd[15],dstd[16],dstd[17],dstd[18],dstd[19],dstd[20],dstd[21],dstd[22],dstd[23],dstd[24],dstd[25],dstd[26],dstd[27],dstd[28],dstd[29],dstd[30],dstd[31]}),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.remrd /* IN */ (remrd),
	.reset_n /* IN */ (resetl_7),
	.srcd /* IN */ ({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (155) - registers : registers
registers registers_inst
(
	.srcd /* OUT */ ({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}),
	.srcdp /* OUT */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.srcdpa /* OUT */ ({srcdpa[0],srcdpa[1],srcdpa[2],srcdpa[3],srcdpa[4],srcdpa[5],srcdpa[6],srcdpa[7],srcdpa[8],srcdpa[9],srcdpa[10],srcdpa[11],srcdpa[12],srcdpa[13],srcdpa[14],srcdpa[15],srcdpa[16],srcdpa[17],srcdpa[18],srcdpa[19],srcdpa[20],srcdpa[21],srcdpa[22],srcdpa[23],srcdpa[24],srcdpa[25],srcdpa[26],srcdpa[27],srcdpa[28],srcdpa[29],srcdpa[30],srcdpa[31]}),
	.dstd /* OUT */ ({dstd[0],dstd[1],dstd[2],dstd[3],dstd[4],dstd[5],dstd[6],dstd[7],dstd[8],dstd[9],dstd[10],dstd[11],dstd[12],dstd[13],dstd[14],dstd[15],dstd[16],dstd[17],dstd[18],dstd[19],dstd[20],dstd[21],dstd[22],dstd[23],dstd[24],dstd[25],dstd[26],dstd[27],dstd[28],dstd[29],dstd[30],dstd[31]}),
	.dstdp /* OUT */ ({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]}),
	.clk /* IN */ (clk_9),
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

// GRAPHICS.NET (162) - gpu_mem : gpu_mem
gpu_mem gpu_mem_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_164_a2_out,ts_local_pe_165_a2_out,ts_local_pe_166_a2_out,ts_local_pe_167_a2_out,ts_local_pe_168_a2_out,ts_local_pe_169_a2_out,ts_local_pe_170_a2_out,ts_local_pe_171_a2_out,ts_local_pe_172_a2_out,ts_local_pe_173_a2_out,ts_local_pe_174_a2_out,ts_local_pe_175_a2_out,ts_local_pe_176_a2_out,ts_local_pe_177_a2_out,ts_local_pe_178_a2_out,ts_local_pe_179_a2_out,ts_local_pe_180_a2_out,ts_local_pe_181_a2_out,ts_local_pe_182_a2_out,ts_local_pe_183_a2_out,ts_local_pe_184_a2_out,ts_local_pe_185_a2_out,ts_local_pe_186_a2_out,ts_local_pe_187_a2_out,ts_local_pe_188_a2_out,ts_local_pe_189_a2_out,ts_local_pe_190_a2_out,ts_local_pe_191_a2_out,ts_local_pe_192_a2_out,ts_local_pe_193_a2_out,ts_local_pe_194_a2_out,ts_local_pe_195_a2_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_164_a2_oe,ts_local_pe_165_a2_oe,ts_local_pe_166_a2_oe,ts_local_pe_167_a2_oe,ts_local_pe_168_a2_oe,ts_local_pe_169_a2_oe,ts_local_pe_170_a2_oe,ts_local_pe_171_a2_oe,ts_local_pe_172_a2_oe,ts_local_pe_173_a2_oe,ts_local_pe_174_a2_oe,ts_local_pe_175_a2_oe,ts_local_pe_176_a2_oe,ts_local_pe_177_a2_oe,ts_local_pe_178_a2_oe,ts_local_pe_179_a2_oe,ts_local_pe_180_a2_oe,ts_local_pe_181_a2_oe,ts_local_pe_182_a2_oe,ts_local_pe_183_a2_oe,ts_local_pe_184_a2_oe,ts_local_pe_185_a2_oe,ts_local_pe_186_a2_oe,ts_local_pe_187_a2_oe,ts_local_pe_188_a2_oe,ts_local_pe_189_a2_oe,ts_local_pe_190_a2_oe,ts_local_pe_191_a2_oe,ts_local_pe_192_a2_oe,ts_local_pe_193_a2_oe,ts_local_pe_194_a2_oe,ts_local_pe_195_a2_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_164_a2_in,ts_local_pe_165_a2_in,ts_local_pe_166_a2_in,ts_local_pe_167_a2_in,ts_local_pe_168_a2_in,ts_local_pe_169_a2_in,ts_local_pe_170_a2_in,ts_local_pe_171_a2_in,ts_local_pe_172_a2_in,ts_local_pe_173_a2_in,ts_local_pe_174_a2_in,ts_local_pe_175_a2_in,ts_local_pe_176_a2_in,ts_local_pe_177_a2_in,ts_local_pe_178_a2_in,ts_local_pe_179_a2_in,ts_local_pe_180_a2_in,ts_local_pe_181_a2_in,ts_local_pe_182_a2_in,ts_local_pe_183_a2_in,ts_local_pe_184_a2_in,ts_local_pe_185_a2_in,ts_local_pe_186_a2_in,ts_local_pe_187_a2_in,ts_local_pe_188_a2_in,ts_local_pe_189_a2_in,ts_local_pe_190_a2_in,ts_local_pe_191_a2_in,ts_local_pe_192_a2_in,ts_local_pe_193_a2_in,ts_local_pe_194_a2_in,ts_local_pe_195_a2_in}),
	.big_instr /* OUT */ (big_instr),
	.big_io /* OUT */ (big_io),
	.big_pix /* OUT */ (big_pix),
	.bliten /* OUT */ (bliten),
	.ctrlwr /* OUT */ (ctrlwr),
	.ctrlwrgo /* OUT */ (ctrlwrgo),
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
	.hidrd /* OUT */ (hidrd),
	.hidwr /* OUT */ (hidwr),
	.lock /* OUT */ (lock),
	.mem_data /* OUT */ ({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]}),
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
	.ramen /* OUT */ (ramen),
	.remrd /* OUT */ (remrd),
	.statrd /* OUT */ (statrd),
	.clk /* IN */ (clk_10),
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
	.reset_n /* IN */ (resetl_8),
	.reset_lock /* IN */ (reset_lock),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (176) - gpu_ctrl : gpu_ctrl
gpu_ctrl gpu_ctrl_inst
(
	.gpu_dout_0_out /* BUS */ (ts_local_pe_196_a1_out),
	.gpu_dout_0_oe /* BUS */ (ts_local_pe_196_a1_oe),
	.gpu_dout_0_in /* BUS */ (ts_local_pe_196_a1_in),
	.gpu_dout_1_out /* BUS */ (ts_local_pe_197_a1_out),
	.gpu_dout_1_oe /* BUS */ (ts_local_pe_197_a1_oe),
	.gpu_dout_1_in /* BUS */ (ts_local_pe_197_a1_in),
	.gpu_dout_2_out /* BUS */ (ts_local_pe_198_a1_out),
	.gpu_dout_2_oe /* BUS */ (ts_local_pe_198_a1_oe),
	.gpu_dout_2_in /* BUS */ (ts_local_pe_198_a1_in),
	.gpu_dout_3_out /* BUS */ (ts_local_pe_199_a1_out),
	.gpu_dout_3_oe /* BUS */ (ts_local_pe_199_a1_oe),
	.gpu_dout_3_in /* BUS */ (ts_local_pe_199_a1_in),
	.gpu_dout_4_out /* BUS */ (ts_local_pe_200_a1_out),
	.gpu_dout_4_oe /* BUS */ (ts_local_pe_200_a1_oe),
	.gpu_dout_4_in /* BUS */ (ts_local_pe_200_a1_in),
	.gpu_dout_5_out /* BUS */ (ts_local_pe_201_a1_out),
	.gpu_dout_5_oe /* BUS */ (ts_local_pe_201_a1_oe),
	.gpu_dout_5_in /* BUS */ (ts_local_pe_201_a1_in),
	.gpu_dout_11_out /* BUS */ (ts_local_pe_207_a1_out),
	.gpu_dout_11_oe /* BUS */ (ts_local_pe_207_a1_oe),
	.gpu_dout_11_in /* BUS */ (ts_local_pe_207_a1_in),
	.gpu_dout_12_out /* BUS */ (ts_local_pe_208_a1_out),
	.gpu_dout_12_oe /* BUS */ (ts_local_pe_208_a1_oe),
	.gpu_dout_12_in /* BUS */ (ts_local_pe_208_a1_in),
	.gpu_dout_13_out /* BUS */ (ts_local_pe_209_a1_out),
	.gpu_dout_13_oe /* BUS */ (ts_local_pe_209_a1_oe),
	.gpu_dout_13_in /* BUS */ (ts_local_pe_209_a1_in),
	.gpu_dout_14_out /* BUS */ (ts_local_pe_210_a1_out),
	.gpu_dout_14_oe /* BUS */ (ts_local_pe_210_a1_oe),
	.gpu_dout_14_in /* BUS */ (ts_local_pe_210_a1_in),
	.gpu_dout_15_out /* BUS */ (ts_local_pe_211_a0_out),
	.gpu_dout_15_oe /* BUS */ (ts_local_pe_211_a0_oe),
	.gpu_dout_15_in /* BUS */ (ts_local_pe_211_a0_in),
	.bus_hog /* OUT */ (bus_hog),
	.cpu_int /* OUT */ (cpu_int),
	.go /* OUT */ (go),
	.gpu_irq_0 /* OUT */ (gpu_irq_0),
	.single_go /* OUT */ (single_go),
	.single_step /* OUT */ (single_step),
	.clk /* IN */ (clk_11),
	.ctrlwr /* IN */ (ctrlwr),
	.ctrlwrgo /* IN */ (ctrlwrgo),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.reset_n /* IN */ (resetl_9),
	.single_stop /* IN */ (single_stop),
	.statrd /* IN */ (statrd),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (184) - gpu_ram : gpu_ram
gpu_ram gpu_ram_inst
(
	.gpu_data_out /* BUS */ ({ts_local_pe_164_a3_out,ts_local_pe_165_a3_out,ts_local_pe_166_a3_out,ts_local_pe_167_a3_out,ts_local_pe_168_a3_out,ts_local_pe_169_a3_out,ts_local_pe_170_a3_out,ts_local_pe_171_a3_out,ts_local_pe_172_a3_out,ts_local_pe_173_a3_out,ts_local_pe_174_a3_out,ts_local_pe_175_a3_out,ts_local_pe_176_a3_out,ts_local_pe_177_a3_out,ts_local_pe_178_a3_out,ts_local_pe_179_a3_out,ts_local_pe_180_a3_out,ts_local_pe_181_a3_out,ts_local_pe_182_a3_out,ts_local_pe_183_a3_out,ts_local_pe_184_a3_out,ts_local_pe_185_a3_out,ts_local_pe_186_a3_out,ts_local_pe_187_a3_out,ts_local_pe_188_a3_out,ts_local_pe_189_a3_out,ts_local_pe_190_a3_out,ts_local_pe_191_a3_out,ts_local_pe_192_a3_out,ts_local_pe_193_a3_out,ts_local_pe_194_a3_out,ts_local_pe_195_a3_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_164_a3_oe,ts_local_pe_165_a3_oe,ts_local_pe_166_a3_oe,ts_local_pe_167_a3_oe,ts_local_pe_168_a3_oe,ts_local_pe_169_a3_oe,ts_local_pe_170_a3_oe,ts_local_pe_171_a3_oe,ts_local_pe_172_a3_oe,ts_local_pe_173_a3_oe,ts_local_pe_174_a3_oe,ts_local_pe_175_a3_oe,ts_local_pe_176_a3_oe,ts_local_pe_177_a3_oe,ts_local_pe_178_a3_oe,ts_local_pe_179_a3_oe,ts_local_pe_180_a3_oe,ts_local_pe_181_a3_oe,ts_local_pe_182_a3_oe,ts_local_pe_183_a3_oe,ts_local_pe_184_a3_oe,ts_local_pe_185_a3_oe,ts_local_pe_186_a3_oe,ts_local_pe_187_a3_oe,ts_local_pe_188_a3_oe,ts_local_pe_189_a3_oe,ts_local_pe_190_a3_oe,ts_local_pe_191_a3_oe,ts_local_pe_192_a3_oe,ts_local_pe_193_a3_oe,ts_local_pe_194_a3_oe,ts_local_pe_195_a3_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_164_a3_in,ts_local_pe_165_a3_in,ts_local_pe_166_a3_in,ts_local_pe_167_a3_in,ts_local_pe_168_a3_in,ts_local_pe_169_a3_in,ts_local_pe_170_a3_in,ts_local_pe_171_a3_in,ts_local_pe_172_a3_in,ts_local_pe_173_a3_in,ts_local_pe_174_a3_in,ts_local_pe_175_a3_in,ts_local_pe_176_a3_in,ts_local_pe_177_a3_in,ts_local_pe_178_a3_in,ts_local_pe_179_a3_in,ts_local_pe_180_a3_in,ts_local_pe_181_a3_in,ts_local_pe_182_a3_in,ts_local_pe_183_a3_in,ts_local_pe_184_a3_in,ts_local_pe_185_a3_in,ts_local_pe_186_a3_in,ts_local_pe_187_a3_in,ts_local_pe_188_a3_in,ts_local_pe_189_a3_in,ts_local_pe_190_a3_in,ts_local_pe_191_a3_in,ts_local_pe_192_a3_in,ts_local_pe_193_a3_in,ts_local_pe_194_a3_in,ts_local_pe_195_a3_in}),
	.clk /* IN */ (clk_11),
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
	.ramen /* IN */ (ramen),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (189) - gpu_cpu : gpu_cpu
gpu_cpu gpu_cpu_inst
(
	.dread_out /* BUS */ ({dread_out[0],dread_out[1],dread_out[2],dread_out[3],dread_out[4],dread_out[5],dread_out[6],dread_out[7],dread_out[8],dread_out[9],dread_out[10],dread_out[11],dread_out[12],dread_out[13],dread_out[14],dread_out[15]}),
	.dread_oe /* BUS */ ({dread_oe[0],dread_oe[1],dread_oe[2],dread_oe[3],dread_oe[4],dread_oe[5],dread_oe[6],dread_oe[7],dread_oe[8],dread_oe[9],dread_oe[10],dread_oe[11],dread_oe[12],dread_oe[13],dread_oe[14],dread_oe[15]}),
	.dread_in /* BUS */ ({dread_in[0],dread_in[1],dread_in[2],dread_in[3],dread_in[4],dread_in[5],dread_in[6],dread_in[7],dread_in[8],dread_in[9],dread_in[10],dread_in[11],dread_in[12],dread_in[13],dread_in[14],dread_in[15]}),
	.cpuaddr /* OUT */ ({cpuaddr[0],cpuaddr[1],cpuaddr[2],cpuaddr[3],cpuaddr[4],cpuaddr[5],cpuaddr[6],cpuaddr[7],cpuaddr[8],cpuaddr[9],cpuaddr[10],cpuaddr[11],cpuaddr[12]}),
	.cpudata /* OUT */ ({cpudata[0],cpudata[1],cpudata[2],cpudata[3],cpudata[4],cpudata[5],cpudata[6],cpudata[7],cpudata[8],cpudata[9],cpudata[10],cpudata[11],cpudata[12],cpudata[13],cpudata[14],cpudata[15],cpudata[16],cpudata[17],cpudata[18],cpudata[19],cpudata[20],cpudata[21],cpudata[22],cpudata[23],cpudata[24],cpudata[25],cpudata[26],cpudata[27],cpudata[28],cpudata[29],cpudata[30],cpudata[31]}),
	.ioreq /* OUT */ (ioreq),
	.at_1 /* IN */ (at_1),
	.a_15 /* IN */ (a_15_in),
	.ack /* IN */ (ack),
	.big_io /* IN */ (big_io),
	.clk_0 /* IN */ (clk_11),
	.clk_2 /* IN */ (tlw),
	.dwrite_0 /* IN */ (dwrite_0),
	.dwrite_1 /* IN */ (dwrite_1),
	.dwrite_2 /* IN */ (dwrite_2),
	.dwrite_3 /* IN */ (dwrite_3),
	.dwrite_4 /* IN */ (dwrite_4),
	.dwrite_5 /* IN */ (dwrite_5),
	.dwrite_6 /* IN */ (dwrite_6),
	.dwrite_7 /* IN */ (dwrite_7),
	.dwrite_8 /* IN */ (dwrite_8),
	.dwrite_9 /* IN */ (dwrite_9),
	.dwrite_10 /* IN */ (dwrite_10),
	.dwrite_11 /* IN */ (dwrite_11),
	.dwrite_12 /* IN */ (dwrite_12),
	.dwrite_13 /* IN */ (dwrite_13),
	.dwrite_14 /* IN */ (dwrite_14),
	.dwrite_15 /* IN */ (dwrite_15),
	.dwrite_16 /* IN */ (dwrite_16),
	.dwrite_17 /* IN */ (dwrite_17),
	.dwrite_18 /* IN */ (dwrite_18),
	.dwrite_19 /* IN */ (dwrite_19),
	.dwrite_20 /* IN */ (dwrite_20),
	.dwrite_21 /* IN */ (dwrite_21),
	.dwrite_22 /* IN */ (dwrite_22),
	.dwrite_23 /* IN */ (dwrite_23),
	.dwrite_24 /* IN */ (dwrite_24),
	.dwrite_25 /* IN */ (dwrite_25),
	.dwrite_26 /* IN */ (dwrite_26),
	.dwrite_27 /* IN */ (dwrite_27),
	.dwrite_28 /* IN */ (dwrite_28),
	.dwrite_29 /* IN */ (dwrite_29),
	.dwrite_30 /* IN */ (dwrite_30),
	.dwrite_31 /* IN */ (dwrite_31),
	.io_addr /* IN */ ({io_addr[0],io_addr[1],io_addr[2],io_addr[3],io_addr[4],io_addr[5],io_addr[6],io_addr[7],io_addr[8],io_addr[9],io_addr[10],io_addr[11],io_addr[12],io_addr[13],io_addr[14],io_addr[15]}),
	.iord /* IN */ (iord),
	.iowr /* IN */ (iowr),
	.mem_data /* IN */ ({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]}),
	.reset_n /* IN */ (resetl_10),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (195) - gateway : gateway
gateway gateway_inst
(
	.address_out /* BUS */ ({ts_local_pe_140_a0_out,ts_local_pe_141_a0_out,ts_local_pe_142_a0_out,ts_local_pe_143_a0_out,ts_local_pe_144_a0_out,ts_local_pe_145_a0_out,ts_local_pe_146_a0_out,ts_local_pe_147_a0_out,ts_local_pe_148_a0_out,ts_local_pe_149_a0_out,ts_local_pe_150_a0_out,ts_local_pe_151_a0_out,ts_local_pe_152_a0_out,ts_local_pe_153_a0_out,ts_local_pe_154_a0_out,ts_local_pe_155_a0_out,ts_local_pe_156_a0_out,ts_local_pe_157_a0_out,ts_local_pe_158_a0_out,ts_local_pe_159_a0_out,ts_local_pe_160_a0_out,ts_local_pe_161_a0_out,ts_local_pe_162_a0_out,ts_local_pe_163_a0_out}),
	.address_oe /* BUS */ ({ts_local_pe_140_a0_oe,ts_local_pe_141_a0_oe,ts_local_pe_142_a0_oe,ts_local_pe_143_a0_oe,ts_local_pe_144_a0_oe,ts_local_pe_145_a0_oe,ts_local_pe_146_a0_oe,ts_local_pe_147_a0_oe,ts_local_pe_148_a0_oe,ts_local_pe_149_a0_oe,ts_local_pe_150_a0_oe,ts_local_pe_151_a0_oe,ts_local_pe_152_a0_oe,ts_local_pe_153_a0_oe,ts_local_pe_154_a0_oe,ts_local_pe_155_a0_oe,ts_local_pe_156_a0_oe,ts_local_pe_157_a0_oe,ts_local_pe_158_a0_oe,ts_local_pe_159_a0_oe,ts_local_pe_160_a0_oe,ts_local_pe_161_a0_oe,ts_local_pe_162_a0_oe,ts_local_pe_163_a0_oe}),
	.address_in /* BUS */ ({ts_local_pe_140_a0_in,ts_local_pe_141_a0_in,ts_local_pe_142_a0_in,ts_local_pe_143_a0_in,ts_local_pe_144_a0_in,ts_local_pe_145_a0_in,ts_local_pe_146_a0_in,ts_local_pe_147_a0_in,ts_local_pe_148_a0_in,ts_local_pe_149_a0_in,ts_local_pe_150_a0_in,ts_local_pe_151_a0_in,ts_local_pe_152_a0_in,ts_local_pe_153_a0_in,ts_local_pe_154_a0_in,ts_local_pe_155_a0_in,ts_local_pe_156_a0_in,ts_local_pe_157_a0_in,ts_local_pe_158_a0_in,ts_local_pe_159_a0_in,ts_local_pe_160_a0_in,ts_local_pe_161_a0_in,ts_local_pe_162_a0_in,ts_local_pe_163_a0_in}),
	.wdata_0_out /* BUS */ (ts_pe_69_a0_out),
	.wdata_0_oe /* BUS */ (ts_pe_69_a0_oe),
	.wdata_0_in /* BUS */ (ts_pe_69_a0_in),
	.wdata_1_out /* BUS */ (ts_pe_70_a0_out),
	.wdata_1_oe /* BUS */ (ts_pe_70_a0_oe),
	.wdata_1_in /* BUS */ (ts_pe_70_a0_in),
	.wdata_2_out /* BUS */ (ts_pe_71_a0_out),
	.wdata_2_oe /* BUS */ (ts_pe_71_a0_oe),
	.wdata_2_in /* BUS */ (ts_pe_71_a0_in),
	.wdata_3_out /* BUS */ (ts_pe_72_a0_out),
	.wdata_3_oe /* BUS */ (ts_pe_72_a0_oe),
	.wdata_3_in /* BUS */ (ts_pe_72_a0_in),
	.wdata_4_out /* BUS */ (ts_pe_73_a0_out),
	.wdata_4_oe /* BUS */ (ts_pe_73_a0_oe),
	.wdata_4_in /* BUS */ (ts_pe_73_a0_in),
	.wdata_5_out /* BUS */ (ts_pe_74_a0_out),
	.wdata_5_oe /* BUS */ (ts_pe_74_a0_oe),
	.wdata_5_in /* BUS */ (ts_pe_74_a0_in),
	.wdata_6_out /* BUS */ (ts_pe_75_a0_out),
	.wdata_6_oe /* BUS */ (ts_pe_75_a0_oe),
	.wdata_6_in /* BUS */ (ts_pe_75_a0_in),
	.wdata_7_out /* BUS */ (ts_pe_76_a0_out),
	.wdata_7_oe /* BUS */ (ts_pe_76_a0_oe),
	.wdata_7_in /* BUS */ (ts_pe_76_a0_in),
	.wdata_8_out /* BUS */ (ts_pe_77_a0_out),
	.wdata_8_oe /* BUS */ (ts_pe_77_a0_oe),
	.wdata_8_in /* BUS */ (ts_pe_77_a0_in),
	.wdata_9_out /* BUS */ (ts_pe_78_a0_out),
	.wdata_9_oe /* BUS */ (ts_pe_78_a0_oe),
	.wdata_9_in /* BUS */ (ts_pe_78_a0_in),
	.wdata_10_out /* BUS */ (ts_pe_79_a0_out),
	.wdata_10_oe /* BUS */ (ts_pe_79_a0_oe),
	.wdata_10_in /* BUS */ (ts_pe_79_a0_in),
	.wdata_11_out /* BUS */ (ts_pe_80_a0_out),
	.wdata_11_oe /* BUS */ (ts_pe_80_a0_oe),
	.wdata_11_in /* BUS */ (ts_pe_80_a0_in),
	.wdata_12_out /* BUS */ (ts_pe_81_a0_out),
	.wdata_12_oe /* BUS */ (ts_pe_81_a0_oe),
	.wdata_12_in /* BUS */ (ts_pe_81_a0_in),
	.wdata_13_out /* BUS */ (ts_pe_82_a0_out),
	.wdata_13_oe /* BUS */ (ts_pe_82_a0_oe),
	.wdata_13_in /* BUS */ (ts_pe_82_a0_in),
	.wdata_14_out /* BUS */ (ts_pe_83_a0_out),
	.wdata_14_oe /* BUS */ (ts_pe_83_a0_oe),
	.wdata_14_in /* BUS */ (ts_pe_83_a0_in),
	.wdata_15_out /* BUS */ (ts_pe_84_a0_out),
	.wdata_15_oe /* BUS */ (ts_pe_84_a0_oe),
	.wdata_15_in /* BUS */ (ts_pe_84_a0_in),
	.wdata_16_out /* BUS */ (ts_pe_85_a0_out),
	.wdata_16_oe /* BUS */ (ts_pe_85_a0_oe),
	.wdata_16_in /* BUS */ (ts_pe_85_a0_in),
	.wdata_17_out /* BUS */ (ts_pe_86_a0_out),
	.wdata_17_oe /* BUS */ (ts_pe_86_a0_oe),
	.wdata_17_in /* BUS */ (ts_pe_86_a0_in),
	.wdata_18_out /* BUS */ (ts_pe_87_a0_out),
	.wdata_18_oe /* BUS */ (ts_pe_87_a0_oe),
	.wdata_18_in /* BUS */ (ts_pe_87_a0_in),
	.wdata_19_out /* BUS */ (ts_pe_88_a0_out),
	.wdata_19_oe /* BUS */ (ts_pe_88_a0_oe),
	.wdata_19_in /* BUS */ (ts_pe_88_a0_in),
	.wdata_20_out /* BUS */ (ts_pe_89_a0_out),
	.wdata_20_oe /* BUS */ (ts_pe_89_a0_oe),
	.wdata_20_in /* BUS */ (ts_pe_89_a0_in),
	.wdata_21_out /* BUS */ (ts_pe_90_a0_out),
	.wdata_21_oe /* BUS */ (ts_pe_90_a0_oe),
	.wdata_21_in /* BUS */ (ts_pe_90_a0_in),
	.wdata_22_out /* BUS */ (ts_pe_91_a0_out),
	.wdata_22_oe /* BUS */ (ts_pe_91_a0_oe),
	.wdata_22_in /* BUS */ (ts_pe_91_a0_in),
	.wdata_23_out /* BUS */ (ts_pe_92_a0_out),
	.wdata_23_oe /* BUS */ (ts_pe_92_a0_oe),
	.wdata_23_in /* BUS */ (ts_pe_92_a0_in),
	.wdata_24_out /* BUS */ (ts_pe_93_a0_out),
	.wdata_24_oe /* BUS */ (ts_pe_93_a0_oe),
	.wdata_24_in /* BUS */ (ts_pe_93_a0_in),
	.wdata_25_out /* BUS */ (ts_pe_94_a0_out),
	.wdata_25_oe /* BUS */ (ts_pe_94_a0_oe),
	.wdata_25_in /* BUS */ (ts_pe_94_a0_in),
	.wdata_26_out /* BUS */ (ts_pe_95_a0_out),
	.wdata_26_oe /* BUS */ (ts_pe_95_a0_oe),
	.wdata_26_in /* BUS */ (ts_pe_95_a0_in),
	.wdata_27_out /* BUS */ (ts_pe_96_a0_out),
	.wdata_27_oe /* BUS */ (ts_pe_96_a0_oe),
	.wdata_27_in /* BUS */ (ts_pe_96_a0_in),
	.wdata_28_out /* BUS */ (ts_pe_97_a0_out),
	.wdata_28_oe /* BUS */ (ts_pe_97_a0_oe),
	.wdata_28_in /* BUS */ (ts_pe_97_a0_in),
	.wdata_29_out /* BUS */ (ts_pe_98_a0_out),
	.wdata_29_oe /* BUS */ (ts_pe_98_a0_oe),
	.wdata_29_in /* BUS */ (ts_pe_98_a0_in),
	.wdata_30_out /* BUS */ (ts_pe_99_a0_out),
	.wdata_30_oe /* BUS */ (ts_pe_99_a0_oe),
	.wdata_30_in /* BUS */ (ts_pe_99_a0_in),
	.wdata_31_out /* BUS */ (ts_pe_100_a0_out),
	.wdata_31_oe /* BUS */ (ts_pe_100_a0_oe),
	.wdata_31_in /* BUS */ (ts_pe_100_a0_in),
	.wdata_32_out /* BUS */ (ts_pe_101_a0_out),
	.wdata_32_oe /* BUS */ (ts_pe_101_a0_oe),
	.wdata_32_in /* BUS */ (ts_pe_101_a0_in),
	.wdata_33_out /* BUS */ (ts_pe_102_a0_out),
	.wdata_33_oe /* BUS */ (ts_pe_102_a0_oe),
	.wdata_33_in /* BUS */ (ts_pe_102_a0_in),
	.wdata_34_out /* BUS */ (ts_pe_103_a0_out),
	.wdata_34_oe /* BUS */ (ts_pe_103_a0_oe),
	.wdata_34_in /* BUS */ (ts_pe_103_a0_in),
	.wdata_35_out /* BUS */ (ts_pe_104_a0_out),
	.wdata_35_oe /* BUS */ (ts_pe_104_a0_oe),
	.wdata_35_in /* BUS */ (ts_pe_104_a0_in),
	.wdata_36_out /* BUS */ (ts_pe_105_a0_out),
	.wdata_36_oe /* BUS */ (ts_pe_105_a0_oe),
	.wdata_36_in /* BUS */ (ts_pe_105_a0_in),
	.wdata_37_out /* BUS */ (ts_pe_106_a0_out),
	.wdata_37_oe /* BUS */ (ts_pe_106_a0_oe),
	.wdata_37_in /* BUS */ (ts_pe_106_a0_in),
	.wdata_38_out /* BUS */ (ts_pe_107_a0_out),
	.wdata_38_oe /* BUS */ (ts_pe_107_a0_oe),
	.wdata_38_in /* BUS */ (ts_pe_107_a0_in),
	.wdata_39_out /* BUS */ (ts_pe_108_a0_out),
	.wdata_39_oe /* BUS */ (ts_pe_108_a0_oe),
	.wdata_39_in /* BUS */ (ts_pe_108_a0_in),
	.wdata_40_out /* BUS */ (ts_pe_109_a0_out),
	.wdata_40_oe /* BUS */ (ts_pe_109_a0_oe),
	.wdata_40_in /* BUS */ (ts_pe_109_a0_in),
	.wdata_41_out /* BUS */ (ts_pe_110_a0_out),
	.wdata_41_oe /* BUS */ (ts_pe_110_a0_oe),
	.wdata_41_in /* BUS */ (ts_pe_110_a0_in),
	.wdata_42_out /* BUS */ (ts_pe_111_a0_out),
	.wdata_42_oe /* BUS */ (ts_pe_111_a0_oe),
	.wdata_42_in /* BUS */ (ts_pe_111_a0_in),
	.wdata_43_out /* BUS */ (ts_pe_112_a0_out),
	.wdata_43_oe /* BUS */ (ts_pe_112_a0_oe),
	.wdata_43_in /* BUS */ (ts_pe_112_a0_in),
	.wdata_44_out /* BUS */ (ts_pe_113_a0_out),
	.wdata_44_oe /* BUS */ (ts_pe_113_a0_oe),
	.wdata_44_in /* BUS */ (ts_pe_113_a0_in),
	.wdata_45_out /* BUS */ (ts_pe_114_a0_out),
	.wdata_45_oe /* BUS */ (ts_pe_114_a0_oe),
	.wdata_45_in /* BUS */ (ts_pe_114_a0_in),
	.wdata_46_out /* BUS */ (ts_pe_115_a0_out),
	.wdata_46_oe /* BUS */ (ts_pe_115_a0_oe),
	.wdata_46_in /* BUS */ (ts_pe_115_a0_in),
	.wdata_47_out /* BUS */ (ts_pe_116_a0_out),
	.wdata_47_oe /* BUS */ (ts_pe_116_a0_oe),
	.wdata_47_in /* BUS */ (ts_pe_116_a0_in),
	.wdata_48_out /* BUS */ (ts_pe_117_a0_out),
	.wdata_48_oe /* BUS */ (ts_pe_117_a0_oe),
	.wdata_48_in /* BUS */ (ts_pe_117_a0_in),
	.wdata_49_out /* BUS */ (ts_pe_118_a0_out),
	.wdata_49_oe /* BUS */ (ts_pe_118_a0_oe),
	.wdata_49_in /* BUS */ (ts_pe_118_a0_in),
	.wdata_50_out /* BUS */ (ts_pe_119_a0_out),
	.wdata_50_oe /* BUS */ (ts_pe_119_a0_oe),
	.wdata_50_in /* BUS */ (ts_pe_119_a0_in),
	.wdata_51_out /* BUS */ (ts_pe_120_a0_out),
	.wdata_51_oe /* BUS */ (ts_pe_120_a0_oe),
	.wdata_51_in /* BUS */ (ts_pe_120_a0_in),
	.wdata_52_out /* BUS */ (ts_pe_121_a0_out),
	.wdata_52_oe /* BUS */ (ts_pe_121_a0_oe),
	.wdata_52_in /* BUS */ (ts_pe_121_a0_in),
	.wdata_53_out /* BUS */ (ts_pe_122_a0_out),
	.wdata_53_oe /* BUS */ (ts_pe_122_a0_oe),
	.wdata_53_in /* BUS */ (ts_pe_122_a0_in),
	.wdata_54_out /* BUS */ (ts_pe_123_a0_out),
	.wdata_54_oe /* BUS */ (ts_pe_123_a0_oe),
	.wdata_54_in /* BUS */ (ts_pe_123_a0_in),
	.wdata_55_out /* BUS */ (ts_pe_124_a0_out),
	.wdata_55_oe /* BUS */ (ts_pe_124_a0_oe),
	.wdata_55_in /* BUS */ (ts_pe_124_a0_in),
	.wdata_56_out /* BUS */ (ts_pe_125_a0_out),
	.wdata_56_oe /* BUS */ (ts_pe_125_a0_oe),
	.wdata_56_in /* BUS */ (ts_pe_125_a0_in),
	.wdata_57_out /* BUS */ (ts_pe_126_a0_out),
	.wdata_57_oe /* BUS */ (ts_pe_126_a0_oe),
	.wdata_57_in /* BUS */ (ts_pe_126_a0_in),
	.wdata_58_out /* BUS */ (ts_pe_127_a0_out),
	.wdata_58_oe /* BUS */ (ts_pe_127_a0_oe),
	.wdata_58_in /* BUS */ (ts_pe_127_a0_in),
	.wdata_59_out /* BUS */ (ts_pe_128_a0_out),
	.wdata_59_oe /* BUS */ (ts_pe_128_a0_oe),
	.wdata_59_in /* BUS */ (ts_pe_128_a0_in),
	.wdata_60_out /* BUS */ (ts_pe_129_a0_out),
	.wdata_60_oe /* BUS */ (ts_pe_129_a0_oe),
	.wdata_60_in /* BUS */ (ts_pe_129_a0_in),
	.wdata_61_out /* BUS */ (ts_pe_130_a0_out),
	.wdata_61_oe /* BUS */ (ts_pe_130_a0_oe),
	.wdata_61_in /* BUS */ (ts_pe_130_a0_in),
	.wdata_62_out /* BUS */ (ts_pe_131_a0_out),
	.wdata_62_oe /* BUS */ (ts_pe_131_a0_oe),
	.wdata_62_in /* BUS */ (ts_pe_131_a0_in),
	.wdata_63_out /* BUS */ (ts_pe_132_a0_out),
	.wdata_63_oe /* BUS */ (ts_pe_132_a0_oe),
	.wdata_63_in /* BUS */ (ts_pe_132_a0_in),
	.gpu_data_out /* BUS */ ({ts_local_pe_164_a4_out,ts_local_pe_165_a4_out,ts_local_pe_166_a4_out,ts_local_pe_167_a4_out,ts_local_pe_168_a4_out,ts_local_pe_169_a4_out,ts_local_pe_170_a4_out,ts_local_pe_171_a4_out,ts_local_pe_172_a4_out,ts_local_pe_173_a4_out,ts_local_pe_174_a4_out,ts_local_pe_175_a4_out,ts_local_pe_176_a4_out,ts_local_pe_177_a4_out,ts_local_pe_178_a4_out,ts_local_pe_179_a4_out,ts_local_pe_180_a4_out,ts_local_pe_181_a4_out,ts_local_pe_182_a4_out,ts_local_pe_183_a4_out,ts_local_pe_184_a4_out,ts_local_pe_185_a4_out,ts_local_pe_186_a4_out,ts_local_pe_187_a4_out,ts_local_pe_188_a4_out,ts_local_pe_189_a4_out,ts_local_pe_190_a4_out,ts_local_pe_191_a4_out,ts_local_pe_192_a4_out,ts_local_pe_193_a4_out,ts_local_pe_194_a4_out,ts_local_pe_195_a4_out}),
	.gpu_data_oe /* BUS */ ({ts_local_pe_164_a4_oe,ts_local_pe_165_a4_oe,ts_local_pe_166_a4_oe,ts_local_pe_167_a4_oe,ts_local_pe_168_a4_oe,ts_local_pe_169_a4_oe,ts_local_pe_170_a4_oe,ts_local_pe_171_a4_oe,ts_local_pe_172_a4_oe,ts_local_pe_173_a4_oe,ts_local_pe_174_a4_oe,ts_local_pe_175_a4_oe,ts_local_pe_176_a4_oe,ts_local_pe_177_a4_oe,ts_local_pe_178_a4_oe,ts_local_pe_179_a4_oe,ts_local_pe_180_a4_oe,ts_local_pe_181_a4_oe,ts_local_pe_182_a4_oe,ts_local_pe_183_a4_oe,ts_local_pe_184_a4_oe,ts_local_pe_185_a4_oe,ts_local_pe_186_a4_oe,ts_local_pe_187_a4_oe,ts_local_pe_188_a4_oe,ts_local_pe_189_a4_oe,ts_local_pe_190_a4_oe,ts_local_pe_191_a4_oe,ts_local_pe_192_a4_oe,ts_local_pe_193_a4_oe,ts_local_pe_194_a4_oe,ts_local_pe_195_a4_oe}),
	.gpu_data_in /* BUS */ ({ts_local_pe_164_a4_in,ts_local_pe_165_a4_in,ts_local_pe_166_a4_in,ts_local_pe_167_a4_in,ts_local_pe_168_a4_in,ts_local_pe_169_a4_in,ts_local_pe_170_a4_in,ts_local_pe_171_a4_in,ts_local_pe_172_a4_in,ts_local_pe_173_a4_in,ts_local_pe_174_a4_in,ts_local_pe_175_a4_in,ts_local_pe_176_a4_in,ts_local_pe_177_a4_in,ts_local_pe_178_a4_in,ts_local_pe_179_a4_in,ts_local_pe_180_a4_in,ts_local_pe_181_a4_in,ts_local_pe_182_a4_in,ts_local_pe_183_a4_in,ts_local_pe_184_a4_in,ts_local_pe_185_a4_in,ts_local_pe_186_a4_in,ts_local_pe_187_a4_in,ts_local_pe_188_a4_in,ts_local_pe_189_a4_in,ts_local_pe_190_a4_in,ts_local_pe_191_a4_in,ts_local_pe_192_a4_in,ts_local_pe_193_a4_in,ts_local_pe_194_a4_in,ts_local_pe_195_a4_in}),
	.justify_out /* BUS */ (ts_pe_139_a0_out),
	.justify_oe /* BUS */ (ts_pe_139_a0_oe),
	.justify_in /* BUS */ (ts_pe_139_a0_in),
	.mreq_out /* BUS */ (ts_pe_138_a0_out),
	.mreq_oe /* BUS */ (ts_pe_138_a0_oe),
	.mreq_in /* BUS */ (ts_pe_138_a0_in),
	.read_out /* BUS */ (ts_pe_137_a0_out),
	.read_oe /* BUS */ (ts_pe_137_a0_oe),
	.read_in /* BUS */ (ts_pe_137_a0_in),
	.width_0_out /* BUS */ (ts_pe_133_a0_out),
	.width_0_oe /* BUS */ (ts_pe_133_a0_oe),
	.width_0_in /* BUS */ (ts_pe_133_a0_in),
	.width_1_out /* BUS */ (ts_pe_134_a0_out),
	.width_1_oe /* BUS */ (ts_pe_134_a0_oe),
	.width_1_in /* BUS */ (ts_pe_134_a0_in),
	.width_2_out /* BUS */ (ts_pe_135_a0_out),
	.width_2_oe /* BUS */ (ts_pe_135_a0_oe),
	.width_2_in /* BUS */ (ts_pe_135_a0_in),
	.width_3_out /* BUS */ (ts_pe_136_a0_out),
	.width_3_oe /* BUS */ (ts_pe_136_a0_oe),
	.width_3_in /* BUS */ (ts_pe_136_a0_in),
	.gpu_dout_15_out /* BUS */ (ts_local_pe_211_a1_out),
	.gpu_dout_15_oe /* BUS */ (ts_local_pe_211_a1_oe),
	.gpu_dout_15_in /* BUS */ (ts_local_pe_211_a1_in),
	.dma_breq /* OUT */ (dma_breq),
	.gate_active /* OUT */ (gate_active),
	.gatereq /* OUT */ (gatereq),
	.gpu_breq /* OUT */ (gpu_breq),
	.load_data /* OUT */ ({load_data[0],load_data[1],load_data[2],load_data[3],load_data[4],load_data[5],load_data[6],load_data[7],load_data[8],load_data[9],load_data[10],load_data[11],load_data[12],load_data[13],load_data[14],load_data[15],load_data[16],load_data[17],load_data[18],load_data[19],load_data[20],load_data[21],load_data[22],load_data[23],load_data[24],load_data[25],load_data[26],load_data[27],load_data[28],load_data[29],load_data[30],load_data[31]}),
	.xld_ready /* OUT */ (xld_ready),
	.ack /* IN */ (ack),
	.bus_hog /* IN */ (bus_hog),
	.clk_0 /* IN */ (clk_15),
	.clk_2 /* IN */ (tlw),
	.data_0 /* IN */ (data_0),
	.data_1 /* IN */ (data_1),
	.data_2 /* IN */ (data_2),
	.data_3 /* IN */ (data_3),
	.data_4 /* IN */ (data_4),
	.data_5 /* IN */ (data_5),
	.data_6 /* IN */ (data_6),
	.data_7 /* IN */ (data_7),
	.data_8 /* IN */ (data_8),
	.data_9 /* IN */ (data_9),
	.data_10 /* IN */ (data_10),
	.data_11 /* IN */ (data_11),
	.data_12 /* IN */ (data_12),
	.data_13 /* IN */ (data_13),
	.data_14 /* IN */ (data_14),
	.data_15 /* IN */ (data_15),
	.data_16 /* IN */ (data_16),
	.data_17 /* IN */ (data_17),
	.data_18 /* IN */ (data_18),
	.data_19 /* IN */ (data_19),
	.data_20 /* IN */ (data_20),
	.data_21 /* IN */ (data_21),
	.data_22 /* IN */ (data_22),
	.data_23 /* IN */ (data_23),
	.data_24 /* IN */ (data_24),
	.data_25 /* IN */ (data_25),
	.data_26 /* IN */ (data_26),
	.data_27 /* IN */ (data_27),
	.data_28 /* IN */ (data_28),
	.data_29 /* IN */ (data_29),
	.data_30 /* IN */ (data_30),
	.data_31 /* IN */ (data_31),
	.data_32 /* IN */ (data_32),
	.data_33 /* IN */ (data_33),
	.data_34 /* IN */ (data_34),
	.data_35 /* IN */ (data_35),
	.data_36 /* IN */ (data_36),
	.data_37 /* IN */ (data_37),
	.data_38 /* IN */ (data_38),
	.data_39 /* IN */ (data_39),
	.data_40 /* IN */ (data_40),
	.data_41 /* IN */ (data_41),
	.data_42 /* IN */ (data_42),
	.data_43 /* IN */ (data_43),
	.data_44 /* IN */ (data_44),
	.data_45 /* IN */ (data_45),
	.data_46 /* IN */ (data_46),
	.data_47 /* IN */ (data_47),
	.data_48 /* IN */ (data_48),
	.data_49 /* IN */ (data_49),
	.data_50 /* IN */ (data_50),
	.data_51 /* IN */ (data_51),
	.data_52 /* IN */ (data_52),
	.data_53 /* IN */ (data_53),
	.data_54 /* IN */ (data_54),
	.data_55 /* IN */ (data_55),
	.data_56 /* IN */ (data_56),
	.data_57 /* IN */ (data_57),
	.data_58 /* IN */ (data_58),
	.data_59 /* IN */ (data_59),
	.data_60 /* IN */ (data_60),
	.data_61 /* IN */ (data_61),
	.data_62 /* IN */ (data_62),
	.data_63 /* IN */ (data_63),
	.external /* IN */ (external),
	.flagrd /* IN */ (flagrd),
	.flagwr /* IN */ (flagwr),
	.gateack /* IN */ (gateack),
	.gpu_addr /* IN */ ({gpu_addr[0],gpu_addr[1],gpu_addr[2],gpu_addr[3],gpu_addr[4],gpu_addr[5],gpu_addr[6],gpu_addr[7],gpu_addr[8],gpu_addr[9],gpu_addr[10],gpu_addr[11],gpu_addr[12],gpu_addr[13],gpu_addr[14],gpu_addr[15],gpu_addr[16],gpu_addr[17],gpu_addr[18],gpu_addr[19],gpu_addr[20],gpu_addr[21],gpu_addr[22],gpu_addr[23]}),
	.gpu_back /* IN */ (gpu_back),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.gpu_memw /* IN */ (gpu_memw),
	.hidrd /* IN */ (hidrd),
	.hidwr /* IN */ (hidwr),
	.msize_0 /* IN */ (msize_0),
	.msize_1 /* IN */ (msize_1),
	.progserv /* IN */ (progserv),
	.reset_n /* IN */ (resetl_11),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (205) - blit : blit
blit blit_inst
(
	.blit_addr_out /* BUS */ ({ts_local_pe_140_a1_out,ts_local_pe_141_a1_out,ts_local_pe_142_a1_out,ts_local_pe_143_a1_out,ts_local_pe_144_a1_out,ts_local_pe_145_a1_out,ts_local_pe_146_a1_out,ts_local_pe_147_a1_out,ts_local_pe_148_a1_out,ts_local_pe_149_a1_out,ts_local_pe_150_a1_out,ts_local_pe_151_a1_out,ts_local_pe_152_a1_out,ts_local_pe_153_a1_out,ts_local_pe_154_a1_out,ts_local_pe_155_a1_out,ts_local_pe_156_a1_out,ts_local_pe_157_a1_out,ts_local_pe_158_a1_out,ts_local_pe_159_a1_out,ts_local_pe_160_a1_out,ts_local_pe_161_a1_out,ts_local_pe_162_a1_out,ts_local_pe_163_a1_out}),
	.blit_addr_oe /* BUS */ ({ts_local_pe_140_a1_oe,ts_local_pe_141_a1_oe,ts_local_pe_142_a1_oe,ts_local_pe_143_a1_oe,ts_local_pe_144_a1_oe,ts_local_pe_145_a1_oe,ts_local_pe_146_a1_oe,ts_local_pe_147_a1_oe,ts_local_pe_148_a1_oe,ts_local_pe_149_a1_oe,ts_local_pe_150_a1_oe,ts_local_pe_151_a1_oe,ts_local_pe_152_a1_oe,ts_local_pe_153_a1_oe,ts_local_pe_154_a1_oe,ts_local_pe_155_a1_oe,ts_local_pe_156_a1_oe,ts_local_pe_157_a1_oe,ts_local_pe_158_a1_oe,ts_local_pe_159_a1_oe,ts_local_pe_160_a1_oe,ts_local_pe_161_a1_oe,ts_local_pe_162_a1_oe,ts_local_pe_163_a1_oe}),
	.blit_addr_in /* BUS */ ({ts_local_pe_140_a1_in,ts_local_pe_141_a1_in,ts_local_pe_142_a1_in,ts_local_pe_143_a1_in,ts_local_pe_144_a1_in,ts_local_pe_145_a1_in,ts_local_pe_146_a1_in,ts_local_pe_147_a1_in,ts_local_pe_148_a1_in,ts_local_pe_149_a1_in,ts_local_pe_150_a1_in,ts_local_pe_151_a1_in,ts_local_pe_152_a1_in,ts_local_pe_153_a1_in,ts_local_pe_154_a1_in,ts_local_pe_155_a1_in,ts_local_pe_156_a1_in,ts_local_pe_157_a1_in,ts_local_pe_158_a1_in,ts_local_pe_159_a1_in,ts_local_pe_160_a1_in,ts_local_pe_161_a1_in,ts_local_pe_162_a1_in,ts_local_pe_163_a1_in}),
	.wdata_0_out /* BUS */ (ts_pe_69_a1_out),
	.wdata_0_oe /* BUS */ (ts_pe_69_a1_oe),
	.wdata_0_in /* BUS */ (ts_pe_69_a1_in),
	.wdata_1_out /* BUS */ (ts_pe_70_a1_out),
	.wdata_1_oe /* BUS */ (ts_pe_70_a1_oe),
	.wdata_1_in /* BUS */ (ts_pe_70_a1_in),
	.wdata_2_out /* BUS */ (ts_pe_71_a1_out),
	.wdata_2_oe /* BUS */ (ts_pe_71_a1_oe),
	.wdata_2_in /* BUS */ (ts_pe_71_a1_in),
	.wdata_3_out /* BUS */ (ts_pe_72_a1_out),
	.wdata_3_oe /* BUS */ (ts_pe_72_a1_oe),
	.wdata_3_in /* BUS */ (ts_pe_72_a1_in),
	.wdata_4_out /* BUS */ (ts_pe_73_a1_out),
	.wdata_4_oe /* BUS */ (ts_pe_73_a1_oe),
	.wdata_4_in /* BUS */ (ts_pe_73_a1_in),
	.wdata_5_out /* BUS */ (ts_pe_74_a1_out),
	.wdata_5_oe /* BUS */ (ts_pe_74_a1_oe),
	.wdata_5_in /* BUS */ (ts_pe_74_a1_in),
	.wdata_6_out /* BUS */ (ts_pe_75_a1_out),
	.wdata_6_oe /* BUS */ (ts_pe_75_a1_oe),
	.wdata_6_in /* BUS */ (ts_pe_75_a1_in),
	.wdata_7_out /* BUS */ (ts_pe_76_a1_out),
	.wdata_7_oe /* BUS */ (ts_pe_76_a1_oe),
	.wdata_7_in /* BUS */ (ts_pe_76_a1_in),
	.wdata_8_out /* BUS */ (ts_pe_77_a1_out),
	.wdata_8_oe /* BUS */ (ts_pe_77_a1_oe),
	.wdata_8_in /* BUS */ (ts_pe_77_a1_in),
	.wdata_9_out /* BUS */ (ts_pe_78_a1_out),
	.wdata_9_oe /* BUS */ (ts_pe_78_a1_oe),
	.wdata_9_in /* BUS */ (ts_pe_78_a1_in),
	.wdata_10_out /* BUS */ (ts_pe_79_a1_out),
	.wdata_10_oe /* BUS */ (ts_pe_79_a1_oe),
	.wdata_10_in /* BUS */ (ts_pe_79_a1_in),
	.wdata_11_out /* BUS */ (ts_pe_80_a1_out),
	.wdata_11_oe /* BUS */ (ts_pe_80_a1_oe),
	.wdata_11_in /* BUS */ (ts_pe_80_a1_in),
	.wdata_12_out /* BUS */ (ts_pe_81_a1_out),
	.wdata_12_oe /* BUS */ (ts_pe_81_a1_oe),
	.wdata_12_in /* BUS */ (ts_pe_81_a1_in),
	.wdata_13_out /* BUS */ (ts_pe_82_a1_out),
	.wdata_13_oe /* BUS */ (ts_pe_82_a1_oe),
	.wdata_13_in /* BUS */ (ts_pe_82_a1_in),
	.wdata_14_out /* BUS */ (ts_pe_83_a1_out),
	.wdata_14_oe /* BUS */ (ts_pe_83_a1_oe),
	.wdata_14_in /* BUS */ (ts_pe_83_a1_in),
	.wdata_15_out /* BUS */ (ts_pe_84_a1_out),
	.wdata_15_oe /* BUS */ (ts_pe_84_a1_oe),
	.wdata_15_in /* BUS */ (ts_pe_84_a1_in),
	.wdata_16_out /* BUS */ (ts_pe_85_a1_out),
	.wdata_16_oe /* BUS */ (ts_pe_85_a1_oe),
	.wdata_16_in /* BUS */ (ts_pe_85_a1_in),
	.wdata_17_out /* BUS */ (ts_pe_86_a1_out),
	.wdata_17_oe /* BUS */ (ts_pe_86_a1_oe),
	.wdata_17_in /* BUS */ (ts_pe_86_a1_in),
	.wdata_18_out /* BUS */ (ts_pe_87_a1_out),
	.wdata_18_oe /* BUS */ (ts_pe_87_a1_oe),
	.wdata_18_in /* BUS */ (ts_pe_87_a1_in),
	.wdata_19_out /* BUS */ (ts_pe_88_a1_out),
	.wdata_19_oe /* BUS */ (ts_pe_88_a1_oe),
	.wdata_19_in /* BUS */ (ts_pe_88_a1_in),
	.wdata_20_out /* BUS */ (ts_pe_89_a1_out),
	.wdata_20_oe /* BUS */ (ts_pe_89_a1_oe),
	.wdata_20_in /* BUS */ (ts_pe_89_a1_in),
	.wdata_21_out /* BUS */ (ts_pe_90_a1_out),
	.wdata_21_oe /* BUS */ (ts_pe_90_a1_oe),
	.wdata_21_in /* BUS */ (ts_pe_90_a1_in),
	.wdata_22_out /* BUS */ (ts_pe_91_a1_out),
	.wdata_22_oe /* BUS */ (ts_pe_91_a1_oe),
	.wdata_22_in /* BUS */ (ts_pe_91_a1_in),
	.wdata_23_out /* BUS */ (ts_pe_92_a1_out),
	.wdata_23_oe /* BUS */ (ts_pe_92_a1_oe),
	.wdata_23_in /* BUS */ (ts_pe_92_a1_in),
	.wdata_24_out /* BUS */ (ts_pe_93_a1_out),
	.wdata_24_oe /* BUS */ (ts_pe_93_a1_oe),
	.wdata_24_in /* BUS */ (ts_pe_93_a1_in),
	.wdata_25_out /* BUS */ (ts_pe_94_a1_out),
	.wdata_25_oe /* BUS */ (ts_pe_94_a1_oe),
	.wdata_25_in /* BUS */ (ts_pe_94_a1_in),
	.wdata_26_out /* BUS */ (ts_pe_95_a1_out),
	.wdata_26_oe /* BUS */ (ts_pe_95_a1_oe),
	.wdata_26_in /* BUS */ (ts_pe_95_a1_in),
	.wdata_27_out /* BUS */ (ts_pe_96_a1_out),
	.wdata_27_oe /* BUS */ (ts_pe_96_a1_oe),
	.wdata_27_in /* BUS */ (ts_pe_96_a1_in),
	.wdata_28_out /* BUS */ (ts_pe_97_a1_out),
	.wdata_28_oe /* BUS */ (ts_pe_97_a1_oe),
	.wdata_28_in /* BUS */ (ts_pe_97_a1_in),
	.wdata_29_out /* BUS */ (ts_pe_98_a1_out),
	.wdata_29_oe /* BUS */ (ts_pe_98_a1_oe),
	.wdata_29_in /* BUS */ (ts_pe_98_a1_in),
	.wdata_30_out /* BUS */ (ts_pe_99_a1_out),
	.wdata_30_oe /* BUS */ (ts_pe_99_a1_oe),
	.wdata_30_in /* BUS */ (ts_pe_99_a1_in),
	.wdata_31_out /* BUS */ (ts_pe_100_a1_out),
	.wdata_31_oe /* BUS */ (ts_pe_100_a1_oe),
	.wdata_31_in /* BUS */ (ts_pe_100_a1_in),
	.wdata_32_out /* BUS */ (ts_pe_101_a1_out),
	.wdata_32_oe /* BUS */ (ts_pe_101_a1_oe),
	.wdata_32_in /* BUS */ (ts_pe_101_a1_in),
	.wdata_33_out /* BUS */ (ts_pe_102_a1_out),
	.wdata_33_oe /* BUS */ (ts_pe_102_a1_oe),
	.wdata_33_in /* BUS */ (ts_pe_102_a1_in),
	.wdata_34_out /* BUS */ (ts_pe_103_a1_out),
	.wdata_34_oe /* BUS */ (ts_pe_103_a1_oe),
	.wdata_34_in /* BUS */ (ts_pe_103_a1_in),
	.wdata_35_out /* BUS */ (ts_pe_104_a1_out),
	.wdata_35_oe /* BUS */ (ts_pe_104_a1_oe),
	.wdata_35_in /* BUS */ (ts_pe_104_a1_in),
	.wdata_36_out /* BUS */ (ts_pe_105_a1_out),
	.wdata_36_oe /* BUS */ (ts_pe_105_a1_oe),
	.wdata_36_in /* BUS */ (ts_pe_105_a1_in),
	.wdata_37_out /* BUS */ (ts_pe_106_a1_out),
	.wdata_37_oe /* BUS */ (ts_pe_106_a1_oe),
	.wdata_37_in /* BUS */ (ts_pe_106_a1_in),
	.wdata_38_out /* BUS */ (ts_pe_107_a1_out),
	.wdata_38_oe /* BUS */ (ts_pe_107_a1_oe),
	.wdata_38_in /* BUS */ (ts_pe_107_a1_in),
	.wdata_39_out /* BUS */ (ts_pe_108_a1_out),
	.wdata_39_oe /* BUS */ (ts_pe_108_a1_oe),
	.wdata_39_in /* BUS */ (ts_pe_108_a1_in),
	.wdata_40_out /* BUS */ (ts_pe_109_a1_out),
	.wdata_40_oe /* BUS */ (ts_pe_109_a1_oe),
	.wdata_40_in /* BUS */ (ts_pe_109_a1_in),
	.wdata_41_out /* BUS */ (ts_pe_110_a1_out),
	.wdata_41_oe /* BUS */ (ts_pe_110_a1_oe),
	.wdata_41_in /* BUS */ (ts_pe_110_a1_in),
	.wdata_42_out /* BUS */ (ts_pe_111_a1_out),
	.wdata_42_oe /* BUS */ (ts_pe_111_a1_oe),
	.wdata_42_in /* BUS */ (ts_pe_111_a1_in),
	.wdata_43_out /* BUS */ (ts_pe_112_a1_out),
	.wdata_43_oe /* BUS */ (ts_pe_112_a1_oe),
	.wdata_43_in /* BUS */ (ts_pe_112_a1_in),
	.wdata_44_out /* BUS */ (ts_pe_113_a1_out),
	.wdata_44_oe /* BUS */ (ts_pe_113_a1_oe),
	.wdata_44_in /* BUS */ (ts_pe_113_a1_in),
	.wdata_45_out /* BUS */ (ts_pe_114_a1_out),
	.wdata_45_oe /* BUS */ (ts_pe_114_a1_oe),
	.wdata_45_in /* BUS */ (ts_pe_114_a1_in),
	.wdata_46_out /* BUS */ (ts_pe_115_a1_out),
	.wdata_46_oe /* BUS */ (ts_pe_115_a1_oe),
	.wdata_46_in /* BUS */ (ts_pe_115_a1_in),
	.wdata_47_out /* BUS */ (ts_pe_116_a1_out),
	.wdata_47_oe /* BUS */ (ts_pe_116_a1_oe),
	.wdata_47_in /* BUS */ (ts_pe_116_a1_in),
	.wdata_48_out /* BUS */ (ts_pe_117_a1_out),
	.wdata_48_oe /* BUS */ (ts_pe_117_a1_oe),
	.wdata_48_in /* BUS */ (ts_pe_117_a1_in),
	.wdata_49_out /* BUS */ (ts_pe_118_a1_out),
	.wdata_49_oe /* BUS */ (ts_pe_118_a1_oe),
	.wdata_49_in /* BUS */ (ts_pe_118_a1_in),
	.wdata_50_out /* BUS */ (ts_pe_119_a1_out),
	.wdata_50_oe /* BUS */ (ts_pe_119_a1_oe),
	.wdata_50_in /* BUS */ (ts_pe_119_a1_in),
	.wdata_51_out /* BUS */ (ts_pe_120_a1_out),
	.wdata_51_oe /* BUS */ (ts_pe_120_a1_oe),
	.wdata_51_in /* BUS */ (ts_pe_120_a1_in),
	.wdata_52_out /* BUS */ (ts_pe_121_a1_out),
	.wdata_52_oe /* BUS */ (ts_pe_121_a1_oe),
	.wdata_52_in /* BUS */ (ts_pe_121_a1_in),
	.wdata_53_out /* BUS */ (ts_pe_122_a1_out),
	.wdata_53_oe /* BUS */ (ts_pe_122_a1_oe),
	.wdata_53_in /* BUS */ (ts_pe_122_a1_in),
	.wdata_54_out /* BUS */ (ts_pe_123_a1_out),
	.wdata_54_oe /* BUS */ (ts_pe_123_a1_oe),
	.wdata_54_in /* BUS */ (ts_pe_123_a1_in),
	.wdata_55_out /* BUS */ (ts_pe_124_a1_out),
	.wdata_55_oe /* BUS */ (ts_pe_124_a1_oe),
	.wdata_55_in /* BUS */ (ts_pe_124_a1_in),
	.wdata_56_out /* BUS */ (ts_pe_125_a1_out),
	.wdata_56_oe /* BUS */ (ts_pe_125_a1_oe),
	.wdata_56_in /* BUS */ (ts_pe_125_a1_in),
	.wdata_57_out /* BUS */ (ts_pe_126_a1_out),
	.wdata_57_oe /* BUS */ (ts_pe_126_a1_oe),
	.wdata_57_in /* BUS */ (ts_pe_126_a1_in),
	.wdata_58_out /* BUS */ (ts_pe_127_a1_out),
	.wdata_58_oe /* BUS */ (ts_pe_127_a1_oe),
	.wdata_58_in /* BUS */ (ts_pe_127_a1_in),
	.wdata_59_out /* BUS */ (ts_pe_128_a1_out),
	.wdata_59_oe /* BUS */ (ts_pe_128_a1_oe),
	.wdata_59_in /* BUS */ (ts_pe_128_a1_in),
	.wdata_60_out /* BUS */ (ts_pe_129_a1_out),
	.wdata_60_oe /* BUS */ (ts_pe_129_a1_oe),
	.wdata_60_in /* BUS */ (ts_pe_129_a1_in),
	.wdata_61_out /* BUS */ (ts_pe_130_a1_out),
	.wdata_61_oe /* BUS */ (ts_pe_130_a1_oe),
	.wdata_61_in /* BUS */ (ts_pe_130_a1_in),
	.wdata_62_out /* BUS */ (ts_pe_131_a1_out),
	.wdata_62_oe /* BUS */ (ts_pe_131_a1_oe),
	.wdata_62_in /* BUS */ (ts_pe_131_a1_in),
	.wdata_63_out /* BUS */ (ts_pe_132_a1_out),
	.wdata_63_oe /* BUS */ (ts_pe_132_a1_oe),
	.wdata_63_in /* BUS */ (ts_pe_132_a1_in),
	.justify_out /* BUS */ (ts_pe_139_a1_out),
	.justify_oe /* BUS */ (ts_pe_139_a1_oe),
	.justify_in /* BUS */ (ts_pe_139_a1_in),
	.mreq_out /* BUS */ (ts_pe_138_a1_out),
	.mreq_oe /* BUS */ (ts_pe_138_a1_oe),
	.mreq_in /* BUS */ (ts_pe_138_a1_in),
	.read_out /* BUS */ (ts_pe_137_a1_out),
	.read_oe /* BUS */ (ts_pe_137_a1_oe),
	.read_in /* BUS */ (ts_pe_137_a1_in),
	.width_0_out /* BUS */ (ts_pe_133_a1_out),
	.width_0_oe /* BUS */ (ts_pe_133_a1_oe),
	.width_0_in /* BUS */ (ts_pe_133_a1_in),
	.width_1_out /* BUS */ (ts_pe_134_a1_out),
	.width_1_oe /* BUS */ (ts_pe_134_a1_oe),
	.width_1_in /* BUS */ (ts_pe_134_a1_in),
	.width_2_out /* BUS */ (ts_pe_135_a1_out),
	.width_2_oe /* BUS */ (ts_pe_135_a1_oe),
	.width_2_in /* BUS */ (ts_pe_135_a1_in),
	.width_3_out /* BUS */ (ts_pe_136_a1_out),
	.width_3_oe /* BUS */ (ts_pe_136_a1_oe),
	.width_3_in /* BUS */ (ts_pe_136_a1_in),
	.gpu_dout_0_out /* BUS */ (ts_local_pe_196_a2_out),
	.gpu_dout_0_oe /* BUS */ (ts_local_pe_196_a2_oe),
	.gpu_dout_0_in /* BUS */ (ts_local_pe_196_a2_in),
	.gpu_dout_1_out /* BUS */ (ts_local_pe_197_a2_out),
	.gpu_dout_1_oe /* BUS */ (ts_local_pe_197_a2_oe),
	.gpu_dout_1_in /* BUS */ (ts_local_pe_197_a2_in),
	.gpu_dout_2_out /* BUS */ (ts_local_pe_198_a2_out),
	.gpu_dout_2_oe /* BUS */ (ts_local_pe_198_a2_oe),
	.gpu_dout_2_in /* BUS */ (ts_local_pe_198_a2_in),
	.gpu_dout_3_out /* BUS */ (ts_local_pe_199_a2_out),
	.gpu_dout_3_oe /* BUS */ (ts_local_pe_199_a2_oe),
	.gpu_dout_3_in /* BUS */ (ts_local_pe_199_a2_in),
	.gpu_dout_4_out /* BUS */ (ts_local_pe_200_a2_out),
	.gpu_dout_4_oe /* BUS */ (ts_local_pe_200_a2_oe),
	.gpu_dout_4_in /* BUS */ (ts_local_pe_200_a2_in),
	.gpu_dout_5_out /* BUS */ (ts_local_pe_201_a2_out),
	.gpu_dout_5_oe /* BUS */ (ts_local_pe_201_a2_oe),
	.gpu_dout_5_in /* BUS */ (ts_local_pe_201_a2_in),
	.gpu_dout_6_out /* BUS */ (ts_local_pe_202_a1_out),
	.gpu_dout_6_oe /* BUS */ (ts_local_pe_202_a1_oe),
	.gpu_dout_6_in /* BUS */ (ts_local_pe_202_a1_in),
	.gpu_dout_7_out /* BUS */ (ts_local_pe_203_a1_out),
	.gpu_dout_7_oe /* BUS */ (ts_local_pe_203_a1_oe),
	.gpu_dout_7_in /* BUS */ (ts_local_pe_203_a1_in),
	.gpu_dout_8_out /* BUS */ (ts_local_pe_204_a1_out),
	.gpu_dout_8_oe /* BUS */ (ts_local_pe_204_a1_oe),
	.gpu_dout_8_in /* BUS */ (ts_local_pe_204_a1_in),
	.gpu_dout_9_out /* BUS */ (ts_local_pe_205_a1_out),
	.gpu_dout_9_oe /* BUS */ (ts_local_pe_205_a1_oe),
	.gpu_dout_9_in /* BUS */ (ts_local_pe_205_a1_in),
	.gpu_dout_10_out /* BUS */ (ts_local_pe_206_a1_out),
	.gpu_dout_10_oe /* BUS */ (ts_local_pe_206_a1_oe),
	.gpu_dout_10_in /* BUS */ (ts_local_pe_206_a1_in),
	.gpu_dout_11_out /* BUS */ (ts_local_pe_207_a2_out),
	.gpu_dout_11_oe /* BUS */ (ts_local_pe_207_a2_oe),
	.gpu_dout_11_in /* BUS */ (ts_local_pe_207_a2_in),
	.gpu_dout_12_out /* BUS */ (ts_local_pe_208_a2_out),
	.gpu_dout_12_oe /* BUS */ (ts_local_pe_208_a2_oe),
	.gpu_dout_12_in /* BUS */ (ts_local_pe_208_a2_in),
	.gpu_dout_13_out /* BUS */ (ts_local_pe_209_a2_out),
	.gpu_dout_13_oe /* BUS */ (ts_local_pe_209_a2_oe),
	.gpu_dout_13_in /* BUS */ (ts_local_pe_209_a2_in),
	.gpu_dout_14_out /* BUS */ (ts_local_pe_210_a2_out),
	.gpu_dout_14_oe /* BUS */ (ts_local_pe_210_a2_oe),
	.gpu_dout_14_in /* BUS */ (ts_local_pe_210_a2_in),
	.gpu_dout_15_out /* BUS */ (ts_local_pe_211_a2_out),
	.gpu_dout_15_oe /* BUS */ (ts_local_pe_211_a2_oe),
	.gpu_dout_15_in /* BUS */ (ts_local_pe_211_a2_in),
	.gpu_dout_16_out /* BUS */ (ts_local_pe_212_a1_out),
	.gpu_dout_16_oe /* BUS */ (ts_local_pe_212_a1_oe),
	.gpu_dout_16_in /* BUS */ (ts_local_pe_212_a1_in),
	.gpu_dout_17_out /* BUS */ (ts_local_pe_213_a1_out),
	.gpu_dout_17_oe /* BUS */ (ts_local_pe_213_a1_oe),
	.gpu_dout_17_in /* BUS */ (ts_local_pe_213_a1_in),
	.gpu_dout_18_out /* BUS */ (ts_local_pe_214_a1_out),
	.gpu_dout_18_oe /* BUS */ (ts_local_pe_214_a1_oe),
	.gpu_dout_18_in /* BUS */ (ts_local_pe_214_a1_in),
	.gpu_dout_19_out /* BUS */ (ts_local_pe_215_a1_out),
	.gpu_dout_19_oe /* BUS */ (ts_local_pe_215_a1_oe),
	.gpu_dout_19_in /* BUS */ (ts_local_pe_215_a1_in),
	.gpu_dout_20_out /* BUS */ (ts_local_pe_216_a1_out),
	.gpu_dout_20_oe /* BUS */ (ts_local_pe_216_a1_oe),
	.gpu_dout_20_in /* BUS */ (ts_local_pe_216_a1_in),
	.gpu_dout_21_out /* BUS */ (ts_local_pe_217_a1_out),
	.gpu_dout_21_oe /* BUS */ (ts_local_pe_217_a1_oe),
	.gpu_dout_21_in /* BUS */ (ts_local_pe_217_a1_in),
	.gpu_dout_22_out /* BUS */ (ts_local_pe_218_a1_out),
	.gpu_dout_22_oe /* BUS */ (ts_local_pe_218_a1_oe),
	.gpu_dout_22_in /* BUS */ (ts_local_pe_218_a1_in),
	.gpu_dout_23_out /* BUS */ (ts_local_pe_219_a1_out),
	.gpu_dout_23_oe /* BUS */ (ts_local_pe_219_a1_oe),
	.gpu_dout_23_in /* BUS */ (ts_local_pe_219_a1_in),
	.gpu_dout_24_out /* BUS */ (ts_local_pe_220_a1_out),
	.gpu_dout_24_oe /* BUS */ (ts_local_pe_220_a1_oe),
	.gpu_dout_24_in /* BUS */ (ts_local_pe_220_a1_in),
	.gpu_dout_25_out /* BUS */ (ts_local_pe_221_a1_out),
	.gpu_dout_25_oe /* BUS */ (ts_local_pe_221_a1_oe),
	.gpu_dout_25_in /* BUS */ (ts_local_pe_221_a1_in),
	.gpu_dout_26_out /* BUS */ (ts_local_pe_222_a1_out),
	.gpu_dout_26_oe /* BUS */ (ts_local_pe_222_a1_oe),
	.gpu_dout_26_in /* BUS */ (ts_local_pe_222_a1_in),
	.gpu_dout_27_out /* BUS */ (ts_local_pe_223_a1_out),
	.gpu_dout_27_oe /* BUS */ (ts_local_pe_223_a1_oe),
	.gpu_dout_27_in /* BUS */ (ts_local_pe_223_a1_in),
	.gpu_dout_28_out /* BUS */ (ts_local_pe_224_a1_out),
	.gpu_dout_28_oe /* BUS */ (ts_local_pe_224_a1_oe),
	.gpu_dout_28_in /* BUS */ (ts_local_pe_224_a1_in),
	.gpu_dout_29_out /* BUS */ (ts_local_pe_225_a1_out),
	.gpu_dout_29_oe /* BUS */ (ts_local_pe_225_a1_oe),
	.gpu_dout_29_in /* BUS */ (ts_local_pe_225_a1_in),
	.gpu_dout_30_out /* BUS */ (ts_local_pe_226_a1_out),
	.gpu_dout_30_oe /* BUS */ (ts_local_pe_226_a1_oe),
	.gpu_dout_30_in /* BUS */ (ts_local_pe_226_a1_in),
	.gpu_dout_31_out /* BUS */ (ts_local_pe_227_a1_out),
	.gpu_dout_31_oe /* BUS */ (ts_local_pe_227_a1_oe),
	.gpu_dout_31_in /* BUS */ (ts_local_pe_227_a1_in),
	.blit_breq_0 /* OUT */ (blit_breq_0),
	.blit_breq_1 /* OUT */ (blit_breq_1),
	.blit_int /* OUT */ (gpu_irq_4),
	.ack /* IN */ (ack),
	.big_pix /* IN */ (big_pix),
	.blit_back /* IN */ (blit_back),
	.bliten /* IN */ (bliten),
	.clk /* IN */ (clk),
	.tlw /* IN */ (tlw),
	.data_0 /* IN */ (data_0),
	.data_1 /* IN */ (data_1),
	.data_2 /* IN */ (data_2),
	.data_3 /* IN */ (data_3),
	.data_4 /* IN */ (data_4),
	.data_5 /* IN */ (data_5),
	.data_6 /* IN */ (data_6),
	.data_7 /* IN */ (data_7),
	.data_8 /* IN */ (data_8),
	.data_9 /* IN */ (data_9),
	.data_10 /* IN */ (data_10),
	.data_11 /* IN */ (data_11),
	.data_12 /* IN */ (data_12),
	.data_13 /* IN */ (data_13),
	.data_14 /* IN */ (data_14),
	.data_15 /* IN */ (data_15),
	.data_16 /* IN */ (data_16),
	.data_17 /* IN */ (data_17),
	.data_18 /* IN */ (data_18),
	.data_19 /* IN */ (data_19),
	.data_20 /* IN */ (data_20),
	.data_21 /* IN */ (data_21),
	.data_22 /* IN */ (data_22),
	.data_23 /* IN */ (data_23),
	.data_24 /* IN */ (data_24),
	.data_25 /* IN */ (data_25),
	.data_26 /* IN */ (data_26),
	.data_27 /* IN */ (data_27),
	.data_28 /* IN */ (data_28),
	.data_29 /* IN */ (data_29),
	.data_30 /* IN */ (data_30),
	.data_31 /* IN */ (data_31),
	.data_32 /* IN */ (data_32),
	.data_33 /* IN */ (data_33),
	.data_34 /* IN */ (data_34),
	.data_35 /* IN */ (data_35),
	.data_36 /* IN */ (data_36),
	.data_37 /* IN */ (data_37),
	.data_38 /* IN */ (data_38),
	.data_39 /* IN */ (data_39),
	.data_40 /* IN */ (data_40),
	.data_41 /* IN */ (data_41),
	.data_42 /* IN */ (data_42),
	.data_43 /* IN */ (data_43),
	.data_44 /* IN */ (data_44),
	.data_45 /* IN */ (data_45),
	.data_46 /* IN */ (data_46),
	.data_47 /* IN */ (data_47),
	.data_48 /* IN */ (data_48),
	.data_49 /* IN */ (data_49),
	.data_50 /* IN */ (data_50),
	.data_51 /* IN */ (data_51),
	.data_52 /* IN */ (data_52),
	.data_53 /* IN */ (data_53),
	.data_54 /* IN */ (data_54),
	.data_55 /* IN */ (data_55),
	.data_56 /* IN */ (data_56),
	.data_57 /* IN */ (data_57),
	.data_58 /* IN */ (data_58),
	.data_59 /* IN */ (data_59),
	.data_60 /* IN */ (data_60),
	.data_61 /* IN */ (data_61),
	.data_62 /* IN */ (data_62),
	.data_63 /* IN */ (data_63),
	.gpu_addr /* IN */ ({gpu_addr[0],gpu_addr[1],gpu_addr[2],gpu_addr[3],gpu_addr[4],gpu_addr[5],gpu_addr[6],gpu_addr[7],gpu_addr[8],gpu_addr[9],gpu_addr[10],gpu_addr[11],gpu_addr[12],gpu_addr[13],gpu_addr[14],gpu_addr[15],gpu_addr[16],gpu_addr[17],gpu_addr[18],gpu_addr[19],gpu_addr[20],gpu_addr[21],gpu_addr[22],gpu_addr[23]}),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.gpu_memw /* IN */ (gpu_memw),
	.xreset_n /* IN */ (resetl_12),
	.sys_clk(sys_clk) // Generated
);

// GRAPHICS.NET (214) - gpu_dout : join_bus
assign ts_local_pe_164_a5_out = gpu_dout_0_out;
assign ts_local_pe_164_a5_oe = gpu_dout_0_oe;
assign gpu_dout_0_in = ts_local_pe_164_a5_in;
assign ts_local_pe_165_a5_out = gpu_dout_1_out;
assign ts_local_pe_165_a5_oe = gpu_dout_1_oe;
assign gpu_dout_1_in = ts_local_pe_165_a5_in;
assign ts_local_pe_166_a5_out = gpu_dout_2_out;
assign ts_local_pe_166_a5_oe = gpu_dout_2_oe;
assign gpu_dout_2_in = ts_local_pe_166_a5_in;
assign ts_local_pe_167_a5_out = gpu_dout_3_out;
assign ts_local_pe_167_a5_oe = gpu_dout_3_oe;
assign gpu_dout_3_in = ts_local_pe_167_a5_in;
assign ts_local_pe_168_a5_out = gpu_dout_4_out;
assign ts_local_pe_168_a5_oe = gpu_dout_4_oe;
assign gpu_dout_4_in = ts_local_pe_168_a5_in;
assign ts_local_pe_169_a5_out = gpu_dout_5_out;
assign ts_local_pe_169_a5_oe = gpu_dout_5_oe;
assign gpu_dout_5_in = ts_local_pe_169_a5_in;
assign ts_local_pe_170_a5_out = gpu_dout_6_out;
assign ts_local_pe_170_a5_oe = gpu_dout_6_oe;
assign gpu_dout_6_in = ts_local_pe_170_a5_in;
assign ts_local_pe_171_a5_out = gpu_dout_7_out;
assign ts_local_pe_171_a5_oe = gpu_dout_7_oe;
assign gpu_dout_7_in = ts_local_pe_171_a5_in;
assign ts_local_pe_172_a5_out = gpu_dout_8_out;
assign ts_local_pe_172_a5_oe = gpu_dout_8_oe;
assign gpu_dout_8_in = ts_local_pe_172_a5_in;
assign ts_local_pe_173_a5_out = gpu_dout_9_out;
assign ts_local_pe_173_a5_oe = gpu_dout_9_oe;
assign gpu_dout_9_in = ts_local_pe_173_a5_in;
assign ts_local_pe_174_a5_out = gpu_dout_10_out;
assign ts_local_pe_174_a5_oe = gpu_dout_10_oe;
assign gpu_dout_10_in = ts_local_pe_174_a5_in;
assign ts_local_pe_175_a5_out = gpu_dout_11_out;
assign ts_local_pe_175_a5_oe = gpu_dout_11_oe;
assign gpu_dout_11_in = ts_local_pe_175_a5_in;
assign ts_local_pe_176_a5_out = gpu_dout_12_out;
assign ts_local_pe_176_a5_oe = gpu_dout_12_oe;
assign gpu_dout_12_in = ts_local_pe_176_a5_in;
assign ts_local_pe_177_a5_out = gpu_dout_13_out;
assign ts_local_pe_177_a5_oe = gpu_dout_13_oe;
assign gpu_dout_13_in = ts_local_pe_177_a5_in;
assign ts_local_pe_178_a5_out = gpu_dout_14_out;
assign ts_local_pe_178_a5_oe = gpu_dout_14_oe;
assign gpu_dout_14_in = ts_local_pe_178_a5_in;
assign ts_local_pe_179_a5_out = gpu_dout_15_out;
assign ts_local_pe_179_a5_oe = gpu_dout_15_oe;
assign gpu_dout_15_in = ts_local_pe_179_a5_in;
assign ts_local_pe_180_a5_out = gpu_dout_16_out;
assign ts_local_pe_180_a5_oe = gpu_dout_16_oe;
assign gpu_dout_16_in = ts_local_pe_180_a5_in;
assign ts_local_pe_181_a5_out = gpu_dout_17_out;
assign ts_local_pe_181_a5_oe = gpu_dout_17_oe;
assign gpu_dout_17_in = ts_local_pe_181_a5_in;
assign ts_local_pe_182_a5_out = gpu_dout_18_out;
assign ts_local_pe_182_a5_oe = gpu_dout_18_oe;
assign gpu_dout_18_in = ts_local_pe_182_a5_in;
assign ts_local_pe_183_a5_out = gpu_dout_19_out;
assign ts_local_pe_183_a5_oe = gpu_dout_19_oe;
assign gpu_dout_19_in = ts_local_pe_183_a5_in;
assign ts_local_pe_184_a5_out = gpu_dout_20_out;
assign ts_local_pe_184_a5_oe = gpu_dout_20_oe;
assign gpu_dout_20_in = ts_local_pe_184_a5_in;
assign ts_local_pe_185_a5_out = gpu_dout_21_out;
assign ts_local_pe_185_a5_oe = gpu_dout_21_oe;
assign gpu_dout_21_in = ts_local_pe_185_a5_in;
assign ts_local_pe_186_a5_out = gpu_dout_22_out;
assign ts_local_pe_186_a5_oe = gpu_dout_22_oe;
assign gpu_dout_22_in = ts_local_pe_186_a5_in;
assign ts_local_pe_187_a5_out = gpu_dout_23_out;
assign ts_local_pe_187_a5_oe = gpu_dout_23_oe;
assign gpu_dout_23_in = ts_local_pe_187_a5_in;
assign ts_local_pe_188_a5_out = gpu_dout_24_out;
assign ts_local_pe_188_a5_oe = gpu_dout_24_oe;
assign gpu_dout_24_in = ts_local_pe_188_a5_in;
assign ts_local_pe_189_a5_out = gpu_dout_25_out;
assign ts_local_pe_189_a5_oe = gpu_dout_25_oe;
assign gpu_dout_25_in = ts_local_pe_189_a5_in;
assign ts_local_pe_190_a5_out = gpu_dout_26_out;
assign ts_local_pe_190_a5_oe = gpu_dout_26_oe;
assign gpu_dout_26_in = ts_local_pe_190_a5_in;
assign ts_local_pe_191_a5_out = gpu_dout_27_out;
assign ts_local_pe_191_a5_oe = gpu_dout_27_oe;
assign gpu_dout_27_in = ts_local_pe_191_a5_in;
assign ts_local_pe_192_a5_out = gpu_dout_28_out;
assign ts_local_pe_192_a5_oe = gpu_dout_28_oe;
assign gpu_dout_28_in = ts_local_pe_192_a5_in;
assign ts_local_pe_193_a5_out = gpu_dout_29_out;
assign ts_local_pe_193_a5_oe = gpu_dout_29_oe;
assign gpu_dout_29_in = ts_local_pe_193_a5_in;
assign ts_local_pe_194_a5_out = gpu_dout_30_out;
assign ts_local_pe_194_a5_oe = gpu_dout_30_oe;
assign gpu_dout_30_in = ts_local_pe_194_a5_in;
assign ts_local_pe_195_a5_out = gpu_dout_31_out;
assign ts_local_pe_195_a5_oe = gpu_dout_31_oe;
assign gpu_dout_31_in = ts_local_pe_195_a5_in;

// GRAPHICS.NET (218) - gpu_din : nivu
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

// --- Compiler-generated PE for BUS wdata[0]
assign wdata_0_out = (ts_pe_69_a0_oe & ts_pe_69_a0_out ) | (ts_pe_69_a1_oe & ts_pe_69_a1_out ) | 1'b0;
assign wdata_0_oe = ts_pe_69_a0_oe | ts_pe_69_a1_oe;
assign ts_pe_69_a0_in = wdata_0_in;
assign ts_pe_69_a1_in = wdata_0_in;

// --- Compiler-generated PE for BUS wdata[1]
assign wdata_1_out = (ts_pe_70_a0_oe & ts_pe_70_a0_out ) | (ts_pe_70_a1_oe & ts_pe_70_a1_out ) | 1'b0;
assign wdata_1_oe = ts_pe_70_a0_oe | ts_pe_70_a1_oe;
assign ts_pe_70_a0_in = wdata_1_in;
assign ts_pe_70_a1_in = wdata_1_in;

// --- Compiler-generated PE for BUS wdata[2]
assign wdata_2_out = (ts_pe_71_a0_oe & ts_pe_71_a0_out ) | (ts_pe_71_a1_oe & ts_pe_71_a1_out ) | 1'b0;
assign wdata_2_oe = ts_pe_71_a0_oe | ts_pe_71_a1_oe;
assign ts_pe_71_a0_in = wdata_2_in;
assign ts_pe_71_a1_in = wdata_2_in;

// --- Compiler-generated PE for BUS wdata[3]
assign wdata_3_out = (ts_pe_72_a0_oe & ts_pe_72_a0_out ) | (ts_pe_72_a1_oe & ts_pe_72_a1_out ) | 1'b0;
assign wdata_3_oe = ts_pe_72_a0_oe | ts_pe_72_a1_oe;
assign ts_pe_72_a0_in = wdata_3_in;
assign ts_pe_72_a1_in = wdata_3_in;

// --- Compiler-generated PE for BUS wdata[4]
assign wdata_4_out = (ts_pe_73_a0_oe & ts_pe_73_a0_out ) | (ts_pe_73_a1_oe & ts_pe_73_a1_out ) | 1'b0;
assign wdata_4_oe = ts_pe_73_a0_oe | ts_pe_73_a1_oe;
assign ts_pe_73_a0_in = wdata_4_in;
assign ts_pe_73_a1_in = wdata_4_in;

// --- Compiler-generated PE for BUS wdata[5]
assign wdata_5_out = (ts_pe_74_a0_oe & ts_pe_74_a0_out ) | (ts_pe_74_a1_oe & ts_pe_74_a1_out ) | 1'b0;
assign wdata_5_oe = ts_pe_74_a0_oe | ts_pe_74_a1_oe;
assign ts_pe_74_a0_in = wdata_5_in;
assign ts_pe_74_a1_in = wdata_5_in;

// --- Compiler-generated PE for BUS wdata[6]
assign wdata_6_out = (ts_pe_75_a0_oe & ts_pe_75_a0_out ) | (ts_pe_75_a1_oe & ts_pe_75_a1_out ) | 1'b0;
assign wdata_6_oe = ts_pe_75_a0_oe | ts_pe_75_a1_oe;
assign ts_pe_75_a0_in = wdata_6_in;
assign ts_pe_75_a1_in = wdata_6_in;

// --- Compiler-generated PE for BUS wdata[7]
assign wdata_7_out = (ts_pe_76_a0_oe & ts_pe_76_a0_out ) | (ts_pe_76_a1_oe & ts_pe_76_a1_out ) | 1'b0;
assign wdata_7_oe = ts_pe_76_a0_oe | ts_pe_76_a1_oe;
assign ts_pe_76_a0_in = wdata_7_in;
assign ts_pe_76_a1_in = wdata_7_in;

// --- Compiler-generated PE for BUS wdata[8]
assign wdata_8_out = (ts_pe_77_a0_oe & ts_pe_77_a0_out ) | (ts_pe_77_a1_oe & ts_pe_77_a1_out ) | 1'b0;
assign wdata_8_oe = ts_pe_77_a0_oe | ts_pe_77_a1_oe;
assign ts_pe_77_a0_in = wdata_8_in;
assign ts_pe_77_a1_in = wdata_8_in;

// --- Compiler-generated PE for BUS wdata[9]
assign wdata_9_out = (ts_pe_78_a0_oe & ts_pe_78_a0_out ) | (ts_pe_78_a1_oe & ts_pe_78_a1_out ) | 1'b0;
assign wdata_9_oe = ts_pe_78_a0_oe | ts_pe_78_a1_oe;
assign ts_pe_78_a0_in = wdata_9_in;
assign ts_pe_78_a1_in = wdata_9_in;

// --- Compiler-generated PE for BUS wdata[10]
assign wdata_10_out = (ts_pe_79_a0_oe & ts_pe_79_a0_out ) | (ts_pe_79_a1_oe & ts_pe_79_a1_out ) | 1'b0;
assign wdata_10_oe = ts_pe_79_a0_oe | ts_pe_79_a1_oe;
assign ts_pe_79_a0_in = wdata_10_in;
assign ts_pe_79_a1_in = wdata_10_in;

// --- Compiler-generated PE for BUS wdata[11]
assign wdata_11_out = (ts_pe_80_a0_oe & ts_pe_80_a0_out ) | (ts_pe_80_a1_oe & ts_pe_80_a1_out ) | 1'b0;
assign wdata_11_oe = ts_pe_80_a0_oe | ts_pe_80_a1_oe;
assign ts_pe_80_a0_in = wdata_11_in;
assign ts_pe_80_a1_in = wdata_11_in;

// --- Compiler-generated PE for BUS wdata[12]
assign wdata_12_out = (ts_pe_81_a0_oe & ts_pe_81_a0_out ) | (ts_pe_81_a1_oe & ts_pe_81_a1_out ) | 1'b0;
assign wdata_12_oe = ts_pe_81_a0_oe | ts_pe_81_a1_oe;
assign ts_pe_81_a0_in = wdata_12_in;
assign ts_pe_81_a1_in = wdata_12_in;

// --- Compiler-generated PE for BUS wdata[13]
assign wdata_13_out = (ts_pe_82_a0_oe & ts_pe_82_a0_out ) | (ts_pe_82_a1_oe & ts_pe_82_a1_out ) | 1'b0;
assign wdata_13_oe = ts_pe_82_a0_oe | ts_pe_82_a1_oe;
assign ts_pe_82_a0_in = wdata_13_in;
assign ts_pe_82_a1_in = wdata_13_in;

// --- Compiler-generated PE for BUS wdata[14]
assign wdata_14_out = (ts_pe_83_a0_oe & ts_pe_83_a0_out ) | (ts_pe_83_a1_oe & ts_pe_83_a1_out ) | 1'b0;
assign wdata_14_oe = ts_pe_83_a0_oe | ts_pe_83_a1_oe;
assign ts_pe_83_a0_in = wdata_14_in;
assign ts_pe_83_a1_in = wdata_14_in;

// --- Compiler-generated PE for BUS wdata[15]
assign wdata_15_out = (ts_pe_84_a0_oe & ts_pe_84_a0_out ) | (ts_pe_84_a1_oe & ts_pe_84_a1_out ) | 1'b0;
assign wdata_15_oe = ts_pe_84_a0_oe | ts_pe_84_a1_oe;
assign ts_pe_84_a0_in = wdata_15_in;
assign ts_pe_84_a1_in = wdata_15_in;

// --- Compiler-generated PE for BUS wdata[16]
assign wdata_16_out = (ts_pe_85_a0_oe & ts_pe_85_a0_out ) | (ts_pe_85_a1_oe & ts_pe_85_a1_out ) | 1'b0;
assign wdata_16_oe = ts_pe_85_a0_oe | ts_pe_85_a1_oe;
assign ts_pe_85_a0_in = wdata_16_in;
assign ts_pe_85_a1_in = wdata_16_in;

// --- Compiler-generated PE for BUS wdata[17]
assign wdata_17_out = (ts_pe_86_a0_oe & ts_pe_86_a0_out ) | (ts_pe_86_a1_oe & ts_pe_86_a1_out ) | 1'b0;
assign wdata_17_oe = ts_pe_86_a0_oe | ts_pe_86_a1_oe;
assign ts_pe_86_a0_in = wdata_17_in;
assign ts_pe_86_a1_in = wdata_17_in;

// --- Compiler-generated PE for BUS wdata[18]
assign wdata_18_out = (ts_pe_87_a0_oe & ts_pe_87_a0_out ) | (ts_pe_87_a1_oe & ts_pe_87_a1_out ) | 1'b0;
assign wdata_18_oe = ts_pe_87_a0_oe | ts_pe_87_a1_oe;
assign ts_pe_87_a0_in = wdata_18_in;
assign ts_pe_87_a1_in = wdata_18_in;

// --- Compiler-generated PE for BUS wdata[19]
assign wdata_19_out = (ts_pe_88_a0_oe & ts_pe_88_a0_out ) | (ts_pe_88_a1_oe & ts_pe_88_a1_out ) | 1'b0;
assign wdata_19_oe = ts_pe_88_a0_oe | ts_pe_88_a1_oe;
assign ts_pe_88_a0_in = wdata_19_in;
assign ts_pe_88_a1_in = wdata_19_in;

// --- Compiler-generated PE for BUS wdata[20]
assign wdata_20_out = (ts_pe_89_a0_oe & ts_pe_89_a0_out ) | (ts_pe_89_a1_oe & ts_pe_89_a1_out ) | 1'b0;
assign wdata_20_oe = ts_pe_89_a0_oe | ts_pe_89_a1_oe;
assign ts_pe_89_a0_in = wdata_20_in;
assign ts_pe_89_a1_in = wdata_20_in;

// --- Compiler-generated PE for BUS wdata[21]
assign wdata_21_out = (ts_pe_90_a0_oe & ts_pe_90_a0_out ) | (ts_pe_90_a1_oe & ts_pe_90_a1_out ) | 1'b0;
assign wdata_21_oe = ts_pe_90_a0_oe | ts_pe_90_a1_oe;
assign ts_pe_90_a0_in = wdata_21_in;
assign ts_pe_90_a1_in = wdata_21_in;

// --- Compiler-generated PE for BUS wdata[22]
assign wdata_22_out = (ts_pe_91_a0_oe & ts_pe_91_a0_out ) | (ts_pe_91_a1_oe & ts_pe_91_a1_out ) | 1'b0;
assign wdata_22_oe = ts_pe_91_a0_oe | ts_pe_91_a1_oe;
assign ts_pe_91_a0_in = wdata_22_in;
assign ts_pe_91_a1_in = wdata_22_in;

// --- Compiler-generated PE for BUS wdata[23]
assign wdata_23_out = (ts_pe_92_a0_oe & ts_pe_92_a0_out ) | (ts_pe_92_a1_oe & ts_pe_92_a1_out ) | 1'b0;
assign wdata_23_oe = ts_pe_92_a0_oe | ts_pe_92_a1_oe;
assign ts_pe_92_a0_in = wdata_23_in;
assign ts_pe_92_a1_in = wdata_23_in;

// --- Compiler-generated PE for BUS wdata[24]
assign wdata_24_out = (ts_pe_93_a0_oe & ts_pe_93_a0_out ) | (ts_pe_93_a1_oe & ts_pe_93_a1_out ) | 1'b0;
assign wdata_24_oe = ts_pe_93_a0_oe | ts_pe_93_a1_oe;
assign ts_pe_93_a0_in = wdata_24_in;
assign ts_pe_93_a1_in = wdata_24_in;

// --- Compiler-generated PE for BUS wdata[25]
assign wdata_25_out = (ts_pe_94_a0_oe & ts_pe_94_a0_out ) | (ts_pe_94_a1_oe & ts_pe_94_a1_out ) | 1'b0;
assign wdata_25_oe = ts_pe_94_a0_oe | ts_pe_94_a1_oe;
assign ts_pe_94_a0_in = wdata_25_in;
assign ts_pe_94_a1_in = wdata_25_in;

// --- Compiler-generated PE for BUS wdata[26]
assign wdata_26_out = (ts_pe_95_a0_oe & ts_pe_95_a0_out ) | (ts_pe_95_a1_oe & ts_pe_95_a1_out ) | 1'b0;
assign wdata_26_oe = ts_pe_95_a0_oe | ts_pe_95_a1_oe;
assign ts_pe_95_a0_in = wdata_26_in;
assign ts_pe_95_a1_in = wdata_26_in;

// --- Compiler-generated PE for BUS wdata[27]
assign wdata_27_out = (ts_pe_96_a0_oe & ts_pe_96_a0_out ) | (ts_pe_96_a1_oe & ts_pe_96_a1_out ) | 1'b0;
assign wdata_27_oe = ts_pe_96_a0_oe | ts_pe_96_a1_oe;
assign ts_pe_96_a0_in = wdata_27_in;
assign ts_pe_96_a1_in = wdata_27_in;

// --- Compiler-generated PE for BUS wdata[28]
assign wdata_28_out = (ts_pe_97_a0_oe & ts_pe_97_a0_out ) | (ts_pe_97_a1_oe & ts_pe_97_a1_out ) | 1'b0;
assign wdata_28_oe = ts_pe_97_a0_oe | ts_pe_97_a1_oe;
assign ts_pe_97_a0_in = wdata_28_in;
assign ts_pe_97_a1_in = wdata_28_in;

// --- Compiler-generated PE for BUS wdata[29]
assign wdata_29_out = (ts_pe_98_a0_oe & ts_pe_98_a0_out ) | (ts_pe_98_a1_oe & ts_pe_98_a1_out ) | 1'b0;
assign wdata_29_oe = ts_pe_98_a0_oe | ts_pe_98_a1_oe;
assign ts_pe_98_a0_in = wdata_29_in;
assign ts_pe_98_a1_in = wdata_29_in;

// --- Compiler-generated PE for BUS wdata[30]
assign wdata_30_out = (ts_pe_99_a0_oe & ts_pe_99_a0_out ) | (ts_pe_99_a1_oe & ts_pe_99_a1_out ) | 1'b0;
assign wdata_30_oe = ts_pe_99_a0_oe | ts_pe_99_a1_oe;
assign ts_pe_99_a0_in = wdata_30_in;
assign ts_pe_99_a1_in = wdata_30_in;

// --- Compiler-generated PE for BUS wdata[31]
assign wdata_31_out = (ts_pe_100_a0_oe & ts_pe_100_a0_out ) | (ts_pe_100_a1_oe & ts_pe_100_a1_out ) | 1'b0;
assign wdata_31_oe = ts_pe_100_a0_oe | ts_pe_100_a1_oe;
assign ts_pe_100_a0_in = wdata_31_in;
assign ts_pe_100_a1_in = wdata_31_in;

// --- Compiler-generated PE for BUS wdata[32]
assign wdata_32_out = (ts_pe_101_a0_oe & ts_pe_101_a0_out ) | (ts_pe_101_a1_oe & ts_pe_101_a1_out ) | 1'b0;
assign wdata_32_oe = ts_pe_101_a0_oe | ts_pe_101_a1_oe;
assign ts_pe_101_a0_in = wdata_32_in;
assign ts_pe_101_a1_in = wdata_32_in;

// --- Compiler-generated PE for BUS wdata[33]
assign wdata_33_out = (ts_pe_102_a0_oe & ts_pe_102_a0_out ) | (ts_pe_102_a1_oe & ts_pe_102_a1_out ) | 1'b0;
assign wdata_33_oe = ts_pe_102_a0_oe | ts_pe_102_a1_oe;
assign ts_pe_102_a0_in = wdata_33_in;
assign ts_pe_102_a1_in = wdata_33_in;

// --- Compiler-generated PE for BUS wdata[34]
assign wdata_34_out = (ts_pe_103_a0_oe & ts_pe_103_a0_out ) | (ts_pe_103_a1_oe & ts_pe_103_a1_out ) | 1'b0;
assign wdata_34_oe = ts_pe_103_a0_oe | ts_pe_103_a1_oe;
assign ts_pe_103_a0_in = wdata_34_in;
assign ts_pe_103_a1_in = wdata_34_in;

// --- Compiler-generated PE for BUS wdata[35]
assign wdata_35_out = (ts_pe_104_a0_oe & ts_pe_104_a0_out ) | (ts_pe_104_a1_oe & ts_pe_104_a1_out ) | 1'b0;
assign wdata_35_oe = ts_pe_104_a0_oe | ts_pe_104_a1_oe;
assign ts_pe_104_a0_in = wdata_35_in;
assign ts_pe_104_a1_in = wdata_35_in;

// --- Compiler-generated PE for BUS wdata[36]
assign wdata_36_out = (ts_pe_105_a0_oe & ts_pe_105_a0_out ) | (ts_pe_105_a1_oe & ts_pe_105_a1_out ) | 1'b0;
assign wdata_36_oe = ts_pe_105_a0_oe | ts_pe_105_a1_oe;
assign ts_pe_105_a0_in = wdata_36_in;
assign ts_pe_105_a1_in = wdata_36_in;

// --- Compiler-generated PE for BUS wdata[37]
assign wdata_37_out = (ts_pe_106_a0_oe & ts_pe_106_a0_out ) | (ts_pe_106_a1_oe & ts_pe_106_a1_out ) | 1'b0;
assign wdata_37_oe = ts_pe_106_a0_oe | ts_pe_106_a1_oe;
assign ts_pe_106_a0_in = wdata_37_in;
assign ts_pe_106_a1_in = wdata_37_in;

// --- Compiler-generated PE for BUS wdata[38]
assign wdata_38_out = (ts_pe_107_a0_oe & ts_pe_107_a0_out ) | (ts_pe_107_a1_oe & ts_pe_107_a1_out ) | 1'b0;
assign wdata_38_oe = ts_pe_107_a0_oe | ts_pe_107_a1_oe;
assign ts_pe_107_a0_in = wdata_38_in;
assign ts_pe_107_a1_in = wdata_38_in;

// --- Compiler-generated PE for BUS wdata[39]
assign wdata_39_out = (ts_pe_108_a0_oe & ts_pe_108_a0_out ) | (ts_pe_108_a1_oe & ts_pe_108_a1_out ) | 1'b0;
assign wdata_39_oe = ts_pe_108_a0_oe | ts_pe_108_a1_oe;
assign ts_pe_108_a0_in = wdata_39_in;
assign ts_pe_108_a1_in = wdata_39_in;

// --- Compiler-generated PE for BUS wdata[40]
assign wdata_40_out = (ts_pe_109_a0_oe & ts_pe_109_a0_out ) | (ts_pe_109_a1_oe & ts_pe_109_a1_out ) | 1'b0;
assign wdata_40_oe = ts_pe_109_a0_oe | ts_pe_109_a1_oe;
assign ts_pe_109_a0_in = wdata_40_in;
assign ts_pe_109_a1_in = wdata_40_in;

// --- Compiler-generated PE for BUS wdata[41]
assign wdata_41_out = (ts_pe_110_a0_oe & ts_pe_110_a0_out ) | (ts_pe_110_a1_oe & ts_pe_110_a1_out ) | 1'b0;
assign wdata_41_oe = ts_pe_110_a0_oe | ts_pe_110_a1_oe;
assign ts_pe_110_a0_in = wdata_41_in;
assign ts_pe_110_a1_in = wdata_41_in;

// --- Compiler-generated PE for BUS wdata[42]
assign wdata_42_out = (ts_pe_111_a0_oe & ts_pe_111_a0_out ) | (ts_pe_111_a1_oe & ts_pe_111_a1_out ) | 1'b0;
assign wdata_42_oe = ts_pe_111_a0_oe | ts_pe_111_a1_oe;
assign ts_pe_111_a0_in = wdata_42_in;
assign ts_pe_111_a1_in = wdata_42_in;

// --- Compiler-generated PE for BUS wdata[43]
assign wdata_43_out = (ts_pe_112_a0_oe & ts_pe_112_a0_out ) | (ts_pe_112_a1_oe & ts_pe_112_a1_out ) | 1'b0;
assign wdata_43_oe = ts_pe_112_a0_oe | ts_pe_112_a1_oe;
assign ts_pe_112_a0_in = wdata_43_in;
assign ts_pe_112_a1_in = wdata_43_in;

// --- Compiler-generated PE for BUS wdata[44]
assign wdata_44_out = (ts_pe_113_a0_oe & ts_pe_113_a0_out ) | (ts_pe_113_a1_oe & ts_pe_113_a1_out ) | 1'b0;
assign wdata_44_oe = ts_pe_113_a0_oe | ts_pe_113_a1_oe;
assign ts_pe_113_a0_in = wdata_44_in;
assign ts_pe_113_a1_in = wdata_44_in;

// --- Compiler-generated PE for BUS wdata[45]
assign wdata_45_out = (ts_pe_114_a0_oe & ts_pe_114_a0_out ) | (ts_pe_114_a1_oe & ts_pe_114_a1_out ) | 1'b0;
assign wdata_45_oe = ts_pe_114_a0_oe | ts_pe_114_a1_oe;
assign ts_pe_114_a0_in = wdata_45_in;
assign ts_pe_114_a1_in = wdata_45_in;

// --- Compiler-generated PE for BUS wdata[46]
assign wdata_46_out = (ts_pe_115_a0_oe & ts_pe_115_a0_out ) | (ts_pe_115_a1_oe & ts_pe_115_a1_out ) | 1'b0;
assign wdata_46_oe = ts_pe_115_a0_oe | ts_pe_115_a1_oe;
assign ts_pe_115_a0_in = wdata_46_in;
assign ts_pe_115_a1_in = wdata_46_in;

// --- Compiler-generated PE for BUS wdata[47]
assign wdata_47_out = (ts_pe_116_a0_oe & ts_pe_116_a0_out ) | (ts_pe_116_a1_oe & ts_pe_116_a1_out ) | 1'b0;
assign wdata_47_oe = ts_pe_116_a0_oe | ts_pe_116_a1_oe;
assign ts_pe_116_a0_in = wdata_47_in;
assign ts_pe_116_a1_in = wdata_47_in;

// --- Compiler-generated PE for BUS wdata[48]
assign wdata_48_out = (ts_pe_117_a0_oe & ts_pe_117_a0_out ) | (ts_pe_117_a1_oe & ts_pe_117_a1_out ) | 1'b0;
assign wdata_48_oe = ts_pe_117_a0_oe | ts_pe_117_a1_oe;
assign ts_pe_117_a0_in = wdata_48_in;
assign ts_pe_117_a1_in = wdata_48_in;

// --- Compiler-generated PE for BUS wdata[49]
assign wdata_49_out = (ts_pe_118_a0_oe & ts_pe_118_a0_out ) | (ts_pe_118_a1_oe & ts_pe_118_a1_out ) | 1'b0;
assign wdata_49_oe = ts_pe_118_a0_oe | ts_pe_118_a1_oe;
assign ts_pe_118_a0_in = wdata_49_in;
assign ts_pe_118_a1_in = wdata_49_in;

// --- Compiler-generated PE for BUS wdata[50]
assign wdata_50_out = (ts_pe_119_a0_oe & ts_pe_119_a0_out ) | (ts_pe_119_a1_oe & ts_pe_119_a1_out ) | 1'b0;
assign wdata_50_oe = ts_pe_119_a0_oe | ts_pe_119_a1_oe;
assign ts_pe_119_a0_in = wdata_50_in;
assign ts_pe_119_a1_in = wdata_50_in;

// --- Compiler-generated PE for BUS wdata[51]
assign wdata_51_out = (ts_pe_120_a0_oe & ts_pe_120_a0_out ) | (ts_pe_120_a1_oe & ts_pe_120_a1_out ) | 1'b0;
assign wdata_51_oe = ts_pe_120_a0_oe | ts_pe_120_a1_oe;
assign ts_pe_120_a0_in = wdata_51_in;
assign ts_pe_120_a1_in = wdata_51_in;

// --- Compiler-generated PE for BUS wdata[52]
assign wdata_52_out = (ts_pe_121_a0_oe & ts_pe_121_a0_out ) | (ts_pe_121_a1_oe & ts_pe_121_a1_out ) | 1'b0;
assign wdata_52_oe = ts_pe_121_a0_oe | ts_pe_121_a1_oe;
assign ts_pe_121_a0_in = wdata_52_in;
assign ts_pe_121_a1_in = wdata_52_in;

// --- Compiler-generated PE for BUS wdata[53]
assign wdata_53_out = (ts_pe_122_a0_oe & ts_pe_122_a0_out ) | (ts_pe_122_a1_oe & ts_pe_122_a1_out ) | 1'b0;
assign wdata_53_oe = ts_pe_122_a0_oe | ts_pe_122_a1_oe;
assign ts_pe_122_a0_in = wdata_53_in;
assign ts_pe_122_a1_in = wdata_53_in;

// --- Compiler-generated PE for BUS wdata[54]
assign wdata_54_out = (ts_pe_123_a0_oe & ts_pe_123_a0_out ) | (ts_pe_123_a1_oe & ts_pe_123_a1_out ) | 1'b0;
assign wdata_54_oe = ts_pe_123_a0_oe | ts_pe_123_a1_oe;
assign ts_pe_123_a0_in = wdata_54_in;
assign ts_pe_123_a1_in = wdata_54_in;

// --- Compiler-generated PE for BUS wdata[55]
assign wdata_55_out = (ts_pe_124_a0_oe & ts_pe_124_a0_out ) | (ts_pe_124_a1_oe & ts_pe_124_a1_out ) | 1'b0;
assign wdata_55_oe = ts_pe_124_a0_oe | ts_pe_124_a1_oe;
assign ts_pe_124_a0_in = wdata_55_in;
assign ts_pe_124_a1_in = wdata_55_in;

// --- Compiler-generated PE for BUS wdata[56]
assign wdata_56_out = (ts_pe_125_a0_oe & ts_pe_125_a0_out ) | (ts_pe_125_a1_oe & ts_pe_125_a1_out ) | 1'b0;
assign wdata_56_oe = ts_pe_125_a0_oe | ts_pe_125_a1_oe;
assign ts_pe_125_a0_in = wdata_56_in;
assign ts_pe_125_a1_in = wdata_56_in;

// --- Compiler-generated PE for BUS wdata[57]
assign wdata_57_out = (ts_pe_126_a0_oe & ts_pe_126_a0_out ) | (ts_pe_126_a1_oe & ts_pe_126_a1_out ) | 1'b0;
assign wdata_57_oe = ts_pe_126_a0_oe | ts_pe_126_a1_oe;
assign ts_pe_126_a0_in = wdata_57_in;
assign ts_pe_126_a1_in = wdata_57_in;

// --- Compiler-generated PE for BUS wdata[58]
assign wdata_58_out = (ts_pe_127_a0_oe & ts_pe_127_a0_out ) | (ts_pe_127_a1_oe & ts_pe_127_a1_out ) | 1'b0;
assign wdata_58_oe = ts_pe_127_a0_oe | ts_pe_127_a1_oe;
assign ts_pe_127_a0_in = wdata_58_in;
assign ts_pe_127_a1_in = wdata_58_in;

// --- Compiler-generated PE for BUS wdata[59]
assign wdata_59_out = (ts_pe_128_a0_oe & ts_pe_128_a0_out ) | (ts_pe_128_a1_oe & ts_pe_128_a1_out ) | 1'b0;
assign wdata_59_oe = ts_pe_128_a0_oe | ts_pe_128_a1_oe;
assign ts_pe_128_a0_in = wdata_59_in;
assign ts_pe_128_a1_in = wdata_59_in;

// --- Compiler-generated PE for BUS wdata[60]
assign wdata_60_out = (ts_pe_129_a0_oe & ts_pe_129_a0_out ) | (ts_pe_129_a1_oe & ts_pe_129_a1_out ) | 1'b0;
assign wdata_60_oe = ts_pe_129_a0_oe | ts_pe_129_a1_oe;
assign ts_pe_129_a0_in = wdata_60_in;
assign ts_pe_129_a1_in = wdata_60_in;

// --- Compiler-generated PE for BUS wdata[61]
assign wdata_61_out = (ts_pe_130_a0_oe & ts_pe_130_a0_out ) | (ts_pe_130_a1_oe & ts_pe_130_a1_out ) | 1'b0;
assign wdata_61_oe = ts_pe_130_a0_oe | ts_pe_130_a1_oe;
assign ts_pe_130_a0_in = wdata_61_in;
assign ts_pe_130_a1_in = wdata_61_in;

// --- Compiler-generated PE for BUS wdata[62]
assign wdata_62_out = (ts_pe_131_a0_oe & ts_pe_131_a0_out ) | (ts_pe_131_a1_oe & ts_pe_131_a1_out ) | 1'b0;
assign wdata_62_oe = ts_pe_131_a0_oe | ts_pe_131_a1_oe;
assign ts_pe_131_a0_in = wdata_62_in;
assign ts_pe_131_a1_in = wdata_62_in;

// --- Compiler-generated PE for BUS wdata[63]
assign wdata_63_out = (ts_pe_132_a0_oe & ts_pe_132_a0_out ) | (ts_pe_132_a1_oe & ts_pe_132_a1_out ) | 1'b0;
assign wdata_63_oe = ts_pe_132_a0_oe | ts_pe_132_a1_oe;
assign ts_pe_132_a0_in = wdata_63_in;
assign ts_pe_132_a1_in = wdata_63_in;

// --- Compiler-generated PE for BUS width[0]
assign width_0_out = (ts_pe_133_a0_oe & ts_pe_133_a0_out ) | (ts_pe_133_a1_oe & ts_pe_133_a1_out ) | 1'b0;
assign width_0_oe = ts_pe_133_a0_oe | ts_pe_133_a1_oe;
assign ts_pe_133_a0_in = width_0_in;
assign ts_pe_133_a1_in = width_0_in;

// --- Compiler-generated PE for BUS width[1]
assign width_1_out = (ts_pe_134_a0_oe & ts_pe_134_a0_out ) | (ts_pe_134_a1_oe & ts_pe_134_a1_out ) | 1'b0;
assign width_1_oe = ts_pe_134_a0_oe | ts_pe_134_a1_oe;
assign ts_pe_134_a0_in = width_1_in;
assign ts_pe_134_a1_in = width_1_in;

// --- Compiler-generated PE for BUS width[2]
assign width_2_out = (ts_pe_135_a0_oe & ts_pe_135_a0_out ) | (ts_pe_135_a1_oe & ts_pe_135_a1_out ) | 1'b0;
assign width_2_oe = ts_pe_135_a0_oe | ts_pe_135_a1_oe;
assign ts_pe_135_a0_in = width_2_in;
assign ts_pe_135_a1_in = width_2_in;

// --- Compiler-generated PE for BUS width[3]
assign width_3_out = (ts_pe_136_a0_oe & ts_pe_136_a0_out ) | (ts_pe_136_a1_oe & ts_pe_136_a1_out ) | 1'b0;
assign width_3_oe = ts_pe_136_a0_oe | ts_pe_136_a1_oe;
assign ts_pe_136_a0_in = width_3_in;
assign ts_pe_136_a1_in = width_3_in;

// --- Compiler-generated PE for BUS read
assign read_out = (ts_pe_137_a0_oe & ts_pe_137_a0_out ) | (ts_pe_137_a1_oe & ts_pe_137_a1_out ) | 1'b0;
assign read_oe = ts_pe_137_a0_oe | ts_pe_137_a1_oe;
assign ts_pe_137_a0_in = read_in;
assign ts_pe_137_a1_in = read_in;

// --- Compiler-generated PE for BUS mreq
assign mreq_out = (ts_pe_138_a0_oe & ts_pe_138_a0_out ) | (ts_pe_138_a1_oe & ts_pe_138_a1_out ) | 1'b0;
assign mreq_oe = ts_pe_138_a0_oe | ts_pe_138_a1_oe;
assign ts_pe_138_a0_in = mreq_in;
assign ts_pe_138_a1_in = mreq_in;

// --- Compiler-generated PE for BUS justify
assign justify_out = (ts_pe_139_a0_oe & ts_pe_139_a0_out ) | (ts_pe_139_a1_oe & ts_pe_139_a1_out ) | 1'b0;
assign justify_oe = ts_pe_139_a0_oe | ts_pe_139_a1_oe;
assign ts_pe_139_a0_in = justify_in;
assign ts_pe_139_a1_in = justify_in;

// --- Compiler-generated local PE for BUS address<0>
assign address_out[0] = (ts_local_pe_140_a0_oe & ts_local_pe_140_a0_out ) | (ts_local_pe_140_a1_oe & ts_local_pe_140_a1_out ) | 1'b0;
assign address_oe[0] = ts_local_pe_140_a0_oe | ts_local_pe_140_a1_oe;
assign ts_local_pe_140_a0_in = address_in[0];
assign ts_local_pe_140_a1_in = address_in[0];

// --- Compiler-generated local PE for BUS address<1>
assign address_out[1] = (ts_local_pe_141_a0_oe & ts_local_pe_141_a0_out ) | (ts_local_pe_141_a1_oe & ts_local_pe_141_a1_out ) | 1'b0;
assign address_oe[1] = ts_local_pe_141_a0_oe | ts_local_pe_141_a1_oe;
assign ts_local_pe_141_a0_in = address_in[1];
assign ts_local_pe_141_a1_in = address_in[1];

// --- Compiler-generated local PE for BUS address<2>
assign address_out[2] = (ts_local_pe_142_a0_oe & ts_local_pe_142_a0_out ) | (ts_local_pe_142_a1_oe & ts_local_pe_142_a1_out ) | 1'b0;
assign address_oe[2] = ts_local_pe_142_a0_oe | ts_local_pe_142_a1_oe;
assign ts_local_pe_142_a0_in = address_in[2];
assign ts_local_pe_142_a1_in = address_in[2];

// --- Compiler-generated local PE for BUS address<3>
assign address_out[3] = (ts_local_pe_143_a0_oe & ts_local_pe_143_a0_out ) | (ts_local_pe_143_a1_oe & ts_local_pe_143_a1_out ) | 1'b0;
assign address_oe[3] = ts_local_pe_143_a0_oe | ts_local_pe_143_a1_oe;
assign ts_local_pe_143_a0_in = address_in[3];
assign ts_local_pe_143_a1_in = address_in[3];

// --- Compiler-generated local PE for BUS address<4>
assign address_out[4] = (ts_local_pe_144_a0_oe & ts_local_pe_144_a0_out ) | (ts_local_pe_144_a1_oe & ts_local_pe_144_a1_out ) | 1'b0;
assign address_oe[4] = ts_local_pe_144_a0_oe | ts_local_pe_144_a1_oe;
assign ts_local_pe_144_a0_in = address_in[4];
assign ts_local_pe_144_a1_in = address_in[4];

// --- Compiler-generated local PE for BUS address<5>
assign address_out[5] = (ts_local_pe_145_a0_oe & ts_local_pe_145_a0_out ) | (ts_local_pe_145_a1_oe & ts_local_pe_145_a1_out ) | 1'b0;
assign address_oe[5] = ts_local_pe_145_a0_oe | ts_local_pe_145_a1_oe;
assign ts_local_pe_145_a0_in = address_in[5];
assign ts_local_pe_145_a1_in = address_in[5];

// --- Compiler-generated local PE for BUS address<6>
assign address_out[6] = (ts_local_pe_146_a0_oe & ts_local_pe_146_a0_out ) | (ts_local_pe_146_a1_oe & ts_local_pe_146_a1_out ) | 1'b0;
assign address_oe[6] = ts_local_pe_146_a0_oe | ts_local_pe_146_a1_oe;
assign ts_local_pe_146_a0_in = address_in[6];
assign ts_local_pe_146_a1_in = address_in[6];

// --- Compiler-generated local PE for BUS address<7>
assign address_out[7] = (ts_local_pe_147_a0_oe & ts_local_pe_147_a0_out ) | (ts_local_pe_147_a1_oe & ts_local_pe_147_a1_out ) | 1'b0;
assign address_oe[7] = ts_local_pe_147_a0_oe | ts_local_pe_147_a1_oe;
assign ts_local_pe_147_a0_in = address_in[7];
assign ts_local_pe_147_a1_in = address_in[7];

// --- Compiler-generated local PE for BUS address<8>
assign address_out[8] = (ts_local_pe_148_a0_oe & ts_local_pe_148_a0_out ) | (ts_local_pe_148_a1_oe & ts_local_pe_148_a1_out ) | 1'b0;
assign address_oe[8] = ts_local_pe_148_a0_oe | ts_local_pe_148_a1_oe;
assign ts_local_pe_148_a0_in = address_in[8];
assign ts_local_pe_148_a1_in = address_in[8];

// --- Compiler-generated local PE for BUS address<9>
assign address_out[9] = (ts_local_pe_149_a0_oe & ts_local_pe_149_a0_out ) | (ts_local_pe_149_a1_oe & ts_local_pe_149_a1_out ) | 1'b0;
assign address_oe[9] = ts_local_pe_149_a0_oe | ts_local_pe_149_a1_oe;
assign ts_local_pe_149_a0_in = address_in[9];
assign ts_local_pe_149_a1_in = address_in[9];

// --- Compiler-generated local PE for BUS address<10>
assign address_out[10] = (ts_local_pe_150_a0_oe & ts_local_pe_150_a0_out ) | (ts_local_pe_150_a1_oe & ts_local_pe_150_a1_out ) | 1'b0;
assign address_oe[10] = ts_local_pe_150_a0_oe | ts_local_pe_150_a1_oe;
assign ts_local_pe_150_a0_in = address_in[10];
assign ts_local_pe_150_a1_in = address_in[10];

// --- Compiler-generated local PE for BUS address<11>
assign address_out[11] = (ts_local_pe_151_a0_oe & ts_local_pe_151_a0_out ) | (ts_local_pe_151_a1_oe & ts_local_pe_151_a1_out ) | 1'b0;
assign address_oe[11] = ts_local_pe_151_a0_oe | ts_local_pe_151_a1_oe;
assign ts_local_pe_151_a0_in = address_in[11];
assign ts_local_pe_151_a1_in = address_in[11];

// --- Compiler-generated local PE for BUS address<12>
assign address_out[12] = (ts_local_pe_152_a0_oe & ts_local_pe_152_a0_out ) | (ts_local_pe_152_a1_oe & ts_local_pe_152_a1_out ) | 1'b0;
assign address_oe[12] = ts_local_pe_152_a0_oe | ts_local_pe_152_a1_oe;
assign ts_local_pe_152_a0_in = address_in[12];
assign ts_local_pe_152_a1_in = address_in[12];

// --- Compiler-generated local PE for BUS address<13>
assign address_out[13] = (ts_local_pe_153_a0_oe & ts_local_pe_153_a0_out ) | (ts_local_pe_153_a1_oe & ts_local_pe_153_a1_out ) | 1'b0;
assign address_oe[13] = ts_local_pe_153_a0_oe | ts_local_pe_153_a1_oe;
assign ts_local_pe_153_a0_in = address_in[13];
assign ts_local_pe_153_a1_in = address_in[13];

// --- Compiler-generated local PE for BUS address<14>
assign address_out[14] = (ts_local_pe_154_a0_oe & ts_local_pe_154_a0_out ) | (ts_local_pe_154_a1_oe & ts_local_pe_154_a1_out ) | 1'b0;
assign address_oe[14] = ts_local_pe_154_a0_oe | ts_local_pe_154_a1_oe;
assign ts_local_pe_154_a0_in = address_in[14];
assign ts_local_pe_154_a1_in = address_in[14];

// --- Compiler-generated local PE for BUS address<15>
assign address_out[15] = (ts_local_pe_155_a0_oe & ts_local_pe_155_a0_out ) | (ts_local_pe_155_a1_oe & ts_local_pe_155_a1_out ) | 1'b0;
assign address_oe[15] = ts_local_pe_155_a0_oe | ts_local_pe_155_a1_oe;
assign ts_local_pe_155_a0_in = address_in[15];
assign ts_local_pe_155_a1_in = address_in[15];

// --- Compiler-generated local PE for BUS address<16>
assign address_out[16] = (ts_local_pe_156_a0_oe & ts_local_pe_156_a0_out ) | (ts_local_pe_156_a1_oe & ts_local_pe_156_a1_out ) | 1'b0;
assign address_oe[16] = ts_local_pe_156_a0_oe | ts_local_pe_156_a1_oe;
assign ts_local_pe_156_a0_in = address_in[16];
assign ts_local_pe_156_a1_in = address_in[16];

// --- Compiler-generated local PE for BUS address<17>
assign address_out[17] = (ts_local_pe_157_a0_oe & ts_local_pe_157_a0_out ) | (ts_local_pe_157_a1_oe & ts_local_pe_157_a1_out ) | 1'b0;
assign address_oe[17] = ts_local_pe_157_a0_oe | ts_local_pe_157_a1_oe;
assign ts_local_pe_157_a0_in = address_in[17];
assign ts_local_pe_157_a1_in = address_in[17];

// --- Compiler-generated local PE for BUS address<18>
assign address_out[18] = (ts_local_pe_158_a0_oe & ts_local_pe_158_a0_out ) | (ts_local_pe_158_a1_oe & ts_local_pe_158_a1_out ) | 1'b0;
assign address_oe[18] = ts_local_pe_158_a0_oe | ts_local_pe_158_a1_oe;
assign ts_local_pe_158_a0_in = address_in[18];
assign ts_local_pe_158_a1_in = address_in[18];

// --- Compiler-generated local PE for BUS address<19>
assign address_out[19] = (ts_local_pe_159_a0_oe & ts_local_pe_159_a0_out ) | (ts_local_pe_159_a1_oe & ts_local_pe_159_a1_out ) | 1'b0;
assign address_oe[19] = ts_local_pe_159_a0_oe | ts_local_pe_159_a1_oe;
assign ts_local_pe_159_a0_in = address_in[19];
assign ts_local_pe_159_a1_in = address_in[19];

// --- Compiler-generated local PE for BUS address<20>
assign address_out[20] = (ts_local_pe_160_a0_oe & ts_local_pe_160_a0_out ) | (ts_local_pe_160_a1_oe & ts_local_pe_160_a1_out ) | 1'b0;
assign address_oe[20] = ts_local_pe_160_a0_oe | ts_local_pe_160_a1_oe;
assign ts_local_pe_160_a0_in = address_in[20];
assign ts_local_pe_160_a1_in = address_in[20];

// --- Compiler-generated local PE for BUS address<21>
assign address_out[21] = (ts_local_pe_161_a0_oe & ts_local_pe_161_a0_out ) | (ts_local_pe_161_a1_oe & ts_local_pe_161_a1_out ) | 1'b0;
assign address_oe[21] = ts_local_pe_161_a0_oe | ts_local_pe_161_a1_oe;
assign ts_local_pe_161_a0_in = address_in[21];
assign ts_local_pe_161_a1_in = address_in[21];

// --- Compiler-generated local PE for BUS address<22>
assign address_out[22] = (ts_local_pe_162_a0_oe & ts_local_pe_162_a0_out ) | (ts_local_pe_162_a1_oe & ts_local_pe_162_a1_out ) | 1'b0;
assign address_oe[22] = ts_local_pe_162_a0_oe | ts_local_pe_162_a1_oe;
assign ts_local_pe_162_a0_in = address_in[22];
assign ts_local_pe_162_a1_in = address_in[22];

// --- Compiler-generated local PE for BUS address<23>
assign address_out[23] = (ts_local_pe_163_a0_oe & ts_local_pe_163_a0_out ) | (ts_local_pe_163_a1_oe & ts_local_pe_163_a1_out ) | 1'b0;
assign address_oe[23] = ts_local_pe_163_a0_oe | ts_local_pe_163_a1_oe;
assign ts_local_pe_163_a0_in = address_in[23];
assign ts_local_pe_163_a1_in = address_in[23];

// --- Compiler-generated local PE for BUS gpu_data<0>
assign gpu_data_out[0] = (ts_local_pe_164_a0_oe & ts_local_pe_164_a0_out ) | (ts_local_pe_164_a1_oe & ts_local_pe_164_a1_out ) | (ts_local_pe_164_a2_oe & ts_local_pe_164_a2_out ) | (ts_local_pe_164_a3_oe & ts_local_pe_164_a3_out ) | (ts_local_pe_164_a4_oe & ts_local_pe_164_a4_out ) | (ts_local_pe_164_a5_oe & ts_local_pe_164_a5_out ) | 1'b0;
assign gpu_data_oe[0] = ts_local_pe_164_a0_oe | ts_local_pe_164_a1_oe | ts_local_pe_164_a2_oe | ts_local_pe_164_a3_oe | ts_local_pe_164_a4_oe | ts_local_pe_164_a5_oe;
assign ts_local_pe_164_a0_in = gpu_data_in[0];
assign ts_local_pe_164_a1_in = gpu_data_in[0];
assign ts_local_pe_164_a2_in = gpu_data_in[0];
assign ts_local_pe_164_a3_in = gpu_data_in[0];
assign ts_local_pe_164_a4_in = gpu_data_in[0];
assign ts_local_pe_164_a5_in = gpu_data_in[0];

// --- Compiler-generated local PE for BUS gpu_data<1>
assign gpu_data_out[1] = (ts_local_pe_165_a0_oe & ts_local_pe_165_a0_out ) | (ts_local_pe_165_a1_oe & ts_local_pe_165_a1_out ) | (ts_local_pe_165_a2_oe & ts_local_pe_165_a2_out ) | (ts_local_pe_165_a3_oe & ts_local_pe_165_a3_out ) | (ts_local_pe_165_a4_oe & ts_local_pe_165_a4_out ) | (ts_local_pe_165_a5_oe & ts_local_pe_165_a5_out ) | 1'b0;
assign gpu_data_oe[1] = ts_local_pe_165_a0_oe | ts_local_pe_165_a1_oe | ts_local_pe_165_a2_oe | ts_local_pe_165_a3_oe | ts_local_pe_165_a4_oe | ts_local_pe_165_a5_oe;
assign ts_local_pe_165_a0_in = gpu_data_in[1];
assign ts_local_pe_165_a1_in = gpu_data_in[1];
assign ts_local_pe_165_a2_in = gpu_data_in[1];
assign ts_local_pe_165_a3_in = gpu_data_in[1];
assign ts_local_pe_165_a4_in = gpu_data_in[1];
assign ts_local_pe_165_a5_in = gpu_data_in[1];

// --- Compiler-generated local PE for BUS gpu_data<2>
assign gpu_data_out[2] = (ts_local_pe_166_a0_oe & ts_local_pe_166_a0_out ) | (ts_local_pe_166_a1_oe & ts_local_pe_166_a1_out ) | (ts_local_pe_166_a2_oe & ts_local_pe_166_a2_out ) | (ts_local_pe_166_a3_oe & ts_local_pe_166_a3_out ) | (ts_local_pe_166_a4_oe & ts_local_pe_166_a4_out ) | (ts_local_pe_166_a5_oe & ts_local_pe_166_a5_out ) | 1'b0;
assign gpu_data_oe[2] = ts_local_pe_166_a0_oe | ts_local_pe_166_a1_oe | ts_local_pe_166_a2_oe | ts_local_pe_166_a3_oe | ts_local_pe_166_a4_oe | ts_local_pe_166_a5_oe;
assign ts_local_pe_166_a0_in = gpu_data_in[2];
assign ts_local_pe_166_a1_in = gpu_data_in[2];
assign ts_local_pe_166_a2_in = gpu_data_in[2];
assign ts_local_pe_166_a3_in = gpu_data_in[2];
assign ts_local_pe_166_a4_in = gpu_data_in[2];
assign ts_local_pe_166_a5_in = gpu_data_in[2];

// --- Compiler-generated local PE for BUS gpu_data<3>
assign gpu_data_out[3] = (ts_local_pe_167_a0_oe & ts_local_pe_167_a0_out ) | (ts_local_pe_167_a1_oe & ts_local_pe_167_a1_out ) | (ts_local_pe_167_a2_oe & ts_local_pe_167_a2_out ) | (ts_local_pe_167_a3_oe & ts_local_pe_167_a3_out ) | (ts_local_pe_167_a4_oe & ts_local_pe_167_a4_out ) | (ts_local_pe_167_a5_oe & ts_local_pe_167_a5_out ) | 1'b0;
assign gpu_data_oe[3] = ts_local_pe_167_a0_oe | ts_local_pe_167_a1_oe | ts_local_pe_167_a2_oe | ts_local_pe_167_a3_oe | ts_local_pe_167_a4_oe | ts_local_pe_167_a5_oe;
assign ts_local_pe_167_a0_in = gpu_data_in[3];
assign ts_local_pe_167_a1_in = gpu_data_in[3];
assign ts_local_pe_167_a2_in = gpu_data_in[3];
assign ts_local_pe_167_a3_in = gpu_data_in[3];
assign ts_local_pe_167_a4_in = gpu_data_in[3];
assign ts_local_pe_167_a5_in = gpu_data_in[3];

// --- Compiler-generated local PE for BUS gpu_data<4>
assign gpu_data_out[4] = (ts_local_pe_168_a0_oe & ts_local_pe_168_a0_out ) | (ts_local_pe_168_a1_oe & ts_local_pe_168_a1_out ) | (ts_local_pe_168_a2_oe & ts_local_pe_168_a2_out ) | (ts_local_pe_168_a3_oe & ts_local_pe_168_a3_out ) | (ts_local_pe_168_a4_oe & ts_local_pe_168_a4_out ) | (ts_local_pe_168_a5_oe & ts_local_pe_168_a5_out ) | 1'b0;
assign gpu_data_oe[4] = ts_local_pe_168_a0_oe | ts_local_pe_168_a1_oe | ts_local_pe_168_a2_oe | ts_local_pe_168_a3_oe | ts_local_pe_168_a4_oe | ts_local_pe_168_a5_oe;
assign ts_local_pe_168_a0_in = gpu_data_in[4];
assign ts_local_pe_168_a1_in = gpu_data_in[4];
assign ts_local_pe_168_a2_in = gpu_data_in[4];
assign ts_local_pe_168_a3_in = gpu_data_in[4];
assign ts_local_pe_168_a4_in = gpu_data_in[4];
assign ts_local_pe_168_a5_in = gpu_data_in[4];

// --- Compiler-generated local PE for BUS gpu_data<5>
assign gpu_data_out[5] = (ts_local_pe_169_a0_oe & ts_local_pe_169_a0_out ) | (ts_local_pe_169_a1_oe & ts_local_pe_169_a1_out ) | (ts_local_pe_169_a2_oe & ts_local_pe_169_a2_out ) | (ts_local_pe_169_a3_oe & ts_local_pe_169_a3_out ) | (ts_local_pe_169_a4_oe & ts_local_pe_169_a4_out ) | (ts_local_pe_169_a5_oe & ts_local_pe_169_a5_out ) | 1'b0;
assign gpu_data_oe[5] = ts_local_pe_169_a0_oe | ts_local_pe_169_a1_oe | ts_local_pe_169_a2_oe | ts_local_pe_169_a3_oe | ts_local_pe_169_a4_oe | ts_local_pe_169_a5_oe;
assign ts_local_pe_169_a0_in = gpu_data_in[5];
assign ts_local_pe_169_a1_in = gpu_data_in[5];
assign ts_local_pe_169_a2_in = gpu_data_in[5];
assign ts_local_pe_169_a3_in = gpu_data_in[5];
assign ts_local_pe_169_a4_in = gpu_data_in[5];
assign ts_local_pe_169_a5_in = gpu_data_in[5];

// --- Compiler-generated local PE for BUS gpu_data<6>
assign gpu_data_out[6] = (ts_local_pe_170_a0_oe & ts_local_pe_170_a0_out ) | (ts_local_pe_170_a1_oe & ts_local_pe_170_a1_out ) | (ts_local_pe_170_a2_oe & ts_local_pe_170_a2_out ) | (ts_local_pe_170_a3_oe & ts_local_pe_170_a3_out ) | (ts_local_pe_170_a4_oe & ts_local_pe_170_a4_out ) | (ts_local_pe_170_a5_oe & ts_local_pe_170_a5_out ) | 1'b0;
assign gpu_data_oe[6] = ts_local_pe_170_a0_oe | ts_local_pe_170_a1_oe | ts_local_pe_170_a2_oe | ts_local_pe_170_a3_oe | ts_local_pe_170_a4_oe | ts_local_pe_170_a5_oe;
assign ts_local_pe_170_a0_in = gpu_data_in[6];
assign ts_local_pe_170_a1_in = gpu_data_in[6];
assign ts_local_pe_170_a2_in = gpu_data_in[6];
assign ts_local_pe_170_a3_in = gpu_data_in[6];
assign ts_local_pe_170_a4_in = gpu_data_in[6];
assign ts_local_pe_170_a5_in = gpu_data_in[6];

// --- Compiler-generated local PE for BUS gpu_data<7>
assign gpu_data_out[7] = (ts_local_pe_171_a0_oe & ts_local_pe_171_a0_out ) | (ts_local_pe_171_a1_oe & ts_local_pe_171_a1_out ) | (ts_local_pe_171_a2_oe & ts_local_pe_171_a2_out ) | (ts_local_pe_171_a3_oe & ts_local_pe_171_a3_out ) | (ts_local_pe_171_a4_oe & ts_local_pe_171_a4_out ) | (ts_local_pe_171_a5_oe & ts_local_pe_171_a5_out ) | 1'b0;
assign gpu_data_oe[7] = ts_local_pe_171_a0_oe | ts_local_pe_171_a1_oe | ts_local_pe_171_a2_oe | ts_local_pe_171_a3_oe | ts_local_pe_171_a4_oe | ts_local_pe_171_a5_oe;
assign ts_local_pe_171_a0_in = gpu_data_in[7];
assign ts_local_pe_171_a1_in = gpu_data_in[7];
assign ts_local_pe_171_a2_in = gpu_data_in[7];
assign ts_local_pe_171_a3_in = gpu_data_in[7];
assign ts_local_pe_171_a4_in = gpu_data_in[7];
assign ts_local_pe_171_a5_in = gpu_data_in[7];

// --- Compiler-generated local PE for BUS gpu_data<8>
assign gpu_data_out[8] = (ts_local_pe_172_a0_oe & ts_local_pe_172_a0_out ) | (ts_local_pe_172_a1_oe & ts_local_pe_172_a1_out ) | (ts_local_pe_172_a2_oe & ts_local_pe_172_a2_out ) | (ts_local_pe_172_a3_oe & ts_local_pe_172_a3_out ) | (ts_local_pe_172_a4_oe & ts_local_pe_172_a4_out ) | (ts_local_pe_172_a5_oe & ts_local_pe_172_a5_out ) | 1'b0;
assign gpu_data_oe[8] = ts_local_pe_172_a0_oe | ts_local_pe_172_a1_oe | ts_local_pe_172_a2_oe | ts_local_pe_172_a3_oe | ts_local_pe_172_a4_oe | ts_local_pe_172_a5_oe;
assign ts_local_pe_172_a0_in = gpu_data_in[8];
assign ts_local_pe_172_a1_in = gpu_data_in[8];
assign ts_local_pe_172_a2_in = gpu_data_in[8];
assign ts_local_pe_172_a3_in = gpu_data_in[8];
assign ts_local_pe_172_a4_in = gpu_data_in[8];
assign ts_local_pe_172_a5_in = gpu_data_in[8];

// --- Compiler-generated local PE for BUS gpu_data<9>
assign gpu_data_out[9] = (ts_local_pe_173_a0_oe & ts_local_pe_173_a0_out ) | (ts_local_pe_173_a1_oe & ts_local_pe_173_a1_out ) | (ts_local_pe_173_a2_oe & ts_local_pe_173_a2_out ) | (ts_local_pe_173_a3_oe & ts_local_pe_173_a3_out ) | (ts_local_pe_173_a4_oe & ts_local_pe_173_a4_out ) | (ts_local_pe_173_a5_oe & ts_local_pe_173_a5_out ) | 1'b0;
assign gpu_data_oe[9] = ts_local_pe_173_a0_oe | ts_local_pe_173_a1_oe | ts_local_pe_173_a2_oe | ts_local_pe_173_a3_oe | ts_local_pe_173_a4_oe | ts_local_pe_173_a5_oe;
assign ts_local_pe_173_a0_in = gpu_data_in[9];
assign ts_local_pe_173_a1_in = gpu_data_in[9];
assign ts_local_pe_173_a2_in = gpu_data_in[9];
assign ts_local_pe_173_a3_in = gpu_data_in[9];
assign ts_local_pe_173_a4_in = gpu_data_in[9];
assign ts_local_pe_173_a5_in = gpu_data_in[9];

// --- Compiler-generated local PE for BUS gpu_data<10>
assign gpu_data_out[10] = (ts_local_pe_174_a0_oe & ts_local_pe_174_a0_out ) | (ts_local_pe_174_a1_oe & ts_local_pe_174_a1_out ) | (ts_local_pe_174_a2_oe & ts_local_pe_174_a2_out ) | (ts_local_pe_174_a3_oe & ts_local_pe_174_a3_out ) | (ts_local_pe_174_a4_oe & ts_local_pe_174_a4_out ) | (ts_local_pe_174_a5_oe & ts_local_pe_174_a5_out ) | 1'b0;
assign gpu_data_oe[10] = ts_local_pe_174_a0_oe | ts_local_pe_174_a1_oe | ts_local_pe_174_a2_oe | ts_local_pe_174_a3_oe | ts_local_pe_174_a4_oe | ts_local_pe_174_a5_oe;
assign ts_local_pe_174_a0_in = gpu_data_in[10];
assign ts_local_pe_174_a1_in = gpu_data_in[10];
assign ts_local_pe_174_a2_in = gpu_data_in[10];
assign ts_local_pe_174_a3_in = gpu_data_in[10];
assign ts_local_pe_174_a4_in = gpu_data_in[10];
assign ts_local_pe_174_a5_in = gpu_data_in[10];

// --- Compiler-generated local PE for BUS gpu_data<11>
assign gpu_data_out[11] = (ts_local_pe_175_a0_oe & ts_local_pe_175_a0_out ) | (ts_local_pe_175_a1_oe & ts_local_pe_175_a1_out ) | (ts_local_pe_175_a2_oe & ts_local_pe_175_a2_out ) | (ts_local_pe_175_a3_oe & ts_local_pe_175_a3_out ) | (ts_local_pe_175_a4_oe & ts_local_pe_175_a4_out ) | (ts_local_pe_175_a5_oe & ts_local_pe_175_a5_out ) | 1'b0;
assign gpu_data_oe[11] = ts_local_pe_175_a0_oe | ts_local_pe_175_a1_oe | ts_local_pe_175_a2_oe | ts_local_pe_175_a3_oe | ts_local_pe_175_a4_oe | ts_local_pe_175_a5_oe;
assign ts_local_pe_175_a0_in = gpu_data_in[11];
assign ts_local_pe_175_a1_in = gpu_data_in[11];
assign ts_local_pe_175_a2_in = gpu_data_in[11];
assign ts_local_pe_175_a3_in = gpu_data_in[11];
assign ts_local_pe_175_a4_in = gpu_data_in[11];
assign ts_local_pe_175_a5_in = gpu_data_in[11];

// --- Compiler-generated local PE for BUS gpu_data<12>
assign gpu_data_out[12] = (ts_local_pe_176_a0_oe & ts_local_pe_176_a0_out ) | (ts_local_pe_176_a1_oe & ts_local_pe_176_a1_out ) | (ts_local_pe_176_a2_oe & ts_local_pe_176_a2_out ) | (ts_local_pe_176_a3_oe & ts_local_pe_176_a3_out ) | (ts_local_pe_176_a4_oe & ts_local_pe_176_a4_out ) | (ts_local_pe_176_a5_oe & ts_local_pe_176_a5_out ) | 1'b0;
assign gpu_data_oe[12] = ts_local_pe_176_a0_oe | ts_local_pe_176_a1_oe | ts_local_pe_176_a2_oe | ts_local_pe_176_a3_oe | ts_local_pe_176_a4_oe | ts_local_pe_176_a5_oe;
assign ts_local_pe_176_a0_in = gpu_data_in[12];
assign ts_local_pe_176_a1_in = gpu_data_in[12];
assign ts_local_pe_176_a2_in = gpu_data_in[12];
assign ts_local_pe_176_a3_in = gpu_data_in[12];
assign ts_local_pe_176_a4_in = gpu_data_in[12];
assign ts_local_pe_176_a5_in = gpu_data_in[12];

// --- Compiler-generated local PE for BUS gpu_data<13>
assign gpu_data_out[13] = (ts_local_pe_177_a0_oe & ts_local_pe_177_a0_out ) | (ts_local_pe_177_a1_oe & ts_local_pe_177_a1_out ) | (ts_local_pe_177_a2_oe & ts_local_pe_177_a2_out ) | (ts_local_pe_177_a3_oe & ts_local_pe_177_a3_out ) | (ts_local_pe_177_a4_oe & ts_local_pe_177_a4_out ) | (ts_local_pe_177_a5_oe & ts_local_pe_177_a5_out ) | 1'b0;
assign gpu_data_oe[13] = ts_local_pe_177_a0_oe | ts_local_pe_177_a1_oe | ts_local_pe_177_a2_oe | ts_local_pe_177_a3_oe | ts_local_pe_177_a4_oe | ts_local_pe_177_a5_oe;
assign ts_local_pe_177_a0_in = gpu_data_in[13];
assign ts_local_pe_177_a1_in = gpu_data_in[13];
assign ts_local_pe_177_a2_in = gpu_data_in[13];
assign ts_local_pe_177_a3_in = gpu_data_in[13];
assign ts_local_pe_177_a4_in = gpu_data_in[13];
assign ts_local_pe_177_a5_in = gpu_data_in[13];

// --- Compiler-generated local PE for BUS gpu_data<14>
assign gpu_data_out[14] = (ts_local_pe_178_a0_oe & ts_local_pe_178_a0_out ) | (ts_local_pe_178_a1_oe & ts_local_pe_178_a1_out ) | (ts_local_pe_178_a2_oe & ts_local_pe_178_a2_out ) | (ts_local_pe_178_a3_oe & ts_local_pe_178_a3_out ) | (ts_local_pe_178_a4_oe & ts_local_pe_178_a4_out ) | (ts_local_pe_178_a5_oe & ts_local_pe_178_a5_out ) | 1'b0;
assign gpu_data_oe[14] = ts_local_pe_178_a0_oe | ts_local_pe_178_a1_oe | ts_local_pe_178_a2_oe | ts_local_pe_178_a3_oe | ts_local_pe_178_a4_oe | ts_local_pe_178_a5_oe;
assign ts_local_pe_178_a0_in = gpu_data_in[14];
assign ts_local_pe_178_a1_in = gpu_data_in[14];
assign ts_local_pe_178_a2_in = gpu_data_in[14];
assign ts_local_pe_178_a3_in = gpu_data_in[14];
assign ts_local_pe_178_a4_in = gpu_data_in[14];
assign ts_local_pe_178_a5_in = gpu_data_in[14];

// --- Compiler-generated local PE for BUS gpu_data<15>
assign gpu_data_out[15] = (ts_local_pe_179_a0_oe & ts_local_pe_179_a0_out ) | (ts_local_pe_179_a1_oe & ts_local_pe_179_a1_out ) | (ts_local_pe_179_a2_oe & ts_local_pe_179_a2_out ) | (ts_local_pe_179_a3_oe & ts_local_pe_179_a3_out ) | (ts_local_pe_179_a4_oe & ts_local_pe_179_a4_out ) | (ts_local_pe_179_a5_oe & ts_local_pe_179_a5_out ) | 1'b0;
assign gpu_data_oe[15] = ts_local_pe_179_a0_oe | ts_local_pe_179_a1_oe | ts_local_pe_179_a2_oe | ts_local_pe_179_a3_oe | ts_local_pe_179_a4_oe | ts_local_pe_179_a5_oe;
assign ts_local_pe_179_a0_in = gpu_data_in[15];
assign ts_local_pe_179_a1_in = gpu_data_in[15];
assign ts_local_pe_179_a2_in = gpu_data_in[15];
assign ts_local_pe_179_a3_in = gpu_data_in[15];
assign ts_local_pe_179_a4_in = gpu_data_in[15];
assign ts_local_pe_179_a5_in = gpu_data_in[15];

// --- Compiler-generated local PE for BUS gpu_data<16>
assign gpu_data_out[16] = (ts_local_pe_180_a0_oe & ts_local_pe_180_a0_out ) | (ts_local_pe_180_a1_oe & ts_local_pe_180_a1_out ) | (ts_local_pe_180_a2_oe & ts_local_pe_180_a2_out ) | (ts_local_pe_180_a3_oe & ts_local_pe_180_a3_out ) | (ts_local_pe_180_a4_oe & ts_local_pe_180_a4_out ) | (ts_local_pe_180_a5_oe & ts_local_pe_180_a5_out ) | 1'b0;
assign gpu_data_oe[16] = ts_local_pe_180_a0_oe | ts_local_pe_180_a1_oe | ts_local_pe_180_a2_oe | ts_local_pe_180_a3_oe | ts_local_pe_180_a4_oe | ts_local_pe_180_a5_oe;
assign ts_local_pe_180_a0_in = gpu_data_in[16];
assign ts_local_pe_180_a1_in = gpu_data_in[16];
assign ts_local_pe_180_a2_in = gpu_data_in[16];
assign ts_local_pe_180_a3_in = gpu_data_in[16];
assign ts_local_pe_180_a4_in = gpu_data_in[16];
assign ts_local_pe_180_a5_in = gpu_data_in[16];

// --- Compiler-generated local PE for BUS gpu_data<17>
assign gpu_data_out[17] = (ts_local_pe_181_a0_oe & ts_local_pe_181_a0_out ) | (ts_local_pe_181_a1_oe & ts_local_pe_181_a1_out ) | (ts_local_pe_181_a2_oe & ts_local_pe_181_a2_out ) | (ts_local_pe_181_a3_oe & ts_local_pe_181_a3_out ) | (ts_local_pe_181_a4_oe & ts_local_pe_181_a4_out ) | (ts_local_pe_181_a5_oe & ts_local_pe_181_a5_out ) | 1'b0;
assign gpu_data_oe[17] = ts_local_pe_181_a0_oe | ts_local_pe_181_a1_oe | ts_local_pe_181_a2_oe | ts_local_pe_181_a3_oe | ts_local_pe_181_a4_oe | ts_local_pe_181_a5_oe;
assign ts_local_pe_181_a0_in = gpu_data_in[17];
assign ts_local_pe_181_a1_in = gpu_data_in[17];
assign ts_local_pe_181_a2_in = gpu_data_in[17];
assign ts_local_pe_181_a3_in = gpu_data_in[17];
assign ts_local_pe_181_a4_in = gpu_data_in[17];
assign ts_local_pe_181_a5_in = gpu_data_in[17];

// --- Compiler-generated local PE for BUS gpu_data<18>
assign gpu_data_out[18] = (ts_local_pe_182_a0_oe & ts_local_pe_182_a0_out ) | (ts_local_pe_182_a1_oe & ts_local_pe_182_a1_out ) | (ts_local_pe_182_a2_oe & ts_local_pe_182_a2_out ) | (ts_local_pe_182_a3_oe & ts_local_pe_182_a3_out ) | (ts_local_pe_182_a4_oe & ts_local_pe_182_a4_out ) | (ts_local_pe_182_a5_oe & ts_local_pe_182_a5_out ) | 1'b0;
assign gpu_data_oe[18] = ts_local_pe_182_a0_oe | ts_local_pe_182_a1_oe | ts_local_pe_182_a2_oe | ts_local_pe_182_a3_oe | ts_local_pe_182_a4_oe | ts_local_pe_182_a5_oe;
assign ts_local_pe_182_a0_in = gpu_data_in[18];
assign ts_local_pe_182_a1_in = gpu_data_in[18];
assign ts_local_pe_182_a2_in = gpu_data_in[18];
assign ts_local_pe_182_a3_in = gpu_data_in[18];
assign ts_local_pe_182_a4_in = gpu_data_in[18];
assign ts_local_pe_182_a5_in = gpu_data_in[18];

// --- Compiler-generated local PE for BUS gpu_data<19>
assign gpu_data_out[19] = (ts_local_pe_183_a0_oe & ts_local_pe_183_a0_out ) | (ts_local_pe_183_a1_oe & ts_local_pe_183_a1_out ) | (ts_local_pe_183_a2_oe & ts_local_pe_183_a2_out ) | (ts_local_pe_183_a3_oe & ts_local_pe_183_a3_out ) | (ts_local_pe_183_a4_oe & ts_local_pe_183_a4_out ) | (ts_local_pe_183_a5_oe & ts_local_pe_183_a5_out ) | 1'b0;
assign gpu_data_oe[19] = ts_local_pe_183_a0_oe | ts_local_pe_183_a1_oe | ts_local_pe_183_a2_oe | ts_local_pe_183_a3_oe | ts_local_pe_183_a4_oe | ts_local_pe_183_a5_oe;
assign ts_local_pe_183_a0_in = gpu_data_in[19];
assign ts_local_pe_183_a1_in = gpu_data_in[19];
assign ts_local_pe_183_a2_in = gpu_data_in[19];
assign ts_local_pe_183_a3_in = gpu_data_in[19];
assign ts_local_pe_183_a4_in = gpu_data_in[19];
assign ts_local_pe_183_a5_in = gpu_data_in[19];

// --- Compiler-generated local PE for BUS gpu_data<20>
assign gpu_data_out[20] = (ts_local_pe_184_a0_oe & ts_local_pe_184_a0_out ) | (ts_local_pe_184_a1_oe & ts_local_pe_184_a1_out ) | (ts_local_pe_184_a2_oe & ts_local_pe_184_a2_out ) | (ts_local_pe_184_a3_oe & ts_local_pe_184_a3_out ) | (ts_local_pe_184_a4_oe & ts_local_pe_184_a4_out ) | (ts_local_pe_184_a5_oe & ts_local_pe_184_a5_out ) | 1'b0;
assign gpu_data_oe[20] = ts_local_pe_184_a0_oe | ts_local_pe_184_a1_oe | ts_local_pe_184_a2_oe | ts_local_pe_184_a3_oe | ts_local_pe_184_a4_oe | ts_local_pe_184_a5_oe;
assign ts_local_pe_184_a0_in = gpu_data_in[20];
assign ts_local_pe_184_a1_in = gpu_data_in[20];
assign ts_local_pe_184_a2_in = gpu_data_in[20];
assign ts_local_pe_184_a3_in = gpu_data_in[20];
assign ts_local_pe_184_a4_in = gpu_data_in[20];
assign ts_local_pe_184_a5_in = gpu_data_in[20];

// --- Compiler-generated local PE for BUS gpu_data<21>
assign gpu_data_out[21] = (ts_local_pe_185_a0_oe & ts_local_pe_185_a0_out ) | (ts_local_pe_185_a1_oe & ts_local_pe_185_a1_out ) | (ts_local_pe_185_a2_oe & ts_local_pe_185_a2_out ) | (ts_local_pe_185_a3_oe & ts_local_pe_185_a3_out ) | (ts_local_pe_185_a4_oe & ts_local_pe_185_a4_out ) | (ts_local_pe_185_a5_oe & ts_local_pe_185_a5_out ) | 1'b0;
assign gpu_data_oe[21] = ts_local_pe_185_a0_oe | ts_local_pe_185_a1_oe | ts_local_pe_185_a2_oe | ts_local_pe_185_a3_oe | ts_local_pe_185_a4_oe | ts_local_pe_185_a5_oe;
assign ts_local_pe_185_a0_in = gpu_data_in[21];
assign ts_local_pe_185_a1_in = gpu_data_in[21];
assign ts_local_pe_185_a2_in = gpu_data_in[21];
assign ts_local_pe_185_a3_in = gpu_data_in[21];
assign ts_local_pe_185_a4_in = gpu_data_in[21];
assign ts_local_pe_185_a5_in = gpu_data_in[21];

// --- Compiler-generated local PE for BUS gpu_data<22>
assign gpu_data_out[22] = (ts_local_pe_186_a0_oe & ts_local_pe_186_a0_out ) | (ts_local_pe_186_a1_oe & ts_local_pe_186_a1_out ) | (ts_local_pe_186_a2_oe & ts_local_pe_186_a2_out ) | (ts_local_pe_186_a3_oe & ts_local_pe_186_a3_out ) | (ts_local_pe_186_a4_oe & ts_local_pe_186_a4_out ) | (ts_local_pe_186_a5_oe & ts_local_pe_186_a5_out ) | 1'b0;
assign gpu_data_oe[22] = ts_local_pe_186_a0_oe | ts_local_pe_186_a1_oe | ts_local_pe_186_a2_oe | ts_local_pe_186_a3_oe | ts_local_pe_186_a4_oe | ts_local_pe_186_a5_oe;
assign ts_local_pe_186_a0_in = gpu_data_in[22];
assign ts_local_pe_186_a1_in = gpu_data_in[22];
assign ts_local_pe_186_a2_in = gpu_data_in[22];
assign ts_local_pe_186_a3_in = gpu_data_in[22];
assign ts_local_pe_186_a4_in = gpu_data_in[22];
assign ts_local_pe_186_a5_in = gpu_data_in[22];

// --- Compiler-generated local PE for BUS gpu_data<23>
assign gpu_data_out[23] = (ts_local_pe_187_a0_oe & ts_local_pe_187_a0_out ) | (ts_local_pe_187_a1_oe & ts_local_pe_187_a1_out ) | (ts_local_pe_187_a2_oe & ts_local_pe_187_a2_out ) | (ts_local_pe_187_a3_oe & ts_local_pe_187_a3_out ) | (ts_local_pe_187_a4_oe & ts_local_pe_187_a4_out ) | (ts_local_pe_187_a5_oe & ts_local_pe_187_a5_out ) | 1'b0;
assign gpu_data_oe[23] = ts_local_pe_187_a0_oe | ts_local_pe_187_a1_oe | ts_local_pe_187_a2_oe | ts_local_pe_187_a3_oe | ts_local_pe_187_a4_oe | ts_local_pe_187_a5_oe;
assign ts_local_pe_187_a0_in = gpu_data_in[23];
assign ts_local_pe_187_a1_in = gpu_data_in[23];
assign ts_local_pe_187_a2_in = gpu_data_in[23];
assign ts_local_pe_187_a3_in = gpu_data_in[23];
assign ts_local_pe_187_a4_in = gpu_data_in[23];
assign ts_local_pe_187_a5_in = gpu_data_in[23];

// --- Compiler-generated local PE for BUS gpu_data<24>
assign gpu_data_out[24] = (ts_local_pe_188_a0_oe & ts_local_pe_188_a0_out ) | (ts_local_pe_188_a1_oe & ts_local_pe_188_a1_out ) | (ts_local_pe_188_a2_oe & ts_local_pe_188_a2_out ) | (ts_local_pe_188_a3_oe & ts_local_pe_188_a3_out ) | (ts_local_pe_188_a4_oe & ts_local_pe_188_a4_out ) | (ts_local_pe_188_a5_oe & ts_local_pe_188_a5_out ) | 1'b0;
assign gpu_data_oe[24] = ts_local_pe_188_a0_oe | ts_local_pe_188_a1_oe | ts_local_pe_188_a2_oe | ts_local_pe_188_a3_oe | ts_local_pe_188_a4_oe | ts_local_pe_188_a5_oe;
assign ts_local_pe_188_a0_in = gpu_data_in[24];
assign ts_local_pe_188_a1_in = gpu_data_in[24];
assign ts_local_pe_188_a2_in = gpu_data_in[24];
assign ts_local_pe_188_a3_in = gpu_data_in[24];
assign ts_local_pe_188_a4_in = gpu_data_in[24];
assign ts_local_pe_188_a5_in = gpu_data_in[24];

// --- Compiler-generated local PE for BUS gpu_data<25>
assign gpu_data_out[25] = (ts_local_pe_189_a0_oe & ts_local_pe_189_a0_out ) | (ts_local_pe_189_a1_oe & ts_local_pe_189_a1_out ) | (ts_local_pe_189_a2_oe & ts_local_pe_189_a2_out ) | (ts_local_pe_189_a3_oe & ts_local_pe_189_a3_out ) | (ts_local_pe_189_a4_oe & ts_local_pe_189_a4_out ) | (ts_local_pe_189_a5_oe & ts_local_pe_189_a5_out ) | 1'b0;
assign gpu_data_oe[25] = ts_local_pe_189_a0_oe | ts_local_pe_189_a1_oe | ts_local_pe_189_a2_oe | ts_local_pe_189_a3_oe | ts_local_pe_189_a4_oe | ts_local_pe_189_a5_oe;
assign ts_local_pe_189_a0_in = gpu_data_in[25];
assign ts_local_pe_189_a1_in = gpu_data_in[25];
assign ts_local_pe_189_a2_in = gpu_data_in[25];
assign ts_local_pe_189_a3_in = gpu_data_in[25];
assign ts_local_pe_189_a4_in = gpu_data_in[25];
assign ts_local_pe_189_a5_in = gpu_data_in[25];

// --- Compiler-generated local PE for BUS gpu_data<26>
assign gpu_data_out[26] = (ts_local_pe_190_a0_oe & ts_local_pe_190_a0_out ) | (ts_local_pe_190_a1_oe & ts_local_pe_190_a1_out ) | (ts_local_pe_190_a2_oe & ts_local_pe_190_a2_out ) | (ts_local_pe_190_a3_oe & ts_local_pe_190_a3_out ) | (ts_local_pe_190_a4_oe & ts_local_pe_190_a4_out ) | (ts_local_pe_190_a5_oe & ts_local_pe_190_a5_out ) | 1'b0;
assign gpu_data_oe[26] = ts_local_pe_190_a0_oe | ts_local_pe_190_a1_oe | ts_local_pe_190_a2_oe | ts_local_pe_190_a3_oe | ts_local_pe_190_a4_oe | ts_local_pe_190_a5_oe;
assign ts_local_pe_190_a0_in = gpu_data_in[26];
assign ts_local_pe_190_a1_in = gpu_data_in[26];
assign ts_local_pe_190_a2_in = gpu_data_in[26];
assign ts_local_pe_190_a3_in = gpu_data_in[26];
assign ts_local_pe_190_a4_in = gpu_data_in[26];
assign ts_local_pe_190_a5_in = gpu_data_in[26];

// --- Compiler-generated local PE for BUS gpu_data<27>
assign gpu_data_out[27] = (ts_local_pe_191_a0_oe & ts_local_pe_191_a0_out ) | (ts_local_pe_191_a1_oe & ts_local_pe_191_a1_out ) | (ts_local_pe_191_a2_oe & ts_local_pe_191_a2_out ) | (ts_local_pe_191_a3_oe & ts_local_pe_191_a3_out ) | (ts_local_pe_191_a4_oe & ts_local_pe_191_a4_out ) | (ts_local_pe_191_a5_oe & ts_local_pe_191_a5_out ) | 1'b0;
assign gpu_data_oe[27] = ts_local_pe_191_a0_oe | ts_local_pe_191_a1_oe | ts_local_pe_191_a2_oe | ts_local_pe_191_a3_oe | ts_local_pe_191_a4_oe | ts_local_pe_191_a5_oe;
assign ts_local_pe_191_a0_in = gpu_data_in[27];
assign ts_local_pe_191_a1_in = gpu_data_in[27];
assign ts_local_pe_191_a2_in = gpu_data_in[27];
assign ts_local_pe_191_a3_in = gpu_data_in[27];
assign ts_local_pe_191_a4_in = gpu_data_in[27];
assign ts_local_pe_191_a5_in = gpu_data_in[27];

// --- Compiler-generated local PE for BUS gpu_data<28>
assign gpu_data_out[28] = (ts_local_pe_192_a0_oe & ts_local_pe_192_a0_out ) | (ts_local_pe_192_a1_oe & ts_local_pe_192_a1_out ) | (ts_local_pe_192_a2_oe & ts_local_pe_192_a2_out ) | (ts_local_pe_192_a3_oe & ts_local_pe_192_a3_out ) | (ts_local_pe_192_a4_oe & ts_local_pe_192_a4_out ) | (ts_local_pe_192_a5_oe & ts_local_pe_192_a5_out ) | 1'b0;
assign gpu_data_oe[28] = ts_local_pe_192_a0_oe | ts_local_pe_192_a1_oe | ts_local_pe_192_a2_oe | ts_local_pe_192_a3_oe | ts_local_pe_192_a4_oe | ts_local_pe_192_a5_oe;
assign ts_local_pe_192_a0_in = gpu_data_in[28];
assign ts_local_pe_192_a1_in = gpu_data_in[28];
assign ts_local_pe_192_a2_in = gpu_data_in[28];
assign ts_local_pe_192_a3_in = gpu_data_in[28];
assign ts_local_pe_192_a4_in = gpu_data_in[28];
assign ts_local_pe_192_a5_in = gpu_data_in[28];

// --- Compiler-generated local PE for BUS gpu_data<29>
assign gpu_data_out[29] = (ts_local_pe_193_a0_oe & ts_local_pe_193_a0_out ) | (ts_local_pe_193_a1_oe & ts_local_pe_193_a1_out ) | (ts_local_pe_193_a2_oe & ts_local_pe_193_a2_out ) | (ts_local_pe_193_a3_oe & ts_local_pe_193_a3_out ) | (ts_local_pe_193_a4_oe & ts_local_pe_193_a4_out ) | (ts_local_pe_193_a5_oe & ts_local_pe_193_a5_out ) | 1'b0;
assign gpu_data_oe[29] = ts_local_pe_193_a0_oe | ts_local_pe_193_a1_oe | ts_local_pe_193_a2_oe | ts_local_pe_193_a3_oe | ts_local_pe_193_a4_oe | ts_local_pe_193_a5_oe;
assign ts_local_pe_193_a0_in = gpu_data_in[29];
assign ts_local_pe_193_a1_in = gpu_data_in[29];
assign ts_local_pe_193_a2_in = gpu_data_in[29];
assign ts_local_pe_193_a3_in = gpu_data_in[29];
assign ts_local_pe_193_a4_in = gpu_data_in[29];
assign ts_local_pe_193_a5_in = gpu_data_in[29];

// --- Compiler-generated local PE for BUS gpu_data<30>
assign gpu_data_out[30] = (ts_local_pe_194_a0_oe & ts_local_pe_194_a0_out ) | (ts_local_pe_194_a1_oe & ts_local_pe_194_a1_out ) | (ts_local_pe_194_a2_oe & ts_local_pe_194_a2_out ) | (ts_local_pe_194_a3_oe & ts_local_pe_194_a3_out ) | (ts_local_pe_194_a4_oe & ts_local_pe_194_a4_out ) | (ts_local_pe_194_a5_oe & ts_local_pe_194_a5_out ) | 1'b0;
assign gpu_data_oe[30] = ts_local_pe_194_a0_oe | ts_local_pe_194_a1_oe | ts_local_pe_194_a2_oe | ts_local_pe_194_a3_oe | ts_local_pe_194_a4_oe | ts_local_pe_194_a5_oe;
assign ts_local_pe_194_a0_in = gpu_data_in[30];
assign ts_local_pe_194_a1_in = gpu_data_in[30];
assign ts_local_pe_194_a2_in = gpu_data_in[30];
assign ts_local_pe_194_a3_in = gpu_data_in[30];
assign ts_local_pe_194_a4_in = gpu_data_in[30];
assign ts_local_pe_194_a5_in = gpu_data_in[30];

// --- Compiler-generated local PE for BUS gpu_data<31>
assign gpu_data_out[31] = (ts_local_pe_195_a0_oe & ts_local_pe_195_a0_out ) | (ts_local_pe_195_a1_oe & ts_local_pe_195_a1_out ) | (ts_local_pe_195_a2_oe & ts_local_pe_195_a2_out ) | (ts_local_pe_195_a3_oe & ts_local_pe_195_a3_out ) | (ts_local_pe_195_a4_oe & ts_local_pe_195_a4_out ) | (ts_local_pe_195_a5_oe & ts_local_pe_195_a5_out ) | 1'b0;
assign gpu_data_oe[31] = ts_local_pe_195_a0_oe | ts_local_pe_195_a1_oe | ts_local_pe_195_a2_oe | ts_local_pe_195_a3_oe | ts_local_pe_195_a4_oe | ts_local_pe_195_a5_oe;
assign ts_local_pe_195_a0_in = gpu_data_in[31];
assign ts_local_pe_195_a1_in = gpu_data_in[31];
assign ts_local_pe_195_a2_in = gpu_data_in[31];
assign ts_local_pe_195_a3_in = gpu_data_in[31];
assign ts_local_pe_195_a4_in = gpu_data_in[31];
assign ts_local_pe_195_a5_in = gpu_data_in[31];

// --- Compiler-generated local PE for BUS gpu_dout[0]
assign gpu_dout_0_out = (ts_local_pe_196_a0_oe & ts_local_pe_196_a0_out ) | (ts_local_pe_196_a1_oe & ts_local_pe_196_a1_out ) | (ts_local_pe_196_a2_oe & ts_local_pe_196_a2_out ) | 1'b0;
assign gpu_dout_0_oe = ts_local_pe_196_a0_oe | ts_local_pe_196_a1_oe | ts_local_pe_196_a2_oe;
assign ts_local_pe_196_a0_in = gpu_dout_0_in;
assign ts_local_pe_196_a1_in = gpu_dout_0_in;
assign ts_local_pe_196_a2_in = gpu_dout_0_in;

// --- Compiler-generated local PE for BUS gpu_dout[1]
assign gpu_dout_1_out = (ts_local_pe_197_a0_oe & ts_local_pe_197_a0_out ) | (ts_local_pe_197_a1_oe & ts_local_pe_197_a1_out ) | (ts_local_pe_197_a2_oe & ts_local_pe_197_a2_out ) | 1'b0;
assign gpu_dout_1_oe = ts_local_pe_197_a0_oe | ts_local_pe_197_a1_oe | ts_local_pe_197_a2_oe;
assign ts_local_pe_197_a0_in = gpu_dout_1_in;
assign ts_local_pe_197_a1_in = gpu_dout_1_in;
assign ts_local_pe_197_a2_in = gpu_dout_1_in;

// --- Compiler-generated local PE for BUS gpu_dout[2]
assign gpu_dout_2_out = (ts_local_pe_198_a0_oe & ts_local_pe_198_a0_out ) | (ts_local_pe_198_a1_oe & ts_local_pe_198_a1_out ) | (ts_local_pe_198_a2_oe & ts_local_pe_198_a2_out ) | 1'b0;
assign gpu_dout_2_oe = ts_local_pe_198_a0_oe | ts_local_pe_198_a1_oe | ts_local_pe_198_a2_oe;
assign ts_local_pe_198_a0_in = gpu_dout_2_in;
assign ts_local_pe_198_a1_in = gpu_dout_2_in;
assign ts_local_pe_198_a2_in = gpu_dout_2_in;

// --- Compiler-generated local PE for BUS gpu_dout[3]
assign gpu_dout_3_out = (ts_local_pe_199_a0_oe & ts_local_pe_199_a0_out ) | (ts_local_pe_199_a1_oe & ts_local_pe_199_a1_out ) | (ts_local_pe_199_a2_oe & ts_local_pe_199_a2_out ) | 1'b0;
assign gpu_dout_3_oe = ts_local_pe_199_a0_oe | ts_local_pe_199_a1_oe | ts_local_pe_199_a2_oe;
assign ts_local_pe_199_a0_in = gpu_dout_3_in;
assign ts_local_pe_199_a1_in = gpu_dout_3_in;
assign ts_local_pe_199_a2_in = gpu_dout_3_in;

// --- Compiler-generated local PE for BUS gpu_dout[4]
assign gpu_dout_4_out = (ts_local_pe_200_a0_oe & ts_local_pe_200_a0_out ) | (ts_local_pe_200_a1_oe & ts_local_pe_200_a1_out ) | (ts_local_pe_200_a2_oe & ts_local_pe_200_a2_out ) | 1'b0;
assign gpu_dout_4_oe = ts_local_pe_200_a0_oe | ts_local_pe_200_a1_oe | ts_local_pe_200_a2_oe;
assign ts_local_pe_200_a0_in = gpu_dout_4_in;
assign ts_local_pe_200_a1_in = gpu_dout_4_in;
assign ts_local_pe_200_a2_in = gpu_dout_4_in;

// --- Compiler-generated local PE for BUS gpu_dout[5]
assign gpu_dout_5_out = (ts_local_pe_201_a0_oe & ts_local_pe_201_a0_out ) | (ts_local_pe_201_a1_oe & ts_local_pe_201_a1_out ) | (ts_local_pe_201_a2_oe & ts_local_pe_201_a2_out ) | 1'b0;
assign gpu_dout_5_oe = ts_local_pe_201_a0_oe | ts_local_pe_201_a1_oe | ts_local_pe_201_a2_oe;
assign ts_local_pe_201_a0_in = gpu_dout_5_in;
assign ts_local_pe_201_a1_in = gpu_dout_5_in;
assign ts_local_pe_201_a2_in = gpu_dout_5_in;

// --- Compiler-generated local PE for BUS gpu_dout[6]
assign gpu_dout_6_out = (ts_local_pe_202_a0_oe & ts_local_pe_202_a0_out ) | (ts_local_pe_202_a1_oe & ts_local_pe_202_a1_out ) | 1'b0;
assign gpu_dout_6_oe = ts_local_pe_202_a0_oe | ts_local_pe_202_a1_oe;
assign ts_local_pe_202_a0_in = gpu_dout_6_in;
assign ts_local_pe_202_a1_in = gpu_dout_6_in;

// --- Compiler-generated local PE for BUS gpu_dout[7]
assign gpu_dout_7_out = (ts_local_pe_203_a0_oe & ts_local_pe_203_a0_out ) | (ts_local_pe_203_a1_oe & ts_local_pe_203_a1_out ) | 1'b0;
assign gpu_dout_7_oe = ts_local_pe_203_a0_oe | ts_local_pe_203_a1_oe;
assign ts_local_pe_203_a0_in = gpu_dout_7_in;
assign ts_local_pe_203_a1_in = gpu_dout_7_in;

// --- Compiler-generated local PE for BUS gpu_dout[8]
assign gpu_dout_8_out = (ts_local_pe_204_a0_oe & ts_local_pe_204_a0_out ) | (ts_local_pe_204_a1_oe & ts_local_pe_204_a1_out ) | 1'b0;
assign gpu_dout_8_oe = ts_local_pe_204_a0_oe | ts_local_pe_204_a1_oe;
assign ts_local_pe_204_a0_in = gpu_dout_8_in;
assign ts_local_pe_204_a1_in = gpu_dout_8_in;

// --- Compiler-generated local PE for BUS gpu_dout[9]
assign gpu_dout_9_out = (ts_local_pe_205_a0_oe & ts_local_pe_205_a0_out ) | (ts_local_pe_205_a1_oe & ts_local_pe_205_a1_out ) | 1'b0;
assign gpu_dout_9_oe = ts_local_pe_205_a0_oe | ts_local_pe_205_a1_oe;
assign ts_local_pe_205_a0_in = gpu_dout_9_in;
assign ts_local_pe_205_a1_in = gpu_dout_9_in;

// --- Compiler-generated local PE for BUS gpu_dout[10]
assign gpu_dout_10_out = (ts_local_pe_206_a0_oe & ts_local_pe_206_a0_out ) | (ts_local_pe_206_a1_oe & ts_local_pe_206_a1_out ) | 1'b0;
assign gpu_dout_10_oe = ts_local_pe_206_a0_oe | ts_local_pe_206_a1_oe;
assign ts_local_pe_206_a0_in = gpu_dout_10_in;
assign ts_local_pe_206_a1_in = gpu_dout_10_in;

// --- Compiler-generated local PE for BUS gpu_dout[11]
assign gpu_dout_11_out = (ts_local_pe_207_a0_oe & ts_local_pe_207_a0_out ) | (ts_local_pe_207_a1_oe & ts_local_pe_207_a1_out ) | (ts_local_pe_207_a2_oe & ts_local_pe_207_a2_out ) | 1'b0;
assign gpu_dout_11_oe = ts_local_pe_207_a0_oe | ts_local_pe_207_a1_oe | ts_local_pe_207_a2_oe;
assign ts_local_pe_207_a0_in = gpu_dout_11_in;
assign ts_local_pe_207_a1_in = gpu_dout_11_in;
assign ts_local_pe_207_a2_in = gpu_dout_11_in;

// --- Compiler-generated local PE for BUS gpu_dout[12]
assign gpu_dout_12_out = (ts_local_pe_208_a0_oe & ts_local_pe_208_a0_out ) | (ts_local_pe_208_a1_oe & ts_local_pe_208_a1_out ) | (ts_local_pe_208_a2_oe & ts_local_pe_208_a2_out ) | 1'b0;
assign gpu_dout_12_oe = ts_local_pe_208_a0_oe | ts_local_pe_208_a1_oe | ts_local_pe_208_a2_oe;
assign ts_local_pe_208_a0_in = gpu_dout_12_in;
assign ts_local_pe_208_a1_in = gpu_dout_12_in;
assign ts_local_pe_208_a2_in = gpu_dout_12_in;

// --- Compiler-generated local PE for BUS gpu_dout[13]
assign gpu_dout_13_out = (ts_local_pe_209_a0_oe & ts_local_pe_209_a0_out ) | (ts_local_pe_209_a1_oe & ts_local_pe_209_a1_out ) | (ts_local_pe_209_a2_oe & ts_local_pe_209_a2_out ) | 1'b0;
assign gpu_dout_13_oe = ts_local_pe_209_a0_oe | ts_local_pe_209_a1_oe | ts_local_pe_209_a2_oe;
assign ts_local_pe_209_a0_in = gpu_dout_13_in;
assign ts_local_pe_209_a1_in = gpu_dout_13_in;
assign ts_local_pe_209_a2_in = gpu_dout_13_in;

// --- Compiler-generated local PE for BUS gpu_dout[14]
assign gpu_dout_14_out = (ts_local_pe_210_a0_oe & ts_local_pe_210_a0_out ) | (ts_local_pe_210_a1_oe & ts_local_pe_210_a1_out ) | (ts_local_pe_210_a2_oe & ts_local_pe_210_a2_out ) | 1'b0;
assign gpu_dout_14_oe = ts_local_pe_210_a0_oe | ts_local_pe_210_a1_oe | ts_local_pe_210_a2_oe;
assign ts_local_pe_210_a0_in = gpu_dout_14_in;
assign ts_local_pe_210_a1_in = gpu_dout_14_in;
assign ts_local_pe_210_a2_in = gpu_dout_14_in;

// --- Compiler-generated local PE for BUS gpu_dout[15]
assign gpu_dout_15_out = (ts_local_pe_211_a0_oe & ts_local_pe_211_a0_out ) | (ts_local_pe_211_a1_oe & ts_local_pe_211_a1_out ) | (ts_local_pe_211_a2_oe & ts_local_pe_211_a2_out ) | 1'b0;
assign gpu_dout_15_oe = ts_local_pe_211_a0_oe | ts_local_pe_211_a1_oe | ts_local_pe_211_a2_oe;
assign ts_local_pe_211_a0_in = gpu_dout_15_in;
assign ts_local_pe_211_a1_in = gpu_dout_15_in;
assign ts_local_pe_211_a2_in = gpu_dout_15_in;

// --- Compiler-generated local PE for BUS gpu_dout[16]
assign gpu_dout_16_out = (ts_local_pe_212_a0_oe & ts_local_pe_212_a0_out ) | (ts_local_pe_212_a1_oe & ts_local_pe_212_a1_out ) | 1'b0;
assign gpu_dout_16_oe = ts_local_pe_212_a0_oe | ts_local_pe_212_a1_oe;
assign ts_local_pe_212_a0_in = gpu_dout_16_in;
assign ts_local_pe_212_a1_in = gpu_dout_16_in;

// --- Compiler-generated local PE for BUS gpu_dout[17]
assign gpu_dout_17_out = (ts_local_pe_213_a0_oe & ts_local_pe_213_a0_out ) | (ts_local_pe_213_a1_oe & ts_local_pe_213_a1_out ) | 1'b0;
assign gpu_dout_17_oe = ts_local_pe_213_a0_oe | ts_local_pe_213_a1_oe;
assign ts_local_pe_213_a0_in = gpu_dout_17_in;
assign ts_local_pe_213_a1_in = gpu_dout_17_in;

// --- Compiler-generated local PE for BUS gpu_dout[18]
assign gpu_dout_18_out = (ts_local_pe_214_a0_oe & ts_local_pe_214_a0_out ) | (ts_local_pe_214_a1_oe & ts_local_pe_214_a1_out ) | 1'b0;
assign gpu_dout_18_oe = ts_local_pe_214_a0_oe | ts_local_pe_214_a1_oe;
assign ts_local_pe_214_a0_in = gpu_dout_18_in;
assign ts_local_pe_214_a1_in = gpu_dout_18_in;

// --- Compiler-generated local PE for BUS gpu_dout[19]
assign gpu_dout_19_out = (ts_local_pe_215_a0_oe & ts_local_pe_215_a0_out ) | (ts_local_pe_215_a1_oe & ts_local_pe_215_a1_out ) | 1'b0;
assign gpu_dout_19_oe = ts_local_pe_215_a0_oe | ts_local_pe_215_a1_oe;
assign ts_local_pe_215_a0_in = gpu_dout_19_in;
assign ts_local_pe_215_a1_in = gpu_dout_19_in;

// --- Compiler-generated local PE for BUS gpu_dout[20]
assign gpu_dout_20_out = (ts_local_pe_216_a0_oe & ts_local_pe_216_a0_out ) | (ts_local_pe_216_a1_oe & ts_local_pe_216_a1_out ) | 1'b0;
assign gpu_dout_20_oe = ts_local_pe_216_a0_oe | ts_local_pe_216_a1_oe;
assign ts_local_pe_216_a0_in = gpu_dout_20_in;
assign ts_local_pe_216_a1_in = gpu_dout_20_in;

// --- Compiler-generated local PE for BUS gpu_dout[21]
assign gpu_dout_21_out = (ts_local_pe_217_a0_oe & ts_local_pe_217_a0_out ) | (ts_local_pe_217_a1_oe & ts_local_pe_217_a1_out ) | 1'b0;
assign gpu_dout_21_oe = ts_local_pe_217_a0_oe | ts_local_pe_217_a1_oe;
assign ts_local_pe_217_a0_in = gpu_dout_21_in;
assign ts_local_pe_217_a1_in = gpu_dout_21_in;

// --- Compiler-generated local PE for BUS gpu_dout[22]
assign gpu_dout_22_out = (ts_local_pe_218_a0_oe & ts_local_pe_218_a0_out ) | (ts_local_pe_218_a1_oe & ts_local_pe_218_a1_out ) | 1'b0;
assign gpu_dout_22_oe = ts_local_pe_218_a0_oe | ts_local_pe_218_a1_oe;
assign ts_local_pe_218_a0_in = gpu_dout_22_in;
assign ts_local_pe_218_a1_in = gpu_dout_22_in;

// --- Compiler-generated local PE for BUS gpu_dout[23]
assign gpu_dout_23_out = (ts_local_pe_219_a0_oe & ts_local_pe_219_a0_out ) | (ts_local_pe_219_a1_oe & ts_local_pe_219_a1_out ) | 1'b0;
assign gpu_dout_23_oe = ts_local_pe_219_a0_oe | ts_local_pe_219_a1_oe;
assign ts_local_pe_219_a0_in = gpu_dout_23_in;
assign ts_local_pe_219_a1_in = gpu_dout_23_in;

// --- Compiler-generated local PE for BUS gpu_dout[24]
assign gpu_dout_24_out = (ts_local_pe_220_a0_oe & ts_local_pe_220_a0_out ) | (ts_local_pe_220_a1_oe & ts_local_pe_220_a1_out ) | 1'b0;
assign gpu_dout_24_oe = ts_local_pe_220_a0_oe | ts_local_pe_220_a1_oe;
assign ts_local_pe_220_a0_in = gpu_dout_24_in;
assign ts_local_pe_220_a1_in = gpu_dout_24_in;

// --- Compiler-generated local PE for BUS gpu_dout[25]
assign gpu_dout_25_out = (ts_local_pe_221_a0_oe & ts_local_pe_221_a0_out ) | (ts_local_pe_221_a1_oe & ts_local_pe_221_a1_out ) | 1'b0;
assign gpu_dout_25_oe = ts_local_pe_221_a0_oe | ts_local_pe_221_a1_oe;
assign ts_local_pe_221_a0_in = gpu_dout_25_in;
assign ts_local_pe_221_a1_in = gpu_dout_25_in;

// --- Compiler-generated local PE for BUS gpu_dout[26]
assign gpu_dout_26_out = (ts_local_pe_222_a0_oe & ts_local_pe_222_a0_out ) | (ts_local_pe_222_a1_oe & ts_local_pe_222_a1_out ) | 1'b0;
assign gpu_dout_26_oe = ts_local_pe_222_a0_oe | ts_local_pe_222_a1_oe;
assign ts_local_pe_222_a0_in = gpu_dout_26_in;
assign ts_local_pe_222_a1_in = gpu_dout_26_in;

// --- Compiler-generated local PE for BUS gpu_dout[27]
assign gpu_dout_27_out = (ts_local_pe_223_a0_oe & ts_local_pe_223_a0_out ) | (ts_local_pe_223_a1_oe & ts_local_pe_223_a1_out ) | 1'b0;
assign gpu_dout_27_oe = ts_local_pe_223_a0_oe | ts_local_pe_223_a1_oe;
assign ts_local_pe_223_a0_in = gpu_dout_27_in;
assign ts_local_pe_223_a1_in = gpu_dout_27_in;

// --- Compiler-generated local PE for BUS gpu_dout[28]
assign gpu_dout_28_out = (ts_local_pe_224_a0_oe & ts_local_pe_224_a0_out ) | (ts_local_pe_224_a1_oe & ts_local_pe_224_a1_out ) | 1'b0;
assign gpu_dout_28_oe = ts_local_pe_224_a0_oe | ts_local_pe_224_a1_oe;
assign ts_local_pe_224_a0_in = gpu_dout_28_in;
assign ts_local_pe_224_a1_in = gpu_dout_28_in;

// --- Compiler-generated local PE for BUS gpu_dout[29]
assign gpu_dout_29_out = (ts_local_pe_225_a0_oe & ts_local_pe_225_a0_out ) | (ts_local_pe_225_a1_oe & ts_local_pe_225_a1_out ) | 1'b0;
assign gpu_dout_29_oe = ts_local_pe_225_a0_oe | ts_local_pe_225_a1_oe;
assign ts_local_pe_225_a0_in = gpu_dout_29_in;
assign ts_local_pe_225_a1_in = gpu_dout_29_in;

// --- Compiler-generated local PE for BUS gpu_dout[30]
assign gpu_dout_30_out = (ts_local_pe_226_a0_oe & ts_local_pe_226_a0_out ) | (ts_local_pe_226_a1_oe & ts_local_pe_226_a1_out ) | 1'b0;
assign gpu_dout_30_oe = ts_local_pe_226_a0_oe | ts_local_pe_226_a1_oe;
assign ts_local_pe_226_a0_in = gpu_dout_30_in;
assign ts_local_pe_226_a1_in = gpu_dout_30_in;

// --- Compiler-generated local PE for BUS gpu_dout[31]
assign gpu_dout_31_out = (ts_local_pe_227_a0_oe & ts_local_pe_227_a0_out ) | (ts_local_pe_227_a1_oe & ts_local_pe_227_a1_out ) | 1'b0;
assign gpu_dout_31_oe = ts_local_pe_227_a0_oe | ts_local_pe_227_a1_oe;
assign ts_local_pe_227_a0_in = gpu_dout_31_in;
assign ts_local_pe_227_a1_in = gpu_dout_31_in;

// --- Compiler-generated local LB for BUS gpu_data<0>
assign gpu_data_in[0] = gpu_data_out[0];

// --- Compiler-generated local LB for BUS gpu_data<1>
assign gpu_data_in[1] = gpu_data_out[1];

// --- Compiler-generated local LB for BUS gpu_data<2>
assign gpu_data_in[2] = gpu_data_out[2];

// --- Compiler-generated local LB for BUS gpu_data<3>
assign gpu_data_in[3] = gpu_data_out[3];

// --- Compiler-generated local LB for BUS gpu_data<4>
assign gpu_data_in[4] = gpu_data_out[4];

// --- Compiler-generated local LB for BUS gpu_data<5>
assign gpu_data_in[5] = gpu_data_out[5];

// --- Compiler-generated local LB for BUS gpu_data<6>
assign gpu_data_in[6] = gpu_data_out[6];

// --- Compiler-generated local LB for BUS gpu_data<7>
assign gpu_data_in[7] = gpu_data_out[7];

// --- Compiler-generated local LB for BUS gpu_data<8>
assign gpu_data_in[8] = gpu_data_out[8];

// --- Compiler-generated local LB for BUS gpu_data<9>
assign gpu_data_in[9] = gpu_data_out[9];

// --- Compiler-generated local LB for BUS gpu_data<10>
assign gpu_data_in[10] = gpu_data_out[10];

// --- Compiler-generated local LB for BUS gpu_data<11>
assign gpu_data_in[11] = gpu_data_out[11];

// --- Compiler-generated local LB for BUS gpu_data<12>
assign gpu_data_in[12] = gpu_data_out[12];

// --- Compiler-generated local LB for BUS gpu_data<13>
assign gpu_data_in[13] = gpu_data_out[13];

// --- Compiler-generated local LB for BUS gpu_data<14>
assign gpu_data_in[14] = gpu_data_out[14];

// --- Compiler-generated local LB for BUS gpu_data<15>
assign gpu_data_in[15] = gpu_data_out[15];

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
