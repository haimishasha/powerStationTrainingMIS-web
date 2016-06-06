package com.plan.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.plan.bean.TrainPlanInfo;
import com.plan.bean.TrainPlanItem;
import com.plan.util.UUIDUtil;
import com.thinkPro.db.TrainPlanCRUD;

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

		// System.out.println("后台到我了");

		String[] z = trainPlanItems.get(0).getZY_NAME().split(", ");
		String[] p = trainPlanItems.get(0).getTRAIN_PURPOSE().split(", ");
		String[] c = trainPlanItems.get(0).getTRAIN_CONTENT().split(", ");
		String[] cc = trainPlanItems.get(0).getCLASS_COUNT().split(", ");
		String[] t = trainPlanItems.get(0).getTEACHER().split(", ");

		String trainPlanId = UUIDUtil.getUUid();
		trainPlanInfo.setTRAIN_PLAN_ID(trainPlanId);

		// System.out.println(trainPlanInfo);

		for (int i = 0; i < t.length; i++) {
			// System.out.println(z[i] + ":" + p[i] + ":" + c[i] + ":" + cc[i] +
			// ":" + t[i]);
			TrainPlanItem trainPlanItem = new TrainPlanItem();
			trainPlanItem.settRAIN_PLAN_ID(trainPlanId);
			trainPlanItem.setTRAIN_ITEM_ID(UUIDUtil.getUUid());
			trainPlanItem.setZY_NAME(z[i]);
			trainPlanItem.setTRAIN_PURPOSE(p[i]);
			trainPlanItem.setTRAIN_CONTENT(c[i]);
			trainPlanItem.setCLASS_COUNT(cc[i]);
			trainPlanItem.setTEACHER(t[i]);
			trainPlanItems2.add(trainPlanItem);

		}

		if (new TrainPlanCRUD().addTrainPlan(trainPlanInfo, trainPlanItems2)) {
			return SUCCESS;
		}

		return ERROR;
	}

	@Override
	public TrainPlanInfo getModel() {
		return trainPlanInfo;
	}

}
