package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Mx2 extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Mx2() {
		// 260c_pri_e.pdf - CMX2XL
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("a0", SignalType.IN));
		ios.add(new Signal("a1", SignalType.IN));
		ios.add(new Signal("s", SignalType.IN));
	}
	
	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "assign $z$ = ($s$) ? $a1$ : $a0$;\n";
		return verilogMap(inst, vlog);
	}


}
