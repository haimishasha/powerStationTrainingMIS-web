package com.thinkPro.train.db.util;

import java.util.List;
import java.util.Map;

import com.thinkPro.train.bean.attendance.AllStaffAttendCondition;
import com.thinkPro.train.bean.attendance.AttendCount;
import com.thinkPro.train.bean.attendance.AttendRecord;
import com.thinkPro.train.bean.attendance.MajorCondition;
import com.thinkPro.train.bean.attendance.StaffAttendInfo;
import com.thinkPro.train.bean.attendance.TrainPlanCondition;
import com.thinkPro.train.bean.attendance.TrainPlanInfo;
import com.thinkPro.train.bean.attendance.TrainPlanItem;
import com.thinkPro.train.db.base.AttendanceBase;
/**
 * 
 * 员工信息数据库操作高层接口
 *
 */
public class AttendanceUtil {

	private AttendanceBase attendanceBase;
	
	public AttendanceUtil() {
		
		attendanceBase = new AttendanceBase();
	}
	
	/**
	 * 查询全部的培训计划信息
	 * @return 培训计划信息链表
	 */
	public List<TrainPlanInfo> getAllTrainPlanInfoList(){
		return attendanceBase.getAllTrainPlanInfoList();
	}
	
	/**
	 * 根据条件查询培训计划信息
	 * @param trainPlanCondition 培训计划信息查询条件
	 * @return 培训计划信息链表
	 */
	public List<TrainPlanInfo> getTrainPlanInfoListByCondition(TrainPlanCondition trainPlanCondition){
		return attendanceBase.getTrainPlanInfoListByCondition(trainPlanCondition);
	}
	
	/**
	 * 查询培训计划明细
	 * @param condition 查询条件
	 * @return 培训计划明细
	 */
	public TrainPlanItem getTrainPlanItemByInfo(MajorCondition condition){
		return attendanceBase.getTrainPlanItemByInfo(condition);
	}
	
	/**
	 * 查询 所有的考勤统计信息
	 * @return 考勤统计信息链表
	 */
	public List<AttendCount> getAllAttendCountList(){
		return attendanceBase.getAllAttendCountList();
	}
	
	/**
	 * 根据培训明细ID查询学员姓名
	 * @param trainItemId
	 * @return 学员姓名链表
	 */
	public List<Map<String,String>> getStaffNameListByItemId(String trainItemId){
		return attendanceBase.getStaffNameListByItemId(trainItemId);
	}
	/**
	 * 根据条件查询考勤统计信息
	 * @param condition 考勤统计信息查询条件
	 * @return 考勤统计信息链表
	 */
	public List<AttendCount> getAttendCountListByCondition(AllStaffAttendCondition condition){
		return attendanceBase.getAttendCountListByCondition(condition);
	}
	
	/**
	 * 根据员工ID查询具体的学员考勤信息
	 * @param staffId 员工Id
	 * @param trainItemId 培训明细Id
	 * @return 学员考勤信息
	 */
	public List<StaffAttendInfo> getStaffAttendInfoListByStaffId(String staffId,String trainItemId){
		return attendanceBase.getStaffAttendInfoListByStaffId(staffId, trainItemId);
	}
	
	/**
	 * 添加学员考勤信息
	 * @param attendRecords 学员考勤信息链表
	 * @return
	 */
	public boolean addAttendRecord(List<AttendRecord> attendRecords){
		boolean result = false;
		for(AttendRecord attendRecord:attendRecords){
			if(attendanceBase.addAttendRecord(attendRecord)){
				result = true;
			}else{
				result = false;
				break;
			}
		}
		return result;
	}
}
