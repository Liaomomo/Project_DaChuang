package com.tiaoma.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.tiaoma.model.Dy_Code;

@Mapper
public interface Dymanic_Code_Mapper {
     
	    //修改条码内容
		public List<Map>  change_text(@Param("code_id") int code_id,@Param("text") String text);
		
		//获取条码内容
		public List<Map>  Get_code_text(@Param("code_id") String code_id);
		
		//创建动态条码
		public Dy_Code  create_Dy_code(Dy_Code code);
		
		//条码管理
		public List<Map>  manager_code (@Param("user_id") int user_id);
		
		//删除条码
		public List<Map>  delete_code (@Param("code_id") String code_id);
		
}
