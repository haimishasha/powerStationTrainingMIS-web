package com.thinkPro.train.db.mapper;

import java.util.List;

import com.thinkPro.train.bean.staff.Staff;

/**
 * 
 * 员工信息数据库操作底层接口
 *
 */
public interface StaffMapper {
	/**
	 * 根据员工Id查询员工信息
	 * @param staffId
	 * @return
	 */
	public Staff getStaffById(String staffId);
	/**
	 * 根据部门Id查询员工信息
	 * @param unitId
	 * @return
	 */
	public List<Staff> getStaffListByUnitId(String unitId);
	/**
	 * 查询全部员工信息
	 * @return
	 */
	public List<Staff> getAllStaff();
	/**
	 * 根据部门Id查询员工下一个Id
	 * @param unitId
	 * @return
	 */
	public String getStaffNextId(String unitId);
	/**
	 * 创建员工信息
	 * @param staff
	 * @return
	 */
	public int addStaff(Staff staff);
	/**
	 * 修改员工信息
	 * @param staff
	 * @return
	 */
	public int updateStaff(Staff staff);
	/**
	 * 删除员工信息
	 * @param staffId
	 * @return
	 */
	public int deleteStaffByID(String staffId);

}
