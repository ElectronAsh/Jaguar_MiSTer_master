/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_saturate
(
	output [0:31] q,
	input [0:31] d,
	input satszp,
	input accum_32,
	input accum_33,
	input accum_34,
	input accum_35,
	input accum_36,
	input accum_37,
	input accum_38,
	input accum_39
);
wire accum_n_39;
wire d_n_31;
wire sat16;
wire pos16t;
wire pos16;
wire neg16t;
wire neg16;
wire sat32;
wire pos32t;
wire pos32;
wire neg32t;
wire neg32;
wire pos16_n;
wire pos32_n;
wire neg16_n;
wire neg32_n;
wire uncht_0;
wire uncht_1;
wire unch;
wire bit0to14;
wire bit15to30;
wire bit31;
wire sato_0;
wire sato_1;
wire sato_2;
wire sato_3;
wire sato_4;
wire sato_5;
wire sato_6;
wire sato_7;
wire sato_8;
wire sato_9;
wire sato_10;
wire sato_11;
wire sato_12;
wire sato_13;
wire sato_14;
wire sato_15;
wire sato_16;
wire sato_17;
wire sato_18;
wire sato_19;
wire sato_20;
wire sato_21;
wire sato_22;
wire sato_23;
wire sato_24;
wire sato_25;
wire sato_26;
wire sato_27;
wire sato_28;
wire sato_29;
wire sato_30;
wire sato_31;

// DSP_A-5Q.NET (627) - accum\[39] : iv
assign accum_n_39 = ~accum_39;

// DSP_A-5Q.NET (628) - d\[31] : iv
assign d_n_31 = ~d[31];

// DSP_A-5Q.NET (634) - sat16 : iv
assign sat16 = ~satszp;

// DSP_A-5Q.NET (642) - pos16t : or16
assign pos16t = d[15] | d[16] | d[17] | d[18] | d[19] | d[20] | d[21] | d[22] | d[23] | d[24] | d[25] | d[26] | d[27] | d[28] | d[29] | d[30];

// DSP_A-5Q.NET (643) - pos16 : an3
assign pos16 = sat16 & d_n_31 & pos16t;

// DSP_A-5Q.NET (644) - neg16t : nd16
assign neg16t = ~(d[15] & d[16] & d[17] & d[18] & d[19] & d[20] & d[21] & d[22] & d[23] & d[24] & d[25] & d[26] & d[27] & d[28] & d[29] & d[30]);

// DSP_A-5Q.NET (645) - neg16 : an3
assign neg16 = sat16 & d[31] & neg16t;

// DSP_A-5Q.NET (651) - sat32 : join
assign sat32 = satszp;

// DSP_A-5Q.NET (659) - pos32t : or8
assign pos32t = d[31] | accum_32 | accum_33 | accum_34 | accum_35 | accum_36 | accum_37 | accum_38;

// DSP_A-5Q.NET (660) - pos32 : an3
assign pos32 = sat32 & accum_n_39 & pos32t;

// DSP_A-5Q.NET (661) - neg32t : nd8
assign neg32t = ~(d[31] & accum_32 & accum_33 & accum_34 & accum_35 & accum_36 & accum_37 & accum_38);

// DSP_A-5Q.NET (662) - neg32 : an3
assign neg32 = sat32 & accum_39 & neg32t;

// DSP_A-5Q.NET (668) - pos16\ : iv
assign pos16_n = ~pos16;

// DSP_A-5Q.NET (669) - pos32\ : iv
assign pos32_n = ~pos32;

// DSP_A-5Q.NET (670) - neg16\ : iv
assign neg16_n = ~neg16;

// DSP_A-5Q.NET (671) - neg32\ : iv
assign neg32_n = ~neg32;

// DSP_A-5Q.NET (672) - uncht0 : nd3
assign uncht_0 = ~(sat16 & pos16_n & neg16_n);

// DSP_A-5Q.NET (673) - uncht1 : nd3
assign uncht_1 = ~(sat32 & pos32_n & neg32_n);

