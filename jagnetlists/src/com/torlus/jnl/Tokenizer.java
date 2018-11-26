package com.torlus.jnl;

import java.io.*;
import java.util.*;
import java.util.regex.*;

public class Tokenizer {
	private Vector<Token> tokens = new Vector<Token>();
	private int position = 0;
	private int mark = 0;
	
	public Token nextToken(int offset) {
		int p = position + offset;
		if ( (p >= 0) && (p < tokens.size()) ) {
			return tokens.get(p);
		}
		return new Token(TokenType.EOF, -1);
	}
	public Token nextToken() {
		return nextToken(0);
	}
	public void consumeToken(int count) {
		position += count;
	}
	public void consumeToken() {
		consumeToken(1);
	}
	public void reset() {
		position = 0;
	}
	
	public void mark() {
		mark = position;
	}
	public void rewind() {
		position = mark;
	}
	
	/*public void replaceToken( TokenType type ) {
		Token oldToken = nextToken();
		tokens.set(position, new Token(type, oldToken.getLine()));
	}
	public void insertToken( TokenType type ) {
		Token nextToken = nextToken();
		tokens.insertElementAt(new Token(type, nextToken.getLine()), position);
	}*/
	
	public boolean matchTokens(TokenType... args) {		
		return matchTokens(0, args);
	}

	public boolean matchTokens(int offset, TokenType... args) {		
		for(int k = 0; k < args.length; k++) {
			if (!(args[k] == nextToken(offset + k).getType()))
				return false;
		}
		return true;
	}

	private boolean inComment = false;
	private boolean inPreproc = false;
	
	public void tokenize(InputStream in) throws Exception {
		BufferedReader br = null;
		String line;
		int lineNo = 0;
		
		inComment = false;
		inPreproc = false;
		
		try {
			br = new BufferedReader(new InputStreamReader(in));
			while( (line = br.readLine()) != null ) {
				lineNo++;
				tokenizeLine(lineNo, line);
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (br != null)
				br.close();
		}
	}

	
	
	private void tokenizeLine(int lineNo, String line) throws Exception {
		// Language seems case-insensitive
		line = line.toLowerCase();
		
		Pattern pIdentifier = Pattern.compile("^[a-z][a-z0-9\\\\_]*");
		Pattern pNumber = Pattern.compile("^[0-9]+");
		
		while(line.length() > 0) {
			// Strip blank characters
			if ( (line.charAt(0) == ' ') || (line.charAt(0) == '\t') ) {
				line = line.substring(1);
				continue;
			}
			// Preprocessor directives, done the quick and dirty way
			if (line.startsWith("#if")) {
				if (line.indexOf("verilog") < 0) {
					inPreproc = true;
				}
				return;
			}
			if (line.startsWith("#endif")) {
				inPreproc = false;
				return;
			}
			if (inPreproc)
				return;
			
			// Comments
			if (line.startsWith("/*") || line.startsWith("(*") || inComment) {
				int p = line.indexOf("*/");
				if (p < 0)
					p = line.indexOf("*)");
				if (p < 0) {
					inComment = true;
					return;
				} else {
					line = line.substring(p + 2);
					inComment = false;
					continue;
				}
			}
			
			
			// Identifiers
			Matcher mIdentifier = pIdentifier.matcher(line);
			if (mIdentifier.lookingAt()) {
				int end = mIdentifier.end();
				String identifier = line.substring(0, end);
				line = line.substring(end);
				
				// Search for keywords
				boolean found = false;
				for(TokenType tt : TokenType.values()) {
					String keyword = tt.getValue();
					if (identifier.equals(keyword)) {
						Token token = new Token(tt, lineNo);
						tokens.add(token);
						found = true;
						break;
					}
				}
				if (!found) {
					Token token = new Token(TokenType.IDENTIFIER, lineNo, identifier);
					tokens.add(token);
				}
				
			} else {
				Matcher mNumber = pNumber.matcher(line);
				if (mNumber.lookingAt()) {
					int end = mNumber.end();
					Token number = new Token(TokenType.NUMBER, lineNo, line.substring(0, end));
					tokens.add(number);
					line = line.substring(end);
					continue;
				} else {
					// Search for remaining tokens
					boolean found = false;
					for(TokenType tt : TokenType.values()) {
						String keyword = tt.getValue();
						if (keyword != null) {
							int end = keyword.length();
							if (line.length() >= end) {
								if (line.substring(0, end).equals(keyword)) {
									line = line.substring(end);
									Token token = new Token(tt, lineNo);
									tokens.add(token);
									found = true;
									break;
								}
							}
						}
					}
					if (!found)
						throw new Exception("Invalid expression at line " + lineNo);
				}
			}
			
		}
	}
	
	public void dumpTokens() {
		for(Token t : tokens) {
			System.out.println(t);
		}
	}
	
	public void dumpRemainingTokens() {
		for(int k = position; k < tokens.size(); k++) {
			System.out.println(tokens.get(k));
		}
	}
	
	public static void main(String args[]) {
		Tokenizer tokenizer = new Tokenizer();
		FileInputStream in = null;
		try {
			// in = new FileInputStream("netlists\\tom\\ADDRGEN.NET");
			// in = new FileInputStream("netlists\\tom\\ARITH.NET");
			in = new FileInputStream("netlists\\tom\\DUPLO.NET");
			tokenizer.tokenize(in);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		tokenizer.dumpTokens();
	}
	
}
