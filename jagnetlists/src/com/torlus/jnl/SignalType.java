package com.torlus.jnl;

public enum SignalType {
	IN,
	OUT, /*IO,*/
	BUS, /*TRI,*//*BI,*/

	LOCAL;

	public static String rename(String name) {
		if ("IO".equals(name))
			return "OUT";
		if ("BI".equals(name) || "TRI".equals(name))
			return "BUS";
		return name;
	}

	public String vhdlPortType() {
		if (this.equals(IN)) {
			return "in";
		} else if (this.equals(OUT) /*|| this.equals(IO)*/) {
			return "out";
		} else {
			return "inout";
		}
	}

	public String verilogPortType() {
		if (this.equals(IN)) {
			return "input";
		} else if (this.equals(OUT) /*|| this.equals(IO)*/) {
			return "output";
		} else if (this.equals(BUS)) {
			return "##DIR##";
		}
		throw new RuntimeException("Incorrect port configuration");
	}

}
