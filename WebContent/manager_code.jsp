<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
		<title>条码管理</title>
		<link rel="stylesheet" type="text/css" href="../static/css/baseset.css"/>
		<link rel="stylesheet" type="text/css" href="../static/css/manager_code.css"/>
		
		
	</head>
	<body>
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a href="../page/login.do" class="f_left mar-l10"><</a>
				<span>二维码列表</span>
			</div>
		</header>
		<div id="body">
			
	    
	    
	    
		<div id="list_code">
		<c:forEach items="${info}" var="s">
    	<li>
             	<div id="list_img">
             		<img src="${s.img_url}"/>
             	</div>
             		
         		<div id="list_text">
         			<p>${s.title}</p>
         			<span>创建日期:${s.create_date}</span>
         			
         		</div>
         		
         		<div id="list_view">
         			 <a href="../code/Change_Code.do?token=${s.code_id}">修改</a>
         			 <a href="../code/view_Code.do?token=${s.code_id}">查看</a>
         			 <a href="../code/delete_code.do?token=${s.code_id}">删除</a>
         		</div>
         		
             </li>
     </c:forEach> 
            <!--  -->
		</div>
			
</div>
      <div class="cd-layout">
		<div class="bottom-nav clearf">
			<a href="../page/index.do" class="f_left w-50 clearf"><img src="../static/imgs/Home/home.png" alt="主页"></a>
			<a href="../page/login.do" class="f_right w-50 clearf "><img src="../static/imgs/Home/user.png" alt="个人中心"></a>
		</div>
	</div>

</body>
  <script type="text/javascript" src="../static/js/jquery-3.4.1.js"></script>
  <script type="text/javascript">
  
  $(document).ready(function(){
	   $("#delete").click(function(){
		   var token = $(this).attr('name')
		   alert(token)
		   $.ajax({
	           type: "POST",    //请求类型
	           url: "../code/delete_code.do", //请求地址和参数    GET请求才把参数写在这里
	           
	           data:{
	        	      "token":token
	        	   },    //POST请求的参数以JSON格式传参
	           success: function (res) {   //请求成功后执行的函数res是返回的值
	        	   
	        	   if(res=="1"){
	        		   alert("删除成功");
	        	   }
	               
	           }
	       });
		     
	 });
});
  
  </script>
</html>