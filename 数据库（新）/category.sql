/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-10-30 09:52:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) NOT NULL,
  `category_parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `category_parent_id` (`category_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '根菜单', '-1');
INSERT INTO `category` VALUES ('2', '服装', '1');
INSERT INTO `category` VALUES ('3', '家居', '1');
INSERT INTO `category` VALUES ('4', '母婴', '1');
INSERT INTO `category` VALUES ('5', '家电', '1');
INSERT INTO `category` VALUES ('6', '食品', '1');
INSERT INTO `category` VALUES ('7', '手机', '1');
INSERT INTO `category` VALUES ('8', '男装', '2');
INSERT INTO `category` VALUES ('9', '女装', '2');
INSERT INTO `category` VALUES ('10', '鞋靴', '2');
INSERT INTO `category` VALUES ('13', '生鲜', '6');
INSERT INTO `category` VALUES ('17', '酒水', '6');
INSERT INTO `category` VALUES ('18', '外套', '2');
INSERT INTO `category` VALUES ('19', '衬衫', '2');
INSERT INTO `category` VALUES ('20', '羽绒服', '2');
INSERT INTO `category` VALUES ('21', '手机专卖', '7');
INSERT INTO `category` VALUES ('22', '洗衣机', '5');
INSERT INTO `category` VALUES ('23', '玩具', '4');
INSERT INTO `category` VALUES ('24', '亲子装', '4');
INSERT INTO `category` VALUES ('25', '沙发', '3');
INSERT INTO `category` VALUES ('26', '窗帘', '3');
INSERT INTO `category` VALUES ('27', '手机壳', '7');
INSERT INTO `category` VALUES ('28', '手机配件', '7');
INSERT INTO `category` VALUES ('29', '厨房用品', '3');
INSERT INTO `category` VALUES ('30', '奶粉', '4');
INSERT INTO `category` VALUES ('31', '冰箱', '5');
INSERT INTO `category` VALUES ('33', '电视', '5');
INSERT INTO `category` VALUES ('34', '卫衣', '2');
