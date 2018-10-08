DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20181008221151');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20181008221151');
-- Add your query below.

-- add locales for worlock pet name
ALTER TABLE `pet_name_generation` 
ADD COLUMN `word_loc1` VARCHAR(10) NULL AFTER `half`,
ADD COLUMN `word_loc2` VARCHAR(10) NULL AFTER `word_loc1`,
ADD COLUMN `word_loc3` VARCHAR(10) NULL AFTER `word_loc2`,
ADD COLUMN `word_loc4` VARCHAR(10) NULL AFTER `word_loc3`,
ADD COLUMN `word_loc5` VARCHAR(10) NULL AFTER `word_loc4`,
ADD COLUMN `word_loc6` VARCHAR(10) NULL AFTER `word_loc5`,
ADD COLUMN `word_loc7` VARCHAR(10) NULL AFTER `word_loc6`,
ADD COLUMN `word_loc8` VARCHAR(10) NULL AFTER `word_loc7`;

-- add chinese locales
UPDATE `pet_name_generation` SET `word_loc4`='阿巴' WHERE `id`='1';
UPDATE `pet_name_generation` SET `word_loc4`='阿兹' WHERE `id`='2';
UPDATE `pet_name_generation` SET `word_loc4`='贝尔' WHERE `id`='3';
UPDATE `pet_name_generation` SET `word_loc4`='比茨' WHERE `id`='4';
UPDATE `pet_name_generation` SET `word_loc4`='科' WHERE `id`='5';
UPDATE `pet_name_generation` SET `word_loc4`='丹戈' WHERE `id`='6';
UPDATE `pet_name_generation` SET `word_loc4`='甘克' WHERE `id`='7';
UPDATE `pet_name_generation` SET `word_loc4`='加尔' WHERE `id`='8';
UPDATE `pet_name_generation` SET `word_loc4`='戈尔' WHERE `id`='9';
UPDATE `pet_name_generation` SET `word_loc4`='果' WHERE `id`='10';
UPDATE `pet_name_generation` SET `word_loc4`='戈布' WHERE `id`='11';
UPDATE `pet_name_generation` SET `word_loc4`='格拉' WHERE `id`='12';
UPDATE `pet_name_generation` SET `word_loc4`='加克' WHERE `id`='13';
UPDATE `pet_name_generation` SET `word_loc4`='加布' WHERE `id`='14';
UPDATE `pet_name_generation` SET `word_loc4`='卡尔' WHERE `id`='15';
UPDATE `pet_name_generation` SET `word_loc4`='库普' WHERE `id`='16';
UPDATE `pet_name_generation` SET `word_loc4`='雷兹' WHERE `id`='17';
UPDATE `pet_name_generation` SET `word_loc4`='纳路' WHERE `id`='18';
UPDATE `pet_name_generation` SET `word_loc4`='诺克' WHERE `id`='19';
UPDATE `pet_name_generation` SET `word_loc4`='帕格' WHERE `id`='20';
UPDATE `pet_name_generation` SET `word_loc4`='皮戈' WHERE `id`='21';
UPDATE `pet_name_generation` SET `word_loc4`='皮普' WHERE `id`='22';
UPDATE `pet_name_generation` SET `word_loc4`='皮兹' WHERE `id`='23';
UPDATE `pet_name_generation` SET `word_loc4`='奥兹' WHERE `id`='24';
UPDATE `pet_name_generation` SET `word_loc4`='锐' WHERE `id`='25';
UPDATE `pet_name_generation` SET `word_loc4`='鲁尔' WHERE `id`='26';
UPDATE `pet_name_generation` SET `word_loc4`='鲁普' WHERE `id`='27';
UPDATE `pet_name_generation` SET `word_loc4`='塔尔' WHERE `id`='28';
UPDATE `pet_name_generation` SET `word_loc4`='沃尔' WHERE `id`='29';
UPDATE `pet_name_generation` SET `word_loc4`='亚兹' WHERE `id`='30';
UPDATE `pet_name_generation` SET `word_loc4`='泽普' WHERE `id`='31';
UPDATE `pet_name_generation` SET `word_loc4`='泽格' WHERE `id`='32';
UPDATE `pet_name_generation` SET `word_loc4`='泽尔' WHERE `id`='33';
UPDATE `pet_name_generation` SET `word_loc4`='佐尔' WHERE `id`='34';
UPDATE `pet_name_generation` SET `word_loc4`='比斯' WHERE `id`='35';
UPDATE `pet_name_generation` SET `word_loc4`='菲普' WHERE `id`='36';
UPDATE `pet_name_generation` SET `word_loc4`='戈普' WHERE `id`='37';
UPDATE `pet_name_generation` SET `word_loc4`='汉姆' WHERE `id`='38';
UPDATE `pet_name_generation` SET `word_loc4`='贾布' WHERE `id`='39';
UPDATE `pet_name_generation` SET `word_loc4`='科恩' WHERE `id`='40';
UPDATE `pet_name_generation` SET `word_loc4`='科尔' WHERE `id`='41';
UPDATE `pet_name_generation` SET `word_loc4`='洛普' WHERE `id`='42';
UPDATE `pet_name_generation` SET `word_loc4`='洛茨' WHERE `id`='43';
UPDATE `pet_name_generation` SET `word_loc4`='马特' WHERE `id`='44';
UPDATE `pet_name_generation` SET `word_loc4`='米尔' WHERE `id`='45';
UPDATE `pet_name_generation` SET `word_loc4`='纳姆' WHERE `id`='46';
UPDATE `pet_name_generation` SET `word_loc4`='纳尔' WHERE `id`='47';
UPDATE `pet_name_generation` SET `word_loc4`='尼克' WHERE `id`='48';
UPDATE `pet_name_generation` SET `word_loc4`='尼普' WHERE `id`='49';
UPDATE `pet_name_generation` SET `word_loc4`='帕迪' WHERE `id`='50';
UPDATE `pet_name_generation` SET `word_loc4`='佩普' WHERE `id`='51';
UPDATE `pet_name_generation` SET `word_loc4`='皮特' WHERE `id`='52';
UPDATE `pet_name_generation` SET `word_loc4`='古阿' WHERE `id`='53';
UPDATE `pet_name_generation` SET `word_loc4`='拉伊' WHERE `id`='54';
UPDATE `pet_name_generation` SET `word_loc4`='瑞恩' WHERE `id`='55';
UPDATE `pet_name_generation` SET `word_loc4`='诺特' WHERE `id`='56';
UPDATE `pet_name_generation` SET `word_loc4`='塔伊' WHERE `id`='57';
UPDATE `pet_name_generation` SET `word_loc4`='塔鲁' WHERE `id`='58';
UPDATE `pet_name_generation` SET `word_loc4`='提克' WHERE `id`='59';
UPDATE `pet_name_generation` SET `word_loc4`='提普' WHERE `id`='60';
UPDATE `pet_name_generation` SET `word_loc4`='托格' WHERE `id`='61';
UPDATE `pet_name_generation` SET `word_loc4`='图克' WHERE `id`='62';
UPDATE `pet_name_generation` SET `word_loc4`='尤里' WHERE `id`='63';
UPDATE `pet_name_generation` SET `word_loc4`='瓦尔' WHERE `id`='64';
UPDATE `pet_name_generation` SET `word_loc4`='亚普' WHERE `id`='65';
UPDATE `pet_name_generation` SET `word_loc4`='波希' WHERE `id`='66';
UPDATE `pet_name_generation` SET `word_loc4`='布鲁' WHERE `id`='67';
UPDATE `pet_name_generation` SET `word_loc4`='克扎' WHERE `id`='68';
UPDATE `pet_name_generation` SET `word_loc4`='杜洛' WHERE `id`='69';
UPDATE `pet_name_generation` SET `word_loc4`='费拉' WHERE `id`='70';
UPDATE `pet_name_generation` SET `word_loc4`='胡祖' WHERE `id`='71';
UPDATE `pet_name_generation` SET `word_loc4`='戈哈' WHERE `id`='72';
UPDATE `pet_name_generation` SET `word_loc4`='戈里' WHERE `id`='73';
UPDATE `pet_name_generation` SET `word_loc4`='戈扎' WHERE `id`='74';
UPDATE `pet_name_generation` SET `word_loc4`='哈' WHERE `id`='75';
UPDATE `pet_name_generation` SET `word_loc4`='哈德' WHERE `id`='76';
UPDATE `pet_name_generation` SET `word_loc4`='哈格' WHERE `id`='77';
UPDATE `pet_name_generation` SET `word_loc4`='哈普' WHERE `id`='78';
UPDATE `pet_name_generation` SET `word_loc4`='杰哈' WHERE `id`='79';
UPDATE `pet_name_generation` SET `word_loc4`='基胡' WHERE `id`='80';
UPDATE `pet_name_generation` SET `word_loc4`='克哈' WHERE `id`='81';
UPDATE `pet_name_generation` SET `word_loc4`='克希' WHERE `id`='82';
UPDATE `pet_name_generation` SET `word_loc4`='克胡' WHERE `id`='83';
UPDATE `pet_name_generation` SET `word_loc4`='克瑞' WHERE `id`='84';
UPDATE `pet_name_generation` SET `word_loc4`='路' WHERE `id`='85';
UPDATE `pet_name_generation` SET `word_loc4`='玛' WHERE `id`='86';
UPDATE `pet_name_generation` SET `word_loc4`='纳希' WHERE `id`='87';
UPDATE `pet_name_generation` SET `word_loc4`='普胡' WHERE `id`='88';
UPDATE `pet_name_generation` SET `word_loc4`='普瑞' WHERE `id`='89';
UPDATE `pet_name_generation` SET `word_loc4`='瑞胡' WHERE `id`='90';
UPDATE `pet_name_generation` SET `word_loc4`='莎' WHERE `id`='91';
UPDATE `pet_name_generation` SET `word_loc4`='斯洛' WHERE `id`='92';
UPDATE `pet_name_generation` SET `word_loc4`='斯鲁' WHERE `id`='93';
UPDATE `pet_name_generation` SET `word_loc4`='提霍' WHERE `id`='94';
UPDATE `pet_name_generation` SET `word_loc4`='提拉' WHERE `id`='95';
UPDATE `pet_name_generation` SET `word_loc4`='乌拉' WHERE `id`='96';
UPDATE `pet_name_generation` SET `word_loc4`='兹阿' WHERE `id`='97';
UPDATE `pet_name_generation` SET `word_loc4`='迪红' WHERE `id`='98';
UPDATE `pet_name_generation` SET `word_loc4`='迪胡' WHERE `id`='99';
UPDATE `pet_name_generation` SET `word_loc4`='迪航' WHERE `id`='100';
UPDATE `pet_name_generation` SET `word_loc4`='多姆' WHERE `id`='101';
UPDATE `pet_name_generation` SET `word_loc4`='多恩' WHERE `id`='102';
UPDATE `pet_name_generation` SET `word_loc4`='桌姆' WHERE `id`='103';
UPDATE `pet_name_generation` SET `word_loc4`='戴姆' WHERE `id`='104';
UPDATE `pet_name_generation` SET `word_loc4`='费恩' WHERE `id`='105';
UPDATE `pet_name_generation` SET `word_loc4`='胡姆' WHERE `id`='106';
UPDATE `pet_name_generation` SET `word_loc4`='胡恩' WHERE `id`='107';
UPDATE `pet_name_generation` SET `word_loc4`='戈恩' WHERE `id`='108';
UPDATE `pet_name_generation` SET `word_loc4`='加恩' WHERE `id`='109';
UPDATE `pet_name_generation` SET `word_loc4`='诺姆' WHERE `id`='110';
UPDATE `pet_name_generation` SET `word_loc4`='戈瑞姆' WHERE `id`='111';
UPDATE `pet_name_generation` SET `word_loc4`='霍姆' WHERE `id`='112';
UPDATE `pet_name_generation` SET `word_loc4`='霍恩' WHERE `id`='113';
UPDATE `pet_name_generation` SET `word_loc4`='哈恩' WHERE `id`='114';
UPDATE `pet_name_generation` SET `word_loc4`='基霍姆' WHERE `id`='115';
UPDATE `pet_name_generation` SET `word_loc4`='昆' WHERE `id`='116';
UPDATE `pet_name_generation` SET `word_loc4`='路姆' WHERE `id`='117';
UPDATE `pet_name_generation` SET `word_loc4`='莫恩' WHERE `id`='118';
UPDATE `pet_name_generation` SET `word_loc4`='蒙恩' WHERE `id`='119';
UPDATE `pet_name_generation` SET `word_loc4`='米恩' WHERE `id`='120';
UPDATE `pet_name_generation` SET `word_loc4`='奈门' WHERE `id`='121';
UPDATE `pet_name_generation` SET `word_loc4`='雷蒙' WHERE `id`='122';
UPDATE `pet_name_generation` SET `word_loc4`='尼蒙' WHERE `id`='123';
UPDATE `pet_name_generation` SET `word_loc4`='诺蒙' WHERE `id`='124';
UPDATE `pet_name_generation` SET `word_loc4`='路蒙' WHERE `id`='125';
UPDATE `pet_name_generation` SET `word_loc4`='普蒙' WHERE `id`='126';
UPDATE `pet_name_generation` SET `word_loc4`='路恩' WHERE `id`='127';
UPDATE `pet_name_generation` SET `word_loc4`='瑞蒙' WHERE `id`='128';
UPDATE `pet_name_generation` SET `word_loc4`='索恩' WHERE `id`='129';
UPDATE `pet_name_generation` SET `word_loc4`='塔恩' WHERE `id`='130';
UPDATE `pet_name_generation` SET `word_loc4`='托蒙' WHERE `id`='131';
UPDATE `pet_name_generation` SET `word_loc4`='泽蒙' WHERE `id`='132';
UPDATE `pet_name_generation` SET `word_loc4`='祖蒙' WHERE `id`='133';
UPDATE `pet_name_generation` SET `word_loc4`='组恩' WHERE `id`='134';
UPDATE `pet_name_generation` SET `word_loc4`='巴尔' WHERE `id`='135';
UPDATE `pet_name_generation` SET `word_loc4`='贝路' WHERE `id`='136';
UPDATE `pet_name_generation` SET `word_loc4`='卡儿' WHERE `id`='137';
UPDATE `pet_name_generation` SET `word_loc4`='拉克' WHERE `id`='138';
UPDATE `pet_name_generation` SET `word_loc4`='拉兹' WHERE `id`='139';
UPDATE `pet_name_generation` SET `word_loc4`='戈里姆' WHERE `id`='140';
UPDATE `pet_name_generation` SET `word_loc4`='汉斯' WHERE `id`='141';
UPDATE `pet_name_generation` SET `word_loc4`='黑尔' WHERE `id`='142';
UPDATE `pet_name_generation` SET `word_loc4`='霍克' WHERE `id`='143';
UPDATE `pet_name_generation` SET `word_loc4`='胡克' WHERE `id`='144';
UPDATE `pet_name_generation` SET `word_loc4`='加兹' WHERE `id`='145';
UPDATE `pet_name_generation` SET `word_loc4`='霍蒙' WHERE `id`='146';
UPDATE `pet_name_generation` SET `word_loc4`='加克' WHERE `id`='147';
UPDATE `pet_name_generation` SET `word_loc4`='卡耳' WHERE `id`='148';
UPDATE `pet_name_generation` SET `word_loc4`='克拉斯' WHERE `id`='149';
UPDATE `pet_name_generation` SET `word_loc4`='克恩' WHERE `id`='150';
UPDATE `pet_name_generation` SET `word_loc4`='克拉格' WHERE `id`='151';
UPDATE `pet_name_generation` SET `word_loc4`='克拉克' WHERE `id`='152';
UPDATE `pet_name_generation` SET `word_loc4`='马克' WHERE `id`='153';
UPDATE `pet_name_generation` SET `word_loc4`='梅兹' WHERE `id`='154';
UPDATE `pet_name_generation` SET `word_loc4`='欧姆' WHERE `id`='155';
UPDATE `pet_name_generation` SET `word_loc4`='范恩' WHERE `id`='156';
UPDATE `pet_name_generation` SET `word_loc4`='塞尔' WHERE `id`='157';
UPDATE `pet_name_generation` SET `word_loc4`='塔戈' WHERE `id`='158';
UPDATE `pet_name_generation` SET `word_loc4`='坦恩' WHERE `id`='159';
UPDATE `pet_name_generation` SET `word_loc4`='拓戈' WHERE `id`='160';
UPDATE `pet_name_generation` SET `word_loc4`='托科' WHERE `id`='161';
UPDATE `pet_name_generation` SET `word_loc4`='萨路' WHERE `id`='162';
UPDATE `pet_name_generation` SET `word_loc4`='扎戈' WHERE `id`='163';
UPDATE `pet_name_generation` SET `word_loc4`='赞格' WHERE `id`='164';
UPDATE `pet_name_generation` SET `word_loc4`='扎耳' WHERE `id`='165';
UPDATE `pet_name_generation` SET `word_loc4`='卡斯' WHERE `id`='166';
UPDATE `pet_name_generation` SET `word_loc4`='多克' WHERE `id`='167';
UPDATE `pet_name_generation` SET `word_loc4`='都卡' WHERE `id`='168';
UPDATE `pet_name_generation` SET `word_loc4`='甘克' WHERE `id`='169';
UPDATE `pet_name_generation` SET `word_loc4`='甘斯' WHERE `id`='170';
UPDATE `pet_name_generation` SET `word_loc4`='戈瑞' WHERE `id`='171';
UPDATE `pet_name_generation` SET `word_loc4`='戈格' WHERE `id`='172';
UPDATE `pet_name_generation` SET `word_loc4`='戈拉乌' WHERE `id`='173';
UPDATE `pet_name_generation` SET `word_loc4`='戈罗' WHERE `id`='174';
UPDATE `pet_name_generation` SET `word_loc4`='加克' WHERE `id`='175';
UPDATE `pet_name_generation` SET `word_loc4`='克拉斯特' WHERE `id`='176';
UPDATE `pet_name_generation` SET `word_loc4`='克瑞希' WHERE `id`='177';
UPDATE `pet_name_generation` SET `word_loc4`='克利特' WHERE `id`='178';
UPDATE `pet_name_generation` SET `word_loc4`='罗斯' WHERE `id`='179';
UPDATE `pet_name_generation` SET `word_loc4`='蒙' WHERE `id`='180';
UPDATE `pet_name_generation` SET `word_loc4`='莫斯' WHERE `id`='181';
UPDATE `pet_name_generation` SET `word_loc4`='姆斯' WHERE `id`='182';
UPDATE `pet_name_generation` SET `word_loc4`='拉戈马' WHERE `id`='183';
UPDATE `pet_name_generation` SET `word_loc4`='拉克' WHERE `id`='184';
UPDATE `pet_name_generation` SET `word_loc4`='拉耳' WHERE `id`='185';
UPDATE `pet_name_generation` SET `word_loc4`='诺斯' WHERE `id`='186';
UPDATE `pet_name_generation` SET `word_loc4`='纳兹' WHERE `id`='187';
UPDATE `pet_name_generation` SET `word_loc4`='弗格' WHERE `id`='188';
UPDATE `pet_name_generation` SET `word_loc4`='拉丝' WHERE `id`='189';
UPDATE `pet_name_generation` SET `word_loc4`='塔斯特' WHERE `id`='190';
UPDATE `pet_name_generation` SET `word_loc4`='塔茨' WHERE `id`='191';
UPDATE `pet_name_generation` SET `word_loc4`='萨克' WHERE `id`='192';
UPDATE `pet_name_generation` SET `word_loc4`='桑格' WHERE `id`='193';
UPDATE `pet_name_generation` SET `word_loc4`='希克' WHERE `id`='194';
UPDATE `pet_name_generation` SET `word_loc4`='亚戈' WHERE `id`='195';
UPDATE `pet_name_generation` SET `word_loc4`='赞兹特' WHERE `id`='196';
UPDATE `pet_name_generation` SET `word_loc4`='埃尔' WHERE `id`='197';
UPDATE `pet_name_generation` SET `word_loc4`='艾兹' WHERE `id`='198';
UPDATE `pet_name_generation` SET `word_loc4`='安戈' WHERE `id`='199';
UPDATE `pet_name_generation` SET `word_loc4`='巴恩' WHERE `id`='200';
UPDATE `pet_name_generation` SET `word_loc4`='贝特' WHERE `id`='201';
UPDATE `pet_name_generation` SET `word_loc4`='布洛' WHERE `id`='202';
UPDATE `pet_name_generation` SET `word_loc4`='布利' WHERE `id`='203';
UPDATE `pet_name_generation` SET `word_loc4`='坎特' WHERE `id`='204';
UPDATE `pet_name_generation` SET `word_loc4`='迪尔' WHERE `id`='205';
UPDATE `pet_name_generation` SET `word_loc4`='迪斯' WHERE `id`='206';
UPDATE `pet_name_generation` SET `word_loc4`='多蒙' WHERE `id`='207';
UPDATE `pet_name_generation` SET `word_loc4`='多鲁斯' WHERE `id`='208';
UPDATE `pet_name_generation` SET `word_loc4`='费厄' WHERE `id`='209';
UPDATE `pet_name_generation` SET `word_loc4`='菲尔' WHERE `id`='210';
UPDATE `pet_name_generation` SET `word_loc4`='戈里' WHERE `id`='211';
UPDATE `pet_name_generation` SET `word_loc4`='黑鲁' WHERE `id`='212';
UPDATE `pet_name_generation` SET `word_loc4`='黑斯' WHERE `id`='213';
UPDATE `pet_name_generation` SET `word_loc4`='卡鲁' WHERE `id`='214';
UPDATE `pet_name_generation` SET `word_loc4`='利恩' WHERE `id`='215';
UPDATE `pet_name_generation` SET `word_loc4`='米尔' WHERE `id`='216';
UPDATE `pet_name_generation` SET `word_loc4`='尼蒙' WHERE `id`='217';
UPDATE `pet_name_generation` SET `word_loc4`='塞尔' WHERE `id`='218';
UPDATE `pet_name_generation` SET `word_loc4`='瑟尔' WHERE `id`='219';
UPDATE `pet_name_generation` SET `word_loc4`='维尔' WHERE `id`='220';
UPDATE `pet_name_generation` SET `word_loc4`='扎' WHERE `id`='221';
UPDATE `pet_name_generation` SET `word_loc4`='艾斯' WHERE `id`='222';
UPDATE `pet_name_generation` SET `word_loc4`='安达' WHERE `id`='223';
UPDATE `pet_name_generation` SET `word_loc4`='安提亚' WHERE `id`='224';
UPDATE `pet_name_generation` SET `word_loc4`='艾维尔' WHERE `id`='225';
UPDATE `pet_name_generation` SET `word_loc4`='利亚' WHERE `id`='226';
UPDATE `pet_name_generation` SET `word_loc4`='莉莎' WHERE `id`='227';
UPDATE `pet_name_generation` SET `word_loc4`='内尔' WHERE `id`='228';
UPDATE `pet_name_generation` SET `word_loc4`='内斯' WHERE `id`='229';
UPDATE `pet_name_generation` SET `word_loc4`='尼亚' WHERE `id`='230';
UPDATE `pet_name_generation` SET `word_loc4`='恩利莎' WHERE `id`='231';
UPDATE `pet_name_generation` SET `word_loc4`='罗拉' WHERE `id`='232';
UPDATE `pet_name_generation` SET `word_loc4`='恩雅' WHERE `id`='233';
UPDATE `pet_name_generation` SET `word_loc4`='恩斯' WHERE `id`='234';
UPDATE `pet_name_generation` SET `word_loc4`='欧拉' WHERE `id`='235';
UPDATE `pet_name_generation` SET `word_loc4`='欧纳' WHERE `id`='236';
UPDATE `pet_name_generation` SET `word_loc4`='欧拉' WHERE `id`='237';
UPDATE `pet_name_generation` SET `word_loc4`='拉' WHERE `id`='238';
UPDATE `pet_name_generation` SET `word_loc4`='瑞安娜' WHERE `id`='239';
UPDATE `pet_name_generation` SET `word_loc4`='瑞尔路' WHERE `id`='240';
UPDATE `pet_name_generation` SET `word_loc4`='罗娜' WHERE `id`='241';
UPDATE `pet_name_generation` SET `word_loc4`='泰伊' WHERE `id`='242';
UPDATE `pet_name_generation` SET `word_loc4`='特维尔' WHERE `id`='243';
UPDATE `pet_name_generation` SET `word_loc4`='希亚' WHERE `id`='244';
UPDATE `pet_name_generation` SET `word_loc4`='伊娜' WHERE `id`='245';
UPDATE `pet_name_generation` SET `word_loc4`='维纳' WHERE `id`='246';
UPDATE `pet_name_generation` SET `word_loc4`='韦恩' WHERE `id`='247';
UPDATE `pet_name_generation` SET `word_loc4`='科西亚' WHERE `id`='248';
UPDATE `pet_name_generation` SET `word_loc4`='瓦拉' WHERE `id`='249';
UPDATE `pet_name_generation` SET `word_loc4`='维莎' WHERE `id`='250';
UPDATE `pet_name_generation` SET `word_loc4`='胡拉' WHERE `id`='251';
UPDATE `pet_name_generation` SET `word_loc4`='哈' WHERE `id`='252';
UPDATE `pet_name_generation` SET `word_loc4`='基胡' WHERE `id`='253';
UPDATE `pet_name_generation` SET `word_loc4`='沙阿' WHERE `id`='254';
UPDATE `pet_name_generation` SET `word_loc4`='特霍' WHERE `id`='255';
UPDATE `pet_name_generation` SET `word_loc4`='德胡' WHERE `id`='256';
UPDATE `pet_name_generation` SET `word_loc4`='安胡' WHERE `id`='257';
UPDATE `pet_name_generation` SET `word_loc4`='鲁恩' WHERE `id`='258';
UPDATE `pet_name_generation` SET `word_loc4`='图恩' WHERE `id`='259';
UPDATE `pet_name_generation` SET `word_loc4`='托蒙' WHERE `id`='260';


