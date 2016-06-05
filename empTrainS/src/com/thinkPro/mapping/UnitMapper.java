package com.thinkPro.mapping;

import java.util.List;
import java.util.Map;

import com.unit.bean.Unit;



public interface UnitMapper {

	public int insertUnit(Unit unit);
	public int updateUnit(Unit unit);
	public int deleteUnit(String unit_Id);
	public Unit getUnitByUnitId(String unit_Id);
	public List<Unit> getUnitByUpUnitId(String up_Unit_Id);
	public List<Unit> getAllUnits();
	public List<Map<String,String>> getUnitTree();
	public List<Map<String,String>> getUnitId();
	
}
