package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Fa332 extends Entity {
	@Override
	public String getBaseName() {
		return "fa332";
	}

	public Fa332() {
		for(int i = 0; i < 32; i++) {
			ios.add(new Signal("s" + i, SignalType.OUT));
		}
		ios.add(new Signal("co0", SignalType.OUT));
		ios.add(new Signal("co1", SignalType.OUT));
		
		ios.add(new Signal("ci0", SignalType.IN));
		ios.add(new Signal("ci1", SignalType.IN));
		
		for(int i = 0; i < 32; i++) {
			ios.add(new Signal("a" + i, SignalType.IN));
			ios.add(new Signal("b" + i, SignalType.IN));
			ios.add(new Signal("c" + i, SignalType.IN));
		}		
	}
}
