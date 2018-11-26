package com.torlus.misc;

import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.io.File;
import javax.imageio.ImageIO;

public class T2KTitle {

	private static int WIDTH = 384;
	private static int HEIGHT = 280;
	private static int SCREENSIZE = WIDTH * HEIGHT * 2;
	
	private static int SCREEN3 = 0x050000;
	private static int SCREEN1 = 0x100000;
	private static int SCREEN2 = SCREEN1 + SCREENSIZE;
	
	public void go() throws Exception {
		
		BufferedImage img1;
		BufferedImage img2;
		BufferedImage img3;
		
		int scr1[];
		int scr2[];
		int scr3[];

		BufferedReader br;
		String line;
		Pattern p;
		
		/*
		scr1 = new int[HEIGHT * WIDTH];
		scr2 = new int[HEIGHT * WIDTH];
		scr3 = new int[HEIGHT * WIDTH];
		
		img1 = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_USHORT_555_RGB);
		img2 = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_USHORT_555_RGB);
		img3 = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_USHORT_555_RGB);

		br = new BufferedReader(new FileReader("verilog\\vj_t2k.log"));
		p = Pattern.compile("  JAG BLIT WR (......) (....)");

		while( (line = br.readLine()) != null) {
			
			if (line.startsWith("#")) break;
			
			Matcher m = p.matcher(line);
			if (m.matches()) {
				int addr = Integer.parseInt(m.group(1), 16);
				int val = Integer.parseInt(m.group(2), 16);
				BufferedImage img = null;
				int scr[] = null;
				
				if (addr >= SCREEN1 && addr < SCREEN1 + SCREENSIZE) {
					img = img1;
					scr = scr1;
					addr -= SCREEN1;
				}
				else if (addr >= SCREEN2 && addr < SCREEN2 + SCREENSIZE) {
					img = img2;
					addr -= SCREEN2;
					scr = scr2;
				}
				else if (addr >= SCREEN3 && addr < SCREEN3 + SCREENSIZE) {
					img = img3;
					addr -= SCREEN3;
					scr = scr3;
				}
				if (img == null)
					continue;
				
				// System.out.format("%06x %04x\n", addr, val);
				int y = (addr >> 1) / WIDTH;
				int x = (addr >> 1) % WIDTH;
				//if ((y >= 0) && (y < HEIGHT)) {
					// System.out.format("(%d,%d)\n", x, y);
				scr[y * WIDTH + x] = val;	
				img.setRGB(x, y, val);
				//}
			}
		} 
		br.close();
		
		ImageIO.write(img1, "bmp", new File("verilog\\vj_s1_t2k.bmp"));
		ImageIO.write(img2, "bmp", new File("verilog\\vj_s2_t2k.bmp"));
		ImageIO.write(img3, "bmp", new File("verilog\\vj_s3_t2k.bmp"));
		*/
		
		boolean opLogStart = false;
		
		scr1 = new int[HEIGHT * WIDTH];
		scr2 = new int[HEIGHT * WIDTH];
		scr3 = new int[HEIGHT * WIDTH];
		
		img1 = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_USHORT_555_RGB);
		img2 = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_USHORT_555_RGB);
		img3 = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_USHORT_555_RGB);
		
		int LIMIT = HEIGHT * 500;
		BufferedImage imgOp = new BufferedImage(WIDTH, LIMIT , BufferedImage.TYPE_USHORT_555_RGB);
		int yOp = 0;
		
		//br = new BufferedReader(new FileReader("verilog\\out.log"));
		br = new BufferedReader(new FileReader("..\\JagNetlists-master-old\\verilog\\out_t2k_old.log"));
				
		p = Pattern.compile(".+ JAG WR xwel=([^ ]+) .+\\$(......) #(....)(....)(....)(....).*");
		Pattern pOp = Pattern.compile(".+JAG RD REF=. OB=1 BLT=. GPU=. \\$(......).*");
		while( (line = br.readLine()) != null) {
			if (line.startsWith("#")) break;
			
			Matcher m = p.matcher(line);
			if (m.matches()) {
				//System.out.print(".");
				int xwel = Integer.parseInt(m.group(1), 16) & 0xff;
				int addr = Integer.parseInt(m.group(2), 16) & 0xffffff;
				int v0 = Integer.parseInt(m.group(3), 16) & 0xffff;
				int v1 = Integer.parseInt(m.group(4), 16) & 0xffff;
				int v2 = Integer.parseInt(m.group(5), 16) & 0xffff;
				int v3 = Integer.parseInt(m.group(6), 16) & 0xffff;
				
				BufferedImage img = null;
				
				addr &= ~0x7;
				// System.out.format("ADDR %06X", addr);
				
				int scr[] = null;
				
				if (addr >= SCREEN1 && addr < SCREEN1 + SCREENSIZE) {
					img = img1;
					scr = scr1;
					addr -= SCREEN1;
				}
				else if (addr >= SCREEN2 && addr < SCREEN2 + SCREENSIZE) {
					img = img2;
					addr -= SCREEN2;
					scr = scr2;
				}
				else if (addr >= SCREEN3 && addr < SCREEN3 + SCREENSIZE) {
					img = img3;
					addr -= SCREEN3;
					scr = scr3;
				}
				if (img == null)
					continue;

				int y = (addr >> 1) / WIDTH;
				int x = (addr >> 1) % WIDTH;
				// System.out.format("(%d,%d)\n", x, y);
				if ((y >= 0) && (y < HEIGHT)) {
					// System.out.format("(%d,%d) %2x\n", x, y, xwel);
					if ((xwel & 0x03) == 0) {
						if ((img == img3) && (v0 != 0)) System.out.format("$%06X (%d,%d) %2x\n", addr + SCREEN3,x, y, v0);
						img.setRGB(x, y, v0);
						
						scr[y * WIDTH + x + 0] = v0;
					}
					if ((xwel & 0x0C) == 0) {
						img.setRGB(x + 1, y, v1);
						scr[y * WIDTH + x + 1] = v1;
					}
					if ((xwel & 0x30) == 0) {
						img.setRGB(x + 2, y, v2);
						scr[y * WIDTH + x + 2] = v2;
					}
					if ((xwel & 0xC0) == 0) {
						img.setRGB(x + 3, y, v3);
						scr[y * WIDTH + x + 3] = v3;
					}
				}
				
			}

			/*Matcher mOp = pOp.matcher(line);
			if (mOp.matches() && yOp < LIMIT) {
				int addr = Integer.parseInt(mOp.group(1), 16);
				if (addr == 0xeb40 && opLogStart) {
					yOp++;
				}

				BufferedImage img = null;
				int scr[] = null;
				
				if (addr >= SCREEN1 && addr < SCREEN1 + SCREENSIZE) {
					img = img1;
					scr = scr1;
					addr -= SCREEN1;
				}
				else if (addr >= SCREEN2 && addr < SCREEN2 + SCREENSIZE) {
					img = img2;
					addr -= SCREEN2;
					scr = scr2;
				}
				else if (addr >= SCREEN3 && addr < SCREEN3 + SCREENSIZE) {
					opLogStart = true;
					img = img3;
					addr -= SCREEN3;
					scr = scr3;
				}
				if (img == null)
					continue;

				int y = (addr >> 1) / WIDTH;
				int x = (addr >> 1) % WIDTH;
				
				for(int k = 0; k < 4; k++) {
					//int px = img.getRGB(x + k, y);
					int px = scr[y * WIDTH + x + k];
					if (px != 0)
						imgOp.setRGB(x + k, yOp, px);
				}
			}				

			if (yOp >= LIMIT)
				break;*/
		}
		br.close();
		
		ImageIO.write(img1, "bmp", new File("verilog\\nl_s1_t2k.bmp"));
		ImageIO.write(img2, "bmp", new File("verilog\\nl_s2_t2k.bmp"));
		ImageIO.write(img3, "bmp", new File("verilog\\nl_s3_t2k.bmp"));
		ImageIO.write(imgOp, "bmp", new File("verilog\\nl_op_t2k.bmp"));
		
	}
	
	
	public static void main(String args[]) {
		try {
			new T2KTitle().go();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
}
