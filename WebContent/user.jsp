 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
<title>用户中心</title>
<link rel="stylesheet" href="../static/css/baseset.css">
<link rel="stylesheet" href="../static/css/user.css">
</head>
  
  <body>
    <div class="cd-layout">
		<!-- 顶部导航栏 -->
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<div class="title"><img src="../static/imgs/user/user.png" alt=""><span>个人中心</span></div>
				<a href="#" class="f_right mar-r10" alt="设置" ><img src="../static/imgs/user/settings.png" ></a>
			</div>
		</header>
		<!-- 用户区 -->
		<div class="user-bg">
			<a href="../page/login.do" class="user-ph" id="user_button"><img src="../static/imgs/user/user-ph.png" alt="">登录/注册</a>
		</div>
		<div class="user"></div>
		<!-- 主要功能 -->
		<div class="mainfoundation">
			<button class="favorites" id="manager"><img src="../static/imgs/user/favorites.png"  alt="收藏夹">条码管理</button>
			<button class="history"><img src="../static/imgs/user/history.png" alt="历史记录">修改密码</button>
			<button class="logoff"><img src="../static/imgs/user/logout.png" alt="">注销</button>
			<button class="update"><img src="../static/imgs/user/update.png" alt="">检查更新</button>
			<button class="email"><img src="../static/imgs/user/email.png" alt="">联系我们</button>
			<button class="about"><img src="../static/imgs/user/about.png" alt="">版本信息</button>
			<button class="off"><img src="../static/imgs/user/close.png" alt="">退出</button>
		</div>
		<!-- 底部导航栏 -->
		<div class="bottom-nav clearf">
			<a href="../page/index.do" class="f_left w-50 clearf"><img src="../static/imgs/user/home.png" alt="主页"></a>
			<a href="../page/login.do" class="f_right w-50  "><img src="../static/imgs/user/user.png" alt="个人中心"></a>
		</div>
	</div>
  </body>
  <script type="text/javascript" src="../static/js/jquery-3.4.1.js"></script>
   <script type="text/javascript" src="../static/js/manage.js"></script>
  <script type="text/javascript">
    $(function(){
        var username = '<%= session.getAttribute("name")%>';
        
        if(username==null || username==''){
        	document.getElementById("user_button").innerHTML ="";
        }else{
        	document.getElementById("user_button").innerHTML ='<img src="../static/imgs/user/user-ph.png" alt="">'+ username;
        	document.getElementById("user_button").href="#";
        }
     })
     
     
     var  manager = document.getElementById("manager");
   
     manager.onclick=function(){
    	 
    	 var user_id = '<%= session.getAttribute("user_id")%>';
    	 
    	 if(user_id=='null' || user_id == null){
    		 alert("请登录");
    	 }else{
    		 
    		 window.location = "../code/Manager_code.do";
    		 
    	 }
    	
     }
     
     
     
</script>
</html>
