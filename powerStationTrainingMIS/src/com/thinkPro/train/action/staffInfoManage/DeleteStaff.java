package com.thinkPro.train.action.staffInfoManage;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.util.StaffUtil;


@SuppressWarnings("serial")
public class DeleteStaff extends ActionSupport{
	private Staff staff=new Staff();
	private boolean deleteResult;
	private String staffId;

	
	public Staff getStaff() {
		return staff;
	}


	public void setStaff(Staff staff) {
		this.staff = staff;
	}


	public boolean isDeleteResult() {
		return deleteResult;
	}


	public void setDeleteResult(boolean deleteResult) {
		this.deleteResult = deleteResult;
	}


	public String deleteStaff(){
		System.out.println("删除成功");
		System.out.println(staffId + "今儿我开了家 ");
		StaffUtil staffUtil=new StaffUtil();
		try {
			this.deleteResult = staffUtil.deleteStaffByID(staffId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}


	public String getStaffId() {
		return staffId;
	}


	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}
	
}
