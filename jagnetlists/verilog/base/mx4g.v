`include "defs.v"

module mx4g
(
	output	z,
	input		a0,
	input		a1,
	input		a2,
	input		a3,
	input		s0,
	input		s1,
	input		gn
);

reg z_obuf;

assign z = (gn) ? 1'b0 : z_obuf;

always @(*)
begin
	case({s1, s0}) // ???
		2'b00		: z_obuf = a0;
		2'b01		: z_obuf = a1;
		2'b10		: z_obuf = a2;
		default	: z_obuf = a3;
	endcase
end

endmodule
