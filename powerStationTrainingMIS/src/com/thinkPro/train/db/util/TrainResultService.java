package com.thinkPro.train.db.util;

import java.sql.SQLException;
import java.util.List;

import com.thinkPro.train.bean.result.TrainResult;
import com.thinkPro.train.bean.result.TrainResultCondition;
import com.thinkPro.train.bean.result.TrainResultReport;
import com.thinkPro.train.db.base.TrainResultBase;

public class TrainResultService {
	private TrainResultBase trainResultBase;

	public TrainResultService() {
		trainResultBase = new TrainResultBase();
	}

	public int insertTrainResultList(List<TrainResult> trainResults)
			throws SQLException {
		if(trainResults != null) {
			return trainResultBase.insertTrainResultList(trainResults);
		}
		return 0;
	}

	public int updateTrainResultList(List<TrainResult> trainResults)
			throws SQLException {
		if(trainResults != null) {
			return trainResultBase.updateTrainResultList(trainResults);
		}
		return 0;
	}

	public List<TrainResultReport> selectTrainResultList(
			TrainResultCondition trainResultCondition) {
		if(trainResultCondition != null) {
			return trainResultBase.selectTrainResultList(trainResultCondition);
		}
		return null;
	}

}
