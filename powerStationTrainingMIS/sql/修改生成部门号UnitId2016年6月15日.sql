DROP PROCEDURE IF EXISTS `pro_create_unit_id`;

DELIMITER $
CREATE PROCEDURE `pro_create_unit_id`(IN up_unit_id VARCHAR(40),OUT unit_id VARCHAR(11))
BEGIN
SELECT CONCAT("00", MAX(unitId) + 1) INTO unit_id FROM unit WHERE upUnitId=up_unit_id;
IF LENGTH(up_unit_id)=2 THEN
	IF unit_id='' THEN
      SET unit_id=CONCAT(unit_id,'001');
   ELSEIF unit_id IS NULL THEN
      SET unit_id=CONCAT(unit_id,'001');
   END IF;
ELSE
	IF unit_id='' THEN
      SET unit_id=CONCAT(up_unit_id,'001');
   ELSEIF unit_id IS NULL THEN
      SET unit_id=CONCAT(up_unit_id,'001');
   END IF;
END IF;
END $
DELIMITER ;