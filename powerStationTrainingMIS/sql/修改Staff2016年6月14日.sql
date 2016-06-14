DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `staffId` varchar(12) DEFAULT NULL,
  `cardId` varchar(18) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `native` varchar(256) DEFAULT NULL COMMENT '籍贯',
  `job` varchar(10) DEFAULT NULL,
  `unitId` varchar(40) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL COMMENT '职称',
  `telephone` varchar(11) DEFAULT NULL,
  `joinTime` date DEFAULT NULL COMMENT '参加工作时间',
  `sex` varchar(2) DEFAULT NULL,
  `photo` blob COMMENT '照片',
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

INSERT INTO `staff` VALUES ('1', '韩小轩', '00100101', '12345678909876543', '2016-06-08', '山西省', '检修工', '001001', '高级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('2', '韩小轩', '00100102', '12345678909876543', '2016-06-08', '山西省', '检修工', '001001', '高级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('3', '韩小轩', '00100103', '12345678909876543', '2016-06-08', '山西省', '检修工', '001001', '高级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('4', '陆晓舒', '00100201', '12345678909876543', '2015-12-17', '山西省', '运输工', '0001002', '初级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('5', '陆晓舒', '00100202', '12345678909876543', '2015-11-04', '山西省', '运输工', null, '初级', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('6', '陆晓舒', '00100203', '12345678909876543', '2016-01-01', '山西省', '运输工', null, '初级', '1234565', '2016-06-03', null, null);

DROP PROCEDURE IF EXISTS pro_create_staff_id;


DELIMITER $
CREATE PROCEDURE pro_create_staff_id(IN unit_id VARCHAR(40),OUT staff_id VARCHAR(12))
BEGIN
SELECT MAX(staffId) INTO staff_id FROM staff,unit WHERE staff.unitId=unit_id AND staffId LIKE CONCAT("%",unit_id,"%");
IF staff_id='' THEN
      SET	staff_id=CONCAT(YEAR(NOW()),unit_id,'01');
   ELSEIF staff_id IS NULL THEN
      SET	staff_id=CONCAT(YEAR(NOW()),unit_id,'01');
		ELSEIF SUBSTR(staff_id,1,4)<YEAR(NOW()) THEN
			SET	staff_id=CONCAT(YEAR(NOW()),unit_id,'01');
		ELSE
			SET staff_id=staff_id+1;
	END IF;
END $
DELIMITER ;