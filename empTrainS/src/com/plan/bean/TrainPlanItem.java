package com.plan.bean;

import java.io.Serializable;
import java.util.Date;

public class TrainPlanItem implements Serializable{
	private String TRAIN_ITEM_ID;
	private String tRAIN_PLAN_ID;
	private String TRAIN_CONTENT;
	private String TRAIN_PURPOSE;
	private String CLASS_COUNT;
	private String TEACHER;
	private String ZY_NAME;
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
	@Override
	public String toString() {
		return TRAIN_ITEM_ID + " : " + tRAIN_PLAN_ID + " : " + TRAIN_CONTENT + " : "
				 + TRAIN_PURPOSE + " : " + CLASS_COUNT + " : " + TEACHER + " : " +
				 ZY_NAME;
	}
}
