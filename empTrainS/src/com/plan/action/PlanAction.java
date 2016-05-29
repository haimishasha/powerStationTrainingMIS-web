package com.plan.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.plan.bean.TrainPlan;
import com.plan.bean.TrainPlanInfo;
import com.plan.bean.TrainPlanItem;
import com.plan.server.PlanServer;
import com.thinkPro.db.TrainPlanCRUD;

//	目前只用这个，其他实现
public class PlanAction extends ActionSupport implements ModelDriven<TrainPlan>{
	private TrainPlan trainPlan = new TrainPlan();
	private TrainPlanInfo trainPlanInfo;
	private TrainPlanItem trainPlanItem;
	private List<TrainPlanItem> trainPlanItems;
	private List<TrainPlan> trainPlans ;
	
	public List<TrainPlan> getTrainPlans() {
		return trainPlans;
	}
	public void setTrainPlans(List<TrainPlan> trainPlans) {
		this.trainPlans = trainPlans;
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
	public List<TrainPlanItem> getTrainPlanItems() {
		return trainPlanItems;
	}
	public void setTrainPlanItems(List<TrainPlanItem> trainPlanItems) {
		this.trainPlanItems = trainPlanItems;
	}
	
//	接下去是实现的方法
	
//	保存数据
	public String doAdd(){
		if (PlanServer.addTrainPlan(trainPlanInfo, trainPlanItems)) {
			return SUCCESS;
		}
		return ERROR;
	}
	
//	查询数据
	public String doSearch(){
	trainPlans = new TrainPlanCRUD().getInfoByIf(trainPlan);
		return SUCCESS;
	}
	
//	删除数据
	public String doDelete(){
		if (PlanServer.deleteTrainPlan(trainPlan.gettRAIN_PLAN_ID())) {
			return SUCCESS;
		}
		return ERROR;
	}
	
//	修改数据
	public String doModify(){
		if (PlanServer.modifyTrainPlan(trainPlanInfo, trainPlanItems)) {
			return SUCCESS;
		}
		return ERROR;
	}
	@Override
	public TrainPlan getModel() {
		return trainPlan;
	}
}
