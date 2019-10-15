/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-10-15 19:28:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for productinfo
-- ----------------------------
DROP TABLE IF EXISTS `productinfo`;
CREATE TABLE `productinfo` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(25) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `productinfo_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productinfo
-- ----------------------------
