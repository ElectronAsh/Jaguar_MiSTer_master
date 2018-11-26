package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Fa32 extends Entity {
	@Override
	public String getBaseName() {
		return "fa32";
	}

	public Fa32() {
		for(int i = 0; i < 32; i++) {
			ios.add(new Signal("s" + i, SignalType.OUT));
		}
		ios.add(new Signal("co32", SignalType.OUT));
		ios.add(new Signal("co31", SignalType.OUT));
		ios.add(new Signal("co24", SignalType.OUT));
		
		ios.add(new Signal("ci", SignalType.IN));
		for(int i = 0; i < 32; i++) {
			ios.add(new Signal("a" + i, SignalType.IN));
			ios.add(new Signal("b" + i, SignalType.IN));
		}		
	}
}
