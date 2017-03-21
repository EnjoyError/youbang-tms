package com.vtradex.training;

import org.springframework.test.AbstractDependencyInjectionSpringContextTests;

import com.vtradex.thorn.server.dao.CommonDao;

/**
 * 
 * @author <a href="yan.li@vtradex.com">李炎</a>
 * @description 
 * 
 */

public abstract class TrainingTestCase extends AbstractDependencyInjectionSpringContextTests {
	
	protected CommonDao getCommonDao(){
		return (CommonDao)applicationContext.getBean("commonDao");
	}
	
	
	protected String[] getConfigLocations() {
		return new String[]{
				"classpath:hibernate/dataSourceContext.xml",
				"classpath*:spring/daoContext.xml",
				"classpath*:spring/sequenceContext.xml",
				"classpath*:spring/serviceContext.xml",
				"classpath*:spring/actionContext.xml",
				"classpath*:spring/validateContext.xml",
				"classpath*:spring/formatContext.xml",
				"classpath*:spring/configContext.xml",
				"classpath*:spring/tableContext.xml",
				"classpath*:spring/valueListContext.xml",
				"classpath:spring/overrideContext.xml",
				"classpath*:spring/messageContext.xml"
		};
	}

}


