<%@ page language="java"  contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
<title>登录</title>
<link rel="stylesheet" href="../static/css/baseset.css">
<link rel="stylesheet" href="../static/css/login.css">
</head>
  
  <body>
    <div class="cd-layout">
		<!-- 顶部导航栏 -->
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a href="../page/index.do" class="f_left mar-l10"><</a>
				
			</div>
		</header>
		<!-- 用户登录 -->
		<div class="mainwrap">
			<div class="ways">
				<a class="l-name" href="#" ><span>账号密码登录</span></a>
				<a class="l-ms" href="#"><span>短信验证登录</span></a>
			</div>
			<!-- 登录信息 -->
			<div class="info">
				<div class="ins">
					<form action="./login.do" method="post">
						<div class="user-n">
							<div class="u-name">账号</div>
							<input name="username" class ="username" type="text" placeholder="用户名/邮箱/已验证手机" >
<!-- 						<img src="" alt="清除" >
 -->					</div>
						<div class="user-p">
							<div class="password">密码</div>
							<input name="password" class="userpassword" type="password" placeholder="请输入密码">
						</div>
					   <div class="user-t">
							<div class="test">验证码</div>
							<input  name="inputcode" type="text"  placeholder="验证码">
							<span><img
									id="validateCode" src="../page/Verification.do" width="96" height="27"
									alt="" /> </span> <span><a id="changeCode"
									href="javascript:void(0);" title="">看不清</a> </span>				
						</div>  
						<div class="btn">
							<input type="button" value="登录" class="button" id="login">
							<input type="button" value="注册" class="button" id="register">
						</div>
					</form>
					<div class="other clearf">
						<a href="#" class="f_left">忘记密码</a>
						<a href="#" class=" f_right">手机快速注册</a>
					</div>
				</div>
					<div class="title">其他登录方式</div>
					<div class="olw-wrap">
					<div class="olw">
						<a href="#"><img class="wc" src="../static/imgs/login/wechat.jpg" alt="微信"></a>
						<a href="#"><img src="../static/imgs/login/qq.jpg" alt=""></a>
					</div>
					<div class="safe"><span>登录代表您已同意<a href="#">《用户协议》</a>、<a href="#">《隐私协议》</a></span>
					</div>	
				</div>
			</div>
		</div>
  </body>
    <script type="text/javascript" src="../static/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="../static/js/login.js"></script>
</html>
