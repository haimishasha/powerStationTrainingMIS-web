package com.thinkPro.train.bean.attendance;

public class TrainPlanItem {
     private String major;
     private int classCount;
     private String trainItemId;
     private String teacher;
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public int getClassCount() {
		return classCount;
	}
	public void setClassCount(int classCount) {
		this.classCount = classCount;
	}
	
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getTrainItemId() {
		return trainItemId;
	}
	public void setTrainItemId(String trainItemId) {
		this.trainItemId = trainItemId;
	}
     
}
