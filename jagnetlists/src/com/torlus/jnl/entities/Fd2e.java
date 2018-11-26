package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Fd2e extends Entity {
	@Override
	public String getBaseName() {
		return "fd2e";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	
	public Fd2e() {
		// 260c_pri_e.pdf - CFD2EXL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("qn", SignalType.OUT));
		ios.add(new Signal("d", SignalType.IN));
		ios.add(new Signal("cp", SignalType.IN));
		ios.add(new Signal("cd", SignalType.IN));
		ios.add(new Signal("ti", SignalType.IN));
		ios.add(new Signal("te", SignalType.IN));
	}
}
