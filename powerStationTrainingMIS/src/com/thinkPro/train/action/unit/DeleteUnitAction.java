package com.thinkPro.train.action.unit;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.thinkPro.train.db.util.UnitUtil;


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
		UnitUtil unitCRUD = new UnitUtil();
		 boolean  a = unitCRUD.delete(unit_Id);
		return SUCCESS;
	  
  }
  
}
