<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>ECSHOP 管理中心 - 用户管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="${pageContext.request.contextPath}/styles/general.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/styles/main.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function goPage(currentPage) {
		//修改查询中的分页条件
		document.getElementById("currentPage").value = currentPage;
		//将查询表单提交(有高级查询与分页的所有条件)
		document.searchForm.submit();
	}
</script>
</head>

<body>
	<h1>
		<span class="action-span"><a href="${pageContext.request.contextPath}/view/system/user-save.jsp">添加用户</a> </span> <span
			class="action-span1"><a href="__GROUP__">ECSHOP 管理中心</a> </span> <span
			id="search_id" class="action-span1"> - 用户列表 </span>
		<div style="clear: both"></div>
	</h1>
	<div class="form-div">
		<form
			action="${pageContext.request.contextPath}/user/getUser"
			method="post" name="searchForm">
			<img src="${pageContext.request.contextPath}/images/icon_search.gif"
				width="26" height="22" border="0" alt="search" /> 
				<input type="hidden" id="currentPage" name="query.currentPage" />
			<!-- 分类 -->
			用户类型：<select name="type">
				<option value=-1>---请选择---</option>
				<option value=0>客户</option>
				<option value=1>管理员</option>
				<option value=2>超级管理员</option>
			</select> 
			
			邮箱:<input type="text" name="email" size="15" /> 
			<input type="submit" value=" 搜索 " class="button" />
		</form>
	</div>

	<!-- 用户列表 -->
	<form method="post" action="" name="listForm" onsubmit="">
		<div class="list-div" id="listDiv">
			<table cellpadding="3" cellspacing="1">
				<tr>
					<th>帐号</th>
					<th>密码</th>
					<th>注册邮箱</th>
					<th>用户类型</th>
					<th>当前登录时间</th>
					<th>当前登录IP</th>
					<th>上次登录时间</th>
					<th>上次登录IP</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${pageinfo.list}" var="user">
				<tr>
					<td align="center">${user.username}</td>
					<td align="center">${user.password} </td>
					<td align="center">${user.email} </td>
					<td align="center">
						<c:if test="${user.type==0 }">客户</c:if>
						<c:if test="${user.type==1 }">管理员</c:if>
						<c:if test="${user.type==2 }">超级管理员</c:if>
					</td>
					<td align="center"><fmt:formatDate value="${user.loginTime}" pattern="yyyy-MM-dd"/></td>
					<td align="center">${user.loginIp }</td>
					<td align="center"><fmt:formatDate value="${user.lastLoginTime }" pattern="yyyy-MM-dd"/></td>
					<td align="center">${user.lastLoginIp }</td>
					<td align="center">
					<a href="${pageContext.request.contextPath}/user/getUserById?id=${user.id}" target="main-frame" title="查看">
							<img
							src="${pageContext.request.contextPath}/images/icon_view.gif"
							width="16" height="16" border="0" />
					</a> 
					<a href="${pageContext.request.contextPath}/user/getUserByIdTwo?id=${user.id}" title="编辑"> 
						<img src="${pageContext.request.contextPath}/images/icon_edit.gif" width="16" height="16" border="0" />
					</a> 
					<a href="${pageContext.request.contextPath}/user/deleteUser?id=${user.id}" onclick="javascript:return confirm('你真的忍心删除我么?')"
						title="回收站"><img
							src="${pageContext.request.contextPath}/images/icon_trash.gif"
							width="16" height="16" border="0" /> </a></td>
				</tr>
				</c:forEach>
			</table>

			<!-- 分页开始 -->
			<table id="page-table" cellspacing="0">
				<tr>
					<td width="70%" align="center">当前第 ${pageinfo.pageNum}页/总共${pageinfo.pages} 页 一共  ${pageinfo.total}条数据</td>
					<td align="center">
						<a href="${pageContext.request.contextPath}/user/findUser?page=1&pageSize=${pageinfo.pageSize}">首页</a> 
						<a href="${pageContext.request.contextPath}/user/findUser?page=${pageinfo.pageNum-1}&pageSize=${pageinfo.pageSize}">上一页</a> 
						<a href="${pageContext.request.contextPath}/user/findUser?page=${pageinfo.pageNum+1}&pageSize=${pageinfo.pageSize}">下一页</a> 
						<a href="${pageContext.request.contextPath}/user/findUser?page=${pageinfo.pages}&pageSize=${pageinfo.pageSize}">尾页</a>
					</td>
				</tr>
			</table>
			<!-- 分页结束 -->
		</div>
	</form>
</body>
</html>
