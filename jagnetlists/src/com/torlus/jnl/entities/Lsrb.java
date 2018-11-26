package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Lsrb extends Entity {
	@Override
	public String getBaseName() {
		return "lsrb";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	// tosh_to_moto.v
	public Lsrb() {
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("r", SignalType.IN));
		ios.add(new Signal("s", SignalType.IN));
	}
}
