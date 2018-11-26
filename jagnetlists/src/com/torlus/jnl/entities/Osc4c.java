package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Osc4c extends Entity {
	@Override
	public String getBaseName() {
		return "osc4c";
	}

	public Osc4c() {
		Signal s = new Signal("z0", SignalType.OUT);
		ios.add(s);

		ios.add(new Signal("z1", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
	}
}
