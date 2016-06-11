package com.thinkPro.train.db.mapper;

import java.util.List;

import com.thinkPro.train.bean.plan.TrainPlanItem;

public interface TrainPlanItemMapper {
	public TrainPlanItem getTrainPlanItemByItemId(String trainPlanItemId);
	public List<TrainPlanItem> getTrainPlanItemByInfoId(String trainPlanInfoId);
	public List<String> getPlanItemIdByInfoId(String trainPlanInfoId);
	public String getNextPlanItemIdByInfoId(String trainPlanInfoId);
	public int addTrainPlanItem(TrainPlanItem trainPlanItem);
	public int updateTrainPlanItem(TrainPlanItem trainPlanItem);
	public int deleteTrainPlanItem(String trainPlanItemId);
}
