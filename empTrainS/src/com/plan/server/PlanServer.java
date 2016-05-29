package com.plan.server;

import java.util.List;

import com.plan.bean.TrainPlan;
import com.plan.bean.TrainPlanInfo;
import com.plan.bean.TrainPlanItem;

public class PlanServer {
	public static boolean addTrainPlan(TrainPlanInfo trainPlanInfo, List<TrainPlanItem> trainPlanItems){
//		保存TrainPlanInfo ， TrainPlanItem
		return true;
	}
	
	public static TrainPlan searchTrainPlan(TrainPlan trainPlan){
		TrainPlan t = null;
//		传送trainplan 返回一个trainplan
		return  t;
	}
	
	public static boolean deleteTrainPlan(String id){
//		传送一个TrainPlanInfode id 在数据库中进行删除
		return  true;
	}
	
	public static boolean modifyTrainPlan(TrainPlanInfo trainPlanInfo, List<TrainPlanItem> trainPlanItems){
//		1.通过一个TRAIN_PLAN_ID 查询得出所有 list<TRAIN_ITEM_ID>
//		2.update TrainPlanInfo
//		3.TRAIN_ITEM_ID
		
		return true;
	}
}
