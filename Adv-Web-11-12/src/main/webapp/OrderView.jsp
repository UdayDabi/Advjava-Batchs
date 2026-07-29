<%@page import="com.rays.bean.OrderBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%
	OrderBean bean = (OrderBean) request.getAttribute("bean");
	%>

	<div align="center">
		<%
		String smsg = (String) request.getAttribute("successMsg");
		%>
		<%
		if (bean != null) {
		%>
		<h1>Update Order</h1>
		<%
		} else {
		%>
		<h1>Add Order</h1>
		<%
		}
		%>
		<h2 style="color: green"><%=smsg != null ? smsg : ""%></h2>


		<form action="OrderCtl" method="post">
			<table>
				<input type="hidden" name="id"
					value="<%=bean != null ? bean.getId() : ""%>">

				<tr>
					<th>Order Name:</th>
					<td><input type="text" name="ordername"
						value="<%=bean != null ? bean.getOrdername() : ""%>"
						placeholder="enter ordername"></td>
				</tr>
				<tr>
					<th>Order Price:</th>
					<td><input type="text" name="orderprice"
						value="<%=bean != null ? bean.getOrderPrice() : ""%>"
						placeholder="enter orderprice"></td>
				</tr>
				<tr>
					<th>order Quanitity:</th>
					<td><input type="text" name="orderquanitity"
						value="<%=bean != null ? bean.getOrderQuanitity() : ""%>"
						placeholder="enter your orderquanitity"></td>
				</tr>

				<tr>
					<th>Order Date:</th>
					<td><input type="date" name="orderdate"
						value="<%=bean != null ? bean.getOrderDate() : ""%>"></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation"
						value="<%=bean != null ? "update" : "save"%>"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>