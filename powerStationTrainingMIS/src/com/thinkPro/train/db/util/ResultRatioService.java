package com.thinkPro.train.db.util;

import java.sql.SQLException;

import com.thinkPro.train.bean.result.TrainResultRatio;
import com.thinkPro.train.db.base.ResultRatioBase;

public class ResultRatioService {
	private ResultRatioBase resultRatioBase;

	public ResultRatioService() {
		resultRatioBase = new ResultRatioBase();
	}

	public TrainResultRatio selectByTrainItemId(String trainItemId)
			throws SQLException {
		if (trainItemId != null && !"".equals(trainItemId)) {
			return resultRatioBase.selectByTrainItemId(trainItemId);
		}
		return null;
	}

	public TrainResultRatio update(TrainResultRatio trainResultRatio)
			throws SQLException {
		if (trainResultRatio != null) {
			int updateRows = resultRatioBase.update(trainResultRatio);
			if (updateRows > 0) {
				return selectByTrainItemId(trainResultRatio.getTrainItemId());
			}
		}
		return null;
	}

	public int insert(TrainResultRatio trainResultRatio) throws SQLException {
		if (trainResultRatio != null) {
			return resultRatioBase.insert(trainResultRatio);
		}
		return 0;
	}

}
