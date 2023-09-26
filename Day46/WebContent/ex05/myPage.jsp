<%@page import="beans.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

	<%
	if (user.getUserid() == null) {
		response.sendRedirect("home.jsp");
	}
	%>
	
	<table>
		<tr>
			<th>아이디</th>
			<td><%=user.getUserid()%></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><%=user.getUserpw()%></td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><%=user.getNick()%></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=user.getEmail()%></td>
		</tr>
	</table>
	
<body>
</html>
