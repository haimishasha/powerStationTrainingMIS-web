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
	 * ����µĲ���
	 * @param unit ����
	 * @return ��ӳɹ� true
	 */
	public boolean insert(Unit unit){
		return unitOperate.insertUnit(unit);
	}
	
	/**
	 * �޸Ĳ�����Ϣ
	 * @param unit ����
	 * @return �޸ĳɹ� true
	 */
	public boolean update(Unit unit){
		return unitOperate.updateUnit(unit);
	}
	
	/**
	 * ɾ��������Ϣ
	 * @param unit_Id ����ID
	 * @return ɾ���ɹ� true
	 */
	public boolean delete(String unit_Id){
		return unitOperate.deleteUnit(unit_Id);
	}
	
	/**
	 * ���ݲ���Id��ѯ������Ϣ
	 * @param unit_Id ����Id
	 * @return Unit
	 */
	public Unit getUnitByUnitId(String unit_Id){
		return unitOperate.getUnitByUnitId(unit_Id);
	}
	
	/**
	 * �����ϼ�����Id��ѯ�¼�������Ϣ
	 * @param up_Unit_Id �ϼ�������Ϣ
	 * @return һ��Unit�б�
	 */
	public List<Unit> getUnitByUpUnitId(String up_Unit_Id){
		return unitOperate.getUnitByUpUnitId(up_Unit_Id);
	}
	
	/**
	 * ��ѯ���в�����Ϣ
	 * @return һ��Unit�б�
	 */
	public List<Unit> getAllUnits(){
		return unitOperate.getAllUnits();
	}
	
	/**
	 * ��ѯ����Tree�������Ϣ
	 * @return
	 */
	public List<Map<String,String>> getUnitTree(){
		return unitOperate.getUnitTree();
	}
	
	/**
	 * ��ѯ���ɵ�Id
	 * @return
	 */
	public List<Map<String,String>> getUnitId(){
		return unitOperate.getUnitId();
	}
}
