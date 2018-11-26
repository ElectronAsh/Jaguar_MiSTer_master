package com.torlus.jnl;

import java.util.Vector;

public class Instance {
	public String name;
	public int index;

	public String info;
	public Entity entity;

	public Vector<Signal> wires = new Vector<Signal>();

	public void wire(Signal s) throws Exception {
		int nextIo = wires.size();
		if (nextIo >= entity.ios.size()) {
			throw new Exception("Too many wires");
		}
		Signal io = entity.ios.get(nextIo);
		boolean ok = false;

		switch (io.type) {
			case OUT:
				// System.out.println("@Wire :   [1] checking " + s);
				if (s.type == SignalType.OUT || s.type == SignalType.LOCAL) {
					wires.add(s);
					ok = true;
					break;
				} else if (s.type == SignalType.BUS /*|| s.type == SignalType.TRI*/) {
					wires.add(s);
					ok = true;
					break;
				}
				break;
			case IN:
				// System.out.println("@Wire :   [2] checking " + s);
				if (s.type == SignalType.IN || s.type == SignalType.OUT || s.type == SignalType.LOCAL) {
					if (s.type == SignalType.OUT && !s.buffered) {
						System.out.println("@Wire :      Warning : unbuffered output " + s + " setting it buffered");
						s.buffered = true;
					}
					wires.add(s);
					ok = true;
					break;
				} else if (s.type == SignalType.BUS /*|| s.type == SignalType.TRI*/) {
					wires.add(s);
					ok = true;
					break;
				}
				break;
			/*case TRI:*/
			case BUS:
				// System.out.println("@Wire :   [3] checking " + s);
				if (s.type == SignalType.BUS /*|| s.type == SignalType.TRI*/) {
					wires.add(s);
					ok = true;
					break;
				} /*else if (s.type == SignalType.LOCAL) {
					s.type = SignalType.BUS;
					wires.add(s);
					ok = true;
					break;					
				}*/
				break;

			default:
				throw new Exception("Unexpected");
		}

		if (!ok)
			throw new Exception("No match found");
	}

	public String vhdlInstance() {
		String vhdl = "";
		if (index <= 0) {
			vhdl += "\n// " + info + "\n";
		}
		vhdl += entity.vhdlInstance(this);
		return vhdl;
	}

	public String verilogInstance() {
		String vlog = "";
		if (index <= 0) {
			vlog += "\n// " + info + "\n";
		}
		vlog += entity.verilogInstance(this);
		vlog = vlog.replaceAll("##SIG##", "in");
		return vlog;
	}

}
