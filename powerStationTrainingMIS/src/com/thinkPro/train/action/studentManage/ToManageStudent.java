package com.thinkPro.train.action.studentManage;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ToManageStudent extends ActionSupport{
	private String trainItemId;
	
	public String getTrainItemId() {
		return trainItemId;
	}

	public void setTrainItemId(String trainItemId) {
		this.trainItemId = trainItemId;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
}
