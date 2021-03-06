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
	<style>
		.selected{
			border:1px solid #ccc;
			border-radius: 25%;
			background-color:#FF8C00;
			opacity:0.7;
		}
	</style>
	<script type="text/javascript" src="../static/js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="../static/js/upload.js"></script>
	<script type="text/javascript">
		
		$(function () {
			// 显示不同页
			$(".nav_list").click(function(){
			// 获取 页码
			var t =$(this).attr("title");
			// 隐藏第一页
			$(".page").css("display","none");
			// 显示第二页
			$("#"+t).css("display","");

			})
		});
		
		
		
	</script>
	<script type="text/javascript">
	//点击样式
	     $(document).on("click","img",function(){
	     	 $("img").removeClass('selected');
			 $(this).addClass('selected');
		});

</script>
	<script>
	//图片
	$(function () {
		 var fileInput = document.querySelector('#img_input');
 		 var previewImg = document.querySelector('#preimg');
  		 fileInput.addEventListener('change', function () {
      		var file = this.files[0];
      		var reader = new FileReader();
      	// 监听reader对象的的onload事件，当图片加载完成时，把base64编码賦值给预览图片
      		reader.addEventListener("load", function () {
          		previewImg.src = reader.result;
     		 }, false);
      // 调用reader.readAsDataURL()方法，把图片转成base64
     		 reader.readAsDataURL(file);
  		}, false);
  		
  	
  	});
  	//音频
  	$(function () {
		 var fileInput = document.querySelector('#video_input');
 		 var previewVideo = document.querySelector('#prevideo');
  		 fileInput.addEventListener('change', function () {
      		var file = this.files[0];
      		var reader = new FileReader();
      	// 监听reader对象的的onload事件，当图片加载完成时，把base64编码賦值给预览图片
      		reader.addEventListener("load", function () {
          		previewVideo.src = reader.result;
     		 }, false);
      // 调用reader.readAsDataURL()方法，把图片转成base64
     		 reader.readAsDataURL(file);
  		}, false);
  		
  	
  	});
  	function priShow(){
  		document.getElementById("wx_pri").style.display = "";
  		document.getElementById("wx_pub").style.display = "none";
  	}
  	function pubShow(){
  		document.getElementById("wx_pri").style.display = "none";
  		document.getElementById("wx_pub").style.display = "";
  	}
  	
  	$(function(){
    	$(".toolbar").find("img").click(function(e){
    		$(".toolbar img").removeClass("selected");
    		$(this).addClass("selected");
    	});
    })
</script>

</head>
<body>
	<div class="cd-layout">
		<!-- 顶部导航栏 -->
		<header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a href="../page/index.do" class="f_left mar-l10"><</a>
				<span style="padding-left:5%">生成二维码</span>
				<p style="float:right;padding-right: 5%;" id="header_login">
				      <a href="#" style="color:green">登录</a>
				      <a href="#" style="color:green">/注册</a>
				      
				</p>
				<a href="../page/dy_code.do" style="float:right;" id="dy_code_Back">活码后台</a>
			</div>
		</header>
		<!-- 编辑栏 -->
		 	<div class="text-wrap">
				<div class="toolbar">
					<div class="toolbar1 clearf">
						<a class="nav_list" title="page_1" href="#"  ><img src="../static/imgs/pics.png" alt="图片">图片</a>
						<a class="nav_list" title="page_2" href="#" ><img  src="../static/imgs/scene.png" alt="视频">视频</a>
						<a class="nav_list" title="page_3" href="#" ><img class="selected" src="../static/imgs/notebook.png" alt="文字">文字</a>
					</div>
					
					<div class="toolbar2 clearf">
						<a class="nav_list" title="page_4" href="#"  ><img  src="../static/imgs/upload.png" alt="语音">文件</a>
						<a class="nav_list" title="page_5" href="#" ><img   src="../static/imgs/link.png" alt="网页链接">链接</a>
						<a class="nav_list" title="page_6" href="#" ><img   src="../static/imgs/wc.jpg" alt="微信号">微信</a>
