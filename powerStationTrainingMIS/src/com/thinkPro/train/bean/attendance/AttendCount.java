package com.thinkPro.train.bean.attendance;


public class AttendCount {
	private String staffId;
	private String stuName;
	private String departmentName;
	private int attendNum;
	private int absenceNum;
	private int lateCount;
	public String getStaffId() {
		return staffId;
	}
	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public int getAttendNum() {
		return attendNum;
	}
	public void setAttendNum(int attendNum) {
		this.attendNum = attendNum;
	}
	public int getAbsenceNum() {
		return absenceNum;
	}
	public void setAbsenceNum(int absenceNum) {
		this.absenceNum = absenceNum;
	}
	public int getLateCount() {
		return lateCount;
	}
	public void setLateCount(int lateCount) {
		this.lateCount = lateCount;
	}
	

}
