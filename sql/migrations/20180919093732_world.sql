DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180919093732');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180919093732');
-- Add your query below.

-- delete npc out of map guid 150155
DELETE FROM creature WHERE guid=150155;
DELETE FROM creature_addon WHERE guid=150155;
DELETE FROM creature_movement WHERE id=150155;
DELETE FROM game_event_creature WHERE guid=150155;
DELETE FROM game_event_creature_data WHERE guid=150155;
DELETE FROM creature_battleground WHERE guid=150155;

-- some locales

UPDATE `script_texts` SET `content_loc4`='困....好困.....' WHERE `entry`='-1000601';
UPDATE `script_texts` SET `content_loc4`='喔... 好吧, 我这就去工作, $N!' WHERE `entry`='-1000600';
UPDATE `locales_quest` SET `ObjectiveText1_loc4`='敲醒苦工' WHERE `entry`='5441';

UPDATE `quest_greeting` SET `content_loc4`='你有事情要跟我商量吧，$c...来，坐下来慢慢谈。' WHERE `entry`='3188' and`type`='0';
UPDATE `quest_greeting` SET `content_loc4`='有什么需要我帮忙的吗, $n?  还有一批货我得去看看呢。' WHERE `entry`='3453' and`type`='0';

UPDATE `quest_greeting` SET `content_loc4`='为了拯救我们的人民，我们必须学习自然之道并了解它的秘密。' WHERE `entry`='3419' and`type`='0';
UPDATE `locales_quest` SET `ObjectiveText1_loc4`='', `ObjectiveText2_loc4`='检查蓝色迅猛龙巢穴', `ObjectiveText3_loc4`='检查黄色迅猛龙巢穴', `ObjectiveText4_loc4`='检查红色迅猛龙巢穴' WHERE `entry`='905';
UPDATE `locales_quest` SET `ObjectiveText2_loc1`='Visit Blue Raptor Nest', `ObjectiveText3_loc1`='Visit Yellow  Raptor Nest', `ObjectiveText4_loc1`='Visit Red  Raptor Nest' WHERE `entry`='905';

UPDATE `script_texts` SET `content_loc4`='科卡尔入侵者开始冲锋!' WHERE `entry`='-1780213';
UPDATE `script_texts` SET `content_loc4`='科卡尔半人马是最强壮的!' WHERE `entry`='-1780218';
UPDATE `script_texts` SET `content_loc4`='科卡尔入侵者撤退了!' WHERE `entry`='-1780219';
UPDATE `script_texts` SET `content_loc4`='我要雇佣一些保镖来护送泽基尔顿车队。我们停在考米克小屋东边的道路上，科卡尔半人马村庄的北边。' WHERE `entry`='-1001007';
UPDATE `script_texts` SET `content_loc4`='保护防御工事!' WHERE `entry`='-1780215';
UPDATE `script_texts` SET `content_loc4`='为了部落!' WHERE `entry`='-1780217';
UPDATE `script_texts` SET `content_loc4`='为了部落!!!' WHERE `entry`='-1780139';
UPDATE `script_texts` SET `content_loc4`='小心! 我被攻击了!' WHERE `entry`='-1000309';
UPDATE `script_texts` SET `content_loc4`='小心, $N! 看西边!' WHERE `entry`='-1780211';
UPDATE `script_texts` SET `content_loc4`='小心! 更多的信徒来了!' WHERE `entry`='-1000479';
UPDATE `script_texts` SET `content_loc4`='我们的敌人必将倒下!' WHERE `entry`='-1780216';
UPDATE `script_texts` SET `content_loc4`='守住阵线！就快胜利了...' WHERE `entry`='-1780214';
UPDATE `script_texts` SET `content_loc4`='一个保卫者倒下了!' WHERE `entry`='-1780212';
-- UPDATE `creature_ai_texts` SET `content_loc4`='我被召唤而来! 入侵者，到我的帐篷来，面对你的死亡吧!' WHERE `entry`='-770';
-- UPDATE `creature_ai_texts` SET `content_loc4`='用我的死亡召唤你! 维罗戈!' WHERE `entry`='-769';

UPDATE `quest_greeting` SET `content_loc4`='通过侦察兵和线人搜集的消息，我们控制着整个洛丹仑的地下情报网。所有的天灾活动、私人财产，都在我们的严密监视之下...' WHERE `entry`='2121' and`type`='0';

