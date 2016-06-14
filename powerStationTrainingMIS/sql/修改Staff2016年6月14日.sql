DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `staffId` varchar(12) DEFAULT NULL,
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
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

INSERT INTO `staff` VALUES ('1', '��С��', '00100101', '12345678909876543', '2016-06-08', 'ɽ��ʡ', '���޹�', '001001', '�߼�', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('2', '��С��', '00100102', '12345678909876543', '2016-06-08', 'ɽ��ʡ', '���޹�', '001001', '�߼�', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('3', '��С��', '00100103', '12345678909876543', '2016-06-08', 'ɽ��ʡ', '���޹�', '001001', '�߼�', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('4', '½����', '00100201', '12345678909876543', '2015-12-17', 'ɽ��ʡ', '���乤', '0001002', '����', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('5', '½����', '00100202', '12345678909876543', '2015-11-04', 'ɽ��ʡ', '���乤', null, '����', '1234567', '2016-06-08', null, null);
INSERT INTO `staff` VALUES ('6', '½����', '00100203', '12345678909876543', '2016-01-01', 'ɽ��ʡ', '���乤', null, '����', '1234565', '2016-06-03', null, null);

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