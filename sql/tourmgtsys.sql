/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50740
Source Host           : localhost:3306
Source Database       : tourmgtsys

Target Server Type    : MYSQL
Target Server Version : 50740
File Encoding         : 65001

Date: 2023-06-29 09:43:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('22', 'self_attendances', '考勤信息表', null, null, 'SelfAttendances', 'crud', 'com.ruoyi.system', 'system', 'attendances', '考勤信息', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-06-26 10:36:27', '', '2023-06-26 11:57:00', null);
INSERT INTO `gen_table` VALUES ('23', 'self_complaints', '投诉表', null, null, 'SelfComplaints', 'crud', 'com.ruoyi.system', 'system', 'complaints', '投诉', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:21:32', null);
INSERT INTO `gen_table` VALUES ('24', 'self_emergencies', '事件表', null, null, 'SelfEmergencies', 'crud', 'com.ruoyi.system', 'system', 'emergencies', '事件', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:56', null);
INSERT INTO `gen_table` VALUES ('25', 'self_hotel_orders', '酒店订单表', null, null, 'SelfHotelOrders', 'crud', 'com.ruoyi.hotel', 'hotel', 'orders', '酒店订单', 'ruoyi', '0', '/', '{\"parentMenuId\":2130}', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 16:34:39', null);
INSERT INTO `gen_table` VALUES ('26', 'self_hotel_prices', '酒店价格表', null, null, 'SelfHotelPrices', 'crud', 'com.ruoyi.system', 'system', 'hotel_prices', '酒店价格', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:45', null);
INSERT INTO `gen_table` VALUES ('27', 'self_hotel_rooms', '房间表', null, null, 'SelfHotelRooms', 'crud', 'com.ruoyi.system', 'system', 'rooms', '房间', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:34', null);
INSERT INTO `gen_table` VALUES ('28', 'self_parking_cars', '车辆表', null, null, 'SelfParkingCars', 'crud', 'com.ruoyi.system', 'system', 'cars', '车辆', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:28', null);
INSERT INTO `gen_table` VALUES ('31', 'self_visitors', '游客表', null, null, 'SelfVisitors', 'crud', 'com.ruoyi.system', 'system', 'visitors', '游客', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:22', null);
INSERT INTO `gen_table` VALUES ('32', 'self_ticket_prices', '票价表', null, null, 'SelfTicketPrices', 'crud', 'com.ruoyi.system', 'system', 'ticket_prices', '票价', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:56:15', null);
INSERT INTO `gen_table` VALUES ('33', 'self_ticket_services', '票务表', null, null, 'SelfTicketServices', 'crud', 'com.ruoyi.system', 'system', 'ticket_services', '票务', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:55:53', null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('114', '22', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:57:00');
INSERT INTO `gen_table_column` VALUES ('115', '22', 'employee_id', '员工ID', 'varchar(11)', 'String', 'employeeId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:57:00');
INSERT INTO `gen_table_column` VALUES ('116', '22', 'employee_name', '员工姓名', 'varchar(255)', 'String', 'employeeName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:57:00');
INSERT INTO `gen_table_column` VALUES ('117', '22', 'state_working', '考勤状态', 'varchar(4)', 'String', 'stateWorking', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:57:00');
INSERT INTO `gen_table_column` VALUES ('118', '23', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:21:32');
INSERT INTO `gen_table_column` VALUES ('119', '23', 'complaints_id', '投诉ID', 'int(11)', 'Long', 'complaintsId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:21:32');
INSERT INTO `gen_table_column` VALUES ('120', '23', 'complaints_message', '投诉信息', 'text', 'String', 'complaintsMessage', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', '3', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:21:32');
INSERT INTO `gen_table_column` VALUES ('121', '23', 'complaints_date', '投诉日期', 'datetime', 'Date', 'complaintsDate', '0', '0', null, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', '4', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:21:32');
INSERT INTO `gen_table_column` VALUES ('122', '23', 'state_complaints', '处理状态', 'varchar(4)', 'String', 'stateComplaints', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:21:32');
INSERT INTO `gen_table_column` VALUES ('123', '23', 'complaints_reply_date', '回复日期', 'datetime', 'Date', 'complaintsReplyDate', '0', '0', null, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', '6', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:21:32');
INSERT INTO `gen_table_column` VALUES ('124', '23', 'complaints_reply_message', '回复信息', 'text', 'String', 'complaintsReplyMessage', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'textarea', '', '7', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:21:32');
INSERT INTO `gen_table_column` VALUES ('125', '24', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:56');
INSERT INTO `gen_table_column` VALUES ('126', '24', 'location', '事件地点', 'varchar(255)', 'String', 'location', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:56');
INSERT INTO `gen_table_column` VALUES ('127', '24', 'emergencies_message', '事件信息', 'text', 'String', 'emergenciesMessage', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'textarea', '', '3', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:56');
INSERT INTO `gen_table_column` VALUES ('128', '24', 'department', '处理部门', 'varchar(255)', 'String', 'department', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:56');
INSERT INTO `gen_table_column` VALUES ('129', '24', 'state_emergencies', '处理状态', 'varchar(4)', 'String', 'stateEmergencies', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:56');
INSERT INTO `gen_table_column` VALUES ('130', '24', 'emergencies_level', '紧急程度', 'varchar(4)', 'String', 'emergenciesLevel', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:56');
INSERT INTO `gen_table_column` VALUES ('131', '24', 'emergencies_time', '发生日期', 'datetime', 'Date', 'emergenciesTime', '0', '0', null, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', '7', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:56');
INSERT INTO `gen_table_column` VALUES ('132', '25', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 16:34:39');
INSERT INTO `gen_table_column` VALUES ('133', '25', 'order_id', '订单号', 'int(11)', 'Long', 'orderId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 16:34:39');
INSERT INTO `gen_table_column` VALUES ('134', '25', 'cn_id', '身份证号', 'varchar(255)', 'String', 'cnId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 16:34:39');
INSERT INTO `gen_table_column` VALUES ('135', '26', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:45');
INSERT INTO `gen_table_column` VALUES ('138', '26', 'total_rooms', '房间总数', 'int(11)', 'Long', 'totalRooms', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:45');
INSERT INTO `gen_table_column` VALUES ('139', '26', 'free_rooms', '空余房数', 'int(11)', 'Long', 'freeRooms', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:45');
INSERT INTO `gen_table_column` VALUES ('140', '27', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:34');
INSERT INTO `gen_table_column` VALUES ('141', '27', 'room_id', '房间号', 'int(11)', 'Long', 'roomId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:34');
INSERT INTO `gen_table_column` VALUES ('143', '27', 'order_id', '订单号', 'int(11)', 'Long', 'orderId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:34');
INSERT INTO `gen_table_column` VALUES ('145', '28', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:28');
INSERT INTO `gen_table_column` VALUES ('146', '28', 'car_id', '车牌号', 'varchar(255)', 'String', 'carId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:28');
INSERT INTO `gen_table_column` VALUES ('149', '28', 'parking_cost', '停车费', 'varchar(255)', 'String', 'parkingCost', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:28');
INSERT INTO `gen_table_column` VALUES ('150', '28', 'state_parking', '停车状态', 'varchar(4)', 'String', 'stateParking', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:28');
INSERT INTO `gen_table_column` VALUES ('162', '31', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:22');
INSERT INTO `gen_table_column` VALUES ('163', '31', 'cn_id', '身份证号', 'varchar(255)', 'String', 'cnId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:22');
INSERT INTO `gen_table_column` VALUES ('164', '31', 'visitors_name', '游客姓名', 'varchar(255)', 'String', 'visitorsName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:22');
INSERT INTO `gen_table_column` VALUES ('165', '31', 'phone_number', '手机号', 'varchar(255)', 'String', 'phoneNumber', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:22');
INSERT INTO `gen_table_column` VALUES ('166', '31', 'order_id', '订单号', 'int(11)', 'Long', 'orderId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2023-06-26 10:36:28', '', '2023-06-26 11:56:22');
INSERT INTO `gen_table_column` VALUES ('168', '26', 'type_room', '房间类型', 'varchar(255)', 'String', 'typeRoom', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', '', '2023-06-26 11:17:22', '', '2023-06-26 11:56:45');
INSERT INTO `gen_table_column` VALUES ('169', '26', 'price_room', '房间价格', 'varchar(255)', 'String', 'priceRoom', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', '', '2023-06-26 11:17:22', '', '2023-06-26 11:56:45');
INSERT INTO `gen_table_column` VALUES ('170', '27', 'type_room', '房间类型', 'varchar(255)', 'String', 'typeRoom', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', '', '2023-06-26 11:17:23', '', '2023-06-26 11:56:34');
INSERT INTO `gen_table_column` VALUES ('171', '27', 'state_room', '入住情况', 'varchar(4)', 'String', 'stateRoom', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', '', '2023-06-26 11:17:23', '', '2023-06-26 11:56:34');
INSERT INTO `gen_table_column` VALUES ('177', '28', 'car_in_time', '入场时间', 'datetime', 'Date', 'carInTime', '0', '0', null, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', '3', '', '2023-06-26 11:34:59', '', '2023-06-26 11:56:28');
INSERT INTO `gen_table_column` VALUES ('178', '28', 'car_out_time', '出场时间', 'datetime', 'Date', 'carOutTime', '0', '0', null, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', '4', '', '2023-06-26 11:34:59', '', '2023-06-26 11:56:28');
INSERT INTO `gen_table_column` VALUES ('179', '31', 'ticket_id', '门票号', 'int(11)', 'Long', 'ticketId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '6', '', '2023-06-26 11:35:05', '', '2023-06-26 11:56:22');
INSERT INTO `gen_table_column` VALUES ('180', '32', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:56:15');
INSERT INTO `gen_table_column` VALUES ('181', '32', 'type_ticket', '门票类型', 'varchar(255)', 'String', 'typeTicket', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:56:15');
INSERT INTO `gen_table_column` VALUES ('182', '32', 'price_ticket', '门票价格', 'varchar(255)', 'String', 'priceTicket', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:56:15');
INSERT INTO `gen_table_column` VALUES ('183', '33', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:55:53');
INSERT INTO `gen_table_column` VALUES ('184', '33', 'ticket_id', '门票号', 'int(11)', 'Long', 'ticketId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:55:53');
INSERT INTO `gen_table_column` VALUES ('185', '33', 'cn_id', '身份证号', 'varchar(255)', 'String', 'cnId', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:55:53');
INSERT INTO `gen_table_column` VALUES ('186', '33', 'scheduled_date', '预约日期', 'datetime', 'Date', 'scheduledDate', '0', '0', null, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', '4', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:55:53');
INSERT INTO `gen_table_column` VALUES ('187', '33', 'visitor_in_time', '入园时间', 'datetime', 'Date', 'visitorInTime', '0', '0', null, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', '5', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:55:53');
INSERT INTO `gen_table_column` VALUES ('188', '33', 'visitor_out_time', '出园时间', 'datetime', 'Date', 'visitorOutTime', '0', '0', null, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', '6', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:55:53');
INSERT INTO `gen_table_column` VALUES ('189', '33', 'state_visit', '参观状态', 'varchar(4)', 'String', 'stateVisit', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:55:53');
INSERT INTO `gen_table_column` VALUES ('190', '33', 'type_ticket', '门票类型', 'varchar(255)', 'String', 'typeTicket', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '8', 'admin', '2023-06-26 11:35:48', '', '2023-06-26 11:55:53');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for self_attendances
-- ----------------------------
DROP TABLE IF EXISTS `self_attendances`;
CREATE TABLE `self_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(11) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `state_working` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attendances_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考勤信息表';

-- ----------------------------
-- Records of self_attendances
-- ----------------------------
INSERT INTO `self_attendances` VALUES ('1', 'E0000001', '什么东西', '0');
INSERT INTO `self_attendances` VALUES ('2', 'E0000002', '122', '1515');

-- ----------------------------
-- Table structure for self_complaints
-- ----------------------------
DROP TABLE IF EXISTS `self_complaints`;
CREATE TABLE `self_complaints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaints_id` int(11) NOT NULL,
  `complaints_message` text NOT NULL,
  `complaints_date` datetime DEFAULT NULL,
  `state_complaints` varchar(4) DEFAULT NULL,
  `complaints_reply_date` datetime DEFAULT NULL,
  `complaints_reply_message` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_complaints_complaints_id_uindex` (`complaints_id`),
  UNIQUE KEY `self_complaints_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='投诉表';

-- ----------------------------
-- Records of self_complaints
-- ----------------------------
INSERT INTO `self_complaints` VALUES ('1', '11111', '红红火火恍恍惚惚fu', '2023-06-06 00:00:00', '事实上是', '2023-06-28 00:00:00', '爱啊哎');

-- ----------------------------
-- Table structure for self_emergencies
-- ----------------------------
DROP TABLE IF EXISTS `self_emergencies`;
CREATE TABLE `self_emergencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) DEFAULT NULL,
  `emergencies_message` text,
  `department` varchar(255) DEFAULT NULL,
  `state_emergencies` varchar(4) DEFAULT NULL,
  `emergencies_level` varchar(4) DEFAULT NULL,
  `emergencies_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_emergencies_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事件表';

-- ----------------------------
-- Records of self_emergencies
-- ----------------------------

-- ----------------------------
-- Table structure for self_hotel_orders
-- ----------------------------
DROP TABLE IF EXISTS `self_hotel_orders`;
CREATE TABLE `self_hotel_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `cn_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_hotel_orders_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='酒店订单表';

-- ----------------------------
-- Records of self_hotel_orders
-- ----------------------------
INSERT INTO `self_hotel_orders` VALUES ('1', '12345', '12456');

-- ----------------------------
-- Table structure for self_hotel_prices
-- ----------------------------
DROP TABLE IF EXISTS `self_hotel_prices`;
CREATE TABLE `self_hotel_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_room` varchar(255) DEFAULT NULL,
  `price_room` varchar(255) DEFAULT NULL,
  `total_rooms` int(11) DEFAULT NULL,
  `free_rooms` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_hotel_prices_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='酒店价格表';

-- ----------------------------
-- Records of self_hotel_prices
-- ----------------------------

-- ----------------------------
-- Table structure for self_hotel_rooms
-- ----------------------------
DROP TABLE IF EXISTS `self_hotel_rooms`;
CREATE TABLE `self_hotel_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) DEFAULT NULL,
  `type_room` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `state_room` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `start_day` date DEFAULT NULL,
  `end_day` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_hotel_rooms_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房间表';

-- ----------------------------
-- Records of self_hotel_rooms
-- ----------------------------

-- ----------------------------
-- Table structure for self_parking_cars
-- ----------------------------
DROP TABLE IF EXISTS `self_parking_cars`;
CREATE TABLE `self_parking_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` varchar(255) DEFAULT NULL,
  `car_in_time` datetime DEFAULT NULL,
  `car_out_time` datetime DEFAULT NULL,
  `parking_cost` varchar(255) DEFAULT NULL,
  `state_parking` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_parking_cars_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆表';

-- ----------------------------
-- Records of self_parking_cars
-- ----------------------------

-- ----------------------------
-- Table structure for self_ticket_prices
-- ----------------------------
DROP TABLE IF EXISTS `self_ticket_prices`;
CREATE TABLE `self_ticket_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_ticket` varchar(255) DEFAULT NULL,
  `price_ticket` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_visit_prices_id_uindex` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='票价表';

-- ----------------------------
-- Records of self_ticket_prices
-- ----------------------------

-- ----------------------------
-- Table structure for self_ticket_services
-- ----------------------------
DROP TABLE IF EXISTS `self_ticket_services`;
CREATE TABLE `self_ticket_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `cn_id` varchar(255) DEFAULT NULL,
  `scheduled_date` datetime DEFAULT NULL,
  `visitor_in_time` datetime DEFAULT NULL,
  `visitor_out_time` datetime DEFAULT NULL,
  `state_visit` varchar(4) DEFAULT NULL,
  `type_ticket` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_visit_victors_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='票务表';

-- ----------------------------
-- Records of self_ticket_services
-- ----------------------------
INSERT INTO `self_ticket_services` VALUES ('16', '16450036', '22222', '2023-06-05 00:00:00', null, null, null, '22222');
INSERT INTO `self_ticket_services` VALUES ('19', '18806562', '354', '2023-06-04 00:00:00', '2023-06-28 16:07:50', '2023-06-28 16:07:54', '0', '5');
INSERT INTO `self_ticket_services` VALUES ('21', '4567616', '13131', '2023-06-05 00:00:00', '2023-06-28 15:44:03', '2023-06-28 16:01:34', '0', '2');
INSERT INTO `self_ticket_services` VALUES ('23', '84546609', '22222', '2023-06-04 00:00:00', null, null, null, '4');
INSERT INTO `self_ticket_services` VALUES ('26', '51676665', '12321', '2023-06-04 00:00:00', '2023-06-28 15:43:52', '2023-06-28 16:03:35', '0', '3');
INSERT INTO `self_ticket_services` VALUES ('28', '10321029', '456', '2023-06-06 00:00:00', '2023-06-28 16:15:09', '2023-06-28 16:15:15', '0', '2');
INSERT INTO `self_ticket_services` VALUES ('29', '3743447', '465', '2023-06-05 00:00:00', '2023-06-28 16:18:17', '2023-06-28 16:18:20', '0', '3');

-- ----------------------------
-- Table structure for self_visitors
-- ----------------------------
DROP TABLE IF EXISTS `self_visitors`;
CREATE TABLE `self_visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cn_id` varchar(255) NOT NULL,
  `visitors_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_visitors_cn_id_uindex` (`cn_id`),
  UNIQUE KEY `self_visitors_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游客表';

-- ----------------------------
-- Records of self_visitors
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-06-23 16:06:59', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-06-23 16:06:59', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-06-23 16:06:59', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-06-23 16:06:59', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-06-23 16:06:59', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-06-23 16:06:59', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-23 16:06:59', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-06-23 16:06:59', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-06-23 16:06:59', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-06-23 16:06:59', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-06-23 16:06:59', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-06-23 16:06:59', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-06-23 16:06:59', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-06-23 16:06:59', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-06-23 16:06:59', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-06-23 16:06:59', '', null, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2023-06-23 16:06:59', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2023-06-23 16:06:59', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2023-06-23 16:06:59', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2023-06-23 16:06:59', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2023-06-23 16:06:59', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2023-06-23 16:06:59', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2023-06-23 16:06:59', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2023-06-23 16:06:59', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2023-06-23 16:06:59', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2023-06-23 16:06:59', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-06-23 16:06:59', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-24 09:38:50');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-24 11:34:48');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-25 10:12:32');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-25 16:44:41');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 09:20:27');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 10:00:45');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 10:11:47');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 11:16:40');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 11:51:29');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 11:58:38');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 13:15:03');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 14:08:14');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 14:24:45');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-26 19:42:52');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-26 19:42:55');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-27 08:57:01');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-27 08:57:06');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2134 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2023-06-23 16:06:59', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2023-06-23 16:06:59', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2023-06-23 16:06:59', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', null, '', '0', '0', 'M', '1', '1', '', 'guide', 'admin', '2023-06-23 16:06:59', 'admin', '2023-06-26 10:23:18', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-06-23 16:06:59', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-06-23 16:06:59', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-06-23 16:06:59', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-06-23 16:06:59', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-06-23 16:06:59', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-06-23 16:06:59', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-06-23 16:06:59', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-06-23 16:06:59', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2023-06-23 16:06:59', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-06-23 16:06:59', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-06-23 16:06:59', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-06-23 16:06:59', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-06-23 16:06:59', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-06-23 16:06:59', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-06-23 16:06:59', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-06-23 16:06:59', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-06-23 16:06:59', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-06-23 16:06:59', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-06-23 16:06:59', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-06-23 16:06:59', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '平台管理', '0', '5', 'platform', null, null, '1', '0', 'M', '0', '0', null, 'bug', 'admin', '2023-06-26 09:23:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2115', '考勤信息', '2000', '1', 'attendances', 'system/attendances/index', null, '1', '0', 'C', '0', '0', 'system:attendances:list', '404', 'admin', '2023-06-26 14:02:20', 'admin', '2023-06-26 14:14:55', '考勤信息菜单');
INSERT INTO `sys_menu` VALUES ('2121', '投诉菜单', '2000', '2', 'complaints', 'system/complaints/index', null, '1', '0', 'C', '0', '0', 'system:complaints:list', '404', 'admin', '2023-06-26 14:12:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2122', '事件处理', '2000', '3', 'emergencies', 'system/emergencies/index', null, '1', '0', 'C', '0', '0', 'system:emergencies:list', '404', 'admin', '2023-06-26 14:16:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2124', '酒店价格', '2000', '5', 'hotel_prices', 'system/hotel_prices/index', null, '1', '0', 'C', '0', '0', 'system:hotel_prices:list', '404', 'admin', '2023-06-26 14:17:59', 'admin', '2023-06-26 14:19:42', '');
INSERT INTO `sys_menu` VALUES ('2125', '酒店房间', '2000', '6', 'rooms', 'system/rooms/index', null, '1', '0', 'C', '0', '0', 'system:rooms:list', '404', 'admin', '2023-06-26 14:18:40', 'admin', '2023-06-26 14:19:46', '');
INSERT INTO `sys_menu` VALUES ('2126', '停车场管理', '2000', '7', 'cars', 'system/cars/index', null, '1', '0', 'C', '0', '0', 'system:cars:list', '404', 'admin', '2023-06-26 14:19:35', 'admin', '2023-06-26 14:19:50', '');
INSERT INTO `sys_menu` VALUES ('2127', '游客信息', '2000', '8', 'visitors', 'system/visitors/index', null, '1', '0', 'C', '0', '0', 'system:visitors:list', '404', 'admin', '2023-06-26 14:20:30', '', null, '');
INSERT INTO `sys_menu` VALUES ('2128', '门票信息', '2000', '9', 'ticket_prices', 'system/ticket_prices/index', null, '1', '0', 'C', '0', '0', 'system:ticket_prices:list', '404', 'admin', '2023-06-26 14:21:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2129', '票务管理', '2000', '10', 'ticket_services', 'system/ticket_services/index', null, '1', '0', 'C', '0', '0', 'system:ticket_services:list', '404', 'admin', '2023-06-26 14:22:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2130', '酒店管理', '0', '1', 'hotel', null, null, '1', '0', 'M', '0', '0', null, '#', 'admin', '2023-06-26 16:28:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2131', '酒店订单', '2130', '1', 'order', 'hotel/orders/index', null, '1', '0', 'C', '0', '0', 'hotel:orders:index', '#', 'admin', '2023-06-26 16:29:20', 'admin', '2023-06-26 16:33:26', '');
INSERT INTO `sys_menu` VALUES ('2132', '酒店预约', '2130', '2', 'reservation', 'hotel/reservation/index', null, '1', '0', 'C', '0', '0', 'hotel:reservation:list', '#', 'admin', '2023-06-26 16:44:36', '', null, '');
INSERT INTO `sys_menu` VALUES ('2133', '酒店退房', '2130', '3', 'checkout', 'hotel/checkout/index', null, '1', '0', 'C', '0', '0', 'hotel:checkout:list', '#', 'admin', '2023-06-26 16:52:58', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-06-23 16:06:59', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-06-23 16:06:59', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"self_visit_victors,self_visit_prices,self_parking_cars,self_hotel_rooms,self_hotel_prices,self_hotel_orders,self_emergencies,self_complaints,self_attendances,self_visitors\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:21:06', '167');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"平台管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"platform\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:23:38', '11');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnComment\":\"员工名\",\"columnId\":2,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StateCode\",\"columnComment\":\"缺勤状态\",\"columnId\":3,\"columnName\":\"state_code\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"考勤信息\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"考勤信息表\",\"tableId\":1,\"tableName\":\"self_attendances\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:27:18', '18');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 09:27:24', '127');
INSERT INTO `sys_oper_log` VALUES ('104', '考勤信息', '1', 'com.ruoyi.system.controller.SelfAttendancesController.add()', 'POST', '1', 'admin', null, '/system/attendances', '127.0.0.1', '内网IP', '{\"employeeName\":\"什么东西\",\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:30:21', '87');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:27:18\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnComment\":\"员工名\",\"columnId\":2,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:27:18\",\"usableColumn\":false},{\"capJavaField\":\"StateCode\",\"columnComment\":\"缺勤状态\",\"columnId\":3,\"columnName\":\"state_code\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:27:18\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"考勤信息\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"2000\"},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"考勤信息表\",\"ta', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:32:52', '27');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:32:52\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnComment\":\"员工名\",\"columnId\":2,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:32:52\",\"usableColumn\":false},{\"capJavaField\":\"StateCode\",\"columnComment\":\"缺勤状态\",\"columnId\":3,\"columnName\":\"state_code\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:32:52\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"考勤信息\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"2000\"},\"parentMenuId\":\"2000\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:33:43', '11');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 09:33:45', '107');
INSERT INTO `sys_oper_log` VALUES ('108', '考勤信息', '1', 'com.ruoyi.system.controller.SelfAttendancesController.add()', 'POST', '1', 'admin', null, '/system/attendances', '127.0.0.1', '内网IP', '{\"employeeName\":\"122\",\"id\":2,\"params\":{},\"stateCode\":\"1515\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:35:52', '89');
INSERT INTO `sys_oper_log` VALUES ('109', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:33:43\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnComment\":\"员工名\",\"columnId\":2,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:33:43\",\"usableColumn\":false},{\"capJavaField\":\"StateCode\",\"columnComment\":\"缺勤状态\",\"columnId\":3,\"columnName\":\"state_code\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:21:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:33:43\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"考勤信息\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"2000\"},\"parentMenuId\":\"2000\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:37:00', '30');
INSERT INTO `sys_oper_log` VALUES ('110', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 09:37:02', '115');
INSERT INTO `sys_oper_log` VALUES ('111', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:43:52', '18');
INSERT INTO `sys_oper_log` VALUES ('112', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/2,3,4,5,6,7,8,9,10', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:43:59', '8');
INSERT INTO `sys_oper_log` VALUES ('113', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:45:28', '39');
INSERT INTO `sys_oper_log` VALUES ('114', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":54,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeId\",\"columnId\":55,\"columnName\":\"employee_id\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnId\":56,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StateCode\",\"columnId\":57,\"columnName\":\"state_code\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"s', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:47:53', '23');
INSERT INTO `sys_oper_log` VALUES ('115', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":54,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:47:53\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeId\",\"columnId\":55,\"columnName\":\"employee_id\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:47:53\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnId\":56,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:47:53\",\"usableColumn\":false},{\"capJavaField\":\"StateCode\",\"columnId\":57,\"columnName\":\"state_code\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateCode\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:48:11', '13');
INSERT INTO `sys_oper_log` VALUES ('116', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 09:48:15', '30');
INSERT INTO `sys_oper_log` VALUES ('117', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2023-06-26 09:50:13', '8');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2002', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:50:19', '9');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2003', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:50:21', '8');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2004', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:50:23', '7');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2005', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:50:25', '7');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2006', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:50:27', '7');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:50:29', '6');
INSERT INTO `sys_oper_log` VALUES ('124', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":54,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:48:11\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeId\",\"columnId\":55,\"columnName\":\"employee_id\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:48:11\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnId\":56,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:48:11\",\"usableColumn\":false},{\"capJavaField\":\"StateCode\",\"columnId\":57,\"columnName\":\"state_code\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateCode\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:52:50', '29');
INSERT INTO `sys_oper_log` VALUES ('125', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 09:52:52', '24');
INSERT INTO `sys_oper_log` VALUES ('126', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2008', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:55:08', '17');
INSERT INTO `sys_oper_log` VALUES ('127', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2009', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:55:09', '7');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2011', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:55:12', '9');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2010', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:55:14', '8');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2012', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:55:16', '5');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2007', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:55:18', '9');
INSERT INTO `sys_oper_log` VALUES ('132', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2014', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:56:36', '18');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2015', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:56:38', '7');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2016', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:56:39', '9');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2017', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:56:41', '8');
INSERT INTO `sys_oper_log` VALUES ('136', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2018', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:56:45', '6');
INSERT INTO `sys_oper_log` VALUES ('137', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2013', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 09:56:48', '6');
INSERT INTO `sys_oper_log` VALUES ('138', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 10:02:10', '114');
INSERT INTO `sys_oper_log` VALUES ('139', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":54,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:52:50\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeId\",\"columnId\":55,\"columnName\":\"employee_id\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:52:50\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnId\":56,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 09:52:50\",\"usableColumn\":false},{\"capJavaField\":\"StateCode\",\"columnId\":57,\"columnName\":\"state_code\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 09:45:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateCode\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:13:08', '26');
INSERT INTO `sys_oper_log` VALUES ('140', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 10:13:10', '107');
INSERT INTO `sys_oper_log` VALUES ('141', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 10:13:15', '24');
INSERT INTO `sys_oper_log` VALUES ('142', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 10:13:25', '24');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2020', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:15:45', '12');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2021', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:15:47', '7');
INSERT INTO `sys_oper_log` VALUES ('145', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2022', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:15:50', '5');
INSERT INTO `sys_oper_log` VALUES ('146', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2023', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:15:51', '5');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2024', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:15:53', '6');
INSERT INTO `sys_oper_log` VALUES ('148', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2019', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:15:55', '5');
INSERT INTO `sys_oper_log` VALUES ('149', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/11', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:16:01', '15');
INSERT INTO `sys_oper_log` VALUES ('150', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"self_emergencies,self_complaints,self_attendances,self_visitors,self_visit_victors,self_visit_prices,self_parking_cars,self_hotel_rooms,self_hotel_prices,self_hotel_orders\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:16:52', '230');
INSERT INTO `sys_oper_log` VALUES ('151', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"自增\",\"columnId\":58,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeId\",\"columnComment\":\"员工ID\",\"columnId\":59,\"columnName\":\"employee_id\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnComment\":\"员工姓名\",\"columnId\":60,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StateCode\",\"columnComment\":\"缺勤状态\",\"columnId\":61,\"columnName\":\"state_code\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateCode\",\"javaType\":\"S', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:18:23', '21');
INSERT INTO `sys_oper_log` VALUES ('152', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 10:18:26', '97');
INSERT INTO `sys_oper_log` VALUES ('153', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"complaints\",\"className\":\"SelfComplaints\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"自增\",\"columnId\":62,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintsId\",\"columnComment\":\"投诉ID\",\"columnId\":63,\"columnName\":\"complaints_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"complaintsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintsMessage\",\"columnComment\":\"投诉信息\",\"columnId\":64,\"columnName\":\"complaints_message\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"complaintsMessage\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintsDate\",\"columnComment\":\"投诉日期\",\"columnId\":65,\"columnName\":\"complaints_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQu', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:21:19', '40');
INSERT INTO `sys_oper_log` VALUES ('154', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_complaints\"}', null, '0', null, '2023-06-26 10:21:22', '124');
INSERT INTO `sys_oper_log` VALUES ('155', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-06-26 10:23:09', '8');
INSERT INTO `sys_oper_log` VALUES ('156', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-06-23 16:06:59\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:23:18', '11');
INSERT INTO `sys_oper_log` VALUES ('157', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_attendances', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:30:06', '123');
INSERT INTO `sys_oper_log` VALUES ('158', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"\",\"columnId\":58,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 10:30:06\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeId\",\"columnComment\":\"\",\"columnId\":59,\"columnName\":\"employee_id\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 10:30:06\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnComment\":\"\",\"columnId\":60,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:16:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 10:30:06\",\"usableColumn\":false},{\"capJavaField\":\"StateWorking\",\"columnId\":112,\"columnName\":\"state_working\",\"columnType\":\"varchar(4)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 10:30:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"i', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:32:18', '20');
INSERT INTO `sys_oper_log` VALUES ('159', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 10:32:20', '106');
INSERT INTO `sys_oper_log` VALUES ('160', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_complaints', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:33:33', '24');
INSERT INTO `sys_oper_log` VALUES ('161', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2025', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2023-06-26 10:34:01', '2');
INSERT INTO `sys_oper_log` VALUES ('162', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2032', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:06', '9');
INSERT INTO `sys_oper_log` VALUES ('163', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2031', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2023-06-26 10:34:07', '3');
INSERT INTO `sys_oper_log` VALUES ('164', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2031', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2023-06-26 10:34:09', '2');
INSERT INTO `sys_oper_log` VALUES ('165', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2033', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:36', '5');
INSERT INTO `sys_oper_log` VALUES ('166', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2034', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:39', '5');
INSERT INTO `sys_oper_log` VALUES ('167', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2035', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:40', '5');
INSERT INTO `sys_oper_log` VALUES ('168', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2036', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:44', '6');
INSERT INTO `sys_oper_log` VALUES ('169', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2030', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:46', '6');
INSERT INTO `sys_oper_log` VALUES ('170', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2027', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:48', '6');
INSERT INTO `sys_oper_log` VALUES ('171', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2028', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:52', '6');
INSERT INTO `sys_oper_log` VALUES ('172', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2026', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:55', '6');
INSERT INTO `sys_oper_log` VALUES ('173', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2029', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:57', '6');
INSERT INTO `sys_oper_log` VALUES ('174', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2025', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:34:59', '5');
INSERT INTO `sys_oper_log` VALUES ('175', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2040', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:35:01', '6');
INSERT INTO `sys_oper_log` VALUES ('176', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2039', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:35:03', '6');
INSERT INTO `sys_oper_log` VALUES ('177', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2042', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:35:05', '7');
INSERT INTO `sys_oper_log` VALUES ('178', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2041', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:35:06', '13');
INSERT INTO `sys_oper_log` VALUES ('179', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2038', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:35:08', '7');
INSERT INTO `sys_oper_log` VALUES ('180', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2031', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:35:10', '5');
INSERT INTO `sys_oper_log` VALUES ('181', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2037', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:35:12', '5');
INSERT INTO `sys_oper_log` VALUES ('182', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/12,13,14,15,16,17,18,19,20,21', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:36:23', '18');
INSERT INTO `sys_oper_log` VALUES ('183', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"self_complaints,self_visit_victors,self_parking_cars,self_hotel_rooms,self_emergencies,self_attendances,self_hotel_prices,self_hotel_orders,self_visitors,self_visit_prices\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:36:28', '160');
INSERT INTO `sys_oper_log` VALUES ('184', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":114,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":22,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeId\",\"columnComment\":\"员工ID\",\"columnId\":115,\"columnName\":\"employee_id\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":22,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnComment\":\"员工姓名\",\"columnId\":116,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":22,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StateWorking\",\"columnComment\":\"考勤状态\",\"columnId\":117,\"columnName\":\"state_working\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"stateWorking\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:37:23', '20');
INSERT INTO `sys_oper_log` VALUES ('185', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"complaints\",\"className\":\"SelfComplaints\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":118,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintsId\",\"columnComment\":\"投诉ID\",\"columnId\":119,\"columnName\":\"complaints_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"complaintsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintsMessage\",\"columnComment\":\"投诉信息\",\"columnId\":120,\"columnName\":\"complaints_message\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"complaintsMessage\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintsDate\",\"columnComment\":\"投诉日期\",\"columnId\":121,\"columnName\":\"complaints_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:40:21', '20');
INSERT INTO `sys_oper_log` VALUES ('186', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"emergencies\",\"className\":\"SelfEmergencies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":125,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Location\",\"columnComment\":\"地点\",\"columnId\":126,\"columnName\":\"location\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"location\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EmergenciesMessage\",\"columnComment\":\"信息\",\"columnId\":127,\"columnName\":\"emergencies_message\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"emergenciesMessage\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Department\",\"columnComment\":\"处理部门\",\"columnId\":128,\"columnName\":\"department\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"department\",\"ja', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:41:37', '13');
INSERT INTO `sys_oper_log` VALUES ('187', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"orders\",\"className\":\"SelfHotelOrders\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":132,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单ID\",\"columnId\":133,\"columnName\":\"order_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"orderId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":134,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"酒店订单\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"酒店订单表\",\"tableId\":25,\"tableName\":\"self_hotel_orders\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:42:11', '7');
INSERT INTO `sys_oper_log` VALUES ('188', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"prices\",\"className\":\"SelfHotelPrices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":135,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Class\",\"columnComment\":\"房间类型\",\"columnId\":136,\"columnName\":\"class\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"class\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"房间价格\",\"columnId\":137,\"columnName\":\"price\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"price\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TotalRooms\",\"columnComment\":\"房间总数\",\"columnId\":138,\"columnName\":\"total_rooms\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"totalRooms\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:43:34', '10');
INSERT INTO `sys_oper_log` VALUES ('189', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"rooms\",\"className\":\"SelfHotelRooms\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":140,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RoomId\",\"columnComment\":\"房间ID\",\"columnId\":141,\"columnName\":\"room_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"roomId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Class\",\"columnComment\":\"房间类型\",\"columnId\":142,\"columnName\":\"class\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"class\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单号\",\"columnId\":143,\"columnName\":\"order_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"orderId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:44:32', '10');
INSERT INTO `sys_oper_log` VALUES ('190', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"cars\",\"className\":\"SelfParkingCars\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":145,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CarId\",\"columnComment\":\"车牌号\",\"columnId\":146,\"columnName\":\"car_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"carId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"InTime\",\"columnComment\":\"入场时间\",\"columnId\":147,\"columnName\":\"in_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"inTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"BETWEEN\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"OutTime\",\"columnComment\":\"出场时间\",\"columnId\":148,\"columnName\":\"out_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"outTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"q', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:45:33', '11');
INSERT INTO `sys_oper_log` VALUES ('191', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"prices\",\"className\":\"SelfVisitPrices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":151,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":29,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Class\",\"columnComment\":\"门票类型\",\"columnId\":152,\"columnName\":\"class\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"class\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":29,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"门票价格\",\"columnId\":153,\"columnName\":\"price\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"price\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":29,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"票价\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"票价表\",\"tableId\":29,\"tableName\":\"self_visit_prices\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:47:12', '7');
INSERT INTO `sys_oper_log` VALUES ('192', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"victors\",\"className\":\"SelfVisitVictors\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":154,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":30,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VisitId\",\"columnComment\":\"门票ID\",\"columnId\":155,\"columnName\":\"visit_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"visitId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":30,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":156,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":30,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ScheduledDate\",\"columnComment\":\"预约日期\",\"columnId\":157,\"columnName\":\"scheduled_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scheduledDate\",\"javaType\":\"Date\",\"list\":true,\"params\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:49:23', '16');
INSERT INTO `sys_oper_log` VALUES ('193', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"visitors\",\"className\":\"SelfVisitors\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":162,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":31,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":163,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":31,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VisitorsName\",\"columnComment\":\"游客姓名\",\"columnId\":164,\"columnName\":\"visitors_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"visitorsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":31,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PhoneNumber\",\"columnComment\":\"手机号码\",\"columnId\":165,\"columnName\":\"phone_number\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"phoneN', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 10:50:55', '11');
INSERT INTO `sys_oper_log` VALUES ('194', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances,self_complaints,self_emergencies,self_hotel_orders,self_hotel_prices,self_hotel_rooms,self_parking_cars,self_visit_prices,self_visit_victors,self_visitors\"}', null, '0', null, '2023-06-26 10:51:40', '309');
INSERT INTO `sys_oper_log` VALUES ('195', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances,self_complaints,self_emergencies,self_hotel_orders,self_hotel_prices,self_hotel_rooms,self_parking_cars,self_visit_prices,self_visit_victors,self_visitors\"}', null, '0', null, '2023-06-26 10:52:11', '192');
INSERT INTO `sys_oper_log` VALUES ('196', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_attendances', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:17', '39');
INSERT INTO `sys_oper_log` VALUES ('197', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_complaints', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:18', '28');
INSERT INTO `sys_oper_log` VALUES ('198', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_emergencies', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:19', '23');
INSERT INTO `sys_oper_log` VALUES ('199', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_hotel_orders', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:20', '17');
INSERT INTO `sys_oper_log` VALUES ('200', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_hotel_prices', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:22', '27');
INSERT INTO `sys_oper_log` VALUES ('201', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_hotel_rooms', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:23', '30');
INSERT INTO `sys_oper_log` VALUES ('202', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_parking_cars', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:24', '20');
INSERT INTO `sys_oper_log` VALUES ('203', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_visit_prices', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:25', '18');
INSERT INTO `sys_oper_log` VALUES ('204', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_visit_victors', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:27', '26');
INSERT INTO `sys_oper_log` VALUES ('205', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_visitors', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:17:28', '21');
INSERT INTO `sys_oper_log` VALUES ('206', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2044', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:12', '11');
INSERT INTO `sys_oper_log` VALUES ('207', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2045', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:14', '6');
INSERT INTO `sys_oper_log` VALUES ('208', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2048', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:16', '8');
INSERT INTO `sys_oper_log` VALUES ('209', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2047', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:18', '7');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2046', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:20', '7');
INSERT INTO `sys_oper_log` VALUES ('211', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2043', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:22', '9');
INSERT INTO `sys_oper_log` VALUES ('212', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2066', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:29', '8');
INSERT INTO `sys_oper_log` VALUES ('213', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2065', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:31', '8');
INSERT INTO `sys_oper_log` VALUES ('214', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2064', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:34', '7');
INSERT INTO `sys_oper_log` VALUES ('215', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2063', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:35', '9');
INSERT INTO `sys_oper_log` VALUES ('216', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2062', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:37', '7');
INSERT INTO `sys_oper_log` VALUES ('217', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2061', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:39', '7');
INSERT INTO `sys_oper_log` VALUES ('218', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2060', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:41', '6');
INSERT INTO `sys_oper_log` VALUES ('219', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2059', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:43', '7');
INSERT INTO `sys_oper_log` VALUES ('220', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2058', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:45', '8');
INSERT INTO `sys_oper_log` VALUES ('221', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2057', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:47', '7');
INSERT INTO `sys_oper_log` VALUES ('222', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2056', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:50', '7');
INSERT INTO `sys_oper_log` VALUES ('223', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2055', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:52', '6');
INSERT INTO `sys_oper_log` VALUES ('224', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2054', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:54', '7');
INSERT INTO `sys_oper_log` VALUES ('225', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2053', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:56', '6');
INSERT INTO `sys_oper_log` VALUES ('226', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2052', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:57', '8');
INSERT INTO `sys_oper_log` VALUES ('227', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2051', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:19:59', '8');
INSERT INTO `sys_oper_log` VALUES ('228', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2050', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:20:00', '7');
INSERT INTO `sys_oper_log` VALUES ('229', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:20:02', '7');
INSERT INTO `sys_oper_log` VALUES ('230', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":114,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":22,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:17\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeId\",\"columnComment\":\"员工ID\",\"columnId\":115,\"columnName\":\"employee_id\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":22,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:17\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnComment\":\"员工姓名\",\"columnId\":116,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":22,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:17\",\"usableColumn\":false},{\"capJavaField\":\"StateWorking\",\"columnComment\":\"考勤状态\",\"columnId\":117,\"columnName\":\"state_working\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:20:51', '21');
INSERT INTO `sys_oper_log` VALUES ('231', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"complaints\",\"className\":\"SelfComplaints\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":118,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:18\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintsId\",\"columnComment\":\"投诉ID\",\"columnId\":119,\"columnName\":\"complaints_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"complaintsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:18\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintsMessage\",\"columnComment\":\"投诉信息\",\"columnId\":120,\"columnName\":\"complaints_message\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"complaintsMessage\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:18\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintsDate\",\"columnComment\":\"投诉日期\",\"columnId\":121,\"columnName\":\"complaints_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"dateti', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:21:32', '18');
INSERT INTO `sys_oper_log` VALUES ('232', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"emergencies\",\"className\":\"SelfEmergencies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":125,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:19\",\"usableColumn\":false},{\"capJavaField\":\"Location\",\"columnComment\":\"事件地点\",\"columnId\":126,\"columnName\":\"location\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"location\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:19\",\"usableColumn\":false},{\"capJavaField\":\"EmergenciesMessage\",\"columnComment\":\"事件信息\",\"columnId\":127,\"columnName\":\"emergencies_message\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"emergenciesMessage\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:19\",\"usableColumn\":false},{\"capJavaField\":\"Department\",\"columnComment\":\"处理部门\",\"columnId\":128,\"columnName\":\"department\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:22:28', '22');
INSERT INTO `sys_oper_log` VALUES ('233', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"orders\",\"className\":\"SelfHotelOrders\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":132,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:20\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单号\",\"columnId\":133,\"columnName\":\"order_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"orderId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:20\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":134,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:20\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"酒店订单\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"2000\"},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"酒店订单表\",\"tableId\":25,\"tableName\":\"self_hot', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:22:41', '10');
INSERT INTO `sys_oper_log` VALUES ('234', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"hotel_prices\",\"className\":\"SelfHotelPrices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":135,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:22\",\"usableColumn\":false},{\"capJavaField\":\"TypeRoom\",\"columnComment\":\"房间类型\",\"columnId\":168,\"columnName\":\"type_room\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"typeRoom\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PriceRoom\",\"columnComment\":\"房间价格\",\"columnId\":169,\"columnName\":\"price_room\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"priceRoom\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TotalRooms\",\"columnComment\":\"房间总数\",\"columnId\":138,\"columnName\":\"total_rooms\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"totalRooms', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:24:00', '13');
INSERT INTO `sys_oper_log` VALUES ('235', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"rooms\",\"className\":\"SelfHotelRooms\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":140,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:23\",\"usableColumn\":false},{\"capJavaField\":\"RoomId\",\"columnComment\":\"房间号\",\"columnId\":141,\"columnName\":\"room_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"roomId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:23\",\"usableColumn\":false},{\"capJavaField\":\"TypeRoom\",\"columnComment\":\"房间类型\",\"columnId\":170,\"columnName\":\"type_room\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"typeRoom\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单号\",\"columnId\":143,\"columnName\":\"order_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"orde', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:24:35', '14');
INSERT INTO `sys_oper_log` VALUES ('236', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"cars\",\"className\":\"SelfParkingCars\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":145,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:24\",\"usableColumn\":false},{\"capJavaField\":\"CarId\",\"columnComment\":\"车牌号\",\"columnId\":146,\"columnName\":\"car_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"carId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:24\",\"usableColumn\":false},{\"capJavaField\":\"InTime\",\"columnComment\":\"入场时间\",\"columnId\":147,\"columnName\":\"in_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"inTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"BETWEEN\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:24\",\"usableColumn\":false},{\"capJavaField\":\"OutTime\",\"columnComment\":\"出场时间\",\"columnId\":148,\"columnName\":\"out_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:25:11', '15');
INSERT INTO `sys_oper_log` VALUES ('237', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"visit_prices\",\"className\":\"SelfVisitPrices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":151,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":29,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:25\",\"usableColumn\":false},{\"capJavaField\":\"TypeVisit\",\"columnComment\":\"门票类型\",\"columnId\":172,\"columnName\":\"type_visit\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"typeVisit\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":29,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PriceVisit\",\"columnComment\":\"门票价格\",\"columnId\":173,\"columnName\":\"price_visit\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"priceVisit\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":29,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"票价\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"2000\"},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"票价表\",\"tableId\":29,\"tableName\":\"self_visit_prices\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:25:51', '9');
INSERT INTO `sys_oper_log` VALUES ('238', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"victors\",\"className\":\"SelfVisitVictors\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":154,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":30,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:27\",\"usableColumn\":false},{\"capJavaField\":\"VisitId\",\"columnComment\":\"门票ID\",\"columnId\":155,\"columnName\":\"visit_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"visitId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":30,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:27\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":156,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":30,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:17:27\",\"usableColumn\":false},{\"capJavaField\":\"ScheduledDate\",\"columnComment\":\"\",\"columnId\":157,\"columnName\":\"scheduled_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isL', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:27:49', '19');
INSERT INTO `sys_oper_log` VALUES ('239', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_parking_cars', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:34:59', '21');
INSERT INTO `sys_oper_log` VALUES ('240', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_visit_prices', '127.0.0.1', '内网IP', '{}', null, '1', '同步数据失败，原表结构不存在', '2023-06-26 11:35:00', '7');
INSERT INTO `sys_oper_log` VALUES ('241', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_visit_victors', '127.0.0.1', '内网IP', '{}', null, '1', '同步数据失败，原表结构不存在', '2023-06-26 11:35:03', '6');
INSERT INTO `sys_oper_log` VALUES ('242', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_visitors', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:35:05', '22');
INSERT INTO `sys_oper_log` VALUES ('243', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_parking_cars', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:35:10', '19');
INSERT INTO `sys_oper_log` VALUES ('244', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_visit_prices', '127.0.0.1', '内网IP', '{}', null, '1', '同步数据失败，原表结构不存在', '2023-06-26 11:35:14', '7');
INSERT INTO `sys_oper_log` VALUES ('245', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/29', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:35:16', '7');
INSERT INTO `sys_oper_log` VALUES ('246', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/30', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:35:19', '6');
INSERT INTO `sys_oper_log` VALUES ('247', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"self_ticket_services,self_ticket_prices\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:35:48', '40');
INSERT INTO `sys_oper_log` VALUES ('248', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/self_visitors', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:36:23', '24');
INSERT INTO `sys_oper_log` VALUES ('249', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"hotel_prices\",\"className\":\"SelfHotelPrices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":135,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:24:00\",\"usableColumn\":false},{\"capJavaField\":\"TypeRoom\",\"columnComment\":\"房间类型\",\"columnId\":168,\"columnName\":\"type_room\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"typeRoom\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:24:00\",\"usableColumn\":false},{\"capJavaField\":\"PriceRoom\",\"columnComment\":\"房间价格\",\"columnId\":169,\"columnName\":\"price_room\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"priceRoom\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:24:00\",\"usableColumn\":false},{\"capJavaField\":\"TotalRooms\",\"columnComment\":\"房间总数\",\"columnId\":138,\"columnName\":\"total_rooms\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isIns', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:38:44', '14');
INSERT INTO `sys_oper_log` VALUES ('250', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"cars\",\"className\":\"SelfParkingCars\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":145,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:35:10\",\"usableColumn\":false},{\"capJavaField\":\"CarId\",\"columnComment\":\"车牌号\",\"columnId\":146,\"columnName\":\"car_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"carId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:35:10\",\"usableColumn\":false},{\"capJavaField\":\"CarInTime\",\"columnComment\":\"入场时间\",\"columnId\":177,\"columnName\":\"car_in_time\",\"columnType\":\"datetime\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:34:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"carInTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:35:10\",\"usableColumn\":false},{\"capJavaField\":\"CarOutTime\",\"columnComment\":\"出场时间\",\"columnId\":178,\"columnName\":\"car_out_time\",\"columnType\":\"datetime\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:34:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:39:12', '15');
INSERT INTO `sys_oper_log` VALUES ('251', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"visitors\",\"className\":\"SelfVisitors\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":162,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":31,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:36:23\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":163,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":31,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:36:23\",\"usableColumn\":false},{\"capJavaField\":\"VisitorsName\",\"columnComment\":\"游客姓名\",\"columnId\":164,\"columnName\":\"visitors_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"visitorsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":31,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:36:23\",\"usableColumn\":false},{\"capJavaField\":\"PhoneNumber\",\"columnComment\":\"手机号\",\"columnId\":165,\"columnName\":\"phone_number\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:39:54', '14');
INSERT INTO `sys_oper_log` VALUES ('252', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"cars\",\"className\":\"SelfParkingCars\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":145,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:39:12\",\"usableColumn\":false},{\"capJavaField\":\"CarId\",\"columnComment\":\"车牌号\",\"columnId\":146,\"columnName\":\"car_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"carId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:39:12\",\"usableColumn\":false},{\"capJavaField\":\"CarInTime\",\"columnComment\":\"入场时间\",\"columnId\":177,\"columnName\":\"car_in_time\",\"columnType\":\"datetime\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:34:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"carInTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"BETWEEN\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:39:12\",\"usableColumn\":false},{\"capJavaField\":\"CarOutTime\",\"columnComment\":\"出场时间\",\"columnId\":178,\"columnName\":\"car_out_time\",\"columnType\":\"datetime\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:34:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:40:07', '27');
INSERT INTO `sys_oper_log` VALUES ('253', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ticket_prices\",\"className\":\"SelfTicketPrices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":180,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeTicket\",\"columnComment\":\"门票类型\",\"columnId\":181,\"columnName\":\"type_ticket\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"typeTicket\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PriceTicket\",\"columnComment\":\"门票价格\",\"columnId\":182,\"columnName\":\"price_ticket\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"priceTicket\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"票价\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{}\",\"packageName\":\"com.ruoyi.system\",\"params\":{},\"sub\":false,\"tableComment\":\"票价表\",\"tableId\":32,\"tableName\":\"self_ticket_prices\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:40:37', '11');
INSERT INTO `sys_oper_log` VALUES ('254', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ticket_services\",\"className\":\"SelfTicketServices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":183,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TicketId\",\"columnComment\":\"门票号\",\"columnId\":184,\"columnName\":\"ticket_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"ticketId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":185,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ScheduledDate\",\"columnComment\":\"预约日期\",\"columnId\":186,\"columnName\":\"scheduled_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scheduledDate\",\"javaType\":\"Date\",\"list\":tr', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:42:12', '18');
INSERT INTO `sys_oper_log` VALUES ('255', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances,self_complaints,self_emergencies,self_hotel_orders,self_hotel_prices,self_hotel_rooms,self_parking_cars,self_visitors,self_ticket_prices,self_ticket_services\"}', null, '0', null, '2023-06-26 11:42:20', '180');
INSERT INTO `sys_oper_log` VALUES ('256', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 11:45:20', '123');
INSERT INTO `sys_oper_log` VALUES ('257', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_complaints\"}', null, '0', null, '2023-06-26 11:45:21', '32');
INSERT INTO `sys_oper_log` VALUES ('258', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_emergencies\"}', null, '0', null, '2023-06-26 11:45:22', '27');
INSERT INTO `sys_oper_log` VALUES ('259', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_hotel_orders\"}', null, '0', null, '2023-06-26 11:45:22', '29');
INSERT INTO `sys_oper_log` VALUES ('260', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_hotel_prices\"}', null, '0', null, '2023-06-26 11:45:23', '20');
INSERT INTO `sys_oper_log` VALUES ('261', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_hotel_rooms\"}', null, '0', null, '2023-06-26 11:45:24', '26');
INSERT INTO `sys_oper_log` VALUES ('262', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_parking_cars\"}', null, '0', null, '2023-06-26 11:45:25', '27');
INSERT INTO `sys_oper_log` VALUES ('263', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_visitors\"}', null, '0', null, '2023-06-26 11:45:25', '21');
INSERT INTO `sys_oper_log` VALUES ('264', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_ticket_prices\"}', null, '0', null, '2023-06-26 11:45:26', '17');
INSERT INTO `sys_oper_log` VALUES ('265', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_ticket_services\"}', null, '0', null, '2023-06-26 11:45:27', '22');
INSERT INTO `sys_oper_log` VALUES ('266', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2068', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:16', '14');
INSERT INTO `sys_oper_log` VALUES ('267', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2084', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:22', '8');
INSERT INTO `sys_oper_log` VALUES ('268', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2083', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:25', '8');
INSERT INTO `sys_oper_log` VALUES ('269', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2082', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:26', '8');
INSERT INTO `sys_oper_log` VALUES ('270', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2081', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:29', '9');
INSERT INTO `sys_oper_log` VALUES ('271', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2080', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:30', '8');
INSERT INTO `sys_oper_log` VALUES ('272', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2079', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:32', '8');
INSERT INTO `sys_oper_log` VALUES ('273', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2078', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:34', '8');
INSERT INTO `sys_oper_log` VALUES ('274', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2077', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:35', '6');
INSERT INTO `sys_oper_log` VALUES ('275', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2076', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:38', '8');
INSERT INTO `sys_oper_log` VALUES ('276', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2075', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:40', '8');
INSERT INTO `sys_oper_log` VALUES ('277', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2074', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:42', '7');
INSERT INTO `sys_oper_log` VALUES ('278', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2073', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:43', '6');
INSERT INTO `sys_oper_log` VALUES ('279', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2072', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:45', '7');
INSERT INTO `sys_oper_log` VALUES ('280', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2071', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:46', '8');
INSERT INTO `sys_oper_log` VALUES ('281', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2070', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:48', '9');
INSERT INTO `sys_oper_log` VALUES ('282', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2069', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:50', '8');
INSERT INTO `sys_oper_log` VALUES ('283', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2067', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:48:52', '7');
INSERT INTO `sys_oper_log` VALUES ('284', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ticket_services\",\"className\":\"SelfTicketServices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":183,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:42:12\",\"usableColumn\":false},{\"capJavaField\":\"TicketId\",\"columnComment\":\"门票号\",\"columnId\":184,\"columnName\":\"ticket_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"ticketId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:42:12\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":185,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:42:12\",\"usableColumn\":false},{\"capJavaField\":\"ScheduledDate\",\"columnComment\":\"预约日期\",\"columnId\":186,\"columnName\":\"scheduled_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:55:53', '37');
INSERT INTO `sys_oper_log` VALUES ('285', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ticket_prices\",\"className\":\"SelfTicketPrices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":180,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:40:36\",\"usableColumn\":false},{\"capJavaField\":\"TypeTicket\",\"columnComment\":\"门票类型\",\"columnId\":181,\"columnName\":\"type_ticket\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"typeTicket\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:40:36\",\"usableColumn\":false},{\"capJavaField\":\"PriceTicket\",\"columnComment\":\"门票价格\",\"columnId\":182,\"columnName\":\"price_ticket\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 11:35:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"priceTicket\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:40:37\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"票价\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"票价表', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:56:15', '10');
INSERT INTO `sys_oper_log` VALUES ('286', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"visitors\",\"className\":\"SelfVisitors\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":162,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":31,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:39:54\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":163,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":31,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:39:54\",\"usableColumn\":false},{\"capJavaField\":\"VisitorsName\",\"columnComment\":\"游客姓名\",\"columnId\":164,\"columnName\":\"visitors_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"visitorsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":31,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:39:54\",\"usableColumn\":false},{\"capJavaField\":\"PhoneNumber\",\"columnComment\":\"手机号\",\"columnId\":165,\"columnName\":\"phone_number\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:56:23', '20');
INSERT INTO `sys_oper_log` VALUES ('287', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"cars\",\"className\":\"SelfParkingCars\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":145,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:40:07\",\"usableColumn\":false},{\"capJavaField\":\"CarId\",\"columnComment\":\"车牌号\",\"columnId\":146,\"columnName\":\"car_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"carId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:40:07\",\"usableColumn\":false},{\"capJavaField\":\"CarInTime\",\"columnComment\":\"入场时间\",\"columnId\":177,\"columnName\":\"car_in_time\",\"columnType\":\"datetime\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:34:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"carInTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"BETWEEN\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":28,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:40:07\",\"usableColumn\":false},{\"capJavaField\":\"CarOutTime\",\"columnComment\":\"出场时间\",\"columnId\":178,\"columnName\":\"car_out_time\",\"columnType\":\"datetime\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:34:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:56:28', '15');
INSERT INTO `sys_oper_log` VALUES ('288', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"rooms\",\"className\":\"SelfHotelRooms\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":140,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:24:35\",\"usableColumn\":false},{\"capJavaField\":\"RoomId\",\"columnComment\":\"房间号\",\"columnId\":141,\"columnName\":\"room_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"roomId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:24:35\",\"usableColumn\":false},{\"capJavaField\":\"TypeRoom\",\"columnComment\":\"房间类型\",\"columnId\":170,\"columnName\":\"type_room\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"typeRoom\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:24:35\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单号\",\"columnId\":143,\"columnName\":\"order_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:56:34', '12');
INSERT INTO `sys_oper_log` VALUES ('289', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"hotel_prices\",\"className\":\"SelfHotelPrices\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":135,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:38:44\",\"usableColumn\":false},{\"capJavaField\":\"TypeRoom\",\"columnComment\":\"房间类型\",\"columnId\":168,\"columnName\":\"type_room\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"typeRoom\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:38:44\",\"usableColumn\":false},{\"capJavaField\":\"PriceRoom\",\"columnComment\":\"房间价格\",\"columnId\":169,\"columnName\":\"price_room\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-06-26 11:17:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"priceRoom\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:38:44\",\"usableColumn\":false},{\"capJavaField\":\"TotalRooms\",\"columnComment\":\"房间总数\",\"columnId\":138,\"columnName\":\"total_rooms\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isIns', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:56:45', '13');
INSERT INTO `sys_oper_log` VALUES ('290', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"orders\",\"className\":\"SelfHotelOrders\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":132,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:22:41\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单号\",\"columnId\":133,\"columnName\":\"order_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"orderId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:22:41\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":134,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:22:41\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"酒店订单\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"2000\"},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"酒店订单表\",\"tableId\":25,\"tableName\":\"self_hot', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:56:52', '10');
INSERT INTO `sys_oper_log` VALUES ('291', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"emergencies\",\"className\":\"SelfEmergencies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":125,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:22:28\",\"usableColumn\":false},{\"capJavaField\":\"Location\",\"columnComment\":\"事件地点\",\"columnId\":126,\"columnName\":\"location\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"location\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:22:28\",\"usableColumn\":false},{\"capJavaField\":\"EmergenciesMessage\",\"columnComment\":\"事件信息\",\"columnId\":127,\"columnName\":\"emergencies_message\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"emergenciesMessage\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:22:28\",\"usableColumn\":false},{\"capJavaField\":\"Department\",\"columnComment\":\"处理部门\",\"columnId\":128,\"columnName\":\"department\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:56:56', '18');
INSERT INTO `sys_oper_log` VALUES ('292', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"attendances\",\"className\":\"SelfAttendances\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":114,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":22,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:20:51\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeId\",\"columnComment\":\"员工ID\",\"columnId\":115,\"columnName\":\"employee_id\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":22,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:20:51\",\"usableColumn\":false},{\"capJavaField\":\"EmployeeName\",\"columnComment\":\"员工姓名\",\"columnId\":116,\"columnName\":\"employee_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"employeeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":22,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:20:51\",\"usableColumn\":false},{\"capJavaField\":\"StateWorking\",\"columnComment\":\"考勤状态\",\"columnId\":117,\"columnName\":\"state_working\",\"columnType\":\"varchar(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:57:00', '12');
INSERT INTO `sys_oper_log` VALUES ('293', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances,self_complaints,self_emergencies,self_hotel_orders,self_hotel_prices,self_hotel_rooms,self_parking_cars,self_visitors,self_ticket_prices,self_ticket_services\"}', null, '0', null, '2023-06-26 11:57:05', '294');
INSERT INTO `sys_oper_log` VALUES ('294', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2092', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:17', '17');
INSERT INTO `sys_oper_log` VALUES ('295', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2093', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:20', '9');
INSERT INTO `sys_oper_log` VALUES ('296', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2094', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:24', '8');
INSERT INTO `sys_oper_log` VALUES ('297', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2087', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:26', '9');
INSERT INTO `sys_oper_log` VALUES ('298', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2088', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:28', '7');
INSERT INTO `sys_oper_log` VALUES ('299', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2089', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:31', '9');
INSERT INTO `sys_oper_log` VALUES ('300', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2086', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:34', '8');
INSERT INTO `sys_oper_log` VALUES ('301', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2090', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:36', '7');
INSERT INTO `sys_oper_log` VALUES ('302', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2085', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:38', '8');
INSERT INTO `sys_oper_log` VALUES ('303', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2095', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:54', '6');
INSERT INTO `sys_oper_log` VALUES ('304', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2096', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:57', '7');
INSERT INTO `sys_oper_log` VALUES ('305', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2091', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 11:59:59', '7');
INSERT INTO `sys_oper_log` VALUES ('306', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 12:00:06', '8');
INSERT INTO `sys_oper_log` VALUES ('307', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 12:00:08', '8');
INSERT INTO `sys_oper_log` VALUES ('308', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 12:00:10', '7');
INSERT INTO `sys_oper_log` VALUES ('309', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2099', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 12:00:11', '8');
INSERT INTO `sys_oper_log` VALUES ('310', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2098', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 12:00:13', '10');
INSERT INTO `sys_oper_log` VALUES ('311', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2097', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 12:00:15', '8');
INSERT INTO `sys_oper_log` VALUES ('312', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances\"}', null, '0', null, '2023-06-26 12:00:57', '134');
INSERT INTO `sys_oper_log` VALUES ('313', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_complaints\"}', null, '0', null, '2023-06-26 12:00:58', '35');
INSERT INTO `sys_oper_log` VALUES ('314', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_emergencies\"}', null, '0', null, '2023-06-26 12:00:58', '42');
INSERT INTO `sys_oper_log` VALUES ('315', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_hotel_orders\"}', null, '0', null, '2023-06-26 12:00:59', '25');
INSERT INTO `sys_oper_log` VALUES ('316', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_hotel_prices\"}', null, '0', null, '2023-06-26 12:00:59', '22');
INSERT INTO `sys_oper_log` VALUES ('317', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_hotel_rooms\"}', null, '0', null, '2023-06-26 12:01:00', '29');
INSERT INTO `sys_oper_log` VALUES ('318', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_parking_cars\"}', null, '0', null, '2023-06-26 12:01:01', '27');
INSERT INTO `sys_oper_log` VALUES ('319', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_visitors\"}', null, '0', null, '2023-06-26 12:01:02', '21');
INSERT INTO `sys_oper_log` VALUES ('320', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_ticket_prices\"}', null, '0', null, '2023-06-26 12:01:02', '22');
INSERT INTO `sys_oper_log` VALUES ('321', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_ticket_services\"}', null, '0', null, '2023-06-26 12:01:06', '20');
INSERT INTO `sys_oper_log` VALUES ('322', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/complaints/index\",\"createTime\":\"2023-06-26 12:02:18\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2109,\"menuName\":\"投诉\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"complaints\",\"perms\":\"system:complaints:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 12:03:26', '15');
INSERT INTO `sys_oper_log` VALUES ('323', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2114', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:08', '36');
INSERT INTO `sys_oper_log` VALUES ('324', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2113', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:10', '13');
INSERT INTO `sys_oper_log` VALUES ('325', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2112', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:11', '9');
INSERT INTO `sys_oper_log` VALUES ('326', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2111', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:13', '10');
INSERT INTO `sys_oper_log` VALUES ('327', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2110', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:14', '9');
INSERT INTO `sys_oper_log` VALUES ('328', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:16', '11');
INSERT INTO `sys_oper_log` VALUES ('329', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2108', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:19', '10');
INSERT INTO `sys_oper_log` VALUES ('330', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2107', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:20', '10');
INSERT INTO `sys_oper_log` VALUES ('331', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:22', '10');
INSERT INTO `sys_oper_log` VALUES ('332', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:24', '9');
INSERT INTO `sys_oper_log` VALUES ('333', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2106', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:26', '9');
INSERT INTO `sys_oper_log` VALUES ('334', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 13:19:27', '8');
INSERT INTO `sys_oper_log` VALUES ('335', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_attendances,self_complaints,self_emergencies,self_hotel_orders,self_hotel_prices,self_hotel_rooms,self_parking_cars,self_visitors,self_ticket_prices,self_ticket_services\"}', null, '0', null, '2023-06-26 13:19:36', '426');
INSERT INTO `sys_oper_log` VALUES ('336', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/complaints/index\",\"createBy\":\"admin\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"投诉菜单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"complaints\",\"perms\":\"system:complaints:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:12:33', '15');
INSERT INTO `sys_oper_log` VALUES ('337', '投诉', '1', 'com.ruoyi.web.controller.system.SelfComplaintsController.add()', 'POST', '1', 'admin', null, '/system/complaints', '127.0.0.1', '内网IP', '{\"complaintsDate\":\"2023-06-06\",\"complaintsId\":11111,\"complaintsMessage\":\"红红火火恍恍惚惚fu\",\"complaintsReplyDate\":\"2023-06-28\",\"complaintsReplyMessage\":\"爱啊哎\",\"id\":1,\"params\":{},\"stateComplaints\":\"事实上是\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:14:22', '9');
INSERT INTO `sys_oper_log` VALUES ('338', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2116', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:14:36', '11');
INSERT INTO `sys_oper_log` VALUES ('339', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2117', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:14:37', '7');
INSERT INTO `sys_oper_log` VALUES ('340', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2118', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:14:39', '8');
INSERT INTO `sys_oper_log` VALUES ('341', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2119', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:14:41', '7');
INSERT INTO `sys_oper_log` VALUES ('342', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2120', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:14:43', '7');
INSERT INTO `sys_oper_log` VALUES ('343', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendances/index\",\"createTime\":\"2023-06-26 14:02:20\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2115,\"menuName\":\"考勤信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"attendances\",\"perms\":\"system:attendances:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:14:55', '6');
INSERT INTO `sys_oper_log` VALUES ('344', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/emergencies/index\",\"createBy\":\"admin\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"事件处理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"emergencies\",\"perms\":\"system:emergencies:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:16:21', '5');
INSERT INTO `sys_oper_log` VALUES ('345', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/orders/index\",\"createBy\":\"admin\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"酒店订单\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2000,\"path\":\"orders\",\"perms\":\"system:orders:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:17:23', '5');
INSERT INTO `sys_oper_log` VALUES ('346', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/hotel_prices/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"酒店价格\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2000,\"path\":\"hotel_prices\",\"perms\":\"system:hotel_prices:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:17:59', '7');
INSERT INTO `sys_oper_log` VALUES ('347', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/rooms/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"酒店房间\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":2000,\"path\":\"rooms\",\"perms\":\"system:rooms:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:18:40', '6');
INSERT INTO `sys_oper_log` VALUES ('348', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/cars/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"停车场管理\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":2000,\"path\":\"cars\",\"perms\":\"system:cars:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:19:36', '5');
INSERT INTO `sys_oper_log` VALUES ('349', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/hotel_prices/index\",\"createTime\":\"2023-06-26 14:17:59\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2124,\"menuName\":\"酒店价格\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2000,\"path\":\"hotel_prices\",\"perms\":\"system:hotel_prices:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:19:42', '6');
INSERT INTO `sys_oper_log` VALUES ('350', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/rooms/index\",\"createTime\":\"2023-06-26 14:18:40\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2125,\"menuName\":\"酒店房间\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":2000,\"path\":\"rooms\",\"perms\":\"system:rooms:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:19:46', '5');
INSERT INTO `sys_oper_log` VALUES ('351', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/cars/index\",\"createTime\":\"2023-06-26 14:19:35\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2126,\"menuName\":\"停车场管理\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":2000,\"path\":\"cars\",\"perms\":\"system:cars:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:19:50', '5');
INSERT INTO `sys_oper_log` VALUES ('352', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/visitors/index\",\"createBy\":\"admin\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"游客信息\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":2000,\"path\":\"visitors\",\"perms\":\"system:visitors:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:20:30', '6');
INSERT INTO `sys_oper_log` VALUES ('353', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/ticket_prices/index\",\"createBy\":\"admin\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"门票信息\",\"menuType\":\"C\",\"orderNum\":9,\"params\":{},\"parentId\":2000,\"path\":\"ticket_prices\",\"perms\":\"system:ticket_prices:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:21:22', '6');
INSERT INTO `sys_oper_log` VALUES ('354', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/ticket_services/index\",\"createBy\":\"admin\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"票务管理\",\"menuType\":\"C\",\"orderNum\":10,\"params\":{},\"parentId\":2000,\"path\":\"ticket_services\",\"perms\":\"system:ticket_services:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 14:22:25', '6');
INSERT INTO `sys_oper_log` VALUES ('355', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"酒店管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"hotel\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 16:28:28', '8');
INSERT INTO `sys_oper_log` VALUES ('356', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/order/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"酒店订单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2130,\"path\":\"order\",\"perms\":\"system:order:index\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 16:29:20', '8');
INSERT INTO `sys_oper_log` VALUES ('357', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/orders/index\",\"createTime\":\"2023-06-26 16:29:20\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2131,\"menuName\":\"酒店订单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2130,\"path\":\"order\",\"perms\":\"system:orders:index\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 16:30:03', '9');
INSERT INTO `sys_oper_log` VALUES ('358', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"hotel/orders/index\",\"createTime\":\"2023-06-26 16:29:20\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2131,\"menuName\":\"酒店订单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2130,\"path\":\"order\",\"perms\":\"hotel:orders:index\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 16:33:26', '8');
INSERT INTO `sys_oper_log` VALUES ('359', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"orders\",\"className\":\"SelfHotelOrders\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":132,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:56:52\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单号\",\"columnId\":133,\"columnName\":\"order_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"orderId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:56:52\",\"usableColumn\":false},{\"capJavaField\":\"CnId\",\"columnComment\":\"身份证号\",\"columnId\":134,\"columnName\":\"cn_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-26 10:36:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cnId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"updateTime\":\"2023-06-26 11:56:52\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"酒店订单\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"hotel\",\"options\":\"{\\\"parentMenuId\\\":2130}\",\"packageName\":\"com.ruoyi.hotel\",\"params\":{\"parentMenuId\":2130},\"parentMenuId\":\"2130\",\"sub\":false,\"tableComment\":\"酒店订单表\",\"tableId\":25,\"tableName\":\"self_hotel_order', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 16:34:39', '20');
INSERT INTO `sys_oper_log` VALUES ('360', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"self_hotel_orders\"}', null, '0', null, '2023-06-26 16:34:43', '151');
INSERT INTO `sys_oper_log` VALUES ('361', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2123', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 16:43:02', '14');
INSERT INTO `sys_oper_log` VALUES ('362', '酒店订单', '1', 'com.ruoyi.web.controller.hotel.SelfHotelOrdersController.add()', 'POST', '1', 'admin', null, '/hotel/orders', '127.0.0.1', '内网IP', '{\"cnId\":\"12456\",\"id\":1,\"orderId\":12345,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 16:43:33', '16');
INSERT INTO `sys_oper_log` VALUES ('363', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"hotel/reservation/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"酒店预约\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2130,\"path\":\"reservation\",\"perms\":\"hotel:reservation:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 16:44:36', '47');
INSERT INTO `sys_oper_log` VALUES ('364', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"hotel/checkout/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"酒店退房\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2130,\"path\":\"checkout\",\"perms\":\"hotel:checkout:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-26 16:52:58', '11');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2023-06-23 16:06:59', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2023-06-23 16:06:59', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2023-06-23 16:06:59', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2023-06-23 16:06:59', '', null, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '117');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-06-27 08:57:06', 'admin', '2023-06-23 16:06:59', '', '2023-06-27 08:57:06', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-06-23 16:06:59', 'admin', '2023-06-23 16:06:59', '', null, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
