package com.tiaoma.com;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tiaoma.model.User;
import com.tiaoma.service.User_Service_imp;

@Controller
@RequestMapping("/user")
public class Client_Controller {
        
	
	   @Resource
	   private User_Service_imp user_service;
	
	   
       //用户登录
	   @RequestMapping(value="/login",produces={"application/json; charset=UTF-8"})
	   @ResponseBody
	   public List<Map> login(HttpServletRequest request,HttpServletResponse response) {
		// TODO Auto-generated method stub
		   //编码问题
	        try {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        //获取提交数据
	        String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			System.out.println(username);
			
			//数据库请求数据（获得密码）
			List<Map> list = user_service.user_login(username);
			String password_request = (String) list.get(0).get("password");
			
			int user_id =  (int) list.get(0).get("user_id");
			
//			list.clear();
//			Map map = new HashMap() ;
//			map.put("username", username);
//			list.add(map);
			
			
			if(password_request.equals(password)){
				 HttpSession session = request.getSession();
	             session.setAttribute("name", username);   
	             session.setAttribute("user_id", user_id);
	             return list;
	            
			}else{
				
				return null;
			}
			
           
	  }
	   
	   
	   
	    //用户注册
		@RequestMapping(value="/registe",method=RequestMethod.POST)
		private ModelAndView registe(HttpServletRequest request) {
			// TODO Auto-generated method stub
	        //获取用户数据
			String name = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			
			String info="name="+name+"    password="+password+"  email="+email;
			System.out.println(info);
	        //封装到user
			User user = new User(name,password,email,phone);
			
			user_service.user_registe(user);
			
			ModelAndView andView = new ModelAndView("/registe.jsp");
			
			return andView;
	        
		}
		
}
