package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ldp1 extends Entity {
	@Override
	public String getBaseName() {
		return "ldp1";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	
	public Ldp1() {
		// 260c_pri_e.pdf - CLDP1XL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("qn", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("g", SignalType.IN));
	}
}
