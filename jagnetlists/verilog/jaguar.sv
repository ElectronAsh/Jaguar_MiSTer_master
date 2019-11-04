//============================================================================
// 
//  Port to MiSTer.
//  Copyright (C) 2018 Sorgelig
//
//  Jaguar core code.
//  Copyright (C) 2018 Gregory Estrade (Torlus).
//
//  Port of Jaguar core to MiSTer by Ash Evans (ElectronAsh / OzOnE).
//
//  This program is free software; you can redistribute it and/or modify it
//  under the terms of the GNU General Public License as published by the Free
//  Software Foundation; either version 2 of the License, or (at your option)
//  any later version.
//
//  This program is distributed in the hope that it will be useful, but WITHOUT
//  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
//  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
//  more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write to the Free Software Foundation, Inc.,
//  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
//
//============================================================================

module emu
(
	//Master input clock
	input         CLK_50M,

	//Async reset from top-level module.
	//Can be used as initial reset.
	input         RESET,					// Active-HIGH! Meaning "Low for RUNNING".
	
	input			  BTN_USER,
	input			  BTN_OSD,

	//Must be passed to hps_io module
	inout  [44:0] HPS_BUS,

	//Base video clock. Usually equals to CLK_SYS.
	output        CLK_VIDEO,

	//Multiple resolutions are supported using different CE_PIXEL rates.
	//Must be based on CLK_VIDEO
	output        CE_PIXEL,

	//Video aspect ratio for HDMI. Most retro systems have ratio 4:3.
	output  [7:0] VIDEO_ARX,
	output  [7:0] VIDEO_ARY,

	output  [7:0] VGA_R,
	output  [7:0] VGA_G,
	output  [7:0] VGA_B,
	output        VGA_HS,
	output        VGA_VS,
	output        VGA_DE,    // = ~(VBlank | HBlank)

	output        LED_USER,  // 1 - ON, 0 - OFF.

	// b[1]: 0 - LED status is system status OR'd with b[0]
	//       1 - LED status is controled solely by b[0]
	// hint: supply 2'b00 to let the system control the LED.
	output  [1:0] LED_POWER,
	output  [1:0] LED_DISK,

	output [15:0] AUDIO_L,
	output [15:0] AUDIO_R,
	output        AUDIO_S,   // 1 - signed audio samples, 0 - unsigned
	output  [1:0] AUDIO_MIX, // 0 - no mix, 1 - 25%, 2 - 50%, 3 - 100% (mono)
	input         TAPE_IN,

	// SD-SPI
	output        SD_SCK,
	output        SD_MOSI,
	input         SD_MISO,
	output        SD_CS,
	input         SD_CD,

`ifdef VERILATOR
	output	[16:0]	os_rom_a,
	output					os_rom_ce_n,
	output					os_rom_oe_n,
	input		[7:0]		os_rom_q,
	input						os_rom_oe,
	
	input wire        ioctl_download,
	input wire        ioctl_wr,
	//input wire [24:0] ioctl_addr,
	input wire [15:0] ioctl_data,
	input wire  [7:0] ioctl_index,
	output reg         ioctl_wait,
	
	output reg [31:0] loader_addr,
	
	output wire [23:0] cart_a,
	
	output wire [31:0] cart_q,
	
	output wire [1:0] cart_oe,
	
	output wire [31:0] j_xd_in,
`endif
	
	//High latency DDR3 RAM interface
	//Use for non-critical time purposes
	output        DDRAM_CLK,
	input         DDRAM_BUSY,
	output  [7:0] DDRAM_BURSTCNT,
	output [28:0] DDRAM_ADDR,
	input  [63:0] DDRAM_DOUT,
	input         DDRAM_DOUT_READY,
	output        DDRAM_RD,
	output [63:0] DDRAM_DIN,
	output  [7:0] DDRAM_BE,
	output        DDRAM_WE,

	//SDRAM interface with lower latency
	output        SDRAM_CLK,
	output        SDRAM_CKE,
	output [12:0] SDRAM_A,
	output  [1:0] SDRAM_BA,
	inout  [15:0] SDRAM_DQ,
	output        SDRAM_DQML,
	output        SDRAM_DQMH,
	output        SDRAM_nCS,
	output        SDRAM_nCAS,
	output        SDRAM_nRAS,
	output        SDRAM_nWE
);

