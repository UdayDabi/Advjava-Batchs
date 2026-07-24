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
	%>
	<div align="center">
		<form action="LoginCtl" method="post">


			<h1>Login</h1>
			<h2 style="color: green"><%=smsg != null ? smsg : ""%></h2>

			<table>
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
					<th></th>
					<td><input type="submit" name="operation" value="signIn">
						<input type="submit" name="operation" value="signUp"></td>

				</tr>
			</table>
		</form>
	</div>
</body>
</html>