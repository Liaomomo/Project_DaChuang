package com.tiaoma.service;


import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.tiaoma.mapper.Dymanic_Code_Mapper;
import com.tiaoma.mapper.UserMapper;
import com.tiaoma.model.Dy_Code;

@Service
public class logic_service_imp implements logic_service {
     
	@Autowired
	private Dymanic_Code_Mapper  Dymanic_Code;
	
	
	@Override
	//条码生成  zxingCodeCreate("http://www.baidu.com", 300, 300, "D:/qrcode.jpg", "jpg");
	public boolean CodeCreate(String text, int width, int height, String outPutPath, String imageType) {
		// TODO Auto-generated method stub
        // System.out.println(text+width+height+outPutPath+imageType);
		//二维码颜色  
	    final int BLACK = 0xFF000000;  
	    //二维码颜色  
	    final int WHITE = 0xFFFFFFFF;  
		Map<EncodeHintType, String> his = new HashMap<EncodeHintType, String>();
		//设置编码字符集
		his.put(EncodeHintType.CHARACTER_SET, "utf-8");
		try {
			
			 //1、生成二维码  
			 BitMatrix encode = new MultiFormatWriter().encode(text, BarcodeFormat.QR_CODE, width, height, his);
			
			 //2、获取二维码宽高  
			 int codeWidth = encode.getWidth();
			 int codeHeight = encode.getHeight();
			
			//3、将二维码放入缓冲流  
		     BufferedImage image = new BufferedImage(codeWidth, codeHeight, BufferedImage.TYPE_INT_RGB);
			 for (int i = 0; i < codeWidth; i++) {
			     for (int j = 0; j < codeHeight; j++) {
					//4、循环将二维码内容定入图片  
					image.setRGB(i, j, encode.get(i, j) ? BLACK : WHITE);
					}
			}
			File outPutImage = new File(outPutPath);
			//如果图片不存在创建图片  
			 if(!outPutImage.exists())
					 outPutImage.createNewFile();
			//5、将二维码写入图片  
			 ImageIO.write(image, imageType, outPutImage);
			
			 
			 return true;
		} catch (WriterException e) {
			 e.printStackTrace();
			 System.out.println("二维码生成失败");
			 return false;
		} 
		catch (IOException e) {
			e.printStackTrace();
			System.out.println("生成二维码图片失败");
			return false;
		}
		
		
	}

	@Override
	public List<Map>  change_text(int code_id, String text) {
		// TODO Auto-generated method stub
		
		return Dymanic_Code.change_text(code_id, text);
	}

	@Override
	public List<Map> Get_code_text(String code_id) {
		// TODO Auto-generated method stub
		return Dymanic_Code.Get_code_text(code_id);
	}

	@Override
	public Dy_Code create_Dy_code(Dy_Code code) {
		// TODO Auto-generated method stub
		return Dymanic_Code.create_Dy_code(code);
	}

	@Override
	/**
	 * 条码管理
	 */
	public List<Map> manager_code(int user_id) {
		// TODO Auto-generated method stub
		return Dymanic_Code.manager_code(user_id);
	}

	@Override
	public List<Map> delete_code(String code_id) {
		// TODO Auto-generated method stub
		return  Dymanic_Code.delete_code(code_id);
	}

	@Override
	public List<Map> updata_code(String code_id, String text, String title, String type) {
		// TODO Auto-generated method stub
		return Dymanic_Code.updata_code(code_id, text, title, type);
	}

	

	


}
