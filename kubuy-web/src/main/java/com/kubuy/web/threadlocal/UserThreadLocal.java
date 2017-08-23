package com.kubuy.web.threadlocal;

import com.kubuy.dubbo.pojo.User;

public class UserThreadLocal {
	private static final ThreadLocal<User> USER = new ThreadLocal<User>();
	
	public static User get(){
		return USER.get();
	}
	
	public static void set(User user){
		USER.set(user);
	}
	
	public static Long getUserId(){
		try{
			return USER.get().getId();
		}catch(Exception e){
			return null;
		}
	}
}
