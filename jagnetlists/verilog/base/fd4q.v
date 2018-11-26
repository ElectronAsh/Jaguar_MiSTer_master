`include "defs.v"

module fd4q
(
	output	q,
	input		d,
	input		cp,
	input		sd,
	input		sys_clk
);

reg	fd_data = 1'b1;

assign q = fd_data;

// always @(posedge cp or negedge sd)
always @(posedge sys_clk)
begin
	if (cp | (~sd)) begin
		if (~sd) begin
			fd_data <= 1'b1;
		end else begin
			fd_data <= d;
		end
	end
end

endmodule
