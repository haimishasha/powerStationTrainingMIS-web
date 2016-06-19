-- ----------------------------
-- View structure for attend_count
-- ----------------------------
DROP VIEW IF EXISTS `attend_count`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `attend_count` AS SELECT
	staffId,
	COUNT(
		emp_attendance.attendance = '出勤'
	) attendNum,
	COUNT(
		emp_attendance.attendance = '缺勤'
	) absenceNum,
	COUNT(
		emp_attendance.attendance = '迟到'
	) lateCount
from emp_attendance
group by staffId ;

-- ----------------------------
-- View structure for attend_info
-- ----------------------------
DROP VIEW IF EXISTS `attend_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `attend_info` AS SELECT
	attend_count.staffId,
	staff.`name` stuName,
	unit.unitName departmentName,
	attendNum,
	absenceNum,
	lateCount,
	trainPlanYear,
  trainPlanName,
	major,
	trainPlanType
FROM
	emp_attendance,
	attend_count,
	staff,
	unit,
	train_plan_item,
	train_plan_info
WHERE
	attend_count.staffId = emp_attendance.staffId
AND emp_attendance.staffId = staff.staffId	
AND staff.unitId = unit.unitId
AND emp_attendance.trainItemId = train_plan_item.trainItemId
and train_plan_item.trainPlanId = train_plan_info.trainPlanId ;

-- ----------------------------
-- View structure for emp_count
-- ----------------------------
DROP VIEW IF EXISTS `emp_count`;
CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `emp_count` AS SELECT
`train_plan_info`.`trainPlanId` AS trainPlanId,
Count(`train_emp`.`trainEmpId`) AS empCount
from (`train_plan_info` left join `train_emp` on((`train_plan_info`.`trainPlanId` = `train_emp`.`trainPlanId`)))
group by `train_plan_info`.`trainPlanId` ;

-- ----------------------------
-- View structure for train_major
-- ----------------------------
DROP VIEW IF EXISTS `train_major`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `train_major` AS SELECT
	`train_plan_info`.`trainPlanId` AS `trainPlanId`,
	group_concat(
		DISTINCT `train_plan_item`.`major` SEPARATOR ' '
	) AS `major`
FROM
	(
		`train_plan_info`
		LEFT JOIN `train_plan_item` ON (
			(
				`train_plan_info`.`trainPlanId` = `train_plan_item`.`trainPlanId`
			)
		)
	)
GROUP BY
	`train_plan_info`.`trainPlanId` ;

-- ----------------------------
-- View structure for train_plan
-- ----------------------------
DROP VIEW IF EXISTS `train_plan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `train_plan` AS SELECT
	`train_plan_info`.`trainPlanId` AS `trainPlanId`,
	`train_plan_info`.`trainPlanYear` AS `trainPlanYear`,
	`train_plan_info`.`trainPlanName` AS `trainPlanName`,
	`train_plan_info`.`trainPlanType` AS `trainPlanType`,
	`train_major`.`major` AS `major`,
	concat(
		`train_plan_info`.`startTime`,
		'-',
		`train_plan_info`.`endTime`
	) AS `trainTime`,
	`emp_count`.`empCount` AS `empCount`,
	`train_plan_info`.`isFinish` AS `isFinish`
FROM
	(
		(
			`train_plan_info`
			JOIN `train_major`
		)
		JOIN `emp_count`
	)
WHERE
	(
		(
			`train_plan_info`.`trainPlanId` = `train_major`.`trainPlanId`
		)
		AND (
			`train_plan_info`.`trainPlanId` = `emp_count`.`trainPlanId`
		)
	) ;