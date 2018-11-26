/* verilator lint_off LITENDIAN */
`include "defs.v"

module add16sat
(
	output [0:15] r,
	output co,
	input [0:15] a,
	input [0:15] b,
	input cin,
	input sat,
	input eightbit,
	input hicinh
);

wire	[15:0]	r_r;
wire	[15:0]	a_r;
wire	[15:0]	b_r;

assign r[0:15] = { 
	r_r[0], r_r[1], r_r[2], r_r[3], 
	r_r[4], r_r[5], r_r[6], r_r[7],
	r_r[8], r_r[9], r_r[10], r_r[11],
	r_r[12], r_r[13], r_r[14], r_r[15]
};

assign a_r[15:0] = {
	a[15], a[14], a[13], a[12],
	a[11], a[10], a[9], a[8],
	a[7], a[6], a[5], a[4],
	a[3], a[2], a[1], a[0]	
};
assign b_r[15:0] = {
	b[15], b[14], b[13], b[12],
	b[11], b[10], b[9], b[8],
	b[7], b[6], b[5], b[4],
	b[3], b[2], b[1], b[0]	
};

wire [7:0] 	q8;
wire				co8;

`ifdef SIMULATION
assign { co8, q8[7:0] } = { 1'b0, a_r[7:0] } + { 1'b0, b_r[7:0] } + { 8'd0, cin };
`else
	lpm_add_sub	lpm_add_8 (
				.dataa (a_r[7:0]),
				.datab (b_r[7:0]),
				.cin (cin),
				.cout (co8),
				.result (q8[7:0])
				// synopsys translate_off
				,
				.aclr (),
				.add_sub (),
				.clken (),
				.clock (),
				.overflow ()
				// synopsys translate_on
				);
	defparam
		lpm_add_8.lpm_direction = "ADD",
		lpm_add_8.lpm_hint = "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=YES",
		lpm_add_8.lpm_representation = "UNSIGNED",
		lpm_add_8.lpm_type = "LPM_ADD_SUB",
		lpm_add_8.lpm_width = 8;
`endif


wire [3:0] 	q12_c0;
wire [3:0] 	q12_c1;
wire				co12_c0;
wire				co12_c1;

`ifdef SIMULATION
assign { co12_c0, q12_c0[3:0] } = { 1'b0, a_r[11:8] } + { 1'b0, b_r[11:8] } + 5'b00000;
assign { co12_c1, q12_c1[3:0] } = { 1'b0, a_r[11:8] } + { 1'b0, b_r[11:8] } + 5'b00001;
`else
	lpm_add_sub	lpm_add_12_c0 (
				.dataa (a_r[11:8]),
				.datab (b_r[11:8]),
				.cin (1'b0),
				.cout (co12_c0),
				.result (q12_c0[3:0])
				// synopsys translate_off
				,
				.aclr (),
				.add_sub (),
				.clken (),
				.clock (),
				.overflow ()
				// synopsys translate_on
				);
	defparam
		lpm_add_12_c0.lpm_direction = "ADD",
		lpm_add_12_c0.lpm_hint = "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=YES",
		lpm_add_12_c0.lpm_representation = "UNSIGNED",
		lpm_add_12_c0.lpm_type = "LPM_ADD_SUB",
		lpm_add_12_c0.lpm_width = 4;
		
	lpm_add_sub	lpm_add_12_c1 (
				.dataa (a_r[11:8]),
				.datab (b_r[11:8]),
				.cin (1'b1),
				.cout (co12_c1),
				.result (q12_c1[3:0])
				// synopsys translate_off
				,
				.aclr (),
				.add_sub (),
				.clken (),
				.clock (),
				.overflow ()
				// synopsys translate_on
				);
	defparam
		lpm_add_12_c1.lpm_direction = "ADD",
		lpm_add_12_c1.lpm_hint = "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=YES",
		lpm_add_12_c1.lpm_representation = "UNSIGNED",
		lpm_add_12_c1.lpm_type = "LPM_ADD_SUB",
		lpm_add_12_c1.lpm_width = 4;
`endif

wire [3:0] 	q16_c0;
wire [3:0] 	q16_c1;
wire				co16_c0;
wire				co16_c1;

`ifdef SIMULATION
assign { co16_c0, q16_c0[3:0] } = { 1'b0, a_r[15:12] } + { 1'b0, b_r[15:12] } + 5'b00000;
assign { co16_c1, q16_c1[3:0] } = { 1'b0, a_r[15:12] } + { 1'b0, b_r[15:12] } + 5'b00001;
`else
	lpm_add_sub	lpm_add_16_c0 (
				.dataa (a_r[15:12]),
				.datab (b_r[15:12]),
				.cin (1'b0),
				.cout (co16_c0),
				.result (q16_c0[3:0])
				// synopsys translate_off
				,
				.aclr (),
				.add_sub (),
				.clken (),
				.clock (),
				.overflow ()
				// synopsys translate_on
				);
	defparam
		lpm_add_16_c0.lpm_direction = "ADD",
		lpm_add_16_c0.lpm_hint = "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=YES",
		lpm_add_16_c0.lpm_representation = "UNSIGNED",
		lpm_add_16_c0.lpm_type = "LPM_ADD_SUB",
		lpm_add_16_c0.lpm_width = 4;
		
	lpm_add_sub	lpm_add_16_c1 (
				.dataa (a_r[15:12]),
				.datab (b_r[15:12]),
				.cin (1'b1),
				.cout (co16_c1),
				.result (q16_c1[3:0])
				// synopsys translate_off
				,
				.aclr (),
				.add_sub (),
				.clken (),
				.clock (),
				.overflow ()
				// synopsys translate_on
				);
	defparam
		lpm_add_16_c1.lpm_direction = "ADD",
		lpm_add_16_c1.lpm_hint = "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=YES",
		lpm_add_16_c1.lpm_representation = "UNSIGNED",
		lpm_add_16_c1.lpm_type = "LPM_ADD_SUB",
		lpm_add_16_c1.lpm_width = 4;
`endif



wire	[15:0]	q;

assign q[7:0] = q8[7:0];
assign q[11:8] = (co8 & ~eightbit) ? q12_c1 : q12_c0;

wire	co12;
assign co12 = (co8 & ~eightbit) ? co12_c1 : co12_c0;

assign q[15:12] = (co12 & ~hicinh) ? q16_c1 : q16_c0;

wire	co16;
assign co16 = (co12 & ~hicinh) ? co16_c1 : co16_c0;

assign co = co16;


wire btop;
wire ctop;
assign btop = (eightbit) ? b[7] : b[15];
assign ctop = (eightbit) ? co8 : co16;

wire saturate;
wire hisaturate;
assign saturate = (btop ^ ctop) & sat;
assign hisaturate = (saturate & ~eightbit);

assign r_r[7:0] = (saturate) ? { ctop, ctop, ctop, ctop, ctop, ctop, ctop, ctop } : q[7:0];
assign r_r[15:8] = (hisaturate) ? { ctop, ctop, ctop, ctop, ctop, ctop, ctop, ctop } : q[15:8];

endmodule
/* verilator lint_on LITENDIAN */
