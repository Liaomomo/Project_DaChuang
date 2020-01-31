package com.tiaoma.com;

import java.awt.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	
	@Autowired
	private logic_service_imp logic_service;
	
	@Resource
	private User_Service_imp  user_service;
	
	  //首页
	  @RequestMapping("/index")
	  private ModelAndView index(){
		
	    ModelAndView mv = new ModelAndView("/index.jsp");
		return mv;
	  
	  }
       //条码生成  ${info}
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
		logic_service.CodeCreate(text, 300, 400, "D:/JAVA/Project_DaChuang/WebContent/TM_img/frist_code.jpg", "jpg");
	    ModelAndView mv = new ModelAndView("/TM_HTML/Html_code.jsp");
	    mv.addObject("info",text);
	    mv.addObject("img_url","./TM_img/frist_code.jpg");
		return mv;
	  
	  }
	  
	  
   
 
	
	
	
	
	
	
	
}
