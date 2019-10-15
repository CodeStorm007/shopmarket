/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-10-15 19:27:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` varchar(255) NOT NULL,
  `user_nickname` varchar(25) NOT NULL,
  `comment_time` datetime NOT NULL,
  PRIMARY KEY (`comment_id`),
  UNIQUE KEY `user_nickname` (`user_nickname`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_nickname`) REFERENCES `userinfo` (`user_nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
