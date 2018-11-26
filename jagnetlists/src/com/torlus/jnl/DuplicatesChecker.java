package com.torlus.jnl;

import java.io.File;

public class DuplicatesChecker {

	String baseDir = "verilog" + File.separator + "base" + File.separator;
	String tomDir = "verilog" + File.separator + "tom" + File.separator;
	String jerryDir = "verilog" + File.separator + "jerry" + File.separator;
	
	public void rd(String d1, String d2) {
		File bd = new File(d1);
		for(File f : bd.listFiles()) {
			String name = f.getName();
			File ft = new File(d2 + name);
			if (ft.exists()) {
				System.out.println(ft.getName());
			}
		}		
	}
	
	public void go() throws Exception {
		rd(baseDir, tomDir);
		rd(baseDir, jerryDir);
		rd(tomDir, jerryDir);
	}
	
	
	public static void main(String args[]) {
		try {
			new DuplicatesChecker().go();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
	}
	
}