<!-- 						<ahref="#" ><img src="card.png" alt="名片"></a>
 -->					</div>
					
				</div>
				<!--1. 图片 -->
				<div class="textArea-box clearf page" style="display: none; height:auto"id="page_1" >
					<form  action="../code/upload.do" method="post" id="form_img" enctype="multipart/form-data">
						<div >
							<input type="file" style="margin-bottom:10px" id="img_input" name="upfile"><br>
							<img src="" id="preimg" height="130px"   alt="Image preview area..." title="preview-img">
						</div>
						<div class="div_Singular" >
						   <input type="button" class="btns_Singular"  id="img_id" value="生成活码" />
						   <span>生成活码需先   <a href="../page/login.do" style="color:green">登录</a></span>
						</div>
					</form>
				
				</div>
				
				<!--2. 视频 -->
				<div class="textArea-box clearf page" style="display: none; height:auto"id="page_2" >
					<form  action="../code/upload.do" method="post" id="form_02" class="form_video" enctype="multipart/form-data">
						<div >
							<input type="file" style="margin-bottom:10px" id="video_input" name="upfile"><br>
							<video src="" id="prevideo" controls="controls" height="200px" width="320px"   title="preview-img">
								your browser does not support the video tag
							</video>
						<!-- <img src="" id="prevideo" > -->
							
						</div>
						<div class="div_Singular" >
						   <input type="button" class="btns_Singular"  id="video_id" value="生成活码" />
						   <span>生成活码需先   <a href="../page/login.do" style="color:green">登录</a></span>
						</div>
					</form>
				
				</div>
				<!--3. 文本 -->
				<div class="textArea-box clearf page" id="page_3">
					<form  action="../code/CreateCode.do" method="post" id="form_text">
						<textarea id="text_content" class="main_text" name="text"  placeholder="请输入内容" ></textarea>
							<div class="div_two" >
							<input type="button" class="btns" style="margin-top:160px"  id="statis_text" value="生成静态码" />
							<input type="button" class="btns"  id="dymantis_id" value="生成动态码"/>
							</div>
							
					</form>
				</div>
				<!-- 4.文件 -->
				<div class="textArea-box clearf page" id="page_4" style="display:none;" >
					<form  action="../code/upload.do" method="post" id="form_04" class="form_data" enctype="multipart/form-data" >
						<label  >请选择上传的文件</label>
       					<input type="file" name="upfile"  onchange="fileSelected();" id="data_input"  style="margin-top:15px">
       					<div id="fileName"></div>
   						<div id="fileSize"></div>
    					<div id="fileType"></div>
						<div class="div_Singular" >
						   <input type="button" class="btns_Singular"  id="data_id" value="生成活码" />
						   <span>生成活码需先   <a href="../page/login.do" style="color:green">登录</a></span>
						</div>
					</form>
				</div>
				<!--5. 网址 -->
				<div class="textArea-box clearf page" id="page_5" style="display:none;">
					<form  action="../code/CreateCode.do" method="post"  id="form_web">
						<div>
							<label>请输入网页地址</label>
							<input type="text" id="web_content" class="url_input" name="text" placeholder="http://" value="" ></div>
							<input type="button" class="btns" style="margin-top:20px" id="statis_web" value="生成静态码" />
							<input type="button" class="btns" id="dymantis_id" value="生成动态码"/>
					</form>
				</div>
				<!-- 6.微信 -->
				<div class="textArea-box clearf page" id="page_6" style="display:none;">
					<form  action="./code/CreateCode.do" method="post" id="form_weixin">
						<div>
							<a href="#" class="wx" onclick="pubShow()">公众号</a>
							<a href="#" class="wx" style="margin-left:20px;" onclick="priShow()">个人账号</a>
								<div id="wx_pub" style="margin-top:20px;">
									<input type="text" id="weixin_content" class="url_input" name="text" placeholder="http://" value="" >
								</div>
							
								<div id="wx_pri" style="display:none;margin-top:20px;"  placeholder="请输入微信公众号的微信号">
									<button>上传二维码文件</button> <button>摄像头扫描</button> 
								</div>
							<input type="button" class="btns" style="margin-top:20px" id="statis_weixin" value="生成静态码" />
							<input type="button" class="btns" id="dymantis_id" value="生成动态码"/>
						</div>
					</form>
				</div>
				
			
		 <div class="cd-layouts">
		     <div class="bottom-nav clearf">
			    <a href="../page/index.do" class="f_left w-50 clearf"><img src="../static/imgs/Home/home.png" alt="主页"></a>
			    <a href="../page/login.do" class="f_right w-50 clearf "><img src="../static/imgs/Home/user.png" alt="个人中心"></a>
		     </div>
	   </div>
	
</div>
</div>
</body>
<script type="text/javascript" src="../static/js/jquery-3.4.1.js"></script>
<script>
	

<!--静态文本二维码-->
$("#statis_text").click(function(){
	
	if($("#text_content").val()!=""){   
		$("#form_text").submit(); 
	}else{
		alert("请输入内容");
	}
});
<!--静态web二维码-->
$("#statis_web").click(function(){
	
	if($("#web_content").val()!=""){   
		$("#form_web").submit(); 
	}else{
		alert("请输入内容");
	}
});

<!--静态微信二维码-->
$("#statis_weixin").click(function(){
	
	if($("#weixin_content").val()!=""){   
		$("#form_weixin").submit(); 
	}else{
		alert("请输入内容");
	}
});
   
<!--文本活码生成直接跳转dy_code页面-->
$("#dymantis_id").click(function(){
	window.location = "../page/dy_code.do?"+"text="+text_content.value;
});

<!--用户登录显示-->
$(function(){
    var username = '<%= session.getAttribute("name")%>';
    if(username!=null && username!='null'){
    	$("#header_login").text("欢迎 "+username) ;
    	$(".div_Singular").find("span").hide();
    }
 })
 
 <!--判断用户是否在按下生成活码时 是否登录-->
 $("#img_id").click(function(){
	 
	 var username = '<%= session.getAttribute("name")%>';
	 if(username ==null || username=='null'){
		 alert("请先登录");
	 }else if(!($('#img_input').get(0).files[0])){
		 alert("请上传文件");
	 }
	 else{
		 
		 $("#form_img").submit();
		 
	 }
 });
 
 <!--判断用户是否在按下生成活码时是否登录-->
 $("#video_id").click(function(){
	 
	 var username = '<%= session.getAttribute("name")%>';
	 if(username ==null || username=='null'){
		 alert("请先登录");
	 }else if(!($('#video_input').get(0).files[0])){
		 alert("请上传文件");
	 }
	 else{
		 
		 $(".form_video").submit();
		 
	 }
 });
 
 <!--判断用户是否在按下生成活码时 是否登录-->
 $("#data_id").click(function(){
	 
	 var username = '<%= session.getAttribute("name")%>';
	 if(username ==null || username=='null'){
		 alert("请先登录");
	 }else if(!($('#data_input').get(0).files[0])){
		 alert("请上传文件");
	 }
	 else{
		 
		 $(".form_data").submit();
		 
	 }
 });

</script>
</html>
