DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20181023175007');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20181023175007');
-- Add your query below.

INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc4`, `content_loc5`) VALUES ('12002', 'You must be in a raid group to enter this instance', '你必须加入一个团队才能进入这个副本', '你必须加入一个团队才能进入这个副本');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
