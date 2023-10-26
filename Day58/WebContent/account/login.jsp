<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<fieldset class="inBlk">
	<legend>로그인</legend>
	
	<form action="loginPro.jsp" method="POST">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" type="password" placeholder="PW" required></p>

		<button>Login</button>
	</form>
</fieldset>

</body>
</html>