package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Rd64x32 extends Entity {
	@Override
	public String getBaseName() {
		return "rd64x32";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}
	
	public Rd64x32() {
		for (int i = 0; i < 32; i++) {
			Signal s = new Signal("qa", SignalType.OUT);
			s.bit = i;
			ios.add(s);
		}
		for (int i = 0; i < 32; i++) {
			Signal s = new Signal("qb", SignalType.OUT);
			s.bit = i;
			ios.add(s);
		}

		ios.add(new Signal("nwea", SignalType.IN));
		ios.add(new Signal("clka", SignalType.IN));

		for (int i = 0; i < 6; i++) {
			Signal s = new Signal("aa", SignalType.IN);
			s.bit = i;
			ios.add(s);
		}
		for (int i = 0; i < 32; i++) {
			Signal s = new Signal("da", SignalType.IN);
			s.bit = i;
			ios.add(s);
		}

		ios.add(new Signal("nweb", SignalType.IN));
		ios.add(new Signal("clkb", SignalType.IN));

		for (int i = 0; i < 6; i++) {
			Signal s = new Signal("ab", SignalType.IN);
			s.bit = i;
			ios.add(s);
		}
		for (int i = 0; i < 32; i++) {
			Signal s = new Signal("db", SignalType.IN);
			s.bit = i;
			ios.add(s);

		}
	}
}
