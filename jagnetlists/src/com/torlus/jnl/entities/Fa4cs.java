package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Fa4cs extends Entity {
	@Override
	public String getBaseName() {
		return "fa4cs";
	}

	public Fa4cs() {
		// tosh_to_moto.v
		ios.add(new Signal("s0", SignalType.OUT));
		ios.add(new Signal("s1", SignalType.OUT));
		ios.add(new Signal("s2", SignalType.OUT));
		ios.add(new Signal("s3", SignalType.OUT));
		ios.add(new Signal("con", SignalType.OUT));
		ios.add(new Signal("co0n", SignalType.OUT));
		ios.add(new Signal("co1n", SignalType.OUT));
		ios.add(new Signal("g", SignalType.OUT));
		ios.add(new Signal("p", SignalType.OUT));
		
		ios.add(new Signal("cin", SignalType.IN));
		ios.add(new Signal("ci0n", SignalType.IN));
		ios.add(new Signal("ci1n", SignalType.IN));
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("b0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("b1", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
		ios.add(new Signal("b2", SignalType.IN));
		ios.add(new Signal("a3", SignalType.IN));
		ios.add(new Signal("b3", SignalType.IN));
	}
}
