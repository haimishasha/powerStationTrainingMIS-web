package com.thinkPro.train.action.plan;

import java.sql.SQLException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.util.TrainPlanUtil;

//	目前只用这个，其他实现
public class SearchAction extends ActionSupport implements ModelDriven<TrainPlan>{
	private TrainPlan trainPlan = new TrainPlan();
	
	private List<TrainPlan> trainPlanList ;
	
	
	public String doSearch() throws SQLException{
		
		
		TrainPlanUtil  trainPlanUtil=new TrainPlanUtil();
	    trainPlanList = trainPlanUtil.getInfoByIf(trainPlan);
	   
	    return SUCCESS;
	}
	
	
	public TrainPlan getTrainPlan() {
		return trainPlan;
	}
	public void setTrainPlan(TrainPlan trainPlan) {
		this.trainPlan = trainPlan;
	}
	
	public List<TrainPlan> getTrainPlanList() {
		return trainPlanList;
	}
	public void setTrainPlanList(List<TrainPlan> trainPlanList) {
		this.trainPlanList = trainPlanList;
	}
	
	@Override
	public TrainPlan getModel() {
		return trainPlan;
	}
}
