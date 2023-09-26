<%@page import="beans.PersonVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
<style>
	table {
		border-collapse: collapse;
	}
	
	th, td{
		border: 1px solid black;
		padding: 5px 10px;
	}
</style>
</head>
<body>
	<jsp:useBean id="dao" class="model.PersonDAO"/>
	<% List<PersonVO> list = dao.selectAll(); %>
	
	<h1>Quiz1</h1>
	<hr>
	
	<table>
		<tr>
			<th>이름</th>
			<th>키</th>
			<th>생일</th>
		</tr>
		<% for (PersonVO row : list) { %>
		<tr>
			<td><%=row.getName() %></td>
			<td><%=row.getHeight() %></td>
			<td><%=row.getBirth() %></td>
		</tr>
		<% } %>
	</table>

	
</body>
</html>