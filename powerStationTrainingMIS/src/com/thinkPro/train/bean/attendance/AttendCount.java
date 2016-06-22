package com.thinkPro.train.bean.attendance;


public class AttendCount {
	private String staffId;//员工id
	private String trainItemId; //培训明细Id
	private String stuName;//员工名字
	private String departmentName;//部门名称
	private int attendNum;//正常到勤次数
	private int absenceNum;//缺勤次数
	private int lateCount;//迟到次数
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
