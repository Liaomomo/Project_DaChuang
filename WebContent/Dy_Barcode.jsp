<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
	<title>扫一扫首页</title>
	<link rel="stylesheet" href="../static/css/baseset.css">
	<link rel="stylesheet" href="../static/css/dy_create.css">
</head>
<body>
	<div class="cd-layout">
		<!-- 顶部导航栏 -->
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a href="../page/BarCode.do" class="f_left mar-l10"><</a>
				<span>生成二维码</span>
			</div>
		</header>
		<div class="text_title">
		       <input value="" name="t_title" id="t_title" placeholder="请输入标题" />
		</div>
		<!-- 编辑栏 -->
		 	<div class="text-wrap">
				<div class="toolbar">
					<div class="toolbar1 clearf">
						<a href="#" ><img src="../static/imgs/pics.png" alt="图片"></a>
						<a href="#" ><img src="../static/imgs/scene.png" alt="视频"></a>
						<a href="#" ><img class="../selected" src="../static/imgs/notebook.png" alt="文字"></a>
					</div>
					
					<div class="toolbar2 clearf">
						<a href="#" ><img src="../static/imgs/mic-ph.png" alt="语音"></a>
						<a href="#" ><img src="../static/imgs/link.png" alt="网页链接"></a>
						<a href="#" ><img src="../static/imgs/wc.jpg" alt="微信号"></a>
<!-- 						<ahref="#" ><img src="card.png" alt="名片"></a>
 -->					</div>
					
				</div>
				
				<div class="textArea-box clearf">
					
					<form  action="../code/Create_Dynamic_Code.do" method="post" id="formid">
						<textarea id="text-content" class="main_text " name="text"  placeholder="请输入内容" >${text}</textarea>
						
					</form>
				
				
				</div>
				
		 </div>
		<!-- 最底部一键生成 -->
		<div class="bottom-nav clearf">
			<a href="../page/index.do" class="f_left w-50 clearf"><img src="../static/imgs/Home/home.png" alt="主页"></a>
			<button class="clearf"  id="dy_code" style="cursor:pointer"><img src="../static/imgs/code.png" alt="二维码生成按钮"><b>一键生成</span></button>
			<a href="../page/login.do" class="f_right w-50  "><img src="../static/imgs/Home/user.png" alt="个人中心"></a>
		</div>
	</div>
</body>

<script>
	
	var form_sub = document.getElementById("formid");
	var text_content = document.getElementById("text-content"); 
	var t_ttile = document.getElementById("t_title"); 
	var dy_code = document.getElementById("dy_code"); 
	
	
	dy_code.onclick=function(){
		var username = '<%= session.getAttribute("name")%>';
		
		form_sub.action="../code/Create_Dynamic_Code.do?title="+t_ttile.value
	
		if(username !="null" &&  text_content.value!="" ){  
			
			 form_sub.submit(); 
			
		}else if(username =="null" ){
			alert("请登录");
		}else if(text_content.value=="")
		{
			alert("请输入内容");
		}
	
	}
	
	
</script>
</html>