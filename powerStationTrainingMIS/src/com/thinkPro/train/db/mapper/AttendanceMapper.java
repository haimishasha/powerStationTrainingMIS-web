package com.thinkPro.train.db.mapper;

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

public interface AttendanceMapper {

	public List<TrainPlanInfo> getAllTrainPlanInfoList();
	public List<TrainPlanInfo> getTrainPlanInfoListByCondition(TrainPlanCondition trainPlanCondition);
	public TrainPlanItem getTrainPlanItemByInfo(MajorCondition condition);
	public List<Map<String,String>> getStaffNameListByItemId(String trainItemId);
	public List<AttendCount> getAllAttendCountList();
	public List<AttendCount> getAttendCountListByCondition(AllStaffAttendCondition condition);
	public List<StaffAttendInfo> getStaffAttendInfoListByStaffId(String staffId,String trainItemId);
	public int addAttendRecord(AttendRecord attendRecord);
}
