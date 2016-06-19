package com.thinkPro.train.bean.attendance;

public class StaffAttendInfo {
      private String arriveTime;//到课时间
      private String startTime;//上课时间
      private String attendStatus;//考勤情况
	public String getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(String arriveTime) {
		this.arriveTime = arriveTime;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getAttendStatus() {
		return attendStatus;
	}
	public void setAttendStatus(String attendStatus) {
		this.attendStatus = attendStatus;
	}
      
}
