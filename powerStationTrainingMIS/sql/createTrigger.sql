DELIMITER $
CREATE TRIGGER tri_create_staff_id 
BEFORE INSERT ON staff
FOR EACH ROW
BEGIN
CALL pro_create_staff_id(new.unitId,@staff_id);
SET new.staffId = @staff_id;
END $
DELIMITER ;

DELIMITER $
CREATE TRIGGER tri_create_train_item_id 
BEFORE INSERT ON train_plan_item
FOR EACH ROW
BEGIN
CALL pro_create_train_item_id(new.trainPlanId,@train_plan_item_id);
SET new.trainItemId = @train_plan_item_id;
END $
DELIMITER ;

DELIMITER $
CREATE TRIGGER tri_create_train_plan_id 
BEFORE INSERT ON train_plan_info
FOR EACH ROW
BEGIN
CALL pro_create_train_plan_id(@train_plan_id);
SET new.trainPlanId = @train_plan_id;
END $
DELIMITER ;

DELIMITER $
CREATE TRIGGER tri_create_unit_id 
BEFORE INSERT ON unit
FOR EACH ROW
BEGIN
CALL pro_create_unit_id(new.upUnitId,@unit_id);
SET new.unitId = @unit_id;
END $
DELIMITER ;

