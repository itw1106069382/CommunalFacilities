/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50130
Source Host           : localhost:3306
Source Database       : malldb

Target Server Type    : MYSQL
Target Server Version : 50130
File Encoding         : 65001

Date: 2020-05-10 21:18:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for anomaly
-- ----------------------------
DROP TABLE IF EXISTS `anomaly`;
CREATE TABLE `anomaly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `facilitiesname` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `uploadtime` datetime DEFAULT NULL,
  `del` int(255) DEFAULT '0',
  `file` varchar(255) DEFAULT NULL,
  `techname` varchar(255) DEFAULT NULL,
  `done` int(10) unsigned DEFAULT '0',
  `servicedone` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `facilitiesname` (`facilitiesname`),
  KEY `number` (`number`),
  KEY `username` (`username`),
  CONSTRAINT `anomaly_ibfk_2` FOREIGN KEY (`facilitiesname`) REFERENCES `facilities` (`facilitiesname`),
  CONSTRAINT `anomaly_ibfk_3` FOREIGN KEY (`number`) REFERENCES `facilities` (`id`),
  CONSTRAINT `anomaly_ibfk_4` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anomaly
-- ----------------------------
INSERT INTO `anomaly` VALUES ('1', 'xiaobing', '亭台楼阁', '楼阁漏水', '麦边路41号旁边', '1', '2020-04-21 00:00:00', '0', null, null, '1', '0');
INSERT INTO `anomaly` VALUES ('2', 'xiaobing', '水池喷泉', '喷泉堵住了', '麦边路40号', '2', '2020-04-19 00:00:00', '0', null, null, '1', '0');
INSERT INTO `anomaly` VALUES ('3', 'xiaobing', '公共消防设备', '消防栓坏掉了', '丁香路101号', '3', '2020-04-21 00:00:00', '0', null, null, '1', '0');
INSERT INTO `anomaly` VALUES ('4', 'xai', '公共道路', '道路损坏', '黄冈', '8', '2020-04-13 00:00:00', '0', null, 'xiaobing', '0', '1');
INSERT INTO `anomaly` VALUES ('5', 'xiaobing', '长椅', '椅子断了', '新天地广场', '14', '2020-04-13 00:00:00', '0', null, null, '0', '0');
INSERT INTO `anomaly` VALUES ('10', 'reuidsa', '摄像头', '摄像头坏了', '露丝花园', '7', '2020-04-24 19:04:07', '0', '/upload/ads03.gif', null, '0', '0');
INSERT INTO `anomaly` VALUES ('11', 'reuidsa', '红绿灯', '红绿灯颜色失真', '翟港', '10', '2020-04-24 19:16:18', '0', '/upload/ajax_loader.gif', null, '0', '0');
INSERT INTO `anomaly` VALUES ('12', 'reuidsa', '垃圾桶', '桶盖掉了', '查湾', '11', '2020-04-24 21:16:16', '0', '/upload/ajax_loader.gif', null, '0', '0');
INSERT INTO `anomaly` VALUES ('13', 'reuidsa', '西瓜刀', '刀子生锈', '长沙', '15', '2020-04-24 21:21:48', '0', '/upload/anniu04_.jpg', null, '0', '0');
INSERT INTO `anomaly` VALUES ('14', 'reuidsa', '公共消防设备', '灭火器消了', '丁香路101号', '3', '2020-04-25 10:02:12', '0', '/upload/arrow_left.gif', null, '0', '0');
INSERT INTO `anomaly` VALUES ('15', 'reuidsa', '长椅', '椅子脚断了', '新天地广场', '14', '2020-04-25 10:05:06', '0', '/upload/banner1.gif', null, '0', '0');
INSERT INTO `anomaly` VALUES ('16', 'xiaobing', '垃圾桶', '垃圾桶底部裂了', '翟港', '12', '2020-05-04 00:00:00', '0', null, null, '0', '0');

-- ----------------------------
-- Table structure for facilities
-- ----------------------------
DROP TABLE IF EXISTS `facilities`;
CREATE TABLE `facilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facilitiesname` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `area` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `uploadtime` datetime DEFAULT NULL,
  `del` int(255) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `facilitiesname` (`facilitiesname`),
  KEY `username` (`username`),
  CONSTRAINT `facilities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of facilities
