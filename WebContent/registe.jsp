<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
<title>注册</title>
<link rel="stylesheet" href="../static/css/baseset.css">
<link rel="stylesheet" href="../static/css/register.css">
<script type="text/javascript" src="../static/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="../static/js/check.js"></script>
</head>

<body>
    <div class="cd-layout">
		<!-- 顶部导航栏 -->
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a id="rt_a" href="../page/login.do" class="f_left mar-l10"><image id="re_img" src="../static/imgs/rt.png"></image></a>
				<span>注册</span>
			</div>
		</header>
		<!-- info -->
		<div class="wrap">
				<form method="post" action="../user/registe.do" >
					<div class="u-name">
						<div>用户名</div>
						<input name="username" id="username" type="text" placeholder="请输入用户名">
											
					</div>
					<div class="Warn"><label id="userWarn">用户名为4-16个英文、数字或下划线字符!</label></div>
						
					<div class="u-pas">
						<div>密&emsp;码 </div>
						<input name="password" id="psd" type="text" placeholder="请输入密码">
						
					</div>
					<div class="Warn"><label id="psdWarn">密码为4-16个英文、数字或下划线字符!</label></div>
					<div class="u-repas">
						<div>重复密码</div>
						<input name="repassword" id="repsd" type="text" placeholder="请再次输入密码">
					</div>
					<div class="Warn"><label id="repsdWarn"></label></div>
					<div class="u-email">
						<div>电子邮箱</div><input name="email" id="e-maile" type="text" placeholder="请输入常用的电子邮箱">
					</div>
					<div class="Warn"><label id="emailWarn"></label></div>
					<div class="u-phone">
						<div>手机号码</div>
						<input name="phone" id="telNum" type="text" placeholder="请输入手机号">
					</div>
					<div class="Warn"><label id="telWarn"></label></div>
					<div class="submit">
						<input type="submit" value="注 册">
					</div>
				</form>
		</div>
	</div>
</body>

</html>