/* verilator lint_off LITENDIAN */
`include "defs.v"

module gpu_ram
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
	input ramen,
	input sys_clk // Generated
);
wire [0:9] rama;
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
wire ramwe;

// GPU_RAM.NET (27) - ramad[0-9] : nivniv
nivniv ramad_from_0_to_9_inst_0
(
	.z /* OUT */ (ramad_0),
	.a /* IN */ (ram_addr_2)
);
nivniv ramad_from_0_to_9_inst_1
(
	.z /* OUT */ (ramad_1),
	.a /* IN */ (ram_addr_3)
);
nivniv ramad_from_0_to_9_inst_2
(
	.z /* OUT */ (ramad_2),
	.a /* IN */ (ram_addr_4)
);
nivniv ramad_from_0_to_9_inst_3
(
	.z /* OUT */ (ramad_3),
	.a /* IN */ (ram_addr_5)
);
nivniv ramad_from_0_to_9_inst_4
(
	.z /* OUT */ (ramad_4),
	.a /* IN */ (ram_addr_6)
);
nivniv ramad_from_0_to_9_inst_5
(
	.z /* OUT */ (ramad_5),
	.a /* IN */ (ram_addr_7)
);
nivniv ramad_from_0_to_9_inst_6
(
	.z /* OUT */ (ramad_6),
	.a /* IN */ (ram_addr_8)
);
nivniv ramad_from_0_to_9_inst_7
(
	.z /* OUT */ (ramad_7),
	.a /* IN */ (ram_addr_9)
);
nivniv ramad_from_0_to_9_inst_8
(
	.z /* OUT */ (ramad_8),
	.a /* IN */ (ram_addr_10)
);
nivniv ramad_from_0_to_9_inst_9
(
	.z /* OUT */ (ramad_9),
	.a /* IN */ (ram_addr_11)
);

// GPU_RAM.NET (28) - rama : join
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

// GPU_RAM.NET (31) - ramwe : nd2
assign ramwe = ~(ramen & gpu_memw);

// GPU_RAM.NET (33) - program : gpuram
gpuram program_inst
(
	.gpu_data_out /* BUS */ ({gpu_data_out[0],gpu_data_out[1],gpu_data_out[2],gpu_data_out[3],gpu_data_out[4],gpu_data_out[5],gpu_data_out[6],gpu_data_out[7],gpu_data_out[8],gpu_data_out[9],gpu_data_out[10],gpu_data_out[11],gpu_data_out[12],gpu_data_out[13],gpu_data_out[14],gpu_data_out[15],gpu_data_out[16],gpu_data_out[17],gpu_data_out[18],gpu_data_out[19],gpu_data_out[20],gpu_data_out[21],gpu_data_out[22],gpu_data_out[23],gpu_data_out[24],gpu_data_out[25],gpu_data_out[26],gpu_data_out[27],gpu_data_out[28],gpu_data_out[29],gpu_data_out[30],gpu_data_out[31]}),
	.gpu_data_oe /* BUS */ ({gpu_data_oe[0],gpu_data_oe[1],gpu_data_oe[2],gpu_data_oe[3],gpu_data_oe[4],gpu_data_oe[5],gpu_data_oe[6],gpu_data_oe[7],gpu_data_oe[8],gpu_data_oe[9],gpu_data_oe[10],gpu_data_oe[11],gpu_data_oe[12],gpu_data_oe[13],gpu_data_oe[14],gpu_data_oe[15],gpu_data_oe[16],gpu_data_oe[17],gpu_data_oe[18],gpu_data_oe[19],gpu_data_oe[20],gpu_data_oe[21],gpu_data_oe[22],gpu_data_oe[23],gpu_data_oe[24],gpu_data_oe[25],gpu_data_oe[26],gpu_data_oe[27],gpu_data_oe[28],gpu_data_oe[29],gpu_data_oe[30],gpu_data_oe[31]}),
	.gpu_data_in /* BUS */ ({gpu_data_in[0],gpu_data_in[1],gpu_data_in[2],gpu_data_in[3],gpu_data_in[4],gpu_data_in[5],gpu_data_in[6],gpu_data_in[7],gpu_data_in[8],gpu_data_in[9],gpu_data_in[10],gpu_data_in[11],gpu_data_in[12],gpu_data_in[13],gpu_data_in[14],gpu_data_in[15],gpu_data_in[16],gpu_data_in[17],gpu_data_in[18],gpu_data_in[19],gpu_data_in[20],gpu_data_in[21],gpu_data_in[22],gpu_data_in[23],gpu_data_in[24],gpu_data_in[25],gpu_data_in[26],gpu_data_in[27],gpu_data_in[28],gpu_data_in[29],gpu_data_in[30],gpu_data_in[31]}),
	.clk /* IN */ (clk),
	.rama /* IN */ ({rama[0],rama[1],rama[2],rama[3],rama[4],rama[5],rama[6],rama[7],rama[8],rama[9]}),
	.ramen /* IN */ (ramen),
	.ramwe /* IN */ (ramwe),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
