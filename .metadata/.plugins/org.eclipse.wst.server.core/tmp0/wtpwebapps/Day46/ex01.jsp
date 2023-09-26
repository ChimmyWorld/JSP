<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>Forward</h1>
	<hr>
	
	<%
		 RequestDispatcher rd;
		 rd = request.getRequestDispatcher("Quiz/Quiz01.jsp");
		 
		 rd.forward(request, response);
	%>
</body>
</html>