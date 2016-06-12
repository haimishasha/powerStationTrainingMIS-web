package com.thinkPro.train.action.unit;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.db.util.UnitUtil;


@SuppressWarnings("serial")
public class SearchTreeAction extends ActionSupport {
	
	private String treeList2;
	
	 List<Map<String,String>> treeList;

	public String  searchTree(){
	     UnitUtil unit = new UnitUtil();
	     
	     try {
			this.treeList =unit.getUnitTree();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
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
