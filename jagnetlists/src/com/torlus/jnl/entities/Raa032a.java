package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Raa032a extends Entity {
	@Override
	public String getBaseName() {
		return "raa032a";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	// Unused
	public Raa032a() {
		for (int i = 0; i < 32; i++) {
			Signal s = new Signal("z", SignalType.BUS);
			s.bit = i;
			ios.add(s);
		}
		ios.add(new Signal("cs", SignalType.IN));
		// ios.add(new Signal("clk", SignalType.IN));
		for (int i = 0; i < 10; i++) {
			ios.add(new Signal("a" + i, SignalType.IN));
		}
	}
}
