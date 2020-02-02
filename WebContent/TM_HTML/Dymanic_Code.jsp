<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
       body{
       
          width:95%;
          margin: 0 auto;
       
       }
       div{
           display: inline-block;
           width: 42%;
           vertical-align: top;
           height:auto;
           
       
       }
</style>
</head>
<body>

   <div>
       <h2>条码信息</h2>
       <form action="./Change_Dynamic_Code.do">
               <textarea rows="10" cols="50" name="text" >${info}</textarea>
                <p>
	                <input type="submit" value="提交">
	                <input type="reset" value="重置">
               </p>
               
      </form>
   </div>
   <div><img src=${img_url}></div>
   
   

</body>
</html>