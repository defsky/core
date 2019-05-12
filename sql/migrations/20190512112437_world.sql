DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190512112437');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190512112437');
-- End of migration.

DELETE FROM `creature_movement` WHERE `id`=31919;

INSERT INTO `creature_movement` VALUES ('31919', '1', '2283.76', '347.963', '34.1148', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '1.5559', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '2', '2270.5', '333.905', '35.0418', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '3.8296', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '3', '2271.35', '323.783', '34.195', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '4', '2255.24', '304.088', '34.5732', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '5', '2243.03', '303.576', '35.1154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '6', '2232.99', '312.019', '36.7217', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '2.3604', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '7', '2243.14', '302.87', '35.1424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '8', '2240.07', '280.051', '34.7589', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '9', '2228.46', '262.583', '34.1143', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '3.9901', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '10', '2256.31', '276.025', '34.2973', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '11', '2259.76', '285.74', '34.1146', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '12', '2274.55', '300.451', '34.7211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `creature_movement` VALUES ('31919', '13', '2279.74', '320.98', '34.1205', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
