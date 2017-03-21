package com.vtradex.parse;

import java.util.List;

import com.vtradex.thorn.server.util.HqlUtils;
import com.vtradex.training.TrainingTestCase;


/**
 * @author: 李炎
 */
public class HqlParseTestCase extends TrainingTestCase{
	
	
	public static void main(String[] args) throws Exception {
		String hql = "SELECT user.id," + 
		"user.loginName.warehouse.code," +
		"user.name," +
		"user.email," +
		"user.status," +
		"user.locale," +
		"(select sum(a),sum(b) from Orders o WHERE o.user.id = user.id), " + 
		"(to_char(user.expiryDate,'yyyy-MM-dd')) " +
		 "from ThornUser user ,Page page where 1=1 and user.id in (select user.id,user.code from ThornUser u where 1=1 and u.code = 'aa')";
		
		List<String> list = HqlUtils.getFieldsFromHql(hql);
		System.out.println(list);
		
//		JSqlParser jsqlParser = new CCJSqlParserManager();
//		Select select = (Select) jsqlParser.parse(new StringReader(hql));
//		SelectBody selectBody = select.getSelectBody();
//		System.out.println(selectBody);
	}
}