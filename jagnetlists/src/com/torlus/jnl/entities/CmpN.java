package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class CmpN extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	private int size;
	
	// tosh_to_moto.v - Equality comparator
	public CmpN(int size) {
		this.size = size;
		ios.add(new Signal("eq", SignalType.OUT));
		
		for(int i = 0; i < size ; i++) {
			ios.add(new Signal("a" + i, SignalType.IN));
			ios.add(new Signal("b" + i, SignalType.IN));
		}
	}
	
	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "";
		vhdl += inst.wires.get(0).vhdlWireName();		
		vhdl += " <= '1' when (";
		vhdl += inst.wires.get(1).vhdlWireName();
		vhdl += " = ";
		vhdl += inst.wires.get(2).vhdlWireName();
		vhdl += ")";
		
		for(int i = 2; i < size + 1; i++) {
			vhdl += " and (";
			vhdl += inst.wires.get(2 * i - 1).vhdlWireName();
			vhdl += " = ";
			vhdl += inst.wires.get(2 * i).vhdlWireName();
			vhdl += ")";	
		}
		vhdl += " else '0';\n";
		return vhdl;
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "";
		vlog += "assign " + inst.wires.get(0).verilogWireName() + " = ";		
		vlog += "(";
		vlog += inst.wires.get(1).verilogWireName();
		vlog += " == ";
		vlog += inst.wires.get(2).verilogWireName();
		vlog += ")";
		
		for(int i = 2; i < size + 1; i++) {
			vlog += " && (";
			vlog += inst.wires.get(2 * i - 1).verilogWireName();
			vlog += " == ";
			vlog += inst.wires.get(2 * i).verilogWireName();
			vlog += ")";	
		}
		vlog += ";\n";
		return vlog;
	}

}
