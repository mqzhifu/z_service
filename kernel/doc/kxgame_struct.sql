-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 10.10.7.60    Database: kxgame
-- ------------------------------------------------------
-- Server version	5.5.25a-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_log`
--

DROP TABLE IF EXISTS `access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `IP` char(15) DEFAULT NULL COMMENT '登陆IP地址',
  `long` varchar(50) DEFAULT NULL COMMENT '经度',
  `lat` varchar(50) DEFAULT NULL COMMENT '纬度',
  `area` varchar(255) DEFAULT NULL COMMENT '地区信息',
  `province` varchar(45) DEFAULT NULL COMMENT '省份名称',
  `city` varchar(45) DEFAULT NULL COMMENT '城市名称',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别0未知1男2女',
  `ctrl` varchar(50) DEFAULT NULL,
  `ac` varchar(50) DEFAULT NULL,
  `request` text COMMENT '请求参数',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  `code` int(11) NOT NULL COMMENT 'api返回状态码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_ctrl`
--

DROP TABLE IF EXISTS `ad_ctrl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_ctrl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1：游戏广告控制，2：APP广告控制',
  `ad_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '广告类型（1：全屏视频，2：激励视频，3：Banner，4：开屏）',
  `game_id` int(11) DEFAULT '0' COMMENT '游戏ID，默认0代表所有（type=1有效）',
  `ad_id` int(11) DEFAULT '0' COMMENT '广告ID，默认0代表（某游戏/APP下）所有',
  `ctrl_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '控制类型（1：频次控制，2：开关控制）',
  `state` tinyint(1) DEFAULT '0' COMMENT '广告开关（1开2关）',
  `frequency_type` tinyint(1) DEFAULT '0' COMMENT '频次控制策略类型（1：展示间隔，2：设定时间段内展示次数）（ctrl_type=1有效）',
  `interval` int(11) DEFAULT '0' COMMENT '展示间隔（秒）',
  `times` int(11) DEFAULT '0' COMMENT '展示次数',
  `period` int(11) DEFAULT '0' COMMENT '设定时间段（小时）',
  `user_type` tinyint(1) DEFAULT '0' COMMENT '适用用户（0：默认所有，1：新用户，2：老用户）',
  `time_ctrl_type` tinyint(1) DEFAULT '0' COMMENT '时间控制类型（1：永久有效，2：设定起止时间有效）',
  `from` int(11) DEFAULT NULL COMMENT '开始时间',
  `to` int(11) DEFAULT NULL COMMENT '结束时间',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告云控';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_cut_percent_byday`
--

DROP TABLE IF EXISTS `ad_cut_percent_byday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_cut_percent_byday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL COMMENT '游戏id',
  `click_cut` decimal(10,2) DEFAULT NULL COMMENT '削减百分比',
  `cost_cut` decimal(10,2) DEFAULT NULL COMMENT '暗扣百分比',
  `show_cut` decimal(10,2) DEFAULT NULL COMMENT '削减百分比',
  `stat_datetime` date DEFAULT NULL COMMENT '本条数据时间维度',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_log`
--

DROP TABLE IF EXISTS `ad_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `e_time` int(11) DEFAULT NULL,
  `reward_type` int(11) DEFAULT NULL,
  `reward_gold` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户看广告日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_map`
--

DROP TABLE IF EXISTS `ad_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inner_ad_id` int(11) NOT NULL DEFAULT '0' COMMENT '内部广告id',
  `system` int(11) NOT NULL DEFAULT '0' COMMENT '系统',
  `advertiser` int(11) NOT NULL DEFAULT '0' COMMENT '广告提供商',
  `channel` int(11) NOT NULL DEFAULT '0' COMMENT '渠道',
  `outer_ad_id` varchar(255) DEFAULT NULL COMMENT '外部广告id',
  `a_time` int(11) NOT NULL DEFAULT '0',
  `u_time` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT '0' COMMENT '排序（降序）',
  `status` tinyint(1) DEFAULT '1' COMMENT '广告单元开关（1开2关）',
  PRIMARY KEY (`id`),
  KEY `inner_ad_id` (`inner_ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告位关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_uid` int(11) DEFAULT NULL COMMENT '管理员ID',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `cate` varchar(50) DEFAULT NULL COMMENT '目录',
  `sub` varchar(50) DEFAULT NULL COMMENT '子目录',
  `ctrl` varchar(50) DEFAULT NULL,
  `ac` varchar(50) DEFAULT NULL,
  `request` text COMMENT '请求参数',
  `return` text COMMENT '响应内容',
  `ip` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `ps` char(32) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertise`
--

DROP TABLE IF EXISTS `advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '描述内容',
  `url` varchar(255) DEFAULT NULL COMMENT '连接跳转地址',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `pv` int(11) DEFAULT NULL COMMENT '点击率',
  `type` tinyint(1) DEFAULT NULL COMMENT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `api_config`
--

DROP TABLE IF EXISTS `api_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '接口名称',
  `ac` varchar(50) DEFAULT NULL COMMENT '方法名',
  `ctrl` varchar(50) DEFAULT NULL COMMENT '控制器',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `status` int(8) DEFAULT '1' COMMENT '1、未检测；0、无效；2、通过；3、配置有误',
  `is_login` tinyint(1) DEFAULT NULL COMMENT '1需要登陆2不需要登陆',
  `module` varbinary(50) DEFAULT NULL COMMENT '模块',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='api接口方法';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `api_para`
--

DROP TABLE IF EXISTS `api_para`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_para` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_config_id` int(11) DEFAULT NULL COMMENT 'api-id',
  `name` varchar(50) DEFAULT NULL COMMENT '参数名',
  `is_must` tinyint(1) DEFAULT NULL COMMENT '1必填2选填',
  `type` varchar(50) DEFAULT NULL COMMENT '参数类型',
  `a_time` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='API接口参数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_ad_map`
--

DROP TABLE IF EXISTS `app_ad_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_ad_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inner_ad_id` int(11) NOT NULL DEFAULT '0' COMMENT '内部广告id',
  `system` int(11) NOT NULL DEFAULT '0' COMMENT '系统',
  `advertiser` int(11) NOT NULL DEFAULT '0' COMMENT '广告提供商',
  `channel` int(11) NOT NULL DEFAULT '0' COMMENT '渠道',
  `outer_ad_id` varchar(255) DEFAULT NULL COMMENT '外部广告id',
  `sort` int(11) DEFAULT '0' COMMENT '排序（降序）',
  `status` tinyint(1) DEFAULT '1' COMMENT '广告单元开关（1开2关）',
  PRIMARY KEY (`id`),
  KEY `inner_ad_id` (`inner_ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='app广告位关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_advertise`
--

DROP TABLE IF EXISTS `app_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL DEFAULT '' COMMENT '广告名称',
  `a_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `u_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1审核 2暂定（未开启） 3有效（开启）4 删除',
  `advertise_type` tinyint(1) DEFAULT '0' COMMENT '广告位类型（1全屏视频，2激励视频，3Banner，4开屏位）',
  `direction` tinyint(2) DEFAULT '0' COMMENT '广告展示方向（1横屏，2竖屏）',
  `state` tinyint(1) DEFAULT '0' COMMENT '广告开关(0关1开)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='app广告位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_manager`
--

DROP TABLE IF EXISTS `app_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户uid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='app游戏审核人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_version`
--

DROP TABLE IF EXISTS `app_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary` text NOT NULL COMMENT '描述',
  `status` tinyint(1) DEFAULT NULL COMMENT '1开放2关闭',
  `api_version` varchar(50) DEFAULT NULL COMMENT '对应后端API接口版本',
  `a_time` int(11) DEFAULT NULL,
  `version_code` int(11) NOT NULL COMMENT '版本号',
  `version_name` varchar(50) NOT NULL COMMENT '版本号 - 描述',
  `size` varchar(50) NOT NULL COMMENT '包大小',
  `machine_code` tinyint(1) DEFAULT '1' COMMENT '设备类型(1:android;2:ios)',
  `app_force` tinyint(1) DEFAULT '2' COMMENT '是否强制升级(1:强制;2:非强制)',
  `update_url` varchar(255) NOT NULL COMMENT '下载地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='app的版本信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL COMMENT '父ID',
  `deep` int(11) DEFAULT NULL COMMENT '级别',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `pinyin_prefix` varchar(100) DEFAULT NULL COMMENT '拼音前缀',
  `pinyin` varchar(100) DEFAULT NULL COMMENT '拼音',
  `ext_id` varchar(20) DEFAULT NULL COMMENT '编号',
  `ext_name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='中国地域信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_id` int(11) NOT NULL DEFAULT '0' COMMENT '推广位id',
  `weight` int(11) NOT NULL DEFAULT '1' COMMENT '权重',
  `game_name` varchar(50) DEFAULT NULL COMMENT '游戏名称',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `img_link` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `start_launch_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始投放时间',
  `end_launch_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束投放时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1投放中，2投放结束 0无效',
  `is_relative` tinyint(1) DEFAULT NULL COMMENT '链接地址1站内2非站内',
  `relative_path` varchar(255) DEFAULT NULL COMMENT 'APP内跳转地址',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='banner';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `banner_column`
--

DROP TABLE IF EXISTS `banner_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='banner栏位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `base_level`
--

DROP TABLE IF EXISTS `base_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL COMMENT '等级',
  `need_exp` int(11) DEFAULT NULL COMMENT '需要多少积分，达到这个积分到对应的level',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='等级基数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `black_word`
--

DROP TABLE IF EXISTS `black_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `black_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` char(100) DEFAULT NULL COMMENT '名称',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型',
  `sub_type` tinyint(1) DEFAULT NULL COMMENT '二级类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='敏感词、过滤替换';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_key` varchar(255) DEFAULT NULL COMMENT 'F值',
  `name` varchar(50) DEFAULT NULL COMMENT '渠道名称',
  `os` tinyint(1) DEFAULT NULL COMMENT '系统（1安卓2苹果）',
  `games` varchar(255) DEFAULT NULL COMMENT '游戏ID串，“all"代表所有',
  `a_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_app`
--

DROP TABLE IF EXISTS `company_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `callback_url` varchar(255) DEFAULT NULL COMMENT '回调地址',
  `key` varchar(100) DEFAULT NULL COMMENT '加密KEY',
  `from_url` varchar(255) DEFAULT NULL COMMENT '请求来源URL',
  `icon` varchar(255) DEFAULT NULL COMMENT '公司ICON',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `power` text COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' 公司对应的APP信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_app_user`
--

DROP TABLE IF EXISTS `company_app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_app_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` varchar(255) DEFAULT NULL COMMENT '同USER表ID一样',
  `openid` varchar(255) DEFAULT NULL COMMENT '开放ID',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `appid` int(11) DEFAULT NULL COMMENT '公司ID',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司APP的用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diamond_goods`
--

DROP TABLE IF EXISTS `diamond_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diamond_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `diamond` int(11) NOT NULL COMMENT '钻石数量',
  `rmb` double NOT NULL COMMENT '价格,人民币元',
  `add_exp` int(11) NOT NULL DEFAULT '0' COMMENT '增加积分',
  `intro` varchar(200) DEFAULT '' COMMENT '商品其他描述',
  `created_at` int(11) DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) DEFAULT '0' COMMENT '修改时间',
  `google_gid` varchar(200) DEFAULT NULL COMMENT '谷歌后台商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='可购买的钻石商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diamond_log`
--

DROP TABLE IF EXISTS `diamond_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diamond_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `type` tinyint(1) DEFAULT NULL COMMENT '分类',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `third_id` int(11) DEFAULT NULL COMMENT '3方表的ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='钻石日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL COMMENT '发送邮箱',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '接受方uid',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `status` int(11) DEFAULT '0' COMMENT '状态:1待发送2发送成功3发送失败',
  `a_time` int(11) DEFAULT '0' COMMENT '发送时间',
  `u_time` int(11) DEFAULT '0' COMMENT '修改时间，发送成功或者失败时间',
  `json_str` text COMMENT '存储redis的数据',
  `type` int(20) DEFAULT NULL COMMENT '1修改密码和邮件 2预警警告',
  `rule_id` int(11) DEFAULT NULL,
  `ip` char(15) DEFAULT NULL,
  `err_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_rule`
--

DROP TABLE IF EXISTS `email_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `type` tinyint(4) DEFAULT NULL COMMENT '1正常2报警',
  `period` int(11) DEFAULT NULL COMMENT '0不限制,周期时间，秒',
  `period_times` int(11) DEFAULT NULL COMMENT '0不限制,周期时间内，发送次数',
  `day_times` int(11) DEFAULT NULL COMMENT '0不限制,1天发几次',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fans`
--

DROP TABLE IF EXISTS `fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '关注者',
  `to_uid` int(11) DEFAULT NULL COMMENT '被关注者',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注/粉丝';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fans_black`
--

DROP TABLE IF EXISTS `fans_black`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fans_black` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `to_uid` int(11) DEFAULT NULL COMMENT '被拉黑用户ID',
  `a_time` int(11) DEFAULT NULL COMMENT 'int',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fans_bother`
--

DROP TABLE IF EXISTS `fans_bother`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fans_bother` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `to_uid` int(11) DEFAULT NULL COMMENT '免打扰用户ID',
  `a_time` int(11) DEFAULT NULL COMMENT 'int',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fans_each_other`
--

DROP TABLE IF EXISTS `fans_each_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fans_each_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `to_uid` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='互相关注的列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户uid',
  `type` tinyint(1) DEFAULT '0' COMMENT '1账号丢失2产品体验3更换学校4更换宿舍5其它',
  `contact` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `content` text COMMENT '内容',
  `content_back` text COMMENT '内容反馈',
  `feedback_url` varchar(255) DEFAULT '' COMMENT '反馈图片地址',
  `app_version` varchar(100) DEFAULT NULL COMMENT '玩家反馈问题所使用的app版本',
  `status` tinyint(1) DEFAULT '0' COMMENT '1未处理2已处理',
  `a_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `fType` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='意见反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `first_pay_user`
--

DROP TABLE IF EXISTS `first_pay_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_pay_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`,`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) DEFAULT NULL COMMENT '发起用户',
  `to_uid` int(11) DEFAULT NULL COMMENT '接收用户',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `relation_id` int(11) DEFAULT NULL COMMENT 'friend_relation表ID',
  `memo_name` varchar(50) DEFAULT NULL COMMENT '备注名',
  `black_time` int(10) DEFAULT NULL COMMENT '拉黑时间',
  `bother_time` tinyint(1) DEFAULT NULL COMMENT '免打扰开启时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='好友';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `friend_relation`
--

DROP TABLE IF EXISTS `friend_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) DEFAULT NULL COMMENT '发起者用户',
  `to_uid` int(11) DEFAULT NULL COMMENT '接收者用户',
  `status` tinyint(1) DEFAULT NULL COMMENT '1发起邀请2已同意3已拒绝4相互已删除',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `from_del_time` int(1) DEFAULT NULL COMMENT '发起者删除时间',
  `to_del_time` int(1) DEFAULT NULL COMMENT '接受者删除时间',
  `deny_time` int(11) DEFAULT NULL COMMENT '拒绝加好友时间',
  `fail_time` int(11) DEFAULT NULL COMMENT '30天内申请好友，失效',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='好友关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_bills`
