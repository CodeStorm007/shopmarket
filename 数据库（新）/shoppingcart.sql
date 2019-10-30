/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-10-30 09:53:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `shopping_id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `sum` double(11,0) DEFAULT NULL,
  PRIMARY KEY (`shopping_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `shoppingcart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `productinfo` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('54', '4', '2', '1', '999', '999');
INSERT INTO `shoppingcart` VALUES ('55', '4', '2', '1', '999', '999');
INSERT INTO `shoppingcart` VALUES ('56', '10', '1', '2', '6999', '13998');
INSERT INTO `shoppingcart` VALUES ('57', '10', '1', '2', '6999', '13998');
INSERT INTO `shoppingcart` VALUES ('65', '5', '2', '1', '199', '199');
INSERT INTO `shoppingcart` VALUES ('68', '1', '1', '1', '220', '220');
INSERT INTO `shoppingcart` VALUES ('69', '1', '4', '3', '999', '999');
INSERT INTO `shoppingcart` VALUES ('71', '1', '6', '1', '100', '100');
