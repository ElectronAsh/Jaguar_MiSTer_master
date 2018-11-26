package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Fd1q extends Entity {
	@Override
	public String getBaseName() {
		return "fd1q";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	
	public Fd1q() {
		// 260c_pri_e.pdf - CFD1QXL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("cp", SignalType.IN));
	}
}
