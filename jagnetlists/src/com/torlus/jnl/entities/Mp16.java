package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Mp16 extends Entity {
	@Override
	public String getBaseName() {
		return "mp16";
	}

	public Mp16() {
		for(int i = 0; i < 32; i++) {
			Signal s = new Signal("q", SignalType.OUT);
			s.bit = i;
			ios.add(s);
		}
		for(int i = 0; i < 16; i++) {
			Signal s = new Signal("a", SignalType.IN);
			s.bit = i;
			ios.add(s);
		}
		for(int i = 0; i < 16; i++) {
			Signal s = new Signal("b", SignalType.IN);
			s.bit = i;
			ios.add(s);
		}		
		ios.add(new Signal("sign0", SignalType.IN));
		ios.add(new Signal("sign1", SignalType.IN));
		ios.add(new Signal("unk0", SignalType.IN));
		ios.add(new Signal("unk1", SignalType.IN));		
	}
}
