/* verilator lint_off LITENDIAN */
`include "defs.v"

module jag_s2
(
	input		[3:0]	SW,
	input 				OSC_CLK0,
 	
	output        SSRAM_CLK,
	output        SSRAM_CE1_n,
	output        SSRAM_CE2,
	output        SSRAM_CE3_n,
	output        SSRAM_OE_n,
	output        SSRAM_BWE_n,
	output        SSRAM_GW_n,   
	output        SSRAM_ADSC_n, 
	output        SSRAM_ADSP_n, 
	output        SSRAM_ADV_n,  
	output [20:0] SSRAM_ADDR,
	output  [3:0] SSRAM_BE_n,
`ifdef verilator3
	input  [31:0] SSRAM_Q,
	output [31:0] SSRAM_D,
`else
	inout  [31:0] SSRAM_DQ,
`endif
	
	output				FLS_CS_n,
	output				FLS_OE_n,
	output				FLS_RW_n,
	output				FLS_WP_n,
	output				FLS_BYTE_n,
	
	output	[23:0]	FE_ADDR,
`ifdef verilator3
	input		[31:0]	FE_DQ,
`else
	inout		[31:0]	FE_DQ,
`endif

	//output	[28:0]	PROTO2_IO,

`ifdef verilator3

  output        DBG_CPU_RDEN,
  output        DBG_CPU_WREN,
  output        DBG_CPU_DTACK,
  output  [1:0] DBG_CPU_BENA,
  output [31:0] DBG_CPU_ADDR,
  output [15:0] DBG_CPU_RDATA,
  output [15:0] DBG_CPU_WDATA,
  output  [3:0] DBG_REG_ADDR,
  output  [3:0] DBG_REG_WREN,
  output [15:0] DBG_REG_DATA,
  output [15:0] DBG_SR_REG,
  output [31:0] DBG_PC_REG,
  output [31:0] DBG_USP_REG,
  output [31:0] DBG_SSP_REG,
  output [31:0] DBG_CYCLES,
  output        DBG_IFETCH,

	output vga_vs_n,
	output vga_hs_n,
	output [7:0] vga_r,
	output [7:0] vga_g,
	output [7:0] vga_b,
	
	output	[16:0]	os_rom_a,
	output					os_rom_ce_n,
	output					os_rom_oe_n,
	input		[7:0]		os_rom_q,
	input						os_rom_oe,
`endif

`ifndef verilator3
	output	[7:0]		VGA_R,
	output	[7:0]		VGA_G,
	output	[7:0]		VGA_B,
	output					VGA_HS,
	output					VGA_VS,
	output					VGA_BLANK_n,
	output					VGA_CLK,
