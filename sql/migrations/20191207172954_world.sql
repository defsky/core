DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20191207172954');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20191207172954');
-- Start of migration.
-- Ashbringer event script_texts locale

DELETE FROM `script_texts` WHERE `entry` in (-1999926,-1999925,-1999924,-1999923,-1999922,-1999921,-1999920,-1999919,-1999918);

INSERT INTO `script_texts` VALUES (-1999926, 'Bow down! Kneel before the Ashbringer! A new dawn approaches, brothers and sisters! Our message will be delivered to the filth of this world through the chosen one!', NULL, NULL, NULL, '叩首！灰烬使者面前下跪！新的黎明即将来临，兄弟姐妹们！我们的信息将通过被选中的人传递给这个世界的污秽！', NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Ashbringer event');
INSERT INTO `script_texts` VALUES (-1999925, 'You are forgiven...', NULL, NULL, NULL, '我已经原谅你了……', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ashbringer event');
INSERT INTO `script_texts` VALUES (-1999924, 'Did you think that your betrayal would be forgotten? Lost in the carefully planned cover up of my death? Blood of my blood, the blade felt your cruelty long after my heart had stopped beating. And in death, I knew what you had done. But now, the chains of Kel\'thuzad hold me no more. I come to serve justice. I AM ASHBRINGER.', NULL, NULL, NULL, '你以为你的背叛会被遗忘吗？在精心策划的掩盖我死亡的过程中迷失了方向？我的血，在我的心停止跳动很久之后，刀锋感受到了你的残忍。死后，我知道你做了什么。但是现在，凯尔苏加德的锁链不再束缚我了。我是来伸张正义的。我是灰烬使者!!!', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ashbringer event');
INSERT INTO `script_texts` VALUES (-1999923, 'Renault...', NULL, NULL, NULL, '雷诺...', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ashbringer event');
INSERT INTO `script_texts` VALUES (-1999922, 'Forgive me, father! Please...', NULL, NULL, NULL, '原谅我，父亲! 求求您……', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ashbringer event');
INSERT INTO `script_texts` VALUES (-1999921, 'Father... But... How?', NULL, NULL, NULL, '父亲……但是……怎么可能?', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ashbringer event');
INSERT INTO `script_texts` VALUES (-1999920, 'You hold my father\'s blade. My soldiers are yours to control, my Lord. Take them... Lead them... The impure must be purged. They must be cleansed of their taint.', NULL, NULL, NULL, '您握着我父亲的剑，我的士兵将听从您的命令，阁下。请您带上他们，领导他们，净化一切邪恶的势力。天灾军团必须彻底清除!', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ashbringer event');
INSERT INTO `script_texts` VALUES (-1999919, 'Take me with you, Sir.', NULL, NULL, NULL, '请让我追随你, 阁下。', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ashbringer event');
INSERT INTO `script_texts` VALUES (-1999918, 'My Lord, please allow me to live long enough to see you purge this world of the infidles.', NULL, NULL, NULL, '阁下，请您允许我穷尽后半生，注视着您净化世界一切邪恶。', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ashbringer event');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