UPDATE `script_texts` SET `content_loc4`='船长，是这位$N解救了我! $N, 船长肯定会嘉奖你的英勇行为的。' WHERE `entry`='-1000380';
UPDATE `script_texts` SET `content_loc4`='啊... 棘齿城甜咸的海风...' WHERE `entry`='-1000379';
UPDATE `script_texts` SET `content_loc4`='就快到棘齿城了! 跟上步伐... ' WHERE `entry`='-1000378';
UPDATE `script_texts` SET `content_loc4`='让这个$C离我远点!' WHERE `entry`='-1000377';
UPDATE `script_texts` SET `content_loc4`='$C朝我们这边来了!' WHERE `entry`='-1000376';
UPDATE `script_texts` SET `content_loc4`='$C过来了! 报仇的时候到了!' WHERE `entry`='-1000375';
UPDATE `script_texts` SET `content_loc4`='帮帮忙! $C正在攻击我!' WHERE `entry`='-1000374';
UPDATE `script_texts` SET `content_loc4`='看起来很多南海海盗盘踞在海岸上，回程可能会比较艰难。' WHERE `entry`='-1000373';
UPDATE `script_texts` SET `content_loc4`='现在我感觉好点了，我们赶快回到棘齿城吧。出发，$n。' WHERE `entry`='-1000372';
UPDATE `script_texts` SET `content_loc4`='终于逃出北方城堡了! 我需要休息一会儿，调整一下呼吸...' WHERE `entry`='-1000371';
UPDATE `script_texts` SET `content_loc4`='别走太远了，$n。我需要你的帮助才能逃出这里。我们出发吧!' WHERE `entry`='-1000370';

UPDATE `quest_greeting` SET `content_loc4`='噢! 太好了! 你就是我要找的那个$r!\r\r坐下来吧! 我们有太多事情需要讨论了!!' WHERE `entry`='3446' and`type`='0';

UPDATE `locales_creature` SET `name_loc4`='勇士石皮', `subname_loc4`='荣誉军需官' WHERE `entry`='12793';
UPDATE `locales_creature` SET `name_loc4`='中士巴沙',`subname_loc4`='荣誉军需官' WHERE `entry`='12799';
UPDATE `locales_creature` SET `name_loc4`='石头守卫札尔格', `subname_loc4`='传承武器军需官' WHERE `entry`='12794';
UPDATE `locales_creature` SET `name_loc4`='狼骑兵波尔克', `subname_loc4`='战场坐骑军需官' WHERE `entry`='12796';
UPDATE `locales_creature` SET `name_loc4`='帕兰蒂尔女士', `subname_loc4`='护甲军需官' WHERE `entry`='12792';
UPDATE `locales_creature` SET `name_loc4`='埃雷恩', `subname_loc4`='荣誉军需官' WHERE `entry`='12805';

UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='986';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='3030';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='3031';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='3032';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='3062';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='3066';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='3157';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='3344';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='13417';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='3173';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 萨满! 准备好接受训练了吗?' WHERE `entry`='3403';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='3033';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='3034';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='3036';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='3060';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='3064';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='3602';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='3597';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='4217';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='4219';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='4218';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='5504';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='5505';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='5506';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='8142';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='9465';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 德鲁伊! 准备好接受训练了吗?' WHERE `entry`='12042';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='895';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='987';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='1231';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='1404';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3038';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3039';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3040';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3061';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3065';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3154';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3171';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3352';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3406';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3407';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3596';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3601';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='3963';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='4138';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='4146';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='5115';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='4205';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='5116';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='5117';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='5501';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='5515';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='5516';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='5517';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='8308';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 猎人! 准备好接受训练了吗?' WHERE `entry`='10930';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='198';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='328';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='331';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='944';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='1228';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='2124';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='2128';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='3047';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='3048';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='3049';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='4566';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='4567';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='4568';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5144';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5145';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5146';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5497';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5498';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5880';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5882';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5883';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5884';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='5885';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='7311';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 法师! 准备好接受训练了吗?' WHERE `entry`='7312';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='925';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='926';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='927';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='928';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='1232';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='5147';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='5148';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='5149';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='5491';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='5492';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 圣骑士! 准备好接受训练了吗?' WHERE `entry`='8140';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='375';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='376';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='377';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='837';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='1226';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='2123';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='2129';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='3044';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='3045';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='3046';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='3595';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='3600';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='3706';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='3707';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='4090';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='4091';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='4092';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='4606';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='4607';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='4608';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='5141';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='5142';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='5143';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='5484';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='5489';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='5994';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='6014';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='6018';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='11397';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='11401';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 牧师! 准备好接受训练了吗?' WHERE `entry`='11406';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='915';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='916';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='917';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='918';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='1234';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='1411';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='2122';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='2130';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='3155';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='3170';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='3327';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='3328';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='3401';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='3594';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='3599';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='4163';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='4214';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='4215';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='4582';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='4583';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='4584';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='5165';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='5166';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='5167';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='6707';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 盗贼! 准备好接受训练了吗?' WHERE `entry`='13283';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='6251';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='459';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='460';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='461';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='906';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='988';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='2126';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='2127';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='3156';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='3172';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='3324';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='3325';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='3326';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='4563';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='4564';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='4565';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='5171';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='5172';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='5173';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='5495';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='5496';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 术士! 准备好接受训练了吗?' WHERE `entry`='5612';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='911';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='912';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='913';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='914';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='985';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='1229';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='1901';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='2119';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='2131';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3041';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3042';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3043';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3059';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3063';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3153';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3169';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3353';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3354';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3408';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3593';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='3598';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='4087';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='4089';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='4593';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='4594';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='4595';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='5113';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='5114';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='5479';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='5480';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='7315';
UPDATE `npc_trainer_greeting` SET `content_loc4`='你好, 战士! 准备好接受训练了吗?' WHERE `entry`='8141';

