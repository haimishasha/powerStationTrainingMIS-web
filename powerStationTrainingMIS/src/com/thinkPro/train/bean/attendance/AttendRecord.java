package com.thinkPro.train.bean.attendance;

public class AttendRecord {
     private String staffId;//员工ID
     private String trainPlanItemId;//培训专业id   
     private String arriveTime;//到课时间
     private String attendStatus;//考勤情况
	public String getStaffId() {
		return staffId;
	}
	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}
	public String getTrainPlanItemId() {
		return trainPlanItemId;
	}
	public void setTrainPlanItemId(String trainPlanItemId) {
		this.trainPlanItemId = trainPlanItemId;
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
