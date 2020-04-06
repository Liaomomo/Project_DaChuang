<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
  <meta content="yes" name="apple-mobile-web-app-capable">
  <meta content="black" name="apple-mobile-web-app-status-bar-style">
  <meta content="telephone=no" name="format-detection">
  <meta content="email=no" name="format-detection">
  <script type="text/javascript" src="../static/js/jquery-3.4.1.js"></script>

  <title>扫码</title>
  <link rel="stylesheet" href="../static/css/baseset.css"/>
  <link rel="stylesheet" href="../static/css/scan.css" />
  
</head>

<body>
     <header class="cd-header clearf">
			<div class="cd-header-box clearf">
				<a href="../page/index.do" class="f_left mar-l10" style="display:''"><</a>
				<span>扫描二维码</span>
			</div>
		</header>
    <div class="total">
        <!-- 扫码区域 -->
        <div id="outdiv" class="scanning_frame">
            <video id="v" autoplay></video>
            <canvas id="qr-canvas"></canvas>
            <!--加载动画-->
            <div class="spinner" id="loading">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
        <div id="context">
        	 
        	
        	 <li><form action=""><input type="file" value="上传图片"/></form></li>
        	 <li> <button class="img_scan">图片解码</button></li>
        </div>
        
        <!-- 展示扫码结果 -->
        <div style="margin-top:3%">
            <p id="result"></p>
            <button class="again_scan" style="margin:0 atuo;"  id="again">在扫一次</button>
        </div>
    </div>
    
     <div class="cd-layout">
		<div class="bottom-nav clearf">
			<a href="../page/index.do" class="f_left w-50 clearf"><img src="../static/imgs/Home/home.png" alt="主页"></a>
			<a href="../page/login.do" class="f_right w-50 clearf "><img src="../static/imgs/Home/user.png" alt="个人中心"></a>
		</div>
	</div>

</body>

<script type="text/javascript" src="../static/js/can_js/grid.js"></script>
<script type="text/javascript" src="../static/js/can_js/version.js"></script>
<script type="text/javascript" src="../static/js/can_js/detector.js"></script>
<script type="text/javascript" src="../static/js/can_js/formatinf.js"></script>
<script type="text/javascript" src="../static/js/can_js/errorlevel.js"></script>
<script type="text/javascript" src="../static/js/can_js/bitmat.js"></script>
<script type="text/javascript" src="../static/js/can_js/datablock.js"></script>
<script type="text/javascript" src="../static/js/can_js/bmparser.js"></script>
<script type="text/javascript" src="../static/js/can_js/datamask.js"></script>
<script type="text/javascript" src="../static/js/can_js/rsdecoder.js"></script>
<script type="text/javascript" src="../static/js/can_js/gf256poly.js"></script>
<script type="text/javascript" src="../static/js/can_js/gf256.js"></script>
<script type="text/javascript" src="../static/js/can_js/decoder.js"></script>
<script type="text/javascript" src="../static/js/can_js/qrcode.js"></script>
<script type="text/javascript" src="../static/js/can_js/findpat.js"></script>
<script type="text/javascript" src="../static/js/can_js/alignpat.js"></script>
<script type="text/javascript" src="../static/js/can_js/databr.js"></script>
<script type="text/javascript" src="../static/js/can_js/webcam.js"></script>
<script type="text/javascript">load()</script>
<script type="text/javascript">


$(function(){
	$(".again_scan").hide();
})
<!--刷新页面-->
$(".again_scan").click(function(){
	location.reload();
});

$(".again_scan").click(function(){
	location.reload();
});

</script>
</html>