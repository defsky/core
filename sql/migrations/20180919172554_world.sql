DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180919172554');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180919172554');
-- Add your query below.

INSERT INTO `script_texts` (`entry`,`content_default`, `content_loc4`, `comment`) VALUES ('-1209005','That\'s it! I\'m tired of helping you out.  It\'s time we settled things on the battlefield!', '就这样吧! 我不想帮你们了。我们也到了该用武力来解决问题的时候了!', 'npc_sergeant_bly GOSSIP_BLY'); 
INSERT INTO `script_texts` (`entry`,`content_default`, `content_loc4`, `comment`) VALUES ('-1209006','Will you blow up that door now?', '你现在能炸掉那扇门了吗?', 'npc_weegli_blastfuse GOSSIP_WEEGLY'); 

UPDATE `script_texts` SET `content_loc4`='什么? 你怎敢这样跟我说话!?' WHERE `entry`='-1209002';
UPDATE `script_texts` SET `content_loc4`='我们的交情完了吗? 好吧, 反正我也不怎么喜欢你!' WHERE `entry`='-1209003';
UPDATE `script_texts` SET `content_loc4`='噢, 不! 他们过来了!' WHERE `entry`='-1209000';

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
