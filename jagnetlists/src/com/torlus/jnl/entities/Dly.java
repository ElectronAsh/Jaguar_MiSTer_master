package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Dly extends Entity {

	public Dly() {
		// 260c_pri_e.pdf - CDLY1XL
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
	}

	// Code for "without delay"
	
	/*@Override
	public String getBaseName() {
		return null;
	}

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "$z$ <= $a$;\n";
		return vhdlMap(inst, vhdl);
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "assign $z$ = $a$;\n";
		return verilogMap(inst, vlog);
	}*/

	// Code for "with delay"
	
	@Override
	public boolean requireSysclk() {
		return true;
	}

	@Override
	public String getBaseName() {
		return "dly";
	}

	
}
