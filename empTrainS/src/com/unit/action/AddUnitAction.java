package com.unit.action;

import com.mysql.jdbc.Util;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.db.UnitCRUD;
import com.unit.bean.Unit;

public class AddUnitAction extends ActionSupport implements ModelDriven<Unit>{
	private Unit unit = new Unit();
	private boolean addResult;


	public boolean isAddResult() {
		return addResult;
	}

	public void setAddResult(boolean addResult) {
		this.addResult = addResult;
	}

	public Unit getUnit() {
		return unit;
	}

	public void setUnit(Unit unit) {
		this.unit = unit;
	}
	public String addUnit(){
		System.out.println("到我了");
		UnitCRUD unitCRUD = new UnitCRUD();
		boolean a = unitCRUD.insert(unit);
		this.addResult = a;
		if (a) {
			return SUCCESS;
		} 
		return ERROR;
	}

	@Override
	public Unit getModel() {
		return unit;
	}
}
