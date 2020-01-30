package com.tiaoma.com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class TM_Controller {
     
	
	
	// TODO Auto-generated method stub
	@RequestMapping("/index")
	@ResponseBody
    private ModelAndView test() {
		
		ModelAndView mv = new ModelAndView("/index.jsp");
		return mv;
		
         
	}
}