UPDATE `mangos_string` SET `content_loc4`='联盟胜利了!' WHERE `entry`='600';
UPDATE `mangos_string` SET `content_loc4`='部落胜利了!' WHERE `entry`='601';
UPDATE `mangos_string` SET `content_loc4`='战歌峡谷的战斗将在 1 分钟后开始。' WHERE `entry`='602';
UPDATE `mangos_string` SET `content_loc4`='战歌峡谷的战斗将在 30 秒后开始, 请做好准备!' WHERE `entry`='603';
UPDATE `mangos_string` SET `content_loc4`='战歌峡谷的战斗开始了!' WHERE `entry`='604';
UPDATE `mangos_string` SET `content_loc4`='|cffff0000$n夺取了部落的旗帜!' WHERE `entry`='605';
UPDATE `mangos_string` SET `content_loc4`='|cffff0000$n夺取了联盟的旗帜!' WHERE `entry`='606';
UPDATE `mangos_string` SET `content_loc4`='|cffffff00部落的旗帜被$n丢弃了!' WHERE `entry`='607';
UPDATE `mangos_string` SET `content_loc4`='|cffffff00联盟的旗帜被$n丢弃了!' WHERE `entry`='608';
UPDATE `mangos_string` SET `content_loc4`='|cffffff00联盟的旗帜被$n还到了基地中!' WHERE `entry`='609';
UPDATE `mangos_string` SET `content_loc4`='|cffffff00部落的旗帜被$n还到了基地中!' WHERE `entry`='610';
UPDATE `mangos_string` SET `content_loc4`='|cffff0000部落的旗帜被$n拔起了!' WHERE `entry`='611';
UPDATE `mangos_string` SET `content_loc4`='|cffff0000联盟的旗帜被$n拔起了!' WHERE `entry`='612';
UPDATE `mangos_string` SET `content_loc4`='旗帜被放置在了双方的基地中!' WHERE `entry`='613';
UPDATE `mangos_string` SET `content_loc4`='联盟的旗帜被放置到了基地中!' WHERE `entry`='614';
UPDATE `mangos_string` SET `content_loc4`='部落的旗帜被放置到了基地中!' WHERE `entry`='615';
UPDATE `mangos_string` SET `content_loc4`='联盟' WHERE `entry`='650';
UPDATE `mangos_string` SET `content_loc4`='部落' WHERE `entry`='651';
UPDATE `mangos_string` SET `content_loc4`='马厩' WHERE `entry`='652';
UPDATE `mangos_string` SET `content_loc4`='铁匠铺' WHERE `entry`='653';
UPDATE `mangos_string` SET `content_loc4`='农场' WHERE `entry`='654';
UPDATE `mangos_string` SET `content_loc4`='伐木场' WHERE `entry`='655';
UPDATE `mangos_string` SET `content_loc4`='矿洞' WHERE `entry`='656';
UPDATE `mangos_string` SET `content_loc4`='|cffffff00%s占领了%s' WHERE `entry`='657';
UPDATE `mangos_string` SET `content_loc4`='|cffffff00$n守住了%s' WHERE `entry`='658';
UPDATE `mangos_string` SET `content_loc4`='|cffff0000$n突袭了%s' WHERE `entry`='659';
UPDATE `mangos_string` SET `content_loc4`='|cffff0000$n夺取了%s! 如果再不采取行动,  %s将在 1 分钟内占领它!' WHERE `entry`='660';
UPDATE `mangos_string` SET `content_loc4`='阿拉希盆地的战斗将在 1 分钟后开始。' WHERE `entry`='661';
UPDATE `mangos_string` SET `content_loc4`='阿拉希盆地的战斗将在 30 秒后开始, 请做好准备!' WHERE `entry`='662';
UPDATE `mangos_string` SET `content_loc4`='阿拉希盆地的战斗开始了!' WHERE `entry`='663';
UPDATE `mangos_string` SET `content_loc4`='联盟已经搜集了$1776W的资源, 离胜利不远了!' WHERE `entry`='664';
UPDATE `mangos_string` SET `content_loc4`='部落已经搜集了$1777W的资源, 离胜利不远了!' WHERE `entry`='665';
UPDATE `mangos_string` SET `content_loc4`='你必须等待%s才能再次发言。' WHERE `entry`='705';
UPDATE `mangos_string` SET `content_loc4`='%s现在不想被打扰, 不能接收私密消息: %s' WHERE `entry`='707';
UPDATE `mangos_string` SET `content_loc4`='%s现在不在电脑面前: %s' WHERE `entry`='708';
UPDATE `mangos_string` SET `content_loc4`='请勿打扰' WHERE `entry`='709';
UPDATE `mangos_string` SET `content_loc4`='不在电脑面前' WHERE `entry`='710';
UPDATE `mangos_string` SET `content_loc4`='你没的等级没有达到战场的要求' WHERE `entry`='715';
UPDATE `mangos_string` SET `content_loc4`='After your recent battle in %s our best attempts to award you a Mark of Honor failed. Enclosed you will find the Mark of Honor we were not able to deliver to you at the time. Thanks for fighting in %s!' WHERE `entry`='666';
UPDATE `mangos_string` SET `content_loc4`='Queue status for %s (Lvl: %u to %u)' WHERE `entry`='711';
UPDATE `mangos_string` SET `content_loc4`='|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] A: %u/%u, H: %u/%u|r' WHERE `entry`='712';
UPDATE `mangos_string` SET `content_loc4`='|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] Started!|r' WHERE `entry`='717';
UPDATE `mangos_string` SET `content_loc4`='你的团队人数超过了战场的限制, 请重组后再加入。' WHERE `entry`='720';
UPDATE `mangos_string` SET `content_loc4`='你的团队中有离线的成员, 请移除后再加入。' WHERE `entry`='727';
UPDATE `mangos_string` SET `content_loc4`='Your group has players from the opposing faction. You can\'t join the battleground as a group.' WHERE `entry`='728';
UPDATE `mangos_string` SET `content_loc4`='你的团队中有成员在其他战场队列, 你不能以团队形式加入。' WHERE `entry`='729';
UPDATE `mangos_string` SET `content_loc4`='你的团队中已经有人在这个战场队列中, 他必须先离开队列才能以团队形式加入。' WHERE `entry`='730';
UPDATE `mangos_string` SET `content_loc4`='你的团队中有人被标记为逃亡者, 你不能以团队形式加入。' WHERE `entry`='731';
UPDATE `mangos_string` SET `content_loc4`='你的团队中已经有人在三个战场队列中, 你不能以团队形式加入。' WHERE `entry`='732';
UPDATE `mangos_string` SET `content_loc4`='你不能被传送到战场地图。' WHERE `entry`='733';
UPDATE `mangos_string` SET `content_loc4`='你不能召唤玩家到战场或竞技场地图。' WHERE `entry`='734';
UPDATE `mangos_string` SET `content_loc4`='你不能从一个战场传送到另一个战场, 请先离开当前战场。' WHERE `entry`='736';
UPDATE `mangos_string` SET `content_loc4`='人数不足, 战场将在 %u 分钟后关闭。' WHERE `entry`='750';
UPDATE `mangos_string` SET `content_loc4`='人数不足, 战场将在 %u 秒后关闭。' WHERE `entry`='751';
UPDATE `mangos_string` SET `content_loc4`='只有联盟才能使用这个入口' WHERE `entry`='752';
UPDATE `mangos_string` SET `content_loc4`='只有部落才能使用这个入口' WHERE `entry`='753';
UPDATE `mangos_string` SET `content_loc4`='%s被%s摧毁了!' WHERE `entry`='759';
UPDATE `mangos_string` SET `content_loc4`='%s遭到攻击! 再不采取行动, %s将会摧毁它!' WHERE `entry`='760';
UPDATE `mangos_string` SET `content_loc4`='%s被%s守住了!' WHERE `entry`='761';
UPDATE `mangos_string` SET `content_loc4`='%s被%s占领了!' WHERE `entry`='762';
UPDATE `mangos_string` SET `content_loc4`='%s被%s守住了!' WHERE `entry`='763';
UPDATE `mangos_string` SET `content_loc4`='%s遭到攻击! 再不采取行动, %s将会占领它!' WHERE `entry`='764';
UPDATE `mangos_string` SET `content_loc4`='%s占领了%s! 它的资源将用来提供补给!' WHERE `entry`='765';
UPDATE `mangos_string` SET `content_loc4`='深铁矿洞' WHERE `entry`='766';
UPDATE `mangos_string` SET `content_loc4`='冷齿矿洞' WHERE `entry`='767';
UPDATE `mangos_string` SET `content_loc4`='雷矛急救站' WHERE `entry`='768';
UPDATE `mangos_string` SET `content_loc4`='丹巴达尔南部哨塔' WHERE `entry`='769';
UPDATE `mangos_string` SET `content_loc4`='丹巴达尔北部哨塔' WHERE `entry`='770';
UPDATE `mangos_string` SET `content_loc4`='雷矛墓地' WHERE `entry`='771';
UPDATE `mangos_string` SET `content_loc4`='冰翼哨塔' WHERE `entry`='772';
UPDATE `mangos_string` SET `content_loc4`='石炉墓地' WHERE `entry`='773';
UPDATE `mangos_string` SET `content_loc4`='石炉哨塔' WHERE `entry`='774';
UPDATE `mangos_string` SET `content_loc4`='雪落墓地' WHERE `entry`='775';
UPDATE `mangos_string` SET `content_loc4`='冰血哨塔' WHERE `entry`='776';
UPDATE `mangos_string` SET `content_loc4`='冰血墓地' WHERE `entry`='777';
UPDATE `mangos_string` SET `content_loc4`='霜狼墓地' WHERE `entry`='779';
UPDATE `mangos_string` SET `content_loc4`='哨塔高地' WHERE `entry`='778';
UPDATE `mangos_string` SET `content_loc4`='东部霜狼哨塔' WHERE `entry`='780';
UPDATE `mangos_string` SET `content_loc4`='西部霜狼哨塔' WHERE `entry`='781';
UPDATE `mangos_string` SET `content_loc4`='霜狼急救站' WHERE `entry`='782';
UPDATE `mangos_string` SET `content_loc4`='奥特兰克山谷的战斗将在 1 分钟后开始。' WHERE `entry`='784';
UPDATE `mangos_string` SET `content_loc4`='奥特兰克山谷的战斗将在 30 秒后开始, 请做好准备!' WHERE `entry`='785';
UPDATE `mangos_string` SET `content_loc4`='奥特兰克山谷的战斗开始了!' WHERE `entry`='786';
UPDATE `mangos_string` SET `content_loc4`='联盟的资源即将耗尽了!' WHERE `entry`='787';
UPDATE `mangos_string` SET `content_loc4`='部落的资源即将耗尽了!' WHERE `entry`='788';
UPDATE `mangos_string` SET `content_loc4`='霜狼将军阵亡了!' WHERE `entry`='789';
UPDATE `mangos_string` SET `content_loc4`='雷矛将军阵亡了!' WHERE `entry`='790';
UPDATE `mangos_string` SET `content_loc4`='你没有足够的金币' WHERE `entry`='801';
UPDATE `mangos_string` SET `content_loc4`='你没有足够的背包栏位' WHERE `entry`='802';
UPDATE `mangos_string` SET `content_loc4`='对方没有足够的背包栏位' WHERE `entry`='803';
UPDATE `mangos_string` SET `content_loc4`='公会管理员' WHERE `entry`='811';
UPDATE `mangos_string` SET `content_loc4`='官员' WHERE `entry`='812';
UPDATE `mangos_string` SET `content_loc4`='老兵' WHERE `entry`='813';
UPDATE `mangos_string` SET `content_loc4`='成员' WHERE `entry`='814';
UPDATE `mangos_string` SET `content_loc4`='新手' WHERE `entry`='815';
UPDATE `mangos_string` SET `content_loc4`='%s充满恐惧地转身想要逃跑!' WHERE `entry`='5030';
UPDATE `mangos_string` SET `content_loc4`='斯尼维尔在此! 冷齿矿洞是我的啦!' WHERE `entry`='791';
UPDATE `mangos_string` SET `content_loc4`='进攻的时候到了! 为了部落!' WHERE `entry`='792';
UPDATE `mangos_string` SET `content_loc4`='振作起来, 联盟! 把这些恶棍赶出奥特兰克山谷!' WHERE `entry`='793';

