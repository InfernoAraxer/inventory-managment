<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Shop Inventory Management</title>
		
		<style>
			<%@ include file="css/styles.css" %>
		</style>
	</head>
	<body>
		<div>
			<h1>Shop Inventory Management</h1>
			
			<div class="header">
				<a href="${pageContext.request.contextPath}/" class="header-button">VIEW ALL</a>
				<a href="${pageContext.request.contextPath}/add" class="header-button">ADD A PRODUCT</a>
			</div>
		</div>
		<div>
			<c:if test="${product != null}">
				<h2>Edit Product</h2>
				<form action="update" method="post">
					<input type="hidden" name="id" value="<c:out value="${product.id}" />" />
					
					<label>ID<input type="text" name="id" readonly="readonly" class="uneditable" value="<c:out value="${product.id}" />" /></label>
					<label>Product Name<input type="text" name="name" value="<c:out value="${product.name}" />" /></label>
					<label>Description<input type="text" name="description" value="<c:out value="${product.description}" />" /></label>
					<label>Unit Price<input type="text" name="price" value="<fmt:formatNumber value = "${product.unitPrice}" currencySymbol="" type = "currency"/>" /></label>
					<label>Available<input type="text" name="available" value="<c:out value="${product.available}" />" /></label>
					<div class="form-actions">
						<input type="submit" value="Save" name="submit" />
						<input type="submit" value="Delete" name="submit" />
					</div>
				</form>
			</c:if>
			<c:if test="${product == null}">
				<h2>Add Product</h2>
				<form action="insert" method="post">
					<input type="hidden" name="id" />
					
					<label>ID<input type="text" name="id" readonly="readonly" class="uneditable" /></label>
					<label>Product Name<input type="text" name="name" /></label>
					<label>Description<input type="text" name="description" /></label>
					<label>Unit Price<input type="text" name="price" /></label>
					<label># Available<input type="text" name="available" /></label>
					<input type="submit" value="Add" name="sumbit" />
				</form>
			</c:if>
		</div>
	</body>
</html>