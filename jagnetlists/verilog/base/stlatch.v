`include "defs.v"

module stlatch
(
	output	d1,
	input		d,
	input		clk,
	input		en,
	input		sys_clk
);

reg	data = 1'b0;

//assign d1 = (en) ? d : data;
reg r_d1 = 1'b0;
assign d1 = r_d1;

always @(posedge sys_clk)
begin
	if (en) begin
		r_d1 <= d;
	end else begin
		r_d1 <= data;
	end

	if (clk) begin
		if (en) begin
			data <= d;
		end
	end
end

endmodule
