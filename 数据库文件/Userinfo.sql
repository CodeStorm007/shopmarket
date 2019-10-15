/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-10-15 19:28:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_password` varchar(20) NOT NULL COMMENT '密码',
  `user_sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `user_mobile` varchar(11) NOT NULL COMMENT '电话',
  `user_address` varchar(200) NOT NULL COMMENT '地址',
  `user_email` varchar(15) DEFAULT NULL COMMENT '邮箱',
  `user_nickname` varchar(25) NOT NULL COMMENT '昵称',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_mobile` (`user_mobile`),
  UNIQUE KEY `user_nickname` (`user_nickname`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
