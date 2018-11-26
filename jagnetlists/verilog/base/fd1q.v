`include "defs.v"

module fd1q
(
	output	q,
	input		d,
	input		cp,
	input		sys_clk
);

reg	fd_data = 1'b0;

assign q = fd_data;

// always @(posedge cp)
always @(posedge sys_clk)
begin
	if (cp) begin
		fd_data <= d;
	end
end

endmodule