--

DROP TABLE IF EXISTS `game_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL COMMENT '关联games表id',
  `bill_type` tinyint(2) DEFAULT NULL COMMENT '账单类型（1内购，2广告）',
  `settle_id` varchar(50) DEFAULT NULL COMMENT '结算单号',
  `original_revenue` float(11,2) DEFAULT '0.00' COMMENT '原始收入',
  `settle_revenue` float(11,2) DEFAULT '0.00' COMMENT '结算收入',
  `adjust_original_revenue` float(11,2) DEFAULT '0.00' COMMENT '调整后原始收入',
  `adjust_settle_revenue` float(11,2) DEFAULT '0.00' COMMENT '调整后结算收入',
  `bill_period` int(11) DEFAULT '0' COMMENT '账单周期',
  `status` tinyint(2) DEFAULT '0' COMMENT '结算状态（0未对账，1已对账，2发送对账单，3确认收票，4申请付款，5财务收票，6已付款）',
  `bill_img` varchar(255) DEFAULT NULL COMMENT '对账单',
  `invoice_img` varchar(255) DEFAULT NULL COMMENT '发票',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `after_tax` float(11,2) DEFAULT '0.00' COMMENT '税后收入',
  `cut_revenue` float(11,2) DEFAULT '0.00' COMMENT '暗扣后收入',
  `original_after_tax` float(11,2) DEFAULT '0.00' COMMENT '未暗扣税后收入',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结算账单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_finance`
--

DROP TABLE IF EXISTS `game_finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL COMMENT '关联games表id',
  `finance_type` tinyint(2) NOT NULL DEFAULT '2' COMMENT '1内购 2广告',
  `contract_body` tinyint(2) DEFAULT NULL COMMENT '签约主体（1主体A，2主体B）',
  `account_period` tinyint(2) DEFAULT NULL COMMENT '账期（1:N+1，2:N+2，3:N+3）',
  `divide` float(4,3) DEFAULT NULL COMMENT '游戏分成比例',
  `slotting_allowance` float(4,3) DEFAULT NULL COMMENT '通道费',
  `contract_start_date` int(11) DEFAULT NULL COMMENT '合同开始日期',
  `contract_end_date` int(11) DEFAULT NULL COMMENT '合同结束日期',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`finance_type`,`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分成比例表合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_recommend`
--

DROP TABLE IF EXISTS `game_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `type` tinyint(2) DEFAULT NULL COMMENT '推荐位置',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `a_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推荐游戏设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(3) DEFAULT NULL COMMENT '游戏分类id',
  `name` varchar(50) NOT NULL COMMENT '游戏名称',
  `status` tinyint(1) DEFAULT NULL COMMENT '1待审2通过3驳回4删除',
  `is_online` char(10) NOT NULL COMMENT '1上线2下线',
  `small_img` varchar(225) NOT NULL COMMENT '小图',
  `list_img` varchar(225) DEFAULT NULL COMMENT '列表页展示图',
  `index_reco_img` varchar(225) NOT NULL COMMENT '首页推荐图',
  `screen` tinyint(1) DEFAULT NULL COMMENT '横竖屏1横屏2竖屏',
  `label` varchar(20) DEFAULT NULL COMMENT '游戏标签',
  `sort` int(4) DEFAULT NULL COMMENT '排序(值越大越排前)',
  `recommend_index` tinyint(1) DEFAULT NULL COMMENT '推荐首页1已推荐2没有',
  `summary` text COMMENT '简介',
  `recommend_im_invite` tinyint(1) DEFAULT NULL COMMENT '1是2否',
  `background_color` char(7) DEFAULT NULL COMMENT '背景底色',
  `open_method` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `play_url` varchar(255) DEFAULT NULL COMMENT '玩游戏地址',
  `recommend_new` tinyint(1) DEFAULT NULL COMMENT '1是2否',
  `app_secret` varchar(255) NOT NULL COMMENT '应用秘钥',
  `uid` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL COMMENT '游戏信息最后修改时间',
  `icon_256` varchar(255) NOT NULL DEFAULT '',
  `icon_128` varchar(255) NOT NULL DEFAULT '',
  `startup` varchar(255) NOT NULL DEFAULT '',
  `soft_copyright` varchar(255) NOT NULL DEFAULT '',
  `base_played_num` int(11) NOT NULL DEFAULT '0',
  `link_url` varchar(255) DEFAULT NULL,
  `url_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1内部游戏 2外链游戏 3微信小游戏，默认为内部',
  `wx_userName` varchar(64) NOT NULL DEFAULT '' COMMENT '小程序原始id',
  `wx_path` varchar(255) NOT NULL DEFAULT '' COMMENT '拉起小程序页面的可带参路径，不填默认拉起小程序首页',
  `wx_miniprogramType` tinyint(4) DEFAULT NULL COMMENT '可选打开 开发版，体验版和正式版',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games_category`
--

DROP TABLE IF EXISTS `games_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `name_cn` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games_collect`
--

DROP TABLE IF EXISTS `games_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户收藏游戏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games_goods`
--

DROP TABLE IF EXISTS `games_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `money` int(11) DEFAULT NULL COMMENT '人民币数量',
  `a_time` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='游戏内购买的商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games_goods_order`
