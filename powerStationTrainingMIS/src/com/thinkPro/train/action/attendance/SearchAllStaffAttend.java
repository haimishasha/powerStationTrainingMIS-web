package com.thinkPro.train.action.attendance;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.AllStaffAttendCondition;
import com.thinkPro.train.bean.attendance.AttendCount;
import com.thinkPro.train.db.util.AttendanceUtil;
/**
 * @author GuoFei
 * 日期：2016-6-17
 * 功能：查询所有学员出勤信息
 * */

public class SearchAllStaffAttend extends ActionSupport {
	
	AllStaffAttendCondition allStaffAttendCondition=new AllStaffAttendCondition();
	AttendCount attendCount=new AttendCount();
	List<AttendCount> attendCountList=new ArrayList<AttendCount>(); 
	
	public String  execute(){
		
		AttendanceUtil attendanceUtil=new AttendanceUtil();
		attendCountList=attendanceUtil.getAttendCountListByCondition(allStaffAttendCondition);
		
		return SUCCESS;
	}
	 
	 
	 
	public AllStaffAttendCondition getAllStaffAttendCondition() {
		return allStaffAttendCondition;
	}
	public void setAllStaffAttendCondition(
			AllStaffAttendCondition allStaffAttendCondition) {
		this.allStaffAttendCondition = allStaffAttendCondition;
	}



	public AttendCount getAttendCount() {
		return attendCount;
	}



	public void setAttendCount(AttendCount attendCount) {
		this.attendCount = attendCount;
	}



	public List<AttendCount> getAttendCountList() {
		return attendCountList;
	}



	public void setAttendCountList(List<AttendCount> attendCountList) {
		this.attendCountList = attendCountList;
	}

	
	
	
}
