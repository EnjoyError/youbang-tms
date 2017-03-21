-- 初始化基础数据|插入测试业务数据|OMS
INSERT INTO `tms_province` VALUES ('1', 'HB', '湖北省', 'A', null, 'HYZ', '2016-11-07 14:04:12', null, 'HYZ', '2016-11-07 14:04:18');
INSERT INTO `tms_province` VALUES ('2', 'GD', '广东省', 'A', null, 'HYZ', '2016-11-07 14:07:52', null, 'HYZ', '2016-11-07 14:07:57');

INSERT INTO `tms_city` VALUES ('1', 'BJ', '北京市', 'A', null, null, 'HYZ', '2016-11-07 14:01:15', null, 'HYZ', '2016-11-07 14:01:30');
INSERT INTO `tms_city` VALUES ('2', 'SH', '上海市', 'A', null, null, 'HYZ', '2016-11-07 14:03:02', null, 'HYZ', '2016-11-07 14:03:07');
INSERT INTO `tms_city` VALUES ('3', 'WH', '武汉市', 'A', '1', null, 'HYZ', '2016-11-07 14:05:09', null, 'HYZ', '2016-11-07 14:05:15');
INSERT INTO `tms_city` VALUES ('4', 'GZ', '广州市', 'A', '2', null, 'HYZ', '2016-11-07 14:09:21', null, 'HYZ', '2016-11-07 14:09:29');

INSERT INTO `tms_district` VALUES ('1', 'BYQ', '白云区', 'A', '4', null, 'HYZ', '2016-11-07 14:12:30', null, 'HYZ', '2016-11-07 14:12:35');
INSERT INTO `tms_district` VALUES ('2', 'CNQ', '长宁区', 'A', '2', null, 'HYZ', '2016-11-07 14:13:19', null, 'HYZ', '2016-11-07 14:13:23');
INSERT INTO `tms_district` VALUES ('3', 'CYQ', '朝阳区', 'A', '1', null, 'HYZ', '2016-11-07 14:13:51', null, 'HYZ', '2016-11-07 14:13:57');
INSERT INTO `tms_district` VALUES ('4', 'WCQ', '武昌区', 'A', '3', null, 'HYZ', '2016-11-07 14:14:35', null, 'HYZ', '2016-11-07 14:14:39');

INSERT INTO `tms_location` VALUES ('1', 'GZBYW', '广州白云仓库', 'W', '2', 'A', null, null, '2', '4', '1', '机场路1号', '510080', null, null, null, null, null, null, 'HYZ', '2016-11-07 14:26:35', null, 'HYZ', '2016-11-07 14:26:41');
INSERT INTO `tms_location` VALUES ('2', 'WHWCC', '武汉武昌仓库', 'W', '2', 'A', null, null, '1', '3', '4', '民主路1号', '430060', null, null, null, null, null, null, 'HYZ', '2016-11-07 14:36:26', null, 'HYZ', '2016-11-07 14:36:30');
INSERT INTO `tms_location` VALUES ('3', 'SHCNS', '上海长宁店', 'S', '2', 'A', null, null, null, '2', '2', '天山路1号', '200336', null, null, null, null, null, null, 'HYZ', '2016-11-07 14:37:39', null, 'HYZ', '2016-11-07 14:37:44');
INSERT INTO `tms_location` VALUES ('4', 'BJCYS', '北京朝阳店', 'S', '2', 'A', null, null, null, '1', '3', '广渠路1号', '100022', null, null, null, null, null, null, 'HYZ', '2016-11-07 14:39:11', null, 'HYZ', '2016-11-07 14:39:16');

INSERT INTO `tms_vehicle_type` VALUES ('1', 'WL25', '威铃25吨货车', 'M', '厢式', null, null, null, null, null, '60', '25000', 'A', null, null, 'HYZ', '2016-11-07 15:05:57', null, 'HYZ', '2016-11-07 15:06:01');

