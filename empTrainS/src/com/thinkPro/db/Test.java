package com.thinkPro.db;

import java.util.List;
import java.util.Map;

import com.plan.bean.TrainPlan;

public class Test {

	public static void main(String[] args) {
//		UnitCRUD unitCRUD = new UnitCRUD();
//		 List<Map<String,String>>  a = unitCRUD.getUnitId();
//		 System.out.println(a);
		
		UnitCRUD unitCRUD = new UnitCRUD();
		 List<Map<String,String>> a = unitCRUD.getUnitTree();
		 System.out.println(a);
	}

}
