$(function () {
	// 检查用户名
	$("#username").blur(function(){
		var str=$("#username").val();
		// var str=$(this).text();
		isUsername(str);
	})
	// 检查邮箱
	$("#e-maile").blur(function () {
		var str=$("#e-maile").val();
		isEmail(str);
	})
	//检查密码
	$("#psd").blur(function(){
		var str=$("#psd").val();
		// var str=$(this).text();
		isPsd(str);
	})
	// 重复密码
	$("#repsd").blur(function(){
		var str=$("#repsd").val();
		chkRepsd(str);
	})
	//检查身份证号
	$("#idNum").blur(function(){
		var str=$("#idNum").val();
		isIDnum(str);
	})
	//检查手机号
	$("#telNum").blur(function(){
		var str=$("#telNum").val();
		isTelnum(str);
	})
	//检查所有
	$("#submit").click(function () {
		// body...
		var user_str=$("#username").val();
		var email_str=$("#e-maile").val();
		var psd_str=$("#psd").val();
		var repsd_str=$("#repsd").val();
		var id_str=$("#idNum").val();
		var telNum_str=$("#telNum").val();
		
		var error_str="";
		var tag=0;
		if (!isUsername(user_str)) {
			tag=1;
			error_str=error_str+"用户名输入不正确！\n"
		}
		if (!isEmail(email_str)) {
			tag=1;
			error_str=error_str+"邮箱输入不正确！\n";
		}
		if(!isPsd(psd_str)){
			// alert("密码输入不正确!");
			tag=1;
			error_str=error_str+"密码输入不正确！\n";
		}
		if(!chkRepsd(repsd_str)){
			// alert("密码输入不正确!");
			tag=1;
			error_str=error_str+"两次密码不一致！\n";
		}
		if(!isIDnum(id_str)){
			tag=1;
			error_str=error_str+"身份证号输入不正确！\n";
		}
		if(!isTelnum(telNum_str)){
			tag=1;
			error_str=error_str+"电话号码输入不正确！\n";
		}
		if (tag==1) {
			alert(error_str);
			return false;
		}
	})
// End
})

// 检验用户名
function isUsername(str) {
	if (str=="") {
		$("#userWarn").css('color','red');
		$("#userWarn").text("用户名不能为空！");
		return false;
	}else{
		//  /^[a-zA-Z]([_a-zA-Z0-9]{4,16})$/
		var re =/^[_a-zA-Z0-9]{4,16}$/;
		if (re.test(str)) {
			$("#userWarn").css('color','#000');
			$("#userWarn").text("");
			return true;
		}else{
			$("#userWarn").css('color','red');
			$("#userWarn").text("用户名需4-16个英文、数字或下划线字符!");
			return false;
		}
	}
	
}
//检验密码
function isPsd(str) 
{
	if (str=="") {
		$("#psdWarn").css('color','red');
		$("#psdWarn").text("密码不能为空！");
		return false;
	}else{
		var re =/^[_a-zA-Z0-9]{4,16}$/;
		if (re.test(str)) 
		{
			$("#psdWarn").css('color','#000');
			$("#psdWarn").text("");
			return true;
		}else{
			$("#psdWarn").css('color','red');
			$("#psdWarn").text("密码长度在4-16个字符！");
			return false;
		}
		
	}
}

// 两次密码是否非空或是否一样。
function chkRepsd(str) 
{
	if (str=="") 
	{
		$("#repsdWarn").css('color','red');
		$("#repsdWarn").text("密码不能为空！");
		return false;
	}else{
		if($("#repsd").val()!=$("#psd").val())
		{
			$("#repsdWarn").css('color','red');
			$("#repsdWarn").text("两次输入的密码不一致");
			return false;
		}else{
			$("#repsdWarn").text("");
		}
	}
}
// 检验邮箱
function isEmail(str){
	if (str=="") {
		$("#emailWarn").css('color','red');
		$("#emailWarn").text("电子邮箱不能为空！");
		return false;
	}else{
		var re =/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;
		if (re.test(str)) {
			$("#emailWarn").text("");
			return true;
		}else{
			$("#emailWarn").css('color','red');
			$("#emailWarn").text("电子邮箱输入格式错误！");
			return false;
		}
	}
	
}

function isTelnum(str){
	var re=/^(?:(?:\(0\d{2,3}\)[- ]?\d{7,8})|(?:(?:0\d{2,3}[- ]?)\d{7,8})|(?:1\d{10}))$/;
	if (re.test(str)) {
		$("#telWarn").text("");
		return true;
	}else{
		$("#telWarn").css('color','red');
		$("#telWarn").text("电话号码格式不对");
		return false;
	}
}






