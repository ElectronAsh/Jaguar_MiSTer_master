package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ha1 extends Entity {
	@Override
	public String getBaseName() {
		return "ha1";
	}

	public Ha1() {
		// 260c_pri_e.pdf - CHA1XL
		ios.add(new Signal("s", SignalType.OUT));
		ios.add(new Signal("co", SignalType.OUT));
		
		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("b", SignalType.IN));
	}
}
