package com.thinkPro.train.test.db;

import java.util.List;

import org.junit.Test;

import com.thinkPro.train.db.util.AttendanceUtil;

public class TestAttendance {

	AttendanceUtil util = new AttendanceUtil();
	
	@Test
	public void test(){
		List<String> names = util.getStaffNameListByItemId("tp1000101");
		System.out.println(names);
	}
	
}
