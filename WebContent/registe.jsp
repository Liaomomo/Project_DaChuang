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
</head>

<body>
    <div class="cd-layout">
		<!-- 顶部导航栏 -->
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a href="login.html" class="f_left mar-l10"><</a>
				<span>注册</span>
			</div>
		</header>
		<!-- info -->
		<div class="wrap">
				<form method="post" action="../user/registe.do" >
					<div class="u-name">
						<div>用&nbsp;户&nbsp;名</div>
						<input name="username"type="text" placeholder="请输入用户名">
					</div>
					<div class="u-pas">
						<div>密&emsp;&emsp;码</div>
						<input name="password" type="text" placeholder="请输入密码">
					</div>
					<div class="u-repas">
						<div>重复密码</div>
						<input name="repassword" type="text" placeholder="请再次输入密码">
					</div>
					<div class="u-email">
						<div>电子邮箱</div><input name="email" type="text" placeholder="请输入常用的电子邮箱">
					</div>
					<div class="u-phone">
						<div>手机号码</div>
						<input name="phone" type="text" placeholder="请输入手机号">
					</div>
					<div class="submit">
						<input type="submit" value="注&emsp;册">
					</div>
				</form>
		</div>
	</div>
</body>

</html>