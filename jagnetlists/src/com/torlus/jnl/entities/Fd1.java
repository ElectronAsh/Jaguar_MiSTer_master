package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Fd1 extends Entity {
	@Override
	public String getBaseName() {
		return "fd1";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	public Fd1() {
		// 260c_pri_e.pdf - CFD1XL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("qn", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("cp", SignalType.IN));
	}
}
