package com.thinkPro.train.action.plan;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.db.util.TrainPlanUtil;

@SuppressWarnings("serial")
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
		
		if (new TrainPlanUtil().deleteTrainPlan(trainPlanId)) {
			return SUCCESS;
		}
		return ERROR;
	}
}
