/*
Navicat MySQL Data Transfer

Source Server         : mysql_localhost
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : training_test

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2015-09-16 14:16:33
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
-- Table structure for `enumerate`
-- ----------------------------
DROP TABLE IF EXISTS `enumerate`;
CREATE TABLE `enumerate` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ENUM_TYPE` varchar(50) NOT NULL,
  `ENUM_VALUE` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ENUM_TYPE` (`ENUM_TYPE`,`ENUM_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enumerate
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exception_log
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of global_params
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------

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
  CONSTRAINT `FK28D05A4FB419B0B6` FOREIGN KEY (`JOBUSER_ID`) REFERENCES `thorn_job_user` (`ID`),
  CONSTRAINT `FK28D05A4F3C4668F6` FOREIGN KEY (`GRANTOR_JOBUSER_ID`) REFERENCES `thorn_job_user` (`ID`),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_base_organization
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_business_model
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_groups
-- ----------------------------

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
  CONSTRAINT `FK869EA695DDD8DFBE` FOREIGN KEY (`THORN_JOB_ID`) REFERENCES `thorn_job` (`ID`),
  CONSTRAINT `FK869EA6954125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_model_menu
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_roles
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_rule_directory
-- ----------------------------

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
-- Table structure for thorn_rule_table
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  CONSTRAINT `FK5C081F80F2C53E88` FOREIGN KEY (`BUSINESS_MODEL_ID`) REFERENCES `thorn_business_model` (`ID`),
  CONSTRAINT `FK5C081F8034925281` FOREIGN KEY (`CREATE_ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`),
  CONSTRAINT `FK5C081F8050815E88` FOREIGN KEY (`FIRST_PAGE_ID`) REFERENCES `welcome_page` (`ID`),
  CONSTRAINT `FK5C081F80FDF3669E` FOREIGN KEY (`ORGAN_ID`) REFERENCES `thorn_base_organization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thorn_users
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
  CONSTRAINT `FK134EA89CE517E636` FOREIGN KEY (`SEARCH_ID`) REFERENCES `customer_search` (`ID`),
  CONSTRAINT `FK134EA89C4125F14B` FOREIGN KEY (`USER_ID`) REFERENCES `thorn_users` (`ID`)
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



insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (112, 'ACTIVE', '1');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (113, 'ACTIVE', '2');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (114, 'ACTIVE', '3');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (115, 'ACTIVE', '4');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (110, 'BaseStatus', 'ACTIVE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (111, 'BaseStatus', 'UNACTIVE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (64, 'BooleanType', 'false');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (63, 'BooleanType', 'true');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (119, 'CityStatus', 'ACTIVE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (120, 'CityStatus', 'UNACTIVE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (121, 'CityStatus', 'WAIT_APPROVAL');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (30, 'Control', 'booleanList');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (27, 'Control', 'checkBox');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (24, 'Control', 'date');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (28, 'Control', 'dateRanger');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (23, 'Control', 'list');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (26, 'Control', 'multiRemote');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (25, 'Control', 'numberText');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (22, 'Control', 'remote');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (21, 'Control', 'text');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (29, 'Control', 'textArea');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (15, 'FileGrammarType', 'HQL');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (16, 'FileGrammarType', 'SQL');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (17, 'FileStyle', 'picture');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (18, 'FileStyle', 'pictureText');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (20, 'FileStyle', 'sql');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (19, 'FileStyle', 'text');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (13, 'FileType', 'REPORT');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (14, 'FileType', 'SQL');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (12, 'FixedFee', 'DAY');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (11, 'FixedFee', 'MONTH');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (10, 'GlobalParamType', 'P_BEAN');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (9, 'GlobalParamType', 'P_BOOLEAN');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (5, 'GlobalParamType', 'P_CHAR');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (7, 'GlobalParamType', 'P_DOUBLE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (8, 'GlobalParamType', 'P_INT');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (6, 'GlobalParamType', 'P_STRING');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (47, 'HQL', 'boolean');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (48, 'HQL', 'char');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (45, 'HQL', 'double');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (44, 'HQL', 'int');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (46, 'HQL', 'String');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (1, 'LocalType', 'en');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (2, 'LocalType', 'zh');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (3, 'ModelType', 'origen');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (62, 'OperatorType', 'BETWEEN');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (59, 'OperatorType', 'BOTH');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (49, 'OperatorType', 'EQ');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (52, 'OperatorType', 'GE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (51, 'OperatorType', 'GT');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (57, 'OperatorType', 'IN');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (56, 'OperatorType', 'IS_NOT_NULL');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (55, 'OperatorType', 'IS_NULL');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (54, 'OperatorType', 'LE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (60, 'OperatorType', 'LEFT');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (53, 'OperatorType', 'LT');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (50, 'OperatorType', 'NOT');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (58, 'OperatorType', 'NOT_IN');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (61, 'OperatorType', 'RIGHT');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (39, 'ParameterType', 'binary');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (34, 'ParameterType', 'boolean');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (35, 'ParameterType', 'char');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (38, 'ParameterType', 'date');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (32, 'ParameterType', 'double');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (31, 'ParameterType', 'int');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (37, 'ParameterType', 'integer');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (33, 'ParameterType', 'string');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (36, 'ParameterType', 'varchar');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (74, 'ReferenceType', 'boolean');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (75, 'ReferenceType', 'list');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (73, 'ReferenceType', 'string');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (69, 'RuleStatus', 'OFF_LINE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (68, 'RuleStatus', 'ON_LINE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (66, 'RuleTableItem', '2_REFERENCE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (67, 'RuleTableItem', '4_VALUE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (72, 'RuleTableVersionStatus', 'MODIFY');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (70, 'RuleTableVersionStatus', 'ON_LINE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (71, 'RuleTableVersionStatus', 'UNACTIVE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (40, 'SQL', 'binary');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (41, 'SQL', 'date');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (42, 'SQL', 'integer');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (43, 'SQL', 'varchar');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (123, 'ThornApproveProcessStatus', 'CLOSE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (122, 'ThornApproveProcessStatus', 'OPEN');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (125, 'ThornApproveProcessType', 'AGREE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (126, 'ThornApproveProcessType', 'REFUSE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (124, 'ThornApproveProcessType', 'SUBMIT_APPROVE');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (116, 'UNACTIVE', 'A');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (117, 'UNACTIVE', 'B');
insert into enumerate (ID, ENUM_TYPE, ENUM_VALUE) values (118, 'UNACTIVE', 'C');

insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (1, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'tempFileDir', 'P_STRING', '临时文件路径配置', 'd:/temp/tempFile', null, '上传文件存放的临时文件夹', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (2, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'imageFileDir', 'P_STRING', '临时文件路径配置', 'd:/temp/imageFile', null, '图片存放的文件夹', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (3, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'otherFileDir', 'P_STRING', '临时文件路径配置', 'd:/temp/otherFile', null, '需要永久存放的非图片文件的文件夹', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (6, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'maintainTableDecimal', 'P_INT', '页面布局设置', '6', null, '维护屏二维表格如果是小数需要保留的小数位数', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (8, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'IS_ASH', 'P_BOOLEAN', '页面布局设置', 'true', '', '右键弹出菜单不可用时变灰或不可见(true－变灰 false－不可见)', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (9, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'ACK_CLOSEWINDOW', 'P_STRING', '页面布局设置', 'ALT-X', null, '弹出窗口关闭热键', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (10, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'reportURL', 'P_STRING', '报表服务器配置', 'http://127.0.0.1:8088/tms5/reportJsp/showReport.jsp', '', '报表服务器URL地址', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (11, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'clientUserInfo', 'P_BEAN', '全局变量设置', '', 'userInfoInClient', '前台用户登陆时显示的用户信息（如：当前用户：admin）', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'round', 'P_BOOLEAN', '页面布局设置', 'true', null, '小数位数处理时是否四舍五入(默认四舍五入)', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (13, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'imageSource', 'P_STRING', '临时文件路径配置', 'd:/temp/image/source', null, '影像归档图片源文件夹', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (14, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'imageTarget', 'P_STRING', '临时文件路径配置', 'd:/temp/image/target', null, '影像归档图片目标文件夹', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (16, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'IMPORT_REPLACE', 'P_STRING', '全局变量设置', 'false', null, '导入业务数据时是否替换已存在业务数据(true-替换,false-不替换)', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (17, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SESSION_USERS', 'P_BEAN', '全局变量设置', '', 'userSession', '当前用户全局变量', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (18, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SAVE_SYSTEM_LOG', 'P_STRING', '全局变量设置', 'true', null, '是否开启保存操作日志', 'tms5', 1, 'admin', null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (19, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'APPROVE_NUMBER_PAGE', 'P_INT', '全局变量设置', '20', null, '审批页面分页数', 'tms5', 1, 'admin', null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (20, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'DISPLAY_PAGE_HELP', 'P_STRING', '全局变量设置', 'true', '', '是否显示查看页面路径提示', 'tms5', 1, 'admin', null, 7, 'test5', '2011-08-08 15:49:23');
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (21, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'EXPORT_SUPPORT', 'P_STRING', '全局变量设置', 'true', '', '标准表格页面是否支持导出,刷新', 'tms5', 1, 'admin', null, 2, 'test', '2012-01-09 10:57:30');
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (22, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SESSION_MODEL', 'P_BEAN', '全局变量设置', '', 'bussinessModelSession', '当前模型全局变量', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (23, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'modelInfoInClient', 'P_BEAN', '全局变量设置', '', 'modelInfoInClient', '前台用户登陆时显示的组织模型信息', 'tms5', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (24, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SESSION_BASE_ORGAN', 'P_BEAN', '全局变量设置', '', 'baseOrganizationSession', '当前模型全局变量', 'tms5', null, null, null, null, null, null);

INSERT INTO thorn_business_model ( ID, DISCRIMINATOR, CODE, NAME, STATUS, REMARK, BE_SYS_MODEL, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME ) VALUES ( 1, 'com.vtradex.thorn.server.model.security.ThornBusinessModel', 'SYSTEM_MODEL', '系统管理模型', 'ACTIVE', '', 'Y', 1, 'admin', '2015-09-10 00:00:00', 1, 'admin', '2015-09-10 00:00:00' );
INSERT INTO thorn_base_organization ( ID, DISCRIMINATOR, CODE, NAME, BUSINESS_MODEL_ID, REMARK, BE_HAVE_CUSTOM_RULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME ) VALUES ( 1, 'com.vtradex.thorn.server.model.security.ThornBaseOrganization', 	'SYSTEM_MODEL_ORG', '系统管理部', 1, '', 'N', 1, 'admin', '2015-09-10 00:00:00', 1, 'admin', '2015-09-10 00:00:00' );


insert into thorn_roles (ID, CODE, NAME, ADVANCED, ORGAN_ID, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME, BUSINESS_MODEL_ID,CREATE_ORGAN_ID) values (1, 'SUPERVISOR', '超级管理员', 'T', null, 1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00', 1,1);
insert into thorn_roles (ID, CODE, NAME, ADVANCED, ORGAN_ID, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME, BUSINESS_MODEL_ID,CREATE_ORGAN_ID) values (2, 'SYSTEM_MODEL_MANAGER', '系统模型_管理员', 'T', null, 1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00', 1,1);

insert into thorn_groups (ID, CODE, NAME, ORGAN_ID,BUSINESS_MODEL_ID, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (1, 'SYSMAN', '超级管理组', null,1, 1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00');
insert into thorn_groups (ID, CODE, NAME, ORGAN_ID,BUSINESS_MODEL_ID, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (2, 'SYSTEM_MODEL_GROUP', '系统模型_管理组', null,1, 1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00');

insert into thorn_group_role (ROLE_ID, GROUP_ID) values (1, 1);
insert into thorn_group_role (ROLE_ID, GROUP_ID) values (2, 2);

insert into thorn_users (ID, DISCRIMINATOR, CODE, LOGIN_NAME, NAME, PASSWORD, DEPARTMENT, ORGAN_ID, EMAIL, STATUS, LOCALE, EXPIRY_DATE, PASSWORD_EXPIRY_DATE, LONG_EXTEND1, LONG_EXTEND2, LONG_EXTEND3, LONG_EXTEND4, LONG_EXTEND5, STR_EXTEND1, STR_EXTEND2, STR_EXTEND3, STR_EXTEND4, STR_EXTEND5, FIRST_PAGE_ID, NEED_SELECT_PRINTER, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME, STR_EXTEND6, STR_EXTEND7, STR_EXTEND8, STR_EXTEND9, STR_EXTEND10, DATE_EXTEND1, DATE_EXTEND2, WL_ID, TIME_ZONE,BUSINESS_MODEL_ID,CREATE_ORGAN_ID) values (1, 'com.vtradex.thorn.server.model.security.User', null, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', null, 1, 'yan.li@vtradex.com', 'ACTIVE', 'zh', '2020-04-11', null, null, null, null, null, null, null, null, '', null, null, null, false, 1, 'admin', '2015-09-09 17:32:37', 1, 'admin', '2015-09-10 09:34:20', null, null, null, null, null, null, null, null, 'GMT+8',1,1);

insert into thorn_group_user (USER_ID, GROUP_ID) values (1, 1);
insert into thorn_group_user (USER_ID, GROUP_ID) values (1, 2);

insert into thorn_organ_user(ORGAN_ID,USER_ID) values (1, 1);

insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12464, 'page', 'groupProcess.bindRoles', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12465, 'page', 'versionProcess.upLine', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12466, 'page', 'versionProcess.export', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12467, 'page', 'thornRoleProcess.reportPermission', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12468, 'page', 'versionProcess.delete', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12469, 'page', 'thornRoleProcess.dataPermission', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12470, 'page', 'maintainGroupRuleTableSystemPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12471, 'page', 'thornUserProcess.bindGroup', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12472, 'page', 'maintainPrettifyRuleTablePage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12473, 'page', 'prettifyRuleTableProcess.save', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12474, 'page', 'reportProcess.add', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12475, 'page', 'businessModelProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12476, 'page', 'ruleTableProcess.setFeference', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12477, 'page', 'reportProcess.paramInput', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12478, 'page', 'maintainReportConfigPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12479, 'page', 'maintainThornBaseOrganizationPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12480, 'page', 'ruleProcess.copyDirectory', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12481, 'page', 'groupProcess.bindUsers', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12482, 'page', 'groupRuleTableProcess.delete', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12483, 'page', 'ruleTableProcess.setFeferenceView', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12484, 'page', 'versionProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12485, 'page', 'baseOrganizationProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12486, 'page', 'reportProcess.down', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12487, 'page', 'maintainThornSystemGroupPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12488, 'page', 'thornUserProcess.unActive', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12489, 'page', 'baseOrganizationProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12490, 'page', 'reportProcess.delete', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12491, 'page', 'prettifyRuleTableProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12492, 'page', 'thornRoleProcess.rfPermission', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12493, 'page', 'ruleProcess.onLine', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12494, 'page', 'IGPProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12495, 'page', 'maintainRuleSystemPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12496, 'page', 'groupRuleTableProcess.view', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12497, 'page', 'maintainRuleTableSystemPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12498, 'page', 'maintainThornBusinessModePage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12499, 'page', 'businessModelProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12500, 'page', 'versionProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12501, 'page', 'businessModelProcess.menuConfig', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12502, 'page', 'maintainGroupRuleTablePage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12503, 'page', 'maintainRuleTableVersionPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12504, 'page', 'ruleProcess.import', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12505, 'page', 'reportProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12506, 'page', 'ruleProcess.newDirectory', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12507, 'page', 'maintainRuleTableSystemPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12508, 'page', 'maintainGroupRuleTableSystemPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12509, 'page', 'thornRoleProcess.copyPermission', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12510, 'page', 'prettifyRuleTableProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12511, 'page', 'maintainIGPPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12512, 'page', 'maintainRuleTablePage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12513, 'page', 'reportProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12514, 'page', 'thornRoleProcess.menuPermission', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12515, 'page', 'thornUserProcess.viewRole', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12516, 'page', 'groupProcess.delete', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12517, 'page', 'maintainThornGroupPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12518, 'page', 'versionProcess.import', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12519, 'page', 'groupProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12520, 'page', 'reportProcess.view', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12521, 'page', 'reportProcess.up', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12522, 'page', 'versionProcess.unActive', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12523, 'page', 'groupRuleTableProcess.import', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12524, 'page', 'ruleTableProcess.delete', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12525, 'page', 'thornRoleProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12526, 'page', 'versionProcess.editRuleTableDetail', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12527, 'page', 'maintainRulePage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12528, 'page', 'maintainThornGroupPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12529, 'page', 'thornUserProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12530, 'page', 'prettifyRuleTableProcess.search', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12531, 'page', 'groupRuleTableProcess.export', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12532, 'page', 'groupProcess.active', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12533, 'page', 'maintainThornSystemUserPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12534, 'page', 'ruleProcess.dataSourceSave', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12535, 'page', 'groupRuleTableProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12536, 'page', 'ruleProcess.export', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12537, 'page', 'prettifyRuleTableProcess.delete', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12538, 'page', 'thornUserProcess.add', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12539, 'page', 'ruleTableProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12540, 'page', 'ruleProcess.deleteDirectory', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12541, 'page', 'reportProcess.import', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12542, 'page', 'maintainGroupRuleTablePage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12543, 'page', 'maintainRuleTablePage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12544, 'page', 'businessModelProcess.unActive', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12545, 'page', 'thornRoleProcess.delete', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12546, 'page', 'groupProcess.viewUsers', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12547, 'page', 'maintainThornBaseOrganizationPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12548, 'page', 'groupProcess.add', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12549, 'page', 'businessModelProcess.active', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12550, 'page', 'thornUserProcess.remove', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12551, 'page', 'thornUserProcess.delete', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12552, 'page', 'maintainThornSystemUserPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12553, 'page', 'businessModelProcess.reportConfig', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12554, 'page', 'maintainReportConfigPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12555, 'page', 'maintainThornSystemGroupPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12556, 'page', 'maintainThornSystemRolePage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12557, 'page', 'maintainThornUserPage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12558, 'page', 'reportProcess.active', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12559, 'page', 'maintainIGPPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12560, 'page', 'reportProcess.colInput', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12561, 'page', 'maintainThornBusinessModePage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12562, 'page', 'ruleProcess.feeRuleSave', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12563, 'page', 'thornRoleProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12564, 'page', 'maintainThornRolePage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12565, 'page', 'groupProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12566, 'page', 'ruleProcess.reset', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12567, 'page', 'maintainThornRolePage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12568, 'page', 'groupProcess.unActive', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12569, 'page', 'thornRoleProcess.add', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12570, 'page', 'maintainThornUserPage.beExportGridData', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12571, 'page', 'IGPProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12572, 'page', 'ruleProcess.directorySave', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12573, 'page', 'ruleTableProcess.modify', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12574, 'page', 'reportProcess.unActive', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12575, 'page', 'ruleProcess.newFeeRuleItem', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12576, 'page', 'thornUserProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12577, 'page', 'maintainThornSystemRolePage', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12578, 'page', 'thornUserProcess.active', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12579, 'page', 'ruleProcess.downLine', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12580, 'page', 'ruleProcess.newDataSourceItem', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12581, 'page', 'groupRuleTableProcess.new', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12582, 'page', 'reportProcess.export', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12583, 'page', 'businessModelProcess.rfConfig', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12584, 'page', 'ruleProcess.deleteFeeRule', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12585, 'page', 'ruleProcess.deleteDataSource', 1, null, null, null, null, null, null, null);
insert into permissions (ID, DISCRIMINATOR, ELEMENT_ID, ROLE_ID, EXPRESSION, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12586, 'page', 'maintainRuleTableVersionPage', 1, null, null, null, null, null, null, null);

 
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(59,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'模型管理','PAGE','Y',1,null,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','security','Y','N','thorn5-client');    
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(60,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'模型管理','PAGE','N',1,59,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornBusinessModePage','N','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(61,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'组织维护','PAGE','N',2,59,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornBaseOrganizationPage','N','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(62,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'权限管理','PAGE','N',3,59,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','right','Y','N','thorn5-client');   
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(63,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'规则管理','PAGE','N',4,59,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','right','Y','N','thorn5-rule');       
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(64,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'全局参数管理','PAGE','N',5,59,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainIGPPage','N','Y','thorn5-client'); 
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(65,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'报表配置','PAGE','N',6,59,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainReportConfigPage','N','Y','thorn5-rmc'); 

   
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(66,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'用户管理(模型级)','PAGE','N',1,62,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornSystemUserPage','N','Y','thorn5-client');    
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(67,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'角色管理(模型级)','PAGE','N',2,62,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornSystemRolePage','N','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(68,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'用户组管理(模型级)','PAGE','N',3,62,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornSystemGroupPage','N','Y','thorn5-client');

INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(69,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'规则管理(模型级)','PAGE','N',1,63,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainRuleSystemPage','N','Y','thorn5-rule');    
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(70,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'规则表设计(模型级)','PAGE','N',2,63,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainRuleTableSystemPage','N','Y','thorn5-rule'); 
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(71,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'分组管理(模型级)','PAGE','N',3,63,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainGroupRuleTableSystemPage','N','Y','thorn5-rule');  
 

INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(100,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'组织管理','PAGE','Y',1,null,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','security','Y','N','thorn5-client');    
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(101,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'权限管理','PAGE','N',1,100,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','right','Y','N','thorn5-client');   
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(102,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'规则管理','PAGE','N',2,100,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','rule','Y','N','thorn5-rule');       
   
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(103,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'用户管理','PAGE','N',1,101,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornUserPage','N','Y','thorn5-client');    
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(104,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'角色管理','PAGE','N',2,101,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornRolePage','N','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(105,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'用户组管理','PAGE','N',3,101,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornGroupPage','N','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(106,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'规则表设计','PAGE','N',1,102,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','ruleTable','Y','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(107,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'规则表管理','PAGE','N',2,102,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainRuleTableVersionPage','N','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(108,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'规则表高级设计','PAGE','N',3,102,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainPrettifyRuleTablePage','N','Y','thorn5-client');


INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(109,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'规则管理','PAGE','N',1,106,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainRulePage','N','Y','thorn5-rule');    
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(110,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'规则表设计','PAGE','N',2,106,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainRuleTablePage','N','Y','thorn5-rule'); 
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(111,'com.vtradex.thorn.server.model.security.ThornModelMenu',1,'分组管理','PAGE','N',3,106,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainGroupRuleTablePage','N','Y','thorn5-rule');            
    
 

  
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(300,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'组织管理','PAGE','Y',1,null,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','security','Y','N','thorn5-client');    
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(301,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'权限管理','PAGE','N',1,300,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','right','Y','N','thorn5-client');   
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(302,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'规则管理','PAGE','N',2,300,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','rule','Y','N','thorn5-rule');       
   
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(303,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'用户管理','PAGE','N',1,301,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornUserPage','N','Y','thorn5-client');    
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(304,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'角色管理','PAGE','N',2,301,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornRolePage','N','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(305,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'用户组管理','PAGE','N',3,301,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainThornGroupPage','N','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(306,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'规则表设计','PAGE','N',1,302,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','ruleTable','Y','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(307,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'规则表管理','PAGE','N',2,302,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainRuleTableVersionPage','N','Y','thorn5-client');
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(308,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'规则表高级设计','PAGE','N',3,302,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainPrettifyRuleTablePage','N','Y','thorn5-client');


INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(309,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'规则管理','PAGE','N',1,306,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainRulePage','N','Y','thorn5-rule');    
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(310,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'规则表设计','PAGE','N',2,306,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainRuleTablePage','N','Y','thorn5-rule'); 
INSERT INTO thorn_model_menu(ID,DISCRIMINATOR,BUSINESS_MODEL_ID,NAME,TYPE,ROOT,LINE_NO,PARENT_ID,CREATOR_ID,CREATOR,CREATED_TIME,LAST_OPERATOR_ID,LAST_OPERATOR,UPDATE_TIME,KEY_VALUE,BE_MENU,BE_SYSTEM_PAGE,SYSTEM_SRC)
    VALUES(311,'com.vtradex.thorn.server.model.security.ThornModelMenu',null,'分组管理','PAGE','N',3,306,1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00','maintainGroupRuleTablePage','N','Y','thorn5-rule');    
   