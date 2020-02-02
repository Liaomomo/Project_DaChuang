package com.tiaoma.service;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service
public interface logic_service {
	
    //生成条码
	public void CodeCreate(String text, int width, int height, String outPutPath, String imageType);
    
	//修改条码
	public List<Map>  change_text(@Param("code_id") int code_id,@Param("text") String text);
	
	//获得条码内容
	public List<Map>  Get_code_text(@Param("code_id") int code_id);
}
