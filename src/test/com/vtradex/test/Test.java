package com.vtradex.test;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

import org.apache.commons.lang.StringUtils;

public class Test {

	public static void main(String[] args) throws Exception {
		String templateDir = "spring/";
		Enumeration<URL> urls = Test.class.getClassLoader().getResources(templateDir);
		while (urls.hasMoreElements()) {
			URL url = urls.nextElement();
			String path = url.getPath();
			if(StringUtils.contains(path, ".jar")){
				path = StringUtils.substringBetween(path,"file:" ,"!/spring/");
			    JarFile jarFile = new JarFile(new File(path));  
			    Enumeration<JarEntry> entrys = jarFile.entries();  
			    while (entrys.hasMoreElements()) {  
			        JarEntry jarEntry = entrys.nextElement();
			        String name = jarEntry.getName();
			        if(StringUtils.contains(name, ".xml")){
			        	InputStream is = Test.class.getClassLoader().getResourceAsStream(name); 
			        	System.out.println(name);
			        	process(is);
			        }
			    }
			}
			else{
				File fileTemplateDir = new File(url.toURI());
				File[] templateFiles = fileTemplateDir.listFiles();
				for (File f : templateFiles) {
					System.out.println(f.getAbsolutePath());
				}
			}
		}

		
//		JarFile jarFile = new JarFile("/Users/Liyan/git/GitRepository/thorn5-client/target/thorn5-client-5.0.0.0.jar");  
//	    Enumeration<JarEntry> entrys = jarFile.entries();  
//	    while (entrys.hasMoreElements()) {  
//	        JarEntry jarEntry = entrys.nextElement();
//	        String name = jarEntry.getName();
//	        if(StringUtils.contains(name, ".xml")){
//	        	System.out.println(name);
//	        }
//	    }
	}
	
	private static void process(InputStream input) throws IOException {
		InputStreamReader isr = new InputStreamReader(input);
		BufferedReader reader = new BufferedReader(isr);
		String line = null;
		while ((line = reader.readLine()) != null) {
			System.out.println(line);
		}
		reader.close();
	}
}
