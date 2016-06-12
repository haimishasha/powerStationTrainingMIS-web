package com.thinkPro.train.action.unit;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.bean.unit.Unit;
import com.thinkPro.train.db.util.UnitUtil;


public class SearchUnit extends ActionSupport {
	private Unit unit;
	private String up_Unit_Id;
	private String result;

	public Unit getUnit() {
		return unit;
	}

	public void setUnit(Unit unit) {
		this.unit = unit;
	}

	public String getUp_Unit_Id() {
		return up_Unit_Id;
	}

	public void setUp_Unit_Id(String up_Unit_Id) {
		this.up_Unit_Id = up_Unit_Id;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String SearchUnit(){
		//System.out.println("到我�?);
		UnitUtil unitCRUD = new UnitUtil();
		List<Unit> a;
		try {
			a = unitCRUD.getUnitByUpUnitId(up_Unit_Id);
			System.out.println("中文 测试用的" + a);
			JSONArray jsonArray = JSONArray.fromObject(a);
			this.result = jsonArray.toString();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
}