-- ----------------------------
INSERT INTO `facilities` VALUES ('1', '亭台楼阁', '已损坏', '麦边路41号旁边', 'cad', '2020-04-21 00:00:00', '0');
INSERT INTO `facilities` VALUES ('2', '水池喷泉', '正在使用', '麦边路20号', 'cad', '2020-04-21 00:00:00', '0');
INSERT INTO `facilities` VALUES ('3', '公共消防设备', '正在使用', '丁香路101号', 'cad', '2020-04-12 09:49:55', '0');
INSERT INTO `facilities` VALUES ('4', '配电箱', '已损坏', '丁香路401', 'cad', '2020-04-12 09:49:55', '0');
INSERT INTO `facilities` VALUES ('5', '公共健身', '正在使用', '丁香路50', 'cad', '2020-04-12 09:49:55', '0');
INSERT INTO `facilities` VALUES ('6', '有线电视设备', '已损坏', '丁香路60', 'cad', '2020-04-12 09:49:55', '0');
INSERT INTO `facilities` VALUES ('7', '摄像头', '正在使用', '露丝花园', 'cad', '2020-04-12 09:49:55', '0');
INSERT INTO `facilities` VALUES ('8', '公共道路', '正在使用', '长形地村', 'cad', '2020-04-12 09:49:55', '0');
INSERT INTO `facilities` VALUES ('9', '公共卫生间', '已损坏', '人形地村', 'cad', '2020-04-12 09:49:55', '0');
INSERT INTO `facilities` VALUES ('10', '红绿灯', '正在使用', '翟港', 'cad', '2020-04-12 09:49:55', '0');
INSERT INTO `facilities` VALUES ('11', '垃圾桶', '已损坏', '查湾', 'cad', '2020-04-12 09:49:55', '0');
INSERT INTO `facilities` VALUES ('12', '垃圾桶', '正在使用', '翟港', 'cad', '2020-04-12 18:13:46', '0');
INSERT INTO `facilities` VALUES ('13', '公交亭', '正在使用', '邓岗', 'cad', '2020-04-07 00:00:00', '0');
INSERT INTO `facilities` VALUES ('14', '长椅', '正在使用', '新天地广场', 'reuidsa', '2020-04-13 00:00:00', '0');
INSERT INTO `facilities` VALUES ('15', '西瓜刀', '正在使用', '长沙', 'cad', '2020-04-14 00:00:00', '0');
INSERT INTO `facilities` VALUES ('16', '电风扇', '正在使用', '里水教育局', 'xiaobing', '2020-04-20 00:00:00', '0');
INSERT INTO `facilities` VALUES ('17', '电风扇', '正在使用', '里水教育局', 'xiaobing', '2020-04-20 00:00:00', '0');
INSERT INTO `facilities` VALUES ('18', '电风扇', '正在使用', '里水教育局', 'xiaobing', '2020-04-20 00:00:00', '0');
INSERT INTO `facilities` VALUES ('19', '电风扇', '正在使用', '里水教育局', 'xiaobing', '2020-04-20 00:00:00', '0');
INSERT INTO `facilities` VALUES ('20', '沙发', '正在使用', '里水教育局', 'xiaobing', '2020-04-24 10:57:26', '0');
INSERT INTO `facilities` VALUES ('21', '沙发', '正在使用', '里水教育局', 'xiaobing', '2020-04-24 10:59:08', '0');
INSERT INTO `facilities` VALUES ('22', '沙发', '正在使用', '里水教育局', 'xiaobing', '2020-04-24 11:19:50', '0');
INSERT INTO `facilities` VALUES ('28', '沙发', '正在使用', '里水教育局', 'xiaobing', '2020-04-24 11:25:11', '0');
INSERT INTO `facilities` VALUES ('29', '沙发', '正在使用', '里水教育局', 'xiaobing', '2020-04-24 11:25:11', '0');
INSERT INTO `facilities` VALUES ('30', '沙发', '正在使用', '里水教育局', 'xiaobing', '2020-04-24 11:25:11', '0');

