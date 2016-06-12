package com.thinkPro.train.db.base;

import java.sql.SQLException;
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

	public StaffBase() {

		applicationContext = new ClassPathXmlApplicationContext(
				"applicationContext.xml");

		staffMapper = (StaffMapper) applicationContext.getBean("staffMapper");
	}

	/**
	 * 创建员工信息
	 * 
	 * @param staff
	 * @return
	 */
	public Staff addStaff(Staff staff) throws SQLException {

		Staff newStaff = null;

		int temp = staffMapper.addStaff(staff);

		if (temp > -1) {

			newStaff = staffMapper.getNewStaff(staff.getUnitId());
		}

		return newStaff;
	}

	/**
	 * 修改员工信息
	 * 
	 * @param staff
	 * @return
	 */
	public boolean updateStaff(Staff staff) throws SQLException {

		boolean result = staffMapper.updateStaff(staff) > 0 ? true : false;
		return result;
	}

	/**
	 * 删除员工信息
	 * 
	 * @param staffId
	 * @return
	 */
	public boolean deleteStaffByID(String staffId) throws SQLException {

		boolean result = staffMapper.deleteStaffByID(staffId) > 0 ? true
				: false;
		return result;
	}

	/**
	 * 根据员工Id查询员工信息
	 * 
	 * @param staffId
	 * @return
	 */
	public Staff getStaffById(String staffId) throws SQLException {

		return staffMapper.getStaffById(staffId);
	}

	/**
	 * 根据部门Id查询员工信息
	 * 
	 * @param unitId
	 * @return
	 */
	public List<Staff> getStaffListByUnitId(String unitId) throws SQLException {

		return staffMapper.getStaffListByUnitId(unitId);
	}

	/**
	 * 查询全部员工信息
	 * 
	 * @return
	 */
	public List<Staff> getAllStaff() throws SQLException {

		return staffMapper.getAllStaff();
	}

}
