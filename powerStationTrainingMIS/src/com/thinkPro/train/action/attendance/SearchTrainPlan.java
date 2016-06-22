package com.thinkPro.train.action.attendance;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.TrainPlanCondition;
import com.thinkPro.train.bean.attendance.TrainPlanInfo;
import com.thinkPro.train.db.util.AttendanceUtil;
/**
 * @author GuoFei
 * 日期：2016-6-17
 * 功能：查询培训计划信息
 * */
public class SearchTrainPlan extends ActionSupport {
	 TrainPlanCondition trainPlanCondition=new TrainPlanCondition();
	 
     List<TrainPlanInfo> trainPlanInfoList=new ArrayList<TrainPlanInfo>();
	
	public String execute(){
	//	System.out.println("陪讯专业名字"+trainPlanCondition.getTrainPlanName());
		AttendanceUtil attendanceUtil=new AttendanceUtil();
		
		trainPlanInfoList=attendanceUtil.getTrainPlanInfoListByCondition(trainPlanCondition);
	    System.out.println("进入啊vtion"+trainPlanInfoList.get(0).getTrainPlanType());
		return SUCCESS;
    }
	
	
	public TrainPlanCondition getTrainPlanCondition() {
		return trainPlanCondition;
	}

	public void setTrainPlanCondition(TrainPlanCondition trainPlanCondition) {
		this.trainPlanCondition = trainPlanCondition;
	}


	public List<TrainPlanInfo> getTrainPlanInfoList() {
		return trainPlanInfoList;
	}


	public void setTrainPlanInfoList(List<TrainPlanInfo> trainPlanInfoList) {
		this.trainPlanInfoList = trainPlanInfoList;
	}
	
}