assign {SD_SCK, SD_MOSI, SD_CS} = 'Z;
assign {SDRAM_DQ, SDRAM_A, SDRAM_BA, SDRAM_CLK, SDRAM_CKE, SDRAM_DQML, SDRAM_DQMH, SDRAM_nWE, SDRAM_nCAS, SDRAM_nRAS, SDRAM_nCS} = 'Z;
//assign {DDRAM_CLK, DDRAM_BURSTCNT, DDRAM_ADDR, DDRAM_DIN, DDRAM_BE, DDRAM_RD, DDRAM_WE} = 0;

//assign LED_USER  = ioctl_download;
assign LED_DISK  = 0;
assign LED_POWER = 0;

//assign VIDEO_ARX = status[1] ? 8'd16 : 8'd4;
//assign VIDEO_ARY = status[1] ? 8'd9  : 8'd3; 

wire SYS_CLK = CLK_50M;

/*
wire [1:0] scale = status[3:2];

`include "build_id.v"
localparam CONF_STR = {
	"Genesis;;",
	"-;",
	"F,JAG ;",
	"-;",
	"O67,Region,JP,US,EU;",
	"O8,Auto Region,No,Yes;",
	"-;",
	"O9,Aspect ratio,4:3,16:9;",
	"O13,Scandoubler Fx,None,HQ2x,CRT 25%,CRT 50%,CRT 75%;",
	"-;",
	"O4,Swap joysticks,No,Yes;",
	"O5,6 buttons mode,No,Yes;",
	"-;",
	"R0,Reset;",
	"J1,A,B,C,Start,Mode,X,Y,Z;",
	"V,v1.51.",`BUILD_DATE
};


wire [31:0] status;
wire  [1:0] buttons;
wire [15:0] joystick_0;
wire [15:0] joystick_1;
wire        ioctl_download;
wire        ioctl_wr;
wire [24:0] ioctl_addr;
wire [15:0] ioctl_data;
wire  [7:0] ioctl_index;
reg         ioctl_wait;
wire        forced_scandoubler;
wire [10:0] ps2_key;

hps_io #(.STRLEN($size(CONF_STR)>>3), .PS2DIV(1000), .WIDE(1)) hps_io
(
	.clk_sys(SYS_CLK),
	.HPS_BUS(HPS_BUS),

	.conf_str(CONF_STR),
	.joystick_0(joystick_0),
	.joystick_1(joystick_1),
	.buttons(buttons),
	.forced_scandoubler(forced_scandoubler),

	.status(status),
	.status_in({status[31:8],region_req,status[5:0]}),
	.status_set(region_set),

	.ioctl_download(ioctl_download),
	.ioctl_index(ioctl_index),
	.ioctl_wr(ioctl_wr),
	.ioctl_addr(ioctl_addr),
	.ioctl_dout(ioctl_data),
	.ioctl_wait(ioctl_wait),

	.ps2_key(ps2_key)
);
*/


`ifndef VERILATOR
reg [31:0] loader_addr;
`endif

//reg [15:0] loader_data;
wire [15:0] loader_data = ioctl_data;

reg        loader_wr;
reg        loader_en;
reg        loader_reset = 0;

//reg [7:0] loader_be;
wire [7:0] loader_be = (loader_en && loader_addr[2:0]==0) ? 8'b11000000 :
					   (loader_en && loader_addr[2:0]==2) ? 8'b00110000 :
					   (loader_en && loader_addr[2:0]==4) ? 8'b00001100 :
					   (loader_en && loader_addr[2:0]==6) ? 8'b00000011 : 8'b11111111;

reg [7:0] cnt = 0;
reg [1:0] status_reg = 0;
reg       old_download;
integer   timeout = 0;


always @(posedge SYS_CLK or posedge reset)
if (reset) begin
	cnt <= 0;
	status_reg <= 0;
	old_download <= 0;
	timeout <= 0;
	loader_wr <= 0;
	loader_en <= 0;
	loader_addr <= 32'h00800000;
