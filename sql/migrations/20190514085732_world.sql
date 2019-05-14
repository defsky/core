DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190514085732');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190514085732');
-- Start of migration.

DELETE FROM `creature_movement` WHERE `id` = 10527;

INSERT INTO `creature_movement` VALUES ('10527', '12', '-8515.37', '426.32', '107.092', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '11', '-8508.34', '417.427', '108.271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '10', '-8497.15', '403.555', '108.386', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '9', '-8480.88', '382.847', '110.814', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.23308', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '8', '-8477.13', '378.146', '112.317', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.25317', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '7', '-8469.06', '367.829', '115.591', '1500', '0', '0', '0', '0', '0', '0', '0', '0', '2.2488', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '6', '-8476.95', '377.931', '112.388', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.38299', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '5', '-8480.88', '382.847', '110.814', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.46107', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '4', '-8497.15', '403.555', '108.386', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '3', '-8508.34', '417.427', '108.271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '2', '-8515.37', '426.32', '107.092', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('10527', '1', '-8527.76', '441.73', '105.034', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '2.26888', '0', '0');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
