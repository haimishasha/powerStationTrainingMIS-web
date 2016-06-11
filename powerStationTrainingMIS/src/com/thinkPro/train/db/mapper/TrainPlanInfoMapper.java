package com.thinkPro.train.db.mapper;

import java.util.List;

import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
/**
 * 
 * 培训计划数据库操作底层接口
 *
 */
public interface TrainPlanInfoMapper {
	/**
	 * 查询培训计划和明细全部信息
	 * @return
	 */
	public List<TrainPlan> getAllInfo();
	/**
	 * 根据条件进行查询和明细全部信息
	 * @param trainPlan
	 * @return
	 */
	public List<TrainPlan> getInfoByIf(TrainPlan trainPlan);
	/**
	 * 根据Id查询培训计划信息
	 * @param trainPlanId
	 * @return
	 */
	public TrainPlanInfo getTrainPlanInfoById(String trainPlanId);
	/**
	 * 查询下一个培训计划Id
	 * @return
	 */
	public String getNextPlanId();
	/**
	 * 创建培训计划
	 * @param trianPlanInfo
	 * @return
	 */
	public int addTrainPlanInfo(TrainPlanInfo trianPlanInfo);
	/**
	 * 修改培训计划
	 * @param trainPlanInfo
	 * @return
	 */
	public int updateTrainPlanInfo(TrainPlanInfo trainPlanInfo);
	/**
	 * 删除培训计划
	 * @param trainPlanInfoId
	 * @return
	 */
	public int deleteTrainPlanInfo(String trainPlanInfoId);
}
