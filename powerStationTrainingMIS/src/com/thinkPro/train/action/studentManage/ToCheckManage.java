package com.thinkPro.train.action.studentManage;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.util.ArrangementUtil;
import com.thinkPro.train.db.util.TrainPlanUtil;

@SuppressWarnings("serial")
public class ToCheckManage extends ActionSupport{
	private String trainPlanId;
	private List<TrainPlanItem> trainPlanItems;
	private TrainPlanInfo trainPlanInfo;
	private String isFinish;
	public String getIsFinish() {
		return isFinish;
	}

	public void setIsFinish(String isFinish) {
		this.isFinish = isFinish;
	}

	private List<Integer> nums = new ArrayList<Integer>();
	

	public List<Integer> getNums() {
		return nums;
	}

	public void setNums(List<Integer> nums) {
		this.nums = nums;
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

	public String getTrainPlanId() {
		return trainPlanId;
	}

	public void setTrainPlanId(String trainPlanId) {
		this.trainPlanId = trainPlanId;
	}

	@Override
	public String execute() throws Exception {
		TrainPlanUtil trainPlanUtil = new TrainPlanUtil();
		ArrangementUtil arrangementUtil = new ArrangementUtil();
		this.trainPlanItems = trainPlanUtil.getTrainPlanItemByInfoId(trainPlanId);
		this.trainPlanInfo = trainPlanUtil.getTrainPlanInfoById(trainPlanId);
		
		for(TrainPlanItem trainPlanItem : trainPlanItems){
			int a = arrangementUtil.getStudentNumByItemId(trainPlanItem.getTrainItemId());
			System.out.println(trainPlanItem.getTrainItemId());
			nums.add(a);
			System.out.println(a);
		}
		
		return SUCCESS;
	}
}
