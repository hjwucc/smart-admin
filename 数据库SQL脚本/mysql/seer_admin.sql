/*
 Navicat Premium Data Transfer

 Source Server         : 172.20.186.7-13306-nfc
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : 172.20.186.7:13306
 Source Schema         : seer_admin

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 25/09/2025 15:50:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_change_log
-- ----------------------------
DROP TABLE IF EXISTS `t_change_log`;
CREATE TABLE `t_change_log`  (
  `change_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '更新日志id',
  `update_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '版本',
  `type` int(0) NOT NULL COMMENT '更新类型:[1:特大版本功能更新;2:功能更新;3:bug修复]',
  `publish_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布人',
  `public_date` date NOT NULL COMMENT '发布日期',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新内容',
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '跳转链接',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`change_log_id`) USING BTREE,
  UNIQUE INDEX `version_unique`(`update_version`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统更新日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_change_log
-- ----------------------------
INSERT INTO `t_change_log` VALUES (2, 'v1.1.0', 2, '卓大', '2020-05-09', 'SmartAdmin中后台系统 v1.1.0 版本（20200422）正式更新上线，更新内容如下：\n\n1.【新增】增加员工姓名查询\n\n2.【新增】增加文件预览组件\n\n3.【新增】新增四级菜单\n', 'http://smartadmin.1024lab.net/views/1.x/base/About.html', '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (8, 'v1.0.0', 1, '卓大', '2019-11-01', 'SmartAdmin中后台系统 v1.0.0 版本（20191101）正式更新上线，更新内容如下：\n\n1.【新增】人员管理\n\n2.【新增】系统设置\n\n3.【新增】心跳服务\n\n4.【新增】动态加载\n\n5.【新增】缓存策略\n\n6.【新增】定时任务', 'http://smartadmin.1024lab.net/views/1.x/base/About.html', '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (9, 'v1.2.0', 2, '卓大', '2020-05-23', 'SmartAdmin中后台系统 v1.2.0 版本（20200515）正式更新上线，更新内容如下：\n\n1.【新增】增加数据权限\n\n2.【新增】帮助文档', NULL, '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (10, 'v1.2.1', 3, '卓大', '2020-05-24', 'SmartAdmin中后台系统 v1.2.1 版本（20200524）正式更新上线，更新内容如下：\n\n1.【修复】四级菜单权限bug\n\n2.【修复】缓存keepalive的Bug\n\n', NULL, '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (11, 'v1.3.0', 2, '卓大', '2020-06-01', 'SmartAdmin中后台系统 v1.3.0 版本（20200601）正式更新上线，更新内容如下：\n\n1.【新增】工作台看板功能\n\n2.【新增】天气预报功能\n\n3.【新增】记录上次登录IP功能', NULL, '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (12, 'v1.4.0', 2, '卓大', '2020-06-06', 'SmartAdmin中后台系统 v1.4.0 版本（20200606）正式更新上线，更新内容如下：\n\n1.【新增】联系客服功能\n\n2.【新增】意见反馈功能', NULL, '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (13, 'v1.5.0', 2, '卓大', '2020-06-14', 'SmartAdmin中后台系统 v1.5.0 版本（20200614）正式更新上线，更新内容如下：\n\n1.【新增】OA系统\n\n2.【新增】通知公告', NULL, '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (14, 'v1.6.0', 2, '卓大', '2020-06-17', 'SmartAdmin中后台系统 v1.6.0 版本（20200617）正式更新上线，更新内容如下：\n\n1.【新增】代码生成\n\n2.【新增】通知公告', NULL, '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (15, 'v2.0.0', 1, '卓大', '2022-10-22', 'SmartAdmin中后台系统 v2.0.0 版本（20191101）正式更新上线，更新内容如下：\n\n1.【新增】人员管理\n\n2.【新增】系统设置\n\n3.【新增】心跳服务\n\n4.【新增】动态加载\n\n5.【新增】缓存策略\n\n6.【新增】定时任务', 'http://smartadmin.1024lab.net/views/1.x/base/About.html', '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (16, 'v1.7.0', 2, '卓大', '2022-10-22', 'SmartAdmin中后台系统 v1.7.0 版本（20200624）正式更新上线，更新内容如下：\n\n1.【新增】商品管理\n\n2.【新增】商品分类', NULL, '2022-10-04 21:33:50', '2022-10-04 21:33:50');
INSERT INTO `t_change_log` VALUES (18, 'v3.0.0', 1, '卓大', '2024-01-01', 'SmartAdmin中后台系统 v3.0.0 版本（20240101）正式更新上线，更新内容如下：\n\n\n1、【新增】权限从SpringSecurity 转成 Sa-Token\n\n2、【新增】增加接口 加密、解密功能\n\n3、【新增】增加网络安全相关功能：登录限制、密码复杂度、最大在线时长等\n\n4、【新增】ant desgin vue 为 4.x 最新版本\n\n5、【新增】升级 vite5\n\n6、【新增】swagger增加knife4j接口文档\n\n7、【优化】后端sa-common 改名为 sa-base\n\n8、【优化】优化官网文档说明\n', NULL, '2022-10-04 21:33:50', '2022-10-04 21:33:50');

-- ----------------------------
-- Table structure for t_code_generator_config
-- ----------------------------
DROP TABLE IF EXISTS `t_code_generator_config`;
CREATE TABLE `t_code_generator_config`  (
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表名',
  `basic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '基础命名信息',
  `fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '字段列表',
  `insert_and_update` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '新建、修改',
  `delete_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '删除',
  `query_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '查询',
  `table_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '列表',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '详情',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`table_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成器的每个表的配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_code_generator_config
-- ----------------------------
INSERT INTO `t_code_generator_config` VALUES ('t_device', '{\"backendAuthor\":\"whj\",\"backendDate\":1758337815000,\"copyright\":\"seer\",\"description\":\"设备表\",\"frontAuthor\":\"whj\",\"frontDate\":1758337815000,\"javaPackageName\":\"com.seerbigdata.sa.admin.module.business.device\",\"moduleName\":\"Device\"}', '[{\"autoIncreaseFlag\":true,\"columnComment\":\"主键\",\"columnName\":\"device_id\",\"fieldName\":\"deviceId\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"主键\",\"primaryKeyFlag\":true},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备序号\",\"columnName\":\"sn\",\"fieldName\":\"sn\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"设备序号\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备名称\",\"columnName\":\"name\",\"fieldName\":\"name\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"设备名称\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备类型\",\"columnName\":\"type\",\"fieldName\":\"type\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"设备类型\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备地址\",\"columnName\":\"address\",\"fieldName\":\"address\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"设备地址\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备状态；0-已上锁；1-未上锁；2-已报损\",\"columnName\":\"status\",\"fieldName\":\"status\",\"javaType\":\"Integer\",\"jsType\":\"Number\",\"label\":\"设备状态；0-已上锁；1-未上锁；2-已报损\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"添加时间\",\"columnName\":\"add_time\",\"fieldName\":\"addTime\",\"javaType\":\"LocalDateTime\",\"jsType\":\"Date\",\"label\":\"添加时间\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"备注\",\"columnName\":\"remark\",\"fieldName\":\"remark\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"备注\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"删除标志\",\"columnName\":\"deleted_flag\",\"fieldName\":\"deletedFlag\",\"javaType\":\"Integer\",\"jsType\":\"Number\",\"label\":\"删除标志\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"更新时间\",\"columnName\":\"update_time\",\"fieldName\":\"updateTime\",\"javaType\":\"LocalDateTime\",\"jsType\":\"Date\",\"label\":\"更新时间\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"创建时间\",\"columnName\":\"create_time\",\"fieldName\":\"createTime\",\"javaType\":\"LocalDateTime\",\"jsType\":\"Date\",\"label\":\"创建时间\",\"primaryKeyFlag\":false}]', '{\"countPerLine\":1,\"fieldList\":[{\"columnName\":\"device_id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"sn\",\"frontComponent\":\"Input\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"name\",\"frontComponent\":\"Input\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"type\",\"frontComponent\":\"Input\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"address\",\"frontComponent\":\"Input\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"status\",\"frontComponent\":\"InputNumber\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"add_time\",\"frontComponent\":\"DateTime\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"remark\",\"frontComponent\":\"Input\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"deleted_flag\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"update_time\",\"frontComponent\":\"DateTime\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"create_time\",\"frontComponent\":\"DateTime\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false}],\"isSupportInsertAndUpdate\":true,\"pageType\":\"modal\",\"width\":\"2\"}', '{\"deleteEnum\":\"SingleAndBatch\",\"isPhysicallyDeleted\":false,\"isSupportDelete\":true}', '[{\"columnNameList\":[\"name\"],\"fieldName\":\"deviceName\",\"label\":\"设备名称\",\"queryTypeEnum\":\"Like\",\"width\":\"200px\"},{\"columnNameList\":[\"sn\"],\"fieldName\":\"deviceSn\",\"label\":\"设备序号\",\"queryTypeEnum\":\"Like\",\"width\":\"200px\"},{\"columnNameList\":[\"type\"],\"fieldName\":\"deviceType\",\"label\":\"设备类型\",\"queryTypeEnum\":\"Equal\",\"width\":\"200px\"},{\"columnNameList\":[\"address\"],\"fieldName\":\"deviceAddress\",\"label\":\"设备地址\",\"queryTypeEnum\":\"Like\",\"width\":\"200px\"},{\"columnNameList\":[\"status\"],\"fieldName\":\"deviceStatus\",\"label\":\"设备状态；0-已上锁；1-未上锁；2-已报损\",\"queryTypeEnum\":\"Equal\",\"width\":\"200px\"},{\"columnNameList\":[\"add_time\"],\"fieldName\":\"addTime\",\"label\":\"添加时间\",\"queryTypeEnum\":\"DateRange\",\"width\":\"200px\"}]', '[{\"columnName\":\"device_id\",\"ellipsisFlag\":true,\"fieldName\":\"deviceId\",\"label\":\"主键\",\"showFlag\":true},{\"columnName\":\"sn\",\"ellipsisFlag\":true,\"fieldName\":\"sn\",\"label\":\"设备序号\",\"showFlag\":true},{\"columnName\":\"name\",\"ellipsisFlag\":true,\"fieldName\":\"name\",\"label\":\"设备名称\",\"showFlag\":true},{\"columnName\":\"type\",\"ellipsisFlag\":true,\"fieldName\":\"type\",\"label\":\"设备类型\",\"showFlag\":true},{\"columnName\":\"address\",\"ellipsisFlag\":true,\"fieldName\":\"address\",\"label\":\"设备地址\",\"showFlag\":true},{\"columnName\":\"status\",\"ellipsisFlag\":true,\"fieldName\":\"status\",\"label\":\"设备状态；0-已上锁；1-未上锁；2-已报损\",\"showFlag\":true},{\"columnName\":\"add_time\",\"ellipsisFlag\":true,\"fieldName\":\"addTime\",\"label\":\"添加时间\",\"showFlag\":true},{\"columnName\":\"remark\",\"ellipsisFlag\":true,\"fieldName\":\"remark\",\"label\":\"备注\",\"showFlag\":true},{\"columnName\":\"deleted_flag\",\"ellipsisFlag\":true,\"fieldName\":\"deletedFlag\",\"label\":\"删除标志\",\"showFlag\":true},{\"columnName\":\"update_time\",\"ellipsisFlag\":true,\"fieldName\":\"updateTime\",\"label\":\"更新时间\",\"showFlag\":true},{\"columnName\":\"create_time\",\"ellipsisFlag\":true,\"fieldName\":\"createTime\",\"label\":\"创建时间\",\"showFlag\":true}]', NULL, '2025-09-20 11:17:16', '2025-09-20 11:17:16');
INSERT INTO `t_code_generator_config` VALUES ('t_device_employee', '{\"backendAuthor\":\"whj\",\"backendDate\":1758347639000,\"copyright\":\"seeer\",\"description\":\"设备-用户\\r\\n\",\"frontAuthor\":\"whj\",\"frontDate\":1758347639000,\"javaPackageName\":\"com.seerbigdata.sa.admin.module.business.device\",\"moduleName\":\"DeviceEmployee\"}', '[{\"autoIncreaseFlag\":true,\"columnComment\":\"主键id\",\"columnName\":\"id\",\"fieldName\":\"id\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"主键id\",\"primaryKeyFlag\":true},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备id\",\"columnName\":\"device_id\",\"fieldName\":\"deviceId\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"设备id\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"用户id\",\"columnName\":\"employee_id\",\"fieldName\":\"employeeId\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"用户id\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"更新时间\",\"columnName\":\"update_time\",\"fieldName\":\"updateTime\",\"javaType\":\"LocalDateTime\",\"jsType\":\"Date\",\"label\":\"更新时间\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"创建时间\",\"columnName\":\"create_time\",\"fieldName\":\"createTime\",\"javaType\":\"LocalDateTime\",\"jsType\":\"Date\",\"label\":\"创建时间\",\"primaryKeyFlag\":false}]', '{\"countPerLine\":1,\"fieldList\":[{\"columnName\":\"id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"device_id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"employee_id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"update_time\",\"frontComponent\":\"DateTime\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"create_time\",\"frontComponent\":\"DateTime\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false}],\"isSupportInsertAndUpdate\":true,\"pageType\":\"modal\",\"width\":\" \"}', '{\"deleteEnum\":\"SingleAndBatch\",\"isPhysicallyDeleted\":true,\"isSupportDelete\":true}', '[]', '[{\"columnName\":\"id\",\"ellipsisFlag\":true,\"fieldName\":\"id\",\"label\":\"主键id\",\"showFlag\":true},{\"columnName\":\"device_id\",\"ellipsisFlag\":true,\"fieldName\":\"deviceId\",\"label\":\"设备id\",\"showFlag\":true},{\"columnName\":\"employee_id\",\"ellipsisFlag\":true,\"fieldName\":\"employeeId\",\"label\":\"用户id\",\"showFlag\":true},{\"columnName\":\"update_time\",\"ellipsisFlag\":true,\"fieldName\":\"updateTime\",\"label\":\"更新时间\",\"showFlag\":true},{\"columnName\":\"create_time\",\"ellipsisFlag\":true,\"fieldName\":\"createTime\",\"label\":\"创建时间\",\"showFlag\":true}]', NULL, '2025-09-20 13:54:42', '2025-09-20 13:54:42');
INSERT INTO `t_code_generator_config` VALUES ('t_device_log', '{\"backendAuthor\":\"whj\",\"backendDate\":1758355018000,\"copyright\":\"seer\",\"description\":\"设备日志表\",\"frontAuthor\":\"whj\",\"frontDate\":1758355018000,\"javaPackageName\":\"com.seerbigdata.sa.admin.module.business.device\",\"moduleName\":\"DeviceLog\"}', '[{\"autoIncreaseFlag\":true,\"columnComment\":\"主键\",\"columnName\":\"device_log_id\",\"fieldName\":\"deviceLogId\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"主键\",\"primaryKeyFlag\":true},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备ID\",\"columnName\":\"device_id\",\"fieldName\":\"deviceId\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"设备ID\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备序号\",\"columnName\":\"device_sn\",\"fieldName\":\"deviceSn\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"设备序号\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备地址\",\"columnName\":\"device_address\",\"fieldName\":\"deviceAddress\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"设备地址\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备名称\",\"columnName\":\"device_name\",\"fieldName\":\"deviceName\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"设备名称\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"用户ID\",\"columnName\":\"employee_id\",\"fieldName\":\"employeeId\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"用户ID\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"日志类型；LOCK-上锁；UNLOCK-解锁；REPORT_DAMAGE -报损\",\"columnName\":\"type\",\"fieldName\":\"type\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"日志类型；LOCK-上锁；UNLOCK-解锁；REPORT_DAMAGE -报损\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"成功标志：0-失败；1-成功；2-待处理；3-已处理\",\"columnName\":\"result_flag\",\"fieldName\":\"resultFlag\",\"javaType\":\"Integer\",\"jsType\":\"Number\",\"label\":\"成功标志：0-失败；1-成功；2-待处理；3-已处理\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"备注\",\"columnName\":\"remark\",\"fieldName\":\"remark\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"备注\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"删除标志\",\"columnName\":\"deleted_flag\",\"fieldName\":\"deletedFlag\",\"javaType\":\"Integer\",\"jsType\":\"Number\",\"label\":\"删除标志\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"更新时间\",\"columnName\":\"update_time\",\"fieldName\":\"updateTime\",\"javaType\":\"LocalDateTime\",\"jsType\":\"Date\",\"label\":\"更新时间\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"创建时间\",\"columnName\":\"create_time\",\"fieldName\":\"createTime\",\"javaType\":\"LocalDateTime\",\"jsType\":\"Date\",\"label\":\"创建时间\",\"primaryKeyFlag\":false}]', '{\"countPerLine\":1,\"fieldList\":[{\"columnName\":\"device_log_id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"device_id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"device_sn\",\"frontComponent\":\"Input\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"device_address\",\"frontComponent\":\"Input\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"device_name\",\"frontComponent\":\"Input\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"employee_id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"type\",\"frontComponent\":\"Input\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"result_flag\",\"frontComponent\":\"InputNumber\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"remark\",\"frontComponent\":\"Input\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"deleted_flag\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"update_time\",\"frontComponent\":\"DateTime\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"create_time\",\"frontComponent\":\"DateTime\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false}],\"isSupportInsertAndUpdate\":true,\"pageType\":\"modal\",\"width\":\" \"}', '{\"deleteEnum\":\"SingleAndBatch\",\"isPhysicallyDeleted\":false,\"isSupportDelete\":true}', '[]', '[{\"columnName\":\"device_log_id\",\"ellipsisFlag\":true,\"fieldName\":\"deviceLogId\",\"label\":\"主键\",\"showFlag\":true},{\"columnName\":\"device_id\",\"ellipsisFlag\":true,\"fieldName\":\"deviceId\",\"label\":\"设备ID\",\"showFlag\":true},{\"columnName\":\"device_sn\",\"ellipsisFlag\":true,\"fieldName\":\"deviceSn\",\"label\":\"设备序号\",\"showFlag\":true},{\"columnName\":\"device_address\",\"ellipsisFlag\":true,\"fieldName\":\"deviceAddress\",\"label\":\"设备地址\",\"showFlag\":true},{\"columnName\":\"device_name\",\"ellipsisFlag\":true,\"fieldName\":\"deviceName\",\"label\":\"设备名称\",\"showFlag\":true},{\"columnName\":\"employee_id\",\"ellipsisFlag\":true,\"fieldName\":\"employeeId\",\"label\":\"用户ID\",\"showFlag\":true},{\"columnName\":\"type\",\"ellipsisFlag\":true,\"fieldName\":\"type\",\"label\":\"日志类型；LOCK-上锁；UNLOCK-解锁；REPORT_DAMAGE -报损\",\"showFlag\":true},{\"columnName\":\"result_flag\",\"ellipsisFlag\":true,\"fieldName\":\"resultFlag\",\"label\":\"成功标志：0-失败；1-成功；2-待处理；3-已处理\",\"showFlag\":true},{\"columnName\":\"remark\",\"ellipsisFlag\":true,\"fieldName\":\"remark\",\"label\":\"备注\",\"showFlag\":true},{\"columnName\":\"deleted_flag\",\"ellipsisFlag\":true,\"fieldName\":\"deletedFlag\",\"label\":\"删除标志\",\"showFlag\":true},{\"columnName\":\"update_time\",\"ellipsisFlag\":true,\"fieldName\":\"updateTime\",\"label\":\"更新时间\",\"showFlag\":true},{\"columnName\":\"create_time\",\"ellipsisFlag\":true,\"fieldName\":\"createTime\",\"label\":\"创建时间\",\"showFlag\":true}]', NULL, '2025-09-20 15:58:00', '2025-09-20 15:58:00');
INSERT INTO `t_code_generator_config` VALUES ('t_device_report_damage', '{\"backendAuthor\":\"whj\",\"backendDate\":1758352172000,\"copyright\":\"seer\",\"description\":\"设备上报故障表\",\"frontAuthor\":\"whj\",\"frontDate\":1758352172000,\"javaPackageName\":\"com.seerbigdata.sa.admin.module.business.device\",\"moduleName\":\"DeviceReportDamage\"}', '[{\"autoIncreaseFlag\":true,\"columnComment\":\"主键\",\"columnName\":\"id\",\"fieldName\":\"id\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"主键\",\"primaryKeyFlag\":true},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备ID\",\"columnName\":\"device_id\",\"fieldName\":\"deviceId\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"设备ID\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"设备序号\",\"columnName\":\"device_sn\",\"fieldName\":\"deviceSn\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"设备序号\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"用户ID\",\"columnName\":\"employee_id\",\"fieldName\":\"employeeId\",\"javaType\":\"Long\",\"jsType\":\"Number\",\"label\":\"用户ID\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"故障类型；UNABLE_TO_UNLOCK-无法开锁；UNABLE_TO_LOCK-无法关锁\",\"columnName\":\"type\",\"fieldName\":\"type\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"故障类型；UNABLE_TO_UNLOCK-无法开锁；UNABLE_TO_LOCK-无法关锁\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"故障等级；HIGH-高；MIDDLE-中；LOW-低\",\"columnName\":\"level\",\"fieldName\":\"level\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"故障等级；HIGH-高；MIDDLE-中；LOW-低\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"描述\",\"columnName\":\"description\",\"fieldName\":\"description\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"描述\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"备注\",\"columnName\":\"remark\",\"fieldName\":\"remark\",\"javaType\":\"String\",\"jsType\":\"String\",\"label\":\"备注\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"删除标志\",\"columnName\":\"deleted_flag\",\"fieldName\":\"deletedFlag\",\"javaType\":\"Integer\",\"jsType\":\"Number\",\"label\":\"删除标志\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"更新时间\",\"columnName\":\"update_time\",\"fieldName\":\"updateTime\",\"javaType\":\"LocalDateTime\",\"jsType\":\"Date\",\"label\":\"更新时间\",\"primaryKeyFlag\":false},{\"autoIncreaseFlag\":false,\"columnComment\":\"创建时间\",\"columnName\":\"create_time\",\"fieldName\":\"createTime\",\"javaType\":\"LocalDateTime\",\"jsType\":\"Date\",\"label\":\"创建时间\",\"primaryKeyFlag\":false}]', '{\"countPerLine\":1,\"fieldList\":[{\"columnName\":\"id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"device_id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"device_sn\",\"frontComponent\":\"Input\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"employee_id\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"type\",\"frontComponent\":\"Input\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"level\",\"frontComponent\":\"Input\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"description\",\"frontComponent\":\"Input\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"remark\",\"frontComponent\":\"Input\",\"insertFlag\":false,\"requiredFlag\":false,\"updateFlag\":false},{\"columnName\":\"deleted_flag\",\"frontComponent\":\"InputNumber\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"update_time\",\"frontComponent\":\"DateTime\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false},{\"columnName\":\"create_time\",\"frontComponent\":\"DateTime\",\"insertFlag\":true,\"requiredFlag\":true,\"updateFlag\":false}],\"isSupportInsertAndUpdate\":true,\"pageType\":\"modal\",\"width\":\" \"}', '{\"deleteEnum\":\"SingleAndBatch\",\"isPhysicallyDeleted\":false,\"isSupportDelete\":true}', '[]', '[{\"columnName\":\"id\",\"ellipsisFlag\":true,\"fieldName\":\"id\",\"label\":\"主键\",\"showFlag\":true},{\"columnName\":\"device_id\",\"ellipsisFlag\":true,\"fieldName\":\"deviceId\",\"label\":\"设备ID\",\"showFlag\":true},{\"columnName\":\"device_sn\",\"ellipsisFlag\":true,\"fieldName\":\"deviceSn\",\"label\":\"设备序号\",\"showFlag\":true},{\"columnName\":\"employee_id\",\"ellipsisFlag\":true,\"fieldName\":\"employeeId\",\"label\":\"用户ID\",\"showFlag\":true},{\"columnName\":\"type\",\"ellipsisFlag\":true,\"fieldName\":\"type\",\"label\":\"故障类型；UNABLE_TO_UNLOCK-无法开锁；UNABLE_TO_LOCK-无法关锁\",\"showFlag\":true},{\"columnName\":\"level\",\"ellipsisFlag\":true,\"fieldName\":\"level\",\"label\":\"故障等级；HIGH-高；MIDDLE-中；LOW-低\",\"showFlag\":true},{\"columnName\":\"description\",\"ellipsisFlag\":true,\"fieldName\":\"description\",\"label\":\"描述\",\"showFlag\":true},{\"columnName\":\"remark\",\"ellipsisFlag\":true,\"fieldName\":\"remark\",\"label\":\"备注\",\"showFlag\":true},{\"columnName\":\"deleted_flag\",\"ellipsisFlag\":true,\"fieldName\":\"deletedFlag\",\"label\":\"删除标志\",\"showFlag\":true},{\"columnName\":\"update_time\",\"ellipsisFlag\":true,\"fieldName\":\"updateTime\",\"label\":\"更新时间\",\"showFlag\":true},{\"columnName\":\"create_time\",\"ellipsisFlag\":true,\"fieldName\":\"createTime\",\"label\":\"创建时间\",\"showFlag\":true}]', NULL, '2025-09-20 15:10:09', '2025-09-20 15:10:09');

-- ----------------------------
-- Table structure for t_config
-- ----------------------------
DROP TABLE IF EXISTS `t_config`;
CREATE TABLE `t_config`  (
  `config_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `config_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参数名字',
  `config_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参数key',
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '上次修改时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_config
-- ----------------------------
INSERT INTO `t_config` VALUES (1, '万能密码', 'super_password', '1024ok', '一路春光啊一路荆棘呀惊鸿一般短暂如夏花一样绚烂这是一个不能停留太久的世界，一路春光啊一路荆棘呀惊鸿一般短暂如夏花一样绚烂这是一个不能停留太久的世界啊', '2024-09-03 21:27:03', '2021-12-16 23:32:46');
INSERT INTO `t_config` VALUES (2, '三级等保', 'level3_protect_config', '{\n	\"fileDetectFlag\":true,\n	\"loginActiveTimeoutMinutes\":30,\n	\"loginFailLockMinutes\":30,\n	\"loginFailMaxTimes\":3,\n	\"maxUploadFileSizeMb\":30,\n	\"passwordComplexityEnabled\":false,\n	\"regularChangePasswordMonths\":3,\n	\"regularChangePasswordNotAllowRepeatTimes\":3,\n	\"twoFactorLoginEnabled\":false\n}', 'SmartJob Sample2 update', '2025-09-20 10:08:15', '2024-08-13 11:44:49');

-- ----------------------------
-- Table structure for t_data_tracer
-- ----------------------------
DROP TABLE IF EXISTS `t_data_tracer`;
CREATE TABLE `t_data_tracer`  (
  `data_tracer_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `data_id` bigint(0) NOT NULL COMMENT '各种单据的id',
  `type` int(0) NOT NULL COMMENT '单据类型',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '操作内容',
  `diff_old` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '差异：旧的数据',
  `diff_new` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '差异：新的数据',
  `extra_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '额外信息',
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `user_type` int(0) NOT NULL COMMENT '用户类型：1 后管用户 ',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名称',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `ip_region` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip地区',
  `user_agent` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ua',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`data_tracer_id`) USING BTREE,
  INDEX `order_id_order_type`(`data_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '各种单据操作记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_data_tracer
-- ----------------------------
INSERT INTO `t_data_tracer` VALUES (35, 10, 1, '新增', NULL, NULL, NULL, 47, 1, '善逸', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', '2023-10-07 19:02:24', '2023-10-07 19:02:24');
INSERT INTO `t_data_tracer` VALUES (36, 11, 1, '新增', NULL, NULL, NULL, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-12-01 19:55:53', '2023-12-01 19:55:53');
INSERT INTO `t_data_tracer` VALUES (37, 12, 1, '新增', NULL, NULL, NULL, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-12-01 19:57:26', '2023-12-01 19:57:26');
INSERT INTO `t_data_tracer` VALUES (38, 11, 1, '', NULL, NULL, NULL, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-12-01 19:58:09', '2023-12-01 19:58:09');
INSERT INTO `t_data_tracer` VALUES (39, 2, 3, '修改企业信息', '统一社会信用代码:\"1024lab\"<br/>详细地址:\"1024大楼\"<br/>区县名称:\"洛龙区\"<br/>禁用状态:false<br/>类型:有限企业<br/>城市名称:\"洛阳市\"<br/>删除状态:false<br/>联系人:\"卓大\"<br/>省份名称:\"河南省\"<br/>企业logo:\"public/common/fb827d63dda74a60ab8b4f70cc7c7d0a_20221022145641_jpg\"<br/>联系人电话:\"18637925892\"<br/>企业名称:\"1024创新实验室\"<br/>邮箱:\"lab1024@163.com\"', '营业执照:\"public/common/59b1ca99b7fe45d78678e6295798a699_20231201200459.jpg\"<br/>统一社会信用代码:\"1024lab1\"<br/>详细地址:\"1024大楼\"<br/>区县名称:\"洛龙区\"<br/>禁用状态:false<br/>类型:外资企业<br/>城市名称:\"洛阳市\"<br/>删除状态:false<br/>联系人:\"卓大1\"<br/>省份名称:\"河南省\"<br/>企业logo:\"\"<br/>联系人电话:\"18637925892\"<br/>企业名称:\"1024创新实验室1\"<br/>邮箱:\"lab1024@163.com\"', NULL, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-12-01 20:05:05', '2023-12-01 20:05:05');
INSERT INTO `t_data_tracer` VALUES (40, 2, 3, '修改企业信息', '营业执照:\"public/common/59b1ca99b7fe45d78678e6295798a699_20231201200459.jpg\"<br/>统一社会信用代码:\"1024lab1\"<br/>详细地址:\"1024大楼\"<br/>区县名称:\"洛龙区\"<br/>禁用状态:false<br/>类型:外资企业<br/>城市名称:\"洛阳市\"<br/>删除状态:false<br/>联系人:\"卓大1\"<br/>省份名称:\"河南省\"<br/>企业logo:\"\"<br/>联系人电话:\"18637925892\"<br/>企业名称:\"1024创新实验室1\"<br/>邮箱:\"lab1024@163.com\"', '营业执照:\"public/common/59b1ca99b7fe45d78678e6295798a699_20231201200459.jpg\"<br/>统一社会信用代码:\"1024lab\"<br/>详细地址:\"1024大楼\"<br/>区县名称:\"洛龙区\"<br/>禁用状态:false<br/>类型:外资企业<br/>城市名称:\"洛阳市\"<br/>删除状态:false<br/>联系人:\"卓大\"<br/>省份名称:\"河南省\"<br/>企业logo:\"\"<br/>联系人电话:\"18637925892\"<br/>企业名称:\"1024创新实验室\"<br/>邮箱:\"lab1024@163.com\"', NULL, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-12-01 20:05:54', '2023-12-01 20:05:54');
INSERT INTO `t_data_tracer` VALUES (41, 2, 3, '更新银行:<br/>', NULL, NULL, NULL, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-12-01 20:09:17', '2023-12-01 20:09:17');
INSERT INTO `t_data_tracer` VALUES (42, 2, 3, '更新发票：<br/>删除状态:由【false】变更为【】', NULL, NULL, NULL, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-12-01 20:09:20', '2023-12-01 20:09:20');
INSERT INTO `t_data_tracer` VALUES (49, 1, 3, '修改企业信息', '营业执照:\"public/common/852b7e19bef94af39c1a6156edf47cfb_20221022170332_jpg\"<br/>统一社会信用代码:\"1024lab_block\"<br/>详细地址:\"区块链大楼\"<br/>区县名称:\"洛龙区\"<br/>禁用状态:false<br/>类型:有限企业<br/>城市名称:\"洛阳市\"<br/>删除状态:false<br/>联系人:\"开云\"<br/>省份名称:\"河南省\"<br/>企业logo:\"public/common/f4a76fa720814949a610f05f6f9545bf_20221022170256_jpg\"<br/>联系人电话:\"18637925892\"<br/>企业名称:\"1024创新区块链实验室\"', '营业执照:\"public/common/1d89055e5680426280446aff1e7e627c_20240306112451.jpeg\"<br/>统一社会信用代码:\"1024lab_block\"<br/>详细地址:\"区块链大楼\"<br/>区县名称:\"洛龙区\"<br/>禁用状态:false<br/>类型:有限企业<br/>城市名称:\"洛阳市\"<br/>删除状态:false<br/>联系人:\"开云\"<br/>省份名称:\"河南省\"<br/>企业logo:\"public/common/34f5ac0fc097402294aea75352c128f0_20240306112435.png\"<br/>联系人电话:\"18637925892\"<br/>企业名称:\"1024创新区块链实验室\"', NULL, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-06 11:24:55', '2024-03-06 11:24:55');
INSERT INTO `t_data_tracer` VALUES (99, 12, 1, '', NULL, NULL, NULL, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-09-03 21:06:32', '2024-09-03 21:06:32');

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `department_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门主键id',
  `department_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门名称',
  `manager_id` bigint(0) NULL DEFAULT NULL COMMENT '部门负责人id',
  `parent_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '部门的父级id',
  `sort` int(0) NOT NULL COMMENT '部门排序',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`department_id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES (1, '1024创新实验室', 1, 0, 1, '2022-10-19 20:17:09', '2022-10-19 20:17:09');
INSERT INTO `t_department` VALUES (2, '开发部', 44, 1, 1000, '2022-10-19 20:22:23', '2022-10-19 20:22:23');
INSERT INTO `t_department` VALUES (3, '产品部', 2, 1, 99, '2022-10-21 10:25:30', '2022-10-21 10:25:30');
INSERT INTO `t_department` VALUES (4, '销售部', 64, 1, 9, '2022-10-21 10:25:47', '2022-10-21 10:25:47');
INSERT INTO `t_department` VALUES (5, '测试部', 48, 1, 0, '2022-11-05 10:54:18', '2022-11-05 10:54:18');
INSERT INTO `t_department` VALUES (7, '直播组', 44, 1, 1111, '2024-07-02 19:38:15', '2024-07-02 19:38:15');
INSERT INTO `t_department` VALUES (8, '抖音组', 47, 7, 0, '2024-07-02 19:39:11', '2024-07-02 19:39:11');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典id',
  `dict_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名字',
  `dict_code` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典编码',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典备注',
  `disabled_flag` tinyint(0) NOT NULL DEFAULT 0 COMMENT '禁用状态',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `unique_code`(`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES (1, '商品地区', 'GOODS_PLACE', '用于商品管理中的商品地区1', 0, '2025-03-27 14:42:26', '2025-03-31 11:23:03');

-- ----------------------------
-- Table structure for t_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_data`;
CREATE TABLE `t_dict_data`  (
  `dict_data_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典数据id',
  `dict_id` bigint(0) NOT NULL COMMENT '字典id',
  `data_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典项值',
  `data_label` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典项显示名称',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort_order` int(0) NOT NULL COMMENT '排序（越大越靠前）',
  `disabled_flag` tinyint(0) NOT NULL DEFAULT 0 COMMENT '禁用状态',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`dict_data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dict_data
-- ----------------------------
INSERT INTO `t_dict_data` VALUES (2, 1, 'LUO_YANG', '洛阳', 'sad', 2, 0, '2025-03-27 15:52:39', '2025-03-27 20:53:21');
INSERT INTO `t_dict_data` VALUES (3, 1, 'ZHENG_ZHOU', '郑州', '', 0, 0, '2025-03-27 18:58:16', '2025-03-27 20:53:32');
INSERT INTO `t_dict_data` VALUES (7, 1, 'BEI_JING', '北京', '', 0, 0, '2025-03-27 20:53:45', '2025-03-27 20:53:45');
INSERT INTO `t_dict_data` VALUES (8, 1, 'SHANG_HAI', '上海', '', 0, 0, '2025-03-27 20:53:45', '2025-03-27 20:53:45');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee`  (
  `employee_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `employee_uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工uuid',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录帐号',
  `login_pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码',
  `actual_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工名称',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` tinyint(1) NULL DEFAULT 0 COMMENT '性别',
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `department_id` bigint(0) NULL DEFAULT NULL COMMENT '部门id',
  `position_id` bigint(0) NULL DEFAULT NULL COMMENT '职务ID',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `disabled_flag` tinyint(0) UNSIGNED NOT NULL COMMENT '是否被禁用 0否1是',
  `deleted_flag` tinyint(0) UNSIGNED NOT NULL COMMENT '是否删除0否 1是',
  `administrator_flag` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否为超级管理员: 0 不是，1是',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`employee_id`) USING BTREE,
  UNIQUE INDEX `employee_uid_index`(`employee_uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES (1, 'cf1e361fd46741f5b2a09335cef50db8', 'admin', '$argon2id$v=19$m=16384,t=2,p=1$e55aHKp//ipvz4uKOxLW+g$j+Wo5FdqVGOJSIpdrGhuCj1TGacS6yvFpywWQrRPkLU', '管理员', '', 0, '13500000000', NULL, NULL, NULL, 0, 0, 1, NULL, '2025-09-22 15:31:00', '2022-10-04 21:33:50');
INSERT INTO `t_employee` VALUES (75, '871c84dbafd74f829e203afa28f26275', 'zm123', '$argon2id$v=19$m=16384,t=2,p=1$CmNcReWGUoXXzW3zcB8hoQ$ytNBosR+7Yjo6obbwWpiZGVOxiaveQjraXSWP0j8j88', '张铭', NULL, 0, '15360056897', 1, NULL, 'zm123@seer.com', 0, 0, 0, 'string', '2025-09-23 09:24:08', '2025-09-23 09:06:47');

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE `t_feedback`  (
  `feedback_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `feedback_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '反馈内容',
  `feedback_attachment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '反馈图片',
  `user_id` bigint(0) NOT NULL COMMENT '创建人id',
  `user_type` int(0) NOT NULL COMMENT '创建人用户类型',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人姓名',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`feedback_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '意见反馈' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for t_file
-- ----------------------------
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE `t_file`  (
  `file_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `folder_type` tinyint(0) UNSIGNED NOT NULL COMMENT '文件夹类型',
  `file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `file_size` int(0) NULL DEFAULT NULL COMMENT '文件大小',
  `file_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件key，用于文件下载',
  `file_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件类型',
  `creator_id` bigint(0) NULL DEFAULT NULL COMMENT '创建人，即上传人',
  `creator_user_type` int(0) NULL DEFAULT NULL COMMENT '创建人用户类型',
  `creator_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人姓名',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '上次更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`file_id`) USING BTREE,
  UNIQUE INDEX `uk_file_key`(`file_key`) USING BTREE,
  INDEX `module_id_module_type`(`folder_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_file
-- ----------------------------
INSERT INTO `t_file` VALUES (108, 1, '1.jpg', 663338, 'public/common/5cf8b285669b4ab3844a8751fa4715fa_20250925134537.jpg', 'jpg', 1, 1, '管理员', '2025-09-25 13:45:37', '2025-09-25 13:45:37');

-- ----------------------------
-- Table structure for t_heart_beat_record
-- ----------------------------
DROP TABLE IF EXISTS `t_heart_beat_record`;
CREATE TABLE `t_heart_beat_record`  (
  `heart_beat_record_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `project_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目名称',
  `server_ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '服务器ip',
  `process_no` int(0) NOT NULL COMMENT '进程号',
  `process_start_time` datetime(0) NOT NULL COMMENT '进程开启时间',
  `heart_beat_time` datetime(0) NOT NULL COMMENT '心跳时间',
  PRIMARY KEY (`heart_beat_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 227 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公用服务 - 服务心跳' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_heart_beat_record
-- ----------------------------
INSERT INTO `t_heart_beat_record` VALUES (188, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 3172, '2025-09-19 19:12:53', '2025-09-19 19:14:13');
INSERT INTO `t_heart_beat_record` VALUES (189, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 39240, '2025-09-19 19:25:44', '2025-09-19 19:27:02');
INSERT INTO `t_heart_beat_record` VALUES (190, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 36376, '2025-09-19 19:27:49', '2025-09-19 19:34:07');
INSERT INTO `t_heart_beat_record` VALUES (191, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 45584, '2025-09-19 19:34:34', '2025-09-19 19:35:51');
INSERT INTO `t_heart_beat_record` VALUES (192, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 9108, '2025-09-20 09:59:13', '2025-09-20 10:05:42');
INSERT INTO `t_heart_beat_record` VALUES (193, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 17140, '2025-09-20 10:06:19', '2025-09-20 10:07:36');
INSERT INTO `t_heart_beat_record` VALUES (194, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 25768, '2025-09-20 10:09:57', '2025-09-20 10:11:13');
INSERT INTO `t_heart_beat_record` VALUES (195, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 27048, '2025-09-20 10:11:41', '2025-09-20 14:03:03');
INSERT INTO `t_heart_beat_record` VALUES (196, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 23848, '2025-09-20 14:06:08', '2025-09-20 14:07:30');
INSERT INTO `t_heart_beat_record` VALUES (197, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 33828, '2025-09-20 14:09:57', '2025-09-20 16:36:16');
INSERT INTO `t_heart_beat_record` VALUES (198, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 30388, '2025-09-20 16:42:49', '2025-09-20 16:54:06');
INSERT INTO `t_heart_beat_record` VALUES (199, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 33860, '2025-09-20 16:56:03', '2025-09-20 16:57:18');
INSERT INTO `t_heart_beat_record` VALUES (200, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 32720, '2025-09-20 16:58:50', '2025-09-20 17:00:06');
INSERT INTO `t_heart_beat_record` VALUES (201, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 31980, '2025-09-20 17:00:53', '2025-09-20 17:07:10');
INSERT INTO `t_heart_beat_record` VALUES (202, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 17312, '2025-09-20 17:10:18', '2025-09-20 17:16:35');
INSERT INTO `t_heart_beat_record` VALUES (203, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 26552, '2025-09-20 17:21:03', '2025-09-20 17:27:20');
INSERT INTO `t_heart_beat_record` VALUES (204, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 21800, '2025-09-20 17:28:59', '2025-09-20 17:50:17');
INSERT INTO `t_heart_beat_record` VALUES (205, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 30076, '2025-09-20 18:02:31', '2025-09-20 18:03:56');
INSERT INTO `t_heart_beat_record` VALUES (206, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 25904, '2025-09-20 18:05:13', '2025-09-22 08:47:28');
INSERT INTO `t_heart_beat_record` VALUES (207, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;172.19.160.1;127.0.0.1;169.254.241.226', 26484, '2025-09-22 08:49:20', '2025-09-22 10:00:38');
INSERT INTO `t_heart_beat_record` VALUES (208, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 35296, '2025-09-22 10:05:05', '2025-09-23 09:17:01');
INSERT INTO `t_heart_beat_record` VALUES (209, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 39140, '2025-09-23 09:20:20', '2025-09-23 09:31:37');
INSERT INTO `t_heart_beat_record` VALUES (210, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 40292, '2025-09-23 09:34:02', '2025-09-25 09:46:32');
INSERT INTO `t_heart_beat_record` VALUES (211, '/app', '172.17.107.4;127.0.0.1', 8, '2025-09-25 09:42:45', '2025-09-25 10:43:57');
INSERT INTO `t_heart_beat_record` VALUES (212, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 38668, '2025-09-25 09:54:09', '2025-09-25 11:30:34');
INSERT INTO `t_heart_beat_record` VALUES (213, '/app', '172.17.107.4;127.0.0.1', 7, '2025-09-25 10:45:06', '2025-09-25 10:46:18');
INSERT INTO `t_heart_beat_record` VALUES (214, '/app', '172.17.107.4;127.0.0.1', 578, '2025-09-25 10:54:36', '2025-09-25 11:30:47');
INSERT INTO `t_heart_beat_record` VALUES (215, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 42412, '2025-09-25 11:33:05', '2025-09-25 11:39:26');
INSERT INTO `t_heart_beat_record` VALUES (216, '/app', '172.17.107.4;127.0.0.1', 249, '2025-09-25 11:35:06', '2025-09-25 11:56:17');
INSERT INTO `t_heart_beat_record` VALUES (217, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 41476, '2025-09-25 11:48:47', '2025-09-25 11:50:20');
INSERT INTO `t_heart_beat_record` VALUES (218, '/app', '172.17.107.4;127.0.0.1', 250, '2025-09-25 11:57:59', '2025-09-25 13:49:11');
INSERT INTO `t_heart_beat_record` VALUES (219, '/app', '172.17.107.4;127.0.0.1', 253, '2025-09-25 13:53:15', '2025-09-25 15:34:27');
INSERT INTO `t_heart_beat_record` VALUES (220, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 39064, '2025-09-25 14:12:04', '2025-09-25 14:13:36');
INSERT INTO `t_heart_beat_record` VALUES (221, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 44020, '2025-09-25 14:13:49', '2025-09-25 14:15:08');
INSERT INTO `t_heart_beat_record` VALUES (222, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 30132, '2025-09-25 14:17:02', '2025-09-25 14:18:21');
INSERT INTO `t_heart_beat_record` VALUES (223, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 43168, '2025-09-25 15:16:44', '2025-09-25 15:23:04');
INSERT INTO `t_heart_beat_record` VALUES (224, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 3012, '2025-09-25 15:25:20', '2025-09-25 15:31:40');
INSERT INTO `t_heart_beat_record` VALUES (225, 'D:\\IDEA\\IdeaProjects\\nfc-lock-server', '172.20.0.165;13.0.4.77;172.19.160.1;127.0.0.1;169.254.241.226', 33120, '2025-09-25 15:33:45', '2025-09-25 15:35:04');
INSERT INTO `t_heart_beat_record` VALUES (226, '/app', '172.17.107.4;127.0.0.1', 248, '2025-09-25 15:37:10', '2025-09-25 15:48:22');

-- ----------------------------
-- Table structure for t_help_doc
-- ----------------------------
DROP TABLE IF EXISTS `t_help_doc`;
CREATE TABLE `t_help_doc`  (
  `help_doc_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `help_doc_catalog_id` bigint(0) NOT NULL COMMENT '类型1公告 2动态',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文本内容',
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'html内容',
  `attachment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附件',
  `sort` int(0) NOT NULL DEFAULT 0 COMMENT '排序',
  `page_view_count` int(0) NOT NULL DEFAULT 0 COMMENT '页面浏览量，传说中的pv',
  `user_view_count` int(0) NOT NULL DEFAULT 0 COMMENT '用户浏览量，传说中的uv',
  `author` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`help_doc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '帮助文档' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_help_doc
-- ----------------------------
INSERT INTO `t_help_doc` VALUES (32, 6, '企业名称该写什么？', '需求1：管理公司基本信息，包含：企业名称、Logo、地区、营业执照、联系人 等等，可以 增删拆改需求2：管理公司的银行账户，包含：银行信息、账户名称、账号、类型等，可以 增删拆改需求3：管理公司的发票信息，包含：开票抬头、纳税号、银行账户、开户行、备注等，可以 增删拆改需求4：对于公司信息、银行信息、发票信息 任何的修改，都有记录 数据变动记录；', '<ul><li style=\"text-align: start;\">需求1：管理公司基本信息，包含：企业名称、Logo、地区、营业执照、联系人 等等，可以 增删拆改</li><li style=\"text-align: start;\">需求2：管理公司的银行账户，包含：银行信息、账户名称、账号、类型等，可以 增删拆改</li><li style=\"text-align: start;\">需求3：管理公司的发票信息，包含：开票抬头、纳税号、银行账户、开户行、备注等，可以 增删拆改</li><li style=\"text-align: start;\">需求4：对于公司信息、银行信息、发票信息 任何的修改，都有记录 数据变动记录；</li></ul>', '', 0, 55, 1, '卓大', '2024-07-07 23:15:28', '2022-11-22 10:41:48');
INSERT INTO `t_help_doc` VALUES (33, 6, '谁有权限查看企业信息', '需求1：管理公司基本信息，包含：企业名称、Logo、地区、营业执照、联系人 等等，可以 增删拆改需求2：管理公司的银行账户，包含：银行信息、账户名称、账号、类型等，可以 增删拆改需求3：管理公司的发票信息，包含：开票抬头、纳税号、银行账户、开户行、备注等，可以 增删拆改需求4：对于公司信息、银行信息、发票信息 任何的修改，都有记录 数据变动记录；', '<ul><li style=\"text-align: start;\">需求1：管理公司基本信息，包含：企业名称、Logo、地区、营业执照、联系人 等等，可以 增删拆改</li><li style=\"text-align: start;\">需求2：管理公司的银行账户，包含：银行信息、账户名称、账号、类型等，可以 增删拆改</li><li style=\"text-align: start;\">需求3：管理公司的发票信息，包含：开票抬头、纳税号、银行账户、开户行、备注等，可以 增删拆改</li><li style=\"text-align: start;\">需求4：对于公司信息、银行信息、发票信息 任何的修改，都有记录 数据变动记录；</li></ul>', '', 0, 13, 1, '卓大', '2024-04-10 19:36:55', '2022-11-22 10:42:19');

-- ----------------------------
-- Table structure for t_help_doc_catalog
-- ----------------------------
DROP TABLE IF EXISTS `t_help_doc_catalog`;
CREATE TABLE `t_help_doc_catalog`  (
  `help_doc_catalog_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '帮助文档目录',
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `sort` int(0) NOT NULL DEFAULT 0 COMMENT '排序字段',
  `parent_id` bigint(0) NOT NULL COMMENT '父级id',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`help_doc_catalog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '帮助文档-目录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_help_doc_catalog
-- ----------------------------
INSERT INTO `t_help_doc_catalog` VALUES (6, '企业信息', 0, 0, '2022-11-05 10:52:40', '2022-11-22 10:37:38');
INSERT INTO `t_help_doc_catalog` VALUES (9, '企业信用', 0, 6, '2023-12-01 20:16:54', '2023-12-01 20:16:54');
INSERT INTO `t_help_doc_catalog` VALUES (10, '采购文档', 0, 11, '2023-12-01 20:17:08', '2023-12-01 20:17:29');
INSERT INTO `t_help_doc_catalog` VALUES (11, '进销存', 0, 0, '2023-12-01 20:17:23', '2023-12-01 20:17:23');

-- ----------------------------
-- Table structure for t_help_doc_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_help_doc_relation`;
CREATE TABLE `t_help_doc_relation`  (
  `relation_id` bigint(0) NOT NULL COMMENT '关联id',
  `relation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联名称',
  `help_doc_id` bigint(0) NOT NULL COMMENT '文档id',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`relation_id`, `help_doc_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '帮助文档-关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_help_doc_relation
-- ----------------------------
INSERT INTO `t_help_doc_relation` VALUES (0, '首页', 32, '2023-12-04 13:34:17', '2023-12-04 13:34:17');
INSERT INTO `t_help_doc_relation` VALUES (0, '首页', 33, '2023-12-04 13:34:21', '2023-12-04 13:34:21');

-- ----------------------------
-- Table structure for t_help_doc_view_record
-- ----------------------------
DROP TABLE IF EXISTS `t_help_doc_view_record`;
CREATE TABLE `t_help_doc_view_record`  (
  `help_doc_id` bigint(0) NOT NULL COMMENT '通知公告id',
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `page_view_count` int(0) NULL DEFAULT 0 COMMENT '查看次数',
  `first_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '首次ip',
  `first_user_agent` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '首次用户设备等标识',
  `last_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后一次ip',
  `last_user_agent` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后一次用户设备等标识',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`help_doc_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '帮助文档-查看记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_help_doc_view_record
-- ----------------------------

-- ----------------------------
-- Table structure for t_login_fail
-- ----------------------------
DROP TABLE IF EXISTS `t_login_fail`;
CREATE TABLE `t_login_fail`  (
  `login_fail_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `user_type` int(0) NOT NULL COMMENT '用户类型',
  `login_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `login_fail_count` int(0) NULL DEFAULT NULL COMMENT '连续登录失败次数',
  `lock_flag` tinyint(0) NULL DEFAULT 0 COMMENT '锁定状态:1锁定，0未锁定',
  `login_lock_begin_time` datetime(0) NULL DEFAULT NULL COMMENT '连续登录失败锁定开始时间',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`login_fail_id`) USING BTREE,
  UNIQUE INDEX `uid_and_utype`(`user_id`, `user_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录失败次数记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_login_fail
-- ----------------------------

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log`  (
  `login_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `user_type` int(0) NOT NULL COMMENT '用户类型',
  `user_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `login_ip` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ip',
  `login_ip_region` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ip地区',
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'user-agent信息',
  `login_device` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录设备',
  `login_result` int(0) NOT NULL COMMENT '登录结果：0成功 1失败 2 退出',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`login_log_id`) USING BTREE,
  INDEX `customer_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1991 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES (1905, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:17:57', '2025-09-20 10:17:44');
INSERT INTO `t_login_log` VALUES (1906, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:20:27', '2025-09-20 10:20:14');
INSERT INTO `t_login_log` VALUES (1907, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:21:59', '2025-09-20 10:21:46');
INSERT INTO `t_login_log` VALUES (1908, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:27:15', '2025-09-20 10:27:02');
INSERT INTO `t_login_log` VALUES (1909, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:30:35', '2025-09-20 10:30:23');
INSERT INTO `t_login_log` VALUES (1910, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:30:56', '2025-09-20 10:30:43');
INSERT INTO `t_login_log` VALUES (1911, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:31:55', '2025-09-20 10:31:42');
INSERT INTO `t_login_log` VALUES (1912, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:32:05', '2025-09-20 10:31:52');
INSERT INTO `t_login_log` VALUES (1913, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:34:19', '2025-09-20 10:34:07');
INSERT INTO `t_login_log` VALUES (1914, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 10:35:53', '2025-09-20 10:35:41');
INSERT INTO `t_login_log` VALUES (1915, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-20 11:05:04', '2025-09-20 11:04:52');
INSERT INTO `t_login_log` VALUES (1916, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 0, '', '2025-09-20 11:05:05', '2025-09-20 11:04:52');
INSERT INTO `t_login_log` VALUES (1917, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-20 13:54:02', '2025-09-20 13:53:49');
INSERT INTO `t_login_log` VALUES (1918, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 0, '', '2025-09-20 13:54:03', '2025-09-20 13:53:50');
INSERT INTO `t_login_log` VALUES (1919, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 14:08:15', '2025-09-20 14:08:02');
INSERT INTO `t_login_log` VALUES (1920, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-20 15:09:35', '2025-09-20 15:09:22');
INSERT INTO `t_login_log` VALUES (1921, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 0, '', '2025-09-20 15:09:35', '2025-09-20 15:09:22');
INSERT INTO `t_login_log` VALUES (1922, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 15:29:50', '2025-09-20 15:29:37');
INSERT INTO `t_login_log` VALUES (1923, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-20 15:56:57', '2025-09-20 15:56:45');
INSERT INTO `t_login_log` VALUES (1924, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 0, '', '2025-09-20 15:56:58', '2025-09-20 15:56:45');
INSERT INTO `t_login_log` VALUES (1925, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 16:50:03', '2025-09-20 16:49:50');
INSERT INTO `t_login_log` VALUES (1926, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 1, '密码错误', '2025-09-20 17:23:04', '2025-09-20 17:22:51');
INSERT INTO `t_login_log` VALUES (1927, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 17:23:05', '2025-09-20 17:22:52');
INSERT INTO `t_login_log` VALUES (1928, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 1, '密码错误', '2025-09-20 17:23:09', '2025-09-20 17:22:56');
INSERT INTO `t_login_log` VALUES (1929, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 17:23:09', '2025-09-20 17:22:56');
INSERT INTO `t_login_log` VALUES (1930, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 1, '密码错误', '2025-09-20 17:23:42', '2025-09-20 17:23:29');
INSERT INTO `t_login_log` VALUES (1931, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 17:23:42', '2025-09-20 17:23:29');
INSERT INTO `t_login_log` VALUES (1932, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 1, '密码错误', '2025-09-20 17:26:01', '2025-09-20 17:25:48');
INSERT INTO `t_login_log` VALUES (1933, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 17:26:01', '2025-09-20 17:25:48');
INSERT INTO `t_login_log` VALUES (1934, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 1, '密码错误', '2025-09-20 17:27:23', '2025-09-20 17:27:10');
INSERT INTO `t_login_log` VALUES (1935, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 17:27:28', '2025-09-20 17:27:15');
INSERT INTO `t_login_log` VALUES (1936, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 1, '密码错误', '2025-09-20 17:29:31', '2025-09-20 17:29:18');
INSERT INTO `t_login_log` VALUES (1937, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 17:29:41', '2025-09-20 17:29:28');
INSERT INTO `t_login_log` VALUES (1938, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 1, '密码错误', '2025-09-20 17:30:03', '2025-09-20 17:29:50');
INSERT INTO `t_login_log` VALUES (1939, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 17:30:08', '2025-09-20 17:29:55');
INSERT INTO `t_login_log` VALUES (1940, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-20 18:02:15', '2025-09-20 18:02:01');
INSERT INTO `t_login_log` VALUES (1941, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-22 10:06:20', '2025-09-22 10:06:05');
INSERT INTO `t_login_log` VALUES (1942, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 1, '密码错误', '2025-09-22 11:45:39', '2025-09-22 11:45:24');
INSERT INTO `t_login_log` VALUES (1943, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 1, '密码错误', '2025-09-22 11:45:42', '2025-09-22 11:45:27');
INSERT INTO `t_login_log` VALUES (1944, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:45:51', '2025-09-22 11:45:36');
INSERT INTO `t_login_log` VALUES (1945, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:46:15', '2025-09-22 11:46:00');
INSERT INTO `t_login_log` VALUES (1946, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:46:26', '2025-09-22 11:46:11');
INSERT INTO `t_login_log` VALUES (1947, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:46:56', '2025-09-22 11:46:41');
INSERT INTO `t_login_log` VALUES (1948, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:47:17', '2025-09-22 11:47:02');
INSERT INTO `t_login_log` VALUES (1949, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:47:18', '2025-09-22 11:47:04');
INSERT INTO `t_login_log` VALUES (1950, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:47:26', '2025-09-22 11:47:11');
INSERT INTO `t_login_log` VALUES (1951, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:47:27', '2025-09-22 11:47:12');
INSERT INTO `t_login_log` VALUES (1952, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:48:38', '2025-09-22 11:48:23');
INSERT INTO `t_login_log` VALUES (1953, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:49:04', '2025-09-22 11:48:49');
INSERT INTO `t_login_log` VALUES (1954, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 1, '密码错误', '2025-09-22 11:50:58', '2025-09-22 11:50:43');
INSERT INTO `t_login_log` VALUES (1955, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:56:36', '2025-09-22 11:56:21');
INSERT INTO `t_login_log` VALUES (1956, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:56:42', '2025-09-22 11:56:27');
INSERT INTO `t_login_log` VALUES (1957, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:56:52', '2025-09-22 11:56:37');
INSERT INTO `t_login_log` VALUES (1958, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 11:57:05', '2025-09-22 11:56:50');
INSERT INTO `t_login_log` VALUES (1959, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 14:06:12', '2025-09-22 14:05:57');
INSERT INTO `t_login_log` VALUES (1960, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 14:16:16', '2025-09-22 14:16:01');
INSERT INTO `t_login_log` VALUES (1961, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 14:19:30', '2025-09-22 14:19:15');
INSERT INTO `t_login_log` VALUES (1962, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '安卓', 0, '', '2025-09-22 14:20:53', '2025-09-22 14:20:38');
INSERT INTO `t_login_log` VALUES (1963, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 14:22:23', '2025-09-22 14:22:08');
INSERT INTO `t_login_log` VALUES (1964, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 1, '密码错误', '2025-09-22 15:31:26', '2025-09-22 15:31:11');
INSERT INTO `t_login_log` VALUES (1965, 1, 1, '管理员', '172.20.0.10', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 15:31:35', '2025-09-22 15:31:20');
INSERT INTO `t_login_log` VALUES (1966, 1, 1, '管理员', '172.20.120.96', '0|0|0|内网IP|内网IP', 'okhttp/4.12.0', '电脑端', 0, '', '2025-09-22 18:27:35', '2025-09-22 18:27:20');
INSERT INTO `t_login_log` VALUES (1967, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 1, '密码错误', '2025-09-23 09:02:56', '2025-09-23 09:02:40');
INSERT INTO `t_login_log` VALUES (1968, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 1, '密码错误', '2025-09-23 09:03:12', '2025-09-23 09:02:56');
INSERT INTO `t_login_log` VALUES (1969, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-23 09:05:30', '2025-09-23 09:05:14');
INSERT INTO `t_login_log` VALUES (1970, 75, 1, '张铭', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-23 09:07:17', '2025-09-23 09:07:01');
INSERT INTO `t_login_log` VALUES (1971, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-23 09:11:40', '2025-09-23 09:11:24');
INSERT INTO `t_login_log` VALUES (1972, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-23 09:11:50', '2025-09-23 09:11:34');
INSERT INTO `t_login_log` VALUES (1973, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-23 09:12:11', '2025-09-23 09:11:55');
INSERT INTO `t_login_log` VALUES (1974, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-23 09:12:29', '2025-09-23 09:12:13');
INSERT INTO `t_login_log` VALUES (1975, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-23 09:12:46', '2025-09-23 09:12:31');
INSERT INTO `t_login_log` VALUES (1976, 1, 1, '管理员', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 0, '', '2025-09-23 09:20:24', '2025-09-23 09:20:08');
INSERT INTO `t_login_log` VALUES (1977, 75, 1, '张铭', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-23 09:24:23', '2025-09-23 09:24:07');
INSERT INTO `t_login_log` VALUES (1978, 75, 1, '张铭', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-23 09:34:59', '2025-09-23 09:34:43');
INSERT INTO `t_login_log` VALUES (1979, 75, 1, '张铭', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-25 09:55:06', '2025-09-25 09:55:07');
INSERT INTO `t_login_log` VALUES (1980, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-25 10:55:00', '2025-09-25 10:55:00');
INSERT INTO `t_login_log` VALUES (1981, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 1, '密码错误', '2025-09-25 11:01:01', '2025-09-25 11:01:02');
INSERT INTO `t_login_log` VALUES (1982, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 0, '', '2025-09-25 11:09:49', '2025-09-25 11:09:50');
INSERT INTO `t_login_log` VALUES (1983, 75, 1, '张铭', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-25 11:19:23', '2025-09-25 11:19:23');
INSERT INTO `t_login_log` VALUES (1984, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-25 11:19:30', '2025-09-25 11:19:31');
INSERT INTO `t_login_log` VALUES (1985, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-25 11:19:38', '2025-09-25 11:19:39');
INSERT INTO `t_login_log` VALUES (1986, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-25 11:50:19', '2025-09-25 11:50:01');
INSERT INTO `t_login_log` VALUES (1987, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-25 11:58:20', '2025-09-25 11:58:20');
INSERT INTO `t_login_log` VALUES (1988, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Apifox/1.0.0 (https://apifox.com)', '安卓', 0, '', '2025-09-25 13:38:11', '2025-09-25 13:38:11');
INSERT INTO `t_login_log` VALUES (1989, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 0, '', '2025-09-25 13:40:06', '2025-09-25 13:40:06');
INSERT INTO `t_login_log` VALUES (1990, 1, 1, '管理员', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '电脑端', 0, '', '2025-09-25 15:10:28', '2025-09-25 15:10:28');

-- ----------------------------
-- Table structure for t_mail_template
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_template`;
CREATE TABLE `t_mail_template`  (
  `template_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `template_subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模板名称',
  `template_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模板内容',
  `template_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '解析类型 string，freemarker',
  `disable_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`template_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_mail_template
-- ----------------------------
INSERT INTO `t_mail_template` VALUES ('login_verification_code', '登录验证码', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n  <title>登录提醒</title>\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\r\n  <style>\r\n      * {\r\n          font-family: SimSun;\r\n          /* 4号字体 */\r\n          font-size: 18px;\r\n          /* 22磅行间距 */\r\n          line-height: 29px;\r\n      }\r\n\r\n      .main_font_size {\r\n          font-size: 12.0pt;\r\n      }\r\n\r\n      .mainContent {\r\n          line-height: 28px;\r\n      }\r\n\r\n      p {\r\n          margin: 0 auto;\r\n          text-align: justify;\r\n      }\r\n  </style>\r\n\r\n</head>\r\n<body>\r\n<div>\r\n  <div style=\"margin: 0px auto;width: 690px;\">\r\n    <div class=\"mainContent\">\r\n      <h1>验证码</h1>\r\n      <p>请在验证页面输入此验证码</p>\r\n      <p><b>${code}</b></p>\r\n      <p>验证码将于此电子邮件发出 5 分钟后过期。</p>\r\n      <p>如果你未曾提出此请求，可以忽略这封电子邮件。</p>\r\n    </div>\r\n\r\n  </div>\r\n</div>\r\n</body>\r\n</html>', 'freemarker', 0, '2024-08-06 09:13:08', '2024-07-28 13:56:06');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `menu_type` int(0) NOT NULL COMMENT '类型',
  `parent_id` bigint(0) NOT NULL COMMENT '父菜单ID',
  `sort` int(0) NULL DEFAULT NULL COMMENT '显示顺序',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `perms_type` int(0) NULL DEFAULT NULL COMMENT '权限类型',
  `api_perms` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '后端权限字符串',
  `web_perms` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '前端权限字符串',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `context_menu_id` bigint(0) NULL DEFAULT NULL COMMENT '功能点关联菜单ID',
  `frame_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为外链',
  `frame_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '外链地址',
  `cache_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否缓存',
  `visible_flag` tinyint(1) NOT NULL DEFAULT 1 COMMENT '显示状态',
  `disabled_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '禁用状态',
  `deleted_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `create_user_id` bigint(0) NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_user_id` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 325 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (26, '菜单管理', 2, 50, 1, '/menu/list', '/system/menu/menu-list.vue', NULL, NULL, NULL, 'CopyOutlined', NULL, 0, NULL, 1, 1, 0, 0, 2, '2021-08-09 15:04:35', 1, '2023-12-01 19:39:03');
