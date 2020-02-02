package com.tiaoma.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface Dymanic_Code_Mapper {
     
	    //修改条码内容
		public List<Map>  change_text(@Param("code_id") int code_id,@Param("text") String text);
		
		//获取条码内容
		public List<Map>  Get_code_text(@Param("code_id") int code_id);
		
}
