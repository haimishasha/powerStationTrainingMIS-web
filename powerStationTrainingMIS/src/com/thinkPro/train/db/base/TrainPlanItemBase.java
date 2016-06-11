package com.thinkPro.train.db.base;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.mapper.TrainPlanItemMapper;
/**
 * 
 * 培训计划明细数据库操作基层接口
 *
 */
public class TrainPlanItemBase {

	private ApplicationContext applicationContext;
	
	private TrainPlanItemMapper trainPlanItemMapper;
	
	public TrainPlanItemBase(){
		
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		trainPlanItemMapper = (TrainPlanItemMapper)applicationContext.getBean("trainPlanItemMapper");
	}
	/**
	 * 根据培训明细Id查询培训计划明细
	 * @param itemId
	 * @return
	 */
	public TrainPlanItem getTrainPlanItemByItemId(String itemId){
		
		TrainPlanItem item = trainPlanItemMapper.getTrainPlanItemByItemId(itemId);
		
		return item;
	}
	/**
	 * 根据培训计划Id查询培训计划明细
	 * @param infoId
	 * @return
	 */
	public List<TrainPlanItem> getTrainPlanItemByInfoId(String infoId){
		
		List<TrainPlanItem> items = trainPlanItemMapper.getTrainPlanItemByInfoId(infoId);
		
		return items;
	}
	/**
	 * 根据培训计划信息Id查询培训计划明细Id
	 * @param infoId
	 * @return
	 */
	public List<String> getItemIdByInfoId(String infoId){
		
		List<String> itemIds = trainPlanItemMapper.getPlanItemIdByInfoId(infoId);
		
		return itemIds;
	}
	/**
	 * 根据培训计划信息Id查询下一个培训计划明细Id
	 * @param infoId
	 * @return
	 */
	public String getNextPlanItemIdByInfoId(String infoId){
		
		String maxItemId = trainPlanItemMapper.getNextPlanItemIdByInfoId(infoId);
		
		return maxItemId;
	}
	/**
	 * 创建培训计划明细
	 * @param planitem
	 * @return
	 */
	public boolean AddTrainPlanItem(TrainPlanItem planitem) {
		
		boolean result = false;
		
		int temp = trainPlanItemMapper.addTrainPlanItem(planitem);
		
		if(temp > -1){
			
			result = true;
		}
		
		return result;
	}
	/**
	 * 修改培训计划明细
	 * @param planitem
	 * @return
	 */
	public boolean UpdateTrainPlanItem(TrainPlanItem planitem) {
		
		boolean result = false;
		
		int temp = trainPlanItemMapper.updateTrainPlanItem(planitem);
		
		if(temp > -1){
			
			result = true;
		}
		return result;
	}
	/**
	 * 删除培训计划明细
	 * @param trainPlanItemId
	 * @return
	 */
	public boolean DeleteTrainPlanItem(String trainPlanItemId){
		
		boolean result = false;
		
		int temp = trainPlanItemMapper.deleteTrainPlanItem(trainPlanItemId);
		
		if(temp > -1){
			
			result = true;
		}
		return result;
	}
}
