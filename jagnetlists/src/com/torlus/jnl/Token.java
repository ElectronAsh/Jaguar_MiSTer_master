package com.torlus.jnl;

import java.text.DecimalFormat;

public class Token {
	private static final DecimalFormat n5 = new DecimalFormat("00000");
	
	private TokenType type;
	public TokenType getType() {
		return type;
	}
	
	private String value = null;
	public String getValue() {
		return value;
	}

	private int line;
	public int getLine() {
		return line;
	}
	
	public Token(TokenType type, int line) {
		this(type, line, null);
	}
	public Token(TokenType type, int line, String value) {
		this.type = type;
		this.line = line;
		this.value = value;
	}

	public String toString() {
		String res = n5.format(line);
		res += " " + type.name();
		if (value != null) {
			res += " [" + value + "]";		
		}
		return res;
	}
}
