package com.thinkPro.db;

import java.util.List;

import com.plan.bean.TrainPlan;
import com.plan.bean.TrainPlanInfo;
import com.plan.bean.TrainPlanItem;


public class TrainPlanCRUD {

	TrainPlanInfoCRUD infoCRUD = new TrainPlanInfoCRUD();
	TrainPlanItemCRUD itemCRUD = new TrainPlanItemCRUD();
	
	/**
	 * 查询全部信息，包括培训计划信息和培训明细
	 * @return 全部信息的链表
	 */
	public List<TrainPlan> getAllInfo(){
		List<TrainPlan> allInfos = infoCRUD.getAllInfo();
		return allInfos;
	}
	
	/**
	 * 根据条件进行查询全部信息
	 * @param trainplan
	 * @return 链表
	 */
	public List<TrainPlan> getInfoByIf(TrainPlan trainplan){
		List<TrainPlan> allInfos = infoCRUD.getInfoByIf(trainplan);
		return allInfos;
	}
	
	/**
	 * 根据培训计划信息ID查询培训计划信息
	 * @param planinfoId 培训计划信息ID
	 * @return 培训计划信息
	 */
	public TrainPlanInfo getTrainPlanInfoById(String planinfoId){
		TrainPlanInfo info = infoCRUD.getTrainPlanInfoById(planinfoId);
		return info;
	}
	
	/**
	 * 根据培训计划明细ID查询培训计划明细
	 * @param planitemId 培训计划明细ID
	 * @return 培训计划明细
	 */
	public TrainPlanItem getTrainPlanItemByItemId(String planitemId){
		TrainPlanItem item = itemCRUD.getTrainPlanItemByItemId(planitemId);
		return item;
	}
	
	/**
	 * 根据培训计划信息ID查询培训计划明细
	 * @param planinfoId 培训计划信息ID
	 * @return 培训计划明细链表
	 */
	public List<TrainPlanItem> getTrainPlanItemByInfoId(String planinfoId){
		List<TrainPlanItem> items = itemCRUD.getTrainPlanItemByInfoId(planinfoId);
		return items;
	}
	
	/**
	 * 根据培训计划信息ID查询培训计划明细ID
	 * @param infoId 培训计划信息ID
	 * @return 培训计划明显ID 链表
	 */
	public List<String> getItemIdByInfoId(String infoId){
		List<String> itemIds = itemCRUD.getItemIdByInfoId(infoId);
		return itemIds;
	}
	/**
	 * 添加培训计划信息，同时添加培训计划明细
	 * @param planinfo 培训计划信息
	 * @param planitems 培训计划明细
	 * @return 插入成功  true 插入失败 false
	 */
	public boolean addTrainPlan(TrainPlanInfo planinfo,List<TrainPlanItem> planitems){
		boolean result = false;
		if(infoCRUD.AddTrainPlanInfo(planinfo)){
			result = true;
		}
		for(TrainPlanItem item:planitems){
			if(itemCRUD.AddTrainPlanItem(item)){
				result = true;
			}else{
				break;
			}
		}
		return result;
	}
	
	/**
	 * 添加培训计划明细
	 * @param planintem 培训计划明细
	 * @return 添加成功 true 添加失败 false
	 */
	public boolean addTrainPlanItem(TrainPlanItem planintem){
		boolean result = false;
		if(itemCRUD.AddTrainPlanItem(planintem)){
			result = true;
		}
		return result;
	}
	
	/**
	 * 修改培训计划信息
	 * @param planinfo 培训计划信息
	 * @return 修改成功  true 修改失败 false
	 */
	public boolean updateTrainPlanInfo(TrainPlanInfo planinfo){
		boolean result = false;
		if(infoCRUD.UpdateTrainPlanInfo(planinfo)){
			result = true;
		}
		return result;
	}
	
	/**
	 * 修改培训计划明细
	 * @param planitem 培训计划明细
	 * @return 修改成功  true 修改失败 false
	 */
	public boolean updateTrainPlanItem(TrainPlanItem planitem){
		boolean result = false;
		if(itemCRUD.UpdateTrainPlanItem(planitem)){
			result = true;
		}
		return result;
	}
	
	/**
	 * 删除培训计划信息、培训计划明细、培训学员
	 * @param trainPlanInfoId 培训计划信息ID
	 * @return 删除成功  true 删除失败 false
	 */
	public boolean deleteTrainPlan(String trainPlanInfoId){
		boolean result  = false;
		if(infoCRUD.DeleteTrainPlanInfo(trainPlanInfoId)){
			result = true;
		}
		return result;
	}
	
	/**
	 * 删除培训计划明细
	 * @param trainPlanItemId 培训计划明细ID
	 * @return 删除成功  true 删除失败 false
	 */
	public boolean deleteTrainItem(String trainPlanItemId){
		boolean result  = false;
		if(itemCRUD.DeleteTrainPlanItem(trainPlanItemId)){
			result = true;
		}
		return result;
	}
}
