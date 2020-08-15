<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ECSHOP 管理中心 - 添加用户 </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/styles/general.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/styles/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/ztree/js/jquery-1.4.4.min.js"></script>
</head>
<body>
<h1>
    <span class="action-span"><a href="">用户列表</a>
    </span>
    <span class="action-span1"><a href="__GROUP__">ECSHOP 管理中心</a></span>
    <span id="search_id" class="action-span1"> - 添加用户 </span>
    <div style="clear:both"></div>
</h1>

<div class="tab-div">
    <div id="tabbody-div">
       <form action="${pageContext.request.contextPath}/user/saveUser" method="post">
            <table width="90%" id="general-table" align="center">
                <tr>
                    <td class="label">帐号：</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td class="label">密码：</td>
                    <td>
                    	<input type="password" name="password">
                    </td>
                </tr>
                <tr>
                    <td class="label">邮箱：</td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <td class="label">用户类型：</td>
                    <td>
	                    <select name="type">
							<option value=-1>---请选择---</option>
							<option value=0>客户</option>
							<option value=1>管理员</option>
							<option value=2>超级管理员</option>
						</select>
                    </td>
                </tr>
            </table>
            <div class="button-div">
                <input type="submit" value=" 确定 " class="button"/>
                <input type="reset" value=" 重置 " class="button" />
            </div>
        </form>
    </div>
</div>
</body>
</html>