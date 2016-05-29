package com.plan.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.plan.bean.TrainPlan;

public class AddAction extends ActionSupport implements ModelDriven<TrainPlan>{
	TrainPlan trainPlan = new TrainPlan();
	
	
	public TrainPlan getTrainPlan() {
		return trainPlan;
	}

	public void setTrainPlan(TrainPlan trainPlan) {
		this.trainPlan = trainPlan;
	}

	public String doAdd(){
		return SUCCESS;
	}

	@Override
	public TrainPlan getModel() {
		return trainPlan;
	}
}
