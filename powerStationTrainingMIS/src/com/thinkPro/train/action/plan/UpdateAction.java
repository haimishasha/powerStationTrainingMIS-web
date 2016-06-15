package com.thinkPro.train.action.plan;

import java.sql.SQLException;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.util.TrainPlanUtil;


public class UpdateAction extends ActionSupport {
	TrainPlanInfo trainPlanInfo ;
	List<TrainPlanItem> trainPlanItems;

	public List<TrainPlanItem> getTrainPlanItems() {
		return trainPlanItems;
	}

	public void setTrainPlanItems(List<TrainPlanItem> trainPlanItems) {
		this.trainPlanItems = trainPlanItems;
	}

	public TrainPlanInfo getTrainPlanInfo() {
		return trainPlanInfo;
	}

	public void setTrainPlanInfo(TrainPlanInfo trainPlanInfo) {
		this.trainPlanInfo = trainPlanInfo;
	}

	public String doUpdate() throws SQLException {
			TrainPlanUtil trainPlanUtil = new TrainPlanUtil();
			trainPlanUtil.addTrainPlan(trainPlanInfo, trainPlanItems);
			return SUCCESS;
	}

	
}
