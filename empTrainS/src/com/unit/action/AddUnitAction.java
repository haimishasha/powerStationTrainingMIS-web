package com.unit.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.unit.bean.Unit;

public class AddUnitAction extends ActionSupport  implements ModelDriven<Unit>{
	Unit unit;

	public String addUnit(){
		System.out.println("Ìí¼Ó³É¹¦");
		return SUCCESS;
	}
	@Override
	public Unit getModel() {
		// TODO Auto-generated method stub
		return unit;
	}
}
