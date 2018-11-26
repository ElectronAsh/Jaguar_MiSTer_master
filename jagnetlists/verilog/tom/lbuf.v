/* verilator lint_off LITENDIAN */
`include "defs.v"

module lbuf
(
	input aout_1,
	input aout_15,
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
	input siz_2,
	input lbwa_0,
	input lbwa_1,
	input lbwa_2,
	input lbwa_3,
	input lbwa_4,
	input lbwa_5,
	input lbwa_6,
	input lbwa_7,
	input lbwa_8,
	input lbra_0,
	input lbra_1,
	input lbra_2,
	input lbra_3,
	input lbra_4,
	input lbra_5,
	input lbra_6,
	input lbra_7,
	input lbra_8,
	input lbwe_0,
	input lbwe_1,
	input lbwd_0,
	input lbwd_1,
	input lbwd_2,
	input lbwd_3,
	input lbwd_4,
	input lbwd_5,
	input lbwd_6,
	input lbwd_7,
	input lbwd_8,
	input lbwd_9,
	input lbwd_10,
	input lbwd_11,
	input lbwd_12,
	input lbwd_13,
	input lbwd_14,
	input lbwd_15,
	input lbwd_16,
	input lbwd_17,
	input lbwd_18,
	input lbwd_19,
	input lbwd_20,
	input lbwd_21,
	input lbwd_22,
	input lbwd_23,
	input lbwd_24,
	input lbwd_25,
	input lbwd_26,
	input lbwd_27,
	input lbwd_28,
	input lbwd_29,
	input lbwd_30,
	input lbwd_31,
	input lbufa,
	input lbufb,
	input lbaw,
	input lbbw,
	input rmw,
	input reads,
	input vclk,
	input clk_0,
	input lben,
	input bgw,
	input bgwr,
	input vactive,
	input lbaactive,
	input lbbactive,
	input bigend,
	output lbrd_0,
	output lbrd_1,
	output lbrd_2,
	output lbrd_3,
	output lbrd_4,
	output lbrd_5,
	output lbrd_6,
	output lbrd_7,
	output lbrd_8,
	output lbrd_9,
	output lbrd_10,
	output lbrd_11,
	output lbrd_12,
	output lbrd_13,
	output lbrd_14,
	output lbrd_15,
	output lbrd_16,
	output lbrd_17,
	output lbrd_18,
	output lbrd_19,
	output lbrd_20,
	output lbrd_21,
	output lbrd_22,
	output lbrd_23,
	output lbrd_24,
	output lbrd_25,
	output lbrd_26,
	output lbrd_27,
	output lbrd_28,
	output lbrd_29,
	output lbrd_30,
	output lbrd_31,
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
	input sys_clk // Generated
);
wire [0:8] lbai;
wire [0:8] lbbi;
wire [0:31] lbrd_d;
wire [0:15] wdil;
wire [0:15] wdih;
wire [0:15] bgc;
wire [0:15] lbadl_out;
wire [0:15] lbadl_oe;
wire [0:15] lbadl_in;
wire [0:15] lbadh_out;
wire [0:15] lbadh_oe;
wire [0:15] lbadh_in;
wire [0:15] lbbdl_out;
wire [0:15] lbbdl_oe;
wire [0:15] lbbdl_in;
wire [0:15] lbbdh_out;
wire [0:15] lbbdh_oe;
wire [0:15] lbbdh_in;
wire nota_1;
wire lbad;
wire lba;
wire lbbd;
wire lbb;
wire lbwad_0;
wire lbwad_1;
wire lbwad_2;
wire lbwad_3;
wire lbwad_4;
wire lbwad_5;
wire lbwad_6;
wire lbwad_7;
wire lbwad_8;
wire lbrad_0;
wire lbrad_1;
wire lbrad_2;
wire lbrad_3;
wire lbrad_4;
wire lbrad_5;
wire lbrad_6;
wire lbrad_7;
wire lbrad_8;
wire lbaadi_0;
wire lbaadi_1;
wire lbaadi_2;
wire lbaadi_3;
wire lbaadi_4;
wire lbaadi_5;
wire lbaadi_6;
wire lbaadi_7;
wire lbaadi_8;
wire lbbadi_0;
wire lbbadi_1;
wire lbbadi_2;
wire lbbadi_3;
wire lbbadi_4;
wire lbbadi_5;
wire lbbadi_6;
wire lbbadi_7;
wire lbbadi_8;
wire lbaad_0;
wire lbaad_1;
wire lbaad_2;
wire lbaad_3;
wire lbaad_4;
wire lbaad_5;
wire lbaad_6;
wire lbaad_7;
wire lbaad_8;
wire lbbad_0;
wire lbbad_1;
wire lbbad_2;
wire lbbad_3;
wire lbbad_4;
wire lbbad_5;
wire lbbad_6;
wire lbbad_7;
wire lbbad_8;
wire dw_0;
wire dw_1;
wire dw_2;
wire dw_3;
wire dw_4;
wire dw_5;
wire dw_6;
wire dw_7;
wire dw_8;
wire dw_9;
wire dw_10;
wire dw_11;
wire dw_12;
wire dw_13;
wire dw_14;
wire dw_15;
wire down;
wire dw_16;
wire dw_17;
wire dw_18;
wire dw_19;
wire dw_20;
wire dw_21;
wire dw_22;
wire dw_23;
wire dw_24;
wire dw_25;
wire dw_26;
wire dw_27;
wire dw_28;
wire dw_29;
wire dw_30;
wire dw_31;
wire up;
wire littlend;
wire rmwd_0;
wire rmwd_1;
wire rmwd_2;
wire rmwd_3;
wire rmwd_4;
wire rmwd_5;
wire rmwd_6;
wire rmwd_7;
wire rmwd_8;
wire rmwd_9;
wire rmwd_10;
wire rmwd_11;
wire rmwd_12;
wire rmwd_13;
wire rmwd_14;
wire rmwd_15;
wire rmwd_16;
wire rmwd_17;
wire rmwd_18;
wire rmwd_19;
wire rmwd_20;
wire rmwd_21;
wire rmwd_22;
wire rmwd_23;
wire rmwd_24;
wire rmwd_25;
wire rmwd_26;
wire rmwd_27;
wire rmwd_28;
wire rmwd_29;
wire rmwd_30;
wire rmwd_31;
wire rmwd1_0;
wire rmwd1_1;
wire rmwd1_2;
wire rmwd1_3;
wire rmwd1_4;
wire rmwd1_5;
wire rmwd1_6;
wire rmwd1_7;
wire rmwd1_8;
wire rmwd1_9;
wire rmwd1_10;
wire rmwd1_11;
wire rmwd1_12;
wire rmwd1_13;
wire rmwd1_14;
wire rmwd1_15;
wire rmwd1_16;
wire rmwd1_17;
wire rmwd1_18;
wire rmwd1_19;
wire rmwd1_20;
wire rmwd1_21;
wire rmwd1_22;
wire rmwd1_23;
wire rmwd1_24;
wire rmwd1_25;
wire rmwd1_26;
wire rmwd1_27;
wire rmwd1_28;
wire rmwd1_29;
wire rmwd1_30;
wire rmwd1_31;
wire rmwd2_0;
wire rmwd2_1;
wire rmwd2_2;
wire rmwd2_3;
wire rmwd2_4;
wire rmwd2_5;
wire rmwd2_6;
wire rmwd2_7;
wire rmwd2_8;
wire rmwd2_9;
wire rmwd2_10;
wire rmwd2_11;
wire rmwd2_12;
wire rmwd2_13;
wire rmwd2_14;
wire rmwd2_15;
wire rmwd2_16;
wire rmwd2_17;
wire rmwd2_18;
wire rmwd2_19;
wire rmwd2_20;
wire rmwd2_21;
wire rmwd2_22;
wire rmwd2_23;
wire rmwd2_24;
wire rmwd2_25;
wire rmwd2_26;
wire rmwd2_27;
wire rmwd2_28;
wire rmwd2_29;
wire rmwd2_30;
wire rmwd2_31;
wire wd_0;
wire wd_1;
wire wd_2;
wire wd_3;
wire wd_4;
wire wd_5;
wire wd_6;
wire wd_7;
wire wd_8;
wire wd_9;
wire wd_10;
wire wd_11;
wire wd_12;
wire wd_13;
wire wd_14;
wire wd_15;
wire wd_16;
wire wd_17;
wire wd_18;
wire wd_19;
wire wd_20;
wire wd_21;
wire wd_22;
wire wd_23;
wire wd_24;
wire wd_25;
wire wd_26;
wire wd_27;
wire wd_28;
wire wd_29;
wire wd_30;
wire wd_31;
wire extadd;
wire writes;
wire lbr_0;
wire lbr_1;
wire wra0;
wire wra1l;
wire wra1h;
wire wra2l;
wire wra2h;
wire notsiz_2;
wire wrali;
wire notaactive;
wire wrahi;
wire wral;
wire wrah;
wire wrb0;
wire wrb1l;
wire wrb1h;
wire wrb2l;
wire wrb2h;
wire wrbli;
wire notbactive;
wire wrbhi;
wire wrbl;
wire wrbh;
wire cea_0;
wire wea_0;
wire cea_1;
wire wea_1;
wire ceb_0;
wire web_0;
wire ceb_1;
wire web_1;
wire ncst;
wire nvcst;
wire cea0;
wire cea1;
wire cea2;
wire aactive;
wire ceb0;
wire ceb1;
wire ceb2;
wire bactive;
wire wea00;
wire wea01;
wire wea02;
wire wead_0;
wire wea10;
wire wea11;
wire wea12;
wire vcc;
wire wead_1;
wire web00;
wire web01;
wire web02;
wire webd_0;
wire web10;
wire web11;
wire web12;
wire webd_1;
wire lbdi_0;
wire lbdi_1;
wire lbdi_2;
wire lbdi_3;
wire lbdi_4;
wire lbdi_5;
wire lbdi_6;
wire lbdi_7;
wire lbdi_8;
wire lbdi_9;
wire lbdi_10;
wire lbdi_11;
wire lbdi_12;
wire lbdi_13;
wire lbdi_14;
wire lbdi_15;
wire lbd_0;
wire lbd_1;
wire lbd_2;
wire lbd_3;
wire lbd_4;
wire lbd_5;
wire lbd_6;
wire lbd_7;
wire lbd_8;
wire lbd_9;
wire lbd_10;
wire lbd_11;
wire lbd_12;
wire lbd_13;
wire lbd_14;
wire lbd_15;
wire lbdeni;
wire lbden;
wire bgc_0;
wire bgc_1;
wire bgc_2;
wire bgc_3;
wire bgc_4;
wire bgc_5;
wire bgc_6;
wire bgc_7;
wire bgc_8;
wire bgc_9;
wire bgc_10;
wire bgc_11;
wire bgc_12;
wire bgc_13;
wire bgc_14;
wire bgc_15;
wire bgwa;
wire bgwb;
wire ts_local_pe_432_a0_out;
wire ts_local_pe_432_a0_oe;
wire ts_local_pe_432_a0_in;
wire ts_local_pe_432_a1_out;
wire ts_local_pe_432_a1_oe;
wire ts_local_pe_432_a1_in;
wire ts_local_pe_432_a2_out;
wire ts_local_pe_432_a2_oe;
wire ts_local_pe_432_a2_in;
wire ts_local_pe_433_a0_out;
wire ts_local_pe_433_a0_oe;
wire ts_local_pe_433_a0_in;
wire ts_local_pe_433_a1_out;
wire ts_local_pe_433_a1_oe;
wire ts_local_pe_433_a1_in;
wire ts_local_pe_433_a2_out;
wire ts_local_pe_433_a2_oe;
wire ts_local_pe_433_a2_in;
wire ts_local_pe_434_a0_out;
wire ts_local_pe_434_a0_oe;
wire ts_local_pe_434_a0_in;
wire ts_local_pe_434_a1_out;
wire ts_local_pe_434_a1_oe;
wire ts_local_pe_434_a1_in;
wire ts_local_pe_434_a2_out;
wire ts_local_pe_434_a2_oe;
wire ts_local_pe_434_a2_in;
wire ts_local_pe_435_a0_out;
wire ts_local_pe_435_a0_oe;
wire ts_local_pe_435_a0_in;
wire ts_local_pe_435_a1_out;
wire ts_local_pe_435_a1_oe;
wire ts_local_pe_435_a1_in;
wire ts_local_pe_435_a2_out;
wire ts_local_pe_435_a2_oe;
wire ts_local_pe_435_a2_in;
wire ts_local_pe_436_a0_out;
wire ts_local_pe_436_a0_oe;
wire ts_local_pe_436_a0_in;
wire ts_local_pe_436_a1_out;
wire ts_local_pe_436_a1_oe;
wire ts_local_pe_436_a1_in;
wire ts_local_pe_436_a2_out;
wire ts_local_pe_436_a2_oe;
wire ts_local_pe_436_a2_in;
wire ts_local_pe_437_a0_out;
wire ts_local_pe_437_a0_oe;
wire ts_local_pe_437_a0_in;
wire ts_local_pe_437_a1_out;
wire ts_local_pe_437_a1_oe;
wire ts_local_pe_437_a1_in;
wire ts_local_pe_437_a2_out;
wire ts_local_pe_437_a2_oe;
wire ts_local_pe_437_a2_in;
wire ts_local_pe_438_a0_out;
wire ts_local_pe_438_a0_oe;
wire ts_local_pe_438_a0_in;
wire ts_local_pe_438_a1_out;
wire ts_local_pe_438_a1_oe;
wire ts_local_pe_438_a1_in;
wire ts_local_pe_438_a2_out;
wire ts_local_pe_438_a2_oe;
wire ts_local_pe_438_a2_in;
wire ts_local_pe_439_a0_out;
wire ts_local_pe_439_a0_oe;
wire ts_local_pe_439_a0_in;
wire ts_local_pe_439_a1_out;
wire ts_local_pe_439_a1_oe;
wire ts_local_pe_439_a1_in;
wire ts_local_pe_439_a2_out;
wire ts_local_pe_439_a2_oe;
wire ts_local_pe_439_a2_in;
wire ts_local_pe_440_a0_out;
wire ts_local_pe_440_a0_oe;
wire ts_local_pe_440_a0_in;
wire ts_local_pe_440_a1_out;
wire ts_local_pe_440_a1_oe;
wire ts_local_pe_440_a1_in;
wire ts_local_pe_440_a2_out;
wire ts_local_pe_440_a2_oe;
wire ts_local_pe_440_a2_in;
wire ts_local_pe_441_a0_out;
wire ts_local_pe_441_a0_oe;
wire ts_local_pe_441_a0_in;
wire ts_local_pe_441_a1_out;
wire ts_local_pe_441_a1_oe;
wire ts_local_pe_441_a1_in;
wire ts_local_pe_441_a2_out;
wire ts_local_pe_441_a2_oe;
wire ts_local_pe_441_a2_in;
wire ts_local_pe_442_a0_out;
wire ts_local_pe_442_a0_oe;
wire ts_local_pe_442_a0_in;
wire ts_local_pe_442_a1_out;
wire ts_local_pe_442_a1_oe;
wire ts_local_pe_442_a1_in;
wire ts_local_pe_442_a2_out;
wire ts_local_pe_442_a2_oe;
wire ts_local_pe_442_a2_in;
wire ts_local_pe_443_a0_out;
wire ts_local_pe_443_a0_oe;
wire ts_local_pe_443_a0_in;
wire ts_local_pe_443_a1_out;
wire ts_local_pe_443_a1_oe;
wire ts_local_pe_443_a1_in;
wire ts_local_pe_443_a2_out;
wire ts_local_pe_443_a2_oe;
wire ts_local_pe_443_a2_in;
wire ts_local_pe_444_a0_out;
wire ts_local_pe_444_a0_oe;
wire ts_local_pe_444_a0_in;
wire ts_local_pe_444_a1_out;
wire ts_local_pe_444_a1_oe;
wire ts_local_pe_444_a1_in;
wire ts_local_pe_444_a2_out;
wire ts_local_pe_444_a2_oe;
wire ts_local_pe_444_a2_in;
wire ts_local_pe_445_a0_out;
wire ts_local_pe_445_a0_oe;
wire ts_local_pe_445_a0_in;
wire ts_local_pe_445_a1_out;
wire ts_local_pe_445_a1_oe;
wire ts_local_pe_445_a1_in;
wire ts_local_pe_445_a2_out;
wire ts_local_pe_445_a2_oe;
wire ts_local_pe_445_a2_in;
wire ts_local_pe_446_a0_out;
wire ts_local_pe_446_a0_oe;
wire ts_local_pe_446_a0_in;
wire ts_local_pe_446_a1_out;
wire ts_local_pe_446_a1_oe;
wire ts_local_pe_446_a1_in;
wire ts_local_pe_446_a2_out;
wire ts_local_pe_446_a2_oe;
wire ts_local_pe_446_a2_in;
wire ts_local_pe_447_a0_out;
wire ts_local_pe_447_a0_oe;
wire ts_local_pe_447_a0_in;
wire ts_local_pe_447_a1_out;
wire ts_local_pe_447_a1_oe;
wire ts_local_pe_447_a1_in;
wire ts_local_pe_447_a2_out;
wire ts_local_pe_447_a2_oe;
wire ts_local_pe_447_a2_in;
wire ts_local_pe_448_a0_out;
wire ts_local_pe_448_a0_oe;
wire ts_local_pe_448_a0_in;
wire ts_local_pe_448_a1_out;
wire ts_local_pe_448_a1_oe;
wire ts_local_pe_448_a1_in;
wire ts_local_pe_448_a2_out;
wire ts_local_pe_448_a2_oe;
wire ts_local_pe_448_a2_in;
wire ts_local_pe_449_a0_out;
wire ts_local_pe_449_a0_oe;
wire ts_local_pe_449_a0_in;
wire ts_local_pe_449_a1_out;
wire ts_local_pe_449_a1_oe;
wire ts_local_pe_449_a1_in;
wire ts_local_pe_449_a2_out;
wire ts_local_pe_449_a2_oe;
wire ts_local_pe_449_a2_in;
wire ts_local_pe_450_a0_out;
wire ts_local_pe_450_a0_oe;
wire ts_local_pe_450_a0_in;
wire ts_local_pe_450_a1_out;
wire ts_local_pe_450_a1_oe;
wire ts_local_pe_450_a1_in;
wire ts_local_pe_450_a2_out;
wire ts_local_pe_450_a2_oe;
wire ts_local_pe_450_a2_in;
wire ts_local_pe_451_a0_out;
wire ts_local_pe_451_a0_oe;
wire ts_local_pe_451_a0_in;
wire ts_local_pe_451_a1_out;
wire ts_local_pe_451_a1_oe;
wire ts_local_pe_451_a1_in;
wire ts_local_pe_451_a2_out;
wire ts_local_pe_451_a2_oe;
wire ts_local_pe_451_a2_in;
wire ts_local_pe_452_a0_out;
wire ts_local_pe_452_a0_oe;
wire ts_local_pe_452_a0_in;
wire ts_local_pe_452_a1_out;
wire ts_local_pe_452_a1_oe;
wire ts_local_pe_452_a1_in;
wire ts_local_pe_452_a2_out;
wire ts_local_pe_452_a2_oe;
wire ts_local_pe_452_a2_in;
wire ts_local_pe_453_a0_out;
wire ts_local_pe_453_a0_oe;
wire ts_local_pe_453_a0_in;
wire ts_local_pe_453_a1_out;
wire ts_local_pe_453_a1_oe;
wire ts_local_pe_453_a1_in;
wire ts_local_pe_453_a2_out;
wire ts_local_pe_453_a2_oe;
wire ts_local_pe_453_a2_in;
wire ts_local_pe_454_a0_out;
wire ts_local_pe_454_a0_oe;
wire ts_local_pe_454_a0_in;
wire ts_local_pe_454_a1_out;
wire ts_local_pe_454_a1_oe;
wire ts_local_pe_454_a1_in;
wire ts_local_pe_454_a2_out;
wire ts_local_pe_454_a2_oe;
wire ts_local_pe_454_a2_in;
wire ts_local_pe_455_a0_out;
wire ts_local_pe_455_a0_oe;
wire ts_local_pe_455_a0_in;
wire ts_local_pe_455_a1_out;
wire ts_local_pe_455_a1_oe;
wire ts_local_pe_455_a1_in;
wire ts_local_pe_455_a2_out;
wire ts_local_pe_455_a2_oe;
wire ts_local_pe_455_a2_in;
wire ts_local_pe_456_a0_out;
wire ts_local_pe_456_a0_oe;
wire ts_local_pe_456_a0_in;
wire ts_local_pe_456_a1_out;
wire ts_local_pe_456_a1_oe;
wire ts_local_pe_456_a1_in;
wire ts_local_pe_456_a2_out;
wire ts_local_pe_456_a2_oe;
wire ts_local_pe_456_a2_in;
wire ts_local_pe_457_a0_out;
wire ts_local_pe_457_a0_oe;
wire ts_local_pe_457_a0_in;
wire ts_local_pe_457_a1_out;
wire ts_local_pe_457_a1_oe;
wire ts_local_pe_457_a1_in;
wire ts_local_pe_457_a2_out;
wire ts_local_pe_457_a2_oe;
wire ts_local_pe_457_a2_in;
wire ts_local_pe_458_a0_out;
wire ts_local_pe_458_a0_oe;
wire ts_local_pe_458_a0_in;
wire ts_local_pe_458_a1_out;
wire ts_local_pe_458_a1_oe;
wire ts_local_pe_458_a1_in;
wire ts_local_pe_458_a2_out;
wire ts_local_pe_458_a2_oe;
wire ts_local_pe_458_a2_in;
wire ts_local_pe_459_a0_out;
wire ts_local_pe_459_a0_oe;
wire ts_local_pe_459_a0_in;
wire ts_local_pe_459_a1_out;
wire ts_local_pe_459_a1_oe;
wire ts_local_pe_459_a1_in;
wire ts_local_pe_459_a2_out;
wire ts_local_pe_459_a2_oe;
wire ts_local_pe_459_a2_in;
wire ts_local_pe_460_a0_out;
wire ts_local_pe_460_a0_oe;
wire ts_local_pe_460_a0_in;
wire ts_local_pe_460_a1_out;
wire ts_local_pe_460_a1_oe;
wire ts_local_pe_460_a1_in;
wire ts_local_pe_460_a2_out;
wire ts_local_pe_460_a2_oe;
wire ts_local_pe_460_a2_in;
wire ts_local_pe_461_a0_out;
wire ts_local_pe_461_a0_oe;
wire ts_local_pe_461_a0_in;
wire ts_local_pe_461_a1_out;
wire ts_local_pe_461_a1_oe;
wire ts_local_pe_461_a1_in;
wire ts_local_pe_461_a2_out;
wire ts_local_pe_461_a2_oe;
wire ts_local_pe_461_a2_in;
wire ts_local_pe_462_a0_out;
wire ts_local_pe_462_a0_oe;
wire ts_local_pe_462_a0_in;
wire ts_local_pe_462_a1_out;
wire ts_local_pe_462_a1_oe;
wire ts_local_pe_462_a1_in;
wire ts_local_pe_462_a2_out;
wire ts_local_pe_462_a2_oe;
wire ts_local_pe_462_a2_in;
wire ts_local_pe_463_a0_out;
wire ts_local_pe_463_a0_oe;
wire ts_local_pe_463_a0_in;
wire ts_local_pe_463_a1_out;
wire ts_local_pe_463_a1_oe;
wire ts_local_pe_463_a1_in;
wire ts_local_pe_463_a2_out;
wire ts_local_pe_463_a2_oe;
wire ts_local_pe_463_a2_in;
wire ts_local_pe_464_a0_out;
wire ts_local_pe_464_a0_oe;
wire ts_local_pe_464_a0_in;
wire ts_local_pe_464_a1_out;
wire ts_local_pe_464_a1_oe;
wire ts_local_pe_464_a1_in;
wire ts_local_pe_464_a2_out;
wire ts_local_pe_464_a2_oe;
wire ts_local_pe_464_a2_in;
wire ts_local_pe_465_a0_out;
wire ts_local_pe_465_a0_oe;
wire ts_local_pe_465_a0_in;
wire ts_local_pe_465_a1_out;
wire ts_local_pe_465_a1_oe;
wire ts_local_pe_465_a1_in;
wire ts_local_pe_465_a2_out;
wire ts_local_pe_465_a2_oe;
wire ts_local_pe_465_a2_in;
wire ts_local_pe_466_a0_out;
wire ts_local_pe_466_a0_oe;
wire ts_local_pe_466_a0_in;
wire ts_local_pe_466_a1_out;
wire ts_local_pe_466_a1_oe;
wire ts_local_pe_466_a1_in;
wire ts_local_pe_466_a2_out;
wire ts_local_pe_466_a2_oe;
wire ts_local_pe_466_a2_in;
wire ts_local_pe_467_a0_out;
wire ts_local_pe_467_a0_oe;
wire ts_local_pe_467_a0_in;
wire ts_local_pe_467_a1_out;
wire ts_local_pe_467_a1_oe;
wire ts_local_pe_467_a1_in;
wire ts_local_pe_467_a2_out;
wire ts_local_pe_467_a2_oe;
wire ts_local_pe_467_a2_in;
wire ts_local_pe_468_a0_out;
wire ts_local_pe_468_a0_oe;
wire ts_local_pe_468_a0_in;
wire ts_local_pe_468_a1_out;
wire ts_local_pe_468_a1_oe;
wire ts_local_pe_468_a1_in;
wire ts_local_pe_468_a2_out;
wire ts_local_pe_468_a2_oe;
wire ts_local_pe_468_a2_in;
wire ts_local_pe_469_a0_out;
wire ts_local_pe_469_a0_oe;
wire ts_local_pe_469_a0_in;
wire ts_local_pe_469_a1_out;
wire ts_local_pe_469_a1_oe;
wire ts_local_pe_469_a1_in;
wire ts_local_pe_469_a2_out;
wire ts_local_pe_469_a2_oe;
wire ts_local_pe_469_a2_in;
wire ts_local_pe_470_a0_out;
wire ts_local_pe_470_a0_oe;
wire ts_local_pe_470_a0_in;
wire ts_local_pe_470_a1_out;
wire ts_local_pe_470_a1_oe;
wire ts_local_pe_470_a1_in;
wire ts_local_pe_470_a2_out;
wire ts_local_pe_470_a2_oe;
wire ts_local_pe_470_a2_in;
wire ts_local_pe_471_a0_out;
wire ts_local_pe_471_a0_oe;
wire ts_local_pe_471_a0_in;
wire ts_local_pe_471_a1_out;
wire ts_local_pe_471_a1_oe;
wire ts_local_pe_471_a1_in;
wire ts_local_pe_471_a2_out;
wire ts_local_pe_471_a2_oe;
wire ts_local_pe_471_a2_in;
wire ts_local_pe_472_a0_out;
wire ts_local_pe_472_a0_oe;
wire ts_local_pe_472_a0_in;
wire ts_local_pe_472_a1_out;
wire ts_local_pe_472_a1_oe;
wire ts_local_pe_472_a1_in;
wire ts_local_pe_472_a2_out;
wire ts_local_pe_472_a2_oe;
wire ts_local_pe_472_a2_in;
wire ts_local_pe_473_a0_out;
wire ts_local_pe_473_a0_oe;
wire ts_local_pe_473_a0_in;
wire ts_local_pe_473_a1_out;
wire ts_local_pe_473_a1_oe;
wire ts_local_pe_473_a1_in;
wire ts_local_pe_473_a2_out;
wire ts_local_pe_473_a2_oe;
wire ts_local_pe_473_a2_in;
wire ts_local_pe_474_a0_out;
wire ts_local_pe_474_a0_oe;
wire ts_local_pe_474_a0_in;
wire ts_local_pe_474_a1_out;
wire ts_local_pe_474_a1_oe;
wire ts_local_pe_474_a1_in;
wire ts_local_pe_474_a2_out;
wire ts_local_pe_474_a2_oe;
wire ts_local_pe_474_a2_in;
wire ts_local_pe_475_a0_out;
wire ts_local_pe_475_a0_oe;
wire ts_local_pe_475_a0_in;
wire ts_local_pe_475_a1_out;
wire ts_local_pe_475_a1_oe;
wire ts_local_pe_475_a1_in;
wire ts_local_pe_475_a2_out;
wire ts_local_pe_475_a2_oe;
wire ts_local_pe_475_a2_in;
wire ts_local_pe_476_a0_out;
wire ts_local_pe_476_a0_oe;
wire ts_local_pe_476_a0_in;
wire ts_local_pe_476_a1_out;
wire ts_local_pe_476_a1_oe;
wire ts_local_pe_476_a1_in;
wire ts_local_pe_476_a2_out;
wire ts_local_pe_476_a2_oe;
wire ts_local_pe_476_a2_in;
wire ts_local_pe_477_a0_out;
wire ts_local_pe_477_a0_oe;
wire ts_local_pe_477_a0_in;
wire ts_local_pe_477_a1_out;
wire ts_local_pe_477_a1_oe;
wire ts_local_pe_477_a1_in;
wire ts_local_pe_477_a2_out;
wire ts_local_pe_477_a2_oe;
wire ts_local_pe_477_a2_in;
wire ts_local_pe_478_a0_out;
wire ts_local_pe_478_a0_oe;
wire ts_local_pe_478_a0_in;
wire ts_local_pe_478_a1_out;
wire ts_local_pe_478_a1_oe;
wire ts_local_pe_478_a1_in;
wire ts_local_pe_478_a2_out;
wire ts_local_pe_478_a2_oe;
wire ts_local_pe_478_a2_in;
wire ts_local_pe_479_a0_out;
wire ts_local_pe_479_a0_oe;
wire ts_local_pe_479_a0_in;
wire ts_local_pe_479_a1_out;
wire ts_local_pe_479_a1_oe;
wire ts_local_pe_479_a1_in;
wire ts_local_pe_479_a2_out;
wire ts_local_pe_479_a2_oe;
wire ts_local_pe_479_a2_in;
wire ts_local_pe_480_a0_out;
wire ts_local_pe_480_a0_oe;
wire ts_local_pe_480_a0_in;
wire ts_local_pe_480_a1_out;
wire ts_local_pe_480_a1_oe;
wire ts_local_pe_480_a1_in;
wire ts_local_pe_480_a2_out;
wire ts_local_pe_480_a2_oe;
wire ts_local_pe_480_a2_in;
wire ts_local_pe_481_a0_out;
wire ts_local_pe_481_a0_oe;
wire ts_local_pe_481_a0_in;
wire ts_local_pe_481_a1_out;
wire ts_local_pe_481_a1_oe;
wire ts_local_pe_481_a1_in;
wire ts_local_pe_481_a2_out;
wire ts_local_pe_481_a2_oe;
wire ts_local_pe_481_a2_in;
wire ts_local_pe_482_a0_out;
wire ts_local_pe_482_a0_oe;
wire ts_local_pe_482_a0_in;
wire ts_local_pe_482_a1_out;
wire ts_local_pe_482_a1_oe;
wire ts_local_pe_482_a1_in;
wire ts_local_pe_482_a2_out;
wire ts_local_pe_482_a2_oe;
wire ts_local_pe_482_a2_in;
wire ts_local_pe_483_a0_out;
wire ts_local_pe_483_a0_oe;
wire ts_local_pe_483_a0_in;
wire ts_local_pe_483_a1_out;
wire ts_local_pe_483_a1_oe;
wire ts_local_pe_483_a1_in;
wire ts_local_pe_483_a2_out;
wire ts_local_pe_483_a2_oe;
wire ts_local_pe_483_a2_in;
wire ts_local_pe_484_a0_out;
wire ts_local_pe_484_a0_oe;
wire ts_local_pe_484_a0_in;
wire ts_local_pe_484_a1_out;
wire ts_local_pe_484_a1_oe;
wire ts_local_pe_484_a1_in;
wire ts_local_pe_484_a2_out;
wire ts_local_pe_484_a2_oe;
wire ts_local_pe_484_a2_in;
wire ts_local_pe_485_a0_out;
wire ts_local_pe_485_a0_oe;
wire ts_local_pe_485_a0_in;
wire ts_local_pe_485_a1_out;
wire ts_local_pe_485_a1_oe;
wire ts_local_pe_485_a1_in;
wire ts_local_pe_485_a2_out;
wire ts_local_pe_485_a2_oe;
wire ts_local_pe_485_a2_in;
wire ts_local_pe_486_a0_out;
wire ts_local_pe_486_a0_oe;
wire ts_local_pe_486_a0_in;
wire ts_local_pe_486_a1_out;
wire ts_local_pe_486_a1_oe;
wire ts_local_pe_486_a1_in;
wire ts_local_pe_486_a2_out;
wire ts_local_pe_486_a2_oe;
wire ts_local_pe_486_a2_in;
wire ts_local_pe_487_a0_out;
wire ts_local_pe_487_a0_oe;
wire ts_local_pe_487_a0_in;
wire ts_local_pe_487_a1_out;
wire ts_local_pe_487_a1_oe;
wire ts_local_pe_487_a1_in;
wire ts_local_pe_487_a2_out;
wire ts_local_pe_487_a2_oe;
wire ts_local_pe_487_a2_in;
wire ts_local_pe_488_a0_out;
wire ts_local_pe_488_a0_oe;
wire ts_local_pe_488_a0_in;
wire ts_local_pe_488_a1_out;
wire ts_local_pe_488_a1_oe;
wire ts_local_pe_488_a1_in;
wire ts_local_pe_488_a2_out;
wire ts_local_pe_488_a2_oe;
wire ts_local_pe_488_a2_in;
wire ts_local_pe_489_a0_out;
wire ts_local_pe_489_a0_oe;
wire ts_local_pe_489_a0_in;
wire ts_local_pe_489_a1_out;
wire ts_local_pe_489_a1_oe;
wire ts_local_pe_489_a1_in;
wire ts_local_pe_489_a2_out;
wire ts_local_pe_489_a2_oe;
wire ts_local_pe_489_a2_in;
wire ts_local_pe_490_a0_out;
wire ts_local_pe_490_a0_oe;
wire ts_local_pe_490_a0_in;
wire ts_local_pe_490_a1_out;
wire ts_local_pe_490_a1_oe;
wire ts_local_pe_490_a1_in;
wire ts_local_pe_490_a2_out;
wire ts_local_pe_490_a2_oe;
wire ts_local_pe_490_a2_in;
wire ts_local_pe_491_a0_out;
wire ts_local_pe_491_a0_oe;
wire ts_local_pe_491_a0_in;
wire ts_local_pe_491_a1_out;
wire ts_local_pe_491_a1_oe;
wire ts_local_pe_491_a1_in;
wire ts_local_pe_491_a2_out;
wire ts_local_pe_491_a2_oe;
wire ts_local_pe_491_a2_in;
wire ts_local_pe_492_a0_out;
wire ts_local_pe_492_a0_oe;
wire ts_local_pe_492_a0_in;
wire ts_local_pe_492_a1_out;
wire ts_local_pe_492_a1_oe;
wire ts_local_pe_492_a1_in;
wire ts_local_pe_492_a2_out;
wire ts_local_pe_492_a2_oe;
wire ts_local_pe_492_a2_in;
wire ts_local_pe_493_a0_out;
wire ts_local_pe_493_a0_oe;
wire ts_local_pe_493_a0_in;
wire ts_local_pe_493_a1_out;
wire ts_local_pe_493_a1_oe;
wire ts_local_pe_493_a1_in;
wire ts_local_pe_493_a2_out;
wire ts_local_pe_493_a2_oe;
wire ts_local_pe_493_a2_in;
wire ts_local_pe_494_a0_out;
wire ts_local_pe_494_a0_oe;
wire ts_local_pe_494_a0_in;
wire ts_local_pe_494_a1_out;
wire ts_local_pe_494_a1_oe;
wire ts_local_pe_494_a1_in;
wire ts_local_pe_494_a2_out;
wire ts_local_pe_494_a2_oe;
wire ts_local_pe_494_a2_in;
wire ts_local_pe_495_a0_out;
wire ts_local_pe_495_a0_oe;
wire ts_local_pe_495_a0_in;
wire ts_local_pe_495_a1_out;
wire ts_local_pe_495_a1_oe;
wire ts_local_pe_495_a1_in;
wire ts_local_pe_495_a2_out;
wire ts_local_pe_495_a2_oe;
wire ts_local_pe_495_a2_in;

// Output buffers
wire lbrd_0_obuf;
wire lbrd_1_obuf;
wire lbrd_2_obuf;
wire lbrd_3_obuf;
wire lbrd_4_obuf;
wire lbrd_5_obuf;
wire lbrd_6_obuf;
wire lbrd_7_obuf;
wire lbrd_8_obuf;
wire lbrd_9_obuf;
wire lbrd_10_obuf;
wire lbrd_11_obuf;
wire lbrd_12_obuf;
wire lbrd_13_obuf;
wire lbrd_14_obuf;
wire lbrd_15_obuf;
wire lbrd_16_obuf;
wire lbrd_17_obuf;
wire lbrd_18_obuf;
wire lbrd_19_obuf;
wire lbrd_20_obuf;
wire lbrd_21_obuf;
wire lbrd_22_obuf;
wire lbrd_23_obuf;
wire lbrd_24_obuf;
wire lbrd_25_obuf;
wire lbrd_26_obuf;
wire lbrd_27_obuf;
wire lbrd_28_obuf;
wire lbrd_29_obuf;
wire lbrd_30_obuf;
wire lbrd_31_obuf;


// Output buffers
assign lbrd_0 = lbrd_0_obuf;
assign lbrd_1 = lbrd_1_obuf;
assign lbrd_2 = lbrd_2_obuf;
assign lbrd_3 = lbrd_3_obuf;
assign lbrd_4 = lbrd_4_obuf;
assign lbrd_5 = lbrd_5_obuf;
assign lbrd_6 = lbrd_6_obuf;
assign lbrd_7 = lbrd_7_obuf;
assign lbrd_8 = lbrd_8_obuf;
assign lbrd_9 = lbrd_9_obuf;
assign lbrd_10 = lbrd_10_obuf;
assign lbrd_11 = lbrd_11_obuf;
assign lbrd_12 = lbrd_12_obuf;
assign lbrd_13 = lbrd_13_obuf;
assign lbrd_14 = lbrd_14_obuf;
assign lbrd_15 = lbrd_15_obuf;
assign lbrd_16 = lbrd_16_obuf;
assign lbrd_17 = lbrd_17_obuf;
assign lbrd_18 = lbrd_18_obuf;
assign lbrd_19 = lbrd_19_obuf;
assign lbrd_20 = lbrd_20_obuf;
assign lbrd_21 = lbrd_21_obuf;
assign lbrd_22 = lbrd_22_obuf;
assign lbrd_23 = lbrd_23_obuf;
assign lbrd_24 = lbrd_24_obuf;
assign lbrd_25 = lbrd_25_obuf;
assign lbrd_26 = lbrd_26_obuf;
assign lbrd_27 = lbrd_27_obuf;
assign lbrd_28 = lbrd_28_obuf;
assign lbrd_29 = lbrd_29_obuf;
assign lbrd_30 = lbrd_30_obuf;
assign lbrd_31 = lbrd_31_obuf;


// LBUF.NET (58) - nota[1] : iv
assign nota_1 = ~aout_1;

// LBUF.NET (60) - lbad : twoniv
twoniv lbad_inst
(
	.z /* OUT */ (lbad),
	.a /* IN */ (lbaw),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (61) - lba : nivu
assign lba = lbad;

// LBUF.NET (62) - lbbd : twoniv
twoniv lbbd_inst
(
	.z /* OUT */ (lbbd),
	.a /* IN */ (lbbw),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (63) - lbb : nivu
assign lbb = lbbd;

// LBUF.NET (67) - lbwad[0-8] : hdly1b
dly lbwad_from_0_to_8_inst_0
(
	.z /* OUT */ (lbwad_0),
	.a /* IN */ (lbwa_0),
	.sys_clk(sys_clk) // Generated
);
dly lbwad_from_0_to_8_inst_1
(
	.z /* OUT */ (lbwad_1),
	.a /* IN */ (lbwa_1),
	.sys_clk(sys_clk) // Generated
);
dly lbwad_from_0_to_8_inst_2
(
	.z /* OUT */ (lbwad_2),
	.a /* IN */ (lbwa_2),
	.sys_clk(sys_clk) // Generated
);
dly lbwad_from_0_to_8_inst_3
(
	.z /* OUT */ (lbwad_3),
	.a /* IN */ (lbwa_3),
	.sys_clk(sys_clk) // Generated
);
dly lbwad_from_0_to_8_inst_4
(
	.z /* OUT */ (lbwad_4),
	.a /* IN */ (lbwa_4),
	.sys_clk(sys_clk) // Generated
);
dly lbwad_from_0_to_8_inst_5
(
	.z /* OUT */ (lbwad_5),
	.a /* IN */ (lbwa_5),
	.sys_clk(sys_clk) // Generated
);
dly lbwad_from_0_to_8_inst_6
(
	.z /* OUT */ (lbwad_6),
	.a /* IN */ (lbwa_6),
	.sys_clk(sys_clk) // Generated
);
dly lbwad_from_0_to_8_inst_7
(
	.z /* OUT */ (lbwad_7),
	.a /* IN */ (lbwa_7),
	.sys_clk(sys_clk) // Generated
);
dly lbwad_from_0_to_8_inst_8
(
	.z /* OUT */ (lbwad_8),
	.a /* IN */ (lbwa_8),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (68) - lbrad[0-8] : hdly1b
dly lbrad_from_0_to_8_inst_0
(
	.z /* OUT */ (lbrad_0),
	.a /* IN */ (lbra_0),
	.sys_clk(sys_clk) // Generated
);
dly lbrad_from_0_to_8_inst_1
(
	.z /* OUT */ (lbrad_1),
	.a /* IN */ (lbra_1),
	.sys_clk(sys_clk) // Generated
);
dly lbrad_from_0_to_8_inst_2
(
	.z /* OUT */ (lbrad_2),
	.a /* IN */ (lbra_2),
	.sys_clk(sys_clk) // Generated
);
dly lbrad_from_0_to_8_inst_3
(
	.z /* OUT */ (lbrad_3),
	.a /* IN */ (lbra_3),
	.sys_clk(sys_clk) // Generated
);
dly lbrad_from_0_to_8_inst_4
(
	.z /* OUT */ (lbrad_4),
	.a /* IN */ (lbra_4),
	.sys_clk(sys_clk) // Generated
);
dly lbrad_from_0_to_8_inst_5
(
	.z /* OUT */ (lbrad_5),
	.a /* IN */ (lbra_5),
	.sys_clk(sys_clk) // Generated
);
dly lbrad_from_0_to_8_inst_6
(
	.z /* OUT */ (lbrad_6),
	.a /* IN */ (lbra_6),
	.sys_clk(sys_clk) // Generated
);
dly lbrad_from_0_to_8_inst_7
(
	.z /* OUT */ (lbrad_7),
	.a /* IN */ (lbra_7),
	.sys_clk(sys_clk) // Generated
);
dly lbrad_from_0_to_8_inst_8
(
	.z /* OUT */ (lbrad_8),
	.a /* IN */ (lbra_8),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (69) - lbaadi[0-8] : mx2p
assign lbaadi_0 = (lbaactive) ? lbrad_0 : lbwad_0;
assign lbaadi_1 = (lbaactive) ? lbrad_1 : lbwad_1;
assign lbaadi_2 = (lbaactive) ? lbrad_2 : lbwad_2;
assign lbaadi_3 = (lbaactive) ? lbrad_3 : lbwad_3;
assign lbaadi_4 = (lbaactive) ? lbrad_4 : lbwad_4;
assign lbaadi_5 = (lbaactive) ? lbrad_5 : lbwad_5;
assign lbaadi_6 = (lbaactive) ? lbrad_6 : lbwad_6;
assign lbaadi_7 = (lbaactive) ? lbrad_7 : lbwad_7;
assign lbaadi_8 = (lbaactive) ? lbrad_8 : lbwad_8;

// LBUF.NET (70) - lbbadi[0-8] : mx2p
assign lbbadi_0 = (lbbactive) ? lbrad_0 : lbwad_0;
assign lbbadi_1 = (lbbactive) ? lbrad_1 : lbwad_1;
assign lbbadi_2 = (lbbactive) ? lbrad_2 : lbwad_2;
assign lbbadi_3 = (lbbactive) ? lbrad_3 : lbwad_3;
assign lbbadi_4 = (lbbactive) ? lbrad_4 : lbwad_4;
assign lbbadi_5 = (lbbactive) ? lbrad_5 : lbwad_5;
assign lbbadi_6 = (lbbactive) ? lbrad_6 : lbwad_6;
assign lbbadi_7 = (lbbactive) ? lbrad_7 : lbwad_7;
assign lbbadi_8 = (lbbactive) ? lbrad_8 : lbwad_8;

// LBUF.NET (71) - lbaad[0-8] : niv
assign lbaad_0 = lbaadi_0;
assign lbaad_1 = lbaadi_1;
assign lbaad_2 = lbaadi_2;
assign lbaad_3 = lbaadi_3;
assign lbaad_4 = lbaadi_4;
assign lbaad_5 = lbaadi_5;
assign lbaad_6 = lbaadi_6;
assign lbaad_7 = lbaadi_7;
assign lbaad_8 = lbaadi_8;

// LBUF.NET (72) - lbbad[0-8] : niv
assign lbbad_0 = lbbadi_0;
assign lbbad_1 = lbbadi_1;
assign lbbad_2 = lbbadi_2;
assign lbbad_3 = lbbadi_3;
assign lbbad_4 = lbbadi_4;
assign lbbad_5 = lbbadi_5;
assign lbbad_6 = lbbadi_6;
assign lbbad_7 = lbbadi_7;
assign lbbad_8 = lbbadi_8;

// LBUF.NET (77) - dw[0-15] : mx2
assign dw_0 = (down) ? dout_16 : dout_0;
assign dw_1 = (down) ? dout_17 : dout_1;
assign dw_2 = (down) ? dout_18 : dout_2;
assign dw_3 = (down) ? dout_19 : dout_3;
assign dw_4 = (down) ? dout_20 : dout_4;
assign dw_5 = (down) ? dout_21 : dout_5;
assign dw_6 = (down) ? dout_22 : dout_6;
assign dw_7 = (down) ? dout_23 : dout_7;
assign dw_8 = (down) ? dout_24 : dout_8;
assign dw_9 = (down) ? dout_25 : dout_9;
assign dw_10 = (down) ? dout_26 : dout_10;
assign dw_11 = (down) ? dout_27 : dout_11;
assign dw_12 = (down) ? dout_28 : dout_12;
assign dw_13 = (down) ? dout_29 : dout_13;
assign dw_14 = (down) ? dout_30 : dout_14;
assign dw_15 = (down) ? dout_31 : dout_15;

// LBUF.NET (78) - dw[16-31] : mx2
assign dw_16 = (up) ? dout_16 : dout_0;
assign dw_17 = (up) ? dout_17 : dout_1;
assign dw_18 = (up) ? dout_18 : dout_2;
assign dw_19 = (up) ? dout_19 : dout_3;
assign dw_20 = (up) ? dout_20 : dout_4;
assign dw_21 = (up) ? dout_21 : dout_5;
assign dw_22 = (up) ? dout_22 : dout_6;
assign dw_23 = (up) ? dout_23 : dout_7;
assign dw_24 = (up) ? dout_24 : dout_8;
assign dw_25 = (up) ? dout_25 : dout_9;
assign dw_26 = (up) ? dout_26 : dout_10;
assign dw_27 = (up) ? dout_27 : dout_11;
assign dw_28 = (up) ? dout_28 : dout_12;
assign dw_29 = (up) ? dout_29 : dout_13;
assign dw_30 = (up) ? dout_30 : dout_14;
assign dw_31 = (up) ? dout_31 : dout_15;

// LBUF.NET (79) - littlend : iv
assign littlend = ~bigend;

// LBUF.NET (80) - down : an2h
assign down = aout_15 & bigend;

// LBUF.NET (81) - up : an2h
assign up = aout_15 & littlend;

// LBUF.NET (85) - lbrd[0-15] : mx2
assign lbrd_0_obuf = (lbufa) ? lbadl_in[0] : lbbdl_in[0];
assign lbrd_1_obuf = (lbufa) ? lbadl_in[1] : lbbdl_in[1];
assign lbrd_2_obuf = (lbufa) ? lbadl_in[2] : lbbdl_in[2];
assign lbrd_3_obuf = (lbufa) ? lbadl_in[3] : lbbdl_in[3];
assign lbrd_4_obuf = (lbufa) ? lbadl_in[4] : lbbdl_in[4];
assign lbrd_5_obuf = (lbufa) ? lbadl_in[5] : lbbdl_in[5];
assign lbrd_6_obuf = (lbufa) ? lbadl_in[6] : lbbdl_in[6];
assign lbrd_7_obuf = (lbufa) ? lbadl_in[7] : lbbdl_in[7];
assign lbrd_8_obuf = (lbufa) ? lbadl_in[8] : lbbdl_in[8];
assign lbrd_9_obuf = (lbufa) ? lbadl_in[9] : lbbdl_in[9];
assign lbrd_10_obuf = (lbufa) ? lbadl_in[10] : lbbdl_in[10];
assign lbrd_11_obuf = (lbufa) ? lbadl_in[11] : lbbdl_in[11];
assign lbrd_12_obuf = (lbufa) ? lbadl_in[12] : lbbdl_in[12];
assign lbrd_13_obuf = (lbufa) ? lbadl_in[13] : lbbdl_in[13];
assign lbrd_14_obuf = (lbufa) ? lbadl_in[14] : lbbdl_in[14];
assign lbrd_15_obuf = (lbufa) ? lbadl_in[15] : lbbdl_in[15];

// LBUF.NET (86) - lbrd[16-31] : mx2
assign lbrd_16_obuf = (lbufa) ? lbadh_in[0] : lbbdh_in[0];
assign lbrd_17_obuf = (lbufa) ? lbadh_in[1] : lbbdh_in[1];
assign lbrd_18_obuf = (lbufa) ? lbadh_in[2] : lbbdh_in[2];
assign lbrd_19_obuf = (lbufa) ? lbadh_in[3] : lbbdh_in[3];
assign lbrd_20_obuf = (lbufa) ? lbadh_in[4] : lbbdh_in[4];
assign lbrd_21_obuf = (lbufa) ? lbadh_in[5] : lbbdh_in[5];
assign lbrd_22_obuf = (lbufa) ? lbadh_in[6] : lbbdh_in[6];
assign lbrd_23_obuf = (lbufa) ? lbadh_in[7] : lbbdh_in[7];
assign lbrd_24_obuf = (lbufa) ? lbadh_in[8] : lbbdh_in[8];
assign lbrd_25_obuf = (lbufa) ? lbadh_in[9] : lbbdh_in[9];
assign lbrd_26_obuf = (lbufa) ? lbadh_in[10] : lbbdh_in[10];
assign lbrd_27_obuf = (lbufa) ? lbadh_in[11] : lbbdh_in[11];
assign lbrd_28_obuf = (lbufa) ? lbadh_in[12] : lbbdh_in[12];
assign lbrd_29_obuf = (lbufa) ? lbadh_in[13] : lbbdh_in[13];
assign lbrd_30_obuf = (lbufa) ? lbadh_in[14] : lbbdh_in[14];
assign lbrd_31_obuf = (lbufa) ? lbadh_in[15] : lbbdh_in[15];

// LBUF.NET (89) - ge1 : join
assign lbrd_d[0] = lbrd_0_obuf;
assign lbrd_d[1] = lbrd_1_obuf;
assign lbrd_d[2] = lbrd_2_obuf;
assign lbrd_d[3] = lbrd_3_obuf;
assign lbrd_d[4] = lbrd_4_obuf;
assign lbrd_d[5] = lbrd_5_obuf;
assign lbrd_d[6] = lbrd_6_obuf;
assign lbrd_d[7] = lbrd_7_obuf;
assign lbrd_d[8] = lbrd_8_obuf;
assign lbrd_d[9] = lbrd_9_obuf;
assign lbrd_d[10] = lbrd_10_obuf;
assign lbrd_d[11] = lbrd_11_obuf;
assign lbrd_d[12] = lbrd_12_obuf;
assign lbrd_d[13] = lbrd_13_obuf;
assign lbrd_d[14] = lbrd_14_obuf;
assign lbrd_d[15] = lbrd_15_obuf;
assign lbrd_d[16] = lbrd_16_obuf;
assign lbrd_d[17] = lbrd_17_obuf;
assign lbrd_d[18] = lbrd_18_obuf;
assign lbrd_d[19] = lbrd_19_obuf;
assign lbrd_d[20] = lbrd_20_obuf;
assign lbrd_d[21] = lbrd_21_obuf;
assign lbrd_d[22] = lbrd_22_obuf;
assign lbrd_d[23] = lbrd_23_obuf;
assign lbrd_d[24] = lbrd_24_obuf;
assign lbrd_d[25] = lbrd_25_obuf;
assign lbrd_d[26] = lbrd_26_obuf;
assign lbrd_d[27] = lbrd_27_obuf;
assign lbrd_d[28] = lbrd_28_obuf;
assign lbrd_d[29] = lbrd_29_obuf;
assign lbrd_d[30] = lbrd_30_obuf;
assign lbrd_d[31] = lbrd_31_obuf;

// LBUF.NET (90) - ge2 : dummy

// LBUF.NET (94) - rmwd[0-15] : mx2
assign rmwd_0 = (lbufb) ? lbadl_in[0] : lbbdl_in[0];
assign rmwd_1 = (lbufb) ? lbadl_in[1] : lbbdl_in[1];
assign rmwd_2 = (lbufb) ? lbadl_in[2] : lbbdl_in[2];
assign rmwd_3 = (lbufb) ? lbadl_in[3] : lbbdl_in[3];
assign rmwd_4 = (lbufb) ? lbadl_in[4] : lbbdl_in[4];
assign rmwd_5 = (lbufb) ? lbadl_in[5] : lbbdl_in[5];
assign rmwd_6 = (lbufb) ? lbadl_in[6] : lbbdl_in[6];
assign rmwd_7 = (lbufb) ? lbadl_in[7] : lbbdl_in[7];
assign rmwd_8 = (lbufb) ? lbadl_in[8] : lbbdl_in[8];
assign rmwd_9 = (lbufb) ? lbadl_in[9] : lbbdl_in[9];
assign rmwd_10 = (lbufb) ? lbadl_in[10] : lbbdl_in[10];
assign rmwd_11 = (lbufb) ? lbadl_in[11] : lbbdl_in[11];
assign rmwd_12 = (lbufb) ? lbadl_in[12] : lbbdl_in[12];
assign rmwd_13 = (lbufb) ? lbadl_in[13] : lbbdl_in[13];
assign rmwd_14 = (lbufb) ? lbadl_in[14] : lbbdl_in[14];
assign rmwd_15 = (lbufb) ? lbadl_in[15] : lbbdl_in[15];

// LBUF.NET (95) - rmwd[16-31] : mx2
assign rmwd_16 = (lbufb) ? lbadh_in[0] : lbbdh_in[0];
assign rmwd_17 = (lbufb) ? lbadh_in[1] : lbbdh_in[1];
assign rmwd_18 = (lbufb) ? lbadh_in[2] : lbbdh_in[2];
assign rmwd_19 = (lbufb) ? lbadh_in[3] : lbbdh_in[3];
assign rmwd_20 = (lbufb) ? lbadh_in[4] : lbbdh_in[4];
assign rmwd_21 = (lbufb) ? lbadh_in[5] : lbbdh_in[5];
assign rmwd_22 = (lbufb) ? lbadh_in[6] : lbbdh_in[6];
assign rmwd_23 = (lbufb) ? lbadh_in[7] : lbbdh_in[7];
assign rmwd_24 = (lbufb) ? lbadh_in[8] : lbbdh_in[8];
assign rmwd_25 = (lbufb) ? lbadh_in[9] : lbbdh_in[9];
assign rmwd_26 = (lbufb) ? lbadh_in[10] : lbbdh_in[10];
assign rmwd_27 = (lbufb) ? lbadh_in[11] : lbbdh_in[11];
assign rmwd_28 = (lbufb) ? lbadh_in[12] : lbbdh_in[12];
assign rmwd_29 = (lbufb) ? lbadh_in[13] : lbbdh_in[13];
assign rmwd_30 = (lbufb) ? lbadh_in[14] : lbbdh_in[14];
assign rmwd_31 = (lbufb) ? lbadh_in[15] : lbbdh_in[15];

// LBUF.NET (99) - rmwd1[0-31] : fd1q
fd1q rmwd1_from_0_to_31_inst_0
(
	.q /* OUT */ (rmwd1_0),
	.d /* IN */ (rmwd_0),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_1
(
	.q /* OUT */ (rmwd1_1),
	.d /* IN */ (rmwd_1),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_2
(
	.q /* OUT */ (rmwd1_2),
	.d /* IN */ (rmwd_2),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_3
(
	.q /* OUT */ (rmwd1_3),
	.d /* IN */ (rmwd_3),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_4
(
	.q /* OUT */ (rmwd1_4),
	.d /* IN */ (rmwd_4),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_5
(
	.q /* OUT */ (rmwd1_5),
	.d /* IN */ (rmwd_5),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_6
(
	.q /* OUT */ (rmwd1_6),
	.d /* IN */ (rmwd_6),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_7
(
	.q /* OUT */ (rmwd1_7),
	.d /* IN */ (rmwd_7),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_8
(
	.q /* OUT */ (rmwd1_8),
	.d /* IN */ (rmwd_8),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_9
(
	.q /* OUT */ (rmwd1_9),
	.d /* IN */ (rmwd_9),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_10
(
	.q /* OUT */ (rmwd1_10),
	.d /* IN */ (rmwd_10),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_11
(
	.q /* OUT */ (rmwd1_11),
	.d /* IN */ (rmwd_11),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_12
(
	.q /* OUT */ (rmwd1_12),
	.d /* IN */ (rmwd_12),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_13
(
	.q /* OUT */ (rmwd1_13),
	.d /* IN */ (rmwd_13),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_14
(
	.q /* OUT */ (rmwd1_14),
	.d /* IN */ (rmwd_14),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_15
(
	.q /* OUT */ (rmwd1_15),
	.d /* IN */ (rmwd_15),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_16
(
	.q /* OUT */ (rmwd1_16),
	.d /* IN */ (rmwd_16),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_17
(
	.q /* OUT */ (rmwd1_17),
	.d /* IN */ (rmwd_17),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_18
(
	.q /* OUT */ (rmwd1_18),
	.d /* IN */ (rmwd_18),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_19
(
	.q /* OUT */ (rmwd1_19),
	.d /* IN */ (rmwd_19),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_20
(
	.q /* OUT */ (rmwd1_20),
	.d /* IN */ (rmwd_20),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_21
(
	.q /* OUT */ (rmwd1_21),
	.d /* IN */ (rmwd_21),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_22
(
	.q /* OUT */ (rmwd1_22),
	.d /* IN */ (rmwd_22),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_23
(
	.q /* OUT */ (rmwd1_23),
	.d /* IN */ (rmwd_23),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_24
(
	.q /* OUT */ (rmwd1_24),
	.d /* IN */ (rmwd_24),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_25
(
	.q /* OUT */ (rmwd1_25),
	.d /* IN */ (rmwd_25),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_26
(
	.q /* OUT */ (rmwd1_26),
	.d /* IN */ (rmwd_26),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_27
(
	.q /* OUT */ (rmwd1_27),
	.d /* IN */ (rmwd_27),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_28
(
	.q /* OUT */ (rmwd1_28),
	.d /* IN */ (rmwd_28),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_29
(
	.q /* OUT */ (rmwd1_29),
	.d /* IN */ (rmwd_29),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_30
(
	.q /* OUT */ (rmwd1_30),
	.d /* IN */ (rmwd_30),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q rmwd1_from_0_to_31_inst_31
(
	.q /* OUT */ (rmwd1_31),
	.d /* IN */ (rmwd_31),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (106) - rmwd2[0] : sadd8
sadd8 rmwd2_index_0_inst
(
	.z_0 /* OUT */ (rmwd2_0),
	.z_1 /* OUT */ (rmwd2_1),
	.z_2 /* OUT */ (rmwd2_2),
	.z_3 /* OUT */ (rmwd2_3),
	.z_4 /* OUT */ (rmwd2_4),
	.z_5 /* OUT */ (rmwd2_5),
	.z_6 /* OUT */ (rmwd2_6),
	.z_7 /* OUT */ (rmwd2_7),
	.a_0 /* IN */ (rmwd1_0),
	.a_1 /* IN */ (rmwd1_1),
	.a_2 /* IN */ (rmwd1_2),
	.a_3 /* IN */ (rmwd1_3),
	.a_4 /* IN */ (rmwd1_4),
	.a_5 /* IN */ (rmwd1_5),
	.a_6 /* IN */ (rmwd1_6),
	.a_7 /* IN */ (rmwd1_7),
	.b_0 /* IN */ (lbwd_0),
	.b_1 /* IN */ (lbwd_1),
	.b_2 /* IN */ (lbwd_2),
	.b_3 /* IN */ (lbwd_3),
	.b_4 /* IN */ (lbwd_4),
	.b_5 /* IN */ (lbwd_5),
	.b_6 /* IN */ (lbwd_6),
	.b_7 /* IN */ (lbwd_7)
);

// LBUF.NET (107) - rmwd2[8] : sadd4
sadd4 rmwd2_index_8_inst
(
	.z_0 /* OUT */ (rmwd2_8),
	.z_1 /* OUT */ (rmwd2_9),
	.z_2 /* OUT */ (rmwd2_10),
	.z_3 /* OUT */ (rmwd2_11),
	.a_0 /* IN */ (rmwd1_8),
	.a_1 /* IN */ (rmwd1_9),
	.a_2 /* IN */ (rmwd1_10),
	.a_3 /* IN */ (rmwd1_11),
	.b_0 /* IN */ (lbwd_8),
	.b_1 /* IN */ (lbwd_9),
	.b_2 /* IN */ (lbwd_10),
	.b_3 /* IN */ (lbwd_11)
);

// LBUF.NET (108) - rmwd2[12] : sadd4
sadd4 rmwd2_index_12_inst
(
	.z_0 /* OUT */ (rmwd2_12),
	.z_1 /* OUT */ (rmwd2_13),
	.z_2 /* OUT */ (rmwd2_14),
	.z_3 /* OUT */ (rmwd2_15),
	.a_0 /* IN */ (rmwd1_12),
	.a_1 /* IN */ (rmwd1_13),
	.a_2 /* IN */ (rmwd1_14),
	.a_3 /* IN */ (rmwd1_15),
	.b_0 /* IN */ (lbwd_12),
	.b_1 /* IN */ (lbwd_13),
	.b_2 /* IN */ (lbwd_14),
	.b_3 /* IN */ (lbwd_15)
);

// LBUF.NET (109) - rmwd2[16] : sadd8
sadd8 rmwd2_index_16_inst
(
	.z_0 /* OUT */ (rmwd2_16),
	.z_1 /* OUT */ (rmwd2_17),
	.z_2 /* OUT */ (rmwd2_18),
	.z_3 /* OUT */ (rmwd2_19),
	.z_4 /* OUT */ (rmwd2_20),
	.z_5 /* OUT */ (rmwd2_21),
	.z_6 /* OUT */ (rmwd2_22),
	.z_7 /* OUT */ (rmwd2_23),
	.a_0 /* IN */ (rmwd1_16),
	.a_1 /* IN */ (rmwd1_17),
	.a_2 /* IN */ (rmwd1_18),
	.a_3 /* IN */ (rmwd1_19),
	.a_4 /* IN */ (rmwd1_20),
	.a_5 /* IN */ (rmwd1_21),
	.a_6 /* IN */ (rmwd1_22),
	.a_7 /* IN */ (rmwd1_23),
	.b_0 /* IN */ (lbwd_16),
	.b_1 /* IN */ (lbwd_17),
	.b_2 /* IN */ (lbwd_18),
	.b_3 /* IN */ (lbwd_19),
	.b_4 /* IN */ (lbwd_20),
	.b_5 /* IN */ (lbwd_21),
	.b_6 /* IN */ (lbwd_22),
	.b_7 /* IN */ (lbwd_23)
);

// LBUF.NET (110) - rmwd2[24] : sadd4
sadd4 rmwd2_index_24_inst
(
	.z_0 /* OUT */ (rmwd2_24),
	.z_1 /* OUT */ (rmwd2_25),
	.z_2 /* OUT */ (rmwd2_26),
	.z_3 /* OUT */ (rmwd2_27),
	.a_0 /* IN */ (rmwd1_24),
	.a_1 /* IN */ (rmwd1_25),
	.a_2 /* IN */ (rmwd1_26),
	.a_3 /* IN */ (rmwd1_27),
	.b_0 /* IN */ (lbwd_24),
	.b_1 /* IN */ (lbwd_25),
	.b_2 /* IN */ (lbwd_26),
	.b_3 /* IN */ (lbwd_27)
);

// LBUF.NET (111) - rmwd2[28] : sadd4
sadd4 rmwd2_index_28_inst
(
	.z_0 /* OUT */ (rmwd2_28),
	.z_1 /* OUT */ (rmwd2_29),
	.z_2 /* OUT */ (rmwd2_30),
	.z_3 /* OUT */ (rmwd2_31),
	.a_0 /* IN */ (rmwd1_28),
	.a_1 /* IN */ (rmwd1_29),
	.a_2 /* IN */ (rmwd1_30),
	.a_3 /* IN */ (rmwd1_31),
	.b_0 /* IN */ (lbwd_28),
	.b_1 /* IN */ (lbwd_29),
	.b_2 /* IN */ (lbwd_30),
	.b_3 /* IN */ (lbwd_31)
);

// LBUF.NET (120) - wd[0-31] : mx4p
mx4 wd_from_0_to_31_inst_0
(
	.z /* OUT */ (wd_0),
	.a0 /* IN */ (lbwd_0),
	.a1 /* IN */ (rmwd2_0),
	.a2 /* IN */ (dw_0),
	.a3 /* IN */ (dw_0),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_1
(
	.z /* OUT */ (wd_1),
	.a0 /* IN */ (lbwd_1),
	.a1 /* IN */ (rmwd2_1),
	.a2 /* IN */ (dw_1),
	.a3 /* IN */ (dw_1),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_2
(
	.z /* OUT */ (wd_2),
	.a0 /* IN */ (lbwd_2),
	.a1 /* IN */ (rmwd2_2),
	.a2 /* IN */ (dw_2),
	.a3 /* IN */ (dw_2),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_3
(
	.z /* OUT */ (wd_3),
	.a0 /* IN */ (lbwd_3),
	.a1 /* IN */ (rmwd2_3),
	.a2 /* IN */ (dw_3),
	.a3 /* IN */ (dw_3),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_4
(
	.z /* OUT */ (wd_4),
	.a0 /* IN */ (lbwd_4),
	.a1 /* IN */ (rmwd2_4),
	.a2 /* IN */ (dw_4),
	.a3 /* IN */ (dw_4),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_5
(
	.z /* OUT */ (wd_5),
	.a0 /* IN */ (lbwd_5),
	.a1 /* IN */ (rmwd2_5),
	.a2 /* IN */ (dw_5),
	.a3 /* IN */ (dw_5),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_6
(
	.z /* OUT */ (wd_6),
	.a0 /* IN */ (lbwd_6),
	.a1 /* IN */ (rmwd2_6),
	.a2 /* IN */ (dw_6),
	.a3 /* IN */ (dw_6),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_7
(
	.z /* OUT */ (wd_7),
	.a0 /* IN */ (lbwd_7),
	.a1 /* IN */ (rmwd2_7),
	.a2 /* IN */ (dw_7),
	.a3 /* IN */ (dw_7),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_8
(
	.z /* OUT */ (wd_8),
	.a0 /* IN */ (lbwd_8),
	.a1 /* IN */ (rmwd2_8),
	.a2 /* IN */ (dw_8),
	.a3 /* IN */ (dw_8),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_9
(
	.z /* OUT */ (wd_9),
	.a0 /* IN */ (lbwd_9),
	.a1 /* IN */ (rmwd2_9),
	.a2 /* IN */ (dw_9),
	.a3 /* IN */ (dw_9),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_10
(
	.z /* OUT */ (wd_10),
	.a0 /* IN */ (lbwd_10),
	.a1 /* IN */ (rmwd2_10),
	.a2 /* IN */ (dw_10),
	.a3 /* IN */ (dw_10),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_11
(
	.z /* OUT */ (wd_11),
	.a0 /* IN */ (lbwd_11),
	.a1 /* IN */ (rmwd2_11),
	.a2 /* IN */ (dw_11),
	.a3 /* IN */ (dw_11),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_12
(
	.z /* OUT */ (wd_12),
	.a0 /* IN */ (lbwd_12),
	.a1 /* IN */ (rmwd2_12),
	.a2 /* IN */ (dw_12),
	.a3 /* IN */ (dw_12),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_13
(
	.z /* OUT */ (wd_13),
	.a0 /* IN */ (lbwd_13),
	.a1 /* IN */ (rmwd2_13),
	.a2 /* IN */ (dw_13),
	.a3 /* IN */ (dw_13),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_14
(
	.z /* OUT */ (wd_14),
	.a0 /* IN */ (lbwd_14),
	.a1 /* IN */ (rmwd2_14),
	.a2 /* IN */ (dw_14),
	.a3 /* IN */ (dw_14),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_15
(
	.z /* OUT */ (wd_15),
	.a0 /* IN */ (lbwd_15),
	.a1 /* IN */ (rmwd2_15),
	.a2 /* IN */ (dw_15),
	.a3 /* IN */ (dw_15),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_16
(
	.z /* OUT */ (wd_16),
	.a0 /* IN */ (lbwd_16),
	.a1 /* IN */ (rmwd2_16),
	.a2 /* IN */ (dw_16),
	.a3 /* IN */ (dw_16),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_17
(
	.z /* OUT */ (wd_17),
	.a0 /* IN */ (lbwd_17),
	.a1 /* IN */ (rmwd2_17),
	.a2 /* IN */ (dw_17),
	.a3 /* IN */ (dw_17),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_18
(
	.z /* OUT */ (wd_18),
	.a0 /* IN */ (lbwd_18),
	.a1 /* IN */ (rmwd2_18),
	.a2 /* IN */ (dw_18),
	.a3 /* IN */ (dw_18),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_19
(
	.z /* OUT */ (wd_19),
	.a0 /* IN */ (lbwd_19),
	.a1 /* IN */ (rmwd2_19),
	.a2 /* IN */ (dw_19),
	.a3 /* IN */ (dw_19),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_20
(
	.z /* OUT */ (wd_20),
	.a0 /* IN */ (lbwd_20),
	.a1 /* IN */ (rmwd2_20),
	.a2 /* IN */ (dw_20),
	.a3 /* IN */ (dw_20),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_21
(
	.z /* OUT */ (wd_21),
	.a0 /* IN */ (lbwd_21),
	.a1 /* IN */ (rmwd2_21),
	.a2 /* IN */ (dw_21),
	.a3 /* IN */ (dw_21),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_22
(
	.z /* OUT */ (wd_22),
	.a0 /* IN */ (lbwd_22),
	.a1 /* IN */ (rmwd2_22),
	.a2 /* IN */ (dw_22),
	.a3 /* IN */ (dw_22),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_23
(
	.z /* OUT */ (wd_23),
	.a0 /* IN */ (lbwd_23),
	.a1 /* IN */ (rmwd2_23),
	.a2 /* IN */ (dw_23),
	.a3 /* IN */ (dw_23),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_24
(
	.z /* OUT */ (wd_24),
	.a0 /* IN */ (lbwd_24),
	.a1 /* IN */ (rmwd2_24),
	.a2 /* IN */ (dw_24),
	.a3 /* IN */ (dw_24),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_25
(
	.z /* OUT */ (wd_25),
	.a0 /* IN */ (lbwd_25),
	.a1 /* IN */ (rmwd2_25),
	.a2 /* IN */ (dw_25),
	.a3 /* IN */ (dw_25),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_26
(
	.z /* OUT */ (wd_26),
	.a0 /* IN */ (lbwd_26),
	.a1 /* IN */ (rmwd2_26),
	.a2 /* IN */ (dw_26),
	.a3 /* IN */ (dw_26),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_27
(
	.z /* OUT */ (wd_27),
	.a0 /* IN */ (lbwd_27),
	.a1 /* IN */ (rmwd2_27),
	.a2 /* IN */ (dw_27),
	.a3 /* IN */ (dw_27),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_28
(
	.z /* OUT */ (wd_28),
	.a0 /* IN */ (lbwd_28),
	.a1 /* IN */ (rmwd2_28),
	.a2 /* IN */ (dw_28),
	.a3 /* IN */ (dw_28),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_29
(
	.z /* OUT */ (wd_29),
	.a0 /* IN */ (lbwd_29),
	.a1 /* IN */ (rmwd2_29),
	.a2 /* IN */ (dw_29),
	.a3 /* IN */ (dw_29),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_30
(
	.z /* OUT */ (wd_30),
	.a0 /* IN */ (lbwd_30),
	.a1 /* IN */ (rmwd2_30),
	.a2 /* IN */ (dw_30),
	.a3 /* IN */ (dw_30),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);
mx4 wd_from_0_to_31_inst_31
(
	.z /* OUT */ (wd_31),
	.a0 /* IN */ (lbwd_31),
	.a1 /* IN */ (rmwd2_31),
	.a2 /* IN */ (dw_31),
	.a3 /* IN */ (dw_31),
	.s0 /* IN */ (rmw),
	.s1 /* IN */ (extadd)
);

// LBUF.NET (123) - extadd : ivu
assign extadd = ~lben;

// LBUF.NET (124) - wdil : join
assign wdil[0] = wd_0;
assign wdil[1] = wd_1;
assign wdil[2] = wd_2;
assign wdil[3] = wd_3;
assign wdil[4] = wd_4;
assign wdil[5] = wd_5;
assign wdil[6] = wd_6;
assign wdil[7] = wd_7;
assign wdil[8] = wd_8;
assign wdil[9] = wd_9;
assign wdil[10] = wd_10;
assign wdil[11] = wd_11;
assign wdil[12] = wd_12;
assign wdil[13] = wd_13;
assign wdil[14] = wd_14;
assign wdil[15] = wd_15;

// LBUF.NET (125) - wdih : join
assign wdih[0] = wd_16;
assign wdih[1] = wd_17;
assign wdih[2] = wd_18;
assign wdih[3] = wd_19;
assign wdih[4] = wd_20;
assign wdih[5] = wd_21;
assign wdih[6] = wd_22;
assign wdih[7] = wd_23;
assign wdih[8] = wd_24;
assign wdih[9] = wd_25;
assign wdih[10] = wd_26;
assign wdih[11] = wd_27;
assign wdih[12] = wd_28;
assign wdih[13] = wd_29;
assign wdih[14] = wd_30;
assign wdih[15] = wd_31;

// LBUF.NET (133) - writes : ivm
assign writes = ~reads;

// LBUF.NET (134) - lbr[0-1] : iv
assign lbr_0 = ~lbwe_0;
assign lbr_1 = ~lbwe_1;

// LBUF.NET (136) - wra0 : nd2
assign wra0 = ~(lba & reads);

// LBUF.NET (137) - wra1l : nd3
assign wra1l = ~(lbufb & lben & lbr_0);

// LBUF.NET (138) - wra1h : nd3
assign wra1h = ~(lbufb & lben & lbr_1);

// LBUF.NET (139) - wra2l : nd3
assign wra2l = ~(lba & writes & aout_1);

// LBUF.NET (140) - wra2h : nd4
assign wra2h = ~(lba & writes & notsiz_2 & nota_1);

// LBUF.NET (141) - wrali : an4
assign wrali = wra0 & wra1l & wra2l & notaactive;

// LBUF.NET (142) - wrahi : an4
assign wrahi = wra0 & wra1h & wra2h & notaactive;

// LBUF.NET (143) - wral : nivu
assign wral = wrali;

// LBUF.NET (144) - wrah : nivu
assign wrah = wrahi;

// LBUF.NET (146) - wrb0 : nd2
assign wrb0 = ~(lbb & reads);

// LBUF.NET (147) - wrb1l : nd3
assign wrb1l = ~(lbufa & lben & lbr_0);

// LBUF.NET (148) - wrb1h : nd3
assign wrb1h = ~(lbufa & lben & lbr_1);

// LBUF.NET (149) - wrb2l : nd3
assign wrb2l = ~(lbb & writes & aout_1);

// LBUF.NET (150) - wrb2h : nd4
assign wrb2h = ~(lbb & writes & notsiz_2 & nota_1);

// LBUF.NET (151) - wrbli : an4
assign wrbli = wrb0 & wrb1l & wrb2l & notbactive;

// LBUF.NET (152) - wrbhi : an4
assign wrbhi = wrb0 & wrb1h & wrb2h & notbactive;

// LBUF.NET (153) - wrbl : nivu
assign wrbl = wrbli;

// LBUF.NET (154) - wrbh : nivu
assign wrbh = wrbhi;

// LBUF.NET (156) - lbadl : ts
assign ts_local_pe_432_a0_out = wdil[0];
assign ts_local_pe_432_a0_oe = wral;
assign ts_local_pe_433_a0_out = wdil[1];
assign ts_local_pe_433_a0_oe = wral;
assign ts_local_pe_434_a0_out = wdil[2];
assign ts_local_pe_434_a0_oe = wral;
assign ts_local_pe_435_a0_out = wdil[3];
assign ts_local_pe_435_a0_oe = wral;
assign ts_local_pe_436_a0_out = wdil[4];
assign ts_local_pe_436_a0_oe = wral;
assign ts_local_pe_437_a0_out = wdil[5];
assign ts_local_pe_437_a0_oe = wral;
assign ts_local_pe_438_a0_out = wdil[6];
assign ts_local_pe_438_a0_oe = wral;
assign ts_local_pe_439_a0_out = wdil[7];
assign ts_local_pe_439_a0_oe = wral;
assign ts_local_pe_440_a0_out = wdil[8];
assign ts_local_pe_440_a0_oe = wral;
assign ts_local_pe_441_a0_out = wdil[9];
assign ts_local_pe_441_a0_oe = wral;
assign ts_local_pe_442_a0_out = wdil[10];
assign ts_local_pe_442_a0_oe = wral;
assign ts_local_pe_443_a0_out = wdil[11];
assign ts_local_pe_443_a0_oe = wral;
assign ts_local_pe_444_a0_out = wdil[12];
assign ts_local_pe_444_a0_oe = wral;
assign ts_local_pe_445_a0_out = wdil[13];
assign ts_local_pe_445_a0_oe = wral;
assign ts_local_pe_446_a0_out = wdil[14];
assign ts_local_pe_446_a0_oe = wral;
assign ts_local_pe_447_a0_out = wdil[15];
assign ts_local_pe_447_a0_oe = wral;

// LBUF.NET (157) - lbadh : ts
assign ts_local_pe_448_a0_out = wdih[0];
assign ts_local_pe_448_a0_oe = wrah;
assign ts_local_pe_449_a0_out = wdih[1];
assign ts_local_pe_449_a0_oe = wrah;
assign ts_local_pe_450_a0_out = wdih[2];
assign ts_local_pe_450_a0_oe = wrah;
assign ts_local_pe_451_a0_out = wdih[3];
assign ts_local_pe_451_a0_oe = wrah;
assign ts_local_pe_452_a0_out = wdih[4];
assign ts_local_pe_452_a0_oe = wrah;
assign ts_local_pe_453_a0_out = wdih[5];
assign ts_local_pe_453_a0_oe = wrah;
assign ts_local_pe_454_a0_out = wdih[6];
assign ts_local_pe_454_a0_oe = wrah;
assign ts_local_pe_455_a0_out = wdih[7];
assign ts_local_pe_455_a0_oe = wrah;
assign ts_local_pe_456_a0_out = wdih[8];
assign ts_local_pe_456_a0_oe = wrah;
assign ts_local_pe_457_a0_out = wdih[9];
assign ts_local_pe_457_a0_oe = wrah;
assign ts_local_pe_458_a0_out = wdih[10];
assign ts_local_pe_458_a0_oe = wrah;
assign ts_local_pe_459_a0_out = wdih[11];
assign ts_local_pe_459_a0_oe = wrah;
assign ts_local_pe_460_a0_out = wdih[12];
assign ts_local_pe_460_a0_oe = wrah;
assign ts_local_pe_461_a0_out = wdih[13];
assign ts_local_pe_461_a0_oe = wrah;
assign ts_local_pe_462_a0_out = wdih[14];
assign ts_local_pe_462_a0_oe = wrah;
assign ts_local_pe_463_a0_out = wdih[15];
assign ts_local_pe_463_a0_oe = wrah;

// LBUF.NET (158) - lbbdl : ts
assign ts_local_pe_464_a0_out = wdil[0];
assign ts_local_pe_464_a0_oe = wrbl;
assign ts_local_pe_465_a0_out = wdil[1];
assign ts_local_pe_465_a0_oe = wrbl;
assign ts_local_pe_466_a0_out = wdil[2];
assign ts_local_pe_466_a0_oe = wrbl;
assign ts_local_pe_467_a0_out = wdil[3];
assign ts_local_pe_467_a0_oe = wrbl;
assign ts_local_pe_468_a0_out = wdil[4];
assign ts_local_pe_468_a0_oe = wrbl;
assign ts_local_pe_469_a0_out = wdil[5];
assign ts_local_pe_469_a0_oe = wrbl;
assign ts_local_pe_470_a0_out = wdil[6];
assign ts_local_pe_470_a0_oe = wrbl;
assign ts_local_pe_471_a0_out = wdil[7];
assign ts_local_pe_471_a0_oe = wrbl;
assign ts_local_pe_472_a0_out = wdil[8];
assign ts_local_pe_472_a0_oe = wrbl;
assign ts_local_pe_473_a0_out = wdil[9];
assign ts_local_pe_473_a0_oe = wrbl;
assign ts_local_pe_474_a0_out = wdil[10];
assign ts_local_pe_474_a0_oe = wrbl;
assign ts_local_pe_475_a0_out = wdil[11];
assign ts_local_pe_475_a0_oe = wrbl;
assign ts_local_pe_476_a0_out = wdil[12];
assign ts_local_pe_476_a0_oe = wrbl;
assign ts_local_pe_477_a0_out = wdil[13];
assign ts_local_pe_477_a0_oe = wrbl;
assign ts_local_pe_478_a0_out = wdil[14];
assign ts_local_pe_478_a0_oe = wrbl;
assign ts_local_pe_479_a0_out = wdil[15];
assign ts_local_pe_479_a0_oe = wrbl;

// LBUF.NET (159) - lbbdh : ts
assign ts_local_pe_480_a0_out = wdih[0];
assign ts_local_pe_480_a0_oe = wrbh;
assign ts_local_pe_481_a0_out = wdih[1];
assign ts_local_pe_481_a0_oe = wrbh;
assign ts_local_pe_482_a0_out = wdih[2];
assign ts_local_pe_482_a0_oe = wrbh;
assign ts_local_pe_483_a0_out = wdih[3];
assign ts_local_pe_483_a0_oe = wrbh;
assign ts_local_pe_484_a0_out = wdih[4];
assign ts_local_pe_484_a0_oe = wrbh;
assign ts_local_pe_485_a0_out = wdih[5];
assign ts_local_pe_485_a0_oe = wrbh;
assign ts_local_pe_486_a0_out = wdih[6];
assign ts_local_pe_486_a0_oe = wrbh;
assign ts_local_pe_487_a0_out = wdih[7];
assign ts_local_pe_487_a0_oe = wrbh;
assign ts_local_pe_488_a0_out = wdih[8];
assign ts_local_pe_488_a0_oe = wrbh;
assign ts_local_pe_489_a0_out = wdih[9];
assign ts_local_pe_489_a0_oe = wrbh;
assign ts_local_pe_490_a0_out = wdih[10];
assign ts_local_pe_490_a0_oe = wrbh;
assign ts_local_pe_491_a0_out = wdih[11];
assign ts_local_pe_491_a0_oe = wrbh;
assign ts_local_pe_492_a0_out = wdih[12];
assign ts_local_pe_492_a0_oe = wrbh;
assign ts_local_pe_493_a0_out = wdih[13];
assign ts_local_pe_493_a0_oe = wrbh;
assign ts_local_pe_494_a0_out = wdih[14];
assign ts_local_pe_494_a0_oe = wrbh;
assign ts_local_pe_495_a0_out = wdih[15];
assign ts_local_pe_495_a0_oe = wrbh;

// LBUF.NET (163) - lbai : join
assign lbai[0] = lbaad_0;
assign lbai[1] = lbaad_1;
assign lbai[2] = lbaad_2;
assign lbai[3] = lbaad_3;
assign lbai[4] = lbaad_4;
assign lbai[5] = lbaad_5;
assign lbai[6] = lbaad_6;
assign lbai[7] = lbaad_7;
assign lbai[8] = lbaad_8;

// LBUF.NET (164) - lbbi : join
assign lbbi[0] = lbbad_0;
assign lbbi[1] = lbbad_1;
assign lbbi[2] = lbbad_2;
assign lbbi[3] = lbbad_3;
assign lbbi[4] = lbbad_4;
assign lbbi[5] = lbbad_5;
assign lbbi[6] = lbbad_6;
assign lbbi[7] = lbbad_7;
assign lbbi[8] = lbbad_8;

// LBUF.NET (167) - lbufal : ab8616a
ab8616a lbufal_inst
(
	.z_out /* BUS */ ({ts_local_pe_432_a1_out,ts_local_pe_433_a1_out,ts_local_pe_434_a1_out,ts_local_pe_435_a1_out,ts_local_pe_436_a1_out,ts_local_pe_437_a1_out,ts_local_pe_438_a1_out,ts_local_pe_439_a1_out,ts_local_pe_440_a1_out,ts_local_pe_441_a1_out,ts_local_pe_442_a1_out,ts_local_pe_443_a1_out,ts_local_pe_444_a1_out,ts_local_pe_445_a1_out,ts_local_pe_446_a1_out,ts_local_pe_447_a1_out}),
	.z_oe /* BUS */ ({ts_local_pe_432_a1_oe,ts_local_pe_433_a1_oe,ts_local_pe_434_a1_oe,ts_local_pe_435_a1_oe,ts_local_pe_436_a1_oe,ts_local_pe_437_a1_oe,ts_local_pe_438_a1_oe,ts_local_pe_439_a1_oe,ts_local_pe_440_a1_oe,ts_local_pe_441_a1_oe,ts_local_pe_442_a1_oe,ts_local_pe_443_a1_oe,ts_local_pe_444_a1_oe,ts_local_pe_445_a1_oe,ts_local_pe_446_a1_oe,ts_local_pe_447_a1_oe}),
	.z_in /* BUS */ ({ts_local_pe_432_a1_in,ts_local_pe_433_a1_in,ts_local_pe_434_a1_in,ts_local_pe_435_a1_in,ts_local_pe_436_a1_in,ts_local_pe_437_a1_in,ts_local_pe_438_a1_in,ts_local_pe_439_a1_in,ts_local_pe_440_a1_in,ts_local_pe_441_a1_in,ts_local_pe_442_a1_in,ts_local_pe_443_a1_in,ts_local_pe_444_a1_in,ts_local_pe_445_a1_in,ts_local_pe_446_a1_in,ts_local_pe_447_a1_in}),
	.cen /* IN */ (cea_0),
	.rw /* IN */ (wea_0),
	.a /* IN */ ({lbai[0],lbai[1],lbai[2],lbai[3],lbai[4],lbai[5],lbai[6],lbai[7],lbai[8]}),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (168) - lbufah : ab8616a
ab8616a lbufah_inst
(
	.z_out /* BUS */ ({ts_local_pe_448_a1_out,ts_local_pe_449_a1_out,ts_local_pe_450_a1_out,ts_local_pe_451_a1_out,ts_local_pe_452_a1_out,ts_local_pe_453_a1_out,ts_local_pe_454_a1_out,ts_local_pe_455_a1_out,ts_local_pe_456_a1_out,ts_local_pe_457_a1_out,ts_local_pe_458_a1_out,ts_local_pe_459_a1_out,ts_local_pe_460_a1_out,ts_local_pe_461_a1_out,ts_local_pe_462_a1_out,ts_local_pe_463_a1_out}),
	.z_oe /* BUS */ ({ts_local_pe_448_a1_oe,ts_local_pe_449_a1_oe,ts_local_pe_450_a1_oe,ts_local_pe_451_a1_oe,ts_local_pe_452_a1_oe,ts_local_pe_453_a1_oe,ts_local_pe_454_a1_oe,ts_local_pe_455_a1_oe,ts_local_pe_456_a1_oe,ts_local_pe_457_a1_oe,ts_local_pe_458_a1_oe,ts_local_pe_459_a1_oe,ts_local_pe_460_a1_oe,ts_local_pe_461_a1_oe,ts_local_pe_462_a1_oe,ts_local_pe_463_a1_oe}),
	.z_in /* BUS */ ({ts_local_pe_448_a1_in,ts_local_pe_449_a1_in,ts_local_pe_450_a1_in,ts_local_pe_451_a1_in,ts_local_pe_452_a1_in,ts_local_pe_453_a1_in,ts_local_pe_454_a1_in,ts_local_pe_455_a1_in,ts_local_pe_456_a1_in,ts_local_pe_457_a1_in,ts_local_pe_458_a1_in,ts_local_pe_459_a1_in,ts_local_pe_460_a1_in,ts_local_pe_461_a1_in,ts_local_pe_462_a1_in,ts_local_pe_463_a1_in}),
	.cen /* IN */ (cea_1),
	.rw /* IN */ (wea_1),
	.a /* IN */ ({lbai[0],lbai[1],lbai[2],lbai[3],lbai[4],lbai[5],lbai[6],lbai[7],lbai[8]}),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (169) - lbufbl : ab8616a
ab8616a lbufbl_inst
(
	.z_out /* BUS */ ({ts_local_pe_464_a1_out,ts_local_pe_465_a1_out,ts_local_pe_466_a1_out,ts_local_pe_467_a1_out,ts_local_pe_468_a1_out,ts_local_pe_469_a1_out,ts_local_pe_470_a1_out,ts_local_pe_471_a1_out,ts_local_pe_472_a1_out,ts_local_pe_473_a1_out,ts_local_pe_474_a1_out,ts_local_pe_475_a1_out,ts_local_pe_476_a1_out,ts_local_pe_477_a1_out,ts_local_pe_478_a1_out,ts_local_pe_479_a1_out}),
	.z_oe /* BUS */ ({ts_local_pe_464_a1_oe,ts_local_pe_465_a1_oe,ts_local_pe_466_a1_oe,ts_local_pe_467_a1_oe,ts_local_pe_468_a1_oe,ts_local_pe_469_a1_oe,ts_local_pe_470_a1_oe,ts_local_pe_471_a1_oe,ts_local_pe_472_a1_oe,ts_local_pe_473_a1_oe,ts_local_pe_474_a1_oe,ts_local_pe_475_a1_oe,ts_local_pe_476_a1_oe,ts_local_pe_477_a1_oe,ts_local_pe_478_a1_oe,ts_local_pe_479_a1_oe}),
	.z_in /* BUS */ ({ts_local_pe_464_a1_in,ts_local_pe_465_a1_in,ts_local_pe_466_a1_in,ts_local_pe_467_a1_in,ts_local_pe_468_a1_in,ts_local_pe_469_a1_in,ts_local_pe_470_a1_in,ts_local_pe_471_a1_in,ts_local_pe_472_a1_in,ts_local_pe_473_a1_in,ts_local_pe_474_a1_in,ts_local_pe_475_a1_in,ts_local_pe_476_a1_in,ts_local_pe_477_a1_in,ts_local_pe_478_a1_in,ts_local_pe_479_a1_in}),
	.cen /* IN */ (ceb_0),
	.rw /* IN */ (web_0),
	.a /* IN */ ({lbbi[0],lbbi[1],lbbi[2],lbbi[3],lbbi[4],lbbi[5],lbbi[6],lbbi[7],lbbi[8]}),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (170) - lbufbh : ab8616a
ab8616a lbufbh_inst
(
	.z_out /* BUS */ ({ts_local_pe_480_a1_out,ts_local_pe_481_a1_out,ts_local_pe_482_a1_out,ts_local_pe_483_a1_out,ts_local_pe_484_a1_out,ts_local_pe_485_a1_out,ts_local_pe_486_a1_out,ts_local_pe_487_a1_out,ts_local_pe_488_a1_out,ts_local_pe_489_a1_out,ts_local_pe_490_a1_out,ts_local_pe_491_a1_out,ts_local_pe_492_a1_out,ts_local_pe_493_a1_out,ts_local_pe_494_a1_out,ts_local_pe_495_a1_out}),
	.z_oe /* BUS */ ({ts_local_pe_480_a1_oe,ts_local_pe_481_a1_oe,ts_local_pe_482_a1_oe,ts_local_pe_483_a1_oe,ts_local_pe_484_a1_oe,ts_local_pe_485_a1_oe,ts_local_pe_486_a1_oe,ts_local_pe_487_a1_oe,ts_local_pe_488_a1_oe,ts_local_pe_489_a1_oe,ts_local_pe_490_a1_oe,ts_local_pe_491_a1_oe,ts_local_pe_492_a1_oe,ts_local_pe_493_a1_oe,ts_local_pe_494_a1_oe,ts_local_pe_495_a1_oe}),
	.z_in /* BUS */ ({ts_local_pe_480_a1_in,ts_local_pe_481_a1_in,ts_local_pe_482_a1_in,ts_local_pe_483_a1_in,ts_local_pe_484_a1_in,ts_local_pe_485_a1_in,ts_local_pe_486_a1_in,ts_local_pe_487_a1_in,ts_local_pe_488_a1_in,ts_local_pe_489_a1_in,ts_local_pe_490_a1_in,ts_local_pe_491_a1_in,ts_local_pe_492_a1_in,ts_local_pe_493_a1_in,ts_local_pe_494_a1_in,ts_local_pe_495_a1_in}),
	.cen /* IN */ (ceb_1),
	.rw /* IN */ (web_1),
	.a /* IN */ ({lbbi[0],lbbi[1],lbbi[2],lbbi[3],lbbi[4],lbbi[5],lbbi[6],lbbi[7],lbbi[8]}),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (172) - ncst : ivh
assign ncst = ~clk_0;

// LBUF.NET (174) - ge1 : tie1
assign nvcst = 1'b1;

// LBUF.NET (175) - ge2 : dummy

// LBUF.NET (177) - cea0 : nd2
assign cea0 = ~(lbufb & lben);

// LBUF.NET (178) - cea1 : iv
assign cea1 = ~lba;

// LBUF.NET (179) - cea2 : nd2
assign cea2 = ~(cea0 & cea1);

// LBUF.NET (180) - cea[0-1] : anr23
assign cea_0 = ~( (cea2 & ncst) | (aactive & nvcst) );
assign cea_1 = ~( (cea2 & ncst) | (aactive & nvcst) );

// LBUF.NET (182) - ceb0 : nd2
assign ceb0 = ~(lbufa & lben);

// LBUF.NET (183) - ceb1 : iv
assign ceb1 = ~lbb;

// LBUF.NET (184) - ceb2 : nd2
assign ceb2 = ~(ceb0 & ceb1);

// LBUF.NET (185) - ceb[0-1] : anr23
assign ceb_0 = ~( (ceb2 & ncst) | (bactive & nvcst) );
assign ceb_1 = ~( (ceb2 & ncst) | (bactive & nvcst) );

// LBUF.NET (187) - wea00 : nd2
assign wea00 = ~(lbwe_0 & lbufb);

// LBUF.NET (188) - wea01 : nd3
assign wea01 = ~(nota_1 & lba & writes);

// LBUF.NET (189) - wea02 : nd2
assign wea02 = ~(lbufa & bgw);

// LBUF.NET (190) - wead[0] : an3
assign wead_0 = wea00 & wea01 & wea02;

// LBUF.NET (192) - wea10 : nd2
assign wea10 = ~(lbwe_1 & lbufb);

// LBUF.NET (193) - wea11 : nd3
assign wea11 = ~(aout_1 & lba & writes);

// LBUF.NET (194) - wea12 : nd6
assign wea12 = ~(aout_15 & nota_1 & siz_2 & lba & writes & vcc);

// LBUF.NET (195) - wead[1] : an4
assign wead_1 = wea10 & wea11 & wea12 & wea02;

// LBUF.NET (197) - web00 : nd2
assign web00 = ~(lbwe_0 & lbufa);

// LBUF.NET (198) - web01 : nd3
assign web01 = ~(nota_1 & lbb & writes);

// LBUF.NET (199) - web02 : nd2
assign web02 = ~(lbufb & bgw);

// LBUF.NET (200) - webd[0] : an3
assign webd_0 = web00 & web01 & web02;

// LBUF.NET (202) - web10 : nd2
assign web10 = ~(lbwe_1 & lbufa);

// LBUF.NET (203) - web11 : nd3
assign web11 = ~(aout_1 & lbb & writes);

// LBUF.NET (204) - web12 : nd6
assign web12 = ~(aout_15 & nota_1 & siz_2 & lbb & writes & vcc);

// LBUF.NET (205) - webd[1] : an4
assign webd_1 = web10 & web11 & web12 & web02;

// LBUF.NET (207) - wea[0-1] : twoniv
twoniv wea_from_0_to_1_inst_0
(
	.z /* OUT */ (wea_0),
	.a /* IN */ (wead_0),
	.sys_clk(sys_clk) // Generated
);
twoniv wea_from_0_to_1_inst_1
(
	.z /* OUT */ (wea_1),
	.a /* IN */ (wead_1),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (208) - web[0-1] : twoniv
twoniv web_from_0_to_1_inst_0
(
	.z /* OUT */ (web_0),
	.a /* IN */ (webd_0),
	.sys_clk(sys_clk) // Generated
);
twoniv web_from_0_to_1_inst_1
(
	.z /* OUT */ (web_1),
	.a /* IN */ (webd_1),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (210) - notaactive : nd2
assign notaactive = ~(lbufa & vactive);

// LBUF.NET (211) - notbactive : nd2
assign notbactive = ~(lbufb & vactive);

// LBUF.NET (212) - aactive : iv
assign aactive = ~notaactive;

// LBUF.NET (213) - bactive : iv
assign bactive = ~notbactive;

// LBUF.NET (215) - vcc : tie1
assign vcc = 1'b1;

// LBUF.NET (216) - notsiz[2] : iv
assign notsiz_2 = ~siz_2;

// LBUF.NET (220) - lbdi[0-15] : mx4
mx4 lbdi_from_0_to_15_inst_0
(
	.z /* OUT */ (lbdi_0),
	.a0 /* IN */ (lbadl_in[0]),
	.a1 /* IN */ (lbadh_in[0]),
	.a2 /* IN */ (lbbdl_in[0]),
	.a3 /* IN */ (lbbdh_in[0]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_1
(
	.z /* OUT */ (lbdi_1),
	.a0 /* IN */ (lbadl_in[1]),
	.a1 /* IN */ (lbadh_in[1]),
	.a2 /* IN */ (lbbdl_in[1]),
	.a3 /* IN */ (lbbdh_in[1]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_2
(
	.z /* OUT */ (lbdi_2),
	.a0 /* IN */ (lbadl_in[2]),
	.a1 /* IN */ (lbadh_in[2]),
	.a2 /* IN */ (lbbdl_in[2]),
	.a3 /* IN */ (lbbdh_in[2]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_3
(
	.z /* OUT */ (lbdi_3),
	.a0 /* IN */ (lbadl_in[3]),
	.a1 /* IN */ (lbadh_in[3]),
	.a2 /* IN */ (lbbdl_in[3]),
	.a3 /* IN */ (lbbdh_in[3]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_4
(
	.z /* OUT */ (lbdi_4),
	.a0 /* IN */ (lbadl_in[4]),
	.a1 /* IN */ (lbadh_in[4]),
	.a2 /* IN */ (lbbdl_in[4]),
	.a3 /* IN */ (lbbdh_in[4]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_5
(
	.z /* OUT */ (lbdi_5),
	.a0 /* IN */ (lbadl_in[5]),
	.a1 /* IN */ (lbadh_in[5]),
	.a2 /* IN */ (lbbdl_in[5]),
	.a3 /* IN */ (lbbdh_in[5]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_6
(
	.z /* OUT */ (lbdi_6),
	.a0 /* IN */ (lbadl_in[6]),
	.a1 /* IN */ (lbadh_in[6]),
	.a2 /* IN */ (lbbdl_in[6]),
	.a3 /* IN */ (lbbdh_in[6]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_7
(
	.z /* OUT */ (lbdi_7),
	.a0 /* IN */ (lbadl_in[7]),
	.a1 /* IN */ (lbadh_in[7]),
	.a2 /* IN */ (lbbdl_in[7]),
	.a3 /* IN */ (lbbdh_in[7]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_8
(
	.z /* OUT */ (lbdi_8),
	.a0 /* IN */ (lbadl_in[8]),
	.a1 /* IN */ (lbadh_in[8]),
	.a2 /* IN */ (lbbdl_in[8]),
	.a3 /* IN */ (lbbdh_in[8]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_9
(
	.z /* OUT */ (lbdi_9),
	.a0 /* IN */ (lbadl_in[9]),
	.a1 /* IN */ (lbadh_in[9]),
	.a2 /* IN */ (lbbdl_in[9]),
	.a3 /* IN */ (lbbdh_in[9]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_10
(
	.z /* OUT */ (lbdi_10),
	.a0 /* IN */ (lbadl_in[10]),
	.a1 /* IN */ (lbadh_in[10]),
	.a2 /* IN */ (lbbdl_in[10]),
	.a3 /* IN */ (lbbdh_in[10]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_11
(
	.z /* OUT */ (lbdi_11),
	.a0 /* IN */ (lbadl_in[11]),
	.a1 /* IN */ (lbadh_in[11]),
	.a2 /* IN */ (lbbdl_in[11]),
	.a3 /* IN */ (lbbdh_in[11]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_12
(
	.z /* OUT */ (lbdi_12),
	.a0 /* IN */ (lbadl_in[12]),
	.a1 /* IN */ (lbadh_in[12]),
	.a2 /* IN */ (lbbdl_in[12]),
	.a3 /* IN */ (lbbdh_in[12]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_13
(
	.z /* OUT */ (lbdi_13),
	.a0 /* IN */ (lbadl_in[13]),
	.a1 /* IN */ (lbadh_in[13]),
	.a2 /* IN */ (lbbdl_in[13]),
	.a3 /* IN */ (lbbdh_in[13]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_14
(
	.z /* OUT */ (lbdi_14),
	.a0 /* IN */ (lbadl_in[14]),
	.a1 /* IN */ (lbadh_in[14]),
	.a2 /* IN */ (lbbdl_in[14]),
	.a3 /* IN */ (lbbdh_in[14]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);
mx4 lbdi_from_0_to_15_inst_15
(
	.z /* OUT */ (lbdi_15),
	.a0 /* IN */ (lbadl_in[15]),
	.a1 /* IN */ (lbadh_in[15]),
	.a2 /* IN */ (lbbdl_in[15]),
	.a3 /* IN */ (lbbdh_in[15]),
	.s0 /* IN */ (aout_1),
	.s1 /* IN */ (lbb)
);

// LBUF.NET (225) - lbd[0-15] : fd1q
fd1q lbd_from_0_to_15_inst_0
(
	.q /* OUT */ (lbd_0),
	.d /* IN */ (lbdi_0),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_1
(
	.q /* OUT */ (lbd_1),
	.d /* IN */ (lbdi_1),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_2
(
	.q /* OUT */ (lbd_2),
	.d /* IN */ (lbdi_2),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_3
(
	.q /* OUT */ (lbd_3),
	.d /* IN */ (lbdi_3),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_4
(
	.q /* OUT */ (lbd_4),
	.d /* IN */ (lbdi_4),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_5
(
	.q /* OUT */ (lbd_5),
	.d /* IN */ (lbdi_5),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_6
(
	.q /* OUT */ (lbd_6),
	.d /* IN */ (lbdi_6),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_7
(
	.q /* OUT */ (lbd_7),
	.d /* IN */ (lbdi_7),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_8
(
	.q /* OUT */ (lbd_8),
	.d /* IN */ (lbdi_8),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_9
(
	.q /* OUT */ (lbd_9),
	.d /* IN */ (lbdi_9),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_10
(
	.q /* OUT */ (lbd_10),
	.d /* IN */ (lbdi_10),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_11
(
	.q /* OUT */ (lbd_11),
	.d /* IN */ (lbdi_11),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_12
(
	.q /* OUT */ (lbd_12),
	.d /* IN */ (lbdi_12),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_13
(
	.q /* OUT */ (lbd_13),
	.d /* IN */ (lbdi_13),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_14
(
	.q /* OUT */ (lbd_14),
	.d /* IN */ (lbdi_14),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);
fd1q lbd_from_0_to_15_inst_15
(
	.q /* OUT */ (lbd_15),
	.d /* IN */ (lbdi_15),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (227) - lbdeni : nd2
assign lbdeni = ~(wra0 & wrb0);

// LBUF.NET (228) - lbden : nivh
assign lbden = lbdeni;

// LBUF.NET (229) - dr[0-15] : ts
assign dr_0_out = lbd_0;
assign dr_0_oe = lbden;
assign dr_1_out = lbd_1;
assign dr_1_oe = lbden;
assign dr_2_out = lbd_2;
assign dr_2_oe = lbden;
assign dr_3_out = lbd_3;
assign dr_3_oe = lbden;
assign dr_4_out = lbd_4;
assign dr_4_oe = lbden;
assign dr_5_out = lbd_5;
assign dr_5_oe = lbden;
assign dr_6_out = lbd_6;
assign dr_6_oe = lbden;
assign dr_7_out = lbd_7;
assign dr_7_oe = lbden;
assign dr_8_out = lbd_8;
assign dr_8_oe = lbden;
assign dr_9_out = lbd_9;
assign dr_9_oe = lbden;
assign dr_10_out = lbd_10;
assign dr_10_oe = lbden;
assign dr_11_out = lbd_11;
assign dr_11_oe = lbden;
assign dr_12_out = lbd_12;
assign dr_12_oe = lbden;
assign dr_13_out = lbd_13;
assign dr_13_oe = lbden;
assign dr_14_out = lbd_14;
assign dr_14_oe = lbden;
assign dr_15_out = lbd_15;
assign dr_15_oe = lbden;

// LBUF.NET (233) - bgc[0-15] : ldp1q
ldp1q bgc_from_0_to_15_inst_0
(
	.q /* OUT */ (bgc_0),
	.d /* IN */ (dw_0),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_1
(
	.q /* OUT */ (bgc_1),
	.d /* IN */ (dw_1),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_2
(
	.q /* OUT */ (bgc_2),
	.d /* IN */ (dw_2),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_3
(
	.q /* OUT */ (bgc_3),
	.d /* IN */ (dw_3),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_4
(
	.q /* OUT */ (bgc_4),
	.d /* IN */ (dw_4),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_5
(
	.q /* OUT */ (bgc_5),
	.d /* IN */ (dw_5),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_6
(
	.q /* OUT */ (bgc_6),
	.d /* IN */ (dw_6),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_7
(
	.q /* OUT */ (bgc_7),
	.d /* IN */ (dw_7),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_8
(
	.q /* OUT */ (bgc_8),
	.d /* IN */ (dw_8),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_9
(
	.q /* OUT */ (bgc_9),
	.d /* IN */ (dw_9),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_10
(
	.q /* OUT */ (bgc_10),
	.d /* IN */ (dw_10),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_11
(
	.q /* OUT */ (bgc_11),
	.d /* IN */ (dw_11),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_12
(
	.q /* OUT */ (bgc_12),
	.d /* IN */ (dw_12),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_13
(
	.q /* OUT */ (bgc_13),
	.d /* IN */ (dw_13),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_14
(
	.q /* OUT */ (bgc_14),
	.d /* IN */ (dw_14),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q bgc_from_0_to_15_inst_15
(
	.q /* OUT */ (bgc_15),
	.d /* IN */ (dw_15),
	.g /* IN */ (bgwr),
	.sys_clk(sys_clk) // Generated
);

// LBUF.NET (234) - bgc : join
assign bgc[0] = bgc_0;
assign bgc[1] = bgc_1;
assign bgc[2] = bgc_2;
assign bgc[3] = bgc_3;
assign bgc[4] = bgc_4;
assign bgc[5] = bgc_5;
assign bgc[6] = bgc_6;
assign bgc[7] = bgc_7;
assign bgc[8] = bgc_8;
assign bgc[9] = bgc_9;
assign bgc[10] = bgc_10;
assign bgc[11] = bgc_11;
assign bgc[12] = bgc_12;
assign bgc[13] = bgc_13;
assign bgc[14] = bgc_14;
assign bgc[15] = bgc_15;

// LBUF.NET (238) - bwadl : ts
assign ts_local_pe_432_a2_out = bgc[0];
assign ts_local_pe_432_a2_oe = bgwa;
assign ts_local_pe_433_a2_out = bgc[1];
assign ts_local_pe_433_a2_oe = bgwa;
assign ts_local_pe_434_a2_out = bgc[2];
assign ts_local_pe_434_a2_oe = bgwa;
assign ts_local_pe_435_a2_out = bgc[3];
assign ts_local_pe_435_a2_oe = bgwa;
assign ts_local_pe_436_a2_out = bgc[4];
assign ts_local_pe_436_a2_oe = bgwa;
assign ts_local_pe_437_a2_out = bgc[5];
assign ts_local_pe_437_a2_oe = bgwa;
assign ts_local_pe_438_a2_out = bgc[6];
assign ts_local_pe_438_a2_oe = bgwa;
assign ts_local_pe_439_a2_out = bgc[7];
assign ts_local_pe_439_a2_oe = bgwa;
assign ts_local_pe_440_a2_out = bgc[8];
assign ts_local_pe_440_a2_oe = bgwa;
assign ts_local_pe_441_a2_out = bgc[9];
assign ts_local_pe_441_a2_oe = bgwa;
assign ts_local_pe_442_a2_out = bgc[10];
assign ts_local_pe_442_a2_oe = bgwa;
assign ts_local_pe_443_a2_out = bgc[11];
assign ts_local_pe_443_a2_oe = bgwa;
assign ts_local_pe_444_a2_out = bgc[12];
assign ts_local_pe_444_a2_oe = bgwa;
assign ts_local_pe_445_a2_out = bgc[13];
assign ts_local_pe_445_a2_oe = bgwa;
assign ts_local_pe_446_a2_out = bgc[14];
assign ts_local_pe_446_a2_oe = bgwa;
assign ts_local_pe_447_a2_out = bgc[15];
assign ts_local_pe_447_a2_oe = bgwa;

// LBUF.NET (239) - bwadh : ts
assign ts_local_pe_448_a2_out = bgc[0];
assign ts_local_pe_448_a2_oe = bgwa;
assign ts_local_pe_449_a2_out = bgc[1];
assign ts_local_pe_449_a2_oe = bgwa;
assign ts_local_pe_450_a2_out = bgc[2];
assign ts_local_pe_450_a2_oe = bgwa;
assign ts_local_pe_451_a2_out = bgc[3];
assign ts_local_pe_451_a2_oe = bgwa;
assign ts_local_pe_452_a2_out = bgc[4];
assign ts_local_pe_452_a2_oe = bgwa;
assign ts_local_pe_453_a2_out = bgc[5];
assign ts_local_pe_453_a2_oe = bgwa;
assign ts_local_pe_454_a2_out = bgc[6];
assign ts_local_pe_454_a2_oe = bgwa;
assign ts_local_pe_455_a2_out = bgc[7];
assign ts_local_pe_455_a2_oe = bgwa;
assign ts_local_pe_456_a2_out = bgc[8];
assign ts_local_pe_456_a2_oe = bgwa;
assign ts_local_pe_457_a2_out = bgc[9];
assign ts_local_pe_457_a2_oe = bgwa;
assign ts_local_pe_458_a2_out = bgc[10];
assign ts_local_pe_458_a2_oe = bgwa;
assign ts_local_pe_459_a2_out = bgc[11];
assign ts_local_pe_459_a2_oe = bgwa;
assign ts_local_pe_460_a2_out = bgc[12];
assign ts_local_pe_460_a2_oe = bgwa;
assign ts_local_pe_461_a2_out = bgc[13];
assign ts_local_pe_461_a2_oe = bgwa;
assign ts_local_pe_462_a2_out = bgc[14];
assign ts_local_pe_462_a2_oe = bgwa;
assign ts_local_pe_463_a2_out = bgc[15];
assign ts_local_pe_463_a2_oe = bgwa;

// LBUF.NET (240) - bwbdl : ts
assign ts_local_pe_464_a2_out = bgc[0];
assign ts_local_pe_464_a2_oe = bgwb;
assign ts_local_pe_465_a2_out = bgc[1];
assign ts_local_pe_465_a2_oe = bgwb;
assign ts_local_pe_466_a2_out = bgc[2];
assign ts_local_pe_466_a2_oe = bgwb;
assign ts_local_pe_467_a2_out = bgc[3];
assign ts_local_pe_467_a2_oe = bgwb;
assign ts_local_pe_468_a2_out = bgc[4];
assign ts_local_pe_468_a2_oe = bgwb;
assign ts_local_pe_469_a2_out = bgc[5];
assign ts_local_pe_469_a2_oe = bgwb;
assign ts_local_pe_470_a2_out = bgc[6];
assign ts_local_pe_470_a2_oe = bgwb;
assign ts_local_pe_471_a2_out = bgc[7];
assign ts_local_pe_471_a2_oe = bgwb;
assign ts_local_pe_472_a2_out = bgc[8];
assign ts_local_pe_472_a2_oe = bgwb;
assign ts_local_pe_473_a2_out = bgc[9];
assign ts_local_pe_473_a2_oe = bgwb;
assign ts_local_pe_474_a2_out = bgc[10];
assign ts_local_pe_474_a2_oe = bgwb;
assign ts_local_pe_475_a2_out = bgc[11];
assign ts_local_pe_475_a2_oe = bgwb;
assign ts_local_pe_476_a2_out = bgc[12];
assign ts_local_pe_476_a2_oe = bgwb;
assign ts_local_pe_477_a2_out = bgc[13];
assign ts_local_pe_477_a2_oe = bgwb;
assign ts_local_pe_478_a2_out = bgc[14];
assign ts_local_pe_478_a2_oe = bgwb;
assign ts_local_pe_479_a2_out = bgc[15];
assign ts_local_pe_479_a2_oe = bgwb;

// LBUF.NET (241) - bwbdh : ts
assign ts_local_pe_480_a2_out = bgc[0];
assign ts_local_pe_480_a2_oe = bgwb;
assign ts_local_pe_481_a2_out = bgc[1];
assign ts_local_pe_481_a2_oe = bgwb;
assign ts_local_pe_482_a2_out = bgc[2];
assign ts_local_pe_482_a2_oe = bgwb;
assign ts_local_pe_483_a2_out = bgc[3];
assign ts_local_pe_483_a2_oe = bgwb;
assign ts_local_pe_484_a2_out = bgc[4];
assign ts_local_pe_484_a2_oe = bgwb;
assign ts_local_pe_485_a2_out = bgc[5];
assign ts_local_pe_485_a2_oe = bgwb;
assign ts_local_pe_486_a2_out = bgc[6];
assign ts_local_pe_486_a2_oe = bgwb;
assign ts_local_pe_487_a2_out = bgc[7];
assign ts_local_pe_487_a2_oe = bgwb;
assign ts_local_pe_488_a2_out = bgc[8];
assign ts_local_pe_488_a2_oe = bgwb;
assign ts_local_pe_489_a2_out = bgc[9];
assign ts_local_pe_489_a2_oe = bgwb;
assign ts_local_pe_490_a2_out = bgc[10];
assign ts_local_pe_490_a2_oe = bgwb;
assign ts_local_pe_491_a2_out = bgc[11];
assign ts_local_pe_491_a2_oe = bgwb;
assign ts_local_pe_492_a2_out = bgc[12];
assign ts_local_pe_492_a2_oe = bgwb;
assign ts_local_pe_493_a2_out = bgc[13];
assign ts_local_pe_493_a2_oe = bgwb;
assign ts_local_pe_494_a2_out = bgc[14];
assign ts_local_pe_494_a2_oe = bgwb;
assign ts_local_pe_495_a2_out = bgc[15];
assign ts_local_pe_495_a2_oe = bgwb;

// LBUF.NET (243) - bgwa : an2u
assign bgwa = bgw & aactive;

// LBUF.NET (244) - bgwb : an2u
assign bgwb = bgw & bactive;

// --- Compiler-generated local PE for BUS lbadl<0>
assign lbadl_out[0] = (ts_local_pe_432_a0_oe & ts_local_pe_432_a0_out ) | (ts_local_pe_432_a1_oe & ts_local_pe_432_a1_out ) | (ts_local_pe_432_a2_oe & ts_local_pe_432_a2_out ) | 1'b0;
assign lbadl_oe[0] = ts_local_pe_432_a0_oe | ts_local_pe_432_a1_oe | ts_local_pe_432_a2_oe;
assign ts_local_pe_432_a0_in = lbadl_in[0];
assign ts_local_pe_432_a1_in = lbadl_in[0];
assign ts_local_pe_432_a2_in = lbadl_in[0];

// --- Compiler-generated local PE for BUS lbadl<1>
assign lbadl_out[1] = (ts_local_pe_433_a0_oe & ts_local_pe_433_a0_out ) | (ts_local_pe_433_a1_oe & ts_local_pe_433_a1_out ) | (ts_local_pe_433_a2_oe & ts_local_pe_433_a2_out ) | 1'b0;
assign lbadl_oe[1] = ts_local_pe_433_a0_oe | ts_local_pe_433_a1_oe | ts_local_pe_433_a2_oe;
assign ts_local_pe_433_a0_in = lbadl_in[1];
assign ts_local_pe_433_a1_in = lbadl_in[1];
assign ts_local_pe_433_a2_in = lbadl_in[1];

// --- Compiler-generated local PE for BUS lbadl<2>
assign lbadl_out[2] = (ts_local_pe_434_a0_oe & ts_local_pe_434_a0_out ) | (ts_local_pe_434_a1_oe & ts_local_pe_434_a1_out ) | (ts_local_pe_434_a2_oe & ts_local_pe_434_a2_out ) | 1'b0;
assign lbadl_oe[2] = ts_local_pe_434_a0_oe | ts_local_pe_434_a1_oe | ts_local_pe_434_a2_oe;
assign ts_local_pe_434_a0_in = lbadl_in[2];
assign ts_local_pe_434_a1_in = lbadl_in[2];
assign ts_local_pe_434_a2_in = lbadl_in[2];

// --- Compiler-generated local PE for BUS lbadl<3>
assign lbadl_out[3] = (ts_local_pe_435_a0_oe & ts_local_pe_435_a0_out ) | (ts_local_pe_435_a1_oe & ts_local_pe_435_a1_out ) | (ts_local_pe_435_a2_oe & ts_local_pe_435_a2_out ) | 1'b0;
assign lbadl_oe[3] = ts_local_pe_435_a0_oe | ts_local_pe_435_a1_oe | ts_local_pe_435_a2_oe;
assign ts_local_pe_435_a0_in = lbadl_in[3];
assign ts_local_pe_435_a1_in = lbadl_in[3];
assign ts_local_pe_435_a2_in = lbadl_in[3];

// --- Compiler-generated local PE for BUS lbadl<4>
assign lbadl_out[4] = (ts_local_pe_436_a0_oe & ts_local_pe_436_a0_out ) | (ts_local_pe_436_a1_oe & ts_local_pe_436_a1_out ) | (ts_local_pe_436_a2_oe & ts_local_pe_436_a2_out ) | 1'b0;
assign lbadl_oe[4] = ts_local_pe_436_a0_oe | ts_local_pe_436_a1_oe | ts_local_pe_436_a2_oe;
assign ts_local_pe_436_a0_in = lbadl_in[4];
assign ts_local_pe_436_a1_in = lbadl_in[4];
assign ts_local_pe_436_a2_in = lbadl_in[4];

// --- Compiler-generated local PE for BUS lbadl<5>
assign lbadl_out[5] = (ts_local_pe_437_a0_oe & ts_local_pe_437_a0_out ) | (ts_local_pe_437_a1_oe & ts_local_pe_437_a1_out ) | (ts_local_pe_437_a2_oe & ts_local_pe_437_a2_out ) | 1'b0;
assign lbadl_oe[5] = ts_local_pe_437_a0_oe | ts_local_pe_437_a1_oe | ts_local_pe_437_a2_oe;
assign ts_local_pe_437_a0_in = lbadl_in[5];
assign ts_local_pe_437_a1_in = lbadl_in[5];
assign ts_local_pe_437_a2_in = lbadl_in[5];

// --- Compiler-generated local PE for BUS lbadl<6>
assign lbadl_out[6] = (ts_local_pe_438_a0_oe & ts_local_pe_438_a0_out ) | (ts_local_pe_438_a1_oe & ts_local_pe_438_a1_out ) | (ts_local_pe_438_a2_oe & ts_local_pe_438_a2_out ) | 1'b0;
assign lbadl_oe[6] = ts_local_pe_438_a0_oe | ts_local_pe_438_a1_oe | ts_local_pe_438_a2_oe;
assign ts_local_pe_438_a0_in = lbadl_in[6];
assign ts_local_pe_438_a1_in = lbadl_in[6];
assign ts_local_pe_438_a2_in = lbadl_in[6];

// --- Compiler-generated local PE for BUS lbadl<7>
assign lbadl_out[7] = (ts_local_pe_439_a0_oe & ts_local_pe_439_a0_out ) | (ts_local_pe_439_a1_oe & ts_local_pe_439_a1_out ) | (ts_local_pe_439_a2_oe & ts_local_pe_439_a2_out ) | 1'b0;
assign lbadl_oe[7] = ts_local_pe_439_a0_oe | ts_local_pe_439_a1_oe | ts_local_pe_439_a2_oe;
assign ts_local_pe_439_a0_in = lbadl_in[7];
assign ts_local_pe_439_a1_in = lbadl_in[7];
assign ts_local_pe_439_a2_in = lbadl_in[7];

// --- Compiler-generated local PE for BUS lbadl<8>
assign lbadl_out[8] = (ts_local_pe_440_a0_oe & ts_local_pe_440_a0_out ) | (ts_local_pe_440_a1_oe & ts_local_pe_440_a1_out ) | (ts_local_pe_440_a2_oe & ts_local_pe_440_a2_out ) | 1'b0;
assign lbadl_oe[8] = ts_local_pe_440_a0_oe | ts_local_pe_440_a1_oe | ts_local_pe_440_a2_oe;
assign ts_local_pe_440_a0_in = lbadl_in[8];
assign ts_local_pe_440_a1_in = lbadl_in[8];
assign ts_local_pe_440_a2_in = lbadl_in[8];

// --- Compiler-generated local PE for BUS lbadl<9>
assign lbadl_out[9] = (ts_local_pe_441_a0_oe & ts_local_pe_441_a0_out ) | (ts_local_pe_441_a1_oe & ts_local_pe_441_a1_out ) | (ts_local_pe_441_a2_oe & ts_local_pe_441_a2_out ) | 1'b0;
assign lbadl_oe[9] = ts_local_pe_441_a0_oe | ts_local_pe_441_a1_oe | ts_local_pe_441_a2_oe;
assign ts_local_pe_441_a0_in = lbadl_in[9];
assign ts_local_pe_441_a1_in = lbadl_in[9];
assign ts_local_pe_441_a2_in = lbadl_in[9];

// --- Compiler-generated local PE for BUS lbadl<10>
assign lbadl_out[10] = (ts_local_pe_442_a0_oe & ts_local_pe_442_a0_out ) | (ts_local_pe_442_a1_oe & ts_local_pe_442_a1_out ) | (ts_local_pe_442_a2_oe & ts_local_pe_442_a2_out ) | 1'b0;
assign lbadl_oe[10] = ts_local_pe_442_a0_oe | ts_local_pe_442_a1_oe | ts_local_pe_442_a2_oe;
assign ts_local_pe_442_a0_in = lbadl_in[10];
assign ts_local_pe_442_a1_in = lbadl_in[10];
assign ts_local_pe_442_a2_in = lbadl_in[10];

// --- Compiler-generated local PE for BUS lbadl<11>
assign lbadl_out[11] = (ts_local_pe_443_a0_oe & ts_local_pe_443_a0_out ) | (ts_local_pe_443_a1_oe & ts_local_pe_443_a1_out ) | (ts_local_pe_443_a2_oe & ts_local_pe_443_a2_out ) | 1'b0;
assign lbadl_oe[11] = ts_local_pe_443_a0_oe | ts_local_pe_443_a1_oe | ts_local_pe_443_a2_oe;
assign ts_local_pe_443_a0_in = lbadl_in[11];
assign ts_local_pe_443_a1_in = lbadl_in[11];
assign ts_local_pe_443_a2_in = lbadl_in[11];

// --- Compiler-generated local PE for BUS lbadl<12>
assign lbadl_out[12] = (ts_local_pe_444_a0_oe & ts_local_pe_444_a0_out ) | (ts_local_pe_444_a1_oe & ts_local_pe_444_a1_out ) | (ts_local_pe_444_a2_oe & ts_local_pe_444_a2_out ) | 1'b0;
assign lbadl_oe[12] = ts_local_pe_444_a0_oe | ts_local_pe_444_a1_oe | ts_local_pe_444_a2_oe;
assign ts_local_pe_444_a0_in = lbadl_in[12];
assign ts_local_pe_444_a1_in = lbadl_in[12];
assign ts_local_pe_444_a2_in = lbadl_in[12];

// --- Compiler-generated local PE for BUS lbadl<13>
assign lbadl_out[13] = (ts_local_pe_445_a0_oe & ts_local_pe_445_a0_out ) | (ts_local_pe_445_a1_oe & ts_local_pe_445_a1_out ) | (ts_local_pe_445_a2_oe & ts_local_pe_445_a2_out ) | 1'b0;
assign lbadl_oe[13] = ts_local_pe_445_a0_oe | ts_local_pe_445_a1_oe | ts_local_pe_445_a2_oe;
assign ts_local_pe_445_a0_in = lbadl_in[13];
assign ts_local_pe_445_a1_in = lbadl_in[13];
assign ts_local_pe_445_a2_in = lbadl_in[13];

// --- Compiler-generated local PE for BUS lbadl<14>
assign lbadl_out[14] = (ts_local_pe_446_a0_oe & ts_local_pe_446_a0_out ) | (ts_local_pe_446_a1_oe & ts_local_pe_446_a1_out ) | (ts_local_pe_446_a2_oe & ts_local_pe_446_a2_out ) | 1'b0;
assign lbadl_oe[14] = ts_local_pe_446_a0_oe | ts_local_pe_446_a1_oe | ts_local_pe_446_a2_oe;
assign ts_local_pe_446_a0_in = lbadl_in[14];
assign ts_local_pe_446_a1_in = lbadl_in[14];
assign ts_local_pe_446_a2_in = lbadl_in[14];

// --- Compiler-generated local PE for BUS lbadl<15>
assign lbadl_out[15] = (ts_local_pe_447_a0_oe & ts_local_pe_447_a0_out ) | (ts_local_pe_447_a1_oe & ts_local_pe_447_a1_out ) | (ts_local_pe_447_a2_oe & ts_local_pe_447_a2_out ) | 1'b0;
assign lbadl_oe[15] = ts_local_pe_447_a0_oe | ts_local_pe_447_a1_oe | ts_local_pe_447_a2_oe;
assign ts_local_pe_447_a0_in = lbadl_in[15];
assign ts_local_pe_447_a1_in = lbadl_in[15];
assign ts_local_pe_447_a2_in = lbadl_in[15];

// --- Compiler-generated local PE for BUS lbadh<0>
assign lbadh_out[0] = (ts_local_pe_448_a0_oe & ts_local_pe_448_a0_out ) | (ts_local_pe_448_a1_oe & ts_local_pe_448_a1_out ) | (ts_local_pe_448_a2_oe & ts_local_pe_448_a2_out ) | 1'b0;
assign lbadh_oe[0] = ts_local_pe_448_a0_oe | ts_local_pe_448_a1_oe | ts_local_pe_448_a2_oe;
assign ts_local_pe_448_a0_in = lbadh_in[0];
assign ts_local_pe_448_a1_in = lbadh_in[0];
assign ts_local_pe_448_a2_in = lbadh_in[0];

// --- Compiler-generated local PE for BUS lbadh<1>
assign lbadh_out[1] = (ts_local_pe_449_a0_oe & ts_local_pe_449_a0_out ) | (ts_local_pe_449_a1_oe & ts_local_pe_449_a1_out ) | (ts_local_pe_449_a2_oe & ts_local_pe_449_a2_out ) | 1'b0;
assign lbadh_oe[1] = ts_local_pe_449_a0_oe | ts_local_pe_449_a1_oe | ts_local_pe_449_a2_oe;
assign ts_local_pe_449_a0_in = lbadh_in[1];
assign ts_local_pe_449_a1_in = lbadh_in[1];
assign ts_local_pe_449_a2_in = lbadh_in[1];

// --- Compiler-generated local PE for BUS lbadh<2>
assign lbadh_out[2] = (ts_local_pe_450_a0_oe & ts_local_pe_450_a0_out ) | (ts_local_pe_450_a1_oe & ts_local_pe_450_a1_out ) | (ts_local_pe_450_a2_oe & ts_local_pe_450_a2_out ) | 1'b0;
assign lbadh_oe[2] = ts_local_pe_450_a0_oe | ts_local_pe_450_a1_oe | ts_local_pe_450_a2_oe;
assign ts_local_pe_450_a0_in = lbadh_in[2];
assign ts_local_pe_450_a1_in = lbadh_in[2];
assign ts_local_pe_450_a2_in = lbadh_in[2];

// --- Compiler-generated local PE for BUS lbadh<3>
assign lbadh_out[3] = (ts_local_pe_451_a0_oe & ts_local_pe_451_a0_out ) | (ts_local_pe_451_a1_oe & ts_local_pe_451_a1_out ) | (ts_local_pe_451_a2_oe & ts_local_pe_451_a2_out ) | 1'b0;
assign lbadh_oe[3] = ts_local_pe_451_a0_oe | ts_local_pe_451_a1_oe | ts_local_pe_451_a2_oe;
assign ts_local_pe_451_a0_in = lbadh_in[3];
assign ts_local_pe_451_a1_in = lbadh_in[3];
assign ts_local_pe_451_a2_in = lbadh_in[3];

// --- Compiler-generated local PE for BUS lbadh<4>
assign lbadh_out[4] = (ts_local_pe_452_a0_oe & ts_local_pe_452_a0_out ) | (ts_local_pe_452_a1_oe & ts_local_pe_452_a1_out ) | (ts_local_pe_452_a2_oe & ts_local_pe_452_a2_out ) | 1'b0;
assign lbadh_oe[4] = ts_local_pe_452_a0_oe | ts_local_pe_452_a1_oe | ts_local_pe_452_a2_oe;
assign ts_local_pe_452_a0_in = lbadh_in[4];
assign ts_local_pe_452_a1_in = lbadh_in[4];
assign ts_local_pe_452_a2_in = lbadh_in[4];

// --- Compiler-generated local PE for BUS lbadh<5>
assign lbadh_out[5] = (ts_local_pe_453_a0_oe & ts_local_pe_453_a0_out ) | (ts_local_pe_453_a1_oe & ts_local_pe_453_a1_out ) | (ts_local_pe_453_a2_oe & ts_local_pe_453_a2_out ) | 1'b0;
assign lbadh_oe[5] = ts_local_pe_453_a0_oe | ts_local_pe_453_a1_oe | ts_local_pe_453_a2_oe;
assign ts_local_pe_453_a0_in = lbadh_in[5];
assign ts_local_pe_453_a1_in = lbadh_in[5];
assign ts_local_pe_453_a2_in = lbadh_in[5];

// --- Compiler-generated local PE for BUS lbadh<6>
assign lbadh_out[6] = (ts_local_pe_454_a0_oe & ts_local_pe_454_a0_out ) | (ts_local_pe_454_a1_oe & ts_local_pe_454_a1_out ) | (ts_local_pe_454_a2_oe & ts_local_pe_454_a2_out ) | 1'b0;
assign lbadh_oe[6] = ts_local_pe_454_a0_oe | ts_local_pe_454_a1_oe | ts_local_pe_454_a2_oe;
assign ts_local_pe_454_a0_in = lbadh_in[6];
assign ts_local_pe_454_a1_in = lbadh_in[6];
assign ts_local_pe_454_a2_in = lbadh_in[6];

// --- Compiler-generated local PE for BUS lbadh<7>
assign lbadh_out[7] = (ts_local_pe_455_a0_oe & ts_local_pe_455_a0_out ) | (ts_local_pe_455_a1_oe & ts_local_pe_455_a1_out ) | (ts_local_pe_455_a2_oe & ts_local_pe_455_a2_out ) | 1'b0;
assign lbadh_oe[7] = ts_local_pe_455_a0_oe | ts_local_pe_455_a1_oe | ts_local_pe_455_a2_oe;
assign ts_local_pe_455_a0_in = lbadh_in[7];
assign ts_local_pe_455_a1_in = lbadh_in[7];
assign ts_local_pe_455_a2_in = lbadh_in[7];

// --- Compiler-generated local PE for BUS lbadh<8>
assign lbadh_out[8] = (ts_local_pe_456_a0_oe & ts_local_pe_456_a0_out ) | (ts_local_pe_456_a1_oe & ts_local_pe_456_a1_out ) | (ts_local_pe_456_a2_oe & ts_local_pe_456_a2_out ) | 1'b0;
assign lbadh_oe[8] = ts_local_pe_456_a0_oe | ts_local_pe_456_a1_oe | ts_local_pe_456_a2_oe;
assign ts_local_pe_456_a0_in = lbadh_in[8];
assign ts_local_pe_456_a1_in = lbadh_in[8];
assign ts_local_pe_456_a2_in = lbadh_in[8];

// --- Compiler-generated local PE for BUS lbadh<9>
assign lbadh_out[9] = (ts_local_pe_457_a0_oe & ts_local_pe_457_a0_out ) | (ts_local_pe_457_a1_oe & ts_local_pe_457_a1_out ) | (ts_local_pe_457_a2_oe & ts_local_pe_457_a2_out ) | 1'b0;
assign lbadh_oe[9] = ts_local_pe_457_a0_oe | ts_local_pe_457_a1_oe | ts_local_pe_457_a2_oe;
assign ts_local_pe_457_a0_in = lbadh_in[9];
assign ts_local_pe_457_a1_in = lbadh_in[9];
assign ts_local_pe_457_a2_in = lbadh_in[9];

// --- Compiler-generated local PE for BUS lbadh<10>
assign lbadh_out[10] = (ts_local_pe_458_a0_oe & ts_local_pe_458_a0_out ) | (ts_local_pe_458_a1_oe & ts_local_pe_458_a1_out ) | (ts_local_pe_458_a2_oe & ts_local_pe_458_a2_out ) | 1'b0;
assign lbadh_oe[10] = ts_local_pe_458_a0_oe | ts_local_pe_458_a1_oe | ts_local_pe_458_a2_oe;
assign ts_local_pe_458_a0_in = lbadh_in[10];
assign ts_local_pe_458_a1_in = lbadh_in[10];
assign ts_local_pe_458_a2_in = lbadh_in[10];

// --- Compiler-generated local PE for BUS lbadh<11>
assign lbadh_out[11] = (ts_local_pe_459_a0_oe & ts_local_pe_459_a0_out ) | (ts_local_pe_459_a1_oe & ts_local_pe_459_a1_out ) | (ts_local_pe_459_a2_oe & ts_local_pe_459_a2_out ) | 1'b0;
assign lbadh_oe[11] = ts_local_pe_459_a0_oe | ts_local_pe_459_a1_oe | ts_local_pe_459_a2_oe;
assign ts_local_pe_459_a0_in = lbadh_in[11];
assign ts_local_pe_459_a1_in = lbadh_in[11];
assign ts_local_pe_459_a2_in = lbadh_in[11];

// --- Compiler-generated local PE for BUS lbadh<12>
assign lbadh_out[12] = (ts_local_pe_460_a0_oe & ts_local_pe_460_a0_out ) | (ts_local_pe_460_a1_oe & ts_local_pe_460_a1_out ) | (ts_local_pe_460_a2_oe & ts_local_pe_460_a2_out ) | 1'b0;
assign lbadh_oe[12] = ts_local_pe_460_a0_oe | ts_local_pe_460_a1_oe | ts_local_pe_460_a2_oe;
assign ts_local_pe_460_a0_in = lbadh_in[12];
assign ts_local_pe_460_a1_in = lbadh_in[12];
assign ts_local_pe_460_a2_in = lbadh_in[12];

// --- Compiler-generated local PE for BUS lbadh<13>
assign lbadh_out[13] = (ts_local_pe_461_a0_oe & ts_local_pe_461_a0_out ) | (ts_local_pe_461_a1_oe & ts_local_pe_461_a1_out ) | (ts_local_pe_461_a2_oe & ts_local_pe_461_a2_out ) | 1'b0;
assign lbadh_oe[13] = ts_local_pe_461_a0_oe | ts_local_pe_461_a1_oe | ts_local_pe_461_a2_oe;
assign ts_local_pe_461_a0_in = lbadh_in[13];
assign ts_local_pe_461_a1_in = lbadh_in[13];
assign ts_local_pe_461_a2_in = lbadh_in[13];

// --- Compiler-generated local PE for BUS lbadh<14>
assign lbadh_out[14] = (ts_local_pe_462_a0_oe & ts_local_pe_462_a0_out ) | (ts_local_pe_462_a1_oe & ts_local_pe_462_a1_out ) | (ts_local_pe_462_a2_oe & ts_local_pe_462_a2_out ) | 1'b0;
assign lbadh_oe[14] = ts_local_pe_462_a0_oe | ts_local_pe_462_a1_oe | ts_local_pe_462_a2_oe;
assign ts_local_pe_462_a0_in = lbadh_in[14];
assign ts_local_pe_462_a1_in = lbadh_in[14];
assign ts_local_pe_462_a2_in = lbadh_in[14];

// --- Compiler-generated local PE for BUS lbadh<15>
assign lbadh_out[15] = (ts_local_pe_463_a0_oe & ts_local_pe_463_a0_out ) | (ts_local_pe_463_a1_oe & ts_local_pe_463_a1_out ) | (ts_local_pe_463_a2_oe & ts_local_pe_463_a2_out ) | 1'b0;
assign lbadh_oe[15] = ts_local_pe_463_a0_oe | ts_local_pe_463_a1_oe | ts_local_pe_463_a2_oe;
assign ts_local_pe_463_a0_in = lbadh_in[15];
assign ts_local_pe_463_a1_in = lbadh_in[15];
assign ts_local_pe_463_a2_in = lbadh_in[15];

// --- Compiler-generated local PE for BUS lbbdl<0>
assign lbbdl_out[0] = (ts_local_pe_464_a0_oe & ts_local_pe_464_a0_out ) | (ts_local_pe_464_a1_oe & ts_local_pe_464_a1_out ) | (ts_local_pe_464_a2_oe & ts_local_pe_464_a2_out ) | 1'b0;
assign lbbdl_oe[0] = ts_local_pe_464_a0_oe | ts_local_pe_464_a1_oe | ts_local_pe_464_a2_oe;
assign ts_local_pe_464_a0_in = lbbdl_in[0];
assign ts_local_pe_464_a1_in = lbbdl_in[0];
assign ts_local_pe_464_a2_in = lbbdl_in[0];

// --- Compiler-generated local PE for BUS lbbdl<1>
assign lbbdl_out[1] = (ts_local_pe_465_a0_oe & ts_local_pe_465_a0_out ) | (ts_local_pe_465_a1_oe & ts_local_pe_465_a1_out ) | (ts_local_pe_465_a2_oe & ts_local_pe_465_a2_out ) | 1'b0;
assign lbbdl_oe[1] = ts_local_pe_465_a0_oe | ts_local_pe_465_a1_oe | ts_local_pe_465_a2_oe;
assign ts_local_pe_465_a0_in = lbbdl_in[1];
assign ts_local_pe_465_a1_in = lbbdl_in[1];
assign ts_local_pe_465_a2_in = lbbdl_in[1];

// --- Compiler-generated local PE for BUS lbbdl<2>
assign lbbdl_out[2] = (ts_local_pe_466_a0_oe & ts_local_pe_466_a0_out ) | (ts_local_pe_466_a1_oe & ts_local_pe_466_a1_out ) | (ts_local_pe_466_a2_oe & ts_local_pe_466_a2_out ) | 1'b0;
assign lbbdl_oe[2] = ts_local_pe_466_a0_oe | ts_local_pe_466_a1_oe | ts_local_pe_466_a2_oe;
assign ts_local_pe_466_a0_in = lbbdl_in[2];
assign ts_local_pe_466_a1_in = lbbdl_in[2];
assign ts_local_pe_466_a2_in = lbbdl_in[2];

// --- Compiler-generated local PE for BUS lbbdl<3>
assign lbbdl_out[3] = (ts_local_pe_467_a0_oe & ts_local_pe_467_a0_out ) | (ts_local_pe_467_a1_oe & ts_local_pe_467_a1_out ) | (ts_local_pe_467_a2_oe & ts_local_pe_467_a2_out ) | 1'b0;
assign lbbdl_oe[3] = ts_local_pe_467_a0_oe | ts_local_pe_467_a1_oe | ts_local_pe_467_a2_oe;
assign ts_local_pe_467_a0_in = lbbdl_in[3];
assign ts_local_pe_467_a1_in = lbbdl_in[3];
assign ts_local_pe_467_a2_in = lbbdl_in[3];

// --- Compiler-generated local PE for BUS lbbdl<4>
assign lbbdl_out[4] = (ts_local_pe_468_a0_oe & ts_local_pe_468_a0_out ) | (ts_local_pe_468_a1_oe & ts_local_pe_468_a1_out ) | (ts_local_pe_468_a2_oe & ts_local_pe_468_a2_out ) | 1'b0;
assign lbbdl_oe[4] = ts_local_pe_468_a0_oe | ts_local_pe_468_a1_oe | ts_local_pe_468_a2_oe;
assign ts_local_pe_468_a0_in = lbbdl_in[4];
assign ts_local_pe_468_a1_in = lbbdl_in[4];
assign ts_local_pe_468_a2_in = lbbdl_in[4];

// --- Compiler-generated local PE for BUS lbbdl<5>
assign lbbdl_out[5] = (ts_local_pe_469_a0_oe & ts_local_pe_469_a0_out ) | (ts_local_pe_469_a1_oe & ts_local_pe_469_a1_out ) | (ts_local_pe_469_a2_oe & ts_local_pe_469_a2_out ) | 1'b0;
assign lbbdl_oe[5] = ts_local_pe_469_a0_oe | ts_local_pe_469_a1_oe | ts_local_pe_469_a2_oe;
assign ts_local_pe_469_a0_in = lbbdl_in[5];
assign ts_local_pe_469_a1_in = lbbdl_in[5];
assign ts_local_pe_469_a2_in = lbbdl_in[5];

// --- Compiler-generated local PE for BUS lbbdl<6>
assign lbbdl_out[6] = (ts_local_pe_470_a0_oe & ts_local_pe_470_a0_out ) | (ts_local_pe_470_a1_oe & ts_local_pe_470_a1_out ) | (ts_local_pe_470_a2_oe & ts_local_pe_470_a2_out ) | 1'b0;
assign lbbdl_oe[6] = ts_local_pe_470_a0_oe | ts_local_pe_470_a1_oe | ts_local_pe_470_a2_oe;
assign ts_local_pe_470_a0_in = lbbdl_in[6];
assign ts_local_pe_470_a1_in = lbbdl_in[6];
assign ts_local_pe_470_a2_in = lbbdl_in[6];

// --- Compiler-generated local PE for BUS lbbdl<7>
assign lbbdl_out[7] = (ts_local_pe_471_a0_oe & ts_local_pe_471_a0_out ) | (ts_local_pe_471_a1_oe & ts_local_pe_471_a1_out ) | (ts_local_pe_471_a2_oe & ts_local_pe_471_a2_out ) | 1'b0;
assign lbbdl_oe[7] = ts_local_pe_471_a0_oe | ts_local_pe_471_a1_oe | ts_local_pe_471_a2_oe;
assign ts_local_pe_471_a0_in = lbbdl_in[7];
assign ts_local_pe_471_a1_in = lbbdl_in[7];
assign ts_local_pe_471_a2_in = lbbdl_in[7];

// --- Compiler-generated local PE for BUS lbbdl<8>
assign lbbdl_out[8] = (ts_local_pe_472_a0_oe & ts_local_pe_472_a0_out ) | (ts_local_pe_472_a1_oe & ts_local_pe_472_a1_out ) | (ts_local_pe_472_a2_oe & ts_local_pe_472_a2_out ) | 1'b0;
assign lbbdl_oe[8] = ts_local_pe_472_a0_oe | ts_local_pe_472_a1_oe | ts_local_pe_472_a2_oe;
assign ts_local_pe_472_a0_in = lbbdl_in[8];
assign ts_local_pe_472_a1_in = lbbdl_in[8];
assign ts_local_pe_472_a2_in = lbbdl_in[8];

// --- Compiler-generated local PE for BUS lbbdl<9>
assign lbbdl_out[9] = (ts_local_pe_473_a0_oe & ts_local_pe_473_a0_out ) | (ts_local_pe_473_a1_oe & ts_local_pe_473_a1_out ) | (ts_local_pe_473_a2_oe & ts_local_pe_473_a2_out ) | 1'b0;
assign lbbdl_oe[9] = ts_local_pe_473_a0_oe | ts_local_pe_473_a1_oe | ts_local_pe_473_a2_oe;
assign ts_local_pe_473_a0_in = lbbdl_in[9];
assign ts_local_pe_473_a1_in = lbbdl_in[9];
assign ts_local_pe_473_a2_in = lbbdl_in[9];

// --- Compiler-generated local PE for BUS lbbdl<10>
assign lbbdl_out[10] = (ts_local_pe_474_a0_oe & ts_local_pe_474_a0_out ) | (ts_local_pe_474_a1_oe & ts_local_pe_474_a1_out ) | (ts_local_pe_474_a2_oe & ts_local_pe_474_a2_out ) | 1'b0;
assign lbbdl_oe[10] = ts_local_pe_474_a0_oe | ts_local_pe_474_a1_oe | ts_local_pe_474_a2_oe;
assign ts_local_pe_474_a0_in = lbbdl_in[10];
assign ts_local_pe_474_a1_in = lbbdl_in[10];
assign ts_local_pe_474_a2_in = lbbdl_in[10];

// --- Compiler-generated local PE for BUS lbbdl<11>
assign lbbdl_out[11] = (ts_local_pe_475_a0_oe & ts_local_pe_475_a0_out ) | (ts_local_pe_475_a1_oe & ts_local_pe_475_a1_out ) | (ts_local_pe_475_a2_oe & ts_local_pe_475_a2_out ) | 1'b0;
assign lbbdl_oe[11] = ts_local_pe_475_a0_oe | ts_local_pe_475_a1_oe | ts_local_pe_475_a2_oe;
assign ts_local_pe_475_a0_in = lbbdl_in[11];
assign ts_local_pe_475_a1_in = lbbdl_in[11];
assign ts_local_pe_475_a2_in = lbbdl_in[11];

// --- Compiler-generated local PE for BUS lbbdl<12>
assign lbbdl_out[12] = (ts_local_pe_476_a0_oe & ts_local_pe_476_a0_out ) | (ts_local_pe_476_a1_oe & ts_local_pe_476_a1_out ) | (ts_local_pe_476_a2_oe & ts_local_pe_476_a2_out ) | 1'b0;
assign lbbdl_oe[12] = ts_local_pe_476_a0_oe | ts_local_pe_476_a1_oe | ts_local_pe_476_a2_oe;
assign ts_local_pe_476_a0_in = lbbdl_in[12];
assign ts_local_pe_476_a1_in = lbbdl_in[12];
assign ts_local_pe_476_a2_in = lbbdl_in[12];

// --- Compiler-generated local PE for BUS lbbdl<13>
assign lbbdl_out[13] = (ts_local_pe_477_a0_oe & ts_local_pe_477_a0_out ) | (ts_local_pe_477_a1_oe & ts_local_pe_477_a1_out ) | (ts_local_pe_477_a2_oe & ts_local_pe_477_a2_out ) | 1'b0;
assign lbbdl_oe[13] = ts_local_pe_477_a0_oe | ts_local_pe_477_a1_oe | ts_local_pe_477_a2_oe;
assign ts_local_pe_477_a0_in = lbbdl_in[13];
assign ts_local_pe_477_a1_in = lbbdl_in[13];
assign ts_local_pe_477_a2_in = lbbdl_in[13];

// --- Compiler-generated local PE for BUS lbbdl<14>
assign lbbdl_out[14] = (ts_local_pe_478_a0_oe & ts_local_pe_478_a0_out ) | (ts_local_pe_478_a1_oe & ts_local_pe_478_a1_out ) | (ts_local_pe_478_a2_oe & ts_local_pe_478_a2_out ) | 1'b0;
assign lbbdl_oe[14] = ts_local_pe_478_a0_oe | ts_local_pe_478_a1_oe | ts_local_pe_478_a2_oe;
assign ts_local_pe_478_a0_in = lbbdl_in[14];
assign ts_local_pe_478_a1_in = lbbdl_in[14];
assign ts_local_pe_478_a2_in = lbbdl_in[14];

// --- Compiler-generated local PE for BUS lbbdl<15>
assign lbbdl_out[15] = (ts_local_pe_479_a0_oe & ts_local_pe_479_a0_out ) | (ts_local_pe_479_a1_oe & ts_local_pe_479_a1_out ) | (ts_local_pe_479_a2_oe & ts_local_pe_479_a2_out ) | 1'b0;
assign lbbdl_oe[15] = ts_local_pe_479_a0_oe | ts_local_pe_479_a1_oe | ts_local_pe_479_a2_oe;
assign ts_local_pe_479_a0_in = lbbdl_in[15];
assign ts_local_pe_479_a1_in = lbbdl_in[15];
assign ts_local_pe_479_a2_in = lbbdl_in[15];

// --- Compiler-generated local PE for BUS lbbdh<0>
assign lbbdh_out[0] = (ts_local_pe_480_a0_oe & ts_local_pe_480_a0_out ) | (ts_local_pe_480_a1_oe & ts_local_pe_480_a1_out ) | (ts_local_pe_480_a2_oe & ts_local_pe_480_a2_out ) | 1'b0;
assign lbbdh_oe[0] = ts_local_pe_480_a0_oe | ts_local_pe_480_a1_oe | ts_local_pe_480_a2_oe;
assign ts_local_pe_480_a0_in = lbbdh_in[0];
assign ts_local_pe_480_a1_in = lbbdh_in[0];
assign ts_local_pe_480_a2_in = lbbdh_in[0];

// --- Compiler-generated local PE for BUS lbbdh<1>
assign lbbdh_out[1] = (ts_local_pe_481_a0_oe & ts_local_pe_481_a0_out ) | (ts_local_pe_481_a1_oe & ts_local_pe_481_a1_out ) | (ts_local_pe_481_a2_oe & ts_local_pe_481_a2_out ) | 1'b0;
assign lbbdh_oe[1] = ts_local_pe_481_a0_oe | ts_local_pe_481_a1_oe | ts_local_pe_481_a2_oe;
assign ts_local_pe_481_a0_in = lbbdh_in[1];
assign ts_local_pe_481_a1_in = lbbdh_in[1];
assign ts_local_pe_481_a2_in = lbbdh_in[1];

// --- Compiler-generated local PE for BUS lbbdh<2>
assign lbbdh_out[2] = (ts_local_pe_482_a0_oe & ts_local_pe_482_a0_out ) | (ts_local_pe_482_a1_oe & ts_local_pe_482_a1_out ) | (ts_local_pe_482_a2_oe & ts_local_pe_482_a2_out ) | 1'b0;
assign lbbdh_oe[2] = ts_local_pe_482_a0_oe | ts_local_pe_482_a1_oe | ts_local_pe_482_a2_oe;
assign ts_local_pe_482_a0_in = lbbdh_in[2];
assign ts_local_pe_482_a1_in = lbbdh_in[2];
assign ts_local_pe_482_a2_in = lbbdh_in[2];

// --- Compiler-generated local PE for BUS lbbdh<3>
assign lbbdh_out[3] = (ts_local_pe_483_a0_oe & ts_local_pe_483_a0_out ) | (ts_local_pe_483_a1_oe & ts_local_pe_483_a1_out ) | (ts_local_pe_483_a2_oe & ts_local_pe_483_a2_out ) | 1'b0;
assign lbbdh_oe[3] = ts_local_pe_483_a0_oe | ts_local_pe_483_a1_oe | ts_local_pe_483_a2_oe;
assign ts_local_pe_483_a0_in = lbbdh_in[3];
assign ts_local_pe_483_a1_in = lbbdh_in[3];
assign ts_local_pe_483_a2_in = lbbdh_in[3];

// --- Compiler-generated local PE for BUS lbbdh<4>
assign lbbdh_out[4] = (ts_local_pe_484_a0_oe & ts_local_pe_484_a0_out ) | (ts_local_pe_484_a1_oe & ts_local_pe_484_a1_out ) | (ts_local_pe_484_a2_oe & ts_local_pe_484_a2_out ) | 1'b0;
assign lbbdh_oe[4] = ts_local_pe_484_a0_oe | ts_local_pe_484_a1_oe | ts_local_pe_484_a2_oe;
assign ts_local_pe_484_a0_in = lbbdh_in[4];
assign ts_local_pe_484_a1_in = lbbdh_in[4];
assign ts_local_pe_484_a2_in = lbbdh_in[4];

// --- Compiler-generated local PE for BUS lbbdh<5>
assign lbbdh_out[5] = (ts_local_pe_485_a0_oe & ts_local_pe_485_a0_out ) | (ts_local_pe_485_a1_oe & ts_local_pe_485_a1_out ) | (ts_local_pe_485_a2_oe & ts_local_pe_485_a2_out ) | 1'b0;
assign lbbdh_oe[5] = ts_local_pe_485_a0_oe | ts_local_pe_485_a1_oe | ts_local_pe_485_a2_oe;
assign ts_local_pe_485_a0_in = lbbdh_in[5];
assign ts_local_pe_485_a1_in = lbbdh_in[5];
assign ts_local_pe_485_a2_in = lbbdh_in[5];

// --- Compiler-generated local PE for BUS lbbdh<6>
assign lbbdh_out[6] = (ts_local_pe_486_a0_oe & ts_local_pe_486_a0_out ) | (ts_local_pe_486_a1_oe & ts_local_pe_486_a1_out ) | (ts_local_pe_486_a2_oe & ts_local_pe_486_a2_out ) | 1'b0;
assign lbbdh_oe[6] = ts_local_pe_486_a0_oe | ts_local_pe_486_a1_oe | ts_local_pe_486_a2_oe;
assign ts_local_pe_486_a0_in = lbbdh_in[6];
assign ts_local_pe_486_a1_in = lbbdh_in[6];
assign ts_local_pe_486_a2_in = lbbdh_in[6];

// --- Compiler-generated local PE for BUS lbbdh<7>
assign lbbdh_out[7] = (ts_local_pe_487_a0_oe & ts_local_pe_487_a0_out ) | (ts_local_pe_487_a1_oe & ts_local_pe_487_a1_out ) | (ts_local_pe_487_a2_oe & ts_local_pe_487_a2_out ) | 1'b0;
assign lbbdh_oe[7] = ts_local_pe_487_a0_oe | ts_local_pe_487_a1_oe | ts_local_pe_487_a2_oe;
assign ts_local_pe_487_a0_in = lbbdh_in[7];
assign ts_local_pe_487_a1_in = lbbdh_in[7];
assign ts_local_pe_487_a2_in = lbbdh_in[7];

// --- Compiler-generated local PE for BUS lbbdh<8>
assign lbbdh_out[8] = (ts_local_pe_488_a0_oe & ts_local_pe_488_a0_out ) | (ts_local_pe_488_a1_oe & ts_local_pe_488_a1_out ) | (ts_local_pe_488_a2_oe & ts_local_pe_488_a2_out ) | 1'b0;
assign lbbdh_oe[8] = ts_local_pe_488_a0_oe | ts_local_pe_488_a1_oe | ts_local_pe_488_a2_oe;
assign ts_local_pe_488_a0_in = lbbdh_in[8];
assign ts_local_pe_488_a1_in = lbbdh_in[8];
assign ts_local_pe_488_a2_in = lbbdh_in[8];

// --- Compiler-generated local PE for BUS lbbdh<9>
assign lbbdh_out[9] = (ts_local_pe_489_a0_oe & ts_local_pe_489_a0_out ) | (ts_local_pe_489_a1_oe & ts_local_pe_489_a1_out ) | (ts_local_pe_489_a2_oe & ts_local_pe_489_a2_out ) | 1'b0;
assign lbbdh_oe[9] = ts_local_pe_489_a0_oe | ts_local_pe_489_a1_oe | ts_local_pe_489_a2_oe;
assign ts_local_pe_489_a0_in = lbbdh_in[9];
assign ts_local_pe_489_a1_in = lbbdh_in[9];
assign ts_local_pe_489_a2_in = lbbdh_in[9];

// --- Compiler-generated local PE for BUS lbbdh<10>
assign lbbdh_out[10] = (ts_local_pe_490_a0_oe & ts_local_pe_490_a0_out ) | (ts_local_pe_490_a1_oe & ts_local_pe_490_a1_out ) | (ts_local_pe_490_a2_oe & ts_local_pe_490_a2_out ) | 1'b0;
assign lbbdh_oe[10] = ts_local_pe_490_a0_oe | ts_local_pe_490_a1_oe | ts_local_pe_490_a2_oe;
assign ts_local_pe_490_a0_in = lbbdh_in[10];
assign ts_local_pe_490_a1_in = lbbdh_in[10];
assign ts_local_pe_490_a2_in = lbbdh_in[10];

// --- Compiler-generated local PE for BUS lbbdh<11>
assign lbbdh_out[11] = (ts_local_pe_491_a0_oe & ts_local_pe_491_a0_out ) | (ts_local_pe_491_a1_oe & ts_local_pe_491_a1_out ) | (ts_local_pe_491_a2_oe & ts_local_pe_491_a2_out ) | 1'b0;
assign lbbdh_oe[11] = ts_local_pe_491_a0_oe | ts_local_pe_491_a1_oe | ts_local_pe_491_a2_oe;
assign ts_local_pe_491_a0_in = lbbdh_in[11];
assign ts_local_pe_491_a1_in = lbbdh_in[11];
assign ts_local_pe_491_a2_in = lbbdh_in[11];

// --- Compiler-generated local PE for BUS lbbdh<12>
assign lbbdh_out[12] = (ts_local_pe_492_a0_oe & ts_local_pe_492_a0_out ) | (ts_local_pe_492_a1_oe & ts_local_pe_492_a1_out ) | (ts_local_pe_492_a2_oe & ts_local_pe_492_a2_out ) | 1'b0;
assign lbbdh_oe[12] = ts_local_pe_492_a0_oe | ts_local_pe_492_a1_oe | ts_local_pe_492_a2_oe;
assign ts_local_pe_492_a0_in = lbbdh_in[12];
assign ts_local_pe_492_a1_in = lbbdh_in[12];
assign ts_local_pe_492_a2_in = lbbdh_in[12];

// --- Compiler-generated local PE for BUS lbbdh<13>
assign lbbdh_out[13] = (ts_local_pe_493_a0_oe & ts_local_pe_493_a0_out ) | (ts_local_pe_493_a1_oe & ts_local_pe_493_a1_out ) | (ts_local_pe_493_a2_oe & ts_local_pe_493_a2_out ) | 1'b0;
assign lbbdh_oe[13] = ts_local_pe_493_a0_oe | ts_local_pe_493_a1_oe | ts_local_pe_493_a2_oe;
assign ts_local_pe_493_a0_in = lbbdh_in[13];
assign ts_local_pe_493_a1_in = lbbdh_in[13];
assign ts_local_pe_493_a2_in = lbbdh_in[13];

// --- Compiler-generated local PE for BUS lbbdh<14>
assign lbbdh_out[14] = (ts_local_pe_494_a0_oe & ts_local_pe_494_a0_out ) | (ts_local_pe_494_a1_oe & ts_local_pe_494_a1_out ) | (ts_local_pe_494_a2_oe & ts_local_pe_494_a2_out ) | 1'b0;
assign lbbdh_oe[14] = ts_local_pe_494_a0_oe | ts_local_pe_494_a1_oe | ts_local_pe_494_a2_oe;
assign ts_local_pe_494_a0_in = lbbdh_in[14];
assign ts_local_pe_494_a1_in = lbbdh_in[14];
assign ts_local_pe_494_a2_in = lbbdh_in[14];

// --- Compiler-generated local PE for BUS lbbdh<15>
assign lbbdh_out[15] = (ts_local_pe_495_a0_oe & ts_local_pe_495_a0_out ) | (ts_local_pe_495_a1_oe & ts_local_pe_495_a1_out ) | (ts_local_pe_495_a2_oe & ts_local_pe_495_a2_out ) | 1'b0;
assign lbbdh_oe[15] = ts_local_pe_495_a0_oe | ts_local_pe_495_a1_oe | ts_local_pe_495_a2_oe;
assign ts_local_pe_495_a0_in = lbbdh_in[15];
assign ts_local_pe_495_a1_in = lbbdh_in[15];
assign ts_local_pe_495_a2_in = lbbdh_in[15];

// --- Compiler-generated local LB for BUS lbadl<0>
assign lbadl_in[0] = lbadl_out[0];

// --- Compiler-generated local LB for BUS lbadl<1>
assign lbadl_in[1] = lbadl_out[1];

// --- Compiler-generated local LB for BUS lbadl<2>
assign lbadl_in[2] = lbadl_out[2];

// --- Compiler-generated local LB for BUS lbadl<3>
assign lbadl_in[3] = lbadl_out[3];

// --- Compiler-generated local LB for BUS lbadl<4>
assign lbadl_in[4] = lbadl_out[4];

// --- Compiler-generated local LB for BUS lbadl<5>
assign lbadl_in[5] = lbadl_out[5];

// --- Compiler-generated local LB for BUS lbadl<6>
assign lbadl_in[6] = lbadl_out[6];

// --- Compiler-generated local LB for BUS lbadl<7>
assign lbadl_in[7] = lbadl_out[7];

// --- Compiler-generated local LB for BUS lbadl<8>
assign lbadl_in[8] = lbadl_out[8];

// --- Compiler-generated local LB for BUS lbadl<9>
assign lbadl_in[9] = lbadl_out[9];

// --- Compiler-generated local LB for BUS lbadl<10>
assign lbadl_in[10] = lbadl_out[10];

// --- Compiler-generated local LB for BUS lbadl<11>
assign lbadl_in[11] = lbadl_out[11];

// --- Compiler-generated local LB for BUS lbadl<12>
assign lbadl_in[12] = lbadl_out[12];

// --- Compiler-generated local LB for BUS lbadl<13>
assign lbadl_in[13] = lbadl_out[13];

// --- Compiler-generated local LB for BUS lbadl<14>
assign lbadl_in[14] = lbadl_out[14];

// --- Compiler-generated local LB for BUS lbadl<15>
assign lbadl_in[15] = lbadl_out[15];

// --- Compiler-generated local LB for BUS lbadh<0>
assign lbadh_in[0] = lbadh_out[0];

// --- Compiler-generated local LB for BUS lbadh<1>
assign lbadh_in[1] = lbadh_out[1];

// --- Compiler-generated local LB for BUS lbadh<2>
assign lbadh_in[2] = lbadh_out[2];

// --- Compiler-generated local LB for BUS lbadh<3>
assign lbadh_in[3] = lbadh_out[3];

// --- Compiler-generated local LB for BUS lbadh<4>
assign lbadh_in[4] = lbadh_out[4];

// --- Compiler-generated local LB for BUS lbadh<5>
assign lbadh_in[5] = lbadh_out[5];

// --- Compiler-generated local LB for BUS lbadh<6>
assign lbadh_in[6] = lbadh_out[6];

// --- Compiler-generated local LB for BUS lbadh<7>
assign lbadh_in[7] = lbadh_out[7];

// --- Compiler-generated local LB for BUS lbadh<8>
assign lbadh_in[8] = lbadh_out[8];

// --- Compiler-generated local LB for BUS lbadh<9>
assign lbadh_in[9] = lbadh_out[9];

// --- Compiler-generated local LB for BUS lbadh<10>
assign lbadh_in[10] = lbadh_out[10];

// --- Compiler-generated local LB for BUS lbadh<11>
assign lbadh_in[11] = lbadh_out[11];

// --- Compiler-generated local LB for BUS lbadh<12>
assign lbadh_in[12] = lbadh_out[12];

// --- Compiler-generated local LB for BUS lbadh<13>
assign lbadh_in[13] = lbadh_out[13];

// --- Compiler-generated local LB for BUS lbadh<14>
assign lbadh_in[14] = lbadh_out[14];

// --- Compiler-generated local LB for BUS lbadh<15>
assign lbadh_in[15] = lbadh_out[15];

// --- Compiler-generated local LB for BUS lbbdl<0>
assign lbbdl_in[0] = lbbdl_out[0];

// --- Compiler-generated local LB for BUS lbbdl<1>
assign lbbdl_in[1] = lbbdl_out[1];

// --- Compiler-generated local LB for BUS lbbdl<2>
assign lbbdl_in[2] = lbbdl_out[2];

// --- Compiler-generated local LB for BUS lbbdl<3>
assign lbbdl_in[3] = lbbdl_out[3];

// --- Compiler-generated local LB for BUS lbbdl<4>
assign lbbdl_in[4] = lbbdl_out[4];

// --- Compiler-generated local LB for BUS lbbdl<5>
assign lbbdl_in[5] = lbbdl_out[5];

// --- Compiler-generated local LB for BUS lbbdl<6>
assign lbbdl_in[6] = lbbdl_out[6];

// --- Compiler-generated local LB for BUS lbbdl<7>
assign lbbdl_in[7] = lbbdl_out[7];

// --- Compiler-generated local LB for BUS lbbdl<8>
assign lbbdl_in[8] = lbbdl_out[8];

// --- Compiler-generated local LB for BUS lbbdl<9>
assign lbbdl_in[9] = lbbdl_out[9];

// --- Compiler-generated local LB for BUS lbbdl<10>
assign lbbdl_in[10] = lbbdl_out[10];

// --- Compiler-generated local LB for BUS lbbdl<11>
assign lbbdl_in[11] = lbbdl_out[11];

// --- Compiler-generated local LB for BUS lbbdl<12>
assign lbbdl_in[12] = lbbdl_out[12];

// --- Compiler-generated local LB for BUS lbbdl<13>
assign lbbdl_in[13] = lbbdl_out[13];

// --- Compiler-generated local LB for BUS lbbdl<14>
assign lbbdl_in[14] = lbbdl_out[14];

// --- Compiler-generated local LB for BUS lbbdl<15>
assign lbbdl_in[15] = lbbdl_out[15];

// --- Compiler-generated local LB for BUS lbbdh<0>
assign lbbdh_in[0] = lbbdh_out[0];

// --- Compiler-generated local LB for BUS lbbdh<1>
assign lbbdh_in[1] = lbbdh_out[1];

// --- Compiler-generated local LB for BUS lbbdh<2>
assign lbbdh_in[2] = lbbdh_out[2];

// --- Compiler-generated local LB for BUS lbbdh<3>
assign lbbdh_in[3] = lbbdh_out[3];

// --- Compiler-generated local LB for BUS lbbdh<4>
assign lbbdh_in[4] = lbbdh_out[4];

// --- Compiler-generated local LB for BUS lbbdh<5>
assign lbbdh_in[5] = lbbdh_out[5];

// --- Compiler-generated local LB for BUS lbbdh<6>
assign lbbdh_in[6] = lbbdh_out[6];

// --- Compiler-generated local LB for BUS lbbdh<7>
assign lbbdh_in[7] = lbbdh_out[7];

// --- Compiler-generated local LB for BUS lbbdh<8>
assign lbbdh_in[8] = lbbdh_out[8];

// --- Compiler-generated local LB for BUS lbbdh<9>
assign lbbdh_in[9] = lbbdh_out[9];

// --- Compiler-generated local LB for BUS lbbdh<10>
assign lbbdh_in[10] = lbbdh_out[10];

// --- Compiler-generated local LB for BUS lbbdh<11>
assign lbbdh_in[11] = lbbdh_out[11];

// --- Compiler-generated local LB for BUS lbbdh<12>
assign lbbdh_in[12] = lbbdh_out[12];

// --- Compiler-generated local LB for BUS lbbdh<13>
assign lbbdh_in[13] = lbbdh_out[13];

// --- Compiler-generated local LB for BUS lbbdh<14>
assign lbbdh_in[14] = lbbdh_out[14];

// --- Compiler-generated local LB for BUS lbbdh<15>
assign lbbdh_in[15] = lbbdh_out[15];
endmodule
/* verilator lint_on LITENDIAN */
