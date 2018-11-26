package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Fjk2 extends Entity {
	@Override
	public String getBaseName() {
		return "fjk2";
	}

	@Override
	public boolean requireSysclk() {
		return true;
	}

	public Fjk2() {
		// 260c_pri_e.pdf - CFJK2XL
		ios.add(new Signal("q", SignalType.OUT));
		ios.add(new Signal("qn", SignalType.OUT));
		ios.add(new Signal("j", SignalType.IN));
		ios.add(new Signal("k", SignalType.IN));
		ios.add(new Signal("cp", SignalType.IN));
		ios.add(new Signal("cd", SignalType.IN));
	}
}
