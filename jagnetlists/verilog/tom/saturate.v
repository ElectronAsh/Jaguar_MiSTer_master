/* verilator lint_off LITENDIAN */
`include "defs.v"

module saturate
(
	output [0:23] q,
	input [0:31] d,
	input sixteen,
	input twentyfour
);
wire sign_n;
wire twentyfour_n;
wire oflow24;
wire oflow16;
wire oflow8;
wire opt_16;
wire opt_17;
wire opt_18;
wire opt_19;
wire opt_20;
wire opt_21;
wire opt_22;
wire opt_23;
wire op_16;
wire op_17;
wire op_18;
wire op_19;
wire op_20;
wire op_21;
wire op_22;
wire op_23;
wire op8t15t0;
wire op8t15t1;
wire opt_8;
wire opt_9;
wire opt_10;
wire opt_11;
wire opt_12;
wire opt_13;
wire opt_14;
wire opt_15;
wire op_8;
wire op_9;
wire op_10;
wire op_11;
wire op_12;
wire op_13;
wire op_14;
wire op_15;
wire lobt_0;
wire lobt_1;
wire lobt_2;
wire lobt_3;
wire lobt_4;
wire opt_0;
wire opt_1;
wire opt_2;
wire opt_3;
wire opt_4;
wire opt_5;
wire opt_6;
wire opt_7;
wire op_0;
wire op_1;
wire op_2;
wire op_3;
wire op_4;
wire op_5;
wire op_6;
wire op_7;

// ARITH.NET (535) - sign\ : ivh
assign sign_n = ~d[31];

// ARITH.NET (536) - twentyfour\ : iv
assign twentyfour_n = ~twentyfour;

// ARITH.NET (538) - oflow24 : or7m
assign oflow24 = d[24] | d[25] | d[26] | d[27] | d[28] | d[29] | d[30];

// ARITH.NET (539) - oflow16 : or8
assign oflow16 = d[16] | d[17] | d[18] | d[19] | d[20] | d[21] | d[22] | d[23];

// ARITH.NET (540) - oflow8 : or8
assign oflow8 = d[8] | d[9] | d[10] | d[11] | d[12] | d[13] | d[14] | d[15];

// ARITH.NET (549) - opt[16-23] : or2
assign opt_16 = oflow24 | d[16];
assign opt_17 = oflow24 | d[17];
assign opt_18 = oflow24 | d[18];
assign opt_19 = oflow24 | d[19];
assign opt_20 = oflow24 | d[20];
assign opt_21 = oflow24 | d[21];
assign opt_22 = oflow24 | d[22];
assign opt_23 = oflow24 | d[23];

// ARITH.NET (550) - op[16-23] : an3
assign op_16 = twentyfour & sign_n & opt_16;
assign op_17 = twentyfour & sign_n & opt_17;
assign op_18 = twentyfour & sign_n & opt_18;
assign op_19 = twentyfour & sign_n & opt_19;
assign op_20 = twentyfour & sign_n & opt_20;
assign op_21 = twentyfour & sign_n & opt_21;
assign op_22 = twentyfour & sign_n & opt_22;
assign op_23 = twentyfour & sign_n & opt_23;

// ARITH.NET (562) - op8t15t0 : or2
assign op8t15t0 = twentyfour | sixteen;

// ARITH.NET (563) - op8t15t1 : aor1p
assign op8t15t1 = (oflow16 & twentyfour_n) | oflow24;

// ARITH.NET (564) - opt[8-15] : or2
assign opt_8 = op8t15t1 | d[8];
assign opt_9 = op8t15t1 | d[9];
assign opt_10 = op8t15t1 | d[10];
assign opt_11 = op8t15t1 | d[11];
assign opt_12 = op8t15t1 | d[12];
assign opt_13 = op8t15t1 | d[13];
assign opt_14 = op8t15t1 | d[14];
assign opt_15 = op8t15t1 | d[15];

// ARITH.NET (565) - op[8-15] : an3
assign op_8 = op8t15t0 & sign_n & opt_8;
assign op_9 = op8t15t0 & sign_n & opt_9;
assign op_10 = op8t15t0 & sign_n & opt_10;
assign op_11 = op8t15t0 & sign_n & opt_11;
assign op_12 = op8t15t0 & sign_n & opt_12;
assign op_13 = op8t15t0 & sign_n & opt_13;
assign op_14 = op8t15t0 & sign_n & opt_14;
assign op_15 = op8t15t0 & sign_n & opt_15;

// ARITH.NET (580) - lobt0 : nr2
assign lobt_0 = ~(sixteen | twentyfour);

// ARITH.NET (581) - lobt1 : nd2
assign lobt_1 = ~(lobt_0 & oflow8);

// ARITH.NET (582) - lobt2 : nd2
assign lobt_2 = ~(oflow16 & sixteen);

// ARITH.NET (583) - lobt3 : iv
assign lobt_3 = ~oflow24;

// ARITH.NET (584) - lobt4 : nd3p
assign lobt_4 = ~(lobt_1 & lobt_2 & lobt_3);

// ARITH.NET (585) - opt[0-7] : or2
assign opt_0 = lobt_4 | d[0];
assign opt_1 = lobt_4 | d[1];
assign opt_2 = lobt_4 | d[2];
assign opt_3 = lobt_4 | d[3];
assign opt_4 = lobt_4 | d[4];
assign opt_5 = lobt_4 | d[5];
assign opt_6 = lobt_4 | d[6];
assign opt_7 = lobt_4 | d[7];

// ARITH.NET (586) - op[0-7] : an2
assign op_0 = opt_0 & sign_n;
assign op_1 = opt_1 & sign_n;
assign op_2 = opt_2 & sign_n;
assign op_3 = opt_3 & sign_n;
assign op_4 = opt_4 & sign_n;
assign op_5 = opt_5 & sign_n;
assign op_6 = opt_6 & sign_n;
assign op_7 = opt_7 & sign_n;

// ARITH.NET (588) - q : join
assign q[0] = op_0;
assign q[1] = op_1;
assign q[2] = op_2;
assign q[3] = op_3;
assign q[4] = op_4;
assign q[5] = op_5;
assign q[6] = op_6;
assign q[7] = op_7;
assign q[8] = op_8;
assign q[9] = op_9;
assign q[10] = op_10;
assign q[11] = op_11;
assign q[12] = op_12;
assign q[13] = op_13;
assign q[14] = op_14;
assign q[15] = op_15;
assign q[16] = op_16;
assign q[17] = op_17;
assign q[18] = op_18;
assign q[19] = op_19;
assign q[20] = op_20;
assign q[21] = op_21;
assign q[22] = op_22;
assign q[23] = op_23;
endmodule
/* verilator lint_on LITENDIAN */
