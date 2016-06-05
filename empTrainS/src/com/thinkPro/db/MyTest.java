package com.thinkPro.db;

import java.util.ArrayList;
import java.util.List;

import com.unit.bean.Unit;

public class MyTest {
	public static List<Unit> getUnits(){
		List<Unit> units = new ArrayList<Unit>();
		Unit u1 = new Unit();
		u1.setUnit_Name("A");
		u1.setUp_Unit_Id("0");
		u1.setUnit_Id("001");
		units.add(u1);
		
		Unit u2 = new Unit();
		u2.setUnit_Name("B");
		u2.setUp_Unit_Id("001");
		u2.setUnit_Id("001001");
		units.add(u2);
		
		Unit u3 = new Unit();
		u3.setUnit_Name("C");
		u3.setUp_Unit_Id("001001");
		u3.setUnit_Id("001001001");
		units.add(u3);
		
		Unit u4 = new Unit();
		u4.setUnit_Name("D");
		u4.setUp_Unit_Id("001");
		u4.setUnit_Id("001002");
		units.add(u4);
		return units;
	}
	
}
