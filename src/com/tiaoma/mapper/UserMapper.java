package com.tiaoma.mapper;



import org.apache.ibatis.annotations.Mapper;

import com.tiaoma.model.User;

@Mapper
public interface UserMapper {
     
    //	�û�ע��ӿ�
	User user_registe(User user);
}
