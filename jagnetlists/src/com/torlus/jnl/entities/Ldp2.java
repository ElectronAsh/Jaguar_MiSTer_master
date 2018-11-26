package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ldp2 extends Entity {
	@Override
	public String getBaseName() {
		return "ldp2";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	public Ldp2() {
		// 260c_pri_e.pdf - CLDP2XL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("qn", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("g", SignalType.IN));
		ios.add(new Signal("cd", SignalType.IN));
	}
}
