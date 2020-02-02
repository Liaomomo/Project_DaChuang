<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
<title>主页</title>
<link rel="stylesheet" href="static/css/baseset.css">
<link rel="stylesheet" href="static/css/Home.css">
</head>

  
  <body>
    <div class="cd-layout">
		<!-- 顶部导航栏 -->
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a href="#" class="f_left mar-l10"><img class="pic"src="static/imgs/Home/image.png" alt="相册"></a>
				<a href="#" class="f_right mar-r10" alt="设置"><img src="static/imgs/Home/settings.png" ></a>
			</div>
		</header>
		<!-- user用户 -->
		<div class="user-bg">
			<a href="#" class="user-ph"><img src="static/imgs/Home/user-ph.png" alt=""></a>
		</div>
		<div class="user"></div>
		<!-- 主要功能 -->
		<div class="codemain">
			<li><a href="./Scan.do"  class="scan"><img src="static/imgs/Home/scan.jpg" alt=""></a></li>
			<li><a href="./BarCode.do"  class="madecode"><img src="static/imgs/Home/code.png"  ></a></li>
		</div >
		<!-- 杂七杂八的功能，收藏 历史 反馈 帮助 -->
			
		<div class="others">
			
				<li><a href="#" class="favorites"><img src="static/imgs/Home/favorite.png" alt="收藏夹"></a></li>
				<li><a href="#" class="history"><img src="static/imgs/Home/history.png" alt="历史记录"></a></li>
				<li><a href="#" class="feedback"><img src="static/imgs/Home/email.png" alt="反馈"></a></li>
				<li><a href="#" class="help"><img src="static/imgs/Home/question.png" alt="帮助手册"></a></li>
			
		</div>
		
		<!-- 底部导航栏 -->
		<div class="bottom-nav clearf">
			<a href="Home.html" class="f_left w-50 clearf"><img src="static/imgs/Home/home.png" alt="主页"></a>
			<a href="user.html" class="f_right w-50  "><img src="static/imgs/Home/user.png" alt="个人中心"></a>
		</div>
	</div>
  </body>
</html>
