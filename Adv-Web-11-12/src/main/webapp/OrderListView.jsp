<%@page import="com.rays.bean.OrderBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List list = (List) request.getAttribute("list");
	%>
	<%@ include file="Header.jsp"%>

	<div align="center">
		<%
		String emsg = (String) request.getAttribute("errormsg");
		String smsg = (String) request.getAttribute("successMsg");
		%>
		<h1>Order List</h1>
		<h2 style="color: red"><%=emsg != null ? emsg : ""%></h2>
		<h2 style="color: green"><%=smsg != null ? smsg : ""%></h2>

		<form action="OrderListCtl" method="post">

			<!-- 	<table>
				<tr>
					<th>First Name</th>
					<td><input type="text" name="firstName"
						placeholder="search by firstName"> <input type="submit"
						name="operation" value="search"> <input type="submit"
						name="operation" value="Reset"></td>

				</tr> -->
			</table>
			<table width="100%" border="1px">
				<tr style="background: skyblue">
					<th>Id</th>
					<th>Order Name</th>
					<th>Order Price</th>
					<th>Order Quantity</th>
					<th>Order Date</th>
					<th>Edit</th>

				</tr>

				<%
				Iterator<OrderBean> it = list.iterator();
				while (it.hasNext()) {
					OrderBean bean = it.next();
				%>

				<tr align="center">
					<td><input type="checkbox" name="ids"
						value="<%=bean.getId()%>"></td>

					<td><%=bean.getOrdername()%></td>
					<td><%=bean.getOrderPrice()%></td>
					<td><%=bean.getOrderQuanitity()%></td>
					<td><%=bean.getOrderDate()%></td>
					<td><a href="OrderCtl?id=<%=bean.getId()%>">Edit</a></td>


				</tr>
				<%
				}
				%>
			</table>
			<table width="100%">
				<tr>
					<th></th>
					<td align="center"><input type="submit" name="operation"
						value="delete"></td>

				</tr>
			</table>

		</form>

	</div>
</body>
</html>