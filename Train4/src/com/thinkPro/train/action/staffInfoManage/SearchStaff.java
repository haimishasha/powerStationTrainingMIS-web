package com.thinkPro.train.action.staffInfoManage;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.util.StaffUtil;


@SuppressWarnings("serial")
public class SearchStaff extends ActionSupport{
	private List<Staff> staffList = new ArrayList<Staff>();
	private List<Staff> result;
	private String unitId;
	
	public List<Staff> getResult() {
		return result;
	}

	public void setResult(List<Staff> result) {
		this.result = result;
	}

	public List<Staff> getStaffList() {
		return staffList;
	}

	public void setStaffList(List<Staff> staffList) {
		this.staffList = staffList;
	}

	public String searchStaff(){
	//	System.out.println("得到searchStaff");
		StaffUtil staffUtil=new StaffUtil();
//		仅用于测�?
		Staff staff = new Staff();
		staffList= staffUtil.getStaffListByUnitId(unitId);
		
		//staffList.add(staff);
		
		result = staffList;
		//System.out.println("这是"+result.get(0).getCardId());
		return SUCCESS;
	}
	
	public String getAllStaff(){
		
		StaffUtil staffUtil=new StaffUtil();
		
		this.result = staffUtil.getAllStaff();
		return SUCCESS;
	}

	public String getUnitId() {
		return unitId;
	}

	public void setUnitId(String unitId) {
		this.unitId = unitId;
	}
	
}
