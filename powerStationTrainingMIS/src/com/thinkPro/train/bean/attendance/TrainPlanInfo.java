package com.thinkPro.train.bean.attendance;

import java.util.Map;

public class TrainPlanInfo {
	private String trainPlanId;
	private String trainPlanYear;//培训计划年度
	private String trainPlanName;//培训计划名字
	private String trainTime;//培训时间
	private Map<String,String> major;//培训专业
	private String trainPlanType;//培训类型
	private int stuNum;//培训人数
	public String getTrainPlanId() {
		return trainPlanId;
	}
	public void setTrainPlanId(String trainPlanId) {
		this.trainPlanId = trainPlanId;
	}
	public String getTrainPlanYear() {
		return trainPlanYear;
	}
	public void setTrainPlanYear(String trainPlanYear) {
		this.trainPlanYear = trainPlanYear;
	}
	public String getTrainPlanName() {
		return trainPlanName;
	}
	public void setTrainPlanName(String trainPlanName) {
		this.trainPlanName = trainPlanName;
	}
	public String getTrainTime() {
		return trainTime;
	}
	public void setTrainTime(String trainTime) {
		this.trainTime = trainTime;
	}
	public Map<String, String> getMajor() {
		return major;
	}
	public void setMajor(Map<String, String> major) {
		this.major = major;
	}
	public String getTrainPlanType() {
		return trainPlanType;
	}
	public void setTrainPlanType(String trainPlanType) {
		this.trainPlanType = trainPlanType;
	}
	public int getStuNum() {
		return stuNum;
	}
	public void setStuNum(int stuNum) {
		this.stuNum = stuNum;
	}
	
	
}
