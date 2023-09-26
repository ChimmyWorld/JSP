<%@page import="beans.PersonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@include file="header.jsp" %>
<body>
	<jsp:useBean id="dao" class="model.PersonDAO"/>
	
	<%
		String name = request.getParameter("name");
		List<PersonDTO> list = dao.selectName(name);
	%>

	<h1>검색 테스트</h1>
	<table>
		<tr>
			<th>이름</th>
			<th>신장</th>
			<th>생년월일</th>
		</tr>
		
		<% for (PersonDTO row: list) { %>	
		<tr>
			<td><%=row.getName() %></td>
			<td><%=row.getHeight() %></td>
			<td><%=row.getBirth() %></td>
		</tr>
		<% } %>
	</table>
	
	
</body>
</html>