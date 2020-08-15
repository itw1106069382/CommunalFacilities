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
<script type="text/javascript">
function openAddAbnormal(){
	  layer.open({
		  type:1,
		  title: '添加异常',
	  	  content:$("#saveDiv"),
	  	  area:['600px','400px']
	  });
}
</script>
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
        <li class="layui-nav-item" ><a href="${pageContext.request.contextPath }/view/system/admin/AdminAbnormal.jsp">异常情况</a></li>
<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/view/system/admin/AdminFacilities.jsp" style="color:rgb(6,218,255)">公共设施</a></li>      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 0px;" class="layui-anim" data-anim="layui-anim-up" >
    	<table class="layui-hide" id="test" lay-filter="test">
    	</table> 		
    </div>
    <div id="test1"></div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    <p align="right"> 小王110606938@qq.com</p>
    
  </div>
</div>
<script src="../res/layui/layui.js" charset="utf-8"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>

<script type="text/html" id="barDemo">
		<a class="layui-btn layui-btn-sm" lay-event="recycled">恢复</a>
</script>

<script type="text/javascript">
layui.use(['table','laypage'], function(){
  var table = layui.table;
  var $ = layui.jquery;
 var laypage = layui.laypage;

  table.render({
    elem: '#test'
    ,url:'<c:url value="/facilities/data1"/>'
    ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
    ,cols: [[
	  {type:'checkbox'}
      ,{field:'id', width:66,title: 'ID', sort: true}
      ,{field:'facilitiesname', title: '公共设施'}
      ,{field:'status', title: '状态'}
      ,{field:'area', title: '地点'}
      ,{field:'uploadtime',width:120, title: '上传时间'}
      ,{field:'operate',width:90,title:'操作',toolbar: '#barDemo'}
    ]]
    ,page: true //开启分页
  });
  
  
  table.on('tool(test)', function(obj){
	  var data =obj.data; // 获得当前行数据
	  switch(obj.event){
	    case 'recycled':
	    	recycled(data);
	    break;
	  };
	});
  
  //删除
  function recycled(data){
		 layer.confirm('确定要恢复选中的记录吗？', {icon:3,title:'恢复确认'}, function(index){
			$.post('<c:url value="/facilities/recycledFacilities"/>',{id:data.id},function(res){
					//重载表格
					table.reload('test');
			})
				layer.close(index);
	});
  }
  
});
</script>
</body>
</html>
