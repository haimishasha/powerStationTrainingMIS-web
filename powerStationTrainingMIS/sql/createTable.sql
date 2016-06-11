DROP TABLE IF EXISTS `train_plan_info`;
CREATE TABLE `train_plan_info` (
  `trainPlanId` varchar(50) NOT NULL DEFAULT '' COMMENT '����',
  `trainPlanName` varchar(50) DEFAULT '' COMMENT '�ƻ�����',
  `trainPlanType` varchar(50) DEFAULT '' COMMENT '�ƻ�����',
  `trainPlanYear` varchar(8) DEFAULT '' COMMENT '���',
  `startTime` date DEFAULT NULL COMMENT '��ʼʱ��',
  `endTime` date DEFAULT NULL COMMENT '����ʱ��',
  `isFinish` varchar(10) DEFAULT '' COMMENT '������',
  PRIMARY KEY (`trainPlanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ѵ�ƻ���';

DROP TABLE IF EXISTS `train_plan_item`;
CREATE TABLE `train_plan_item` (
  `trainItemId` varchar(50) NOT NULL DEFAULT '' COMMENT '����',
  `trainPlanId` varchar(50) DEFAULT NULL COMMENT '��ѵ�ƻ�ID',
  `major` varchar(50) DEFAULT NULL COMMENT 'רҵ����',
  `trainPurpose` text COMMENT '��ѵĿ��',
  `trainContent` text COMMENT '��ѵ����',
  `classCount` varchar(50) DEFAULT NULL COMMENT '��ʱ',
  `teacher` varchar(20) DEFAULT NULL COMMENT '�ڿ���',
  PRIMARY KEY (`trainItemId`),
  KEY `fk_trainplanid` (`trainPlanId`),
  CONSTRAINT `fk_trainplanid` FOREIGN KEY (`trainPlanId`) REFERENCES `train_plan_info` (`trainPlanId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ѵ�ƻ���ϸ��';

DROP TABLE IF EXISTS `emp_attendance`;
CREATE TABLE `emp_attendance` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `staffId` varchar(11) DEFAULT NULL,
  `trainItemId` varchar(50) DEFAULT NULL,
  `recordDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `classStartTime` time DEFAULT NULL,
  `classEndTime` time DEFAULT NULL,
  `attendanceResult` varchar(6) DEFAULT NULL COMMENT '���ڡ�ȱ�ڡ��ٵ�',
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `staffId` varchar(11) NOT NULL,
  `cardId` varchar(18) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `native` varchar(256) DEFAULT NULL COMMENT '����',
  `job` varchar(10) DEFAULT NULL,
  `unitId` varchar(40) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL COMMENT 'ְ��',
  `telephone` varchar(11) DEFAULT NULL,
  `joinTime` date DEFAULT NULL COMMENT '�μӹ���ʱ��',
  `sex` varchar(2) DEFAULT NULL,
  `photo` blob COMMENT '��Ƭ',
  PRIMARY KEY (`objectId`,`staffId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `train_emp`;
CREATE TABLE `train_emp` (
  `trainEmpId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `trainPlanId` varchar(50) DEFAULT NULL COMMENT '��ѵ�ƻ�ID',
  `trainItemId` varchar(50) DEFAULT NULL COMMENT '��ѵ��ϸID',
  `staffId` varchar(11) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`trainEmpId`),
  KEY `fk_trainplaninfo_id` (`trainPlanId`),
  KEY `fk_trainplanitem_id` (`trainItemId`),
  CONSTRAINT `fk_trainplaninfo_id` FOREIGN KEY (`trainPlanId`) REFERENCES `train_plan_info` (`trainPlanId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_trainplanitem_id` FOREIGN KEY (`trainItemId`) REFERENCES `train_plan_item` (`trainItemId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ѵѧԱ���ű�';
  
DROP TABLE IF EXISTS `train_evaluation`;
CREATE TABLE `train_evaluation` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `trainItemId` varchar(50) DEFAULT NULL,
  `staffId` varchar(11) DEFAULT NULL,
  `content` text COMMENT '��������',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `train_result`;
CREATE TABLE `train_result` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `trainEmpId` varchar(50) DEFAULT NULL,
  `attendanceTimes` int(11) DEFAULT NULL COMMENT '���ڴ���',
  `attendanceResult` int(11) DEFAULT NULL,
  `examResult` int(11) DEFAULT NULL,
  `totalResult` int(11) DEFAULT NULL,
  `inputTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `train_result_ratio`;
CREATE TABLE `train_result_ratio` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `trainItemId` varchar(50) DEFAULT NULL,
  `examRatio` float DEFAULT NULL,
  `attendanceRatio` float DEFAULT NULL,
  `setTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `unitId` varchar(40) NOT NULL,
  `upUnitId` varchar(40) DEFAULT '00',
  `unitName` varchar(100) DEFAULT '',
  `address` varchar(200) DEFAULT '����',
  `telephone` varchar(40) DEFAULT '',
  `contactPerson` varchar(40) DEFAULT '',
  `email` varchar(40) DEFAULT '',
  `header` varchar(40) DEFAULT '' COMMENT '���ż��',
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`objectId`,`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

