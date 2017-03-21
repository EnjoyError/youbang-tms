package com.vtradex.testing;

import org.springframework.test.AbstractDependencyInjectionSpringContextTests;

//import com.alibaba.fastjson.JSON;
//import com.vtradex.testing.integration.util.bean.CommonBean;
import com.vtradex.thorn.server.model.security.ThornBaseOrganization;
import com.vtradex.thorn.server.model.security.ThornBusinessModel;
import com.vtradex.thorn.server.web.security.BaseOrganizationHolder;
import com.vtradex.thorn.server.web.security.BussinessModelHolder;

public class OrderTestCase extends AbstractDependencyInjectionSpringContextTests{
	
	String filePath = "";
	
	public void testCase() throws Exception{
		//初始化内存数据
		init();
		//调用
		//CommonBean.autoTest(applicationContext,filePath);
	}
	
	public void init() {
		filePath = "E://vtradex//工作文件//自动化测试方案//自动化测试//订单生效";
		String busmodelStr = "{\"code\":\"TRAINING\",\"id\":2,\"isSysModel\":false,\"logId\":\"2\",\"name\":\"培训\",\"new\":false,\"remark\":\"\",\"status\":\"ACTIVE\",\"updateInfo\":{\"createdTime\":1449028162000,\"creator\":\"admin\",\"creatorId\":1,\"lastOperator\":\"admin\",\"lastOperatorId\":1,\"updateTime\":1449028162000}}";
		String orgStr = "{\"code\":\"TRAINING\",\"name\":\"培训部门\",\"remark\":\"\",\"beHaveCustomRule\":true,\"businessModel\":{\"code\":\"TRAINING\",\"id\":2,\"isSysModel\":false,\"logId\":\"2\",\"name\":\"培训\",\"new\":false,\"remark\":\"\",\"status\":\"ACTIVE\",\"updateInfo\":{\"createdTime\":1449028162000,\"creator\":\"admin\",\"creatorId\":1,\"lastOperator\":\"admin\",\"lastOperatorId\":1,\"updateTime\":1449028162000}},\"updateInfo\":{\"createdTime\":1449028162000,\"creator\":\"admin\",\"creatorId\":1,\"lastOperator\":\"admin\",\"lastOperatorId\":1,\"updateTime\":1449028162000}}";
//		ThornBusinessModel tbm = JSON.parseObject(busmodelStr, ThornBusinessModel.class);
//		ThornBaseOrganization tbo = JSON.parseObject(orgStr, ThornBaseOrganization.class);
//		BussinessModelHolder.setThornBusinessModel(tbm);
//		BaseOrganizationHolder.setThornBaseOrganization(tbo);
	}
	
	protected String[] getConfigLocations() {
		return new String[]{
				//项目配置文件
				"classpath*:spring/testContext.xml"
		};
	}
}
