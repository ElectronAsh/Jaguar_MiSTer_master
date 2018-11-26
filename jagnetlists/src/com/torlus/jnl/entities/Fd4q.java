package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Fd4q extends Entity {
	@Override
	public String getBaseName() {
		return "fd4q";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	
	public Fd4q() {
		// 260c_pri_e.pdf - CFD4QXL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("cp", SignalType.IN));
		ios.add(new Signal("sd", SignalType.IN));
	}
}
