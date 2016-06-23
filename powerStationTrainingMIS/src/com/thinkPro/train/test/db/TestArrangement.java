package com.thinkPro.train.test.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;

import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.util.ArrangementUtil;

public class TestArrangement {
	
	ArrangementUtil util = new ArrangementUtil();
	
	@Test
	public void testGetStudentsByItemId(){
		List<Staff> students = util.getStudentsByItemId("tp1000101");
		for(Staff s: students){
			System.out.println(s);
		}
		
	}
	@Test
	public void testGetStudentNumByItemId(){
		int studentNum = util.getStudentNumByItemId("tp1000101");
		System.out.println(studentNum);
	}
	@Test
	public void testAddStudent(){
		
		Map<String, String> train_emp = new HashMap<String,String>();
		train_emp.put("trainItemId", "tp1000101");
		train_emp.put("staffId", "201600100201");
		boolean result = util.addStudent(train_emp);
		System.out.println(result);
	}
	@Test
	public void testDeleteStudentByID(){
		Map<String, String> train_emp = new HashMap<String,String>();
		train_emp.put("trainItemId", "tp1000101");
		train_emp.put("staffId", "201600100201");
		boolean result = util.deleteStudentByID(train_emp);
		System.out.println(result);
	}
}
