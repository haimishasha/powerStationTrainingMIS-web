package com.thinkPro.train.db.base;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.unit.Unit;
import com.thinkPro.train.db.mapper.UnitMapper;

public class UnitBase {

	private  ApplicationContext applicationContext;
	
	private  UnitMapper unitMapper;
	
	public UnitBase(){
		
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		unitMapper = (UnitMapper)applicationContext.getBean("unitMapper");
	}
	
	public boolean insertUnit(Unit unit){
		
		boolean result = false;
		
		String unitId = unitMapper.getUnitNextId(unit.getUpUnitId());
		
		if(null == unitId || "".equals(unitId)){
			
			unitId = unit.getUpUnitId()+"001";
		}
		
		unit.setUnitId(unitId);
		
		int temp = unitMapper.insertUnit(unit);
		
		if(temp>0){
			
			result = true;
		}
		
		return result;
	}
	
	public boolean updateUnit(Unit unit){
		
		boolean result = false;
		
		int temp = unitMapper.updateUnit(unit);
		
		if(temp>0){
			
			result = true;
		}
		return result;
	}
	
	public boolean deleteUnit(String unit_Id){
		
		boolean result = false;
		
		int temp = unitMapper.deleteUnit(unit_Id);
		
		if(temp>0){
			
			result = true;
		}
		
		return result;
	}
	
	public Unit getUnitByUnitId(String unit_Id){

		Unit unit = unitMapper.getUnitByUnitId(unit_Id);
		
		return unit;
		
	}
	public List<Unit> getUnitByUpUnitId(String up_Unit_Id){
		
		List<Unit> units = new ArrayList<Unit>();
		
		units = unitMapper.getUnitByUpUnitId(up_Unit_Id);
		
		return units;
		
	}
	public List<Unit> getAllUnits(){
		
		List<Unit> units = new ArrayList<Unit>();
		
		units = unitMapper.getAllUnits();
		
		return units;
	}
	public List<Map<String,String>> getUnitTree(){
		
		List<Map<String,String>> unitTree = unitMapper.getUnitTree();
		
		return unitTree;
	}
	
	public List<Map<String,String>> getUnitTreeAndNextId(){
		
		List<Map<String,String>> unitTree = unitMapper.getUnitTreeAndNextId();
		
		return unitTree;
	}
}
