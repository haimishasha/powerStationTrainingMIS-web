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
		AttendanceUtil attendanceUtil=new AttendanceUtil();
		trainPlanCondition.setTrainPlanName("汽机培训计划");
		trainPlanCondition.setTrainPlanType("新员工入厂培训");
		trainPlanCondition.setTrainPlanYear("2016");
		trainPlanInfoList=attendanceUtil.getTrainPlanInfoListByCondition(trainPlanCondition);
	    System.out.println(trainPlanInfoList.get(0).getTrainPlanId());
		return SUCCESS;
    }
	
	
	public TrainPlanCondition getTrainPlanCondition() {
		return trainPlanCondition;
	}

	public void setTrainPlanCondition(TrainPlanCondition trainPlanCondition) {
		this.trainPlanCondition = trainPlanCondition;
	}
	
}
