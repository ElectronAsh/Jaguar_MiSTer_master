package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ab8616a extends Entity {
	@Override
	public String getBaseName() {
		return "ab8616a";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	public Ab8616a() {
		for (int i = 0; i < 16; i++) {
			Signal s = new Signal("z", SignalType.BUS);
			s.bit = i;
			ios.add(s);
		}
		ios.add(new Signal("cen", SignalType.IN));
		ios.add(new Signal("rw", SignalType.IN));
		// ios.add(new Signal("clk", SignalType.IN));
		for (int i = 0; i < 9; i++) {
			Signal s = new Signal("a", SignalType.IN);
			s.bit = i;
			ios.add(s);
		}
	}
}
