/* verilator lint_off LITENDIAN */
`include "defs.v"

module tb
(
);

reg		OSC_CLK0;
reg	[3:0]	SW;

wire 					vga_vs_n;
wire					vga_hs_n;
wire [7:0] 		vga_r;
wire [7:0] 		vga_g;
wire [7:0] 		vga_b;

initial
begin
  $dumpfile("tb_s2.vcd");
  $dumpvars(0, tb);
	// #5001001001
	// begin
		// $finish;
	// end
end

initial
begin
	OSC_CLK0   = 1'b0;
	forever #10 OSC_CLK0 = ~OSC_CLK0;
end

initial
begin
	SW[0] 	= 1'b0;
	#120 SW[0]  = 1'b1;
end


wire        SSRAM_CLK;
wire        SSRAM_CE1_n;
wire        SSRAM_CE2;
wire        SSRAM_CE3_n;
wire        SSRAM_OE_n;
wire        SSRAM_BWE_n;
wire        SSRAM_GW_n;   
wire        SSRAM_ADSC_n; 
wire        SSRAM_ADSP_n; 
wire        SSRAM_ADV_n;  
wire [20:0] SSRAM_ADDR;
wire  [3:0] SSRAM_BE_n;
wire  [31:0] SSRAM_DQ;


// wire  [0:9] 	dram_a;
// wire  				dram_ras_n;
// wire					dram_cas_n;
// wire	[0:3]		dram_oe_n;
// wire 	[0:3]		dram_uw_n;
// wire 	[0:3]		dram_lw_n;
// wire	[0:63]	dram_d;
// wire	[0:63]	dram_q;
// wire	[0:3]		dram_oe;

jag_s2 top
(
	.SW(SW),
	.OSC_CLK0(OSC_CLK0),

	// .dram_a(dram_a),
	// .dram_ras_n(dram_ras_n),
	// .dram_cas_n(dram_cas_n),
	// .dram_oe_n(dram_oe_n),
	// .dram_uw_n(dram_uw_n),
	// .dram_lw_n(dram_lw_n),
	// .dram_d(dram_d),
	// .dram_q(dram_q),
	// .dram_oe(dram_oe),

	.SSRAM_CLK(SSRAM_CLK),
	.SSRAM_CE1_n(SSRAM_CE1_n),
	.SSRAM_CE2(SSRAM_CE2),
	.SSRAM_CE3_n(SSRAM_CE3_n),
	.SSRAM_OE_n(SSRAM_OE_n),
	.SSRAM_BWE_n(SSRAM_BWE_n),
	.SSRAM_GW_n(SSRAM_GW_n),   
	.SSRAM_ADSC_n(SSRAM_ADSC_n), 
	.SSRAM_ADSP_n(SSRAM_ADSP_n), 
	.SSRAM_ADV_n(SSRAM_ADV_n),  
	.SSRAM_ADDR(SSRAM_ADDR),
	.SSRAM_BE_n(SSRAM_BE_n),
	.SSRAM_DQ(SSRAM_DQ)
);


reg [31:0] ram_blk[0:(1<<19)-1];

initial
begin
	$readmemh("ssram.mem", ram_blk);
end

reg [20:0] ram_a;
reg [31:0] ram_q;
reg [31:0] ram_q_dly;

reg rd_n = 1'b1;
reg [3:0]  be_n = 4'b1111;

always @(posedge SSRAM_CLK)
begin
	ram_q_dly <= ram_q;
	ram_q <= ram_blk[ram_a[20:2]];
	
	if (~SSRAM_OE_n) begin
		$display("SSRAM RD %06X [%08X]", ram_a, ram_q);
	end
	
	if (~SSRAM_ADSC_n || ~SSRAM_ADSP_n) begin
		ram_a <= SSRAM_ADDR;
	end
	if (~SSRAM_ADV_n) begin
		ram_a[2] <= 1'b1;
	end
	
	if (~SSRAM_BWE_n) begin
		be_n <= SSRAM_BE_n;
	end
	
	if (~be_n[0]) begin
		ram_blk[ram_a[20:2]][7:0] <= SSRAM_DQ[7:0];
		$display("SSRAM WR %06X [      %02X]", ram_a, SSRAM_DQ[7:0]);
		be_n[0] <= 1'b1;
	end
	if (~be_n[1]) begin
		ram_blk[ram_a[20:2]][15:8] <= SSRAM_DQ[15:8];
		$display("SSRAM WR %06X [    %02X  ]", ram_a, SSRAM_DQ[15:8]);
		be_n[1] <= 1'b1;
	end
	if (~be_n[2]) begin
		ram_blk[ram_a[20:2]][23:16] <= SSRAM_DQ[23:16];
		$display("SSRAM WR %06X [  %02X    ]", ram_a, SSRAM_DQ[23:16]);
		be_n[2] <= 1'b1;
	end
	if (~be_n[3]) begin
		ram_blk[ram_a[20:2]][31:24] <= SSRAM_DQ[31:24];
		$display("SSRAM WR %06X [%02X      ]", ram_a, SSRAM_DQ[31:24]);
		be_n[3] <= 1'b1;
	end
	
end

assign SSRAM_DQ = (~SSRAM_OE_n) ? ram_q : 32'bzzzzzzzz_zzzzzzzz_zzzzzzzz_zzzzzzzz;

// dram dram_inst
// (
	// .a(dram_a),
	// .ras_n(dram_ras_n),
	// .cas_n(dram_cas_n),
	// .uw_n(dram_uw_n),
	// .lw_n(dram_lw_n),
	// .oe_n(dram_oe_n),
	// .d(dram_d),
	// .q(dram_q),
	// .oe(dram_oe),
	// .sys_clk(SSRAM_CLK)
// );

endmodule

// module dram
// (
	// input		[0:9] 	a,
	// input						ras_n,
	// input						cas_n,
	// input		[0:3]		oe_n,
	// input		[0:3]		uw_n,
	// input		[0:3]		lw_n,
	// output	[0:63]	q,
	// input		[0:63]	d,
	// output	[0:3]		oe,
	// input sys_clk
// );

// reg [0:63] ram_blk[0:(1<<18)-1];

// wire [9:0] a_r;
// reg [17:0] ea;

// wire [0:3] w_oe;

// reg ras_n_prev = 1'b0;
// reg cas_n_prev = 1'b0;

// wire [63:0] d_r;

// initial
// begin
	// $readmemb("dram.mem", ram_blk);
// end

// assign a_r = { a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0] };
// assign d_r[63:0] = { 
	// d[63], d[62], d[61], d[60], d[59], d[58], d[57], d[56], 
	// d[55], d[54], d[53], d[52], d[51], d[50], d[49], d[48], 
	// d[47], d[46], d[45], d[44], d[43], d[42], d[41], d[40], 
	// d[39], d[38], d[37], d[36], d[35], d[34], d[33], d[32], 
	// d[31], d[30], d[29], d[28], d[27], d[26], d[25], d[24], 
	// d[23], d[22], d[21], d[20], d[19], d[18], d[17], d[16], 
	// d[15], d[14], d[13], d[12], d[11], d[10], d[9], d[8], 
	// d[7], d[6], d[5], d[4], d[3], d[2], d[1], d[0]
// };

// always @(posedge sys_clk)
// begin
	// ras_n_prev <= ras_n;
	// cas_n_prev <= cas_n;
	// if (ras_n_prev & ~ras_n) begin
		// ea[17:8] <= a_r[9:0];
		// $display("RAS ma=%x ma_r=%x", a, a_r );
	// end
	// if (cas_n_prev & ~cas_n) begin
		// ea[7:0] <= a_r[7:0];
		// $display("  CAS ma=%x ma_r=%x", a, a_r );
		// if (~uw_n[0]) begin
			// ram_blk[ { ea[17:8], a_r[7:0] } ][8:15] <= d[8:15];
			// $display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b110 }, d_r[15:8] );
		// end
		// if (~lw_n[0]) begin
			// ram_blk[ { ea[17:8], a_r[7:0] } ][0:7] <= d[0:7];
			// $display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b111 }, d_r[7:0] );
		// end	
		// if (~uw_n[1]) begin
			// ram_blk[ { ea[17:8], a_r[7:0] } ][24:31] <= d[24:31];
			// $display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b100 }, d_r[31:24]);
		// end
		// if (~lw_n[1]) begin
			// ram_blk[ { ea[17:8], a_r[7:0] } ][16:23] <= d[16:23];
			// $display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b101 }, d_r[23:16] );
		// end	
		// if (~uw_n[2]) begin
			// ram_blk[ { ea[17:8], a_r[7:0] } ][40:47] <= d[40:47];
			// $display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b010 }, d_r[47:40] );
		// end
		// if (~lw_n[2]) begin
			// ram_blk[ { ea[17:8], a_r[7:0] } ][32:39] <= d[32:39];
			// $display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b011 }, d_r[39:32] );			
		// end	
		// if (~uw_n[3]) begin
			// ram_blk[ { ea[17:8], a_r[7:0] } ][56:63] <= d[56:63];
			// $display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b000 }, d_r[63:56] );
		// end
		// if (~lw_n[3]) begin
			// ram_blk[ { ea[17:8], a_r[7:0] } ][48:55] <= d[48:55];
			// $display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b001 }, d_r[55:48] );
		// end
	// end	
// end

// assign oe = w_oe;
// assign w_oe[0] = (~oe_n[0] & ~cas_n & (uw_n[0] | lw_n[0]));
// assign w_oe[1] = (~oe_n[1] & ~cas_n & (uw_n[1] | lw_n[1]));
// assign w_oe[2] = (~oe_n[2] & ~cas_n & (uw_n[2] | lw_n[2]));
// assign w_oe[3] = (~oe_n[3] & ~cas_n & (uw_n[3] | lw_n[3]));

// assign q = ram_blk[ ea ][0:63];

// endmodule


/* verilator lint_on LITENDIAN */
