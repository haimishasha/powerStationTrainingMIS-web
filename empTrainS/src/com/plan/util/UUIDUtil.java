package com.plan.util;

import java.util.UUID;

public class UUIDUtil {
	public static String getUUid(){
		UUID uuid  =  UUID.randomUUID(); 
		String s = UUID.randomUUID().toString();
		System.out.println("fdsdf");
		return s;
	}
}
