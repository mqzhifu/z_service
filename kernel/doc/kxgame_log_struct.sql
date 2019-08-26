-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 10.10.7.60    Database: kxgame_log
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
-- Table structure for table `access_log_20190425`
--

DROP TABLE IF EXISTS `access_log_20190425`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190425` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190426`
--

DROP TABLE IF EXISTS `access_log_20190426`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190426` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190427`
--

DROP TABLE IF EXISTS `access_log_20190427`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190427` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190428`
--

DROP TABLE IF EXISTS `access_log_20190428`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190428` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190429`
--

DROP TABLE IF EXISTS `access_log_20190429`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190429` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190430`
--

DROP TABLE IF EXISTS `access_log_20190430`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190430` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190501`
--

DROP TABLE IF EXISTS `access_log_20190501`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190501` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190502`
--

DROP TABLE IF EXISTS `access_log_20190502`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190502` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190503`
--

DROP TABLE IF EXISTS `access_log_20190503`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190503` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190504`
--

DROP TABLE IF EXISTS `access_log_20190504`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190504` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190505`
--

DROP TABLE IF EXISTS `access_log_20190505`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190505` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190506`
--

DROP TABLE IF EXISTS `access_log_20190506`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190506` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190507`
--

DROP TABLE IF EXISTS `access_log_20190507`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190507` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190508`
--

DROP TABLE IF EXISTS `access_log_20190508`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190508` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190509`
--

DROP TABLE IF EXISTS `access_log_20190509`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190509` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190510`
--

DROP TABLE IF EXISTS `access_log_20190510`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190510` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190511`
--

DROP TABLE IF EXISTS `access_log_20190511`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190511` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190512`
--

DROP TABLE IF EXISTS `access_log_20190512`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190512` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190513`
--

DROP TABLE IF EXISTS `access_log_20190513`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190513` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190514`
--

DROP TABLE IF EXISTS `access_log_20190514`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190514` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190515`
--

DROP TABLE IF EXISTS `access_log_20190515`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190515` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190516`
--

DROP TABLE IF EXISTS `access_log_20190516`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190516` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190517`
--

DROP TABLE IF EXISTS `access_log_20190517`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190517` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190518`
--

DROP TABLE IF EXISTS `access_log_20190518`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190518` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190519`
--

DROP TABLE IF EXISTS `access_log_20190519`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190519` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190520`
--

DROP TABLE IF EXISTS `access_log_20190520`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190520` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190521`
--

DROP TABLE IF EXISTS `access_log_20190521`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190521` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190522`
--

DROP TABLE IF EXISTS `access_log_20190522`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190522` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190523`
--

DROP TABLE IF EXISTS `access_log_20190523`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190523` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190524`
--

DROP TABLE IF EXISTS `access_log_20190524`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190524` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190525`
--

DROP TABLE IF EXISTS `access_log_20190525`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190525` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190526`
--

DROP TABLE IF EXISTS `access_log_20190526`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190526` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190527`
--

DROP TABLE IF EXISTS `access_log_20190527`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190527` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190528`
--

DROP TABLE IF EXISTS `access_log_20190528`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190528` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190529`
--

DROP TABLE IF EXISTS `access_log_20190529`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190529` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190530`
--

DROP TABLE IF EXISTS `access_log_20190530`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190530` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190531`
--

DROP TABLE IF EXISTS `access_log_20190531`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190531` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190601`
--

DROP TABLE IF EXISTS `access_log_20190601`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190601` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190602`
--

DROP TABLE IF EXISTS `access_log_20190602`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190602` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190603`
--

DROP TABLE IF EXISTS `access_log_20190603`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190603` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190604`
--

DROP TABLE IF EXISTS `access_log_20190604`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190604` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190605`
--

DROP TABLE IF EXISTS `access_log_20190605`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190605` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190606`
--

DROP TABLE IF EXISTS `access_log_20190606`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190606` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190607`
--

DROP TABLE IF EXISTS `access_log_20190607`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190607` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190608`
--

DROP TABLE IF EXISTS `access_log_20190608`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190608` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190609`
--

DROP TABLE IF EXISTS `access_log_20190609`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190609` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190610`
--

DROP TABLE IF EXISTS `access_log_20190610`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190610` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190611`
--

DROP TABLE IF EXISTS `access_log_20190611`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190611` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190612`
--

DROP TABLE IF EXISTS `access_log_20190612`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190612` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190613`
--

DROP TABLE IF EXISTS `access_log_20190613`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190613` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190614`
--

DROP TABLE IF EXISTS `access_log_20190614`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190614` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190615`
--

DROP TABLE IF EXISTS `access_log_20190615`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190615` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190616`
--

DROP TABLE IF EXISTS `access_log_20190616`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190616` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190617`
--

DROP TABLE IF EXISTS `access_log_20190617`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190617` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190618`
--

DROP TABLE IF EXISTS `access_log_20190618`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190618` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190619`
--

DROP TABLE IF EXISTS `access_log_20190619`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190619` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190620`
--

DROP TABLE IF EXISTS `access_log_20190620`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190620` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190621`
--

DROP TABLE IF EXISTS `access_log_20190621`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190621` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190622`
--

DROP TABLE IF EXISTS `access_log_20190622`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190622` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190623`
--

DROP TABLE IF EXISTS `access_log_20190623`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190623` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190624`
--

DROP TABLE IF EXISTS `access_log_20190624`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190624` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190625`
--

DROP TABLE IF EXISTS `access_log_20190625`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190625` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190626`
--

DROP TABLE IF EXISTS `access_log_20190626`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190626` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190627`
--

DROP TABLE IF EXISTS `access_log_20190627`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190627` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190628`
--

DROP TABLE IF EXISTS `access_log_20190628`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190628` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190629`
--

DROP TABLE IF EXISTS `access_log_20190629`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190629` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190630`
--

DROP TABLE IF EXISTS `access_log_20190630`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190630` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190701`
--

DROP TABLE IF EXISTS `access_log_20190701`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190701` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190702`
--

DROP TABLE IF EXISTS `access_log_20190702`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190702` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190703`
--

DROP TABLE IF EXISTS `access_log_20190703`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190703` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190704`
--

DROP TABLE IF EXISTS `access_log_20190704`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190704` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190705`
--

DROP TABLE IF EXISTS `access_log_20190705`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190705` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190706`
--

DROP TABLE IF EXISTS `access_log_20190706`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190706` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190707`
--

DROP TABLE IF EXISTS `access_log_20190707`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190707` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190708`
--

DROP TABLE IF EXISTS `access_log_20190708`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190708` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190709`
--

DROP TABLE IF EXISTS `access_log_20190709`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190709` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190710`
--

