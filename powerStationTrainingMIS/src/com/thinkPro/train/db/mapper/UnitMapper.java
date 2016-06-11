package com.thinkPro.train.db.mapper;

import java.util.List;
import java.util.Map;

import com.thinkPro.train.bean.unit.Unit;



public interface UnitMapper {

	public int insertUnit(Unit unit);
	public int updateUnit(Unit unit);
	public int deleteUnit(String unitId);
	public Unit getUnitByUnitId(String unitId);
	public List<Unit> getUnitByUpUnitId(String upUnitId);
	public List<Unit> getAllUnits();
	public List<Map<String,String>> getUnitTree();
	public List<Map<String,String>> getUnitId();
	public String getUnitNextId(String upUnitId);
	
}