end
else begin
	old_download <= ioctl_download;
	
	loader_reset <= 0;
	if(~old_download && ioctl_download && ioctl_index) begin
		loader_addr <= 32'h00800000;									// Force the ROM to load at 0x800000 in DDR for Jag core. (byte address!)
		status_reg <= 0;
		loader_reset <= 1;
		ioctl_wait <= 0;
		timeout <= 3000000;
		cnt <= 0;
	end
	
	loader_wr <= 0;	// Default!
	if(loader_wr) loader_addr <= loader_addr + 2;				// Writing 16-bit WORDs at a time!

	if(ioctl_wr && ioctl_index) begin
		loader_en <= 1;
		case(status_reg)
			0: /*if(ioctl_data == 8'hED) status_reg <= 1;
				else*/ begin
					loader_wr <= 1;
					/*loader_data <= ioctl_data;
					loader_be <= (loader_en && loader_addr[2:0]==0) ? 8'b11000000 :
								 (loader_en && loader_addr[2:0]==2) ? 8'b00110000 :
								 (loader_en && loader_addr[2:0]==4) ? 8'b00001100 :
								 (loader_en && loader_addr[2:0]==6) ? 8'b00000011 : 8'b11111111;*/
				end
			1: begin
					cnt <= ioctl_data;
					status_reg <= ioctl_data ? 2'd2 : 2'd3; // cnt = 0 => stop
				end
			2: begin
					/*loader_data <= ioctl_data;
					loader_be <= (loader_en && loader_addr[2:0]==0) ? 8'b11000000 :
								 (loader_en && loader_addr[2:0]==2) ? 8'b00110000 :
								 (loader_en && loader_addr[2:0]==4) ? 8'b00001100 :
								 (loader_en && loader_addr[2:0]==6) ? 8'b00000011 : 8'b11111111;*/
					ioctl_wait <= 1;
				end
		endcase
	end

	if(ioctl_wait && !loader_wr) begin
		if(cnt) begin
			cnt <= cnt - 1'd1;
			loader_wr <= 1;
		end
		else if(timeout) timeout <= timeout - 1;
		else {status_reg,ioctl_wait} <= 0;
	end

	if(old_download & ~ioctl_download) loader_en <= 0;
	if(RESET) ioctl_wait <= 0;
end

