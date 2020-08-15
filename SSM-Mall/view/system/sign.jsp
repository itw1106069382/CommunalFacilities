<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <link rel="stylesheet" href="./res/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="./res/bootstrap/css/bootstrap.css" media="all">
	
<style type="text/css">
			body{
				margin:auto;
				background-size:100%100%;
				background-image: url(./images/signbackdrop.jpg);						
			}
			div#container{
				width: 100%;
				height: 600px;
				display:flex;
				flex-direction:column;				
				align-items:	center;	
				
			}
			div#heading{
				width: 100%;
				height: 8%;
				
			}
			div#content{
				width: 100%;
				height: 70%;
				float: left;
			}
			
			div#footing{
				width: 100%;
				height: 10%;
				float: left;
			}
			.layui-form-item {
    width: 510px;
}
</style>
<script type="text/javascript">
function validateForm(){
	var x=document.getElementById("username_span").innerHTML;
	if (x==null || x=="" || x=="用户名已存在"){
	  alert("用户名已存在");
	  return false;
	  }
}
	
function checkname(){
	var f=false;
	//javascript所有的变量都是以var定义的
	//javascript的变量属于弱类型
	//获取用户输入的用户名
	var name = document.getElementById("username").value;
	//去除字符串两端空格
	name=name.trim();
	//判断是否为空
	if(name==""){
		alert(1)
		document.getElementById("username_span").innerHTML="用户名不能为空";
	}else if(name.length<6||name.length>16){
		alert(2)
		document.getElementById("username_span").innerHTML="用户名的长度为6-16位";
	}
	else{
		document.getElementById("username_span").innerHTML="";
		//校验用户名是否存在
		//使用ajax异步校验用户名
		$.ajax({
			url:'<c:url value="/user/checkName"/>',
			type:"post",
			data:{"username":name},//json数据格式的用户名从jsp传递给controller
			dataType:"json",
			async:false,//让ajax执行代码顺序同步
			success:function(data){
				if(data.msg=="false"){
					document.getElementById("username_span").innerHTML="用户名已存在";
				}else{
					document.getElementById("username_span").innerHTML="用户名可用";
					f=true;
				}
				//console.log(data.user.city)
			}
		});	
		
		
		
	}
	return f;
} 
</script>		
		
</head>
<body >				
			
	<div id="heading">&nbsp;</div>
	<form name="myForm"  action="${pageContext.request.contextPath }/user/sign" class="layui-form" method="post" onsubmit="return validateForm()" enctype="multipart/form-data"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
	 <div id="container" >
	  <div class="layui-form-item" align="center">
	  <font>欢迎注册公共设施管理账号</font>
	  </div>
	 
	  <div class="layui-form-item">
	    <label class="layui-form-label">账户</label>
	    <div class="layui-input-block">
	    <div class="layui-input-inline">
	  	  <input type="text" id="username" name="username" onblur="checkname()" placeholder="请输入账户" class="layui-input">	
	       <span id="username_span" name="fname"></span>
	       </div>
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">密码</label>
	    <div class="layui-input-block">
	    <div class="layui-input-inline">
	      <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
	    </div>
	    </div>
	  </div>
	 
	 	<div class="layui-form-item">
	    <label class="layui-form-label">邮箱</label>
	    <div class="layui-input-block">
		   <div class="layui-input-inline">
		     <input type="text" name="email" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
		  	</div>
		  	<div class="layui-input-inline">
		  		<select name="email_suffix" lay-verify="required">
			        <option value="@qq.com">@qq.com</option>
			        <option value="@163.com">@163.com</option>
			        <option value="@126.com">@126.com</option>
			        <option value="@sina.com">@sina.com</option>
			 </select>
		  	</div>  	
	    </div>
	  	</div>
	  	  <div class="layui-form-item">
	    <label class="layui-form-label">性别</label>
	    <div class="layui-input-block">
	      <input type="radio" name="sex" value="男" title="男">
	      <input type="radio" name="sex" value="女" title="女" checked>
	    </div>
	  </div>
	 	<div class="layui-form-item">
	    <label class="layui-form-label">城市</label>
	    <div class="layui-input-block">
	    <div class="layui-input-inline">
	      <input type="text" name="city" placeholder="请输入城市" autocomplete="off" class="layui-input">
	    </div>
	    </div>
	  	</div>
	  	<div class="layui-form-item">
	    <label class="layui-form-label">签名</label>
	    <div class="layui-input-block">
	    <div class="layui-input-inline">
	      <input type="text" name="signature" placeholder="请输入签名" autocomplete="off" class="layui-input">
	    </div>
	    </div>
	  	</div>
	  	<div class="layui-form-item">
	    <label class="layui-form-label">头像</label>
	    <div class="layui-input-block">
	      <input type="file" name="uploadfile">	
	    </div>
	  	</div>
	 
	  <div class="layui-form-item">
	    <div class="layui-input-block" align="center">
	      <button class="layui-btn layui-btn-radius" lay-submit lay-filter="*" >立即提交</button>
	      <button type="reset" class="layui-btn layui-btn-radius layui-btn-primary">重置</button>
	    </div>
	  </div>
  <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
</div>
</form>

<script src="./res/layui/layui.js" charset="utf-8"></script>
<script src="./res/jquery-1.11.0.min.js" charset="utf-8"></script>

<script>
layui.use('form', function(){
  var form = layui.form;
  
  //各种基于事件的操作，下面会有进一步介绍
});


</script>


</body>
</html>
