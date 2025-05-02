/*
 Navicat Premium Data Transfer

 Source Server         : TFD
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : 10.33.138.6:3306
 Source Schema         : vote

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 10/04/2025 20:52:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 561 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (556, 'hospital_drug_inventory', '库存药品信息', NULL, NULL, 'HospitalDrugInventory', 'crud', 'element-plus', 'com.ruoyi.hospital', 'hospital', 'hospitalInventory', '库存药品', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2142\"}', 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:54:45', NULL);
INSERT INTO `gen_table` VALUES (557, 'hospital_nursing_record', '病人护理信息', NULL, NULL, 'HospitalNursingRecord', 'crud', 'element-plus', 'com.ruoyi.hospital', 'hospital', 'hospitalRecord', '护理日志', 'ruoyi', '0', '/', '{\"parentMenuId\":2141}', 'admin', '2025-04-09 17:12:50', '', '2025-04-09 18:02:41', NULL);
INSERT INTO `gen_table` VALUES (559, 'hospital_prescription_management', '中药方信息', NULL, NULL, 'HospitalPrescriptionManagement', 'crud', 'element-plus', 'com.ruoyi.hospital', 'hospital', 'hospitalManagement', '药方管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2142}', 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:53:28', NULL);
INSERT INTO `gen_table` VALUES (560, 'hospital_patient_info', '病人的基本信息', NULL, NULL, 'HospitalPatientInfo', 'crud', 'element-plus', 'com.ruoyi.hospital', 'hospital', 'hospitalInfo', '就诊信息', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2143\"}', 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12299 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1634, 111, 'meeting_id', '会议id', 'bigint(20)', 'Long', 'meetingId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:09');
INSERT INTO `gen_table_column` VALUES (1635, 111, 'file_id', '模型文件id', 'bigint(20)', 'Long', 'fileId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:09');
INSERT INTO `gen_table_column` VALUES (1636, 111, 'meeting_theme', '会议主题', 'varchar(255)', 'String', 'meetingTheme', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:09');
INSERT INTO `gen_table_column` VALUES (1637, 111, 'meeting_content', '主要内容', 'varchar(500)', 'String', 'meetingContent', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'editor', '', 4, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:09');
INSERT INTO `gen_table_column` VALUES (1638, 111, 'meeting_start_time', '会议开始时间', 'datetime', 'Date', 'meetingStartTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:09');
INSERT INTO `gen_table_column` VALUES (1639, 111, 'meeting_end_time', '会议结束时间', 'datetime', 'Date', 'meetingEndTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:10');
INSERT INTO `gen_table_column` VALUES (1640, 111, 'meeting_state', '会议状态  0 未开始  1 进行中  2 已结束', 'tinyint(2)', 'Integer', 'meetingState', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:10');
INSERT INTO `gen_table_column` VALUES (1641, 111, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:10');
INSERT INTO `gen_table_column` VALUES (1642, 111, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:10');
INSERT INTO `gen_table_column` VALUES (1643, 111, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:10');
INSERT INTO `gen_table_column` VALUES (1644, 111, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2024-05-31 10:15:51', '', '2024-05-31 10:16:10');
INSERT INTO `gen_table_column` VALUES (12252, 556, 'drug_id', '药品的id', 'int', 'Long', 'drugId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:54:45');
INSERT INTO `gen_table_column` VALUES (12253, 556, 'drug_name', '药品名称', 'varchar(100)', 'String', 'drugName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:54:45');
INSERT INTO `gen_table_column` VALUES (12254, 556, 'specification', '药品规格', 'varchar(50)', 'String', 'specification', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:54:45');
INSERT INTO `gen_table_column` VALUES (12255, 556, 'unit_price', '药品单价', 'decimal(10,2)', 'BigDecimal', 'unitPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:54:45');
INSERT INTO `gen_table_column` VALUES (12256, 556, 'applicable_symptoms', '药品适用症状', 'varchar(200)', 'String', 'applicableSymptoms', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:54:45');
INSERT INTO `gen_table_column` VALUES (12257, 556, 'stock_quantity', '药品库存数量', 'int', 'Long', 'stockQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:54:45');
INSERT INTO `gen_table_column` VALUES (12258, 556, 'production_date', '药品生产日期', 'date', 'Date', 'productionDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:54:45');
INSERT INTO `gen_table_column` VALUES (12259, 556, 'expiration_date', '药品过期日期', 'date', 'Date', 'expirationDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:54:45');
INSERT INTO `gen_table_column` VALUES (12260, 557, 'record_id', 'id', 'int', 'Long', 'recordId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 18:02:41');
INSERT INTO `gen_table_column` VALUES (12261, 557, 'patient_id', '关联的病人ID', 'int', 'Long', 'patientId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 18:02:41');
INSERT INTO `gen_table_column` VALUES (12262, 557, 'nursing_date', '护理日期', 'date', 'Date', 'nursingDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 18:02:41');
INSERT INTO `gen_table_column` VALUES (12263, 557, 'nursing_content', '护理内容', 'text', 'String', 'nursingContent', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 5, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 18:02:41');
INSERT INTO `gen_table_column` VALUES (12264, 557, 'nurse_name', '负责护理的护士姓名', 'varchar(50)', 'String', 'nurseName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 18:02:41');
INSERT INTO `gen_table_column` VALUES (12275, 559, 'prescription_id', '药方id', 'int', 'Long', 'prescriptionId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:53:28');
INSERT INTO `gen_table_column` VALUES (12276, 559, 'dosage', '药方剂量', 'varchar(20)', 'String', 'dosage', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:53:28');
INSERT INTO `gen_table_column` VALUES (12277, 559, 'usage_instructions', '药方使用说明', 'text', 'String', 'usageInstructions', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:53:28');
INSERT INTO `gen_table_column` VALUES (12278, 559, 'prescription_date', '药方开具日期', 'date', 'Date', 'prescriptionDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:53:28');
INSERT INTO `gen_table_column` VALUES (12279, 559, 'applicable_symptoms', '药方适用症状', 'varchar(200)', 'String', 'applicableSymptoms', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:53:28');
INSERT INTO `gen_table_column` VALUES (12280, 559, 'doctor_name', '医生姓名', 'varchar(50)', 'String', 'doctorName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2025-04-09 17:12:50', '', '2025-04-09 17:53:28');
INSERT INTO `gen_table_column` VALUES (12281, 557, 'patient_name', '病人姓名', 'varchar(100)', 'String', 'patientName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 3, '', '2025-04-09 17:51:40', '', '2025-04-09 18:02:41');
INSERT INTO `gen_table_column` VALUES (12282, 556, 'directions', '说明书', 'varchar(255)', 'String', 'directions', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'fileUpload', '', 9, '', '2025-04-09 17:54:29', '', '2025-04-09 17:54:45');
INSERT INTO `gen_table_column` VALUES (12286, 560, 'patient_id', 'id', 'int', 'Long', 'patientId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12287, 560, 'patient_name', '病人姓名', 'varchar(50)', 'String', 'patientName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12288, 560, 'gender', '病人性别', 'varchar(10)', 'String', 'gender', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12289, 560, 'age', '病人年龄', 'int', 'Long', 'age', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12290, 560, 'contact_number', '病人联系电话', 'varchar(20)', 'String', 'contactNumber', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12291, 560, 'admission_date', '病人入院日期', 'date', 'Date', 'admissionDate', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 6, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12292, 560, 'discharge_date', '病人出院日期', 'date', 'Date', 'dischargeDate', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 7, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12293, 560, 'medical_history', '病人病史', 'text', 'String', 'medicalHistory', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 8, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12294, 560, 'allergy_status', '病人过敏情况', 'varchar(200)', 'String', 'allergyStatus', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12295, 560, 'is_admission', '是否住院治疗', 'varchar(10)', 'String', 'isAdmission', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12296, 560, 'patient_png', '病人头像', 'varchar(255)', 'String', 'patientPng', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', 11, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12297, 560, 'patient_state', '病人状态', 'varchar(255)', 'String', 'patientState', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');
INSERT INTO `gen_table_column` VALUES (12298, 560, 'treatment_plan', '治疗方案', 'varchar(255)', 'String', 'treatmentPlan', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 13, 'admin', '2025-04-09 20:20:43', '', '2025-04-09 20:22:12');

-- ----------------------------
-- Table structure for hospital_drug_inventory
-- ----------------------------
DROP TABLE IF EXISTS `hospital_drug_inventory`;
CREATE TABLE `hospital_drug_inventory`  (
  `drug_id` int NOT NULL AUTO_INCREMENT COMMENT '药品的id',
  `drug_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '药品名称',
  `specification` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品规格',
  `unit_price` decimal(10, 2) NOT NULL COMMENT '药品单价',
  `applicable_symptoms` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品适用症状',
  `stock_quantity` int NOT NULL COMMENT '药品库存数量',
  `production_date` date NULL DEFAULT NULL COMMENT '药品生产日期',
  `expiration_date` date NULL DEFAULT NULL COMMENT '药品过期日期',
  `directions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '说明书',
  PRIMARY KEY (`drug_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '库存药品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospital_drug_inventory
-- ----------------------------
INSERT INTO `hospital_drug_inventory` VALUES (1, '阿司匹林', '100mg*30片', 15.00, '解热、镇痛、抗炎', 0, '2023-10-01', '2022-10-06', '1');
INSERT INTO `hospital_drug_inventory` VALUES (2, '布洛芬', '200mg*20片', 20.00, '止痛、退热', 120, '2023-11-01', '2025-11-01', NULL);
INSERT INTO `hospital_drug_inventory` VALUES (3, '胰岛素', '400单位/支', 50.00, '糖尿病', 80, '2023-12-01', '2025-12-01', NULL);
INSERT INTO `hospital_drug_inventory` VALUES (4, '硝酸甘油', '0.5mg*25片', 30.00, '心绞痛', 90, '2024-01-01', '2026-01-01', NULL);
INSERT INTO `hospital_drug_inventory` VALUES (5, '阿莫西林', '250mg*24粒', 25.00, '呼吸道感染', 110, '2024-02-01', '2026-02-01', NULL);
INSERT INTO `hospital_drug_inventory` VALUES (6, '奥美拉唑', '20mg*14片', 35.00, '胃炎、胃溃疡', 70, '2024-03-01', '2026-03-01', NULL);
INSERT INTO `hospital_drug_inventory` VALUES (7, '消炎利胆片', '0.25g*100片', 18.00, '胆囊炎', 105, '2024-04-01', '2026-04-01', NULL);
INSERT INTO `hospital_drug_inventory` VALUES (8, '双氯芬酸钠', '25mg*20片', 22.00, '关节炎疼痛', 95, '2024-05-01', '2026-05-01', NULL);
INSERT INTO `hospital_drug_inventory` VALUES (9, '氨溴索', '30mg*20片', 28.00, '咳嗽、咳痰', 130, '2024-06-01', '2026-06-01', NULL);
INSERT INTO `hospital_drug_inventory` VALUES (10, '氯雷他定', '10mg*6片', 23.00, '过敏症状', 85, '2024-07-01', '2026-07-01', NULL);

-- ----------------------------
-- Table structure for hospital_nursing_record
-- ----------------------------
DROP TABLE IF EXISTS `hospital_nursing_record`;
CREATE TABLE `hospital_nursing_record`  (
  `record_id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `patient_id` int NOT NULL COMMENT '关联的病人ID',
  `patient_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人姓名',
  `nursing_date` datetime NOT NULL COMMENT '护理日期',
  `nursing_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '护理内容',
  `nurse_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '负责护理的护士姓名',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病人护理信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospital_nursing_record
-- ----------------------------
INSERT INTO `hospital_nursing_record` VALUES (1, 1, NULL, '2024-01-02 00:00:00', '测量血压，正常', '护士A');
INSERT INTO `hospital_nursing_record` VALUES (2, 2, NULL, '2024-02-06 00:00:00', '体温检测，正常', '护士B');
INSERT INTO `hospital_nursing_record` VALUES (3, 3, NULL, '2024-03-11 00:00:00', '注射胰岛素', '护士C');
INSERT INTO `hospital_nursing_record` VALUES (4, 4, NULL, '2024-04-16 00:00:00', '心脏监护', '护士D');
INSERT INTO `hospital_nursing_record` VALUES (5, 5, NULL, '2024-05-21 00:00:00', '常规检查', '护士E');
INSERT INTO `hospital_nursing_record` VALUES (6, 6, NULL, '2024-06-26 00:00:00', '胃部护理', '护士F');
INSERT INTO `hospital_nursing_record` VALUES (7, 7, NULL, '2024-07-31 00:00:00', '腹部检查', '护士G');
INSERT INTO `hospital_nursing_record` VALUES (8, 8, NULL, '2024-08-06 00:00:00', '关节护理', '护士H');
INSERT INTO `hospital_nursing_record` VALUES (9, 9, NULL, '2024-09-11 00:00:00', '呼吸道护理', '护士I');
INSERT INTO `hospital_nursing_record` VALUES (10, 10, NULL, '2024-10-16 00:00:00', '过敏观察', '护士J');
INSERT INTO `hospital_nursing_record` VALUES (11, 15, '豆荣旭', '2025-04-03 00:00:00', '1', '管理员');
INSERT INTO `hospital_nursing_record` VALUES (12, 15, '豆荣旭', '2025-04-03 00:00:00', '1', '管理员');
INSERT INTO `hospital_nursing_record` VALUES (13, 15, '豆荣旭', '2025-04-10 00:00:00', '1', '管理员');
INSERT INTO `hospital_nursing_record` VALUES (14, 16, '豆荣旭', '2025-04-02 00:00:00', '1', '周杰伦');

-- ----------------------------
-- Table structure for hospital_patient_info
-- ----------------------------
DROP TABLE IF EXISTS `hospital_patient_info`;
CREATE TABLE `hospital_patient_info`  (
  `patient_id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `patient_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人姓名',
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人性别',
  `age` int NULL DEFAULT NULL COMMENT '病人年龄',
  `contact_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人联系电话',
  `admission_date` date NULL DEFAULT NULL COMMENT '病人入院日期',
  `discharge_date` date NULL DEFAULT NULL COMMENT '病人出院日期',
  `medical_history` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '病人病史',
  `allergy_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人过敏情况',
  `is_admission` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否住院治疗',
  `patient_png` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人头像',
  `patient_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '病人状态',
  `treatment_plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '治疗方案',
  PRIMARY KEY (`patient_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病人的基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospital_patient_info
-- ----------------------------
INSERT INTO `hospital_patient_info` VALUES (15, '豆荣旭', '男', 12, '178', '2025-04-09', '2025-04-11', '6', NULL, '是', NULL, '2', '0');
INSERT INTO `hospital_patient_info` VALUES (16, '豆荣旭', '男', 12, '178', '2025-04-09', '2025-04-10', '6', NULL, '是', NULL, '1', '0');
INSERT INTO `hospital_patient_info` VALUES (20, '1', '1', 1, '1', NULL, NULL, '1', '1', NULL, NULL, '0', NULL);

-- ----------------------------
-- Table structure for hospital_prescription_management
-- ----------------------------
DROP TABLE IF EXISTS `hospital_prescription_management`;
CREATE TABLE `hospital_prescription_management`  (
  `prescription_id` int NOT NULL AUTO_INCREMENT COMMENT '药方id',
  `dosage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '药方剂量',
  `usage_instructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '药方使用说明',
  `prescription_date` date NOT NULL COMMENT '药方开具日期',
  `applicable_symptoms` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药方适用症状',
  `doctor_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '开具药方的医生姓名',
  PRIMARY KEY (`prescription_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '药方信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospital_prescription_management
-- ----------------------------
INSERT INTO `hospital_prescription_management` VALUES (1, '3盒阿司匹林', '每日三次，饭后服用', '2024-01-02', '头痛、发热', '医生A');
INSERT INTO `hospital_prescription_management` VALUES (2, '2片胰岛素', '每日两次，饭后服用', '2024-02-06', '牙痛、痛经', '医生B');
INSERT INTO `hospital_prescription_management` VALUES (3, '1支胰岛素', '每日一次，皮下注射', '2024-03-11', '糖尿病', '医生C');
INSERT INTO `hospital_prescription_management` VALUES (4, '1片硝酸甘油', '发作时舌下含服', '2024-04-16', '心绞痛', '医生D');
INSERT INTO `hospital_prescription_management` VALUES (5, '2粒硝酸甘油', '每日三次，饭前服用', '2024-05-21', '呼吸道感染', '医生E');
INSERT INTO `hospital_prescription_management` VALUES (6, '1硝酸甘油', '每日一次，空腹服用', '2024-06-26', '胃炎、胃痛', '医生F');
INSERT INTO `hospital_prescription_management` VALUES (7, '6片硝酸甘油', '每日三次，饭后服用', '2024-07-31', '胆囊炎', '医生G');
INSERT INTO `hospital_prescription_management` VALUES (8, '1片硝酸甘油', '每日两次，饭后服用', '2024-08-06', '关节炎疼痛', '医生H');
INSERT INTO `hospital_prescription_management` VALUES (9, '1片硝酸甘油', '每日三次，饭后服用', '2024-09-11', '咳嗽、咳痰', '医生I');
INSERT INTO `hospital_prescription_management` VALUES (10, '1片硝酸甘油', '每日一次，空腹服用', '2024-10-16', '过敏症状', '医生J');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-08-22 15:28:03', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-08-22 15:28:04', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-08-22 15:28:04', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-08-22 15:28:05', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-08-22 15:28:05', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-08-22 15:28:06', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '医院', 0, '', '', '', '0', '0', 'admin', NULL, 'admin', '2025-04-10 15:08:10');
INSERT INTO `sys_dept` VALUES (204, 100, '0,100', '骨科', 0, NULL, NULL, NULL, '0', '0', 'admin', '2025-04-01 11:26:02', 'admin', '2025-04-10 15:08:16');
INSERT INTO `sys_dept` VALUES (205, 100, '0,100', '耳鼻科', 0, NULL, NULL, NULL, '0', '0', 'admin', '2025-04-01 11:26:29', 'admin', '2025-04-10 15:08:31');
INSERT INTO `sys_dept` VALUES (206, 100, '0,100', '内脏科', 0, NULL, NULL, NULL, '0', '0', 'admin', '2025-04-01 11:26:36', 'admin', '2025-04-10 15:08:37');
INSERT INTO `sys_dept` VALUES (207, 100, '0,100', '外科', 0, NULL, NULL, NULL, '0', '0', 'admin', '2025-04-01 11:26:44', 'admin', '2025-04-10 15:08:42');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-08-22 15:27:47', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-08-22 15:27:47', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-08-22 15:27:48', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-08-22 15:27:48', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-08-22 15:27:49', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-08-22 15:27:49', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-08-22 15:27:49', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-08-22 15:27:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-08-22 15:27:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-08-22 15:27:51', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-08-22 15:27:51', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-08-22 15:27:52', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-08-22 15:27:52', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-08-22 15:27:53', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-08-22 15:27:54', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-08-22 15:27:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-08-22 15:27:55', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-08-22 15:27:56', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-08-22 15:27:56', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-08-22 15:27:57', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-08-22 15:27:57', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-08-22 15:27:58', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-08-22 15:27:58', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-08-22 15:27:59', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-08-22 15:27:59', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-08-22 15:28:00', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-08-22 15:28:00', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-08-22 15:28:01', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-08-22 15:28:01', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (102, 0, '全国人民代表大会常务委员会', '全国人民代表大会常务委员会', 'issuing_unit', NULL, 'default', 'N', '0', 'admin', '2025-03-30 11:53:14', 'admin', '2025-03-30 11:53:29', NULL);
INSERT INTO `sys_dict_data` VALUES (103, 0, '国务院', '国务院', 'issuing_unit', NULL, 'default', 'N', '0', 'admin', '2025-03-30 11:53:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 0, '地方人民代表大会及其常务委员会', '地方人民代表大会及其常务委员会', 'issuing_unit', NULL, 'default', 'N', '0', 'admin', '2025-03-30 11:53:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 0, '存储', '存储', 'rule_category', NULL, 'default', 'N', '0', 'admin', '2025-03-30 16:00:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 0, '运输', '运输', 'rule_category', NULL, 'default', 'N', '0', 'admin', '2025-03-30 16:00:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 0, '销售', '销售', 'rule_category', NULL, 'default', 'N', '0', 'admin', '2025-03-30 16:00:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 0, '重大隐患', '重大隐患', 'severity', NULL, 'default', 'N', '0', 'admin', '2025-03-30 16:32:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 0, '较大隐患', '较大隐患', 'severity', NULL, 'default', 'N', '0', 'admin', '2025-03-30 16:33:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 0, '一般隐患', '一般隐患', 'severity', NULL, 'default', 'N', '0', 'admin', '2025-03-30 16:33:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 0, '轻微隐患', '轻微隐患', 'severity', NULL, 'default', 'N', '0', 'admin', '2025-03-30 16:33:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 0, '计算机', '计算机', 'level', NULL, 'default', 'N', '0', 'admin', '2025-03-31 19:29:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 0, '会计', '会计', 'level', NULL, 'default', 'N', '0', 'admin', '2025-03-31 19:29:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 0, '农学', '农学', 'level', NULL, 'default', 'N', '0', 'admin', '2025-03-31 19:30:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 0, '机电', '机电', 'level', NULL, 'default', 'N', '0', 'admin', '2025-03-31 19:30:09', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-08-22 15:27:41', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-08-22 15:27:41', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-08-22 15:27:42', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-08-22 15:27:42', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-08-22 15:27:43', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-08-22 15:27:43', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-08-22 15:27:44', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-08-22 15:27:44', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-08-22 15:27:45', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-08-22 15:27:45', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '颁布机关/单位', 'issuing_unit', '0', 'admin', '2025-03-27 17:10:09', 'admin', '2025-03-30 11:52:50', NULL);
INSERT INTO `sys_dict_type` VALUES (101, '规则类别', 'rule_category', '0', 'admin', '2025-03-30 16:00:38', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '隐患的严重程度', 'severity', '0', 'admin', '2025-03-30 16:32:31', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '专业', 'level', '0', 'admin', '2025-03-31 19:29:37', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-08-22 15:28:08', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-08-22 15:28:09', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-08-22 15:28:09', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-26 14:55:42');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-26 15:19:27');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-26 16:13:20');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-27 09:11:57');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-27 15:40:04');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-28 08:52:42');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-28 11:21:20');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-28 14:08:27');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-08-28 17:09:02');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-08-28 17:09:06');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-28 17:09:09');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-29 10:08:18');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-08-29 11:04:24');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-29 11:04:33');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-08-29 14:24:43');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-08-29 14:24:47');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-29 14:24:55');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-29 15:29:10');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-29 16:14:55');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-08-30 08:46:34');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 08:50:09');
INSERT INTO `sys_logininfor` VALUES (121, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 11:19:33');
INSERT INTO `sys_logininfor` VALUES (122, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-08-30 11:19:59');
INSERT INTO `sys_logininfor` VALUES (123, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 11:20:15');
INSERT INTO `sys_logininfor` VALUES (124, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-08-30 11:21:01');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 11:21:07');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-08-30 11:49:57');
INSERT INTO `sys_logininfor` VALUES (127, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 11:50:03');
INSERT INTO `sys_logininfor` VALUES (128, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-08-30 11:50:14');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 11:50:19');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-08-30 11:50:36');
INSERT INTO `sys_logininfor` VALUES (131, 'cni230wa060', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-08-30 11:50:41');
INSERT INTO `sys_logininfor` VALUES (132, 'cni230wa060', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-08-30 11:50:50');
INSERT INTO `sys_logininfor` VALUES (133, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-08-30 11:51:04');
INSERT INTO `sys_logininfor` VALUES (134, 'cni230wa060', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 11:51:47');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 14:00:50');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-08-30 14:05:44');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 14:06:12');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-08-30 14:06:26');
INSERT INTO `sys_logininfor` VALUES (139, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 14:06:32');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-08-30 14:35:38');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 14:35:42');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-08-30 15:20:06');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 11:00:24');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 15:37:00');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-02 15:45:09');
INSERT INTO `sys_logininfor` VALUES (146, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 15:53:57');
INSERT INTO `sys_logininfor` VALUES (147, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-02 15:56:28');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:00:18');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:00:31');
INSERT INTO `sys_logininfor` VALUES (150, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:00:47');
INSERT INTO `sys_logininfor` VALUES (151, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:00:54');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-02 16:01:00');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:01:06');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:01:18');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:01:51');
INSERT INTO `sys_logininfor` VALUES (156, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:02:03');
INSERT INTO `sys_logininfor` VALUES (157, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:02:30');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:02:40');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:03:21');
INSERT INTO `sys_logininfor` VALUES (160, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:03:36');
INSERT INTO `sys_logininfor` VALUES (161, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:08:27');
INSERT INTO `sys_logininfor` VALUES (162, 'cni23334337', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:08:59');
INSERT INTO `sys_logininfor` VALUES (163, 'cni23334337', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:10:28');
INSERT INTO `sys_logininfor` VALUES (164, 'cni23015308', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:10:40');
INSERT INTO `sys_logininfor` VALUES (165, 'cni23015308', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:12:03');
INSERT INTO `sys_logininfor` VALUES (166, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:12:13');
INSERT INTO `sys_logininfor` VALUES (167, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:13:00');
INSERT INTO `sys_logininfor` VALUES (168, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 16:21:57');
INSERT INTO `sys_logininfor` VALUES (169, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:36:23');
INSERT INTO `sys_logininfor` VALUES (170, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:36:43');
INSERT INTO `sys_logininfor` VALUES (171, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:49:32');
INSERT INTO `sys_logininfor` VALUES (172, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:50:17');
INSERT INTO `sys_logininfor` VALUES (173, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:50:49');
INSERT INTO `sys_logininfor` VALUES (174, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:50:56');
INSERT INTO `sys_logininfor` VALUES (175, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 16:51:02');
INSERT INTO `sys_logininfor` VALUES (176, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 16:51:16');
INSERT INTO `sys_logininfor` VALUES (177, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:52:23');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:52:33');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:53:02');
INSERT INTO `sys_logininfor` VALUES (180, 'cni23221047', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:53:31');
INSERT INTO `sys_logininfor` VALUES (181, 'cni23221047', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 16:53:45');
INSERT INTO `sys_logininfor` VALUES (182, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-02 16:54:26');
INSERT INTO `sys_logininfor` VALUES (183, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:54:29');
INSERT INTO `sys_logininfor` VALUES (184, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 16:56:16');
INSERT INTO `sys_logininfor` VALUES (185, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:56:26');
INSERT INTO `sys_logininfor` VALUES (186, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 16:56:53');
INSERT INTO `sys_logininfor` VALUES (187, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 16:59:14');
INSERT INTO `sys_logininfor` VALUES (188, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 16:59:21');
INSERT INTO `sys_logininfor` VALUES (189, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 16:59:22');
INSERT INTO `sys_logininfor` VALUES (190, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:59:25');
INSERT INTO `sys_logininfor` VALUES (191, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 16:59:47');
INSERT INTO `sys_logininfor` VALUES (192, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 16:59:51');
INSERT INTO `sys_logininfor` VALUES (193, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:00:27');
INSERT INTO `sys_logininfor` VALUES (194, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:00:50');
INSERT INTO `sys_logininfor` VALUES (195, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-09-02 17:02:06');
INSERT INTO `sys_logininfor` VALUES (196, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:02:10');
INSERT INTO `sys_logininfor` VALUES (197, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:02:24');
INSERT INTO `sys_logininfor` VALUES (198, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:02:40');
INSERT INTO `sys_logininfor` VALUES (199, 'cni230w8003', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:02:54');
INSERT INTO `sys_logininfor` VALUES (200, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:03:04');
INSERT INTO `sys_logininfor` VALUES (201, 'cni23085322', '10.209.5.204', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:03:42');
INSERT INTO `sys_logininfor` VALUES (202, 'cni23085322', '10.209.5.204', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-02 17:04:18');
INSERT INTO `sys_logininfor` VALUES (203, 'cni23085322', '10.209.5.204', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:04:30');
INSERT INTO `sys_logininfor` VALUES (204, 'CNI23478099', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:05:39');
INSERT INTO `sys_logininfor` VALUES (205, 'cni23478099', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:05:51');
INSERT INTO `sys_logininfor` VALUES (206, 'cni23478173', '10.209.7.37', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:05:58');
INSERT INTO `sys_logininfor` VALUES (207, 'cni23478173', '10.209.7.37', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:06:05');
INSERT INTO `sys_logininfor` VALUES (208, 'cni23478099', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-02 17:06:09');
INSERT INTO `sys_logininfor` VALUES (209, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:06:17');
INSERT INTO `sys_logininfor` VALUES (210, 'cni23478173', '10.209.7.37', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:06:24');
INSERT INTO `sys_logininfor` VALUES (211, 'cni23370601', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-02 17:06:39');
INSERT INTO `sys_logininfor` VALUES (212, 'cni23370601', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-02 17:06:46');
INSERT INTO `sys_logininfor` VALUES (213, 'cni23370601', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:07:02');
INSERT INTO `sys_logininfor` VALUES (214, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:10:13');
INSERT INTO `sys_logininfor` VALUES (215, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:13:22');
INSERT INTO `sys_logininfor` VALUES (216, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:15:17');
INSERT INTO `sys_logininfor` VALUES (217, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:15:20');
INSERT INTO `sys_logininfor` VALUES (218, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 17:17:12');
INSERT INTO `sys_logininfor` VALUES (219, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:17:18');
INSERT INTO `sys_logininfor` VALUES (220, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:19:52');
INSERT INTO `sys_logininfor` VALUES (221, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:21:11');
INSERT INTO `sys_logininfor` VALUES (222, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:21:37');
INSERT INTO `sys_logininfor` VALUES (223, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:22:40');
INSERT INTO `sys_logininfor` VALUES (224, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:22:40');
INSERT INTO `sys_logininfor` VALUES (225, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 17:22:51');
INSERT INTO `sys_logininfor` VALUES (226, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:22:56');
INSERT INTO `sys_logininfor` VALUES (227, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:23:12');
INSERT INTO `sys_logininfor` VALUES (228, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 17:24:19');
INSERT INTO `sys_logininfor` VALUES (229, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:24:42');
INSERT INTO `sys_logininfor` VALUES (230, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-02 17:26:58');
INSERT INTO `sys_logininfor` VALUES (231, 'cni230w8008', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:26:59');
INSERT INTO `sys_logininfor` VALUES (232, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:28:57');
INSERT INTO `sys_logininfor` VALUES (233, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:30:17');
INSERT INTO `sys_logininfor` VALUES (234, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 17:31:51');
INSERT INTO `sys_logininfor` VALUES (235, 'cni23478173', '10.209.7.37', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:34:19');
INSERT INTO `sys_logininfor` VALUES (236, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:37:21');
INSERT INTO `sys_logininfor` VALUES (237, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-09-02 17:43:39');
INSERT INTO `sys_logininfor` VALUES (238, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 17:43:43');
INSERT INTO `sys_logininfor` VALUES (239, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:43:48');
INSERT INTO `sys_logininfor` VALUES (240, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:44:08');
INSERT INTO `sys_logininfor` VALUES (241, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:44:23');
INSERT INTO `sys_logininfor` VALUES (242, 'cni23305426', '10.209.6.13', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 17:44:33');
INSERT INTO `sys_logininfor` VALUES (243, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 17:47:34');
INSERT INTO `sys_logininfor` VALUES (244, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-09-02 18:36:03');
INSERT INTO `sys_logininfor` VALUES (245, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 18:36:07');
INSERT INTO `sys_logininfor` VALUES (246, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 18:36:18');
INSERT INTO `sys_logininfor` VALUES (247, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 18:36:19');
INSERT INTO `sys_logininfor` VALUES (248, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 18:36:19');
INSERT INTO `sys_logininfor` VALUES (249, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 18:36:20');
INSERT INTO `sys_logininfor` VALUES (250, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 18:36:20');
INSERT INTO `sys_logininfor` VALUES (251, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 18:36:20');
INSERT INTO `sys_logininfor` VALUES (252, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 18:36:20');
INSERT INTO `sys_logininfor` VALUES (253, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 18:36:20');
INSERT INTO `sys_logininfor` VALUES (254, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 19:41:26');
INSERT INTO `sys_logininfor` VALUES (255, 'cni230w8003', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 19:43:22');
INSERT INTO `sys_logininfor` VALUES (256, 'cni230w8003', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 19:43:26');
INSERT INTO `sys_logininfor` VALUES (257, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 19:44:03');
INSERT INTO `sys_logininfor` VALUES (258, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 19:44:05');
INSERT INTO `sys_logininfor` VALUES (259, 'cni230w8008', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 19:44:18');
INSERT INTO `sys_logininfor` VALUES (260, 'cni230w8008', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 19:44:25');
INSERT INTO `sys_logininfor` VALUES (261, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-02 19:45:47');
INSERT INTO `sys_logininfor` VALUES (262, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-02 19:45:52');
INSERT INTO `sys_logininfor` VALUES (263, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 19:48:16');
INSERT INTO `sys_logininfor` VALUES (264, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-02 19:49:48');
INSERT INTO `sys_logininfor` VALUES (265, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-02 20:00:36');
INSERT INTO `sys_logininfor` VALUES (266, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 08:09:38');
INSERT INTO `sys_logininfor` VALUES (267, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 13:44:26');
INSERT INTO `sys_logininfor` VALUES (268, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 13:58:27');
INSERT INTO `sys_logininfor` VALUES (269, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 13:59:14');
INSERT INTO `sys_logininfor` VALUES (270, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 13:59:38');
INSERT INTO `sys_logininfor` VALUES (271, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 15:15:28');
INSERT INTO `sys_logininfor` VALUES (272, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-03 15:46:40');
INSERT INTO `sys_logininfor` VALUES (273, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 15:46:45');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 16:24:33');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 16:28:15');
INSERT INTO `sys_logininfor` VALUES (276, 'cni23011880', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 16:28:31');
INSERT INTO `sys_logininfor` VALUES (277, 'cni23011880', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 16:29:59');
INSERT INTO `sys_logininfor` VALUES (278, 'cni230wa118', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 16:30:06');
INSERT INTO `sys_logininfor` VALUES (279, 'cni230wa118', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 16:30:23');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 16:30:28');
INSERT INTO `sys_logininfor` VALUES (281, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-03 16:47:52');
INSERT INTO `sys_logininfor` VALUES (282, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 16:47:55');
INSERT INTO `sys_logininfor` VALUES (283, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 16:52:18');
INSERT INTO `sys_logininfor` VALUES (284, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 16:52:44');
INSERT INTO `sys_logininfor` VALUES (285, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 16:53:52');
INSERT INTO `sys_logininfor` VALUES (286, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:11:56');
INSERT INTO `sys_logininfor` VALUES (287, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:12:24');
INSERT INTO `sys_logininfor` VALUES (288, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-03 17:13:03');
INSERT INTO `sys_logininfor` VALUES (289, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:13:08');
INSERT INTO `sys_logininfor` VALUES (290, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:13:25');
INSERT INTO `sys_logininfor` VALUES (291, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:16:41');
INSERT INTO `sys_logininfor` VALUES (292, 'cni23478099', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-03 17:17:02');
INSERT INTO `sys_logininfor` VALUES (293, 'cni23478099', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-03 17:17:56');
INSERT INTO `sys_logininfor` VALUES (294, 'cni23478099', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-03 17:18:00');
INSERT INTO `sys_logininfor` VALUES (295, 'cni23478099', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-03 17:18:08');
INSERT INTO `sys_logininfor` VALUES (296, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:19:22');
INSERT INTO `sys_logininfor` VALUES (297, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-03 17:19:27');
INSERT INTO `sys_logininfor` VALUES (298, 'cni230w8003', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-03 17:19:39');
INSERT INTO `sys_logininfor` VALUES (299, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:19:48');
INSERT INTO `sys_logininfor` VALUES (300, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:20:51');
INSERT INTO `sys_logininfor` VALUES (301, 'cni23478099', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-09-03 17:21:10');
INSERT INTO `sys_logininfor` VALUES (302, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 17:21:54');
INSERT INTO `sys_logininfor` VALUES (303, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:21:55');
INSERT INTO `sys_logininfor` VALUES (304, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:22:06');
INSERT INTO `sys_logininfor` VALUES (305, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:27:03');
INSERT INTO `sys_logininfor` VALUES (306, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 17:27:42');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:27:46');
INSERT INTO `sys_logininfor` VALUES (308, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:28:24');
INSERT INTO `sys_logininfor` VALUES (309, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:33:00');
INSERT INTO `sys_logininfor` VALUES (310, 'cni23215317', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:37:52');
INSERT INTO `sys_logininfor` VALUES (311, 'cni23215317', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 17:38:03');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:38:08');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 17:39:05');
INSERT INTO `sys_logininfor` VALUES (314, 'cni23478056', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:39:50');
INSERT INTO `sys_logininfor` VALUES (315, 'cni23478056', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 17:40:09');
INSERT INTO `sys_logininfor` VALUES (316, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:40:36');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:41:29');
INSERT INTO `sys_logininfor` VALUES (318, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:42:08');
INSERT INTO `sys_logininfor` VALUES (319, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 17:43:17');
INSERT INTO `sys_logininfor` VALUES (320, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-03 17:43:25');
INSERT INTO `sys_logininfor` VALUES (321, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-03 17:43:29');
INSERT INTO `sys_logininfor` VALUES (322, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:43:32');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 17:43:39');
INSERT INTO `sys_logininfor` VALUES (324, 'cni23011880', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:43:57');
INSERT INTO `sys_logininfor` VALUES (325, 'cni23011880', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 17:44:10');
INSERT INTO `sys_logininfor` VALUES (326, 'cni23298347', '10.209.7.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:44:42');
INSERT INTO `sys_logininfor` VALUES (327, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:46:31');
INSERT INTO `sys_logininfor` VALUES (328, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:46:53');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 17:47:21');
INSERT INTO `sys_logininfor` VALUES (330, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:47:34');
INSERT INTO `sys_logininfor` VALUES (331, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:48:11');
INSERT INTO `sys_logininfor` VALUES (332, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:50:57');
INSERT INTO `sys_logininfor` VALUES (333, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-03 17:51:12');
INSERT INTO `sys_logininfor` VALUES (334, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-03 17:51:18');
INSERT INTO `sys_logininfor` VALUES (335, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:51:26');
INSERT INTO `sys_logininfor` VALUES (336, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 17:51:51');
INSERT INTO `sys_logininfor` VALUES (337, 'cni23011874', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:52:12');
INSERT INTO `sys_logininfor` VALUES (338, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:55:13');
INSERT INTO `sys_logininfor` VALUES (339, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 17:58:34');
INSERT INTO `sys_logininfor` VALUES (340, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 17:59:37');
INSERT INTO `sys_logininfor` VALUES (341, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 18:00:16');
INSERT INTO `sys_logininfor` VALUES (342, 'cni23011874', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 18:01:31');
INSERT INTO `sys_logininfor` VALUES (343, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 18:01:43');
INSERT INTO `sys_logininfor` VALUES (344, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-03 18:05:13');
INSERT INTO `sys_logininfor` VALUES (345, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 18:05:19');
INSERT INTO `sys_logininfor` VALUES (346, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 18:11:59');
INSERT INTO `sys_logininfor` VALUES (347, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 18:25:19');
INSERT INTO `sys_logininfor` VALUES (348, 'cni230wa103', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 18:25:26');
INSERT INTO `sys_logininfor` VALUES (349, 'cni230wa103', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 18:27:50');
INSERT INTO `sys_logininfor` VALUES (350, 'cni230wa118', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 18:27:57');
INSERT INTO `sys_logininfor` VALUES (351, 'cni230wa103', '10.209.6.11', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-03 18:30:14');
INSERT INTO `sys_logininfor` VALUES (352, 'cni230wa103', '10.209.6.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 18:30:19');
INSERT INTO `sys_logininfor` VALUES (353, 'cni230wa118', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 18:33:49');
INSERT INTO `sys_logininfor` VALUES (354, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 18:34:01');
INSERT INTO `sys_logininfor` VALUES (355, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 18:35:10');
INSERT INTO `sys_logininfor` VALUES (356, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-03 18:35:24');
INSERT INTO `sys_logininfor` VALUES (357, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 18:35:27');
INSERT INTO `sys_logininfor` VALUES (358, 'cni23478099', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-09-03 18:47:29');
INSERT INTO `sys_logininfor` VALUES (359, 'cni230wa103', '10.209.6.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 19:19:02');
INSERT INTO `sys_logininfor` VALUES (360, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 19:40:19');
INSERT INTO `sys_logininfor` VALUES (361, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 19:40:24');
INSERT INTO `sys_logininfor` VALUES (362, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 19:40:35');
INSERT INTO `sys_logininfor` VALUES (363, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 19:40:36');
INSERT INTO `sys_logininfor` VALUES (364, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 19:40:58');
INSERT INTO `sys_logininfor` VALUES (365, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 19:41:23');
INSERT INTO `sys_logininfor` VALUES (366, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 19:41:43');
INSERT INTO `sys_logininfor` VALUES (367, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 19:44:37');
INSERT INTO `sys_logininfor` VALUES (368, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-03 19:48:31');
INSERT INTO `sys_logininfor` VALUES (369, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 19:49:09');
INSERT INTO `sys_logininfor` VALUES (370, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 20:51:15');
INSERT INTO `sys_logininfor` VALUES (371, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-03 20:52:27');
INSERT INTO `sys_logininfor` VALUES (372, 'cni23011747', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-03 20:52:40');
INSERT INTO `sys_logininfor` VALUES (373, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 08:08:23');
INSERT INTO `sys_logininfor` VALUES (374, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 08:12:55');
INSERT INTO `sys_logininfor` VALUES (375, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 08:13:26');
INSERT INTO `sys_logininfor` VALUES (376, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 08:14:32');
INSERT INTO `sys_logininfor` VALUES (377, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 08:15:36');
INSERT INTO `sys_logininfor` VALUES (378, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 08:17:39');
INSERT INTO `sys_logininfor` VALUES (379, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 08:18:38');
INSERT INTO `sys_logininfor` VALUES (380, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 08:24:57');
INSERT INTO `sys_logininfor` VALUES (381, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 08:26:40');
INSERT INTO `sys_logininfor` VALUES (382, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 08:27:59');
INSERT INTO `sys_logininfor` VALUES (383, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 08:34:27');
INSERT INTO `sys_logininfor` VALUES (384, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 08:36:03');
INSERT INTO `sys_logininfor` VALUES (385, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 08:45:09');
INSERT INTO `sys_logininfor` VALUES (386, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 08:45:11');
INSERT INTO `sys_logininfor` VALUES (387, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 08:48:14');
INSERT INTO `sys_logininfor` VALUES (388, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-04 09:10:32');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 09:10:42');
INSERT INTO `sys_logininfor` VALUES (390, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-04 09:11:16');
INSERT INTO `sys_logininfor` VALUES (391, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 09:11:20');
INSERT INTO `sys_logininfor` VALUES (392, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-04 09:12:58');
INSERT INTO `sys_logininfor` VALUES (393, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 09:13:03');
INSERT INTO `sys_logininfor` VALUES (394, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 09:13:11');
INSERT INTO `sys_logininfor` VALUES (395, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 09:42:45');
INSERT INTO `sys_logininfor` VALUES (396, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 09:57:49');
INSERT INTO `sys_logininfor` VALUES (397, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 10:10:35');
INSERT INTO `sys_logininfor` VALUES (398, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 10:12:36');
INSERT INTO `sys_logininfor` VALUES (399, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 10:14:42');
INSERT INTO `sys_logininfor` VALUES (400, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 10:20:50');
INSERT INTO `sys_logininfor` VALUES (401, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 10:42:12');
INSERT INTO `sys_logininfor` VALUES (402, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 11:11:26');
INSERT INTO `sys_logininfor` VALUES (403, 'cni230wa103', '10.209.6.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 11:17:09');
INSERT INTO `sys_logininfor` VALUES (404, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 11:22:39');
INSERT INTO `sys_logininfor` VALUES (405, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 11:27:26');
INSERT INTO `sys_logininfor` VALUES (406, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 11:28:32');
INSERT INTO `sys_logininfor` VALUES (407, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 11:29:21');
INSERT INTO `sys_logininfor` VALUES (408, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 11:42:53');
INSERT INTO `sys_logininfor` VALUES (409, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 12:14:32');
INSERT INTO `sys_logininfor` VALUES (410, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 13:45:28');
INSERT INTO `sys_logininfor` VALUES (411, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 13:46:22');
INSERT INTO `sys_logininfor` VALUES (412, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 14:00:25');
INSERT INTO `sys_logininfor` VALUES (413, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-04 14:49:17');
INSERT INTO `sys_logininfor` VALUES (414, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 14:49:22');
INSERT INTO `sys_logininfor` VALUES (415, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 15:03:53');
INSERT INTO `sys_logininfor` VALUES (416, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 15:30:24');
INSERT INTO `sys_logininfor` VALUES (417, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 15:39:20');
INSERT INTO `sys_logininfor` VALUES (418, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 16:02:08');
INSERT INTO `sys_logininfor` VALUES (419, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 16:02:19');
INSERT INTO `sys_logininfor` VALUES (420, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 16:35:58');
INSERT INTO `sys_logininfor` VALUES (421, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 16:53:55');
INSERT INTO `sys_logininfor` VALUES (422, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 16:57:40');
INSERT INTO `sys_logininfor` VALUES (423, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 17:00:45');
INSERT INTO `sys_logininfor` VALUES (424, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 17:08:44');
INSERT INTO `sys_logininfor` VALUES (425, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-04 17:09:55');
INSERT INTO `sys_logininfor` VALUES (426, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 17:10:07');
INSERT INTO `sys_logininfor` VALUES (427, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 17:10:47');
INSERT INTO `sys_logininfor` VALUES (428, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 17:13:54');
INSERT INTO `sys_logininfor` VALUES (429, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 17:22:47');
INSERT INTO `sys_logininfor` VALUES (430, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 17:33:26');
INSERT INTO `sys_logininfor` VALUES (431, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 17:37:56');
INSERT INTO `sys_logininfor` VALUES (432, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 17:39:03');
INSERT INTO `sys_logininfor` VALUES (433, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 17:39:32');
INSERT INTO `sys_logininfor` VALUES (434, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 17:39:39');
INSERT INTO `sys_logininfor` VALUES (435, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 17:44:33');
INSERT INTO `sys_logininfor` VALUES (436, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 17:44:42');
INSERT INTO `sys_logininfor` VALUES (437, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 17:49:36');
INSERT INTO `sys_logininfor` VALUES (438, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 17:49:55');
INSERT INTO `sys_logininfor` VALUES (439, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-04 18:10:27');
INSERT INTO `sys_logininfor` VALUES (440, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-04 18:25:28');
INSERT INTO `sys_logininfor` VALUES (441, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 07:57:13');
INSERT INTO `sys_logininfor` VALUES (442, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-05 08:12:04');
INSERT INTO `sys_logininfor` VALUES (443, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 08:12:11');
INSERT INTO `sys_logininfor` VALUES (444, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 08:15:08');
INSERT INTO `sys_logininfor` VALUES (445, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-05 08:23:49');
INSERT INTO `sys_logininfor` VALUES (446, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-05 08:24:03');
INSERT INTO `sys_logininfor` VALUES (447, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-05 08:24:17');
INSERT INTO `sys_logininfor` VALUES (448, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-05 08:24:23');
INSERT INTO `sys_logininfor` VALUES (449, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 08:24:38');
INSERT INTO `sys_logininfor` VALUES (450, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 09:43:05');
INSERT INTO `sys_logininfor` VALUES (451, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-05 10:07:18');
INSERT INTO `sys_logininfor` VALUES (452, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-05 10:07:26');
INSERT INTO `sys_logininfor` VALUES (453, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 10:07:31');
INSERT INTO `sys_logininfor` VALUES (454, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 13:52:03');
INSERT INTO `sys_logininfor` VALUES (455, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 13:53:14');
INSERT INTO `sys_logininfor` VALUES (456, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 14:21:11');
INSERT INTO `sys_logininfor` VALUES (457, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 14:27:20');
INSERT INTO `sys_logininfor` VALUES (458, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 15:10:19');
INSERT INTO `sys_logininfor` VALUES (459, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 15:26:03');
INSERT INTO `sys_logininfor` VALUES (460, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-05 17:46:42');
INSERT INTO `sys_logininfor` VALUES (461, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 17:46:45');
INSERT INTO `sys_logininfor` VALUES (462, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 17:48:19');
INSERT INTO `sys_logininfor` VALUES (463, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 17:51:26');
INSERT INTO `sys_logininfor` VALUES (464, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 17:59:27');
INSERT INTO `sys_logininfor` VALUES (465, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 18:06:05');
INSERT INTO `sys_logininfor` VALUES (466, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 18:30:03');
INSERT INTO `sys_logininfor` VALUES (467, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 18:30:56');
INSERT INTO `sys_logininfor` VALUES (468, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 18:40:00');
INSERT INTO `sys_logininfor` VALUES (469, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 18:43:20');
INSERT INTO `sys_logininfor` VALUES (470, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 18:50:08');
INSERT INTO `sys_logininfor` VALUES (471, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-05 18:54:29');
INSERT INTO `sys_logininfor` VALUES (472, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 18:54:35');
INSERT INTO `sys_logininfor` VALUES (473, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 18:55:13');
INSERT INTO `sys_logininfor` VALUES (474, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 18:57:24');
INSERT INTO `sys_logininfor` VALUES (475, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 18:57:33');
INSERT INTO `sys_logininfor` VALUES (476, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 19:05:57');
INSERT INTO `sys_logininfor` VALUES (477, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-09-05 19:14:53');
INSERT INTO `sys_logininfor` VALUES (478, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 19:14:58');
INSERT INTO `sys_logininfor` VALUES (479, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-09-05 19:19:11');
INSERT INTO `sys_logininfor` VALUES (480, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 19:19:14');
INSERT INTO `sys_logininfor` VALUES (481, 'cni23478173', '10.209.7.37', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-05 19:21:48');
INSERT INTO `sys_logininfor` VALUES (482, 'cni23478173', '10.209.7.37', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-05 19:21:53');
INSERT INTO `sys_logininfor` VALUES (483, 'cni23478173', '10.209.7.37', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-05 19:21:58');
INSERT INTO `sys_logininfor` VALUES (484, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 19:23:38');
INSERT INTO `sys_logininfor` VALUES (485, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-05 19:26:00');
INSERT INTO `sys_logininfor` VALUES (486, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 19:26:04');
INSERT INTO `sys_logininfor` VALUES (487, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 19:34:40');
INSERT INTO `sys_logininfor` VALUES (488, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 19:38:06');
INSERT INTO `sys_logininfor` VALUES (489, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 19:39:03');
INSERT INTO `sys_logininfor` VALUES (490, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 19:45:16');
INSERT INTO `sys_logininfor` VALUES (491, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 19:47:24');
INSERT INTO `sys_logininfor` VALUES (492, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-05 19:58:52');
INSERT INTO `sys_logininfor` VALUES (493, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 20:28:20');
INSERT INTO `sys_logininfor` VALUES (494, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-05 21:47:41');
INSERT INTO `sys_logininfor` VALUES (495, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-06 07:36:32');
INSERT INTO `sys_logininfor` VALUES (496, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 07:36:40');
INSERT INTO `sys_logininfor` VALUES (497, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-06 08:11:04');
INSERT INTO `sys_logininfor` VALUES (498, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 08:11:09');
INSERT INTO `sys_logininfor` VALUES (499, 'cni230W9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 08:13:54');
INSERT INTO `sys_logininfor` VALUES (500, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 08:15:47');
INSERT INTO `sys_logininfor` VALUES (501, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 08:21:56');
INSERT INTO `sys_logininfor` VALUES (502, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 08:22:30');
INSERT INTO `sys_logininfor` VALUES (503, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 08:27:51');
INSERT INTO `sys_logininfor` VALUES (504, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 09:06:05');
INSERT INTO `sys_logininfor` VALUES (505, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 09:27:03');
INSERT INTO `sys_logininfor` VALUES (506, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-06 09:33:28');
INSERT INTO `sys_logininfor` VALUES (507, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-06 09:54:34');
INSERT INTO `sys_logininfor` VALUES (508, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 09:54:40');
INSERT INTO `sys_logininfor` VALUES (509, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 10:55:23');
INSERT INTO `sys_logininfor` VALUES (510, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 14:08:33');
INSERT INTO `sys_logininfor` VALUES (511, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 14:50:12');
INSERT INTO `sys_logininfor` VALUES (512, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 15:14:04');
INSERT INTO `sys_logininfor` VALUES (513, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-06 15:58:32');
INSERT INTO `sys_logininfor` VALUES (514, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 15:58:44');
INSERT INTO `sys_logininfor` VALUES (515, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 16:10:11');
INSERT INTO `sys_logininfor` VALUES (516, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 17:11:55');
INSERT INTO `sys_logininfor` VALUES (517, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 17:12:17');
INSERT INTO `sys_logininfor` VALUES (518, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 17:16:51');
INSERT INTO `sys_logininfor` VALUES (519, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 17:22:06');
INSERT INTO `sys_logininfor` VALUES (520, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-09-06 17:25:47');
INSERT INTO `sys_logininfor` VALUES (521, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 17:25:49');
INSERT INTO `sys_logininfor` VALUES (522, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 17:28:17');
INSERT INTO `sys_logininfor` VALUES (523, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 17:28:18');
INSERT INTO `sys_logininfor` VALUES (524, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 17:28:49');
INSERT INTO `sys_logininfor` VALUES (525, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 17:45:57');
INSERT INTO `sys_logininfor` VALUES (526, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 17:52:07');
INSERT INTO `sys_logininfor` VALUES (527, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 17:56:57');
INSERT INTO `sys_logininfor` VALUES (528, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 17:57:46');
INSERT INTO `sys_logininfor` VALUES (529, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 18:05:30');
INSERT INTO `sys_logininfor` VALUES (530, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-06 18:14:54');
INSERT INTO `sys_logininfor` VALUES (531, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-06 18:14:59');
INSERT INTO `sys_logininfor` VALUES (532, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-06 18:15:10');
INSERT INTO `sys_logininfor` VALUES (533, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-06 18:48:07');
INSERT INTO `sys_logininfor` VALUES (534, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 18:48:16');
INSERT INTO `sys_logininfor` VALUES (535, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-09-06 19:25:04');
INSERT INTO `sys_logininfor` VALUES (536, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 19:25:08');
INSERT INTO `sys_logininfor` VALUES (537, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 20:32:09');
INSERT INTO `sys_logininfor` VALUES (538, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-06 20:36:33');
INSERT INTO `sys_logininfor` VALUES (539, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 08:18:23');
INSERT INTO `sys_logininfor` VALUES (540, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 08:30:08');
INSERT INTO `sys_logininfor` VALUES (541, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 08:32:48');
INSERT INTO `sys_logininfor` VALUES (542, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 08:33:29');
INSERT INTO `sys_logininfor` VALUES (543, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 08:49:18');
INSERT INTO `sys_logininfor` VALUES (544, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-07 08:51:11');
INSERT INTO `sys_logininfor` VALUES (545, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 08:51:25');
INSERT INTO `sys_logininfor` VALUES (546, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-07 09:01:35');
INSERT INTO `sys_logininfor` VALUES (547, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 09:01:40');
INSERT INTO `sys_logininfor` VALUES (548, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 09:26:19');
INSERT INTO `sys_logininfor` VALUES (549, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-07 09:34:46');
INSERT INTO `sys_logininfor` VALUES (550, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 09:34:49');
INSERT INTO `sys_logininfor` VALUES (551, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 09:37:36');
INSERT INTO `sys_logininfor` VALUES (552, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 10:30:57');
INSERT INTO `sys_logininfor` VALUES (553, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 10:54:07');
INSERT INTO `sys_logininfor` VALUES (554, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 11:21:50');
INSERT INTO `sys_logininfor` VALUES (555, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 11:24:18');
INSERT INTO `sys_logininfor` VALUES (556, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-07 13:45:04');
INSERT INTO `sys_logininfor` VALUES (557, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 13:45:10');
INSERT INTO `sys_logininfor` VALUES (558, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 14:53:15');
INSERT INTO `sys_logininfor` VALUES (559, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 14:57:43');
INSERT INTO `sys_logininfor` VALUES (560, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 15:07:32');
INSERT INTO `sys_logininfor` VALUES (561, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 15:15:54');
INSERT INTO `sys_logininfor` VALUES (562, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 15:19:54');
INSERT INTO `sys_logininfor` VALUES (563, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 15:37:57');
INSERT INTO `sys_logininfor` VALUES (564, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 16:04:17');
INSERT INTO `sys_logininfor` VALUES (565, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 16:11:15');
INSERT INTO `sys_logininfor` VALUES (566, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 16:35:23');
INSERT INTO `sys_logininfor` VALUES (567, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 16:37:33');
INSERT INTO `sys_logininfor` VALUES (568, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 16:39:51');
INSERT INTO `sys_logininfor` VALUES (569, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-07 16:43:01');
INSERT INTO `sys_logininfor` VALUES (570, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 16:43:06');
INSERT INTO `sys_logininfor` VALUES (571, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 16:47:06');
INSERT INTO `sys_logininfor` VALUES (572, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 16:47:25');
INSERT INTO `sys_logininfor` VALUES (573, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 16:53:07');
INSERT INTO `sys_logininfor` VALUES (574, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-07 17:13:36');
INSERT INTO `sys_logininfor` VALUES (575, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:13:41');
INSERT INTO `sys_logininfor` VALUES (576, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:15:39');
INSERT INTO `sys_logininfor` VALUES (577, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 17:26:31');
INSERT INTO `sys_logininfor` VALUES (578, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:28:48');
INSERT INTO `sys_logininfor` VALUES (579, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 17:33:43');
INSERT INTO `sys_logininfor` VALUES (580, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:34:33');
INSERT INTO `sys_logininfor` VALUES (581, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 17:37:13');
INSERT INTO `sys_logininfor` VALUES (582, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:39:31');
INSERT INTO `sys_logininfor` VALUES (583, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:40:53');
INSERT INTO `sys_logininfor` VALUES (584, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:42:32');
INSERT INTO `sys_logininfor` VALUES (585, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:44:34');
INSERT INTO `sys_logininfor` VALUES (586, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-07 17:45:52');
INSERT INTO `sys_logininfor` VALUES (587, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-07 17:45:55');
INSERT INTO `sys_logininfor` VALUES (588, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 17:46:14');
INSERT INTO `sys_logininfor` VALUES (589, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:46:53');
INSERT INTO `sys_logininfor` VALUES (590, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 17:47:11');
INSERT INTO `sys_logininfor` VALUES (591, 'cni230wa147', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-07 17:51:03');
INSERT INTO `sys_logininfor` VALUES (592, 'cni230wa147', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-07 17:51:21');
INSERT INTO `sys_logininfor` VALUES (593, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-07 17:52:47');
INSERT INTO `sys_logininfor` VALUES (594, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-07 18:04:41');
INSERT INTO `sys_logininfor` VALUES (595, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-09-08 12:03:49');
INSERT INTO `sys_logininfor` VALUES (596, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-08 12:03:53');
INSERT INTO `sys_logininfor` VALUES (597, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 08:18:19');
INSERT INTO `sys_logininfor` VALUES (598, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 08:23:56');
INSERT INTO `sys_logininfor` VALUES (599, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 08:25:44');
INSERT INTO `sys_logininfor` VALUES (600, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 08:29:02');
INSERT INTO `sys_logininfor` VALUES (601, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-09 08:34:49');
INSERT INTO `sys_logininfor` VALUES (602, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 08:34:53');
INSERT INTO `sys_logininfor` VALUES (603, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 10:08:21');
INSERT INTO `sys_logininfor` VALUES (604, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-09 10:27:25');
INSERT INTO `sys_logininfor` VALUES (605, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 10:27:28');
INSERT INTO `sys_logininfor` VALUES (606, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 14:05:06');
INSERT INTO `sys_logininfor` VALUES (607, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 14:06:40');
INSERT INTO `sys_logininfor` VALUES (608, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 14:34:08');
INSERT INTO `sys_logininfor` VALUES (609, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 15:26:09');
INSERT INTO `sys_logininfor` VALUES (610, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 16:02:04');
INSERT INTO `sys_logininfor` VALUES (611, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-09 16:20:53');
INSERT INTO `sys_logininfor` VALUES (612, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 16:21:06');
INSERT INTO `sys_logininfor` VALUES (613, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 16:39:22');
INSERT INTO `sys_logininfor` VALUES (614, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 17:18:53');
INSERT INTO `sys_logininfor` VALUES (615, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 17:27:17');
INSERT INTO `sys_logininfor` VALUES (616, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 17:32:42');
INSERT INTO `sys_logininfor` VALUES (617, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 17:34:14');
INSERT INTO `sys_logininfor` VALUES (618, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 17:40:30');
INSERT INTO `sys_logininfor` VALUES (619, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 17:42:25');
INSERT INTO `sys_logininfor` VALUES (620, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 18:19:46');
INSERT INTO `sys_logininfor` VALUES (621, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-09 18:20:47');
INSERT INTO `sys_logininfor` VALUES (622, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-09 18:20:54');
INSERT INTO `sys_logininfor` VALUES (623, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 18:20:58');
INSERT INTO `sys_logininfor` VALUES (624, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 18:26:08');
INSERT INTO `sys_logininfor` VALUES (625, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 18:27:50');
INSERT INTO `sys_logininfor` VALUES (626, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 18:33:51');
INSERT INTO `sys_logininfor` VALUES (627, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 19:02:13');
INSERT INTO `sys_logininfor` VALUES (628, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-09 19:02:22');
INSERT INTO `sys_logininfor` VALUES (629, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 19:02:27');
INSERT INTO `sys_logininfor` VALUES (630, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 19:09:43');
INSERT INTO `sys_logininfor` VALUES (631, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 19:24:41');
INSERT INTO `sys_logininfor` VALUES (632, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 19:28:10');
INSERT INTO `sys_logininfor` VALUES (633, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 19:29:09');
INSERT INTO `sys_logininfor` VALUES (634, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 19:29:49');
INSERT INTO `sys_logininfor` VALUES (635, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 19:35:08');
INSERT INTO `sys_logininfor` VALUES (636, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 19:37:58');
INSERT INTO `sys_logininfor` VALUES (637, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 19:39:40');
INSERT INTO `sys_logininfor` VALUES (638, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 19:41:21');
INSERT INTO `sys_logininfor` VALUES (639, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 19:41:42');
INSERT INTO `sys_logininfor` VALUES (640, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 19:46:16');
INSERT INTO `sys_logininfor` VALUES (641, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-09 19:46:29');
INSERT INTO `sys_logininfor` VALUES (642, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 19:53:18');
INSERT INTO `sys_logininfor` VALUES (643, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-09 21:09:08');
INSERT INTO `sys_logininfor` VALUES (644, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 08:13:30');
INSERT INTO `sys_logininfor` VALUES (645, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 08:18:58');
INSERT INTO `sys_logininfor` VALUES (646, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 08:50:59');
INSERT INTO `sys_logininfor` VALUES (647, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-10 08:58:40');
INSERT INTO `sys_logininfor` VALUES (648, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-10 08:59:21');
INSERT INTO `sys_logininfor` VALUES (649, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 09:06:41');
INSERT INTO `sys_logininfor` VALUES (650, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-10 09:16:12');
INSERT INTO `sys_logininfor` VALUES (651, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 09:33:12');
INSERT INTO `sys_logininfor` VALUES (652, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 09:44:06');
INSERT INTO `sys_logininfor` VALUES (653, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-10 09:46:32');
INSERT INTO `sys_logininfor` VALUES (654, 'admin', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 09:46:41');
INSERT INTO `sys_logininfor` VALUES (655, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 13:58:05');
INSERT INTO `sys_logininfor` VALUES (656, 'admin', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-10 14:26:43');
INSERT INTO `sys_logininfor` VALUES (657, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-10 14:26:51');
INSERT INTO `sys_logininfor` VALUES (658, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-10 14:26:54');
INSERT INTO `sys_logininfor` VALUES (659, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-10 14:26:58');
INSERT INTO `sys_logininfor` VALUES (660, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 14:27:00');
INSERT INTO `sys_logininfor` VALUES (661, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 15:22:18');
INSERT INTO `sys_logininfor` VALUES (662, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 15:23:06');
INSERT INTO `sys_logininfor` VALUES (663, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 17:00:51');
INSERT INTO `sys_logininfor` VALUES (664, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-10 17:30:00');
INSERT INTO `sys_logininfor` VALUES (665, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 17:34:15');
INSERT INTO `sys_logininfor` VALUES (666, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 17:42:49');
INSERT INTO `sys_logininfor` VALUES (667, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 17:52:11');
INSERT INTO `sys_logininfor` VALUES (668, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 18:01:34');
INSERT INTO `sys_logininfor` VALUES (669, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 18:07:04');
INSERT INTO `sys_logininfor` VALUES (670, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 19:39:14');
INSERT INTO `sys_logininfor` VALUES (671, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-10 19:43:09');
INSERT INTO `sys_logininfor` VALUES (672, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 19:47:36');
INSERT INTO `sys_logininfor` VALUES (673, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 19:48:19');
INSERT INTO `sys_logininfor` VALUES (674, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-10 19:50:32');
INSERT INTO `sys_logininfor` VALUES (675, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-10 19:50:37');
INSERT INTO `sys_logininfor` VALUES (676, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 19:51:34');
INSERT INTO `sys_logininfor` VALUES (677, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 20:10:14');
INSERT INTO `sys_logininfor` VALUES (678, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-10 20:20:22');
INSERT INTO `sys_logininfor` VALUES (679, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 20:59:19');
INSERT INTO `sys_logininfor` VALUES (680, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-10 21:18:38');
INSERT INTO `sys_logininfor` VALUES (681, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-11 07:56:22');
INSERT INTO `sys_logininfor` VALUES (682, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 07:56:30');
INSERT INTO `sys_logininfor` VALUES (683, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 08:11:21');
INSERT INTO `sys_logininfor` VALUES (684, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 08:16:44');
INSERT INTO `sys_logininfor` VALUES (685, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 08:27:35');
INSERT INTO `sys_logininfor` VALUES (686, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-11 08:30:44');
INSERT INTO `sys_logininfor` VALUES (687, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 08:30:48');
INSERT INTO `sys_logininfor` VALUES (688, 'cni23085322', '10.209.5.204', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 08:32:26');
INSERT INTO `sys_logininfor` VALUES (689, 'cni23470193', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 08:44:09');
INSERT INTO `sys_logininfor` VALUES (690, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 09:42:34');
INSERT INTO `sys_logininfor` VALUES (691, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 10:00:33');
INSERT INTO `sys_logininfor` VALUES (692, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 10:25:01');
INSERT INTO `sys_logininfor` VALUES (693, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 11:21:52');
INSERT INTO `sys_logininfor` VALUES (694, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 11:36:11');
INSERT INTO `sys_logininfor` VALUES (695, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 15:53:18');
INSERT INTO `sys_logininfor` VALUES (696, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 15:56:56');
INSERT INTO `sys_logininfor` VALUES (697, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 17:03:52');
INSERT INTO `sys_logininfor` VALUES (698, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-11 17:07:19');
INSERT INTO `sys_logininfor` VALUES (699, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 17:07:38');
INSERT INTO `sys_logininfor` VALUES (700, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 17:10:24');
INSERT INTO `sys_logininfor` VALUES (701, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 17:30:51');
INSERT INTO `sys_logininfor` VALUES (702, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 17:39:09');
INSERT INTO `sys_logininfor` VALUES (703, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 17:43:11');
INSERT INTO `sys_logininfor` VALUES (704, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-11 17:45:19');
INSERT INTO `sys_logininfor` VALUES (705, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 17:45:33');
INSERT INTO `sys_logininfor` VALUES (706, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 17:48:16');
INSERT INTO `sys_logininfor` VALUES (707, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 17:51:01');
INSERT INTO `sys_logininfor` VALUES (708, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 17:52:20');
INSERT INTO `sys_logininfor` VALUES (709, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 18:05:53');
INSERT INTO `sys_logininfor` VALUES (710, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 18:07:41');
INSERT INTO `sys_logininfor` VALUES (711, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 18:21:40');
INSERT INTO `sys_logininfor` VALUES (712, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 18:47:41');
INSERT INTO `sys_logininfor` VALUES (713, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 19:02:25');
INSERT INTO `sys_logininfor` VALUES (714, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 19:12:03');
INSERT INTO `sys_logininfor` VALUES (715, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 19:41:40');
INSERT INTO `sys_logininfor` VALUES (716, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-11 21:37:22');
INSERT INTO `sys_logininfor` VALUES (717, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-11 22:05:07');
INSERT INTO `sys_logininfor` VALUES (718, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 08:09:38');
INSERT INTO `sys_logininfor` VALUES (719, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-12 08:10:08');
INSERT INTO `sys_logininfor` VALUES (720, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 08:10:26');
INSERT INTO `sys_logininfor` VALUES (721, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 08:18:26');
INSERT INTO `sys_logininfor` VALUES (722, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-12 08:21:08');
INSERT INTO `sys_logininfor` VALUES (723, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 08:21:22');
INSERT INTO `sys_logininfor` VALUES (724, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 08:33:19');
INSERT INTO `sys_logininfor` VALUES (725, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 10:32:13');
INSERT INTO `sys_logininfor` VALUES (726, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 11:34:16');
INSERT INTO `sys_logininfor` VALUES (727, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 11:34:58');
INSERT INTO `sys_logininfor` VALUES (728, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 11:36:22');
INSERT INTO `sys_logininfor` VALUES (729, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 11:44:06');
INSERT INTO `sys_logininfor` VALUES (730, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 14:14:06');
INSERT INTO `sys_logininfor` VALUES (731, 'cni230wa103', '10.209.6.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 14:25:29');
INSERT INTO `sys_logininfor` VALUES (732, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 16:18:35');
INSERT INTO `sys_logininfor` VALUES (733, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-09-12 16:23:38');
INSERT INTO `sys_logininfor` VALUES (734, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 16:23:42');
INSERT INTO `sys_logininfor` VALUES (735, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 17:44:20');
INSERT INTO `sys_logininfor` VALUES (736, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 18:50:50');
INSERT INTO `sys_logininfor` VALUES (737, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 19:00:55');
INSERT INTO `sys_logininfor` VALUES (738, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 19:02:45');
INSERT INTO `sys_logininfor` VALUES (739, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-12 19:03:59');
INSERT INTO `sys_logininfor` VALUES (740, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 19:04:04');
INSERT INTO `sys_logininfor` VALUES (741, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 19:12:06');
INSERT INTO `sys_logininfor` VALUES (742, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 19:14:23');
INSERT INTO `sys_logininfor` VALUES (743, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 19:31:22');
INSERT INTO `sys_logininfor` VALUES (744, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 19:35:04');
INSERT INTO `sys_logininfor` VALUES (745, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 19:37:46');
INSERT INTO `sys_logininfor` VALUES (746, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 19:42:53');
INSERT INTO `sys_logininfor` VALUES (747, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 19:43:09');
INSERT INTO `sys_logininfor` VALUES (748, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-12 19:45:04');
INSERT INTO `sys_logininfor` VALUES (749, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 19:50:50');
INSERT INTO `sys_logininfor` VALUES (750, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-12 20:10:51');
INSERT INTO `sys_logininfor` VALUES (751, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 00:11:16');
INSERT INTO `sys_logininfor` VALUES (752, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 07:36:09');
INSERT INTO `sys_logininfor` VALUES (753, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 08:16:16');
INSERT INTO `sys_logininfor` VALUES (754, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 08:18:39');
INSERT INTO `sys_logininfor` VALUES (755, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 08:19:36');
INSERT INTO `sys_logininfor` VALUES (756, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 08:27:44');
INSERT INTO `sys_logininfor` VALUES (757, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-13 08:31:14');
INSERT INTO `sys_logininfor` VALUES (758, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 08:31:20');
INSERT INTO `sys_logininfor` VALUES (759, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 08:37:53');
INSERT INTO `sys_logininfor` VALUES (760, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 09:08:26');
INSERT INTO `sys_logininfor` VALUES (761, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 10:39:18');
INSERT INTO `sys_logininfor` VALUES (762, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 10:55:44');
INSERT INTO `sys_logininfor` VALUES (763, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 10:57:04');
INSERT INTO `sys_logininfor` VALUES (764, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 11:00:35');
INSERT INTO `sys_logininfor` VALUES (765, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-13 11:06:14');
INSERT INTO `sys_logininfor` VALUES (766, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-13 11:06:22');
INSERT INTO `sys_logininfor` VALUES (767, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-13 11:06:27');
INSERT INTO `sys_logininfor` VALUES (768, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-13 11:06:37');
INSERT INTO `sys_logininfor` VALUES (769, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 11:06:41');
INSERT INTO `sys_logininfor` VALUES (770, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-13 11:50:03');
INSERT INTO `sys_logininfor` VALUES (771, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 11:50:06');
INSERT INTO `sys_logininfor` VALUES (772, 'cni230wa103', '10.209.6.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 13:44:00');
INSERT INTO `sys_logininfor` VALUES (773, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 14:22:18');
INSERT INTO `sys_logininfor` VALUES (774, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 16:06:13');
INSERT INTO `sys_logininfor` VALUES (775, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 17:18:40');
INSERT INTO `sys_logininfor` VALUES (776, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 17:23:04');
INSERT INTO `sys_logininfor` VALUES (777, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 17:24:24');
INSERT INTO `sys_logininfor` VALUES (778, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-13 17:42:51');
INSERT INTO `sys_logininfor` VALUES (779, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-13 17:42:54');
INSERT INTO `sys_logininfor` VALUES (780, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 17:43:02');
INSERT INTO `sys_logininfor` VALUES (781, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 17:43:17');
INSERT INTO `sys_logininfor` VALUES (782, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 17:45:11');
INSERT INTO `sys_logininfor` VALUES (783, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 17:46:27');
INSERT INTO `sys_logininfor` VALUES (784, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 17:46:49');
INSERT INTO `sys_logininfor` VALUES (785, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 17:51:25');
INSERT INTO `sys_logininfor` VALUES (786, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 18:11:43');
INSERT INTO `sys_logininfor` VALUES (787, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 18:20:15');
INSERT INTO `sys_logininfor` VALUES (788, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 18:22:29');
INSERT INTO `sys_logininfor` VALUES (789, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-13 18:37:59');
INSERT INTO `sys_logininfor` VALUES (790, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-13 19:48:41');
INSERT INTO `sys_logininfor` VALUES (791, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 08:15:59');
INSERT INTO `sys_logininfor` VALUES (792, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 08:27:14');
INSERT INTO `sys_logininfor` VALUES (793, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 08:28:32');
INSERT INTO `sys_logininfor` VALUES (794, 'cni23303298', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 08:37:10');
INSERT INTO `sys_logininfor` VALUES (795, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 08:57:21');
INSERT INTO `sys_logininfor` VALUES (796, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 10:29:15');
INSERT INTO `sys_logininfor` VALUES (797, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 13:47:33');
INSERT INTO `sys_logininfor` VALUES (798, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 13:53:28');
INSERT INTO `sys_logininfor` VALUES (799, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 13:53:52');
INSERT INTO `sys_logininfor` VALUES (800, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 14:22:55');
INSERT INTO `sys_logininfor` VALUES (801, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-14 14:23:37');
INSERT INTO `sys_logininfor` VALUES (802, 'admin', '10.209.5.23', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 14:23:55');
INSERT INTO `sys_logininfor` VALUES (803, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-14 14:26:26');
INSERT INTO `sys_logininfor` VALUES (804, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 14:26:29');
INSERT INTO `sys_logininfor` VALUES (805, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 15:16:05');
INSERT INTO `sys_logininfor` VALUES (806, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-14 16:26:29');
INSERT INTO `sys_logininfor` VALUES (807, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 16:26:33');
INSERT INTO `sys_logininfor` VALUES (808, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-14 17:11:26');
INSERT INTO `sys_logininfor` VALUES (809, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 17:11:34');
INSERT INTO `sys_logininfor` VALUES (810, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 17:13:35');
INSERT INTO `sys_logininfor` VALUES (811, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 17:15:31');
INSERT INTO `sys_logininfor` VALUES (812, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 17:21:11');
INSERT INTO `sys_logininfor` VALUES (813, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 17:25:28');
INSERT INTO `sys_logininfor` VALUES (814, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 17:35:43');
INSERT INTO `sys_logininfor` VALUES (815, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 17:36:31');
INSERT INTO `sys_logininfor` VALUES (816, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 17:38:12');
INSERT INTO `sys_logininfor` VALUES (817, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 17:39:48');
INSERT INTO `sys_logininfor` VALUES (818, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 17:42:38');
INSERT INTO `sys_logininfor` VALUES (819, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 17:42:51');
INSERT INTO `sys_logininfor` VALUES (820, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-14 17:47:01');
INSERT INTO `sys_logininfor` VALUES (821, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 17:47:05');
INSERT INTO `sys_logininfor` VALUES (822, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 17:49:59');
INSERT INTO `sys_logininfor` VALUES (823, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 17:54:12');
INSERT INTO `sys_logininfor` VALUES (824, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-14 18:51:38');
INSERT INTO `sys_logininfor` VALUES (825, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 18:51:43');
INSERT INTO `sys_logininfor` VALUES (826, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-14 18:54:36');
INSERT INTO `sys_logininfor` VALUES (827, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-14 22:15:38');
INSERT INTO `sys_logininfor` VALUES (828, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-15 08:41:23');
INSERT INTO `sys_logininfor` VALUES (829, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-15 09:13:05');
INSERT INTO `sys_logininfor` VALUES (830, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-15 16:58:11');
INSERT INTO `sys_logininfor` VALUES (831, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-15 17:44:07');
INSERT INTO `sys_logininfor` VALUES (832, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-15 18:19:25');
INSERT INTO `sys_logininfor` VALUES (833, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-16 18:06:14');
INSERT INTO `sys_logininfor` VALUES (834, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-17 17:21:56');
INSERT INTO `sys_logininfor` VALUES (835, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 08:14:04');
INSERT INTO `sys_logininfor` VALUES (836, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 08:15:43');
INSERT INTO `sys_logininfor` VALUES (837, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 08:17:41');
INSERT INTO `sys_logininfor` VALUES (838, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 08:20:19');
INSERT INTO `sys_logininfor` VALUES (839, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 08:25:06');
INSERT INTO `sys_logininfor` VALUES (840, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 08:27:19');
INSERT INTO `sys_logininfor` VALUES (841, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 09:13:31');
INSERT INTO `sys_logininfor` VALUES (842, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-18 09:24:19');
INSERT INTO `sys_logininfor` VALUES (843, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 09:24:23');
INSERT INTO `sys_logininfor` VALUES (844, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 09:45:12');
INSERT INTO `sys_logininfor` VALUES (845, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 10:29:01');
INSERT INTO `sys_logininfor` VALUES (846, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 11:17:10');
INSERT INTO `sys_logininfor` VALUES (847, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 11:21:46');
INSERT INTO `sys_logininfor` VALUES (848, 'cni23221047', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-18 11:49:03');
INSERT INTO `sys_logininfor` VALUES (849, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 11:49:13');
INSERT INTO `sys_logininfor` VALUES (850, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 14:12:21');
INSERT INTO `sys_logininfor` VALUES (851, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-18 14:36:15');
INSERT INTO `sys_logininfor` VALUES (852, 'admin', '10.209.5.23', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 14:36:23');
INSERT INTO `sys_logininfor` VALUES (853, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 15:53:11');
INSERT INTO `sys_logininfor` VALUES (854, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 16:13:46');
INSERT INTO `sys_logininfor` VALUES (855, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 17:05:53');
INSERT INTO `sys_logininfor` VALUES (856, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 17:09:32');
INSERT INTO `sys_logininfor` VALUES (857, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 17:13:20');
INSERT INTO `sys_logininfor` VALUES (858, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 17:13:59');
INSERT INTO `sys_logininfor` VALUES (859, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 17:14:14');
INSERT INTO `sys_logininfor` VALUES (860, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 17:16:35');
INSERT INTO `sys_logininfor` VALUES (861, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 17:17:25');
INSERT INTO `sys_logininfor` VALUES (862, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 17:43:19');
INSERT INTO `sys_logininfor` VALUES (863, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 17:45:23');
INSERT INTO `sys_logininfor` VALUES (864, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 17:50:46');
INSERT INTO `sys_logininfor` VALUES (865, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 17:53:37');
INSERT INTO `sys_logininfor` VALUES (866, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 18:01:50');
INSERT INTO `sys_logininfor` VALUES (867, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 18:29:47');
INSERT INTO `sys_logininfor` VALUES (868, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-18 18:40:06');
INSERT INTO `sys_logininfor` VALUES (869, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-18 18:40:08');
INSERT INTO `sys_logininfor` VALUES (870, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 18:40:12');
INSERT INTO `sys_logininfor` VALUES (871, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 19:28:20');
INSERT INTO `sys_logininfor` VALUES (872, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-18 19:53:11');
INSERT INTO `sys_logininfor` VALUES (873, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-18 20:27:51');
INSERT INTO `sys_logininfor` VALUES (874, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-18 20:27:55');
INSERT INTO `sys_logininfor` VALUES (875, 'cni230w1182', '10.209.5.106', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-19 08:13:44');
INSERT INTO `sys_logininfor` VALUES (876, 'cni230w1182', '10.209.5.106', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-19 08:13:49');
INSERT INTO `sys_logininfor` VALUES (877, 'cni230w1182', '10.209.5.106', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-19 08:13:55');
INSERT INTO `sys_logininfor` VALUES (878, 'cni230W1182', '10.209.5.106', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-19 08:14:20');
INSERT INTO `sys_logininfor` VALUES (879, 'cni230w1182', '10.209.5.106', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-19 08:14:52');
INSERT INTO `sys_logininfor` VALUES (880, 'cni230W1182', '10.209.5.106', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-19 08:14:59');
INSERT INTO `sys_logininfor` VALUES (881, 'cni23052934', '10.209.5.106', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-09-19 08:17:50');
INSERT INTO `sys_logininfor` VALUES (882, 'cni23052934', '10.209.5.106', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 08:17:54');
INSERT INTO `sys_logininfor` VALUES (883, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 08:17:56');
INSERT INTO `sys_logininfor` VALUES (884, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-19 08:18:12');
INSERT INTO `sys_logininfor` VALUES (885, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 08:18:16');
INSERT INTO `sys_logininfor` VALUES (886, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 08:20:41');
INSERT INTO `sys_logininfor` VALUES (887, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 08:21:24');
INSERT INTO `sys_logininfor` VALUES (888, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 09:05:18');
INSERT INTO `sys_logininfor` VALUES (889, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-19 09:05:21');
INSERT INTO `sys_logininfor` VALUES (890, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 09:05:27');
INSERT INTO `sys_logininfor` VALUES (891, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 09:29:13');
INSERT INTO `sys_logininfor` VALUES (892, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 11:07:32');
INSERT INTO `sys_logininfor` VALUES (893, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 11:29:28');
INSERT INTO `sys_logininfor` VALUES (894, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 11:37:28');
INSERT INTO `sys_logininfor` VALUES (895, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 13:42:01');
INSERT INTO `sys_logininfor` VALUES (896, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 13:46:23');
INSERT INTO `sys_logininfor` VALUES (897, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 14:01:41');
INSERT INTO `sys_logininfor` VALUES (898, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 14:31:44');
INSERT INTO `sys_logininfor` VALUES (899, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 17:47:00');
INSERT INTO `sys_logininfor` VALUES (900, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 17:56:14');
INSERT INTO `sys_logininfor` VALUES (901, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 18:15:30');
INSERT INTO `sys_logininfor` VALUES (902, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 18:19:44');
INSERT INTO `sys_logininfor` VALUES (903, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 18:24:26');
INSERT INTO `sys_logininfor` VALUES (904, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 18:40:52');
INSERT INTO `sys_logininfor` VALUES (905, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 19:18:49');
INSERT INTO `sys_logininfor` VALUES (906, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 19:32:56');
INSERT INTO `sys_logininfor` VALUES (907, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-19 19:40:41');
INSERT INTO `sys_logininfor` VALUES (908, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 19:40:46');
INSERT INTO `sys_logininfor` VALUES (909, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 19:42:49');
INSERT INTO `sys_logininfor` VALUES (910, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 19:44:36');
INSERT INTO `sys_logininfor` VALUES (911, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-19 19:53:16');
INSERT INTO `sys_logininfor` VALUES (912, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 19:53:20');
INSERT INTO `sys_logininfor` VALUES (913, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 19:54:21');
INSERT INTO `sys_logininfor` VALUES (914, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-19 19:56:22');
INSERT INTO `sys_logininfor` VALUES (915, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-19 19:56:28');
INSERT INTO `sys_logininfor` VALUES (916, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-19 20:09:18');
INSERT INTO `sys_logininfor` VALUES (917, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 08:15:03');
INSERT INTO `sys_logininfor` VALUES (918, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-20 08:15:33');
INSERT INTO `sys_logininfor` VALUES (919, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 08:15:34');
INSERT INTO `sys_logininfor` VALUES (920, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 08:15:41');
INSERT INTO `sys_logininfor` VALUES (921, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-20 08:22:38');
INSERT INTO `sys_logininfor` VALUES (922, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 10:34:16');
INSERT INTO `sys_logininfor` VALUES (923, 'cni23052934', '10.209.5.106', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-20 11:44:15');
INSERT INTO `sys_logininfor` VALUES (924, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 14:07:04');
INSERT INTO `sys_logininfor` VALUES (925, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-20 14:14:43');
INSERT INTO `sys_logininfor` VALUES (926, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-09-20 14:47:57');
INSERT INTO `sys_logininfor` VALUES (927, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-20 14:48:00');
INSERT INTO `sys_logininfor` VALUES (928, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-20 14:48:02');
INSERT INTO `sys_logininfor` VALUES (929, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-20 14:48:05');
INSERT INTO `sys_logininfor` VALUES (930, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 14:48:10');
INSERT INTO `sys_logininfor` VALUES (931, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-20 16:22:39');
INSERT INTO `sys_logininfor` VALUES (932, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 17:21:45');
INSERT INTO `sys_logininfor` VALUES (933, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 17:26:21');
INSERT INTO `sys_logininfor` VALUES (934, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 17:29:32');
INSERT INTO `sys_logininfor` VALUES (935, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 17:35:02');
INSERT INTO `sys_logininfor` VALUES (936, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 17:40:08');
INSERT INTO `sys_logininfor` VALUES (937, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-20 17:48:29');
INSERT INTO `sys_logininfor` VALUES (938, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 17:50:17');
INSERT INTO `sys_logininfor` VALUES (939, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 17:51:45');
INSERT INTO `sys_logininfor` VALUES (940, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-20 17:54:21');
INSERT INTO `sys_logininfor` VALUES (941, 'cni23471668', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 17:54:36');
INSERT INTO `sys_logininfor` VALUES (942, 'cni23471668', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2024-09-20 17:55:51');
INSERT INTO `sys_logininfor` VALUES (943, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-20 18:43:55');
INSERT INTO `sys_logininfor` VALUES (944, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 08:16:00');
INSERT INTO `sys_logininfor` VALUES (945, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 08:22:35');
INSERT INTO `sys_logininfor` VALUES (946, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-21 08:30:25');
INSERT INTO `sys_logininfor` VALUES (947, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 08:30:30');
INSERT INTO `sys_logininfor` VALUES (948, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 08:58:18');
INSERT INTO `sys_logininfor` VALUES (949, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 09:02:41');
INSERT INTO `sys_logininfor` VALUES (950, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 09:10:14');
INSERT INTO `sys_logininfor` VALUES (951, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 09:16:53');
INSERT INTO `sys_logininfor` VALUES (952, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 09:45:15');
INSERT INTO `sys_logininfor` VALUES (953, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-21 13:59:08');
INSERT INTO `sys_logininfor` VALUES (954, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 13:59:18');
INSERT INTO `sys_logininfor` VALUES (955, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 14:07:25');
INSERT INTO `sys_logininfor` VALUES (956, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 15:52:33');
INSERT INTO `sys_logininfor` VALUES (957, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 16:00:11');
INSERT INTO `sys_logininfor` VALUES (958, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 16:27:00');
INSERT INTO `sys_logininfor` VALUES (959, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-21 16:44:44');
INSERT INTO `sys_logininfor` VALUES (960, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 16:44:54');
INSERT INTO `sys_logininfor` VALUES (961, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 16:57:08');
INSERT INTO `sys_logininfor` VALUES (962, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 17:29:37');
INSERT INTO `sys_logininfor` VALUES (963, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 17:36:04');
INSERT INTO `sys_logininfor` VALUES (964, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 17:40:15');
INSERT INTO `sys_logininfor` VALUES (965, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 17:44:20');
INSERT INTO `sys_logininfor` VALUES (966, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 18:20:38');
INSERT INTO `sys_logininfor` VALUES (967, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-21 19:35:59');
INSERT INTO `sys_logininfor` VALUES (968, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-21 19:40:42');
INSERT INTO `sys_logininfor` VALUES (969, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-22 15:59:38');
INSERT INTO `sys_logininfor` VALUES (970, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-22 17:56:37');
INSERT INTO `sys_logininfor` VALUES (971, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-22 20:22:35');
INSERT INTO `sys_logininfor` VALUES (972, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-22 23:16:01');
INSERT INTO `sys_logininfor` VALUES (973, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 07:40:38');
INSERT INTO `sys_logininfor` VALUES (974, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 08:20:02');
INSERT INTO `sys_logininfor` VALUES (975, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 08:28:18');
INSERT INTO `sys_logininfor` VALUES (976, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 08:29:37');
INSERT INTO `sys_logininfor` VALUES (977, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 08:29:47');
INSERT INTO `sys_logininfor` VALUES (978, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 08:33:55');
INSERT INTO `sys_logininfor` VALUES (979, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 08:42:22');
INSERT INTO `sys_logininfor` VALUES (980, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 09:51:20');
INSERT INTO `sys_logininfor` VALUES (981, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 10:52:00');
INSERT INTO `sys_logininfor` VALUES (982, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 10:54:53');
INSERT INTO `sys_logininfor` VALUES (983, 'cni23305426', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-23 11:05:42');
INSERT INTO `sys_logininfor` VALUES (984, 'cni23305426', '10.209.7.38', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-23 11:05:58');
INSERT INTO `sys_logininfor` VALUES (985, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 11:52:16');
INSERT INTO `sys_logininfor` VALUES (986, 'admin', '10.209.7.66', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-23 13:45:52');
INSERT INTO `sys_logininfor` VALUES (987, 'admin', '10.209.7.66', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 13:45:56');
INSERT INTO `sys_logininfor` VALUES (988, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 14:03:21');
INSERT INTO `sys_logininfor` VALUES (989, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 14:09:44');
INSERT INTO `sys_logininfor` VALUES (990, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 15:03:48');
INSERT INTO `sys_logininfor` VALUES (991, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 15:06:07');
INSERT INTO `sys_logininfor` VALUES (992, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 15:25:34');
INSERT INTO `sys_logininfor` VALUES (993, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 16:18:49');
INSERT INTO `sys_logininfor` VALUES (994, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 17:22:05');
INSERT INTO `sys_logininfor` VALUES (995, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-23 17:39:58');
INSERT INTO `sys_logininfor` VALUES (996, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 17:40:03');
INSERT INTO `sys_logininfor` VALUES (997, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 17:48:13');
INSERT INTO `sys_logininfor` VALUES (998, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 18:23:39');
INSERT INTO `sys_logininfor` VALUES (999, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 18:34:57');
INSERT INTO `sys_logininfor` VALUES (1000, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 18:49:58');
INSERT INTO `sys_logininfor` VALUES (1001, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-09-23 19:18:40');
INSERT INTO `sys_logininfor` VALUES (1002, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 19:18:46');
INSERT INTO `sys_logininfor` VALUES (1003, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 19:36:56');
INSERT INTO `sys_logininfor` VALUES (1004, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 19:37:27');
INSERT INTO `sys_logininfor` VALUES (1005, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 19:38:46');
INSERT INTO `sys_logininfor` VALUES (1006, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 19:42:23');
INSERT INTO `sys_logininfor` VALUES (1007, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 19:43:56');
INSERT INTO `sys_logininfor` VALUES (1008, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 19:50:17');
INSERT INTO `sys_logininfor` VALUES (1009, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 19:54:16');
INSERT INTO `sys_logininfor` VALUES (1010, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 20:03:00');
INSERT INTO `sys_logininfor` VALUES (1011, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-23 20:17:20');
INSERT INTO `sys_logininfor` VALUES (1012, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 20:17:26');
INSERT INTO `sys_logininfor` VALUES (1013, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-23 20:34:26');
INSERT INTO `sys_logininfor` VALUES (1014, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-23 21:05:00');
INSERT INTO `sys_logininfor` VALUES (1015, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 08:06:46');
INSERT INTO `sys_logininfor` VALUES (1016, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 08:14:21');
INSERT INTO `sys_logininfor` VALUES (1017, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-24 08:14:30');
INSERT INTO `sys_logininfor` VALUES (1018, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 08:14:37');
INSERT INTO `sys_logininfor` VALUES (1019, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 08:16:56');
INSERT INTO `sys_logininfor` VALUES (1020, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 08:29:13');
INSERT INTO `sys_logininfor` VALUES (1021, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 08:32:10');
INSERT INTO `sys_logininfor` VALUES (1022, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 09:35:40');
INSERT INTO `sys_logininfor` VALUES (1023, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 09:40:51');
INSERT INTO `sys_logininfor` VALUES (1024, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 15:23:55');
INSERT INTO `sys_logininfor` VALUES (1025, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 15:44:33');
INSERT INTO `sys_logininfor` VALUES (1026, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 16:22:03');
INSERT INTO `sys_logininfor` VALUES (1027, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 16:22:44');
INSERT INTO `sys_logininfor` VALUES (1028, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 17:03:11');
INSERT INTO `sys_logininfor` VALUES (1029, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 17:17:34');
INSERT INTO `sys_logininfor` VALUES (1030, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 17:20:51');
INSERT INTO `sys_logininfor` VALUES (1031, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 17:30:59');
INSERT INTO `sys_logininfor` VALUES (1032, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 17:51:26');
INSERT INTO `sys_logininfor` VALUES (1033, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 17:54:08');
INSERT INTO `sys_logininfor` VALUES (1034, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 17:54:41');
INSERT INTO `sys_logininfor` VALUES (1035, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 18:01:37');
INSERT INTO `sys_logininfor` VALUES (1036, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 18:05:57');
INSERT INTO `sys_logininfor` VALUES (1037, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-24 18:24:23');
INSERT INTO `sys_logininfor` VALUES (1038, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 18:24:34');
INSERT INTO `sys_logininfor` VALUES (1039, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 18:39:45');
INSERT INTO `sys_logininfor` VALUES (1040, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 18:40:06');
INSERT INTO `sys_logininfor` VALUES (1041, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 18:48:00');
INSERT INTO `sys_logininfor` VALUES (1042, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 19:15:47');
INSERT INTO `sys_logininfor` VALUES (1043, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 19:16:42');
INSERT INTO `sys_logininfor` VALUES (1044, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 19:25:14');
INSERT INTO `sys_logininfor` VALUES (1045, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 19:38:19');
INSERT INTO `sys_logininfor` VALUES (1046, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 19:42:44');
INSERT INTO `sys_logininfor` VALUES (1047, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-24 19:47:22');
INSERT INTO `sys_logininfor` VALUES (1048, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-24 20:08:44');
INSERT INTO `sys_logininfor` VALUES (1049, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 08:14:11');
INSERT INTO `sys_logininfor` VALUES (1050, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 08:15:19');
INSERT INTO `sys_logininfor` VALUES (1051, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 08:22:24');
INSERT INTO `sys_logininfor` VALUES (1052, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 09:14:45');
INSERT INTO `sys_logininfor` VALUES (1053, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 09:38:42');
INSERT INTO `sys_logininfor` VALUES (1054, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 09:42:06');
INSERT INTO `sys_logininfor` VALUES (1055, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 10:02:34');
INSERT INTO `sys_logininfor` VALUES (1056, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 10:08:49');
INSERT INTO `sys_logininfor` VALUES (1057, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 10:15:02');
INSERT INTO `sys_logininfor` VALUES (1058, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 10:52:35');
INSERT INTO `sys_logininfor` VALUES (1059, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-25 11:10:44');
INSERT INTO `sys_logininfor` VALUES (1060, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-09-25 11:10:47');
INSERT INTO `sys_logininfor` VALUES (1061, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 11:10:54');
INSERT INTO `sys_logininfor` VALUES (1062, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 12:26:27');
INSERT INTO `sys_logininfor` VALUES (1063, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 13:48:25');
INSERT INTO `sys_logininfor` VALUES (1064, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 13:48:41');
INSERT INTO `sys_logininfor` VALUES (1065, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 13:53:45');
INSERT INTO `sys_logininfor` VALUES (1066, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 13:54:45');
INSERT INTO `sys_logininfor` VALUES (1067, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 14:17:15');
INSERT INTO `sys_logininfor` VALUES (1068, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-25 14:20:14');
INSERT INTO `sys_logininfor` VALUES (1069, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-25 14:20:21');
INSERT INTO `sys_logininfor` VALUES (1070, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 14:20:24');
INSERT INTO `sys_logininfor` VALUES (1071, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 14:26:02');
INSERT INTO `sys_logininfor` VALUES (1072, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 15:52:09');
INSERT INTO `sys_logininfor` VALUES (1073, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-25 16:07:33');
INSERT INTO `sys_logininfor` VALUES (1074, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 16:07:35');
INSERT INTO `sys_logininfor` VALUES (1075, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 17:25:38');
INSERT INTO `sys_logininfor` VALUES (1076, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 17:43:16');
INSERT INTO `sys_logininfor` VALUES (1077, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 17:48:41');
INSERT INTO `sys_logininfor` VALUES (1078, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 17:50:51');
INSERT INTO `sys_logininfor` VALUES (1079, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 17:51:18');
INSERT INTO `sys_logininfor` VALUES (1080, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-25 19:31:39');
INSERT INTO `sys_logininfor` VALUES (1081, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 19:40:04');
INSERT INTO `sys_logininfor` VALUES (1082, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 19:43:04');
INSERT INTO `sys_logininfor` VALUES (1083, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-25 20:16:13');
INSERT INTO `sys_logininfor` VALUES (1084, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:09:43');
INSERT INTO `sys_logininfor` VALUES (1085, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-26 08:19:00');
INSERT INTO `sys_logininfor` VALUES (1086, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:19:03');
INSERT INTO `sys_logininfor` VALUES (1087, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:22:15');
INSERT INTO `sys_logininfor` VALUES (1088, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 08:22:48');
INSERT INTO `sys_logininfor` VALUES (1089, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:23:27');
INSERT INTO `sys_logininfor` VALUES (1090, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:24:37');
INSERT INTO `sys_logininfor` VALUES (1091, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 08:24:38');
INSERT INTO `sys_logininfor` VALUES (1092, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:28:09');
INSERT INTO `sys_logininfor` VALUES (1093, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:28:37');
INSERT INTO `sys_logininfor` VALUES (1094, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:28:42');
INSERT INTO `sys_logininfor` VALUES (1095, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 08:32:58');
INSERT INTO `sys_logininfor` VALUES (1096, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:33:43');
INSERT INTO `sys_logininfor` VALUES (1097, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 08:35:16');
INSERT INTO `sys_logininfor` VALUES (1098, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 08:40:32');
INSERT INTO `sys_logininfor` VALUES (1099, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 09:23:12');
INSERT INTO `sys_logininfor` VALUES (1100, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 09:25:28');
INSERT INTO `sys_logininfor` VALUES (1101, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 09:32:47');
INSERT INTO `sys_logininfor` VALUES (1102, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 10:00:57');
INSERT INTO `sys_logininfor` VALUES (1103, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 11:13:43');
INSERT INTO `sys_logininfor` VALUES (1104, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 11:22:37');
INSERT INTO `sys_logininfor` VALUES (1105, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 11:43:27');
INSERT INTO `sys_logininfor` VALUES (1106, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 13:48:11');
INSERT INTO `sys_logininfor` VALUES (1107, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-26 13:48:36');
INSERT INTO `sys_logininfor` VALUES (1108, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 13:48:38');
INSERT INTO `sys_logininfor` VALUES (1109, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 13:50:45');
INSERT INTO `sys_logininfor` VALUES (1110, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 14:15:42');
INSERT INTO `sys_logininfor` VALUES (1111, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 15:50:02');
INSERT INTO `sys_logininfor` VALUES (1112, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-26 16:21:13');
INSERT INTO `sys_logininfor` VALUES (1113, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-26 16:21:21');
INSERT INTO `sys_logininfor` VALUES (1114, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-26 16:21:30');
INSERT INTO `sys_logininfor` VALUES (1115, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-26 16:21:40');
INSERT INTO `sys_logininfor` VALUES (1116, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 16:21:47');
INSERT INTO `sys_logininfor` VALUES (1117, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 16:24:26');
INSERT INTO `sys_logininfor` VALUES (1118, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 16:32:55');
INSERT INTO `sys_logininfor` VALUES (1119, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 17:27:57');
INSERT INTO `sys_logininfor` VALUES (1120, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 17:28:30');
INSERT INTO `sys_logininfor` VALUES (1121, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 17:51:38');
INSERT INTO `sys_logininfor` VALUES (1122, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 18:31:26');
INSERT INTO `sys_logininfor` VALUES (1123, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 18:46:32');
INSERT INTO `sys_logininfor` VALUES (1124, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 19:04:11');
INSERT INTO `sys_logininfor` VALUES (1125, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 19:38:15');
INSERT INTO `sys_logininfor` VALUES (1126, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 19:44:24');
INSERT INTO `sys_logininfor` VALUES (1127, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 19:44:25');
INSERT INTO `sys_logininfor` VALUES (1128, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 19:44:48');
INSERT INTO `sys_logininfor` VALUES (1129, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-26 19:45:23');
INSERT INTO `sys_logininfor` VALUES (1130, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 19:49:28');
INSERT INTO `sys_logininfor` VALUES (1131, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-26 20:46:30');
INSERT INTO `sys_logininfor` VALUES (1132, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 08:16:09');
INSERT INTO `sys_logininfor` VALUES (1133, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 08:30:47');
INSERT INTO `sys_logininfor` VALUES (1134, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 08:43:43');
INSERT INTO `sys_logininfor` VALUES (1135, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 08:44:38');
INSERT INTO `sys_logininfor` VALUES (1136, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 08:59:21');
INSERT INTO `sys_logininfor` VALUES (1137, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 08:59:25');
INSERT INTO `sys_logininfor` VALUES (1138, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 08:59:46');
INSERT INTO `sys_logininfor` VALUES (1139, 'admin', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-27 09:00:07');
INSERT INTO `sys_logininfor` VALUES (1140, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 09:00:15');
INSERT INTO `sys_logininfor` VALUES (1141, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 09:05:08');
INSERT INTO `sys_logininfor` VALUES (1142, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 09:06:07');
INSERT INTO `sys_logininfor` VALUES (1143, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 09:12:45');
INSERT INTO `sys_logininfor` VALUES (1144, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 09:19:32');
INSERT INTO `sys_logininfor` VALUES (1145, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 09:30:35');
INSERT INTO `sys_logininfor` VALUES (1146, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 09:32:49');
INSERT INTO `sys_logininfor` VALUES (1147, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 09:35:45');
INSERT INTO `sys_logininfor` VALUES (1148, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-09-27 09:36:16');
INSERT INTO `sys_logininfor` VALUES (1149, 'cni23493246', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 09:36:28');
INSERT INTO `sys_logininfor` VALUES (1150, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 09:54:06');
INSERT INTO `sys_logininfor` VALUES (1151, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 10:52:52');
INSERT INTO `sys_logininfor` VALUES (1152, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 11:01:35');
INSERT INTO `sys_logininfor` VALUES (1153, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 11:09:53');
INSERT INTO `sys_logininfor` VALUES (1154, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 11:17:24');
INSERT INTO `sys_logininfor` VALUES (1155, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 11:26:52');
INSERT INTO `sys_logininfor` VALUES (1156, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 11:31:37');
INSERT INTO `sys_logininfor` VALUES (1157, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 11:38:31');
INSERT INTO `sys_logininfor` VALUES (1158, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 11:42:32');
INSERT INTO `sys_logininfor` VALUES (1159, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 13:41:31');
INSERT INTO `sys_logininfor` VALUES (1160, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-27 13:48:02');
INSERT INTO `sys_logininfor` VALUES (1161, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 13:48:12');
INSERT INTO `sys_logininfor` VALUES (1162, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 13:49:35');
INSERT INTO `sys_logininfor` VALUES (1163, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 13:52:23');
INSERT INTO `sys_logininfor` VALUES (1164, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 14:34:58');
INSERT INTO `sys_logininfor` VALUES (1165, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 15:16:06');
INSERT INTO `sys_logininfor` VALUES (1166, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 15:18:04');
INSERT INTO `sys_logininfor` VALUES (1167, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 15:20:51');
INSERT INTO `sys_logininfor` VALUES (1168, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 15:26:45');
INSERT INTO `sys_logininfor` VALUES (1169, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-27 16:27:07');
INSERT INTO `sys_logininfor` VALUES (1170, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 16:27:16');
INSERT INTO `sys_logininfor` VALUES (1171, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 17:24:04');
INSERT INTO `sys_logininfor` VALUES (1172, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 17:31:03');
INSERT INTO `sys_logininfor` VALUES (1173, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 17:31:46');
INSERT INTO `sys_logininfor` VALUES (1174, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 17:34:50');
INSERT INTO `sys_logininfor` VALUES (1175, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 17:35:47');
INSERT INTO `sys_logininfor` VALUES (1176, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 17:48:38');
INSERT INTO `sys_logininfor` VALUES (1177, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 17:50:36');
INSERT INTO `sys_logininfor` VALUES (1178, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 18:04:00');
INSERT INTO `sys_logininfor` VALUES (1179, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 18:07:19');
INSERT INTO `sys_logininfor` VALUES (1180, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 18:15:53');
INSERT INTO `sys_logininfor` VALUES (1181, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 18:56:37');
INSERT INTO `sys_logininfor` VALUES (1182, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 19:02:58');
INSERT INTO `sys_logininfor` VALUES (1183, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 19:06:05');
INSERT INTO `sys_logininfor` VALUES (1184, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 19:06:11');
INSERT INTO `sys_logininfor` VALUES (1185, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 19:07:05');
INSERT INTO `sys_logininfor` VALUES (1186, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 20:15:05');
INSERT INTO `sys_logininfor` VALUES (1187, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 20:19:16');
INSERT INTO `sys_logininfor` VALUES (1188, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 20:51:25');
INSERT INTO `sys_logininfor` VALUES (1189, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-27 21:27:12');
INSERT INTO `sys_logininfor` VALUES (1190, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-27 23:14:39');
INSERT INTO `sys_logininfor` VALUES (1191, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 00:09:45');
INSERT INTO `sys_logininfor` VALUES (1192, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 08:07:45');
INSERT INTO `sys_logininfor` VALUES (1193, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 08:30:19');
INSERT INTO `sys_logininfor` VALUES (1194, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-28 08:32:39');
INSERT INTO `sys_logininfor` VALUES (1195, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-28 08:52:10');
INSERT INTO `sys_logininfor` VALUES (1196, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 09:14:45');
INSERT INTO `sys_logininfor` VALUES (1197, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 10:07:49');
INSERT INTO `sys_logininfor` VALUES (1198, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 11:25:08');
INSERT INTO `sys_logininfor` VALUES (1199, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 11:47:00');
INSERT INTO `sys_logininfor` VALUES (1200, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 13:55:12');
INSERT INTO `sys_logininfor` VALUES (1201, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 14:51:53');
INSERT INTO `sys_logininfor` VALUES (1202, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-28 16:22:19');
INSERT INTO `sys_logininfor` VALUES (1203, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 16:53:06');
INSERT INTO `sys_logininfor` VALUES (1204, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-28 16:55:31');
INSERT INTO `sys_logininfor` VALUES (1205, 'cni23485552', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 16:55:37');
INSERT INTO `sys_logininfor` VALUES (1206, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 17:22:41');
INSERT INTO `sys_logininfor` VALUES (1207, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 17:37:10');
INSERT INTO `sys_logininfor` VALUES (1208, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-28 17:37:49');
INSERT INTO `sys_logininfor` VALUES (1209, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 17:46:26');
INSERT INTO `sys_logininfor` VALUES (1210, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-28 21:39:57');
INSERT INTO `sys_logininfor` VALUES (1211, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 08:14:45');
INSERT INTO `sys_logininfor` VALUES (1212, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 08:17:08');
INSERT INTO `sys_logininfor` VALUES (1213, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 08:47:01');
INSERT INTO `sys_logininfor` VALUES (1214, 'cni23485553', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 10:37:56');
INSERT INTO `sys_logininfor` VALUES (1215, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 11:35:54');
INSERT INTO `sys_logininfor` VALUES (1216, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 11:46:15');
INSERT INTO `sys_logininfor` VALUES (1217, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 13:53:20');
INSERT INTO `sys_logininfor` VALUES (1218, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 13:53:40');
INSERT INTO `sys_logininfor` VALUES (1219, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 13:56:42');
INSERT INTO `sys_logininfor` VALUES (1220, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 14:12:10');
INSERT INTO `sys_logininfor` VALUES (1221, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 15:26:43');
INSERT INTO `sys_logininfor` VALUES (1222, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 15:32:17');
INSERT INTO `sys_logininfor` VALUES (1223, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 15:32:49');
INSERT INTO `sys_logininfor` VALUES (1224, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 15:41:33');
INSERT INTO `sys_logininfor` VALUES (1225, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 15:46:56');
INSERT INTO `sys_logininfor` VALUES (1226, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 16:03:12');
INSERT INTO `sys_logininfor` VALUES (1227, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 16:42:54');
INSERT INTO `sys_logininfor` VALUES (1228, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 16:48:04');
INSERT INTO `sys_logininfor` VALUES (1229, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 16:56:06');
INSERT INTO `sys_logininfor` VALUES (1230, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 17:06:44');
INSERT INTO `sys_logininfor` VALUES (1231, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 17:21:36');
INSERT INTO `sys_logininfor` VALUES (1232, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 17:32:53');
INSERT INTO `sys_logininfor` VALUES (1233, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 17:40:58');
INSERT INTO `sys_logininfor` VALUES (1234, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 17:43:19');
INSERT INTO `sys_logininfor` VALUES (1235, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 17:43:25');
INSERT INTO `sys_logininfor` VALUES (1236, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 17:46:44');
INSERT INTO `sys_logininfor` VALUES (1237, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 17:54:53');
INSERT INTO `sys_logininfor` VALUES (1238, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 18:04:18');
INSERT INTO `sys_logininfor` VALUES (1239, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-29 21:06:30');
INSERT INTO `sys_logininfor` VALUES (1240, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-29 22:51:48');
INSERT INTO `sys_logininfor` VALUES (1241, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 08:15:17');
INSERT INTO `sys_logininfor` VALUES (1242, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-30 09:16:18');
INSERT INTO `sys_logininfor` VALUES (1243, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 09:20:00');
INSERT INTO `sys_logininfor` VALUES (1244, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 09:36:19');
INSERT INTO `sys_logininfor` VALUES (1245, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 09:42:06');
INSERT INTO `sys_logininfor` VALUES (1246, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-30 11:11:17');
INSERT INTO `sys_logininfor` VALUES (1247, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-30 11:39:06');
INSERT INTO `sys_logininfor` VALUES (1248, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-30 13:43:52');
INSERT INTO `sys_logininfor` VALUES (1249, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 14:00:27');
INSERT INTO `sys_logininfor` VALUES (1250, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 14:29:36');
INSERT INTO `sys_logininfor` VALUES (1251, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 14:57:05');
INSERT INTO `sys_logininfor` VALUES (1252, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 14:59:07');
INSERT INTO `sys_logininfor` VALUES (1253, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-30 15:29:51');
INSERT INTO `sys_logininfor` VALUES (1254, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 16:10:07');
INSERT INTO `sys_logininfor` VALUES (1255, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-09-30 16:10:32');
INSERT INTO `sys_logininfor` VALUES (1256, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 16:10:37');
INSERT INTO `sys_logininfor` VALUES (1257, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-30 16:12:30');
INSERT INTO `sys_logininfor` VALUES (1258, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-30 16:13:38');
INSERT INTO `sys_logininfor` VALUES (1259, 'cni230wa118', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 16:34:16');
INSERT INTO `sys_logininfor` VALUES (1260, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-09-30 17:12:37');
INSERT INTO `sys_logininfor` VALUES (1261, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-09-30 19:13:10');
INSERT INTO `sys_logininfor` VALUES (1262, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-04 10:29:38');
INSERT INTO `sys_logininfor` VALUES (1263, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-04 10:35:54');
INSERT INTO `sys_logininfor` VALUES (1264, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-04 10:40:36');
INSERT INTO `sys_logininfor` VALUES (1265, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-04 10:40:40');
INSERT INTO `sys_logininfor` VALUES (1266, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 08:12:53');
INSERT INTO `sys_logininfor` VALUES (1267, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 08:13:14');
INSERT INTO `sys_logininfor` VALUES (1268, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 08:17:23');
INSERT INTO `sys_logininfor` VALUES (1269, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 08:22:56');
INSERT INTO `sys_logininfor` VALUES (1270, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 08:38:08');
INSERT INTO `sys_logininfor` VALUES (1271, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 09:12:57');
INSERT INTO `sys_logininfor` VALUES (1272, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 10:25:35');
INSERT INTO `sys_logininfor` VALUES (1273, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 10:35:04');
INSERT INTO `sys_logininfor` VALUES (1274, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-08 14:02:56');
INSERT INTO `sys_logininfor` VALUES (1275, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-08 14:03:02');
INSERT INTO `sys_logininfor` VALUES (1276, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 14:03:08');
INSERT INTO `sys_logininfor` VALUES (1277, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 15:34:26');
INSERT INTO `sys_logininfor` VALUES (1278, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 15:49:47');
INSERT INTO `sys_logininfor` VALUES (1279, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 16:36:38');
INSERT INTO `sys_logininfor` VALUES (1280, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 16:58:19');
INSERT INTO `sys_logininfor` VALUES (1281, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-08 16:58:32');
INSERT INTO `sys_logininfor` VALUES (1282, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 16:58:44');
INSERT INTO `sys_logininfor` VALUES (1283, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 16:59:53');
INSERT INTO `sys_logininfor` VALUES (1284, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 17:00:11');
INSERT INTO `sys_logininfor` VALUES (1285, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 17:15:24');
INSERT INTO `sys_logininfor` VALUES (1286, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 17:15:33');
INSERT INTO `sys_logininfor` VALUES (1287, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 17:15:50');
INSERT INTO `sys_logininfor` VALUES (1288, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 17:16:06');
INSERT INTO `sys_logininfor` VALUES (1289, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 17:16:42');
INSERT INTO `sys_logininfor` VALUES (1290, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 17:16:47');
INSERT INTO `sys_logininfor` VALUES (1291, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 17:18:24');
INSERT INTO `sys_logininfor` VALUES (1292, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 17:18:38');
INSERT INTO `sys_logininfor` VALUES (1293, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 17:18:48');
INSERT INTO `sys_logininfor` VALUES (1294, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 17:19:36');
INSERT INTO `sys_logininfor` VALUES (1295, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 17:20:13');
INSERT INTO `sys_logininfor` VALUES (1296, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 17:20:28');
INSERT INTO `sys_logininfor` VALUES (1297, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 17:29:36');
INSERT INTO `sys_logininfor` VALUES (1298, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 17:30:08');
INSERT INTO `sys_logininfor` VALUES (1299, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 17:30:19');
INSERT INTO `sys_logininfor` VALUES (1300, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 17:44:20');
INSERT INTO `sys_logininfor` VALUES (1301, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 19:00:35');
INSERT INTO `sys_logininfor` VALUES (1302, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:01:24');
INSERT INTO `sys_logininfor` VALUES (1303, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 19:01:58');
INSERT INTO `sys_logininfor` VALUES (1304, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 19:02:10');
INSERT INTO `sys_logininfor` VALUES (1305, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-08 19:03:07');
INSERT INTO `sys_logininfor` VALUES (1306, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 19:03:23');
INSERT INTO `sys_logininfor` VALUES (1307, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:08:35');
INSERT INTO `sys_logininfor` VALUES (1308, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 19:14:03');
INSERT INTO `sys_logininfor` VALUES (1309, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:18:35');
INSERT INTO `sys_logininfor` VALUES (1310, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:37:55');
INSERT INTO `sys_logininfor` VALUES (1311, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-08 19:39:20');
INSERT INTO `sys_logininfor` VALUES (1312, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-08 19:39:22');
INSERT INTO `sys_logininfor` VALUES (1313, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:39:25');
INSERT INTO `sys_logininfor` VALUES (1314, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:39:39');
INSERT INTO `sys_logininfor` VALUES (1315, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:40:03');
INSERT INTO `sys_logininfor` VALUES (1316, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:43:30');
INSERT INTO `sys_logininfor` VALUES (1317, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-08 19:44:52');
INSERT INTO `sys_logininfor` VALUES (1318, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:44:58');
INSERT INTO `sys_logininfor` VALUES (1319, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 19:46:19');
INSERT INTO `sys_logininfor` VALUES (1320, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-08 19:49:15');
INSERT INTO `sys_logininfor` VALUES (1321, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 19:52:20');
INSERT INTO `sys_logininfor` VALUES (1322, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-08 20:04:55');
INSERT INTO `sys_logininfor` VALUES (1323, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 08:18:57');
INSERT INTO `sys_logininfor` VALUES (1324, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 08:25:28');
INSERT INTO `sys_logininfor` VALUES (1325, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 08:46:40');
INSERT INTO `sys_logininfor` VALUES (1326, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 08:48:02');
INSERT INTO `sys_logininfor` VALUES (1327, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 08:56:06');
INSERT INTO `sys_logininfor` VALUES (1328, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 08:59:20');
INSERT INTO `sys_logininfor` VALUES (1329, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 09:10:22');
INSERT INTO `sys_logininfor` VALUES (1330, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-09 09:16:15');
INSERT INTO `sys_logininfor` VALUES (1331, 'cni23485561', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-09 09:16:26');
INSERT INTO `sys_logininfor` VALUES (1332, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-09 09:17:03');
INSERT INTO `sys_logininfor` VALUES (1333, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 09:17:13');
INSERT INTO `sys_logininfor` VALUES (1334, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-09 09:19:21');
INSERT INTO `sys_logininfor` VALUES (1335, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 09:19:46');
INSERT INTO `sys_logininfor` VALUES (1336, 'admin', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-09 09:20:09');
INSERT INTO `sys_logininfor` VALUES (1337, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 09:20:29');
INSERT INTO `sys_logininfor` VALUES (1338, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 09:33:01');
INSERT INTO `sys_logininfor` VALUES (1339, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 09:47:42');
INSERT INTO `sys_logininfor` VALUES (1340, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 09:51:17');
INSERT INTO `sys_logininfor` VALUES (1341, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 09:51:51');
INSERT INTO `sys_logininfor` VALUES (1342, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 09:52:33');
INSERT INTO `sys_logininfor` VALUES (1343, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 09:53:52');
INSERT INTO `sys_logininfor` VALUES (1344, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 09:59:51');
INSERT INTO `sys_logininfor` VALUES (1345, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 10:01:40');
INSERT INTO `sys_logininfor` VALUES (1346, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 10:02:55');
INSERT INTO `sys_logininfor` VALUES (1347, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 10:05:00');
INSERT INTO `sys_logininfor` VALUES (1348, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-09 10:06:50');
INSERT INTO `sys_logininfor` VALUES (1349, 'cni23481244', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 10:06:59');
INSERT INTO `sys_logininfor` VALUES (1350, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 10:07:25');
INSERT INTO `sys_logininfor` VALUES (1351, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 10:21:35');
INSERT INTO `sys_logininfor` VALUES (1352, 'admin', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-09 10:28:34');
INSERT INTO `sys_logininfor` VALUES (1353, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 10:28:43');
INSERT INTO `sys_logininfor` VALUES (1354, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-09 10:30:33');
INSERT INTO `sys_logininfor` VALUES (1355, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 10:30:36');
INSERT INTO `sys_logininfor` VALUES (1356, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 10:38:38');
INSERT INTO `sys_logininfor` VALUES (1357, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-09 10:39:33');
INSERT INTO `sys_logininfor` VALUES (1358, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 10:39:36');
INSERT INTO `sys_logininfor` VALUES (1359, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 11:02:47');
INSERT INTO `sys_logininfor` VALUES (1360, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 17:13:49');
INSERT INTO `sys_logininfor` VALUES (1361, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 17:14:30');
INSERT INTO `sys_logininfor` VALUES (1362, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 17:20:22');
INSERT INTO `sys_logininfor` VALUES (1363, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 17:35:20');
INSERT INTO `sys_logininfor` VALUES (1364, 'cni230wa118', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 17:45:11');
INSERT INTO `sys_logininfor` VALUES (1365, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 17:51:34');
INSERT INTO `sys_logininfor` VALUES (1366, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-09 18:18:04');
INSERT INTO `sys_logininfor` VALUES (1367, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-09 18:27:01');
INSERT INTO `sys_logininfor` VALUES (1368, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 18:47:37');
INSERT INTO `sys_logininfor` VALUES (1369, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-09 19:14:52');
INSERT INTO `sys_logininfor` VALUES (1370, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 19:14:58');
INSERT INTO `sys_logininfor` VALUES (1371, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-09 19:24:27');
INSERT INTO `sys_logininfor` VALUES (1372, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 19:24:33');
INSERT INTO `sys_logininfor` VALUES (1373, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 19:29:26');
INSERT INTO `sys_logininfor` VALUES (1374, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-09 22:16:12');
INSERT INTO `sys_logininfor` VALUES (1375, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 08:16:34');
INSERT INTO `sys_logininfor` VALUES (1376, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 08:16:38');
INSERT INTO `sys_logininfor` VALUES (1377, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 08:17:57');
INSERT INTO `sys_logininfor` VALUES (1378, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 08:28:52');
INSERT INTO `sys_logininfor` VALUES (1379, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-10 08:31:30');
INSERT INTO `sys_logininfor` VALUES (1380, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-10 08:46:04');
INSERT INTO `sys_logininfor` VALUES (1381, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 10:39:56');
INSERT INTO `sys_logininfor` VALUES (1382, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-10 14:16:00');
INSERT INTO `sys_logininfor` VALUES (1383, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-10 14:16:21');
INSERT INTO `sys_logininfor` VALUES (1384, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-10 14:16:26');
INSERT INTO `sys_logininfor` VALUES (1385, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 14:16:37');
INSERT INTO `sys_logininfor` VALUES (1386, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 14:57:42');
INSERT INTO `sys_logininfor` VALUES (1387, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-10 15:31:36');
INSERT INTO `sys_logininfor` VALUES (1388, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 15:50:59');
INSERT INTO `sys_logininfor` VALUES (1389, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 16:25:35');
INSERT INTO `sys_logininfor` VALUES (1390, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 16:37:55');
INSERT INTO `sys_logininfor` VALUES (1391, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-10 17:26:23');
INSERT INTO `sys_logininfor` VALUES (1392, 'admin', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-10 17:28:17');
INSERT INTO `sys_logininfor` VALUES (1393, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-10 17:28:22');
INSERT INTO `sys_logininfor` VALUES (1394, 'cni23478202', '10.209.5.12', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-10 17:28:26');
INSERT INTO `sys_logininfor` VALUES (1395, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 19:17:23');
INSERT INTO `sys_logininfor` VALUES (1396, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-10 19:29:58');
INSERT INTO `sys_logininfor` VALUES (1397, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 19:30:56');
INSERT INTO `sys_logininfor` VALUES (1398, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 19:37:55');
INSERT INTO `sys_logininfor` VALUES (1399, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-10 19:38:17');
INSERT INTO `sys_logininfor` VALUES (1400, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-10 19:40:49');
INSERT INTO `sys_logininfor` VALUES (1401, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-10 19:44:59');
INSERT INTO `sys_logininfor` VALUES (1402, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-10 20:45:53');
INSERT INTO `sys_logininfor` VALUES (1403, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-10 21:11:06');
INSERT INTO `sys_logininfor` VALUES (1404, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 08:16:13');
INSERT INTO `sys_logininfor` VALUES (1405, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 08:31:35');
INSERT INTO `sys_logininfor` VALUES (1406, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-10-11 08:47:50');
INSERT INTO `sys_logininfor` VALUES (1407, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 08:47:57');
INSERT INTO `sys_logininfor` VALUES (1408, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 10:09:28');
INSERT INTO `sys_logininfor` VALUES (1409, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 11:22:58');
INSERT INTO `sys_logininfor` VALUES (1410, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 11:42:13');
INSERT INTO `sys_logininfor` VALUES (1411, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-11 15:57:53');
INSERT INTO `sys_logininfor` VALUES (1412, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-11 16:09:20');
INSERT INTO `sys_logininfor` VALUES (1413, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 16:18:38');
INSERT INTO `sys_logininfor` VALUES (1414, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 17:26:44');
INSERT INTO `sys_logininfor` VALUES (1415, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 17:34:03');
INSERT INTO `sys_logininfor` VALUES (1416, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 17:43:41');
INSERT INTO `sys_logininfor` VALUES (1417, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-11 17:44:45');
INSERT INTO `sys_logininfor` VALUES (1418, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 17:46:27');
INSERT INTO `sys_logininfor` VALUES (1419, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-11 17:49:27');
INSERT INTO `sys_logininfor` VALUES (1420, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-11 19:01:41');
INSERT INTO `sys_logininfor` VALUES (1421, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 08:14:15');
INSERT INTO `sys_logininfor` VALUES (1422, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 08:27:12');
INSERT INTO `sys_logininfor` VALUES (1423, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 08:44:13');
INSERT INTO `sys_logininfor` VALUES (1424, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-12 09:58:25');
INSERT INTO `sys_logininfor` VALUES (1425, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 13:45:53');
INSERT INTO `sys_logininfor` VALUES (1426, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-12 15:15:51');
INSERT INTO `sys_logininfor` VALUES (1427, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 15:15:56');
INSERT INTO `sys_logininfor` VALUES (1428, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 15:44:51');
INSERT INTO `sys_logininfor` VALUES (1429, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-12 17:10:20');
INSERT INTO `sys_logininfor` VALUES (1430, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 17:21:09');
INSERT INTO `sys_logininfor` VALUES (1431, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 17:21:14');
INSERT INTO `sys_logininfor` VALUES (1432, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 17:23:57');
INSERT INTO `sys_logininfor` VALUES (1433, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 17:27:42');
INSERT INTO `sys_logininfor` VALUES (1434, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 17:37:52');
INSERT INTO `sys_logininfor` VALUES (1435, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-12 17:38:44');
INSERT INTO `sys_logininfor` VALUES (1436, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 17:42:47');
INSERT INTO `sys_logininfor` VALUES (1437, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-12 17:45:26');
INSERT INTO `sys_logininfor` VALUES (1438, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-12 17:47:50');
INSERT INTO `sys_logininfor` VALUES (1439, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 17:49:33');
INSERT INTO `sys_logininfor` VALUES (1440, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-12 17:53:12');
INSERT INTO `sys_logininfor` VALUES (1441, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 18:01:29');
INSERT INTO `sys_logininfor` VALUES (1442, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-12 21:10:26');
INSERT INTO `sys_logininfor` VALUES (1443, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-13 16:42:10');
INSERT INTO `sys_logininfor` VALUES (1444, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-13 18:18:45');
INSERT INTO `sys_logininfor` VALUES (1445, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 08:31:47');
INSERT INTO `sys_logininfor` VALUES (1446, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 08:37:42');
INSERT INTO `sys_logininfor` VALUES (1447, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 09:22:05');
INSERT INTO `sys_logininfor` VALUES (1448, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 09:54:54');
INSERT INTO `sys_logininfor` VALUES (1449, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 10:59:45');
INSERT INTO `sys_logininfor` VALUES (1450, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-14 15:36:46');
INSERT INTO `sys_logininfor` VALUES (1451, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 15:40:58');
INSERT INTO `sys_logininfor` VALUES (1452, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-14 16:34:35');
INSERT INTO `sys_logininfor` VALUES (1453, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 17:30:26');
INSERT INTO `sys_logininfor` VALUES (1454, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-14 17:37:28');
INSERT INTO `sys_logininfor` VALUES (1455, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 17:39:55');
INSERT INTO `sys_logininfor` VALUES (1456, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-14 18:17:41');
INSERT INTO `sys_logininfor` VALUES (1457, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-14 18:23:02');
INSERT INTO `sys_logininfor` VALUES (1458, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-14 18:53:44');
INSERT INTO `sys_logininfor` VALUES (1459, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 19:12:21');
INSERT INTO `sys_logininfor` VALUES (1460, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 19:14:49');
INSERT INTO `sys_logininfor` VALUES (1461, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 19:25:10');
INSERT INTO `sys_logininfor` VALUES (1462, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 19:27:11');
INSERT INTO `sys_logininfor` VALUES (1463, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-14 19:31:09');
INSERT INTO `sys_logininfor` VALUES (1464, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 19:38:03');
INSERT INTO `sys_logininfor` VALUES (1465, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 19:39:52');
INSERT INTO `sys_logininfor` VALUES (1466, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 19:40:00');
INSERT INTO `sys_logininfor` VALUES (1467, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-14 19:49:06');
INSERT INTO `sys_logininfor` VALUES (1468, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-14 19:53:08');
INSERT INTO `sys_logininfor` VALUES (1469, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 08:15:15');
INSERT INTO `sys_logininfor` VALUES (1470, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-15 08:18:52');
INSERT INTO `sys_logininfor` VALUES (1471, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 08:21:06');
INSERT INTO `sys_logininfor` VALUES (1472, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 09:41:55');
INSERT INTO `sys_logininfor` VALUES (1473, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-15 15:01:18');
INSERT INTO `sys_logininfor` VALUES (1474, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 17:15:16');
INSERT INTO `sys_logininfor` VALUES (1475, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-15 17:51:38');
INSERT INTO `sys_logininfor` VALUES (1476, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 17:52:54');
INSERT INTO `sys_logininfor` VALUES (1477, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 18:25:45');
INSERT INTO `sys_logininfor` VALUES (1478, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 19:12:26');
INSERT INTO `sys_logininfor` VALUES (1479, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 19:13:37');
INSERT INTO `sys_logininfor` VALUES (1480, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 19:22:21');
INSERT INTO `sys_logininfor` VALUES (1481, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 19:36:56');
INSERT INTO `sys_logininfor` VALUES (1482, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-15 19:42:06');
INSERT INTO `sys_logininfor` VALUES (1483, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-15 19:42:15');
INSERT INTO `sys_logininfor` VALUES (1484, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-15 19:51:49');
INSERT INTO `sys_logininfor` VALUES (1485, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-15 19:56:39');
INSERT INTO `sys_logininfor` VALUES (1486, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-15 20:21:48');
INSERT INTO `sys_logininfor` VALUES (1487, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-16 08:14:22');
INSERT INTO `sys_logininfor` VALUES (1488, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-16 08:19:09');
INSERT INTO `sys_logininfor` VALUES (1489, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-16 08:35:46');
INSERT INTO `sys_logininfor` VALUES (1490, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-16 09:05:19');
INSERT INTO `sys_logininfor` VALUES (1491, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-16 11:45:15');
INSERT INTO `sys_logininfor` VALUES (1492, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-16 16:27:45');
INSERT INTO `sys_logininfor` VALUES (1493, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-16 16:30:44');
INSERT INTO `sys_logininfor` VALUES (1494, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-16 17:12:16');
INSERT INTO `sys_logininfor` VALUES (1495, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-16 17:14:53');
INSERT INTO `sys_logininfor` VALUES (1496, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-16 17:15:06');
INSERT INTO `sys_logininfor` VALUES (1497, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-16 17:34:37');
INSERT INTO `sys_logininfor` VALUES (1498, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-16 17:35:44');
INSERT INTO `sys_logininfor` VALUES (1499, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-16 17:42:19');
INSERT INTO `sys_logininfor` VALUES (1500, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-16 17:45:30');
INSERT INTO `sys_logininfor` VALUES (1501, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-16 17:46:30');
INSERT INTO `sys_logininfor` VALUES (1502, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-16 17:49:44');
INSERT INTO `sys_logininfor` VALUES (1503, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-16 19:45:52');
INSERT INTO `sys_logininfor` VALUES (1504, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 08:14:30');
INSERT INTO `sys_logininfor` VALUES (1505, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 08:24:39');
INSERT INTO `sys_logininfor` VALUES (1506, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 09:37:59');
INSERT INTO `sys_logininfor` VALUES (1507, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-17 14:57:26');
INSERT INTO `sys_logininfor` VALUES (1508, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-17 15:03:04');
INSERT INTO `sys_logininfor` VALUES (1509, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 17:22:54');
INSERT INTO `sys_logininfor` VALUES (1510, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 17:45:09');
INSERT INTO `sys_logininfor` VALUES (1511, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 18:40:14');
INSERT INTO `sys_logininfor` VALUES (1512, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 18:53:25');
INSERT INTO `sys_logininfor` VALUES (1513, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 19:08:38');
INSERT INTO `sys_logininfor` VALUES (1514, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 19:23:49');
INSERT INTO `sys_logininfor` VALUES (1515, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 19:34:20');
INSERT INTO `sys_logininfor` VALUES (1516, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-17 19:35:59');
INSERT INTO `sys_logininfor` VALUES (1517, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 19:41:33');
INSERT INTO `sys_logininfor` VALUES (1518, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-17 19:41:35');
INSERT INTO `sys_logininfor` VALUES (1519, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-17 19:45:22');
INSERT INTO `sys_logininfor` VALUES (1520, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-17 20:26:09');
INSERT INTO `sys_logininfor` VALUES (1521, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-17 21:01:35');
INSERT INTO `sys_logininfor` VALUES (1522, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 08:21:12');
INSERT INTO `sys_logininfor` VALUES (1523, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-18 08:38:08');
INSERT INTO `sys_logininfor` VALUES (1524, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-18 08:43:53');
INSERT INTO `sys_logininfor` VALUES (1525, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 10:34:46');
INSERT INTO `sys_logininfor` VALUES (1526, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 11:12:52');
INSERT INTO `sys_logininfor` VALUES (1527, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 13:51:30');
INSERT INTO `sys_logininfor` VALUES (1528, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 14:18:36');
INSERT INTO `sys_logininfor` VALUES (1529, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 15:36:39');
INSERT INTO `sys_logininfor` VALUES (1530, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-18 16:13:57');
INSERT INTO `sys_logininfor` VALUES (1531, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-18 16:14:00');
INSERT INTO `sys_logininfor` VALUES (1532, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 17:41:16');
INSERT INTO `sys_logininfor` VALUES (1533, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 17:44:11');
INSERT INTO `sys_logininfor` VALUES (1534, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-18 17:45:07');
INSERT INTO `sys_logininfor` VALUES (1535, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-18 17:45:35');
INSERT INTO `sys_logininfor` VALUES (1536, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 17:48:39');
INSERT INTO `sys_logininfor` VALUES (1537, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-18 17:51:21');
INSERT INTO `sys_logininfor` VALUES (1538, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-18 22:15:15');
INSERT INTO `sys_logininfor` VALUES (1539, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-19 09:49:36');
INSERT INTO `sys_logininfor` VALUES (1540, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-19 10:25:18');
INSERT INTO `sys_logininfor` VALUES (1541, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-19 11:26:13');
INSERT INTO `sys_logininfor` VALUES (1542, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-19 15:28:42');
INSERT INTO `sys_logininfor` VALUES (1543, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-19 16:34:40');
INSERT INTO `sys_logininfor` VALUES (1544, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-19 16:45:53');
INSERT INTO `sys_logininfor` VALUES (1545, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-19 17:27:36');
INSERT INTO `sys_logininfor` VALUES (1546, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-19 17:31:08');
INSERT INTO `sys_logininfor` VALUES (1547, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-19 17:40:14');
INSERT INTO `sys_logininfor` VALUES (1548, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-19 17:44:40');
INSERT INTO `sys_logininfor` VALUES (1549, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-19 17:47:59');
INSERT INTO `sys_logininfor` VALUES (1550, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-19 17:48:02');
INSERT INTO `sys_logininfor` VALUES (1551, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-19 18:44:06');
INSERT INTO `sys_logininfor` VALUES (1552, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-19 19:19:46');
INSERT INTO `sys_logininfor` VALUES (1553, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-20 14:31:20');
INSERT INTO `sys_logininfor` VALUES (1554, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-20 17:10:02');
INSERT INTO `sys_logininfor` VALUES (1555, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-20 17:10:06');
INSERT INTO `sys_logininfor` VALUES (1556, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-20 17:50:17');
INSERT INTO `sys_logininfor` VALUES (1557, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-21 08:21:53');
INSERT INTO `sys_logininfor` VALUES (1558, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-21 08:24:48');
INSERT INTO `sys_logininfor` VALUES (1559, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-21 08:25:38');
INSERT INTO `sys_logininfor` VALUES (1560, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-21 08:56:46');
INSERT INTO `sys_logininfor` VALUES (1561, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-21 09:53:51');
INSERT INTO `sys_logininfor` VALUES (1562, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-21 09:54:10');
INSERT INTO `sys_logininfor` VALUES (1563, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-21 09:58:11');
INSERT INTO `sys_logininfor` VALUES (1564, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-21 14:42:44');
INSERT INTO `sys_logininfor` VALUES (1565, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-21 14:54:13');
INSERT INTO `sys_logininfor` VALUES (1566, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-21 16:35:54');
INSERT INTO `sys_logininfor` VALUES (1567, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-21 18:09:03');
INSERT INTO `sys_logininfor` VALUES (1568, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-21 18:24:05');
INSERT INTO `sys_logininfor` VALUES (1569, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-21 19:21:19');
INSERT INTO `sys_logininfor` VALUES (1570, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-21 19:31:12');
INSERT INTO `sys_logininfor` VALUES (1571, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-21 19:38:38');
INSERT INTO `sys_logininfor` VALUES (1572, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-21 19:38:44');
INSERT INTO `sys_logininfor` VALUES (1573, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-21 19:43:27');
INSERT INTO `sys_logininfor` VALUES (1574, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-21 19:50:51');
INSERT INTO `sys_logininfor` VALUES (1575, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-21 19:52:47');
INSERT INTO `sys_logininfor` VALUES (1576, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-21 21:02:48');
INSERT INTO `sys_logininfor` VALUES (1577, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 08:04:02');
INSERT INTO `sys_logininfor` VALUES (1578, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 08:19:36');
INSERT INTO `sys_logininfor` VALUES (1579, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 08:28:19');
INSERT INTO `sys_logininfor` VALUES (1580, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-22 08:48:13');
INSERT INTO `sys_logininfor` VALUES (1581, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 08:48:16');
INSERT INTO `sys_logininfor` VALUES (1582, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 10:01:26');
INSERT INTO `sys_logininfor` VALUES (1583, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 10:25:36');
INSERT INTO `sys_logininfor` VALUES (1584, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2024-10-22 13:49:32');
INSERT INTO `sys_logininfor` VALUES (1585, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2024-10-22 13:49:37');
INSERT INTO `sys_logininfor` VALUES (1586, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-22 13:49:40');
INSERT INTO `sys_logininfor` VALUES (1587, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 13:51:51');
INSERT INTO `sys_logininfor` VALUES (1588, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 13:52:01');
INSERT INTO `sys_logininfor` VALUES (1589, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 14:33:39');
INSERT INTO `sys_logininfor` VALUES (1590, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 14:40:59');
INSERT INTO `sys_logininfor` VALUES (1591, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 17:35:55');
INSERT INTO `sys_logininfor` VALUES (1592, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-22 17:36:53');
INSERT INTO `sys_logininfor` VALUES (1593, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 17:36:58');
INSERT INTO `sys_logininfor` VALUES (1594, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 17:50:40');
INSERT INTO `sys_logininfor` VALUES (1595, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 17:56:24');
INSERT INTO `sys_logininfor` VALUES (1596, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 18:20:43');
INSERT INTO `sys_logininfor` VALUES (1597, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 19:05:43');
INSERT INTO `sys_logininfor` VALUES (1598, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-22 19:22:18');
INSERT INTO `sys_logininfor` VALUES (1599, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 19:22:23');
INSERT INTO `sys_logininfor` VALUES (1600, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-22 19:28:40');
INSERT INTO `sys_logininfor` VALUES (1601, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 19:28:41');
INSERT INTO `sys_logininfor` VALUES (1602, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 19:38:27');
INSERT INTO `sys_logininfor` VALUES (1603, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 19:47:39');
INSERT INTO `sys_logininfor` VALUES (1604, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 19:57:34');
INSERT INTO `sys_logininfor` VALUES (1605, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 20:08:41');
INSERT INTO `sys_logininfor` VALUES (1606, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-22 20:45:51');
INSERT INTO `sys_logininfor` VALUES (1607, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-22 20:59:57');
INSERT INTO `sys_logininfor` VALUES (1608, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-23 08:14:03');
INSERT INTO `sys_logininfor` VALUES (1609, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-23 08:23:28');
INSERT INTO `sys_logininfor` VALUES (1610, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 08:48:32');
INSERT INTO `sys_logininfor` VALUES (1611, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-23 09:13:16');
INSERT INTO `sys_logininfor` VALUES (1612, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-23 09:20:59');
INSERT INTO `sys_logininfor` VALUES (1613, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-23 11:28:00');
INSERT INTO `sys_logininfor` VALUES (1614, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 14:07:03');
INSERT INTO `sys_logininfor` VALUES (1615, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-23 14:12:40');
INSERT INTO `sys_logininfor` VALUES (1616, 'cni230wa129', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-23 14:12:49');
INSERT INTO `sys_logininfor` VALUES (1617, 'cni230wa129', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 14:12:51');
INSERT INTO `sys_logininfor` VALUES (1618, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 14:22:20');
INSERT INTO `sys_logininfor` VALUES (1619, 'cni230wa129', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-23 14:43:03');
INSERT INTO `sys_logininfor` VALUES (1620, 'cni230wa131', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 14:43:20');
INSERT INTO `sys_logininfor` VALUES (1621, 'cni230wa131', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-23 14:43:47');
INSERT INTO `sys_logininfor` VALUES (1622, 'cni230wa131', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 14:43:56');
INSERT INTO `sys_logininfor` VALUES (1623, 'cni230wa131', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-23 14:44:13');
INSERT INTO `sys_logininfor` VALUES (1624, 'cni230wa129', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 14:44:26');
INSERT INTO `sys_logininfor` VALUES (1625, 'cni230wa129', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-23 14:44:39');
INSERT INTO `sys_logininfor` VALUES (1626, 'cni230wa131', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 14:44:47');
INSERT INTO `sys_logininfor` VALUES (1627, 'cni230wa131', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-23 14:45:02');
INSERT INTO `sys_logininfor` VALUES (1628, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-10-23 14:50:10');
INSERT INTO `sys_logininfor` VALUES (1629, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 14:50:15');
INSERT INTO `sys_logininfor` VALUES (1630, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-23 14:50:47');
INSERT INTO `sys_logininfor` VALUES (1631, 'cni230wa131', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 14:51:02');
INSERT INTO `sys_logininfor` VALUES (1632, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-23 17:10:13');
INSERT INTO `sys_logininfor` VALUES (1633, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-23 17:10:19');
INSERT INTO `sys_logininfor` VALUES (1634, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-23 17:27:42');
INSERT INTO `sys_logininfor` VALUES (1635, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-23 17:27:48');
INSERT INTO `sys_logininfor` VALUES (1636, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 17:37:22');
INSERT INTO `sys_logininfor` VALUES (1637, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 17:40:11');
INSERT INTO `sys_logininfor` VALUES (1638, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-23 17:41:46');
INSERT INTO `sys_logininfor` VALUES (1639, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-23 17:41:51');
INSERT INTO `sys_logininfor` VALUES (1640, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 17:41:57');
INSERT INTO `sys_logininfor` VALUES (1641, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-23 17:46:35');
INSERT INTO `sys_logininfor` VALUES (1642, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 18:13:58');
INSERT INTO `sys_logininfor` VALUES (1643, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 09:04:44');
INSERT INTO `sys_logininfor` VALUES (1644, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 09:05:58');
INSERT INTO `sys_logininfor` VALUES (1645, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 09:25:21');
INSERT INTO `sys_logininfor` VALUES (1646, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 09:45:44');
INSERT INTO `sys_logininfor` VALUES (1647, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 11:01:14');
INSERT INTO `sys_logininfor` VALUES (1648, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 14:03:59');
INSERT INTO `sys_logininfor` VALUES (1649, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 15:31:04');
INSERT INTO `sys_logininfor` VALUES (1650, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-24 15:45:47');
INSERT INTO `sys_logininfor` VALUES (1651, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 15:52:52');
INSERT INTO `sys_logininfor` VALUES (1652, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 17:19:41');
INSERT INTO `sys_logininfor` VALUES (1653, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 17:23:58');
INSERT INTO `sys_logininfor` VALUES (1654, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 17:39:13');
INSERT INTO `sys_logininfor` VALUES (1655, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 17:44:21');
INSERT INTO `sys_logininfor` VALUES (1656, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 17:54:03');
INSERT INTO `sys_logininfor` VALUES (1657, 'cni230w9017', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 18:04:54');
INSERT INTO `sys_logininfor` VALUES (1658, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 18:05:08');
INSERT INTO `sys_logininfor` VALUES (1659, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 18:14:58');
INSERT INTO `sys_logininfor` VALUES (1660, 'cni230w9017', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 18:37:55');
INSERT INTO `sys_logininfor` VALUES (1661, 'admincni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-24 18:54:56');
INSERT INTO `sys_logininfor` VALUES (1662, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 18:55:09');
INSERT INTO `sys_logininfor` VALUES (1663, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 19:31:13');
INSERT INTO `sys_logininfor` VALUES (1664, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 19:39:22');
INSERT INTO `sys_logininfor` VALUES (1665, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 19:39:39');
INSERT INTO `sys_logininfor` VALUES (1666, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 19:44:33');
INSERT INTO `sys_logininfor` VALUES (1667, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 20:07:40');
INSERT INTO `sys_logininfor` VALUES (1668, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-24 21:44:48');
INSERT INTO `sys_logininfor` VALUES (1669, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-25 08:18:29');
INSERT INTO `sys_logininfor` VALUES (1670, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 08:18:41');
INSERT INTO `sys_logininfor` VALUES (1671, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 08:50:14');
INSERT INTO `sys_logininfor` VALUES (1672, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 09:05:41');
INSERT INTO `sys_logininfor` VALUES (1673, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2024-10-25 10:18:25');
INSERT INTO `sys_logininfor` VALUES (1674, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-25 10:18:28');
INSERT INTO `sys_logininfor` VALUES (1675, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 14:10:27');
INSERT INTO `sys_logininfor` VALUES (1676, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-25 14:55:21');
INSERT INTO `sys_logininfor` VALUES (1677, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 15:40:14');
INSERT INTO `sys_logininfor` VALUES (1678, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 16:02:54');
INSERT INTO `sys_logininfor` VALUES (1679, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 16:23:30');
INSERT INTO `sys_logininfor` VALUES (1680, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-25 16:39:06');
INSERT INTO `sys_logininfor` VALUES (1681, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 16:40:51');
INSERT INTO `sys_logininfor` VALUES (1682, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 16:43:13');
INSERT INTO `sys_logininfor` VALUES (1683, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-25 17:09:19');
INSERT INTO `sys_logininfor` VALUES (1684, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 17:27:13');
INSERT INTO `sys_logininfor` VALUES (1685, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-25 17:28:55');
INSERT INTO `sys_logininfor` VALUES (1686, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-25 17:39:06');
INSERT INTO `sys_logininfor` VALUES (1687, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 17:39:09');
INSERT INTO `sys_logininfor` VALUES (1688, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 17:43:17');
INSERT INTO `sys_logininfor` VALUES (1689, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-25 17:48:58');
INSERT INTO `sys_logininfor` VALUES (1690, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-25 18:03:46');
INSERT INTO `sys_logininfor` VALUES (1691, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-25 18:03:53');
INSERT INTO `sys_logininfor` VALUES (1692, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-25 19:52:38');
INSERT INTO `sys_logininfor` VALUES (1693, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-26 08:40:11');
INSERT INTO `sys_logininfor` VALUES (1694, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-26 10:43:15');
INSERT INTO `sys_logininfor` VALUES (1695, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-26 14:39:00');
INSERT INTO `sys_logininfor` VALUES (1696, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-26 14:46:31');
INSERT INTO `sys_logininfor` VALUES (1697, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-26 17:08:08');
INSERT INTO `sys_logininfor` VALUES (1698, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-26 17:28:12');
INSERT INTO `sys_logininfor` VALUES (1699, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-26 17:32:11');
INSERT INTO `sys_logininfor` VALUES (1700, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-26 17:36:10');
INSERT INTO `sys_logininfor` VALUES (1701, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-26 17:36:20');
INSERT INTO `sys_logininfor` VALUES (1702, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-26 17:43:14');
INSERT INTO `sys_logininfor` VALUES (1703, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-26 17:48:25');
INSERT INTO `sys_logininfor` VALUES (1704, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-26 22:26:58');
INSERT INTO `sys_logininfor` VALUES (1705, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:00:56');
INSERT INTO `sys_logininfor` VALUES (1706, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 08:13:27');
INSERT INTO `sys_logininfor` VALUES (1707, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:16:05');
INSERT INTO `sys_logininfor` VALUES (1708, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:17:03');
INSERT INTO `sys_logininfor` VALUES (1709, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 08:18:10');
INSERT INTO `sys_logininfor` VALUES (1710, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:18:32');
INSERT INTO `sys_logininfor` VALUES (1711, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-28 08:19:52');
INSERT INTO `sys_logininfor` VALUES (1712, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:19:57');
INSERT INTO `sys_logininfor` VALUES (1713, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 08:21:04');
INSERT INTO `sys_logininfor` VALUES (1714, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:25:36');
INSERT INTO `sys_logininfor` VALUES (1715, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 08:29:01');
INSERT INTO `sys_logininfor` VALUES (1716, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:33:06');
INSERT INTO `sys_logininfor` VALUES (1717, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 08:34:55');
INSERT INTO `sys_logininfor` VALUES (1718, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 08:38:24');
INSERT INTO `sys_logininfor` VALUES (1719, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:39:58');
INSERT INTO `sys_logininfor` VALUES (1720, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:45:35');
INSERT INTO `sys_logininfor` VALUES (1721, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:47:09');
INSERT INTO `sys_logininfor` VALUES (1722, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-28 08:51:03');
INSERT INTO `sys_logininfor` VALUES (1723, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 08:51:08');
INSERT INTO `sys_logininfor` VALUES (1724, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 08:55:14');
INSERT INTO `sys_logininfor` VALUES (1725, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-28 08:58:00');
INSERT INTO `sys_logininfor` VALUES (1726, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:58:21');
INSERT INTO `sys_logininfor` VALUES (1727, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-28 08:58:43');
INSERT INTO `sys_logininfor` VALUES (1728, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:58:47');
INSERT INTO `sys_logininfor` VALUES (1729, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 08:58:52');
INSERT INTO `sys_logininfor` VALUES (1730, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:58:53');
INSERT INTO `sys_logininfor` VALUES (1731, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:59:03');
INSERT INTO `sys_logininfor` VALUES (1732, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 08:59:52');
INSERT INTO `sys_logininfor` VALUES (1733, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:00:14');
INSERT INTO `sys_logininfor` VALUES (1734, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:00:15');
INSERT INTO `sys_logininfor` VALUES (1735, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:00:40');
INSERT INTO `sys_logininfor` VALUES (1736, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:00:47');
INSERT INTO `sys_logininfor` VALUES (1737, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:01:38');
INSERT INTO `sys_logininfor` VALUES (1738, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 09:01:46');
INSERT INTO `sys_logininfor` VALUES (1739, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:03:48');
INSERT INTO `sys_logininfor` VALUES (1740, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:04:46');
INSERT INTO `sys_logininfor` VALUES (1741, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:05:08');
INSERT INTO `sys_logininfor` VALUES (1742, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:06:25');
INSERT INTO `sys_logininfor` VALUES (1743, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:07:19');
INSERT INTO `sys_logininfor` VALUES (1744, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 09:07:46');
INSERT INTO `sys_logininfor` VALUES (1745, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 09:08:32');
INSERT INTO `sys_logininfor` VALUES (1746, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 09:10:06');
INSERT INTO `sys_logininfor` VALUES (1747, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 09:10:31');
INSERT INTO `sys_logininfor` VALUES (1748, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-28 09:14:12');
INSERT INTO `sys_logininfor` VALUES (1749, 'cni230wa103', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 09:14:20');
INSERT INTO `sys_logininfor` VALUES (1750, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 09:15:15');
INSERT INTO `sys_logininfor` VALUES (1751, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:16:44');
INSERT INTO `sys_logininfor` VALUES (1752, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-28 09:17:55');
INSERT INTO `sys_logininfor` VALUES (1753, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:19:13');
INSERT INTO `sys_logininfor` VALUES (1754, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:20:39');
INSERT INTO `sys_logininfor` VALUES (1755, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:21:07');
INSERT INTO `sys_logininfor` VALUES (1756, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:22:25');
INSERT INTO `sys_logininfor` VALUES (1757, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 09:23:09');
INSERT INTO `sys_logininfor` VALUES (1758, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:26:25');
INSERT INTO `sys_logininfor` VALUES (1759, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:33:48');
INSERT INTO `sys_logininfor` VALUES (1760, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 09:41:37');
INSERT INTO `sys_logininfor` VALUES (1761, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 09:46:33');
INSERT INTO `sys_logininfor` VALUES (1762, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 10:06:37');
INSERT INTO `sys_logininfor` VALUES (1763, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 10:10:15');
INSERT INTO `sys_logininfor` VALUES (1764, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-28 10:26:12');
INSERT INTO `sys_logininfor` VALUES (1765, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-28 10:26:16');
INSERT INTO `sys_logininfor` VALUES (1766, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 10:26:20');
INSERT INTO `sys_logininfor` VALUES (1767, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-28 10:40:33');
INSERT INTO `sys_logininfor` VALUES (1768, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 10:42:55');
INSERT INTO `sys_logininfor` VALUES (1769, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 11:03:14');
INSERT INTO `sys_logininfor` VALUES (1770, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-28 11:07:40');
INSERT INTO `sys_logininfor` VALUES (1771, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 11:07:44');
INSERT INTO `sys_logininfor` VALUES (1772, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 15:22:49');
INSERT INTO `sys_logininfor` VALUES (1773, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 15:28:53');
INSERT INTO `sys_logininfor` VALUES (1774, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-28 16:05:06');
INSERT INTO `sys_logininfor` VALUES (1775, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 16:07:17');
INSERT INTO `sys_logininfor` VALUES (1776, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 16:07:37');
INSERT INTO `sys_logininfor` VALUES (1777, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 17:39:23');
INSERT INTO `sys_logininfor` VALUES (1778, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 17:49:37');
INSERT INTO `sys_logininfor` VALUES (1779, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 18:40:54');
INSERT INTO `sys_logininfor` VALUES (1780, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-28 19:14:06');
INSERT INTO `sys_logininfor` VALUES (1781, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 19:44:34');
INSERT INTO `sys_logininfor` VALUES (1782, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-28 21:52:20');
INSERT INTO `sys_logininfor` VALUES (1783, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-29 07:55:52');
INSERT INTO `sys_logininfor` VALUES (1784, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-29 08:58:06');
INSERT INTO `sys_logininfor` VALUES (1785, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-29 08:58:17');
INSERT INTO `sys_logininfor` VALUES (1786, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-29 08:58:20');
INSERT INTO `sys_logininfor` VALUES (1787, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 09:23:14');
INSERT INTO `sys_logininfor` VALUES (1788, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 16:21:00');
INSERT INTO `sys_logininfor` VALUES (1789, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-29 16:24:11');
INSERT INTO `sys_logininfor` VALUES (1790, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 17:15:45');
INSERT INTO `sys_logininfor` VALUES (1791, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-29 17:36:13');
INSERT INTO `sys_logininfor` VALUES (1792, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 17:41:56');
INSERT INTO `sys_logininfor` VALUES (1793, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 17:57:07');
INSERT INTO `sys_logininfor` VALUES (1794, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-29 18:05:46');
INSERT INTO `sys_logininfor` VALUES (1795, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 18:53:09');
INSERT INTO `sys_logininfor` VALUES (1796, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 19:01:10');
INSERT INTO `sys_logininfor` VALUES (1797, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 19:08:40');
INSERT INTO `sys_logininfor` VALUES (1798, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 19:24:44');
INSERT INTO `sys_logininfor` VALUES (1799, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-29 19:32:19');
INSERT INTO `sys_logininfor` VALUES (1800, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-29 19:36:39');
INSERT INTO `sys_logininfor` VALUES (1801, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 19:38:15');
INSERT INTO `sys_logininfor` VALUES (1802, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-29 19:39:36');
INSERT INTO `sys_logininfor` VALUES (1803, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-29 20:36:42');
INSERT INTO `sys_logininfor` VALUES (1804, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-29 21:45:52');
INSERT INTO `sys_logininfor` VALUES (1805, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 08:28:07');
INSERT INTO `sys_logininfor` VALUES (1806, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 08:57:33');
INSERT INTO `sys_logininfor` VALUES (1807, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 09:32:48');
INSERT INTO `sys_logininfor` VALUES (1808, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 09:49:58');
INSERT INTO `sys_logininfor` VALUES (1809, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 10:22:59');
INSERT INTO `sys_logininfor` VALUES (1810, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 10:39:58');
INSERT INTO `sys_logininfor` VALUES (1811, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-30 10:42:37');
INSERT INTO `sys_logininfor` VALUES (1812, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 10:42:41');
INSERT INTO `sys_logininfor` VALUES (1813, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 11:25:21');
INSERT INTO `sys_logininfor` VALUES (1814, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 14:00:44');
INSERT INTO `sys_logininfor` VALUES (1815, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 16:25:13');
INSERT INTO `sys_logininfor` VALUES (1816, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 16:25:39');
INSERT INTO `sys_logininfor` VALUES (1817, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 16:58:39');
INSERT INTO `sys_logininfor` VALUES (1818, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 17:01:46');
INSERT INTO `sys_logininfor` VALUES (1819, 'cin230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-30 17:12:24');
INSERT INTO `sys_logininfor` VALUES (1820, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 17:12:39');
INSERT INTO `sys_logininfor` VALUES (1821, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 17:15:38');
INSERT INTO `sys_logininfor` VALUES (1822, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 17:17:33');
INSERT INTO `sys_logininfor` VALUES (1823, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 17:29:58');
INSERT INTO `sys_logininfor` VALUES (1824, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 17:30:02');
INSERT INTO `sys_logininfor` VALUES (1825, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 17:40:53');
INSERT INTO `sys_logininfor` VALUES (1826, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 17:52:59');
INSERT INTO `sys_logininfor` VALUES (1827, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 18:02:28');
INSERT INTO `sys_logininfor` VALUES (1828, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-30 18:31:47');
INSERT INTO `sys_logininfor` VALUES (1829, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 18:56:37');
INSERT INTO `sys_logininfor` VALUES (1830, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-30 20:01:14');
INSERT INTO `sys_logininfor` VALUES (1831, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 08:30:57');
INSERT INTO `sys_logininfor` VALUES (1832, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 08:39:23');
INSERT INTO `sys_logininfor` VALUES (1833, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 08:42:07');
INSERT INTO `sys_logininfor` VALUES (1834, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-31 10:09:37');
INSERT INTO `sys_logininfor` VALUES (1835, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-31 10:09:46');
INSERT INTO `sys_logininfor` VALUES (1836, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 10:09:50');
INSERT INTO `sys_logininfor` VALUES (1837, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 10:11:34');
INSERT INTO `sys_logininfor` VALUES (1838, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 10:25:06');
INSERT INTO `sys_logininfor` VALUES (1839, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 10:25:44');
INSERT INTO `sys_logininfor` VALUES (1840, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 10:27:48');
INSERT INTO `sys_logininfor` VALUES (1841, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 10:38:55');
INSERT INTO `sys_logininfor` VALUES (1842, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 10:38:57');
INSERT INTO `sys_logininfor` VALUES (1843, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 10:39:39');
INSERT INTO `sys_logininfor` VALUES (1844, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 10:41:51');
INSERT INTO `sys_logininfor` VALUES (1845, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 10:42:37');
INSERT INTO `sys_logininfor` VALUES (1846, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 10:46:07');
INSERT INTO `sys_logininfor` VALUES (1847, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-10-31 10:52:14');
INSERT INTO `sys_logininfor` VALUES (1848, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 10:52:18');
INSERT INTO `sys_logininfor` VALUES (1849, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 10:57:44');
INSERT INTO `sys_logininfor` VALUES (1850, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 11:32:24');
INSERT INTO `sys_logininfor` VALUES (1851, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 11:38:40');
INSERT INTO `sys_logininfor` VALUES (1852, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 11:40:30');
INSERT INTO `sys_logininfor` VALUES (1853, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 13:47:29');
INSERT INTO `sys_logininfor` VALUES (1854, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 13:51:08');
INSERT INTO `sys_logininfor` VALUES (1855, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 14:03:08');
INSERT INTO `sys_logininfor` VALUES (1856, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-10-31 14:10:25');
INSERT INTO `sys_logininfor` VALUES (1857, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 14:13:59');
INSERT INTO `sys_logininfor` VALUES (1858, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 14:18:46');
INSERT INTO `sys_logininfor` VALUES (1859, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-10-31 14:48:06');
INSERT INTO `sys_logininfor` VALUES (1860, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 14:48:10');
INSERT INTO `sys_logininfor` VALUES (1861, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 14:57:40');
INSERT INTO `sys_logininfor` VALUES (1862, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 15:15:07');
INSERT INTO `sys_logininfor` VALUES (1863, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 15:53:11');
INSERT INTO `sys_logininfor` VALUES (1864, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 16:39:17');
INSERT INTO `sys_logininfor` VALUES (1865, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 17:12:56');
INSERT INTO `sys_logininfor` VALUES (1866, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 17:20:26');
INSERT INTO `sys_logininfor` VALUES (1867, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 17:45:08');
INSERT INTO `sys_logininfor` VALUES (1868, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 17:50:44');
INSERT INTO `sys_logininfor` VALUES (1869, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 18:04:59');
INSERT INTO `sys_logininfor` VALUES (1870, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-10-31 18:20:46');
INSERT INTO `sys_logininfor` VALUES (1871, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 18:20:49');
INSERT INTO `sys_logininfor` VALUES (1872, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 18:25:10');
INSERT INTO `sys_logininfor` VALUES (1873, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-10-31 18:46:16');
INSERT INTO `sys_logininfor` VALUES (1874, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 18:46:18');
INSERT INTO `sys_logininfor` VALUES (1875, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 19:35:59');
INSERT INTO `sys_logininfor` VALUES (1876, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 19:36:00');
INSERT INTO `sys_logininfor` VALUES (1877, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-31 19:38:05');
INSERT INTO `sys_logininfor` VALUES (1878, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 19:43:30');
INSERT INTO `sys_logininfor` VALUES (1879, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-10-31 20:44:07');
INSERT INTO `sys_logininfor` VALUES (1880, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 08:16:56');
INSERT INTO `sys_logininfor` VALUES (1881, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 08:33:14');
INSERT INTO `sys_logininfor` VALUES (1882, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 08:39:50');
INSERT INTO `sys_logininfor` VALUES (1883, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 11:10:03');
INSERT INTO `sys_logininfor` VALUES (1884, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 11:11:36');
INSERT INTO `sys_logininfor` VALUES (1885, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 11:35:16');
INSERT INTO `sys_logininfor` VALUES (1886, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 13:49:23');
INSERT INTO `sys_logininfor` VALUES (1887, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-01 14:27:52');
INSERT INTO `sys_logininfor` VALUES (1888, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 15:58:13');
INSERT INTO `sys_logininfor` VALUES (1889, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 16:27:32');
INSERT INTO `sys_logininfor` VALUES (1890, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 16:34:37');
INSERT INTO `sys_logininfor` VALUES (1891, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 16:44:46');
INSERT INTO `sys_logininfor` VALUES (1892, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 17:26:08');
INSERT INTO `sys_logininfor` VALUES (1893, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 17:28:23');
INSERT INTO `sys_logininfor` VALUES (1894, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-01 17:29:35');
INSERT INTO `sys_logininfor` VALUES (1895, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-01 17:35:02');
INSERT INTO `sys_logininfor` VALUES (1896, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-01 17:39:15');
INSERT INTO `sys_logininfor` VALUES (1897, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 17:42:26');
INSERT INTO `sys_logininfor` VALUES (1898, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 17:44:28');
INSERT INTO `sys_logininfor` VALUES (1899, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-01 17:48:43');
INSERT INTO `sys_logininfor` VALUES (1900, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-01 17:48:46');
INSERT INTO `sys_logininfor` VALUES (1901, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-01 17:48:48');
INSERT INTO `sys_logininfor` VALUES (1902, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-01 18:32:44');
INSERT INTO `sys_logininfor` VALUES (1903, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-01 18:32:45');
INSERT INTO `sys_logininfor` VALUES (1904, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-01 18:32:55');
INSERT INTO `sys_logininfor` VALUES (1905, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-02 08:11:41');
INSERT INTO `sys_logininfor` VALUES (1906, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 08:49:08');
INSERT INTO `sys_logininfor` VALUES (1907, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-02 09:00:22');
INSERT INTO `sys_logininfor` VALUES (1908, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-02 10:08:09');
INSERT INTO `sys_logininfor` VALUES (1909, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 10:08:14');
INSERT INTO `sys_logininfor` VALUES (1910, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 10:11:03');
INSERT INTO `sys_logininfor` VALUES (1911, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 10:25:12');
INSERT INTO `sys_logininfor` VALUES (1912, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-02 10:28:15');
INSERT INTO `sys_logininfor` VALUES (1913, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 10:52:19');
INSERT INTO `sys_logininfor` VALUES (1914, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 15:03:14');
INSERT INTO `sys_logininfor` VALUES (1915, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-02 15:13:53');
INSERT INTO `sys_logininfor` VALUES (1916, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-02 15:32:53');
INSERT INTO `sys_logininfor` VALUES (1917, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 16:25:08');
INSERT INTO `sys_logininfor` VALUES (1918, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-02 17:26:00');
INSERT INTO `sys_logininfor` VALUES (1919, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-02 17:26:32');
INSERT INTO `sys_logininfor` VALUES (1920, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 17:26:37');
INSERT INTO `sys_logininfor` VALUES (1921, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 17:41:54');
INSERT INTO `sys_logininfor` VALUES (1922, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-02 17:42:03');
INSERT INTO `sys_logininfor` VALUES (1923, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-02 17:42:46');
INSERT INTO `sys_logininfor` VALUES (1924, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-02 17:48:12');
INSERT INTO `sys_logininfor` VALUES (1925, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-02 18:02:42');
INSERT INTO `sys_logininfor` VALUES (1926, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 18:04:43');
INSERT INTO `sys_logininfor` VALUES (1927, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 18:19:56');
INSERT INTO `sys_logininfor` VALUES (1928, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 18:53:53');
INSERT INTO `sys_logininfor` VALUES (1929, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-02 19:06:45');
INSERT INTO `sys_logininfor` VALUES (1930, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-03 14:41:21');
INSERT INTO `sys_logininfor` VALUES (1931, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-03 16:52:09');
INSERT INTO `sys_logininfor` VALUES (1932, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 08:18:47');
INSERT INTO `sys_logininfor` VALUES (1933, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-04 08:34:27');
INSERT INTO `sys_logininfor` VALUES (1934, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 10:09:40');
INSERT INTO `sys_logininfor` VALUES (1935, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-04 10:39:53');
INSERT INTO `sys_logininfor` VALUES (1936, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-04 11:18:38');
INSERT INTO `sys_logininfor` VALUES (1937, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-04 13:49:07');
INSERT INTO `sys_logininfor` VALUES (1938, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 13:49:11');
INSERT INTO `sys_logininfor` VALUES (1939, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 15:12:22');
INSERT INTO `sys_logininfor` VALUES (1940, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-04 15:32:32');
INSERT INTO `sys_logininfor` VALUES (1941, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 17:18:49');
INSERT INTO `sys_logininfor` VALUES (1942, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 17:36:28');
INSERT INTO `sys_logininfor` VALUES (1943, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 17:39:05');
INSERT INTO `sys_logininfor` VALUES (1944, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 17:44:46');
INSERT INTO `sys_logininfor` VALUES (1945, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 17:45:03');
INSERT INTO `sys_logininfor` VALUES (1946, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-04 17:48:13');
INSERT INTO `sys_logininfor` VALUES (1947, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 18:10:21');
INSERT INTO `sys_logininfor` VALUES (1948, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-04 18:14:23');
INSERT INTO `sys_logininfor` VALUES (1949, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-04 18:19:03');
INSERT INTO `sys_logininfor` VALUES (1950, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 18:19:44');
INSERT INTO `sys_logininfor` VALUES (1951, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 18:51:57');
INSERT INTO `sys_logininfor` VALUES (1952, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 19:31:28');
INSERT INTO `sys_logininfor` VALUES (1953, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-04 19:43:54');
INSERT INTO `sys_logininfor` VALUES (1954, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-04 19:43:58');
INSERT INTO `sys_logininfor` VALUES (1955, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-04 20:10:46');
INSERT INTO `sys_logininfor` VALUES (1956, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-04 20:59:39');
INSERT INTO `sys_logininfor` VALUES (1957, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 08:05:41');
INSERT INTO `sys_logininfor` VALUES (1958, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 09:00:27');
INSERT INTO `sys_logininfor` VALUES (1959, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-05 10:16:55');
INSERT INTO `sys_logininfor` VALUES (1960, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 10:17:02');
INSERT INTO `sys_logininfor` VALUES (1961, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 10:26:43');
INSERT INTO `sys_logininfor` VALUES (1962, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 11:13:53');
INSERT INTO `sys_logininfor` VALUES (1963, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-05 11:15:06');
INSERT INTO `sys_logininfor` VALUES (1964, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 11:15:09');
INSERT INTO `sys_logininfor` VALUES (1965, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 17:51:01');
INSERT INTO `sys_logininfor` VALUES (1966, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 18:06:57');
INSERT INTO `sys_logininfor` VALUES (1967, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 18:45:22');
INSERT INTO `sys_logininfor` VALUES (1968, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 18:50:39');
INSERT INTO `sys_logininfor` VALUES (1969, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 19:02:02');
INSERT INTO `sys_logininfor` VALUES (1970, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 19:03:46');
INSERT INTO `sys_logininfor` VALUES (1971, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 19:05:22');
INSERT INTO `sys_logininfor` VALUES (1972, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-05 19:29:31');
INSERT INTO `sys_logininfor` VALUES (1973, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 19:29:33');
INSERT INTO `sys_logininfor` VALUES (1974, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 19:31:47');
INSERT INTO `sys_logininfor` VALUES (1975, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-05 19:35:48');
INSERT INTO `sys_logininfor` VALUES (1976, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 19:35:52');
INSERT INTO `sys_logininfor` VALUES (1977, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 19:37:26');
INSERT INTO `sys_logininfor` VALUES (1978, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 19:38:45');
INSERT INTO `sys_logininfor` VALUES (1979, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 19:48:08');
INSERT INTO `sys_logininfor` VALUES (1980, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-05 19:56:18');
INSERT INTO `sys_logininfor` VALUES (1981, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 19:58:09');
INSERT INTO `sys_logininfor` VALUES (1982, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-05 20:48:19');
INSERT INTO `sys_logininfor` VALUES (1983, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 10:03:36');
INSERT INTO `sys_logininfor` VALUES (1984, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 10:12:55');
INSERT INTO `sys_logininfor` VALUES (1985, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-11-06 11:13:57');
INSERT INTO `sys_logininfor` VALUES (1986, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 11:14:01');
INSERT INTO `sys_logininfor` VALUES (1987, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-06 11:18:00');
INSERT INTO `sys_logininfor` VALUES (1988, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 13:43:06');
INSERT INTO `sys_logininfor` VALUES (1989, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 13:47:28');
INSERT INTO `sys_logininfor` VALUES (1990, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 17:30:42');
INSERT INTO `sys_logininfor` VALUES (1991, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 17:32:20');
INSERT INTO `sys_logininfor` VALUES (1992, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-11-06 17:33:07');
INSERT INTO `sys_logininfor` VALUES (1993, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-06 17:33:13');
INSERT INTO `sys_logininfor` VALUES (1994, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-06 17:33:16');
INSERT INTO `sys_logininfor` VALUES (1995, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 17:33:28');
INSERT INTO `sys_logininfor` VALUES (1996, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-06 17:38:42');
INSERT INTO `sys_logininfor` VALUES (1997, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-06 17:41:28');
INSERT INTO `sys_logininfor` VALUES (1998, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-06 17:41:36');
INSERT INTO `sys_logininfor` VALUES (1999, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 17:41:40');
INSERT INTO `sys_logininfor` VALUES (2000, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-06 17:42:43');
INSERT INTO `sys_logininfor` VALUES (2001, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-06 17:43:08');
INSERT INTO `sys_logininfor` VALUES (2002, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 17:43:12');
INSERT INTO `sys_logininfor` VALUES (2003, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 17:51:22');
INSERT INTO `sys_logininfor` VALUES (2004, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-06 18:37:51');
INSERT INTO `sys_logininfor` VALUES (2005, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 08:14:26');
INSERT INTO `sys_logininfor` VALUES (2006, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-07 08:18:13');
INSERT INTO `sys_logininfor` VALUES (2007, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 08:23:25');
INSERT INTO `sys_logininfor` VALUES (2008, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-07 08:35:38');
INSERT INTO `sys_logininfor` VALUES (2009, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-07 08:48:32');
INSERT INTO `sys_logininfor` VALUES (2010, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 08:49:57');
INSERT INTO `sys_logininfor` VALUES (2011, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-07 09:28:45');
INSERT INTO `sys_logininfor` VALUES (2012, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-07 09:28:48');
INSERT INTO `sys_logininfor` VALUES (2013, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 10:29:06');
INSERT INTO `sys_logininfor` VALUES (2014, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 14:35:26');
INSERT INTO `sys_logininfor` VALUES (2015, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 16:17:34');
INSERT INTO `sys_logininfor` VALUES (2016, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 16:24:02');
INSERT INTO `sys_logininfor` VALUES (2017, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 17:21:22');
INSERT INTO `sys_logininfor` VALUES (2018, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 19:02:29');
INSERT INTO `sys_logininfor` VALUES (2019, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 19:22:49');
INSERT INTO `sys_logininfor` VALUES (2020, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 19:29:01');
INSERT INTO `sys_logininfor` VALUES (2021, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-07 19:30:57');
INSERT INTO `sys_logininfor` VALUES (2022, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 19:32:52');
INSERT INTO `sys_logininfor` VALUES (2023, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-07 19:33:21');
INSERT INTO `sys_logininfor` VALUES (2024, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-07 19:33:25');
INSERT INTO `sys_logininfor` VALUES (2025, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 19:33:30');
INSERT INTO `sys_logininfor` VALUES (2026, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-07 19:42:02');
INSERT INTO `sys_logininfor` VALUES (2027, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-07 19:49:10');
INSERT INTO `sys_logininfor` VALUES (2028, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-07 19:55:56');
INSERT INTO `sys_logininfor` VALUES (2029, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-07 20:03:22');
INSERT INTO `sys_logininfor` VALUES (2030, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-07 20:08:16');
INSERT INTO `sys_logininfor` VALUES (2031, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-07 20:27:25');
INSERT INTO `sys_logininfor` VALUES (2032, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-08 07:36:46');
INSERT INTO `sys_logininfor` VALUES (2033, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 08:14:09');
INSERT INTO `sys_logininfor` VALUES (2034, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-08 11:35:04');
INSERT INTO `sys_logininfor` VALUES (2035, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 14:01:06');
INSERT INTO `sys_logininfor` VALUES (2036, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 15:41:02');
INSERT INTO `sys_logininfor` VALUES (2037, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 16:10:52');
INSERT INTO `sys_logininfor` VALUES (2038, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 16:47:13');
INSERT INTO `sys_logininfor` VALUES (2039, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 16:48:37');
INSERT INTO `sys_logininfor` VALUES (2040, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-08 16:51:46');
INSERT INTO `sys_logininfor` VALUES (2041, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 16:51:51');
INSERT INTO `sys_logininfor` VALUES (2042, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 17:19:22');
INSERT INTO `sys_logininfor` VALUES (2043, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-08 17:25:32');
INSERT INTO `sys_logininfor` VALUES (2044, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-08 17:41:27');
INSERT INTO `sys_logininfor` VALUES (2045, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 17:46:11');
INSERT INTO `sys_logininfor` VALUES (2046, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-08 17:46:19');
INSERT INTO `sys_logininfor` VALUES (2047, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-08 17:46:51');
INSERT INTO `sys_logininfor` VALUES (2048, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 18:31:00');
INSERT INTO `sys_logininfor` VALUES (2049, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-08 18:51:40');
INSERT INTO `sys_logininfor` VALUES (2050, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-09 08:29:50');
INSERT INTO `sys_logininfor` VALUES (2051, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 08:35:20');
INSERT INTO `sys_logininfor` VALUES (2052, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 09:01:59');
INSERT INTO `sys_logininfor` VALUES (2053, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 09:04:47');
INSERT INTO `sys_logininfor` VALUES (2054, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-09 11:36:15');
INSERT INTO `sys_logininfor` VALUES (2055, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-09 16:26:32');
INSERT INTO `sys_logininfor` VALUES (2056, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 16:33:17');
INSERT INTO `sys_logininfor` VALUES (2057, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-09 16:42:31');
INSERT INTO `sys_logininfor` VALUES (2058, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-09 17:31:56');
INSERT INTO `sys_logininfor` VALUES (2059, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-09 17:33:08');
INSERT INTO `sys_logininfor` VALUES (2060, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 17:33:11');
INSERT INTO `sys_logininfor` VALUES (2061, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-09 17:35:38');
INSERT INTO `sys_logininfor` VALUES (2062, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-09 17:37:35');
INSERT INTO `sys_logininfor` VALUES (2063, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-09 17:37:47');
INSERT INTO `sys_logininfor` VALUES (2064, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-09 17:41:11');
INSERT INTO `sys_logininfor` VALUES (2065, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 17:41:14');
INSERT INTO `sys_logininfor` VALUES (2066, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 17:42:42');
INSERT INTO `sys_logininfor` VALUES (2067, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 17:43:42');
INSERT INTO `sys_logininfor` VALUES (2068, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 17:53:34');
INSERT INTO `sys_logininfor` VALUES (2069, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 18:40:43');
INSERT INTO `sys_logininfor` VALUES (2070, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-09 20:14:34');
INSERT INTO `sys_logininfor` VALUES (2071, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-10 17:53:40');
INSERT INTO `sys_logininfor` VALUES (2072, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-11 08:29:12');
INSERT INTO `sys_logininfor` VALUES (2073, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-11 08:33:25');
INSERT INTO `sys_logininfor` VALUES (2074, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-11 08:33:58');
INSERT INTO `sys_logininfor` VALUES (2075, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-11 08:43:19');
INSERT INTO `sys_logininfor` VALUES (2076, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-11 09:32:59');
INSERT INTO `sys_logininfor` VALUES (2077, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-11 10:31:30');
INSERT INTO `sys_logininfor` VALUES (2078, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-11 11:12:08');
INSERT INTO `sys_logininfor` VALUES (2079, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-11 15:45:38');
INSERT INTO `sys_logininfor` VALUES (2080, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-11 15:52:56');
INSERT INTO `sys_logininfor` VALUES (2081, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-11 15:56:32');
INSERT INTO `sys_logininfor` VALUES (2082, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-11 16:05:06');
INSERT INTO `sys_logininfor` VALUES (2083, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-11 17:05:16');
INSERT INTO `sys_logininfor` VALUES (2084, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-11 17:05:18');
INSERT INTO `sys_logininfor` VALUES (2085, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-11 17:05:21');
INSERT INTO `sys_logininfor` VALUES (2086, 'cni230w9037', '10.209.5.104', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-11 17:09:52');
INSERT INTO `sys_logininfor` VALUES (2087, 'cni230w9037', '10.209.5.104', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-11 17:09:56');
INSERT INTO `sys_logininfor` VALUES (2088, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-11 18:50:35');
INSERT INTO `sys_logininfor` VALUES (2089, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-11 19:23:16');
INSERT INTO `sys_logininfor` VALUES (2090, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-11 19:35:28');
INSERT INTO `sys_logininfor` VALUES (2091, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-11 19:36:25');
INSERT INTO `sys_logininfor` VALUES (2092, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-11 19:44:15');
INSERT INTO `sys_logininfor` VALUES (2093, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-11 20:21:23');
INSERT INTO `sys_logininfor` VALUES (2094, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 08:25:17');
INSERT INTO `sys_logininfor` VALUES (2095, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-12 08:26:37');
INSERT INTO `sys_logininfor` VALUES (2096, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 10:08:47');
INSERT INTO `sys_logininfor` VALUES (2097, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 10:16:44');
INSERT INTO `sys_logininfor` VALUES (2098, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-12 10:46:56');
INSERT INTO `sys_logininfor` VALUES (2099, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 13:53:13');
INSERT INTO `sys_logininfor` VALUES (2100, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-12 14:24:56');
INSERT INTO `sys_logininfor` VALUES (2101, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-12 14:46:20');
INSERT INTO `sys_logininfor` VALUES (2102, 'cni23095185', '10.209.5.118', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-12 16:49:36');
INSERT INTO `sys_logininfor` VALUES (2103, 'cni23095185', '10.209.5.118', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2024-11-12 16:49:49');
INSERT INTO `sys_logininfor` VALUES (2104, 'cni23095185', '10.209.5.118', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-12 16:49:53');
INSERT INTO `sys_logininfor` VALUES (2105, 'cni23095185', '10.209.5.118', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-12 16:49:56');
INSERT INTO `sys_logininfor` VALUES (2106, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 16:50:03');
INSERT INTO `sys_logininfor` VALUES (2107, 'cni230w9037', '10.209.5.118', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-12 16:51:12');
INSERT INTO `sys_logininfor` VALUES (2108, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-12 17:13:37');
INSERT INTO `sys_logininfor` VALUES (2109, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 17:28:17');
INSERT INTO `sys_logininfor` VALUES (2110, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 17:28:42');
INSERT INTO `sys_logininfor` VALUES (2111, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 18:34:46');
INSERT INTO `sys_logininfor` VALUES (2112, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 19:14:05');
INSERT INTO `sys_logininfor` VALUES (2113, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 19:31:16');
INSERT INTO `sys_logininfor` VALUES (2114, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 19:32:37');
INSERT INTO `sys_logininfor` VALUES (2115, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 19:33:42');
INSERT INTO `sys_logininfor` VALUES (2116, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-12 19:41:09');
INSERT INTO `sys_logininfor` VALUES (2117, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-12 19:42:44');
INSERT INTO `sys_logininfor` VALUES (2118, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-12 20:41:00');
INSERT INTO `sys_logininfor` VALUES (2119, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-13 08:58:33');
INSERT INTO `sys_logininfor` VALUES (2120, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 09:53:42');
INSERT INTO `sys_logininfor` VALUES (2121, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-13 10:00:29');
INSERT INTO `sys_logininfor` VALUES (2122, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 10:19:41');
INSERT INTO `sys_logininfor` VALUES (2123, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 10:47:09');
INSERT INTO `sys_logininfor` VALUES (2124, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 11:05:52');
INSERT INTO `sys_logininfor` VALUES (2125, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-13 16:08:57');
INSERT INTO `sys_logininfor` VALUES (2126, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 16:26:48');
INSERT INTO `sys_logininfor` VALUES (2127, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-13 17:26:59');
INSERT INTO `sys_logininfor` VALUES (2128, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-13 17:35:30');
INSERT INTO `sys_logininfor` VALUES (2129, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 17:44:40');
INSERT INTO `sys_logininfor` VALUES (2130, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 17:46:51');
INSERT INTO `sys_logininfor` VALUES (2131, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-13 17:47:53');
INSERT INTO `sys_logininfor` VALUES (2132, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-13 17:52:37');
INSERT INTO `sys_logininfor` VALUES (2133, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 17:53:23');
INSERT INTO `sys_logininfor` VALUES (2134, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 17:55:26');
INSERT INTO `sys_logininfor` VALUES (2135, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 18:43:10');
INSERT INTO `sys_logininfor` VALUES (2136, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-13 20:36:30');
INSERT INTO `sys_logininfor` VALUES (2137, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-14 09:07:35');
INSERT INTO `sys_logininfor` VALUES (2138, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 09:12:51');
INSERT INTO `sys_logininfor` VALUES (2139, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 09:22:52');
INSERT INTO `sys_logininfor` VALUES (2140, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 09:33:14');
INSERT INTO `sys_logininfor` VALUES (2141, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 10:01:13');
INSERT INTO `sys_logininfor` VALUES (2142, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 10:06:20');
INSERT INTO `sys_logininfor` VALUES (2143, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-14 10:56:13');
INSERT INTO `sys_logininfor` VALUES (2144, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 10:56:17');
INSERT INTO `sys_logininfor` VALUES (2145, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 11:13:45');
INSERT INTO `sys_logininfor` VALUES (2146, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 13:48:40');
INSERT INTO `sys_logininfor` VALUES (2147, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-14 13:59:25');
INSERT INTO `sys_logininfor` VALUES (2148, 'cni230w9037', '10.209.5.104', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 14:05:49');
INSERT INTO `sys_logininfor` VALUES (2149, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 15:15:13');
INSERT INTO `sys_logininfor` VALUES (2150, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 17:04:02');
INSERT INTO `sys_logininfor` VALUES (2151, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 17:09:59');
INSERT INTO `sys_logininfor` VALUES (2152, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 17:25:38');
INSERT INTO `sys_logininfor` VALUES (2153, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 17:35:17');
INSERT INTO `sys_logininfor` VALUES (2154, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-14 17:36:49');
INSERT INTO `sys_logininfor` VALUES (2155, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 17:36:53');
INSERT INTO `sys_logininfor` VALUES (2156, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-14 17:37:57');
INSERT INTO `sys_logininfor` VALUES (2157, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 17:38:01');
INSERT INTO `sys_logininfor` VALUES (2158, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 17:41:29');
INSERT INTO `sys_logininfor` VALUES (2159, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 18:37:18');
INSERT INTO `sys_logininfor` VALUES (2160, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-14 18:37:46');
INSERT INTO `sys_logininfor` VALUES (2161, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-14 18:37:57');
INSERT INTO `sys_logininfor` VALUES (2162, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 18:38:01');
INSERT INTO `sys_logininfor` VALUES (2163, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 18:53:16');
INSERT INTO `sys_logininfor` VALUES (2164, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 19:20:25');
INSERT INTO `sys_logininfor` VALUES (2165, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 19:32:37');
INSERT INTO `sys_logininfor` VALUES (2166, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 19:34:47');
INSERT INTO `sys_logininfor` VALUES (2167, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 19:39:40');
INSERT INTO `sys_logininfor` VALUES (2168, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 19:41:58');
INSERT INTO `sys_logininfor` VALUES (2169, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 19:47:13');
INSERT INTO `sys_logininfor` VALUES (2170, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 19:47:15');
INSERT INTO `sys_logininfor` VALUES (2171, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 19:48:29');
INSERT INTO `sys_logininfor` VALUES (2172, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-14 20:28:07');
INSERT INTO `sys_logininfor` VALUES (2173, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-14 22:04:25');
INSERT INTO `sys_logininfor` VALUES (2174, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 08:18:14');
INSERT INTO `sys_logininfor` VALUES (2175, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-15 08:24:19');
INSERT INTO `sys_logininfor` VALUES (2176, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-15 08:24:22');
INSERT INTO `sys_logininfor` VALUES (2177, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 08:54:50');
INSERT INTO `sys_logininfor` VALUES (2178, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 08:56:36');
INSERT INTO `sys_logininfor` VALUES (2179, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 10:30:38');
INSERT INTO `sys_logininfor` VALUES (2180, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-15 11:10:03');
INSERT INTO `sys_logininfor` VALUES (2181, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 11:31:48');
INSERT INTO `sys_logininfor` VALUES (2182, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 14:35:17');
INSERT INTO `sys_logininfor` VALUES (2183, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 14:42:27');
INSERT INTO `sys_logininfor` VALUES (2184, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 15:02:10');
INSERT INTO `sys_logininfor` VALUES (2185, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 15:31:45');
INSERT INTO `sys_logininfor` VALUES (2186, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 16:03:52');
INSERT INTO `sys_logininfor` VALUES (2187, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 16:56:26');
INSERT INTO `sys_logininfor` VALUES (2188, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-15 17:21:29');
INSERT INTO `sys_logininfor` VALUES (2189, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 17:21:36');
INSERT INTO `sys_logininfor` VALUES (2190, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-15 17:23:51');
INSERT INTO `sys_logininfor` VALUES (2191, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 17:26:59');
INSERT INTO `sys_logininfor` VALUES (2192, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 17:39:51');
INSERT INTO `sys_logininfor` VALUES (2193, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-15 17:41:58');
INSERT INTO `sys_logininfor` VALUES (2194, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 17:44:58');
INSERT INTO `sys_logininfor` VALUES (2195, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-15 18:11:45');
INSERT INTO `sys_logininfor` VALUES (2196, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-15 18:15:34');
INSERT INTO `sys_logininfor` VALUES (2197, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-15 19:36:16');
INSERT INTO `sys_logininfor` VALUES (2198, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-15 23:40:42');
INSERT INTO `sys_logininfor` VALUES (2199, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 08:17:28');
INSERT INTO `sys_logininfor` VALUES (2200, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-16 10:19:31');
INSERT INTO `sys_logininfor` VALUES (2201, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 10:22:54');
INSERT INTO `sys_logininfor` VALUES (2202, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 10:49:08');
INSERT INTO `sys_logininfor` VALUES (2203, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 11:03:48');
INSERT INTO `sys_logininfor` VALUES (2204, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-11-16 13:47:11');
INSERT INTO `sys_logininfor` VALUES (2205, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 15:09:26');
INSERT INTO `sys_logininfor` VALUES (2206, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 15:41:07');
INSERT INTO `sys_logininfor` VALUES (2207, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 16:17:20');
INSERT INTO `sys_logininfor` VALUES (2208, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-11-16 16:30:38');
INSERT INTO `sys_logininfor` VALUES (2209, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 16:30:42');
INSERT INTO `sys_logininfor` VALUES (2210, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-16 16:36:30');
INSERT INTO `sys_logininfor` VALUES (2211, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 16:37:01');
INSERT INTO `sys_logininfor` VALUES (2212, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-16 16:42:10');
INSERT INTO `sys_logininfor` VALUES (2213, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 16:52:27');
INSERT INTO `sys_logininfor` VALUES (2214, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-16 17:27:01');
INSERT INTO `sys_logininfor` VALUES (2215, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-16 17:34:16');
INSERT INTO `sys_logininfor` VALUES (2216, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-16 17:34:37');
INSERT INTO `sys_logininfor` VALUES (2217, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-17 17:15:15');
INSERT INTO `sys_logininfor` VALUES (2218, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-17 17:43:26');
INSERT INTO `sys_logininfor` VALUES (2219, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 08:11:50');
INSERT INTO `sys_logininfor` VALUES (2220, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 08:16:13');
INSERT INTO `sys_logininfor` VALUES (2221, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 08:55:59');
INSERT INTO `sys_logininfor` VALUES (2222, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 09:59:55');
INSERT INTO `sys_logininfor` VALUES (2223, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 10:00:23');
INSERT INTO `sys_logininfor` VALUES (2224, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 10:20:05');
INSERT INTO `sys_logininfor` VALUES (2225, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-18 10:53:40');
INSERT INTO `sys_logininfor` VALUES (2226, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 10:53:47');
INSERT INTO `sys_logininfor` VALUES (2227, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 14:10:39');
INSERT INTO `sys_logininfor` VALUES (2228, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 14:47:42');
INSERT INTO `sys_logininfor` VALUES (2229, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 16:06:20');
INSERT INTO `sys_logininfor` VALUES (2230, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 16:32:49');
INSERT INTO `sys_logininfor` VALUES (2231, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 17:18:01');
INSERT INTO `sys_logininfor` VALUES (2232, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 17:26:56');
INSERT INTO `sys_logininfor` VALUES (2233, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 17:38:29');
INSERT INTO `sys_logininfor` VALUES (2234, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 17:43:45');
INSERT INTO `sys_logininfor` VALUES (2235, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 17:59:05');
INSERT INTO `sys_logininfor` VALUES (2236, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 18:07:10');
INSERT INTO `sys_logininfor` VALUES (2237, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 18:15:20');
INSERT INTO `sys_logininfor` VALUES (2238, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 18:51:26');
INSERT INTO `sys_logininfor` VALUES (2239, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 19:40:05');
INSERT INTO `sys_logininfor` VALUES (2240, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-18 19:40:45');
INSERT INTO `sys_logininfor` VALUES (2241, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 19:45:55');
INSERT INTO `sys_logininfor` VALUES (2242, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 19:48:35');
INSERT INTO `sys_logininfor` VALUES (2243, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 20:22:19');
INSERT INTO `sys_logininfor` VALUES (2244, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-18 21:11:01');
INSERT INTO `sys_logininfor` VALUES (2245, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 08:14:31');
INSERT INTO `sys_logininfor` VALUES (2246, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-19 08:51:39');
INSERT INTO `sys_logininfor` VALUES (2247, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-19 08:57:41');
INSERT INTO `sys_logininfor` VALUES (2248, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 08:58:28');
INSERT INTO `sys_logininfor` VALUES (2249, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 09:06:47');
INSERT INTO `sys_logininfor` VALUES (2250, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 09:31:55');
INSERT INTO `sys_logininfor` VALUES (2251, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 09:37:44');
INSERT INTO `sys_logininfor` VALUES (2252, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 11:34:10');
INSERT INTO `sys_logininfor` VALUES (2253, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-19 13:54:09');
INSERT INTO `sys_logininfor` VALUES (2254, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-19 16:34:46');
INSERT INTO `sys_logininfor` VALUES (2255, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-19 17:20:36');
INSERT INTO `sys_logininfor` VALUES (2256, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 17:46:31');
INSERT INTO `sys_logininfor` VALUES (2257, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 18:33:12');
INSERT INTO `sys_logininfor` VALUES (2258, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 19:06:37');
INSERT INTO `sys_logininfor` VALUES (2259, 'cni230wa060', '10.209.5.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 19:37:36');
INSERT INTO `sys_logininfor` VALUES (2260, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-19 19:39:35');
INSERT INTO `sys_logininfor` VALUES (2261, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 19:43:30');
INSERT INTO `sys_logininfor` VALUES (2262, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-19 19:47:03');
INSERT INTO `sys_logininfor` VALUES (2263, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-19 19:55:01');
INSERT INTO `sys_logininfor` VALUES (2264, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-19 19:55:06');
INSERT INTO `sys_logininfor` VALUES (2265, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-19 20:44:52');
INSERT INTO `sys_logininfor` VALUES (2266, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-20 08:34:04');
INSERT INTO `sys_logininfor` VALUES (2267, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-20 09:51:26');
INSERT INTO `sys_logininfor` VALUES (2268, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-20 12:40:37');
INSERT INTO `sys_logininfor` VALUES (2269, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-20 13:49:14');
INSERT INTO `sys_logininfor` VALUES (2270, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-20 14:08:18');
INSERT INTO `sys_logininfor` VALUES (2271, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-20 15:48:40');
INSERT INTO `sys_logininfor` VALUES (2272, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-20 17:17:17');
INSERT INTO `sys_logininfor` VALUES (2273, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-20 17:38:09');
INSERT INTO `sys_logininfor` VALUES (2274, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-20 17:42:12');
INSERT INTO `sys_logininfor` VALUES (2275, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-20 17:45:08');
INSERT INTO `sys_logininfor` VALUES (2276, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-20 17:45:26');
INSERT INTO `sys_logininfor` VALUES (2277, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-20 17:46:35');
INSERT INTO `sys_logininfor` VALUES (2278, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-20 17:46:38');
INSERT INTO `sys_logininfor` VALUES (2279, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-20 18:00:21');
INSERT INTO `sys_logininfor` VALUES (2280, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-20 18:31:30');
INSERT INTO `sys_logininfor` VALUES (2281, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-20 19:00:26');
INSERT INTO `sys_logininfor` VALUES (2282, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 08:02:15');
INSERT INTO `sys_logininfor` VALUES (2283, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 08:18:16');
INSERT INTO `sys_logininfor` VALUES (2284, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 08:18:43');
INSERT INTO `sys_logininfor` VALUES (2285, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 08:19:53');
INSERT INTO `sys_logininfor` VALUES (2286, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 08:50:41');
INSERT INTO `sys_logininfor` VALUES (2287, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 09:01:42');
INSERT INTO `sys_logininfor` VALUES (2288, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 10:33:39');
INSERT INTO `sys_logininfor` VALUES (2289, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 11:07:54');
INSERT INTO `sys_logininfor` VALUES (2290, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 13:53:42');
INSERT INTO `sys_logininfor` VALUES (2291, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 15:31:50');
INSERT INTO `sys_logininfor` VALUES (2292, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 16:21:27');
INSERT INTO `sys_logininfor` VALUES (2293, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-21 16:44:31');
INSERT INTO `sys_logininfor` VALUES (2294, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 16:44:37');
INSERT INTO `sys_logininfor` VALUES (2295, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-11-21 16:47:26');
INSERT INTO `sys_logininfor` VALUES (2296, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 16:47:29');
INSERT INTO `sys_logininfor` VALUES (2297, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 17:10:37');
INSERT INTO `sys_logininfor` VALUES (2298, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 17:45:24');
INSERT INTO `sys_logininfor` VALUES (2299, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 18:01:03');
INSERT INTO `sys_logininfor` VALUES (2300, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 18:11:55');
INSERT INTO `sys_logininfor` VALUES (2301, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 18:30:24');
INSERT INTO `sys_logininfor` VALUES (2302, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 18:38:42');
INSERT INTO `sys_logininfor` VALUES (2303, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 18:46:47');
INSERT INTO `sys_logininfor` VALUES (2304, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 19:33:08');
INSERT INTO `sys_logininfor` VALUES (2305, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 19:35:05');
INSERT INTO `sys_logininfor` VALUES (2306, 'cni23011747', '10.209.5.199', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 19:42:38');
INSERT INTO `sys_logininfor` VALUES (2307, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-21 20:53:03');
INSERT INTO `sys_logininfor` VALUES (2308, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-21 20:53:30');
INSERT INTO `sys_logininfor` VALUES (2309, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-22 08:59:47');
INSERT INTO `sys_logininfor` VALUES (2310, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-22 09:01:44');
INSERT INTO `sys_logininfor` VALUES (2311, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 10:18:53');
INSERT INTO `sys_logininfor` VALUES (2312, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-22 11:11:12');
INSERT INTO `sys_logininfor` VALUES (2313, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-22 11:35:04');
INSERT INTO `sys_logininfor` VALUES (2314, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 13:30:53');
INSERT INTO `sys_logininfor` VALUES (2315, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-22 15:38:41');
INSERT INTO `sys_logininfor` VALUES (2316, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 15:52:18');
INSERT INTO `sys_logininfor` VALUES (2317, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 15:56:44');
INSERT INTO `sys_logininfor` VALUES (2318, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 17:41:24');
INSERT INTO `sys_logininfor` VALUES (2319, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 17:41:55');
INSERT INTO `sys_logininfor` VALUES (2320, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 17:47:04');
INSERT INTO `sys_logininfor` VALUES (2321, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 17:50:48');
INSERT INTO `sys_logininfor` VALUES (2322, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 17:53:24');
INSERT INTO `sys_logininfor` VALUES (2323, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 17:59:13');
INSERT INTO `sys_logininfor` VALUES (2324, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-22 18:31:55');
INSERT INTO `sys_logininfor` VALUES (2325, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-22 19:43:53');
INSERT INTO `sys_logininfor` VALUES (2326, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-22 22:15:42');
INSERT INTO `sys_logininfor` VALUES (2327, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-23 09:12:16');
INSERT INTO `sys_logininfor` VALUES (2328, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-23 09:28:47');
INSERT INTO `sys_logininfor` VALUES (2329, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-23 09:28:50');
INSERT INTO `sys_logininfor` VALUES (2330, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-23 10:00:01');
INSERT INTO `sys_logininfor` VALUES (2331, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-23 10:23:33');
INSERT INTO `sys_logininfor` VALUES (2332, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-23 14:26:17');
INSERT INTO `sys_logininfor` VALUES (2333, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-23 14:27:16');
INSERT INTO `sys_logininfor` VALUES (2334, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-23 14:27:21');
INSERT INTO `sys_logininfor` VALUES (2335, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-23 14:41:13');
INSERT INTO `sys_logininfor` VALUES (2336, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-23 15:04:40');
INSERT INTO `sys_logininfor` VALUES (2337, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-23 17:02:31');
INSERT INTO `sys_logininfor` VALUES (2338, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-23 17:08:23');
INSERT INTO `sys_logininfor` VALUES (2339, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-23 17:25:37');
INSERT INTO `sys_logininfor` VALUES (2340, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-23 18:01:30');
INSERT INTO `sys_logininfor` VALUES (2341, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-24 17:26:15');
INSERT INTO `sys_logininfor` VALUES (2342, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-24 17:47:20');
INSERT INTO `sys_logininfor` VALUES (2343, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-24 20:56:05');
INSERT INTO `sys_logininfor` VALUES (2344, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 08:16:06');
INSERT INTO `sys_logininfor` VALUES (2345, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 08:46:18');
INSERT INTO `sys_logininfor` VALUES (2346, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-25 09:28:55');
INSERT INTO `sys_logininfor` VALUES (2347, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 09:29:00');
INSERT INTO `sys_logininfor` VALUES (2348, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 10:30:53');
INSERT INTO `sys_logininfor` VALUES (2349, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-25 10:51:47');
INSERT INTO `sys_logininfor` VALUES (2350, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-25 14:45:57');
INSERT INTO `sys_logininfor` VALUES (2351, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 15:38:17');
INSERT INTO `sys_logininfor` VALUES (2352, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 15:38:35');
INSERT INTO `sys_logininfor` VALUES (2353, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 16:15:37');
INSERT INTO `sys_logininfor` VALUES (2354, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 16:22:46');
INSERT INTO `sys_logininfor` VALUES (2355, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 16:31:14');
INSERT INTO `sys_logininfor` VALUES (2356, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 17:27:02');
INSERT INTO `sys_logininfor` VALUES (2357, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 17:44:26');
INSERT INTO `sys_logininfor` VALUES (2358, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 17:55:23');
INSERT INTO `sys_logininfor` VALUES (2359, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-25 18:01:19');
INSERT INTO `sys_logininfor` VALUES (2360, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 18:33:55');
INSERT INTO `sys_logininfor` VALUES (2361, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 18:40:58');
INSERT INTO `sys_logininfor` VALUES (2362, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 18:58:19');
INSERT INTO `sys_logininfor` VALUES (2363, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-25 19:39:14');
INSERT INTO `sys_logininfor` VALUES (2364, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 20:45:45');
INSERT INTO `sys_logininfor` VALUES (2365, 'admin', '10.209.7.66', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-25 21:38:36');
INSERT INTO `sys_logininfor` VALUES (2366, 'admin', '10.209.7.66', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-25 21:38:45');
INSERT INTO `sys_logininfor` VALUES (2367, 'admin', '10.209.7.66', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-25 21:38:53');
INSERT INTO `sys_logininfor` VALUES (2368, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-26 08:37:26');
INSERT INTO `sys_logininfor` VALUES (2369, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 08:37:30');
INSERT INTO `sys_logininfor` VALUES (2370, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 09:37:25');
INSERT INTO `sys_logininfor` VALUES (2371, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 09:37:53');
INSERT INTO `sys_logininfor` VALUES (2372, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 09:38:51');
INSERT INTO `sys_logininfor` VALUES (2373, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 09:39:01');
INSERT INTO `sys_logininfor` VALUES (2374, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 09:39:14');
INSERT INTO `sys_logininfor` VALUES (2375, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 09:47:20');
INSERT INTO `sys_logininfor` VALUES (2376, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 10:14:03');
INSERT INTO `sys_logininfor` VALUES (2377, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 10:39:14');
INSERT INTO `sys_logininfor` VALUES (2378, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 10:58:38');
INSERT INTO `sys_logininfor` VALUES (2379, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 12:22:34');
INSERT INTO `sys_logininfor` VALUES (2380, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 14:13:14');
INSERT INTO `sys_logininfor` VALUES (2381, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 14:45:04');
INSERT INTO `sys_logininfor` VALUES (2382, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 14:46:22');
INSERT INTO `sys_logininfor` VALUES (2383, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 14:48:21');
INSERT INTO `sys_logininfor` VALUES (2384, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 14:50:07');
INSERT INTO `sys_logininfor` VALUES (2385, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 15:03:43');
INSERT INTO `sys_logininfor` VALUES (2386, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 15:08:16');
INSERT INTO `sys_logininfor` VALUES (2387, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 15:09:26');
INSERT INTO `sys_logininfor` VALUES (2388, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-26 15:20:56');
INSERT INTO `sys_logininfor` VALUES (2389, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 15:32:46');
INSERT INTO `sys_logininfor` VALUES (2390, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 16:14:06');
INSERT INTO `sys_logininfor` VALUES (2391, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 16:19:14');
INSERT INTO `sys_logininfor` VALUES (2392, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 16:23:02');
INSERT INTO `sys_logininfor` VALUES (2393, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 16:26:19');
INSERT INTO `sys_logininfor` VALUES (2394, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 16:56:44');
INSERT INTO `sys_logininfor` VALUES (2395, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 17:13:49');
INSERT INTO `sys_logininfor` VALUES (2396, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 17:16:08');
INSERT INTO `sys_logininfor` VALUES (2397, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 17:17:27');
INSERT INTO `sys_logininfor` VALUES (2398, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 17:22:05');
INSERT INTO `sys_logininfor` VALUES (2399, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 17:24:39');
INSERT INTO `sys_logininfor` VALUES (2400, 'cni230w9037', '10.209.5.119', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 17:44:18');
INSERT INTO `sys_logininfor` VALUES (2401, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 17:44:23');
INSERT INTO `sys_logininfor` VALUES (2402, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-26 17:49:41');
INSERT INTO `sys_logininfor` VALUES (2403, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-11-26 17:49:44');
INSERT INTO `sys_logininfor` VALUES (2404, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 17:49:44');
INSERT INTO `sys_logininfor` VALUES (2405, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 17:54:13');
INSERT INTO `sys_logininfor` VALUES (2406, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 17:55:11');
INSERT INTO `sys_logininfor` VALUES (2407, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 18:06:01');
INSERT INTO `sys_logininfor` VALUES (2408, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 18:09:51');
INSERT INTO `sys_logininfor` VALUES (2409, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 18:13:18');
INSERT INTO `sys_logininfor` VALUES (2410, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 18:48:25');
INSERT INTO `sys_logininfor` VALUES (2411, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 18:54:03');
INSERT INTO `sys_logininfor` VALUES (2412, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 19:07:54');
INSERT INTO `sys_logininfor` VALUES (2413, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 19:10:02');
INSERT INTO `sys_logininfor` VALUES (2414, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-26 19:12:17');
INSERT INTO `sys_logininfor` VALUES (2415, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 19:21:35');
INSERT INTO `sys_logininfor` VALUES (2416, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 19:33:53');
INSERT INTO `sys_logininfor` VALUES (2417, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-26 19:38:10');
INSERT INTO `sys_logininfor` VALUES (2418, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 07:57:38');
INSERT INTO `sys_logininfor` VALUES (2419, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:11:33');
INSERT INTO `sys_logininfor` VALUES (2420, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:12:01');
INSERT INTO `sys_logininfor` VALUES (2421, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:17:40');
INSERT INTO `sys_logininfor` VALUES (2422, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 08:20:56');
INSERT INTO `sys_logininfor` VALUES (2423, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:21:47');
INSERT INTO `sys_logininfor` VALUES (2424, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:22:43');
INSERT INTO `sys_logininfor` VALUES (2425, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:22:57');
INSERT INTO `sys_logininfor` VALUES (2426, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 08:23:02');
INSERT INTO `sys_logininfor` VALUES (2427, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:25:58');
INSERT INTO `sys_logininfor` VALUES (2428, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:27:23');
INSERT INTO `sys_logininfor` VALUES (2429, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 08:28:25');
INSERT INTO `sys_logininfor` VALUES (2430, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:30:51');
INSERT INTO `sys_logininfor` VALUES (2431, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:33:44');
INSERT INTO `sys_logininfor` VALUES (2432, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:46:37');
INSERT INTO `sys_logininfor` VALUES (2433, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 08:48:41');
INSERT INTO `sys_logininfor` VALUES (2434, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 08:51:37');
INSERT INTO `sys_logininfor` VALUES (2435, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 08:55:55');
INSERT INTO `sys_logininfor` VALUES (2436, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 08:58:43');
INSERT INTO `sys_logininfor` VALUES (2437, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 09:26:15');
INSERT INTO `sys_logininfor` VALUES (2438, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 09:38:40');
INSERT INTO `sys_logininfor` VALUES (2439, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-27 09:48:35');
INSERT INTO `sys_logininfor` VALUES (2440, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 09:52:38');
INSERT INTO `sys_logininfor` VALUES (2441, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 10:01:49');
INSERT INTO `sys_logininfor` VALUES (2442, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 10:10:51');
INSERT INTO `sys_logininfor` VALUES (2443, 'cni23425530', '10.209.5.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 10:13:38');
INSERT INTO `sys_logininfor` VALUES (2444, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 10:14:17');
INSERT INTO `sys_logininfor` VALUES (2445, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 10:14:25');
INSERT INTO `sys_logininfor` VALUES (2446, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 10:14:36');
INSERT INTO `sys_logininfor` VALUES (2447, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 10:15:44');
INSERT INTO `sys_logininfor` VALUES (2448, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 10:16:43');
INSERT INTO `sys_logininfor` VALUES (2449, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 10:23:00');
INSERT INTO `sys_logininfor` VALUES (2450, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-27 10:36:33');
INSERT INTO `sys_logininfor` VALUES (2451, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 10:36:36');
INSERT INTO `sys_logininfor` VALUES (2452, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 11:11:39');
INSERT INTO `sys_logininfor` VALUES (2453, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 14:50:20');
INSERT INTO `sys_logininfor` VALUES (2454, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 15:10:37');
INSERT INTO `sys_logininfor` VALUES (2455, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-27 15:25:51');
INSERT INTO `sys_logininfor` VALUES (2456, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-27 15:49:11');
INSERT INTO `sys_logininfor` VALUES (2457, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 16:02:32');
INSERT INTO `sys_logininfor` VALUES (2458, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-27 16:26:54');
INSERT INTO `sys_logininfor` VALUES (2459, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 07:54:38');
INSERT INTO `sys_logininfor` VALUES (2460, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-28 08:48:06');
INSERT INTO `sys_logininfor` VALUES (2461, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-28 09:29:25');
INSERT INTO `sys_logininfor` VALUES (2462, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 09:45:04');
INSERT INTO `sys_logininfor` VALUES (2463, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-28 09:45:38');
INSERT INTO `sys_logininfor` VALUES (2464, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 10:21:31');
INSERT INTO `sys_logininfor` VALUES (2465, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 13:45:12');
INSERT INTO `sys_logininfor` VALUES (2466, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-28 14:52:24');
INSERT INTO `sys_logininfor` VALUES (2467, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 14:52:28');
INSERT INTO `sys_logininfor` VALUES (2468, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 14:57:26');
INSERT INTO `sys_logininfor` VALUES (2469, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-28 15:15:30');
INSERT INTO `sys_logininfor` VALUES (2470, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 15:15:34');
INSERT INTO `sys_logininfor` VALUES (2471, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 15:20:08');
INSERT INTO `sys_logininfor` VALUES (2472, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 17:33:50');
INSERT INTO `sys_logininfor` VALUES (2473, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 18:06:54');
INSERT INTO `sys_logininfor` VALUES (2474, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 18:38:43');
INSERT INTO `sys_logininfor` VALUES (2475, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-11-28 18:57:55');
INSERT INTO `sys_logininfor` VALUES (2476, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-28 18:57:58');
INSERT INTO `sys_logininfor` VALUES (2477, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-28 18:58:04');
INSERT INTO `sys_logininfor` VALUES (2478, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-28 18:58:41');
INSERT INTO `sys_logininfor` VALUES (2479, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-28 20:29:03');
INSERT INTO `sys_logininfor` VALUES (2480, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-29 08:17:45');
INSERT INTO `sys_logininfor` VALUES (2481, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 10:11:31');
INSERT INTO `sys_logininfor` VALUES (2482, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 11:05:15');
INSERT INTO `sys_logininfor` VALUES (2483, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-29 11:28:21');
INSERT INTO `sys_logininfor` VALUES (2484, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 11:36:32');
INSERT INTO `sys_logininfor` VALUES (2485, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 13:24:20');
INSERT INTO `sys_logininfor` VALUES (2486, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-29 13:49:50');
INSERT INTO `sys_logininfor` VALUES (2487, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 13:54:25');
INSERT INTO `sys_logininfor` VALUES (2488, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 13:56:39');
INSERT INTO `sys_logininfor` VALUES (2489, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 15:01:46');
INSERT INTO `sys_logininfor` VALUES (2490, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 15:53:09');
INSERT INTO `sys_logininfor` VALUES (2491, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 16:38:14');
INSERT INTO `sys_logininfor` VALUES (2492, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-29 17:23:09');
INSERT INTO `sys_logininfor` VALUES (2493, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-11-29 17:39:20');
INSERT INTO `sys_logininfor` VALUES (2494, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-29 17:39:26');
INSERT INTO `sys_logininfor` VALUES (2495, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 17:54:40');
INSERT INTO `sys_logininfor` VALUES (2496, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-29 18:22:27');
INSERT INTO `sys_logininfor` VALUES (2497, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-29 18:36:18');
INSERT INTO `sys_logininfor` VALUES (2498, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-29 18:38:48');
INSERT INTO `sys_logininfor` VALUES (2499, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-29 18:53:08');
INSERT INTO `sys_logininfor` VALUES (2500, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-29 20:06:07');
INSERT INTO `sys_logininfor` VALUES (2501, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-11-29 20:15:44');
INSERT INTO `sys_logininfor` VALUES (2502, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-29 20:29:05');
INSERT INTO `sys_logininfor` VALUES (2503, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 09:00:50');
INSERT INTO `sys_logininfor` VALUES (2504, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-30 10:00:50');
INSERT INTO `sys_logininfor` VALUES (2505, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-30 11:22:09');
INSERT INTO `sys_logininfor` VALUES (2506, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-30 14:03:14');
INSERT INTO `sys_logininfor` VALUES (2507, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-11-30 14:03:20');
INSERT INTO `sys_logininfor` VALUES (2508, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 14:05:21');
INSERT INTO `sys_logininfor` VALUES (2509, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 14:06:17');
INSERT INTO `sys_logininfor` VALUES (2510, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 14:13:42');
INSERT INTO `sys_logininfor` VALUES (2511, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-30 14:45:25');
INSERT INTO `sys_logininfor` VALUES (2512, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 14:57:38');
INSERT INTO `sys_logininfor` VALUES (2513, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-30 15:35:58');
INSERT INTO `sys_logininfor` VALUES (2514, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 15:56:36');
INSERT INTO `sys_logininfor` VALUES (2515, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 16:21:16');
INSERT INTO `sys_logininfor` VALUES (2516, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-30 16:41:03');
INSERT INTO `sys_logininfor` VALUES (2517, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 16:43:19');
INSERT INTO `sys_logininfor` VALUES (2518, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 16:45:19');
INSERT INTO `sys_logininfor` VALUES (2519, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 17:00:26');
INSERT INTO `sys_logininfor` VALUES (2520, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-11-30 17:03:04');
INSERT INTO `sys_logininfor` VALUES (2521, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 17:04:07');
INSERT INTO `sys_logininfor` VALUES (2522, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-11-30 17:07:17');
INSERT INTO `sys_logininfor` VALUES (2523, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-02 08:18:58');
INSERT INTO `sys_logininfor` VALUES (2524, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-02 09:38:23');
INSERT INTO `sys_logininfor` VALUES (2525, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-02 11:19:00');
INSERT INTO `sys_logininfor` VALUES (2526, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-02 14:27:35');
INSERT INTO `sys_logininfor` VALUES (2527, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-02 14:40:03');
INSERT INTO `sys_logininfor` VALUES (2528, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-02 14:45:24');
INSERT INTO `sys_logininfor` VALUES (2529, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-12-02 15:08:20');
INSERT INTO `sys_logininfor` VALUES (2530, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-02 15:48:39');
INSERT INTO `sys_logininfor` VALUES (2531, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-02 15:59:25');
INSERT INTO `sys_logininfor` VALUES (2532, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-02 15:59:28');
INSERT INTO `sys_logininfor` VALUES (2533, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-02 16:09:24');
INSERT INTO `sys_logininfor` VALUES (2534, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-02 17:39:20');
INSERT INTO `sys_logininfor` VALUES (2535, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-02 18:42:45');
INSERT INTO `sys_logininfor` VALUES (2536, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-02 18:42:50');
INSERT INTO `sys_logininfor` VALUES (2537, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-02 18:42:52');
INSERT INTO `sys_logininfor` VALUES (2538, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-02 18:42:54');
INSERT INTO `sys_logininfor` VALUES (2539, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-02 19:03:01');
INSERT INTO `sys_logininfor` VALUES (2540, 'admin', '10.209.5.204', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-12-02 19:31:56');
INSERT INTO `sys_logininfor` VALUES (2541, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-02 20:39:14');
INSERT INTO `sys_logininfor` VALUES (2542, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-02 21:05:06');
INSERT INTO `sys_logininfor` VALUES (2543, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-03 08:59:35');
INSERT INTO `sys_logininfor` VALUES (2544, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-03 09:15:31');
INSERT INTO `sys_logininfor` VALUES (2545, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-03 09:19:46');
INSERT INTO `sys_logininfor` VALUES (2546, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-03 09:36:20');
INSERT INTO `sys_logininfor` VALUES (2547, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-03 14:17:15');
INSERT INTO `sys_logininfor` VALUES (2548, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-12-03 14:59:38');
INSERT INTO `sys_logininfor` VALUES (2549, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-03 15:37:48');
INSERT INTO `sys_logininfor` VALUES (2550, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-03 15:39:59');
INSERT INTO `sys_logininfor` VALUES (2551, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-03 17:09:33');
INSERT INTO `sys_logininfor` VALUES (2552, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-03 17:09:36');
INSERT INTO `sys_logininfor` VALUES (2553, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-03 17:25:05');
INSERT INTO `sys_logininfor` VALUES (2554, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-03 17:28:42');
INSERT INTO `sys_logininfor` VALUES (2555, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-03 17:55:14');
INSERT INTO `sys_logininfor` VALUES (2556, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-03 20:17:41');
INSERT INTO `sys_logininfor` VALUES (2557, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-03 20:32:53');
INSERT INTO `sys_logininfor` VALUES (2558, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-03 20:38:51');
INSERT INTO `sys_logininfor` VALUES (2559, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-04 09:45:09');
INSERT INTO `sys_logininfor` VALUES (2560, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-04 16:32:05');
INSERT INTO `sys_logininfor` VALUES (2561, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-04 16:32:30');
INSERT INTO `sys_logininfor` VALUES (2562, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-04 17:35:07');
INSERT INTO `sys_logininfor` VALUES (2563, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-04 18:19:43');
INSERT INTO `sys_logininfor` VALUES (2564, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-05 08:52:17');
INSERT INTO `sys_logininfor` VALUES (2565, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-05 09:12:07');
INSERT INTO `sys_logininfor` VALUES (2566, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-05 09:12:10');
INSERT INTO `sys_logininfor` VALUES (2567, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-05 09:30:26');
INSERT INTO `sys_logininfor` VALUES (2568, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-05 17:56:02');
INSERT INTO `sys_logininfor` VALUES (2569, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-05 20:12:57');
INSERT INTO `sys_logininfor` VALUES (2570, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-06 09:01:07');
INSERT INTO `sys_logininfor` VALUES (2571, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-06 09:03:09');
INSERT INTO `sys_logininfor` VALUES (2572, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-06 09:16:55');
INSERT INTO `sys_logininfor` VALUES (2573, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-06 09:31:50');
INSERT INTO `sys_logininfor` VALUES (2574, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-06 09:52:42');
INSERT INTO `sys_logininfor` VALUES (2575, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-06 10:12:19');
INSERT INTO `sys_logininfor` VALUES (2576, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-06 10:43:11');
INSERT INTO `sys_logininfor` VALUES (2577, 'cni23405207', '10.209.6.2', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-06 15:48:26');
INSERT INTO `sys_logininfor` VALUES (2578, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-06 15:55:30');
INSERT INTO `sys_logininfor` VALUES (2579, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-06 16:11:18');
INSERT INTO `sys_logininfor` VALUES (2580, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-06 17:42:06');
INSERT INTO `sys_logininfor` VALUES (2581, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-07 08:06:46');
INSERT INTO `sys_logininfor` VALUES (2582, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-07 09:19:55');
INSERT INTO `sys_logininfor` VALUES (2583, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-07 09:21:47');
INSERT INTO `sys_logininfor` VALUES (2584, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-07 11:09:40');
INSERT INTO `sys_logininfor` VALUES (2585, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-07 11:43:21');
INSERT INTO `sys_logininfor` VALUES (2586, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-07 14:56:30');
INSERT INTO `sys_logininfor` VALUES (2587, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-07 14:56:33');
INSERT INTO `sys_logininfor` VALUES (2588, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-07 15:01:57');
INSERT INTO `sys_logininfor` VALUES (2589, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-07 16:14:38');
INSERT INTO `sys_logininfor` VALUES (2590, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-07 16:14:42');
INSERT INTO `sys_logininfor` VALUES (2591, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-09 08:27:06');
INSERT INTO `sys_logininfor` VALUES (2592, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-09 09:45:51');
INSERT INTO `sys_logininfor` VALUES (2593, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-09 10:46:29');
INSERT INTO `sys_logininfor` VALUES (2594, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-09 11:25:22');
INSERT INTO `sys_logininfor` VALUES (2595, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-09 11:32:11');
INSERT INTO `sys_logininfor` VALUES (2596, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-09 14:07:23');
INSERT INTO `sys_logininfor` VALUES (2597, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-09 16:26:13');
INSERT INTO `sys_logininfor` VALUES (2598, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-10 07:50:35');
INSERT INTO `sys_logininfor` VALUES (2599, 'cni230wa129', '10.209.5.5', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-10 07:57:04');
INSERT INTO `sys_logininfor` VALUES (2600, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-10 14:55:03');
INSERT INTO `sys_logininfor` VALUES (2601, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-10 16:14:13');
INSERT INTO `sys_logininfor` VALUES (2602, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-10 16:14:19');
INSERT INTO `sys_logininfor` VALUES (2603, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-10 19:06:06');
INSERT INTO `sys_logininfor` VALUES (2604, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-11 09:10:44');
INSERT INTO `sys_logininfor` VALUES (2605, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-11 09:38:17');
INSERT INTO `sys_logininfor` VALUES (2606, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2024-12-11 09:51:34');
INSERT INTO `sys_logininfor` VALUES (2607, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-11 09:51:38');
INSERT INTO `sys_logininfor` VALUES (2608, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-11 10:51:38');
INSERT INTO `sys_logininfor` VALUES (2609, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-12-11 15:16:35');
INSERT INTO `sys_logininfor` VALUES (2610, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-12 08:29:46');
INSERT INTO `sys_logininfor` VALUES (2611, 'cni23110624', '10.209.5.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-12 08:47:55');
INSERT INTO `sys_logininfor` VALUES (2612, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-12 14:11:07');
INSERT INTO `sys_logininfor` VALUES (2613, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-12 15:25:37');
INSERT INTO `sys_logininfor` VALUES (2614, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-12 16:00:44');
INSERT INTO `sys_logininfor` VALUES (2615, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-12 16:08:36');
INSERT INTO `sys_logininfor` VALUES (2616, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-12 16:53:55');
INSERT INTO `sys_logininfor` VALUES (2617, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-12 16:56:38');
INSERT INTO `sys_logininfor` VALUES (2618, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-12 19:30:13');
INSERT INTO `sys_logininfor` VALUES (2619, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-12 19:57:33');
INSERT INTO `sys_logininfor` VALUES (2620, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-12 20:07:07');
INSERT INTO `sys_logininfor` VALUES (2621, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-12 20:08:08');
INSERT INTO `sys_logininfor` VALUES (2622, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-13 09:08:13');
INSERT INTO `sys_logininfor` VALUES (2623, 'cni23427542', '10.209.6.9', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-13 10:40:29');
INSERT INTO `sys_logininfor` VALUES (2624, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-13 13:44:08');
INSERT INTO `sys_logininfor` VALUES (2625, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-13 13:44:13');
INSERT INTO `sys_logininfor` VALUES (2626, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-13 14:10:18');
INSERT INTO `sys_logininfor` VALUES (2627, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-13 15:17:19');
INSERT INTO `sys_logininfor` VALUES (2628, 'cni230w9037', '10.209.5.119', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-13 15:25:41');
INSERT INTO `sys_logininfor` VALUES (2629, 'cni23399181', '10.209.6.3', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-13 15:46:25');
INSERT INTO `sys_logininfor` VALUES (2630, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-13 15:51:18');
INSERT INTO `sys_logininfor` VALUES (2631, 'cni230w9037', '10.209.5.119', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-13 16:06:55');
INSERT INTO `sys_logininfor` VALUES (2632, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-13 16:18:38');
INSERT INTO `sys_logininfor` VALUES (2633, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-12-14 14:22:33');
INSERT INTO `sys_logininfor` VALUES (2634, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-14 17:03:11');
INSERT INTO `sys_logininfor` VALUES (2635, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-14 17:20:23');
INSERT INTO `sys_logininfor` VALUES (2636, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-16 08:41:09');
INSERT INTO `sys_logininfor` VALUES (2637, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-16 18:48:28');
INSERT INTO `sys_logininfor` VALUES (2638, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-16 19:00:46');
INSERT INTO `sys_logininfor` VALUES (2639, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-17 08:23:38');
INSERT INTO `sys_logininfor` VALUES (2640, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-17 08:38:42');
INSERT INTO `sys_logininfor` VALUES (2641, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-17 08:57:14');
INSERT INTO `sys_logininfor` VALUES (2642, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-17 10:07:52');
INSERT INTO `sys_logininfor` VALUES (2643, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-17 10:07:57');
INSERT INTO `sys_logininfor` VALUES (2644, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-17 11:22:17');
INSERT INTO `sys_logininfor` VALUES (2645, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-17 14:40:20');
INSERT INTO `sys_logininfor` VALUES (2646, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-17 18:50:55');
INSERT INTO `sys_logininfor` VALUES (2647, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-17 18:50:58');
INSERT INTO `sys_logininfor` VALUES (2648, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-17 19:18:40');
INSERT INTO `sys_logininfor` VALUES (2649, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-18 08:35:32');
INSERT INTO `sys_logininfor` VALUES (2650, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-18 09:50:40');
INSERT INTO `sys_logininfor` VALUES (2651, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-18 09:50:42');
INSERT INTO `sys_logininfor` VALUES (2652, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-18 10:30:04');
INSERT INTO `sys_logininfor` VALUES (2653, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-18 11:09:58');
INSERT INTO `sys_logininfor` VALUES (2654, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-18 13:59:15');
INSERT INTO `sys_logininfor` VALUES (2655, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-18 16:27:49');
INSERT INTO `sys_logininfor` VALUES (2656, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-18 16:36:26');
INSERT INTO `sys_logininfor` VALUES (2657, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-18 16:39:23');
INSERT INTO `sys_logininfor` VALUES (2658, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-19 09:26:29');
INSERT INTO `sys_logininfor` VALUES (2659, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-19 15:05:11');
INSERT INTO `sys_logininfor` VALUES (2660, 'admin', '10.209.5.204', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-12-19 16:04:18');
INSERT INTO `sys_logininfor` VALUES (2661, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-19 16:29:29');
INSERT INTO `sys_logininfor` VALUES (2662, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-19 18:23:39');
INSERT INTO `sys_logininfor` VALUES (2663, 'cni23085322', '10.209.5.204', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-19 20:24:17');
INSERT INTO `sys_logininfor` VALUES (2664, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-19 22:24:54');
INSERT INTO `sys_logininfor` VALUES (2665, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-20 08:44:59');
INSERT INTO `sys_logininfor` VALUES (2666, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-20 11:27:37');
INSERT INTO `sys_logininfor` VALUES (2667, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-20 14:07:05');
INSERT INTO `sys_logininfor` VALUES (2668, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-20 14:10:38');
INSERT INTO `sys_logininfor` VALUES (2669, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-20 14:19:10');
INSERT INTO `sys_logininfor` VALUES (2670, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-20 14:46:44');
INSERT INTO `sys_logininfor` VALUES (2671, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-20 15:57:17');
INSERT INTO `sys_logininfor` VALUES (2672, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-21 08:32:39');
INSERT INTO `sys_logininfor` VALUES (2673, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-21 08:37:11');
INSERT INTO `sys_logininfor` VALUES (2674, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-21 09:09:36');
INSERT INTO `sys_logininfor` VALUES (2675, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-21 09:30:39');
INSERT INTO `sys_logininfor` VALUES (2676, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-21 09:31:31');
INSERT INTO `sys_logininfor` VALUES (2677, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-21 09:58:05');
INSERT INTO `sys_logininfor` VALUES (2678, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-21 10:02:27');
INSERT INTO `sys_logininfor` VALUES (2679, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-21 10:13:05');
INSERT INTO `sys_logininfor` VALUES (2680, 'cni23478202', '10.209.6.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-21 10:13:09');
INSERT INTO `sys_logininfor` VALUES (2681, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-21 11:01:16');
INSERT INTO `sys_logininfor` VALUES (2682, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-21 14:51:01');
INSERT INTO `sys_logininfor` VALUES (2683, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-21 15:28:27');
INSERT INTO `sys_logininfor` VALUES (2684, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-21 15:32:56');
INSERT INTO `sys_logininfor` VALUES (2685, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-21 16:00:05');
INSERT INTO `sys_logininfor` VALUES (2686, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-21 17:30:09');
INSERT INTO `sys_logininfor` VALUES (2687, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-23 08:20:58');
INSERT INTO `sys_logininfor` VALUES (2688, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-23 08:27:51');
INSERT INTO `sys_logininfor` VALUES (2689, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-23 09:57:16');
INSERT INTO `sys_logininfor` VALUES (2690, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-23 13:50:57');
INSERT INTO `sys_logininfor` VALUES (2691, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-23 13:55:08');
INSERT INTO `sys_logininfor` VALUES (2692, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-23 15:18:57');
INSERT INTO `sys_logininfor` VALUES (2693, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-23 15:43:17');
INSERT INTO `sys_logininfor` VALUES (2694, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-23 17:03:16');
INSERT INTO `sys_logininfor` VALUES (2695, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-23 19:17:09');
INSERT INTO `sys_logininfor` VALUES (2696, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 08:40:54');
INSERT INTO `sys_logininfor` VALUES (2697, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 09:15:09');
INSERT INTO `sys_logininfor` VALUES (2698, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 09:39:24');
INSERT INTO `sys_logininfor` VALUES (2699, 'admin', '10.209.7.206', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-12-24 10:52:41');
INSERT INTO `sys_logininfor` VALUES (2700, 'admin', '10.209.7.206', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-12-24 10:52:45');
INSERT INTO `sys_logininfor` VALUES (2701, 'admin', '10.209.7.206', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-12-24 10:53:07');
INSERT INTO `sys_logininfor` VALUES (2702, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 14:26:45');
INSERT INTO `sys_logininfor` VALUES (2703, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 14:41:43');
INSERT INTO `sys_logininfor` VALUES (2704, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 14:43:28');
INSERT INTO `sys_logininfor` VALUES (2705, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-12-24 15:30:07');
INSERT INTO `sys_logininfor` VALUES (2706, 'cni230w9019', '10.209.5.4', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 16:23:36');
INSERT INTO `sys_logininfor` VALUES (2707, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 16:25:34');
INSERT INTO `sys_logininfor` VALUES (2708, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 16:40:34');
INSERT INTO `sys_logininfor` VALUES (2709, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-12-24 16:43:36');
INSERT INTO `sys_logininfor` VALUES (2710, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-24 19:16:51');
INSERT INTO `sys_logininfor` VALUES (2711, 'cni23475756', '10.209.5.10', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-25 08:20:55');
INSERT INTO `sys_logininfor` VALUES (2712, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 08:23:39');
INSERT INTO `sys_logininfor` VALUES (2713, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-25 08:46:51');
INSERT INTO `sys_logininfor` VALUES (2714, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 08:47:24');
INSERT INTO `sys_logininfor` VALUES (2715, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-25 08:48:38');
INSERT INTO `sys_logininfor` VALUES (2716, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-25 08:51:31');
INSERT INTO `sys_logininfor` VALUES (2717, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 08:51:37');
INSERT INTO `sys_logininfor` VALUES (2718, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-25 09:08:31');
INSERT INTO `sys_logininfor` VALUES (2719, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-25 09:09:58');
INSERT INTO `sys_logininfor` VALUES (2720, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-25 09:10:43');
INSERT INTO `sys_logininfor` VALUES (2721, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-25 09:10:45');
INSERT INTO `sys_logininfor` VALUES (2722, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 09:11:07');
INSERT INTO `sys_logininfor` VALUES (2723, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 09:18:04');
INSERT INTO `sys_logininfor` VALUES (2724, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-25 09:38:05');
INSERT INTO `sys_logininfor` VALUES (2725, 'cni23032622', '10.209.5.20', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 09:58:55');
INSERT INTO `sys_logininfor` VALUES (2726, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 11:26:53');
INSERT INTO `sys_logininfor` VALUES (2727, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-12-25 11:28:21');
INSERT INTO `sys_logininfor` VALUES (2728, 'cni23011604', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 11:28:29');
INSERT INTO `sys_logininfor` VALUES (2729, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 14:37:51');
INSERT INTO `sys_logininfor` VALUES (2730, 'cni23011604', '10.209.5.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 14:53:07');
INSERT INTO `sys_logininfor` VALUES (2731, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 17:50:34');
INSERT INTO `sys_logininfor` VALUES (2732, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-25 19:38:48');
INSERT INTO `sys_logininfor` VALUES (2733, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-26 09:19:34');
INSERT INTO `sys_logininfor` VALUES (2734, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-26 09:31:27');
INSERT INTO `sys_logininfor` VALUES (2735, 'cni23011604', '10.209.5.8', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2024-12-26 10:09:43');
INSERT INTO `sys_logininfor` VALUES (2736, 'cni23011604', '10.209.5.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-26 10:09:54');
INSERT INTO `sys_logininfor` VALUES (2737, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-26 14:14:44');
INSERT INTO `sys_logininfor` VALUES (2738, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-26 14:14:48');
INSERT INTO `sys_logininfor` VALUES (2739, 'cni23478174', '10.209.5.17', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-26 15:43:35');
INSERT INTO `sys_logininfor` VALUES (2740, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2024-12-26 15:45:38');
INSERT INTO `sys_logininfor` VALUES (2741, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-26 15:45:43');
INSERT INTO `sys_logininfor` VALUES (2742, 'cni23493246', '10.209.6.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-26 16:12:44');
INSERT INTO `sys_logininfor` VALUES (2743, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-26 18:26:14');
INSERT INTO `sys_logininfor` VALUES (2744, 'cni23427540', '10.209.5.19', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-26 20:03:20');
INSERT INTO `sys_logininfor` VALUES (2745, 'cni23334337', '10.209.5.22', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-27 08:28:26');
INSERT INTO `sys_logininfor` VALUES (2746, 'cni230wa131', '10.209.6.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-27 08:35:24');
INSERT INTO `sys_logininfor` VALUES (2747, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-27 09:00:28');
INSERT INTO `sys_logininfor` VALUES (2748, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-27 09:58:34');
INSERT INTO `sys_logininfor` VALUES (2749, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-27 10:10:36');
INSERT INTO `sys_logininfor` VALUES (2750, 'cni23095899', '10.209.5.21', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-27 11:03:22');
INSERT INTO `sys_logininfor` VALUES (2751, 'cni230w9017', '10.209.6.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-27 11:07:11');
INSERT INTO `sys_logininfor` VALUES (2752, 'cni23481244', '10.209.5.13', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-27 11:12:44');
INSERT INTO `sys_logininfor` VALUES (2753, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-27 16:44:28');
INSERT INTO `sys_logininfor` VALUES (2754, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-28 09:01:38');
INSERT INTO `sys_logininfor` VALUES (2755, 'admin', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-12-28 10:44:08');
INSERT INTO `sys_logininfor` VALUES (2756, 'admin', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-12-28 10:44:26');
INSERT INTO `sys_logininfor` VALUES (2757, 'admin', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2024-12-28 10:44:33');
INSERT INTO `sys_logininfor` VALUES (2758, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-28 10:44:41');
INSERT INTO `sys_logininfor` VALUES (2759, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-28 16:22:31');
INSERT INTO `sys_logininfor` VALUES (2760, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-28 16:35:16');
INSERT INTO `sys_logininfor` VALUES (2761, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-28 16:55:21');
INSERT INTO `sys_logininfor` VALUES (2762, 'cni23471668', '10.209.5.18', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-30 08:22:24');
INSERT INTO `sys_logininfor` VALUES (2763, 'cni23011604', '10.209.5.8', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-30 09:18:13');
INSERT INTO `sys_logininfor` VALUES (2764, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-30 15:04:53');
INSERT INTO `sys_logininfor` VALUES (2765, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-30 15:04:55');
INSERT INTO `sys_logininfor` VALUES (2766, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-30 15:46:40');
INSERT INTO `sys_logininfor` VALUES (2767, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-30 15:46:45');
INSERT INTO `sys_logininfor` VALUES (2768, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2024-12-30 15:46:45');
INSERT INTO `sys_logininfor` VALUES (2769, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-12-30 16:03:56');
INSERT INTO `sys_logininfor` VALUES (2770, 'cni23298347', '10.209.7.124', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-30 16:05:57');
INSERT INTO `sys_logininfor` VALUES (2771, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-30 16:12:19');
INSERT INTO `sys_logininfor` VALUES (2772, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-12-30 16:16:25');
INSERT INTO `sys_logininfor` VALUES (2773, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-30 16:16:34');
INSERT INTO `sys_logininfor` VALUES (2774, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-12-30 16:18:09');
INSERT INTO `sys_logininfor` VALUES (2775, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-30 16:18:20');
INSERT INTO `sys_logininfor` VALUES (2776, 'cni23298347', '10.209.7.126', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-30 16:20:26');
INSERT INTO `sys_logininfor` VALUES (2777, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-30 17:13:02');
INSERT INTO `sys_logininfor` VALUES (2778, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-12-31 08:16:59');
INSERT INTO `sys_logininfor` VALUES (2779, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-31 08:17:04');
INSERT INTO `sys_logininfor` VALUES (2780, 'cni230wa115', '10.209.5.11', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-31 08:18:01');
INSERT INTO `sys_logininfor` VALUES (2781, 'cni23370601', '10.209.6.5', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-31 08:28:20');
INSERT INTO `sys_logininfor` VALUES (2782, 'cni23475754', '10.209.5.30', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2024-12-31 09:25:31');
INSERT INTO `sys_logininfor` VALUES (2783, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-12-31 09:28:59');
INSERT INTO `sys_logininfor` VALUES (2784, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2025-01-02 08:53:46');
INSERT INTO `sys_logininfor` VALUES (2785, 'cni230wa103', '10.209.5.6', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2025-01-02 08:54:12');
INSERT INTO `sys_logininfor` VALUES (2786, 'cni230w9037', '10.209.5.110', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2025-01-02 08:56:57');
INSERT INTO `sys_logininfor` VALUES (2787, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2025-01-02 09:06:21');
INSERT INTO `sys_logininfor` VALUES (2788, 'cni23011880', '10.209.5.249', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2025-01-02 09:12:32');
INSERT INTO `sys_logininfor` VALUES (2789, 'cni23474878', '10.209.6.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2025-01-02 10:12:25');
INSERT INTO `sys_logininfor` VALUES (2790, 'cni230w9037', '10.209.5.110', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2025-01-02 13:42:23');
INSERT INTO `sys_logininfor` VALUES (2791, 'cni230w9037', '10.209.5.110', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2025-01-02 13:44:55');
INSERT INTO `sys_logininfor` VALUES (2792, 'cni230w9037', '10.209.5.110', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2025-01-02 13:48:27');
INSERT INTO `sys_logininfor` VALUES (2793, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2025-01-02 14:10:30');
INSERT INTO `sys_logininfor` VALUES (2794, 'cni23470193', '10.209.5.7', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2025-01-02 14:55:11');
INSERT INTO `sys_logininfor` VALUES (2795, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2025-01-02 16:57:51');
INSERT INTO `sys_logininfor` VALUES (2796, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2025-01-03 09:30:32');
INSERT INTO `sys_logininfor` VALUES (2797, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2025-01-03 10:01:28');
INSERT INTO `sys_logininfor` VALUES (2798, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2025-01-03 15:15:35');
INSERT INTO `sys_logininfor` VALUES (2799, 'cni23478532', '10.209.5.14', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2025-01-03 16:08:05');
INSERT INTO `sys_logininfor` VALUES (2800, 'cni23427541', '10.209.5.16', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2025-01-03 16:09:06');
INSERT INTO `sys_logininfor` VALUES (2801, 'cni230W9037', '10.209.6.103', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2025-01-03 16:44:15');
INSERT INTO `sys_logininfor` VALUES (2802, 'cni23015308', '10.209.6.10', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2025-01-03 17:30:00');
INSERT INTO `sys_logininfor` VALUES (2803, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-04 15:56:50');
INSERT INTO `sys_logininfor` VALUES (2804, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-04 15:57:49');
INSERT INTO `sys_logininfor` VALUES (2805, 'cni23095899', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-04 15:58:06');
INSERT INTO `sys_logininfor` VALUES (2806, 'cni23095899', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-04 15:58:27');
INSERT INTO `sys_logininfor` VALUES (2807, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-04 15:58:34');
INSERT INTO `sys_logininfor` VALUES (2808, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-04 16:47:15');
INSERT INTO `sys_logininfor` VALUES (2809, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2025-01-06 08:49:06');
INSERT INTO `sys_logininfor` VALUES (2810, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-06 08:49:09');
INSERT INTO `sys_logininfor` VALUES (2811, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-06 09:33:01');
INSERT INTO `sys_logininfor` VALUES (2812, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-06 09:33:08');
INSERT INTO `sys_logininfor` VALUES (2813, 'cni23010466', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-06 10:03:59');
INSERT INTO `sys_logininfor` VALUES (2814, 'cni23010466', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-01-06 10:04:02');
INSERT INTO `sys_logininfor` VALUES (2815, 'cni23010466', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-01-06 10:04:04');
INSERT INTO `sys_logininfor` VALUES (2816, 'cni23010466', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-06 10:04:07');
INSERT INTO `sys_logininfor` VALUES (2817, 'cni23010466', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-06 10:04:09');
INSERT INTO `sys_logininfor` VALUES (2818, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-01-06 10:04:11');
INSERT INTO `sys_logininfor` VALUES (2819, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-06 10:04:13');
INSERT INTO `sys_logininfor` VALUES (2820, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-06 10:04:18');
INSERT INTO `sys_logininfor` VALUES (2821, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-06 10:09:31');
INSERT INTO `sys_logininfor` VALUES (2822, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-06 10:09:36');
INSERT INTO `sys_logininfor` VALUES (2823, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-06 10:09:46');
INSERT INTO `sys_logininfor` VALUES (2824, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-06 10:09:50');
INSERT INTO `sys_logininfor` VALUES (2825, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-06 10:09:52');
INSERT INTO `sys_logininfor` VALUES (2826, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-06 10:09:58');
INSERT INTO `sys_logininfor` VALUES (2827, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-06 10:10:21');
INSERT INTO `sys_logininfor` VALUES (2828, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-06 10:10:28');
INSERT INTO `sys_logininfor` VALUES (2829, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-06 10:10:47');
INSERT INTO `sys_logininfor` VALUES (2830, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-06 10:10:52');
INSERT INTO `sys_logininfor` VALUES (2831, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-06 10:11:31');
INSERT INTO `sys_logininfor` VALUES (2832, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-06 10:11:38');
INSERT INTO `sys_logininfor` VALUES (2833, 'cni23320209', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-06 16:36:22');
INSERT INTO `sys_logininfor` VALUES (2834, 'cni23320209', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-06 16:36:58');
INSERT INTO `sys_logininfor` VALUES (2835, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2025-01-06 16:45:48');
INSERT INTO `sys_logininfor` VALUES (2836, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-06 16:45:52');
INSERT INTO `sys_logininfor` VALUES (2837, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 09:05:29');
INSERT INTO `sys_logininfor` VALUES (2838, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 14:03:55');
INSERT INTO `sys_logininfor` VALUES (2839, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:08:27');
INSERT INTO `sys_logininfor` VALUES (2840, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:10:30');
INSERT INTO `sys_logininfor` VALUES (2841, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:10:35');
INSERT INTO `sys_logininfor` VALUES (2842, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:10:57');
INSERT INTO `sys_logininfor` VALUES (2843, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-07 15:11:01');
INSERT INTO `sys_logininfor` VALUES (2844, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-07 15:11:04');
INSERT INTO `sys_logininfor` VALUES (2845, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:11:07');
INSERT INTO `sys_logininfor` VALUES (2846, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:12:28');
INSERT INTO `sys_logininfor` VALUES (2847, 'cni230wa060', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:12:40');
INSERT INTO `sys_logininfor` VALUES (2848, 'cni230wa060', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:13:00');
INSERT INTO `sys_logininfor` VALUES (2849, 'cni23011880', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-07 15:13:08');
INSERT INTO `sys_logininfor` VALUES (2850, 'cni23011880', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:13:35');
INSERT INTO `sys_logininfor` VALUES (2851, 'cni23011880', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:14:36');
INSERT INTO `sys_logininfor` VALUES (2852, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:14:46');
INSERT INTO `sys_logininfor` VALUES (2853, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:15:49');
INSERT INTO `sys_logininfor` VALUES (2854, 'cni230wa060', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:15:57');
INSERT INTO `sys_logininfor` VALUES (2855, 'cni230wa060', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:16:46');
INSERT INTO `sys_logininfor` VALUES (2856, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:16:54');
INSERT INTO `sys_logininfor` VALUES (2857, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:18:08');
INSERT INTO `sys_logininfor` VALUES (2858, 'cni23011880', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:18:15');
INSERT INTO `sys_logininfor` VALUES (2859, 'cni23011880', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:50:39');
INSERT INTO `sys_logininfor` VALUES (2860, 'cni23011880', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:50:50');
INSERT INTO `sys_logininfor` VALUES (2861, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:50:55');
INSERT INTO `sys_logininfor` VALUES (2862, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 15:56:21');
INSERT INTO `sys_logininfor` VALUES (2863, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 15:56:27');
INSERT INTO `sys_logininfor` VALUES (2864, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 16:09:52');
INSERT INTO `sys_logininfor` VALUES (2865, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 16:37:29');
INSERT INTO `sys_logininfor` VALUES (2866, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-01-07 16:37:38');
INSERT INTO `sys_logininfor` VALUES (2867, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 16:37:41');
INSERT INTO `sys_logininfor` VALUES (2868, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 16:40:10');
INSERT INTO `sys_logininfor` VALUES (2869, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 16:40:16');
INSERT INTO `sys_logininfor` VALUES (2870, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 16:45:50');
INSERT INTO `sys_logininfor` VALUES (2871, 'cni23011880', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 16:45:57');
INSERT INTO `sys_logininfor` VALUES (2872, 'cni23011880', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 16:52:24');
INSERT INTO `sys_logininfor` VALUES (2873, 'cni230wa060', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 16:52:32');
INSERT INTO `sys_logininfor` VALUES (2874, 'cni230wa060', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 16:54:34');
INSERT INTO `sys_logininfor` VALUES (2875, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 16:54:39');
INSERT INTO `sys_logininfor` VALUES (2876, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 16:55:26');
INSERT INTO `sys_logininfor` VALUES (2877, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 16:55:37');
INSERT INTO `sys_logininfor` VALUES (2878, 'cni23085322', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-07 17:01:51');
INSERT INTO `sys_logininfor` VALUES (2879, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 17:01:57');
INSERT INTO `sys_logininfor` VALUES (2880, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 17:27:09');
INSERT INTO `sys_logininfor` VALUES (2881, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-07 18:54:34');
INSERT INTO `sys_logininfor` VALUES (2882, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-07 18:54:40');
INSERT INTO `sys_logininfor` VALUES (2883, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-08 09:09:18');
INSERT INTO `sys_logininfor` VALUES (2884, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-08 10:29:16');
INSERT INTO `sys_logininfor` VALUES (2885, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-08 10:29:21');
INSERT INTO `sys_logininfor` VALUES (2886, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-08 10:41:48');
INSERT INTO `sys_logininfor` VALUES (2887, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-08 10:41:54');
INSERT INTO `sys_logininfor` VALUES (2888, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-08 10:42:04');
INSERT INTO `sys_logininfor` VALUES (2889, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-08 11:58:29');
INSERT INTO `sys_logininfor` VALUES (2890, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-08 14:04:23');
INSERT INTO `sys_logininfor` VALUES (2891, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-08 14:04:27');
INSERT INTO `sys_logininfor` VALUES (2892, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-08 14:05:32');
INSERT INTO `sys_logininfor` VALUES (2893, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-01-08 14:05:35');
INSERT INTO `sys_logininfor` VALUES (2894, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-08 14:05:39');
INSERT INTO `sys_logininfor` VALUES (2895, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-09 09:13:57');
INSERT INTO `sys_logininfor` VALUES (2896, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-09 11:00:43');
INSERT INTO `sys_logininfor` VALUES (2897, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-09 11:20:37');
INSERT INTO `sys_logininfor` VALUES (2898, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-09 11:20:41');
INSERT INTO `sys_logininfor` VALUES (2899, 'cni23015308', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-01-09 11:23:19');
INSERT INTO `sys_logininfor` VALUES (2900, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-01-09 11:23:23');
INSERT INTO `sys_logininfor` VALUES (2901, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-09 11:23:31');
INSERT INTO `sys_logininfor` VALUES (2902, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-09 14:03:24');
INSERT INTO `sys_logininfor` VALUES (2903, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-01-10 09:39:44');
INSERT INTO `sys_logininfor` VALUES (2904, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-10 09:39:49');
INSERT INTO `sys_logininfor` VALUES (2905, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-01-10 11:39:32');
INSERT INTO `sys_logininfor` VALUES (2906, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-25 11:18:46');
INSERT INTO `sys_logininfor` VALUES (2907, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-25 11:18:51');
INSERT INTO `sys_logininfor` VALUES (2908, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-25 11:18:57');
INSERT INTO `sys_logininfor` VALUES (2909, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-27 11:18:20');
INSERT INTO `sys_logininfor` VALUES (2910, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-27 11:18:26');
INSERT INTO `sys_logininfor` VALUES (2911, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-27 14:12:27');
INSERT INTO `sys_logininfor` VALUES (2912, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-27 14:12:32');
INSERT INTO `sys_logininfor` VALUES (2913, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-27 14:12:40');
INSERT INTO `sys_logininfor` VALUES (2914, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-27 14:49:59');
INSERT INTO `sys_logininfor` VALUES (2915, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-27 14:50:10');
INSERT INTO `sys_logininfor` VALUES (2916, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-27 14:50:40');
INSERT INTO `sys_logininfor` VALUES (2917, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-27 14:50:43');
INSERT INTO `sys_logininfor` VALUES (2918, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-03-27 14:50:46');
INSERT INTO `sys_logininfor` VALUES (2919, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-27 14:50:49');
INSERT INTO `sys_logininfor` VALUES (2920, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-27 17:40:24');
INSERT INTO `sys_logininfor` VALUES (2921, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-27 19:18:44');
INSERT INTO `sys_logininfor` VALUES (2922, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-27 21:30:46');
INSERT INTO `sys_logininfor` VALUES (2923, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-27 21:30:49');
INSERT INTO `sys_logininfor` VALUES (2924, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-27 21:30:54');
INSERT INTO `sys_logininfor` VALUES (2925, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-28 08:43:24');
INSERT INTO `sys_logininfor` VALUES (2926, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 08:43:30');
INSERT INTO `sys_logininfor` VALUES (2927, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-03-28 14:15:35');
INSERT INTO `sys_logininfor` VALUES (2928, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-03-28 14:15:37');
INSERT INTO `sys_logininfor` VALUES (2929, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-03-28 14:15:41');
INSERT INTO `sys_logininfor` VALUES (2930, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 14:15:44');
INSERT INTO `sys_logininfor` VALUES (2931, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 15:36:56');
INSERT INTO `sys_logininfor` VALUES (2932, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 17:39:50');
INSERT INTO `sys_logininfor` VALUES (2933, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 17:39:58');
INSERT INTO `sys_logininfor` VALUES (2934, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 17:40:02');
INSERT INTO `sys_logininfor` VALUES (2935, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 17:40:07');
INSERT INTO `sys_logininfor` VALUES (2936, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 17:42:27');
INSERT INTO `sys_logininfor` VALUES (2937, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 17:42:35');
INSERT INTO `sys_logininfor` VALUES (2938, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 17:55:10');
INSERT INTO `sys_logininfor` VALUES (2939, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 17:55:15');
INSERT INTO `sys_logininfor` VALUES (2940, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 17:55:24');
INSERT INTO `sys_logininfor` VALUES (2941, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 17:55:30');
INSERT INTO `sys_logininfor` VALUES (2942, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 17:56:13');
INSERT INTO `sys_logininfor` VALUES (2943, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 17:56:19');
INSERT INTO `sys_logininfor` VALUES (2944, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 17:57:28');
INSERT INTO `sys_logininfor` VALUES (2945, 'x2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 17:57:35');
INSERT INTO `sys_logininfor` VALUES (2946, 'x2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 17:57:50');
INSERT INTO `sys_logininfor` VALUES (2947, 'x3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 17:58:00');
INSERT INTO `sys_logininfor` VALUES (2948, 'x3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 17:58:12');
INSERT INTO `sys_logininfor` VALUES (2949, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 17:58:17');
INSERT INTO `sys_logininfor` VALUES (2950, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:00:06');
INSERT INTO `sys_logininfor` VALUES (2951, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:00:13');
INSERT INTO `sys_logininfor` VALUES (2952, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:00:56');
INSERT INTO `sys_logininfor` VALUES (2953, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:01:01');
INSERT INTO `sys_logininfor` VALUES (2954, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:01:13');
INSERT INTO `sys_logininfor` VALUES (2955, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:01:20');
INSERT INTO `sys_logininfor` VALUES (2956, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:01:29');
INSERT INTO `sys_logininfor` VALUES (2957, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:01:35');
INSERT INTO `sys_logininfor` VALUES (2958, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:01:43');
INSERT INTO `sys_logininfor` VALUES (2959, 'x2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:01:49');
INSERT INTO `sys_logininfor` VALUES (2960, 'x2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:02:30');
INSERT INTO `sys_logininfor` VALUES (2961, 'x3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:02:36');
INSERT INTO `sys_logininfor` VALUES (2962, 'x3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:12:33');
INSERT INTO `sys_logininfor` VALUES (2963, 'x3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:12:40');
INSERT INTO `sys_logininfor` VALUES (2964, 'x3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:12:48');
INSERT INTO `sys_logininfor` VALUES (2965, 'x2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:12:53');
INSERT INTO `sys_logininfor` VALUES (2966, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:56:22');
INSERT INTO `sys_logininfor` VALUES (2967, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:56:37');
INSERT INTO `sys_logininfor` VALUES (2968, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:56:42');
INSERT INTO `sys_logininfor` VALUES (2969, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 18:56:53');
INSERT INTO `sys_logininfor` VALUES (2970, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 18:57:00');
INSERT INTO `sys_logininfor` VALUES (2971, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-03-28 19:27:58');
INSERT INTO `sys_logininfor` VALUES (2972, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 19:28:00');
INSERT INTO `sys_logininfor` VALUES (2973, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 19:41:19');
INSERT INTO `sys_logininfor` VALUES (2974, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 20:29:34');
INSERT INTO `sys_logininfor` VALUES (2975, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 20:30:14');
INSERT INTO `sys_logininfor` VALUES (2976, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 20:30:21');
INSERT INTO `sys_logininfor` VALUES (2977, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 20:30:30');
INSERT INTO `sys_logininfor` VALUES (2978, 'x2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 20:30:37');
INSERT INTO `sys_logininfor` VALUES (2979, 'x2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 20:30:49');
INSERT INTO `sys_logininfor` VALUES (2980, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 20:31:41');
INSERT INTO `sys_logininfor` VALUES (2981, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 20:32:17');
INSERT INTO `sys_logininfor` VALUES (2982, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-28 20:32:25');
INSERT INTO `sys_logininfor` VALUES (2983, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-28 20:32:34');
INSERT INTO `sys_logininfor` VALUES (2984, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 09:55:28');
INSERT INTO `sys_logininfor` VALUES (2985, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 09:55:31');
INSERT INTO `sys_logininfor` VALUES (2986, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 09:55:44');
INSERT INTO `sys_logininfor` VALUES (2987, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 09:55:50');
INSERT INTO `sys_logininfor` VALUES (2988, 't2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2025-03-29 10:04:22');
INSERT INTO `sys_logininfor` VALUES (2989, 't2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 10:04:30');
INSERT INTO `sys_logininfor` VALUES (2990, 't2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 10:05:01');
INSERT INTO `sys_logininfor` VALUES (2991, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 10:05:10');
INSERT INTO `sys_logininfor` VALUES (2992, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 10:08:55');
INSERT INTO `sys_logininfor` VALUES (2993, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 10:09:59');
INSERT INTO `sys_logininfor` VALUES (2994, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 10:15:25');
INSERT INTO `sys_logininfor` VALUES (2995, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 10:15:32');
INSERT INTO `sys_logininfor` VALUES (2996, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 10:15:38');
INSERT INTO `sys_logininfor` VALUES (2997, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 10:15:44');
INSERT INTO `sys_logininfor` VALUES (2998, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 10:16:18');
INSERT INTO `sys_logininfor` VALUES (2999, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 10:16:24');
INSERT INTO `sys_logininfor` VALUES (3000, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 10:40:03');
INSERT INTO `sys_logininfor` VALUES (3001, 'x4', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2025-03-29 10:47:16');
INSERT INTO `sys_logininfor` VALUES (3002, 'x4', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 10:47:24');
INSERT INTO `sys_logininfor` VALUES (3003, 'x4', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 10:47:57');
INSERT INTO `sys_logininfor` VALUES (3004, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2025-03-29 10:52:10');
INSERT INTO `sys_logininfor` VALUES (3005, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-03-29 10:52:13');
INSERT INTO `sys_logininfor` VALUES (3006, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 10:52:22');
INSERT INTO `sys_logininfor` VALUES (3007, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 15:30:40');
INSERT INTO `sys_logininfor` VALUES (3008, 't1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-29 17:29:36');
INSERT INTO `sys_logininfor` VALUES (3009, 'x1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 17:29:41');
INSERT INTO `sys_logininfor` VALUES (3010, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2025-03-29 18:49:00');
INSERT INTO `sys_logininfor` VALUES (3011, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-29 18:49:03');
INSERT INTO `sys_logininfor` VALUES (3012, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2025-03-30 11:06:45');
INSERT INTO `sys_logininfor` VALUES (3013, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-30 11:06:47');
INSERT INTO `sys_logininfor` VALUES (3014, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-30 12:22:45');
INSERT INTO `sys_logininfor` VALUES (3015, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-30 12:22:51');
INSERT INTO `sys_logininfor` VALUES (3016, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-30 12:24:06');
INSERT INTO `sys_logininfor` VALUES (3017, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-30 12:24:18');
INSERT INTO `sys_logininfor` VALUES (3018, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-30 13:22:56');
INSERT INTO `sys_logininfor` VALUES (3019, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-30 14:57:48');
INSERT INTO `sys_logininfor` VALUES (3020, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2025-03-30 15:32:24');
INSERT INTO `sys_logininfor` VALUES (3021, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-30 15:32:27');
INSERT INTO `sys_logininfor` VALUES (3022, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-30 17:05:18');
INSERT INTO `sys_logininfor` VALUES (3023, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-30 21:01:18');
INSERT INTO `sys_logininfor` VALUES (3024, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2025-03-31 11:20:15');
INSERT INTO `sys_logininfor` VALUES (3025, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 11:20:17');
INSERT INTO `sys_logininfor` VALUES (3026, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-31 11:22:06');
INSERT INTO `sys_logininfor` VALUES (3027, 'user12', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2025-03-31 11:40:18');
INSERT INTO `sys_logininfor` VALUES (3028, 'uasr11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-31 11:40:28');
INSERT INTO `sys_logininfor` VALUES (3029, 'uasr11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-31 11:40:35');
INSERT INTO `sys_logininfor` VALUES (3030, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 11:40:52');
INSERT INTO `sys_logininfor` VALUES (3031, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-31 11:40:55');
INSERT INTO `sys_logininfor` VALUES (3032, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 11:41:00');
INSERT INTO `sys_logininfor` VALUES (3033, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-31 11:41:26');
INSERT INTO `sys_logininfor` VALUES (3034, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 11:47:06');
INSERT INTO `sys_logininfor` VALUES (3035, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-31 11:47:09');
INSERT INTO `sys_logininfor` VALUES (3036, 'user12', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2025-03-31 11:47:28');
INSERT INTO `sys_logininfor` VALUES (3037, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 11:47:34');
INSERT INTO `sys_logininfor` VALUES (3038, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-31 11:48:48');
INSERT INTO `sys_logininfor` VALUES (3039, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 11:48:54');
INSERT INTO `sys_logininfor` VALUES (3040, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-31 11:49:13');
INSERT INTO `sys_logininfor` VALUES (3041, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 11:49:19');
INSERT INTO `sys_logininfor` VALUES (3042, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-31 11:53:06');
INSERT INTO `sys_logininfor` VALUES (3043, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-03-31 11:53:14');
INSERT INTO `sys_logininfor` VALUES (3044, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-03-31 11:53:17');
INSERT INTO `sys_logininfor` VALUES (3045, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 11:53:19');
INSERT INTO `sys_logininfor` VALUES (3046, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-03-31 11:53:28');
INSERT INTO `sys_logininfor` VALUES (3047, 'user12', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2025-03-31 11:53:41');
INSERT INTO `sys_logininfor` VALUES (3048, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 11:53:47');
INSERT INTO `sys_logininfor` VALUES (3049, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 16:30:41');
INSERT INTO `sys_logininfor` VALUES (3050, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-03-31 17:28:28');
INSERT INTO `sys_logininfor` VALUES (3051, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 17:28:30');
INSERT INTO `sys_logininfor` VALUES (3052, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 18:15:44');
INSERT INTO `sys_logininfor` VALUES (3053, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-03-31 21:01:25');
INSERT INTO `sys_logininfor` VALUES (3054, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 08:46:18');
INSERT INTO `sys_logininfor` VALUES (3055, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 11:49:24');
INSERT INTO `sys_logininfor` VALUES (3056, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 11:50:08');
INSERT INTO `sys_logininfor` VALUES (3057, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 11:50:13');
INSERT INTO `sys_logininfor` VALUES (3058, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 12:32:54');
INSERT INTO `sys_logininfor` VALUES (3059, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2025-04-01 14:16:16');
INSERT INTO `sys_logininfor` VALUES (3060, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-04-01 14:16:19');
INSERT INTO `sys_logininfor` VALUES (3061, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:16:21');
INSERT INTO `sys_logininfor` VALUES (3062, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 14:17:34');
INSERT INTO `sys_logininfor` VALUES (3063, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:17:41');
INSERT INTO `sys_logininfor` VALUES (3064, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 14:18:31');
INSERT INTO `sys_logininfor` VALUES (3065, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:18:35');
INSERT INTO `sys_logininfor` VALUES (3066, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 14:24:51');
INSERT INTO `sys_logininfor` VALUES (3067, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-04-01 14:26:29');
INSERT INTO `sys_logininfor` VALUES (3068, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:26:39');
INSERT INTO `sys_logininfor` VALUES (3069, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 14:28:25');
INSERT INTO `sys_logininfor` VALUES (3070, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:28:38');
INSERT INTO `sys_logininfor` VALUES (3071, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 14:47:47');
INSERT INTO `sys_logininfor` VALUES (3072, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:47:51');
INSERT INTO `sys_logininfor` VALUES (3073, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 14:48:06');
INSERT INTO `sys_logininfor` VALUES (3074, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:48:12');
INSERT INTO `sys_logininfor` VALUES (3075, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 14:48:34');
INSERT INTO `sys_logininfor` VALUES (3076, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:48:39');
INSERT INTO `sys_logininfor` VALUES (3077, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 14:49:02');
INSERT INTO `sys_logininfor` VALUES (3078, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-04-01 14:49:11');
INSERT INTO `sys_logininfor` VALUES (3079, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:49:19');
INSERT INTO `sys_logininfor` VALUES (3080, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 14:49:46');
INSERT INTO `sys_logininfor` VALUES (3081, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:49:57');
INSERT INTO `sys_logininfor` VALUES (3082, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 14:53:12');
INSERT INTO `sys_logininfor` VALUES (3083, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 15:11:17');
INSERT INTO `sys_logininfor` VALUES (3084, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 15:11:21');
INSERT INTO `sys_logininfor` VALUES (3085, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 15:12:09');
INSERT INTO `sys_logininfor` VALUES (3086, 'guanli1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 15:12:15');
INSERT INTO `sys_logininfor` VALUES (3087, 'guanli1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 15:12:23');
INSERT INTO `sys_logininfor` VALUES (3088, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-04-01 15:13:00');
INSERT INTO `sys_logininfor` VALUES (3089, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 15:13:03');
INSERT INTO `sys_logininfor` VALUES (3090, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 15:13:37');
INSERT INTO `sys_logininfor` VALUES (3091, 'guanli1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 16:25:31');
INSERT INTO `sys_logininfor` VALUES (3092, 'guanli1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 16:29:25');
INSERT INTO `sys_logininfor` VALUES (3093, 'gaunli1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-04-01 16:51:15');
INSERT INTO `sys_logininfor` VALUES (3094, 'guanli1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-04-01 16:51:27');
INSERT INTO `sys_logininfor` VALUES (3095, 'guanli1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 16:51:31');
INSERT INTO `sys_logininfor` VALUES (3096, 'guanli1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 16:52:08');
INSERT INTO `sys_logininfor` VALUES (3097, 'user8', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2025-04-01 16:52:15');
INSERT INTO `sys_logininfor` VALUES (3098, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 16:52:24');
INSERT INTO `sys_logininfor` VALUES (3099, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2025-04-01 16:53:09');
INSERT INTO `sys_logininfor` VALUES (3100, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-04-01 16:53:09');
INSERT INTO `sys_logininfor` VALUES (3101, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 16:53:13');
INSERT INTO `sys_logininfor` VALUES (3102, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 16:53:52');
INSERT INTO `sys_logininfor` VALUES (3103, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 16:53:57');
INSERT INTO `sys_logininfor` VALUES (3104, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 16:54:16');
INSERT INTO `sys_logininfor` VALUES (3105, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 16:54:23');
INSERT INTO `sys_logininfor` VALUES (3106, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 16:54:46');
INSERT INTO `sys_logininfor` VALUES (3107, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 16:54:52');
INSERT INTO `sys_logininfor` VALUES (3108, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-01 16:55:28');
INSERT INTO `sys_logininfor` VALUES (3109, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-01 16:55:33');
INSERT INTO `sys_logininfor` VALUES (3110, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-09 17:03:43');
INSERT INTO `sys_logininfor` VALUES (3111, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-09 17:03:52');
INSERT INTO `sys_logininfor` VALUES (3112, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-09 17:05:56');
INSERT INTO `sys_logininfor` VALUES (3113, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-09 19:04:24');
INSERT INTO `sys_logininfor` VALUES (3114, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 09:20:26');
INSERT INTO `sys_logininfor` VALUES (3115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 12:23:53');
INSERT INTO `sys_logininfor` VALUES (3116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 14:05:46');
INSERT INTO `sys_logininfor` VALUES (3117, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 14:49:39');
INSERT INTO `sys_logininfor` VALUES (3118, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 15:27:06');
INSERT INTO `sys_logininfor` VALUES (3119, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 15:27:12');
INSERT INTO `sys_logininfor` VALUES (3120, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 15:39:46');
INSERT INTO `sys_logininfor` VALUES (3121, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 15:40:39');
INSERT INTO `sys_logininfor` VALUES (3122, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 15:41:57');
INSERT INTO `sys_logininfor` VALUES (3123, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 15:42:03');
INSERT INTO `sys_logininfor` VALUES (3124, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 15:46:17');
INSERT INTO `sys_logininfor` VALUES (3125, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 15:46:21');
INSERT INTO `sys_logininfor` VALUES (3126, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 15:46:57');
INSERT INTO `sys_logininfor` VALUES (3127, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 15:47:02');
INSERT INTO `sys_logininfor` VALUES (3128, 'user1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 15:58:00');
INSERT INTO `sys_logininfor` VALUES (3129, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 15:58:07');
INSERT INTO `sys_logininfor` VALUES (3130, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 15:58:41');
INSERT INTO `sys_logininfor` VALUES (3131, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2025-04-10 15:58:45');
INSERT INTO `sys_logininfor` VALUES (3132, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 15:58:47');
INSERT INTO `sys_logininfor` VALUES (3133, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 15:59:15');
INSERT INTO `sys_logininfor` VALUES (3134, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 15:59:20');
INSERT INTO `sys_logininfor` VALUES (3135, 'user11', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 16:02:19');
INSERT INTO `sys_logininfor` VALUES (3136, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 16:02:26');
INSERT INTO `sys_logininfor` VALUES (3137, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 17:30:46');
INSERT INTO `sys_logininfor` VALUES (3138, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-04-10 20:42:18');
INSERT INTO `sys_logininfor` VALUES (3139, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2025-04-10 20:42:21');
INSERT INTO `sys_logininfor` VALUES (3140, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-04-10 20:42:26');
INSERT INTO `sys_logininfor` VALUES (3141, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-04-10 20:54:19');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2184 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-08-22 15:26:06', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-08-22 15:26:07', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-08-22 15:26:07', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-08-22 15:26:08', 'admin', '2025-03-31 17:34:54', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-08-22 15:26:08', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-08-22 15:26:09', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '科室管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-08-22 15:26:09', 'admin', '2025-04-10 15:07:57', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-08-22 15:26:10', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-08-22 15:26:10', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-08-22 15:26:11', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-08-22 15:26:11', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-08-22 15:26:11', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-08-22 15:26:12', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-08-22 15:26:13', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-08-22 15:26:13', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-08-22 15:26:14', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-08-22 15:26:14', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-08-22 15:26:15', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-08-22 15:26:15', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-08-22 15:26:16', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-08-22 15:26:16', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-08-22 15:26:17', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-08-22 15:26:17', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-08-22 15:26:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-08-22 15:26:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-08-22 15:26:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-08-22 15:26:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-08-22 15:26:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-08-22 15:26:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-08-22 15:26:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-08-22 15:26:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-08-22 15:26:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-08-22 15:26:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-08-22 15:26:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-08-22 15:26:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-08-22 15:26:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-08-22 15:26:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-08-22 15:26:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-08-22 15:26:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-08-22 15:26:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-08-22 15:26:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-08-22 15:26:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-08-22 15:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-08-22 15:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-08-22 15:26:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-08-22 15:26:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-08-22 15:26:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-08-22 15:26:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-08-22 15:26:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-08-22 15:26:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-08-22 15:26:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-08-22 15:26:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-08-22 15:26:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-08-22 15:26:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-08-22 15:26:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-08-22 15:26:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-08-22 15:26:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-08-22 15:26:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-08-22 15:26:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-08-22 15:26:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-08-22 15:26:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-08-22 15:26:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-08-22 15:26:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-08-22 15:26:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-08-22 15:26:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-08-22 15:26:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-08-22 15:26:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-08-22 15:26:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-08-22 15:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-08-22 15:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-08-22 15:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-08-22 15:26:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-08-22 15:26:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-08-22 15:26:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-08-22 15:26:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-08-22 15:26:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-08-22 15:26:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-08-22 15:26:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-08-22 15:26:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-08-22 15:26:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-08-22 15:26:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-08-22 15:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-08-22 15:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-08-22 15:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2141, '住院管理', 0, 0, 'zhuYuan', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, 'date-range', 'admin', '2025-04-09 17:40:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2142, '药物管理', 0, 0, 'yaoWu', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, 'table', 'admin', '2025-04-09 17:41:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2143, '就诊管理', 0, 1, 'jiuZhen', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, 'search', 'admin', '2025-04-09 17:41:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2150, '库存药品', 2142, 1, 'hospitalInventory', 'hospital/hospitalInventory/index', NULL, '', 1, 0, 'C', '0', '0', 'hospital:hospitalInventory:list', '#', 'admin', '2025-04-09 19:10:01', '', NULL, '库存药品菜单');
INSERT INTO `sys_menu` VALUES (2151, '库存药品查询', 2150, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInventory:query', '#', 'admin', '2025-04-09 19:10:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2152, '库存药品新增', 2150, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInventory:add', '#', 'admin', '2025-04-09 19:10:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2153, '库存药品修改', 2150, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInventory:edit', '#', 'admin', '2025-04-09 19:10:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2154, '库存药品删除', 2150, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInventory:remove', '#', 'admin', '2025-04-09 19:10:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2155, '库存药品导出', 2150, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInventory:export', '#', 'admin', '2025-04-09 19:10:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2156, '药方管理', 2142, 1, 'hospitalManagement', 'hospital/hospitalManagement/index', NULL, '', 1, 0, 'C', '0', '0', 'hospital:hospitalManagement:list', '#', 'admin', '2025-04-09 19:10:05', '', NULL, '药方管理菜单');
INSERT INTO `sys_menu` VALUES (2157, '药方管理查询', 2156, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalManagement:query', '#', 'admin', '2025-04-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2158, '药方管理新增', 2156, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalManagement:add', '#', 'admin', '2025-04-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2159, '药方管理修改', 2156, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalManagement:edit', '#', 'admin', '2025-04-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2160, '药方管理删除', 2156, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalManagement:remove', '#', 'admin', '2025-04-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2161, '药方管理导出', 2156, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalManagement:export', '#', 'admin', '2025-04-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2168, '护理日志', 2141, 1, 'hospitalRecord', 'hospital/hospitalRecord/index', NULL, '', 1, 0, 'C', '0', '0', 'hospital:hospitalRecord:list', '#', 'admin', '2025-04-09 19:17:24', '', NULL, '护理日志菜单');
INSERT INTO `sys_menu` VALUES (2169, '护理日志查询', 2168, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalRecord:query', '#', 'admin', '2025-04-09 19:17:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2170, '护理日志新增', 2168, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalRecord:add', '#', 'admin', '2025-04-09 19:17:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2171, '护理日志修改', 2168, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalRecord:edit', '#', 'admin', '2025-04-09 19:17:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2172, '护理日志删除', 2168, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalRecord:remove', '#', 'admin', '2025-04-09 19:17:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2173, '护理日志导出', 2168, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalRecord:export', '#', 'admin', '2025-04-09 19:17:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2174, '就诊信息', 2143, 1, 'hospitalInfo', 'hospital/hospitalInfo/index', NULL, '', 1, 0, 'C', '0', '0', 'hospital:hospitalInfo:list', '#', 'admin', '2025-04-09 20:22:35', '', NULL, '就诊信息菜单');
INSERT INTO `sys_menu` VALUES (2175, '就诊信息查询', 2174, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInfo:query', '#', 'admin', '2025-04-09 20:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2176, '就诊信息新增', 2174, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInfo:add', '#', 'admin', '2025-04-09 20:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2177, '就诊信息修改', 2174, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInfo:edit', '#', 'admin', '2025-04-09 20:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2178, '就诊信息删除', 2174, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInfo:remove', '#', 'admin', '2025-04-09 20:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2179, '就诊信息导出', 2174, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInfo:export', '#', 'admin', '2025-04-09 20:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2180, '医生就诊', 2143, 1, 'diagnosis', 'hospital/diagnosis/index', NULL, '', 1, 0, 'C', '0', '0', 'hospital:hospitalInfo:list', '#', 'admin', '2025-04-09 20:35:13', 'admin', '2025-04-09 20:36:36', '');
INSERT INTO `sys_menu` VALUES (2181, '住院管理', 2141, 2, 'beHospitalized', 'hospital/beHospitalized/index', NULL, '', 1, 0, 'C', '0', '0', 'hospital:hospitalInfo:list', '#', 'admin', '2025-04-09 20:36:07', 'admin', '2025-04-10 12:24:17', '');
INSERT INTO `sys_menu` VALUES (2182, '添加护理记录', 2141, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalRecord:addALL', '#', 'admin', '2025-04-10 15:41:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2183, '取药按钮', 2142, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'hospital:hospitalInventory:editYao', '#', 'admin', '2025-04-10 15:46:46', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7057 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-08-22 15:26:04', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '护士', 'hushi', 2, '2', 1, 1, '0', '0', 'admin', '2024-08-22 15:26:04', 'admin', '2025-04-10 15:46:54', '普通角色');
INSERT INTO `sys_role` VALUES (108, '医生', 'yisheng', 0, '1', 1, 1, '0', '0', 'admin', '2025-03-28 17:31:32', 'admin', '2025-04-10 15:59:13', NULL);
INSERT INTO `sys_role` VALUES (109, '管理员', 'guanli', 0, '1', 1, 1, '0', '0', 'admin', '2025-04-01 11:46:19', 'admin', '2025-04-01 14:27:59', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2141);
INSERT INTO `sys_role_menu` VALUES (2, 2142);
INSERT INTO `sys_role_menu` VALUES (2, 2143);
INSERT INTO `sys_role_menu` VALUES (2, 2150);
INSERT INTO `sys_role_menu` VALUES (2, 2151);
INSERT INTO `sys_role_menu` VALUES (2, 2156);
INSERT INTO `sys_role_menu` VALUES (2, 2157);
INSERT INTO `sys_role_menu` VALUES (2, 2174);
INSERT INTO `sys_role_menu` VALUES (2, 2175);
INSERT INTO `sys_role_menu` VALUES (2, 2176);
INSERT INTO `sys_role_menu` VALUES (2, 2177);
INSERT INTO `sys_role_menu` VALUES (2, 2178);
INSERT INTO `sys_role_menu` VALUES (2, 2179);
INSERT INTO `sys_role_menu` VALUES (2, 2181);
INSERT INTO `sys_role_menu` VALUES (2, 2182);
INSERT INTO `sys_role_menu` VALUES (2, 2183);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);
INSERT INTO `sys_role_menu` VALUES (100, 2028);
INSERT INTO `sys_role_menu` VALUES (100, 2029);
INSERT INTO `sys_role_menu` VALUES (100, 2030);
INSERT INTO `sys_role_menu` VALUES (101, 1);
INSERT INTO `sys_role_menu` VALUES (101, 100);
INSERT INTO `sys_role_menu` VALUES (101, 1000);
INSERT INTO `sys_role_menu` VALUES (101, 1001);
INSERT INTO `sys_role_menu` VALUES (101, 1002);
INSERT INTO `sys_role_menu` VALUES (101, 1003);
INSERT INTO `sys_role_menu` VALUES (101, 1004);
INSERT INTO `sys_role_menu` VALUES (101, 1005);
INSERT INTO `sys_role_menu` VALUES (101, 1006);
INSERT INTO `sys_role_menu` VALUES (101, 2000);
INSERT INTO `sys_role_menu` VALUES (101, 2001);
INSERT INTO `sys_role_menu` VALUES (101, 2002);
INSERT INTO `sys_role_menu` VALUES (101, 2003);
INSERT INTO `sys_role_menu` VALUES (101, 2004);
INSERT INTO `sys_role_menu` VALUES (101, 2005);
INSERT INTO `sys_role_menu` VALUES (101, 2006);
INSERT INTO `sys_role_menu` VALUES (101, 2013);
INSERT INTO `sys_role_menu` VALUES (101, 2014);
INSERT INTO `sys_role_menu` VALUES (101, 2015);
INSERT INTO `sys_role_menu` VALUES (101, 2016);
INSERT INTO `sys_role_menu` VALUES (101, 2017);
INSERT INTO `sys_role_menu` VALUES (101, 2018);
INSERT INTO `sys_role_menu` VALUES (101, 2019);
INSERT INTO `sys_role_menu` VALUES (101, 2020);
INSERT INTO `sys_role_menu` VALUES (101, 2021);
INSERT INTO `sys_role_menu` VALUES (101, 2022);
INSERT INTO `sys_role_menu` VALUES (101, 2023);
INSERT INTO `sys_role_menu` VALUES (101, 2024);
INSERT INTO `sys_role_menu` VALUES (101, 2025);
INSERT INTO `sys_role_menu` VALUES (101, 2026);
INSERT INTO `sys_role_menu` VALUES (101, 2027);
INSERT INTO `sys_role_menu` VALUES (101, 2028);
INSERT INTO `sys_role_menu` VALUES (101, 2029);
INSERT INTO `sys_role_menu` VALUES (101, 2030);
INSERT INTO `sys_role_menu` VALUES (101, 2031);
INSERT INTO `sys_role_menu` VALUES (101, 2032);
INSERT INTO `sys_role_menu` VALUES (101, 2033);
INSERT INTO `sys_role_menu` VALUES (101, 2034);
INSERT INTO `sys_role_menu` VALUES (101, 2035);
INSERT INTO `sys_role_menu` VALUES (101, 2036);
INSERT INTO `sys_role_menu` VALUES (102, 2000);
INSERT INTO `sys_role_menu` VALUES (102, 2025);
INSERT INTO `sys_role_menu` VALUES (102, 2026);
INSERT INTO `sys_role_menu` VALUES (102, 2027);
INSERT INTO `sys_role_menu` VALUES (102, 2028);
INSERT INTO `sys_role_menu` VALUES (102, 2029);
INSERT INTO `sys_role_menu` VALUES (102, 2030);
INSERT INTO `sys_role_menu` VALUES (103, 2037);
INSERT INTO `sys_role_menu` VALUES (103, 2038);
INSERT INTO `sys_role_menu` VALUES (103, 2039);
INSERT INTO `sys_role_menu` VALUES (103, 2042);
INSERT INTO `sys_role_menu` VALUES (103, 2043);
INSERT INTO `sys_role_menu` VALUES (103, 2044);
INSERT INTO `sys_role_menu` VALUES (103, 2045);
INSERT INTO `sys_role_menu` VALUES (103, 2046);
INSERT INTO `sys_role_menu` VALUES (103, 2047);
INSERT INTO `sys_role_menu` VALUES (103, 2048);
INSERT INTO `sys_role_menu` VALUES (103, 2049);
INSERT INTO `sys_role_menu` VALUES (103, 2050);
INSERT INTO `sys_role_menu` VALUES (103, 2052);
INSERT INTO `sys_role_menu` VALUES (104, 2037);
INSERT INTO `sys_role_menu` VALUES (104, 2038);
INSERT INTO `sys_role_menu` VALUES (104, 2043);
INSERT INTO `sys_role_menu` VALUES (104, 2044);
INSERT INTO `sys_role_menu` VALUES (104, 2045);
INSERT INTO `sys_role_menu` VALUES (104, 2046);
INSERT INTO `sys_role_menu` VALUES (104, 2047);
INSERT INTO `sys_role_menu` VALUES (104, 2048);
INSERT INTO `sys_role_menu` VALUES (104, 2049);
INSERT INTO `sys_role_menu` VALUES (104, 2050);
INSERT INTO `sys_role_menu` VALUES (104, 2051);
INSERT INTO `sys_role_menu` VALUES (104, 2052);
INSERT INTO `sys_role_menu` VALUES (104, 2053);
INSERT INTO `sys_role_menu` VALUES (105, 2037);
INSERT INTO `sys_role_menu` VALUES (105, 2038);
INSERT INTO `sys_role_menu` VALUES (105, 2043);
INSERT INTO `sys_role_menu` VALUES (105, 2044);
INSERT INTO `sys_role_menu` VALUES (105, 2045);
INSERT INTO `sys_role_menu` VALUES (105, 2046);
INSERT INTO `sys_role_menu` VALUES (105, 2047);
INSERT INTO `sys_role_menu` VALUES (105, 2048);
INSERT INTO `sys_role_menu` VALUES (105, 2049);
INSERT INTO `sys_role_menu` VALUES (105, 2050);
INSERT INTO `sys_role_menu` VALUES (105, 2051);
INSERT INTO `sys_role_menu` VALUES (105, 2052);
INSERT INTO `sys_role_menu` VALUES (105, 2054);
INSERT INTO `sys_role_menu` VALUES (106, 2037);
INSERT INTO `sys_role_menu` VALUES (106, 2038);
INSERT INTO `sys_role_menu` VALUES (106, 2043);
INSERT INTO `sys_role_menu` VALUES (106, 2044);
INSERT INTO `sys_role_menu` VALUES (106, 2045);
INSERT INTO `sys_role_menu` VALUES (106, 2046);
INSERT INTO `sys_role_menu` VALUES (106, 2047);
INSERT INTO `sys_role_menu` VALUES (106, 2048);
INSERT INTO `sys_role_menu` VALUES (106, 2049);
INSERT INTO `sys_role_menu` VALUES (106, 2050);
INSERT INTO `sys_role_menu` VALUES (106, 2051);
INSERT INTO `sys_role_menu` VALUES (106, 2052);
INSERT INTO `sys_role_menu` VALUES (106, 2055);
INSERT INTO `sys_role_menu` VALUES (107, 2037);
INSERT INTO `sys_role_menu` VALUES (107, 2038);
INSERT INTO `sys_role_menu` VALUES (107, 2042);
INSERT INTO `sys_role_menu` VALUES (107, 2043);
INSERT INTO `sys_role_menu` VALUES (107, 2044);
INSERT INTO `sys_role_menu` VALUES (107, 2045);
INSERT INTO `sys_role_menu` VALUES (107, 2046);
INSERT INTO `sys_role_menu` VALUES (107, 2047);
INSERT INTO `sys_role_menu` VALUES (107, 2048);
INSERT INTO `sys_role_menu` VALUES (107, 2049);
INSERT INTO `sys_role_menu` VALUES (107, 2050);
INSERT INTO `sys_role_menu` VALUES (107, 2051);
INSERT INTO `sys_role_menu` VALUES (107, 2052);
INSERT INTO `sys_role_menu` VALUES (107, 2056);
INSERT INTO `sys_role_menu` VALUES (108, 2141);
INSERT INTO `sys_role_menu` VALUES (108, 2142);
INSERT INTO `sys_role_menu` VALUES (108, 2143);
INSERT INTO `sys_role_menu` VALUES (108, 2150);
INSERT INTO `sys_role_menu` VALUES (108, 2151);
INSERT INTO `sys_role_menu` VALUES (108, 2152);
INSERT INTO `sys_role_menu` VALUES (108, 2153);
INSERT INTO `sys_role_menu` VALUES (108, 2154);
INSERT INTO `sys_role_menu` VALUES (108, 2155);
INSERT INTO `sys_role_menu` VALUES (108, 2156);
INSERT INTO `sys_role_menu` VALUES (108, 2157);
INSERT INTO `sys_role_menu` VALUES (108, 2158);
INSERT INTO `sys_role_menu` VALUES (108, 2159);
INSERT INTO `sys_role_menu` VALUES (108, 2160);
INSERT INTO `sys_role_menu` VALUES (108, 2161);
INSERT INTO `sys_role_menu` VALUES (108, 2168);
INSERT INTO `sys_role_menu` VALUES (108, 2169);
INSERT INTO `sys_role_menu` VALUES (108, 2170);
INSERT INTO `sys_role_menu` VALUES (108, 2171);
INSERT INTO `sys_role_menu` VALUES (108, 2172);
INSERT INTO `sys_role_menu` VALUES (108, 2173);
INSERT INTO `sys_role_menu` VALUES (108, 2174);
INSERT INTO `sys_role_menu` VALUES (108, 2175);
INSERT INTO `sys_role_menu` VALUES (108, 2177);
INSERT INTO `sys_role_menu` VALUES (108, 2180);
INSERT INTO `sys_role_menu` VALUES (108, 2181);
INSERT INTO `sys_role_menu` VALUES (109, 1);
INSERT INTO `sys_role_menu` VALUES (109, 100);
INSERT INTO `sys_role_menu` VALUES (109, 103);
INSERT INTO `sys_role_menu` VALUES (109, 1000);
INSERT INTO `sys_role_menu` VALUES (109, 1001);
INSERT INTO `sys_role_menu` VALUES (109, 1002);
INSERT INTO `sys_role_menu` VALUES (109, 1003);
INSERT INTO `sys_role_menu` VALUES (109, 1004);
INSERT INTO `sys_role_menu` VALUES (109, 1005);
INSERT INTO `sys_role_menu` VALUES (109, 1006);
INSERT INTO `sys_role_menu` VALUES (109, 1016);
INSERT INTO `sys_role_menu` VALUES (109, 1017);
INSERT INTO `sys_role_menu` VALUES (109, 1018);
INSERT INTO `sys_role_menu` VALUES (109, 1019);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 194 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '管理员', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2025/03/30/avatar_20250330122032A001.png', '$2a$10$bqYgPLn/whPH1qVYv5DGTOzHL1F3uLIsq3fR3ClURMq4S8dNOgqaO', '0', '0', '127.0.0.1', '2025-04-10 20:40:13', 'admin', '2024-08-22 15:25:58', '', '2025-04-10 20:42:26', '管理员');
INSERT INTO `sys_user` VALUES (181, 204, 'user1', '周杰伦', '00', '', '', '0', '', '$2a$10$j7X3N6WEV.W2WDreKp2ej.B2cFdOX2ly9gzR/HdyMN2xx4L82ORwW', '0', '0', '127.0.0.1', '2025-04-10 15:44:50', 'admin', '2025-03-28 17:30:51', 'admin', '2025-04-10 15:47:02', NULL);
INSERT INTO `sys_user` VALUES (182, 204, 'user2', '吴奇隆', '00', '', '', '0', '', '$2a$10$MC9wHUDb/eNKIovoATrLGui53e/924lD/.VX.6TwyoL6axtMzp7XW', '0', '0', '127.0.0.1', '2025-03-29 15:28:49', 'admin', '2025-03-28 17:40:40', 'admin', '2025-04-01 11:39:10', NULL);
INSERT INTO `sys_user` VALUES (183, 205, 'user3', '林俊杰', '00', '', '', '0', '', '$2a$10$9Qj1jmCUrfKfCDMukHUdH.DgSc.YW2pGVb0DApoQPalmmnOU3ALTO', '0', '0', '127.0.0.1', '2025-03-28 20:28:47', 't1', '2025-03-28 17:54:18', 'admin', '2025-04-01 11:39:14', NULL);
INSERT INTO `sys_user` VALUES (184, 205, 'user4', '周深', '00', '', '', '0', '', '$2a$10$BjNCzOhxsqpEmS6LkW08eupHzRmfzg6JFcrkZw0CuQJANPAiNriHy', '0', '0', '127.0.0.1', '2025-03-28 18:10:50', 't1', '2025-03-28 17:54:33', 'admin', '2025-04-01 11:39:18', NULL);
INSERT INTO `sys_user` VALUES (185, 205, 'user5', '蔡徐坤', '00', '', '', '0', '', '$2a$10$Ck96gVS6vbJ.UW9n6eoS5eTDgbWzFa3J.xpxp3ZbqVnmm7Z3hy3xi', '0', '0', '127.0.0.1', '2025-03-29 10:02:39', '', '2025-03-29 10:04:22', 'admin', '2025-04-01 11:39:22', NULL);
INSERT INTO `sys_user` VALUES (186, 206, 'user6', '豆豆', '00', '66@qq.com', '', '0', '', '$2a$10$rAtk8Kdb4HINqB8errducueiglmCq6y8HIKkDwhwf4SPzlVCOn3Bu', '0', '0', '127.0.0.1', '2025-03-29 10:45:33', '', '2025-03-29 10:47:16', 'admin', '2025-04-01 11:39:26', NULL);
INSERT INTO `sys_user` VALUES (187, 206, 'user11', '老师', '00', '', '', '0', '', '$2a$10$EKvnNc2HGalJ7qcOeI4awOLIwp3QXPRM3M5JzM4P4McFkmrBAdoFq', '0', '0', '127.0.0.1', '2025-04-10 15:57:08', 'admin', '2025-03-30 11:41:15', 'admin', '2025-04-10 15:59:20', NULL);
INSERT INTO `sys_user` VALUES (188, NULL, 'user12', 'user12', '00', '', '', '0', '', '$2a$10$O9hflHR2h94NfBis.GkH5OULb51khtCLVU3nSgtCPVkJjFNiCku0u', '0', '2', '', NULL, '', '2025-03-31 11:40:18', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (189, 100, 'user12', '豆豆', '00', '', '', '0', '', '$2a$10$/I.kfCn7sc5FqlWfRCfIc.fJpCgIQiEjx3u./x8H9UD6PAD02tIVO', '0', '2', '', NULL, '', '2025-03-31 11:47:28', 'user11', '2025-03-31 11:47:50', NULL);
INSERT INTO `sys_user` VALUES (190, 100, 'user12', '豆豆', '00', '', '', '1', '', '$2a$10$Qh1qCG2i1v1l55THfctC5e0LEIxPr18XivJIBgQ4T59ehtPkwjMUG', '0', '2', '', NULL, '', '2025-03-31 11:53:41', 'user11', '2025-03-31 11:54:04', NULL);
INSERT INTO `sys_user` VALUES (191, 100, 'guanli1', '管理员', '00', '', '', '0', '', '$2a$10$xW0cJElWcofEMNp/GRCse.9rqF/DyPPV7LrU5Xhs3ku9G.y3vKcpm', '0', '0', '127.0.0.1', '2025-04-01 16:49:35', 'admin', '2025-04-01 15:12:05', '', '2025-04-01 16:51:31', NULL);
INSERT INTO `sys_user` VALUES (192, 204, 'user7', '豆豆', '00', '', '', '0', '', '$2a$10$zqV6PvWeRrq6ONMC/I6OSeR9RXTOg2GHIeVLtyQwciIY3jqBWHRhO', '0', '0', '', NULL, 'guanli1', '2025-04-01 16:51:58', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (193, NULL, 'user8', 'user8', '00', '', '', '0', '', '$2a$10$NUXOCs5aRfRaQsZORfWaCuHAdlE4HdiTC3NT02hgUjQkAMCZprryK', '0', '0', '', NULL, '', '2025-04-01 16:52:15', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 0);
INSERT INTO `sys_user_post` VALUES (2, 0);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (100, 101);
INSERT INTO `sys_user_role` VALUES (100, 102);
INSERT INTO `sys_user_role` VALUES (100, 104);
INSERT INTO `sys_user_role` VALUES (101, 100);
INSERT INTO `sys_user_role` VALUES (101, 101);
INSERT INTO `sys_user_role` VALUES (101, 102);
INSERT INTO `sys_user_role` VALUES (101, 105);
INSERT INTO `sys_user_role` VALUES (102, 100);
INSERT INTO `sys_user_role` VALUES (102, 102);
INSERT INTO `sys_user_role` VALUES (102, 106);
INSERT INTO `sys_user_role` VALUES (103, 100);
INSERT INTO `sys_user_role` VALUES (103, 103);
INSERT INTO `sys_user_role` VALUES (103, 107);
INSERT INTO `sys_user_role` VALUES (104, 100);
INSERT INTO `sys_user_role` VALUES (105, 100);
INSERT INTO `sys_user_role` VALUES (106, 100);
INSERT INTO `sys_user_role` VALUES (110, 100);
INSERT INTO `sys_user_role` VALUES (110, 102);
INSERT INTO `sys_user_role` VALUES (111, 100);
INSERT INTO `sys_user_role` VALUES (111, 102);
INSERT INTO `sys_user_role` VALUES (112, 100);
INSERT INTO `sys_user_role` VALUES (112, 102);
INSERT INTO `sys_user_role` VALUES (113, 100);
INSERT INTO `sys_user_role` VALUES (113, 102);
INSERT INTO `sys_user_role` VALUES (114, 100);
INSERT INTO `sys_user_role` VALUES (114, 102);
INSERT INTO `sys_user_role` VALUES (115, 100);
INSERT INTO `sys_user_role` VALUES (115, 102);
INSERT INTO `sys_user_role` VALUES (116, 100);
INSERT INTO `sys_user_role` VALUES (116, 102);
INSERT INTO `sys_user_role` VALUES (117, 100);
INSERT INTO `sys_user_role` VALUES (117, 102);
INSERT INTO `sys_user_role` VALUES (118, 100);
INSERT INTO `sys_user_role` VALUES (118, 102);
INSERT INTO `sys_user_role` VALUES (119, 100);
INSERT INTO `sys_user_role` VALUES (119, 102);
INSERT INTO `sys_user_role` VALUES (120, 100);
INSERT INTO `sys_user_role` VALUES (120, 102);
INSERT INTO `sys_user_role` VALUES (121, 100);
INSERT INTO `sys_user_role` VALUES (121, 102);
INSERT INTO `sys_user_role` VALUES (122, 100);
INSERT INTO `sys_user_role` VALUES (122, 102);
INSERT INTO `sys_user_role` VALUES (123, 100);
INSERT INTO `sys_user_role` VALUES (123, 102);
INSERT INTO `sys_user_role` VALUES (124, 100);
INSERT INTO `sys_user_role` VALUES (124, 102);
INSERT INTO `sys_user_role` VALUES (125, 100);
INSERT INTO `sys_user_role` VALUES (125, 102);
INSERT INTO `sys_user_role` VALUES (126, 100);
INSERT INTO `sys_user_role` VALUES (126, 102);
INSERT INTO `sys_user_role` VALUES (127, 100);
INSERT INTO `sys_user_role` VALUES (127, 102);
INSERT INTO `sys_user_role` VALUES (128, 100);
INSERT INTO `sys_user_role` VALUES (128, 102);
INSERT INTO `sys_user_role` VALUES (129, 100);
INSERT INTO `sys_user_role` VALUES (129, 102);
INSERT INTO `sys_user_role` VALUES (130, 100);
INSERT INTO `sys_user_role` VALUES (130, 102);
INSERT INTO `sys_user_role` VALUES (131, 100);
INSERT INTO `sys_user_role` VALUES (131, 102);
INSERT INTO `sys_user_role` VALUES (134, 102);
INSERT INTO `sys_user_role` VALUES (135, 102);
INSERT INTO `sys_user_role` VALUES (136, 102);
INSERT INTO `sys_user_role` VALUES (137, 102);
INSERT INTO `sys_user_role` VALUES (138, 102);
INSERT INTO `sys_user_role` VALUES (139, 102);
INSERT INTO `sys_user_role` VALUES (140, 102);
INSERT INTO `sys_user_role` VALUES (141, 102);
INSERT INTO `sys_user_role` VALUES (142, 102);
INSERT INTO `sys_user_role` VALUES (143, 102);
INSERT INTO `sys_user_role` VALUES (144, 102);
INSERT INTO `sys_user_role` VALUES (145, 102);
INSERT INTO `sys_user_role` VALUES (146, 102);
INSERT INTO `sys_user_role` VALUES (147, 102);
INSERT INTO `sys_user_role` VALUES (148, 102);
INSERT INTO `sys_user_role` VALUES (149, 102);
INSERT INTO `sys_user_role` VALUES (150, 102);
INSERT INTO `sys_user_role` VALUES (151, 102);
INSERT INTO `sys_user_role` VALUES (152, 102);
INSERT INTO `sys_user_role` VALUES (153, 102);
INSERT INTO `sys_user_role` VALUES (154, 102);
INSERT INTO `sys_user_role` VALUES (171, 100);
INSERT INTO `sys_user_role` VALUES (171, 101);
INSERT INTO `sys_user_role` VALUES (171, 102);
INSERT INTO `sys_user_role` VALUES (172, 100);
INSERT INTO `sys_user_role` VALUES (172, 102);
INSERT INTO `sys_user_role` VALUES (173, 100);
INSERT INTO `sys_user_role` VALUES (174, 100);
INSERT INTO `sys_user_role` VALUES (174, 102);
INSERT INTO `sys_user_role` VALUES (175, 100);
INSERT INTO `sys_user_role` VALUES (175, 102);
INSERT INTO `sys_user_role` VALUES (176, 100);
INSERT INTO `sys_user_role` VALUES (176, 102);
INSERT INTO `sys_user_role` VALUES (177, 100);
INSERT INTO `sys_user_role` VALUES (178, 100);
INSERT INTO `sys_user_role` VALUES (179, 100);
INSERT INTO `sys_user_role` VALUES (180, 100);
INSERT INTO `sys_user_role` VALUES (180, 102);
INSERT INTO `sys_user_role` VALUES (181, 2);
INSERT INTO `sys_user_role` VALUES (182, 2);
INSERT INTO `sys_user_role` VALUES (183, 2);
INSERT INTO `sys_user_role` VALUES (184, 2);
INSERT INTO `sys_user_role` VALUES (185, 2);
INSERT INTO `sys_user_role` VALUES (187, 108);
INSERT INTO `sys_user_role` VALUES (191, 109);
INSERT INTO `sys_user_role` VALUES (192, 2);

SET FOREIGN_KEY_CHECKS = 1;
