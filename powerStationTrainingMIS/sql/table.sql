-- ----------------------------
-- Table structure for train_plan_info
-- ----------------------------
DROP TABLE IF EXISTS `train_plan_info`;
CREATE TABLE `train_plan_info` (
  `trainPlanId` varchar(7) NOT NULL DEFAULT '' COMMENT '����',
  `trainPlanName` varchar(30) NOT NULL DEFAULT '' COMMENT '�ƻ�����',
  `trainPlanType` varchar(20) NOT NULL DEFAULT '��Ա���볧��ѵ',
  `trainPlanYear` varchar(8) NOT NULL DEFAULT '' COMMENT '���',
  `startTime` date NOT NULL COMMENT '��ʼʱ��',
  `endTime` date NOT NULL COMMENT '����ʱ��',
  `isFinish` varchar(8) NOT NULL DEFAULT 'δ���' COMMENT '������',
  PRIMARY KEY (`trainPlanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ѵ�ƻ���';

-- ----------------------------
-- Records of train_plan_info
-- ----------------------------
INSERT INTO `train_plan_info` VALUES ('tp10001', '������ѵ�ƻ�', '��Ա���볡��ѵ', '2016', '2016-05-09', '2016-06-09', '��ѵ��');
INSERT INTO `train_plan_info` VALUES ('tp10002', 'ȼ����ѵ�ƻ�', '��Ա���볡��ѵ', '2016', '2016-04-01', '2016-05-29', '��ѵ��');
INSERT INTO `train_plan_info` VALUES ('tp10003', '������ѵ�ƻ�', '��Ա���볡��ѵ', '2016', '2016-03-02', '2016-04-09', '�����');
INSERT INTO `train_plan_info` VALUES ('tp10004', '�������ѵ�ƻ�', '�в������Ա��ѵ', '2015', '2015-12-09', '2015-12-27', '�����');
INSERT INTO `train_plan_info` VALUES ('tp10005', '���鳤��ѵ�ƻ�', '���鳤��ѵ', '2016', '2016-06-10', '2016-06-19', 'δ��ѵ');

-- ----------------------------
-- Table structure for train_plan_item
-- ----------------------------
DROP TABLE IF EXISTS `train_plan_item`;
CREATE TABLE `train_plan_item` (
  `trainItemId` varchar(9) NOT NULL DEFAULT '' COMMENT '����',
  `trainPlanId` varchar(7) NOT NULL COMMENT '��ѵ�ƻ�ID',
  `major` varchar(8) NOT NULL COMMENT 'רҵ����',
  `trainPurpose` text COMMENT '��ѵĿ��',
  `trainContent` text COMMENT '��ѵ����',
  `classCount` varchar(4) DEFAULT NULL COMMENT '��ʱ',
  `teacher` varchar(12) DEFAULT NULL COMMENT '�ڿ���',
  `startTime` varchar(8) DEFAULT NULL,
  `endTime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`trainItemId`),
  KEY `fk_trainplanid` (`trainPlanId`),
  CONSTRAINT `fk_trainplanid` FOREIGN KEY (`trainPlanId`) REFERENCES `train_plan_info` (`trainPlanId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ѵ�ƻ���ϸ��';

-- ----------------------------
-- Records of train_plan_item
-- ----------------------------
INSERT INTO `train_plan_item` VALUES ('tp1000101', 'tp10001', '����', '���յ�������֪ʶ', '��������', '32', '½����', '8:00', '10:00');
INSERT INTO `train_plan_item` VALUES ('tp1000102', 'tp10001', 'ȼ��', '����ȼ�˽��ܽ���֪ʶ', 'ȼ�˽��ܽ���ƪ', '31', '��С��', '8:30', '10:30');
INSERT INTO `train_plan_item` VALUES ('tp1000201', 'tp10002', '����', '���յ����м�֪ʶ', '�����м�', '32', '½����', '9:00', '11:30');
INSERT INTO `train_plan_item` VALUES ('tp1000202', 'tp10002', 'ȼ��', '����ȼ�˽��ܻ���֪ʶ', 'ȼ�˽��ܻ���ƪ', '32', '��С��', '14:30', '16:30');
INSERT INTO `train_plan_item` VALUES ('tp1000203', 'tp10002', 'ȼ��', '����ȼ�˽��ܸ߼�֪ʶ', 'ȼ�˽��ܸ߼�ƪ', '30', '��С��', '15:00', '18:00');
INSERT INTO `train_plan_item` VALUES ('tp1000301', 'tp10003', '����', '���յ����߼�֪ʶ', '�����߼�', '32', '½����', '9:00', '11:00');
INSERT INTO `train_plan_item` VALUES ('tp1000302', 'tp10003', '����', '��������ϵͳ�Ļ���֪ʶ', '����ϵͳ����', '20', '½����', '8:00', '11:00');
-- ----------------------------
-- Table structure for emp_attendance
-- ----------------------------
DROP TABLE IF EXISTS `emp_attendance`;
CREATE TABLE `emp_attendance` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `staffId` varchar(12) NOT NULL,
  `trainItemId` varchar(9) NOT NULL,
  `recordDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `startTime` varchar(20) DEFAULT NULL,
  `arriveTime` varchar(20) DEFAULT NULL,
  `attendance` varchar(6) NOT NULL COMMENT '���ڡ�ȱ�ڡ��ٵ�',
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_attendance
-- ----------------------------
INSERT INTO `emp_attendance` VALUES ('1', '201600100201', 'tp1000102', '2016-06-19 18:21:16', '2016-6-19 8:00', '2016-6-19 8:00', '����', null);
INSERT INTO `emp_attendance` VALUES ('2', '201600100202', 'tp1000102', '2016-06-19 18:22:31', '', '', 'ȱ��', null);
INSERT INTO `emp_attendance` VALUES ('3', '201600100203', 'tp1000102', '2016-06-19 18:23:11', '2016-6-19 8:00', '2016-6-19 8:30', '�ٵ�', null);
INSERT INTO `emp_attendance` VALUES ('4', '201600100101', 'tp1000101', '2016-06-19 18:23:52', '2016-6-19 8:00', '2016-6-19 8:00', '����', null);
INSERT INTO `emp_attendance` VALUES ('5', '201600100102', 'tp1000101', '2016-06-19 18:24:13', '2016-6-19 8:00', '2016-6-19 8:00', '����', null);
INSERT INTO `emp_attendance` VALUES ('6', '201600100103', 'tp1000101', '2016-06-19 18:24:38', '2016-6-19 8:00', '2016-6-19 8:00', '����', null);

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `staffId` varchar(12) NOT NULL,
  `cardId` varchar(18) NOT NULL,
  `birthday` date DEFAULT NULL,
  `native` varchar(50) DEFAULT NULL COMMENT '����',
  `job` varchar(10) DEFAULT NULL,
  `unitId` varchar(6) NOT NULL,
  `title` varchar(16) DEFAULT NULL COMMENT 'ְ��',
  `telephone` varchar(11) DEFAULT NULL,
  `joinTime` date DEFAULT NULL COMMENT '�μӹ���ʱ��',
  `sex` varchar(2) DEFAULT NULL,
  `photo` blob COMMENT '��Ƭ',
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1', '��С��', '210600100101', '12345678909876543', '2016-06-08', 'ɽ��ʡ', '���޹�', '001001', '�߼�', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('2', '��С��', '201600100102', '12345678909876543', '2016-06-08', 'ɽ��ʡ', '���޹�', '001001', '�߼�', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('3', '��С��', '201600100103', '12345678909876543', '2016-06-08', 'ɽ��ʡ', '���޹�', '001001', '�߼�', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('4', '½����', '201600100201', '12345678909876543', '2015-12-17', 'ɽ��ʡ', '���乤', '001002', '����', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('5', '½����', '201600100202', '12345678909876543', '2015-11-04', 'ɽ��ʡ', '���乤', '001002', '����', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('6', '½����', '201600100203', '12345678909876543', '2016-01-01', 'ɽ��ʡ', '���乤', '001002', '����', '1234565', '2016-06-03', null, null);

-- ----------------------------
-- Table structure for train_emp
-- ----------------------------
DROP TABLE IF EXISTS `train_emp`;
CREATE TABLE `train_emp` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `trainItemId` varchar(9) NOT NULL COMMENT '��ѵ��ϸID',
  `staffId` varchar(12) NOT NULL,
  PRIMARY KEY (`objectId`),
  KEY `fk_trainplanitem_id` (`trainItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='��ѵѧԱ���ű�';

-- ----------------------------
-- Records of train_emp
-- ----------------------------
INSERT INTO `train_emp` VALUES ('1', 'tp1000101', '210600100101');
INSERT INTO `train_emp` VALUES ('2', 'tp1000101', '201600100102');
INSERT INTO `train_emp` VALUES ('3', 'tp1000101', '201600100103');
INSERT INTO `train_emp` VALUES ('4', 'tp1000102', '201600100201');
INSERT INTO `train_emp` VALUES ('5', 'tp1000102', '201600100202');
INSERT INTO `train_emp` VALUES ('6', 'tp1000102', '201600100201');

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `unitId` varchar(6) NOT NULL,
  `upUnitId` varchar(6) DEFAULT '00',
  `unitName` varchar(16) NOT NULL DEFAULT '',
  `address` varchar(48) DEFAULT '����',
  `telephone` varchar(11) DEFAULT '',
  `contactPerson` varchar(12) DEFAULT '',
  `email` varchar(24) DEFAULT '',
  `header` varchar(12) DEFAULT '' COMMENT '���ż��',
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`objectId`,`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('1', '00', '0', '̫ԭ�ڶ��ȵ糧', '����', '1234567', '����', '', '�ڶ��ȵ糧', '2016-05-29 11:19:48', null);
INSERT INTO `unit` VALUES ('2', '001', '00', '����һ��', '����', '', '', '', '��һ', '2016-05-29 17:57:19', null);
INSERT INTO `unit` VALUES ('3', '001001', '001', '����һ��', '����', '', '', '', '����1', '2016-06-01 21:13:35', null);
INSERT INTO `unit` VALUES ('4', '002', '00', '�������', '����', '', '', '', '���', '2016-05-31 17:11:23', null);
INSERT INTO `unit` VALUES ('5', '003', '00', '��������', '����', '', '', '', '����', '2016-06-01 21:12:37', null);
INSERT INTO `unit` VALUES ('6', '001002', '001', 'ȼ��һ��', '����', '', '', '', 'ȼ��1', '2016-06-08 10:12:37', null);
INSERT INTO `unit` VALUES ('7', '002001', '002', '����һ��', '����', '', '', '', '����1', '2016-06-08 10:13:38', null);
INSERT INTO `unit` VALUES ('8', '002002', '002', 'ȼ��һ��', '����', '', '', '', 'ȼ��1', '2016-06-08 10:14:29', null);
INSERT INTO `unit` VALUES ('9', '003001', '003', '����һ��', '����', '', '', '', '����1', '2016-06-08 10:15:12', null);
INSERT INTO `unit` VALUES ('10', '003002', '003', 'ȼ��һ��', '����', '', '', '', 'ȼ��1', '2016-06-08 10:15:40', null);
INSERT INTO `unit` VALUES ('11', '004', '00', '���޳���', '����', '', '', '', '����', '2016-06-08 11:06:48', null);
INSERT INTO `unit` VALUES ('12', '005', '00', '��¯����', '����', '', '', '', '��¯��', '2016-06-08 11:13:50', null);