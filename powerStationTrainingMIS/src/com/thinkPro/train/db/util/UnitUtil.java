package com.thinkPro.train.db.util;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.thinkPro.train.bean.unit.Unit;
import com.thinkPro.train.db.base.UnitBase;
/**
 * 
 * 部门信息数据库操作高层接口
 *
 */
public class UnitUtil {

	private UnitBase unitBase;
	
	public UnitUtil() {
		
		unitBase = new UnitBase();
	}
	
	/**
	 * 添加部门信息
	 * @param unit 部门信息
	 * @return 插入成功  true 插入失败 false
	 */
	public boolean insert(Unit unit) throws SQLException{
		
		return unitBase.insertUnit(unit);
	}
	
	/**
	 * 修改部门信息
	 * @param unit 部门信息
	 * @return 修改成功  true 修改失败 false
	 */
	public boolean update(Unit unit) throws SQLException{
		
		return unitBase.updateUnit(unit);
	}
	
	/**
	 * 删除部门信息
	 * @param unitId  部门Id
	 * @return 删除成功  true 删除失败 false
	 */
	public boolean delete(String unitId) throws SQLException{
		
		return unitBase.deleteUnit(unitId);
	}
	
	/**
	 * 根据部门Id查询部门信息
	 * @param unitId 部门Id
	 * @return 返回满足条件的部门信息
	 */
	public Unit getUnitByUnitId(String unitId) throws SQLException{
		
		return unitBase.getUnitByUnitId(unitId);
	}
	/**
	 * 根据上级部门Id查询部门信息
	 * @param upUnitId 上级部门Id
	 * @return 返回满足条件的部门信息
	 */
	public List<Unit> getUnitByUpUnitId(String upUnitId) throws SQLException{
		
		return unitBase.getUnitByUpUnitId(upUnitId);
	}
	
	/**
	 * 查询全部部门信息
	 * @return 所有部门的信息
	 */
	public List<Unit> getAllUnits() throws SQLException{
		
		return unitBase.getAllUnits();
	}
	
	/**
	 * 查询部门树 
	 * @return 包括本级部门Id,部门名称,上级部门Id
	 */
	public List<Map<String,String>> getUnitTree() throws SQLException{
		
		return unitBase.getUnitTree();
	}
	
}
