module pll50 (
	input inclk0,
	output c0,
	output c1,
	output c2,
	output c3);

reg r_c2 = 1'b0;
	
assign c0 = 1'b0;
assign c1 = 1'b0;
assign c2 = inclk0;
/*assign c2 = r_c2;

always @(posedge inclk0)
begin
	r_c2 <= ~r_c2;
end*/

assign c3 = inclk0;

endmodule

