package com.tiaoma.service;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;

import org.springframework.stereotype.Service;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;

@Service
public class logic_service_imp implements logic_service {
     
	
	@Override
	//条码生成  zxingCodeCreate("http://www.baidu.com", 300, 300, "D:/qrcode.jpg", "jpg");
	public void CodeCreate(String text, int width, int height, String outPutPath, String imageType) {
		// TODO Auto-generated method stub
		System.out.println(text+width+height+outPutPath+imageType);
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
		} catch (WriterException e) {
			 e.printStackTrace();
			 System.out.println("二维码生成失败");
		} 
		catch (IOException e) {
			e.printStackTrace();
			System.out.println("生成二维码图片失败");
		}
		
	}


}
