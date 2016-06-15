INSERT INTO `staff` VALUES ('2', '韩小轩', '00100101', '12345678909876543', '2016-06-08', '山西省', '检修工', '001001', '高级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('3', '韩小轩', '00100102', '12345678909876543', '2016-06-08', '山西省', '检修工', '001001', '高级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('4', '韩小轩', '00100103', '12345678909876543', '2016-06-08', '山西省', '检修工', '001001', '高级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('5', '陆晓舒', '00100201', '12345678909876543', '2015-12-17', '山西省', '运输工', '0001002', '初级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('6', '陆晓舒', '00100202', '12345678909876543', '2015-11-04', '山西省', '运输工', null, '初级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('7', '陆晓舒', '00100203', '12345678909876543', '2016-01-01', '山西省', '运输工', null, '初级', '1234565', '2016-06-03', null, null);

INSERT INTO `train_plan_info` VALUES ('tp0001', '电气培训计划', '新员工入场培训', '2016', '2016-05-09', '2016-06-09', '培训中');
INSERT INTO `train_plan_info` VALUES ('tp0002', '燃运培训计划', '新员工入场培训', '2016', '2016-04-01', '2016-05-29', '培训中');
INSERT INTO `train_plan_info` VALUES ('tp0003', '汽机培训计划', '新员工入场培训', '2016', '2016-03-02', '2016-04-09', '已完成');
INSERT INTO `train_plan_info` VALUES ('tp0004', '管理层培训计划', '中层管理人员培训', '2015', '2015-12-09', '2015-12-27', '已完成');
INSERT INTO `train_plan_info` VALUES ('tp0005', '班组长培训计划', '班组长培训', '2016', '2016-06-10', '2016-06-19', '未培训');

INSERT INTO `train_plan_item` VALUES ('tp000101', 'tp0001', '电气', '掌握电气基本知识', '电气初级', '32', '陆晓轩');
INSERT INTO `train_plan_item` VALUES ('tp000102', 'tp0001', '燃运', '掌握燃运节能进阶知识', '燃运节能进阶篇', '31', '韩小雅');
INSERT INTO `train_plan_item` VALUES ('tp000201', 'tp0002', '电气', '掌握电气中级知识', '电气中级', '32', '陆晓轩');
INSERT INTO `train_plan_item` VALUES ('tp000202', 'tp0002', '燃运', '掌握燃运节能基本知识', '燃运节能基础篇', '32', '韩小雅');
INSERT INTO `train_plan_item` VALUES ('tp000203', 'tp0002', '燃运', '掌握燃运节能高级知识', '燃运节能高级篇', '30', '韩小雅');
INSERT INTO `train_plan_item` VALUES ('tp000301', 'tp0003', '电气', '掌握电气高级知识', '电气高级', '32', '陆晓轩');
INSERT INTO `train_plan_item` VALUES ('tp000302', 'tp0003', '汽机', '掌握汽机系统的基本知识', '汽机系统概述', '20', '陆晓轩');

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