`ifndef VERILATOR
wire reset = RESET | status[0] | buttons[1];
`else
wire reset = RESET;
`endif


/*
wire [22:1] rom_addr;
wire [15:0] rom_data;
wire rom_rd, rom_rdack;

ddram ddram_inst
(
	.DDRAM_CLK(DDRAM_CLK) ,	// input  DDRAM_CLK
	.DDRAM_BUSY(DDRAM_BUSY) ,	// input  DDRAM_BUSY
	.DDRAM_BURSTCNT(DDRAM_BURSTCNT) ,	// output [7:0] DDRAM_BURSTCNT
	.DDRAM_ADDR(DDRAM_ADDR) ,	// output [28:0] DDRAM_ADDR
	.DDRAM_DOUT(DDRAM_DOUT) ,	// input [63:0] DDRAM_DOUT
	.DDRAM_DOUT_READY(DDRAM_DOUT_READY) ,	// input  DDRAM_DOUT_READY
	.DDRAM_RD(DDRAM_RD) ,	// output  DDRAM_RD
	.DDRAM_DIN(DDRAM_DIN) ,	// output [63:0] DDRAM_DIN
	.DDRAM_BE(DDRAM_BE) ,	// output [7:0] DDRAM_BE
	.DDRAM_WE(DDRAM_WE) ,	// output  DDRAM_WE

   .wraddr(ioctl_addr),		// input [27:0] wraddr
   .din({ioctl_data[7:0],ioctl_data[15:8]}),	// input [15:0] din
   .we_req(rom_wr),			// input  we_req
   .we_ack(rom_wrack),		// output  we_ack

   .rdaddr(rom_addr),		// input [27:1] rdaddr
   .dout(rom_data),			// output [15:0] dout
   .rd_req(rom_rd),			// input  rd_req
   .rd_ack(rom_rdack) 		// output  rd_ack
);


reg  rom_wr;
wire rom_wrack;

always @(posedge clk_sys) begin
	reg old_download, old_reset;
	old_download <= ioctl_download;
	old_reset <= reset;

	if(~old_reset && reset) ioctl_wait <= 0;
	if(~old_download && ioctl_download) rom_wr <= 0;
	else begin
		if(ioctl_wr) begin
			ioctl_wait <= 1;
			rom_wr <= ~rom_wr;
		end else if(ioctl_wait && (rom_wr == rom_wrack)) begin
			ioctl_wait <= 0;
		end
	end
end
*/

/* verilator lint_off PINMISSING */
jaguar jaguar_inst
(
	.xresetl( !(reset | loader_reset | loader_en) ) ,			// input  xresetl
	
	.sys_clk( SYS_CLK ) ,		// input  sys_clk
	
	.dram_a( dram_a ) ,			// output [0:9] dram_a
	.dram_ras_n( dram_ras_n ) ,// output  dram_ras_n
	.dram_cas_n( dram_cas_n ) ,// output  dram_cas_n
	.dram_oe_n( dram_oe_n ) ,	// output [0:3] dram_oe_n
	.dram_uw_n( dram_uw_n ) ,	// output [0:3] dram_uw_n
	.dram_lw_n( dram_lw_n ) ,	// output [0:3] dram_lw_n
	.dram_d( dram_d ) ,			// output [0:63] dram_d
	.dram_q( dram_q ) ,			// input [0:63] dram_q
	.dram_oe( dram_oe ) ,		// input [0:3] dram_oe
	
	.ram_rdy( ram_rdy ) ,		// input  ram_rdy
	
	.DBG_CPU_RDEN( DBG_CPU_RDEN ) ,	// output  DBG_CPU_RDEN
	.DBG_CPU_WREN( DBG_CPU_WREN ) ,	// output  DBG_CPU_WREN
	.DBG_CPU_DTACK( DBG_CPU_DTACK ) ,// output  DBG_CPU_DTACK
	.DBG_CPU_BENA( DBG_CPU_BENA ) ,	// output [1:0] DBG_CPU_BENA
	.DBG_CPU_ADDR( DBG_CPU_ADDR ) ,	// output [31:0] DBG_CPU_ADDR
	.DBG_CPU_RDATA( DBG_CPU_RDATA ) ,// output [15:0] DBG_CPU_RDATA
	.DBG_CPU_WDATA( DBG_CPU_WDATA ) ,// output [15:0] DBG_CPU_WDATA
	.DBG_REG_ADDR( DBG_REG_ADDR ) ,	// output [3:0] DBG_REG_ADDR
	.DBG_REG_WREN( DBG_REG_WREN ) ,	// output [3:0] DBG_REG_WREN
	.DBG_REG_DATA( DBG_REG_DATA ) ,	// output [15:0] DBG_REG_DATA
	.DBG_SR_REG( DBG_SR_REG ) ,		// output [15:0] DBG_SR_REG
	.DBG_PC_REG( DBG_PC_REG ) ,		// output [31:0] DBG_PC_REG
	.DBG_USP_REG( DBG_USP_REG ) ,		// output [31:0] DBG_USP_REG
	.DBG_SSP_REG( DBG_SSP_REG ) ,		// output [31:0] DBG_SSP_REG
	.DBG_CYCLES( DBG_CYCLES ) ,		// output [31:0] DBG_CYCLES
	.DBG_IFETCH( DBG_IFETCH ) ,		// output  DBG_IFETCH
	
	.os_rom_a( os_rom_a ) ,		// output [16:0] os_rom_a
	.os_rom_ce_n( os_rom_ce_n ) ,	// output  os_rom_ce_n
	.os_rom_oe_n( os_rom_oe_n ) ,	// output  os_rom_oe_n
	.os_rom_q( os_rom_q ) ,		// input [7:0] os_rom_q
	.os_rom_oe( os_rom_oe ) ,	// input  os_rom_oe
	
	.cart_a( cart_a ) ,			// output [23:0] cart_a
	.cart_ce_n( cart_ce_n ) ,	// output  cart_ce_n
	.cart_oe_n( cart_oe_n ) ,	// output [1:0] cart_oe_n
	.cart_q( cart_q ) ,			// input [31:0] cart_q
	.cart_oe( cart_oe ) ,		// input [1:0] cart_oe
	
	.fdram( fdram ) ,			// output  fdram
	
	.vga_bl( vga_bl ) ,		// output  vga_bl
	.vga_vs_n( vga_vs_n ) ,	// output  vga_vs_n
	.vga_hs_n( vga_hs_n ) ,	// output  vga_hs_n
	.vga_r( vga_r ) ,			// output [7:0] vga_r
	.vga_g( vga_g ) ,			// output [7:0] vga_g
	.vga_b( vga_b ) ,			// output [7:0] vga_b
	
//	.aud_l_pwm( aud_l_pwm ) ,	// output  aud_l
//	.aud_r_pwm( aud_r_pwm ) , 	// output  aud_r

`ifdef VERILATOR
	.j_xd_in( j_xd_in ) ,		// output [0:31] j_xd_in
