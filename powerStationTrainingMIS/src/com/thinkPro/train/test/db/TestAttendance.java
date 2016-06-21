package com.thinkPro.train.test.db;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.junit.Test;

import com.thinkPro.train.bean.attendance.AllStaffAttendCondition;
import com.thinkPro.train.bean.attendance.AttendCount;
import com.thinkPro.train.bean.attendance.AttendRecord;
import com.thinkPro.train.bean.attendance.MajorCondition;
import com.thinkPro.train.bean.attendance.OneStaffAttendCondition;
import com.thinkPro.train.bean.attendance.StaffAttendInfo;
import com.thinkPro.train.bean.attendance.TrainPlanCondition;
import com.thinkPro.train.bean.attendance.TrainPlanInfo;
import com.thinkPro.train.bean.attendance.TrainPlanItem;
import com.thinkPro.train.db.util.AttendanceUtil;

public class TestAttendance {

	AttendanceUtil util = new AttendanceUtil();
	
	@Test
	public void testGetAllTrainPlanInfoList(){
		List<TrainPlanInfo> trainPlans= util.getAllTrainPlanInfoList();
		System.out.println(trainPlans);
	}
	
	@Test
	public void testGetTrainPlanInfoListByCondition(){
		TrainPlanCondition trainPlanCondition = new TrainPlanCondition();
		trainPlanCondition.setTrainPlanYear("2016");
		List<TrainPlanInfo> trainPlans=util.getTrainPlanInfoListByCondition(trainPlanCondition);
		System.out.println(trainPlans);
	}
	
	@Test
	public void testGetTrainPlanItemByInfo(){
		MajorCondition condition = new MajorCondition();
		condition.setTrainPlanId("tp10001");
		condition.setMajor("电气");
		TrainPlanItem item = util.getTrainPlanItemByInfo(condition);
		System.out.println(item);
	}
	@Test
	public void testGetStaffNameListByItemId(){
		List<Map<String,String>> staffname = util.getStaffNameListByItemId("tp1000101");
		System.out.println(staffname);
	}
	
	@Test
	public void testGetAllAttendCountList(){
		List<AttendCount> counts = util.getAllAttendCountList();
		System.out.println(counts);
	}
	
	@Test
	public void testGetStaffAttendInfoListByStaffId(){
		OneStaffAttendCondition condition = new OneStaffAttendCondition();
		condition.setStaffId("201600100201");
		condition.setTrainItemId("tp1000102");
		List<StaffAttendInfo> infos = util.getStaffAttendInfoListByStaffId(condition);
		System.out.println(infos);
	}
	
	
	@Test
	public void testGetAttendCountListByCondition(){
		AllStaffAttendCondition condition = new AllStaffAttendCondition();
		condition.setStaffName("韩小轩");
		List<AttendCount> counts =  util.getAttendCountListByCondition(condition);
		System.out.println(counts);
	}
	@Test
	public void testaddAttendRecord(){
		List<AttendRecord> attendRecords = new ArrayList<AttendRecord>();
		AttendRecord record = new AttendRecord();
		record.setStaffId("201600100101");
		record.setTrainItemId("tp1000101");
		record.setStartTime("");
		record.setArriveTime("");
		record.setAttendStatus("缺勤");
		attendRecords.add(record);
		if(util.addAttendRecord(attendRecords)){
			System.out.println("添加成功");
		}else{
			System.out.println("添加失败");
		}
		
	}
	
}