package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Mx4g extends Entity {
	@Override
	public String getBaseName() {
		return "mx4g";
	}

	public Mx4g() {
		// 260c_pri_e.pdf - CMX4GXL
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("a2", SignalType.IN));
		ios.add(new Signal("a3", SignalType.IN));
		ios.add(new Signal("s0", SignalType.IN));
		ios.add(new Signal("s1", SignalType.IN));
		ios.add(new Signal("gn", SignalType.IN));
	}
}
