package com.thinkPro.train.bean.attendance;

public class AttendRecord {
     private String staffId;//员工ID
     private String trainItemId;//培训专业id
     private String startTime; //上课时间
     private String arriveTime;//到课时间
	private String attendStatus;//考勤情况
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
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(String arriveTime) {
		this.arriveTime = arriveTime;
	}
	public String getAttendStatus() {
		return attendStatus;
	}
	public void setAttendStatus(String attendStatus) {
		this.attendStatus = attendStatus;
	}
     
}
