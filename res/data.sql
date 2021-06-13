/*
 Navicat Premium Data Transfer

 Source Server         : 台式机
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 192.168.10.103:12345
 Source Schema         : graduate_manage

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 13/06/2021 10:26:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for announce
-- ----------------------------
DROP TABLE IF EXISTS `announce`;
CREATE TABLE `announce`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `to_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announce
-- ----------------------------

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `summary` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '深入理解计算机系统', 'Randal E.Bryant', '从程序员的视角，看计算机系统！\n本书适用于那些想要写出更快、更可靠程序的程序员。通过掌握程序是如何映射到系统上，以及程序是如何执行的，读者能够更好的理解程序的行为为什么是这样的，以及效率低下是如何造成的。', 'https://img3.doubanio.com/lpic/s1470003.jpg', '2020-11-28 08:35:58.869', '2020-11-28 08:35:58.869', NULL);
INSERT INTO `book` VALUES (2, 'C程序设计语言', '（美）Brian W. Kernighan', '在计算机发展的历史上，没有哪一种程序设计语言像C语言这样应用广泛。本书原著即为C语言的设计者之一Dennis M.Ritchie和著名计算机科学家Brian W.Kernighan合著的一本介绍C语言的权威经典著作。', 'https://img3.doubanio.com/lpic/s1106934.jpg', '2020-11-28 08:35:58.877', '2020-11-28 08:35:58.877', NULL);
INSERT INTO `book` VALUES (3, 'test1', 'test1', 'test3', 'test2', '2021-01-04 11:03:16.706', '2021-02-04 06:30:06.934', NULL);

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `question_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES (1, '1,2,3,4,5,6', '软件技术专业毕业设计指导教师评分模板', '2021-04-25 10:51:28.947', '2021-04-14 01:57:42.583', NULL);
INSERT INTO `card` VALUES (3, '2,3,5,9', 'test', '2021-06-13 02:01:02.368', '2021-04-16 03:37:59.341', '2021-06-13 02:01:02.000');
INSERT INTO `card` VALUES (4, '1,3,4,5,9', 'test33', '2021-06-13 02:01:04.222', '2021-04-16 03:42:49.434', '2021-06-13 02:01:04.000');
INSERT INTO `card` VALUES (5, '10,11,12,13,14,15', '软件技术专业毕业设计质量及答辩评分模板', '2021-04-25 10:51:30.955', '2021-04-17 00:03:59.711', NULL);
INSERT INTO `card` VALUES (6, '1,5,3,4,13,11,10,9,17', '757567', '2021-05-10 05:39:23.035', '2021-05-10 05:39:14.448', '2021-05-10 05:39:23.000');
INSERT INTO `card` VALUES (7, '1,3,5,10,14,9,17,18', 'dfdafdsaf', '2021-05-10 05:55:58.968', '2021-05-10 05:55:55.880', '2021-05-10 05:55:58.000');
INSERT INTO `card` VALUES (8, '9,4,18,17', '2345234532453425', '2021-06-13 02:01:08.224', '2021-05-10 05:56:28.875', '2021-06-13 02:01:08.000');
INSERT INTO `card` VALUES (9, '11,4', '6666', '2021-06-04 03:26:20.662', '2021-06-04 03:26:20.662', NULL);
INSERT INTO `card` VALUES (10, '19,12,6', 'Test123', '2021-06-13 02:01:14.765', '2021-06-13 01:48:58.767', '2021-06-13 02:01:14.000');
INSERT INTO `card` VALUES (11, '20,6,13,11,10', 't123', '2021-06-13 02:01:12.565', '2021-06-13 01:54:33.675', '2021-06-13 02:01:12.000');
INSERT INTO `card` VALUES (12, '21,17', '模板测试', '2021-06-13 01:59:12.898', '2021-06-13 01:58:56.452', '2021-06-13 01:59:12.000');
INSERT INTO `card` VALUES (13, '22,13,11,6', 'Test123', '2021-06-13 02:02:15.070', '2021-06-13 02:02:15.070', NULL);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '专业名称',
  `college_id` int(0) NOT NULL COMMENT '所属学院ID',
  `major_id` int(0) NOT NULL COMMENT '所属专业ID',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '软件1941', 3, 2, '2021-01-15 12:47:35.925', '2021-01-15 12:47:35.925', NULL);
INSERT INTO `class` VALUES (2, '软件1942', 3, 2, '2021-01-15 12:47:41.992', '2021-01-15 12:47:41.992', NULL);
INSERT INTO `class` VALUES (3, '软件1940', 3, 2, '2021-01-15 12:47:45.057', '2021-01-15 12:47:45.057', NULL);
INSERT INTO `class` VALUES (4, '计技1940', 3, 5, '2021-01-15 12:48:23.557', '2021-01-15 12:48:23.557', NULL);
INSERT INTO `class` VALUES (5, '计技1941', 3, 5, '2021-01-15 12:48:26.362', '2021-01-15 12:48:26.362', NULL);
INSERT INTO `class` VALUES (6, '信安1941', 3, 4, '2021-01-15 12:48:51.929', '2021-01-15 12:48:51.929', NULL);
INSERT INTO `class` VALUES (7, '电商1941', 7, 6, '2021-01-15 12:50:19.140', '2021-01-15 12:49:58.294', NULL);
INSERT INTO `class` VALUES (15, 'Test1111', 3, 3, '2021-02-04 06:30:16.069', '2021-01-24 10:50:35.705', NULL);

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学院名称',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (3, '电子信息学院', '2021-01-15 01:53:35.616', '2021-01-15 01:39:43.713', NULL);
INSERT INTO `college` VALUES (4, 'test', '2021-01-15 02:27:00.396', '2021-01-15 01:42:49.741', NULL);
INSERT INTO `college` VALUES (7, '电子商务学院', '2021-01-15 01:59:27.415', '2021-01-15 01:59:27.415', NULL);
INSERT INTO `college` VALUES (8, '艺术学院', '2021-01-15 02:01:10.860', '2021-01-15 02:01:10.860', NULL);
INSERT INTO `college` VALUES (9, '土木学院', '2021-02-04 06:30:23.430', '2021-01-15 02:02:16.401', NULL);
INSERT INTO `college` VALUES (12, 'test2', '2021-01-23 01:57:47.585', '2021-01-23 01:57:47.585', NULL);
INSERT INTO `college` VALUES (13, '土木学院', '2021-01-23 01:58:01.273', '2021-01-23 01:58:01.273', NULL);
INSERT INTO `college` VALUES (14, 'test111', '2021-02-04 06:30:23.810', '2021-01-28 01:53:39.548', NULL);

-- ----------------------------
-- Table structure for graduate_info
-- ----------------------------
DROP TABLE IF EXISTS `graduate_info`;
CREATE TABLE `graduate_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `teacher_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `year` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of graduate_info
-- ----------------------------
INSERT INTO `graduate_info` VALUES (6, '2021毕设', '1,2,3,5,6', '2021', NULL, '2021-05-08 01:10:11.560', '2021-05-08 01:10:11.560');
INSERT INTO `graduate_info` VALUES (7, '开始', '5,2,1', '2022', NULL, '2021-06-04 03:24:43.682', '2021-06-04 03:24:43.682');

-- ----------------------------
-- Table structure for lin_file
-- ----------------------------
DROP TABLE IF EXISTS `lin_file`;
CREATE TABLE `lin_file`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'LOCAL' COMMENT 'LOCAL 本地，REMOTE 远程',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `size` int(0) NULL DEFAULT NULL,
  `md5` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'md5值，防止上传重复文件',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `md5_del`(`md5`, `delete_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lin_file
-- ----------------------------
INSERT INTO `lin_file` VALUES (1, '2021\\01\\04\\b61f08e7165a49028567f34ead11e19f.jpg', 'LOCAL', 'b61f08e7165a49028567f34ead11e19f.jpg', '.jpg', 4915, '22715657f8d2411a23788247f5ee704b', '2021-01-04 11:13:55.102', '2021-01-04 11:13:55.102', NULL);
INSERT INTO `lin_file` VALUES (2, '2021\\01\\04\\bcff9c3b10734a14ab490a9c5f746e6a.jpg', 'LOCAL', 'bcff9c3b10734a14ab490a9c5f746e6a.jpg', '.jpg', 6819, 'ce12fb66ed7c44f78f046f9fff0e78c8', '2021-01-04 11:14:22.234', '2021-01-04 11:14:22.234', NULL);
INSERT INTO `lin_file` VALUES (3, '2021\\05\\10\\f1b57b22c33544c9a72cc66f6afb6e0d.jpg', 'LOCAL', 'f1b57b22c33544c9a72cc66f6afb6e0d.jpg', '.jpg', 7299, '228537f959310d4872977f566d467c94', '2021-05-10 05:55:23.813', '2021-05-10 05:55:23.813', NULL);

-- ----------------------------
-- Table structure for lin_group
-- ----------------------------
DROP TABLE IF EXISTS `lin_group`;
CREATE TABLE `lin_group`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分组名称，例如：搬砖者',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分组信息：例如：搬砖的人',
  `level` tinyint(0) NOT NULL DEFAULT 3 COMMENT '分组级别 1：root 2：guest 3：user  root（root、guest分组只能存在一个)',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_del`(`name`, `delete_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lin_group
-- ----------------------------
INSERT INTO `lin_group` VALUES (1, 'root', '超级用户组', 1, '2020-11-28 08:35:58.885', '2020-11-28 08:35:58.885', NULL);
INSERT INTO `lin_group` VALUES (2, 'guest', '游客组', 2, '2020-11-28 08:35:58.886', '2020-11-28 08:35:58.886', NULL);
INSERT INTO `lin_group` VALUES (3, 'student', '学生', 3, '2021-01-03 00:36:12.808', '2021-01-28 01:48:29.610', NULL);
INSERT INTO `lin_group` VALUES (4, 'teacher', '教师', 3, '2021-01-03 00:42:36.676', '2021-02-09 08:42:13.207', NULL);
INSERT INTO `lin_group` VALUES (5, '教务处', '教务处', 3, '2021-01-28 01:48:15.995', '2021-04-17 00:52:02.381', NULL);
INSERT INTO `lin_group` VALUES (6, '答辩指导组', '答辩指导组', 3, '2021-04-17 08:54:55.535', '2021-04-17 08:54:55.535', NULL);
INSERT INTO `lin_group` VALUES (7, '答辩教师组', '答辩教师组', 3, '2021-04-26 22:46:43.750', '2021-04-26 22:46:54.895', '2021-04-26 22:46:54.000');
INSERT INTO `lin_group` VALUES (8, '答辩教师组', '答辩教师组', 3, '2021-04-26 22:47:49.311', '2021-04-26 22:47:49.311', NULL);

-- ----------------------------
-- Table structure for lin_group_permission
-- ----------------------------
DROP TABLE IF EXISTS `lin_group_permission`;
CREATE TABLE `lin_group_permission`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int(0) UNSIGNED NOT NULL COMMENT '分组id',
  `permission_id` int(0) UNSIGNED NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_id_permission_id`(`group_id`, `permission_id`) USING BTREE COMMENT '联合索引'
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lin_group_permission
-- ----------------------------
INSERT INTO `lin_group_permission` VALUES (26, 3, 4);
INSERT INTO `lin_group_permission` VALUES (27, 3, 27);
INSERT INTO `lin_group_permission` VALUES (48, 4, 4);
INSERT INTO `lin_group_permission` VALUES (49, 4, 8);
INSERT INTO `lin_group_permission` VALUES (50, 4, 9);
INSERT INTO `lin_group_permission` VALUES (47, 4, 10);
INSERT INTO `lin_group_permission` VALUES (6, 4, 23);
INSERT INTO `lin_group_permission` VALUES (7, 4, 24);
INSERT INTO `lin_group_permission` VALUES (8, 4, 25);
INSERT INTO `lin_group_permission` VALUES (31, 4, 34);
INSERT INTO `lin_group_permission` VALUES (32, 6, 33);
INSERT INTO `lin_group_permission` VALUES (34, 6, 35);
INSERT INTO `lin_group_permission` VALUES (36, 7, 26);
INSERT INTO `lin_group_permission` VALUES (37, 7, 27);
INSERT INTO `lin_group_permission` VALUES (38, 7, 28);
INSERT INTO `lin_group_permission` VALUES (39, 7, 29);
INSERT INTO `lin_group_permission` VALUES (35, 7, 36);
INSERT INTO `lin_group_permission` VALUES (41, 8, 26);
INSERT INTO `lin_group_permission` VALUES (42, 8, 27);
INSERT INTO `lin_group_permission` VALUES (43, 8, 28);
INSERT INTO `lin_group_permission` VALUES (44, 8, 29);
INSERT INTO `lin_group_permission` VALUES (40, 8, 36);
INSERT INTO `lin_group_permission` VALUES (45, 8, 37);
INSERT INTO `lin_group_permission` VALUES (46, 8, 38);

-- ----------------------------
-- Table structure for lin_log
-- ----------------------------
DROP TABLE IF EXISTS `lin_log`;
CREATE TABLE `lin_log`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(0) UNSIGNED NOT NULL,
  `username` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_code` int(0) NULL DEFAULT NULL,
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lin_log
-- ----------------------------

-- ----------------------------
-- Table structure for lin_permission
-- ----------------------------
DROP TABLE IF EXISTS `lin_permission`;
CREATE TABLE `lin_permission`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限名称，例如：访问首页',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限所属模块，例如：人员管理',
  `mount` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0：关闭 1：开启',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lin_permission
-- ----------------------------
INSERT INTO `lin_permission` VALUES (1, '查询所有日志', '日志', 1, '2020-11-28 08:40:33.900', '2020-11-28 08:40:33.900', NULL);
INSERT INTO `lin_permission` VALUES (2, '搜索日志', '日志', 1, '2020-11-28 08:40:33.946', '2020-11-28 08:40:33.946', NULL);
INSERT INTO `lin_permission` VALUES (3, '查询日志记录的用户', '日志', 1, '2020-11-28 08:40:33.964', '2020-11-28 08:40:33.964', NULL);
INSERT INTO `lin_permission` VALUES (4, '删除图书', '图书', 1, '2020-11-28 08:40:33.990', '2020-11-28 08:40:33.990', NULL);
INSERT INTO `lin_permission` VALUES (5, '创建学生', '日志', 0, '2021-01-04 10:25:38.311', '2021-01-04 10:25:38.311', NULL);
INSERT INTO `lin_permission` VALUES (6, '更新学生', '日志', 0, '2021-01-04 10:25:38.348', '2021-01-04 10:25:38.348', NULL);
INSERT INTO `lin_permission` VALUES (7, '删除学生', '日志', 0, '2021-01-04 10:25:38.361', '2021-01-04 10:25:38.361', NULL);
INSERT INTO `lin_permission` VALUES (8, '更新学生', '学生', 1, '2021-01-04 10:27:27.186', '2021-01-04 10:27:27.186', NULL);
INSERT INTO `lin_permission` VALUES (9, '删除学生', '学生', 1, '2021-01-04 10:27:27.222', '2021-01-04 10:27:27.222', NULL);
INSERT INTO `lin_permission` VALUES (10, '创建学生', '学生', 1, '2021-01-04 10:27:27.257', '2021-01-04 10:27:27.257', NULL);
INSERT INTO `lin_permission` VALUES (11, '创建学院', 'college', 0, '2021-01-15 00:51:40.873', '2021-01-15 00:51:40.873', NULL);
INSERT INTO `lin_permission` VALUES (12, '删除学院', 'college', 0, '2021-01-15 00:51:41.058', '2021-01-15 00:51:41.058', NULL);
INSERT INTO `lin_permission` VALUES (13, '更新学院', 'college', 0, '2021-01-15 00:51:41.645', '2021-01-15 00:51:41.645', NULL);
INSERT INTO `lin_permission` VALUES (14, '更新学院', '学院', 1, '2021-01-15 01:59:01.436', '2021-01-15 01:59:01.436', NULL);
INSERT INTO `lin_permission` VALUES (15, '创建学院', '学院', 1, '2021-01-15 01:59:01.819', '2021-01-15 01:59:01.819', NULL);
INSERT INTO `lin_permission` VALUES (16, '删除学院', '学院', 1, '2021-01-15 01:59:02.534', '2021-01-15 01:59:02.534', NULL);
INSERT INTO `lin_permission` VALUES (17, '删除班级', '班级', 1, '2021-01-15 12:29:20.178', '2021-01-15 12:29:20.178', NULL);
INSERT INTO `lin_permission` VALUES (18, '创建班级', '班级', 1, '2021-01-15 12:29:20.352', '2021-01-15 12:29:20.352', NULL);
INSERT INTO `lin_permission` VALUES (19, '更新班级', '班级', 1, '2021-01-15 12:29:20.905', '2021-01-15 12:29:20.905', NULL);
INSERT INTO `lin_permission` VALUES (20, '删除专业', '专业', 1, '2021-01-15 12:29:21.109', '2021-01-15 12:29:21.109', NULL);
INSERT INTO `lin_permission` VALUES (21, '更新专业', '专业', 1, '2021-01-15 12:29:21.319', '2021-01-15 12:29:21.319', NULL);
INSERT INTO `lin_permission` VALUES (22, '创建专业', '专业', 1, '2021-01-15 12:29:21.784', '2021-01-15 12:29:21.784', NULL);
INSERT INTO `lin_permission` VALUES (23, '删除团队', '团队', 1, '2021-01-28 01:45:27.527', '2021-01-28 01:45:27.527', NULL);
INSERT INTO `lin_permission` VALUES (24, '创建团队', '团队', 1, '2021-01-28 01:45:27.772', '2021-01-28 01:45:27.772', NULL);
INSERT INTO `lin_permission` VALUES (25, '更新团队', '团队', 1, '2021-01-28 01:45:28.287', '2021-01-28 01:45:28.287', NULL);
INSERT INTO `lin_permission` VALUES (26, '更新课题', '课题', 1, '2021-02-04 07:43:31.367', '2021-02-04 07:43:31.367', NULL);
INSERT INTO `lin_permission` VALUES (27, '创建课题', '课题', 1, '2021-02-04 07:43:32.059', '2021-02-04 07:43:32.059', NULL);
INSERT INTO `lin_permission` VALUES (28, '删除课题', '课题', 1, '2021-02-04 07:43:32.856', '2021-02-04 07:43:32.856', NULL);
INSERT INTO `lin_permission` VALUES (29, '审核课题', '课题', 1, '2021-02-17 03:20:09.850', '2021-02-17 03:20:09.850', NULL);
INSERT INTO `lin_permission` VALUES (30, '更新评分表', '评分表', 0, '2021-02-27 02:17:04.796', '2021-02-27 02:17:04.796', NULL);
INSERT INTO `lin_permission` VALUES (31, '创建评分表', '评分表', 0, '2021-02-27 02:17:04.885', '2021-02-27 02:17:04.885', NULL);
INSERT INTO `lin_permission` VALUES (32, '删除评分表', '评分表', 0, '2021-02-27 02:17:04.917', '2021-02-27 02:17:04.917', NULL);
INSERT INTO `lin_permission` VALUES (33, '答辩小组更新评分表', '评分表', 0, '2021-04-17 08:49:24.042', '2021-04-17 08:49:24.042', NULL);
INSERT INTO `lin_permission` VALUES (34, '指导教师创建评分表', '评分表', 0, '2021-04-17 08:49:24.085', '2021-04-17 08:49:24.085', NULL);
INSERT INTO `lin_permission` VALUES (35, '答辩小组', '评分表', 1, '2021-04-20 01:47:22.145', '2021-04-20 01:47:22.145', NULL);
INSERT INTO `lin_permission` VALUES (36, '指导教师', '评分表', 1, '2021-04-20 01:47:22.199', '2021-04-20 01:47:22.199', NULL);
INSERT INTO `lin_permission` VALUES (37, '指导教师', '评分表模板', 1, '2021-04-26 22:51:58.938', '2021-04-26 22:51:58.938', NULL);
INSERT INTO `lin_permission` VALUES (38, '指导教师', '评分准则', 1, '2021-04-26 22:51:59.010', '2021-04-26 22:51:59.010', NULL);
INSERT INTO `lin_permission` VALUES (39, '答辩委员会留言', '评分表', 1, '2021-05-10 00:40:17.554', '2021-05-10 00:40:17.554', NULL);

-- ----------------------------
-- Table structure for lin_user
-- ----------------------------
DROP TABLE IF EXISTS `lin_user`;
CREATE TABLE `lin_user`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名，唯一',
  `nickname` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像url',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_del`(`username`, `delete_time`) USING BTREE,
  UNIQUE INDEX `email_del`(`email`, `delete_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lin_user
-- ----------------------------
INSERT INTO `lin_user` VALUES (1, 'root', 'root', '2021\\01\\04\\b61f08e7165a49028567f34ead11e19f.jpg', NULL, '2020-11-28 08:35:58.882', '2020-11-28 08:35:58.882', NULL);
INSERT INTO `lin_user` VALUES (9, '1902411124', '西某', '2021\\01\\04\\bcff9c3b10734a14ab490a9c5f746e6a.jpg', '1394466835@qq.com', '2021-01-04 11:11:18.361', '2021-01-04 11:11:18.361', NULL);
INSERT INTO `lin_user` VALUES (10, '1902411123', NULL, NULL, '13944@qq.com', '2021-01-04 11:16:19.024', '2021-01-04 11:16:55.791', NULL);
INSERT INTO `lin_user` VALUES (11, '1902411199', NULL, NULL, 'qq@qq.com', '2021-01-24 09:29:16.901', '2021-01-24 09:29:16.901', NULL);
INSERT INTO `lin_user` VALUES (12, '1902411198', NULL, NULL, 'xx@qq.com', '2021-01-24 09:38:03.949', '2021-01-24 09:38:03.949', NULL);
INSERT INTO `lin_user` VALUES (13, '1902411197', NULL, NULL, 'sunhuayangak47@gmail.com', '2021-01-24 10:51:32.619', '2021-01-27 07:34:51.047', NULL);
INSERT INTO `lin_user` VALUES (14, '0001', NULL, NULL, '123@qq.com', '2021-01-27 07:01:48.416', '2021-01-27 07:34:51.212', NULL);
INSERT INTO `lin_user` VALUES (15, '0002', NULL, '2021\\05\\10\\f1b57b22c33544c9a72cc66f6afb6e0d.jpg', '14@qq.com', '2021-01-27 07:07:17.966', '2021-01-27 07:18:35.014', NULL);
INSERT INTO `lin_user` VALUES (16, '1902411155', NULL, NULL, '11@qq.com', '2021-01-27 07:17:33.373', '2021-01-27 07:17:33.373', NULL);
INSERT INTO `lin_user` VALUES (17, '0003', NULL, NULL, '22@QQ.COM', '2021-01-27 07:29:09.392', '2021-02-10 02:44:48.202', NULL);
INSERT INTO `lin_user` VALUES (18, '0005', NULL, NULL, '7489@qq.com', '2021-01-27 07:37:20.460', '2021-02-10 02:44:48.373', NULL);
INSERT INTO `lin_user` VALUES (19, '1902411196', NULL, NULL, 'sunhuayang@gmail.com', '2021-02-09 08:42:51.546', '2021-02-09 08:42:51.546', NULL);
INSERT INTO `lin_user` VALUES (20, '1902411166', NULL, NULL, '1234@qq.com', '2021-02-26 11:11:52.262', '2021-02-26 11:11:52.262', NULL);
INSERT INTO `lin_user` VALUES (21, '教务处负责人', NULL, NULL, 'test@test.com', '2021-04-17 00:52:43.614', '2021-04-17 00:52:43.614', NULL);
INSERT INTO `lin_user` VALUES (22, '1111', NULL, NULL, 'dj@dj.com', '2021-04-17 08:55:48.760', '2021-04-17 08:56:16.805', '2021-04-17 08:56:16.000');
INSERT INTO `lin_user` VALUES (23, '答辩组账号', NULL, NULL, 'dy@dy.com', '2021-04-17 08:56:43.768', '2021-04-19 06:08:19.715', '2021-04-19 06:08:19.000');
INSERT INTO `lin_user` VALUES (24, '答辩组账号1', NULL, NULL, '123@test.com', '2021-04-19 06:09:06.859', '2021-04-19 06:09:06.859', NULL);
INSERT INTO `lin_user` VALUES (25, '答辩组账号2', NULL, NULL, '123@qqadf.com', '2021-04-19 06:09:24.273', '2021-04-19 06:09:24.273', NULL);
INSERT INTO `lin_user` VALUES (26, '1902411119', NULL, NULL, '22333@qq.com', '2021-05-02 11:22:44.552', '2021-05-02 11:22:44.552', NULL);
INSERT INTO `lin_user` VALUES (27, '0004', NULL, NULL, 'ddd@qq.com', '2021-05-02 11:53:15.433', '2021-05-02 11:53:15.433', NULL);
INSERT INTO `lin_user` VALUES (28, '1902488824', NULL, NULL, 'ddd56@qq.com', '2021-05-03 11:47:55.645', '2021-05-03 11:47:55.645', NULL);
INSERT INTO `lin_user` VALUES (29, '0006', NULL, NULL, '34dd@qq.com', '2021-05-07 23:38:29.578', '2021-05-07 23:38:29.578', NULL);
INSERT INTO `lin_user` VALUES (30, '1902499924', NULL, NULL, 'daf@qq.com', '2021-05-07 23:39:12.740', '2021-05-07 23:39:12.740', NULL);

-- ----------------------------
-- Table structure for lin_user_group
-- ----------------------------
DROP TABLE IF EXISTS `lin_user_group`;
CREATE TABLE `lin_user_group`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(0) UNSIGNED NOT NULL COMMENT '用户id',
  `group_id` int(0) UNSIGNED NOT NULL COMMENT '分组id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id_group_id`(`user_id`, `group_id`) USING BTREE COMMENT '联合索引'
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lin_user_group
-- ----------------------------
INSERT INTO `lin_user_group` VALUES (1, 1, 1);
INSERT INTO `lin_user_group` VALUES (10, 9, 3);
INSERT INTO `lin_user_group` VALUES (11, 10, 3);
INSERT INTO `lin_user_group` VALUES (12, 11, 3);
INSERT INTO `lin_user_group` VALUES (13, 12, 3);
INSERT INTO `lin_user_group` VALUES (14, 13, 3);
INSERT INTO `lin_user_group` VALUES (15, 14, 4);
INSERT INTO `lin_user_group` VALUES (28, 15, 4);
INSERT INTO `lin_user_group` VALUES (27, 15, 8);
INSERT INTO `lin_user_group` VALUES (17, 16, 3);
INSERT INTO `lin_user_group` VALUES (18, 17, 4);
INSERT INTO `lin_user_group` VALUES (19, 18, 4);
INSERT INTO `lin_user_group` VALUES (29, 18, 8);
INSERT INTO `lin_user_group` VALUES (20, 19, 3);
INSERT INTO `lin_user_group` VALUES (21, 20, 3);
INSERT INTO `lin_user_group` VALUES (22, 21, 5);
INSERT INTO `lin_user_group` VALUES (23, 22, 6);
INSERT INTO `lin_user_group` VALUES (24, 23, 6);
INSERT INTO `lin_user_group` VALUES (25, 24, 6);
INSERT INTO `lin_user_group` VALUES (26, 25, 6);
INSERT INTO `lin_user_group` VALUES (30, 26, 3);
INSERT INTO `lin_user_group` VALUES (31, 27, 4);
INSERT INTO `lin_user_group` VALUES (32, 28, 3);
INSERT INTO `lin_user_group` VALUES (33, 29, 4);
INSERT INTO `lin_user_group` VALUES (35, 29, 8);
INSERT INTO `lin_user_group` VALUES (34, 30, 3);

-- ----------------------------
-- Table structure for lin_user_identity
-- ----------------------------
DROP TABLE IF EXISTS `lin_user_identity`;
CREATE TABLE `lin_user_identity`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(0) UNSIGNED NOT NULL COMMENT '用户id',
  `identity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `identifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `credential` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lin_user_identity
-- ----------------------------
INSERT INTO `lin_user_identity` VALUES (1, 1, 'USERNAME_PASSWORD', 'root', 'pbkdf2sha256:64000:18:24:n:yUnDokcNRbwILZllmUOItIyo9MnI00QW:6ZcPf+sfzyoygOU8h/GSoirF', '2020-11-28 08:35:58.883', '2020-11-28 08:35:58.883', NULL);
INSERT INTO `lin_user_identity` VALUES (9, 9, 'USERNAME_PASSWORD', '1902411124', 'pbkdf2sha256:64000:18:24:n:hAaH4CVCw91mB6PdYCi4E1fT3te5GVnN:x0O/NJNYd89tDXo47VVI7PEg', '2021-01-04 11:11:18.592', '2021-01-04 11:11:18.592', NULL);
INSERT INTO `lin_user_identity` VALUES (10, 10, 'USERNAME_PASSWORD', '1902411123', 'pbkdf2sha256:64000:18:24:n:rRv9AfuNXENMoF26sKBYCrU+cqKlLpkN:Ja8mODrw9XonEvBvfD86b38l', '2021-01-04 11:16:19.240', '2021-01-04 11:17:01.752', NULL);
INSERT INTO `lin_user_identity` VALUES (11, 11, 'USERNAME_PASSWORD', '1902411199', 'pbkdf2sha256:64000:18:24:n:M2yyb5COBN9nye144LFQjvwo6L2nY2lA:1gu7nH2Lj4KZXlksaqbTZBPL', '2021-01-24 09:29:17.386', '2021-01-24 09:29:17.386', NULL);
INSERT INTO `lin_user_identity` VALUES (12, 12, 'USERNAME_PASSWORD', '1902411198', 'pbkdf2sha256:64000:18:24:n:4n6RGpD/X6hYrFw3rrK5Ghndrgg0pJXh:UP0gZuCL+30+UUVFAorRPrkI', '2021-01-24 09:38:04.457', '2021-01-24 09:38:04.457', NULL);
INSERT INTO `lin_user_identity` VALUES (13, 13, 'USERNAME_PASSWORD', '1902411197', 'pbkdf2sha256:64000:18:24:n:mCCBFDJA/376CdDZBk/yBi0DKUlZNN1g:21j24mg64ZiOr3sEiFCT+iTy', '2021-01-24 10:51:33.134', '2021-01-28 01:51:49.234', NULL);
INSERT INTO `lin_user_identity` VALUES (14, 14, 'USERNAME_PASSWORD', '0001', 'pbkdf2sha256:64000:18:24:n:Hc0K4oE3+0ctGAhBpJ8Q/kkC7LC09zMk:iMe5dMqrz/C1rlDbYGEUOz6R', '2021-01-27 07:01:49.129', '2021-01-28 01:51:49.394', NULL);
INSERT INTO `lin_user_identity` VALUES (15, 15, 'USERNAME_PASSWORD', '0002', 'pbkdf2sha256:64000:18:24:n:2BDXtrckE5c/Dk5L1M2Q02pjsc8/yoE9:NeaKyOm35zjYydMBx26hDYGq', '2021-01-27 07:07:18.581', '2021-01-28 01:51:49.561', NULL);
INSERT INTO `lin_user_identity` VALUES (16, 16, 'USERNAME_PASSWORD', '1902411155', 'pbkdf2sha256:64000:18:24:n:qQZXzgT1uiYDSZW4ztvBKgAccaNxYjXH:8ZyfC3hAnoU0bl9DAwKfhRR/', '2021-01-27 07:17:33.991', '2021-01-27 07:17:33.991', NULL);
INSERT INTO `lin_user_identity` VALUES (17, 17, 'USERNAME_PASSWORD', '0003', 'pbkdf2sha256:64000:18:24:n:HtG9kTec5hMxjjuyIqlxFm6U/DBU6RlG:w1p8Pl5cNP2MUHZtxdJ88pYr', '2021-01-27 07:29:09.986', '2021-01-28 01:51:49.855', NULL);
INSERT INTO `lin_user_identity` VALUES (18, 18, 'USERNAME_PASSWORD', '0005', 'pbkdf2sha256:64000:18:24:n:HffhsJsjVzFsmbga6FxbRRYVh1qbZMBC:vRUvvUxdAJ8JYQV6V05y3mfR', '2021-01-27 07:37:21.051', '2021-01-28 01:51:50.023', NULL);
INSERT INTO `lin_user_identity` VALUES (19, 19, 'USERNAME_PASSWORD', '1902411196', 'pbkdf2sha256:64000:18:24:n:gkG063UddpgAY6xKGy/9AJ1Ima6pCeOB:ApZcXotGgxpeSvIGKNBAZvRg', '2021-02-09 08:42:52.220', '2021-02-09 08:42:52.220', NULL);
INSERT INTO `lin_user_identity` VALUES (20, 20, 'USERNAME_PASSWORD', '1902411166', 'pbkdf2sha256:64000:18:24:n:AJB8idEhQfNubbWKHL22U3rCxbil9jm/:3VelCRGiM0KViagzSTQPs0XO', '2021-02-26 11:11:52.742', '2021-02-26 11:11:52.742', NULL);
INSERT INTO `lin_user_identity` VALUES (21, 21, 'USERNAME_PASSWORD', '教务处负责人', 'pbkdf2sha256:64000:18:24:n:iqZX0UkOHGafYHXFEvZWJLbs6ndj4fEZ:U9pzyG/H0eeljZe+wsAX/9rX', '2021-04-17 00:52:43.982', '2021-04-17 00:52:43.982', NULL);
INSERT INTO `lin_user_identity` VALUES (22, 22, 'USERNAME_PASSWORD', '1111', 'pbkdf2sha256:64000:18:24:n:ISO7b7kaCciDrzmyM4a1xyAL/M4tIze4:e/Yfy+O3U0bl5qRhLyap6czB', '2021-04-17 08:55:48.983', '2021-04-17 08:56:16.816', '2021-04-17 08:56:16.000');
INSERT INTO `lin_user_identity` VALUES (23, 23, 'USERNAME_PASSWORD', '答辩组账号', 'pbkdf2sha256:64000:18:24:n:3H3vB9joozc7c7G9zVk7nc/qPPxjsCps:h2SPediWD4sZRXdifSKeCxk3', '2021-04-17 08:56:43.991', '2021-04-19 06:08:19.725', '2021-04-19 06:08:19.000');
INSERT INTO `lin_user_identity` VALUES (24, 24, 'USERNAME_PASSWORD', '答辩组账号1', 'pbkdf2sha256:64000:18:24:n:VjWKxS9cJzm/fU1W6+weHx3iW5uvy3lk:0p91mOcndhXxMtdQdQ6DWjvw', '2021-04-19 06:09:07.225', '2021-04-19 06:09:07.225', NULL);
INSERT INTO `lin_user_identity` VALUES (25, 25, 'USERNAME_PASSWORD', '答辩组账号2', 'pbkdf2sha256:64000:18:24:n:bLKq5QD7DimFhiwQp5k5vVtr6mrpwzr1:RzNDt+nqp81dcEMBw8uXGfJM', '2021-04-19 06:09:24.519', '2021-04-19 06:09:24.519', NULL);
INSERT INTO `lin_user_identity` VALUES (26, 26, 'USERNAME_PASSWORD', '1902411119', 'pbkdf2sha256:64000:18:24:n:yMYo2zjVVt/+0lr8dLCTJlVKoNn5HeD+:W6HiN/orcjNqtkA1y1vXR3Qa', '2021-05-02 11:22:45.065', '2021-05-02 11:22:45.065', NULL);
INSERT INTO `lin_user_identity` VALUES (27, 27, 'USERNAME_PASSWORD', '0004', 'pbkdf2sha256:64000:18:24:n:wgx5aC9M//UbOdTWneYnCa72iXylFtM/:CZqFpL22iR6ruOadHtjWlzYA', '2021-05-02 11:53:16.020', '2021-05-02 11:53:16.020', NULL);
INSERT INTO `lin_user_identity` VALUES (28, 28, 'USERNAME_PASSWORD', '1902488824', 'pbkdf2sha256:64000:18:24:n:vgACXlpO39lzYSjCdXGCUs4c9PhuwdjB:/euc6s6cvIxBSO33WW0f8EIJ', '2021-05-03 11:47:56.174', '2021-05-03 11:47:56.174', NULL);
INSERT INTO `lin_user_identity` VALUES (29, 29, 'USERNAME_PASSWORD', '0006', 'pbkdf2sha256:64000:18:24:n:e/D5++m3nzi0mvgIcyQMv3F0hKtiZ2vf:JnphFBMEUs7ZEtgsCCnm7DZC', '2021-05-07 23:38:29.807', '2021-05-07 23:38:29.807', NULL);
INSERT INTO `lin_user_identity` VALUES (30, 30, 'USERNAME_PASSWORD', '1902499924', 'pbkdf2sha256:64000:18:24:n:7gzLuwK9LlM1LrYO59QsSyPPwSpkGvUI:ob5o9khzj9Ux9jADTpf8L6SA', '2021-05-07 23:39:12.986', '2021-05-07 23:39:12.986', NULL);

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '专业名称',
  `college_id` int(0) NOT NULL COMMENT '所属学院ID',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '人工智能', 3, '2021-01-15 12:44:24.310', '2021-01-15 12:31:51.367', NULL);
INSERT INTO `major` VALUES (2, '软件工程', 3, '2021-01-15 12:47:31.989', '2021-01-15 12:32:20.258', NULL);
INSERT INTO `major` VALUES (3, '信息对抗技术', 3, '2021-01-15 12:44:58.864', '2021-01-15 12:43:11.193', NULL);
INSERT INTO `major` VALUES (4, '信息安全', 3, '2021-01-15 12:45:02.071', '2021-01-15 12:43:25.825', NULL);
INSERT INTO `major` VALUES (5, '计算机科学与技术', 3, '2021-01-15 12:43:53.971', '2021-01-15 12:43:53.971', NULL);
INSERT INTO `major` VALUES (6, '电子商务学院', 7, '2021-01-15 12:45:40.168', '2021-01-15 12:45:40.168', NULL);
INSERT INTO `major` VALUES (23, 'test', 4, '2021-01-23 01:58:18.002', '2021-01-23 01:58:18.002', NULL);
INSERT INTO `major` VALUES (24, 'Test1111', 8, '2021-01-24 10:50:44.547', '2021-01-24 10:50:28.685', '2021-01-24 10:50:44.000');

-- ----------------------------
-- Table structure for option
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `score` int(0) NOT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of option
-- ----------------------------
INSERT INTO `option` VALUES (1, '资料查阅、翻译、阅读能力很强，有完整的资料综述报告', 5, '2021-04-14 01:58:29.992', '2021-04-14 01:58:29.992', NULL);
INSERT INTO `option` VALUES (2, '资料查阅、翻译、阅读能力较强，有文献综述报告', 4, '2021-04-14 01:58:50.903', '2021-04-14 01:58:50.903', NULL);
INSERT INTO `option` VALUES (3, '资料查阅、翻译、阅读能力一般，进行了资料查阅总结', 3, '2021-04-14 01:58:55.752', '2021-04-14 01:58:55.752', NULL);
INSERT INTO `option` VALUES (4, '资料查阅、翻译、阅读能力较差，没有进行资料查阅总结', 0, '2021-04-14 01:59:04.373', '2021-04-14 01:59:04.373', NULL);
INSERT INTO `option` VALUES (9, '能独立提出可行性研究方案', 5, '2021-04-15 11:08:33.169', '2021-04-15 11:08:33.169', NULL);
INSERT INTO `option` VALUES (10, '能独立提出部分可行性研究方案', 4, '2021-04-15 11:08:33.176', '2021-04-15 11:08:33.176', NULL);
INSERT INTO `option` VALUES (11, '在指导教师的多次指导下，才能确定部分研究方案', 2, '2021-04-15 11:08:33.182', '2021-04-15 11:08:33.182', NULL);
INSERT INTO `option` VALUES (12, '在指导教师的多次指导下，还提不出研究方案', 0, '2021-04-15 11:08:33.187', '2021-04-15 11:08:33.187', NULL);
INSERT INTO `option` VALUES (13, '基本概念清楚、基本理论扎实，并有很强的自学能力', 5, '2021-04-15 11:24:18.892', '2021-04-15 11:24:18.892', NULL);
INSERT INTO `option` VALUES (14, '基本概念较清楚、基本理论较扎实，有较强的自学能力', 4, '2021-04-15 11:24:18.903', '2021-04-15 11:24:18.903', NULL);
INSERT INTO `option` VALUES (15, '基本概念、基本理论掌握程度一般，自学能力一般', 3, '2021-04-15 11:24:18.908', '2021-04-15 11:24:18.908', NULL);
INSERT INTO `option` VALUES (16, '基本概念、基本理论掌握程度较差，自学能力较差', 0, '2021-04-15 11:24:18.914', '2021-04-15 11:24:18.914', NULL);
INSERT INTO `option` VALUES (21, '能正确地分析毕业设计实施过程中遇到的各种问题，并提出解决问题的办法与建议，具有很强的信息处理和分析技能', 10, '2021-04-15 11:43:35.996', '2021-04-15 11:43:35.996', NULL);
INSERT INTO `option` VALUES (22, '能分析毕业设计实施过程中遇到的各种问题，并提出一些想法与建议，信息处理和分析运用技能较强', 8, '2021-04-15 11:43:36.009', '2021-04-15 11:43:36.009', NULL);
INSERT INTO `option` VALUES (23, '能部分分析毕业论文（设计）实施过程中遇到的各种问题，并提出一些想法与建议，信息处理和分析运用技能一般', 5, '2021-04-15 11:43:36.020', '2021-04-15 11:43:36.020', NULL);
INSERT INTO `option` VALUES (24, '分析问题的能力较差，提不出什么解决问题的想法与建议，信息处理和分析运用技能较差', 2, '2021-04-15 11:43:36.029', '2021-04-15 11:43:36.029', NULL);
INSERT INTO `option` VALUES (25, '工作严谨、认真，学习努力、勤奋，严格遵守校纪', 5, '2021-04-15 11:46:13.178', '2021-04-15 11:46:13.178', NULL);
INSERT INTO `option` VALUES (26, '工作较严谨、认真，学习较努力、勤奋，能严格遵守校纪', 4, '2021-04-15 11:46:13.193', '2021-04-15 11:46:13.193', NULL);
INSERT INTO `option` VALUES (27, '工作不够严谨、认真，学习不够努力、勤奋，或不能自觉遵守相关规定', 2, '2021-04-15 11:46:13.201', '2021-04-15 11:46:13.201', NULL);
INSERT INTO `option` VALUES (28, '工作不严谨、不认真，学习不努力，或有违反校相关规定现象', 0, '2021-04-15 11:46:13.209', '2021-04-15 11:46:13.209', NULL);
INSERT INTO `option` VALUES (29, '学生对自己的工作量要求很饱满，能很好地完成规定的进度', 10, '2021-04-15 11:51:05.090', '2021-04-15 11:51:05.090', NULL);
INSERT INTO `option` VALUES (30, '学生对自己的工作量要求较饱满，基本上能完成规定的进度', 7, '2021-04-15 11:51:05.098', '2021-04-15 11:51:05.098', NULL);
INSERT INTO `option` VALUES (31, '学生对自己的工作量要求一般，勉强完成规定的进度', 4, '2021-04-15 11:51:05.105', '2021-04-15 11:51:05.105', NULL);
INSERT INTO `option` VALUES (32, '学生对自己的工作量要求不饱满，也没有完成规定的进度', 0, '2021-04-15 11:51:05.117', '2021-04-15 11:51:05.117', NULL);
INSERT INTO `option` VALUES (37, '格式规范，符合学校规定的设计说明文档打印格式要求  （1．封面2．任务书3．开题报告4．项目设计说明表项目意义和目标5．项目技术架构6．项目设计7．项目实现8．项目特色9. 总结10．参考文献）', 5, '2021-04-16 23:51:44.128', '2021-04-16 23:51:44.128', NULL);
INSERT INTO `option` VALUES (38, 'A中所列项目中有1项或2项不合格者', 3, '2021-04-16 23:51:44.137', '2021-04-16 23:51:44.137', NULL);
INSERT INTO `option` VALUES (39, 'A中所列项目中有3项到4项不合格者', 2, '2021-04-16 23:51:44.142', '2021-04-16 23:51:44.142', NULL);
INSERT INTO `option` VALUES (40, 'A中所列项目中超过5项不合格者', 1, '2021-04-16 23:51:44.146', '2021-04-16 23:51:44.146', NULL);
INSERT INTO `option` VALUES (41, '采用计算机打印，语句通顺、流畅；标点符号、语法正确；叙述简明扼要；思路层次清晰，概括全面准确；重点突出', 5, '2021-04-16 23:52:36.846', '2021-04-16 23:52:36.846', NULL);
INSERT INTO `option` VALUES (42, '采用计算机打印，语句较通顺、流畅；标点符号、语法基本正确；思路层次清晰，重点突出', 4, '2021-04-16 23:52:36.851', '2021-04-16 23:52:36.851', NULL);
INSERT INTO `option` VALUES (43, '采用计算机打印，语句尚通顺、流畅；有标点符号和语法错误，思路层次较清晰，重点较突出', 3, '2021-04-16 23:52:36.856', '2021-04-16 23:52:36.856', NULL);
INSERT INTO `option` VALUES (44, '未采用计算机打印，语句不通；有多处标点符号和语法错误；思路不够清楚', 0, '2021-04-16 23:52:36.863', '2021-04-16 23:52:36.863', NULL);
INSERT INTO `option` VALUES (45, '对于研究课题能熟练运用本专业所必须的基础理论和专业知识，分析问题，解决问题；理论正确，概念清楚，应用合理；层次清晰，逻辑性强；论证严密，计算准确全面；系统架构、技术先进；界面美观、交互效果好；流程设计合理，功能满足设计要求，运行正确；响应速度快；安全性、可靠性高', 15, '2021-04-16 23:54:47.420', '2021-04-16 23:54:47.420', NULL);
INSERT INTO `option` VALUES (46, '毕业设计质量较好，或符合设计要求，界面、功能、性能实现较好，无原则性错误，工作量达到基本要求', 12, '2021-04-16 23:54:47.428', '2021-04-16 23:54:47.428', NULL);
INSERT INTO `option` VALUES (47, '毕业设计质量一般，或基本符合设计要求，界面、功能、性能实现一般，非原则性表达错误较多，工作量达到基本要求', 9, '2021-04-16 23:54:47.433', '2021-04-16 23:54:47.433', NULL);
INSERT INTO `option` VALUES (48, '毕业论设计质量很差，或不符合设计要求，界面、功能、性能实现质量较差，出现个别原则性表达错误，工作量达到基本要求', 5, '2021-04-16 23:54:47.439', '2021-04-16 23:54:47.439', NULL);
INSERT INTO `option` VALUES (49, '设计成果具有一定水平，得出创造性结论，在某些领域获得初步进展，研究工作具有一定的学术和实用价值，体现出很好水平, 全面完成了任务书所规定的各项要求', 15, '2021-04-16 23:55:32.709', '2021-04-16 23:55:32.709', NULL);
INSERT INTO `option` VALUES (50, '提出了创新设想，但具体思路尚有待完善或有考虑不周之处, 完成了任务书所规定的各项要求', 12, '2021-04-16 23:55:32.714', '2021-04-16 23:55:32.714', NULL);
INSERT INTO `option` VALUES (51, '提出了创新设想，但尚未有解决的思路, 基本完成了任务书所规定的各项要求', 9, '2021-04-16 23:55:32.719', '2021-04-16 23:55:32.719', NULL);
INSERT INTO `option` VALUES (52, '基本没有创新设想,没有完成任务书所规定的各项要求', 5, '2021-04-16 23:55:32.724', '2021-04-16 23:55:32.724', NULL);
INSERT INTO `option` VALUES (53, '简洁，流利，清楚，重点突出，表现出对所从事的研究内容掌握得很透彻', 10, '2021-04-16 23:56:17.068', '2021-04-16 23:56:17.068', NULL);
INSERT INTO `option` VALUES (54, '较好', 8, '2021-04-16 23:56:17.077', '2021-04-16 23:56:17.077', NULL);
INSERT INTO `option` VALUES (55, '一般', 6, '2021-04-16 23:56:17.084', '2021-04-16 23:56:17.084', NULL);
INSERT INTO `option` VALUES (56, '很差', 1, '2021-04-16 23:56:17.089', '2021-04-16 23:56:17.089', NULL);
INSERT INTO `option` VALUES (57, '回答问题全部正确，概念清楚，理论知识掌握扎实，简明扼要', 10, '2021-04-16 23:56:50.064', '2021-04-16 23:56:50.064', NULL);
INSERT INTO `option` VALUES (58, '回答问题表现较好', 8, '2021-04-16 23:56:50.069', '2021-04-16 23:56:50.069', NULL);
INSERT INTO `option` VALUES (59, '回答问题表现一般', 6, '2021-04-16 23:56:50.076', '2021-04-16 23:56:50.076', NULL);
INSERT INTO `option` VALUES (60, '回答问题表现很差', 2, '2021-04-16 23:56:50.081', '2021-04-16 23:56:50.081', NULL);
INSERT INTO `option` VALUES (85, 't1', 1, '2021-06-13 02:01:57.284', '2021-06-13 02:01:57.284', NULL);
INSERT INTO `option` VALUES (86, 't2', 10, '2021-06-13 02:01:57.289', '2021-06-13 02:01:57.289', NULL);
INSERT INTO `option` VALUES (87, 't3', 15, '2021-06-13 02:01:57.293', '2021-06-13 02:01:57.293', NULL);
INSERT INTO `option` VALUES (88, 't4', 20, '2021-06-13 02:01:57.298', '2021-06-13 02:01:57.298', NULL);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `option_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '资料检索、阅读及综述能力分', '1,2,3,4', '2021-04-14 04:54:22.556', '2021-04-14 01:58:15.330', NULL);
INSERT INTO `question` VALUES (2, '毕业设计研究方案设计能力分', '9,10,11,12', '2021-04-16 00:32:47.133', '2021-04-15 11:08:33.202', NULL);
INSERT INTO `question` VALUES (3, '基本概念、基本理论及自学能力分', '13,14,15,16', '2021-04-16 00:32:50.670', '2021-04-15 11:24:18.924', NULL);
INSERT INTO `question` VALUES (4, '分析问题、解决问题及信息处理和分析能力分', '21,22,23,24', '2021-04-16 00:32:53.443', '2021-04-15 11:43:36.039', NULL);
INSERT INTO `question` VALUES (5, '科学素养、学习态度、纪律表现分', '25,26,27,28', '2021-04-16 00:32:55.719', '2021-04-15 11:46:13.219', NULL);
INSERT INTO `question` VALUES (6, '工作量及毕业设计进度分', '29,30,31,32', '2021-04-16 00:32:58.759', '2021-04-15 11:51:05.138', NULL);
INSERT INTO `question` VALUES (10, '毕业设计说明文档格式规范分', '37,38,39,40', '2021-04-16 23:51:44.154', '2021-04-16 23:51:44.154', NULL);
INSERT INTO `question` VALUES (11, '毕业设计文字书写基本要求分', '41,42,43,44', '2021-04-16 23:52:36.868', '2021-04-16 23:52:36.868', NULL);
INSERT INTO `question` VALUES (12, '毕业设计质量分', '45,46,47,48', '2021-04-16 23:54:47.448', '2021-04-16 23:54:47.448', NULL);
INSERT INTO `question` VALUES (13, '毕业设计水平及创新分', '49,50,51,52', '2021-04-16 23:55:32.730', '2021-04-16 23:55:32.730', NULL);
INSERT INTO `question` VALUES (14, '毕业设计介绍表达情况分', '53,54,55,56', '2021-04-16 23:56:17.096', '2021-04-16 23:56:17.096', NULL);
INSERT INTO `question` VALUES (15, '回答问题表现分', '57,58,59,60', '2021-04-16 23:56:50.086', '2021-04-16 23:56:50.086', NULL);
INSERT INTO `question` VALUES (22, 'Test1', '85,86,87,88', '2021-06-13 02:01:57.303', '2021-06-13 02:01:57.303', NULL);

-- ----------------------------
-- Table structure for scorecard
-- ----------------------------
DROP TABLE IF EXISTS `scorecard`;
CREATE TABLE `scorecard`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评分表标题',
  `comment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评分表留言',
  `level` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '优秀、良好、中等、及格和不及格',
  `score` double NULL DEFAULT NULL COMMENT '得分',
  `guide_card_id` int(0) NOT NULL COMMENT '指导老师评分表模板id',
  `judge_advise` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评委团队建议',
  `judge_score` double NULL DEFAULT NULL COMMENT '评委团队评分',
  `judge_answers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `guide_answers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `guide_advise` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '指导老师建议',
  `guide_score` double NULL DEFAULT NULL COMMENT '指导老师评分',
  `judge_card_id` int(0) NULL DEFAULT NULL COMMENT '答辩小组评分表模板id',
  `supplement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `topic_id` int(0) NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scorecard
-- ----------------------------
INSERT INTO `scorecard` VALUES (45, '毕业设计评分系统的评分表-补答辩', '66666666666', '不及格', 25.9, 1, ' ', 19.9, '10:5,11:5,12:1,13:1,14:5.5,15:2.4,', '1:1,2:1,3:1,4:1,5:1,6:1,', ' ', 6, 5, '{\"id\":45,\"title\":\"毕业设计评分系统的评分表\",\"comment\":null,\"level\":\"及格\",\"score\":66.0,\"guide_card_id\":1,\"judge_card_id\":5,\"topic_id\":2,\"guide_score\":6.0,\"guide_advise\":\" \",\"judge_score\":60.0,\"judge_advise\":\" \",\"judge_answers\":\"10:5,11:5,12:15,13:15,14:10,15:10,\",\"guide_answers\":\"1:1,2:1,3:1,4:1,5:1,6:1,\",\"supplement\":null}', 2, '2021-05-10 11:19:46.886', '2021-05-10 11:15:00.877', NULL);
INSERT INTO `scorecard` VALUES (46, 'AI游戏设计的评分表', NULL, '不及格', 45, 5, ' ', 33, '1:3,2:5,3:5,4:10,5:5,11:5,', '10:2,11:2,12:2,13:2,14:2,15:2,', ' ', 12, 9, NULL, 16, '2021-05-10 11:16:11.940', '2021-05-10 11:16:11.940', NULL);
INSERT INTO `scorecard` VALUES (50, '西门吹雪的课题的评分表', NULL, NULL, NULL, 13, NULL, NULL, NULL, '6:10,11:5,13:15,22:20,', ' ', 50, NULL, NULL, 26, '2021-06-13 02:02:35.169', '2021-06-13 02:02:35.169', NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学号',
  `class_id` int(0) NOT NULL COMMENT '班级号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `sex` int(0) NULL DEFAULT NULL COMMENT '性别 1:男 0:女',
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (11, '1902411124', 1, '西门吹雪1', 1, '1394466835@qq.com', '13056973039', '2021-01-23 00:10:46.569', '2021-01-04 11:11:18.312', NULL);
INSERT INTO `student` VALUES (12, '1902411123', 1, '孙悟空1', 1, '13944@qq.com', '123456789', '2021-01-23 00:10:48.789', '2021-01-04 11:16:19.011', NULL);
INSERT INTO `student` VALUES (13, '1902411199', 5, '杀手', 1, 'qq@qq.com', '78789789', '2021-01-24 09:29:16.652', '2021-01-24 09:29:16.652', NULL);
INSERT INTO `student` VALUES (14, '1902411198', 6, '唐僧', 0, 'xx@qq.com', '130555', '2021-01-24 09:38:03.716', '2021-01-24 09:38:03.716', NULL);
INSERT INTO `student` VALUES (15, '1902411197', 6, '测试', 0, 'sunhuayangak47@gmail.com', '123', '2021-02-10 02:45:39.997', '2021-01-24 10:51:32.360', NULL);
INSERT INTO `student` VALUES (16, '1902411155', 5, '李白', 1, '11@qq.com', '456789', '2021-01-27 07:17:33.023', '2021-01-27 07:17:33.023', NULL);
INSERT INTO `student` VALUES (18, '1902411196', 1, '西门吹雪', 1, 'sunhuayang@gmail.com', '130569', '2021-02-09 08:42:51.264', '2021-02-09 08:42:51.264', NULL);
INSERT INTO `student` VALUES (20, '1902411166', 1, '西门', 1, '1234@qq.com', '123', '2021-02-26 11:11:52.075', '2021-02-26 11:11:52.075', NULL);
INSERT INTO `student` VALUES (22, '1902411119', 1, 'Test', 0, '22333@qq.com', '123123', '2021-05-02 11:22:44.535', '2021-05-02 11:22:44.535', NULL);
INSERT INTO `student` VALUES (23, '1902488824', 1, '西门', 1, 'ddd56@qq.com', '456546', '2021-05-03 11:47:55.620', '2021-05-03 11:47:55.620', NULL);
INSERT INTO `student` VALUES (24, '1902499924', 1, '99学生', 1, 'daf@qq.com', '', '2021-05-07 23:39:12.726', '2021-05-07 23:39:12.726', NULL);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `tid` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '老师工号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `sex` int(0) NULL DEFAULT NULL COMMENT '性别 1:男 0:女',
  `college_id` int(0) NULL DEFAULT NULL COMMENT '学院ID',
  `position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位',
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `summary` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简介',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '0001', '孙某', 1, 3, 'xx', '123@qq.com', '456789', 'xx', '2021-04-19 05:53:02.600', '2021-01-27 07:01:48.052', NULL);
INSERT INTO `teacher` VALUES (2, '0002', '王某', 1, 8, 'xx', '14@qq.com', '2343242', 'xx', '2021-04-19 05:53:06.274', '2021-01-27 07:07:17.661', NULL);
INSERT INTO `teacher` VALUES (3, '0003', '五一', 0, 3, 'xx', '22@QQ.COM', '123333', 'xx', '2021-04-19 05:53:05.060', '2021-01-27 07:29:09.074', NULL);
INSERT INTO `teacher` VALUES (5, '0005', '王老师', 0, 3, 'xx', '7489@qq.com', '456789', 'xx', '2021-04-19 05:53:08.612', '2021-01-27 07:37:20.197', NULL);
INSERT INTO `teacher` VALUES (6, '0004', '悟空', 1, 3, 'test', 'ddd@qq.com', '123', 'test', '2021-05-02 11:53:15.316', '2021-05-02 11:53:15.316', NULL);
INSERT INTO `teacher` VALUES (7, '0006', '西门', 1, 3, '', '34dd@qq.com', '12312', '', '2021-05-07 23:38:29.562', '2021-05-07 23:38:29.562', NULL);

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '团队名',
  `teacher_id` int(0) NULL DEFAULT NULL COMMENT '负责人id',
  `judges` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评委团队名称',
  `student_ids` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成员学生id',
  `years` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '届数',
  `college_id` int(0) NULL DEFAULT NULL COMMENT '所属学院',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES (7, '鬼谷八荒', 2, '鬼谷八荒评委团队', '1902411198,1902411199,1902488824,1902499924', '2021', 3, '2021-05-08 01:14:17.061', '2021-02-03 04:40:34.801', NULL);
INSERT INTO `team` VALUES (8, '太吾绘卷', 1, '太吾绘卷评委团队', '1902411197', '2021', 3, '2021-02-10 02:46:12.961', '2021-02-03 04:43:52.068', NULL);
INSERT INTO `team` VALUES (9, '凡人修仙传', 3, '凡人修仙传评委团队', '1902411195,1902411196', '2021', 3, '2021-02-10 02:46:46.642', '2021-02-03 04:48:54.360', NULL);
INSERT INTO `team` VALUES (10, '了不起的修仙模拟器', 5, '了不起的修仙模拟器评委团队', '1902411124,1902411123,1902411119', '2021', 3, '2021-05-02 11:21:42.984', '2021-02-03 04:50:31.634', NULL);
INSERT INTO `team` VALUES (14, '流程测试团队', 5, '流程测试团队', '1902411166', '2022', 3, '2021-02-26 11:42:57.449', '2021-02-26 11:40:12.761', NULL);
INSERT INTO `team` VALUES (15, '西门团队', 7, '测试', '1902499924', '2021', 3, '2021-05-08 00:01:45.328', '2021-05-08 00:01:45.328', NULL);

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `type` int(0) NULL DEFAULT NULL COMMENT '0:为老师发布 1:学生自主申请',
  `publish_year` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发布年份',
  `student_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生学号',
  `teacher_id` int(0) NULL DEFAULT NULL COMMENT '老师id',
  `college_id` int(0) NULL DEFAULT NULL COMMENT '所属学院',
  `graduate_info_id` int(0) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT 0 COMMENT '课题状态',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (2, '毕业设计评分系统', '这是西门吹雪的课题任务11', 1, '2021', '1902411124', 5, 3, 2, 1, '2021-04-27 02:33:25.592', '2021-02-09 10:32:16.124', NULL);
INSERT INTO `topic` VALUES (16, 'AI游戏设计', 'AI游戏设计', 0, '2021', '1902411123', 3, 8, 2, 1, '2021-04-27 02:34:29.597', '2021-02-10 01:39:55.500', NULL);
INSERT INTO `topic` VALUES (17, '11', '11', 0, '2021', '1902411198', 2, 8, 2, 11, '2021-04-27 02:33:23.244', '2021-02-17 02:50:25.371', NULL);
INSERT INTO `topic` VALUES (18, 'aaaa', 'aaaa', 0, '2021', '1902411199', 2, 9, 2, 11, '2021-04-27 02:33:22.549', '2021-02-17 02:53:18.777', NULL);
INSERT INTO `topic` VALUES (19, '人脸识别设计', '人脸识别设计', 1, '2021', '1902411196', 3, 8, 2, 10, '2021-04-27 02:33:21.710', '2021-02-17 06:26:52.271', NULL);
INSERT INTO `topic` VALUES (21, '基于GO的游戏开发', '基于GO的游戏开发', 1, '2022', '1902411166', 5, 3, 2, 1, '2021-04-27 02:33:21.193', '2021-02-26 11:43:49.256', NULL);
INSERT INTO `topic` VALUES (23, '无敌毕设', '无敌毕设', 0, '2021', '1902411122', 3, 3, 2, 4, '2021-04-27 02:33:12.164', '2021-04-27 02:33:12.164', NULL);
INSERT INTO `topic` VALUES (24, '投票系统', '投票系统', 0, '2021', '1902411121', 5, 3, 2, 4, '2021-04-30 11:09:00.269', '2021-04-30 10:56:50.993', '2021-04-30 11:09:00.000');
INSERT INTO `topic` VALUES (25, 'Test', 'test', 0, '2022', '1902411119', 5, 3, 3, 4, '2021-05-02 11:18:41.178', '2021-05-02 11:18:41.178', NULL);
INSERT INTO `topic` VALUES (26, '西门吹雪的课题', '西门吹雪的课题', 1, '2021', '1902488824', 2, 3, 2, 1, '2021-05-03 11:50:32.863', '2021-05-03 11:50:32.863', NULL);
INSERT INTO `topic` VALUES (27, 'Pokemon爬虫', 'Pokemon爬虫', 1, '2021', '1902499924', 7, 3, 5, 1, '2021-05-08 00:43:19.498', '2021-05-08 00:43:19.498', NULL);

SET FOREIGN_KEY_CHECKS = 1;
