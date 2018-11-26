/* verilator lint_off LITENDIAN */
`include "defs.v"

module zedcomp
(
	output zcomp_0,
	output zcomp_1,
	output zcomp_2,
	output zcomp_3,
	input [0:31] srczplo,
	input [0:31] srczphi,
	input [0:31] dstzlo,
	input [0:31] dstzhi,
	input zmode_0,
	input zmode_1,
	input zmode_2
);
wire zg_0;
wire ze_0;
wire zl_0;
wire zg_1;
wire ze_1;
wire zl_1;
wire zg_2;
wire ze_2;
wire zl_2;
wire zg_3;
wire ze_3;
wire zl_3;
wire zlt_0;
wire zlt_1;
wire zlt_2;
wire zlt_3;
wire zet_0;
wire zet_1;
wire zet_2;
wire zet_3;
wire zgt_0;
wire zgt_1;
wire zgt_2;
wire zgt_3;

// DATACOMP.NET (132) - zcomp[0] : mag_16
mag_16 zcomp_index_0_inst
(
	.gt /* OUT */ (zg_0),
	.eq /* OUT */ (ze_0),
	.lt /* OUT */ (zl_0),
	.a_0 /* IN */ (srczplo[0]),
	.a_1 /* IN */ (srczplo[1]),
	.a_2 /* IN */ (srczplo[2]),
	.a_3 /* IN */ (srczplo[3]),
	.a_4 /* IN */ (srczplo[4]),
	.a_5 /* IN */ (srczplo[5]),
	.a_6 /* IN */ (srczplo[6]),
	.a_7 /* IN */ (srczplo[7]),
	.a_8 /* IN */ (srczplo[8]),
	.a_9 /* IN */ (srczplo[9]),
	.a_10 /* IN */ (srczplo[10]),
	.a_11 /* IN */ (srczplo[11]),
	.a_12 /* IN */ (srczplo[12]),
	.a_13 /* IN */ (srczplo[13]),
	.a_14 /* IN */ (srczplo[14]),
	.a_15 /* IN */ (srczplo[15]),
	.b_0 /* IN */ (dstzlo[0]),
	.b_1 /* IN */ (dstzlo[1]),
	.b_2 /* IN */ (dstzlo[2]),
	.b_3 /* IN */ (dstzlo[3]),
	.b_4 /* IN */ (dstzlo[4]),
	.b_5 /* IN */ (dstzlo[5]),
	.b_6 /* IN */ (dstzlo[6]),
	.b_7 /* IN */ (dstzlo[7]),
	.b_8 /* IN */ (dstzlo[8]),
	.b_9 /* IN */ (dstzlo[9]),
	.b_10 /* IN */ (dstzlo[10]),
	.b_11 /* IN */ (dstzlo[11]),
	.b_12 /* IN */ (dstzlo[12]),
	.b_13 /* IN */ (dstzlo[13]),
	.b_14 /* IN */ (dstzlo[14]),
	.b_15 /* IN */ (dstzlo[15])
);

// DATACOMP.NET (134) - zcomp[1] : mag_16
mag_16 zcomp_index_1_inst
(
	.gt /* OUT */ (zg_1),
	.eq /* OUT */ (ze_1),
	.lt /* OUT */ (zl_1),
	.a_0 /* IN */ (srczplo[16]),
	.a_1 /* IN */ (srczplo[17]),
	.a_2 /* IN */ (srczplo[18]),
	.a_3 /* IN */ (srczplo[19]),
	.a_4 /* IN */ (srczplo[20]),
	.a_5 /* IN */ (srczplo[21]),
	.a_6 /* IN */ (srczplo[22]),
	.a_7 /* IN */ (srczplo[23]),
	.a_8 /* IN */ (srczplo[24]),
	.a_9 /* IN */ (srczplo[25]),
	.a_10 /* IN */ (srczplo[26]),
	.a_11 /* IN */ (srczplo[27]),
	.a_12 /* IN */ (srczplo[28]),
	.a_13 /* IN */ (srczplo[29]),
	.a_14 /* IN */ (srczplo[30]),
	.a_15 /* IN */ (srczplo[31]),
	.b_0 /* IN */ (dstzlo[16]),
	.b_1 /* IN */ (dstzlo[17]),
	.b_2 /* IN */ (dstzlo[18]),
	.b_3 /* IN */ (dstzlo[19]),
	.b_4 /* IN */ (dstzlo[20]),
	.b_5 /* IN */ (dstzlo[21]),
	.b_6 /* IN */ (dstzlo[22]),
	.b_7 /* IN */ (dstzlo[23]),
	.b_8 /* IN */ (dstzlo[24]),
	.b_9 /* IN */ (dstzlo[25]),
	.b_10 /* IN */ (dstzlo[26]),
	.b_11 /* IN */ (dstzlo[27]),
	.b_12 /* IN */ (dstzlo[28]),
	.b_13 /* IN */ (dstzlo[29]),
	.b_14 /* IN */ (dstzlo[30]),
	.b_15 /* IN */ (dstzlo[31])
);

// DATACOMP.NET (136) - zcomp[2] : mag_16
mag_16 zcomp_index_2_inst
(
	.gt /* OUT */ (zg_2),
	.eq /* OUT */ (ze_2),
	.lt /* OUT */ (zl_2),
	.a_0 /* IN */ (srczphi[0]),
	.a_1 /* IN */ (srczphi[1]),
	.a_2 /* IN */ (srczphi[2]),
	.a_3 /* IN */ (srczphi[3]),
	.a_4 /* IN */ (srczphi[4]),
	.a_5 /* IN */ (srczphi[5]),
	.a_6 /* IN */ (srczphi[6]),
	.a_7 /* IN */ (srczphi[7]),
	.a_8 /* IN */ (srczphi[8]),
	.a_9 /* IN */ (srczphi[9]),
	.a_10 /* IN */ (srczphi[10]),
	.a_11 /* IN */ (srczphi[11]),
	.a_12 /* IN */ (srczphi[12]),
	.a_13 /* IN */ (srczphi[13]),
	.a_14 /* IN */ (srczphi[14]),
	.a_15 /* IN */ (srczphi[15]),
	.b_0 /* IN */ (dstzhi[0]),
	.b_1 /* IN */ (dstzhi[1]),
	.b_2 /* IN */ (dstzhi[2]),
	.b_3 /* IN */ (dstzhi[3]),
	.b_4 /* IN */ (dstzhi[4]),
	.b_5 /* IN */ (dstzhi[5]),
	.b_6 /* IN */ (dstzhi[6]),
	.b_7 /* IN */ (dstzhi[7]),
	.b_8 /* IN */ (dstzhi[8]),
	.b_9 /* IN */ (dstzhi[9]),
	.b_10 /* IN */ (dstzhi[10]),
	.b_11 /* IN */ (dstzhi[11]),
	.b_12 /* IN */ (dstzhi[12]),
	.b_13 /* IN */ (dstzhi[13]),
	.b_14 /* IN */ (dstzhi[14]),
	.b_15 /* IN */ (dstzhi[15])
);

// DATACOMP.NET (138) - zcomp[3] : mag_16
mag_16 zcomp_index_3_inst
(
	.gt /* OUT */ (zg_3),
	.eq /* OUT */ (ze_3),
	.lt /* OUT */ (zl_3),
	.a_0 /* IN */ (srczphi[16]),
	.a_1 /* IN */ (srczphi[17]),
	.a_2 /* IN */ (srczphi[18]),
	.a_3 /* IN */ (srczphi[19]),
	.a_4 /* IN */ (srczphi[20]),
	.a_5 /* IN */ (srczphi[21]),
	.a_6 /* IN */ (srczphi[22]),
	.a_7 /* IN */ (srczphi[23]),
	.a_8 /* IN */ (srczphi[24]),
	.a_9 /* IN */ (srczphi[25]),
	.a_10 /* IN */ (srczphi[26]),
	.a_11 /* IN */ (srczphi[27]),
	.a_12 /* IN */ (srczphi[28]),
	.a_13 /* IN */ (srczphi[29]),
	.a_14 /* IN */ (srczphi[30]),
	.a_15 /* IN */ (srczphi[31]),
	.b_0 /* IN */ (dstzhi[16]),
	.b_1 /* IN */ (dstzhi[17]),
	.b_2 /* IN */ (dstzhi[18]),
	.b_3 /* IN */ (dstzhi[19]),
	.b_4 /* IN */ (dstzhi[20]),
	.b_5 /* IN */ (dstzhi[21]),
	.b_6 /* IN */ (dstzhi[22]),
	.b_7 /* IN */ (dstzhi[23]),
	.b_8 /* IN */ (dstzhi[24]),
	.b_9 /* IN */ (dstzhi[25]),
	.b_10 /* IN */ (dstzhi[26]),
	.b_11 /* IN */ (dstzhi[27]),
	.b_12 /* IN */ (dstzhi[28]),
	.b_13 /* IN */ (dstzhi[29]),
	.b_14 /* IN */ (dstzhi[30]),
	.b_15 /* IN */ (dstzhi[31])
);

// DATACOMP.NET (141) - zlt[0-3] : nd2
assign zlt_0 = ~(zl_0 & zmode_0);
assign zlt_1 = ~(zl_1 & zmode_0);
assign zlt_2 = ~(zl_2 & zmode_0);
assign zlt_3 = ~(zl_3 & zmode_0);

// DATACOMP.NET (142) - zet[0-3] : nd2
assign zet_0 = ~(ze_0 & zmode_1);
assign zet_1 = ~(ze_1 & zmode_1);
assign zet_2 = ~(ze_2 & zmode_1);
assign zet_3 = ~(ze_3 & zmode_1);

// DATACOMP.NET (143) - zgt[0-3] : nd2
assign zgt_0 = ~(zg_0 & zmode_2);
assign zgt_1 = ~(zg_1 & zmode_2);
assign zgt_2 = ~(zg_2 & zmode_2);
assign zgt_3 = ~(zg_3 & zmode_2);

// DATACOMP.NET (144) - zcmp[0-3] : nd3p
assign zcomp_0 = ~(zlt_0 & zet_0 & zgt_0);
assign zcomp_1 = ~(zlt_1 & zet_1 & zgt_1);
assign zcomp_2 = ~(zlt_2 & zet_2 & zgt_2);
assign zcomp_3 = ~(zlt_3 & zet_3 & zgt_3);
endmodule
/* verilator lint_on LITENDIAN */
