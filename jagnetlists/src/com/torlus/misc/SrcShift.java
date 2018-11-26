package com.torlus.misc;

public class SrcShift {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		int n;
		int [] shsrc = new int[128];
		for(n = 0; n < 128; n++)
			shsrc[n] = n;

		for(int srcshift = 0; srcshift < 64; srcshift++) {			
			int [] onep = new int[128];
			
			// onep[8-63]
			for(n = 8; n <= 63; n++) {
				if ((srcshift & (1<<6)) == 0) {
					onep[n] = shsrc[n];
				} else {
					onep[n] = shsrc[n + 64];
				}	
			}
			// onep[64-127]
			for(n = 64; n <= 127; n++) {
				if ((srcshift & (1<<6)) == 0) {
					onep[n] = shsrc[n];
				} else {
					onep[n] = shsrc[n - 64];
				}	
			}
			
			int [] onel = new int[128];
			
			// onel[40-127]
			for(n = 40; n <= 127; n++) {
				if ((srcshift & (1<<5)) == 0) {
					onel[n] = onep[n];
				} else {
					onel[n] = onep[n - 32];
				}	
			}
			
			int [] onew = new int[128];
			
			// onew[40-127]
			for(n = 56; n <= 127; n++) {
				if ((srcshift & (1<<4)) == 0) {
					onew[n] = onel[n];
				} else {
					onew[n] = onel[n - 16];
				}	
			}
			
			int [] oneb = new int[128];
			// oneb[64-127]
			for(n = 64; n <= 127; n++) {
				if ((srcshift & (1<<3)) == 0) {
					oneb[n] = onew[n];
				} else {
					oneb[n] = onew[n - 8];
				}	
			}
			
			System.out.format("(%04X) :", srcshift);
			for( n = 64 ; n < 128 ; n++ )
				System.out.format(" %03d" , oneb[n]);
			System.out.println();
		}
	}

}
