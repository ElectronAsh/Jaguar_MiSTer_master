package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Lsra extends Entity {
	@Override
	public String getBaseName() {
		return "lsra";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	// tosh_to_moto.v
	public Lsra() {
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("rn", SignalType.IN));
		ios.add(new Signal("sn", SignalType.IN));
	}
}
