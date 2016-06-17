package com.thinkPro.train.bean.attendance;

public class RecordAttend {
     private String staffId;
     private String trainPlanItemId;
     private String arriveTime;
     private String attendStatus;
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
