package com.thinkPro.train.action.attendance;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.AttendRecord;
public class SaveAttendRecord extends ActionSupport {
	AttendRecord attendRecord=new AttendRecord();
	public String execute(){
		
		return SUCCESS;
	}
	public AttendRecord getAttendRecord() {
		return attendRecord;
	}
	public void setAttendRecord(AttendRecord attendRecord) {
		this.attendRecord = attendRecord;
	}
	
}