--

DROP TABLE IF EXISTS `games_goods_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `in_trade_no` varchar(60) DEFAULT NULL COMMENT '内部订单号',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '1待处理/预订单2成功3失败',
  `goldcoin` int(11) DEFAULT NULL COMMENT '消耗金币数',
  `money` varchar(50) DEFAULT NULL COMMENT '消耗人民币数',
  `pay_type` tinyint(4) DEFAULT NULL COMMENT '1微信2支付宝',
  `pay_category` tinyint(4) DEFAULT NULL COMMENT '1现金2金币3金币+现金',
  `wx_prepay_id` varchar(100) DEFAULT NULL COMMENT 'WX返回的预订单号，给移动端',
  `third_bank_info` text COMMENT '3方返回的结果集',
  `out_trade_no` char(32) DEFAULT NULL COMMENT 'transaction_id,3方订单号',
  `done_time` int(11) DEFAULT NULL COMMENT '支付完成时间',
  `trade_type` tinyint(4) DEFAULT NULL COMMENT '1APP2H5',
  `wx_pre_order_back_info` text NOT NULL COMMENT '生成预订单微信返回信息',
  `wx_final_back_info` text NOT NULL COMMENT '支付成功返回数据',
  `game_id` int(11) NOT NULL,
  `waste_time` int(11) NOT NULL COMMENT ' 开发者消耗此订单时间',
  `os_type` varchar(20) NOT NULL COMMENT '1安卓2IOS3H54PC',
  `goods_id` int(11) NOT NULL,
  `developerPayload` varchar(255) DEFAULT NULL,
  `feidou_uid` int(11) DEFAULT NULL COMMENT '飞豆uid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏内购买商品充值订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games_score`
--

DROP TABLE IF EXISTS `games_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL COMMENT '玩游戏的成绩',
  `game_id` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='开发者，持久化用户成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gift_tag_config`
--

DROP TABLE IF EXISTS `gift_tag_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_tag_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL COMMENT '名称',
  `a_time` int(11) DEFAULT NULL COMMENT '记录添加时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '0正常1关闭',
  `guide` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `type` tinyint(4) DEFAULT NULL,
  `recv_fllow_num_rank` varchar(50) DEFAULT NULL COMMENT '接收花数量，取多少名，如：1-10',
  `sex` tinyint(4) DEFAULT NULL COMMENT '0女1男',
  `user_level` int(11) DEFAULT NULL COMMENT '用户等级',
  `user_point_rank` char(20) DEFAULT NULL COMMENT '用户积分排名',
  `cron_valid_day` int(11) DEFAULT NULL COMMENT '程序计算-期限-天',
  `holiday` varchar(255) DEFAULT NULL COMMENT '节假日特殊称号',
  `user_valid_day` int(11) DEFAULT NULL COMMENT '用户使用-期限-天',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='花魁-排行榜-称号-配置规则';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goldcoin_carnival`
--

DROP TABLE IF EXISTS `goldcoin_carnival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goldcoin_carnival` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `is_free` int(11) DEFAULT NULL COMMENT '免费1是2否',
  `is_use` int(11) DEFAULT NULL COMMENT '使用了1是2否',
  `times` int(11) DEFAULT NULL COMMENT '第几次',
  `reward_goldcoin` int(11) DEFAULT NULL COMMENT '奖励金币数',
  `a_time` int(11) DEFAULT NULL,
  `do_time` int(11) DEFAULT NULL COMMENT '执行抽奖的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='金币欢乐送';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goldcoin_log`
--

DROP TABLE IF EXISTS `goldcoin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goldcoin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL COMMENT '数量',
  `type` varchar(50) DEFAULT NULL COMMENT '调用者的KEY',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注描述',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `opt` tinyint(1) DEFAULT NULL COMMENT '1增加2减少',
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='金币日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `happy_lottery`
--

DROP TABLE IF EXISTS `happy_lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `happy_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  `reward_type` tinyint(4) DEFAULT NULL COMMENT '1金币2提现卷',
  `reward_goldcoin` int(11) DEFAULT NULL COMMENT '奖励金币数',
  `reward_coupon_id` int(11) DEFAULT NULL COMMENT '奖励提现卷的ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开心大抽奖';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `id_validate`
--

DROP TABLE IF EXISTS `id_validate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_validate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `photo_top` int(11) DEFAULT NULL COMMENT '身份证正面照片',
  `photo_back` int(11) DEFAULT NULL COMMENT '背面照片',
  `photo_self` int(11) DEFAULT NULL COMMENT '本人手持身份证照片',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '审核状态0未处理1通过2拒绝',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `type` tinyint(1) NOT NULL COMMENT '1身份证2军人3港澳台4护照',
  `real_name` varchar(50) NOT NULL COMMENT '真实姓名',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='实名验证';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `im_msg`
--

DROP TABLE IF EXISTS `im_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `im_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `session_id` varchar(50) DEFAULT NULL COMMENT '会话ID',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `content` varchar(255) DEFAULT NULL COMMENT '内容体',
  `type` tinyint(1) DEFAULT NULL COMMENT '1文字2图片4礼物3约战',
  `from_uid` int(11) DEFAULT NULL COMMENT '发送者',
  `to_uid` int(11) DEFAULT NULL COMMENT '接收者',
  `to_uid_del_time` int(11) DEFAULT NULL COMMENT '接收者删除时间',
  `from_uid_del_time` int(11) DEFAULT NULL COMMENT '发送者删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天-消息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `im_session`
--

DROP TABLE IF EXISTS `im_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `im_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `from_uid` int(11) DEFAULT NULL COMMENT '发起方',
  `to_uid` int(11) DEFAULT NULL COMMENT '接收方',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `from_del` tinyint(1) DEFAULT NULL COMMENT '发起方-删除1是2否',
  `to_del` tinyint(1) DEFAULT NULL COMMENT '接收方-删除1是2否',
  `from_status` tinyint(1) DEFAULT NULL COMMENT '是否在会话中，1在2不在',
  `to_status` tinyint(1) DEFAULT NULL COMMENT '是否在会话中，1在2不在',
  `from_uid_unread` int(1) DEFAULT NULL COMMENT '发送者消息未读数',
  `to_uid_unread` int(1) DEFAULT NULL COMMENT '接收者消息未读数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IM-聊天-会话';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '收入类型:1内购收入,2广告收入',
  `settlement_interval` int(11) NOT NULL COMMENT '结算周期',
  `estimate_income` float(11,2) NOT NULL DEFAULT '0.00' COMMENT '预估收入',
  `u_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `a_time` int(11) NOT NULL DEFAULT '0',
  `cuted_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '暗扣金额',
  `divide_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '分成金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告收入及推送栏位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `income_push_emails`
--

DROP TABLE IF EXISTS `income_push_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income_push_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `income_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(320) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收入推送邮箱';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inner_ad_details_byday`
--

DROP TABLE IF EXISTS `inner_ad_details_byday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inner_ad_details_byday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL COMMENT '游戏id',
  `inner_ad_id` int(11) DEFAULT NULL COMMENT '内部广告id',
  `cost` decimal(10,2) DEFAULT NULL COMMENT '预估总收入',
  `click` int(11) DEFAULT NULL COMMENT '点击量',
  `show` int(11) DEFAULT NULL COMMENT '展现量',
  `cut_cost` decimal(10,2) DEFAULT NULL COMMENT '削减后预估总收入',
  `cut_click` int(11) DEFAULT NULL COMMENT '削减后点击量',
  `cut_show` int(11) DEFAULT NULL COMMENT '削减后展现量',
  `used` tinyint(4) DEFAULT '0' COMMENT '0未使用，1使用过',
  `stat_datetime` date DEFAULT NULL COMMENT '本条数据时间维度',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `click_cut_p` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '削减百分比',
  `cost_cut_p` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '削减百分比',
  `show_cut_p` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '削减百分比',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `innerid_dtime` (`inner_ad_id`,`stat_datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `invite`
--

