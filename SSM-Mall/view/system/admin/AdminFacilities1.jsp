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
    		<!-- 搜索区域 -->
    	  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 2px;">
 			 <legend>查询条件</legend>
		  </fieldset>
		  
		  	<div class="layui-form-item">
		  		<div class="layui-inline">
		  			<label class="layui-form-label">状态</label>
				    <div class="layui-input-inline">
				      <input type="text" name="status" lay-verify="title"  placeholder="请输入状态" class="layui-input">
	   				 </div>
	   				 <label class="layui-form-label">地点</label>
				    <div class="layui-input-inline">
				      <input type="text" name="area" lay-verify="title"  placeholder="请输入地点" class="layui-input">
	   				 </div>
		  		</div>
		  		<div class="layui-form-item">
				    <div class="layui-input-block" style="margin-left: 280px;">
				      <button class="layui-btn" lay-submit lay-filter="*" id="searchExhibition" data-type="reload">搜索</button>
				    </div>
		  		</div>
  			</div>
    	  
    	  <div class="layui-btn-group">
	    	  <button type="button" class="layui-btn layui-btn-primary layui-btn-sm">
			    <a class="layui-icon"  href="${pageContext.request.contextPath }/facilities/jumpFacilitiesAdd">&#xe654;</a>
			  </button>
			    <button type="button" class="layui-btn layui-btn-primary layui-btn-sm">
	    			<a class="layui-icon" href="${pageContext.request.contextPath }/view/system/admin/AdminFacilitiesRecycled.jsp">&#xe640;</a>
	  			</button>
  			</div>
    	<table class="layui-hide" id="test" lay-filter="test">
    	</table> 		
    </div>
    
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    <p align="center"> 小王110606938@qq.com</p>
    
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
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script type="text/html" id="toolbarDemo">
    <button class="layui-btn layui-btn-sm" lay-event="add">添加</button>
</script>

<script type="text/javascript">
layui.use(['table','laypage'], function(){
  var table = layui.table;
  
 var laypage = layui.laypage;

  table.render({
    elem: '#test'
    ,url:'<c:url value="/facilities/data"/>'
    ,method:"get"//GET方法
    ,where:{}//用户自定义请求参数(直接跟在url?后面)
    ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
    ,cols: [[
	  {type:'checkbox'}
      ,{field:'id', width:66,title: 'ID', sort: true}
      ,{field:'facilitiesname', title: '公共设施'}
      ,{field:'status', title: '状态'}
      ,{field:'area', title: '地点'}
      ,{field:'uploadtime',width:120, title: '上传时间'}
      ,{field:'operate',width:180,title:'操作',toolbar: '#barDemo'}
    ]]          
    ,request: {//请求参数名称映射配置
        pageName: 'pageNum' //页码的参数名称，默认：page
         ,limitName: 'limit' //每页数据量的参数名，默认：limit
        }
    ,page: true //开启分页
    ,limit : 10
    ,limits:[5,10,15,20]
    ,parseData: function(res){ //res 即为原始返回的数据
    	console.log(res)
    	//console.log()
    	return{
    	"code": res.code
    	,"msg": res.msg
    	,"count": res.total
    	,"data": res.data
    };
    	
    }
  });
  
  /*表格重载(搜索的点击时间调用的是方法)*/
  var $ = layui.$, active = {
      reload: function(){
          var status = $('#status');
          var area = $('#area');
          //执行重载
          table.reload('test', {
              page: {
                  curr: 1 //重新从第 1 页开始
              }
              ,where: {
                  name: status.val()
                  name: area.val()
              }
          });
      }
  };
  
  /*绑定搜索点击事件*/
  $('#searchExhibition').on('click', function(){
      var type = $(this).data('type');
      active[type] ? active[type].call(this) : '';
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
			$.post('<c:url value="/facilities/delFacilities"/>',{id:data.id},function(res){
					//重载表格
					table.reload('test');
			})
				layer.close(index);
	});
  }
  
  //编辑
  function edit(data){
	  var rows = table.checkStatus('test');
	  //alert(rows)
		if(rows.data.length != 1){
			layer.msg('请选择一条记录');
			return;
		}
		
		window.top.location.href = '<c:url value="/facilities/getFacilitiesById"/>' + '?id=' + rows.data[0].id;
  }
  
});
</script>
</body>
</html>
