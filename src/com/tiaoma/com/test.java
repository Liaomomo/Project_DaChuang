package com.tiaoma.com;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("test")
public class test {

	
	@RequestMapping("/img")
	@ResponseBody
	public void test_img(HttpServletResponse rp,HttpServletRequest rq){
		
         //获取项目路径
		 String class_path=Thread.currentThread().getContextClassLoader().getResource("").getPath();
		 
		 int num=class_path.indexOf(".metadata");
		 
		 //获取到项目的webcontent路径
		 String file_path = class_path.substring(1,num)+"Project_DaChuang/WebContent/";
		 
		 String img_url = rq.getParameter("img_url");
		 
		 String filePath = file_path+img_url;
		 
		 System.out.println(filePath);
		
	        File imageFile = new File(filePath);
	        
	        if (imageFile.exists()) {
	            FileInputStream fis = null;
	            OutputStream os = null;
	            try {
	                fis = new FileInputStream(imageFile);
	                os = rp.getOutputStream();
	                int count = 0;
	                byte[] buffer = new byte[1024 * 8];
	                while ((count = fis.read(buffer)) != -1) {
	                    os.write(buffer, 0, count);
	                    os.flush();
	                }

	            } catch (Exception e) {
	                e.printStackTrace();
	            } finally {
	                try {
	                    fis.close();
	                    os.close();
	                } catch (IOException e) {
	                    e.printStackTrace();
	                }
	            }

	        }
		
	}
	
	
}
