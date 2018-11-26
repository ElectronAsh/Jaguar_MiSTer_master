package com.torlus.jnl;

import java.util.Vector;

public class Signal implements Cloneable {

	public static int MAX = -2;
	public static int NONE = -1;

	public SignalType type = SignalType.LOCAL;
	public String name = null;
	// 2 dimensions should be enough
	public int bit = NONE;
	public int index = NONE;

	public boolean buffered = false;
	public boolean ts_sink = false;
	
	public Signal() {
	}

	public Signal(String name) {
		this.name = name;
	}

	public Signal(String name, SignalType type) {
		this.name = name;
		this.type = type;
	}

	public boolean equals(Signal s) {
		return (type == s.type && name.equals(s.name) && bit == s.bit && index == s.index);
	}

	public String toString() {
		String res = type + " " + name;
		if (bit >= 0) {
			res += "<" + bit + ">";
		}
		if (index >= 0) {
			res += "[" + index + "]";
		}
		return res;
	}

	public static Vector<Signal> createSignals(String name, int width, int min, int max) {
		Vector<Signal> sigs = new Vector<Signal>();
		if (width < 0) {
			if (min < 0) {
				// Single signal
				Signal s = new Signal(name);
				sigs.add(s);
			} else {
				// Array of single signals
				while (min <= max) {
					Signal s = new Signal(name);
					s.index = min;
					sigs.add(s);
					min++;
				}
			}
		} else {
			if (min < 0) {
				// Sized single signal => bit vector
				for (int w = 0; w < width; w++) {
					Signal s = new Signal(name);
					s.bit = w;
					sigs.add(s);
				}
			} else {
				// Sized signals array
				while (min <= max) {
					for (int w = 0; w < width; w++) {
						Signal s = new Signal(name);
						s.bit = w;
						s.index = min;
						sigs.add(s);
					}
					min++;
				}
			}
		}
		return sigs;
	}

	public String vhdlName() {
		String res = name;
		res = res.replaceAll("\\\\", "_n");
		if (index != Signal.NONE) {
			res = res + "_" + index;
		}
		return res;
	}

	static String verilogKeywords[] = { "wait", "release", "and", "or", "xor", "this", "bit", "local", "int", "const" };
	
	public String verilogName() {
		String res = name;
		res = res.replaceAll("\\\\", "_n");
		if (index != Signal.NONE) {
			res = res + "_" + index;
		}
		if (type == SignalType.BUS) {
			res += "_##SIG##";
		}
		// Keywords
		for(String kw : verilogKeywords) {
			if (res.equals(kw))
				return "_" + res;
		}
		return res;
	}

	public String vhdlWireName() {
		String res = vhdlName();
		if (buffered) {
			// Use output buffer
			if (bit != Signal.NONE) {
				res += "_b" + bit;
			}
			res += "_obuf";
		} else {
			if (bit != Signal.NONE) {
				res += "(" + bit + ")";
			}
		}
		return res;
	}

	public String verilogWireName() {
		String res = verilogName();
		if (type != SignalType.BUS & buffered) {
			// Use output buffer
			if (bit != Signal.NONE) {
				res += "_b" + bit;
			}
			res += "_obuf";
		} else {
			if (bit != Signal.NONE) {
				res += "[" + bit + "]";
			}
		}
		return res;
	}

}
