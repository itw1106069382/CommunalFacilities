<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>公共设施巡查系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="./res/layui/css/layui.css">
<link href="./styles/general.css" rel="stylesheet" type="text/css" />
<link href="./styles/main.css" rel="stylesheet" type="text/css" />

</head>
<body style="background: #278296;color:white">

<form  action="${pageContext.request.contextPath }/user/login" method="post">
    <table cellspacing="0" cellpadding="0" style="margin-top:100px" align="center">
        <tr>
            <td>
                <img src="${pageContext.request.contextPath }/images/login.png" width="178" height="256" border="0" alt="ECSHOP" />
            </td>
            <td style="padding-left: 10px">
            	<span style="color:red; font-size: 15px;">${message }</span>
                <table>
                    <tr>
                        <td>用户昵称：</td>
                        <td>
                           <input type="text" name="username">
                        </td>
                    </tr>
                    <tr>
                        <td>用户密码：</td>
                        <td>
                        	 <input type="password" name="password">
                        	 <input name="identify" type="hidden" value="1">
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <input type="submit" value="登录"  onclick="document.getElementById('demo').innerHTML = Date()" />
                            <a href="${pageContext.request.contextPath }/view/system/Passwd.jsp">修改密码</a>
                       		<a href="${pageContext.request.contextPath }/view/system/sign.jsp">注册</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
  
</form>
</body>
</html>