<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_result.jsp</title>
</head>
<body>	
	<% 
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		int parnum1 = Integer.parseInt(num1);
		int parnum2 = Integer.parseInt(num2);
	%>
	
	<h1>결과</h1>
	<%= parnum1 %> + <%= parnum2 %> = <%= parnum1 + parnum2 %>
	
	<br><br>
	
	<button onclick="history.back()">뒤로가기</button>
	
</body>
</html>