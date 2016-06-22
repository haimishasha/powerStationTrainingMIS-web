package com.thinkPro.train.action.attendance;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.attendance.MajorCondition;
import com.thinkPro.train.bean.attendance.TrainPlanInfo;
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
	private String trainPlanId;
	private String major;
	private String trainPlanYear;//培训计划年度
	private String trainPlanName;//培训计划名字
	private String trainTime;//培训时间
	
	private String trainPlanType;//培训类型
	TrainPlanItem trainPlanItem=new TrainPlanItem();
	
    public String execute(){
   
//    	System.out.println("参数"+trainPlanId+major);
    	majorCondition.setMajor(major);
    	majorCondition.setTrainPlanId(trainPlanId);
    	AttendanceUtil attendanceUtil=new AttendanceUtil();
    	trainPlanItem=attendanceUtil.getTrainPlanItemByInfo(majorCondition);
    	System.out.println("专业"+majorCondition.getMajor());
      	System.out.println("明细"+trainPlanItem.getTrainItemId());
    	nameList=attendanceUtil.getStaffNameListByItemId(trainPlanItem.getTrainItemId());  
    	System.out.println("名字"+nameList);
    	return SUCCESS;
    }
	
	public List<Map<String, String>> getNameList() {
		return nameList;
	}
	public void setNameList(List<Map<String, String>> nameList) {
		this.nameList = nameList;
	}
	public TrainPlanItem getTrainPlanItem() {
		return trainPlanItem;
	}
	public void setTrainPlanItem(TrainPlanItem trainPlanItem) {
		this.trainPlanItem = trainPlanItem;
	}

	public String getTrainPlanId() {
		return trainPlanId;
	}

	public void setTrainPlanId(String trainPlanId) {
		this.trainPlanId = trainPlanId;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getTrainPlanYear() {
		return trainPlanYear;
	}

	public void setTrainPlanYear(String trainPlanYear) {
		this.trainPlanYear = trainPlanYear;
	}

	public String getTrainPlanName() {
		return trainPlanName;
	}

	public void setTrainPlanName(String trainPlanName) {
		this.trainPlanName = trainPlanName;
	}

	public String getTrainTime() {
		return trainTime;
	}

	public void setTrainTime(String trainTime) {
		this.trainTime = trainTime;
	}

	public String getTrainPlanType() {
		return trainPlanType;
	}

	public void setTrainPlanType(String trainPlanType) {
		this.trainPlanType = trainPlanType;
	}

	

	

	

	
}
