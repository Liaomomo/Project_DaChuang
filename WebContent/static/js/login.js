$(document).ready(function(){
 
   $("#login").click(function(){
	   
	   var username = $(".username").val()
	   var password = $(".userpassword").val()
       $.ajax({
           type: "POST",    //请求类型
           url: "../user/login.do", //请求地址和参数    GET请求才把参数写在这里
           
           data:{
        	      "username":username,
        	      "password":password
        	   },    //POST请求的参数以JSON格式传参
           success: function (res) {   //请求成功后执行的函数res是返回的值
        	   
        	   if(res==null || res==""){
        		   alert("密码错误");
        	   }else{
        		   window.location.href='../page/index.do'
        		   
        	   }
               
           }
       });
	     
   });
   
   
   
   $("#register").click(function(){
	   
	   window.location.href='../page/register.do'
	  
   });
   
   
 
});