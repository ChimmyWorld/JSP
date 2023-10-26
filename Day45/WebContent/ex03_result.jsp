<%@page import="beans.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_result.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	
	<h1>결과</h1>
	<hr>
	
	<jsp:useBean id="per" class="beans.Person"/>
	<jsp:setProperty property="*" name="per"/>
	<%-- '*'는 이름이 동일한 공간에 1:1로 모두 대입해준다 --%>
	
	<ul>
		<li><%=per.getName() %></li>
		<li><%=per.getAge() %></li>
		<li><%=per.getHeight() %></li>
	</ul>
</body>
</html>