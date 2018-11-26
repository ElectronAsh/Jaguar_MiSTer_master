package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ts extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Ts() {
		// 260c_pri_e.pdf - CTSXL
		Signal z = new Signal("z", SignalType.BUS);
		ios.add(z); // warning

		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("e", SignalType.IN));
	}

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "$z$ <= $a$ when $e$ = '1' else 'Z';\n";
		return vhdlMap(inst, vhdl);
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "assign " + inst.wires.get(0).verilogWireName() + " = $a$;\n";
		vlog = vlog.replaceAll("##SIG##", "out");
		vlog += "assign " + inst.wires.get(0).verilogWireName() + " = $e$;\n";
		vlog = vlog.replaceAll("##SIG##", "oe");
		return verilogMap(inst, vlog);
	}

}
