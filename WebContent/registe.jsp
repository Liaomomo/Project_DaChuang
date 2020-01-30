<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<h3>用户信息编辑页面</h3>
<form method="post" action="./registe.do" >
    <table>
        <tr>
            <td>姓名:</td>
            <td><input name="name" value=''/></td>
        </tr>
        <tr>
             <td>年龄:</td>
             <td><input name="age" value=''/></td>
        </tr>
        <tr>
             <td>性别:</td>
             <td><input name="sex" value=''/></td>
        </tr>
       
        <tr>
            <td colspan="2">
                <input type="submit" value="提交变更"/>
            </td>
        </tr>
    </table>
</form>
</body>

</html>