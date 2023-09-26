<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01.jsp</title>
<style>
	fieldset{
		display: inline-block;
	}
</style>
</head>
<body>
	<h1>Quiz01</h1>
	<form action="Quiz01_result.jsp" method="POST">
		<fieldset>
			<legend>로그인</legend>
			<p><input name="userid" placeholder="아이디" required></p>
			<p><input name="userpw" type="password" placeholder="비밀번호" required></p>
			
			<button>전송</button>
		</fieldset>
	</form>
</body>
</html>