`endif

	output	AUD_LEFT,
	output	AUD_RIGHT,
	
	output	[7:0] HEX_0,
	output	[7:0] HEX_1,
	output	[7:0]	LED_n

);

wire xresetl;

//wire xpclk;
//wire xvclk;
wire sys_clk;
wire mem_clk;

`ifndef verilator3
wire vga_vs_n;
wire vga_hs_n;
wire [7:0] vga_r;
wire [7:0] vga_g;
wire [7:0] vga_b;
`endif
wire vga_bl;

reg vga_vs_prev = 1'b1;
reg [15:0] vs_cnt = 16'd0;

always @(posedge sys_clk)
begin
	vga_vs_prev <= vga_vs_n;
	if (~xresetl) begin
		vs_cnt <= 16'd0;
	end else if (vga_vs_prev & ~vga_vs_n) begin
		vs_cnt <= vs_cnt + 1;
	end
end

assign LED_n = ~vs_cnt[12:5];


/*assign PROTO2_IO[0] = vga_vs_n;
assign PROTO2_IO[1] = vga_hs_n;

assign PROTO2_IO[2] = vga_r[7];
assign PROTO2_IO[3] = vga_r[6];
assign PROTO2_IO[4] = vga_r[5];
assign PROTO2_IO[5] = vga_r[4];

assign PROTO2_IO[6] = vga_g[7];
assign PROTO2_IO[7] = vga_g[6];
assign PROTO2_IO[10] = vga_g[5];
assign PROTO2_IO[11] = vga_g[4];

assign PROTO2_IO[12] = vga_b[7];
assign PROTO2_IO[13] = vga_b[6];
assign PROTO2_IO[14] = vga_b[5];
assign PROTO2_IO[15] = vga_b[4];*/

`ifndef verilator3
assign VGA_R = vga_r;
assign VGA_G = vga_g;
assign VGA_B = vga_b;
assign VGA_BLANK_n = ~vga_bl;
assign VGA_VS = vga_vs_n;
assign VGA_HS = vga_hs_n;
assign VGA_CLK = sys_clk;
`endif


assign xresetl = SW[0];

pll50 pll
(
	.inclk0(OSC_CLK0),
	.c0(),
	.c1(),
	.c2(sys_clk),
	.c3(SSRAM_CLK)
);
assign mem_clk = sys_clk;

`ifndef verilator3
wire	[16:0]	os_rom_a;
wire					os_rom_ce_n;
wire					os_rom_oe_n;
wire	[7:0]		os_rom_q;
wire					os_rom_oe;

	altsyncram	os_rom (
				.clock0 (sys_clk),
				.address_a (os_rom_a[13:0]),
				.q_a (os_rom_q),
				.aclr0 (1'b0),
				.aclr1 (1'b0),
				.address_b (1'b1),
				.addressstall_a (1'b0),
				.addressstall_b (1'b0),
				.byteena_a (1'b1),
				.byteena_b (1'b1),
				.clock1 (1'b1),
				.clocken0 (1'b1),
				.clocken1 (1'b1),
				.clocken2 (1'b1),
				.clocken3 (1'b1),
				.data_a ({8{1'b1}}),
				.data_b (1'b1),
				.eccstatus (),
				.q_b (),
				.rden_a (1'b1),
				.rden_b (1'b1),
				.wren_a (1'b0),
				.wren_b (1'b0));
	defparam
		os_rom.clock_enable_input_a = "BYPASS",
		os_rom.clock_enable_output_a = "BYPASS",
		os_rom.init_file = "os.mif",
		os_rom.intended_device_family = "Stratix II",
		os_rom.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
		os_rom.lpm_type = "altsyncram",
		os_rom.numwords_a = 16384,
		os_rom.operation_mode = "ROM",
		os_rom.outdata_aclr_a = "NONE",
		os_rom.outdata_reg_a = "CLOCK0",
		os_rom.widthad_a = 14,
		os_rom.width_a = 8,
		os_rom.width_byteena_a = 1;

assign os_rom_oe = (~os_rom_ce_n & ~os_rom_oe_n);
`endif

wire	[23:0]	cart_a;
wire					cart_ce_n;
wire	[1:0]		cart_oe_n;
wire	[31:0]	cart_q;
wire	[1:0]		cart_oe;

// assign cart_q = 32'h00000000;
// assign cart_oe = 2'b00;

assign	FLS_RW_n = 1'b1;
assign	FLS_WP_n = 1'b0;
assign	FLS_BYTE_n = 1'b0;

assign	FE_ADDR = cart_a;
`ifndef verilator3
assign	FE_DQ = 32'bzzzzzzzz_zzzzzzzz_zzzzzzzz_zzzzzzzz;
`endif
assign	FLS_CS_n = cart_ce_n;
assign	FLS_OE_n = cart_oe_n[0];

assign	cart_q = FE_DQ;
assign	cart_oe[0] = ~cart_oe_n[0] & ~cart_ce_n;
assign	cart_oe[1] = ~cart_oe_n[1] & ~cart_ce_n;


wire  [0:9] 	dram_a;
wire					dram_ras_n;
wire					dram_cas_n;
wire	[0:3]		dram_oe_n;
wire 	[0:3]		dram_uw_n;
wire 	[0:3]		dram_lw_n;
wire	[0:63]	dram_d;
wire		[0:63]	dram_q;
wire		[0:3]		dram_oe;

wire			fdram;
wire			ram_rdy;

jaguar jag
(
	.xresetl(xresetl),
	// .xpclk(xpclk),
	// .xvclk(xvclk),
	.sys_clk(sys_clk),
	
	.dram_a(dram_a),
	.dram_ras_n(dram_ras_n),
	.dram_cas_n(dram_cas_n),
	.dram_oe_n(dram_oe_n),
	.dram_uw_n(dram_uw_n),
	.dram_lw_n(dram_lw_n),
	.dram_d(dram_d),
	.dram_q(dram_q),
	.dram_oe(dram_oe),

	.ram_rdy(ram_rdy),
	
`ifndef verilator3	
	.DBG_CPU_RDEN(),
	.DBG_CPU_WREN(),
	.DBG_CPU_DTACK(),
	.DBG_CPU_BENA(),
	.DBG_CPU_ADDR(),
	.DBG_CPU_RDATA(),
	.DBG_CPU_WDATA(),
	.DBG_REG_ADDR(),
	.DBG_REG_WREN(),
	.DBG_REG_DATA(),
	.DBG_SR_REG(),
	.DBG_PC_REG(),
	.DBG_USP_REG(),
	.DBG_SSP_REG(),
	.DBG_CYCLES(),
	.DBG_IFETCH(),
`else
	.DBG_CPU_RDEN(DBG_CPU_RDEN),
	.DBG_CPU_WREN(DBG_CPU_WREN),
	.DBG_CPU_DTACK(DBG_CPU_DTACK),
	.DBG_CPU_BENA(DBG_CPU_BENA),
	.DBG_CPU_ADDR(DBG_CPU_ADDR),
	.DBG_CPU_RDATA(DBG_CPU_RDATA),
	.DBG_CPU_WDATA(DBG_CPU_WDATA),
	.DBG_REG_ADDR(DBG_REG_ADDR),
	.DBG_REG_WREN(DBG_REG_WREN),
	.DBG_REG_DATA(DBG_REG_DATA),
	.DBG_SR_REG(DBG_SR_REG),
	.DBG_PC_REG(DBG_PC_REG),
	.DBG_USP_REG(DBG_USP_REG),
	.DBG_SSP_REG(DBG_SSP_REG),
	.DBG_CYCLES(DBG_CYCLES),
	.DBG_IFETCH(DBG_IFETCH),
`endif
	
	.os_rom_a(os_rom_a),
	.os_rom_ce_n(os_rom_ce_n),
	.os_rom_oe_n(os_rom_oe_n),
	.os_rom_q(os_rom_q),
	.os_rom_oe(os_rom_oe),
	
	.cart_a(cart_a),
	.cart_ce_n(cart_ce_n),
	.cart_oe_n(cart_oe_n),
	.cart_q(cart_q),
	.cart_oe(cart_oe),
	
	.fdram(fdram),
	
	.vga_bl(vga_bl),
	.vga_vs_n(vga_vs_n),
	.vga_hs_n(vga_hs_n),
	.vga_r(vga_r),
	.vga_g(vga_g),
	.vga_b(vga_b),
	
	.aud_l(AUD_LEFT),
	.aud_r(AUD_RIGHT)
);


///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////


`define SS_IDLE		4'b0000
`define SS_END		4'b1111

// Burst Read
// 1) MC: Sets address, Asserts ADSC_N / OE_N		SS: Idle
// 2) MC:	Asserts ADV_N							SS: Receives "Read start"
// 3) MC: Deasserts ADV_N							SS: Receives "Burst advance"
// 4) MC: Latches data @address at the eoc			SS: Outputs data @address
// 5) MC: Latches data @address+1 at the eoc		SS: Outputs data @address+1

`define SS_RD_1	4'b0001
`define SS_RD_2	4'b0010
`define SS_RD_3	4'b0011
`define SS_RD_4	4'b0100
`define SS_RD_5	4'b0101

// Burst Write
// 1) MC: Sets address, Asserts ADSC_N / WE_N						SS: Idle
// 2) MC: Sets data @address, BWEs, asserts ADV_N	???				SS: Receives "Write start"
// 3) MC: Sets data @address+1, BWEs,	(de)asserts ADV_N	???		SS: Latches data @address, receives "Burst advance"
// 4) MC: Deasserts all												SS: Latches data @address+1, receives "Burst stop"
`define SS_WR_1	4'b1001
`define SS_WR_2	4'b1010
`define SS_WR_3	4'b1011
`define SS_WR_4	4'b1100
`define SS_WR_5	4'b1101

// reg		[20:0]	ssram_a = 21'd0;	// 20:2 are wired
wire	[20:0]	ssram_a;	// 20:2 are wired
// reg						ssram_adsc_n = 1'b1;
// reg		[3:0]		ssram_be_n = 4'b1111;
// reg						ssram_ce_n = 1'b1;
// reg						ssram_oe_n = 1'b1;
// reg						ssram_we_n = 1'b1;
// reg						ssram_asdp_n = 1'b1;
// reg						ssram_adv_n = 1'b1;
reg		[31:0]	ssram_q0 = 32'd0;
reg		[31:0]	ssram_q1 = 32'd0;

reg		[7:0]		r_ssram_be_n = 8'b11111111;

reg		[3:0]		mem_cyc = `SS_IDLE;

// Fixed outputs
// assign SSRAM_CLK = mem_clk;
// assign SSRAM_CLK = sys_clk;
assign SSRAM_CE2 = 1'b1;
assign SSRAM_CE3_n = 1'b0;
assign SSRAM_GW_n = 1'b1;

// FSM
always @(posedge mem_clk)
begin
	// if (~fdram) begin
		// mem_cyc <= `SS_IDLE;
	// end else begin
		case (mem_cyc)
			`SS_IDLE:
				if (fdram && (dram_oe_n != 4'b1111)) begin
					mem_cyc <= `SS_RD_1;
				end else if (fdram && ({dram_uw_n, dram_lw_n} != 8'b11111111)) begin
					mem_cyc <= `SS_WR_1;
				end
			`SS_RD_1: mem_cyc <= `SS_RD_2;
			`SS_RD_2: mem_cyc <= `SS_RD_3;
			`SS_RD_3: mem_cyc <= `SS_RD_4;
			`SS_RD_4: mem_cyc <= `SS_RD_5;
			`SS_RD_5: mem_cyc <= `SS_END;
			
			`SS_WR_1: mem_cyc <= `SS_WR_2;
			`SS_WR_2: mem_cyc <= `SS_WR_3;
			`SS_WR_3: mem_cyc <= `SS_WR_4;
			`SS_WR_4: mem_cyc <= `SS_WR_5;
			`SS_WR_5: mem_cyc <= `SS_END;
			
			default:
				if (dram_cas_n) begin
					mem_cyc <= `SS_IDLE;
				end else begin
					mem_cyc <= `SS_END;
				end
		endcase
	// end
end

reg	[0:63]	r_dram_d;

// Latch dram_uw_n and dram_lw_n in case of write
// Latch data as well
always @(posedge mem_clk)
begin
	if (mem_cyc == `SS_WR_1) begin
		r_ssram_be_n <= { dram_uw_n[3], dram_lw_n[3], 
											dram_uw_n[2], dram_lw_n[2], 
											dram_uw_n[1], dram_lw_n[1], 
											dram_uw_n[0], dram_lw_n[0] };
		r_dram_d <= dram_d;
	end
end

// Address
assign SSRAM_ADDR = ssram_a;

/*reg [20:0] dram_ea = 21'd0;
reg dram_check = 1'b0;

reg dram_ras_n_prev = 1'b0;
reg dram_cas_n_prev = 1'b0;

always @(posedge sys_clk)
begin
	dram_ras_n_prev <= dram_ras_n;
	dram_cas_n_prev <= dram_cas_n;
	if (dram_ras_n_prev & ~dram_ras_n) begin
		dram_ea[20:11] <= { dram_a[9], dram_a[8], dram_a[7], dram_a[6], dram_a[5], 
			dram_a[4], dram_a[3], dram_a[2], dram_a[1], dram_a[0] };
	end
	if (dram_cas_n_prev & ~dram_cas_n) begin
		dram_ea[10:3] <= { dram_a[7], dram_a[6], dram_a[5], 
			dram_a[4], dram_a[3], dram_a[2], dram_a[1], dram_a[0] };
		dram_check <= 1'b1;
	end
	if (dram_cas_n) begin
		dram_check <= 1'b0;
	end
	
	if (dram_check && ( (dram_oe_n != 4'b1111) || ({dram_uw_n, dram_lw_n} != 8'b11111111) )) begin
		if (dram_ea != ssram_a) begin
			$display("========= MISMATCH DRAM=%06X CART=%06X", dram_ea, ssram_a);
		end
		dram_check <= 1'b0;
	end
end*/

assign ssram_a[20:3] = cart_a[20:3];
assign ssram_a[2:0] = 3'b000;

// Control
assign SSRAM_ADSC_n = (mem_cyc == `SS_RD_1) ? 1'b0 : 1'b1;
assign SSRAM_ADSP_n = (mem_cyc == `SS_WR_1) ? 1'b0 : 1'b1;
assign SSRAM_ADV_n = ( (mem_cyc == `SS_RD_2) || (mem_cyc == `SS_WR_4)  ) ? 1'b0 : 1'b1;
assign SSRAM_CE1_n = ( (mem_cyc == `SS_RD_1) || (mem_cyc == `SS_WR_1)  ) ? 1'b0 : 1'b1;
assign SSRAM_BE_n[0] = (mem_cyc == `SS_WR_2) ? r_ssram_be_n[4] : (mem_cyc == `SS_WR_4) ? r_ssram_be_n[0] : 1'b1;
assign SSRAM_BE_n[1] = (mem_cyc == `SS_WR_2) ? r_ssram_be_n[5] : (mem_cyc == `SS_WR_4) ? r_ssram_be_n[1] : 1'b1;
assign SSRAM_BE_n[2] = (mem_cyc == `SS_WR_2) ? r_ssram_be_n[6] : (mem_cyc == `SS_WR_4) ? r_ssram_be_n[2] : 1'b1;
assign SSRAM_BE_n[3] = (mem_cyc == `SS_WR_2) ? r_ssram_be_n[7] : (mem_cyc == `SS_WR_4) ? r_ssram_be_n[3] : 1'b1;
assign SSRAM_BWE_n = ( (mem_cyc == `SS_WR_2) || (mem_cyc == `SS_WR_4)  ) ? 1'b0 : 1'b1;
assign SSRAM_OE_n = ( (mem_cyc == `SS_RD_2) || (mem_cyc == `SS_RD_3) || (mem_cyc == `SS_RD_4) || (mem_cyc == `SS_RD_5) ) ? 1'b0 : 1'b1;

// Data bus
`ifndef verilator3
assign SSRAM_DQ = ( (mem_cyc == `SS_WR_2) || (mem_cyc == `SS_WR_3) ) ? {
		r_dram_d[63], r_dram_d[62], r_dram_d[61], r_dram_d[60], r_dram_d[59], r_dram_d[58], r_dram_d[57], r_dram_d[56], 
		r_dram_d[55], r_dram_d[54], r_dram_d[53], r_dram_d[52], r_dram_d[51], r_dram_d[50], r_dram_d[49], r_dram_d[48], 
		r_dram_d[47], r_dram_d[46], r_dram_d[45], r_dram_d[44], r_dram_d[43], r_dram_d[42], r_dram_d[41], r_dram_d[40], 
		r_dram_d[39], r_dram_d[38], r_dram_d[37], r_dram_d[36], r_dram_d[35], r_dram_d[34], r_dram_d[33], r_dram_d[32]
	} : ( (mem_cyc == `SS_WR_4) || (mem_cyc == `SS_WR_5) ) ? {
		r_dram_d[31], r_dram_d[30], r_dram_d[29], r_dram_d[28], r_dram_d[27], r_dram_d[26], r_dram_d[25], r_dram_d[24], 
		r_dram_d[23], r_dram_d[22], r_dram_d[21], r_dram_d[20], r_dram_d[19], r_dram_d[18], r_dram_d[17], r_dram_d[16], 
		r_dram_d[15], r_dram_d[14], r_dram_d[13], r_dram_d[12], r_dram_d[11], r_dram_d[10], r_dram_d[9], r_dram_d[8], 
		r_dram_d[7], r_dram_d[6], r_dram_d[5], r_dram_d[4], r_dram_d[3], r_dram_d[2], r_dram_d[1], r_dram_d[0]
	} : 32'bzzzzzzzz_zzzzzzzz_zzzzzzzz_zzzzzzzz;
`else
assign SSRAM_D = ( (mem_cyc == `SS_WR_2) || (mem_cyc == `SS_WR_3) ) ? {
		r_dram_d[63], r_dram_d[62], r_dram_d[61], r_dram_d[60], r_dram_d[59], r_dram_d[58], r_dram_d[57], r_dram_d[56], 
		r_dram_d[55], r_dram_d[54], r_dram_d[53], r_dram_d[52], r_dram_d[51], r_dram_d[50], r_dram_d[49], r_dram_d[48], 
		r_dram_d[47], r_dram_d[46], r_dram_d[45], r_dram_d[44], r_dram_d[43], r_dram_d[42], r_dram_d[41], r_dram_d[40], 
		r_dram_d[39], r_dram_d[38], r_dram_d[37], r_dram_d[36], r_dram_d[35], r_dram_d[34], r_dram_d[33], r_dram_d[32]
	} : ( (mem_cyc == `SS_WR_4) || (mem_cyc == `SS_WR_5) ) ? {
		r_dram_d[31], r_dram_d[30], r_dram_d[29], r_dram_d[28], r_dram_d[27], r_dram_d[26], r_dram_d[25], r_dram_d[24], 
		r_dram_d[23], r_dram_d[22], r_dram_d[21], r_dram_d[20], r_dram_d[19], r_dram_d[18], r_dram_d[17], r_dram_d[16], 
		r_dram_d[15], r_dram_d[14], r_dram_d[13], r_dram_d[12], r_dram_d[11], r_dram_d[10], r_dram_d[9], r_dram_d[8], 
		r_dram_d[7], r_dram_d[6], r_dram_d[5], r_dram_d[4], r_dram_d[3], r_dram_d[2], r_dram_d[1], r_dram_d[0]
	} : 32'd0;
`endif

// Latches
always @(posedge mem_clk)
begin
	if (mem_cyc == `SS_RD_3) begin
`ifndef verilator3
		ssram_q1 <= SSRAM_DQ;
`else
		ssram_q1 <= SSRAM_Q;
`endif
	end
end

always @(posedge mem_clk)
begin
	if (mem_cyc == `SS_RD_4) begin
`ifndef verilator3
		ssram_q0 <= SSRAM_DQ;
`else
		ssram_q0 <= SSRAM_Q;
`endif
	end
end


assign dram_q[0:63] = {
	ssram_q0[0], ssram_q0[1], ssram_q0[2], ssram_q0[3], ssram_q0[4], ssram_q0[5], ssram_q0[6], ssram_q0[7],
	ssram_q0[8], ssram_q0[9], ssram_q0[10], ssram_q0[11], ssram_q0[12], ssram_q0[13], ssram_q0[14], ssram_q0[15],
	ssram_q0[16], ssram_q0[17], ssram_q0[18], ssram_q0[19], ssram_q0[20], ssram_q0[21], ssram_q0[22], ssram_q0[23],
	ssram_q0[24], ssram_q0[25], ssram_q0[26], ssram_q0[27], ssram_q0[28], ssram_q0[29], ssram_q0[30], ssram_q0[31],
	ssram_q1[0], ssram_q1[1], ssram_q1[2], ssram_q1[3], ssram_q1[4], ssram_q1[5], ssram_q1[6], ssram_q1[7],
	ssram_q1[8], ssram_q1[9], ssram_q1[10], ssram_q1[11], ssram_q1[12], ssram_q1[13], ssram_q1[14], ssram_q1[15],
	ssram_q1[16], ssram_q1[17], ssram_q1[18], ssram_q1[19], ssram_q1[20], ssram_q1[21], ssram_q1[22], ssram_q1[23],
	ssram_q1[24], ssram_q1[25], ssram_q1[26], ssram_q1[27], ssram_q1[28], ssram_q1[29], ssram_q1[30], ssram_q1[31]
};
assign dram_oe = (~dram_cas_n) ? ~dram_oe_n : 4'b0000;

/*assign ram_rdy = (mem_cyc == `SS_RD_4) || (mem_cyc == `SS_RD_5)
	|| (mem_cyc == `SS_WR_4) || (mem_cyc == `SS_WR_5);*/
assign ram_rdy = (mem_cyc == `SS_END);

endmodule
/* verilator lint_on LITENDIAN */
