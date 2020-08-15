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
			href="${pageContext.request.contextPath}/admin/product/findProductDir?pageNo=1&pageSize=10">商品列表</a>
		</span> <span class="action-span1"><a href="__GROUP__">ECSHOP 管理中心</a>
		</span> <span id="search_id" class="action-span1"> - 商品详情 </span>
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
					<td class="label">商品编号：</td>
					<td><input type="text" name="sn" value="${product.sn }" readonly>
					</td>
				</tr>
				<tr>
					<td class="label">商品名称：</td>
					<td><input type="text" name="name" value="${product.name}" readonly>
					</td>
				</tr>
				<tr>
					<td class="label">商品分类：</td>
					<td><input type="text" value="${product.productDir.name}" readonly></td>
				</tr>
				<tr>
					<td class="label">成本价：</td>
					<td><input type="text" value="${product.costPrice}" name="costPrice" readonly>
					</td>
				</tr>
				<tr>
					<td class="label">零售价：</td>
					<td><input type="text" value="${product.salePrice}" name="salePrice" readonly>
					</td>
				</tr>
				<tr>
					<td class="label">市场价：</td>
					<td><input type="text" value="${product.marketPrice}" name="marketPrice" readonly>
					</td>
				</tr>
				<tr>
				<td class="label">是否上架：</td>
				<td>
					<input type="radio" value="0" name="status" <c:if test="${product.status==0}">checked="checked" </c:if>>上架
					<input type="radio" value="1"name="status" <c:if test="${product.status==1}"> checked="checked"</c:if>>下架</td>
				</tr>
				<tr>
					<td class="label">是否推荐：</td>
					<td>
						<input type="radio" value="true" name="recommended" 
							<c:if test='${product.recommended==true}'> checked="checked"</c:if>>是 
						<input type="radio" value="false" name="recommended"
						 <c:if test="${product.recommended=='false' }"> checked="checked"</c:if>>否
					</td>
				</tr>
				<tr>
					<td class="label">生产地：</td>
					<td><input type="text" name="place" value="${product.place}" readonly>
					</td>
				</tr>
				<tr>
					<td class="label">商品规格：</td>
					<td><input type="text" name="model" value="${product.model}" readonly>
					</td>
				</tr>
				<tr>
					<td class="label">库存：</td>
					<td><input type="text" name="num" value="${product.num}" readonly>
					</td>
				</tr>
				<tr>
					<td class="label">浏览次数：</td>
					<td><input type="text" name="viewTimes" value="${product.viewTimes}" readonly>
					</td>
				</tr>
				<tr>
					<td class="label">上架时间：</td>
					<td><input type="text" name="inputTime" value='<fmt:formatDate
								value="${product.inputTime}" pattern="yyyy-MM-dd" />' readonly>
					</td>
				</tr>
				<tr>
					<td class="label">商品描述：</td>
					<td><textarea rows="10" cols="30" name="intro" readonly>${product.intro}</textarea>
					</td>
				</tr>
				<tr>
					<td class="label">商品图片：</td>
					<td><img src="${pageContext.request.contextPath}/${product.smallPic}" style="width:160px; height:160px;"/></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>