DROP TABLE IF EXISTS `access_log_20190710`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190710` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190711`
--

DROP TABLE IF EXISTS `access_log_20190711`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190711` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190712`
--

DROP TABLE IF EXISTS `access_log_20190712`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190712` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190713`
--

DROP TABLE IF EXISTS `access_log_20190713`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190713` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190714`
--

DROP TABLE IF EXISTS `access_log_20190714`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190714` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190715`
--

DROP TABLE IF EXISTS `access_log_20190715`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190715` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190716`
--

DROP TABLE IF EXISTS `access_log_20190716`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190716` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190717`
--

DROP TABLE IF EXISTS `access_log_20190717`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190717` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190718`
--

DROP TABLE IF EXISTS `access_log_20190718`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190718` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190719`
--

DROP TABLE IF EXISTS `access_log_20190719`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190719` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190720`
--

DROP TABLE IF EXISTS `access_log_20190720`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190720` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190721`
--

DROP TABLE IF EXISTS `access_log_20190721`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190721` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190722`
--

DROP TABLE IF EXISTS `access_log_20190722`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190722` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190723`
--

DROP TABLE IF EXISTS `access_log_20190723`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190723` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190724`
--

DROP TABLE IF EXISTS `access_log_20190724`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190724` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190725`
--

DROP TABLE IF EXISTS `access_log_20190725`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190725` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190726`
--

DROP TABLE IF EXISTS `access_log_20190726`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190726` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190727`
--

DROP TABLE IF EXISTS `access_log_20190727`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190727` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190728`
--

DROP TABLE IF EXISTS `access_log_20190728`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190728` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190729`
--

DROP TABLE IF EXISTS `access_log_20190729`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190729` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190730`
--

DROP TABLE IF EXISTS `access_log_20190730`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190730` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190731`
--

DROP TABLE IF EXISTS `access_log_20190731`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190731` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190801`
--

DROP TABLE IF EXISTS `access_log_20190801`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190801` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190802`
--

DROP TABLE IF EXISTS `access_log_20190802`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190802` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190803`
--

DROP TABLE IF EXISTS `access_log_20190803`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190803` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190804`
--

DROP TABLE IF EXISTS `access_log_20190804`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190804` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190805`
--

DROP TABLE IF EXISTS `access_log_20190805`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190805` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190806`
--

DROP TABLE IF EXISTS `access_log_20190806`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190806` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190807`
--

DROP TABLE IF EXISTS `access_log_20190807`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190807` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190808`
--

DROP TABLE IF EXISTS `access_log_20190808`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190808` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190809`
--

DROP TABLE IF EXISTS `access_log_20190809`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190809` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190810`
--

DROP TABLE IF EXISTS `access_log_20190810`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190810` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190811`
--

DROP TABLE IF EXISTS `access_log_20190811`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190811` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190812`
--

DROP TABLE IF EXISTS `access_log_20190812`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190812` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190813`
--

DROP TABLE IF EXISTS `access_log_20190813`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190813` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190814`
--

DROP TABLE IF EXISTS `access_log_20190814`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190814` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190815`
--

DROP TABLE IF EXISTS `access_log_20190815`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190815` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190816`
--

DROP TABLE IF EXISTS `access_log_20190816`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190816` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190817`
--

DROP TABLE IF EXISTS `access_log_20190817`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190817` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190818`
--

DROP TABLE IF EXISTS `access_log_20190818`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190818` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190819`
--

DROP TABLE IF EXISTS `access_log_20190819`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190819` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190820`
--

DROP TABLE IF EXISTS `access_log_20190820`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190820` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190821`
--

DROP TABLE IF EXISTS `access_log_20190821`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190821` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190822`
--

DROP TABLE IF EXISTS `access_log_20190822`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190822` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190823`
--

DROP TABLE IF EXISTS `access_log_20190823`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190823` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190824`
--

DROP TABLE IF EXISTS `access_log_20190824`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190824` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190825`
--

DROP TABLE IF EXISTS `access_log_20190825`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190825` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190826`
--

DROP TABLE IF EXISTS `access_log_20190826`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190826` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190827`
--

DROP TABLE IF EXISTS `access_log_20190827`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190827` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190828`
--

DROP TABLE IF EXISTS `access_log_20190828`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190828` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190829`
--

DROP TABLE IF EXISTS `access_log_20190829`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190829` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190830`
--

DROP TABLE IF EXISTS `access_log_20190830`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190830` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190831`
--

DROP TABLE IF EXISTS `access_log_20190831`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190831` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190901`
--

DROP TABLE IF EXISTS `access_log_20190901`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190901` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190902`
--

DROP TABLE IF EXISTS `access_log_20190902`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190902` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190903`
--

DROP TABLE IF EXISTS `access_log_20190903`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190903` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190904`
--

DROP TABLE IF EXISTS `access_log_20190904`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190904` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190905`
--

DROP TABLE IF EXISTS `access_log_20190905`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190905` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190906`
--

DROP TABLE IF EXISTS `access_log_20190906`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190906` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190907`
--

DROP TABLE IF EXISTS `access_log_20190907`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190907` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190908`
--

DROP TABLE IF EXISTS `access_log_20190908`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190908` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190909`
--

DROP TABLE IF EXISTS `access_log_20190909`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190909` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190910`
--

DROP TABLE IF EXISTS `access_log_20190910`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190910` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190911`
--

DROP TABLE IF EXISTS `access_log_20190911`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190911` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190912`
--

DROP TABLE IF EXISTS `access_log_20190912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190912` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190913`
--

DROP TABLE IF EXISTS `access_log_20190913`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190913` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190914`
--

DROP TABLE IF EXISTS `access_log_20190914`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190914` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190915`
--

DROP TABLE IF EXISTS `access_log_20190915`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190915` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190916`
--

DROP TABLE IF EXISTS `access_log_20190916`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190916` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190917`
--

DROP TABLE IF EXISTS `access_log_20190917`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190917` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190918`
--

DROP TABLE IF EXISTS `access_log_20190918`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190918` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190919`
--

DROP TABLE IF EXISTS `access_log_20190919`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190919` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190920`
--

DROP TABLE IF EXISTS `access_log_20190920`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190920` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190921`
--

DROP TABLE IF EXISTS `access_log_20190921`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190921` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190922`
--

DROP TABLE IF EXISTS `access_log_20190922`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190922` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190923`
--

DROP TABLE IF EXISTS `access_log_20190923`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190923` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190924`
--

DROP TABLE IF EXISTS `access_log_20190924`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190924` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190925`
--

DROP TABLE IF EXISTS `access_log_20190925`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190925` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190926`
--

DROP TABLE IF EXISTS `access_log_20190926`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190926` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190927`
--

DROP TABLE IF EXISTS `access_log_20190927`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190927` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190928`
--

DROP TABLE IF EXISTS `access_log_20190928`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190928` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190929`
--

DROP TABLE IF EXISTS `access_log_20190929`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190929` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20190930`
--

DROP TABLE IF EXISTS `access_log_20190930`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20190930` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191001`
--

DROP TABLE IF EXISTS `access_log_20191001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191001` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191002`
--

