package com.thinkPro.train.bean.result;

import java.sql.Timestamp;

public class TrainResult {
	private String trainResultId;
	private float examResult;
	private float attendanceResult;
	private float totalResult;
	private Timestamp examTime;
	private Timestamp inputTime;

	public String getTrainResultId() {
		return trainResultId;
	}

	public void setTrainResultId(String trainResultId) {
		this.trainResultId = trainResultId;
	}

	public float getExamResult() {
		return examResult;
	}

	public void setExamResult(float examResult) {
		this.examResult = examResult;
	}

	public float getAttendanceResult() {
		return attendanceResult;
	}

	public void setAttendanceResult(float attendanceResult) {
		this.attendanceResult = attendanceResult;
	}

	public float getTotalResult() {
		return totalResult;
	}

	public void setTotalResult(float totalResult) {
		this.totalResult = totalResult;
	}

	public Timestamp getExamTime() {
		return examTime;
	}

	public void setExamTime(Timestamp examTime) {
		this.examTime = examTime;
	}

	public Timestamp getInputTime() {
		return inputTime;
	}

	public void setInputTime(Timestamp inputTime) {
		this.inputTime = inputTime;
	}

	@Override
	public String toString() {
		return "TrainResult [trainResultId=" + trainResultId + ", examResult="
				+ examResult + ", attendanceResult=" + attendanceResult
				+ ", totalResult=" + totalResult + ", examTime=" + examTime
				+ ", inputTime=" + inputTime + "]";
	}

}