`endif
	
	.aud_16_l( aud_16_l ) ,		// output  [15:0] aud_l
	.aud_16_r( aud_16_r )			// output  [15:0] aud_r
);
/* verilator lint_on PINMISSING */

`ifndef VERILATOR
wire [31:0] j_xd_in;
`endif

wire DBG_CPU_RDEN/*synthesis keep*/;
wire DBG_CPU_WREN/*synthesis keep*/;
wire DBG_CPU_DTACK/*synthesis keep*/;
wire [1:0] DBG_CPU_BENA/*synthesis keep*/;
wire [31:0] DBG_CPU_ADDR/*synthesis keep*/;
wire [15:0] DBG_CPU_RDATA/*synthesis keep*/;
wire [15:0] DBG_CPU_WDATA/*synthesis keep*/;
wire [3:0] DBG_REG_ADDR/*synthesis keep*/;
wire [3:0] DBG_REG_WREN/*synthesis keep*/;
wire [15:0] DBG_REG_DATA/*synthesis keep*/;
wire [15:0] DBG_SR_REG/*synthesis keep*/;
wire [31:0] DBG_PC_REG/*synthesis keep*/;
wire [31:0] DBG_USP_REG/*synthesis keep*/;
wire [31:0] DBG_SSP_REG/*synthesis keep*/;
wire [31:0] DBG_CYCLES/*synthesis keep*/;
wire DBG_IFETCH/*synthesis keep*/;

wire fdram;

`ifndef VERILATOR
wire [16:0] os_rom_a;
wire os_rom_ce_n;
wire os_rom_oe_n;
wire [7:0] os_rom_q;
wire os_rom_oe = (~os_rom_ce_n & ~os_rom_oe_n);

