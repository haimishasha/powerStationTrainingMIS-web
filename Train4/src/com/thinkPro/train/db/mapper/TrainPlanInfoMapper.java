package com.thinkPro.train.db.mapper;

import java.util.List;

import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;

public interface TrainPlanInfoMapper {

	public List<TrainPlan> getAllInfo();
	public List<TrainPlan> getInfoByIf(TrainPlan trainPlan);
	public TrainPlanInfo getTrainPlanInfoById(String trainPlanId);
	public String getNextPlanId();
	public int addTrainPlanInfo(TrainPlanInfo trianPlanInfo);
	public int updateTrainPlanInfo(TrainPlanInfo trainPlanInfo);
	public int deleteTrainPlanInfo(String trainPlanInfoId);
}
