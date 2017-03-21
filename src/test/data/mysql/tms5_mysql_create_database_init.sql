-- 初始化原始登录数据|清空所有表以后,执行下面的脚本,可以正常登陆,如不能,请尝试更新全局变量表的模型为tms5
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

insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (1, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'tempFileDir', 'P_STRING', '临时文件路径配置', 'd:/temp/tempFile', null, '上传文件存放的临时文件夹', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (2, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'imageFileDir', 'P_STRING', '临时文件路径配置', 'd:/temp/imageFile', null, '图片存放的文件夹', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (3, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'otherFileDir', 'P_STRING', '临时文件路径配置', 'd:/temp/otherFile', null, '需要永久存放的非图片文件的文件夹', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (6, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'maintainTableDecimal', 'P_INT', '页面布局设置', '6', null, '维护屏二维表格如果是小数需要保留的小数位数', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (8, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'IS_ASH', 'P_BOOLEAN', '页面布局设置', 'true', '', '右键弹出菜单不可用时变灰或不可见(true－变灰 false－不可见)', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (9, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'ACK_CLOSEWINDOW', 'P_STRING', '页面布局设置', 'ALT-X', null, '弹出窗口关闭热键', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (10, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'reportURL', 'P_STRING', '报表服务器配置', 'http://127.0.0.1:8088/tms5/reportJsp/showReport.jsp', '', '报表服务器URL地址', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (11, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'clientUserInfo', 'P_BEAN', '全局变量设置', '', 'userInfoInClient', '前台用户登陆时显示的用户信息（如：当前用户：admin）', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (12, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'round', 'P_BOOLEAN', '页面布局设置', 'true', null, '小数位数处理时是否四舍五入(默认四舍五入)', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (13, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'imageSource', 'P_STRING', '临时文件路径配置', 'd:/temp/image/source', null, '影像归档图片源文件夹', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (14, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'imageTarget', 'P_STRING', '临时文件路径配置', 'd:/temp/image/target', null, '影像归档图片目标文件夹', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (16, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'IMPORT_REPLACE', 'P_STRING', '全局变量设置', 'false', null, '导入业务数据时是否替换已存在业务数据(true-替换,false-不替换)', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (17, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SESSION_USERS', 'P_BEAN', '全局变量设置', '', 'userSession', '当前用户全局变量', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (18, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SAVE_SYSTEM_LOG', 'P_STRING', '全局变量设置', 'true', null, '是否开启保存操作日志', 'tms', 1, 'admin', null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (19, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'APPROVE_NUMBER_PAGE', 'P_INT', '全局变量设置', '20', null, '审批页面分页数', 'tms', 1, 'admin', null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (20, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'DISPLAY_PAGE_HELP', 'P_STRING', '全局变量设置', 'true', '', '是否显示查看页面路径提示', 'tms', 1, 'admin', null, 7, 'test5', '2011-08-08 15:49:23');
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (21, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'EXPORT_SUPPORT', 'P_STRING', '全局变量设置', 'true', '', '标准表格页面是否支持导出,刷新', 'tms', 1, 'admin', null, 2, 'test', '2012-01-09 10:57:30');
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (22, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SESSION_MODEL', 'P_BEAN', '全局变量设置', '', 'bussinessModelSession', '当前模型全局变量', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (23, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'modelInfoInClient', 'P_BEAN', '全局变量设置', '', 'modelInfoInClient', '前台用户登陆时显示的组织模型信息', 'tms', null, null, null, null, null, null);
insert into global_params (ID, DISCRIMINATOR, PARAM_ID, TYPE, GROUP_NAME, PARAM_VALUE, PARAM_BEAN, DESCRIPTION, MODULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (24, 'com.vtradex.thorn.server.config.globalparam.GlobalParam', 'SESSION_BASE_ORGAN', 'P_BEAN', '全局变量设置', '', 'baseOrganizationSession', '当前模型全局变量', 'tms', null, null, null, null, null, null);

INSERT INTO thorn_business_model ( ID, DISCRIMINATOR, CODE, NAME, STATUS, REMARK, BE_SYS_MODEL, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME ) VALUES ( 1, 'com.vtradex.thorn.server.model.security.ThornBusinessModel', 'SYSTEM_MODEL', '系统管理模型', 'ACTIVE', '', 'Y', 1, 'admin', '2015-09-10 00:00:00', 1, 'admin', '2015-09-10 00:00:00' );
INSERT INTO thorn_base_organization ( ID, DISCRIMINATOR, CODE, NAME, BUSINESS_MODEL_ID, REMARK, BE_HAVE_CUSTOM_RULE, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME ) VALUES ( 1, 'com.vtradex.thorn.server.model.security.ThornBaseOrganization', 	'SYSTEM_MODEL_ORG', '系统管理部', 1, '', 'Y', 1, 'admin', '2015-09-10 00:00:00', 1, 'admin', '2015-09-10 00:00:00' );

insert into thorn_roles (ID, CODE, NAME, ADVANCED, ORGAN_ID, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME, BUSINESS_MODEL_ID,CREATE_ORGAN_ID) values (1, 'SUPERVISOR', '超级管理员', 'T', null, 1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00', 1,1);
insert into thorn_roles (ID, CODE, NAME, ADVANCED, ORGAN_ID, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME, BUSINESS_MODEL_ID,CREATE_ORGAN_ID) values (2, 'SYSTEM_MODEL_MANAGER', '系统模型_管理员', 'T', null, 1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00', 1,1);

insert into thorn_groups (ID, CODE, NAME, ORGAN_ID,BUSINESS_MODEL_ID, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (1, 'SYSMAN', '超级管理组', null,1, 1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00');
insert into thorn_groups (ID, CODE, NAME, ORGAN_ID,BUSINESS_MODEL_ID, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME) values (2, 'SYSTEM_MODEL_GROUP', '系统模型_管理组', null,1, 1,'admin','2015-09-10 00:00:00',1,'admin','2015-09-10 00:00:00');

insert into thorn_group_role (ROLE_ID, GROUP_ID) values (1, 1);
insert into thorn_group_role (ROLE_ID, GROUP_ID) values (2, 2);

insert into thorn_users (ID, DISCRIMINATOR, CODE, LOGIN_NAME, NAME, PASSWORD, DEPARTMENT, ORGAN_ID, EMAIL, STATUS, LOCALE, EXPIRY_DATE, PASSWORD_EXPIRY_DATE, LONG_EXTEND1, LONG_EXTEND2, LONG_EXTEND3, LONG_EXTEND4, LONG_EXTEND5, STR_EXTEND1, STR_EXTEND2, STR_EXTEND3, STR_EXTEND4, STR_EXTEND5, FIRST_PAGE_ID, NEED_SELECT_PRINTER, CREATOR_ID, CREATOR, CREATED_TIME, LAST_OPERATOR_ID, LAST_OPERATOR, UPDATE_TIME, STR_EXTEND6, STR_EXTEND7, STR_EXTEND8, STR_EXTEND9, STR_EXTEND10, DATE_EXTEND1, DATE_EXTEND2, WL_ID, TIME_ZONE,BUSINESS_MODEL_ID,CREATE_ORGAN_ID) values (1, 'com.vtradex.thorn.server.model.security.ThornUser', null, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', null, 1, 'yan.li@vtradex.com', 'ACTIVE', 'zh', '2020-04-11', null, null, null, null, null, null, null, null, '', null, null, null, false, 1, 'admin', '2015-09-09 17:32:37', 1, 'admin', '2015-09-10 09:34:20', null, null, null, null, null, null, null, null, 'GMT+8',1,1);

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