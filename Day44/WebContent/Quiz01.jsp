<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01.jsp</title>
<style>
	table{
		border-collapse: collapse;
	}
	
	th, td{
		border: 1px solid black;
		padding: 5px 10px;
	}
</style>
</head>
<body>
	<h1>Quiz</h1>
	<hr>
	
	<% 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
		String date = sdf.format(new Date()); 
	%>
	구구단 2단 
	<hr>
	
	<table>
		<tr>
			<th colspan="2"><%=date %></th>
		</tr>
		<% for(int i=1; i <= 9; i++) { %>
		<tr>
			<td>2 * <%=i%> =</td>
			<td><%=2 * i%> </td>
		</tr>
		<% } %>	
	</table>
	
</body>
</html>