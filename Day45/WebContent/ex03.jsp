<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<h1>Java Beans</h1>
	<hr>
	
	<form action="ex03_result.jsp" method="POST">
		<p><input name="name" placeholder="이름" required></p>
		<p><input name="age" type="number" placeholder="나이" required></p>
		<p><input name="height" type="number" step="0.1" placeholder="신장" required></p>
		
		<button>전송</button>
	</form>
</body>
</html>
