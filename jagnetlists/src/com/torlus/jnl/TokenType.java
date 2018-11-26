package com.torlus.jnl;

// Order is important for proper token recongition
public enum TokenType {

	MINUS ("-"), PLUS("+"),
	DOTDOT (".."), DOT ("."),
	
	ASSIGN (":="), COLON (":"), COMMA (","), SEMICOLON(";"),
	
	LSQRBR ("["), RSQRBR ("]"),
	LCRLBR ("{"), RCRLBR ("}"),
	LPAREN ("("), RPAREN (")"),
	
	SLASH("/"),
	
	DEF("def"), BEGIN("begin"), END("end"),
	IMPORT("import"),
	
	IDENTIFIER (null),
	NUMBER (null),
	EOF(null);
	
	private String value;
	TokenType(String value) {
		this.value = value;
	}
	public String getValue() {
		return value;
	}
	
}
