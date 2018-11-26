package com.torlus.jnl;

import java.util.Vector;

public class PassOne {

	private Workspace ws;

	public PassOne(Workspace ws) {
		this.ws = ws;
	}

	public void eval(Tokenizer tk) throws Exception {
		while (tk.nextToken().getType() != TokenType.EOF) {

			// //////////////////////////////////////////////////
			// Step 1 - Create interface
			// //////////////////////////////////////////////////
			if (tk.matchTokens(TokenType.DEF, TokenType.IDENTIFIER, TokenType.LPAREN)) {
				tk.consumeToken();
				String entityName = tk.nextToken().getValue();
				tk.consumeToken(2);
				System.out.println("    Processing Entity [" + entityName + "]");

				if (ws.find(entityName) != null)
					throw new Exception("Duplicate Entity [" + entityName + "]");
				if (ws.find(ws.prefix + entityName) != null)
					throw new Exception("Duplicate Entity [" + ws.prefix + entityName + "]");

				// Try to load a hardcoded entity (overriding source file's definition)
				Entity he = ws.load(entityName);
				if (he != null) {
					System.out.println("    Entity [" + entityName + "] is hardcoded, skip");
					ws.entities.add(he);
					tk.consumeToken();
					continue;
				}

				CompositeEntity e = new CompositeEntity(ws.prefix + entityName);
				// e.name = entityName;

				int width = -1;
				int min = -1;
				int max = -1;
				String name = null;
				Vector<Signal> sigs = new Vector<Signal>();
				while (!tk.matchTokens(TokenType.RPAREN)) {
					if (tk.matchTokens(TokenType.IDENTIFIER, TokenType.SLASH)) {
						// INTnn/ size declaration
						String typeName = tk.nextToken().getValue();
						if (typeName.startsWith("int")) {
							width = Integer.parseInt(typeName.substring(3));
						} else if (typeName.equals("bit")) {

						} else {
							throw new Exception("Unknown type [" + typeName + "]");
						}
						tk.consumeToken(2);
					}
					if (tk.matchTokens(TokenType.IDENTIFIER)) {
						name = tk.nextToken().getValue();
						tk.consumeToken();
					} else {
						throw new Exception("Expected : identifier");
					}
					if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.DOTDOT, TokenType.NUMBER, TokenType.RSQRBR)) {
						// Range declaration
						min = Integer.parseInt(tk.nextToken(1).getValue());
						max = Integer.parseInt(tk.nextToken(3).getValue());
						if (min > max)
							throw new Exception("TODO");
						tk.consumeToken(5);
					} else if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.RSQRBR)) {
						// Single index
						min = Integer.parseInt(tk.nextToken(1).getValue());
						max = min;
						tk.consumeToken(3);
					}
					// Create a temporary list of (yet) unknown type signals
					sigs.addAll(Signal.createSignals(name, width, min, max));
					// Reset dimension info
					min = max = width = -1;
					// Strip commas
					if (tk.matchTokens(TokenType.COMMA)) {
						tk.consumeToken();
					}

