package com.tiaoma.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.tiaoma.model.User;

@Service
public interface User_Service {
	
    //�û�ע��ӿ�
	User  user_registe(User user);
	//�û���¼�ӿ�
	List<Map>  user_login(@Param("username") String username);

}
