package com.tiaoma.mapper;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.tiaoma.model.User;

@Mapper
public interface UserMapper {
     
    //	用户注册接口
	User user_registe(User user);
	
	//用户登录接口
	List<Map>  user_login(@Param("username") String username);
}
