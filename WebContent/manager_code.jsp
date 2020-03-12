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
		
		<div id="body">
			
	    <div id="title"><h1>二维码列表</h1></div>
	    
	    
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
         			 <a href="#">修改</a>
         			 <a href="#">查看</a>
         			 <a href="#">删除</a>
         		</div>
         		
             </li>
     </c:forEach> 
            
		</div>
			
		</div>
		
	</body>
</html>