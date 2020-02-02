package com.tiaoma.com;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tiaoma.model.User;
import com.tiaoma.service.User_Service_imp;
import com.tiaoma.service.logic_service_imp;

@Controller
@RequestMapping
public class TM_Controller {
	
	@Resource
	private logic_service_imp logic_service;
	
//	@Resource
//	private User_Service_imp  user_service;
	
	
       //静态条码生成  
	   @RequestMapping("/CreateCode")
	   private ModelAndView CreateCode(HttpServletRequest request){
		
		String text = request.getParameter("text");
	
		logic_service.CodeCreate(text, 300, 400, "D:/JAVA/Project_DaChuang/WebContent/TM_img/frist_code.jpg", "jpg");
	    ModelAndView mv = new ModelAndView("/TM_HTML/Html_code.jsp");
	    mv.addObject("info",text);
	    mv.addObject("img_url","./TM_img/frist_code.jpg");
		return mv;
	  
	  }
	  
	   //动态条码生成 
	   @RequestMapping("/Create_Dynamic_Code")
	   private ModelAndView Create_Dynamic_Code(HttpServletRequest request){
		
		String text = request.getParameter("text");
	    ModelAndView mv = new ModelAndView("/TM_HTML/Dymanic_Code.jsp");
	    mv.addObject("info",text);
	    mv.addObject("img_url","./TM_img/Dymanic_Code.jpg");
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
		   
		int toker=Integer.valueOf(request.getParameter("toker"));
		
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
