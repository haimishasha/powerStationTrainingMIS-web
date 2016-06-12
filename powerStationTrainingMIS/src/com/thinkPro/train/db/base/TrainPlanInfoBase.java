package com.thinkPro.train.db.base;

import java.sql.SQLException;
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
	public List<TrainPlan> getAllInfo() throws SQLException{
		
		return trainPlanInfoMapper.getAllInfo();
	}
	/**
	 * 根据条件进行查询和明细全部信息
	 * @param trainPlan
	 * @return
	 */
	public List<TrainPlan> getInfoByIf(TrainPlan trainPlan) throws SQLException{

		return trainPlanInfoMapper.getInfoByIf(trainPlan);
	}
	/**
	 * 根据Id查询培训计划信息
	 * @param trainPlanId
	 * @return
	 */
	public TrainPlanInfo getTrainPlanInfoById(String trainPlanId) throws SQLException{

		return trainPlanInfoMapper.getTrainPlanInfoById(trainPlanId);
	}
	/**
	 * 创建培训计划
	 * @param trainPlanInfo
	 * @return
	 */
	public String AddTrainPlanInfo(TrainPlanInfo trainPlanInfo) throws SQLException{
		
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
	public boolean UpdateTrainPlanInfo(TrainPlanInfo planinfo) throws SQLException{
		
		boolean result = trainPlanInfoMapper.updateTrainPlanInfo(planinfo)>-1?true:false;
		return result;
	}
	/**
	 * 删除培训计划
	 * @param trainPlanInfoId
	 * @return
	 */
	public boolean DeleteTrainPlanInfo(String trainPlanInfoId) throws SQLException{
		
		boolean result = trainPlanInfoMapper.deleteTrainPlanInfo(trainPlanInfoId)>-1?true:false;
		return result;
	}
}