-- ----------------------------
-- Table structure for flows
-- ----------------------------
DROP TABLE IF EXISTS `flows`;
CREATE TABLE `flows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `flowState` int(255) DEFAULT NULL,
  `flowTime` datetime DEFAULT NULL,
  `del` int(255) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`username`),
  CONSTRAINT `name` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flows
-- ----------------------------
INSERT INTO `flows` VALUES ('1', 'cad', '0', '2020-04-02 11:00:08', '0');
INSERT INTO `flows` VALUES ('2', 'xiaobing', '0', '2020-04-19 17:34:54', '0');
INSERT INTO `flows` VALUES ('4', 'xai', '1', '2020-03-30 00:00:00', '0');
INSERT INTO `flows` VALUES ('5', 'xiaobing', '1', '2020-04-01 02:00:00', '0');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `sn` varchar(40) DEFAULT NULL,
  `costPrice` decimal(7,2) DEFAULT NULL,
  `salePrice` decimal(7,2) DEFAULT NULL,
  `marketPrice` decimal(7,2) DEFAULT NULL,
  `place` varchar(40) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `intro` varchar(400) DEFAULT NULL,
  `bigPic` varchar(80) DEFAULT NULL,
  `smallPic` varchar(80) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `viewTimes` int(11) DEFAULT NULL,
  `recommended` bit(1) DEFAULT NULL,
  `inputTime` date DEFAULT NULL,
  `dir_id` bigint(20) DEFAULT NULL,
  `_s` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '糯种春带玉佛陀_1', 'nzcdyft_1', '3000.00', '7800.00', '15000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', '', '/upload/default_small.jpg', '1', '2', '', '2014-12-31', '11', '0');
INSERT INTO `product` VALUES ('2', '玻璃种反强荧光镶金钻戒指_2', 'fqygxjzjz_1', '2500.00', '6900.00', '15500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', '', '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '7', '0');
INSERT INTO `product` VALUES ('3', '老坑玻璃荧光翡翠站佛_3', 'lkblygfczf_1', '3000.00', '5800.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', '', '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '5', '0');
INSERT INTO `product` VALUES ('4', '圆形招财金蟾把件_1', 'yxzcjcbj_1', '5000.00', '5500.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', null, null, null, null, null, '0');
INSERT INTO `product` VALUES ('5', 'dasdazc', '地主', '2000.00', '2111.00', '20000.00', '浠水', '重量30.g', '18', '喜欢九九号', '', '/upload/default_small.jpg', '0', '21', '', '2019-06-11', '6', '1');
INSERT INTO `product` VALUES ('24', '糯种春带玉佛陀_2', 'nzcdyft_2', '3000.00', '5000.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '6', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '1', '3', '', '2014-12-31', '4', '0');
INSERT INTO `product` VALUES ('25', '糯种春带玉佛陀_3', 'nzcdyft_3', '2000.00', '6500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '5', '1');
INSERT INTO `product` VALUES ('26', '糯种春带玉佛陀_4', 'nzcdyft_4', '4500.00', '4500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '\0', '2014-12-31', '6', '1');
INSERT INTO `product` VALUES ('27', '糯种春带玉佛陀_5', 'nzcdyft_5', '5000.00', '8000.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '8', '1');
INSERT INTO `product` VALUES ('28', '糯种春带玉佛陀_6', 'nzcdyft_6', '6500.00', '5500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '5', '1');
INSERT INTO `product` VALUES ('29', '糯种春带玉佛陀_7', 'nzcdyft_7', '5500.00', '7500.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '12', '1');
INSERT INTO `product` VALUES ('30', '糯种春带玉佛陀_8', 'nzcdyft_8', '4500.00', '7500.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '7', '1');
INSERT INTO `product` VALUES ('31', '糯种春带玉佛陀_9', 'nzcdyft_9', '6500.00', '8000.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '\0', '2014-12-31', '9', '1');
INSERT INTO `product` VALUES ('32', '糯种春带玉佛陀_10', 'nzcdyft_10', '3500.00', '6000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '2', '1');
INSERT INTO `product` VALUES ('33', '糯种春带玉佛陀_11', 'nzcdyft_11', '5500.00', '5000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '10', '1');
INSERT INTO `product` VALUES ('34', '糯种春带玉佛陀_12', 'nzcdyft_12', '4500.00', '8000.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '5', '1');
INSERT INTO `product` VALUES ('35', '糯种春带玉佛陀_13', 'nzcdyft_13', '3500.00', '4000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '12', '1');
INSERT INTO `product` VALUES ('36', '糯种春带玉佛陀_14', 'nzcdyft_14', '4000.00', '7000.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '4', '1');
INSERT INTO `product` VALUES ('37', '糯种春带玉佛陀_15', 'nzcdyft_15', '3000.00', '8000.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '5', '1');
INSERT INTO `product` VALUES ('38', '糯种春带玉佛陀_16', 'nzcdyft_16', '2000.00', '4500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '4', '1');
INSERT INTO `product` VALUES ('39', '糯种春带玉佛陀_17', 'nzcdyft_17', '6000.00', '8500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '6', '1');
INSERT INTO `product` VALUES ('40', '糯种春带玉佛陀_18', 'nzcdyft_18', '2500.00', '7500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '5', '1');
INSERT INTO `product` VALUES ('41', '糯种春带玉佛陀_19', 'nzcdyft_19', '5500.00', '5000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '1', '1');
INSERT INTO `product` VALUES ('42', '糯种春带玉佛陀_20', 'nzcdyft_20', '5500.00', '6500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '6', '1');
INSERT INTO `product` VALUES ('43', '糯种春带玉佛陀_21', 'nzcdyft_21', '4000.00', '5000.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '2', '1');
INSERT INTO `product` VALUES ('44', '糯种春带玉佛陀_22', 'nzcdyft_22', '5000.00', '4500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '8', '1');
INSERT INTO `product` VALUES ('45', '糯种春带玉佛陀_23', 'nzcdyft_23', '5000.00', '6500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '11', '1');
INSERT INTO `product` VALUES ('46', '糯种春带玉佛陀_24', 'nzcdyft_24', '5500.00', '6000.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '10', '1');
INSERT INTO `product` VALUES ('47', '糯种春带玉佛陀_25', 'nzcdyft_25', '6000.00', '4500.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '5', '1');
INSERT INTO `product` VALUES ('48', '糯种春带玉佛陀_26', 'nzcdyft_26', '5000.00', '5500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '9', '1');
INSERT INTO `product` VALUES ('49', '糯种春带玉佛陀_27', 'nzcdyft_27', '2000.00', '7000.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '12', '1');
INSERT INTO `product` VALUES ('50', '糯种春带玉佛陀_28', 'nzcdyft_28', '5000.00', '5500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '6', '1');
INSERT INTO `product` VALUES ('51', '糯种春带玉佛陀_29', 'nzcdyft_29', '3000.00', '8000.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '4', '1');
INSERT INTO `product` VALUES ('52', '糯种春带玉佛陀_30', 'nzcdyft_30', '2500.00', '8500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '5', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '1', '', '2014-12-31', '1', '1');
INSERT INTO `product` VALUES ('53', '玻璃种反强荧光镶金钻戒指_2', 'fqygxjzjz_2', '5500.00', '6500.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '3', '1');
INSERT INTO `product` VALUES ('54', '玻璃种反强荧光镶金钻戒指_3', 'fqygxjzjz_3', '5500.00', '6500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '5', '1');
INSERT INTO `product` VALUES ('55', '玻璃种反强荧光镶金钻戒指_4', 'fqygxjzjz_4', '2500.00', '4500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '11', '1');
INSERT INTO `product` VALUES ('56', '玻璃种反强荧光镶金钻戒指_5', 'fqygxjzjz_5', '4000.00', '5000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '3', '1');
INSERT INTO `product` VALUES ('57', '玻璃种反强荧光镶金钻戒指_6', 'fqygxjzjz_6', '3500.00', '5500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '10', '1');
INSERT INTO `product` VALUES ('58', '玻璃种反强荧光镶金钻戒指_7', 'fqygxjzjz_7', '5000.00', '4500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '5', '1');
INSERT INTO `product` VALUES ('59', '玻璃种反强荧光镶金钻戒指_8', 'fqygxjzjz_8', '6500.00', '7500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '5', '1');
INSERT INTO `product` VALUES ('60', '玻璃种反强荧光镶金钻戒指_9', 'fqygxjzjz_9', '6500.00', '4500.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '11', '1');
INSERT INTO `product` VALUES ('61', '玻璃种反强荧光镶金钻戒指_10', 'fqygxjzjz_10', '2500.00', '6000.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '11', '1');
INSERT INTO `product` VALUES ('62', '玻璃种反强荧光镶金钻戒指_11', 'fqygxjzjz_11', '5500.00', '7500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '6', '1');
INSERT INTO `product` VALUES ('63', '玻璃种反强荧光镶金钻戒指_12', 'fqygxjzjz_12', '4000.00', '8000.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '7', '1');
INSERT INTO `product` VALUES ('64', '玻璃种反强荧光镶金钻戒指_13', 'fqygxjzjz_13', '5500.00', '5500.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '2', '1');
INSERT INTO `product` VALUES ('65', '玻璃种反强荧光镶金钻戒指_14', 'fqygxjzjz_14', '6000.00', '8000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '3', '1');
INSERT INTO `product` VALUES ('66', '玻璃种反强荧光镶金钻戒指_15', 'fqygxjzjz_15', '5000.00', '6500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '5', '1');
INSERT INTO `product` VALUES ('67', '玻璃种反强荧光镶金钻戒指_16', 'fqygxjzjz_16', '3500.00', '7500.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '4', '1');
INSERT INTO `product` VALUES ('68', '玻璃种反强荧光镶金钻戒指_17', 'fqygxjzjz_17', '4500.00', '8500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '5', '1');
INSERT INTO `product` VALUES ('69', '玻璃种反强荧光镶金钻戒指_18', 'fqygxjzjz_18', '6000.00', '6000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '5', '1');
INSERT INTO `product` VALUES ('70', '玻璃种反强荧光镶金钻戒指_19', 'fqygxjzjz_19', '3500.00', '6000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '10', '1');
INSERT INTO `product` VALUES ('71', '玻璃种反强荧光镶金钻戒指_20', 'fqygxjzjz_20', '6000.00', '8000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '8', '1');
INSERT INTO `product` VALUES ('72', '玻璃种反强荧光镶金钻戒指_21', 'fqygxjzjz_21', '3500.00', '6500.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '5', '1');
INSERT INTO `product` VALUES ('73', '玻璃种反强荧光镶金钻戒指_22', 'fqygxjzjz_22', '3000.00', '8500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '3', '1');
INSERT INTO `product` VALUES ('74', '玻璃种反强荧光镶金钻戒指_23', 'fqygxjzjz_23', '6500.00', '7500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '6', '1');
INSERT INTO `product` VALUES ('75', '玻璃种反强荧光镶金钻戒指_24', 'fqygxjzjz_24', '2000.00', '7500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '3', '1');
INSERT INTO `product` VALUES ('76', '玻璃种反强荧光镶金钻戒指_25', 'fqygxjzjz_25', '3500.00', '4500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '12', '1');
INSERT INTO `product` VALUES ('77', '玻璃种反强荧光镶金钻戒指_26', 'fqygxjzjz_26', '4500.00', '7000.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '12', '1');
INSERT INTO `product` VALUES ('78', '玻璃种反强荧光镶金钻戒指_27', 'fqygxjzjz_27', '5500.00', '6500.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '7', '1');
INSERT INTO `product` VALUES ('79', '玻璃种反强荧光镶金钻戒指_28', 'fqygxjzjz_28', '4000.00', '5000.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '11', '1');
INSERT INTO `product` VALUES ('80', '玻璃种反强荧光镶金钻戒指_29', 'fqygxjzjz_29', '3000.00', '8500.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '3', '1');
INSERT INTO `product` VALUES ('81', '玻璃种反强荧光镶金钻戒指_30', 'fqygxjzjz_30', '5500.00', '5000.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '2', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '2', '\0', '2014-12-23', '8', '1');
INSERT INTO `product` VALUES ('82', '老坑玻璃荧光翡翠站佛_2', 'lkblygfczf_2', '6000.00', '5500.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('83', '老坑玻璃荧光翡翠站佛_3', 'lkblygfczf_3', '3500.00', '7000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('84', '老坑玻璃荧光翡翠站佛_4', 'lkblygfczf_4', '6000.00', '4500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '6', '1');
INSERT INTO `product` VALUES ('85', '老坑玻璃荧光翡翠站佛_5', 'lkblygfczf_5', '4000.00', '8500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('86', '老坑玻璃荧光翡翠站佛_6', 'lkblygfczf_6', '2000.00', '5000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('87', '老坑玻璃荧光翡翠站佛_7', 'lkblygfczf_7', '5500.00', '7000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('88', '老坑玻璃荧光翡翠站佛_8', 'lkblygfczf_8', '3500.00', '8500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '9', '1');
INSERT INTO `product` VALUES ('89', '老坑玻璃荧光翡翠站佛_9', 'lkblygfczf_9', '4500.00', '5000.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '8', '1');
INSERT INTO `product` VALUES ('90', '老坑玻璃荧光翡翠站佛_10', 'lkblygfczf_10', '5500.00', '7000.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '4', '1');
INSERT INTO `product` VALUES ('91', '老坑玻璃荧光翡翠站佛_11', 'lkblygfczf_11', '5000.00', '4500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('92', '老坑玻璃荧光翡翠站佛_12', 'lkblygfczf_12', '4500.00', '8500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('93', '老坑玻璃荧光翡翠站佛_13', 'lkblygfczf_13', '3500.00', '8000.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '5', '1');
INSERT INTO `product` VALUES ('94', '老坑玻璃荧光翡翠站佛_14', 'lkblygfczf_14', '3000.00', '5500.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '6', '1');
INSERT INTO `product` VALUES ('95', '老坑玻璃荧光翡翠站佛_15', 'lkblygfczf_15', '2500.00', '4500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('96', '老坑玻璃荧光翡翠站佛_16', 'lkblygfczf_16', '2500.00', '8500.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '7', '1');
INSERT INTO `product` VALUES ('97', '老坑玻璃荧光翡翠站佛_17', 'lkblygfczf_17', '2500.00', '4000.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '3', '1');
INSERT INTO `product` VALUES ('98', '老坑玻璃荧光翡翠站佛_18', 'lkblygfczf_18', '4000.00', '4500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '4', '1');
INSERT INTO `product` VALUES ('99', '老坑玻璃荧光翡翠站佛_19', 'lkblygfczf_19', '2500.00', '8500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('100', '老坑玻璃荧光翡翠站佛_20', 'lkblygfczf_20', '3500.00', '8500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('101', '老坑玻璃荧光翡翠站佛_21', 'lkblygfczf_21', '6000.00', '6500.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '7', '1');
INSERT INTO `product` VALUES ('102', '老坑玻璃荧光翡翠站佛_22', 'lkblygfczf_22', '3000.00', '6000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '9', '1');
INSERT INTO `product` VALUES ('103', '老坑玻璃荧光翡翠站佛_23', 'lkblygfczf_23', '5500.00', '7000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '4', '1');
INSERT INTO `product` VALUES ('104', '老坑玻璃荧光翡翠站佛_24', 'lkblygfczf_24', '4000.00', '8000.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '4', '1');
INSERT INTO `product` VALUES ('105', '老坑玻璃荧光翡翠站佛_25', 'lkblygfczf_25', '5500.00', '6500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '6', '1');
INSERT INTO `product` VALUES ('106', '老坑玻璃荧光翡翠站佛_26', 'lkblygfczf_26', '3500.00', '4500.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '3', '1');
INSERT INTO `product` VALUES ('107', '老坑玻璃荧光翡翠站佛_27', 'lkblygfczf_27', '2000.00', '5000.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('108', '老坑玻璃荧光翡翠站佛_28', 'lkblygfczf_28', '6500.00', '7000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('109', '老坑玻璃荧光翡翠站佛_29', 'lkblygfczf_29', '4500.00', '6500.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('110', '老坑玻璃荧光翡翠站佛_30', 'lkblygfczf_30', '2000.00', '7500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '3', '1');
INSERT INTO `product` VALUES ('111', '圆形招财金蟾把件_2', 'yxzcjcbj_2', '3000.00', '7500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('112', '圆形招财金蟾把件_3', 'yxzcjcbj_3', '4000.00', '8500.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '12', '1');
INSERT INTO `product` VALUES ('113', '圆形招财金蟾把件_4', 'yxzcjcbj_4', '5500.00', '6000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('114', '圆形招财金蟾把件_5', 'yxzcjcbj_5', '5500.00', '7000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('115', '圆形招财金蟾把件_6', 'yxzcjcbj_6', '3000.00', '7500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('116', '圆形招财金蟾把件_7', 'yxzcjcbj_7', '4500.00', '7000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('117', '圆形招财金蟾把件_8', 'yxzcjcbj_8', '5000.00', '4000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('118', '圆形招财金蟾把件_9', 'yxzcjcbj_9', '5500.00', '5000.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '5', '1');
INSERT INTO `product` VALUES ('119', '圆形招财金蟾把件_10', 'yxzcjcbj_10', '5500.00', '6000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('120', '圆形招财金蟾把件_11', 'yxzcjcbj_11', '6500.00', '4500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '7', '1');
INSERT INTO `product` VALUES ('121', '圆形招财金蟾把件_12', 'yxzcjcbj_12', '5000.00', '7000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '5', '1');
INSERT INTO `product` VALUES ('122', '圆形招财金蟾把件_13', 'yxzcjcbj_13', '2500.00', '5500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('123', '圆形招财金蟾把件_14', 'yxzcjcbj_14', '2000.00', '5000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '9', '1');
INSERT INTO `product` VALUES ('124', '圆形招财金蟾把件_15', 'yxzcjcbj_15', '5000.00', '6000.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '7', '1');
INSERT INTO `product` VALUES ('125', '圆形招财金蟾把件_16', 'yxzcjcbj_16', '6000.00', '8000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '6', '1');
INSERT INTO `product` VALUES ('126', '圆形招财金蟾把件_17', 'yxzcjcbj_17', '6000.00', '6500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('127', '圆形招财金蟾把件_18', 'yxzcjcbj_18', '5000.00', '7500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '5', '1');
INSERT INTO `product` VALUES ('128', '圆形招财金蟾把件_19', 'yxzcjcbj_19', '3500.00', '7500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('129', '圆形招财金蟾把件_20', 'yxzcjcbj_20', '5000.00', '7000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('130', '圆形招财金蟾把件_21', 'yxzcjcbj_21', '4500.00', '7500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('131', '圆形招财金蟾把件_22', 'yxzcjcbj_22', '5500.00', '7500.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('132', '圆形招财金蟾把件_23', 'yxzcjcbj_23', '4000.00', '6000.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '', '2014-12-26', '9', '1');
INSERT INTO `product` VALUES ('133', '圆形招财金蟾把件_24', 'yxzcjcbj_24', '6500.00', '6000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '12', '1');
INSERT INTO `product` VALUES ('134', '圆形招财金蟾把件_25', 'yxzcjcbj_25', '6500.00', '7000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '5', '1');
INSERT INTO `product` VALUES ('135', '圆形招财金蟾把件_26', 'yxzcjcbj_26', '5000.00', '6500.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('136', '圆形招财金蟾把件_27', 'yxzcjcbj_27', '3500.00', '6000.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '3', '1');
INSERT INTO `product` VALUES ('137', '圆形招财金蟾把件_28', 'yxzcjcbj_28', '2500.00', '8500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('138', '圆形招财金蟾把件_29', 'yxzcjcbj_29', '3000.00', '7000.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('139', '圆形招财金蟾把件_30', 'yxzcjcbj_30', '6000.00', '5000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '1', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '0', '\0', '2014-12-26', '12', '1');
INSERT INTO `product` VALUES ('140', '冰糯种兰水飘花翡翠手镯_2', 'bnzlhphfcsz_2', '6000.00', '5500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '7', '1');
INSERT INTO `product` VALUES ('141', '冰糯种兰水飘花翡翠手镯_3', 'bnzlhphfcsz_3', '5500.00', '5000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('142', '冰糯种兰水飘花翡翠手镯_4', 'bnzlhphfcsz_4', '4500.00', '6500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '8', '1');
INSERT INTO `product` VALUES ('143', '冰糯种兰水飘花翡翠手镯_5', 'bnzlhphfcsz_5', '3000.00', '8000.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '8', '1');
INSERT INTO `product` VALUES ('144', '冰糯种兰水飘花翡翠手镯_6', 'bnzlhphfcsz_6', '4000.00', '6500.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('145', '冰糯种兰水飘花翡翠手镯_7', 'bnzlhphfcsz_7', '5000.00', '5000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('146', '冰糯种兰水飘花翡翠手镯_8', 'bnzlhphfcsz_8', '5500.00', '8500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '9', '1');
INSERT INTO `product` VALUES ('147', '冰糯种兰水飘花翡翠手镯_9', 'bnzlhphfcsz_9', '4000.00', '8000.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '12', '1');
INSERT INTO `product` VALUES ('148', '冰糯种兰水飘花翡翠手镯_10', 'bnzlhphfcsz_10', '6500.00', '5500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('149', '冰糯种兰水飘花翡翠手镯_11', 'bnzlhphfcsz_11', '3500.00', '8000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '8', '1');
INSERT INTO `product` VALUES ('150', '冰糯种兰水飘花翡翠手镯_12', 'bnzlhphfcsz_12', '4000.00', '5500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '9', '1');
INSERT INTO `product` VALUES ('151', '冰糯种兰水飘花翡翠手镯_13', 'bnzlhphfcsz_13', '4500.00', '8000.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('152', '冰糯种兰水飘花翡翠手镯_14', 'bnzlhphfcsz_14', '6000.00', '4000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('153', '冰糯种兰水飘花翡翠手镯_15', 'bnzlhphfcsz_15', '4000.00', '8500.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '3', '1');
INSERT INTO `product` VALUES ('154', '冰糯种兰水飘花翡翠手镯_16', 'bnzlhphfcsz_16', '2000.00', '8000.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('155', '冰糯种兰水飘花翡翠手镯_17', 'bnzlhphfcsz_17', '3500.00', '4000.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '5', '1');
INSERT INTO `product` VALUES ('156', '冰糯种兰水飘花翡翠手镯_18', 'bnzlhphfcsz_18', '2500.00', '5500.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '9', '1');
INSERT INTO `product` VALUES ('157', '冰糯种兰水飘花翡翠手镯_19', 'bnzlhphfcsz_19', '6500.00', '6000.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('158', '冰糯种兰水飘花翡翠手镯_20', 'bnzlhphfcsz_20', '6500.00', '6000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '12', '1');
INSERT INTO `product` VALUES ('159', '冰糯种兰水飘花翡翠手镯_21', 'bnzlhphfcsz_21', '2000.00', '8500.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('160', '冰糯种兰水飘花翡翠手镯_22', 'bnzlhphfcsz_22', '6500.00', '7500.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '5', '1');
INSERT INTO `product` VALUES ('161', '冰糯种兰水飘花翡翠手镯_23', 'bnzlhphfcsz_23', '2000.00', '8000.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '5', '1');
INSERT INTO `product` VALUES ('162', '冰糯种兰水飘花翡翠手镯_24', 'bnzlhphfcsz_24', '3000.00', '8500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '12', '1');
INSERT INTO `product` VALUES ('163', '冰糯种兰水飘花翡翠手镯_25', 'bnzlhphfcsz_25', '6000.00', '8000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '7', '1');
INSERT INTO `product` VALUES ('164', '冰糯种兰水飘花翡翠手镯_26', 'bnzlhphfcsz_26', '5500.00', '5000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '8', '1');
INSERT INTO `product` VALUES ('165', '冰糯种兰水飘花翡翠手镯_27', 'bnzlhphfcsz_27', '3000.00', '8500.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '8', '1');
INSERT INTO `product` VALUES ('166', '冰糯种兰水飘花翡翠手镯_28', 'bnzlhphfcsz_28', '2500.00', '6000.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('167', '冰糯种兰水飘花翡翠手镯_29', 'bnzlhphfcsz_29', '5500.00', '5500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('168', '冰糯种兰水飘花翡翠手镯_30', 'bnzlhphfcsz_30', '3500.00', '4500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('169', '冰糯种兰水飘花翡翠手镯_2', 'bnzlhphfcsz_1_2', '6000.00', '5000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('170', '冰糯种兰水飘花翡翠手镯_3', 'bnzlhphfcsz_1_3', '4500.00', '8000.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('171', '冰糯种兰水飘花翡翠手镯_4', 'bnzlhphfcsz_1_4', '3500.00', '7000.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '7', '1');
INSERT INTO `product` VALUES ('172', '冰糯种兰水飘花翡翠手镯_5', 'bnzlhphfcsz_1_5', '2500.00', '5500.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '7', '1');
INSERT INTO `product` VALUES ('173', '冰糯种兰水飘花翡翠手镯_6', 'bnzlhphfcsz_1_6', '2500.00', '4000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('174', '冰糯种兰水飘花翡翠手镯_7', 'bnzlhphfcsz_1_7', '3500.00', '7000.00', '10000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '4', '1');
INSERT INTO `product` VALUES ('175', '冰糯种兰水飘花翡翠手镯_8', 'bnzlhphfcsz_1_8', '4000.00', '7500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '8', '1');
INSERT INTO `product` VALUES ('176', '冰糯种兰水飘花翡翠手镯_9', 'bnzlhphfcsz_1_9', '5000.00', '4000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '12', '1');
INSERT INTO `product` VALUES ('177', '冰糯种兰水飘花翡翠手镯_10', 'bnzlhphfcsz_1_10', '4000.00', '4000.00', '10500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '7', '1');
INSERT INTO `product` VALUES ('178', '冰糯种兰水飘花翡翠手镯_11', 'bnzlhphfcsz_1_11', '6500.00', '5000.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '6', '1');
INSERT INTO `product` VALUES ('179', '冰糯种兰水飘花翡翠手镯_12', 'bnzlhphfcsz_1_12', '4000.00', '7000.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('180', '冰糯种兰水飘花翡翠手镯_13', 'bnzlhphfcsz_1_13', '6500.00', '4000.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '6', '1');
INSERT INTO `product` VALUES ('181', '冰糯种兰水飘花翡翠手镯_14', 'bnzlhphfcsz_1_14', '5500.00', '8500.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('182', '冰糯种兰水飘花翡翠手镯_15', 'bnzlhphfcsz_1_15', '5000.00', '6000.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('183', '冰糯种兰水飘花翡翠手镯_16', 'bnzlhphfcsz_1_16', '5500.00', '6500.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('184', '冰糯种兰水飘花翡翠手镯_17', 'bnzlhphfcsz_1_17', '5500.00', '7500.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('185', '冰糯种兰水飘花翡翠手镯_18', 'bnzlhphfcsz_1_18', '5500.00', '6500.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '5', '1');
INSERT INTO `product` VALUES ('186', '冰糯种兰水飘花翡翠手镯_19', 'bnzlhphfcsz_1_19', '2500.00', '8000.00', '6000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '3', '1');
INSERT INTO `product` VALUES ('187', '冰糯种兰水飘花翡翠手镯_20', 'bnzlhphfcsz_1_20', '4000.00', '6500.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '6', '1');
INSERT INTO `product` VALUES ('188', '冰糯种兰水飘花翡翠手镯_21', 'bnzlhphfcsz_1_21', '3000.00', '6000.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '9', '1');
INSERT INTO `product` VALUES ('189', '冰糯种兰水飘花翡翠手镯_22', 'bnzlhphfcsz_1_22', '2000.00', '6500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '8', '1');
INSERT INTO `product` VALUES ('190', '冰糯种兰水飘花翡翠手镯_23', 'bnzlhphfcsz_1_23', '5000.00', '5500.00', '9500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('191', '冰糯种兰水飘花翡翠手镯_24', 'bnzlhphfcsz_1_24', '6500.00', '5500.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '1', '1');
INSERT INTO `product` VALUES ('192', '冰糯种兰水飘花翡翠手镯_25', 'bnzlhphfcsz_1_25', '2000.00', '7000.00', '9000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '11', '1');
INSERT INTO `product` VALUES ('193', '冰糯种兰水飘花翡翠手镯_26', 'bnzlhphfcsz_1_26', '6500.00', '5000.00', '8000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '1', '12', '', '2014-12-26', '3', '1');
INSERT INTO `product` VALUES ('194', '冰糯种兰水飘花翡翠手镯_27', 'bnzlhphfcsz_1_27', '5500.00', '4500.00', '7500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '6', '1');
INSERT INTO `product` VALUES ('195', '冰糯种兰水飘花翡翠手镯_28', 'bnzlhphfcsz_1_28', '6000.00', '8500.00', '7000.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '2', '1');
INSERT INTO `product` VALUES ('196', '冰糯种兰水飘花翡翠手镯_29', 'bnzlhphfcsz_1_29', '4500.00', '4500.00', '8500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '10', '1');
INSERT INTO `product` VALUES ('197', '冰糯种兰水飘花翡翠手镯_30', 'bnzlhphfcsz_1_30', '5500.00', '7500.00', '6500.00', '缅甸北部', '直径57 宽14.1MM 商品重量： 51.84g', '32', '仅限于缅甸北部密支那龙塘矿区天然翡翠A货原石精工雕刻', null, '/upload/default_small.jpg', '0', '12', '', '2014-12-26', '9', '1');
INSERT INTO `product` VALUES ('198', '地主牛', 'sd4as6da46', '1200.00', '2000.00', '2300.00', '西伯利亚', '长25.8厘米/宽18.56厘米/高1.25毫米', '20', '土猪', null, null, '0', '12', '', '2019-06-12', '2', '1');
INSERT INTO `product` VALUES ('199', '的撒大', 'fafa', '2000.00', '20000.00', '20000.00', '武汉', '重量：4.5g', '10', '李浩的啊', null, null, '0', '0', '', '2019-06-12', null, '1');
INSERT INTO `product` VALUES ('200', '徐羽', '大大撒旦', '220.00', '202.00', '202.00', '中国', '重量：5045g', '20', '6516', null, '/upload/xiad.PNG', '0', '0', '\0', '2019-06-13', '5', '1');
INSERT INTO `product` VALUES ('201', '的撒大大撒', 'dafa', '2313.00', '23131.00', '3213.00', '武汉', '中国和', '213', '打打', null, '/upload/xiad.PNG', '0', '0', '', '2019-06-13', '1', '1');
INSERT INTO `product` VALUES ('202', '1', '', null, null, null, '', '', null, '', null, '/upload/xiad.PNG', '0', '0', '', '2019-06-21', '1', '1');

-- ----------------------------
-- Table structure for productdir
-- ----------------------------
DROP TABLE IF EXISTS `productdir`;
CREATE TABLE `productdir` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `englishName` varchar(40) DEFAULT NULL,
  `intro` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productdir
-- ----------------------------
INSERT INTO `productdir` VALUES ('1', '翡翠手镯', 'Jade Bangle', 'Jade Bangle');
INSERT INTO `productdir` VALUES ('2', '胸针耳饰', 'Brooch Eardrop', 'Brooch Eardrop');
INSERT INTO `productdir` VALUES ('3', '招财貔貅', 'Lucky PiXiu', 'Lucky PiXiu');
INSERT INTO `productdir` VALUES ('4', '摆件玩件', 'Decoration', 'DecorationDecoration');
INSERT INTO `productdir` VALUES ('5', '翡翠原石', 'Jade Stone', 'Jade Stone');
INSERT INTO `productdir` VALUES ('6', '天然宝石', 'Interface', 'Interface');
INSERT INTO `productdir` VALUES ('7', '指环戒指', 'Ring Finger Ring', 'Ring Finger Ring');
INSERT INTO `productdir` VALUES ('8', '翡翠金蟾', 'Jade Jinchan', 'Jade Jinchan');
INSERT INTO `productdir` VALUES ('9', '十二生肖', 'Chinese Zodiac', 'Chinese Zodiac');
INSERT INTO `productdir` VALUES ('10', '手链项链', 'Bracelet Necklace', 'Bracelet Necklace');
INSERT INTO `productdir` VALUES ('11', '观音佛陀', 'Kwan-yin Buddha', 'Kwan-yin Buddha');
INSERT INTO `productdir` VALUES ('12', '魅力铂金', 'Ruyi Ring', 'RuyiRing');
INSERT INTO `productdir` VALUES ('13', '如意挂件', 'Ruyi Pendant', 'Ruyi Pendant');

-- ----------------------------
-- Table structure for technicianlog
-- ----------------------------
DROP TABLE IF EXISTS `technicianlog`;
CREATE TABLE `technicianlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `workinghours` datetime DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `anomalyid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anomalyid` (`anomalyid`),
  CONSTRAINT `technicianlog_ibfk_1` FOREIGN KEY (`anomalyid`) REFERENCES `anomaly` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of technicianlog
