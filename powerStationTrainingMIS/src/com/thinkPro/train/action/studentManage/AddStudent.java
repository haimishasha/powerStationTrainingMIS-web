package com.thinkPro.train.action.studentManage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.thinkPro.train.bean.staff.Staff;
import com.thinkPro.train.db.util.ArrangementUtil;

@SuppressWarnings("serial")
public class AddStudent extends ActionSupport{
	private String[] student_check;
	private String trainItemId;
//	用来判断，是否有必要进行数据库操作；
	private int saveNum = 0;
	
	public String getTrainItemId() {
		return trainItemId;
	}
	public void setTrainItemId(String trainItemId) {
		this.trainItemId = trainItemId;
	}
	public String[] getStudent_check() {
		return student_check;
	}
	public void setStudent_check(String[] student_check) {
		this.student_check = student_check;
	}
	@Override
	public String execute() throws Exception {
		Map<String, String> addStudent = new HashMap<String,String>();	
		ArrangementUtil arrangementUtil = new ArrangementUtil();
		List<Staff> staffs = arrangementUtil.getStudentsByItemId(trainItemId);
		/* 保存时，表格为空，不需要保存 */
		if (student_check == null || student_check.length == 0) {
			return ERROR;
		}
		/* 数据库中数据为空，直接保存 */
		if (staffs == null || staffs.size() == 0 ) {
			for (int i = 0; i < student_check.length; i++){
				addStudent.put("trainItemId", trainItemId);
				addStudent.put("staffId", student_check[i]);
				arrangementUtil.addStudent(addStudent);
				saveNum = saveNum + 1;
			}
			return SUCCESS;
		}
		/* 数据库与页面表格都不为空 */
		boolean isSame = true;
		
		for (int i = 0; i < student_check.length; i++) {
			for (int j = 0; j < staffs.size(); j++) {
				if (staffs.get(j).getStaffId().equals(student_check[i])) {
					/*System.out.println(trainItemId + " 输出 " + student_check[i]);
					addStudent.put("trainItemId", trainItemId);
					addStudent.put("staffId", student_check[i]);
					saveNum = saveNum + 1;*/
					isSame = false;
				}
			}
			if (isSame) {
				addStudent.put("trainItemId", trainItemId);
				addStudent.put("staffId", student_check[i]);
				arrangementUtil.addStudent(addStudent);
				isSame = true;
				saveNum = saveNum + 1;
			}
		}
		/* 判断是否需要进行数据库操作 */
		/*if (saveNum != 0) {
			if (!arrangementUtil.addStudent(addStudent)) {
				return ERROR; 
			}
		}*/
		
		return SUCCESS;
	}
}
