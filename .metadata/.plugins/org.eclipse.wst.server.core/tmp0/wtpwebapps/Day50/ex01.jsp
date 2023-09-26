<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%
		DAO dao = new DAO();
		String banner = dao.test();
	%>
	
	<h1>DBCP</h1>
	<hr>
	
	<h5><%=banner %></h5>
	
</body>
</html>