/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-10-15 19:27:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `admin_name` varchar(20) NOT NULL COMMENT '管理员用户名',
  `admin_password` varchar(20) NOT NULL COMMENT '管理员密码',
  `admin_mobile` varchar(11) NOT NULL COMMENT '管理员电话',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_name` (`admin_name`),
  UNIQUE KEY `admin_password` (`admin_mobile`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
