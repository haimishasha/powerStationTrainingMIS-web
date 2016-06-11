package com.thinkPro.train.db.base;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.db.mapper.TrainPlanInfoMapper;

/**
 * 
 * 培训计划信息数据库操作基层接口
 *
 */
public class TrainPlanInfoBase {

	private ApplicationContext applicationContext;
	
	private TrainPlanInfoMapper trainPlanInfoMapper;
	
	public TrainPlanInfoBase(){
		
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		trainPlanInfoMapper = (TrainPlanInfoMapper)applicationContext.getBean("trainPlanInfoMapper");
	}
	/**
	 * 查询培训计划和明细全部信息
	 * @return
	 */
	public List<TrainPlan> getAllInfo(){
		
		List<TrainPlan> allInfos = trainPlanInfoMapper.getAllInfo();
		
		return allInfos;
	}
	/**
	 * 根据条件进行查询和明细全部信息
	 * @param trainPlan
	 * @return
	 */
	public List<TrainPlan> getInfoByIf(TrainPlan trainPlan){
		
		List<TrainPlan> allInfos = trainPlanInfoMapper.getInfoByIf(trainPlan);
		
		return allInfos;
	}
	/**
	 * 根据Id查询培训计划信息
	 * @param trainPlanId
	 * @return
	 */
	public TrainPlanInfo getTrainPlanInfoById(String trainPlanId){
		TrainPlanInfo info = trainPlanInfoMapper.getTrainPlanInfoById(trainPlanId);
		return info;
	}
	/**
	 * 创建培训计划
	 * @param trainPlanInfo
	 * @return
	 */
	public String AddTrainPlanInfo(TrainPlanInfo trainPlanInfo) {
		
		String nextId = trainPlanInfoMapper.getNextPlanId();
		
		if(null==nextId || "".equals(nextId)){
			
			nextId = "tp10001";
			
		}else{
			
			nextId = "tp"+ nextId;
		}
		
		trainPlanInfo.setTrainPlanId(nextId);
			
		int temp = trainPlanInfoMapper.addTrainPlanInfo(trainPlanInfo);
		
		if(temp <= -1){
			
			nextId = "";
		}
		
		return nextId;
	}
	/**
	 * 修改培训计划
	 * @param planinfo
	 * @return
	 */
	public boolean UpdateTrainPlanInfo(TrainPlanInfo planinfo){
		
		boolean result = false;
		
		int temp = trainPlanInfoMapper.updateTrainPlanInfo(planinfo);
		
		if(temp > -1){
			
			result = true;
		}
		
		return result;
	}
	/**
	 * 删除培训计划
	 * @param trainPlanInfoId
	 * @return
	 */
	public boolean DeleteTrainPlanInfo(String trainPlanInfoId){
		
		boolean result = false;
		
		int temp = trainPlanInfoMapper.deleteTrainPlanInfo(trainPlanInfoId);
		
		if(temp > -1){
			
			result = true;
		}
		return result;
	}
}
