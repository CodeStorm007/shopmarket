/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-10-30 09:53:17
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
  `user_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `user_nickname` varchar(25) NOT NULL COMMENT '昵称',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_mobile` (`user_mobile`),
  UNIQUE KEY `user_nickname` (`user_nickname`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '1154654910', '1234', '1', '15522249789', '河北', '1154654910@qq.c', '嚣张');
INSERT INTO `userinfo` VALUES ('2', '1233', '1235', '0', '31413412432', '天津', '3748174123@163.', '呵呵');
INSERT INTO `userinfo` VALUES ('5', '秀', '123', '1', '15145788965', '北京市朝阳区', '1164@qq.com', '修尔');
INSERT INTO `userinfo` VALUES ('7', '124', '', '0', '1234567898', '423412', '432141', '42314');
INSERT INTO `userinfo` VALUES ('8', '43214', '', '0', '12345678985', '43214', '15@qq.com', '43124');
INSERT INTO `userinfo` VALUES ('9', '3123', '123', '0', '12345678996', '43214', '44@qq.com', '314');
