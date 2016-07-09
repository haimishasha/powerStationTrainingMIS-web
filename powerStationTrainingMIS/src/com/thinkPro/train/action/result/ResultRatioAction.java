package com.thinkPro.train.action.result;

import java.sql.Timestamp;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.result.TrainResultRatio;
import com.thinkPro.train.db.util.ResultRatioService;

@SuppressWarnings("serial")
public class ResultRatioAction extends ActionSupport {
	private ResultRatioService resultRatioService;
	private TrainResultRatio trainResultRatio;

	public TrainResultRatio getTrainResultRatio() {
		return trainResultRatio;
	}

	public void setTrainResultRatio(TrainResultRatio trainResultRatio) {
		this.trainResultRatio = trainResultRatio;
	}

	public String updateResultRatio() throws Exception {
		trainResultRatio.setSetTime(new Timestamp(new Date().getTime()));
		if (trainResultRatio != null) {
			resultRatioService = new ResultRatioService();
			trainResultRatio = resultRatioService.update(trainResultRatio);
		}
		return SUCCESS;
	}

	public String searchResultRatio() throws Exception {
		if (trainResultRatio != null) {
			String trainItemId = trainResultRatio.getTrainItemId();
			if (trainItemId != null && !"".equals(trainItemId)) {
				resultRatioService = new ResultRatioService();
				trainResultRatio = resultRatioService
						.selectByTrainItemId(trainItemId);
				return SUCCESS;
			}
		}
		return ERROR;
	}
}
 