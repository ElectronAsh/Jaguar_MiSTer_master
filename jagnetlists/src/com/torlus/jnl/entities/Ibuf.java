package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ibuf extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Ibuf() {
		// tosh_to_moto.v
		// 260c_pri_e.pdf - IBUFx
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("po", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("pi", SignalType.IN));
	}
	
	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "$z$ <= $a$;\n";
		vhdl += "$po$ <= not($a$ and $pi$);\n";
		return vhdlMap(inst, vhdl);
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "assign $z$ = $a$;\n";
		vlog += "assign $po$ = ~($a$ & $pi$);\n";
		return verilogMap(inst, vlog);
	}

}
