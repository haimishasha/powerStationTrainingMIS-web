package com.thinkPro.train.action.plan;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.util.TrainPlanUtil;


public class UpdateAction extends ActionSupport implements ModelDriven<TrainPlan>{
	
	TrainPlan trainPlan=new TrainPlan();
	private String	itemsId;
	List<TrainPlanItem> trainPlanItemList=new ArrayList<TrainPlanItem>();
	TrainPlanInfo trainPlanInfo=new TrainPlanInfo();
	TrainPlanItem trainPlanItem=new TrainPlanItem();
	List<TrainPlanItem> listPlanItem=new ArrayList<TrainPlanItem>();
	TrainPlanUtil trainPlanUtil=new TrainPlanUtil();
	
	public String doUpdate(){
	     String itemsid[]=itemsId.split(",");
		
		for(int i=0;i<trainPlanItemList.size();i++){
			listPlanItem.add(trainPlanItem);
		}
	boolean t= trainPlanUtil.addTrainPlan(trainPlanInfo, listPlanItem);
	if(t){	
		
		return SUCCESS;
	}else{
		return ERROR;
	}

	
	}

	@Override
	public TrainPlan getModel() {
		// TODO Auto-generated method stub
		return trainPlan;
	}

	public TrainPlan getTrainPlan() {
		return trainPlan;
	}

	public void setTrainPlan(TrainPlan trainPlan) {
		this.trainPlan = trainPlan;
	}

	public String getItemsId() {
		return itemsId;
	}

	public void setItemsId(String itemsId) {
		this.itemsId = itemsId;
	}

	public List<TrainPlanItem> getTrainPlanItemList() {
		return trainPlanItemList;
	}

	public void setTrainPlanItemList(List<TrainPlanItem> trainPlanItemList) {
		this.trainPlanItemList = trainPlanItemList;
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

	public List<TrainPlanItem> getListPlanItem() {
		return listPlanItem;
	}

	public void setListPlanItem(List<TrainPlanItem> listPlanItem) {
		this.listPlanItem = listPlanItem;
	}
	
}
