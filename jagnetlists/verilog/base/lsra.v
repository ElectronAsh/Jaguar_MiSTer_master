`include "defs.v"

module lsra
(
	output	q,
	input		rn,
	input		sn,
	input sys_clk
);

reg	data = 1'b1;

assign q = data;

// always @(rn or sn)
always @(posedge sys_clk)
begin
	if (~rn & sn) begin
		data <= 1'b0;
	end else if (~sn) begin
		data <= 1'b1;
	end
end

endmodule
