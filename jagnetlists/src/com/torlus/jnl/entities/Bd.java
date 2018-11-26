package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Bd extends Entity {
	@Override
	public String getBaseName() {
		return "bd";
	}

	public Bd() {
		// tosh_to_moto.v
		/*ios.add(new Signal("zi", SignalType.OUT));
		ios.add(new Signal("po", SignalType.OUT));
		ios.add(new Signal("io", SignalType.BUS));
		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("en", SignalType.IN));
		ios.add(new Signal("tn", SignalType.IN));
		ios.add(new Signal("pi", SignalType.IN));*/

		// 260c_pri_e.pdf - BD8x
		Signal s = new Signal("io", SignalType.BUS);
		ios.add(s);

		ios.add(new Signal("zi", SignalType.OUT));
		ios.add(new Signal("po", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("en", SignalType.IN));
		ios.add(new Signal("tn", SignalType.IN));
		ios.add(new Signal("pi", SignalType.IN));

	}
}
