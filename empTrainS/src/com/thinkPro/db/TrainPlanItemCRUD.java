package com.thinkPro.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.plan.bean.TrainPlanItem;
import com.plan.util.MyBatisUtil;

public class TrainPlanItemCRUD {

	public TrainPlanItem getTrainPlanItemByItemId(String itemId){
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanItemMapper.getTrainPlanItemByItemId";
		TrainPlanItem item = sqlSession.selectOne(statement,itemId);
		sqlSession.close();
		return item;
	}
	
	public List<TrainPlanItem> getTrainPlanItemByInfoId(String infoId){
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanItemMapper.getTrainPlanItemByInfoId";
		List<TrainPlanItem> items = sqlSession.selectList(statement, infoId);
		sqlSession.close();
		return items;
	}
	
	public List<String> getItemIdByInfoId(String infoId){
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanItemMapper.getPlanItemIdByInfoId";
		List<String> itemIds = sqlSession.selectList(statement, infoId);
		sqlSession.close();
		return itemIds;
	}
	
	public boolean AddTrainPlanItem(TrainPlanItem planitem) {
		boolean result = false;
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanItemMapper.addTrainPlanItem";
		int temp = sqlSession.insert(statement, planitem);
		if(temp > -1){
			result = true;
		}
		sqlSession.close();
		return result;
	}
	
	public boolean UpdateTrainPlanItem(TrainPlanItem planitem) {
		boolean result = false;
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanItemMapper.updateTrainPlanItem";
		int temp = sqlSession.insert(statement, planitem);
		if(temp > -1){
			result = true;
		}
		sqlSession.close();
		return result;
	}
	
	public boolean DeleteTrainPlanItem(String trainPlanItemId){
		boolean result = false;
		SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
		String statement = "com.thinkPro.mapping.trainPlanItemMapper.deleteTrainPlanItem";
		int temp = sqlSession.insert(statement, trainPlanItemId);
		if(temp > -1){
			result = true;
		}
		sqlSession.close();
		return result;
	}
	
}
