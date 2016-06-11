package com.thinkPro.train.action.unit;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.unit.Unit;


public class UpdateUnitAction extends ActionSupport  implements ModelDriven<Unit>{
	Unit unit;
   
	
	public String updateUnit(){
		System.out.println("�޸ĳɹ�");
		return SUCCESS;
	}
	@Override
	public Unit getModel() {
		// TODO Auto-generated method stub
		return unit;
	}
	
}
