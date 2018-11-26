package com.torlus.jnl;

import java.util.TreeMap;
import java.util.Vector;

public abstract class Entity {

	// public String name = null;
	public Vector<Signal> ios = new Vector<Signal>();
	public int max = 0;

	public abstract String getBaseName();

	public boolean resize(int max) {
		return false;
	}
	
	public boolean requireSysclk() {
		return false;
	}
	public boolean requireMemclk() {
		return false;
	}

	
	public void findDeps(TreeMap<String, Entity> map) {
		String name = getBaseName();
		if (name != null)
			map.put(name, this);
	}

	public String vhdlIoDecl() {
		String vhdl = "";
		for (int n = 0; n < ios.size(); n++) {
			Signal io = ios.get(n);
			// System.out.println("$$ " + io);
			if (io.bit == Signal.NONE) {
				// std_logic
				vhdl += "\t" + io.vhdlName() + " : " + io.type.vhdlPortType() + " std_logic;\n";
			} else {
				// std_logic_vector
				int start = io.bit;
				int current = start;
				String name = io.vhdlName();
				n++;
				while (n < ios.size()) {
					io = ios.get(n);
					// System.out.println("$$$$ " + io);
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
					io = ios.get(n);
				}
				vhdl += "\t" + io.vhdlName() + " : " + io.type.vhdlPortType() + " std_logic_vector(" + start + " to " + current + ");\n";
			}
		}
		return vhdl.substring(0, vhdl.length() - 2) + "\n";
	}

	public String verilogIoDecl() {
		String vlog = "";
		for (int n = 0; n < ios.size(); n++) {
			Signal io = ios.get(n);
			if (io.bit == Signal.NONE) {
				vlog += verilogExpand("\t" + io.type.verilogPortType() + " " + io.verilogName() + ",\n");
			} else {
				int start = io.bit;
				int current = start;
				String name = io.verilogName();
				n++;
				while (n < ios.size()) {
					io = ios.get(n);
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
					io = ios.get(n);
				}
				vlog += verilogExpand("\t" + io.type.verilogPortType() + " [" + start + ":" + current + "] " + io.verilogName() + ",\n");
			}
		}
		if (requireSysclk()) {
			if (!requireMemclk()) {
				vlog += "\t" + SignalType.IN.verilogPortType() + " sys_clk // Generated\n";
			} else {
				vlog += "\t" + SignalType.IN.verilogPortType() + " sys_clk, // Generated\n";
				vlog += "\t" + SignalType.IN.verilogPortType() + " mem_clk // Generated\n";
			}
			return vlog;
		}
		if (requireMemclk()) {
			vlog += "\t" + SignalType.IN.verilogPortType() + " mem_clk // Generated\n";
			return vlog;
		}		
		return vlog.substring(0, vlog.length() - 2) + "\n";
	}

	public String vhdlInstance(Instance inst) {

		String vhdl = inst.name + "_inst";
		vhdl = vhdl.replaceAll("\\\\", "_n");
		if (vhdl.indexOf('-') >= 0) {
			vhdl = vhdl.replaceAll("\\[", "_from_");
			vhdl = vhdl.replaceAll("\\-", "_to_");
			vhdl = vhdl.replaceAll("\\]", "");
		} else {
			vhdl = vhdl.replaceAll("\\[", "_index_");
			vhdl = vhdl.replaceAll("\\]", "");
		}
		if (inst.index >= 0)
			vhdl += "_" + inst.index;

		String baseName = getBaseName();
		if (baseName == null) {
			vhdl = "// " + vhdl + " *** FATAL : Missing generated VHDL code\n";
			return vhdl;
		}

		vhdl += " : entity work." + getBaseName() + " port map (\n";

		for (int n = 0; n < inst.entity.ios.size(); n++) {
			Signal port = inst.entity.ios.get(n);
			Signal wire = inst.wires.get(n);

			vhdl += "\t" + port.vhdlName();
			if (port.bit != Signal.NONE) {
				vhdl += "(" + port.bit + ")";
			}
			vhdl += " => " + wire.vhdlWireName();
			vhdl += ",\n";
		}
		vhdl = vhdl.substring(0, vhdl.length() - 2) + "\n";
		vhdl += ");\n";

		return vhdl;
	}

