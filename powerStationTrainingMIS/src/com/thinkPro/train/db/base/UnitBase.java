package com.thinkPro.train.db.base;

import java.sql.SQLException;
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
	
	public boolean insertUnit(Unit unit) throws SQLException{
		
		boolean result = false;
		
		//Unit newUnit = null;
		
		int temp = unitMapper.insertUnit(unit);
		
		if(temp>0){
			
			result = true;
			
			//newUnit = unitMapper.getNewUnit(unit.getUpUnitId());
			
		}
		
		//return newUnit;
		
		return result;
	}
	
	public boolean updateUnit(Unit unit) throws SQLException{
		
		boolean result = unitMapper.updateUnit(unit)>0?true:false;
		return result;
	}
	
	public boolean deleteUnit(String unit_Id) throws SQLException{
		
		boolean result = unitMapper.deleteUnit(unit_Id)>0?true:false;
		return result;
	}
	
	public Unit getUnitByUnitId(String unit_Id) throws SQLException{

		return unitMapper.getUnitByUnitId(unit_Id);		
	}
	public List<Unit> getUnitByUpUnitId(String up_Unit_Id) throws SQLException{
	
		return unitMapper.getUnitByUpUnitId(up_Unit_Id);
		
	}
	public List<Unit> getAllUnits() throws SQLException{

		return unitMapper.getAllUnits();
	}
	public List<Map<String,String>> getUnitTree() throws SQLException{	
		return unitMapper.getUnitTree();

	}
	
}