INSERT INTO `t_menu` VALUES (40, '删除', 3, 26, NULL, NULL, NULL, 1, 'system:menu:batchDelete', 'system:menu:batchDelete', NULL, 26, 0, NULL, 0, 1, 0, 0, 1, '2021-08-12 09:45:56', 1, '2023-10-07 18:15:50');
INSERT INTO `t_menu` VALUES (45, '组织架构', 1, 0, 3, '/organization', NULL, NULL, NULL, NULL, 'UserSwitchOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-12 16:13:27', 1, '2024-07-02 19:27:44');
INSERT INTO `t_menu` VALUES (46, '员工管理', 2, 45, 3, '/organization/employee', '/system/employee/index.vue', NULL, NULL, NULL, 'AuditOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-12 16:21:50', 1, '2024-07-02 20:15:23');
INSERT INTO `t_menu` VALUES (47, '商品管理', 2, 48, 1, '/erp/goods/list', '/business/erp/goods/goods-list.vue', NULL, NULL, NULL, 'AliwangwangOutlined', NULL, 0, NULL, 1, 1, 0, 1, 1, '2021-08-12 17:58:39', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (48, '商品管理', 1, 138, 3, '/goods', NULL, NULL, NULL, NULL, 'BarcodeOutlined', NULL, 0, NULL, 0, 1, 0, 1, 1, '2021-08-12 18:02:59', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (50, '系统设置', 1, 0, 6, '/setting', NULL, NULL, NULL, NULL, 'SettingOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-13 16:41:33', 1, '2023-12-01 19:38:03');
INSERT INTO `t_menu` VALUES (76, '角色管理', 2, 45, 4, '/organization/role', '/system/role/index.vue', NULL, NULL, NULL, 'SlidersOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-26 10:31:00', 1, '2024-07-02 20:15:28');
INSERT INTO `t_menu` VALUES (78, '商品分类', 2, 48, 2, '/erp/catalog/goods', '/business/erp/catalog/goods-catalog.vue', NULL, NULL, NULL, 'ApartmentOutlined', NULL, 0, NULL, 1, 1, 0, 1, 1, '2022-05-18 23:34:14', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (79, '自定义分组', 2, 48, 3, '/erp/catalog/custom', '/business/erp/catalog/custom-catalog.vue', NULL, NULL, NULL, 'AppstoreAddOutlined', NULL, 0, NULL, 0, 1, 0, 1, 1, '2022-05-18 23:37:53', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (81, '用户操作记录', 2, 213, 6, '/support/operate-log/operate-log-list', '/support/operate-log/operate-log-list.vue', NULL, NULL, NULL, 'VideoCameraOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-20 12:37:24', 44, '2024-08-13 14:34:10');
INSERT INTO `t_menu` VALUES (85, '组件演示', 2, 84, NULL, '/demonstration/index', '/support/demonstration/index.vue', NULL, NULL, NULL, 'ClearOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-20 23:16:46', NULL, '2022-05-20 23:16:46');
INSERT INTO `t_menu` VALUES (86, '添加部门', 3, 46, 1, NULL, NULL, 1, 'system:department:add', 'system:department:add', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-26 23:33:37', 1, '2023-10-07 18:26:35');
INSERT INTO `t_menu` VALUES (87, '修改部门', 3, 46, 2, NULL, NULL, 1, 'system:department:update', 'system:department:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-26 23:34:11', 1, '2023-10-07 18:26:44');
INSERT INTO `t_menu` VALUES (88, '删除部门', 3, 46, 3, NULL, NULL, 1, 'system:department:delete', 'system:department:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-26 23:34:49', 1, '2023-10-07 18:26:49');
INSERT INTO `t_menu` VALUES (91, '添加员工', 3, 46, NULL, NULL, NULL, 1, 'system:employee:add', 'system:employee:add', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:11:38', 1, '2023-10-07 18:27:46');
INSERT INTO `t_menu` VALUES (92, '编辑员工', 3, 46, NULL, NULL, NULL, 1, 'system:employee:update', 'system:employee:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:12:10', 1, '2023-10-07 18:27:49');
INSERT INTO `t_menu` VALUES (93, '禁用启用员工', 3, 46, NULL, NULL, NULL, 1, 'system:employee:disabled', 'system:employee:disabled', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:12:37', 1, '2023-10-07 18:27:53');
INSERT INTO `t_menu` VALUES (94, '调整员工部门', 3, 46, NULL, NULL, NULL, 1, 'system:employee:department:update', 'system:employee:department:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:12:59', 1, '2023-10-07 18:27:34');
INSERT INTO `t_menu` VALUES (95, '重置密码', 3, 46, NULL, NULL, NULL, 1, 'system:employee:password:reset', 'system:employee:password:reset', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:13:30', 1, '2023-10-07 18:27:57');
INSERT INTO `t_menu` VALUES (96, '删除员工', 3, 46, NULL, NULL, NULL, 1, 'system:employee:delete', 'system:employee:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:14:08', 1, '2023-10-07 18:28:01');
INSERT INTO `t_menu` VALUES (97, '添加角色', 3, 76, NULL, NULL, NULL, 1, 'system:role:add', 'system:role:add', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:34:00', 1, '2023-10-07 18:42:31');
INSERT INTO `t_menu` VALUES (98, '删除角色', 3, 76, NULL, NULL, NULL, 1, 'system:role:delete', 'system:role:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:34:19', 1, '2023-10-07 18:42:35');
INSERT INTO `t_menu` VALUES (99, '编辑角色', 3, 76, NULL, NULL, NULL, 1, 'system:role:update', 'system:role:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:34:55', 1, '2023-10-07 18:42:44');
INSERT INTO `t_menu` VALUES (100, '更新数据范围', 3, 76, NULL, NULL, NULL, 1, 'system:role:dataScope:update', 'system:role:dataScope:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:37:03', 1, '2023-10-07 18:41:49');
INSERT INTO `t_menu` VALUES (101, '批量移除员工', 3, 76, NULL, NULL, NULL, 1, 'system:role:employee:batch:delete', 'system:role:employee:batch:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:39:05', 1, '2023-10-07 18:43:32');
INSERT INTO `t_menu` VALUES (102, '移除员工', 3, 76, NULL, NULL, NULL, 1, 'system:role:employee:delete', 'system:role:employee:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:39:21', 1, '2023-10-07 18:43:37');
INSERT INTO `t_menu` VALUES (103, '添加员工', 3, 76, NULL, NULL, NULL, 1, 'system:role:employee:add', 'system:role:employee:add', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:39:38', 1, '2023-10-07 18:44:05');
INSERT INTO `t_menu` VALUES (104, '修改权限', 3, 76, NULL, NULL, NULL, 1, 'system:role:menu:update', 'system:role:menu:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:41:55', 1, '2023-10-07 18:44:11');
INSERT INTO `t_menu` VALUES (105, '添加', 3, 26, NULL, NULL, NULL, 1, 'system:menu:add', 'system:menu:add', NULL, 26, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:44:37', 1, '2023-10-07 17:35:35');
INSERT INTO `t_menu` VALUES (106, '编辑', 3, 26, NULL, NULL, NULL, 1, 'system:menu:update', 'system:menu:update', NULL, 26, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:44:59', 1, '2023-10-07 17:35:48');
INSERT INTO `t_menu` VALUES (109, '参数配置', 2, 50, 3, '/config/config-list', '/support/config/config-list.vue', NULL, NULL, NULL, 'AntDesignOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 13:34:41', 1, '2022-06-23 16:24:16');
INSERT INTO `t_menu` VALUES (110, '数据字典', 2, 50, 4, '/setting/dict', '/support/dict/index.vue', NULL, NULL, NULL, 'BarcodeOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 17:53:00', 1, '2022-05-27 18:09:14');
INSERT INTO `t_menu` VALUES (111, '监控服务', 1, 0, 100, '/monitor', NULL, NULL, NULL, NULL, 'BarChartOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-17 11:13:23', 1, '2023-11-28 17:43:56');
INSERT INTO `t_menu` VALUES (113, '查询', 3, 112, NULL, NULL, NULL, NULL, NULL, 'ad', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-17 11:31:36', NULL, '2022-06-17 11:31:36');
INSERT INTO `t_menu` VALUES (114, '运维工具', 1, 0, 200, NULL, NULL, NULL, NULL, NULL, 'NodeCollapseOutlined', NULL, 0, NULL, 0, 1, 0, 1, 1, '2022-06-20 10:09:16', 1, '2023-12-01 19:36:18');
INSERT INTO `t_menu` VALUES (117, 'Reload', 2, 50, 12, '/hook', '/support/reload/reload-list.vue', NULL, NULL, NULL, 'ReloadOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-20 10:16:49', 1, '2023-12-01 19:39:17');
INSERT INTO `t_menu` VALUES (122, '数据库监控', 2, 111, 4, '/support/druid/index', NULL, NULL, NULL, NULL, 'ConsoleSqlOutlined', NULL, 1, 'http://localhost:1024/druid', 1, 1, 0, 0, 1, '2022-06-20 14:49:33', 1, '2023-02-16 19:15:58');
INSERT INTO `t_menu` VALUES (130, '单号管理', 2, 50, 6, '/support/serial-number/serial-number-list', '/support/serial-number/serial-number-list.vue', NULL, NULL, NULL, 'NumberOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-24 14:45:22', 1, '2022-06-28 16:23:41');
INSERT INTO `t_menu` VALUES (132, '公告管理', 2, 138, 2, '/oa/notice/notice-list', '/business/oa/notice/notice-list.vue', NULL, NULL, NULL, 'SoundOutlined', NULL, 0, NULL, 1, 1, 0, 1, 1, '2022-06-24 18:23:09', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (133, '缓存管理', 2, 50, 11, '/support/cache/cache-list', '/support/cache/cache-list.vue', NULL, NULL, NULL, 'BorderInnerOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-24 18:52:25', 1, '2023-12-01 19:39:13');
INSERT INTO `t_menu` VALUES (138, '功能Demo', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, 'BankOutlined', NULL, 0, NULL, 0, 1, 0, 1, 1, '2022-06-24 20:09:18', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (142, '公告详情', 2, 132, NULL, '/oa/notice/notice-detail', '/business/oa/notice/notice-detail.vue', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 1, 1, '2022-06-25 16:38:47', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (143, '登录登出记录', 2, 213, 5, '/support/login-log/login-log-list', '/support/login-log/login-log-list.vue', NULL, NULL, NULL, 'LoginOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-28 15:01:38', 44, '2024-08-13 14:33:49');
INSERT INTO `t_menu` VALUES (144, '企业管理', 2, 138, 1, '/oa/enterprise/enterprise-list', '/business/oa/enterprise/enterprise-list.vue', NULL, NULL, NULL, 'ShopOutlined', NULL, 0, NULL, 0, 1, 0, 1, 1, '2022-09-14 17:00:07', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (145, '企业详情', 2, 138, NULL, '/oa/enterprise/enterprise-detail', '/business/oa/enterprise/enterprise-detail.vue', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 1, 1, '2022-09-14 18:52:52', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (147, '帮助文档', 2, 218, 1, '/help-doc/help-doc-manage-list', '/support/help-doc/management/help-doc-manage-list.vue', NULL, NULL, NULL, 'FolderViewOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-09-14 19:59:01', 1, '2023-12-01 19:38:23');
INSERT INTO `t_menu` VALUES (148, '意见反馈', 2, 218, 2, '/feedback/feedback-list', '/support/feedback/feedback-list.vue', NULL, NULL, NULL, 'CoffeeOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-09-14 19:59:52', 1, '2023-12-01 19:38:40');
INSERT INTO `t_menu` VALUES (149, '我的通知', 2, 132, NULL, '/oa/notice/notice-employee-list', '/business/oa/notice/notice-employee-list.vue', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 1, 1, '2022-09-14 20:29:41', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (150, '我的通知公告详情', 2, 132, NULL, '/oa/notice/notice-employee-detail', '/business/oa/notice/notice-employee-detail.vue', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 1, 1, '2022-09-14 20:30:25', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (151, '代码生成', 2, 0, 600, '/support/code-generator', '/support/code-generator/code-generator-list.vue', NULL, NULL, NULL, 'CoffeeOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-09-21 18:25:05', 1, '2022-10-22 11:27:58');
INSERT INTO `t_menu` VALUES (152, '更新日志', 2, 218, 3, '/support/change-log/change-log-list', '/support/change-log/change-log-list.vue', NULL, NULL, NULL, 'HeartOutlined', NULL, 0, NULL, 0, 1, 0, 0, 44, '2022-10-10 10:31:20', 1, '2023-12-01 19:38:51');
INSERT INTO `t_menu` VALUES (153, '清除缓存', 3, 133, NULL, NULL, NULL, 1, 'support:cache:delete', 'support:cache:delete', NULL, 133, 0, NULL, 0, 1, 1, 0, 1, '2022-10-15 22:45:13', 1, '2023-10-07 16:22:29');
INSERT INTO `t_menu` VALUES (154, '获取缓存key', 3, 133, NULL, NULL, NULL, 1, 'support:cache:keys', 'support:cache:keys', NULL, 133, 0, NULL, 0, 1, 1, 0, 1, '2022-10-15 22:45:48', 1, '2023-10-07 16:22:35');
INSERT INTO `t_menu` VALUES (156, '查看结果', 3, 117, NULL, NULL, NULL, 1, 'support:reload:result', 'support:reload:result', NULL, 117, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:17:23', 1, '2023-10-07 14:31:47');
INSERT INTO `t_menu` VALUES (157, '单号生成', 3, 130, NULL, NULL, NULL, 1, 'support:serialNumber:generate', 'support:serialNumber:generate', NULL, 130, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:21:06', 1, '2023-10-07 18:22:46');
INSERT INTO `t_menu` VALUES (158, '生成记录', 3, 130, NULL, NULL, NULL, 1, 'support:serialNumber:record', 'support:serialNumber:record', NULL, 130, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:21:34', 1, '2023-10-07 18:22:55');
INSERT INTO `t_menu` VALUES (159, '查询', 3, 110, NULL, NULL, NULL, 1, 'support:dict:query', 'support:dict:query', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:23:51', 1, '2025-04-08 19:42:25');
INSERT INTO `t_menu` VALUES (160, '添加', 3, 110, NULL, NULL, NULL, 1, 'support:dict:add', 'support:dict:add', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:24:05', 1, '2025-04-08 19:43:02');
INSERT INTO `t_menu` VALUES (161, '更新', 3, 110, NULL, NULL, NULL, 1, 'support:dict:update', 'support:dict:update', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:24:34', 1, '2025-04-08 19:43:34');
INSERT INTO `t_menu` VALUES (162, '删除', 3, 110, NULL, NULL, NULL, 1, 'support:dict:delete', 'support:dict:delete', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:24:55', 1, '2025-04-08 19:43:52');
INSERT INTO `t_menu` VALUES (163, '新建', 3, 109, NULL, NULL, NULL, 1, 'support:config:add', 'support:config:add', NULL, 109, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:26:56', 1, '2023-10-07 18:16:17');
INSERT INTO `t_menu` VALUES (164, '编辑', 3, 109, NULL, NULL, NULL, 1, 'support:config:update', 'support:config:update', NULL, 109, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:27:07', 1, '2023-10-07 18:16:24');
INSERT INTO `t_menu` VALUES (165, '查询', 3, 47, NULL, NULL, NULL, 1, 'goods:query', 'goods:query', NULL, 47, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 19:55:39', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (166, '新建', 3, 47, NULL, NULL, NULL, 1, 'goods:add', 'goods:add', NULL, 47, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 19:56:00', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (167, '批量删除', 3, 47, NULL, NULL, NULL, 1, 'goods:batchDelete', 'goods:batchDelete', NULL, 47, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 19:56:15', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (168, '查询', 3, 147, 11, NULL, NULL, 1, 'support:helpDoc:query', 'support:helpDoc:query', NULL, 147, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:12:13', 1, '2023-10-07 14:05:49');
INSERT INTO `t_menu` VALUES (169, '新建', 3, 147, 12, NULL, NULL, 1, 'support:helpDoc:add', 'support:helpDoc:add', NULL, 147, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:12:37', 1, '2023-10-07 14:05:56');
INSERT INTO `t_menu` VALUES (170, '新建目录', 3, 147, 1, NULL, NULL, 1, 'support:helpDocCatalog:addCategory', 'support:helpDocCatalog:addCategory', NULL, 147, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:12:57', 1, '2023-10-07 14:06:38');
INSERT INTO `t_menu` VALUES (171, '修改目录', 3, 147, 2, NULL, NULL, 1, 'support:helpDocCatalog:update', 'support:helpDocCatalog:update', NULL, 147, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:13:46', 1, '2023-10-07 14:06:49');
INSERT INTO `t_menu` VALUES (173, '新建', 3, 78, NULL, NULL, NULL, 1, 'category:add', 'category:add', NULL, 78, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:17:02', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (174, '查询', 3, 78, NULL, NULL, NULL, 1, 'category:tree', 'category:tree', NULL, 78, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:17:22', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (175, '编辑', 3, 78, NULL, NULL, NULL, 1, 'category:update', 'category:update', NULL, 78, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:17:38', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (176, '删除', 3, 78, NULL, NULL, NULL, 1, 'category:delete', 'category:delete', NULL, 78, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:17:50', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (177, '新建', 3, 79, NULL, NULL, NULL, 1, 'category:add', 'custom:category:add', NULL, 78, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:17:02', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (178, '查询', 3, 79, NULL, NULL, NULL, 1, 'category:tree', 'custom:category:tree', NULL, 78, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:17:22', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (179, '编辑', 3, 79, NULL, NULL, NULL, 1, 'category:update', 'custom:category:update', NULL, 78, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:17:38', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (180, '删除', 3, 79, NULL, NULL, NULL, 1, 'category:delete', 'custom:category:delete', NULL, 78, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:17:50', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (181, '查询', 3, 144, NULL, NULL, NULL, 1, 'oa:enterprise:query', 'oa:enterprise:query', NULL, 144, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:25:14', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (182, '新建', 3, 144, NULL, NULL, NULL, 1, 'oa:enterprise:add', 'oa:enterprise:add', NULL, 144, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:25:25', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (183, '编辑', 3, 144, NULL, NULL, NULL, 1, 'oa:enterprise:update', 'oa:enterprise:update', NULL, 144, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:25:36', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (184, '删除', 3, 144, NULL, NULL, NULL, 1, 'oa:enterprise:delete', 'oa:enterprise:delete', NULL, 144, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:25:53', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (185, '查询', 3, 132, NULL, NULL, NULL, 1, 'oa:notice:query', 'oa:notice:query', NULL, 132, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:26:38', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (186, '新建', 3, 132, NULL, NULL, NULL, 1, 'oa:notice:add', 'oa:notice:add', NULL, 132, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:27:04', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (187, '编辑', 3, 132, NULL, NULL, NULL, 1, 'oa:notice:update', 'oa:notice:update', NULL, 132, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:27:15', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (188, '删除', 3, 132, NULL, NULL, NULL, 1, 'oa:notice:delete', 'oa:notice:delete', NULL, 132, 0, NULL, 0, 1, 0, 1, 1, '2022-10-16 20:27:23', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (190, '查询', 3, 152, NULL, NULL, NULL, 1, '', 'support:changeLog:query', NULL, 152, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:28:33', 1, '2023-10-07 14:25:05');
INSERT INTO `t_menu` VALUES (191, '新建', 3, 152, NULL, NULL, NULL, 1, 'support:changeLog:add', 'support:changeLog:add', NULL, 152, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:28:46', 1, '2023-10-07 14:24:15');
INSERT INTO `t_menu` VALUES (192, '批量删除', 3, 152, NULL, NULL, NULL, 1, 'support:changeLog:batchDelete', 'support:changeLog:batchDelete', NULL, 152, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:29:10', 1, '2023-10-07 14:24:22');
INSERT INTO `t_menu` VALUES (193, '文件管理', 2, 50, 20, '/support/file/file-list', '/support/file/file-list.vue', NULL, NULL, NULL, 'FolderOpenOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 11:26:11', 1, '2022-10-22 11:29:22');
INSERT INTO `t_menu` VALUES (194, '删除', 3, 47, NULL, NULL, NULL, 1, 'goods:delete', 'goods:delete', NULL, 47, 0, NULL, 0, 1, 0, 1, 1, '2022-10-21 20:00:12', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (195, '修改', 3, 47, NULL, NULL, NULL, 1, 'goods:update', 'goods:update', NULL, NULL, 0, NULL, 0, 1, 0, 1, 1, '2022-10-21 20:05:23', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (196, '查看详情', 3, 145, NULL, NULL, NULL, 1, 'oa:enterprise:detail', 'oa:enterprise:detail', NULL, NULL, 0, NULL, 0, 1, 0, 1, 1, '2022-10-21 20:16:47', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (198, '删除', 3, 152, NULL, NULL, NULL, 1, 'support:changeLog:delete', 'support:changeLog:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 20:42:34', 1, '2023-10-07 14:24:32');
INSERT INTO `t_menu` VALUES (199, '查询', 3, 109, NULL, NULL, NULL, 1, 'support:config:query', 'support:config:query', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 20:45:14', 1, '2023-10-07 18:16:27');
INSERT INTO `t_menu` VALUES (200, '查询', 3, 193, NULL, NULL, NULL, 1, 'support:file:query', 'support:file:query', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 20:47:23', 1, '2023-10-07 18:24:43');
INSERT INTO `t_menu` VALUES (201, '删除', 3, 147, 14, NULL, NULL, 1, 'support:helpDoc:delete', 'support:helpDoc:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 21:03:20', 1, '2023-10-07 14:07:02');
INSERT INTO `t_menu` VALUES (202, '更新', 3, 147, 13, NULL, NULL, 1, 'support:helpDoc:update', 'support:helpDoc:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 21:03:32', 1, '2023-10-07 14:06:56');
INSERT INTO `t_menu` VALUES (203, '查询', 3, 143, NULL, NULL, NULL, 1, 'support:loginLog:query', 'support:loginLog:query', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 21:05:11', 1, '2023-10-07 14:27:23');
INSERT INTO `t_menu` VALUES (204, '查询', 3, 81, NULL, NULL, NULL, 1, 'support:operateLog:query', 'support:operateLog:query', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-22 10:33:31', 1, '2023-10-07 14:27:56');
INSERT INTO `t_menu` VALUES (205, '详情', 3, 81, NULL, NULL, NULL, 1, 'support:operateLog:detail', 'support:operateLog:detail', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-22 10:33:49', 1, '2023-10-07 14:28:04');
INSERT INTO `t_menu` VALUES (206, '心跳监控', 2, 111, 1, '/support/heart-beat/heart-beat-list', '/support/heart-beat/heart-beat-list.vue', 1, NULL, NULL, 'FallOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-22 10:47:03', 1, '2022-10-22 18:32:52');
INSERT INTO `t_menu` VALUES (207, '更新', 3, 152, NULL, NULL, NULL, 1, 'support:changeLog:update', 'support:changeLog:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-22 11:51:32', 1, '2023-10-07 14:24:39');
INSERT INTO `t_menu` VALUES (212, '查询', 3, 117, NULL, NULL, NULL, 1, 'support:reload:query', 'support:reload:query', NULL, NULL, 0, NULL, 1, 1, 1, 0, 1, '2023-10-07 14:31:36', NULL, '2023-10-07 14:31:36');
INSERT INTO `t_menu` VALUES (213, '网络安全', 1, 0, 5, NULL, NULL, 1, NULL, NULL, 'SafetyCertificateOutlined', NULL, 0, NULL, 1, 1, 0, 0, 1, '2023-10-17 19:03:08', 1, '2023-12-01 19:38:00');
INSERT INTO `t_menu` VALUES (214, '登录失败锁定', 2, 213, 4, '/support/login-fail', '/support/login-fail/login-fail-list.vue', 1, NULL, NULL, 'LockOutlined', NULL, 0, NULL, 1, 1, 0, 0, 1, '2023-10-17 19:04:24', 44, '2024-08-13 14:16:26');
INSERT INTO `t_menu` VALUES (215, '接口加解密', 2, 213, 2, '/support/api-encrypt', '/support/api-encrypt/api-encrypt-index.vue', 1, NULL, NULL, 'CodepenCircleOutlined', NULL, 0, NULL, 1, 1, 0, 0, 1, '2023-10-24 11:49:28', 44, '2024-08-13 12:00:14');
INSERT INTO `t_menu` VALUES (216, '导出', 3, 47, NULL, NULL, NULL, 1, 'goods:exportGoods', 'goods:exportGoods', NULL, NULL, 0, NULL, 1, 1, 0, 1, 1, '2023-12-01 19:34:03', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (217, '导入', 3, 47, 3, NULL, NULL, 1, 'goods:importGoods', 'goods:importGoods', NULL, NULL, 0, NULL, 1, 1, 0, 1, 1, '2023-12-01 19:34:22', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (218, '文档中心', 1, 0, 4, NULL, NULL, 1, NULL, NULL, 'FileSearchOutlined', NULL, 0, NULL, 1, 1, 0, 0, 1, '2023-12-01 19:37:28', 1, '2023-12-01 19:37:51');
INSERT INTO `t_menu` VALUES (219, '部门管理', 2, 45, 1, '/organization/department', '/system/department/department-list.vue', 1, NULL, NULL, 'ApartmentOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2024-06-22 16:40:21', 1, '2024-07-02 20:15:17');
INSERT INTO `t_menu` VALUES (221, '定时任务', 2, 50, 25, '/job/list', '/support/job/job-list.vue', 1, NULL, NULL, 'AppstoreOutlined', NULL, 0, NULL, 1, 1, 0, 0, 2, '2024-06-25 17:57:40', 2, '2024-06-25 19:49:21');
INSERT INTO `t_menu` VALUES (228, '职务管理', 2, 45, 2, '/organization/position', '/system/position/position-list.vue', 1, NULL, NULL, 'ApartmentOutlined', NULL, 0, NULL, 1, 1, 0, 0, 1, '2024-06-29 11:11:09', 1, '2024-07-02 20:15:11');
INSERT INTO `t_menu` VALUES (229, '查询任务', 3, 221, NULL, NULL, NULL, 1, 'support:job:query', 'support:job:query', NULL, 221, 0, NULL, 1, 1, 0, 0, 2, '2024-06-29 11:14:15', 2, '2024-06-29 11:15:00');
INSERT INTO `t_menu` VALUES (230, '更新任务', 3, 221, NULL, NULL, NULL, 1, 'support:job:update', 'support:job:update', NULL, 221, 0, NULL, 1, 1, 0, 0, 2, '2024-06-29 11:15:40', NULL, '2024-06-29 11:15:40');
INSERT INTO `t_menu` VALUES (231, '执行任务', 3, 221, NULL, NULL, NULL, 1, 'support:job:execute', 'support:job:execute', NULL, 221, 0, NULL, 1, 1, 0, 0, 2, '2024-06-29 11:16:03', NULL, '2024-06-29 11:16:03');
INSERT INTO `t_menu` VALUES (232, '查询记录', 3, 221, NULL, NULL, NULL, 1, 'support:job:log:query', 'support:job:log:query', NULL, 221, 0, NULL, 1, 1, 0, 0, 2, '2024-06-29 11:16:37', NULL, '2024-06-29 11:16:37');
INSERT INTO `t_menu` VALUES (233, 'knife4j文档', 2, 218, 4, '/knife4j', NULL, 1, NULL, NULL, 'FileWordOutlined', NULL, 1, 'http://localhost:1024/doc.html', 1, 1, 0, 0, 1, '2024-07-02 20:23:50', 1, '2024-07-08 13:49:15');
INSERT INTO `t_menu` VALUES (234, 'swagger文档', 2, 218, 5, '/swagger', 'http://localhost:1024/swagger-ui/index.html', 1, NULL, NULL, 'ApiOutlined', NULL, 1, 'http://localhost:1024/swagger-ui/index.html', 1, 1, 0, 0, 1, '2024-07-02 20:35:43', 1, '2024-07-08 13:49:26');
INSERT INTO `t_menu` VALUES (250, '三级等保设置', 2, 213, 1, '/support/level3protect/level3-protect-config-index', '/support/level3protect/level3-protect-config-index.vue', 1, NULL, NULL, 'SafetyOutlined', NULL, 0, NULL, 1, 1, 0, 0, 44, '2024-08-13 11:41:02', 44, '2024-08-13 11:58:12');
INSERT INTO `t_menu` VALUES (251, '敏感数据脱敏', 2, 213, 3, '/support/level3protect/data-masking-list', '/support/level3protect/data-masking-list.vue', 1, NULL, NULL, 'FileProtectOutlined', NULL, 0, NULL, 1, 1, 0, 0, 44, '2024-08-13 11:58:00', 44, '2024-08-13 11:59:49');
INSERT INTO `t_menu` VALUES (252, '启用/禁用', 3, 110, NULL, NULL, NULL, 1, 'support:dict:updateDisabled', 'support:dict:updateDisabled', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2025-04-08 19:44:12', 1, '2025-04-08 19:46:03');
INSERT INTO `t_menu` VALUES (253, '查询字典数据', 3, 110, NULL, NULL, NULL, 1, 'support:dictData:query', 'support:dictData:query', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2025-04-08 19:46:47', NULL, '2025-04-08 19:46:47');
INSERT INTO `t_menu` VALUES (254, '添加字典数据', 3, 110, NULL, NULL, NULL, 1, 'support:dictData:add', 'support:dictData:add', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2025-04-08 19:48:00', NULL, '2025-04-08 19:48:00');
INSERT INTO `t_menu` VALUES (255, '更新字典数据', 3, 110, NULL, NULL, NULL, 1, 'support:dictData:update', 'support:dictData:update', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2025-04-08 19:48:19', NULL, '2025-04-08 19:48:19');
INSERT INTO `t_menu` VALUES (256, '删除字典数据', 3, 110, NULL, NULL, NULL, 1, 'support:dictData:delete', 'support:dictData:delete', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2025-04-08 19:48:38', NULL, '2025-04-08 19:48:38');
INSERT INTO `t_menu` VALUES (257, '启用/禁用字典数据', 3, 110, NULL, NULL, NULL, 1, 'support:dictData:updateDisabled', 'support:dictData:updateDisabled', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2025-04-08 19:48:57', NULL, '2025-04-08 19:48:57');
INSERT INTO `t_menu` VALUES (258, '查询企业员工', 3, 145, NULL, NULL, NULL, 1, 'oa:enterprise:queryEmployee', 'oa:enterprise:queryEmployee', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:11:46', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (259, '查询银行信息', 3, 145, NULL, NULL, NULL, 1, 'oa:bank:query', 'oa:bank:query', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:12:40', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (260, '查询发票信息', 3, 145, NULL, NULL, NULL, 1, 'oa:invoice:query', 'oa:invoice:query', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:12:56', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (261, '添加企业员工', 3, 145, NULL, NULL, NULL, 1, 'oa:enterprise:addEmployee', 'oa:enterprise:addEmployee', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:35:34', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (262, '删除企业员工', 3, 145, NULL, NULL, NULL, 1, 'oa:enterprise:deleteEmployee', 'oa:enterprise:deleteEmployee', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:40:17', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (263, '添加银行信息', 3, 145, NULL, NULL, NULL, 1, 'oa:bank:add', 'oa:bank:add', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:45:44', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (264, '更新银行信息', 3, 145, NULL, NULL, NULL, 1, 'oa:bank:update', 'oa:bank:update', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:46:02', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (265, '删除银行信息', 3, 145, NULL, NULL, NULL, 1, 'oa:bank:delete', 'oa:bank:delete', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:46:12', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (266, '添加发票信息', 3, 145, NULL, NULL, NULL, 1, 'oa:invoice:add', 'oa:invoice:add', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:46:30', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (267, '更新发票信息', 3, 145, NULL, NULL, NULL, 1, 'oa:invoice:update', 'oa:invoice:update', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:46:47', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (268, '删除发票信息', 3, 145, NULL, NULL, NULL, 1, 'oa:invoice:delete', 'oa:invoice:delete', NULL, 145, 0, NULL, 0, 1, 0, 1, 75, '2025-04-08 21:46:59', 1, '2025-09-25 15:37:59');
INSERT INTO `t_menu` VALUES (300, '消息管理', 2, 50, 30, '/message', '/support/message/message-list.vue', 1, NULL, NULL, 'MailOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2025-04-09 14:30:04', 1, '2025-04-10 20:19:36');
INSERT INTO `t_menu` VALUES (301, '设备表', 2, 0, NULL, '/device/list', '/business/device/device-list.vue', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 11:37:15', NULL, '2025-09-20 11:37:15');
INSERT INTO `t_menu` VALUES (302, '查询', 3, 301, NULL, NULL, NULL, 1, 'device:query', 'device:query', NULL, 301, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 11:37:15', NULL, '2025-09-20 11:37:15');
INSERT INTO `t_menu` VALUES (303, '添加', 3, 301, NULL, NULL, NULL, 1, 'device:add', 'device:add', NULL, 301, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 11:37:15', NULL, '2025-09-20 11:37:15');
INSERT INTO `t_menu` VALUES (304, '更新', 3, 301, NULL, NULL, NULL, 1, 'device:update', 'device:update', NULL, 301, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 11:37:15', NULL, '2025-09-20 11:37:15');
INSERT INTO `t_menu` VALUES (305, '删除', 3, 301, NULL, NULL, NULL, 1, 'device:delete', 'device:delete', NULL, 301, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 11:37:15', NULL, '2025-09-20 11:37:15');
INSERT INTO `t_menu` VALUES (306, '设备上报故障表', 2, 0, NULL, '/device-report-damage/list', '/business/device-report-damage/device-report-damage-list.vue', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 15:15:46', NULL, '2025-09-20 15:15:46');
INSERT INTO `t_menu` VALUES (307, '查询', 3, 306, NULL, NULL, NULL, 1, 'deviceReportDamage:query', 'deviceReportDamage:query', NULL, 306, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 15:15:46', NULL, '2025-09-20 15:15:46');
INSERT INTO `t_menu` VALUES (308, '添加', 3, 306, NULL, NULL, NULL, 1, 'deviceReportDamage:add', 'deviceReportDamage:add', NULL, 306, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 15:15:46', NULL, '2025-09-20 15:15:46');
INSERT INTO `t_menu` VALUES (309, '更新', 3, 306, NULL, NULL, NULL, 1, 'deviceReportDamage:update', 'deviceReportDamage:update', NULL, 306, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 15:15:47', NULL, '2025-09-20 15:15:47');
INSERT INTO `t_menu` VALUES (310, '删除', 3, 306, NULL, NULL, NULL, 1, 'deviceReportDamage:delete', 'deviceReportDamage:delete', NULL, 306, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 15:15:47', NULL, '2025-09-20 15:15:47');
INSERT INTO `t_menu` VALUES (311, '设备日志表', 2, 0, NULL, '/device-log/list', '/business/device-log/device-log-list.vue', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 16:01:01', NULL, '2025-09-20 16:01:01');
INSERT INTO `t_menu` VALUES (312, '查询', 3, 311, NULL, NULL, NULL, 1, 'deviceLog:query', 'deviceLog:query', NULL, 311, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 16:01:01', NULL, '2025-09-20 16:01:01');
INSERT INTO `t_menu` VALUES (313, '添加', 3, 311, NULL, NULL, NULL, 1, 'deviceLog:add', 'deviceLog:add', NULL, 311, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 16:01:01', NULL, '2025-09-20 16:01:01');
INSERT INTO `t_menu` VALUES (314, '更新', 3, 311, NULL, NULL, NULL, 1, 'deviceLog:update', 'deviceLog:update', NULL, 311, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 16:01:01', NULL, '2025-09-20 16:01:01');
INSERT INTO `t_menu` VALUES (315, '删除', 3, 311, NULL, NULL, NULL, 1, 'deviceLog:delete', 'deviceLog:delete', NULL, 311, 0, NULL, 0, 1, 0, 0, 1, '2025-09-20 16:01:01', NULL, '2025-09-20 16:01:01');
INSERT INTO `t_menu` VALUES (316, 'app', 2, 0, NULL, '/app', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2025-09-23 09:26:08', NULL, '2025-09-23 09:26:08');
INSERT INTO `t_menu` VALUES (317, '修改密码', 3, 316, NULL, NULL, NULL, 1, 'app:user:update:password', NULL, NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2025-09-23 09:27:58', NULL, '2025-09-23 09:27:58');
INSERT INTO `t_menu` VALUES (318, '分页查询设备', 3, 316, NULL, NULL, NULL, 1, 'app:device:query', NULL, NULL, 316, 0, NULL, 0, 1, 0, 0, 1, '2025-09-23 09:28:27', NULL, '2025-09-23 09:28:27');
INSERT INTO `t_menu` VALUES (319, '删除设备', 3, 316, NULL, NULL, NULL, 1, 'app:device:delete', NULL, NULL, 316, 0, NULL, 0, 1, 0, 0, 1, '2025-09-23 09:28:35', NULL, '2025-09-23 09:28:35');
INSERT INTO `t_menu` VALUES (320, '验证设备', 3, 316, NULL, NULL, NULL, 1, 'app:device:verify', NULL, NULL, 316, 0, NULL, 0, 1, 0, 0, 1, '2025-09-23 09:28:44', NULL, '2025-09-23 09:28:44');
INSERT INTO `t_menu` VALUES (321, '设备报损', 3, 316, NULL, NULL, NULL, 1, 'app:device:report', NULL, NULL, 316, 0, NULL, 0, 1, 0, 0, 1, '2025-09-23 09:28:53', NULL, '2025-09-23 09:28:53');
INSERT INTO `t_menu` VALUES (322, '分页查询设备日志', 3, 316, NULL, NULL, NULL, 1, 'app:deviceLog:query', NULL, NULL, 316, 0, NULL, 0, 1, 0, 0, 1, '2025-09-23 09:29:10', NULL, '2025-09-23 09:29:10');
INSERT INTO `t_menu` VALUES (323, '添加设备日志', 3, 316, NULL, NULL, NULL, 1, 'app:deviceLog:add', NULL, NULL, 316, 0, NULL, 0, 1, 0, 0, 1, '2025-09-23 09:29:21', NULL, '2025-09-23 09:29:21');
INSERT INTO `t_menu` VALUES (324, '统计设备日志', 3, 316, NULL, NULL, NULL, 1, 'app:deviceLog:statistic', NULL, NULL, 316, 0, NULL, 0, 1, 0, 0, 1, '2025-09-23 09:29:33', NULL, '2025-09-23 09:29:33');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `message_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `message_type` smallint(0) NOT NULL COMMENT '消息类型',
  `receiver_user_type` int(0) NOT NULL COMMENT '接收者用户类型',
  `receiver_user_id` bigint(0) NOT NULL COMMENT '接收者用户id',
  `data_id` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '相关数据id',
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `read_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否已读',
  `read_time` datetime(0) NULL DEFAULT NULL COMMENT '已读时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`message_id`) USING BTREE,
  INDEX `idx_msg`(`message_type`, `receiver_user_type`, `receiver_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (1, 1, 1, 1, 'null', '张三的对公付款单 【3000元】', '尊敬的各位技术大佬：\r\n\r\n1024创新实验室技术分享即将隆重举行\r\n\r\n现将有关会议事宜通知如下：\r\n\r\n一、会议内容\r\n\r\n1、研究探讨SmartAdmin的技术体系\r\n\r\n二、会议形式\r\n\r\n大会专题小会分组讨论;\r\n\r\n三、会议时间及地点\r\n\r\n会议报到时间：xxx1年6月14日\r\n\r\n会议报到地点：洛阳市', 0, '2024-09-02 23:00:54', '2024-06-27 01:14:07', '2024-09-03 20:44:19');
INSERT INTO `t_message` VALUES (2, 2, 1, 1, '234', '刘备的请假单【本周四】', '尊敬的各位技术大佬：\r\n\r\n1024创新实验室技术分享即将隆重举行\r\n\r\n现将有关会议事宜通知如下：\r\n\r\n一、会议内容\r\n\r\n1、研究探讨SmartAdmin的技术体系\r\n\r\n二、会议形式\r\n\r\n大会专题小会分组讨论;\r\n\r\n三、会议时间及地点\r\n\r\n会议报到时间：xxx1年6月14日\r\n\r\n会议报到地点：洛阳市', 0, '2024-09-02 23:00:50', '2024-07-04 16:09:49', '2024-09-03 20:44:20');
INSERT INTO `t_message` VALUES (3, 1, 1, 1, '23', '武松的物资采购单【Macbook Pro】', '尊敬的各位技术大佬：\r\n\r\n1024创新实验室技术分享即将隆重举行\r\n\r\n现将有关会议事宜通知如下：\r\n\r\n一、会议内容\r\n\r\n1、研究探讨SmartAdmin的技术体系\r\n\r\n二、会议形式\r\n\r\n大会专题小会分组讨论;\r\n\r\n三、会议时间及地点\r\n\r\n会议报到时间：xxx1年6月14日\r\n\r\n会议报到地点：洛阳市', 0, '2024-09-02 23:00:36', '2024-07-07 22:03:14', '2024-09-03 20:44:21');
INSERT INTO `t_message` VALUES (4, 1, 1, 1, '23', '孙悟空的出差申请【出差洛阳】', '尊敬的各位技术大佬：\r\n\r\n1024创新实验室技术分享即将隆重举行\r\n\r\n现将有关会议事宜通知如下：\r\n\r\n一、会议内容\r\n\r\n1、研究探讨SmartAdmin的技术体系\r\n\r\n二、会议形式\r\n\r\n大会专题小会分组讨论;\r\n\r\n三、会议时间及地点\r\n\r\n会议报到时间：xxx1年6月14日\r\n\r\n会议报到地点：洛阳市', 0, '2024-09-02 23:02:53', '2024-07-07 22:03:14', '2024-09-03 21:43:53');

-- ----------------------------
-- Table structure for t_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `t_operate_log`;
CREATE TABLE `t_operate_log`  (
  `operate_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `operate_user_id` bigint(0) NOT NULL COMMENT '用户id',
  `operate_user_type` int(0) NOT NULL COMMENT '用户类型',
  `operate_user_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名称',
  `module` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作模块',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '操作内容',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求路径',
  `method` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求方法',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回值',
  `ip` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求ip',
  `ip_region` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求ip地区',
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求user-agent',
  `success_flag` tinyint(0) NULL DEFAULT NULL COMMENT '请求结果 0失败 1成功',
  `fail_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '失败原因',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`operate_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4532 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_operate_log
-- ----------------------------
INSERT INTO `t_operate_log` VALUES (4499, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 ', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-20 11:05:07', '2025-09-20 11:05:07');
INSERT INTO `t_operate_log` VALUES (4500, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 ', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-20 11:05:08', '2025-09-20 11:05:08');
INSERT INTO `t_operate_log` VALUES (4501, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 ', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-20 13:54:03', '2025-09-20 13:54:03');
INSERT INTO `t_operate_log` VALUES (4502, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 ', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-20 13:54:04', '2025-09-20 13:54:04');
INSERT INTO `t_operate_log` VALUES (4503, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 ', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-20 15:09:36', '2025-09-20 15:09:36');
INSERT INTO `t_operate_log` VALUES (4504, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 ', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-20 15:09:36', '2025-09-20 15:09:36');
INSERT INTO `t_operate_log` VALUES (4505, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 ', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-20 15:56:59', '2025-09-20 15:56:59');
INSERT INTO `t_operate_log` VALUES (4506, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 ', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-20 15:56:59', '2025-09-20 15:56:59');
INSERT INTO `t_operate_log` VALUES (4507, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-23 09:20:26', '2025-09-23 09:20:26');
INSERT INTO `t_operate_log` VALUES (4508, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '127.0.0.1', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-23 09:20:26', '2025-09-23 09:20:26');
INSERT INTO `t_operate_log` VALUES (4509, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 11:09:50', '2025-09-25 11:09:50');
INSERT INTO `t_operate_log` VALUES (4510, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 11:09:50', '2025-09-25 11:09:50');
INSERT INTO `t_operate_log` VALUES (4511, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 11:14:19', '2025-09-25 11:14:19');
INSERT INTO `t_operate_log` VALUES (4512, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 11:14:19', '2025-09-25 11:14:19');
INSERT INTO `t_operate_log` VALUES (4513, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:40:06', '2025-09-25 13:40:06');
INSERT INTO `t_operate_log` VALUES (4514, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:40:07', '2025-09-25 13:40:07');
INSERT INTO `t_operate_log` VALUES (4515, 1, 1, '管理员', 'OA办公-通知公告', '通知公告类型-获取全部 @author 卓大', '/oa/noticeType/getAll', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.getAll', '', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:44:50', '2025-09-25 13:44:50');
INSERT INTO `t_operate_log` VALUES (4516, 1, 1, '管理员', 'OA办公-通知公告', '【管理】通知公告-分页查询 @author 卓大', '/oa/notice/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.query', '[{\"documentNumber\":\"\",\"keywords\":\"\",\"pageNum\":1,\"pageSize\":10}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:44:50', '2025-09-25 13:44:50');
INSERT INTO `t_operate_log` VALUES (4517, 1, 1, '管理员', 'OA办公-企业', '分页查询企业模块 @author 开云', '/oa/enterprise/page/query', 'com.seerbigdata.sa.admin.module.business.oa.enterprise.controller.EnterpriseController.queryByPage', '[{\"deletedFlag\":false,\"keywords\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:44:51', '2025-09-25 13:44:51');
INSERT INTO `t_operate_log` VALUES (4518, 1, 1, '管理员', 'OA办公-通知公告', '通知公告类型-获取全部 @author 卓大', '/oa/noticeType/getAll', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.getAll', '', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:44:52', '2025-09-25 13:44:52');
INSERT INTO `t_operate_log` VALUES (4519, 1, 1, '管理员', 'OA办公-通知公告', '【管理】通知公告-分页查询 @author 卓大', '/oa/notice/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.query', '[{\"documentNumber\":\"\",\"keywords\":\"\",\"pageNum\":1,\"pageSize\":10}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:44:52', '2025-09-25 13:44:52');
INSERT INTO `t_operate_log` VALUES (4520, 1, 1, '管理员', 'OA办公-企业', '分页查询企业模块 @author 开云', '/oa/enterprise/page/query', 'com.seerbigdata.sa.admin.module.business.oa.enterprise.controller.EnterpriseController.queryByPage', '[{\"deletedFlag\":false,\"keywords\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:44:53', '2025-09-25 13:44:53');
INSERT INTO `t_operate_log` VALUES (4521, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:53:30', '2025-09-25 13:53:30');
INSERT INTO `t_operate_log` VALUES (4522, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:53:30', '2025-09-25 13:53:30');
INSERT INTO `t_operate_log` VALUES (4523, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:53:37', '2025-09-25 13:53:37');
INSERT INTO `t_operate_log` VALUES (4524, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 13:53:37', '2025-09-25 13:53:37');
INSERT INTO `t_operate_log` VALUES (4525, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 14:14:53', '2025-09-25 14:14:53');
INSERT INTO `t_operate_log` VALUES (4526, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 14:14:53', '2025-09-25 14:14:53');
INSERT INTO `t_operate_log` VALUES (4527, 1, 1, '管理员', 'OA办公-企业', '分页查询企业模块 @author 开云', '/oa/enterprise/page/query', 'com.seerbigdata.sa.admin.module.business.oa.enterprise.controller.EnterpriseController.queryByPage', '[{\"deletedFlag\":false,\"keywords\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 14:15:04', '2025-09-25 14:15:04');
INSERT INTO `t_operate_log` VALUES (4528, 1, 1, '管理员', 'OA办公-通知公告', '通知公告类型-获取全部 @author 卓大', '/oa/noticeType/getAll', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.getAll', '', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 14:15:06', '2025-09-25 14:15:06');
INSERT INTO `t_operate_log` VALUES (4529, 1, 1, '管理员', 'OA办公-通知公告', '【管理】通知公告-分页查询 @author 卓大', '/oa/notice/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.query', '[{\"documentNumber\":\"\",\"keywords\":\"\",\"pageNum\":1,\"pageSize\":10}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 14:15:06', '2025-09-25 14:15:06');
INSERT INTO `t_operate_log` VALUES (4530, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":1,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 15:10:28', '2025-09-25 15:10:28');
INSERT INTO `t_operate_log` VALUES (4531, 1, 1, '管理员', 'OA办公-通知公告', '【员工】通知公告-查询全部 @author 卓大', '/oa/notice/employee/query', 'com.seerbigdata.sa.admin.module.business.oa.notice.controller.NoticeController.queryEmployeeNotice', '[{\"noticeTypeId\":2,\"pageNum\":1,\"pageSize\":6,\"searchCount\":false}]', '{\"code\":0,\"dataType\":1,\"msg\":\"操作成功\",\"ok\":true}', '172.20.0.165', '0|0|0|内网IP|内网IP', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 1, NULL, '2025-09-25 15:10:28', '2025-09-25 15:10:28');

-- ----------------------------
-- Table structure for t_password_log
-- ----------------------------
DROP TABLE IF EXISTS `t_password_log`;
CREATE TABLE `t_password_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `user_type` tinyint(0) NOT NULL COMMENT '用户类型',
  `old_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '旧密码',
  `new_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '新密码',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_and_type_index`(`user_id`, `user_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '密码修改记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_password_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position`  (
  `position_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '职务ID',
  `position_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '职务名称',
  `position_level` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职级',
  `sort` int(0) NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `deleted_flag` tinyint(1) NULL DEFAULT 0,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`position_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '职务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_position
-- ----------------------------
INSERT INTO `t_position` VALUES (3, '技术P7', 'L1', 3, '', 0, '2024-06-29 15:57:07', '2024-07-15 23:34:35');
INSERT INTO `t_position` VALUES (4, '技术P8', 'L2', 1, NULL, 0, '2024-07-15 23:34:14', '2024-07-15 23:34:23');
INSERT INTO `t_position` VALUES (5, '管理M5', 'L1', 4, NULL, 0, '2024-07-15 23:34:48', '2024-07-15 23:34:48');
INSERT INTO `t_position` VALUES (6, '管理M6', 'L2', 5, NULL, 0, '2024-07-15 23:35:00', '2024-07-15 23:35:00');

-- ----------------------------
-- Table structure for t_reload_item
-- ----------------------------
DROP TABLE IF EXISTS `t_reload_item`;
CREATE TABLE `t_reload_item`  (
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项名称',
  `args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数 可选',
  `identification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '运行标识',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`tag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'reload项目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_reload_item
-- ----------------------------
INSERT INTO `t_reload_item` VALUES ('system_config', '4', '234', '2024-08-13 14:14:30', '2019-04-18 11:48:27');

-- ----------------------------
-- Table structure for t_reload_result
-- ----------------------------
DROP TABLE IF EXISTS `t_reload_result`;
CREATE TABLE `t_reload_result`  (
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `identification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '运行标识',
  `args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `result` tinyint(0) UNSIGNED NOT NULL COMMENT '是否成功 ',
  `exception` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'reload结果' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_reload_result
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_code` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `role_code_uni`(`role_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '技术总监', NULL, '', '2022-10-19 20:24:09', '2019-06-21 12:09:34');
INSERT INTO `t_role` VALUES (34, '销售总监', 'cto', '', '2023-09-06 19:10:34', '2019-08-30 09:30:50');
INSERT INTO `t_role` VALUES (35, '总经理', NULL, '', '2019-08-30 09:31:05', '2019-08-30 09:31:05');
INSERT INTO `t_role` VALUES (36, '董事长', NULL, '', '2019-08-30 09:31:11', '2019-08-30 09:31:11');
INSERT INTO `t_role` VALUES (37, '财务', NULL, '', '2019-08-30 09:31:16', '2019-08-30 09:31:16');
INSERT INTO `t_role` VALUES (59, 'APP用户', 'app_user', NULL, '2025-09-23 09:32:34', '2025-09-23 09:23:04');

-- ----------------------------
-- Table structure for t_role_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `t_role_data_scope`;
CREATE TABLE `t_role_data_scope`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `data_scope_type` int(0) NOT NULL COMMENT '数据范围类型',
  `view_type` int(0) NOT NULL COMMENT '数据可见范围类型',
  `role_id` bigint(0) NOT NULL COMMENT '角色id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色的数据范围' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_data_scope
-- ----------------------------
INSERT INTO `t_role_data_scope` VALUES (67, 1, 2, 1, '2024-03-18 20:41:00', '2024-03-18 20:41:00');

-- ----------------------------
-- Table structure for t_role_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_role_employee`;
CREATE TABLE `t_role_employee`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NOT NULL COMMENT '角色id',
  `employee_id` bigint(0) NOT NULL COMMENT '员工id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_role_employee`(`role_id`, `employee_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 343 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色员工功能表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_employee
-- ----------------------------
INSERT INTO `t_role_employee` VALUES (325, 36, 63, '2022-10-19 20:25:26', '2022-10-19 20:25:26');
INSERT INTO `t_role_employee` VALUES (329, 34, 72, '2022-11-05 10:56:54', '2022-11-05 10:56:54');
INSERT INTO `t_role_employee` VALUES (330, 36, 72, '2022-11-05 10:56:54', '2022-11-05 10:56:54');
INSERT INTO `t_role_employee` VALUES (333, 1, 44, '2023-10-07 18:53:29', '2023-10-07 18:53:29');
INSERT INTO `t_role_employee` VALUES (334, 1, 47, '2023-10-07 18:55:00', '2023-10-07 18:55:00');
INSERT INTO `t_role_employee` VALUES (341, 1, 48, '2024-09-02 23:03:28', '2024-09-02 23:03:28');
INSERT INTO `t_role_employee` VALUES (342, 59, 75, '2025-09-23 09:24:08', '2025-09-23 09:24:08');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `role_menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint(0) NOT NULL COMMENT '角色id',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`role_menu_id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_menu_id`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 844 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色-菜单\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (236, 1, 138, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (237, 1, 132, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (238, 1, 142, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (239, 1, 149, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (240, 1, 150, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (241, 1, 185, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (242, 1, 186, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (243, 1, 187, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (244, 1, 188, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (245, 1, 145, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (246, 1, 196, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (247, 1, 144, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (248, 1, 181, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (249, 1, 183, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (250, 1, 184, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (251, 1, 165, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (252, 1, 47, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (253, 1, 48, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (254, 1, 137, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (255, 1, 166, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (256, 1, 194, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (257, 1, 78, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (258, 1, 173, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (259, 1, 174, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (260, 1, 175, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (261, 1, 176, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (262, 1, 50, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (263, 1, 26, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (264, 1, 40, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (265, 1, 105, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (266, 1, 106, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (267, 1, 109, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (268, 1, 163, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (269, 1, 164, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (270, 1, 199, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (271, 1, 110, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (272, 1, 159, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (273, 1, 160, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (274, 1, 161, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (275, 1, 162, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (276, 1, 130, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (277, 1, 157, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (278, 1, 158, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (279, 1, 133, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (280, 1, 117, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (281, 1, 156, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (282, 1, 193, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (283, 1, 200, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (284, 1, 220, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (285, 1, 45, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (286, 1, 219, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (287, 1, 46, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (288, 1, 91, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (289, 1, 92, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (290, 1, 93, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (291, 1, 94, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (292, 1, 95, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (293, 1, 96, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (294, 1, 86, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (295, 1, 87, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (296, 1, 88, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (297, 1, 76, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (298, 1, 97, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (299, 1, 98, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (300, 1, 99, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (301, 1, 100, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (302, 1, 101, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (303, 1, 102, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (304, 1, 103, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (305, 1, 104, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (306, 1, 213, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (307, 1, 214, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (308, 1, 143, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (309, 1, 203, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (310, 1, 215, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (311, 1, 218, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (312, 1, 147, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (313, 1, 170, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (314, 1, 171, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (315, 1, 168, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (316, 1, 169, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (317, 1, 202, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (318, 1, 201, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (319, 1, 148, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (320, 1, 152, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (321, 1, 190, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (322, 1, 191, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (323, 1, 192, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (324, 1, 198, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (325, 1, 207, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (326, 1, 111, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (327, 1, 206, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (328, 1, 81, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (329, 1, 204, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (330, 1, 205, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (331, 1, 122, '2024-06-30 23:21:37', '2024-06-30 23:21:37');
INSERT INTO `t_role_menu` VALUES (835, 59, 316, '2025-09-23 09:31:01', '2025-09-23 09:31:01');
INSERT INTO `t_role_menu` VALUES (836, 59, 317, '2025-09-23 09:31:01', '2025-09-23 09:31:01');
INSERT INTO `t_role_menu` VALUES (837, 59, 318, '2025-09-23 09:31:01', '2025-09-23 09:31:01');
INSERT INTO `t_role_menu` VALUES (838, 59, 319, '2025-09-23 09:31:01', '2025-09-23 09:31:01');
INSERT INTO `t_role_menu` VALUES (839, 59, 320, '2025-09-23 09:31:01', '2025-09-23 09:31:01');
INSERT INTO `t_role_menu` VALUES (840, 59, 321, '2025-09-23 09:31:01', '2025-09-23 09:31:01');
INSERT INTO `t_role_menu` VALUES (841, 59, 322, '2025-09-23 09:31:01', '2025-09-23 09:31:01');
INSERT INTO `t_role_menu` VALUES (842, 59, 323, '2025-09-23 09:31:01', '2025-09-23 09:31:01');
INSERT INTO `t_role_menu` VALUES (843, 59, 324, '2025-09-23 09:31:01', '2025-09-23 09:31:01');

-- ----------------------------
-- Table structure for t_serial_number
-- ----------------------------
DROP TABLE IF EXISTS `t_serial_number`;
CREATE TABLE `t_serial_number`  (
  `serial_number_id` int(0) NOT NULL,
  `business_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '业务名称',
  `format` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '格式[yyyy]表示年,[mm]标识月,[dd]表示日,[nnn]表示三位数字',
  `rule_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '规则格式。none没有周期, year 年周期, month月周期, day日周期',
  `init_number` int(0) UNSIGNED NOT NULL COMMENT '初始值',
  `step_random_range` int(0) UNSIGNED NOT NULL COMMENT '步长随机数',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `last_number` bigint(0) NULL DEFAULT NULL COMMENT '上次产生的单号, 默认为空',
  `last_time` datetime(0) NULL DEFAULT NULL COMMENT '上次产生的单号时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`serial_number_id`) USING BTREE,
  UNIQUE INDEX `key_name`(`business_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '单号生成器定义表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_serial_number
-- ----------------------------
INSERT INTO `t_serial_number` VALUES (1, '订单编号', 'DK[yyyy][mm][dd]NO[nnnnn]', 'day', 1000, 10, 'DK20201101NO321', 1, '2023-12-04 09:16:42', '2024-01-08 19:24:46', '2021-02-19 14:37:50');
INSERT INTO `t_serial_number` VALUES (2, '合同编号', 'HT[yyyy][mm][dd][nnnnn]-CX', 'none', 1, 1, '', 8, '2023-12-04 09:54:53', '2023-12-04 09:54:52', '2021-08-12 20:40:37');

-- ----------------------------
-- Table structure for t_serial_number_record
-- ----------------------------
DROP TABLE IF EXISTS `t_serial_number_record`;
CREATE TABLE `t_serial_number_record`  (
  `serial_number_id` int(0) NOT NULL,
  `record_date` date NOT NULL COMMENT '记录日期',
  `last_number` bigint(0) NOT NULL DEFAULT 0 COMMENT '最后更新值',
  `last_time` datetime(0) NOT NULL COMMENT '最后更新时间',
  `count` bigint(0) NOT NULL DEFAULT 0 COMMENT '更新次数',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  INDEX `uk_generator`(`serial_number_id`, `record_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'serial_number记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_serial_number_record
-- ----------------------------

-- ----------------------------
-- Table structure for t_smart_job
-- ----------------------------
DROP TABLE IF EXISTS `t_smart_job`;
CREATE TABLE `t_smart_job`  (
  `job_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `job_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_class` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务执行类',
  `trigger_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发类型',
  `trigger_value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发配置',
  `enabled_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否开启',
  `param` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数',
  `last_execute_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次执行时间',
  `last_execute_log_id` int(0) NULL DEFAULT NULL COMMENT '最后一次执行记录id',
  `sort` int(0) NOT NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `deleted_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `update_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新人',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务配置 @listen' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_smart_job
-- ----------------------------
INSERT INTO `t_smart_job` VALUES (1, '示例任务1', 'net.lab1024.sa.base.module.support.job.sample.SmartJobSample1', 'cron', '10 15 0/1 * * *', 1, '执行示例任务1', '2025-01-05 19:15:10', 7988, 1, '执行示例任务1', 1, '管理员', '2024-06-17 20:00:46', '2025-09-25 15:11:35');
INSERT INTO `t_smart_job` VALUES (2, '示例任务2', 'net.lab1024.sa.base.module.support.job.sample.SmartJobSample2', 'fixed_delay', '120', 1, '执行示例任务2', '2025-01-08 19:56:59', 8144, 2, '执行示例任务2', 1, '管理员', '2024-06-18 20:45:35', '2025-09-25 15:11:37');

-- ----------------------------
-- Table structure for t_smart_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_smart_job_log`;
CREATE TABLE `t_smart_job_log`  (
  `log_id` int(0) NOT NULL AUTO_INCREMENT,
  `job_id` int(0) NOT NULL COMMENT '任务id',
  `job_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '执行参数',
  `success_flag` tinyint(1) NOT NULL COMMENT '是否成功',
  `execute_start_time` datetime(0) NOT NULL COMMENT '执行开始时间',
  `execute_time_millis` int(0) NULL DEFAULT NULL COMMENT '执行时长',
  `execute_end_time` datetime(0) NULL DEFAULT NULL COMMENT '执行结束时间',
  `execute_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ip',
  `process_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '进程id',
  `program_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '程序目录',
  `create_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `idx_job_id`(`job_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7933 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务-执行记录 @listen' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_smart_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_table_column
-- ----------------------------
DROP TABLE IF EXISTS `t_table_column`;
CREATE TABLE `t_table_column`  (
  `table_column_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `user_type` int(0) NOT NULL COMMENT '用户类型',
  `table_id` int(0) NOT NULL COMMENT '表格id',
  `columns` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '具体的表格列，存入的json',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`table_column_id`) USING BTREE,
  UNIQUE INDEX `uni_employee_table`(`user_id`, `table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '表格的自定义列存储' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_table_column
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
