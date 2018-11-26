`include "defs.v"

module cg4
(
	output	co0l,
	output	co1l,
	output	co2l,
	output	g,
	output	p,
	
	input		cin,
	input		g0,
	input		g1,
	input		g2,
	input		g3,
	input		p0,
	input		p1,
	input		p2,
	input		p3	
);

wire cinl;
wire co0t;
wire co1t0, co1t1;
wire co2t0, co2t1, co2t2;
wire gt0, gt1, gt2;

assign cinl = ~cin;

assign co0t = p0 & cinl;
assign co0l = ~(g0 | co0t);

assign co1t0 = p0 & p1 & cinl;
assign co1t1 = p1 & g0;
assign co1l = ~(g1 | co1t0 | co1t1);

assign co2t0 = p0 & p1 & p2 & cinl;
assign co2t1 = p1 & p2 & g0;
assign co2t2 = p2 & g1;
assign co2l = ~(g2 | co2t0 | co2t1 | co2t2);

assign p = p0 & p1 & p2 & p3;

assign gt0 = g0 & p1 & p2 & p3;
assign gt1 = g1 & p2 & p3;
assign gt2 = g2 & p3;
assign g = g3 | gt0 | gt1 | gt2;

endmodule
