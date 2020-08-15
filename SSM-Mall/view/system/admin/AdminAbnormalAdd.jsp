<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">公共设施管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item " ><a href="" style="color:rgb(6,218,255)">管理员模块</a></li>
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
          <a class="" href="javascript:;">信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="${pageContext.request.contextPath }/user/findCustomerServiceStaff?type=1">客服人员</a></dd>
            <dd><a href="${pageContext.request.contextPath }/user/findCustomerServiceStaff?type=2">工程师</a></dd>
            <dd><a href="${pageContext.request.contextPath }/user/findCustomerServiceStaff?type=3">客户</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="${pageContext.request.contextPath }/view/system/admin/AdminFlows.jsp">流动情况</a>
        </li>
        <li class="layui-nav-item" ><a href="${pageContext.request.contextPath }/view/system/admin/AdminAbnormal.jsp" style="color:rgb(6,218,255)">异常情况</a></li>
      	<li class="layui-nav-item"><a href="">公共设施</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <form action="${pageContext.request.contextPath }/anomaly/saveAnomaly" class="layui-form" method="post" enctype="multipart/form-data"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
				  <div class="layui-form-item" align="center">
				  <font>添加异常情况</font>
				  </div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">账户</label>
				    <div class="layui-input-block">
					<select name="username">
						<option value=-1>---请选择---</option>
						<c:forEach items="${users}" var="userDir">
						<option value=${userDir.username}>${userDir.username }</option>
						</c:forEach>
					</select>				   
					 </div>
				  </div>
				  
				 
				 	<div class="layui-form-item">
				    <label class="layui-form-label">公共设施</label>
				    <div class="layui-input-block">
					<select name="facilitiesname" lay-filter="facilitiesname" lay-verify="type" id="facilitiesname"  onchange="fun()">
						<option value=-1>---请选择---</option>
						<c:forEach items="${facilities}" var="facilitiesDir">
						<option value="${facilitiesDir.facilitiesname}">${facilitiesDir.facilitiesname }</option>
						</c:forEach>
					</select>				    	
					</div>
				  	</div>
				  	
				  	<div class="layui-form-item">
				    <label class="layui-form-label">描述</label>
				    <div class="layui-input-block">
				      	<input type="text" name="remark" value="${anomaly.remark }" placeholder="请输入异常" autocomplete="off" class="layui-input">
				    	</div>
				  	</div>
				
				<div class="layui-form-item">
				    <label class="layui-form-label">区域</label>
				    <div class="layui-input-block">
				      <select name="area" id="area" lay-filter="aihao">
				        <option value="-1" selected="">---请先选择公共设施---</option>
				       
				      </select>
				    </div>
				  </div>
				<!-- 
				<div class="layui-form-item">
				    <label class="layui-form-label">区域</label>
				    <div class="layui-input-block">
				      	<input type="text" name="area" value="${anomaly.area }" placeholder="请输入地点" autocomplete="off" class="layui-input">
				    	</div>
			  	</div>
				 -->
				
				  	
				  	<div class="layui-form-item">
						    <label class="layui-form-label">上传时间</label>
						    <div class="layui-input-block">
						      <input type="text" name="uploadtime" id="test1" required="required"
								value="${anomaly.uploadtime}" class="layui-input">
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
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    <p align="right"> 小王110606938@qq.com</p>
    
  </div>
</div>
<script src="../res/layui/layui.js" charset="utf-8"></script>
<script src="../res/jquery-1.11.0.min.js" charset="utf-8"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
<script type="text/javascript">
function fun(){
	
	$("#facilitiesname").val();
	var obj = document.getElementById("facilitiesname");
	alert("你即将订购: "+obj.value);
}   
</script>
<script type="text/html" id="toolbarDemo">
    <button class="layui-btn layui-btn-sm" lay-event="add">添加</button>
</script>

<script type="text/javascript">
layui.use(['table','laypage','laydate'], function(){
  var table = layui.table;
 var laypage = layui.laypage;
 var laydate= layui.laydate;
 var form = layui.form, layer = layui.layer;

 form.on('select(facilitiesname)', function(data){
	var facilitiesname=data.value;
	$.ajax({
		type:"post",
		url:'<c:url value="/facilities/findFacilitiesArea"/>',
		data:{"facilitiesname":facilitiesname},
		//dataType:'json',
		success:function(data){
			var str = JSON.stringify(data);
			//console.log(data.data1.length);
			//console.log(data.data1[0].area);
			var html = "";
			if(data.data1.length>0){
                $("#area").empty();//清空下拉框
                $("#area").append("<option value=''>--请选择--</option>");
                
                for(var i=0;i<data.data1.length;i++){
                   html += "<option value="+data.data1[i].area+">"+data.data1[i].area+"</option>"                   
                }
                $("#area").html(html);
            }else {
                $("#area").empty();//清空下拉框
                $("#area").append("<option value=''>--请新建规则--</option>");
            }
            form.render();//注意渲染页面表单，否则不显示数据
		},
        error: function() {
            layer.msg('获取规则失败');
            form.render();
        }
	});
    

 });
//执行一个laydate实例
laydate.render({
  elem: '#test1' //指定元素
 ,type: 'datetime'
});
  
});
</script>
</body>
</html>
