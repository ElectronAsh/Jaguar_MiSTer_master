package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Mx4 extends Entity {
	@Override
	public String getBaseName() {
		return "mx4";
	}

	public Mx4() {
		// 260c_pri_e.pdf - CMX4XL
		ios.add(new Signal("z", SignalType.OUT));

		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
		ios.add(new Signal("a3", SignalType.IN));
		
		ios.add(new Signal("s0", SignalType.IN));
		ios.add(new Signal("s1", SignalType.IN));
	}
}
