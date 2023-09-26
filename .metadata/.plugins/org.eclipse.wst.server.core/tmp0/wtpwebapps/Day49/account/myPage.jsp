<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	
	<%
		if(user.getUserid() == null) {
			response.sendRedirect("login.jsp");
		}
	%>
		<h1>마이페이지</h1>
	
	<form action="modify.jsp" method="POST">
		<table class="accounts">
			<tr>
				<th>IDX</th>
				<td><%=user.getIdx() %></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><%=user.getUserid() %></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input name="userpw" type="password" required></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><%=user.getNick() %></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input name="email" type="email" value="<%=user.getEmail() %>" required></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><%=user.getJoin_date() %></td>
			</tr>
		</table>
		
		<br>
		
		<input name="idx" type="hidden" value="<%=user.getIdx() %>">
		<button>수정</button>
	</form>
	
	<script src="../js/check.js"></script>
	<button onclick="check(<%=user.getIdx()%>)">삭제</button>
	
</body>
</html>