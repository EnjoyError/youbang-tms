package com.vtradex;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import jxl.Sheet;
import jxl.Workbook;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import com.vtradex.thorn.client.ui.page.IPage;
import com.vtradex.thorn.server.service.imports.Thorn4ImportContext;
import com.vtradex.training.TrainingTestCase;

/**
 * @author: 李炎
 */
public class ImportTestCase extends TrainingTestCase {

	
	public Thorn4ImportContext getThorn4ImportContext(){
		return(Thorn4ImportContext)applicationContext.getBean("thorn4ImportContext");
	}
	
	public void testImport(){ 
		File file = new File("H:/ci.xls");
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("title", "城市导入");
		params.put(IPage.PAGE_ID, "importCityPage");
		params.put(IPage.BUTTON_ID, "import");
		try {
			getThorn4ImportContext().importFile(file, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) throws Exception {
		Workbook wb = Workbook.getWorkbook(new File("H:/ci.xls"));
        WritableWorkbook book  =  Workbook.createWorkbook( new  File("H:/ci.xls"),
               wb);
        WritableSheet[] sheets = book.getSheets();
        for (WritableSheet sheet : sheets) {
			int cols = sheet.getColumns();
			int rows = sheet.getRows();
        }
		book.close();
	}
}
