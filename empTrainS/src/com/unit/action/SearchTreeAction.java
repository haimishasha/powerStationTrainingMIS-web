package com.unit.action;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.db.MyTest;
import com.thinkPro.db.UnitCRUD;
import com.unit.bean.Unit;

public class SearchTreeAction extends ActionSupport {
	
	private String treeList2;
	
	 List<Map<String,String>> treeList;

	public String  searchTree(){
	     UnitCRUD unit = new UnitCRUD();
	     
	     this.treeList =unit.getUnitTree();
			
		JSONArray jsonArray = JSONArray.fromObject(treeList);
		this.treeList2 = jsonArray.toString();

		
		 return SUCCESS;
	 }

	public String getTreeList2() {
		return treeList2;
	}

	public void setTreeList2(String treeList2) {
		this.treeList2 = treeList2;
	}

	public List<Map<String, String>> getTreeList() {
		return treeList;
	}

	public void setTreeList(List<Map<String, String>> treeList) {
		this.treeList = treeList;
	}
	

}
