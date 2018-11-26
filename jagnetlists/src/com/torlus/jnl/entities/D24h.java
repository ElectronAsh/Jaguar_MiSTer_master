package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class D24h extends Entity {
	@Override
	public String getBaseName() {
		return "d24h";
	}

	public D24h() {
		// 2-to-4 decoder
		
		for(int i = 0; i < 4; i++) {
			ios.add(new Signal("z" + i, SignalType.OUT));
		}
		
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
	}
}