-- some other misc locale for chinese

-- hunter pet quest
UPDATE `locales_quest` SET `OfferRewardText_loc4`='我知道, 我知道! 你已经迫不及待地想进行下一步了, 不是吗?!', `RequestItemsText_loc4`='别担心, $G小子:姑娘;! 在你决定好选哪一个之前可以多尝试几次。' WHERE `entry`='6064';
UPDATE `locales_quest` SET `OfferRewardText_loc4`='大地之母已经给了我指示; 你已经很好的完成了。', `RequestItemsText_loc4`='练习你的技能。$N. 去驯服成年陆行鸟。' WHERE `entry`='6061';

UPDATE `locales_page_text` SET `Text_loc4`='亲爱的日记，$B$B 今天，我的头号敌人 - 纳瑞安, 企图派他的密友在他处以死刑的场地欺骗我。他的死刑。你相信吗?$B$B我历经千辛万苦才想出这个恶魔般的计划，要把他从那个该死的茅屋里引诱出来而他却这样做?算了……我太生气，不想写了。下次再说。 ' WHERE `entry`='2829';
UPDATE `locales_page_text` SET `Text_loc4`='亲爱的日记，$B$B 我给了他一个拥抱并告诉他要继续努力工作。我现在觉得好多了。这是我们之间的秘密，日记。$B$B我上次说到哪了?喔，对，纳瑞安!哼!!!我恨那个家伙。毕竟，就是纳瑞安摧毁了所有我们在修补诺姆瑞根学院当学生时的测验曲线。$B$B他们会把我赶出学校吗?就我看来，诺姆瑞根已经得到它该有的教训了!$B$B今天就写到这里。好好睡，日记! ' WHERE `entry`='2832';
UPDATE `locales_page_text` SET `Text_loc4`='亲爱的日记，$B$B 我一定是老了。我完全忘记我跟你说了纳瑞安和他的诡计的事。总之，当我看到扮成纳瑞安的诱饵，我真的很生气所以就命令二号把那个笨蛋给杀了!$B$B我进入飞行器里开始撕毁他宝贵、愚蠢、无知的龙语书。真是爱炫耀!谁会读龙语啊?我真是痛恨他! ' WHERE `entry`='2833';
UPDATE `locales_page_text` SET `Text_loc4`='亲爱的日记，$B$B 抱歉，我睡着了。然后我就一边愤怒的开着飞行器，一边把那愚蠢的书一章章丢出去。我看到我下方的暗语峡谷里有个恶魔，便决定要将第一章变成魔法的纸龙卷风，把它的身体碎成好几百万片!这是解放。魔法 + 纸张 =乐趣。$B$B这让我非常开心所以我决定飞到东部王国。我的第一站是熔火之心。纳瑞安总是一直讲那边的事!“…熔火之心怎样怎样，拉格纳罗斯如何如何…” ' WHERE `entry`='2834';

