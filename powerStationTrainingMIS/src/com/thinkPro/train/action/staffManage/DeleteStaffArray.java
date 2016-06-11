package com.thinkPro.train.action.staffManage;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.staffAssign.StaffAssign;


public class DeleteStaffArray extends ActionSupport implements ModelDriven<StaffAssign> {
	StaffAssign staff=new StaffAssign();

	 List staffList=new ArrayList<StaffAssign>();
	public String deleteSaffArray(){
		System.out.println("����deleteSaffArray");
		//ʵ��:  �Ƴ���ѧԱ,������Щ���Ƴ�ѧԱ����δ����ѧԱ����
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
