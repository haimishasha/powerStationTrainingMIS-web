package com.thinkPro.train.action.staffManage;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.staffAssign.StaffAssign;


public class ChooseStaff extends ActionSupport implements ModelDriven<StaffAssign> {
	StaffAssign staff=new StaffAssign();
	
	//��������ǰ̨��������ѧԱ����
    List staffList=new ArrayList<StaffAssign>();
	
	public String chooseStaff(){
		System.out.println("����ѡ��staff action");
		//����ǰ̨������ѧԱ���飬�����䴫���Ѱ���ѧԱ���棬��ʾ����
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
