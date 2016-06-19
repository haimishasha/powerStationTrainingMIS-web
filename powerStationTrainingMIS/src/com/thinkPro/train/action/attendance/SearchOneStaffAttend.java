package com.thinkPro.train.action.attendance;

import java.util.ArrayList;
import java.util.List;

import org.omg.PortableInterceptor.SUCCESSFUL;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.OneStaffAttendCondition;
import com.thinkPro.train.bean.attendance.StaffAttendInfo;
import com.thinkPro.train.db.util.AttendanceUtil;

public class SearchOneStaffAttend extends ActionSupport{
	OneStaffAttendCondition  oneStaffAttendCondition=new OneStaffAttendCondition();
	
	List<StaffAttendInfo> staffAttendInfoList=new ArrayList<StaffAttendInfo>();
	public String execute(){
		AttendanceUtil attendanceUtil = new AttendanceUtil();
		staffAttendInfoList=attendanceUtil.getStaffAttendInfoListByStaffId(
				oneStaffAttendCondition.getStaffId(),
				oneStaffAttendCondition.getTrainItemId());
		return SUCCESS;
    }

	
}