DROP TABLE IF EXISTS `access_log_20191002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191002` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191003`
--

DROP TABLE IF EXISTS `access_log_20191003`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191003` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191004`
--

DROP TABLE IF EXISTS `access_log_20191004`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191004` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191005`
--

DROP TABLE IF EXISTS `access_log_20191005`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191005` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191006`
--

DROP TABLE IF EXISTS `access_log_20191006`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191006` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191007`
--

DROP TABLE IF EXISTS `access_log_20191007`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191007` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191008`
--

DROP TABLE IF EXISTS `access_log_20191008`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191008` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191009`
--

DROP TABLE IF EXISTS `access_log_20191009`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191009` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191010`
--

DROP TABLE IF EXISTS `access_log_20191010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191010` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191011`
--

DROP TABLE IF EXISTS `access_log_20191011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191011` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191012`
--

DROP TABLE IF EXISTS `access_log_20191012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191012` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191013`
--

DROP TABLE IF EXISTS `access_log_20191013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191013` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191014`
--

DROP TABLE IF EXISTS `access_log_20191014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191014` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191015`
--

DROP TABLE IF EXISTS `access_log_20191015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191015` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191016`
--

DROP TABLE IF EXISTS `access_log_20191016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191016` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191017`
--

DROP TABLE IF EXISTS `access_log_20191017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191017` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191018`
--

DROP TABLE IF EXISTS `access_log_20191018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191018` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191019`
--

DROP TABLE IF EXISTS `access_log_20191019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191019` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191020`
--

DROP TABLE IF EXISTS `access_log_20191020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191020` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191021`
--

DROP TABLE IF EXISTS `access_log_20191021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191021` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191022`
--

DROP TABLE IF EXISTS `access_log_20191022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191022` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191023`
--

DROP TABLE IF EXISTS `access_log_20191023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191023` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191024`
--

DROP TABLE IF EXISTS `access_log_20191024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191024` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191025`
--

DROP TABLE IF EXISTS `access_log_20191025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191025` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191026`
--

DROP TABLE IF EXISTS `access_log_20191026`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191026` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191027`
--

DROP TABLE IF EXISTS `access_log_20191027`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191027` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191028`
--

DROP TABLE IF EXISTS `access_log_20191028`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191028` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191029`
--

DROP TABLE IF EXISTS `access_log_20191029`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191029` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191030`
--

DROP TABLE IF EXISTS `access_log_20191030`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191030` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191031`
--

DROP TABLE IF EXISTS `access_log_20191031`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191031` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191101`
--

DROP TABLE IF EXISTS `access_log_20191101`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191101` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191102`
--

DROP TABLE IF EXISTS `access_log_20191102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191102` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191103`
--

DROP TABLE IF EXISTS `access_log_20191103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191103` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191104`
--

DROP TABLE IF EXISTS `access_log_20191104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191104` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191105`
--

DROP TABLE IF EXISTS `access_log_20191105`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191105` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191106`
--

DROP TABLE IF EXISTS `access_log_20191106`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191106` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191107`
--

DROP TABLE IF EXISTS `access_log_20191107`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191107` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191108`
--

DROP TABLE IF EXISTS `access_log_20191108`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191108` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191109`
--

DROP TABLE IF EXISTS `access_log_20191109`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191109` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191110`
--

DROP TABLE IF EXISTS `access_log_20191110`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191110` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191111`
--

DROP TABLE IF EXISTS `access_log_20191111`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191111` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191112`
--

DROP TABLE IF EXISTS `access_log_20191112`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191112` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191113`
--

DROP TABLE IF EXISTS `access_log_20191113`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191113` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191114`
--

DROP TABLE IF EXISTS `access_log_20191114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191114` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191115`
--

DROP TABLE IF EXISTS `access_log_20191115`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191115` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191116`
--

DROP TABLE IF EXISTS `access_log_20191116`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191116` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191117`
--

DROP TABLE IF EXISTS `access_log_20191117`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191117` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191118`
--

DROP TABLE IF EXISTS `access_log_20191118`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191118` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191119`
--

DROP TABLE IF EXISTS `access_log_20191119`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191119` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191120`
--

DROP TABLE IF EXISTS `access_log_20191120`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191120` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191121`
--

DROP TABLE IF EXISTS `access_log_20191121`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191121` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191122`
--

DROP TABLE IF EXISTS `access_log_20191122`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191122` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191123`
--

DROP TABLE IF EXISTS `access_log_20191123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191123` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191124`
--

DROP TABLE IF EXISTS `access_log_20191124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191124` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191125`
--

DROP TABLE IF EXISTS `access_log_20191125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191125` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191126`
--

DROP TABLE IF EXISTS `access_log_20191126`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191126` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191127`
--

DROP TABLE IF EXISTS `access_log_20191127`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191127` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191128`
--

DROP TABLE IF EXISTS `access_log_20191128`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191128` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191129`
--

DROP TABLE IF EXISTS `access_log_20191129`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191129` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191130`
--

DROP TABLE IF EXISTS `access_log_20191130`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191130` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191201`
--

DROP TABLE IF EXISTS `access_log_20191201`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191201` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191202`
--

DROP TABLE IF EXISTS `access_log_20191202`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191202` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191203`
--

DROP TABLE IF EXISTS `access_log_20191203`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191203` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191204`
--

DROP TABLE IF EXISTS `access_log_20191204`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191204` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191205`
--

DROP TABLE IF EXISTS `access_log_20191205`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191205` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191206`
--

DROP TABLE IF EXISTS `access_log_20191206`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191206` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191207`
--

DROP TABLE IF EXISTS `access_log_20191207`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191207` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191208`
--

DROP TABLE IF EXISTS `access_log_20191208`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191208` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191209`
--

DROP TABLE IF EXISTS `access_log_20191209`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191209` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191210`
--

DROP TABLE IF EXISTS `access_log_20191210`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191210` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191211`
--

DROP TABLE IF EXISTS `access_log_20191211`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191211` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191212`
--

DROP TABLE IF EXISTS `access_log_20191212`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191212` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191213`
--

DROP TABLE IF EXISTS `access_log_20191213`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191213` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191214`
--

