package com.thinkPro.train.db.base;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.attendance.AllStaffAttendCondition;
import com.thinkPro.train.bean.attendance.AttendCount;
import com.thinkPro.train.bean.attendance.AttendRecord;
import com.thinkPro.train.bean.attendance.MajorCondition;
import com.thinkPro.train.bean.attendance.StaffAttendInfo;
import com.thinkPro.train.bean.attendance.TrainPlanCondition;
import com.thinkPro.train.bean.attendance.TrainPlanInfo;
import com.thinkPro.train.bean.attendance.TrainPlanItem;
import com.thinkPro.train.db.mapper.AttendanceMapper;

/**
 * 
 * 考勤信息数据库操作基层接口
 * 
 */

public class AttendanceBase {

	private ApplicationContext applicationContext;

	private AttendanceMapper attendanceMapper;

	public AttendanceBase() {

		applicationContext = new ClassPathXmlApplicationContext(
				"applicationContext.xml");

		attendanceMapper = (AttendanceMapper) applicationContext.getBean("attendanceMapper");
	}

	public List<TrainPlanInfo> getAllTrainPlanInfoList(){
		return attendanceMapper.getAllTrainPlanInfoList();
	}
	
	public List<TrainPlanInfo> getTrainPlanInfoListByCondition(TrainPlanCondition trainPlanConditoon){
		return attendanceMapper.getTrainPlanInfoListByCondition(trainPlanConditoon);
	}
	
	public TrainPlanItem getTrainPlanItemByInfo(MajorCondition condition){
		return attendanceMapper.getTrainPlanItemByInfo(condition);
	}
	
	public List<String> getStaffNameListByItemId(String trainItemId){
		return attendanceMapper.getStaffNameListByItemId(trainItemId);
	}
	
	public List<AttendCount> getAllAttendCountList(){
		return attendanceMapper.getAllAttendCountList();
	}
	
	public List<AttendCount> getAttendCountListByCondition(AllStaffAttendCondition condition){
		return attendanceMapper.getAttendCountListByCondition(condition);
	}
	
	public List<StaffAttendInfo> getStaffAttendInfoListByStaffId(String staffId,String trainItemId){
		return attendanceMapper.getStaffAttendInfoListByStaffId(staffId,trainItemId);
	}
	
	public boolean addAttendRecord(AttendRecord attendRecord){
		boolean result = attendanceMapper.addAttendRecord(attendRecord)>-1?true:false;
		return result;
	}
}
