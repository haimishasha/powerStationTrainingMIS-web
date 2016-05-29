package com.plan.bean;

import java.io.Serializable;
import java.util.Date;

public class TrainPlanInfo implements Serializable{
	private String TRAIN_PLAN_ID;
	private String TRAIN_PLAN_NAME;
	private String TRAIN_PLAN_YEAR;
	private Date START_TIME;
	private Date END_TIME;
	private String IS_FINISH;
	private String TRAIN_PLAN_TYPE;
	public String getTRAIN_PLAN_TYPE() {
		return TRAIN_PLAN_TYPE;
	}
	public String getIS_FINISH() {
		return IS_FINISH;
	}
	public void setIS_FINISH(String iS_FINISH) {
		IS_FINISH = iS_FINISH;
	}
	public void setTRAIN_PLAN_TYPE(String tRAIN_PLAN_TYPE) {
		TRAIN_PLAN_TYPE = tRAIN_PLAN_TYPE;
	}
	public String getTRAIN_PLAN_ID() {
		return TRAIN_PLAN_ID;
	}
	public void setTRAIN_PLAN_ID(String tRAIN_PLAN_ID) {
		TRAIN_PLAN_ID = tRAIN_PLAN_ID;
	}
	public String getTRAIN_PLAN_NAME() {
		return TRAIN_PLAN_NAME;
	}
	public void setTRAIN_PLAN_NAME(String tRAIN_PLAN_NAME) {
		TRAIN_PLAN_NAME = tRAIN_PLAN_NAME;
	}
	public String getTRAIN_PLAN_YEAR() {
		return TRAIN_PLAN_YEAR;
	}
	public void setTRAIN_PLAN_YEAR(String tRAIN_PLAN_YEAR) {
		TRAIN_PLAN_YEAR = tRAIN_PLAN_YEAR;
	}
	public Date getSTART_TIME() {
		return START_TIME;
	}
	public void setSTART_TIME(Date sTART_TIME) {
		START_TIME = sTART_TIME;
	}
	public Date getEND_TIME() {
		return END_TIME;
	}
	public void setEND_TIME(Date eND_TIME) {
		END_TIME = eND_TIME;
	}
//	@Override
//	public String toString() {
//		return "信息：" + " 年度" + TRAIN_PLAN_YEAR + " 名称" + TRAIN_PLAN_NAME;
//	}

}
