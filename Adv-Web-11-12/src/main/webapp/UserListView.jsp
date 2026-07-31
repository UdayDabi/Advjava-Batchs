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
	String emsg = (String) request.getAttribute("errormsg");
	String smsg = (String) request.getAttribute("successMsg");
	%>
	<%@ include file="Header.jsp"%>

	<div align="center">

		<h1>User List</h1>
		<h2 style="color: red"><%=emsg != null ? emsg : ""%></h2>
		<h2 style="color: green"><%=smsg != null ? smsg : ""%></h2>

		<form action="UserListCtl.do" method="post">

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
					<th>Edit</th>

				</tr>

				<%
				Iterator<UserBean> it = list.iterator();
				while (it.hasNext()) {
					UserBean bean = it.next();
				%>

				<tr align="center">
					<td><input type="checkbox" name="ids"
						value="<%=bean.getId()%>"></td>

					<td><%=bean.getFirstName()%></td>
					<td><%=bean.getLastName()%></td>
					<td><%=bean.getLogin()%></td>
					<td><%=bean.getDob()%></td>
					<td><a href="UserCtl.do?id=<%=bean.getId()%>">Edit</a></td>


				</tr>
				<%
				}
				%>
			</table>
			<table width="100%">
				<tr>
					<%-- <td><input type="submit" name="operation" value="previous"
						<%=pageNo == 1 ? "disabled" : ""%>></td> --%>
					<th></th>
					<td align="center"><input type="submit" name="operation"
						value="delete"></td>
					<td align="right"><input type="submit" name="operation"
						value="next" <%=list.size() < 5 ? "disabled" : ""%>></td>
				</tr>
			</table>
<%-- 			<input type="hidden" name="pageNo" value="<%=pageNo%>">
 --%>		</form>

	</div>
</body>
</html>