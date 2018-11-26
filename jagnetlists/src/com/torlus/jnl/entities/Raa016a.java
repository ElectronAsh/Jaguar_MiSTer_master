package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Raa016a extends Entity {
	@Override
	public String getBaseName() {
		return "raa016a";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	public Raa016a() {
		for (int i = 0; i < 16; i++) {
			Signal s = new Signal("z", SignalType.BUS);
			s.bit = i;
			ios.add(s);
		}
		ios.add(new Signal("cs", SignalType.IN));
		// ios.add(new Signal("clk", SignalType.IN));
		for (int i = 0; i < 10; i++) {
			Signal s = new Signal("a", SignalType.IN);
			s.bit = i;
			ios.add(s);
		}
	}
}
