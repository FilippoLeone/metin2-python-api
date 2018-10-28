-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`login`  varchar(30) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' ,
`password`  varchar(45) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' ,
`social_id`  varchar(13) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' ,
`email`  varchar(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' ,
`create_time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
`is_testor`  tinyint(1) NOT NULL DEFAULT 0 ,
`status`  varchar(8) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT 'OK' ,
`securitycode`  varchar(192) CHARACTER SET ascii COLLATE ascii_general_ci NULL DEFAULT '' ,
`newsletter`  tinyint(1) NULL DEFAULT 0 ,
`empire`  tinyint(4) NOT NULL DEFAULT 0 ,
`name_checked`  tinyint(1) NOT NULL DEFAULT 0 ,
`availDt`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`mileage`  int(11) NOT NULL DEFAULT 0 ,
`cash`  int(11) NOT NULL DEFAULT 0 ,
`gold_expire`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`silver_expire`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`safebox_expire`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`autoloot_expire`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`fish_mind_expire`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`marriage_fast_expire`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`money_drop_rate_expire`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`total_cash`  int(11) NOT NULL DEFAULT 0 ,
`total_mileage`  int(11) NOT NULL DEFAULT 0 ,
`channel_company`  varchar(30) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' ,
`ip`  varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=ascii COLLATE=ascii_general_ci
AUTO_INCREMENT=1
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0

;

-- ----------------------------
-- Table structure for `iptocountry`
-- ----------------------------
DROP TABLE IF EXISTS `iptocountry`;
CREATE TABLE `iptocountry` (
`IP_FROM`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`IP_TO`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`COUNTRY_NAME`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
ROW_FORMAT=Compact

;

-- ----------------------------
-- Table structure for `mall_log`
-- ----------------------------
DROP TABLE IF EXISTS `mall_log`;
CREATE TABLE `mall_log` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`tid`  varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`login`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`product_id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`price`  int(7) UNSIGNED NOT NULL DEFAULT 0 ,
`buy_type`  enum('SELF','GIVE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'SELF' ,
`cash_type`  enum('CASH','MILEAGE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'CASH' ,
`server`  smallint(3) NOT NULL DEFAULT 0 ,
`insert_login`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`player`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`time`  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`ip`  varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '000.000.000.000' ,
`company`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YMIR' ,
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
-- Table structure for `pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `pay_log`;
CREATE TABLE `pay_log` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`account_id`  int(11) NULL DEFAULT NULL ,
`cash`  int(11) NULL DEFAULT NULL ,
`money`  float(11,5) NULL DEFAULT NULL ,
`currency`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`time`  datetime NULL DEFAULT NULL ,
`ip`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
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
-- Indexes structure for table account
-- ----------------------------
CREATE UNIQUE INDEX `login` ON `account`(`login`) USING BTREE ;
CREATE INDEX `social_id` ON `account`(`social_id`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table mall_log
-- ----------------------------
CREATE INDEX `login` ON `mall_log`(`login`) USING BTREE ;
CREATE INDEX `product_id` ON `mall_log`(`product_id`) USING BTREE ;
CREATE INDEX `company` ON `mall_log`(`company`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `mall_log`
-- ----------------------------
ALTER TABLE `mall_log` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `pay_log`
-- ----------------------------
ALTER TABLE `pay_log` AUTO_INCREMENT=1;
