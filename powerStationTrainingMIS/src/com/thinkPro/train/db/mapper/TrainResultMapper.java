package com.thinkPro.train.db.mapper;

import java.sql.SQLException;
import java.util.List;

import com.thinkPro.train.bean.result.TrainResult;
import com.thinkPro.train.bean.result.TrainResultCondition;
import com.thinkPro.train.bean.result.TrainResultReport;

public interface TrainResultMapper {
	
	/* 批量插入培训成绩List集合*/
	public int insertTrainResultList(List<TrainResult> trainResults) throws SQLException;
	
	/* 批量修改培训成绩List集合*/
	public int updateTrainResultList(List<TrainResult> trainResults) throws SQLException;
	
	/* 查询培训成绩List集合（员工表&成绩路由表&成绩表联合查询）*/
	public List<TrainResultReport> selectTrainResultList(TrainResultCondition trainResultCondition); 
}
