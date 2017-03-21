/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : thorn5-training

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2015-12-09 11:28:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `STATUS1` varchar(50) DEFAULT NULL,
  `QUANTITY` double DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_search`
-- ----------------------------
DROP TABLE IF EXISTS `customer_search`;
CREATE TABLE `customer_search` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `PAGE_ID` varchar(100) NOT NULL,
  `IS_ADMIN` bit(1) NOT NULL,
  `USER_ID` bigint(20) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`,`PAGE_ID`,`USER_ID`),
  KEY `FK3A0FF1294125F14B` (`USER_ID`),
  CONSTRAINT `FK3A0FF1294125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_search
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_search_detail`
-- ----------------------------
DROP TABLE IF EXISTS `customer_search_detail`;
CREATE TABLE `customer_search_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_SEARCH_ID` bigint(20) DEFAULT NULL,
  `PROPERTY` varchar(255) NOT NULL,
  `OPERATOR` varchar(50) NOT NULL,
  `PROPERTY_CONDITION` varchar(255) DEFAULT NULL,
  `SIGN` varchar(50) DEFAULT NULL,
  `DISPLAY_VALUE` varchar(255) DEFAULT NULL,
  `DATA_TYPE` varchar(20) DEFAULT NULL,
  `LINE_NO` int(11) DEFAULT NULL,
  `STR_EXTEND1` varchar(100) DEFAULT NULL,
  `STR_EXTEND2` varchar(100) DEFAULT NULL,
  `STR_EXTEND3` varchar(100) DEFAULT NULL,
  `STR_EXTEND4` varchar(100) DEFAULT NULL,
  `STR_EXTEND5` varchar(100) DEFAULT NULL,
  `FOMATPARAM` varchar(100) DEFAULT NULL,
  `PROPERTYTITLE` varchar(100) DEFAULT NULL,
  `CONDITION2` varchar(255) DEFAULT NULL,
  `DISPLAYVALUE2` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CUSTOMER_SEARCH_ID` (`CUSTOMER_SEARCH_ID`,`LINE_NO`),
  KEY `FKDECC28274E3AA315` (`CUSTOMER_SEARCH_ID`),
  CONSTRAINT `FKDECC28274E3AA315` FOREIGN KEY (`CUSTOMER_SEARCH_ID`) REFERENCES `customer_search` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_search_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `demo1026_city`
-- ----------------------------
DROP TABLE IF EXISTS `demo1026_city`;
CREATE TABLE `demo1026_city` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `QUANTITY` double DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demo1026_city
-- ----------------------------

-- ----------------------------
-- Table structure for `demo_city`
-- ----------------------------
DROP TABLE IF EXISTS `demo_city`;
CREATE TABLE `demo_city` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `QUANTITY` double DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demo_city
-- ----------------------------

-- ----------------------------
-- Table structure for `demo_city_0908`
-- ----------------------------
DROP TABLE IF EXISTS `demo_city_0908`;
CREATE TABLE `demo_city_0908` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `QUANTITY` double DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demo_city_0908
-- ----------------------------

-- ----------------------------
-- Table structure for `enumerate`
-- ----------------------------
DROP TABLE IF EXISTS `enumerate`;
CREATE TABLE `enumerate` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ENUM_TYPE` varchar(50) NOT NULL,
  `ENUM_VALUE` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ENUM_TYPE` (`ENUM_TYPE`,`ENUM_VALUE`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enumerate
-- ----------------------------
INSERT INTO `enumerate` VALUES ('112', 'ACTIVE', '1');
INSERT INTO `enumerate` VALUES ('113', 'ACTIVE', '2');
INSERT INTO `enumerate` VALUES ('114', 'ACTIVE', '3');
INSERT INTO `enumerate` VALUES ('115', 'ACTIVE', '4');
INSERT INTO `enumerate` VALUES ('110', 'BaseStatus', 'ACTIVE');
INSERT INTO `enumerate` VALUES ('111', 'BaseStatus', 'UNACTIVE');
INSERT INTO `enumerate` VALUES ('64', 'BooleanType', 'false');
INSERT INTO `enumerate` VALUES ('63', 'BooleanType', 'true');
INSERT INTO `enumerate` VALUES ('119', 'CityStatus', 'ACTIVE');
INSERT INTO `enumerate` VALUES ('120', 'CityStatus', 'UNACTIVE');
INSERT INTO `enumerate` VALUES ('121', 'CityStatus', 'WAIT_APPROVAL');
INSERT INTO `enumerate` VALUES ('30', 'Control', 'booleanList');
INSERT INTO `enumerate` VALUES ('27', 'Control', 'checkBox');
INSERT INTO `enumerate` VALUES ('24', 'Control', 'date');
INSERT INTO `enumerate` VALUES ('28', 'Control', 'dateRanger');
INSERT INTO `enumerate` VALUES ('23', 'Control', 'list');
INSERT INTO `enumerate` VALUES ('26', 'Control', 'multiRemote');
INSERT INTO `enumerate` VALUES ('25', 'Control', 'numberText');
INSERT INTO `enumerate` VALUES ('22', 'Control', 'remote');
INSERT INTO `enumerate` VALUES ('21', 'Control', 'text');
INSERT INTO `enumerate` VALUES ('29', 'Control', 'textArea');
INSERT INTO `enumerate` VALUES ('15', 'FileGrammarType', 'HQL');
INSERT INTO `enumerate` VALUES ('16', 'FileGrammarType', 'SQL');
INSERT INTO `enumerate` VALUES ('17', 'FileStyle', 'picture');
INSERT INTO `enumerate` VALUES ('18', 'FileStyle', 'pictureText');
INSERT INTO `enumerate` VALUES ('20', 'FileStyle', 'sql');
INSERT INTO `enumerate` VALUES ('19', 'FileStyle', 'text');
INSERT INTO `enumerate` VALUES ('13', 'FileType', 'REPORT');
INSERT INTO `enumerate` VALUES ('14', 'FileType', 'SQL');
INSERT INTO `enumerate` VALUES ('12', 'FixedFee', 'DAY');
INSERT INTO `enumerate` VALUES ('11', 'FixedFee', 'MONTH');
INSERT INTO `enumerate` VALUES ('10', 'GlobalParamType', 'P_BEAN');
INSERT INTO `enumerate` VALUES ('9', 'GlobalParamType', 'P_BOOLEAN');
INSERT INTO `enumerate` VALUES ('5', 'GlobalParamType', 'P_CHAR');
INSERT INTO `enumerate` VALUES ('7', 'GlobalParamType', 'P_DOUBLE');
INSERT INTO `enumerate` VALUES ('8', 'GlobalParamType', 'P_INT');
INSERT INTO `enumerate` VALUES ('6', 'GlobalParamType', 'P_STRING');
INSERT INTO `enumerate` VALUES ('47', 'HQL', 'boolean');
INSERT INTO `enumerate` VALUES ('48', 'HQL', 'char');
INSERT INTO `enumerate` VALUES ('45', 'HQL', 'double');
INSERT INTO `enumerate` VALUES ('44', 'HQL', 'int');
INSERT INTO `enumerate` VALUES ('46', 'HQL', 'String');
INSERT INTO `enumerate` VALUES ('1', 'LocalType', 'en');
INSERT INTO `enumerate` VALUES ('2', 'LocalType', 'zh');
INSERT INTO `enumerate` VALUES ('3', 'ModelType', 'origen');
INSERT INTO `enumerate` VALUES ('62', 'OperatorType', 'BETWEEN');
INSERT INTO `enumerate` VALUES ('59', 'OperatorType', 'BOTH');
INSERT INTO `enumerate` VALUES ('49', 'OperatorType', 'EQ');
INSERT INTO `enumerate` VALUES ('52', 'OperatorType', 'GE');
INSERT INTO `enumerate` VALUES ('51', 'OperatorType', 'GT');
INSERT INTO `enumerate` VALUES ('57', 'OperatorType', 'IN');
INSERT INTO `enumerate` VALUES ('56', 'OperatorType', 'IS_NOT_NULL');
INSERT INTO `enumerate` VALUES ('55', 'OperatorType', 'IS_NULL');
INSERT INTO `enumerate` VALUES ('54', 'OperatorType', 'LE');
INSERT INTO `enumerate` VALUES ('60', 'OperatorType', 'LEFT');
INSERT INTO `enumerate` VALUES ('53', 'OperatorType', 'LT');
INSERT INTO `enumerate` VALUES ('50', 'OperatorType', 'NOT');
INSERT INTO `enumerate` VALUES ('58', 'OperatorType', 'NOT_IN');
INSERT INTO `enumerate` VALUES ('61', 'OperatorType', 'RIGHT');
INSERT INTO `enumerate` VALUES ('39', 'ParameterType', 'binary');
INSERT INTO `enumerate` VALUES ('34', 'ParameterType', 'boolean');
INSERT INTO `enumerate` VALUES ('35', 'ParameterType', 'char');
INSERT INTO `enumerate` VALUES ('38', 'ParameterType', 'date');
INSERT INTO `enumerate` VALUES ('32', 'ParameterType', 'double');
INSERT INTO `enumerate` VALUES ('31', 'ParameterType', 'int');
INSERT INTO `enumerate` VALUES ('37', 'ParameterType', 'integer');
INSERT INTO `enumerate` VALUES ('33', 'ParameterType', 'string');
INSERT INTO `enumerate` VALUES ('36', 'ParameterType', 'varchar');
INSERT INTO `enumerate` VALUES ('74', 'ReferenceType', 'boolean');
INSERT INTO `enumerate` VALUES ('75', 'ReferenceType', 'list');
INSERT INTO `enumerate` VALUES ('73', 'ReferenceType', 'string');
INSERT INTO `enumerate` VALUES ('69', 'RuleStatus', 'OFF_LINE');
INSERT INTO `enumerate` VALUES ('68', 'RuleStatus', 'ON_LINE');
INSERT INTO `enumerate` VALUES ('66', 'RuleTableItem', '2_REFERENCE');
INSERT INTO `enumerate` VALUES ('67', 'RuleTableItem', '4_VALUE');
INSERT INTO `enumerate` VALUES ('72', 'RuleTableVersionStatus', 'MODIFY');
INSERT INTO `enumerate` VALUES ('70', 'RuleTableVersionStatus', 'ON_LINE');
INSERT INTO `enumerate` VALUES ('71', 'RuleTableVersionStatus', 'UNACTIVE');
INSERT INTO `enumerate` VALUES ('40', 'SQL', 'binary');
INSERT INTO `enumerate` VALUES ('41', 'SQL', 'date');
INSERT INTO `enumerate` VALUES ('42', 'SQL', 'integer');
INSERT INTO `enumerate` VALUES ('43', 'SQL', 'varchar');
INSERT INTO `enumerate` VALUES ('123', 'ThornApproveProcessStatus', 'CLOSE');
INSERT INTO `enumerate` VALUES ('122', 'ThornApproveProcessStatus', 'OPEN');
INSERT INTO `enumerate` VALUES ('125', 'ThornApproveProcessType', 'AGREE');
INSERT INTO `enumerate` VALUES ('126', 'ThornApproveProcessType', 'REFUSE');
INSERT INTO `enumerate` VALUES ('124', 'ThornApproveProcessType', 'SUBMIT_APPROVE');
INSERT INTO `enumerate` VALUES ('133', 'TmsAspectType', 'CROSS');
INSERT INTO `enumerate` VALUES ('130', 'TmsAspectType', 'IN');
INSERT INTO `enumerate` VALUES ('131', 'TmsAspectType', 'OUT');
INSERT INTO `enumerate` VALUES ('132', 'TmsAspectType', 'STRAIGHT');
INSERT INTO `enumerate` VALUES ('129', 'TmsCityLevel', 'COUNTY');
INSERT INTO `enumerate` VALUES ('128', 'TmsCityLevel', 'PREFECTURE');
INSERT INTO `enumerate` VALUES ('127', 'TmsCityLevel', 'PROVINCIAL');
INSERT INTO `enumerate` VALUES ('147', 'TmsLoadingMethod', 'BULKLOAD');
INSERT INTO `enumerate` VALUES ('141', 'TmsLoadingMethod', 'CHARTEREDVEHICLE');
INSERT INTO `enumerate` VALUES ('144', 'TmsLoadingMethod', 'CONTAINER');
INSERT INTO `enumerate` VALUES ('143', 'TmsLoadingMethod', 'EXPRESS');
INSERT INTO `enumerate` VALUES ('139', 'TmsLoadingMethod', 'FTL');
INSERT INTO `enumerate` VALUES ('140', 'TmsLoadingMethod', 'LTL');
INSERT INTO `enumerate` VALUES ('145', 'TmsLoadingMethod', 'NORMAL');
INSERT INTO `enumerate` VALUES ('142', 'TmsLoadingMethod', 'PASSENGERTRAIN');
INSERT INTO `enumerate` VALUES ('146', 'TmsLoadingMethod', 'PORTABLE');
INSERT INTO `enumerate` VALUES ('134', 'TmsShipmentMethod', 'AIR');
INSERT INTO `enumerate` VALUES ('138', 'TmsShipmentMethod', 'EXPRESS');
INSERT INTO `enumerate` VALUES ('136', 'TmsShipmentMethod', 'RAILWAY');
INSERT INTO `enumerate` VALUES ('135', 'TmsShipmentMethod', 'SEA');
INSERT INTO `enumerate` VALUES ('137', 'TmsShipmentMethod', 'TRUCK');
INSERT INTO `enumerate` VALUES ('149', 'TmsUomType', 'CUBE');
INSERT INTO `enumerate` VALUES ('150', 'TmsUomType', 'KG');
INSERT INTO `enumerate` VALUES ('148', 'TmsUomType', 'PIECE');
INSERT INTO `enumerate` VALUES ('116', 'UNACTIVE', 'A');
INSERT INTO `enumerate` VALUES ('117', 'UNACTIVE', 'B');
INSERT INTO `enumerate` VALUES ('118', 'UNACTIVE', 'C');

-- ----------------------------
-- Table structure for `exception_log`
-- ----------------------------
DROP TABLE IF EXISTS `exception_log`;
CREATE TABLE `exception_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `OPER_USERID` bigint(20) DEFAULT NULL,
  `OPER_USERNAME` varchar(255) DEFAULT NULL,
  `OPER_PAGEID` varchar(255) DEFAULT NULL,
  `OPER_PAGE_NAME` varchar(255) DEFAULT NULL,
  `OPER_COMPONENTID` varchar(255) DEFAULT NULL,
  `OPER_COMPONENT_NAME` varchar(255) DEFAULT NULL,
  `OPER_DATE` datetime DEFAULT NULL,
  `OPER_EXCEPTION` text,
  `OPER_EXCEPTION_MESS` text,
  `TYPE` varchar(150) DEFAULT NULL,
  `STR_EXTEND1` varchar(255) DEFAULT NULL,
  `STR_EXTEND2` varchar(255) DEFAULT NULL,
  `STR_EXTEND3` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exception_log
