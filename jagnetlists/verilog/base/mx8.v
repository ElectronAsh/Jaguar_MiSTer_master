`include "defs.v"

module mx8
(
	output	z,
	input		a0,
	input		a1,
	input		a2,
	input		a3,
	input		a4,
	input		a5,
	input		a6,
	input		a7,
	input		s0,
	input		s1,
	input		s2
);

reg z_obuf;

assign z = z_obuf;

always @(*)
begin
	case({s2, s1, s0})
		3'b000		: z_obuf = a0;
		3'b001		: z_obuf = a1;
		3'b010		: z_obuf = a2;
		3'b011		: z_obuf = a3;
		3'b100		: z_obuf = a4;
		3'b101		: z_obuf = a5;
		3'b110		: z_obuf = a6;
		default		: z_obuf = a7;
	endcase
end

endmodule
