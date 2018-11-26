package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ldp2q extends Entity {
	@Override
	public String getBaseName() {
		return "ldp2q";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	public Ldp2q() {
		// 260c_pri_e.pdf - CLDP1QXL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("g", SignalType.IN));
		ios.add(new Signal("cd", SignalType.IN));
	}
}
