package com.thinkPro.train.db.util;

import java.sql.SQLException;
import java.util.List;

import com.thinkPro.train.bean.plan.TrainPlan;
import com.thinkPro.train.bean.plan.TrainPlanInfo;
import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.base.TrainPlanInfoBase;
import com.thinkPro.train.db.base.TrainPlanItemBase;

/**
 * 
 * 培训计划数据库操作高层接口
 * 
 */
public class TrainPlanUtil {

	private TrainPlanInfoBase infoBase;

	private TrainPlanItemBase itemBase;

	public TrainPlanUtil() {

		infoBase = new TrainPlanInfoBase();

		itemBase = new TrainPlanItemBase();
	}

	/**
	 * 查询全部信息，包括培训计划信息和培训明细
	 * 
	 * @return 全部信息的链表
	 */
	public List<TrainPlan> getAllInfo() throws SQLException {

		return infoBase.getAllInfo();
	}

	/**
	 * 根据条件进行查询全部信息
	 * 
	 * @param trainplan
	 * @return 链表
	 */
	public List<TrainPlan> getInfoByIf(TrainPlan trainplan) throws SQLException {

		return infoBase.getInfoByIf(trainplan);
	}

	/**
	 * 根据培训计划信息ID查询培训计划信息
	 * 
	 * @param planinfoId
	 *            培训计划信息ID
	 * @return 培训计划信息
	 */
	public TrainPlanInfo getTrainPlanInfoById(String planinfoId)
			throws SQLException {

		return infoBase.getTrainPlanInfoById(planinfoId);
	}

	/**
	 * 根据培训计划明细ID查询培训计划明细
	 * 
	 * @param planitemId
	 *            培训计划明细ID
	 * @return 培训计划明细
	 */
	public TrainPlanItem getTrainPlanItemByItemId(String planitemId)
			throws SQLException {

		return itemBase.getTrainPlanItemByItemId(planitemId);
	}

	/**
	 * 根据培训计划信息ID查询培训计划明细
	 * 
	 * @param planinfoId
	 *            培训计划信息ID
	 * @return 培训计划明细链表
	 */
	public List<TrainPlanItem> getTrainPlanItemByInfoId(String planinfoId)
			throws SQLException {

		return itemBase.getTrainPlanItemByInfoId(planinfoId);

	}

	/**
	 * 根据培训计划信息ID查询培训计划明细ID
	 * 
	 * @param infoId
	 *            培训计划信息ID
	 * @return 培训计划明显ID 链表
	 */
	public List<String> getItemIdByInfoId(String infoId) throws SQLException {

		return itemBase.getItemIdByInfoId(infoId);
	}

	/**
	 * 添加培训计划信息，同时添加培训计划明细
	 * 
	 * @param planinfo
	 *            培训计划信息
	 * @param planitems
	 *            培训计划明细
	 * @return 插入成功 true 插入失败 false
	 */
	public boolean addTrainPlan(TrainPlanInfo planinfo,
			List<TrainPlanItem> planitems) throws SQLException {

		boolean result = false;

		String nextTrainPlanInfoId = infoBase.AddTrainPlanInfo(planinfo);

		if (result) {

			for (TrainPlanItem item : planitems) {

				item.setTrainPlanId(nextTrainPlanInfoId);

				if (itemBase.AddTrainPlanItem(item)) {

					result = true;

				} else {

					break;
				}
			}

		} else {

			// 如果培训计划有问题的话 首先下层需要回滚，本层需要抛出异常
		}

		return result;
	}

	/**
	 * 添加培训计划明细
	 * 
	 * @param planintem
	 *            培训计划明细
	 * @return 添加成功 true 添加失败 false
	 */
	public boolean addTrainPlanItem(TrainPlanItem planintem)
			throws SQLException {

		return itemBase.AddTrainPlanItem(planintem) ? true : false;
	}

	/**
	 * 修改培训计划信息
	 * 
	 * @param planinfo
	 *            培训计划信息
	 * @return 修改成功 true 修改失败 false
	 */
	public boolean updateTrainPlanInfo(TrainPlanInfo planinfo)
			throws SQLException {

		return infoBase.UpdateTrainPlanInfo(planinfo) ? true : false;
	}

	/**
	 * 修改培训计划明细
	 * 
	 * @param planitem
	 *            培训计划明细
	 * @return 修改成功 true 修改失败 false
	 */
	public boolean updateTrainPlanItem(TrainPlanItem planitem)
			throws SQLException {

		return itemBase.UpdateTrainPlanItem(planitem) ? true : false;
	}

	/**
	 * 删除培训计划信息、培训计划明细、培训学员
	 * 
	 * @param trainPlanInfoId
	 *            培训计划信息ID
	 * @return 删除成功 true 删除失败 false
	 */
	public boolean deleteTrainPlan(String trainPlanInfoId) throws SQLException {

		return infoBase.DeleteTrainPlanInfo(trainPlanInfoId) ? true : false;
	}

	/**
	 * 删除培训计划明细
	 * 
	 * @param trainPlanItemId
	 *            培训计划明细ID
	 * @return 删除成功 true 删除失败 false
	 */
	public boolean deleteTrainItem(String trainPlanItemId) throws SQLException {

		return itemBase.DeleteTrainPlanItem(trainPlanItemId) ? true : false;
	}
}
