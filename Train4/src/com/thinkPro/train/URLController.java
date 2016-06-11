package com.thinkPro.train;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class URLController extends ActionSupport {
	
	public String toAddPlanPage(){
		System.out.println("yunxingdaowole");
		return SUCCESS;
	}
	
	public String toDepartPage(){
		return SUCCESS;
	}
	
	public String toStaffPage(){
		return SUCCESS;
	}
}