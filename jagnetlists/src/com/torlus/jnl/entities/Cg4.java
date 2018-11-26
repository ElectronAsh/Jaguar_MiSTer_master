package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Cg4 extends Entity {
	@Override
	public String getBaseName() {
		return "cg4";
	}

	public Cg4() {
		// tosh_to_moto.v
		ios.add(new Signal("co0l", SignalType.OUT));
		ios.add(new Signal("co1l", SignalType.OUT));
		ios.add(new Signal("co2l", SignalType.OUT));
		ios.add(new Signal("g", SignalType.OUT));
		ios.add(new Signal("p", SignalType.OUT));
		
		ios.add(new Signal("cin", SignalType.IN));
		ios.add(new Signal("g0", SignalType.IN));
		ios.add(new Signal("g1", SignalType.IN));
		ios.add(new Signal("g2", SignalType.IN));
		ios.add(new Signal("g3", SignalType.IN));
		ios.add(new Signal("p0", SignalType.IN));
		ios.add(new Signal("p1", SignalType.IN));
		ios.add(new Signal("p2", SignalType.IN));
		ios.add(new Signal("p3", SignalType.IN));
	}
}
