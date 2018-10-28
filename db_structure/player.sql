-- ----------------------------
-- Table structure for `affect`
-- ----------------------------
DROP TABLE IF EXISTS `affect`;
CREATE TABLE `affect` (
`dwPID`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bType`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`bApplyOn`  tinyint(4) UNSIGNED NOT NULL DEFAULT 0 ,
`lApplyValue`  int(11) NOT NULL DEFAULT 0 ,
`dwFlag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`lDuration`  int(11) NOT NULL DEFAULT 0 ,
`lSPCost`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`dwPID`, `bType`, `bApplyOn`, `lApplyValue`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `affect_copy`
-- ----------------------------
DROP TABLE IF EXISTS `affect_copy`;
CREATE TABLE `affect_copy` (
`dwPID`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bType`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`bApplyOn`  tinyint(4) UNSIGNED NOT NULL DEFAULT 0 ,
`lApplyValue`  int(11) NOT NULL DEFAULT 0 ,
`dwFlag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`lDuration`  int(11) NOT NULL DEFAULT 0 ,
`lSPCost`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`dwPID`, `bType`, `bApplyOn`, `lApplyValue`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `banword`
-- ----------------------------
DROP TABLE IF EXISTS `banword`;
CREATE TABLE `banword` (
`word`  varbinary(24) NOT NULL DEFAULT '' ,
PRIMARY KEY (`word`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `change_empire`
-- ----------------------------
DROP TABLE IF EXISTS `change_empire`;
CREATE TABLE `change_empire` (
`account_id`  int(11) NOT NULL DEFAULT 0 ,
`change_count`  tinyint(4) NULL DEFAULT NULL ,
`timestamp`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`account_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`sp`  smallint(6) NOT NULL DEFAULT 1000 ,
`master`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  tinyint(2) NULL DEFAULT NULL ,
`exp`  int(11) NULL DEFAULT NULL ,
`skill_point`  tinyint(2) NOT NULL DEFAULT 0 ,
`skill`  tinyblob NULL ,
`win`  int(11) NOT NULL DEFAULT 0 ,
`draw`  int(11) NOT NULL DEFAULT 0 ,
`loss`  int(11) NOT NULL DEFAULT 0 ,
`ladder_point`  int(11) NOT NULL DEFAULT 0 ,
`gold`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `guild_comment`
-- ----------------------------
DROP TABLE IF EXISTS `guild_comment`;
CREATE TABLE `guild_comment` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`guild_id`  int(10) UNSIGNED NULL DEFAULT NULL ,
`name`  varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`notice`  tinyint(4) NULL DEFAULT NULL ,
`content`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`time`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `guild_grade`
-- ----------------------------
DROP TABLE IF EXISTS `guild_grade`;
CREATE TABLE `guild_grade` (
`guild_id`  int(11) NOT NULL DEFAULT 0 ,
`grade`  tinyint(4) NOT NULL DEFAULT 0 ,
`name`  varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`auth`  set('ADD_MEMBER','REMOVE_MEMEBER','NOTICE','USE_SKILL') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
PRIMARY KEY (`guild_id`, `grade`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
`pid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guild_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`grade`  tinyint(2) NULL DEFAULT NULL ,
`is_general`  tinyint(1) NOT NULL DEFAULT 0 ,
`offer`  int(10) UNSIGNED NULL DEFAULT NULL ,
PRIMARY KEY (`guild_id`, `pid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `guild_war`
-- ----------------------------
DROP TABLE IF EXISTS `guild_war`;
CREATE TABLE `guild_war` (
`id_from`  int(11) NOT NULL DEFAULT 0 ,
`id_to`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id_from`, `id_to`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `guild_war_bet`
-- ----------------------------
DROP TABLE IF EXISTS `guild_war_bet`;
CREATE TABLE `guild_war_bet` (
`login`  varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`gold`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guild`  int(11) NOT NULL DEFAULT 0 ,
`war_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`war_id`, `login`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `guild_war_reservation`
-- ----------------------------
DROP TABLE IF EXISTS `guild_war_reservation`;
CREATE TABLE `guild_war_reservation` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`guild1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guild2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`type`  tinyint(2) UNSIGNED NOT NULL DEFAULT 0 ,
`warprice`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`initscore`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`started`  tinyint(1) NOT NULL DEFAULT 0 ,
`bet_from`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bet_to`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`winner`  int(11) NOT NULL DEFAULT '-1' ,
`power1`  int(11) NOT NULL DEFAULT 0 ,
`power2`  int(11) NOT NULL DEFAULT 0 ,
`handicap`  int(11) NOT NULL DEFAULT 0 ,
`result1`  int(11) NOT NULL DEFAULT 0 ,
`result2`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `horse_name`
-- ----------------------------
DROP TABLE IF EXISTS `horse_name`;
CREATE TABLE `horse_name` (
`id`  int(11) NOT NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`owner_id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`window`  enum('INVENTORY','EQUIPMENT','SAFEBOX','MALL') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'INVENTORY' ,
`pos`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`count`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`vnum`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`socket0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`socket1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`socket2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`socket3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`socket4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`socket5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`attrtype0`  tinyint(4) NOT NULL DEFAULT 0 ,
`attrvalue0`  smallint(6) NOT NULL DEFAULT 0 ,
`attrtype1`  tinyint(4) NOT NULL DEFAULT 0 ,
`attrvalue1`  smallint(6) NOT NULL DEFAULT 0 ,
`attrtype2`  tinyint(4) NOT NULL DEFAULT 0 ,
`attrvalue2`  smallint(6) NOT NULL DEFAULT 0 ,
`attrtype3`  tinyint(4) NOT NULL DEFAULT 0 ,
`attrvalue3`  smallint(6) NOT NULL DEFAULT 0 ,
`attrtype4`  tinyint(4) NOT NULL DEFAULT 0 ,
`attrvalue4`  smallint(6) NOT NULL DEFAULT 0 ,
`attrtype5`  tinyint(4) NOT NULL DEFAULT 0 ,
`attrvalue5`  smallint(6) NOT NULL DEFAULT 0 ,
`attrtype6`  tinyint(4) NOT NULL DEFAULT 0 ,
`attrvalue6`  smallint(6) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `item_attr`
-- ----------------------------
DROP TABLE IF EXISTS `item_attr`;
CREATE TABLE `item_attr` (
`apply`  enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','NORMAL_HIT_DEFEND_BONUS','SKILL_DEFEND_BONUS','NOUSE1','NOUSE2''NOUSE3','NOUSE4','NOUSE5','NOUSE6','NOUSE7','NOUSE8','NOUSE9','NOUSE10','NOUSE11','NOUSE12','NOUSE13','NOUSE14','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP' ,
`prob`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv1`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv2`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv3`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv4`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv5`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`weapon`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`body`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`wrist`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`foots`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`neck`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`head`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`shield`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`ear`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `item_attr_rare`
-- ----------------------------
DROP TABLE IF EXISTS `item_attr_rare`;
CREATE TABLE `item_attr_rare` (
`apply`  enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','NORMAL_HIT_DEFEND_BONUS','SKILL_DEFEND_BONUS','NOUSE2''NOUSE3','NOUSE4','NOUSE5','NOUSE6','NOUSE7','NOUSE8','NOUSE9','NOUSE10','NOUSE11','NOUSE12','NOUSE13','NOUSE14','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP' ,
`prob`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv1`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv2`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv3`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv4`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lv5`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`weapon`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`body`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`wrist`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`foots`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`neck`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`head`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`shield`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`ear`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `item_award`
-- ----------------------------
DROP TABLE IF EXISTS `item_award`;
CREATE TABLE `item_award` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`pid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`login`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`vnum`  int(6) UNSIGNED NOT NULL DEFAULT 0 ,
`count`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`given_time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`taken_time`  datetime NULL DEFAULT NULL ,
`item_id`  int(11) NULL DEFAULT NULL ,
`why`  varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`socket0`  int(11) NOT NULL DEFAULT 0 ,
`socket1`  int(11) NOT NULL DEFAULT 0 ,
`socket2`  int(11) NOT NULL DEFAULT 0 ,
`mall`  tinyint(1) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `item_proto`
-- ----------------------------
DROP TABLE IF EXISTS `item_proto`;
CREATE TABLE `item_proto` (
`vnum`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varbinary(24) NOT NULL DEFAULT 'Noname' ,
`locale_name`  varbinary(24) NOT NULL DEFAULT 'Noname' ,
`type`  tinyint(2) NOT NULL DEFAULT 0 ,
`subtype`  tinyint(2) NOT NULL DEFAULT 0 ,
`weight`  tinyint(3) NULL DEFAULT 0 ,
`size`  tinyint(3) NULL DEFAULT 0 ,
`antiflag`  int(11) NULL DEFAULT 0 ,
`flag`  int(11) NULL DEFAULT 0 ,
`wearflag`  int(11) NULL DEFAULT 0 ,
`immuneflag`  set('PARA','CURSE','STUN','SLEEP','SLOW','POISON','TERROR') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`gold`  int(11) NULL DEFAULT 0 ,
`shop_buy_price`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`refined_vnum`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`refine_set`  smallint(11) UNSIGNED NOT NULL DEFAULT 0 ,
`refine_set2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`magic_pct`  tinyint(4) NOT NULL DEFAULT 0 ,
`limittype0`  tinyint(4) NULL DEFAULT 0 ,
`limitvalue0`  int(11) NULL DEFAULT 0 ,
`limittype1`  tinyint(4) NULL DEFAULT 0 ,
`limitvalue1`  int(11) NULL DEFAULT 0 ,
`applytype0`  tinyint(4) NULL DEFAULT 0 ,
`applyvalue0`  int(11) NULL DEFAULT 0 ,
`applytype1`  tinyint(4) NULL DEFAULT 0 ,
`applyvalue1`  int(11) NULL DEFAULT 0 ,
`applytype2`  tinyint(4) NULL DEFAULT 0 ,
`applyvalue2`  int(11) NULL DEFAULT 0 ,
`value0`  int(11) NULL DEFAULT 0 ,
`value1`  int(11) NULL DEFAULT 0 ,
`value2`  int(11) NULL DEFAULT 0 ,
`value3`  int(11) NULL DEFAULT 0 ,
`value4`  int(11) NULL DEFAULT 0 ,
`value5`  int(11) NULL DEFAULT 0 ,
`socket0`  tinyint(4) NULL DEFAULT '-1' ,
`socket1`  tinyint(4) NULL DEFAULT '-1' ,
`socket2`  tinyint(4) NULL DEFAULT '-1' ,
`socket3`  tinyint(4) NULL DEFAULT '-1' ,
`socket4`  tinyint(4) NULL DEFAULT '-1' ,
`socket5`  tinyint(4) NULL DEFAULT '-1' ,
`specular`  tinyint(4) NOT NULL DEFAULT 0 ,
`socket_pct`  tinyint(4) NOT NULL DEFAULT 0 ,
`addon_type`  smallint(6) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`vnum`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `land`
-- ----------------------------
DROP TABLE IF EXISTS `land`;
CREATE TABLE `land` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`map_index`  int(11) NOT NULL DEFAULT 0 ,
`x`  int(11) NOT NULL DEFAULT 0 ,
`y`  int(11) NOT NULL DEFAULT 0 ,
`width`  int(11) NOT NULL DEFAULT 0 ,
`height`  int(11) NOT NULL DEFAULT 0 ,
`guild_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guild_level_limit`  tinyint(4) NOT NULL DEFAULT 0 ,
`price`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`enable`  enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NO' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `lotto_list`
-- ----------------------------
DROP TABLE IF EXISTS `lotto_list`;
CREATE TABLE `lotto_list` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`server`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`pid`  int(10) UNSIGNED NULL DEFAULT NULL ,
`time`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `marriage`
-- ----------------------------
DROP TABLE IF EXISTS `marriage`;
CREATE TABLE `marriage` (
`is_married`  tinyint(4) NOT NULL DEFAULT 0 ,
`pid1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`pid2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`love_point`  int(11) UNSIGNED NULL DEFAULT NULL ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`pid1`, `pid2`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `messenger_list`
-- ----------------------------
DROP TABLE IF EXISTS `messenger_list`;
CREATE TABLE `messenger_list` (
`account`  varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`companion`  varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`account`, `companion`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `mob_proto`
-- ----------------------------
DROP TABLE IF EXISTS `mob_proto`;
CREATE TABLE `mob_proto` (
`vnum`  int(11) NOT NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Noname' ,
`locale_name`  varbinary(24) NOT NULL DEFAULT 'Noname                  ' ,
`rank`  tinyint(2) NOT NULL DEFAULT 0 ,
`type`  tinyint(2) NOT NULL DEFAULT 0 ,
`battle_type`  tinyint(1) NOT NULL DEFAULT 0 ,
`level`  smallint(3) NOT NULL DEFAULT 1 ,
`size`  enum('SMALL','MEDIUM','BIG') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'SMALL' ,
`ai_flag`  set('AGGR','NOMOVE','COWARD','NOATTSHINSU','NOATTCHUNJO','NOATTJINNO','ATTMOB','BERSERK','STONESKIN','GODSPEED','DEATHBLOW','REVIVE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`mount_capacity`  tinyint(2) NOT NULL DEFAULT 0 ,
`setRaceFlag`  set('ANIMAL','UNDEAD','DEVIL','HUMAN','ORC','MILGYO','INSECT','FIRE','ICE','DESERT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`setImmuneFlag`  set('STUN','SLOW','FALL','CURSE','POISON','TERROR') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`empire`  tinyint(4) NOT NULL DEFAULT 0 ,
`folder`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`on_click`  tinyint(4) NOT NULL DEFAULT 0 ,
`st`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`dx`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`ht`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`iq`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`damage_min`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`damage_max`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`max_hp`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`regen_cycle`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`regen_percent`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`gold_min`  int(11) NOT NULL DEFAULT 0 ,
`gold_max`  int(11) NOT NULL DEFAULT 0 ,
`exp`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`def`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`attack_speed`  smallint(6) UNSIGNED NOT NULL DEFAULT 100 ,
`move_speed`  smallint(6) UNSIGNED NOT NULL DEFAULT 100 ,
`aggressive_hp_pct`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`aggressive_sight`  smallint(10) UNSIGNED NOT NULL DEFAULT 0 ,
`attack_range`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`drop_item`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resurrection_vnum`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`enchant_curse`  tinyint(4) UNSIGNED NOT NULL DEFAULT 0 ,
`enchant_slow`  tinyint(4) UNSIGNED NOT NULL DEFAULT 0 ,
`enchant_poison`  tinyint(4) UNSIGNED NOT NULL DEFAULT 0 ,
`enchant_stun`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`enchant_critical`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`enchant_penetrate`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`resist_sword`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_twohand`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_dagger`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_bell`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_fan`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_bow`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_fire`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_elect`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_magic`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_wind`  tinyint(4) NOT NULL DEFAULT 0 ,
`resist_poison`  tinyint(4) NOT NULL DEFAULT 0 ,
`dam_multiply`  float NULL DEFAULT NULL ,
`summon`  int(11) NULL DEFAULT NULL ,
`drain_sp`  int(11) NULL DEFAULT NULL ,
`mob_color`  int(10) UNSIGNED NULL DEFAULT NULL ,
`polymorph_item`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`skill_level0`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`skill_vnum0`  int(10) UNSIGNED NULL DEFAULT NULL ,
`skill_level1`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`skill_vnum1`  int(10) UNSIGNED NULL DEFAULT NULL ,
`skill_level2`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`skill_vnum2`  int(10) UNSIGNED NULL DEFAULT NULL ,
`skill_level3`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`skill_vnum3`  int(10) UNSIGNED NULL DEFAULT NULL ,
`skill_level4`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`skill_vnum4`  int(10) UNSIGNED NULL DEFAULT NULL ,
`sp_berserk`  tinyint(4) NOT NULL DEFAULT 0 ,
`sp_stoneskin`  tinyint(4) NOT NULL DEFAULT 0 ,
`sp_godspeed`  tinyint(4) NOT NULL DEFAULT 0 ,
`sp_deathblow`  tinyint(4) NOT NULL DEFAULT 0 ,
`sp_revive`  tinyint(4) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`vnum`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `monarch`
-- ----------------------------
DROP TABLE IF EXISTS `monarch`;
CREATE TABLE `monarch` (
`empire`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`pid`  int(10) UNSIGNED NULL DEFAULT NULL ,
`windate`  datetime NULL DEFAULT NULL ,
`money`  bigint(20) UNSIGNED NULL DEFAULT NULL ,
PRIMARY KEY (`empire`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `monarch_candidacy`
-- ----------------------------
DROP TABLE IF EXISTS `monarch_candidacy`;
CREATE TABLE `monarch_candidacy` (
`pid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`date`  datetime NULL DEFAULT CURRENT_TIMESTAMP ,
`name`  varchar(16) CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL ,
`windate`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`pid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci

;

-- ----------------------------
-- Table structure for `monarch_election`
-- ----------------------------
DROP TABLE IF EXISTS `monarch_election`;
CREATE TABLE `monarch_election` (
`pid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`selectedpid`  int(10) UNSIGNED NULL DEFAULT 0 ,
`electiondata`  datetime NULL DEFAULT CURRENT_TIMESTAMP ,
PRIMARY KEY (`pid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `myshop_pricelist`
-- ----------------------------
DROP TABLE IF EXISTS `myshop_pricelist`;
CREATE TABLE `myshop_pricelist` (
`owner_id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item_vnum`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`price`  int(10) UNSIGNED NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `object`
-- ----------------------------
DROP TABLE IF EXISTS `object`;
CREATE TABLE `object` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`land_id`  int(11) NOT NULL DEFAULT 0 ,
`vnum`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`map_index`  int(11) NOT NULL DEFAULT 0 ,
`x`  int(11) NOT NULL DEFAULT 0 ,
`y`  int(11) NOT NULL DEFAULT 0 ,
`x_rot`  float NOT NULL DEFAULT 0 ,
`y_rot`  float NOT NULL DEFAULT 0 ,
`z_rot`  float NOT NULL DEFAULT 0 ,
`life`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `object_proto`
-- ----------------------------
DROP TABLE IF EXISTS `object_proto`;
CREATE TABLE `object_proto` (
`vnum`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`price`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`materials`  varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`upgrade_vnum`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`upgrade_limit_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`life`  int(11) NOT NULL DEFAULT 0 ,
`reg_1`  int(11) NOT NULL DEFAULT 0 ,
`reg_2`  int(11) NOT NULL DEFAULT 0 ,
`reg_3`  int(11) NOT NULL DEFAULT 0 ,
`reg_4`  int(11) NOT NULL DEFAULT 0 ,
`npc`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`group_vnum`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dependent_group`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`vnum`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `pcbang_ip`
-- ----------------------------
DROP TABLE IF EXISTS `pcbang_ip`;
CREATE TABLE `pcbang_ip` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`pcbang_id`  int(11) NOT NULL DEFAULT 0 ,
`ip`  varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '000.000.000.000' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `player`
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`account_id`  int(11) NOT NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME' ,
`job`  tinyint(2) UNSIGNED NOT NULL DEFAULT 0 ,
`voice`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`dir`  tinyint(2) NOT NULL DEFAULT 0 ,
`x`  int(11) NOT NULL DEFAULT 0 ,
`y`  int(11) NOT NULL DEFAULT 0 ,
`z`  int(11) NOT NULL DEFAULT 0 ,
`map_index`  int(11) NOT NULL DEFAULT 0 ,
`exit_x`  int(11) NOT NULL DEFAULT 0 ,
`exit_y`  int(11) NOT NULL DEFAULT 0 ,
`exit_map_index`  int(11) NOT NULL DEFAULT 0 ,
`hp`  smallint(4) NOT NULL DEFAULT 0 ,
`mp`  smallint(4) NOT NULL DEFAULT 0 ,
`stamina`  smallint(6) NOT NULL DEFAULT 0 ,
`random_hp`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`random_sp`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`playtime`  int(11) NOT NULL DEFAULT 0 ,
`level`  tinyint(2) UNSIGNED NOT NULL DEFAULT 1 ,
`level_step`  tinyint(1) NOT NULL DEFAULT 0 ,
`st`  smallint(3) NOT NULL DEFAULT 0 ,
`ht`  smallint(3) NOT NULL DEFAULT 0 ,
`dx`  smallint(3) NOT NULL DEFAULT 0 ,
`iq`  smallint(3) NOT NULL DEFAULT 0 ,
`exp`  int(11) NOT NULL DEFAULT 0 ,
`gold`  int(11) NOT NULL DEFAULT 0 ,
`stat_point`  smallint(3) NOT NULL DEFAULT 0 ,
`skill_point`  smallint(3) NOT NULL DEFAULT 0 ,
`quickslot`  tinyblob NULL ,
`ip`  varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0.0.0.0' ,
`part_main`  mediumint(6) NOT NULL DEFAULT 0 ,
`part_base`  tinyint(4) NOT NULL DEFAULT 0 ,
`part_hair`  mediumint(4) NOT NULL DEFAULT 0 ,
`skill_group`  tinyint(4) NOT NULL DEFAULT 0 ,
`skill_level`  blob NULL ,
`alignment`  int(11) NOT NULL DEFAULT 0 ,
`last_play`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`change_name`  tinyint(1) NOT NULL DEFAULT 0 ,
`mobile`  varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`sub_skill_point`  smallint(3) NOT NULL DEFAULT 0 ,
`stat_reset_count`  tinyint(4) NOT NULL DEFAULT 0 ,
`horse_hp`  smallint(4) NOT NULL DEFAULT 0 ,
`horse_stamina`  smallint(4) NOT NULL DEFAULT 0 ,
`horse_level`  tinyint(2) UNSIGNED NOT NULL DEFAULT 0 ,
`horse_hp_droptime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`horse_riding`  tinyint(1) NOT NULL DEFAULT 0 ,
`horse_skill_point`  smallint(3) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=100

;

-- ----------------------------
-- Table structure for `player_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `player_deleted`;
CREATE TABLE `player_deleted` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`account_id`  int(11) NOT NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME' ,
`job`  tinyint(2) UNSIGNED NOT NULL DEFAULT 0 ,
`voice`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`dir`  tinyint(2) NOT NULL DEFAULT 0 ,
`x`  int(11) NOT NULL DEFAULT 0 ,
`y`  int(11) NOT NULL DEFAULT 0 ,
`z`  int(11) NOT NULL DEFAULT 0 ,
`map_index`  int(11) NOT NULL DEFAULT 0 ,
`exit_x`  int(11) NOT NULL DEFAULT 0 ,
`exit_y`  int(11) NOT NULL DEFAULT 0 ,
`exit_map_index`  int(11) NOT NULL DEFAULT 0 ,
`hp`  smallint(4) NOT NULL DEFAULT 0 ,
`mp`  smallint(4) NOT NULL DEFAULT 0 ,
`stamina`  smallint(6) NOT NULL DEFAULT 0 ,
`random_hp`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`random_sp`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`playtime`  int(11) NOT NULL DEFAULT 0 ,
`level`  tinyint(2) UNSIGNED NOT NULL DEFAULT 1 ,
`level_step`  tinyint(1) NOT NULL DEFAULT 0 ,
`st`  smallint(3) NOT NULL DEFAULT 0 ,
`ht`  smallint(3) NOT NULL DEFAULT 0 ,
`dx`  smallint(3) NOT NULL DEFAULT 0 ,
`iq`  smallint(3) NOT NULL DEFAULT 0 ,
`exp`  int(11) NOT NULL DEFAULT 0 ,
`gold`  int(11) NOT NULL DEFAULT 0 ,
`stat_point`  smallint(3) NOT NULL DEFAULT 0 ,
`skill_point`  smallint(3) NOT NULL DEFAULT 0 ,
`quickslot`  tinyblob NULL ,
`ip`  varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0.0.0.0' ,
`part_main`  mediumint(6) NOT NULL DEFAULT 0 ,
`part_base`  tinyint(4) NOT NULL DEFAULT 0 ,
`part_hair`  mediumint(4) NOT NULL DEFAULT 0 ,
`skill_group`  tinyint(4) NOT NULL DEFAULT 0 ,
`skill_level`  blob NULL ,
`alignment`  int(11) NOT NULL DEFAULT 0 ,
`last_play`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`change_name`  tinyint(1) NOT NULL DEFAULT 0 ,
`mobile`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`sub_skill_point`  smallint(3) NOT NULL DEFAULT 0 ,
`stat_reset_count`  tinyint(4) NOT NULL DEFAULT 0 ,
`horse_hp`  smallint(4) NOT NULL DEFAULT 0 ,
`horse_stamina`  smallint(4) NOT NULL DEFAULT 0 ,
`horse_level`  tinyint(2) UNSIGNED NOT NULL DEFAULT 0 ,
`horse_hp_droptime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`horse_riding`  tinyint(1) NOT NULL DEFAULT 0 ,
`horse_skill_point`  smallint(3) NOT NULL DEFAULT 0 ,
`bank_value`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `player_index`
-- ----------------------------
DROP TABLE IF EXISTS `player_index`;
CREATE TABLE `player_index` (
`id`  int(11) NOT NULL DEFAULT 0 ,
`pid1`  int(11) NOT NULL DEFAULT 0 ,
`pid2`  int(11) NOT NULL DEFAULT 0 ,
`pid3`  int(11) NOT NULL DEFAULT 0 ,
`pid4`  int(11) NOT NULL DEFAULT 0 ,
`empire`  tinyint(4) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `quest`
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest` (
`dwPID`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`szName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szState`  varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lValue`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`dwPID`, `szName`, `szState`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `refine_proto`
-- ----------------------------
DROP TABLE IF EXISTS `refine_proto`;
CREATE TABLE `refine_proto` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`vnum0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`count0`  smallint(6) NOT NULL DEFAULT 0 ,
`vnum1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`count1`  smallint(6) NOT NULL DEFAULT 0 ,
`vnum2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`count2`  smallint(6) NOT NULL DEFAULT 0 ,
`vnum3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`count3`  smallint(6) NOT NULL DEFAULT 0 ,
`vnum4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`count4`  smallint(6) NOT NULL DEFAULT 0 ,
`cost`  int(11) NOT NULL DEFAULT 0 ,
`src_vnum`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`result_vnum`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`prob`  smallint(6) NOT NULL DEFAULT 100 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `safebox`
-- ----------------------------
DROP TABLE IF EXISTS `safebox`;
CREATE TABLE `safebox` (
`account_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`size`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`password`  varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`gold`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`account_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
`vnum`  int(11) NOT NULL DEFAULT 0 ,
`name`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Noname' ,
`npc_vnum`  mediumint(6) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`vnum`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `shop_item`
-- ----------------------------
DROP TABLE IF EXISTS `shop_item`;
CREATE TABLE `shop_item` (
`shop_vnum`  int(11) NOT NULL DEFAULT 0 ,
`item_vnum`  int(11) NOT NULL DEFAULT 0 ,
`count`  tinyint(4) UNSIGNED NOT NULL DEFAULT 1 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `skill_proto`
-- ----------------------------
DROP TABLE IF EXISTS `skill_proto`;
CREATE TABLE `skill_proto` (
`dwVnum`  int(11) NOT NULL DEFAULT 0 ,
`szName`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`bType`  tinyint(4) NOT NULL DEFAULT 0 ,
`bLevelStep`  tinyint(4) NOT NULL DEFAULT 0 ,
`bMaxLevel`  tinyint(4) NOT NULL DEFAULT 0 ,
`bLevelLimit`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`szPointOn`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' ,
`szPointPoly`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szSPCostPoly`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szDurationPoly`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szDurationSPCostPoly`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szCooldownPoly`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szMasterBonusPoly`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szAttackGradePoly`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`setFlag`  set('ATTACK','USE_MELEE_DAMAGE','COMPUTE_ATTGRADE','SELFONLY','USE_MAGIC_DAMAGE','USE_HP_AS_COST','COMPUTE_MAGIC_DAMAGE','SPLASH','GIVE_PENALTY','USE_ARROW_DAMAGE','PENETRATE','IGNORE_TARGET_RATING','ATTACK_SLOW','ATTACK_STUN','HP_ABSORB','SP_ABSORB','ATTACK_FIRE_CONT','REMOVE_BAD_AFFECT','REMOVE_GOOD_AFFECT','CRUSH','ATTACK_POISON','TOGGLE','DISABLE_BY_POINT_UP','CRUSH_LONG') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`setAffectFlag`  enum('YMIR','INVISIBILITY','SPAWN','POISON','SLOW','STUN','DUNGEON_READY','FORCE_VISIBLE','BUILDING_CONSTRUCTION_SMALL','BUILDING_CONSTRUCTION_LARGE','BUILDING_UPGRADE','MOV_SPEED_POTION','ATT_SPEED_POTION','FISH_MIDE','JEONGWIHON','GEOMGYEONG','CHEONGEUN','GYEONGGONG','EUNHYUNG','GWIGUM','TERROR','JUMAGAP','HOSIN','BOHO','KWAESOK','MANASHIELD','MUYEONG','REVIVE_INVISIBLE','FIRE','GICHEON','','JEUNGRYEOK') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'YMIR' ,
`szPointOn2`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONE' ,
`szPointPoly2`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szDurationPoly2`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`setAffectFlag2`  enum('YMIR','INVISIBILITY','SPAWN','POISON','SLOW','STUN','DUNGEON_READY','FORCE_VISIBLE','BUILDING_CONSTRUCTION_SMALL','BUILDING_CONSTRUCTION_LARGE','BUILDING_UPGRADE','MOV_SPEED_POTION','ATT_SPEED_POTION','FISH_MIDE','JEONGWIHON','GEOMGYEONG','CHEONGEUN','GYEONGGONG','EUNHYUNG','GWIGUM','TERROR','JUMAGAP','HOSIN','BOHO','KWAESOK','','MANASHIELD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'YMIR' ,
`szPointOn3`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONE' ,
`szPointPoly3`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szDurationPoly3`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`szGrandMasterAddSPCostPoly`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`prerequisiteSkillVnum`  int(11) NOT NULL DEFAULT 0 ,
`prerequisiteSkillLevel`  int(11) NOT NULL DEFAULT 0 ,
`eSkillType`  enum('NORMAL','MELEE','RANGE','MAGIC') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NORMAL' ,
`iMaxHit`  tinyint(4) NOT NULL DEFAULT 0 ,
`szSplashAroundDamageAdjustPoly`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1' ,
`dwTargetRange`  int(11) NOT NULL DEFAULT 1000 ,
`dwSplashRange`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`dwVnum`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `sms_pool`
-- ----------------------------
DROP TABLE IF EXISTS `sms_pool`;
CREATE TABLE `sms_pool` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`server`  int(11) NOT NULL DEFAULT 0 ,
`sender`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`receiver`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`mobile`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`sent`  enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N' ,
`msg`  varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `string`
-- ----------------------------
DROP TABLE IF EXISTS `string`;
CREATE TABLE `string` (
`name`  varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`text`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
PRIMARY KEY (`name`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Indexes structure for table guild_comment
-- ----------------------------
CREATE INDEX `aaa` ON `guild_comment`(`notice`, `id`, `guild_id`) USING BTREE ;
CREATE INDEX `guild_id` ON `guild_comment`(`guild_id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `guild_comment`
-- ----------------------------
ALTER TABLE `guild_comment` AUTO_INCREMENT=2120;

-- ----------------------------
-- Indexes structure for table guild_member
-- ----------------------------
CREATE UNIQUE INDEX `pid` ON `guild_member`(`pid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `guild_war_reservation`
-- ----------------------------
ALTER TABLE `guild_war_reservation` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table item
-- ----------------------------
CREATE INDEX `owner_id_idx` ON `item`(`owner_id`) USING BTREE ;
CREATE INDEX `item_vnum_index` ON `item`(`vnum`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `item`
-- ----------------------------
ALTER TABLE `item` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table item_award
-- ----------------------------
CREATE INDEX `pid_idx` ON `item_award`(`pid`) USING BTREE ;
CREATE INDEX `given_time_idx` ON `item_award`(`given_time`) USING BTREE ;
CREATE INDEX `taken_time_idx` ON `item_award`(`taken_time`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `item_award`
-- ----------------------------
ALTER TABLE `item_award` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `land`
-- ----------------------------
ALTER TABLE `land` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `lotto_list`
-- ----------------------------
ALTER TABLE `lotto_list` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table myshop_pricelist
-- ----------------------------
CREATE UNIQUE INDEX `list_id` ON `myshop_pricelist`(`owner_id`, `item_vnum`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `object`
-- ----------------------------
ALTER TABLE `object` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table pcbang_ip
-- ----------------------------
CREATE UNIQUE INDEX `ip` ON `pcbang_ip`(`ip`) USING BTREE ;
CREATE INDEX `pcbang_id` ON `pcbang_ip`(`pcbang_id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `pcbang_ip`
-- ----------------------------
ALTER TABLE `pcbang_ip` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table player
-- ----------------------------
CREATE INDEX `account_id_idx` ON `player`(`account_id`) USING BTREE ;
CREATE INDEX `name_idx` ON `player`(`name`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `player`
-- ----------------------------
ALTER TABLE `player` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table player_deleted
-- ----------------------------
CREATE INDEX `account_id_idx` ON `player_deleted`(`account_id`) USING BTREE ;
CREATE INDEX `name_idx` ON `player_deleted`(`name`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `player_deleted`
-- ----------------------------
ALTER TABLE `player_deleted` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table player_index
-- ----------------------------
CREATE INDEX `pid1_key` ON `player_index`(`pid1`) USING BTREE ;
CREATE INDEX `pid2_key` ON `player_index`(`pid2`) USING BTREE ;
CREATE INDEX `pid3_key` ON `player_index`(`pid3`) USING BTREE ;
CREATE INDEX `pid4_key` ON `player_index`(`pid4`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table quest
-- ----------------------------
CREATE INDEX `pid_idx` ON `quest`(`dwPID`) USING BTREE ;
CREATE INDEX `name_idx` ON `quest`(`szName`) USING BTREE ;
CREATE INDEX `state_idx` ON `quest`(`szState`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `refine_proto`
-- ----------------------------
ALTER TABLE `refine_proto` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table shop_item
-- ----------------------------
CREATE UNIQUE INDEX `vnum_unique` ON `shop_item`(`shop_vnum`, `item_vnum`, `count`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table sms_pool
-- ----------------------------
CREATE INDEX `sent_idx` ON `sms_pool`(`sent`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `sms_pool`
-- ----------------------------
ALTER TABLE `sms_pool` AUTO_INCREMENT=1;
