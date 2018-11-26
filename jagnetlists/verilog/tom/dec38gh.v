/* verilator lint_off LITENDIAN */
`include "defs.v"

module dec38gh
(
	output z_0,
	output z_1,
	output z_2,
	output z_3,
	output z_4,
	output z_5,
	output z_6,
	output z_7,
	input a,
	input b,
	input c,
	input g
);
wire al;
wire bl;
wire cl;
wire gl;

// LEGO.NET (243) - al : ivh
assign al = ~a;

// LEGO.NET (244) - bl : ivh
assign bl = ~b;

// LEGO.NET (245) - cl : ivh
assign cl = ~c;

// LEGO.NET (246) - gl : ivh
assign gl = ~g;

// LEGO.NET (248) - z[0] : an4p
assign z_0 = cl & bl & al & gl;

// LEGO.NET (249) - z[1] : an4p
assign z_1 = cl & bl & a & gl;

// LEGO.NET (250) - z[2] : an4p
assign z_2 = cl & b & al & gl;

// LEGO.NET (251) - z[3] : an4p
assign z_3 = cl & b & a & gl;

// LEGO.NET (252) - z[4] : an4p
assign z_4 = c & bl & al & gl;

// LEGO.NET (253) - z[5] : an4p
assign z_5 = c & bl & a & gl;

// LEGO.NET (254) - z[6] : an4p
assign z_6 = c & b & al & gl;

// LEGO.NET (255) - z[7] : an4p
assign z_7 = c & b & a & gl;
endmodule
/* verilator lint_on LITENDIAN */
