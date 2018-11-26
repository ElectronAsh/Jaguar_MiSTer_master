package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class D416gh extends Entity {
	@Override
	public String getBaseName() {
		return "d416gh";
	}

	public D416gh() {
		// 4-to-16 decoder with high enable (?)
		
		// tosh_to_moto.v
		// 4 to 16 decoder with enable, active-high outputs

		for(int i = 0; i < 16; i++) {
			ios.add(new Signal("z" + i, SignalType.OUT));
		}
		
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
		ios.add(new Signal("a3", SignalType.IN));
		
		ios.add(new Signal("gn", SignalType.IN));
	}
}
