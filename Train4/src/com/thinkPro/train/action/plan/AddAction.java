package com.thinkPro.train.action.plan;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.util.TrainPlanUtil;

@SuppressWarnings("serial")
public class AddAction extends ActionSupport implements
		ModelDriven<TrainPlanInfo> {
	TrainPlanInfo trainPlanInfo = new TrainPlanInfo();
	List<TrainPlanItem> trainPlanItems;
	List<TrainPlanItem> trainPlanItems2 = new ArrayList<TrainPlanItem>();

	public List<TrainPlanItem> getTrainPlanItems() {
		return trainPlanItems;
	}

	public void setTrainPlanItems(List<TrainPlanItem> trainPlanItems) {
		this.trainPlanItems = trainPlanItems;
	}

	public TrainPlanInfo getTrainPlanInfo() {
		return trainPlanInfo;
	}

	public void setTrainPlanInfo(TrainPlanInfo trainPlanInfo) {
		this.trainPlanInfo = trainPlanInfo;
	}

	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String doAdd() {

		// System.out.println("后台到我�?);

		String[] z = trainPlanItems.get(0).getMajor().split(", ");
		String[] p = trainPlanItems.get(0).getTrainPurpose().split(", ");
		String[] c = trainPlanItems.get(0).getTrainContent().split(", ");
		String[] cc = trainPlanItems.get(0).getClassCount().split(", ");
		String[] t = trainPlanItems.get(0).getTeacher().split(", ");

		// System.out.println(trainPlanInfo);

		for (int i = 0; i < t.length; i++) {
			// System.out.println(z[i] + ":" + p[i] + ":" + c[i] + ":" + cc[i] +
			// ":" + t[i]);
			TrainPlanItem trainPlanItem = new TrainPlanItem();
			trainPlanItem.setMajor(z[i]);
			trainPlanItem.setTrainPurpose(p[i]);
			trainPlanItem.setTrainContent(c[i]);
			trainPlanItem.setClassCount(cc[i]);
			trainPlanItem.setTeacher(t[i]);
			trainPlanItems2.add(trainPlanItem);

		}

		if (new TrainPlanUtil().addTrainPlan(trainPlanInfo, trainPlanItems2)) {
			return SUCCESS;
		}

		return ERROR;
	}

	@Override
	public TrainPlanInfo getModel() {
		return trainPlanInfo;
	}

}
