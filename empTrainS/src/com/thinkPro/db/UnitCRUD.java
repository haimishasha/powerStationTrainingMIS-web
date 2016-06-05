package com.thinkPro.db;

import java.util.List;
import java.util.Map;

import com.unit.bean.Unit;

public class UnitCRUD {

	private UnitOpetate unitOperate;
	
	public UnitCRUD() {
		unitOperate = new UnitOpetate();
	}
	
	/**
	 * 添加新的部门
	 * @param unit 部门
	 * @return 添加成功 true
	 */
	public boolean insert(Unit unit){
		return unitOperate.insertUnit(unit);
	}
	
	/**
	 * 修改部门信息
	 * @param unit 部门
	 * @return 修改成功 true
	 */
	public boolean update(Unit unit){
		return unitOperate.updateUnit(unit);
	}
	
	/**
	 * 删除部门信息
	 * @param unit_Id 部门ID
	 * @return 删除成功 true
	 */
	public boolean delete(String unit_Id){
		return unitOperate.deleteUnit(unit_Id);
	}
	
	/**
	 * 根据部门Id查询部门信息
	 * @param unit_Id 部门Id
	 * @return Unit
	 */
	public Unit getUnitByUnitId(String unit_Id){
		return unitOperate.getUnitByUnitId(unit_Id);
	}
	
	/**
	 * 根据上级部门Id查询下级部门信息
	 * @param up_Unit_Id 上级部门信息
	 * @return 一个Unit列表
	 */
	public List<Unit> getUnitByUpUnitId(String up_Unit_Id){
		return unitOperate.getUnitByUpUnitId(up_Unit_Id);
	}
	
	/**
	 * 查询所有部门信息
	 * @return 一个Unit列表
	 */
	public List<Unit> getAllUnits(){
		return unitOperate.getAllUnits();
	}
	
	/**
	 * 查询部门Tree所需的信息
	 * @return
	 */
	public List<Map<String,String>> getUnitTree(){
		return unitOperate.getUnitTree();
	}
	
	/**
	 * 查询生成的Id
	 * @return
	 */
	public List<Map<String,String>> getUnitId(){
		return unitOperate.getUnitId();
	}
}
