<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>扫码</title>
</head>
<body>

<div id="scan_text">

    <div id="scan_code">
    </div>
    
    <div id = "img_code">
          <form  action="../code/decoder.do" method="post" id="form_img" enctype="multipart/form-data">
			<div >
				<input type="file" style="margin-bottom:10px" id="img_input" name="upfile"><br>
			</div>
		</form>
    </div>

</div>

</body>
</html>