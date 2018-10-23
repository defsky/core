DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20181023144656');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20181023144656');
-- Add your query below.

INSERT INTO `broadcast_text` (`ID`, `MaleText`, `FemaleText`) VALUES ('100101', '<Put my  hand on the orb>', '<Put my  hand on the orb>');
INSERT INTO `broadcast_text` (`ID`, `MaleText`, `FemaleText`) VALUES ('100100', 'The impress on the orb just fits  your hand.', 'The impress on the orb just fits  your hand.');

UPDATE `locales_broadcast_text` SET `MaleText_loc4`='好像有一只眼睛在盯着你...' WHERE `ID`='6080';
INSERT INTO `locales_broadcast_text` (`ID`, `MaleText_loc4`, `MaleText_loc5`, `FemaleText_loc4`, `FemaleText_loc5`, `VerifiedBuild`) VALUES ('100101', '<把我的手放到珠宝上>', '<把我的手放到珠宝上>', '<把我的手放到珠宝上>', '<把我的手放到珠宝上>', '5875');
INSERT INTO `locales_broadcast_text` (`ID`, `MaleText_loc4`, `MaleText_loc5`, `FemaleText_loc4`, `FemaleText_loc5`,`VerifiedBuild`) VALUES ('100100', '宝珠的印记和你的手正好合适。', '宝珠的印记和你的手正好合适。', '宝珠的印记和你的手正好合适。', '宝珠的印记和你的手正好合适。', '5875');
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`) VALUES ('2', '100100', '1');


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
