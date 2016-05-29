/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.22-log : Database - train
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`train` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `train`;

/*Table structure for table `train_emp` */

DROP TABLE IF EXISTS `train_emp`;

CREATE TABLE `train_emp` (
  `TRAIN_EMP_ID` varchar(50) NOT NULL COMMENT '主键',
  `TRAIN_PLAN_ID` varchar(50) DEFAULT NULL COMMENT '培训计划ID',
  `TRAIN_ITEM_ID` varchar(50) DEFAULT NULL COMMENT '培训明细ID',
  PRIMARY KEY (`TRAIN_EMP_ID`),
  KEY `fk_trainplaninfo_id` (`TRAIN_PLAN_ID`),
  KEY `fk_trainplanitem_id` (`TRAIN_ITEM_ID`),
  CONSTRAINT `fk_trainplaninfo_id` FOREIGN KEY (`TRAIN_PLAN_ID`) REFERENCES `train_plan_info` (`TRAIN_PLAN_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_trainplanitem_id` FOREIGN KEY (`TRAIN_ITEM_ID`) REFERENCES `train_plan_item` (`TRAIN_ITEM_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培训学员安排表';

/*Data for the table `train_emp` */

insert  into `train_emp`(`TRAIN_EMP_ID`,`TRAIN_PLAN_ID`,`TRAIN_ITEM_ID`) values ('te001','tp00003','ti001'),('te002','tp00003','ti001'),('te003','tp00003','ti002'),('te004','tp00003','ti002');

/*Table structure for table `train_plan_info` */

DROP TABLE IF EXISTS `train_plan_info`;

CREATE TABLE `train_plan_info` (
  `TRAIN_PLAN_ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键',
  `TRAIN_PLAN_NAME` varchar(50) DEFAULT '' COMMENT '计划名称',
  `TRAIN_PLAN_TYPE` varchar(50) DEFAULT '' COMMENT '计划类型',
  `TRAIN_PLAN_YEAR` varchar(8) DEFAULT '' COMMENT '年度',
  `START_TIME` date DEFAULT NULL COMMENT '开始时间',
  `END_TIME` date DEFAULT NULL COMMENT '结束时间',
  `IS_FINISH` varchar(10) DEFAULT '' COMMENT '完成情况',
  PRIMARY KEY (`TRAIN_PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培训计划表';

/*Data for the table `train_plan_info` */

insert  into `train_plan_info`(`TRAIN_PLAN_ID`,`TRAIN_PLAN_NAME`,`TRAIN_PLAN_TYPE`,`TRAIN_PLAN_YEAR`,`START_TIME`,`END_TIME`,`IS_FINISH`) values ('tp00002','bbb',NULL,'2016','2016-05-21','2016-05-28','未完成'),('tp00003','ccc','333','2016','2016-05-21','2016-05-31','未完成'),('tp00004','ddd','444','2016','2016-05-21','2016-05-21','未完成');

/*Table structure for table `train_plan_item` */

DROP TABLE IF EXISTS `train_plan_item`;

CREATE TABLE `train_plan_item` (
  `TRAIN_ITEM_ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键',
  `tRAIN_PLAN_ID` varchar(50) DEFAULT NULL COMMENT '培训计划ID',
  `ZY_NAME` varchar(50) DEFAULT NULL COMMENT '专业名称',
  `TRAIN_PURPOSE` text COMMENT '培训目的',
  `TRAIN_CONTENT` text COMMENT '培训内容',
  `CLASS_COUNT` varchar(50) DEFAULT NULL COMMENT '课时',
  `TEACHER` varchar(20) DEFAULT NULL COMMENT '授课人',
  PRIMARY KEY (`TRAIN_ITEM_ID`),
  KEY `fk_trainplanid` (`tRAIN_PLAN_ID`),
  CONSTRAINT `fk_trainplanid` FOREIGN KEY (`tRAIN_PLAN_ID`) REFERENCES `train_plan_info` (`TRAIN_PLAN_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培训计划明细表';

/*Data for the table `train_plan_item` */

insert  into `train_plan_item`(`TRAIN_ITEM_ID`,`tRAIN_PLAN_ID`,`ZY_NAME`,`TRAIN_PURPOSE`,`TRAIN_CONTENT`,`CLASS_COUNT`,`TEACHER`) values ('ti001','tp00003','电气','电气','电气','15','王'),('ti002','tp00003','汽机','汽机','汽机','15','张');

/*Table structure for table `emp_count` */

DROP TABLE IF EXISTS `emp_count`;

/*!50001 DROP VIEW IF EXISTS `emp_count` */;
/*!50001 DROP TABLE IF EXISTS `emp_count` */;

/*!50001 CREATE TABLE  `emp_count`(
 `TRAIN_PLAN_ID` varchar(50) ,
 `empcount` bigint(21) 
)*/;

/*Table structure for table `train_zy` */

DROP TABLE IF EXISTS `train_zy`;

/*!50001 DROP VIEW IF EXISTS `train_zy` */;
/*!50001 DROP TABLE IF EXISTS `train_zy` */;

/*!50001 CREATE TABLE  `train_zy`(
 `TRAIN_PLAN_ID` varchar(50) ,
 `trainZY` text 
)*/;

/*Table structure for table `trainplan` */

DROP TABLE IF EXISTS `trainplan`;

/*!50001 DROP VIEW IF EXISTS `trainplan` */;
/*!50001 DROP TABLE IF EXISTS `trainplan` */;

/*!50001 CREATE TABLE  `trainplan`(
 `TRAIN_PLAN_ID` varchar(50) ,
 `TRAIN_PLAN_YEAR` varchar(8) ,
 `TRAIN_PLAN_NAME` varchar(50) ,
 `TRAIN_PLAN_TYPE` varchar(50) ,
 `trainZY` text ,
 `trainTime` varchar(21) ,
 `empcount` bigint(21) ,
 `IS_FINISH` varchar(10) 
)*/;

/*View structure for view emp_count */

/*!50001 DROP TABLE IF EXISTS `emp_count` */;
/*!50001 DROP VIEW IF EXISTS `emp_count` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp_count` AS select `train_plan_info`.`TRAIN_PLAN_ID` AS `TRAIN_PLAN_ID`,count(`train_emp`.`TRAIN_EMP_ID`) AS `empcount` from (`train_plan_info` left join `train_emp` on((`train_plan_info`.`TRAIN_PLAN_ID` = `train_emp`.`TRAIN_PLAN_ID`))) group by `train_plan_info`.`TRAIN_PLAN_ID` */;

/*View structure for view train_zy */

/*!50001 DROP TABLE IF EXISTS `train_zy` */;
/*!50001 DROP VIEW IF EXISTS `train_zy` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `train_zy` AS select `train_plan_info`.`TRAIN_PLAN_ID` AS `TRAIN_PLAN_ID`,group_concat(distinct `train_plan_item`.`ZY_NAME` separator ' ') AS `trainZY` from (`train_plan_info` left join `train_plan_item` on((`train_plan_info`.`TRAIN_PLAN_ID` = `train_plan_item`.`tRAIN_PLAN_ID`))) group by `train_plan_info`.`TRAIN_PLAN_ID` */;

/*View structure for view trainplan */

/*!50001 DROP TABLE IF EXISTS `trainplan` */;
/*!50001 DROP VIEW IF EXISTS `trainplan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trainplan` AS select `train_plan_info`.`TRAIN_PLAN_ID` AS `TRAIN_PLAN_ID`,`train_plan_info`.`TRAIN_PLAN_YEAR` AS `TRAIN_PLAN_YEAR`,`train_plan_info`.`TRAIN_PLAN_NAME` AS `TRAIN_PLAN_NAME`,`train_plan_info`.`TRAIN_PLAN_TYPE` AS `TRAIN_PLAN_TYPE`,`train_zy`.`trainZY` AS `trainZY`,concat(`train_plan_info`.`START_TIME`,'-',`train_plan_info`.`END_TIME`) AS `trainTime`,`emp_count`.`empcount` AS `empcount`,`train_plan_info`.`IS_FINISH` AS `IS_FINISH` from ((`train_plan_info` join `train_zy`) join `emp_count`) where ((`train_plan_info`.`TRAIN_PLAN_ID` = `train_zy`.`TRAIN_PLAN_ID`) and (`train_plan_info`.`TRAIN_PLAN_ID` = `emp_count`.`TRAIN_PLAN_ID`)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
