package com.thinkPro.train.action.attendance;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.MajorCondition;
/**
 * @author GuoFei
 * 日期:2016-6-19
 * 功能:点击链接跳转到考勤录入界面的条件类
 * */
public class ToSaveAttendView extends ActionSupport {
	MajorCondition majorCondition=new MajorCondition();
    public String execute(){
    	
    	return SUCCESS;
    }
	public MajorCondition getMajorCondition() {
		return majorCondition;
	}

	public void setMajorCondition(MajorCondition majorCondition) {
		this.majorCondition = majorCondition;
	}
}
