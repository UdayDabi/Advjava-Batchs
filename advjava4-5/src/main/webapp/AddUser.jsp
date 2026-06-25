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
		<form action="HelloServlet" method="Post">
		<table>

			<h1>Add User</h1>
			<tr>
				<th>FirstName :</th>
				<td><input type="text" placeholder="Enter your name" name="firstName"></td>
			</tr>
			<tr>
				<th>LastName :</th>
				<td><input type="text" placeholder="Enter your LastName" name="LastName"></td>
			</tr>
			<tr>
				<th>login :</th>
				<td><input type="text" placeholder="Enter your login" name="login" ></td>
			</tr>
			<tr>
				<th>password :</th>
				<td><input type="text" placeholder="Enter your password" name="password"></td>
			</tr>
			<tr>
				<th>Dob :</th>
				<td><input type="date" placeholder="Enter your Dob" name="dob"></td>
			</tr>
			<tr>
				<th>Address :</th>
				<td><input type="text" placeholder="Enter your Address" name="Address"></td>
			</tr>
			<tr>
				<th></th>
				<td><input type="submit" ></td>
			</tr>
			</table>
		</form>
	</div>

</body>
</html>