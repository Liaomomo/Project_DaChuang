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
	// ��������
	@RequestMapping("/BarCode")
	public ModelAndView BarCode() {
		
		ModelAndView modelAndView = new ModelAndView("../Barcode.jsp");
		return modelAndView;
		

	}
	
    // TODO Auto-generated method stub
	// ɨ������
	@RequestMapping("/Scan")
	public ModelAndView Scan() {
		
		ModelAndView modelAndView = new ModelAndView("../Scan.jsp");
		return modelAndView;
		
	}
	//�û���¼
	@RequestMapping("/login")
	public ModelAndView login() {
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		
		HttpSession session=request.getSession();
		
		Object  name = session.getAttribute("name");
		
		System.out.println("name="+name);
		
		ModelAndView modelAndView;
		
		if(name!=null){
			 modelAndView = new ModelAndView("../user.jsp");
		}else{
			 modelAndView = new ModelAndView("../login.jsp");
		}
		
		
		return modelAndView;
		
	}
	//�û�ע��
	@RequestMapping("/register")
	public ModelAndView register() {
		
		ModelAndView modelAndView = new ModelAndView("../registe.jsp");
		return modelAndView;
		
	}
	
	//��̬����
	@RequestMapping("/dy_code")
	public ModelAndView dy_code(HttpServletRequest req) {
		
		String text = req.getParameter("text");
		System.out.println(text);
		ModelAndView modelAndView = new ModelAndView("../Dy_Barcode.jsp");
		
		modelAndView.addObject("text", text);
		return modelAndView;
		
	}
	
	
	
	

}
