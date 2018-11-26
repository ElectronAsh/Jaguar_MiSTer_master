package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class D38h extends Entity {
	@Override
	public String getBaseName() {
		return "d38h";
	}

	public D38h() {
		// 3-to-8 decoder
		
		for(int i = 0; i < 8; i++) {
			ios.add(new Signal("z" + i, SignalType.OUT));
		}
		
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
	}
}