UPDATE `locales_quest` SET `Title_loc4`='耐普图隆的愤怒', `Details_loc4`='我和你说过坏消息了吗?它的名字叫巨齿鲨:100尺长，死亡和毁灭的化身。我想我忘记和你说这个了。$B$B根据我的超级精准千里眼提供的讯息，你会在艾萨拉的海岸找到最合适使用这个浮标的地方，就在风暴海湾。$B$B你要寻找一个大漩涡，就是附近都是沉船的地方。$B$B另外，我希望你带上你的朋友。$B$B如果你成功的话，那么把权杖碎片带给阿纳克洛斯。' WHERE `entry`='8729';
UPDATE `locales_gameobject` SET `name_loc4`='湍急的漩涡', `name_loc5`='湍急的漩涡' WHERE `entry`='300057';

-- item 18675(Military Ranks of the Horde & Alliance)  page_text
-- select * from locales_page_text where entry >= 2661 and entry <= 2665 or entry = 2856 or entry = 2857;
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\r<BODY>\r<H1 align=\"center\">部落与联盟的军衔</H1><BR/><BR/>\r <IMG src=\"Interface\\PvPRankBadges\\PvPRankHorde\" align=\"left\"/><BR/>\r <P align=\"right\">(兽人语)你好!</P><BR/>\r <P align=\"right\">在这本书中列出了</P><BR/>\r <P align=\"right\">部落和弱小的联盟的</P><BR/>\r <P align=\"right\">军衔列表。</P><BR/><BR/>\r <P align=\"left\">    首先是部落军衔，接下来是联盟的。</P><BR/>\r <P align=\"left\">其中包括了军官和士兵的军衔列表, </P><BR/>\r <P align=\"left\">按等级的高低排列。</P><BR/>\r <P align=\"left\">等级最高的排在首位，</P><BR/>\r <P align=\"left\">等级低的列于下位。</P><BR/><BR/>\r</BODY>\r</HTML>' WHERE `entry`='2661';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">部落军官军衔</H1><BR/><BR/>\n<P align=\"center\">第一部分</P><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank14\" align=\"left\"/>\n<P align=\"center\">高阶督军</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank13\" align=\"left\"/>\n<P align=\"center\">督军</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank12\" align=\"left\"/>\n<P align=\"center\">将军</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank11\" align=\"left\"/>\n<P align=\"center\">中将</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank10\" align=\"left\"/>\n<P align=\"center\">勇士</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2662';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">部落军官军衔</H1><BR/><BR/>\n<P align=\"center\">第二部分</P><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank09\" align=\"left\"/>\n<P align=\"center\">百夫长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank08\" align=\"left\"/>\n<P align=\"center\">军团士兵</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank07\" align=\"left\"/>\n<P align=\"center\">血卫士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank06\" align=\"left\"/>\n<P align=\"center\">石头守卫</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2663';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">部落士兵军衔</H1><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank05\" align=\"left\"/>\n<P align=\"center\">一等军士长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank04\" align=\"left\"/>\n<P align=\"center\">高阶军士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank03\" align=\"left\"/>\n<P align=\"center\">中士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank02\" align=\"left\"/>\n<P align=\"center\">步兵</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank01\" align=\"left\"/>\n<P align=\"center\">斥侯</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2664';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">联盟军官军衔</H1><BR/><BR/>\n<P align=\"center\">第一部分</P><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank14\" align=\"left\"/>\n<P align=\"center\">大元帅</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank13\" align=\"left\"/>\n<P align=\"center\">元帅</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank12\" align=\"left\"/>\n<P align=\"center\">统帅</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank11\" align=\"left\"/>\n<P align=\"center\">司令</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank10\" align=\"left\"/>\n<P align=\"center\">少校</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2665';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">联盟军官军衔</H1><BR/><BR/>\n<P align=\"center\">第二部分</P><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank09\" align=\"left\"/>\n<P align=\"center\">护卫骑士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank08\" align=\"left\"/>\n<P align=\"center\">骑士队长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank07\" align=\"left\"/>\n<P align=\"center\">骑士中尉</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank06\" align=\"left\"/>\n<P align=\"center\">骑士</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2856';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">联盟士兵军衔</H1><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank05\" align=\"left\"/>\n<P align=\"center\">士官长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank04\" align=\"left\"/>\n<P align=\"center\">军士长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank03\" align=\"left\"/>\n<P align=\"center\">中士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank02\" align=\"left\"/>\n<P align=\"center\">下士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank01\" align=\"left\"/>\n<P align=\"center\">列兵</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2857';

