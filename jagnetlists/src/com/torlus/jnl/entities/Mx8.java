package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Mx8 extends Entity {
	@Override
	public String getBaseName() {
		return "mx8";
	}

	public Mx8() {
		// 260c_pri_e.pdf - CMX8XL
		ios.add(new Signal("z", SignalType.OUT));

		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
		ios.add(new Signal("a3", SignalType.IN));
		ios.add(new Signal("a4", SignalType.IN));
		ios.add(new Signal("a5", SignalType.IN));
		ios.add(new Signal("a6", SignalType.IN));
		ios.add(new Signal("a7", SignalType.IN));
		
		
		ios.add(new Signal("s0", SignalType.IN));
		ios.add(new Signal("s1", SignalType.IN));
		ios.add(new Signal("s2", SignalType.IN));
	}
}
