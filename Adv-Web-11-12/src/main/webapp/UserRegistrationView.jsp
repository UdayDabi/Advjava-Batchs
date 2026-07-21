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
	String smsg = (String) request.getAttribute("successMsg");
	String emsg = (String) request.getAttribute("errorMsg");
	%>
	<div align="center">
		<h1>User Registration</h1>

		<form action="UserRegistrationCtl" method="get">

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
					<td><input type="submit" value="signUp"></td>
				</tr>
			</table>

		</form>
	</div>
</body>
</html>