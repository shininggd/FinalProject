package com.kh.util;

import java.util.Random;

public class Cupon {

	public String cuponCreate() {
		
		Random rnd = new Random();
		String cupon = "";
		StringBuffer buf = null;
		for(int j = 0; j < 4; j++) {
			buf = new StringBuffer();
			for(int i = 0; i < 4; i++){
				if(rnd.nextBoolean()){
					buf.append((char)((int)(rnd.nextInt(26))+65));
				}else{
					buf.append((rnd.nextInt(10)));
				}  
			}
			cupon = cupon + buf.toString() + "-" ;
			
		}
		cupon = cupon.substring(0, cupon.lastIndexOf("-"));
		return cupon;
	}
	
}
