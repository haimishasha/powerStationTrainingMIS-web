package com.thinkPro.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.plan.bean.TrainPlan;
import com.plan.bean.TrainPlanInfo;
import com.plan.util.MyBatisUtil;


public class TrainPlanInfoCRUD {

	public List<TrainPlan> getAllInfo(){
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanInfoMapper.getAllInfo";
		List<TrainPlan> allInfos = sqlSession.selectList(statement);
		sqlSession.close();
		return allInfos;
	}
	
	public List<TrainPlan> getInfoByIf(TrainPlan trainplan){
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanInfoMapper.getInfoByIf";
		List<TrainPlan> allInfos = sqlSession.selectList(statement,trainplan);
		sqlSession.close();
		return allInfos;
	}
	
	public TrainPlanInfo getTrainPlanInfoById(String trainPlanId){
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanInfoMapper.getTrainPlanInfoById";
		TrainPlanInfo info = sqlSession.selectOne(statement, trainPlanId);
		sqlSession.close();
		return info;
	}
	
	public boolean AddTrainPlanInfo(TrainPlanInfo planinfo) {
		boolean result = false;
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanInfoMapper.addTrainPlanInfo";
		int temp = sqlSession.insert(statement, planinfo);
		if(temp > -1){
			result = true;
		}
		sqlSession.close();
		return result;
	}
	
	public boolean UpdateTrainPlanInfo(TrainPlanInfo planinfo){
		boolean result = false;
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanInfoMapper.updateTrainPlanInfo";
		int temp = sqlSession.insert(statement, planinfo);
		if(temp > -1){
			result = true;
		}
		sqlSession.close();
		return result;
	}
	
	public boolean DeleteTrainPlanInfo(String trainPlanInfoId){
		boolean result = false;
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanInfoMapper.deleteTrainPlanInfo";
		int temp = sqlSession.insert(statement, trainPlanInfoId);
		if(temp > -1){
			result = true;
		}
		sqlSession.close();
		return result;
	}
}
