package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Stlatch extends Entity {
	@Override
	public String getBaseName() {
		return "stlatch";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	
	public Stlatch() {
		// Override
		ios.add(new Signal("d1", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("clk", SignalType.IN));
		ios.add(new Signal("en", SignalType.IN));
	}
}
