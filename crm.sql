/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : crm01

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 08/03/2020 15:22:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_cus_dev_plan
-- ----------------------------
DROP TABLE IF EXISTS `t_cus_dev_plan`;
CREATE TABLE `t_cus_dev_plan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_chance_id` int(11) NULL DEFAULT NULL,
  `plan_item` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plan_date` datetime(0) NULL DEFAULT NULL,
  `exe_affect` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_t_cus_dev_plan`(`sale_chance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_cus_dev_plan
-- ----------------------------
INSERT INTO `t_cus_dev_plan` VALUES (69, 96, 'test01', '2017-02-28 00:00:00', 'test01', '2017-02-28 00:00:00', '2017-02-28 21:06:24', 0);
INSERT INTO `t_cus_dev_plan` VALUES (70, 97, 'test02', '2017-02-28 00:00:00', 'test02', '2017-02-28 00:00:00', '2017-02-28 21:06:25', 0);
INSERT INTO `t_cus_dev_plan` VALUES (71, 97, 'test03', '2017-02-28 00:00:00', 'test03', '2017-02-28 16:44:17', '2017-02-28 16:44:17', 0);
INSERT INTO `t_cus_dev_plan` VALUES (72, 97, 'test06', '2017-02-27 00:00:00', 'test06', '2017-02-28 00:00:00', '2017-02-28 16:48:11', 1);
INSERT INTO `t_cus_dev_plan` VALUES (73, 97, 'test05', '2017-02-22 00:00:00', 'test05', '2017-02-28 00:00:00', '2017-02-28 16:48:10', 1);
INSERT INTO `t_cus_dev_plan` VALUES (74, 97, '23424', '2017-02-23 00:00:00', '234324', '2017-02-28 21:08:02', '2017-02-28 21:08:02', 1);
INSERT INTO `t_cus_dev_plan` VALUES (75, 97, '123213', '2017-04-10 00:00:00', '21321', '2017-04-10 19:06:06', '2017-04-10 19:06:06', 1);
INSERT INTO `t_cus_dev_plan` VALUES (76, 56, 'test', '2017-04-11 00:00:00', 'qqqq', '2017-04-11 16:37:24', '2019-09-23 17:28:43', 1);
INSERT INTO `t_cus_dev_plan` VALUES (77, 56, '345435', '2017-04-11 00:00:00', '345435', '2017-04-11 00:00:00', '2017-04-11 16:52:06', 0);
INSERT INTO `t_cus_dev_plan` VALUES (78, 56, '456546', '2017-04-27 00:00:00', '456546', '2017-04-11 00:00:00', '2017-04-11 16:52:18', 0);
INSERT INTO `t_cus_dev_plan` VALUES (79, 56, '567657', '2017-04-10 00:00:00', '567657', '2017-04-11 16:52:13', '2017-04-11 16:52:13', 0);
INSERT INTO `t_cus_dev_plan` VALUES (80, 62, 'test20', '2017-05-20 00:00:00', 'ok', '2017-05-23 16:22:51', '2017-05-23 16:32:34', 1);
INSERT INTO `t_cus_dev_plan` VALUES (81, 62, '234343', '2017-05-22 00:00:00', 'ok', '2017-05-23 16:28:41', '2017-05-23 16:28:41', 1);
INSERT INTO `t_cus_dev_plan` VALUES (82, 62, '345435', '2017-05-30 00:00:00', '345435', '2017-05-23 16:37:05', '2017-05-23 16:37:05', 1);
INSERT INTO `t_cus_dev_plan` VALUES (83, 62, '345435', '2017-05-31 00:00:00', '345435', '2017-05-23 16:37:13', '2017-05-23 16:37:13', 1);
INSERT INTO `t_cus_dev_plan` VALUES (84, 55, '111', NULL, 'qqq', NULL, NULL, NULL);
INSERT INTO `t_cus_dev_plan` VALUES (85, 66, '111', '2017-09-16 00:44:58', 'qqq', '2017-09-16 00:44:58', '2017-09-16 00:44:58', 1);
INSERT INTO `t_cus_dev_plan` VALUES (86, 66, '111', '2017-09-16 00:45:41', 'qqq', '2017-09-16 00:45:41', '2017-09-16 00:45:41', 1);
INSERT INTO `t_cus_dev_plan` VALUES (87, 66, '111', '2017-09-16 00:00:00', 'qqq', '2017-09-16 00:45:50', '2017-09-16 00:45:50', 1);
INSERT INTO `t_cus_dev_plan` VALUES (88, 66, '111', '2017-09-16 00:45:55', 'qqq', '2017-09-16 00:45:55', '2017-09-16 00:45:55', 1);
INSERT INTO `t_cus_dev_plan` VALUES (89, 66, '3434543', '2017-09-16 00:00:00', 'ok', '2017-09-16 11:42:03', '2017-09-16 11:42:03', 1);
INSERT INTO `t_cus_dev_plan` VALUES (90, 66, '34353', '2017-09-16 00:00:00', 'ok', '2017-09-16 11:43:28', '2017-09-16 11:43:28', 1);
INSERT INTO `t_cus_dev_plan` VALUES (91, 66, '678678', '2017-09-02 00:00:00', '678678', '2017-09-16 11:44:16', '2017-09-16 11:44:16', 1);
INSERT INTO `t_cus_dev_plan` VALUES (92, 66, 'aaaa', '2017-09-16 00:00:00', '678678', '2017-09-16 11:59:24', '2017-09-16 11:59:24', 0);
INSERT INTO `t_cus_dev_plan` VALUES (93, 66, 'abc', '2017-09-16 00:00:00', '678678', '2017-09-16 11:59:56', '2017-09-16 11:59:56', 1);
INSERT INTO `t_cus_dev_plan` VALUES (94, 66, '客户即将开发成功', '2017-09-16 00:00:00', 'very good', '2017-09-16 12:01:35', '2017-09-16 12:01:35', 1);
INSERT INTO `t_cus_dev_plan` VALUES (95, 66, '请客吃饭', '2017-10-20 00:00:00', 'ok', '2017-10-20 17:28:20', '2017-10-20 17:28:20', 1);
INSERT INTO `t_cus_dev_plan` VALUES (96, 66, 'test02', '2017-10-18 00:00:00', 'test02', '2017-10-20 17:28:45', '2017-10-20 17:33:42', 0);
INSERT INTO `t_cus_dev_plan` VALUES (97, 67, 'test', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:29:07', 1);
INSERT INTO `t_cus_dev_plan` VALUES (98, 67, 'test02', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:29:06', 1);
INSERT INTO `t_cus_dev_plan` VALUES (99, 67, 'test03', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:29:05', 1);
INSERT INTO `t_cus_dev_plan` VALUES (100, 67, 'test04', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:29:06', 1);
INSERT INTO `t_cus_dev_plan` VALUES (101, 67, 'test05', '2018-01-11 00:00:00', 'ok', '2018-01-11 11:02:44', '2018-01-11 11:02:44', 0);
INSERT INTO `t_cus_dev_plan` VALUES (102, 67, 'test07', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:09:15', 0);
INSERT INTO `t_cus_dev_plan` VALUES (103, 67, '请老王吃饭', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:07:45', 0);
INSERT INTO `t_cus_dev_plan` VALUES (104, 73, '133', '2018-05-02 00:00:00', '1', '2018-05-02 00:00:00', '2018-05-02 09:23:31', 1);
INSERT INTO `t_cus_dev_plan` VALUES (105, 73, '3', '2018-05-09 00:00:00', '3', '2018-05-02 09:23:43', '2018-05-02 09:23:43', 0);
INSERT INTO `t_cus_dev_plan` VALUES (106, 56, 'test', '2019-09-23 00:00:00', 'ok', '2019-09-23 17:20:51', '2019-09-23 17:20:51', 1);
INSERT INTO `t_cus_dev_plan` VALUES (107, 56, 'test', '2019-09-23 00:00:00', '123213', '2019-09-23 17:21:12', '2019-09-23 17:21:12', 0);
INSERT INTO `t_cus_dev_plan` VALUES (108, 56, 'test002', '2019-09-23 00:00:00', 'ok', '2019-09-23 17:23:33', '2019-09-23 17:28:17', 0);
INSERT INTO `t_cus_dev_plan` VALUES (109, 56, 'test00001', '2019-09-22 00:00:00', 'ok', '2019-09-23 17:24:41', '2019-09-23 17:28:28', 0);
INSERT INTO `t_cus_dev_plan` VALUES (110, 56, 'aaaa', '2019-09-23 00:00:00', 'ok', '2019-09-23 17:29:40', '2019-09-23 17:29:40', 0);
INSERT INTO `t_cus_dev_plan` VALUES (111, 97, '请客吃饭', '2019-11-04 00:00:00', '满意', '2019-11-05 00:00:00', '2019-11-05 16:08:35', 1);
INSERT INTO `t_cus_dev_plan` VALUES (112, 97, 'test', '2019-11-03 00:00:00', 'test', '2019-11-05 16:09:26', '2019-11-05 16:09:26', 1);
INSERT INTO `t_cus_dev_plan` VALUES (113, 97, 'test01', '2019-11-01 00:00:00', 'test01', '2019-11-05 16:10:34', '2019-11-05 16:10:34', 1);
INSERT INTO `t_cus_dev_plan` VALUES (114, 97, 'test02', '2019-11-02 00:00:00', 'test02', '2019-11-05 16:11:34', '2019-11-05 16:11:34', 1);
INSERT INTO `t_cus_dev_plan` VALUES (115, 98, '客户见面', '2019-12-06 00:00:00', '总体ok ，等待下一步沟通', '2019-12-06 11:15:35', '2019-12-06 11:15:35', 0);
INSERT INTO `t_cus_dev_plan` VALUES (116, 98, 'test01', '2019-12-05 00:00:00', 'test', '2019-12-06 00:00:00', '2019-12-06 11:17:58', 0);
INSERT INTO `t_cus_dev_plan` VALUES (117, 98, 'test02', '2019-12-06 00:00:00', 'test02', '2019-12-06 00:00:00', '2019-12-06 11:17:43', 0);
INSERT INTO `t_cus_dev_plan` VALUES (118, 98, '产品购买', '2019-12-06 00:00:00', '成交', '2019-12-06 11:37:13', '2019-12-06 11:37:13', 0);
INSERT INTO `t_cus_dev_plan` VALUES (119, 98, '产品购买', '2019-12-06 00:00:00', '成功', '2019-12-06 11:37:44', '2019-12-06 11:37:44', 0);
INSERT INTO `t_cus_dev_plan` VALUES (120, 96, 'test', '2020-01-11 00:00:00', 'test', '2020-01-11 11:46:09', '2020-01-11 11:46:09', 0);
INSERT INTO `t_cus_dev_plan` VALUES (121, 96, 'test05', '2020-01-03 00:00:00', 'test05', '2020-01-11 00:00:00', '2020-01-11 11:48:26', 0);
INSERT INTO `t_cus_dev_plan` VALUES (122, 93, 'test01', '2020-01-02 00:00:00', 'test01', '2020-01-11 00:00:00', '2020-01-11 11:48:54', 0);
INSERT INTO `t_cus_dev_plan` VALUES (123, 93, 'test', '2020-01-11 00:00:00', 'test', '2020-01-11 12:02:24', '2020-01-11 12:02:24', 1);
INSERT INTO `t_cus_dev_plan` VALUES (124, 124, 'test', '2020-01-10 00:00:00', 'test23423', '2020-02-18 22:41:13', '2020-02-18 22:43:20', 0);
INSERT INTO `t_cus_dev_plan` VALUES (125, 98, 'test', '2020-01-10 00:00:00', 'testasd', '2020-02-18 22:48:28', '2020-02-18 22:48:34', 1);
INSERT INTO `t_cus_dev_plan` VALUES (126, 98, 'test', '2020-01-10 00:00:00', 'test23423', '2020-02-18 22:48:41', '2020-02-18 22:48:41', 0);
INSERT INTO `t_cus_dev_plan` VALUES (127, 124, 'test', '2020-01-10 00:00:00', 'test23423', '2020-02-18 22:49:14', '2020-02-18 22:49:14', 1);
INSERT INTO `t_cus_dev_plan` VALUES (128, 97, 'test', '2020-01-10 00:00:00', 'test23423', '2020-02-23 23:29:27', '2020-02-23 23:29:27', 1);

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cus_manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `myd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xyd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `web_site` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yyzzzch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zczj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nyye` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khyh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khzh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dsdjh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gsdjh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES (1, 'KH21321321', '北京大牛科技', '北京', 'test', '战略合作伙伴', '☆☆☆', '☆☆☆', '北京海淀区双榆树东里15号', '100027', '010-62263393', '010-62263393', 'www.daniu.com', '420103000057404', '赵飞翔', '1000', '5000', '中国银行', '6225231243641', '4422214321321', '4104322332', 0, 1, '2017-01-16 11:28:43', '2016-08-24 18:42:19');
INSERT INTO `t_customer` VALUES (2, 'KH20150526073022', '风驰科技', '北京', 'test', '大客户', '☆☆☆☆', '☆☆☆☆', '321', '21', '321', '321', '321', '321', '码云', '', '21', '321', '321', '321', '3213', 0, 1, '2017-01-16 12:15:19', '2016-11-28 11:46:24');
INSERT INTO `t_customer` VALUES (20, 'KH201709181013450', '腾讯', '测试', 'test', '大客户', '☆☆☆☆☆', '☆☆☆☆', '', '', '13327792156', '', '', NULL, '赵飞翔', '', '', '', '', '', '', 0, 1, '2017-01-16 10:13:57', '2020-02-19 10:30:26');
INSERT INTO `t_customer` VALUES (21, 'KH201709181112739', '阿里巴巴', '北京', 'test01', '战略合作伙伴', '☆☆☆☆☆', '☆☆☆☆☆', '浙江杭州', '324324', '23424324324', '2343', 'www.alibaba.com', '232432', '码云', '100', '100000', '杭州', '23432432', '4324324', '234324234', 0, 1, '2017-01-16 11:12:16', '2017-09-18 11:25:25');
INSERT INTO `t_customer` VALUES (22, 'KH20171021105508617', '中国工商银行', '上海', 'test', '战略合作伙伴', '☆☆☆☆☆', '☆☆☆☆☆', '浦东', '201600', '18920156732', '12312321', 'www.icbc.com', '12323', '耿鹏', '1000000', '100000', '工商', '212321', '', '', 0, 1, '2017-01-16 10:55:09', '2017-10-21 11:00:02');
INSERT INTO `t_customer` VALUES (23, 'KH20180115104723756', '百度', '北京', 'test', '战略合作伙伴', '☆☆☆☆', '☆☆☆☆☆', '北京西二旗', '100000', '2321321', '213123', '123213', '2321321', '李彦宏', '10000', '100000', '工商', '121321313', '', '', 0, 1, '2018-01-16 10:47:23', '2018-01-15 10:50:00');
INSERT INTO `t_customer` VALUES (24, 'KH20180504112003301', '小米科技', '上海', 'test', '重点开发客户', '☆☆☆☆☆', '☆☆☆☆☆', '北京市海淀区清河中街68号华润五彩城购物中心二期13层', '1000000', '010-12345678', '123123131', 'www.xiaomi.com', '110108012660422', '雷军', '185000', '5000000', '中国银行', '99999999999', '91110108551385082Q', '91110108551385082Q', 0, 1, '2018-05-04 11:16:21', '2018-05-04 11:22:24');

-- ----------------------------
-- Table structure for t_customer_contact
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_contact`;
CREATE TABLE `t_customer_contact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NULL DEFAULT NULL,
  `contact_time` datetime(0) NULL DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `overview` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_contact
-- ----------------------------
INSERT INTO `t_customer_contact` VALUES (1, 1, '2015-05-14 05:00:00', '1', '2', NULL, NULL, 1);
INSERT INTO `t_customer_contact` VALUES (2, 1, '2015-05-06 00:00:00', '12', '22', NULL, NULL, 1);
INSERT INTO `t_customer_contact` VALUES (3, 1, '2015-08-22 00:00:00', '珠江路2', '吃饭2', NULL, NULL, 1);
INSERT INTO `t_customer_contact` VALUES (4, 1, '2016-09-01 00:00:00', '112', '233', '2016-09-01 09:53:39', '2016-09-01 09:53:39', 0);
INSERT INTO `t_customer_contact` VALUES (5, 1, '2016-11-22 00:00:00', '师德师风', '阿德的', '2016-11-25 09:38:37', '2016-11-25 09:38:37', 1);

-- ----------------------------
-- Table structure for t_customer_linkman
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_linkman`;
CREATE TABLE `t_customer_linkman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NULL DEFAULT NULL,
  `link_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhiwei` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `office_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  `ceate_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_customer_loss
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_loss`;
CREATE TABLE `t_customer_loss`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cus_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cus_manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_order_time` date NULL DEFAULT NULL,
  `confirm_loss_time` date NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `loss_reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 395 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_loss
-- ----------------------------
INSERT INTO `t_customer_loss` VALUES (383, 'KH21321321', '北京大牛科技', 'admin', NULL, '2020-02-19', 1, '公司转型', 1, '2020-01-16 15:45:45', '2020-01-16 15:45:45');
INSERT INTO `t_customer_loss` VALUES (384, 'KH20150526073022', '风驰科技', 'test', NULL, NULL, 0, NULL, 1, '2020-01-16 15:45:45', '2020-01-16 15:45:45');

-- ----------------------------
-- Table structure for t_customer_order
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_order`;
CREATE TABLE `t_customer_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NULL DEFAULT NULL,
  `order_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_date` datetime(0) NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_order
-- ----------------------------
INSERT INTO `t_customer_order` VALUES (5, 20, '201910021001', '2020-03-03 14:56:10', '上海松江区', 1, '2016-01-29 14:56:15', '2016-11-29 14:56:17', 1);
INSERT INTO `t_customer_order` VALUES (6, 20, '202001022534', '2020-01-16 14:56:26', '杭州市滨江大道', 1, '2016-02-29 14:56:30', '2016-11-29 14:56:32', 1);
INSERT INTO `t_customer_order` VALUES (7, 24, '201911021082', '2018-10-01 17:27:31', '上海浦东', 1, '2019-09-01 17:27:13', '2017-01-01 17:27:21', 1);
INSERT INTO `t_customer_order` VALUES (8, 25, '201909021001', '2019-11-11 10:09:32', '背景海淀', 1, '2019-11-09 10:09:36', '2019-11-09 10:09:39', 1);

-- ----------------------------
-- Table structure for t_customer_reprieve
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_reprieve`;
CREATE TABLE `t_customer_reprieve`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loss_id` int(11) NULL DEFAULT NULL,
  `measure` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_reprieve
-- ----------------------------
INSERT INTO `t_customer_reprieve` VALUES (44, 383, '请客户吃饭', 1, '2017-05-25 17:06:05', '2017-09-19 11:49:37');
INSERT INTO `t_customer_reprieve` VALUES (45, 383, '客户请客', 1, '2017-05-25 00:00:00', '2017-09-19 11:49:36');
INSERT INTO `t_customer_reprieve` VALUES (47, 135, '请马云吃顿饭_河马生鲜', 1, '2017-09-19 11:17:04', '2017-09-19 11:49:26');
INSERT INTO `t_customer_reprieve` VALUES (49, 135, '请老马喝喝茶，聊聊天', 1, '2017-10-21 00:00:00', '2017-10-21 00:00:00');
INSERT INTO `t_customer_reprieve` VALUES (50, 135, '请客吃饭', 1, '2017-10-21 18:10:35', '2017-10-21 18:10:35');

-- ----------------------------
-- Table structure for t_customer_serve
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_serve`;
CREATE TABLE `t_customer_serve`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serve_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `overview` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_request` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_people` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assigner` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assign_time` datetime(0) NULL DEFAULT NULL,
  `service_proce` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_proce_people` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_proce_time` datetime(0) NULL DEFAULT NULL,
  `service_proce_result` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `myd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_serve
-- ----------------------------
INSERT INTO `t_customer_serve` VALUES (74, '6', 'crm 有待改进', '腾讯', 'fw_005', '', 'admin', '42', '2020-02-20 16:32:57', '234234343423432', 'admin', '2020-02-20 18:32:35', '满意', '☆☆☆☆☆', 1, '2020-02-20 20:49:12', '2020-01-18 09:31:53');
INSERT INTO `t_customer_serve` VALUES (75, '9', 'crm 有待改进', '腾讯', 'fw_005', '', 'admin', '10', '2020-01-18 11:01:20', '客服需求已解决 等待反馈', 'admin', '2020-01-18 11:55:23', '满意', '☆☆☆☆☆', 1, '2020-01-18 12:09:00', '2020-01-18 10:20:10');
INSERT INTO `t_customer_serve` VALUES (76, '6', 'this is test...', '腾讯', 'fw_005', 'this is test...', NULL, '42', '2020-02-20 16:33:06', '23423423432', 'admin', '2020-02-20 18:32:46', '满意', '☆☆☆☆', 1, '2020-02-20 20:49:19', '2020-02-20 15:10:50');
INSERT INTO `t_customer_serve` VALUES (82, '6', 'Crm系统系统上线时间?', '腾讯', 'fw_003', '这是服务测试', 'admin', '10', '2020-02-28 11:13:21', 'Crm即将上线', 'admin', '2020-02-28 11:34:32', NULL, NULL, 1, '2020-02-28 11:34:32', '2020-02-28 09:57:18');

-- ----------------------------
-- Table structure for t_datadic
-- ----------------------------
DROP TABLE IF EXISTS `t_datadic`;
CREATE TABLE `t_datadic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_dic_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_dic_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` tinyint(4) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_t_datadic`(`data_dic_value`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_datadic
-- ----------------------------
INSERT INTO `t_datadic` VALUES (1, '客户等级', '普通客户', 1, '2020-02-20 10:04:27', '2020-02-20 10:04:48');
INSERT INTO `t_datadic` VALUES (2, '客户等级', '重点开发客户', 1, '2020-02-20 10:04:30', '2020-02-20 10:04:51');
INSERT INTO `t_datadic` VALUES (3, '客户等级', '大客户', 1, '2020-02-20 10:04:33', '2020-02-20 10:04:53');
INSERT INTO `t_datadic` VALUES (4, '客户等级', '合作伙伴', 1, '2020-02-20 10:04:35', '2020-02-20 10:04:56');
INSERT INTO `t_datadic` VALUES (5, '客户等级', '战略合作伙伴', 1, '2020-02-20 10:04:37', '2020-02-20 10:04:59');
INSERT INTO `t_datadic` VALUES (6, '服务类型', '咨询', 1, '2020-02-20 10:04:40', '2020-02-20 10:05:01');
INSERT INTO `t_datadic` VALUES (7, '服务类型', '建议', 1, '2020-02-20 10:04:43', '2020-02-20 10:05:04');
INSERT INTO `t_datadic` VALUES (8, '服务类型', '投诉', 1, '2020-02-20 10:04:45', '2016-08-24 15:48:46');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `execute_time` int(11) NULL DEFAULT NULL,
  `create_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 449 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (424, '营销机会-主页展示', 'index', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2020-01-19 09:55:48', 1, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (425, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2020-01-19 09:55:49', 119, 'admin', '{\"total\":28,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (426, '营销机会-主页展示', 'index', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2020-01-19 09:58:27', 1, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (427, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2020-01-19 09:58:28', 147, 'admin', '{\"total\":29,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (428, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2020-01-19 09:58:33', 22, 'admin', '{\"total\":29,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (429, '营销管理-添加', 'saveSaleChance', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"chanceSource\":\"官网\",\"customerName\":\"百度\",\"cgjl\":80,\"overview\":\"第一次合作  预祝合作愉快\",\"linkMan\":\"马小云\",\"linkPhone\":\"15710218929\",\"description\":\"\",\"createMan\":\"admin\",\"assignMan\":\"\",\"state\":0,\"devResult\":0,\"isValid\":1,\"createDate\":\"Jan 19, 2020 9:58:45 AM\",\"updateDate\":\"Jan 19, 2020 9:58:45 AM\"}]', '2020-01-19 09:58:46', 23, 'admin', '{\"code\":200,\"msg\":\"机会数据添加成功\"}');
INSERT INTO `t_log` VALUES (430, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2020-01-19 09:58:46', 11, 'admin', '{\"total\":30,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (431, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2020-01-19 09:59:52', 16, 'admin', '{\"total\":30,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (432, '营销机会-主页展示', 'String com.shsxt.crm.controller.SaleChanceController.index()', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2020-01-19 10:01:56', 1, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (433, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2020-01-19 10:01:58', 98, 'admin', '{\"total\":30,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (434, '营销管理-添加', 'ResultInfo com.shsxt.crm.controller.SaleChanceController.saveSaleChance(SaleChance)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"chanceSource\":\"官网\",\"customerName\":\"百度\",\"cgjl\":80,\"overview\":\"第一次合作  预祝合作愉快\",\"linkMan\":\"马小云\",\"linkPhone\":\"15710218929\",\"description\":\"\",\"createMan\":\"admin\",\"assignMan\":\"\",\"state\":0,\"devResult\":0,\"isValid\":1,\"createDate\":\"Jan 19, 2020 10:02:26 AM\",\"updateDate\":\"Jan 19, 2020 10:02:26 AM\"}]', '2020-01-19 10:02:25', 29, 'admin', '{\"code\":200,\"msg\":\"机会数据添加成功\"}');
INSERT INTO `t_log` VALUES (435, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2020-01-19 10:02:27', 17, 'admin', '{\"total\":31,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (436, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2020-02-27 20:00:10', 41, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (437, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2020-02-27 20:01:45', 13, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (438, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2020-02-27 20:05:16', 16, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (439, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2020-02-27 20:05:25', 5, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (440, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2020-02-27 20:05:33', 8, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (441, '营销机会-主页展示', 'String com.shsxt.crm.controller.SaleChanceController.index()', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2020-02-27 20:18:59', 0, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (442, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2020-02-27 20:19:00', 4, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (443, '营销机会-主页展示', 'String com.shsxt.crm.controller.SaleChanceController.index()', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2020-02-27 20:19:46', 0, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (444, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2020-02-27 20:19:47', 6, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (445, '营销管理-删除', 'ResultInfo com.shsxt.crm.controller.SaleChanceController.deleteSaleChance(Integer[])', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[[98]]', '2020-02-27 20:20:03', 18, 'admin', '{\"code\":200,\"msg\":\"机会数据删除成功\"}');
INSERT INTO `t_log` VALUES (446, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2020-02-27 20:20:03', 6, 'admin', '{\"total\":1,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000}]}');
INSERT INTO `t_log` VALUES (447, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2020-02-27 20:20:11', 22, 'admin', '{\"total\":1,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000}]}');
INSERT INTO `t_log` VALUES (448, '营销机会-主页展示', 'String com.shsxt.crm.controller.SaleChanceController.index()', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2020-03-07 17:53:38', 2, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (449, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2020-03-07 17:53:38', 21, 'admin', '{\"total\":1,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000}]}');

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `module_style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块样式',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `parent_id` int(11) NULL DEFAULT NULL,
  `parent_opt_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` int(255) NULL DEFAULT NULL COMMENT '等级',
  `opt_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `orders` int(11) NULL DEFAULT NULL,
  `is_valid` tinyint(4) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_module
-- ----------------------------
INSERT INTO `t_module` VALUES (1, '营销管理', '', '#', -1, NULL, 0, '10', 1, 1, '2017-09-28 00:00:00', '2020-02-17 15:46:59');
INSERT INTO `t_module` VALUES (2, '营销机会管理', '', 'saleChance/index', 1, NULL, 1, '1010', 1, 1, '2017-09-28 00:00:00', '2020-02-17 15:47:26');
INSERT INTO `t_module` VALUES (3, '营销机会管理查询', '', '#', 2, NULL, 2, '101001', 2, 1, '2017-09-28 00:00:00', '2020-02-17 15:47:51');
INSERT INTO `t_module` VALUES (4, '营销机会管理添加', '', '#', 2, NULL, 2, '101002', 2, 1, '2017-09-28 00:00:00', '2017-09-28 00:00:00');
INSERT INTO `t_module` VALUES (5, '营销机会管理删除', '', '#', 2, NULL, 2, '101003', 3, 1, '2017-09-28 00:00:00', '2017-09-28 00:00:00');
INSERT INTO `t_module` VALUES (6, '客户开发计划', '', 'cus_dev_plan/index', 1, NULL, 1, '1020', 2, 1, '2017-09-28 00:00:00', '2017-09-28 00:00:00');
INSERT INTO `t_module` VALUES (7, '查看详情', '', '#', 6, NULL, 2, '102001', 1, 1, '2017-09-28 00:00:00', '2017-09-28 00:00:00');
INSERT INTO `t_module` VALUES (8, '客户管理', '', 'customer/index', -1, NULL, 0, '20', 3, 1, '2017-07-01 00:00:00', '2017-07-01 00:00:00');
INSERT INTO `t_module` VALUES (9, '客户信息管理', '', 'customer/index', 8, NULL, 1, '2010', 1, 1, '2017-09-06 00:00:00', '2017-09-06 00:00:00');
INSERT INTO `t_module` VALUES (10, '创建', '', '#', 9, NULL, 2, '201001', 1, 1, '2017-07-01 00:00:00', '2017-07-01 00:00:00');
INSERT INTO `t_module` VALUES (11, '修改', '', '#', 9, NULL, 2, '201002', 2, 1, '2017-07-01 00:00:00', '2017-07-01 00:00:00');
INSERT INTO `t_module` VALUES (12, '客户流失管理', '', 'customer_loss/index', 8, NULL, 1, '2020', 2, 1, '2017-08-17 00:00:00', '2017-08-17 00:00:00');
INSERT INTO `t_module` VALUES (13, '暂缓流失', '', 'openCustomerReprieve', 12, NULL, 2, '202001', 1, 1, '2017-09-23 00:00:00', '2017-09-23 00:00:00');
INSERT INTO `t_module` VALUES (14, '统计报表', '', '#', -1, NULL, 0, '40', 4, 1, '2017-08-15 00:00:00', '2017-08-15 00:00:00');
INSERT INTO `t_module` VALUES (15, '客户贡献分析', '', 'report/1', 14, NULL, 1, '4010', 1, 1, '2017-08-15 00:00:00', '2017-08-15 00:00:00');
INSERT INTO `t_module` VALUES (16, '服务管理', '', '#', -1, NULL, 0, '30', 3, 1, '2017-08-18 00:00:00', '2017-08-18 00:00:00');
INSERT INTO `t_module` VALUES (17, '基础数据管理', '', '#', -1, NULL, 0, '50', 5, 1, '2017-08-18 00:00:00', '2017-08-18 00:00:00');
INSERT INTO `t_module` VALUES (18, '系统管理', '', '#', -1, NULL, 0, '60', 6, 1, '2017-08-18 00:00:00', '2017-08-18 00:00:00');
INSERT INTO `t_module` VALUES (19, '删除', '', '#', 9, NULL, 2, '201003', 3, 1, '2017-08-18 00:00:00', '2017-08-18 00:00:00');
INSERT INTO `t_module` VALUES (26, '用户管理', '', 'user/index', 18, NULL, 1, '6010', NULL, 1, '2017-10-24 16:54:12', '2017-10-24 16:54:12');
INSERT INTO `t_module` VALUES (27, '角色管理', '', 'role/index', 18, NULL, 1, '6020', NULL, 1, '2018-01-13 11:29:17', '2018-01-13 11:29:19');
INSERT INTO `t_module` VALUES (28, '资源管理', '', 'module/index/1', 18, NULL, 1, '6030', NULL, 1, '2018-01-13 11:29:40', '2018-01-13 11:29:42');
INSERT INTO `t_module` VALUES (34, '服务创建', '', NULL, 16, NULL, 1, '3010', NULL, 1, '2018-01-16 09:21:59', '2018-01-16 09:22:02');
INSERT INTO `t_module` VALUES (35, '服务分配', '', NULL, 16, NULL, 1, '3020', NULL, 1, '2018-01-16 09:22:26', '2018-01-16 09:22:28');
INSERT INTO `t_module` VALUES (36, '服务处理', '', NULL, 16, NULL, 1, '3030', NULL, 1, '2018-01-16 09:22:47', '2018-01-16 09:22:50');
INSERT INTO `t_module` VALUES (37, '服务反馈', '', NULL, 16, NULL, 1, '3040', NULL, 1, '2018-01-16 09:23:11', '2018-01-16 09:23:13');
INSERT INTO `t_module` VALUES (38, '服务归档', '', NULL, 16, NULL, 1, '3050', NULL, 1, '2018-01-16 09:23:37', '2018-01-16 09:23:39');
INSERT INTO `t_module` VALUES (39, '客户构成分析', '', NULL, 14, NULL, NULL, '4020', NULL, 1, '2018-01-16 14:57:24', '2018-01-16 14:57:27');
INSERT INTO `t_module` VALUES (40, '客户服务分析', '', NULL, 14, NULL, NULL, '4030', NULL, 1, '2018-01-16 16:14:48', '2018-01-16 16:14:50');
INSERT INTO `t_module` VALUES (44, '营销机会管理修改', '', NULL, 2, NULL, 2, '101004', NULL, 1, '2019-09-25 15:22:12', '2020-01-15 10:43:09');
INSERT INTO `t_module` VALUES (102, '数据字典管理', '', 'sale_chance/xxx', 17, NULL, 1, '5010', NULL, 1, '2019-09-26 11:07:00', '2019-09-26 11:07:00');
INSERT INTO `t_module` VALUES (103, '产品信息查询', '', '#', 17, NULL, 2, '5020', NULL, 1, '2019-09-26 11:13:14', '2019-09-26 11:13:14');
INSERT INTO `t_module` VALUES (109, '客户类别分析', '', 'report/r01', 14, NULL, 1, '4060', NULL, 1, '2019-11-09 16:31:58', '2019-11-09 16:31:58');
INSERT INTO `t_module` VALUES (126, '流失管理添加', '', NULL, 12, NULL, 2, '123213', 12323, 1, '2020-02-17 15:25:53', '2020-02-17 15:25:53');
INSERT INTO `t_module` VALUES (130, '用户添加', '', NULL, 26, NULL, 2, '601001', NULL, 1, '2020-02-17 15:55:45', '2020-02-17 15:55:45');
INSERT INTO `t_module` VALUES (131, '用户查询', '', NULL, 26, NULL, 2, '601002', NULL, 1, '2020-02-17 15:56:04', '2020-02-17 15:56:04');
INSERT INTO `t_module` VALUES (132, '用户修改', '', NULL, 26, NULL, 2, '601003', NULL, 1, '2020-02-17 15:56:20', '2020-02-17 15:56:20');
INSERT INTO `t_module` VALUES (133, '用户删除', '', NULL, 26, NULL, 2, '601004', NULL, 1, '2020-02-17 15:56:36', '2020-02-17 15:56:36');
INSERT INTO `t_module` VALUES (134, '角色添加', '', NULL, 27, NULL, 2, '602001', NULL, 1, '2020-02-17 15:56:53', '2020-02-17 15:56:53');
INSERT INTO `t_module` VALUES (135, '角色查询', '', NULL, 27, NULL, 2, '602002', NULL, 1, '2020-02-17 15:57:08', '2020-02-17 15:57:08');
INSERT INTO `t_module` VALUES (136, '角色修改', '', NULL, 27, NULL, 2, '602003', NULL, 1, '2020-02-17 15:57:23', '2020-02-17 15:57:23');
INSERT INTO `t_module` VALUES (137, '角色删除', '', NULL, 27, NULL, 2, '602004', NULL, 1, '2020-02-17 15:57:37', '2020-02-17 15:57:37');
INSERT INTO `t_module` VALUES (138, '资源添加', '', NULL, 28, NULL, 2, '603001', NULL, 1, '2020-02-17 15:57:57', '2020-02-17 15:57:57');
INSERT INTO `t_module` VALUES (139, '资源查询', '', NULL, 28, NULL, 2, '603002', NULL, 1, '2020-02-17 15:58:18', '2020-02-17 15:58:18');
INSERT INTO `t_module` VALUES (140, '资源修改', '', NULL, 28, NULL, 2, '603003', NULL, 1, '2020-02-17 15:58:31', '2020-02-17 15:58:31');
INSERT INTO `t_module` VALUES (141, '资源删除', '', NULL, 28, NULL, 2, '603004', NULL, 1, '2020-02-17 15:58:45', '2020-02-17 15:58:45');
INSERT INTO `t_module` VALUES (142, '字典管理', '', 'data_dic/index', 18, NULL, 1, '6040', NULL, 1, '2020-02-20 21:30:11', '2020-02-20 21:30:53');
INSERT INTO `t_module` VALUES (143, '字典添加', '', NULL, 142, NULL, 2, '604001', NULL, 1, '2020-02-20 21:31:12', '2020-02-20 21:31:12');
INSERT INTO `t_module` VALUES (144, '字典查询', '', NULL, 142, NULL, 2, '604002', NULL, 1, '2020-02-20 21:31:31', '2020-02-20 21:31:31');
INSERT INTO `t_module` VALUES (145, '字典修改', '', NULL, 142, NULL, 2, '604003', NULL, 1, '2020-02-20 21:31:47', '2020-02-20 21:31:47');
INSERT INTO `t_module` VALUES (146, '字典删除', '', NULL, 142, NULL, 2, '604004', NULL, 1, '2020-02-20 21:32:03', '2020-02-20 21:32:03');
INSERT INTO `t_module` VALUES (147, '服务创建查询', '', NULL, 34, NULL, 2, '301001', NULL, 1, '2020-02-20 21:32:39', '2020-02-20 21:34:40');
INSERT INTO `t_module` VALUES (149, '服务分配查询', '', NULL, 35, NULL, 2, '302001', NULL, 1, '2020-02-20 21:34:31', '2020-02-20 21:34:31');
INSERT INTO `t_module` VALUES (150, '服务处理查询', '', NULL, 36, NULL, 2, '303001', NULL, 1, '2020-02-20 21:34:56', '2020-02-20 21:34:56');
INSERT INTO `t_module` VALUES (151, '服务处理', '', NULL, 36, NULL, 2, '303002', NULL, 1, '2020-02-20 21:35:20', '2020-02-20 21:35:20');
INSERT INTO `t_module` VALUES (152, '服务反馈查询', '', NULL, 37, NULL, 2, '304001', NULL, 1, '2020-02-20 21:35:43', '2020-02-20 21:35:43');
INSERT INTO `t_module` VALUES (153, '服务反馈', '', NULL, 37, NULL, 2, '304002', NULL, 1, '2020-02-20 21:35:57', '2020-02-20 21:35:57');

-- ----------------------------
-- Table structure for t_order_details
-- ----------------------------
DROP TABLE IF EXISTS `t_order_details`;
CREATE TABLE `t_order_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT NULL,
  `goods_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_num` int(11) NULL DEFAULT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `sum` float NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_details
-- ----------------------------
INSERT INTO `t_order_details` VALUES (1, 5, '联想笔记本', 2, '台', 4900, 9800, 1, '2016-11-29 14:59:32', '2016-11-29 14:59:34');
INSERT INTO `t_order_details` VALUES (2, 5, '惠普音响', 4, '台', 200, 800, 1, '2017-03-01 11:32:34', '2017-03-01 11:32:36');
INSERT INTO `t_order_details` VALUES (3, 8, '罗技键盘', 10, '个', 90, 900, 1, '2017-03-01 11:32:39', '2017-03-01 11:32:41');
INSERT INTO `t_order_details` VALUES (4, 6, '艾利鼠标', 20, '个', 20, 400, 1, '2017-03-01 11:32:46', '2017-03-01 11:32:48');
INSERT INTO `t_order_details` VALUES (5, 7, '东芝U盘', 5, '个', 105, 525, 1, '2017-03-01 11:32:51', '2017-03-01 11:32:53');
INSERT INTO `t_order_details` VALUES (6, 7, '充电器', 1, '个', 30, 30, 1, '2017-03-01 11:32:55', '2017-03-01 11:32:57');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `module_id` int(11) NULL DEFAULT NULL COMMENT '模块ID',
  `acl_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5614 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (3548, 14, 1, '10', '2020-02-17 10:50:33', '2020-02-17 10:50:33');
INSERT INTO `t_permission` VALUES (3549, 14, 2, '1010', '2020-02-17 10:50:34', '2020-02-17 10:50:34');
INSERT INTO `t_permission` VALUES (3550, 14, 3, '101001', '2020-02-17 10:50:34', '2020-02-17 10:50:34');
INSERT INTO `t_permission` VALUES (3551, 14, 4, '101002', '2020-02-17 10:50:34', '2020-02-17 10:50:34');
INSERT INTO `t_permission` VALUES (3552, 14, 5, '101003', '2020-02-17 10:50:34', '2020-02-17 10:50:34');
INSERT INTO `t_permission` VALUES (3553, 14, 44, '101004', '2020-02-17 10:50:34', '2020-02-17 10:50:34');
INSERT INTO `t_permission` VALUES (3554, 14, 100, '1012312321', '2020-02-17 10:50:34', '2020-02-17 10:50:34');
INSERT INTO `t_permission` VALUES (3555, 14, 6, '1020', '2020-02-17 10:50:34', '2020-02-17 10:50:34');
INSERT INTO `t_permission` VALUES (3556, 14, 7, '102001', '2020-02-17 10:50:34', '2020-02-17 10:50:34');
INSERT INTO `t_permission` VALUES (5570, 1, 1, '10', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5571, 1, 2, '1010', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5572, 1, 3, '101001', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5573, 1, 44, '101004', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5574, 1, 14, '40', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5575, 1, 15, '4010', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5576, 1, 39, '4020', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5577, 1, 40, '4030', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5578, 1, 109, '4060', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5579, 1, 16, '30', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5580, 1, 34, '3010', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5581, 1, 147, '301001', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5582, 1, 35, '3020', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5583, 1, 149, '302001', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5584, 1, 36, '3030', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5585, 1, 150, '303001', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5586, 1, 151, '303002', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5587, 1, 37, '3040', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5588, 1, 152, '304001', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5589, 1, 153, '304002', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5590, 1, 38, '3050', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5591, 1, 17, '50', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5592, 1, 102, '5010', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5593, 1, 103, '5020', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5594, 1, 18, '60', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5595, 1, 26, '6010', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5596, 1, 130, '601001', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5597, 1, 131, '601002', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5598, 1, 132, '601003', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5599, 1, 133, '601004', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5600, 1, 27, '6020', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5601, 1, 134, '602001', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5602, 1, 135, '602002', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5603, 1, 136, '602003', '2020-03-07 17:53:26', '2020-03-07 17:53:26');
INSERT INTO `t_permission` VALUES (5604, 1, 137, '602004', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5605, 1, 28, '6030', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5606, 1, 138, '603001', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5607, 1, 139, '603002', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5608, 1, 140, '603003', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5609, 1, 141, '603004', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5610, 1, 142, '6040', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5611, 1, 143, '604001', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5612, 1, 144, '604002', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5613, 1, 145, '604003', '2020-03-07 17:53:27', '2020-03-07 17:53:27');
INSERT INTO `t_permission` VALUES (5614, 1, 146, '604004', '2020-03-07 17:53:27', '2020-03-07 17:53:27');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `is_valid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '系统管理员', '系统管理员', '2016-12-01 00:00:00', '2020-02-24 15:53:12', 1);
INSERT INTO `t_role` VALUES (2, '销售', '销售', '2016-12-01 00:00:00', '2020-02-24 15:53:18', 1);
INSERT INTO `t_role` VALUES (3, '客户经理', '客户经理', '2016-12-01 00:00:00', '2020-02-24 15:53:22', 1);
INSERT INTO `t_role` VALUES (14, '技术经理', '研发', '2017-06-30 14:50:24', '2020-02-24 15:53:25', 1);
INSERT INTO `t_role` VALUES (17, '人事', '人事', '2017-10-23 09:15:10', '2020-02-24 15:53:29', 1);

-- ----------------------------
-- Table structure for t_sale_chance
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_chance`;
CREATE TABLE `t_sale_chance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chance_source` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机会来源',
  `customer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgjl` int(11) NULL DEFAULT NULL,
  `overview` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assign_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assign_time` datetime(0) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `dev_result` int(11) NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sale_chance
-- ----------------------------
INSERT INTO `t_sale_chance` VALUES (97, '官网', '百度', 80, '测试机会数据', '马小云', '15700008929', '测试机会数据', 'admin', '10', '2029-02-23 16:24:18', 1, 1, 1, '2019-11-05 10:28:41', '2020-02-23 15:01:40');
INSERT INTO `t_sale_chance` VALUES (98, '官网', '阿里云', 50, '测试机会数据', '马小云', '15710218920', '测试机会数据', 'admin', '10', '2029-02-23 16:24:38', 1, 2, 0, '2019-11-05 11:07:48', '2020-02-23 15:02:12');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `true_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(4) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (10, 'admin', 'ICy5YqxZB1uWSwcVLSNLcA==', 'admin', '126@126.com', '13327792157', 1, '2016-12-01 12:05:49', '2020-02-17 15:29:45');
INSERT INTO `t_user` VALUES (42, 'scott', '4QrcOUm6Wau+VuBX8g+IPg==', 'scott', '234@126.com', '13327792157', 1, '2017-09-09 00:14:53', '2020-02-24 14:29:19');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 175 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (171, 10, 1, '2020-02-17 15:29:45', '2020-02-17 15:29:45');
INSERT INTO `t_user_role` VALUES (172, 10, 3, '2020-02-17 15:29:56', '2020-02-17 15:29:56');
INSERT INTO `t_user_role` VALUES (175, 42, 3, '2020-02-24 14:29:19', '2020-02-24 14:29:19');

SET FOREIGN_KEY_CHECKS = 1;
