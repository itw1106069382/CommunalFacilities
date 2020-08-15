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
				background-size:100%100%;
				background-image: url(../images/signbackdrop.jpg);		
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
		<div id="heading">&nbsp;</div>
<div id="container">
			
			<form action="${pageContext.request.contextPath }/flows/saveFlows" class="layui-form" method="post" enctype="multipart/form-data"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
				  <div class="layui-form-item" align="center">
				  <font>添加流动情况</font>
				  </div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">账户</label>
				    <div class="layui-input-block">
				      <input type="text" name="username" value="${flows.username }" placeholder="请输入账户" autocomplete="off" class="layui-input">
				    </div>
				  </div>
				  
				 
				 	<div class="layui-form-item">
				    <label class="layui-form-label">流动情况</label>
				    <div class="layui-input-block">
				      	<select name="flowState"  value="${flows.flowState}"  lay-filter="aihao">
					      	<option value="0" <c:if test="${flows.flowState==0}"> selected="selected"</c:if>>离职</option>    	
					        <option value="1" <c:if test="${flows.flowState==1}"> selected="selected"</c:if>>入职</option> 
		     		 	</select>
				    	</div>
				  	</div>
				  	 
				  	 <div class="layui-form-item">
						    <label class="layui-form-label">流动时间</label>
						    <div class="layui-input-block">
						      <input type="text" name="flowTime" readonly="readonly" '<fmt:formatDate
								value="${flows.flowTime}" pattern="yyyy-MM-dd" />' class="layui-input" id="test1">
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
<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //初始化时间选择器
  laydate.render({
    elem: '#test1' //指定元素
    ,type: 'datetime'
  });
});
</script>
</div>

</body>
</html>
