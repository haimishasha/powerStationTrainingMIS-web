package com.thinkPro.train.db.mapper;

import java.util.List;

import com.thinkPro.train.bean.staff.Staff;



public interface StaffMapper {
	
	public Staff getStaffById(String staffId);
	
	public List<Staff> getStaffListByUnitId(String unitId);
	
	public List<Staff> getAllStaff();
	
	public String getStaffNextId(String unitId);

	public int addStaff(Staff staff);

	public int updateStaff(Staff staff);

	public int deleteStaffByID(String staffId);

}
