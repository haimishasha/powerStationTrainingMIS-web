package com.thinkPro.db;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.mapping.UnitMapper;
import com.unit.bean.Unit;

public class UnitOpetate {

	private static ApplicationContext applicationContext;
	
	static{
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	}
	
	public boolean insertUnit(Unit unit){
		
		boolean result = false;
		UnitMapper unitMapper = (UnitMapper)applicationContext.getBean("unitMapper");
		int temp = unitMapper.insertUnit(unit);
		if(temp>0){
			result = true;
		}
		return result;
	}
	
	public boolean updateUnit(Unit unit){
		
		boolean result = false;
		UnitMapper unitMapper = (UnitMapper)applicationContext.getBean("unitMapper");
		int temp = unitMapper.updateUnit(unit);
		if(temp>0){
			result = true;
		}
		return result;
	}
	
	public boolean deleteUnit(String unit_Id){
		
		boolean result = false;
		UnitMapper unitMapper = (UnitMapper)applicationContext.getBean("unitMapper");
		int temp = unitMapper.deleteUnit(unit_Id);
		if(temp>0){
			result = true;
		}
		return result;
	}
	
	public Unit getUnitByUnitId(String unit_Id){
		
		
		UnitMapper unitMapper = (UnitMapper)applicationContext.getBean("unitMapper");
		
		Unit unit = unitMapper.getUnitByUnitId(unit_Id);
		
		return unit;
		
	}
	public List<Unit> getUnitByUpUnitId(String up_Unit_Id){
		
		List<Unit> units = new ArrayList<Unit>();
		
		
		UnitMapper unitMapper = (UnitMapper)applicationContext.getBean("unitMapper");
		
		units = unitMapper.getUnitByUpUnitId(up_Unit_Id);
		
		return units;
		
	}
	public List<Unit> getAllUnits(){
		
		List<Unit> units = new ArrayList<Unit>();

		UnitMapper unitMapper = (UnitMapper)applicationContext.getBean("unitMapper");
		
		units = unitMapper.getAllUnits();
		
		return units;
	}
	public List<Map<String,String>> getUnitTree(){
		
		UnitMapper unitMapper = (UnitMapper)applicationContext.getBean("unitMapper");
		
		List<Map<String,String>> unitTree = unitMapper.getUnitTree();
		
		return unitTree;
	}
	
	public List<Map<String,String>> getUnitId(){
		
		UnitMapper unitMapper = (UnitMapper)applicationContext.getBean("unitMapper");
		
		List<Map<String,String>> unitTree = unitMapper.getUnitId();
		
		return unitTree;
	}
}
