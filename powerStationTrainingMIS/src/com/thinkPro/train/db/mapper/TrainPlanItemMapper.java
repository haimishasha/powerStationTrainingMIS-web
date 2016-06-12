package com.thinkPro.train.db.mapper;

import java.util.List;

import com.thinkPro.train.bean.plan.TrainPlanItem;
/**
 * 
 * 培训计划明细数据库操作底层接口
 *
 */
public interface TrainPlanItemMapper {
	/**
	 * 根据培训明细Id查询培训计划明细
	 * @param trainPlanItemId
	 * @return
	 */
	public TrainPlanItem getTrainPlanItemByItemId(String trainPlanItemId);
	/**
	 * 根据培训计划Id查询培训计划明细
	 * @param trainPlanInfoId
	 * @return
	 */
	public List<TrainPlanItem> getTrainPlanItemByInfoId(String trainPlanInfoId);
	/**
	 * 根据培训计划信息Id查询培训计划明细Id
	 * @param trainPlanInfoId
	 * @return
	 */
	public List<String> getPlanItemIdByInfoId(String trainPlanInfoId);
	
	/**
	 * 创建培训计划明细
	 * @param trainPlanItem
	 * @return
	 */
	public int addTrainPlanItem(TrainPlanItem trainPlanItem);
	/**
	 * 修改培训计划明细
	 * @param trainPlanItem
	 * @return
	 */
	public int updateTrainPlanItem(TrainPlanItem trainPlanItem);
	/**
	 * 删除培训计划明细
	 * @param trainPlanItemId
	 * @return
	 */
	public int deleteTrainPlanItem(String trainPlanItemId);
}
