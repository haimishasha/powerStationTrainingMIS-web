package com.thinkPro.train.bean.plan;

import java.util.Date;

public class TrainPlan {
	private int num;
	private String trainPlanId;
	private String trainPlanName;
	private String trainPlanYear;
	private Date startTime;
	private Date endTime;
	private String trainItemId;
	private String trainContent;
	private String trainPurpose;
	private String classCount;
	private String teacher;
	private String major;	
	private String trainTime;
	private String trainPlanType;
	private String isFinish;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTrainPlanId() {
		return trainPlanId;
	}
	public void setTrainPlanId(String trainPlanId) {
		this.trainPlanId = trainPlanId;
	}
	public String getTrainPlanName() {
		return trainPlanName;
	}
	public void setTrainPlanName(String trainPlanName) {
		this.trainPlanName = trainPlanName;
	}
	public String getTrainPlanYear() {
		return trainPlanYear;
	}
	public void setTrainPlanYear(String trainPlanYear) {
		this.trainPlanYear = trainPlanYear;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getTrainItemId() {
		return trainItemId;
	}
	public void setTrainItemId(String trainItemId) {
		this.trainItemId = trainItemId;
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
	public String getTrainPlanType() {
		return trainPlanType;
	}
	public void setTrainPlanType(String trainPlanType) {
		this.trainPlanType = trainPlanType;
	}
	public String getIsFinish() {
		return isFinish;
	}
	public void setIsFinish(String isFinish) {
		this.isFinish = isFinish;
	}
	public String getTrainTime() {
		return trainTime;
	}
	public void setTrainTime(String trainTime) {
		this.trainTime = trainTime;
	}
	
	
}
