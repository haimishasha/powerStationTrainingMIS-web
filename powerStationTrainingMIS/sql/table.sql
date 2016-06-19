-- ----------------------------
-- Table structure for train_plan_info
-- ----------------------------
DROP TABLE IF EXISTS `train_plan_info`;
CREATE TABLE `train_plan_info` (
  `trainPlanId` varchar(7) NOT NULL DEFAULT '' COMMENT '主键',
  `trainPlanName` varchar(30) NOT NULL DEFAULT '' COMMENT '计划名称',
  `trainPlanType` varchar(20) NOT NULL DEFAULT '新员工入厂培训',
  `trainPlanYear` varchar(8) NOT NULL DEFAULT '' COMMENT '年度',
  `startTime` date NOT NULL COMMENT '开始时间',
  `endTime` date NOT NULL COMMENT '结束时间',
  `isFinish` varchar(8) NOT NULL DEFAULT '未完成' COMMENT '完成情况',
  PRIMARY KEY (`trainPlanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培训计划表';

-- ----------------------------
-- Records of train_plan_info
-- ----------------------------
INSERT INTO `train_plan_info` VALUES ('tp10001', '电气培训计划', '新员工入场培训', '2016', '2016-05-09', '2016-06-09', '培训中');
INSERT INTO `train_plan_info` VALUES ('tp10002', '燃运培训计划', '新员工入场培训', '2016', '2016-04-01', '2016-05-29', '培训中');
INSERT INTO `train_plan_info` VALUES ('tp10003', '汽机培训计划', '新员工入场培训', '2016', '2016-03-02', '2016-04-09', '已完成');
INSERT INTO `train_plan_info` VALUES ('tp10004', '管理层培训计划', '中层管理人员培训', '2015', '2015-12-09', '2015-12-27', '已完成');
INSERT INTO `train_plan_info` VALUES ('tp10005', '班组长培训计划', '班组长培训', '2016', '2016-06-10', '2016-06-19', '未培训');

-- ----------------------------
-- Table structure for train_plan_item
-- ----------------------------
DROP TABLE IF EXISTS `train_plan_item`;
CREATE TABLE `train_plan_item` (
  `trainItemId` varchar(9) NOT NULL DEFAULT '' COMMENT '主键',
  `trainPlanId` varchar(7) NOT NULL COMMENT '培训计划ID',
  `major` varchar(8) NOT NULL COMMENT '专业名称',
  `trainPurpose` text COMMENT '培训目的',
  `trainContent` text COMMENT '培训内容',
  `classCount` varchar(4) DEFAULT NULL COMMENT '课时',
  `teacher` varchar(12) DEFAULT NULL COMMENT '授课人',
  `startTime` varchar(8) DEFAULT NULL,
  `endTime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`trainItemId`),
  KEY `fk_trainplanid` (`trainPlanId`),
  CONSTRAINT `fk_trainplanid` FOREIGN KEY (`trainPlanId`) REFERENCES `train_plan_info` (`trainPlanId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培训计划明细表';

-- ----------------------------
-- Records of train_plan_item
-- ----------------------------
INSERT INTO `train_plan_item` VALUES ('tp1000101', 'tp10001', '电气', '掌握电气基本知识', '电气初级', '32', '陆晓轩', '8:00', '10:00');
INSERT INTO `train_plan_item` VALUES ('tp1000102', 'tp10001', '燃运', '掌握燃运节能进阶知识', '燃运节能进阶篇', '31', '韩小雅', '8:30', '10:30');
INSERT INTO `train_plan_item` VALUES ('tp1000201', 'tp10002', '电气', '掌握电气中级知识', '电气中级', '32', '陆晓轩', '9:00', '11:30');
INSERT INTO `train_plan_item` VALUES ('tp1000202', 'tp10002', '燃运', '掌握燃运节能基本知识', '燃运节能基础篇', '32', '韩小雅', '14:30', '16:30');
INSERT INTO `train_plan_item` VALUES ('tp1000203', 'tp10002', '燃运', '掌握燃运节能高级知识', '燃运节能高级篇', '30', '韩小雅', '15:00', '18:00');
INSERT INTO `train_plan_item` VALUES ('tp1000301', 'tp10003', '电气', '掌握电气高级知识', '电气高级', '32', '陆晓轩', '9:00', '11:00');
INSERT INTO `train_plan_item` VALUES ('tp1000302', 'tp10003', '汽机', '掌握汽机系统的基本知识', '汽机系统概述', '20', '陆晓轩', '8:00', '11:00');
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
  `attendance` varchar(6) NOT NULL COMMENT '出勤、缺勤、迟到',
  `remark` text,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_attendance
-- ----------------------------
INSERT INTO `emp_attendance` VALUES ('1', '201600100201', 'tp1000102', '2016-06-19 18:21:16', '2016-6-19 8:00', '2016-6-19 8:00', '出勤', null);
INSERT INTO `emp_attendance` VALUES ('2', '201600100202', 'tp1000102', '2016-06-19 18:22:31', '', '', '缺勤', null);
INSERT INTO `emp_attendance` VALUES ('3', '201600100203', 'tp1000102', '2016-06-19 18:23:11', '2016-6-19 8:00', '2016-6-19 8:30', '迟到', null);
INSERT INTO `emp_attendance` VALUES ('4', '201600100101', 'tp1000101', '2016-06-19 18:23:52', '2016-6-19 8:00', '2016-6-19 8:00', '出勤', null);
INSERT INTO `emp_attendance` VALUES ('5', '201600100102', 'tp1000101', '2016-06-19 18:24:13', '2016-6-19 8:00', '2016-6-19 8:00', '出勤', null);
INSERT INTO `emp_attendance` VALUES ('6', '201600100103', 'tp1000101', '2016-06-19 18:24:38', '2016-6-19 8:00', '2016-6-19 8:00', '出勤', null);

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
  `native` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `job` varchar(10) DEFAULT NULL,
  `unitId` varchar(6) NOT NULL,
  `title` varchar(16) DEFAULT NULL COMMENT '职称',
  `telephone` varchar(11) DEFAULT NULL,
  `joinTime` date DEFAULT NULL COMMENT '参加工作时间',
  `sex` varchar(2) DEFAULT NULL,
  `photo` blob COMMENT '照片',
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1', '韩小轩', '210600100101', '12345678909876543', '2016-06-08', '山西省', '检修工', '001001', '高级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('2', '韩小轩', '201600100102', '12345678909876543', '2016-06-08', '山西省', '检修工', '001001', '高级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('3', '韩小轩', '201600100103', '12345678909876543', '2016-06-08', '山西省', '检修工', '001001', '高级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('4', '陆晓舒', '201600100201', '12345678909876543', '2015-12-17', '山西省', '运输工', '001002', '初级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('5', '陆晓舒', '201600100202', '12345678909876543', '2015-11-04', '山西省', '运输工', '001002', '初级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('6', '陆晓舒', '201600100203', '12345678909876543', '2016-01-01', '山西省', '运输工', '001002', '初级', '1234565', '2016-06-03', null, null);

-- ----------------------------
-- Table structure for train_emp
-- ----------------------------
DROP TABLE IF EXISTS `train_emp`;
CREATE TABLE `train_emp` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `trainItemId` varchar(9) NOT NULL COMMENT '培训明细ID',
  `staffId` varchar(12) NOT NULL,
  PRIMARY KEY (`objectId`),
  KEY `fk_trainplanitem_id` (`trainItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='培训学员安排表';

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
  `address` varchar(48) DEFAULT '暂无',
  `telephone` varchar(11) DEFAULT '',
  `contactPerson` varchar(12) DEFAULT '',
  `email` varchar(24) DEFAULT '',
  `header` varchar(12) DEFAULT '' COMMENT '部门简称',
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  PRIMARY KEY (`objectId`,`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('1', '00', '0', '太原第二热电厂', '暂无', '1234567', '李李', '', '第二热电厂', '2016-05-29 11:19:48', null);
INSERT INTO `unit` VALUES ('2', '001', '00', '发电一部', '暂无', '', '', '', '电一', '2016-05-29 17:57:19', null);
INSERT INTO `unit` VALUES ('3', '001001', '001', '电气一班', '暂无', '', '', '', '电气1', '2016-06-01 21:13:35', null);
INSERT INTO `unit` VALUES ('4', '002', '00', '发电二部', '暂无', '', '', '', '电二', '2016-05-31 17:11:23', null);
INSERT INTO `unit` VALUES ('5', '003', '00', '发电三部', '暂无', '', '', '', '电三', '2016-06-01 21:12:37', null);
INSERT INTO `unit` VALUES ('6', '001002', '001', '燃运一班', '暂无', '', '', '', '燃运1', '2016-06-08 10:12:37', null);
INSERT INTO `unit` VALUES ('7', '002001', '002', '电气一班', '暂无', '', '', '', '电气1', '2016-06-08 10:13:38', null);
INSERT INTO `unit` VALUES ('8', '002002', '002', '燃运一班', '暂无', '', '', '', '燃运1', '2016-06-08 10:14:29', null);
INSERT INTO `unit` VALUES ('9', '003001', '003', '电气一班', '暂无', '', '', '', '电气1', '2016-06-08 10:15:12', null);
INSERT INTO `unit` VALUES ('10', '003002', '003', '燃运一班', '暂无', '', '', '', '燃运1', '2016-06-08 10:15:40', null);
INSERT INTO `unit` VALUES ('11', '004', '00', '检修车间', '暂无', '', '', '', '检修', '2016-06-08 11:06:48', null);
INSERT INTO `unit` VALUES ('12', '005', '00', '锅炉车间', '暂无', '', '', '', '锅炉房', '2016-06-08 11:13:50', null);