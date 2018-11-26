package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Fa1 extends Entity {
	@Override
	public String getBaseName() {
		return "fa1";
	}

	public Fa1() {
		// 260c_pri_e.pdf - CFA1XL
		ios.add(new Signal("s", SignalType.OUT));
		ios.add(new Signal("co", SignalType.OUT));
		
		ios.add(new Signal("ci", SignalType.IN));		
		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("b", SignalType.IN));
	}
}
