<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<h1>Response</h1>
	<hr>
	
	<%
		// response.sendError(404, "없는 페이지입니다");
		response.sendRedirect("ex01.jsp");
	%>
	
</body>
</html>