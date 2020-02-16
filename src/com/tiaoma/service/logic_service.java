package com.tiaoma.service;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.tiaoma.model.Dy_Code;

@Service
public interface logic_service {
	
    //��������
	public void CodeCreate(String text, int width, int height, String outPutPath, String imageType);
    
	//���ɶ�̬����
	public Dy_Code  create_Dy_code(Dy_Code code);
		
	//�޸�����
	public List<Map>  change_text(@Param("code_id") int code_id,@Param("text") String text);
	
	//�����������
	public List<Map>  Get_code_text(@Param("code_id") String code_id);
	
   
}
