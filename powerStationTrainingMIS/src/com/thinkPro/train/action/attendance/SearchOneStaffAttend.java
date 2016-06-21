package com.thinkPro.train.action.attendance;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.OneStaffAttendCondition;
import com.thinkPro.train.bean.attendance.StaffAttendInfo;
import com.thinkPro.train.db.util.AttendanceUtil;


@SuppressWarnings("serial")
public class SearchOneStaffAttend extends ActionSupport{
	OneStaffAttendCondition  oneStaffAttendCondition=new OneStaffAttendCondition();
	
	List<StaffAttendInfo> staffAttendInfoList=new ArrayList<StaffAttendInfo>();
	public String execute(){
		AttendanceUtil attendanceUtil = new AttendanceUtil();
	
		staffAttendInfoList=attendanceUtil.getStaffAttendInfoListByStaffId(
				oneStaffAttendCondition);
		return SUCCESS;
    }

	
}