DROP TABLE IF EXISTS `invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `to_uid` int(11) DEFAULT NULL COMMENT '师傅是谁',
  `a_time` int(11) DEFAULT NULL,
  `device_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ip`
--

DROP TABLE IF EXISTS `ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip` (
  `start_ip` varchar(45) DEFAULT NULL COMMENT '��ʼip',
  `end_ip` varchar(45) DEFAULT NULL COMMENT '����ip',
  `start_num` bigint(20) DEFAULT NULL COMMENT '��ʼ���',
  `end_num` bigint(20) DEFAULT NULL COMMENT '�������',
  `continent` varchar(45) DEFAULT NULL COMMENT '������',
  `country` varchar(45) DEFAULT NULL COMMENT '��������',
  `province` varchar(45) DEFAULT NULL COMMENT 'ʡ������',
  `city` varchar(45) DEFAULT NULL COMMENT '��������',
  `district` varchar(45) DEFAULT NULL COMMENT '��������',
  `isp` varchar(45) DEFAULT NULL COMMENT '��Ӫ��',
  `area_code` varchar(45) DEFAULT NULL COMMENT '������',
  `country_en` varchar(45) DEFAULT NULL COMMENT '��������Ӣ��',
  `area_abb` varchar(45) DEFAULT NULL COMMENT '����Ӣ����д',
  `lal` varchar(45) DEFAULT NULL COMMENT '��γ��'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ip��ַ��';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ip_block_log`
--

DROP TABLE IF EXISTS `ip_block_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_block_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `detail` varchar(255) DEFAULT NULL COMMENT '封停原因（解封不填）',
  `type` tinyint(1) DEFAULT NULL COMMENT '操作（1封停，2解封）',
  `admin` int(11) DEFAULT NULL COMMENT '操作人',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='封停IP日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issue_admin_log`
--

DROP TABLE IF EXISTS `issue_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '管理员ID',
  `real_name` varchar(50) NOT NULL,
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `op_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issue_admin_user`
--

DROP TABLE IF EXISTS `issue_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL COMMENT '登陆账号',
  `real_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `mobile_number` varchar(100) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `ps` char(32) DEFAULT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否禁用（0：禁用；1：有效）',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issue_games_income_summary`
--

DROP TABLE IF EXISTS `issue_games_income_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_games_income_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL COMMENT '游戏id',
  `game_name` varchar(50) DEFAULT NULL COMMENT '游戏名称',
  `system` tinyint(1) DEFAULT '0' COMMENT '系统（1：Android；2：ios）',
  `total_installed` int(11) NOT NULL COMMENT '总安装量',
  `total_overall` int(11) NOT NULL COMMENT '总消耗量',
  `avg_cost` int(11) NOT NULL COMMENT '平均成本',
  `ad_income` int(11) NOT NULL COMMENT '广告收入',
  `inside_income` int(11) NOT NULL COMMENT '内购收入',
  `total_income` int(11) NOT NULL COMMENT '总收入',
  `profit` int(11) NOT NULL COMMENT '利润',
  `a_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='游戏收益汇总表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issue_menu`
--

DROP TABLE IF EXISTS `issue_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` tinyint(1) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ctrl` varchar(50) DEFAULT NULL,
  `ac` varchar(50) DEFAULT NULL,
  `dir_name` varchar(50) DEFAULT NULL,
  `icon` varchar(50) NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示(1显示0不显示)',
  `sort` int(2) NOT NULL DEFAULT '0' COMMENT '权重',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issue_roles`
--

DROP TABLE IF EXISTS `issue_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `power` text COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员-角色权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `link_game_power`
--

DROP TABLE IF EXISTS `link_game_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_game_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `role` varchar(50) DEFAULT NULL COMMENT '权限列表，逗号分隔（1：link，2：wechat）',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外链游戏添加权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ip` char(15) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `cate` varchar(50) DEFAULT NULL COMMENT 'pc,h5,app',
  `os` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `os_version` varchar(50) DEFAULT NULL COMMENT '操作系统-版本',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'app版本',
  `device_model` varchar(50) DEFAULT NULL COMMENT 'iphone,ipad',
  `device_version` varchar(50) DEFAULT NULL COMMENT '设备版本',
  `browser_model` varchar(50) DEFAULT NULL COMMENT '浏览器类型',
  `browser_version` varchar(50) DEFAULT NULL COMMENT '浏览器版本',
  `ref` varchar(255) DEFAULT NULL COMMENT '来源',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用于查错',
  `sim_imsi` varchar(50) DEFAULT NULL COMMENT 'SIM卡的imsi号',
  `cellphone` varchar(15) DEFAULT NULL COMMENT '手机号',
  `dpi` varchar(50) DEFAULT NULL COMMENT '分辨率',
  `gps_geo_code` varchar(50) DEFAULT NULL COMMENT '经纬度转geo码',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `type` tinyint(1) DEFAULT NULL COMMENT '1登陆2退出',
  `login_type` tinyint(2) DEFAULT NULL COMMENT '登陆方式',
  `sex` tinyint(1) DEFAULT NULL COMMENT '1男2女',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='登陆日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lottery`
--

DROP TABLE IF EXISTS `lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  `reward_type` int(11) DEFAULT NULL COMMENT '1金币2看广告',
  `reward_goldcoin` int(11) DEFAULT NULL COMMENT '奖励的金币数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `luck_box`
--

DROP TABLE IF EXISTS `luck_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luck_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  `reward_type` int(11) DEFAULT NULL COMMENT '1金币 2玩游戏',
  `reward_goldcoin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masterstudent`
--

DROP TABLE IF EXISTS `masterstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterstudent` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `master_uid` int(11) NOT NULL DEFAULT '0' COMMENT '师傅id',
  `student_uid` int(11) NOT NULL DEFAULT '0' COMMENT '徒弟id',
  `maward_gold` int(11) NOT NULL DEFAULT '0' COMMENT '师傅奖励金额',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `a_time` int(11) NOT NULL DEFAULT '0' COMMENT '收徒时间或者任务完成时间',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '1为邀请 2为任务',
  `task_id` int(11) NOT NULL DEFAULT '0' COMMENT '任务id',
  `saward_gold` int(11) NOT NULL DEFAULT '0' COMMENT '徒弟奖励金额',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='师徒关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(4) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ctrl` varchar(50) DEFAULT NULL,
  `ac` varchar(50) DEFAULT NULL,
  `dir_name` varchar(50) DEFAULT NULL,
  `icon` varchar(50) NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示(1显示0不显示)',
  `sort` int(4) NOT NULL DEFAULT '0' COMMENT '菜单权重',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `money_order`
--

DROP TABLE IF EXISTS `money_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `out_trade_no` varbinary(50) DEFAULT NULL COMMENT '外部交易流水号',
  `in_trade_no` varchar(50) DEFAULT NULL COMMENT '内部交易流水号',
  `num` varchar(50) DEFAULT NULL COMMENT '数量',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '1未处理2成功3失败',
  `thir_back_info` text COMMENT '3方接口的数据',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `element_id` int(11) NOT NULL COMMENT '元素ID，1块5块10块等',
  `state` tinyint(4) DEFAULT NULL COMMENT '审核状态（0：未审核，1：通过，2：不通过）',
  `admin_uid` int(11) DEFAULT NULL COMMENT '审批人',
  `type` tinyint(1) DEFAULT '0' COMMENT '0金币1金币+提现卷',
  `balance` int(11) DEFAULT '0' COMMENT '金币余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `money_os_config`
--

DROP TABLE IF EXISTS `money_os_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_os_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `gift_card_id` int(11) NOT NULL COMMENT '礼品卡ID',
  `gift_card_name` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '' COMMENT '礼品名称',
  `gift_card_value` varchar(100) CHARACTER SET latin1 NOT NULL COMMENT '礼品价格',
  `gift_desc` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '礼品描述',
  `change_gold` int(11) NOT NULL COMMENT '兑换所需金币数',
  `img_url` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0：失效；1：有效；',
  `a_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='提现配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg`
--

DROP TABLE IF EXISTS `msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) DEFAULT NULL COMMENT '发送者用户',
  `to_uid` varchar(255) NOT NULL COMMENT '接收者uid',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `type` tinyint(2) DEFAULT NULL COMMENT '1 P2P,2 S2P',
  `content` text COMMENT '内容',
  `send_reason` varchar(255) DEFAULT '' COMMENT '发送原因',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `to_del` tinyint(1) DEFAULT NULL COMMENT '接收者删除1是2否',
  `from_del` tinyint(1) DEFAULT NULL COMMENT '发送者删除1是2否',
  `is_read` tinyint(1) DEFAULT NULL COMMENT '接收者1已读2未读',
  `category` tinyint(1) DEFAULT NULL COMMENT '1关注的人普通送消息2陌生人消息3我关注别人4别人关注我5系统PUSH游戏动态6关注的人游戏邀请7我分享游戏邀请',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_activity_log`
--

DROP TABLE IF EXISTS `open_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `event_source` int(11) NOT NULL COMMENT '事件源',
  `game_id` int(11) NOT NULL COMMENT '游戏编号',
  `game_version` int(11) DEFAULT NULL COMMENT '游戏版本',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `extra` text COMMENT '附加信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_admin_apppush`
--

DROP TABLE IF EXISTS `open_admin_apppush`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_admin_apppush` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL COMMENT '��ϷID',
  `send_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '发送类型：1=>离线PUSH消息 2=>指定发送 3=>平台发送',
  `push_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'PUSH类型：1=>应用内顶部提示消息 2=>应用内底部提示消息''',
  `platform_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '平台类型：1=>安卓 2=>ios',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '发送状态0未处理1处理中2成功 3失败',
  `developer_information` varchar(100) NOT NULL COMMENT 'UID组，分号分隔',
  `send_reason` varchar(255) DEFAULT '' COMMENT '����ԭ��',
  `send_title` varchar(100) DEFAULT '' COMMENT '���ͱ���',
  `send_content` varchar(255) DEFAULT '' COMMENT '��������',
  `operation_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `send_time` datetime NOT NULL COMMENT '定时发送时间',
  `finish_time` datetime NOT NULL COMMENT '����ʱ��',
  `created_time` datetime NOT NULL COMMENT '����ʱ��',
  `updated_time` datetime NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ϸ��Ϣ���ͱ�';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_admin_user`
