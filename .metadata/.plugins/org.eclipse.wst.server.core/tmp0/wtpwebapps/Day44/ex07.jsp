<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07.jsp</title>
</head>
<body>
	<h1>Parameter</h1>
	
	<form action="ex07_result.jsp" method="GET">
		<!--  action은 파라미터를 전송하는 페이지 혹은 사이트 -->
		<!--  method는 요청 메서드 설정. GET, POST만 사용가능. 기본값은 GET -->
		<p><input name="name" type="text" placeholder="이름"></p>
		<p><input name="age" type="number" placeholder="나이"></p>
		
		<button>전송</button>
	</form>
</body>
</html>