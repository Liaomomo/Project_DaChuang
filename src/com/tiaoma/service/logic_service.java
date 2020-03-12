package com.tiaoma.service;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.tiaoma.model.Dy_Code;

@Service
public interface logic_service {
	
    //生成条码
	public boolean CodeCreate(String text, int width, int height, String outPutPath, String imageType);
    
	//生成动态条码
	public Dy_Code  create_Dy_code(Dy_Code code);
		
	//修改条码
	public List<Map>  change_text(@Param("code_id") int code_id,@Param("text") String text);
	
	//获得条码内容
	public List<Map>  Get_code_text(@Param("code_id") String code_id);
	
	//条码管理
	public List<Map>  manager_code (@Param("user_id") String user_id);
	
   
}
