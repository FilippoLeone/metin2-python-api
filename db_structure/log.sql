
-- ----------------------------
-- Table structure for `bootlog`
-- ----------------------------
DROP TABLE IF EXISTS `bootlog`;
CREATE TABLE `bootlog` (
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`hostname`  char(128) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT 'UNKNOWN' ,
`channel`  tinyint(1) NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `change_name`
-- ----------------------------
DROP TABLE IF EXISTS `change_name`;
CREATE TABLE `change_name` (
`pid`  int(11) NULL DEFAULT NULL ,
`old_name`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`new_name`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`time`  datetime NULL DEFAULT NULL ,
`ip`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `command_log`
-- ----------------------------
DROP TABLE IF EXISTS `command_log`;
CREATE TABLE `command_log` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`userid`  int(11) NOT NULL DEFAULT 0 ,
`server`  int(11) NOT NULL DEFAULT 0 ,
`ip`  varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`port`  int(6) NOT NULL DEFAULT 0 ,
`username`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`command`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`date`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `cube`
-- ----------------------------
DROP TABLE IF EXISTS `cube`;
CREATE TABLE `cube` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`pid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`x`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`y`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item_vnum`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item_uid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item_count`  int(5) UNSIGNED NOT NULL DEFAULT 0 ,
`success`  tinyint(1) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
AUTO_INCREMENT=1
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `dragon_slay_log`
-- ----------------------------
DROP TABLE IF EXISTS `dragon_slay_log`;
CREATE TABLE `dragon_slay_log` (
`guild_id`  int(11) UNSIGNED NOT NULL ,
`vnum`  int(11) UNSIGNED NOT NULL ,
`start_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`end_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `fish_log`
-- ----------------------------
DROP TABLE IF EXISTS `fish_log`;
CREATE TABLE `fish_log` (
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`player_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`map_index`  tinyint(4) NOT NULL DEFAULT 0 ,
`fish_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`fishing_level`  int(11) NOT NULL DEFAULT 0 ,
`waiting_time`  int(11) NOT NULL DEFAULT 0 ,
`success`  tinyint(4) NOT NULL DEFAULT 0 ,
`size`  smallint(6) NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `goldlog`
-- ----------------------------
DROP TABLE IF EXISTS `goldlog`;
CREATE TABLE `goldlog` (
`date`  varchar(10) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '0000-00-00' ,
`time`  varchar(8) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '00:00:00' ,
`pid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`what`  int(11) NOT NULL DEFAULT 0 ,
`how`  set('BUY','SELL','SHOP_SELL','SHOP_BUY','EXCHANGE_TAKE','EXCHANGE_GIVE','QUEST') CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL ,
`hint`  varchar(50) CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `hack_crc_log`
-- ----------------------------
DROP TABLE IF EXISTS `hack_crc_log`;
CREATE TABLE `hack_crc_log` (
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`login`  char(16) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`name`  char(24) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`ip`  char(15) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`server`  char(100) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`why`  char(255) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`crc`  int(11) NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `hack_log`
-- ----------------------------
DROP TABLE IF EXISTS `hack_log`;
CREATE TABLE `hack_log` (
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`login`  char(16) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`name`  char(24) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`ip`  char(15) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`server`  char(100) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`why`  char(255) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `hackshield_log`
-- ----------------------------
DROP TABLE IF EXISTS `hackshield_log`;
CREATE TABLE `hackshield_log` (
`pid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`login`  varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`account_id`  int(11) UNSIGNED NOT NULL ,
`name`  varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`reason`  varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `levellog`
-- ----------------------------
DROP TABLE IF EXISTS `levellog`;
CREATE TABLE `levellog` (
`name`  char(24) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`level`  tinyint(4) NOT NULL DEFAULT 0 ,
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`playtime`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`name`, `level`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
`type`  enum('ITEM','CHARACTER') CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT 'ITEM' ,
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`who`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`x`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`y`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`what`  int(11) NOT NULL DEFAULT 0 ,
`how`  varchar(50) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`hint`  varchar(70) CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL ,
`ip`  varchar(20) CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL ,
`vnum`  int(11) NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog` (
`type`  enum('LOGIN','LOGOUT') CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL ,
`time`  datetime NULL DEFAULT NULL ,
`channel`  tinyint(4) NULL DEFAULT NULL ,
`account_id`  int(10) UNSIGNED NULL DEFAULT NULL ,
`pid`  int(10) UNSIGNED NULL DEFAULT NULL ,
`level`  smallint(6) NULL DEFAULT NULL ,
`job`  tinyint(4) NULL DEFAULT NULL ,
`playtime`  int(10) UNSIGNED NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `money_log`
-- ----------------------------
DROP TABLE IF EXISTS `money_log`;
CREATE TABLE `money_log` (
`time`  datetime NULL DEFAULT NULL ,
`type`  enum('MONSTER','SHOP','REFINE','QUEST','GUILD','MISC','KILL','DROP') CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL ,
`vnum`  int(11) NOT NULL DEFAULT 0 ,
`gold`  int(11) NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `pcbang_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `pcbang_loginlog`;
CREATE TABLE `pcbang_loginlog` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`time`  datetime NULL DEFAULT NULL ,
`pcbang_id`  int(11) NOT NULL DEFAULT 0 ,
`ip`  varchar(15) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '000.000.000.000' ,
`pid`  int(10) UNSIGNED NULL DEFAULT NULL ,
`play_time`  int(10) UNSIGNED NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
AUTO_INCREMENT=1
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `playercount`
-- ----------------------------
DROP TABLE IF EXISTS `playercount`;
CREATE TABLE `playercount` (
`date`  datetime NULL DEFAULT NULL ,
`count_red`  int(11) NULL DEFAULT NULL ,
`count_yellow`  int(11) NULL DEFAULT NULL ,
`count_blue`  int(11) NULL DEFAULT NULL ,
`count_total`  int(11) NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `quest_reward_log`
-- ----------------------------
DROP TABLE IF EXISTS `quest_reward_log`;
CREATE TABLE `quest_reward_log` (
`quest_name`  varchar(32) CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL ,
`player_id`  int(10) UNSIGNED NULL DEFAULT NULL ,
`player_level`  tinyint(4) NULL DEFAULT NULL ,
`reward_type`  enum('EXP','ITEM') CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL ,
`reward_value1`  int(10) UNSIGNED NULL DEFAULT NULL ,
`reward_value2`  int(11) NULL DEFAULT NULL ,
`time`  datetime NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `refinelog`
-- ----------------------------
DROP TABLE IF EXISTS `refinelog`;
CREATE TABLE `refinelog` (
`pid`  int(10) UNSIGNED NULL DEFAULT NULL ,
`item_name`  varchar(24) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`item_id`  int(11) NOT NULL DEFAULT 0 ,
`step`  varchar(50) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL DEFAULT '' ,
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`is_success`  tinyint(1) NOT NULL DEFAULT 0 ,
`setType`  set('SOCKET','POWER','ROD','GUILD','SCROLL','HYUNIRON','GOD_SCROLL','MUSIN_SCROLL') CHARACTER SET big5 COLLATE big5_chinese_ci NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `shout_log`
-- ----------------------------
DROP TABLE IF EXISTS `shout_log`;
CREATE TABLE `shout_log` (
`time`  datetime NULL DEFAULT CURRENT_TIMESTAMP ,
`channel`  tinyint(4) NULL DEFAULT NULL ,
`empire`  tinyint(4) NULL DEFAULT NULL ,
`shout`  varchar(350) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=big5 COLLATE=big5_chinese_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `speed_hack`
-- ----------------------------
DROP TABLE IF EXISTS `speed_hack`;
CREATE TABLE `speed_hack` (
`pid`  int(11) NULL DEFAULT NULL ,
`time`  datetime NULL DEFAULT NULL ,
`x`  int(11) NULL DEFAULT NULL ,
`y`  int(11) NULL DEFAULT NULL ,
`hack_count`  varchar(20) CHARACTER SET big5 COLLATE big5_bin NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Auto increment value for `command_log`
-- ----------------------------
ALTER TABLE `command_log` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table cube
-- ----------------------------
CREATE INDEX `pid` ON `cube`(`pid`) USING BTREE ;
CREATE INDEX `item_vnum` ON `cube`(`item_vnum`) USING BTREE ;
CREATE INDEX `item_uid` ON `cube`(`item_uid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `cube`
-- ----------------------------
ALTER TABLE `cube` AUTO_INCREMENT=0;

-- ----------------------------
-- Indexes structure for table goldlog
-- ----------------------------
CREATE INDEX `date_idx` ON `goldlog`(`date`) USING BTREE ;
CREATE INDEX `pid_idx` ON `goldlog`(`pid`) USING BTREE ;
CREATE INDEX `what_idx` ON `goldlog`(`what`) USING BTREE ;
CREATE INDEX `how_idx` ON `goldlog`(`how`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table log
-- ----------------------------
CREATE INDEX `who_idx` ON `log`(`who`) USING BTREE ;
CREATE INDEX `what_idx` ON `log`(`what`) USING BTREE ;
CREATE INDEX `how_idx` ON `log`(`how`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table loginlog
-- ----------------------------
CREATE INDEX `pid` ON `loginlog`(`pid`, `type`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table money_log
-- ----------------------------
CREATE INDEX `type` ON `money_log`(`type`, `vnum`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table pcbang_loginlog
-- ----------------------------
CREATE INDEX `pid` ON `pcbang_loginlog`(`pid`) USING BTREE ;
CREATE INDEX `pcbang_id` ON `pcbang_loginlog`(`pcbang_id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `pcbang_loginlog`
-- ----------------------------
ALTER TABLE `pcbang_loginlog` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table quest_reward_log
-- ----------------------------
CREATE INDEX `player_id` ON `quest_reward_log`(`player_id`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table shout_log
-- ----------------------------
CREATE INDEX `time_idx` ON `shout_log`(`time`) USING BTREE ;
