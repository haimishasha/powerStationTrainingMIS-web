package com.plan.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.plan.bean.TrainPlan;
import com.thinkPro.db.TrainPlanCRUD;

public class DeleteAction extends ActionSupport{
	TrainPlan trainPlan = new TrainPlan();
	
	public TrainPlan getTrainPlan() {
		return trainPlan;
	}

	public void setTrainPlan(TrainPlan trainPlan) {
		this.trainPlan = trainPlan;
	}

	public String doDelete(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String trainPlanId = request.getParameter("trainPlanId");
		HttpServletResponse response = ServletActionContext.getResponse();
		
		if (new TrainPlanCRUD().deleteTrainPlan(trainPlanId)) {
			return SUCCESS;
		}
		return ERROR;
	}
}
