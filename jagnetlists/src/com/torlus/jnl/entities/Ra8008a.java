package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ra8008a extends Entity {
	@Override
	public String getBaseName() {
		return "ra8008a";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	public Ra8008a() {
		for (int i = 0; i < 8; i++) {
			// Signal s = new Signal("z", SignalType.BUS);
			Signal s = new Signal("z", SignalType.OUT);
			s.bit = i;
			ios.add(s);
		}
		ios.add(new Signal("clk", SignalType.IN));
		for (int i = 0; i < 8; i++) {
			// ios.add(new Signal("a" + i, SignalType.IN));
			Signal s = new Signal("a", SignalType.IN);
			s.bit = i;
			ios.add(s);
			
		}
	}
}
