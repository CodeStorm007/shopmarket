/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-10-15 19:27:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) NOT NULL,
  `category_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
