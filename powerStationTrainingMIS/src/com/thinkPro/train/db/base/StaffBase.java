package com.thinkPro.train.db.base;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.mapper.StaffMapper;
/**
 * 
 * 员工信息数据库操作基层接口
 *
 */

public class StaffBase {

	private ApplicationContext applicationContext;
	
	private StaffMapper staffMapper;
	
	public StaffBase(){
		
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		staffMapper = (StaffMapper)applicationContext.getBean("staffMapper");
	}
	/**
	 * 创建员工信息
	 * @param staff
	 * @return
	 */
	public Staff addStaff(Staff staff){
			
		String staffId = staffMapper.getStaffNextId(staff.getUnitId());
		
		if(null == staffId || "".equals(staffId)){
			
			staffId = staff.getUnitId()+"01";
		}
		
		staff.setStaffId(staffId);
		
		staffMapper.addStaff(staff);
			
		return staff;
	}
	/**
	 * 修改员工信息
	 * @param staff
	 * @return
	 */
	public boolean updateStaff(Staff staff){
		
		boolean result = false;
		
		int temp = staffMapper.updateStaff(staff);
		
		if(temp>0){
			
			result = true;
		}
		return result;
	}
	/**
	 * 删除员工信息
	 * @param staffId
	 * @return
	 */
	public boolean deleteStaffByID(String staffId){
		
		boolean result = false;
		
		int temp = staffMapper.deleteStaffByID(staffId);
		
		if(temp>0){
			
			result = true;
		}
		
		return result;
	}
	
	/**
	 * 根据员工Id查询员工信息
	 * @param staffId
	 * @return
	 */
	public Staff getStaffById(String staffId){

		Staff staff = staffMapper.getStaffById(staffId);	
		
		return staff;
		
	}
	/**
	 * 根据部门Id查询员工信息
	 * @param unitId
	 * @return
	 */
	public List<Staff> getStaffListByUnitId(String unitId){
		
		List<Staff> staff = new ArrayList<Staff>();	
		
		staff = staffMapper.getStaffListByUnitId(unitId);	
		
		return staff;
		
	}
	/**
	 * 查询全部员工信息
	 * @return
	 */
	public List<Staff> getAllStaff(){
		
		List<Staff> staff = new ArrayList<Staff>();
		
		staff = staffMapper.getAllStaff();	
		
		return staff;
	}
	
}
