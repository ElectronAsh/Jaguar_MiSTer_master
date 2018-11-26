/* verilator lint_off LITENDIAN */
`include "defs.v"

module cp_latch
(
	output q,
	input set,
	input clear,
	input clock,
	input reset_n,
	input sys_clk // Generated
);
wire ipt;
wire ip;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// DUPLO.NET (765) - ipt : nr2
assign ipt = ~(set | q_obuf);

// DUPLO.NET (766) - ip : nr2
assign ip = ~(clear | ipt);

// DUPLO.NET (767) - q : fd2q
fd2q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (ip),
	.cp /* IN */ (clock),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
