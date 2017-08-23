package com.kubuy.sso.util;

public class CapychaUtill {
	//提供一个六位验证码
	public static String getCapycha (){
		String myCapycha = null ;
		for(int i=0;i<6;i++){
			if(myCapycha==null){
				myCapycha =(char)(65+Math.random()*26)+"";
			}else{
			myCapycha =(char)(65+Math.random()*26)+myCapycha;
			}
		}
		return myCapycha;
	}
}
