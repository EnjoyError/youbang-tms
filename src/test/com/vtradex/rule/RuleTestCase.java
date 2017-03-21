package com.vtradex.rule;

import java.util.Map;
import java.util.HashMap;

import com.vtradex.rule.server.service.rule.RuleManager;
import com.vtradex.thorn.server.model.security.ThornBaseOrganization;
import com.vtradex.thorn.server.model.security.ThornBusinessModel;
import com.vtradex.training.TrainingTestCase;

/**
 * 
 * 
 * @author <a href="mailto:brofe@163.com">潘宁波</a>
 * @since Oct 22, 2015
 */
public class RuleTestCase extends TrainingTestCase {

	public RuleManager getRuleManager() {
		return (RuleManager) applicationContext.getBean("ruleManager");
	}

	public void testRule() {
		while (true) {
			if (getRuleManager().isLoader()) {
				break;
			}
		}
		Map paramMap = new HashMap();
		paramMap.put("测试类型", "数据源测试");
		paramMap.put("平台编号", "PTBH");
		paramMap.put("序号类型", "CESHI-PTBH");
		ThornBusinessModel businessModel = getCommonDao().load(ThornBusinessModel.class, 2L);
		ThornBaseOrganization organization = getCommonDao().load(ThornBaseOrganization.class, 2L);
		Map result = getRuleManager().execute(businessModel, organization, "单号生成规则", "单号生成规则", paramMap);
		System.out.println(result);
	}
}
