/**
  Copyright (c) 2001-2011 vTradEx Information Technology Co.,Ltd. All Rights Reserved.

  This software is the confidential and proprietary information of vTradEx
  Information Technology Co.,Ltd. ("Confidential Information").  You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with vTradEx.

  VTRADEX MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE
  SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
  IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
  PURPOSE, OR NON-INFRINGEMENT. VTRADEX SHALL NOT BE LIABLE FOR ANY DAMAGES
  SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING OR DISTRIBUTING
  THIS SOFTWARE OR ITS DERIVATIVES.
  
  $Id: ExportPermissionTestCase.java,v 1.1 2011/10/18 07:28:36 yan.li Exp $
 */
package com.vtradex.permission;

import com.vtradex.thorn.server.service.security.BackupPermissionManager;
import com.vtradex.training.TrainingTestCase;

/**
 * 权限导出
 *
 * @author <a href="brofe.pan@gmail.com">潘宁波</a>
 * @version $Revision: 1.1 $Date: 2011/10/18 07:28:36 $
 */
public class ExportPermissionTestCase extends TrainingTestCase {
	
	protected BackupPermissionManager getManager(){
		return (BackupPermissionManager)applicationContext.getBean("backupPermissionManager");
	}
	
	/**
	 * 权限导出
	 */
	public void testExportPermission(){
		String path = System.getProperty("user.dir") + "\\permissions" ;
		getManager().exportPermission(path);
	}
}
