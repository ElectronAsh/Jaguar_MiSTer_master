package com.torlus.misc;

import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Vector;

import javax.imageio.ImageIO;

public class T2KBlit {

	private class Info {
		long n;
		long addr;
		long value;
	}
	
	public void go() throws Exception {
		
		Vector<Info> nl = new Vector<Info>();
		Vector<Info> vj = new Vector<Info>();
		
		BufferedReader br = new BufferedReader(new FileReader("verilog\\t2k_out.log"));
		String line;
		
		Pattern p = Pattern.compile("BLIT WR \\$(......) #(........)");
		long lastaddr = 0;
		long lastaddr2 = 0;
		
		long n = 0;
		while( (line = br.readLine()) != null) {
			
			// if (line.startsWith("#")) break;
			n++;
			
			Matcher m = p.matcher(line);
			if (m.matches()) {
				long addr = Long.parseLong(m.group(1), 16) & 0xffffff;
				long val = Long.parseLong(m.group(2), 16) & 0xffffffff;
				// System.out.format("%06x %08x\n", addr, val);
				if (addr == lastaddr && addr != lastaddr2) {
					System.out.format("%06x %08x\n", addr, val);
					Info i = new Info();
					i.n = n;
					i.addr = addr & 0xffff;
					i.value = val;
					nl.add(i);
				}
				lastaddr2 = lastaddr;
				lastaddr = addr;
			}
		} 
		br.close();	
		
		System.out.println("##################################");
		
		br = new BufferedReader(new FileReader("verilog\\vj_t2k.log"));
		p = Pattern.compile("  BLIT REG WR (......) (....)");
		lastaddr = 0;
		long lastval = 0;
		n = 0;
		while( (line = br.readLine()) != null) {
			n++;
			if (line.startsWith("#")) break;
			Matcher m = p.matcher(line);
			if (m.matches()) {
				long addr = Long.parseLong(m.group(1), 16) & 0xffffff;
				long val = Long.parseLong(m.group(2), 16) & 0xffff;
				if ((addr & ~0x3) == lastaddr) {
					System.out.format("%06x %08x\n", addr & ~0x3, val | lastval);
					Info i = new Info();
					i.n = n;
					i.addr = addr & 0xfffc;
					i.value = val | lastval;
					vj.add(i);

				} else {
					lastval = val << 16;
				}
				lastaddr = (addr & ~0x3);
			}			
		}
		
		System.out.println("##################################");
		
		for(int k = 0; k < nl.size(); k++) {
			Info inl = nl.get(k);
			Info ivj = vj.get(k);
			
			if (inl.addr != ivj.addr) {
				throw new Exception("hmmm");
			}
			if (inl.value != ivj.value) {
				System.out.format("MISMATCH %06X : NL %d %08x  -  VJ %d %08x\n", inl.addr, inl.n, inl.value, ivj.n, ivj.value);
			}
		}
		
	}

	public static void main(String args[]) {
		try {
			new T2KBlit().go();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
