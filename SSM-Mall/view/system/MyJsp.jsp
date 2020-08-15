<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  <link rel="stylesheet" href="../res/bootstrap/css/bootstrap.css" media="all">
	
	<style type="text/css">
			body{
				margin: 0px;
			}
			div#container{
				width: 100%;
				height: 500px;
				background-color: lightcyan;
			}
			div#heading{
				width: 100%;
				height: 25%;
				
			}
			div#content{
				width: 100%;
				height: 65%;
				float: left;
			}
			
			div#footing{
				width: 100%;
				height: 10%;
				float: left;
			}
		</style>
</head>
		
		<div id="container">
			<div id="heading" align="center">
				<br />
				<br />
				<font size="3" color="aqua">欢迎您</font>
				<br />
				你可以选择如下：
			</div>
			<div id="content" align="center">
			
			      <select name="city" lay-verify="required">
        <option value=""></option>
        <option value="0">北京</option>
        <option value="1">上海</option>
        <option value="2">广州</option>
        <option value="3">深圳</option>
        <option value="4">杭州</option>
      </select>
			
			
			<button type="button" class="layui-btn layui-btn-radius">信息管理</button>
			<button type="button" class="layui-btn layui-btn-radius layui-btn-normal">流动情况</button>
			<button type="button" class="layui-btn layui-btn-radius layui-btn-warm">异常问题</button>
			</div>
			<div id="footing">
			
			</div>
		</div>

</body>
</html>
