<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="${pageContext.request.contextPath}/styles/general.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/styles/main.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
    <div id="footer">
	版权所有 &copy; 2016-2017 武汉微潮科技有限公司，并保留所有权利。
	</div>
  </body>
</html>