INSERT INTO `tms_driver` VALUES ('1', '张三', '12345', null, null, null, null, null, null, null, '1350000', '', null, null, 'A', null, 'HYZ', '2016-11-07 15:03:52', null, 'HYZ', '2016-11-07 15:03:57');
INSERT INTO `tms_driver` VALUES ('2', '李四', '56789', null, null, null, null, null, null, null, '1380000', null, null, null, 'A', null, 'HYZ', '2016-11-07 15:04:38', null, 'HYZ', '2016-11-07 15:04:42');

INSERT INTO `tms_logistics_provider` VALUES ('1', '2', null, 'DB', '德邦', null, 'C', 'N', 'A', null, null, null, null, null, null, null, null, null, null, null, 'HYZ', '2016-11-07 14:54:08', null, 'HYZ', '2016-11-07 14:54:14');
INSERT INTO `tms_logistics_provider` VALUES ('2', '2', '3', 'SHHW', '上海华为', null, 'C', 'Y', 'A', null, null, null, null, null, null, null, null, null, null, null, 'HYZ', '2016-11-07 14:55:16', null, 'HYZ', '2016-11-07 14:55:21');

INSERT INTO `tms_vehicle` VALUES ('1', '粤A100', null, '1', '1', '1', null, 'A', null, null, 'HYZ', '2016-11-07 15:07:21', null, 'HYZ', '2016-11-07 15:07:26');
INSERT INTO `tms_vehicle` VALUES ('2', '粤A200', null, '1', '1', '2', null, 'A', null, null, 'HYZ', '2016-11-07 15:07:57', null, 'HYZ', '2016-11-07 15:08:01');

INSERT INTO `tms_customer` VALUES ('1', 'GM', '国美电器', null, 'A', null, null, null, null, null, null, null, null, null, null, null, 'HYZ', '2016-11-07 14:40:52', null, 'HYZ', '2016-11-07 14:40:58');
INSERT INTO `tms_customer` VALUES ('2', 'SN', '苏宁电器', null, 'A', null, null, null, null, null, null, null, null, null, null, null, 'HYZ', '2016-11-07 14:41:22', null, 'HYZ', '2016-11-07 14:41:28');

INSERT INTO `tms_consignor_consignee` VALUES ('1', '1', 'GZBYWC', '广州白云仓库', 'Y', 'N', '1', 'A', null, 'HYZ', '2016-11-07 14:43:38', null, 'HYZ', '2016-11-07 14:43:44');
INSERT INTO `tms_consignor_consignee` VALUES ('2', '1', 'SHCNSC', '上海长宁店', 'N', 'Y', '3', 'A', null, 'HYZ', '2016-11-07 14:45:03', null, 'HYZ', '2016-11-07 14:45:09');
INSERT INTO `tms_consignor_consignee` VALUES ('3', '1', 'BJCYSC', '北京朝阳店', 'N', 'Y', '4', 'A', null, 'HYZ', '2016-11-07 14:46:00', null, 'HYZ', '2016-11-07 14:46:05');
INSERT INTO `tms_consignor_consignee` VALUES ('4', '2', 'GZBYWC', '广州白云仓库', 'Y', 'N', '1', 'A', null, 'HYZ', '2016-11-07 14:48:07', null, 'HYZ', '2016-11-07 14:48:15');
INSERT INTO `tms_consignor_consignee` VALUES ('5', '2', 'BJCYSC', '北京朝阳店', 'N', 'Y', '4', 'A', null, 'HYZ', '2016-11-07 14:49:02', null, 'HYZ', '2016-11-07 14:49:07');

INSERT INTO `tms_customer_goods` VALUES ('1', '1', 'PC', '电脑', null, null, null, null, null, null, null, null, null, 'A', null, null, 'HYZ', '2016-11-07 14:51:02', null, 'HYZ', '2016-11-07 14:51:06');
INSERT INTO `tms_customer_goods` VALUES ('2', '1', 'MP', '手机', null, null, null, null, null, null, null, null, null, 'A', null, null, 'HYZ', '2016-11-07 14:51:36', null, 'HYZ', '2016-11-07 14:51:40');
INSERT INTO `tms_customer_goods` VALUES ('3', '2', 'MP', '手机', null, null, null, null, null, null, null, null, null, 'A', null, null, 'HYZ', '2016-11-07 14:52:08', null, 'HYZ', '2016-11-07 14:52:13');

