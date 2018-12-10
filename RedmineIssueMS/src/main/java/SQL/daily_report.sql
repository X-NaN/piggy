/*
Navicat MySQL Data Transfer

Source Server         : 本地MySQL数据库PW1234
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : daily_report

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-10-10 19:55:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_code` varchar(30) NOT NULL,
  `country_name_ch` varchar(60) DEFAULT NULL,
  `country_name_en` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('CHL', '智利', null);
INSERT INTO `country` VALUES ('CN', '中国', null);
INSERT INTO `country` VALUES ('IDN', '印尼', null);
INSERT INTO `country` VALUES ('IND', '印度', null);
INSERT INTO `country` VALUES ('ITA', '意大利', null);
INSERT INTO `country` VALUES ('MMR', '缅甸', null);
INSERT INTO `country` VALUES ('RUS', '俄罗斯', null);
INSERT INTO `country` VALUES ('UKR', '乌克兰', null);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `parent_code` varchar(4) NOT NULL COMMENT '父类编码',
  `parent_name` varchar(50) DEFAULT NULL,
  `code` varchar(4) NOT NULL COMMENT '部门编码',
  `name` varchar(50) DEFAULT NULL,
  `des` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`parent_code`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('0401', '外场测试部', '0501', '海外场测', null);
INSERT INTO `department` VALUES ('0401', '外场测试部', '0502', '国内场测', null);
INSERT INTO `department` VALUES ('0402', '海外与运营商测试部', '0503', '外网现网测试', null);
INSERT INTO `department` VALUES ('0402', '海外与运营商测试部', '0504', '海外项目测试', null);
INSERT INTO `department` VALUES ('0402', '海外与运营商测试部', '0505', '移动入库', null);
INSERT INTO `department` VALUES ('0402', '海外与运营商测试部', '0506', '电信联通入库', null);
INSERT INTO `department` VALUES ('0403', '测试规划部', 'null', 'null', null);
INSERT INTO `department` VALUES ('0404', 'ODM测试部', '0507', 'VPM', null);
INSERT INTO `department` VALUES ('0404', 'ODM测试部', '0508', '软件验收', null);
INSERT INTO `department` VALUES ('0405', '系统测试部', '0509', '相机测试组', null);
INSERT INTO `department` VALUES ('0405', '系统测试部', '0510', '测试平台', null);
INSERT INTO `department` VALUES ('0405', '系统测试部', '0511', '项目测试组', null);
INSERT INTO `department` VALUES ('0405', '系统测试部', '0512', '通讯测试组', null);
INSERT INTO `department` VALUES ('0405', '系统测试部', '0513', '系统优化测试组', null);
INSERT INTO `department` VALUES ('0405', '系统测试部', '0514', '无线测试组', null);
INSERT INTO `department` VALUES ('0405', '系统测试部', '0515', '驱动测试组', null);

-- ----------------------------
-- Table structure for hardware_info
-- ----------------------------
DROP TABLE IF EXISTS `hardware_info`;
CREATE TABLE `hardware_info` (
  `hardware_id` int(11) NOT NULL,
  `hardware_name` varchar(30) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hardware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hardware_info
-- ----------------------------
INSERT INTO `hardware_info` VALUES ('1', '三星', null);
INSERT INTO `hardware_info` VALUES ('2', '高通', null);
INSERT INTO `hardware_info` VALUES ('3', 'MTK', null);
INSERT INTO `hardware_info` VALUES ('4', '展讯', null);

-- ----------------------------
-- Table structure for issue_priority
-- ----------------------------
DROP TABLE IF EXISTS `issue_priority`;
CREATE TABLE `issue_priority` (
  `priority_id` varchar(6) NOT NULL,
  `priority_name` varchar(20) NOT NULL,
  PRIMARY KEY (`priority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue_priority
-- ----------------------------
INSERT INTO `issue_priority` VALUES ('3', '低');
INSERT INTO `issue_priority` VALUES ('4', '普通');
INSERT INTO `issue_priority` VALUES ('5', '高');
INSERT INTO `issue_priority` VALUES ('6', '紧急');
INSERT INTO `issue_priority` VALUES ('7', '立刻');

-- ----------------------------
-- Table structure for issue_status
-- ----------------------------
DROP TABLE IF EXISTS `issue_status`;
CREATE TABLE `issue_status` (
  `status_id` varchar(6) NOT NULL,
  `status_name` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue_status
-- ----------------------------
INSERT INTO `issue_status` VALUES ('1', '新建');
INSERT INTO `issue_status` VALUES ('10', '问题无效');
INSERT INTO `issue_status` VALUES ('11', '暂不处理');
INSERT INTO `issue_status` VALUES ('12', '无法重现');
INSERT INTO `issue_status` VALUES ('13', '无法解决');
INSERT INTO `issue_status` VALUES ('15', '已验证');
INSERT INTO `issue_status` VALUES ('2', '进行中');
INSERT INTO `issue_status` VALUES ('23', '问题重复');
INSERT INTO `issue_status` VALUES ('24', '通过');
INSERT INTO `issue_status` VALUES ('25', '不通过');
INSERT INTO `issue_status` VALUES ('26', 'Dev已验证');
INSERT INTO `issue_status` VALUES ('27', '不解决');
INSERT INTO `issue_status` VALUES ('28', '被阻挡');
INSERT INTO `issue_status` VALUES ('29', '待办');
INSERT INTO `issue_status` VALUES ('3', '已解决');
INSERT INTO `issue_status` VALUES ('30', '方案评估');
INSERT INTO `issue_status` VALUES ('31', '交互设计');
INSERT INTO `issue_status` VALUES ('32', '视觉设计');
INSERT INTO `issue_status` VALUES ('33', '开发编码');
INSERT INTO `issue_status` VALUES ('34', '产品验证');
INSERT INTO `issue_status` VALUES ('35', '测试验证');
INSERT INTO `issue_status` VALUES ('36', '问题修复');
INSERT INTO `issue_status` VALUES ('37', '待验收');
INSERT INTO `issue_status` VALUES ('38', '产品验收');
INSERT INTO `issue_status` VALUES ('39', '待发布');
INSERT INTO `issue_status` VALUES ('40', '发布推送');
INSERT INTO `issue_status` VALUES ('41', '用户验收');
INSERT INTO `issue_status` VALUES ('5', '已关闭');
INSERT INTO `issue_status` VALUES ('7', '已完成');
INSERT INTO `issue_status` VALUES ('8', '重新打开');
INSERT INTO `issue_status` VALUES ('9', '已分配');

-- ----------------------------
-- Table structure for module_type
-- ----------------------------
DROP TABLE IF EXISTS `module_type`;
CREATE TABLE `module_type` (
  `id` varchar(4) NOT NULL COMMENT '模块类型Id',
  `name` varchar(30) DEFAULT NULL COMMENT '类型名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_type
-- ----------------------------
INSERT INTO `module_type` VALUES ('001', '基本模块');
INSERT INTO `module_type` VALUES ('002', '待机');
INSERT INTO `module_type` VALUES ('003', 'Monkey');
INSERT INTO `module_type` VALUES ('004', '发布项');
INSERT INTO `module_type` VALUES ('005', '充电专项');
INSERT INTO `module_type` VALUES ('006', 'PA_通讯');
INSERT INTO `module_type` VALUES ('007', 'PA_无线');
INSERT INTO `module_type` VALUES ('008', 'PA_多媒体');
INSERT INTO `module_type` VALUES ('009', 'PA_系统应用');
INSERT INTO `module_type` VALUES ('010', 'PA_Google应用');
INSERT INTO `module_type` VALUES ('011', 'PA_专项测试');

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id` varchar(11) NOT NULL COMMENT '通知Id',
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(1000) NOT NULL COMMENT '通知内容',
  `type` varchar(30) NOT NULL COMMENT '通知类型（重复/仅一次）',
  `day_of_week` varchar(30) DEFAULT NULL COMMENT '周几',
  `dingding_group` varchar(50) DEFAULT NULL COMMENT '群组',
  `robot_id` varchar(5) NOT NULL COMMENT '机器人Id',
  `send_time` varchar(50) DEFAULT NULL COMMENT '发送时间',
  `status` varchar(20) NOT NULL COMMENT '状态（启动、未启用、已发送）',
  `publisher_id` varchar(30) DEFAULT NULL COMMENT '发布人Id',
  `publish_time` varchar(50) DEFAULT NULL COMMENT '发布时间',
  `at_mobiles` varchar(1000) DEFAULT NULL,
  `locked` char(1) DEFAULT NULL COMMENT '是否锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES ('000002', '测试2', '哈哈哈', '定时', 'Friday', '测试群', '0001', '10:33:04', '启用', 'xingnana', '2018/09/30 10:28:19', '@15802887885, @13543017175', '0');
INSERT INTO `notification` VALUES ('000003', '测试2', '哈哈哈', '定时', 'Saturday', '测试群', '0001', '10:33:04', '启用', 'xingnana', '2018/09/30 10:28:19', '@15802887885, @13543017175', '0');
INSERT INTO `notification` VALUES ('000004', '测试2', '耶耶耶耶周三', '定时', 'Wednesday', '测试群', '0001', '10:50:10', '启用', 'xingnana', '2018/09/19 10:49:30', '@15802887885, @13543017175, @13536566930', '0');
INSERT INTO `notification` VALUES ('000006', '测试', '坎坎坷坷来来来', '定时', 'Wednesday', '测试群', '0001', '10:46:10', '启用', 'xingnana', '2018/09/30 10:41:54', '@15802887885, @13543017175, @18826214834, @18840460627', '0');
INSERT INTO `notification` VALUES ('000007', '测试', '坎坎坷坷来来来', '定时', 'Thursday', '测试群', '0001', '10:46:10', '启用', 'xingnana', '2018/09/30 10:41:54', '@15802887885, @13543017175, @18826214834, @18840460627', '0');

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `parent_code` varchar(10) DEFAULT NULL COMMENT '父类编码',
  `department_code` varchar(10) DEFAULT NULL COMMENT '部门编号',
  `name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `des` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('01', '01', '手机研发中心', '');
INSERT INTO `organization` VALUES ('02', '02', 'Flyme事业部', '');
INSERT INTO `organization` VALUES ('01', '0101', '软件测试部', '');
INSERT INTO `organization` VALUES ('0101', '010101', '外场测试部', '');
INSERT INTO `organization` VALUES ('0101', '010102', '海外与运营商测试部', '');
INSERT INTO `organization` VALUES ('0101', '010103', '测试规划部', '');
INSERT INTO `organization` VALUES ('0101', '010104', 'ODM测试部', '');
INSERT INTO `organization` VALUES ('0101', '010105', '系统测试部', '');
INSERT INTO `organization` VALUES ('010102', '01010201', '海外现网测试', '');
INSERT INTO `organization` VALUES ('010102', '01010202', '海外项目测试', '');
INSERT INTO `organization` VALUES ('010102', '01010203', '移动入库', '');
INSERT INTO `organization` VALUES ('010102', '01010204', '电信联通入库', '');
INSERT INTO `organization` VALUES ('010101', '01010101', '海外场测', '');
INSERT INTO `organization` VALUES ('010101', '01010102', '国内场测', '');
INSERT INTO `organization` VALUES ('010104', '01010401', 'VPM', '');
INSERT INTO `organization` VALUES ('010104', '01010402', '软件验收', '');
INSERT INTO `organization` VALUES ('010105', '01010501', '项目测试组', '');
INSERT INTO `organization` VALUES ('010105', '01010502', '相机测试组', '');
INSERT INTO `organization` VALUES ('010105', '01010503', '测试平台', '');
INSERT INTO `organization` VALUES ('010105', '01010504', '通讯测试组', '');
INSERT INTO `organization` VALUES ('010105', '01010505', '系统优化测试组', '');
INSERT INTO `organization` VALUES ('010105', '01010506', '无线测试组', '');
INSERT INTO `organization` VALUES ('010105', '01010507', '驱动测试组', '');

-- ----------------------------
-- Table structure for outtest_country
-- ----------------------------
DROP TABLE IF EXISTS `outtest_country`;
CREATE TABLE `outtest_country` (
  `project_id` varchar(30) NOT NULL,
  `round_id` varchar(5) NOT NULL,
  `country_code` varchar(30) NOT NULL,
  `country_name_ch` varchar(50) DEFAULT NULL,
  `region_id` varchar(30) NOT NULL,
  `region_name_ch` varchar(50) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `test_cycle` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`project_id`,`round_id`,`country_code`,`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outtest_country
-- ----------------------------
INSERT INTO `outtest_country` VALUES ('m1813-intl', '1', 'RUS', '俄罗斯', '1', '莫斯科', '2018-08-07 00:00:00', '2018-08-13 00:00:00', '7', '测试中', '');
INSERT INTO `outtest_country` VALUES ('m1813-intl', '1', 'UKR', '乌克兰', '2', '基辅', '2018-08-07 00:00:00', '2018-08-13 00:00:00', '7', '测试中', '');
INSERT INTO `outtest_country` VALUES ('m1872-intl', '1', 'RUS', '俄罗斯', '1', '莫斯科', '2018-08-15 00:00:00', '2018-08-21 00:00:00', '7', '已完成', '');
INSERT INTO `outtest_country` VALUES ('m1872-intl', '1', 'UKR', '乌克兰', '2', '基辅', '2018-08-15 00:00:00', '2018-08-21 00:00:00', '7', '已完成', '');
INSERT INTO `outtest_country` VALUES ('m1882-intl', '1', 'RUS', '俄罗斯', '1', '莫斯科', '2018-07-30 00:00:00', '2018-08-05 00:00:00', '7', '已完成', '');
INSERT INTO `outtest_country` VALUES ('m1882-intl', '1', 'UKR', '乌克兰', '2', '基辅', '2018-07-30 00:00:00', '2018-08-05 00:00:00', '7', '已完成', '');

-- ----------------------------
-- Table structure for out_library_issue_list
-- ----------------------------
DROP TABLE IF EXISTS `out_library_issue_list`;
CREATE TABLE `out_library_issue_list` (
  `project_id` varchar(30) NOT NULL,
  `project_name` varchar(30) NOT NULL,
  `issue_id` varchar(6) NOT NULL,
  `to_project_id` varchar(30) DEFAULT NULL COMMENT '转去项目Id',
  `to_project_name` varchar(30) DEFAULT NULL,
  `is_ignore` char(1) DEFAULT NULL COMMENT '是否删除（0：未删除，1：删除）',
  PRIMARY KEY (`issue_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of out_library_issue_list
-- ----------------------------
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '795912', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '801363', '696', '状态栏', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '801560', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '804157', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '804165', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '804745', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '804920', '426', '天气', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '805249', '594', '控件规范', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '805453', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '805941', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '805944', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '805955', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '806146', '2357', 'Flyme海外版快稳省', '1');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '806750', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '806771', '1607', '海外应用商店', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '806950', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '807043', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '807252', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '807330', '1607', '海外应用商店', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '807346', '1607', '海外应用商店', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '807651', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '807886', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '807892', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '807899', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '807965', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808032', '692', '锁屏', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808046', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808339', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808381', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808450', '693', '通知中心', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808451', '641', '数据云同步', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808456', '1270', '账号中心', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808461', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808464', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808472', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808510', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808637', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808645', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '808756', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '808791', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809125', '1607', '海外应用商店', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809127', '601', 'WLAN', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809134', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809135', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809136', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809137', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809138', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809412', '1344', '文件传输', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809416', '1344', '文件传输', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809474', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809478', '1344', '文件传输', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809479', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809580', '452', '日历', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809581', '641', '数据云同步', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809620', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809638', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809673', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809836', '641', '数据云同步', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809875', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809920', '1607', '海外应用商店', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809962', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809969', '591', '通话&通话设置', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '809974', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809975', '693', '通知中心', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809978', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809979', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '809993', '594', '控件规范', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '810435', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '810566', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '811747', '720', 'BSP', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '811794', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '812018', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '812680', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '812682', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '813012', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '813330', '2386', 'M1816 INTL', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '813934', '693', '通知中心', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '814238', '662', 'SystemUI', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '814263', '1795', '海外全局搜索', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '815071', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '815386', '2389', 'M1882 INTL', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '815650', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '815654', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '815658', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '815724', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '815744', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '816348', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '816512', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '816848', '693', '通知中心', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '816929', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1882-intl', 'M1882 INTL', '817077', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '817163', '2389', 'M1882 INTL', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '817259', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1813-intl', 'M1813 INTL', '817705', '618', '浏览器', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '819171', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '819178', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '819181', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '819346', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '819920', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '819932', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '819936', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820003', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820619', '1927', '性能优化', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820620', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820621', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820626', '720', 'BSP', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820635', '591', '通话&通话设置', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820650', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820804', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820806', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820807', '579', 'Flyme', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820810', '591', '通话&通话设置', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820811', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '820814', '720', 'BSP', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '821751', '720', 'BSP', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '821752', '720', 'BSP', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '821755', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '821756', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '821757', '720', 'BSP', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '821758', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '822539', '1344', '文件传输', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '822542', '591', '通话&通话设置', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '822544', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '822545', '689', 'Modem', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '825022', '646', '音乐', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1872-intl', 'M1872 INTL', '825069', '452', '日历', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1822intl', 'M1822 INTL', '827424', '1343', 'Flyme 海外版', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1822intl', 'M1822 INTL', '833565', '520', '音频框架', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1822intl', 'M1822 INTL', '834460', '703', '时钟', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1822intl', 'M1822 INTL', '834882', '591', '通话&通话设置', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1822intl', 'M1822 INTL', '834883', '2357', 'Flyme海外版快稳省', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1822intl', 'M1822 INTL', '834975', '2195', 'M1822', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1822intl', 'M1822 INTL', '835010', '647', '视频', '0');
INSERT INTO `out_library_issue_list` VALUES ('m1822intl', 'M1822 INTL', '835597', '1353', '联系人&拨号盘', '0');

-- ----------------------------
-- Table structure for project_info
-- ----------------------------
DROP TABLE IF EXISTS `project_info`;
CREATE TABLE `project_info` (
  `project_id` varchar(30) NOT NULL,
  `project_name` varchar(30) NOT NULL,
  `project_outer_name` varchar(30) DEFAULT NULL,
  `project_status` varchar(30) DEFAULT NULL,
  `risk_level` varchar(30) DEFAULT NULL,
  `project_type` varchar(30) DEFAULT NULL,
  `hardware_platform` varchar(50) DEFAULT NULL,
  `platform_model` varchar(50) DEFAULT NULL,
  `leader_id` varchar(30) DEFAULT NULL COMMENT '总负责人(user_id）',
  `project_leader_id` varchar(30) DEFAULT NULL COMMENT '项目负责人(user_id)',
  `project_approval_period` varchar(100) DEFAULT NULL,
  `project_approval_status` varchar(30) DEFAULT NULL,
  `bringUp_period` varchar(100) DEFAULT NULL,
  `bringUp_status` varchar(30) DEFAULT NULL,
  `sdv_period` varchar(100) DEFAULT NULL,
  `sdv_status` varchar(30) DEFAULT NULL,
  `mandatory_certification_period` varchar(100) DEFAULT NULL,
  `mandatory_certification_status` varchar(30) DEFAULT NULL,
  `sit_period` varchar(100) DEFAULT NULL,
  `sit_status` varchar(30) DEFAULT NULL,
  `network_test_period` varchar(100) DEFAULT NULL,
  `network_test_status` varchar(30) DEFAULT NULL,
  `mpt_period` varchar(100) DEFAULT NULL,
  `mpt_status` varchar(30) DEFAULT NULL,
  `lvt_period` varchar(100) DEFAULT NULL,
  `lvt_status` varchar(30) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_info
-- ----------------------------
INSERT INTO `project_info` VALUES ('m1813-intl', 'M1813 INTL', 'Meizu M8', 'Going', '/', '海外', 'MTK', 'MT6762', 'zhenglu', null, '2018/05/25-2018/05/25', 'Finished', '-', 'Finished', '2018/05/31-2018/07/13', 'Going', '-', 'Open', '2018/07/16-2018/08/17', 'Open', '2018/08/07-2018/08/13', 'Open', '2018/08/20-2018/09/21', 'Open', '2018/09/22-2018/09/27', 'Open', '项目负责人：');
INSERT INTO `project_info` VALUES ('m1816-intl', 'M1816 INTL', 'V8', 'Going', '/', '海外', 'MTK', 'MT6739CW', 'zhenglu', null, '-', 'Finished', '-', 'Finished', '2018/05/21-2018/06/15', 'Finished', '-', 'Open', '2018/06/18-2018/07/20', 'Going', '-', 'Open', '2018/07/23-2018/08/24', 'Open', '2018/08/27-2018/09/17', 'Open', '');
INSERT INTO `project_info` VALUES ('m1818', 'M1818', 'Meizu M9c', 'Going', '低', '海外', '展讯', 'MaliT820 MP1 @ 650MH', 'zhenglu', 'chenli', '-', 'Finished', '2018/06/01-2018/06/18', 'Finished', '2018/06/29-2018/07/17', 'Finished', '2018/06/25-2018/09/04', 'Open', '2018/07/18-2018/08/10', 'Going', '2018/08/11-2018/08/21', 'Open', '2018/08/13-2018/09/01', 'Open', '2018/09/03-2018/09/11', 'Open', '');
INSERT INTO `project_info` VALUES ('m1822intl', 'M1822 INTL', '魅蓝Note 8', 'Going', '/', '海外', '高通', '骁龙632', 'zhenglu', 'gaoguofang', '-', 'Finished', '-', 'Finished', '2018/07/23-2018/08/18', 'Finished', '2018/06/23-2018/08/31', 'Going', '2018/08/19-2018/09/23', 'Going', '2018/09/12-2018/09/21', 'Open', '2018/09/24-2018/10/26', 'Open', '2018/10/28-2018/11/10', 'Open', '');
INSERT INTO `project_info` VALUES ('m1852_intl', 'M1852 INTL', '魅蓝 noteX', 'Going', '/', '海外', '高通', '骁龙670', 'zhenglu', null, '2018/05/10-2018/05/10', 'Finished', '2018/04/16-2018/06/15', 'Finished', '2018/07/23-2018/08/21', 'Going', '2018/08/13-2018/11/13', 'Open', '2018/08/22-2018/09/30', 'Open', '2018/09/23-2018/10/02', 'Open', '2018/10/08-2018/10/31', 'Open', '2018/11/01-2018/11/15', 'Open', '');
INSERT INTO `project_info` VALUES ('m1871-intl', 'M1871 INTL', 'MEIZU 15', 'Finished', '/', '海外', '高通', 'MSM8953 pro', 'zhenglu', null, '-', 'Finished', '-', 'Finished', '-', 'Finished', '-', 'Finished', '-', 'Finished', '-', 'Finished', '-', 'Finished', '-', 'Finished', '');
INSERT INTO `project_info` VALUES ('m1872-intl', 'M1872 INTL', '16 lite', 'Going', '/', '海外', '高通', '骁龙710', 'zhenglu', 'wangjinxin', '-', 'Finished', '2018/03/23-2018/04/10', 'Finished', '2018/06/13-2018/07/05', 'Finished', '2018/07/02-2018/09/28', 'Open', '2018/07/06-2018/08/08', 'Finished', '2018/08/15-2018/08/21', 'Finished', '2018/08/09-2018/09/09', 'Going', '2018/09/10-2018/09/27', 'Open', '');
INSERT INTO `project_info` VALUES ('m1882-intl', 'M1882 INTL', '16', 'Going', '/', '海外', '高通', '骁龙845', 'zhenglu', 'caijiaojiao', '2018/04/03-2018/04/03', 'Finished', '2018/02/12-2018/04/17', 'Finished', '2018/06/04-2018/07/01', 'Finished', '2018/06/11-2018/11/08', 'Going', '2018/07/02-2018/07/29', 'Going', '2018/07/30-2018/08/05', 'Finished', '2018/07/30-2018/08/26', 'Open', '2018/08/27-2018/09/08', 'Open', '');

-- ----------------------------
-- Table structure for quality_indicator
-- ----------------------------
DROP TABLE IF EXISTS `quality_indicator`;
CREATE TABLE `quality_indicator` (
  `indicator_id` int(11) NOT NULL AUTO_INCREMENT,
  `indicator_name` varchar(30) NOT NULL,
  `relatedstatus_id` varchar(100) NOT NULL,
  `relatedstatus_name` varchar(255) NOT NULL,
  PRIMARY KEY (`indicator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quality_indicator
-- ----------------------------
INSERT INTO `quality_indicator` VALUES ('1', '修复', '27,5,15', '不解决,已关闭,已验证');
INSERT INTO `quality_indicator` VALUES ('2', '解决', '27,5,3,15,10,23', '不解决,已关闭,已解决,已验证,问题无效,问题重复');
INSERT INTO `quality_indicator` VALUES ('3', '未修复', '1,3,8,9,12,13', '新建,已解决,重新打开,已分配,无法重现,无法解决');

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(30) NOT NULL,
  `region_name_ch` varchar(60) DEFAULT NULL,
  `region_name_en` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('1', 'RUS', '莫斯科', 'Moscow');
INSERT INTO `region` VALUES ('2', 'UKR', '基辅', 'Keiv');
INSERT INTO `region` VALUES ('3', 'ITA', '那不勒斯', 'Naples');
INSERT INTO `region` VALUES ('4', 'MMR', '仰光', 'Yangon');
INSERT INTO `region` VALUES ('5', 'IDN', '北干巴鲁', 'Pakanbaru');
INSERT INTO `region` VALUES ('6', 'CHL', '圣地亚哥', 'Santiago');

-- ----------------------------
-- Table structure for robot
-- ----------------------------
DROP TABLE IF EXISTS `robot`;
CREATE TABLE `robot` (
  `id` varchar(5) NOT NULL COMMENT '机器人Id',
  `name` varchar(30) NOT NULL COMMENT '机器人名',
  `dingding_group` varchar(50) NOT NULL COMMENT '所属群组',
  `webhook` varchar(250) NOT NULL,
  `is_test_task_use` char(1) DEFAULT NULL COMMENT '是否是测试任务发送所用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of robot
-- ----------------------------
INSERT INTO `robot` VALUES ('0001', 'nana', '测试群', 'https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '1');
INSERT INTO `robot` VALUES ('0002', 'nana', '测试群2', 'https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '0');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` varchar(2) NOT NULL,
  `role_name` varchar(10) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('01', '管理员');
INSERT INTO `role` VALUES ('02', '普通用户');
INSERT INTO `role` VALUES ('03', '临时用户');
INSERT INTO `role` VALUES ('04', '外包');

-- ----------------------------
-- Table structure for role_function
-- ----------------------------
DROP TABLE IF EXISTS `role_function`;
CREATE TABLE `role_function` (
  `role_id` varchar(2) NOT NULL COMMENT '角色编号',
  `fun_id` varchar(10) NOT NULL COMMENT '功能编号',
  `menu_name` varchar(30) DEFAULT NULL COMMENT '菜单名称',
  PRIMARY KEY (`role_id`,`fun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_function
-- ----------------------------
INSERT INTO `role_function` VALUES ('01', '01', '项目管理');
INSERT INTO `role_function` VALUES ('01', '0101', '问题查询');
INSERT INTO `role_function` VALUES ('01', '0102', '日报生成');
INSERT INTO `role_function` VALUES ('01', '0103', '项目状态');
INSERT INTO `role_function` VALUES ('01', '0104', '项目信息管理');
INSERT INTO `role_function` VALUES ('01', '0105', '库外问题管理');
INSERT INTO `role_function` VALUES ('01', '02', '任务管理');
INSERT INTO `role_function` VALUES ('01', '0201', '创建任务');
INSERT INTO `role_function` VALUES ('01', '0203', '任务查看');
INSERT INTO `role_function` VALUES ('01', '0204', '测试报告查看');
INSERT INTO `role_function` VALUES ('01', '0205', '任务管理');
INSERT INTO `role_function` VALUES ('01', '03', '系统管理');
INSERT INTO `role_function` VALUES ('01', '0301', '系统监控');
INSERT INTO `role_function` VALUES ('01', '0302', '系统功能');
INSERT INTO `role_function` VALUES ('01', '0303', '用户管理');
INSERT INTO `role_function` VALUES ('01', '0304', '机器人管理');
INSERT INTO `role_function` VALUES ('01', '0305', '通知管理');
INSERT INTO `role_function` VALUES ('01', '0306', '角色权限管理');
INSERT INTO `role_function` VALUES ('01', '0307', '角色管理');
INSERT INTO `role_function` VALUES ('01', '0308', '组织架构管理');
INSERT INTO `role_function` VALUES ('01', '04', '设置');
INSERT INTO `role_function` VALUES ('01', '0401', 'RedmineKey设置');
INSERT INTO `role_function` VALUES ('01', '0402', '解决/修复率指标设置');
INSERT INTO `role_function` VALUES ('01', '0403', '场测国家设置');
INSERT INTO `role_function` VALUES ('01', '0404', '测试模块设置');
INSERT INTO `role_function` VALUES ('01', '0405', '模块测试人设置');
INSERT INTO `role_function` VALUES ('01', '05', '帮助');
INSERT INTO `role_function` VALUES ('01', '0501', '帮助');
INSERT INTO `role_function` VALUES ('01', '06', '其他');
INSERT INTO `role_function` VALUES ('01', '0601', 'Redmine');
INSERT INTO `role_function` VALUES ('01', '0602', 'PM接口');
INSERT INTO `role_function` VALUES ('01', '0603', 'Nuclear');
INSERT INTO `role_function` VALUES ('01', '0604', '啄木鸟');
INSERT INTO `role_function` VALUES ('01', '07', '个人中心');
INSERT INTO `role_function` VALUES ('01', '0701', '个人信息');
INSERT INTO `role_function` VALUES ('01', '0702', '个人任务');
INSERT INTO `role_function` VALUES ('02', '01', '项目管理');
INSERT INTO `role_function` VALUES ('02', '0101', '问题查询');
INSERT INTO `role_function` VALUES ('02', '0102', '日报生成');
INSERT INTO `role_function` VALUES ('02', '0103', '项目状态');
INSERT INTO `role_function` VALUES ('02', '0104', '项目信息管理');
INSERT INTO `role_function` VALUES ('02', '0105', '库外问题管理');
INSERT INTO `role_function` VALUES ('02', '02', '任务管理');
INSERT INTO `role_function` VALUES ('02', '0201', '创建任务');
INSERT INTO `role_function` VALUES ('02', '0203', '任务查看');
INSERT INTO `role_function` VALUES ('02', '0204', '测试报告查看');
INSERT INTO `role_function` VALUES ('02', '0205', '任务管理');
INSERT INTO `role_function` VALUES ('02', '04', '设置');
INSERT INTO `role_function` VALUES ('02', '0401', 'RedmineKey设置');
INSERT INTO `role_function` VALUES ('02', '0402', '解决/修复率指标设置');
INSERT INTO `role_function` VALUES ('02', '0403', '场测国家设置');
INSERT INTO `role_function` VALUES ('02', '0404', '测试模块设置');
INSERT INTO `role_function` VALUES ('02', '0405', '模块测试人设置');
INSERT INTO `role_function` VALUES ('02', '05', '帮助');
INSERT INTO `role_function` VALUES ('02', '0501', '帮助');
INSERT INTO `role_function` VALUES ('02', '06', '其他');
INSERT INTO `role_function` VALUES ('02', '0601', 'Redmine');
INSERT INTO `role_function` VALUES ('02', '0602', 'PM接口');
INSERT INTO `role_function` VALUES ('02', '0603', 'Nuclear');
INSERT INTO `role_function` VALUES ('02', '0604', '啄木鸟');
INSERT INTO `role_function` VALUES ('02', '07', '个人中心');
INSERT INTO `role_function` VALUES ('02', '0701', '个人信息');
INSERT INTO `role_function` VALUES ('02', '0702', '个人任务');
INSERT INTO `role_function` VALUES ('03', '01', '项目管理');
INSERT INTO `role_function` VALUES ('03', '0101', '问题查询');
INSERT INTO `role_function` VALUES ('03', '05', '帮助');
INSERT INTO `role_function` VALUES ('03', '0501', '帮助');
INSERT INTO `role_function` VALUES ('03', '06', '其他');
INSERT INTO `role_function` VALUES ('03', '0601', 'Redmine');
INSERT INTO `role_function` VALUES ('03', '0604', '啄木鸟');
INSERT INTO `role_function` VALUES ('03', '07', '个人中心');
INSERT INTO `role_function` VALUES ('03', '0701', '个人信息');
INSERT INTO `role_function` VALUES ('03', '0702', '个人任务');

-- ----------------------------
-- Table structure for system_function
-- ----------------------------
DROP TABLE IF EXISTS `system_function`;
CREATE TABLE `system_function` (
  `parent_code` varchar(10) NOT NULL COMMENT '父类编码',
  `fun_id` varchar(10) NOT NULL COMMENT '功能编号',
  `button_name` varchar(100) DEFAULT NULL COMMENT '按钮名称',
  `menu_name` varchar(30) DEFAULT NULL COMMENT '菜单名称',
  `winform_path` varchar(100) DEFAULT NULL COMMENT '窗体路径',
  `winform_flag` char(1) DEFAULT NULL COMMENT '功能窗体标志',
  PRIMARY KEY (`fun_id`,`parent_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_function
-- ----------------------------
INSERT INTO `system_function` VALUES ('01', '01', 'ribbonPage_Project', '项目管理', '', null);
INSERT INTO `system_function` VALUES ('01', '0101', 'barbtn_IssueSearch', '问题查询', 'OverseaPMS.ProjectSystem.ProjectIssueSearch', null);
INSERT INTO `system_function` VALUES ('01', '0102', 'barbtn_DailyReportGenerate1', '日报生成', 'OverseaPMS.DailyReportSystem.DailyReportGenerate', null);
INSERT INTO `system_function` VALUES ('01', '0103', 'barbtn_ProjectStatus', '项目状态', 'OverseaPMS.ProjectSystem.ProjectStatusSearch', null);
INSERT INTO `system_function` VALUES ('01', '0104', 'barbtn_ProjectManagement', '项目信息管理', 'OverseaPMS.ProjectSystem.Project_Management', null);
INSERT INTO `system_function` VALUES ('01', '0105', 'btn_OutLibraryIssueManagement', '库外问题管理', 'OverseaPMS.ProjectSystem.OutLibrary_IssueList_Management', null);
INSERT INTO `system_function` VALUES ('02', '02', 'ribbonPage_TestTask', '任务管理', '', null);
INSERT INTO `system_function` VALUES ('02', '0201', 'btn_CreateTask', '创建任务', 'OverseaPMS.TestTaskManagement.Create_Task', null);
INSERT INTO `system_function` VALUES ('02', '0203', 'btn_TestTaskManagement', '任务查看', 'OverseaPMS.TestTaskManagement.TestTask_Management', null);
INSERT INTO `system_function` VALUES ('02', '0204', 'btn_TestTaskReport', '测试报告查看', 'OverseaPMS.TestTaskManagement.TestReport_Management', null);
INSERT INTO `system_function` VALUES ('02', '0205', 'btn_TaskManagement', '任务管理', 'OverseaPMS.TestTaskManagement.Task_Management', null);
INSERT INTO `system_function` VALUES ('03', '03', 'ribbonPage_SystemManagement', '系统管理', '', null);
INSERT INTO `system_function` VALUES ('03', '0301', 'btn_OperationLog', '系统监控', 'OverseaPMS.MainManagement.SystemMonitor', null);
INSERT INTO `system_function` VALUES ('03', '0302', 'btn_SystemFunctionManagement', '系统功能', 'OverseaPMS.MainManagement.SystemFunctionManagement', null);
INSERT INTO `system_function` VALUES ('03', '0303', 'btn_UserManagement', '用户管理', 'OverseaPMS.MainManagement.UserManagement', null);
INSERT INTO `system_function` VALUES ('03', '0304', 'btn_RobotManagement', '机器人管理', 'OverseaPMS.Setting.Robot_Set', null);
INSERT INTO `system_function` VALUES ('03', '0305', 'btn_NotificationManagement', '通知管理', 'OverseaPMS.MainManagement.NotificationManagement', null);
INSERT INTO `system_function` VALUES ('03', '0306', 'btn_RolePermissionManagement', '角色权限管理', 'OverseaPMS.MainManagement.RolePermissionsManage', null);
INSERT INTO `system_function` VALUES ('03', '0307', 'btn_RoleSetting', '角色管理', 'OverseaPMS.MainManagement.Role_Set', null);
INSERT INTO `system_function` VALUES ('03', '0308', 'btn_OrganizationManagement', '组织架构管理', 'OverseaPMS.MainManagement.DepartmentManagement', null);
INSERT INTO `system_function` VALUES ('04', '04', 'ribbonPage_Setting', '设置', '', null);
INSERT INTO `system_function` VALUES ('04', '0401', 'barbtn_SetRedmineKey', 'RedmineKey设置', 'OverseaPMS.Setting.RedmineKey_Set', null);
INSERT INTO `system_function` VALUES ('04', '0402', 'barbtn_QualityIndicator', '解决/修复率指标设置', 'OverseaPMS.Setting.QualityIndicator_Set', null);
INSERT INTO `system_function` VALUES ('04', '0403', 'btn_OutTestCountryCity', '场测国家设置', 'OverseaPMS.Setting.OutTestCountry_Set', null);
INSERT INTO `system_function` VALUES ('04', '0404', 'btn_TestModuleSet', '测试模块设置', 'OverseaPMS.Setting.TestModule_Set', null);
INSERT INTO `system_function` VALUES ('04', '0405', 'btn_ModuleTesterSet', '模块测试人设置', 'OverseaPMS.Setting.ModuleTester_Set', null);
INSERT INTO `system_function` VALUES ('05', '05', 'ribbonPage_Help', '帮助', '', null);
INSERT INTO `system_function` VALUES ('05', '0501', 'btn_Help', '帮助', '', null);
INSERT INTO `system_function` VALUES ('06', '06', 'ribbonPage_Other', '其他', '', null);
INSERT INTO `system_function` VALUES ('06', '0601', 'btn_Redmine2', 'Redmine', '', null);
INSERT INTO `system_function` VALUES ('06', '0602', 'btn_PM', 'PM接口', '', null);
INSERT INTO `system_function` VALUES ('06', '0603', 'btn_Nuclear', 'Nuclear', '', null);
INSERT INTO `system_function` VALUES ('06', '0604', 'btn_ZhuoMuNiao', '啄木鸟', '', null);
INSERT INTO `system_function` VALUES ('07', '07', 'ribbonPage_Personal', '个人中心', '', null);
INSERT INTO `system_function` VALUES ('07', '0701', 'btn_PersonalInfo', '个人信息', 'OverseaPMS.PersonalInfoManagement.PersonalInfo_Manage', null);
INSERT INTO `system_function` VALUES ('07', '0702', 'btn_PersonalTask', '个人任务', 'OverseaPMS.TestTaskManagement.TestTask_Personal', null);

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `ordinal` varchar(50) NOT NULL COMMENT '日志序号',
  `operation_time` datetime NOT NULL,
  `user_account_name` varchar(50) DEFAULT NULL COMMENT '用户账号=用户编号（user_id）',
  `pc_id` varchar(100) NOT NULL,
  `machine_name` varchar(100) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `mac_address` varchar(50) NOT NULL,
  `operation_type` varchar(20) NOT NULL,
  `operation_description` varchar(1000) DEFAULT NULL,
  `log_type_id` varchar(10) NOT NULL COMMENT '日志类型Id',
  PRIMARY KEY (`ordinal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('180724194132', '2018-07-24 19:41:32', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180724194205', '2018-07-24 19:42:05', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180724195336', '2018-07-24 19:53:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180724202233', '2018-07-24 20:22:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180725092056', '2018-07-25 09:20:56', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180725092547', '2018-07-25 09:25:47', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '删除', '窗口【项目信息管理】，删除了项目记录，项目Id为：m1852，项目内部名称：M1852，项目负责人：郑璐，项目状态：Open，风险等级：/，硬件平台：高通，平台型号：骁龙670', '05');
INSERT INTO `system_log` VALUES ('180725092733', '2018-07-25 09:27:33', 'linhongshen', 'MZKJ-PC-01751_linhongshen', 'MZKJ-PC-01751', '172.16.61.25', '98:90:96:A6:C5:69', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180725093623', '2018-07-25 09:36:23', 'laoyiling', 'MZKJ-PC-03354_laoyiling', 'MZKJ-PC-03354', '172.16.61.11', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180725093811', '2018-07-25 09:38:11', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180725093847', '2018-07-25 09:38:47', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '新增', '窗口【添加项目记录】，添加了项目记录，项目Id为：m1852_intl，项目内部名称：M1852 INTL，项目负责人：郑璐，项目状态：Going，风险等级：/，硬件平台：高通，平台型号：骁龙670', '03');
INSERT INTO `system_log` VALUES ('180725094137', '2018-07-25 09:41:37', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180725094217', '2018-07-25 09:42:17', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180725094232', '2018-07-25 09:42:32', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180725100953', '2018-07-25 10:09:53', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180725101647', '2018-07-25 10:16:47', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180725105645', '2018-07-25 10:56:45', 'linhongshen', 'MZKJ-PC-01751_linhongshen', 'MZKJ-PC-01751', '172.16.61.25', '98:90:96:A6:C5:69', '新增', '窗口【场测国家信息编辑】，添加了场测国家记录，项目Id为：m1813-intl，场测轮数：第1轮，国家：俄罗斯，城市：莫斯科，场测状态：未开始，开始时间：2018/08/07，结束时间：2018/08/16，测试周期：10天', '03');
INSERT INTO `system_log` VALUES ('180725105653', '2018-07-25 10:56:53', 'linhongshen', 'MZKJ-PC-01751_linhongshen', 'MZKJ-PC-01751', '172.16.61.25', '98:90:96:A6:C5:69', '新增', '窗口【场测国家信息编辑】，添加了场测国家记录，项目Id为：m1813-intl，场测轮数：第1轮，国家：乌克兰，城市：基辅，场测状态：未开始，开始时间：2018/08/07，结束时间：2018/08/16，测试周期：10天', '03');
INSERT INTO `system_log` VALUES ('180725105725', '2018-07-25 10:57:25', 'linhongshen', 'MZKJ-PC-01751_linhongshen', 'MZKJ-PC-01751', '172.16.61.25', '98:90:96:A6:C5:69', '修改', '窗口【场测国家信息编辑】，修改了场测国家记录，项目Id为：m1813-intl，场测轮数：第1轮，国家：俄罗斯，城市：莫斯科，场测状态：未开始，开始时间：2018/08/07，结束时间：2018/08/13，测试周期：7天', '04');
INSERT INTO `system_log` VALUES ('180725105733', '2018-07-25 10:57:33', 'linhongshen', 'MZKJ-PC-01751_linhongshen', 'MZKJ-PC-01751', '172.16.61.25', '98:90:96:A6:C5:69', '修改', '窗口【场测国家信息编辑】，修改了场测国家记录，项目Id为：m1813-intl，场测轮数：第1轮，国家：乌克兰，城市：基辅，场测状态：未开始，开始时间：2018/08/07，结束时间：2018/08/13，测试周期：7天', '04');
INSERT INTO `system_log` VALUES ('180725110131', '2018-07-25 11:01:31', 'linhongshen', 'MZKJ-PC-01751_linhongshen', 'MZKJ-PC-01751', '172.16.61.25', '98:90:96:A6:C5:69', '修改', '窗口【项目信息编辑】，修改了项目记录，项目Id为：m1813-intl，项目内部名称：M1813 INTL，项目负责人：郑璐，项目状态：Going，风险等级：/，硬件平台：MTK，平台型号：MT6762', '04');
INSERT INTO `system_log` VALUES ('180725112550', '2018-07-25 11:25:50', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180725114205', '2018-07-25 11:42:05', 'laoyiling', 'MZKJ-PC-03354_laoyiling', 'MZKJ-PC-03354', '172.16.61.11', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180725191546', '2018-07-25 19:15:46', 'yuyong', 'MZKJ-BJB-02160_yuyong', 'MZKJ-BJB-02160', '172.29.152.129', 'BC:A8:A6:DD:E7:58', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180725191710', '2018-07-25 19:17:10', 'yuyong', 'MZKJ-BJB-02160_yuyong', 'MZKJ-BJB-02160', '172.29.152.129', 'BC:A8:A6:DD:E7:58', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180725191738', '2018-07-25 19:17:38', 'yuyong', 'MZKJ-BJB-02160_yuyong', 'MZKJ-BJB-02160', '172.29.152.129', 'BC:A8:A6:DD:E7:58', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180725192104', '2018-07-25 19:21:04', 'yuyong', 'MZKJ-BJB-02160_yuyong', 'MZKJ-BJB-02160', '172.29.152.129', 'BC:A8:A6:DD:E7:58', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180725193706', '2018-07-25 19:37:06', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180726104214', '2018-07-26 10:42:14', 'zhangxiaotong1', 'MZKJ-PC-03024_zhangxiaotong1', 'MZKJ-PC-03024', '172.16.61.35', '64:00:6A:72:2D:1A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180726142335', '2018-07-26 14:23:35', 'zhangxiaotong1', 'MZKJ-PC-03024_zhangxiaotong1', 'MZKJ-PC-03024', '172.16.61.35', '64:00:6A:72:2D:1A', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180727142031', '2018-07-27 14:20:31', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180727142709', '2018-07-27 14:27:09', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180727162916', '2018-07-27 16:29:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180727163724', '2018-07-27 16:37:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180727174007', '2018-07-27 17:40:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180727175815', '2018-07-27 17:58:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180727194429', '2018-07-27 19:44:29', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180727195537', '2018-07-27 19:55:37', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180730105545', '2018-07-30 10:55:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180730105705', '2018-07-30 10:57:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180730105709', '2018-07-30 10:57:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180730105848', '2018-07-30 10:58:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180802105957', '2018-08-02 10:59:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180802110006', '2018-08-02 11:00:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180802110126', '2018-08-02 11:01:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180802112131', '2018-08-02 11:21:31', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180802112524', '2018-08-02 11:25:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180802112545', '2018-08-02 11:25:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180802112551', '2018-08-02 11:25:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180802112602', '2018-08-02 11:26:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180802113214', '2018-08-02 11:32:14', 'zhangxiaotong1', 'MZKJ-PC-03024_zhangxiaotong1', 'MZKJ-PC-03024', '172.16.61.35', '64:00:6A:72:2D:1A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180802113240', '2018-08-02 11:32:40', 'zhangxiaotong1', 'MZKJ-PC-03024_zhangxiaotong1', 'MZKJ-PC-03024', '172.16.61.35', '64:00:6A:72:2D:1A', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180802113256', '2018-08-02 11:32:56', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180802114256', '2018-08-02 11:42:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180802115122', '2018-08-02 11:51:22', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180802142546', '2018-08-02 14:25:46', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180802152454', '2018-08-02 15:24:54', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180802200116', '2018-08-02 20:01:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180802200154', '2018-08-02 20:01:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180802200745', '2018-08-02 20:07:45', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180803092316', '2018-08-03 09:23:16', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180803133746', '2018-08-03 13:37:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180803134614', '2018-08-03 13:46:14', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180803134808', '2018-08-03 13:48:08', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '修改', '窗口【项目信息编辑】，修改了项目记录，项目Id为：m1818，项目内部名称：M1818，项目负责人：郑璐，项目状态：Going，风险等级：低，硬件平台：展讯，平台型号：MaliT820 MP1 @ 650MH', '04');
INSERT INTO `system_log` VALUES ('180803135059', '2018-08-03 13:50:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180803150716', '2018-08-03 15:07:16', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180803152652', '2018-08-03 15:26:52', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180803153308', '2018-08-03 15:33:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180803153311', '2018-08-03 15:33:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180803153314', '2018-08-03 15:33:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180803153338', '2018-08-03 15:33:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180803155645', '2018-08-03 15:56:45', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180806101834', '2018-08-06 10:18:34', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180806115453', '2018-08-06 11:54:53', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180806141204', '2018-08-06 14:12:04', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180806141815', '2018-08-06 14:18:15', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180806141923', '2018-08-06 14:19:23', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180806142804', '2018-08-06 14:28:04', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180806143012', '2018-08-06 14:30:12', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180806144613', '2018-08-06 14:46:13', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180807100555', '2018-08-07 10:05:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180807100557', '2018-08-07 10:05:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180807100636', '2018-08-07 10:06:36', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180807101001', '2018-08-07 10:10:01', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180807101155', '2018-08-07 10:11:55', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180807101617', '2018-08-07 10:16:17', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180807103053', '2018-08-07 10:30:53', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180807110406', '2018-08-07 11:04:06', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180807161508', '2018-08-07 16:15:08', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180807163551', '2018-08-07 16:35:51', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180807185655', '2018-08-07 18:56:55', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180808090921', '2018-08-08 09:09:21', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180808092416', '2018-08-08 09:24:16', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180808134018', '2018-08-08 13:40:18', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180808134856', '2018-08-08 13:48:56', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '修改', '窗口【项目信息编辑】，修改了项目记录，项目Id为：m1872-intl，项目内部名称：M1872 INTL，项目负责人：郑璐，项目状态：Going，风险等级：/，硬件平台：高通，平台型号：骁龙710', '04');
INSERT INTO `system_log` VALUES ('180808165702', '2018-08-08 16:57:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180808165724', '2018-08-08 16:57:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180808165818', '2018-08-08 16:58:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180808165834', '2018-08-08 16:58:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180808193124', '2018-08-08 19:31:24', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180808193658', '2018-08-08 19:36:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180808193826', '2018-08-08 19:38:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180808194328', '2018-08-08 19:43:28', 'zhangxiaotong1', 'MZKJ-PC-03024_zhangxiaotong1', 'MZKJ-PC-03024', '172.16.61.35', '64:00:6A:72:2D:1A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180808194357', '2018-08-08 19:43:57', 'zhangxiaotong1', 'MZKJ-PC-03024_zhangxiaotong1', 'MZKJ-PC-03024', '172.16.61.35', '64:00:6A:72:2D:1A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180808195425', '2018-08-08 19:54:25', 'zhangxiaotong1', 'MZKJ-PC-03024_zhangxiaotong1', 'MZKJ-PC-03024', '172.16.61.35', '64:00:6A:72:2D:1A', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180808200117', '2018-08-08 20:01:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809090559', '2018-08-09 09:05:59', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809090625', '2018-08-09 09:06:25', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809091243', '2018-08-09 09:12:43', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '修改', '窗口【场测国家信息编辑】，修改了场测国家记录，项目Id为：m1813-intl，场测轮数：第1轮，国家：俄罗斯，城市：莫斯科，场测状态：测试中，开始时间：2018/08/07，结束时间：2018/08/13，测试周期：7天', '04');
INSERT INTO `system_log` VALUES ('180809091251', '2018-08-09 09:12:51', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '修改', '窗口【场测国家信息编辑】，修改了场测国家记录，项目Id为：m1813-intl，场测轮数：第1轮，国家：乌克兰，城市：基辅，场测状态：测试中，开始时间：2018/08/07，结束时间：2018/08/13，测试周期：7天', '04');
INSERT INTO `system_log` VALUES ('180809091322', '2018-08-09 09:13:22', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809091430', '2018-08-09 09:14:30', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809091722', '2018-08-09 09:17:22', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809091741', '2018-08-09 09:17:41', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809091743', '2018-08-09 09:17:43', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809091844', '2018-08-09 09:18:44', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '新增', '窗口【场测国家信息编辑】，添加了场测国家记录，项目Id为：m1882-intl，场测轮数：第1轮，国家：俄罗斯，城市：莫斯科，场测状态：已完成，开始时间：2018/07/30，结束时间：2018/08/05，测试周期：7天', '03');
INSERT INTO `system_log` VALUES ('180809091855', '2018-08-09 09:18:55', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '新增', '窗口【场测国家信息编辑】，添加了场测国家记录，项目Id为：m1882-intl，场测轮数：第1轮，国家：乌克兰，城市：基辅，场测状态：已完成，开始时间：2018/07/30，结束时间：2018/08/05，测试周期：7天', '03');
INSERT INTO `system_log` VALUES ('180809091930', '2018-08-09 09:19:30', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '修改', '窗口【项目信息编辑】，修改了项目记录，项目Id为：m1882-intl，项目内部名称：M1882 INTL，项目负责人：蔡娇娇，总负责人：郑璐，项目状态：Going，风险等级：/，硬件平台：高通，平台型号：骁龙845', '04');
INSERT INTO `system_log` VALUES ('180809092251', '2018-08-09 09:22:51', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092303', '2018-08-09 09:23:03', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092319', '2018-08-09 09:23:19', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092437', '2018-08-09 09:24:37', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092446', '2018-08-09 09:24:46', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092447', '2018-08-09 09:24:47', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092505', '2018-08-09 09:25:05', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092653', '2018-08-09 09:26:53', 'niming', 'EF-NIMING_niming', 'EF-NIMING', '172.16.61.39', '98:90:96:E2:E2:4A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092655', '2018-08-09 09:26:55', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092722', '2018-08-09 09:27:22', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '新增', '窗口【【 M1882-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：812682，项目Id为：m1882-intl，项目内部名称：M1882 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180809092753', '2018-08-09 09:27:53', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '新增', '窗口【【 M1882-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：812680，项目Id为：m1882-intl，项目内部名称：M1882 INTL，转至：Flyme海外版快稳省，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180809092902', '2018-08-09 09:29:02', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '新增', '窗口【【 M1882-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：811747，项目Id为：m1882-intl，项目内部名称：M1882 INTL，转至：BSP，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180809092911', '2018-08-09 09:29:11', 'niming', 'EF-NIMING_niming', 'EF-NIMING', '172.16.61.39', '98:90:96:E2:E2:4A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809092941', '2018-08-09 09:29:41', 'niming', 'EF-NIMING_niming', 'EF-NIMING', '172.16.61.39', '98:90:96:E2:E2:4A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809093013', '2018-08-09 09:30:13', 'niming', 'EF-NIMING_niming', 'EF-NIMING', '172.16.61.39', '98:90:96:E2:E2:4A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809093106', '2018-08-09 09:31:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809093143', '2018-08-09 09:31:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【用户管理】，添加了用户信息记录，用户编号为：010007，用户类型：普通用户，姓名：倪明，性别：女，职位：，部门：海外项目测试', '03');
INSERT INTO `system_log` VALUES ('180809093226', '2018-08-09 09:32:26', 'niming', 'EF-NIMING_niming', 'EF-NIMING', '172.16.61.39', '98:90:96:E2:E2:4A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809093245', '2018-08-09 09:32:45', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809093443', '2018-08-09 09:34:43', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809093655', '2018-08-09 09:36:55', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809094010', '2018-08-09 09:40:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809094112', '2018-08-09 09:41:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809094418', '2018-08-09 09:44:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809101104', '2018-08-09 10:11:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809101326', '2018-08-09 10:13:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809102102', '2018-08-09 10:21:02', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809102117', '2018-08-09 10:21:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809102412', '2018-08-09 10:24:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809102848', '2018-08-09 10:28:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809102851', '2018-08-09 10:28:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809103057', '2018-08-09 10:30:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809103441', '2018-08-09 10:34:41', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809103648', '2018-08-09 10:36:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809103821', '2018-08-09 10:38:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809103907', '2018-08-09 10:39:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809104246', '2018-08-09 10:42:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809105115', '2018-08-09 10:51:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809105607', '2018-08-09 10:56:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809110115', '2018-08-09 11:01:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809110436', '2018-08-09 11:04:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809110821', '2018-08-09 11:08:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809115151', '2018-08-09 11:51:51', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809135002', '2018-08-09 13:50:02', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809135146', '2018-08-09 13:51:46', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809135209', '2018-08-09 13:52:09', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809192142', '2018-08-09 19:21:42', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809192638', '2018-08-09 19:26:38', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809193330', '2018-08-09 19:33:30', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180809193701', '2018-08-09 19:37:01', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180809195540', '2018-08-09 19:55:40', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180810090314', '2018-08-10 09:03:14', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180810090528', '2018-08-10 09:05:28', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180810092320', '2018-08-10 09:23:20', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180810101112', '2018-08-10 10:11:12', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180810111759', '2018-08-10 11:17:59', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180810115119', '2018-08-10 11:51:19', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180810152137', '2018-08-10 15:21:37', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180810171230', '2018-08-10 17:12:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180810171243', '2018-08-10 17:12:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180810171317', '2018-08-10 17:13:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180810171329', '2018-08-10 17:13:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180810185029', '2018-08-10 18:50:29', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180813090744', '2018-08-13 09:07:44', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180813090852', '2018-08-13 09:08:52', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180813094158', '2018-08-13 09:41:58', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180813105041', '2018-08-13 10:50:41', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180813105837', '2018-08-13 10:58:37', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180813162518', '2018-08-13 16:25:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180813162521', '2018-08-13 16:25:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180814091450', '2018-08-14 09:14:50', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814091526', '2018-08-14 09:15:26', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814092536', '2018-08-14 09:25:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814093416', '2018-08-14 09:34:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180814093419', '2018-08-14 09:34:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814093435', '2018-08-14 09:34:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814093654', '2018-08-14 09:36:54', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180814093658', '2018-08-14 09:36:58', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814093715', '2018-08-14 09:37:15', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814093929', '2018-08-14 09:39:29', 'zhangxiaotong1', 'MZKJ-PC-03024_zhangxiaotong1', 'MZKJ-PC-03024', '172.16.61.35', '64:00:6A:72:2D:1A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814095330', '2018-08-14 09:53:30', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180814095733', '2018-08-14 09:57:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180814101028', '2018-08-14 10:10:28', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180814105839', '2018-08-14 10:58:39', 'zhangxiaotong1', 'MZKJ-PC-03024_zhangxiaotong1', 'MZKJ-PC-03024', '172.16.61.35', '64:00:6A:72:2D:1A', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180814165730', '2018-08-14 16:57:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814165845', '2018-08-14 16:58:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180814183905', '2018-08-14 18:39:05', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814184233', '2018-08-14 18:42:33', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180814184933', '2018-08-14 18:49:33', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180814185955', '2018-08-14 18:59:55', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180815091251', '2018-08-15 09:12:51', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180815092735', '2018-08-15 09:27:35', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180815093421', '2018-08-15 09:34:21', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180815105343', '2018-08-15 10:53:43', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180815110117', '2018-08-15 11:01:17', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180815110639', '2018-08-15 11:06:39', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180815141125', '2018-08-15 14:11:25', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180815173500', '2018-08-15 17:35:00', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180815173528', '2018-08-15 17:35:28', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180815173855', '2018-08-15 17:38:55', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【场测国家信息编辑】，添加了场测国家记录，项目Id为：m1872-intl，场测轮数：第1轮，国家：俄罗斯，城市：莫斯科，场测状态：测试中，开始时间：2018/08/15，结束时间：2018/08/21，测试周期：7天', '03');
INSERT INTO `system_log` VALUES ('180815173903', '2018-08-15 17:39:03', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【场测国家信息编辑】，添加了场测国家记录，项目Id为：m1872-intl，场测轮数：第1轮，国家：乌克兰，城市：基辅，场测状态：测试中，开始时间：2018/08/15，结束时间：2018/08/21，测试周期：7天', '03');
INSERT INTO `system_log` VALUES ('180815174207', '2018-08-15 17:42:07', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：815071，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180815174225', '2018-08-15 17:42:25', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：817259，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180815174320', '2018-08-15 17:43:20', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：808756，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180815174436', '2018-08-15 17:44:36', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：810435，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180815174449', '2018-08-15 17:44:49', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：804745，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180815174724', '2018-08-15 17:47:24', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1882-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：816512，项目Id为：m1882-intl，项目内部名称：M1882 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180815174734', '2018-08-15 17:47:34', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1882-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：806950，项目Id为：m1882-intl，项目内部名称：M1882 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180815174752', '2018-08-15 17:47:52', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1882-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：816929，项目Id为：m1882-intl，项目内部名称：M1882 INTL，转至：Flyme海外版快稳省，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180815192641', '2018-08-15 19:26:41', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180816091053', '2018-08-16 09:10:53', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180816091727', '2018-08-16 09:17:27', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180816092439', '2018-08-16 09:24:39', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180816092524', '2018-08-16 09:25:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180816092739', '2018-08-16 09:27:39', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180816092818', '2018-08-16 09:28:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180816134003', '2018-08-16 13:40:03', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180816144741', '2018-08-16 14:47:41', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180816150841', '2018-08-16 15:08:41', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180816151429', '2018-08-16 15:14:29', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180816151533', '2018-08-16 15:15:33', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：817163，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：M1882 INTL，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180816170602', '2018-08-16 17:06:02', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1882-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：811794，项目Id为：m1882-intl，项目内部名称：M1882 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180816170615', '2018-08-16 17:06:15', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1882-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：817077，项目Id为：m1882-intl，项目内部名称：M1882 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180816170821', '2018-08-16 17:08:21', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180816181544', '2018-08-16 18:15:44', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180817090214', '2018-08-17 09:02:14', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180817090742', '2018-08-17 09:07:42', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180817090921', '2018-08-17 09:09:21', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180817091056', '2018-08-17 09:10:56', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180817092111', '2018-08-17 09:21:11', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180817095126', '2018-08-17 09:51:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180817100238', '2018-08-17 10:02:38', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180817102040', '2018-08-17 10:20:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180817104945', '2018-08-17 10:49:45', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180817114058', '2018-08-17 11:40:58', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180817135834', '2018-08-17 13:58:34', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180817143853', '2018-08-17 14:38:53', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180817144936', '2018-08-17 14:49:36', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180817165807', '2018-08-17 16:58:07', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180817171811', '2018-08-17 17:18:11', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180817173438', '2018-08-17 17:34:38', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180817173443', '2018-08-17 17:34:43', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180817180205', '2018-08-17 18:02:05', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180820083921', '2018-08-20 08:39:21', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180820090705', '2018-08-20 09:07:05', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180820090907', '2018-08-20 09:09:07', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180820092129', '2018-08-20 09:21:29', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180820093545', '2018-08-20 09:35:45', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180820094702', '2018-08-20 09:47:02', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180820101036', '2018-08-20 10:10:36', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180820103847', '2018-08-20 10:38:47', 'caijiaojiao', 'MZKJ-PC-00779_caijiaojiao', 'MZKJ-PC-00779', '172.16.61.29', '34:17:EB:DC:38:5E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180821090856', '2018-08-21 09:08:56', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180821091913', '2018-08-21 09:19:13', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180821092755', '2018-08-21 09:27:55', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：819936，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821092812', '2018-08-21 09:28:12', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：819920，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821093100', '2018-08-21 09:31:00', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：820626，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：BSP，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821093133', '2018-08-21 09:31:33', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：820620，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821103340', '2018-08-21 10:33:40', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180821133646', '2018-08-21 13:36:46', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：820650，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821133709', '2018-08-21 13:37:09', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180821153047', '2018-08-21 15:30:47', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180821153118', '2018-08-21 15:31:18', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：821758，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821153129', '2018-08-21 15:31:29', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：821752，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：BSP，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821153201', '2018-08-21 15:32:01', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：819178，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821153242', '2018-08-21 15:32:42', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：821756，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821153622', '2018-08-21 15:36:22', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：801560，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821162355', '2018-08-21 16:23:56', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：821757，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：BSP，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821165000', '2018-08-21 16:50:00', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180821165508', '2018-08-21 16:55:08', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180821165614', '2018-08-21 16:56:14', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：816348，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180821175024', '2018-08-21 17:50:24', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822084905', '2018-08-22 08:49:05', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822085751', '2018-08-22 08:57:51', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '修改', '窗口【项目信息编辑】，修改了项目记录，项目Id为：m1872-intl，项目内部名称：M1872 INTL，项目负责人：王金鑫，总负责人：郑璐，项目状态：Going，风险等级：/，硬件平台：高通，平台型号：骁龙710', '04');
INSERT INTO `system_log` VALUES ('180822085831', '2018-08-22 08:58:31', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822085836', '2018-08-22 08:58:36', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822090052', '2018-08-22 09:00:52', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '修改', '窗口【场测国家信息编辑】，修改了场测国家记录，项目Id为：m1872-intl，场测轮数：第1轮，国家：俄罗斯，城市：莫斯科，场测状态：已完成，开始时间：2018/08/15，结束时间：2018/08/21，测试周期：7天', '04');
INSERT INTO `system_log` VALUES ('180822090100', '2018-08-22 09:01:00', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '修改', '窗口【场测国家信息编辑】，修改了场测国家记录，项目Id为：m1872-intl，场测轮数：第1轮，国家：乌克兰，城市：基辅，场测状态：已完成，开始时间：2018/08/15，结束时间：2018/08/21，测试周期：7天', '04');
INSERT INTO `system_log` VALUES ('180822090638', '2018-08-22 09:06:38', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：821751，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：BSP，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822091230', '2018-08-22 09:12:30', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：820619，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：性能优化，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822091356', '2018-08-22 09:13:56', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：820810，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：通话&通话设置，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822091405', '2018-08-22 09:14:05', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：820811，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822091551', '2018-08-22 09:15:51', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：820804，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822101438', '2018-08-22 10:14:38', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822105713', '2018-08-22 10:57:13', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822105810', '2018-08-22 10:58:10', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：822539，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：文件传输，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822110028', '2018-08-22 11:00:28', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822124535', '2018-08-22 12:45:35', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822124627', '2018-08-22 12:46:27', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：819181，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme海外版快稳省，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822124649', '2018-08-22 12:46:49', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：820003，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme海外版快稳省，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822124700', '2018-08-22 12:47:00', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：819346，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme海外版快稳省，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822124713', '2018-08-22 12:47:13', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：820621，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme海外版快稳省，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822133907', '2018-08-22 13:39:07', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：822542，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：通话&通话设置，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822142739', '2018-08-22 14:27:39', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：806146，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Flyme海外版快稳省，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822143856', '2018-08-22 14:38:56', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822151113', '2018-08-22 15:11:13', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822151151', '2018-08-22 15:11:51', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：821755，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822160813', '2018-08-22 16:08:13', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：822544，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822163858', '2018-08-22 16:38:58', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822170247', '2018-08-22 17:02:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822170312', '2018-08-22 17:03:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822171803', '2018-08-22 17:18:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822171808', '2018-08-22 17:18:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822171851', '2018-08-22 17:18:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822171858', '2018-08-22 17:18:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822171919', '2018-08-22 17:19:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822171924', '2018-08-22 17:19:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822172012', '2018-08-22 17:20:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822172017', '2018-08-22 17:20:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822172142', '2018-08-22 17:21:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822172151', '2018-08-22 17:21:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822172207', '2018-08-22 17:22:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822180142', '2018-08-22 18:01:42', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822180207', '2018-08-22 18:02:07', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '新增', '窗口【【 M1872-INTL 】库外问题管理】，添加了库外问题记录，Issue_Id：819171，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180822180226', '2018-08-22 18:02:26', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822183554', '2018-08-22 18:35:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822183608', '2018-08-22 18:36:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822183644', '2018-08-22 18:36:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822183656', '2018-08-22 18:36:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822183707', '2018-08-22 18:37:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822183711', '2018-08-22 18:37:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822183924', '2018-08-22 18:39:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822183941', '2018-08-22 18:39:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822184027', '2018-08-22 18:40:27', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822184049', '2018-08-22 18:40:49', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180822185428', '2018-08-22 18:54:28', 'niming', 'EF-NIMING_niming', 'EF-NIMING', '172.16.61.39', '98:90:96:E2:E2:4A', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180822191652', '2018-08-22 19:16:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180823090632', '2018-08-23 09:06:32', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180823090755', '2018-08-23 09:07:55', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180823090852', '2018-08-23 09:08:52', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180823090953', '2018-08-23 09:09:53', 'chenli', 'EF-CHENL_chenli', 'EF-CHENL', '172.16.61.37', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180823091344', '2018-08-23 09:13:44', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180823091407', '2018-08-23 09:14:07', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180823093723', '2018-08-23 09:37:23', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180823094025', '2018-08-23 09:40:25', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180823102426', '2018-08-23 10:24:26', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180823104820', '2018-08-23 10:48:20', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180823135846', '2018-08-23 13:58:46', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180823135857', '2018-08-23 13:58:57', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180823141800', '2018-08-23 14:18:00', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180824091900', '2018-08-24 09:19:00', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180824102734', '2018-08-24 10:27:34', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180824135209', '2018-08-24 13:52:09', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180824141254', '2018-08-24 14:12:54', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180824150617', '2018-08-24 15:06:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180824150937', '2018-08-24 15:09:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180824151146', '2018-08-24 15:11:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180824152002', '2018-08-24 15:20:02', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180824152132', '2018-08-24 15:21:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180824154223', '2018-08-24 15:42:23', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180824185802', '2018-08-24 18:58:02', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180827112224', '2018-08-27 11:22:24', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180827113656', '2018-08-27 11:36:56', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180827114531', '2018-08-27 11:45:31', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180827115000', '2018-08-27 11:50:00', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180827134308', '2018-08-27 13:43:08', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180827204058', '2018-08-27 20:40:58', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180827204101', '2018-08-27 20:41:01', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828083346', '2018-08-28 08:33:46', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828090455', '2018-08-28 09:04:55', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828091337', '2018-08-28 09:13:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828091541', '2018-08-28 09:15:41', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828093359', '2018-08-28 09:33:59', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828093930', '2018-08-28 09:39:30', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828094210', '2018-08-28 09:42:10', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828094236', '2018-08-28 09:42:36', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828094254', '2018-08-28 09:42:54', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828094626', '2018-08-28 09:46:26', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828094729', '2018-08-28 09:47:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828094806', '2018-08-28 09:48:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828094822', '2018-08-28 09:48:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828095124', '2018-08-28 09:51:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828095159', '2018-08-28 09:51:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '后台自动筛选，添加了库外问题记录，Issue_Id：822545，项目Id为：m1872-intl，项目内部名称：M1872 INTL，转至：Modem，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180828095503', '2018-08-28 09:55:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828095534', '2018-08-28 09:55:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828100449', '2018-08-28 10:04:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828100456', '2018-08-28 10:04:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828100749', '2018-08-28 10:07:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828100753', '2018-08-28 10:07:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828101449', '2018-08-28 10:14:49', 'zhengxiaofang', 'MZKJ-PC-03578_zhengxiaofang', 'MZKJ-PC-03578', '172.16.61.27', '18:66:DA:39:F0:44', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828102144', '2018-08-28 10:21:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828102420', '2018-08-28 10:24:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828102609', '2018-08-28 10:26:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828103313', '2018-08-28 10:33:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828103732', '2018-08-28 10:37:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828105247', '2018-08-28 10:52:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828105625', '2018-08-28 10:56:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828105659', '2018-08-28 10:56:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828110325', '2018-08-28 11:03:25', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180828110518', '2018-08-28 11:05:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180828114925', '2018-08-28 11:49:25', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180829114249', '2018-08-29 11:42:49', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180829115546', '2018-08-29 11:55:46', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '修改', '窗口【修改项目信息】，修改了项目记录，项目Id为：m1822intl，项目内部名称：M1822 INTL，项目负责人：高国芳，总负责人：郑璐，项目状态：Going，风险等级：/，硬件平台：高通，平台型号：骁龙632', '04');
INSERT INTO `system_log` VALUES ('180830094851', '2018-08-30 09:48:51', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830095058', '2018-08-30 09:50:58', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830095114', '2018-08-30 09:51:14', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830095203', '2018-08-30 09:52:03', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830095228', '2018-08-30 09:52:28', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：zhenglu，用户类型：管理员，旧用户类型：管理员，姓名：郑璐，性别：女，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180830100043', '2018-08-30 10:00:43', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830100135', '2018-08-30 10:01:35', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830100157', '2018-08-30 10:01:57', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830100617', '2018-08-30 10:06:17', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830101308', '2018-08-30 10:13:08', 'wangjinxin', 'EF-JINXIN_wangjinxin', 'EF-JINXIN', '172.16.61.23', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830102236', '2018-08-30 10:22:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830102354', '2018-08-30 10:23:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830105320', '2018-08-30 10:53:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830105339', '2018-08-30 10:53:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830105443', '2018-08-30 10:54:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830105456', '2018-08-30 10:54:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830105459', '2018-08-30 10:54:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830105505', '2018-08-30 10:55:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830110137670', '2018-08-30 11:01:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830110210218', '2018-08-30 11:02:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830110756187', '2018-08-30 11:07:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830111032143', '2018-08-30 11:10:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18083013563572', '2018-08-30 13:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830135659521', '2018-08-30 13:56:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830140128392', '2018-08-30 14:01:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830140143907', '2018-08-30 14:01:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830140626', '2018-08-30 14:06:26', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830140636', '2018-08-30 14:06:36', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830140654256', '2018-08-30 14:06:54', 'gaoguofang', 'MZKJ-PC-02500_gaoguofang', 'MZKJ-PC-02500', '172.16.61.22', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18083014144310', '2018-08-30 14:14:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830141831', '2018-08-30 14:18:31', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830141844', '2018-08-30 14:18:44', 'niming', 'EF-NIMING_niming', 'EF-NIMING', '172.16.61.39', '98:90:96:E2:E2:4A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830141850421', '2018-08-30 14:18:50', 'zhenglu', 'EF-ZHENGLU_zhenglu', 'EF-ZHENGLU', '172.16.61.17', '34:17:EB:9E:7E:67', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830141921750', '2018-08-30 14:19:21', 'niming', 'EF-NIMING_niming', 'EF-NIMING', '172.16.61.39', '98:90:96:E2:E2:4A', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830142002712', '2018-08-30 14:20:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830142036', '2018-08-30 14:20:36', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830142038', '2018-08-30 14:20:38', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830142055471', '2018-08-30 14:20:55', 'dongyiqiao', 'MZKJ-PC-00173_dongyiqiao', 'MZKJ-PC-00173', '172.16.61.26', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830142241', '2018-08-30 14:22:42', 'liuying2', 'MZKJ-PC-03067_liuying2', 'MZKJ-PC-03067', '172.16.61.24', '00:50:56:C0:00:08', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830143715193', '2018-08-30 14:37:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830144545622', '2018-08-30 14:45:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830144652771', '2018-08-30 14:46:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830144932272', '2018-08-30 14:49:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830145029631', '2018-08-30 14:50:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830145100799', '2018-08-30 14:51:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830145327675', '2018-08-30 14:53:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，添加了测试任务记录，任务Id：20180830145108，任务名：M1882海外版MPT第二轮测试任务安排，所测试机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180830145422497', '2018-08-30 14:54:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830145443786', '2018-08-30 14:54:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830150302951', '2018-08-30 15:03:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830151341209', '2018-08-30 15:13:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830151433500', '2018-08-30 15:14:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830151528558', '2018-08-30 15:15:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830151952146', '2018-08-30 15:19:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830152218393', '2018-08-30 15:22:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830152232148', '2018-08-30 15:22:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830152446897', '2018-08-30 15:24:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18083015254180', '2018-08-30 15:25:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830152951400', '2018-08-30 15:29:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830153010799', '2018-08-30 15:30:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18083015305947', '2018-08-30 15:30:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830153202799', '2018-08-30 15:32:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830155045315', '2018-08-30 15:50:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830155714440', '2018-08-30 15:57:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830155932314', '2018-08-30 15:59:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830160007761', '2018-08-30 16:00:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830160034964', '2018-08-30 16:00:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830160119515', '2018-08-30 16:01:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830160156602', '2018-08-30 16:01:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830160301308', '2018-08-30 16:03:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830160503817', '2018-08-30 16:05:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830160549378', '2018-08-30 16:05:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18083016072769', '2018-08-30 16:07:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830160837422', '2018-08-30 16:08:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830160949116', '2018-08-30 16:09:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830161019663', '2018-08-30 16:10:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830161548751', '2018-08-30 16:15:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830161830460', '2018-08-30 16:18:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18083016241439', '2018-08-30 16:24:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830162930884', '2018-08-30 16:29:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18083016302056', '2018-08-30 16:30:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830164351623', '2018-08-30 16:43:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830164603944', '2018-08-30 16:46:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830164852343', '2018-08-30 16:48:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830165024754', '2018-08-30 16:50:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830165133467', '2018-08-30 16:51:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，添加了测试任务记录，任务Id：20180830165040，任务名：测试2222，所测试机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180830165456691', '2018-08-30 16:54:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830165528320', '2018-08-30 16:55:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830165610772', '2018-08-30 16:56:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830165650215', '2018-08-30 16:56:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830170404433', '2018-08-30 17:04:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830170637637', '2018-08-30 17:06:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830171321561', '2018-08-30 17:13:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830171416557', '2018-08-30 17:14:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830171739106', '2018-08-30 17:17:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18083017222258', '2018-08-30 17:22:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1808301723152', '2018-08-30 17:23:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830172444374', '2018-08-30 17:24:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18083017260029', '2018-08-30 17:26:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830172950653', '2018-08-30 17:29:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830173101763', '2018-08-30 17:31:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【修改项目信息】，修改了项目记录，项目Id为：m1882-intl，项目内部名称：M1882 INTL，项目负责人：蔡娇娇，总负责人：郑璐，项目状态：Going，风险等级：/，硬件平台：高通，平台型号：骁龙845', '04');
INSERT INTO `system_log` VALUES ('18083017314962', '2018-08-30 17:31:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830173428899', '2018-08-30 17:34:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830173440894', '2018-08-30 17:34:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【修改项目信息】，修改了项目记录，项目Id为：m1882-intl，项目内部名称：M1882 INTL，项目负责人：蔡娇娇，总负责人：郑璐，项目状态：Going，风险等级：/，硬件平台：高通，平台型号：骁龙845', '04');
INSERT INTO `system_log` VALUES ('180830173523509', '2018-08-30 17:35:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【添加项目记录】，添加了项目记录，项目Id为：1811，项目内部名称：M1710，项目负责人：邢娜娜，总负责人：郑璐，项目状态：Going，风险等级：中，硬件平台：高通，平台型号：方法', '03');
INSERT INTO `system_log` VALUES ('180830173541605', '2018-08-30 17:35:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【修改项目信息】，修改了项目记录，项目Id为：1811，项目内部名称：M1710，项目负责人：邢娜娜，总负责人：郑璐，项目状态：Going，风险等级：中，硬件平台：高通，平台型号：方法', '04');
INSERT INTO `system_log` VALUES ('180830173550929', '2018-08-30 17:35:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【项目信息管理】，删除了项目记录，项目Id为：1811，项目内部名称：M1710，项目负责人：郑璐，项目状态：Going，风险等级：中，硬件平台：高通，平台型号：方法', '05');
INSERT INTO `system_log` VALUES ('180830173658348', '2018-08-30 17:36:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830174257625', '2018-08-30 17:42:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830174347218', '2018-08-30 17:43:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180830174439687', '2018-08-30 17:44:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180830175154991', '2018-08-30 17:51:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831094426483', '2018-08-31 09:44:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831101236459', '2018-08-31 10:12:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18083110184557', '2018-08-31 10:18:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831101915534', '2018-08-31 10:19:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18083110352169', '2018-08-31 10:35:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831103539271', '2018-08-31 10:35:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831103824648', '2018-08-31 10:38:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18083110393429', '2018-08-31 10:39:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【场测国家设置】，修改了城市记录，国家代码为：RUS，国家中文名：俄罗斯，城市中文名：莫斯科，城市英文名：Moscow', '04');
INSERT INTO `system_log` VALUES ('180831103948314', '2018-08-31 10:39:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【场测国家设置】，修改了城市记录，国家代码为：RUS，国家中文名：俄罗斯，城市中文名：莫斯科，城市英文名：Moscow', '04');
INSERT INTO `system_log` VALUES ('180831103957180', '2018-08-31 10:39:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【场测国家设置】，修改了城市记录，国家代码为：RUS，国家中文名：俄罗斯，城市中文名：莫斯科，城市英文名：Moscow', '04');
INSERT INTO `system_log` VALUES ('180831103959856', '2018-08-31 10:39:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【场测国家设置】，修改了城市记录，国家代码为：RUS，国家中文名：俄罗斯，城市中文名：莫斯科，城市英文名：Moscow', '04');
INSERT INTO `system_log` VALUES ('180831104006198', '2018-08-31 10:40:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【场测国家设置】，修改了城市记录，国家代码为：RUS，国家中文名：俄罗斯，城市中文名：莫斯科，城市英文名：Moscow', '04');
INSERT INTO `system_log` VALUES ('180831104020342', '2018-08-31 10:40:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【场测国家设置】，修改了城市记录，国家代码为：RUS，国家中文名：俄罗斯，城市中文名：莫斯科，城市英文名：Moscow', '04');
INSERT INTO `system_log` VALUES ('180831104626534', '2018-08-31 10:46:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831105320110', '2018-08-31 10:53:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831105407502', '2018-08-31 10:54:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【场测国家设置】，修改了城市记录，国家代码为：ITA，国家中文名：意大利，城市中文名：那不勒斯，城市英文名：Naples', '04');
INSERT INTO `system_log` VALUES ('180831105441748', '2018-08-31 10:54:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831111412105', '2018-08-31 11:14:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831111504379', '2018-08-31 11:15:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831114747939', '2018-08-31 11:47:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831114805742', '2018-08-31 11:48:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831114841582', '2018-08-31 11:48:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831114844698', '2018-08-31 11:48:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831114912100', '2018-08-31 11:49:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831114939391', '2018-08-31 11:49:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831115221633', '2018-08-31 11:52:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831115303541', '2018-08-31 11:53:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831115509487', '2018-08-31 11:55:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831115534313', '2018-08-31 11:55:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831115703204', '2018-08-31 11:57:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831134022830', '2018-08-31 13:40:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831134512900', '2018-08-31 13:45:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831134549640', '2018-08-31 13:45:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831140442211', '2018-08-31 14:04:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18083114074412', '2018-08-31 14:07:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831140855595', '2018-08-31 14:08:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831141554237', '2018-08-31 14:15:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831141634607', '2018-08-31 14:16:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831142041930', '2018-08-31 14:20:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831142100819', '2018-08-31 14:21:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831143528905', '2018-08-31 14:35:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831143617662', '2018-08-31 14:36:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：会话，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180831143634359', '2018-08-31 14:36:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：滚滚滚，模块类型：待机', '05');
INSERT INTO `system_log` VALUES ('18083114381729', '2018-08-31 14:38:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831145409634', '2018-08-31 14:54:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831145721247', '2018-08-31 14:57:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831145943263', '2018-08-31 14:59:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831150109160', '2018-08-31 15:01:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831150814551', '2018-08-31 15:08:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831150845882', '2018-08-31 15:08:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831150938733', '2018-08-31 15:09:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831151004490', '2018-08-31 15:10:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：拨号盘哈哈哈，模块类型：基本模块', '03');
INSERT INTO `system_log` VALUES ('180831151017247', '2018-08-31 15:10:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：拨号盘哈哈哈，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180831151029851', '2018-08-31 15:10:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：拨号盘，模块类型：VCC', '03');
INSERT INTO `system_log` VALUES ('18083115104621', '2018-08-31 15:10:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：拨号盘，模块类型：VCC', '05');
INSERT INTO `system_log` VALUES ('180831151200208', '2018-08-31 15:12:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831151632385', '2018-08-31 15:16:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831151656616', '2018-08-31 15:16:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：拨号盘更改，模块类型：基本模块', '04');
INSERT INTO `system_log` VALUES ('180831151704809', '2018-08-31 15:17:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：上个，模块类型：基本模块', '04');
INSERT INTO `system_log` VALUES ('180831151714722', '2018-08-31 15:17:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：拨号盘，模块类型：基本模块', '04');
INSERT INTO `system_log` VALUES ('180831153024426', '2018-08-31 15:30:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18083115375849', '2018-08-31 15:37:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831153811992', '2018-08-31 15:38:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：拨号盘会话，模块类型：基本模块', '04');
INSERT INTO `system_log` VALUES ('180831153900189', '2018-08-31 15:39:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180831153952447', '2018-08-31 15:39:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831154027104', '2018-08-31 15:40:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：无线网络更改，模块类型：基本模块', '04');
INSERT INTO `system_log` VALUES ('180831154035567', '2018-08-31 15:40:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：拨号盘，模块类型：基本模块', '04');
INSERT INTO `system_log` VALUES ('180831154040421', '2018-08-31 15:40:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：无线网络，模块类型：基本模块', '04');
INSERT INTO `system_log` VALUES ('180831154048525', '2018-08-31 15:40:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：嘎嘎嘎嘎嘎，模块类型：Monkey', '03');
INSERT INTO `system_log` VALUES ('180831154053661', '2018-08-31 15:40:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：嘎嘎嘎嘎嘎，模块类型：Monkey', '05');
INSERT INTO `system_log` VALUES ('180831154258171', '2018-08-31 15:42:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180831154307751', '2018-08-31 15:43:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：哈哈哈，模块类型：基本模块', '03');
INSERT INTO `system_log` VALUES ('180831154312311', '2018-08-31 15:43:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：哈哈哈，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180831154317922', '2018-08-31 15:43:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：通天塔，模块类型：VCC', '03');
INSERT INTO `system_log` VALUES ('180831154323649', '2018-08-31 15:43:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：通天塔，模块类型：VCC', '05');
INSERT INTO `system_log` VALUES ('180831154344780', '2018-08-31 15:43:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：发发发，模块类型：VCC', '03');
INSERT INTO `system_log` VALUES ('180831154401696', '2018-08-31 15:44:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：发发发哈哈哈，模块类型：VCC', '04');
INSERT INTO `system_log` VALUES ('180831154415362', '2018-08-31 15:44:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：啦啦啦啦，模块类型：VCC', '04');
INSERT INTO `system_log` VALUES ('180831154421825', '2018-08-31 15:44:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：发发发，模块类型：基本模块', '03');
INSERT INTO `system_log` VALUES ('180831154425549', '2018-08-31 15:44:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：啦啦啦啦，模块类型：VCC', '05');
INSERT INTO `system_log` VALUES ('180831154429952', '2018-08-31 15:44:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：发发发，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180831154433280', '2018-08-31 15:44:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：发发发，模块类型：基本模块', '03');
INSERT INTO `system_log` VALUES ('180831154436689', '2018-08-31 15:44:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：发发发，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180831154444459', '2018-08-31 15:44:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：灌灌灌灌，模块类型：VCC', '03');
INSERT INTO `system_log` VALUES ('180831154447706', '2018-08-31 15:44:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：灌灌灌灌，模块类型：VCC', '05');
INSERT INTO `system_log` VALUES ('180831160721175', '2018-08-31 16:07:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，添加了测试任务记录，任务Id：20180831160605，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180831183047626', '2018-08-31 18:30:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903092423172', '2018-09-03 09:24:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903093014146', '2018-09-03 09:30:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903093702650', '2018-09-03 09:37:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903094132585', '2018-09-03 09:41:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903094253277', '2018-09-03 09:42:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903095029783', '2018-09-03 09:50:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903095226808', '2018-09-03 09:52:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090310031246', '2018-09-03 10:03:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903100849640', '2018-09-03 10:08:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903100939795', '2018-09-03 10:09:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903102716561', '2018-09-03 10:27:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903102824165', '2018-09-03 10:28:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903104053872', '2018-09-03 10:40:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903104247257', '2018-09-03 10:42:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903104558756', '2018-09-03 10:45:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903104624104', '2018-09-03 10:46:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：充电专项好，模块类型：充电专项', '04');
INSERT INTO `system_log` VALUES ('180903104825222', '2018-09-03 10:48:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903105629900', '2018-09-03 10:56:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903105646360', '2018-09-03 10:56:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey来来来，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('18090310565284', '2018-09-03 10:56:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903105706410', '2018-09-03 10:57:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903105908676', '2018-09-03 10:59:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903105926976', '2018-09-03 10:59:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey来来来，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903110015143', '2018-09-03 11:00:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903110242316', '2018-09-03 11:02:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903110335660', '2018-09-03 11:03:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903110828857', '2018-09-03 11:08:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903110918893', '2018-09-03 11:09:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey哈哈哈，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('18090311103496', '2018-09-03 11:10:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903111138207', '2018-09-03 11:11:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903111152105', '2018-09-03 11:11:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey哈，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903111204783', '2018-09-03 11:12:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903111521132', '2018-09-03 11:15:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903111609734', '2018-09-03 11:16:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey哈好，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903112021959', '2018-09-03 11:20:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903112035791', '2018-09-03 11:20:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903112101642', '2018-09-03 11:21:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903112154529', '2018-09-03 11:21:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903112209847', '2018-09-03 11:22:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey会话，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903112215583', '2018-09-03 11:22:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：Monkey，模块类型：Monkey，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903112227287', '2018-09-03 11:22:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：坎坎坷坷，模块类型：VCC', '03');
INSERT INTO `system_log` VALUES ('18090311223546', '2018-09-03 11:22:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：坎坎坷坷，模块类型：VCC', '05');
INSERT INTO `system_log` VALUES ('18090311223882', '2018-09-03 11:22:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：坎坎坷坷，模块类型：VCC', '03');
INSERT INTO `system_log` VALUES ('180903112323158', '2018-09-03 11:23:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：坎坎坷坷，模块类型：VCC', '05');
INSERT INTO `system_log` VALUES ('180903112338681', '2018-09-03 11:23:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903112524301', '2018-09-03 11:25:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903112543250', '2018-09-03 11:25:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：待机测试略略略，模块类型：待机，从属：通用', '04');
INSERT INTO `system_log` VALUES ('18090311255541', '2018-09-03 11:25:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：待机测试，模块类型：待机，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903112608940', '2018-09-03 11:26:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：拨号盘，模块类型：基本模块，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903112641146', '2018-09-03 11:26:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903112721607', '2018-09-03 11:27:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090311312852', '2018-09-03 11:31:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903113135610', '2018-09-03 11:31:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：VCC应用，模块类型：VCC，从属：通用', '04');
INSERT INTO `system_log` VALUES ('180903113217908', '2018-09-03 11:32:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809031136543', '2018-09-03 11:36:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903113714286', '2018-09-03 11:37:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903114040706', '2018-09-03 11:40:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903114141608', '2018-09-03 11:41:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903114407880', '2018-09-03 11:44:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903114431179', '2018-09-03 11:44:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903114538434', '2018-09-03 11:45:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903114623144', '2018-09-03 11:46:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903115109622', '2018-09-03 11:51:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903115200257', '2018-09-03 11:52:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903115532292', '2018-09-03 11:55:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903115621218', '2018-09-03 11:56:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903115714566', '2018-09-03 11:57:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903115735644', '2018-09-03 11:57:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903134757923', '2018-09-03 13:47:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903135322168', '2018-09-03 13:53:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903140757972', '2018-09-03 14:07:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903140809271', '2018-09-03 14:08:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：哈哈哈，从属Id：22', '03');
INSERT INTO `system_log` VALUES ('180903140845603', '2018-09-03 14:08:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903142519337', '2018-09-03 14:25:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903142530338', '2018-09-03 14:25:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：会话，从属Id：03', '03');
INSERT INTO `system_log` VALUES ('180903142736199', '2018-09-03 14:27:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903143836208', '2018-09-03 14:38:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903143918629', '2018-09-03 14:39:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903144556878', '2018-09-03 14:45:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903144725807', '2018-09-03 14:47:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903144911802', '2018-09-03 14:49:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090314501563', '2018-09-03 14:50:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903145228691', '2018-09-03 14:52:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903145236531', '2018-09-03 14:52:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：会话，从属Id：03', '04');
INSERT INTO `system_log` VALUES ('18090314524219', '2018-09-03 14:52:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：会话，从属Id：03', '04');
INSERT INTO `system_log` VALUES ('180903145249978', '2018-09-03 14:52:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：PA项目，从属Id：02', '04');
INSERT INTO `system_log` VALUES ('180903145256364', '2018-09-03 14:52:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：会话，从属Id：03', '05');
INSERT INTO `system_log` VALUES ('180903145259336', '2018-09-03 14:52:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：通用，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180903145302186', '2018-09-03 14:53:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：通用，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180903145306365', '2018-09-03 14:53:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：通用会话，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180903145319619', '2018-09-03 14:53:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：项目通用，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180903145327989', '2018-09-03 14:53:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：项目通用，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180903145336989', '2018-09-03 14:53:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903145534947', '2018-09-03 14:55:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903145544517', '2018-09-03 14:55:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：哈哈哈哈，从属Id：03', '03');
INSERT INTO `system_log` VALUES ('180903145558732', '2018-09-03 14:55:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：来来来，从属Id：04', '03');
INSERT INTO `system_log` VALUES ('180903145603791', '2018-09-03 14:56:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：来来来，从属Id：04', '05');
INSERT INTO `system_log` VALUES ('180903145645808', '2018-09-03 14:56:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903145913603', '2018-09-03 14:59:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903145937755', '2018-09-03 14:59:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：会话，从属Id：04', '03');
INSERT INTO `system_log` VALUES ('18090314594035', '2018-09-03 14:59:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：会话，从属Id：04', '04');
INSERT INTO `system_log` VALUES ('180903145946709', '2018-09-03 14:59:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：会话，从属Id：04', '05');
INSERT INTO `system_log` VALUES ('18090315000231', '2018-09-03 15:00:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：哈哈哈哈，从属Id：03', '05');
INSERT INTO `system_log` VALUES ('180903150100492', '2018-09-03 15:01:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903151115881', '2018-09-03 15:11:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903151220883', '2018-09-03 15:12:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：项目通用，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180903151247508', '2018-09-03 15:12:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试，从属Id：03', '03');
INSERT INTO `system_log` VALUES ('180903151859297', '2018-09-03 15:18:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903153735379', '2018-09-03 15:37:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903153758962', '2018-09-03 15:37:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903153947690', '2018-09-03 15:39:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903154011223', '2018-09-03 15:40:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903154103742', '2018-09-03 15:41:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903154137176', '2018-09-03 15:41:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903154232230', '2018-09-03 15:42:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903154256585', '2018-09-03 15:42:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：测试，从属Id：03', '05');
INSERT INTO `system_log` VALUES ('180903154302846', '2018-09-03 15:43:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试更改，从属Id：04', '03');
INSERT INTO `system_log` VALUES ('180903154306193', '2018-09-03 15:43:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：测试更改，从属Id：04', '05');
INSERT INTO `system_log` VALUES ('1809031543204', '2018-09-03 15:43:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试更改，从属Id：04', '03');
INSERT INTO `system_log` VALUES ('180903154324692', '2018-09-03 15:43:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：测试更改，从属Id：04', '05');
INSERT INTO `system_log` VALUES ('180903154327949', '2018-09-03 15:43:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试更改，从属Id：04', '03');
INSERT INTO `system_log` VALUES ('180903154333293', '2018-09-03 15:43:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：测试更改，从属Id：04', '05');
INSERT INTO `system_log` VALUES ('180903154406809', '2018-09-03 15:44:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试，从属Id：03', '03');
INSERT INTO `system_log` VALUES ('180903154412387', '2018-09-03 15:44:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：测试更改，从属Id：03', '04');
INSERT INTO `system_log` VALUES ('180903154417557', '2018-09-03 15:44:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：会话，从属Id：04', '03');
INSERT INTO `system_log` VALUES ('180903154426242', '2018-09-03 15:44:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：测试更改，从属Id：03', '05');
INSERT INTO `system_log` VALUES ('180903154432940', '2018-09-03 15:44:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试更改，从属Id：03', '03');
INSERT INTO `system_log` VALUES ('180903154501174', '2018-09-03 15:45:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：项目通用看看，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180903154511431', '2018-09-03 15:45:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：项目通用，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180903154533218', '2018-09-03 15:45:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903154656335', '2018-09-03 15:46:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903154717415', '2018-09-03 15:47:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：测试更改坎坎坷坷，从属Id：03', '04');
INSERT INTO `system_log` VALUES ('180903154724149', '2018-09-03 15:47:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：测试更改，从属Id：03', '04');
INSERT INTO `system_log` VALUES ('180903154740526', '2018-09-03 15:47:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：哈哈哈，模块类型：基本模块，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180903154829149', '2018-09-03 15:48:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903160359152', '2018-09-03 16:03:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903160408378', '2018-09-03 16:04:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：哈哈哈，类型Id：07', '03');
INSERT INTO `system_log` VALUES ('180903160418728', '2018-09-03 16:04:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：哈哈将解决，类型Id：07', '04');
INSERT INTO `system_log` VALUES ('180903160428207', '2018-09-03 16:04:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903160558428', '2018-09-03 16:05:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903160648851', '2018-09-03 16:06:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：通天塔，类型Id：08', '03');
INSERT INTO `system_log` VALUES ('180903160657587', '2018-09-03 16:06:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903160903645', '2018-09-03 16:09:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903160942275', '2018-09-03 16:09:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903161522429', '2018-09-03 16:15:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090316160390', '2018-09-03 16:16:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：哈哈哈，模块类型：VCC，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180903161623298', '2018-09-03 16:16:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903161711564', '2018-09-03 16:17:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903161728308', '2018-09-03 16:17:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：PA项目，从属Id：02', '05');
INSERT INTO `system_log` VALUES ('180903161805912', '2018-09-03 16:18:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：PA项目，从属Id：05', '03');
INSERT INTO `system_log` VALUES ('180903161928819', '2018-09-03 16:19:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：哈哈哈，模块类型：VCC，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180903161944907', '2018-09-03 16:19:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：PA项目，从属Id：05', '05');
INSERT INTO `system_log` VALUES ('180903162013379', '2018-09-03 16:20:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903162116663', '2018-09-03 16:21:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090316213763', '2018-09-03 16:21:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：三生三世，模块类型：Monkey，从属：测试更改', '03');
INSERT INTO `system_log` VALUES ('180903162142945', '2018-09-03 16:21:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：打断点，模块类型：Monkey，从属：测试更改', '03');
INSERT INTO `system_log` VALUES ('18090316215721', '2018-09-03 16:21:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：测试更改，从属Id：03', '05');
INSERT INTO `system_log` VALUES ('180903162232391', '2018-09-03 16:22:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903162344500', '2018-09-03 16:23:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903162402905', '2018-09-03 16:24:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：PA项目，从属Id：05', '03');
INSERT INTO `system_log` VALUES ('180903162411669', '2018-09-03 16:24:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：达到，模块类型：Monkey，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180903162415805', '2018-09-03 16:24:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：打断点，模块类型：Monkey，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180903162426416', '2018-09-03 16:24:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：PA项目，从属Id：05', '05');
INSERT INTO `system_log` VALUES ('180903162450980', '2018-09-03 16:24:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：PA项目，从属Id：05', '03');
INSERT INTO `system_log` VALUES ('180903162458393', '2018-09-03 16:24:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：哈哈哈，模块类型：Monkey，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180903162504534', '2018-09-03 16:25:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属，从属名：PA项目，从属Id：05', '05');
INSERT INTO `system_log` VALUES ('18090316260595', '2018-09-03 16:26:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903162726902', '2018-09-03 16:27:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903162753728', '2018-09-03 16:27:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：PA项目，从属Id：05', '03');
INSERT INTO `system_log` VALUES ('180903162801565', '2018-09-03 16:28:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：打断点，模块类型：基本模块，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180903162806764', '2018-09-03 16:28:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：打断点得到，模块类型：基本模块，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180903162815699', '2018-09-03 16:28:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属及其所有关联测试模块，从属名：PA项目，从属Id：05', '05');
INSERT INTO `system_log` VALUES ('180903163027337', '2018-09-03 16:30:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903163615902', '2018-09-03 16:36:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903163639525', '2018-09-03 16:36:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090316400329', '2018-09-03 16:40:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903164104770', '2018-09-03 16:41:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：发发发，类型Id：09', '03');
INSERT INTO `system_log` VALUES ('180903164207134', '2018-09-03 16:42:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090316521083', '2018-09-03 16:52:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903165321612', '2018-09-03 16:53:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：哈哈，类型Id：07', '04');
INSERT INTO `system_log` VALUES ('180903165343550', '2018-09-03 16:53:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：PA项目，从属Id：05', '03');
INSERT INTO `system_log` VALUES ('180903165358474', '2018-09-03 16:53:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：打断点，模块类型：哈哈，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180903165433352', '2018-09-03 16:54:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：哈哈耶耶耶，类型Id：07', '04');
INSERT INTO `system_log` VALUES ('180903173243277', '2018-09-03 17:32:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：哈哈耶，类型Id：07', '04');
INSERT INTO `system_log` VALUES ('180903173258417', '2018-09-03 17:32:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：哈哈耶有，类型Id：07', '04');
INSERT INTO `system_log` VALUES ('180903173313558', '2018-09-03 17:33:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903174016113', '2018-09-03 17:40:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903174057603', '2018-09-03 17:40:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了模块类型及其所有关联测试模块，类型名：Monkey，类型Id：03', '05');
INSERT INTO `system_log` VALUES ('180903174112413', '2018-09-03 17:41:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：Monkey，类型Id：10', '03');
INSERT INTO `system_log` VALUES ('180903174132884', '2018-09-03 17:41:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：Monkey，模块类型：Monkey，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180903174223900', '2018-09-03 17:42:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了模块类型及其所有关联测试模块，类型名：发发发，类型Id：09', '05');
INSERT INTO `system_log` VALUES ('180903174228382', '2018-09-03 17:42:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了模块类型及其所有关联测试模块，类型名：哈哈耶有，类型Id：07', '05');
INSERT INTO `system_log` VALUES ('180903174729566', '2018-09-03 17:47:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903175121606', '2018-09-03 17:51:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903175212335', '2018-09-03 17:52:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090317534699', '2018-09-03 17:53:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903175443620', '2018-09-03 17:54:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：方法，模块类型：充电专项，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('18090317571841', '2018-09-03 17:57:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180903175748188', '2018-09-03 17:57:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090318013722', '2018-09-03 18:01:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090318030931', '2018-09-03 18:03:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180903180352521', '2018-09-03 18:03:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090409305739', '2018-09-04 09:30:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904093137508', '2018-09-04 09:31:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904095647765', '2018-09-04 09:56:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904095718382', '2018-09-04 09:57:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：发发发，模块类型：VCC，从属：会话', '03');
INSERT INTO `system_log` VALUES ('180904095728285', '2018-09-04 09:57:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：会话哈哈哈哈，从属Id：04', '04');
INSERT INTO `system_log` VALUES ('180904095742794', '2018-09-04 09:57:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：项目通用来来来，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180904095756790', '2018-09-04 09:57:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：项目通用，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180904095850944', '2018-09-04 09:58:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904100707636', '2018-09-04 10:07:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('1809041010027', '2018-09-04 10:10:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：基本模块解决，类型Id：01', '04');
INSERT INTO `system_log` VALUES ('180904101006191', '2018-09-04 10:10:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：基本模块，类型Id：01', '04');
INSERT INTO `system_log` VALUES ('180904101016868', '2018-09-04 10:10:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：基本模块解决，类型Id：01', '04');
INSERT INTO `system_log` VALUES ('180904101021264', '2018-09-04 10:10:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：基本模块，类型Id：01', '04');
INSERT INTO `system_log` VALUES ('180904101136508', '2018-09-04 10:11:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904101828899', '2018-09-04 10:18:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904101858617', '2018-09-04 10:18:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904102405212', '2018-09-04 10:24:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904102630697', '2018-09-04 10:26:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809041029131', '2018-09-04 10:29:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904102948433', '2018-09-04 10:29:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904103054522', '2018-09-04 10:30:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904103258689', '2018-09-04 10:32:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属及其所有关联测试模块，从属名：会话哈哈哈哈，从属Id：04', '05');
INSERT INTO `system_log` VALUES ('180904103327364', '2018-09-04 10:33:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090410381718', '2018-09-04 10:38:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904103832576', '2018-09-04 10:38:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试，从属Id：06', '03');
INSERT INTO `system_log` VALUES ('180904103842769', '2018-09-04 10:38:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：灌灌灌灌，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904103852656', '2018-09-04 10:38:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属及其所有关联测试模块，从属名：测试，从属Id：06', '05');
INSERT INTO `system_log` VALUES ('180904103857739', '2018-09-04 10:38:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试，从属Id：06', '03');
INSERT INTO `system_log` VALUES ('180904103911108', '2018-09-04 10:39:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：灌灌灌灌，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('18090410391891', '2018-09-04 10:39:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：灌灌灌灌会话，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('18090410392317', '2018-09-04 10:39:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：方法话，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904103929839', '2018-09-04 10:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属及其所有关联测试模块，从属名：测试，从属Id：06', '05');
INSERT INTO `system_log` VALUES ('180904103954325', '2018-09-04 10:39:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试，从属Id：06', '03');
INSERT INTO `system_log` VALUES ('180904104001978', '2018-09-04 10:40:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：会话，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904104008259', '2018-09-04 10:40:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：会话得到，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904104013648', '2018-09-04 10:40:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：会话得到方法，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904104056147', '2018-09-04 10:40:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属及其所有关联测试模块，从属名：测试，从属Id：06', '05');
INSERT INTO `system_log` VALUES ('18090410461127', '2018-09-04 10:46:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904104620592', '2018-09-04 10:46:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试，从属Id：06', '03');
INSERT INTO `system_log` VALUES ('180904104628900', '2018-09-04 10:46:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：11，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904104636351', '2018-09-04 10:46:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：222，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904104640794', '2018-09-04 10:46:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：333，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904104644936', '2018-09-04 10:46:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属及其所有关联测试模块，从属名：测试，从属Id：06', '05');
INSERT INTO `system_log` VALUES ('180904104650709', '2018-09-04 10:46:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：333，模块类型：VCC，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('18090410465816', '2018-09-04 10:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：测试，从属Id：06', '03');
INSERT INTO `system_log` VALUES ('180904104702945', '2018-09-04 10:47:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：333，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904104707551', '2018-09-04 10:47:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：222，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('18090410471193', '2018-09-04 10:47:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：111，模块类型：VCC，从属：测试', '03');
INSERT INTO `system_log` VALUES ('180904104721202', '2018-09-04 10:47:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属及其所有关联测试模块，从属名：PA项目，从属Id：05', '05');
INSERT INTO `system_log` VALUES ('1809041047272', '2018-09-04 10:47:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了从属及其所有关联测试模块，从属名：测试，从属Id：06', '05');
INSERT INTO `system_log` VALUES ('180904104728772', '2018-09-04 10:47:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904104848825', '2018-09-04 10:48:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904104904621', '2018-09-04 10:49:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：PA项目，从属Id：02', '03');
INSERT INTO `system_log` VALUES ('180904104912516', '2018-09-04 10:49:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：111，模块类型：通天塔，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904104916750', '2018-09-04 10:49:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：222，模块类型：通天塔，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904104920149', '2018-09-04 10:49:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：333，模块类型：通天塔，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904104938117', '2018-09-04 10:49:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了模块类型及其所有关联测试模块，类型名：通天塔，类型Id：08', '05');
INSERT INTO `system_log` VALUES ('180904105208830', '2018-09-04 10:52:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904105326870', '2018-09-04 10:53:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904105513511', '2018-09-04 10:55:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，添加了测试任务记录，任务Id：20180904105330，任务名：发布项测试，所测试机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180904105555140', '2018-09-04 10:55:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904110450244', '2018-09-04 11:04:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904110652518', '2018-09-04 11:06:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904110939224', '2018-09-04 11:09:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904111035215', '2018-09-04 11:10:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，添加了测试任务记录，任务Id：20180904110946，任务名：发布项测试，所测试机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('18090411130399', '2018-09-04 11:13:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904111612620', '2018-09-04 11:16:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904111731575', '2018-09-04 11:17:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，添加了测试任务记录，任务Id：20180904111616，任务名：测试，所测试机型项目：m1816-intl', '03');
INSERT INTO `system_log` VALUES ('180904112041940', '2018-09-04 11:20:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904112509828', '2018-09-04 11:25:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090411254667', '2018-09-04 11:25:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904112818129', '2018-09-04 11:28:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904112958943', '2018-09-04 11:29:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904113505617', '2018-09-04 11:35:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904113631948', '2018-09-04 11:36:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904113909737', '2018-09-04 11:39:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904113938632', '2018-09-04 11:39:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904114048481', '2018-09-04 11:40:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904114342465', '2018-09-04 11:43:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904114431459', '2018-09-04 11:44:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904114658209', '2018-09-04 11:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904115018286', '2018-09-04 11:50:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904115628895', '2018-09-04 11:56:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904115927884', '2018-09-04 11:59:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904120005610', '2018-09-04 12:00:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904134046542', '2018-09-04 13:40:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904134303491', '2018-09-04 13:43:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904134349636', '2018-09-04 13:43:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904134425119', '2018-09-04 13:44:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904141319347', '2018-09-04 14:13:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904141458505', '2018-09-04 14:14:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904141559211', '2018-09-04 14:15:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904141724787', '2018-09-04 14:17:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，添加了测试任务记录，任务Id：20180904141618，任务名：测试，所测试机型项目：m1816-intl', '03');
INSERT INTO `system_log` VALUES ('180904141922830', '2018-09-04 14:19:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904142058377', '2018-09-04 14:20:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904142208582', '2018-09-04 14:22:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904142939181', '2018-09-04 14:29:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('1809041430150', '2018-09-04 14:30:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904143121821', '2018-09-04 14:31:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904143159163', '2018-09-04 14:31:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904143710827', '2018-09-04 14:37:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904143738903', '2018-09-04 14:37:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904144529743', '2018-09-04 14:45:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904144546371', '2018-09-04 14:45:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904144658806', '2018-09-04 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904144801435', '2018-09-04 14:48:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904145002390', '2018-09-04 14:50:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904145050612', '2018-09-04 14:50:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904154936891', '2018-09-04 15:49:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904154953752', '2018-09-04 15:49:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：哈哈哈，Id：08', '03');
INSERT INTO `system_log` VALUES ('180904155024897', '2018-09-04 15:50:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904155623467', '2018-09-04 15:56:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904160608752', '2018-09-04 16:06:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904161654347', '2018-09-04 16:16:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904161710790', '2018-09-04 16:17:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试要求，测试要求名：哈哈哈，Id：08', '05');
INSERT INTO `system_log` VALUES ('180904161806466', '2018-09-04 16:18:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：哈哈哈，Id：09', '03');
INSERT INTO `system_log` VALUES ('18090416181262', '2018-09-04 16:18:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试要求，测试要求名：哈哈哈来来来，Id：09', '04');
INSERT INTO `system_log` VALUES ('180904161820642', '2018-09-04 16:18:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试要求，测试要求名：哈哈源于，Id：09', '04');
INSERT INTO `system_log` VALUES ('180904161826412', '2018-09-04 16:18:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904162247960', '2018-09-04 16:22:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904162316885', '2018-09-04 16:23:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试要求，测试要求名：哈哈源于，Id：09', '05');
INSERT INTO `system_log` VALUES ('180904162331192', '2018-09-04 16:23:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：灌灌灌灌，Id：10', '03');
INSERT INTO `system_log` VALUES ('180904162339174', '2018-09-04 16:23:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：UUu，Id：11', '03');
INSERT INTO `system_log` VALUES ('180904162345485', '2018-09-04 16:23:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试要求，测试要求名：灌灌灌灌，Id：10', '05');
INSERT INTO `system_log` VALUES ('1809041623490', '2018-09-04 16:23:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试要求，测试要求名：UUu，Id：11', '05');
INSERT INTO `system_log` VALUES ('180904162821487', '2018-09-04 16:28:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904162832162', '2018-09-04 16:28:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904162852287', '2018-09-04 16:28:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：项目通用，从属Id：01', '03');
INSERT INTO `system_log` VALUES ('180904162913948', '2018-09-04 16:29:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：PA，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('18090416292513', '2018-09-04 16:29:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：项目通用，从属Id：01', '04');
INSERT INTO `system_log` VALUES ('180904162950910', '2018-09-04 16:29:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：基本模块，类型Id：01', '03');
INSERT INTO `system_log` VALUES ('180904162957310', '2018-09-04 16:29:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904163232747', '2018-09-04 16:32:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090416324493', '2018-09-04 16:32:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：基本模块，类型Id：01', '04');
INSERT INTO `system_log` VALUES ('180904163248892', '2018-09-04 16:32:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904163703452', '2018-09-04 16:37:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904163726488', '2018-09-04 16:37:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904164044792', '2018-09-04 16:40:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904164057222', '2018-09-04 16:40:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：更改，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164157547', '2018-09-04 16:41:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：项目通用，Id：001', '03');
INSERT INTO `system_log` VALUES ('180904164206644', '2018-09-04 16:42:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：基本模块，Id：001', '03');
INSERT INTO `system_log` VALUES ('180904164215528', '2018-09-04 16:42:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：哈哈哈，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('18090416441976', '2018-09-04 16:44:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：项目通用，Id：001', '03');
INSERT INTO `system_log` VALUES ('18090416452596', '2018-09-04 16:45:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：基本模块，Id：001', '03');
INSERT INTO `system_log` VALUES ('180904164542393', '2018-09-04 16:45:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：拨号盘，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164618286', '2018-09-04 16:46:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：流媒体，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164624256', '2018-09-04 16:46:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：联系人，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164703694', '2018-09-04 16:47:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：信息，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164709108', '2018-09-04 16:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：图库，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164728665', '2018-09-04 16:47:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：图库，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180904164731693', '2018-09-04 16:47:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：信息，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180904164734392', '2018-09-04 16:47:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：联系人，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180904164737259', '2018-09-04 16:47:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：流媒体，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180904164759449', '2018-09-04 16:47:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：无线网络，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164901769', '2018-09-04 16:49:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：通话控制，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164911171', '2018-09-04 16:49:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：通话设置，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164919639', '2018-09-04 16:49:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：双卡和网络，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('18090416492764', '2018-09-04 16:49:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：流媒体，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164934742', '2018-09-04 16:49:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：联系人，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164944335', '2018-09-04 16:49:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：GPS，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904164952355', '2018-09-04 16:49:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：外部应用安装，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165000121', '2018-09-04 16:50:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：设置，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165007450', '2018-09-04 16:50:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：下载管理，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165013743', '2018-09-04 16:50:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：海外top应用，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165020906', '2018-09-04 16:50:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：信息，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165028263', '2018-09-04 16:50:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：图库，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165035321', '2018-09-04 16:50:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：相机，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165044445', '2018-09-04 16:50:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：VCC应用，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165105124', '2018-09-04 16:51:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：待机，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('18090416514364', '2018-09-04 16:51:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：Monkey，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165242363', '2018-09-04 16:52:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：待机，Id：002', '03');
INSERT INTO `system_log` VALUES ('180904165250809', '2018-09-04 16:52:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：Monkey，Id：002', '04');
INSERT INTO `system_log` VALUES ('180904165324924', '2018-09-04 16:53:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：充电专项，Id：002', '04');
INSERT INTO `system_log` VALUES ('180904165338717', '2018-09-04 16:53:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：发布项，Id：002', '04');
INSERT INTO `system_log` VALUES ('180904165346869', '2018-09-04 16:53:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：Monkey，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180904165349319', '2018-09-04 16:53:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：待机，模块类型：基本模块', '05');
INSERT INTO `system_log` VALUES ('180904165409324', '2018-09-04 16:54:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了模块类型及其所有关联测试模块，类型名：发布项，Id：002', '05');
INSERT INTO `system_log` VALUES ('180904165454677', '2018-09-04 16:54:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：待机，Id：002', '03');
INSERT INTO `system_log` VALUES ('180904165535119', '2018-09-04 16:55:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：Monkey，Id：003', '03');
INSERT INTO `system_log` VALUES ('180904165556407', '2018-09-04 16:55:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：发布项，Id：004', '03');
INSERT INTO `system_log` VALUES ('180904165606884', '2018-09-04 16:56:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：充电专项，Id：005', '03');
INSERT INTO `system_log` VALUES ('180904165624328', '2018-09-04 16:56:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：待机，模块类型：待机，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165639755', '2018-09-04 16:56:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：Monkey，模块类型：Monkey，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165757606', '2018-09-04 16:57:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：充电专项，模块类型：充电专项，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165905644', '2018-09-04 16:59:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：互刷测试，模块类型：发布项，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165920512', '2018-09-04 16:59:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：OTA推送，模块类型：发布项，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('18090416593144', '2018-09-04 16:59:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：下载链接，模块类型：发布项，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904165943319', '2018-09-04 16:59:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：增量测试，模块类型：发布项，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180904170022275', '2018-09-04 17:00:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：P1，Id：001', '03');
INSERT INTO `system_log` VALUES ('180904170028539', '2018-09-04 17:00:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：P2，Id：002', '03');
INSERT INTO `system_log` VALUES ('18090417013979', '2018-09-04 17:01:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904170308116', '2018-09-04 17:03:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904170316992', '2018-09-04 17:03:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：P3，Id：003', '03');
INSERT INTO `system_log` VALUES ('180904170323580', '2018-09-04 17:03:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：P4，Id：004', '03');
INSERT INTO `system_log` VALUES ('180904170348287', '2018-09-04 17:03:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：点检，Id：005', '03');
INSERT INTO `system_log` VALUES ('180904170405414', '2018-09-04 17:04:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：10小时待机，Id：006', '03');
INSERT INTO `system_log` VALUES ('180904170425348', '2018-09-04 17:04:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试要求，测试要求名：Monkey60*72H，Id：006', '04');
INSERT INTO `system_log` VALUES ('180904170440273', '2018-09-04 17:04:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试要求，测试要求名：待机10小时，Id：006', '04');
INSERT INTO `system_log` VALUES ('180904170500190', '2018-09-04 17:05:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：Monkey60*72H，Id：007', '03');
INSERT INTO `system_log` VALUES ('18090417053620', '2018-09-04 17:05:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试要求，测试要求名：10小时待机，Id：006', '04');
INSERT INTO `system_log` VALUES ('180904170707179', '2018-09-04 17:07:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了从属，从属名：PA项目，Id：002', '03');
INSERT INTO `system_log` VALUES ('180904170828749', '2018-09-04 17:08:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：通讯，Id：006', '03');
INSERT INTO `system_log` VALUES ('180904170832261', '2018-09-04 17:08:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904171356393', '2018-09-04 17:13:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904171414460', '2018-09-04 17:14:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：PA通讯，Id：006', '04');
INSERT INTO `system_log` VALUES ('18090417143434', '2018-09-04 17:14:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：PA_通讯，Id：006', '04');
INSERT INTO `system_log` VALUES ('18090417145365', '2018-09-04 17:14:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：PA_无线，Id：007', '03');
INSERT INTO `system_log` VALUES ('18090417155948', '2018-09-04 17:15:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：会话，模块类型：PA_通讯，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904171628967', '2018-09-04 17:16:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：PA_多媒体，Id：007', '04');
INSERT INTO `system_log` VALUES ('180904171706574', '2018-09-04 17:17:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：PA_无线，Id：007', '04');
INSERT INTO `system_log` VALUES ('180904171719269', '2018-09-04 17:17:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：PA_多媒体，Id：008', '03');
INSERT INTO `system_log` VALUES ('180904171733220', '2018-09-04 17:17:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：PA_系统应用，Id：008', '04');
INSERT INTO `system_log` VALUES ('180904171741792', '2018-09-04 17:17:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了模块类型，类型名：PA_多媒体，Id：008', '04');
INSERT INTO `system_log` VALUES ('180904171758635', '2018-09-04 17:17:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：PA_系统应用，Id：009', '03');
INSERT INTO `system_log` VALUES ('180904171818591', '2018-09-04 17:18:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：PA_Google应用，Id：010', '03');
INSERT INTO `system_log` VALUES ('180904171857464', '2018-09-04 17:18:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了模块类型，类型名：PA_专项测试，Id：011', '03');
INSERT INTO `system_log` VALUES ('180904171913371', '2018-09-04 17:19:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：VoLTE，模块类型：PA_通讯，从属：PA项目', '04');
INSERT INTO `system_log` VALUES ('180904171929953', '2018-09-04 17:19:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：通话，模块类型：PA_通讯，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904171937775', '2018-09-04 17:19:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：网络制式，模块类型：PA_通讯，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('18090417194565', '2018-09-04 17:19:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：通讯录，模块类型：PA_通讯，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904171952983', '2018-09-04 17:19:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：信息，模块类型：PA_通讯，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172004352', '2018-09-04 17:20:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：WLAN，模块类型：PA_无线，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172012191', '2018-09-04 17:20:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：蓝牙，模块类型：PA_无线，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172018981', '2018-09-04 17:20:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：GPS，模块类型：PA_无线，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172027127', '2018-09-04 17:20:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：WIFI display，模块类型：PA_无线，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172036675', '2018-09-04 17:20:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：VPN，模块类型：PA_无线，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172048709', '2018-09-04 17:20:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：相机，模块类型：PA_多媒体，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172056383', '2018-09-04 17:20:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：录音机，模块类型：PA_多媒体，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172107552', '2018-09-04 17:21:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：MTP&PTP，模块类型：PA_多媒体，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172115533', '2018-09-04 17:21:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：SD卡，模块类型：PA_多媒体，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172125253', '2018-09-04 17:21:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：USB HOST（OTG），模块类型：PA_多媒体，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172146583', '2018-09-04 17:21:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：USB Audio，模块类型：PA_多媒体，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172153124', '2018-09-04 17:21:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：有线耳机，模块类型：PA_多媒体，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172203662', '2018-09-04 17:22:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：多任务，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172214620', '2018-09-04 17:22:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：通知中心，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('18090417222215', '2018-09-04 17:22:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：设置，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172228604', '2018-09-04 17:22:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：语言和输入法，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172235734', '2018-09-04 17:22:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：开关机，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172242935', '2018-09-04 17:22:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：桌面，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172250191', '2018-09-04 17:22:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：小部件，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172256236', '2018-09-04 17:22:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：STK，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172303421', '2018-09-04 17:23:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：物理按键，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172312674', '2018-09-04 17:23:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：TP，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172319626', '2018-09-04 17:23:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：光感，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172326949', '2018-09-04 17:23:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：Sensor，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172333931', '2018-09-04 17:23:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：电源管理，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172345325', '2018-09-04 17:23:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：手电筒，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172352443', '2018-09-04 17:23:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：屏幕录制，模块类型：PA_系统应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172407635', '2018-09-04 17:24:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：GMS，模块类型：PA_Google应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172432871', '2018-09-04 17:24:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：计算器，模块类型：PA_Google应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172441221', '2018-09-04 17:24:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：时钟，模块类型：PA_Google应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172448717', '2018-09-04 17:24:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：记事本，模块类型：PA_Google应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('18090417245613', '2018-09-04 17:24:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：文件管理，模块类型：PA_Google应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172504256', '2018-09-04 17:25:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：开机向导，模块类型：PA_Google应用，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172513968', '2018-09-04 17:25:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：续航测试，模块类型：PA_专项测试，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904172530669', '2018-09-04 17:25:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：海外需求测试，模块类型：PA_专项测试，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180904173036195', '2018-09-04 17:30:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，添加了测试任务记录，任务Id：20180904172614，任务名：PA项目海外版MPT测试阶段摸底测试安排，所测试机型项目：m1818', '03');
INSERT INTO `system_log` VALUES ('180904173456955', '2018-09-04 17:34:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904173710916', '2018-09-04 17:37:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090417380650', '2018-09-04 17:38:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090417385667', '2018-09-04 17:38:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904173924633', '2018-09-04 17:39:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904174102680', '2018-09-04 17:41:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904174210135', '2018-09-04 17:42:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904174443379', '2018-09-04 17:44:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904174504502', '2018-09-04 17:45:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904174548570', '2018-09-04 17:45:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904174815891', '2018-09-04 17:48:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904174902439', '2018-09-04 17:49:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('1809041750321', '2018-09-04 17:50:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904175112375', '2018-09-04 17:51:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904175151688', '2018-09-04 17:51:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904175306377', '2018-09-04 17:53:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904175410403', '2018-09-04 17:54:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904175517271', '2018-09-04 17:55:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904175541105', '2018-09-04 17:55:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904175807897', '2018-09-04 17:58:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904175854514', '2018-09-04 17:58:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904175926155', '2018-09-04 17:59:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904175942615', '2018-09-04 17:59:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904180026770', '2018-09-04 18:00:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904180043723', '2018-09-04 18:00:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904180129972', '2018-09-04 18:01:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904180145915', '2018-09-04 18:01:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090418570549', '2018-09-04 18:57:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904185809993', '2018-09-04 18:58:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904185844546', '2018-09-04 18:58:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904190017813', '2018-09-04 19:00:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904190055937', '2018-09-04 19:00:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904190109318', '2018-09-04 19:01:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180904190152271', '2018-09-04 19:01:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180904190357222', '2018-09-04 19:03:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905091752410', '2018-09-05 09:17:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090509184159', '2018-09-05 09:18:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905092151140', '2018-09-05 09:21:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905092452210', '2018-09-05 09:24:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905092534974', '2018-09-05 09:25:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905092646932', '2018-09-05 09:26:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905092734658', '2018-09-05 09:27:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905092839851', '2018-09-05 09:28:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905092955967', '2018-09-05 09:29:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905093429301', '2018-09-05 09:34:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，添加了测试任务记录，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905093525506', '2018-09-05 09:35:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809050936056', '2018-09-05 09:36:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905093729961', '2018-09-05 09:37:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905093811369', '2018-09-05 09:38:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905094006251', '2018-09-05 09:40:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905094045638', '2018-09-05 09:40:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905094135746', '2018-09-05 09:41:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905094433848', '2018-09-05 09:44:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905094451252', '2018-09-05 09:44:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905095142636', '2018-09-05 09:51:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905095337476', '2018-09-05 09:53:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905095655547', '2018-09-05 09:56:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905095711576', '2018-09-05 09:57:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905100338217', '2018-09-05 10:03:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905100434602', '2018-09-05 10:04:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905100542446', '2018-09-05 10:05:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905100556502', '2018-09-05 10:05:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905100742897', '2018-09-05 10:07:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905100755799', '2018-09-05 10:07:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090510084316', '2018-09-05 10:08:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905100914334', '2018-09-05 10:09:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905100952970', '2018-09-05 10:09:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905101110727', '2018-09-05 10:11:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905101154584', '2018-09-05 10:11:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905101200887', '2018-09-05 10:12:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905101240371', '2018-09-05 10:12:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905101329985', '2018-09-05 10:13:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905101609119', '2018-09-05 10:16:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905101852577', '2018-09-05 10:18:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905102235942', '2018-09-05 10:22:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905102931968', '2018-09-05 10:29:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905103235280', '2018-09-05 10:32:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905103350648', '2018-09-05 10:33:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905103421464', '2018-09-05 10:34:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905103525965', '2018-09-05 10:35:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905103605667', '2018-09-05 10:36:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090510371558', '2018-09-05 10:37:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905103817441', '2018-09-05 10:38:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905103923977', '2018-09-05 10:39:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090510401170', '2018-09-05 10:40:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905104040829', '2018-09-05 10:40:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905104111502', '2018-09-05 10:41:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905104336883', '2018-09-05 10:43:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905104751723', '2018-09-05 10:47:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905104830517', '2018-09-05 10:48:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905105031225', '2018-09-05 10:50:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905105136843', '2018-09-05 10:51:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905105216295', '2018-09-05 10:52:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905105541675', '2018-09-05 10:55:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905110559398', '2018-09-05 11:05:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905111240420', '2018-09-05 11:12:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905111255817', '2018-09-05 11:12:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：16，模块名：拨号盘，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111255892', '2018-09-05 11:12:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111255977', '2018-09-05 11:12:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256122', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256189', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256265', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256350', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('18090511125650', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256506', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256609', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256695', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256785', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256830', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111256900', '2018-09-05 11:12:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('18090511125710', '2018-09-05 11:12:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了测试任务记录，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段:MPT，项目负责人:xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间:2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905111612721', '2018-09-05 11:16:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：16，模块名：拨号盘，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111612816', '2018-09-05 11:16:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111612869', '2018-09-05 11:16:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111612924', '2018-09-05 11:16:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111613152', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('18090511161320', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111613208', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111613278', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111613375', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111613595', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111613683', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111613752', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111613829', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111613924', '2018-09-05 11:16:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111623414', '2018-09-05 11:16:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905111638973', '2018-09-05 11:16:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了测试任务记录，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段:MPT，项目负责人:xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间:2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905111736122', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：16，模块名：拨号盘，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736216', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736329', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736414', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736469', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736522', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736569', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736622', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736746', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736847', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736919', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111736997', '2018-09-05 11:17:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111737190', '2018-09-05 11:17:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111737320', '2018-09-05 11:17:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了测试任务记录，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段:MPT，项目负责人:xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间:2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18090511173775', '2018-09-05 11:17:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111850313', '2018-09-05 11:18:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('1809051119090', '2018-09-05 11:19:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111909183', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111909260', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111909316', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111909377', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111909566', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111909675', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111909744', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111909850', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('18090511190986', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111909936', '2018-09-05 11:19:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111910152', '2018-09-05 11:19:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905111910259', '2018-09-05 11:19:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905111910408', '2018-09-05 11:19:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：16，模块名：拨号盘，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '05');
INSERT INTO `system_log` VALUES ('180905111910499', '2018-09-05 11:19:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了测试任务记录，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段:MPT，项目负责人:xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间:2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18090511191075', '2018-09-05 11:19:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905112048247', '2018-09-05 11:20:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了测试任务记录，任务Id：20180905112002，任务名：测试，所测试机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905112236563', '2018-09-05 11:22:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905112610103', '2018-09-05 11:26:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905112648713', '2018-09-05 11:26:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905112648773', '2018-09-05 11:26:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905112648874', '2018-09-05 11:26:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905112648921', '2018-09-05 11:26:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905112648999', '2018-09-05 11:26:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了测试任务记录，任务Id：20180905112616，任务名：测试，所测试机型项目：m1822intl', '03');
INSERT INTO `system_log` VALUES ('180905112810361', '2018-09-05 11:28:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：38，模块名：，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905112810468', '2018-09-05 11:28:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：39，模块名：，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905112810533', '2018-09-05 11:28:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：40，模块名：，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905112810619', '2018-09-05 11:28:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：41，模块名：OTA推送，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '05');
INSERT INTO `system_log` VALUES ('180905112810703', '2018-09-05 11:28:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了测试任务记录，任务Id：20180905112616，任务名：测试，所测试机型项目：m1822intl，项目所处阶段:SDV，项目负责人:xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 11:28:10，测试机型：PVT，测试类型：04，测试固件：柔柔弱弱，测试开始时间:2018/09/03 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：5，备注：发发发\n', '04');
INSERT INTO `system_log` VALUES ('180905112830598', '2018-09-05 11:28:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：38，模块名：，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905112830705', '2018-09-05 11:28:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：39，模块名：，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905112830828', '2018-09-05 11:28:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905112830961', '2018-09-05 11:28:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：40，模块名：互刷测试，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '05');
INSERT INTO `system_log` VALUES ('18090511283163', '2018-09-05 11:28:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了测试任务记录，任务Id：20180905112616，任务名：测试，所测试机型项目：m1822intl，项目所处阶段:SDV，项目负责人:xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 11:28:30，测试机型：PVT，测试类型：04，测试固件：柔柔弱弱，测试开始时间:2018/09/03 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：5，备注：发发发\n', '04');
INSERT INTO `system_log` VALUES ('180905113118888', '2018-09-05 11:31:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090511325472', '2018-09-05 11:32:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905113343906', '2018-09-05 11:33:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905113344120', '2018-09-05 11:33:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905113344196', '2018-09-05 11:33:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：，测试人员：yuyong，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905113344273', '2018-09-05 11:33:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了【测试任务记录】，任务Id：20180905113303，任务名：测试3333，所测试机型项目：m1816-intl', '03');
INSERT INTO `system_log` VALUES ('18090511334432', '2018-09-05 11:33:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905113406976', '2018-09-05 11:34:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：43，模块名：，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905113407118', '2018-09-05 11:34:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：45，模块名：，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905113407251', '2018-09-05 11:34:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：46，模块名：OTA推送，测试人员：yuyong，测试要求：P1,P2,P3,P4，备注:', '05');
INSERT INTO `system_log` VALUES ('180905113407324', '2018-09-05 11:34:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905113303，任务名：测试3333，所测试机型项目：m1816-intl，项目所处阶段:SDV，项目负责人:xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 11:34:06，测试机型：PVT，测试类型：03，测试固件：反反复复付，测试开始时间:2018/09/03 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：5，备注：反反复复\n', '04');
INSERT INTO `system_log` VALUES ('18090511340739', '2018-09-05 11:34:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：44，模块名：，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905113912821', '2018-09-05 11:39:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905114038474', '2018-09-05 11:40:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：下载链接，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905114038544', '2018-09-05 11:40:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：增量测试，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905114038615', '2018-09-05 11:40:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：互刷测试，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905114038729', '2018-09-05 11:40:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，模块名：OTA推送，测试人员：yuyong，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905114038803', '2018-09-05 11:40:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了【测试任务记录】，任务Id：20180905113957，任务名：测试4444，所测试机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905114204843', '2018-09-05 11:42:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809051145267', '2018-09-05 11:45:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905114539114', '2018-09-05 11:45:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180905112002，任务名：测试，所测试机型项目：m1882-intl，项目所处阶段:强制认证，项目负责人:xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 11:20:46，测试机型：PVT，测试类型：04，测试固件：打断点，测试开始时间:2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：顶顶顶顶\n', '05');
INSERT INTO `system_log` VALUES ('180905114627729', '2018-09-05 11:46:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：下载链接，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905114627829', '2018-09-05 11:46:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：增量测试，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905114627885', '2018-09-05 11:46:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：互刷测试，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905114627970', '2018-09-05 11:46:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：OTA推送，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('18090511462864', '2018-09-05 11:46:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了【测试任务记录】，任务Id：20180905114600，任务名：测试5555，所测试机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905114853541', '2018-09-05 11:48:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905115127402', '2018-09-05 11:51:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905115140362', '2018-09-05 11:51:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180905113303，任务名：测试3333，所测试机型项目：m1816-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 11:36:07，测试机型：PVT，测试类型：03，测试固件：反反复复付，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：5，备注：反反复复\n', '05');
INSERT INTO `system_log` VALUES ('180905115327689', '2018-09-05 11:53:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905115410802', '2018-09-05 11:54:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905115429161', '2018-09-05 11:54:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：48，模块名：增量测试，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905115429254', '2018-09-05 11:54:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：49，模块名：互刷测试，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905115429326', '2018-09-05 11:54:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：50，模块名：OTA推送，测试人员：yuyong，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905115429421', '2018-09-05 11:54:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905113957，任务名：测试4444，所测试机型项目：m1882-intl，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 11:40:38，测试机型：PVT，测试类型：03，测试固件：吞吞吐吐，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：更改后好该行更改后\n', '04');
INSERT INTO `system_log` VALUES ('18090511542971', '2018-09-05 11:54:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：47，模块名：下载链接，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '04');
INSERT INTO `system_log` VALUES ('180905115538299', '2018-09-05 11:55:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905115643204', '2018-09-05 11:56:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905115731875', '2018-09-05 11:57:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：VoLTE，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905115731979', '2018-09-05 11:57:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：通话，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905115732139', '2018-09-05 11:57:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：通讯录，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905115732219', '2018-09-05 11:57:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：信息，测试人员：yuyong，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905115732279', '2018-09-05 11:57:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180905115648，任务名：测试6666，所测试机型项目：m1882-intl，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 11:57:31，测试机型：PVT，测试类型：04，测试固件：嘎嘎嘎，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/21 00:00:00，测试周期：19，备注：吞吞吐吐不\n', '03');
INSERT INTO `system_log` VALUES ('18090511573258', '2018-09-05 11:57:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：网络制式，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905120015560', '2018-09-05 12:00:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905134419729', '2018-09-05 13:44:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905134455614', '2018-09-05 13:44:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905141614228', '2018-09-05 14:16:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905141629169', '2018-09-05 14:16:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817163，问题类型：新增问题，Issue备注：发发发哈哈哈，子任务（测试模块）：，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('180905141629270', '2018-09-05 14:16:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，Id：21，测试模块名：，是否完成：0，完成时间：0001/01/01 00:00:00，备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905141807930', '2018-09-05 14:18:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905142056283', '2018-09-05 14:20:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905142104246', '2018-09-05 14:21:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817163，问题类型：新增问题，Issue备注：发发发哈哈哈，子任务（测试模块）：流媒体，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('180905142104312', '2018-09-05 14:21:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，Id：21，测试模块名：流媒体，是否完成：0，完成时间：0001/01/01 00:00:00，备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905142129564', '2018-09-05 14:21:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905142343773', '2018-09-05 14:23:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905142354409', '2018-09-05 14:23:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817163，问题类型：新增问题，Issue备注：发发发哈哈哈耶耶耶，子任务（测试模块）：流媒体，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('180905142354492', '2018-09-05 14:23:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，Id：21，测试模块名：流媒体，是否完成：否，备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('1809051424579', '2018-09-05 14:24:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905142530907', '2018-09-05 14:25:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905142542156', '2018-09-05 14:25:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：21，测试模块名：流媒体，是否完成：否，备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('18090514254258', '2018-09-05 14:25:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817163，问题类型：新增问题，Issue备注：发发发哈哈哈，子任务（测试模块）：流媒体，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('180905142649975', '2018-09-05 14:26:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817163，问题类型：新增问题，Issue备注：发发发哈哈哈，子任务（测试模块）：流媒体，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('18090514265092', '2018-09-05 14:26:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：21，测试模块名：流媒体，是否完成：是，完成时间：2018/09/05 14:26:49，备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905142752135', '2018-09-05 14:27:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905143100975', '2018-09-05 14:31:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905143122307', '2018-09-05 14:31:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：817479，问题类型：未合入问题，Issue备注：方法，子任务（测试模块）：联系人，父任务Id：20180905093001，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905143122428', '2018-09-05 14:31:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：22，测试模块名：联系人，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905143321545', '2018-09-05 14:33:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：25，测试模块名：设置，是否完成：否，子任务备注：哈哈哈，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905143553203', '2018-09-05 14:35:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：25，测试模块名：设置，是否完成：否，子任务备注：无问题，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905143619563', '2018-09-05 14:36:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905143722228', '2018-09-05 14:37:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905143742389', '2018-09-05 14:37:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905143815383', '2018-09-05 14:38:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905143928987', '2018-09-05 14:39:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929140', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929220', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929306', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929370', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929430', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929506', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929570', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905143929639', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090514392964', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929714', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929770', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929839', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905143929921', '2018-09-05 14:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090514393030', '2018-09-05 14:39:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905144059634', '2018-09-05 14:40:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905144642825', '2018-09-05 14:46:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905144650519', '2018-09-05 14:46:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144650615', '2018-09-05 14:46:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144650683', '2018-09-05 14:46:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144650749', '2018-09-05 14:46:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144650808', '2018-09-05 14:46:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144650935', '2018-09-05 14:46:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144651125', '2018-09-05 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144651198', '2018-09-05 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905144651317', '2018-09-05 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090514465133', '2018-09-05 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144651415', '2018-09-05 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144651503', '2018-09-05 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144651627', '2018-09-05 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144651684', '2018-09-05 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144651781', '2018-09-05 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905144657982', '2018-09-05 14:46:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144658141', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144658216', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144658337', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144658460', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144658602', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090514465867', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144658691', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144658767', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905144658815', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144658910', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144658991', '2018-09-05 14:46:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144659149', '2018-09-05 14:46:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144659201', '2018-09-05 14:46:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18090514465984', '2018-09-05 14:46:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709236', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709317', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709394', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709477', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709569', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709634', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709694', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709750', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709811', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905144709875', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144709936', '2018-09-05 14:47:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144710161', '2018-09-05 14:47:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('1809051447105', '2018-09-05 14:47:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090514471050', '2018-09-05 14:47:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090514471094', '2018-09-05 14:47:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905144747466', '2018-09-05 14:47:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905145648912', '2018-09-05 14:56:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905150003919', '2018-09-05 15:00:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905150040498', '2018-09-05 15:00:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090515011225', '2018-09-05 15:01:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905151339416', '2018-09-05 15:13:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151339509', '2018-09-05 15:13:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353222', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353300', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353374', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353425', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353472', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353524', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353659', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905151353724', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353791', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353839', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353882', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151353942', '2018-09-05 15:13:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151445212', '2018-09-05 15:14:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905151827395', '2018-09-05 15:18:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905151846717', '2018-09-05 15:18:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905151846720', '2018-09-05 15:18:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151846814', '2018-09-05 15:18:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151846967', '2018-09-05 15:18:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151847122', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151847162', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151847206', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151847254', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151847297', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905151847346', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151847389', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151847447', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151847487', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151847556', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515184779', '2018-09-05 15:18:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901237', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905151901238', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901307', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901357', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901408', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901448', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901492', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901549', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901625', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901684', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905151901732', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901783', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901833', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901898', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905151901942', '2018-09-05 15:19:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152030400', '2018-09-05 15:20:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152347842', '2018-09-05 15:23:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905152356141', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356232', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356315', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356374', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356415', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356464', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356514', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356557', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('18090515235660', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905152356605', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515235662', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356672', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356715', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356755', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152356799', '2018-09-05 15:23:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905152501559', '2018-09-05 15:25:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817479，问题类型：未合入问题，Issue备注：方法，子任务（测试模块）：联系人，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('180905152501657', '2018-09-05 15:25:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：22，测试模块名：联系人，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905154943372', '2018-09-05 15:49:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905155254274', '2018-09-05 15:52:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905155455942', '2018-09-05 15:54:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090515560655136', '2018-09-05 15:56:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090515563499995', '2018-09-05 15:56:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18090515563512190', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905155635195', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563524656', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563529411', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563533831', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563538670', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563542989', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563546945', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563550464', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('18090515563554420', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563558839', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563563630', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563567950', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515563573289', '2018-09-05 15:56:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570095223', '2018-09-05 15:57:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18090515570095323', '2018-09-05 15:57:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570114293', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570118248', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('1809051557012343', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570128359', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570134098', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570139253', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('1809051557014034', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570144092', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570149248', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570160042', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570167433', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090515570172572', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('1809051557019873', '2018-09-05 15:57:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('1809051557453187', '2018-09-05 15:57:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090516061129028', '2018-09-05 16:06:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090516062323057', '2018-09-05 16:06:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817479，问题类型：未合入问题，Issue备注：方法，子任务（测试模块）：联系人，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('18090516070071872', '2018-09-05 16:07:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：22，测试模块名：联系人，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('18090516070074872', '2018-09-05 16:07:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817479，问题类型：未合入问题，Issue备注：方法，子任务（测试模块）：联系人，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('18090516071264099', '2018-09-05 16:07:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：22，测试模块名：联系人，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('18090516071264199', '2018-09-05 16:07:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817479，问题类型：未合入问题，Issue备注：方法，子任务（测试模块）：联系人，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('18090516072338754', '2018-09-05 16:07:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809051620582428', '2018-09-05 16:20:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090516214587477', '2018-09-05 16:21:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905162629259', '2018-09-05 16:26:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905162635196', '2018-09-05 16:26:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：22，测试模块名：联系人，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905162635197', '2018-09-05 16:26:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了Issue记录，Issue_Id：817479，问题类型：未合入问题，Issue备注：方法，子任务（测试模块）：联系人，父任务Id：20180905093001，机型项目：m1882-intl', '04');
INSERT INTO `system_log` VALUES ('180905162658471', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905162658474', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162658573', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162658648', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162658691', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162658731', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162658766', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162658806', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162658858', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162658923', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905162658966', '2018-09-05 16:26:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162659125', '2018-09-05 16:26:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162659165', '2018-09-05 16:26:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('1809051626597', '2018-09-05 16:26:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090516265979', '2018-09-05 16:26:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('1809051627331711435', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733256', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733379', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733427', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733462', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733521', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733603', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733679', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733744', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905162733812', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733870', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905162733929', '2018-09-05 16:27:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('1809051627344', '2018-09-05 16:27:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090516273478', '2018-09-05 16:27:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('1809051630082864366', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008383', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008475', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008558', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008600', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008640', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008692', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008733', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008776', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905163008834', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008884', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008924', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163008967', '2018-09-05 16:30:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('1809051630098', '2018-09-05 16:30:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163157471', '2018-09-05 16:31:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163157509', '2018-09-05 16:31:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905163157564', '2018-09-05 16:31:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163159139', '2018-09-05 16:31:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201349', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201424', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201491', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201531', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201591', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201632', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905163201691', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201766', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201806', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201858', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163201898', '2018-09-05 16:32:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312104', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905163312105', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312193', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312242', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312291', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312342', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312417', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312476', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312516', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312588', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905163312633', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312676', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312724', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312767', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163312808', '2018-09-05 16:33:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163323831', '2018-09-05 16:33:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905163323832', '2018-09-05 16:33:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：17，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163323918', '2018-09-05 16:33:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：18，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163323986', '2018-09-05 16:33:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：19，模块名：通话设置，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163324118', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：22，模块名：联系人，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163324161', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：23，模块名：GPS，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163324201', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：24，模块名：外部应用安装，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163324244', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：25，模块名：设置，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：无问题', '04');
INSERT INTO `system_log` VALUES ('180905163324293', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：26，模块名：下载管理，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163324335', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：27，模块名：海外top应用，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090516332434', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：20，模块名：双卡和网络，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163324376', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：28，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163324419', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('180905163324487', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：33，模块名：待机，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090516332477', '2018-09-05 16:33:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了子任务记录，子任务Id：21，模块名：流媒体，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '04');
INSERT INTO `system_log` VALUES ('18090516350359', '2018-09-05 16:35:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905163736209', '2018-09-05 16:37:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905163743565', '2018-09-05 16:37:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18090516380085', '2018-09-05 16:38:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18090516380087', '2018-09-05 16:38:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：30，模块名：相机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '05');
INSERT INTO `system_log` VALUES ('180905163849657', '2018-09-05 16:38:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：22，测试模块名：联系人，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905163859674', '2018-09-05 16:38:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905164231662', '2018-09-05 16:42:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905164247716', '2018-09-05 16:42:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905164247717', '2018-09-05 16:42:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180905093001，模块名：拨号盘，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180905164409676', '2018-09-05 16:44:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905164835614', '2018-09-05 16:48:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905164936833', '2018-09-05 16:49:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905164936837', '2018-09-05 16:49:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：28，父任务Id：20180905093001，模块名：信息，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注：', '05');
INSERT INTO `system_log` VALUES ('180905164955349', '2018-09-05 16:49:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905165020595', '2018-09-05 16:50:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905165048167', '2018-09-05 16:50:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905165055642', '2018-09-05 16:50:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180905165116727', '2018-09-05 16:51:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905165218821', '2018-09-05 16:52:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905165253157', '2018-09-05 16:52:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905165253232', '2018-09-05 16:52:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180905165223，任务名：测试1111，所测试机型项目：m1882-intl，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 16:52:53，测试机型：NPI，测试类型：03，测试固件：顶顶顶顶，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：额鹅鹅鹅\n', '03');
INSERT INTO `system_log` VALUES ('180905165321448', '2018-09-05 16:53:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905165223，任务名：测试1111，所测试机型项目：m1882-intl，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 16:53:21，测试机型：NPI，测试类型：03，测试固件：顶顶顶顶，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：额鹅鹅鹅\n', '04');
INSERT INTO `system_log` VALUES ('180905165321450', '2018-09-05 16:53:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180905165223，模块名：下载链接，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180905165321509', '2018-09-05 16:53:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180905165223，模块名：增量测试，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180905165321577', '2018-09-05 16:53:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180905165223，模块名：互刷测试，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180905165321617', '2018-09-05 16:53:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180905165223，模块名：OTA推送，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180905165355314', '2018-09-05 16:53:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905165508281', '2018-09-05 16:55:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905165546280', '2018-09-05 16:55:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：下载链接，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905165546389', '2018-09-05 16:55:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：增量测试，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905165546465', '2018-09-05 16:55:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：互刷测试，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905165546571', '2018-09-05 16:55:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：OTA推送，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905165546655', '2018-09-05 16:55:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180905165511，任务名：测试222，所测试机型项目：m1871-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 16:55:46，测试机型：NPI，测试类型：02，测试固件：反反复复，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：5，备注：反反复复\n', '03');
INSERT INTO `system_log` VALUES ('180905165603727', '2018-09-05 16:56:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905165511，任务名：测试222，所测试机型项目：m1871-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 16:56:03，测试机型：NPI，测试类型：02，测试固件：反反复复，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：5，备注：反反复复\n', '04');
INSERT INTO `system_log` VALUES ('180905165603728', '2018-09-05 16:56:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180905165511，模块名：通话控制，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180905165721693', '2018-09-05 16:57:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905165756640', '2018-09-05 16:57:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905165818401', '2018-09-05 16:58:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905165924317', '2018-09-05 16:59:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905170204117', '2018-09-05 17:02:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905170722743', '2018-09-05 17:07:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905170820103', '2018-09-05 17:08:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905170921268', '2018-09-05 17:09:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090517122520', '2018-09-05 17:12:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905171930558', '2018-09-05 17:19:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905172058266', '2018-09-05 17:20:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905172147459', '2018-09-05 17:21:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905172411278', '2018-09-05 17:24:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：792792，问题类型：已知问题，Issue备注：，子任务（测试模块）：设置，父任务Id：20180905093001，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905172411400', '2018-09-05 17:24:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：25，测试模块名：设置，是否完成：否，子任务备注：无问题，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905172436573', '2018-09-05 17:24:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：25，测试模块名：设置，是否完成：否，子任务备注：无问题，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905172549915', '2018-09-05 17:25:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905173119707', '2018-09-05 17:31:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905173139946', '2018-09-05 17:31:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905173241549', '2018-09-05 17:32:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905173523577', '2018-09-05 17:35:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：22，测试模块名：联系人，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905173523606', '2018-09-05 17:35:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：792792，问题类型：已知问题，Issue备注：，子任务（测试模块）：联系人，父任务Id：20180905093001，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905173606524', '2018-09-05 17:36:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905173651554', '2018-09-05 17:36:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905173741371', '2018-09-05 17:37:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：829281，问题类型：新增问题，Issue备注：，子任务（测试模块）：无线网络，父任务Id：20180905093001，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905173741436', '2018-09-05 17:37:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：786736，问题类型：已知问题，Issue备注：，子任务（测试模块）：无线网络，父任务Id：20180905093001，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905173741514', '2018-09-05 17:37:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：17，测试模块名：无线网络，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905173838160', '2018-09-05 17:38:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：17，测试模块名：无线网络，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905173838169', '2018-09-05 17:38:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：827325，问题类型：新增问题，Issue备注：，子任务（测试模块）：无线网络，父任务Id：20180905093001，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905174010891', '2018-09-05 17:40:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905174302651', '2018-09-05 17:43:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905174328211', '2018-09-05 17:43:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905174544163', '2018-09-05 17:45:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905174642328', '2018-09-05 17:46:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：海外需求测试，测试人员：chenli，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905174642378', '2018-09-05 17:46:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：续航测试，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180905174642429', '2018-09-05 17:46:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180905174605，任务名：测试222，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 17:46:42，测试机型：PVT，测试类型：04，测试固件：打断点，测试开始时间：2018/09/05 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：3，备注：顶顶顶顶\n', '03');
INSERT INTO `system_log` VALUES ('180905174659908', '2018-09-05 17:46:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905174605，任务名：测试222，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 17:46:42，测试机型：PVT，测试类型：04，测试固件：打断点，测试开始时间：2018/09/05 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：3，备注：顶顶顶顶\n', '04');
INSERT INTO `system_log` VALUES ('180905175008666', '2018-09-05 17:50:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905175223171', '2018-09-05 17:52:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905175249213', '2018-09-05 17:52:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905175510547', '2018-09-05 17:55:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090517552011', '2018-09-05 17:55:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905174605，任务名：测试222，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 17:46:42，测试机型：PVT，测试类型：04，测试固件：打断点，测试开始时间：2018/09/05 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：3，备注：顶顶顶顶\n', '04');
INSERT INTO `system_log` VALUES ('180905175551230', '2018-09-05 17:55:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：17，测试模块名：无线网络，是否完成：是，完成时间：2018/09/05 17:55:51，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905175632844', '2018-09-05 17:56:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905175745243', '2018-09-05 17:57:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905175926780', '2018-09-05 17:59:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905175957954', '2018-09-05 17:59:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905180025327', '2018-09-05 18:00:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180905180304182', '2018-09-05 18:03:04', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905180310482', '2018-09-05 18:03:10', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905174605，任务名：测试222，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 17:46:42，测试机型：PVT，测试类型：04，测试固件：打断点，测试开始时间：2018/09/05 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：3，备注：顶顶顶顶\n', '04');
INSERT INTO `system_log` VALUES ('180905180349547', '2018-09-05 18:03:49', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090518044247', '2018-09-05 18:04:42', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180905180448636', '2018-09-05 18:04:48', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905174605，任务名：测试222，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 17:46:42，测试机型：PVT，测试类型：04，测试固件：打断点，测试开始时间：2018/09/05 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：3，备注：顶顶顶顶\n', '04');
INSERT INTO `system_log` VALUES ('180905180603706', '2018-09-05 18:06:03', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：827257，问题类型：新增问题，Issue备注：，子任务（测试模块）：通话控制，父任务Id：20180905093001，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180905180603806', '2018-09-05 18:06:03', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：18，测试模块名：通话控制，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180905184446914', '2018-09-05 18:44:46', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.61.20', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906105149176', '2018-09-06 10:51:49', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906105337733', '2018-09-06 10:53:37', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906105353418', '2018-09-06 10:53:53', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905174605，任务名：测试222，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 17:46:42，测试机型：PVT，测试类型：04，测试固件：打断点，测试开始时间：2018/09/05 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：3，备注：顶顶顶顶\n', '04');
INSERT INTO `system_log` VALUES ('180906105432192', '2018-09-06 10:54:32', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905174605，任务名：测试222，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 17:46:42，测试机型：PVT，测试类型：04，测试固件：打断点，测试开始时间：2018/09/05 00:00:00,测试结束时间：2018/09/07 00:00:00，测试周期：3，备注：顶顶顶顶\n', '04');
INSERT INTO `system_log` VALUES ('180906105507217', '2018-09-06 10:55:07', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090611171290', '2018-09-06 11:17:12', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906112120183', '2018-09-06 11:21:20', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906112622211', '2018-09-06 11:26:22', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906112624177', '2018-09-06 11:26:24', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906112654827', '2018-09-06 11:26:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906113637297', '2018-09-06 11:36:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180906113832422', '2018-09-06 11:38:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180906141347803', '2018-09-06 14:13:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906141501421', '2018-09-06 14:15:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906144232904', '2018-09-06 14:42:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906145105820', '2018-09-06 14:51:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906145143817', '2018-09-06 14:51:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906151956438', '2018-09-06 15:19:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906152454258', '2018-09-06 15:24:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180906152505601', '2018-09-06 15:25:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180906152604192', '2018-09-06 15:26:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180906152637347', '2018-09-06 15:26:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906152854658', '2018-09-06 15:28:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906153022388', '2018-09-06 15:30:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：22，测试模块名：联系人，是否完成：否，子任务备注：哈哈哈测试人员备注，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180906153304816', '2018-09-06 15:33:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906153356916', '2018-09-06 15:33:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906153438547', '2018-09-06 15:34:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180905093001，任务名：M1882海外版MPT第一轮测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/05 09:34:28，测试机型：NPI，测试类型：04，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180813031000_intl_prd_stable>，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18090615353579', '2018-09-06 15:35:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906153631307', '2018-09-06 15:36:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906153929762', '2018-09-06 15:39:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：22，测试模块名：联系人，是否完成：否，子任务备注：哈哈哈测试人员备注，机型项目：m1882-intl，父任务Id：20180905093001', '04');
INSERT INTO `system_log` VALUES ('180906153937497', '2018-09-06 15:39:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906155500814', '2018-09-06 15:55:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906155526699', '2018-09-06 15:55:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906155738262', '2018-09-06 15:57:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906155826380', '2018-09-06 15:58:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090616013221', '2018-09-06 16:01:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906160149865', '2018-09-06 16:01:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180906180718280', '2018-09-06 18:07:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906180907119', '2018-09-06 18:09:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906181019654', '2018-09-06 18:10:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809061813437', '2018-09-06 18:13:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906181718757', '2018-09-06 18:17:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906181744107', '2018-09-06 18:17:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：机器人名：nana，所属群组：测试群，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180906181800972', '2018-09-06 18:18:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：机器人名：nana，所属群组：测试群，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180906181830762', '2018-09-06 18:18:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：机器人名：nana，所属群组：测试群，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180906181907310', '2018-09-06 18:19:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：机器人名：nana，所属群组：测试群，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180906182449226', '2018-09-06 18:24:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906182603670', '2018-09-06 18:26:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906182726414', '2018-09-06 18:27:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906183001284', '2018-09-06 18:30:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180906183002917', '2018-09-06 18:30:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '192.168.137.1', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907102813981', '2018-09-07 10:28:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907103416897', '2018-09-07 10:34:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907103454562', '2018-09-07 10:34:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0001机器人名：nana，所属群组：测试群，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180907103658727', '2018-09-07 10:36:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0002机器人名：nana，所属群组：测试群tt，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180907103704469', '2018-09-07 10:37:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0003机器人名：nana，所属群组：哈哈哈，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180907103713392', '2018-09-07 10:37:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0004机器人名：nana，所属群组：测试群，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180907103717472', '2018-09-07 10:37:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907104010226', '2018-09-07 10:40:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907104018647', '2018-09-07 10:40:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18090710535551', '2018-09-07 10:53:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907105558993', '2018-09-07 10:55:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907105611171', '2018-09-07 10:56:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907105706838', '2018-09-07 10:57:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907105743352', '2018-09-07 10:57:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907110337170', '2018-09-07 11:03:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907110528947', '2018-09-07 11:05:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907112723956', '2018-09-07 11:27:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907112740332', '2018-09-07 11:27:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【机器人管理】，修改了机器人，机器人Id：0003机器人名：nana，所属钉钉群：哈哈哈，webhook：https://oapi.dingtalk.com/robo', '04');
INSERT INTO `system_log` VALUES ('180907112745224', '2018-09-07 11:27:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：nana，所属钉钉群：哈哈哈，webhook：https://oapi.dingtalk.com/robo', '05');
INSERT INTO `system_log` VALUES ('180907112819491', '2018-09-07 11:28:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：nana，所属钉钉群：测试群tt，webhook：https://oapi.dingtalk.com/robo', '05');
INSERT INTO `system_log` VALUES ('180907112824415', '2018-09-07 11:28:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：nana，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robo', '05');
INSERT INTO `system_log` VALUES ('180907112830474', '2018-09-07 11:28:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：nana，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robo', '05');
INSERT INTO `system_log` VALUES ('180907112832602', '2018-09-07 11:28:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0001机器人名：nana，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180907112838216', '2018-09-07 11:28:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907112922304', '2018-09-07 11:29:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907112933562', '2018-09-07 11:29:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：nana，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robo', '05');
INSERT INTO `system_log` VALUES ('180907112945744', '2018-09-07 11:29:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0001机器人名：nana，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180907113024568', '2018-09-07 11:30:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907113411610', '2018-09-07 11:34:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907113421724', '2018-09-07 11:34:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0002机器人名：dd，所属钉钉群：打断点，webhook：发发发', '03');
INSERT INTO `system_log` VALUES ('180907113433522', '2018-09-07 11:34:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0003机器人名：发发发，所属钉钉群：发发发，webhook：滚滚滚', '03');
INSERT INTO `system_log` VALUES ('180907113436433', '2018-09-07 11:34:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：发发发，所属钉钉群：发发发，webhook：滚滚滚', '05');
INSERT INTO `system_log` VALUES ('180907113438499', '2018-09-07 11:34:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：dd，所属钉钉群：打断点，webhook：发发发', '05');
INSERT INTO `system_log` VALUES ('180907113503845', '2018-09-07 11:35:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907113935797', '2018-09-07 11:39:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【机器人管理】，修改了机器人，机器人Id：0001机器人名：nana，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robo', '04');
INSERT INTO `system_log` VALUES ('180907113940977', '2018-09-07 11:39:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【机器人管理】，修改了机器人，机器人Id：0001机器人名：nana，所属钉钉群：测试群ff，webhook：https://oapi.dingtalk.com/robo', '04');
INSERT INTO `system_log` VALUES ('180907113949516', '2018-09-07 11:39:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【机器人管理】，修改了机器人，机器人Id：0001机器人名：nana，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robo', '04');
INSERT INTO `system_log` VALUES ('180907113959117', '2018-09-07 11:39:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0002机器人名：dd，所属钉钉群：钉钉，webhook：https://oapi.dingtalk.com/robo', '03');
INSERT INTO `system_log` VALUES ('180907114501679', '2018-09-07 11:45:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907145033592', '2018-09-07 14:50:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907145036360', '2018-09-07 14:50:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907145601787', '2018-09-07 14:56:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907145621297', '2018-09-07 14:56:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809071501161', '2018-09-07 15:01:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907150124848', '2018-09-07 15:01:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907150243133', '2018-09-07 15:02:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907150328515', '2018-09-07 15:03:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907150455645', '2018-09-07 15:04:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907151536436', '2018-09-07 15:15:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907151633340', '2018-09-07 15:16:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907152401625', '2018-09-07 15:24:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907153607154', '2018-09-07 15:36:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：无线网络，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180907153607254', '2018-09-07 15:36:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：通话设置，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180907153607352', '2018-09-07 15:36:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：GPS，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180907153607429', '2018-09-07 15:36:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：设置，测试人员：gaoguofang，测试要求：点检，备注:', '03');
INSERT INTO `system_log` VALUES ('180907153607511', '2018-09-07 15:36:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：信息，测试人员：zhengxiaofang，测试要求：点检，备注:', '03');
INSERT INTO `system_log` VALUES ('180907153607561', '2018-09-07 15:36:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：Monkey，测试人员：wangjinxin，测试要求：10小时待机，备注:', '03');
INSERT INTO `system_log` VALUES ('18090715360761', '2018-09-07 15:36:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：10小时待机，备注:', '03');
INSERT INTO `system_log` VALUES ('180907153607653', '2018-09-07 15:36:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180907152732，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/07 15:36:06，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n   2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；\n', '03');
INSERT INTO `system_log` VALUES ('180907153918238', '2018-09-07 15:39:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180907152732，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：caijiaojiao，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/07 15:36:06，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n   2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；\n', '04');
INSERT INTO `system_log` VALUES ('180907154125635', '2018-09-07 15:41:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907154325301', '2018-09-07 15:43:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907154401640', '2018-09-07 15:44:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907154502547', '2018-09-07 15:45:02', 'niming', 'MZKJ-PC-02740_niming', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907154532352', '2018-09-07 15:45:32', 'niming', 'MZKJ-PC-02740_niming', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：792373，问题类型：已知问题，Issue备注：，子任务（测试模块）：通话设置，父任务Id：20180907152732，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180907154532418', '2018-09-07 15:45:32', 'niming', 'MZKJ-PC-02740_niming', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：3，测试模块名：通话设置，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907154540252', '2018-09-07 15:45:40', 'niming', 'MZKJ-PC-02740_niming', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：3，测试模块名：通话设置，是否完成：是，完成时间：2018/09/07 15:45:40，子任务备注：，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907154635847', '2018-09-07 15:46:35', 'niming', 'MZKJ-PC-02740_niming', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907154824214', '2018-09-07 15:48:24', 'dongyiqiao', 'MZKJ-PC-02740_dongyiqiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907154902570', '2018-09-07 15:49:02', 'dongyiqiao', 'MZKJ-PC-02740_dongyiqiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：4，测试模块名：GPS，是否完成：否，子任务备注：新增问题：0个，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907154936119', '2018-09-07 15:49:36', 'dongyiqiao', 'MZKJ-PC-02740_dongyiqiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：4，测试模块名：GPS，是否完成：是，完成时间：2018/09/07 15:49:36，子任务备注：新增问题：0个，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907154944153', '2018-09-07 15:49:44', 'dongyiqiao', 'MZKJ-PC-02740_dongyiqiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907155008851', '2018-09-07 15:50:08', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907155054907', '2018-09-07 15:50:54', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：828872，问题类型：新增问题，Issue备注：该版本出现问题，子任务（测试模块）：设置，父任务Id：20180907152732，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180907155054981', '2018-09-07 15:50:54', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：810256，问题类型：已知问题，Issue备注：，子任务（测试模块）：设置，父任务Id：20180907152732，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('18090715505565', '2018-09-07 15:50:55', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：5，测试模块名：设置，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907155100807', '2018-09-07 15:51:00', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：5，测试模块名：设置，是否完成：是，完成时间：2018/09/07 15:51:00，子任务备注：，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907155111782', '2018-09-07 15:51:11', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907155140592', '2018-09-07 15:51:40', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907155611385', '2018-09-07 15:56:11', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：829633，问题类型：新增问题，Issue备注：，子任务（测试模块）：信息，父任务Id：20180907152732，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180907155611518', '2018-09-07 15:56:11', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：726195，问题类型：已知问题，Issue备注：，子任务（测试模块）：信息，父任务Id：20180907152732，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180907155611584', '2018-09-07 15:56:11', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：6，测试模块名：信息，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907155705348', '2018-09-07 15:57:05', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907155905257', '2018-09-07 15:59:05', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907155954522', '2018-09-07 15:59:54', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：6，测试模块名：信息，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907155954544', '2018-09-07 15:59:54', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：726195，问题类型：已知问题，Issue备注：，子任务（测试模块）：信息，父任务Id：20180907152732，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('1809071600104388171', '2018-09-07 16:00:10', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：824500，问题类型：已知问题，Issue备注：，子任务（测试模块）：信息，父任务Id：20180907152732，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180907160018906', '2018-09-07 16:00:18', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：6，测试模块名：信息，是否完成：是，完成时间：2018/09/07 16:00:18，子任务备注：，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907160151127', '2018-09-07 16:01:51', 'zhengxiaofang', 'MZKJ-PC-02740_zhengxiaofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907160218551', '2018-09-07 16:02:18', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090716024410', '2018-09-07 16:02:44', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：7，测试模块名：Monkey，是否完成：否，子任务备注：Summary:	\n机型	版本	总数（台）	flyme重启	kernel重启	死机	卡屏	\n16TH	20180830182914	60	0台	0台	0台	0台	\nMetis平台链接：\nM1882: <http://metis.meizu.com/stability/manager/241678>，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907160455662', '2018-09-07 16:04:55', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：829216 ，问题类型：新增问题，Issue备注：，子任务（测试模块）：Monkey，父任务Id：20180907152732，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180907160455734', '2018-09-07 16:04:55', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：7，测试模块名：Monkey，是否完成：否，子任务备注：Summary:	\n机型	版本	总数（台）	flyme重启	kernel重启	死机	卡屏	\n16TH	20180830182914	60	0台	0台	0台	0台	\nMetis平台链接：\nM1882: <http://metis.meizu.com/stability/manager/241678>，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907160729807', '2018-09-07 16:07:29', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：7，测试模块名：Monkey，是否完成：否，子任务备注：总数（台）：60\nflyme重启：0台\nkernel重启：0台	\n死机：0台\n卡屏：0台	\nMetis平台链接：\nM1882: <http://metis.meizu.com/stability/manager/241678>，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('18090716082081', '2018-09-07 16:08:20', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：7，测试模块名：Monkey，是否完成：否，子任务备注：总数（台）：60\nflyme重启：0台\nkernel重启：0台	\n死机：0台\n卡屏：0台	\nMetis平台链接：\nhttp://metis.meizu.com/stability/manager/241678，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907160911587', '2018-09-07 16:09:11', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907160924256', '2018-09-07 16:09:24', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907160952260', '2018-09-07 16:09:52', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907161107992', '2018-09-07 16:11:07', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090716112990', '2018-09-07 16:11:29', 'wangjinxin', 'MZKJ-PC-02740_wangjinxin', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907161306350', '2018-09-07 16:13:06', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18090716132584', '2018-09-07 16:13:25', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：1，测试模块名：待机，是否完成：否，子任务备注：功耗待机：PASS\n本次共待机8台（wifi纯净待机与wifi第三方应用待机各4台），待机结果均正常；，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907161417913', '2018-09-07 16:14:17', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：1，测试模块名：待机，是否完成：是，完成时间：2018/09/07 16:14:17，子任务备注：功耗待机：PASS\n本次共待机8台（wifi纯净待机与wifi第三方应用待机各4台），待机结果均正常；，机型项目：m1882-intl，父任务Id：20180907152732', '04');
INSERT INTO `system_log` VALUES ('180907161501654', '2018-09-07 16:15:01', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907161535767', '2018-09-07 16:15:35', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907161544968', '2018-09-07 16:15:44', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180907152732，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：caijiaojiao，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/07 15:36:06，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n   2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；\n', '04');
INSERT INTO `system_log` VALUES ('180907161619473', '2018-09-07 16:16:19', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180907152732，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：caijiaojiao，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/07 15:36:06，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；\n', '04');
INSERT INTO `system_log` VALUES ('180907161641975', '2018-09-07 16:16:41', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180907152732，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：caijiaojiao，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/07 15:36:06，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；稳定性不受影响，可以直接使用这个版本跑起来；\n', '04');
INSERT INTO `system_log` VALUES ('180907173635936', '2018-09-07 17:36:35', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180907173716435', '2018-09-07 17:37:16', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180907180553944', '2018-09-07 18:05:53', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910092137108', '2018-09-10 09:21:37', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091009293235', '2018-09-10 09:29:32', 'gaoguofang', 'MZKJ-PC-02740_gaoguofang', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910093049123', '2018-09-10 09:30:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910093229201', '2018-09-10 09:32:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910094016931', '2018-09-10 09:40:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910094029616', '2018-09-10 09:40:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910094117319', '2018-09-10 09:41:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910094130393', '2018-09-10 09:41:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910094159524', '2018-09-10 09:41:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091009442050', '2018-09-10 09:44:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910105938985', '2018-09-10 10:59:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910110021440', '2018-09-10 11:00:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809101122491', '2018-09-10 11:22:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910112307492', '2018-09-10 11:23:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910112457953', '2018-09-10 11:24:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910112520330', '2018-09-10 11:25:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910112632492', '2018-09-10 11:26:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910112652391', '2018-09-10 11:26:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910113103706', '2018-09-10 11:31:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910113230597', '2018-09-10 11:32:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809101133444', '2018-09-10 11:33:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091011341724', '2018-09-10 11:34:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910113717773', '2018-09-10 11:37:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910113801333', '2018-09-10 11:38:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910113925297', '2018-09-10 11:39:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910114028207', '2018-09-10 11:40:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910114300940', '2018-09-10 11:43:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091011442073', '2018-09-10 11:44:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910114524698', '2018-09-10 11:45:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910114547558', '2018-09-10 11:45:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910114756440', '2018-09-10 11:47:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910114846108', '2018-09-10 11:48:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910114914852', '2018-09-10 11:49:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910115040300', '2018-09-10 11:50:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910115225398', '2018-09-10 11:52:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910115337908', '2018-09-10 11:53:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910140647197', '2018-09-10 14:06:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910140723944', '2018-09-10 14:07:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910140840587', '2018-09-10 14:08:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910140849498', '2018-09-10 14:08:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910141004220', '2018-09-10 14:10:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910141243557', '2018-09-10 14:12:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910141445838', '2018-09-10 14:14:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091014155596', '2018-09-10 14:15:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091014162887', '2018-09-10 14:16:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910142221950', '2018-09-10 14:22:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910142256172', '2018-09-10 14:22:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910142348953', '2018-09-10 14:23:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091014313053', '2018-09-10 14:31:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910144905431', '2018-09-10 14:49:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910144907314', '2018-09-10 14:49:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091014525683', '2018-09-10 14:52:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910145510132', '2018-09-10 14:55:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910145736708', '2018-09-10 14:57:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910145747587', '2018-09-10 14:57:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910145824995', '2018-09-10 14:58:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910145838720', '2018-09-10 14:58:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910150339580', '2018-09-10 15:03:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910150431119', '2018-09-10 15:04:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910150523513', '2018-09-10 15:05:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910151257487', '2018-09-10 15:12:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910151908527', '2018-09-10 15:19:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910152157478', '2018-09-10 15:21:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809101528591', '2018-09-10 15:28:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910152931186', '2018-09-10 15:29:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910153049470', '2018-09-10 15:30:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091015320592', '2018-09-10 15:32:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910154911151', '2018-09-10 15:49:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910160359143', '2018-09-10 16:03:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910160537865', '2018-09-10 16:05:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910160923179', '2018-09-10 16:09:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910161431759', '2018-09-10 16:14:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910161604173', '2018-09-10 16:16:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910162423565', '2018-09-10 16:24:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910162451325', '2018-09-10 16:24:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910162945252', '2018-09-10 16:29:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910163043824', '2018-09-10 16:30:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091016315515', '2018-09-10 16:31:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910163213319', '2018-09-10 16:32:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910163332568', '2018-09-10 16:33:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910163436867', '2018-09-10 16:34:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910163718887', '2018-09-10 16:37:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910163758151', '2018-09-10 16:37:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910163928994', '2018-09-10 16:39:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910164112292', '2018-09-10 16:41:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910164200506', '2018-09-10 16:42:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910164242229', '2018-09-10 16:42:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910164322671', '2018-09-10 16:43:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910164547804', '2018-09-10 16:45:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910164716566', '2018-09-10 16:47:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910164843354', '2018-09-10 16:48:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910165159191', '2018-09-10 16:51:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910165252832', '2018-09-10 16:52:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180907152732，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：caijiaojiao，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/07 15:36:06，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；稳定性不受影响，可以直接使用这个版本跑起来；\n', '04');
INSERT INTO `system_log` VALUES ('180910165328811', '2018-09-10 16:53:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910170203786', '2018-09-10 17:02:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910170304732', '2018-09-10 17:03:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091017122463', '2018-09-10 17:12:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091017153018', '2018-09-10 17:15:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910171629508', '2018-09-10 17:16:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910171726601', '2018-09-10 17:17:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910171835776', '2018-09-10 17:18:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910171921258', '2018-09-10 17:19:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910172024927', '2018-09-10 17:20:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910172406605', '2018-09-10 17:24:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910172430135', '2018-09-10 17:24:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，旧用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180910172643369', '2018-09-10 17:26:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910172849646', '2018-09-10 17:28:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091017321465', '2018-09-10 17:32:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910173246663', '2018-09-10 17:32:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910173729592', '2018-09-10 17:37:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910173835539', '2018-09-10 17:38:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910173905359', '2018-09-10 17:39:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910173939522', '2018-09-10 17:39:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910174043420', '2018-09-10 17:40:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910174138271', '2018-09-10 17:41:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910174231214', '2018-09-10 17:42:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910174416348', '2018-09-10 17:44:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910174455542', '2018-09-10 17:44:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910174820496', '2018-09-10 17:48:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910175459130', '2018-09-10 17:54:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180910175704462', '2018-09-10 17:57:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910175824916', '2018-09-10 17:58:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091018042110', '2018-09-10 18:04:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180910191119266', '2018-09-10 19:11:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911092851394', '2018-09-11 09:28:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091109422312', '2018-09-11 09:42:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911094306381', '2018-09-11 09:43:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911094814429', '2018-09-11 09:48:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911095049859', '2018-09-11 09:50:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911095849357', '2018-09-11 09:58:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911100002344', '2018-09-11 10:00:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911100455430', '2018-09-11 10:04:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911100607431', '2018-09-11 10:06:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911101338717', '2018-09-11 10:13:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911101713767', '2018-09-11 10:17:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911101947413', '2018-09-11 10:19:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911103114909', '2018-09-11 10:31:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911103328442', '2018-09-11 10:33:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911104745487', '2018-09-11 10:47:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911105437166', '2018-09-11 10:54:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911111433292', '2018-09-11 11:14:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911113037558', '2018-09-11 11:30:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911113144777', '2018-09-11 11:31:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911113556598', '2018-09-11 11:35:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911113800780', '2018-09-11 11:38:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911114812408', '2018-09-11 11:48:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911114928570', '2018-09-11 11:49:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911115321388', '2018-09-11 11:53:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911115420126', '2018-09-11 11:54:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911115459782', '2018-09-11 11:54:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911115605706', '2018-09-11 11:56:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091113530528', '2018-09-11 13:53:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091113551483', '2018-09-11 13:55:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911135623433', '2018-09-11 13:56:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911141327816', '2018-09-11 14:13:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911141416597', '2018-09-11 14:14:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911142500458', '2018-09-11 14:25:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911143635377', '2018-09-11 14:36:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911143810314', '2018-09-11 14:38:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911143822596', '2018-09-11 14:38:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911143917406', '2018-09-11 14:39:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911144302482', '2018-09-11 14:43:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911144318664', '2018-09-11 14:43:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911144618923', '2018-09-11 14:46:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911144641792', '2018-09-11 14:46:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911144947613', '2018-09-11 14:49:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911145029674', '2018-09-11 14:50:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911151251663', '2018-09-11 15:12:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911151511393', '2018-09-11 15:15:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091115152275', '2018-09-11 15:15:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911151607201', '2018-09-11 15:16:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091116145117', '2018-09-11 16:14:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911161807996', '2018-09-11 16:18:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911162450554', '2018-09-11 16:24:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911162656702', '2018-09-11 16:26:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911162833209', '2018-09-11 16:28:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911164209846', '2018-09-11 16:42:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911164326748', '2018-09-11 16:43:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091116452289', '2018-09-11 16:45:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911164945331', '2018-09-11 16:49:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911165921359', '2018-09-11 16:59:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911170841927', '2018-09-11 17:08:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911171653451', '2018-09-11 17:16:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911172538627', '2018-09-11 17:25:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091117334432', '2018-09-11 17:33:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911174135157', '2018-09-11 17:41:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911174620825', '2018-09-11 17:46:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911174825993', '2018-09-11 17:48:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911175730887', '2018-09-11 17:57:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911185859709', '2018-09-11 18:58:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911190245345', '2018-09-11 19:02:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911190426969', '2018-09-11 19:04:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180911190949352', '2018-09-11 19:09:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180911211127935', '2018-09-11 21:11:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912092755297', '2018-09-12 09:27:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912092835804', '2018-09-12 09:28:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912093158966', '2018-09-12 09:31:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912094302954', '2018-09-12 09:43:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912094410609', '2018-09-12 09:44:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912094528965', '2018-09-12 09:45:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912095142624', '2018-09-12 09:51:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912095436910', '2018-09-12 09:54:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912100643747', '2018-09-12 10:06:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912100732551', '2018-09-12 10:07:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912101725899', '2018-09-12 10:17:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912101900518', '2018-09-12 10:19:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091210374953', '2018-09-12 10:37:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912105307224', '2018-09-12 10:53:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：下载链接，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180912105307358', '2018-09-12 10:53:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：增量测试，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180912105307448', '2018-09-12 10:53:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：互刷测试，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180912105307578', '2018-09-12 10:53:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：OTA推送，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180912105307699', '2018-09-12 10:53:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180912105233，任务名：测试，所测试机型项目：m1882-intl，项目所处阶段：SIT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/12 10:53:07，测试机型：DVT，测试类型：03，测试固件：打断点，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/14 00:00:00，测试周期：6，备注：反反复复\n', '03');
INSERT INTO `system_log` VALUES ('180912105319206', '2018-09-12 10:53:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180912105233，任务名：测试，所测试机型项目：m1882-intl，项目所处阶段：SIT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/12 10:53:19，测试机型：DVT，测试类型：03，测试固件：打断点，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/14 00:00:00，测试周期：6，备注：反反复复\n', '04');
INSERT INTO `system_log` VALUES ('180912105333476', '2018-09-12 10:53:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180912105233，任务名：测试，所测试机型项目：m1882-intl，项目所处阶段：SIT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/12 10:53:19，测试机型：DVT，测试类型：03，测试固件：打断点，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/14 00:00:00，测试周期：6，备注：反反复复\n', '04');
INSERT INTO `system_log` VALUES ('180912105350529', '2018-09-12 10:53:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180912105233，任务名：测试，所测试机型项目：m1882-intl，项目所处阶段：SIT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/12 10:53:19，测试机型：DVT，测试类型：03，测试固件：打断点，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/14 00:00:00，测试周期：6，备注：反反复复\n', '04');
INSERT INTO `system_log` VALUES ('180912105403584', '2018-09-12 10:54:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180912105233，任务名：测试，所测试机型项目：m1882-intl，项目所处阶段：SIT，项目负责人：xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/12 10:53:19，测试机型：DVT，测试类型：03，测试固件：打断点，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/14 00:00:00，测试周期：6，备注：反反复复\n', '05');
INSERT INTO `system_log` VALUES ('180912105613991', '2018-09-12 10:56:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912110652741', '2018-09-12 11:06:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912110715137', '2018-09-12 11:07:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：dd，所属钉钉群：钉钉，webhook：a', '05');
INSERT INTO `system_log` VALUES ('180912110809115', '2018-09-12 11:08:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912110856480', '2018-09-12 11:08:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912110933664', '2018-09-12 11:09:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0002机器人名：测试1，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '03');
INSERT INTO `system_log` VALUES ('180912110952566', '2018-09-12 11:09:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：测试1，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '05');
INSERT INTO `system_log` VALUES ('18091211095454', '2018-09-12 11:09:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912111152697', '2018-09-12 11:11:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912111217832', '2018-09-12 11:12:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0002机器人名：测试1，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '03');
INSERT INTO `system_log` VALUES ('180912111248454', '2018-09-12 11:12:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912111333484', '2018-09-12 11:13:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912111412896', '2018-09-12 11:14:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912111541208', '2018-09-12 11:15:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912111558238', '2018-09-12 11:15:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【机器人管理】，修改了机器人，机器人Id：0002机器人名：测试1，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '04');
INSERT INTO `system_log` VALUES ('180912111634270', '2018-09-12 11:16:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912111723693', '2018-09-12 11:17:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912111744376', '2018-09-12 11:17:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912111904596', '2018-09-12 11:19:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912111921562', '2018-09-12 11:19:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912112003101', '2018-09-12 11:20:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912112016840', '2018-09-12 11:20:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912112056997', '2018-09-12 11:20:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912112124299', '2018-09-12 11:21:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912112643107', '2018-09-12 11:26:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091211275348', '2018-09-12 11:27:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091211391157', '2018-09-12 11:39:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912114138782', '2018-09-12 11:41:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912114251927', '2018-09-12 11:42:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912114544952', '2018-09-12 11:45:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912115057567', '2018-09-12 11:50:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912134205654', '2018-09-12 13:42:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912134622232', '2018-09-12 13:46:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912134901406', '2018-09-12 13:49:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912135012827', '2018-09-12 13:50:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912135125426', '2018-09-12 13:51:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912135651939', '2018-09-12 13:56:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091213591950', '2018-09-12 13:59:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912140013939', '2018-09-12 14:00:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912140152959', '2018-09-12 14:01:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912140314738', '2018-09-12 14:03:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912140329433', '2018-09-12 14:03:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091214042717', '2018-09-12 14:04:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912140515875', '2018-09-12 14:05:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912142540604', '2018-09-12 14:25:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912151204993', '2018-09-12 15:12:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912151345778', '2018-09-12 15:13:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912151745426', '2018-09-12 15:17:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912151949672', '2018-09-12 15:19:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912152117314', '2018-09-12 15:21:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912152249238', '2018-09-12 15:22:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912152331687', '2018-09-12 15:23:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912152412161', '2018-09-12 15:24:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912152542106', '2018-09-12 15:25:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091215265531', '2018-09-12 15:26:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912152751452', '2018-09-12 15:27:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912153103540', '2018-09-12 15:31:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912153408891', '2018-09-12 15:34:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912153756986', '2018-09-12 15:37:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912153855659', '2018-09-12 15:38:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912153909493', '2018-09-12 15:39:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912154204721', '2018-09-12 15:42:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912155954226', '2018-09-12 15:59:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912160131146', '2018-09-12 16:01:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091216021154', '2018-09-12 16:02:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912160253512', '2018-09-12 16:02:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912160411886', '2018-09-12 16:04:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912160523682', '2018-09-12 16:05:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912160537441', '2018-09-12 16:05:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912160627134', '2018-09-12 16:06:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912160642444', '2018-09-12 16:06:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912160725479', '2018-09-12 16:07:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912160742267', '2018-09-12 16:07:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912160836572', '2018-09-12 16:08:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912160852706', '2018-09-12 16:08:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912160933536', '2018-09-12 16:09:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912161022816', '2018-09-12 16:10:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912161123112', '2018-09-12 16:11:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912161157451', '2018-09-12 16:11:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912161442127', '2018-09-12 16:14:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912161559451', '2018-09-12 16:15:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912161746414', '2018-09-12 16:17:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912161844482', '2018-09-12 16:18:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912161939744', '2018-09-12 16:19:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912162038289', '2018-09-12 16:20:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912163336490', '2018-09-12 16:33:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912163501507', '2018-09-12 16:35:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912165743113', '2018-09-12 16:57:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912170111876', '2018-09-12 17:01:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912172105922', '2018-09-12 17:21:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912172148614', '2018-09-12 17:21:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912173024884', '2018-09-12 17:30:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912173317576', '2018-09-12 17:33:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912173331186', '2018-09-12 17:33:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912173731730', '2018-09-12 17:37:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912173805402', '2018-09-12 17:38:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091217383836', '2018-09-12 17:38:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912173845850', '2018-09-12 17:38:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912173916470', '2018-09-12 17:39:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912174108575', '2018-09-12 17:41:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091217471610', '2018-09-12 17:47:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912174738814', '2018-09-12 17:47:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912174830730', '2018-09-12 17:48:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912174919502', '2018-09-12 17:49:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180912175120547', '2018-09-12 17:51:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180912191415628', '2018-09-12 19:14:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913094400489', '2018-09-13 09:44:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913094815393', '2018-09-13 09:48:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913095113953', '2018-09-13 09:51:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913100934220', '2018-09-13 10:09:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913101039180', '2018-09-13 10:10:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913101130659', '2018-09-13 10:11:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913101201231', '2018-09-13 10:12:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913101355294', '2018-09-13 10:13:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913101459766', '2018-09-13 10:14:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091310162334', '2018-09-13 10:16:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913101709364', '2018-09-13 10:17:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913101923397', '2018-09-13 10:19:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913102014287', '2018-09-13 10:20:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913102326469', '2018-09-13 10:23:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913114550965', '2018-09-13 11:45:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913114951619', '2018-09-13 11:49:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913115107963', '2018-09-13 11:51:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913115438554', '2018-09-13 11:54:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913134602137', '2018-09-13 13:46:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913134919658', '2018-09-13 13:49:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091313503794', '2018-09-13 13:50:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913135350154', '2018-09-13 13:53:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913135435822', '2018-09-13 13:54:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913135518483', '2018-09-13 13:55:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913135712471', '2018-09-13 13:57:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913135808643', '2018-09-13 13:58:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913135907246', '2018-09-13 13:59:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913135949712', '2018-09-13 13:59:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913140115791', '2018-09-13 14:01:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913140154785', '2018-09-13 14:01:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913140234212', '2018-09-13 14:02:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913140251551', '2018-09-13 14:02:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913140333830', '2018-09-13 14:03:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913140418649', '2018-09-13 14:04:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913141215218', '2018-09-13 14:12:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913141235318', '2018-09-13 14:12:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：，通知类型：发布人：，钉钉群：，机器人Id：，机器人名：', '03');
INSERT INTO `system_log` VALUES ('180913141250161', '2018-09-13 14:12:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913141329799', '2018-09-13 14:13:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913141345187', '2018-09-13 14:13:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000014，通知类型：仅一次发布人：邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana', '03');
INSERT INTO `system_log` VALUES ('180913141417577', '2018-09-13 14:14:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913141729942', '2018-09-13 14:17:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913142038420', '2018-09-13 14:20:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913143355564', '2018-09-13 14:33:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913143547306', '2018-09-13 14:35:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913143555786', '2018-09-13 14:35:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【系统通知管理】，删除了系统通知，通知Id：000004，通知类型：仅一次，标题：测试，内容：哈哈哈，重复：无，发送时间：2018/09/12 14:04:39，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/12 14:04:39', '05');
INSERT INTO `system_log` VALUES ('180913143619353', '2018-09-13 14:36:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【系统通知管理】，删除了系统通知，通知Id：000002，通知类型：定时，标题：定时通知——测试，内容：哈哈哈哈，启用，重复：3，发送时间：15:35:10，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/12 11:43:15', '05');
INSERT INTO `system_log` VALUES ('180913143802228', '2018-09-13 14:38:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：测试，重复：4，发送时间：14:38:05，@所有人：是，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/13 14:38:01', '04');
INSERT INTO `system_log` VALUES ('180913143835237', '2018-09-13 14:38:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：测试，重复：4，发送时间：14:38:50，@所有人：是，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/13 14:38:34', '04');
INSERT INTO `system_log` VALUES ('180913143931728', '2018-09-13 14:39:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913144643306', '2018-09-13 14:46:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913145001199', '2018-09-13 14:50:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913145014205', '2018-09-13 14:50:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913145121592', '2018-09-13 14:51:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913150803786', '2018-09-13 15:08:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913150916561', '2018-09-13 15:09:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000001，通知类型：定时，标题：测试——定时通知，内容：周五，周报发送，重复：5，发送时间：15:13:13，@所有人：是，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/13 15:09:15', '03');
INSERT INTO `system_log` VALUES ('180913151212240', '2018-09-13 15:12:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000001，通知类型：定时，标题：测试——定时通知，内容：周五，周报发送，重复：5，发送时间：15:12:50，@所有人：是，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/13 15:12:11', '04');
INSERT INTO `system_log` VALUES ('180913151315298', '2018-09-13 15:13:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000001，通知类型：定时，标题：测试——定时通知，内容：周五，周报发送，重复：4，发送时间：15:13:50，@所有人：是，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/13 15:13:14', '04');
INSERT INTO `system_log` VALUES ('180913162648382', '2018-09-13 16:26:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('1809131631087', '2018-09-13 16:31:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913163422178', '2018-09-13 16:34:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：下载链接，测试人员：chenli，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180913163422277', '2018-09-13 16:34:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：增量测试，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180913163422342', '2018-09-13 16:34:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：互刷测试，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180913163422676', '2018-09-13 16:34:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：OTA推送，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180913163422778', '2018-09-13 16:34:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180913163350，任务名：测试，所测试机型项目：m1882-intl，项目所处阶段：SIT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/13 16:34:22，测试机型：DVT，测试类型：02，测试固件：哈哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：哈哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180913163510526', '2018-09-13 16:35:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091316354958', '2018-09-13 16:35:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913163716523', '2018-09-13 16:37:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180913163350，任务名：测试，所测试机型项目：m1882-intl，项目所处阶段：SIT，项目负责人：xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/13 16:34:22，测试机型：DVT，测试类型：02，测试固件：哈哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：哈哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('180913163955592', '2018-09-13 16:39:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913164221908', '2018-09-13 16:42:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913164605703', '2018-09-13 16:46:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913164635726', '2018-09-13 16:46:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：仅一次，标题：测试@，内容：哈哈哈哈猪，重复：无，发送时间：2018/09/13 16:46:34，@所有人：是，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/13 16:46:34', '03');
INSERT INTO `system_log` VALUES ('180913165025831', '2018-09-13 16:50:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913170637338', '2018-09-13 17:06:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091317070052', '2018-09-13 17:07:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：chenli，用户类型：普通用户，旧用户类型：普通用户，姓名：陈丽，性别：女，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180913170723954', '2018-09-13 17:07:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：zhenglu，用户类型：管理员，旧用户类型：管理员，姓名：郑璐，性别：女，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180913170745203', '2018-09-13 17:07:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：liuying2，用户类型：管理员，旧用户类型：管理员，姓名：刘颖，性别：女，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180913170805235', '2018-09-13 17:08:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：caijiaojiao，用户类型：普通用户，旧用户类型：普通用户，姓名：蔡娇娇，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180913170829580', '2018-09-13 17:08:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：dongyiqiao，用户类型：管理员，旧用户类型：管理员，姓名：董一俏，性别：男，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180913170851166', '2018-09-13 17:08:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：laoyiling，用户类型：普通用户，旧用户类型：普通用户，姓名：劳燚玲，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180913170915151', '2018-09-13 17:09:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：linhongshen，用户类型：普通用户，旧用户类型：普通用户，姓名：林宏燊，性别：男，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180913170934348', '2018-09-13 17:09:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：niming，用户类型：普通用户，旧用户类型：普通用户，姓名：倪明，性别：女，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180913171000451', '2018-09-13 17:10:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：wangjinxin，用户类型：普通用户，旧用户类型：普通用户，姓名：王金鑫，性别：女，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180913171045174', '2018-09-13 17:10:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：yuyong，用户类型：普通用户，旧用户类型：普通用户，姓名：余勇，性别：男，职位：，部门：外网现网测试', '04');
INSERT INTO `system_log` VALUES ('180913171113745', '2018-09-13 17:11:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：zhengxiaofang，用户类型：普通用户，旧用户类型：普通用户，姓名：郑小芳，性别：女，职位：软件测试工程师，部门：外网现网测试', '04');
INSERT INTO `system_log` VALUES ('180913171206785', '2018-09-13 17:12:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913171804881', '2018-09-13 17:18:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913171855850', '2018-09-13 17:18:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913172046138', '2018-09-13 17:20:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091317211833', '2018-09-13 17:21:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('18091317313274', '2018-09-13 17:31:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('18091317323410', '2018-09-13 17:32:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('1809131734085', '2018-09-13 17:34:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913173508450', '2018-09-13 17:35:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913173539898', '2018-09-13 17:35:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913173727454', '2018-09-13 17:37:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913173755467', '2018-09-13 17:37:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913173831895', '2018-09-13 17:38:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913173849181', '2018-09-13 17:38:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913173950833', '2018-09-13 17:39:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913174046307', '2018-09-13 17:40:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913175057120', '2018-09-13 17:50:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913175311790', '2018-09-13 17:53:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913175747245', '2018-09-13 17:57:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913175851872', '2018-09-13 17:58:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180913175951444', '2018-09-13 17:59:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180913180017629', '2018-09-13 18:00:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180914093313100', '2018-09-14 09:33:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '登录', '登录系统', '01');
INSERT INTO `system_log` VALUES ('180914093714147', '2018-09-14 09:37:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '注销', '退出系统', '02');
INSERT INTO `system_log` VALUES ('180914101321750', '2018-09-14 10:13:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：仅一次，标题：测试，内容：哈哈哈，重复：无，发送时间：2018/09/14 10:13:20，@所有人：是，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 10:13:20', '03');
INSERT INTO `system_log` VALUES ('180914101351245', '2018-09-14 10:13:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000003，通知类型：仅一次，标题：测试2，内容：哈哈哈，重复：无，发送时间：2018/09/14 10:13:50，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 10:13:50', '03');
INSERT INTO `system_log` VALUES ('180914101617257', '2018-09-14 10:16:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000004，通知类型：仅一次，标题：测试3，内容：哈哈哈哈，重复：无，发送时间：2018/09/14 10:16:15，@所有人：是，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 10:16:15', '03');
INSERT INTO `system_log` VALUES ('180914101638305', '2018-09-14 10:16:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000005，通知类型：仅一次，标题：测试，内容：哈哈哈哈，重复：无，发送时间：2018/09/14 10:16:37，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 10:16:37', '03');
INSERT INTO `system_log` VALUES ('180914104127256', '2018-09-14 10:41:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000006，通知类型：仅一次，标题：会话，内容：哈哈哈，重复：无，发送时间：2018/09/14 10:41:22，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 10:41:22', '03');
INSERT INTO `system_log` VALUES ('180914110546818', '2018-09-14 11:05:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000001，通知类型：仅一次，标题：测试，内容：哈哈哈，重复：无，发送时间：2018/09/14 11:05:10，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 11:05:10', '03');
INSERT INTO `system_log` VALUES ('18091411141863', '2018-09-14 11:14:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：定时通知，重复：5，发送时间：11:18:50，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 11:14:17', '03');
INSERT INTO `system_log` VALUES ('180914113619398', '2018-09-14 11:36:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000001，通知类型：仅一次，标题：测试，内容：哈哈哈，重复：无，发送时间：2018/09/14 11:36:18，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 11:36:18', '03');
INSERT INTO `system_log` VALUES ('180914113845537', '2018-09-14 11:38:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：哈哈哈哈哈哈，重复：5，发送时间：11:43:24，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 11:38:44', '03');
INSERT INTO `system_log` VALUES ('180914135459295', '2018-09-14 13:54:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：哈哈哈哈哈哈，重复：5，发送时间：11:46:24，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 13:54:58', '04');
INSERT INTO `system_log` VALUES ('180914135640955', '2018-09-14 13:56:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：哈哈哈哈哈哈，重复：5，发送时间：14:00:00，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 13:56:39', '04');
INSERT INTO `system_log` VALUES ('18091413592543', '2018-09-14 13:59:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：定时通知啦啦啦啦啦，重复：5，发送时间：14:00:00，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 13:59:23', '04');
INSERT INTO `system_log` VALUES ('180914151922673', '2018-09-14 15:19:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000003，通知类型：定时，标题：测试，内容：哈哈哈哈测试，重复：5，发送时间：15:24:01，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 15:19:21', '03');
INSERT INTO `system_log` VALUES ('180914153040136', '2018-09-14 15:30:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000003，通知类型：定时，标题：测试，内容：哈哈哈哈测试，重复：5，发送时间：15:24:01，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 15:30:39', '04');
INSERT INTO `system_log` VALUES ('180914153045192', '2018-09-14 15:30:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：定时通知啦啦啦啦啦，重复：5，发送时间：14:00:00，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 15:30:43', '04');
INSERT INTO `system_log` VALUES ('180914153105395', '2018-09-14 15:31:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000004，通知类型：仅一次，标题：测试，内容：测试嘎嘎嘎嘎嘎，重复：无，发送时间：2018/09/14 15:31:02，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 15:31:02', '03');
INSERT INTO `system_log` VALUES ('180914153321209', '2018-09-14 15:33:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：定时通知啦啦啦啦啦，重复：5，发送时间：14:00:00，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 15:33:20', '04');
INSERT INTO `system_log` VALUES ('180914155436254', '2018-09-14 15:54:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000005，通知类型：定时，标题：测试，内容：哈哈哈，重复：6，发送时间：15:59:16，@群成员：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 15:54:35', '03');
INSERT INTO `system_log` VALUES ('18091415545027', '2018-09-14 15:54:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000005，通知类型：定时，标题：测试，内容：哈哈哈，重复：6，发送时间：15:59:16，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 15:54:48', '04');
INSERT INTO `system_log` VALUES ('180914155456940', '2018-09-14 15:54:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000005，通知类型：定时，标题：测试，内容：哈哈哈，重复：5，发送时间：15:59:16，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/14 15:54:55', '04');
INSERT INTO `system_log` VALUES ('180914164718966', '2018-09-14 16:47:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：dongyiqiao，用户类型：管理员，旧用户类型：管理员，姓名：董一俏，性别：男，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180914171923559', '2018-09-14 17:19:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：海外需求测试，模块类型：PA_专项测试，从属：PA项目', '03');
INSERT INTO `system_log` VALUES ('180914173806901', '2018-09-14 17:38:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：PA项目好，Id：002', '04');
INSERT INTO `system_log` VALUES ('180914173812895', '2018-09-14 17:38:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了从属，从属名：PA项目，Id：002', '04');
INSERT INTO `system_log` VALUES ('180918095402370', '2018-09-18 09:54:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000005，通知类型：定时，标题：测试，内容：哈哈哈，重复：5，发送时间：15:59:16，@群成员：@董一俏, @胡光毅, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 09:54:01', '04');
INSERT INTO `system_log` VALUES ('180918100359171', '2018-09-18 10:03:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：哈哈哈哈，重复：2，发送时间：10:08:44，@群成员：@所有人，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 10:03:57', '03');
INSERT INTO `system_log` VALUES ('180918100418178', '2018-09-18 10:04:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000008，通知类型：定时，标题：测试，内容：哈哈哈哈哈，重复：4，发送时间：10:09:01，@群成员：@所有人，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 10:04:16', '03');
INSERT INTO `system_log` VALUES ('18091810041896', '2018-09-18 10:04:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000007，通知类型：定时，标题：测试，内容：哈哈哈哈哈，重复：3，发送时间：10:09:01，@群成员：@所有人，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 10:04:16', '03');
INSERT INTO `system_log` VALUES ('180918101447666', '2018-09-18 10:14:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：哈哈哈哈，重复：2，发送时间：10:08:44，@群成员：@所有人，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 10:14:46', '04');
INSERT INTO `system_log` VALUES ('180918101702634', '2018-09-18 10:17:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：哈哈哈哈，重复：2，发送时间：10:08:44，@群成员：@所有人，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 10:17:01', '04');
INSERT INTO `system_log` VALUES ('180918101712493', '2018-09-18 10:17:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：哈哈哈哈，重复：2，发送时间：10:08:44，@群成员：@胡光毅, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 10:17:11', '04');
INSERT INTO `system_log` VALUES ('180918101719516', '2018-09-18 10:17:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：哈哈哈哈，重复：2，发送时间：10:08:44，@群成员：@胡光毅, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 10:17:17', '04');
INSERT INTO `system_log` VALUES ('180918101740299', '2018-09-18 10:17:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：哈哈哈哈，重复：2，发送时间：10:18:00，@群成员：@胡光毅, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 10:17:39', '04');
INSERT INTO `system_log` VALUES ('180918102400477', '2018-09-18 10:24:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：录音机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918102400616', '2018-09-18 10:24:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：MTP&PTP，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918102400684', '2018-09-18 10:24:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：SD卡，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918102400745', '2018-09-18 10:24:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：USB HOST（OTG），测试人员：hgy，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918102400816', '2018-09-18 10:24:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：USB Audio，测试人员：hgy，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918102400862', '2018-09-18 10:24:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：有线耳机，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918102400916', '2018-09-18 10:24:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：相机，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918102400962', '2018-09-18 10:24:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '03');
INSERT INTO `system_log` VALUES ('180918102634487', '2018-09-18 10:26:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918105428509', '2018-09-18 10:54:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918105954988', '2018-09-18 10:59:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918110455245', '2018-09-18 11:04:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918111121779', '2018-09-18 11:11:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918111511805', '2018-09-18 11:15:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('18091811163732', '2018-09-18 11:16:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918112018785', '2018-09-18 11:20:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918112645644', '2018-09-18 11:26:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918113110110', '2018-09-18 11:31:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918113230570', '2018-09-18 11:32:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918113517909', '2018-09-18 11:35:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '04');
INSERT INTO `system_log` VALUES ('180918114354418', '2018-09-18 11:43:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：多任务，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114354525', '2018-09-18 11:43:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：通知中心，测试人员：chenli，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114354604', '2018-09-18 11:43:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：设置，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114354662', '2018-09-18 11:43:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：语言和输入法，测试人员：hgy，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114354708', '2018-09-18 11:43:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：开关机，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114354770', '2018-09-18 11:43:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：桌面，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114354895', '2018-09-18 11:43:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：小部件，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114354941', '2018-09-18 11:43:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：STK，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114355158', '2018-09-18 11:43:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：TP，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114355220', '2018-09-18 11:43:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：光感，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114355287', '2018-09-18 11:43:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：Sensor，测试人员：zhangxiaotong1，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114355355', '2018-09-18 11:43:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：电源管理，测试人员：yuyong，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114355450', '2018-09-18 11:43:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：手电筒，测试人员：yuyong，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114355527', '2018-09-18 11:43:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：屏幕录制，测试人员：zhengxiaofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918114355600', '2018-09-18 11:43:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180918114243，任务名：测试2，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 11:43:54，测试机型：PVT，测试类型：06，测试固件：哈哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：3，备注：哈哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('18091811435587', '2018-09-18 11:43:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：物理按键，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918152954449', '2018-09-18 15:29:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918114243，任务名：测试2，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 11:43:54，测试机型：PVT，测试类型：06，测试固件：哈哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：3，备注：哈哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180918153222385', '2018-09-18 15:32:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【机器人管理】，删除了机器人，机器人名：测试1，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '05');
INSERT INTO `system_log` VALUES ('180918153322123', '2018-09-18 15:33:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000009，通知类型：定时，标题：测试，内容：哈哈哈哈，重复：1，发送时间：15:38:08，@群成员：@所有人，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 15:33:21', '03');
INSERT INTO `system_log` VALUES ('180918153346763', '2018-09-18 15:33:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000009，通知类型：定时，标题：测试，内容：哈哈哈哈，重复：1，发送时间：15:38:08，@群成员：@陈丽, @董一俏，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 15:33:45', '04');
INSERT INTO `system_log` VALUES ('180918155012496', '2018-09-18 15:50:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：caijiaojiao，用户类型：普通用户，旧用户类型：普通用户，姓名：蔡娇娇，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180918155020872', '2018-09-18 15:50:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：hgy，用户类型：普通用户，旧用户类型：普通用户，姓名：胡光毅，性别：男，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180918155035987', '2018-09-18 15:50:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：hgy，用户类型：普通用户，旧用户类型：普通用户，姓名：胡光毅，性别：男，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180918155519796', '2018-09-18 15:55:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：hgy，用户类型：普通用户，旧用户类型：普通用户，姓名：胡光毅，性别：男，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180918155814570', '2018-09-18 15:58:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【用户管理】，删除了用户信息记录，用户编号为：hgy，用户类型：普通用户，姓名：胡光毅，性别：男，职位：，部门：海外项目测试', '05');
INSERT INTO `system_log` VALUES ('1809181559318', '2018-09-18 15:59:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【用户管理】，添加了用户信息记录，用户编号为：hgy，用户类型：普通用户，姓名：光毅，性别：男，职位：，部门：外网现网测试', '03');
INSERT INTO `system_log` VALUES ('180918161617100', '2018-09-18 16:16:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：哈哈哈哈，重复：2，发送时间：10:18:00，@群成员：@邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 16:16:15', '04');
INSERT INTO `system_log` VALUES ('180918161958998', '2018-09-18 16:19:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，旧用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180918162016117', '2018-09-18 16:20:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，旧用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180918162411965', '2018-09-18 16:24:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【机器人管理】，修改了机器人，机器人Id：0001机器人名：nana，所属钉钉群：海外项目&现网测试（全），webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '04');
INSERT INTO `system_log` VALUES ('180918162457298', '2018-09-18 16:24:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000010，通知类型：仅一次，标题：测试，内容：测试，重复：无，发送时间：2018/09/18 16:24:55，@群成员：@邢娜娜，钉钉群：海外项目&现网测试（全），机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/18 16:24:55', '03');
INSERT INTO `system_log` VALUES ('180918163150980', '2018-09-18 16:31:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0002机器人名：OverseaPMS，所属钉钉群：Sea海外项目测试组，webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '03');
INSERT INTO `system_log` VALUES ('180918163213651', '2018-09-18 16:32:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000011，通知类型：定时，标题：测试，内容：啦啦啦啦啦，重复：4，发送时间：16:36:57，@群成员：@所有人，钉钉群：Sea海外项目测试组，机器人Id：0002，机器人名：OverseaPMS，发布人：邢娜娜，发布时间：2018/09/18 16:32:12', '03');
INSERT INTO `system_log` VALUES ('180918163233700', '2018-09-18 16:32:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【机器人管理】，修改了机器人，机器人Id：0002机器人名：OverseaPMS系统，所属钉钉群：Sea海外项目测试组，webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '04');
INSERT INTO `system_log` VALUES ('180918163521492', '2018-09-18 16:35:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918163521604', '2018-09-18 16:35:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180918163459，任务名：测试，所测试机型项目：m1816-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 16:35:21，测试机型：DVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180918163555862', '2018-09-18 16:35:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【机器人管理】，修改了机器人，机器人Id：0001机器人名：nana，所属钉钉群：海外项目&现网测试（全），webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '04');
INSERT INTO `system_log` VALUES ('180918171022222', '2018-09-18 17:10:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '后台自动筛选，添加了库外问题记录，Issue_Id：827424，项目Id为：m1822intl，项目内部名称：M1822 INTL，转至：Flyme 海外版，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('18091817281146', '2018-09-18 17:28:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180918102248，任务名：测试，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 10:24:00，测试机型：NPI，测试类型：07，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：4，备注：斤斤计较\n', '05');
INSERT INTO `system_log` VALUES ('180918174143106', '2018-09-18 17:41:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180918163459，任务名：测试，所测试机型项目：m1816-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 16:35:21，测试机型：DVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/06 00:00:00，测试周期：4，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180918174657443', '2018-09-18 17:46:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180907152732，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：caijiaojiao，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/07 15:36:06，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；稳定性不受影响，可以直接使用这个版本跑起来；\n', '04');
INSERT INTO `system_log` VALUES ('180918174711115', '2018-09-18 17:47:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180918114243，任务名：测试2，所测试机型项目：m1818，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 11:43:54，测试机型：PVT，测试类型：06，测试固件：哈哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：3，备注：哈哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('180918175028184', '2018-09-18 17:50:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：chenli，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918175028288', '2018-09-18 17:50:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180918174956，任务名：测试，所测试机型项目：m1818，项目所处阶段：SIT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 17:50:28，测试机型：NPI，测试类型：02，测试固件：嘎嘎嘎嘎嘎，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：2，备注：哈哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('18091817504130', '2018-09-18 17:50:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180918174956，任务名：测试，所测试机型项目：m1818，项目所处阶段：SIT，项目负责人：xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 17:50:28，测试机型：NPI，测试类型：02，测试固件：嘎嘎嘎嘎嘎，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：2，备注：哈哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('180918175216230', '2018-09-18 17:52:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180918175216387', '2018-09-18 17:52:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180918175157，任务名：测试，所测试机型项目：m1818，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 17:52:16，测试机型：PVT，测试类型：02，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/11 00:00:00，测试周期：9，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180918175250968', '2018-09-18 17:52:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180918175157，任务名：测试，所测试机型项目：m1818，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/18 17:52:16，测试机型：PVT，测试类型：02，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/11 00:00:00，测试周期：9，备注：哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('180919100802298', '2018-09-19 10:08:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919100802380', '2018-09-19 10:08:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：无线网络，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919100802450', '2018-09-19 10:08:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：通话设置，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919100802525', '2018-09-19 10:08:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180919100554，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:08:02，测试机型：NPI，测试类型：04，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/09/17 00:00:00,测试结束时间：2018/09/20 12:00:00，测试周期：3.5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；稳定性不受影响，可以直接使用这个版本跑起来；\n', '03');
INSERT INTO `system_log` VALUES ('180919101028413', '2018-09-19 10:10:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000011，通知类型：定时，标题：测试，内容：周四定时通知，重复：4，发送时间：16:36:57，@群成员：@所有人，钉钉群：Sea海外项目测试组，机器人Id：0002，机器人名：OverseaPMS系统，发布人：邢娜娜，发布时间：2018/09/19 10:10:27', '04');
INSERT INTO `system_log` VALUES ('180919101100588', '2018-09-19 10:11:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000005，通知类型：定时，标题：测试，内容：哈哈哈，重复：5，发送时间：15:59:16，@群成员：@董一俏, @邢娜娜，钉钉群：海外项目&现网测试（全），机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/19 10:10:59', '04');
INSERT INTO `system_log` VALUES ('180919101214640', '2018-09-19 10:12:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919100554，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:12:14，测试机型：NPI，测试类型：04，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/09/17 00:00:00,测试结束时间：2018/09/20 12:00:00，测试周期：3.5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；稳定性不受影响，可以直接使用这个版本跑起来；\n', '04');
INSERT INTO `system_log` VALUES ('180919101453119', '2018-09-19 10:14:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180919101342，任务名：测试，所测试机型项目：m1818，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:14:16，测试机型：PVT，测试类型：04，测试固件：会话，测试开始时间：2018/09/18 00:00:00,测试结束时间：2018/09/20 12:00:00，测试周期：2.5，备注：会话\n', '03');
INSERT INTO `system_log` VALUES ('18091910145341', '2018-09-19 10:14:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：chenli，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919102441863', '2018-09-19 10:24:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919102441967', '2018-09-19 10:24:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180919102325，任务名：测试2，所测试机型项目：m1818，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:24:26，测试机型：PVT，测试类型：02，测试固件：会话，测试开始时间：2018/09/11 00:00:00,测试结束时间：2018/09/13 14:00:00，测试周期：2.583，备注：会话\n', '03');
INSERT INTO `system_log` VALUES ('180919103127861', '2018-09-19 10:31:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919101342，任务名：测试，所测试机型项目：m1818，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:14:16，测试机型：PVT，测试类型：04，测试固件：会话，测试开始时间：2018/09/18 00:00:00,测试结束时间：2018/09/20 13:00:00，测试周期：2.542，备注：会话\n', '04');
INSERT INTO `system_log` VALUES ('180919103340870', '2018-09-19 10:33:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919101342，任务名：测试，所测试机型项目：m1818，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:14:16，测试机型：PVT，测试类型：04，测试固件：会话，测试开始时间：2018/09/18 00:00:00,测试结束时间：2018/09/20 13:00:00，测试周期：2.542，备注：会话\n', '04');
INSERT INTO `system_log` VALUES ('180919104157645', '2018-09-19 10:41:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919102325，任务名：测试2，所测试机型项目：m1818，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:24:26，测试机型：PVT，测试类型：02，测试固件：会话，测试开始时间：2018/09/11 00:00:00,测试结束时间：2018/09/13 14:00:00，测试周期：2.583，备注：会话\n', '04');
INSERT INTO `system_log` VALUES ('180919104204494', '2018-09-19 10:42:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919100554，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:12:14，测试机型：NPI，测试类型：04，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/09/17 00:00:00,测试结束时间：2018/09/20 12:00:00，测试周期：3.5，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；稳定性不受影响，可以直接使用这个版本跑起来；\n', '04');
INSERT INTO `system_log` VALUES ('180919104234465', '2018-09-19 10:42:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919100554，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:12:14，测试机型：NPI，测试类型：04，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable，测试开始时间：2018/09/17 00:00:00,测试结束时间：2018/09/20 14:00:00，测试周期：3.583，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；稳定性不受影响，可以直接使用这个版本跑起来；\n', '04');
INSERT INTO `system_log` VALUES ('180919104333651', '2018-09-19 10:43:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919104333734', '2018-09-19 10:43:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180919104301，任务名：测试3，所测试机型项目：m1818，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:43:33，测试机型：NPI，测试类型：02，测试固件：哈哈哈，测试开始时间：2018/09/10 12:00:00,测试结束时间：2018/09/13 18:00:00，测试周期：3.25，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180919104931630', '2018-09-19 10:49:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：耶耶耶耶周三，重复：Wednesday，发送时间：10:50:10，@群成员：@蔡娇娇, @陈丽, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/19 10:49:30', '04');
INSERT INTO `system_log` VALUES ('18091911051010', '2018-09-19 11:05:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919102325，任务名：测试2，所测试机型项目：m1818，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:24:26，测试机型：PVT，测试类型：02，测试固件：会话，测试开始时间：2018/09/11 00:00:00,测试结束时间：2018/09/13 14:00:00，测试周期：2.583，备注：会话\n', '04');
INSERT INTO `system_log` VALUES ('180919110808371', '2018-09-19 11:08:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919101342，任务名：测试，所测试机型项目：m1818，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 10:14:16，测试机型：PVT，测试类型：04，测试固件：会话，测试开始时间：2018/09/18 00:00:00,测试结束时间：2018/09/20 13:00:00，测试周期：2.542，备注：会话\n', '04');
INSERT INTO `system_log` VALUES ('180919115206176', '2018-09-19 11:52:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：下载链接，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:公开版、俄罗斯版', '03');
INSERT INTO `system_log` VALUES ('180919115206282', '2018-09-19 11:52:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：增量测试，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919115206362', '2018-09-19 11:52:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：互刷测试，测试人员：liuying2，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919115206431', '2018-09-19 11:52:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：OTA推送，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919115414874', '2018-09-19 11:54:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试要求，测试要求名：无，Id：008', '03');
INSERT INTO `system_log` VALUES ('180919115858150', '2018-09-19 11:58:58', 'linhongshen', 'MZKJ-PC-02740_linhongshen', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：3，测试模块名：互刷测试，是否完成：否，子任务备注：海外公开版\n整包推送:20180903225548_intl_prd_stable_fvcs_rebuild_stable\n俄罗斯版\n整包推送：20180903225903_intl_russia_prd_stable_fvcs_rebuild_stable\n测试内容：\n1、测试机可以推送并能成功收到推送消息\n2、升级过程中没有出现固件损坏、卡在某个界面等异常情况\n3、升级后Flyme版本号显示正确，IMEI和SN号不变且没有为null的情况，机型项目：m1882-intl，父任务Id：20180919114808', '04');
INSERT INTO `system_log` VALUES ('180919115928520', '2018-09-19 11:59:28', 'linhongshen', 'MZKJ-PC-02740_linhongshen', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：3，测试模块名：互刷测试，是否完成：是，完成时间：2018/09/19 11:59:28，子任务备注：海外公开版\n整包推送:20180903225548_intl_prd_stable_fvcs_rebuild_stable\n俄罗斯版\n整包推送：20180903225903_intl_russia_prd_stable_fvcs_rebuild_stable\n测试内容：\n1、测试机可以推送并能成功收到推送消息\n2、升级过程中没有出现固件损坏、卡在某个界面等异常情况\n3、升级后Flyme版本号显示正确，IMEI和SN号不变且没有为null的情况，机型项目：m1882-intl，父任务Id：20180919114808', '04');
INSERT INTO `system_log` VALUES ('180919172238101', '2018-09-19 17:22:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：VoLTE，测试人员：chenli，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919172238174', '2018-09-19 17:22:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：通话，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919172238236', '2018-09-19 17:22:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：网络制式，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919172238286', '2018-09-19 17:22:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：通讯录，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919172238394', '2018-09-19 17:22:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：信息，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180919172238441', '2018-09-19 17:22:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180919172108，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 17:22:38，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：3，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('18091917230210', '2018-09-19 17:23:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919172108，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 17:22:38，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：3，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180919172332468', '2018-09-19 17:23:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：111，问题类型：新增问题，Issue备注：，子任务（测试模块）：通讯录，父任务Id：20180919172108，机型项目：m1822intl', '03');
INSERT INTO `system_log` VALUES ('180919172332599', '2018-09-19 17:23:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：8，测试模块名：通讯录，是否完成：是，完成时间：2018/09/19 17:23:32，子任务备注：，机型项目：m1822intl，父任务Id：20180919172108', '04');
INSERT INTO `system_log` VALUES ('180919174200137', '2018-09-19 17:42:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：w-zhangchao1，用户类型：临时用户，旧用户类型：临时用户，姓名：张超，性别：男，职位：，部门：外网现网测试', '04');
INSERT INTO `system_log` VALUES ('180920174928195', '2018-09-20 17:49:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：周五定时通知，重复：5，发送时间：10:18:00，@群成员：@邢娜娜，钉钉群：海外项目&现网测试（全），机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/20 17:49:27', '04');
INSERT INTO `system_log` VALUES ('180920184451543', '2018-09-20 18:44:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '后台自动筛选，添加了库外问题记录，Issue_Id：834883，项目Id为：m1822intl，项目内部名称：M1822 INTL，转至：Flyme海外版快稳省，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180920184451633', '2018-09-20 18:44:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '后台自动筛选，添加了库外问题记录，Issue_Id：835010，项目Id为：m1822intl，项目内部名称：M1822 INTL，转至：视频，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180920184451688', '2018-09-20 18:44:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '后台自动筛选，添加了库外问题记录，Issue_Id：834975，项目Id为：m1822intl，项目内部名称：M1822 INTL，转至：M1822，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180921143035215', '2018-09-21 14:30:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '后台自动筛选，添加了库外问题记录，Issue_Id：835597，项目Id为：m1822intl，项目内部名称：M1822 INTL，转至：联系人&拨号盘，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180921143035301', '2018-09-21 14:30:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '后台自动筛选，添加了库外问题记录，Issue_Id：834882，项目Id为：m1822intl，项目内部名称：M1822 INTL，转至：通话&通话设置，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180921143035372', '2018-09-21 14:30:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '后台自动筛选，添加了库外问题记录，Issue_Id：834460，项目Id为：m1822intl，项目内部名称：M1822 INTL，转至：时钟，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('180921143035422', '2018-09-21 14:30:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '后台自动筛选，添加了库外问题记录，Issue_Id：833565，项目Id为：m1822intl，项目内部名称：M1822 INTL，转至：音频框架，是否库外：是', '03');
INSERT INTO `system_log` VALUES ('18092115383261', '2018-09-21 15:38:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【机器人管理】，修改了机器人，机器人Id：0001机器人名：nana，所属钉钉群：测试群，webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '04');
INSERT INTO `system_log` VALUES ('180921153928548', '2018-09-21 15:39:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【机器人管理】，新增了机器人，机器人Id：0002机器人名：nana，所属钉钉群：测试群2，webhook：https://oapi.dingtalk.com/robot/send?access_token=66a94246b28e6ceeac3797322a93905fdc7d18d37b2a1a70764570f6f2d85029', '03');
INSERT INTO `system_log` VALUES ('180921154826849', '2018-09-21 15:48:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：Monkey，测试人员：wangjinxin，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180921154826972', '2018-09-21 15:48:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：充电专项，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180921154827131', '2018-09-21 15:48:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：设置，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180921154827221', '2018-09-21 15:48:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：GPS，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180921154827306', '2018-09-21 15:48:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180921154236，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/21 15:48:26，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable \n     特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能； 稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '03');
INSERT INTO `system_log` VALUES ('18092115482753', '2018-09-21 15:48:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：信息，测试人员：zhengxiaofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180921155321171', '2018-09-21 15:53:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180921154236，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/21 15:48:26，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable \n     特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能； 稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18092115543916', '2018-09-21 15:54:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180921154236，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/21 15:48:26，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable \n     特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能； 稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180921155523562', '2018-09-21 15:55:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180921154236，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/21 15:48:26，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable \n     特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能； 稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180921155539967', '2018-09-21 15:55:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180921154236，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/21 15:48:26，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable \n     特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能； 稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180921161833219', '2018-09-21 16:18:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000001，通知类型：仅一次，标题：测试，内容：测试钉钉通知消息，重复：无，发送时间：2018/09/21 16:18:30，@群成员：@所有人，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/21 16:18:30', '03');
INSERT INTO `system_log` VALUES ('180921163820343', '2018-09-21 16:38:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知，重复：5，发送时间：16:40:00，@群成员：@蔡娇娇, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/21 16:38:19', '03');
INSERT INTO `system_log` VALUES ('180921164552947', '2018-09-21 16:45:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000003，通知类型：仅一次，标题：通知消息，内容：一次通知哈哈哈哈，重复：无，发送时间：2018/09/21 16:45:50，@群成员：@陈丽, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/21 16:45:50', '03');
INSERT INTO `system_log` VALUES ('180921165316329', '2018-09-21 16:53:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【系统通知管理】，删除了系统通知，通知Id：000001，通知类型：仅一次，标题：测试，内容：测试钉钉通知消息，重复：无，发送时间：2018/09/21 16:18:30，@所有人：是，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/21 16:18:30', '05');
INSERT INTO `system_log` VALUES ('18092117554172', '2018-09-21 17:55:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：5，发送时间：07:59:00，@群成员：@蔡娇娇, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/21 17:55:40', '04');
INSERT INTO `system_log` VALUES ('180921175555256', '2018-09-21 17:55:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：5，发送时间：17:59:00，@群成员：@蔡娇娇, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/21 17:55:54', '04');
INSERT INTO `system_log` VALUES ('18092515350522', '2018-09-25 15:35:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919172108，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 17:22:38，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：3，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180925154605614', '2018-09-25 15:46:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：2，发送时间：16:00:00，@群成员：@蔡娇娇, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/25 15:46:04', '04');
INSERT INTO `system_log` VALUES ('180925154605691', '2018-09-25 15:46:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【修改定时通知】，新增了系统通知，通知Id：000005，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：5，发送时间：16:00:00，@群成员：@蔡娇娇, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/25 15:46:04', '03');
INSERT INTO `system_log` VALUES ('180925155610108', '2018-09-25 15:56:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180925155610181', '2018-09-25 15:56:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180925155539，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/25 15:56:10，测试机型：NPI，测试类型：05，测试固件：哈哈哈，测试开始时间：2018/09/11 00:00:00,测试结束时间：2018/09/19 00:00:00，测试周期：8，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180925155631878', '2018-09-25 15:56:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180925155539，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/25 15:56:31，测试机型：NPI，测试类型：05，测试固件：哈哈哈，测试开始时间：2018/09/11 00:00:00,测试结束时间：2018/09/19 00:00:00，测试周期：8，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180925155631902', '2018-09-25 15:56:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180925155539，模块名：拨号盘，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('18092516020818', '2018-09-25 16:02:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试模块设置】，添加了测试模块，模块名：哈哈哈，模块类型：基本模块，从属：项目通用', '03');
INSERT INTO `system_log` VALUES ('180925160226331', '2018-09-25 16:02:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：哈哈哈哈哈，模块类型：基本模块，从属：项目通用', '04');
INSERT INTO `system_log` VALUES ('18092516053894', '2018-09-25 16:05:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【测试模块设置】，修改了测试模块，模块名：哈哈耶耶耶，模块类型：基本模块，从属：项目通用', '04');
INSERT INTO `system_log` VALUES ('180926113123791', '2018-09-26 11:31:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【用户管理】，添加了用户信息记录，用户编号为：linrizhi，用户类型：临时用户，姓名：天天，性别：男，职位：，部门：外网现网测试', '03');
INSERT INTO `system_log` VALUES ('180926113848211', '2018-09-26 11:38:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：gaoguofang，用户类型：普通用户，姓名：高国芳，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180926114039326', '2018-09-26 11:40:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：chenli，用户类型：普通用户，姓名：陈丽，性别：女，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180926114109163', '2018-09-26 11:41:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：chenli，用户类型：普通用户，姓名：陈丽，性别：女，职位：，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180926114156951', '2018-09-26 11:41:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：linrizhi，用户类型：临时用户，姓名：天天，性别：男，职位：，部门：外网现网测试', '04');
INSERT INTO `system_log` VALUES ('180926114900519', '2018-09-26 11:49:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：liuying2，用户类型：管理员，姓名：刘颖，性别：女，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180926114920493', '2018-09-26 11:49:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：linrizhi，用户类型：临时用户，姓名：天天，性别：男，职位：，部门：外网现网测试', '04');
INSERT INTO `system_log` VALUES ('180926114923543', '2018-09-26 11:49:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【用户管理】，删除了用户信息记录，用户编号为：linrizhi，用户类型：临时用户，姓名：天天，性别：男，职位：，部门：外网现网测试', '05');
INSERT INTO `system_log` VALUES ('180926115256282', '2018-09-26 11:52:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【用户管理】，添加了用户信息记录，用户编号为：tt，用户类型：临时用户，姓名：会话，性别：男，职位：，部门：外网现网测试', '03');
INSERT INTO `system_log` VALUES ('180926115307385', '2018-09-26 11:53:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【用户管理】，删除了用户信息记录，用户编号为：tt，用户类型：临时用户，姓名：会话，性别：男，职位：，部门：外网现网测试', '05');
INSERT INTO `system_log` VALUES ('180926115343490', '2018-09-26 11:53:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【用户管理】，添加了用户信息记录，用户编号为：tt，用户类型：临时用户，姓名：哈哈哈，性别：男，职位：，部门：外网现网测试', '03');
INSERT INTO `system_log` VALUES ('180926115346522', '2018-09-26 11:53:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：tt，用户类型：临时用户，姓名：哈哈哈，性别：男，职位：，部门：外网现网测试', '04');
INSERT INTO `system_log` VALUES ('180926115352939', '2018-09-26 11:53:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【用户管理】，删除了用户信息记录，用户编号为：tt，用户类型：临时用户，姓名：哈哈哈，性别：男，职位：，部门：外网现网测试', '05');
INSERT INTO `system_log` VALUES ('180926115943281', '2018-09-26 11:59:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【用户管理】，添加了用户信息记录，用户编号为：tt，用户类型：临时用户，姓名：灌灌灌灌，性别：男，职位：，部门：外网现网测试', '03');
INSERT INTO `system_log` VALUES ('180926115957690', '2018-09-26 11:59:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【用户管理】，删除了用户信息记录，用户编号为：tt，用户类型：临时用户，姓名：灌灌灌灌，性别：男，职位：，部门：外网现网测试', '05');
INSERT INTO `system_log` VALUES ('180926134813405', '2018-09-26 13:48:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：3，发送时间：16:00:00，@群成员：@蔡娇娇, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/26 13:48:12', '04');
INSERT INTO `system_log` VALUES ('180926134826600', '2018-09-26 13:48:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：3，发送时间：16:00:00，@群成员：@蔡娇娇, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/26 13:48:25', '04');
INSERT INTO `system_log` VALUES ('180926134911510', '2018-09-26 13:49:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：w-zhangchao1，用户类型：临时用户，姓名：张超，性别：男，职位：外包同学，部门：外网现网测试', '04');
INSERT INTO `system_log` VALUES ('180926140058374', '2018-09-26 14:00:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180919172108，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/19 17:22:38，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/10 00:00:00,测试结束时间：2018/09/13 00:00:00，测试周期：3，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180926160043821', '2018-09-26 16:00:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【角色设置】，新增了角色记录，角色编号为：04，角色名称：哈哈哈', '03');
INSERT INTO `system_log` VALUES ('180926160052792', '2018-09-26 16:00:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【角色设置】，修改了角色记录，角色编号为：04，角色名称：哈哈哈', '04');
INSERT INTO `system_log` VALUES ('1809261615212', '2018-09-26 16:15:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【角色设置】，删除了角色记录，角色编号为：04，角色名称：哈哈哈', '05');
INSERT INTO `system_log` VALUES ('180926161727816', '2018-09-26 16:17:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【角色设置】，新增了角色记录，角色编号为：04，角色名称：哈哈哈', '03');
INSERT INTO `system_log` VALUES ('180926161748782', '2018-09-26 16:17:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【用户管理】，添加了用户信息记录，用户编号为：哈哈哈，用户类型：哈哈哈，姓名：fff，性别：男，职位：，部门：VPM', '03');
INSERT INTO `system_log` VALUES ('180926161806551', '2018-09-26 16:18:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【角色设置】，修改了角色记录，角色编号为：04，角色名称：哈哈哈', '04');
INSERT INTO `system_log` VALUES ('180926161812794', '2018-09-26 16:18:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【角色设置】，修改了角色记录，角色编号为：04，角色名称：耶耶耶', '04');
INSERT INTO `system_log` VALUES ('180926161842848', '2018-09-26 16:18:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【用户管理】，删除了用户信息记录，用户编号为：哈哈哈，用户类型：耶耶耶，姓名：fff，性别：男，职位：，部门：VPM', '05');
INSERT INTO `system_log` VALUES ('180926161848216', '2018-09-26 16:18:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【角色设置】，删除了角色记录，角色编号为：04，角色名称：耶耶耶', '05');
INSERT INTO `system_log` VALUES ('180926162018967', '2018-09-26 16:20:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【角色设置】，新增了角色记录，角色编号为：04，角色名称：哈哈哈哈', '03');
INSERT INTO `system_log` VALUES ('180926162025237', '2018-09-26 16:20:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【角色设置】，删除了角色记录，角色编号为：04，角色名称：哈哈哈哈', '05');
INSERT INTO `system_log` VALUES ('180926162040114', '2018-09-26 16:20:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【角色设置】，新增了角色记录，角色编号为：04，角色名称：哈哈哈哈', '03');
INSERT INTO `system_log` VALUES ('180926162045774', '2018-09-26 16:20:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【角色设置】，新增了角色记录，角色编号为：05，角色名称：吞吞吐吐', '03');
INSERT INTO `system_log` VALUES ('18092616210560', '2018-09-26 16:21:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【角色设置】，删除了角色记录，角色编号为：05，角色名称：吞吞吐吐', '05');
INSERT INTO `system_log` VALUES ('180926162111995', '2018-09-26 16:21:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【角色设置】，删除了角色记录，角色编号为：04，角色名称：哈哈哈哈', '05');
INSERT INTO `system_log` VALUES ('180926165106932', '2018-09-26 16:51:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试模块设置】，删除了测试模块，模块名：哈哈耶耶耶，模块类型：基本模块，从属：项目通用', '05');
INSERT INTO `system_log` VALUES ('180926175838185', '2018-09-26 17:58:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人信息】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：项目测试组', '04');
INSERT INTO `system_log` VALUES ('180926175843901', '2018-09-26 17:58:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人信息】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180926180255229', '2018-09-26 18:02:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人信息】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180926180420605', '2018-09-26 18:04:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人信息】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927102807462', '2018-09-27 10:28:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人信息】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：VPM', '04');
INSERT INTO `system_log` VALUES ('180927102947221', '2018-09-27 10:29:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927103232882', '2018-09-27 10:32:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：niming，用户类型：普通用户，姓名：倪明，性别：女，职位：，部门：擐甲挥戈建几个飞机飞', '04');
INSERT INTO `system_log` VALUES ('180927103315886', '2018-09-27 10:33:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人信息】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927103732300', '2018-09-27 10:37:32', 'w-zhangchao1', 'MZKJ-PC-02740_w-zhangchao1', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人信息】，修改了用户信息记录，用户编号为：w-zhangchao1，用户类型：临时用户，姓名：w-zhangchao1，性别：男，职位：，部门：', '04');
INSERT INTO `system_log` VALUES ('180927104002198', '2018-09-27 10:40:02', 'w-zhangchao1', 'MZKJ-PC-02740_w-zhangchao1', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人信息】，修改了用户信息记录，用户编号为：w-zhangchao1，用户类型：临时用户，姓名：w-zhangchao1，性别：男，职位：，部门：', '04');
INSERT INTO `system_log` VALUES ('180927104120940', '2018-09-27 10:41:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927104300922', '2018-09-27 10:43:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：w-zhangchao1，用户类型：临时用户，姓名：张超，性别：男，职位：，部门：', '04');
INSERT INTO `system_log` VALUES ('180927135340146', '2018-09-27 13:53:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01，父编码：01，部门名称：手机研发中心，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927135410624', '2018-09-27 13:54:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：02，父编码：02，部门名称：Flyme事业部，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927135439138', '2018-09-27 13:54:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：0101，父编码：01，部门名称：软件测试部，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927135541653', '2018-09-27 13:55:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：010101，父编码：0101，部门名称：外场测试部，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927135613216', '2018-09-27 13:56:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：010102，父编码：0101，部门名称：海外与运营商测试部，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927135703156', '2018-09-27 13:57:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：010103，父编码：0101，部门名称：测试规划部，部门描述：', '03');
INSERT INTO `system_log` VALUES ('18092713593747', '2018-09-27 13:59:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：010104，父编码：0101，部门名称：ODM测试部，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927141602854', '2018-09-27 14:16:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：010105，父编码：0101，部门名称：系统测试部，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927143750903', '2018-09-27 14:37:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：03，父编码：03，部门名称：人力资源中心，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144427472', '2018-09-27 14:44:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010201，父编码：010102，部门名称：海外现网测试，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144449210', '2018-09-27 14:44:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010202，父编码：010102，部门名称：海外项目测试，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144507919', '2018-09-27 14:45:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010203，父编码：010102，部门名称：移动入库，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144523378', '2018-09-27 14:45:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010204，父编码：010102，部门名称：电信联通入库，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144605883', '2018-09-27 14:46:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010101，父编码：010101，部门名称：海外场测，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144613643', '2018-09-27 14:46:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010102，父编码：010101，部门名称：国内场测，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144639855', '2018-09-27 14:46:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010401，父编码：010104，部门名称：VPM，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144651465', '2018-09-27 14:46:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010402，父编码：010104，部门名称：软件验收，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144707968', '2018-09-27 14:47:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010501，父编码：010105，部门名称：项目测试组，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144731273', '2018-09-27 14:47:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010502，父编码：010105，部门名称：相机测试组，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144745972', '2018-09-27 14:47:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010503，父编码：010105，部门名称：测试平台，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144805150', '2018-09-27 14:48:05', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010504，父编码：010105，部门名称：通讯测试组，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144820970', '2018-09-27 14:48:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010505，父编码：010105，部门名称：系统优化测试组，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144834146', '2018-09-27 14:48:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010506，父编码：010105，部门名称：无线测试组，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927144846373', '2018-09-27 14:48:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010507，父编码：010105，部门名称：驱动测试组，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927145004837', '2018-09-27 14:50:04', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【组织架构管理】，修改了部门记录，部门编号为：01010101，父编码：010101，部门名称：海外场测，部门描述：', '04');
INSERT INTO `system_log` VALUES ('180927145011468', '2018-09-27 14:50:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【组织架构管理】，修改了部门记录，部门编号为：01010202，父编码：010102，部门名称：海外项目测试，部门描述：', '04');
INSERT INTO `system_log` VALUES ('180927145020380', '2018-09-27 14:50:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【组织架构管理】，修改了部门记录，部门编号为：01010201，父编码：010102，部门名称：海外现网测试，部门描述：', '04');
INSERT INTO `system_log` VALUES ('180927145149142', '2018-09-27 14:51:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【组织架构管理】，修改了部门记录，部门编号为：01010101，父编码：010101，部门名称：海外场测，部门描述：', '04');
INSERT INTO `system_log` VALUES ('180927145156784', '2018-09-27 14:51:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【组织架构管理】，修改了部门记录，部门编号为：01010101，父编码：010101，部门名称：海外场测，部门描述：', '04');
INSERT INTO `system_log` VALUES ('180927145203683', '2018-09-27 14:52:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【组织架构管理】，修改了部门记录，部门编号为：01010201，父编码：010102，部门名称：海外现网测试，部门描述：', '04');
INSERT INTO `system_log` VALUES ('180927150542790', '2018-09-27 15:05:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：010106，父编码：0101，部门名称：测试哈哈哈，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927151220388', '2018-09-27 15:12:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：010106，父编码：0101，部门名称：哈哈哈，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927151242622', '2018-09-27 15:12:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【组织架构管理】，删除了部门记录，部门编号为：010106，父编码：0101，部门名称：哈哈哈，部门描述：', '05');
INSERT INTO `system_log` VALUES ('180927164930990', '2018-09-27 16:49:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【组织架构管理】，新增了部门记录，部门编号为：01010508，父编码：010105，部门名称：哈哈哈哈，部门描述：', '03');
INSERT INTO `system_log` VALUES ('180927164935801', '2018-09-27 16:49:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【组织架构管理】，删除了部门记录，部门编号为：01010508，父编码：010105，部门名称：哈哈哈哈，部门描述：', '05');
INSERT INTO `system_log` VALUES ('180927165138483', '2018-09-27 16:51:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：dongyiqiao，用户类型：管理员，姓名：董一俏，性别：男，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927165932873', '2018-09-27 16:59:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：dongyiqiao，用户类型：管理员，姓名：董一俏，性别：男，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927165946533', '2018-09-27 16:59:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：liuying2，用户类型：管理员，姓名：刘颖，性别：女，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927165957265', '2018-09-27 16:59:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：xingnana，用户类型：管理员，姓名：邢娜娜，性别：女，职位：测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927170006113', '2018-09-27 17:00:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：zhenglu，用户类型：管理员，姓名：郑璐，性别：女，职位：海外项目测试组经理，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927170015171', '2018-09-27 17:00:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：caijiaojiao，用户类型：普通用户，姓名：蔡娇娇，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('1809271700263', '2018-09-27 17:00:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：chenli，用户类型：普通用户，姓名：陈丽，性别：女，职位：高级测试开发工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927170034617', '2018-09-27 17:00:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：gaoguofang，用户类型：普通用户，姓名：高国芳，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927170044943', '2018-09-27 17:00:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：laoyiling，用户类型：普通用户，姓名：劳燚玲，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927170053100', '2018-09-27 17:00:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：linhongshen，用户类型：普通用户，姓名：林宏燊，性别：男，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927170101709', '2018-09-27 17:01:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：niming，用户类型：普通用户，姓名：倪明，性别：女，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927170109745', '2018-09-27 17:01:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：wangjinxin，用户类型：普通用户，姓名：王金鑫，性别：女，职位：软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927170122447', '2018-09-27 17:01:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：zhangxiaotong1，用户类型：普通用户，姓名：张笑铜，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180927170207970', '2018-09-27 17:02:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：yuyong，用户类型：普通用户，姓名：余勇，性别：男，职位：软件测试工程师，部门：海外现网测试', '04');
INSERT INTO `system_log` VALUES ('180927170235749', '2018-09-27 17:02:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：zhengxiaofang，用户类型：普通用户，姓名：郑小芳，性别：女，职位：软件测试工程师，部门：海外现网测试', '04');
INSERT INTO `system_log` VALUES ('180927170737441', '2018-09-27 17:07:37', 'w-zhangchao1', 'MZKJ-PC-02740_w-zhangchao1', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人信息】，修改了用户信息记录，用户编号为：w-zhangchao1，用户类型：临时用户，姓名：张超，性别：男，职位：，部门：', '04');
INSERT INTO `system_log` VALUES ('180927171000518', '2018-09-27 17:10:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000006，通知类型：仅一次，标题：测试，内容：测试，重复：无，发送时间：2018/09/27 17:09:58，@群成员：@张超, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/27 17:09:58', '03');
INSERT INTO `system_log` VALUES ('180927174441592', '2018-09-27 17:44:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180921154236，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/21 15:48:26，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable \n     特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能； 稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18092809310181', '2018-09-28 09:31:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【组织架构管理】，删除了部门记录，部门编号为：03，父编码：03，部门名称：人力资源中心，部门描述：', '05');
INSERT INTO `system_log` VALUES ('180928093445667', '2018-09-28 09:34:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180928093445767', '2018-09-28 09:34:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180928093406，任务名：测试，所测试机型项目：m1816-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 09:34:45，测试机型：PVT，测试类型：05，测试固件：哈哈哈，测试开始时间：2018/09/10 09:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：2.375，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180928093510888', '2018-09-28 09:35:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180928093406，任务名：测试，所测试机型项目：m1816-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 09:34:45，测试机型：PVT，测试类型：05，测试固件：哈哈哈，测试开始时间：2018/09/10 09:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：2，备注：哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('180928093559960', '2018-09-28 09:35:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180925155539，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/25 15:56:31，测试机型：NPI，测试类型：05，测试固件：哈哈哈，测试开始时间：2018/09/11 00:00:00,测试结束时间：2018/09/19 00:00:00，测试周期：8，备注：哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('180928103725159', '2018-09-28 10:37:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180928103725216', '2018-09-28 10:37:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180928103651，任务名：测试，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:37:16，测试机型：NPI，测试类型：02，测试固件：会话，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：9，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180928104235787', '2018-09-28 10:42:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180928104235867', '2018-09-28 10:42:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180928104205，任务名：测试2，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:42:35，测试机型：PVT，测试类型：03，测试固件：会话，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：3.75，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180928104755621', '2018-09-28 10:47:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：耶耶耶耶周五，重复：Friday，发送时间：10:48:10，@群成员：@蔡娇娇, @陈丽, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/28 10:47:54', '04');
INSERT INTO `system_log` VALUES ('180928104801998', '2018-09-28 10:48:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180928104802129', '2018-09-28 10:48:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:01，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 16:00:00，测试周期：9.667，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180928104806180', '2018-09-28 10:48:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:04，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 16:00:00，测试周期：9.667，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928104817930', '2018-09-28 10:48:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:17，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 16:00:00，测试周期：9.667，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928104825354', '2018-09-28 10:48:25', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:25，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 13:00:00,测试结束时间：2018/09/12 16:00:00，测试周期：9.125，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928104834762', '2018-09-28 10:48:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：耶耶耶耶周三，重复：Wednesday，发送时间：10:49:10，@群成员：@蔡娇娇, @陈丽, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/28 10:48:33', '04');
INSERT INTO `system_log` VALUES ('180928104834797', '2018-09-28 10:48:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:34，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：9，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928104839706', '2018-09-28 10:48:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：9.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928111754385', '2018-09-28 11:17:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：9.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928114103239', '2018-09-28 11:41:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：9.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928114109579', '2018-09-28 11:41:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928114129491', '2018-09-28 11:41:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928114142563', '2018-09-28 11:41:42', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928114509513', '2018-09-28 11:45:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928114517152', '2018-09-28 11:45:17', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：DVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928114609968', '2018-09-28 11:46:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928114857213', '2018-09-28 11:48:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928114913810', '2018-09-28 11:49:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928115412695', '2018-09-28 11:54:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928115638676', '2018-09-28 11:56:38', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928115647756', '2018-09-28 11:56:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928115652856', '2018-09-28 11:56:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928115732653', '2018-09-28 11:57:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104205，任务名：测试2，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:42:35，测试机型：PVT，测试类型：03，测试固件：会话，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：3.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928115736346', '2018-09-28 11:57:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104205，任务名：测试2，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:42:35，测试机型：PVT，测试类型：03，测试固件：会话，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：3.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928134301353', '2018-09-28 13:43:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928134735169', '2018-09-28 13:47:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：838495，问题类型：新增问题，Issue备注：，子任务（测试模块）：待机，父任务Id：20180928104734，机型项目：m1813-intl', '03');
INSERT INTO `system_log` VALUES ('180928134735235', '2018-09-28 13:47:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：3，测试模块名：待机，是否完成：否，子任务备注：，机型项目：m1813-intl，父任务Id：20180928104734', '04');
INSERT INTO `system_log` VALUES ('180928134803230', '2018-09-28 13:48:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928134803276', '2018-09-28 13:48:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180928104734，模块名：拨号盘，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180928135133142', '2018-09-28 13:51:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928135944760', '2018-09-28 13:59:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：dongyiqiao，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928135949777', '2018-09-28 13:59:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('18092814001555', '2018-09-28 14:00:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928140116978', '2018-09-28 14:01:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：3，测试模块名：待机，是否完成：是，完成时间：2018/09/28 14:01:16，子任务备注：，机型项目：m1813-intl，父任务Id：20180928104734', '04');
INSERT INTO `system_log` VALUES ('180928141311884', '2018-09-28 14:13:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928103651，任务名：测试，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:37:16，测试机型：NPI，测试类型：02，测试固件：会话，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：9，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928142249633', '2018-09-28 14:22:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928103651，任务名：测试，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:37:16，测试机型：NPI，测试类型：02，测试固件：会话，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：9，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928142249671', '2018-09-28 14:22:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180928103651，模块名：拨号盘，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180928143432922', '2018-09-28 14:34:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：837485，问题类型：新增问题，Issue备注：，子任务（测试模块）：拨号盘，父任务Id：20180928103651，机型项目：m1813-intl', '03');
INSERT INTO `system_log` VALUES ('1809281434339', '2018-09-28 14:34:33', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：5，测试模块名：拨号盘，是否完成：否，子任务备注：，机型项目：m1813-intl，父任务Id：20180928103651', '04');
INSERT INTO `system_log` VALUES ('18092814455551', '2018-09-28 14:45:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：5，测试模块名：拨号盘，是否完成：否，子任务备注：，机型项目：m1813-intl，父任务Id：20180928103651', '04');
INSERT INTO `system_log` VALUES ('180928144649420', '2018-09-28 14:46:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：5，测试模块名：拨号盘，是否完成：否，子任务备注：，机型项目：m1813-intl，父任务Id：20180928103651', '04');
INSERT INTO `system_log` VALUES ('180928144810328', '2018-09-28 14:48:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104205，任务名：测试2，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:42:35，测试机型：PVT，测试类型：03，测试固件：会话，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：3.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928144814923', '2018-09-28 14:48:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104205，任务名：测试2，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:42:35，测试机型：PVT，测试类型：03，测试固件：会话，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：3.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('18092814482853', '2018-09-28 14:48:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104205，任务名：测试2，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:42:35，测试机型：PVT，测试类型：03，测试固件：会话，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：3.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928145435994', '2018-09-28 14:54:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：5，测试模块名：拨号盘，是否完成：否，子任务备注：，机型项目：m1813-intl，父任务Id：20180928103651', '04');
INSERT INTO `system_log` VALUES ('180928145702725', '2018-09-28 14:57:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104734，任务名：测试3，所测试机型项目：m1813-intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:48:39，测试机型：PVT，测试类型：01，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928145801905', '2018-09-28 14:58:01', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104205，任务名：测试2，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:42:35，测试机型：PVT，测试类型：01，测试固件：会话，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：3.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928145841351', '2018-09-28 14:58:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928103651，任务名：测试，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:37:16，测试机型：DVT，测试类型：02，测试固件：会话，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：9，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180928150243496', '2018-09-28 15:02:43', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180928104205，任务名：测试2，所测试机型项目：m1813-intl，项目所处阶段：BringUp，项目负责人：xingnana，是否完成：1,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/28 10:42:35，测试机型：PVT，测试类型：03，测试固件：会话，测试开始时间：2018/09/09 00:00:00,测试结束时间：2018/09/12 18:00:00，测试周期：3.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929104619544', '2018-09-29 10:46:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：耶耶耶耶周六，重复：Saturday，发送时间：10:47:10，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/29 10:46:18', '04');
INSERT INTO `system_log` VALUES ('180929104732574', '2018-09-29 10:47:32', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：耶耶耶耶周六，重复：Friday，发送时间：10:48:10，@群成员：@蔡娇娇, @陈丽, @邢娜娜，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/29 10:47:31', '04');
INSERT INTO `system_log` VALUES ('180929143637325', '2018-09-29 14:36:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929143637452', '2018-09-29 14:36:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180929143609，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：现网测试，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:36:37，测试机型：PVT，测试类型：05，测试固件：哈哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：9，备注：哈哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180929143715680', '2018-09-29 14:37:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929143609，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：现网测试，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:37:15，测试机型：PVT，测试类型：05，测试固件：哈哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：9，备注：哈哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929143753264', '2018-09-29 14:37:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929143609，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：现网测试，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:37:53，测试机型：PVT，测试类型：05，测试固件：哈哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/12 00:00:00，测试周期：9，备注：哈哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929143753269', '2018-09-29 14:37:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180929143609，模块名：拨号盘，测试人员：chenli，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180929144455163', '2018-09-29 14:44:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929144455220', '2018-09-29 14:44:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180929144409，任务名：测试2，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:44:55，测试机型：NPI，测试类型：02，测试固件：哈哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 16:00:00，测试周期：4.667，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180929144515616', '2018-09-29 14:45:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929144409，任务名：测试2，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:45:15，测试机型：NPI，测试类型：02，测试固件：哈哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 16:00:00，测试周期：4.667，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929144515618', '2018-09-29 14:45:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180929144409，模块名：拨号盘，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180929144754210', '2018-09-29 14:47:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929144754352', '2018-09-29 14:47:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：拨号盘，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929144754452', '2018-09-29 14:47:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180929144727，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:47:54，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 16:00:00，测试周期：4.667，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180929144823648', '2018-09-29 14:48:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929144727，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 18:00:00，测试周期：4.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929144823651', '2018-09-29 14:48:23', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180929144727，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180929145258221', '2018-09-29 14:52:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929145258289', '2018-09-29 14:52:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180929145232，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:52:58，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 15:00:00，测试周期：4.625，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180929145318300', '2018-09-29 14:53:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929145232，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 14:00:00，测试周期：4.583，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929145318303', '2018-09-29 14:53:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180929145232，模块名：拨号盘，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180929145345220', '2018-09-29 14:53:45', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929145232，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 14:00:00，测试周期：4.583，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('18092915303573', '2018-09-29 15:30:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929145232，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:52:58，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 14:00:00，测试周期：4.583，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929153259765', '2018-09-29 15:32:59', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929145232，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:52:58，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 14:00:00，测试周期：4.583，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929153328652', '2018-09-29 15:33:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929145232，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:52:58，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/07 14:00:00，测试周期：5.583，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929161202997', '2018-09-29 16:12:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929161203204', '2018-09-29 16:12:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：拨号盘，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929161203277', '2018-09-29 16:12:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180929161123，任务名：测试2，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 16:12:02，测试机型：PVT，测试类型：02，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 17:00:00，测试周期：4.708，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180929161221824', '2018-09-29 16:12:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929161123，任务名：测试2，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：02，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 18:00:00，测试周期：4.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929161307297', '2018-09-29 16:13:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929161123，任务名：测试2，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：06，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 18:00:00，测试周期：4.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929161321166', '2018-09-29 16:13:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929161123，任务名：测试2，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：06，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 18:00:00，测试周期：4.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929161321191', '2018-09-29 16:13:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：4，父任务Id：20180929161123，模块名：拨号盘，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '05');
INSERT INTO `system_log` VALUES ('18092916132166', '2018-09-29 16:13:21', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180929161123，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180929161327483', '2018-09-29 16:13:27', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929161123，任务名：测试2，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：06，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 18:00:00，测试周期：4.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929161439917', '2018-09-29 16:14:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改项目信息】，修改了项目记录，项目Id为：m1818，项目内部名称：M1818，项目负责人：陈丽，总负责人：郑璐，项目状态：Going，风险等级：低，硬件平台：展讯，平台型号：MaliT820 MP1 @ 650MH', '04');
INSERT INTO `system_log` VALUES ('180929161449509', '2018-09-29 16:14:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：4，父任务Id：20180929161123，模块名：拨号盘，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180929161449560', '2018-09-29 16:14:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929161123，任务名：测试2，所测试机型项目：m1818，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：02，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 18:00:00，测试周期：4.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929161449561', '2018-09-29 16:14:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：5，父任务Id：20180929161123，模块名：无线网络，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '05');
INSERT INTO `system_log` VALUES ('180929161712582', '2018-09-29 16:17:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929161123，任务名：测试2，所测试机型项目：m1818，项目所处阶段：SDV，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：02，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 18:00:00，测试周期：4.75，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180929162947506', '2018-09-29 16:29:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929162947618', '2018-09-29 16:29:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：拨号盘，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929162947709', '2018-09-29 16:29:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：无线网络，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180929162947916', '2018-09-29 16:29:47', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：通话控制，测试人员：xingnana，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('18092916294884', '2018-09-29 16:29:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 16:29:47，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable <file:///\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable>\n  特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '03');
INSERT INTO `system_log` VALUES ('180929163014102', '2018-09-29 16:30:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable \n  特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180929163128330', '2018-09-29 16:31:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable <file:///\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable>\n  特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180929170014797', '2018-09-29 17:00:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable <file:///\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable>\n  特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180929170036860', '2018-09-29 17:00:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable <file:///\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable>\n  特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180929174634384', '2018-09-29 17:46:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：829067，问题类型：新增问题，Issue备注：，子任务（测试模块）：拨号盘，父任务Id：20180929162802，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180929174634595', '2018-09-29 17:46:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：8，测试模块名：拨号盘，是否完成：否，子任务备注：备注哈哈哈，机型项目：m1882-intl，父任务Id：20180929162802', '04');
INSERT INTO `system_log` VALUES ('180929174857555', '2018-09-29 17:48:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：8，测试模块名：拨号盘，是否完成：否，子任务备注：备注哈哈哈，机型项目：m1882-intl，父任务Id：20180929162802', '04');
INSERT INTO `system_log` VALUES ('180929174857565', '2018-09-29 17:48:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：829522，问题类型：新增问题，Issue备注：U2内核还在灰度，后续通过OTA解决，子任务（测试模块）：拨号盘，父任务Id：20180929162802，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180929174857639', '2018-09-29 17:48:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：824500，问题类型：已知问题，Issue备注：，子任务（测试模块）：拨号盘，父任务Id：20180929162802，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180929175015667', '2018-09-29 17:50:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：814710，问题类型：已知问题，Issue备注：U2内核还在灰度，后续通过OTA解决，子任务（测试模块）：通话控制，父任务Id：20180929162802，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180929175015725', '2018-09-29 17:50:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：809254，问题类型：未合入问题，Issue备注：未合入MP，子任务（测试模块）：通话控制，父任务Id：20180929162802，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180929175015793', '2018-09-29 17:50:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：10，测试模块名：通话控制，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180929162802', '04');
INSERT INTO `system_log` VALUES ('180929175716403', '2018-09-29 17:57:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：8，测试模块名：拨号盘，是否完成：是，完成时间：2018/09/29 17:57:16，子任务备注：备注哈哈哈，机型项目：m1882-intl，父任务Id：20180929162802', '04');
INSERT INTO `system_log` VALUES ('180930091336560', '2018-09-30 09:13:36', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable   特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180930091457140', '2018-09-30 09:14:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000007，通知类型：仅一次，标题：测试，内容：哈哈哈哈，重复：无，发送时间：2018/09/30 09:14:56，@群成员：@劳燚玲，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:14:56', '03');
INSERT INTO `system_log` VALUES ('180930092046259', '2018-09-30 09:20:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：laoyiling，用户类型：普通用户，姓名：劳燚玲，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180930092110387', '2018-09-30 09:21:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000008，通知类型：仅一次，标题：测试，内容：哈哈哈哈，重复：无，发送时间：2018/09/30 09:21:09，@群成员：@劳燚玲，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:21:09', '03');
INSERT INTO `system_log` VALUES ('18093009265426', '2018-09-30 09:26:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【用户管理】，修改了用户信息记录，用户编号为：laoyiling，用户类型：普通用户，姓名：劳燚玲，性别：女，职位：助理软件测试工程师，部门：海外项目测试', '04');
INSERT INTO `system_log` VALUES ('180930092740187', '2018-09-30 09:27:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：7，发送时间：09:27:50，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:27:39', '04');
INSERT INTO `system_log` VALUES ('180930092755849', '2018-09-30 09:27:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【系统通知管理】，删除了系统通知，通知Id：000007，通知类型：仅一次，标题：测试，内容：哈哈哈哈，重复：无，发送时间：2018/09/30 09:14:56，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:14:56', '05');
INSERT INTO `system_log` VALUES ('18093009281554', '2018-09-30 09:28:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：7，发送时间：09:28:50，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:28:14', '04');
INSERT INTO `system_log` VALUES ('180930092826309', '2018-09-30 09:28:26', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable   特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180930092829535', '2018-09-30 09:28:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，所测试机型项目：m1882-intl，项目所处阶段：MPT，项目负责人：，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable   特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180930092928758', '2018-09-30 09:29:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：7，发送时间：09:30:20，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:29:27', '04');
INSERT INTO `system_log` VALUES ('18093009324671', '2018-09-30 09:32:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000002，通知类型：定时，标题：定时通知，内容：测试定时通知哈哈哈哈，重复：7，发送时间：09:35:20，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:32:45', '04');
INSERT INTO `system_log` VALUES ('180930095753958', '2018-09-30 09:57:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000001，通知类型：定时，标题：测试，内容：测试，重复：Sunday，发送时间：10:02:34，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:57:52', '03');
INSERT INTO `system_log` VALUES ('180930095809990', '2018-09-30 09:58:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000001，通知类型：定时，标题：测试，内容：测试，重复：5，发送时间：10:02:34，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:58:08', '04');
INSERT INTO `system_log` VALUES ('18093009581079', '2018-09-30 09:58:10', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【修改定时通知】，新增了系统通知，通知Id：000003，通知类型：定时，标题：测试，内容：测试，重复：7，发送时间：10:02:34，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 09:58:08', '03');
INSERT INTO `system_log` VALUES ('180930100215608', '2018-09-30 10:02:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000001，通知类型：定时，标题：测试，内容：哈哈哈，重复：Sunday，发送时间：10:06:08，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:01:29', '03');
INSERT INTO `system_log` VALUES ('180930101218211', '2018-09-30 10:12:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000003，通知类型：定时，标题：测试2，内容：哈哈哈哈，重复：Saturday，发送时间：10:16:57，@群成员：@蔡娇娇, @陈丽, @董一俏，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:12:17', '03');
INSERT INTO `system_log` VALUES ('180930101218283', '2018-09-30 10:12:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：哈哈哈哈，重复：Sunday，发送时间：10:16:57，@群成员：@蔡娇娇, @陈丽, @董一俏，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:12:17', '03');
INSERT INTO `system_log` VALUES ('18093010121894', '2018-09-30 10:12:18', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：定时，标题：测试2，内容：哈哈哈哈，重复：Friday，发送时间：10:16:57，@群成员：@蔡娇娇, @陈丽, @董一俏，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:12:17', '03');
INSERT INTO `system_log` VALUES ('180930101437484', '2018-09-30 10:14:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：定时，标题：测试2，内容：哈哈哈，重复：Friday，发送时间：10:18:49，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:14:08', '03');
INSERT INTO `system_log` VALUES ('180930101437563', '2018-09-30 10:14:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000003，通知类型：定时，标题：测试2，内容：哈哈哈，重复：Saturday，发送时间：10:18:49，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:14:15', '03');
INSERT INTO `system_log` VALUES ('180930101437633', '2018-09-30 10:14:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：哈哈哈，重复：Sunday，发送时间：10:18:49，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:14:20', '03');
INSERT INTO `system_log` VALUES ('180930101707379', '2018-09-30 10:17:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：定时，标题：测试，内容：哈哈哈，重复：Friday，发送时间：10:21:10，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:16:49', '03');
INSERT INTO `system_log` VALUES ('180930101707491', '2018-09-30 10:17:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000003，通知类型：定时，标题：测试，内容：哈哈哈，重复：Saturday，发送时间：10:21:10，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:16:57', '03');
INSERT INTO `system_log` VALUES ('180930101707568', '2018-09-30 10:17:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000004，通知类型：定时，标题：测试，内容：哈哈哈，重复：Sunday，发送时间：10:21:10，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:17:00', '03');
INSERT INTO `system_log` VALUES ('180930102051924', '2018-09-30 10:20:51', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：定时，标题：测试，内容：哈哈哈，重复：Friday，发送时间：10:25:32，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:20:50', '03');
INSERT INTO `system_log` VALUES ('1809301020525', '2018-09-30 10:20:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000003，通知类型：定时，标题：测试，内容：哈哈哈，重复：Saturday，发送时间：10:25:32，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:20:50', '03');
INSERT INTO `system_log` VALUES ('18093010205266', '2018-09-30 10:20:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000004，通知类型：定时，标题：测试，内容：哈哈哈，重复：Sunday，发送时间：10:25:32，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:20:50', '03');
INSERT INTO `system_log` VALUES ('180930102820757', '2018-09-30 10:28:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000002，通知类型：定时，标题：测试2，内容：哈哈哈，重复：Friday，发送时间：10:33:04，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:28:19', '03');
INSERT INTO `system_log` VALUES ('180930102820827', '2018-09-30 10:28:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000003，通知类型：定时，标题：测试2，内容：哈哈哈，重复：Saturday，发送时间：10:33:04，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:28:19', '03');
INSERT INTO `system_log` VALUES ('180930102820930', '2018-09-30 10:28:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：哈哈哈，重复：Sunday，发送时间：10:33:04，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:28:19', '03');
INSERT INTO `system_log` VALUES ('180930103607805', '2018-09-30 10:36:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：耶耶耶耶，重复：Sunday，发送时间：10:33:04，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:36:05', '04');
INSERT INTO `system_log` VALUES ('180930103837287', '2018-09-30 10:38:37', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000001，通知类型：定时，标题：测试，内容：哈哈哈，重复：Saturday，发送时间：10:06:08，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:38:34', '04');
INSERT INTO `system_log` VALUES ('180930103858622', '2018-09-30 10:38:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000001，通知类型：定时，标题：测试，内容：啦啦啦啦啦，重复：Monday，发送时间：10:06:08，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:38:50', '04');
INSERT INTO `system_log` VALUES ('180930103858699', '2018-09-30 10:38:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【修改定时通知】，新增了系统通知，通知Id：000005，通知类型：定时，标题：测试，内容：啦啦啦啦啦，重复：Tuesday，发送时间：10:06:08，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:38:52', '03');
INSERT INTO `system_log` VALUES ('180930103858749', '2018-09-30 10:38:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【修改定时通知】，新增了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：啦啦啦啦啦，重复：Wednesday，发送时间：10:06:08，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳, @劳燚玲, @林宏燊, @刘颖, @倪明, @张超, @王金鑫, @邢娜娜, @余勇, @张笑铜, @郑璐, @郑小芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:38:56', '03');
INSERT INTO `system_log` VALUES ('180930104140301', '2018-09-30 10:41:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【编辑钉钉通知】，新增了系统通知，通知Id：000005，通知类型：定时，标题：测试，内容：坎坎坷坷，重复：Monday，发送时间：10:46:10，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:41:39', '03');
INSERT INTO `system_log` VALUES ('180930104155432', '2018-09-30 10:41:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000005，通知类型：定时，标题：测试，内容：坎坎坷坷来来来，重复：Tuesday，发送时间：10:46:10，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:41:54', '04');
INSERT INTO `system_log` VALUES ('180930104155525', '2018-09-30 10:41:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【修改定时通知】，新增了系统通知，通知Id：000006，通知类型：定时，标题：测试，内容：坎坎坷坷来来来，重复：Wednesday，发送时间：10:46:10，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:41:54', '03');
INSERT INTO `system_log` VALUES ('180930104155618', '2018-09-30 10:41:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【修改定时通知】，新增了系统通知，通知Id：000007，通知类型：定时，标题：测试，内容：坎坎坷坷来来来，重复：Thursday，发送时间：10:46:10，@群成员：@蔡娇娇, @陈丽, @董一俏, @高国芳，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:41:54', '03');
INSERT INTO `system_log` VALUES ('180930104216540', '2018-09-30 10:42:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【系统通知管理】，删除了系统通知，通知Id：000005，通知类型：定时，标题：测试，内容：坎坎坷坷来来来，重复：Tuesday，发送时间：10:46:10，@所有人：否，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:41:54', '05');
INSERT INTO `system_log` VALUES ('18093010423985', '2018-09-30 10:42:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：耶耶耶耶，重复：Sunday，发送时间：10:00:04，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:42:38', '04');
INSERT INTO `system_log` VALUES ('180930104335729', '2018-09-30 10:43:35', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：耶耶耶耶，重复：Sunday，发送时间：10:50:04，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:43:34', '04');
INSERT INTO `system_log` VALUES ('180930104503782', '2018-09-30 10:45:03', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【修改定时通知】，修改了系统通知，通知Id：000004，通知类型：定时，标题：测试2，内容：耶耶耶耶，重复：Sunday，发送时间：10:45:10，@群成员：@蔡娇娇, @陈丽，钉钉群：测试群，机器人Id：0001，机器人名：nana，发布人：邢娜娜，发布时间：2018/09/30 10:45:02', '04');
INSERT INTO `system_log` VALUES ('180930113515197', '2018-09-30 11:35:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180930113451，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/30 11:35:14，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：2，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('18093011351563', '2018-09-30 11:35:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180930113539249', '2018-09-30 11:35:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930113451，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：2，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930113602485', '2018-09-30 11:36:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930113451，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：2，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930113602486', '2018-09-30 11:36:02', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180930113451，模块名：拨号盘，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180930113652974', '2018-09-30 11:36:52', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930113451，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：xingnana，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：2，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930113830756', '2018-09-30 11:38:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930113451，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：强制认证，项目负责人：gaoguofang，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：2，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930115257114', '2018-09-30 11:52:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180930115207，任务名：测试2，任务发布人：xingnana，所测试机型项目：m1822intl，项目所处阶段：BringUp，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/30 11:52:51，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/05 00:00:00，测试周期：3，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('18093011525737', '2018-09-30 11:52:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180930120024792', '2018-09-30 12:00:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180930120024892', '2018-09-30 12:00:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：拨号盘，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180930120024964', '2018-09-30 12:00:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180930115955，任务名：测试4，任务发布人：xingnana，所测试机型项目：m1822intl，项目所处阶段：SDV，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/30 12:00:24，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5，备注：滚滚滚\n', '03');
INSERT INTO `system_log` VALUES ('180930120031893', '2018-09-30 12:00:31', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：测试4，任务发布人：xingnana，任务修改人：xingnana，所测试机型项目：m1822intl，项目所处阶段：SDV，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930120109573', '2018-09-30 12:01:09', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：测试4，任务发布人：，任务修改人：xingnana，所测试机型项目：m1822intl，项目所处阶段：SDV，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930120114407', '2018-09-30 12:01:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：测试4，任务发布人：，任务修改人：xingnana，所测试机型项目：m1822intl，项目所处阶段：SDV，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930120114417', '2018-09-30 12:01:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：15，父任务Id：20180930115955，模块名：拨号盘，测试人员：niming，测试要求：P1,P2,P3,P4，备注：', '05');
INSERT INTO `system_log` VALUES ('180930134056549', '2018-09-30 13:40:56', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：测试4，任务发布人：，任务修改人：xingnana，所测试机型项目：m1822intl，项目所处阶段：SDV，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930134428489', '2018-09-30 13:44:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：测试4，任务发布人：xingnana，任务修改人：xingnana，所测试机型项目：m1822intl，项目所处阶段：SDV，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('18093013455317', '2018-09-30 13:45:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，任务发布人：xingnana，任务修改人：xingnana，所测试机型项目：m1882-intl，项目所处阶段：MPT，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable   特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('18093013460889', '2018-09-30 13:46:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，任务发布人：xingnana，任务修改人：xingnana，所测试机型项目：m1882-intl，项目所处阶段：MPT，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable   特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708，备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180930134713600', '2018-09-30 13:47:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180929145232，任务名：测试，所测试机型项目：m1822intl，项目所处阶段：SDV，项目负责人：，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 14:52:58，测试机型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/07 14:00:00，测试周期：5.583，备注：哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('18093013510039', '2018-09-30 13:51:00', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180929161123，任务名：测试2，任务发布人：xingnana，最后修改人：xingnana，所测试机型项目：m1818，项目所处阶段：SDV，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/29 16:12:02，测试机型：PVT，测试类型：02，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/06 18:00:00，测试周期：4.75，备注：哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('180930135540580', '2018-09-30 13:55:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180930113451，任务名：测试，任务发布人：xingnana，最后修改人：xingnana，所测试机型项目：m1822intl，项目所处阶段：强制认证，是否完成：0001/01/01 00:00:00,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/30 11:35:14，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/04 00:00:00，测试周期：2，备注：哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('180930135758132', '2018-09-30 13:57:58', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180930115207，任务名：测试2，任务发布人：xingnana，最后修改人：，所测试机型项目：m1822intl，项目所处阶段：BringUp，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/30 11:52:51，测试机型：PVT，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/05 00:00:00，测试周期：3，备注：哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('180930140906606', '2018-09-30 14:09:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('180930140906697', '2018-09-30 14:09:06', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【测试任务管理】，新增了【测试任务记录】，任务Id：20180930140838，任务名：测试1，任务创建人：xingnana，所测试机型项目：m1822intl，项目所处阶段：BringUp，是否完成：0,完成时间：0001/01/01 00:00:00，任务创建时间：2018/09/30 14:09:06，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/05 12:00:00，测试周期：2.5，备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180930140939222', '2018-09-30 14:09:39', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：测试1，任务创建人：xingnana，任务修改人：xingnana，所测试机型项目：m1822intl，项目所处阶段：BringUp，是否完成：0,完成时间：0001/01/01 00:00:00，任务创建时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/05 12:00:00，测试周期：2.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('18093014101244', '2018-09-30 14:10:12', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：测试1，任务创建人：xingnana，任务修改人：xingnana，所测试机型项目：m1822intl，项目所处阶段：BringUp，是否完成：0,完成时间：0001/01/01 00:00:00，任务创建时间：0001/01/01 00:00:00，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/05 12:00:00，测试周期：2.5，备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930141757382', '2018-09-30 14:17:57', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：测试1，创建人：xingnana，创建时间：2018/09/30 14:09:06，是否完成：0,完成时间：0001/01/01 00:00:00，机型项目：m1822intl，项目阶段：BringUp，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/05 12:00:00，测试周期：2.5（天），备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930141954267', '2018-09-30 14:19:54', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：测试1，创建人：xingnana，创建时间：2018/09/30 14:09:06，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：总结啦啦啦啦，机型项目：m1822intl，项目阶段：BringUp，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/05 12:00:00，测试周期：2.5（天），备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930142446104', '2018-09-30 14:24:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，创建人：xingnana，创建时间：2018/09/29 16:29:47，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1882-intl，项目阶段：MPT，测试机型类型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable   特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708（天），备注：1.测试过程中发现阻塞、严重的问题，请第一时间反馈；\n    2.便于bug统计，bugID上请加上超链接（不要加符号#），非常感谢\n', '04');
INSERT INTO `system_log` VALUES ('180930142446161', '2018-09-30 14:24:46', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180929162802，模块名：通话设置，测试人员：w-zhangchao1，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180930142940957', '2018-09-30 14:29:40', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('18093014294181', '2018-09-30 14:29:41', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了【测试任务记录】，任务Id：20180930142914，任务名：测试2，创建人：xingnana，创建时间：2018/09/30 14:29:40，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：强制认证，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/05 16:00:00，测试周期：3.667（天），备注：哈哈哈\n', '03');
INSERT INTO `system_log` VALUES ('180930143007542', '2018-09-30 14:30:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180930142914，模块名：拨号盘，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180930143007544', '2018-09-30 14:30:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930142914，任务名：测试2，创建人：xingnana，创建时间：0001/01/01 00:00:00，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：强制认证，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/05 16:00:00，测试周期：3.667（天），备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930143007582', '2018-09-30 14:30:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：18，父任务Id：20180930142914，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注：', '05');
INSERT INTO `system_log` VALUES ('180930143007642', '2018-09-30 14:30:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180930142914，模块名：无线网络，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180930143049949', '2018-09-30 14:30:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180930142914，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('180930143049978', '2018-09-30 14:30:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930142914，任务名：测试2，创建人：xingnana，创建时间：0001/01/01 00:00:00，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：强制认证，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/05 16:00:00，测试周期：3.667（天），备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930143049985', '2018-09-30 14:30:49', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：19，父任务Id：20180930142914，模块名：拨号盘，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '05');
INSERT INTO `system_log` VALUES ('180930143050193', '2018-09-30 14:30:50', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：20，父任务Id：20180930142914，模块名：无线网络，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注：', '05');
INSERT INTO `system_log` VALUES ('180930143115923', '2018-09-30 14:31:15', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930142914，任务名：测试2，创建人：xingnana，创建时间：0001/01/01 00:00:00，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：强制认证，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/05 16:00:00，测试周期：3.667（天），备注：哈哈哈\n', '04');
INSERT INTO `system_log` VALUES ('180930143130760', '2018-09-30 14:31:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180930142914，模块名：拨号盘，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('1809301431309777567', '2018-09-30 14:31:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【创建任务或测试任务管理】，删除了子任务记录，子任务Id：21，父任务Id：20180930142914，模块名：待机，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '05');
INSERT INTO `system_log` VALUES ('180930143845666', '2018-09-30 14:38:45', 'w-zhangchao1', 'MZKJ-PC-02740_w-zhangchao1', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：814710，问题类型：已知问题，Issue备注：U2内核还在灰度，后续通过OTA解决，子任务（测试模块）：通话设置，父任务Id：20180929162802，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180930143845773', '2018-09-30 14:38:45', 'w-zhangchao1', 'MZKJ-PC-02740_w-zhangchao1', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【个人任务】，新增了Issue记录，Issue_Id：829633，问题类型：新增问题，Issue备注：，子任务（测试模块）：通话设置，父任务Id：20180929162802，机型项目：m1882-intl', '03');
INSERT INTO `system_log` VALUES ('180930143845856', '2018-09-30 14:38:45', 'w-zhangchao1', 'MZKJ-PC-02740_w-zhangchao1', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：17，测试模块名：通话设置，是否完成：否，子任务备注：，机型项目：m1882-intl，父任务Id：20180929162802', '04');
INSERT INTO `system_log` VALUES ('180930143856666', '2018-09-30 14:38:56', 'w-zhangchao1', 'MZKJ-PC-02740_w-zhangchao1', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '修改', '窗口【个人任务】，修改了【子任务（测试模块）记录】，子任务Id：17，测试模块名：通话设置，是否完成：是，完成时间：2018/09/30 14:38:56，子任务备注：，机型项目：m1882-intl，父任务Id：20180929162802', '04');
INSERT INTO `system_log` VALUES ('180930161922976', '2018-09-30 16:19:22', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【角色设置】，新增了角色记录，角色编号为：04，角色名称：外包', '03');
INSERT INTO `system_log` VALUES ('180930162155922', '2018-09-30 16:21:55', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '删除', '窗口【角色设置】，删除了角色记录，角色编号为：04，角色名称：外包', '05');
INSERT INTO `system_log` VALUES ('180930170430646', '2018-09-30 17:04:30', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.53', '0A:00:27:00:00:0E', '新增', '窗口【角色设置】，新增了角色记录，角色编号为：04，角色名称：外包', '03');
INSERT INTO `system_log` VALUES ('181008145834270', '2018-10-08 14:58:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：测试4，创建人：xingnana，创建时间：2018/09/30 12:00:24，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：SDV，测试机型类型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008145834305', '2018-10-08 14:58:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180930115955，模块名：联系人，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('181008145920388', '2018-10-08 14:59:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：1822测试任务SIT，创建人：xingnana，创建时间：2018/09/30 12:00:24，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：SIT，测试机型类型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008145924291', '2018-10-08 14:59:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：1822测试任务SIT，创建人：xingnana，创建时间：2018/09/30 12:00:24，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：SIT，测试机型类型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008153708679', '2018-10-08 15:37:08', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，创建人：xingnana，创建时间：2018/09/29 16:29:47，是否完成：1,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1882-intl，项目阶段：MPT，测试机型类型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable   特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；\n                    稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008153718412', '2018-10-08 15:37:18', 'caijiaojiao', 'MZKJ-PC-02740_caijiaojiao', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180929162802，任务名：M1882海外版首版定版测试任务安排，创建人：xingnana，创建时间：2018/09/29 16:29:47，是否完成：1,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1882-intl，项目阶段：MPT，测试机型类型：NPI，测试类型：11，测试固件：\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable   特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；稳定性不受影响，可以直接使用这个版本跑起来；，测试开始时间：2018/08/31 00:00:00,测试结束时间：2018/09/04 17:00:00，测试周期：4.708（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008160648883', '2018-10-08 16:06:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：1822测试任务SIT会话，创建人：xingnana，创建时间：2018/09/30 12:00:24，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：SIT，测试机型类型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008160911861', '2018-10-08 16:09:11', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：1822测试任务SIT，创建人：xingnana，创建时间：2018/09/30 12:00:24，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：SIT，测试机型类型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：9.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008160929287', '2018-10-08 16:09:29', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：1822测试任务SIT，创建人：xingnana，创建时间：2018/09/30 12:00:24，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：SIT，测试机型类型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/07 00:00:00,测试结束时间：2018/09/11 12:00:00，测试周期：4.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('18100816101488', '2018-10-08 16:10:14', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：1882测试2，创建人：xingnana，创建时间：2018/09/30 14:09:06，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：总结啦啦啦啦，机型项目：m1822intl，项目阶段：BringUp，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/05 12:00:00，测试周期：2.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008161028182', '2018-10-08 16:10:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：1882测试2，创建人：xingnana，创建时间：2018/09/30 14:09:06，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：总结啦啦啦啦，机型项目：m1822intl，项目阶段：BringUp，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/05 12:00:00，测试周期：2.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008161028185', '2018-10-08 16:10:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180930140838，模块名：拨号盘，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('181008161028316', '2018-10-08 16:10:28', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务或测试任务管理】，新增了子任务记录，子任务Id：，父任务Id：20180930140838，模块名：无线网络，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注：', '03');
INSERT INTO `system_log` VALUES ('181008164413424', '2018-10-08 16:44:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：1822测试2，创建人：xingnana，创建时间：2018/09/30 14:09:06，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：总结啦啦啦啦，机型项目：m1822intl，项目阶段：BringUp，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/03 00:00:00,测试结束时间：2018/09/05 12:00:00，测试周期：2.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181008174016774', '2018-10-08 17:40:16', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '删除', '窗口【测试任务管理】，删除了【测试任务记录】，任务Id：20180930142914，任务名：测试2，任务发布人：xingnana，最后修改人：xingnana，所测试机型项目：m1822intl，项目所处阶段：强制认证，是否完成：0,完成时间：0001/01/01 00:00:00，任务发布时间：2018/09/30 14:29:40，测试机型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/09/02 00:00:00,测试结束时间：2018/09/05 16:00:00，测试周期：3.667，备注：哈哈哈\n', '05');
INSERT INTO `system_log` VALUES ('181009140607951', '2018-10-09 14:06:07', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：待机，测试人员：caijiaojiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('181009140608166', '2018-10-09 14:06:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：无线网络，测试人员：laoyiling，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('181009140608241', '2018-10-09 14:06:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：通话设置，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('181009140608311', '2018-10-09 14:06:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：GPS，测试人员：dongyiqiao，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('181009140608387', '2018-10-09 14:06:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了【测试任务记录】，任务Id：20181009140436，任务名：M1872海外版LVT测试，创建人：xingnana，创建时间：2018/10/09 14:06:07，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1872-intl，项目阶段：LVT，测试机型类型：NPI，测试类型：05，测试固件：固件地址，测试开始时间：2018/10/01 00:00:00,测试结束时间：2018/10/04 18:00:00，测试周期：3.75（天），备注：\n', '03');
INSERT INTO `system_log` VALUES ('18100914060871', '2018-10-09 14:06:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：拨号盘，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('181010145508545', '2018-10-10 14:55:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：VoLTE，测试人员：linhongshen，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('181010145508685', '2018-10-10 14:55:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：通话，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('181010145508739', '2018-10-10 14:55:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：通讯录，测试人员：niming，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('181010145508814', '2018-10-10 14:55:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了子任务记录，模块名：设置，测试人员：gaoguofang，测试要求：P1,P2,P3,P4，备注:', '03');
INSERT INTO `system_log` VALUES ('181010145508890', '2018-10-10 14:55:08', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '新增', '窗口【创建任务】，新增了【测试任务记录】，任务Id：20181010145252，任务名：PA项目海外公开版验收测试任务安排，创建人：xingnana，创建时间：2018/10/10 14:55:08，是否完成：1,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1818，项目阶段：LVT，测试机型类型：NPI，测试类型：12，测试固件：<\\\\logfs\\Testlog\\Overseas-test-log\\1818\\固件\\>公开版\\20181006211409_intl_prd_stable，测试开始时间：2018/10/08 00:00:00,测试结束时间：2018/10/10 17:00:00，测试周期：2.708（天），备注：项目信息：<\\\\172.16.1.98\\软件测试\\>测试固件\\手机固件测试\\Android 原生\\PA项目\\测试文档\\项目资料\n测试用例地址：<\\\\172.16.1.98\\软件测试\\>测试固件\\手机固件测试\\Android 原生\\PA项目\\测试文档\\测试用例\\公开版\n      外包童鞋请访问这个地址：<\\\\logfs\\Testlog\\Overseas-test-log\\1818\\公开版用例>\n', '03');
INSERT INTO `system_log` VALUES ('181010161948751', '2018-10-10 16:19:48', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：1822测试2，创建人：xingnana，创建时间：2018/09/30 14:09:06，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：总结啦啦啦啦，机型项目：m1822intl，项目阶段：BringUp，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/10/16 00:00:00,测试结束时间：2018/10/18 12:00:00，测试周期：2.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181010163419266', '2018-10-10 16:34:19', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20181009140436，任务名：M1872海外版LVT测试，创建人：xingnana，创建时间：2018/10/09 14:06:07，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1872-intl，项目阶段：LVT，测试机型类型：NPI，测试类型：05，测试固件：固件地址，测试开始时间：2018/10/15 00:00:00,测试结束时间：2018/10/18 18:00:00，测试周期：3.75（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('18101016344457', '2018-10-10 16:34:44', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：1822测试任务SIT，创建人：xingnana，创建时间：2018/09/30 12:00:24，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：SIT，测试机型类型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/09/17 00:00:00,测试结束时间：2018/09/20 12:00:00，测试周期：3.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181010163520558', '2018-10-10 16:35:20', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930115955，任务名：1822测试任务SIT，创建人：xingnana，创建时间：2018/09/30 12:00:24，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1822intl，项目阶段：SIT，测试机型类型：NPI，测试类型：03，测试固件：哈哈哈，测试开始时间：2018/10/16 00:00:00,测试结束时间：2018/10/20 12:00:00，测试周期：4.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181010163613415', '2018-10-10 16:36:13', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：1822测试2，创建人：xingnana，创建时间：2018/09/30 14:09:06，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：总结啦啦啦啦，机型项目：m1822intl，项目阶段：BringUp，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/10/13 00:00:00,测试结束时间：2018/10/15 12:00:00，测试周期：2.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181010163653250', '2018-10-10 16:36:53', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20181009140436，任务名：M1872海外版LVT测试，创建人：xingnana，创建时间：2018/10/09 14:06:07，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：，机型项目：m1872-intl，项目阶段：LVT，测试机型类型：NPI，测试类型：05，测试固件：固件地址，测试开始时间：2018/10/19 00:00:00,测试结束时间：2018/10/23 18:00:00，测试周期：4.75（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181010163934515', '2018-10-10 16:39:34', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：1822测试2，创建人：xingnana，创建时间：2018/09/30 14:09:06，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：总结啦啦啦啦，机型项目：m1822intl，项目阶段：BringUp，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/10/13 00:00:00,测试结束时间：2018/10/15 12:00:00，测试周期：2.5（天），备注：\n', '04');
INSERT INTO `system_log` VALUES ('181010164024670', '2018-10-10 16:40:24', 'xingnana', 'MZKJ-PC-02740_xingnana', 'MZKJ-PC-02740', '172.16.156.64', '0A:00:27:00:00:0E', '修改', '窗口【创建任务或测试任务管理】，修改了【测试任务记录】，任务Id：20180930140838，任务名：1822测试2，创建人：xingnana，创建时间：2018/09/30 14:09:06，是否完成：0,完成时间：0001/01/01 00:00:00,测试总结：总结啦啦啦啦，机型项目：m1822intl，项目阶段：BringUp，测试机型类型：NPI，测试类型：04，测试固件：哈哈哈，测试开始时间：2018/10/12 00:00:00,测试结束时间：2018/10/15 12:00:00，测试周期：3.5（天），备注：\n', '04');

-- ----------------------------
-- Table structure for system_log_type
-- ----------------------------
DROP TABLE IF EXISTS `system_log_type`;
CREATE TABLE `system_log_type` (
  `log_type_id` varchar(10) NOT NULL,
  `log_type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_log_type
-- ----------------------------
INSERT INTO `system_log_type` VALUES ('01', '登录');
INSERT INTO `system_log_type` VALUES ('02', '注销');
INSERT INTO `system_log_type` VALUES ('03', '新增');
INSERT INTO `system_log_type` VALUES ('04', '修改');
INSERT INTO `system_log_type` VALUES ('05', '删除');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `task_id` varchar(15) NOT NULL,
  `task_name` varchar(50) DEFAULT NULL,
  `project_id` varchar(30) NOT NULL,
  `project_stage` varchar(30) NOT NULL COMMENT '项目所处阶段',
  `phone_type` varchar(20) DEFAULT NULL,
  `test_type_id` varchar(5) DEFAULT NULL COMMENT '测试类型',
  `test_firmware` varchar(5000) DEFAULT NULL COMMENT '测试固件',
  `publisher_id` varchar(30) DEFAULT NULL COMMENT '任务发布（创建）人',
  `publish_time` datetime DEFAULT NULL COMMENT '任务发布（创建）时间',
  `modifier_id` varchar(30) DEFAULT NULL COMMENT '任务修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `test_cycle` double(11,10) DEFAULT NULL COMMENT '测试周期',
  `task_status` varchar(30) DEFAULT NULL COMMENT '任务状态',
  `finished_time` datetime DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL COMMENT '总结',
  `bz` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('20180929162802', 'M1882海外版首版定版测试任务安排', 'm1882-intl', 'MPT', 'NPI', '11', '\\\\logfs\\Testlog\\Overseas-test-log\\1882\\MP\\20180830182914_intl_prd_fvcs_stable   特别说明：因产线物料9/5号没有一供摄像头模组，被迫更换二供，但二供效果需要今晚和明天合入，所以下周一需要切换一版固件顺切，重点关注下相机功能；稳定性不受影响，可以直接使用这个版本跑起来；', 'xingnana', '2018-09-29 16:29:47', 'caijiaojiao', '2018-10-08 15:37:18', '2018-08-31 00:00:00', '2018-09-04 17:00:00', '4.7080000000', '2', '0001-01-01 00:00:00', '', '');
INSERT INTO `task` VALUES ('20180930115955', '1822测试任务SIT', 'm1822intl', 'SIT', 'NPI', '03', '哈哈哈', 'xingnana', '2018-09-30 12:00:24', 'xingnana', '2018-10-10 16:35:20', '2018-10-16 00:00:00', '2018-10-20 12:00:00', '4.5000000000', '0', '0001-01-01 00:00:00', '', '');
INSERT INTO `task` VALUES ('20180930140838', '1822测试2', 'm1822intl', 'BringUp', 'NPI', '04', '哈哈哈', 'xingnana', '2018-09-30 14:09:06', 'xingnana', '2018-10-10 16:40:24', '2018-10-12 00:00:00', '2018-10-15 12:00:00', '3.5000000000', '0', '0001-01-01 00:00:00', '总结啦啦啦啦', '');
INSERT INTO `task` VALUES ('20181009140436', 'M1872海外版LVT测试', 'm1872-intl', 'LVT', 'NPI', '05', '固件地址', 'xingnana', '2018-10-09 14:06:07', 'xingnana', '2018-10-10 16:36:53', '2018-10-19 00:00:00', '2018-10-23 18:00:00', '4.7500000000', '0', '0001-01-01 00:00:00', '', '');
INSERT INTO `task` VALUES ('20181010145252', 'PA项目海外公开版验收测试任务安排', 'm1818', 'LVT', 'NPI', '12', '<\\\\logfs\\Testlog\\Overseas-test-log\\1818\\固件\\>公开版\\20181006211409_intl_prd_stable', 'xingnana', '2018-10-10 14:55:08', null, '0001-01-01 00:00:00', '2018-10-08 00:00:00', '2018-10-10 17:00:00', '2.7080000000', '1', '0001-01-01 00:00:00', '', '项目信息：<\\\\172.16.1.98\\软件测试\\>测试固件\\手机固件测试\\Android 原生\\PA项目\\测试文档\\项目资料\n测试用例地址：<\\\\172.16.1.98\\软件测试\\>测试固件\\手机固件测试\\Android 原生\\PA项目\\测试文档\\测试用例\\公开版\n      外包童鞋请访问这个地址：<\\\\logfs\\Testlog\\Overseas-test-log\\1818\\公开版用例>');

-- ----------------------------
-- Table structure for task_arrangement
-- ----------------------------
DROP TABLE IF EXISTS `task_arrangement`;
CREATE TABLE `task_arrangement` (
  `child_task_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '子任务Id',
  `task_id` varchar(15) NOT NULL,
  `project_id` varchar(30) NOT NULL,
  `module_id` varchar(5) NOT NULL COMMENT '测试模块Id',
  `tester_id` varchar(30) DEFAULT NULL COMMENT '测试人员Id(user_id)',
  `requirement` varchar(50) DEFAULT NULL COMMENT '测试点Id：P1,P2',
  `is_finished` char(1) NOT NULL COMMENT '是否完成',
  `finished_time` datetime DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`child_task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_arrangement
-- ----------------------------
INSERT INTO `task_arrangement` VALUES ('7', '20180929162802', 'm1882-intl', '0017', 'caijiaojiao', '10小时待机', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('8', '20180929162802', 'm1882-intl', '0001', 'xingnana', 'P2, P3, 点检', '1', '2018-09-29 17:57:16', '备注哈哈哈');
INSERT INTO `task_arrangement` VALUES ('9', '20180929162802', 'm1882-intl', '0002', 'laoyiling', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('10', '20180929162802', 'm1882-intl', '0003', 'xingnana', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('14', '20180930115955', 'm1822intl', '0017', 'caijiaojiao', 'P1', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('16', '20180930140838', 'm1822intl', '0017', 'caijiaojiao', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('17', '20180929162802', 'm1882-intl', '0004', 'w-zhangchao1', 'P1,P2,P3,P4', '1', '2018-09-30 14:38:56', '');
INSERT INTO `task_arrangement` VALUES ('23', '20180930115955', 'm1822intl', '0007', 'dongyiqiao', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('24', '20180930140838', 'm1822intl', '0001', 'gaoguofang', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('25', '20180930140838', 'm1822intl', '0002', 'dongyiqiao', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('26', '20181009140436', 'm1872-intl', '0017', 'caijiaojiao', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('27', '20181009140436', 'm1872-intl', '0001', 'niming', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('28', '20181009140436', 'm1872-intl', '0002', 'laoyiling', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('29', '20181009140436', 'm1872-intl', '0004', 'niming', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('30', '20181009140436', 'm1872-intl', '0008', 'dongyiqiao', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('31', '20181010145252', 'm1818', '0024', 'linhongshen', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('32', '20181010145252', 'm1818', '0025', 'gaoguofang', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('33', '20181010145252', 'm1818', '0027', 'niming', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');
INSERT INTO `task_arrangement` VALUES ('34', '20181010145252', 'm1818', '0043', 'gaoguofang', 'P1,P2,P3,P4', '0', '0001-01-01 00:00:00', '');

-- ----------------------------
-- Table structure for task_issue_list
-- ----------------------------
DROP TABLE IF EXISTS `task_issue_list`;
CREATE TABLE `task_issue_list` (
  `issue_id` varchar(6) NOT NULL,
  `child_task_id` int(10) NOT NULL COMMENT '子任务Id',
  `task_id` varchar(14) NOT NULL COMMENT '任务Id',
  `project_id` varchar(30) DEFAULT NULL COMMENT '项目Id',
  `issue_type` varchar(50) DEFAULT NULL COMMENT '问题类型',
  `bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`issue_id`,`child_task_id`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_issue_list
-- ----------------------------
INSERT INTO `task_issue_list` VALUES ('809254', '10', '20180929162802', 'm1882-intl', '未合入问题', '未合入MP');
INSERT INTO `task_issue_list` VALUES ('814710', '10', '20180929162802', 'm1882-intl', '已知问题', 'U2内核还在灰度，后续通过OTA解决');
INSERT INTO `task_issue_list` VALUES ('814710', '17', '20180929162802', 'm1882-intl', '已知问题', 'U2内核还在灰度，后续通过OTA解决');
INSERT INTO `task_issue_list` VALUES ('824500', '8', '20180929162802', 'm1882-intl', '已知问题', '');
INSERT INTO `task_issue_list` VALUES ('829067', '8', '20180929162802', 'm1882-intl', '新增问题', '');
INSERT INTO `task_issue_list` VALUES ('829522', '8', '20180929162802', 'm1882-intl', '新增问题', 'U2内核还在灰度，后续通过OTA解决');
INSERT INTO `task_issue_list` VALUES ('829633', '17', '20180929162802', 'm1882-intl', '新增问题', '');

-- ----------------------------
-- Table structure for test_module
-- ----------------------------
DROP TABLE IF EXISTS `test_module`;
CREATE TABLE `test_module` (
  `id` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `module_type_id` varchar(4) DEFAULT NULL COMMENT '模块类型Id(发布项或充电)',
  `module_type_name` varchar(30) DEFAULT NULL,
  `module_parent_id` varchar(4) DEFAULT NULL COMMENT '父模块Id',
  `module_parent_name` varchar(30) DEFAULT NULL,
  `tester_id` varchar(30) DEFAULT NULL COMMENT '默认测试人员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_module
-- ----------------------------
INSERT INTO `test_module` VALUES ('0001', '拨号盘', '001', '基本模块', '001', '项目通用', 'niming');
INSERT INTO `test_module` VALUES ('0002', '无线网络', '001', '基本模块', '001', '项目通用', 'laoyiling');
INSERT INTO `test_module` VALUES ('0003', '通话控制', '001', '基本模块', '001', '项目通用', 'niming');
INSERT INTO `test_module` VALUES ('0004', '通话设置', '001', '基本模块', '001', '项目通用', 'niming');
INSERT INTO `test_module` VALUES ('0005', '双卡和网络', '001', '基本模块', '001', '项目通用', '');
INSERT INTO `test_module` VALUES ('0006', '流媒体', '001', '基本模块', '001', '项目通用', '');
INSERT INTO `test_module` VALUES ('0007', '联系人', '001', '基本模块', '001', '项目通用', 'liuying2');
INSERT INTO `test_module` VALUES ('0008', 'GPS', '001', '基本模块', '001', '项目通用', 'dongyiqiao');
INSERT INTO `test_module` VALUES ('0009', '外部应用安装', '001', '基本模块', '001', '项目通用', 'caijiaojiao');
INSERT INTO `test_module` VALUES ('0010', '设置', '001', '基本模块', '001', '项目通用', 'gaoguofang');
INSERT INTO `test_module` VALUES ('0011', '下载管理', '001', '基本模块', '001', '项目通用', 'gaoguofang');
INSERT INTO `test_module` VALUES ('0012', '海外top应用', '001', '基本模块', '001', '项目通用', '');
INSERT INTO `test_module` VALUES ('0013', '信息', '001', '基本模块', '001', '项目通用', 'zhengxiaofang');
INSERT INTO `test_module` VALUES ('0014', '图库', '001', '基本模块', '001', '项目通用', 'wangjinxin');
INSERT INTO `test_module` VALUES ('0015', '相机', '001', '基本模块', '001', '项目通用', 'chenli');
INSERT INTO `test_module` VALUES ('0016', 'VCC应用', '001', '基本模块', '001', '项目通用', '');
INSERT INTO `test_module` VALUES ('0017', '待机', '002', '待机', '001', '项目通用', 'caijiaojiao');
INSERT INTO `test_module` VALUES ('0018', 'Monkey', '003', 'Monkey', '001', '项目通用', 'wangjinxin');
INSERT INTO `test_module` VALUES ('0019', '充电专项', '005', '充电专项', '001', '项目通用', '');
INSERT INTO `test_module` VALUES ('0020', '互刷测试', '004', '发布项', '001', '项目通用', '');
INSERT INTO `test_module` VALUES ('0021', 'OTA推送', '004', '发布项', '001', '项目通用', '');
INSERT INTO `test_module` VALUES ('0022', '下载链接', '004', '发布项', '001', '项目通用', '');
INSERT INTO `test_module` VALUES ('0023', '增量测试', '004', '发布项', '001', '项目通用', '');
INSERT INTO `test_module` VALUES ('0024', 'VoLTE', '006', 'PA_通讯', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0025', '通话', '006', 'PA_通讯', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0026', '网络制式', '006', 'PA_通讯', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0027', '通讯录', '006', 'PA_通讯', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0028', '信息', '006', 'PA_通讯', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0029', 'WLAN', '007', 'PA_无线', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0030', '蓝牙', '007', 'PA_无线', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0031', 'GPS', '007', 'PA_无线', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0032', 'WIFI display', '007', 'PA_无线', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0033', 'VPN', '007', 'PA_无线', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0034', '相机', '008', 'PA_多媒体', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0035', '录音机', '008', 'PA_多媒体', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0036', 'MTP&PTP', '008', 'PA_多媒体', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0037', 'SD卡', '008', 'PA_多媒体', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0038', 'USB HOST（OTG）', '008', 'PA_多媒体', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0039', 'USB Audio', '008', 'PA_多媒体', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0040', '有线耳机', '008', 'PA_多媒体', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0041', '多任务', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0042', '通知中心', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0043', '设置', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0044', '语言和输入法', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0045', '开关机', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0046', '桌面', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0047', '小部件', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0048', 'STK', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0049', '物理按键', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0050', 'TP', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0051', '光感', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0052', 'Sensor', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0053', '电源管理', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0054', '手电筒', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0055', '屏幕录制', '009', 'PA_系统应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0056', 'GMS', '010', 'PA_Google应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0057', '计算器', '010', 'PA_Google应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0058', '时钟', '010', 'PA_Google应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0059', '记事本', '010', 'PA_Google应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0060', '文件管理', '010', 'PA_Google应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0061', '开机向导', '010', 'PA_Google应用', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0062', '续航测试', '011', 'PA_专项测试', '002', 'PA项目', '');
INSERT INTO `test_module` VALUES ('0063', '海外需求测试', '011', 'PA_专项测试', '002', 'PA项目', '');

-- ----------------------------
-- Table structure for test_module_parent
-- ----------------------------
DROP TABLE IF EXISTS `test_module_parent`;
CREATE TABLE `test_module_parent` (
  `id` varchar(4) NOT NULL COMMENT '父模块Id',
  `name` varchar(30) DEFAULT NULL COMMENT '父模块名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_module_parent
-- ----------------------------
INSERT INTO `test_module_parent` VALUES ('001', '项目通用');
INSERT INTO `test_module_parent` VALUES ('002', 'PA项目');

-- ----------------------------
-- Table structure for test_requirement
-- ----------------------------
DROP TABLE IF EXISTS `test_requirement`;
CREATE TABLE `test_requirement` (
  `id` varchar(4) NOT NULL COMMENT '测试要求Id',
  `name` varchar(30) DEFAULT NULL COMMENT '测试要求名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_requirement
-- ----------------------------
INSERT INTO `test_requirement` VALUES ('001', 'P1');
INSERT INTO `test_requirement` VALUES ('002', 'P2');
INSERT INTO `test_requirement` VALUES ('003', 'P3');
INSERT INTO `test_requirement` VALUES ('004', 'P4');
INSERT INTO `test_requirement` VALUES ('005', '点检');
INSERT INTO `test_requirement` VALUES ('006', '10小时待机');
INSERT INTO `test_requirement` VALUES ('007', 'Monkey60*72H');
INSERT INTO `test_requirement` VALUES ('008', '无');

-- ----------------------------
-- Table structure for test_type
-- ----------------------------
DROP TABLE IF EXISTS `test_type`;
CREATE TABLE `test_type` (
  `id` varchar(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_type
-- ----------------------------
INSERT INTO `test_type` VALUES ('01', '\r\n需求测试');
INSERT INTO `test_type` VALUES ('02', 'SIT测试');
INSERT INTO `test_type` VALUES ('03', '媒体机测试');
INSERT INTO `test_type` VALUES ('04', 'MPT测试');
INSERT INTO `test_type` VALUES ('05', 'LVT测试');
INSERT INTO `test_type` VALUES ('06', '发布项测试');
INSERT INTO `test_type` VALUES ('07', 'OTA测试');
INSERT INTO `test_type` VALUES ('08', 'Monkey测试');
INSERT INTO `test_type` VALUES ('09', '待机测试');
INSERT INTO `test_type` VALUES ('10', '充电专项测试');
INSERT INTO `test_type` VALUES ('11', '定版测试');
INSERT INTO `test_type` VALUES ('12', '验收测试');

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `user_id` varchar(30) NOT NULL COMMENT '用户编号(user_id=account_name)',
  `account_name` varchar(30) NOT NULL COMMENT '账号名',
  `password` varchar(10) NOT NULL,
  `status` varchar(1) DEFAULT NULL COMMENT '“在线”或者“离线”',
  `is_enable` varchar(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('caijiaojiao', 'caijiaojiao', '123', '1', '1');
INSERT INTO `user_account` VALUES ('chenli', 'chenli', '123', '0', '1');
INSERT INTO `user_account` VALUES ('dongyiqiao', 'dongyiqiao', '123', '1', '1');
INSERT INTO `user_account` VALUES ('gaoguofang', 'gaoguofang', '123', '1', '1');
INSERT INTO `user_account` VALUES ('laoyiling', 'laoyiling', '123', '0', '1');
INSERT INTO `user_account` VALUES ('linhongshen', 'linhongshen', '123', '1', '1');
INSERT INTO `user_account` VALUES ('liuying2', 'liuying2', '123', '1', '1');
INSERT INTO `user_account` VALUES ('niming', 'niming', '123', '1', '1');
INSERT INTO `user_account` VALUES ('w-zhangchao1', 'w-zhangchao1', '123', '1', '1');
INSERT INTO `user_account` VALUES ('wangjinxin', 'wangjinxin', '123', '1', '1');
INSERT INTO `user_account` VALUES ('xingnana', 'xingnana', '123', '0', '1');
INSERT INTO `user_account` VALUES ('yuyong', 'yuyong', '123', '0', '1');
INSERT INTO `user_account` VALUES ('zhangxiaotong1', 'zhangxiaotong1', '123', '0', '1');
INSERT INTO `user_account` VALUES ('zhenglu', 'zhenglu', '123', '1', '1');
INSERT INTO `user_account` VALUES ('zhengxiaofang', 'zhengxiaofang', '123', '1', '1');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `department_code` varchar(20) DEFAULT NULL COMMENT '部门编号',
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `dingding_number` varchar(30) DEFAULT NULL,
  `role_id` varchar(2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('caijiaojiao', '蔡娇娇', '女', '助理软件测试工程师', '01010202', '15802887885', '', '', '02');
INSERT INTO `user_info` VALUES ('chenli', '陈丽', '女', '高级测试开发工程师', '01010202', '13543017175', '', '', '02');
INSERT INTO `user_info` VALUES ('dongyiqiao', '董一俏', '男', '软件测试工程师', '01010202', '18826214834', '', '', '01');
INSERT INTO `user_info` VALUES ('gaoguofang', '高国芳', '女', '助理软件测试工程师', '01010202', '18840460627', '', '', '02');
INSERT INTO `user_info` VALUES ('laoyiling', '劳燚玲', '女', '助理软件测试工程师', '01010202', '16675648610', '', '', '02');
INSERT INTO `user_info` VALUES ('linhongshen', '林宏燊', '男', '软件测试工程师', '01010202', '13726238984', '', '', '02');
INSERT INTO `user_info` VALUES ('liuying2', '刘颖', '女', '软件测试工程师', '01010202', '13827431507', '', '', '01');
INSERT INTO `user_info` VALUES ('niming', '倪明', '女', '软件测试工程师', '01010202', '13226029309', '', '', '02');
INSERT INTO `user_info` VALUES ('w-zhangchao1', '张超', '男', '', '', '13222975603', '', '', '03');
INSERT INTO `user_info` VALUES ('wangjinxin', '王金鑫', '女', '软件测试工程师', '01010202', '13143126465', '', '', '02');
INSERT INTO `user_info` VALUES ('xingnana', '邢娜娜', '女', '测试开发工程师', '01010202', '13536566930', 'xingnana@meizu.com', '', '01');
INSERT INTO `user_info` VALUES ('yuyong', '余勇', '男', '软件测试工程师', '01010201', '13823032316', '', '', '02');
INSERT INTO `user_info` VALUES ('zhangxiaotong1', '张笑铜', '女', '助理软件测试工程师', '01010202', '18688164512', '', '', '02');
INSERT INTO `user_info` VALUES ('zhenglu', '郑璐', '女', '海外项目测试组经理', '01010202', '13128595707', '', '', '01');
INSERT INTO `user_info` VALUES ('zhengxiaofang', '郑小芳', '女', '软件测试工程师', '01010201', '13544189425', '', '', '02');
