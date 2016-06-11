package com.thinkPro.train.bean.plan;

import java.io.Serializable;

@SuppressWarnings("serial")
public class TrainPlanItem implements Serializable{
	
	private String trainItemId;
	private String trainPlanId;
	private String trainContent;
	private String trainPurpose;
	private String classCount;
	private String teacher;
	private String major;
	public String getTrainItemId() {
		return trainItemId;
	}
	public void setTrainItemId(String trainItemId) {
		this.trainItemId = trainItemId;
	}
	public String getTrainPlanId() {
		return trainPlanId;
	}
	public void setTrainPlanId(String trainPlanId) {
		this.trainPlanId = trainPlanId;
	}
	public String getTrainContent() {
		return trainContent;
	}
	public void setTrainContent(String trainContent) {
		this.trainContent = trainContent;
	}
	public String getTrainPurpose() {
		return trainPurpose;
	}
	public void setTrainPurpose(String trainPurpose) {
		this.trainPurpose = trainPurpose;
	}
	public String getClassCount() {
		return classCount;
	}
	public void setClassCount(String classCount) {
		this.classCount = classCount;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	

	
}