--

DROP TABLE IF EXISTS `open_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `ps` char(32) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='开放平台管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_advertise`
--

DROP TABLE IF EXISTS `open_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL COMMENT '游戏ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `title` varchar(256) DEFAULT NULL COMMENT '广告位名称',
  `status` tinyint(1) DEFAULT NULL COMMENT '广告位状态 1审核中 2暂停 3有效 4删除 5审核未通过',
  `a_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL,
  `advertise_type` tinyint(1) DEFAULT '0' COMMENT '广告位类型（1全屏视频，2激励视频，3Banner）',
  `adtoutiao_id` varchar(64) DEFAULT NULL COMMENT '穿山甲广告位ID',
  `direction` tinyint(2) DEFAULT '0' COMMENT '广告展示方向（1横屏，2竖屏）',
  `frequency_type` tinyint(1) DEFAULT '0' COMMENT '广告位频次控制类型（1展示间隔，2设定时间段内展示次数，3无设置）',
  `interval` int(11) DEFAULT '0' COMMENT '展示间隔',
  `times` int(11) DEFAULT '0' COMMENT '展示次数',
  `period` int(11) DEFAULT '0' COMMENT '设定时间段',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='open后台广告位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_advertise_deal`
--

DROP TABLE IF EXISTS `open_advertise_deal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_advertise_deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL COMMENT '账单金额',
  `pay_cost` decimal(10,2) DEFAULT NULL COMMENT '实际付款金额',
  `status` tinyint(3) DEFAULT NULL COMMENT '账单状态 1:对账中 2:已付款',
  `explain` varchar(255) DEFAULT NULL COMMENT '说明',
  `start_date` date DEFAULT NULL COMMENT '账单开始日期',
  `end_date` date DEFAULT NULL COMMENT '账单结束日期',
  `create_time` int(11) DEFAULT NULL,
  `last_update_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告结算记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_advertise_income`
--

DROP TABLE IF EXISTS `open_advertise_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_advertise_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) DEFAULT NULL COMMENT '在头条联盟媒体平台创建应用后获取的appid',
  `ad_slot_id` varchar(50) DEFAULT NULL COMMENT '代码位ID，在头条联盟媒体平台创建代码位',
  `click` int(11) DEFAULT NULL COMMENT '点击量',
  `click_rate` decimal(5,2) DEFAULT NULL COMMENT '点击率',
  `code_name` varchar(50) DEFAULT NULL COMMENT '广告位名称',
  `cost` decimal(10,2) DEFAULT NULL COMMENT '预估总收入',
  `ecpm` decimal(10,2) DEFAULT NULL COMMENT '千次展现收入',
  `media_name` varchar(50) DEFAULT NULL COMMENT '平台名(开心网)',
  `region` char(11) DEFAULT NULL COMMENT '国家或地区代码,目前只有中国，请填写CN',
  `show` int(11) DEFAULT NULL COMMENT '展现量',
  `site_name` varchar(50) DEFAULT NULL COMMENT '游戏版本名',
  `stat_datetime` date DEFAULT NULL COMMENT '本条数据的时间维度',
  `last_update_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_index` (`ad_slot_id`,`appid`,`stat_datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告收入';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_bank`
--

DROP TABLE IF EXISTS `open_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `bank_number` char(19) DEFAULT NULL COMMENT '银行卡号',
  `bank_branch_name` varchar(50) DEFAULT NULL COMMENT '开户银行',
  `type` tinyint(1) DEFAULT NULL COMMENT '账单类型 1:个人 2:企业',
  `mobile` int(11) DEFAULT NULL COMMENT '手机号',
  `account_name` varchar(50) DEFAULT NULL COMMENT '姓名/公司',
  `account_number` char(18) DEFAULT NULL COMMENT '身份证号/企业号',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1:正常 2:删除',
  `is_default` tinyint(1) DEFAULT NULL COMMENT '是否为默认银行卡 1:是 2:否',
  `create_time` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '0' COMMENT '审核状态（0：未提交，1：审核中，2：审核通过，3：审核不通过）',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `detail` varchar(255) DEFAULT NULL COMMENT '审核描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='银行账号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_doc`
--

DROP TABLE IF EXISTS `open_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL COMMENT '文档分类id',
  `admin_uid` int(11) DEFAULT NULL COMMENT '后台用户id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `sort` int(11) DEFAULT NULL COMMENT '标题排序',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示(1显示0不显示)',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `dl_time` int(11) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='开放平台文档';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_doc_category`
--

DROP TABLE IF EXISTS `open_doc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_doc_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '分类名',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='开放平台文档分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_finance`
--

DROP TABLE IF EXISTS `open_finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT 'user表id',
  `bank_province` varchar(50) DEFAULT NULL COMMENT '开户行地区-省',
  `bank_city` varchar(50) DEFAULT NULL COMMENT '开户行地区-市',
  `bank_district` varchar(50) DEFAULT NULL COMMENT '开户行地区-区',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '银行名称',
  `branch_name` varchar(255) DEFAULT NULL COMMENT '支行信息',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '银行账号',
  `bank_img` varchar(255) DEFAULT NULL COMMENT '银行卡正面扫描件',
  `tax_number` varchar(50) DEFAULT NULL COMMENT '纳税登记号',
  `tax_img` varchar(255) DEFAULT NULL COMMENT '纳税登记证',
  `tax_type` tinyint(2) DEFAULT '0' COMMENT '纳税人类型（1增值税一般纳税人，2增值税小规模纳税人）',
  `invoice_type` tinyint(2) DEFAULT '0' COMMENT '发票类型（1增值税专用发票，2增值税普通发票）',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `status` int(11) DEFAULT NULL COMMENT '审核状态（0：未提交，1：审核中，2：审核通过，3：审核不通过）',
  `detail` varchar(255) DEFAULT NULL COMMENT '审核描述（驳回理由）',
  `idcard_img` varchar(255) DEFAULT NULL COMMENT '身份证正面图',
  `idcard2_img` varchar(255) DEFAULT NULL COMMENT '身份证反面图',
  `idcard_number` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `idcard_start_date` int(11) DEFAULT NULL COMMENT '身份证有效期（起',
  `idcard_end_date` int(11) DEFAULT NULL COMMENT '身份证有效期（止',
  PRIMARY KEY (`id`),
  UNIQUE KEY `_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开发者财务信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_game_hosting`
--

DROP TABLE IF EXISTS `open_game_hosting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_game_hosting` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组件',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏ID',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '附件名称',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '附件大小',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `uid` int(11) NOT NULL DEFAULT '0',
  `audit_info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏托管表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_game_message_rule`
--

DROP TABLE IF EXISTS `open_game_message_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_game_message_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `template_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '模板类型',
  `copywritings` mediumtext NOT NULL COMMENT '文案数据，JSON',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '规则类型',
  `trigger_day` int(11) NOT NULL DEFAULT '0' COMMENT '触发天数',
  `trigger_time` time NOT NULL COMMENT '触发时间',
  `trigger_minute` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏消息规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_game_message_task`
--

DROP TABLE IF EXISTS `open_game_message_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_game_message_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '��ϷID',
  `to_id` int(11) DEFAULT NULL,
  `template` text NOT NULL COMMENT '��������',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '״̬',
  `event_of_time` datetime NOT NULL COMMENT '�¼�ʱ��',
  `send_of_time` datetime NOT NULL COMMENT '����ʱ��',
  `created_at` datetime NOT NULL COMMENT '����ʱ��',
  `updated_at` datetime NOT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ϸ��Ϣ�����';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_notification`
--

DROP TABLE IF EXISTS `open_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '注册用户',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `is_read` tinyint(1) DEFAULT NULL COMMENT '接收者1已读2未读',
  `to_del` tinyint(1) DEFAULT NULL COMMENT '接收者删除1是2否',
  `from_del` tinyint(1) DEFAULT NULL COMMENT '发送者删除1是2否',
  `type` tinyint(2) DEFAULT NULL COMMENT '1 P2P,2 S2P',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='开放平台通知消息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_played_games_count`
--

DROP TABLE IF EXISTS `open_played_games_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_played_games_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏ID',
  `data` int(11) NOT NULL DEFAULT '0' COMMENT '数值',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型',
  `a_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间字符串',
  `data2` varchar(512) NOT NULL DEFAULT '' COMMENT '字符串值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_id` (`game_id`,`a_time`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='played_games表的统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_played_games_counts`
--

DROP TABLE IF EXISTS `open_played_games_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_played_games_counts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏ID',
  `all_register` int(11) NOT NULL DEFAULT '0' COMMENT '累计注册数',
  `active` int(11) NOT NULL DEFAULT '0' COMMENT '活跃数',
  `new_register` int(11) NOT NULL DEFAULT '0' COMMENT '新增数',
  `stay_time` int(11) NOT NULL DEFAULT '0' COMMENT '在线时长,单位秒',
  `login1` int(11) NOT NULL DEFAULT '0' COMMENT '次登数',
  `login3` int(11) NOT NULL DEFAULT '0' COMMENT '三日登数',
  `login7` int(11) NOT NULL DEFAULT '0' COMMENT '七日登数',
  `a_time` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间字符串',
  `c_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `visit` int(11) NOT NULL DEFAULT '0' COMMENT '访问次数',
  `sex_json` text NOT NULL COMMENT '男女分布json',
  `area_json` text NOT NULL COMMENT '地区分布json',
  `device_json` text NOT NULL COMMENT '机型分布json',
  `n_sex_json` text NOT NULL COMMENT '新增用户男女分布json',
  `n_area_json` text NOT NULL COMMENT '新增活跃用户地区分布json',
  `n_device_json` text NOT NULL COMMENT '新增活跃用户机型分布json',
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_id` (`game_id`,`a_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='played_games表的统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_played_games_other_count`
--

DROP TABLE IF EXISTS `open_played_games_other_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_played_games_other_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏ID',
  `data` int(11) NOT NULL DEFAULT '0' COMMENT '数值',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型',
  `a_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间字符串',
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_id` (`game_id`,`a_time`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='played_games表的统计表,其他统计内容';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_played_games_uid_count`
--

DROP TABLE IF EXISTS `open_played_games_uid_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_played_games_uid_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `a_time` int(11) NOT NULL DEFAULT '0' COMMENT '该游戏用户注册时间',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间字符串',
  `c_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_id` (`game_id`,`a_time`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统计每个游戏新增用户的uid';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_props_price`
--

DROP TABLE IF EXISTS `open_props_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_props_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `iostype` int(11) NOT NULL DEFAULT '0' COMMENT '1 andoird 2 ios',
  `currency_type` int(11) NOT NULL DEFAULT '1' COMMENT '1 rmb',
  `price` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品价格',
  `goods_name` varchar(64) NOT NULL DEFAULT '' COMMENT '商品名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏支付接入';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_user`
--

DROP TABLE IF EXISTS `open_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '注册用户',
  `type` tinyint(1) DEFAULT NULL COMMENT '账号类别 1:公司账号 2:个人账号',
  `account_holder` varchar(50) DEFAULT NULL COMMENT '开户人（个人用户）',
  `company` varchar(255) DEFAULT NULL COMMENT '公司名',
  `company_addr_province` varchar(50) DEFAULT NULL COMMENT '公司注册地址（省）',
  `company_addr_city` varchar(50) DEFAULT NULL COMMENT '公司注册地址（市）',
  `company_addr_district` varchar(50) DEFAULT NULL COMMENT '公司注册地址（区）',
  `company_addr_detail` varchar(255) DEFAULT NULL COMMENT '公司注册地址（详细地址）',
  `legal_person` varchar(50) DEFAULT NULL COMMENT '法人名称',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `contact` varchar(50) DEFAULT NULL COMMENT '联系人',
  `email` varchar(255) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `status` int(11) DEFAULT '0' COMMENT '审核状态（0：未提交，1：审核中，2：审核通过，3：审核不通过）',
  `detail` varchar(255) DEFAULT NULL COMMENT '审核描述（驳回理由）',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `business` varchar(255) DEFAULT NULL COMMENT '营业执照',
  `business_number` varchar(255) DEFAULT NULL COMMENT ' 营业执照号',
  `idcard_img` varchar(255) DEFAULT NULL COMMENT '身份证正面图',
  `idcard2_img` varchar(255) DEFAULT NULL COMMENT '身份证反面图',
  `idcard_number` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `idcard_start_date` int(11) DEFAULT NULL COMMENT '身份证有效期（起）',
  `idcard_end_date` int(11) DEFAULT NULL COMMENT '身份证有效期（止）',
  `from` tinyint(1) DEFAULT '0' COMMENT '注册来源（0：open 1发行）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='开放平台账号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `open_user_games`
--

DROP TABLE IF EXISTS `open_user_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_user_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL COMMENT '游戏编号',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `role` int(11) NOT NULL COMMENT '用户类型（1管理员，2开发者，3测试者）',
  `a_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_uid` (`game_id`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户游戏关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_diamond`
--

DROP TABLE IF EXISTS `order_diamond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_diamond` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '购买用户id',
  `gid` int(11) DEFAULT NULL COMMENT '钻石商品id',
  `payment` varchar(200) DEFAULT NULL COMMENT '支付方式，wxpay，alipay',
  `transid` varchar(200) DEFAULT NULL COMMENT '外部订单号',
  `rmb` double DEFAULT NULL COMMENT '价格',
  `status` int(11) DEFAULT '1' COMMENT '状态，1 未支付，2 已支付',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `payed_at` int(11) DEFAULT NULL COMMENT '支付时间',
  `third_oid` varchar(200) DEFAULT NULL COMMENT '第三方订单号',
  `gift_tag_ids` varchar(255) DEFAULT '' COMMENT '支付成功,获得TAG_IDS',
  `dollar` double DEFAULT '0' COMMENT '美元',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='钻石订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_goods`
--

DROP TABLE IF EXISTS `order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `point` int(11) DEFAULT NULL COMMENT '用了多少积分兑换',
  `email` varchar(100) DEFAULT NULL COMMENT '收货邮件',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '1未处理2拒绝3已发货',
  `admin_uid` int(11) DEFAULT NULL COMMENT '最后操作管理员ID',
  `memo` varchar(255) DEFAULT NULL COMMENT '管理员备注',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分兑换商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_vip`
--

DROP TABLE IF EXISTS `order_vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_vip` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT '数据ID',
  `uid` varchar(16) DEFAULT NULL COMMENT '用户ID',
  `gid` varchar(16) DEFAULT NULL COMMENT '购买VIP ID',
  `payment` varchar(16) DEFAULT NULL COMMENT '支付方式：wxpay，alipay，googlepay，egt',
  `order_id` varchar(32) DEFAULT '0' COMMENT '平台订单流水号',
  `price` varchar(24) DEFAULT '0' COMMENT '支付价格',
  `status` int(2) DEFAULT '0' COMMENT '1、未支付；2、支付完成；3、取消支付或支付失败',
  `a_time` int(13) DEFAULT '0' COMMENT '添加时间',
  `pay_time` int(13) DEFAULT '0' COMMENT '支付时间',
  `third_oid` varchar(40) DEFAULT NULL COMMENT '第三方订单号',
  `extendField` text COMMENT '第三方返回字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购买VIP记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pklog`
--

DROP TABLE IF EXISTS `pklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_time` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uid_other` int(11) DEFAULT NULL,
  `game_id` varchar(200) DEFAULT NULL,
  `game_name` varchar(200) DEFAULT NULL,
  `room_id` varchar(200) DEFAULT NULL,
  `win` int(11) DEFAULT NULL COMMENT '0 负，1 胜，2 平',
  `is_cron_process` tinyint(1) DEFAULT '0' COMMENT '0未处理1已处理0未处理1已处理2出错',
  `match_type` tinyint(1) DEFAULT NULL COMMENT '1随机游戏匹配2指定游戏匹配3快速赛匹配4锦标赛匹配5约战',
  `fastmatch_room_level_id` int(11) DEFAULT NULL COMMENT '快速赛房间等级ID',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '锦标赛-免费0不是，1是',
  `robot_level` tinyint(4) DEFAULT NULL COMMENT '机器人等级',
  `round` tinyint(2) DEFAULT NULL COMMENT '锦标赛第几轮',
  `game_start_time` int(11) DEFAULT NULL COMMENT '游戏开始时间',
  `sign_time` int(11) DEFAULT '0' COMMENT '报名时间',
  `brushs` int(8) DEFAULT '0' COMMENT '是否为定时任务数据：默认0、正常数据；2、定时任务插入',
  `handles` int(4) DEFAULT '0' COMMENT '该任务是否已经定时处理过（用于计算用户积分）：0、未处理；2、已处理',
  `group_id` varchar(30) DEFAULT NULL COMMENT '锦标赛 组ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='pv,uv 对局日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `played_game_user`
--

DROP TABLE IF EXISTS `played_game_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `played_game_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_uid_gid` (`uid`,`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户玩过的游戏日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `played_games`
--

DROP TABLE IF EXISTS `played_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `played_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL COMMENT '游戏ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `e_time` int(11) DEFAULT NULL COMMENT '游戏结束时间',
  `src` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户点击游戏日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `point_log`
--

DROP TABLE IF EXISTS `point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL COMMENT '数量',
  `type` varchar(50) DEFAULT NULL COMMENT '调用者的KEY',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注描述',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `opt` tinyint(1) DEFAULT NULL COMMENT '1加2减',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `popularize`
--

DROP TABLE IF EXISTS `popularize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `popularize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0' COMMENT '推广位id',
  `weight` int(11) NOT NULL DEFAULT '1' COMMENT '权重',
  `game_name` varchar(50) DEFAULT NULL COMMENT '游戏名称',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `start_launch_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始投放时间',
  `end_launch_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束投放时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1投放中，2投放结束 0无效',
  `played_num` int(11) NOT NULL DEFAULT '0',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `background_color` varchar(255) DEFAULT NULL COMMENT '背景色',
  `game_link` varchar(255) DEFAULT NULL COMMENT '游戏链接',
  `is_inside` tinyint(1) DEFAULT NULL COMMENT '1内部游戏2外部游戏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推广';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `popularize_column`
--

DROP TABLE IF EXISTS `popularize_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `popularize_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推广栏位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `publish_ad`
--

DROP TABLE IF EXISTS `publish_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publish_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL COMMENT '游戏ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `title` varchar(256) DEFAULT NULL COMMENT '广告位名称',
  `status` tinyint(1) DEFAULT NULL COMMENT '广告位状态 1审核中 2暂停 3有效 4删除 5审核未通过',
  `a_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL,
  `advertise_type` tinyint(1) DEFAULT '0' COMMENT '广告位类型（1全屏视频，2激励视频，3Banner）',
  `adtoutiao_id` varchar(64) DEFAULT NULL COMMENT '穿山甲广告位ID',
  `direction` tinyint(2) DEFAULT '0' COMMENT '广告展示方向（1横屏，2竖屏）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='发行广告位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `publish_games`
--

DROP TABLE IF EXISTS `publish_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publish_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(3) DEFAULT NULL COMMENT '游戏分类id',
  `name` varchar(50) NOT NULL COMMENT '游戏名称',
  `screen` tinyint(1) DEFAULT NULL COMMENT '横竖屏1横屏2竖屏',
  `summary` text COMMENT '简介',
  `app_secret` varchar(255) NOT NULL COMMENT '应用秘钥',
  `uid` int(11) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL COMMENT '游戏信息最后修改时间',
  `icon_256` varchar(255) NOT NULL DEFAULT '',
  `os` tinyint(1) DEFAULT '0' COMMENT '類型（1安卓2IOS）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='安卓/ios游戏列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `push_log`
--

DROP TABLE IF EXISTS `push_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `push_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `return_info` text NOT NULL COMMENT '3方返回信息',
  `type` tinyint(4) NOT NULL COMMENT '1信鸽',
  `catetory` tinyint(4) NOT NULL COMMENT '1单发2群发3TAG',
  `a_time` int(11) NOT NULL,
  `device` tinyint(4) NOT NULL COMMENT '1安卓2IOS',
  `msg_type` tinyint(4) NOT NULL COMMENT '1普通2透传',
  `third_token` varchar(100) NOT NULL COMMENT '3方TOKEN',
  `uid` int(11) NOT NULL,
  `custom_data` varchar(255) NOT NULL COMMENT '自定义的数组结构',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推送消息(小米/华为)日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `random_luck_box`
--

DROP TABLE IF EXISTS `random_luck_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `random_luck_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) DEFAULT NULL COMMENT '1步奖励2步分享微信3步分享QQ奖励',
  `a_time` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='随机幸福宝箱 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `red_point`
--

DROP TABLE IF EXISTS `red_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `red_point` (
  `id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1有红点2没有'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report_user`
--

DROP TABLE IF EXISTS `report_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) NOT NULL DEFAULT '0' COMMENT '举报人uid',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被举报人uid',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1未处理2已处理',
  `content` text NOT NULL COMMENT '内容',
  `a_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='举报用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `power` text COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员-角色权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` varchar(50) DEFAULT NULL COMMENT '房间ID',
  `from_uid` int(11) DEFAULT NULL COMMENT '用户1',
  `to_uid` int(11) DEFAULT NULL COMMENT '用户2',
  `type` tinyint(1) DEFAULT NULL COMMENT '1指定游戏2随机游戏3锦标赛',
  `status` tinyint(1) DEFAULT NULL COMMENT '1等待2已开始3已结束',
  `result` tinyint(1) DEFAULT NULL COMMENT '0未处理1赢2输3平',
  `game_id` int(11) DEFAULT NULL COMMENT '游戏ID',
  `robot_level` int(11) DEFAULT NULL COMMENT '机器人AI等级',
  `game_start_time` int(11) DEFAULT NULL COMMENT '游戏开始时间',
  `game_end_time` int(11) DEFAULT NULL COMMENT '游戏结束时间',
  `game_sign_time` int(11) DEFAULT NULL COMMENT '游戏报名时间',
  `round` int(11) DEFAULT NULL COMMENT '锦标赛-轮次',
  `room_level_id` int(11) DEFAULT NULL COMMENT '锦标赛-房间等级',
  `score` int(11) DEFAULT NULL COMMENT '成绩',
  `end_timer_id` int(11) DEFAULT NULL COMMENT '结算定时器ID',
  `robot_timer` int(11) DEFAULT NULL COMMENT 'AI机器人定时器ID',
  `from_leave_time` int(11) DEFAULT NULL COMMENT '用户1离开房间时间',
  `to_leave_time` int(11) DEFAULT NULL COMMENT '用户2离开房间时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL COMMENT '1指定好友2分享平台',
  `uid` int(11) DEFAULT NULL,
  `platform` tinyint(1) DEFAULT NULL COMMENT '平台1facebook2whatApp',
  `content` text,
  `a_time` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL COMMENT '分享的游戏ID',
  `to_uid` int(11) DEFAULT NULL COMMENT '接收者',
  `platform_method` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1指定好友2朋友圈',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户分享日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `share_game_cnt`
--

DROP TABLE IF EXISTS `share_game_cnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_game_cnt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL COMMENT '游戏id',
  `platform` int(11) DEFAULT NULL COMMENT '平台,微信QQ',
  `platform_method` int(11) DEFAULT NULL COMMENT '好友朋友圈',
  `share_path` int(11) NOT NULL COMMENT '分享路径（74：微信好友，75：微信朋友圈，76：QQ好友，77：QQ空间）',
  `people` int(11) DEFAULT '0' COMMENT '分享人数',
  `num` int(11) DEFAULT '0' COMMENT '分享次数',
  `click` int(11) DEFAULT '0' COMMENT '点击数',
  `login` int(11) DEFAULT '0' COMMENT '登陆数',
  `download` int(11) DEFAULT '0' COMMENT '下载数',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统计游戏分享汇总数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_log`
--

DROP TABLE IF EXISTS `sms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) DEFAULT NULL COMMENT '外键ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `content` varchar(255) DEFAULT NULL COMMENT '短信内容',
  `status` tinyint(4) DEFAULT NULL COMMENT '0等待发送1成功2失败',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `IP` char(15) DEFAULT NULL COMMENT 'IP地址',
  `err_info` varchar(255) DEFAULT NULL COMMENT '发送失败原因',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `type` tinyint(1) DEFAULT NULL COMMENT '1正常2预警',
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信发送日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_rule`
--

DROP TABLE IF EXISTS `sms_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `type` tinyint(1) DEFAULT NULL COMMENT '1正常2报警',
  `day_times` int(11) DEFAULT NULL COMMENT '一天最多发送次数',
  `period` int(11) DEFAULT NULL COMMENT '周期时间，秒',
  `period_times` int(11) DEFAULT NULL COMMENT '周期时间内，发送次数',
  `third_id` int(11) DEFAULT NULL COMMENT '3方模板ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信发送规则限制';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `task_config`
--

DROP TABLE IF EXISTS `task_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题描述',
  `goldcoin` int(11) DEFAULT '0' COMMENT '奖励金币',
  `point` int(11) DEFAULT '0' COMMENT '奖励积分',
  `type` tinyint(4) DEFAULT NULL COMMENT '1日常2成长',
  `step_num` tinyint(2) DEFAULT '0' COMMENT '完成任务总共几步',
  `type_sub` tinyint(4) DEFAULT NULL COMMENT '1固定2随机',
  `is_off` tinyint(1) DEFAULT '0' COMMENT '0正常1关闭',
  `game_id` int(11) DEFAULT NULL COMMENT '游戏ID',
  `content` varchar(255) DEFAULT NULL COMMENT '描述内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `task_user`
--

DROP TABLE IF EXISTS `task_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `task_id` int(11) DEFAULT NULL COMMENT '主任务ID',
  `step` int(11) DEFAULT NULL COMMENT '当前完成了几步',
  `done_time` int(11) DEFAULT '0' COMMENT '完成时间',
  `goldcoin` int(11) DEFAULT NULL COMMENT '奖励金币',
  `point` int(11) DEFAULT NULL COMMENT '奖励积分',
  `reward_time` int(11) DEFAULT '0' COMMENT '领取时间',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `s_time` int(11) DEFAULT NULL COMMENT '有效期开始',
  `e_time` int(11) DEFAULT NULL COMMENT '有效期结束',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `task_config_type` tinyint(1) DEFAULT '0' COMMENT 'config主类型',
  `task_config_type_sub` tinyint(1) DEFAULT NULL COMMENT 'config子类型',
  `hook_info` varchar(255) DEFAULT NULL COMMENT '钩子的一些信息',
  `total_step` int(11) DEFAULT NULL COMMENT '任务总步数',
  `game_id` int(11) DEFAULT NULL COMMENT '游戏ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `university` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(20) DEFAULT NULL COMMENT '学校标识码',
  `dep` varchar(100) DEFAULT NULL COMMENT '主管部门',
  `type` varchar(50) DEFAULT NULL COMMENT '民办/中外合',
  `city` varchar(100) DEFAULT NULL COMMENT '所在城市',
  `name` varchar(255) DEFAULT NULL COMMENT '大学名称',
  `province` varchar(50) DEFAULT NULL COMMENT '所在省',
  `level` varchar(50) DEFAULT NULL COMMENT '专/本',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `ps` char(32) DEFAULT NULL COMMENT 'md5密码',
  `third_uid` varchar(100) DEFAULT NULL COMMENT '第3方UID',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `goldcoin` int(11) DEFAULT NULL COMMENT '金币',
  `point` int(11) DEFAULT NULL COMMENT '积分',
  `diamond` int(11) DEFAULT NULL COMMENT '钻石',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `type` tinyint(1) DEFAULT NULL COMMENT '注册方式:1手机2微信3QQ4邮箱5用户名6facebook7微博8google9twitter10游客',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别0未知1男2女',
  `birthday` int(11) DEFAULT NULL COMMENT '出生日期',
  `real_name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `id_card_no` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `country` varchar(20) DEFAULT NULL COMMENT '国家',
  `province` varchar(50) DEFAULT NULL COMMENT '省',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `tags` text COMMENT '标签-暂不用',
  `school` varchar(100) DEFAULT NULL COMMENT '毕业大学',
  `education` tinyint(4) DEFAULT NULL COMMENT '0未知1博士2硕士3研究生4本科5专科6高中',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `vip_endtime` int(11) DEFAULT NULL COMMENT 'VIP到期时间',
  `push_token` varchar(50) DEFAULT NULL COMMENT '推送TOKEN',
  `push_type` tinyint(4) DEFAULT NULL COMMENT '推送SDK类型',
  `push_status` tinyint(4) DEFAULT NULL COMMENT '推送状态1正常2关闭',
  `geo_code` varchar(50) DEFAULT NULL COMMENT 'GPS计算码',
  `is_online` tinyint(1) DEFAULT NULL COMMENT '1在线2离线',
  `robot` tinyint(1) DEFAULT NULL COMMENT '1是2不是',
  `hidden_gps` tinyint(1) DEFAULT NULL COMMENT '隐藏GPs.1正常2关闭',
  `qq_uid` varchar(100) DEFAULT NULL COMMENT 'QQ用户ID',
  `wechat_uid` varchar(100) DEFAULT NULL COMMENT '微信用户ID',
  `uid_str` varchar(50) NOT NULL COMMENT 'UID转字符串加密',
  `login_time` int(11) NOT NULL COMMENT '登陆时间',
  `goldcoin_sum` int(11) DEFAULT NULL COMMENT '累计获取金币数',
  `goldcoin_sum_less` int(11) DEFAULT NULL COMMENT '累计消耗金币数',
  `wx_union_id` varchar(100) DEFAULT NULL COMMENT '微信联合UID',
  `qq_union_id` varchar(100) DEFAULT NULL COMMENT 'qq联合UID',
  `facebook_uid` varchar(100) DEFAULT NULL COMMENT '脸书uid',
  `google_uid` varchar(100) DEFAULT NULL COMMENT '谷歌uid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_active_log`
--

DROP TABLE IF EXISTS `user_active_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_active_log` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `a_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `playgame_gold` varchar(50) NOT NULL COMMENT '玩游戏获取的金币',
  `playgame_time` varchar(50) NOT NULL COMMENT '玩游戏总时长',
  `sum_gold` varchar(50) NOT NULL COMMENT '当日获取总金币数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户活跃记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_black`
--

DROP TABLE IF EXISTS `user_black`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_black` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `mome` varchar(255) DEFAULT NULL COMMENT '备注',
  `type` tinyint(1) DEFAULT NULL COMMENT '1访问次数频繁2涉黄',
  `status` tinyint(1) DEFAULT NULL COMMENT '1正常2禁止访问',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `expire_time` int(11) DEFAULT NULL COMMENT '失效时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户黑名单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_block_log`
--

DROP TABLE IF EXISTS `user_block_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_block_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `detail` varchar(255) DEFAULT NULL COMMENT '封停原因（解封不填）',
  `type` tinyint(1) DEFAULT NULL COMMENT '操作（1封停，2解封）',
  `duration` int(11) DEFAULT NULL COMMENT '封停时长',
  `admin` int(11) DEFAULT NULL COMMENT '操作人',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='封停账号日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `channel` varchar(50) DEFAULT NULL COMMENT '推广渠道',
  `company` varchar(50) DEFAULT NULL COMMENT '公司',
  `telphone` varchar(50) DEFAULT NULL COMMENT '座机',
  `fax` varchar(50) DEFAULT NULL COMMENT '传真',
  `invite_code` varchar(50) DEFAULT NULL COMMENT '师傅邀请码',
  `sign` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `summary` text COMMENT '简介',
  `avatars` text COMMENT '头像集合',
  `language` varchar(25) DEFAULT NULL COMMENT '语言包',
  `im_tencent_sign` text COMMENT 'IM用户签名验证',
  `invite_uid` int(11) NOT NULL COMMENT '邀请人的UID',
  `push_xinge_touken` text NOT NULL COMMENT '信鸽PUSh-token',
  `money_token` varchar(50) DEFAULT NULL COMMENT '提现验证口令',
  `feidou_uid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户详细基础信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_gift`
--

DROP TABLE IF EXISTS `user_gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) DEFAULT NULL COMMENT '赠送者',
  `to_uid` int(11) DEFAULT NULL COMMENT '收取者uid',
  `status` int(11) DEFAULT '0' COMMENT '0 未领取，1 已领取',
  `gift_id` int(11) DEFAULT NULL COMMENT '礼物ID',
  `gift_num` int(11) DEFAULT NULL COMMENT '礼物数量',
  `order_id` int(11) DEFAULT NULL COMMENT '金币消费订单id',
  `created_at` int(11) DEFAULT NULL COMMENT '添加时间',
  `is_cron_process` tinyint(1) DEFAULT '0' COMMENT '0未处理1已处理0未处理1已处理2出错',
  `type_key` varchar(50) DEFAULT NULL COMMENT '分类标识',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户赠礼';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_gift_tag`
--

DROP TABLE IF EXISTS `user_gift_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_gift_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_time` int(11) DEFAULT NULL COMMENT '期限-起始',
  `e_time` int(11) DEFAULT NULL COMMENT '期限-结束',
  `a_time` int(11) DEFAULT NULL COMMENT '记录添加时间',
  `tag_id` int(11) DEFAULT NULL COMMENT 'gift_tag_config  id',
  `tag_title` char(100) DEFAULT NULL COMMENT '冗余字段 gift_tag_config title',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `status` tinyint(1) DEFAULT '0' COMMENT '0正常1失效',
  `last_u_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `order_diamond_id` int(11) DEFAULT NULL COMMENT '购买钻石订单ID',
  `task_e_time` int(11) DEFAULT '0' COMMENT '该任务的有效期-结束',
  `task_s_time` int(11) DEFAULT '0' COMMENT '该任务的有效期-起始',
  `sex` int(11) NOT NULL COMMENT '用户性别',
  `gift_top_day` int(11) DEFAULT NULL COMMENT '哪一天收花最多，成为花魁',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户称号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_money_coupon`
--

DROP TABLE IF EXISTS `user_money_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_money_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` varchar(50) DEFAULT NULL COMMENT '人民币',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `valid_time` int(11) DEFAULT NULL COMMENT '生效时间',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `use_time` int(11) DEFAULT NULL COMMENT '使用时间',
  `expire_time` int(11) DEFAULT NULL COMMENT '过期时间',
  `element_id` int(11) DEFAULT NULL COMMENT '优惠卷配置ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户提现卷';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_sign`
--

DROP TABLE IF EXISTS `user_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  `reward` varchar(255) DEFAULT NULL COMMENT '领取的奖励',
  `day_start_time` int(11) DEFAULT NULL COMMENT '签到当天的开始时间',
  `sign_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_sys_contact`
--

DROP TABLE IF EXISTS `user_sys_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_sys_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cellphone` varchar(50) DEFAULT NULL COMMENT '手机号',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户OS里的联系人列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_upgrade`
--

DROP TABLE IF EXISTS `user_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_upgrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ori_exp` int(11) DEFAULT NULL COMMENT '原经验值',
  `ori_level` int(11) DEFAULT NULL COMMENT '原等级',
  `up_level` int(11) DEFAULT NULL COMMENT '升级后的等级',
  `up_exp` int(11) DEFAULT NULL COMMENT '升级后的经验值',
  `type_map_id` varchar(255) DEFAULT NULL,
  `a_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `type` tinyint(1) DEFAULT NULL COMMENT '1对战结束2撩一下3任务增加积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户升级日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `verifier_code`
--

DROP TABLE IF EXISTS `verifier_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifier_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1正常2已验证3失效',
  `a_time` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '1手机2邮箱',
  `addr` varbinary(20) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `expire_time` int(11) DEFAULT NULL,
  `cate` tinyint(1) DEFAULT NULL COMMENT '1手机回密码2邮箱找回密码3绑定邮箱4绑定手机',
  `rule_id` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信/邮件，验证码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt`
--

DROP TABLE IF EXISTS `ws_cnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` char(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) NOT NULL COMMENT ' 开始时间',
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log`
--

DROP TABLE IF EXISTS `ws_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `a_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT NULL COMMENT '连接ID',
  `ip` char(15) NOT NULL,
  `device_id` varchar(100) NOT NULL COMMENT '设置ID',
  `app_version` varchar(50) NOT NULL COMMENT 'APP版本',
  `reg_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-03 14:55:10

DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip` (
  `start_ip` varchar(45) DEFAULT NULL COMMENT '起始ip',
  `end_ip` varchar(45) DEFAULT NULL COMMENT '结束ip',
  `start_num` bigint(20) DEFAULT NULL COMMENT '起始编号',
  `end_num` bigint(20) DEFAULT NULL COMMENT '结束编号',
  `continent` varchar(45) DEFAULT NULL COMMENT '洲名称',
  `country` varchar(45) DEFAULT NULL COMMENT '国家名称',
  `province` varchar(45) DEFAULT NULL COMMENT '省份名称',
  `city` varchar(45) DEFAULT NULL COMMENT '城市名称',
  `district` varchar(45) DEFAULT NULL COMMENT '乡镇名称',
  `isp` varchar(45) DEFAULT NULL COMMENT '运营商',
  `area_code` varchar(45) DEFAULT NULL COMMENT '区域码',
  `country_en` varchar(45) DEFAULT NULL COMMENT '国家名称英文',
  `area_abb` varchar(45) DEFAULT NULL COMMENT '国家英文缩写',
  `lal` varchar(45) DEFAULT NULL COMMENT '经纬度'
) ENGINE=MyISAM DEFAULT CHARSET='utf8' COMMENT='ip地址表';