package com.thinkPro.db;

import com.plan.bean.TrainPlan;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TrainPlanCRUD test = new TrainPlanCRUD();
		//System.out.println(test.getItemIdByInfoId("tp00003"));
		TrainPlan plan = new TrainPlan();
		System.out.println(test.getInfoByIf(plan));
	}

}
