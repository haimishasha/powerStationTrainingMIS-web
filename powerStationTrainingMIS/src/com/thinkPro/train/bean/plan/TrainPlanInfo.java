package com.thinkPro.train.bean.plan;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class TrainPlanInfo implements Serializable{
	private String trainPlanId;
	private String trainPlanName;
	private String trainPlanYear;
	private Date startTime;
	private Date endTime;
	private String isFinish;
	private String trainPlanType;
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
	public String getIsFinish() {
		return isFinish;
	}
	public void setIsFinish(String isFinish) {
		this.isFinish = isFinish;
	}
	public String getTrainPlanType() {
		return trainPlanType;
	}
	public void setTrainPlanType(String trainPlanType) {
		this.trainPlanType = trainPlanType;
	}
		
}
