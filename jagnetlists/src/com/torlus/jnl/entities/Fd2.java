package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Fd2 extends Entity {
	@Override
	public String getBaseName() {
		return "fd2";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	public Fd2() {
		// 260c_pri_e.pdf - CFD2XL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("qn", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("cp", SignalType.IN));
		ios.add(new Signal("cd", SignalType.IN));
	}
}
