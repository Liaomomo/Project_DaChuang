<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
	<title>扫一扫首页</title>
	<link rel="stylesheet" href="./static/css/baseset.css">
	<link rel="stylesheet" href="./static/css/create.css">
</head>
<body>
	<div class="cd-layout">
		<!-- 顶部导航栏 -->
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a href="index.jsp" class="f_left mar-l10"><</a>
				<span>生成二维码</span>
			</div>
		</header>
		<!-- 编辑栏 -->
		 	<div class="text-wrap">
				<div class="toolbar">
					<div class="toolbar1 clearf">
						<a href="#" ><img src="create/pics.png" alt="图片"></a>
						<a href="#" ><img src="create/scene.png" alt="视频"></a>
						<a href="#" ><img class="selected" src="create/notebook.png" alt="文字"></a>
					</div>
					
					<div class="toolbar2 clearf">
						<a href="#" ><img src="create/mic-ph.png" alt="语音"></a>
						<a href="#" ><img src="create/link.png" alt="网页链接"></a>
						<a href="#" ><img src="create/wc.jpg" alt="微信号"></a>
<!-- 						<ahref="#" ><img src="card.png" alt="名片"></a>
 -->					</div>
					
				</div>
				
				<div class="textArea-box clearf">
					
					<form  action="./CreateCode.do" method="post" id="formid">
						<textarea id="text-content" class="main_text " name="text"  placeholder="请输入内容" ></textarea>
						
					</form>
				
				
				</div>
				
		 </div>
		<!-- 最底部一键生成 -->
		<div class="bottom-nav clearf">
			<a href="index.jsp" class="f_left w-50 clearf"><img src="create/home.png" alt="主页"></a>
			<button class="clearf"  id="jitiao" style="cursor:pointer"><img src="create/code.png" alt="二维码生成按钮"><b>一键生成</span></button>
 			<a href="user.jsp" class="f_right w-50  "><img class="icon-user" src="create/user.png" alt="个人中心"></a>
		</div>
	</div>
</body>

<script>
	
	var ojb = document.getElementById("jitiao");
	var ojb1 = document.getElementById("text-content");  
	
	ojb.onclick=function()
	{   
		
		if(ojb1.value!="")
		{   
		    document.getElementById("formid").submit(); 
		}
		
	}
	
	
</script>
</html>