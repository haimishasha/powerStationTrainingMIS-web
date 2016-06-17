package com.thinkPro.train.action.attendance;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.TrainPlanCondition;
/**
 * @author GuoFei
 * 日期：2016-6-17
 * 功能：查询培训计划信息
 * */
public class SearchTrainPlan extends ActionSupport {
	TrainPlanCondition trainPlanCondition=new TrainPlanCondition();
	
   public String execute(){
	  
	  return SUCCESS;
  }
	public TrainPlanCondition getTrainPlanCondition() {
		return trainPlanCondition;
	}

	public void setTrainPlanCondition(TrainPlanCondition trainPlanCondition) {
		this.trainPlanCondition = trainPlanCondition;
	}
}
