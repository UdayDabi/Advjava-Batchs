<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="Header.jsp"%>


	<div align="center">
		<%
		String smsg = (String) request.getAttribute("successMsg");
		%>

		<h1>Add User</h1>
		<h2 style="color: green"><%=smsg != null ? smsg : ""%></h2>

		<form action="UserCtl" method="post">

			<table>
				<tr>
					<th>FirstName</th>
					<td><input type="text" value="" name="firstName"
						placeholder="enter firstName"></td>
				</tr>
				<tr>
					<th>LastName</th>
					<td><input type="text" value="" name="lastName"
						placeholder="enter lastName"></td>
				</tr>
				<tr>
					<th>Login</th>
					<td><input type="email" value="" name="login"
						placeholder="enter your login"></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" value="" name="password"
						placeholder="enter your password"></td>
				</tr>
				<tr>
					<th>Dob</th>
					<td><input type="date" value="" name="dob" style="width: 98%"></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation" value="Save"></td>
				</tr>
			</table>

		</form>
	</div>
</body>
</html>