package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ivdm extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Ivdm() {
		// 260c_pri_e.pdf - CIVDXL
		ios.add(new Signal("z0", SignalType.OUT));
		ios.add(new Signal("z1", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
	}
	
	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "$z0$ <= not $a$;\n";
		vhdl += "$z1$ <= $a$;\n";
		return vhdlMap(inst, vhdl);
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "assign $z0$ = ~$a$;\n";
		vlog += "assign $z1$ = $a$;\n";
		return verilogMap(inst, vlog);
	}

}
