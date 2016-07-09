package com.thinkPro.train.bean.result;

import java.sql.Timestamp;

public class TrainResultRatio {
	private int trainRatioId;
	private String trainItemId;
	private float examRatio;
	private float attendanceRatio;
	private Timestamp setTime;
	private String remark;

	public int getTrainRatioId() {
		return trainRatioId;
	}

	public void setTrainRatioId(int trainRatioId) {
		this.trainRatioId = trainRatioId;
	}

	public String getTrainItemId() {
		return trainItemId;
	}

	public void setTrainItemId(String trainItemId) {
		this.trainItemId = trainItemId;
	}

	public float getExamRatio() {
		return examRatio;
	}

	public void setExamRatio(float examRatio) {
		if (examRatio > 1) {
			this.examRatio = examRatio / 100;
		} else {
			this.examRatio = examRatio;
		}
	}

	public float getAttendanceRatio() {
		return attendanceRatio;
	}

	public void setAttendanceRatio(float attendanceRatio) {
		if (attendanceRatio > 1) {
			this.attendanceRatio = attendanceRatio / 100;
		} else {
			this.attendanceRatio = attendanceRatio;
		}
	}

	public Timestamp getSetTime() {
		return setTime;
	}

	public void setSetTime(Timestamp setTime) {
		this.setTime = setTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "TrainResultRatio [trainRatioId=" + trainRatioId
				+ ", trainItemId=" + trainItemId + ", examRatio=" + examRatio
				+ ", attendanceRatio=" + attendanceRatio + ", setTime="
				+ setTime + ", remark=" + remark + "]";
	}

}
