package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Fd1e extends Entity {
	@Override
	public String getBaseName() {
		return "fd1e";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	public Fd1e() {
		// 260c_pri_e.pdf - CFD1EAXL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("qn", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("cp", SignalType.IN));
		ios.add(new Signal("ti", SignalType.IN));
		ios.add(new Signal("te", SignalType.IN));
	}
}
