package com.example.demo;

import java.util.Random;

//랜덤 비밀번호 생성
public class pwdMaker {
	private static int pwdLength=6;
	private static final char[] passwordTable = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
            'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
            'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
            'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 
            'w', 'x', 'y', 'z', '!', '@', '#', '$', '%', '^', '&', '*',
            '(', ')', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };

	public static String generatePwd() {
		Random random = new Random(System.currentTimeMillis());
		int length = passwordTable.length;
		StringBuffer sb = new StringBuffer();
		
		for(int i=0;i<pwdLength;i++) {
			sb.append(passwordTable[random.nextInt(length)]); // table 범위 내 난수 생성 후 -> stringbuffer에 append 
		}
		
		System.out.println("new pwd=>"+sb.toString());
		
		return sb.toString();
		
	}


}
