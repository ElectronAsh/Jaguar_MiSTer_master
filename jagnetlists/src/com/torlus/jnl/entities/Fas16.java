package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Fas16 extends Entity {
	@Override
	public String getBaseName() {
		return "fas16";
	}

	public Fas16() {
		for(int i = 0; i < 16; i++) {
			ios.add(new Signal("s" + i, SignalType.OUT));
		}
		ios.add(new Signal("co", SignalType.OUT));
		
		ios.add(new Signal("as", SignalType.IN));
		ios.add(new Signal("ci", SignalType.IN));
		for(int i = 0; i < 16; i++) {
			ios.add(new Signal("a" + i, SignalType.IN));
			ios.add(new Signal("b" + i, SignalType.IN));
		}		
	}
}
