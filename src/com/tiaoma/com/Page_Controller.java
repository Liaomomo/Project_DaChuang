package com.tiaoma.com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class Page_Controller {
	
	
	// TODO Auto-generated method stub
	@RequestMapping("/index")
	public ModelAndView index() {
		
		ModelAndView modelAndView = new ModelAndView("index.jsp");
		return modelAndView;
		

	}
	
	// TODO Auto-generated method stub
	// ��������
	@RequestMapping("/BarCode")
	public ModelAndView BarCode() {
		
		ModelAndView modelAndView = new ModelAndView("Barcode.jsp");
		return modelAndView;
		

	}
	
    // TODO Auto-generated method stub
	// ɨ������
	@RequestMapping("/Scan")
	public ModelAndView Scan() {
		
		ModelAndView modelAndView = new ModelAndView("Scan.jsp");
		return modelAndView;
		

	}
	
	

}
