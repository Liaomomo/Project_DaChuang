package com.tiaoma.com;


import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import com.tiaoma.model.Dy_Code;
import com.tiaoma.model.User;
import com.tiaoma.service.User_Service_imp;
import com.tiaoma.service.logic_service_imp;

@Controller
@RequestMapping("code")
public class TM_Controller {
	
	@Resource
	private logic_service_imp logic_service;
	
//	@Resource
//	private User_Service_imp  user_service;
	   
		/**
		 * 
		 * @param 静态条码生成  
		 * @return
		 */
	   @RequestMapping(value="/CreateCode",produces="text/html;charset=UTF-8")
	   private ModelAndView CreateCode(HttpServletRequest request ,HttpServletResponse response){
		   
           //设置字符编码 防止中文乱码
		   try {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=UTF-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		    //获取文本内容
			String text = request.getParameter("text");
			
		    //获取时间戳 （用来当做图片的文件名）
			String code_img = String.valueOf(System.currentTimeMillis());
			

			//获取项目路径 
			String class_path=Thread.currentThread().getContextClassLoader().getResource("").getPath();
			int num=class_path.indexOf(".metadata");
			//获取到项目的webcontent路径
			String file_path = class_path.substring(1,num)+"Project_DaChuang/WebContent/";
			
			//通过项目路径构建二维码的保存路径
			String code_img_url=file_path+"Code_img/statis_code/"+code_img+".jpg";
			
			//生成条码
			boolean success = logic_service.CodeCreate(text, 250, 250,code_img_url, "jpg");
			ModelAndView mv = null;
		    
		    //判断是否生成图片
			File file = new File(code_img_url);
			while(true){
				  
				if(file.length() > 0){
				 
				  mv = new ModelAndView("/detail.jsp");
		  	      mv.addObject("info",text);
		  	      
		  	      //以二进制流的形式输出
		    	  mv.addObject("url","../test/img.do?img_url="+"Code_img/statis_code/"+code_img+".jpg");
		    	  mv.addObject("load","../Code_img/statis_code/"+code_img+".jpg");
		    	  break;
				}
		    	 
			}
			return mv;
		  
	 }
	 
	   
	   /**
	    * 
	    * @param 字符串动态条码生成 
	    * @return
	    */
	   @RequestMapping("/Create_Dynamic_Code")
	   private ModelAndView Create_Dynamic_Code(HttpServletRequest request,HttpServletResponse response){
		 //设置字符编码 防止中文乱码
		   try {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=UTF-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
		//获取标题
		String title = request.getParameter("hide_title");  
        
		//获取文本
		String text = request.getParameter("text");
		
		System.out.println("text="+text+"   title="+title);
		
	    //获取时间戳（当做条码的id）
		String TimeMillis = String.valueOf(System.currentTimeMillis());
		String code_id = TimeMillis;
		
		//获取项目路径 
		String class_path=Thread.currentThread().getContextClassLoader().getResource("").getPath();
		int num=class_path.indexOf(".metadata");
		//获取到项目的webcontent路径
		String file_path = class_path.substring(1,num)+"Project_DaChuang/WebContent/";
		//定义图片保存路径
		String code_img_url=file_path+"Code_img/dynamic_code/"+TimeMillis+".jpg";
		
		//获取年月日
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String create_date = dateFormat.format(date);
		
		
		//获取用户id 
		HttpSession session = request.getSession();
        int user_id =  (int) session.getAttribute("user_id");  
        
        //生成动态链接（访问连接）
        String html_url = "http://192.168.0.3:8080/Project_DaChuang/code/view_Dynamic_Code.do?token="+code_id;
		
        //生成二维码
        logic_service.CodeCreate(html_url, 250, 250,code_img_url, "jpg");
		
		//图片的相对路径（存入数据库的图片路径）
		String img_url = "../Code_img/dynamic_code/"+code_id+".jpg";
		//动态条码类型
		String type = "text";
		//生成动态条码模型
		Dy_Code code = new Dy_Code(code_id,user_id,title,html_url,img_url,text,create_date,type);
		
		//数据入库
		logic_service.create_Dy_code(code);
		
	    ModelAndView mv = new ModelAndView("/detail.jsp");
	    
	   
	    
	    mv.addObject("url","../test/img.do?img_url=Code_img/dynamic_code/"+code_id+".jpg");
	    mv.addObject("load","../Code_img/dynamic_code/"+code_id+".jpg");
	    mv.addObject("type",type);
		return mv;
	  
	  }
	   /**
	    * 
	    * @param upfile
	    * @param session
	    * @param model
	    * @return jsp
	    * @throws Exception
	    * 文件条码生成
	    */
	    @RequestMapping("/upload")
		public ModelAndView upload( MultipartFile upfile,HttpServletRequest request,ModelAndView model) throws Exception{
          
	      
	    	
	      //获取标题 
	      String data_title = request.getParameter("hide_title");
	      
	      if(data_title=="" || data_title==null){
	    	  //if 用户未定义则直接取文件名
	    	  data_title = upfile.getOriginalFilename();
	    	 
	      }
	      
	      //获取用户id 
		  HttpSession session = request.getSession();
	      int user_id =  (int) session.getAttribute("user_id");
	      
	      //获取时间戳（当做条码的id）
		  String TimeMillis = String.valueOf(System.currentTimeMillis());
		  String code_id = TimeMillis;
		  
		  //获取年月日
		  Date date = new Date(System.currentTimeMillis());
		  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		  String create_date = dateFormat.format(date);
			
		   
		  
	      //获取项目路径 
		  String class_path=Thread.currentThread().getContextClassLoader().getResource("").getPath();
		  int num=class_path.indexOf(".metadata");
		  //获取到项目的webcontent路径
		  String file_path = class_path.substring(1,num)+"Project_DaChuang/WebContent/";
		 
	      //生成uuid作为文件名称  
	      String uuid = UUID.randomUUID().toString().replaceAll("-","");
	      //获得文件类型（可以判断如果不是图片，禁止上传）  
	      String contentType=upfile.getContentType();  
	      //获得文件后缀名 
	      
	      String suffixName=contentType.substring(contentType.indexOf("/")+1);
	      
	      //定义文件名
	      String filename=null; 
	      filename=uuid+"."+suffixName; 
	      
	      //定义生成二维码图片保存路径
		  String code_img_url=file_path+"/Code_img/dynamic_code/"+TimeMillis+".jpg";
				
	      //生成动态链接（访问连接）
	      String html_url = "http://192.168.0.3:8080/Project_DaChuang/code/view_Dynamic_Code.do?token="+code_id;
	      //生成二维码
	      
	     logic_service.CodeCreate(html_url, 250, 250,code_img_url, "jpg");
	   
	      //用户上传文件的路径
		  String text = null ;
		 //动态条码类型
		  String type = null ;
		  System.out.println("suffixName="+suffixName);
		  
	      if(suffixName.equals("mp4") ||suffixName.equals("mp3") ){
	    	  //定义视频保存路径
		      String localPath=file_path+"User_video/";
		      //文件保存路径
		      upfile.transferTo(new File(localPath+filename));
		      //用户上传图片的路径
			  text = "../User_video/"+filename;
			  //动态条码类型
			  type = "video";
			  
	      }else if(suffixName.equals("jpeg")){
	    	  //定义图片保存路径
		      String localPath=file_path+"User_img/";
		      //文件保存路径
		      
		      upfile.transferTo(new File(localPath+filename));
		      //用户上传图片的路径
			  text = "../User_img/"+filename;
			  //动态条码类型
			  type = "img";
			 
	      }else if(suffixName.equals("plain") || suffixName.equals("word")){
	    	  //定义图片保存路径
		      String localPath=file_path+"User_word/";
		      //文件保存路径
		      
		      upfile.transferTo(new File(localPath+filename));
		      //用户上传图片的路径
			  text = "../User_word/"+filename;
			  //动态条码类型
			  type = "word";
	      }
	      else{
	    	  text = "error";
			  //动态条码类型
			  type = "error";
	      }
	      
	      
	      
	     //二维码的相对路径（存入数据库的图片路径）
		 String img_url = "../Code_img/dynamic_code/"+code_id+".jpg";
		 
		 
		 try{
			//生成动态条码模型
			 Dy_Code code = new Dy_Code(code_id,user_id,data_title,html_url,img_url,text,create_date,type);
			 //数据入库
			 logic_service.create_Dy_code(code);
		 }catch (Exception e) {
			System.out.println(e.getMessage());
		 }
		
		 
		 
		 //跳转路径
		 ModelAndView mv = new ModelAndView("/detail.jsp");
		 mv.addObject("url","../test/img.do?img_url=Code_img/dynamic_code/"+code_id+".jpg");
		 mv.addObject("load","../Code_img/dynamic_code/"+code_id+".jpg");
		 mv.addObject("type",type);
		 
		 return mv;
	      
		}
	
	    
	    
	   /**
	    * 
	    * @param 查看条码内容
	    * @return
	    */
	   @RequestMapping("/view_Dynamic_Code")
	   private ModelAndView view_Dynamic_Code(HttpServletRequest request){
		
		String code_id = request.getParameter("token");
		
		
	    ModelAndView mv = new ModelAndView("/dy_detail.jsp");
	    
	    //获取条码内容
	    List<Map> list = logic_service.Get_code_text(code_id);
	    
	    String text = (String) list.get(0).get("text");
	    String type = (String) list.get(0).get("type");
	    String title = (String) list.get(0).get("title");
	    mv.addObject("info",text);
	    mv.addObject("type",type);
	    mv.addObject("title",title);
		return mv;
	  
	  }
	   
	   
	   /**
	    * 
	    * @param 查看条码图片
	    * @return
	    */
	   @RequestMapping("/view_Code")
	   private ModelAndView view_Code(HttpServletRequest request){
		
		String code_id = request.getParameter("token");
		
		
	    ModelAndView mv = new ModelAndView("/detail.jsp");
	    
	    //获取条码内容
	    try{
	        List<Map> list = logic_service.Get_code_text(code_id);
	    
	        String text = (String) list.get(0).get("img_url");
	        mv.addObject("url",text);
		    mv.addObject("load",text);
		    
	    }catch (Exception e) {
			System.out.println(e.getMessage());
		}
	    
	  
		return mv;
	  
	  }
	   
	   
	   
	  
	   /**
	    * 
	    * @param request
	    * @return
	    *  //修改条码内容
	    */
	   @RequestMapping("/Change_Code")
	   private ModelAndView Change_Dynamic_Code(HttpServletRequest request){
		
		String code_id = request.getParameter("token");
		
		//检索用户数据
		List<Map> list = logic_service.Get_code_text(code_id);
		
		ModelAndView andView = new ModelAndView("/change_code.jsp");
		
		//
		HttpSession session = request.getSession();
	    session.setAttribute("updata_code_id", (String) list.get(0).get("code_id"));
		
		andView.addObject("text", (String) list.get(0).get("text"));
		andView.addObject("title", (String) list.get(0).get("title"));
		andView.addObject("type", (String) list.get(0).get("type"));
		
		return andView;
	   
	 
	  }
	   
	   
	   /**
	    * 更新条码内容  文件类型
	 * @throws IOException 
	 * @throws IllegalStateException 
	    */
	   @RequestMapping("/updata_code_data")
	   private ModelAndView upadta_code( MultipartFile upfile,HttpServletRequest request) throws IllegalStateException, IOException{
	   
	   //获取要更新的条码id
	   HttpSession session = request.getSession();
	   String updata_id = (String) session.getAttribute("updata_code_id");
	   //获取标题 
	   String data_title = request.getParameter("hide_title"); 
	   
	   //获取用户提交的数据
       //获取项目路径 
	   String class_path=Thread.currentThread().getContextClassLoader().getResource("").getPath();
	   int num=class_path.indexOf(".metadata");
	   //获取到项目的webcontent路径
	   String file_path = class_path.substring(1,num)+"Project_DaChuang/WebContent/";
	 
       //生成uuid作为文件名称  
       String uuid = UUID.randomUUID().toString().replaceAll("-","");
       //获得文件类型（可以判断如果不是图片，禁止上传）  
       String contentType=upfile.getContentType();  
       //获得文件后缀名 
      
       String suffixName=contentType.substring(contentType.indexOf("/")+1);
      
       //定义文件名
       String filename=null; 
       filename=uuid+"."+suffixName; 
     
       //用户上传文件的路径
	   String text = null ;
	   //动态条码类型
	   String type = null ;
	   
	 
       if(suffixName.equals("mp4") ||suffixName.equals("mp3") ){
    	  //定义视频保存路径
	      String localPath=file_path+"User_video/";
	      //文件保存路径
	      upfile.transferTo(new File(localPath+filename));
	      //用户上传视频的路径
		  text = "../User_video/"+filename;
		  //动态条码类型
		  type = "video";
		  
	  
       }else if(suffixName.equals("jpeg")){
    	  //定义图片保存路径
	      String localPath=file_path+"User_img/";
	      //文件保存路径
	      
	      upfile.transferTo(new File(localPath+filename));
	      //用户上传图片的路径
		  text = "../User_img/"+filename;
		  //动态条码类型
		  type = "img"; 
       }else if(suffixName.equals("plain")){
    	 //定义文件保存路径
 	      String localPath=file_path+"User_word/";
 	      //文件保存路径
 	      
 	      upfile.transferTo(new File(localPath+filename));
 	      //用户上传图片的路径
 		  text = "../User_word/"+filename;
 		  //动态条码类型
 		  type = "word"; 
    	   
       }
       else{
    	  text = "error";
		  //动态条码类型
		  type = "error";
       }
       
	   //删除原来的文件的资源
       List<Map> list = logic_service.Get_code_text(updata_id);
	   String data_url = (String) list.get(0).get("text");
	   File file = new File(file_path+data_url.replace("../", "/"));
	   file.delete();
	   
	   
	   //更新数据库资源
	   System.out.println("id="+updata_id+"  text="+text+"  data_title="+data_title);
	   logic_service.updata_code(updata_id, text, data_title, type);
	   
	   ModelAndView modelAndView = new ModelAndView("../page/login.do");
	   
	   return modelAndView;
		   
		   
	   }
	   
	   
	   /**
	    * 更新条码内容  字符类型
	    * @throws IOException 
	    * @throws IllegalStateException 
	    */
	   @RequestMapping("/updata_code_str")
	   private ModelAndView upadta_code_String( MultipartFile upfile,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException{
	   
		 //设置字符编码 防止中文乱码
		   try {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=UTF-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	   //获取要更新的条码id
	   HttpSession session = request.getSession();
	   String updata_id = (String) session.getAttribute("updata_code_id");
	   //获取标题 
	   String data_title = request.getParameter("hide_title"); 
	   
	   //获取用户提交的数据
	   String text = request.getParameter("text"); 
	 
       String type = "text";
	
	   //更新数据库资源
	  
	   logic_service.updata_code(updata_id, text, data_title, type);
	   
	   ModelAndView modelAndView = new ModelAndView("../page/login.do");
	   
	   return modelAndView;
		   
		   
	   }
	   
	   
	   /**
	    * //条码管理界面
	    * @param request
	    * @return
	    */
	   @RequestMapping("/Manager_code")
	   public ModelAndView Manager_code(HttpServletRequest request){
		 
	   ModelAndView modelAndView = null;
		//获取用户id 
		try{
			
		    HttpSession session = request.getSession();
		    int user_id =  (int) session.getAttribute("user_id");
		    
			List<Map> list = logic_service.manager_code(user_id);
			
			modelAndView = new ModelAndView("/manager_code.jsp");
			modelAndView.addObject("info",list);
			
		   }catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return modelAndView;
		
	   }
	   
	   
	   
	   /**
	    * //删除条码
	    * @param request
	    * @return
	    */
	   @RequestMapping("/delete_code")
	   public ModelAndView delete_code(HttpServletRequest request){
		   
		 try{
			 String token=request.getParameter("token");
			 System.out.println(token);
			 //获取项目路径 
			 String class_path=Thread.currentThread().getContextClassLoader().getResource("").getPath();
			 int num=class_path.indexOf(".metadata");
			 //获取到项目的webcontent路径
			 String file_path = class_path.substring(1,num)+"Project_DaChuang/WebContent/";
			 //删除二维码图片
			 File  file = new File(file_path+"Code_img/dynamic_code/"+token+".jpg");
			 file.delete();
			 
			 //获取条码内容
			 List<Map> list = logic_service.Get_code_text(token);
			 String text = (String) list.get(0).get("text");
			 
			 //删除用户文件
			 File file_url_data = new File(file_path+text.replace("../", "/"));
			 file_url_data.delete();
			 
			 //删除数据库数据
			 logic_service.delete_code(token);
			 
			 //获取用户id 
			 HttpSession session = request.getSession();
			 int user_id =  (int) session.getAttribute("user_id");
				
		     List<Map> list_data = logic_service.manager_code(user_id);
		     //重新加载页面（后序优化，异步请求，不用刷新整个页面）	
			 ModelAndView modelAndView = new ModelAndView("/manager_code.jsp");
			 modelAndView.addObject("info",list_data);
			 return modelAndView;
			
			
		 }catch (Exception e) {
			System.out.println(e.getMessage());
			 
		}
		return null;
		 
		   
	   }
	   
	   
	   
	   
	   /**
	    * //二维码图片解码
	    * @param str
	    * @return
	    */
	   @RequestMapping("/Decoder")
	   @ResponseBody
	   public  String getURLDecoderString(String str) {
		   
		   String resultStr = null;
		   try {  
	            Reader reader = new MultiFormatReader();  
	            String imgPath = "D:/java/Project_DaChuang/WebContent/Code_img/statis_code/1585906979631.jpg";  
	            File file = new File(imgPath);  
	            BufferedImage image; 
	            
	            try {  
	                image = ImageIO.read(file);  
	                if (image == null) {  
	                    System.out.println("Could not decode image");  
	                }  
	                LuminanceSource source = new BufferedImageLuminanceSource(image);  
	                BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(  
	                        source));  
	                Result result;  
	                Hashtable hints = new Hashtable();  
	                hints.put(DecodeHintType.CHARACTER_SET, "GBK");  
	                result = new MultiFormatReader().decode(bitmap, hints);  
	                resultStr = result.getText();  
	                System.out.println(resultStr);  
	  
	            } catch (IOException ioe) {  
	                System.out.println(ioe.toString());  
	            } catch (ReaderException re) {  
	                System.out.println(re.toString());  
	            }  
	  
	        } catch (Exception ex) {  
	  
	        }
		return resultStr;  
	    }  

}
