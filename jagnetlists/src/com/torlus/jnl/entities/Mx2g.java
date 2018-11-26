package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Mx2g extends Entity {
	@Override
	public String getBaseName() {
		return "mx2g";
	}

	public Mx2g() {
		// 260c_pri_e.pdf - CMX2GXL
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("s", SignalType.IN));
		ios.add(new Signal("gn", SignalType.IN));
	}
}
