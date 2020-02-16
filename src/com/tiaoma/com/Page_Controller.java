package com.tiaoma.com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/page")
public class Page_Controller {
	
	
	// TODO Auto-generated method stub
	@RequestMapping("/index")
	public ModelAndView index() {
		
		ModelAndView modelAndView = new ModelAndView("../index.jsp");
		return modelAndView;
		

	}
	
	// TODO Auto-generated method stub
	// 生成条码
	@RequestMapping("/BarCode")
	public ModelAndView BarCode() {
		
		ModelAndView modelAndView = new ModelAndView("../Barcode.jsp");
		return modelAndView;
		

	}
	
    // TODO Auto-generated method stub
	// 扫描条码
	@RequestMapping("/Scan")
	public ModelAndView Scan() {
		
		ModelAndView modelAndView = new ModelAndView("../Scan.jsp");
		return modelAndView;
		
	}
	//用户登录
	@RequestMapping("/login")
	public ModelAndView login() {
		
		ModelAndView modelAndView = new ModelAndView("../login.jsp");
		return modelAndView;
		
	}
	//用户注册
	@RequestMapping("/register")
	public ModelAndView register() {
		
		ModelAndView modelAndView = new ModelAndView("/registe.jsp");
		return modelAndView;
		
	}
	
	
	
	

}
