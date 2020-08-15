<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ECSHOP 管理中心 - 添加新商品 </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/styles/general.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/styles/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/ztree/js/jquery-1.4.4.min.js"></script>
</head>
<body>
<h1>
    <span class="action-span"><a href="${pageContext.request.contextPath}/admin/product/findProductDir?pageNo=1&pageSize=10">商品列表</a>
    </span>
    <span class="action-span1"><a href="__GROUP__">ECSHOP 管理中心</a></span>
    <span id="search_id" class="action-span1"> - 添加新商品 </span>
    <div style="clear:both"></div>
</h1>

<div class="tab-div">
    <div id="tabbar-div">
        <p>
            <span class="tab-front" id="general-tab">通用信息</span>
        </p>
    </div>
    <div id="tabbody-div">
       <form action="${pageContext.request.contextPath}/admin/product/saveProduct" 
       method="post" enctype="multipart/form-data">
            <table width="90%" id="general-table" align="center">
                <tr>
                    <td class="label">商品名称：</td>
                    <td><input type="text" name="name">
                    	<span class="require-field">*</span>
                    </td>
                </tr>
                <tr>
                    <td class="label">商品分类：</td>
                    <td>
                    	<select name="dir_id">
							<option value=-1>---请选择---</option>
							<c:forEach items="${productDirList}" var="productDir">
								<option value="${productDir.id}">${productDir.name }</option>
							</c:forEach>
						</select>
                    </td>
                </tr>
                <tr>
                    <td class="label">商品编号：</td>
                    <td><input type="text" name="sn"></td>
                </tr>
                <tr>
                    <td class="label">成本价：</td>
                    <td><input type="text" name="costPrice"></td>
                </tr>
                <tr>
                    <td class="label">零售价：</td>
                    <td><input type="text" name="salePrice"></td>
                </tr>
                <tr>
                    <td class="label">市场价：</td>
                    <td><input type="text" name="marketPrice"></td>
                </tr>
                <tr>
                    <td class="label">是否上架：</td>
                    <td>
                    	<input type="radio" value="0" name="status" checked="checked">上架
                    	<input type="radio" value="1" name="status">下架
                    </td>
                </tr>
                <tr>
                    <td class="label">是否推荐：</td>
                    <td>
                    	<input type="radio" value="true" name="recommended" checked="checked">是
                    	<input type="radio" value="false" name="recommended">否
                    </td>
                </tr>
                <tr>
                    <td class="label">生产地：</td>
                    <td><input type="text" name="place"></td>
                </tr>
                <tr>
                    <td class="label">商品规格：</td>
                    <td><input type="text" name="model"></td>
                </tr>
                <tr>
                    <td class="label">库存：</td>
                    <td><input type="text" name="num"></td>
                </tr>
                <tr>
                    <td class="label">商品描述：</td>
                    <td><textarea rows="10" cols="30" name="intro"></textarea></td>
                </tr>
                <tr>
                    <td class="label">商品图片：</td>
                    <td>
                    	<input type="file" name="uploadfile">	
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