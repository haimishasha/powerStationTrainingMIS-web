package com.unit.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.db.UnitCRUD;
import com.unit.bean.Unit;

public class DeleteUnitAction extends ActionSupport {
     private String unit_Id;
     private String result;
     
  public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
public String getUnit_Id() {
		return unit_Id;
	}
	public void setUnit_Id(String unit_Id) {
		this.unit_Id = unit_Id;
	}
public String deleteUnit(){
//	  System.out.println("删除");
		UnitCRUD unitCRUD = new UnitCRUD();
		 boolean  a = unitCRUD.delete(unit_Id);
		return SUCCESS;
	  
  }
  
}
