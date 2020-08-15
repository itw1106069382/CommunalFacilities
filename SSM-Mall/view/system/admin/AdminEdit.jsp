<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			}
			div#container{
				width: 100%;
				height: 600px;
				background-color: lightcyan;
			}
			div#heading{
				width: 100%;
				height: 20%;
				
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
		</style>
</head>
		
		<div id="container">
			
			<form action="${pageContext.request.contextPath }/user/updateUser?id=${user.id}" class="layui-form" method="post" enctype="multipart/form-data"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
  <div class="layui-form-item" align="center">
  <font>编辑</font>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">账户</label>
    <div class="layui-input-block">
      <input type="text" readonly="readonly" name="username" value="${user.username }" placeholder="请输入账户" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-block">
      <input type="password" name="password" value="${user.password }" placeholder="请输入密码" autocomplete="off" class="layui-input">
    </div>
  </div>
 
 	<div class="layui-form-item">
    <label class="layui-form-label">邮箱</label>
    <div class="layui-input-block">
      <input type="text" name="email" value="${user.email }" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
    </div>
  	</div>
  	  <div class="layui-form-item">
    <label class="layui-form-label">性别</label>
    <div class="layui-input-block">
      <input type="radio" name="sex" value="男" title="男" <c:if test="${user.sex=='男'}">checked</c:if>>
      <input type="radio" name="sex" value="女" title="女" <c:if test="${user.sex=='女'}">checked</c:if>>
    </div>
  </div>
 	<div class="layui-form-item">
		    <label class="layui-form-label">城市</label>
		    <div class="layui-input-block">
		      <input type="text" name="city" placeholder="请输入城市" value="${user.city }" autocomplete="off" class="layui-input">
		    </div>
  	</div>
  	<div class="layui-form-item">
		    <label class="layui-form-label">签名</label>
		    <div class="layui-input-block">
		      <input type="text" name="signature" value="${user.signature }" placeholder="请输入签名" autocomplete="off" class="layui-input">
		    </div>
  	</div>
  	
  	  <div class="layui-form-item">
		    <label class="layui-form-label">类型</label>
		    <div class="layui-input-block">
		      <select name="type"  value="${user.type}"  lay-filter="aihao">
		      	<option value="0" <c:if test="${user.type==0}"> selected="selected"</c:if>>管理员</option>    	
		        <option value="1" <c:if test="${user.type==1}"> selected="selected"</c:if>>客服人员</option> 
		        <option value="2" <c:if test="${user.type==2}"> selected="selected"</c:if>>工程师</option> 
		        <option value="3" <c:if test="${user.type==3}"> selected="selected"</c:if>>客户</option>
		      </select>
		    </div>
    	</div>
  	
  	<div class="layui-form-item">
    <label class="layui-form-label">头像</label>
    <div class="layui-input-block">
      <input type="file" name="uploadfile" value="">	
    </div>
  	</div>
 
  <div class="layui-form-item">
    <div class="layui-input-block" align="center">
      <button class="layui-btn" lay-submit lay-filter="*" >立即提交</button>
      <input type="hidden" name="id" value="${param.id }">
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
  <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
</form>

<script src="<%=basePath %>/res/layui/layui.js" charset="utf-8"></script>

<script>
layui.use('form', function(){
  var form = layui.form;
  
  //各种基于事件的操作，下面会有进一步介绍
});
</script>
		</div>

</body>
</html>
