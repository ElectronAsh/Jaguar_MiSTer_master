package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Anr1 extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Anr1() {
		// 260c_pri_e.pdf - CANR1XL
		ios.add(new Signal("z", SignalType.OUT));

		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("b", SignalType.IN));
		ios.add(new Signal("c", SignalType.IN));
	}

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "$z$ <= not( ($a$ and $b$) or $c$ );\n";
		return vhdlMap(inst, vhdl);
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "assign $z$ = ~( ($a$ & $b$) | $c$ );\n";
		return verilogMap(inst, vlog);
	}

}
