package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Sysclkdly extends Entity {

	public Sysclkdly() {
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	@Override
	public String getBaseName() {
		return "sysclkdly";
	}

	
}
