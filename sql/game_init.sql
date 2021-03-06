DROP TABLE IF EXISTS `gRole`;
CREATE TABLE `gRole` (
  `roleID` varchar(100) NOT NULL COMMENT '玩家ID也是设备ID字符串类型',
  `roleName` varchar(100) NOT NULL COMMENT '玩家名字',
  `money` bigint(50) unsigned DEFAULT 0 COMMENT '金币',
  `gold` bigint(10) unsigned DEFAULT 0 COMMENT '砖石',
  `fishList` blob COMMENT '鱼列表',
  `loginDays` TINYINT(2) unsigned DEFAULT 0 COMMENT '连续登陆天数',
  `unlockFishCfgID` int(10) unsigned DEFAULT 0 COMMENT '解锁的鱼的配置ID',
  `fishBuyList` blob COMMENT '玩家购买鱼的情况',
  `loginTimestamp` int(10) unsigned DEFAULT 0 COMMENT '登陆时间戳',
  `offlineTimestamp` int(10) unsigned DEFAULT 0 COMMENT '离线时间戳',
  `lastRewardLoginTimestamp` int(10) unsigned DEFAULT 0 COMMENT '上次领取登陆奖励的时间戳',
  `speedLoginTimestamp` int(10) unsigned DEFAULT 0 COMMENT '加速结束的时间戳',
  `incFishID` bigint(11) unsigned DEFAULT 0 COMMENT '自增的鱼唯一ID，自己计数',
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;