INSERT INTO `tms_customer_org_relation` VALUES ('1', '1', '2', null, 'HYZ', '2016-11-07 14:49:48', null, 'HYZ', '2016-11-07 14:49:55');
INSERT INTO `tms_customer_org_relation` VALUES ('2', '2', '2', null, 'HYZ', '2016-11-07 14:50:18', null, 'HYZ', '2016-11-07 14:50:24');

INSERT INTO `tms_service_product` VALUES ('1', null, '1', 'PM', '精准汽运', 'A', null, null, 'HYZ', '2016-11-07 14:58:12', null, 'HYZ', '2016-11-07 14:58:17');
INSERT INTO `tms_service_product` VALUES ('2', '2', null, 'ST', '标准运输', 'A', null, null, 'HYZ', '2016-11-07 15:02:13', null, 'HYZ', '2016-11-07 15:02:21');

INSERT INTO `oms_task_type` VALUES ('1', '运输1', 'T', 'A', null, null, 'HYZ', '2016-11-07 15:10:10', null, 'HYZ', '2016-11-07 15:10:14');
INSERT INTO `oms_task_type` VALUES ('2', '运输2', 'T', 'A', null, null, 'HYZ', '2016-11-07 15:10:01', null, 'HYZ', '2016-11-07 15:10:06');
INSERT INTO `oms_task_type` VALUES ('3', '运输3', 'T', 'A', null, null, 'HYZ', '2016-11-07 15:10:26', null, 'HYZ', '2016-11-07 15:10:30');

INSERT INTO `oms_execute_plan` VALUES ('1', '2', '广东北京线方案1', 'A', null, null, 'HYZ', '2016-11-07 15:12:08', null, 'HYZ', '2016-11-07 15:12:13');
INSERT INTO `oms_execute_plan` VALUES ('2', '2', '广东北京线方案2', 'A', null, null, 'HYZ', '2016-11-07 15:13:00', null, 'HYZ', '2016-11-07 15:13:04');

INSERT INTO `oms_execute_plan_detail` VALUES ('1', '1', '1', null, '1', null, '2', null, null, 'TS', '12', null, 'admin', '2016-11-08 14:03:00', null, 'admin', '2016-11-08 14:03:07');
INSERT INTO `oms_execute_plan_detail` VALUES ('2', '1', '2', '1', '1', '2', '3', 'TP', '1', 'TS', '12', null, 'admin', '2016-11-08 14:04:51', null, 'admin', '2016-11-08 14:04:56');
INSERT INTO `oms_execute_plan_detail` VALUES ('3', '1', '3', '1', '2', '3', null, 'TP', '1', null, null, null, 'admin', '2016-11-08 14:06:58', null, 'admin', '2016-11-08 14:07:03');
INSERT INTO `oms_execute_plan_detail` VALUES ('4', '2', '1', null, '1', null, '3', null, null, 'TS', '24', null, 'admin', '2016-11-08 14:08:18', null, 'admin', '2016-11-08 14:08:23');
INSERT INTO `oms_execute_plan_detail` VALUES ('5', '2', '2', '2', '2', '3', null, 'TP', '1', null, null, null, 'admin', '2016-11-08 14:09:35', null, 'admin', '2016-11-08 14:09:40');

INSERT INTO `oms_execute_plan_match` VALUES ('1', '2', '1', '2', 'B9', '2', null, null, null, null, '4', '1', 'A', null, 'HYZ', '2016-11-07 15:16:15', null, 'HYZ', '2016-11-07 15:16:22');
INSERT INTO `oms_execute_plan_match` VALUES ('2', '2', '2', '2', 'A9', null, '4', null, null, '1', null, '2', 'A', null, 'HYZ', '2016-11-07 15:18:12', null, 'HYZ', '2016-11-07 15:18:17');