					if (tk.matchTokens(TokenType.IDENTIFIER)) {
						// Loop
					} else if (tk.matchTokens(TokenType.COLON, TokenType.IDENTIFIER)) {
						// "Backpatch" signals with resolved type
						SignalType st = SignalType.valueOf(SignalType.rename(tk.nextToken(1).getValue().toUpperCase()));
						for (int k = 0; k < sigs.size(); k++) {
							Signal s = sigs.get(k);
							s.type = st;
							e.ios.add(s);
						}
						sigs.clear();
						tk.consumeToken(2);
						if (tk.matchTokens(TokenType.SEMICOLON)) {
							// Loop
							tk.consumeToken();
						}
					}

				}
				tk.consumeToken();
				if (!tk.matchTokens(TokenType.SEMICOLON))
					throw new Exception("Expected ; (DEF)");
				tk.consumeToken();

				// //////////////////////////////////////////////////
				// Step 2 - Create declared locals
				// //////////////////////////////////////////////////
				width = -1;
				min = -1;
				max = -1;
				name = null;
				sigs.clear();
				while (!tk.matchTokens(TokenType.BEGIN)) {
					if (tk.matchTokens(TokenType.IDENTIFIER, TokenType.SLASH)) {
						// INTnn/ size declaration
						String typeName = tk.nextToken().getValue();
						if (typeName.startsWith("int")) {
							width = Integer.parseInt(typeName.substring(3));
						} else if (typeName.equals("bit")) {

						} else {
							throw new Exception("Unknown type [" + typeName + "]");
						}
						tk.consumeToken(2);
					}
					if (tk.matchTokens(TokenType.IDENTIFIER)) {
						name = tk.nextToken().getValue();
						tk.consumeToken();
					} else {
						throw new Exception("Expected : identifier");
					}
					if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.DOTDOT, TokenType.NUMBER, TokenType.RSQRBR)) {
						// Range declaration
						min = Integer.parseInt(tk.nextToken(1).getValue());
						max = Integer.parseInt(tk.nextToken(3).getValue());
						if (min > max)
							throw new Exception("TODO");
						tk.consumeToken(5);
					} else if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.RSQRBR)) {
						// Single index
						min = Integer.parseInt(tk.nextToken(1).getValue());
						max = min;
						tk.consumeToken(3);
					}
					// Create a temporary list of (yet) unknown type signals
					sigs.addAll(Signal.createSignals(name, width, min, max));
					// Reset dimension info - NOT ALL
					min = max = -1;
					// Strip commas
					if (tk.matchTokens(TokenType.COMMA)) {
						tk.consumeToken();
					}

					if (tk.matchTokens(TokenType.IDENTIFIER)) {
						// Loop
					} else if (tk.matchTokens(TokenType.COLON, TokenType.IDENTIFIER)) {
						width = -1;
						// "Backpatch" signals with resolved type
						SignalType st = SignalType.valueOf(SignalType.rename(tk.nextToken(1).getValue().toUpperCase()));
						if (st.equals(SignalType.OUT))
							st = SignalType.LOCAL; // To (hopefully) make things less confusing
						boolean buffered = false;
						/*if (st.equals(SignalType.BUS)) {
							buffered = true; // Indicates a local bus
						}*/
						for (int k = 0; k < sigs.size(); k++) {
							Signal s = sigs.get(k);
							s.type = st;
							s.buffered = buffered;
							e.locals.add(s);
						}
						sigs.clear();
						tk.consumeToken(2);
						if (tk.matchTokens(TokenType.SEMICOLON)) {
							// Loop
							tk.consumeToken();
						}
					} else if (tk.matchTokens(TokenType.SEMICOLON)) {
						width = -1;
						// Some local declarations don't have a type specifier
						for (int k = 0; k < sigs.size(); k++) {
							Signal s = sigs.get(k);
							s.type = SignalType.LOCAL;
							e.locals.add(s);
						}
						sigs.clear();
						// Loop
						tk.consumeToken();
					}
				}
				tk.consumeToken();
				// Some local declarations don't end with a semicolon...
				for (int k = 0; k < sigs.size(); k++) {
					Signal s = sigs.get(k);
					s.type = SignalType.LOCAL;
					e.locals.add(s);
				}
				sigs.clear();

				// //////////////////////////////////////////////////
				// //////////////////////////////////////////////////
				// //////////////////////////////////////////////////

				// Add entity to workspace
				ws.entities.add(e);

				System.out.println("    Declared entity interface : ");
				for (int k = 0; k < e.ios.size(); k++) {
					System.out.println("      " + e.ios.get(k));
				}
				if (e.locals.size() > 0) {
					System.out.println("      Declared local signals : ");
					for (Signal local : e.locals) {
						System.out.println("        " + local);
					}
				}
			} else {
				tk.consumeToken();
			}
		} // EOF
	}

}
