<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>User Form</h1>
		<form action="HelloServlet" method="post">
			<table>
				<tr>
					<th>First Name</th>
					<td><input type="text" placeholder="enter your First Name" name="firstname"></td>
				</tr>
				<tr>
					<th>Last Name</th>
					<td><input type="text" placeholder="enter your  Last Name" name="lastname"></td>
				</tr>
				<tr>
					<th>Login</th>
					<td><input type="text" placeholder="enter your Login" name="login"></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" placeholder="enter your  Password" name="password"></td>
				</tr>
				<tr>
					<th>Dob</th>
					<td><input type="date" placeholder="enter your Dob" name="dob"></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>