os_rom	os_rom_inst (
	.address ( os_rom_a[13:0] ),
	.clock ( SYS_CLK ),
	.q ( os_rom_q )
);
`endif

/*
cart_rom	cart_rom_inst (
	.address ( cart_a[13:0] ),
	.clock ( SYS_CLK ),
	.q ( CART_ROM_DO )
);
wire [31:0] CART_ROM_DO;
*/



wire vga_bl;
wire vga_hs_n;
wire vga_vs_n;

wire [7:0] vga_r;
wire [7:0] vga_g;
wire [7:0] vga_b;

assign CLK_VIDEO = SYS_CLK;
//assign VGA_SL = {~interlace,~interlace} & sl[1:0];

/*
reg old_ce_pix;
always @(posedge CLK_VIDEO) old_ce_pix <= ce_pix;


video_mixer #(.LINE_LENGTH(320), .HALF_DEPTH(1)) video_mixer
(
	.*,

	.clk_sys(CLK_VIDEO),
	.ce_pix(~old_ce_pix & ce_pix),
	.ce_pix_out(CE_PIXEL),

	.scanlines(0),
	.scandoubler(~interlace && (scale || forced_scandoubler)),
	.hq2x(scale==1),

	.mono(0),

	.R(vga_r),
	.G(vga_g),
	.B(vga_b),

	// Positive pulses.
	.HSync(!vga_hs_n),
	.VSync(!vga_vs_n),
	.HBlank(hblank),
	.VBlank(vblank)
);
*/

assign VGA_DE = !vga_bl;

assign VGA_HS = vga_hs_n;
assign VGA_VS = vga_vs_n;

assign VGA_R = vga_r;
assign VGA_G = vga_g;
assign VGA_B = vga_b;


wire aud_l_pwm;
wire aud_r_pwm;

wire [15:0] aud_16_l;
wire [15:0] aud_16_r;

assign AUDIO_S = 1;
assign AUDIO_MIX = 0;
assign AUDIO_L = aud_16_l;
assign AUDIO_R = aud_16_r;


wire [0:9] dram_a;
wire dram_ras_n;
wire dram_cas_n;
wire [0:3] dram_oe_n;
wire [0:3] dram_uw_n;
wire [0:3] dram_lw_n;
wire [0:63] dram_d;

//wire [0:63] dram_q = DDRAM_DOUT;
wire [0:63] dram_q = {DDRAM_DOUT[0], DDRAM_DOUT[1], DDRAM_DOUT[2], DDRAM_DOUT[3], DDRAM_DOUT[4], DDRAM_DOUT[5], DDRAM_DOUT[6], DDRAM_DOUT[7],
							 DDRAM_DOUT[8], DDRAM_DOUT[9], DDRAM_DOUT[10], DDRAM_DOUT[11], DDRAM_DOUT[12], DDRAM_DOUT[13], DDRAM_DOUT[14], DDRAM_DOUT[15],
							 DDRAM_DOUT[16], DDRAM_DOUT[17], DDRAM_DOUT[18], DDRAM_DOUT[19], DDRAM_DOUT[20], DDRAM_DOUT[21], DDRAM_DOUT[22], DDRAM_DOUT[23],
							 DDRAM_DOUT[24], DDRAM_DOUT[25], DDRAM_DOUT[26], DDRAM_DOUT[27], DDRAM_DOUT[28], DDRAM_DOUT[29], DDRAM_DOUT[30], DDRAM_DOUT[31],
							 DDRAM_DOUT[32], DDRAM_DOUT[33], DDRAM_DOUT[34], DDRAM_DOUT[35], DDRAM_DOUT[36], DDRAM_DOUT[37], DDRAM_DOUT[38], DDRAM_DOUT[39],
							 DDRAM_DOUT[40], DDRAM_DOUT[41], DDRAM_DOUT[42], DDRAM_DOUT[43], DDRAM_DOUT[44], DDRAM_DOUT[45], DDRAM_DOUT[46], DDRAM_DOUT[47],
							 DDRAM_DOUT[48], DDRAM_DOUT[49], DDRAM_DOUT[50], DDRAM_DOUT[51], DDRAM_DOUT[52], DDRAM_DOUT[53], DDRAM_DOUT[54], DDRAM_DOUT[55],
							 DDRAM_DOUT[56], DDRAM_DOUT[57], DDRAM_DOUT[58], DDRAM_DOUT[59], DDRAM_DOUT[60], DDRAM_DOUT[61], DDRAM_DOUT[62], DDRAM_DOUT[63]};

wire [0:3] dram_oe = (~dram_cas_n) ? ~dram_oe_n : 4'b0000;

/*
	input         DDRAM_BUSY,
	
	output  [7:0] DDRAM_BURSTCNT,
	output [28:0] DDRAM_ADDR,
	input  [63:0] DDRAM_DOUT,
	input         DDRAM_DOUT_READY,
	output        DDRAM_RD,
	output [63:0] DDRAM_DIN,
	output  [7:0] DDRAM_BE,
	output        DDRAM_WE,
*/
assign DDRAM_CLK = SYS_CLK;
assign DDRAM_BURSTCNT = 1;


assign DDRAM_ADDR = (loader_en)  ? {8'b0000000, loader_addr[23:3]} :
						                 {8'b0000000, cart_a[23:3]};		// DRAM address is using "cart_a" here (byte address, so three LSB bits are ignored!)
																						// so the MSB bit will be set by the Jag core when reading that.

assign DDRAM_RD = (loader_en) ? 1'b0 :
										  DDR_RD_REQ;

assign DDRAM_WE = (loader_en) ? loader_wr :
										  DDR_WR_REQ;

// Byteswap...
//
// Needs this when loading the ROM on MiSTer, at least under Verilator simulation. ElectronAsh. 
//
wire [15:0] loader_data_bs = {loader_data[7:0], loader_data[15:8]};

//assign DDRAM_DIN = dram_d;
assign DDRAM_DIN = (loader_en) ? {loader_data_bs, loader_data_bs, loader_data_bs, loader_data_bs} :
								/*{loader_data, loader_data, loader_data, loader_data} :*/
								{r_dram_d[63], r_dram_d[62], r_dram_d[61], r_dram_d[60], r_dram_d[59], r_dram_d[58], r_dram_d[57], r_dram_d[56], 
								 r_dram_d[55], r_dram_d[54], r_dram_d[53], r_dram_d[52], r_dram_d[51], r_dram_d[50], r_dram_d[49], r_dram_d[48], 
								 r_dram_d[47], r_dram_d[46], r_dram_d[45], r_dram_d[44], r_dram_d[43], r_dram_d[42], r_dram_d[41], r_dram_d[40], 
								 r_dram_d[39], r_dram_d[38], r_dram_d[37], r_dram_d[36], r_dram_d[35], r_dram_d[34], r_dram_d[33], r_dram_d[32],
								 r_dram_d[31], r_dram_d[30], r_dram_d[29], r_dram_d[28], r_dram_d[27], r_dram_d[26], r_dram_d[25], r_dram_d[24], 
								 r_dram_d[23], r_dram_d[22], r_dram_d[21], r_dram_d[20], r_dram_d[19], r_dram_d[18], r_dram_d[17], r_dram_d[16], 
								 r_dram_d[15], r_dram_d[14], r_dram_d[13], r_dram_d[12], r_dram_d[11], r_dram_d[10], r_dram_d[9], r_dram_d[8], 
								 r_dram_d[7], r_dram_d[6], r_dram_d[5], r_dram_d[4], r_dram_d[3], r_dram_d[2], r_dram_d[1], r_dram_d[0]};


assign DDRAM_BE = (loader_en) ? loader_be :
						(!cart_ce_n) ? 8'b11111111 :
											DDRAM_BE_REG;

reg [7:0] DDRAM_BE_REG;


//wire [23:0] cart_a;
wire cart_ce_n;
wire [1:0] cart_oe_n;
//wire [31:0] cart_q = CART_ROM_DO;
//wire [1:0] cart_oe;

assign	cart_oe[0] = ~cart_oe_n[0] & ~cart_ce_n;
assign	cart_oe[1] = ~cart_oe_n[1] & ~cart_ce_n;

/*
assign cart_q = ({cart_a[2:1],1'b0}==0) ? {DDRAM_DOUT[63:48],DDRAM_DOUT[63:48]} :
				({cart_a[2:1],1'b0}==2) ? {DDRAM_DOUT[47:32],DDRAM_DOUT[47:32]} :
				({cart_a[2:1],1'b0}==4) ? {DDRAM_DOUT[31:16],DDRAM_DOUT[31:16]} :
										  {DDRAM_DOUT[15:0],DDRAM_DOUT[15:0]};
*/

// 8-bit cart mode... WORKING! ElectronAsh.
// 
//
assign cart_q = ({cart_a[2:0]}==0) ? {DDRAM_DOUT[63:56],DDRAM_DOUT[63:56],DDRAM_DOUT[63:56],DDRAM_DOUT[63:56]} :
				({cart_a[2:0]}==1) ? {DDRAM_DOUT[55:48],DDRAM_DOUT[55:48],DDRAM_DOUT[55:48],DDRAM_DOUT[55:48]} :
				({cart_a[2:0]}==2) ? {DDRAM_DOUT[47:40],DDRAM_DOUT[47:40],DDRAM_DOUT[47:40],DDRAM_DOUT[47:40]} :
				({cart_a[2:0]}==3) ? {DDRAM_DOUT[39:32],DDRAM_DOUT[39:32],DDRAM_DOUT[39:32],DDRAM_DOUT[39:32]} :
				({cart_a[2:0]}==4) ? {DDRAM_DOUT[31:24],DDRAM_DOUT[31:24],DDRAM_DOUT[31:24],DDRAM_DOUT[31:24]} :
				({cart_a[2:0]}==5) ? {DDRAM_DOUT[23:16],DDRAM_DOUT[23:16],DDRAM_DOUT[23:16],DDRAM_DOUT[23:16]} :
				({cart_a[2:0]}==6) ? {DDRAM_DOUT[15:8],DDRAM_DOUT[15:8],DDRAM_DOUT[15:8],DDRAM_DOUT[15:8]} :
									 {DDRAM_DOUT[7:0],DDRAM_DOUT[7:0],DDRAM_DOUT[7:0],DDRAM_DOUT[7:0]};

//assign cart_q = (!cart_a[2]) ? DDRAM_DOUT[63:32] : DDRAM_DOUT[31:0];


`define SS_IDLE	4'b0000
`define SS_END		4'b1111

`define SS_RD_1	4'b0001
`define SS_RD_2	4'b0010
`define SS_RD_3	4'b0011
`define SS_RD_4	4'b0100
`define SS_RD_5	4'b0101

