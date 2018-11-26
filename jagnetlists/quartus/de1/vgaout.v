module vgaout
(
	input		[35:0]	GPIO_0,
	output	[9:0]		LEDR,
	output					VGA_VS,
	output					VGA_HS,
	output	[3:0]		VGA_R,
	output	[3:0]		VGA_G,
	output	[3:0]		VGA_B
);

wire [3:0] red;
wire [3:0] green;
wire [3:0] blue;


assign VGA_VS = GPIO_0[2];
assign VGA_HS = GPIO_0[3];
assign red = { GPIO_0[4], GPIO_0[5], GPIO_0[6], GPIO_0[7]};
assign green = { GPIO_0[8], GPIO_0[9], GPIO_0[10], GPIO_0[11]};
assign blue = { GPIO_0[12], GPIO_0[13], GPIO_0[14], GPIO_0[15]};

assign VGA_R = red;
assign VGA_G = green;
assign VGA_B = blue;

// assign LEDR[9:4] = 6'b000000;
assign LEDR = { 2'b00, green, blue };

endmodule
