package com.tiaoma.mapper;



import org.apache.ibatis.annotations.Mapper;

import com.tiaoma.model.User;

@Mapper
public interface UserMapper {
     
    //	用户注册接口
	User user_registe(User user);
}
