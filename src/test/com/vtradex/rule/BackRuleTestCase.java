package com.vtradex.rule;

import com.vtradex.rule.server.service.rule.BackRuleManager;
import com.vtradex.training.TrainingTestCase;

/**
 * @author <a href="mailto:yan.li@vtradex.com">李炎</a>
 * @description 
 */

public class BackRuleTestCase extends TrainingTestCase {
	
	
	protected BackRuleManager getBackRuleManager(){
		return (BackRuleManager)applicationContext.getBean("backRuleManager");
	}
	
	public void testBackRule(){
		String path = "H:\\vTradEx\\sony_tms\\规则";
		getBackRuleManager().downLoadRule(path);
	}
}
