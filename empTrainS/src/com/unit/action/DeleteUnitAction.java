package com.unit.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.unit.bean.Unit;

public class DeleteUnitAction extends ActionSupport implements ModelDriven<Unit> {
     Unit unit;
  public String deleteUnit(){
	 
	 System.out.println("ɾ���ɹ�"); 
	  return SUCCESS;
	  
  }
	@Override
	public Unit getModel() {
		// TODO Auto-generated method stub
		return unit;
	}
}
