package com.thinkPro.train.test.db;

import java.util.List;

import org.junit.Test;

import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.db.util.TrainPlanUtil;

public class TestTrainPlan {

	TrainPlanUtil util = new TrainPlanUtil();
	@Test
	public void testGetAllInfo() {
		List<TrainPlan> plans = util.getAllInfo();
		System.out.println(plans);
	}
	@Test
	public void testGetInfoByIf() {
		TrainPlan trainPlan = new TrainPlan();
		trainPlan.setIsFinish("培训中");
		List<TrainPlan> plans = util.getInfoByIf(trainPlan);
		System.out.println(plans);
	}
	
	@Test
	public void testGetTrainPlanInfoById(){
		TrainPlanInfo trainPlanInfo = util.getTrainPlanInfoById("tp0001");
		System.out.println(trainPlanInfo);
	}
}
