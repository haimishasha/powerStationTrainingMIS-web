package com.thinkPro.train.action.studentManage;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.util.ArrangementUtil;

@SuppressWarnings("serial")
public class SearchStudent extends ActionSupport {
	private List<Staff> result;
	private String itemId;

	public List<Staff> getResult() {
		return result;
	}

	public void setResult(List<Staff> result) {
		this.result = result;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	@Override
	public String execute() throws Exception {
		result = new ArrayList<Staff>();
		
		ArrangementUtil arrangementUtil = new ArrangementUtil();
		result = arrangementUtil.getStudentsByItemId(itemId);

		return SUCCESS;
	}
}