-- ----------------------------
INSERT INTO `technicianlog` VALUES ('1', 'xiaodian', '亭台楼阁修理', null, '楼阁顶部破洞太大', '麦边路41号', '1');
INSERT INTO `technicianlog` VALUES ('2', 'xiaodian', '水池喷泉', null, '泉眼中杂物太多需要工具', '麦边路40号', '2');
INSERT INTO `technicianlog` VALUES ('3', 'xiaodian', '亭台楼阁修理', '2020-04-26 17:44:52', '楼阁顶部破洞太大', '麦边路41号', '1');
INSERT INTO `technicianlog` VALUES ('4', 'xiaodian', '公共消防设备修理', '2020-04-27 11:16:51', '消防栓坏了，需要替换', '丁香路101号', '3');
INSERT INTO `technicianlog` VALUES ('5', 'xiaobing', '公共道路修理', '2020-04-29 19:56:30', '道路破损严重，需要混泥土', '黄冈', '4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '3',
  `status` int(11) DEFAULT '1',
  `loginTime` datetime DEFAULT NULL,
  `loginIp` varchar(20) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `lastLoginIp` varchar(20) DEFAULT NULL,
  `smallPic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('35', 'wer', '3def184ad8f4755ff269862ea77393dd', '147', '坍圮', '一个小猪', '男', '1', '1', '2020-05-06 12:50:35', '127.0.0.1', '2020-05-06 11:04:50', '127.0.0.1', null);
INSERT INTO `user` VALUES ('36', 'xiaobing', '140f6969d5213fd0ece03148e62e461e', '159', '横批', '是她', '女', '2', '1', '2020-03-27 09:57:02', '127.0.0.1', null, null, null);
INSERT INTO `user` VALUES ('37', 'xiaodian', '140f6969d5213fd0ece03148e62e461e', '123', '黄冈', '12', '男', '2', '1', '2020-05-06 22:01:07', '127.0.0.1', '2020-05-06 12:55:51', '127.0.0.1', '/upload/default_small.jpg');
INSERT INTO `user` VALUES ('39', 'reuidsa', '140f6969d5213fd0ece03148e62e461e', '123', '12313', '132', '女', '3', '1', '2020-05-06 11:09:42', '127.0.0.1', '2020-05-06 11:04:20', '127.0.0.1', '/upload/Tim图片.png');
INSERT INTO `user` VALUES ('40', 'cad', '140f6969d5213fd0ece03148e62e461e', '1106069382@qq.com', '黄冈', '你好吗', '男', '0', '1', '2020-05-07 19:30:46', '127.0.0.1', '2020-05-07 19:26:13', '127.0.0.1', '/upload/fc_84.jpg');
INSERT INTO `user` VALUES ('41', 'xai', '140f6969d5213fd0ece03148e62e461e', '1160', '浠水', '王国治国', '男', '0', '1', '2020-04-01 19:15:50', '127.0.0.1', '2020-04-01 19:15:38', '127.0.0.1', '/upload/area_link.gif');
INSERT INTO `user` VALUES ('43', 'limengjie', '81dc9bdb52d04dc20036dbd8313ed055', 'xiaozhu-1', '息县', '我是猪', '女', '3', '1', '2020-05-04 15:48:07', '127.0.0.1', '2020-05-04 15:46:50', '127.0.0.1', '/upload/fc_111.jpg');
INSERT INTO `user` VALUES ('44', 'xiaoliya1', '81dc9bdb52d04dc20036dbd8313ed055', 'xiaozhu0', '黄冈', '我是傻子', '男', '3', '1', '2020-05-02 12:11:58', '127.0.0.1', null, null, '/upload/anniu041.jpg');
INSERT INTO `user` VALUES ('45', 'xiaoming', '81dc9bdb52d04dc20036dbd8313ed055', 'xiaoming@qq.com', '息县', '一个主', '女', '3', '1', null, null, null, null, '/upload/225-54(1).gif');
