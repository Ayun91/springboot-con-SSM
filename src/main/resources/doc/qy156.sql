/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : qy156

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 27/09/2022 16:04:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept`  (
  `dept_id` int NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '部门状态（1正常 0停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '删除标志（1代表存在 0代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES (11, '测试部门', 1, '1', '1', 'Enzo', '2018-03-16 11:33:00', 'admin', '2022-09-16 18:28:57');
INSERT INTO `tbl_dept` VALUES (12, '财务部门', 2, '1', '1', 'Enzo', '2018-03-16 11:33:00', 'shang', '2022-09-01 21:54:04');
INSERT INTO `tbl_dept` VALUES (13, '运维部门', 3, '1', '1', 'Enzo', '2018-03-16 11:33:00', 'admin', '2022-09-01 19:27:38');
INSERT INTO `tbl_dept` VALUES (14, '哈哈', 5, '1', '1', 'shang', '2022-09-02 14:41:09', 'shang', '2022-09-08 19:51:47');
INSERT INTO `tbl_dept` VALUES (15, '嘻嘻嘻', 50, '1', '0', 'shang', '2022-09-08 17:01:13', NULL, NULL);
INSERT INTO `tbl_dept` VALUES (16, '哈哈哈', 12, '1', '0', 'shang', '2022-09-08 17:06:43', NULL, NULL);
INSERT INTO `tbl_dept` VALUES (17, '科研', 12, '1', '1', 'shang', '2022-09-08 18:25:54', 'shang', '2022-09-08 18:35:17');
INSERT INTO `tbl_dept` VALUES (18, '广告部1', 53, '1', '1', 'shang', '2022-09-08 18:36:53', 'shang', '2022-09-10 18:45:48');
INSERT INTO `tbl_dept` VALUES (19, '广告部', 99, '1', '1', 'shang', '2022-09-08 18:43:20', 'shang', '2022-09-10 18:45:45');
INSERT INTO `tbl_dept` VALUES (20, '12', 21, '1', '0', 'shang', '2022-09-08 19:16:44', NULL, NULL);
INSERT INTO `tbl_dept` VALUES (21, '广告部12', 12, '1', '0', 'shang', '2022-09-10 18:46:22', 'admin', '2022-09-13 10:18:59');

-- ----------------------------
-- Table structure for tbl_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dictionary`;
CREATE TABLE `tbl_dictionary`  (
  `dictionary_id` int NOT NULL AUTO_INCREMENT,
  `type_id` int NOT NULL COMMENT '字典类型,关联字典类型表',
  `dictionary_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名,展示时使用，保存的时候使用主键值',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` date NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dictionary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_dictionary
-- ----------------------------
INSERT INTO `tbl_dictionary` VALUES (1, 1, 'FPA前15题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (2, 1, 'FPA后15题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (3, 2, 'SAS正向题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (4, 2, 'SAS反向题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (5, 3, 'SDS正向题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (6, 3, 'SDS反向题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (7, 4, 'MHT效度评估', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (8, 4, 'MHT学习焦虑 ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (9, 4, 'MHT对人焦虑', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (10, 4, 'MHT孤独倾向', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (11, 4, 'MHT自责倾向', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (12, 4, 'MHT过敏倾向', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (13, 4, 'MHT身体症状', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (14, 4, 'MHT恐怖倾向', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (15, 4, 'MHT冲动倾向', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (16, 5, 'SCL躯体化F1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (17, 5, 'SCL强迫F2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (18, 5, 'SCL人际关系F3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (19, 5, 'SCL抑郁F4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (20, 5, 'SCL焦虑F5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (21, 5, 'SCL敌对性F6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (22, 5, 'SCL恐怖F7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (23, 5, 'SCL偏执F8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (24, 5, 'SCL精神病性F9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (25, 5, 'SCL睡眠及饮食F10', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_dictionary_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dictionary_type`;
CREATE TABLE `tbl_dictionary_type`  (
  `type_id` int NOT NULL AUTO_INCREMENT COMMENT '类型ID，自增',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型名称，非空，唯一',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_dictionary_type
-- ----------------------------
INSERT INTO `tbl_dictionary_type` VALUES (1, 'FPA题目类型', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (2, 'SAS题目类型', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (3, 'SDS题目类型', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_log`;
CREATE TABLE `tbl_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名',
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法名',
  `params` varchar(9000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作的结果',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_log
-- ----------------------------
INSERT INTO `tbl_log` VALUES (1, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.MenuController', 'deleteMenuById', '[110]', '2022-09-09 18:55:15', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (2, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'save', '[QuestionFpa(id=null, question=1212, optionA=12, optionB=12, optionC=12, optionD=21, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 14:58:22', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (3, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'save', '[TestPlanFpa(id=null, testName=中秋节测试, testCode=null, testBegin=Sat Sep 10 14:58:55 CST 2022, testEnd=Mon Sep 12 14:58:55 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=测试, type=null)]', '2022-09-10 14:59:22', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (4, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'delete', '[[Ljava.lang.Integer;@3dbc8acd]', '2022-09-10 14:59:32', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (5, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'save', '[TestPlanFpa(id=null, testName=中秋节测试, testCode=null, testBegin=Sat Sep 10 14:58:55 CST 2022, testEnd=Mon Sep 12 14:58:55 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=测试, type=null)]', '2022-09-10 14:59:37', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (6, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=1, question=我的人生观是, optionA=A人生的体验越多越好，所以想法很多，有可能就应该多尝试。, optionB=B深度比宽度更重要，目标要谨慎，一旦确定就坚持到底。, optionC=C人生必须有所成。, optionD=D没必要太辛苦，好好活着就行。, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 16:00:24', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (7, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=61, question=123, optionA=12, optionB=12, optionC=12, optionD=21, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 16:03:28', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (8, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=1, question=我的人生观是, optionA=A人生的体验越多越好，所以想法很多，有可能就应该多尝试。, optionB=B深度比宽度更重要，目标要谨慎，一旦确定就坚持到底。, optionC=C人生必须有所成。, optionD=D没必要太辛苦，好好活着就行。, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 16:22:35', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (9, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=123, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 16:22:43', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (10, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'deleteByIds', '[[Ljava.lang.Integer;@677794e7]', '2022-09-10 16:22:49', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (11, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=1, question=我的人生观是, optionA=A人生的体验越多越好，所以想法很多，有可能就应该多尝试。, optionB=B深度比宽度更重要，目标要谨慎，一旦确定就坚持到底。, optionC=C人生必须有所成。, optionD=D没必要太辛苦，好好活着就行。, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 16:47:57', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (12, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=123, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 16:48:08', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (13, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy156, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 16:50:18', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (14, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy156, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 16:53:16', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (15, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy156, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 16:53:20', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (16, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=9, testName=qy156, testCode=null, testBegin=Wed Aug 31 10:15:35 CST 2022, testEnd=Fri Sep 02 10:15:35 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=测试测试, type=null)]', '2022-09-10 16:54:21', '{\"code\":1,\"msg\":\"测试计划名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (17, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=12, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 16:59:40', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (18, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'save', '[Role(roleId=null, roleName=哈哈, roleKey=11, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), ]', '2022-09-10 17:03:15', '{\"code\":1,\"msg\":\"请选择菜单权限\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (19, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'save', '[Role(roleId=null, roleName=哈哈, roleKey=11, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-10 17:03:22', '{\"code\":0,\"msg\":\"添加成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (20, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=29, roleName=哈哈, roleKey=1, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-10 17:03:31', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (21, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=29, roleName=管理员, roleKey=1, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-10 17:03:41', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (22, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 17:19:54', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (23, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 17:22:06', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (24, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部1, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 17:22:10', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (25, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'save', '[Userinfo(userid=null, deptid=11, username=xiao, email=6723627@qq.com, phonenumber=12636474647, sex=0, avatar=, password=123456, salt=null, status=null, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1111, roleId=1)]', '2022-09-10 17:24:14', '{\"code\":1,\"msg\":\"用户名已存在\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (26, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=22, deptid=19, username=xiao, email=2@q.qq, phonenumber=12524562452, sex=0, avatar=, password=null, salt=null, status=null, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=, roleId=1)]', '2022-09-10 17:33:21', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (27, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 17:33:39', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (28, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 17:35:44', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (29, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=hahaha, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 17:45:27', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (30, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=123, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:07:13', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (31, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=admin, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:07:26', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (32, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:09:17', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (33, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:09:34', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (34, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:09:40', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (35, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=2, deptid=13, username=shang, email=838449693@qq.com, phonenumber=15517198180, sex=0, avatar=https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/73b260c7-c515-4bc8-a92d-08dce8d2900ekeli.jpg, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=中等管理员。。。, roleId=2)]', '2022-09-10 18:09:48', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (36, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=23, deptid=18, username=admin, email=12567@qq.com, phonenumber=12345678978, sex=0, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1221, roleId=1)]', '2022-09-10 18:10:07', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (37, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=23, deptid=18, username=admin, email=12567@qq.com, phonenumber=12345678978, sex=0, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1221, roleId=1)]', '2022-09-10 18:10:18', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (38, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:13:14', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (39, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:13:22', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (40, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=hahaha, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:13:33', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (41, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=hahaha, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:13:42', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (42, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=hahaha, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890, roleId=3)]', '2022-09-10 18:13:50', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (43, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=hahaha, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:14:57', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (44, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:15:03', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (45, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=123, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:15:15', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (46, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:19:01', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (47, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang1, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:19:04', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (48, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:19:10', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (49, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=29, roleName=管理员, roleKey=1, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-10 18:19:20', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (50, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=19, deptName=广告部, orderNum=99, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:19:30', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (51, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:19:36', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (52, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:19:41', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (53, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部1, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:19:46', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (54, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部 , orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:19:50', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (55, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:19:54', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (56, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:19:57', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (57, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=19, deptName=广告部, orderNum=99, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:20:01', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (58, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:20:09', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (59, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部1, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:20:13', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (60, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:20:18', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (61, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=57, question=12, optionA=123, optionB=123, optionC=123, optionD=23, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:21:44', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (62, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=123, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:23:27', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (63, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=12, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:23:37', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (64, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:32:18', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (65, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang1, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:32:22', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (66, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:32:30', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (67, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 18:37:22', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (68, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=19, deptName=广告部, orderNum=99, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:45:42', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (69, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=19, deptName=广告部, orderNum=99, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:45:45', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (70, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部1, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:45:48', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (71, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:45:52', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (72, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:46:02', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (73, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:46:07', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (74, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'saveDept', '[Dept(deptId=null, deptName=广告部, orderNum=12, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 18:46:22', '{\"code\":0,\"msg\":\"添加成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (75, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=123, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:48:30', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (76, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=57, question=123, optionA=123, optionB=123, optionC=123, optionD=23, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:48:36', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (77, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=57, question=12, optionA=123, optionB=123, optionC=123, optionD=23, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:48:44', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (78, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=12, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:48:51', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (79, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=60, question=123, optionA=12, optionB=1212, optionC=12, optionD=1, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:55:22', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (80, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'save', '[QuestionFpa(id=null, question=1234, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:56:31', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (81, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=62, question=123, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:56:41', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (82, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=62, question=12, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:56:56', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (83, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=62, question=123, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:57:01', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (84, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=62, question=1234, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:59:09', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (85, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=62, question=123, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 18:59:16', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (86, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=62, question=123, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 19:00:14', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (87, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=62, question=12, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 19:00:24', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (88, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=9, testName=qy156, testCode=null, testBegin=Wed Aug 31 10:15:35 CST 2022, testEnd=Fri Sep 02 10:15:35 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=测试测试, type=null)]', '2022-09-10 19:00:57', '{\"code\":1,\"msg\":\"测试计划名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (89, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=17, testName=中秋节测试1, testCode=null, testBegin=Sat Sep 10 14:58:55 CST 2022, testEnd=Mon Sep 12 14:58:55 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=测试, type=null)]', '2022-09-10 19:01:08', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (90, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=17, testName=中秋节测试, testCode=null, testBegin=Sat Sep 10 14:58:55 CST 2022, testEnd=Mon Sep 12 14:58:55 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=测试, type=null)]', '2022-09-10 19:01:15', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (91, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy156, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 19:04:06', '{\"code\":1,\"msg\":\"测试计划名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (92, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy156, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 19:04:10', '{\"code\":1,\"msg\":\"测试计划名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (93, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy1561, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 19:05:24', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (94, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy156, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 19:05:29', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (95, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy156, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 19:05:33', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (96, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy1561, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 19:06:35', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (97, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=15, testName=qy156, testCode=null, testBegin=Wed Sep 07 19:31:29 CST 2022, testEnd=Fri Sep 09 19:31:29 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=aaa, type=null)]', '2022-09-10 19:06:39', '{\"code\":1,\"msg\":\"测试计划名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (98, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=62, question=12, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-10 19:06:51', '{\"code\":1,\"msg\":\"问题重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (99, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=18, deptName=广告部, orderNum=53, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-10 19:07:00', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (100, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=29, roleName=管理员, roleKey=1, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-10 19:07:08', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (101, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-10 19:07:18', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (102, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'save', '[Role(roleId=null, roleName=1233, roleKey=12, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=12), 1,109,1029,1030,111,1026,1037]', '2022-09-10 19:18:00', '{\"code\":0,\"msg\":\"添加成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (103, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'save', '[Role(roleId=null, roleName=12334, roleKey=12, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=21), 2,1044,1045,1046,1047]', '2022-09-10 19:19:38', '{\"code\":0,\"msg\":\"添加成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (104, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=31, roleName=1233, roleKey=12, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=21), 2,1044,1045,1046,1047]', '2022-09-10 19:19:43', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (105, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=31, roleName=12333, roleKey=12, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=21), 2,1044,1045,1046,1047]', '2022-09-10 19:19:47', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (106, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=31, roleName=1233, roleKey=12, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=21), 2,1044,1045,1046,1047]', '2022-09-10 19:25:35', '{\"code\":1,\"msg\":\"角色名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (107, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=29, roleName=管理员, roleKey=1, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-11 08:49:39', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (108, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=29, roleName=管理员1, roleKey=1, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-11 08:49:47', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (109, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=29, roleName=管理员, roleKey=1, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-11 08:49:52', '{\"code\":1,\"msg\":\"角色名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (110, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=30, roleName=1233, roleKey=121, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=12), 1,109,1029,1030,111,1026,1037]', '2022-09-11 08:50:12', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (111, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=29, roleName=管理员, roleKey=1, roleSort=12, status=1, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-11 08:50:19', '{\"code\":1,\"msg\":\"角色名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (112, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=23, deptid=18, username=admin123, email=12567@qq.com, phonenumber=12345678978, sex=0, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1221, roleId=1)]', '2022-09-11 08:51:05', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (113, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=23, deptid=18, username=admin, email=12567@qq.com, phonenumber=12345678978, sex=0, avatar=, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1221, roleId=1)]', '2022-09-11 08:51:14', '{\"code\":1,\"msg\":\"用户名已存在，请重新输入\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (114, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=29, roleName=管理员1, roleKey=1, roleSort=12, status=null, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=1212), 1,109,1029,1030,111,1026,1037,2,1044,1045,1046,1047]', '2022-09-11 08:51:55', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (115, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=30, roleName=1233, roleKey=121, roleSort=12, status=null, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=12), 1,109,1029,1030,111,1026,1037]', '2022-09-11 08:51:59', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (116, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'update', '[Role(roleId=31, roleName=12333, roleKey=12, roleSort=12, status=null, flag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=21), 2,1044,1045,1046,1047]', '2022-09-11 08:52:02', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (117, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'save', '[TestPlanFpa(id=null, testName=中秋节测试123, testCode=null, testBegin=Sun Sep 11 08:53:04 CST 2022, testEnd=Tue Sep 13 08:53:04 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=哈哈哈, flag=null)]', '2022-09-11 08:53:42', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (118, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'delete', '[[Ljava.lang.Integer;@1fde27e4]', '2022-09-11 08:53:50', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (119, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'delete', '[[Ljava.lang.Integer;@6b9cc1c8]', '2022-09-11 08:54:12', '{\"code\":0,\"msg\":\"成功删除了2条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (120, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.TestPlanMhtController', 'delete', '[[Ljava.lang.Integer;@6b34bb4a]', '2022-09-11 08:54:37', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (121, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.sas.TestPlanSasController', 'delete', '[[Ljava.lang.Integer;@727d0f02]', '2022-09-11 09:04:29', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (122, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.sas.TestPlanSasController', 'save', '[TestPlanSas(id=null, testName=哈哈哈, testCode=null, testBegin=Sun Sep 11 09:04:23 CST 2022, testEnd=Tue Sep 13 09:04:23 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=中秋节测试, flag=null)]', '2022-09-11 09:05:13', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (123, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.sas.TestPlanSasController', 'update', '[TestPlanSas(id=15, testName=哈哈哈, testCode=null, testBegin=Sun Sep 11 09:04:23 CST 2022, testEnd=Tue Sep 13 09:04:23 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=中秋节测试, flag=null)]', '2022-09-11 09:15:13', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (124, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.sas.TestPlanSasController', 'delete', '[[Ljava.lang.Integer;@686617a9]', '2022-09-11 09:15:24', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (125, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.scl.TestPlanSclController', 'update', '[TestPlanScl(id=18, testName=12, testCode=null, testBegin=Thu Sep 08 22:20:40 CST 2022, testEnd=Sat Sep 10 22:20:40 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=121, type=null)]', '2022-09-11 09:15:58', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (126, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.scl.TestPlanSclController', 'delete', '[[Ljava.lang.Integer;@7398d977]', '2022-09-11 09:23:01', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (127, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.TestPlanMhtController', 'update', '[TestPlanMht(id=20, testName=qa, testCode=null, testBegin=Fri Sep 02 20:43:00 CST 2022, testEnd=Sat Sep 24 20:44:00 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=111111, type=null)]', '2022-09-11 09:23:45', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (128, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.TestPlanMhtController', 'delete', '[[Ljava.lang.Integer;@25eefb90]', '2022-09-11 09:24:00', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (129, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.TestPlanMhtController', 'delete', '[[Ljava.lang.Integer;@52f3d4fb]', '2022-09-11 09:28:15', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (130, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.TestPlanMhtController', 'delete', '[[Ljava.lang.Integer;@542328c9]', '2022-09-11 09:28:48', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (131, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.TestPlanMhtController', 'save', '[TestPlanMht(id=null, testName=测试, testCode=null, testBegin=Mon Sep 12 18:21:48 CST 2022, testEnd=Wed Sep 14 18:21:48 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=, flag=null)]', '2022-09-12 18:22:05', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (132, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.QuestionSclController', 'saveQuestionScl', '[QuestionScl(id=null, question=123, optionA=12, optionB=12, optionC=121, optionD=21, optionE=2, type=16, status=1, createTime=null, createBy=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-13 09:05:05', '{\"code\":0,\"msg\":\"添加成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (133, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.TestPlanSclController', 'save', '[TestPlanScl(id=null, testName=9.07测试, testCode=null, testBegin=Tue Sep 13 09:07:42 CST 2022, testEnd=Thu Sep 15 09:07:42 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=哈哈, flag=null)]', '2022-09-13 09:08:03', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (134, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=17, testName=中秋节测试1, testCode=null, testBegin=Sat Sep 10 14:58:55 CST 2022, testEnd=Mon Sep 12 14:58:55 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=测试, flag=null)]', '2022-09-13 09:41:21', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (135, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'delete', '[[Ljava.lang.Integer;@38163c55]', '2022-09-13 10:07:33', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (136, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'delete', '[[Ljava.lang.Integer;@3cc374fb]', '2022-09-13 10:07:37', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (137, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.TestPlanFpaController', 'update', '[TestPlanFpa(id=16, testName=中秋节测试, testCode=null, testBegin=Sat Sep 10 14:58:55 CST 2022, testEnd=Wed Sep 14 14:58:55 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=测试, flag=null)]', '2022-09-13 10:08:26', '{\"code\":0,\"msg\":\"更新成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (138, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=21, deptName=广告部12, orderNum=12, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-13 10:18:59', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (139, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=19, deptName=广告部1, orderNum=99, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-13 10:19:09', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (140, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=19, deptName=广告部1, orderNum=99, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-13 10:19:09', '{\"code\":1,\"msg\":\"部门名称重复\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (141, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'deleteDept', '[[Ljava.lang.Integer;@63e6ad9c]', '2022-09-13 10:19:14', '{\"code\":1,\"msg\":\"有关联用户，删除失败\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (142, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'deleteDept', '[[Ljava.lang.Integer;@6903ed25]', '2022-09-13 10:19:17', '{\"code\":1,\"msg\":\"有关联用户，删除失败\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (143, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'deleteDept', '[[Ljava.lang.Integer;@33e92a1b]', '2022-09-13 10:19:21', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (144, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=62, question=123, optionA=31, optionB=13, optionC=31, optionD=13, type=1, status=null, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-13 10:20:10', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (145, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TblQuestionSdsController', 'updateSds', '[QuestionSds(id=40, question=题目添加测试1, optionA=1, optionB=1, optionC=1, optionD=1, type=null, status=0, createTime=null, createBy=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-13 10:34:40', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (146, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TblQuestionSdsController', 'deleteById', '[40]', '2022-09-13 10:34:49', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (147, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TblQuestionSdsController', 'deleteById', '[37]', '2022-09-13 10:34:52', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (148, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'updatePwd', '[Userinfo(userid=3, deptid=null, username=null, email=null, phonenumber=null, sex=null, avatar=null, password=123456, salt=null, status=null, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=null, roleId=null)]', '2022-09-13 10:37:49', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (149, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=5, deptid=11, username=shang1, email=2324@qq.com, phonenumber=12345678901, sex=1, avatar=, password=null, salt=null, status=null, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=567890-, roleId=3)]', '2022-09-13 10:38:10', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (150, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'deleteDept', '[[Ljava.lang.Integer;@2c00c6ac]', '2022-09-13 14:03:00', '{\"code\":1,\"msg\":\"有关联用户，删除失败\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (151, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.sds.ResultSdsController', 'deleteResultSds', '[312]', '2022-09-13 16:59:37', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (152, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.QuestionMhtController', 'save', '[QuestionMht(id=null, question=11, optionTrue=1, optionFalse=0, type=7, status=1, createTime=null, createBy=null, updateTime=null, dictionaryName=null, dictionaryId=null, updateBy=null, flag=null), org.apache.catalina.session.StandardSessionFacade@1542adf8]', '2022-09-14 14:43:32', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (153, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.QuestionMhtController', 'deleteByIds', '[[Ljava.lang.Integer;@695214e4]', '2022-09-14 14:43:39', '{\"code\":0,\"msg\":\"成功删除了1条数据\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (154, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.TestPlanMhtController', 'save', '[TestPlanMht(id=null, testName=ff, testCode=null, testBegin=Wed Sep 14 14:52:30 CST 2022, testEnd=Fri Sep 16 14:52:30 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=\n, flag=null)]', '2022-09-14 14:52:37', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (155, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'update', '[Userinfo(userid=2, deptid=13, username=shang, email=838449693@qq.com, phonenumber=15517198180, sex=0, avatar=https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/73b260c7-c515-4bc8-a92d-08dce8d2900ekeli.jpg, password=null, salt=null, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=中等管理员。。。, roleId=2)]', '2022-09-14 15:32:24', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (156, 'shang', 'shang', '127.0.0.1', 'com.aaa.controller.mht.TestPlanMhtController', 'save', '[TestPlanMht(id=null, testName=ss , testCode=null, testBegin=Wed Sep 14 15:37:43 CST 2022, testEnd=Fri Sep 16 15:37:43 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=, flag=null)]', '2022-09-14 15:37:51', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (157, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'delete', '[[I@47133362]', '2022-09-15 17:04:54', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (158, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'delete', '[[I@5444e24f]', '2022-09-15 17:05:01', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (159, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'delete', '[[I@22570de0]', '2022-09-15 17:05:08', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (160, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'delete', '[[I@1494570b]', '2022-09-15 17:05:33', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (161, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'delete', '[[I@1576ce3e]', '2022-09-15 17:05:40', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (162, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'delete', '[[I@7ca0a28f]', '2022-09-15 17:18:59', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (163, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.ViewTestResultSclController', 'updateReturn', '[ReturnRecords(id=3, testerId=null, testerName=null, phone=null, record=3838383938, testName=null, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=123)]', '2022-09-15 17:43:14', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (164, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.ViewTestResultSclController', 'delete', '[[I@12c06073]', '2022-09-15 17:43:21', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (165, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.ViewTestResultSclController', 'delete', '[[I@6f5e7c3c]', '2022-09-15 17:43:24', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (166, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sas.ViewTestResultSasController', 'delete', '[[I@42658908]', '2022-09-15 17:43:39', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (167, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sas.ViewTestResultSasController', 'delete', '[[I@44d2cf25]', '2022-09-15 17:43:43', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (168, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TestResultSdsController', 'delete', '[[I@7e1493bf]', '2022-09-15 17:44:13', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (169, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TestResultSdsController', 'delete', '[[I@5e850b74]', '2022-09-15 17:44:16', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (170, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'saveReturn', '[ReturnRecords(id=null, testerId=12, testerName=123, phone=12362514258, record=wqeqweqw, testName=25, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=123)]', '2022-09-15 17:56:38', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (171, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.ViewTestResultSclController', 'saveReturn', '[ReturnRecords(id=null, testerId=12, testerName=123, phone=12362514258, record=wqeqweqw, testName=25, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=123)]', '2022-09-15 17:56:44', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (172, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sas.ViewTestResultSasController', 'saveReturn', '[ReturnRecords(id=null, testerId=12, testerName=123, phone=12362514258, record=qweqweqw, testName=25, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=123)]', '2022-09-15 17:56:51', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (173, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TestResultSdsController', 'saveReturn', '[ReturnRecords(id=null, testerId=12, testerName=123, phone=12362514258, record=qweqwewq, testName=25, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=123)]', '2022-09-15 17:56:58', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (174, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TestResultSdsController', 'delete', '[[I@1eb65c2a]', '2022-09-15 18:19:37', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (175, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TestResultSdsController', 'saveReturn', '[ReturnRecords(id=null, testerId=314, testerName=张大炮, phone=16565787672, record=89389398, testName=哈哈, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=)]', '2022-09-15 18:19:43', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (176, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sas.ViewTestResultSasController', 'saveReturn', '[ReturnRecords(id=null, testerId=313, testerName=六六六, phone=14569875638, record=983398389383, testName=sadw1, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=)]', '2022-09-15 18:19:51', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (177, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sas.ViewTestResultSasController', 'delete', '[[I@40affaca]', '2022-09-15 18:19:57', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (178, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.ViewTestResultSclController', 'saveReturn', '[ReturnRecords(id=null, testerId=51, testerName=哈哈哈, phone=17728283839, record=83838636853, testName=9.07测试, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=6)]', '2022-09-15 18:20:07', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (179, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.ViewTestResultSclController', 'delete', '[[I@52cc6c12]', '2022-09-15 18:20:14', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (180, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'saveReturn', '[ReturnRecords(id=null, testerId=321, testerName=, phone=13721417519, record=63836833333333333333333, testName=1232, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=8)]', '2022-09-15 18:20:23', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (181, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'delete', '[[I@2c7fa9e]', '2022-09-15 18:20:32', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (182, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'saveReturn', '[ReturnRecords(id=null, testerId=330, testerName=丫丫, phone=17633974856, record=12e21e12, testName=ff, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=1)]', '2022-09-15 18:21:58', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (183, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'delete', '[[I@3243414d]', '2022-09-15 18:22:03', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (184, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'deleteResult', '[[Ljava.lang.Integer;@3ad53d4d]', '2022-09-15 18:29:58', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (185, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'deleteResult', '[[Ljava.lang.Integer;@40819fd3]', '2022-09-15 18:29:58', '{\"code\":1,\"msg\":\"操作失败\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (186, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'deleteResult', '[[Ljava.lang.Integer;@47f97d83]', '2022-09-15 18:30:37', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (187, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'deleteResult', '[[Ljava.lang.Integer;@1f9b7658]', '2022-09-15 18:34:49', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (188, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TestResultSdsController', 'saveReturn', '[ReturnRecords(id=null, testerId=314, testerName=张大炮, phone=16565787672, record=地位的, testName=哈哈, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=)]', '2022-09-15 19:18:44', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (189, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TestResultSdsController', 'delete', '[[I@4de8269f]', '2022-09-15 19:18:50', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (190, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sds.TestResultSdsController', 'saveReturn', '[ReturnRecords(id=null, testerId=315, testerName=张小炮, phone=16565787673, record=你有病, testName=哈哈, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=)]', '2022-09-15 19:26:27', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (191, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.fpa.QuestionFpaController', 'updateQuestionFpa', '[QuestionFpa(id=1, question=我的人生观是, optionA=A人生的体验越多越好，所以想法很多，有可能就应该多尝试。, optionB=B深度比宽度更重要，目标要谨慎，一旦确定就坚持到底。, optionC=C人生必须有所成。, optionD=D没必要太辛苦，好好活着就行。, type=1, status=1, createTime=null, createBy=null, testBegin=null, updateTime=null, updateBy=null, flag=null)]', '2022-09-16 09:26:53', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (192, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.ViewTestResultSclController', 'saveReturn', '[ReturnRecords(id=null, testerId=51, testerName=哈哈哈, phone=17728283839, record=asdfas, testName=9.07测试, type=null, returnTime=null, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=6)]', '2022-09-16 09:49:20', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (193, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.TestPlanSclController', 'update', '[TestPlanScl(id=19, testName=9.07测试, testCode=null, testBegin=Tue Sep 13 09:07:42 CST 2022, testEnd=Fri Sep 30 09:07:42 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=哈哈, flag=null)]', '2022-09-16 11:29:07', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (194, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'deleteDept', '[[Ljava.lang.Integer;@579f744d]', '2022-09-16 17:48:19', '{\"code\":1,\"msg\":\"有关联用户，删除失败\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (195, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'delete', '[3]', '2022-09-16 17:48:39', '{\"code\":1,\"msg\":\"此数据有关联数据，删除失败\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (196, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'delete', '[3]', '2022-09-16 17:48:44', '{\"code\":1,\"msg\":\"此数据有关联数据，删除失败\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (197, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'delete', '[[Ljava.lang.Integer;@5a4313cd]', '2022-09-16 17:51:59', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (198, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.RoleController', 'delete', '[1]', '2022-09-16 17:52:10', '{\"code\":1,\"msg\":\"此数据有关联数据，删除失败\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (199, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.UserinfoController', 'save', '[Userinfo(userid=null, deptid=11, username=admin, email=838449693@qq.com, phonenumber=15517198180, sex=1, avatar=https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/c3e6b4f9-cb16-4d36-9c18-88aeebdc4e50keli.jpg, password=123456, salt=null, status=null, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null, remark=最高权限, roleId=1)]', '2022-09-16 17:53:06', '{\"code\":0,\"msg\":\"添加成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (200, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.system.DeptController', 'updateDept', '[Dept(deptId=11, deptName=测试部门, orderNum=1, status=1, delFlag=null, createBy=null, createTime=null, updateBy=null, updateTime=null)]', '2022-09-16 18:28:57', '{\"code\":0,\"msg\":\"修改成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (201, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.TestPlanSclController', 'save', '[TestPlanScl(id=null, testName=9.19SCL测试, testCode=null, testBegin=Mon Sep 19 20:47:34 CST 2022, testEnd=Wed Sep 21 20:47:34 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=, flag=null)]', '2022-09-19 20:47:51', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (202, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.scl.ViewTestResultSclController', 'deleteResult', '[[Ljava.lang.Integer;@7a180ef4]', '2022-09-19 21:04:44', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (203, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.sas.TestPlanSasController', 'save', '[TestPlanSas(id=null, testName=我的测试, testCode=null, testBegin=Tue Sep 20 15:15:31 CST 2022, testEnd=Thu Sep 22 15:15:31 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=啊啊啊, flag=null)]', '2022-09-20 15:15:46', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (204, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.TestPlanMhtController', 'save', '[TestPlanMht(id=null, testName=ååå, testCode=null, testBegin=Tue Sep 20 15:21:20 CST 2022, testEnd=Thu Sep 22 15:21:20 CST 2022, createTime=null, createBy=null, updateTime=null, updateBy=null, remark=, flag=null)]', '2022-09-20 15:21:28', '{\"code\":0,\"msg\":\"操作成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (205, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'deleteResult', '[[Ljava.lang.Integer;@13b7c88c]', '2022-09-20 15:27:00', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (206, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'deleteResult', '[[Ljava.lang.Integer;@8efc2ee]', '2022-09-20 15:27:15', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');
INSERT INTO `tbl_log` VALUES (207, 'admin', 'admin', '127.0.0.1', 'com.aaa.controller.mht.ViewTestResultMhtController', 'deleteResult', '[[Ljava.lang.Integer;@19d56efd]', '2022-09-20 15:27:20', '{\"code\":0,\"msg\":\"删除成功\",\"count\":null,\"data\":null}');

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu`  (
  `menu_id` int NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` int NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '菜单状态（1显示 0隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1052 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES (1, '性格测试FPA', 0, 1, '#', 'M', '1', '', 'layui-icon layui-icon-user', 'Enzo', '2018-03-16 11:33:00', '陈建', '2022-06-30 11:01:26', 'FPA性格测试');
INSERT INTO `tbl_menu` VALUES (2, '症状自评SCL', 0, 4, '#', 'M', '1', '', 'layui-icon-water', '', '2022-08-30 11:26:07', '', NULL, 'scl症状自评量表');
INSERT INTO `tbl_menu` VALUES (3, '系统管理', 0, 9, '#', 'M', '1', '', 'layui-icon layui-icon-app', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `tbl_menu` VALUES (4, '心理健康MHT', 0, 5, '#', 'M', '1', '', 'layui-icon layui-icon-dialogue ', '', '2022-08-30 11:26:15', '', NULL, 'mht心理健康测试');
INSERT INTO `tbl_menu` VALUES (5, '日志监控', 0, 10, '#', 'M', '1', '', 'layui-icon layui-icon-log', '', '2021-01-21 17:46:05', NULL, NULL, '日志监控');
INSERT INTO `tbl_menu` VALUES (100, '用户管理', 3, 4, '/user/toShowUserPage.do', 'C', '1', 'system:user:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `tbl_menu` VALUES (101, '角色管理', 3, 2, '/role/toShowRole.do', 'C', '1', 'system:role:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `tbl_menu` VALUES (102, '菜单管理', 3, 3, '/menu/toShowMenu.do', 'C', '1', 'system:menu:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `tbl_menu` VALUES (103, '部门管理', 3, 1, '/dept/toShowDept.do', 'C', '1', 'system:dept:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `tbl_menu` VALUES (109, '题目管理', 1, 1, '/questionFpa/toShowQuestionFpa.do', 'C', '1', 'character:question:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `tbl_menu` VALUES (111, '测试结果', 1, 3, '/viewTestResultFpa/toShowTestResultFpa.do', 'C', '1', 'character:tester:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2022-07-17 17:16:16', '数据监控菜单');
INSERT INTO `tbl_menu` VALUES (204, '回访记录', 2, 5, '/viewTestResultScl/toShowSCLReturn.do', 'C', '0', '', 'layui-icon layui-icon-read', '', NULL, '', NULL, 'scl回访记录');
INSERT INTO `tbl_menu` VALUES (304, '回访记录', 1033, 5, '/viewTestResultSas/toShowSASReturn.do', 'C', '0', '', 'layui-icon layui-icon-read', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (404, '回访记录', 4, 5, '/viewsTestResultMht/toShowMHTReturn.do', 'C', '0', '', 'layui-icon layui-icon-read', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (504, '回访记录', 1035, 5, '/viewTestResultSds/toShowSDSReturn.do', 'C', '0', '', 'layui-icon layui-icon-read', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (1000, '用户查询', 100, 1, '#', 'F', '1', 'system:user:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1001, '用户新增', 100, 2, '#', 'F', '1', 'system:user:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1002, '用户修改', 100, 3, '#', 'F', '1', 'system:user:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2021-12-18 15:15:21', '用户修改');
INSERT INTO `tbl_menu` VALUES (1003, '用户删除', 100, 4, '#', 'F', '1', 'system:user:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1004, '用户导出', 100, 5, '#', 'F', '1', 'system:user:export', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1005, '重置密码', 100, 6, '#', 'F', '1', 'system:user:resetPwd', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1006, '角色查询', 101, 1, '#', 'F', '1', 'system:role:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1007, '角色新增', 101, 2, '#', 'F', '1', 'system:role:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1008, '角色修改', 101, 3, '#', 'F', '1', 'system:role:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1009, '角色删除', 101, 4, '#', 'F', '1', 'system:role:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1010, '角色导出', 101, 5, '#', 'F', '1', 'system:role:export', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1011, '菜单查询', 102, 1, '#', 'F', '1', 'system:menu:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1012, '菜单新增', 102, 2, '#', 'F', '1', 'system:menu:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1013, '菜单修改', 102, 3, '#', 'F', '1', 'system:menu:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1014, '菜单删除', 102, 4, '#', 'F', '1', 'system:menu:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1015, '部门查询', 103, 1, '#', 'F', '1', 'system:dept:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1016, '部门新增', 103, 2, '#', 'F', '1', 'system:dept:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1017, '部门修改', 103, 3, '#', 'F', '1', 'system:dept:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1018, '部门删除', 103, 4, '#', 'F', '1', 'system:dept:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1025, '操作日志', 5, 1, '/log/toShowLog.do', 'C', '1', 'character:log:view', '#', 'Enzo', '2021-01-21 17:48:22', '陈建', '2021-01-27 09:42:08', '登陆日志');
INSERT INTO `tbl_menu` VALUES (1026, '报表统计', 1, 4, '/viewTestResultFpa/toReportFormsFpa.do', 'C', '1', 'bbtj', NULL, '陈建', '2021-07-16 09:50:12', NULL, '2022-07-17 17:16:28', '统计图');
INSERT INTO `tbl_menu` VALUES (1029, '试题新增', 109, 2, '#', 'F', '1', 'character:question:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1030, '试题删除', 109, 3, '#', 'F', '1', 'character:question:delete', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1033, '焦虑测试SAS', 0, 3, '', 'M', '1', '', 'layui-icon-rate', '', '2022-06-30 11:10:47', NULL, NULL, 'sas测试');
INSERT INTO `tbl_menu` VALUES (1034, '题目管理', 1033, 1, '/questionSas/toShowQuestionSas.do', 'C', '1', 'view:question:sas', NULL, '', '2022-06-30 11:15:03', NULL, '2022-07-15 17:25:24', '');
INSERT INTO `tbl_menu` VALUES (1035, '抑郁测试SDS', 0, 2, '', 'M', '1', '', 'layui-icon-face-smile-b ', '', '2022-06-30 11:34:03', NULL, NULL, 'sds抑郁测试');
INSERT INTO `tbl_menu` VALUES (1036, '题目管理', 1035, 1, '/questionSds/toShowQuestionSds.do', 'C', '1', 'view:question:sds', NULL, '', '2022-06-30 11:35:23', NULL, '2022-07-17 16:56:52', '');
INSERT INTO `tbl_menu` VALUES (1037, '测试计划', 1, 2, '/testPlanFpa/toShowTestPlanFpa.do', 'C', '0', 'view:test:plan:fpa', NULL, '', '2022-07-01 11:27:04', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1038, '测试计划', 1033, 2, '/tblTestPlanSas/toShowTestPlanSas.do', 'C', '1', '1', NULL, '', '2022-07-15 17:24:52', NULL, NULL, '测试计划');
INSERT INTO `tbl_menu` VALUES (1039, '测试结果', 1033, 3, '/viewTestResultSas/toShowTestResultSas.do', 'C', '1', '1', NULL, '', '2022-07-15 19:32:56', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1040, '报表统计', 1033, 4, '/viewTestResultSas/toReportFormsSas.do', 'C', '1', '1', NULL, '', '2022-07-15 19:41:27', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1041, '测试计划', 1035, 2, '/tblTestPlanSds/toShowTestPlanSds.do', 'C', '1', '1', NULL, '', '2022-07-17 16:56:46', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1042, '测试结果', 1035, 3, '/viewTestResultSds/toShowTestResultSds.do', 'C', '1', '1', NULL, '', '2022-07-17 16:57:34', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1043, '报表统计', 1035, 4, '/viewTestResultSds/toReportFormsSds.do', 'C', '1', '1', NULL, '', '2022-07-17 16:58:08', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1044, '题目管理', 2, 1, '/questionScl/toShowQuestionScl.do', 'C', '1', '1', '#', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (1045, '测试计划\r\n\r\n', 2, 2, '/testPlanScl/toShowTestPlanScl.do', 'C', '1', '1', '#', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (1046, '测试结果', 2, 3, '/viewTestResultScl/toShowTestResultScl.do', 'C', '1', '1', '#', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (1047, '报表统计', 2, 4, '/viewTestResultScl/toShowReportFormScl.do', 'C', '1', '1', '#', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (1048, '题目管理', 4, 1, '/questionMht/toShowQuestionMht.do', 'C', '1', '1', '#', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (1049, '测试计划', 4, 2, '/testPlanMht/toShowTestPlanMht.do', 'C', '1', '1', '#', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (1050, '测试结果', 4, 3, '/viewsTestResultMht/toShowTestResultMht.do', 'C', '1', '1', '#', '', NULL, '', NULL, '');
INSERT INTO `tbl_menu` VALUES (1051, '报表统计', 4, 4, '/viewsTestResultMht/toReportFormsMht.do', 'C', '1', '1', '#', '', NULL, '', NULL, '');

-- ----------------------------
-- Table structure for tbl_question_fpa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_question_fpa`;
CREATE TABLE `tbl_question_fpa`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '问题编号',
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_a` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_b` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_c` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_d` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` int NULL DEFAULT 0 COMMENT '预留字段',
  `status` int NOT NULL DEFAULT 0 COMMENT '状态（0 不可用，1 可用）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `flag` int NOT NULL DEFAULT 1 COMMENT '逻辑删除（0 代表删除， 1 代表存在）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_question_fpa
-- ----------------------------
INSERT INTO `tbl_question_fpa` VALUES (1, '我的人生观是', 'A人生的体验越多越好，所以想法很多，有可能就应该多尝试。', 'B深度比宽度更重要，目标要谨慎，一旦确定就坚持到底。', 'C人生必须有所成。', 'D没必要太辛苦，好好活着就行。', 1, 1, '2021-11-23 11:13:13', 'zhangsan', '2022-09-16 09:26:52', 'admin', 1);
INSERT INTO `tbl_question_fpa` VALUES (2, '如果野外旅行，在下山返回的路线上，我更在乎：', 'A要好玩有趣，不愿重复，所以宁愿走新路线。', 'B要安全稳妥，担心危险，所以宁愿走原路线。', 'C要挑战自我，喜欢冒险，所以宁愿走新路线。', 'D要方便省心，害怕麻烦，所以宁愿走原路线。', 1, 1, '2021-11-23 11:13:13', 'chenjian', '2022-09-03 13:39:43', 'shang', 1);
INSERT INTO `tbl_question_fpa` VALUES (3, '在表达一件事情上，别人认为我：', 'A总是给人感受到强烈印象。', 'B总是表述极其准确。', 'C总能围绕最终目的。', 'D总能让大家很舒服。', 1, 1, '2021-11-23 11:13:13', 'chenjian', '2021-11-23 11:13:13', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (4, '在生命多数时候，我其实更希望：', 'A刺激。', 'B安全。', 'C挑战。', 'D稳定。', 1, 1, '2021-11-23 11:13:13', 'chenjian', '2022-09-01 15:17:00', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (5, '我认为自己在情感上的基本特点是：', 'A情绪多变，情绪波动大。', 'B外表抑制强，但内心起伏大，一旦挫伤难以平复。', 'C感情不拖泥带水，较直接。', 'D天性四平八稳。', 1, 1, '2021-11-23 11:13:13', 'chenjian', '2021-11-23 11:13:13', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (6, '我认为自己除了工作以外，在人生的控制欲上，我：', 'A谈不上控制欲，却有强烈地感染带动他人的欲望，但自控能力不强。', 'B用规则来保持我的自控和对他人的要求。', 'C内心有控制欲，希望别人服从我。', 'D从不愿去管别人，也不愿别人来管我。', 1, 1, '2021-11-23 11:13:13', 'chenjian', '2022-09-01 15:15:39', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (7, '当与情人交往时，我倾向于：', 'A在一起时就要尽情地欢乐，爱意常会溢于言表。', 'B体贴入微关怀细腻，于对方的需求和变化极其敏感。', 'C帮助对方成长是我最大的责任。', 'D迁就顺从的陪伴者和绝佳的聆听着。', 1, 1, '2021-11-23 11:13:13', 'chenjian', '2021-11-23 11:13:13', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (8, '在人际交往时，我：', 'A心态开放，可快速建立起人际关系。', 'B非常审慎缓慢地深入，一旦认为是朋友便会长久。', 'C希望在人际关系中占据主导地位。', 'D顺其自然，不温不火，相对被动。', 1, 1, '2021-11-23 11:13:14', 'chenjian', '2022-09-03 10:11:33', 'shang', 1);
INSERT INTO `tbl_question_fpa` VALUES (9, '我认为自己的为人', 'A可爱而生机', 'B深沉而内敛', 'C果断而自信', 'D平静而和气', 1, 1, '2021-11-23 11:13:14', 'chenjian', '2022-09-03 17:16:53', 'shang', 1);
INSERT INTO `tbl_question_fpa` VALUES (10, '我完成任务的方式是：', 'A常赶在最后期限前的一刻完成。', 'B自己精确地做，不麻烦别人。', 'C最快速做完，再找下一个任务。', 'D该怎么做就怎么做，需要时从他人处得到帮忙。', 1, 1, '2021-11-23 11:13:14', 'chenjian', '2021-11-23 11:13:14', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (11, '如果有人深深惹恼我，我：', 'A内心手上，当时认为不可能原谅，但最终常会原谅对方。', 'B如此之深的愤怒无法忘记，同时未来避开那个家伙。', 'C每个人都要为他的错误付出相应的代价，内心期望有机会要狠狠的回应。', 'D尽量不摊牌，因为还不到那个地步。', 1, 1, '2021-11-23 11:13:14', 'chenjian', '2021-11-23 11:13:14', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (12, '在人际关系中，我最在意的是：', 'A欢迎。', 'B理解。', 'C尊敬。', 'D接纳。', 1, 1, '2021-11-23 11:13:14', 'chenjian', '2021-11-23 11:13:14', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (13, '在工作上，我表现出更多的是：', 'A热忱，有很多想法且很多灵性。', 'B完美精准且承诺可靠。', 'C坚强而有推动力。', 'D有耐心且适应性强。', 1, 1, '2021-11-23 11:13:14', 'chenjian', '2021-11-23 11:13:14', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (14, '我过往的老师最有可能对我的评价是：', 'A善于表达和抒发情感。', 'B严格保护自己的私密，有时会显得孤独或不合群。', 'C动作敏捷独立，且喜欢自己做事情。', 'D反应度偏低，比较温和。', 1, 1, '2021-11-23 11:13:14', 'chenjian', '2021-11-23 11:13:14', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (15, '朋友对我的评价最有可能的是：', 'A喜欢对朋友倾诉事情，是开心果。', 'B能提出很多问题，且需要许多精细的解说。', 'C解决问题的高手。', 'D总能多听少说。', 1, 1, '2021-11-23 11:13:14', 'chenjian', '2021-11-23 11:13:14', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (16, '在帮助他人的问题上，我倾向于：', 'A我不主动，但若他来找我，那我一定帮。', 'B值得帮助的人就帮。', 'C无关者何必帮，但我若承诺，必完成。', 'D虽无英雄打虎胆，常有自告奋勇心。', 2, 1, '2021-11-23 11:13:14', 'chenjian', '2021-11-23 11:13:14', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (17, '面对他人对自己的赞美，我的本能反应是：', 'A没有赞美也无所谓，得到了也不至于欣喜。', 'B我无须那些没用的赞美，宁可他们欣赏我的能力。', 'C有点怀疑对方是否认真或立即回避很多人的关注。', 'D能得到赞美，总归是一件令人愉悦的事。', 2, 1, '2021-11-23 11:13:15', 'chenjian', '2021-11-23 11:13:15', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (18, '面对生活的现状，我更倾向于：', 'A外面怎样与我无关，我觉得自己这样还行。', 'B这个世界如果我不进步，别人就会进步，所以我需要不停地前进。', 'C在所有的问题未发生前，就该尽量想好所有的可能性。', 'D每天的生活，只要开心快乐最重要。', 2, 1, '2021-11-23 11:13:15', 'chenjian', '2021-11-23 11:13:15', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (19, '对于规则，我内心的态度是：', 'A不愿违反规则，但可能因为松散而无法达到规则要求。', 'B打破规则，希望由自己来制定规则，而不是遵守规则。', 'C严格遵守规则，且竭尽全力做到规则内的最好。', 'D不喜欢被规则束缚，不按规则出牌，会觉得新鲜有趣。', 2, 1, '2021-11-23 11:13:15', 'chenjian', '2021-11-23 11:13:15', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (20, '我认为自己做事上：', 'A慢条斯理，按部就班，能与周围协调一致。', 'B目标明确，集中精力为实现目标而努力，善于抓住核心。', 'C慎重小心，为做好预防及善后，会尽心操劳。', 'D丰富跃动，灵活反应。', 2, 1, '2021-11-23 11:13:15', 'chenjian', '2021-11-23 11:13:15', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (21, '在面对压力时，我比较倾向于选用：', 'A眼不见为净。', 'B压力越大，抵抗力越大。', 'C在自己的内心慢慢地咀嚼消化压力。', 'D本能地回避压力，避不掉就用各种方法发泄出去。', 2, 1, '2021-11-23 11:13:15', 'chenjian', '2021-11-23 11:13:15', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (22, '当结束一段刻骨铭心的感情时，我会：', 'A日子总要过，时间会冲淡一切。', 'B虽然受伤，但一旦下定决心，就会努力把过去的影子甩掉。', 'C深陷悲伤，在相当长的时间里难以自拔，也不愿再接受新的人。', 'D痛不欲生，需要找朋友倾诉，寻求化解之道。', 2, 1, '2021-11-23 11:13:15', 'chenjian', '2021-11-23 11:13:15', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (23, '面对他人的痛苦倾诉，我回顾自己大多数时候本能上倾?', 'A静静地听，认同对方的感受。', 'B作出判断，痛苦没用，要帮助对方解决问题。', 'C给予分析，帮助他分析，安抚他的情绪。', 'D发表自己的评论意见，与对方的情绪共起落。', 2, 1, '2021-11-23 11:13:15', 'chenjian', '2021-11-23 11:13:15', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (24, '我在以下哪个群体中较感满足？', 'A能心平气和，只要大家达成一致。', 'B能简单扼要有结果地彼此展开充分的辩论。', 'C能就一件事有规则、有条理、有步骤、有章法地详细讨论。', 'D能随意无拘束地、开心地自由谈话。', 2, 1, '2021-11-23 11:13:15', 'chenjian', '2021-11-23 11:13:15', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (25, '我觉得工作：', 'A最好没有压力，让我做我熟悉的工作就不错。', 'B是达成人生目标和成就最重要的途径。', 'C要么不做，要做就做到最好。', 'D如果能将乐趣融合在工作中就太棒了，如果是不喜欢的工作就实在没劲。', 2, 1, '2021-11-23 11:13:15', 'chenjian', '2021-11-23 11:13:15', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (26, '如果我是领导，我内心更希望在部属的心目中，我是：', 'A可以亲近的和善于为他们着想的。', 'B有很强的能力和富有领导力的。', 'C公平公正且足以信赖的。', 'D被他们喜欢并且觉得富有感召力的。', 2, 1, '2021-11-23 11:13:16', 'chenjian', '2021-11-23 11:13:16', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (27, '我希望得到的认同方式是：', 'A有无认同都不要影响我。', 'B精英的认同最重要。', 'C我认同的人或我在乎的人认同即可。', 'D希望大家都能认同我。', 2, 1, '2021-11-23 11:13:16', 'chenjian', '2021-11-23 11:13:16', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (28, '当我还是个孩子时，我：', 'A不太会积极尝试新事物，通常比较喜欢旧有的和熟悉的。', 'B是孩子王，大家经常听我的决定。', 'C害羞见生人，有意识地回避。', 'D调皮可爱，在大部分的情况下是多动且热心的。', 2, 1, '2021-11-23 11:13:16', 'chenjian', '2021-11-23 11:13:16', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (29, '如果我是父母，我也许是：', 'A不愿干涉子女或易被说动的。', 'B严厉的或直接给予方向指点的。', 'C用行动代替语言来表示关爱或高要求的。', 'D愿意陪孩子一起玩，孩子的朋友们所喜欢和欢迎的。', 2, 1, '2021-11-23 11:13:16', 'chenjian', '2021-11-23 11:13:16', 'chenjian', 1);
INSERT INTO `tbl_question_fpa` VALUES (30, '以下有四组格言，哪组里符合我感觉的数目最多？', 'A最深刻的真理是最简单和最平凡的。', 'B走自己的路，让人家去说吧。', 'C一个不注意小事的人，永远不会成就大事。', 'D与其在死的时候握着一大把钱，还不如活时活得丰富多彩。', 2, 1, '2021-11-23 11:13:16', 'chenjian', '2022-09-04 18:15:55', 'shang', 1);
INSERT INTO `tbl_question_fpa` VALUES (51, '4567890', '4567890-', '4567890-', '4567890-a', '567890a', 1, 1, '2022-09-03 08:37:47', 'shang', '2022-09-03 10:05:15', 'shang', 0);
INSERT INTO `tbl_question_fpa` VALUES (55, '哈哈哈', '12345', '12345', '12345', '12345', 2, 1, '2022-09-04 17:47:29', 'shang', NULL, NULL, 0);
INSERT INTO `tbl_question_fpa` VALUES (56, '哈哈哈', '34567', '345678', '45678', '45678', 1, 1, '2022-09-04 17:49:55', 'shang', NULL, NULL, 0);
INSERT INTO `tbl_question_fpa` VALUES (57, '12', '123', '123', '123', '23', 1, 0, '2022-09-06 16:48:01', 'shang', '2022-09-10 18:48:44', 'shang', 1);
INSERT INTO `tbl_question_fpa` VALUES (60, '12', '12', '1212', '12', '1', 1, 0, '2022-09-08 19:16:31', 'shang', '2022-09-10 18:48:51', 'shang', 1);
INSERT INTO `tbl_question_fpa` VALUES (61, '123', '12', '12', '12', '21', 1, 1, '2022-09-10 14:58:22', 'admin', '2022-09-10 16:03:28', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (62, '123', '31', '13', '31', '13', 1, 0, '2022-09-10 18:56:31', 'shang', '2022-09-13 10:20:10', 'admin', 1);

-- ----------------------------
-- Table structure for tbl_question_mht
-- ----------------------------
DROP TABLE IF EXISTS `tbl_question_mht`;
CREATE TABLE `tbl_question_mht`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '问题编号',
  `question` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_true` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `option_false` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `type` int NULL DEFAULT 0,
  `status` int NULL DEFAULT 1,
  `create_time` datetime NULL DEFAULT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tbl_question_mht_id_uindex`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '心理健康诊断测验' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_question_mht
-- ----------------------------
INSERT INTO `tbl_question_mht` VALUES (1, '你晚上要睡觉时，是否总想着明天的功课? ', '1', '0', 8, 1, '2022-08-29 18:36:27', 'wangzihao', '2022-08-29 18:36:44', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (2, '老师向全班提问时，你是否会觉得是在问自己而感到不安?', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (3, '你是否一听说“要考试”心里就紧张。', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (4, '你考试成绩不好时，心里是否感到很不快?', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (5, '你学习成绩不好时。是否总是提心吊胆?', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (6, '你考试时，想不起原先掌握的知识时，是否会感到紧张不安? ', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (7, '你考试后没有知道成绩之前，是否总是放心不下?', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (8, '你是否一遇到考试，就担心会考坏?', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (9, '你是否希望每次考试都能顺利? ', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (10, '你在没有完成任务之前，是否总担心完不成任务', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (11, '你当着大家面朗读课文时，是否总是怕读错?', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (12, '你是否认为学校里得到的学习成绩总是不大可靠?', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (13, '你是否认为你比别人更担心学习?', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (14, '你是否做过考试考坏了的梦? ', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (15, '你是否做过学习成绩不好时，受到爸爸妈妈或老师训斥的梦? ', '1', '0', 8, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (16, '你是否经常觉得有同学在背后说你的坏话?', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (17, '你受到父母批评后，是否总是想不开，放在心上? ', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (18, '你在游戏或与别人的竞争中输给了对方，是否就不想再干了', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (19, '人家在背后议论你，你是否感到讨厌?', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (20, '你在大家面前或被老师提问时，是否会脸红?', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (21, '你是否很担心叫你担任班级工作?', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (22, '你是否总是觉得好像有人在注意你? ', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (23, '你在工作或学习时如果有人在注意你，你心里是否会紧张?', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (24, '你受到批评时心情是否不愉快', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (25, '你受到老师批评时，心里是否总是不安?', '1', '0', 9, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (26, '同学们在笑时你是否也不大会笑?', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (27, '你是否觉得到同学家里去玩时不如在自己家里玩?', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (28, '你和大家在一起时是否也觉得自己是孤单的一个人', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (29, '你是否觉得和同学一起玩，不如自己—个人玩?', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (30, '同学们在交谈时，你是否不想加入?', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (31, '你和大家在—起时，是否觉得自己是多余的人?', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (32, '你是否讨厌参加运动会和文艺演出?', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (33, '你的朋友是否很少?', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (34, '你是否不喜欢同别人谈话', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (35, '在人多的地方你是否觉得很怕?', '1', '0', 10, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (36, '你在参加排球、篮球等集体比赛输了时心里是否一直认为自己没做好？', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (37, '你受到批评后是否总认为是自己不好?', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (38, '别人笑你的时候你是否会认为是自己做错了什么事?', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (39, '你学习成绩不好时是否总是认为是自己不用功的缘故', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (40, '你做事失败的时候是否总是认为是自己的责任?', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (41, '大家受到责备时你是否认为主要是自己的过错?', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (42, '你参加乒乓球、羽毛球、广播操等体育比赛时是否一出错就特别留神？', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (43, '碰到为难的事情时你是否认为自己难以应付?', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (44, '你是否有时会后悔“那件事不做就好了”?', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (45, '你和同学吵架以后是否总是认为是自己的错?', '1', '0', 11, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (46, '你心里是否总想为班级做点好事?', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (47, '你学习的时候思想是否经常开小差?', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (48, '你把东西借给别人时是否担心别人会把东西弄坏?', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (49, '碰到不顺利的事情时，你心里是否很烦躁?', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (50, '你是否非常担心家里有人生病或死去?', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (51, '你是否在梦里见到过死去的人', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (52, '你对收音机和汽车的声音是否特别敏感?', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (53, '你心里是否总觉得好像有什么事没有做好?', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (54, '你是否总担心会发生什么意外的事', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (55, '你在决定要做什么事时，是否总是犹豫不决?', '1', '0', 12, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (56, '你手上是否经常出汗?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (57, '你害羞时是否会脸红?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (58, '你是否经常头痛?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (59, '你被老师提问时，心里是否总是很紧张?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (60, '你没有参加运动，心脏是否经常扑腾扑腾地跳?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (61, '你是否很容易疲劳?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (62, '你是否很不愿吃药?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (63, '夜里你是否很难入睡?', '1', '0', 13, 1, '2022-08-29 16:18:44', 'xiao', '2022-08-29 19:07:53', NULL, 1);
INSERT INTO `tbl_question_mht` VALUES (64, '你是否总觉得身体好像有什么毛病?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (65, '你是否经常认为自己的体型和面孔比别人难看?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (66, '你是否经常觉得肠胃不好?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (67, '你是否经常咬指甲?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (68, '你是否经常舔手指头?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (69, '你是否经常感到呼吸困难?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (70, '你去厕所的次数是否比别人多?', '1', '0', 13, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (71, '你是否很怕到高的地方去?', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (72, '你是否害怕很多东西?', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (73, '你是否经常做噩梦?', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (74, '你胆子是否很小', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (75, '夜里，你是否很怕一个人在房间里睡觉?', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (76, '你乘车穿过隧道或路过高桥时，是否很怕?', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (77, '你是否喜欢整夜开着灯睡觉?', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (78, '你听到打雷声是否非常害怕?', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (79, '你是否非常害怕黑暗?', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (80, '你是否经常感到后面有人跟着你?', '1', '0', 14, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (81, '你是否经常生气?', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (82, '你是否不想得到好的成绩?', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (83, '你是否经常会突然想哭?', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (84, '你以前是否说过谎话?', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (85, '你有时是否会觉得还是死了好', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (86, '你是否一次也没有失约过?', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (87, '你是否经常想大声喊叫?', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (88, '你是否能保密别人不让说的事?', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (89, '你有时是否想过自己一个人到远的地方去?', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (90, '你是否总是很有礼貌?', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (91, '你被人说了坏话，是否想立即采取报复行动?', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (92, '老师或父母说的话你是否都照办?', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (93, '你心里不开心，是否会乱丢、乱砸东西', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (94, '你是否发过怒?', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (95, '你想要的东西，是否就—定要拿到手?', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (96, '你不喜欢的功课老师提前下课你是否会感到特别高兴', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (97, '你是否经常想从高的地方跳下来?', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (98, '你是否无论对谁都很亲热?', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (99, '你是否会经常急躁得坐立不安?', '1', '0', 15, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);
INSERT INTO `tbl_question_mht` VALUES (100, '对不认识的人，你是否会都喜欢?', '1', '0', 7, 1, '2022-08-29 19:07:53', 'wangzihao', '2022-08-29 19:07:53', 'wangzihao', 1);

-- ----------------------------
-- Table structure for tbl_question_sas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_question_sas`;
CREATE TABLE `tbl_question_sas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_a` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_b` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_c` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_d` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `flag` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_question_sas
-- ----------------------------
INSERT INTO `tbl_question_sas` VALUES (1, '我觉得比平常容易紧张或着急', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', '2022-09-14 14:42:03', 'shang', 1);
INSERT INTO `tbl_question_sas` VALUES (2, '我无缘无故地感到害怕', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', '2022-07-22 20:48:20', 'feng', 1);
INSERT INTO `tbl_question_sas` VALUES (3, '我容易心里烦乱或觉得惊恐', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', '2022-07-22 20:48:24', 'feng', 1);
INSERT INTO `tbl_question_sas` VALUES (4, '我觉得我可能将要发疯', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (5, '我觉得一切都很好，也不会发生什么不幸', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 4, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (6, '我手脚发抖打颤', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (7, '我因为头痛、颈痛和背痛而苦恼', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', '2022-09-16 09:50:13', 'admin', 1);
INSERT INTO `tbl_question_sas` VALUES (8, '我感觉容易衰弱和疲乏', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (9, ' 我得心平气和，并且容易安静坐着', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 4, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (10, '我觉得心跳得很快', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (11, '我因为一阵阵头晕而苦恼', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (12, '我有晕倒发作，或觉得要晕倒似的', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (13, '我吸气呼气都感到很容易', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 4, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (14, '我的手脚麻木和刺痛', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', '2022-09-14 14:41:55', 'shang', 1);
INSERT INTO `tbl_question_sas` VALUES (15, '我因为胃痛和消化不良而苦恼', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (16, '我常常要小便', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (17, '我的手脚常常是干燥温暖的', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (18, '我脸红发热', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (19, '我容易入睡并且一夜睡得很好', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 4, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (20, '我做恶梦', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 3, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (31, 'dffgg', 'dfgsdfgs', 'dsfsdf', 'sdfsdf', 'sdfsdf', 3, 0, '2022-07-15 16:59:12', 'feng', NULL, NULL, 0);

-- ----------------------------
-- Table structure for tbl_question_scl
-- ----------------------------
DROP TABLE IF EXISTS `tbl_question_scl`;
CREATE TABLE `tbl_question_scl`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_a` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_b` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_c` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_d` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_e` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT 1,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `flag` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_question_scl
-- ----------------------------
INSERT INTO `tbl_question_scl` VALUES (1, '头痛', '1', '2', '3', '4', '5', 16, 1, '2022-07-15 21:08:19', 'feng', '2022-09-08 08:59:19', 'shang', 1);
INSERT INTO `tbl_question_scl` VALUES (2, '神经过敏，心中不踏实', '1', '2', '3', '4', '5', 20, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (3, '头脑中有不必要的想法或字句盘旋', '1', '2', '3', '4', '5', 17, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (4, '头晕或晕倒', '1', '2', '3', '4', '5', 16, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (5, '对异性的兴趣减退', '1', '2', '3', '4', '5', 19, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (6, '对旁人责备求全', '1', '2', '3', '4', '5', 18, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (7, '感到别人能控制您的思想', '1', '2', '3', '4', '5', 24, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (8, '责怪别人制造麻烦', '1', '2', '3', '4', '5', 23, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (9, '忘性大', '1', '2', '3', '4', '5', 17, 1, '2022-07-15 21:08:19', 'feng', '2022-09-04 20:14:40', 'shang', 1);
INSERT INTO `tbl_question_scl` VALUES (10, '担心自己的衣饰整齐及仪态的端正', '1', '2', '3', '4', '5', 17, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (11, '容易烦恼和激动', '1', '2', '3', '4', '5', 21, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (12, '胸痛', '1', '2', '3', '4', '5', 16, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (13, '害怕空旷的场所或街道', '1', '2', '3', '4', '5', 22, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (14, '感到自己的精力下降，活动减慢', '1', '2', '3', '4', '5', 19, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (15, '想结束自己的生命', '1', '2', '3', '4', '5', 19, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (16, '听到旁人听不到的声音', '1', '2', '3', '4', '5', 24, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (17, '发抖', '1', '2', '3', '4', '5', 20, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (18, '感到大多数人都不可信任', '1', '2', '3', '4', '5', 23, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (19, '胃口不好', '1', '2', '3', '4', '5', 25, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (20, '容易哭泣', '1', '2', '3', '4', '5', 19, 1, '2022-07-15 21:08:19', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (21, '同异性相处时感到害羞不自在', '1', '2', '3', '4', '5', 18, 1, '2022-07-15 21:12:42', 'feng', '2022-07-15 21:12:49', 'feng', 1);
INSERT INTO `tbl_question_scl` VALUES (22, '感到受骗，中了圈套或有人想抓住您', '1', '2', '3', '4', '5', 19, 1, '2022-07-15 21:13:01', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (23, '无缘无故地突然感到害怕', '1', '2', '3', '4', '5', 20, 1, '2022-07-15 21:13:08', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (24, '自己不能控制地大发脾气', '1', '2', '3', '4', '5', 21, 1, '2022-07-17 17:07:36', 'feng', '2022-07-17 17:07:43', 'feng', 1);
INSERT INTO `tbl_question_scl` VALUES (25, '怕单独出门', '1', '2', '3', '4', '5', 22, 1, '2022-08-29 17:14:03', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (26, ' 经常责怪自己', '1', '2', '3', '4', '5', 19, 1, '2022-08-29 17:14:05', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (27, '腰痛', '1', '2', '3', '4', '5', 16, 1, '2022-08-29 17:14:07', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (28, '感到难以完成任务', '1', '2', '3', '4', '5', 17, 1, '2022-08-29 17:14:08', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (29, '感到孤独', '1', '2', '3', '4', '5', 19, 1, '2022-08-29 17:14:11', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (30, '感到苦闷', '1', '2', '3', '4', '5', 19, 1, '2022-08-29 17:14:14', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (31, '过分担忧', '1', '2', '3', '4', '5', 19, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (32, '对事物不感兴趣', '1', '2', '3', '4', '5', 19, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (33, '感到害怕', '1', '2', '3', '4', '5', 20, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (34, '您的感情容易受到伤害', '1', '2', '3', '4', '5', 18, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (35, '旁人能知道您的私下想法', '1', '2', '3', '4', '5', 24, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (36, '感到别人不理解您、不同情您', '1', '2', '3', '4', '5', 18, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (37, '感到人们对您不友好，不喜欢您', '1', '2', '3', '4', '5', 18, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (38, '做事必须做得很慢以保证做得正确', '1', '2', '3', '4', '5', 17, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (39, '心跳得很厉害', '1', '2', '3', '4', '5', 20, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (40, '恶心或胃部不舒服', '1', '2', '3', '4', '5', 16, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (41, '感到比不上他人', '1', '2', '3', '4', '5', 18, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (42, '肌肉酸痛', '1', '2', '3', '4', '5', 16, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (43, '感到有人在监视您、谈论您', '1', '2', '3', '4', '5', 23, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (44, '难以入睡', '1', '2', '3', '4', '5', 25, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (45, '做事必须反复检查', '1', '2', '3', '4', '5', 17, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (46, '难以做出决定', '1', '2', '3', '4', '5', 17, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (47, '怕乘电车、公共汽车、地铁或火车', '1', '2', '3', '4', '5', 22, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (48, '呼吸有困难', '1', '2', '3', '4', '5', 16, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (49, '一阵阵发冷或发热', '1', '2', '3', '4', '5', 16, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (50, '因为感到害怕而避开某些东西、场合或活动', '1', '2', '3', '4', '5', 22, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (51, '脑子变空了', '1', '2', '3', '4', '5', 17, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (52, '身体发麻或刺痛', '1', '2', '3', '4', '5', 16, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (53, '喉咙有梗塞感', '1', '2', '3', '4', '5', 16, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (54, '感到前途没有希望', '1', '2', '3', '4', '5', 19, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (55, '不能集中注意力', '1', '2', '3', '4', '5', 17, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (56, '感到身体的某一部分软弱无力', '1', '2', '3', '4', '5', 16, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (57, '感到紧张或容易紧张', '1', '2', '3', '4', '5', 20, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (58, '感到手或脚发重', '1', '2', '3', '4', '5', 16, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (59, '想到死亡的事', '1', '2', '3', '4', '5', 25, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (60, '吃得太多', '1', '2', '3', '4', '5', 25, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (61, '当别人看着您或谈论您时感到不自在', '1', '2', '3', '4', '5', 18, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (62, '有一些不属于您自己的想法', '1', '2', '3', '4', '5', 24, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (63, '有想打人或伤害他人的冲动', '1', '2', '3', '4', '5', 21, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (64, '醒得太早', '1', '2', '3', '4', '5', 25, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (65, '必须反复洗手、点数', '1', '2', '3', '4', '5', 17, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (66, '睡得不稳不深', '1', '2', '3', '4', '5', 25, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (67, '有想摔坏或破坏东西的想法', '1', '2', '3', '4', '5', 21, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (68, '有一些别人没有的想法', '1', '2', '3', '4', '5', 23, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (69, '感到对别人神经过敏', '1', '2', '3', '4', '5', 18, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (70, '在商店或电影院等人多的地方感到不自在', '1', '2', '3', '4', '5', 22, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (71, '感到任何事情都很困难', '1', '2', '3', '4', '5', 19, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (72, '一阵阵恐惧或惊恐', '1', '2', '3', '4', '5', 20, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (73, '感到公共场合吃东西很不舒服', '1', '2', '3', '4', '5', 18, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (74, '经常与人争论', '1', '2', '3', '4', '5', 21, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (75, '单独一人时神经很紧张', '1', '2', '3', '4', '5', 22, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (76, '别人对您的成绩没有做出恰当的评价', '1', '2', '3', '4', '5', 23, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (77, '即使和别人在一起也感到孤单', '1', '2', '3', '4', '5', 24, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (78, '感到坐立不安心神不定', '1', '2', '3', '4', '5', 20, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (79, '感到自己没有什么价值', '1', '2', '3', '4', '5', 19, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (80, '感到熟悉的东西变成陌生或不像是真的', '1', '2', '3', '4', '5', 20, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (81, '大叫或摔东西', '1', '2', '3', '4', '5', 21, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (82, '害怕会在公共场合晕倒', '1', '2', '3', '4', '5', 22, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (83, '感到别人想占您的便宜', '1', '2', '3', '4', '5', 23, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (84, '为一些有关性的想法而很苦恼', '1', '2', '3', '4', '5', 24, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (85, '您认为应该因为自己的过错而受到惩罚', '1', '2', '3', '4', '5', 24, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (86, '感到要很快把事情做完', '1', '2', '3', '4', '5', 20, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (87, '感到自己的身体有严重问题', '1', '2', '3', '4', '5', 24, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (88, '从未感到和其他人很亲近', '1', '2', '3', '4', '5', 24, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (89, '感到自己有罪', '1', '2', '3', '4', '5', 25, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (90, '感到自己的脑子有毛病', '1', '2', '3', '4', '5', 24, 1, NULL, 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_scl` VALUES (96, '1', '1', '1', '1', '12', '1', 1, 1, '2022-09-09 15:29:07', 'admin', '2022-09-09 15:30:18', 'admin', 0);
INSERT INTO `tbl_question_scl` VALUES (97, '1', '1', '1', '1', '1', '1', 20, 1, '2022-09-09 15:35:59', 'admin', '2022-09-09 15:36:06', 'admin', 0);
INSERT INTO `tbl_question_scl` VALUES (98, '12', '12', '12', '12', '21', '21', 21, 0, '2022-09-13 09:04:30', NULL, '2022-09-13 09:05:34', 'admin', 1);
INSERT INTO `tbl_question_scl` VALUES (99, '123', '12', '12', '121', '21', '2', 16, 0, '2022-09-13 09:05:05', 'admin', '2022-09-19 19:58:06', 'admin', 1);

-- ----------------------------
-- Table structure for tbl_question_sds
-- ----------------------------
DROP TABLE IF EXISTS `tbl_question_sds`;
CREATE TABLE `tbl_question_sds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_a` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_b` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_c` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_d` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `flag` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_question_sds
-- ----------------------------
INSERT INTO `tbl_question_sds` VALUES (1, '我觉得闷闷不乐，情绪低沉', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', '2022-09-08 22:14:41', 'shang', 0);
INSERT INTO `tbl_question_sds` VALUES (2, '我觉得一天之中早晨最好', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (3, '我一阵阵地哭出来或是想哭', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (4, '我晚上睡眠不好', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (5, '吃得跟平常一样多', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 6, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (6, '我与异性接触时和以往样感到愉快', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 6, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (7, '我发觉我的体重在下降', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (8, '我有便秘的苦恼', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (9, ' 我心跳比平时快', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', '2022-07-17 15:39:53', 'feng', 0);
INSERT INTO `tbl_question_sds` VALUES (10, '我无缘无故感到疲乏', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (11, '我的头脑和平时一样清楚', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 6, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (12, '我觉得经常做的事情并没有困难', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 6, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (13, '我坐立不安，难以保持平静', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (14, '我对将来抱有希望', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (15, '我比平常容易生气激动', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (16, '我觉得做出决定是容易的', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 6, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (17, '我觉得自己是个有用的人，有人需要我', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 6, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (18, '我的生活过得很有意思', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 6, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (19, '我认为如果我死了别人会生活得好些', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 5, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (20, '平常感兴趣的事我仍然感兴趣', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 6, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (31, '撒的', '手动阀手动阀', '大幅上升', '大师傅士大夫', '撒打发色的', 5, 0, '2022-07-15 21:12:42', 'feng', '2022-07-15 21:12:49', 'feng', 1);
INSERT INTO `tbl_question_sds` VALUES (32, '士大夫但是鬼斧神工', '收到贵司的', '士大夫', '的说法是', '士大夫', 5, 0, '2022-07-15 21:13:01', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sds` VALUES (33, '撒旦飞洒', '的说法是', '士大夫', '得分', '方式', 5, 0, '2022-07-15 21:13:08', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sds` VALUES (34, 'dsfdffff', 'aaaaaaaaa', 'sdfsdf', 'sdfsdf', 'sdddd', 5, 0, '2022-07-17 17:07:36', 'feng', '2022-09-08 22:15:07', 'shang', 1);
INSERT INTO `tbl_question_sds` VALUES (35, '12211', '2111', '2', '21', '21', 5, 0, '2022-09-09 08:24:58', NULL, '2022-09-09 08:25:12', 'shang', 1);
INSERT INTO `tbl_question_sds` VALUES (36, '1232', '1', '1', '1', '2', 6, 0, '2022-09-09 10:40:02', NULL, NULL, NULL, 1);
INSERT INTO `tbl_question_sds` VALUES (37, '我想试下x', '1', '1', '1', '1', 5, 0, '2022-09-09 10:57:31', NULL, '2022-09-09 10:57:49', 'shang', 1);
INSERT INTO `tbl_question_sds` VALUES (38, '1', '1', '1', '1', '1', 5, 0, '2022-09-09 11:03:24', NULL, NULL, NULL, 1);
INSERT INTO `tbl_question_sds` VALUES (39, '11', '11', '1', '1', '1', 5, 0, '2022-09-09 11:06:13', 'shang', NULL, NULL, 1);
INSERT INTO `tbl_question_sds` VALUES (40, '题目添加测试1', '1', '1', '1', '1', 5, 0, '2022-09-09 14:37:08', 'shang', '2022-09-13 10:34:40', 'admin', 1);

-- ----------------------------
-- Table structure for tbl_result_div
-- ----------------------------
DROP TABLE IF EXISTS `tbl_result_div`;
CREATE TABLE `tbl_result_div`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `div1` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div2` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div3` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_result_div
-- ----------------------------
INSERT INTO `tbl_result_div` VALUES (1, '<p style=\"font-size: 30px;color: #41464B;\">您的性格是黄色性格</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">行动迅速 死不认错</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">善于忠告 控制欲强</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">不感情用事 咄咄逼人</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">坚持不懈 容易发怒</p>', '<p style=\"font-size: 30px\">【性格优势】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">不达目标，誓不罢休。不停地给自己设定目标以推动前进。把生命当成竞赛。行动迅速，活力充沛。意志坚强。自信、不情绪化，而且非常有活力。坦率，直截了当，一针见血。强烈的进取心，居安思危。独立性强。有强烈的求胜欲。不畏强权并敢于冒险。不易气馁，不在乎外界的评价，坚持自己所选择的道路和方向。危难时刻挺身而出。讲究速度和效率。敢于接受挑战并渴望成功。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">以务实的方式主导会谈。喜欢主导整个事情进行的方式。能够直接抓住问题的本质。说话用字简明扼要，不喜欢拐弯抹角。不受情绪干扰和控制。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">给予解决问题的方法，而非纠缠在过去。迅速提出忠告和方向。直言不讳地提出建议。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">动作干净利落，讲求效率。能够承担长期高强度的压力。强烈的目标趋向，善于设定目标。高瞻远瞩，有全局观念。善于委派工作。坚持不懈，促成活动。掌握重点执行。行事作风明快。天生的领导者和富有组织能力。竞争越强，精力越旺，愈挫愈勇。寻求实际的解决方法。以结果和完成任务为导向，并且高效率。善于快速决策并处理所遇到的一切问题。富有责任感。</p>\r\n                ', '<p style=\"font-size: 30px\">【性格过当】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">自己永远是对的，死不认错。趾高气扬，霸道。只关注自己的感受，不体贴别人的心情和想法。以自我为中心，自私倾向。霸道。脾气暴躁，容易发怒。缺少同情心。傲慢自大，目中无人。经常紧绷自己的情绪。在情绪不佳或有压力的时候，经常会不可理喻与独断专行。不喜欢受群体所规范约束,打破既定规则且自己不遵守规则。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">喜欢争辩和冲突。铁石心肠，对情绪表现冷淡。粗线条，简单粗暴。毫无敏感，无力洞察他人内心和理解他人所想。抗拒批评，严酷且自以为是的审判者。缺乏亲密分享的能力。缺乏耐心，是非常糟糕的倾听者。态度尖锐严厉，批判性强。容易让他人的工作或生活步调紧张。不习惯赞美别人。说话有时咄咄逼人。控制欲强。不太能体谅他人，对行事模式不同的人缺少包容度。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">大多时候仅保持理性的友谊。讨厌与犹豫不决、能力弱的人互动。试图控制和影响大家的活动，希望他人服从自己而非配合别人。除了工作内容，很少交谈其它话题。情感上习惯与人保持一定的距离。很少对人流露出直接诚挚的关怀。需要你的时候才找你。为别人做主。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">生活在无尽的工作当中而不是人群中。数量远比质量重要。目标没有完成时，容易发怒且迁怒于人。寻求更多的权力，有极强的控制欲。拒绝为自己和他人放松。完成工作第一，人的事情第二。为了自己的面子，不妥协且毫不认错。对于竞争结果过分关注而忽略过程中的乐趣。武断，刚愎自用且一意孤行。很难慢下来，缺少生命乐趣的工作狂。未明察就急于改变，急于求成。</p>\r\n                ');
INSERT INTO `tbl_result_div` VALUES (2, ' <p style=\"font-size: 30px;color: #41464B;\">您的性格是红色性格</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">积极乐观 情绪波动大起大落</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">真诚主动 开玩笑不分场合</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">善于表达 疏于兑现承诺</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">富有感染力 这山望着那山高</p>', '<p style=\"font-size: 30px\">【性格优势】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">高度乐观的积极心态。喜欢自己，也容易接纳别人。把生命当作值得享受的经验。喜欢新鲜、变化和刺激。经常开心，追求快乐。情感丰富而外露。自由自在，不受拘束。喜欢开玩笑和调侃。别出心裁，与众不同。表现力强。容易受到人们的喜欢和欢迎。生动活泼，好奇心强。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">才思敏捷，善于表达。喜欢通过肢体上的接触传达亲密情感。容易与人攀谈。发生冲突时，能直接表白。人越多越亢奋。演讲和舞台表演的高手。乐于表达自己的看法。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">真诚主动，热情洋溢。喜欢交友，善于与陌生人互动。擅长搞笑，是带来乐趣的伙伴。容易原谅自己和别人，不记仇。富有个人魅力。乐于助人。有错就认，很快道歉。喜欢接受别人的肯定和不吝赞美。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">工作主动，寻找新任务。富有感染力，能够吸引他人参与。激发团队的热情合作心和进取心，重视团队合作的感觉。令人愉悦的工作伙伴。完成短期目标时，极富爆发力。信任他人。善于赞美和鼓励，是天生的激励者。不喜欢太多的规定束缚，富有创意。工作以活泼化、丰富化的方式进行。反应快，闪电般开始。</p>', '<p style=\"font-size: 30px\">【性格过当】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">情绪波动大起大落。变化无常，随意性强。鲁莽冲动，轻信他人，容易上当受骗。虚荣心强，不肯吃苦，贪图享受。喜欢走捷径，虎头蛇尾，不能坚持。粗心大意，杂乱无章。不肯承担责任，期待有别人为自己的人生负责。缺乏自控，毫无纪律。容易原谅自己，不吸取教训。不稳定和散漫。拒绝长大。借放纵来麻痹自己的痛苦和烦恼，而不去认真思考生命的本质。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">说话少经大脑思考，脱口而出。对于严肃和敏感的事情也会开玩笑。炫耀自己，夺人话题。注意力分散，不能专注倾听，插话。吹牛不打草稿，疏于兑现承诺。忘记别人说过什么，自己讲过的话也经常重复。口无遮拦，不保守秘密。不可靠，光说不练。夸大吹嘘自己的成功。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">缺少分寸，过度的玩笑和热情。只想当主角。谈论自己感兴趣的话题，对和自己无关的话题心不在焉。插嘴打断别人谈话。健忘多变。经常会忘记老朋友。有极强的依赖性，脆弱而不能独立。好心办坏事。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">跳槽频率高，这山望着那山高。没有规划，随意性强。没有焦点，把精力分散在太多的不同方向。过高估计了自己的能力。觉得没有必要为未来做准备。不肯花更大的精力和幕后工作的勤奋代价，来获取更高的殊荣。不切实际地希望所有的工作都要有趣味。很难全神贯注，经常性地走神。异想天开，难以预料。</p>');
INSERT INTO `tbl_result_div` VALUES (3, ' <p style=\"font-size: 30px;color: #41464B;\">您的性格是蓝色性格</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">思想深邃 情感脆弱</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">默默关怀他人 喜好批判和挑剔</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">敏感而细腻 不主动与人沟通</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">计划性强 患得患失</p>', '<p style=\"font-size: 30px\">【性格优势】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">严肃的生活哲学。思想深邃，独立思考而不盲目从众。沉默寡言，老成持重。注重承诺，可靠安全。谨慎而深藏不露。坚守原则，责任心强。遵守规则，井井有条。深沉有目标的理想主义。敏感细腻。高标准，追求完美。谦和稳健。善于分析，富有条理。待人忠诚，富有自我牺牲精神。深思熟虑，三思而后行。坚韧执着。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">享受敏感而有深度的交流。设身处地地体会他人。能记住谈话时共鸣的感情和思想。喜欢小群体交流的思想碰撞。关注谈话的细节。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">默默地为他人付出以表示关切和爱。对友谊忠诚不渝。真诚关怀朋友的境遇，善于体贴他人。能够记得特殊的日子。遭遇难关时，极力给予鼓舞安慰。很少向他人表达内心的看法。经常扮演解决分析问题的角色。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">强调制度、程序、规范、细节和流程。做事之前首先计划且严格按照计划去执行。喜欢探究及根据事实行事。尽忠职守，追求卓越。高度自律。喜欢用表格、数字的管理来验证效果。注重承诺。一丝不苟地执行工作。</p>', '<p style=\"font-size: 30px\">【性格过当】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">高度负面的情绪化。猜忌心重，不信任他人。太在意别人的看法和评价，容易被负面评价中伤。容易沮丧，悲观消极。陷于低落的情绪无法自拔。情感脆弱抑郁，有自怜倾向。杞人忧天，庸人自扰。最容易的抑郁症患者。当别人轻易成功时，会因自己的努力付出却不如他人而心生嫉妒。过于阴沉的面孔，让人感觉压抑，不易接近。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">不知不觉地说教和上纲上线。原则性强，不易妥协。强烈期待别人具有敏感度和深度能够理解自己。以为别人能够读懂自己的心思。不太主动与人沟通。不喜欢制造困扰麻烦给别人，也讨厌别人制造困扰麻烦给自己。要真诚开放心胸与人互动会比较难。习惯以防卫的状态面对别人。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">过度敏感，有时很难相处。强烈的不安全感。远离人群。喜好批判和挑剔。吝于宽恕。经常怀疑别人的话，不容易相信他人。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">对自己和他人常寄予过高而且不切实际的期望。过度计划和过度绸缪。患得患失，行动缓慢。较真，挑剔他人及自己的表现。专注于小细节，因小失大。吝啬表扬，强烈的形式主义。容易被不理想的成绩击垮斗志。墨守成规，死板教条不懂变通。为了维护原则缺乏妥协精神。</p>');
INSERT INTO `tbl_result_div` VALUES (4, '<p style=\"font-size: 30px;color: #41464B;\">您的性格是绿色性格</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">温柔祥和 拒绝改变</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">为他人考虑 胆小被动</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">心平气和 没有主见</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">善于协调 缺乏创意</p>', '<p style=\"font-size: 30px\">【性格优势】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">爱静不爱动，有温柔祥和的吸引力和宁静愉悦的气质。和善的天性，做人厚道。追求人际关系的和谐。奉行中庸之道，为人稳定低调。遇事以不变应万变，镇定自若。知足常乐，心态轻松。追求平淡的幸福生活。有松弛感，能融入所有的环境和场合。从不发火，温和、谦和、平和三和一体。做人懂得“得饶人处且饶人”。追求简单随意的生活方式。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">以柔克刚，不战而屈人之兵。避免冲突，注重双赢。心平气和且慢条斯理。善于接纳他意见。最佳的倾听者，极具耐心。擅长让别人感觉舒适。有自然和不经意的冷幽默。松弛大度，不急不徐。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">从无攻击性。富有同情和关心。宽恕他人对自己的伤害。能接纳所有不同性格的人。和善的天性及圆滑的手腕。对友情的要求不严苛。处处为别人考虑，不吝付出。与之相处轻松自然又没有压力。最佳的垃圾宣泄处，鼓励他们的朋友多谈自己。从不尝试去改变他人。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">高超的协调人际关系的能力。善于从容地面对压力。巧妙地化解冲突。能超脱游离政治斗争之外，没有敌人。缓步前进以取得思考空间。注重人本管理。推崇一种员工都积极参与的工作环境。尊重员工的独立性，从而博得人心和凝聚力。善于为别人着想。以团体为导向。创造稳定性。用自然低调的行事手法处理事务。</p>', '<p style=\"font-size: 30px\">【性格过当】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">按照惯性来做事，拒绝改变，对于外界变化置若罔闻。懒洋洋的作风，原谅自己的不思进取。懦弱胆小，纵容别人欺压自己。期待事情会自动解决，完全守望被动。得过且过。无原则地妥协，而无法促使他们采取负责任的解决态度。逃避问题与冲突。太在意别人反应，不敢表达自己的立场和原则。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">一拳打在棉花上，毫无反应。没有主见，把压力和负担通通转嫁到他人身上。不会拒绝他人，给自己和他人都带来无穷麻烦。行动迟钝，慢慢腾腾。避免承担责任。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">不负责任的和稀泥。姑息养奸的态度。压抑自己的感受以迁就别人。期待让人人满意，对自己的内心不忠诚。没有自我，迷失人生的方向。缺乏激情。漠不关心，惰于参与任何活动。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">安于现状，不思进取。乐于平庸，缺乏创意。害怕冒风险，缺乏自信。拖拖拉拉。缺少目标。缺乏自觉性。懒惰而不进取。宁愿做旁观者不肯做参与者。</p>');

-- ----------------------------
-- Table structure for tbl_return_records_mht
-- ----------------------------
DROP TABLE IF EXISTS `tbl_return_records_mht`;
CREATE TABLE `tbl_return_records_mht`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `tester_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `return_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_return_records_mht
-- ----------------------------
INSERT INTO `tbl_return_records_mht` VALUES (18, 330, '丫丫', '17633974856', '12e21e12', 'ff', '2022-09-15 18:21:58', '2022-09-15 18:21:58', 'admin', NULL, NULL, '1');

-- ----------------------------
-- Table structure for tbl_return_records_sas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_return_records_sas`;
CREATE TABLE `tbl_return_records_sas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `tester_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `return_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_return_records_sas
-- ----------------------------
INSERT INTO `tbl_return_records_sas` VALUES (6, 313, '六六六', '14569875638', '983398389383', 'sadw1', '2022-09-15 18:19:51', '2022-09-15 18:19:51', 'admin', NULL, NULL, '');

-- ----------------------------
-- Table structure for tbl_return_records_scl
-- ----------------------------
DROP TABLE IF EXISTS `tbl_return_records_scl`;
CREATE TABLE `tbl_return_records_scl`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `tester_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `return_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_return_records_scl
-- ----------------------------
INSERT INTO `tbl_return_records_scl` VALUES (6, 51, '哈哈哈', '17728283839', '83838636853', '9.07测试', '2022-09-15 18:20:07', '2022-09-15 18:20:07', 'admin', NULL, NULL, '6');
INSERT INTO `tbl_return_records_scl` VALUES (7, 51, '哈哈哈', '17728283839', 'asdfas', '9.07测试', '2022-09-16 09:49:19', '2022-09-16 09:49:20', 'admin', NULL, NULL, '6');

-- ----------------------------
-- Table structure for tbl_return_records_sds
-- ----------------------------
DROP TABLE IF EXISTS `tbl_return_records_sds`;
CREATE TABLE `tbl_return_records_sds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `tester_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `return_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_return_records_sds
-- ----------------------------
INSERT INTO `tbl_return_records_sds` VALUES (7, 314, '张大炮', '16565787672', '89389398', '哈哈', '2022-09-15 18:19:42', '2022-09-15 18:19:42', 'admin', NULL, NULL, '');
INSERT INTO `tbl_return_records_sds` VALUES (9, 315, '张小炮', '16565787673', '你有病', '哈哈', '2022-09-15 19:26:26', '2022-09-15 19:26:27', 'admin', NULL, NULL, '');

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role`  (
  `role_id` int NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（1正常 0停用）',
  `flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '删除标志（1代表存在 0代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES (1, '管理员', 'admin', 1, '1', '1', '', NULL, '', NULL, '最高权限');
INSERT INTO `tbl_role` VALUES (2, '普通用户', 'common', 2, '1', '1', '', NULL, 'admin', '2022-09-01 17:15:11', '用户使用');
INSERT INTO `tbl_role` VALUES (3, '测试部门', 'test', 3, '1', '1', '', NULL, 'shang', '2022-09-05 22:14:53', '主要用来测试');
INSERT INTO `tbl_role` VALUES (4, '2345', '323', 23, '1', '0', '', NULL, '', NULL, '32345');
INSERT INTO `tbl_role` VALUES (5, '哈哈哈', '哈', 5, '0', '0', '', NULL, '', NULL, '你们好，哈哈哈');
INSERT INTO `tbl_role` VALUES (6, '哈哈和', '哈', 4, '0', '0', '', NULL, 'shang', '2022-09-05 08:35:52', '哈哈和');
INSERT INTO `tbl_role` VALUES (7, 'jasdflkja;', '6789', 4, '1', '0', '', NULL, '', NULL, '6789');
INSERT INTO `tbl_role` VALUES (8, 'jasdflkja;', '6789', 4, '1', '0', 'admin', '2022-09-01 21:47:39', 'admin', '2022-09-01 21:47:43', '6789');
INSERT INTO `tbl_role` VALUES (9, 'fsaf', 'dsafs', 11, '1', '0', 'shang', '2022-09-05 11:45:23', '', NULL, 'fdsa');
INSERT INTO `tbl_role` VALUES (10, 'dsfs', 'dfsdf', 12, '1', '0', 'shang', '2022-09-05 11:50:11', '', NULL, 'sffsa');
INSERT INTO `tbl_role` VALUES (11, '12345', '2345', 2345, '1', '0', NULL, '2022-09-05 12:54:37', 'shang', '2022-09-05 14:24:14', '23456777');
INSERT INTO `tbl_role` VALUES (12, '2345', '2345', 23, '1', '0', 'shang', '2022-09-05 12:57:48', '', NULL, '234');
INSERT INTO `tbl_role` VALUES (13, '22345', '2345', 2345, '1', '0', 'shang', '2022-09-05 13:02:11', '', NULL, '12345');
INSERT INTO `tbl_role` VALUES (14, '22345', '2345', 2345, '1', '0', 'shang', '2022-09-05 13:03:13', '', NULL, '12345');
INSERT INTO `tbl_role` VALUES (15, '123', '123', 123, '1', '0', 'shang', '2022-09-05 13:18:29', '', NULL, '123');
INSERT INTO `tbl_role` VALUES (16, '123', '123', 123, '1', '0', 'shang', '2022-09-05 13:20:37', '', NULL, '123');
INSERT INTO `tbl_role` VALUES (17, '123', '123', 123, '1', '0', 'shang', '2022-09-05 13:21:44', '', NULL, '123');
INSERT INTO `tbl_role` VALUES (18, '123', '123', 123, '1', '0', 'shang', '2022-09-05 13:23:19', '', NULL, '123');
INSERT INTO `tbl_role` VALUES (19, '123', '123', 123, '1', '0', 'shang', '2022-09-05 13:25:10', 'shang', '2022-09-05 14:25:35', '123');
INSERT INTO `tbl_role` VALUES (20, 'root', 'root', 12, '0', '0', 'shang', '2022-09-05 14:33:44', 'shang', '2022-09-08 16:23:06', '2345');
INSERT INTO `tbl_role` VALUES (21, 'ccc', 'cc', 1, '1', '0', 'shang', '2022-09-08 17:24:15', '', NULL, '');
INSERT INTO `tbl_role` VALUES (22, '121', '2121', 21, '1', '0', 'shang', '2022-09-08 17:35:32', '', NULL, '212');
INSERT INTO `tbl_role` VALUES (23, 'qwe', 'wq', 123, '1', '0', 'shang', '2022-09-08 18:32:19', 'shang', '2022-09-08 18:32:45', 'qw');
INSERT INTO `tbl_role` VALUES (24, '哈哈哈啊', '哈哈', 2, '1', '0', 'shang', '2022-09-08 18:43:47', 'shang', '2022-09-08 19:11:56', '我分');
INSERT INTO `tbl_role` VALUES (25, '11', '1', 111, '1', '0', 'shang', '2022-09-08 19:01:33', 'shang', '2022-09-08 19:09:37', '11');
INSERT INTO `tbl_role` VALUES (26, '113', '313', 13, '1', '0', 'shang', '2022-09-08 19:12:48', '', NULL, '13');
INSERT INTO `tbl_role` VALUES (27, '12', '212', 212, '1', '0', 'shang', '2022-09-08 19:27:26', 'shang', '2022-09-08 19:45:16', '12');
INSERT INTO `tbl_role` VALUES (28, '的方式a', '士大夫', 2, '1', '0', 'shang', '2022-09-08 19:46:32', '', NULL, '阿塞飞');
INSERT INTO `tbl_role` VALUES (29, '管理员1', '1', 12, '0', '1', 'admin', '2022-09-10 17:03:22', 'shang', '2022-09-11 08:51:55', '1212');
INSERT INTO `tbl_role` VALUES (30, '1233', '121', 12, '0', '1', 'shang', '2022-09-10 19:18:00', 'shang', '2022-09-11 08:51:59', '12');
INSERT INTO `tbl_role` VALUES (31, '12333', '12', 12, '0', '1', 'shang', '2022-09-10 19:19:38', 'shang', '2022-09-11 08:52:02', '21');

-- ----------------------------
-- Table structure for tbl_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_menu`;
CREATE TABLE `tbl_role_menu`  (
  `role_id` int NOT NULL COMMENT '角色ID',
  `menu_id` int NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_role_menu
-- ----------------------------
INSERT INTO `tbl_role_menu` VALUES (1, 1);
INSERT INTO `tbl_role_menu` VALUES (1, 2);
INSERT INTO `tbl_role_menu` VALUES (1, 3);
INSERT INTO `tbl_role_menu` VALUES (1, 4);
INSERT INTO `tbl_role_menu` VALUES (1, 5);
INSERT INTO `tbl_role_menu` VALUES (1, 100);
INSERT INTO `tbl_role_menu` VALUES (1, 101);
INSERT INTO `tbl_role_menu` VALUES (1, 102);
INSERT INTO `tbl_role_menu` VALUES (1, 103);
INSERT INTO `tbl_role_menu` VALUES (1, 109);
INSERT INTO `tbl_role_menu` VALUES (1, 111);
INSERT INTO `tbl_role_menu` VALUES (1, 204);
INSERT INTO `tbl_role_menu` VALUES (1, 304);
INSERT INTO `tbl_role_menu` VALUES (1, 404);
INSERT INTO `tbl_role_menu` VALUES (1, 504);
INSERT INTO `tbl_role_menu` VALUES (1, 1000);
INSERT INTO `tbl_role_menu` VALUES (1, 1001);
INSERT INTO `tbl_role_menu` VALUES (1, 1002);
INSERT INTO `tbl_role_menu` VALUES (1, 1003);
INSERT INTO `tbl_role_menu` VALUES (1, 1004);
INSERT INTO `tbl_role_menu` VALUES (1, 1005);
INSERT INTO `tbl_role_menu` VALUES (1, 1006);
INSERT INTO `tbl_role_menu` VALUES (1, 1007);
INSERT INTO `tbl_role_menu` VALUES (1, 1008);
INSERT INTO `tbl_role_menu` VALUES (1, 1009);
INSERT INTO `tbl_role_menu` VALUES (1, 1010);
INSERT INTO `tbl_role_menu` VALUES (1, 1011);
INSERT INTO `tbl_role_menu` VALUES (1, 1012);
INSERT INTO `tbl_role_menu` VALUES (1, 1013);
INSERT INTO `tbl_role_menu` VALUES (1, 1014);
INSERT INTO `tbl_role_menu` VALUES (1, 1015);
INSERT INTO `tbl_role_menu` VALUES (1, 1016);
INSERT INTO `tbl_role_menu` VALUES (1, 1017);
INSERT INTO `tbl_role_menu` VALUES (1, 1018);
INSERT INTO `tbl_role_menu` VALUES (1, 1025);
INSERT INTO `tbl_role_menu` VALUES (1, 1026);
INSERT INTO `tbl_role_menu` VALUES (1, 1029);
INSERT INTO `tbl_role_menu` VALUES (1, 1030);
INSERT INTO `tbl_role_menu` VALUES (1, 1031);
INSERT INTO `tbl_role_menu` VALUES (1, 1032);
INSERT INTO `tbl_role_menu` VALUES (1, 1033);
INSERT INTO `tbl_role_menu` VALUES (1, 1034);
INSERT INTO `tbl_role_menu` VALUES (1, 1035);
INSERT INTO `tbl_role_menu` VALUES (1, 1036);
INSERT INTO `tbl_role_menu` VALUES (1, 1037);
INSERT INTO `tbl_role_menu` VALUES (1, 1038);
INSERT INTO `tbl_role_menu` VALUES (1, 1039);
INSERT INTO `tbl_role_menu` VALUES (1, 1040);
INSERT INTO `tbl_role_menu` VALUES (1, 1041);
INSERT INTO `tbl_role_menu` VALUES (1, 1042);
INSERT INTO `tbl_role_menu` VALUES (1, 1043);
INSERT INTO `tbl_role_menu` VALUES (1, 1044);
INSERT INTO `tbl_role_menu` VALUES (1, 1045);
INSERT INTO `tbl_role_menu` VALUES (1, 1046);
INSERT INTO `tbl_role_menu` VALUES (1, 1047);
INSERT INTO `tbl_role_menu` VALUES (1, 1048);
INSERT INTO `tbl_role_menu` VALUES (1, 1049);
INSERT INTO `tbl_role_menu` VALUES (1, 1050);
INSERT INTO `tbl_role_menu` VALUES (1, 1051);
INSERT INTO `tbl_role_menu` VALUES (2, 1);
INSERT INTO `tbl_role_menu` VALUES (2, 109);
INSERT INTO `tbl_role_menu` VALUES (2, 111);
INSERT INTO `tbl_role_menu` VALUES (2, 1026);
INSERT INTO `tbl_role_menu` VALUES (2, 1027);
INSERT INTO `tbl_role_menu` VALUES (2, 1028);
INSERT INTO `tbl_role_menu` VALUES (2, 1032);
INSERT INTO `tbl_role_menu` VALUES (2, 1033);
INSERT INTO `tbl_role_menu` VALUES (2, 1034);
INSERT INTO `tbl_role_menu` VALUES (2, 1035);
INSERT INTO `tbl_role_menu` VALUES (2, 1036);
INSERT INTO `tbl_role_menu` VALUES (2, 1037);
INSERT INTO `tbl_role_menu` VALUES (2, 1038);
INSERT INTO `tbl_role_menu` VALUES (2, 1039);
INSERT INTO `tbl_role_menu` VALUES (2, 1040);
INSERT INTO `tbl_role_menu` VALUES (2, 1041);
INSERT INTO `tbl_role_menu` VALUES (2, 1042);
INSERT INTO `tbl_role_menu` VALUES (2, 1043);
INSERT INTO `tbl_role_menu` VALUES (3, 1);
INSERT INTO `tbl_role_menu` VALUES (3, 5);
INSERT INTO `tbl_role_menu` VALUES (3, 109);
INSERT INTO `tbl_role_menu` VALUES (3, 111);
INSERT INTO `tbl_role_menu` VALUES (3, 1025);
INSERT INTO `tbl_role_menu` VALUES (3, 1026);
INSERT INTO `tbl_role_menu` VALUES (3, 1029);
INSERT INTO `tbl_role_menu` VALUES (3, 1030);
INSERT INTO `tbl_role_menu` VALUES (3, 1033);
INSERT INTO `tbl_role_menu` VALUES (3, 1034);
INSERT INTO `tbl_role_menu` VALUES (3, 1035);
INSERT INTO `tbl_role_menu` VALUES (3, 1036);
INSERT INTO `tbl_role_menu` VALUES (3, 1037);
INSERT INTO `tbl_role_menu` VALUES (3, 1038);
INSERT INTO `tbl_role_menu` VALUES (3, 1039);
INSERT INTO `tbl_role_menu` VALUES (3, 1040);
INSERT INTO `tbl_role_menu` VALUES (3, 1041);
INSERT INTO `tbl_role_menu` VALUES (3, 1042);
INSERT INTO `tbl_role_menu` VALUES (3, 1043);
INSERT INTO `tbl_role_menu` VALUES (19, 1);
INSERT INTO `tbl_role_menu` VALUES (19, 2);
INSERT INTO `tbl_role_menu` VALUES (19, 109);
INSERT INTO `tbl_role_menu` VALUES (19, 110);
INSERT INTO `tbl_role_menu` VALUES (19, 111);
INSERT INTO `tbl_role_menu` VALUES (19, 1026);
INSERT INTO `tbl_role_menu` VALUES (19, 1029);
INSERT INTO `tbl_role_menu` VALUES (19, 1030);
INSERT INTO `tbl_role_menu` VALUES (19, 1037);
INSERT INTO `tbl_role_menu` VALUES (19, 1044);
INSERT INTO `tbl_role_menu` VALUES (19, 1045);
INSERT INTO `tbl_role_menu` VALUES (19, 1046);
INSERT INTO `tbl_role_menu` VALUES (19, 1047);
INSERT INTO `tbl_role_menu` VALUES (20, 1);
INSERT INTO `tbl_role_menu` VALUES (20, 3);
INSERT INTO `tbl_role_menu` VALUES (20, 100);
INSERT INTO `tbl_role_menu` VALUES (20, 109);
INSERT INTO `tbl_role_menu` VALUES (20, 1000);
INSERT INTO `tbl_role_menu` VALUES (20, 1001);
INSERT INTO `tbl_role_menu` VALUES (20, 1002);
INSERT INTO `tbl_role_menu` VALUES (20, 1003);
INSERT INTO `tbl_role_menu` VALUES (20, 1004);
INSERT INTO `tbl_role_menu` VALUES (20, 1005);
INSERT INTO `tbl_role_menu` VALUES (20, 1026);
INSERT INTO `tbl_role_menu` VALUES (20, 1029);
INSERT INTO `tbl_role_menu` VALUES (20, 1030);
INSERT INTO `tbl_role_menu` VALUES (20, 1037);
INSERT INTO `tbl_role_menu` VALUES (21, 3);
INSERT INTO `tbl_role_menu` VALUES (21, 100);
INSERT INTO `tbl_role_menu` VALUES (21, 101);
INSERT INTO `tbl_role_menu` VALUES (21, 102);
INSERT INTO `tbl_role_menu` VALUES (21, 103);
INSERT INTO `tbl_role_menu` VALUES (21, 1000);
INSERT INTO `tbl_role_menu` VALUES (21, 1001);
INSERT INTO `tbl_role_menu` VALUES (21, 1002);
INSERT INTO `tbl_role_menu` VALUES (21, 1003);
INSERT INTO `tbl_role_menu` VALUES (21, 1004);
INSERT INTO `tbl_role_menu` VALUES (21, 1005);
INSERT INTO `tbl_role_menu` VALUES (21, 1006);
INSERT INTO `tbl_role_menu` VALUES (21, 1007);
INSERT INTO `tbl_role_menu` VALUES (21, 1008);
INSERT INTO `tbl_role_menu` VALUES (21, 1009);
INSERT INTO `tbl_role_menu` VALUES (21, 1010);
INSERT INTO `tbl_role_menu` VALUES (21, 1011);
INSERT INTO `tbl_role_menu` VALUES (21, 1012);
INSERT INTO `tbl_role_menu` VALUES (21, 1013);
INSERT INTO `tbl_role_menu` VALUES (21, 1014);
INSERT INTO `tbl_role_menu` VALUES (21, 1015);
INSERT INTO `tbl_role_menu` VALUES (21, 1016);
INSERT INTO `tbl_role_menu` VALUES (21, 1017);
INSERT INTO `tbl_role_menu` VALUES (21, 1018);
INSERT INTO `tbl_role_menu` VALUES (22, 1);
INSERT INTO `tbl_role_menu` VALUES (22, 109);
INSERT INTO `tbl_role_menu` VALUES (22, 110);
INSERT INTO `tbl_role_menu` VALUES (22, 111);
INSERT INTO `tbl_role_menu` VALUES (22, 1026);
INSERT INTO `tbl_role_menu` VALUES (22, 1029);
INSERT INTO `tbl_role_menu` VALUES (22, 1030);
INSERT INTO `tbl_role_menu` VALUES (22, 1033);
INSERT INTO `tbl_role_menu` VALUES (22, 1034);
INSERT INTO `tbl_role_menu` VALUES (22, 1037);
INSERT INTO `tbl_role_menu` VALUES (22, 1038);
INSERT INTO `tbl_role_menu` VALUES (22, 1039);
INSERT INTO `tbl_role_menu` VALUES (22, 1040);
INSERT INTO `tbl_role_menu` VALUES (23, 1);
INSERT INTO `tbl_role_menu` VALUES (23, 2);
INSERT INTO `tbl_role_menu` VALUES (23, 109);
INSERT INTO `tbl_role_menu` VALUES (23, 110);
INSERT INTO `tbl_role_menu` VALUES (23, 111);
INSERT INTO `tbl_role_menu` VALUES (23, 1026);
INSERT INTO `tbl_role_menu` VALUES (23, 1029);
INSERT INTO `tbl_role_menu` VALUES (23, 1030);
INSERT INTO `tbl_role_menu` VALUES (23, 1037);
INSERT INTO `tbl_role_menu` VALUES (23, 1044);
INSERT INTO `tbl_role_menu` VALUES (23, 1045);
INSERT INTO `tbl_role_menu` VALUES (23, 1046);
INSERT INTO `tbl_role_menu` VALUES (23, 1047);
INSERT INTO `tbl_role_menu` VALUES (24, 1);
INSERT INTO `tbl_role_menu` VALUES (24, 3);
INSERT INTO `tbl_role_menu` VALUES (24, 4);
INSERT INTO `tbl_role_menu` VALUES (24, 100);
INSERT INTO `tbl_role_menu` VALUES (24, 102);
INSERT INTO `tbl_role_menu` VALUES (24, 103);
INSERT INTO `tbl_role_menu` VALUES (24, 109);
INSERT INTO `tbl_role_menu` VALUES (24, 111);
INSERT INTO `tbl_role_menu` VALUES (24, 1000);
INSERT INTO `tbl_role_menu` VALUES (24, 1001);
INSERT INTO `tbl_role_menu` VALUES (24, 1002);
INSERT INTO `tbl_role_menu` VALUES (24, 1003);
INSERT INTO `tbl_role_menu` VALUES (24, 1004);
INSERT INTO `tbl_role_menu` VALUES (24, 1005);
INSERT INTO `tbl_role_menu` VALUES (24, 1011);
INSERT INTO `tbl_role_menu` VALUES (24, 1012);
INSERT INTO `tbl_role_menu` VALUES (24, 1013);
INSERT INTO `tbl_role_menu` VALUES (24, 1014);
INSERT INTO `tbl_role_menu` VALUES (24, 1015);
INSERT INTO `tbl_role_menu` VALUES (24, 1016);
INSERT INTO `tbl_role_menu` VALUES (24, 1017);
INSERT INTO `tbl_role_menu` VALUES (24, 1018);
INSERT INTO `tbl_role_menu` VALUES (24, 1029);
INSERT INTO `tbl_role_menu` VALUES (24, 1035);
INSERT INTO `tbl_role_menu` VALUES (24, 1036);
INSERT INTO `tbl_role_menu` VALUES (24, 1041);
INSERT INTO `tbl_role_menu` VALUES (24, 1042);
INSERT INTO `tbl_role_menu` VALUES (24, 1043);
INSERT INTO `tbl_role_menu` VALUES (24, 1048);
INSERT INTO `tbl_role_menu` VALUES (24, 1049);
INSERT INTO `tbl_role_menu` VALUES (24, 1051);
INSERT INTO `tbl_role_menu` VALUES (26, 1);
INSERT INTO `tbl_role_menu` VALUES (26, 2);
INSERT INTO `tbl_role_menu` VALUES (26, 109);
INSERT INTO `tbl_role_menu` VALUES (26, 110);
INSERT INTO `tbl_role_menu` VALUES (26, 111);
INSERT INTO `tbl_role_menu` VALUES (26, 1026);
INSERT INTO `tbl_role_menu` VALUES (26, 1029);
INSERT INTO `tbl_role_menu` VALUES (26, 1030);
INSERT INTO `tbl_role_menu` VALUES (26, 1037);
INSERT INTO `tbl_role_menu` VALUES (26, 1044);
INSERT INTO `tbl_role_menu` VALUES (26, 1045);
INSERT INTO `tbl_role_menu` VALUES (26, 1046);
INSERT INTO `tbl_role_menu` VALUES (26, 1047);
INSERT INTO `tbl_role_menu` VALUES (27, 1);
INSERT INTO `tbl_role_menu` VALUES (27, 109);
INSERT INTO `tbl_role_menu` VALUES (27, 110);
INSERT INTO `tbl_role_menu` VALUES (27, 111);
INSERT INTO `tbl_role_menu` VALUES (27, 1026);
INSERT INTO `tbl_role_menu` VALUES (27, 1030);
INSERT INTO `tbl_role_menu` VALUES (27, 1037);
INSERT INTO `tbl_role_menu` VALUES (28, 1035);
INSERT INTO `tbl_role_menu` VALUES (28, 1043);
INSERT INTO `tbl_role_menu` VALUES (29, 1);
INSERT INTO `tbl_role_menu` VALUES (29, 2);
INSERT INTO `tbl_role_menu` VALUES (29, 109);
INSERT INTO `tbl_role_menu` VALUES (29, 111);
INSERT INTO `tbl_role_menu` VALUES (29, 1026);
INSERT INTO `tbl_role_menu` VALUES (29, 1029);
INSERT INTO `tbl_role_menu` VALUES (29, 1030);
INSERT INTO `tbl_role_menu` VALUES (29, 1037);
INSERT INTO `tbl_role_menu` VALUES (29, 1044);
INSERT INTO `tbl_role_menu` VALUES (29, 1045);
INSERT INTO `tbl_role_menu` VALUES (29, 1046);
INSERT INTO `tbl_role_menu` VALUES (29, 1047);
INSERT INTO `tbl_role_menu` VALUES (30, 1);
INSERT INTO `tbl_role_menu` VALUES (30, 109);
INSERT INTO `tbl_role_menu` VALUES (30, 111);
INSERT INTO `tbl_role_menu` VALUES (30, 1026);
INSERT INTO `tbl_role_menu` VALUES (30, 1029);
INSERT INTO `tbl_role_menu` VALUES (30, 1030);
INSERT INTO `tbl_role_menu` VALUES (30, 1037);
INSERT INTO `tbl_role_menu` VALUES (31, 2);
INSERT INTO `tbl_role_menu` VALUES (31, 1044);
INSERT INTO `tbl_role_menu` VALUES (31, 1045);
INSERT INTO `tbl_role_menu` VALUES (31, 1046);
INSERT INTO `tbl_role_menu` VALUES (31, 1047);

-- ----------------------------
-- Table structure for tbl_test_plan_fpa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_plan_fpa`;
CREATE TABLE `tbl_test_plan_fpa`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '测试计划id',
  `test_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '测试名称',
  `test_code` int NOT NULL COMMENT '测试代码(随机生成)',
  `test_begin` datetime NOT NULL COMMENT '开始时间',
  `test_end` datetime NOT NULL COMMENT '结束时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `flag` tinyint(1) NULL DEFAULT 1 COMMENT '用来逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试计划fpa' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_plan_fpa
-- ----------------------------
INSERT INTO `tbl_test_plan_fpa` VALUES (9, 'qy156', 113131, '2022-08-31 10:15:35', '2022-09-02 10:15:35', '2022-08-31 10:16:08', NULL, '2022-09-01 17:29:17', 'admin', '测试测试', 0);
INSERT INTO `tbl_test_plan_fpa` VALUES (10, 'fpa测试', 324324, '2022-08-31 18:09:20', '2022-09-02 18:09:20', '2022-08-31 18:09:53', NULL, NULL, NULL, '测试~~~~~', 1);
INSERT INTO `tbl_test_plan_fpa` VALUES (12, '哈哈', 393523, '2022-09-01 15:58:38', '2022-09-03 15:58:38', '2022-09-01 16:23:41', 'admin', '2022-09-01 16:23:57', 'admin', '哈哈', 1);
INSERT INTO `tbl_test_plan_fpa` VALUES (13, '9.3测试', 148977, '2022-09-03 17:04:38', '2022-09-05 17:04:38', '2022-09-03 17:05:00', 'shang', NULL, NULL, '啊啊啊啊啊啊啊', 1);
INSERT INTO `tbl_test_plan_fpa` VALUES (14, '9.5测试', 119989, '2022-09-05 19:05:01', '2022-09-07 19:05:01', '2022-09-05 19:05:34', 'shang', NULL, NULL, '床前明月光', 1);
INSERT INTO `tbl_test_plan_fpa` VALUES (15, 'qy1561', 583456, '2022-09-07 19:31:29', '2022-09-09 19:31:29', '2022-09-07 19:31:49', 'shang', '2022-09-10 19:06:35', 'shang', 'aaa', 1);
INSERT INTO `tbl_test_plan_fpa` VALUES (16, '中秋节测试', 539552, '2022-09-10 14:58:55', '2022-09-14 14:58:55', '2022-09-10 14:59:22', 'admin', NULL, NULL, '测试', 1);
INSERT INTO `tbl_test_plan_fpa` VALUES (17, '中秋节测试1', 271051, '2022-09-10 14:58:55', '2022-09-12 14:58:55', '2022-09-10 14:59:37', 'admin', '2022-09-13 09:41:21', 'admin', '测试', 0);
INSERT INTO `tbl_test_plan_fpa` VALUES (18, '中秋节测试123', 417696, '2022-09-11 08:53:04', '2022-09-13 08:53:04', '2022-09-11 08:53:42', 'shang', NULL, NULL, '哈哈哈', 0);

-- ----------------------------
-- Table structure for tbl_test_plan_mht
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_plan_mht`;
CREATE TABLE `tbl_test_plan_mht`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `test_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `test_begin` timestamp NULL DEFAULT NULL,
  `test_end` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `flag` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tbl_test_plan_mht_test_code_uindex`(`test_code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试计划fpa' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_plan_mht
-- ----------------------------
INSERT INTO `tbl_test_plan_mht` VALUES (1, 'qy156心理健康测试', '453211', '2022-08-30 20:45:06', '2022-09-01 20:45:09', '2022-08-30 20:45:19', 'feng', NULL, NULL, NULL, 1);
INSERT INTO `tbl_test_plan_mht` VALUES (15, '1232', '433198', '2022-09-01 10:50:00', '2022-09-30 10:50:00', '2022-09-01 10:50:16', 'admin', '2022-09-01 17:16:35', 'admin', '', 1);
INSERT INTO `tbl_test_plan_mht` VALUES (16, '123', '742268', '2022-09-17 10:50:00', '2022-09-30 10:50:00', '2022-09-01 10:53:13', 'admin', NULL, NULL, '2', 0);
INSERT INTO `tbl_test_plan_mht` VALUES (18, 'qy150mht测试', '443100', '2022-09-01 23:59:00', '2022-09-03 23:59:00', '2022-09-01 19:50:06', 'admin', '2022-09-01 19:50:17', 'admin', '', 1);
INSERT INTO `tbl_test_plan_mht` VALUES (19, '在这种', '896098', '2022-09-01 22:22:00', '2022-09-03 03:33:00', '2022-09-02 20:03:53', 'admin', NULL, NULL, '1', 0);
INSERT INTO `tbl_test_plan_mht` VALUES (26, '测试', '728376', '2022-09-12 18:21:48', '2022-09-14 18:21:48', '2022-09-12 18:22:05', 'shang', NULL, NULL, '', 1);
INSERT INTO `tbl_test_plan_mht` VALUES (27, 'ff', '721113', '2022-09-14 14:52:30', '2022-09-16 14:52:30', '2022-09-14 14:52:37', 'shang', NULL, NULL, '\n', 1);
INSERT INTO `tbl_test_plan_mht` VALUES (28, 'ss ', '789417', '2022-09-14 15:37:43', '2022-09-16 15:37:43', '2022-09-14 15:37:51', 'shang', NULL, NULL, '', 1);
INSERT INTO `tbl_test_plan_mht` VALUES (29, 'ååå', '562291', '2022-09-20 15:21:20', '2022-09-22 15:21:20', '2022-09-20 15:21:28', 'admin', NULL, NULL, '', 1);

-- ----------------------------
-- Table structure for tbl_test_plan_sas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_plan_sas`;
CREATE TABLE `tbl_test_plan_sas`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `test_name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '测试名称',
  `test_code` int NULL DEFAULT NULL COMMENT '测试邀请码',
  `test_begin` timestamp NULL DEFAULT NULL COMMENT '测试开始时间',
  `test_end` timestamp NULL DEFAULT NULL COMMENT '测试结束时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '更改人',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `flag` tinyint(1) NULL DEFAULT 1 COMMENT '逻辑删除（1 存在，0 删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试计划fpa' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_plan_sas
-- ----------------------------
INSERT INTO `tbl_test_plan_sas` VALUES (1, 'qy152sas测试', 123456, '2022-06-29 09:45:39', '2022-06-30 09:06:20', NULL, NULL, '2022-07-15 18:27:07', 'feng', 'dssdf', 1);
INSERT INTO `tbl_test_plan_sas` VALUES (6, 'sdfsdfsdf', 860526, '2022-07-15 18:31:23', '2022-07-17 18:31:23', '2022-07-15 18:31:26', 'feng', NULL, NULL, 'sdfsdfsdf', 1);
INSERT INTO `tbl_test_plan_sas` VALUES (7, 'hjfdhgjhhgfgds', 893376, '2022-07-15 18:31:31', '2022-07-17 18:31:31', '2022-07-15 18:31:35', 'feng', '2022-07-15 18:38:50', 'feng', 'fd', 1);
INSERT INTO `tbl_test_plan_sas` VALUES (11, 'sadw1', 378631, '2022-09-09 15:30:57', '2022-09-11 15:30:57', '2022-09-09 15:31:18', 'admin', '2022-09-09 16:13:06', 'admin', '1245', 1);
INSERT INTO `tbl_test_plan_sas` VALUES (14, 'asdw', 404003, '2022-09-09 16:16:13', '2022-09-11 16:16:13', '2022-09-09 16:17:59', 'shang', NULL, NULL, 'qwq', 0);
INSERT INTO `tbl_test_plan_sas` VALUES (15, '哈哈哈', 201058, '2022-09-11 09:04:23', '2022-09-13 09:04:23', '2022-09-11 09:05:12', 'shang', '2022-09-11 09:15:13', 'shang', '中秋节测试', 1);
INSERT INTO `tbl_test_plan_sas` VALUES (16, '我的测试', 335736, '2022-09-20 15:15:31', '2022-09-22 15:15:31', '2022-09-20 15:15:46', 'admin', NULL, NULL, '啊啊啊', 1);

-- ----------------------------
-- Table structure for tbl_test_plan_scl
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_plan_scl`;
CREATE TABLE `tbl_test_plan_scl`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '测试计划id',
  `test_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '测试名称',
  `test_code` int NOT NULL COMMENT '测试代码(随机生成)',
  `test_begin` datetime NOT NULL COMMENT '开始时间',
  `test_end` datetime NOT NULL COMMENT '结束时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `flag` tinyint(1) NULL DEFAULT 1 COMMENT '逻辑删除（0 删除，1 正常）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试计划fpa' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_plan_scl
-- ----------------------------
INSERT INTO `tbl_test_plan_scl` VALUES (15, 'Scl测试', 675962, '2022-09-07 09:36:39', '2022-09-09 09:36:39', '2022-09-07 09:36:55', 'shang', NULL, NULL, '哈哈哈哈', 1);
INSERT INTO `tbl_test_plan_scl` VALUES (16, '王心', 987888, '2022-09-07 22:14:14', '2022-09-09 22:14:14', '2022-09-07 22:14:50', 'shang', NULL, NULL, '大漂亮', 1);
INSERT INTO `tbl_test_plan_scl` VALUES (18, '12', 727657, '2022-09-08 22:20:40', '2022-09-10 22:20:40', '2022-09-08 22:20:50', 'shang', '2022-09-11 09:15:58', 'shang', '121', 0);
INSERT INTO `tbl_test_plan_scl` VALUES (19, '9.07测试', 357245, '2022-09-13 09:07:42', '2022-09-30 09:07:42', '2022-09-13 09:08:03', 'admin', '2022-09-16 11:29:07', 'admin', '哈哈', 1);
INSERT INTO `tbl_test_plan_scl` VALUES (20, '9.19SCL测试', 670171, '2022-09-19 20:47:34', '2022-09-21 20:47:34', '2022-09-19 20:47:51', 'admin', NULL, NULL, '', 1);

-- ----------------------------
-- Table structure for tbl_test_plan_sds
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_plan_sds`;
CREATE TABLE `tbl_test_plan_sds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `test_code` int NULL DEFAULT NULL,
  `test_begin` timestamp NULL DEFAULT NULL,
  `test_end` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `flag` int NOT NULL DEFAULT 1,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试计划fpa' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_plan_sds
-- ----------------------------
INSERT INTO `tbl_test_plan_sds` VALUES (1, 'qy153sds测试', 123457, '2022-06-30 09:06:28', '2022-06-30 09:06:31', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `tbl_test_plan_sds` VALUES (7, 'asdf', 441672, '2022-09-08 22:15:16', '2022-09-10 22:15:16', NULL, NULL, NULL, NULL, 'fads', 1, NULL);
INSERT INTO `tbl_test_plan_sds` VALUES (8, '测试', 889887, '2022-09-09 10:53:55', '2022-09-11 10:53:55', NULL, NULL, NULL, NULL, '测试', 1, NULL);
INSERT INTO `tbl_test_plan_sds` VALUES (9, '测试下', 395132, '2022-09-09 10:55:46', '2022-09-11 10:55:46', NULL, NULL, NULL, NULL, '去', 0, NULL);
INSERT INTO `tbl_test_plan_sds` VALUES (10, 'z', 670705, '2022-09-09 10:56:13', '2022-09-11 10:56:13', NULL, NULL, NULL, NULL, '在', 0, NULL);
INSERT INTO `tbl_test_plan_sds` VALUES (11, '重新测试一下', 188904, '2022-09-09 11:22:27', '2022-09-11 11:22:27', '2022-09-09 11:22:45', 'shang', '2022-09-09 11:25:52', 'shang', '1', 1, NULL);
INSERT INTO `tbl_test_plan_sds` VALUES (12, '哈哈', 125119, '2022-09-14 14:37:10', '2022-09-29 14:37:10', '2022-09-14 14:37:15', 'shang', '2022-09-17 14:14:13', 'admin', '12', 1, NULL);

-- ----------------------------
-- Table structure for tbl_test_result_fpa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_result_fpa`;
CREATE TABLE `tbl_test_result_fpa`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `tester_id` int NULL DEFAULT NULL COMMENT '测试人员id',
  `question_id` int NULL DEFAULT NULL COMMENT '测试题id',
  `answer` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目答案',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 154 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_result_fpa
-- ----------------------------
INSERT INTO `tbl_test_result_fpa` VALUES (1, 52, 1, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (2, 52, 2, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (3, 52, 3, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (4, 52, 4, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (5, 52, 5, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (6, 52, 6, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (7, 52, 7, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (8, 52, 8, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (9, 52, 9, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (10, 52, 10, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (11, 52, 11, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (12, 52, 12, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (13, 52, 13, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (14, 52, 14, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (15, 52, 15, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (16, 52, 16, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (17, 52, 17, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (18, 52, 18, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (19, 52, 19, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (20, 52, 20, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (21, 52, 21, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (22, 52, 22, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (23, 52, 23, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (24, 52, 24, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (25, 52, 25, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (26, 52, 26, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (27, 52, 27, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (28, 52, 28, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (29, 52, 29, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (30, 52, 30, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (31, 52, 60, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (32, 54, 1, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (33, 54, 2, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (34, 54, 3, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (35, 54, 4, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (36, 54, 5, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (37, 54, 6, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (38, 54, 7, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (39, 54, 8, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (40, 54, 9, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (41, 54, 10, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (42, 54, 11, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (43, 54, 12, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (44, 54, 13, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (45, 54, 14, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (46, 54, 15, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (47, 54, 16, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (48, 54, 17, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (49, 54, 18, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (50, 54, 19, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (51, 54, 20, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (52, 54, 21, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (53, 54, 22, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (54, 54, 23, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (55, 54, 24, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (56, 54, 25, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (57, 54, 26, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (58, 54, 27, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (59, 54, 28, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (60, 54, 29, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (61, 54, 30, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (62, 54, 60, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (63, 55, 1, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (64, 55, 2, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (65, 55, 3, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (66, 55, 4, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (67, 55, 5, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (68, 55, 6, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (69, 55, 7, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (70, 55, 8, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (71, 55, 9, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (72, 55, 10, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (73, 55, 11, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (74, 55, 12, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (75, 55, 13, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (76, 55, 14, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (77, 55, 15, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (78, 55, 16, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (79, 55, 17, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (80, 55, 18, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (81, 55, 19, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (82, 55, 20, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (83, 55, 21, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (84, 55, 22, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (85, 55, 23, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (86, 55, 24, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (87, 55, 25, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (88, 55, 26, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (89, 55, 27, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (90, 55, 28, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (91, 55, 29, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (92, 55, 30, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (93, 56, 1, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (94, 56, 2, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (95, 56, 3, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (96, 56, 4, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (97, 56, 5, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (98, 56, 6, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (99, 56, 7, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (100, 56, 8, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (101, 56, 9, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (102, 56, 10, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (103, 56, 11, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (104, 56, 12, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (105, 56, 13, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (106, 56, 14, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (107, 56, 15, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (108, 56, 16, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (109, 56, 17, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (110, 56, 18, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (111, 56, 19, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (112, 56, 20, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (113, 56, 21, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (114, 56, 22, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (115, 56, 23, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (116, 56, 24, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (117, 56, 25, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (118, 56, 26, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (119, 56, 27, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (120, 56, 28, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (121, 56, 29, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (122, 56, 30, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (123, 56, 62, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (124, 57, 1, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (125, 57, 2, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (126, 57, 3, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (127, 57, 4, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (128, 57, 5, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (129, 57, 6, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (130, 57, 7, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (131, 57, 8, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (132, 57, 9, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (133, 57, 10, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (134, 57, 11, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (135, 57, 12, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (136, 57, 13, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (137, 57, 14, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (138, 57, 15, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (139, 57, 16, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (140, 57, 17, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (141, 57, 18, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (142, 57, 19, '1');
INSERT INTO `tbl_test_result_fpa` VALUES (143, 57, 20, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (144, 57, 21, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (145, 57, 22, '2');
INSERT INTO `tbl_test_result_fpa` VALUES (146, 57, 23, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (147, 57, 24, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (148, 57, 25, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (149, 57, 26, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (150, 57, 27, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (151, 57, 28, '3');
INSERT INTO `tbl_test_result_fpa` VALUES (152, 57, 29, '4');
INSERT INTO `tbl_test_result_fpa` VALUES (153, 57, 30, '3');

-- ----------------------------
-- Table structure for tbl_test_result_mht
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_result_mht`;
CREATE TABLE `tbl_test_result_mht`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `question_id` int NULL DEFAULT NULL,
  `answer` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2601 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_result_mht
-- ----------------------------
INSERT INTO `tbl_test_result_mht` VALUES (301, 328, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (302, 328, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (303, 328, 3, 0);
INSERT INTO `tbl_test_result_mht` VALUES (304, 328, 4, 0);
INSERT INTO `tbl_test_result_mht` VALUES (305, 328, 5, 0);
INSERT INTO `tbl_test_result_mht` VALUES (306, 328, 6, 0);
INSERT INTO `tbl_test_result_mht` VALUES (307, 328, 7, 0);
INSERT INTO `tbl_test_result_mht` VALUES (308, 328, 8, 0);
INSERT INTO `tbl_test_result_mht` VALUES (309, 328, 9, 0);
INSERT INTO `tbl_test_result_mht` VALUES (310, 328, 10, 0);
INSERT INTO `tbl_test_result_mht` VALUES (311, 328, 11, 0);
INSERT INTO `tbl_test_result_mht` VALUES (312, 328, 12, 0);
INSERT INTO `tbl_test_result_mht` VALUES (313, 328, 13, 0);
INSERT INTO `tbl_test_result_mht` VALUES (314, 328, 14, 0);
INSERT INTO `tbl_test_result_mht` VALUES (315, 328, 15, 0);
INSERT INTO `tbl_test_result_mht` VALUES (316, 328, 16, 0);
INSERT INTO `tbl_test_result_mht` VALUES (317, 328, 17, 0);
INSERT INTO `tbl_test_result_mht` VALUES (318, 328, 18, 0);
INSERT INTO `tbl_test_result_mht` VALUES (319, 328, 19, 0);
INSERT INTO `tbl_test_result_mht` VALUES (320, 328, 20, 0);
INSERT INTO `tbl_test_result_mht` VALUES (321, 328, 21, 0);
INSERT INTO `tbl_test_result_mht` VALUES (322, 328, 22, 0);
INSERT INTO `tbl_test_result_mht` VALUES (323, 328, 23, 0);
INSERT INTO `tbl_test_result_mht` VALUES (324, 328, 24, 0);
INSERT INTO `tbl_test_result_mht` VALUES (325, 328, 25, 1);
INSERT INTO `tbl_test_result_mht` VALUES (326, 328, 26, 1);
INSERT INTO `tbl_test_result_mht` VALUES (327, 328, 27, 1);
INSERT INTO `tbl_test_result_mht` VALUES (328, 328, 28, 1);
INSERT INTO `tbl_test_result_mht` VALUES (329, 328, 29, 1);
INSERT INTO `tbl_test_result_mht` VALUES (330, 328, 30, 0);
INSERT INTO `tbl_test_result_mht` VALUES (331, 328, 31, 0);
INSERT INTO `tbl_test_result_mht` VALUES (332, 328, 32, 0);
INSERT INTO `tbl_test_result_mht` VALUES (333, 328, 33, 1);
INSERT INTO `tbl_test_result_mht` VALUES (334, 328, 34, 1);
INSERT INTO `tbl_test_result_mht` VALUES (335, 328, 35, 1);
INSERT INTO `tbl_test_result_mht` VALUES (336, 328, 36, 0);
INSERT INTO `tbl_test_result_mht` VALUES (337, 328, 37, 0);
INSERT INTO `tbl_test_result_mht` VALUES (338, 328, 38, 0);
INSERT INTO `tbl_test_result_mht` VALUES (339, 328, 39, 0);
INSERT INTO `tbl_test_result_mht` VALUES (340, 328, 40, 0);
INSERT INTO `tbl_test_result_mht` VALUES (341, 328, 41, 0);
INSERT INTO `tbl_test_result_mht` VALUES (342, 328, 42, 1);
INSERT INTO `tbl_test_result_mht` VALUES (343, 328, 43, 1);
INSERT INTO `tbl_test_result_mht` VALUES (344, 328, 44, 1);
INSERT INTO `tbl_test_result_mht` VALUES (345, 328, 45, 1);
INSERT INTO `tbl_test_result_mht` VALUES (346, 328, 46, 1);
INSERT INTO `tbl_test_result_mht` VALUES (347, 328, 47, 1);
INSERT INTO `tbl_test_result_mht` VALUES (348, 328, 48, 1);
INSERT INTO `tbl_test_result_mht` VALUES (349, 328, 49, 1);
INSERT INTO `tbl_test_result_mht` VALUES (350, 328, 50, 1);
INSERT INTO `tbl_test_result_mht` VALUES (351, 328, 51, 1);
INSERT INTO `tbl_test_result_mht` VALUES (352, 328, 52, 1);
INSERT INTO `tbl_test_result_mht` VALUES (353, 328, 53, 1);
INSERT INTO `tbl_test_result_mht` VALUES (354, 328, 54, 1);
INSERT INTO `tbl_test_result_mht` VALUES (355, 328, 55, 1);
INSERT INTO `tbl_test_result_mht` VALUES (356, 328, 56, 1);
INSERT INTO `tbl_test_result_mht` VALUES (357, 328, 57, 1);
INSERT INTO `tbl_test_result_mht` VALUES (358, 328, 58, 1);
INSERT INTO `tbl_test_result_mht` VALUES (359, 328, 59, 1);
INSERT INTO `tbl_test_result_mht` VALUES (360, 328, 60, 0);
INSERT INTO `tbl_test_result_mht` VALUES (361, 328, 61, 0);
INSERT INTO `tbl_test_result_mht` VALUES (362, 328, 62, 0);
INSERT INTO `tbl_test_result_mht` VALUES (363, 328, 63, 0);
INSERT INTO `tbl_test_result_mht` VALUES (364, 328, 64, 0);
INSERT INTO `tbl_test_result_mht` VALUES (365, 328, 65, 0);
INSERT INTO `tbl_test_result_mht` VALUES (366, 328, 66, 0);
INSERT INTO `tbl_test_result_mht` VALUES (367, 328, 67, 0);
INSERT INTO `tbl_test_result_mht` VALUES (368, 328, 68, 0);
INSERT INTO `tbl_test_result_mht` VALUES (369, 328, 69, 0);
INSERT INTO `tbl_test_result_mht` VALUES (370, 328, 70, 0);
INSERT INTO `tbl_test_result_mht` VALUES (371, 328, 71, 0);
INSERT INTO `tbl_test_result_mht` VALUES (372, 328, 72, 0);
INSERT INTO `tbl_test_result_mht` VALUES (373, 328, 73, 0);
INSERT INTO `tbl_test_result_mht` VALUES (374, 328, 74, 0);
INSERT INTO `tbl_test_result_mht` VALUES (375, 328, 75, 0);
INSERT INTO `tbl_test_result_mht` VALUES (376, 328, 76, 0);
INSERT INTO `tbl_test_result_mht` VALUES (377, 328, 77, 0);
INSERT INTO `tbl_test_result_mht` VALUES (378, 328, 78, 0);
INSERT INTO `tbl_test_result_mht` VALUES (379, 328, 79, 0);
INSERT INTO `tbl_test_result_mht` VALUES (380, 328, 80, 0);
INSERT INTO `tbl_test_result_mht` VALUES (381, 328, 81, 0);
INSERT INTO `tbl_test_result_mht` VALUES (382, 328, 82, 0);
INSERT INTO `tbl_test_result_mht` VALUES (383, 328, 83, 0);
INSERT INTO `tbl_test_result_mht` VALUES (384, 328, 84, 0);
INSERT INTO `tbl_test_result_mht` VALUES (385, 328, 85, 0);
INSERT INTO `tbl_test_result_mht` VALUES (386, 328, 86, 0);
INSERT INTO `tbl_test_result_mht` VALUES (387, 328, 87, 0);
INSERT INTO `tbl_test_result_mht` VALUES (388, 328, 88, 0);
INSERT INTO `tbl_test_result_mht` VALUES (389, 328, 89, 0);
INSERT INTO `tbl_test_result_mht` VALUES (390, 328, 90, 0);
INSERT INTO `tbl_test_result_mht` VALUES (391, 328, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (392, 328, 92, 1);
INSERT INTO `tbl_test_result_mht` VALUES (393, 328, 93, 1);
INSERT INTO `tbl_test_result_mht` VALUES (394, 328, 94, 1);
INSERT INTO `tbl_test_result_mht` VALUES (395, 328, 95, 1);
INSERT INTO `tbl_test_result_mht` VALUES (396, 328, 96, 1);
INSERT INTO `tbl_test_result_mht` VALUES (397, 328, 97, 1);
INSERT INTO `tbl_test_result_mht` VALUES (398, 328, 98, 1);
INSERT INTO `tbl_test_result_mht` VALUES (399, 328, 99, 1);
INSERT INTO `tbl_test_result_mht` VALUES (400, 328, 100, 1);
INSERT INTO `tbl_test_result_mht` VALUES (401, 329, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (402, 329, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (403, 329, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (404, 329, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (405, 329, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (406, 329, 6, 0);
INSERT INTO `tbl_test_result_mht` VALUES (407, 329, 7, 0);
INSERT INTO `tbl_test_result_mht` VALUES (408, 329, 8, 0);
INSERT INTO `tbl_test_result_mht` VALUES (409, 329, 9, 0);
INSERT INTO `tbl_test_result_mht` VALUES (410, 329, 10, 0);
INSERT INTO `tbl_test_result_mht` VALUES (411, 329, 11, 0);
INSERT INTO `tbl_test_result_mht` VALUES (412, 329, 12, 0);
INSERT INTO `tbl_test_result_mht` VALUES (413, 329, 13, 0);
INSERT INTO `tbl_test_result_mht` VALUES (414, 329, 14, 0);
INSERT INTO `tbl_test_result_mht` VALUES (415, 329, 15, 0);
INSERT INTO `tbl_test_result_mht` VALUES (416, 329, 16, 0);
INSERT INTO `tbl_test_result_mht` VALUES (417, 329, 17, 0);
INSERT INTO `tbl_test_result_mht` VALUES (418, 329, 18, 1);
INSERT INTO `tbl_test_result_mht` VALUES (419, 329, 19, 1);
INSERT INTO `tbl_test_result_mht` VALUES (420, 329, 20, 1);
INSERT INTO `tbl_test_result_mht` VALUES (421, 329, 21, 1);
INSERT INTO `tbl_test_result_mht` VALUES (422, 329, 22, 1);
INSERT INTO `tbl_test_result_mht` VALUES (423, 329, 23, 1);
INSERT INTO `tbl_test_result_mht` VALUES (424, 329, 24, 1);
INSERT INTO `tbl_test_result_mht` VALUES (425, 329, 25, 1);
INSERT INTO `tbl_test_result_mht` VALUES (426, 329, 26, 1);
INSERT INTO `tbl_test_result_mht` VALUES (427, 329, 27, 1);
INSERT INTO `tbl_test_result_mht` VALUES (428, 329, 28, 1);
INSERT INTO `tbl_test_result_mht` VALUES (429, 329, 29, 1);
INSERT INTO `tbl_test_result_mht` VALUES (430, 329, 30, 1);
INSERT INTO `tbl_test_result_mht` VALUES (431, 329, 31, 1);
INSERT INTO `tbl_test_result_mht` VALUES (432, 329, 32, 1);
INSERT INTO `tbl_test_result_mht` VALUES (433, 329, 33, 1);
INSERT INTO `tbl_test_result_mht` VALUES (434, 329, 34, 1);
INSERT INTO `tbl_test_result_mht` VALUES (435, 329, 35, 1);
INSERT INTO `tbl_test_result_mht` VALUES (436, 329, 36, 1);
INSERT INTO `tbl_test_result_mht` VALUES (437, 329, 37, 1);
INSERT INTO `tbl_test_result_mht` VALUES (438, 329, 38, 1);
INSERT INTO `tbl_test_result_mht` VALUES (439, 329, 39, 1);
INSERT INTO `tbl_test_result_mht` VALUES (440, 329, 40, 1);
INSERT INTO `tbl_test_result_mht` VALUES (441, 329, 41, 1);
INSERT INTO `tbl_test_result_mht` VALUES (442, 329, 42, 1);
INSERT INTO `tbl_test_result_mht` VALUES (443, 329, 43, 1);
INSERT INTO `tbl_test_result_mht` VALUES (444, 329, 44, 1);
INSERT INTO `tbl_test_result_mht` VALUES (445, 329, 45, 1);
INSERT INTO `tbl_test_result_mht` VALUES (446, 329, 46, 1);
INSERT INTO `tbl_test_result_mht` VALUES (447, 329, 47, 1);
INSERT INTO `tbl_test_result_mht` VALUES (448, 329, 48, 1);
INSERT INTO `tbl_test_result_mht` VALUES (449, 329, 49, 1);
INSERT INTO `tbl_test_result_mht` VALUES (450, 329, 50, 1);
INSERT INTO `tbl_test_result_mht` VALUES (451, 329, 51, 1);
INSERT INTO `tbl_test_result_mht` VALUES (452, 329, 52, 1);
INSERT INTO `tbl_test_result_mht` VALUES (453, 329, 53, 1);
INSERT INTO `tbl_test_result_mht` VALUES (454, 329, 54, 1);
INSERT INTO `tbl_test_result_mht` VALUES (455, 329, 55, 1);
INSERT INTO `tbl_test_result_mht` VALUES (456, 329, 56, 1);
INSERT INTO `tbl_test_result_mht` VALUES (457, 329, 57, 1);
INSERT INTO `tbl_test_result_mht` VALUES (458, 329, 58, 1);
INSERT INTO `tbl_test_result_mht` VALUES (459, 329, 59, 1);
INSERT INTO `tbl_test_result_mht` VALUES (460, 329, 60, 1);
INSERT INTO `tbl_test_result_mht` VALUES (461, 329, 61, 1);
INSERT INTO `tbl_test_result_mht` VALUES (462, 329, 62, 1);
INSERT INTO `tbl_test_result_mht` VALUES (463, 329, 63, 1);
INSERT INTO `tbl_test_result_mht` VALUES (464, 329, 64, 1);
INSERT INTO `tbl_test_result_mht` VALUES (465, 329, 65, 1);
INSERT INTO `tbl_test_result_mht` VALUES (466, 329, 66, 1);
INSERT INTO `tbl_test_result_mht` VALUES (467, 329, 67, 1);
INSERT INTO `tbl_test_result_mht` VALUES (468, 329, 68, 1);
INSERT INTO `tbl_test_result_mht` VALUES (469, 329, 69, 1);
INSERT INTO `tbl_test_result_mht` VALUES (470, 329, 70, 1);
INSERT INTO `tbl_test_result_mht` VALUES (471, 329, 71, 1);
INSERT INTO `tbl_test_result_mht` VALUES (472, 329, 72, 1);
INSERT INTO `tbl_test_result_mht` VALUES (473, 329, 73, 1);
INSERT INTO `tbl_test_result_mht` VALUES (474, 329, 74, 1);
INSERT INTO `tbl_test_result_mht` VALUES (475, 329, 75, 1);
INSERT INTO `tbl_test_result_mht` VALUES (476, 329, 76, 1);
INSERT INTO `tbl_test_result_mht` VALUES (477, 329, 77, 1);
INSERT INTO `tbl_test_result_mht` VALUES (478, 329, 78, 1);
INSERT INTO `tbl_test_result_mht` VALUES (479, 329, 79, 1);
INSERT INTO `tbl_test_result_mht` VALUES (480, 329, 80, 1);
INSERT INTO `tbl_test_result_mht` VALUES (481, 329, 81, 1);
INSERT INTO `tbl_test_result_mht` VALUES (482, 329, 82, 1);
INSERT INTO `tbl_test_result_mht` VALUES (483, 329, 83, 1);
INSERT INTO `tbl_test_result_mht` VALUES (484, 329, 84, 1);
INSERT INTO `tbl_test_result_mht` VALUES (485, 329, 85, 1);
INSERT INTO `tbl_test_result_mht` VALUES (486, 329, 86, 1);
INSERT INTO `tbl_test_result_mht` VALUES (487, 329, 87, 1);
INSERT INTO `tbl_test_result_mht` VALUES (488, 329, 88, 1);
INSERT INTO `tbl_test_result_mht` VALUES (489, 329, 89, 1);
INSERT INTO `tbl_test_result_mht` VALUES (490, 329, 90, 1);
INSERT INTO `tbl_test_result_mht` VALUES (491, 329, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (492, 329, 92, 1);
INSERT INTO `tbl_test_result_mht` VALUES (493, 329, 93, 1);
INSERT INTO `tbl_test_result_mht` VALUES (494, 329, 94, 1);
INSERT INTO `tbl_test_result_mht` VALUES (495, 329, 95, 1);
INSERT INTO `tbl_test_result_mht` VALUES (496, 329, 96, 1);
INSERT INTO `tbl_test_result_mht` VALUES (497, 329, 97, 1);
INSERT INTO `tbl_test_result_mht` VALUES (498, 329, 98, 1);
INSERT INTO `tbl_test_result_mht` VALUES (499, 329, 99, 1);
INSERT INTO `tbl_test_result_mht` VALUES (500, 329, 100, 1);
INSERT INTO `tbl_test_result_mht` VALUES (501, 330, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (502, 330, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (503, 330, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (504, 330, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (505, 330, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (506, 330, 6, 1);
INSERT INTO `tbl_test_result_mht` VALUES (507, 330, 7, 1);
INSERT INTO `tbl_test_result_mht` VALUES (508, 330, 8, 1);
INSERT INTO `tbl_test_result_mht` VALUES (509, 330, 9, 1);
INSERT INTO `tbl_test_result_mht` VALUES (510, 330, 10, 1);
INSERT INTO `tbl_test_result_mht` VALUES (511, 330, 11, 1);
INSERT INTO `tbl_test_result_mht` VALUES (512, 330, 12, 1);
INSERT INTO `tbl_test_result_mht` VALUES (513, 330, 13, 1);
INSERT INTO `tbl_test_result_mht` VALUES (514, 330, 14, 1);
INSERT INTO `tbl_test_result_mht` VALUES (515, 330, 15, 1);
INSERT INTO `tbl_test_result_mht` VALUES (516, 330, 16, 1);
INSERT INTO `tbl_test_result_mht` VALUES (517, 330, 17, 1);
INSERT INTO `tbl_test_result_mht` VALUES (518, 330, 18, 1);
INSERT INTO `tbl_test_result_mht` VALUES (519, 330, 19, 1);
INSERT INTO `tbl_test_result_mht` VALUES (520, 330, 20, 1);
INSERT INTO `tbl_test_result_mht` VALUES (521, 330, 21, 1);
INSERT INTO `tbl_test_result_mht` VALUES (522, 330, 22, 1);
INSERT INTO `tbl_test_result_mht` VALUES (523, 330, 23, 1);
INSERT INTO `tbl_test_result_mht` VALUES (524, 330, 24, 1);
INSERT INTO `tbl_test_result_mht` VALUES (525, 330, 25, 1);
INSERT INTO `tbl_test_result_mht` VALUES (526, 330, 26, 1);
INSERT INTO `tbl_test_result_mht` VALUES (527, 330, 27, 1);
INSERT INTO `tbl_test_result_mht` VALUES (528, 330, 28, 1);
INSERT INTO `tbl_test_result_mht` VALUES (529, 330, 29, 1);
INSERT INTO `tbl_test_result_mht` VALUES (530, 330, 30, 1);
INSERT INTO `tbl_test_result_mht` VALUES (531, 330, 31, 1);
INSERT INTO `tbl_test_result_mht` VALUES (532, 330, 32, 1);
INSERT INTO `tbl_test_result_mht` VALUES (533, 330, 33, 1);
INSERT INTO `tbl_test_result_mht` VALUES (534, 330, 34, 1);
INSERT INTO `tbl_test_result_mht` VALUES (535, 330, 35, 1);
INSERT INTO `tbl_test_result_mht` VALUES (536, 330, 36, 1);
INSERT INTO `tbl_test_result_mht` VALUES (537, 330, 37, 1);
INSERT INTO `tbl_test_result_mht` VALUES (538, 330, 38, 1);
INSERT INTO `tbl_test_result_mht` VALUES (539, 330, 39, 1);
INSERT INTO `tbl_test_result_mht` VALUES (540, 330, 40, 1);
INSERT INTO `tbl_test_result_mht` VALUES (541, 330, 41, 1);
INSERT INTO `tbl_test_result_mht` VALUES (542, 330, 42, 1);
INSERT INTO `tbl_test_result_mht` VALUES (543, 330, 43, 1);
INSERT INTO `tbl_test_result_mht` VALUES (544, 330, 44, 1);
INSERT INTO `tbl_test_result_mht` VALUES (545, 330, 45, 1);
INSERT INTO `tbl_test_result_mht` VALUES (546, 330, 46, 1);
INSERT INTO `tbl_test_result_mht` VALUES (547, 330, 47, 1);
INSERT INTO `tbl_test_result_mht` VALUES (548, 330, 48, 1);
INSERT INTO `tbl_test_result_mht` VALUES (549, 330, 49, 1);
INSERT INTO `tbl_test_result_mht` VALUES (550, 330, 50, 1);
INSERT INTO `tbl_test_result_mht` VALUES (551, 330, 51, 1);
INSERT INTO `tbl_test_result_mht` VALUES (552, 330, 52, 1);
INSERT INTO `tbl_test_result_mht` VALUES (553, 330, 53, 1);
INSERT INTO `tbl_test_result_mht` VALUES (554, 330, 54, 1);
INSERT INTO `tbl_test_result_mht` VALUES (555, 330, 55, 1);
INSERT INTO `tbl_test_result_mht` VALUES (556, 330, 56, 1);
INSERT INTO `tbl_test_result_mht` VALUES (557, 330, 57, 1);
INSERT INTO `tbl_test_result_mht` VALUES (558, 330, 58, 1);
INSERT INTO `tbl_test_result_mht` VALUES (559, 330, 59, 1);
INSERT INTO `tbl_test_result_mht` VALUES (560, 330, 60, 1);
INSERT INTO `tbl_test_result_mht` VALUES (561, 330, 61, 1);
INSERT INTO `tbl_test_result_mht` VALUES (562, 330, 62, 1);
INSERT INTO `tbl_test_result_mht` VALUES (563, 330, 63, 1);
INSERT INTO `tbl_test_result_mht` VALUES (564, 330, 64, 1);
INSERT INTO `tbl_test_result_mht` VALUES (565, 330, 65, 1);
INSERT INTO `tbl_test_result_mht` VALUES (566, 330, 66, 1);
INSERT INTO `tbl_test_result_mht` VALUES (567, 330, 67, 1);
INSERT INTO `tbl_test_result_mht` VALUES (568, 330, 68, 1);
INSERT INTO `tbl_test_result_mht` VALUES (569, 330, 69, 1);
INSERT INTO `tbl_test_result_mht` VALUES (570, 330, 70, 1);
INSERT INTO `tbl_test_result_mht` VALUES (571, 330, 71, 1);
INSERT INTO `tbl_test_result_mht` VALUES (572, 330, 72, 1);
INSERT INTO `tbl_test_result_mht` VALUES (573, 330, 73, 1);
INSERT INTO `tbl_test_result_mht` VALUES (574, 330, 74, 1);
INSERT INTO `tbl_test_result_mht` VALUES (575, 330, 75, 1);
INSERT INTO `tbl_test_result_mht` VALUES (576, 330, 76, 1);
INSERT INTO `tbl_test_result_mht` VALUES (577, 330, 77, 1);
INSERT INTO `tbl_test_result_mht` VALUES (578, 330, 78, 1);
INSERT INTO `tbl_test_result_mht` VALUES (579, 330, 79, 1);
INSERT INTO `tbl_test_result_mht` VALUES (580, 330, 80, 1);
INSERT INTO `tbl_test_result_mht` VALUES (581, 330, 81, 1);
INSERT INTO `tbl_test_result_mht` VALUES (582, 330, 82, 1);
INSERT INTO `tbl_test_result_mht` VALUES (583, 330, 83, 1);
INSERT INTO `tbl_test_result_mht` VALUES (584, 330, 84, 1);
INSERT INTO `tbl_test_result_mht` VALUES (585, 330, 85, 1);
INSERT INTO `tbl_test_result_mht` VALUES (586, 330, 86, 1);
INSERT INTO `tbl_test_result_mht` VALUES (587, 330, 87, 1);
INSERT INTO `tbl_test_result_mht` VALUES (588, 330, 88, 1);
INSERT INTO `tbl_test_result_mht` VALUES (589, 330, 89, 1);
INSERT INTO `tbl_test_result_mht` VALUES (590, 330, 90, 1);
INSERT INTO `tbl_test_result_mht` VALUES (591, 330, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (592, 330, 92, 1);
INSERT INTO `tbl_test_result_mht` VALUES (593, 330, 93, 1);
INSERT INTO `tbl_test_result_mht` VALUES (594, 330, 94, 1);
INSERT INTO `tbl_test_result_mht` VALUES (595, 330, 95, 1);
INSERT INTO `tbl_test_result_mht` VALUES (596, 330, 96, 1);
INSERT INTO `tbl_test_result_mht` VALUES (597, 330, 97, 1);
INSERT INTO `tbl_test_result_mht` VALUES (598, 330, 98, 1);
INSERT INTO `tbl_test_result_mht` VALUES (599, 330, 99, 1);
INSERT INTO `tbl_test_result_mht` VALUES (600, 330, 100, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1401, 339, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1402, 339, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1403, 339, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1404, 339, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1405, 339, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1406, 339, 6, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1407, 339, 7, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1408, 339, 8, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1409, 339, 9, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1410, 339, 10, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1411, 339, 11, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1412, 339, 12, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1413, 339, 13, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1414, 339, 14, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1415, 339, 15, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1416, 339, 16, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1417, 339, 17, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1418, 339, 18, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1419, 339, 19, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1420, 339, 20, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1421, 339, 21, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1422, 339, 22, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1423, 339, 23, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1424, 339, 24, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1425, 339, 25, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1426, 339, 26, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1427, 339, 27, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1428, 339, 28, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1429, 339, 29, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1430, 339, 30, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1431, 339, 31, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1432, 339, 32, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1433, 339, 33, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1434, 339, 34, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1435, 339, 35, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1436, 339, 36, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1437, 339, 37, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1438, 339, 38, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1439, 339, 39, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1440, 339, 40, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1441, 339, 41, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1442, 339, 42, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1443, 339, 43, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1444, 339, 44, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1445, 339, 45, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1446, 339, 46, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1447, 339, 47, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1448, 339, 48, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1449, 339, 49, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1450, 339, 50, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1451, 339, 51, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1452, 339, 52, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1453, 339, 53, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1454, 339, 54, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1455, 339, 55, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1456, 339, 56, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1457, 339, 57, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1458, 339, 58, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1459, 339, 59, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1460, 339, 60, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1461, 339, 61, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1462, 339, 62, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1463, 339, 63, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1464, 339, 64, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1465, 339, 65, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1466, 339, 66, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1467, 339, 67, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1468, 339, 68, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1469, 339, 69, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1470, 339, 70, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1471, 339, 71, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1472, 339, 72, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1473, 339, 73, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1474, 339, 74, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1475, 339, 75, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1476, 339, 76, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1477, 339, 77, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1478, 339, 78, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1479, 339, 79, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1480, 339, 80, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1481, 339, 81, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1482, 339, 82, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1483, 339, 83, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1484, 339, 84, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1485, 339, 85, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1486, 339, 86, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1487, 339, 87, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1488, 339, 88, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1489, 339, 89, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1490, 339, 90, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1491, 339, 91, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1492, 339, 92, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1493, 339, 93, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1494, 339, 94, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1495, 339, 95, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1496, 339, 96, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1497, 339, 97, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1498, 339, 98, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1499, 339, 99, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1500, 339, 100, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1501, 340, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1502, 340, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1503, 340, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1504, 340, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1505, 340, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1506, 340, 6, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1507, 340, 7, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1508, 340, 8, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1509, 340, 9, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1510, 340, 10, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1511, 340, 11, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1512, 340, 12, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1513, 340, 13, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1514, 340, 14, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1515, 340, 15, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1516, 340, 16, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1517, 340, 17, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1518, 340, 18, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1519, 340, 19, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1520, 340, 20, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1521, 340, 21, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1522, 340, 22, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1523, 340, 23, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1524, 340, 24, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1525, 340, 25, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1526, 340, 26, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1527, 340, 27, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1528, 340, 28, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1529, 340, 29, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1530, 340, 30, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1531, 340, 31, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1532, 340, 32, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1533, 340, 33, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1534, 340, 34, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1535, 340, 35, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1536, 340, 36, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1537, 340, 37, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1538, 340, 38, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1539, 340, 39, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1540, 340, 40, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1541, 340, 41, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1542, 340, 42, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1543, 340, 43, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1544, 340, 44, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1545, 340, 45, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1546, 340, 46, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1547, 340, 47, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1548, 340, 48, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1549, 340, 49, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1550, 340, 50, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1551, 340, 51, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1552, 340, 52, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1553, 340, 53, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1554, 340, 54, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1555, 340, 55, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1556, 340, 56, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1557, 340, 57, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1558, 340, 58, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1559, 340, 59, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1560, 340, 60, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1561, 340, 61, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1562, 340, 62, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1563, 340, 63, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1564, 340, 64, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1565, 340, 65, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1566, 340, 66, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1567, 340, 67, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1568, 340, 68, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1569, 340, 69, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1570, 340, 70, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1571, 340, 71, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1572, 340, 72, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1573, 340, 73, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1574, 340, 74, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1575, 340, 75, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1576, 340, 76, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1577, 340, 77, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1578, 340, 78, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1579, 340, 79, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1580, 340, 80, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1581, 340, 81, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1582, 340, 82, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1583, 340, 83, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1584, 340, 84, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1585, 340, 85, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1586, 340, 86, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1587, 340, 87, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1588, 340, 88, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1589, 340, 89, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1590, 340, 90, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1591, 340, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1592, 340, 92, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1593, 340, 93, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1594, 340, 94, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1595, 340, 95, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1596, 340, 96, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1597, 340, 97, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1598, 340, 98, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1599, 340, 99, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1600, 340, 100, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1601, 341, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1602, 341, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1603, 341, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1604, 341, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1605, 341, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1606, 341, 6, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1607, 341, 7, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1608, 341, 8, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1609, 341, 9, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1610, 341, 10, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1611, 341, 11, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1612, 341, 12, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1613, 341, 13, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1614, 341, 14, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1615, 341, 15, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1616, 341, 16, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1617, 341, 17, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1618, 341, 18, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1619, 341, 19, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1620, 341, 20, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1621, 341, 21, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1622, 341, 22, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1623, 341, 23, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1624, 341, 24, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1625, 341, 25, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1626, 341, 26, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1627, 341, 27, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1628, 341, 28, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1629, 341, 29, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1630, 341, 30, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1631, 341, 31, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1632, 341, 32, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1633, 341, 33, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1634, 341, 34, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1635, 341, 35, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1636, 341, 36, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1637, 341, 37, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1638, 341, 38, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1639, 341, 39, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1640, 341, 40, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1641, 341, 41, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1642, 341, 42, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1643, 341, 43, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1644, 341, 44, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1645, 341, 45, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1646, 341, 46, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1647, 341, 47, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1648, 341, 48, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1649, 341, 49, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1650, 341, 50, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1651, 341, 51, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1652, 341, 52, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1653, 341, 53, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1654, 341, 54, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1655, 341, 55, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1656, 341, 56, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1657, 341, 57, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1658, 341, 58, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1659, 341, 59, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1660, 341, 60, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1661, 341, 61, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1662, 341, 62, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1663, 341, 63, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1664, 341, 64, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1665, 341, 65, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1666, 341, 66, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1667, 341, 67, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1668, 341, 68, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1669, 341, 69, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1670, 341, 70, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1671, 341, 71, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1672, 341, 72, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1673, 341, 73, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1674, 341, 74, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1675, 341, 75, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1676, 341, 76, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1677, 341, 77, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1678, 341, 78, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1679, 341, 79, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1680, 341, 80, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1681, 341, 81, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1682, 341, 82, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1683, 341, 83, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1684, 341, 84, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1685, 341, 85, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1686, 341, 86, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1687, 341, 87, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1688, 341, 88, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1689, 341, 89, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1690, 341, 90, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1691, 341, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1692, 341, 92, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1693, 341, 93, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1694, 341, 94, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1695, 341, 95, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1696, 341, 96, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1697, 341, 97, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1698, 341, 98, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1699, 341, 99, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1700, 341, 100, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1701, 342, 1, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1702, 342, 2, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1703, 342, 3, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1704, 342, 4, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1705, 342, 5, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1706, 342, 6, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1707, 342, 7, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1708, 342, 8, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1709, 342, 9, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1710, 342, 10, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1711, 342, 11, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1712, 342, 12, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1713, 342, 13, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1714, 342, 14, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1715, 342, 15, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1716, 342, 16, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1717, 342, 17, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1718, 342, 18, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1719, 342, 19, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1720, 342, 20, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1721, 342, 21, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1722, 342, 22, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1723, 342, 23, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1724, 342, 24, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1725, 342, 25, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1726, 342, 26, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1727, 342, 27, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1728, 342, 28, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1729, 342, 29, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1730, 342, 30, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1731, 342, 31, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1732, 342, 32, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1733, 342, 33, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1734, 342, 34, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1735, 342, 35, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1736, 342, 36, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1737, 342, 37, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1738, 342, 38, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1739, 342, 39, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1740, 342, 40, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1741, 342, 41, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1742, 342, 42, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1743, 342, 43, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1744, 342, 44, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1745, 342, 45, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1746, 342, 46, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1747, 342, 47, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1748, 342, 48, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1749, 342, 49, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1750, 342, 50, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1751, 342, 51, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1752, 342, 52, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1753, 342, 53, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1754, 342, 54, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1755, 342, 55, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1756, 342, 56, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1757, 342, 57, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1758, 342, 58, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1759, 342, 59, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1760, 342, 60, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1761, 342, 61, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1762, 342, 62, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1763, 342, 63, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1764, 342, 64, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1765, 342, 65, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1766, 342, 66, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1767, 342, 67, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1768, 342, 68, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1769, 342, 69, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1770, 342, 70, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1771, 342, 71, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1772, 342, 72, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1773, 342, 73, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1774, 342, 74, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1775, 342, 75, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1776, 342, 76, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1777, 342, 77, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1778, 342, 78, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1779, 342, 79, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1780, 342, 80, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1781, 342, 81, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1782, 342, 82, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1783, 342, 83, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1784, 342, 84, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1785, 342, 85, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1786, 342, 86, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1787, 342, 87, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1788, 342, 88, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1789, 342, 89, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1790, 342, 90, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1791, 342, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1792, 342, 92, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1793, 342, 93, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1794, 342, 94, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1795, 342, 95, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1796, 342, 96, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1797, 342, 97, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1798, 342, 98, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1799, 342, 99, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1800, 342, 100, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1801, 343, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1802, 343, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1803, 343, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1804, 343, 4, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1805, 343, 5, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1806, 343, 6, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1807, 343, 7, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1808, 343, 8, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1809, 343, 9, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1810, 343, 10, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1811, 343, 11, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1812, 343, 12, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1813, 343, 13, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1814, 343, 14, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1815, 343, 15, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1816, 343, 16, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1817, 343, 17, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1818, 343, 18, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1819, 343, 19, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1820, 343, 20, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1821, 343, 21, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1822, 343, 22, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1823, 343, 23, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1824, 343, 24, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1825, 343, 25, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1826, 343, 26, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1827, 343, 27, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1828, 343, 28, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1829, 343, 29, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1830, 343, 30, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1831, 343, 31, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1832, 343, 32, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1833, 343, 33, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1834, 343, 34, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1835, 343, 35, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1836, 343, 36, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1837, 343, 37, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1838, 343, 38, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1839, 343, 39, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1840, 343, 40, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1841, 343, 41, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1842, 343, 42, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1843, 343, 43, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1844, 343, 44, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1845, 343, 45, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1846, 343, 46, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1847, 343, 47, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1848, 343, 48, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1849, 343, 49, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1850, 343, 50, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1851, 343, 51, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1852, 343, 52, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1853, 343, 53, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1854, 343, 54, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1855, 343, 55, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1856, 343, 56, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1857, 343, 57, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1858, 343, 58, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1859, 343, 59, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1860, 343, 60, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1861, 343, 61, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1862, 343, 62, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1863, 343, 63, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1864, 343, 64, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1865, 343, 65, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1866, 343, 66, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1867, 343, 67, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1868, 343, 68, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1869, 343, 69, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1870, 343, 70, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1871, 343, 71, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1872, 343, 72, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1873, 343, 73, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1874, 343, 74, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1875, 343, 75, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1876, 343, 76, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1877, 343, 77, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1878, 343, 78, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1879, 343, 79, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1880, 343, 80, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1881, 343, 81, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1882, 343, 82, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1883, 343, 83, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1884, 343, 84, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1885, 343, 85, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1886, 343, 86, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1887, 343, 87, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1888, 343, 88, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1889, 343, 89, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1890, 343, 90, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1891, 343, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1892, 343, 92, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1893, 343, 93, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1894, 343, 94, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1895, 343, 95, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1896, 343, 96, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1897, 343, 97, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1898, 343, 98, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1899, 343, 99, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1900, 343, 100, 1);
INSERT INTO `tbl_test_result_mht` VALUES (1901, 344, 1, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1902, 344, 2, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1903, 344, 3, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1904, 344, 4, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1905, 344, 5, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1906, 344, 6, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1907, 344, 7, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1908, 344, 8, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1909, 344, 9, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1910, 344, 10, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1911, 344, 11, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1912, 344, 12, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1913, 344, 13, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1914, 344, 14, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1915, 344, 15, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1916, 344, 16, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1917, 344, 17, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1918, 344, 18, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1919, 344, 19, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1920, 344, 20, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1921, 344, 21, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1922, 344, 22, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1923, 344, 23, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1924, 344, 24, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1925, 344, 25, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1926, 344, 26, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1927, 344, 27, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1928, 344, 28, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1929, 344, 29, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1930, 344, 30, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1931, 344, 31, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1932, 344, 32, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1933, 344, 33, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1934, 344, 34, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1935, 344, 35, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1936, 344, 36, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1937, 344, 37, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1938, 344, 38, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1939, 344, 39, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1940, 344, 40, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1941, 344, 41, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1942, 344, 42, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1943, 344, 43, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1944, 344, 44, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1945, 344, 45, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1946, 344, 46, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1947, 344, 47, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1948, 344, 48, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1949, 344, 49, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1950, 344, 50, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1951, 344, 51, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1952, 344, 52, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1953, 344, 53, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1954, 344, 54, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1955, 344, 55, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1956, 344, 56, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1957, 344, 57, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1958, 344, 58, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1959, 344, 59, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1960, 344, 60, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1961, 344, 61, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1962, 344, 62, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1963, 344, 63, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1964, 344, 64, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1965, 344, 65, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1966, 344, 66, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1967, 344, 67, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1968, 344, 68, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1969, 344, 69, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1970, 344, 70, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1971, 344, 71, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1972, 344, 72, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1973, 344, 73, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1974, 344, 74, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1975, 344, 75, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1976, 344, 76, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1977, 344, 77, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1978, 344, 78, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1979, 344, 79, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1980, 344, 80, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1981, 344, 81, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1982, 344, 82, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1983, 344, 83, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1984, 344, 84, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1985, 344, 85, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1986, 344, 86, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1987, 344, 87, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1988, 344, 88, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1989, 344, 89, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1990, 344, 90, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1991, 344, 91, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1992, 344, 92, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1993, 344, 93, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1994, 344, 94, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1995, 344, 95, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1996, 344, 96, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1997, 344, 97, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1998, 344, 98, 0);
INSERT INTO `tbl_test_result_mht` VALUES (1999, 344, 99, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2000, 344, 100, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2001, 345, 1, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2002, 345, 2, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2003, 345, 3, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2004, 345, 4, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2005, 345, 5, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2006, 345, 6, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2007, 345, 7, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2008, 345, 8, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2009, 345, 9, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2010, 345, 10, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2011, 345, 11, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2012, 345, 12, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2013, 345, 13, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2014, 345, 14, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2015, 345, 15, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2016, 345, 16, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2017, 345, 17, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2018, 345, 18, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2019, 345, 19, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2020, 345, 20, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2021, 345, 21, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2022, 345, 22, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2023, 345, 23, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2024, 345, 24, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2025, 345, 25, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2026, 345, 26, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2027, 345, 27, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2028, 345, 28, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2029, 345, 29, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2030, 345, 30, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2031, 345, 31, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2032, 345, 32, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2033, 345, 33, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2034, 345, 34, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2035, 345, 35, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2036, 345, 36, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2037, 345, 37, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2038, 345, 38, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2039, 345, 39, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2040, 345, 40, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2041, 345, 41, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2042, 345, 42, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2043, 345, 43, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2044, 345, 44, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2045, 345, 45, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2046, 345, 46, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2047, 345, 47, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2048, 345, 48, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2049, 345, 49, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2050, 345, 50, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2051, 345, 51, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2052, 345, 52, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2053, 345, 53, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2054, 345, 54, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2055, 345, 55, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2056, 345, 56, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2057, 345, 57, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2058, 345, 58, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2059, 345, 59, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2060, 345, 60, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2061, 345, 61, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2062, 345, 62, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2063, 345, 63, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2064, 345, 64, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2065, 345, 65, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2066, 345, 66, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2067, 345, 67, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2068, 345, 68, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2069, 345, 69, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2070, 345, 70, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2071, 345, 71, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2072, 345, 72, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2073, 345, 73, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2074, 345, 74, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2075, 345, 75, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2076, 345, 76, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2077, 345, 77, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2078, 345, 78, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2079, 345, 79, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2080, 345, 80, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2081, 345, 81, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2082, 345, 82, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2083, 345, 83, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2084, 345, 84, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2085, 345, 85, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2086, 345, 86, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2087, 345, 87, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2088, 345, 88, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2089, 345, 89, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2090, 345, 90, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2091, 345, 91, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2092, 345, 92, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2093, 345, 93, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2094, 345, 94, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2095, 345, 95, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2096, 345, 96, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2097, 345, 97, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2098, 345, 98, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2099, 345, 99, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2100, 345, 100, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2101, 346, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2102, 346, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2103, 346, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2104, 346, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2105, 346, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2106, 346, 6, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2107, 346, 7, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2108, 346, 8, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2109, 346, 9, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2110, 346, 10, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2111, 346, 11, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2112, 346, 12, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2113, 346, 13, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2114, 346, 14, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2115, 346, 15, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2116, 346, 16, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2117, 346, 17, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2118, 346, 18, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2119, 346, 19, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2120, 346, 20, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2121, 346, 21, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2122, 346, 22, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2123, 346, 23, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2124, 346, 24, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2125, 346, 25, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2126, 346, 26, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2127, 346, 27, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2128, 346, 28, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2129, 346, 29, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2130, 346, 30, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2131, 346, 31, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2132, 346, 32, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2133, 346, 33, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2134, 346, 34, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2135, 346, 35, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2136, 346, 36, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2137, 346, 37, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2138, 346, 38, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2139, 346, 39, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2140, 346, 40, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2141, 346, 41, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2142, 346, 42, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2143, 346, 43, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2144, 346, 44, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2145, 346, 45, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2146, 346, 46, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2147, 346, 47, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2148, 346, 48, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2149, 346, 49, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2150, 346, 50, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2151, 346, 51, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2152, 346, 52, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2153, 346, 53, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2154, 346, 54, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2155, 346, 55, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2156, 346, 56, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2157, 346, 57, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2158, 346, 58, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2159, 346, 59, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2160, 346, 60, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2161, 346, 61, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2162, 346, 62, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2163, 346, 63, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2164, 346, 64, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2165, 346, 65, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2166, 346, 66, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2167, 346, 67, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2168, 346, 68, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2169, 346, 69, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2170, 346, 70, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2171, 346, 71, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2172, 346, 72, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2173, 346, 73, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2174, 346, 74, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2175, 346, 75, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2176, 346, 76, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2177, 346, 77, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2178, 346, 78, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2179, 346, 79, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2180, 346, 80, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2181, 346, 81, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2182, 346, 82, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2183, 346, 83, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2184, 346, 84, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2185, 346, 85, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2186, 346, 86, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2187, 346, 87, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2188, 346, 88, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2189, 346, 89, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2190, 346, 90, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2191, 346, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2192, 346, 92, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2193, 346, 93, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2194, 346, 94, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2195, 346, 95, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2196, 346, 96, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2197, 346, 97, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2198, 346, 98, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2199, 346, 99, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2200, 346, 100, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2201, 347, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2202, 347, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2203, 347, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2204, 347, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2205, 347, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2206, 347, 6, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2207, 347, 7, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2208, 347, 8, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2209, 347, 9, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2210, 347, 10, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2211, 347, 11, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2212, 347, 12, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2213, 347, 13, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2214, 347, 14, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2215, 347, 15, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2216, 347, 16, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2217, 347, 17, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2218, 347, 18, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2219, 347, 19, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2220, 347, 20, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2221, 347, 21, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2222, 347, 22, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2223, 347, 23, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2224, 347, 24, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2225, 347, 25, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2226, 347, 26, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2227, 347, 27, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2228, 347, 28, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2229, 347, 29, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2230, 347, 30, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2231, 347, 31, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2232, 347, 32, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2233, 347, 33, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2234, 347, 34, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2235, 347, 35, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2236, 347, 36, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2237, 347, 37, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2238, 347, 38, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2239, 347, 39, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2240, 347, 40, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2241, 347, 41, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2242, 347, 42, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2243, 347, 43, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2244, 347, 44, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2245, 347, 45, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2246, 347, 46, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2247, 347, 47, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2248, 347, 48, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2249, 347, 49, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2250, 347, 50, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2251, 347, 51, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2252, 347, 52, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2253, 347, 53, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2254, 347, 54, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2255, 347, 55, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2256, 347, 56, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2257, 347, 57, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2258, 347, 58, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2259, 347, 59, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2260, 347, 60, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2261, 347, 61, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2262, 347, 62, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2263, 347, 63, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2264, 347, 64, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2265, 347, 65, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2266, 347, 66, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2267, 347, 67, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2268, 347, 68, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2269, 347, 69, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2270, 347, 70, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2271, 347, 71, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2272, 347, 72, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2273, 347, 73, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2274, 347, 74, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2275, 347, 75, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2276, 347, 76, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2277, 347, 77, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2278, 347, 78, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2279, 347, 79, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2280, 347, 80, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2281, 347, 81, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2282, 347, 82, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2283, 347, 83, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2284, 347, 84, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2285, 347, 85, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2286, 347, 86, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2287, 347, 87, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2288, 347, 88, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2289, 347, 89, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2290, 347, 90, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2291, 347, 91, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2292, 347, 92, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2293, 347, 93, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2294, 347, 94, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2295, 347, 95, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2296, 347, 96, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2297, 347, 97, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2298, 347, 98, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2299, 347, 99, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2300, 347, 100, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2301, 348, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2302, 348, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2303, 348, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2304, 348, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2305, 348, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2306, 348, 6, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2307, 348, 7, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2308, 348, 8, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2309, 348, 9, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2310, 348, 10, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2311, 348, 11, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2312, 348, 12, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2313, 348, 13, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2314, 348, 14, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2315, 348, 15, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2316, 348, 16, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2317, 348, 17, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2318, 348, 18, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2319, 348, 19, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2320, 348, 20, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2321, 348, 21, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2322, 348, 22, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2323, 348, 23, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2324, 348, 24, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2325, 348, 25, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2326, 348, 26, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2327, 348, 27, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2328, 348, 28, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2329, 348, 29, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2330, 348, 30, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2331, 348, 31, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2332, 348, 32, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2333, 348, 33, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2334, 348, 34, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2335, 348, 35, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2336, 348, 36, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2337, 348, 37, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2338, 348, 38, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2339, 348, 39, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2340, 348, 40, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2341, 348, 41, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2342, 348, 42, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2343, 348, 43, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2344, 348, 44, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2345, 348, 45, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2346, 348, 46, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2347, 348, 47, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2348, 348, 48, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2349, 348, 49, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2350, 348, 50, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2351, 348, 51, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2352, 348, 52, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2353, 348, 53, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2354, 348, 54, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2355, 348, 55, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2356, 348, 56, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2357, 348, 57, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2358, 348, 58, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2359, 348, 59, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2360, 348, 60, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2361, 348, 61, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2362, 348, 62, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2363, 348, 63, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2364, 348, 64, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2365, 348, 65, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2366, 348, 66, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2367, 348, 67, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2368, 348, 68, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2369, 348, 69, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2370, 348, 70, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2371, 348, 71, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2372, 348, 72, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2373, 348, 73, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2374, 348, 74, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2375, 348, 75, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2376, 348, 76, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2377, 348, 77, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2378, 348, 78, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2379, 348, 79, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2380, 348, 80, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2381, 348, 81, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2382, 348, 82, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2383, 348, 83, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2384, 348, 84, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2385, 348, 85, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2386, 348, 86, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2387, 348, 87, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2388, 348, 88, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2389, 348, 89, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2390, 348, 90, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2391, 348, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2392, 348, 92, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2393, 348, 93, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2394, 348, 94, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2395, 348, 95, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2396, 348, 96, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2397, 348, 97, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2398, 348, 98, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2399, 348, 99, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2400, 348, 100, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2401, 349, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2402, 349, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2403, 349, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2404, 349, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2405, 349, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2406, 349, 6, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2407, 349, 7, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2408, 349, 8, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2409, 349, 9, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2410, 349, 10, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2411, 349, 11, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2412, 349, 12, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2413, 349, 13, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2414, 349, 14, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2415, 349, 15, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2416, 349, 16, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2417, 349, 17, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2418, 349, 18, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2419, 349, 19, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2420, 349, 20, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2421, 349, 21, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2422, 349, 22, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2423, 349, 23, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2424, 349, 24, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2425, 349, 25, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2426, 349, 26, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2427, 349, 27, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2428, 349, 28, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2429, 349, 29, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2430, 349, 30, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2431, 349, 31, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2432, 349, 32, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2433, 349, 33, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2434, 349, 34, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2435, 349, 35, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2436, 349, 36, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2437, 349, 37, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2438, 349, 38, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2439, 349, 39, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2440, 349, 40, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2441, 349, 41, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2442, 349, 42, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2443, 349, 43, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2444, 349, 44, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2445, 349, 45, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2446, 349, 46, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2447, 349, 47, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2448, 349, 48, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2449, 349, 49, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2450, 349, 50, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2451, 349, 51, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2452, 349, 52, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2453, 349, 53, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2454, 349, 54, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2455, 349, 55, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2456, 349, 56, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2457, 349, 57, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2458, 349, 58, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2459, 349, 59, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2460, 349, 60, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2461, 349, 61, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2462, 349, 62, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2463, 349, 63, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2464, 349, 64, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2465, 349, 65, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2466, 349, 66, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2467, 349, 67, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2468, 349, 68, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2469, 349, 69, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2470, 349, 70, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2471, 349, 71, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2472, 349, 72, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2473, 349, 73, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2474, 349, 74, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2475, 349, 75, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2476, 349, 76, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2477, 349, 77, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2478, 349, 78, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2479, 349, 79, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2480, 349, 80, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2481, 349, 81, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2482, 349, 82, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2483, 349, 83, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2484, 349, 84, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2485, 349, 85, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2486, 349, 86, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2487, 349, 87, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2488, 349, 88, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2489, 349, 89, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2490, 349, 90, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2491, 349, 91, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2492, 349, 92, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2493, 349, 93, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2494, 349, 94, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2495, 349, 95, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2496, 349, 96, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2497, 349, 97, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2498, 349, 98, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2499, 349, 99, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2500, 349, 100, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2501, 350, 1, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2502, 350, 2, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2503, 350, 3, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2504, 350, 4, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2505, 350, 5, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2506, 350, 6, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2507, 350, 7, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2508, 350, 8, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2509, 350, 9, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2510, 350, 10, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2511, 350, 11, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2512, 350, 12, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2513, 350, 13, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2514, 350, 14, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2515, 350, 15, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2516, 350, 16, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2517, 350, 17, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2518, 350, 18, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2519, 350, 19, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2520, 350, 20, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2521, 350, 21, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2522, 350, 22, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2523, 350, 23, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2524, 350, 24, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2525, 350, 25, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2526, 350, 26, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2527, 350, 27, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2528, 350, 28, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2529, 350, 29, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2530, 350, 30, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2531, 350, 31, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2532, 350, 32, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2533, 350, 33, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2534, 350, 34, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2535, 350, 35, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2536, 350, 36, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2537, 350, 37, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2538, 350, 38, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2539, 350, 39, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2540, 350, 40, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2541, 350, 41, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2542, 350, 42, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2543, 350, 43, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2544, 350, 44, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2545, 350, 45, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2546, 350, 46, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2547, 350, 47, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2548, 350, 48, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2549, 350, 49, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2550, 350, 50, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2551, 350, 51, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2552, 350, 52, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2553, 350, 53, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2554, 350, 54, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2555, 350, 55, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2556, 350, 56, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2557, 350, 57, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2558, 350, 58, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2559, 350, 59, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2560, 350, 60, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2561, 350, 61, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2562, 350, 62, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2563, 350, 63, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2564, 350, 64, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2565, 350, 65, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2566, 350, 66, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2567, 350, 67, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2568, 350, 68, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2569, 350, 69, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2570, 350, 70, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2571, 350, 71, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2572, 350, 72, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2573, 350, 73, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2574, 350, 74, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2575, 350, 75, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2576, 350, 76, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2577, 350, 77, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2578, 350, 78, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2579, 350, 79, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2580, 350, 80, 1);
INSERT INTO `tbl_test_result_mht` VALUES (2581, 350, 81, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2582, 350, 82, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2583, 350, 83, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2584, 350, 84, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2585, 350, 85, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2586, 350, 86, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2587, 350, 87, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2588, 350, 88, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2589, 350, 89, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2590, 350, 90, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2591, 350, 91, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2592, 350, 92, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2593, 350, 93, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2594, 350, 94, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2595, 350, 95, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2596, 350, 96, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2597, 350, 97, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2598, 350, 98, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2599, 350, 99, 0);
INSERT INTO `tbl_test_result_mht` VALUES (2600, 350, 100, 0);

-- ----------------------------
-- Table structure for tbl_test_result_sas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_result_sas`;
CREATE TABLE `tbl_test_result_sas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `question_id` int NULL DEFAULT NULL,
  `answer` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1073 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_result_sas
-- ----------------------------
INSERT INTO `tbl_test_result_sas` VALUES (953, 311, 1, '1');
INSERT INTO `tbl_test_result_sas` VALUES (954, 311, 2, '2');
INSERT INTO `tbl_test_result_sas` VALUES (955, 311, 3, '1');
INSERT INTO `tbl_test_result_sas` VALUES (956, 311, 4, '2');
INSERT INTO `tbl_test_result_sas` VALUES (957, 311, 5, '3');
INSERT INTO `tbl_test_result_sas` VALUES (958, 311, 6, '4');
INSERT INTO `tbl_test_result_sas` VALUES (959, 311, 7, '2');
INSERT INTO `tbl_test_result_sas` VALUES (960, 311, 8, '4');
INSERT INTO `tbl_test_result_sas` VALUES (961, 311, 9, '3');
INSERT INTO `tbl_test_result_sas` VALUES (962, 311, 10, '2');
INSERT INTO `tbl_test_result_sas` VALUES (963, 311, 11, '1');
INSERT INTO `tbl_test_result_sas` VALUES (964, 311, 12, '3');
INSERT INTO `tbl_test_result_sas` VALUES (965, 311, 13, '4');
INSERT INTO `tbl_test_result_sas` VALUES (966, 311, 14, '2');
INSERT INTO `tbl_test_result_sas` VALUES (967, 311, 15, '1');
INSERT INTO `tbl_test_result_sas` VALUES (968, 311, 16, '3');
INSERT INTO `tbl_test_result_sas` VALUES (969, 311, 17, '4');
INSERT INTO `tbl_test_result_sas` VALUES (970, 311, 18, '3');
INSERT INTO `tbl_test_result_sas` VALUES (971, 311, 19, '2');
INSERT INTO `tbl_test_result_sas` VALUES (972, 311, 20, '1');
INSERT INTO `tbl_test_result_sas` VALUES (993, 313, 1, '1');
INSERT INTO `tbl_test_result_sas` VALUES (994, 313, 2, '2');
INSERT INTO `tbl_test_result_sas` VALUES (995, 313, 3, '3');
INSERT INTO `tbl_test_result_sas` VALUES (996, 313, 4, '4');
INSERT INTO `tbl_test_result_sas` VALUES (997, 313, 5, '3');
INSERT INTO `tbl_test_result_sas` VALUES (998, 313, 6, '2');
INSERT INTO `tbl_test_result_sas` VALUES (999, 313, 7, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1000, 313, 8, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1001, 313, 9, '4');
INSERT INTO `tbl_test_result_sas` VALUES (1002, 313, 10, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1003, 313, 11, '4');
INSERT INTO `tbl_test_result_sas` VALUES (1004, 313, 12, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1005, 313, 13, '4');
INSERT INTO `tbl_test_result_sas` VALUES (1006, 313, 14, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1007, 313, 15, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1008, 313, 16, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1009, 313, 17, '4');
INSERT INTO `tbl_test_result_sas` VALUES (1010, 313, 18, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1011, 313, 19, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1012, 313, 20, '4');
INSERT INTO `tbl_test_result_sas` VALUES (1013, 314, 1, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1014, 314, 2, '4');
INSERT INTO `tbl_test_result_sas` VALUES (1015, 314, 3, '4');
INSERT INTO `tbl_test_result_sas` VALUES (1016, 314, 4, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1017, 314, 5, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1018, 314, 6, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1019, 314, 7, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1020, 314, 8, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1021, 314, 9, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1022, 314, 10, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1023, 314, 11, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1024, 314, 12, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1025, 314, 13, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1026, 314, 14, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1027, 314, 15, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1028, 314, 16, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1029, 314, 17, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1030, 314, 18, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1031, 314, 19, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1032, 314, 20, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1033, 315, 1, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1034, 315, 2, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1035, 315, 3, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1036, 315, 4, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1037, 315, 5, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1038, 315, 6, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1039, 315, 7, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1040, 315, 8, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1041, 315, 9, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1042, 315, 10, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1043, 315, 11, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1044, 315, 12, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1045, 315, 13, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1046, 315, 14, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1047, 315, 15, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1048, 315, 16, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1049, 315, 17, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1050, 315, 18, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1051, 315, 19, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1052, 315, 20, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1053, 320, 1, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1054, 320, 2, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1055, 320, 3, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1056, 320, 4, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1057, 320, 5, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1058, 320, 6, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1059, 320, 7, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1060, 320, 8, '3');
INSERT INTO `tbl_test_result_sas` VALUES (1061, 320, 9, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1062, 320, 10, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1063, 320, 11, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1064, 320, 12, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1065, 320, 13, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1066, 320, 14, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1067, 320, 15, '1');
INSERT INTO `tbl_test_result_sas` VALUES (1068, 320, 16, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1069, 320, 17, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1070, 320, 18, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1071, 320, 19, '2');
INSERT INTO `tbl_test_result_sas` VALUES (1072, 320, 20, '2');

-- ----------------------------
-- Table structure for tbl_test_result_scl
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_result_scl`;
CREATE TABLE `tbl_test_result_scl`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `question_id` int NULL DEFAULT NULL,
  `answer` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1817 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_result_scl
-- ----------------------------
INSERT INTO `tbl_test_result_scl` VALUES (1, 50, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (2, 50, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (3, 50, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (4, 50, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (5, 50, 5, 1);
INSERT INTO `tbl_test_result_scl` VALUES (6, 50, 6, 1);
INSERT INTO `tbl_test_result_scl` VALUES (7, 50, 7, 1);
INSERT INTO `tbl_test_result_scl` VALUES (8, 50, 8, 1);
INSERT INTO `tbl_test_result_scl` VALUES (9, 50, 9, 1);
INSERT INTO `tbl_test_result_scl` VALUES (10, 50, 10, 1);
INSERT INTO `tbl_test_result_scl` VALUES (11, 50, 11, 1);
INSERT INTO `tbl_test_result_scl` VALUES (12, 50, 12, 0);
INSERT INTO `tbl_test_result_scl` VALUES (13, 50, 13, 0);
INSERT INTO `tbl_test_result_scl` VALUES (14, 50, 14, 0);
INSERT INTO `tbl_test_result_scl` VALUES (15, 50, 15, 0);
INSERT INTO `tbl_test_result_scl` VALUES (16, 50, 16, 0);
INSERT INTO `tbl_test_result_scl` VALUES (17, 50, 17, 0);
INSERT INTO `tbl_test_result_scl` VALUES (18, 50, 18, 0);
INSERT INTO `tbl_test_result_scl` VALUES (19, 50, 19, 0);
INSERT INTO `tbl_test_result_scl` VALUES (20, 50, 20, 0);
INSERT INTO `tbl_test_result_scl` VALUES (21, 50, 21, 0);
INSERT INTO `tbl_test_result_scl` VALUES (22, 50, 22, 0);
INSERT INTO `tbl_test_result_scl` VALUES (23, 50, 23, 0);
INSERT INTO `tbl_test_result_scl` VALUES (24, 50, 24, 0);
INSERT INTO `tbl_test_result_scl` VALUES (25, 50, 25, 0);
INSERT INTO `tbl_test_result_scl` VALUES (26, 50, 26, 0);
INSERT INTO `tbl_test_result_scl` VALUES (27, 50, 27, 0);
INSERT INTO `tbl_test_result_scl` VALUES (28, 50, 28, 0);
INSERT INTO `tbl_test_result_scl` VALUES (29, 50, 29, 0);
INSERT INTO `tbl_test_result_scl` VALUES (30, 50, 30, 0);
INSERT INTO `tbl_test_result_scl` VALUES (31, 50, 31, 0);
INSERT INTO `tbl_test_result_scl` VALUES (32, 50, 32, 0);
INSERT INTO `tbl_test_result_scl` VALUES (33, 50, 33, 0);
INSERT INTO `tbl_test_result_scl` VALUES (34, 50, 34, 0);
INSERT INTO `tbl_test_result_scl` VALUES (35, 50, 35, 0);
INSERT INTO `tbl_test_result_scl` VALUES (36, 50, 36, 0);
INSERT INTO `tbl_test_result_scl` VALUES (37, 50, 37, 0);
INSERT INTO `tbl_test_result_scl` VALUES (38, 50, 38, 0);
INSERT INTO `tbl_test_result_scl` VALUES (39, 50, 39, 0);
INSERT INTO `tbl_test_result_scl` VALUES (40, 50, 40, 0);
INSERT INTO `tbl_test_result_scl` VALUES (41, 50, 41, 0);
INSERT INTO `tbl_test_result_scl` VALUES (42, 50, 42, 0);
INSERT INTO `tbl_test_result_scl` VALUES (43, 50, 43, 0);
INSERT INTO `tbl_test_result_scl` VALUES (44, 50, 44, 0);
INSERT INTO `tbl_test_result_scl` VALUES (45, 50, 45, 0);
INSERT INTO `tbl_test_result_scl` VALUES (46, 50, 46, 0);
INSERT INTO `tbl_test_result_scl` VALUES (47, 50, 47, 0);
INSERT INTO `tbl_test_result_scl` VALUES (48, 50, 48, 0);
INSERT INTO `tbl_test_result_scl` VALUES (49, 50, 49, 0);
INSERT INTO `tbl_test_result_scl` VALUES (50, 50, 50, 0);
INSERT INTO `tbl_test_result_scl` VALUES (51, 50, 51, 0);
INSERT INTO `tbl_test_result_scl` VALUES (52, 50, 52, 0);
INSERT INTO `tbl_test_result_scl` VALUES (53, 50, 53, 0);
INSERT INTO `tbl_test_result_scl` VALUES (54, 50, 54, 0);
INSERT INTO `tbl_test_result_scl` VALUES (55, 50, 55, 0);
INSERT INTO `tbl_test_result_scl` VALUES (56, 50, 56, 0);
INSERT INTO `tbl_test_result_scl` VALUES (57, 50, 57, 0);
INSERT INTO `tbl_test_result_scl` VALUES (58, 50, 58, 0);
INSERT INTO `tbl_test_result_scl` VALUES (59, 50, 59, 0);
INSERT INTO `tbl_test_result_scl` VALUES (60, 50, 60, 0);
INSERT INTO `tbl_test_result_scl` VALUES (61, 50, 61, 0);
INSERT INTO `tbl_test_result_scl` VALUES (62, 50, 62, 0);
INSERT INTO `tbl_test_result_scl` VALUES (63, 50, 63, 0);
INSERT INTO `tbl_test_result_scl` VALUES (64, 50, 64, 0);
INSERT INTO `tbl_test_result_scl` VALUES (65, 50, 65, 0);
INSERT INTO `tbl_test_result_scl` VALUES (66, 50, 66, 0);
INSERT INTO `tbl_test_result_scl` VALUES (67, 50, 67, 0);
INSERT INTO `tbl_test_result_scl` VALUES (68, 50, 68, 0);
INSERT INTO `tbl_test_result_scl` VALUES (69, 50, 69, 0);
INSERT INTO `tbl_test_result_scl` VALUES (70, 50, 70, 0);
INSERT INTO `tbl_test_result_scl` VALUES (71, 50, 71, 0);
INSERT INTO `tbl_test_result_scl` VALUES (72, 50, 72, 0);
INSERT INTO `tbl_test_result_scl` VALUES (73, 50, 73, 0);
INSERT INTO `tbl_test_result_scl` VALUES (74, 50, 74, 1);
INSERT INTO `tbl_test_result_scl` VALUES (75, 50, 75, 1);
INSERT INTO `tbl_test_result_scl` VALUES (76, 50, 76, 1);
INSERT INTO `tbl_test_result_scl` VALUES (77, 50, 77, 1);
INSERT INTO `tbl_test_result_scl` VALUES (78, 50, 78, 1);
INSERT INTO `tbl_test_result_scl` VALUES (79, 50, 79, 1);
INSERT INTO `tbl_test_result_scl` VALUES (80, 50, 80, 1);
INSERT INTO `tbl_test_result_scl` VALUES (81, 50, 81, 1);
INSERT INTO `tbl_test_result_scl` VALUES (82, 50, 82, 1);
INSERT INTO `tbl_test_result_scl` VALUES (83, 50, 83, 1);
INSERT INTO `tbl_test_result_scl` VALUES (84, 50, 84, 1);
INSERT INTO `tbl_test_result_scl` VALUES (85, 50, 85, 1);
INSERT INTO `tbl_test_result_scl` VALUES (86, 50, 86, 1);
INSERT INTO `tbl_test_result_scl` VALUES (87, 50, 87, 1);
INSERT INTO `tbl_test_result_scl` VALUES (88, 50, 88, 1);
INSERT INTO `tbl_test_result_scl` VALUES (89, 50, 89, 1);
INSERT INTO `tbl_test_result_scl` VALUES (90, 50, 90, 1);
INSERT INTO `tbl_test_result_scl` VALUES (91, 50, 91, 1);
INSERT INTO `tbl_test_result_scl` VALUES (92, 50, 92, 1);
INSERT INTO `tbl_test_result_scl` VALUES (93, 50, 93, 1);
INSERT INTO `tbl_test_result_scl` VALUES (94, 50, 94, 1);
INSERT INTO `tbl_test_result_scl` VALUES (95, 50, 95, 1);
INSERT INTO `tbl_test_result_scl` VALUES (96, 50, 96, 1);
INSERT INTO `tbl_test_result_scl` VALUES (97, 50, 97, 1);
INSERT INTO `tbl_test_result_scl` VALUES (98, 50, 98, 1);
INSERT INTO `tbl_test_result_scl` VALUES (99, 50, 99, 1);
INSERT INTO `tbl_test_result_scl` VALUES (100, 50, 100, 0);
INSERT INTO `tbl_test_result_scl` VALUES (101, 51, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (102, 51, 2, 3);
INSERT INTO `tbl_test_result_scl` VALUES (103, 51, 3, 4);
INSERT INTO `tbl_test_result_scl` VALUES (104, 51, 4, 5);
INSERT INTO `tbl_test_result_scl` VALUES (105, 51, 5, 4);
INSERT INTO `tbl_test_result_scl` VALUES (106, 51, 6, 3);
INSERT INTO `tbl_test_result_scl` VALUES (107, 51, 7, 4);
INSERT INTO `tbl_test_result_scl` VALUES (108, 51, 8, 4);
INSERT INTO `tbl_test_result_scl` VALUES (109, 51, 9, 4);
INSERT INTO `tbl_test_result_scl` VALUES (110, 51, 10, 3);
INSERT INTO `tbl_test_result_scl` VALUES (111, 51, 11, 3);
INSERT INTO `tbl_test_result_scl` VALUES (112, 51, 12, 3);
INSERT INTO `tbl_test_result_scl` VALUES (113, 51, 13, 3);
INSERT INTO `tbl_test_result_scl` VALUES (114, 51, 14, 3);
INSERT INTO `tbl_test_result_scl` VALUES (115, 51, 15, 3);
INSERT INTO `tbl_test_result_scl` VALUES (116, 51, 16, 3);
INSERT INTO `tbl_test_result_scl` VALUES (117, 51, 17, 3);
INSERT INTO `tbl_test_result_scl` VALUES (118, 51, 18, 3);
INSERT INTO `tbl_test_result_scl` VALUES (119, 51, 19, 3);
INSERT INTO `tbl_test_result_scl` VALUES (120, 51, 20, 3);
INSERT INTO `tbl_test_result_scl` VALUES (121, 51, 21, 3);
INSERT INTO `tbl_test_result_scl` VALUES (122, 51, 22, 3);
INSERT INTO `tbl_test_result_scl` VALUES (123, 51, 23, 3);
INSERT INTO `tbl_test_result_scl` VALUES (124, 51, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (125, 51, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (126, 51, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (127, 51, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (128, 51, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (129, 51, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (130, 51, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (131, 51, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (132, 51, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (133, 51, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (134, 51, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (135, 51, 35, 1);
INSERT INTO `tbl_test_result_scl` VALUES (136, 51, 36, 1);
INSERT INTO `tbl_test_result_scl` VALUES (137, 51, 37, 1);
INSERT INTO `tbl_test_result_scl` VALUES (138, 51, 38, 3);
INSERT INTO `tbl_test_result_scl` VALUES (139, 51, 39, 3);
INSERT INTO `tbl_test_result_scl` VALUES (140, 51, 40, 4);
INSERT INTO `tbl_test_result_scl` VALUES (141, 51, 41, 4);
INSERT INTO `tbl_test_result_scl` VALUES (142, 51, 42, 4);
INSERT INTO `tbl_test_result_scl` VALUES (143, 51, 43, 4);
INSERT INTO `tbl_test_result_scl` VALUES (144, 51, 44, 4);
INSERT INTO `tbl_test_result_scl` VALUES (145, 51, 45, 4);
INSERT INTO `tbl_test_result_scl` VALUES (146, 51, 46, 3);
INSERT INTO `tbl_test_result_scl` VALUES (147, 51, 47, 3);
INSERT INTO `tbl_test_result_scl` VALUES (148, 51, 48, 5);
INSERT INTO `tbl_test_result_scl` VALUES (149, 51, 49, 5);
INSERT INTO `tbl_test_result_scl` VALUES (150, 51, 50, 5);
INSERT INTO `tbl_test_result_scl` VALUES (151, 51, 51, 4);
INSERT INTO `tbl_test_result_scl` VALUES (152, 51, 52, 3);
INSERT INTO `tbl_test_result_scl` VALUES (153, 51, 53, 3);
INSERT INTO `tbl_test_result_scl` VALUES (154, 51, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (155, 51, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (156, 51, 56, 1);
INSERT INTO `tbl_test_result_scl` VALUES (157, 51, 57, 1);
INSERT INTO `tbl_test_result_scl` VALUES (158, 51, 58, 1);
INSERT INTO `tbl_test_result_scl` VALUES (159, 51, 59, 1);
INSERT INTO `tbl_test_result_scl` VALUES (160, 51, 60, 1);
INSERT INTO `tbl_test_result_scl` VALUES (161, 51, 61, 1);
INSERT INTO `tbl_test_result_scl` VALUES (162, 51, 62, 1);
INSERT INTO `tbl_test_result_scl` VALUES (163, 51, 63, 1);
INSERT INTO `tbl_test_result_scl` VALUES (164, 51, 64, 1);
INSERT INTO `tbl_test_result_scl` VALUES (165, 51, 65, 1);
INSERT INTO `tbl_test_result_scl` VALUES (166, 51, 66, 1);
INSERT INTO `tbl_test_result_scl` VALUES (167, 51, 67, 1);
INSERT INTO `tbl_test_result_scl` VALUES (168, 51, 68, 1);
INSERT INTO `tbl_test_result_scl` VALUES (169, 51, 69, 1);
INSERT INTO `tbl_test_result_scl` VALUES (170, 51, 70, 1);
INSERT INTO `tbl_test_result_scl` VALUES (171, 51, 71, 1);
INSERT INTO `tbl_test_result_scl` VALUES (172, 51, 72, 1);
INSERT INTO `tbl_test_result_scl` VALUES (173, 51, 73, 1);
INSERT INTO `tbl_test_result_scl` VALUES (174, 51, 74, 1);
INSERT INTO `tbl_test_result_scl` VALUES (175, 51, 75, 1);
INSERT INTO `tbl_test_result_scl` VALUES (176, 51, 76, 1);
INSERT INTO `tbl_test_result_scl` VALUES (177, 51, 77, 1);
INSERT INTO `tbl_test_result_scl` VALUES (178, 51, 78, 1);
INSERT INTO `tbl_test_result_scl` VALUES (179, 51, 79, 1);
INSERT INTO `tbl_test_result_scl` VALUES (180, 51, 80, 1);
INSERT INTO `tbl_test_result_scl` VALUES (181, 51, 81, 1);
INSERT INTO `tbl_test_result_scl` VALUES (182, 51, 82, 1);
INSERT INTO `tbl_test_result_scl` VALUES (183, 51, 83, 1);
INSERT INTO `tbl_test_result_scl` VALUES (184, 51, 84, 1);
INSERT INTO `tbl_test_result_scl` VALUES (185, 51, 85, 1);
INSERT INTO `tbl_test_result_scl` VALUES (186, 51, 86, 1);
INSERT INTO `tbl_test_result_scl` VALUES (187, 51, 87, 1);
INSERT INTO `tbl_test_result_scl` VALUES (188, 51, 88, 1);
INSERT INTO `tbl_test_result_scl` VALUES (189, 51, 89, 1);
INSERT INTO `tbl_test_result_scl` VALUES (190, 51, 90, 1);
INSERT INTO `tbl_test_result_scl` VALUES (191, 51, 99, 1);
INSERT INTO `tbl_test_result_scl` VALUES (283, 53, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (284, 53, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (285, 53, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (286, 53, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (287, 53, 5, 1);
INSERT INTO `tbl_test_result_scl` VALUES (288, 53, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (289, 53, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (290, 53, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (291, 53, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (292, 53, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (293, 53, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (294, 53, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (295, 53, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (296, 53, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (297, 53, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (298, 53, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (299, 53, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (300, 53, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (301, 53, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (302, 53, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (303, 53, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (304, 53, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (305, 53, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (306, 53, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (307, 53, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (308, 53, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (309, 53, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (310, 53, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (311, 53, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (312, 53, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (313, 53, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (314, 53, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (315, 53, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (316, 53, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (317, 53, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (318, 53, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (319, 53, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (320, 53, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (321, 53, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (322, 53, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (323, 53, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (324, 53, 42, 1);
INSERT INTO `tbl_test_result_scl` VALUES (325, 53, 43, 1);
INSERT INTO `tbl_test_result_scl` VALUES (326, 53, 44, 1);
INSERT INTO `tbl_test_result_scl` VALUES (327, 53, 45, 3);
INSERT INTO `tbl_test_result_scl` VALUES (328, 53, 46, 3);
INSERT INTO `tbl_test_result_scl` VALUES (329, 53, 47, 3);
INSERT INTO `tbl_test_result_scl` VALUES (330, 53, 48, 3);
INSERT INTO `tbl_test_result_scl` VALUES (331, 53, 49, 3);
INSERT INTO `tbl_test_result_scl` VALUES (332, 53, 50, 3);
INSERT INTO `tbl_test_result_scl` VALUES (333, 53, 51, 3);
INSERT INTO `tbl_test_result_scl` VALUES (334, 53, 52, 3);
INSERT INTO `tbl_test_result_scl` VALUES (335, 53, 53, 3);
INSERT INTO `tbl_test_result_scl` VALUES (336, 53, 54, 3);
INSERT INTO `tbl_test_result_scl` VALUES (337, 53, 55, 3);
INSERT INTO `tbl_test_result_scl` VALUES (338, 53, 56, 3);
INSERT INTO `tbl_test_result_scl` VALUES (339, 53, 57, 3);
INSERT INTO `tbl_test_result_scl` VALUES (340, 53, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (341, 53, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (342, 53, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (343, 53, 61, 1);
INSERT INTO `tbl_test_result_scl` VALUES (344, 53, 62, 1);
INSERT INTO `tbl_test_result_scl` VALUES (345, 53, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (346, 53, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (347, 53, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (348, 53, 66, 3);
INSERT INTO `tbl_test_result_scl` VALUES (349, 53, 67, 3);
INSERT INTO `tbl_test_result_scl` VALUES (350, 53, 68, 3);
INSERT INTO `tbl_test_result_scl` VALUES (351, 53, 69, 3);
INSERT INTO `tbl_test_result_scl` VALUES (352, 53, 70, 3);
INSERT INTO `tbl_test_result_scl` VALUES (353, 53, 71, 3);
INSERT INTO `tbl_test_result_scl` VALUES (354, 53, 72, 3);
INSERT INTO `tbl_test_result_scl` VALUES (355, 53, 73, 3);
INSERT INTO `tbl_test_result_scl` VALUES (356, 53, 74, 3);
INSERT INTO `tbl_test_result_scl` VALUES (357, 53, 75, 3);
INSERT INTO `tbl_test_result_scl` VALUES (358, 53, 76, 3);
INSERT INTO `tbl_test_result_scl` VALUES (359, 53, 77, 3);
INSERT INTO `tbl_test_result_scl` VALUES (360, 53, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (361, 53, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (362, 53, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (363, 53, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (364, 53, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (365, 53, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (366, 53, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (367, 53, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (368, 53, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (369, 53, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (370, 53, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (371, 53, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (372, 53, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (373, 53, 99, 2);
INSERT INTO `tbl_test_result_scl` VALUES (374, 54, 1, 3);
INSERT INTO `tbl_test_result_scl` VALUES (375, 54, 2, 2);
INSERT INTO `tbl_test_result_scl` VALUES (376, 54, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (377, 54, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (378, 54, 5, 1);
INSERT INTO `tbl_test_result_scl` VALUES (379, 54, 6, 1);
INSERT INTO `tbl_test_result_scl` VALUES (380, 54, 7, 1);
INSERT INTO `tbl_test_result_scl` VALUES (381, 54, 8, 1);
INSERT INTO `tbl_test_result_scl` VALUES (382, 54, 9, 1);
INSERT INTO `tbl_test_result_scl` VALUES (383, 54, 10, 1);
INSERT INTO `tbl_test_result_scl` VALUES (384, 54, 11, 1);
INSERT INTO `tbl_test_result_scl` VALUES (385, 54, 12, 1);
INSERT INTO `tbl_test_result_scl` VALUES (386, 54, 13, 1);
INSERT INTO `tbl_test_result_scl` VALUES (387, 54, 14, 1);
INSERT INTO `tbl_test_result_scl` VALUES (388, 54, 15, 1);
INSERT INTO `tbl_test_result_scl` VALUES (389, 54, 16, 1);
INSERT INTO `tbl_test_result_scl` VALUES (390, 54, 17, 1);
INSERT INTO `tbl_test_result_scl` VALUES (391, 54, 18, 1);
INSERT INTO `tbl_test_result_scl` VALUES (392, 54, 19, 1);
INSERT INTO `tbl_test_result_scl` VALUES (393, 54, 20, 1);
INSERT INTO `tbl_test_result_scl` VALUES (394, 54, 21, 1);
INSERT INTO `tbl_test_result_scl` VALUES (395, 54, 22, 1);
INSERT INTO `tbl_test_result_scl` VALUES (396, 54, 23, 1);
INSERT INTO `tbl_test_result_scl` VALUES (397, 54, 24, 1);
INSERT INTO `tbl_test_result_scl` VALUES (398, 54, 25, 1);
INSERT INTO `tbl_test_result_scl` VALUES (399, 54, 26, 1);
INSERT INTO `tbl_test_result_scl` VALUES (400, 54, 27, 1);
INSERT INTO `tbl_test_result_scl` VALUES (401, 54, 28, 1);
INSERT INTO `tbl_test_result_scl` VALUES (402, 54, 29, 1);
INSERT INTO `tbl_test_result_scl` VALUES (403, 54, 30, 1);
INSERT INTO `tbl_test_result_scl` VALUES (404, 54, 31, 1);
INSERT INTO `tbl_test_result_scl` VALUES (405, 54, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (406, 54, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (407, 54, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (408, 54, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (409, 54, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (410, 54, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (411, 54, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (412, 54, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (413, 54, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (414, 54, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (415, 54, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (416, 54, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (417, 54, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (418, 54, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (419, 54, 46, 1);
INSERT INTO `tbl_test_result_scl` VALUES (420, 54, 47, 1);
INSERT INTO `tbl_test_result_scl` VALUES (421, 54, 48, 1);
INSERT INTO `tbl_test_result_scl` VALUES (422, 54, 49, 1);
INSERT INTO `tbl_test_result_scl` VALUES (423, 54, 50, 1);
INSERT INTO `tbl_test_result_scl` VALUES (424, 54, 51, 1);
INSERT INTO `tbl_test_result_scl` VALUES (425, 54, 52, 1);
INSERT INTO `tbl_test_result_scl` VALUES (426, 54, 53, 1);
INSERT INTO `tbl_test_result_scl` VALUES (427, 54, 54, 1);
INSERT INTO `tbl_test_result_scl` VALUES (428, 54, 55, 1);
INSERT INTO `tbl_test_result_scl` VALUES (429, 54, 56, 1);
INSERT INTO `tbl_test_result_scl` VALUES (430, 54, 57, 1);
INSERT INTO `tbl_test_result_scl` VALUES (431, 54, 58, 1);
INSERT INTO `tbl_test_result_scl` VALUES (432, 54, 59, 1);
INSERT INTO `tbl_test_result_scl` VALUES (433, 54, 60, 1);
INSERT INTO `tbl_test_result_scl` VALUES (434, 54, 61, 1);
INSERT INTO `tbl_test_result_scl` VALUES (435, 54, 62, 1);
INSERT INTO `tbl_test_result_scl` VALUES (436, 54, 63, 1);
INSERT INTO `tbl_test_result_scl` VALUES (437, 54, 64, 1);
INSERT INTO `tbl_test_result_scl` VALUES (438, 54, 65, 1);
INSERT INTO `tbl_test_result_scl` VALUES (439, 54, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (440, 54, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (441, 54, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (442, 54, 69, 3);
INSERT INTO `tbl_test_result_scl` VALUES (443, 54, 70, 3);
INSERT INTO `tbl_test_result_scl` VALUES (444, 54, 71, 3);
INSERT INTO `tbl_test_result_scl` VALUES (445, 54, 72, 3);
INSERT INTO `tbl_test_result_scl` VALUES (446, 54, 73, 3);
INSERT INTO `tbl_test_result_scl` VALUES (447, 54, 74, 3);
INSERT INTO `tbl_test_result_scl` VALUES (448, 54, 75, 3);
INSERT INTO `tbl_test_result_scl` VALUES (449, 54, 76, 3);
INSERT INTO `tbl_test_result_scl` VALUES (450, 54, 77, 3);
INSERT INTO `tbl_test_result_scl` VALUES (451, 54, 78, 3);
INSERT INTO `tbl_test_result_scl` VALUES (452, 54, 79, 3);
INSERT INTO `tbl_test_result_scl` VALUES (453, 54, 80, 3);
INSERT INTO `tbl_test_result_scl` VALUES (454, 54, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (455, 54, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (456, 54, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (457, 54, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (458, 54, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (459, 54, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (460, 54, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (461, 54, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (462, 54, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (463, 54, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (464, 54, 99, 2);
INSERT INTO `tbl_test_result_scl` VALUES (465, 56, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (466, 56, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (467, 56, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (468, 56, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (469, 56, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (470, 56, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (471, 56, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (472, 56, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (473, 56, 9, 1);
INSERT INTO `tbl_test_result_scl` VALUES (474, 56, 10, 1);
INSERT INTO `tbl_test_result_scl` VALUES (475, 56, 11, 1);
INSERT INTO `tbl_test_result_scl` VALUES (476, 56, 12, 1);
INSERT INTO `tbl_test_result_scl` VALUES (477, 56, 13, 1);
INSERT INTO `tbl_test_result_scl` VALUES (478, 56, 14, 1);
INSERT INTO `tbl_test_result_scl` VALUES (479, 56, 15, 1);
INSERT INTO `tbl_test_result_scl` VALUES (480, 56, 16, 1);
INSERT INTO `tbl_test_result_scl` VALUES (481, 56, 17, 1);
INSERT INTO `tbl_test_result_scl` VALUES (482, 56, 18, 1);
INSERT INTO `tbl_test_result_scl` VALUES (483, 56, 19, 1);
INSERT INTO `tbl_test_result_scl` VALUES (484, 56, 20, 1);
INSERT INTO `tbl_test_result_scl` VALUES (485, 56, 21, 1);
INSERT INTO `tbl_test_result_scl` VALUES (486, 56, 22, 1);
INSERT INTO `tbl_test_result_scl` VALUES (487, 56, 23, 1);
INSERT INTO `tbl_test_result_scl` VALUES (488, 56, 24, 1);
INSERT INTO `tbl_test_result_scl` VALUES (489, 56, 25, 1);
INSERT INTO `tbl_test_result_scl` VALUES (490, 56, 26, 1);
INSERT INTO `tbl_test_result_scl` VALUES (491, 56, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (492, 56, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (493, 56, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (494, 56, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (495, 56, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (496, 56, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (497, 56, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (498, 56, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (499, 56, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (500, 56, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (501, 56, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (502, 56, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (503, 56, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (504, 56, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (505, 56, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (506, 56, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (507, 56, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (508, 56, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (509, 56, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (510, 56, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (511, 56, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (512, 56, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (513, 56, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (514, 56, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (515, 56, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (516, 56, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (517, 56, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (518, 56, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (519, 56, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (520, 56, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (521, 56, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (522, 56, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (523, 56, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (524, 56, 60, 1);
INSERT INTO `tbl_test_result_scl` VALUES (525, 56, 61, 1);
INSERT INTO `tbl_test_result_scl` VALUES (526, 56, 62, 1);
INSERT INTO `tbl_test_result_scl` VALUES (527, 56, 63, 1);
INSERT INTO `tbl_test_result_scl` VALUES (528, 56, 64, 1);
INSERT INTO `tbl_test_result_scl` VALUES (529, 56, 65, 1);
INSERT INTO `tbl_test_result_scl` VALUES (530, 56, 66, 1);
INSERT INTO `tbl_test_result_scl` VALUES (531, 56, 67, 1);
INSERT INTO `tbl_test_result_scl` VALUES (532, 56, 68, 1);
INSERT INTO `tbl_test_result_scl` VALUES (533, 56, 69, 1);
INSERT INTO `tbl_test_result_scl` VALUES (534, 56, 70, 1);
INSERT INTO `tbl_test_result_scl` VALUES (535, 56, 71, 1);
INSERT INTO `tbl_test_result_scl` VALUES (536, 56, 72, 1);
INSERT INTO `tbl_test_result_scl` VALUES (537, 56, 73, 1);
INSERT INTO `tbl_test_result_scl` VALUES (538, 56, 74, 1);
INSERT INTO `tbl_test_result_scl` VALUES (539, 56, 75, 1);
INSERT INTO `tbl_test_result_scl` VALUES (540, 56, 76, 1);
INSERT INTO `tbl_test_result_scl` VALUES (541, 56, 77, 1);
INSERT INTO `tbl_test_result_scl` VALUES (542, 56, 78, 1);
INSERT INTO `tbl_test_result_scl` VALUES (543, 56, 79, 1);
INSERT INTO `tbl_test_result_scl` VALUES (544, 56, 80, 1);
INSERT INTO `tbl_test_result_scl` VALUES (545, 56, 81, 1);
INSERT INTO `tbl_test_result_scl` VALUES (546, 56, 82, 1);
INSERT INTO `tbl_test_result_scl` VALUES (547, 56, 83, 1);
INSERT INTO `tbl_test_result_scl` VALUES (548, 56, 84, 1);
INSERT INTO `tbl_test_result_scl` VALUES (549, 56, 85, 1);
INSERT INTO `tbl_test_result_scl` VALUES (550, 56, 86, 1);
INSERT INTO `tbl_test_result_scl` VALUES (551, 56, 87, 1);
INSERT INTO `tbl_test_result_scl` VALUES (552, 56, 88, 1);
INSERT INTO `tbl_test_result_scl` VALUES (553, 56, 89, 1);
INSERT INTO `tbl_test_result_scl` VALUES (554, 56, 90, 1);
INSERT INTO `tbl_test_result_scl` VALUES (555, 56, 99, 1);
INSERT INTO `tbl_test_result_scl` VALUES (556, 57, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (557, 57, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (558, 57, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (559, 57, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (560, 57, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (561, 57, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (562, 57, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (563, 57, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (564, 57, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (565, 57, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (566, 57, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (567, 57, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (568, 57, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (569, 57, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (570, 57, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (571, 57, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (572, 57, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (573, 57, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (574, 57, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (575, 57, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (576, 57, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (577, 57, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (578, 57, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (579, 57, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (580, 57, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (581, 57, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (582, 57, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (583, 57, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (584, 57, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (585, 57, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (586, 57, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (587, 57, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (588, 57, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (589, 57, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (590, 57, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (591, 57, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (592, 57, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (593, 57, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (594, 57, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (595, 57, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (596, 57, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (597, 57, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (598, 57, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (599, 57, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (600, 57, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (601, 57, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (602, 57, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (603, 57, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (604, 57, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (605, 57, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (606, 57, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (607, 57, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (608, 57, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (609, 57, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (610, 57, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (611, 57, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (612, 57, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (613, 57, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (614, 57, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (615, 57, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (616, 57, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (617, 57, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (618, 57, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (619, 57, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (620, 57, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (621, 57, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (622, 57, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (623, 57, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (624, 57, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (625, 57, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (626, 57, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (627, 57, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (628, 57, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (629, 57, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (630, 57, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (631, 57, 76, 2);
INSERT INTO `tbl_test_result_scl` VALUES (632, 57, 77, 2);
INSERT INTO `tbl_test_result_scl` VALUES (633, 57, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (634, 57, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (635, 57, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (636, 57, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (637, 57, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (638, 57, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (639, 57, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (640, 57, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (641, 57, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (642, 57, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (643, 57, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (644, 57, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (645, 57, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (646, 57, 99, 2);
INSERT INTO `tbl_test_result_scl` VALUES (647, 58, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (648, 58, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (649, 58, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (650, 58, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (651, 58, 5, 1);
INSERT INTO `tbl_test_result_scl` VALUES (652, 58, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (653, 58, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (654, 58, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (655, 58, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (656, 58, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (657, 58, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (658, 58, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (659, 58, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (660, 58, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (661, 58, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (662, 58, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (663, 58, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (664, 58, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (665, 58, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (666, 58, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (667, 58, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (668, 58, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (669, 58, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (670, 58, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (671, 58, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (672, 58, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (673, 58, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (674, 58, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (675, 58, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (676, 58, 30, 1);
INSERT INTO `tbl_test_result_scl` VALUES (677, 58, 31, 1);
INSERT INTO `tbl_test_result_scl` VALUES (678, 58, 32, 3);
INSERT INTO `tbl_test_result_scl` VALUES (679, 58, 33, 3);
INSERT INTO `tbl_test_result_scl` VALUES (680, 58, 34, 3);
INSERT INTO `tbl_test_result_scl` VALUES (681, 58, 35, 3);
INSERT INTO `tbl_test_result_scl` VALUES (682, 58, 36, 3);
INSERT INTO `tbl_test_result_scl` VALUES (683, 58, 37, 3);
INSERT INTO `tbl_test_result_scl` VALUES (684, 58, 38, 3);
INSERT INTO `tbl_test_result_scl` VALUES (685, 58, 39, 3);
INSERT INTO `tbl_test_result_scl` VALUES (686, 58, 40, 3);
INSERT INTO `tbl_test_result_scl` VALUES (687, 58, 41, 3);
INSERT INTO `tbl_test_result_scl` VALUES (688, 58, 42, 3);
INSERT INTO `tbl_test_result_scl` VALUES (689, 58, 43, 3);
INSERT INTO `tbl_test_result_scl` VALUES (690, 58, 44, 3);
INSERT INTO `tbl_test_result_scl` VALUES (691, 58, 45, 3);
INSERT INTO `tbl_test_result_scl` VALUES (692, 58, 46, 3);
INSERT INTO `tbl_test_result_scl` VALUES (693, 58, 47, 3);
INSERT INTO `tbl_test_result_scl` VALUES (694, 58, 48, 3);
INSERT INTO `tbl_test_result_scl` VALUES (695, 58, 49, 3);
INSERT INTO `tbl_test_result_scl` VALUES (696, 58, 50, 3);
INSERT INTO `tbl_test_result_scl` VALUES (697, 58, 51, 3);
INSERT INTO `tbl_test_result_scl` VALUES (698, 58, 52, 3);
INSERT INTO `tbl_test_result_scl` VALUES (699, 58, 53, 3);
INSERT INTO `tbl_test_result_scl` VALUES (700, 58, 54, 3);
INSERT INTO `tbl_test_result_scl` VALUES (701, 58, 55, 3);
INSERT INTO `tbl_test_result_scl` VALUES (702, 58, 56, 3);
INSERT INTO `tbl_test_result_scl` VALUES (703, 58, 57, 3);
INSERT INTO `tbl_test_result_scl` VALUES (704, 58, 58, 3);
INSERT INTO `tbl_test_result_scl` VALUES (705, 58, 59, 3);
INSERT INTO `tbl_test_result_scl` VALUES (706, 58, 60, 3);
INSERT INTO `tbl_test_result_scl` VALUES (707, 58, 61, 3);
INSERT INTO `tbl_test_result_scl` VALUES (708, 58, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (709, 58, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (710, 58, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (711, 58, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (712, 58, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (713, 58, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (714, 58, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (715, 58, 69, 1);
INSERT INTO `tbl_test_result_scl` VALUES (716, 58, 70, 1);
INSERT INTO `tbl_test_result_scl` VALUES (717, 58, 71, 1);
INSERT INTO `tbl_test_result_scl` VALUES (718, 58, 72, 1);
INSERT INTO `tbl_test_result_scl` VALUES (719, 58, 73, 1);
INSERT INTO `tbl_test_result_scl` VALUES (720, 58, 74, 1);
INSERT INTO `tbl_test_result_scl` VALUES (721, 58, 75, 1);
INSERT INTO `tbl_test_result_scl` VALUES (722, 58, 76, 1);
INSERT INTO `tbl_test_result_scl` VALUES (723, 58, 77, 1);
INSERT INTO `tbl_test_result_scl` VALUES (724, 58, 78, 1);
INSERT INTO `tbl_test_result_scl` VALUES (725, 58, 79, 1);
INSERT INTO `tbl_test_result_scl` VALUES (726, 58, 80, 1);
INSERT INTO `tbl_test_result_scl` VALUES (727, 58, 81, 1);
INSERT INTO `tbl_test_result_scl` VALUES (728, 58, 82, 1);
INSERT INTO `tbl_test_result_scl` VALUES (729, 58, 83, 1);
INSERT INTO `tbl_test_result_scl` VALUES (730, 58, 84, 1);
INSERT INTO `tbl_test_result_scl` VALUES (731, 58, 85, 1);
INSERT INTO `tbl_test_result_scl` VALUES (732, 58, 86, 1);
INSERT INTO `tbl_test_result_scl` VALUES (733, 58, 87, 1);
INSERT INTO `tbl_test_result_scl` VALUES (734, 58, 88, 1);
INSERT INTO `tbl_test_result_scl` VALUES (735, 58, 89, 1);
INSERT INTO `tbl_test_result_scl` VALUES (736, 58, 90, 1);
INSERT INTO `tbl_test_result_scl` VALUES (737, 59, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (738, 59, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (739, 59, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (740, 59, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (741, 59, 5, 1);
INSERT INTO `tbl_test_result_scl` VALUES (742, 59, 6, 1);
INSERT INTO `tbl_test_result_scl` VALUES (743, 59, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (744, 59, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (745, 59, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (746, 59, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (747, 59, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (748, 59, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (749, 59, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (750, 59, 14, 1);
INSERT INTO `tbl_test_result_scl` VALUES (751, 59, 15, 1);
INSERT INTO `tbl_test_result_scl` VALUES (752, 59, 16, 1);
INSERT INTO `tbl_test_result_scl` VALUES (753, 59, 17, 1);
INSERT INTO `tbl_test_result_scl` VALUES (754, 59, 18, 1);
INSERT INTO `tbl_test_result_scl` VALUES (755, 59, 19, 1);
INSERT INTO `tbl_test_result_scl` VALUES (756, 59, 20, 1);
INSERT INTO `tbl_test_result_scl` VALUES (757, 59, 21, 1);
INSERT INTO `tbl_test_result_scl` VALUES (758, 59, 22, 1);
INSERT INTO `tbl_test_result_scl` VALUES (759, 59, 23, 1);
INSERT INTO `tbl_test_result_scl` VALUES (760, 59, 24, 1);
INSERT INTO `tbl_test_result_scl` VALUES (761, 59, 25, 1);
INSERT INTO `tbl_test_result_scl` VALUES (762, 59, 26, 1);
INSERT INTO `tbl_test_result_scl` VALUES (763, 59, 27, 1);
INSERT INTO `tbl_test_result_scl` VALUES (764, 59, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (765, 59, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (766, 59, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (767, 59, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (768, 59, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (769, 59, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (770, 59, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (771, 59, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (772, 59, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (773, 59, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (774, 59, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (775, 59, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (776, 59, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (777, 59, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (778, 59, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (779, 59, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (780, 59, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (781, 59, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (782, 59, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (783, 59, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (784, 59, 48, 1);
INSERT INTO `tbl_test_result_scl` VALUES (785, 59, 49, 1);
INSERT INTO `tbl_test_result_scl` VALUES (786, 59, 50, 1);
INSERT INTO `tbl_test_result_scl` VALUES (787, 59, 51, 1);
INSERT INTO `tbl_test_result_scl` VALUES (788, 59, 52, 1);
INSERT INTO `tbl_test_result_scl` VALUES (789, 59, 53, 3);
INSERT INTO `tbl_test_result_scl` VALUES (790, 59, 54, 3);
INSERT INTO `tbl_test_result_scl` VALUES (791, 59, 55, 3);
INSERT INTO `tbl_test_result_scl` VALUES (792, 59, 56, 3);
INSERT INTO `tbl_test_result_scl` VALUES (793, 59, 57, 3);
INSERT INTO `tbl_test_result_scl` VALUES (794, 59, 58, 3);
INSERT INTO `tbl_test_result_scl` VALUES (795, 59, 59, 3);
INSERT INTO `tbl_test_result_scl` VALUES (796, 59, 60, 3);
INSERT INTO `tbl_test_result_scl` VALUES (797, 59, 61, 3);
INSERT INTO `tbl_test_result_scl` VALUES (798, 59, 62, 3);
INSERT INTO `tbl_test_result_scl` VALUES (799, 59, 63, 3);
INSERT INTO `tbl_test_result_scl` VALUES (800, 59, 64, 3);
INSERT INTO `tbl_test_result_scl` VALUES (801, 59, 65, 1);
INSERT INTO `tbl_test_result_scl` VALUES (802, 59, 66, 1);
INSERT INTO `tbl_test_result_scl` VALUES (803, 59, 67, 1);
INSERT INTO `tbl_test_result_scl` VALUES (804, 59, 68, 1);
INSERT INTO `tbl_test_result_scl` VALUES (805, 59, 69, 1);
INSERT INTO `tbl_test_result_scl` VALUES (806, 59, 70, 1);
INSERT INTO `tbl_test_result_scl` VALUES (807, 59, 71, 1);
INSERT INTO `tbl_test_result_scl` VALUES (808, 59, 72, 1);
INSERT INTO `tbl_test_result_scl` VALUES (809, 59, 73, 1);
INSERT INTO `tbl_test_result_scl` VALUES (810, 59, 74, 1);
INSERT INTO `tbl_test_result_scl` VALUES (811, 59, 75, 1);
INSERT INTO `tbl_test_result_scl` VALUES (812, 59, 76, 1);
INSERT INTO `tbl_test_result_scl` VALUES (813, 59, 77, 1);
INSERT INTO `tbl_test_result_scl` VALUES (814, 59, 78, 1);
INSERT INTO `tbl_test_result_scl` VALUES (815, 59, 79, 1);
INSERT INTO `tbl_test_result_scl` VALUES (816, 59, 80, 1);
INSERT INTO `tbl_test_result_scl` VALUES (817, 59, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (818, 59, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (819, 59, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (820, 59, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (821, 59, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (822, 59, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (823, 59, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (824, 59, 88, 1);
INSERT INTO `tbl_test_result_scl` VALUES (825, 59, 89, 1);
INSERT INTO `tbl_test_result_scl` VALUES (826, 59, 90, 1);
INSERT INTO `tbl_test_result_scl` VALUES (827, 61, 1, 3);
INSERT INTO `tbl_test_result_scl` VALUES (828, 61, 2, 2);
INSERT INTO `tbl_test_result_scl` VALUES (829, 61, 3, 2);
INSERT INTO `tbl_test_result_scl` VALUES (830, 61, 4, 2);
INSERT INTO `tbl_test_result_scl` VALUES (831, 61, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (832, 61, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (833, 61, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (834, 61, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (835, 61, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (836, 61, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (837, 61, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (838, 61, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (839, 61, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (840, 61, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (841, 61, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (842, 61, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (843, 61, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (844, 61, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (845, 61, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (846, 61, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (847, 61, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (848, 61, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (849, 61, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (850, 61, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (851, 61, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (852, 61, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (853, 61, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (854, 61, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (855, 61, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (856, 61, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (857, 61, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (858, 61, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (859, 61, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (860, 61, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (861, 61, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (862, 61, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (863, 61, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (864, 61, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (865, 61, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (866, 61, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (867, 61, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (868, 61, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (869, 61, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (870, 61, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (871, 61, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (872, 61, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (873, 61, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (874, 61, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (875, 61, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (876, 61, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (877, 61, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (878, 61, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (879, 61, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (880, 61, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (881, 61, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (882, 61, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (883, 61, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (884, 61, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (885, 61, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (886, 61, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (887, 61, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (888, 61, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (889, 61, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (890, 61, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (891, 61, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (892, 61, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (893, 61, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (894, 61, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (895, 61, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (896, 61, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (897, 61, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (898, 61, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (899, 61, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (900, 61, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (901, 61, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (902, 61, 76, 2);
INSERT INTO `tbl_test_result_scl` VALUES (903, 61, 77, 2);
INSERT INTO `tbl_test_result_scl` VALUES (904, 61, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (905, 61, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (906, 61, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (907, 61, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (908, 61, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (909, 61, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (910, 61, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (911, 61, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (912, 61, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (913, 61, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (914, 61, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (915, 61, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (916, 61, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (917, 62, 1, 2);
INSERT INTO `tbl_test_result_scl` VALUES (918, 62, 2, 2);
INSERT INTO `tbl_test_result_scl` VALUES (919, 62, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (920, 62, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (921, 62, 5, 1);
INSERT INTO `tbl_test_result_scl` VALUES (922, 62, 6, 1);
INSERT INTO `tbl_test_result_scl` VALUES (923, 62, 7, 1);
INSERT INTO `tbl_test_result_scl` VALUES (924, 62, 8, 1);
INSERT INTO `tbl_test_result_scl` VALUES (925, 62, 9, 1);
INSERT INTO `tbl_test_result_scl` VALUES (926, 62, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (927, 62, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (928, 62, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (929, 62, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (930, 62, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (931, 62, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (932, 62, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (933, 62, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (934, 62, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (935, 62, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (936, 62, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (937, 62, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (938, 62, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (939, 62, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (940, 62, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (941, 62, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (942, 62, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (943, 62, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (944, 62, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (945, 62, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (946, 62, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (947, 62, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (948, 62, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (949, 62, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (950, 62, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (951, 62, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (952, 62, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (953, 62, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (954, 62, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (955, 62, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (956, 62, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (957, 62, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (958, 62, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (959, 62, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (960, 62, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (961, 62, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (962, 62, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (963, 62, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (964, 62, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (965, 62, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (966, 62, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (967, 62, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (968, 62, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (969, 62, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (970, 62, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (971, 62, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (972, 62, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (973, 62, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (974, 62, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (975, 62, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (976, 62, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (977, 62, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (978, 62, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (979, 62, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (980, 62, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (981, 62, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (982, 62, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (983, 62, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (984, 62, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (985, 62, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (986, 62, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (987, 62, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (988, 62, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (989, 62, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (990, 62, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (991, 62, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (992, 62, 76, 2);
INSERT INTO `tbl_test_result_scl` VALUES (993, 62, 77, 2);
INSERT INTO `tbl_test_result_scl` VALUES (994, 62, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (995, 62, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (996, 62, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (997, 62, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (998, 62, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (999, 62, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1000, 62, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1001, 62, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1002, 62, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1003, 62, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1004, 62, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1005, 62, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1006, 62, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1007, 63, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1008, 63, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1009, 63, 3, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1010, 63, 4, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1011, 63, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1012, 63, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1013, 63, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1014, 63, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1015, 63, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1016, 63, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1017, 63, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1018, 63, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1019, 63, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1020, 63, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1021, 63, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1022, 63, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1023, 63, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1024, 63, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1025, 63, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1026, 63, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1027, 63, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1028, 63, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1029, 63, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1030, 63, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1031, 63, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1032, 63, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1033, 63, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1034, 63, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1035, 63, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1036, 63, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1037, 63, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1038, 63, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1039, 63, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1040, 63, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1041, 63, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1042, 63, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1043, 63, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1044, 63, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1045, 63, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1046, 63, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1047, 63, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1048, 63, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1049, 63, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1050, 63, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1051, 63, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1052, 63, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1053, 63, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1054, 63, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1055, 63, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1056, 63, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1057, 63, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1058, 63, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1059, 63, 53, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1060, 63, 54, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1061, 63, 55, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1062, 63, 56, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1063, 63, 57, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1064, 63, 58, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1065, 63, 59, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1066, 63, 60, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1067, 63, 61, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1068, 63, 62, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1069, 63, 63, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1070, 63, 64, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1071, 63, 65, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1072, 63, 66, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1073, 63, 67, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1074, 63, 68, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1075, 63, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1076, 63, 70, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1077, 63, 71, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1078, 63, 72, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1079, 63, 73, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1080, 63, 74, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1081, 63, 75, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1082, 63, 76, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1083, 63, 77, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1084, 63, 78, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1085, 63, 79, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1086, 63, 80, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1087, 63, 81, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1088, 63, 82, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1089, 63, 83, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1090, 63, 84, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1091, 63, 85, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1092, 63, 86, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1093, 63, 87, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1094, 63, 88, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1095, 63, 89, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1096, 63, 90, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1097, 64, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1098, 64, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1099, 64, 3, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1100, 64, 4, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1101, 64, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1102, 64, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1103, 64, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1104, 64, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1105, 64, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1106, 64, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1107, 64, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1108, 64, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1109, 64, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1110, 64, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1111, 64, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1112, 64, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1113, 64, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1114, 64, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1115, 64, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1116, 64, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1117, 64, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1118, 64, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1119, 64, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1120, 64, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1121, 64, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1122, 64, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1123, 64, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1124, 64, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1125, 64, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1126, 64, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1127, 64, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1128, 64, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1129, 64, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1130, 64, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1131, 64, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1132, 64, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1133, 64, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1134, 64, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1135, 64, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1136, 64, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1137, 64, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1138, 64, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1139, 64, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1140, 64, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1141, 64, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1142, 64, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1143, 64, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1144, 64, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1145, 64, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1146, 64, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1147, 64, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1148, 64, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1149, 64, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1150, 64, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1151, 64, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1152, 64, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1153, 64, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1154, 64, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1155, 64, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1156, 64, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1157, 64, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1158, 64, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1159, 64, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1160, 64, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1161, 64, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1162, 64, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1163, 64, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1164, 64, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1165, 64, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1166, 64, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1167, 64, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1168, 64, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1169, 64, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1170, 64, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1171, 64, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1172, 64, 76, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1173, 64, 77, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1174, 64, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1175, 64, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1176, 64, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1177, 64, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1178, 64, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1179, 64, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1180, 64, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1181, 64, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1182, 64, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1183, 64, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1184, 64, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1185, 64, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1186, 64, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1187, 65, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1188, 65, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1189, 65, 3, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1190, 65, 4, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1191, 65, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1192, 65, 6, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1193, 65, 7, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1194, 65, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1195, 65, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1196, 65, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1197, 65, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1198, 65, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1199, 65, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1200, 65, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1201, 65, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1202, 65, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1203, 65, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1204, 65, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1205, 65, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1206, 65, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1207, 65, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1208, 65, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1209, 65, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1210, 65, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1211, 65, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1212, 65, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1213, 65, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1214, 65, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1215, 65, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1216, 65, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1217, 65, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1218, 65, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1219, 65, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1220, 65, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1221, 65, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1222, 65, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1223, 65, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1224, 65, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1225, 65, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1226, 65, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1227, 65, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1228, 65, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1229, 65, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1230, 65, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1231, 65, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1232, 65, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1233, 65, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1234, 65, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1235, 65, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1236, 65, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1237, 65, 51, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1238, 65, 52, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1239, 65, 53, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1240, 65, 54, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1241, 65, 55, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1242, 65, 56, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1243, 65, 57, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1244, 65, 58, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1245, 65, 59, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1246, 65, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1247, 65, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1248, 65, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1249, 65, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1250, 65, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1251, 65, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1252, 65, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1253, 65, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1254, 65, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1255, 65, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1256, 65, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1257, 65, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1258, 65, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1259, 65, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1260, 65, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1261, 65, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1262, 65, 76, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1263, 65, 77, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1264, 65, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1265, 65, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1266, 65, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1267, 65, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1268, 65, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1269, 65, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1270, 65, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1271, 65, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1272, 65, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1273, 65, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1274, 65, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1275, 65, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1276, 65, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1277, 66, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1278, 66, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1279, 66, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1280, 66, 4, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1281, 66, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1282, 66, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1283, 66, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1284, 66, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1285, 66, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1286, 66, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1287, 66, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1288, 66, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1289, 66, 13, 3);
INSERT INTO `tbl_test_result_scl` VALUES (1290, 66, 14, 3);
INSERT INTO `tbl_test_result_scl` VALUES (1291, 66, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1292, 66, 16, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1293, 66, 17, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1294, 66, 18, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1295, 66, 19, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1296, 66, 20, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1297, 66, 21, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1298, 66, 22, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1299, 66, 23, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1300, 66, 24, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1301, 66, 25, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1302, 66, 26, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1303, 66, 27, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1304, 66, 28, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1305, 66, 29, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1306, 66, 30, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1307, 66, 31, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1308, 66, 32, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1309, 66, 33, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1310, 66, 34, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1311, 66, 35, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1312, 66, 36, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1313, 66, 37, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1314, 66, 38, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1315, 66, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1316, 66, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1317, 66, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1318, 66, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1319, 66, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1320, 66, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1321, 66, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1322, 66, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1323, 66, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1324, 66, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1325, 66, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1326, 66, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1327, 66, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1328, 66, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1329, 66, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1330, 66, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1331, 66, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1332, 66, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1333, 66, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1334, 66, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1335, 66, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1336, 66, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1337, 66, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1338, 66, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1339, 66, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1340, 66, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1341, 66, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1342, 66, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1343, 66, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1344, 66, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1345, 66, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1346, 66, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1347, 66, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1348, 66, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1349, 66, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1350, 66, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1351, 66, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1352, 66, 76, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1353, 66, 77, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1354, 66, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1355, 66, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1356, 66, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1357, 66, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1358, 66, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1359, 66, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1360, 66, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1361, 66, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1362, 66, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1363, 66, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1364, 66, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1365, 66, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1366, 66, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1367, 67, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1368, 67, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1369, 67, 3, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1370, 67, 4, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1371, 67, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1372, 67, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1373, 67, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1374, 67, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1375, 67, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1376, 67, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1377, 67, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1378, 67, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1379, 67, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1380, 67, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1381, 67, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1382, 67, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1383, 67, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1384, 67, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1385, 67, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1386, 67, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1387, 67, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1388, 67, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1389, 67, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1390, 67, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1391, 67, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1392, 67, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1393, 67, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1394, 67, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1395, 67, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1396, 67, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1397, 67, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1398, 67, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1399, 67, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1400, 67, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1401, 67, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1402, 67, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1403, 67, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1404, 67, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1405, 67, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1406, 67, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1407, 67, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1408, 67, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1409, 67, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1410, 67, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1411, 67, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1412, 67, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1413, 67, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1414, 67, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1415, 67, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1416, 67, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1417, 67, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1418, 67, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1419, 67, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1420, 67, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1421, 67, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1422, 67, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1423, 67, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1424, 67, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1425, 67, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1426, 67, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1427, 67, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1428, 67, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1429, 67, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1430, 67, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1431, 67, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1432, 67, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1433, 67, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1434, 67, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1435, 67, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1436, 67, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1437, 67, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1438, 67, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1439, 67, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1440, 67, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1441, 67, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1442, 67, 76, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1443, 67, 77, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1444, 67, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1445, 67, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1446, 67, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1447, 67, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1448, 67, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1449, 67, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1450, 67, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1451, 67, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1452, 67, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1453, 67, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1454, 67, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1455, 67, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1456, 67, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1457, 68, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1458, 68, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1459, 68, 3, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1460, 68, 4, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1461, 68, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1462, 68, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1463, 68, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1464, 68, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1465, 68, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1466, 68, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1467, 68, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1468, 68, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1469, 68, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1470, 68, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1471, 68, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1472, 68, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1473, 68, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1474, 68, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1475, 68, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1476, 68, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1477, 68, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1478, 68, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1479, 68, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1480, 68, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1481, 68, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1482, 68, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1483, 68, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1484, 68, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1485, 68, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1486, 68, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1487, 68, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1488, 68, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1489, 68, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1490, 68, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1491, 68, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1492, 68, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1493, 68, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1494, 68, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1495, 68, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1496, 68, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1497, 68, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1498, 68, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1499, 68, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1500, 68, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1501, 68, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1502, 68, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1503, 68, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1504, 68, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1505, 68, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1506, 68, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1507, 68, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1508, 68, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1509, 68, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1510, 68, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1511, 68, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1512, 68, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1513, 68, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1514, 68, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1515, 68, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1516, 68, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1517, 68, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1518, 68, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1519, 68, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1520, 68, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1521, 68, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1522, 68, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1523, 68, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1524, 68, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1525, 68, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1526, 68, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1527, 68, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1528, 68, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1529, 68, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1530, 68, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1531, 68, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1532, 68, 76, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1533, 68, 77, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1534, 68, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1535, 68, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1536, 68, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1537, 68, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1538, 68, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1539, 68, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1540, 68, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1541, 68, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1542, 68, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1543, 68, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1544, 68, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1545, 68, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1546, 68, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1547, 69, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1548, 69, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1549, 69, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1550, 69, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1551, 69, 5, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1552, 69, 6, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1553, 69, 7, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1554, 69, 8, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1555, 69, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1556, 69, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1557, 69, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1558, 69, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1559, 69, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1560, 69, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1561, 69, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1562, 69, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1563, 69, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1564, 69, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1565, 69, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1566, 69, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1567, 69, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1568, 69, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1569, 69, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1570, 69, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1571, 69, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1572, 69, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1573, 69, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1574, 69, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1575, 69, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1576, 69, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1577, 69, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1578, 69, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1579, 69, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1580, 69, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1581, 69, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1582, 69, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1583, 69, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1584, 69, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1585, 69, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1586, 69, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1587, 69, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1588, 69, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1589, 69, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1590, 69, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1591, 69, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1592, 69, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1593, 69, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1594, 69, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1595, 69, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1596, 69, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1597, 69, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1598, 69, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1599, 69, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1600, 69, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1601, 69, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1602, 69, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1603, 69, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1604, 69, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1605, 69, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1606, 69, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1607, 69, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1608, 69, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1609, 69, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1610, 69, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1611, 69, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1612, 69, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1613, 69, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1614, 69, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1615, 69, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1616, 69, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1617, 69, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1618, 69, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1619, 69, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1620, 69, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1621, 69, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1622, 69, 76, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1623, 69, 77, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1624, 69, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1625, 69, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1626, 69, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1627, 69, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1628, 69, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1629, 69, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1630, 69, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1631, 69, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1632, 69, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1633, 69, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1634, 69, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1635, 69, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1636, 69, 90, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1637, 70, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1638, 70, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1639, 70, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1640, 70, 4, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1641, 70, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1642, 70, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1643, 70, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1644, 70, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1645, 70, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1646, 70, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1647, 70, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1648, 70, 12, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1649, 70, 13, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1650, 70, 14, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1651, 70, 15, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1652, 70, 16, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1653, 70, 17, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1654, 70, 18, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1655, 70, 19, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1656, 70, 20, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1657, 70, 21, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1658, 70, 22, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1659, 70, 23, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1660, 70, 24, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1661, 70, 25, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1662, 70, 26, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1663, 70, 27, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1664, 70, 28, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1665, 70, 29, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1666, 70, 30, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1667, 70, 31, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1668, 70, 32, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1669, 70, 33, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1670, 70, 34, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1671, 70, 35, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1672, 70, 36, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1673, 70, 37, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1674, 70, 38, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1675, 70, 39, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1676, 70, 40, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1677, 70, 41, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1678, 70, 42, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1679, 70, 43, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1680, 70, 44, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1681, 70, 45, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1682, 70, 46, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1683, 70, 47, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1684, 70, 48, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1685, 70, 49, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1686, 70, 50, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1687, 70, 51, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1688, 70, 52, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1689, 70, 53, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1690, 70, 54, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1691, 70, 55, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1692, 70, 56, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1693, 70, 57, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1694, 70, 58, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1695, 70, 59, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1696, 70, 60, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1697, 70, 61, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1698, 70, 62, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1699, 70, 63, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1700, 70, 64, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1701, 70, 65, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1702, 70, 66, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1703, 70, 67, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1704, 70, 68, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1705, 70, 69, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1706, 70, 70, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1707, 70, 71, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1708, 70, 72, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1709, 70, 73, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1710, 70, 74, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1711, 70, 75, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1712, 70, 76, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1713, 70, 77, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1714, 70, 78, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1715, 70, 79, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1716, 70, 80, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1717, 70, 81, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1718, 70, 82, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1719, 70, 83, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1720, 70, 84, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1721, 70, 85, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1722, 70, 86, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1723, 70, 87, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1724, 70, 88, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1725, 70, 89, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1726, 70, 90, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1727, 71, 1, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1728, 71, 2, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1729, 71, 3, 1);
INSERT INTO `tbl_test_result_scl` VALUES (1730, 71, 4, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1731, 71, 5, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1732, 71, 6, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1733, 71, 7, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1734, 71, 8, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1735, 71, 9, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1736, 71, 10, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1737, 71, 11, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1738, 71, 12, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1739, 71, 13, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1740, 71, 14, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1741, 71, 15, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1742, 71, 16, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1743, 71, 17, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1744, 71, 18, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1745, 71, 19, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1746, 71, 20, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1747, 71, 21, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1748, 71, 22, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1749, 71, 23, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1750, 71, 24, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1751, 71, 25, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1752, 71, 26, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1753, 71, 27, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1754, 71, 28, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1755, 71, 29, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1756, 71, 30, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1757, 71, 31, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1758, 71, 32, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1759, 71, 33, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1760, 71, 34, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1761, 71, 35, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1762, 71, 36, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1763, 71, 37, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1764, 71, 38, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1765, 71, 39, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1766, 71, 40, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1767, 71, 41, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1768, 71, 42, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1769, 71, 43, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1770, 71, 44, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1771, 71, 45, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1772, 71, 46, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1773, 71, 47, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1774, 71, 48, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1775, 71, 49, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1776, 71, 50, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1777, 71, 51, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1778, 71, 52, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1779, 71, 53, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1780, 71, 54, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1781, 71, 55, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1782, 71, 56, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1783, 71, 57, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1784, 71, 58, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1785, 71, 59, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1786, 71, 60, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1787, 71, 61, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1788, 71, 62, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1789, 71, 63, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1790, 71, 64, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1791, 71, 65, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1792, 71, 66, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1793, 71, 67, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1794, 71, 68, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1795, 71, 69, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1796, 71, 70, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1797, 71, 71, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1798, 71, 72, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1799, 71, 73, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1800, 71, 74, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1801, 71, 75, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1802, 71, 76, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1803, 71, 77, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1804, 71, 78, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1805, 71, 79, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1806, 71, 80, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1807, 71, 81, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1808, 71, 82, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1809, 71, 83, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1810, 71, 84, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1811, 71, 85, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1812, 71, 86, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1813, 71, 87, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1814, 71, 88, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1815, 71, 89, 2);
INSERT INTO `tbl_test_result_scl` VALUES (1816, 71, 90, 2);

-- ----------------------------
-- Table structure for tbl_test_result_sds
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_result_sds`;
CREATE TABLE `tbl_test_result_sds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `question_id` int NULL DEFAULT NULL,
  `answer` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 323 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test_result_sds
-- ----------------------------
INSERT INTO `tbl_test_result_sds` VALUES (23, 313, 1, '2');
INSERT INTO `tbl_test_result_sds` VALUES (24, 313, 2, '2');
INSERT INTO `tbl_test_result_sds` VALUES (25, 313, 3, '2');
INSERT INTO `tbl_test_result_sds` VALUES (26, 313, 4, '1');
INSERT INTO `tbl_test_result_sds` VALUES (27, 313, 5, '1');
INSERT INTO `tbl_test_result_sds` VALUES (28, 313, 6, '3');
INSERT INTO `tbl_test_result_sds` VALUES (29, 313, 7, '3');
INSERT INTO `tbl_test_result_sds` VALUES (30, 313, 8, '2');
INSERT INTO `tbl_test_result_sds` VALUES (31, 313, 9, '2');
INSERT INTO `tbl_test_result_sds` VALUES (32, 313, 10, '2');
INSERT INTO `tbl_test_result_sds` VALUES (33, 313, 11, '2');
INSERT INTO `tbl_test_result_sds` VALUES (34, 313, 12, '3');
INSERT INTO `tbl_test_result_sds` VALUES (35, 313, 13, '3');
INSERT INTO `tbl_test_result_sds` VALUES (36, 313, 14, '3');
INSERT INTO `tbl_test_result_sds` VALUES (37, 313, 15, '2');
INSERT INTO `tbl_test_result_sds` VALUES (38, 313, 16, '2');
INSERT INTO `tbl_test_result_sds` VALUES (39, 313, 17, '2');
INSERT INTO `tbl_test_result_sds` VALUES (40, 313, 18, '2');
INSERT INTO `tbl_test_result_sds` VALUES (41, 313, 19, '2');
INSERT INTO `tbl_test_result_sds` VALUES (42, 313, 20, '3');
INSERT INTO `tbl_test_result_sds` VALUES (43, 314, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (44, 314, 2, '1');
INSERT INTO `tbl_test_result_sds` VALUES (45, 314, 3, '1');
INSERT INTO `tbl_test_result_sds` VALUES (46, 314, 4, '4');
INSERT INTO `tbl_test_result_sds` VALUES (47, 314, 5, '4');
INSERT INTO `tbl_test_result_sds` VALUES (48, 314, 6, '4');
INSERT INTO `tbl_test_result_sds` VALUES (49, 314, 7, '4');
INSERT INTO `tbl_test_result_sds` VALUES (50, 314, 8, '4');
INSERT INTO `tbl_test_result_sds` VALUES (51, 314, 9, '4');
INSERT INTO `tbl_test_result_sds` VALUES (52, 314, 10, '4');
INSERT INTO `tbl_test_result_sds` VALUES (53, 314, 11, '4');
INSERT INTO `tbl_test_result_sds` VALUES (54, 314, 12, '4');
INSERT INTO `tbl_test_result_sds` VALUES (55, 314, 13, '4');
INSERT INTO `tbl_test_result_sds` VALUES (56, 314, 14, '4');
INSERT INTO `tbl_test_result_sds` VALUES (57, 314, 15, '4');
INSERT INTO `tbl_test_result_sds` VALUES (58, 314, 16, '4');
INSERT INTO `tbl_test_result_sds` VALUES (59, 314, 17, '4');
INSERT INTO `tbl_test_result_sds` VALUES (60, 314, 18, '4');
INSERT INTO `tbl_test_result_sds` VALUES (61, 314, 19, '4');
INSERT INTO `tbl_test_result_sds` VALUES (62, 314, 20, '4');
INSERT INTO `tbl_test_result_sds` VALUES (63, 315, 1, '4');
INSERT INTO `tbl_test_result_sds` VALUES (64, 315, 2, '1');
INSERT INTO `tbl_test_result_sds` VALUES (65, 315, 3, '1');
INSERT INTO `tbl_test_result_sds` VALUES (66, 315, 4, '4');
INSERT INTO `tbl_test_result_sds` VALUES (67, 315, 5, '1');
INSERT INTO `tbl_test_result_sds` VALUES (68, 315, 6, '1');
INSERT INTO `tbl_test_result_sds` VALUES (69, 315, 7, '4');
INSERT INTO `tbl_test_result_sds` VALUES (70, 315, 8, '4');
INSERT INTO `tbl_test_result_sds` VALUES (71, 315, 9, '4');
INSERT INTO `tbl_test_result_sds` VALUES (72, 315, 10, '4');
INSERT INTO `tbl_test_result_sds` VALUES (73, 315, 11, '1');
INSERT INTO `tbl_test_result_sds` VALUES (74, 315, 12, '1');
INSERT INTO `tbl_test_result_sds` VALUES (75, 315, 13, '4');
INSERT INTO `tbl_test_result_sds` VALUES (76, 315, 14, '1');
INSERT INTO `tbl_test_result_sds` VALUES (77, 315, 15, '4');
INSERT INTO `tbl_test_result_sds` VALUES (78, 315, 16, '2');
INSERT INTO `tbl_test_result_sds` VALUES (79, 315, 17, '1');
INSERT INTO `tbl_test_result_sds` VALUES (80, 315, 18, '1');
INSERT INTO `tbl_test_result_sds` VALUES (81, 315, 19, '4');
INSERT INTO `tbl_test_result_sds` VALUES (82, 315, 20, '1');
INSERT INTO `tbl_test_result_sds` VALUES (83, 316, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (84, 316, 2, '1');
INSERT INTO `tbl_test_result_sds` VALUES (85, 316, 3, '1');
INSERT INTO `tbl_test_result_sds` VALUES (86, 316, 4, '2');
INSERT INTO `tbl_test_result_sds` VALUES (87, 316, 5, '2');
INSERT INTO `tbl_test_result_sds` VALUES (88, 316, 6, '2');
INSERT INTO `tbl_test_result_sds` VALUES (89, 316, 7, '2');
INSERT INTO `tbl_test_result_sds` VALUES (90, 316, 8, '2');
INSERT INTO `tbl_test_result_sds` VALUES (91, 316, 9, '2');
INSERT INTO `tbl_test_result_sds` VALUES (92, 316, 10, '2');
INSERT INTO `tbl_test_result_sds` VALUES (93, 316, 11, '2');
INSERT INTO `tbl_test_result_sds` VALUES (94, 316, 12, '2');
INSERT INTO `tbl_test_result_sds` VALUES (95, 316, 13, '2');
INSERT INTO `tbl_test_result_sds` VALUES (96, 316, 14, '2');
INSERT INTO `tbl_test_result_sds` VALUES (97, 316, 15, '2');
INSERT INTO `tbl_test_result_sds` VALUES (98, 316, 16, '2');
INSERT INTO `tbl_test_result_sds` VALUES (99, 316, 17, '2');
INSERT INTO `tbl_test_result_sds` VALUES (100, 316, 18, '2');
INSERT INTO `tbl_test_result_sds` VALUES (101, 316, 19, '2');
INSERT INTO `tbl_test_result_sds` VALUES (102, 316, 20, '2');
INSERT INTO `tbl_test_result_sds` VALUES (103, 317, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (104, 317, 2, '1');
INSERT INTO `tbl_test_result_sds` VALUES (105, 317, 3, '1');
INSERT INTO `tbl_test_result_sds` VALUES (106, 317, 4, '1');
INSERT INTO `tbl_test_result_sds` VALUES (107, 317, 5, '1');
INSERT INTO `tbl_test_result_sds` VALUES (108, 317, 6, '1');
INSERT INTO `tbl_test_result_sds` VALUES (109, 317, 7, '1');
INSERT INTO `tbl_test_result_sds` VALUES (110, 317, 8, '1');
INSERT INTO `tbl_test_result_sds` VALUES (111, 317, 9, '1');
INSERT INTO `tbl_test_result_sds` VALUES (112, 317, 10, '1');
INSERT INTO `tbl_test_result_sds` VALUES (113, 317, 11, '1');
INSERT INTO `tbl_test_result_sds` VALUES (114, 317, 12, '1');
INSERT INTO `tbl_test_result_sds` VALUES (115, 317, 13, '1');
INSERT INTO `tbl_test_result_sds` VALUES (116, 317, 14, '1');
INSERT INTO `tbl_test_result_sds` VALUES (117, 317, 15, '1');
INSERT INTO `tbl_test_result_sds` VALUES (118, 317, 16, '1');
INSERT INTO `tbl_test_result_sds` VALUES (119, 317, 17, '1');
INSERT INTO `tbl_test_result_sds` VALUES (120, 317, 18, '1');
INSERT INTO `tbl_test_result_sds` VALUES (121, 317, 19, '1');
INSERT INTO `tbl_test_result_sds` VALUES (122, 317, 20, '1');
INSERT INTO `tbl_test_result_sds` VALUES (123, 318, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (124, 318, 2, '4');
INSERT INTO `tbl_test_result_sds` VALUES (125, 318, 3, '1');
INSERT INTO `tbl_test_result_sds` VALUES (126, 318, 4, '1');
INSERT INTO `tbl_test_result_sds` VALUES (127, 318, 5, '4');
INSERT INTO `tbl_test_result_sds` VALUES (128, 318, 6, '4');
INSERT INTO `tbl_test_result_sds` VALUES (129, 318, 7, '1');
INSERT INTO `tbl_test_result_sds` VALUES (130, 318, 8, '1');
INSERT INTO `tbl_test_result_sds` VALUES (131, 318, 9, '1');
INSERT INTO `tbl_test_result_sds` VALUES (132, 318, 10, '1');
INSERT INTO `tbl_test_result_sds` VALUES (133, 318, 11, '4');
INSERT INTO `tbl_test_result_sds` VALUES (134, 318, 12, '4');
INSERT INTO `tbl_test_result_sds` VALUES (135, 318, 13, '1');
INSERT INTO `tbl_test_result_sds` VALUES (136, 318, 14, '4');
INSERT INTO `tbl_test_result_sds` VALUES (137, 318, 15, '1');
INSERT INTO `tbl_test_result_sds` VALUES (138, 318, 16, '4');
INSERT INTO `tbl_test_result_sds` VALUES (139, 318, 17, '4');
INSERT INTO `tbl_test_result_sds` VALUES (140, 318, 18, '4');
INSERT INTO `tbl_test_result_sds` VALUES (141, 318, 19, '1');
INSERT INTO `tbl_test_result_sds` VALUES (142, 318, 20, '4');
INSERT INTO `tbl_test_result_sds` VALUES (203, 324, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (204, 324, 2, '1');
INSERT INTO `tbl_test_result_sds` VALUES (205, 324, 3, '1');
INSERT INTO `tbl_test_result_sds` VALUES (206, 324, 4, '1');
INSERT INTO `tbl_test_result_sds` VALUES (207, 324, 5, '1');
INSERT INTO `tbl_test_result_sds` VALUES (208, 324, 6, '1');
INSERT INTO `tbl_test_result_sds` VALUES (209, 324, 7, '1');
INSERT INTO `tbl_test_result_sds` VALUES (210, 324, 8, '1');
INSERT INTO `tbl_test_result_sds` VALUES (211, 324, 9, '1');
INSERT INTO `tbl_test_result_sds` VALUES (212, 324, 10, '1');
INSERT INTO `tbl_test_result_sds` VALUES (213, 324, 11, '1');
INSERT INTO `tbl_test_result_sds` VALUES (214, 324, 12, '1');
INSERT INTO `tbl_test_result_sds` VALUES (215, 324, 13, '1');
INSERT INTO `tbl_test_result_sds` VALUES (216, 324, 14, '1');
INSERT INTO `tbl_test_result_sds` VALUES (217, 324, 15, '1');
INSERT INTO `tbl_test_result_sds` VALUES (218, 324, 16, '1');
INSERT INTO `tbl_test_result_sds` VALUES (219, 324, 17, '1');
INSERT INTO `tbl_test_result_sds` VALUES (220, 324, 18, '1');
INSERT INTO `tbl_test_result_sds` VALUES (221, 324, 19, '1');
INSERT INTO `tbl_test_result_sds` VALUES (222, 324, 20, '1');
INSERT INTO `tbl_test_result_sds` VALUES (223, 328, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (224, 328, 2, '3');
INSERT INTO `tbl_test_result_sds` VALUES (225, 328, 3, '3');
INSERT INTO `tbl_test_result_sds` VALUES (226, 328, 4, '2');
INSERT INTO `tbl_test_result_sds` VALUES (227, 328, 5, '2');
INSERT INTO `tbl_test_result_sds` VALUES (228, 328, 6, '3');
INSERT INTO `tbl_test_result_sds` VALUES (229, 328, 7, '2');
INSERT INTO `tbl_test_result_sds` VALUES (230, 328, 8, '2');
INSERT INTO `tbl_test_result_sds` VALUES (231, 328, 9, '3');
INSERT INTO `tbl_test_result_sds` VALUES (232, 328, 10, '3');
INSERT INTO `tbl_test_result_sds` VALUES (233, 328, 11, '1');
INSERT INTO `tbl_test_result_sds` VALUES (234, 328, 12, '2');
INSERT INTO `tbl_test_result_sds` VALUES (235, 328, 13, '3');
INSERT INTO `tbl_test_result_sds` VALUES (236, 328, 14, '3');
INSERT INTO `tbl_test_result_sds` VALUES (237, 328, 15, '2');
INSERT INTO `tbl_test_result_sds` VALUES (238, 328, 16, '1');
INSERT INTO `tbl_test_result_sds` VALUES (239, 328, 17, '3');
INSERT INTO `tbl_test_result_sds` VALUES (240, 328, 18, '2');
INSERT INTO `tbl_test_result_sds` VALUES (241, 328, 19, '3');
INSERT INTO `tbl_test_result_sds` VALUES (242, 328, 20, '4');
INSERT INTO `tbl_test_result_sds` VALUES (243, 330, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (244, 330, 2, '1');
INSERT INTO `tbl_test_result_sds` VALUES (245, 330, 3, '1');
INSERT INTO `tbl_test_result_sds` VALUES (246, 330, 4, '1');
INSERT INTO `tbl_test_result_sds` VALUES (247, 330, 5, '1');
INSERT INTO `tbl_test_result_sds` VALUES (248, 330, 6, '1');
INSERT INTO `tbl_test_result_sds` VALUES (249, 330, 7, '1');
INSERT INTO `tbl_test_result_sds` VALUES (250, 330, 8, '1');
INSERT INTO `tbl_test_result_sds` VALUES (251, 330, 9, '1');
INSERT INTO `tbl_test_result_sds` VALUES (252, 330, 10, '1');
INSERT INTO `tbl_test_result_sds` VALUES (253, 330, 11, '1');
INSERT INTO `tbl_test_result_sds` VALUES (254, 330, 12, '1');
INSERT INTO `tbl_test_result_sds` VALUES (255, 330, 13, '1');
INSERT INTO `tbl_test_result_sds` VALUES (256, 330, 14, '1');
INSERT INTO `tbl_test_result_sds` VALUES (257, 330, 15, '1');
INSERT INTO `tbl_test_result_sds` VALUES (258, 330, 16, '1');
INSERT INTO `tbl_test_result_sds` VALUES (259, 330, 17, '1');
INSERT INTO `tbl_test_result_sds` VALUES (260, 330, 18, '1');
INSERT INTO `tbl_test_result_sds` VALUES (261, 330, 19, '1');
INSERT INTO `tbl_test_result_sds` VALUES (262, 330, 20, '1');
INSERT INTO `tbl_test_result_sds` VALUES (263, 331, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (264, 331, 2, '1');
INSERT INTO `tbl_test_result_sds` VALUES (265, 331, 3, '2');
INSERT INTO `tbl_test_result_sds` VALUES (266, 331, 4, '2');
INSERT INTO `tbl_test_result_sds` VALUES (267, 331, 5, '2');
INSERT INTO `tbl_test_result_sds` VALUES (268, 331, 6, '2');
INSERT INTO `tbl_test_result_sds` VALUES (269, 331, 7, '2');
INSERT INTO `tbl_test_result_sds` VALUES (270, 331, 8, '1');
INSERT INTO `tbl_test_result_sds` VALUES (271, 331, 9, '1');
INSERT INTO `tbl_test_result_sds` VALUES (272, 331, 10, '3');
INSERT INTO `tbl_test_result_sds` VALUES (273, 331, 11, '3');
INSERT INTO `tbl_test_result_sds` VALUES (274, 331, 12, '3');
INSERT INTO `tbl_test_result_sds` VALUES (275, 331, 13, '3');
INSERT INTO `tbl_test_result_sds` VALUES (276, 331, 14, '3');
INSERT INTO `tbl_test_result_sds` VALUES (277, 331, 15, '3');
INSERT INTO `tbl_test_result_sds` VALUES (278, 331, 16, '3');
INSERT INTO `tbl_test_result_sds` VALUES (279, 331, 17, '3');
INSERT INTO `tbl_test_result_sds` VALUES (280, 331, 18, '3');
INSERT INTO `tbl_test_result_sds` VALUES (281, 331, 19, '2');
INSERT INTO `tbl_test_result_sds` VALUES (282, 331, 20, '2');
INSERT INTO `tbl_test_result_sds` VALUES (283, 332, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (284, 332, 2, '1');
INSERT INTO `tbl_test_result_sds` VALUES (285, 332, 3, '1');
INSERT INTO `tbl_test_result_sds` VALUES (286, 332, 4, '1');
INSERT INTO `tbl_test_result_sds` VALUES (287, 332, 5, '1');
INSERT INTO `tbl_test_result_sds` VALUES (288, 332, 6, '1');
INSERT INTO `tbl_test_result_sds` VALUES (289, 332, 7, '1');
INSERT INTO `tbl_test_result_sds` VALUES (290, 332, 8, '1');
INSERT INTO `tbl_test_result_sds` VALUES (291, 332, 9, '1');
INSERT INTO `tbl_test_result_sds` VALUES (292, 332, 10, '1');
INSERT INTO `tbl_test_result_sds` VALUES (293, 332, 11, '1');
INSERT INTO `tbl_test_result_sds` VALUES (294, 332, 12, '1');
INSERT INTO `tbl_test_result_sds` VALUES (295, 332, 13, '1');
INSERT INTO `tbl_test_result_sds` VALUES (296, 332, 14, '1');
INSERT INTO `tbl_test_result_sds` VALUES (297, 332, 15, '1');
INSERT INTO `tbl_test_result_sds` VALUES (298, 332, 16, '1');
INSERT INTO `tbl_test_result_sds` VALUES (299, 332, 17, '1');
INSERT INTO `tbl_test_result_sds` VALUES (300, 332, 18, '1');
INSERT INTO `tbl_test_result_sds` VALUES (301, 332, 19, '1');
INSERT INTO `tbl_test_result_sds` VALUES (302, 332, 20, '1');
INSERT INTO `tbl_test_result_sds` VALUES (303, 337, 1, '1');
INSERT INTO `tbl_test_result_sds` VALUES (304, 337, 2, '1');
INSERT INTO `tbl_test_result_sds` VALUES (305, 337, 3, '1');
INSERT INTO `tbl_test_result_sds` VALUES (306, 337, 4, '1');
INSERT INTO `tbl_test_result_sds` VALUES (307, 337, 5, '1');
INSERT INTO `tbl_test_result_sds` VALUES (308, 337, 6, '1');
INSERT INTO `tbl_test_result_sds` VALUES (309, 337, 7, '2');
INSERT INTO `tbl_test_result_sds` VALUES (310, 337, 8, '2');
INSERT INTO `tbl_test_result_sds` VALUES (311, 337, 9, '2');
INSERT INTO `tbl_test_result_sds` VALUES (312, 337, 10, '2');
INSERT INTO `tbl_test_result_sds` VALUES (313, 337, 11, '2');
INSERT INTO `tbl_test_result_sds` VALUES (314, 337, 12, '2');
INSERT INTO `tbl_test_result_sds` VALUES (315, 337, 13, '2');
INSERT INTO `tbl_test_result_sds` VALUES (316, 337, 14, '2');
INSERT INTO `tbl_test_result_sds` VALUES (317, 337, 15, '2');
INSERT INTO `tbl_test_result_sds` VALUES (318, 337, 16, '2');
INSERT INTO `tbl_test_result_sds` VALUES (319, 337, 17, '2');
INSERT INTO `tbl_test_result_sds` VALUES (320, 337, 18, '2');
INSERT INTO `tbl_test_result_sds` VALUES (321, 337, 19, '2');
INSERT INTO `tbl_test_result_sds` VALUES (322, 337, 20, '2');

-- ----------------------------
-- Table structure for tbl_tester_fpa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tester_fpa`;
CREATE TABLE `tbl_tester_fpa`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '测试者姓名',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `create_time` datetime NULL DEFAULT NULL COMMENT '测试时间',
  `test_plan_id` int NULL DEFAULT NULL COMMENT '测试计划id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tbl_tester_phone_uindex`(`phone` ASC) USING BTREE,
  UNIQUE INDEX `phone`(`phone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '性格测试者' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_tester_fpa
-- ----------------------------
INSERT INTO `tbl_tester_fpa` VALUES (35, '哈哈哈', '15517198180', NULL, 12);
INSERT INTO `tbl_tester_fpa` VALUES (37, '尚腾飞', '15517649848', NULL, 13);
INSERT INTO `tbl_tester_fpa` VALUES (38, '尚腾飞', '15517198166', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (39, '张大炮', '12232322323', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (40, '王美丽', '15864646464', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (41, '李二雷', '15549495656', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (43, '哈哈哈', '15649559468', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (44, '王富贵', '15519191919', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (45, '李铁柱', '12345678904', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (46, '李铁柱', '12345678911', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (47, '赵二牛', '12345678956', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (48, '赵二牛', '12345678957', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (49, '赵二牛', '12345678958', NULL, 14);
INSERT INTO `tbl_tester_fpa` VALUES (50, '付源东', '18567791337', NULL, 15);
INSERT INTO `tbl_tester_fpa` VALUES (51, '哈哈', '17737268564', NULL, 15);
INSERT INTO `tbl_tester_fpa` VALUES (52, '尚腾飞', '15789098657', NULL, 16);
INSERT INTO `tbl_tester_fpa` VALUES (54, '尚腾飞', '15789098655', NULL, 16);
INSERT INTO `tbl_tester_fpa` VALUES (55, '张大炮', '14567876456', NULL, 16);
INSERT INTO `tbl_tester_fpa` VALUES (56, '王美丽', '17834343434', NULL, 16);
INSERT INTO `tbl_tester_fpa` VALUES (57, '张三', '16546468956', NULL, 16);

-- ----------------------------
-- Table structure for tbl_tester_mht
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tester_mht`;
CREATE TABLE `tbl_tester_mht`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `phone` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `test_plan_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 351 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '性格测试者' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_tester_mht
-- ----------------------------
INSERT INTO `tbl_tester_mht` VALUES (328, '陈娇花', '15656677876', NULL, 26, 1);
INSERT INTO `tbl_tester_mht` VALUES (329, '赵铁牛', '15656677878', NULL, 26, 0);
INSERT INTO `tbl_tester_mht` VALUES (330, '丫丫', '17633974856', NULL, 27, 0);
INSERT INTO `tbl_tester_mht` VALUES (339, '哈哈', '16767788998', '2022-09-15 19:31:22', 28, 1);
INSERT INTO `tbl_tester_mht` VALUES (340, '嘿嘿', '12786787878', '2022-09-20 15:22:37', 29, 0);
INSERT INTO `tbl_tester_mht` VALUES (341, '哈哈', '16757676767', '2022-09-20 15:56:14', 29, 0);
INSERT INTO `tbl_tester_mht` VALUES (342, '哈哈', '16757676761', '2022-09-20 15:57:48', 29, 0);
INSERT INTO `tbl_tester_mht` VALUES (343, '哈哈', '12878787878', '2022-09-20 15:58:52', 29, 0);
INSERT INTO `tbl_tester_mht` VALUES (344, '哈哈哈', '12787278323', '2022-09-20 16:00:26', 29, 1);
INSERT INTO `tbl_tester_mht` VALUES (345, '哈哈哈', '12787278323', '2022-09-20 16:01:05', 29, 1);
INSERT INTO `tbl_tester_mht` VALUES (346, '哈哈哈', '12787278321', '2022-09-20 16:02:45', 29, 1);
INSERT INTO `tbl_tester_mht` VALUES (347, '哈哈哈', '12787867567', '2022-09-20 16:15:06', 29, 1);
INSERT INTO `tbl_tester_mht` VALUES (348, '哈哈', '12687878788', '2022-09-20 16:36:39', 29, 0);
INSERT INTO `tbl_tester_mht` VALUES (349, '哈哈', '12687878788', '2022-09-20 16:36:47', 29, 0);
INSERT INTO `tbl_tester_mht` VALUES (350, '哈哈', '12687878788', '2022-09-20 16:37:33', 29, 1);

-- ----------------------------
-- Table structure for tbl_tester_sas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tester_sas`;
CREATE TABLE `tbl_tester_sas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `test_plan_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tbl_tester_sas_phone_uindex`(`phone` ASC) USING BTREE,
  UNIQUE INDEX `phone`(`phone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '性格测试者' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_tester_sas
-- ----------------------------
INSERT INTO `tbl_tester_sas` VALUES (273, '测哈', '18533335558', '2022-07-15 21:35:37', 1);
INSERT INTO `tbl_tester_sas` VALUES (274, '测者', '18533335577', '2022-07-15 21:38:12', 1);
INSERT INTO `tbl_tester_sas` VALUES (294, '试者', '18533335552', '2022-07-15 21:45:34', 1);
INSERT INTO `tbl_tester_sas` VALUES (295, '测测', '18533335559', '2022-07-15 21:48:36', 1);
INSERT INTO `tbl_tester_sas` VALUES (296, '夏夏', '18533335571', '2022-07-18 19:54:58', 1);
INSERT INTO `tbl_tester_sas` VALUES (297, '张柏', '18533335455', '2022-07-19 17:50:54', 6);
INSERT INTO `tbl_tester_sas` VALUES (298, '哦哦', '18533335102', '2022-07-19 18:53:45', 1);
INSERT INTO `tbl_tester_sas` VALUES (299, '焦虑', '18533335987', '2022-07-19 18:54:34', 1);
INSERT INTO `tbl_tester_sas` VALUES (300, '皮额', '18533335635', '2022-07-19 18:56:27', 1);
INSERT INTO `tbl_tester_sas` VALUES (301, '欧式', '18533335105', '2022-07-19 18:59:56', 6);
INSERT INTO `tbl_tester_sas` VALUES (302, '韩庚', '18533331234', '2022-07-19 19:17:15', 6);
INSERT INTO `tbl_tester_sas` VALUES (303, '后台', '18533331478', '2022-07-19 19:31:45', 6);
INSERT INTO `tbl_tester_sas` VALUES (311, '张子恒', '13721754608', NULL, 11);
INSERT INTO `tbl_tester_sas` VALUES (313, '六六六', '14569875638', NULL, 11);
INSERT INTO `tbl_tester_sas` VALUES (314, '尚幂', '13814383841', '2022-09-20 15:16:41', 16);
INSERT INTO `tbl_tester_sas` VALUES (315, '哈哈', '12787878787', '2022-09-20 16:34:14', 16);
INSERT INTO `tbl_tester_sas` VALUES (320, '嘿嘿', '16549864986', '2022-09-21 13:59:36', 16);

-- ----------------------------
-- Table structure for tbl_tester_scl
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tester_scl`;
CREATE TABLE `tbl_tester_scl`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '测试者姓名',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `create_time` datetime NULL DEFAULT NULL COMMENT '测试时间',
  `test_plan_id` int NULL DEFAULT NULL COMMENT '测试计划id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tbl_tester_phone_uindex`(`phone` ASC) USING BTREE,
  UNIQUE INDEX `phone`(`phone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '性格测试者' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_tester_scl
-- ----------------------------
INSERT INTO `tbl_tester_scl` VALUES (37, '尚腾飞', '15517195480', NULL, 14);
INSERT INTO `tbl_tester_scl` VALUES (38, '尚腾飞', '15517198180', NULL, 15);
INSERT INTO `tbl_tester_scl` VALUES (40, '张大炮', '16618181915', NULL, 15);
INSERT INTO `tbl_tester_scl` VALUES (41, '王美丽', '16815191784', NULL, 15);
INSERT INTO `tbl_tester_scl` VALUES (42, '哈哈哈', '16946432464', NULL, 15);
INSERT INTO `tbl_tester_scl` VALUES (43, '嘿嘿嘿', '13456789345', NULL, 15);
INSERT INTO `tbl_tester_scl` VALUES (45, '赵铁牛', '13456788771', NULL, 15);
INSERT INTO `tbl_tester_scl` VALUES (46, '陈娇花', '13345666789', NULL, 15);
INSERT INTO `tbl_tester_scl` VALUES (47, '陈娇花', '13345666782', NULL, 15);
INSERT INTO `tbl_tester_scl` VALUES (48, '遭殃', '17433971845', NULL, 15);
INSERT INTO `tbl_tester_scl` VALUES (49, '王心', '17803866024', NULL, 16);
INSERT INTO `tbl_tester_scl` VALUES (50, '张大炮', '12787876757', '2022-09-13 09:09:18', 19);
INSERT INTO `tbl_tester_scl` VALUES (51, '哈哈哈', '17728283839', '2022-09-13 12:37:29', 19);
INSERT INTO `tbl_tester_scl` VALUES (53, '哈哈', '12787878789', '2022-09-16 11:31:37', 19);
INSERT INTO `tbl_tester_scl` VALUES (54, '张大炮', '16767787891', '2022-09-19 19:42:56', 19);
INSERT INTO `tbl_tester_scl` VALUES (56, '王美丽', '18989234232', '2022-09-19 19:50:30', 19);
INSERT INTO `tbl_tester_scl` VALUES (57, '尚腾飞', '16756767781', '2022-09-19 19:57:04', 19);
INSERT INTO `tbl_tester_scl` VALUES (58, '张益达', '16767576778', '2022-09-19 20:48:37', 20);
INSERT INTO `tbl_tester_scl` VALUES (59, '张益达', '16767576776', '2022-09-19 20:51:15', 20);
INSERT INTO `tbl_tester_scl` VALUES (61, '张益达', '16767576767', '2022-09-19 20:53:23', 20);
INSERT INTO `tbl_tester_scl` VALUES (62, '李铁柱', '12787889232', '2022-09-19 20:58:07', 20);
INSERT INTO `tbl_tester_scl` VALUES (63, '李铁柱', '12787889234', '2022-09-19 20:59:54', 20);
INSERT INTO `tbl_tester_scl` VALUES (64, '张大胖', '12786723322', '2022-09-19 21:03:40', 20);
INSERT INTO `tbl_tester_scl` VALUES (65, '嘿嘿', '12783242323', '2022-09-19 21:05:54', 20);
INSERT INTO `tbl_tester_scl` VALUES (66, '哈哈哈', '12783278321', '2022-09-19 21:16:23', 20);
INSERT INTO `tbl_tester_scl` VALUES (67, '哈哈哈', '16767566767', '2022-09-19 21:33:32', 20);
INSERT INTO `tbl_tester_scl` VALUES (68, '哈哈', '17878675677', '2022-09-20 08:20:22', 20);
INSERT INTO `tbl_tester_scl` VALUES (69, '呵呵呵', '12787867567', '2022-09-20 08:26:48', 20);
INSERT INTO `tbl_tester_scl` VALUES (70, '哈哈', '17842378238', '2022-09-20 15:14:03', 20);
INSERT INTO `tbl_tester_scl` VALUES (71, '哈哈', '12787878787', '2022-09-20 16:35:21', 20);

-- ----------------------------
-- Table structure for tbl_tester_sds
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tester_sds`;
CREATE TABLE `tbl_tester_sds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `test_plan_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tbl_tester_sds_phone_uindex`(`phone` ASC) USING BTREE,
  UNIQUE INDEX `phone`(`phone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 338 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '性格测试者' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_tester_sds
-- ----------------------------
INSERT INTO `tbl_tester_sds` VALUES (313, '王美丽', '16565787676', '2022-09-14 14:38:09', 12);
INSERT INTO `tbl_tester_sds` VALUES (314, '张大炮', '16565787672', '2022-09-14 14:38:33', 12);
INSERT INTO `tbl_tester_sds` VALUES (315, '张小炮', '16565787673', '2022-09-14 14:40:50', 12);
INSERT INTO `tbl_tester_sds` VALUES (316, '丫丫', '17272727389', '2022-09-17 14:14:52', 12);
INSERT INTO `tbl_tester_sds` VALUES (317, '测试', '12345678945', '2022-09-19 20:05:07', 12);
INSERT INTO `tbl_tester_sds` VALUES (318, '测试', '12345678944', '2022-09-19 20:07:21', 12);
INSERT INTO `tbl_tester_sds` VALUES (324, '哈哈', '17886727272', '2022-09-19 20:44:04', 12);
INSERT INTO `tbl_tester_sds` VALUES (328, '尚幂', '13814383841', '2022-09-20 15:25:36', 12);
INSERT INTO `tbl_tester_sds` VALUES (330, '哈哈哈', '12787867562', '2022-09-20 16:20:03', 12);
INSERT INTO `tbl_tester_sds` VALUES (331, '哈哈', '12787878787', '2022-09-20 16:33:19', 12);
INSERT INTO `tbl_tester_sds` VALUES (332, '小贝', '12787878781', '2022-09-20 17:48:16', 12);
INSERT INTO `tbl_tester_sds` VALUES (337, '哈哈', '12345678999', '2022-09-21 10:39:31', 12);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deptid` int NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'shang', 'd504c8ece53ca59afc909fe293c47cd8', 'ETMIu1HFBFD27go5Zo+6SA==', 11, 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/2c798123-8392-44fe-9300-9a007f9255f8wallhaven-x89e9v.jpg', '2022-08-30 20:30:47');
INSERT INTO `tbl_user` VALUES (3, 'admin3', 'f6449fd0781d69fd14cefbf6fae672a3', 'UVzvYLqDHFMZVjigJ+8ppw==', 10, 'https://aaachenjian.oss-cn-beijing.aliyuncs.com/cb68f5cd-9932-456e-ad4b-d76c5c2b2b12mm.jpg', '2022-08-09 08:36:42');
INSERT INTO `tbl_user` VALUES (9, 'admin9', 'c809876f4030571c6f2e6ecf152993be', '9Gjy25ehWhvAgVLiCncD9A==', 10, 'https://aaachenjian.oss-cn-beijing.aliyuncs.com/cb68f5cd-9932-456e-ad4b-d76c5c2b2b12mm.jpg', '2022-08-09 08:36:42');
INSERT INTO `tbl_user` VALUES (11, 'admin11', '6720744469eebc644afa9a8894723a5e', 'fcxi5yMAQH+HeWvxMFTroQ==', 10, 'https://aaachenjian.oss-cn-beijing.aliyuncs.com/cb68f5cd-9932-456e-ad4b-d76c5c2b2b12mm.jpg', '2022-08-09 08:36:42');
INSERT INTO `tbl_user` VALUES (13, 'admin13', 'f9122ef7ceaef17c909f6564ea515d1b', 'nIvMgts/tR7B1pWg0X57QA==', 10, 'https://aaachenjian.oss-cn-beijing.aliyuncs.com/cb68f5cd-9932-456e-ad4b-d76c5c2b2b12mm.jpg', '2022-08-09 08:36:42');
INSERT INTO `tbl_user` VALUES (14, 'chenjian14', '88e4b37ef4e77595cbb6cff8b109ed30', '8ObhNCxahj7uZJA4rCiKkg==', 20, 'https://aaachenjian.oss-cn-beijing.aliyuncs.com/fa3ae15e-280e-4ee7-9b3a-31e5b58b187fsg.jpg', '2022-08-09 08:36:44');
INSERT INTO `tbl_user` VALUES (144, 'aaa', 'c39d16c618e473c179be6967e9f5b97a', 'CHpR6GF7zRXllhSUZYC+Mg==', 20, 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/714dd074-0fa9-4b9c-86fe-8ecaab34403awallhaven-z8wl1y.png', '2022-08-27 14:38:27');
INSERT INTO `tbl_user` VALUES (146, 'aaaa', '3b7ecbd2892873b9c0c05d2c91d4dbe2', '2DwlzSm1gY1qUnz2MTsnrA==', 10, '', '2022-08-30 20:39:45');

-- ----------------------------
-- Table structure for tbl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role`  (
  `user_id` int NOT NULL COMMENT '用户ID',
  `role_id` int NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES (1, 1);
INSERT INTO `tbl_user_role` VALUES (2, 2);
INSERT INTO `tbl_user_role` VALUES (3, 2);
INSERT INTO `tbl_user_role` VALUES (4, 2);
INSERT INTO `tbl_user_role` VALUES (5, 3);
INSERT INTO `tbl_user_role` VALUES (6, 1);
INSERT INTO `tbl_user_role` VALUES (7, 3);
INSERT INTO `tbl_user_role` VALUES (8, 3);
INSERT INTO `tbl_user_role` VALUES (9, 1);
INSERT INTO `tbl_user_role` VALUES (10, 2);
INSERT INTO `tbl_user_role` VALUES (11, 2);
INSERT INTO `tbl_user_role` VALUES (12, 1);
INSERT INTO `tbl_user_role` VALUES (13, 1);
INSERT INTO `tbl_user_role` VALUES (14, 2);
INSERT INTO `tbl_user_role` VALUES (15, 1);
INSERT INTO `tbl_user_role` VALUES (16, 2);
INSERT INTO `tbl_user_role` VALUES (17, 1);
INSERT INTO `tbl_user_role` VALUES (18, 21);
INSERT INTO `tbl_user_role` VALUES (19, 2);
INSERT INTO `tbl_user_role` VALUES (20, 1);
INSERT INTO `tbl_user_role` VALUES (21, 23);
INSERT INTO `tbl_user_role` VALUES (22, 1);
INSERT INTO `tbl_user_role` VALUES (23, 1);
INSERT INTO `tbl_user_role` VALUES (24, 1);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `userid` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `deptid` int NULL DEFAULT NULL COMMENT '部门',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别(1男 0女)',
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  `password` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '盐值',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '状态（1正常 0停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '删除标记（1正常 0删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `update_time` date NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `role_id` int NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 11, 'admin', '838449693@qq.com', '15517198180', '1', 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/689423ca-2ad0-49bc-ac2a-c7f6e73eef29keli.jpg', '6523a5a6c6d6e89726b120d6c1ea0df8', 'lp54kXrRfxN5ACYLMXD15w==', '1', '1', 'admin', '2022-08-31 00:00:00', 'admin', '2022-09-01', '宇宙无敌超级大大大大大大管理员', 1);
INSERT INTO `userinfo` VALUES (2, 13, 'shang', '838449693@qq.com', '15517198180', '0', 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/73b260c7-c515-4bc8-a92d-08dce8d2900ekeli.jpg', 'd863fb77e397de547a8ffab184c0b151', 'LSywmVIT0ukF9Nj8LtMAMQ==', '1', '1', 'admin', '2022-08-31 00:00:00', 'shang', '2022-09-14', '中等管理员。。。', 2);
INSERT INTO `userinfo` VALUES (3, 12, '哈哈哈', '34567890aa@567.co', '12123456789', '0', '', '20f8610f85085105c35a87a6c251e083', 'jXHnwToa2P3c0I5vw/Ttxg==', '1', '1', 'admin', '2022-08-31 00:00:00', 'admin', '2022-09-13', '34567890', 2);
INSERT INTO `userinfo` VALUES (4, 13, '张大炮1', '567890@qq.com', '12345678901', '1', 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/92c55b60-f14e-4fe9-9a3e-ec3f2ef8daa1keli.jpg', 'c40ccde3b1e88e671190c72401c7b1e6', '1XnBTAl86wqbantUROrzuA==', '1', '1', 'admin', '2022-08-31 00:00:00', NULL, NULL, '我叫张大炮，我是', 2);
INSERT INTO `userinfo` VALUES (5, 11, 'shang1', '2324@qq.com', '12345678901', '1', '', 'c19b48c467366067e8d4538b4ec706f8', 'NDlMEiilFzrabwCDJ9dJDA==', '0', '1', 'admin', '2022-08-31 00:00:00', 'admin', '2022-09-13', '567890-', 3);
INSERT INTO `userinfo` VALUES (6, 12, '张大炮', '12345432@qq.com', '15514567890', '1', 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/2f9fc4b9-be39-4023-b64d-4e30c896b3d0keli.jpg', '57a9e85fa4fbbcb3ab6d71e01412ada0', '06iQIhvKI3keZWrE+17NrQ==', '1', '1', 'admin', '2022-08-31 00:00:00', 'shang', '2022-09-08', '我叫张大炮', 1);
INSERT INTO `userinfo` VALUES (7, 11, '1233dasf', '1234@qq.com', '15517198180', '0', '', 'e37fe360e7b1b902965fa0a540791889', 'muSfDW9OtzPu7MHuOMC4RQ==', '0', '2', 'admin', '2022-08-31 00:00:00', NULL, NULL, '哈哈哈', 3);
INSERT INTO `userinfo` VALUES (8, 11, '李二雷', '3456789@qq.com', '12345678910', '0', 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/f9b55238-6e8b-4a4c-9a36-2d2fd44d4343keli.jpg', 'f33e9c4ad5e5aaaa897b2915972f051a', 'KOMJg6YlVy2vLzqrvRSXDg==', '1', '1', 'admin', '2022-09-01 00:00:00', 'shang', '2022-09-08', '我叫李二雷', 3);
INSERT INTO `userinfo` VALUES (9, 11, '呵呵呵', '34567890@qq.com', '12121212121', '0', '', '045cbb8f66d12823ebf43ff87b9db93a', 'c2fNl7Emsc5FSVA/kaBxIg==', '1', '1', 'admin', '2022-09-01 00:00:00', NULL, NULL, '哈哈哈', 1);
INSERT INTO `userinfo` VALUES (10, 11, '哈哈哈11', '34567890@qq.com', '12121212121', '0', '', '85a9fb38ea6c522c9b7593836dedcd1c', 'B3PqvSJwci44RkkY2aM8+g==', '0', '1', 'admin', '2022-09-01 00:00:00', NULL, NULL, '哈哈哈', 2);
INSERT INTO `userinfo` VALUES (11, 11, '呵呵呵哈哈', '123442@qq.com', '12345678901', '0', '', 'b331a516acadb0722639f074816cb902', '6sPY7hnq0J10Th2dqrebwg==', '0', '1', 'admin', '2022-09-01 00:00:00', NULL, NULL, '232322', 2);
INSERT INTO `userinfo` VALUES (12, 11, 'adsfhksd', '4567890@qq.com', '12345678901', '0', '', '62484739f6ca72463214c9e10d912fda', 'OcUTdNBxa1rmLyzyUfnr9Q==', '0', '0', 'admin', '2022-09-01 00:00:00', NULL, NULL, '23432', 1);
INSERT INTO `userinfo` VALUES (13, 11, 'adsfhksd1', '4567890@qq.com', '12345678901', '0', '', '0ce58df7527ebc0f4f8e1be484edfbf1', 'TTd6jKRhEvk4FGZPXiIGHQ==', '0', '0', 'admin', '2022-09-01 00:00:00', NULL, NULL, '23432', 1);
INSERT INTO `userinfo` VALUES (14, 12, '王美丽', '23456789@qq.com', '12345678902', '0', 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/dbe4f586-e43d-4c4a-8c48-43fef8e970f6keli.jpg', 'fc299c41fd79a76c2c54fbb160edb595', 'SyoBG2BzxA/CSjDh6xGiHg==', '1', '1', 'admin', '2022-09-01 00:00:00', NULL, NULL, '34567890', 2);
INSERT INTO `userinfo` VALUES (15, 11, 'rtyuio', '56789@qq.com', '12345678901', '0', '', '364eab55976507c8fa2104387931c34e', 'ES5Dl82Fbrkzm5pvi7iU+A==', '0', '1', 'admin', '2022-09-01 00:00:00', 'shang', '2022-09-03', '2324234a地方', 1);
INSERT INTO `userinfo` VALUES (16, 12, '李铁柱', '34567890@qq.com', '13456789034', '0', '', '35ded9d9b42246022c3b2a4174cb538a', '3kLHa64z+fqf6rU4875dNw==', '1', '1', 'shang', '2022-09-08 15:26:13', NULL, NULL, '', 2);
INSERT INTO `userinfo` VALUES (17, 11, 'fasdfd', '3221412@qq.com', '12345678956', '0', '', '48a7583b2b9351d03902e26ca1a871da', '4aexBT1kJNrQ8cWH6Pj+xQ==', '0', '0', NULL, NULL, NULL, NULL, 'dsfd', 1);
INSERT INTO `userinfo` VALUES (18, 14, 'sss', '123564816@qq.com', '12354687952', '0', '', '0120a930fa9c447a955dda0a0550c051', 'y7ICd82BYAFnKntNXAVFmQ==', '1', '0', 'shang', '2022-09-08 17:25:00', NULL, NULL, '', 21);
INSERT INTO `userinfo` VALUES (19, 13, '呵呵呵123', '165874984@qq.com', '12345645687', '1', '', '3f23fdc6f844d68e9ca2fbfcc323724c', 'KIyomEA62xCmwDr06tMsNg==', '0', '1', 'shang', '2022-09-08 17:42:42', 'shang', '2022-09-08', '', 2);
INSERT INTO `userinfo` VALUES (20, 17, 'xiaochengjie', '1752167034@qq.com', '15890741124', '1', 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/b2109097-e084-4404-84b2-92b4e5f55af7newavatar.png', '3f96dac47862a4dd7c6f524138970dbb', '55LC86jfcP9YScmwg+F9Pw==', '1', '0', 'shang', '2022-09-08 18:29:34', 'shang', '2022-09-08', 'qw', 1);
INSERT INTO `userinfo` VALUES (21, 14, 'xiao', '11@qq.com', '12323232563', '1', '', '6687c7e684a10b808fc70f9ba943d05b', 'nz/vAhjfAb6a+/XkxCwHIg==', '0', '0', 'shang', '2022-09-08 18:34:04', NULL, NULL, '', 23);
INSERT INTO `userinfo` VALUES (22, 19, 'xiao', '2@q.qq', '12524562452', '0', '', '6c45416dfb3b7fefb712bbfd125d025f', 'IUuPyvvi+QUtTJp1aLbyvA==', '0', '1', 'shang', '2022-09-08 18:45:15', 'shang', '2022-09-10', '', 1);
INSERT INTO `userinfo` VALUES (23, 18, 'admin123', '12567@qq.com', '12345678978', '0', '', 'd4de48e05afb99b7f50332165791d0db', 'mD7iF5Au3ImVZhav+Cv9SQ==', '1', '1', 'shang', '2022-09-08 19:17:30', 'shang', '2022-09-11', '1221', 1);
INSERT INTO `userinfo` VALUES (24, 11, 'admin', '838449693@qq.com', '15517198180', '1', 'https://shang0826-01.oss-cn-hangzhou.aliyuncs.com/c3e6b4f9-cb16-4d36-9c18-88aeebdc4e50keli.jpg', '442a45edcc79c86d556ddfea0f05a841', 'rCMSvfmdTifaosRRSh5+tw==', '1', '0', 'admin', '2022-09-16 17:53:05', NULL, NULL, '最高权限', 1);

-- ----------------------------
-- View structure for view_question_answer_fpa
-- ----------------------------
DROP VIEW IF EXISTS `view_question_answer_fpa`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_question_answer_fpa` AS select `tq`.`id` AS `id`,`tq`.`question` AS `question`,`tq`.`type` AS `type`,`tq`.`result` AS `result`,`tq`.`answer` AS `answer`,`tq`.`tester_id` AS `tester_id`,`td`.`dictionary_name` AS `dictionary_name` from ((select `tqs`.`id` AS `id`,`tqs`.`question` AS `question`,`tqs`.`type` AS `type`,if((`ttrs`.`answer` = 1),`tqs`.`option_a`,if((`ttrs`.`answer` = 2),`tqs`.`option_b`,if((`ttrs`.`answer` = 3),`tqs`.`option_c`,if((`ttrs`.`answer` = 4),`tqs`.`option_d`,NULL)))) AS `result`,`ttrs`.`answer` AS `answer`,`ttrs`.`tester_id` AS `tester_id` from (`tbl_question_fpa` `tqs` left join `tbl_test_result_fpa` `ttrs` on((`tqs`.`id` = `ttrs`.`question_id`)))) `tq` left join `tbl_dictionary` `td` on((`tq`.`type` = `td`.`dictionary_id`)));

-- ----------------------------
-- View structure for view_question_answer_mht
-- ----------------------------
DROP VIEW IF EXISTS `view_question_answer_mht`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_question_answer_mht` AS select `tq`.`id` AS `id`,`tq`.`question` AS `question`,`tq`.`type` AS `type`,`tq`.`result` AS `result`,`tq`.`answer` AS `answer`,`tq`.`tester_id` AS `tester_id`,`td`.`dictionary_name` AS `dictionary_name` from ((select `tqs`.`id` AS `id`,`tqs`.`question` AS `question`,`tqs`.`type` AS `type`,if((`ttrs`.`answer` = 1),`tqs`.`option_true`,if((`ttrs`.`answer` = 0),`tqs`.`option_false`,NULL)) AS `result`,`ttrs`.`answer` AS `answer`,`ttrs`.`tester_id` AS `tester_id` from (`tbl_question_mht` `tqs` left join `tbl_test_result_mht` `ttrs` on((`tqs`.`id` = `ttrs`.`question_id`)))) `tq` left join `tbl_dictionary` `td` on((`tq`.`type` = `td`.`dictionary_id`)));

-- ----------------------------
-- View structure for view_question_answer_sas
-- ----------------------------
DROP VIEW IF EXISTS `view_question_answer_sas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_question_answer_sas` AS select `tq`.`id` AS `id`,`tq`.`question` AS `question`,`tq`.`type` AS `type`,`tq`.`result` AS `result`,`tq`.`answer` AS `answer`,`tq`.`tester_id` AS `tester_id`,`td`.`dictionary_name` AS `dictionary_name` from ((select `tqs`.`id` AS `id`,`tqs`.`question` AS `question`,`tqs`.`type` AS `type`,if((`ttrs`.`answer` = '1'),`tqs`.`option_a`,if((`ttrs`.`answer` = '2'),`tqs`.`option_b`,if((`ttrs`.`answer` = '3'),`tqs`.`option_c`,if((`ttrs`.`answer` = '4'),`tqs`.`option_d`,NULL)))) AS `result`,`ttrs`.`answer` AS `answer`,`ttrs`.`tester_id` AS `tester_id` from (`tbl_question_sas` `tqs` left join `tbl_test_result_sas` `ttrs` on((`tqs`.`id` = `ttrs`.`question_id`)))) `tq` left join `tbl_dictionary` `td` on((`tq`.`type` = `td`.`dictionary_id`)));

-- ----------------------------
-- View structure for view_question_answer_scl
-- ----------------------------
DROP VIEW IF EXISTS `view_question_answer_scl`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_question_answer_scl` AS select `tq`.`id` AS `id`,`tq`.`question` AS `question`,`tq`.`type` AS `type`,`tq`.`result` AS `result`,`tq`.`answer` AS `answer`,`tq`.`tester_id` AS `tester_id`,`td`.`dictionary_name` AS `dictionary_name` from ((select `tqs`.`id` AS `id`,`tqs`.`question` AS `question`,`tqs`.`type` AS `type`,if((`ttrs`.`answer` = 1),`tqs`.`option_a`,if((`ttrs`.`answer` = 2),`tqs`.`option_b`,if((`ttrs`.`answer` = 3),`tqs`.`option_c`,if((`ttrs`.`answer` = 4),`tqs`.`option_d`,if((`ttrs`.`answer` = 5),`tqs`.`option_e`,NULL))))) AS `result`,`ttrs`.`answer` AS `answer`,`ttrs`.`tester_id` AS `tester_id` from (`tbl_question_scl` `tqs` left join `tbl_test_result_scl` `ttrs` on((`tqs`.`id` = `ttrs`.`question_id`)))) `tq` left join `tbl_dictionary` `td` on((`tq`.`type` = `td`.`dictionary_id`)));

-- ----------------------------
-- View structure for view_question_answer_sds
-- ----------------------------
DROP VIEW IF EXISTS `view_question_answer_sds`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_question_answer_sds` AS select `tq`.`id` AS `id`,`tq`.`question` AS `question`,`tq`.`type` AS `type`,`tq`.`result` AS `result`,`tq`.`answer` AS `answer`,`tq`.`tester_id` AS `tester_id`,`td`.`dictionary_name` AS `dictionary_name` from ((select `tqs`.`id` AS `id`,`tqs`.`question` AS `question`,`tqs`.`type` AS `type`,if((`ttrs`.`answer` = '1'),`tqs`.`option_a`,if((`ttrs`.`answer` = '2'),`tqs`.`option_b`,if((`ttrs`.`answer` = '3'),`tqs`.`option_c`,if((`ttrs`.`answer` = '4'),`tqs`.`option_d`,NULL)))) AS `result`,`ttrs`.`answer` AS `answer`,`ttrs`.`tester_id` AS `tester_id` from (`tbl_question_sds` `tqs` left join `tbl_test_result_sds` `ttrs` on((`tqs`.`id` = `ttrs`.`question_id`)))) `tq` left join `tbl_dictionary` `td` on((`tq`.`type` = `td`.`dictionary_id`)));

-- ----------------------------
-- View structure for view_test_plan
-- ----------------------------
DROP VIEW IF EXISTS `view_test_plan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_plan` AS select `tbl_test_plan_fpa`.`id` AS `id`,`tbl_test_plan_fpa`.`test_name` AS `test_name`,`tbl_test_plan_fpa`.`test_code` AS `test_code`,`tbl_test_plan_fpa`.`test_begin` AS `test_begin`,`tbl_test_plan_fpa`.`test_end` AS `test_end`,`tbl_test_plan_fpa`.`create_time` AS `create_time`,`tbl_test_plan_fpa`.`create_by` AS `create_by`,`tbl_test_plan_fpa`.`update_time` AS `update_time`,`tbl_test_plan_fpa`.`update_by` AS `update_by`,`tbl_test_plan_fpa`.`remark` AS `remark`,'fpa' AS `type` from `tbl_test_plan_fpa` where (`tbl_test_plan_fpa`.`flag` = '1') union select `tbl_test_plan_sas`.`id` AS `id`,`tbl_test_plan_sas`.`test_name` AS `test_name`,`tbl_test_plan_sas`.`test_code` AS `test_code`,`tbl_test_plan_sas`.`test_begin` AS `test_begin`,`tbl_test_plan_sas`.`test_end` AS `test_end`,`tbl_test_plan_sas`.`create_time` AS `create_time`,`tbl_test_plan_sas`.`create_by` AS `create_by`,`tbl_test_plan_sas`.`update_time` AS `update_time`,`tbl_test_plan_sas`.`update_by` AS `update_by`,`tbl_test_plan_sas`.`remark` AS `remark`,'sas' AS `type` from `tbl_test_plan_sas` where (`tbl_test_plan_sas`.`flag` = '1') union select `tbl_test_plan_sds`.`id` AS `id`,`tbl_test_plan_sds`.`test_name` AS `test_name`,`tbl_test_plan_sds`.`test_code` AS `test_code`,`tbl_test_plan_sds`.`test_begin` AS `test_begin`,`tbl_test_plan_sds`.`test_end` AS `test_end`,`tbl_test_plan_sds`.`create_time` AS `create_time`,`tbl_test_plan_sds`.`create_by` AS `create_by`,`tbl_test_plan_sds`.`update_time` AS `update_time`,`tbl_test_plan_sds`.`update_by` AS `update_by`,`tbl_test_plan_sds`.`remark` AS `remark`,'sds' AS `type` from `tbl_test_plan_sds` where (`tbl_test_plan_sds`.`flag` = '1') union select `tbl_test_plan_scl`.`id` AS `id`,`tbl_test_plan_scl`.`test_name` AS `test_name`,`tbl_test_plan_scl`.`test_code` AS `test_code`,`tbl_test_plan_scl`.`test_begin` AS `test_begin`,`tbl_test_plan_scl`.`test_end` AS `test_end`,`tbl_test_plan_scl`.`create_time` AS `create_time`,`tbl_test_plan_scl`.`create_by` AS `create_by`,`tbl_test_plan_scl`.`update_time` AS `update_time`,`tbl_test_plan_scl`.`update_by` AS `update_by`,`tbl_test_plan_scl`.`remark` AS `remark`,'scl' AS `type` from `tbl_test_plan_scl` where (`tbl_test_plan_scl`.`flag` = '1') union select `tbl_test_plan_mht`.`id` AS `id`,`tbl_test_plan_mht`.`test_name` AS `test_name`,`tbl_test_plan_mht`.`test_code` AS `test_code`,`tbl_test_plan_mht`.`test_begin` AS `test_begin`,`tbl_test_plan_mht`.`test_end` AS `test_end`,`tbl_test_plan_mht`.`create_time` AS `create_time`,`tbl_test_plan_mht`.`create_by` AS `create_by`,`tbl_test_plan_mht`.`update_time` AS `update_time`,`tbl_test_plan_mht`.`update_by` AS `update_by`,`tbl_test_plan_mht`.`remark` AS `remark`,'mht' AS `type` from `tbl_test_plan_mht` where (`tbl_test_plan_mht`.`flag` = '1');

-- ----------------------------
-- View structure for view_test_result_fpa
-- ----------------------------
DROP VIEW IF EXISTS `view_test_result_fpa`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_result_fpa` AS select `yyy`.`tester_id` AS `tester_id`,`yyy`.`red_count` AS `red_count`,`yyy`.`blue_count` AS `blue_count`,`yyy`.`yellow_count` AS `yellow_count`,`yyy`.`green_count` AS `green_count`,`yyy`.`NAME` AS `NAME`,`yyy`.`phone` AS `phone`,`yyy`.`create_time` AS `create_time`,`yyy`.`test_plan_id` AS `test_plan_id`,`ttpf`.`test_name` AS `test_name` from ((select `xxx`.`tester_id` AS `tester_id`,`xxx`.`red_count` AS `red_count`,`xxx`.`blue_count` AS `blue_count`,`xxx`.`yellow_count` AS `yellow_count`,`xxx`.`green_count` AS `green_count`,`ttf`.`name` AS `NAME`,`ttf`.`phone` AS `phone`,`ttf`.`create_time` AS `create_time`,`ttf`.`test_plan_id` AS `test_plan_id` from ((select `temp_count`.`tester_id` AS `tester_id`,ifnull(sum((case when (((`temp_count`.`type` = 1) and (`temp_count`.`answer` = 1)) or ((`temp_count`.`type` = 2) and (`temp_count`.`answer` = 4))) then `temp_count`.`result_count` end)),0) AS `red_count`,ifnull(sum((case when (((`temp_count`.`type` = 1) and (`temp_count`.`answer` = 2)) or ((`temp_count`.`type` = 2) and (`temp_count`.`answer` = 3))) then `temp_count`.`result_count` end)),0) AS `blue_count`,ifnull(sum((case when (((`temp_count`.`type` = 1) and (`temp_count`.`answer` = 3)) or ((`temp_count`.`type` = 2) and (`temp_count`.`answer` = 2))) then `temp_count`.`result_count` end)),0) AS `yellow_count`,ifnull(sum((case when (((`temp_count`.`type` = 1) and (`temp_count`.`answer` = 4)) or ((`temp_count`.`type` = 2) and (`temp_count`.`answer` = 1))) then `temp_count`.`result_count` end)),0) AS `green_count` from (select `ttrf`.`tester_id` AS `tester_id`,`ttrf`.`answer` AS `answer`,`tqf`.`type` AS `type`,count(`ttrf`.`id`) AS `result_count` from (`tbl_test_result_fpa` `ttrf` left join `tbl_question_fpa` `tqf` on((`ttrf`.`question_id` = `tqf`.`id`))) group by `tqf`.`type`,`ttrf`.`tester_id`,`ttrf`.`answer`) `temp_count` group by `temp_count`.`tester_id`) `xxx` left join `tbl_tester_fpa` `ttf` on((`xxx`.`tester_id` = `ttf`.`id`)))) `yyy` left join `tbl_test_plan_fpa` `ttpf` on((`yyy`.`test_plan_id` = `ttpf`.`id`)));

-- ----------------------------
-- View structure for view_test_result_mht
-- ----------------------------
DROP VIEW IF EXISTS `view_test_result_mht`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_result_mht` AS select `xxx`.`tester_id` AS `tester_id`,`xxx`.`effect` AS `effect`,`xxx`.`learn_anxiety` AS `learn_anxiety`,`xxx`.`person` AS `person`,`xxx`.`lonely` AS `lonely`,`xxx`.`blame` AS `blame`,`xxx`.`allergy` AS `allergy`,`xxx`.`body` AS `body`,`xxx`.`terror` AS `terror`,`xxx`.`impulse` AS `impulse`,`xxx`.`allScore` AS `allScore`,`tt`.`phone` AS `phone`,`tt`.`name` AS `name`,`tt`.`create_time` AS `create_time`,`tt`.`test_plan_id` AS `test_plan_id`,`tt`.`status` AS `status` from ((select `temp_count`.`tester_id` AS `tester_id`,ifnull(sum((case when ((`temp_count`.`type` = 7) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `effect`,ifnull(sum((case when ((`temp_count`.`type` = 8) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `learn_anxiety`,ifnull(sum((case when ((`temp_count`.`type` = 9) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `person`,ifnull(sum((case when ((`temp_count`.`type` = 10) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `lonely`,ifnull(sum((case when ((`temp_count`.`type` = 11) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `blame`,ifnull(sum((case when ((`temp_count`.`type` = 12) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `allergy`,ifnull(sum((case when ((`temp_count`.`type` = 13) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `body`,ifnull(sum((case when ((`temp_count`.`type` = 14) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `terror`,ifnull(sum((case when ((`temp_count`.`type` = 15) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `impulse`,ifnull(sum((case when ((`temp_count`.`type` > 7) and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `allScore` from (select `tq`.`type` AS `type`,`ttr`.`tester_id` AS `tester_id`,`ttr`.`answer` AS `answer`,count(`ttr`.`id`) AS `result_count` from (`tbl_test_result_mht` `ttr` left join `tbl_question_mht` `tq` on((`ttr`.`question_id` = `tq`.`id`))) group by `tq`.`type`,`ttr`.`tester_id`,`ttr`.`answer`) `temp_count` group by `temp_count`.`tester_id`) `xxx` left join `tbl_tester_mht` `tt` on((`xxx`.`tester_id` = `tt`.`id`)));

-- ----------------------------
-- View structure for view_test_result_sas
-- ----------------------------
DROP VIEW IF EXISTS `view_test_result_sas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_result_sas` AS select `usertest`.`id` AS `id`,`usertest`.`name` AS `name`,`usertest`.`phone` AS `phone`,`usertest`.`create_time` AS `create_time`,`xxx`.`forward` AS `forward`,`xxx`.`inversion` AS `inversion`,`usertest`.`test_plan_id` AS `test_plan_id` from ((select `aaa`.`tester_id` AS `tester_id`,sum((((`aaa`.`Forward_countA` + (`aaa`.`Forward_countB` * 2)) + (`aaa`.`Forward_countC` * 3)) + (`aaa`.`Forward_countD` * 4))) AS `forward`,sum(((((`aaa`.`inversion_countA` * 4) + (`aaa`.`inversion_countB` * 3)) + (`aaa`.`inversion_countC` * 2)) + `aaa`.`inversion_countD`)) AS `inversion` from (select `temp_count`.`tester_id` AS `tester_id`,ifnull(sum((case when ((`temp_count`.`type` = '3') and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `Forward_countA`,ifnull(sum((case when ((`temp_count`.`type` = '3') and (`temp_count`.`answer` = '2')) then `temp_count`.`result_count` end)),0) AS `Forward_countB`,ifnull(sum((case when ((`temp_count`.`type` = '3') and (`temp_count`.`answer` = '3')) then `temp_count`.`result_count` end)),0) AS `Forward_countC`,ifnull(sum((case when ((`temp_count`.`type` = '3') and (`temp_count`.`answer` = '4')) then `temp_count`.`result_count` end)),0) AS `Forward_countD`,ifnull(sum((case when ((`temp_count`.`type` = '4') and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `inversion_countA`,ifnull(sum((case when ((`temp_count`.`type` = '4') and (`temp_count`.`answer` = '2')) then `temp_count`.`result_count` end)),0) AS `inversion_countB`,ifnull(sum((case when ((`temp_count`.`type` = '4') and (`temp_count`.`answer` = '3')) then `temp_count`.`result_count` end)),0) AS `inversion_countC`,ifnull(sum((case when ((`temp_count`.`type` = '4') and (`temp_count`.`answer` = '4')) then `temp_count`.`result_count` end)),0) AS `inversion_countD` from (select `sds`.`type` AS `type`,`ansds`.`tester_id` AS `tester_id`,`ansds`.`answer` AS `answer`,count(`ansds`.`id`) AS `result_count` from (`tbl_test_result_sas` `ansds` left join `tbl_question_sas` `sds` on((`ansds`.`question_id` = `sds`.`id`))) group by `sds`.`type`,`ansds`.`tester_id`,`ansds`.`answer`) `temp_count` group by `temp_count`.`tester_id`) `aaa` group by `aaa`.`tester_id`) `xxx` left join `tbl_tester_sas` `usertest` on((`xxx`.`tester_id` = `usertest`.`id`)));

-- ----------------------------
-- View structure for view_test_result_scl
-- ----------------------------
DROP VIEW IF EXISTS `view_test_result_scl`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_result_scl` AS select `xxx`.`tester_id` AS `tester_id`,`xxx`.`body` AS `body`,`xxx`.`force` AS `force`,`xxx`.`interpersonal` AS `interpersonal`,`xxx`.`depressed` AS `depressed`,`xxx`.`anxious` AS `anxious`,`xxx`.`hostility` AS `hostility`,`xxx`.`terror` AS `terror`,`xxx`.`paranoia` AS `paranoia`,`xxx`.`psychotic` AS `psychotic`,`xxx`.`sleep_diet` AS `sleep_diet`,`tt`.`phone` AS `phone`,`tt`.`name` AS `name`,`tt`.`create_time` AS `create_time`,`tt`.`test_plan_id` AS `test_plan_id` from ((select `temp_count`.`tester_id` AS `tester_id`,ifnull(sum((case when (`temp_count`.`type` = 16) then (`temp_count`.`result_count` / 12) end)),0) AS `body`,ifnull(sum((case when (`temp_count`.`type` = 17) then (`temp_count`.`result_count` / 10) end)),0) AS `force`,ifnull(sum((case when (`temp_count`.`type` = 18) then (`temp_count`.`result_count` / 9) end)),0) AS `interpersonal`,ifnull(sum((case when (`temp_count`.`type` = 19) then (`temp_count`.`result_count` / 13) end)),0) AS `depressed`,ifnull(sum((case when (`temp_count`.`type` = 20) then (`temp_count`.`result_count` / 10) end)),0) AS `anxious`,ifnull(sum((case when (`temp_count`.`type` = 21) then (`temp_count`.`result_count` / 6) end)),0) AS `hostility`,ifnull(sum((case when (`temp_count`.`type` = 22) then (`temp_count`.`result_count` / 7) end)),0) AS `terror`,ifnull(sum((case when (`temp_count`.`type` = 23) then (`temp_count`.`result_count` / 9) end)),0) AS `paranoia`,ifnull(sum((case when (`temp_count`.`type` = 24) then (`temp_count`.`result_count` / 10) end)),0) AS `psychotic`,ifnull(sum((case when (`temp_count`.`type` = 25) then (`temp_count`.`result_count` / 7) end)),0) AS `sleep_diet` from (select `tq`.`type` AS `type`,`ttr`.`tester_id` AS `tester_id`,sum(`ttr`.`answer`) AS `result_count` from (`tbl_test_result_scl` `ttr` left join `tbl_question_scl` `tq` on((`ttr`.`question_id` = `tq`.`id`))) group by `tq`.`type`,`ttr`.`tester_id`,`ttr`.`answer`) `temp_count` group by `temp_count`.`tester_id`) `xxx` left join `tbl_tester_scl` `tt` on((`xxx`.`tester_id` = `tt`.`id`)));

-- ----------------------------
-- View structure for view_test_result_sds
-- ----------------------------
DROP VIEW IF EXISTS `view_test_result_sds`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_result_sds` AS select `usertest`.`id` AS `id`,`usertest`.`name` AS `name`,`usertest`.`phone` AS `phone`,`usertest`.`create_time` AS `create_time`,`xxx`.`forward` AS `forward`,`xxx`.`inversion` AS `inversion`,`usertest`.`test_plan_id` AS `test_plan_id` from ((select `aaa`.`tester_id` AS `tester_id`,sum((((`aaa`.`Forward_countA` + (`aaa`.`Forward_countB` * 2)) + (`aaa`.`Forward_countC` * 3)) + (`aaa`.`Forward_countD` * 4))) AS `forward`,sum(((((`aaa`.`inversion_countA` * 4) + (`aaa`.`inversion_countB` * 3)) + (`aaa`.`inversion_countC` * 2)) + `aaa`.`inversion_countD`)) AS `inversion` from (select `temp_count`.`tester_id` AS `tester_id`,ifnull(sum((case when ((`temp_count`.`type` = '5') and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `Forward_countA`,ifnull(sum((case when ((`temp_count`.`type` = '5') and (`temp_count`.`answer` = '2')) then `temp_count`.`result_count` end)),0) AS `Forward_countB`,ifnull(sum((case when ((`temp_count`.`type` = '5') and (`temp_count`.`answer` = '3')) then `temp_count`.`result_count` end)),0) AS `Forward_countC`,ifnull(sum((case when ((`temp_count`.`type` = '5') and (`temp_count`.`answer` = '4')) then `temp_count`.`result_count` end)),0) AS `Forward_countD`,ifnull(sum((case when ((`temp_count`.`type` = '6') and (`temp_count`.`answer` = '1')) then `temp_count`.`result_count` end)),0) AS `inversion_countA`,ifnull(sum((case when ((`temp_count`.`type` = '6') and (`temp_count`.`answer` = '2')) then `temp_count`.`result_count` end)),0) AS `inversion_countB`,ifnull(sum((case when ((`temp_count`.`type` = '6') and (`temp_count`.`answer` = '3')) then `temp_count`.`result_count` end)),0) AS `inversion_countC`,ifnull(sum((case when ((`temp_count`.`type` = '6') and (`temp_count`.`answer` = '4')) then `temp_count`.`result_count` end)),0) AS `inversion_countD` from (select `sds`.`type` AS `type`,`ansds`.`tester_id` AS `tester_id`,`ansds`.`answer` AS `answer`,count(`ansds`.`id`) AS `result_count` from (`tbl_test_result_sds` `ansds` left join `tbl_question_sds` `sds` on((`ansds`.`question_id` = `sds`.`id`))) group by `sds`.`type`,`ansds`.`tester_id`,`ansds`.`answer`) `temp_count` group by `temp_count`.`tester_id`) `aaa` group by `aaa`.`tester_id`) `xxx` left join `tbl_tester_sds` `usertest` on((`xxx`.`tester_id` = `usertest`.`id`)));

SET FOREIGN_KEY_CHECKS = 1;
