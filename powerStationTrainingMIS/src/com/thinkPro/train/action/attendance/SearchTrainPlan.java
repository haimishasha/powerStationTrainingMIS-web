package com.thinkPro.train.action.attendance;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.TrainPlanCondition;
import com.thinkPro.train.bean.attendance.TrainPlanInfo;
/**
 * @author GuoFei
 * 日期：2016-6-17
 * 功能：查询培训计划信息
 * */
public class SearchTrainPlan extends ActionSupport {
	 TrainPlanCondition trainPlanCondition=new TrainPlanCondition();
	 
     List<TrainPlanInfo> trainPlanInfoList=new ArrayList<TrainPlanInfo>();
	
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
