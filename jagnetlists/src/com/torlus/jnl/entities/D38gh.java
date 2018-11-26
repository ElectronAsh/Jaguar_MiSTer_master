package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class D38gh extends Entity {
	@Override
	public String getBaseName() {
		return "d38gh";
	}

	public D38gh() {
		// 3-to-8 decoder with high enable (?)
		
		for(int i = 0; i < 8; i++) {
			ios.add(new Signal("z" + i, SignalType.OUT));
		}
		
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
		
		ios.add(new Signal("gn", SignalType.IN));
	}
}
