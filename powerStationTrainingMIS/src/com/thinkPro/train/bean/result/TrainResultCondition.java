package com.thinkPro.train.bean.result;

public class TrainResultCondition {
	private String trainPlanYear;
	private String major;
	private String trainPlanType;
	private String isFinish;

	public String getTrainPlanYear() {
		return trainPlanYear;
	}

	public void setTrainPlanYear(String trainPlanYear) {
		this.trainPlanYear = trainPlanYear;
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

	@Override
	public String toString() {
		return "TrainResultCondition [trainPlanYear=" + trainPlanYear
				+ ", major=" + major + ", trainPlanType=" + trainPlanType
				+ ", isFinish=" + isFinish + "]";
	}
}
