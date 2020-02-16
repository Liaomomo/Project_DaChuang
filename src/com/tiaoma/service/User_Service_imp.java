package com.tiaoma.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tiaoma.mapper.UserMapper;
import com.tiaoma.model.User;

@Service
public class User_Service_imp implements User_Service {
    
	
	@Autowired
	private UserMapper usermapper;
	
	@Override
	public User user_registe(User user) {
		// TODO Auto-generated method stub
		
		return usermapper.user_registe(user);
	}

	@Override
	public List<Map> user_login(String username) {
		// TODO Auto-generated method stub
		return usermapper.user_login(username);
	}

}
