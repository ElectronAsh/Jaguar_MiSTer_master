package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Dummy extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}


	public Dummy() {
		ios.add(new Signal("a", SignalType.IN));
	}
	
	@Override
	public boolean resize(int max) {
		this.max = max;
		if (max != 0) {
			ios.clear();
			for(int i = 0; i <= max; i++) {
				ios.add(new Signal("a" + i, SignalType.IN));
			}
		}
		return true;
	}

	@Override
	public String vhdlInstance(Instance inst) {
		return "";
	}

	@Override
	public String verilogInstance(Instance inst) {
		return "";
	}

}
