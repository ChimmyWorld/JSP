<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<jsp:useBean id="dao" class="model.DAO"/>
	
	<h1>DAO</h1>
	<hr>
	
	<h4><%=dao.test() %></h4>
</body>
</html>