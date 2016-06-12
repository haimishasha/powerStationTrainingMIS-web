package com.thinkPro.train.action.staffInfoManage;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.util.StaffUtil;


@SuppressWarnings("serial")
public class UpdateStaff extends ActionSupport {
	
	private Staff staff=new Staff();
	private boolean result;
	
	public String updateStaff(){
		StaffUtil staffUtil=new StaffUtil();
		try {
			this.result=staffUtil.updateStaff(staff);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("result"+result);
		//数据库和staff不一样
		return SUCCESS;
	}
}
