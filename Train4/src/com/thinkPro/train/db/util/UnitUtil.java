package com.thinkPro.train.db.util;

import java.util.List;
import java.util.Map;

import com.thinkPro.train.bean.unit.Unit;
import com.thinkPro.train.db.base.UnitBase;

public class UnitUtil {

	private UnitBase unitBase;
	
	public UnitUtil() {
		unitBase = new UnitBase();
	}
	
	
	public boolean insert(Unit unit){
		return unitBase.insertUnit(unit);
	}
	
	
	public boolean update(Unit unit){
		return unitBase.updateUnit(unit);
	}
	
	
	public boolean delete(String unitId){
		return unitBase.deleteUnit(unitId);
	}
	
	
	public Unit getUnitByUnitId(String unitId){
		return unitBase.getUnitByUnitId(unitId);
	}
	
	public List<Unit> getUnitByUpUnitId(String up_Unit_Id){
		return unitBase.getUnitByUpUnitId(up_Unit_Id);
	}
	

	public List<Unit> getAllUnits(){
		return unitBase.getAllUnits();
	}
	

	public List<Map<String,String>> getUnitTree(){
		return unitBase.getUnitTree();
	}
	
	public List<Map<String,String>> getUnitId(){
		return unitBase.getUnitId();
	}
}
