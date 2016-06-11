package com.thinkPro.train.db.util;

import java.util.List;

import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.base.StaffBase;

public class StaffUtil {

	private StaffBase staffOperate;
	
	public StaffUtil() {
		staffOperate = new StaffBase();
	}
	
	/**
	 * 根据员工Id返回员工
	 * @param staffId
	 * @return
	 */
	public Staff getStaffById(String staffId){
		
		return staffOperate.getStaffById(staffId);
	}
	
	/**
	 * 根据部门Id返回员工列表
	 * @param unitId
	 * @return
	 */
	public List<Staff> getStaffListByUnitId(String unitId){
		
		return staffOperate.getStaffListByUnitId(unitId);
	}
	
	/**
	 * 返回所有员工
	 * @return
	 */
	public List<Staff> getAllStaff(){
		
		return staffOperate.getAllStaff();
	}

	/**
	 * 添加员工
	 * @param staff
	 * @return
	 */
	public boolean addStaff(Staff staff){
		
		return staffOperate.addStaff(staff);
	}

	/**
	 * 修改员工
	 * @param staff
	 * @return
	 */
	public boolean updateStaff(Staff staff){
		
		return staffOperate.updateStaff(staff);
	}

	/**
	 * 删除员工
	 * @param staffId
	 * @return
	 */
	public boolean deleteStaffByID(String staffId){
		
		return staffOperate.deleteStaffByID(staffId);
	}
}
