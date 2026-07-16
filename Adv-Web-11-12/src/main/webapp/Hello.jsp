<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%  %> script-let-tag are used to write java code only not html in jsp's --%>
	<%-- <%= %> expression tag are used to print java variables and objects --%>

	<%
	for (int i = 1; i <= 5; i++) {
	%>
	<h1>
		<%=i%>
		Hello World
	</h1>
	<%
	}
	%>
</body>
</html>