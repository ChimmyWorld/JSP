<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	
	<h4>ID 찾기 </h4>
	<article>
		<form action="findID.jsp" method="POST">
			<p><input name="email" placeholder="이메일" required></p>
			<button>찾기</button>			
		</form>
	</article>
	
	<h4>PW 찾기 </h4>
	<article>
		<form action="findPW.jsp" method="POST">
			<p><input name="userid" placeholder="ID" required></p>
			<p><input name="email" placeholder="이메일" required></p>
			<button>찾기</button>			
		</form>
	</article>
	
	<%
		String newPw = UUID.randomUUID().toString();
		newPw = newPw.substring(0, 6);		
	%>

</body>
</html>