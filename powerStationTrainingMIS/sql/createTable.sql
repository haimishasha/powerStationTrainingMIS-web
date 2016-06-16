DROP TABLE IF EXISTS `train_plan_info`;
CREATE TABLE `train_plan_info` (
  `trainPlanId` varchar(7) NOT NULL DEFAULT '' COMMENT '主键',
  `trainPlanName` varchar(30) DEFAULT '' COMMENT '计划名称',
  `trainPlanType` varchar(20) DEFAULT '' COMMENT '计划类型',
  `trainPlanYear` varchar(8) DEFAULT '' COMMENT '年度',
  `startTime` date DEFAULT NULL COMMENT '开始时间',
  `endTime` date DEFAULT NULL COMMENT '结束时间',
  `isFinish` varchar(8) DEFAULT '' COMMENT '完成情况',
  PRIMARY KEY (`trainPlanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培训计划表';

DROP TABLE IF EXISTS `train_plan_item`;
CREATE TABLE `train_plan_item` (
  `trainItemId` varchar(9) NOT NULL DEFAULT '' COMMENT '主键',
  `trainPlanId` varchar(7) NOT NULL COMMENT '培训计划ID',
  `major` varchar(8) DEFAULT NULL COMMENT '专业名称',
  `trainPurpose` text COMMENT '培训目的',
  `trainContent` text COMMENT '培训内容',
  `classCount` varchar(4) DEFAULT NULL COMMENT '课时',
  `teacher` varchar(12) DEFAULT NULL COMMENT '授课人',
  PRIMARY KEY (`trainItemId`),
  KEY `fk_trainplanid` (`trainPlanId`),
  CONSTRAINT `fk_trainplanid` FOREIGN KEY (`trainPlanId`) REFERENCES `train_plan_info` (`trainPlanId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培训计划明细表';

DROP TABLE IF EXISTS `emp_attendance`;
CREATE TABLE `emp_attendance` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `staffId` varchar(12) DEFAULT NULL,
  `trainItemId` varchar(9) DEFAULT NULL,
  `recordDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `classStartTime` time DEFAULT NULL,
  `classEndTime` time DEFAULT NULL,
  `attendanceResult` varchar(6) DEFAULT NULL COMMENT '出勤、缺勤、迟到',
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `staffId` varchar(12) NOT NULL,
  `cardId` varchar(18) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `native` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `job` varchar(10) DEFAULT NULL,
  `unitId` varchar(6) DEFAULT NULL,
  `title` varchar(16) DEFAULT NULL COMMENT '职称',
  `telephone` varchar(11) DEFAULT NULL,
  `joinTime` date DEFAULT NULL COMMENT '参加工作时间',
  `sex` varchar(2) DEFAULT NULL,
  `photo` blob COMMENT '照片',
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `train_emp`;
CREATE TABLE `train_emp` (
  `trainEmpId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `trainPlanId` varchar(7) DEFAULT NULL COMMENT '培训计划ID',
  `trainItemId` varchar(9) DEFAULT NULL COMMENT '培训明细ID',
  `staffId` varchar(12) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`trainEmpId`),
  KEY `fk_trainplaninfo_id` (`trainPlanId`),
  KEY `fk_trainplanitem_id` (`trainItemId`),
  CONSTRAINT `fk_trainplaninfo_id` FOREIGN KEY (`trainPlanId`) REFERENCES `train_plan_info` (`trainPlanId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_trainplanitem_id` FOREIGN KEY (`trainItemId`) REFERENCES `train_plan_item` (`trainItemId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培训学员安排表';
  
DROP TABLE IF EXISTS `train_evaluation`;
CREATE TABLE `train_evaluation` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `trainItemId` varchar(9) DEFAULT NULL,
  `staffId` varchar(12) DEFAULT NULL,
  `content` text COMMENT '评估内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评估时间',
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `train_result`;
CREATE TABLE `train_result` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `trainEmpId` varchar(11) DEFAULT NULL,
  `attendanceTimes` int(4) DEFAULT NULL COMMENT '考勤次数',
  `attendanceResult` int(2) DEFAULT NULL,
  `examResult` int(2) DEFAULT NULL,
  `totalResult` int(2) DEFAULT NULL,
  `inputTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `train_result_ratio`;
CREATE TABLE `train_result_ratio` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `trainItemId` varchar(9) DEFAULT NULL,
  `examRatio` float DEFAULT NULL,
  `attendanceRatio` float DEFAULT NULL,
  `setTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `unitId` varchar(6) NOT NULL,
  `upUnitId` varchar(6) DEFAULT '00',
  `unitName` varchar(16) DEFAULT '',
  `address` varchar(48) DEFAULT '暂无',
  `telephone` varchar(11) DEFAULT '',
  `contactPerson` varchar(12) DEFAULT '',
  `email` varchar(24) DEFAULT '',
  `header` varchar(12) DEFAULT '' COMMENT '部门简称',
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`objectId`,`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;