package com.tiaoma.service;

import org.springframework.stereotype.Service;

@Service
public interface logic_service {
	
    //Éú³ÉÌõÂë
	public void CodeCreate(String text, int width, int height, String outPutPath, String imageType);

}
