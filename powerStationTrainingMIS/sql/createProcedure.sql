DELIMITER $
CREATE PROCEDURE pro_create_staff_id(IN unit_id VARCHAR(40),OUT staff_id VARCHAR(11))
BEGIN
SELECT CONCAT("00", MAX(staffId) + 1) INTO staff_id FROM staff WHERE unitId=unit_id;
IF staff_id='' THEN
      SET staff_id=CONCAT(unit_id,'01');
   ELSEIF staff_id IS NULL THEN
      SET staff_id=CONCAT(unit_id,'01');
   END IF;
END $
DELIMITER ;

DELIMITER $
CREATE PROCEDURE pro_create_train_plan_id (
	OUT train_plan_id VARCHAR (50)
)
BEGIN
	SELECT
		SUBSTR(MAX(trainPlanId), 3) + 1 INTO train_plan_id FROM train_plan_info ;
	
	IF train_plan_id = '' THEN

		SET train_plan_id = 'tp10001' ;

	ELSEIF train_plan_id IS NULL THEN

		SET train_plan_id = 'tp10001' ;
	
	ELSE

		SET train_plan_id = CONCAT('tp', train_plan_id) ;
	END IF ; 

END$
DELIMITER ;

DELIMITER $
CREATE PROCEDURE pro_create_train_item_id(IN train_plan_id VARCHAR(50),OUT train_plan_item_id VARCHAR(50))
BEGIN
SELECT SUBSTR(MAX(trainItemId),3)+1 INTO train_plan_item_id FROM train_plan_item WHERE trainPlanId = train_plan_id;
IF train_plan_item_id='' THEN
      SET train_plan_item_id=CONCAT(train_plan_item_id,'01');
   ELSEIF train_plan_item_id IS NULL THEN
      SET train_plan_item_id=CONCAT(train_plan_item_id,'01');
	ELSE
			 SET train_plan_item_id=CONCAT('tp',train_plan_item_id);
   END IF;
END $
DELIMITER ;

DELIMITER $
CREATE PROCEDURE pro_create_unit_id(IN up_unit_id VARCHAR(40),OUT unit_id VARCHAR(11))
BEGIN
SELECT CONCAT("00", MAX(unitId) + 1) INTO unit_id FROM unit WHERE upUnitId=up_unit_id;
IF unit_id='' THEN
      SET unit_id=CONCAT(unit_id,'001');
   ELSEIF unit_id IS NULL THEN
      SET unit_id=CONCAT(unit_id,'001');
   END IF;
END $
DELIMITER ;

