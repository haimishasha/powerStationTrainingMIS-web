package com.thinkPro.train.db.mapper;

import java.util.List;
import java.util.Map;

import com.thinkPro.train.bean.attendance.TrainPlanItem;
import com.thinkPro.train.bean.staff.Staff;
/**
 * 
 * 学员安排数据库操作底层接口
 *
 */
public interface ArrangementMapper {
	
	/**
	 * 根据培训明细Id查询学员信息
	 * @param trainItemId
	 * @return
	 */
	public abstract List<Staff> getStudentsByItemId(String trainItemId);
	/**
	 * 根据培训明细Id查询学员人数
	 * @param trainItemId
	 * @return
	 */
	public abstract int getStudentNumByItemId(String trainItemId);
	/**
	 * 根据员工Id查询员工选课信息
	 * @param staffId
	 * @return
	 */
	public abstract List<TrainPlanItem> getItemsByStaffId(String staffId);
	/**
	 * 安排插入学员信息
	 * @param train_emp
	 * @return
	 */
	public abstract int addStudent(Map<String,String> train_emp);
	/**
	 * 删除学员信息
	 * @param train_emp
	 * @return
	 */
	public abstract int deleteStudentByID(Map<String,String> train_emp);
	
}
