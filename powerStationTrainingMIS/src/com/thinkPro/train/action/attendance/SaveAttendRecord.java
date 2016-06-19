package com.thinkPro.train.action.attendance;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.AttendRecord;
import com.thinkPro.train.db.util.AttendanceUtil;
public class SaveAttendRecord extends ActionSupport {
	AttendRecord attendRecord=new AttendRecord();
	List<AttendRecord> attendRecordList=new ArrayList<AttendRecord>();
	public String execute(){
		AttendanceUtil attendanceUtil=new AttendanceUtil();
		attendanceUtil.addAttendRecord(attendRecordList);
		return SUCCESS;
	}
	public AttendRecord getAttendRecord() {
		return attendRecord;
	}
	public void setAttendRecord(AttendRecord attendRecord) {
		this.attendRecord = attendRecord;
	}
	public List<AttendRecord> getAttendRecordList() {
		return attendRecordList;
	}
	public void setAttendRecordList(List<AttendRecord> attendRecordList) {
		this.attendRecordList = attendRecordList;
	}
	
}
