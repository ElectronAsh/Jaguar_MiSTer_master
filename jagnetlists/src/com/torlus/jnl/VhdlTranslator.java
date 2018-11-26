package com.torlus.jnl;

import java.util.Collection;

public class VhdlTranslator {
	private Workspace ws;
	private String dir;
	
	public VhdlTranslator(Workspace ws, String dir) {
		this.ws = ws;
		this.dir = dir;
	}

	public void generate() {
		generate(ws.entities);
	}
	
	public void generate(Collection<Entity> entities) {
		for(Entity e : entities) {
			if (e instanceof CompositeEntity) {
				System.out.println("#################### Processing CompositeEntity " + e.getBaseName());
				
				String vlog = "";
				vlog += "entity " + e.getBaseName() + " is\n" + "port(\n";
				vlog += e.vhdlIoDecl();
				vlog += ");\n" + "end entity;\n\n";

				vlog += "architecture rtl of " + e.getBaseName() + " is\n\n";
				CompositeEntity ce = (CompositeEntity)e;
				
				vlog += ce.vhdlLocalDecl();
				vlog += ce.vhdlBufferDecl();
				
				vlog += "begin\n";
				vlog += ce.vhdlBufferWires();
				
				for(int i = 0; i < ce.instances.size(); i++) {
					vlog += ce.instances.get(i).vhdlInstance();
				}
				
				vlog += "end architecture;\n";
				
				System.out.println(vlog);
				
			}
		}
	}
}
