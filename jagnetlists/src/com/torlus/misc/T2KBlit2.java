package com.torlus.misc;

import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Vector;

import javax.imageio.ImageIO;

public class T2KBlit2 {

	private class Info {
		long n;
		long addr;
		String value;
	}
	
	public void go() throws Exception {
		
		Vector<Info> nl = new Vector<Info>();
		Vector<Info> vj = new Vector<Info>();
		
		BufferedReader br;
		String line;
		long n;
		Pattern p;
		
		p = Pattern.compile(".+ JAG WR xwel=([^ ]+) .+\\$(......) #(................).*");
		br = new BufferedReader(new FileReader("verilog\\out_old.log"));
		n = 0;
		while( (line = br.readLine()) != null) {
			n++;
			if (line.contains("$00e")) continue;
			Matcher m = p.matcher(line);
			if (m.matches()) {
				int xwel = Integer.parseInt(m.group(1), 16) & 0xff;
				int addr = Integer.parseInt(m.group(2), 16) & 0xffffff;
				String value = m.group(3);
				// System.out.format("%06x %s\n", addr, value);
				Info i = new Info();
				i.n = n;
				i.addr = addr;
				i.value = value;
				nl.add(i);
			}
		} 
		br.close();	
		
		System.out.println("##################################");

		br = new BufferedReader(new FileReader("verilog\\out.log"));
		n = 0;
		while( (line = br.readLine()) != null) {
			n++;
			if (line.contains("$00e")) continue;
			Matcher m = p.matcher(line);
			if (m.matches()) {
				int xwel = Integer.parseInt(m.group(1), 16) & 0xff;
				int addr = Integer.parseInt(m.group(2), 16) & 0xffffff;
				String value = m.group(3);
				// System.out.format("%06x %s\n", addr, value);
				Info i = new Info();
				i.n = n;
				i.addr = addr;
				i.value = value;
				vj.add(i);
			}
		} 
		br.close();	
		
		for(int k = 0; k < vj.size(); k++) {
			Info inl = nl.get(k);
			Info ivj = vj.get(k);
			
			if (inl.addr != ivj.addr) {
				System.out.format("MISMATCH ADDR %06X : NL %d %s  -  VJ %d %s\n", inl.addr, inl.n, inl.value, ivj.n, ivj.value);
				// throw new Exception("hmmm");
			}
			if (!inl.value.equalsIgnoreCase(ivj.value)) {
				System.out.format("MISMATCH %06X : NL %d %s  -  VJ %d %s\n", inl.addr, inl.n, inl.value, ivj.n, ivj.value);
			}
		}
		
	}

	public static void main(String args[]) {
		try {
			new T2KBlit2().go();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