`define SS_WR_1	4'b1001
`define SS_WR_2	4'b1010
`define SS_WR_3	4'b1011
`define SS_WR_4	4'b1100
`define SS_WR_5	4'b1101


wire mem_clk = SYS_CLK;

wire ram_rdy = (mem_cyc == `SS_END);

reg cart_ce_n_1 = 1;

wire cart_ce_n_falling = (cart_ce_n_1 && !cart_ce_n);

reg	[0:63]	r_dram_d;

reg DDR_RD_REQ;
reg DDR_WR_REQ;

reg [3:0] mem_cyc;
initial begin
	mem_cyc <= `SS_IDLE;
	DDR_RD_REQ <= 1'b0;
	DDR_WR_REQ <= 1'b0;
end

always @(posedge mem_clk or posedge reset)
if (reset) begin
	mem_cyc <= `SS_IDLE;
end
else begin
	DDR_RD_REQ <= 1'b0;
	DDR_WR_REQ <= 1'b0;
	
	cart_ce_n_1 <= cart_ce_n;

	// if (~fdram) begin
		// mem_cyc <= `SS_IDLE;
	// end else begin
		case (mem_cyc)
			`SS_IDLE: begin
				if ( (fdram && (dram_oe_n != 4'b1111)) | (!fdram && cart_ce_n_falling) ) begin
					mem_cyc <= `SS_RD_1;
				end else if (fdram && ({dram_uw_n, dram_lw_n} != 8'b11111111)) begin
					mem_cyc <= `SS_WR_1;
				end
			end
			`SS_RD_1: begin
				DDR_RD_REQ <= 1'b1;
				if (!DDRAM_BUSY) mem_cyc <= `SS_RD_2;
			end
			`SS_RD_2: if (DDRAM_DOUT_READY) begin
				//mem_cyc <= `SS_RD_3;
				mem_cyc <= `SS_END;
			end
			//`SS_RD_3: mem_cyc <= `SS_RD_4;
			//`SS_RD_4: mem_cyc <= `SS_RD_5;
			//`SS_RD_5: mem_cyc <= `SS_END;
			
			`SS_WR_1: begin
				r_dram_d <= dram_d;
				mem_cyc <= `SS_WR_2;
			end
			`SS_WR_2: begin
				DDR_WR_REQ <= 1'b1;
				if (!DDRAM_BUSY) mem_cyc <= `SS_WR_3;
			end
			`SS_WR_3: mem_cyc <= `SS_WR_4;
			`SS_WR_4: mem_cyc <= `SS_WR_5;
			`SS_WR_5: mem_cyc <= `SS_END;
			
			default:		// This is essentially the `SS_END mem_cyc state. (ElectronAsh).
				if (dram_cas_n) begin
					mem_cyc <= `SS_IDLE;
				end else begin
					mem_cyc <= `SS_END;
				end
		endcase
	// end
	
	// Latch dram_uw_n and dram_lw_n in case of write
	if (mem_cyc == `SS_WR_1) begin
		DDRAM_BE_REG <= ~{ dram_uw_n[3], dram_lw_n[3], 
								 dram_uw_n[2], dram_lw_n[2], 
								 dram_uw_n[1], dram_lw_n[1], 
								 dram_uw_n[0], dram_lw_n[0] };
	end
end



endmodule
