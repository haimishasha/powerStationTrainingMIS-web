package com.thinkPro.train.action.staffInfoManage;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.util.StaffUtil;

@SuppressWarnings("serial")
public class AddStaff extends ActionSupport implements ModelDriven<Staff> {
	private Staff staff = new Staff();
	private Staff addResult;
	
	public Staff getAddResult() {
		return addResult;
	}
	public void setAddResult(Staff addResult) {
		this.addResult = addResult;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	
	public String addStaff(){
		StaffUtil staffUtil=new StaffUtil();
		try {
			staffUtil.addStaff(staff);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	//数据库返回bean
		//this.addResult = a;
		return SUCCESS;
	}
	@Override
	public Staff getModel() {
	
		return staff;
	}
	
}