// DSP_A-5Q.NET (674) - unch : nd2u
assign unch = ~(uncht_0 & uncht_1);

// DSP_A-5Q.NET (683) - bit0to14 : or2p
assign bit0to14 = pos32 | pos16;

// DSP_A-5Q.NET (684) - bit15to30 : or2_h
assign bit15to30 = pos32 | neg16;

// DSP_A-5Q.NET (685) - bit31 : or2
assign bit31 = neg16 | neg32;

// DSP_A-5Q.NET (687) - sato[0-14] : mx2
assign sato_0 = (unch) ? d[0] : bit0to14;
assign sato_1 = (unch) ? d[1] : bit0to14;
assign sato_2 = (unch) ? d[2] : bit0to14;
assign sato_3 = (unch) ? d[3] : bit0to14;
assign sato_4 = (unch) ? d[4] : bit0to14;
assign sato_5 = (unch) ? d[5] : bit0to14;
assign sato_6 = (unch) ? d[6] : bit0to14;
assign sato_7 = (unch) ? d[7] : bit0to14;
assign sato_8 = (unch) ? d[8] : bit0to14;
assign sato_9 = (unch) ? d[9] : bit0to14;
assign sato_10 = (unch) ? d[10] : bit0to14;
assign sato_11 = (unch) ? d[11] : bit0to14;
assign sato_12 = (unch) ? d[12] : bit0to14;
assign sato_13 = (unch) ? d[13] : bit0to14;
assign sato_14 = (unch) ? d[14] : bit0to14;

// DSP_A-5Q.NET (688) - sato[15-30] : mx2
assign sato_15 = (unch) ? d[15] : bit15to30;
assign sato_16 = (unch) ? d[16] : bit15to30;
assign sato_17 = (unch) ? d[17] : bit15to30;
assign sato_18 = (unch) ? d[18] : bit15to30;
assign sato_19 = (unch) ? d[19] : bit15to30;
assign sato_20 = (unch) ? d[20] : bit15to30;
assign sato_21 = (unch) ? d[21] : bit15to30;
assign sato_22 = (unch) ? d[22] : bit15to30;
assign sato_23 = (unch) ? d[23] : bit15to30;
assign sato_24 = (unch) ? d[24] : bit15to30;
assign sato_25 = (unch) ? d[25] : bit15to30;
assign sato_26 = (unch) ? d[26] : bit15to30;
assign sato_27 = (unch) ? d[27] : bit15to30;
assign sato_28 = (unch) ? d[28] : bit15to30;
assign sato_29 = (unch) ? d[29] : bit15to30;
assign sato_30 = (unch) ? d[30] : bit15to30;

// DSP_A-5Q.NET (689) - sato[31] : mx2
assign sato_31 = (unch) ? d[31] : bit31;

// DSP_A-5Q.NET (690) - q : join
assign q[0] = sato_0;
assign q[1] = sato_1;
assign q[2] = sato_2;
assign q[3] = sato_3;
assign q[4] = sato_4;
assign q[5] = sato_5;
assign q[6] = sato_6;
assign q[7] = sato_7;
assign q[8] = sato_8;
assign q[9] = sato_9;
assign q[10] = sato_10;
assign q[11] = sato_11;
assign q[12] = sato_12;
assign q[13] = sato_13;
assign q[14] = sato_14;
assign q[15] = sato_15;
assign q[16] = sato_16;
assign q[17] = sato_17;
assign q[18] = sato_18;
assign q[19] = sato_19;
assign q[20] = sato_20;
assign q[21] = sato_21;
assign q[22] = sato_22;
assign q[23] = sato_23;
assign q[24] = sato_24;
assign q[25] = sato_25;
assign q[26] = sato_26;
assign q[27] = sato_27;
assign q[28] = sato_28;
assign q[29] = sato_29;
assign q[30] = sato_30;
assign q[31] = sato_31;
endmodule
/* verilator lint_on LITENDIAN */
