<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="<%=basePath %>/res/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="<%=basePath %>/res/bootstrap/css/bootstrap.css" media="all">
	
	<style type="text/css">
			body{
				margin: 0px;
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
				height:25%;
				
			}
			div#content{
				width: 100%;
				height: 65%;
				float: left;
			}
			
			div#footing{
				width: 100%;
				height: 10%;
				float: left;
			}
		</style>
</head>
		<div id="heading">&nbsp;</div>
		<div id="container">
			<form class="layui-form" action="${pageContext.request.contextPath }/user/login"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
  <div class="layui-form-item" align="center">
  <font>修改密码①</font>
  </div>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <span style="color:red; font-size: 15px;">${message }</span>
  <div class="layui-form-item">
    <label class="layui-form-label">账户</label>
    <div class="layui-input-block">
      <input type="text" name="username" placeholder="请输入账户" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-block">
      <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
    </div>
  </div>
 
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn layui-btn-radius" lay-submit lay-filter="*">下一步</button>
      <button type="reset" class="layui-btn layui-btn-radius layui-btn-primary">重置</button>
      <input name="identify" type="hidden" value="2">
    </div>
  </div>
  <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
</form>

<script src="../res/layui/layui.js" charset="utf-8"></script>
<script>
layui.use('form', function(){
  var form = layui.form;
  
  //各种基于事件的操作，下面会有进一步介绍
});
</script>
		</div>

</body>
</html>
