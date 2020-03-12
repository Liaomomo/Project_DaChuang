<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
<title>二维码详情</title>
<link rel="stylesheet" href="../static/css/baseset.css">
<link rel="stylesheet" href="../static/css/detail.css">
</head>

  <body>
    <div class="cd-layout">
			<!-- 顶部导航栏 -->
			<header class="cd-header clearf">
				<div class="cd-header-box clearf">
					<a href="../page/index.do" class="f_left mar-l10"><</a>
					<span>二维码详情</span>
				</div>
			</header>
			<!-- main -->
			<div class="main-wrap clearf">
				<div class="title">
					<label>二维码标签</label>
				</div>
				<div class="cd_img"><img src=${img_url} alt="二维码图片"></div>
				<div class="cd_detail"><label>${info}</label></div>
				<div class="btn_wrap">
					<button class="btn">下载保存</button>
					<button class="btn">新建二维码</button>
				</div>
				
			</div>
			<!-- 底部-->
			<div class="bottom-nav clearf">
				<a href="../page/index.do" class="f_left w-50 clearf"><img src="../static/imgs//home.png" alt="主页"></a>
				<a href="../page/login.do" class="f_right w-50  "><img  src="../static/imgs/user.png" alt="个人中心"></a>
			</div>
		</div>
  </body>
</html>
