package com.torlus.jnl;

import java.util.Vector;

import com.torlus.jnl.entities.LB;
import com.torlus.jnl.entities.PE;

public class PassThreestate {
	private Workspace ws;

	public PassThreestate(Workspace ws) {
		this.ws = ws;
	}

	public int peNo = 0;

	public void rewire() throws Exception {
		// - Locate BUS OUT/OEs with multiple sources
		// - Insert a "priority encoder" of the required size
		// - On local busses, the "priority encoder" will also wire OUT to IN
		for (Entity e : ws.entities) {
			if (e instanceof CompositeEntity) {
				System.out.println("Pass #3 - Rewiring " + e.getBaseName());
				rewireEntity((CompositeEntity) e);
			}
		}
	}

	private class Location {
		public Signal signal;
		public Instance instance;
		public int index;
	}

	public void rewireEntity(CompositeEntity e) throws Exception {

		// Add PEs to tristate outputs
		for (int ioNo = 0; ioNo < e.ios.size(); ioNo++) {
			Signal io = e.ios.get(ioNo);
			if (io.type != SignalType.BUS)
				continue;

			Vector<Location> locs = new Vector<Location>();

			for (int instNo = 0; instNo < e.instances.size(); instNo++) {
				Instance inst = e.instances.get(instNo);
				for (int instIoNo = 0; instIoNo < inst.wires.size(); instIoNo++) {
					Signal instIoWire = inst.wires.get(instIoNo);
					if (instIoWire.equals(io)) {
						Signal instIo = inst.entity.ios.get(instIoNo);
						if (instIo.type != SignalType.BUS)
							continue;
						Location loc = new Location();
						loc.signal = instIo;
						loc.instance = inst;
						loc.index = instIoNo;
						locs.add(loc);
					}
				}
			}

			if (locs.size() <= 1) {
				// No priority encoder required
				continue;
			}

			System.out.println("TS-IO  " + e.getBaseName() + " " + io + " ");
			for (int k = 0; k < locs.size(); k++) {
				Location loc = locs.get(k);
				System.out.println("  (" + loc.instance.entity.getBaseName() + ":" + loc.instance.entity.getClass().getSimpleName() + " "
						+ loc.signal + ")");
			}
			System.out.println("  PE " + peNo);
			System.out.println();

			PE pe = new PE(locs.size());
			Instance ipe = new Instance();
			ipe.entity = pe;
			ipe.name = "ts_pe_" + peNo;
			ipe.info = "--- Compiler-generated PE for " + io;
			ipe.wires.add(io);
			for (int k = 0; k < locs.size(); k++) {
				Location loc = locs.get(k);

				Signal local = new Signal("ts_pe_" + peNo + "_a" + k, SignalType.BUS);
				e.locals.add(local);
				ipe.wires.add(local);

				loc.instance.wires.set(loc.index, local);
			}
			e.instances.add(ipe);
			peNo++;
		}

		// Add PEs to local tristates
		Vector<Signal> newLocals = new Vector<Signal>();

		for (int ioNo = 0; ioNo < e.locals.size(); ioNo++) {
			Signal io = e.locals.get(ioNo);
			if (io.type != SignalType.BUS)
				continue;

			Vector<Location> locs = new Vector<Location>();

			for (int instNo = 0; instNo < e.instances.size(); instNo++) {
				Instance inst = e.instances.get(instNo);
				for (int instIoNo = 0; instIoNo < inst.wires.size(); instIoNo++) {
					Signal instIoWire = inst.wires.get(instIoNo);
					if (instIoWire.equals(io)) {
						Signal instIo = inst.entity.ios.get(instIoNo);
						if (instIo.type != SignalType.BUS)
							continue;
						if (instIo.ts_sink)
							continue;
						Location loc = new Location();
						loc.signal = instIo;
						loc.instance = inst;
						loc.index = instIoNo;
						locs.add(loc);
					}
				}
			}

			if (locs.size() <= 1) {
				// No priority encoder required
				continue;
			}

			System.out.println("TS-LOC " + e.getBaseName() + " " + io + " ");
			for (int k = 0; k < locs.size(); k++) {
				Location loc = locs.get(k);
				System.out.println("  (" + loc.instance.entity.getBaseName() + ":" + loc.instance.entity.getClass().getSimpleName() + " "
						+ loc.signal + ")");
			}
			System.out.println("  PE " + peNo);
			System.out.println();

			PE pe = new PE(locs.size());
			Instance ipe = new Instance();
			ipe.entity = pe;
			ipe.name = "ts_local_pe_" + peNo;
			ipe.info = "--- Compiler-generated local PE for " + io;
			ipe.wires.add(io);
			for (int k = 0; k < locs.size(); k++) {
				Location loc = locs.get(k);

				Signal local = new Signal("ts_local_pe_" + peNo + "_a" + k, SignalType.BUS);
				// e.locals.add(local);
				newLocals.add(local);
				ipe.wires.add(local);

				loc.instance.wires.set(loc.index, local);
			}
			e.instances.add(ipe);
			peNo++;
		}
		e.locals.addAll(newLocals);

		// Check for unwired local tristates
		for (int ioNo = 0; ioNo < e.locals.size(); ioNo++) {
			Signal io = e.locals.get(ioNo);
			if (io.type != SignalType.BUS)
				continue;
			/*if (!io.buffered)
				throw new Exception("Local bus expected");*/

			Vector<Location> locs = new Vector<Location>();

			for (int instNo = 0; instNo < e.instances.size(); instNo++) {
				Instance inst = e.instances.get(instNo);
				for (int instIoNo = 0; instIoNo < inst.wires.size(); instIoNo++) {
					Signal instIoWire = inst.wires.get(instIoNo);
					if (instIoWire.equals(io)) {
						Signal instIo = inst.entity.ios.get(instIoNo);
						if (instIo.type != SignalType.BUS)
							continue;
						Location loc = new Location();
						loc.signal = instIo;
						loc.instance = inst;
						loc.index = instIoNo;
						locs.add(loc);
					}
				}
			}
			if (locs.size() > 1) {
				continue;
			}
			System.out.println("TS-LONE " + e.getBaseName() + " " + io + " ");
			for (int k = 0; k < locs.size(); k++) {
				Location loc = locs.get(k);
				System.out.println("  (" + loc.instance.entity.getBaseName() + ":" + loc.instance.entity.getClass().getSimpleName() + " "
						+ loc.signal + ")");
			}
			System.out.println("  LB " + peNo);
			System.out.println();

			LB lb = new LB();
			Instance ilb = new Instance();
			ilb.entity = lb;
			ilb.name = "ts_local_lb_" + peNo;
			ilb.info = "--- Compiler-generated local LB for " + io;
			ilb.wires.add(io);
			e.instances.add(ilb);
			peNo++;
		}

		Verifier.checkConnectivity(e, true);
	}

}
