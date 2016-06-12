package com.thinkPro.train.db.base;

import java.sql.SQLException;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.thinkPro.train.bean.plan.TrainPlanItem;
import com.thinkPro.train.db.mapper.TrainPlanItemMapper;
/**
 * 
 * 培训计划明细数据库操作基层接口
 *
 */
public class TrainPlanItemBase {

	private ApplicationContext applicationContext;
	
	private TrainPlanItemMapper trainPlanItemMapper;
	
	public TrainPlanItemBase(){
		
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		trainPlanItemMapper = (TrainPlanItemMapper)applicationContext.getBean("trainPlanItemMapper");
	}
	/**
	 * 根据培训明细Id查询培训计划明细
	 * @param itemId
	 * @return
	 */
	public TrainPlanItem getTrainPlanItemByItemId(String itemId) throws SQLException{
		
		return trainPlanItemMapper.getTrainPlanItemByItemId(itemId);
	}
	/**
	 * 根据培训计划Id查询培训计划明细
	 * @param infoId
	 * @return
	 */
	public List<TrainPlanItem> getTrainPlanItemByInfoId(String infoId) throws SQLException{
		
		return trainPlanItemMapper.getTrainPlanItemByInfoId(infoId);
	}
	/**
	 * 根据培训计划信息Id查询培训计划明细Id
	 * @param infoId
	 * @return
	 */
	public List<String> getItemIdByInfoId(String infoId) throws SQLException{
		
		return trainPlanItemMapper.getPlanItemIdByInfoId(infoId);
	}

	/**
	 * 创建培训计划明细
	 * @param planitem
	 * @return
	 */
	public boolean AddTrainPlanItem(TrainPlanItem planitem) throws SQLException {
		
		boolean result = trainPlanItemMapper.addTrainPlanItem(planitem)>-1?true:false;
		return result;
	}
	/**
	 * 修改培训计划明细
	 * @param planitem
	 * @return
	 */
	public boolean UpdateTrainPlanItem(TrainPlanItem planitem) throws SQLException {
		
		boolean result = trainPlanItemMapper.updateTrainPlanItem(planitem)>-1?true:false;
		return result;
	}
	/**
	 * 删除培训计划明细
	 * @param trainPlanItemId
	 * @return
	 */
	public boolean DeleteTrainPlanItem(String trainPlanItemId) throws SQLException{
		
		boolean result = trainPlanItemMapper.deleteTrainPlanItem(trainPlanItemId)>-1?true:false;
		return result;
	}
}
