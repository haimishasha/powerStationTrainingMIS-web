package com.thinkPro.train.action.unit;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.unit.Unit;
import com.thinkPro.train.db.util.UnitUtil;

@SuppressWarnings("serial")
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
		//System.out.println("到我�?);
		UnitUtil unitCRUD = new UnitUtil();
		boolean a;
		try {
			a = unitCRUD.insert(unit);
			this.addResult = a;
			if (a) {
				return SUCCESS;
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ERROR;
	}

	@Override
	public Unit getModel() {
		return unit;
	}
}
