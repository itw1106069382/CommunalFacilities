<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="../res/layui/css/layui.css" media="all" type="text/css" >
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">公共设施管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item " ><a href="" style="color:rgb(6,218,255)">技术部模块</a></li>
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
          <dd><a href="${pageContext.request.contextPath }/view/system/Skill/SkillIndex.jsp">任务列表</a></dd>
            <dd><a href="${pageContext.request.contextPath }/view/system/Skill/Engineerinformation.jsp">工程师信息</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 0px;" class="layui-anim" data-anim="layui-anim-up" >
    	<form class="layui-form" action="${pageContext.request.contextPath }/tech/saveTechTask">
    		<h3 class="layui-timeline-title" align="center" style="color:rgb(6,218,255)">
    		工程师任务回馈
    		</h3>
  		  <div class="layui-form-item">
		    <label class="layui-form-label">工程师</label>
		    <div class="layui-input-block">
		      <select name="username" lay-verify="required">
		      	<option value=-1>---请选择---</option>
		        <c:forEach items="${userList}" var="userList">
				<option value="${userList.username}">${userList.username}</option>
				</c:forEach>
		      </select>
		    </div>
		  </div>
    		
		  <div class="layui-form-item">
		    <label class="layui-form-label">任务</label>
		    <div class="layui-input-block">
		      <input type="text" name="task" required  lay-verify="required" placeholder="请输入任务" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  
		  <div class="layui-form-item">
		    <label class="layui-form-label">地点</label>
		    <div class="layui-input-block">
		      <input type="text" name="area" required  lay-verify="required" placeholder="请输入任务" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">反馈</label>
		    <div class="layui-input-block">
		      <textarea name="feedback" placeholder="请输入反馈" class="layui-textarea"></textarea>
		    </div>
		  </div>
		  
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
		      <input type="hidden" name="id" value="${param.id }">
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
<script src="../res/layui/layui.js" charset="utf-8"></script>
<script type="text/html" id="barDemo">
		<a class="layui-btn layui-btn-xs" lay-event="edit">指派</a>
</script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
<script>
layui.use('table', function(){
  var table = layui.table;
  var $ = layui.jquery;
  table.render({
    elem: '#test'
    ,url:'<c:url value="/anomaly/data"/>'
    ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
    ,cols: [[
	  {type:'checkbox'}
      ,{field:'id', width:80, title: 'ID', sort: true}
      ,{field:'username', width:80, title: '上传者'}
      ,{field:'facilitiesname', width:150, title: '公共设施', sort: true}
      ,{field:'remark',  title: '备注'}
      ,{field:'area',title:'地点'}
      ,{field:'operate',width:180,title:'指派任务',toolbar: '#barDemo'}
    ]]
  ,page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
      layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
      //,curr: 5 //设定初始在第 5 页
      ,groups: 1 //只显示 1 个连续页码
      ,first: false //不显示首页
      ,last: false //不显示尾页
      
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
//编辑
  function edit(data){
	  var rows = table.checkStatus('test');
	  //alert(rows)
		if(rows.data.length != 1){
			layer.msg('请选择一条记录');
			return;
		}
		
		window.top.location.href = '<c:url value="/anomaly/getAnomalyById"/>' + '?id=' + rows.data[0].id;
  }
});
</script>
</body>
</html>
