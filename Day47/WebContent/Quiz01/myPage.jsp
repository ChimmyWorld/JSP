<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<%
	 	if(user.getUserid() == null ){
	 		response.sendRedirect("home.jsp");
	 	}
	%>

	<table class="myPage">
		<tr>
			<th>아이디</th>
			<td><%=user.getUserid() %></td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td><%=user.getUserpw() %></td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><%=user.getNick() %></td>
		</tr>
	</table>
</body>
</html>