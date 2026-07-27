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
		<h1>User List</h1>
		<form action="UserListCtl" method="post">

			<table>
				<tr>
					<th>First Name</th>
					<td><input type="text" name="firstName"
						placeholder="search by firstName"> <input type="submit"
						name="operation" value="search"> <input type="submit"
						name="operation" value="Reset"></td>

				</tr>
			</table>
			<table width="100%" border="1px">
				<tr style="background: skyblue">
					<th>Id</th>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Login</th>
					<th>DOB</th>
				</tr>

				<%
				Iterator<UserBean> it = list.iterator();
				while (it.hasNext()) {
					UserBean bean = it.next();
				%>

				<tr align="center	">
					<td><%=bean.getId()%></td>
					<td><%=bean.getFirstName()%></td>
					<td><%=bean.getLastName()%></td>
					<td><%=bean.getLogin()%></td>
					<td><%=bean.getDob()%></td>

				</tr>
				<%
				}
				%>
			</table>

		</form>

	</div>
</body>
</html>