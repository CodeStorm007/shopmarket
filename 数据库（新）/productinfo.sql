/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-10-30 09:52:56
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
  `product_price` double(11,2) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_parent_id` int(11) NOT NULL,
  `product_picture` varchar(50) NOT NULL COMMENT '商品图片',
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `category_parent_id` (`category_parent_id`),
  CONSTRAINT `productinfo_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `productinfo_ibfk_2` FOREIGN KEY (`category_parent_id`) REFERENCES `category` (`category_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productinfo
-- ----------------------------
INSERT INTO `productinfo` VALUES ('1', '七匹狼衬衫', '2019春季男士时尚休闲衫', '220.00', '100', '8', '2', 'nanzhuang001.jpg');
INSERT INTO `productinfo` VALUES ('2', '韩版百搭女生衬衣', '韩版2019新款女装上衣百搭学生小众衬衣春季设计感宽松衬衫潮', '199.00', '100', '9', '2', 'nvzhuang001.jpg');
INSERT INTO `productinfo` VALUES ('3', '热风女生休闲运动鞋', '休闲透气舒适美观', '169.00', '100', '10', '2', 'xiexue001.jpg');
INSERT INTO `productinfo` VALUES ('4', '羊皮夹克', '皮衣外套男士羔羊皮夹克外套2018秋冬款', '999.00', '1', '8', '2', 'nanzhuang002.jpg');
INSERT INTO `productinfo` VALUES ('6', '貂子皮草大衣', '制衣匠男冬新款海宁皮毛一体皮衣貉子毛领内胆中长款皮草大衣外套', '100.00', '10', '8', '2', 'nanzhuang003.png');
INSERT INTO `productinfo` VALUES ('7', '厨房橱柜', '现代高级灰色全屋家居整体厨房橱柜', '249.00', '150', '29', '3', 'jiaju001.jpg');
INSERT INTO `productinfo` VALUES ('10', '华为Mate20', '华为 Mate 20 pro RS新品设计手机', '6999.00', '220', '21', '7', 'shouji001.jpg');
INSERT INTO `productinfo` VALUES ('11', '婴儿连体衣', '母婴店新生婴儿冬季外出抱衣宝宝连体衣冬天加厚加绒满月百岁爬服', '132.00', '220', '24', '4', 'muying001.jpg');
INSERT INTO `productinfo` VALUES ('20', '不锈钢刀架', '304不锈钢刀架厨房用品多功能刀座', '149.00', '23', '29', '3', 'c64a972395f648f594bc859a38cd6898.jpg');
INSERT INTO `productinfo` VALUES ('21', '爱他美奶粉', '爱他美奶粉', '2321.00', '312', '23', '4', '92874089740f440dad11a5d4c6ca21aa.jpg');
INSERT INTO `productinfo` VALUES ('22', '儿童牛奶粉', '爱尔兰进口wyeth惠氏启赋4段含opo儿童牛奶粉3-7岁900g', '275.00', '222', '30', '4', 'fbc31a70bcc9406ca8316187fa8dd395.jpg');
INSERT INTO `productinfo` VALUES ('23', '澳洲进口婴幼儿奶粉', '澳洲a2进口原装婴幼儿配方奶粉', '225.00', '443', '30', '4', '6dbab27745454cbc9556609813c53948.jpg');
INSERT INTO `productinfo` VALUES ('24', '蒙牛全脂奶粉', '蒙牛全脂甜奶粉成人成年学生男女士全脂高钙牛奶粉烘焙小袋装早餐', '55.00', '343', '30', '4', '1da7cfbf73a6495685ac7c85069ba6e0.jpg');
INSERT INTO `productinfo` VALUES ('25', '雀巢全脂奶粉', '雀巢全脂高钙奶粉全家营养奶粉家庭量版装400g 2袋装', '65.00', '312', '30', '4', '3a2ac69dd2844f76be952cb3411f43c9.jpg');
INSERT INTO `productinfo` VALUES ('26', '美赞臣婴儿奶粉', '美赞臣安儿宝A+婴儿奶粉配方奶粉1段400g2罐箱装 适合0-6个月', '156.00', '2222', '30', '4', '8654c40339a9476294eec8f512770270.jpg');
INSERT INTO `productinfo` VALUES ('27', '纽康特蛋白奶粉', '纽康特neocate氨基酸配方适用食物蛋白过敏婴儿英400g', '348.00', '2323', '30', '4', '137131e32dc74a48a14ab4eb528bd980.jpg');
INSERT INTO `productinfo` VALUES ('28', '不一样的亲子装', '不一样的亲子装一家三口母女装洋气2019新款潮时尚秋冬装卫衣套装', '228.00', '123', '24', '4', 'ff0c94ceb29d4bfea3c1d28fb336efb7.jpg');
INSERT INTO `productinfo` VALUES ('29', '奥迪双钻飓风战魂', '奥迪双钻陀螺玩具新款儿童飓风战魂', '89.00', '89', '23', '4', '3159393aad5a43808c272e8074887f93.jpg');
INSERT INTO `productinfo` VALUES ('30', '宝宝钓鱼玩具', '宝宝钓鱼玩具啄木鸟捉虫玩具1-2-3岁男孩女孩婴儿童益智抓吃虫子', '70.00', '70', '23', '4', 'd1cbd0f162904983a5c9baef41e396e6.jpg');
INSERT INTO `productinfo` VALUES ('31', 'Apple iphone xs max ', 'Apple iphone xs max ', '8688.00', '7899', '21', '7', '2348f2ffa36c422dbc5f0dd882370a71.png');
INSERT INTO `productinfo` VALUES ('32', '一加7Pro', '一加7Pro手机全新正品OnePlus7pro 骁龙855', '4299.00', '456', '21', '7', '5c3e052e698745a8a3ef2beb5ae19cda.jpg');
INSERT INTO `productinfo` VALUES ('33', 'Huawei nova 5 Pro', 'Huawei华为nova 5 Pro手机', '2699.00', '456', '21', '7', '87845a5aef55448d9edbd40d92a512c3.jpg');
INSERT INTO `productinfo` VALUES ('34', 'Huawei Mate 30 Pro', 'Huawei华为Mate 30 Pro', '5799.00', '2322', '21', '7', 'a4ac707675784297a7ded68826a2c7f7.png');
INSERT INTO `productinfo` VALUES ('35', 'HONOR荣耀20', '华为旗下HONOR荣耀20拍照手机', '2499.00', '456', '21', '7', '0572445b2d6b4b6696f2da3a2a8f7296.jpg');
INSERT INTO `productinfo` VALUES ('36', '鸡尾酒', '7瓶洋酒套装鸡尾酒', '298.00', '8989', '17', '6', 'a35fb9f95f8b4a478a5d8571a0b24837.jpg');
INSERT INTO `productinfo` VALUES ('37', '百加得 白朗姆酒', '百加得 白朗姆酒烘培鸡尾酒基酒bacardi 200ml', '35.00', '1233', '17', '6', '474414fce0c446e9bacf06db4da94ea6.png');
INSERT INTO `productinfo` VALUES ('38', '红烧肉卤料', '红烧猪肉块烧烤酱卤炒菜厨房食材500g2袋装', '76.00', '785', '13', '6', '921ee010db6d4b7ea945ee137ff10a85.jpg');
INSERT INTO `productinfo` VALUES ('39', '越南进口火龙果', '越南进口火龙果 3个装', '23.00', '451', '13', '6', '3545d5bc05d344139790afa4032582be.jpg');
INSERT INTO `productinfo` VALUES ('40', '南海大虾', '原膳南海大虾1.8kg净虾重(50-60只kg) 冷冻生鲜冻虾海鲜海虾鲜虾', '136.00', '1254', '13', '6', '0d2961143bb046f49f33401d35079d2b.jpg');
INSERT INTO `productinfo` VALUES ('41', '海尔小型滚筒洗衣机', 'Haier海尔 EG7012B29W 7公斤家用变频滚筒小型洗衣机全自动静音', '1699.00', '4562', '22', '5', 'c07a7e73da8c49e2a278d8a4c48cdb71.jpg');
INSERT INTO `productinfo` VALUES ('42', '波司登羽绒男士', '波司登官方旗舰店羽绒服男士轻薄短款立领保暖外套2019新品秋冬', '399.00', '1235', '20', '2', '23b8b949985742a59c0a93ca85516eab.jpg');
INSERT INTO `productinfo` VALUES ('43', '恒源祥中年外套', '恒源祥秋冬男士夹克商务休闲外套男中年爸爸装棉衣春秋季上衣', '248.00', '895', '18', '2', 'bd85a82f42f94d4d9707aec64430ff63.jpg');
INSERT INTO `productinfo` VALUES ('44', '李宁运动风衣', '李宁运动风衣男2019秋季新款防风防水冲锋衣男跑步训练连帽外套男', '159.00', '231', '18', '2', '710c67cfc7034dd0b5d168702ef68c02.jpg');
INSERT INTO `productinfo` VALUES ('45', '花花公子秋装外套', '花花公子痞帅外套男机能秋装韩版潮流飞行员修身加绒加厚夹克男冬', '269.00', '4566', '18', '2', 'ab79a9bc5b464d8d9e527dd90d12067b.jpg');
INSERT INTO `productinfo` VALUES ('46', '足力健老人鞋', '足力健老人鞋冬季保暖款男outlets旗舰店清仓羊毛鞋靴雪地运动鞋', '119.00', '451', '10', '2', 'f9f5eea38c884645b56b4055d7eec8f0.jpg');
