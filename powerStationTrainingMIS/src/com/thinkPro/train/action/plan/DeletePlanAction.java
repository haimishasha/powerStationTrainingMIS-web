package com.thinkPro.train.action.plan;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.util.TrainPlanUtil;

@SuppressWarnings("serial")
public class DeletePlanAction extends ActionSupport{
   private String trainPlanId;
  
   private List<TrainPlanItem> trainPlanItems ;
	public String doDelete() throws SQLException{
		System.out.println(trainPlanId);
		TrainPlanUtil trainPlanUtil = new TrainPlanUtil();
		trainPlanUtil.deleteTrainPlan(trainPlanId);
		return SUCCESS;
	}


	public String getTrainPlanId() {
		return trainPlanId;
	}


	public void setTrainPlanId(String trainPlanId) {
		this.trainPlanId = trainPlanId;
	}
}
