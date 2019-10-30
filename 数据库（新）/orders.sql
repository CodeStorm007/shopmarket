/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-10-30 09:52:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_create_time` date NOT NULL,
  `order_cost` double DEFAULT NULL,
  `order_status` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `productinfo` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '2', '2019-10-12', '0', '0', '2', '2');
INSERT INTO `orders` VALUES ('8', '2', '2019-10-25', '120', '0', '1', '4');
INSERT INTO `orders` VALUES ('10', '1', '2019-10-26', '999', '0', '1', '4');
INSERT INTO `orders` VALUES ('12', '2', '2019-10-26', '264', '0', '2', '11');
INSERT INTO `orders` VALUES ('13', '2', '2019-10-27', '13998', '0', '2', '10');
INSERT INTO `orders` VALUES ('15', '1', '2019-10-27', '338', '0', '2', '3');
INSERT INTO `orders` VALUES ('16', '5', '2019-10-28', '498', '0', '2', '7');
INSERT INTO `orders` VALUES ('17', '5', '2019-10-28', '6999', '0', '1', '10');
INSERT INTO `orders` VALUES ('18', '5', '2019-10-28', '398', '0', '2', '2');
INSERT INTO `orders` VALUES ('20', '5', '2019-10-28', '507', '0', '3', '3');
INSERT INTO `orders` VALUES ('21', '5', '2019-10-28', '396', '0', '3', '11');
INSERT INTO `orders` VALUES ('22', '5', '2019-10-28', '498', '0', '2', '7');
INSERT INTO `orders` VALUES ('23', '1', '2019-10-28', '999', '0', '1', '4');
INSERT INTO `orders` VALUES ('24', '1', '2019-10-28', '169', '0', '1', '3');
INSERT INTO `orders` VALUES ('25', '2', '2019-10-29', '298', '0', '2', '20');
INSERT INTO `orders` VALUES ('26', '2', '2019-10-29', '596', '0', '4', '20');
