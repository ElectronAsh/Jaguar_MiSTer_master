package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Join_bus extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Join_bus() {
		Signal s = new Signal("z", SignalType.BUS);
		ios.add(s);

		s = new Signal("a", SignalType.BUS);
		s.ts_sink = true;
		ios.add(s);
	}

	@Override
	public boolean resize(int max) {
		this.max = max;
		if (max != 0) {
			ios.clear();
			for (int i = 0; i <= max; i++) {
				Signal s = new Signal("z" + i, SignalType.BUS);
				ios.add(s);
			}
			for (int i = 0; i <= max; i++) {
				Signal s = new Signal("a" + i, SignalType.BUS);
				s.ts_sink = true;
				ios.add(s);
			}
		}
		return true;
	}

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "";
		for (int i = 0; i <= max; i++) {
			vhdl += inst.wires.get(i).vhdlWireName();
			vhdl += " <= ";
			vhdl += inst.wires.get(i + max + 1).vhdlWireName();
			vhdl += ";\n";
		}
		return vhdl;
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "";
		for (int i = 0; i <= max; i++) {
			String vt = "";
			vt += "assign " + inst.wires.get(i).verilogWireName();
			vt += " = ";
			vt += inst.wires.get(i + max + 1).verilogWireName();
			vt += ";\n";

			vt = vt.replaceAll("##SIG##", "out");

			vt += "assign " + inst.wires.get(i).verilogWireName();
			vt += " = ";
			vt += inst.wires.get(i + max + 1).verilogWireName();
			vt += ";\n";

			vt = vt.replaceAll("##SIG##", "oe");

			// Warning, inverted
			vt += "assign " + inst.wires.get(i + max + 1).verilogWireName();
			vt += " = ";
			vt += inst.wires.get(i).verilogWireName();
			vt += ";\n";

			vt = vt.replaceAll("##SIG##", "in");

			vlog += vt;
		}
		return vlog;
	}

}
