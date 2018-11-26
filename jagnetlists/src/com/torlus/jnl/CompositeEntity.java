package com.torlus.jnl;

import java.util.TreeMap;
import java.util.Vector;

public class CompositeEntity extends Entity {

	public Vector<Signal> locals = new Vector<Signal>();
	public Vector<Instance> instances = new Vector<Instance>();

	@Override
	public void findDeps(TreeMap<String, Entity> map) {
		for (int i = 0; i < instances.size(); i++) {
			instances.get(i).entity.findDeps(map);
		}
		map.put(getBaseName(), this);
	}

	@Override
	public boolean requireSysclk() {
		for(Instance inst : instances) {
			if (inst.entity.requireSysclk())
				return true;
		}
		return false;
	}
	@Override
	public boolean requireMemclk() {
		for(Instance inst : instances) {
			if (inst.entity.requireMemclk())
				return true;
		}
		return false;
	}

	
	public Signal findSignal(String name, int bit, int index) {
		Signal res = null;
		int maxIndex = 0;
		int maxBit = 0;

		Vector<Signal> candidates = new Vector<Signal>();
		candidates.addAll(ios);
		candidates.addAll(locals);

		for (int i = 0; i < candidates.size(); i++) {
			Signal s = candidates.get(i);

			if (name.equals(s.name)) {
				if ((index != Signal.NONE && s.index >= 0) || (index == Signal.NONE && s.index == Signal.NONE)) {
					if ((bit != Signal.NONE && s.bit >= 0) || (bit == Signal.NONE && s.bit == Signal.NONE)) {

						if (index != Signal.MAX && bit != Signal.MAX) {
							if (index == s.index && bit == s.bit)
								return s;
						} else if (index == Signal.MAX && bit != Signal.MAX) {
							if (bit == s.bit) {
								if (s.index >= maxIndex) {
									maxIndex = s.index;
									res = s;
								}
							}
						} else if (index != Signal.MAX && bit == Signal.MAX) {
							if (index == s.index) {
								if (s.bit >= maxBit) {
									maxBit = s.bit;
									res = s;
								}
							}
						} else {
							throw new RuntimeException("Unsupported");
						}
					}
				}
			}
		}

		return res;
	}

	public Vector<Signal> getAllSignals(Signal org) {
		Vector<Signal> res = new Vector<Signal>();

		Vector<Signal> candidates = new Vector<Signal>();
		candidates.addAll(ios);
		candidates.addAll(locals);
		for (int i = 0; i < candidates.size(); i++) {
			Signal s = candidates.get(i);
			if (org.equals(s)) {
				res.add(s);
			}
		}
		return res;
	}

	public String vhdlLocalDecl() {
		String vhdl = "";
		for (int n = 0; n < locals.size(); n++) {
			Signal io = locals.get(n);
			if (io.bit == Signal.NONE) {
				// std_logic
				vhdl += "signal " + io.vhdlName() + " : std_logic;\n";
			} else {
				// std_logic_vector
				int start = io.bit;
				int current = start;
				String name = io.vhdlName();
				n++;
				while (n < locals.size()) {
					io = locals.get(n);
					if (name.equals(io.vhdlName())) {
						if (io.bit != current + 1)
							throw new RuntimeException("Unsupported");
						current++;
					} else
						break;
					n++;
				}
				if (name.equals(io.vhdlName())) {
					// last declaration
				} else {
					// different signal, rewind
					n--;
					io = locals.get(n);
				}
				vhdl += "signal " + io.vhdlName() + " : std_logic_vector(" + start + " to " + current + ");\n";
			}
		}
		return vhdl;
	}

	public String verilogLocalDecl() {
		String vlog = "";
		for (int n = 0; n < locals.size(); n++) {
			Signal io = locals.get(n);
			if (io.bit == Signal.NONE) {
				vlog += verilogExpand("wire " + io.verilogName() + ";\n");
			} else {
				int start = io.bit;
				int current = start;
				String name = io.verilogName();
				n++;
				while (n < locals.size()) {
					io = locals.get(n);
					if (name.equals(io.verilogName())) {
						if (io.bit != current + 1)
							throw new RuntimeException("Unsupported");
						current++;
					} else
						break;
					n++;
				}
				if (name.equals(io.verilogName())) {
					// last declaration
				} else {
					// different signal, rewind
					n--;
					io = locals.get(n);
				}
				vlog += verilogExpand("wire [" + start + ":" + current + "] " + io.verilogName() + ";\n");
			}
		}

		return vlog;
	}

	public String vhdlBufferDecl() {
		String vhdl = "";
		for (int n = 0; n < ios.size(); n++) {
			Signal io = ios.get(n);
			if (io.type != SignalType.BUS && io.buffered) {
				if (io.bit != Signal.NONE) {
					vhdl += "signal " + io.vhdlName() + "_b" + io.bit + "_obuf : std_logic;\n";
				} else {
					vhdl += "signal " + io.vhdlName() + "_obuf : std_logic;\n";
				}
			}
		}
		if (vhdl.length() > 0) {
			vhdl = "\n// Output buffers\n" + vhdl + "\n";
		}
		return vhdl;
	}

	public String verilogBufferDecl() {
		String vlog = "";
		for (int n = 0; n < ios.size(); n++) {
			Signal io = ios.get(n);
			if (io.type != SignalType.BUS && io.buffered) {
				if (io.bit != Signal.NONE) {
					vlog += "wire " + io.verilogName() + "_b" + io.bit + "_obuf;\n";
				} else {
					vlog += "wire " + io.verilogName() + "_obuf;\n";
				}
			}
		}
		if (vlog.length() > 0) {
			vlog = "\n// Output buffers\n" + vlog + "\n";
		}
		return vlog;
	}

	public String vhdlBufferWires() {
		String vhdl = "";
		for (int n = 0; n < ios.size(); n++) {
			Signal io = ios.get(n);
			if (io.type != SignalType.BUS && io.buffered) {
				if (io.bit != Signal.NONE) {
					vhdl += io.vhdlName() + "(" + io.bit + ") <= " + io.vhdlName() + "_b" + io.bit + "_obuf;\n";
				} else {
					vhdl += io.vhdlName() + " <= " + io.vhdlName() + "_obuf;\n";
				}
			}
		}
		if (vhdl.length() > 0) {
			vhdl = "\n// Output buffers\n" + vhdl + "\n";
		}
		return vhdl;
	}

	public String verilogBufferWires() {
		String vlog = "";
		for (int n = 0; n < ios.size(); n++) {
			Signal io = ios.get(n);
			if (io.type != SignalType.BUS && io.buffered) {
				if (io.bit != Signal.NONE) {
					vlog += "assign " + io.verilogName() + "[" + io.bit + "] = " + io.verilogName() + "_b" + io.bit + "_obuf;\n";
				} else {
					vlog += "assign " + io.verilogName() + " = " + io.verilogName() + "_obuf;\n";
				}
			}
		}
		if (vlog.length() > 0) {
			vlog = "\n// Output buffers\n" + vlog + "\n";
		}
		return vlog;
	}

	private String baseName = null;

	public void setBaseName(String name) {
		baseName = name;
	}

	public String getBaseName() {
		if (baseName == null) {
			throw new RuntimeException("baseName undefined for " + this.getClass().getName());
		}
		return baseName;
	}

	public CompositeEntity(String name) {
		setBaseName(name);
	}
}
