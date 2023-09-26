<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	
	<h4>현재 로그인 아이디 : <%=user.getNick() %></h4>
	
	<form action="login.jsp" method="POST">
		<p><input name="userid" placeholder="ID" value="<%=userid %>" required></p>
		<p><input name="userpw" type="password" placeholder="PW" value="<%=userpw %>"required></p>
		<p><input name="save" type="checkbox" value="<%=save %>">로그인 정보 저장</p>
		<button>로그인</button>
	</form>
	
</body>
</html>