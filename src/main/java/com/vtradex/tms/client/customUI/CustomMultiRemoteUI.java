package com.vtradex.tms.client.customUI;

import com.vtradex.thorn.client.ui.page.IPage;

/**
 * @author: 李炎
 */
public class CustomMultiRemoteUI extends CustomRemoteUI {

	public CustomMultiRemoteUI(IPage ownerPage) {
		super(ownerPage);
		multiple = true;
	}
}
