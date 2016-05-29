package com.plan.bean;

import java.util.Date;

public class TrainPlan {
	private int num;
	private String TRAIN_PLAN_ID;
	private String TRAIN_PLAN_NAME;
	private String TRAIN_PLAN_YEAR;
	private Date START_TIME;
	private Date END_TIME;
	private String TRAIN_ITEM_ID;
	private String tRAIN_PLAN_ID;
	private String TRAIN_CONTENT;
	private String TRAIN_PURPOSE;
	private String CLASS_COUNT;
	private String TEACHER;
	private String ZY_NAME;
	private String TRAIN_PLAN_TYPE;
	private String TRAIN_TIME;
	
	public String getTRAIN_TIME() {
		return TRAIN_TIME;
	}
	public void setTRAIN_TIME(String tRAIN_TIME) {
		TRAIN_TIME = tRAIN_TIME;
	}
	public void setIS_FINISH(String iS_FINISH) {
		IS_FINISH = iS_FINISH;
	}
	private String IS_FINISH;
	public String getIS_FINISH() {
		return IS_FINISH;
	}
	public String getTRAIN_PLAN_TYPE() {
		return TRAIN_PLAN_TYPE;
	}
	public void setTRAIN_PLAN_TYPE(String tRAIN_PLAN_TYPE) {
		TRAIN_PLAN_TYPE = tRAIN_PLAN_TYPE;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getTRAIN_ITEM_ID() {
		return TRAIN_ITEM_ID;
	}
	public void setTRAIN_ITEM_ID(String tRAIN_ITEM_ID) {
		TRAIN_ITEM_ID = tRAIN_ITEM_ID;
	}
	public String gettRAIN_PLAN_ID() {
		return tRAIN_PLAN_ID;
	}
	public void settRAIN_PLAN_ID(String tRAIN_PLAN_ID) {
		this.tRAIN_PLAN_ID = tRAIN_PLAN_ID;
	}
	public String getTRAIN_CONTENT() {
		return TRAIN_CONTENT;
	}
	public void setTRAIN_CONTENT(String tRAIN_CONTENT) {
		TRAIN_CONTENT = tRAIN_CONTENT;
	}
	public String getTRAIN_PURPOSE() {
		return TRAIN_PURPOSE;
	}
	public void setTRAIN_PURPOSE(String tRAIN_PURPOSE) {
		TRAIN_PURPOSE = tRAIN_PURPOSE;
	}
	public String getCLASS_COUNT() {
		return CLASS_COUNT;
	}
	public void setCLASS_COUNT(String cLASS_COUNT) {
		CLASS_COUNT = cLASS_COUNT;
	}
	public String getTEACHER() {
		return TEACHER;
	}
	public void setTEACHER(String tEACHER) {
		TEACHER = tEACHER;
	}
	public String getZY_NAME() {
		return ZY_NAME;
	}
	public void setZY_NAME(String zY_NAME) {
		ZY_NAME = zY_NAME;
	}
	
}
