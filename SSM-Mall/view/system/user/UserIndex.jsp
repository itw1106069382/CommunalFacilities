<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <link rel="stylesheet" href="../res/layui/css/layui.css" media="all">
  
  <script src="../res/layui/layui.js" charset="utf-8"></script>

<script>
layui.use('upload', function(){
  var upload = layui.upload;
  
  //执行实例
  var uploadInst = upload.render({
    elem: '#test1' //绑定元素
    ,url: '/upload/' //上传接口
    ,done: function(res){
      //上传完毕回调
    }
    ,error: function(){
      //请求异常回调
    }
  });
});
</script>
 
 <script type="text/javascript">
layui.use(['table','laypage','laydate'], function(){
  
});
</script>

  
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">公共设施管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item " ><a href="" style="color:rgb(6,218,255)">用户模块</a></li>
      <li class="layui-nav-item"><a href=""></a></li>
      <li class="layui-nav-item"><a href=""></a></li>
      <li class="layui-nav-item"></li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="${pageContext.request.contextPath }${user.smallPic}" class="layui-nav-img">
          ${user.username}
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/view/system/login.jsp">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="${pageContext.request.contextPath }/view/system/user/UserIndex.jsp" style="color:rgb(6,218,255)">上报异常情况</a>
        </li>
        <li class="layui-nav-item layui-nav-itemed">
        	<a class="" href="${pageContext.request.contextPath }/anomaly/findAnomalyByusername">历史记录</a>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 0px;" class="layui-anim" data-anim="layui-anim-up" >
 
  	<form class="layui-form" action="${pageContext.request.contextPath }/anomaly/uploadAnomaly" method="post" enctype="multipart/form-data">	  	    	
	  	  
	  <div class="layui-form-item">
		    <label class="layui-form-label">公共设施</label>
		    <div class="layui-input-block">
			<select name="facilitiesname">
				<option value=-1>---请选择---</option>
				<c:forEach items="${facilities}" var="facilitiesDir">
				<option value="${facilitiesDir.facilitiesname}">${facilitiesDir.facilitiesname }</option>
				</c:forEach>
			</select>				    	
			</div>
	  	</div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">地点</label>
	    <div class="layui-input-block">
	      <input type="text" name="area" required  lay-verify="required" placeholder="请输入地点" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">内容</label>
	    <div class="layui-input-block">
	      <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
    <label class="layui-form-label">文件</label>
    <div class="layui-input-block">
      <input type="file" name="uploadfile" value="">	
    </div>
  	</div>
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	 
	      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
	      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
	    </div>
	  </div>
</form>
    	
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    <p align="center"> 小王110606938@qq.com</p>
    
  </div>
</div>

</body>
</html>
