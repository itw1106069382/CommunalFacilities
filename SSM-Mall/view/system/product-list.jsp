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

<title>ECSHOP 管理中心 - 商品列表</title>

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
		<span class="action-span"><a href="${pageContext.request.contextPath}/admin/product/showProductDir">添加新商品</a>
		</span> <span class="action-span1"><a href="__GROUP__">ECSHOP 管理中心</a>
		</span> <span id="search_id" class="action-span1"> - 商品列表 </span>
		<div style="clear:both"></div>
	</h1>
	<div class="form-div">
		<form
			action="${pageContext.request.contextPath}/admin/product/getProduct"
			method="post" name="searchForm">
			<img src="${pageContext.request.contextPath}/images/icon_search.gif"
				width="26" height="22" border="0" alt="search" /> <input
				type="hidden" id="currentPage" name="query.currentPage" />
			<!-- 分类 -->
			分类：<select name="productDirId">
				<option value=-1>---请选择---</option>
				<c:forEach items="${productDirList}" var="productDir">
					<option value=${productDir.id}>${productDir.name }</option>
				</c:forEach>
			</select>
			<!-- 价格 -->
			价格从<input type="text" name="minSalePrice"> - <input
				type="text" name="maxSalePrice">
			<!-- 是否上架 -->
			状态: <select name="status">
				<option value=-1>---请选择---</option>
				<option value=0>上架</option>
				<option value=1>下架</option>
			</select>
			<!-- 关键字 -->
			关键字 <input type="text" name="keyword" size="15" /> <input
				type="submit" value=" 搜索 " class="button" />
		</form>
	</div>

	<!-- 商品列表 -->
	<form method="post" action="" name="listForm" onsubmit="">
		<div class="list-div" id="listDiv">
			<table cellpadding="3" cellspacing="1">
				<tr>
					<th>图片</th>
					<th>编号</th>
					<th>商品名称</th>
					<th>商品类型</th>
					<th>零售价</th>
					<th>生产地</th>
					<th>是否上架</th>
					<th>是否推荐</th>
					<th>浏览次数</th>
					<th>上架时间</th>
					<th>库存</th>
					<th>操作</th>
				</tr>

				<c:forEach items="${pageinfo.list}" var="product">
					<tr>
						<td align="center"><img style="width:40px;height:40px;"
							src='${pageContext.request.contextPath}/${product.smallPic}' />
						</td>
						<td align="center">${product.id}</td>
						<td align="center">${product.name}</td>
						<td align="center">${product.productDir.name}</td>
						<td align="center">${product.salePrice }</td>
						<td align="center">${product.place }</td>
						<td align="center"><c:if test="${product.status=='1'}">
								<a href="${pageContext.request.contextPath}/admin/product/updateProductStatus?prodId=${product.id}&status=0">
									<img src="${pageContext.request.contextPath}/images/no.gif" />
								</a>
							</c:if> <c:if test="${product.status=='0'}">
								<a href="${pageContext.request.contextPath}/admin/product/updateProductStatus?prodId=${product.id}&status=1">
									<img src="${pageContext.request.contextPath}/images/yes.gif" />
								</a>
							</c:if></td>
						<td align="center">
						<c:if test="${product.recommended==true}">
							<a href="${pageContext.request.contextPath}/admin/product/updateProductByRecommended?id=${product.id}&recommended=0">
								<img src="${pageContext.request.contextPath}/images/yes.gif" />
							</a>
							</c:if> 
							<c:if test="${product.recommended==false}">
							<a href="${pageContext.request.contextPath}/admin/product/updateProductByRecommended?id=${product.id}&recommended=1">
								<img src="${pageContext.request.contextPath}/images/no.gif" />
							</a>
							</c:if>
						</td>
						<td align="center">${product.viewTimes }</td>
						<td align="center"><fmt:formatDate
								value="${product.inputTime}" pattern="yyyy-MM-dd" />
						</td>
						<td align="center">${product.num}</td>
						<td align="center">
							<a href="${pageContext.request.contextPath}/admin/product/productInfo?productId=${product.id}" 
									target="main-frame" title="查看"><img
								src="${pageContext.request.contextPath}/images/icon_view.gif"
								width="16" height="16" border="0" /> </a> <a
							href="${pageContext.request.contextPath}/admin/product/getProductEdit?productId=${product.id}" 
							title="编辑"><img
								src="${pageContext.request.contextPath}/images/icon_edit.gif"
								width="16" height="16" border="0" /> </a> <a
							href="${pageContext.request.contextPath}/admin/product/delProductById?productId=${product.id}"
							onclick="javascript:return confirm('你真的忍心删除我么?')" title="回收站"><img
								src="${pageContext.request.contextPath}/images/icon_trash.gif"
								width="16" height="16" border="0" /> </a>
						</td>
					</tr>
				</c:forEach>
			</table>

			<!-- 分页开始 -->
			<table id="page-table" cellspacing="0">
				<tr>
					<td width="70%" align="center">当前第 ${pageinfo.pageNum} 页/总共
						${pageinfo.pages} 页 一共 ${pageinfo.total} 条数据</td>
					<td align="center"><a
						href="${pageContext.request.contextPath}/admin/product/findProductDir?pageNo=1&pageSize=${pageinfo.pageSize}">首页</a>
						<a
						href="${pageContext.request.contextPath}/admin/product/findProductDir?pageNo=${pageinfo.pageNum-1}&pageSize=${pageinfo.pageSize}">上一页
					</a> <a
						href="${pageContext.request.contextPath}/admin/product/findProductDir?pageNo=${pageinfo.pageNum+1}&pageSize=${pageinfo.pageSize}">下一页</a>
						<a
						href="${pageContext.request.contextPath}/admin/product/findProductDir?pageNo=${pageinfo.pages}&pageSize=${pageinfo.pageSize}">尾页</a>
					</td>
				</tr>
			</table>
			<!-- 分页结束 -->
		</div>
	</form>
</body>
</html>