DROP TABLE IF EXISTS `access_log_20191214`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191214` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191215`
--

DROP TABLE IF EXISTS `access_log_20191215`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191215` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191216`
--

DROP TABLE IF EXISTS `access_log_20191216`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191216` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191217`
--

DROP TABLE IF EXISTS `access_log_20191217`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191217` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191218`
--

DROP TABLE IF EXISTS `access_log_20191218`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191218` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191219`
--

DROP TABLE IF EXISTS `access_log_20191219`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191219` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191220`
--

DROP TABLE IF EXISTS `access_log_20191220`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191220` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191221`
--

DROP TABLE IF EXISTS `access_log_20191221`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191221` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191222`
--

DROP TABLE IF EXISTS `access_log_20191222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191222` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191223`
--

DROP TABLE IF EXISTS `access_log_20191223`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191223` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191224`
--

DROP TABLE IF EXISTS `access_log_20191224`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191224` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191225`
--

DROP TABLE IF EXISTS `access_log_20191225`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191225` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191226`
--

DROP TABLE IF EXISTS `access_log_20191226`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191226` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191227`
--

DROP TABLE IF EXISTS `access_log_20191227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191227` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191228`
--

DROP TABLE IF EXISTS `access_log_20191228`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191228` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191229`
--

DROP TABLE IF EXISTS `access_log_20191229`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191229` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191230`
--

DROP TABLE IF EXISTS `access_log_20191230`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191230` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_log_20191231`
--

DROP TABLE IF EXISTS `access_log_20191231`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_log_20191231` (
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
  `code` int(11) DEFAULT NULL COMMENT 'api返回状态码',
  `return_info` text COMMENT '返回信息',
  `exec_time` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `client_data` text COMMENT '客户端信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录用户登陆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchase_cnt_day`
--

DROP TABLE IF EXISTS `purchase_cnt_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_cnt_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `money` int(11) NOT NULL DEFAULT '0' COMMENT '总收入',
  `first_pay_users` int(11) NOT NULL DEFAULT '0' COMMENT '首次支付用户数',
  `pay_users` int(11) NOT NULL DEFAULT '0' COMMENT '支付用户数',
  `os_type` varchar(20) NOT NULL COMMENT '操作系统类型',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间段 例如2019-04-29的时间戳',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reg_retention_cnt_day`
--

