/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-10-15 19:27:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_nickname` varchar(25) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_create_time` date NOT NULL,
  `order_cost` double NOT NULL,
  `order_status` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` double NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `productinfo` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
