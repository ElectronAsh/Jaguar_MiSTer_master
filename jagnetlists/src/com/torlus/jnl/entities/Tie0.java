package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Tie0 extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Tie0() {
		ios.add(new Signal("z", SignalType.OUT));
	}

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "$z$ <= '0';\n";
		return vhdlMap(inst, vhdl);
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "assign $z$ = 1'b0;\n";
		return verilogMap(inst, vlog);
	}

}
