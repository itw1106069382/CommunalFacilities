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
			href="${pageContext.request.contextPath}/user/finduse?page=1&pageSize=10">用户列表</a>
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

			<table width="90%" id="general-table" align="center">
				<tr>
					<td class="label">用户名：</td>
					<td>
						<input type="text" value="${user.username}" name="username" readonly>
					</td>
					<td class="label">用户邮箱：</td>
					<td>
						<input type="text" value="${user.email}" name="email" readonly>
					</td>
				</tr>

				<tr>
					<td class="label">当前登录时间：</td>
					<td>
						<input type="text" value='<fmt:formatDate value="${user.loginTime}" 
									pattern="yyyy-MM-dd" />' name="loginTime" readonly>
					</td>
					<td class="label">当前登录IP：</td>
					<td>
						<input type="text" value="${user.loginIp }"  name="loginIp" readonly>
					</td>
				</tr> 
				<tr>
					<td class="label">上次登录时间：</td>
					<td>
						<input type="text" value='<fmt:formatDate value="${user.lastLoginTime}" 
									pattern="yyyy-MM-dd" />' name="lastLoginTime" readonly>
					</td>
					<td class="label">上次登录IP：</td>
					<td>
						<input type="text" value="${user.lastLoginIp }" name="lastLoginIp" readonly>
					</td>
				</tr> 
				
				<tr>
					<td class="label">用户类型：</td>
					<td>
						<c:if test="${user.type==0}"><input type="text" value="普通用户" name="type" readonly></c:if>
						<c:if test="${user.type==1}"><input type="text" value="管理员" name="type" readonly></c:if>
						<c:if test="${user.type==2}"><input type="text" value="超级管理员" name="type" readonly></c:if>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>