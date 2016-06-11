package com.thinkPro.train.action.plan;

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
	private TrainPlanInfo trainPlanInfo;
	private TrainPlanItem trainPlanItem;
	private List<TrainPlanItem> trainPlanItemList;
	private List<TrainPlan> trainPlanList ;
	
	
	public String doSearch(){
		
		
		TrainPlanUtil  trainPlanUtil=new TrainPlanUtil();
	    trainPlanList = trainPlanUtil.getInfoByIf(trainPlan);
	    System.out.println("zhesh"+trainPlanList.toString());
	    return SUCCESS;
	}
	
	
	public TrainPlan getTrainPlan() {
		return trainPlan;
	}
	public void setTrainPlan(TrainPlan trainPlan) {
		this.trainPlan = trainPlan;
	}
	public TrainPlanInfo getTrainPlanInfo() {
		return trainPlanInfo;
	}
	public void setTrainPlanInfo(TrainPlanInfo trainPlanInfo) {
		this.trainPlanInfo = trainPlanInfo;
	}
	public TrainPlanItem getTrainPlanItem() {
		return trainPlanItem;
	}
	public void setTrainPlanItem(TrainPlanItem trainPlanItem) {
		this.trainPlanItem = trainPlanItem;
	}
		
	public List<TrainPlanItem> getTrainPlanItemList() {
		return trainPlanItemList;
	}
	public void setTrainPlanItemList(List<TrainPlanItem> trainPlanItemList) {
		this.trainPlanItemList = trainPlanItemList;
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