-- ----------------------------
INSERT INTO `exception_log` VALUES ('1', '1', 'admin', 'editThornBusinessModePage', '业务模型编辑', 'save', '保存', '2015-12-02 11:49:22', null, '2\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 11:49:22', '1', 'admin', '2015-12-02 11:49:22');
INSERT INTO `exception_log` VALUES ('2', '1', 'admin', 'editBaseOrganizationProcessPage', '组织编辑', 'save', '保存', '2015-12-02 11:49:51', null, '2\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 11:49:51', '1', 'admin', '2015-12-02 11:49:51');
INSERT INTO `exception_log` VALUES ('3', '1', 'admin', 'editTmsZonePage', '区域维护', 'new', '新建', '2015-12-02 12:00:13', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:00:13', '1', 'admin', '2015-12-02 12:00:13');
INSERT INTO `exception_log` VALUES ('4', '1', 'admin', 'modifyTmsProvincePage', '省份信息维护', 'new', '新建', '2015-12-02 12:00:27', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:00:27', '1', 'admin', '2015-12-02 12:00:27');
INSERT INTO `exception_log` VALUES ('5', '1', 'admin', 'editTmsCityPage', '城市维护', 'new', '新建', '2015-12-02 12:01:33', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:01:33', '1', 'admin', '2015-12-02 12:01:33');
INSERT INTO `exception_log` VALUES ('6', '1', 'admin', 'editTmsTransLocationTypePage', '运输地类型维护', 'new', '新建', '2015-12-02 12:01:53', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:01:53', '1', 'admin', '2015-12-02 12:01:53');
INSERT INTO `exception_log` VALUES ('7', '1', 'admin', 'editTmsTransLocationTypePage', '运输地类型维护', 'new', '新建', '2015-12-02 12:02:04', null, '2\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:02:04', '1', 'admin', '2015-12-02 12:02:04');
INSERT INTO `exception_log` VALUES ('8', '1', 'admin', 'editTmsTransLocationTypePage', '运输地类型维护', 'new', '新建', '2015-12-02 12:02:23', null, '3\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:02:23', '1', 'admin', '2015-12-02 12:02:23');
INSERT INTO `exception_log` VALUES ('9', '1', 'admin', 'maintainTmsTransLocationTypePage', '运输地类型管理', 'unActive', '失效', '2015-12-02 12:53:49', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:53:49', '1', 'admin', '2015-12-02 12:53:49');
INSERT INTO `exception_log` VALUES ('10', '1', 'admin', 'maintainTmsTransLocationTypePage', '运输地类型管理', 'unActive', '失效', '2015-12-02 12:53:51', null, '2\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:53:51', '1', 'admin', '2015-12-02 12:53:51');
INSERT INTO `exception_log` VALUES ('11', '1', 'admin', 'editTmsTransLocationPage', '运输地信息维护', 'new', '新建', '2015-12-02 12:54:19', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:54:19', '1', 'admin', '2015-12-02 12:54:19');
INSERT INTO `exception_log` VALUES ('12', '1', 'admin', 'editTmsTransLocationPage', '运输地信息维护', 'new', '新建', '2015-12-02 12:54:38', null, '2\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:54:38', '1', 'admin', '2015-12-02 12:54:38');
INSERT INTO `exception_log` VALUES ('13', '1', 'admin', 'editTmsTransLocationPage', '运输地信息维护', 'new', '新建', '2015-12-02 12:54:51', null, '3\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:54:51', '1', 'admin', '2015-12-02 12:54:51');
INSERT INTO `exception_log` VALUES ('14', '1', 'admin', 'editTmsOrganizationPage', '组织编辑', 'new', '新建', '2015-12-02 12:55:21', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:55:21', '1', 'admin', '2015-12-02 12:55:21');
INSERT INTO `exception_log` VALUES ('15', '1', 'admin', 'editTmsOrganizationPage', '组织编辑', 'edit', '修改', '2015-12-02 12:55:44', '请选择所属区域！', '请选择所属区域！', '错误', null, null, null, '1', 'admin', '2015-12-02 12:55:44', '1', 'admin', '2015-12-02 12:55:44');
INSERT INTO `exception_log` VALUES ('16', '1', 'admin', 'editTmsOrganizationPage', '组织编辑', 'new', '新建', '2015-12-02 12:57:02', null, '2\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:57:02', '1', 'admin', '2015-12-02 12:57:02');
INSERT INTO `exception_log` VALUES ('17', '1', 'admin', 'maintainTmsOrganizationDetailPage', '添加', 'add', '添加', '2015-12-02 12:57:12', null, '2\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:57:12', '1', 'admin', '2015-12-02 12:57:12');
INSERT INTO `exception_log` VALUES ('18', '1', 'admin', 'editTmsReceiverPage', '收发货方维护', 'new', '新建', '2015-12-02 12:57:51', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:57:51', '1', 'admin', '2015-12-02 12:57:51');
INSERT INTO `exception_log` VALUES ('19', '1', 'admin', 'editTmsReceiverPage', '收发货方维护', 'new', '新建', '2015-12-02 12:58:27', null, '2\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:58:27', '1', 'admin', '2015-12-02 12:58:27');
INSERT INTO `exception_log` VALUES ('20', '1', 'admin', 'editTmsOrderTypePage', '服务产品类型维护', 'new', '新建', '2015-12-02 12:58:58', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:58:58', '1', 'admin', '2015-12-02 12:58:58');
INSERT INTO `exception_log` VALUES ('21', '1', 'admin', 'editTmsProductTypePage', '货品信息类型', 'new', '新建', '2015-12-02 12:59:19', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:59:19', '1', 'admin', '2015-12-02 12:59:19');
INSERT INTO `exception_log` VALUES ('22', '1', 'admin', 'editTmsProductPage', 'editTmsProductPage', 'new', '新建', '2015-12-02 12:59:48', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 12:59:48', '1', 'admin', '2015-12-02 12:59:48');
INSERT INTO `exception_log` VALUES ('23', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 13:00:21', 'com.vtradex.thorn.server.exception.BusinessException: directoryName.not.find', '当前访问目录未找到!', '错误', null, null, null, '1', 'admin', '2015-12-02 13:00:21', '1', 'admin', '2015-12-02 13:00:21');
INSERT INTO `exception_log` VALUES ('24', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 13:00:27', 'com.vtradex.thorn.server.exception.BusinessException: directoryName.not.find', '当前访问目录未找到!', '错误', null, null, null, '1', 'admin', '2015-12-02 13:00:27', '1', 'admin', '2015-12-02 13:00:27');
INSERT INTO `exception_log` VALUES ('25', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 13:00:28', 'com.vtradex.thorn.server.exception.BusinessException: directoryName.not.find', '当前访问目录未找到!', '错误', null, null, null, '1', 'admin', '2015-12-02 13:00:28', '1', 'admin', '2015-12-02 13:00:28');
INSERT INTO `exception_log` VALUES ('26', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 13:00:29', 'com.vtradex.thorn.server.exception.BusinessException: directoryName.not.find', '当前访问目录未找到!', '错误', null, null, null, '1', 'admin', '2015-12-02 13:00:29', '1', 'admin', '2015-12-02 13:00:29');
INSERT INTO `exception_log` VALUES ('27', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 13:00:30', 'com.vtradex.thorn.server.exception.BusinessException: directoryName.not.find', '当前访问目录未找到!', '错误', null, null, null, '1', 'admin', '2015-12-02 13:00:30', '1', 'admin', '2015-12-02 13:00:30');
INSERT INTO `exception_log` VALUES ('28', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 13:05:11', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:05:11', '1', 'admin', '2015-12-02 13:05:11');
INSERT INTO `exception_log` VALUES ('29', '1', 'admin', 'editThornRolesCopyPage', '角色复制', 'save', '保存', '2015-12-02 13:05:56', null, '', '日志', null, null, null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `exception_log` VALUES ('30', '1', 'admin', 'modifyOrderPage', '订单编辑', 'edit', '修改', '2015-12-02 13:07:09', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:07:09', '1', 'admin', '2015-12-02 13:07:09');
INSERT INTO `exception_log` VALUES ('31', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderCheck', '复核', '2015-12-02 13:07:23', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:07:23', '1', 'admin', '2015-12-02 13:07:23');
INSERT INTO `exception_log` VALUES ('32', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-02 13:07:25', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:07:25', '1', 'admin', '2015-12-02 13:07:25');
INSERT INTO `exception_log` VALUES ('33', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-02 13:07:41', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:07:41', '1', 'admin', '2015-12-02 13:07:41');
INSERT INTO `exception_log` VALUES ('34', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderUncheck', '取消复核', '2015-12-02 13:07:46', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:07:46', '1', 'admin', '2015-12-02 13:07:46');
INSERT INTO `exception_log` VALUES ('35', '1', 'admin', 'editOrderDetailPage', '添加明细', 'addDetail', 'addDetail', '2015-12-02 13:12:21', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:12:21', '1', 'admin', '2015-12-02 13:12:21');
INSERT INTO `exception_log` VALUES ('36', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderCheck', '复核', '2015-12-02 13:12:26', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:12:26', '1', 'admin', '2015-12-02 13:12:26');
INSERT INTO `exception_log` VALUES ('37', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-02 13:12:28', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:12:28', '1', 'admin', '2015-12-02 13:12:28');
INSERT INTO `exception_log` VALUES ('38', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-02 13:13:03', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:13:03', '1', 'admin', '2015-12-02 13:13:03');
INSERT INTO `exception_log` VALUES ('39', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-02 13:13:15', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:13:15', '1', 'admin', '2015-12-02 13:13:15');
INSERT INTO `exception_log` VALUES ('40', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-02 13:19:30', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:19:30', '1', 'admin', '2015-12-02 13:19:30');
INSERT INTO `exception_log` VALUES ('41', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-02 13:19:42', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:19:42', '1', 'admin', '2015-12-02 13:19:42');
INSERT INTO `exception_log` VALUES ('42', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-02 13:19:57', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:19:57', '1', 'admin', '2015-12-02 13:19:57');
INSERT INTO `exception_log` VALUES ('43', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-02 13:21:28', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:21:28', '1', 'admin', '2015-12-02 13:21:28');
INSERT INTO `exception_log` VALUES ('44', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-02 13:21:33', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:21:33', '1', 'admin', '2015-12-02 13:21:33');
INSERT INTO `exception_log` VALUES ('45', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-02 13:21:42', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:21:42', '1', 'admin', '2015-12-02 13:21:42');
INSERT INTO `exception_log` VALUES ('46', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-02 13:45:47', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:45:47', '1', 'admin', '2015-12-02 13:45:47');
INSERT INTO `exception_log` VALUES ('47', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderUncheck', '取消复核', '2015-12-02 13:45:50', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:45:50', '1', 'admin', '2015-12-02 13:45:50');
INSERT INTO `exception_log` VALUES ('48', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderCheck', '复核', '2015-12-02 13:46:06', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:46:06', '1', 'admin', '2015-12-02 13:46:06');
INSERT INTO `exception_log` VALUES ('49', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-02 13:46:16', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:46:16', '1', 'admin', '2015-12-02 13:46:16');
INSERT INTO `exception_log` VALUES ('50', '1', 'admin', 'editTmsTransLocationPage', '运输地信息维护', 'new', '新建', '2015-12-02 13:48:28', null, '4\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:48:28', '1', 'admin', '2015-12-02 13:48:28');
INSERT INTO `exception_log` VALUES ('51', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-02 13:48:36', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:48:36', '1', 'admin', '2015-12-02 13:48:36');
INSERT INTO `exception_log` VALUES ('52', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-02 13:48:40', null, '1\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 13:48:40', '1', 'admin', '2015-12-02 13:48:40');
INSERT INTO `exception_log` VALUES ('53', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 14:02:24', null, '2\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 14:02:24', '1', 'admin', '2015-12-02 14:02:24');
INSERT INTO `exception_log` VALUES ('54', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 14:05:25', null, '3\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 14:05:25', '1', 'admin', '2015-12-02 14:05:25');
INSERT INTO `exception_log` VALUES ('55', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 14:12:26', 'java.lang.NoClassDefFoundError cannot be cast to java.lang.Exception', '系统内部错误', '错误', null, null, null, '1', 'admin', '2015-12-02 14:12:26', '1', 'admin', '2015-12-02 14:12:26');
INSERT INTO `exception_log` VALUES ('56', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 14:16:38', 'java.lang.NoClassDefFoundError cannot be cast to java.lang.Exception', '系统内部错误', '错误', null, null, null, '1', 'admin', '2015-12-02 14:16:38', '1', 'admin', '2015-12-02 14:16:38');
INSERT INTO `exception_log` VALUES ('57', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 14:17:13', 'java.lang.NoClassDefFoundError cannot be cast to java.lang.Exception', '系统内部错误', '错误', null, null, null, '1', 'admin', '2015-12-02 14:17:13', '1', 'admin', '2015-12-02 14:17:13');
INSERT INTO `exception_log` VALUES ('58', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 14:23:19', null, '4\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 14:23:19', '1', 'admin', '2015-12-02 14:23:19');
INSERT INTO `exception_log` VALUES ('59', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 14:25:53', null, '5\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 14:25:53', '1', 'admin', '2015-12-02 14:25:53');
INSERT INTO `exception_log` VALUES ('60', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 14:30:19', 'java.lang.Error cannot be cast to java.lang.Exception', '系统内部错误', '错误', null, null, null, '1', 'admin', '2015-12-02 14:30:19', '1', 'admin', '2015-12-02 14:30:19');
INSERT INTO `exception_log` VALUES ('61', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 15:18:36', null, '6\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 15:18:36', '1', 'admin', '2015-12-02 15:18:36');
INSERT INTO `exception_log` VALUES ('62', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 15:24:38', null, '7\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 15:24:38', '1', 'admin', '2015-12-02 15:24:38');
INSERT INTO `exception_log` VALUES ('63', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 17:34:10', null, '8\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 17:34:10', '1', 'admin', '2015-12-02 17:34:10');
INSERT INTO `exception_log` VALUES ('64', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-02 17:38:26', null, '9\r\n', '日志', null, null, null, '1', 'admin', '2015-12-02 17:38:26', '1', 'admin', '2015-12-02 17:38:26');
INSERT INTO `exception_log` VALUES ('65', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 09:54:39', 'org.hibernate.LazyInitializationException: could not initialize proxy - the owning Session was closed', null, '错误', null, null, null, '1', 'admin', '2015-12-03 09:54:39', '1', 'admin', '2015-12-03 09:54:39');
INSERT INTO `exception_log` VALUES ('66', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 09:57:30', 'org.hibernate.LazyInitializationException: could not initialize proxy - the owning Session was closed', null, '错误', null, null, null, '1', 'admin', '2015-12-03 09:57:30', '1', 'admin', '2015-12-03 09:57:30');
INSERT INTO `exception_log` VALUES ('67', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 09:59:41', 'org.hibernate.LazyInitializationException: could not initialize proxy - the owning Session was closed', null, '错误', null, null, null, '1', 'admin', '2015-12-03 09:59:41', '1', 'admin', '2015-12-03 09:59:41');
INSERT INTO `exception_log` VALUES ('68', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 10:04:30', 'org.hibernate.LazyInitializationException: could not initialize proxy - the owning Session was closed', null, '错误', null, null, null, '1', 'admin', '2015-12-03 10:04:30', '1', 'admin', '2015-12-03 10:04:30');
INSERT INTO `exception_log` VALUES ('69', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 10:07:29', null, '14\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 10:07:29', '1', 'admin', '2015-12-03 10:07:29');
INSERT INTO `exception_log` VALUES ('70', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 10:10:09', null, '15\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 10:10:09', '1', 'admin', '2015-12-03 10:10:09');
INSERT INTO `exception_log` VALUES ('71', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 10:11:20', 'unique.key.constraint', '当前数据已存在,请检查修改后在提交!', '错误', null, null, null, '1', 'admin', '2015-12-03 10:11:20', '1', 'admin', '2015-12-03 10:11:20');
INSERT INTO `exception_log` VALUES ('72', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 10:12:03', null, '16\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 10:12:03', '1', 'admin', '2015-12-03 10:12:03');
INSERT INTO `exception_log` VALUES ('73', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 10:13:12', 'org.hibernate.LazyInitializationException: could not initialize proxy - the owning Session was closed', null, '错误', null, null, null, '1', 'admin', '2015-12-03 10:13:12', '1', 'admin', '2015-12-03 10:13:12');
INSERT INTO `exception_log` VALUES ('74', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 10:17:42', 'org.hibernate.LazyInitializationException: could not initialize proxy - the owning Session was closed', null, '错误', null, null, null, '1', 'admin', '2015-12-03 10:17:42', '1', 'admin', '2015-12-03 10:17:42');
INSERT INTO `exception_log` VALUES ('75', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderCheck', '复核', '2015-12-03 13:58:09', null, '21\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 13:58:09', '1', 'admin', '2015-12-03 13:58:09');
INSERT INTO `exception_log` VALUES ('76', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderUncheck', '取消复核', '2015-12-03 13:58:46', null, '21\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 13:58:46', '1', 'admin', '2015-12-03 13:58:46');
INSERT INTO `exception_log` VALUES ('77', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderCheck', '复核', '2015-12-03 13:58:55', null, '21\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 13:58:55', '1', 'admin', '2015-12-03 13:58:55');
INSERT INTO `exception_log` VALUES ('78', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderUncheck', '取消复核', '2015-12-03 13:59:04', null, '21\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 13:59:04', '1', 'admin', '2015-12-03 13:59:04');
INSERT INTO `exception_log` VALUES ('79', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderCheck', '复核', '2015-12-03 14:22:26', null, '32\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:22:26', '1', 'admin', '2015-12-03 14:22:26');
INSERT INTO `exception_log` VALUES ('80', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-03 14:25:24', null, '32\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:25:24', '1', 'admin', '2015-12-03 14:25:24');
INSERT INTO `exception_log` VALUES ('81', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-03 14:27:12', null, '32\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:27:12', '1', 'admin', '2015-12-03 14:27:12');
INSERT INTO `exception_log` VALUES ('82', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderUncheck', '取消复核', '2015-12-03 14:27:45', null, '32\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:27:45', '1', 'admin', '2015-12-03 14:27:45');
INSERT INTO `exception_log` VALUES ('83', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderCheck', '复核', '2015-12-03 14:27:49', null, '32\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:27:49', '1', 'admin', '2015-12-03 14:27:49');
INSERT INTO `exception_log` VALUES ('84', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderCheck', '复核', '2015-12-03 14:52:03', null, '31\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:52:03', '1', 'admin', '2015-12-03 14:52:03');
INSERT INTO `exception_log` VALUES ('85', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-03 14:52:52', null, '31\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:52:52', '1', 'admin', '2015-12-03 14:52:52');
INSERT INTO `exception_log` VALUES ('86', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-03 14:54:01', null, '31\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:54:01', '1', 'admin', '2015-12-03 14:54:01');
INSERT INTO `exception_log` VALUES ('87', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderUncheck', '取消复核', '2015-12-03 14:54:24', null, '31\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:54:24', '1', 'admin', '2015-12-03 14:54:24');
INSERT INTO `exception_log` VALUES ('88', '1', 'admin', 'maintainOrderPage', '订单管理', 'orderCheck', '复核', '2015-12-03 14:54:27', null, '31\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 14:54:27', '1', 'admin', '2015-12-03 14:54:27');
INSERT INTO `exception_log` VALUES ('89', '1', 'admin', 'modifyOrderPage', '订单编辑', 'edit', '修改', '2015-12-03 17:34:30', null, '39\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 17:34:30', '1', 'admin', '2015-12-03 17:34:30');
INSERT INTO `exception_log` VALUES ('90', '1', 'admin', 'modifyOrderPage', '订单编辑', 'edit', '修改', '2015-12-03 17:34:36', null, '39\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 17:34:36', '1', 'admin', '2015-12-03 17:34:36');
INSERT INTO `exception_log` VALUES ('91', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-03 17:35:57', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 17:35:57', '1', 'admin', '2015-12-03 17:35:57');
INSERT INTO `exception_log` VALUES ('92', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-03 17:41:25', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-03 17:41:25', '1', 'admin', '2015-12-03 17:41:25');
INSERT INTO `exception_log` VALUES ('93', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 13:48:16', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 13:48:16', '1', 'admin', '2015-12-04 13:48:16');
INSERT INTO `exception_log` VALUES ('94', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 13:50:34', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 13:50:34', '1', 'admin', '2015-12-04 13:50:34');
INSERT INTO `exception_log` VALUES ('95', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 14:48:04', 'Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4; nested exception is org.hibernate.PropertyAccessException: Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4', '数据库系统异常', '错误', null, null, null, '1', 'admin', '2015-12-04 14:48:04', '1', 'admin', '2015-12-04 14:48:04');
INSERT INTO `exception_log` VALUES ('96', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 14:48:17', 'Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4; nested exception is org.hibernate.PropertyAccessException: Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4', '数据库系统异常', '错误', null, null, null, '1', 'admin', '2015-12-04 14:48:17', '1', 'admin', '2015-12-04 14:48:17');
INSERT INTO `exception_log` VALUES ('97', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 14:49:48', 'Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4; nested exception is org.hibernate.PropertyAccessException: Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4', '数据库系统异常', '错误', null, null, null, '1', 'admin', '2015-12-04 14:49:48', '1', 'admin', '2015-12-04 14:49:48');
INSERT INTO `exception_log` VALUES ('98', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 14:50:16', 'Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4; nested exception is org.hibernate.PropertyAccessException: Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4', '数据库系统异常', '错误', null, null, null, '1', 'admin', '2015-12-04 14:50:16', '1', 'admin', '2015-12-04 14:50:16');
INSERT INTO `exception_log` VALUES ('99', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 14:52:30', 'Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4; nested exception is org.hibernate.PropertyAccessException: Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4', '数据库系统异常', '错误', null, null, null, '1', 'admin', '2015-12-04 14:52:30', '1', 'admin', '2015-12-04 14:52:30');
INSERT INTO `exception_log` VALUES ('100', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 14:53:14', 'Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4; nested exception is org.hibernate.PropertyAccessException: Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4', '数据库系统异常', '错误', null, null, null, '1', 'admin', '2015-12-04 14:53:14', '1', 'admin', '2015-12-04 14:53:14');
INSERT INTO `exception_log` VALUES ('101', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-04 14:53:40', null, '44\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 14:53:40', '1', 'admin', '2015-12-04 14:53:40');
INSERT INTO `exception_log` VALUES ('102', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-04 14:53:46', null, '44\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 14:53:46', '1', 'admin', '2015-12-04 14:53:46');
INSERT INTO `exception_log` VALUES ('103', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 15:01:10', null, '44\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 15:01:10', '1', 'admin', '2015-12-04 15:01:10');
INSERT INTO `exception_log` VALUES ('104', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-04 15:27:49', null, '44\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 15:27:49', '1', 'admin', '2015-12-04 15:27:49');
INSERT INTO `exception_log` VALUES ('105', '1', 'admin', 'modifyOrderPage', '订单编辑', 'new', '新建', '2015-12-04 15:45:38', null, '45\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 15:45:38', '1', 'admin', '2015-12-04 15:45:38');
INSERT INTO `exception_log` VALUES ('106', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-04 15:45:42', null, '45\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 15:45:42', '1', 'admin', '2015-12-04 15:45:42');
INSERT INTO `exception_log` VALUES ('107', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 15:45:49', null, '45\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 15:45:49', '1', 'admin', '2015-12-04 15:45:49');
INSERT INTO `exception_log` VALUES ('108', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 16:16:19', 'Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4; nested exception is org.hibernate.PropertyAccessException: Null value was assigned to a property of primitive type setter of com.vtradex.training.server.model.order.TmsOrder.extendField4', '数据库系统异常', '错误', null, null, null, '1', 'admin', '2015-12-04 16:16:19', '1', 'admin', '2015-12-04 16:16:19');
INSERT INTO `exception_log` VALUES ('109', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 16:19:14', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 16:19:14', '1', 'admin', '2015-12-04 16:19:14');
INSERT INTO `exception_log` VALUES ('110', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 16:27:40', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 16:27:40', '1', 'admin', '2015-12-04 16:27:40');
INSERT INTO `exception_log` VALUES ('111', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-04 16:32:28', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 16:32:28', '1', 'admin', '2015-12-04 16:32:28');
INSERT INTO `exception_log` VALUES ('112', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 16:43:01', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 16:43:01', '1', 'admin', '2015-12-04 16:43:01');
INSERT INTO `exception_log` VALUES ('113', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-04 16:43:12', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 16:43:12', '1', 'admin', '2015-12-04 16:43:12');
INSERT INTO `exception_log` VALUES ('114', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 16:43:34', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 16:43:34', '1', 'admin', '2015-12-04 16:43:34');
INSERT INTO `exception_log` VALUES ('115', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-04 16:44:28', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 16:44:28', '1', 'admin', '2015-12-04 16:44:28');
INSERT INTO `exception_log` VALUES ('116', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-04 16:44:39', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 16:44:39', '1', 'admin', '2015-12-04 16:44:39');
INSERT INTO `exception_log` VALUES ('117', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-04 16:47:43', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-04 16:47:43', '1', 'admin', '2015-12-04 16:47:43');
INSERT INTO `exception_log` VALUES ('118', '1', 'admin', 'editTmsTransLocationPage', '运输地信息维护', 'edit', '修改', '2015-12-07 12:54:29', null, '4\r\n', '日志', null, null, null, '1', 'admin', '2015-12-07 12:54:29', '1', 'admin', '2015-12-07 12:54:29');
INSERT INTO `exception_log` VALUES ('119', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-07 15:18:28', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-07 15:18:28', '1', 'admin', '2015-12-07 15:18:28');
INSERT INTO `exception_log` VALUES ('120', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-07 15:18:34', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-07 15:18:34', '1', 'admin', '2015-12-07 15:18:34');
INSERT INTO `exception_log` VALUES ('121', '1', 'admin', 'maintainOrderPage', '订单管理', 'enable', '生效', '2015-12-07 15:18:47', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-07 15:18:47', '1', 'admin', '2015-12-07 15:18:47');
INSERT INTO `exception_log` VALUES ('122', '1', 'admin', 'maintainOrderPage', '订单管理', 'disable', '失效', '2015-12-07 15:19:01', null, '40\r\n', '日志', null, null, null, '1', 'admin', '2015-12-07 15:19:01', '1', 'admin', '2015-12-07 15:19:01');

-- ----------------------------
-- Table structure for `global_params`
-- ----------------------------
DROP TABLE IF EXISTS `global_params`;
CREATE TABLE `global_params` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DISCRIMINATOR` varchar(255) NOT NULL,
  `PARAM_ID` varchar(50) NOT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `GROUP_NAME` varchar(50) DEFAULT NULL,
  `PARAM_VALUE` varchar(255) DEFAULT NULL,
  `PARAM_BEAN` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MODULE` varchar(100) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PARAM_ID` (`PARAM_ID`,`MODULE`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of global_params
-- ----------------------------
INSERT INTO `global_params` VALUES ('1', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'tempFileDir', 'P_STRING', '临时文件路径配置', 'd:/temp/tempFile', null, '上传文件存放的临时文件夹', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('2', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'imageFileDir', 'P_STRING', '临时文件路径配置', 'd:/temp/imageFile', null, '图片存放的文件夹', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('3', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'otherFileDir', 'P_STRING', '临时文件路径配置', 'd:/temp/otherFile', null, '需要永久存放的非图片文件的文件夹', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('6', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'maintainTableDecimal', 'P_INT', '页面布局设置', '6', null, '维护屏二维表格如果是小数需要保留的小数位数', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('8', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'IS_ASH', 'P_BOOLEAN', '页面布局设置', 'true', '', '右键弹出菜单不可用时变灰或不可见(true－变灰 false－不可见)', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('9', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'ACK_CLOSEWINDOW', 'P_STRING', '页面布局设置', 'ALT-X', null, '弹出窗口关闭热键', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('10', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'reportURL', 'P_STRING', '报表服务器配置', 'http://127.0.0.1:8088/training/reportJsp/showReport.jsp', '', '报表服务器URL地址', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('11', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'clientUserInfo', 'P_BEAN', '全局变量设置', '', 'userInfoInClient', '前台用户登陆时显示的用户信息（如：当前用户：admin）', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('12', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'round', 'P_BOOLEAN', '页面布局设置', 'true', null, '小数位数处理时是否四舍五入(默认四舍五入)', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('13', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'imageSource', 'P_STRING', '临时文件路径配置', 'd:/temp/image/source', null, '影像归档图片源文件夹', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('14', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'imageTarget', 'P_STRING', '临时文件路径配置', 'd:/temp/image/target', null, '影像归档图片目标文件夹', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('16', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'IMPORT_REPLACE', 'P_STRING', '全局变量设置', 'false', null, '导入业务数据时是否替换已存在业务数据(true-替换,false-不替换)', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('17', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SESSION_USERS', 'P_BEAN', '全局变量设置', '', 'userSession', '当前用户全局变量', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('18', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SAVE_SYSTEM_LOG', 'P_STRING', '全局变量设置', 'true', null, '是否开启保存操作日志', 'training', '1', 'admin', null, null, null, null);
INSERT INTO `global_params` VALUES ('19', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'APPROVE_NUMBER_PAGE', 'P_INT', '全局变量设置', '20', null, '审批页面分页数', 'training', '1', 'admin', null, null, null, null);
INSERT INTO `global_params` VALUES ('20', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'DISPLAY_PAGE_HELP', 'P_STRING', '全局变量设置', 'true', '', '是否显示查看页面路径提示', 'training', '1', 'admin', null, '7', 'test5', '2011-08-08 15:49:23');
INSERT INTO `global_params` VALUES ('21', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'EXPORT_SUPPORT', 'P_STRING', '全局变量设置', 'true', '', '标准表格页面是否支持导出,刷新', 'training', '1', 'admin', null, '2', 'test', '2012-01-09 10:57:30');
INSERT INTO `global_params` VALUES ('22', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SESSION_MODEL', 'P_BEAN', '全局变量设置', '', 'bussinessModelSession', '当前模型全局变量', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('23', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'modelInfoInClient', 'P_BEAN', '全局变量设置', '', 'modelInfoInClient', '前台用户登陆时显示的组织模型信息', 'training', null, null, null, null, null, null);
INSERT INTO `global_params` VALUES ('24', 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SESSION_BASE_ORGAN', 'P_BEAN', '全局变量设置', '', 'baseOrganizationSession', '当前模型全局变量', 'training', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `import_record`
-- ----------------------------
DROP TABLE IF EXISTS `import_record`;
CREATE TABLE `import_record` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FILE_NAME` varchar(150) NOT NULL,
  `TYPE` varchar(100) NOT NULL,
  `TOTAL_NUMBER` int(11) NOT NULL,
  `SUCCESS_NUMBER` int(11) NOT NULL,
  `FAIL_NUMBER` int(11) NOT NULL,
  `IMPORT_DATE` datetime NOT NULL,
  `STORE_FILE` varchar(150) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `CREATOR_ID` bigint(20) NOT NULL,
  `CREATOR` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_OPERATOR_ID` bigint(20) NOT NULL,
  `LAST_OPERATOR` varchar(50) NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of import_record
-- ----------------------------

-- ----------------------------
-- Table structure for `import_table_bo`
-- ----------------------------
DROP TABLE IF EXISTS `import_table_bo`;
CREATE TABLE `import_table_bo` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DISCRIMINATOR` varchar(255) NOT NULL,
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `CLASSNAME` varchar(100) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of import_table_bo
-- ----------------------------

-- ----------------------------
-- Table structure for `item_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `item_inventory`;
CREATE TABLE `item_inventory` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ITEM_CODE` varchar(100) DEFAULT NULL,
  `QUANTITY` double NOT NULL,
  `ITEM_NAME` varchar(100) DEFAULT NULL,
  `USED_QUANTITY` double NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for `item_record`
-- ----------------------------
DROP TABLE IF EXISTS `item_record`;
CREATE TABLE `item_record` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LOCATION` varchar(100) NOT NULL,
  `ITEM_CODE` varchar(100) NOT NULL,
  `DESK` varchar(100) DEFAULT NULL,
  `STATUS` varchar(100) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_record
-- ----------------------------

-- ----------------------------
-- Table structure for `location`
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESK` varchar(100) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` bigint(20) NOT NULL,
  `PRODUCT_NAME` varchar(100) NOT NULL,
  `QUANTITY` double NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK4A94AA8272C3540D` (`ORDER_ID`),
  CONSTRAINT `FK4A94AA8272C3540D` FOREIGN KEY (`ORDER_ID`) REFERENCES `order_head` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `order_head`
-- ----------------------------
DROP TABLE IF EXISTS `order_head`;
CREATE TABLE `order_head` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL,
  `FROM_PARTY` varchar(50) NOT NULL,
  `FROM_LOCATION` varchar(100) NOT NULL,
  `TO_PARTY` varchar(50) NOT NULL,
  `TO_LOCATION` varchar(100) NOT NULL,
  `SUM_QUANTITY` double NOT NULL,
  `STATUS` varchar(15) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_head
-- ----------------------------

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DISCRIMINATOR` varchar(255) NOT NULL,
  `ELEMENT_ID` varchar(255) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  `EXPRESSION` text,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKC3E688649BFB2D6B` (`ROLE_ID`),
  CONSTRAINT `FKC3E688649BFB2D6B` FOREIGN KEY (`ROLE_ID`) REFERENCES `thorn_roles` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('12285', 'page', 'thornRoleProcess.modify', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12286', 'page', 'groupProcess.bindRoles', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12287', 'page', 'thornUserProcess.modify', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12288', 'page', 'thornRoleProcess.reportPermission', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12289', 'page', 'groupRuleTableProcess.export', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12290', 'page', 'groupProcess.active', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12291', 'page', 'thornRoleProcess.dataPermission', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12292', 'page', 'maintainGroupRuleTableSystemPage.beExportGridData', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12293', 'page', 'maintainThornSystemUserPage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12294', 'page', 'ruleProcess.dataSourceSave', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12295', 'page', 'groupRuleTableProcess.modify', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12296', 'page', 'thornUserProcess.bindGroup', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12297', 'page', 'ruleProcess.export', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12298', 'page', 'businessModelProcess.modify', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12299', 'page', 'ruleTableProcess.setFeference', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12300', 'page', 'thornUserProcess.add', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12301', 'page', 'maintainThornBaseOrganizationPage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12302', 'page', 'ruleProcess.copyDirectory', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12303', 'page', 'ruleTableProcess.new', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12304', 'page', 'ruleProcess.deleteDirectory', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12305', 'page', 'businessModelProcess.unActive', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12306', 'page', 'groupProcess.bindUsers', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12307', 'page', 'thornRoleProcess.delete', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12308', 'page', 'groupRuleTableProcess.delete', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12309', 'page', 'ruleTableProcess.setFeferenceView', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12310', 'page', 'groupProcess.viewUsers', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12311', 'page', 'maintainThornBaseOrganizationPage.beExportGridData', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12312', 'page', 'baseOrganizationProcess.modify', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12313', 'page', 'maintainThornSystemGroupPage.beExportGridData', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12314', 'page', 'groupProcess.add', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12315', 'page', 'thornUserProcess.unActive', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12316', 'page', 'businessModelProcess.active', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12317', 'page', 'baseOrganizationProcess.new', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12318', 'page', 'thornUserProcess.remove', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12319', 'page', 'thornUserProcess.delete', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12320', 'page', 'ruleProcess.onLine', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12321', 'page', 'thornRoleProcess.rfPermission', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12322', 'page', 'maintainThornSystemUserPage.beExportGridData', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12323', 'page', 'businessModelProcess.reportConfig', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12324', 'page', 'maintainReportConfigPage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12325', 'page', 'IGPProcess.modify', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12326', 'page', 'maintainRuleSystemPage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12327', 'page', 'maintainThornSystemGroupPage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12328', 'page', 'maintainThornSystemRolePage.beExportGridData', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12329', 'page', 'groupRuleTableProcess.view', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12330', 'page', 'maintainRuleTableSystemPage.beExportGridData', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12331', 'page', 'maintainThornBusinessModePage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12332', 'page', 'maintainIGPPage.beExportGridData', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12333', 'page', 'maintainThornBusinessModePage.beExportGridData', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12334', 'page', 'businessModelProcess.new', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12335', 'page', 'ruleProcess.feeRuleSave', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12336', 'page', 'businessModelProcess.menuConfig', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12337', 'page', 'thornRoleProcess.new', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12338', 'page', 'groupProcess.new', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12339', 'page', 'ruleProcess.import', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12340', 'page', 'ruleProcess.reset', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12341', 'page', 'ruleProcess.newDirectory', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12342', 'page', 'maintainGroupRuleTableSystemPage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12343', 'page', 'maintainRuleTableSystemPage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12344', 'page', 'groupProcess.unActive', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12345', 'page', 'thornRoleProcess.copyPermission', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12346', 'page', 'thornRoleProcess.add', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12347', 'page', 'IGPProcess.new', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12348', 'page', 'ruleProcess.directorySave', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12349', 'page', 'maintainIGPPage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12350', 'page', 'ruleTableProcess.modify', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12351', 'page', 'ruleProcess.newFeeRuleItem', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12352', 'page', 'thornUserProcess.new', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12353', 'page', 'maintainThornSystemRolePage', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12354', 'page', 'thornRoleProcess.menuPermission', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12355', 'page', 'thornUserProcess.viewRole', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12356', 'page', 'groupProcess.delete', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12357', 'page', 'thornUserProcess.active', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12358', 'page', 'ruleProcess.downLine', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12359', 'page', 'groupProcess.modify', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12360', 'page', 'ruleProcess.newDataSourceItem', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12361', 'page', 'groupRuleTableProcess.new', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12362', 'page', 'businessModelProcess.rfConfig', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12363', 'page', 'ruleProcess.deleteFeeRule', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12364', 'page', 'ruleProcess.deleteDataSource', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12365', 'page', 'groupRuleTableProcess.import', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12366', 'page', 'ruleTableProcess.delete', '1', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12796', 'page', 'groupProcess.delete', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12797', 'page', 'legProcess.segmentSplitLeg', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12798', 'page', 'zoneProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12799', 'page', 'transLocationProcess.disable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12800', 'page', 'maintainTmsProvincePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12801', 'page', 'receiverProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12802', 'page', 'tmsProvinceProcess.modify', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12803', 'page', 'tmsTransLocationTypeProcess.active', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12804', 'page', 'orderProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12805', 'page', 'ruleProcess.deleteFeeRule', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12806', 'page', 'tmsOrganizationProcess.orgEdit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12807', 'page', 'productProcess.enable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12808', 'page', 'tmsProvinceProcess.unactive', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12809', 'page', 'maintainGroupRuleTablePage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12810', 'page', 'zoneProcess.disable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12811', 'page', 'maintainRuleTablePage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12812', 'page', 'ruleProcess.copyDirectory', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12813', 'page', 'thornRoleProcess.modify', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12814', 'page', 'maintainThornRolePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12815', 'page', 'maintainPrettifyRuleTablePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12816', 'page', 'receiverProcess.active', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12817', 'page', 'maintainThornUserPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12818', 'page', 'tmsOrganizationProcess.remove', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12819', 'page', 'thornRoleProcess.copyPermission', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12820', 'page', 'ruleTableProcess.delete', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12821', 'page', 'realMileageProcess.disable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12822', 'page', 'legProcess.view', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12823', 'page', 'maintainLegPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12824', 'page', 'versionProcess.import', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12825', 'page', 'thornUserProcess.delete', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12826', 'page', 'maintainLegPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12827', 'page', 'thornUserProcess.viewRole', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12828', 'page', 'groupProcess.unActive', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12829', 'page', 'orderProcess.orderCheck', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12830', 'page', 'orderProcess.addFeeGroupNo', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12831', 'page', 'thornUserProcess.bindGroup', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12832', 'page', 'orderProcess.adjustDetail', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12833', 'page', 'maintainGroupRuleTablePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12834', 'page', 'productProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12835', 'page', 'ruleTableProcess.modify', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12836', 'page', 'maintainOrderPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12837', 'page', 'ruleProcess.onLine', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12838', 'page', 'maintainThornGroupPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12839', 'page', 'productTypeProcess.enable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12840', 'page', 'ruleProcess.newDataSourceItem', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12841', 'page', 'versionProcess.unActive', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12842', 'page', 'groupRuleTableProcess.import', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12843', 'page', 'thornUserProcess.remove', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12844', 'page', 'groupRuleTableProcess.modify', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12845', 'page', 'ruleTableProcess.setFeference', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12846', 'page', 'legProcess.arriveConfirm', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12847', 'page', 'maintainRuleTableVersionPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12848', 'page', 'orderProcess.viewLegs', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12849', 'page', 'tmsOrganizationProcess.enable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12850', 'page', 'cityProcess.disable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12851', 'page', 'groupProcess.bindRoles', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12852', 'page', 'legProcess.dispatchConfirm', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12853', 'page', 'maintainTmsZonePage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12854', 'page', 'tmsOrganizationProcess.disable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12855', 'page', 'legProcess.dispatch', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12856', 'page', 'receiverProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12857', 'page', 'tmsProvinceProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12858', 'page', 'groupProcess.add', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12859', 'page', 'groupRuleTableProcess.view', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12860', 'page', 'prettifyRuleTableProcess.delete', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12861', 'page', 'orderProcess.dispatchCanel', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12862', 'page', 'groupProcess.bindUsers', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12863', 'page', 'maintainTmsOrganizationPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12864', 'page', 'legProcess.confirm', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12865', 'page', 'maintainTmsProductTypePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12866', 'page', 'prettifyRuleTableProcess.search', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12867', 'page', 'tmsOrganizationProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12868', 'page', 'orderProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12869', 'page', 'thornUserProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12870', 'page', 'maintainTmsProductPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12871', 'page', 'maintainTmsTransLocationTypePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12872', 'page', 'thornRoleProcess.menuPermission', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12873', 'page', 'legProcess.dispatchCancel', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12874', 'page', 'orderProcess.autoShipment', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12875', 'page', 'maintainTmsTransLocationPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12876', 'page', 'orderProcess.cancel', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12877', 'page', 'cityProcess.enable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12878', 'page', 'maintainTmsCityPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12879', 'page', 'groupProcess.viewUsers', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12880', 'page', 'tmsOrganizationProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12881', 'page', 'thornUserProcess.unActive', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12882', 'page', 'orderProcess.changeSignNo', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12883', 'page', 'receiverProcess.unactive', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12884', 'page', 'legProcess.splitLeg', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12885', 'page', 'maintainTmsOrganizationPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12886', 'page', 'thornRoleProcess.add', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12887', 'page', 'orderProcess.ship', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12888', 'page', 'orderProcess.enable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12889', 'page', 'tmsOrganizationProcess.dispatchEdit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12890', 'page', 'groupProcess.active', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12891', 'page', 'groupRuleTableProcess.export', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12892', 'page', 'tmsTransLocationTypeProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12893', 'page', 'transLocationProcess.view', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12894', 'page', 'prettifyRuleTableProcess.save', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12895', 'page', 'thornRoleProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12896', 'page', 'productTypeProcess.disable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12897', 'page', 'ruleProcess.deleteDirectory', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12898', 'page', 'orderProcess.save', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12899', 'page', 'productTypeProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12900', 'page', 'ruleProcess.feeRuleSave', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12901', 'page', 'transLocationProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12902', 'page', 'zoneProcess.enable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12903', 'page', 'tmsProvinceProcess.active', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12904', 'page', 'orderProcess.backReceive', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12905', 'page', 'ruleProcess.reset', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12906', 'page', 'legProcess.singleArrive', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12907', 'page', 'orderTypeProcess.unactive', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12908', 'page', 'ruleProcess.import', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12909', 'page', 'orderTypeProcess.view', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12910', 'page', 'thornRoleProcess.delete', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12911', 'page', 'maintainTmsOrderTypePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12912', 'page', 'prettifyRuleTableProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12913', 'page', 'transLocationProcess.enable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12914', 'page', 'receiverProcess.autoPosition', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12915', 'page', 'orderTypeProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12916', 'page', 'groupRuleTableProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12917', 'page', 'legProcess.cancelSplit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12918', 'page', 'cityProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12919', 'page', 'legProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12920', 'page', 'ruleTableProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12921', 'page', 'maintainTmsOrderTypePage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12922', 'page', 'orderProcess.dispatch', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12923', 'page', 'maintainTmsReceiverPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12924', 'page', 'orderProcess.arrived', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12925', 'page', 'realMileageProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12926', 'page', 'productProcess.disable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12927', 'page', 'transLocationProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12928', 'page', 'tmsTransLocationTypeProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12929', 'page', 'thornUserProcess.add', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12930', 'page', 'versionProcess.export', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12931', 'page', 'maintainTmsProductTypePage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12932', 'page', 'thornUserProcess.modify', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12933', 'page', 'receiverProcess.view', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12934', 'page', 'maintainThornGroupPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12935', 'page', 'thornRoleProcess.dataPermission', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12936', 'page', 'maintainRulePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12937', 'page', 'maintainTmsReceiverPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12938', 'page', 'maintainRuleTablePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12939', 'page', 'versionProcess.editRuleTableDetail', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12940', 'page', 'maintainTmsTransLocationPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12941', 'page', 'orderProcess.signAll', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12942', 'page', 'orderProcess.import', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12943', 'page', 'maintainTmsProductPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12944', 'page', 'groupRuleTableProcess.delete', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12945', 'page', 'maintainTmsRealMileagePage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12946', 'page', 'maintainTmsTransLocationTypePage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12947', 'page', 'thornRoleProcess.rfPermission', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12948', 'page', 'maintainTmsRealMileagePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12949', 'page', 'productTypeProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12950', 'page', 'orderTypeProcess.active', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12951', 'page', 'receiverProcess.manualPosition', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12952', 'page', 'ruleProcess.newDirectory', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12953', 'page', 'versionProcess.modify', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12954', 'page', 'maintainTmsZonePage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12955', 'page', 'tmsTransLocationTypeProcess.unActive', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12956', 'page', 'ruleProcess.newFeeRuleItem', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12957', 'page', 'realMileageProcess.enable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12958', 'page', 'cityProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12959', 'page', 'ruleProcess.downLine', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12960', 'page', 'ruleProcess.directorySave', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12961', 'page', 'orderProcess.view', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12962', 'page', 'maintainRuleTableVersionPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12963', 'page', 'thornRoleProcess.reportPermission', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12964', 'page', 'thornUserProcess.active', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12965', 'page', 'orderProcess.disable', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12966', 'page', 'maintainTmsProvincePage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12967', 'page', 'legDetailProcess.splitLeg', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12968', 'page', 'legProcess.viewLeg', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12969', 'page', 'realMileageProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12970', 'page', 'maintainTmsCityPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12971', 'page', 'maintainOrderPage', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12972', 'page', 'orderProcess.orderUncheck', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12973', 'page', 'groupProcess.modify', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12974', 'page', 'ruleProcess.deleteDataSource', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12975', 'page', 'legProcess.createDispatch', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12976', 'page', 'maintainThornUserPage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12977', 'page', 'productProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12978', 'page', 'ruleProcess.export', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12979', 'page', 'maintainThornRolePage.beExportGridData', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12980', 'page', 'versionProcess.upLine', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12981', 'page', 'orderProcess.changeDescription', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12982', 'page', 'zoneProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12983', 'page', 'versionProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12984', 'page', 'legProcess.removeDispatch', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12985', 'page', 'prettifyRuleTableProcess.modify', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12986', 'page', 'ruleTableProcess.setFeferenceView', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12987', 'page', 'groupProcess.new', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12988', 'page', 'versionProcess.delete', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12989', 'page', 'ruleProcess.dataSourceSave', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12990', 'page', 'orderTypeProcess.edit', '3', null, '1', 'admin', '2015-12-02 13:05:56', '1', 'admin', '2015-12-02 13:05:56');
INSERT INTO `permissions` VALUES ('12991', 'page', 'groupProcess.delete', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12992', 'page', 'legProcess.segmentSplitLeg', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12993', 'page', 'zoneProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12994', 'page', 'transLocationProcess.disable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12995', 'page', 'maintainTmsProvincePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12996', 'page', 'receiverProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12997', 'page', 'tmsProvinceProcess.modify', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12998', 'page', 'tmsTransLocationTypeProcess.active', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('12999', 'page', 'ruleProcess.deleteFeeRule', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13000', 'page', 'orderProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13001', 'page', 'tmsOrganizationProcess.orgEdit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13002', 'page', 'orderDetailProcess.modifyDetail', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13003', 'page', 'productProcess.enable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13004', 'page', 'tmsProvinceProcess.unactive', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13005', 'page', 'maintainGroupRuleTablePage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13006', 'page', 'zoneProcess.disable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13007', 'page', 'maintainRuleTablePage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13008', 'page', 'ruleProcess.copyDirectory', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13009', 'page', 'thornRoleProcess.modify', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13010', 'page', 'maintainThornRolePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13011', 'page', 'maintainPrettifyRuleTablePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13012', 'page', 'receiverProcess.active', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13013', 'page', 'maintainThornUserPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13014', 'page', 'tmsOrganizationProcess.remove', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13015', 'page', 'thornRoleProcess.copyPermission', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13016', 'page', 'ruleTableProcess.delete', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13017', 'page', 'realMileageProcess.disable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13018', 'page', 'legProcess.view', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13019', 'page', 'maintainLegPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13020', 'page', 'versionProcess.import', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13021', 'page', 'thornUserProcess.delete', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13022', 'page', 'maintainLegPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13023', 'page', 'thornUserProcess.viewRole', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13024', 'page', 'groupProcess.unActive', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13025', 'page', 'orderProcess.orderCheck', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13026', 'page', 'orderProcess.addFeeGroupNo', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13027', 'page', 'thornUserProcess.bindGroup', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13028', 'page', 'orderProcess.adjustDetail', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13029', 'page', 'maintainGroupRuleTablePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13030', 'page', 'productProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13031', 'page', 'ruleTableProcess.modify', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13032', 'page', 'maintainOrderPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13033', 'page', 'ruleProcess.onLine', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13034', 'page', 'maintainThornGroupPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13035', 'page', 'productTypeProcess.enable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13036', 'page', 'ruleProcess.newDataSourceItem', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13037', 'page', 'versionProcess.unActive', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13038', 'page', 'groupRuleTableProcess.import', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13039', 'page', 'thornUserProcess.remove', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13040', 'page', 'groupRuleTableProcess.modify', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13041', 'page', 'ruleTableProcess.setFeference', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13042', 'page', 'legProcess.arriveConfirm', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13043', 'page', 'maintainRuleTableVersionPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13044', 'page', 'orderProcess.viewLegs', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13045', 'page', 'tmsOrganizationProcess.enable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13046', 'page', 'cityProcess.disable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13047', 'page', 'groupProcess.bindRoles', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13048', 'page', 'legProcess.dispatchConfirm', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13049', 'page', 'maintainTmsZonePage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13050', 'page', 'tmsOrganizationProcess.disable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13051', 'page', 'legProcess.dispatch', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13052', 'page', 'receiverProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13053', 'page', 'tmsProvinceProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13054', 'page', 'groupProcess.add', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13055', 'page', 'groupRuleTableProcess.view', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13056', 'page', 'prettifyRuleTableProcess.delete', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13057', 'page', 'orderProcess.dispatchCanel', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13058', 'page', 'groupProcess.bindUsers', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13059', 'page', 'maintainTmsOrganizationPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13060', 'page', 'legProcess.confirm', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13061', 'page', 'maintainTmsProductTypePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13062', 'page', 'prettifyRuleTableProcess.search', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13063', 'page', 'tmsOrganizationProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13064', 'page', 'orderProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13065', 'page', 'thornUserProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13066', 'page', 'maintainTmsProductPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13067', 'page', 'maintainTmsTransLocationTypePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13068', 'page', 'thornRoleProcess.menuPermission', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13069', 'page', 'legProcess.dispatchCancel', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13070', 'page', 'orderProcess.autoShipment', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13071', 'page', 'maintainTmsTransLocationPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13072', 'page', 'orderProcess.cancel', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13073', 'page', 'cityProcess.enable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13074', 'page', 'maintainTmsCityPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13075', 'page', 'groupProcess.viewUsers', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13076', 'page', 'tmsOrganizationProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13077', 'page', 'thornUserProcess.unActive', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13078', 'page', 'orderProcess.changeSignNo', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13079', 'page', 'receiverProcess.unactive', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13080', 'page', 'legProcess.splitLeg', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13081', 'page', 'maintainTmsOrganizationPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13082', 'page', 'thornRoleProcess.add', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13083', 'page', 'orderProcess.ship', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13084', 'page', 'orderProcess.enable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13085', 'page', 'tmsOrganizationProcess.dispatchEdit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13086', 'page', 'groupProcess.active', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13087', 'page', 'groupRuleTableProcess.export', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13088', 'page', 'tmsTransLocationTypeProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13089', 'page', 'transLocationProcess.view', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13090', 'page', 'prettifyRuleTableProcess.save', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13091', 'page', 'thornRoleProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13092', 'page', 'productTypeProcess.disable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13093', 'page', 'orderDetailProcess.deleteDetail', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13094', 'page', 'ruleProcess.deleteDirectory', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13095', 'page', 'orderProcess.save', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13096', 'page', 'productTypeProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13097', 'page', 'ruleProcess.feeRuleSave', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13098', 'page', 'transLocationProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13099', 'page', 'zoneProcess.enable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13100', 'page', 'tmsProvinceProcess.active', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13101', 'page', 'orderProcess.backReceive', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13102', 'page', 'ruleProcess.reset', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13103', 'page', 'legProcess.singleArrive', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13104', 'page', 'orderTypeProcess.unactive', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13105', 'page', 'ruleProcess.import', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13106', 'page', 'orderTypeProcess.view', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13107', 'page', 'thornRoleProcess.delete', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13108', 'page', 'maintainTmsOrderTypePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13109', 'page', 'prettifyRuleTableProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13110', 'page', 'transLocationProcess.enable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13111', 'page', 'receiverProcess.autoPosition', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13112', 'page', 'orderTypeProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13113', 'page', 'groupRuleTableProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13114', 'page', 'legProcess.cancelSplit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13115', 'page', 'cityProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13116', 'page', 'legProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13117', 'page', 'ruleTableProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13118', 'page', 'maintainTmsOrderTypePage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13119', 'page', 'orderProcess.dispatch', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13120', 'page', 'maintainTmsReceiverPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13121', 'page', 'orderProcess.arrived', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13122', 'page', 'realMileageProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13123', 'page', 'productProcess.disable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13124', 'page', 'transLocationProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13125', 'page', 'tmsTransLocationTypeProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13126', 'page', 'thornUserProcess.add', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13127', 'page', 'versionProcess.export', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13128', 'page', 'maintainTmsProductTypePage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13129', 'page', 'thornUserProcess.modify', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13130', 'page', 'receiverProcess.view', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13131', 'page', 'maintainThornGroupPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13132', 'page', 'thornRoleProcess.dataPermission', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13133', 'page', 'maintainRulePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13134', 'page', 'maintainRuleTablePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13135', 'page', 'maintainTmsReceiverPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13136', 'page', 'versionProcess.editRuleTableDetail', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13137', 'page', 'maintainTmsTransLocationPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13138', 'page', 'orderProcess.signAll', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13139', 'page', 'orderProcess.import', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13140', 'page', 'maintainTmsProductPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13141', 'page', 'groupRuleTableProcess.delete', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13142', 'page', 'maintainTmsRealMileagePage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13143', 'page', 'maintainTmsTransLocationTypePage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13144', 'page', 'thornRoleProcess.rfPermission', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13145', 'page', 'maintainTmsRealMileagePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13146', 'page', 'productTypeProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13147', 'page', 'receiverProcess.manualPosition', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13148', 'page', 'orderTypeProcess.active', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13149', 'page', 'ruleProcess.newDirectory', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13150', 'page', 'versionProcess.modify', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13151', 'page', 'maintainTmsZonePage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13152', 'page', 'tmsTransLocationTypeProcess.unActive', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13153', 'page', 'ruleProcess.newFeeRuleItem', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13154', 'page', 'realMileageProcess.enable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13155', 'page', 'cityProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13156', 'page', 'ruleProcess.downLine', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13157', 'page', 'orderDetailProcess.addDetail', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13158', 'page', 'ruleProcess.directorySave', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13159', 'page', 'orderProcess.view', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13160', 'page', 'maintainRuleTableVersionPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13161', 'page', 'thornRoleProcess.reportPermission', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13162', 'page', 'thornUserProcess.active', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13163', 'page', 'orderProcess.disable', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13164', 'page', 'maintainTmsProvincePage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13165', 'page', 'legDetailProcess.splitLeg', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13166', 'page', 'legProcess.viewLeg', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13167', 'page', 'realMileageProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13168', 'page', 'maintainTmsCityPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13169', 'page', 'maintainOrderPage', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13170', 'page', 'orderProcess.orderUncheck', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13171', 'page', 'groupProcess.modify', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13172', 'page', 'ruleProcess.deleteDataSource', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13173', 'page', 'legProcess.createDispatch', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13174', 'page', 'maintainThornUserPage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13175', 'page', 'productProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13176', 'page', 'ruleProcess.export', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13177', 'page', 'maintainThornRolePage.beExportGridData', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13178', 'page', 'versionProcess.upLine', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13179', 'page', 'orderProcess.changeDescription', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13180', 'page', 'zoneProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13181', 'page', 'versionProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13182', 'page', 'legProcess.removeDispatch', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13183', 'page', 'prettifyRuleTableProcess.modify', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13184', 'page', 'ruleTableProcess.setFeferenceView', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13185', 'page', 'groupProcess.new', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13186', 'page', 'versionProcess.delete', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13187', 'page', 'ruleProcess.dataSourceSave', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13188', 'page', 'orderTypeProcess.edit', '2', null, null, null, null, null, null, null);
INSERT INTO `permissions` VALUES ('13189', 'page', 'orderDetailProcess.save', '2', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `pro2col_map`
-- ----------------------------
DROP TABLE IF EXISTS `pro2col_map`;
CREATE TABLE `pro2col_map` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DISCRIMINATOR` varchar(255) NOT NULL,
  `IBO_ID` bigint(20) NOT NULL,
  `PROPERTYNAME` varchar(100) DEFAULT NULL,
  `PROPERTY_LOCALENAME` varchar(100) DEFAULT NULL,
  `COLSN` int(11) DEFAULT NULL,
  `ALLOWNULL` char(1) NOT NULL,
  `DEFAULT_VALUE` varchar(100) DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK3582CAF811A959CA` (`IBO_ID`),
  CONSTRAINT `FK3582CAF811A959CA` FOREIGN KEY (`IBO_ID`) REFERENCES `import_table_bo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pro2col_map
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FK185958CFF6BDA6AA` (`CATEGORY_ID`),
  CONSTRAINT `FK185958CFF6BDA6AA` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for `report_column`
-- ----------------------------
DROP TABLE IF EXISTS `report_column`;
CREATE TABLE `report_column` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `CODE` varchar(50) DEFAULT NULL,
  `FORMATTER` varchar(100) DEFAULT NULL,
  `FORMATTER_PARAMS` varchar(50) DEFAULT NULL,
  `LINE_NO` int(11) DEFAULT NULL,
  `REPORTCOLUMN_ID` bigint(20) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKF0B78C1F719AE1` (`REPORTCOLUMN_ID`),
  CONSTRAINT `FKF0B78C1F719AE1` FOREIGN KEY (`REPORTCOLUMN_ID`) REFERENCES `report_file` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_column
-- ----------------------------

-- ----------------------------
-- Table structure for `report_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `report_favorite`;
CREATE TABLE `report_favorite` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LINE_NO` int(11) DEFAULT NULL,
  `USER_ID` bigint(20) NOT NULL,
  `REPORTFILE_ID` bigint(20) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`,`REPORTFILE_ID`),
  KEY `FKDDDABC47F58F61FB` (`REPORTFILE_ID`),
  KEY `FKDDDABC474125F14B` (`USER_ID`),
  CONSTRAINT `FKDDDABC474125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`),
  CONSTRAINT `FKDDDABC47F58F61FB` FOREIGN KEY (`REPORTFILE_ID`) REFERENCES `report_file` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for `report_file`
-- ----------------------------
DROP TABLE IF EXISTS `report_file`;
CREATE TABLE `report_file` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `discriminator` varchar(255) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `FILE_NAME` varchar(100) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `PARAMETER` varchar(255) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `GRAMMAR_TYPE` varchar(255) DEFAULT NULL,
  `STATEMENT` text,
  `CLASSIFICATION` varchar(255) NOT NULL,
  `STYLE` varchar(50) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_file
-- ----------------------------

-- ----------------------------
-- Table structure for `report_params`
-- ----------------------------
DROP TABLE IF EXISTS `report_params`;
CREATE TABLE `report_params` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  `disname` varchar(100) DEFAULT NULL,
  `GRAMMAR_TYPE` varchar(50) DEFAULT NULL,
  `TYPE` varchar(250) DEFAULT NULL,
  `INPUTCONTROL` varchar(50) DEFAULT NULL,
  `STATEMENT` text,
  `DEFAULTVALUE` varchar(50) DEFAULT NULL,
  `ENUM_TYPE` varchar(50) DEFAULT NULL,
  `VISIBLE` bit(1) DEFAULT NULL,
  `REQUIRED` bit(1) DEFAULT NULL,
  `SHOW_TIME` bit(1) DEFAULT NULL,
  `ROW_NUMBER` int(11) DEFAULT NULL,
  `COL_NUMBER` int(11) DEFAULT NULL,
  `DISPLAYED_TABLEHEAD` varchar(255) DEFAULT NULL,
  `REPORTPARAMS_ID` bigint(20) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK24779EF13E186B1` (`REPORTPARAMS_ID`),
  CONSTRAINT `FK24779EF13E186B1` FOREIGN KEY (`REPORTPARAMS_ID`) REFERENCES `report_file` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_params
-- ----------------------------

-- ----------------------------
-- Table structure for `report_role`
-- ----------------------------
DROP TABLE IF EXISTS `report_role`;
CREATE TABLE `report_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DISCRIMINATOR` varchar(255) NOT NULL,
  `REPORTFILE_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `REPORTFILE_ID` (`REPORTFILE_ID`,`ROLE_ID`),
  KEY `FK736388A1F58F61FB` (`REPORTFILE_ID`),
  KEY `FK736388A19BFB2D6B` (`ROLE_ID`),
  CONSTRAINT `FK736388A19BFB2D6B` FOREIGN KEY (`ROLE_ID`) REFERENCES `thorn_roles` (`ID`),
  CONSTRAINT `FK736388A1F58F61FB` FOREIGN KEY (`REPORTFILE_ID`) REFERENCES `report_file` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_role
-- ----------------------------

-- ----------------------------
-- Table structure for `role_system_function`
-- ----------------------------
DROP TABLE IF EXISTS `role_system_function`;
CREATE TABLE `role_system_function` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` bigint(20) NOT NULL,
  `SYSTEM_FUNCTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK1CBDD61FD8B8D95F` (`SYSTEM_FUNCTION_ID`),
  KEY `FK1CBDD61F9BFB2D6B` (`ROLE_ID`),
  CONSTRAINT `FK1CBDD61F9BFB2D6B` FOREIGN KEY (`ROLE_ID`) REFERENCES `thorn_roles` (`ID`),
  CONSTRAINT `FK1CBDD61FD8B8D95F` FOREIGN KEY (`SYSTEM_FUNCTION_ID`) REFERENCES `system_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_system_function
-- ----------------------------

-- ----------------------------
-- Table structure for `sequence`
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SEQUENCE_KEY` varchar(100) NOT NULL,
  `SEQUENCE_TYPE` varchar(100) NOT NULL,
  `NEXT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SEQUENCE_KEY` (`SEQUENCE_KEY`,`SEQUENCE_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('1', '客户1', ' ', '52');

-- ----------------------------
-- Table structure for `system_function`
-- ----------------------------
DROP TABLE IF EXISTS `system_function`;
CREATE TABLE `system_function` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) NOT NULL,
  `BE_MENU` bit(1) DEFAULT NULL,
  `PAGE_TYPE` varchar(50) DEFAULT NULL,
  `PAGE_ID` varchar(70) DEFAULT NULL,
  `PAGE_NAME` varchar(70) DEFAULT NULL,
  `COMPONENT_ID` varchar(70) DEFAULT NULL,
  `COMPONENT_NAME` varchar(70) DEFAULT NULL,
  `POPUP_PAGE_ID` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_function
-- ----------------------------

-- ----------------------------
-- Table structure for `table_column`
-- ----------------------------
DROP TABLE IF EXISTS `table_column`;
CREATE TABLE `table_column` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TABLE_INFO_ID` bigint(20) NOT NULL,
  `ENTITY_KEY` varchar(100) NOT NULL,
  `VISIBLE` char(1) NOT NULL,
  `WEB_INDEX` int(11) NOT NULL,
  `WEB_WIDTH` int(11) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TABLE_INFO_ID` (`TABLE_INFO_ID`,`ENTITY_KEY`),
  KEY `FK6B8EA10727114F0F` (`TABLE_INFO_ID`),
  CONSTRAINT `FK6B8EA10727114F0F` FOREIGN KEY (`TABLE_INFO_ID`) REFERENCES `table_info` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table_column
-- ----------------------------

-- ----------------------------
-- Table structure for `table_info`
-- ----------------------------
DROP TABLE IF EXISTS `table_info`;
CREATE TABLE `table_info` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) NOT NULL,
  `PAGE` varchar(200) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`,`PAGE`),
  KEY `FKC4FBEE9F4125F14B` (`USER_ID`),
  CONSTRAINT `FKC4FBEE9F4125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table_info
-- ----------------------------

-- ----------------------------
-- Table structure for `table_sort`
-- ----------------------------
DROP TABLE IF EXISTS `table_sort`;
CREATE TABLE `table_sort` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TABLE_INFO_ID` bigint(20) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `SORT_KEY` varchar(100) NOT NULL,
  `SORT_DES` varchar(10) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TABLE_INFO_ID` (`TABLE_INFO_ID`,`LINE_NO`,`SORT_KEY`),
  KEY `FKC5007F8F27114F0F` (`TABLE_INFO_ID`),
  CONSTRAINT `FKC5007F8F27114F0F` FOREIGN KEY (`TABLE_INFO_ID`) REFERENCES `table_info` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table_sort
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_approve`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_approve`;
CREATE TABLE `thorn_approve` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROCESS` varchar(100) NOT NULL,
  `TASK` varchar(100) NOT NULL,
  `PAGE_ID` varchar(100) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PROCESS` (`PROCESS`,`TASK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_approve
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_approve_detail`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_approve_detail`;
CREATE TABLE `thorn_approve_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `THORN_APPROVE_ID` bigint(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `THORN_APPROVE_ID` (`THORN_APPROVE_ID`,`NAME`),
  KEY `FKB11E3F0BF2767B34` (`THORN_APPROVE_ID`),
  CONSTRAINT `FKB11E3F0BF2767B34` FOREIGN KEY (`THORN_APPROVE_ID`) REFERENCES `thorn_approve` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_approve_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_approve_process`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_approve_process`;
CREATE TABLE `thorn_approve_process` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `OBJ_ID` bigint(20) NOT NULL,
  `OBJ_CLASS` varchar(150) NOT NULL,
  `STATE` varchar(100) NOT NULL,
  `THORN_APPROVE_ID` bigint(20) NOT NULL,
  `APPROVE_TYPE` varchar(100) NOT NULL,
  `SUB_PROCESS` varchar(100) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `DECRIPTION` text,
  `INITIAL_STATE` varchar(50) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `APPLY_USER_ID` bigint(20) NOT NULL,
  `APPROVAL_JOB_ID` bigint(20) NOT NULL,
  `LAST_COMMENT` text,
  `APPLY_TIME` datetime DEFAULT NULL,
  `REJECTED` bit(1) DEFAULT NULL,
  `REJECT_COUNT` int(11) DEFAULT NULL,
  `JOBSTEPS` varchar(255) DEFAULT NULL,
  `STEPS` varchar(255) DEFAULT NULL,
  `KEEP_STEPS` int(11) DEFAULT NULL,
  `TOTAL_STEPS` int(11) DEFAULT NULL,
  `APPROVE_STATUS` varchar(50) DEFAULT NULL,
  `LAST_APPROVE_USER` varchar(100) DEFAULT NULL,
  `REMAINING_STEPS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK35DCED5F2767B34` (`THORN_APPROVE_ID`),
  KEY `FK35DCED5D275CD7A` (`APPLY_USER_ID`),
  KEY `FK35DCED51CE927F2` (`APPROVAL_JOB_ID`),
  CONSTRAINT `FK35DCED51CE927F2` FOREIGN KEY (`APPROVAL_JOB_ID`) REFERENCES `thorn_job` (`ID`),
  CONSTRAINT `FK35DCED5D275CD7A` FOREIGN KEY (`APPLY_USER_ID`) REFERENCES `thorn_users` (`ID`),
  CONSTRAINT `FK35DCED5F2767B34` FOREIGN KEY (`THORN_APPROVE_ID`) REFERENCES `thorn_approve` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_approve_process
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_approve_process_log`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_approve_process_log`;
CREATE TABLE `thorn_approve_process_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `THORN_APPROVE_PROCESS_ID` bigint(20) NOT NULL,
  `TYPE` varchar(100) NOT NULL,
  `APPROVAL_JOB_ID` bigint(20) NOT NULL,
  `APPROVE_JOB_NAME` varchar(100) DEFAULT NULL,
  `APPROVE_USER` varchar(255) DEFAULT NULL,
  `OPERATOR_ID` bigint(20) DEFAULT NULL,
  `OPERATOR_USER` varchar(100) DEFAULT NULL,
  `OPERATOR_TIME` datetime DEFAULT NULL,
  `COMMENT_LOG` text,
  PRIMARY KEY (`ID`),
  KEY `FK6FACB2BADAB1AD35` (`THORN_APPROVE_PROCESS_ID`),
  CONSTRAINT `FK6FACB2BADAB1AD35` FOREIGN KEY (`THORN_APPROVE_PROCESS_ID`) REFERENCES `thorn_approve_process` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_approve_process_log
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_authorize_approve`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_authorize_approve`;
CREATE TABLE `thorn_authorize_approve` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `JOBUSER_ID` bigint(20) NOT NULL,
  `GRANTOR_JOBUSER_ID` bigint(20) NOT NULL,
  `APPLY_JOBUSER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK28D05A4F3C4668F6` (`GRANTOR_JOBUSER_ID`),
  KEY `FK28D05A4FD081B227` (`APPLY_JOBUSER_ID`),
  KEY `FK28D05A4FB419B0B6` (`JOBUSER_ID`),
  CONSTRAINT `FK28D05A4F3C4668F6` FOREIGN KEY (`GRANTOR_JOBUSER_ID`) REFERENCES `thorn_job_user` (`ID`),
  CONSTRAINT `FK28D05A4FB419B0B6` FOREIGN KEY (`JOBUSER_ID`) REFERENCES `thorn_job_user` (`ID`),
  CONSTRAINT `FK28D05A4FD081B227` FOREIGN KEY (`APPLY_JOBUSER_ID`) REFERENCES `thorn_job_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_authorize_approve
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_base_organization`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_base_organization`;
CREATE TABLE `thorn_base_organization` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DISCRIMINATOR` varchar(255) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `BUSINESS_MODEL_ID` bigint(20) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `BE_HAVE_CUSTOM_RULE` char(1) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FK46BC8179F2C53E88` (`BUSINESS_MODEL_ID`),
  CONSTRAINT `FK46BC8179F2C53E88` FOREIGN KEY (`BUSINESS_MODEL_ID`) REFERENCES `thorn_business_model` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_base_organization
-- ----------------------------
INSERT INTO `thorn_base_organization` VALUES ('1', 'com.vtradex.thorn.server.model.security.ThornBaseOrganization', 'SYSTEM_MODEL_ORG', '系统管理部', '1', '', 'Y', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_base_organization` VALUES ('2', 'com.vtradex.thorn.server.model.security.ThornBaseOrganization', 'TRAINING', '培训部门', '2', '', '1', '1', 'admin', '2015-12-02 11:49:51', '1', 'admin', '2015-12-02 13:04:39');

-- ----------------------------
-- Table structure for `thorn_business_model`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_business_model`;
CREATE TABLE `thorn_business_model` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DISCRIMINATOR` varchar(255) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `BE_SYS_MODEL` char(1) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_business_model
-- ----------------------------
INSERT INTO `thorn_business_model` VALUES ('1', 'com.vtradex.thorn.server.model.security.ThornBusinessModel', 'SYSTEM_MODEL', '系统管理模型', 'ACTIVE', '', 'Y', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_business_model` VALUES ('2', 'com.vtradex.thorn.server.model.security.ThornBusinessModel', 'TRAINING', '培训', 'ACTIVE', '', 'N', '1', 'admin', '2015-12-02 11:49:22', '1', 'admin', '2015-12-02 11:49:22');

-- ----------------------------
-- Table structure for `thorn_data_sources`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_data_sources`;
CREATE TABLE `thorn_data_sources` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DIRECTORY_ID` bigint(20) DEFAULT NULL,
  `HASHCODE` varchar(70) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `SQL_STATE` text NOT NULL,
  `DATA_BASE_NAME` varchar(30) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `HASHCODE` (`HASHCODE`),
  KEY `FKCDB5676BCA87828A` (`DIRECTORY_ID`),
  CONSTRAINT `FKCDB5676BCA87828A` FOREIGN KEY (`DIRECTORY_ID`) REFERENCES `thorn_rule_directory` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_data_sources
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_groups`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_groups`;
CREATE TABLE `thorn_groups` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL,
  `BUSINESS_MODEL_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FKD0E773CFDF3669E` (`ORGAN_ID`),
  KEY `FKD0E773CF2C53E88` (`BUSINESS_MODEL_ID`),
  CONSTRAINT `FKD0E773CF2C53E88` FOREIGN KEY (`BUSINESS_MODEL_ID`) REFERENCES `thorn_business_model` (`ID`),
  CONSTRAINT `FKD0E773CFDF3669E` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_groups
-- ----------------------------
INSERT INTO `thorn_groups` VALUES ('1', 'SYSMAN', '系统模型_管理组', null, '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00', '1', '1');
INSERT INTO `thorn_groups` VALUES ('2', 'TRAINING_MODEL_GRP', '培训_模型_管理组', null, '1', 'admin', '2015-12-02 11:49:22', '1', 'admin', '2015-12-02 11:49:51', null, '2');

-- ----------------------------
-- Table structure for `thorn_group_role`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_group_role`;
CREATE TABLE `thorn_group_role` (
  `ROLE_ID` bigint(20) NOT NULL,
  `GROUP_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`ROLE_ID`),
  KEY `FK67180BBE9BFB2D6B` (`ROLE_ID`),
  KEY `FK67180BBE10DE4409` (`GROUP_ID`),
  CONSTRAINT `FK67180BBE10DE4409` FOREIGN KEY (`GROUP_ID`) REFERENCES `thorn_groups` (`ID`),
  CONSTRAINT `FK67180BBE9BFB2D6B` FOREIGN KEY (`ROLE_ID`) REFERENCES `thorn_roles` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_group_role
-- ----------------------------
INSERT INTO `thorn_group_role` VALUES ('1', '1');
INSERT INTO `thorn_group_role` VALUES ('2', '2');
INSERT INTO `thorn_group_role` VALUES ('3', '2');

-- ----------------------------
-- Table structure for `thorn_group_rule_table`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_group_rule_table`;
CREATE TABLE `thorn_group_rule_table` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BUSINESS_MODEL_ID` bigint(20) DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `SORT_DESC` int(11) NOT NULL,
  `IMAGE_DESC` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BUSINESS_MODEL_ID` (`BUSINESS_MODEL_ID`,`ORGAN_ID`,`NAME`),
  KEY `FKFCF905F3FDF3669E` (`ORGAN_ID`),
  KEY `FKFCF905F3F2C53E88` (`BUSINESS_MODEL_ID`),
  CONSTRAINT `FKFCF905F3F2C53E88` FOREIGN KEY (`BUSINESS_MODEL_ID`) REFERENCES `thorn_business_model` (`ID`),
  CONSTRAINT `FKFCF905F3FDF3669E` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_group_rule_table
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_group_user`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_group_user`;
CREATE TABLE `thorn_group_user` (
  `GROUP_ID` bigint(20) NOT NULL,
  `USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`GROUP_ID`),
  KEY `FK671977134125F14B` (`USER_ID`),
  KEY `FK6719771310DE4409` (`GROUP_ID`),
  CONSTRAINT `FK6719771310DE4409` FOREIGN KEY (`GROUP_ID`) REFERENCES `thorn_groups` (`ID`),
  CONSTRAINT `FK671977134125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_group_user
-- ----------------------------
INSERT INTO `thorn_group_user` VALUES ('1', '1');
INSERT INTO `thorn_group_user` VALUES ('2', '1');

-- ----------------------------
-- Table structure for `thorn_interface_log`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_interface_log`;
CREATE TABLE `thorn_interface_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(100) DEFAULT NULL,
  `FUN` varchar(100) DEFAULT NULL,
  `FROMSYS` varchar(20) DEFAULT NULL,
  `TOSYS` varchar(20) DEFAULT NULL,
  `REQUEST` varchar(100) DEFAULT NULL,
  `REQUEST_TIME` datetime DEFAULT NULL,
  `REQUEST_CONTENT` longtext,
  `RESPONSE` varchar(100) DEFAULT NULL,
  `RESPONSE_TIME` datetime DEFAULT NULL,
  `RESPONSE_CONTENT` longtext,
  `DEALTIME` datetime DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `FILE_TYPE` varchar(100) DEFAULT NULL,
  `FILE_NAME` varchar(100) DEFAULT NULL,
  `REFERENCE` varchar(255) DEFAULT NULL,
  `LOG_ID` bigint(20) DEFAULT NULL,
  `ERROR_LOG` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_interface_log
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_job`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_job`;
CREATE TABLE `thorn_job` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `HASHCODE` bigint(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL,
  `ORGAN_NAME` varchar(255) DEFAULT NULL,
  `JOB_USER_NAME` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `HASHCODE` (`HASHCODE`),
  KEY `FKC13A2F35207F08E0` (`ORGAN_ID`),
  CONSTRAINT `FKC13A2F35207F08E0` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_organization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_job
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_job_user`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_job_user`;
CREATE TABLE `thorn_job_user` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `THORN_JOB_ID` bigint(20) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `THORN_JOB_ID` (`THORN_JOB_ID`,`USER_ID`),
  KEY `FK869EA6954125F14B` (`USER_ID`),
  KEY `FK869EA695DDD8DFBE` (`THORN_JOB_ID`),
  CONSTRAINT `FK869EA6954125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`),
  CONSTRAINT `FK869EA695DDD8DFBE` FOREIGN KEY (`THORN_JOB_ID`) REFERENCES `thorn_job` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_job_user
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_message_record`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_message_record`;
CREATE TABLE `thorn_message_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_message_record
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_model_menu`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_model_menu`;
CREATE TABLE `thorn_model_menu` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DISCRIMINATOR` varchar(255) NOT NULL,
  `BUSINESS_MODEL_ID` bigint(20) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `KEY_VALUE` varchar(100) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `ROOT` char(1) DEFAULT NULL,
  `BE_MENU` char(1) DEFAULT NULL,
  `BE_SYSTEM_PAGE` char(1) DEFAULT NULL,
  `SYSTEM_SRC` varchar(50) DEFAULT NULL,
  `LINE_NO` int(11) DEFAULT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK981CF63DF2C53E88` (`BUSINESS_MODEL_ID`),
  KEY `FK981CF63DAAA16027` (`PARENT_ID`),
  CONSTRAINT `FK981CF63DAAA16027` FOREIGN KEY (`PARENT_ID`) REFERENCES `thorn_model_menu` (`ID`),
  CONSTRAINT `FK981CF63DF2C53E88` FOREIGN KEY (`BUSINESS_MODEL_ID`) REFERENCES `thorn_business_model` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_model_menu
-- ----------------------------
INSERT INTO `thorn_model_menu` VALUES ('59', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '模型管理', 'security', 'PAGE', 'Y', 'Y', 'N', 'thorn5-client', '1', null, '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('60', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '模型管理', 'maintainThornBusinessModePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '1', '59', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('61', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '组织维护', 'maintainThornBaseOrganizationPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '2', '59', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('62', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '权限管理', 'right', 'PAGE', 'N', 'Y', 'N', 'thorn5-client', '3', '59', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('63', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '规则管理', 'right', 'PAGE', 'N', 'Y', 'N', 'thorn5-rule', '4', '59', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('64', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '全局参数管理', 'maintainIGPPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '5', '59', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('65', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '报表配置', 'maintainReportConfigPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rmc', '6', '59', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('66', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '用户管理(模型级)', 'maintainThornSystemUserPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '1', '62', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('67', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '角色管理(模型级)', 'maintainThornSystemRolePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '2', '62', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('68', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '用户组管理(模型级)', 'maintainThornSystemGroupPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '3', '62', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('69', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '规则管理(模型级)', 'maintainRuleSystemPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rule', '1', '63', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('70', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '规则表设计(模型级)', 'maintainRuleTableSystemPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rule', '2', '63', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('71', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '1', '分组管理(模型级)', 'maintainGroupRuleTableSystemPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rule', '3', '63', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('200', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '组织管理', 'security', 'PAGE', 'Y', 'Y', 'N', 'thorn5-client', '1', null, '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('201', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '权限管理', 'right', 'PAGE', 'N', 'Y', 'N', 'thorn5-client', '1', '200', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('202', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '规则管理', 'rule', 'PAGE', 'N', 'Y', 'N', 'thorn5-rule', '2', '200', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('203', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '用户管理', 'maintainThornUserPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '1', '201', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('204', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '角色管理', 'maintainThornRolePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '2', '201', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('205', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '用户组管理', 'maintainThornGroupPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '3', '201', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('206', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '规则表设计', 'ruleTable', 'PAGE', 'N', 'Y', 'Y', 'thorn5-client', '1', '202', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('207', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '规则表管理', 'maintainRuleTableVersionPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '2', '202', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('208', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '规则表高级设计', 'maintainPrettifyRuleTablePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '3', '202', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('209', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '规则管理', 'maintainRulePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rule', '1', '206', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('210', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '规则表设计', 'maintainRuleTablePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rule', '2', '206', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('211', 'com.vtradex.thorn.server.model.security.ThornModelMenu', null, '分组管理', 'maintainGroupRuleTablePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rule', '3', '206', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00');
INSERT INTO `thorn_model_menu` VALUES ('251', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '组织管理', '组织管理', 'PAGE', 'Y', 'Y', 'N', 'thorn5-client', '1', null, '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('252', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '权限管理', 'right', 'PAGE', 'N', 'N', 'N', 'thorn5-client', '1', '251', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('253', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '用户管理', 'maintainThornUserPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '1', '252', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('254', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '角色管理', 'maintainThornRolePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '2', '252', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('255', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '用户组管理', 'maintainThornGroupPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '3', '252', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('256', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '规则管理', 'rule', 'PAGE', 'N', 'N', 'N', 'thorn5-rule', '2', '251', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('257', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '规则表设计', 'ruleTable', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '1', '256', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('258', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '规则管理', 'maintainRulePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rule', '1', '257', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('259', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '规则表设计', 'maintainRuleTablePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rule', '2', '257', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('260', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '分组管理', 'maintainGroupRuleTablePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-rule', '3', '257', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('261', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '规则表管理', 'maintainRuleTableVersionPage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '2', '256', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('262', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '规则表高级设计', 'maintainPrettifyRuleTablePage', 'PAGE', 'N', 'N', 'Y', 'thorn5-client', '3', '256', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('263', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '基础管理', '基础管理', 'PAGE', 'Y', 'Y', 'N', '', '2', null, '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('264', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '地理位置信息', '地理位置信息', 'PAGE', 'N', 'N', 'N', '', '1', '263', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('265', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '省份信息管理', 'maintainTmsProvincePage', 'PAGE', 'N', 'N', 'N', 'app', '1', '264', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('266', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '城市信息管理', 'maintainTmsCityPage', 'PAGE', 'N', 'N', 'N', 'app', '2', '264', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('267', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '区域信息管理', 'maintainTmsZonePage', 'PAGE', 'N', 'N', 'N', 'app', '3', '264', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('268', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '运输地类型管理', 'maintainTmsTransLocationTypePage', 'PAGE', 'N', 'N', 'N', 'app', '4', '264', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('269', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '运输地信息', 'maintainTmsTransLocationPage', 'PAGE', 'N', 'N', 'N', 'app', '5', '264', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('270', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '实际里程数管理', 'maintainTmsRealMileagePage', 'PAGE', 'N', 'N', 'N', 'app', '6', '264', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('271', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '组织管理', '组织管理', 'PAGE', 'N', 'N', 'N', '', '2', '263', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('272', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '收发货方管理', 'maintainTmsReceiverPage', 'PAGE', 'N', 'N', 'N', 'app', '1', '271', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('273', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '组织管理', 'maintainTmsOrganizationPage', 'PAGE', 'N', 'N', 'N', 'app', '2', '271', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('274', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '货品信息', '货品信息', 'PAGE', 'N', 'N', 'N', '', '3', '263', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('275', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '服务产品管理', 'maintainTmsOrderTypePage', 'PAGE', 'N', 'N', 'N', 'app', '1', '274', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('276', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '货品信息管理', 'maintainTmsProductPage', 'PAGE', 'N', 'N', 'N', 'app', '2', '274', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('277', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '货品信息类型', 'maintainTmsProductTypePage', 'PAGE', 'N', 'N', 'N', 'app', '3', '274', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('278', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '订单管理', '订单管理', 'PAGE', 'Y', 'Y', 'N', '', '3', null, '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('279', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '订单管理', 'maintainOrderPage', 'PAGE', 'N', 'N', 'N', 'app', '1', '278', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');
INSERT INTO `thorn_model_menu` VALUES ('280', 'com.vtradex.thorn.server.model.security.ThornModelMenu', '2', '运单管理', 'maintainLegPage', 'PAGE', 'N', 'N', 'N', 'app', '2', '278', '1', 'admin', '2015-12-02 11:58:45', '1', 'admin', '2015-12-02 11:58:45');

-- ----------------------------
-- Table structure for `thorn_organization`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_organization`;
CREATE TABLE `thorn_organization` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `HASHCODE` bigint(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  `PARENT_NAME` varchar(255) DEFAULT NULL,
  `IS_ROOT` bit(1) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `HASHCODE` (`HASHCODE`),
  KEY `FKB886D09B4D6F5FA7` (`PARENT_ID`),
  CONSTRAINT `FKB886D09B4D6F5FA7` FOREIGN KEY (`PARENT_ID`) REFERENCES `thorn_organization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_organization
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_organ_user`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_organ_user`;
CREATE TABLE `thorn_organ_user` (
  `USER_ID` bigint(20) NOT NULL,
  `ORGAN_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`ORGAN_ID`),
  KEY `FKA4F546C1FDF3669E` (`ORGAN_ID`),
  KEY `FKA4F546C14125F14B` (`USER_ID`),
  CONSTRAINT `FKA4F546C14125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`),
  CONSTRAINT `FKA4F546C1FDF3669E` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_organ_user
-- ----------------------------
INSERT INTO `thorn_organ_user` VALUES ('1', '1');
INSERT INTO `thorn_organ_user` VALUES ('1', '2');

-- ----------------------------
-- Table structure for `thorn_rf_message`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_rf_message`;
CREATE TABLE `thorn_rf_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `SHELL_ID` varchar(100) DEFAULT NULL,
  `STATUS` varchar(50) NOT NULL,
  `MESSAGE_INFO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rf_message
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_roles`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_roles`;
CREATE TABLE `thorn_roles` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ADVANCED` char(1) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `BUSINESS_MODEL_ID` bigint(20) DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL,
  `CREATE_ORGAN_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FK5BDC2035FDF3669E` (`ORGAN_ID`),
  KEY `FK5BDC2035F2C53E88` (`BUSINESS_MODEL_ID`),
  KEY `FK5BDC203534925281` (`CREATE_ORGAN_ID`),
  CONSTRAINT `FK5BDC203534925281` FOREIGN KEY (`CREATE_ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`),
  CONSTRAINT `FK5BDC2035F2C53E88` FOREIGN KEY (`BUSINESS_MODEL_ID`) REFERENCES `thorn_business_model` (`ID`),
  CONSTRAINT `FK5BDC2035FDF3669E` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_roles
-- ----------------------------
INSERT INTO `thorn_roles` VALUES ('1', 'SUPERVISOR', '系统模型_管理员', 'T', '1', 'admin', '2015-09-10 00:00:00', '1', 'admin', '2015-09-10 00:00:00', '1', '1', '1');
INSERT INTO `thorn_roles` VALUES ('2', 'TRAINING_MODEL_MGR', '培训_模型_管理角色', 'F', '1', 'admin', '2015-12-02 11:49:22', '1', 'admin', '2015-12-02 13:11:28', '2', null, '1');
INSERT INTO `thorn_roles` VALUES ('3', '管理员', '管理员', 'F', '1', 'admin', '2015-12-02 13:05:55', '1', 'admin', '2015-12-02 13:05:56', '2', '2', '2');

-- ----------------------------
-- Table structure for `thorn_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_role_user`;
CREATE TABLE `thorn_role_user` (
  `ROLE_ID` bigint(20) NOT NULL,
  `USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`ROLE_ID`),
  KEY `FKD487FB8C9BFB2D6B` (`ROLE_ID`),
  KEY `FKD487FB8C4125F14B` (`USER_ID`),
  CONSTRAINT `FKD487FB8C4125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`),
  CONSTRAINT `FKD487FB8C9BFB2D6B` FOREIGN KEY (`ROLE_ID`) REFERENCES `thorn_roles` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_rule`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_rule`;
CREATE TABLE `thorn_rule` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DIRECTORY_ID` bigint(20) DEFAULT NULL,
  `HASHCODE` varchar(70) NOT NULL,
  `IS_MAIN` bit(1) DEFAULT NULL,
  `NAME` varchar(150) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CONTENT` longtext,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `HASHCODE` (`HASHCODE`),
  KEY `FK660F7264CA87828A` (`DIRECTORY_ID`),
  CONSTRAINT `FK660F7264CA87828A` FOREIGN KEY (`DIRECTORY_ID`) REFERENCES `thorn_rule_directory` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule
-- ----------------------------
INSERT INTO `thorn_rule` VALUES ('1', '2', '3f64a73d689bd2fd93e03fdc391dc7f1', '', '订单编码规则', '', '433e96676abc012c1409234dbed0bcdb02758810eb9d36bf252fad9b6402a2b9aa88ea3d6cf3a253ef3db99ab0117e0d', '1', 'admin', '2015-12-02 13:03:02', '1', 'admin', '2015-12-02 13:03:02');
INSERT INTO `thorn_rule` VALUES ('2', '4', '0b517218edd31241ad36d6a611236876', '', '分单主规则', '', '4be28a4a20bbf35adfb6b47f0d4b1b8a54cdec5b6e5816cb45c2ee3ddca37ab9a63bf62972ea5f46d4684dfd06f6f02f8bf1340f003d9ba356ff3fc88d338c849d6382e1e90b27b9d4c3584d5df51d7946fc1ddbc5423b84daadaac786baeb2449c0eb0cf8f06ae3ec7fe901bd7dd3771a9d66a6b11beac8e8a75c9ee2ba7cca8a0255238d102ab00e25429f8578b657062eb43b35fc806f1850914a960fb3f1d00faf863a15718e16ef41b65218616df9d30b29945bf1a211f127c52b0ab37b07e194db8631830c634506fa62f532991e95d06b569adaad62566ba1641eff68a8d7aa7afdf56644', '1', 'admin', '2015-12-02 13:04:02', '1', 'admin', '2015-12-02 13:04:02');
INSERT INTO `thorn_rule` VALUES ('3', '6', '799a772969d3ddc1750aea443815c813', '', '订单编码规则', '', '433e96676abc012c1409234dbed0bcdb02758810eb9d36bf252fad9b6402a2b9aa88ea3d6cf3a253ef3db99ab0117e0d', '1', 'admin', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:39');
INSERT INTO `thorn_rule` VALUES ('4', '8', '6fec6a33458aa7467c13965d69c5ac99', '', '分单主规则', '', '4be28a4a20bbf35adfb6b47f0d4b1b8a54cdec5b6e5816cb45c2ee3ddca37ab9a63bf62972ea5f46d4684dfd06f6f02f8bf1340f003d9ba356ff3fc88d338c849d6382e1e90b27b9d4c3584d5df51d7946fc1ddbc5423b84daadaac786baeb2449c0eb0cf8f06ae3ec7fe901bd7dd3771a9d66a6b11beac8e8a75c9ee2ba7cca8a0255238d102ab00e25429f8578b657062eb43b35fc806f1850914a960fb3f1d00faf863a15718e16ef41b65218616df9d30b29945bf1a211f127c52b0ab37b07e194db8631830c634506fa62f532991e95d06b569adaad62566ba1641eff68a8d7aa7afdf56644', '1', 'admin', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:39');

-- ----------------------------
-- Table structure for `thorn_rule_directory`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_rule_directory`;
CREATE TABLE `thorn_rule_directory` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `HASHCODE` varchar(70) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL,
  `BUSINESS_MODEL_ID` bigint(20) DEFAULT NULL,
  `IS_ROOT` bit(1) DEFAULT NULL,
  `UP_LINE` bit(1) DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `HASHCODE` (`HASHCODE`),
  KEY `FK7437EE32FDF3669E` (`ORGAN_ID`),
  KEY `FK7437EE32F2C53E88` (`BUSINESS_MODEL_ID`),
  KEY `FK7437EE322B8132D` (`PARENT_ID`),
  CONSTRAINT `FK7437EE322B8132D` FOREIGN KEY (`PARENT_ID`) REFERENCES `thorn_rule_directory` (`ID`),
  CONSTRAINT `FK7437EE32F2C53E88` FOREIGN KEY (`BUSINESS_MODEL_ID`) REFERENCES `thorn_business_model` (`ID`),
  CONSTRAINT `FK7437EE32FDF3669E` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule_directory
-- ----------------------------
INSERT INTO `thorn_rule_directory` VALUES ('1', 'f66ffe8e97bbe85df7015db846f7b729', '单号编码规则', null, null, '2', '', '', '2015-12-02 13:02:15', '1', 'admin', '2015-12-02 13:02:15', '1', 'admin', '2015-12-02 13:04:08');
INSERT INTO `thorn_rule_directory` VALUES ('2', '4486dde6066ced825023be66132aa2f5', '主规则', '1', null, '2', '', '', '2015-12-02 13:02:27', '1', 'admin', '2015-12-02 13:02:27', '1', 'admin', '2015-12-02 13:02:27');
INSERT INTO `thorn_rule_directory` VALUES ('3', 'fd0e4d2799b2df098343164be6b29e88', '分单规则', null, null, '2', '', '', '2015-12-02 13:03:23', '1', 'admin', '2015-12-02 13:03:23', '1', 'admin', '2015-12-02 13:04:08');
INSERT INTO `thorn_rule_directory` VALUES ('4', '2459bc03c2a2e292ac9c0b2415b400a8', '主规则', '3', null, '2', '', '', '2015-12-02 13:03:34', '1', 'admin', '2015-12-02 13:03:34', '1', 'admin', '2015-12-02 13:03:34');
INSERT INTO `thorn_rule_directory` VALUES ('5', '2945cf23c72d875a51da7ad1ed72d7aa', '单号编码规则', null, '2', '2', '', '', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:44');
INSERT INTO `thorn_rule_directory` VALUES ('6', '77bada020ff0ab1a76d2491be0c6bb21', '主规则', '5', '2', '2', '', '', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:39');
INSERT INTO `thorn_rule_directory` VALUES ('7', 'e38046cc71b0e22204a795ced6ee96f2', '分单规则', null, '2', '2', '', '', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:44');
INSERT INTO `thorn_rule_directory` VALUES ('8', '6b4592adb7e30303168b1cb0fea03f37', '主规则', '7', '2', '2', '', '', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:39', '1', 'admin', '2015-12-02 13:04:39');

-- ----------------------------
-- Table structure for `thorn_rule_exception_log`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_rule_exception_log`;
CREATE TABLE `thorn_rule_exception_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(100) DEFAULT NULL,
  `RULE_NAME` varchar(120) DEFAULT NULL,
  `SUB_RULE_NAME` varchar(120) DEFAULT NULL,
  `PROCESS` varchar(100) DEFAULT NULL,
  `GROUP_NO` varchar(100) DEFAULT NULL,
  `OPER_DATE` datetime DEFAULT NULL,
  `OPER_USERID` bigint(20) DEFAULT NULL,
  `OPER_USERNAME` varchar(100) DEFAULT NULL,
  `OPER_EXCEPTION` text,
  `OPER_EXCEPTION_MESS` text,
  `STR_EXTEND1` varchar(255) DEFAULT NULL,
  `STR_EXTEND2` varchar(255) DEFAULT NULL,
  `STR_EXTEND3` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule_exception_log
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_rule_table`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_rule_table`;
CREATE TABLE `thorn_rule_table` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ORGAN_ID` bigint(20) DEFAULT NULL,
  `BUSINESS_MODEL_ID` bigint(20) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `IMAGE_DESC` varchar(50) DEFAULT NULL,
  `MULTIPLE` bit(1) DEFAULT NULL,
  `GRADE_ITEM` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SORT_DESC` int(11) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`,`BUSINESS_MODEL_ID`,`ORGAN_ID`) USING BTREE,
  KEY `FK35FBBE13FDF3669E` (`ORGAN_ID`),
  KEY `FK35FBBE13F2C53E88` (`BUSINESS_MODEL_ID`),
  CONSTRAINT `FK35FBBE13F2C53E88` FOREIGN KEY (`BUSINESS_MODEL_ID`) REFERENCES `thorn_business_model` (`ID`),
  CONSTRAINT `FK35FBBE13FDF3669E` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule_table
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_rule_table_detail`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_rule_table_detail`;
CREATE TABLE `thorn_rule_table_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_ID` bigint(20) NOT NULL,
  `REFERENCE1` varchar(100) DEFAULT NULL,
  `REFERENCE2` varchar(100) DEFAULT NULL,
  `REFERENCE3` varchar(100) DEFAULT NULL,
  `REFERENCE4` varchar(100) DEFAULT NULL,
  `REFERENCE5` varchar(100) DEFAULT NULL,
  `REFERENCE6` varchar(100) DEFAULT NULL,
  `REFERENCE7` varchar(100) DEFAULT NULL,
  `REFERENCE8` varchar(100) DEFAULT NULL,
  `REFERENCE9` varchar(100) DEFAULT NULL,
  `REFERENCE10` varchar(100) DEFAULT NULL,
  `REFERENCE11` varchar(100) DEFAULT NULL,
  `REFERENCE12` varchar(100) DEFAULT NULL,
  `REFERENCE13` varchar(100) DEFAULT NULL,
  `REFERENCE14` varchar(100) DEFAULT NULL,
  `REFERENCE15` varchar(100) DEFAULT NULL,
  `REFERENCE16` varchar(100) DEFAULT NULL,
  `REFERENCE17` varchar(100) DEFAULT NULL,
  `REFERENCE18` varchar(100) DEFAULT NULL,
  `REFERENCE19` varchar(100) DEFAULT NULL,
  `REFERENCE20` varchar(100) DEFAULT NULL,
  `REFERENCE21` varchar(100) DEFAULT NULL,
  `REFERENCE22` varchar(100) DEFAULT NULL,
  `REFERENCE23` varchar(100) DEFAULT NULL,
  `REFERENCE24` varchar(100) DEFAULT NULL,
  `REFERENCE25` varchar(100) DEFAULT NULL,
  `REFERENCE26` varchar(100) DEFAULT NULL,
  `REFERENCE27` varchar(100) DEFAULT NULL,
  `REFERENCE28` varchar(100) DEFAULT NULL,
  `REFERENCE29` varchar(100) DEFAULT NULL,
  `REFERENCE30` varchar(100) DEFAULT NULL,
  `HASHCODE` varchar(70) NOT NULL,
  `RETRIEVECODE` varchar(70) DEFAULT NULL,
  `REF_HASHCODE` varchar(70) NOT NULL,
  `SEQUENCE_VALUE` varchar(20) DEFAULT NULL,
  `VALUE1` varchar(100) DEFAULT NULL,
  `VALUE2` varchar(100) DEFAULT NULL,
  `VALUE3` varchar(100) DEFAULT NULL,
  `VALUE4` varchar(100) DEFAULT NULL,
  `VALUE5` varchar(100) DEFAULT NULL,
  `VALUE6` varchar(100) DEFAULT NULL,
  `VALUE7` varchar(100) DEFAULT NULL,
  `VALUE8` varchar(100) DEFAULT NULL,
  `VALUE9` varchar(100) DEFAULT NULL,
  `VALUE10` varchar(100) DEFAULT NULL,
  `VALUE11` varchar(100) DEFAULT NULL,
  `VALUE12` varchar(100) DEFAULT NULL,
  `VALUE13` varchar(100) DEFAULT NULL,
  `VALUE14` varchar(100) DEFAULT NULL,
  `VALUE15` varchar(100) DEFAULT NULL,
  `VALUE16` varchar(100) DEFAULT NULL,
  `VALUE17` varchar(100) DEFAULT NULL,
  `VALUE18` varchar(100) DEFAULT NULL,
  `VALUE19` varchar(100) DEFAULT NULL,
  `VALUE20` varchar(100) DEFAULT NULL,
  `VALUE21` varchar(100) DEFAULT NULL,
  `VALUE22` varchar(100) DEFAULT NULL,
  `VALUE23` varchar(100) DEFAULT NULL,
  `VALUE24` varchar(100) DEFAULT NULL,
  `VALUE25` varchar(100) DEFAULT NULL,
  `VALUE26` varchar(100) DEFAULT NULL,
  `VALUE27` varchar(100) DEFAULT NULL,
  `VALUE28` varchar(100) DEFAULT NULL,
  `VALUE29` varchar(100) DEFAULT NULL,
  `VALUE30` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `VERSION_ID` (`VERSION_ID`,`HASHCODE`),
  KEY `FK1815DFFD2C0FA2AA` (`VERSION_ID`),
  CONSTRAINT `FK1815DFFD2C0FA2AA` FOREIGN KEY (`VERSION_ID`) REFERENCES `thorn_rule_version` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule_table_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_rule_table_grt`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_rule_table_grt`;
CREATE TABLE `thorn_rule_table_grt` (
  `GROUP_RULE_TABLE_ID` bigint(20) NOT NULL,
  `RULE_TABLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`RULE_TABLE_ID`,`GROUP_RULE_TABLE_ID`),
  KEY `FK3724C09DD2E5A8CD` (`RULE_TABLE_ID`),
  KEY `FK3724C09DCE23A585` (`GROUP_RULE_TABLE_ID`),
  CONSTRAINT `FK3724C09DCE23A585` FOREIGN KEY (`GROUP_RULE_TABLE_ID`) REFERENCES `thorn_group_rule_table` (`ID`),
  CONSTRAINT `FK3724C09DD2E5A8CD` FOREIGN KEY (`RULE_TABLE_ID`) REFERENCES `thorn_rule_table` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule_table_grt
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_rule_table_item`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_rule_table_item`;
CREATE TABLE `thorn_rule_table_item` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RULE_TABLE_ID` bigint(20) NOT NULL,
  `REFERENCE` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `REFERENCE_TYPE` varchar(50) DEFAULT NULL,
  `ENUM_VALUES` varchar(255) DEFAULT NULL,
  `LINE_NO` bigint(20) NOT NULL,
  `GRADE_ITEM` bit(1) DEFAULT NULL,
  `REFERENCE_PROPERTY` varchar(50) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RULE_TABLE_ID` (`RULE_TABLE_ID`,`REFERENCE`,`TYPE`),
  KEY `FKAD7441BFD2E5A8CD` (`RULE_TABLE_ID`),
  CONSTRAINT `FKAD7441BFD2E5A8CD` FOREIGN KEY (`RULE_TABLE_ID`) REFERENCES `thorn_rule_table` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule_table_item
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_rule_version`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_rule_version`;
CREATE TABLE `thorn_rule_version` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RULE_TABLE_ID` bigint(20) NOT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL,
  `HASHCODE` varchar(70) NOT NULL,
  `CHECK_HASHCODE` varchar(70) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `BIND1` varchar(100) DEFAULT NULL,
  `BIND2` varchar(100) DEFAULT NULL,
  `BIND3` varchar(100) DEFAULT NULL,
  `BIND4` varchar(100) DEFAULT NULL,
  `BIND5` varchar(100) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `STARTDATE` date NOT NULL,
  `ENDDATE` date NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `HASHCODE` (`HASHCODE`),
  KEY `FK17891DDDFDF3669E` (`ORGAN_ID`),
  KEY `FK17891DDDD2E5A8CD` (`RULE_TABLE_ID`),
  CONSTRAINT `FK17891DDDD2E5A8CD` FOREIGN KEY (`RULE_TABLE_ID`) REFERENCES `thorn_rule_table` (`ID`),
  CONSTRAINT `FK17891DDDFDF3669E` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule_version
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_tasks`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_tasks`;
CREATE TABLE `thorn_tasks` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(100) NOT NULL,
  `SUBSCRIBER` varchar(100) NOT NULL,
  `MESSAGE_ID` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `NEXT_PROCESS_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL,
  `REPEAT_COUNT` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_tasks
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_tasks_config`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_tasks_config`;
CREATE TABLE `thorn_tasks_config` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TASK_GROUP` varchar(100) NOT NULL,
  `TASK_TYPE` varchar(100) NOT NULL,
  `TIME_SLICE` int(11) NOT NULL,
  `PROCESS_COUNT` int(11) NOT NULL,
  `REPEAT_COUNT` int(11) NOT NULL,
  `BE_ENABLED` bit(1) NOT NULL,
  `MIN_THRESHOLD` int(11) DEFAULT NULL,
  `MAX_THRESHOLD` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TASK_TYPE` (`TASK_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_tasks_config
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_tasks_monitor`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_tasks_monitor`;
CREATE TABLE `thorn_tasks_monitor` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TASK_GROUP` varchar(100) NOT NULL,
  `TASK_TYPE` varchar(100) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `READY_PROCESS_COUNT` int(11) DEFAULT NULL,
  `REPEAT_PROCESS_COUNT` int(11) DEFAULT NULL,
  `SUCCESS_COUNT` int(11) DEFAULT NULL,
  `FAIL_COUNT` int(11) DEFAULT NULL,
  `MONITOR_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_tasks_monitor
-- ----------------------------

-- ----------------------------
-- Table structure for `thorn_users`
-- ----------------------------
DROP TABLE IF EXISTS `thorn_users`;
CREATE TABLE `thorn_users` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DISCRIMINATOR` varchar(255) NOT NULL,
  `CODE` varchar(20) DEFAULT NULL,
  `DEPARTMENT` varchar(20) DEFAULT NULL,
  `LOGIN_NAME` varchar(50) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `STATUS` varchar(255) NOT NULL,
  `LOCALE` varchar(50) NOT NULL,
  `EXPIRY_DATE` date DEFAULT NULL,
  `PASSWORD_EXPIRY_DATE` date DEFAULT NULL,
  `TIME_ZONE` varchar(50) DEFAULT NULL,
  `WL_ID` varchar(150) DEFAULT NULL,
  `LONG_EXTEND1` bigint(20) DEFAULT NULL,
  `LONG_EXTEND2` bigint(20) DEFAULT NULL,
  `LONG_EXTEND3` bigint(20) DEFAULT NULL,
  `LONG_EXTEND4` bigint(20) DEFAULT NULL,
  `LONG_EXTEND5` bigint(20) DEFAULT NULL,
  `STR_EXTEND1` varchar(100) DEFAULT NULL,
  `STR_EXTEND2` varchar(100) DEFAULT NULL,
  `STR_EXTEND3` varchar(100) DEFAULT NULL,
  `STR_EXTEND4` varchar(100) DEFAULT NULL,
  `STR_EXTEND5` varchar(100) DEFAULT NULL,
  `STR_EXTEND6` varchar(150) DEFAULT NULL,
  `STR_EXTEND7` varchar(150) DEFAULT NULL,
  `STR_EXTEND8` varchar(150) DEFAULT NULL,
  `STR_EXTEND9` varchar(150) DEFAULT NULL,
  `STR_EXTEND10` varchar(150) DEFAULT NULL,
  `DATE_EXTEND1` date DEFAULT NULL,
  `DATE_EXTEND2` datetime DEFAULT NULL,
  `NEED_SELECT_PRINTER` bit(1) DEFAULT NULL,
  `FIRST_PAGE_ID` bigint(20) DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL,
  `BUSINESS_MODEL_ID` bigint(20) DEFAULT NULL,
  `CREATE_ORGAN_ID` bigint(20) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LOGIN_NAME` (`LOGIN_NAME`),
  KEY `FK5C081F80FDF3669E` (`ORGAN_ID`),
  KEY `FK5C081F8050815E88` (`FIRST_PAGE_ID`),
  KEY `FK5C081F8034925281` (`CREATE_ORGAN_ID`),
  KEY `FK5C081F80F2C53E88` (`BUSINESS_MODEL_ID`),
  CONSTRAINT `FK5C081F8034925281` FOREIGN KEY (`CREATE_ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`),
  CONSTRAINT `FK5C081F8050815E88` FOREIGN KEY (`FIRST_PAGE_ID`) REFERENCES `welcome_page` (`ID`),
  CONSTRAINT `FK5C081F80F2C53E88` FOREIGN KEY (`BUSINESS_MODEL_ID`) REFERENCES `thorn_business_model` (`ID`),
  CONSTRAINT `FK5C081F80FDF3669E` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_users
-- ----------------------------
INSERT INTO `thorn_users` VALUES ('1', 'com.vtradex.thorn.server.model.security.User', null, null, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'yan.li@vtradex.com', 'ACTIVE', 'zh', '2020-04-11', null, 'GMT+8', null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, '', null, '1', '1', '1', '1', 'admin', '2015-09-09 17:32:37', '1', 'admin', '2015-12-07 15:17:45');

-- ----------------------------
-- Table structure for `tms_city`
-- ----------------------------
DROP TABLE IF EXISTS `tms_city`;
CREATE TABLE `tms_city` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `TMS_PROVINCE_ID` bigint(20) NOT NULL,
  `CITY_LEVEL` varchar(20) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FK921F119033D2EB7A` (`TMS_PROVINCE_ID`),
  CONSTRAINT `FK921F119033D2EB7A` FOREIGN KEY (`TMS_PROVINCE_ID`) REFERENCES `tms_province` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_city
-- ----------------------------
INSERT INTO `tms_city` VALUES ('1', 'CS', null, '长沙', 'ACTIVE', '1', 'PREFECTURE', '1', 'admin', '2015-12-02 12:01:33', '1', 'admin', '2015-12-02 12:01:33');

-- ----------------------------
-- Table structure for `tms_leg`
-- ----------------------------
DROP TABLE IF EXISTS `tms_leg`;
CREATE TABLE `tms_leg` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TMS_ORDER_ID` bigint(20) DEFAULT NULL,
  `OLD_LEG_ID` bigint(20) DEFAULT NULL,
  `LEGNO` varchar(30) DEFAULT NULL,
  `LINE_NO` int(11) DEFAULT NULL,
  `EC_NO` varchar(50) DEFAULT NULL,
  `PLAT_FORM_ID` bigint(20) DEFAULT NULL,
  `CARRIER_ID` bigint(20) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `BE_SPLIT` bit(1) DEFAULT NULL,
  `FROM_RECEIVER_ID` bigint(20) DEFAULT NULL,
  `FROM_ADDRESS` varchar(255) DEFAULT NULL,
  `FROM_CONTACTNAME` varchar(100) DEFAULT NULL,
  `FROM_FAX` varchar(50) DEFAULT NULL,
  `FROM_EMAIL` varchar(50) DEFAULT NULL,
  `FROM_POSTCODE` varchar(50) DEFAULT NULL,
  `FROM_TELEPHONE` varchar(50) DEFAULT NULL,
  `FROM_MOBILE` varchar(50) DEFAULT NULL,
  `FROMCONTACT_LATITUDE` double DEFAULT '0',
  `FROMCONTACT_LONGITUDE` double DEFAULT '0',
  `TO_RECEIVER_ID` bigint(20) DEFAULT NULL,
  `TO_ADDRESS` varchar(255) DEFAULT NULL,
  `TO_CONTACTNAME` varchar(100) DEFAULT NULL,
  `TO_FAX` varchar(50) DEFAULT NULL,
  `TO_EMAIL` varchar(50) DEFAULT NULL,
  `TO_POSTCODE` varchar(50) DEFAULT NULL,
  `TO_TELEPHONE` varchar(50) DEFAULT NULL,
  `TO_MOBILE` varchar(50) DEFAULT NULL,
  `TOCONTACT_LATITUDE` double DEFAULT '0',
  `TOCONTACT_LONGITUDE` double DEFAULT '0',
  `FROM_LOCATION_ID` bigint(20) DEFAULT NULL,
  `TO_LOCATION_ID` bigint(20) DEFAULT NULL,
  `SHIPMENT_METHOD` varchar(20) NOT NULL,
  `LOADING_METHOD` varchar(20) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(30) DEFAULT NULL,
  `PLAN_LEAVE_TIME` datetime DEFAULT NULL,
  `LEAVE_TIME` datetime DEFAULT NULL,
  `PLAN_ARRIVE_TIME` datetime DEFAULT NULL,
  `ARRIVE_TIME` datetime DEFAULT NULL,
  `DELIVERY_TIME` datetime DEFAULT NULL,
  `QUANTITY` double DEFAULT NULL,
  `TORR` double DEFAULT NULL,
  `EXPENSE` double DEFAULT NULL,
  `VOLUME` double DEFAULT NULL,
  `WEIGHT` double DEFAULT NULL,
  `CHARGEABLE_WEIGHT` double DEFAULT NULL,
  `STOWAGE_TIME` datetime DEFAULT NULL,
  `SHIPMENT_TIME` datetime DEFAULT NULL,
  `FIRST_NEXT_LEG_ID` bigint(20) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SPLIT_MODE` varchar(20) DEFAULT NULL,
  `CAR_NO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TMS_ORDER_ID` (`TMS_ORDER_ID`,`EC_NO`),
  KEY `FKE3AE8D299945EB88` (`PLAT_FORM_ID`),
  KEY `FKE3AE8D296DCAC59` (`TO_LOCATION_ID`),
  KEY `FKE3AE8D298E39FDAA` (`FROM_RECEIVER_ID`),
  KEY `FKE3AE8D29A4556708` (`FROM_LOCATION_ID`),
  KEY `FKE3AE8D29F0C142FB` (`TO_RECEIVER_ID`),
  KEY `FKE3AE8D297168C1E5` (`OLD_LEG_ID`),
  KEY `FKE3AE8D29DE6DD73E` (`CUSTOMER_ID`),
  KEY `FKE3AE8D29781FE9E4` (`CARRIER_ID`),
  KEY `FKE3AE8D29A8A93992` (`TMS_ORDER_ID`),
  KEY `FKE3AE8D29633BD08A` (`FIRST_NEXT_LEG_ID`),
  CONSTRAINT `FKE3AE8D29633BD08A` FOREIGN KEY (`FIRST_NEXT_LEG_ID`) REFERENCES `tms_leg` (`ID`),
  CONSTRAINT `FKE3AE8D296DCAC59` FOREIGN KEY (`TO_LOCATION_ID`) REFERENCES `tms_translocation` (`ID`),
  CONSTRAINT `FKE3AE8D297168C1E5` FOREIGN KEY (`OLD_LEG_ID`) REFERENCES `tms_leg` (`ID`),
  CONSTRAINT `FKE3AE8D29781FE9E4` FOREIGN KEY (`CARRIER_ID`) REFERENCES `tms_organization` (`ID`),
  CONSTRAINT `FKE3AE8D298E39FDAA` FOREIGN KEY (`FROM_RECEIVER_ID`) REFERENCES `tms_receiver` (`ID`),
  CONSTRAINT `FKE3AE8D299945EB88` FOREIGN KEY (`PLAT_FORM_ID`) REFERENCES `tms_organization` (`ID`),
  CONSTRAINT `FKE3AE8D29A4556708` FOREIGN KEY (`FROM_LOCATION_ID`) REFERENCES `tms_translocation` (`ID`),
  CONSTRAINT `FKE3AE8D29A8A93992` FOREIGN KEY (`TMS_ORDER_ID`) REFERENCES `tms_order` (`ID`),
  CONSTRAINT `FKE3AE8D29DE6DD73E` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `tms_organization` (`ID`),
  CONSTRAINT `FKE3AE8D29F0C142FB` FOREIGN KEY (`TO_RECEIVER_ID`) REFERENCES `tms_receiver` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_leg
-- ----------------------------
INSERT INTO `tms_leg` VALUES ('73', '41', null, '客户1000038', '0', '客户1000038-1', null, null, '1', 'UNDISTRIBUTION', '', '2', '-', '-', '-', '-', '-', '-', null, '0', '0', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '3', '2', 'SEA', 'CONTAINER', 'LINK', null, null, null, null, null, '0', '0', '0', '0', '0', '0', null, null, '74', '1', 'admin', '2015-12-09 11:13:12', '1', 'admin', '2015-12-09 11:13:12', null, 'VERTICAL', null);
INSERT INTO `tms_leg` VALUES ('74', '41', null, '客户1000038', '0', '客户1000038-1-Z2', null, null, '1', 'UNDISTRIBUTION', '', '2', '-', '-', '-', '-', '-', '-', null, '0', '0', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '2', '4', 'SEA', 'CONTAINER', 'LINK', null, null, null, null, null, '0', '0', '0', '0', '0', '0', null, null, '75', '1', 'admin', '2015-12-09 11:13:12', '1', 'admin', '2015-12-09 11:13:12', null, 'VERTICAL', null);
INSERT INTO `tms_leg` VALUES ('75', '41', null, '客户1000038', '0', '客户1000038-1-Z3', null, null, '1', 'UNDISTRIBUTION', '', '2', '-', '-', '-', '-', '-', '-', null, '0', '0', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '4', '2', 'SEA', 'CONTAINER', 'LINK', null, null, null, null, null, '0', '0', '0', '0', '0', '0', null, null, null, '1', 'admin', '2015-12-09 11:13:12', '1', 'admin', '2015-12-09 11:13:12', null, 'VERTICAL', null);
INSERT INTO `tms_leg` VALUES ('76', '42', null, '客户1000039', '0', '客户1000039-1', null, null, '1', 'UNDISTRIBUTION', '', '2', '-', '-', '-', '-', '-', '-', null, '0', '0', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '3', '2', 'SEA', 'CONTAINER', 'LINK', null, null, null, null, null, '0', '0', '0', '0', '0', '0', null, null, '77', '1', 'admin', '2015-12-09 11:13:12', '1', 'admin', '2015-12-09 11:13:12', null, 'VERTICAL', null);
INSERT INTO `tms_leg` VALUES ('77', '42', null, '客户1000039', '0', '客户1000039-1-Z2', null, null, '1', 'UNDISTRIBUTION', '', '2', '-', '-', '-', '-', '-', '-', null, '0', '0', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '2', '4', 'SEA', 'CONTAINER', 'LINK', null, null, null, null, null, '0', '0', '0', '0', '0', '0', null, null, '78', '1', 'admin', '2015-12-09 11:13:12', '1', 'admin', '2015-12-09 11:13:12', null, 'VERTICAL', null);
INSERT INTO `tms_leg` VALUES ('78', '42', null, '客户1000039', '0', '客户1000039-1-Z3', null, null, '1', 'UNDISTRIBUTION', '', '2', '-', '-', '-', '-', '-', '-', null, '0', '0', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '4', '2', 'SEA', 'CONTAINER', 'LINK', null, null, null, null, null, '0', '0', '0', '0', '0', '0', null, null, null, '1', 'admin', '2015-12-09 11:13:12', '1', 'admin', '2015-12-09 11:13:12', null, 'VERTICAL', null);
INSERT INTO `tms_leg` VALUES ('79', '40', null, '客户1000037', '0', '客户1000037-1', null, null, '1', 'UNDISTRIBUTION', '', '2', '-', '-', '-', '-', '-', '-', null, '0', '0', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '3', '2', 'SEA', 'CONTAINER', 'LINK', null, null, null, null, null, '0', '0', '0', '0', '0', '0', null, null, '80', '1', 'admin', '2015-12-09 11:13:12', '1', 'admin', '2015-12-09 11:13:12', null, 'VERTICAL', null);
INSERT INTO `tms_leg` VALUES ('80', '40', null, '客户1000037', '0', '客户1000037-1-Z2', null, null, '1', 'UNDISTRIBUTION', '', '2', '-', '-', '-', '-', '-', '-', null, '0', '0', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '2', '4', 'SEA', 'CONTAINER', 'LINK', null, null, null, null, null, '0', '0', '0', '0', '0', '0', null, null, '81', '1', 'admin', '2015-12-09 11:13:12', '1', 'admin', '2015-12-09 11:13:12', null, 'VERTICAL', null);
INSERT INTO `tms_leg` VALUES ('81', '40', null, '客户1000037', '0', '客户1000037-1-Z3', null, null, '1', 'UNDISTRIBUTION', '', '2', '-', '-', '-', '-', '-', '-', null, '0', '0', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '4', '2', 'SEA', 'CONTAINER', 'LINK', null, null, null, null, null, '0', '0', '0', '0', '0', '0', null, null, null, '1', 'admin', '2015-12-09 11:13:12', '1', 'admin', '2015-12-09 11:13:12', null, 'VERTICAL', null);

-- ----------------------------
-- Table structure for `tms_leg_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tms_leg_detail`;
CREATE TABLE `tms_leg_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LEG_ID` bigint(20) DEFAULT NULL,
  `LINE_NO` int(11) NOT NULL,
  `LOT` varchar(30) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `QUANTITY` double DEFAULT NULL,
  `UNIT` varchar(10) NOT NULL,
  `VOLUME` double DEFAULT NULL,
  `WEIGHT` double DEFAULT NULL,
  `CHARGEABLE_WEIGHT` double DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LEG_ID` (`LEG_ID`,`LINE_NO`),
  KEY `FKFEC60C27C34C5CCD` (`LEG_ID`),
  KEY `FKFEC60C27CC5414EF` (`PRODUCT_ID`),
  CONSTRAINT `FKFEC60C27C34C5CCD` FOREIGN KEY (`LEG_ID`) REFERENCES `tms_leg` (`ID`),
  CONSTRAINT `FKFEC60C27CC5414EF` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `tms_product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_leg_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `tms_order`
-- ----------------------------
DROP TABLE IF EXISTS `tms_order`;
CREATE TABLE `tms_order` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `LOCKED` varchar(10) NOT NULL,
  `ORDER_MONITOR_STATUS` varchar(10) NOT NULL,
  `PLAT_FORM_ID` bigint(20) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `RELATEBILL1` varchar(30) DEFAULT NULL,
  `RELATEBILL2` varchar(30) DEFAULT NULL,
  `RELATEBILL3` varchar(255) DEFAULT NULL,
  `RELATEBILL4` varchar(30) DEFAULT NULL,
  `RELATEBILL5` varchar(30) DEFAULT NULL,
  `CUSTOMER_MODULUS` int(11) DEFAULT NULL,
  `ACCOUNT` date NOT NULL,
  `SHIPMENT_METHOD` varchar(20) DEFAULT NULL,
  `LOADING_METHOD` varchar(20) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(30) DEFAULT NULL,
  `ORDER_TYPE_ID` bigint(20) DEFAULT NULL,
  `GROUP_NO` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `WAREHOUSE_AREA` varchar(50) DEFAULT NULL,
  `ORDER_PLACE_DATE` datetime DEFAULT NULL,
  `PLAN_LEAVE_TIME` datetime DEFAULT NULL,
  `REQUIRE_ARRIVE_TIME` datetime DEFAULT NULL,
  `REQUIRE_DELIVERY_TIME` datetime DEFAULT NULL,
  `LEAVE_TIME` datetime DEFAULT NULL,
  `PLAN_ARRIVE_TIME` datetime DEFAULT NULL,
  `ARRIVE_TIME` datetime DEFAULT NULL,
  `REQUIRE_SIGN_BACK` datetime DEFAULT NULL,
  `DELIVERY_TIME` datetime DEFAULT NULL,
  `EXTEND_FIELD1` varchar(50) DEFAULT NULL,
  `EXTEND_FIELD2` varchar(50) DEFAULT NULL,
  `EXTEND_FIELD3` varchar(50) DEFAULT NULL,
  `EXTEND_FIELD4` bit(1) DEFAULT NULL,
  `EXTEND_FIELD5` bit(1) DEFAULT NULL,
  `QUANTITY` double DEFAULT NULL,
  `WEIGHT` double NOT NULL,
  `WEIGHTK` double NOT NULL,
  `CHARGEABLE_WEIGHT` double DEFAULT NULL,
  `TORR` double NOT NULL,
  `VOLUME` double NOT NULL,
  `EXPENSE` double DEFAULT NULL,
  `FROM_LOCATOIN_ID` bigint(20) DEFAULT NULL,
  `FROM_RECEIVER_ID` bigint(20) DEFAULT NULL,
  `TO_LOCATION_ID` bigint(20) DEFAULT NULL,
  `TO_RECEIVER_ID` bigint(20) DEFAULT NULL,
  `FROM_ADDRESS` varchar(255) DEFAULT NULL,
  `FROM_CONTACTNAME` varchar(100) DEFAULT NULL,
  `FROM_FAX` varchar(50) DEFAULT NULL,
  `FROM_EMAIL` varchar(50) DEFAULT NULL,
  `FROM_POSTCODE` varchar(50) DEFAULT NULL,
  `FROM_TELEPHONE` varchar(50) DEFAULT NULL,
  `FROM_MOBILE` varchar(50) DEFAULT NULL,
  `FROMCONTACT_LATITUDE` double DEFAULT '0',
  `FROMCONTACT_LONGITUDE` double DEFAULT '0',
  `TO_ADDRESS` varchar(255) DEFAULT NULL,
  `TO_CONTACTNAME` varchar(100) DEFAULT NULL,
  `TO_FAX` varchar(50) DEFAULT NULL,
  `TO_EMAIL` varchar(50) DEFAULT NULL,
  `TO_POSTCODE` varchar(50) DEFAULT NULL,
  `TO_TELEPHONE` varchar(50) DEFAULT NULL,
  `TO_MOBILE` varchar(50) DEFAULT NULL,
  `TOCONTACT_LATITUDE` double DEFAULT '0',
  `TOCONTACT_LONGITUDE` double DEFAULT '0',
  `BULK_LOAD_NUM` double DEFAULT NULL,
  `BULK_LOAD_PLACE` double DEFAULT NULL,
  `CURRENT_POSITION` varchar(255) DEFAULT NULL,
  `POSITION_TIME` datetime DEFAULT NULL,
  `ACTIVE_TIME` datetime DEFAULT NULL,
  `FEE_VEHICLE_MODEL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `GOODS_DAMAGE` double DEFAULT NULL,
  `REMNANT_DAMAGE` double DEFAULT NULL,
  `BOX_DAMAGE` double DEFAULT NULL,
  `SHORTAGE` double DEFAULT NULL,
  `ORIGINAL_SHORTAGE` double DEFAULT NULL,
  `WATERWET` double DEFAULT NULL,
  `REJECT_QUANTITY` double DEFAULT NULL,
  `SIGN_QUANTITY` double DEFAULT NULL,
  `FEE_GROUP_NO` varchar(255) DEFAULT NULL,
  `IS_BALANCE` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FKB27013A9AE3DEDBC` (`FROM_LOCATOIN_ID`),
  KEY `FKB27013A99945EB88` (`PLAT_FORM_ID`),
  KEY `FKB27013A96DCAC59` (`TO_LOCATION_ID`),
  KEY `FKB27013A98E39FDAA` (`FROM_RECEIVER_ID`),
  KEY `FKB27013A9F0C142FB` (`TO_RECEIVER_ID`),
  KEY `FKB27013A931DB6A33` (`ORDER_TYPE_ID`),
  KEY `FKB27013A9DE6DD73E` (`CUSTOMER_ID`),
  CONSTRAINT `FKB27013A931DB6A33` FOREIGN KEY (`ORDER_TYPE_ID`) REFERENCES `tms_order_type` (`ID`),
  CONSTRAINT `FKB27013A96DCAC59` FOREIGN KEY (`TO_LOCATION_ID`) REFERENCES `tms_translocation` (`ID`),
  CONSTRAINT `FKB27013A98E39FDAA` FOREIGN KEY (`FROM_RECEIVER_ID`) REFERENCES `tms_receiver` (`ID`),
  CONSTRAINT `FKB27013A99945EB88` FOREIGN KEY (`PLAT_FORM_ID`) REFERENCES `tms_organization` (`ID`),
  CONSTRAINT `FKB27013A9AE3DEDBC` FOREIGN KEY (`FROM_LOCATOIN_ID`) REFERENCES `tms_translocation` (`ID`),
  CONSTRAINT `FKB27013A9DE6DD73E` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `tms_organization` (`ID`),
  CONSTRAINT `FKB27013A9F0C142FB` FOREIGN KEY (`TO_RECEIVER_ID`) REFERENCES `tms_receiver` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_order
-- ----------------------------
INSERT INTO `tms_order` VALUES ('40', '客户1000037', 'AVAILABLE', 'UNLOCKED', '6NU', null, '1', null, null, null, null, null, '0', '2015-12-01', 'SEA', 'CONTAINER', 'LINK', '1', null, '0', null, '2015-12-03 17:35:00', null, null, null, null, null, null, null, null, 'STANDAND', 'CITYINSIDE', null, '', '', '0', '0', '0', '0', '0', '0', '0', '3', '2', '1', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '-', '-', '-', '-', '-', '-', null, '0', '0', '0', '0', null, null, null, null, null, '1', 'admin', '2015-12-03 17:35:57', '1', 'admin', '2015-12-09 11:13:12', '0', '0', '0', '0', '0', '0', '0', '0', null, '');
INSERT INTO `tms_order` VALUES ('41', '客户1000038', 'AVAILABLE', 'UNLOCKED', '6NU', null, '1', null, null, null, null, null, '0', '2015-12-01', 'SEA', 'CONTAINER', 'LINK', '1', null, '0', null, '2015-12-03 17:35:00', null, null, null, null, null, null, null, null, 'STANDAND', 'CITYINSIDE', null, '', '', '0', '0', '0', '0', '0', '0', '0', '3', '2', '1', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '-', '-', '-', '-', '-', '-', null, '0', '0', '0', '0', null, null, null, null, null, '1', 'admin', '2015-12-03 17:35:57', '1', 'admin', '2015-12-09 11:13:12', '0', '0', '0', '0', '0', '0', '0', '0', null, '');
INSERT INTO `tms_order` VALUES ('42', '客户1000039', 'AVAILABLE', 'UNLOCKED', '6NU', null, '1', null, null, null, null, null, '0', '2015-12-01', 'SEA', 'CONTAINER', 'LINK', '1', null, '0', null, '2015-12-03 17:35:00', null, null, null, null, null, null, null, null, 'STANDAND', 'CITYINSIDE', null, '', '', '0', '0', '0', '0', '0', '0', '0', '3', '2', '1', '1', '-', '-', '-', '-', '-', '-', null, '0', '0', '-', '-', '-', '-', '-', '-', null, '0', '0', '0', '0', null, null, null, null, null, '1', 'admin', '2015-12-03 17:35:57', '1', 'admin', '2015-12-09 11:13:12', '0', '0', '0', '0', '0', '0', '0', '0', null, '');

-- ----------------------------
-- Table structure for `tms_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tms_order_detail`;
CREATE TABLE `tms_order_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `LINE_NO` int(11) NOT NULL,
  `BE_LEVEL` bit(1) DEFAULT NULL,
  `BE_REJECT` bit(1) DEFAULT NULL,
  `BOX_DAMAGE` double DEFAULT NULL,
  `GOODS_DAMAGE` double DEFAULT NULL,
  `ORIGINAL_SHORTAGE` double DEFAULT NULL,
  `LOT` varchar(30) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `QUANTITY` double NOT NULL,
  `REMNANT_DAMAGE` double DEFAULT NULL,
  `SHORTAGE` double DEFAULT NULL,
  `SIGN_QUANTITY` double DEFAULT NULL,
  `CURRENT_SIGN_QUANTITY` double DEFAULT NULL,
  `UN_SIGN_QUANTITY` double DEFAULT NULL,
  `UNIT` varchar(10) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `VOLUME` double NOT NULL,
  `WATERWET` double NOT NULL,
  `WEIGHT` double NOT NULL,
  `CHARGEABLE_WEIGHT` double DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `REJECT_QUANTITY` double DEFAULT NULL,
  `ROW_NO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK12F835A74672C0D` (`ORDER_ID`),
  KEY `FK12F835A7CC5414EF` (`PRODUCT_ID`),
  CONSTRAINT `FK12F835A74672C0D` FOREIGN KEY (`ORDER_ID`) REFERENCES `tms_order` (`ID`),
  CONSTRAINT `FK12F835A7CC5414EF` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `tms_product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `tms_order_type`
-- ----------------------------
DROP TABLE IF EXISTS `tms_order_type`;
CREATE TABLE `tms_order_type` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `STATUS` varchar(30) DEFAULT NULL,
  `CUSTOMER` bigint(20) NOT NULL,
  `SHIPMENT_METHOD` varchar(30) DEFAULT NULL,
  `LOADING_METHOD` varchar(30) DEFAULT NULL,
  `TYPE` varchar(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FKE5690E106C2EDA00` (`CUSTOMER`),
  CONSTRAINT `FKE5690E106C2EDA00` FOREIGN KEY (`CUSTOMER`) REFERENCES `tms_organization` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_order_type
-- ----------------------------
INSERT INTO `tms_order_type` VALUES ('1', '服务产品1', '服务产品1', 'ACTIVE', '1', 'SEA', 'BULKLOAD', 'OUT', null, '1', 'admin', '2015-12-02 12:58:58', '1', 'admin', '2015-12-02 12:58:58');

-- ----------------------------
-- Table structure for `tms_organization`
-- ----------------------------
DROP TABLE IF EXISTS `tms_organization`;
CREATE TABLE `tms_organization` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `SIMPLE_CODE` varchar(30) NOT NULL,
  `TMS_CITY_ID` bigint(20) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `CONTACTNAME` varchar(100) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `POSTCODE` varchar(50) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(50) DEFAULT NULL,
  `LATITUDE` double DEFAULT '0',
  `LONGITUDE` double DEFAULT '0',
  `STATUS` varchar(20) NOT NULL,
  `BELONG_AREA` varchar(50) DEFAULT NULL,
  `IS_CARRIER` bit(1) DEFAULT NULL,
  `IS_CUSTOMER` bit(1) DEFAULT NULL,
  `IS_PLATFORM` bit(1) DEFAULT NULL,
  `IS_SALE` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`,`IS_CARRIER`,`IS_CUSTOMER`,`IS_PLATFORM`,`IS_SALE`),
  KEY `FK98C760581828DD9A` (`TMS_CITY_ID`),
  CONSTRAINT `FK98C760581828DD9A` FOREIGN KEY (`TMS_CITY_ID`) REFERENCES `tms_city` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_organization
-- ----------------------------
INSERT INTO `tms_organization` VALUES ('1', '客户1', '客户1', '客户1', '1', null, null, null, null, null, null, null, '0', '0', 'ACTIVE', null, '', '', null, null, null, '1', 'admin', '2015-12-02 12:55:21', '1', 'admin', '2015-12-02 12:55:21');
INSERT INTO `tms_organization` VALUES ('2', '客户2', '客户2', '客户2', '1', null, null, null, null, null, null, null, '0', '0', 'ACTIVE', null, '', '', null, null, null, '1', 'admin', '2015-12-02 12:57:02', '1', 'admin', '2015-12-02 12:57:12');

-- ----------------------------
-- Table structure for `tms_organization_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tms_organization_detail`;
CREATE TABLE `tms_organization_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TMS_ORGANIZATION_ID1` bigint(20) NOT NULL,
  `TMS_ORGANIZATION_ID2` bigint(20) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TMS_ORGANIZATION_ID1` (`TMS_ORGANIZATION_ID1`,`TMS_ORGANIZATION_ID2`),
  KEY `FK890116189E81F411` (`TMS_ORGANIZATION_ID1`),
  KEY `FK890116189E81F412` (`TMS_ORGANIZATION_ID2`),
  CONSTRAINT `FK890116189E81F411` FOREIGN KEY (`TMS_ORGANIZATION_ID1`) REFERENCES `tms_organization` (`ID`),
  CONSTRAINT `FK890116189E81F412` FOREIGN KEY (`TMS_ORGANIZATION_ID2`) REFERENCES `tms_organization` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_organization_detail
-- ----------------------------
INSERT INTO `tms_organization_detail` VALUES ('1', '2', '1', '1', 'admin', '2015-12-02 12:57:12', '1', 'admin', '2015-12-02 12:57:12');

-- ----------------------------
-- Table structure for `tms_product`
-- ----------------------------
DROP TABLE IF EXISTS `tms_product`;
CREATE TABLE `tms_product` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) NOT NULL,
  `COST` double DEFAULT NULL,
  `TMS_ORGANAZITION_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SALE` double DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TMS_PRODUCT_ID` bigint(20) NOT NULL,
  `UNIT` varchar(255) DEFAULT NULL,
  `UOM` varchar(255) DEFAULT NULL,
  `UPC` varchar(255) DEFAULT NULL,
  `PRODUCT_KIND` varchar(255) DEFAULT NULL,
  `PRODUCT_KIND2` varchar(255) DEFAULT NULL,
  `PRODUCT_KIND3` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FKC3AAA8A89D6EA4` (`TMS_ORGANAZITION_ID`),
  KEY `FKC3AAA8ABEFFF68E` (`TMS_PRODUCT_ID`),
  CONSTRAINT `FKC3AAA8A89D6EA4` FOREIGN KEY (`TMS_ORGANAZITION_ID`) REFERENCES `tms_organization` (`ID`),
  CONSTRAINT `FKC3AAA8ABEFFF68E` FOREIGN KEY (`TMS_PRODUCT_ID`) REFERENCES `tms_product_type` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_product
-- ----------------------------
INSERT INTO `tms_product` VALUES ('1', '酒', null, '1', null, '酒', null, 'ACTIVE', '1', '瓶', 'CUBE', null, null, null, null, '1', 'admin', '2015-12-02 12:59:48', '1', 'admin', '2015-12-02 12:59:48');

-- ----------------------------
-- Table structure for `tms_product_type`
-- ----------------------------
DROP TABLE IF EXISTS `tms_product_type`;
CREATE TABLE `tms_product_type` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) DEFAULT NULL,
  `TMS_ORGANAZITION_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FK90BE9BCF89D6EA4` (`TMS_ORGANAZITION_ID`),
  CONSTRAINT `FK90BE9BCF89D6EA4` FOREIGN KEY (`TMS_ORGANAZITION_ID`) REFERENCES `tms_organization` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_product_type
-- ----------------------------
INSERT INTO `tms_product_type` VALUES ('1', '食品', '1', null, '食品', 'ACTIVE');

-- ----------------------------
-- Table structure for `tms_province`
-- ----------------------------
DROP TABLE IF EXISTS `tms_province`;
CREATE TABLE `tms_province` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TMS_ZONE_ID` bigint(20) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FK7C1300D5E2C229FA` (`TMS_ZONE_ID`),
  CONSTRAINT `FK7C1300D5E2C229FA` FOREIGN KEY (`TMS_ZONE_ID`) REFERENCES `tms_zone` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_province
-- ----------------------------
INSERT INTO `tms_province` VALUES ('1', 'HN', '湖南', '1', 'ACTIVE', null, '1', 'admin', '2015-12-02 12:00:27', '1', 'admin', '2015-12-02 12:00:27');

-- ----------------------------
-- Table structure for `tms_real_mileage`
-- ----------------------------
DROP TABLE IF EXISTS `tms_real_mileage`;
CREATE TABLE `tms_real_mileage` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ACTUALMILEAGE` double DEFAULT NULL,
  `BASICMILEAGE` double DEFAULT NULL,
  `FROMCITY` bigint(20) NOT NULL,
  `TOCITY` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `FROMCITY` (`FROMCITY`,`TOCITY`),
  KEY `FK6295F22EFCFB1F65` (`FROMCITY`),
  KEY `FK6295F22E136145B6` (`TOCITY`),
  CONSTRAINT `FK6295F22E136145B6` FOREIGN KEY (`TOCITY`) REFERENCES `tms_city` (`ID`),
  CONSTRAINT `FK6295F22EFCFB1F65` FOREIGN KEY (`FROMCITY`) REFERENCES `tms_city` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_real_mileage
-- ----------------------------

-- ----------------------------
-- Table structure for `tms_receiver`
-- ----------------------------
DROP TABLE IF EXISTS `tms_receiver`;
CREATE TABLE `tms_receiver` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `SIMPLE_NAME` varchar(50) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `TMS_CITY_ID` bigint(20) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `CONTACTNAME` varchar(100) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `POSTCODE` varchar(50) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(50) DEFAULT NULL,
  `LATITUDE` double DEFAULT '0',
  `LONGITUDE` double DEFAULT '0',
  `CUSTOMER` bigint(20) NOT NULL,
  `SALESORG` bigint(20) DEFAULT NULL,
  `TRANS_LOCATION_ID` bigint(20) DEFAULT NULL,
  `RECEIVER_TYPE_ID` bigint(20) DEFAULT NULL,
  `POSITION_ADDRESS` varchar(255) DEFAULT NULL,
  `POZITION_STATUS` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FK86BABF9481C6B506` (`TRANS_LOCATION_ID`),
  KEY `FK86BABF94BB81947A` (`SALESORG`),
  KEY `FK86BABF944DD0749E` (`RECEIVER_TYPE_ID`),
  KEY `FK86BABF946C2EDA00` (`CUSTOMER`),
  KEY `FK86BABF941828DD9A` (`TMS_CITY_ID`),
  CONSTRAINT `FK86BABF941828DD9A` FOREIGN KEY (`TMS_CITY_ID`) REFERENCES `tms_city` (`ID`),
  CONSTRAINT `FK86BABF944DD0749E` FOREIGN KEY (`RECEIVER_TYPE_ID`) REFERENCES `tms_receiver_type` (`ID`),
  CONSTRAINT `FK86BABF946C2EDA00` FOREIGN KEY (`CUSTOMER`) REFERENCES `tms_organization` (`ID`),
  CONSTRAINT `FK86BABF9481C6B506` FOREIGN KEY (`TRANS_LOCATION_ID`) REFERENCES `tms_translocation` (`ID`),
  CONSTRAINT `FK86BABF94BB81947A` FOREIGN KEY (`SALESORG`) REFERENCES `tms_organization` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_receiver
-- ----------------------------
INSERT INTO `tms_receiver` VALUES ('1', '收货方1', '收货方1', null, 'ACTIVE', '1', null, null, null, null, null, null, null, '0', '0', '1', null, '1', null, null, 'NO_POSITION', null, '1', 'admin', '2015-12-02 12:57:51', '1', 'admin', '2015-12-02 12:57:51');
INSERT INTO `tms_receiver` VALUES ('2', '发货方1', '发货方1', null, 'ACTIVE', '1', null, null, null, null, null, null, null, '0', '0', '1', null, '3', null, null, 'NO_POSITION', null, '1', 'admin', '2015-12-02 12:58:27', '1', 'admin', '2015-12-02 12:58:27');

-- ----------------------------
-- Table structure for `tms_receiver_type`
-- ----------------------------
DROP TABLE IF EXISTS `tms_receiver_type`;
CREATE TABLE `tms_receiver_type` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `CONTACTNAME` varchar(100) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `POSTCODE` varchar(50) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(50) DEFAULT NULL,
  `LATITUDE` double DEFAULT '0',
  `LONGITUDE` double DEFAULT '0',
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`,`CUSTOMER_ID`),
  KEY `FK8D141D05DE6DD73E` (`CUSTOMER_ID`),
  CONSTRAINT `FK8D141D05DE6DD73E` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `tms_organization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_receiver_type
-- ----------------------------

-- ----------------------------
-- Table structure for `tms_translocation`
-- ----------------------------
DROP TABLE IF EXISTS `tms_translocation`;
CREATE TABLE `tms_translocation` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TMS_CITY_ID` bigint(20) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `CONTACTNAME` varchar(100) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `POSTCODE` varchar(50) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(50) DEFAULT NULL,
  `LATITUDE` double DEFAULT '0',
  `LONGITUDE` double DEFAULT '0',
  `TRANSLOCATION_TYPE_ID` bigint(20) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FKEC8A5BB8E316D1F0` (`TRANSLOCATION_TYPE_ID`),
  KEY `FKEC8A5BB81828DD9A` (`TMS_CITY_ID`),
  CONSTRAINT `FKEC8A5BB81828DD9A` FOREIGN KEY (`TMS_CITY_ID`) REFERENCES `tms_city` (`ID`),
  CONSTRAINT `FKEC8A5BB8E316D1F0` FOREIGN KEY (`TRANSLOCATION_TYPE_ID`) REFERENCES `tms_translocation_type` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_translocation
-- ----------------------------
INSERT INTO `tms_translocation` VALUES ('1', 'TRAN1', '运输地1', '1', 'ACTIVE', null, null, null, null, null, null, null, null, '0', '0', '3', '1', 'admin', '2015-12-02 12:54:19', '1', 'admin', '2015-12-02 12:54:19');
INSERT INTO `tms_translocation` VALUES ('2', 'TRAN2', '运输地2', '1', 'ACTIVE', null, null, null, null, null, null, null, null, '0', '0', '3', '1', 'admin', '2015-12-02 12:54:38', '1', 'admin', '2015-12-02 12:54:38');
INSERT INTO `tms_translocation` VALUES ('3', 'TRAN3', '运输地3', '1', 'ACTIVE', null, null, null, null, null, null, null, null, '0', '0', '3', '1', 'admin', '2015-12-02 12:54:51', '1', 'admin', '2015-12-02 12:54:51');
INSERT INTO `tms_translocation` VALUES ('4', 'TRAN4', '运输地4', '1', 'ACTIVE', null, null, null, null, null, null, null, null, '0', '0', '3', '1', 'admin', '2015-12-02 13:48:28', '1', 'admin', '2015-12-02 13:48:28');

-- ----------------------------
-- Table structure for `tms_translocation_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tms_translocation_detail`;
CREATE TABLE `tms_translocation_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) NOT NULL,
  `DELIVERY_ID` bigint(20) NOT NULL,
  `DELIVERY_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TMS_ORGANIZATION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TYPE` (`TYPE`,`DELIVERY_ID`,`TMS_ORGANIZATION_ID`),
  KEY `FK926E8EB86BDF90A4` (`TMS_ORGANIZATION_ID`),
  CONSTRAINT `FK926E8EB86BDF90A4` FOREIGN KEY (`TMS_ORGANIZATION_ID`) REFERENCES `tms_organization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_translocation_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `tms_translocation_type`
-- ----------------------------
DROP TABLE IF EXISTS `tms_translocation_type`;
CREATE TABLE `tms_translocation_type` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_translocation_type
-- ----------------------------
INSERT INTO `tms_translocation_type` VALUES ('1', 'TRAN1', '运输地1', 'UNACTIVE', '1', 'admin', '2015-12-02 12:01:53', '1', 'admin', '2015-12-02 12:53:49');
INSERT INTO `tms_translocation_type` VALUES ('2', 'TRAN2', '运输地2', 'UNACTIVE', '1', 'admin', '2015-12-02 12:02:04', '1', 'admin', '2015-12-02 12:53:51');
INSERT INTO `tms_translocation_type` VALUES ('3', 'TRAN3', '运输地3', 'ACTIVE', '1', 'admin', '2015-12-02 12:02:23', '1', 'admin', '2015-12-02 12:02:23');

-- ----------------------------
-- Table structure for `tms_zone`
-- ----------------------------
DROP TABLE IF EXISTS `tms_zone`;
CREATE TABLE `tms_zone` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tms_zone
-- ----------------------------
INSERT INTO `tms_zone` VALUES ('1', 'HZ', null, '华中', 'ACTIVE', '1', 'admin', '2015-12-02 12:00:13', '1', 'admin', '2015-12-02 12:00:13');

-- ----------------------------
-- Table structure for `user_search`
-- ----------------------------
DROP TABLE IF EXISTS `user_search`;
CREATE TABLE `user_search` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(50) NOT NULL,
  `PAGE_ID` varchar(100) NOT NULL,
  `USER_ID` bigint(20) NOT NULL,
  `SEARCH_ID` bigint(20) NOT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TYPE` (`TYPE`,`PAGE_ID`,`USER_ID`,`SEARCH_ID`),
  KEY `FK134EA89C4125F14B` (`USER_ID`),
  KEY `FK134EA89CE517E636` (`SEARCH_ID`),
  CONSTRAINT `FK134EA89C4125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`),
  CONSTRAINT `FK134EA89CE517E636` FOREIGN KEY (`SEARCH_ID`) REFERENCES `customer_search` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_search
-- ----------------------------

-- ----------------------------
-- Table structure for `welcome_page`
-- ----------------------------
DROP TABLE IF EXISTS `welcome_page`;
CREATE TABLE `welcome_page` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `WP_KEY` varchar(255) NOT NULL,
  `WP_VALUE` varchar(255) NOT NULL,
  `IS_THORN_PAGE` char(1) NOT NULL,
  `REF_MODEL` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATOR_ID` bigint(20) DEFAULT NULL,
  `CREATOR` varchar(50) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `LAST_OPERATOR_ID` bigint(20) DEFAULT NULL,
  `LAST_OPERATOR` varchar(50) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welcome_page
-- ----------------------------
