package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Join extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Join() {
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
	}

	@Override
	public boolean resize(int max) {
		this.max = max;
		if (max != 0) {
			ios.clear();
			for (int i = 0; i <= max; i++) {
				ios.add(new Signal("z" + i, SignalType.OUT));
				// s = new Signal("z", SignalType.OUT);
				// s.bit = i;
				// ios.add(s);
			}
			for (int i = 0; i <= max; i++) {
				ios.add(new Signal("a" + i, SignalType.IN));
				// s = new Signal("z", SignalType.IN);
				// s.index = i;
				// ios.add(s);
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
			vlog += "assign " + inst.wires.get(i).verilogWireName();
			vlog += " = ";
			vlog += inst.wires.get(i + max + 1).verilogWireName();
			vlog += ";\n";
		}
		return vlog;
	}

}
