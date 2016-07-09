package com.thinkPro.train.action.result;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.result.TrainResult;
import com.thinkPro.train.db.util.TrainResultService;

@SuppressWarnings("serial")
public class TrainResultAction extends ActionSupport {
	private List<TrainResult> trainResults;
	private TrainResultService trainResultService;

	public List<TrainResult> getTrainResults() {
		return trainResults;
	}

	public void setTrainResults(List<TrainResult> trainResults) {
		this.trainResults = trainResults;
	}

	public String insertTrainResultList() throws Exception {
		if (trainResults != null) {
			trainResultService = new TrainResultService();
			trainResultService.insertTrainResultList(trainResults);
		}
		return SUCCESS;
	}
	
	public String updateTrainResultList() throws Exception {
		if(trainResults != null) {
			trainResultService = new TrainResultService();
			trainResultService.updateTrainResultList(trainResults);
		}
		return SUCCESS;
	}
}
