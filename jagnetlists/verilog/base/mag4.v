`include "defs.v"

module mag4
(
	output	agb,
	output	aeb,
	output	alb,
	
	input		agbi,
	input		aebi,
	input		albi,
	
	input		a3,
	input		b3,
	input		a2,
	input		b2,
	input		a1,
	input		b1,
	input		a0,
	input		b0
);

wire [3:0] a;
wire [3:0] b;

wire agb_;
wire aeb_;
wire alb_;

assign a = {a3, a2, a1, a0};
assign b = {b3, b2, b1, b0};

assign agb_ = (a > b) ? 1'b1 : 1'b0;
assign aeb_ = (a == b) ? 1'b1 : 1'b0;
assign alb_ = (a < b) ? 1'b1 : 1'b0;


assign agb = aebi ? agb_ : agbi;
assign aeb = aebi & aeb_;
assign alb = aebi ? alb_ : albi;

endmodule
