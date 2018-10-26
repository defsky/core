DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20181026112322');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20181026112322');
-- Add your query below.

INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc4`, `content_loc5`) VALUES ('12003', ' Day(s) ', '天', '天');
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc4`, `content_loc5`) VALUES ('12004', ' Hour(s) ', '小时', '小时');
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc4`, `content_loc5`) VALUES ('12005', ' Minute(s) ', '分', '分');
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc4`, `content_loc5`) VALUES ('12006', ' Second(s) ', '秒', '秒');


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
