package com.thinkPro.train.db.base;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.mapper.StaffMapper;


public class StaffBase {

	private static ApplicationContext applicationContext;
	private static StaffMapper staffMapper;
	static{
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		staffMapper = (StaffMapper)applicationContext.getBean("staffMapper");
	}
	
	public boolean addStaff(Staff staff){
		
		boolean result = false;
		String staffId = staffMapper.getStaffNextId(staff.getUnitId());
		
		if(null == staffId || "".equals(staffId)){
			staffId = staff.getUnitId()+"01";
		}
		staff.setStaffId(staffId);
		int temp = staffMapper.addStaff(staff);
		if(temp>0){
			result = true;
		}
		return result;
	}
	
	public boolean updateStaff(Staff staff){
		
		boolean result = false;
		int temp = staffMapper.updateStaff(staff);
		if(temp>0){
			result = true;
		}
		return result;
	}
	
	public boolean deleteStaffByID(String staffId){
		
		boolean result = false;
		int temp = staffMapper.deleteStaffByID(staffId);
		if(temp>0){
			result = true;
		}
		return result;
	}
	
	public Staff getStaffById(String staffId){

		Staff staff = staffMapper.getStaffById(staffId);	
		return staff;
		
	}
	public List<Staff> getStaffListByUnitId(String unitId){
		
		List<Staff> staff = new ArrayList<Staff>();	
		staff = staffMapper.getStaffListByUnitId(unitId);	
		return staff;
		
	}
	public List<Staff> getAllStaff(){
		
		List<Staff> staff = new ArrayList<Staff>();
		staff = staffMapper.getAllStaff();	
		return staff;
	}
	
}
