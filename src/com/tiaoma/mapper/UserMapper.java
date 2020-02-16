package com.tiaoma.mapper;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.tiaoma.model.User;

@Mapper
public interface UserMapper {
     
    //	�û�ע��ӿ�
	User user_registe(User user);
	
	//�û���¼�ӿ�
	List<Map>  user_login(@Param("username") String username);
}
