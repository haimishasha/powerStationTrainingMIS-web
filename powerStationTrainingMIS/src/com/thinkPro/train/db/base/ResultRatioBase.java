package com.thinkPro.train.db.base;

import java.sql.SQLException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.result.TrainResultRatio;
import com.thinkPro.train.db.mapper.ResultRatioMapper;

public class ResultRatioBase implements ResultRatioMapper {
	private ResultRatioMapper resultRatioMapper;
	private ApplicationContext applicationContext;

	public ResultRatioBase() {
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		resultRatioMapper = (ResultRatioMapper) applicationContext.getBean("resultRatioMapper");
	}

	@Override
	public TrainResultRatio selectByTrainItemId(String trainItemId) throws SQLException{
		return resultRatioMapper.selectByTrainItemId(trainItemId);
	}

	@Override
	public int update(TrainResultRatio trainResultRatio) throws SQLException{
		return resultRatioMapper.update(trainResultRatio);
	}

	@Override
	public int insert(TrainResultRatio trainResultRatio) throws SQLException{
		return resultRatioMapper.insert(trainResultRatio);
	}
}
