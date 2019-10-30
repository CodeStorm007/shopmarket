/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-10-30 09:52:38
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
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '衣服到了，我很满意', '嚣张', '2019-10-16 11:14:33', '2');
INSERT INTO `comment` VALUES ('4', '快递很慢啊，送了一个星期才到，而且包装都弄坏了', '呵呵', '2019-10-17 11:15:16', '2');
INSERT INTO `comment` VALUES ('17', '还行', '呵呵', '2019-10-15 11:30:31', '1');
INSERT INTO `comment` VALUES ('18', '还不错', '嚣张', '2019-10-09 11:32:52', '3');
INSERT INTO `comment` VALUES ('19', '衣服洗过了，没有褪色的情况', '嚣张', '2019-10-21 11:41:32', '2');
INSERT INTO `comment` VALUES ('20', '手机收到了，性能很强大，愿华为越来越好', '嚣张', '2019-10-18 11:58:17', '10');
INSERT INTO `comment` VALUES ('21', '衣服尺寸有点偏大', '嚣张', '2019-10-26 18:00:55', '4');
INSERT INTO `comment` VALUES ('22', '差评，衣服和图片不一样', '呵呵', '2019-10-26 18:02:23', '4');
INSERT INTO `comment` VALUES ('23', '天气真好', '嚣张', '2019-10-28 16:42:05', '4');
