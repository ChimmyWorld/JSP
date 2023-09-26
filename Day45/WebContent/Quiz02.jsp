<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02.jsp</title>

</head>
<body>
	<h1>Quiz02.jsp</h1>
	<hr>
	
	<form action="Quiz02_result.jsp" method="POST">
		<p><input name="userid" placeholder="아이디" required></p>
		<p><input name="userpw" type="password" placeholder="비밀번호" required></p>
		
		<button>로그인</button>
	</form>
</body>
</html>