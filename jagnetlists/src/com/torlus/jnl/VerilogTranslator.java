package com.torlus.jnl;

import java.io.FileOutputStream;
import java.util.Collection;

public class VerilogTranslator {
	private Workspace ws;
	private String dir;

	public VerilogTranslator(Workspace ws, String dir) {
		this.ws = ws;
		this.dir = dir;
	}

	public void generate() {
		generate(ws.entities);
	}

	public void generate(Collection<Entity> entities) {
		for (Entity e : entities) {
			if (e instanceof CompositeEntity) {
				System.out.println("#################### Processing CompositeEntity " + e.getBaseName());

				String vlog = "";
				vlog += "/* verilator lint_off LITENDIAN */\n";
				
				// vlog += "/* verilator tracing_off */\n";
				
				vlog += "`include \"defs.v\"\n\n";
				vlog += "module " + e.getBaseName() + "\n" + "(\n";
				vlog += e.verilogIoDecl();
				vlog += ");\n";

				CompositeEntity ce = (CompositeEntity) e;
				vlog += ce.verilogLocalDecl();
				vlog += ce.verilogBufferDecl();

				vlog += ce.verilogBufferWires();

				for (int i = 0; i < ce.instances.size(); i++) {
					vlog += ce.instances.get(i).verilogInstance();
				}

				vlog += "endmodule\n";
				vlog += "/* verilator lint_on LITENDIAN */\n";
				// System.out.println(vlog);

				try {
					FileOutputStream fos = new FileOutputStream(dir + e.getBaseName() + ".v");
					fos.write(vlog.getBytes());
					fos.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}

			}
		}
	}

}
