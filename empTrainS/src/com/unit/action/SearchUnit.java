package com.unit.action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.unit.bean.Unit;

public class SearchUnit extends ActionSupport implements ModelDriven<Unit>{
	Unit unit;
    ArrayList<Unit> unitList=new ArrayList<Unit>(); 
	
	public String SearchUnit(){
		
		//������ò�ѯ�ķ���
		//unitList=dosearch(unit.unit_Class,unit.Id,unit_Name);
		System.out.println("��ѯ�ɹ�");
		return SUCCESS;
	}
	
	@Override
	public Unit getModel() {
		// TODO Auto-generated method stub
		return unit;
	}
}
