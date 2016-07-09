package com.thinkPro.train.db.base;

import java.sql.SQLException;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.result.TrainResult;
import com.thinkPro.train.bean.result.TrainResultCondition;
import com.thinkPro.train.bean.result.TrainResultReport;
import com.thinkPro.train.db.mapper.TrainResultMapper;

public class TrainResultBase implements TrainResultMapper {
	private ApplicationContext applicationContext;
	private TrainResultMapper trainResultMapper;

	public TrainResultBase() {
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		trainResultMapper = (TrainResultMapper) applicationContext.getBean("trainResultMapper");
	}

	@Override
	public int insertTrainResultList(List<TrainResult> trainResults)
			throws SQLException {
		return trainResultMapper.insertTrainResultList(trainResults);
	}

	@Override
	public int updateTrainResultList(List<TrainResult> trainResults)
			throws SQLException {
		return trainResultMapper.updateTrainResultList(trainResults);
	}

	@Override
	public List<TrainResultReport> selectTrainResultList(
			TrainResultCondition trainResultCondition) {
		return trainResultMapper.selectTrainResultList(trainResultCondition);
	}
}