-- item 18664(A Treatise on Military Ranks)  page_text
-- select * from locales_page_text where entry >= 2654 and entry <= 2658 or entry = 2854 or entry = 2855;
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">军衔概述</H1><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRankAlliance\" align=\"left\"/><BR/>\n<P align=\"right\">以下是联盟的</P><BR/>\n<P align=\"right\">军衔概述，</P><BR/>\n<P align=\"right\">其中包括对部落</P><BR/>\n<P align=\"right\">的一些已知信息。</P><BR/>\n<P align=\"left\">    每一部分都包含两个章节，</P><BR/>\n<P align=\"left\">军官的军衔和士兵的军衔，</P><BR/>\n<P align=\"left\">都是按照由高到低的顺序排列的。</P><BR/>\n<P align=\"left\">联盟万岁!</P><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2654';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">联盟军官军衔</H1><BR/><BR/>\n<P align=\"center\">第一部分</P><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank14\" align=\"left\"/>\n<P align=\"center\">大元帅</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank13\" align=\"left\"/>\n<P align=\"center\">元帅</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank12\" align=\"left\"/>\n<P align=\"center\">统帅</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank11\" align=\"left\"/>\n<P align=\"center\">司令</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank10\" align=\"left\"/>\n<P align=\"center\">少校</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2655';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">联盟军官军衔</H1><BR/><BR/>\n<P align=\"center\">第二部分</P><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank09\" align=\"left\"/>\n<P align=\"center\">护卫骑士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank08\" align=\"left\"/>\n<P align=\"center\">骑士队长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank07\" align=\"left\"/>\n<P align=\"center\">骑士中尉</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank06\" align=\"left\"/>\n<P align=\"center\">骑士</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2656';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">联盟士兵军衔</H1><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank05\" align=\"left\"/>\n<P align=\"center\">士官长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank04\" align=\"left\"/>\n<P align=\"center\">军士长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank03\" align=\"left\"/>\n<P align=\"center\">中士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank02\" align=\"left\"/>\n<P align=\"center\">下士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank01\" align=\"left\"/>\n<P align=\"center\">列兵</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2657';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">部落军官军衔</H1><BR/><BR/>\n<P align=\"center\">第一部分</P><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank14\" align=\"left\"/>\n<P align=\"center\">高阶督军</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank13\" align=\"left\"/>\n<P align=\"center\">督军</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank12\" align=\"left\"/>\n<P align=\"center\">将军</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank11\" align=\"left\"/>\n<P align=\"center\">中将</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank10\" align=\"left\"/>\n<P align=\"center\">勇士</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2658';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">部落军官军衔</H1><BR/><BR/>\n<P align=\"center\">第二部分</P><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank09\" align=\"left\"/>\n<P align=\"center\">百夫长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank08\" align=\"left\"/>\n<P align=\"center\">军团士兵</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank07\" align=\"left\"/>\n<P align=\"center\">血卫士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank06\" align=\"left\"/>\n<P align=\"center\">石头守卫</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2854';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML>\n<BODY>\n<H1 align=\"center\">部落士兵军衔</H1><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank05\" align=\"left\"/>\n<P align=\"center\">一等军士长</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank04\" align=\"left\"/>\n<P align=\"center\">高阶军士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank03\" align=\"left\"/>\n<P align=\"center\">中士</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank02\" align=\"left\"/>\n<P align=\"center\">步兵</P><BR/><BR/><BR/>\n<IMG src=\"Interface\\PvPRankBadges\\PvPRank01\" align=\"left\"/>\n<P align=\"center\">斥侯</P><BR/><BR/><BR/>\n</BODY>\n</HTML>' WHERE `entry`='2855';


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
