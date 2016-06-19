package com.thinkPro.train.db.base;

import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.attendance.TrainPlanItem;
import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.mapper.ArrangementMapper;

/**
 * 
 * 学员安排数据库操作基层接口
 * 
 */

public class ArrangementBase {

	private ApplicationContext applicationContext;

	private ArrangementMapper arrangementMapper;

	public ArrangementBase() {

		applicationContext = new ClassPathXmlApplicationContext(
				"applicationContext.xml");

		arrangementMapper = (ArrangementMapper) applicationContext
				.getBean("attendanceMapper");
	}
	
	/**
	 * 根据培训明细Id查询学员信息
	 * @param trainItemId
	 * @return
	 */
	public Staff getStudentsByItemId(String trainItemId) {

		return arrangementMapper.getStudentsByItemId(trainItemId);
	}
	/**
	 * 根据培训明细Id查询学员人数
	 * @param trainItemId
	 * @return
	 */
	public int getStudentNumByItemId(String trainItemId) {

		return arrangementMapper.getStudentNumByItemId(trainItemId);
	}
	/**
	 * 根据员工Id查询员工选课信息
	 * @param staffId
	 * @return
	 */
	public TrainPlanItem getItemsByStaffId(String staffId) {

		return arrangementMapper.getItemsByStaffId(staffId);
	}
	/**
	 * 安排插入学员信息
	 * @param train_emp
	 * @return
	 */
	public boolean addStudent(Map<String, String> train_emp) {

		boolean result = arrangementMapper.addStudent(train_emp) > 0 ? true
				: false;
		return result;
	}
	/**
	 * 删除学员信息
	 * @param train_emp
	 * @return
	 */
	public boolean deleteStudentByID(Map<String, String> train_emp) {
		
		boolean result = arrangementMapper.deleteStudentByID(train_emp) > 0 ? true
				: false;
		return result;

	}

}
