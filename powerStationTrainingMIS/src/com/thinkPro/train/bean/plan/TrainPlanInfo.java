package com.thinkPro.train.bean.plan;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class TrainPlanInfo implements Serializable{
	private String trainPlanId;
	private String trainPlanName;
	private String trainPlanYear;
	private String startTime;
	private String endTime;
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
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	@Override
	public String toString() {
		return "TrainPlanInfo [trainPlanId=" + trainPlanId + ", trainPlanName="
				+ trainPlanName + ", trainPlanYear=" + trainPlanYear
				+ ", startTime=" + startTime + ", endTime=" + endTime
				+ ", isFinish=" + isFinish + ", trainPlanType=" + trainPlanType
				+ "]";
	}
		
}
