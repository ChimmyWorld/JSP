<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<h1>로그인</h1>
	
	
	<article>
		<form action="loginPro.jsp" method="POST">
			<p><input name="userid" placeholder="ID" required></p>
			<p><input name="userpw" type="password" placeholder="PW" required></p>
			
			<p><input type="checkbox"> 아이디 저장</p> 
			<button>로그인</button>
			
			<a href="find.jsp">
				<button type="button">ID/PW 찾기</button>
			</a>
			
		</form>
	</article>
	
</body>
</html>