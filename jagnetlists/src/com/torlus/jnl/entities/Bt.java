package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Bt extends Entity {
	@Override
	public String getBaseName() {
		return "bt";
	}

	public Bt() {
		// 260c_pri_e.pdf - BT8
		Signal s = new Signal("z", SignalType.BUS);
		ios.add(s);

		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("en", SignalType.IN));
		ios.add(new Signal("tn", SignalType.IN));
	}
}
