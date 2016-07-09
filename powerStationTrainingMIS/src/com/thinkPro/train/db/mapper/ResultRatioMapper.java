package com.thinkPro.train.db.mapper;

import java.sql.SQLException;

import com.thinkPro.train.bean.result.TrainResultRatio;

public interface ResultRatioMapper {
	/* 根据培训计划明细Id获取对应的成绩比例记录 */
	public TrainResultRatio selectByTrainItemId(String trainItemId) throws SQLException;

	/* 设置当前培训计划明细的成绩比例 */
	public int update(TrainResultRatio trainResultRatio) throws SQLException;

	/* 插入当前培训计划明细的成绩比例 */
	public int insert(TrainResultRatio trainResultRatio) throws SQLException;
}