DROP TABLE IF EXISTS `reg_retention_cnt_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_retention_cnt_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `new_user_num` int(11) NOT NULL DEFAULT '0' COMMENT 'day_time日新增量',
  `retention_rate` float(11,2) DEFAULT NULL COMMENT '次日留存率',
  `retention_num` int(11) NOT NULL DEFAULT '0' COMMENT '次日留存量',
  `retention3_rate` float(11,2) DEFAULT NULL COMMENT '三日留存率',
  `retention3_num` int(11) NOT NULL DEFAULT '0' COMMENT '三日留存量',
  `retention7_rate` float(11,2) DEFAULT NULL COMMENT '七日留存率',
  `retention7_num` int(11) NOT NULL DEFAULT '0' COMMENT '七日留存量',
  `day_time` int(11) DEFAULT '0' COMMENT '表示时间点 例如2019-04-29的时间戳',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `u_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `daytime_gid` (`day_time`,`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sign_201904`
--

DROP TABLE IF EXISTS `sign_201904`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_201904` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `uid_INDEX` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sign_201905`
--

DROP TABLE IF EXISTS `sign_201905`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_201905` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `uid_INDEX` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sign_201906`
--

DROP TABLE IF EXISTS `sign_201906`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_201906` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `uid_INDEX` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sign_201907`
--

DROP TABLE IF EXISTS `sign_201907`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_201907` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `uid_INDEX` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sign_201908`
--

DROP TABLE IF EXISTS `sign_201908`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_201908` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `uid_INDEX` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sign_201909`
--

DROP TABLE IF EXISTS `sign_201909`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_201909` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `uid_INDEX` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sign_201910`
--

DROP TABLE IF EXISTS `sign_201910`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_201910` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `uid_INDEX` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sign_201911`
--

DROP TABLE IF EXISTS `sign_201911`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_201911` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `uid_INDEX` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sign_201912`
--

DROP TABLE IF EXISTS `sign_201912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_201912` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `a_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `uid_INDEX` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_201904`
--

DROP TABLE IF EXISTS `ws_cnt_201904`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_201904` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `app_verstion` varchar(255) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `a_time` int(11) DEFAULT '0',
  `goldcoin` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_201905`
--

DROP TABLE IF EXISTS `ws_cnt_201905`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_201905` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `app_verstion` varchar(255) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `a_time` int(11) DEFAULT '0',
  `goldcoin` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_201906`
--

DROP TABLE IF EXISTS `ws_cnt_201906`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_201906` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `app_verstion` varchar(255) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `a_time` int(11) DEFAULT '0',
  `goldcoin` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_201907`
--

DROP TABLE IF EXISTS `ws_cnt_201907`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_201907` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `app_verstion` varchar(255) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `a_time` int(11) DEFAULT '0',
  `goldcoin` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_201908`
--

DROP TABLE IF EXISTS `ws_cnt_201908`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_201908` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `app_verstion` varchar(255) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `a_time` int(11) DEFAULT '0',
  `goldcoin` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_201909`
--

DROP TABLE IF EXISTS `ws_cnt_201909`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_201909` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `app_verstion` varchar(255) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `a_time` int(11) DEFAULT '0',
  `goldcoin` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_201910`
--

DROP TABLE IF EXISTS `ws_cnt_201910`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_201910` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `app_verstion` varchar(255) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `a_time` int(11) DEFAULT '0',
  `goldcoin` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_201911`
--

DROP TABLE IF EXISTS `ws_cnt_201911`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_201911` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `app_verstion` varchar(255) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `a_time` int(11) DEFAULT '0',
  `goldcoin` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_201912`
--

DROP TABLE IF EXISTS `ws_cnt_201912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_201912` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备ID',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `app_verstion` varchar(255) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `a_time` int(11) DEFAULT '0',
  `goldcoin` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_hour_201904`
--

DROP TABLE IF EXISTS `ws_cnt_hour_201904`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_hour_201904` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_user` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `a_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_hour_201905`
--

DROP TABLE IF EXISTS `ws_cnt_hour_201905`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_hour_201905` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_user` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `a_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_hour_201906`
--

DROP TABLE IF EXISTS `ws_cnt_hour_201906`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_hour_201906` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_user` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `a_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_hour_201907`
--

DROP TABLE IF EXISTS `ws_cnt_hour_201907`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_hour_201907` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_user` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `a_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_hour_201908`
--

DROP TABLE IF EXISTS `ws_cnt_hour_201908`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_hour_201908` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_user` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `a_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_hour_201909`
--

DROP TABLE IF EXISTS `ws_cnt_hour_201909`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_hour_201909` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_user` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `a_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_hour_201910`
--

DROP TABLE IF EXISTS `ws_cnt_hour_201910`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_hour_201910` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_user` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `a_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_hour_201911`
--

DROP TABLE IF EXISTS `ws_cnt_hour_201911`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_hour_201911` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_user` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `a_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_cnt_hour_201912`
--

DROP TABLE IF EXISTS `ws_cnt_hour_201912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_cnt_hour_201912` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_user` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `a_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190423`
--

DROP TABLE IF EXISTS `ws_log_20190423`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190423` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190424`
--

DROP TABLE IF EXISTS `ws_log_20190424`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190424` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190425`
--

DROP TABLE IF EXISTS `ws_log_20190425`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190425` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190426`
--

DROP TABLE IF EXISTS `ws_log_20190426`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190426` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190427`
--

DROP TABLE IF EXISTS `ws_log_20190427`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190427` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190428`
--

DROP TABLE IF EXISTS `ws_log_20190428`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190428` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190429`
--

DROP TABLE IF EXISTS `ws_log_20190429`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190429` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190430`
--

DROP TABLE IF EXISTS `ws_log_20190430`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190430` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190501`
--

DROP TABLE IF EXISTS `ws_log_20190501`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190502`
--

DROP TABLE IF EXISTS `ws_log_20190502`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190502` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190503`
--

DROP TABLE IF EXISTS `ws_log_20190503`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190503` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190504`
--

DROP TABLE IF EXISTS `ws_log_20190504`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190504` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190505`
--

DROP TABLE IF EXISTS `ws_log_20190505`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190505` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190506`
--

DROP TABLE IF EXISTS `ws_log_20190506`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190506` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190507`
--

DROP TABLE IF EXISTS `ws_log_20190507`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190507` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190508`
--

DROP TABLE IF EXISTS `ws_log_20190508`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190508` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190509`
--

DROP TABLE IF EXISTS `ws_log_20190509`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190509` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190510`
--

DROP TABLE IF EXISTS `ws_log_20190510`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190510` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190511`
--

DROP TABLE IF EXISTS `ws_log_20190511`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190511` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190512`
--

DROP TABLE IF EXISTS `ws_log_20190512`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190512` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190513`
--

DROP TABLE IF EXISTS `ws_log_20190513`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190513` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190514`
--

DROP TABLE IF EXISTS `ws_log_20190514`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190514` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190515`
--

DROP TABLE IF EXISTS `ws_log_20190515`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190515` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190516`
--

DROP TABLE IF EXISTS `ws_log_20190516`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190516` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190517`
--

DROP TABLE IF EXISTS `ws_log_20190517`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190517` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190518`
--

DROP TABLE IF EXISTS `ws_log_20190518`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190518` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190519`
--

DROP TABLE IF EXISTS `ws_log_20190519`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190519` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190520`
--

DROP TABLE IF EXISTS `ws_log_20190520`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190520` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190521`
--

DROP TABLE IF EXISTS `ws_log_20190521`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190521` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190522`
--

DROP TABLE IF EXISTS `ws_log_20190522`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190522` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190523`
--

DROP TABLE IF EXISTS `ws_log_20190523`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190523` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190524`
--

DROP TABLE IF EXISTS `ws_log_20190524`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190524` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190525`
--

DROP TABLE IF EXISTS `ws_log_20190525`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190525` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190526`
--

DROP TABLE IF EXISTS `ws_log_20190526`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190526` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190527`
--

DROP TABLE IF EXISTS `ws_log_20190527`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190527` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190528`
--

DROP TABLE IF EXISTS `ws_log_20190528`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190528` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190529`
--

DROP TABLE IF EXISTS `ws_log_20190529`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190529` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190530`
--

DROP TABLE IF EXISTS `ws_log_20190530`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190530` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190531`
--

DROP TABLE IF EXISTS `ws_log_20190531`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190531` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190601`
--

DROP TABLE IF EXISTS `ws_log_20190601`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190602`
--

DROP TABLE IF EXISTS `ws_log_20190602`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190602` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190603`
--

DROP TABLE IF EXISTS `ws_log_20190603`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190603` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190604`
--

DROP TABLE IF EXISTS `ws_log_20190604`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190604` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190605`
--

DROP TABLE IF EXISTS `ws_log_20190605`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190605` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190606`
--

DROP TABLE IF EXISTS `ws_log_20190606`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190606` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190607`
--

DROP TABLE IF EXISTS `ws_log_20190607`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190607` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190608`
--

DROP TABLE IF EXISTS `ws_log_20190608`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190608` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190609`
--

DROP TABLE IF EXISTS `ws_log_20190609`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190609` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190610`
--

DROP TABLE IF EXISTS `ws_log_20190610`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190610` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190611`
--

DROP TABLE IF EXISTS `ws_log_20190611`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190611` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190612`
--

DROP TABLE IF EXISTS `ws_log_20190612`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190612` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190613`
--

DROP TABLE IF EXISTS `ws_log_20190613`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190613` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190614`
--

DROP TABLE IF EXISTS `ws_log_20190614`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190614` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190615`
--

DROP TABLE IF EXISTS `ws_log_20190615`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190615` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190616`
--

DROP TABLE IF EXISTS `ws_log_20190616`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190616` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190617`
--

DROP TABLE IF EXISTS `ws_log_20190617`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190617` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190618`
--

DROP TABLE IF EXISTS `ws_log_20190618`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190618` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190619`
--

DROP TABLE IF EXISTS `ws_log_20190619`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190619` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190620`
--

DROP TABLE IF EXISTS `ws_log_20190620`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190620` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190621`
--

DROP TABLE IF EXISTS `ws_log_20190621`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190621` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190622`
--

DROP TABLE IF EXISTS `ws_log_20190622`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190622` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190623`
--

DROP TABLE IF EXISTS `ws_log_20190623`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190623` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190624`
--

DROP TABLE IF EXISTS `ws_log_20190624`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190624` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190625`
--

DROP TABLE IF EXISTS `ws_log_20190625`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190625` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190626`
--

DROP TABLE IF EXISTS `ws_log_20190626`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190626` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190627`
--

DROP TABLE IF EXISTS `ws_log_20190627`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190627` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190628`
--

DROP TABLE IF EXISTS `ws_log_20190628`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190628` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190629`
--

DROP TABLE IF EXISTS `ws_log_20190629`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190629` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190630`
--

DROP TABLE IF EXISTS `ws_log_20190630`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190630` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190701`
--

DROP TABLE IF EXISTS `ws_log_20190701`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190702`
--

DROP TABLE IF EXISTS `ws_log_20190702`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190702` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190703`
--

DROP TABLE IF EXISTS `ws_log_20190703`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190703` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190704`
--

DROP TABLE IF EXISTS `ws_log_20190704`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190704` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190705`
--

DROP TABLE IF EXISTS `ws_log_20190705`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190705` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190706`
--

DROP TABLE IF EXISTS `ws_log_20190706`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190706` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190707`
--

DROP TABLE IF EXISTS `ws_log_20190707`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190707` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190708`
--

DROP TABLE IF EXISTS `ws_log_20190708`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190708` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190709`
--

DROP TABLE IF EXISTS `ws_log_20190709`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190709` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190710`
--

DROP TABLE IF EXISTS `ws_log_20190710`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190710` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190711`
--

DROP TABLE IF EXISTS `ws_log_20190711`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190711` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190712`
--

DROP TABLE IF EXISTS `ws_log_20190712`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190712` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190713`
--

DROP TABLE IF EXISTS `ws_log_20190713`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190713` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190714`
--

DROP TABLE IF EXISTS `ws_log_20190714`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190714` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190715`
--

DROP TABLE IF EXISTS `ws_log_20190715`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190715` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190716`
--

DROP TABLE IF EXISTS `ws_log_20190716`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190716` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190717`
--

DROP TABLE IF EXISTS `ws_log_20190717`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190717` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190718`
--

DROP TABLE IF EXISTS `ws_log_20190718`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190718` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190719`
--

DROP TABLE IF EXISTS `ws_log_20190719`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190719` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190720`
--

DROP TABLE IF EXISTS `ws_log_20190720`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190720` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190721`
--

DROP TABLE IF EXISTS `ws_log_20190721`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190721` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190722`
--

DROP TABLE IF EXISTS `ws_log_20190722`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190722` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190723`
--

DROP TABLE IF EXISTS `ws_log_20190723`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190723` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190724`
--

DROP TABLE IF EXISTS `ws_log_20190724`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190724` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190725`
--

DROP TABLE IF EXISTS `ws_log_20190725`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190725` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190726`
--

DROP TABLE IF EXISTS `ws_log_20190726`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190726` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190727`
--

DROP TABLE IF EXISTS `ws_log_20190727`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190727` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190728`
--

DROP TABLE IF EXISTS `ws_log_20190728`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190728` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190729`
--

DROP TABLE IF EXISTS `ws_log_20190729`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190729` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190730`
--

DROP TABLE IF EXISTS `ws_log_20190730`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190730` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190731`
--

DROP TABLE IF EXISTS `ws_log_20190731`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190731` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190801`
--

DROP TABLE IF EXISTS `ws_log_20190801`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190802`
--

DROP TABLE IF EXISTS `ws_log_20190802`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190802` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190803`
--

DROP TABLE IF EXISTS `ws_log_20190803`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190803` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190804`
--

DROP TABLE IF EXISTS `ws_log_20190804`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190804` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190805`
--

DROP TABLE IF EXISTS `ws_log_20190805`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190805` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190806`
--

DROP TABLE IF EXISTS `ws_log_20190806`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190806` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190807`
--

DROP TABLE IF EXISTS `ws_log_20190807`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190807` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190808`
--

DROP TABLE IF EXISTS `ws_log_20190808`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190808` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190809`
--

DROP TABLE IF EXISTS `ws_log_20190809`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190809` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190810`
--

DROP TABLE IF EXISTS `ws_log_20190810`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190810` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190811`
--

DROP TABLE IF EXISTS `ws_log_20190811`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190811` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190812`
--

DROP TABLE IF EXISTS `ws_log_20190812`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190812` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190813`
--

DROP TABLE IF EXISTS `ws_log_20190813`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190813` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190814`
--

DROP TABLE IF EXISTS `ws_log_20190814`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190814` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190815`
--

DROP TABLE IF EXISTS `ws_log_20190815`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190815` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190816`
--

DROP TABLE IF EXISTS `ws_log_20190816`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190816` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190817`
--

DROP TABLE IF EXISTS `ws_log_20190817`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190817` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190818`
--

DROP TABLE IF EXISTS `ws_log_20190818`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190818` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190819`
--

DROP TABLE IF EXISTS `ws_log_20190819`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190819` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190820`
--

DROP TABLE IF EXISTS `ws_log_20190820`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190820` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190821`
--

DROP TABLE IF EXISTS `ws_log_20190821`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190821` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190822`
--

DROP TABLE IF EXISTS `ws_log_20190822`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190822` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190823`
--

DROP TABLE IF EXISTS `ws_log_20190823`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190823` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190824`
--

DROP TABLE IF EXISTS `ws_log_20190824`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190824` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190825`
--

DROP TABLE IF EXISTS `ws_log_20190825`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190825` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190826`
--

DROP TABLE IF EXISTS `ws_log_20190826`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190826` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190827`
--

DROP TABLE IF EXISTS `ws_log_20190827`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190827` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190828`
--

DROP TABLE IF EXISTS `ws_log_20190828`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190828` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190829`
--

DROP TABLE IF EXISTS `ws_log_20190829`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190829` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190830`
--

DROP TABLE IF EXISTS `ws_log_20190830`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190830` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190831`
--

DROP TABLE IF EXISTS `ws_log_20190831`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190831` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190901`
--

DROP TABLE IF EXISTS `ws_log_20190901`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190902`
--

DROP TABLE IF EXISTS `ws_log_20190902`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190902` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190903`
--

DROP TABLE IF EXISTS `ws_log_20190903`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190903` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190904`
--

DROP TABLE IF EXISTS `ws_log_20190904`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190904` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190905`
--

DROP TABLE IF EXISTS `ws_log_20190905`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190905` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190906`
--

DROP TABLE IF EXISTS `ws_log_20190906`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190906` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190907`
--

DROP TABLE IF EXISTS `ws_log_20190907`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190907` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190908`
--

DROP TABLE IF EXISTS `ws_log_20190908`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190908` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190909`
--

DROP TABLE IF EXISTS `ws_log_20190909`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190909` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190910`
--

DROP TABLE IF EXISTS `ws_log_20190910`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190910` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190911`
--

DROP TABLE IF EXISTS `ws_log_20190911`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190911` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190912`
--

DROP TABLE IF EXISTS `ws_log_20190912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190912` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190913`
--

DROP TABLE IF EXISTS `ws_log_20190913`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190913` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190914`
--

DROP TABLE IF EXISTS `ws_log_20190914`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190914` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190915`
--

DROP TABLE IF EXISTS `ws_log_20190915`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190915` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190916`
--

DROP TABLE IF EXISTS `ws_log_20190916`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190916` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190917`
--

DROP TABLE IF EXISTS `ws_log_20190917`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190917` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190918`
--

DROP TABLE IF EXISTS `ws_log_20190918`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190918` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190919`
--

DROP TABLE IF EXISTS `ws_log_20190919`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190919` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190920`
--

DROP TABLE IF EXISTS `ws_log_20190920`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190920` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190921`
--

DROP TABLE IF EXISTS `ws_log_20190921`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190921` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190922`
--

DROP TABLE IF EXISTS `ws_log_20190922`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190922` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190923`
--

DROP TABLE IF EXISTS `ws_log_20190923`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190923` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190924`
--

DROP TABLE IF EXISTS `ws_log_20190924`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190924` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190925`
--

DROP TABLE IF EXISTS `ws_log_20190925`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190925` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190926`
--

DROP TABLE IF EXISTS `ws_log_20190926`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190926` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190927`
--

DROP TABLE IF EXISTS `ws_log_20190927`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190927` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190928`
--

DROP TABLE IF EXISTS `ws_log_20190928`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190928` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190929`
--

DROP TABLE IF EXISTS `ws_log_20190929`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190929` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20190930`
--

DROP TABLE IF EXISTS `ws_log_20190930`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20190930` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191001`
--

DROP TABLE IF EXISTS `ws_log_20191001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191002`
--

DROP TABLE IF EXISTS `ws_log_20191002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191002` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191003`
--

DROP TABLE IF EXISTS `ws_log_20191003`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191003` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191004`
--

DROP TABLE IF EXISTS `ws_log_20191004`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191004` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191005`
--

DROP TABLE IF EXISTS `ws_log_20191005`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191005` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191006`
--

DROP TABLE IF EXISTS `ws_log_20191006`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191006` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191007`
--

DROP TABLE IF EXISTS `ws_log_20191007`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191007` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191008`
--

DROP TABLE IF EXISTS `ws_log_20191008`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191008` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191009`
--

DROP TABLE IF EXISTS `ws_log_20191009`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191009` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191010`
--

DROP TABLE IF EXISTS `ws_log_20191010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191010` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191011`
--

DROP TABLE IF EXISTS `ws_log_20191011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191011` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191012`
--

DROP TABLE IF EXISTS `ws_log_20191012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191012` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191013`
--

DROP TABLE IF EXISTS `ws_log_20191013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191014`
--

DROP TABLE IF EXISTS `ws_log_20191014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191014` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191015`
--

DROP TABLE IF EXISTS `ws_log_20191015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191015` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191016`
--

DROP TABLE IF EXISTS `ws_log_20191016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191016` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191017`
--

DROP TABLE IF EXISTS `ws_log_20191017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191017` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191018`
--

DROP TABLE IF EXISTS `ws_log_20191018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191018` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191019`
--

DROP TABLE IF EXISTS `ws_log_20191019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191019` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191020`
--

DROP TABLE IF EXISTS `ws_log_20191020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191020` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191021`
--

DROP TABLE IF EXISTS `ws_log_20191021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191021` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191022`
--

DROP TABLE IF EXISTS `ws_log_20191022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191022` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191023`
--

DROP TABLE IF EXISTS `ws_log_20191023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191023` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191024`
--

DROP TABLE IF EXISTS `ws_log_20191024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191024` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191025`
--

DROP TABLE IF EXISTS `ws_log_20191025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191025` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191026`
--

DROP TABLE IF EXISTS `ws_log_20191026`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191026` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191027`
--

DROP TABLE IF EXISTS `ws_log_20191027`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191027` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191028`
--

DROP TABLE IF EXISTS `ws_log_20191028`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191028` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191029`
--

DROP TABLE IF EXISTS `ws_log_20191029`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191029` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191030`
--

DROP TABLE IF EXISTS `ws_log_20191030`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191030` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191031`
--

DROP TABLE IF EXISTS `ws_log_20191031`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191031` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191101`
--

DROP TABLE IF EXISTS `ws_log_20191101`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191102`
--

DROP TABLE IF EXISTS `ws_log_20191102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191102` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191103`
--

DROP TABLE IF EXISTS `ws_log_20191103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191103` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191104`
--

DROP TABLE IF EXISTS `ws_log_20191104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191104` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191105`
--

DROP TABLE IF EXISTS `ws_log_20191105`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191105` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191106`
--

DROP TABLE IF EXISTS `ws_log_20191106`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191106` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191107`
--

DROP TABLE IF EXISTS `ws_log_20191107`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191107` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191108`
--

DROP TABLE IF EXISTS `ws_log_20191108`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191108` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191109`
--

DROP TABLE IF EXISTS `ws_log_20191109`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191109` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191110`
--

DROP TABLE IF EXISTS `ws_log_20191110`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191110` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191111`
--

DROP TABLE IF EXISTS `ws_log_20191111`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191111` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191112`
--

DROP TABLE IF EXISTS `ws_log_20191112`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191112` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191113`
--

DROP TABLE IF EXISTS `ws_log_20191113`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191113` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191114`
--

DROP TABLE IF EXISTS `ws_log_20191114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191114` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191115`
--

DROP TABLE IF EXISTS `ws_log_20191115`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191115` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191116`
--

DROP TABLE IF EXISTS `ws_log_20191116`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191116` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191117`
--

DROP TABLE IF EXISTS `ws_log_20191117`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191117` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191118`
--

DROP TABLE IF EXISTS `ws_log_20191118`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191118` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191119`
--

DROP TABLE IF EXISTS `ws_log_20191119`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191119` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191120`
--

DROP TABLE IF EXISTS `ws_log_20191120`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191120` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191121`
--

DROP TABLE IF EXISTS `ws_log_20191121`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191121` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191122`
--

DROP TABLE IF EXISTS `ws_log_20191122`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191122` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191123`
--

DROP TABLE IF EXISTS `ws_log_20191123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191123` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191124`
--

DROP TABLE IF EXISTS `ws_log_20191124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191124` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191125`
--

DROP TABLE IF EXISTS `ws_log_20191125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191125` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191126`
--

DROP TABLE IF EXISTS `ws_log_20191126`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191126` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191127`
--

DROP TABLE IF EXISTS `ws_log_20191127`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191127` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191128`
--

DROP TABLE IF EXISTS `ws_log_20191128`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191128` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191129`
--

DROP TABLE IF EXISTS `ws_log_20191129`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191129` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191130`
--

DROP TABLE IF EXISTS `ws_log_20191130`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191130` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191201`
--

DROP TABLE IF EXISTS `ws_log_20191201`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191202`
--

DROP TABLE IF EXISTS `ws_log_20191202`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191202` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191203`
--

DROP TABLE IF EXISTS `ws_log_20191203`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191203` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191204`
--

DROP TABLE IF EXISTS `ws_log_20191204`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191204` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191205`
--

DROP TABLE IF EXISTS `ws_log_20191205`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191205` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191206`
--

DROP TABLE IF EXISTS `ws_log_20191206`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191206` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191207`
--

DROP TABLE IF EXISTS `ws_log_20191207`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191207` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191208`
--

DROP TABLE IF EXISTS `ws_log_20191208`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191208` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191209`
--

DROP TABLE IF EXISTS `ws_log_20191209`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191209` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191210`
--

DROP TABLE IF EXISTS `ws_log_20191210`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191210` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191211`
--

DROP TABLE IF EXISTS `ws_log_20191211`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191211` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191212`
--

DROP TABLE IF EXISTS `ws_log_20191212`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191212` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191213`
--

DROP TABLE IF EXISTS `ws_log_20191213`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191213` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191214`
--

DROP TABLE IF EXISTS `ws_log_20191214`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191214` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191215`
--

DROP TABLE IF EXISTS `ws_log_20191215`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191215` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191216`
--

DROP TABLE IF EXISTS `ws_log_20191216`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191216` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191217`
--

DROP TABLE IF EXISTS `ws_log_20191217`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191217` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191218`
--

DROP TABLE IF EXISTS `ws_log_20191218`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191218` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191219`
--

DROP TABLE IF EXISTS `ws_log_20191219`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191219` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191220`
--

DROP TABLE IF EXISTS `ws_log_20191220`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191220` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191221`
--

DROP TABLE IF EXISTS `ws_log_20191221`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191221` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191222`
--

DROP TABLE IF EXISTS `ws_log_20191222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191222` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191223`
--

DROP TABLE IF EXISTS `ws_log_20191223`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191223` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191224`
--

DROP TABLE IF EXISTS `ws_log_20191224`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191224` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191225`
--

DROP TABLE IF EXISTS `ws_log_20191225`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191225` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191226`
--

DROP TABLE IF EXISTS `ws_log_20191226`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191226` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191227`
--

DROP TABLE IF EXISTS `ws_log_20191227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191227` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191228`
--

DROP TABLE IF EXISTS `ws_log_20191228`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191228` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191229`
--

DROP TABLE IF EXISTS `ws_log_20191229`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191229` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191230`
--

DROP TABLE IF EXISTS `ws_log_20191230`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191230` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ws_log_20191231`
--

DROP TABLE IF EXISTS `ws_log_20191231`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_log_20191231` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `a_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `e_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `fd` int(11) DEFAULT '0' COMMENT '连接ID',
  `ip` char(15) DEFAULT NULL COMMENT '总时长',
  `device_id` varchar(50) DEFAULT NULL COMMENT '设置ID',
  `app_version` varchar(50) DEFAULT NULL COMMENT 'APP版本',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xyx_cnt_day`
--

DROP TABLE IF EXISTS `xyx_cnt_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyx_cnt_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `active_user_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户数',
  `click_num` int(11) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `a_time` int(11) DEFAULT '0' COMMENT '表示时间点 例如2019-04-29的时间戳',
  `ios_click` int(11) NOT NULL DEFAULT '0' COMMENT 'ios当天游戏次数',
  `android_click` int(11) NOT NULL DEFAULT '0' COMMENT 'android当天游戏次数',
  `ios_user_num` int(11) NOT NULL DEFAULT '0' COMMENT 'ios当天游戏用户数',
  `android_user_num` int(11) NOT NULL DEFAULT '0' COMMENT 'android当天游戏用户数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `a_time_gid` (`a_time`,`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xyx_cnt_hour_201905`
--

DROP TABLE IF EXISTS `xyx_cnt_hour_201905`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyx_cnt_hour_201905` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `active_user_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户数',
  `active_uids` text NOT NULL COMMENT '活跃用户的uid集合',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间段 例如2019-04-29 02:00的时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xyx_cnt_hour_201906`
--

DROP TABLE IF EXISTS `xyx_cnt_hour_201906`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyx_cnt_hour_201906` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `active_user_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户数',
  `active_uids` text NOT NULL COMMENT '活跃用户的uid集合',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间段 例如2019-04-29 02:00的时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xyx_cnt_hour_201907`
--

DROP TABLE IF EXISTS `xyx_cnt_hour_201907`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyx_cnt_hour_201907` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `active_user_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户数',
  `active_uids` text NOT NULL COMMENT '活跃用户的uid集合',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间段 例如2019-04-29 02:00的时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xyx_cnt_hour_201908`
--

DROP TABLE IF EXISTS `xyx_cnt_hour_201908`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyx_cnt_hour_201908` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `active_user_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户数',
  `active_uids` text NOT NULL COMMENT '活跃用户的uid集合',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间段 例如2019-04-29 02:00的时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xyx_cnt_hour_201909`
--

DROP TABLE IF EXISTS `xyx_cnt_hour_201909`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyx_cnt_hour_201909` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `active_user_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户数',
  `active_uids` text NOT NULL COMMENT '活跃用户的uid集合',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间段 例如2019-04-29 02:00的时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xyx_cnt_hour_201910`
--

DROP TABLE IF EXISTS `xyx_cnt_hour_201910`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyx_cnt_hour_201910` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `active_user_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户数',
  `active_uids` text NOT NULL COMMENT '活跃用户的uid集合',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间段 例如2019-04-29 02:00的时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xyx_cnt_hour_201911`
--

DROP TABLE IF EXISTS `xyx_cnt_hour_201911`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyx_cnt_hour_201911` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `active_user_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户数',
  `active_uids` text NOT NULL COMMENT '活跃用户的uid集合',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间段 例如2019-04-29 02:00的时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xyx_cnt_hour_201912`
--

DROP TABLE IF EXISTS `xyx_cnt_hour_201912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyx_cnt_hour_201912` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `total_time` int(11) DEFAULT NULL COMMENT '总时长',
  `active_user_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户数',
  `active_uids` text NOT NULL COMMENT '活跃用户的uid集合',
  `etime_active_user` text NOT NULL COMMENT '多个uid组合的串,可能会重复uid,用于按照天来统计活跃用户数',
  `new_reg_user` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户数',
  `a_time` int(11) DEFAULT '0' COMMENT '添加时间段 例如2019-04-29 02:00的时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-03 14:55:19
