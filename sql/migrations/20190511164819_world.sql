DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190511164819');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190511164819');
-- Start of migration.

-- 亡灵卫兵(5725)和塞加德(1515)的坐骑模型更正
-- fix creature mount model to 'Skeletal Horse'

-- Executor Zygand
update creature_template_addon set mount = 10671 where entry = 1515 and patch = 0;
update creature_addon set mount=10671 where guid = 29797 and patch = 0;
-- insert into creature_addon values(29797, 1, 10721,   0, 1, 16,   0, 0, NULL);

-- Deathguard Lundmark
update creature_template_addon set mount = 10671 where entry = 5725 and patch = 0;
update creature_addon set mount=10671 where guid = 32028 and patch = 0;

-- 血蹄村科多兽坐骑样品模型大小调整
-- modify scale for kodo ride sale model
update creature_template set scale = 0.8 where entry in (12354,12355,14542, 14549, 14550);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
