package com.torlus.jnl;

import java.util.Vector;

public class Verifier {

	public static void checkConnectivity(CompositeEntity e, boolean strict) throws Exception {
		System.out.println("Checking connectivity of entity " + e.getBaseName());

		// Check if entity's I/Os are connected to at least one compatible instance I/O
		// For outputs, there should be exactly one signal
		for (int ioNo = 0; ioNo < e.ios.size(); ioNo++) {
			Signal io = e.ios.get(ioNo);
			Vector<Signal> connections = new Vector<Signal>();
			Vector<Instance> instances = new Vector<Instance>();

			for (int instNo = 0; instNo < e.instances.size(); instNo++) {
				Instance inst = e.instances.get(instNo);
				for (int instIoNo = 0; instIoNo < inst.wires.size(); instIoNo++) {
					Signal instIoWire = inst.wires.get(instIoNo);
					if (instIoWire.equals(io)) {
						Signal instIo = inst.entity.ios.get(instIoNo);
						connections.add(instIo);
						instances.add(inst);
					}
				}
			}

			System.out.print("Cnx-IO  " + e.getBaseName() + " " + io + " ");
			for (int k = 0; k < connections.size(); k++) {
				Signal w = connections.get(k);
				Instance i = instances.get(k);
				System.out.print("(" + i.entity.getBaseName() + ":" + i.entity.getClass().getSimpleName() + " " + w + ") ");
			}
			System.out.println();

			if (io.type == SignalType.IN) {
				// Inputs should feed inputs only
				for (Signal s : connections) {
					if (s.type != SignalType.IN) {
						throw new Exception("Incompatible I/O type : " + io + " vs " + s);
					}
				}
			} else if (io.type == SignalType.OUT) {
				// Outputs should have at most one driver (OUT or LOCAL)
				// They may feed some inputs (buffered outputs)
				Signal driver = null;
				for (Signal s : connections) {
					if (s.type == SignalType.OUT || s.type == SignalType.LOCAL) {
						if (driver == null) {
							driver = s;
						} else {
							throw new Exception("Multiple drivers for " + io + " : " + driver + "," + s);
						}
					} else if (s.type == SignalType.IN) {
						if (!io.buffered)
							throw new Exception("Missing output buffer");
					} else {
						throw new Exception("abc");
					}

				}
			} else if (io.type == SignalType.LOCAL) {
				throw new Exception("Unexpected");
			} else if (io.type == SignalType.BUS) {
				// Tristates should only be wired to (one or many) tristates and inputs
				int busCount = 0;
				for (Signal s : connections) {
					if (s.type == SignalType.BUS) {
						busCount++;
					} else if (s.type == SignalType.IN) {

					} else {
						throw new Exception("Incompatible I/O type : " + io + " vs " + s);
					}
				}
				if (strict) {
					if (busCount > 1) {
						throw new Exception("(strict) Multiple drivers for tristate I/O " + io);
					}
				}
				if (busCount == 0)
					throw new Exception("Missing driver");

			} else {
				throw new Exception("Unexpected");
			}
		} // ioNo

		// Locals should be fully wired : one single source, and at least one destination
		for (Signal local : e.locals) {
			Vector<Signal> connections = new Vector<Signal>();
			Vector<Instance> instances = new Vector<Instance>();

			for (int instNo = 0; instNo < e.instances.size(); instNo++) {
				Instance inst = e.instances.get(instNo);
				for (int instIoNo = 0; instIoNo < inst.wires.size(); instIoNo++) {
					Signal instIoWire = inst.wires.get(instIoNo);
					if (instIoWire.equals(local)) {
						Signal instIo = inst.entity.ios.get(instIoNo);
						connections.add(instIo);
						instances.add(inst);
					}
				}
			}

			System.out.print("Cnx-LOC " + e.getBaseName() + " " + local + " ");
			for (int k = 0; k < connections.size(); k++) {
				Signal w = connections.get(k);
				Instance i = instances.get(k);
				System.out.print("(" + i.entity.getBaseName() + ":" + i.entity.getClass().getSimpleName() + " " + w + ") ");
			}
			System.out.println();

			if (local.type == SignalType.LOCAL) {
				// Locals should have one and only one output connected, and zero, one or many inputs connected
				int inCount = 0;
				int outCount = 0;
				for (Signal s : connections) {
					if (s.type == SignalType.IN) {
						inCount++;
					} else if (s.type == SignalType.OUT) {
						outCount++;
					} else {
						throw new Exception("Incompatible I/O type : " + local + " vs " + s);
					}
				}
				if (inCount == 0 && outCount == 0) {
					throw new Exception("Unused local " + local);
				} else if (outCount == 0) {
					throw new Exception("No driver for local " + local);
				} else if (outCount > 1) {
					throw new Exception("Multiple drivers for local " + local);
				} else if (inCount == 0) {
					System.out.println("Warning : " + local + " drives nothing");
				}
			} else if (local.type == SignalType.BUS) {
				// Local tristates
				// Tristates should only be wired to (one or many) tristates and inputs
				int busCount = 0;
				int sinkCount = 0;
				for (Signal s : connections) {
					if (s.type == SignalType.BUS) {
						if (s.ts_sink) {
							sinkCount++;
						} else {
							busCount++;
						}
					} else if (s.type == SignalType.IN) {

					} else {
						throw new Exception("Incompatible I/O type : " + local + " vs " + s);
					}
				}
				if (strict) {
					if (busCount > 1) {
						throw new Exception("(strict) Multiple drivers for local tristate " + local);
					}
					if (sinkCount > 1) {
						throw new Exception("(strict) Multiple sinks for local tristate " + local);
					}
				}
				if (busCount == 0)
					throw new Exception("Missing driver");
			} else {
				throw new Exception("Unexpected");
			}

		}

	}

}
