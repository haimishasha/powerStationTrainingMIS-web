package com.thinkPro.train.test.db;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.junit.Test;

import com.thinkPro.train.bean.unit.Unit;
import com.thinkPro.train.db.util.UnitUtil;

public class TestUnit {

	UnitUtil util = new UnitUtil();
	@Test
	public void testInsert(){
		Unit unit = new Unit();
		unit.setUpUnitId("004");
		unit.setUnitName("检修一班");
		unit.setHeader("检一");
		try {
			if(util.insert(unit)){
				System.out.println("添加部门成功");
			}else{
				System.out.println("添加部门失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void testUpdate(){
		Unit unit = new Unit();
		unit.setUnitId("001001");
		unit.setHeader("电气1班");
		try {
			if(util.update(unit)){
				System.out.println("部门修改成功");
			}else{
				System.out.println("部门修改失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testDelete(){
		try {
			if(util.delete("002002")){
				System.out.println("部门删除成功");
			}else{
				System.out.println("部门删除失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	@Test
	public void testGetUnitByUnitId(){
		Unit unit;
		try {
			unit = util.getUnitByUnitId("001001");
			System.out.println(unit);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void testGetUnitByUpUnitId(){
		List<Unit> units;
		try {
			units = util.getUnitByUpUnitId("001");
			System.out.println(units);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void testGetAllUnits(){
		List<Unit> units;
		try {
			units = util.getAllUnits();
			System.out.println(units);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void testGetUnitTree(){
		List<Map<String, String>> unitTree;
		try {
			unitTree = util.getUnitTree();
			System.out.println(unitTree);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
