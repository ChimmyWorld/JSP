<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>MVC2</h1>
	<hr>
	
	<h4>View는 화면에 보여줄 페이지를 의미</h4>
	
	<li>${msg }</li>
	
	<%-- action을 생략하면 현재 페이지에 데이터 전송 --%>
	<form method="POST">
		<p><input name="name" placeholder="이름" required></p>
		<button>전송</button>
	</form>
	
</body>
</html>