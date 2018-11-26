package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class D416g2l extends Entity {
	@Override
	public String getBaseName() {
		return "d416g2l";
	}

	public D416g2l() {
		// 4-to-16 decoder with 2 low enable (?)

		// from tosh_to_moto.v
		// 4 to 16 decoder with 2 enables, active-low outputs

		for (int i = 0; i < 16; i++) {
			ios.add(new Signal("z" + i, SignalType.OUT));
		}

		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
		ios.add(new Signal("a3", SignalType.IN));

		ios.add(new Signal("g1n", SignalType.IN));
		ios.add(new Signal("g2n", SignalType.IN));
	}
}