UPDATE `mangos_string` SET `content_loc4`='在您最近的战斗中, 我们尝试授予您荣誉奖章, 但是失败了。附件是当时没能及时授予您的荣誉奖章。感谢您在战斗中作出的贡献。' WHERE `entry`='666';

UPDATE `locales_creature` SET `name_loc4`='奥特兰克山谷战场军官' WHERE `entry`='15972';
UPDATE `locales_creature` SET `name_loc4`='阿拉希盆地战场军官' WHERE `entry`='14879';
UPDATE `locales_creature` SET `name_loc4`='战歌峡谷战场军官' WHERE `entry`='14623';
UPDATE `locales_creature` SET `name_loc4`='阿纳克洛斯' WHERE `entry`='15192';

UPDATE `locales_quest` SET `OfferRewardText_loc4`='啊, 是的! 我们当然不会忘记你曾经在阿拉希盆地的战斗中获得的成就。' WHERE `entry`='8565';
UPDATE `locales_quest` SET `OfferRewardText_loc4`='啊, 是的! 我们当然不会忘记你曾经在阿拉希盆地的战斗中获得的成就。' WHERE `entry`='8566';
UPDATE `locales_quest` SET `OfferRewardText_loc4`='啊, 是的! 我们当然不会忘记你曾经在战歌峡谷的战斗中获得的成就。' WHERE `entry`='8567';
UPDATE `locales_quest` SET `OfferRewardText_loc4`='啊, 是的! 我们当然不会忘记你曾经在战歌峡谷的战斗中获得的成就。' WHERE `entry`='8568';
UPDATE `locales_quest` SET `OfferRewardText_loc4`='啊, 是的! 我们当然不会忘记你曾经在战歌峡谷的战斗中获得的成就。' WHERE `entry`='8569';
UPDATE `locales_quest` SET `OfferRewardText_loc4`='啊, 是的! 我们当然不会忘记你曾经在战歌峡谷的战斗中获得的成就。' WHERE `entry`='8570';

