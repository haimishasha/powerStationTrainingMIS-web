package com.thinkPro.train.bean.result;

public class TrainResultReport {
	private String name;
	private String unitName;
	private int attend_count;
	private float attendanceResult;
	private float examResult;
	private float totalResult;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public int getAttend_count() {
		return attend_count;
	}

	public void setAttend_count(int attend_count) {
		this.attend_count = attend_count;
	}

	public float getAttendanceResult() {
		return attendanceResult;
	}

	public void setAttendanceResult(float attendanceResult) {
		this.attendanceResult = attendanceResult;
	}

	public float getExamResult() {
		return examResult;
	}

	public void setExamResult(float examResult) {
		this.examResult = examResult;
	}

	public float getTotalResult() {
		return totalResult;
	}

	public void setTotalResult(float totalResult) {
		this.totalResult = totalResult;
	}

	@Override
	public String toString() {
		return "TrainResultReport [name=" + name + ", unitName=" + unitName
				+ ", attend_count=" + attend_count + ", attendanceResult="
				+ attendanceResult + ", examResult=" + examResult
				+ ", totalResult=" + totalResult + "]";
	}

}
