package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Mp1010a extends Entity {
	@Override
	public String getBaseName() {
		return "mp1010a";
	}

	public Mp1010a() {
		for(int i = 0; i < 20; i++) {
			Signal s = new Signal("q", SignalType.OUT);
			s.bit = i;
			ios.add(s);
		}
		for(int i = 0; i < 10; i++) {
			Signal s = new Signal("a", SignalType.IN);
			s.bit = i;
			ios.add(s);
		}
		for(int i = 0; i < 10; i++) {
			Signal s = new Signal("b", SignalType.IN);
			s.bit = i;
			ios.add(s);
		}		
	}
}