-- fordragon gossip menu text
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='你好, $n。 找我有什么事吗?' WHERE `ID`='296';
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES ('60001', '296', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

UPDATE `locales_quest` SET `OfferRewardText_loc4`='你带着头巾回来了，干得好。暴风城军方感谢你的帮助。$B' WHERE `entry`='18';

UPDATE `locales_quest` SET `ObjectiveText1_loc4`='发现艾克曼的下落', `ObjectiveText2_loc4`='发现维波里的下落', `ObjectiveText3_loc4`='发现斯里多尔的下落' WHERE `entry`='7301';
UPDATE `locales_quest` SET `ObjectiveText1_loc4`='发现古斯的下落', `ObjectiveText2_loc4`='发现杰斯托的下落', `ObjectiveText3_loc4`='发现穆维里克的下落' WHERE `entry`='7302';

-- Drekthar says
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='你无法击败霜狼氏族!' WHERE `ID`='8844';
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='你的精神很虚弱，你的打击更弱!' WHERE `ID`='8845';
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='我想你的进攻因为寒冷而减弱了!' WHERE `ID`='8846';
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='你不是部落的对手!' WHERE `ID`='8848';
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='你会在今天见到你的祖先!' WHERE `ID`='8849';
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='如果你不自动离开奥特兰克山谷，霜狼会强迫你离开的!' WHERE `ID`='8847';
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='你们想要把霜狼的将军引出他的要塞? 可笑!' WHERE `ID`='10377';
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='雷矛的渣滓们, 如果你们真的有这么大胆的话, 就来我的堡垒中挑战我吧!' WHERE `ID`='10376';
UPDATE `locales_broadcast_text` SET `MaleText_loc4`='雷矛的渣滓! 在我的要塞?! 杀光他们!' WHERE `ID`='10245';

UPDATE `quest_greeting` SET `content_loc4`='长久以来, 这些大陆上的纷争始终看不到尽头。不过冒险者不需要知道那么多。拿起武器, 你可以的, $C。战争随时可能打到我们的家门口, 如果我没弄错的话, 你看起来是能乐在其中的人。' WHERE `entry`='4485' and`type`='0';

-- AQ war npc High Overlord Saurfang
INSERT INTO `locales_creature` (`entry`, `name_loc4`, `name_loc5`) VALUES ('987000', '高阶督军萨鲁法尔', '高阶督军萨鲁法尔');

UPDATE `locales_item` SET `description_loc4`='唯一的领袖...' WHERE `entry`='20383';

UPDATE `locales_quest` SET `Title_loc4`='卡利姆多的力量', `Details_loc4`='描述', `OfferRewardText_loc4`='流沙节杖终于得以复原, $N。$B$B只有你能使用这把节杖, 只有你能带领你的同胞走向新的纪元。$B$B你必须等待部落和联盟的军队抵达希利苏斯, 然后你就可以敲响甲虫之台的铜锣了。战争即将拉开序幕。', `RequestItemsText_loc4`='一千年过去了, 正如命中注定的那样, 一位勇士站在了我的面前。这位勇士将会带领他的人民走向新的纪元。$B$B上古之神在颤抖, $N。是的, 它在你坚定的信念面前恐惧地颤抖着。打碎克苏恩的预言吧。$B$B它知道你会到来的, 勇士————它还知道卡利姆多的力量与你同在。当你做好准备后, 就请通知我, 我将把流沙节杖赐予你。' WHERE `entry`='8742';
UPDATE `locales_quest` SET `Title_loc4`='阿纳克洛斯', `Objectives_loc4`='去塔纳利斯的时光之穴寻找阿纳克洛斯。' WHERE `entry`='8303';

UPDATE `locales_page_text` SET `Text_loc4`='他的骄傲被完全地粉碎，这是鹿盔第二次在人生中感到彻底的恐惧。于是，在塔纳利斯，鹿盔找到了阿纳克洛斯－－诺兹多姆之子，并请求青铜龙军团的协助。 ' WHERE `entry`='2798';
UPDATE `locales_page_text` SET `Text_loc4`='一开始，阿纳克洛斯拒绝让青铜龙军团卷入次要种族的事务之中。直到其拉莽撞地攻击了时光洞穴，阿纳克洛斯才同意加入夜精灵的军队。 ' WHERE `entry`='2799';
UPDATE `locales_page_text` SET `Text_loc4`='阿纳克洛斯很快的了解到即使是强大的青铜龙军团也无法阻挠其拉军队的入侵。每当他一口气杀掉五十只虫兵，就会有一百只等着替补它们的位置。随着夜精灵阵线越来越衰弱，这个威胁将会蔓延至更北方的菲拉斯荒野的迹象就越来越清楚的浮现，阿纳克洛斯决定是时候该让守护巨龙之子们都意识到这个情况。 ' WHERE `entry`='2800';
UPDATE `locales_page_text` SET `Text_loc4`='龙群在希利苏斯上空的最高处碰头：在安其拉堡垒上空的几千尺之上。$B$B 阿纳克洛斯是时间之王诺兹多姆之子。$B$B 翡翠梦境则有麦琳瑟拉，自然之王伊瑟拉的孩子。$B$B 凯雷斯特拉兹，生命之王雅立史卓莎的孩子，代表红龙军团。$B$B 亚雷戈斯是魔法之王玛里苟斯的孩子，代表蓝龙军团。 ' WHERE `entry`='2802';
UPDATE `locales_quest` SET `OfferRewardText_loc4`='你是卡利姆多的希望,  $N。' WHERE `entry`='8303';

UPDATE `locales_quest` SET `Objectives_loc4`='塔纳利斯时光之穴的阿纳克洛斯想要你前往位于希利苏斯南部沙漠的甲虫之台。$B$B找到水晶之泪, 凝视它的深处。' WHERE `entry`='8305';
UPDATE `locales_creature` SET `name_loc4`='上古之龙阿纳克洛斯' WHERE `entry`='15381';
UPDATE `locales_quest` SET `Title_loc4`='巨龙军团' WHERE `entry`='8555';

UPDATE `locales_gameobject` SET `name_loc4`='新挖掘的泥土' WHERE `entry`='180652';
UPDATE `locales_page_text` SET `Text_loc4`='<HTML> <BODY> <IMG src=\"Interface\\Pictures\\21037_crudemap_256\"/> </BODY> </HTML>' WHERE `entry`='2828';

UPDATE `locales_quest` SET `ObjectiveText1_loc4`='二号是替谁工作的?' WHERE `entry`='8606';

-- some quest modify

-- pull up Verog trigger rate from 2
UPDATE `creature_ai_events` SET `event_chance`='8' WHERE `id`='327402';
UPDATE `creature_ai_events` SET `event_chance`='8' WHERE `id`='327504';
UPDATE `creature_ai_events` SET `event_chance`='10' WHERE `id`='339703';

-- system broadcast every 15 mins
INSERT INTO `mangos_string` (`entry`,`content_default`,`content_loc4`) VALUES ('12001','GM and supplier will NEVER ask for account and password,DO NOT believe any drawing prize info and DO NOT share you account to anyone else.','|cffffff00GM和客服人员在任何情况下都不会向您索要账号、密码等信息。为了您的帐号安全，请不要和他人分享帐号，请勿轻信任何中奖信息。|r');
INSERT INTO `autobroadcast`(`delay`,`comments`,`stringId`) VALUES(900,'broadcast info 1',12001);

-- beaten corpse at the_barrens,  goosip item text
INSERT INTO `script_texts` (`entry`,`content_default`, `content_loc4`, `comment`) VALUES ('-1901000','Examine corpse in detail...', '仔细检查尸体...', 'beaten_corpse GOSSIP_ITEM_TEXT_EXAMINE_CORPSE'); 

-- split WarMaster's script, prevent them run out of general's room
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Ally' WHERE `entry`='14762' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Ally' WHERE `entry`='14763' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Ally' WHERE `entry`='14764' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Ally' WHERE `entry`='14765' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Ally' WHERE `entry`='14766' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Ally' WHERE `entry`='14767' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Ally' WHERE `entry`='14768' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Ally' WHERE `entry`='14769' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Horde' WHERE `entry`='14770' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Horde' WHERE `entry`='14771' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Horde' WHERE `entry`='14772' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Horde' WHERE `entry`='14773' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Horde' WHERE `entry`='14774' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Horde' WHERE `entry`='14775' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Horde' WHERE `entry`='14776' and`patch`='0';
UPDATE `creature_template` SET `ScriptName`='npc_WarMaster_Horde' WHERE `entry`='14777' and`patch`='0';

-- Let Herald of Frostwolf and Stormpike yell at proper event time
-- add FrostHerald 51879 event1 60 event2 1
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) VALUES ('51879', '60', '1');
INSERT INTO `battleground_events` (`map`, `event1`, `event2`, `description`) VALUES ('30', '60', '1', 'Frostwolf Herald - that guy who yells  all the time ;)');
UPDATE `battleground_events` SET `description`='Stormpike Herald - that guy who yells all the time ;)' WHERE `map`='30' and`event1`='60' and`event2`='0';

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
