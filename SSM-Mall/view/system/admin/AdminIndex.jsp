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
<style>
.laytable-cell-1-0-6{
 width: 50px!important;
 padding:0!important;
}

[data-field=smallPic]{
padding:0!important;
 width: 50px!important;
 height:50px!important;
}

</style>
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
          <a class="" href="javascript:;"><font>信息管理</font></a>
          <dl class="layui-nav-child">
            <dd><a href="${pageContext.request.contextPath }/user/findCustomerServiceStaff?type=1">客服人员</a></dd>
            <dd><a href="${pageContext.request.contextPath }/user/findCustomerServiceStaff?type=2">工程师</a></dd>
            <dd><a href="${pageContext.request.contextPath }/user/findCustomerServiceStaff?type=3">客户</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="${pageContext.request.contextPath }/view/system/admin/AdminFlows.jsp">流动情况</a>
        </li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/view/system/admin/AdminAbnormal.jsp">异常情况</a></li>
      	<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/view/system/admin/AdminFacilities.jsp">公共设施</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 0px;" class="layui-anim" data-anim="layui-anim-up" >    	
    	<table class="layui-hide" id="test" lay-filter="test"></table> 		
    </div>
    <div id="test1"></div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    <p align="right" class="p">${smallPic}小王110606938@qq.com</p>
    
  </div>
</div>
<script src="../res/layui/layui.js" charset="utf-8"></script>
<script src="../res/jquery-1.11.0.min.js" charset="utf-8">
</script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>

<!-- 
<script type="text/javascript" id="imgtmp">
	<img src="http://localhost/SSM-Mall/{{smallPic}}"/>
</script>

 -->

<script type="text/html" id="barDemo">
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>


<script type="text/javascript">

layui.use(['jquery','table','laypage'], function(){
  var table = layui.table;
  var $ = layui.jquery;
 var laypage = layui.laypage;
  
  table.render({
    elem: '#test'
    ,url:'<c:url value="/user/data?type=0"/>'
    ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
    ,cols: [[
	  {type:'checkbox'}
      ,{field:'id', width:40, title: 'ID', sort: true}
      ,{field:'username', width:80, title: '用户名'}
      ,{field:'sex', width:50, title: '性别', sort: true}
      ,{field:'city', width:80, title: '城市'}
      ,{field:'signature', title: '签名', width: '20%', minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
      ,{field:'smallPic',title:'头像',width:'12%',templet: function(d){
        return  '<img style="width:50px;height:50px;margin-top: -5px;" src= "http://localhost/SSM-Mall'+d.smallPic+'">'
      }}
      ,{field:'email',width:120, title: '邮箱'}
      ,{field:'operate',width:180,title:'操作',toolbar: '#barDemo'}
    ]]
  ,page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
	  layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
      //,curr: 5 //设定初始在第 5 页
      ,groups: 1 //只显示 1 个连续页码
      ,first: false //不显示首页
      ,last: false //不显示尾页
      ,count: 20 //数据总数，从服务端得到
		}
  });
  
  
  table.on('tool(test)', function(obj){
	  var data =obj.data; // 获得当前行数据
	  switch(obj.event){
	    case 'del':
	     	del(data);
	    break;
	    case 'edit':
	      edit(data);
	    break;
	  };
	});
  
  //删除
  function del(data){
		 layer.confirm('确定要删除选中的记录吗？', {icon:3,title:'删除确认'}, function(index){
			$.post('<c:url value="/user/deleteUser"/>',{id:data.id},function(res){
					table.reload('test');
			})
				layer.close(index);
	});
  }
  
  //编辑
  function edit(data){
	  var rows = table.checkStatus('test');
		if(rows.data.length != 1){
			layer.msg('请选择一条记录');
			return;
		}
		
		window.top.location.href = '<c:url value="/user/getUserByIdTwo"/>' + '?id=' + rows.data[0].id;
  }
  
});
</script>
</body>
</html>
