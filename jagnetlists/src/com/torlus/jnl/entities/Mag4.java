package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Mag4 extends Entity {
	@Override
	public String getBaseName() {
		return "mag4";
	}

	public Mag4() {
		// tosh_to_moto.v - Magnitude comparator
		ios.add(new Signal("agb", SignalType.OUT));
		ios.add(new Signal("aeb", SignalType.OUT));
		ios.add(new Signal("alb", SignalType.OUT));

		ios.add(new Signal("agbi", SignalType.IN));
		ios.add(new Signal("aebi", SignalType.IN));
		ios.add(new Signal("albi", SignalType.IN));

		ios.add(new Signal("a3", SignalType.IN));
		ios.add(new Signal("b3", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
		ios.add(new Signal("b2", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("b1", SignalType.IN));
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("b0", SignalType.IN));
	}
}
