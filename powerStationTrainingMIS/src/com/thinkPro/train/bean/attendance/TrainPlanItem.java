package com.thinkPro.train.bean.attendance;

public class TrainPlanItem {
     private String major;
     private int classCount;
     private String trainPlanItemId;
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
	public String getTrainPlanItemId() {
		return trainPlanItemId;
	}
	public void setTrainPlanItemId(String trainPlanItemId) {
		this.trainPlanItemId = trainPlanItemId;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
     
}
