package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class PE extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	private int size;

	public PE(int size) {
		this.size = size;

		Signal s = new Signal("z", SignalType.BUS);
		ios.add(s);

		for (int k = 0; k < size; k++) {
			s = new Signal("a" + k, SignalType.BUS);
			s.ts_sink = true;
			ios.add(s);
		}
	}

	private static final boolean wireOr = true;
	
	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "";

		// Output
		if (wireOr) {
			vlog += "assign " + inst.wires.get(0).verilogWireName() + " = ";
			vlog = vlog.replaceAll("##SIG##", "out");
			for (int i = 0; i < size; i++) {
				vlog += "(" + inst.wires.get(i + 1).verilogWireName() + " & ";
				vlog = vlog.replaceAll("##SIG##", "oe");
				vlog += inst.wires.get(i + 1).verilogWireName() + " ) | ";
				vlog = vlog.replaceAll("##SIG##", "out");
			}
			vlog += "1'b0;\n";
		} else {
			vlog += "assign " + inst.wires.get(0).verilogWireName() + " =\n";
			vlog = vlog.replaceAll("##SIG##", "out");
			for (int i = 0; i < size; i++) {
				vlog += "\t(" + inst.wires.get(i + 1).verilogWireName() + ") ? ";
				vlog = vlog.replaceAll("##SIG##", "oe");
				vlog += inst.wires.get(i + 1).verilogWireName() + " :\n";
				vlog = vlog.replaceAll("##SIG##", "out");
			}
			vlog += "\t1'bz;\n";
		}

		// Output enable
		vlog += "assign " + inst.wires.get(0).verilogWireName() + " = ";
		for (int i = 0; i < size; i++) {
			if (i > 0)
				vlog += " | ";
			vlog += inst.wires.get(i + 1).verilogWireName();
		}
		vlog += ";\n";
		vlog = vlog.replaceAll("##SIG##", "oe");

		// Inputs
		for (int i = 0; i < size; i++) {
			vlog += "assign " + inst.wires.get(i + 1).verilogWireName() + " = ";
			vlog = vlog.replaceAll("##SIG##", "in");
			vlog += inst.wires.get(0).verilogWireName() + ";\n";
			vlog = vlog.replaceAll("##SIG##", "in");
		}

		return vlog;
	}

}
