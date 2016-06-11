package com.thinkPro.train.db.base;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.mapper.TrainPlanItemMapper;

public class TrainPlanItemBase {

	private static ApplicationContext applicationContext;
	private static TrainPlanItemMapper trainPlanItemMapper;
	
	static{
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		trainPlanItemMapper = (TrainPlanItemMapper)applicationContext.getBean("trainPlanItemMapper");
	}
	public TrainPlanItem getTrainPlanItemByItemId(String itemId){
		TrainPlanItem item = trainPlanItemMapper.getTrainPlanItemByItemId(itemId);
		return item;
	}
	
	public List<TrainPlanItem> getTrainPlanItemByInfoId(String infoId){
		List<TrainPlanItem> items = trainPlanItemMapper.getTrainPlanItemByInfoId(infoId);
		return items;
	}
	
	public List<String> getItemIdByInfoId(String infoId){
		List<String> itemIds = trainPlanItemMapper.getPlanItemIdByInfoId(infoId);
		return itemIds;
	}
	
	public String getNextPlanItemIdByInfoId(String infoId){
		String maxItemId = trainPlanItemMapper.getNextPlanItemIdByInfoId(infoId);
		return maxItemId;
	}
	
	public boolean AddTrainPlanItem(TrainPlanItem planitem) {
		boolean result = false;
		int temp = trainPlanItemMapper.addTrainPlanItem(planitem);
		if(temp > -1){
			result = true;
		}
		return result;
	}
	
	public boolean UpdateTrainPlanItem(TrainPlanItem planitem) {
		boolean result = false;
		int temp = trainPlanItemMapper.updateTrainPlanItem(planitem);
		if(temp > -1){
			result = true;
		}
		return result;
	}
	
	public boolean DeleteTrainPlanItem(String trainPlanItemId){
		boolean result = false;
		int temp = trainPlanItemMapper.deleteTrainPlanItem(trainPlanItemId);
		if(temp > -1){
			result = true;
		}
		return result;
	}
}
