<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0"/>
<title>二维码详情</title>
<link rel="stylesheet" href="../static/css/baseset.css">
<link rel="stylesheet" href="../static/css/dy_detail.css">

</head>

  <body>
    <div class="cd-layout">
			
			<!-- main -->
			<div class="main-wrap clearf">
				<div class="title">
					<label>二维码内容</label>
				</div>
				
				<div class="cd_detail">
				</div> 
				
			</div>
			
		</div>
  </body>
  <script type="text/javascript" src="../static/js/jquery-3.4.1.js"></script>
  <script>
     var name = '${type}';
     if(name=='img'){
    	 $(".cd_detail").append("<img src="+'${info}'+">");
     }
     else if(name=='text' || name==''){
    	 
    	 $(".cd_detail").append("<p>"+'${info}'+"</p>");
     }else if(name=="video" ){
    	 $(".cd_detail").append("<video src="+"${info}"+" height='200px' width='320px' controls='controls'>");
    	 
     }

</script>

<style>
     .cd_detail img{
        width:250px;
        heigth:250px;
     }
</style>
</html>
