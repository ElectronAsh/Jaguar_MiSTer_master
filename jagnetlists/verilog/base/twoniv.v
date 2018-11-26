/* verilator lint_off LITENDIAN */
`include "defs.v"

module twoniv
(
	output z,
	input a,
	input sys_clk
);

/*reg r_z = 1'b0;

assign z = r_z;

always @(posedge sys_clk)
begin
	r_z <= a;
end*/

assign z = a;


endmodule
/* verilator lint_on LITENDIAN */