	public String vhdlMap(Instance inst, String vhdlTemplate) {
		for (int i = 0; i < inst.wires.size(); i++) {
			vhdlTemplate = vhdlTemplate.replaceAll("\\$" + ios.get(i).vhdlName() + "\\$", inst.wires.get(i).vhdlWireName());
		}
		return vhdlTemplate;
	}

	public String verilogInstance(Instance inst) {

		String vlog = inst.name + "_inst";
		vlog = vlog.replaceAll("\\\\", "_n");
		if (vlog.indexOf('-') >= 0) {
			vlog = vlog.replaceAll("\\[", "_from_");
			vlog = vlog.replaceAll("\\-", "_to_");
			vlog = vlog.replaceAll("\\]", "");
		} else {
			vlog = vlog.replaceAll("\\[", "_index_");
			vlog = vlog.replaceAll("\\]", "");
		}
		if (inst.index >= 0)
			vlog += "_" + inst.index;

		String baseName = getBaseName();
		if (baseName == null) {
			vlog = "// " + vlog + " *** FATAL : Missing generated Verilog code\n";
			return vlog;
		}

		vlog = baseName + " " + vlog + "\n(\n";

		for (int n = 0; n < inst.entity.ios.size(); n++) {
			Signal port = inst.entity.ios.get(n);
			Signal wire = inst.wires.get(n);

			boolean bus2in = false;
			if (port.type == SignalType.IN && wire.type == SignalType.BUS) {
				bus2in = true;
			}
			
			String vt = "";

			vt += "\t." + port.verilogName() + " /* " + port.type + " */ (";
			if (port.bit != Signal.NONE) {
				String name = port.verilogName();
				vt += "{";
				while (n < inst.entity.ios.size()) {
					if (name.equals(inst.entity.ios.get(n).verilogName())) {
						vt += inst.wires.get(n).verilogWireName() + ",";
					} else {
						break;
					}
					n++;
				}
				/*if (n == inst.entity.ios.size() - 1) {
					// Last
				} else {
					// Different signal, rewind
					n--;
				}*/
				n--;
				vt = vt.substring(0, vt.length() - 1) + "}";
			} else {
				vt += wire.verilogWireName();
			}
			/*if (n == inst.entity.ios.size() - 1) {
				vt += ")  // " + port.type + "\n";
			} else {
				vt += "), // " + port.type + "\n";
			}*/
			vt += "),\n";
			
			if (bus2in) {
				vt = vt.replaceAll("##SIG##", "in");
			}
			vlog += verilogExpand(vt);
			if (n == inst.entity.ios.size() - 1 && !requireSysclk() && !requireMemclk()) {
				vlog = vlog.substring(0, vlog.length() - 2) + "\n";
			}
		}
		if (requireSysclk()) {
			if (!requireMemclk()) {
				vlog += "\t.sys_clk(sys_clk) // Generated\n";
			} else {
				vlog += "\t.sys_clk(sys_clk), // Generated\n";
			}
		}
		if (requireMemclk()) {
			vlog += "\t.mem_clk(mem_clk) // Generated\n";
		}
		vlog += ");\n";
		return vlog;
	}

	public String verilogMap(Instance inst, String vlogTemplate) {
		for (int i = 0; i < inst.wires.size(); i++) {
			vlogTemplate = vlogTemplate.replaceAll("\\$" + ios.get(i).verilogName() + "\\$", inst.wires.get(i).verilogWireName());
			if (ios.get(i).type == SignalType.IN && inst.wires.get(i).type == SignalType.BUS) {
				// Wire BUS IN to IN
				vlogTemplate = vlogTemplate.replaceAll("##SIG##", "in");
			}
		}
		return vlogTemplate;
	}

	public String verilogExpand(String template) {
		if (template.contains("##SIG##") || template.contains("##DIR##")) {
			String t1 = template;
			String t2 = template;
			String t3 = template;
			t1 = t1.replaceAll("##SIG##", "out");
			t1 = t1.replaceAll("##DIR##", "output");
			t2 = t2.replaceAll("##SIG##", "oe");
			t2 = t2.replaceAll("##DIR##", "output");
			t3 = t3.replaceAll("##SIG##", "in");
			t3 = t3.replaceAll("##DIR##", "input");
			return t1 + t2 + t3;
		}
		return template;
	}

}
