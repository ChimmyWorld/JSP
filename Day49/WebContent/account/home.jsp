<%@page import="beans.AccountVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<% List<AccountVO> list = dao.selectAll(); %>
	<h1>계정리스트</h1>
	<table class="accounts">
		<tr>
			<th>IDX</th>
			<th>아이디</th>
			<th>패스워드</th>
			<th>닉네임</th>
			<th>이메일</th>
			<th>가입일</th>
		</tr>
		<% for (AccountVO row : list) { %>
		<tr>
			<td><%=row.getIdx() %></td>
			<td><%=row.getUserid() %></td>
			<td><%=row.getUserpw() %></td>
			<td><%=row.getNick() %></td>
			<td><%=row.getEmail() %></td>
			<td><%=row.getJoin_date() %></td>
		</tr>
		<% } %>
	</table>
	
</body>
</html>