package com.thinkPro.train.action.unit;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.unit.Unit;
import com.thinkPro.train.db.util.UnitUtil;


public class UpdateUnitAction extends ActionSupport  implements ModelDriven<Unit>{
	private Unit unit = new Unit();
	private Unit result;
	private boolean updateResult;
   
	
	public boolean isUpdateResult() {
		return updateResult;
	}

	public void setUpdateResult(boolean updateResult) {
		this.updateResult = updateResult;
	}

	public Unit getUnit() {
		return unit;
	}

	public void setUnit(Unit unit) {
		this.unit = unit;
	}

	public Unit getResult() {
		return result;
	}

	public void setResult(Unit result) {
		this.result = result;
	}

	public String updateUnit(){
		UnitUtil unitUtil = new UnitUtil();
		System.out.println(unit);
		try {
			boolean updateResult = unitUtil.update(unit);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String getUpdateUnit(){
		UnitUtil unitUtil = new UnitUtil();
		try {
			this.result = unitUtil.getUnitByUnitId(unit.getUnitId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	@Override
	public Unit getModel() {
		return unit;
	}
	
}
