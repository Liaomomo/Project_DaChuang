package com.tiaoma.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.tiaoma.model.User;

@Service
public interface User_Service {
	
    //用户注册接口
	User  user_registe(User user);
	//用户登录接口
	List<Map>  user_login(@Param("username") String username);

}
