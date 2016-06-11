package com.thinkPro.train.db.base;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.db.mapper.TrainPlanInfoMapper;


public class TrainPlanInfoBase {


	private static ApplicationContext applicationContext;
	private static TrainPlanInfoMapper trainPlanInfoMapper;
	
	static{
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		trainPlanInfoMapper = (TrainPlanInfoMapper)applicationContext.getBean("trainPlanInfoMapper");
	}
	public List<TrainPlan> getAllInfo(){
		List<TrainPlan> allInfos = trainPlanInfoMapper.getAllInfo();
		return allInfos;
	}
	
	public List<TrainPlan> getInfoByIf(TrainPlan trainPlan){
		List<TrainPlan> allInfos = trainPlanInfoMapper.getInfoByIf(trainPlan);
		return allInfos;
	}
	
	public TrainPlanInfo getTrainPlanInfoById(String trainPlanId){
		TrainPlanInfo info = trainPlanInfoMapper.getTrainPlanInfoById(trainPlanId);
		return info;
	}

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
	
	public boolean UpdateTrainPlanInfo(TrainPlanInfo planinfo){
		boolean result = false;
		int temp = trainPlanInfoMapper.updateTrainPlanInfo(planinfo);
		if(temp > -1){
			result = true;
		}
		return result;
	}
	
	public boolean DeleteTrainPlanInfo(String trainPlanInfoId){
		boolean result = false;
		int temp = trainPlanInfoMapper.deleteTrainPlanInfo(trainPlanInfoId);
		if(temp > -1){
			result = true;
		}
		return result;
	}
}
