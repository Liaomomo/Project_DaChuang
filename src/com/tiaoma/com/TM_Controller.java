package com.tiaoma.com;


import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tiaoma.model.Dy_Code;
import com.tiaoma.model.User;
import com.tiaoma.service.User_Service_imp;
import com.tiaoma.service.logic_service_imp;

@Controller
@RequestMapping("code")
public class TM_Controller {
	
	@Resource
	private logic_service_imp logic_service;
	
//	@Resource
//	private User_Service_imp  user_service;
	
	
       
	/**
	 * 
	 * @param 静态条码生成  
	 * @return
	 */
	   @RequestMapping(value="/CreateCode",produces="text/html;charset=UTF-8")
	   private ModelAndView CreateCode(HttpServletRequest request){
		
		String text = request.getParameter("text");
	    //获取时间戳
		String code_img = String.valueOf(System.currentTimeMillis());
		String code_img_url="D:/JAVA/Project_DaChuang/WebContent/TM_img/"+code_img+".jpg";
		
		logic_service.CodeCreate(text, 250, 250,code_img_url, "jpg");
		
	    ModelAndView mv = new ModelAndView("/detail.jsp");
	    mv.addObject("info",text);
	    
	    //判断是否生成图片
	    File file ;
	  
	    while(true){
	    	file = new File(code_img_url);
	    	if(file.exists()){
	    		mv.addObject("img_url","../TM_img/"+code_img+".jpg");
	    		System.out.println(file.exists());
	    		try {
					Thread.sleep(2000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
	    	}

	    }
	    
	    return mv;

	  }
	  
	   
	   /**
	    * 
	    * @param 动态条码生成 
	    * @return
	    */
	   @RequestMapping("/Create_Dynamic_Code")
	   private ModelAndView Create_Dynamic_Code(HttpServletRequest request){
		
		String text = request.getParameter("text");
		
	    //获取时间戳
		String TimeMillis = String.valueOf(System.currentTimeMillis());
		String code_id = TimeMillis;
		String code_img_url="D:/JAVA/Project_DaChuang/WebContent/TM_img/"+TimeMillis+".jpg";
		
		//获取用户id 
		HttpSession session = request.getSession();
        int user_id =  (int) session.getAttribute("user_id");  
        
        //生成动态链接
        String html_url = "http://192.168.1.3:8080/Project_DaChuang/code/view_Dynamic_Code.do?token="+code_id;
		logic_service.CodeCreate(html_url, 250, 250,code_img_url, "jpg");
		
		//图片的相对路径
		String img_url = "../TM_img/"+code_id+".jpg";
		//生成动态条码模型
		Dy_Code code = new Dy_Code(code_id,user_id,html_url,img_url,text);
		
		//数据入库
		logic_service.create_Dy_code(code);
		
	    ModelAndView mv = new ModelAndView("/detail.jsp");
	    mv.addObject("info",text);
	    try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    mv.addObject("img_url","../TM_img/"+code_id+".jpg");
		return mv;
	  
	  }
	   /**
	    * 
	    * @param 查看条码内容
	    * @return
	    */
	  
	   @RequestMapping("/view_Dynamic_Code")
	   private ModelAndView view_Dynamic_Code(HttpServletRequest request){
		
		String code_id = request.getParameter("token");
		System.out.println(code_id);
		
	    ModelAndView mv = new ModelAndView("/detail.jsp");
	    
	    //获取条码内容
	    List<Map> list = logic_service.Get_code_text(code_id);
	    
	    String text = (String) list.get(0).get("text");
	    String img_url = (String) list.get(0).get("img_url");
	    
	    mv.addObject("info",text);
	    mv.addObject("img_url",img_url);
		return mv;
	  
	  }
	   
	   
	   
	   //修改条码内容
	   @RequestMapping("/Change_Dynamic_Code")
	   private ModelAndView Change_Dynamic_Code(HttpServletRequest request){
		
		String text = request.getParameter("text");
		int code_id = 1;
		
	    ModelAndView mv = new ModelAndView("/TM_HTML/Dymanic_Code.jsp");
	    //内容入库
	    logic_service.change_text(code_id, text);
	    
	    mv.addObject("info",text);
	    mv.addObject("img_url","./TM_img/Dymanic_Code.jpg");
		return mv;
	  
	  }
	   
	   //条码管理界面
	   @RequestMapping("/Manager_code")
	   public ModelAndView Manager_code(HttpServletRequest request){
		   
		String toker=request.getParameter("toker");
		
		System.out.println(toker);
		
		List<Map> list = logic_service.Get_code_text(toker);
		
		System.out.println(list+"zhixingl");
		
		String text = (String) list.get(0).get("text");
		
		System.out.println(text);
		
		ModelAndView modelAndView = new ModelAndView("/TM_HTML/Dymanic_Code.jsp");
		
		modelAndView.addObject("info",text);
		modelAndView.addObject("img_url","./TM_img/Dymanic_Code.jpg");
		
		return modelAndView;
		
	   }

}
