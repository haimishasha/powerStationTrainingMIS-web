package com.thinkPro.train.action.attendance;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.MajorCondition;
import com.thinkPro.train.bean.attendance.TrainPlanItem;
import com.thinkPro.train.db.util.AttendanceUtil;
/**
 * @author GuoFei
 * 日期:2016-6-19
 * 功能:点击链接跳转到考勤录入界面的action
 * */
public class ToSaveAttendView extends ActionSupport {
	MajorCondition majorCondition=new MajorCondition();
	List<Map<String,String>> nameList=new ArrayList<Map<String,String>>();
	private String trainItemId;
	TrainPlanItem trainPlanItem=new TrainPlanItem();
    public String execute(){
    	AttendanceUtil attendanceUtil=new AttendanceUtil();
    	trainPlanItem=attendanceUtil.getTrainPlanItemByInfo(majorCondition);
    	nameList=attendanceUtil.getStaffNameListByItemId(trainPlanItem.getTrainItemId());    	
    	return SUCCESS;
    }
	public MajorCondition getMajorCondition() {
		return majorCondition;
	}

	public void setMajorCondition(MajorCondition majorCondition) {
		this.majorCondition = majorCondition;
	}
}
