package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Anr2 extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Anr2() {
		// 260c_pri_e.pdf - CANR2XL
		ios.add(new Signal("z", SignalType.OUT));

		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("b", SignalType.IN));
		ios.add(new Signal("c", SignalType.IN));
		ios.add(new Signal("d", SignalType.IN));
	}

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "$z$ <= not( ($a$ and $b$) or ($c$ and $d$) );\n";
		return vhdlMap(inst, vhdl);
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "assign $z$ = ~( ($a$ & $b$) | ($c$ & $d$) );\n";
		return verilogMap(inst, vlog);
	}

}
