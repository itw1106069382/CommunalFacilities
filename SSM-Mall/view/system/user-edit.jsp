<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ECSHOP 管理中心 - 商品详情</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/styles/general.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/styles/main.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ztree/js/jquery-1.4.4.min.js"></script>
</head>
<body>
	<h1>
		<span class="action-span"><a
			href="${pageContext.request.contextPath}/user/findUser?page=1&pageSize=10">用户列表</a>
		</span> <span class="action-span1"><a href="__GROUP__">ECSHOP 管理中心</a>
		</span> <span id="search_id" class="action-span1"> - 用户详情 </span>
		<div style="clear:both"></div>
	</h1>

	<div class="tab-div">
		<div id="tabbar-div">
			<p>
				<span class="tab-front" id="general-tab">通用信息</span>
			</p>
		</div>
		<div id="tabbody-div">
			<form action="${pageContext.request.contextPath}/user/updateUser" method="post" enctype="multipart/form-data">
				<input type="hidden" value="${user.id}" name="id">
				<table width="60%" id="general-table" align="center">
					<tr>
						<td class="label">用户编号：</td>
						<td><input type="text" name="id" value="${user.id}"></td>
						<td class="label">用户姓名：</td>
						<td><input type="text" name="username" value="${user.username}"></td>
					</tr>
					<tr>
						<td class="label">用户密码：</td>
						<td><input type="text" name="password" value="${user.password}"></td>
						<td class="label">用户邮箱：</td>
						<td><input type="text" name="email" value="${user.email}"></td>
					</tr>
					<tr>
						<td class="label">用户类型：</td>
						<td><input type="text" name="type" value="${user.type}"></td>
						<td class="label">用户状态：</td>
						<td><input type="text" name="status" value="${user.status}"></td>
					</tr>
			</table>    
			<div class="button-div">
					<input type="submit" value=" 确定 " class="button" /> <input
						type="reset" value=" 重置 " class="button" />
				</div>
		</form>
		</div>
	</div>
</body>
</html>