/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : zywork_app

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 08/05/2019 17:36:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for t_account_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_account_detail`;
CREATE TABLE `t_account_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '账目编号',
  `transaction_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '交易编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `amount` bigint(20) NULL DEFAULT NULL COMMENT '金额',
  `integral` bigint(20) NULL DEFAULT NULL COMMENT '积分',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '收入或支出',
  `sub_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收支类型',
  `pay_type` tinyint(4) NULL DEFAULT NULL COMMENT '支付方式',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户账目明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_account_detail
-- ----------------------------
INSERT INTO `t_account_detail` VALUES (1, '201904101047001', 31, -1000, NULL, 1, '手续费', NULL, 1, '2019-04-10 10:47:23', NULL, 0);
INSERT INTO `t_account_detail` VALUES (2, '20190411155919527737', 31, -10000, NULL, 1, '转出', NULL, 1, '2019-04-11 15:59:19', NULL, 0);
INSERT INTO `t_account_detail` VALUES (3, '20190411155919597138', 36, 10000, NULL, 0, '转入', NULL, 1, '2019-04-11 15:59:19', NULL, 0);
INSERT INTO `t_account_detail` VALUES (4, '20190411160454742234', 31, -10000, NULL, 1, '转出', NULL, 1, '2019-04-11 16:04:54', NULL, 0);
INSERT INTO `t_account_detail` VALUES (5, '20190411160454456898', 36, 10000, NULL, 0, '转入', NULL, 1, '2019-04-11 16:04:54', NULL, 0);
INSERT INTO `t_account_detail` VALUES (6, '20190411160818728553', 31, -10000, NULL, 1, '转出', NULL, 1, '2019-04-11 16:08:18', NULL, 0);
INSERT INTO `t_account_detail` VALUES (7, '20190411160818621086', 36, 10000, NULL, 0, '转入', NULL, 1, '2019-04-11 16:08:18', NULL, 0);
INSERT INTO `t_account_detail` VALUES (8, '20190411161204881972', 31, -10000, NULL, 1, '转出', NULL, 1, '2019-04-11 16:12:04', NULL, 0);
INSERT INTO `t_account_detail` VALUES (9, '20190411161204808172', 36, 10000, NULL, 0, '转入', NULL, 1, '2019-04-11 16:12:04', NULL, 0);
INSERT INTO `t_account_detail` VALUES (10, '20190411161732161878', 31, 0, NULL, 2, '手续费', NULL, 1, '2019-04-11 16:17:32', NULL, 0);
INSERT INTO `t_account_detail` VALUES (11, '20190411161847946302', 31, -1000, NULL, 1, '转出', NULL, 1, '2019-04-11 16:18:47', NULL, 0);
INSERT INTO `t_account_detail` VALUES (12, '20190411161847118065', 36, 1000, NULL, 0, '转入', NULL, 1, '2019-04-11 16:18:47', NULL, 0);
INSERT INTO `t_account_detail` VALUES (13, '20190411165753965481', 31, 0, NULL, 2, '手续费', NULL, 1, '2019-04-11 16:57:53', NULL, 0);
INSERT INTO `t_account_detail` VALUES (14, '20190412094834267707', 31, 0, NULL, 2, '手续费', NULL, 1, '2019-04-12 09:48:34', NULL, 0);
INSERT INTO `t_account_detail` VALUES (15, '20190412142851701171', 31, 250, NULL, 2, '手续费', NULL, 1, '2019-04-12 14:28:51', NULL, 0);
INSERT INTO `t_account_detail` VALUES (16, '20190412143751305103', 31, -1000, NULL, 1, '转出', NULL, 1, '2019-04-12 14:37:51', NULL, 0);
INSERT INTO `t_account_detail` VALUES (17, '20190412143751239856', 36, 1000, NULL, 0, '转入', NULL, 1, '2019-04-12 14:37:51', NULL, 0);
INSERT INTO `t_account_detail` VALUES (18, '20190412144030331409', 31, -1000, NULL, 1, '转出', NULL, 1, '2019-04-12 14:40:30', NULL, 0);
INSERT INTO `t_account_detail` VALUES (19, '20190412144030793023', 36, 1000, NULL, 0, '转入', NULL, 1, '2019-04-12 14:40:30', NULL, 0);
INSERT INTO `t_account_detail` VALUES (20, '20190412144919883475', 31, -1000, NULL, 1, '转出', NULL, 1, '2019-04-12 14:49:19', NULL, 0);
INSERT INTO `t_account_detail` VALUES (21, '20190412144919488944', 36, 1000, NULL, 0, '转入', NULL, 1, '2019-04-12 14:49:19', NULL, 0);
INSERT INTO `t_account_detail` VALUES (22, '20190413124136715308', 40, 10000, NULL, 0, '人工充值', NULL, 1, '2019-04-13 12:41:36', NULL, 0);
INSERT INTO `t_account_detail` VALUES (23, '20190415114405227620', 31, -1000, NULL, 1, '提现', NULL, 1, '2019-04-15 11:44:33', NULL, 0);
INSERT INTO `t_account_detail` VALUES (24, '20190415114214226350', 31, -1000, NULL, 1, '提现', NULL, 1, '2019-04-15 11:44:57', NULL, 0);

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `category_id` bigint(20) NOT NULL COMMENT '类别编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章标题',
  `cover_img` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '封面图片',
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章摘要',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_id` bigint(20) NOT NULL COMMENT '创建人编号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 1 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_article_category
-- ----------------------------
DROP TABLE IF EXISTS `t_article_category`;
CREATE TABLE `t_article_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `parent_id` bigint(20) NOT NULL COMMENT '父编号',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类别名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别描述',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 1 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_article_comment`;
CREATE TABLE `t_article_comment`  (
  `id` bigint(20) NOT NULL COMMENT '评论编号',
  `article_id` bigint(20) NOT NULL COMMENT '文章编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论标题',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论详情',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 1 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_funds_frezee
-- ----------------------------
DROP TABLE IF EXISTS `t_funds_frezee`;
CREATE TABLE `t_funds_frezee`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '冻结编号',
  `transaction_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '交易编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `amount` bigint(20) NOT NULL COMMENT '金额',
  `frezee_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `frezee_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户资金冻结与解冻记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_funds_recharge
-- ----------------------------
DROP TABLE IF EXISTS `t_funds_recharge`;
CREATE TABLE `t_funds_recharge`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '充值编号',
  `transaction_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '交易编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `amount` bigint(20) NOT NULL COMMENT '充值金额',
  `recharge_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '充值类型',
  `is_success` tinyint(4) NULL DEFAULT 0 COMMENT '是否成功',
  `out_trade_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户订单号',
  `trade_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付系统订单号',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户资金充值记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_funds_recharge
-- ----------------------------
INSERT INTO `t_funds_recharge` VALUES (1, '', 31, 134, '人工充值', 0, NULL, NULL, 1, '2018-12-23 13:06:57', NULL, 0);
INSERT INTO `t_funds_recharge` VALUES (2, '', 31, 134, '人工充值', 0, NULL, NULL, 1, '2018-12-23 13:08:11', NULL, 0);
INSERT INTO `t_funds_recharge` VALUES (3, '', 31, 134, '人工充值', 0, NULL, NULL, 1, '2018-12-23 14:06:48', NULL, 0);
INSERT INTO `t_funds_recharge` VALUES (4, '', 31, 500, '人工充值', 0, NULL, NULL, 1, '2018-12-26 17:42:32', NULL, 0);
INSERT INTO `t_funds_recharge` VALUES (5, '20190413124136715308', 40, 10000, '人工充值', 0, NULL, NULL, 1, '2019-04-13 12:41:36', NULL, 0);

-- ----------------------------
-- Table structure for t_funds_transfer
-- ----------------------------
DROP TABLE IF EXISTS `t_funds_transfer`;
CREATE TABLE `t_funds_transfer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '转账编号',
  `transaction_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '交易编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `amount` bigint(20) NOT NULL COMMENT '金额',
  `from_user_id` bigint(20) NULL DEFAULT NULL COMMENT 'FROM',
  `to_user_id` bigint(20) NULL DEFAULT NULL COMMENT 'TO',
  `transfer_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `transfer_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户资金转入与转出记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_funds_transfer
-- ----------------------------
INSERT INTO `t_funds_transfer` VALUES (1, '', 31, 100, NULL, 36, '转出', NULL, 1, '2019-01-06 20:56:44', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (2, '', 36, 100, 31, NULL, '转入', NULL, 1, '2019-01-06 20:56:44', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (3, '', 31, 100, NULL, 36, '转出', NULL, 1, '2019-01-15 20:51:44', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (4, '', 36, 100, 31, NULL, '转入', NULL, 1, '2019-01-15 20:51:44', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (5, '20190411155919527737', 31, 100, NULL, 36, '转出', NULL, 1, '2019-04-11 15:59:19', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (6, '20190411155919597138', 36, 100, 31, NULL, '转入', NULL, 1, '2019-04-11 15:59:19', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (7, '20190411160454742234', 31, 100, NULL, 36, '转出', NULL, 1, '2019-04-11 16:04:54', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (8, '20190411160454456898', 36, 100, 31, NULL, '转入', NULL, 1, '2019-04-11 16:04:54', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (9, '20190411160818728553', 31, 100, NULL, 36, '转出', NULL, 1, '2019-04-11 16:08:18', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (10, '20190411160818621086', 36, 100, 31, NULL, '转入', NULL, 1, '2019-04-11 16:08:18', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (11, '20190411161204881972', 31, 100, NULL, 36, '转出', NULL, 1, '2019-04-11 16:12:04', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (12, '20190411161204808172', 36, 100, 31, NULL, '转入', NULL, 1, '2019-04-11 16:12:04', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (13, '20190411161847946302', 31, 10, NULL, 36, '转出', NULL, 1, '2019-04-11 16:18:47', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (14, '20190411161847118065', 36, 10, 31, NULL, '转入', NULL, 1, '2019-04-11 16:18:47', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (15, '20190412143751305103', 31, 1000, NULL, 36, '转出', NULL, 1, '2019-04-12 14:37:51', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (16, '20190412143751239856', 36, 1000, 31, NULL, '转入', NULL, 1, '2019-04-12 14:37:51', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (17, '20190412144030331409', 31, 1000, NULL, 36, '转出', NULL, 1, '2019-04-12 14:40:30', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (18, '20190412144030793023', 36, 1000, 31, NULL, '转入', NULL, 1, '2019-04-12 14:40:30', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (19, '20190412144919883475', 31, 1000, NULL, 36, '转出', NULL, 1, '2019-04-12 14:49:19', NULL, 0);
INSERT INTO `t_funds_transfer` VALUES (20, '20190412144919488944', 36, 1000, 31, NULL, '转入', NULL, 1, '2019-04-12 14:49:19', NULL, 0);

-- ----------------------------
-- Table structure for t_funds_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `t_funds_withdraw`;
CREATE TABLE `t_funds_withdraw`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '提现编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `transaction_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '交易编号',
  `amount` bigint(20) NOT NULL COMMENT '提现金额',
  `bankcard_id` bigint(20) NOT NULL COMMENT '提现银行卡',
  `withdraw_status` tinyint(4) NULL DEFAULT NULL COMMENT '提现状态',
  `withdraw_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提现描述',
  `checked_user_id` bigint(20) NULL DEFAULT NULL COMMENT '审核人编号',
  `checked_time` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `complete_time` datetime(0) NULL DEFAULT NULL COMMENT '完成时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户资金提现记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_funds_withdraw
-- ----------------------------
INSERT INTO `t_funds_withdraw` VALUES (5, 31, '3ea854cde3b842338cc7a0fb3fd49bcb', 100, 1, 2, '不能提现', 31, '2018-12-23 18:47:53', '2018-12-23 18:47:53', 1, '2018-12-23 18:43:49', '2018-12-23 18:47:53', 0);
INSERT INTO `t_funds_withdraw` VALUES (6, 31, '77d07a5d6d2b4a7280e9ecff229d4888', 100, 1, 4, NULL, 31, '2018-12-23 20:56:16', '2018-12-23 21:05:20', 1, '2018-12-23 18:49:38', '2018-12-23 21:05:20', 0);
INSERT INTO `t_funds_withdraw` VALUES (7, 31, '399a929dc59a48f0af9498a534252792', 100, 1, 4, NULL, 31, '2018-12-25 15:04:57', '2018-12-25 15:22:34', 4, '2018-12-23 22:25:54', '2018-12-25 15:22:34', 0);
INSERT INTO `t_funds_withdraw` VALUES (8, 31, 'b84bdc6156554a27a57229faa361d6a4', 50, 1, 4, NULL, NULL, NULL, '2018-12-25 23:24:19', 2, '2018-12-25 18:22:14', '2018-12-25 23:24:19', 0);
INSERT INTO `t_funds_withdraw` VALUES (12, 31, '2a5e0e09c3084e6ebee0dd36a6f3acc7', 100, 1, 1, '审核通过', 31, '2019-01-15 18:06:19', NULL, 6, '2018-12-26 17:36:15', '2019-01-15 18:06:19', 0);
INSERT INTO `t_funds_withdraw` VALUES (13, 31, 'ef011bfb3ee94b6bb978f8fee2023177', 50, 1, 4, NULL, 31, '2018-12-26 17:39:26', '2018-12-26 17:39:45', 3, '2018-12-26 17:38:45', '2018-12-26 17:39:45', 0);
INSERT INTO `t_funds_withdraw` VALUES (14, 31, '20190409144829473362', 10, 1, 3, NULL, NULL, NULL, '2019-04-12 13:17:55', 9, '2019-04-09 14:48:29', '2019-04-12 13:17:55', 0);
INSERT INTO `t_funds_withdraw` VALUES (15, 31, '20190415114214226350', 10, 2, 4, '提现成功', 31, '2019-04-15 11:43:14', '2019-04-15 11:44:57', 3, '2019-04-15 11:42:14', '2019-04-15 11:44:57', 0);
INSERT INTO `t_funds_withdraw` VALUES (16, 31, '20190415114405227620', 10, 2, 4, '提现成功', 31, '2019-04-15 11:44:27', '2019-04-15 11:44:33', 3, '2019-04-15 11:44:05', '2019-04-15 11:44:33', 0);

-- ----------------------------
-- Table structure for t_funds_withdraw_check
-- ----------------------------
DROP TABLE IF EXISTS `t_funds_withdraw_check`;
CREATE TABLE `t_funds_withdraw_check`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '提现审核编号',
  `withdraw_id` bigint(20) NOT NULL COMMENT '提现编号',
  `transaction_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '交易编号',
  `withdraw_status` tinyint(4) NOT NULL COMMENT '提现状态',
  `withdraw_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提现描述',
  `checked_user_id` bigint(20) NOT NULL COMMENT '审核人编号',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户资金提现审核历史表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_funds_withdraw_check
-- ----------------------------
INSERT INTO `t_funds_withdraw_check` VALUES (14, 12, '2a5e0e09c3084e6ebee0dd36a6f3acc7', 1, '审核通过', 31, 1, '2019-01-14 20:50:02', NULL, 0);
INSERT INTO `t_funds_withdraw_check` VALUES (15, 12, '2a5e0e09c3084e6ebee0dd36a6f3acc7', 1, NULL, 31, 1, '2019-01-15 18:06:19', NULL, 0);
INSERT INTO `t_funds_withdraw_check` VALUES (16, 15, '20190415114214226350', 1, NULL, 31, 1, '2019-04-15 11:43:14', NULL, 0);
INSERT INTO `t_funds_withdraw_check` VALUES (17, 16, '20190415114405227620', 1, NULL, 31, 1, '2019-04-15 11:44:27', NULL, 0);
INSERT INTO `t_funds_withdraw_check` VALUES (18, 16, '20190415114405227620', 4, '提现成功', 31, 1, '2019-04-15 11:44:33', NULL, 0);
INSERT INTO `t_funds_withdraw_check` VALUES (19, 15, '20190415114214226350', 4, '提现成功', 31, 1, '2019-04-15 11:44:57', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_attribute`;
CREATE TABLE `t_goods_attribute`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品属性编号',
  `attr_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性名称',
  `attr_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性代码',
  `attr_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据类型',
  `attr_length` int(11) NOT NULL COMMENT '数据长度',
  `attr_required` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否必填',
  `attr_display` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否前端显示',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品属性信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_attribute
-- ----------------------------
INSERT INTO `t_goods_attribute` VALUES (1, '售卖标题', 'title', 'String', 50, 0, 0, 2, '2019-02-13 17:47:09', '2019-02-13 17:54:43', 0);
INSERT INTO `t_goods_attribute` VALUES (2, '品牌', 'brand', 'String', 20, 0, 0, 1, '2019-02-13 17:51:41', NULL, 0);
INSERT INTO `t_goods_attribute` VALUES (3, '商品名称', 'name', 'String', 50, 0, 0, 4, '2019-02-13 17:54:27', '2019-02-21 23:00:34', 0);
INSERT INTO `t_goods_attribute` VALUES (4, '毛重', 'grossWeight', 'Double', 20, 0, 0, 2, '2019-02-21 22:56:47', '2019-02-21 22:57:35', 0);
INSERT INTO `t_goods_attribute` VALUES (5, '净重', 'netWeight', 'Double', 20, 0, 0, 1, '2019-02-21 22:57:25', NULL, 0);
INSERT INTO `t_goods_attribute` VALUES (6, '价格', 'price', 'Long', 20, 0, 0, 1, '2019-02-21 22:56:47', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_attribute_value`;
CREATE TABLE `t_goods_attribute_value`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品属性值编号',
  `goods_sku_id` bigint(20) NOT NULL COMMENT 'SKU编号',
  `attr_id` bigint(20) NOT NULL COMMENT '属性编号',
  `attr_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性值',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品SKU属性及属性值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_attribute_value
-- ----------------------------
INSERT INTO `t_goods_attribute_value` VALUES (44, 3, 1, '时尚女装款式二99元', 1, '2019-03-04 15:40:21', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (45, 3, 2, '智悦', 1, '2019-03-04 15:40:21', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (46, 3, 3, '智悦时尚女装', 1, '2019-03-04 15:40:21', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (47, 3, 4, '1.5', 1, '2019-03-04 15:40:21', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (48, 3, 5, '1', 1, '2019-03-04 15:40:21', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (49, 3, 6, '99', 1, '2019-03-04 15:40:21', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (50, 2, 1, '时尚女装款式一99元', 1, '2019-03-04 15:40:29', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (51, 2, 2, '智悦', 1, '2019-03-04 15:40:29', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (52, 2, 3, '智悦时尚女装', 1, '2019-03-04 15:40:29', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (53, 2, 4, '1.5', 1, '2019-03-04 15:40:29', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (54, 2, 5, '1', 1, '2019-03-04 15:40:29', NULL, 0);
INSERT INTO `t_goods_attribute_value` VALUES (55, 2, 6, '99', 1, '2019-03-04 15:40:29', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_cart`;
CREATE TABLE `t_goods_cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `goods_id` bigint(20) NOT NULL COMMENT '商品编号',
  `goods_sku_id` bigint(20) NOT NULL COMMENT 'SKU编号',
  `quantity` int(11) NOT NULL COMMENT '购买数量',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '购物车信息记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_cart
-- ----------------------------
INSERT INTO `t_goods_cart` VALUES (1, 31, 1, 2, 1, 1, '2019-03-06 11:42:41', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_category`;
CREATE TABLE `t_goods_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类目编号',
  `parent_id` bigint(20) NOT NULL COMMENT '父编号',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类目名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类目描述',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品类目信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_category
-- ----------------------------
INSERT INTO `t_goods_category` VALUES (1, 0, '服装', NULL, 1, '2019-02-13 17:48:51', NULL, 0);
INSERT INTO `t_goods_category` VALUES (2, 0, '鞋包', NULL, 1, '2019-02-13 17:49:03', NULL, 0);
INSERT INTO `t_goods_category` VALUES (3, 1, '女装', NULL, 1, '2019-02-13 17:49:14', NULL, 0);
INSERT INTO `t_goods_category` VALUES (4, 1, '男装', NULL, 1, '2019-02-13 17:49:21', NULL, 0);
INSERT INTO `t_goods_category` VALUES (5, 1, '内衣', NULL, 1, '2019-02-13 17:49:45', NULL, 0);
INSERT INTO `t_goods_category` VALUES (6, 1, '童装', NULL, 1, '2019-02-13 17:49:59', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_category_attribute
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_category_attribute`;
CREATE TABLE `t_goods_category_attribute`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类目属性编号',
  `category_id` bigint(20) NOT NULL COMMENT '商品类目编号',
  `attr_id` bigint(20) NOT NULL COMMENT '属性编号',
  `attr_order` int(11) NOT NULL DEFAULT 1000 COMMENT '属性排序',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品类目属性信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_category_attribute
-- ----------------------------
INSERT INTO `t_goods_category_attribute` VALUES (12, 3, 4, 4, 4, '2019-02-21 22:58:14', '2019-03-02 17:02:03', 0);
INSERT INTO `t_goods_category_attribute` VALUES (13, 3, 3, 3, 4, '2019-02-21 22:58:14', '2019-03-02 17:02:03', 0);
INSERT INTO `t_goods_category_attribute` VALUES (14, 3, 1, 1, 4, '2019-02-21 22:58:14', '2019-03-02 17:02:03', 0);
INSERT INTO `t_goods_category_attribute` VALUES (15, 3, 5, 5, 4, '2019-02-21 22:58:14', '2019-03-02 17:02:03', 0);
INSERT INTO `t_goods_category_attribute` VALUES (16, 3, 6, 6, 4, '2019-02-21 22:58:14', '2019-03-02 17:02:03', 0);
INSERT INTO `t_goods_category_attribute` VALUES (17, 3, 2, 2, 4, '2019-02-21 22:58:14', '2019-03-02 17:02:03', 0);
INSERT INTO `t_goods_category_attribute` VALUES (18, 4, 4, 1000, 1, '2019-02-22 10:17:23', NULL, 0);
INSERT INTO `t_goods_category_attribute` VALUES (19, 4, 1, 1000, 1, '2019-02-22 10:17:23', NULL, 0);
INSERT INTO `t_goods_category_attribute` VALUES (20, 4, 5, 1000, 1, '2019-02-22 10:17:23', NULL, 0);
INSERT INTO `t_goods_category_attribute` VALUES (25, 6, 3, 2, 3, '2019-02-22 10:36:41', '2019-02-27 17:52:16', 0);
INSERT INTO `t_goods_category_attribute` VALUES (26, 6, 4, 5, 3, '2019-02-22 10:36:41', '2019-02-27 17:52:16', 0);
INSERT INTO `t_goods_category_attribute` VALUES (27, 6, 1, 1, 3, '2019-02-22 10:36:41', '2019-02-27 17:52:16', 0);
INSERT INTO `t_goods_category_attribute` VALUES (28, 6, 5, 6, 3, '2019-02-22 10:36:41', '2019-02-27 17:52:16', 0);
INSERT INTO `t_goods_category_attribute` VALUES (29, 6, 6, 4, 3, '2019-02-22 10:36:41', '2019-02-27 17:52:16', 0);
INSERT INTO `t_goods_category_attribute` VALUES (30, 6, 2, 3, 3, '2019-02-22 10:36:41', '2019-02-27 17:52:16', 0);
INSERT INTO `t_goods_category_attribute` VALUES (42, 5, 3, 2, 2, '2019-03-02 17:53:05', '2019-03-02 17:53:15', 0);
INSERT INTO `t_goods_category_attribute` VALUES (43, 5, 4, 3, 2, '2019-03-02 17:53:05', '2019-03-02 17:53:15', 0);
INSERT INTO `t_goods_category_attribute` VALUES (44, 5, 1, 1, 2, '2019-03-02 17:53:05', '2019-03-02 17:53:15', 0);
INSERT INTO `t_goods_category_attribute` VALUES (45, 5, 5, 4, 2, '2019-03-02 17:53:05', '2019-03-02 17:53:15', 0);

-- ----------------------------
-- Table structure for t_goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_comment`;
CREATE TABLE `t_goods_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品评论编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `goods_id` bigint(20) NOT NULL COMMENT '商品编号',
  `goods_sku_id` bigint(20) NOT NULL COMMENT 'SKU编号',
  `comments` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论详情',
  `append_comment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '追加评论',
  `reply` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回复详情',
  `stick_status` tinyint(4) NULL DEFAULT 0 COMMENT '置顶状态',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_goods_comment_pic
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_comment_pic`;
CREATE TABLE `t_goods_comment_pic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论图片编号',
  `comment_id` bigint(20) NOT NULL COMMENT '评论编号',
  `pic_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片URL',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品评论图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_goods_coupon
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_coupon`;
CREATE TABLE `t_goods_coupon`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '优惠券编号',
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '商品类目编号',
  `goods_id` bigint(20) NULL DEFAULT NULL COMMENT '商品编号',
  `goods_sku_id` bigint(20) NULL DEFAULT NULL COMMENT '商品SKU编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '优惠券标题',
  `use_min_amount` bigint(20) NULL DEFAULT NULL COMMENT '最小消费金额',
  `discount_amount` bigint(20) NULL DEFAULT NULL COMMENT '满减优惠金额',
  `discount_percent` double(3, 0) NULL DEFAULT NULL COMMENT '满减折扣',
  `integral_amount` int(11) NULL DEFAULT NULL COMMENT '赠送积分',
  `total_count` int(11) NOT NULL COMMENT '优惠券总量',
  `coupon_usable_range` tinyint(4) NOT NULL COMMENT '优惠券使用范围',
  `coupon_type` tinyint(4) NOT NULL COMMENT '优惠券类型',
  `start_time` datetime(0) NOT NULL COMMENT '开始时间',
  `due_time` datetime(0) NULL DEFAULT NULL COMMENT '到期时间',
  `valid_days` int(11) NULL DEFAULT NULL COMMENT '有效时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品优惠券信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_info`;
CREATE TABLE `t_goods_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺编号',
  `category_id` bigint(20) NOT NULL COMMENT '类目编号',
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图文详情',
  `shelf_status` tinyint(4) NULL DEFAULT 0 COMMENT '上架状态',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品记录表，包含多个商品SKU' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_info
-- ----------------------------
INSERT INTO `t_goods_info` VALUES (1, 1, 3, '女装图文详情', 0, 1, '2019-02-27 11:46:27', NULL, 0);
INSERT INTO `t_goods_info` VALUES (2, 1, 4, '图文详情', 0, 1, '2019-02-27 17:50:20', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_order
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_order`;
CREATE TABLE `t_goods_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `total_amount` bigint(20) NOT NULL COMMENT '订单金额',
  `pay_amount` bigint(20) NOT NULL COMMENT '实付金额',
  `discount_amount` bigint(20) NOT NULL DEFAULT 0 COMMENT '优惠金额',
  `integral_amount` bigint(20) NOT NULL DEFAULT 0 COMMENT '赠送积分',
  `express_fee` bigint(20) NULL DEFAULT 0 COMMENT '运费',
  `order_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '订单状态',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `pay_type` tinyint(4) NULL DEFAULT NULL COMMENT '支付方式',
  `transaction_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付订单号',
  `pay_success` tinyint(4) NULL DEFAULT NULL COMMENT '是否支付成功',
  `deliver_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `deal_time` datetime(0) NULL DEFAULT NULL COMMENT '成交时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单信息表，一个订单包含多个订单条目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_order
-- ----------------------------
INSERT INTO `t_goods_order` VALUES (1, 31, 'order_no', 20000, 20000, 0, 200, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-03-12 15:45:24', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_order_coupon
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_order_coupon`;
CREATE TABLE `t_goods_order_coupon`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用券编号',
  `order_id` bigint(20) NOT NULL COMMENT '订单编号',
  `coupon_id` bigint(20) NOT NULL COMMENT '优惠券编号',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单优惠券使用记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_goods_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_order_item`;
CREATE TABLE `t_goods_order_item`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单项编号',
  `order_id` bigint(20) NOT NULL COMMENT '订单编号',
  `goods_id` bigint(20) NOT NULL COMMENT '商品编号',
  `goods_sku_id` bigint(20) NOT NULL COMMENT 'SKU编号',
  `sku_pic_id` bigint(20) NOT NULL COMMENT 'SKU图片编号',
  `sku_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '售卖标题',
  `sku_info` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'SKU属性JSON',
  `quantity` int(11) NOT NULL COMMENT '购买数量',
  `pay_amount` bigint(20) NOT NULL COMMENT '实付金额',
  `discount_amount` bigint(20) NOT NULL DEFAULT 0 COMMENT '优惠金额',
  `integral_amount` bigint(20) NOT NULL DEFAULT 0 COMMENT '赠送积分',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单详情信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_order_item
-- ----------------------------
INSERT INTO `t_goods_order_item` VALUES (1, 1, 1, 2, 34, '智悦时尚女装', 'sku详情', 1, 20000, 0, 200, 1, '2019-03-12 15:46:42', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_order_logistics
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_order_logistics`;
CREATE TABLE `t_goods_order_logistics`  (
  `id` bigint(20) NOT NULL COMMENT '订单编号',
  `real_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '市',
  `district` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区/县',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `is_deliver` tinyint(4) NULL DEFAULT 0 COMMENT '是否已发货',
  `logistics_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司名称',
  `logistics_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司编码',
  `logistics_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单物流信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_order_logistics
-- ----------------------------
INSERT INTO `t_goods_order_logistics` VALUES (1, '王振宇', '13672297775', '江西省', '赣州市', '章贡区', '详细地址', 0, NULL, NULL, NULL, 1, '2019-03-12 15:48:14', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_pic
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_pic`;
CREATE TABLE `t_goods_pic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品图片编号',
  `goods_id` bigint(20) NOT NULL COMMENT '商品编号',
  `pic_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片URL',
  `pic_order` int(11) NULL DEFAULT 1000 COMMENT '图片顺序',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品图片信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_pic
-- ----------------------------
INSERT INTO `t_goods_pic` VALUES (34, 1, 'upload/image/2019022717454055870.png', 1, 2, '2019-02-27 17:45:40', '2019-02-28 11:01:41', 0);
INSERT INTO `t_goods_pic` VALUES (35, 1, 'upload/image/2019022717463281944.png', 2, 2, '2019-02-27 17:46:32', '2019-02-28 11:01:41', 0);
INSERT INTO `t_goods_pic` VALUES (36, 1, 'upload/image/2019022717463223970.png', 3, 2, '2019-02-27 17:46:32', '2019-02-28 11:01:41', 0);

-- ----------------------------
-- Table structure for t_goods_shop
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_shop`;
CREATE TABLE `t_goods_shop`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '店铺编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `category_id` bigint(20) NOT NULL COMMENT '类目编号',
  `subject_type` tinyint(4) NOT NULL COMMENT '主体类型',
  `logo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺Logo',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺标题',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺简介',
  `level` tinyint(4) NULL DEFAULT 1 COMMENT '店铺等级',
  `check_status` tinyint(4) NULL DEFAULT 0 COMMENT '审核状态',
  `check_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核描述',
  `checked_user_id` tinyint(4) NULL DEFAULT NULL COMMENT '审核人编号',
  `checked_time` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '店铺信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_shop
-- ----------------------------
INSERT INTO `t_goods_shop` VALUES (1, 31, 1, 1, 'logo', '智悦服装', '智悦服装', 1, 0, NULL, NULL, NULL, 2, '2019-02-22 12:03:45', '2019-02-22 13:41:11', 0);

-- ----------------------------
-- Table structure for t_goods_shop_certification
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_shop_certification`;
CREATE TABLE `t_goods_shop_certification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '店铺认证编号',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺编号',
  `detail` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '认证详情JSON',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '店铺认证信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_shop_certification
-- ----------------------------
INSERT INTO `t_goods_shop_certification` VALUES (1, 1, '{\n    \"identity\": \"360723************\",\n    \"realName\": \"王振宇\",\n    \"validDate\": \"2028-10-10\",\n    \"idcardFront\": \"str\",\n    \"idcardReverse\": \"str\",\n    \"idcardHand\": \"str\",\n    \"companyName\": \"赣州智悦科技有限公司\",\n    \"creditNumber\": \"str\",\n    \"businessScope\": \"str\",\n    \"businessLicense\": \"str\"\n}', 1, '2019-02-22 14:04:18', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_shop_check
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_shop_check`;
CREATE TABLE `t_goods_shop_check`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '店铺审核编号',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺编号',
  `check_status` tinyint(4) NULL DEFAULT 0 COMMENT '审核状态',
  `check_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核描述',
  `checked_user_id` tinyint(4) NULL DEFAULT NULL COMMENT '审核人编号',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '店铺审核历史表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_shop_check
-- ----------------------------
INSERT INTO `t_goods_shop_check` VALUES (1, 1, 1, '证件齐全，通过', 31, 1, '2019-02-22 14:22:30', NULL, 0);

-- ----------------------------
-- Table structure for t_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_sku`;
CREATE TABLE `t_goods_sku`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'SKU编号',
  `goods_id` bigint(20) NOT NULL COMMENT '商品编号',
  `pic_id` bigint(20) NULL DEFAULT NULL COMMENT '商品图片编号',
  `shelf_status` tinyint(4) NULL DEFAULT 0 COMMENT '上架状态',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品SKU信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods_sku
-- ----------------------------
INSERT INTO `t_goods_sku` VALUES (2, 1, 34, 0, 3, '2019-02-28 14:44:55', '2019-03-02 12:28:27', 0);
INSERT INTO `t_goods_sku` VALUES (3, 1, 35, 0, 2, '2019-02-28 14:46:42', '2019-02-28 15:27:21', 0);
INSERT INTO `t_goods_sku` VALUES (4, 1, 36, 0, 12, '2019-02-28 14:47:29', '2019-03-02 16:40:25', 0);

-- ----------------------------
-- Table structure for t_goods_user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_user_coupon`;
CREATE TABLE `t_goods_user_coupon`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `coupon_id` bigint(20) NOT NULL COMMENT '优惠券编号',
  `coupon_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '优惠券状态',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品优惠券用户领券信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '消息编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息标题',
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息摘要',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息内容',
  `message_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息类型',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '消息记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (1, 'zywork-app体验版发布', NULL, 'zywork-app体验版于2019-01-22晚上10点45分正式发布，邀请您使用！', '', 1, '2019-01-24 16:19:13', NULL, 0);
INSERT INTO `t_message` VALUES (7, '加友申诉', NULL, '您的微信任务:\'测试任务发布\'有一名用户正在进行申诉，请尽快进行确认操作', NULL, 1, '2019-04-30 17:30:04', NULL, 0);

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '模块编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模块标题',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块描述',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统模块表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_module
-- ----------------------------
INSERT INTO `t_module` VALUES (1, '测试模块', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (2, '模块管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (3, '权限管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (4, '角色管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (5, '模块权限管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (6, '角色权限管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (7, '系统配置管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (8, '系统日志管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (9, '组织部门管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (10, '用户组织部门管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (11, '用户管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (12, '用户角色管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (13, '用户详情管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (14, '用户第三方登录管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (15, '用户钱包管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (16, '用户银行卡管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (17, '充值管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (18, '提现管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (19, '转账管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (20, '用户收货地址管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (21, '用户账目详情管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (22, '用户路径管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (23, '分销管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (24, '文章类别管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (25, '文章管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (26, '文章评论管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (27, '流程文件管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (28, '流程管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (29, '商品类目管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (30, '商品属性管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (31, '商品类目属性管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (32, '店铺信息管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (33, '店铺认证信息管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (34, '店铺审核历史查询', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (35, '商品基础信息管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (36, '商品图片管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (37, '商品SKU管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (38, '商品SKU属性管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (39, '商品SKU属性查询', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (40, '购物车管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (41, '购物车查询', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (42, '商城订单管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (43, '商城订单项管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (44, '商城订单物流管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (45, '商城用户订单查询', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (46, '商城用户订单项查询', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (47, '商城用户订单物流查询', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (48, '消息管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (49, '消息查询', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (50, '公告管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (51, '角色权限导入导出管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (52, 'Redis缓存管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (53, '定时任务管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (54, 'DAU管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (55, '用户统计管理', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (56, '微信任务', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (57, '微信认证', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (58, '微信任务报名', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_module` VALUES (59, '微信任务申诉', NULL, 1, '2019-04-15 16:58:06', NULL, 0);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公告摘要',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告内容',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '截止时间',
  `stick_status` tinyint(4) NULL DEFAULT 0 COMMENT '置顶状态',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, '公告标题', '公告摘要', '公告内容<p>hello</p>', '2019-01-08 20:00:00', 1, 4, '2019-01-07 00:12:44', '2019-03-16 18:16:28', 0);

-- ----------------------------
-- Table structure for t_organization
-- ----------------------------
DROP TABLE IF EXISTS `t_organization`;
CREATE TABLE `t_organization`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '组织编号',
  `parent_id` bigint(20) NOT NULL COMMENT '父编号',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '组织名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织描述',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '组织或部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_organization
-- ----------------------------
INSERT INTO `t_organization` VALUES (1, 0, '赣州智悦科技有限公司', NULL, 1, '2019-01-24 16:15:02', NULL, 0);
INSERT INTO `t_organization` VALUES (2, 1, '研发部', NULL, 1, '2019-01-24 16:15:13', NULL, 0);
INSERT INTO `t_organization` VALUES (3, 1, '市场部', NULL, 1, '2019-01-24 16:15:27', NULL, 0);
INSERT INTO `t_organization` VALUES (4, 2, '后端组', NULL, 1, '2019-01-26 09:59:02', NULL, 0);
INSERT INTO `t_organization` VALUES (5, 2, '前端组', NULL, 1, '2019-01-26 10:04:42', NULL, 0);
INSERT INTO `t_organization` VALUES (8, 2, '运维组', NULL, 1, '2019-01-26 10:37:52', NULL, 0);
INSERT INTO `t_organization` VALUES (12, 2, '测试组', NULL, 1, '2019-01-26 10:47:41', NULL, 0);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '权限编号',
  `module_id` bigint(20) NOT NULL COMMENT '所属模块',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限标题',
  `permission` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限字符串',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, 1, '测试添加', '/test/add', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (2, 1, '测试修改', '/test/edit', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (3, 1, '测试删除', '/test/remove/*', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (4, 1, '测试文件上传', '/test/upload', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (5, 2, '后台-模块管理', '/module/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (6, 3, '后台-权限管理', '/permission/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (7, 4, '后台-角色管理', '/role/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (8, 5, '后台-模块权限管理', '/module-permission/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (9, 5, '用户-模块权限查询', '/module-permission/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (10, 6, '后台-角色权限管理', '/role-permission/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (11, 7, '后台-系统配置管理', '/sys-config/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (12, 8, '后台-系统日志管理', '/sys-log/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (13, 9, '后台-组织部门管理', '/organization/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (14, 10, '后台-用户组织部门管理', '/user-organization/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (15, 10, '用户-用户组织部门查询', '/user-organization/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (16, 11, '后台-用户管理', '/user/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (17, 12, '后台-用户角色查询', '/user-role/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (18, 12, '用户-用户角色查询', '/user-role/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (19, 13, '后台-用户详情管理', '/user-userdetail/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (20, 13, '用户-用户详情查询', '/user-userdetail/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (21, 14, '后台-用户第三方登录管理', '/user-usersocial/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (22, 15, '后台-用户钱包管理', '/user-wallet/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (23, 16, '后台-用户银行卡管理', '/user-bankcard/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (24, 16, '用户-用户银行卡管理', '/user-bankcard/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (25, 17, '后台-系统人工充值', '/user-recharge/admin/human', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (26, 18, '后台-提现管理', '/withdraw/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (27, 18, '用户-提现管理', '/withdraw/user/*', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (28, 19, '用户-转账操作', '/transfer/user/*', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (29, 20, '后台-用户收货地址管理', '/shipping-address/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (30, 20, '用户-用户收货地址管理', '/shipping-address/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (31, 21, '后台-用户账目详情管理', '/accoundetail/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (32, 22, '后台-用户路径管理', '/user-path/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (33, 23, '后台-分销管理', '/distribution/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (34, 23, '用户-分销查询', '/distribution/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (35, 24, '后台-文章类别管理', '/article-category/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (36, 24, '用户-文章类别查询', '/article-category/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (37, 25, '后台-文章管理', '/article/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (38, 25, '用户-文章查询', '/article/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (39, 26, '后台-文章评论管理', '/article-comment/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (40, 26, '用户-文章评论管理', '/article-comment/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (41, 27, '后台-流程文件管理', '/process/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (42, 28, '后台-流程管理', '/process-activiti/admin/do/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (43, 28, '后台-流程查询', '/process-activiti/admin/query/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (44, 28, '用户-流程管理', '/process-activiti/user/do/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (45, 28, '用户-流程查询', '/process-activiti/user/query/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (46, 29, '后台-商品类目管理', '/goods-category/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (47, 29, '用户-商品类目查询', '/goods-category/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (48, 30, '后台-商品属性管理', '/goods-attribute/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (49, 31, '后台-商品类目属性管理', '/goods-category-attr/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (50, 32, '后台-店铺信息管理', '/goods-shop/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (51, 33, '后台-店铺认证信息管理', '/goods-shop-certification/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (52, 34, '后台-店铺审核历史查询', '/shop-certification-check/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (53, 35, '后台-商品基础信息管理', '/goods-info/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (54, 35, '用户-商品基础信息管理', '/goods-info/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (55, 36, '后台-商品图片管理', '/goods-pic/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (56, 36, '用户-商品图片管理', '/goods-pic/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (57, 37, '后台-商品SKU管理', '/goods-sku/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (58, 38, '后台-商品SKU属性管理', '/goods-attribute-value/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (59, 39, '后台-商品SKU属性查询', '/goods-sku-attr-val/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (60, 40, '后台-购物车管理', '/goods-cart/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (61, 41, '后台-购物车查询', '/user-goods-cart/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (62, 42, '后台-商城订单管理', '/goods-order/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (63, 43, '后台-商城订单项管理', '/goods-order-item/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (64, 44, '后台-商城订单物流管理', '/goods-order-logistics/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (65, 45, '后台-商城用户订单查询', '/user-goods-order/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (66, 46, '后台-商城用户订单项查询', '/user-goods-order-item/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (67, 47, '后台-商城用户订单物流查询', '/user-goods-order-logistics/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (68, 48, '后台-消息管理', '/message/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (69, 49, '后台-消息查询', '/user-message/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (70, 49, '用户-消息查询', '/user-message/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (71, 50, '后台-公告管理', '/notice/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (72, 50, '用户-公告查询', '/notice/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (73, 51, '后台-导入导出角色权限', '/permission-import-export/*', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (74, 52, '后台-Redis缓存管理', '/redis-manage/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (75, 53, '后台-定时任务管理', '/scheduler/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (76, 54, '后台-DAU管理', '/statistics-dau/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (77, 55, '后台-用户统计管理', '/user-liveness-stat/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (78, 56, '后台-微信任务管理', '/weixin-task/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (79, 56, '后台-微信任务详情管理', '/WeixinUserTask/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (80, 56, '用户-微信任务查询', '/weixin-task/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (81, 56, '用户-微信任务详情查询', '/WeixinUserTask/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (82, 57, '后台-用户微信认证管理', '/weixin-certification/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (83, 57, '后台-用户微信认证详情管理', '/WeixinUserCertification/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (84, 57, '用户-用户微信认证查询', '/weixin-certification/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (85, 58, '后台-用户微信任务报名管理', '/weixin-task-apply/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (86, 58, '后台-用户微信任务报名详情管理', '/WeixinUserTaskApply/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (87, 58, '用户-用户微信任务报名查询', '/weixin-task-apply/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (88, 58, '用户-用户微信任务报名详情查询', '/WeixinUserTaskApply/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (89, 59, '后台-用户微信任务报名管理', '/weixin-task-appeal/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (90, 59, '后台-用户微信任务报名详情管理', '/WeixinUserTaskAppeal/admin/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_permission` VALUES (91, 59, '用户-用户微信任务报名查询', '/weixin-task-appeal/user/**', NULL, 1, '2019-04-15 16:58:06', NULL, 0);

-- ----------------------------
-- Table structure for t_process
-- ----------------------------
DROP TABLE IF EXISTS `t_process`;
CREATE TABLE `t_process`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '流程编号',
  `process_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程Name',
  `process_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程Key',
  `file_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程文件路径',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程描述',
  `is_deploy` tinyint(4) NULL DEFAULT 0 COMMENT '是否部署',
  `deploy_time` datetime(0) NULL DEFAULT NULL COMMENT '部署时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '上传时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_process
-- ----------------------------
INSERT INTO `t_process` VALUES (1, 'leave_process', 'leave_process', './process/2019021516022939624.zip', NULL, 1, '2019-02-15 17:18:43', 15, '2019-02-15 15:06:38', '2019-02-15 17:18:45', 0);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色标题',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `is_default` tinyint(4) NULL DEFAULT 0 COMMENT '是否默认角色',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, 'super_sys_admin', '超级系统管理员', 0, 1, '2019-02-22 14:32:27', NULL, 0);
INSERT INTO `t_role` VALUES (2, 'sys_admin', '系统管理员', 0, 1, '2019-02-22 14:32:27', NULL, 0);
INSERT INTO `t_role` VALUES (3, 'sys_dev', '系统研发人员', 0, 1, '2019-02-22 14:32:27', NULL, 0);
INSERT INTO `t_role` VALUES (4, 'sys_user_demo', '系统演示用户', 0, 1, '2019-02-22 14:32:27', NULL, 0);
INSERT INTO `t_role` VALUES (5, 'sys_user', '系统用户', 1, 1, '2019-02-22 14:32:27', NULL, 0);
INSERT INTO `t_role` VALUES (6, 'sys_shop_owner', '店铺拥有者', 0, 1, '2019-02-22 14:32:27', NULL, 0);

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` bigint(20) NOT NULL COMMENT '角色编号',
  `permission_id` bigint(20) NOT NULL COMMENT '权限编号',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色权限关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES (1, 1, 1, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (2, 5, 1, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (3, 2, 1, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (4, 1, 2, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (5, 5, 2, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (6, 2, 2, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (7, 5, 3, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (8, 1, 4, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (9, 2, 4, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (10, 5, 4, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (11, 1, 5, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (12, 2, 5, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (13, 1, 6, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (14, 2, 6, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (15, 1, 7, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (16, 2, 7, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (17, 1, 8, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (18, 2, 8, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (19, 1, 9, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (20, 2, 9, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (21, 5, 9, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (22, 1, 10, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (23, 2, 10, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (24, 1, 11, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (25, 2, 11, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (26, 1, 12, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (27, 2, 12, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (28, 1, 13, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (29, 2, 13, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (30, 1, 14, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (31, 2, 14, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (32, 1, 15, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (33, 2, 15, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (34, 5, 15, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (35, 1, 16, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (36, 2, 16, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (37, 1, 17, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (38, 2, 17, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (39, 1, 18, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (40, 2, 18, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (41, 5, 18, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (42, 1, 19, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (43, 2, 19, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (44, 1, 20, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (45, 2, 20, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (46, 5, 20, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (47, 1, 21, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (48, 2, 21, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (49, 1, 22, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (50, 2, 22, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (51, 1, 23, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (52, 2, 23, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (53, 1, 24, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (54, 2, 24, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (55, 5, 24, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (56, 1, 25, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (57, 2, 25, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (58, 1, 26, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (59, 2, 26, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (60, 1, 27, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (61, 2, 27, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (62, 5, 27, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (63, 1, 28, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (64, 2, 28, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (65, 5, 28, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (66, 1, 29, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (67, 2, 29, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (68, 1, 30, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (69, 2, 30, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (70, 5, 30, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (71, 1, 31, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (72, 2, 31, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (73, 1, 32, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (74, 2, 32, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (75, 1, 33, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (76, 2, 33, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (77, 1, 34, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (78, 2, 34, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (79, 5, 34, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (80, 1, 35, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (81, 2, 35, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (82, 1, 36, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (83, 2, 36, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (84, 5, 36, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (85, 1, 37, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (86, 2, 37, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (87, 1, 38, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (88, 2, 38, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (89, 5, 38, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (90, 1, 39, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (91, 2, 39, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (92, 1, 40, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (93, 2, 40, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (94, 5, 40, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (95, 1, 41, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (96, 2, 41, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (97, 1, 42, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (98, 2, 42, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (99, 1, 43, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (100, 2, 43, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (101, 1, 44, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (102, 2, 44, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (103, 5, 44, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (104, 1, 45, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (105, 2, 45, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (106, 5, 45, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (107, 1, 46, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (108, 2, 46, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (109, 1, 47, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (110, 2, 47, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (111, 5, 47, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (112, 1, 48, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (113, 2, 48, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (114, 1, 49, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (115, 2, 49, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (116, 1, 50, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (117, 2, 50, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (118, 1, 51, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (119, 2, 51, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (120, 1, 52, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (121, 2, 52, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (122, 1, 53, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (123, 2, 53, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (124, 6, 54, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (125, 1, 55, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (126, 2, 55, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (127, 6, 56, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (128, 1, 57, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (129, 2, 57, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (130, 1, 58, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (131, 2, 58, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (132, 1, 59, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (133, 2, 59, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (134, 1, 60, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (135, 2, 60, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (136, 1, 61, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (137, 2, 61, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (138, 1, 62, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (139, 2, 62, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (140, 1, 63, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (141, 2, 63, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (142, 1, 64, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (143, 2, 64, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (144, 1, 65, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (145, 2, 65, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (146, 1, 66, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (147, 2, 66, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (148, 1, 67, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (149, 2, 67, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (150, 1, 68, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (151, 2, 68, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (152, 1, 69, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (153, 2, 69, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (154, 1, 70, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (155, 2, 70, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (156, 5, 70, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (157, 1, 71, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (158, 2, 71, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (159, 1, 72, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (160, 2, 72, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (161, 5, 72, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (162, 1, 73, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (163, 2, 73, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (164, 3, 73, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (165, 1, 74, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (166, 2, 74, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (167, 3, 74, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (168, 1, 75, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (169, 2, 75, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (170, 3, 75, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (171, 1, 76, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (172, 2, 76, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (173, 1, 77, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (174, 2, 77, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (175, 1, 78, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (176, 2, 78, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (177, 1, 79, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (178, 2, 79, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (179, 1, 80, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (180, 2, 80, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (181, 5, 80, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (182, 1, 81, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (183, 2, 81, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (184, 5, 81, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (185, 1, 82, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (186, 2, 82, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (187, 1, 83, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (188, 2, 83, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (189, 1, 84, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (190, 2, 84, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (191, 5, 84, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (192, 1, 85, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (193, 2, 85, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (194, 1, 86, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (195, 2, 86, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (196, 1, 87, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (197, 2, 87, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (198, 5, 87, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (199, 1, 88, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (200, 2, 88, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (201, 5, 88, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (202, 1, 89, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (203, 2, 89, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (204, 1, 90, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (205, 2, 90, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (206, 1, 91, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (207, 2, 91, 1, '2019-04-15 16:58:06', NULL, 0);
INSERT INTO `t_role_permission` VALUES (208, 5, 91, 1, '2019-04-15 16:58:06', NULL, 0);

-- ----------------------------
-- Table structure for t_scheduler
-- ----------------------------
DROP TABLE IF EXISTS `t_scheduler`;
CREATE TABLE `t_scheduler`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '作业编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '作业名称',
  `class_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '完整类名',
  `cron_expression` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cron表达式',
  `group_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作业组名称',
  `trigger_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '触发器名称',
  `trigger_group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '触发器组',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作业描述',
  `job_status` tinyint(4) NULL DEFAULT 0 COMMENT '作业状态',
  `job_status_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '状态更新时间',
  `auto_start` tinyint(4) NULL DEFAULT 0 COMMENT '自动启动',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '作业调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_scheduler
-- ----------------------------
INSERT INTO `t_scheduler` VALUES (1, 'DauSaveJob', 'top.zywork.job.DauSaveJob', '59 59 23 * * ?', 'job_group', 'trigger_name', 'trigger_group', NULL, 1, '2019-04-30 18:01:32', 1, 331, '2019-01-18 17:34:42', '2019-04-30 18:01:31', 0);

-- ----------------------------
-- Table structure for t_shipping_address
-- ----------------------------
DROP TABLE IF EXISTS `t_shipping_address`;
CREATE TABLE `t_shipping_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '地址编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `real_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '市',
  `district` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区/县',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `is_default` tinyint(4) NULL DEFAULT 0 COMMENT '是否默认',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_shipping_address
-- ----------------------------
INSERT INTO `t_shipping_address` VALUES (1, 31, '王振宇', '18888888888', '江西省', '赣州市', '章贡区', '**路', 1, 3, '2019-01-03 19:49:26', '2019-01-03 21:29:50', 0);

-- ----------------------------
-- Table structure for t_statistics_dau
-- ----------------------------
DROP TABLE IF EXISTS `t_statistics_dau`;
CREATE TABLE `t_statistics_dau`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'DAU编号',
  `dau` bigint(20) NOT NULL COMMENT 'DAU',
  `statistics_time` datetime(0) NOT NULL COMMENT '统计时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日活用户统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_statistics_dau
-- ----------------------------
INSERT INTO `t_statistics_dau` VALUES (68, 2, '2019-01-18 17:42:00', 1, '2019-01-18 17:43:00', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (69, 16, '2019-01-25 10:47:40', 1, '2019-01-25 10:48:40', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (71, 8, '2019-01-29 10:31:04', 1, '2019-01-29 10:32:04', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (72, 1, '2019-02-06 10:34:34', 1, '2019-02-06 10:35:33', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (73, 1, '2019-02-13 10:15:25', 1, '2019-02-13 10:16:25', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (74, 5, '2019-02-14 10:20:51', 1, '2019-02-14 10:21:51', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (75, 2, '2019-02-15 09:51:11', 1, '2019-02-15 09:52:17', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (76, 5, '2019-02-16 09:35:50', 1, '2019-02-16 09:36:50', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (77, 1, '2019-02-19 13:23:57', 1, '2019-02-19 13:24:57', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (78, 10, '2019-02-20 10:13:16', 1, '2019-02-20 10:14:14', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (79, 3, '2019-02-21 09:58:40', 1, '2019-02-21 09:59:40', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (80, 5, '2019-02-22 00:16:11', 1, '2019-02-22 00:17:10', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (81, 5, '2019-02-23 10:02:43', 1, '2019-02-23 10:03:43', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (82, 5, '2019-02-24 12:41:53', 1, '2019-02-24 12:42:52', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (83, 0, '2019-02-25 13:30:18', 1, '2019-02-25 13:31:18', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (84, 1, '2019-02-26 10:15:11', 1, '2019-02-26 10:16:11', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (85, 1, '2019-02-27 09:44:02', 1, '2019-02-27 09:45:02', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (86, 4, '2019-02-28 09:34:07', 1, '2019-02-28 09:35:07', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (87, 5, '2019-03-01 10:32:13', 1, '2019-03-01 10:33:13', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (88, 0, '2019-03-02 09:55:26', 1, '2019-03-02 09:56:26', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (89, 1, '2019-03-04 09:38:38', 1, '2019-03-04 09:39:37', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (90, 7, '2019-03-05 10:46:46', 1, '2019-03-05 10:47:46', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (91, 1, '2019-03-06 10:10:42', 1, '2019-03-06 10:11:41', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (92, 4, '2019-03-07 12:44:23', 1, '2019-03-07 12:45:23', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (93, 0, '2019-03-08 10:06:54', 1, '2019-03-08 10:07:54', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (94, 7, '2019-03-09 09:24:07', 1, '2019-03-09 09:25:07', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (95, 2, '2019-03-11 09:40:48', 1, '2019-03-11 09:41:47', NULL, 0);
INSERT INTO `t_statistics_dau` VALUES (96, 1, '2019-03-12 13:46:46', 1, '2019-03-12 13:47:46', NULL, 0);

-- ----------------------------
-- Table structure for t_statistics_day
-- ----------------------------
DROP TABLE IF EXISTS `t_statistics_day`;
CREATE TABLE `t_statistics_day`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日期编号',
  `the_date` datetime(0) NOT NULL COMMENT '日期字符串',
  `am_pm` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '上午或下午',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用于数据统计的日期信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_statistics_day
-- ----------------------------
INSERT INTO `t_statistics_day` VALUES (1, '2019-01-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (2, '2019-01-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (3, '2019-01-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (4, '2019-01-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (5, '2019-01-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (6, '2019-01-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (7, '2019-01-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (8, '2019-01-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (9, '2019-01-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (10, '2019-01-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (11, '2019-01-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (12, '2019-01-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (13, '2019-01-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (14, '2019-01-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (15, '2019-01-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (16, '2019-01-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (17, '2019-01-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (18, '2019-01-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (19, '2019-01-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (20, '2019-01-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (21, '2019-01-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (22, '2019-01-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (23, '2019-01-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (24, '2019-01-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (25, '2019-01-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (26, '2019-01-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (27, '2019-01-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (28, '2019-01-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (29, '2019-01-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (30, '2019-01-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (31, '2019-01-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (32, '2019-01-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (33, '2019-01-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (34, '2019-01-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (35, '2019-01-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (36, '2019-01-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (37, '2019-01-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (38, '2019-01-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (39, '2019-01-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (40, '2019-01-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (41, '2019-01-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (42, '2019-01-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (43, '2019-01-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (44, '2019-01-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (45, '2019-01-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (46, '2019-01-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (47, '2019-01-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (48, '2019-01-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (49, '2019-01-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (50, '2019-01-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (51, '2019-01-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (52, '2019-01-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (53, '2019-01-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (54, '2019-01-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (55, '2019-01-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (56, '2019-01-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (57, '2019-01-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (58, '2019-01-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (59, '2019-01-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (60, '2019-01-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (61, '2019-01-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (62, '2019-01-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (63, '2019-02-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (64, '2019-02-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (65, '2019-02-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (66, '2019-02-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (67, '2019-02-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (68, '2019-02-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (69, '2019-02-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (70, '2019-02-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (71, '2019-02-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (72, '2019-02-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (73, '2019-02-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (74, '2019-02-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (75, '2019-02-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (76, '2019-02-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (77, '2019-02-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (78, '2019-02-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (79, '2019-02-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (80, '2019-02-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (81, '2019-02-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (82, '2019-02-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (83, '2019-02-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (84, '2019-02-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (85, '2019-02-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (86, '2019-02-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (87, '2019-02-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (88, '2019-02-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (89, '2019-02-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (90, '2019-02-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (91, '2019-02-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (92, '2019-02-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (93, '2019-02-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (94, '2019-02-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (95, '2019-02-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (96, '2019-02-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (97, '2019-02-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (98, '2019-02-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (99, '2019-02-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (100, '2019-02-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (101, '2019-02-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (102, '2019-02-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (103, '2019-02-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (104, '2019-02-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (105, '2019-02-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (106, '2019-02-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (107, '2019-02-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (108, '2019-02-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (109, '2019-02-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (110, '2019-02-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (111, '2019-02-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (112, '2019-02-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (113, '2019-02-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (114, '2019-02-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (115, '2019-02-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (116, '2019-02-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (117, '2019-02-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (118, '2019-02-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (119, '2019-03-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (120, '2019-03-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (121, '2019-03-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (122, '2019-03-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (123, '2019-03-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (124, '2019-03-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (125, '2019-03-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (126, '2019-03-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (127, '2019-03-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (128, '2019-03-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (129, '2019-03-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (130, '2019-03-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (131, '2019-03-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (132, '2019-03-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (133, '2019-03-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (134, '2019-03-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (135, '2019-03-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (136, '2019-03-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (137, '2019-03-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (138, '2019-03-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (139, '2019-03-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (140, '2019-03-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (141, '2019-03-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (142, '2019-03-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (143, '2019-03-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (144, '2019-03-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (145, '2019-03-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (146, '2019-03-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (147, '2019-03-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (148, '2019-03-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (149, '2019-03-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (150, '2019-03-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (151, '2019-03-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (152, '2019-03-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (153, '2019-03-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (154, '2019-03-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (155, '2019-03-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (156, '2019-03-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (157, '2019-03-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (158, '2019-03-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (159, '2019-03-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (160, '2019-03-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (161, '2019-03-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (162, '2019-03-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (163, '2019-03-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (164, '2019-03-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (165, '2019-03-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (166, '2019-03-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (167, '2019-03-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (168, '2019-03-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (169, '2019-03-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (170, '2019-03-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (171, '2019-03-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (172, '2019-03-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (173, '2019-03-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (174, '2019-03-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (175, '2019-03-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (176, '2019-03-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (177, '2019-03-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (178, '2019-03-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (179, '2019-03-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (180, '2019-03-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (181, '2019-04-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (182, '2019-04-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (183, '2019-04-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (184, '2019-04-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (185, '2019-04-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (186, '2019-04-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (187, '2019-04-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (188, '2019-04-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (189, '2019-04-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (190, '2019-04-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (191, '2019-04-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (192, '2019-04-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (193, '2019-04-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (194, '2019-04-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (195, '2019-04-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (196, '2019-04-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (197, '2019-04-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (198, '2019-04-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (199, '2019-04-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (200, '2019-04-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (201, '2019-04-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (202, '2019-04-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (203, '2019-04-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (204, '2019-04-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (205, '2019-04-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (206, '2019-04-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (207, '2019-04-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (208, '2019-04-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (209, '2019-04-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (210, '2019-04-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (211, '2019-04-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (212, '2019-04-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (213, '2019-04-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (214, '2019-04-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (215, '2019-04-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (216, '2019-04-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (217, '2019-04-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (218, '2019-04-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (219, '2019-04-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (220, '2019-04-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (221, '2019-04-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (222, '2019-04-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (223, '2019-04-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (224, '2019-04-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (225, '2019-04-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (226, '2019-04-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (227, '2019-04-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (228, '2019-04-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (229, '2019-04-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (230, '2019-04-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (231, '2019-04-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (232, '2019-04-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (233, '2019-04-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (234, '2019-04-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (235, '2019-04-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (236, '2019-04-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (237, '2019-04-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (238, '2019-04-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (239, '2019-04-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (240, '2019-04-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (241, '2019-05-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (242, '2019-05-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (243, '2019-05-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (244, '2019-05-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (245, '2019-05-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (246, '2019-05-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (247, '2019-05-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (248, '2019-05-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (249, '2019-05-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (250, '2019-05-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (251, '2019-05-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (252, '2019-05-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (253, '2019-05-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (254, '2019-05-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (255, '2019-05-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (256, '2019-05-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (257, '2019-05-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (258, '2019-05-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (259, '2019-05-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (260, '2019-05-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (261, '2019-05-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (262, '2019-05-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (263, '2019-05-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (264, '2019-05-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (265, '2019-05-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (266, '2019-05-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (267, '2019-05-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (268, '2019-05-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (269, '2019-05-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (270, '2019-05-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (271, '2019-05-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (272, '2019-05-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (273, '2019-05-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (274, '2019-05-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (275, '2019-05-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (276, '2019-05-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (277, '2019-05-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (278, '2019-05-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (279, '2019-05-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (280, '2019-05-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (281, '2019-05-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (282, '2019-05-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (283, '2019-05-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (284, '2019-05-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (285, '2019-05-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (286, '2019-05-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (287, '2019-05-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (288, '2019-05-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (289, '2019-05-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (290, '2019-05-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (291, '2019-05-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (292, '2019-05-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (293, '2019-05-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (294, '2019-05-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (295, '2019-05-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (296, '2019-05-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (297, '2019-05-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (298, '2019-05-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (299, '2019-05-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (300, '2019-05-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (301, '2019-05-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (302, '2019-05-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (303, '2019-06-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (304, '2019-06-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (305, '2019-06-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (306, '2019-06-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (307, '2019-06-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (308, '2019-06-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (309, '2019-06-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (310, '2019-06-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (311, '2019-06-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (312, '2019-06-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (313, '2019-06-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (314, '2019-06-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (315, '2019-06-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (316, '2019-06-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (317, '2019-06-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (318, '2019-06-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (319, '2019-06-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (320, '2019-06-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (321, '2019-06-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (322, '2019-06-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (323, '2019-06-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (324, '2019-06-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (325, '2019-06-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (326, '2019-06-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (327, '2019-06-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (328, '2019-06-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (329, '2019-06-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (330, '2019-06-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (331, '2019-06-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (332, '2019-06-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (333, '2019-06-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (334, '2019-06-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (335, '2019-06-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (336, '2019-06-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (337, '2019-06-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (338, '2019-06-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (339, '2019-06-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (340, '2019-06-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (341, '2019-06-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (342, '2019-06-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (343, '2019-06-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (344, '2019-06-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (345, '2019-06-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (346, '2019-06-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (347, '2019-06-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (348, '2019-06-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (349, '2019-06-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (350, '2019-06-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (351, '2019-06-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (352, '2019-06-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (353, '2019-06-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (354, '2019-06-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (355, '2019-06-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (356, '2019-06-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (357, '2019-06-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (358, '2019-06-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (359, '2019-06-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (360, '2019-06-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (361, '2019-06-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (362, '2019-06-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (363, '2019-07-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (364, '2019-07-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (365, '2019-07-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (366, '2019-07-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (367, '2019-07-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (368, '2019-07-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (369, '2019-07-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (370, '2019-07-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (371, '2019-07-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (372, '2019-07-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (373, '2019-07-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (374, '2019-07-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (375, '2019-07-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (376, '2019-07-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (377, '2019-07-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (378, '2019-07-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (379, '2019-07-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (380, '2019-07-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (381, '2019-07-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (382, '2019-07-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (383, '2019-07-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (384, '2019-07-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (385, '2019-07-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (386, '2019-07-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (387, '2019-07-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (388, '2019-07-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (389, '2019-07-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (390, '2019-07-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (391, '2019-07-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (392, '2019-07-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (393, '2019-07-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (394, '2019-07-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (395, '2019-07-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (396, '2019-07-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (397, '2019-07-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (398, '2019-07-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (399, '2019-07-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (400, '2019-07-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (401, '2019-07-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (402, '2019-07-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (403, '2019-07-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (404, '2019-07-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (405, '2019-07-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (406, '2019-07-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (407, '2019-07-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (408, '2019-07-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (409, '2019-07-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (410, '2019-07-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (411, '2019-07-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (412, '2019-07-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (413, '2019-07-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (414, '2019-07-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (415, '2019-07-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (416, '2019-07-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (417, '2019-07-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (418, '2019-07-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (419, '2019-07-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (420, '2019-07-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (421, '2019-07-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (422, '2019-07-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (423, '2019-07-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (424, '2019-07-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (425, '2019-08-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (426, '2019-08-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (427, '2019-08-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (428, '2019-08-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (429, '2019-08-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (430, '2019-08-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (431, '2019-08-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (432, '2019-08-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (433, '2019-08-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (434, '2019-08-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (435, '2019-08-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (436, '2019-08-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (437, '2019-08-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (438, '2019-08-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (439, '2019-08-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (440, '2019-08-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (441, '2019-08-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (442, '2019-08-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (443, '2019-08-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (444, '2019-08-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (445, '2019-08-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (446, '2019-08-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (447, '2019-08-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (448, '2019-08-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (449, '2019-08-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (450, '2019-08-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (451, '2019-08-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (452, '2019-08-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (453, '2019-08-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (454, '2019-08-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (455, '2019-08-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (456, '2019-08-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (457, '2019-08-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (458, '2019-08-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (459, '2019-08-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (460, '2019-08-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (461, '2019-08-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (462, '2019-08-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (463, '2019-08-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (464, '2019-08-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (465, '2019-08-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (466, '2019-08-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (467, '2019-08-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (468, '2019-08-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (469, '2019-08-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (470, '2019-08-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (471, '2019-08-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (472, '2019-08-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (473, '2019-08-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (474, '2019-08-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (475, '2019-08-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (476, '2019-08-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (477, '2019-08-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (478, '2019-08-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (479, '2019-08-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (480, '2019-08-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (481, '2019-08-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (482, '2019-08-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (483, '2019-08-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (484, '2019-08-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (485, '2019-08-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (486, '2019-08-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (487, '2019-09-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (488, '2019-09-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (489, '2019-09-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (490, '2019-09-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (491, '2019-09-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (492, '2019-09-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (493, '2019-09-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (494, '2019-09-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (495, '2019-09-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (496, '2019-09-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (497, '2019-09-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (498, '2019-09-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (499, '2019-09-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (500, '2019-09-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (501, '2019-09-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (502, '2019-09-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (503, '2019-09-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (504, '2019-09-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (505, '2019-09-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (506, '2019-09-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (507, '2019-09-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (508, '2019-09-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (509, '2019-09-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (510, '2019-09-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (511, '2019-09-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (512, '2019-09-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (513, '2019-09-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (514, '2019-09-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (515, '2019-09-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (516, '2019-09-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (517, '2019-09-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (518, '2019-09-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (519, '2019-09-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (520, '2019-09-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (521, '2019-09-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (522, '2019-09-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (523, '2019-09-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (524, '2019-09-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (525, '2019-09-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (526, '2019-09-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (527, '2019-09-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (528, '2019-09-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (529, '2019-09-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (530, '2019-09-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (531, '2019-09-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (532, '2019-09-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (533, '2019-09-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (534, '2019-09-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (535, '2019-09-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (536, '2019-09-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (537, '2019-09-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (538, '2019-09-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (539, '2019-09-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (540, '2019-09-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (541, '2019-09-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (542, '2019-09-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (543, '2019-09-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (544, '2019-09-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (545, '2019-09-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (546, '2019-09-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (547, '2019-10-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (548, '2019-10-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (549, '2019-10-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (550, '2019-10-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (551, '2019-10-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (552, '2019-10-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (553, '2019-10-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (554, '2019-10-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (555, '2019-10-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (556, '2019-10-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (557, '2019-10-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (558, '2019-10-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (559, '2019-10-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (560, '2019-10-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (561, '2019-10-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (562, '2019-10-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (563, '2019-10-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (564, '2019-10-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (565, '2019-10-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (566, '2019-10-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (567, '2019-10-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (568, '2019-10-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (569, '2019-10-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (570, '2019-10-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (571, '2019-10-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (572, '2019-10-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (573, '2019-10-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (574, '2019-10-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (575, '2019-10-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (576, '2019-10-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (577, '2019-10-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (578, '2019-10-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (579, '2019-10-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (580, '2019-10-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (581, '2019-10-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (582, '2019-10-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (583, '2019-10-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (584, '2019-10-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (585, '2019-10-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (586, '2019-10-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (587, '2019-10-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (588, '2019-10-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (589, '2019-10-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (590, '2019-10-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (591, '2019-10-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (592, '2019-10-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (593, '2019-10-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (594, '2019-10-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (595, '2019-10-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (596, '2019-10-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (597, '2019-10-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (598, '2019-10-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (599, '2019-10-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (600, '2019-10-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (601, '2019-10-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (602, '2019-10-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (603, '2019-10-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (604, '2019-10-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (605, '2019-10-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (606, '2019-10-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (607, '2019-10-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (608, '2019-10-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (609, '2019-11-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (610, '2019-11-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (611, '2019-11-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (612, '2019-11-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (613, '2019-11-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (614, '2019-11-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (615, '2019-11-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (616, '2019-11-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (617, '2019-11-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (618, '2019-11-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (619, '2019-11-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (620, '2019-11-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (621, '2019-11-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (622, '2019-11-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (623, '2019-11-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (624, '2019-11-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (625, '2019-11-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (626, '2019-11-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (627, '2019-11-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (628, '2019-11-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (629, '2019-11-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (630, '2019-11-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (631, '2019-11-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (632, '2019-11-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (633, '2019-11-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (634, '2019-11-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (635, '2019-11-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (636, '2019-11-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (637, '2019-11-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (638, '2019-11-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (639, '2019-11-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (640, '2019-11-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (641, '2019-11-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (642, '2019-11-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (643, '2019-11-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (644, '2019-11-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (645, '2019-11-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (646, '2019-11-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (647, '2019-11-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (648, '2019-11-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (649, '2019-11-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (650, '2019-11-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (651, '2019-11-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (652, '2019-11-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (653, '2019-11-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (654, '2019-11-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (655, '2019-11-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (656, '2019-11-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (657, '2019-11-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (658, '2019-11-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (659, '2019-11-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (660, '2019-11-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (661, '2019-11-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (662, '2019-11-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (663, '2019-11-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (664, '2019-11-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (665, '2019-11-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (666, '2019-11-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (667, '2019-11-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (668, '2019-11-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (669, '2019-12-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (670, '2019-12-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (671, '2019-12-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (672, '2019-12-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (673, '2019-12-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (674, '2019-12-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (675, '2019-12-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (676, '2019-12-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (677, '2019-12-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (678, '2019-12-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (679, '2019-12-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (680, '2019-12-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (681, '2019-12-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (682, '2019-12-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (683, '2019-12-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (684, '2019-12-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (685, '2019-12-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (686, '2019-12-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (687, '2019-12-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (688, '2019-12-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (689, '2019-12-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (690, '2019-12-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (691, '2019-12-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (692, '2019-12-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (693, '2019-12-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (694, '2019-12-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (695, '2019-12-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (696, '2019-12-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (697, '2019-12-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (698, '2019-12-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (699, '2019-12-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (700, '2019-12-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (701, '2019-12-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (702, '2019-12-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (703, '2019-12-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (704, '2019-12-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (705, '2019-12-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (706, '2019-12-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (707, '2019-12-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (708, '2019-12-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (709, '2019-12-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (710, '2019-12-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (711, '2019-12-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (712, '2019-12-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (713, '2019-12-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (714, '2019-12-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (715, '2019-12-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (716, '2019-12-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (717, '2019-12-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (718, '2019-12-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (719, '2019-12-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (720, '2019-12-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (721, '2019-12-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (722, '2019-12-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (723, '2019-12-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (724, '2019-12-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (725, '2019-12-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (726, '2019-12-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (727, '2019-12-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (728, '2019-12-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (729, '2019-12-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (730, '2019-12-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (731, '2020-01-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (732, '2020-01-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (733, '2020-01-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (734, '2020-01-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (735, '2020-01-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (736, '2020-01-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (737, '2020-01-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (738, '2020-01-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (739, '2020-01-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (740, '2020-01-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (741, '2020-01-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (742, '2020-01-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (743, '2020-01-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (744, '2020-01-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (745, '2020-01-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (746, '2020-01-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (747, '2020-01-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (748, '2020-01-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (749, '2020-01-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (750, '2020-01-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (751, '2020-01-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (752, '2020-01-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (753, '2020-01-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (754, '2020-01-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (755, '2020-01-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (756, '2020-01-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (757, '2020-01-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (758, '2020-01-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (759, '2020-01-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (760, '2020-01-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (761, '2020-01-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (762, '2020-01-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (763, '2020-01-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (764, '2020-01-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (765, '2020-01-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (766, '2020-01-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (767, '2020-01-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (768, '2020-01-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (769, '2020-01-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (770, '2020-01-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (771, '2020-01-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (772, '2020-01-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (773, '2020-01-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (774, '2020-01-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (775, '2020-01-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (776, '2020-01-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (777, '2020-01-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (778, '2020-01-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (779, '2020-01-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (780, '2020-01-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (781, '2020-01-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (782, '2020-01-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (783, '2020-01-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (784, '2020-01-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (785, '2020-01-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (786, '2020-01-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (787, '2020-01-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (788, '2020-01-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (789, '2020-01-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (790, '2020-01-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (791, '2020-01-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (792, '2020-01-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (793, '2020-02-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (794, '2020-02-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (795, '2020-02-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (796, '2020-02-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (797, '2020-02-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (798, '2020-02-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (799, '2020-02-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (800, '2020-02-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (801, '2020-02-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (802, '2020-02-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (803, '2020-02-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (804, '2020-02-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (805, '2020-02-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (806, '2020-02-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (807, '2020-02-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (808, '2020-02-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (809, '2020-02-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (810, '2020-02-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (811, '2020-02-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (812, '2020-02-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (813, '2020-02-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (814, '2020-02-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (815, '2020-02-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (816, '2020-02-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (817, '2020-02-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (818, '2020-02-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (819, '2020-02-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (820, '2020-02-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (821, '2020-02-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (822, '2020-02-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (823, '2020-02-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (824, '2020-02-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (825, '2020-02-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (826, '2020-02-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (827, '2020-02-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (828, '2020-02-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (829, '2020-02-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (830, '2020-02-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (831, '2020-02-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (832, '2020-02-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (833, '2020-02-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (834, '2020-02-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (835, '2020-02-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (836, '2020-02-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (837, '2020-02-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (838, '2020-02-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (839, '2020-02-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (840, '2020-02-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (841, '2020-02-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (842, '2020-02-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (843, '2020-02-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (844, '2020-02-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (845, '2020-02-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (846, '2020-02-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (847, '2020-02-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (848, '2020-02-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (849, '2020-02-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (850, '2020-02-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (851, '2020-03-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (852, '2020-03-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (853, '2020-03-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (854, '2020-03-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (855, '2020-03-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (856, '2020-03-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (857, '2020-03-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (858, '2020-03-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (859, '2020-03-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (860, '2020-03-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (861, '2020-03-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (862, '2020-03-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (863, '2020-03-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (864, '2020-03-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (865, '2020-03-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (866, '2020-03-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (867, '2020-03-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (868, '2020-03-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (869, '2020-03-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (870, '2020-03-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (871, '2020-03-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (872, '2020-03-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (873, '2020-03-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (874, '2020-03-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (875, '2020-03-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (876, '2020-03-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (877, '2020-03-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (878, '2020-03-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (879, '2020-03-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (880, '2020-03-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (881, '2020-03-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (882, '2020-03-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (883, '2020-03-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (884, '2020-03-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (885, '2020-03-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (886, '2020-03-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (887, '2020-03-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (888, '2020-03-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (889, '2020-03-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (890, '2020-03-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (891, '2020-03-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (892, '2020-03-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (893, '2020-03-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (894, '2020-03-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (895, '2020-03-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (896, '2020-03-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (897, '2020-03-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (898, '2020-03-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (899, '2020-03-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (900, '2020-03-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (901, '2020-03-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (902, '2020-03-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (903, '2020-03-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (904, '2020-03-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (905, '2020-03-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (906, '2020-03-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (907, '2020-03-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (908, '2020-03-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (909, '2020-03-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (910, '2020-03-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (911, '2020-03-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (912, '2020-03-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (913, '2020-04-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (914, '2020-04-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (915, '2020-04-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (916, '2020-04-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (917, '2020-04-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (918, '2020-04-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (919, '2020-04-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (920, '2020-04-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (921, '2020-04-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (922, '2020-04-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (923, '2020-04-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (924, '2020-04-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (925, '2020-04-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (926, '2020-04-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (927, '2020-04-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (928, '2020-04-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (929, '2020-04-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (930, '2020-04-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (931, '2020-04-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (932, '2020-04-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (933, '2020-04-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (934, '2020-04-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (935, '2020-04-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (936, '2020-04-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (937, '2020-04-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (938, '2020-04-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (939, '2020-04-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (940, '2020-04-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (941, '2020-04-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (942, '2020-04-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (943, '2020-04-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (944, '2020-04-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (945, '2020-04-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (946, '2020-04-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (947, '2020-04-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (948, '2020-04-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (949, '2020-04-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (950, '2020-04-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (951, '2020-04-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (952, '2020-04-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (953, '2020-04-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (954, '2020-04-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (955, '2020-04-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (956, '2020-04-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (957, '2020-04-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (958, '2020-04-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (959, '2020-04-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (960, '2020-04-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (961, '2020-04-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (962, '2020-04-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (963, '2020-04-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (964, '2020-04-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (965, '2020-04-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (966, '2020-04-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (967, '2020-04-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (968, '2020-04-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (969, '2020-04-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (970, '2020-04-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (971, '2020-04-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (972, '2020-04-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (973, '2020-05-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (974, '2020-05-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (975, '2020-05-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (976, '2020-05-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (977, '2020-05-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (978, '2020-05-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (979, '2020-05-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (980, '2020-05-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (981, '2020-05-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (982, '2020-05-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (983, '2020-05-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (984, '2020-05-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (985, '2020-05-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (986, '2020-05-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (987, '2020-05-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (988, '2020-05-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (989, '2020-05-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (990, '2020-05-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (991, '2020-05-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (992, '2020-05-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (993, '2020-05-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (994, '2020-05-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (995, '2020-05-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (996, '2020-05-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (997, '2020-05-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (998, '2020-05-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (999, '2020-05-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1000, '2020-05-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1001, '2020-05-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1002, '2020-05-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1003, '2020-05-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1004, '2020-05-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1005, '2020-05-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1006, '2020-05-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1007, '2020-05-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1008, '2020-05-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1009, '2020-05-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1010, '2020-05-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1011, '2020-05-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1012, '2020-05-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1013, '2020-05-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1014, '2020-05-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1015, '2020-05-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1016, '2020-05-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1017, '2020-05-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1018, '2020-05-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1019, '2020-05-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1020, '2020-05-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1021, '2020-05-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1022, '2020-05-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1023, '2020-05-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1024, '2020-05-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1025, '2020-05-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1026, '2020-05-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1027, '2020-05-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1028, '2020-05-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1029, '2020-05-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1030, '2020-05-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1031, '2020-05-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1032, '2020-05-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1033, '2020-05-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1034, '2020-05-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1035, '2020-06-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1036, '2020-06-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1037, '2020-06-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1038, '2020-06-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1039, '2020-06-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1040, '2020-06-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1041, '2020-06-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1042, '2020-06-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1043, '2020-06-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1044, '2020-06-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1045, '2020-06-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1046, '2020-06-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1047, '2020-06-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1048, '2020-06-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1049, '2020-06-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1050, '2020-06-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1051, '2020-06-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1052, '2020-06-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1053, '2020-06-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1054, '2020-06-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1055, '2020-06-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1056, '2020-06-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1057, '2020-06-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1058, '2020-06-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1059, '2020-06-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1060, '2020-06-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1061, '2020-06-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1062, '2020-06-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1063, '2020-06-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1064, '2020-06-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1065, '2020-06-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1066, '2020-06-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1067, '2020-06-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1068, '2020-06-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1069, '2020-06-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1070, '2020-06-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1071, '2020-06-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1072, '2020-06-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1073, '2020-06-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1074, '2020-06-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1075, '2020-06-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1076, '2020-06-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1077, '2020-06-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1078, '2020-06-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1079, '2020-06-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1080, '2020-06-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1081, '2020-06-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1082, '2020-06-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1083, '2020-06-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1084, '2020-06-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1085, '2020-06-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1086, '2020-06-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1087, '2020-06-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1088, '2020-06-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1089, '2020-06-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1090, '2020-06-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1091, '2020-06-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1092, '2020-06-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1093, '2020-06-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1094, '2020-06-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1095, '2020-07-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1096, '2020-07-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1097, '2020-07-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1098, '2020-07-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1099, '2020-07-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1100, '2020-07-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1101, '2020-07-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1102, '2020-07-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1103, '2020-07-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1104, '2020-07-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1105, '2020-07-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1106, '2020-07-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1107, '2020-07-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1108, '2020-07-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1109, '2020-07-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1110, '2020-07-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1111, '2020-07-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1112, '2020-07-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1113, '2020-07-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1114, '2020-07-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1115, '2020-07-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1116, '2020-07-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1117, '2020-07-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1118, '2020-07-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1119, '2020-07-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1120, '2020-07-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1121, '2020-07-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1122, '2020-07-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1123, '2020-07-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1124, '2020-07-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1125, '2020-07-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1126, '2020-07-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1127, '2020-07-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1128, '2020-07-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1129, '2020-07-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1130, '2020-07-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1131, '2020-07-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1132, '2020-07-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1133, '2020-07-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1134, '2020-07-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1135, '2020-07-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1136, '2020-07-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1137, '2020-07-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1138, '2020-07-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1139, '2020-07-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1140, '2020-07-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1141, '2020-07-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1142, '2020-07-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1143, '2020-07-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1144, '2020-07-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1145, '2020-07-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1146, '2020-07-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1147, '2020-07-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1148, '2020-07-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1149, '2020-07-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1150, '2020-07-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1151, '2020-07-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1152, '2020-07-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1153, '2020-07-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1154, '2020-07-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1155, '2020-07-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1156, '2020-07-31 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1157, '2020-08-01 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1158, '2020-08-01 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1159, '2020-08-02 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1160, '2020-08-02 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1161, '2020-08-03 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1162, '2020-08-03 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1163, '2020-08-04 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1164, '2020-08-04 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1165, '2020-08-05 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1166, '2020-08-05 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1167, '2020-08-06 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1168, '2020-08-06 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1169, '2020-08-07 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1170, '2020-08-07 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1171, '2020-08-08 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1172, '2020-08-08 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1173, '2020-08-09 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1174, '2020-08-09 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1175, '2020-08-10 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1176, '2020-08-10 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1177, '2020-08-11 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1178, '2020-08-11 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1179, '2020-08-12 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1180, '2020-08-12 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1181, '2020-08-13 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1182, '2020-08-13 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1183, '2020-08-14 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1184, '2020-08-14 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1185, '2020-08-15 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1186, '2020-08-15 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1187, '2020-08-16 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1188, '2020-08-16 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1189, '2020-08-17 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1190, '2020-08-17 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1191, '2020-08-18 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1192, '2020-08-18 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1193, '2020-08-19 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1194, '2020-08-19 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1195, '2020-08-20 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1196, '2020-08-20 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1197, '2020-08-21 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1198, '2020-08-21 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1199, '2020-08-22 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1200, '2020-08-22 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1201, '2020-08-23 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1202, '2020-08-23 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1203, '2020-08-24 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1204, '2020-08-24 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1205, '2020-08-25 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1206, '2020-08-25 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1207, '2020-08-26 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1208, '2020-08-26 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1209, '2020-08-27 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1210, '2020-08-27 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1211, '2020-08-28 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1212, '2020-08-28 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1213, '2020-08-29 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1214, '2020-08-29 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1215, '2020-08-30 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1216, '2020-08-30 00:00:00', 'pm', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1217, '2020-08-31 00:00:00', 'am', 1, '2019-02-20 10:45:57', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1218, '2020-08-31 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1219, '2020-09-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1220, '2020-09-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1221, '2020-09-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1222, '2020-09-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1223, '2020-09-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1224, '2020-09-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1225, '2020-09-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1226, '2020-09-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1227, '2020-09-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1228, '2020-09-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1229, '2020-09-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1230, '2020-09-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1231, '2020-09-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1232, '2020-09-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1233, '2020-09-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1234, '2020-09-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1235, '2020-09-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1236, '2020-09-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1237, '2020-09-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1238, '2020-09-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1239, '2020-09-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1240, '2020-09-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1241, '2020-09-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1242, '2020-09-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1243, '2020-09-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1244, '2020-09-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1245, '2020-09-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1246, '2020-09-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1247, '2020-09-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1248, '2020-09-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1249, '2020-09-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1250, '2020-09-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1251, '2020-09-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1252, '2020-09-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1253, '2020-09-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1254, '2020-09-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1255, '2020-09-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1256, '2020-09-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1257, '2020-09-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1258, '2020-09-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1259, '2020-09-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1260, '2020-09-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1261, '2020-09-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1262, '2020-09-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1263, '2020-09-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1264, '2020-09-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1265, '2020-09-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1266, '2020-09-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1267, '2020-09-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1268, '2020-09-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1269, '2020-09-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1270, '2020-09-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1271, '2020-09-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1272, '2020-09-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1273, '2020-09-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1274, '2020-09-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1275, '2020-09-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1276, '2020-09-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1277, '2020-09-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1278, '2020-09-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1279, '2020-10-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1280, '2020-10-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1281, '2020-10-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1282, '2020-10-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1283, '2020-10-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1284, '2020-10-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1285, '2020-10-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1286, '2020-10-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1287, '2020-10-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1288, '2020-10-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1289, '2020-10-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1290, '2020-10-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1291, '2020-10-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1292, '2020-10-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1293, '2020-10-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1294, '2020-10-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1295, '2020-10-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1296, '2020-10-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1297, '2020-10-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1298, '2020-10-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1299, '2020-10-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1300, '2020-10-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1301, '2020-10-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1302, '2020-10-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1303, '2020-10-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1304, '2020-10-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1305, '2020-10-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1306, '2020-10-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1307, '2020-10-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1308, '2020-10-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1309, '2020-10-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1310, '2020-10-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1311, '2020-10-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1312, '2020-10-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1313, '2020-10-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1314, '2020-10-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1315, '2020-10-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1316, '2020-10-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1317, '2020-10-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1318, '2020-10-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1319, '2020-10-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1320, '2020-10-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1321, '2020-10-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1322, '2020-10-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1323, '2020-10-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1324, '2020-10-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1325, '2020-10-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1326, '2020-10-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1327, '2020-10-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1328, '2020-10-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1329, '2020-10-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1330, '2020-10-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1331, '2020-10-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1332, '2020-10-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1333, '2020-10-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1334, '2020-10-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1335, '2020-10-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1336, '2020-10-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1337, '2020-10-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1338, '2020-10-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1339, '2020-10-31 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1340, '2020-10-31 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1341, '2020-11-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1342, '2020-11-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1343, '2020-11-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1344, '2020-11-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1345, '2020-11-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1346, '2020-11-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1347, '2020-11-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1348, '2020-11-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1349, '2020-11-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1350, '2020-11-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1351, '2020-11-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1352, '2020-11-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1353, '2020-11-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1354, '2020-11-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1355, '2020-11-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1356, '2020-11-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1357, '2020-11-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1358, '2020-11-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1359, '2020-11-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1360, '2020-11-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1361, '2020-11-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1362, '2020-11-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1363, '2020-11-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1364, '2020-11-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1365, '2020-11-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1366, '2020-11-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1367, '2020-11-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1368, '2020-11-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1369, '2020-11-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1370, '2020-11-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1371, '2020-11-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1372, '2020-11-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1373, '2020-11-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1374, '2020-11-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1375, '2020-11-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1376, '2020-11-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1377, '2020-11-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1378, '2020-11-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1379, '2020-11-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1380, '2020-11-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1381, '2020-11-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1382, '2020-11-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1383, '2020-11-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1384, '2020-11-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1385, '2020-11-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1386, '2020-11-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1387, '2020-11-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1388, '2020-11-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1389, '2020-11-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1390, '2020-11-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1391, '2020-11-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1392, '2020-11-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1393, '2020-11-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1394, '2020-11-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1395, '2020-11-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1396, '2020-11-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1397, '2020-11-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1398, '2020-11-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1399, '2020-11-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1400, '2020-11-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1401, '2020-12-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1402, '2020-12-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1403, '2020-12-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1404, '2020-12-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1405, '2020-12-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1406, '2020-12-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1407, '2020-12-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1408, '2020-12-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1409, '2020-12-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1410, '2020-12-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1411, '2020-12-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1412, '2020-12-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1413, '2020-12-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1414, '2020-12-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1415, '2020-12-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1416, '2020-12-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1417, '2020-12-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1418, '2020-12-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1419, '2020-12-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1420, '2020-12-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1421, '2020-12-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1422, '2020-12-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1423, '2020-12-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1424, '2020-12-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1425, '2020-12-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1426, '2020-12-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1427, '2020-12-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1428, '2020-12-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1429, '2020-12-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1430, '2020-12-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1431, '2020-12-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1432, '2020-12-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1433, '2020-12-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1434, '2020-12-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1435, '2020-12-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1436, '2020-12-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1437, '2020-12-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1438, '2020-12-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1439, '2020-12-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1440, '2020-12-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1441, '2020-12-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1442, '2020-12-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1443, '2020-12-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1444, '2020-12-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1445, '2020-12-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1446, '2020-12-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1447, '2020-12-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1448, '2020-12-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1449, '2020-12-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1450, '2020-12-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1451, '2020-12-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1452, '2020-12-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1453, '2020-12-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1454, '2020-12-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1455, '2020-12-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1456, '2020-12-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1457, '2020-12-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1458, '2020-12-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1459, '2020-12-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1460, '2020-12-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1461, '2020-12-31 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1462, '2020-12-31 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1463, '2021-01-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1464, '2021-01-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1465, '2021-01-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1466, '2021-01-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1467, '2021-01-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1468, '2021-01-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1469, '2021-01-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1470, '2021-01-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1471, '2021-01-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1472, '2021-01-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1473, '2021-01-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1474, '2021-01-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1475, '2021-01-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1476, '2021-01-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1477, '2021-01-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1478, '2021-01-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1479, '2021-01-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1480, '2021-01-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1481, '2021-01-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1482, '2021-01-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1483, '2021-01-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1484, '2021-01-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1485, '2021-01-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1486, '2021-01-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1487, '2021-01-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1488, '2021-01-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1489, '2021-01-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1490, '2021-01-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1491, '2021-01-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1492, '2021-01-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1493, '2021-01-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1494, '2021-01-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1495, '2021-01-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1496, '2021-01-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1497, '2021-01-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1498, '2021-01-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1499, '2021-01-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1500, '2021-01-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1501, '2021-01-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1502, '2021-01-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1503, '2021-01-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1504, '2021-01-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1505, '2021-01-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1506, '2021-01-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1507, '2021-01-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1508, '2021-01-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1509, '2021-01-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1510, '2021-01-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1511, '2021-01-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1512, '2021-01-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1513, '2021-01-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1514, '2021-01-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1515, '2021-01-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1516, '2021-01-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1517, '2021-01-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1518, '2021-01-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1519, '2021-01-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1520, '2021-01-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1521, '2021-01-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1522, '2021-01-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1523, '2021-01-31 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1524, '2021-01-31 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1525, '2021-02-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1526, '2021-02-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1527, '2021-02-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1528, '2021-02-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1529, '2021-02-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1530, '2021-02-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1531, '2021-02-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1532, '2021-02-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1533, '2021-02-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1534, '2021-02-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1535, '2021-02-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1536, '2021-02-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1537, '2021-02-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1538, '2021-02-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1539, '2021-02-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1540, '2021-02-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1541, '2021-02-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1542, '2021-02-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1543, '2021-02-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1544, '2021-02-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1545, '2021-02-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1546, '2021-02-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1547, '2021-02-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1548, '2021-02-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1549, '2021-02-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1550, '2021-02-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1551, '2021-02-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1552, '2021-02-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1553, '2021-02-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1554, '2021-02-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1555, '2021-02-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1556, '2021-02-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1557, '2021-02-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1558, '2021-02-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1559, '2021-02-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1560, '2021-02-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1561, '2021-02-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1562, '2021-02-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1563, '2021-02-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1564, '2021-02-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1565, '2021-02-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1566, '2021-02-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1567, '2021-02-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1568, '2021-02-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1569, '2021-02-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1570, '2021-02-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1571, '2021-02-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1572, '2021-02-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1573, '2021-02-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1574, '2021-02-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1575, '2021-02-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1576, '2021-02-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1577, '2021-02-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1578, '2021-02-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1579, '2021-02-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1580, '2021-02-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1581, '2021-03-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1582, '2021-03-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1583, '2021-03-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1584, '2021-03-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1585, '2021-03-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1586, '2021-03-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1587, '2021-03-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1588, '2021-03-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1589, '2021-03-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1590, '2021-03-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1591, '2021-03-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1592, '2021-03-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1593, '2021-03-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1594, '2021-03-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1595, '2021-03-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1596, '2021-03-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1597, '2021-03-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1598, '2021-03-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1599, '2021-03-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1600, '2021-03-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1601, '2021-03-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1602, '2021-03-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1603, '2021-03-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1604, '2021-03-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1605, '2021-03-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1606, '2021-03-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1607, '2021-03-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1608, '2021-03-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1609, '2021-03-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1610, '2021-03-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1611, '2021-03-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1612, '2021-03-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1613, '2021-03-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1614, '2021-03-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1615, '2021-03-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1616, '2021-03-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1617, '2021-03-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1618, '2021-03-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1619, '2021-03-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1620, '2021-03-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1621, '2021-03-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1622, '2021-03-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1623, '2021-03-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1624, '2021-03-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1625, '2021-03-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1626, '2021-03-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1627, '2021-03-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1628, '2021-03-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1629, '2021-03-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1630, '2021-03-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1631, '2021-03-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1632, '2021-03-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1633, '2021-03-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1634, '2021-03-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1635, '2021-03-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1636, '2021-03-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1637, '2021-03-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1638, '2021-03-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1639, '2021-03-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1640, '2021-03-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1641, '2021-03-31 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1642, '2021-03-31 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1643, '2021-04-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1644, '2021-04-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1645, '2021-04-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1646, '2021-04-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1647, '2021-04-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1648, '2021-04-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1649, '2021-04-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1650, '2021-04-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1651, '2021-04-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1652, '2021-04-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1653, '2021-04-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1654, '2021-04-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1655, '2021-04-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1656, '2021-04-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1657, '2021-04-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1658, '2021-04-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1659, '2021-04-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1660, '2021-04-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1661, '2021-04-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1662, '2021-04-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1663, '2021-04-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1664, '2021-04-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1665, '2021-04-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1666, '2021-04-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1667, '2021-04-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1668, '2021-04-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1669, '2021-04-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1670, '2021-04-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1671, '2021-04-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1672, '2021-04-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1673, '2021-04-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1674, '2021-04-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1675, '2021-04-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1676, '2021-04-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1677, '2021-04-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1678, '2021-04-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1679, '2021-04-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1680, '2021-04-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1681, '2021-04-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1682, '2021-04-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1683, '2021-04-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1684, '2021-04-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1685, '2021-04-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1686, '2021-04-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1687, '2021-04-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1688, '2021-04-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1689, '2021-04-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1690, '2021-04-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1691, '2021-04-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1692, '2021-04-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1693, '2021-04-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1694, '2021-04-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1695, '2021-04-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1696, '2021-04-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1697, '2021-04-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1698, '2021-04-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1699, '2021-04-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1700, '2021-04-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1701, '2021-04-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1702, '2021-04-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1703, '2021-05-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1704, '2021-05-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1705, '2021-05-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1706, '2021-05-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1707, '2021-05-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1708, '2021-05-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1709, '2021-05-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1710, '2021-05-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1711, '2021-05-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1712, '2021-05-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1713, '2021-05-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1714, '2021-05-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1715, '2021-05-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1716, '2021-05-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1717, '2021-05-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1718, '2021-05-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1719, '2021-05-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1720, '2021-05-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1721, '2021-05-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1722, '2021-05-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1723, '2021-05-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1724, '2021-05-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1725, '2021-05-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1726, '2021-05-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1727, '2021-05-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1728, '2021-05-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1729, '2021-05-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1730, '2021-05-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1731, '2021-05-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1732, '2021-05-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1733, '2021-05-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1734, '2021-05-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1735, '2021-05-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1736, '2021-05-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1737, '2021-05-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1738, '2021-05-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1739, '2021-05-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1740, '2021-05-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1741, '2021-05-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1742, '2021-05-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1743, '2021-05-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1744, '2021-05-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1745, '2021-05-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1746, '2021-05-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1747, '2021-05-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1748, '2021-05-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1749, '2021-05-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1750, '2021-05-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1751, '2021-05-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1752, '2021-05-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1753, '2021-05-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1754, '2021-05-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1755, '2021-05-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1756, '2021-05-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1757, '2021-05-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1758, '2021-05-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1759, '2021-05-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1760, '2021-05-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1761, '2021-05-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1762, '2021-05-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1763, '2021-05-31 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1764, '2021-05-31 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1765, '2021-06-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1766, '2021-06-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1767, '2021-06-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1768, '2021-06-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1769, '2021-06-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1770, '2021-06-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1771, '2021-06-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1772, '2021-06-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1773, '2021-06-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1774, '2021-06-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1775, '2021-06-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1776, '2021-06-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1777, '2021-06-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1778, '2021-06-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1779, '2021-06-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1780, '2021-06-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1781, '2021-06-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1782, '2021-06-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1783, '2021-06-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1784, '2021-06-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1785, '2021-06-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1786, '2021-06-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1787, '2021-06-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1788, '2021-06-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1789, '2021-06-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1790, '2021-06-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1791, '2021-06-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1792, '2021-06-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1793, '2021-06-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1794, '2021-06-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1795, '2021-06-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1796, '2021-06-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1797, '2021-06-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1798, '2021-06-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1799, '2021-06-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1800, '2021-06-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1801, '2021-06-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1802, '2021-06-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1803, '2021-06-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1804, '2021-06-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1805, '2021-06-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1806, '2021-06-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1807, '2021-06-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1808, '2021-06-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1809, '2021-06-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1810, '2021-06-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1811, '2021-06-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1812, '2021-06-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1813, '2021-06-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1814, '2021-06-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1815, '2021-06-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1816, '2021-06-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1817, '2021-06-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1818, '2021-06-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1819, '2021-06-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1820, '2021-06-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1821, '2021-06-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1822, '2021-06-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1823, '2021-06-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1824, '2021-06-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1825, '2021-07-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1826, '2021-07-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1827, '2021-07-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1828, '2021-07-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1829, '2021-07-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1830, '2021-07-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1831, '2021-07-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1832, '2021-07-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1833, '2021-07-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1834, '2021-07-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1835, '2021-07-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1836, '2021-07-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1837, '2021-07-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1838, '2021-07-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1839, '2021-07-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1840, '2021-07-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1841, '2021-07-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1842, '2021-07-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1843, '2021-07-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1844, '2021-07-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1845, '2021-07-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1846, '2021-07-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1847, '2021-07-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1848, '2021-07-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1849, '2021-07-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1850, '2021-07-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1851, '2021-07-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1852, '2021-07-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1853, '2021-07-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1854, '2021-07-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1855, '2021-07-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1856, '2021-07-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1857, '2021-07-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1858, '2021-07-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1859, '2021-07-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1860, '2021-07-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1861, '2021-07-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1862, '2021-07-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1863, '2021-07-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1864, '2021-07-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1865, '2021-07-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1866, '2021-07-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1867, '2021-07-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1868, '2021-07-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1869, '2021-07-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1870, '2021-07-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1871, '2021-07-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1872, '2021-07-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1873, '2021-07-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1874, '2021-07-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1875, '2021-07-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1876, '2021-07-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1877, '2021-07-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1878, '2021-07-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1879, '2021-07-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1880, '2021-07-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1881, '2021-07-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1882, '2021-07-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1883, '2021-07-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1884, '2021-07-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1885, '2021-07-31 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1886, '2021-07-31 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1887, '2021-08-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1888, '2021-08-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1889, '2021-08-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1890, '2021-08-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1891, '2021-08-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1892, '2021-08-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1893, '2021-08-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1894, '2021-08-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1895, '2021-08-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1896, '2021-08-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1897, '2021-08-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1898, '2021-08-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1899, '2021-08-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1900, '2021-08-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1901, '2021-08-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1902, '2021-08-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1903, '2021-08-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1904, '2021-08-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1905, '2021-08-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1906, '2021-08-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1907, '2021-08-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1908, '2021-08-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1909, '2021-08-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1910, '2021-08-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1911, '2021-08-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1912, '2021-08-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1913, '2021-08-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1914, '2021-08-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1915, '2021-08-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1916, '2021-08-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1917, '2021-08-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1918, '2021-08-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1919, '2021-08-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1920, '2021-08-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1921, '2021-08-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1922, '2021-08-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1923, '2021-08-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1924, '2021-08-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1925, '2021-08-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1926, '2021-08-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1927, '2021-08-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1928, '2021-08-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1929, '2021-08-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1930, '2021-08-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1931, '2021-08-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1932, '2021-08-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1933, '2021-08-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1934, '2021-08-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1935, '2021-08-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1936, '2021-08-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1937, '2021-08-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1938, '2021-08-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1939, '2021-08-27 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1940, '2021-08-27 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1941, '2021-08-28 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1942, '2021-08-28 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1943, '2021-08-29 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1944, '2021-08-29 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1945, '2021-08-30 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1946, '2021-08-30 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1947, '2021-08-31 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1948, '2021-08-31 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1949, '2021-09-01 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1950, '2021-09-01 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1951, '2021-09-02 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1952, '2021-09-02 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1953, '2021-09-03 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1954, '2021-09-03 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1955, '2021-09-04 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1956, '2021-09-04 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1957, '2021-09-05 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1958, '2021-09-05 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1959, '2021-09-06 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1960, '2021-09-06 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1961, '2021-09-07 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1962, '2021-09-07 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1963, '2021-09-08 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1964, '2021-09-08 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1965, '2021-09-09 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1966, '2021-09-09 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1967, '2021-09-10 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1968, '2021-09-10 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1969, '2021-09-11 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1970, '2021-09-11 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1971, '2021-09-12 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1972, '2021-09-12 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1973, '2021-09-13 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1974, '2021-09-13 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1975, '2021-09-14 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1976, '2021-09-14 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1977, '2021-09-15 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1978, '2021-09-15 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1979, '2021-09-16 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1980, '2021-09-16 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1981, '2021-09-17 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1982, '2021-09-17 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1983, '2021-09-18 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1984, '2021-09-18 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1985, '2021-09-19 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1986, '2021-09-19 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1987, '2021-09-20 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1988, '2021-09-20 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1989, '2021-09-21 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1990, '2021-09-21 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1991, '2021-09-22 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1992, '2021-09-22 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1993, '2021-09-23 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1994, '2021-09-23 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1995, '2021-09-24 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1996, '2021-09-24 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1997, '2021-09-25 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1998, '2021-09-25 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (1999, '2021-09-26 00:00:00', 'am', 1, '2019-02-20 10:45:58', NULL, 0);
INSERT INTO `t_statistics_day` VALUES (2000, '2021-09-26 00:00:00', 'pm', 1, '2019-02-20 10:45:58', NULL, 0);

-- ----------------------------
-- Table structure for t_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_config`;
CREATE TABLE `t_sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '配置编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置名称',
  `value` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置内容(JSON)',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '中文说明',
  `comment` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '配置注释',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置表，以JSON格式记录常用配置，如阿里云，微信等' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_config
-- ----------------------------
INSERT INTO `t_sys_config` VALUES (1, 'aliyun_sms_config', '{\n  \"accessKeyId\": \"yourAccessKeyId\",\n  \"accessKeySecret\": \"yourAccessKeySecret\",\n  \"signName\": \"signName\"\n}', '阿里云短信', '{\n  \"accessKeyId\": \"访问ID\",\n  \"accessKeySecret\": \"访问密钥\",\n  \"signName\": \"短信签名\"\n}', 1, '2018-12-17 22:17:52', NULL, 0);
INSERT INTO `t_sys_config` VALUES (2, 'aliyun_mail_config', '{\n  \"accessKeyId\": \"yourAccessKeyId\",\n  \"accessKeySecret\": \"yourAccessKeySecret\"\n}', '阿里云邮件推送', '{\n  \"accessKeyId\": \"访问ID\",\n  \"accessKeySecret\": \"访问密钥\"\n}', 1, '2018-12-17 22:17:52', NULL, 0);
INSERT INTO `t_sys_config` VALUES (3, 'weixin_gzh_config', '{\n  \"appId\": \"appId\",\n  \"appSecret\": \"appSecret\",\n  \"baseUrl\": \"http://www.zywork.top\",\n  \"loginRedirectUrl\": \"\"\n}', '微信公众号', '{\n  \"appId\": \"公众号ID\",\n  \"appSecret\": \"公众号密钥\",\n  \"baseUrl\": \"服务器端base url\",\n  \"loginRedirectUrl\": \"服务器端登录回调接口地址\"\n}', 1, '2018-12-17 22:17:52', NULL, 0);
INSERT INTO `t_sys_config` VALUES (4, 'weixin_xcx_config', '{\n  \"appId\": \"appId\",\n  \"appSecret\": \"appSecret\"\n}', '微信小程序', '{\n  \"appId\": \"公众号ID\",\n  \"appSecret\": \"公众号密钥\"\n}', 1, '2018-12-17 22:17:52', NULL, 0);
INSERT INTO `t_sys_config` VALUES (5, 'wx_pay_config', '{\"mchId\":\"1523115971\",\"apiSecret\":\"e2d9fdc85825493cb5ae72bdce786930\",\"baseUrl\":\"http://www.zywork.top\",\"payNotifyUrl\":\"/byjc/tickeorder/result\"}', '微信支付', '{\"mchId\":\"商户ID\",\"apiSecret\":\"商户API密钥\",\"baseUrl\":\"服务器端base url\",\"payNotifyUrl\":\"服务器端支付通知接口\"}', 3, '2018-12-17 22:17:52', '2019-03-09 09:49:19', 0);
INSERT INTO `t_sys_config` VALUES (14, 'default_distribution_config', '{\n  \"distributionLevel\": 3,\n  \"profitPercents\": {\n    \"level1\": 3,\n    \"level2\": 5,\n    \"level3\": 8\n  }\n}', '默认分销规则', '{\n  \"distributionLevel\": \"分销级别\",\n  \"profitPercents\": {\n    \"level1\": \"一级分销返佣比例\",\n    \"level2\": \"二级分销返佣比例\",\n    \"level3\": \"三级分销返佣比例\"\n  }\n}', 1, '2018-12-28 15:31:12', NULL, 0);
INSERT INTO `t_sys_config` VALUES (15, 'rate_config', '{\n  \"mode\": 1,\n  \"profitPercents\": {\"percentage\": 5, number: 10}\n}', '费率', '{\n  \"mode\": \"模式\",\n  \"profitPercents\": {\"percentage\": \"百分比\", number: \"数量\"}}', 1, '2019-04-09 11:34:07', NULL, 0);

-- ----------------------------
-- Table structure for t_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_log`;
CREATE TABLE `t_sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户编号',
  `user_account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行说明',
  `user_agent` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'User-Agent',
  `request_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求URL',
  `request_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `request_params` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `response_code` int(11) NULL DEFAULT NULL COMMENT '响应编码',
  `response_msg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '响应消息',
  `execute_class` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '完整类名',
  `execute_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `execute_time` datetime(0) NULL DEFAULT NULL COMMENT '开始执行时间',
  `execute_cost_time` bigint(20) NULL DEFAULT NULL COMMENT '执行耗时(ms)',
  `has_exception` tinyint(4) NULL DEFAULT 0 COMMENT '是否异常',
  `exception_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常消息',
  `execute_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 331 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_log
-- ----------------------------
INSERT INTO `t_sys_log` VALUES (1, 1, '13672297775', '用户编辑', NULL, 'http://localhost:8088/test/edit', 'POST', '[]', 1001, '成功', 'top.zywork.controller.TestController', 'edit', '2018-12-18 15:28:26', 13, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-18 15:28:25', NULL, 0);
INSERT INTO `t_sys_log` VALUES (2, 1, '13672297775', '用户编辑', NULL, 'http://localhost:8088/test/edit', 'POST', '[]', 1001, '成功', 'top.zywork.controller.TestController', 'edit', '2018-12-18 15:32:31', 7, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-18 15:32:30', NULL, 0);
INSERT INTO `t_sys_log` VALUES (3, 1, '13672297775', '用户添加', NULL, 'http://localhost:8088/test/add', 'POST', '[]', 1001, '成功', 'top.zywork.controller.TestController', 'add', '2018-12-18 15:32:35', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-18 15:32:35', NULL, 0);
INSERT INTO `t_sys_log` VALUES (4, 1, '847315251@qq.com', '用户添加', NULL, 'http://localhost:8088/test/add', 'POST', '[]', 1001, '成功', 'top.zywork.controller.TestController', 'add', '2018-12-18 15:33:31', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-18 15:33:30', NULL, 0);
INSERT INTO `t_sys_log` VALUES (5, 1, '13672297775', '用户删除', NULL, 'http://localhost:8088/test/remove/100', 'GET', '[\"100\"]', 1001, '成功', 'top.zywork.controller.TestController', 'remove', '2018-12-18 15:35:36', 6, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-18 15:35:35', NULL, 0);
INSERT INTO `t_sys_log` VALUES (6, 1, '13672297775', '用户添加', NULL, 'http://localhost:8088/test/add', 'POST', '[]', 1001, '成功', 'top.zywork.controller.TestController', 'add', '2018-12-18 15:44:56', 17629, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-18 15:45:01', NULL, 0);
INSERT INTO `t_sys_log` VALUES (7, 1, '13672297775', '用户添加', NULL, 'http://localhost:8088/test/add', 'POST', '[]', 1001, '成功', 'top.zywork.controller.TestController', 'add', '2018-12-18 15:47:33', 4, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-18 15:47:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (8, 1, '847315251@qq.com', '用户添加', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8088/test/add', 'POST', '[]', 1001, '成功', 'top.zywork.controller.TestController', 'add', '2018-12-18 17:08:51', 12, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-18 17:08:51', NULL, 0);
INSERT INTO `t_sys_log` VALUES (9, NULL, NULL, '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,null,null]', 1005, '未认证的用户', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:05:46', 17, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:05:45', NULL, 0);
INSERT INTO `t_sys_log` VALUES (10, NULL, NULL, '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,null,null]', 1005, '未认证的用户', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:05:55', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:05:54', NULL, 0);
INSERT INTO `t_sys_log` VALUES (11, NULL, NULL, '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,null,null]', 1005, '未认证的用户', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:05:57', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:05:56', NULL, 0);
INSERT INTO `t_sys_log` VALUES (12, NULL, NULL, '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[null,null,null]', 1005, '未认证的用户', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 13:06:30', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:06:29', NULL, 0);
INSERT INTO `t_sys_log` VALUES (13, NULL, NULL, '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,null,null]', 1005, '未认证的用户', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:06:45', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:06:45', NULL, 0);
INSERT INTO `t_sys_log` VALUES (14, NULL, NULL, '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,null,null]', 1005, '未认证的用户', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:09:16', 21380, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:09:16', NULL, 0);
INSERT INTO `t_sys_log` VALUES (15, NULL, NULL, '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,null,null]', 1005, '未认证的用户', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:12:21', 17, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:12:21', NULL, 0);
INSERT INTO `t_sys_log` VALUES (16, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,null,null]', 1003, '密码不符合要求', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:13:22', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:13:21', NULL, 0);
INSERT INTO `t_sys_log` VALUES (17, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,\"123456ABC\",null]', 1003, '密码不符合要求', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:13:37', 1, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:13:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (18, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,\"123456Abc\",null]', 1003, '密码和确认密码不一致', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:13:49', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:13:48', NULL, 0);
INSERT INTO `t_sys_log` VALUES (19, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,\"123456Abc\",\"123456Abc\"]', NULL, NULL, 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:13:57', 137, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:13:56', NULL, 0);
INSERT INTO `t_sys_log` VALUES (20, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,\"123456Abc\",\"123456Abc\"]', NULL, NULL, 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:17:16', 25277, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:17:16', NULL, 0);
INSERT INTO `t_sys_log` VALUES (21, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[\"\\\"\\\"\",\"123456Abc\",\"123456Abc\"]', NULL, NULL, 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:17:30', 8401, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'password\' not found. Available parameters are [oldPassword, userId, param1, param2]', '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:17:29', NULL, 0);
INSERT INTO `t_sys_log` VALUES (22, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[\" \",\"123456Abc\",\"123456Abc\"]', NULL, NULL, 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 13:20:02', 132058, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'password\' not found. Available parameters are [oldPassword, userId, param1, param2]', '0:0:0:0:0:0:0:1', 1, '2018-12-22 13:20:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (23, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,null,null]', 1003, '密码不符合要求', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 14:40:38', 6, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 14:40:38', NULL, 0);
INSERT INTO `t_sys_log` VALUES (24, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,\"123456Abc\",\"123456Abc\"]', 1003, '原密码错误', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 14:40:54', 13, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 14:40:53', NULL, 0);
INSERT INTO `t_sys_log` VALUES (25, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[\"123456Abc\",\"123456Abc\",\"123456Abc\"]', 1003, '原密码错误', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 14:41:22', 141, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 14:41:22', NULL, 0);
INSERT INTO `t_sys_log` VALUES (26, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[\"123456Abc\",\"123456Abc\",\"123456Abc\"]', 1003, '原密码错误', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 14:50:29', 363448, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 14:50:29', NULL, 0);
INSERT INTO `t_sys_log` VALUES (27, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[\"123456Abc\",\"123456Abc\",\"123456Abc\"]', 1003, '原密码错误', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 14:57:40', 371360, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 14:57:39', NULL, 0);
INSERT INTO `t_sys_log` VALUES (28, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[\"123456Abc\",\"123456Abc\",\"123456Abc\"]', 1001, '登录密码更新成功', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 15:07:13', 294, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:07:13', NULL, 0);
INSERT INTO `t_sys_log` VALUES (29, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[\"123456Abcg\",\"123456Abc\",\"123456Abc\"]', 1003, '原密码错误', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 15:07:47', 136, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:07:46', NULL, 0);
INSERT INTO `t_sys_log` VALUES (30, 26, 'testcc@126.com', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[null,\"testAbc123\",\"testAbc123\"]', NULL, NULL, 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 15:11:08', 11, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:11:08', NULL, 0);
INSERT INTO `t_sys_log` VALUES (31, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,\"123456Abc\",\"123456Abc\"]', NULL, NULL, 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 15:11:23', 2, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:11:22', NULL, 0);
INSERT INTO `t_sys_log` VALUES (32, 26, 'testcc@126.com', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', '[null,\"123456Abc\",\"123456Abc\"]', 1003, '原密码错误', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-22 15:12:41', 156, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:12:40', NULL, 0);
INSERT INTO `t_sys_log` VALUES (33, 26, 'testcc@126.com', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[null,\"testAbc123\",\"testAbc123\"]', 1003, '原密码错误', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 15:12:45', 125, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:12:44', NULL, 0);
INSERT INTO `t_sys_log` VALUES (34, 31, '13672297775', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[null,\"1234Abc\",\"1234Abc\"]', 1003, '原密码错误', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 15:48:33', 165, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:48:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (35, 31, '13672297775', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[null,\"1234Abc\",\"1234Abc\"]', NULL, NULL, 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 15:53:52', 25, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:53:52', NULL, 0);
INSERT INTO `t_sys_log` VALUES (36, 31, '13672297775', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[null,\"1234Abc\",\"1234Abc\"]', NULL, NULL, 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 15:54:06', 3, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:54:05', NULL, 0);
INSERT INTO `t_sys_log` VALUES (37, 31, '13672297775', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[null,\"1234Abc\",\"1234Abc\"]', 1001, '支付密码更新成功', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 15:55:38', 179, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:55:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (38, 31, '13672297775', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[null,\"1234Abc\",\"1234Abc\"]', 1001, '支付密码更新成功', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 15:55:38', 179, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:55:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (39, 31, '13672297775', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[null,\"1234Abc\",\"1234Abc\"]', NULL, NULL, 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 15:55:40', 4, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:55:39', NULL, 0);
INSERT INTO `t_sys_log` VALUES (40, 31, '13672297775', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', '[\"1234Abc\",\"1234Abc\",\"1234Abc\"]', 1001, '支付密码更新成功', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-22 15:55:47', 302, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-22 15:55:47', NULL, 0);
INSERT INTO `t_sys_log` VALUES (41, NULL, NULL, '系统人工充值', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-recharge/human', 'POST', '[31,134]', 1001, '充值成功', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2018-12-23 13:06:58', 106, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 13:06:57', NULL, 0);
INSERT INTO `t_sys_log` VALUES (42, NULL, NULL, '系统人工充值', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-recharge/human', 'POST', '[31,134]', 1001, '充值成功', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2018-12-23 13:08:11', 107, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 13:08:11', NULL, 0);
INSERT INTO `t_sys_log` VALUES (43, NULL, NULL, '系统人工充值', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-recharge/human', 'POST', '[35,134]', 1003, '不存在的用户编号', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2018-12-23 14:06:37', 24, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 14:06:36', NULL, 0);
INSERT INTO `t_sys_log` VALUES (44, NULL, NULL, '系统人工充值', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-recharge/human', 'POST', '[36,134]', 1003, '不存在的用户编号', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2018-12-23 14:06:43', 2, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 14:06:42', NULL, 0);
INSERT INTO `t_sys_log` VALUES (45, NULL, NULL, '系统人工充值', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-recharge/human', 'POST', '[31,134]', 1001, '充值成功', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2018-12-23 14:06:49', 50, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 14:06:48', NULL, 0);
INSERT INTO `t_sys_log` VALUES (46, NULL, NULL, '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[120]', 1005, '未认证的用户', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 15:26:45', 8, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 15:26:45', NULL, 0);
INSERT INTO `t_sys_log` VALUES (47, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[0]', 1003, '提现金额必须大于0', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 15:27:48', 6, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 15:27:47', NULL, 0);
INSERT INTO `t_sys_log` VALUES (48, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[-2]', 1003, '提现金额必须大于0', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 15:27:53', 3, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 15:27:52', NULL, 0);
INSERT INTO `t_sys_log` VALUES (49, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[null]', 1003, '必须填写提现金额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 15:27:56', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 15:27:56', NULL, 0);
INSERT INTO `t_sys_log` VALUES (50, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[900]', 1003, '提现金额必须小于等于可用余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 15:28:02', 2, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 15:28:01', NULL, 0);
INSERT INTO `t_sys_log` VALUES (51, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 15:28:15', 106, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 15:28:14', NULL, 0);
INSERT INTO `t_sys_log` VALUES (52, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 15:34:39', 153, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 15:34:38', NULL, 0);
INSERT INTO `t_sys_log` VALUES (53, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[250]', 1003, '提现金额与所有未完成的提交金额之和必须小于可用余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:25:42', 49, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:25:41', NULL, 0);
INSERT INTO `t_sys_log` VALUES (54, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[250]', 1003, '提现金额与所有未完成的提交金额之和必须小于可用余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:27:29', 34, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:27:28', NULL, 0);
INSERT INTO `t_sys_log` VALUES (55, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:27:56', 43, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:27:56', NULL, 0);
INSERT INTO `t_sys_log` VALUES (56, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[105]', 1003, '提现金额与所有未完成的提交金额之和必须小于可用余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:28:00', 6, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:28:00', NULL, 0);
INSERT INTO `t_sys_log` VALUES (57, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[0]', 1003, '提现金额必须大于0', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:28:52', 8, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:28:52', NULL, 0);
INSERT INTO `t_sys_log` VALUES (58, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[200]', 1003, '提现金额与所有未完成的提交金额之和必须小于可用余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:28:56', 5, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:28:56', NULL, 0);
INSERT INTO `t_sys_log` VALUES (59, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[200]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:42:14', 7, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:42:14', NULL, 0);
INSERT INTO `t_sys_log` VALUES (60, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[200]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:44:31', 15, 1, 'top.zywork.dos.UserWalletDO cannot be cast to top.zywork.dto.UserWalletDTO', '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:44:31', NULL, 0);
INSERT INTO `t_sys_log` VALUES (61, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[200]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:44:34', 4, 1, 'top.zywork.dos.UserWalletDO cannot be cast to top.zywork.dto.UserWalletDTO', '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:44:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (62, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[200]', 1003, '提现金额必须小于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:46:28', 20, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:46:28', NULL, 0);
INSERT INTO `t_sys_log` VALUES (63, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[200]', 1003, '提现金额必须小于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:46:34', 6, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:46:34', NULL, 0);
INSERT INTO `t_sys_log` VALUES (64, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[103]', 1003, '提现金额必须小于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 16:46:40', 6, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 16:46:39', NULL, 0);
INSERT INTO `t_sys_log` VALUES (65, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[1,2,\"时间未到，不能提现\"]', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-23 17:11:36', 149, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 17:11:36', NULL, 0);
INSERT INTO `t_sys_log` VALUES (66, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[2,1,null]', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-23 17:12:31', 77, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 17:12:31', NULL, 0);
INSERT INTO `t_sys_log` VALUES (67, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[1,2,\"暂不能提现\"]', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-23 17:19:17', 124, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 17:19:16', NULL, 0);
INSERT INTO `t_sys_log` VALUES (68, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[500]', 1003, '提现金额必须小于等于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 17:19:38', 10, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 17:19:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (69, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[2,1,null]', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-23 17:19:54', 14, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 17:19:53', NULL, 0);
INSERT INTO `t_sys_log` VALUES (70, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[500,null]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 18:34:22', 33, 1, 'Mapper method \'top.zywork.dao.UserWithdrawDAO.getTotalUncompleteWithdraw attempted to return null from a method with a primitive return type (long).', '0:0:0:0:0:0:0:1', 1, '2018-12-23 18:34:22', NULL, 0);
INSERT INTO `t_sys_log` VALUES (71, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[500,null]', 1003, '提现金额必须小于等于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 18:39:50', 20, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 18:39:50', NULL, 0);
INSERT INTO `t_sys_log` VALUES (72, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100,null]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 18:39:57', 44, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 18:39:57', NULL, 0);
INSERT INTO `t_sys_log` VALUES (73, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[500,1]', 1003, '提现金额必须小于等于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 18:43:33', 16, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 18:43:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (74, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100,1]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 18:43:49', 81, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 18:43:49', NULL, 0);
INSERT INTO `t_sys_log` VALUES (75, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"3ea854cde3b842338cc7a0fb3fd49bcb\",2,\"不能提现\"]', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-23 18:47:54', 69, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 18:47:54', NULL, 0);
INSERT INTO `t_sys_log` VALUES (76, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[500,1]', 1003, '提现金额必须小于等于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 18:49:25', 13, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 18:49:25', NULL, 0);
INSERT INTO `t_sys_log` VALUES (77, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100,1]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 18:49:39', 78, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 18:49:38', NULL, 0);
INSERT INTO `t_sys_log` VALUES (78, NULL, NULL, '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[null,null]', 1003, '请选择正确的提现单号和审核状态，3成功，4失败', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 19:23:47', 8, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 19:23:46', NULL, 0);
INSERT INTO `t_sys_log` VALUES (79, NULL, NULL, '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",3]', 1001, '已人工完成提现操作，提现SUCCESS', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 19:24:18', 6, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 19:24:17', NULL, 0);
INSERT INTO `t_sys_log` VALUES (80, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",4]', 1003, '提现单号不正确或提现申请不是已通过状态', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 20:23:12', 14, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 20:23:12', NULL, 0);
INSERT INTO `t_sys_log` VALUES (81, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"3ea854cde3b842338cc7a0fb3fd49bcb\",4]', 1003, '提现单号不正确或提现申请不是已通过状态', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 20:23:38', 4, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 20:23:38', NULL, 0);
INSERT INTO `t_sys_log` VALUES (82, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",1,null]', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-23 20:24:06', 97, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 20:24:05', NULL, 0);
INSERT INTO `t_sys_log` VALUES (83, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",1,null]', 1003, '提现单号不正确或提现申请不是审核中状态', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-23 20:56:02', 53, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 20:56:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (84, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",1,null]', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-23 20:56:17', 95, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 20:56:16', NULL, 0);
INSERT INTO `t_sys_log` VALUES (85, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",4]', 1001, '已人工完成提现操作，提现失败', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 20:56:42', 76, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 20:56:41', NULL, 0);
INSERT INTO `t_sys_log` VALUES (86, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",5]', 1003, '请选择正确的提现单号和审核状态，3成功，4失败', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 20:57:07', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 20:57:07', NULL, 0);
INSERT INTO `t_sys_log` VALUES (87, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",3]', 1001, '已人工完成提现操作，提现成功', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 20:57:13', 20, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 20:57:12', NULL, 0);
INSERT INTO `t_sys_log` VALUES (88, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",3]', 1003, '提现单号不正确或提现申请不是已通过状态', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 20:59:25', 26, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 20:59:24', NULL, 0);
INSERT INTO `t_sys_log` VALUES (89, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",3]', 1001, '已人工完成提现操作，提现成功', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 21:00:38', 53032, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 21:00:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (90, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",3]', 1003, '提现单号不正确或提现申请不是已通过状态', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 21:04:42', 34, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 21:04:41', NULL, 0);
INSERT INTO `t_sys_log` VALUES (91, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"77d07a5d6d2b4a7280e9ecff229d4888\",3]', 1001, '已人工完成提现操作，提现成功', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-23 21:05:26', 10541, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 21:05:25', NULL, 0);
INSERT INTO `t_sys_log` VALUES (92, 31, '13672297775', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', NULL, 1001, '登录密码更新成功', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-23 22:04:15', 314, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 22:04:14', NULL, 0);
INSERT INTO `t_sys_log` VALUES (93, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100,1,\"afd\"]', 1003, '支付密码错误', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 22:25:33', 176, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 22:25:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (94, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100,1,\"1234Abc\"]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 22:25:55', 225, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 22:25:54', NULL, 0);
INSERT INTO `t_sys_log` VALUES (95, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100,1,\"1234Abcd\"]', 1003, '支付密码错误', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 22:26:01', 140, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 22:26:01', NULL, 0);
INSERT INTO `t_sys_log` VALUES (96, 31, '13672297775', '更新登录密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-login', 'POST', NULL, 1001, '登录密码更新成功', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2018-12-23 22:26:36', 291, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 22:26:35', NULL, 0);
INSERT INTO `t_sys_log` VALUES (97, 31, '13672297775', '更新支付密码', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/pwd/update-pay', 'POST', NULL, 1001, '支付密码更新成功', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2018-12-23 22:26:53', 323, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 22:26:52', NULL, 0);
INSERT INTO `t_sys_log` VALUES (98, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[100,1,\"1234Abc\"]', 1003, '支付密码错误', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-23 22:27:00', 121, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-23 22:27:00', NULL, 0);
INSERT INTO `t_sys_log` VALUES (99, NULL, NULL, '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[null]', NULL, NULL, 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 13:42:27', 24, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 13:42:27', NULL, 0);
INSERT INTO `t_sys_log` VALUES (100, NULL, NULL, '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[null]', NULL, NULL, 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 13:46:10', 115203, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 13:46:10', NULL, 0);
INSERT INTO `t_sys_log` VALUES (101, NULL, NULL, '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[null]', NULL, NULL, 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 13:46:23', 9133, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 13:46:22', NULL, 0);
INSERT INTO `t_sys_log` VALUES (102, NULL, NULL, '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[null]', NULL, NULL, 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 13:49:44', 168406, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 13:49:44', NULL, 0);
INSERT INTO `t_sys_log` VALUES (103, NULL, NULL, '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[null,null]', 1005, '未认证的用户', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 14:12:46', 10, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:12:45', NULL, 0);
INSERT INTO `t_sys_log` VALUES (104, 31, '13672297775', '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[null,null]', 1003, '填写正确的姓名和银行卡号', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 14:12:58', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:12:57', NULL, 0);
INSERT INTO `t_sys_log` VALUES (105, 31, '13672297775', '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[\"王\",\"在地愿为连理枝\"]', 1003, '填写正确的姓名和银行卡号', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 14:13:10', 1, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:13:10', NULL, 0);
INSERT INTO `t_sys_log` VALUES (106, 31, '13672297775', '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[\"王\",\"6217906500006402266\"]', 1003, '填写正确的姓名和银行卡号', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 14:13:26', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:13:25', NULL, 0);
INSERT INTO `t_sys_log` VALUES (107, 31, '13672297775', '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[\"王\",\"6217906500006402265\"]', 1001, '已绑定银行卡', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 14:13:32', 536, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:13:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (108, 31, '13672297775', '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[\"王\",\"6217906500006402265\"]', 1001, '已绑定银行卡', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 14:36:21', 293, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:36:20', NULL, 0);
INSERT INTO `t_sys_log` VALUES (109, 31, '13672297775', '解除绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/unbind', 'POST', '[\"621\"]', NULL, NULL, 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2018-12-24 14:37:48', 82, 1, '服务异常', '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:37:48', NULL, 0);
INSERT INTO `t_sys_log` VALUES (110, 31, '13672297775', '解除绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/unbind', 'POST', '[\"621\"]', NULL, NULL, 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2018-12-24 14:42:13', 172789, 1, '服务异常', '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:42:12', NULL, 0);
INSERT INTO `t_sys_log` VALUES (111, 31, '13672297775', '解除绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/unbind', 'POST', '[\"621\"]', 1001, '已解除绑定银行卡', 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2018-12-24 14:42:35', 218, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:42:34', NULL, 0);
INSERT INTO `t_sys_log` VALUES (112, 31, '13672297775', '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[\"王\",\"6217906500006402265\"]', 1001, '已绑定银行卡', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 14:49:32', 521, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:49:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (113, 31, '13672297775', '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[\"王\",\"6217906500006402265\"]', 1001, '已绑定银行卡', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 14:49:51', 247, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:49:51', NULL, 0);
INSERT INTO `t_sys_log` VALUES (114, 31, '13672297775', '解除绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/unbind', 'POST', '[5]', 1003, '不存在的银行卡', 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2018-12-24 14:50:38', 2, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:50:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (115, 31, '13672297775', '解除绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/unbind', 'POST', '[4]', 1003, '错误的银行卡', 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2018-12-24 14:50:46', 8, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:50:46', NULL, 0);
INSERT INTO `t_sys_log` VALUES (116, 31, '13672297775', '解除绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/unbind', 'POST', '[3]', 1001, '已解除绑定银行卡', 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2018-12-24 14:50:52', 50, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 14:50:51', NULL, 0);
INSERT INTO `t_sys_log` VALUES (117, 31, '13672297775', '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[\"王\",\"62179065\"]', 1003, '填写正确的姓名和银行卡号', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 15:29:32', 12, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 15:29:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (118, 31, '13672297775', '绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/bind', 'POST', '[\"王\",\"6217906500006402265\"]', 1003, '不能再次绑定已绑定的银行卡', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2018-12-24 15:29:42', 485, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 15:29:41', NULL, 0);
INSERT INTO `t_sys_log` VALUES (119, 31, '13672297775', '解除绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/unbind', 'POST', '[\"87897984\"]', 1003, '不存在的银行卡', 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2018-12-24 15:30:07', 2, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 15:30:06', NULL, 0);
INSERT INTO `t_sys_log` VALUES (120, 31, '13672297775', '解除绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/unbind', 'POST', '[\"6217906500006402265\"]', 1003, '银行卡不属于此用户', 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2018-12-24 15:33:07', 24, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 15:33:07', NULL, 0);
INSERT INTO `t_sys_log` VALUES (121, 31, '13672297775', '解除绑定银行卡', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-bankcard/unbind', 'POST', '[\"6217906500006402265\"]', 1001, '已解除绑定银行卡', 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2018-12-24 15:33:18', 70, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 15:33:18', NULL, 0);
INSERT INTO `t_sys_log` VALUES (122, NULL, NULL, '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"111\"]', 1005, '未认证的用户', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-24 17:06:01', 11, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 17:06:01', NULL, 0);
INSERT INTO `t_sys_log` VALUES (123, 31, '13672297775', '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"111\"]', 1003, '提现单号不正确或提现申请不是审核中状态', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-24 17:06:13', 8, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 17:06:12', NULL, 0);
INSERT INTO `t_sys_log` VALUES (124, 31, '13672297775', '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"3ea854cde3b842338cc7a0fb3fd49bcb\"]', 1003, '提现单号不正确或提现申请不是审核中状态', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-24 17:06:25', 7, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 17:06:24', NULL, 0);
INSERT INTO `t_sys_log` VALUES (125, 31, '13672297775', '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"399a929dc59a48f0af9498a534252792\"]', 1003, '提现单号不属于此用户', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-24 17:06:52', 3, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 17:06:52', NULL, 0);
INSERT INTO `t_sys_log` VALUES (126, 31, '13672297775', '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"399a929dc59a48f0af9498a534252792\"]', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-24 17:07:03', 7, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 17:07:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (127, 31, '13672297775', '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"399a929dc59a48f0af9498a534252792\"]', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-24 17:09:22', 200, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 17:09:21', NULL, 0);
INSERT INTO `t_sys_log` VALUES (128, 31, '13672297775', '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"399a929dc59a48f0af9498a534252792\"]', 1003, '提现单号不正确或提现申请不是审核中状态', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-24 17:09:32', 3, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-24 17:09:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (129, NULL, NULL, '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"399a929dc59a48f0af9498a534252792\",1,null]', 1005, '未认证的用户', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-25 14:57:16', 10, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 14:57:16', NULL, 0);
INSERT INTO `t_sys_log` VALUES (130, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"399a929dc59a48f0af9498a534252792\",1,null]', 1003, '数据版本号有问题，在审核前数据已被更新', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-25 14:57:45', 21, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 14:57:44', NULL, 0);
INSERT INTO `t_sys_log` VALUES (131, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"399a929dc59a48f0af9498a534252792\",1,null]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-25 15:02:17', 64, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'newVersion\' not found. Available parameters are [param5, withdrawNo, checkedUserId, description, param3, withdrawStatus, param4, version, param1, param2]', '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:02:17', NULL, 0);
INSERT INTO `t_sys_log` VALUES (132, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"399a929dc59a48f0af9498a534252792\",1,null]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-25 15:03:55', 47, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'newVersion\' not found. Available parameters are [param5, withdrawNo, checkedUserId, description, param3, withdrawStatus, param4, version, param1, param2]', '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:03:54', NULL, 0);
INSERT INTO `t_sys_log` VALUES (133, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"399a929dc59a48f0af9498a534252792\",1,null]', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-25 15:04:58', 55, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:04:57', NULL, 0);
INSERT INTO `t_sys_log` VALUES (134, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"399a929dc59a48f0af9498a534252792\",4,null]', 1003, '审核状态错误，1通过，2未通过', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-25 15:11:11', 10, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:11:11', NULL, 0);
INSERT INTO `t_sys_log` VALUES (135, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"399a929dc59a48f0af9498a534252792\",4]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 15:12:13', 38301, 1, '/ by zero', '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:12:13', NULL, 0);
INSERT INTO `t_sys_log` VALUES (136, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"399a929dc59a48f0af9498a534252792\",4]', 1001, '已人工完成提现操作，提现成功', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 15:13:46', 12613, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:13:46', NULL, 0);
INSERT INTO `t_sys_log` VALUES (137, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"399a929dc59a48f0af9498a534252792\",4]', 1003, '提现单号不正确或提现申请不是已通过状态', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 15:14:06', 3, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:14:05', NULL, 0);
INSERT INTO `t_sys_log` VALUES (138, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"399a929dc59a48f0af9498a534252792\",4]', 1003, '数据版本号有问题，在完成提现前数据已被更新', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 15:14:49', 23593, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:14:49', NULL, 0);
INSERT INTO `t_sys_log` VALUES (139, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"399a929dc59a48f0af9498a534252792\",4]', 1003, '提现单号不正确或提现申请不是已通过状态', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 15:22:06', 40, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:22:06', NULL, 0);
INSERT INTO `t_sys_log` VALUES (140, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"399a929dc59a48f0af9498a534252792\",4]', 1001, '已人工完成提现操作，提现成功', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 15:23:00', 28941, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 15:23:00', NULL, 0);
INSERT INTO `t_sys_log` VALUES (141, NULL, NULL, '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"399a929dc59a48f0af9498a534252792\"]', 1005, '未认证的用户', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-25 18:15:16', 9, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:15:16', NULL, 0);
INSERT INTO `t_sys_log` VALUES (142, NULL, NULL, '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"399a929dc59a48f0af9498a534252792\"]', 1005, '未认证的用户', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-25 18:17:12', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:17:11', NULL, 0);
INSERT INTO `t_sys_log` VALUES (143, 31, '13672297775', '取消提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/cancel', 'POST', '[\"399a929dc59a48f0af9498a534252792\"]', 1003, '提现单号不正确或提现申请不是审核中状态', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2018-12-25 18:17:24', 17, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:17:23', NULL, 0);
INSERT INTO `t_sys_log` VALUES (144, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:18:01', 49, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:18:01', NULL, 0);
INSERT INTO `t_sys_log` VALUES (145, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:21:13', 26, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:21:13', NULL, 0);
INSERT INTO `t_sys_log` VALUES (146, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:22:00', 6, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:22:00', NULL, 0);
INSERT INTO `t_sys_log` VALUES (147, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:22:02', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:22:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (148, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,\"劳动厅\"]', 1003, '支付密码错误', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:22:05', 147, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:22:05', NULL, 0);
INSERT INTO `t_sys_log` VALUES (149, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,\"123456Abc\"]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:22:14', 208, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:22:14', NULL, 0);
INSERT INTO `t_sys_log` VALUES (150, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:02', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (151, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:02', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (152, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:03', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (153, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:03', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (154, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:03', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (155, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:05', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:04', NULL, 0);
INSERT INTO `t_sys_log` VALUES (156, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:06', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:05', NULL, 0);
INSERT INTO `t_sys_log` VALUES (157, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:06', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:06', NULL, 0);
INSERT INTO `t_sys_log` VALUES (158, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:06', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:06', NULL, 0);
INSERT INTO `t_sys_log` VALUES (159, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:06', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:06', NULL, 0);
INSERT INTO `t_sys_log` VALUES (160, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:07', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:07', NULL, 0);
INSERT INTO `t_sys_log` VALUES (161, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:07', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:07', NULL, 0);
INSERT INTO `t_sys_log` VALUES (162, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:07', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:07', NULL, 0);
INSERT INTO `t_sys_log` VALUES (163, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:08', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:08', NULL, 0);
INSERT INTO `t_sys_log` VALUES (164, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:09', 1, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:08', NULL, 0);
INSERT INTO `t_sys_log` VALUES (165, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:10', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:09', NULL, 0);
INSERT INTO `t_sys_log` VALUES (166, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,null]', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-25 18:25:32', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 18:25:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (167, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"b84bdc6156554a27a57229faa361d6a4\",4]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 23:21:08', 61, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 23:21:07', NULL, 0);
INSERT INTO `t_sys_log` VALUES (168, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"b84bdc6156554a27a57229faa361d6a4\",4]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 23:22:01', 32, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 23:22:01', NULL, 0);
INSERT INTO `t_sys_log` VALUES (169, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"b84bdc6156554a27a57229faa361d6a4\",4]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 23:23:01', 29635, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 23:23:01', NULL, 0);
INSERT INTO `t_sys_log` VALUES (170, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"b84bdc6156554a27a57229faa361d6a4\",4]', NULL, NULL, 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 23:23:46', 36800, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 23:23:45', NULL, 0);
INSERT INTO `t_sys_log` VALUES (171, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"b84bdc6156554a27a57229faa361d6a4\",4]', 1001, '已人工完成提现操作，提现成功', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-25 23:24:20', 103, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-25 23:24:19', NULL, 0);
INSERT INTO `t_sys_log` VALUES (172, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[20,1,\"123456Abc\"]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-26 17:36:15', 234, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-26 17:36:15', NULL, 0);
INSERT INTO `t_sys_log` VALUES (173, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[55,1,\"123456Abc\"]', 1003, '提现金额必须小于等于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-26 17:37:06', 145, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-26 17:37:05', NULL, 0);
INSERT INTO `t_sys_log` VALUES (174, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[50,1,\"123456Abc\"]', 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-26 17:38:45', 232, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-26 17:38:45', NULL, 0);
INSERT INTO `t_sys_log` VALUES (175, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/submit', 'POST', '[3,1,\"123456Abc\"]', 1003, '提现金额必须小于等于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2018-12-26 17:38:50', 142, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-26 17:38:50', NULL, 0);
INSERT INTO `t_sys_log` VALUES (176, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"ef011bfb3ee94b6bb978f8fee2023177\",4,null]', 1003, '审核状态错误，1通过，2未通过', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-26 17:39:20', 2, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-26 17:39:20', NULL, 0);
INSERT INTO `t_sys_log` VALUES (177, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/check', 'POST', '[\"ef011bfb3ee94b6bb978f8fee2023177\",1,null]', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2018-12-26 17:39:27', 85, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-26 17:39:26', NULL, 0);
INSERT INTO `t_sys_log` VALUES (178, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"ef011bfb3ee94b6bb978f8fee2023177\",4]', 1001, '已人工完成提现操作，提现成功', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2018-12-26 17:39:46', 44, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-26 17:39:45', NULL, 0);
INSERT INTO `t_sys_log` VALUES (179, 31, '13672297775', '系统人工充值', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-recharge/human', 'POST', '[31,500]', 1001, '充值成功', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2018-12-26 17:42:32', 110, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-26 17:42:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (180, NULL, NULL, '用户手机注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg-mobile', 'POST', NULL, NULL, NULL, 'top.zywork.controller.AuthController', 'regMobile', '2018-12-28 11:48:47', 37, 1, 'java.lang.Integer cannot be cast to java.lang.String', '0:0:0:0:0:0:0:1', 1, '2018-12-28 11:48:47', NULL, 0);
INSERT INTO `t_sys_log` VALUES (181, NULL, NULL, '用户手机注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg-mobile', 'POST', NULL, NULL, NULL, 'top.zywork.controller.AuthController', 'regMobile', '2018-12-28 11:52:54', 121806, 1, 'java.lang.Integer cannot be cast to java.lang.String', '0:0:0:0:0:0:0:1', 1, '2018-12-28 11:52:54', NULL, 0);
INSERT INTO `t_sys_log` VALUES (182, NULL, NULL, '用户手机注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg-mobile', 'POST', NULL, NULL, NULL, 'top.zywork.controller.AuthController', 'regMobile', '2018-12-28 11:53:14', 15206, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-28 11:53:14', NULL, 0);
INSERT INTO `t_sys_log` VALUES (183, NULL, NULL, '用户手机注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg-mobile', 'POST', NULL, NULL, NULL, 'top.zywork.controller.AuthController', 'regMobile', '2018-12-28 11:53:29', 6267, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-28 11:53:29', NULL, 0);
INSERT INTO `t_sys_log` VALUES (184, NULL, NULL, '用户手机注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg-mobile', 'POST', NULL, NULL, NULL, 'top.zywork.controller.AuthController', 'regMobile', '2018-12-28 11:53:39', 6087, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-28 11:53:38', NULL, 0);
INSERT INTO `t_sys_log` VALUES (185, NULL, NULL, '用户手机注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg-mobile', 'POST', NULL, 1001, '注册成功', 'top.zywork.controller.AuthController', 'regMobile', '2018-12-28 12:00:37', 337, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2018-12-28 12:00:36', NULL, 0);
INSERT INTO `t_sys_log` VALUES (186, NULL, NULL, '导入角色', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-role', 'POST', NULL, NULL, NULL, 'top.zywork.controller.PermissionImportExportController', 'importRoles', '2019-01-04 11:21:47', 121, 1, 'syntax error, expect {, actual [, pos 0, fastjson-version 1.2.51', '0:0:0:0:0:0:0:1', 1, '2019-01-04 11:21:47', NULL, 0);
INSERT INTO `t_sys_log` VALUES (187, NULL, NULL, '导入角色', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-role', 'POST', NULL, 1001, '成功导入角色信息', 'top.zywork.controller.PermissionImportExportController', 'importRoles', '2019-01-04 11:31:49', 240, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-04 11:31:48', NULL, 0);
INSERT INTO `t_sys_log` VALUES (188, NULL, NULL, '导出权限', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/export-permission', 'GET', NULL, 0, '', 'top.zywork.controller.PermissionImportExportController', 'exportPermissions', '2019-01-04 14:50:02', 137, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-04 14:50:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (189, NULL, NULL, '导入权限', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-04 14:52:44', 130, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-04 14:52:44', NULL, 0);
INSERT INTO `t_sys_log` VALUES (190, NULL, NULL, '导出权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/export-permission', 'GET', NULL, 0, '', 'top.zywork.controller.PermissionImportExportController', 'exportPermissions', '2019-01-04 15:17:49', 192, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-04 15:17:48', NULL, 0);
INSERT INTO `t_sys_log` VALUES (191, NULL, NULL, '导出权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/export-permission', 'GET', NULL, 0, '', 'top.zywork.controller.PermissionImportExportController', 'exportPermissions', '2019-01-04 15:48:28', 68, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-04 15:48:27', NULL, 0);
INSERT INTO `t_sys_log` VALUES (192, NULL, NULL, '导出权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/export-permission', 'GET', NULL, 0, '', 'top.zywork.controller.PermissionImportExportController', 'exportPermissions', '2019-01-05 11:17:35', 251, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-05 11:17:35', NULL, 0);
INSERT INTO `t_sys_log` VALUES (193, NULL, NULL, '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-05 11:18:01', 1024, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-05 11:18:00', NULL, 0);
INSERT INTO `t_sys_log` VALUES (194, NULL, NULL, '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-05 11:18:10', 274, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-05 11:18:09', NULL, 0);
INSERT INTO `t_sys_log` VALUES (195, NULL, NULL, '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-05 11:23:49', 589, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-05 11:23:48', NULL, 0);
INSERT INTO `t_sys_log` VALUES (196, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-05 18:44:09', 749, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-05 18:44:08', NULL, 0);
INSERT INTO `t_sys_log` VALUES (197, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-06 13:24:25', 715, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 13:24:25', NULL, 0);
INSERT INTO `t_sys_log` VALUES (198, 31, '13672297775', '人工完成提现操作', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/confirm-human', 'POST', '[\"111\",1]', 1003, '请选择正确的提现单号和审核状态', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2019-01-06 14:01:13', 10, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 14:01:12', NULL, 0);
INSERT INTO `t_sys_log` VALUES (199, NULL, NULL, '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-transfer/trans', 'POST', NULL, 1005, '未认证的用户', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-06 20:52:50', 8, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 20:52:50', NULL, 0);
INSERT INTO `t_sys_log` VALUES (200, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-transfer/trans', 'POST', NULL, 1003, '必须填写转账金额，支付密码', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-06 20:53:29', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 20:53:29', NULL, 0);
INSERT INTO `t_sys_log` VALUES (201, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-transfer/trans', 'POST', NULL, 1003, '必须填写转账金额，支付密码', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-06 20:53:39', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 20:53:39', NULL, 0);
INSERT INTO `t_sys_log` VALUES (202, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-transfer/trans', 'POST', NULL, 1003, '对方账户填写错误', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-06 20:53:46', 157, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 20:53:46', NULL, 0);
INSERT INTO `t_sys_log` VALUES (203, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-transfer/trans', 'POST', NULL, 1003, '对方账户填写错误', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-06 20:54:52', 155, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 20:54:52', NULL, 0);
INSERT INTO `t_sys_log` VALUES (204, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-transfer/trans', 'POST', NULL, NULL, NULL, 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-06 20:55:32', 479, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'transerType\' not found. Available parameters are [amount, transferType, param3, userId, toUserId, param4, param1, param2]', '0:0:0:0:0:0:0:1', 1, '2019-01-06 20:55:31', NULL, 0);
INSERT INTO `t_sys_log` VALUES (205, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-transfer/trans', 'POST', NULL, 1003, '转账金额必须小于等于可转账余额', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-06 20:56:32', 222, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 20:56:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (206, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-transfer/trans', 'POST', NULL, 1001, '转账成功', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-06 20:56:45', 249, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 20:56:44', NULL, 0);
INSERT INTO `t_sys_log` VALUES (207, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/user-transfer/trans', 'POST', NULL, 1003, '转账金额必须小于等于可转账余额', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-06 21:01:40', 164, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 21:01:40', NULL, 0);
INSERT INTO `t_sys_log` VALUES (208, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/user/submit', 'POST', '[500,1,\"123456Abc\"]', 1003, '提现金额必须小于等于可提现余额', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-01-06 21:04:40', 175, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-06 21:04:39', NULL, 0);
INSERT INTO `t_sys_log` VALUES (214, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/user/submit', 'POST', '{}', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-01-08 18:32:42', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-08 18:35:46', NULL, 0);
INSERT INTO `t_sys_log` VALUES (215, 31, '13672297775', '提交提现申请', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/user/submit', 'POST', '{\"amount\":10}', 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-01-08 18:35:56', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-08 18:36:39', NULL, 0);
INSERT INTO `t_sys_log` VALUES (216, NULL, NULL, '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-10 15:41:39', 891, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-10 15:41:39', NULL, 0);
INSERT INTO `t_sys_log` VALUES (217, NULL, NULL, '微信公众号登录', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/wx-auth/gzh', 'GET', NULL, 1003, '微信授权登录缺少code', 'top.zywork.controller.WeixinAuthController', 'gzhAuth', '2019-01-11 18:17:13', 28, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-11 18:17:12', NULL, 0);
INSERT INTO `t_sys_log` VALUES (218, NULL, NULL, '微信公众号登录', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/wx-auth/gzh', 'GET', NULL, 1003, '微信授权登录缺少code', 'top.zywork.controller.WeixinAuthController', 'gzhAuth', '2019-01-11 18:17:16', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-11 18:17:15', NULL, 0);
INSERT INTO `t_sys_log` VALUES (239, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/admin/check', 'POST', '{\"withdrawNo\":\"2a5e0e09c3084e6ebee0dd36a6f3acc7\",\"description\":\"审核通过\",\"withdrawStatus\":1}', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2019-01-14 20:50:03', 73, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-14 20:50:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (240, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/admin/check', 'POST', '{\"withdrawNo\":\"2a5e0e09c3084e6ebee0dd36a6f3acc7\",\"withdrawStatus\":1}', 1003, '可用余额不足，请检查用户可用余额是否大于等于提现金额，或数据版本号有问题，在审核前提现记录已被更新', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2019-01-15 18:06:00', 61, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-15 18:06:00', NULL, 0);
INSERT INTO `t_sys_log` VALUES (241, 31, '13672297775', '提现申请审核', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/withdraw/admin/check', 'POST', '{\"withdrawNo\":\"2a5e0e09c3084e6ebee0dd36a6f3acc7\",\"withdrawStatus\":1}', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2019-01-15 18:06:20', 41, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-15 18:06:19', NULL, 0);
INSERT INTO `t_sys_log` VALUES (242, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/transfer/user/trans', 'POST', NULL, 1003, '对方账户填写错误', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-15 20:51:04', 206, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-15 20:51:03', NULL, 0);
INSERT INTO `t_sys_log` VALUES (243, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/transfer/user/trans', 'POST', NULL, 1003, '转账金额必须小于等于可转账余额', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-15 20:51:33', 174, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-15 20:51:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (244, 31, '13672297775', '用户转账', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/transfer/user/trans', 'POST', NULL, 1001, '转账成功', 'top.zywork.controller.UserTransferController', 'transfer', '2019-01-15 20:51:45', 259, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-15 20:51:44', NULL, 0);
INSERT INTO `t_sys_log` VALUES (245, NULL, NULL, '用户邮箱注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg', 'POST', NULL, 1001, '注册成功', 'top.zywork.controller.AuthController', 'reg', '2019-01-17 10:30:22', 256, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-17 10:30:21', NULL, 0);
INSERT INTO `t_sys_log` VALUES (246, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-17 10:33:28', 1228, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-17 10:33:28', NULL, 0);
INSERT INTO `t_sys_log` VALUES (247, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-17 15:09:04', 1231, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-17 15:09:03', NULL, 0);
INSERT INTO `t_sys_log` VALUES (248, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, NULL, NULL, 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-18 18:25:46', 1508, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'role_id\' doesn\'t have a default value\n### The error may involve top.zywork.dao.RolePermissionDAO.saveBatch-Inline\n### The error occurred while setting parameters\n### SQL: insert into t_role_permission              ( permission_id )               values ( ? )           ;              insert into t_role_permission              ( role_id,                                                       permission_id )               values ( ?,                                                       ? )\n### Cause: java.sql.SQLException: Field \'role_id\' doesn\'t have a default value\n; Field \'role_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'role_id\' doesn\'t have a default value', '0:0:0:0:0:0:0:1', 1, '2019-01-18 18:25:45', NULL, 0);
INSERT INTO `t_sys_log` VALUES (249, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-18 18:26:59', 847, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-18 18:26:59', NULL, 0);
INSERT INTO `t_sys_log` VALUES (250, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, NULL, NULL, 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-19 21:34:29', 1684, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'role_id\' doesn\'t have a default value\n### The error may involve top.zywork.dao.RolePermissionDAO.saveBatch-Inline\n### The error occurred while setting parameters\n### SQL: insert into t_role_permission              ( permission_id )               values ( ? )           ;              insert into t_role_permission              ( role_id,                                                       permission_id )               values ( ?,                                                       ? )           ;              insert into t_role_permission              ( permission_id )               values ( ? )\n### Cause: java.sql.SQLException: Field \'role_id\' doesn\'t have a default value\n; Field \'role_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'role_id\' doesn\'t have a default value', '0:0:0:0:0:0:0:1', 1, '2019-01-19 21:34:29', NULL, 0);
INSERT INTO `t_sys_log` VALUES (251, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, NULL, NULL, 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-19 21:36:32', 604, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'role_id\' doesn\'t have a default value\n### The error may involve top.zywork.dao.RolePermissionDAO.saveBatch-Inline\n### The error occurred while setting parameters\n### SQL: insert into t_role_permission              ( permission_id )               values ( ? )           ;              insert into t_role_permission              ( role_id,                                                       permission_id )               values ( ?,                                                       ? )\n### Cause: java.sql.SQLException: Field \'role_id\' doesn\'t have a default value\n; Field \'role_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'role_id\' doesn\'t have a default value', '0:0:0:0:0:0:0:1', 1, '2019-01-19 21:36:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (252, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-19 21:38:04', 677, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-19 21:38:03', NULL, 0);
INSERT INTO `t_sys_log` VALUES (253, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-19 23:38:56', 1057, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-19 23:38:56', NULL, 0);
INSERT INTO `t_sys_log` VALUES (254, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-19 23:41:17', 665, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-19 23:41:17', NULL, 0);
INSERT INTO `t_sys_log` VALUES (255, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-19 23:48:47', 706, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-19 23:48:46', NULL, 0);
INSERT INTO `t_sys_log` VALUES (256, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-19 23:53:07', 665, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-19 23:53:07', NULL, 0);
INSERT INTO `t_sys_log` VALUES (257, 31, '13672297775', '导出角色信息', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/export-roles', 'GET', NULL, 0, '', 'top.zywork.controller.PermissionImportExportController', 'exportRoles', '2019-01-20 12:53:09', 23, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-20 12:53:08', NULL, 0);
INSERT INTO `t_sys_log` VALUES (258, 31, '13672297775', '导出角色信息', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/export-roles', 'GET', NULL, 0, '', 'top.zywork.controller.PermissionImportExportController', 'exportRoles', '2019-01-20 12:57:15', 25, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-20 12:57:14', NULL, 0);
INSERT INTO `t_sys_log` VALUES (259, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-20 13:06:21', 1798, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-20 13:06:21', NULL, 0);
INSERT INTO `t_sys_log` VALUES (260, 31, '13672297775', '导入角色', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-role', 'POST', NULL, 1001, '成功导入角色信息', 'top.zywork.controller.PermissionImportExportController', 'importRoles', '2019-01-20 13:07:38', 91, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-20 13:07:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (261, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-20 13:09:36', 822, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-20 13:09:36', NULL, 0);
INSERT INTO `t_sys_log` VALUES (262, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-24 13:33:55', 1489, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-24 13:33:54', NULL, 0);
INSERT INTO `t_sys_log` VALUES (263, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-24 16:10:55', 1554, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-24 16:10:55', NULL, 0);
INSERT INTO `t_sys_log` VALUES (264, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-24 18:30:25', 1359, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-24 18:30:25', NULL, 0);
INSERT INTO `t_sys_log` VALUES (265, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-01-25 23:12:27', 1680, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-25 23:12:26', NULL, 0);
INSERT INTO `t_sys_log` VALUES (266, NULL, NULL, '用户邮箱注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg', 'POST', NULL, 1003, '错误的邮箱地址', 'top.zywork.controller.AuthController', 'reg', '2019-01-28 15:58:02', 13, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-28 15:58:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (267, NULL, NULL, '用户邮箱注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg', 'POST', NULL, 1003, '密码不符合要求', 'top.zywork.controller.AuthController', 'reg', '2019-01-28 15:58:11', 19, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-28 15:58:10', NULL, 0);
INSERT INTO `t_sys_log` VALUES (268, NULL, NULL, '用户邮箱注册', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/auth/reg', 'POST', NULL, 1003, '邮箱验证码不正确', 'top.zywork.controller.AuthController', 'reg', '2019-01-28 15:58:22', 7, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-01-28 15:58:21', NULL, 0);
INSERT INTO `t_sys_log` VALUES (269, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-02-13 15:41:16', 1560, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-02-13 15:41:16', NULL, 0);
INSERT INTO `t_sys_log` VALUES (270, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-02-13 18:16:32', 1695, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-02-13 18:16:31', NULL, 0);
INSERT INTO `t_sys_log` VALUES (271, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-02-15 14:38:34', 1808, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-02-15 14:38:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (272, 31, '13672297775', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-02-15 16:48:05', 1063, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-02-15 16:48:04', NULL, 0);
INSERT INTO `t_sys_log` VALUES (273, 31, '13672297775', '导出角色信息', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'http://localhost:8088/permission-import-export/export-roles', 'GET', NULL, 0, '', 'top.zywork.controller.PermissionImportExportController', 'exportRoles', '2019-02-15 16:52:40', 16, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-02-15 16:52:40', NULL, 0);
INSERT INTO `t_sys_log` VALUES (274, 31, '13672297775', '导入角色', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'http://localhost:8088/permission-import-export/import-role', 'POST', NULL, 1001, '成功导入角色信息', 'top.zywork.controller.PermissionImportExportController', 'importRoles', '2019-02-15 16:52:56', 69, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-02-15 16:52:56', NULL, 0);
INSERT INTO `t_sys_log` VALUES (275, 31, '18888888888', '导入角色', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'http://localhost:8088/permission-import-export/import-role', 'POST', NULL, 1001, '成功导入角色信息', 'top.zywork.controller.PermissionImportExportController', 'importRoles', '2019-02-22 14:32:28', 579, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-02-22 14:32:27', NULL, 0);
INSERT INTO `t_sys_log` VALUES (276, 31, '18888888888', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-02-22 17:58:24', 4430, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-02-22 17:58:24', NULL, 0);
INSERT INTO `t_sys_log` VALUES (277, 31, '18888888888', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-02-28 11:14:09', 3169, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-02-28 11:14:09', NULL, 0);
INSERT INTO `t_sys_log` VALUES (278, 31, '18888888888', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-03-02 16:15:37', 2126, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-03-02 16:15:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (279, 31, '18888888888', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-03-04 16:37:49', 1670, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-03-04 16:37:49', NULL, 0);
INSERT INTO `t_sys_log` VALUES (280, 31, '18888888888', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-03-06 14:10:48', 2529, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-03-06 14:10:48', NULL, 0);
INSERT INTO `t_sys_log` VALUES (281, 31, '18888888888', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-03-08 18:13:21', 2473, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-03-08 18:13:21', NULL, 0);
INSERT INTO `t_sys_log` VALUES (282, 31, '18888888888', '导入权限配置', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-03-12 16:33:23', 2426, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-03-12 16:33:23', NULL, 0);
INSERT INTO `t_sys_log` VALUES (283, 31, '18888888888', '提交提现申请', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/withdraw/user/submit', 'POST', NULL, 1003, '必须填写提现金额、支付密码，并选择提现银行卡', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-04-09 14:46:37', 3, 0, NULL, '192.168.200.197', 1, '2019-04-09 14:46:36', NULL, 0);
INSERT INTO `t_sys_log` VALUES (284, 31, '18888888888', '提交提现申请', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/withdraw/user/submit', 'POST', NULL, 1003, '支付密码错误', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-04-09 14:48:21', 85, 0, NULL, '192.168.200.197', 1, '2019-04-09 14:48:20', NULL, 0);
INSERT INTO `t_sys_log` VALUES (285, 31, '18888888888', '提交提现申请', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/withdraw/user/submit', 'POST', NULL, 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-04-09 14:48:30', 115, 0, NULL, '192.168.200.197', 1, '2019-04-09 14:48:29', NULL, 0);
INSERT INTO `t_sys_log` VALUES (286, 31, '18888888888', '解除绑定银行卡', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/user-bankcard/user/unbind', 'POST', '{\"bankcardNo\":\"62179065\"}', 1003, '不存在的银行卡', 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2019-04-09 16:17:16', 2, 0, NULL, '192.168.200.197', 1, '2019-04-09 16:17:15', NULL, 0);
INSERT INTO `t_sys_log` VALUES (287, 31, '18888888888', '绑定银行卡', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/user-bankcard/user/bind', 'POST', '{\"accountName\":\"王根参\",\"bankcardNo\":\"7888\"}', 1003, '错误的姓名和银行卡号', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2019-04-09 16:18:32', 0, 0, NULL, '192.168.200.197', 1, '2019-04-09 16:18:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (288, 31, '18888888888', '绑定银行卡', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/user-bankcard/user/bind', 'POST', '{\"accountName\":\"王根参\",\"bankcardNo\":\"6217906500006402265\"}', 1001, '已绑定银行卡', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2019-04-09 16:18:56', 749, 0, NULL, '192.168.200.197', 1, '2019-04-09 16:18:55', NULL, 0);
INSERT INTO `t_sys_log` VALUES (289, 31, '18888888888', '解除绑定银行卡', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/user-bankcard/user/unbind', 'POST', '{\"bankcardNo\":\"6217906500006402265\"}', 1001, '已解除绑定银行卡', 'top.zywork.controller.UserBankcardController', 'unbindBankcard', '2019-04-09 16:24:18', 67, 0, NULL, '192.168.200.197', 1, '2019-04-09 16:24:17', NULL, 0);
INSERT INTO `t_sys_log` VALUES (290, 31, '18888888888', '绑定银行卡', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/user-bankcard/user/bind', 'POST', '{\"accountName\":\"王根参\",\"bankcardNo\":\"6217906500006402265\"}', 1001, '已绑定银行卡', 'top.zywork.controller.UserBankcardController', 'bindBankcard', '2019-04-09 16:24:33', 250, 0, NULL, '192.168.200.197', 1, '2019-04-09 16:24:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (291, 31, '18888888888', '提交提现申请', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/withdraw/user/submit', 'POST', NULL, 1003, '支付密码错误', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-04-09 16:33:34', 88, 0, NULL, '192.168.200.197', 1, '2019-04-09 16:33:34', NULL, 0);
INSERT INTO `t_sys_log` VALUES (292, 31, '18888888888', '提交提现申请', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/withdraw/user/submit', 'POST', NULL, 1003, '支付密码错误', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-04-09 16:33:36', 86, 0, NULL, '192.168.200.197', 1, '2019-04-09 16:33:36', NULL, 0);
INSERT INTO `t_sys_log` VALUES (293, 31, '18888888888', '提交提现申请', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/withdraw/user/submit', 'POST', NULL, 1003, '支付密码错误', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-04-09 16:33:38', 84, 0, NULL, '192.168.200.197', 1, '2019-04-09 16:33:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (294, 31, '18888888888', '更新登录密码', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/pwd/update-login', 'POST', NULL, 1001, '登录密码更新成功', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2019-04-09 17:00:22', 263, 0, NULL, '192.168.200.197', 1, '2019-04-09 17:00:21', NULL, 0);
INSERT INTO `t_sys_log` VALUES (295, 31, '18888888888', '更新登录密码', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/pwd/update-login', 'POST', NULL, 1001, '登录密码更新成功', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2019-04-09 17:01:50', 247, 0, NULL, '192.168.200.197', 1, '2019-04-09 17:01:49', NULL, 0);
INSERT INTO `t_sys_log` VALUES (296, 31, '18888888888', '更新登录密码', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/pwd/update-login', 'POST', NULL, 1001, '登录密码更新成功', 'top.zywork.controller.PasswordController', 'updateLoginPwd', '2019-04-09 17:04:45', 215, 0, NULL, '192.168.200.197', 1, '2019-04-09 17:04:44', NULL, 0);
INSERT INTO `t_sys_log` VALUES (297, 31, '18888888888', '更新支付密码', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/pwd/update-pay', 'POST', NULL, 1003, '原密码错误', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2019-04-09 17:11:33', 86, 0, NULL, '192.168.200.197', 1, '2019-04-09 17:11:32', NULL, 0);
INSERT INTO `t_sys_log` VALUES (298, 31, '18888888888', '更新支付密码', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/pwd/update-pay', 'POST', NULL, 1001, '支付密码更新成功', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2019-04-09 17:11:47', 275, 0, NULL, '192.168.200.197', 1, '2019-04-09 17:11:46', NULL, 0);
INSERT INTO `t_sys_log` VALUES (299, 31, '18888888888', '更新支付密码', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/pwd/update-pay', 'POST', NULL, 1001, '支付密码更新成功', 'top.zywork.controller.PasswordController', 'updatePayPwd', '2019-04-09 17:12:21', 222, 0, NULL, '192.168.200.197', 1, '2019-04-09 17:12:21', NULL, 0);
INSERT INTO `t_sys_log` VALUES (300, 31, '18888888888', '取消提现申请', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/withdraw/user/cancel', 'POST', '{\"transactionNo\":\"20190409144829473362\"}', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2019-04-10 12:53:47', 69, 0, NULL, '192.168.200.197', 1, '2019-04-10 12:53:47', NULL, 0);
INSERT INTO `t_sys_log` VALUES (301, 31, '18888888888', '取消提现申请', 'Mozilla/5.0 (Linux; Android 6.0.1; MuMu Build/V417IR; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/24.296297)', 'http://192.168.203.132:8088/withdraw/user/cancel', 'POST', '{\"transactionNo\":\"20190409144829473362\"}', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2019-04-10 12:57:30', 106, 0, NULL, '192.168.200.197', 1, '2019-04-10 12:57:30', NULL, 0);
INSERT INTO `t_sys_log` VALUES (302, 31, '18888888888', '取消提现申请', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1902010 MicroMessenger/6.7.3 Language/zh_CN webview/ token/abc0fdde9fded2d8a371ed5fa57af507', 'http://192.168.203.132:8088/withdraw/user/cancel', 'POST', '{\"transactionNo\":\"20190409144829473362\"}', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2019-04-12 12:46:20', 122, 0, NULL, '192.168.200.197', 1, '2019-04-12 12:46:20', NULL, 0);
INSERT INTO `t_sys_log` VALUES (303, 31, '18888888888', '取消提现申请', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1902010 MicroMessenger/6.7.3 Language/zh_CN webview/ token/abc0fdde9fded2d8a371ed5fa57af507', 'http://192.168.203.132:8088/withdraw/user/cancel', 'POST', '{\"transactionNo\":\"20190409144829473362\"}', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2019-04-12 12:49:23', 27, 0, NULL, '192.168.200.197', 1, '2019-04-12 12:49:22', NULL, 0);
INSERT INTO `t_sys_log` VALUES (304, 31, '18888888888', '取消提现申请', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1902010 MicroMessenger/6.7.3 Language/zh_CN webview/ token/abc0fdde9fded2d8a371ed5fa57af507', 'http://192.168.203.132:8088/withdraw/user/cancel', 'POST', '{\"transactionNo\":\"20190409144829473362\"}', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2019-04-12 12:50:02', 96, 0, NULL, '192.168.200.197', 1, '2019-04-12 12:50:02', NULL, 0);
INSERT INTO `t_sys_log` VALUES (305, 31, '18888888888', '取消提现申请', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1902010 MicroMessenger/6.7.3 Language/zh_CN webview/ token/abc0fdde9fded2d8a371ed5fa57af507', 'http://192.168.203.132:8088/withdraw/user/cancel', 'POST', '{\"transactionNo\":\"20190409144829473362\"}', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2019-04-12 12:50:48', 29, 0, NULL, '192.168.200.197', 1, '2019-04-12 12:50:48', NULL, 0);
INSERT INTO `t_sys_log` VALUES (306, 31, '18888888888', '取消提现申请', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1902010 MicroMessenger/6.7.3 Language/zh_CN webview/ token/abc0fdde9fded2d8a371ed5fa57af507', 'http://192.168.203.132:8088/withdraw/user/cancel', 'POST', '{\"transactionNo\":\"20190409144829473362\"}', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2019-04-12 12:51:24', 83, 0, NULL, '192.168.200.197', 1, '2019-04-12 12:51:24', NULL, 0);
INSERT INTO `t_sys_log` VALUES (307, 31, '18888888888', '取消提现申请', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1902010 MicroMessenger/6.7.3 Language/zh_CN webview/ token/abc0fdde9fded2d8a371ed5fa57af507', 'http://192.168.203.132:8088/withdraw/user/cancel', 'POST', '{\"transactionNo\":\"20190409144829473362\"}', 1001, '已取消提现', 'top.zywork.controller.UserWithdrawController', 'cancelWithdraw', '2019-04-12 13:17:56', 77, 0, NULL, '192.168.200.197', 1, '2019-04-12 13:17:56', NULL, 0);
INSERT INTO `t_sys_log` VALUES (308, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:21:44', 3, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:21:43', NULL, 0);
INSERT INTO `t_sys_log` VALUES (309, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:21:47', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:21:47', NULL, 0);
INSERT INTO `t_sys_log` VALUES (310, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:22:37', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:22:36', NULL, 0);
INSERT INTO `t_sys_log` VALUES (311, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:30:53', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:30:53', NULL, 0);
INSERT INTO `t_sys_log` VALUES (312, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:31:20', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:31:20', NULL, 0);
INSERT INTO `t_sys_log` VALUES (313, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:31:27', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:31:26', NULL, 0);
INSERT INTO `t_sys_log` VALUES (314, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:31:30', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:31:30', NULL, 0);
INSERT INTO `t_sys_log` VALUES (315, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:31:33', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:31:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (316, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:31:34', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:31:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (317, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:31:34', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:31:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (318, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:31:34', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:31:34', NULL, 0);
INSERT INTO `t_sys_log` VALUES (319, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{}', 1003, '充值金额必须大于0', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:31:34', 0, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:31:34', NULL, 0);
INSERT INTO `t_sys_log` VALUES (320, 31, '18888888888', '系统人工充值', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/user-recharge/admin/human', 'POST', '{\"userId\":40,\"amount\":10000}', 1001, '充值成功', 'top.zywork.controller.UserRechargeController', 'rechargeByHuman', '2019-04-13 12:41:37', 223, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-13 12:41:37', NULL, 0);
INSERT INTO `t_sys_log` VALUES (321, 31, '18888888888', '提现申请审核', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/withdraw/admin/check', 'POST', '{\"transactionNo\":\"20190409144829473362\",\"withdrawStatus\":1}', 1003, '交易编号不正确或提现申请不是审核中状态', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2019-04-15 11:08:36', 86, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-15 11:08:35', NULL, 0);
INSERT INTO `t_sys_log` VALUES (322, 31, '18888888888', '提交提现申请', 'Mozilla/5.0 (Linux; Android 5.1.1; meizu PRO 7 Plus Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/25.0)', 'http://192.168.203.132:8088/withdraw/user/submit', 'POST', NULL, 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-04-15 11:42:15', 217, 0, NULL, '192.168.203.132', 1, '2019-04-15 11:42:14', NULL, 0);
INSERT INTO `t_sys_log` VALUES (323, 31, '18888888888', '提现申请审核', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/withdraw/admin/check', 'POST', '{\"transactionNo\":\"20190415114214226350\",\"withdrawStatus\":1}', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2019-04-15 11:43:15', 180, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-15 11:43:14', NULL, 0);
INSERT INTO `t_sys_log` VALUES (324, 31, '18888888888', '提交提现申请', 'Mozilla/5.0 (Linux; Android 5.1.1; meizu PRO 7 Plus Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36 uni-app appservice Html5Plus/1.0 (Immersed/25.0)', 'http://192.168.203.132:8088/withdraw/user/submit', 'POST', NULL, 1001, '提现申请提交成功', 'top.zywork.controller.UserWithdrawController', 'submitWithdraw', '2019-04-15 11:44:06', 195, 0, NULL, '192.168.203.132', 1, '2019-04-15 11:44:05', NULL, 0);
INSERT INTO `t_sys_log` VALUES (325, 31, '18888888888', '人工完成提现操作', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/withdraw/admin/confirm-human', 'POST', '{\"transactionNo\":\"20190415114405227620\",\"withdrawStatus\":4}', 1003, '交易编号不正确或提现申请不是已通过状态', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2019-04-15 11:44:22', 2, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-15 11:44:22', NULL, 0);
INSERT INTO `t_sys_log` VALUES (326, 31, '18888888888', '提现申请审核', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/withdraw/admin/check', 'POST', '{\"transactionNo\":\"20190415114405227620\",\"withdrawStatus\":1}', 1001, '审核成功', 'top.zywork.controller.UserWithdrawController', 'checkWithdraw', '2019-04-15 11:44:28', 36, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-15 11:44:27', NULL, 0);
INSERT INTO `t_sys_log` VALUES (327, 31, '18888888888', '人工完成提现操作', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/withdraw/admin/confirm-human', 'POST', '{\"transactionNo\":\"20190415114405227620\",\"withdrawStatus\":4}', 1001, '已人工完成提现操作，提现成功', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2019-04-15 11:44:33', 51, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-15 11:44:33', NULL, 0);
INSERT INTO `t_sys_log` VALUES (328, 31, '18888888888', '人工完成提现操作', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/withdraw/admin/confirm-human', 'POST', '{\"transactionNo\":\"20190415114214226350\",\"withdrawStatus\":4}', 1001, '已人工完成提现操作，提现成功', 'top.zywork.controller.UserWithdrawController', 'confirmWithdrawHuman', '2019-04-15 11:44:57', 51, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-15 11:44:57', NULL, 0);
INSERT INTO `t_sys_log` VALUES (329, 31, '18888888888', '导入权限配置', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://localhost:8088/permission-import-export/import-permission', 'POST', NULL, 1001, '成功导入权限配置信息', 'top.zywork.controller.PermissionImportExportController', 'importPermissions', '2019-04-15 16:58:07', 787, 0, NULL, '0:0:0:0:0:0:0:1', 1, '2019-04-15 16:58:07', NULL, 0);
INSERT INTO `t_sys_log` VALUES (330, NULL, NULL, '用户手机注册', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1904090 MicroMessenger/6.7.3 Language/zh_CN webview/', 'http://192.168.203.132:8088/auth/reg-mobile', 'POST', NULL, 1003, '密码不符合要求', 'top.zywork.controller.AuthController', 'regMobile', '2019-04-30 10:58:07', 2, 0, NULL, '192.168.200.197', 1, '2019-04-30 10:58:06', NULL, 0);
INSERT INTO `t_sys_log` VALUES (331, NULL, NULL, '用户手机注册', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1904090 MicroMessenger/6.7.3 Language/zh_CN webview/', 'http://192.168.203.132:8088/auth/reg-mobile', 'POST', NULL, 1001, '注册成功', 'top.zywork.controller.AuthController', 'regMobile', '2019-04-30 10:58:31', 178, 0, NULL, '192.168.200.197', 1, '2019-04-30 10:58:31', NULL, 0);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `salt` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '加密盐值',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (31, '18888888888', NULL, '$2a$10$PuYFFH7iINq0cmjgWyeeF.uvV/5zrmVrVjhWrDZeenhZiy/75GN9e', NULL, 1, '2018-12-22 15:46:43', NULL, 0);
INSERT INTO `t_user` VALUES (36, '13666666666', NULL, '$2a$10$7YNSwyW.FfL2iPBOqSEnD.8fNnM65QjumF2CD3glyQb9zdQBzXSr2', NULL, 1, '2018-12-28 12:00:36', NULL, 0);
INSERT INTO `t_user` VALUES (40, '', 'demo@zywork.top', '$2a$10$BxzUB3PvmEX9VqZIfIvsf.V4ltLJY9fF06GFX.J.d.3SFOApnFBm2', NULL, 1, '2019-01-17 10:30:21', NULL, 0);
INSERT INTO `t_user` VALUES (48, '13888888888', NULL, '$2a$10$yaa4dNkwqTQ7lfAKrx2X0eKeE.d6DNgUuD9XnKmQWJnVFkx9Bs0Cu', NULL, 1, '2019-04-30 10:58:30', NULL, 0);

-- ----------------------------
-- Table structure for t_user_bankcard
-- ----------------------------
DROP TABLE IF EXISTS `t_user_bankcard`;
CREATE TABLE `t_user_bankcard`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '银行卡编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `account_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '持卡人姓名',
  `bank_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行代码',
  `bank_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '银行名称',
  `bankcard_no` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '银行卡号',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT NULL COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户银行卡记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_bankcard
-- ----------------------------
INSERT INTO `t_user_bankcard` VALUES (2, 31, '王根参', 'BOC', '中国银行', '6217906500006402265', 1, '2019-04-09 16:24:33', NULL, NULL);

-- ----------------------------
-- Table structure for t_user_certification
-- ----------------------------
DROP TABLE IF EXISTS `t_user_certification`;
CREATE TABLE `t_user_certification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '认证编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `identity` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证号',
  `real_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '真实姓名',
  `valid_date` date NULL DEFAULT NULL COMMENT '身份证有效期',
  `idcard_front` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证正面',
  `idcard_reverse` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证反面',
  `idcard_hand` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手持身份证',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT NULL COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户实名认证表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_user_detail`;
CREATE TABLE `t_user_detail`  (
  `id` bigint(20) NOT NULL COMMENT '用户编号',
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `headicon` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `gender` tinyint(4) NULL DEFAULT 0 COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'QQ号',
  `qq_qrcode` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'QQ二维码',
  `wechat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信号',
  `wechat_qrcode` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信二维码',
  `alipay` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付宝账号',
  `alipay_qrcode` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付宝二维码',
  `share_code` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分享码',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户扩展信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_detail
-- ----------------------------
INSERT INTO `t_user_detail` VALUES (31, '我是第一个用户', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'upload/image/user/2019040919140232268.png', NULL, NULL, 'nxrLRk', 9, '2018-12-22 15:46:43', '2019-04-29 12:41:37', 0);
INSERT INTO `t_user_detail` VALUES (36, 'Sys User', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'upload/image/user/2019041211194837769.jpg', NULL, NULL, '62TNSs', 2, '2018-12-28 12:00:36', '2019-04-12 11:19:48', 0);
INSERT INTO `t_user_detail` VALUES (40, 'Sys User Demo', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'h345CG', 1, '2019-01-17 10:30:21', NULL, 0);
INSERT INTO `t_user_detail` VALUES (48, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7Aq9Pc', 1, '2019-04-30 10:58:31', NULL, 0);

-- ----------------------------
-- Table structure for t_user_hierarchy
-- ----------------------------
DROP TABLE IF EXISTS `t_user_hierarchy`;
CREATE TABLE `t_user_hierarchy`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关系编号',
  `ancestor_id` bigint(20) NOT NULL COMMENT '祖先编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `user_level` int(11) NOT NULL COMMENT '用户级别',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_hierarchy
-- ----------------------------
INSERT INTO `t_user_hierarchy` VALUES (1, 31, 31, 1, 1, '2018-12-28 11:26:11', NULL, 0);
INSERT INTO `t_user_hierarchy` VALUES (2, 31, 36, 2, 1, '2018-12-28 12:00:36', NULL, 0);
INSERT INTO `t_user_hierarchy` VALUES (3, 36, 36, 1, 1, '2018-12-28 12:00:36', NULL, 0);

-- ----------------------------
-- Table structure for t_user_message
-- ----------------------------
DROP TABLE IF EXISTS `t_user_message`;
CREATE TABLE `t_user_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '消息发送编号',
  `message_id` bigint(20) NOT NULL COMMENT '消息编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `is_read` tinyint(4) NULL DEFAULT 0 COMMENT '是否已读',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户消息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_message
-- ----------------------------
INSERT INTO `t_user_message` VALUES (1, 1, 31, 0, 1, '2019-01-24 16:20:13', NULL, 0);
INSERT INTO `t_user_message` VALUES (3, 7, 31, 0, 1, '2019-04-30 17:30:04', NULL, 0);

-- ----------------------------
-- Table structure for t_user_organization
-- ----------------------------
DROP TABLE IF EXISTS `t_user_organization`;
CREATE TABLE `t_user_organization`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户组织编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `organization_id` bigint(20) NOT NULL COMMENT '组织编号',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户组织部门信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_organization
-- ----------------------------
INSERT INTO `t_user_organization` VALUES (1, 31, 2, 1, '2019-01-24 16:16:14', NULL, 0);
INSERT INTO `t_user_organization` VALUES (2, 40, 2, 1, '2019-01-24 16:16:21', NULL, 0);

-- ----------------------------
-- Table structure for t_user_path
-- ----------------------------
DROP TABLE IF EXISTS `t_user_path`;
CREATE TABLE `t_user_path`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '路径编号',
  `user_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户路径',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE,
  FULLTEXT INDEX `idx_user_path`(`user_path`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户关系路径表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_path
-- ----------------------------
INSERT INTO `t_user_path` VALUES (1, '31', 1, '2018-12-28 11:26:11', NULL, 0);
INSERT INTO `t_user_path` VALUES (2, '31/36', 1, '2018-12-28 12:00:36', NULL, 0);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `role_id` bigint(20) NOT NULL COMMENT '角色编号',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (7, 31, 1, 1, '2018-12-22 15:46:43', NULL, 0);
INSERT INTO `t_user_role` VALUES (8, 36, 5, 1, '2018-12-28 12:00:36', NULL, 0);
INSERT INTO `t_user_role` VALUES (9, 31, 2, 1, '2019-01-06 13:32:46', NULL, 0);
INSERT INTO `t_user_role` VALUES (12, 31, 3, 1, '2019-01-10 15:38:21', NULL, 0);
INSERT INTO `t_user_role` VALUES (25, 40, 4, 1, '2019-02-22 10:24:03', NULL, 0);
INSERT INTO `t_user_role` VALUES (26, 48, 5, 1, '2019-04-30 10:58:31', NULL, 0);

-- ----------------------------
-- Table structure for t_user_social
-- ----------------------------
DROP TABLE IF EXISTS `t_user_social`;
CREATE TABLE `t_user_social`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '第三方登录编号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户编号',
  `openid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'openid',
  `union_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'unionid',
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'AccessToken',
  `session_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'SessionKey',
  `refresh_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '刷新Token',
  `social_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方登录类型',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '第三方登录绑定时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户第三方登录信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_social
-- ----------------------------
INSERT INTO `t_user_social` VALUES (7, 31, 'openid_wechat', '123456', 'access_token', 'session_key', NULL, '微信小程序', 1, '2019-01-07 19:28:25', NULL, 0);

-- ----------------------------
-- Table structure for t_user_wallet
-- ----------------------------
DROP TABLE IF EXISTS `t_user_wallet`;
CREATE TABLE `t_user_wallet`  (
  `id` bigint(20) NOT NULL COMMENT '钱包编号',
  `pay_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '支付密码',
  `rmb_balance` bigint(20) NULL DEFAULT 0 COMMENT '人民币余额',
  `usable_rmb_balance` bigint(20) NULL DEFAULT 0 COMMENT '可用余额',
  `frozen_rmb_balance` bigint(20) NULL DEFAULT 0 COMMENT '冻结余额',
  `integral` bigint(20) NULL DEFAULT 0 COMMENT '总积分',
  `usable_integral` bigint(20) NULL DEFAULT 0 COMMENT '可用积分',
  `frozen_integral` bigint(20) NULL DEFAULT 0 COMMENT '冻结积分',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户钱包表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_wallet
-- ----------------------------
INSERT INTO `t_user_wallet` VALUES (31, '$2a$10$jOIiVrnedic2q.d5D4tsv.LVgd88Qk18fPuNW.Euu3L0iUehocXia', 32950, 1950, 31000, 0, 0, 0, 26, NULL, '2019-04-15 11:44:57', 0);
INSERT INTO `t_user_wallet` VALUES (36, '', 64000, 64000, 0, NULL, NULL, NULL, 12, '2018-12-28 12:00:36', '2019-04-12 14:49:19', 1);
INSERT INTO `t_user_wallet` VALUES (40, '', 12000, 12000, 0, 0, 0, 0, 3, '2019-01-17 10:30:21', '2019-04-13 12:41:37', 0);
INSERT INTO `t_user_wallet` VALUES (48, '', 0, 0, 0, 0, 0, 0, 1, '2019-04-30 10:58:30', NULL, 0);

-- ----------------------------
-- Table structure for t_weixin_certification
-- ----------------------------
DROP TABLE IF EXISTS `t_weixin_certification`;
CREATE TABLE `t_weixin_certification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '微信认证编号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户编号',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信认证图片',
  `check_status` tinyint(4) NULL DEFAULT 0 COMMENT '认证状态',
  `check_time` datetime(0) NULL DEFAULT NULL COMMENT '认证时间',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '微信认证' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_weixin_certification
-- ----------------------------
INSERT INTO `t_weixin_certification` VALUES (1, 31, 'upload/image/notice/2019040919515018620.png', 0, '2019-04-09 19:19:55', '2019-04-04 09:41:49', '2019-04-09 19:51:50', 5, 0);
INSERT INTO `t_weixin_certification` VALUES (2, 36, 'upload/image/notice/2019041211204147456.jpg', 1, '2019-04-12 14:35:44', '2019-04-12 11:20:41', '2019-04-12 14:35:44', 2, 0);

-- ----------------------------
-- Table structure for t_weixin_task
-- ----------------------------
DROP TABLE IF EXISTS `t_weixin_task`;
CREATE TABLE `t_weixin_task`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务编号',
  `user_id` bigint(20) NOT NULL COMMENT '发布用户编号',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务标题',
  `total_number` int(11) NOT NULL COMMENT '加友总数',
  `confirm_number` int(11) NULL DEFAULT 0 COMMENT '已确认数',
  `integral` bigint(20) NOT NULL COMMENT '奖励积分',
  `group_chat_qrcode` varchar(500) NULL COMMENT '群聊二维码',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务描述',
  `task_status` int(4) NULL DEFAULT 0 COMMENT '任务状态',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '微信任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_weixin_task
-- ----------------------------
INSERT INTO `t_weixin_task` VALUES (3, 31, '微信好友解封', 10, 0, 1000, '快来！', 0, '2019-04-11 16:17:32', NULL, 1, 0);
INSERT INTO `t_weixin_task` VALUES (4, 31, '微信加友', 10, 0, 1000, '加友', 1, '2019-04-11 16:57:53', '2019-04-11 17:03:37', 1, 0);
INSERT INTO `t_weixin_task` VALUES (5, 31, '测试任务发布', 10, 0, 1000, '微信加友，微信绑定银行卡，使用时间超过半年', 0, '2019-04-12 09:48:34', '2019-04-12 13:33:23', 1, 0);
INSERT INTO `t_weixin_task` VALUES (6, 31, '测试任务', 5, 2, 1000, '任务描述', 0, '2019-04-12 14:28:51', '2019-04-12 14:49:19', 3, 0);

-- ----------------------------
-- Table structure for t_weixin_task_appeal
-- ----------------------------
DROP TABLE IF EXISTS `t_weixin_task_appeal`;
CREATE TABLE `t_weixin_task_appeal`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '申诉编号',
  `task_id` bigint(20) NOT NULL COMMENT '任务编号',
  `user_id` bigint(20) NOT NULL COMMENT '申诉用户编号',
  `appeal_des` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '申诉描述',
  `appeal_status` tinyint(4) NULL DEFAULT 0 COMMENT '申诉状态',
  `handle_time` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '微信任务申诉' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_weixin_task_appeal
-- ----------------------------
INSERT INTO `t_weixin_task_appeal` VALUES (2, 5, 36, '没有确认', 2, '2019-02-04 10:46:47', '2019-01-30 10:46:35', '2019-03-14 17:02:11', 18, 0);
INSERT INTO `t_weixin_task_appeal` VALUES (3, 5, 36, '发布方未确认申诉', 2, NULL, '2019-04-30 17:30:04', '2019-04-30 18:11:21', 3, 0);

-- ----------------------------
-- Table structure for t_weixin_task_apply
-- ----------------------------
DROP TABLE IF EXISTS `t_weixin_task_apply`;
CREATE TABLE `t_weixin_task_apply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报名编号',
  `task_id` bigint(20) NOT NULL COMMENT '任务编号',
  `user_id` bigint(20) NOT NULL COMMENT '报名用户编号',
  `pub_confirm_status` tinyint(4) NULL DEFAULT 0 COMMENT '发布方确认状态',
  `pub_confirm_time` datetime(0) NULL DEFAULT NULL COMMENT '发布方确认时间',
  `app_confirm_status` tinyint(4) NULL DEFAULT 0 COMMENT '报名方确认状态',
  `app_confirm_time` datetime(0) NULL DEFAULT NULL COMMENT '报名方确认时间',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `version` int(11) NULL DEFAULT 1 COMMENT '版本号',
  `is_active` tinyint(4) NULL DEFAULT 0 COMMENT '是否激活',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '微信任务报名' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_weixin_task_apply
-- ----------------------------
INSERT INTO `t_weixin_task_apply` VALUES (3, 3, 36, 0, '2019-04-12 13:27:27', 0, NULL, '2019-04-11 16:17:56', '2019-04-12 13:27:27', 5, 0);
INSERT INTO `t_weixin_task_apply` VALUES (4, 5, 36, 1, '2019-04-30 18:11:21', 0, '2019-04-12 14:49:20', '2019-04-12 14:35:54', '2019-04-30 18:11:21', 25, 0);

-- ----------------------------
-- Procedure structure for initStatisticsDay
-- ----------------------------
DROP PROCEDURE IF EXISTS `initStatisticsDay`;
delimiter ;;
CREATE PROCEDURE `initStatisticsDay`(in beginDate datetime, in totalDays int)
BEGIN
	declare days int default 0;
	declare theDate datetime;
	declare hasError integer default 0;
	declare continue handler for sqlexception set hasError = 1;
	start transaction;
		truncate table t_statistics_day;
		while days < totalDays
			do
				set theDate = date_add(beginDate, interval days day);
				insert into t_statistics_day(the_date, am_pm) values(theDate, 'am');
				insert into t_statistics_day(the_date, am_pm) values(theDate, 'pm');
				set days = days + 1;
		end while;
	if hasError = 1 then
		rollback;
	else
		commit;
  end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for invite_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `invite_user`;
delimiter ;;
CREATE PROCEDURE `invite_user`(in pid bigint, in uid bigint)
BEGIN
    -- 如果uid等于pid，表示某个用户自己成为顶级经销商
	declare ancestorId bigint;
	declare num int default 0;
	declare userLevel int default 2;
	declare currentTime datetime default CURRENT_TIMESTAMP;
	declare userPath text;
	declare hasError integer default 0;
	-- 根据直接父id获取其所有祖先id，祖先id按倒序排列，方便得出用户id与祖先id间是多少级关系
	declare ancestorList cursor for
	select t_user_hierarchy.ancestor_id from t_user_hierarchy where t_user_hierarchy.user_id = pid
	order by t_user_hierarchy.user_level asc;
	declare continue handler for sqlexception set hasError = 1;
	declare continue handler for not found set num = 1;
	start transaction;
		if uid != pid then
			open ancestorList;
				fetch ancestorList into ancestorId;
				while num != 1 do
					insert into t_user_hierarchy (ancestor_id, user_id, user_level, create_time) values(ancestorId, uid, userLevel, currentTime);
					-- 祖先id每循环一次，等级加1
					set userLevel = userLevel + 1;
					fetch ancestorList into ancestorId;
				end while;
			close ancestorList;
		end if;
		-- 自己与自己的关系，user_level为1
		insert into t_user_hierarchy (ancestor_id, user_id, user_level) values(uid, uid, 1);
		-- 保存用户层级路径
		if uid != pid then
			select t_user_path.user_path into userPath from t_user_path where t_user_path.user_path like concat('%', pid);
			insert into t_user_path (user_path, create_time) values(concat(userPath, '/', uid), currentTime);
		else
			insert into t_user_path (user_path, create_time) values(uid, currentTime);
		end if;
	if hasError = 1 then
		rollback;
	else
		commit;
  end if;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
