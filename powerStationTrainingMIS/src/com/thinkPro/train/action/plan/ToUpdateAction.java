package com.thinkPro.train.action.plan;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.message.StructuredDataMessage.Format;
import org.jboss.weld.context.RequestContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.util.TrainPlanUtil;

public class ToUpdateAction extends ActionSupport{

	private List<TrainPlanItem> trainPlanItems ;
	private TrainPlanInfo trainPlanInfo;
	private String trainPlanId;
	

	public String toUpdateView() throws SQLException{
		
		TrainPlanUtil  trainPlanUtil=new TrainPlanUtil();
		trainPlanInfo=trainPlanUtil.getTrainPlanInfoById(trainPlanId);
		trainPlanItems=trainPlanUtil.getTrainPlanItemByInfoId(trainPlanId);
	
	  
	   
		return SUCCESS;
	}
	

	public String getTrainPlanId() {
		return trainPlanId;
	}
	public void setTrainPlanId(String trainPlanId) {
		this.trainPlanId = trainPlanId;
	}
	
	public TrainPlanInfo getTrainPlanInfo() {
		return trainPlanInfo;
	}
	public void setTrainPlanInfo(TrainPlanInfo trainPlanInfo) {
		this.trainPlanInfo = trainPlanInfo;
	}
	public List<TrainPlanItem> getTrainPlanItems() {
		return trainPlanItems;
	}
	public void setTrainPlanItems(List<TrainPlanItem> trainPlanItems) {
		this.trainPlanItems = trainPlanItems;
	}
	
}
