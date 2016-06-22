package com.thinkPro.train.action.attendance;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.OneStaffAttendCondition;
import com.thinkPro.train.bean.attendance.StaffAttendInfo;
import com.thinkPro.train.db.util.AttendanceUtil;


@SuppressWarnings("serial")
public class SearchOneStaffAttend extends ActionSupport{
	private String  staffId;
	private String  trainItemId;
	OneStaffAttendCondition  oneStaffAttendCondition=new OneStaffAttendCondition();
	
	List<StaffAttendInfo> staffAttendInfoList=new ArrayList<StaffAttendInfo>();
	public String execute(){
		AttendanceUtil attendanceUtil = new AttendanceUtil();
		oneStaffAttendCondition.setStaffId(staffId);
		oneStaffAttendCondition.setTrainItemId(trainItemId);
		staffAttendInfoList=attendanceUtil.getStaffAttendInfoListByStaffId(
				oneStaffAttendCondition);
		System.out.println(staffAttendInfoList);
		return SUCCESS;
    }
	public String getStaffId() {
		return staffId;
	}
	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}
	public String getTrainItemId() {
		return trainItemId;
	}
	public void setTrainItemId(String trainItemId) {
		this.trainItemId = trainItemId;
	}
	public OneStaffAttendCondition getOneStaffAttendCondition() {
		return oneStaffAttendCondition;
	}
	public void setOneStaffAttendCondition(
			OneStaffAttendCondition oneStaffAttendCondition) {
		this.oneStaffAttendCondition = oneStaffAttendCondition;
	}
	public List<StaffAttendInfo> getStaffAttendInfoList() {
		return staffAttendInfoList;
	}
	public void setStaffAttendInfoList(List<StaffAttendInfo> staffAttendInfoList) {
		this.staffAttendInfoList = staffAttendInfoList;
	}

	
}
