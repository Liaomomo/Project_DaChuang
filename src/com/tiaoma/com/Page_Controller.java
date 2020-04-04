package com.tiaoma.com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
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
		
		ModelAndView modelAndView = new ModelAndView("../scans.jsp");
		return modelAndView;
		
	}
	//用户登录
	@RequestMapping("/login")
	public ModelAndView login() {
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		
		HttpSession session=request.getSession();
		
		Object  name = session.getAttribute("name");
		
		ModelAndView modelAndView;
		
		if(name!=null){
			 modelAndView = new ModelAndView("../user.jsp");
		}else{
			 modelAndView = new ModelAndView("../login.jsp");
		}
		
		
		return modelAndView;
		
	}
	//用户注册
	@RequestMapping("/register")
	public ModelAndView register() {
		
		ModelAndView modelAndView = new ModelAndView("../registe.jsp");
		return modelAndView;
		
	}
	
	//动态条码
	@RequestMapping("/dy_code")
	public ModelAndView dy_code(HttpServletRequest req) {
		
		String text = req.getParameter("text");
		System.out.println(text);
		ModelAndView modelAndView = new ModelAndView("../Dy_Barcode.jsp");
		
		modelAndView.addObject("text", text);
		return modelAndView;
		
	}
	//验证码
	@RequestMapping("/Verification")
	public ModelAndView Verification() {
		
		ModelAndView modelAndView = new ModelAndView("../number.jsp");
		return modelAndView;
		
	}
	
	
	
	

}
