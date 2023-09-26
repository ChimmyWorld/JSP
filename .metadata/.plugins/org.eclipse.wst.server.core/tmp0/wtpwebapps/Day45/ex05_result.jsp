<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05_result.jsp</title>
</head>
<body>
	<%
		String value = request.getParameter("site");
		response.sendRedirect(value);
	%>	
</body>
</html>