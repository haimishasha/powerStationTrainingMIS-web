package com.thinkPro.train.action.staffManage;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.staffAssign.StaffAssign;


public class SaveStaffArray extends ActionSupport implements ModelDriven<StaffAssign> {
	StaffAssign staff=new StaffAssign();
	List staffList=new ArrayList<StaffAssign>();
	public String saveStaffArray(){
		System.out.println("����saveStaffArray ");
		//�������ǰ̨������Ҫ�����Ա�����飬��������ݿ��������
		return SUCCESS;
	}
	@Override
	public StaffAssign getModel() {
		// TODO Auto-generated method stub
		return staff;
	}
	public List getStaffList() {
		return staffList;
	}
	public void setStaffList(List staffList) {
		this.staffList = staffList;
	}

}
