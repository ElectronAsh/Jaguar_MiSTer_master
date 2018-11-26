package com.torlus.misc;

import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.io.File;
import javax.imageio.ImageIO;

public class T2KOp {

	private static int WIDTH = 384;
	private static int HEIGHT = 280;
	private static int SCREENSIZE = WIDTH * HEIGHT * 2;
	
	private static int SCREEN3 = 0x050000;
	private static int SCREEN1 = 0x100000;
	private static int SCREEN2 = SCREEN1 + SCREENSIZE;
	
	public void go() throws Exception {
		
		BufferedReader br = new BufferedReader(new FileReader("verilog\\out.log"));
		String line;
		
		Pattern p = Pattern.compile(".+JAG RD REF=. OB=1 BLT=. GPU=. \\$(......).*");
		long lineNo = 0;
		
		int Xmin[] = new int[3];
		int Xmax[] = new int[3];
		int Ymin[] = new int[3];
		int Ymax[] = new int[3];
		long slino[] = new long[3];
		long elino[] = new long[3];
		
		for(int k = 0; k < 3; k++) {
			Xmin[k] = Ymin[k] = Integer.MAX_VALUE;
			Xmax[k] = Ymax[k] = Integer.MIN_VALUE;
		}
		while( (line = br.readLine()) != null) {
			lineNo++;
			if (lineNo >= 10L * 1000L * 1000L)
				break;
			
			Matcher m = p.matcher(line);
			if (m.matches()) {
				// System.out.println(line);
				int addr = Integer.parseInt(m.group(1), 16);
				
				int index = -1;
				
				boolean wtf = false;
				
				if (addr == 0xeb40) {
					// OLP
					// System.out.print(".");
					for(int k = 0; k < 3; k++) {
						if (slino[k] != 0) {
							//wtf = (Ymin[k] != Ymax[k]);
							System.out.format("%-9d %-9d S%d (%d,%d) -> (%d,%d) %s ", slino[k], elino[k], (k+1), Xmin[k], Ymin[k], Xmax[k], Ymax[k], 
									(wtf ? "WTF" : ""));
						}
						Xmin[k] = Ymin[k] = Integer.MAX_VALUE;
						Xmax[k] = Ymax[k] = Integer.MIN_VALUE;
						slino[k] = 0;
						elino[k] = 0;
					}
					System.out.println();
				}
				/*if (wtf)
					break;*/
				
				if (addr >= SCREEN1 && addr < SCREEN1 + SCREENSIZE) {
					index = 0;
					addr -= SCREEN1;
				}
				else if (addr >= SCREEN2 && addr < SCREEN2 + SCREENSIZE) {
					index = 1;
					addr -= SCREEN2;
				}
				else if (addr >= SCREEN3 && addr < SCREEN3 + SCREENSIZE) {
					index = 2;
					addr -= SCREEN3;
				}
				if (index < 0)
					continue;
				
				// System.out.format("%06x %04x\n", addr, val);
				int y = (addr >> 1) / WIDTH;
				int x = (addr >> 1) % WIDTH;
				// System.out.format("%d (%d,%d)\n", index, x, y);
				if (slino[index] == 0)
					slino[index] = lineNo;
				elino[index] = lineNo;
				if (Xmin[index] > x)
					Xmin[index] = x;
				if (Xmax[index] < x)
					Xmax[index] = x;
				if (Ymin[index] > y)
					Ymin[index] = y;
				if (Ymax[index] < y)
					Ymax[index] = y;
			}
		} 
		br.close();
		
	}
	
	
	public static void main(String args[]) {
		try {
			new T2KOp().go();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
}
