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


public class UpdateAction extends ActionSupport implements ModelDriven<TrainPlan>{
	TrainPlan trainPlan;
	private String planId;
	private String	itemsId;
	TrainPlanItem trainPlanItem2[];
	TrainPlanInfo trainPlanInfo=new TrainPlanInfo();
	TrainPlanItem trainPlanItem=new TrainPlanItem();
	List<TrainPlanItem> listPlanItems=new ArrayList<TrainPlanItem>();
	TrainPlanCRUD trainPlanCRUD=new TrainPlanCRUD();
	
	public String doupdate(){
	     String itemsid[]=itemsId.split(",");
		//将多个trainPlanItem放入list
//		for(int i=0;i<itemsid.length;i++){
//			trainPlanItem.setTRAIN_ITEM_ID(itemsid[i]);
//			
//			listPlanItems.add(trainPlanItem);
//			
//		}
		
		for(int i=0;i<trainPlanItem2.length;i++){
			listPlanItems.add(trainPlanItem);
		}
		
	//	System.out.println("planId"+planId+"itemsId"+itemsId);
		
		//在这里将update页面的多个trainpalninfo及对应的items保存
	boolean t= trainPlanCRUD.addTrainPlan(trainPlanInfo, listPlanItems);
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
	public String getPlanId() {
		return planId;
	}
	public void setPlanId(String planId) {
		this.planId = planId;
	}
	public String getItemsId() {
		return itemsId;
	}
	public void setItemsId(String itemsId) {
		this.itemsId = itemsId;
	}

	public TrainPlanItem[] getTrainPlanItem2() {
		return trainPlanItem2;
	}

	public void setTrainPlanItem2(TrainPlanItem[] trainPlanItem2) {
		this.trainPlanItem2 = trainPlanItem2;
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
}
