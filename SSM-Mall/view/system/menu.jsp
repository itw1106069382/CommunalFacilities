<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'menu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="${pageContext.request.contextPath}/styles/general.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css"></link>
<script type="text/javascript" src="${pageContext.request.contextPath}/ztree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ztree/js/jquery.ztree.core.js"></script>
<script type="text/javascript">
	var setting={};
	var zNodes=[
		{name:"基础数据",children:[
			{name:"商品管理",
			url:"${pageContext.request.contextPath}/admin/product/findProductDir?pageNo=1&pageSize=10",
			target:"main-frame"},
			{name:"商品分类管理"}
		]},
		{name:"系统数据",children:[
			{name:"用户管理",
			 url:"${pageContext.request.contextPath}/user/findUser?page=1&pagesize=10",
			 target:"main-frame"
			},
			{name:"系统管理"}
		]}
	];
	$(document).ready(function(){
		$.fn.zTree.init($("#treeDemo"),setting,zNodes);
	});
</script>
<style type="text/css">
body {
	background: #80BDCB;
}

#tabbar-div {
	background: #278296;
	padding-left: 10px;
	height: 21px;
	padding-top: 0px;
}

#tabbar-div p {
	margin: 1px 0 0 0;
}

.tab-front {
	background: #80BDCB;
	line-height: 20px;
	font-weight: bold;
	padding: 4px 15px 4px 18px;
	border-right: 2px solid #335b64;
	cursor: hand;
	cursor: pointer;
}

.tab-back {
	color: #F4FAFB;
	line-height: 20px;
	padding: 4px 15px 4px 18px;
	cursor: hand;
	cursor: pointer;
}

.tab-hover {
	color: #F4FAFB;
	line-height: 20px;
	padding: 4px 15px 4px 18px;
	cursor: hand;
	cursor: pointer;
	background: #2F9DB5;
}

#top-div {
	padding: 3px 0 2px;
	background: #BBDDE5;
	margin: 5px;
	text-align: center;
}

#main-div {
	border: 1px solid #345C65;
	padding: 5px;
	margin: 5px;
	background: #FFF;
}

#menu-list {
	padding: 0;
	margin: 0;
}

#menu-list ul {
	padding: 0;
	margin: 0;
	list-style-type: none;
	color: #335B64;
}

#menu-list li {
	padding-left: 16px;
	line-height: 16px;
	cursor: hand;
	cursor: pointer;
}

#main-div a:visited,#menu-list a:link,#menu-list a:hover {
	color: #335B64 text-decoration:none;
}

#menu-list a:active {
	color: #EB8A3D;
}

.explode {
	background: url(/images/menu_minus.gif) no-repeat 0px 3px;
	font-weight: bold;
}

.collapse {
	background: url(/images/menu_plus.gif) no-repeat 0px 3px;
	font-weight: bold;
}

.menu-item {
	background: url(/images/menu_arrow.gif) no-repeat 0px 3px;
	font-weight: normal;
}

#help-title {
	font-size: 14px;
	color: #000080;
	margin: 5px 0;
	padding: 0px;
}

#help-content {
	margin: 0;
	padding: 0;
}

.tips {
	color: #CC0000;
}

.link {
	color: #000099;
}
</style>
</head>

<body>
	<div id="tabbar-div">
		<p>

			<span class="tab-front" id="menu-tab">菜单</span>
		</p>
	</div>
	<div id="main-div">
		<div class="zTreeDemoBackground left">
			<ul id="treeDemo" class="ztree"></ul>
		</div>
	</div>
</body>
</html>
