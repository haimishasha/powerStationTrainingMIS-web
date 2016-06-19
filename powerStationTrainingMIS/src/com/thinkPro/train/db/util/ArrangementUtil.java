package com.thinkPro.train.db.util;

import java.util.Map;

import com.thinkPro.train.bean.attendance.TrainPlanItem;
import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.base.ArrangementBase;
/**
 * 
 * 学员安排数据库操作高层接口
 *
 */
public class ArrangementUtil {

	private ArrangementBase arrangementBase;
	
	public ArrangementUtil() {
		
		arrangementBase = new ArrangementBase();
	}
	/**
	 * 根据培训明细Id查询学员信息
	 * @param trainItemId
	 * @return
	 */
	public Staff getStudentsByItemId(String trainItemId) {

		return arrangementBase.getStudentsByItemId(trainItemId);
	}
	/**
	 * 根据培训明细Id查询学员人数
	 * @param trainItemId
	 * @return
	 */
	public int getStudentNumByItemId(String trainItemId) {

		return arrangementBase.getStudentNumByItemId(trainItemId);
	}
	/**
	 * 根据员工Id查询员工选课信息
	 * @param staffId
	 * @return
	 */
	public TrainPlanItem getItemsByStaffId(String staffId) {

		return arrangementBase.getItemsByStaffId(staffId);
	}
	/**
	 * 安排插入学员信息
	 * @param train_emp
	 * @return
	 */
	public boolean addStudent(Map<String, String> train_emp) {

		return arrangementBase.addStudent(train_emp);
	}
	/**
	 * 删除学员信息
	 * @param train_emp
	 * @return
	 */
	public boolean deleteStudentByID(Map<String, String> train_emp) {

		return arrangementBase.deleteStudentByID(train_emp);
	}
	
}
