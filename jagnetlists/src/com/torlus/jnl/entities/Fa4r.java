package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Fa4r extends Entity {
	@Override
	public String getBaseName() {
		return "fa4r";
	}

	public Fa4r() {
		// 260c_pri_e.pdf - CFA4RXL
		ios.add(new Signal("s0", SignalType.OUT));
		ios.add(new Signal("s1", SignalType.OUT));
		ios.add(new Signal("s2", SignalType.OUT));
		ios.add(new Signal("s3", SignalType.OUT));
		ios.add(new Signal("co", SignalType.OUT));
		
		ios.add(new Signal("ci", SignalType.IN));		
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("b0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("b1", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
		ios.add(new Signal("b2", SignalType.IN));
		ios.add(new Signal("a3", SignalType.IN));
		ios.add(new Signal("b3", SignalType.IN));
	}
}
