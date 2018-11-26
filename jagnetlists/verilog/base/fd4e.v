`include "defs.v"

module fd4e
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		sd,
	input		ti,
	input		te,
	input		sys_clk
);

reg	fd_data = 1'b1;

assign q = fd_data;
assign qn = ~fd_data;

// always @(posedge cp or negedge sd)
always @(posedge sys_clk)
begin
	if (cp | (~sd)) begin
		if (~sd) begin
			fd_data <= 1'b1;
		end else begin
			if (~te) begin
				fd_data <= d;
			end else begin
				fd_data <= ti;
			end
		end
	end
end

endmodule
