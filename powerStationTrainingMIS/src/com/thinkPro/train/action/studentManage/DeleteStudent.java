package com.thinkPro.train.action.studentManage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.util.ArrangementUtil;

@SuppressWarnings("serial")
public class DeleteStudent extends ActionSupport{
	private String result;
	private String trainItemId;
	private Map<String, String> deleteEmp = new HashMap<String, String>();

	public String getTrainItemId() {
		return trainItemId;
	}
	public void setTrainItemId(String trainItemId) {
		this.trainItemId = trainItemId;
	}
	private List<String> staffIds = new ArrayList<String>();
	
	
	public List<String> getStaffIds() {
		return staffIds;
	}
	public void setStaffIds(List<String> staffIds) {
		this.staffIds = staffIds;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public String execute() throws Exception {
		
		System.out.println(staffIds.size());
		System.out.println(trainItemId);
		ArrangementUtil arrangementUtil = new ArrangementUtil();
		/*通过itemId得到数据库中的学员信息*/
		List<Staff> staffs = arrangementUtil.getStudentsByItemId(trainItemId);
		for (int i = 0; i < staffs.size(); i++) {
			for (int j = 0; j < staffIds.size(); j++) {
				if (staffs.get(i).getStaffId().equals(staffIds.get(j))) {
					String staffId = staffIds.get(j);
					deleteEmp.put("trainItemId", trainItemId);
					deleteEmp.put("staffId", staffId);
				}
				arrangementUtil.deleteStudentByID(deleteEmp);
			}
		}
		
		
		
		this.result = "10";
		return SUCCESS;
	}
}
