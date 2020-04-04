<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
	<title>扫一扫首页</title>
	<link rel="stylesheet" href="../static/css/baseset.css">
	<link rel="stylesheet" href="../static/css/create.css">
</head>
<body>
	<div class="cd-layout">
		<!-- 顶部导航栏 -->
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a href="../page/index.do" class="f_left mar-l10"><</a>
				<span>生成二维码</span>
			</div>
		</header>
		<!-- 编辑栏 -->
		 	<div class="text-wrap">
				<div class="toolbar">
					<div class="toolbar1 clearf">
						<a href="#" ><img src="../static/imgs/pics.png" alt="图片"></a>
						<a href="#" ><img src="../static/imgs/scene.png" alt="视频"></a>
						<a href="#" ><img class="selected" src="../static/imgs/notebook.png" alt="文字"></a>
					</div>
					
					<div class="toolbar2 clearf">
						<a href="#" ><img src="../static/imgs/mic-ph.png" alt="语音"></a>
						<a href="#" ><img src="../static/imgs/link.png" alt="网页链接"></a>
						<a href="#" ><img src="../static/imgs/wc.jpg" alt="微信号"></a>
<!-- 						<ahref="#" ><img src="card.png" alt="名片"></a>
 -->					</div>
					
				</div>
				
				<div class="textArea-box clearf">
					<form  action="../code/CreateCode.do" method="post" id="form_id">
						<textarea id="text_content" class="main_text" name="text"  placeholder="请输入内容" ></textarea>
							<input type="button" class="btns" style="margin-top:170px" id="statis_id" value="生成静态码" />
							<input type="button" class="btns" id="dymantis_id" value="生成动态码"/>
					</form>
				</div>
				
		 </div>
		<!-- 最底部 -->
	<div class="cd-layout">
		<div class="bottom-nav clearf">
			<a href="../page/index.do" class="f_left w-50 clearf"><img src="../static/imgs/Home/home.png" alt="主页"></a>
			<a href="../page/login.do" class="f_right w-50 clearf "><img src="../static/imgs/Home/user.png" alt="个人中心"></a>
		</div>
	</div>
	</div>
</body>

<script>
	
	var statis_create = document.getElementById("statis_id");
	var dymantis_create = document.getElementById("dymantis_id");  
	var form_sub = document.getElementById("form_id");
	
	statis_create.onclick=function(){   
		
		if(text_content.value!=""){   
			form_sub.submit(); 
		}else{
			alert("请输入内容");
		}
		
	}
	
	dymantis_create.onclick=function(){
		
		window.location = "../page/dy_code.do?"+"text="+text_content.value;
		
	}
	
	
	
	
	
	
</script>
</html>
