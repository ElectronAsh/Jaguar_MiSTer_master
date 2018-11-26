package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class LB extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public LB() {
		Signal s = new Signal("z", SignalType.BUS);
		s.ts_sink = true;
		ios.add(s);
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "";

		// Loopback
		vlog += "assign " + inst.wires.get(0).verilogWireName() + " = ";
		vlog = vlog.replaceAll("##SIG##", "in");
		vlog += inst.wires.get(0).verilogWireName() + ";\n";
		vlog = vlog.replaceAll("##SIG##", "out");

		return vlog;
	}

}
